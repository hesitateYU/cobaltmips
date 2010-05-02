
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
      @(posedge cb.clk);
      dispatch_ren = 0;
      cdb_tag      = 0;
      cdb_valid    = 0;
      repeat (10) @(posedge cb.clk);
      reset_testbench(5);


      //-----------------------------------------------------------------------
      // Case 1: take all tags from queue, then insert them but in reverse
      //         order.
      //-----------------------------------------------------------------------
      @(posedge cb.clk);
      wait (dispatch_full);
      dispatch_ren = 1;
      cdb_tag      = 0;
      cdb_valid    = 0;
      while (~dispatch_empty) begin
         @(posedge cb.clk);
      end
      dispatch_ren = 0;

      for (i = 63; i >= 0; i = i - 1) begin
         cdb_tag   = i;
         cdb_valid = 1;
         @(posedge cb.clk);
      end
      cdb_valid = 0;

      repeat (10) @(posedge cb.clk);
      reset_testbench(5);


      //-----------------------------------------------------------------------
      // Case 2: pushing and poping at the same time.
      //-----------------------------------------------------------------------
      @(posedge cb.clk);
      wait (dispatch_full);
      dispatch_ren = 1;
      cdb_tag      = 0;
      cdb_valid    = 0;
      repeat (5) @(posedge cb.clk);
      dispatch_ren = 0;
      for (int i = 0; i < 5; i = i + 1) begin
         cdb_tag   = i * 7;
         cdb_valid = 1;
         @(posedge cb.clk);
      end
      cdb_valid = 0;

      repeat (10) @(posedge cb.clk);
      reset_testbench(5);


      reset_testbench(100);
   end


   task reset_testbench(integer unsigned cycles);
      dispatch_ren = 0;
      cdb_tag      = 0;
      cdb_valid    = 0;
      reset = 1'b1;
      repeat (cycles) @(posedge cb.clk);
      reset = 1'b0;
   endtask

   initial begin
      cb.clk = 1'b0;
      forever #5ns cb.clk <= ~cb.clk;
   end

   clocking cb @(posedge clk);
      default input #1ns output #2ns;
      input  cdb_tag;
      input  cdb_valid;
      input  dispatch_ren;
      output dispatch_tag;
      output dispatch_full;
      output dispatch_empty;
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

