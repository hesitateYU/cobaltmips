
`ifndef MULTIPLIER_WRAPPER_V
`define MULTIPLIER_WRAPPER_V

module multiplier_wrapper(
         input clk,
         input reset,
         input  [31:0] issuemult_rsdata,
         input  [31:0] issuemult_rtdata,
         input  [ 5:0] issuemult_rdtag,
         input         issuemult_enable,

         output [31:0] issuemult_out,
         output [ 5:0] issuemult_rdtag_out 
   );

assign issuemult_rdtag_out = issuemult_rdtag;

multiplier multiplier (
  .sclr  (reset),
  .clk   (clk),
  .a     (issuemult_rsdata),
  .b     (issuemult_rtdata),
  .p     (issuemult_out)
  );

endmodule

`endif

