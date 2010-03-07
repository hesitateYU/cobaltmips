
`ifndef EQUEUELS_V
`define EQUEUELS_V

module equeuels(
   input clk,
   input rst,

   input      [31:0] dispatch_inst,
   input             dispatch_rsvalid,
   input             dispatch_rtvalid,
   input             dispatch_en,
   output reg        dispatch_ready,

   output reg [31:0] cdb_data,
   output reg [ 5:0] cdb_tag,
   output reg        cdb_valid,
   output reg        cdb_branch,
   output reg        cdb_branch_taken
);

   always @(*) begin : equeuels_oreg_assign
      dispatch_ready = 1'b1;

/*      cdb_data = 
      cdb_tag =
      cdb_valid =
      cdb_branch
      cdb_branch_taken  */
   end
endmodule

`endif

