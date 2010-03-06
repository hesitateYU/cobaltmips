

`ifndef TB_TOP_V
`define TB_TOP_V

module tb_top();

   reg clk;
   reg rst;

   initial begin
      rst = 1; #20; rst = 0;
   end

   initial begin
      clk = 0;
      forever #5 clk <= ~clk;
   end

   cpu cpu(
      .clk (clk),
      .rst (rst)
   );

endmodule

`endif

