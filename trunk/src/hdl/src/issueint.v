
`ifndef ISSUEINT_V
`define ISSUEINT_V

`timescale 1ns/1ps
`include "globals.vh"

module issueint (
         input             clk,
         input             reset,
         input             issueint_ready,
         input      [ 5:0] issueint_opcode,
         input      [31:0] issueint_rsdata,
         input      [31:0] issueint_rtdata,
         input      [ 5:0] issueint_rdtag,

         output reg [31:0] issueint_out,
         output     [ 5:0] issueint_rdtag_out,

         output            issueint_carryout,
         output            issueint_overflow,
         output reg        issueint_alubranch,
         output reg        issueint_alubranch_taken

);

   reg  [31:0] rsdata_r, rtdata_r;
   wire [31:0] sum_out;

   assign issueint_rdtag_out = issueint_rdtag;

   always @(posedge clk) begin : reg_data
      if (reset) begin
         rsdata_r <= 32'h0;
         rtdata_r <= 32'h0;
      end
   end

   always @(*) begin : alu_opcode
      issueint_alubranch = 1'b0;
      issueint_alubranch_taken = 1'b0;
      case (issueint_opcode)
         `FUNCT_ADD, `FUNCT_ADDU: begin
            rsdata_r = issueint_rsdata;
            rtdata_r = issueint_rtdata;
            issueint_out = sum_out;
         end
         `OPCODE_BEQ: begin
            issueint_alubranch = 1'b1;
            issueint_alubranch_taken = (issueint_rsdata == issueint_rtdata) ? 1'b1:  1'b0;
         end
         `OPCODE_BNE: begin
            issueint_alubranch = 1'b1;
            issueint_alubranch_taken = (issueint_rsdata != issueint_rtdata) ? 1'b1:  1'b0;
         end
         `FUNCT_SUB, `FUNCT_SUBU: begin
            issueint_out = issueint_rsdata - issueint_rtdata;
         end
         `FUNCT_AND: begin
            issueint_out = issueint_rsdata & issueint_rtdata;
         end
         `FUNCT_OR: begin
            issueint_out = issueint_rsdata | issueint_rtdata;
         end
         `FUNCT_NOR: begin
            issueint_out = ~(issueint_rsdata | issueint_rtdata);
         end
         `FUNCT_SLT,`FUNCT_SLTU: begin
            issueint_out = (issueint_rsdata < issueint_rtdata) ? 1'b1: 1'b0;;
         end
         default: begin
            issueint_out = issueint_out;
            rsdata_r     = rsdata_r;
            rtdata_r     = rtdata_r;
         end
      endcase
   end

   CLA_32bit CLA32(
      .sum      (sum_out),
      .carryout (issueint_carryout),
      .overflow (issueint_overflow),
      .A_in     (rsdata_r),
      .B_in     (rtdata_r),
      .carryin  (1'b0)
);

endmodule

`endif
