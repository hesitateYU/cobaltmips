
`ifndef DIVIDER_WRAPPER_V
`define DIVIDER_WRAPPER_V

`timescale 1ns/1ps

module divider_wrapper(
         input         clk,
         input         reset,
         input         issuediv_enable,
         input [31:0]  issuediv_rsdata,
         input [31:0]  issuediv_rtdata,
         input [ 5:0]  issuediv_rdtag,

         output        issuediv_busy,
         output [31:0] issuediv_out,
         output [ 5:0] issuediv_rdtag_out
   );

   divider divider (
      .clk_div          (clk),
      .reset_div        (~reset),
      .issueque_div_a   (issuediv_rsdata),
      .issueque_div_b   (issuediv_rtdata),
      .issueque_div_tag (issuediv_rdtag),
      .issue_div        (issuediv_enable),
      .div_tag_out      (issuediv_rdtag_out),
      .div_res          (issuediv_out),
      .div_rfd          (issuediv_busy)
   );

endmodule

`endif

