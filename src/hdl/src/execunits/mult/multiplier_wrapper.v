
`ifndef MULTIPLIER_WRAPPER_V
`define MULTIPLIER_WRAPPER_V

`timescale 1ns/1ps

module multiplier_wrapper(
         input         clk,
         //input         reset,
         input  [31:0] issuemult_rsdata,
         input  [31:0] issuemult_rtdata,
         input  [ 5:0] issuemult_rdtag,
         //input         issuemult_enable,

         output [31:0] issuemult_out,
         output [ 5:0] issuemult_rdtag_out
   );

assign issuemult_rdtag_out = issuemult_rdtag;

multiplier multiplier (
  //.sclr  (reset),
  //.ce    (issuemult_enable),
  .clk   (clk),
  .a     (issuemult_rsdata[15:0]),
  .b     (issuemult_rtdata[15:0]),
  .p     (issuemult_out)
);

endmodule

`endif

