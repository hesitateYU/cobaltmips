
`ifndef TB_ISSUE_V
`define TB_ISSUE_V

`timescale 1ns/1ps

module tb_issue();
   reg              clk;
   reg              reset;

   reg [3:0]        opcode;
   reg [31:0]       rsdata; //address for ld/st
   reg [31:0]       rtdata; //data for ld/st
   reg [ 5:0]       rdtag;

   reg              ld_st_opcode;
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
   wire  [31:0]     ld_buf_out;

   wire  [31:0]     cdb_out;
   wire  [ 5:0]     cdb_tagout;
   wire             cdb_valid;
   wire             cdb_branch;
   wire             cdb_branch_taken;
   wire [31:0]      div_out;

   reg               wen;
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
      ready_ld_buf =0;
      ld_st_opcode = 0;
      rsdata = 0;
      rtdata = 0;
      rdtag = 0;
      ready_int = 0;
      ready_mult = 0;
      ready_div =0;

      // Write to address-=0 data = A;
      @(posedge clk);
      #0;
      ld_st_opcode =1;
      rsdata = 0;
      rtdata = 32'ha;
      ready_ld_buf =1;
      @(posedge clk);
      #0;
      ready_ld_buf =0;
      ld_st_opcode =0;
      // read address=0
      @(posedge clk);
      #0
      ready_ld_buf =1 ;
      rsdata =0;
      @(posedge clk);
      #0;
      ready_ld_buf =0;

      //wait 10 clock cycles
      repeat (10) @(posedge clk);
      #0;
      // Add 3+5 =8
      opcode = 0;
      ready_int = 1;
      rsdata = 3;
      rtdata = 5;
      rdtag  = 9;
      @(posedge clk);
      #0;
      ready_int =0;
      // Divide 12/4=3;  and add 12+4 at the same time;
      @(posedge clk);
      #0;
      @(posedge clk);
      #0;
      ready_div = 1;
      ready_int = 1;
      rsdata = 12;
      rtdata = 4;
      rdtag  = 5;
      @(posedge clk);
      #0;
      ready_div = 0;
      ready_int = 0;
      @(posedge clk);
      #0;
      // Int and ld/store at the same time: priority issue
      ready_int = 1;
      ready_ld_buf  = 1;
      rsdata = 12;
      rtdata = 1;
      rdtag  = 4;
      @(posedge clk);
      #0;
      ready_int = 0;
      ready_ld_buf = 0;
      // Mult
      @(posedge clk);
      #0;
      @(posedge clk);
      #0;
      ready_mult =1 ;
      rsdata =3;
      rtdata =5;
      rdtag = 1;
      @(posedge clk);
      #0;
      ready_mult = 0;
      @(posedge clk);
      #0;
      @(posedge clk);
      #0;

 /*     for (i = 0; i < 10; i = i + 1) begin
         ready_ld_buf = 1;
         ld_st_opcode = 1;
         rsdata = i;
         rtdata = i;
         rdtag  = i;
         @(posedge clk);
         #0;
         ready_ld_buf = 0;
      end
      ld_st_opcode = 0;
      rtdata = 0;

      repeat (10) @(posedge clk);
      #0;
      for (i = 0; i < 10; i = i + 1) begin
         ready_ld_buf = 1;
         ld_st_opcode   = 0;
         rsdata  = i;
         @(posedge clk);
      #0;
         ready_ld_buf =0;
      end
      ld_st_opcode = 0;
      rsdata = 0;

      repeat (10) @(posedge clk);
      #0;
      for (i = 0; i < 10; i = i + 1) begin
         ready_ld_buf =1;
         ld_st_opcode   = 1;
         rsdata  = i;
         rtdata = i + 100;
         @(posedge clk);
         #0;
         ready_ld_buf =1;
         ld_st_opcode   = 0;
         @(posedge clk);
         #0;
      end

   end
*/

/*   initial begin : main_proc
      integer i;

      wen = 0;
      addr = 0;
      wdata = 0;

      repeat (10) @(posedge clk);
      #0;
      for (i = 0; i < 10; i = i + 1) begin
         wen   = 1;
         addr  = i;
         wdata = i;
         @(posedge clk);
         #0;
      end
      wen = 0;
      wdata = 0;

      repeat (10) @(posedge clk);
      #0;
      for (i = 0; i < 10; i = i + 1) begin
         wen   = 0;
         addr  = i;
         @(posedge clk);
      #0;
      end
      wen = 0;
      addr = 0;

      repeat (10) @(posedge clk);
      #0;
      for (i = 0; i < 10; i = i + 1) begin
         wen   = 1;
         addr  = i;
         wdata = i + 100;
         @(posedge clk);
         #0;
         wen   = 0;
         @(posedge clk);
         #0;
      end

   end

   dcache dcache2 (
      .clk    (clk ),
      .wen    (wen  ),
      .addr   (addr ),
      .wdata  (wdata),
      .rdata  (rdata)
   ); */
   end
   issue issue(
      .clk              (clk),
      .reset            (reset),

      .opcode           (opcode),
      .rsdata           (rsdata),
      .rtdata           (rtdata),
      .rdtag            (rdtag),
      .ld_st_opcode     (ld_st_opcode),
      .issuequeue_ready (),

      .ready_int        (ready_int),
      .ready_mult       (ready_mult),
      .ready_div        (ready_div),
      .ready_ld_buf     (ready_ld_buf),

      .issue_int        (issue_int),
      .issue_mult       (issue_mult),
      .issue_div        (issue_div),
      .issue_ld_buf     (issue_ld_buf),
      .issue_carryout   (issue_carryout),
      .issue_overflow   (issue_overflow),
      .issue_div_done   (issue_div_done),

      .cdb_out          (cdb_out),
      .cdb_tagout       (cdb_tagout),
      .cdb_valid        (cdb_valid),
      .cdb_branch       (cdb_branch),
      .cdb_branch_taken (cdb_branch_taken)
   );

endmodule

`endif

