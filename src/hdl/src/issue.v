
`ifndef ISSUE_V
`define ISSUE_V

`timescale 1ns/1ps

`include "globals.vh"

module issue (
      input                         clk,
      input                         reset,

      input  [ 5:0]                 issueint_opcode,
      input  [31:0]                 issueint_rsdata,
      input  [31:0]                 issueint_rtdata,
      input  [ 5:0]                 issueint_rdtag,

      input                         issuels_opcode,
      input  [31:0]                 issuels_data,
      input  [31:0]                 issuels_addr,
      input  [ 5:0]                 issuels_rttag,

      input  [31:0]                 issuediv_rsdata,
      input  [31:0]                 issuediv_rtdata,
      input  [ 5:0]                 issuediv_rdtag,

      input  [31:0]                 issuemult_rsdata,
      input  [31:0]                 issuemult_rtdata,
      input  [ 5:0]                 issuemult_rdtag,

      input                         issueint_ready,
      input                         issuemult_ready,
      input                         issuediv_ready,
      input                         issuels_ready,

      output                        issueint_carryout,
      output                        issueint_overflow,

      output reg                    issueint_equeueint_done,
      output reg                    issuediv_equeuediv_done,
      output reg                    issuemult_equeuemult_done,
      output reg                    issuels_equeuels_done,

      output reg [31:0]             cdb_data,
      output reg [ 5:0]             cdb_tag,
      output reg                    cdb_valid,
      output reg                    cdb_branch,
      output reg                    cdb_branch_taken

);
   localparam integer SEL_LS   = 4'b0001;
   localparam integer SEL_MULT = 4'b0010;
   localparam integer SEL_DIV  = 4'b0100;
   localparam integer SEL_INT  = 4'b1000;

   // Output register for CDB.
   reg  [31:0] cdb_data_oreg,         cdb_data_oreg_r;
   reg  [ 5:0] cdb_tag_oreg,          cdb_tag_oreg_r;
   reg         cdb_valid_oreg,        cdb_valid_oreg_r;
   reg         cdb_branch_oreg,       cdb_branch_oreg_r;
   reg         cdb_branch_taken_oreg, cdb_branch_taken_oreg_r;

   reg  [ 3:0] cdb_mux_sel;
   reg  [ 6:0] cdb_slot, cdb_slot_r;
   reg         int_before_ls, int_before_ls_r;

   // Division takes 6 clock cycles, not pipelined, and multiplication takes
   // only 3 cycles, pipelined.
   reg  [ 5:0] div_cdb_ctrl,  div_cdb_ctrl_r;
   reg  [ 2:0] mult_cdb_ctrl, mult_cdb_ctrl_r;

   wire [31:0] issuemult_out,  issuediv_out,  issueint_out,  issuels_out;
   reg         can_issue_mult, can_issue_div, can_issue_int, can_issue_ls;

   wire        div_exec_ready, issueint_alubranch, issueint_alubranch_taken ;
   wire [ 5:0] issuels_tagout, issueint_tagout, issuediv_tagout, issuemult_tagout;

   // Temp register used for behavioral multiplication instead of its execution
   // unit. Since multiplication takes 3 cycles and it is pipelined, we need to
   // store all results.
   reg  [31:0] issuemult_out_temp   [2:0];
   reg  [31:0] issuemult_out_temp_r [2:0];
   reg  [31:0] issuemult_tag_temp   [2:0];
   reg  [31:0] issuemult_tag_temp_r [2:0];

   // If a load/store contend with an integer operation, give priority to the
   // integer operation. The next time both types contend, then give priority
   // to load/store operation. That is, priority toggles each time both time of
   // operations contend.
   always @(*) begin: issue_int_before_load_proc
      int_before_ls = int_before_ls_r ^ (issueint_ready & issuels_ready);
   end

   // CDB reservation registers
   always @(*) begin : issue_cdb_reservation_proc
      can_issue_div  = issuediv_ready  & div_exec_ready;
      can_issue_mult =  ~cdb_slot_r[4] & issuemult_ready;
      can_issue_int  = (~cdb_slot_r[1] & issueint_ready) & (~issuels_ready  | ~int_before_ls_r);
      can_issue_ls   = (~cdb_slot_r[1] & issuels_ready ) & (~issueint_ready |  int_before_ls_r);

      cdb_slot[6] = can_issue_div;
      cdb_slot[5] = cdb_slot_r[6];
      cdb_slot[4] = cdb_slot_r[5];
      cdb_slot[3] = cdb_slot_r[4] | can_issue_mult;
      cdb_slot[2] = cdb_slot_r[3];
      cdb_slot[1] = cdb_slot_r[2];
      cdb_slot[0] = cdb_slot_r[1] | can_issue_int | can_issue_ls;
   end

   //
   // TODO: Replace behavioral multiplication unit by its RTL module.
   //
   always @(*) begin : issue_mult_out_proc
      issuemult_out_temp[2] = (can_issue_mult) ? issuemult_rsdata * issuemult_rtdata : 'h0;
      issuemult_out_temp[1] = issuemult_out_temp_r[2];
      issuemult_out_temp[0] = issuemult_out_temp_r[1];

      issuemult_tag_temp[2] = (can_issue_mult) ? issuemult_rdtag : 'h0;
      issuemult_tag_temp[1] = issuemult_tag_temp_r[2];
      issuemult_tag_temp[0] = issuemult_tag_temp_r[1];
   end

   // Delay lines for execution units that take longer than 1 clock cycle.
   // Multiplication takes 3 cycles and division takes 6.
   always @(*) begin : issue_execunit_sel_proc
      div_cdb_ctrl[5] = can_issue_div;
      div_cdb_ctrl[4] = div_cdb_ctrl_r[5];
      div_cdb_ctrl[3] = div_cdb_ctrl_r[4];
      div_cdb_ctrl[2] = div_cdb_ctrl_r[3];
      div_cdb_ctrl[1] = div_cdb_ctrl_r[2];
      div_cdb_ctrl[0] = div_cdb_ctrl_r[1];

      mult_cdb_ctrl[2] = can_issue_mult;
      mult_cdb_ctrl[1] = mult_cdb_ctrl_r[2];
      mult_cdb_ctrl[0] = mult_cdb_ctrl_r[1];
   end

   always @(*) begin : issue_oreg_proc
      issuemult_equeuemult_done = can_issue_mult;
      issuediv_equeuediv_done   = can_issue_div;
      issueint_equeueint_done   = can_issue_int;
      issuels_equeuels_done     = can_issue_ls;

      cdb_valid        = cdb_valid_oreg_r;
      cdb_data         = cdb_data_oreg_r;
      cdb_tag          = cdb_tag_oreg_r;
      cdb_branch       = cdb_branch_oreg_r;
      cdb_branch_taken = cdb_branch_taken_oreg_r;
   end

   always @(*) begin : issue_cdb_mux_sel_proc
      cdb_valid_oreg        = 'h0;
      cdb_data_oreg         = 'h0;
      cdb_tag_oreg          = 'h0;
      cdb_branch_oreg       = 'h0;
      cdb_branch_taken_oreg = 'h0;

      cdb_mux_sel = {can_issue_int, div_cdb_ctrl_r[0], mult_cdb_ctrl_r[0], can_issue_ls};
      case (cdb_mux_sel)
         SEL_LS : begin
           cdb_valid_oreg  = 1'b1;
           cdb_data_oreg   = (`ISSUELS_FUNC_SW == issuels_opcode) ? 'h0 : issuels_out;
           cdb_tag_oreg    = (`ISSUELS_FUNC_SW == issuels_opcode) ? 'h0 : issuels_tagout;
         end
         SEL_MULT : begin
           cdb_valid_oreg = 1'b1;
           cdb_tag_oreg   = issuemult_tag_temp_r[0];
           cdb_data_oreg  = issuemult_out_temp_r[0];
         end
         //only div out

         SEL_DIV : begin
            cdb_valid_oreg = 1'b1;
            cdb_tag_oreg   = issuediv_tagout;
            cdb_data_oreg  = issuediv_out;
         end
         //only int out
         SEL_INT : begin
            //
            // TODO: Valid and branch can't be set at the same time. When
            //       branching, set valid to 0.
            //cdb_valid_oreg        = 1'b1;
            cdb_valid_oreg        = ~issueint_alubranch;
            cdb_data_oreg         = issueint_out;
            cdb_tag_oreg          = issueint_tagout;
            cdb_branch_oreg       = issueint_alubranch;
            cdb_branch_taken_oreg = issueint_alubranch_taken;
         end
         default : begin
            cdb_valid_oreg        = 'h0;
            cdb_data_oreg         = 'h0;
            cdb_tag_oreg          = 'h0;
            cdb_branch_oreg       = 'h0;
            cdb_branch_taken_oreg = 'h0;
         end
      endcase
   end

   // Pipelined multiplication registers.
   always @(posedge clk) begin : issuemult_out_temp_reg
      issuemult_out_temp_r[2] <= (reset) ? 'h0 : issuemult_out_temp[2];
      issuemult_out_temp_r[1] <= (reset) ? 'h0 : issuemult_out_temp[1];
      issuemult_out_temp_r[0] <= (reset) ? 'h0 : issuemult_out_temp[0];

      issuemult_tag_temp_r[2] <= (reset) ? 'h0 : issuemult_tag_temp[2];
      issuemult_tag_temp_r[1] <= (reset) ? 'h0 : issuemult_tag_temp[1];
      issuemult_tag_temp_r[0] <= (reset) ? 'h0 : issuemult_tag_temp[0];
   end

   always @(posedge clk) begin : issue_int_before_ls_reg_assign
      int_before_ls_r <= (reset) ? 1'b0 : int_before_ls;
   end

   always @(posedge clk) begin : issue_cdb_data_reg_assign
      cdb_data_oreg_r         <= (reset) ? 'h0 : cdb_data_oreg;
      cdb_valid_oreg_r        <= (reset) ? 'h0 : cdb_valid_oreg;
      cdb_data_oreg_r         <= (reset) ? 'h0 : cdb_data_oreg;
      cdb_tag_oreg_r          <= (reset) ? 'h0 : cdb_tag_oreg;
      cdb_branch_oreg_r       <= (reset) ? 'h0 : cdb_branch_oreg;
      cdb_branch_taken_oreg_r <= (reset) ? 'h0 : cdb_branch_taken_oreg;
   end

   always @(posedge clk) begin : cdb_slots_reg_assign
      cdb_slot_r [6] <= (reset) ? 'h0 :  cdb_slot [6] ;
      cdb_slot_r [5] <= (reset) ? 'h0 :  cdb_slot [5] ;
      cdb_slot_r [4] <= (reset) ? 'h0 :  cdb_slot [4] ;
      cdb_slot_r [3] <= (reset) ? 'h0 :  cdb_slot [3] ;
      cdb_slot_r [2] <= (reset) ? 'h0 :  cdb_slot [2] ;
      cdb_slot_r [1] <= (reset) ? 'h0 :  cdb_slot [1];
      cdb_slot_r [0] <= (reset) ? 'h0 :  cdb_slot [0];
   end

   always @(posedge clk) begin : issue_div_reg_assign
      div_cdb_ctrl_r[5] <= (reset) ? 'h0 : div_cdb_ctrl[5];
      div_cdb_ctrl_r[4] <= (reset) ? 'h0 : div_cdb_ctrl[4];
      div_cdb_ctrl_r[3] <= (reset) ? 'h0 : div_cdb_ctrl[3];
      div_cdb_ctrl_r[2] <= (reset) ? 'h0 : div_cdb_ctrl[2];
      div_cdb_ctrl_r[1] <= (reset) ? 'h0 : div_cdb_ctrl[1];
      div_cdb_ctrl_r[0] <= (reset) ? 'h0 : div_cdb_ctrl[0];
   end

   always @(posedge clk) begin : issue_mult_reg_assign
      mult_cdb_ctrl_r[2] <= (reset) ? 'h0 : mult_cdb_ctrl[2];
      mult_cdb_ctrl_r[1] <= (reset) ? 'h0 : mult_cdb_ctrl[1];
      mult_cdb_ctrl_r[0] <= (reset) ? 'h0 : mult_cdb_ctrl[0];
   end

   issueint issueint (
      .clk                       (clk                     ),
      .reset                     (reset                   ),
      .issueint_ready            (issueint_ready          ),
      .issueint_opcode           (issueint_opcode         ),
      .issueint_rsdata           (issueint_rsdata         ),
      .issueint_rtdata           (issueint_rtdata         ),
      .issueint_rdtag            (issueint_rdtag          ),

      .issueint_out              (issueint_out            ),
      .issueint_rdtag_out        (issueint_tagout         ),

      .issueint_carryout         (issueint_carryout       ),
      .issueint_overflow         (issueint_overflow       ),
      .issueint_alubranch        (issueint_alubranch      ),
      .issueint_alubranch_taken  (issueint_alubranch_taken)
   );

   divider_wrapper divider_wrapper(
      .clk                 (clk              ),
      .reset               (reset            ),
      .issuediv_enable     (can_issue_div    ),
      .issuediv_rsdata     (issuediv_rsdata  ),
      .issuediv_rtdata     (issuediv_rtdata  ),
      .issuediv_rdtag      (issuediv_rdtag   ),

      .issuediv_busy       (div_exec_ready   ),
      .issuediv_out        (issuediv_out),
      .issuediv_rdtag_out  (issuediv_tagout  )
   );

   multiplier_wrapper multiplier_wrapper(
      .clk                 (clk              ),
      .issuemult_rsdata    (issuemult_rsdata ),
      .issuemult_rtdata    (issuemult_rtdata ),
      .issuemult_rdtag     (issuemult_rdtag  ),

      .issuemult_out       (issuemult_out    ),
      .issuemult_rdtag_out (issuemult_tagout )
   );

   //
   // Opcode is translated as write enable.
   //
   dcache dcache (
      .clk           (clk             ),
      .wen           (issuels_opcode  ),

      .addr          (issuels_addr    ),
      .wdata         (issuels_data    ),
      .rdata         (issuels_out     ),
      .tag_in        (issuels_rttag   ),
      .tag_out       (issuels_tagout  )
   );

endmodule

`endif


