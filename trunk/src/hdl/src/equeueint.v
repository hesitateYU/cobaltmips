
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
   output reg        dispatch_ready
);

   always @(*) begin : equeueint_oreg_assign
      dispatch_ready = 1'b1;
/*      cdb_data = 
      cdb_tag =
      cdb_valid =
      cdb_branch
      cdb_branch_taken   */
   end 

endmodule

`endif

