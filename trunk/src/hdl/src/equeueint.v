
`ifndef EQUEUEINT_V
`define EQUEUEINT_V

module equeueint (
   input             clk,
   input             reset,

   input      [ 2:0] dispatch_opcode,
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

   output reg [ 2:0] issueint_opcode,
   output reg [ 5:0] issueint_rdtag,
   output reg [31:0] issueint_rsdata,
   output reg [31:0] issueint_rtdata,
   output reg        issueint_ready,
   input             issueint_done
);

   localparam N_SREG = 4;

   reg [ 2:0] inst_opcode_r [N_SREG:0], inst_opcode [N_SREG-1:0];
   reg [ 5:0] inst_rdtag_r  [N_SREG:0], inst_rdtag  [N_SREG-1:0];
   reg [ 5:0] inst_rstag_r  [N_SREG:0], inst_rstag  [N_SREG-1:0];
   reg [ 5:0] inst_rttag_r  [N_SREG:0], inst_rttag  [N_SREG-1:0];
   reg [31:0] inst_rsdata_r [N_SREG:0], inst_rsdata [N_SREG-1:0];
   reg [31:0] inst_rtdata_r [N_SREG:0], inst_rtdata [N_SREG-1:0];
   reg        inst_rsvalid_r[N_SREG:0], inst_rsvalid[N_SREG-1:0];
   reg        inst_rtvalid_r[N_SREG:0], inst_rtvalid[N_SREG-1:0];
   reg        inst_valid_r  [N_SREG:0], inst_valid  [N_SREG-1:0];

   reg inst_ready  [N_SREG-1:0];
   reg do_shift    [N_SREG-1:0];
   reg do_rs_update[N_SREG-1:0];
   reg do_rt_update[N_SREG-1:0];

   always @(*) begin : equeueint_update_flags_proc
      integer i;
      for (i = 0; i < N_SREG ; i = i + 1) begin
         // Check if both operands have been solved and register is occupied.
         inst_ready[i] = inst_valid_r[i] & inst_rsvalid_r[i] & inst_rtvalid_r[i];

         // Check if published data from CDB matches a tag in any of the
         // pending instructions.
         do_rs_update[i] = cdb_valid & cdb_tag == inst_rstag_r[i];
         do_rt_update[i] = cdb_valid & cdb_tag == inst_rttag_r[i];
      end
   end

   always @(*) begin : equeueint_shift_proc
      integer i;
      for (i = 0; i < N_SREG; i = i + 1) begin
         // Shift current register only when next register is not occupied.
         do_shift[i] = ~inst_valid_r[i] & inst_valid_r[i+1];
      end
      // Allow to register 'fake' register.
      do_shift[N_SREG-1] = ~inst_valid_r[N_SREG-1] & dispatch_en;
      // Don't shift last register until operation is ready and issue unit has
      // finished processing previous instruction.
      do_shift[0] = ~inst_valid_r[0] & issueint_done;

      // The top register is fake, it just stores (no flops) the input from
      // dispatch unit. Used to simplify register shifting and updating.
      inst_opcode_r [N_SREG] = dispatch_opcode;
      inst_rdtag_r  [N_SREG] = dispatch_rdtag;
      inst_rstag_r  [N_SREG] = dispatch_rstag;
      inst_rttag_r  [N_SREG] = dispatch_rttag;
      inst_rsdata_r [N_SREG] = dispatch_rsdata;
      inst_rtdata_r [N_SREG] = dispatch_rtdata;
      inst_rsvalid_r[N_SREG] = dispatch_rsvalid;
      inst_rtvalid_r[N_SREG] = dispatch_rtvalid;
      inst_valid_r  [N_SREG] = dispatch_en;

      for (i = 0; i < N_SREG; i = i + 1) begin
         inst_opcode[i] = (do_shift[i]) ? inst_opcode_r[i + 1] : inst_opcode_r[i];
         inst_rdtag [i] = (do_shift[i]) ? inst_rdtag_r [i + 1] : inst_rdtag_r [i];
         inst_rstag [i] = (do_shift[i]) ? inst_rstag_r [i + 1] : inst_rstag_r [i];
         inst_rttag [i] = (do_shift[i]) ? inst_rttag_r [i + 1] : inst_rttag_r [i];
         inst_valid [i] = (do_shift[i]) ? inst_valid_r [i + 1] : inst_valid_r [i];

         // Select if data is taken from CDB (update) or the previous register (shift).
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

   always @(*) begin : equeueint_oreg_assign
      integer i;
      reg [N_SREG-1:0] valid, ready;

      // If all registers are occupied and issue unit is ready to process then
      // queue is not full considered full because a shift is pending.
      for (i = 0; i < N_SREG; i = i + 1) valid[i] = inst_valid_r[i];
      dispatch_ready = ~((&valid) & ~issueint_done);

      // If at least one instruction is ready, then signal the issue unit to
      // continue.
      for (i = 0; i < N_SREG; i = i + 1) ready[i] = inst_ready[i];
      issueint_ready  = |ready;
      // The oldest and valid register is sent to the issue unit. Priority
      // encoder inferred. If no instruction is ready, then assign the
      // register at the bottom.
      issueint_opcode = inst_opcode_r[0];
      issueint_rdtag  = inst_rdtag_r [0];
      issueint_rsdata = inst_rsdata_r[0];
      issueint_rtdata = inst_rtdata_r[0];
      begin : equeueint_regdata_mux
         for (i = 0; i < N_SREG; i = i + 1) begin
            if (inst_ready[i]) begin
               issueint_opcode = inst_opcode_r[i];
               issueint_rdtag  = inst_rdtag_r [i];
               issueint_rsdata = inst_rsdata_r[i];
               issueint_rtdata = inst_rtdata_r[i];
               disable equeueint_regdata_mux;
            end
         end
      end
   end

   always @(posedge clk) begin : equeueint_inst_reg
      integer i;
      for (i = 0; i < N_SREG; i = i + 1) begin
         inst_opcode_r [i] <= (reset) ? 'h0 : inst_opcode [i];
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

