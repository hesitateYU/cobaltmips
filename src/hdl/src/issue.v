
`ifndef ISSUE_V
`define ISSUE_V

`timescale 1ns/1ps

module issue (
      input                         clk,
      input                         reset,

      input  [ 5:0]                 issueint_opcode,
      input  [31:0]                 issueint_rsdata,
      input  [31:0]                 issueint_rtdata,
      input  [ 5:0]                 issueint_rdtag,

      input                         issuels_opcode,
      input  [31:0]                 issuels_rsdata,
      input  [31:0]                 issuels_rtdata,
      input  [ 5:0]                 issuels_rdtag,

      input  [31:0]                 issuediv_rsdata,
      input  [31:0]                 issuediv_rtdata,
      input  [ 5:0]                 issuediv_rdtag,

      input  [31:0]                 issuemult_rsdata,
      input  [31:0]                 issuemult_rtdata,
      input  [31:0]                 issuemult_rdtag,

      input                         issueint_ready,
      input                         issuemult_ready,
      input                         issuediv_ready,
      input                         issuels_ready,

      output reg                    issueint_carryout,
      output reg                    issueint_overflow,

      output reg                    issueint_equeueint_done,
      output reg                    issuediv_equeuediv_done,
      output reg                    issuemult_equeuemult_done,
      output reg                    issuels_equeuels_done,

      output reg [31:0]             cdb_out,
      output reg [ 5:0]             cdb_tagout,
      output reg                    cdb_valid,
      output reg                    cdb_branch,
      output reg                    cdb_branch_taken

);
   reg   issue_int;
   reg   issue_mult;
   reg   issue_div;
   reg   issue_ld_buf;

   reg  [6:0] cdb_slot, cdb_slot_r;
   wire [3:0] mux_cdb_ctrl;
   reg        int_before_ls;
   reg  [5:0] div_cdb_ctrl, div_cdb_ctrl_r;
   reg  [2:0] mult_cdb_ctrl, mult_cdb_ctrl_r;

   wire [31:0]   issueint_out;
   wire [31:0]   issuediv_out;
   wire [31:0]   issuemult_out;
   wire [31:0]   issuels_out;

   wire div_exec_ready, issueint_alubranch, issueint_alubranch_taken ;
   wire [5:0] issuels_tagout, issueint_tagout, issuediv_tagout, issuemult_tagout;
   //CDB reservation registers
   always @(*) begin : cdb_slots_proc
         cdb_slot [6] = issuediv_ready;
         cdb_slot [5] = cdb_slot_r[6];
         cdb_slot [4] = cdb_slot_r[5];
         cdb_slot [3] = cdb_slot_r[4] | issuemult_ready;
         cdb_slot [2] = cdb_slot_r[3];
         cdb_slot [1] = cdb_slot_r[2];
         cdb_slot [0] = cdb_slot_r[1] | issueint_ready | issuels_ready;
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

   //
   // TODO: change the INT_BEFORE_LOAD parameter into a register. If a
   //       load/store contend with an integer operation, give priority
   //       to the integer operation. The next time both types contend,
   //       then give priority to load/store operation.
   //       That is, priority toggles each time both time of operations
   //       contend.
   //
   always @(*) begin: issue_unit_logic
      int_before_ls ^= (issueint_ready & issuels_ready);
      issue_int      = (~cdb_slot_r[1] & issueint_ready) & (~issuels_ready  | int_before_ls);
      issue_ld_buf   = (~cdb_slot_r[1] & issuels_ready ) & (~issueint_ready | ~int_before_ls);
      issue_div      = ~div_exec_ready & cdb_slot_r[6];
      issue_mult     = ~cdb_slot_r[4] & issuemult_ready;
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
      cdb_valid                = 1'b0;
      cdb_branch               = 1'b0;
      cdb_branch_taken         = 1'b0;
      issuediv_equeuediv_done  = 1'b0;

      case (mux_cdb_ctrl)
         4'b0001: begin
           cdb_out   = issuels_out;
           cdb_tagout= issuels_tagout;
           cdb_valid  = 1'b1;
         end
         4'b0010: begin
           //cdb_out    = issuemult_out; 
           cdb_out    = 32'h0; 
           cdb_tagout = issuemult_tagout;
           cdb_valid  = 1'b1;
         end
         4'b0100: begin
            cdb_out    = issuediv_out;
            cdb_tagout = issuediv_tagout;
            issuediv_equeuediv_done = 1'b1;
            cdb_valid  = 1'b1;
         end
         4'b1000: begin
            cdb_out    = issueint_out;
            cdb_tagout = issueint_tagout;
            cdb_valid  = 1'b1;
            cdb_branch = issueint_alubranch;
            cdb_branch_taken = issueint_alubranch_taken;
         end
         default: begin
            cdb_out = cdb_out;
            cdb_tagout = cdb_tagout;
         end
      endcase
   end

   always @(*) begin: int_mult_done
      issueint_equeueint_done   = issue_int;
      issuemult_equeuemult_done = (cdb_slot_r[1]==1);
      issuels_equeuels_done     = (cdb_slot_r[0]==1);
   end

   // Module instantiations
   // integer exec unit
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
   // divider exec unitt
   divider_wrapper divider_wrapper(
         .clk                 (clk              ),
         .reset               (reset            ),
         .issuediv_enable     (issuediv_ready   ),
         .issuediv_rsdata     (issuediv_rsdata  ),
         .issuediv_rtdata     (issuediv_rtdata  ),
         .issuediv_rdtag      (issuediv_rdtag   ),

         .issuediv_busy       (div_exec_ready   ),
         .issuediv_out        (issuediv_out     ),
         .issuediv_rdtag_out  (issuediv_tagout  )
   );
   //multiplier exec unit
   multiplier_wrapper multiplier_wrapper(
      .clk                 (clk              ),
     // .reset             (reset            ),
      .issuemult_rsdata    (issuemult_rsdata ),
      .issuemult_rtdata    (issuemult_rtdata ),
      .issuemult_rdtag     (issuemult_rdtag  ),

      .issuemult_out       (issuemult_out    ),
      .issuemult_rdtag_out (issuemult_tagout )
   );
   //load/store exec unit
   dcache dcache (
      .clk           (clk             ),
      .wen           (issuels_opcode  ), //opcode

      .addr          (issuels_rsdata  ),
      .wdata         (issuels_rtdata  ),
      .rdata         (issuels_out     ),
      .tag_in        (issuels_rdtag   ),
      .tag_out       (issuels_tagout  )
   );

endmodule

`endif


