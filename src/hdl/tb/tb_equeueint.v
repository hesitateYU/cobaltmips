
`ifndef TB_EQUEUEINT_V
`define TB_EQUEUEINT_V

`timescale 1ns/1ps

module tb_equeueint();

   reg  clk;
   reg  reset;

   reg  [  3:0] dispatch_equeueint_opcode;
   reg          dispatch_equeueint_en;
   wire         equeueint_dispatch_ready;

   reg  [  5:0] dispatch_equeue_rdtag;
   reg  [  5:0] dispatch_equeue_rstag;
   reg  [  5:0] dispatch_equeue_rttag;
   reg  [ 31:0] dispatch_equeue_rsdata;
   reg  [ 31:0] dispatch_equeue_rtdata;
   reg          dispatch_equeue_rsvalid;
   reg          dispatch_equeue_rtvalid;

   reg  [ 31:0] cdb_equeueint_data;
   reg  [  5:0] cdb_equeueint_tag;
   reg          cdb_equeueint_valid;

   wire [  3:0] equeueint_issueint_opcode;
   wire [  5:0] equeueint_issueint_rdtag;
   wire [ 31:0] equeueint_issueint_rsdata;
   wire [ 31:0] equeueint_issueint_rtdata;
   wire         equeueint_issueint_ready;
   reg          issueint_equeueint_done;

   initial begin : main_proc
      integer i;

      reset_testbench();

      //-----------------------------------------------------------------------
      // Case 0: don't take anything.
      //-----------------------------------------------------------------------
      @(posedge clk) #0;
      for (i = 5; i < 15; i = i + 1) begin
         dispatch_equeueint_en     = 1'b0;
         issueint_equeueint_done   = 1'b0;
         dispatch_equeueint_opcode = i;
         dispatch_equeue_rdtag     = i;
         dispatch_equeue_rstag     = i;
         dispatch_equeue_rttag     = i;
         dispatch_equeue_rsdata    = i;
         dispatch_equeue_rtdata    = i;
         dispatch_equeue_rsvalid   = 1'b1;
         dispatch_equeue_rtvalid   = 1'b1;
         @(posedge clk) #0;
      end

      reset_testbench();

      //-----------------------------------------------------------------------
      // Case 1: fill queue beyond capacity, then consume everything.
      //-----------------------------------------------------------------------
      @(posedge clk) #0;
      for (i = 5; i < 15; i = i + 1) begin
         dispatch_equeueint_en     = 1'b1;
         issueint_equeueint_done   = 1'b0;
         dispatch_equeueint_opcode = i;
         dispatch_equeue_rdtag     = i;
         dispatch_equeue_rstag     = i;
         dispatch_equeue_rttag     = i;
         dispatch_equeue_rsdata    = i;
         dispatch_equeue_rtdata    = i;
         dispatch_equeue_rsvalid   = 1'b1;
         dispatch_equeue_rtvalid   = 1'b1;
         @(posedge clk) #0;
      end
      // consume queue.
      @(posedge clk) #0;
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b1;
      repeat (10) @(posedge clk) #0;

      reset_testbench();

      //-----------------------------------------------------------------------
      // Case 3: fill and consume at the same time.
      //-----------------------------------------------------------------------
      @(posedge clk) #0;
      for (i = 5; i < 15; i = i + 1) begin
         dispatch_equeueint_en     = 1'b1;
         issueint_equeueint_done   = 1'b1;
         dispatch_equeueint_opcode = i;
         dispatch_equeue_rdtag     = i;
         dispatch_equeue_rstag     = i;
         dispatch_equeue_rttag     = i;
         dispatch_equeue_rsdata    = i;
         dispatch_equeue_rtdata    = i;
         dispatch_equeue_rsvalid   = 1'b1;
         dispatch_equeue_rtvalid   = 1'b1;
         @(posedge clk) #0;
      end
      @(posedge clk) #0;
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b1;
      repeat (10) @(posedge clk) #0;

      reset_testbench();

      //-----------------------------------------------------------------------
      // Case 4: fill one and consume it.
      //-----------------------------------------------------------------------
      @(posedge clk) #0;
      for (i = 5; i < 6; i = i + 1) begin
         dispatch_equeueint_en     = 1'b1;
         issueint_equeueint_done   = 1'b1;
         dispatch_equeueint_opcode = i;
         dispatch_equeue_rdtag     = i;
         dispatch_equeue_rstag     = i;
         dispatch_equeue_rttag     = i;
         dispatch_equeue_rsdata    = i;
         dispatch_equeue_rtdata    = i;
         dispatch_equeue_rsvalid   = 1'b1;
         dispatch_equeue_rtvalid   = 1'b1;
         @(posedge clk) #0;
      end
      @(posedge clk) #0;
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b1;
      repeat (10) @(posedge clk) #0;

      reset_testbench();


      //-----------------------------------------------------------------------
      // Case 5: fill instructions not yet ready, then send updates through
      //         cdb.
      //-----------------------------------------------------------------------
      @(posedge clk) #0;
      for (i = 5; i < 15; i = i + 1) begin
         dispatch_equeueint_en     = 1'b1;
         issueint_equeueint_done   = 1'b0;
         dispatch_equeueint_opcode = i;
         dispatch_equeue_rdtag     = i;
         dispatch_equeue_rstag     = i;
         dispatch_equeue_rttag     = i;
         dispatch_equeue_rsdata    = i;
         dispatch_equeue_rtdata    = i;
         dispatch_equeue_rsvalid   = 1'b0;
         dispatch_equeue_rtvalid   = 1'b0;
         @(posedge clk) #0;
      end
      dispatch_equeueint_en = 1'b0;
      for (i = 5; i < 15; i = i + 1) begin
         cdb_equeueint_data  = i * 1000;
         cdb_equeueint_tag   = i;
         // Publish in cdb some tags (not all of them)
         cdb_equeueint_valid = i%2;
         @(posedge clk) #0;
      end
      // Now, consume all tags valid.
      @(posedge clk) #0;
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b1;
      repeat (10) @(posedge clk) #0;

      reset_testbench();

   end


   task reset_testbench();
      begin
         @(posedge clk) #0;
         dispatch_equeueint_en     =  1'b0;
         issueint_equeueint_done   =  1'b0;
         dispatch_equeueint_opcode =  3'h0;
         dispatch_equeue_rdtag     =  6'h0;
         dispatch_equeue_rstag     =  6'h0;
         dispatch_equeue_rttag     =  6'h0;
         dispatch_equeue_rsdata    = 32'h0;
         dispatch_equeue_rtdata    = 32'h0;
         dispatch_equeue_rsvalid   =  1'b0;
         dispatch_equeue_rtvalid   =  1'b0;
         cdb_equeueint_data        = 32'h0;
         cdb_equeueint_tag         =  6'h0;
         cdb_equeueint_valid       =  1'b0;

         reset = 1'b1; @(posedge clk) #0;
         reset = 1'b0; @(posedge clk) #0;
      end
   endtask

   initial begin
      reset = 1'b1; #10; reset = 1'b0;
   end

   initial begin
      clk = 1'b0;
      forever #5 clk <= ~clk;
   end

   equeueint equeueint (
      .clk              (clk                      ),
      .reset            (reset                    ),
      .dispatch_opcode  (dispatch_equeueint_opcode),
      .dispatch_en      (dispatch_equeueint_en    ),
      .dispatch_ready   (equeueint_dispatch_ready ),
      .dispatch_rdtag   (dispatch_equeue_rdtag    ),
      .dispatch_rstag   (dispatch_equeue_rstag    ),
      .dispatch_rttag   (dispatch_equeue_rttag    ),
      .dispatch_rsdata  (dispatch_equeue_rsdata   ),
      .dispatch_rtdata  (dispatch_equeue_rtdata   ),
      .dispatch_rsvalid (dispatch_equeue_rsvalid  ),
      .dispatch_rtvalid (dispatch_equeue_rtvalid  ),

      .cdb_tag          (cdb_equeueint_tag        ),
      .cdb_valid        (cdb_equeueint_valid      ),
      .cdb_data         (cdb_equeueint_data       ),

      .issueint_opcode  (equeueint_issueint_opcode),
      .issueint_rdtag   (equeueint_issueint_rdtag ),
      .issueint_rsdata  (equeueint_issueint_rsdata),
      .issueint_rtdata  (equeueint_issueint_rtdata),
      .issueint_ready   (equeueint_issueint_ready ),
      .issueint_done    (issueint_equeueint_done  )
   );

endmodule

`endif

