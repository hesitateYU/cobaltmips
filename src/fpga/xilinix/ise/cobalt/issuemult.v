
`ifndef ISSUEMULT_V
`define ISSUEMULT_V

`timescale 1ns/1ps

module issuemult (
         input             clk,
         input             reset,
         input      [15:0] issuemult_rsdata,
         input      [15:0] issuemult_rtdata,
         input      [ 5:0] issuemult_rdtag,

         output reg [31:0] issuemult_out,
         output reg [ 5:0] issuemult_rdtag_out
);

reg  [15:0] in1_r, in2_r;
reg  [31:0] out_r;
wire [31:0] out; 

always @(posedge clk) begin : mult_data
   in1_r               <= (reset) ? 16'h0: issuemult_rsdata;
   in2_r               <= (reset) ? 16'h0: issuemult_rtdata;
   issuemult_rdtag_out <= (reset) ? 32'h0: issuemult_rdtag;
end

always @(posedge clk) begin: mult_secnd_flopdelay
   out_r <= (reset) ? 32'h0: out;
end

multiplier mult1(
  .sclr  (reset), 
  .clk   (clk), 
  .a     (in1_r), 
  .b     (in2_r), 
  .p     (out)
);

endmodule

`endif

