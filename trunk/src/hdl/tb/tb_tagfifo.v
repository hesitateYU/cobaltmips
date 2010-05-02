
`ifndef TB_V
`define TB_V

`timescale 1ns/1ps

module tb_tagfifo();

   reg  clk;
   reg  reset;

   reg        dispatch_ren;
   wire       dispatch_full;
   wire       dispatch_empty;
   wire [5:0] dispatch_tag;
   reg  [5:0] cdb_tag;
   reg        cdb_valid;

   initial begin : main_proc
      integer i;

      reset_testbench(5);

      //-----------------------------------------------------------------------
      // Case 0: don't take anything, let tagfifo full.
      //-----------------------------------------------------------------------
      @(posedge clk);
      cb.dispatch_ren <= 0;
      cb.cdb_tag      <= 0;
      cb.cdb_valid    <= 0;
      repeat (10) @(posedge clk);
      reset_testbench(5);


      //-----------------------------------------------------------------------
      // Case 1: take all tags from queue, then insert them but in reverse
      //         order.
      //-----------------------------------------------------------------------
      @(posedge clk);
      wait (cb.dispatch_full);
      cb.dispatch_ren <= 1;
      cb.cdb_tag      <= 0;
      cb.cdb_valid    <= 0;
      while (~dispatch_empty) begin
         @(posedge clk);
      end
      cb.dispatch_ren <= 0;

      for (i = 63; i >= 0; i = i - 1) begin
         cb.cdb_tag   <= i;
         cb.cdb_valid <= 1;
         @(posedge clk);
      end
      cb.cdb_valid <= 0;

      repeat (10) @(posedge clk);
      reset_testbench(5);


      //-----------------------------------------------------------------------
      // Case 2: pushing and poping at the same time.
      //-----------------------------------------------------------------------
      @(posedge clk);
      wait (cb.dispatch_full);
      cb.dispatch_ren <= 1;
      cb.cdb_tag      <= 0;
      cb.cdb_valid    <= 0;
      repeat (5) @(posedge clk);
      cb.dispatch_ren <= 0;
      for (int i = 0; i < 5; i = i + 1) begin
         cb.cdb_tag   <= i * 7;
         cb.cdb_valid <= 1;
         @(posedge clk);
      end
      cb.cdb_valid <= 0;

      repeat (10) @(posedge clk);
      reset_testbench(5);


      reset_testbench(100);
   end


   task reset_testbench(integer unsigned cycles = 5);
      cb.dispatch_ren <= 0;
      cb.cdb_tag      <= 0;
      cb.cdb_valid    <= 0;
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
      output cdb_tag;
      output cdb_valid;
      output dispatch_ren;
      input  dispatch_tag;
      input  dispatch_full;
      input  dispatch_empty;
   endclocking

   tagfifo tagfifo (
      .clk            (clk           ),
      .reset          (reset         ),
      .dispatch_tag   (dispatch_tag  ),
      .dispatch_ren   (dispatch_ren  ),
      .dispatch_full  (dispatch_full ),
      .dispatch_empty (dispatch_empty),
      .cdb_tag        (cdb_tag       ),
      .cdb_valid      (cdb_valid     )
   );

endmodule

`endif

