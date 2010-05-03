
`ifndef TB_REGFILE_V
`define TB_REGFILE_V

`timescale 1ns/1ps

module tb_regfile();
   reg              clk;
   reg              reset;

   // Single write port, data comes from CDB and wen and address
   // is encoded as one-hot from register status table. If one-hot
   // vector is all zeros then don't write anything.
   parameter W_DATA = 32;
   parameter W_ADDR = 5;

   reg      [W_DATA-1:0] cdb_wdata;
   reg      [W_DATA-1:0] rst_wen_onehot;

   // 2 read ports for RS and RT registers.
   reg      [W_ADDR-1:0] dispatch_rsaddr;
   reg      [W_ADDR-1:0] dispatch_rtaddr;
   reg      [W_ADDR-1:0] debug_addr;

   wire [W_DATA-1:0] dispatch_rsdata;
   wire [W_DATA-1:0] dispatch_rtdata;
   wire [W_DATA-1:0] debug_data;
   initial begin
      clk = 1'b0;
      forever #5 clk <= ~clk;
   end

   initial begin
      reset = 1'b1; #10; reset = 1'b0;
   end

   initial begin : main_proc
      integer i;
      debug_addr      = 0;
      rst_wen_onehot  = 0;
      cdb_wdata       = 0;
      dispatch_rtaddr = 0;
      dispatch_rsaddr = 0;
      debug_addr      = 0;

      repeat(2)  @(posedge clk);
      for (i = 0; i < 32; i = i + 1) begin
         rst_wen_onehot = 1<<i;
         cdb_wdata = i+1;
         @(posedge clk);
         #0;
      end
      rst_wen_onehot = 0;
      repeat(2)  @(posedge clk);

      dispatch_rsaddr = 0;
      @(posedge clk);
      for (i = 0; i < 32; i = i + 1) begin
         dispatch_rsaddr = i;
         @(posedge clk);
         #0;
      end

      @(posedge clk);
      @(posedge clk);
      dispatch_rtaddr = 0;
      @(posedge clk);
      for (i = 0; i < 32; i = i + 1) begin
         dispatch_rtaddr = i;
         @(posedge clk);
         #0;
      end

      @(posedge clk);
      dispatch_rtaddr = 0;

      repeat(5)  @(posedge clk);
      @(posedge clk);
      for (i = 0; i < 32; i = i + 1) begin
         debug_addr= i;
         @(posedge clk);
         #0;
      end
   end

   regfile regfile (
      .clk              (clk),
      .reset            (reset),

      .cdb_wdata        (cdb_wdata),
      .rst_wen_onehot   (rst_wen_onehot),

      .dispatch_rsaddr  (dispatch_rsaddr),
      .dispatch_rtaddr  (dispatch_rtaddr),
      .debug_addr       (debug_addr),
      .dispatch_rsdata  (dispatch_rsdata),
      .dispatch_rtdata  (dispatch_rtdata),
      .debug_data       (debug_data)
   );
endmodule

`endif

