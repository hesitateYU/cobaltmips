
`ifndef TB_DCACHE_V
`define TB_DCACHE_V

`timescale 1ns/1ps

module tb_dcache();
   reg              clk;
   reg              reset;

   reg              wen;
   reg [31:0]       addr;
   reg [31:0]       wdata;
   reg [31:0]       rdata;

   initial begin
      clk = 1'b0;
      forever #5 clk <= ~clk;
   end

   initial begin
      reset = 1'b1; #10; reset = 1'b0;
   end

   initial begin : main_proc
      integer i;

      wen = 0;
      addr = 0;
      wdata = 0;

      repeat (10) @(posedge clk);
      for (i = 0; i < 10; i = i + 1) begin
         wen   = 1;
         addr  = i;
         wdata = i;
         @(posedge clk);
      end
      wen = 0;
      wdata = 0;

      repeat (10) @(posedge clk);
      for (i = 0; i < 10; i = i + 1) begin
         wen   = 0;
         addr  = i;
         @(posedge clk);
      end
      wen = 0;
      addr = 0;

      repeat (10) @(posedge clk);
      for (i = 0; i < 10; i = i + 1) begin
         wen   = 1;
         addr  = i;
         wdata = i + 100;
         @(posedge clk);
         wen   = 0;
         @(posedge clk);
      end

   end

   dcache dcache (
      .clk    (clk ),
      .wen    (wen  ),
      .addr   (addr ),
      .wdata  (wdata),
      .rdata  (rdata)
   );

endmodule

`endif

