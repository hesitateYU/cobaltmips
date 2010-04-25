

`ifndef TB_TOP_V
`define TB_TOP_V

module tb_issue();
   reg              clk;
   reg              reset;

   reg [3:0]        opcode;
   reg [31:0]       rsdata;
   reg [31:0]       rtdata;
   reg [ 5:0]       rdtag;

   reg              ready_int;
   reg              ready_mult;
   reg              ready_div;
   reg              ready_ld_buf;

   wire             issue_int;
   wire             issue_mult;
   wire             issue_div;
   wire             issue_ld_buf;
   wire             issue_carryout;
   wire             issue_overflow;
   wire             issue_div_done;

   wire  [31:0]     cdb_out;
   wire  [ 5:0]     cdb_tagout;
   wire             cdb_valid;
   wire             cdb_branch;
   wire             cdb_branch_taken;


   initial begin
      reset = 1'b1; #10; reset = 1'b0;
   end

   initial begin
      clk = 1'b0;
      forever #5 clk <= ~clk;
   end

   initial begin : main_proc
      integer i;
      //-----------------------------------------------------------------------
      // Initial setup.
      //-----------------------------------------------------------------------
      opcode         =  4'h0;
      rsdata         = 32'h0;
      rtdata         = 32'h0;
      rdtag          =  6'h0;

      ready_int      =  1'b0;
      ready_mult     =  1'b0;
      ready_div      =  1'b0;
      ready_ld_buf   =  1'b0;

      repeat (5) @(posedge clk);
      reset = 1'b1;
      @(posedge clk);
      reset = 1'b0;
      @(posedge clk);

      //-----------------------------------------------------------------------
      // Case 0: Add
      //-----------------------------------------------------------------------
      @(posedge clk);
      opcode    =  4'h0;
      ready_int =  1'b1;
      rsdata    = 32'hA;
      rtdata    = 32'h5;
      rdtag     =  6'hE;

      @(posedge clk);
      opcode    =  4'h0;
      ready_int =  1'b0;
      rsdata    = 32'h1;
      rtdata    = 32'h1;
      rdtag     =  6'ha;
      //-----------------------------------------------------------------------
      // Case 1: Add + overflow
      //-----------------------------------------------------------------------
      @(posedge clk);
      opcode    =  4'h0;
      ready_int =  1'b1;
      rsdata    = 32'hFFFFFFFF;
      rtdata    = 32'hFFFFFFFF;
      rdtag     =  6'hB;

      //-----------------------------------------------------------------------
      // Case 2: Substraction 
      //-----------------------------------------------------------------------
      @(posedge clk);
      opcode    = 4'h2;
      ready_int = 1;
      rsdata    = 32'hF;
      rtdata    = 32'h5;
      rdtag     =  6'hB;
      //-----------------------------------------------------------------------
      // Case 3: AND
      //-----------------------------------------------------------------------
      @(posedge clk);
      opcode = 4'h4;
      ready_int = 1;
      rsdata    = 32'hF;
      rtdata    = 32'h5;
      rdtag     =  6'hB;
      //-----------------------------------------------------------------------
      // Case 4: OR
      //-----------------------------------------------------------------------
      @(posedge clk);
      opcode = 4'h5;
      ready_int = 1;
      rsdata    = 32'hF;
      rtdata    = 32'h5;
      rdtag     =  6'hB;
      //-----------------------------------------------------------------------
      // Case 5: NOR
      //-----------------------------------------------------------------------
      @(posedge clk);
      opcode = 4'h6;
      ready_int = 1;
      rsdata    = 32'h1;
      rtdata    = 32'hF;
      rdtag     =  6'hB;
      //-----------------------------------------------------------------------
      // Case 6: STL 
      //-----------------------------------------------------------------------
      @(posedge clk);
      opcode = 4'h7;
      ready_int = 1;
      rsdata    = 32'h5;
      rtdata    = 32'h6;
      rdtag     =  6'hB;
      @(posedge clk);
      opcode    = 4'h7;
      ready_int = 1;
      rsdata    = 32'h6;
      rtdata    = 32'h5;
      rdtag     = 6'h8;
      //-----------------------------------------------------------------------
      // Case 7: BEQ 
      //-----------------------------------------------------------------------
      @(posedge clk);
      opcode = 4'h9;
      ready_int = 1;
      rsdata    = 32'h5;
      rtdata    = 32'h6;
      rdtag     =  6'hB;
      @(posedge clk);
      opcode    = 4'h9;
      ready_int = 1;
      rsdata    = 32'h6;
      rtdata    = 32'h6;
      rdtag     = 6'h8;
      @(posedge clk);
      ready_int = 0;


   end
   issue issue (
   .clk        (clk        ),
   .reset      (reset      ),

   .opcode     ( opcode       ),
   .rsdata     ( rsdata       ),
   .rtdata     ( rtdata       ),
   .rdtag      ( rdtag       ),

   .ready_int  ( ready_int    ),
   .ready_mult ( ready_mult   ),
   .ready_div  ( ready_div    ),
   .ready_ld_buf( ready_ld_buf),

   .issue_int  ( issue_int        ),
   .issue_mult ( issue_mult       ),
   .issue_div  ( issue_div        ),
   .issue_ld_buf( issue_ld_buf    ),
   .issue_carryout( issue_carryout),
   .issue_overflow( issue_overflow),
   .issue_div_done( issue_div_done),

   .cdb_out       ( cdb_out       ),
   .cdb_tagout    ( cdb_tagout      ),
   .cdb_valid     ( cdb_valid       ),
   .cdb_branch    ( cdb_branch       ),
   .cdb_branch_taken( cdb_branch_taken)
);

endmodule

`endif

