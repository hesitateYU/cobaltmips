

`ifndef TB_TOP_V
`define TB_TOP_V

module tb_top();

   reg clk;
   reg reset;

   initial begin
      reset = 1'b1; #10; reset = 1'b0;
   end

   initial begin
      clk = 1'b0;
      forever #5 clk <= ~clk;
   end

   cpu cpu(
      .clk   (clk  ),
      .reset (reset)
   );

endmodule

`endif

