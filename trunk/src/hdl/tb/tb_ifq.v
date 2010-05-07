
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
      @(posedge clk);
      cb.dispatch_ifq_ren          <= 0;
      cb.dispatch_ifq_branch_addr  <= 0;
      cb.dispatch_ifq_branch_valid <= 0;
      repeat (10) @(posedge clk);
      reset_testbench(5);

      //-----------------------------------------------------------------------
      // Case 1: the moment it has something to consume, start requesting data.
      //-----------------------------------------------------------------------
      @(posedge clk);
      cb.dispatch_ifq_ren          <= 0;
      cb.dispatch_ifq_branch_addr  <= 0;
      cb.dispatch_ifq_branch_valid <= 0;
      wait (~cb.ifq_dispatch_empty);
      cb.dispatch_ifq_ren <= 1;
      repeat (20) @(posedge clk);
      reset_testbench(5);

      //-----------------------------------------------------------------------
      // Case 2: the moment it has something to consume, start requesting data,
      //         and halt the IFQ a few times.
      //-----------------------------------------------------------------------
      @(posedge clk);
      cb.dispatch_ifq_ren          <= 0;
      cb.dispatch_ifq_branch_addr  <= 0;
      cb.dispatch_ifq_branch_valid <= 0;
      wait (~cb.ifq_dispatch_empty);
      cb.dispatch_ifq_ren <= 1;
      repeat (3) @(posedge clk);
      cb.dispatch_ifq_ren <= 0;
      repeat (1) @(posedge clk);
      cb.dispatch_ifq_ren <= 1;
      repeat (3) @(posedge clk);
      cb.dispatch_ifq_ren <= 0;
      repeat (2) @(posedge clk);
      cb.dispatch_ifq_ren <= 1;
      repeat (3) @(posedge clk);
      reset_testbench(5);


      //-----------------------------------------------------------------------
      // Case 3: fill queue and branch to a distant address.
      //-----------------------------------------------------------------------
      @(posedge clk);
      cb.dispatch_ifq_ren          <= 0;
      cb.dispatch_ifq_branch_addr  <= 0;
      cb.dispatch_ifq_branch_valid <= 0;
      wait (~cb.ifq_dispatch_empty);
      cb.dispatch_ifq_ren <= 1;
      repeat (5) @(posedge clk);
      cb.dispatch_ifq_branch_addr  <= 4 * 4;
      cb.dispatch_ifq_branch_valid <= 1;
      @(posedge clk);
      cb.dispatch_ifq_branch_valid <= 0;
      repeat (20) @(posedge clk);
      reset_testbench(5);


      //-----------------------------------------------------------------------
      // Case 4: branch back and forward between 2 addresses.
      //-----------------------------------------------------------------------
      @(posedge clk)
      cb.dispatch_ifq_ren          <= 0;
      cb.dispatch_ifq_branch_addr  <= 0;
      cb.dispatch_ifq_branch_valid <= 0;
      wait (~cb.ifq_dispatch_empty);
      cb.dispatch_ifq_ren <= 1;
      repeat (5) @(posedge clk);
      repeat (5) begin
         cb.dispatch_ifq_branch_addr  <= 4 * 0;
         cb.dispatch_ifq_branch_valid <= 1;
         @(posedge clk);
         cb.dispatch_ifq_branch_addr  <= 4 * 10;
         cb.dispatch_ifq_branch_valid <= 1;
         @(posedge clk);
      end
      @(posedge clk)
      cb.dispatch_ifq_branch_valid <= 0;
      repeat (20) @(posedge clk)


      reset_testbench(100);
   end


   task reset_testbench(integer unsigned cycles);
      cb.dispatch_ifq_ren          <= 0;
      cb.dispatch_ifq_branch_addr  <= 0;
      cb.dispatch_ifq_branch_valid <= 0;
      cb.reset <= 1'b1;
      repeat (cycles) @(posedge clk);
      cb.reset <= 1'b0;
   endtask

   initial begin
      clk = 1'b0;
      forever #5 clk = ~clk;
   end

   clocking cb @(posedge clk);
      default input #1 output #2;
      output reset;
      output dispatch_ifq_ren;
      output dispatch_ifq_branch_addr;
      output dispatch_ifq_branch_valid;

      input ifq_icache_pcin;
      input ifq_icache_ren;
      input ifq_icache_abort;
      input icache_ifq_dout;
      input icache_ifq_dout_valid;

      input ifq_dispatch_pcout_plus4;
      input ifq_dispatch_inst;
      input ifq_dispatch_empty;
   endclocking

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

