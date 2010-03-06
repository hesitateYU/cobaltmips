
`ifndef DISPATCH_V
`define DISPATCH_V

module dispatch(
   input             clk,
   input             rst,
   input      [31:0] ifq_pc_out,
   input      [31:0] ifq_inst,
   input             ifq_empty,
   output reg        ifq_rd_en,
   output reg [31:0] ifq_jump_branch_address,
   output reg        ifq_jump_branch_valid
);

   always @(posedge clk) begin : ifq_oreg_proc
      ifq_rd_en               <=  1'b1;
      ifq_jump_branch_valid   <=  1'b0;
      ifq_jump_branch_address <= 32'h0;
   end

endmodule

`endif

