

`ifndef TB_TOP_V
`define TB_TOP_V

module tb_equeueint();

   reg  clk;
   reg  reset;

   reg  [  2:0] dispatch_equeueint_opcode;
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

   wire [  2:0] equeueint_issueint_opcode;
   wire [  5:0] equeueint_issueint_rdtag;
   wire [ 31:0] equeueint_issueint_rsdata;
   wire [ 31:0] equeueint_issueint_rtdata;
   wire         equeueint_issueint_ready;
   reg          issueint_equeueint_done;

   initial begin : main_proc
      integer i;

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
      #50;

      //-----------------------------------------------------------------------
      // Case 0: don't take anything.
      //-----------------------------------------------------------------------
      #1;
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b0;
      for (i = 5; i < 15; i = i + 1) begin
         dispatch_equeueint_opcode = i;
         dispatch_equeue_rdtag     = i;
         dispatch_equeue_rstag     = i;
         dispatch_equeue_rttag     = i;
         dispatch_equeue_rsdata    = i;
         dispatch_equeue_rtdata    = i;
         dispatch_equeue_rsvalid   = 1'b1;
         dispatch_equeue_rtvalid   = 1'b1;
         #10;
      end
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b0;
      #50;
      reset = 1'b1; #10; reset = 1'b0;
      @(posedge clk);

      //-----------------------------------------------------------------------
      // Case 1: fill queue beyond capacity.
      //-----------------------------------------------------------------------
      #1;
      dispatch_equeueint_en   = 1'b1;
      issueint_equeueint_done = 1'b0;
      for (i = 5; i < 15; i = i + 1) begin
         dispatch_equeueint_opcode = i;
         dispatch_equeue_rdtag     = i;
         dispatch_equeue_rstag     = i;
         dispatch_equeue_rttag     = i;
         dispatch_equeue_rsdata    = i;
         dispatch_equeue_rtdata    = i;
         dispatch_equeue_rsvalid   = 1'b1;
         dispatch_equeue_rtvalid   = 1'b1;
         #10;
      end
      // consume queue.
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b1;
      #50;
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b0;
      #50;
      reset = 1'b1; #10; reset = 1'b0;
      @(posedge clk);

      //-----------------------------------------------------------------------
      // Case 3: fill and consume at the same time.
      //-----------------------------------------------------------------------
      #1;
      dispatch_equeueint_en   = 1'b1;
      issueint_equeueint_done = 1'b1;
      for (i = 5; i < 15; i = i + 1) begin
         dispatch_equeueint_opcode = i;
         dispatch_equeue_rdtag     = i;
         dispatch_equeue_rstag     = i;
         dispatch_equeue_rttag     = i;
         dispatch_equeue_rsdata    = i;
         dispatch_equeue_rtdata    = i;
         dispatch_equeue_rsvalid   = 1'b1;
         dispatch_equeue_rtvalid   = 1'b1;
         #10;
      end
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b1;
      #50;
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b0;
      #50;
      reset = 1'b1; #10; reset = 1'b0;
      @(posedge clk);

      //-----------------------------------------------------------------------
      // Case 1: fill one and consume it.
      //-----------------------------------------------------------------------
      #1;
      dispatch_equeueint_en   = 1'b1;
      issueint_equeueint_done = 1'b1;
      for (i = 5; i < 6; i = i + 1) begin
         dispatch_equeueint_opcode = i;
         dispatch_equeue_rdtag     = i;
         dispatch_equeue_rstag     = i;
         dispatch_equeue_rttag     = i;
         dispatch_equeue_rsdata    = i;
         dispatch_equeue_rtdata    = i;
         dispatch_equeue_rsvalid   = 1'b1;
         dispatch_equeue_rtvalid   = 1'b1;
         #10;
      end
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b1;
      #50;
      dispatch_equeueint_en   = 1'b0;
      issueint_equeueint_done = 1'b0;
      #50;
      reset = 1'b1; #10; reset = 1'b0;
      @(posedge clk);


   end

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

