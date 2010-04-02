`ifndef ISSUEDIV_V
`define ISSUEDIV_V

module issuediv (
         input             clk,
         input             reset,
         input             issuediv_enable,
         input      [15:0] issuediv_rsdata,
         input      [15:0] issuediv_rtdata,
         input      [ 5:0] issuediv_rdtag,

         output reg        issuediv_busy,
         output reg [31:0] issuediv_out,
         output reg [ 5:0] issuediv_rdtag_out
);

reg  [15:0] in1_r, in2_r;
reg  [31:0] out_r;
wire [31:0] out;
wire        busy;

always @(posedge clk) begin : div_first_flopdelay
   in1_r <= (reset) ? 16'h0: issuediv_rsdata;
   in2_r <= (reset) ? 16'h0: issuediv_rtdata;
   issuediv_busy <= (reset) ? 1'b0: busy;
end

always @(posedge clk) begin: div_secnd_flopdelay
   out_r <= (reset) ? 32'h0: out;
end

always @(*) begin : busy
   issuediv_rdtag_out <= (busy) ? 6'h0: issuediv_rdtag;
end

divider div1(
	.dividend(in1_r          ),
	.divisor (in2_r          ),
	.quot    (out            ),
	.remd    (               ),
	.clk     (clk            ),
	.rfd     (busy           ),
	.aclr    (reset          ),
	.ce      (issuediv_enable)
);

endmodule

`endif


