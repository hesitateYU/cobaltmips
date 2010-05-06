
`ifndef EQUEUELS_V
`define EQUEUELS_V

`timescale 1ns/1ps

`include "globals.vh"

module equeuels (
   input             clk,
   input             reset,

   input             dispatch_opcode,
   input      [15:0] dispatch_offset,
   input      [ 5:0] dispatch_rstag,
   input      [ 5:0] dispatch_rttag,
   input      [31:0] dispatch_rsdata,
   input      [31:0] dispatch_rtdata,
   input             dispatch_rsvalid,
   input             dispatch_rtvalid,
   input             dispatch_en,
   output reg        dispatch_ready,

   input      [ 5:0] cdb_tag,
   input      [31:0] cdb_data,
   input             cdb_valid,

   output reg        issuels_opcode,
   output reg [ 5:0] issuels_rttag,
   output reg [31:0] issuels_addr,
   output reg [31:0] issuels_data,
   output reg        issuels_ready,
   input             issuels_done
);

   localparam N_SREG = 4;

   reg [31:0] inst_addr_r   [N_SREG:0], inst_addr   [N_SREG-1:0];
   reg [15:0] inst_offset_r [N_SREG:0], inst_offset [N_SREG-1:0];
   reg        inst_opcode_r [N_SREG:0], inst_opcode [N_SREG-1:0];
   reg [ 5:0] inst_rstag_r  [N_SREG:0], inst_rstag  [N_SREG-1:0];
   reg [ 5:0] inst_rttag_r  [N_SREG:0], inst_rttag  [N_SREG-1:0];
   reg [31:0] inst_rsdata_r [N_SREG:0], inst_rsdata [N_SREG-1:0];
   reg [31:0] inst_rtdata_r [N_SREG:0], inst_rtdata [N_SREG-1:0];
   reg        inst_rsvalid_r[N_SREG:0], inst_rsvalid[N_SREG-1:0];
   reg        inst_rtvalid_r[N_SREG:0], inst_rtvalid[N_SREG-1:0];
   reg        inst_valid_r  [N_SREG:0], inst_valid  [N_SREG-1:0];

   // RS and RT update require an extra register to ease shifting
   // and updating at the same time. MSB is always zero.
   reg do_rs_update [N_SREG:0];
   reg do_rt_update [N_SREG:0];
   reg do_shift     [N_SREG-1:0];
   reg inst_selected[N_SREG-1:0];
   reg inst_ready   [N_SREG-1:0];

   always @(*) begin : equeuels_fake_reg_proc
      // The top register is fake, it just stores (no flops) the input from
      // dispatch unit. Used to simplify register shifting and updating.
      // Offset sent by dispatch unit must be sign extended.
      //inst_addr_r   [N_SREG] = dispatch_rsdata + { {16 {dispatch_offset[15]} }, dispatch_offset};
      inst_addr_r   [N_SREG] = dispatch_rsdata;
      inst_offset_r [N_SREG] = dispatch_offset;
      inst_opcode_r [N_SREG] = dispatch_opcode;
      inst_rstag_r  [N_SREG] = dispatch_rstag;
      inst_rttag_r  [N_SREG] = dispatch_rttag;
      inst_rsdata_r [N_SREG] = dispatch_rsdata;
      inst_rtdata_r [N_SREG] = dispatch_rtdata;
      inst_rsvalid_r[N_SREG] = dispatch_rsvalid;
      inst_rtvalid_r[N_SREG] = dispatch_rtvalid;
      inst_valid_r  [N_SREG] = dispatch_en;
   end

   always @(*) begin : equeuels_update_flags_proc
      integer i;
      for (i = 0; i < N_SREG; i = i + 1) begin
         // Check if both operands have been solved. For LOAD operations, RT
         // register is not required.
         inst_ready[i] = inst_rsvalid_r[i] & (inst_rtvalid_r[i] | (inst_opcode_r[i] == `ISSUELS_FUNC_SW));
      end

      for (i = 0; i < N_SREG + 1; i = i + 1) begin
         // Check if published data from CDB matches a tag in any of the
         // pending instructions.
         do_rs_update[i] = cdb_valid & ~inst_rsvalid_r[i] & cdb_tag == inst_rstag_r[i];
         do_rt_update[i] = cdb_valid & ~inst_rtvalid_r[i] & cdb_tag == inst_rttag_r[i];
      end

      // One hot instruction selector, set to one if instruction is valid and
      // ready to execute, with limitations used for memory disambiguation.
      //  + RAW: Load may bypass store if addresses are different.
      //  + WAR: Store may bypass load if addresses are different.
      //  + WAW: Store must not bypass any other store.
      //  + RAR: Load may always bypass any other load.
      //
      //  NOTE: This code uses the most conservative cases, loads and stores
      //        are always executed as a FIFO. No load or store can never
      //        bypass any other load nor store under any circumstance.
      //        Instruction at index 0 (bottom) always has precedence.
      //
      for (i = 0; i < N_SREG; i = i + 1) inst_selected[i] = 1'b0;
      //begin : equeuels_inst_select_mux
      //   for (i = 0; i < N_SREG; i = i + 1) begin
      //      if (inst_valid_r[i] & inst_ready[i]) begin
      //         inst_selected[i] = 1'b1;
      //         disable equeuels_inst_select_mux;
      //      end
      //   end
      //end
      inst_selected[0] = inst_valid_r[0] & inst_ready[0];
   end

   always @(*) begin : equeuels_do_shift_calc_proc
      integer i;
      reg [N_SREG  :0] valid_r;
      reg [N_SREG-1:0] selected;

      for (i = 0; i < N_SREG + 1; i = i + 1) valid_r[i]  = inst_valid_r[i];
      for (i = 0; i < N_SREG;     i = i + 1) selected[i] = inst_selected[i];

      //
      // TODO: replace with a for loop. Can't do reduction & or | unless array
      //       boundary is specified as a constant (not as "selected[i:0]").
      //
      // Shift registers when:
      //          +------------+-----------------------------------------------------------+--------------------------------
      //          | Upper reg  |  There is some space available. Some registers are either | Upper register is not
      //          | is valid.  |  disabled or are already being dispatched.                | being dispatched.
      //          +------------+-----------------------------------------------------------+--------------------------------
      do_shift[3] = valid_r[4] & ~(&valid_r[3:0]);
      do_shift[2] = valid_r[3] & ~(&valid_r[2:0]);
      do_shift[1] = valid_r[2] & ~(&valid_r[1:0]);
      do_shift[0] = valid_r[1] & ( /*(issuels_done & (|selected[0:0])) |*/ ~(&valid_r[0:0]) );
      // Registers are valid when:
      //            +-------------+----------------------------------------------+---------------
      //            | If we shift | Register is not currently being dispatched.  | Lower reg
      //            | current reg |                                              | is stalled.
      //            | then upper  |                                              |
      //            | must be     |                                              |
      //            | valid       |                                              |
      //            +-------------+----------------------------------------------+---------------
      inst_valid[3] = do_shift[3] | ( valid_r[3] & ~do_shift[2] );
      inst_valid[2] = do_shift[2] | ( valid_r[2] & ~do_shift[1] );
      inst_valid[1] = do_shift[1] | ( valid_r[1] & ~do_shift[0] );
      inst_valid[0] = do_shift[0] | ( valid_r[0] & ~(issuels_done & selected[0]) );
   end


   always @(*) begin : equeuels_oreg_assign
      integer i;
      // We don't take into account the 'fake' register.
      reg [N_SREG-1:0] valid_r, valid_and_ready;

      // If at least one instruction is ready, then signal the issue unit to
      // continue.
      for (i = 0; i < N_SREG; i = i + 1) valid_and_ready[i] = inst_valid_r[i] & inst_ready[i];
      //
      // Queue only when last instruction is valid and ready.
      //issuels_ready  = |valid_and_ready;
      //
      // TODO
      //
      issuels_ready  = inst_valid_r[0] & inst_ready[0];
      // The oldest and valid register is sent to the issue unit. Priority
      // encoder inferred. If no instruction is ready, then assign the
      // register at the bottom.
      issuels_opcode = inst_opcode_r[0];
      issuels_rttag  = inst_rttag_r [0];
      issuels_addr   = inst_addr_r  [0] + inst_offset_r[0];
      issuels_data   = inst_rtdata_r[0];
      //begin : equeuels_regdata_mux
      //   for (i = 0; i < N_SREG; i = i + 1) begin
      //      if (inst_ready[i]) begin
      //         issuels_opcode = inst_opcode_r[i];
      //         issuels_rttag  = inst_rttag_r [i];
      //         issuels_addr   = inst_addr_r  [i] + inst_offset_r[i];
      //         issuels_data   = inst_rtdata_r[i];
      //         disable equeuels_regdata_mux;
      //      end
      //   end
      //end

      // Unless all registers are occupied and issue unit is not ready to
      // process then queue is not considered full because a shift is
      // pending.
      for (i = 0; i < N_SREG; i = i + 1) valid_r[i] = inst_valid_r[i];
      dispatch_ready = ~((&valid_r) & ~(issuels_done & |valid_and_ready));
   end

   always @(*) begin : equeuels_shift_proc
      integer i;
      for (i = 0; i < N_SREG; i = i + 1) begin
         inst_offset[i] = (do_shift[i]) ? inst_offset_r[i + 1] : inst_offset_r[i];
         inst_opcode[i] = (do_shift[i]) ? inst_opcode_r[i + 1] : inst_opcode_r[i];
         inst_rstag [i] = (do_shift[i]) ? inst_rstag_r [i + 1] : inst_rstag_r [i];
         inst_rttag [i] = (do_shift[i]) ? inst_rttag_r [i + 1] : inst_rttag_r [i];

         case ({do_shift[i], do_rs_update[i]})
            2'b00:        begin inst_addr[i] = inst_addr_r[i];                                               end
            2'b01, 2'b11: begin inst_addr[i] = cdb_data + { {16 {inst_offset_r[i][15]} }, inst_offset_r[i]}; end
            2'b10:        begin inst_addr[i] = inst_addr_r[i+1];                                             end
         endcase

         // Select if data is taken from CDB (update) or the previous register
         // (shift).
         case ({do_shift[i], do_rs_update[i]})
            2'b00: begin inst_rsdata[i] = inst_rsdata_r[i];   inst_rsvalid[i] = inst_rsvalid_r[i];   end
            2'b01: begin inst_rsdata[i] = cdb_data;           inst_rsvalid[i] = 1'b1;                end
            2'b11: begin
               inst_rsdata[i]  = (do_rs_update[i+1]) ? cdb_data : inst_rsdata_r[i+1];
               inst_rsvalid[i] = (do_rs_update[i+1]) ? 1'b1     : inst_rsvalid_r[i+1]; end
            2'b10: begin
               inst_rsdata[i]  = (do_rs_update[i+1]) ? cdb_data : inst_rsdata_r[i+1];
               inst_rsvalid[i] = (do_rs_update[i+1]) ? 1'b1     : inst_rsvalid_r[i+1];
            end
         endcase
         case ({do_shift[i], do_rt_update[i]})
            2'b00: begin inst_rtdata[i] = inst_rtdata_r[i];   inst_rtvalid[i] = inst_rtvalid_r[i];   end
            2'b01: begin inst_rtdata[i] = cdb_data;           inst_rtvalid[i] = 1'b1;                end
            2'b11: begin
               inst_rtdata[i]  = (do_rt_update[i+1]) ? cdb_data : inst_rtdata_r[i+1];
               inst_rtvalid[i] = (do_rt_update[i+1]) ? 1'b1     : inst_rtvalid_r[i+1]; end
            2'b10: begin
               inst_rtdata[i]  = (do_rt_update[i+1]) ? cdb_data : inst_rtdata_r[i+1];
               inst_rtvalid[i] = (do_rt_update[i+1]) ? 1'b1     : inst_rtvalid_r[i+1];
            end
         endcase      end
   end

   always @(posedge clk) begin : equeuels_inst_reg
      integer i;
      for (i = 0; i < N_SREG; i = i + 1) begin
         inst_addr_r   [i] <= (reset) ? 'h0 : inst_addr   [i];
         inst_offset_r [i] <= (reset) ? 'h0 : inst_offset [i];
         inst_opcode_r [i] <= (reset) ? 'h0 : inst_opcode [i];
         inst_rstag_r  [i] <= (reset) ? 'h0 : inst_rstag  [i];
         inst_rttag_r  [i] <= (reset) ? 'h0 : inst_rttag  [i];
         inst_rsdata_r [i] <= (reset) ? 'h0 : inst_rsdata [i];
         inst_rtdata_r [i] <= (reset) ? 'h0 : inst_rtdata [i];
         inst_rsvalid_r[i] <= (reset) ? 'h0 : inst_rsvalid[i];
         inst_rtvalid_r[i] <= (reset) ? 'h0 : inst_rtvalid[i];
         inst_valid_r  [i] <= (reset) ? 'h0 : inst_valid  [i];
      end
   end

endmodule

`endif

