
`ifndef DIVIDER_WRAPPER_V
`define DIVIDER_WRAPPER_V

`timescale 1ns/1ps

module divider_wrapper (
         input             clk,
         input             reset,
         input             issuediv_enable,
         input      [31:0] issuediv_rsdata,
         input      [31:0] issuediv_rtdata,
         input      [ 5:0] issuediv_rdtag,

         output            issuediv_busy,
         output reg [31:0] issuediv_out,
         output reg [ 5:0] issuediv_rdtag_out
   );

   reg [31:0] rsdata_r, rtdata_r;
   reg [31:0] rsdata,   rtdata;
   reg [ 5:0] rdtag_r;
   reg [ 5:0] rdtag;

   always @(*) begin : divider_wrapper_bypass_proc
      rsdata = (issuediv_enable) ? issuediv_rsdata : rsdata_r;
      rtdata = (issuediv_enable) ? issuediv_rtdata : rtdata_r;
      rdtag  = (issuediv_enable) ? issuediv_rdtag  : rdtag_r;
   end

   always @(posedge clk) begin : divider_wrapper_reg_assign
      rsdata_r <= (reset) ? 'h0 : (issuediv_enable) ? issuediv_rsdata : rsdata_r;
      rtdata_r <= (reset) ? 'h0 : (issuediv_enable) ? issuediv_rtdata : rtdata_r;
      rdtag_r  <= (reset) ? 'h0 : (issuediv_enable) ? issuediv_rdtag  : rdtag_r;
   end


   divider divider (
      .clk_div          (clk),
      .reset_div        (~reset),
      .issueque_div_a   (rsdata),
      .issueque_div_b   (rtdata),
      .issueque_div_tag (rdtag),
      .issue_div        (issuediv_enable),
      .div_tag_out      (issuediv_rdtag_out),
      .div_res          (issuediv_out),
      .div_rfd          (issuediv_busy)
   );

endmodule

`endif

