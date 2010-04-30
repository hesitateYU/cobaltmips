
`ifndef ISSUEINT_V
`define ISSUEINT_V

`timescale 1ns/1ps

module issueint (
         input             clk,
         input             reset,
         input             issueint_ready,
         input      [ 3:0] issueint_opcode,
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

parameter [3:0] ADD  = 4'b0000,
                ADDU = 4'b0001,
                SUB  = 4'b0010,
                SUBU = 4'b0011,
                AND  = 4'b0100,
                OR   = 4'b0101,
                NOR  = 4'b0110,
                SLT  = 4'b0111,
                SLTU = 4'b1000,
                BEQ  = 4'b1001;

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
         ADD, ADDU: begin
            rsdata_r = issueint_rsdata;
            rtdata_r = issueint_rtdata;
            issueint_out = sum_out;
         end
         BEQ: begin
            issueint_alubranch = 1'b1;
            issueint_alubranch_taken = (issueint_rsdata == issueint_rtdata) ? 1'b1:  1'b0;
         end
         SUB, SUBU: begin
            issueint_out = issueint_rsdata - issueint_rtdata;
         end
         AND: begin
            issueint_out = issueint_rsdata & issueint_rtdata;
         end
         OR: begin
            issueint_out = issueint_rsdata | issueint_rtdata;
         end
         NOR: begin
            issueint_out = ~(issueint_rsdata | issueint_rtdata);
         end
         SLT,SLTU: begin
            issueint_out = (issueint_rsdata < issueint_rtdata) ? 1'b1: 1'b0;;
         end
         default: begin
            issueint_out = 32'h0;
            rsdata_r     = 32'h0;
            rtdata_r     = 32'h0;
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
