
`ifndef TB_IFQ_V
`define TB_IFQ_V

`timescale 1ns/1ps

module tb_ifq();

   reg  clk;
   reg  reset;

   wire [ 31:0] ifq_icache_pcin;
   wire         ifq_icache_ren;
   wire         ifq_icache_abort;
   wire [127:0] icache_ifq_dout;
   wire         icache_ifq_dout_valid;

   wire [ 31:0] ifq_dispatch_pcout_plus4;
   wire [ 31:0] ifq_dispatch_inst;
   wire         ifq_dispatch_empty;
   reg          dispatch_ifq_ren;
   reg  [ 31:0] dispatch_ifq_branch_addr;
   reg          dispatch_ifq_branch_valid;

   initial begin : main_proc
      integer i;

      reset_testbench(5);

      //-----------------------------------------------------------------------
      // Case 0: don't take anything, let IFQ to fill up.
      //-----------------------------------------------------------------------
      @(posedge clk) #0;
      dispatch_ifq_ren          = 0;
      dispatch_ifq_branch_addr  = 0;
      dispatch_ifq_branch_valid = 0;
      repeat (10) @(posedge clk) #0;
      reset_testbench(5);

      //-----------------------------------------------------------------------
      // Case 1: the moment it has something to consume, start requesting data.
      //-----------------------------------------------------------------------
      @(posedge clk) #0;
      dispatch_ifq_ren          = 0;
      dispatch_ifq_branch_addr  = 0;
      dispatch_ifq_branch_valid = 0;
      wait (~ifq_dispatch_empty);
      dispatch_ifq_ren = 1;
      repeat (20) @(posedge clk) #0;
      reset_testbench(5);

      //-----------------------------------------------------------------------
      // Case 2: fill queue and branch to a distant address.
      //-----------------------------------------------------------------------
      @(posedge clk) #0;
      dispatch_ifq_ren          = 0;
      dispatch_ifq_branch_addr  = 0;
      dispatch_ifq_branch_valid = 0;
      wait (~ifq_dispatch_empty);
      dispatch_ifq_ren = 1;
      repeat (5) @(posedge clk) #0;
      dispatch_ifq_branch_addr  = 4 * 10;
      dispatch_ifq_branch_valid = 1;
      @(posedge clk) #0;
      dispatch_ifq_branch_valid = 0;
      repeat (20) @(posedge clk) #0;
      reset_testbench(5);

      //-----------------------------------------------------------------------
      // Case 3: branch back and forward between 2 addresses.
      //-----------------------------------------------------------------------
      @(posedge clk) #0;
      dispatch_ifq_ren          = 0;
      dispatch_ifq_branch_addr  = 0;
      dispatch_ifq_branch_valid = 0;
      wait (~ifq_dispatch_empty);
      dispatch_ifq_ren = 1;
      repeat (5) @(posedge clk) #0;
      repeat (5) begin
         dispatch_ifq_branch_addr  = 4 * 0;
         dispatch_ifq_branch_valid = 1;
         @(posedge clk) #0;
         dispatch_ifq_branch_addr  = 4 * 10;
         dispatch_ifq_branch_valid = 1;
         @(posedge clk) #0;
      end
      @(posedge clk) #0;
      dispatch_ifq_branch_valid = 0;
      repeat (20) @(posedge clk) #0;


      reset_testbench(100);
   end


   task reset_testbench(integer unsigned cycles);
      dispatch_ifq_ren          = 0;
      dispatch_ifq_branch_addr  = 0;
      dispatch_ifq_branch_valid = 0;
      reset = 1'b1;
      repeat (cycles) @(posedge clk) #0;
      reset = 1'b0;
   endtask

   initial begin
      clk = 1'b0;
      forever #5 clk <= ~clk;
   end

   icache #(
      .W_DATA         ( 128 ),
      .W_ADDR         (  32 )
   ) icache (
      .clk            ( clk                   ),
      .reset          ( reset                 ),
      .ifq_pcin       ( ifq_icache_pcin       ),
      .ifq_ren        ( ifq_icache_ren        ),
      .ifq_abort      ( ifq_icache_abort      ),
      .ifq_dout       ( icache_ifq_dout       ),
      .ifq_dout_valid ( icache_ifq_dout_valid )
   );

   ifq ifq (
      .clk                   ( clk                       ),
      .reset                 ( reset                     ),
      .icache_pcin           ( ifq_icache_pcin           ),
      .icache_ren            ( ifq_icache_ren            ),
      .icache_abort          ( ifq_icache_abort          ),
      .icache_dout           ( icache_ifq_dout           ),
      .icache_dout_valid     ( icache_ifq_dout_valid     ),
      .dispatch_pcout_plus4  ( ifq_dispatch_pcout_plus4  ),
      .dispatch_inst         ( ifq_dispatch_inst         ),
      .dispatch_empty        ( ifq_dispatch_empty        ),
      .dispatch_ren          ( dispatch_ifq_ren          ),
      .dispatch_branch_addr  ( dispatch_ifq_branch_addr  ),
      .dispatch_branch_valid ( dispatch_ifq_branch_valid )
   );

endmodule

`endif

