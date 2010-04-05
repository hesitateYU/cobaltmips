`ifndef ISSUEINT_V
`define ISSUEINT_V

module issueint (
         input             clk,
         input             rst,
         input      [ 2:0] issueint_opcode,
         input      [31:0] issueint_rsdata,
         input      [31:0] issueint_rtdata,
         input      [ 5:0] issueint_rdtag,

         output reg [31:0] issueint_out,
         output reg [ 5:0] issueint_rdtag_out,

         output            issueint_carryout,
         output            issueint_overflow
);

   reg [31:0] rsdata_r, rtdata_r;
   wire [31:0] sum_out;

   always @(posedge clk) begin : reg_data
      rsdata_r <= (rst) ? 32'h0 : issueint_rsdata; 
      rtdata_r <= (rst) ? 32'h0 : issueint_rtdata; 
   end


   always @(*) begin : alu_opcode
      case (alu_opcode)
         3'b000: begin

         end
         3'b001: begin

         end
         3'b010: begin

         end
         3'b011: begin

         end

         3'b100: begin

         end
         3'b101: begin

         end

         3'b110: begin

         end

         3'b111: begin

         end
         default: begin

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
