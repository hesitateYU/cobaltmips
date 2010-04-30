
`ifndef EQUEUEDIV_V
`define EQUEUEDIV_V

`timescale 1ns/1ps

module equeuediv (
   input             clk,
   input             reset,

   input      [ 5:0] dispatch_rdtag,
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

   output reg [ 5:0] issuediv_rdtag,
   output reg [31:0] issuediv_rsdata,
   output reg [31:0] issuediv_rtdata,
   output reg        issuediv_ready,
   input             issuediv_done
);

   localparam N_SREG = 4;

   reg [ 5:0] inst_rdtag_r  [N_SREG:0], inst_rdtag  [N_SREG-1:0];
   reg [ 5:0] inst_rstag_r  [N_SREG:0], inst_rstag  [N_SREG-1:0];
   reg [ 5:0] inst_rttag_r  [N_SREG:0], inst_rttag  [N_SREG-1:0];
   reg [31:0] inst_rsdata_r [N_SREG:0], inst_rsdata [N_SREG-1:0];
   reg [31:0] inst_rtdata_r [N_SREG:0], inst_rtdata [N_SREG-1:0];
   reg        inst_rsvalid_r[N_SREG:0], inst_rsvalid[N_SREG-1:0];
   reg        inst_rtvalid_r[N_SREG:0], inst_rtvalid[N_SREG-1:0];
   reg        inst_valid_r  [N_SREG:0], inst_valid  [N_SREG-1:0];

   reg do_shift     [N_SREG-1:0];
   reg do_rs_update [N_SREG-1:0];
   reg do_rt_update [N_SREG-1:0];
   reg inst_selected[N_SREG-1:0];
   reg inst_ready   [N_SREG-1:0];

   always @(*) begin : equeuediv_fake_reg_proc
      integer i;
      // The top register is fake, it just stores (no flops) the input from
      // dispatch unit. Used to simplify register shifting and updating.
      inst_rdtag_r  [N_SREG] = dispatch_rdtag;
      inst_rstag_r  [N_SREG] = dispatch_rstag;
      inst_rttag_r  [N_SREG] = dispatch_rttag;
      inst_rsdata_r [N_SREG] = dispatch_rsdata;
      inst_rtdata_r [N_SREG] = dispatch_rtdata;
      inst_rsvalid_r[N_SREG] = dispatch_rsvalid;
      inst_rtvalid_r[N_SREG] = dispatch_rtvalid;
      inst_valid_r  [N_SREG] = dispatch_en;
   end

   always @(*) begin : equeuediv_update_flags_proc
      integer i;
      for (i = 0; i < N_SREG; i = i + 1) begin
         // Check if both operands have been solved.
         inst_ready[i] = inst_rsvalid_r[i] & inst_rtvalid_r[i];

         // Check if published data from CDB matches a tag in any of the
         // pending instructions.
         do_rs_update[i] = cdb_valid & cdb_tag == inst_rstag_r[i];
         do_rt_update[i] = cdb_valid & cdb_tag == inst_rttag_r[i];
      end

      // One hot instruction selector, set to one if instruction is valid and
      // ready to execute.
      for (i = 0; i < N_SREG; i = i + 1) inst_selected[i] = 1'b0;
      begin : equeuediv_inst_select_mux
         for (i = 0; i < N_SREG; i = i + 1) begin
            if (inst_valid_r[i] & inst_ready[i]) begin
               inst_selected[i] = 1'b1;
               disable equeuediv_inst_select_mux;
            end
         end
      end
   end

   always @(*) begin : equeuediv_do_shift_calc_proc
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
      do_shift[3] = valid_r[4] & ( (issuediv_done & (|selected[3:0])) | ~(&valid_r[3:0]) );
      do_shift[2] = valid_r[3] & ( (issuediv_done & (|selected[2:0])) | ~(&valid_r[2:0]) ) & ~(issuediv_done & selected[3]);
      do_shift[1] = valid_r[2] & ( (issuediv_done & (|selected[1:0])) | ~(&valid_r[1:0]) ) & ~(issuediv_done & selected[2]);
      do_shift[0] = valid_r[1] & ( (issuediv_done & (|selected[0:0])) | ~(&valid_r[0:0]) ) & ~(issuediv_done & selected[1]);
      // Registers are valid when:
      //            +-------------+----------------------------------------------+---------------
      //            | If we shift | Register is not currently being dispatched.  | Lower reg
      //            | current reg |                                              | is stalled.
      //            | then upper  |                                              |
      //            | must be     |                                              |
      //            | valid       |                                              |
      //            +-------------+----------------------------------------------+---------------
      inst_valid[3] = do_shift[3] | ( valid_r[3] & ~(issuediv_done & selected[3]) & ~do_shift[2] );
      inst_valid[2] = do_shift[2] | ( valid_r[2] & ~(issuediv_done & selected[2]) & ~do_shift[1] );
      inst_valid[1] = do_shift[1] | ( valid_r[1] & ~(issuediv_done & selected[1]) & ~do_shift[0] );
      inst_valid[0] = do_shift[0] | ( valid_r[0] & ~(issuediv_done & selected[0])                );
   end

   always @(*) begin : equeuediv_oreg_assign
      integer i;
      // We don't take into account the 'fake' register.
      reg [N_SREG-1:0] valid_r, valid_and_ready;

      // If at least one instruction is ready, then signal the issue unit to
      // continue.
      for (i = 0; i < N_SREG; i = i + 1) valid_and_ready[i] = inst_valid_r[i] & inst_ready[i];
      issuediv_ready = |valid_and_ready;
      // The oldest and valid register is sent to the issue unit. Priority
      // encoder inferred. If no instruction is ready, then assign the
      // register at the bottom.
      issuediv_rdtag  = inst_rdtag_r [0];
      issuediv_rsdata = inst_rsdata_r[0];
      issuediv_rtdata = inst_rtdata_r[0];
      begin : equeuediv_regdata_mux
         for (i = 0; i < N_SREG; i = i + 1) begin
            if (inst_selected[i]) begin
               issuediv_rdtag  = inst_rdtag_r [i];
               issuediv_rsdata = inst_rsdata_r[i];
               issuediv_rtdata = inst_rtdata_r[i];
               disable equeuediv_regdata_mux;
            end
         end
      end

      // Unless all registers are occupied and issue unit is not ready to
      // process then queue is not considered full because a shift is
      // pending.
      for (i = 0; i < N_SREG; i = i + 1) valid_r[i] = inst_valid_r[i];
      dispatch_ready = ~((&valid_r) & ~(issuediv_done & |valid_and_ready));
   end

   always @(*) begin : equeuediv_shift_proc
      integer i;
      for (i = 0; i < N_SREG; i = i + 1) begin
         inst_rdtag [i] = (do_shift[i]) ? inst_rdtag_r [i+1] : inst_rdtag_r [i];
         inst_rstag [i] = (do_shift[i]) ? inst_rstag_r [i+1] : inst_rstag_r [i];
         inst_rttag [i] = (do_shift[i]) ? inst_rttag_r [i+1] : inst_rttag_r [i];

         // Select if data is taken from CDB (update) or the previous register
         // (shift).
         case ({do_shift[i], do_rs_update[i]})
            2'b00:        begin inst_rsdata[i] = inst_rsdata_r[i];   inst_rsvalid[i] = inst_rsvalid_r[i];   end
            2'b01, 2'b11: begin inst_rsdata[i] = cdb_data;           inst_rsvalid[i] = 1'b1;                end
            2'b10:        begin inst_rsdata[i] = inst_rsdata_r[i+1]; inst_rsvalid[i] = inst_rsvalid_r[i+1]; end
         endcase
         case ({do_shift[i], do_rt_update[i]})
            2'b00:        begin inst_rtdata[i] = inst_rtdata_r[i];   inst_rtvalid[i] = inst_rtvalid_r[i];   end
            2'b01, 2'b11: begin inst_rtdata[i] = cdb_data;           inst_rtvalid[i] = 1'b1;                end
            2'b10:        begin inst_rtdata[i] = inst_rtdata_r[i+1]; inst_rtvalid[i] = inst_rtvalid_r[i+1]; end
         endcase
      end
   end

   always @(posedge clk) begin : equeuediv_inst_reg
      integer i;
      for (i = 0; i < N_SREG; i = i + 1) begin
         inst_rdtag_r  [i] <= (reset) ? 'h0 : inst_rdtag  [i];
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

