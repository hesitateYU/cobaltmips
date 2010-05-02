
`ifndef TB_ISSUE_V
`define TB_ISSUE_V

`timescale 1ns/1ps

module tb_issue();
      reg                     clk;
      reg                     reset;

      reg  [3:0]              equeueint_issueint_opcode;
      reg  [31:0]             equeueint_issueint_rsdata;
      reg  [31:0]             equeueint_issueint_rtdata;
      reg  [ 5:0]             equeueint_issueint_rdtag;

      reg                     equeuels_issuels_opcode;
      reg  [31:0]             equeuels_issuels_rsdata;
      reg  [31:0]             equeuels_issuels_rtdata;
      reg  [ 5:0]             equeuels_issuels_rdtag;

      reg  [31:0]             equeuediv_issuediv_rsdata;
      reg  [31:0]             equeuediv_issuediv_rtdata;
      reg  [ 5:0]             equeuediv_issuediv_rdtag;

      reg  [31:0]             equeuemult_issuemult_rsdata;
      reg  [31:0]             equeuemult_issuemult_rtdata;
      reg  [31:0]             equeuemult_issuemult_rdtag;

      reg                    equeueint_issueint_ready;
      reg                    equeuemult_issuemult_ready;
      reg                    equeuediv_issuediv_ready;
      reg                    equeuels_issuels_ready;

      wire                    issueint_carryout;
      wire                    issueint_overflow;

      wire                    issueint_equeueint_done;
      wire                    issuediv_equeuediv_done;
      wire                    issuemult_equeuemult_done;
      wire                    issuels_equeuels_done;

      wire [31:0]             cdb_out;
      wire [ 5:0]             cdb_tagout;
      wire                    cdb_valid;
      wire                    cdb_branch;
      wire                    cdb_branch_taken;

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
      equeuels_issuels_ready  = 0;
      equeuels_issuels_opcode = 0;
      equeuels_issuels_rsdata = 0;
      equeuels_issuels_rtdata = 0;
      equeuels_issuels_rdtag  = 0;
      equeueint_issueint_ready = 0;
      equeueint_issueint_rsdata = 0;
      equeueint_issueint_rtdata = 0;
      equeueint_issueint_rdtag = 0;
      equeueint_issueint_opcode =0;
      equeuemult_issuemult_ready= 0;
      equeuemult_issuemult_rsdata=0;
      equeuemult_issuemult_rtdata=0;
      equeuemult_issuemult_rdtag=0;
      equeuediv_issuediv_ready = 0;
      equeuediv_issuediv_rsdata =0;
      equeuediv_issuediv_rtdata =0;
      equeuediv_issuediv_rdtag =0;
      

      // Write to address-=0 data = A;
      @(posedge clk);
      #0;
      equeuels_issuels_opcode = 1;
      equeuels_issuels_rsdata = 0;
      equeuels_issuels_rtdata = 32'ha;
      equeuels_issuels_ready  = 1;
      @(posedge clk);
      #0;
      equeuels_issuels_ready =0;
      equeuels_issuels_opcode=0;
      // read address=0
      @(posedge clk);
      #0
      equeuels_issuels_ready = 1;
      equeuels_issuels_rsdata =0;
      @(posedge clk);
      #0;
      equeuels_issuels_ready =0;

      //wait 10 clock cycles
      repeat (10) @(posedge clk);
      #0;
      // Add 3+5 =8
      equeueint_issueint_opcode = 0;
      equeueint_issueint_ready = 1;
      equeueint_issueint_rsdata = 3;
      equeueint_issueint_rtdata = 5;
      equeueint_issueint_rdtag  = 9;
      @(posedge clk);
      #0;
      equeueint_issueint_ready =0;
      // Divide 12/4=3;  and add 12+4 at the same time;
      @(posedge clk);
      #0;
      @(posedge clk);
      #0;
      equeuediv_issuediv_ready = 1;
      equeueint_issueint_ready = 1;
      equeueint_issueint_rsdata = 12;
      equeueint_issueint_rtdata = 4;
      equeuediv_issuediv_rsdata = 12;
      equeuediv_issuediv_rtdata = 4;
      equeueint_issueint_rdtag  = 5;
      equeuediv_issuediv_rdtag  = 5;
      @(posedge clk);
      #0;
      equeuediv_issuediv_ready = 0;
      equeueint_issueint_ready = 0;
      @(posedge clk);
      #0;
      // Int and ld/store at the same time: priority issue
      equeueint_issueint_ready = 1;
      equeuels_issuels_ready  = 1;
      equeueint_issueint_rsdata = 12;
      equeueint_issueint_rtdata = 1;
      equeueint_issueint_rdtag  = 4;
      equeuels_issuels_rsdata = 12;
      equeuels_issuels_rtdata = 1;
      equeuels_issuels_rdtag   =4;
      @(posedge clk);
      #0;
      equeueint_issueint_ready = 0;
      equeuels_issuels_ready  = 0;
      // Mult
      @(posedge clk);
      #0;
      @(posedge clk);
      #0;
      equeuemult_issuemult_ready =1 ;
      equeuemult_issuemult_rsdata =3;
      equeuemult_issuemult_rtdata =5;
      equeuemult_issuemult_rdtag = 1;
      @(posedge clk);
      #0;
      equeuemult_issuemult_ready = 0;
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
      .clk              (clk                          ),
      .reset            (reset                        ),

      .issueint_opcode  (equeueint_issueint_opcode    ),
      .issueint_rsdata  (equeueint_issueint_rsdata    ),
      .issueint_rtdata  (equeueint_issueint_rtdata    ),
      .issueint_rdtag   (equeueint_issueint_rdtag     ),

      .issuels_opcode   (equeuels_issuels_opcode      ),
      .issuels_rsdata   (equeuels_issuels_rsdata      ),
      .issuels_rtdata   (equeuels_issuels_rtdata      ),
      .issuels_rdtag    (equeuels_issuels_rdtag       ),

      .issuediv_rsdata  (equeuediv_issuediv_rsdata    ),
      .issuediv_rtdata  (equeuediv_issuediv_rtdata    ),
      .issuediv_rdtag   (equeuediv_issuediv_rdtag     ),

      .issuemult_rsdata (equeuemult_issuemult_rsdata ),
      .issuemult_rtdata (equeuemult_issuemult_rtdata ),
      .issuemult_rdtag  (equeuemult_issuemult_rdtag  ),

      .issueint_ready   (equeueint_issueint_ready     ),
      .issuemult_ready  (equeuemult_issuemult_ready   ),
      .issuediv_ready   (equeuediv_issuediv_ready     ),
      .issuels_ready    (equeuels_issuels_ready       ),

      .issueint_carryout(issueint_carryout            ),
      .issueint_overflow(issueint_overflow            ),

      .issueint_equeueint_done    (issueint_equeueint_done        ),
      .issuediv_equeuediv_done    (issuediv_equeuediv_done        ),
      .issuemult_equeuemult_done  (issuemult_equeuemult_done      ),
      .issuels_equeuels_done      (issuels_equeuels_done          ),

      .cdb_out          (cdb_out                      ),
      .cdb_tagout       (cdb_tagout                   ),
      .cdb_valid        (cdb_valid                    ),
      .cdb_branch       (cdb_branch                   ),
      .cdb_branch_taken (cdb_branch_taken             )
   );



endmodule

`endif

