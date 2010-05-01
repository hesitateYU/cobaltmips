
`ifndef ISSUE_V
`define ISSUE_V

`timescale 1ns/1ps

module issue (
   input              clk,
   input              reset,

   input [3:0]        opcode,
   input [31:0]       rsdata,
   input [31:0]       rtdata,
   input [ 5:0]       rdtag,
   input              ld_st_opcode,
   input              issuequeue_ready,

   input              ready_int,
   input              ready_mult,
   input              ready_div,
   input              ready_ld_buf,

   output reg         issue_queuedone,
   output reg         issue_int,
   output reg         issue_mult,
   output reg         issue_div,
   output reg         issue_ld_buf,
   output             issue_carryout,
   output             issue_overflow,
   output reg         issue_div_done,

   output reg [31:0]  cdb_out,
   output reg [ 5:0]  cdb_tagout,
   output reg         cdb_valid,
   output             cdb_branch,
   output             cdb_branch_taken
);

   localparam INT_BEFORE_LOAD = 1;

   reg  [6:0] cdb_slot, cdb_slot_r;
   wire [3:0] mux_cdb_ctrl;
   reg        LRU;
   reg  [5:0] div_cdb_ctrl, div_cdb_ctrl_r;
   reg  [2:0] mult_cdb_ctrl, mult_cdb_ctrl_r;

   wire [31:0]   int_out;
   wire [31:0]   div_out;
   wire [31:0]   mult_out;
   wire [31:0]   ld_buf_out;

   wire div_exec_ready;
   wire [5:0] ld_tagout, int_tagout, div_tagout, mult_tagout;
   //CDB reservation registers
   always @(*) begin : cdb_slots_proc
         cdb_slot [6] = ready_div;
         cdb_slot [5] = cdb_slot_r[6];
         cdb_slot [4] = cdb_slot_r[5];
         cdb_slot [3] = cdb_slot_r[4] | ready_mult;
         cdb_slot [2] = cdb_slot_r[3];
         cdb_slot [1] = cdb_slot_r[2];
         cdb_slot [0] = cdb_slot_r[1] | ready_int | ready_ld_buf;
   end

   always @(posedge clk) begin : cdb_slots_reg_assign
         cdb_slot_r [6] <= (reset) ? 0 :  cdb_slot [6] ;
         cdb_slot_r [5] <= (reset) ? 0 :  cdb_slot [5] ;
         cdb_slot_r [4] <= (reset) ? 0 :  cdb_slot [4] ;
         cdb_slot_r [3] <= (reset) ? 0 :  cdb_slot [3] ;
         cdb_slot_r [2] <= (reset) ? 0 :  cdb_slot [2] ;
         cdb_slot_r [1] <= (reset) ? 0 :  cdb_slot [1];
         cdb_slot_r [0] <= (reset) ? 0 :  cdb_slot [0];
   end

   always @(*) begin: issue_unit_logic
      issue_int   =  (~cdb_slot_r[1] & ready_int)    & (~ready_ld_buf |  INT_BEFORE_LOAD);
      issue_ld_buf = (~cdb_slot_r[1] & ready_ld_buf) & (~ready_int    | ~INT_BEFORE_LOAD);
      issue_div    = ~div_exec_ready & cdb_slot_r[6];
      issue_mult   = ~cdb_slot_r[4] & ready_mult;
   end

   always @(posedge clk) begin: div_reg_assign
         div_cdb_ctrl_r[5] <= (reset) ? 0 : div_cdb_ctrl[5];
         div_cdb_ctrl_r[4] <= (reset) ? 0 : div_cdb_ctrl[4];
         div_cdb_ctrl_r[3] <= (reset) ? 0 : div_cdb_ctrl[3];
         div_cdb_ctrl_r[2] <= (reset) ? 0 : div_cdb_ctrl[2];
         div_cdb_ctrl_r[1] <= (reset) ? 0 : div_cdb_ctrl[1];
         div_cdb_ctrl_r[0] <= (reset) ? 0 : div_cdb_ctrl[0];
   end

   always @(*) begin : div_delay_proc
         div_cdb_ctrl [5] = issue_div;
         div_cdb_ctrl [4] = div_cdb_ctrl_r [5];
         div_cdb_ctrl [3] = div_cdb_ctrl_r [4];
         div_cdb_ctrl [2] = div_cdb_ctrl_r [3];
         div_cdb_ctrl [1] = div_cdb_ctrl_r [2];
         div_cdb_ctrl [0] = div_cdb_ctrl_r [1];
   end

   always @(posedge clk) begin: mult_reg_assign
         mult_cdb_ctrl_r[2] <= (reset) ? 0 : mult_cdb_ctrl[2];
         mult_cdb_ctrl_r[1] <= (reset) ? 0 : mult_cdb_ctrl[1];
         mult_cdb_ctrl_r[0] <= (reset) ? 0 : mult_cdb_ctrl[0];
   end

   always @(*) begin : mult_delay_proc
         mult_cdb_ctrl [2] = issue_mult;
         mult_cdb_ctrl [1] = mult_cdb_ctrl_r [2];
         mult_cdb_ctrl [0] = mult_cdb_ctrl_r [1];
   end

   assign mux_cdb_ctrl = {issue_int, div_cdb_ctrl_r[0], mult_cdb_ctrl_r[0], issue_ld_buf};

   always @(*) begin : mux_cdb_out
      cdb_valid      = 1'b0;
      issue_div_done = 1'b0;
      case (mux_cdb_ctrl)
         4'b0001: begin
           cdb_out   = ld_buf_out; 
           cdb_tagout= ld_tagout;
         end
         4'b0010: begin
           cdb_out    = mult_out; 
           cdb_tagout = mult_tagout;
         end
         4'b0100: begin
            cdb_out    = div_out;
            cdb_tagout = div_tagout;
            issue_div_done = 1'b1;
         end
         4'b1000: begin
            cdb_out    = int_out;
            cdb_tagout = int_tagout;
         end
         default: begin
            cdb_out = cdb_out;
            cdb_tagout = cdb_tagout;
         end
      endcase
   end

   // Module instantiations
   // integer exec unit
   issueint issueint (
      .clk                       (clk           ),
      .reset                     (reset         ),
      .issueint_ready            (ready_int     ),
      .issueint_opcode           (opcode        ),
      .issueint_rsdata           (rsdata        ),
      .issueint_rtdata           (rtdata        ),
      .issueint_rdtag            (rdtag         ),

      .issueint_out              (int_out       ),
      .issueint_rdtag_out        (int_tagout    ),

      .issueint_carryout         (issue_carryout),
      .issueint_overflow         (issue_overflow),
      .issueint_alubranch        (cdb_branch),
      .issueint_alubranch_taken  (cdb_branch_taken)
   );
   // divider exec unitt
   divider_wrapper divider_wrapper(
         .clk                 (clk       ),
         .reset               (reset     ),
         .issuediv_enable     (ready_div ),
         .issuediv_rsdata     (rsdata    ),
         .issuediv_rtdata     (rtdata    ),
         .issuediv_rdtag      (rdtag     ),

         .issuediv_busy       (div_exec_ready),
         .issuediv_out        (div_out   ),
         .issuediv_rdtag_out  (div_tagout)
   );
   //multiplier exec unit
   multiplier_wrapper multiplier_wrapper(
      .clk                 (clk        ),
     // .reset               (reset      ),
      .issuemult_rsdata    (rsdata     ),
      .issuemult_rtdata    (rtdata     ),
      .issuemult_rdtag     (rdtag      ),

      .issuemult_out       (mult_out   ),
      .issuemult_rdtag_out (mult_tagout )
   );
   //load/store exec unit
   dcache dcache (
      .clk           (clk          ),
      .wen           (ld_st_opcode ), //opcode
      
      .addr          (rsdata       ),
      .wdata         (rtdata       ),
      .rdata         (ld_buf_out   ),
      .tag_in        (rdtag        ),
   //input  wire [ 5:0] tag_in,
      .ls_ready_in   (),
      .ls_done_in    (),
      .ls_done_out   (),
      .ls_ready_out  (),
      .tag_out       (ld_tagout)
   );

endmodule

`endif
