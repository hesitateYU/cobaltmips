
`ifndef DISPATCH_V
`define DISPATCH_V

`timescale 1ns/1ps

`include "globals.vh"

module dispatch (
   input             clk,
   input             reset,

   input      [31:0] ifq_pcout_plus4,
   input      [31:0] ifq_inst,
   input             ifq_empty,
   output reg        ifq_ren,
   output reg [31:0] ifq_branch_addr,
   output reg        ifq_branch_valid,

   input      [ 5:0] cdb_tag,
   input             cdb_valid,
   input      [31:0] cdb_data,
   input             cdb_branch,
   input             cdb_branch_taken,

   // Common interface to all queues, including their handshake signals.
   output reg [15:0] equeue_imm,
   output reg [ 5:0] equeue_rdtag,
   output reg [ 5:0] equeue_rstag,
   output reg [ 5:0] equeue_rttag,
   output reg [31:0] equeue_rsdata,
   output reg [31:0] equeue_rtdata,
   output reg        equeue_rsvalid,
   output reg        equeue_rtvalid,

   output reg        equeuels_opcode,
   output reg        equeuels_en,
   input             equeuels_ready,

   output reg [ 3:0] equeueint_opcode,
   output reg        equeueint_en,
   input             equeueint_ready,

   output reg        equeuemult_en,
   input             equeuemult_ready,

   output reg        equeuediv_en,
   input             equeuediv_ready,

   input      [ 4:0] debug_regfile_addr,
   output     [31:0] debug_regfile_data
);

   localparam S_DISPATCH    = 1'b0;
   localparam S_BRANCHSTALL = 1'b1;

   initial begin
      ifq_ren          = 1'b1;
      ifq_branch_valid = 1'b0;
      ifq_branch_addr  = 31'h0;
      #5;
      #110; ifq_branch_valid = 1'b1; ifq_branch_addr = 32'h5;
      #10   ifq_branch_valid = 1'b0;
      #140  ifq_ren = 1'b0;
      #40   ifq_ren = 1'b1;
   end

   // Signal declarations for Regfile.
   reg  [ 4:0] dispatch_regfile_rsaddr;
   reg  [ 4:0] dispatch_regfile_rtaddr;
   wire [31:0] regfile_dispatch_rsdata;
   wire [31:0] regfile_dispatch_rtdata;

   // Signal declarations for Register Status Table.
   reg  [ 5:0] dispatch_rst_tag;
   reg         dispatch_rst_valid;
   reg  [ 4:0] dispatch_rst_addr;
   reg         dispatch_rst_wen;
   wire [31:0] rst_regfile_wen_onehot;
   wire [ 5:0] rst_dispatch_rstag;
   wire [ 5:0] rst_dispatch_rttag;
   wire        rst_dispatch_rsvalid;
   wire        rst_dispatch_rtvalid;
   reg  [ 4:0] dispatch_rst_rtaddr;
   reg  [ 4:0] dispatch_rst_rsaddr;

   // Signal declarations for Tag FIFO.
   wire [ 5:0] tagfifo_dispatch_tag;
   reg         dispatch_tagfifo_ren;
   wire        tagfifo_dispatch_full;
   wire        tagfifo_dispatch_empty;

   // Internal registers used to flop decoded instruction to execution queues
   // but they are not ready to receive.
   reg  [15:0] equeue_imm_r;
   reg  [ 5:0] equeue_rdtag_r, equeue_rstag_r, equeue_rttag_r;
   reg  [31:0] equeue_rsdata_r, equeue_rtdata_r;
   reg         equeue_rsvalid_r, equeue_rtvalid_r;
   reg         equeuels_opcode_r;
   reg  [ 3:0] equeueint_opcode_r;
   always @(posedge clk) begin : dispatch_equeue_reg
      equeue_imm_r       <= (reset) ? 'h0 : equeue_imm;
      equeue_rdtag_r     <= (reset) ? 'h0 : equeue_rdtag;
      equeue_rstag_r     <= (reset) ? 'h0 : equeue_rstag;
      equeue_rttag_r     <= (reset) ? 'h0 : equeue_rttag;
      equeue_rsdata_r    <= (reset) ? 'h0 : equeue_rsdata;
      equeue_rtdata_r    <= (reset) ? 'h0 : equeue_rtdata;
      equeue_rsvalid_r   <= (reset) ? 'h0 : equeue_rsvalid;
      equeue_rtvalid_r   <= (reset) ? 'h0 : equeue_rtvalid;
      equeuels_opcode_r  <= (reset) ? 'h0 : equeuels_opcode;
      equeueint_opcode_r <= (reset) ? 'h0 : equeueint_opcode;
   end

   // Instruction given to execution queues could be assembled in any of its
   // formats, identified by a one-hot vector equeue_inst_type:
   //            |   6  |  5  |  5  |  5  |  5  |   6  |
   //            +------+-----+-----+-----+-----+------+
   //   Register |Opcode| Rs  | Rt  | Rd  |Shamt| Func |
   //            +------+-----+-----+-----+-----+------+
   //  Immediate |Opcode| Rs  | Rt  |  Immediate (16)  |
   //            +------+-----+-----+------------------+
   //       Jump |Opcode|                Address (26)  |
   //            +------+-----+-----+------------------+
   reg [ 5:0] inst_opcode, inst_func;
   reg [ 4:0] inst_rdaddr, inst_rsaddr, inst_rtaddr, inst_shamt;
   reg [15:0] inst_imm;
   reg [31:0] inst_imm_sext, inst_imm_sext_r;
   reg [25:0] inst_addr;
   reg [31:0] inst_addr_sext, inst_addr_jump, inst_addr_branch;
   always @(*) begin : dispatch_ifq_inst_split_proc
      inst_opcode = ifq_inst[31:26];
      inst_rsaddr = ifq_inst[25:21];
      inst_rtaddr = ifq_inst[20:16];
      inst_rdaddr = ifq_inst[15:11];
      inst_shamt  = ifq_inst[10: 6];
      inst_func   = ifq_inst[ 5: 0];
      inst_imm    = ifq_inst[15: 0];
      inst_addr   = ifq_inst[25: 0];

      // Calculate branch address and jump address using the sign-extended address
      // provided in the instruction. Embedded jump address is 26 bits, unlike
      // embedded branch address which is only 16 bits.
      inst_imm_sext    = { {14 {inst_imm [15]} }, inst_imm << 2};
      inst_addr_sext   = { { 6 {inst_addr[25]} }, inst_addr};
      inst_addr_branch = ifq_pcout_plus4 + inst_imm_sext_r;
      inst_addr_jump   = ifq_pcout_plus4 + inst_addr_sext;
   end

   always @(posedge clk) begin : dispatch_inst_imm_setx_reg
      inst_imm_sext_r <= (reset) ? 'h0 : inst_imm_sext;
   end

   always @(*) begin : dispatch_equeue_oreg_proc
      dispatch_regfile_rsaddr = inst_rsaddr;
      dispatch_regfile_rtaddr = inst_rtaddr;
      dispatch_rst_rsaddr     = inst_rsaddr;
      dispatch_rst_rtaddr     = inst_rtaddr;

      equeue_imm     = inst_imm;
      equeue_rdtag   = tagfifo_dispatch_tag;
      equeue_rstag   = rst_dispatch_rstag;
      equeue_rttag   = rst_dispatch_rttag;
      equeue_rsvalid = rst_dispatch_rsvalid;
      equeue_rtvalid = rst_dispatch_rtvalid;
      equeue_rsdata  = (cdb_valid & cdb_tag == rst_dispatch_rstag) ? cdb_data : regfile_dispatch_rsdata;
      equeue_rtdata  = (cdb_valid & cdb_tag == rst_dispatch_rttag) ? cdb_data : regfile_dispatch_rtdata;
   end

   reg state_r, next_state;
   always @(*) begin : dispatch_branch_fsm_next_state
      reg curr_equeue_ready, curr_equeue_en;

      // Set defaults.
      ifq_ren          = 1'b0;
      ifq_branch_valid = 1'b0;
      ifq_branch_addr  = inst_addr_branch;

      equeueint_opcode = 4'h0;
      equeuels_opcode  = 1'b0;
      equeueint_en  = 3'h0;
      equeuels_en   = 1'b0;
      equeuemult_en = 1'b0;
      equeuediv_en  = 1'b0;

      case (state_r)
         S_DISPATCH : begin
            next_state = S_DISPATCH;
            case (inst_opcode)
               `OPCODE_RTYPE : begin
                  curr_equeue_ready    = equeueint_ready;
                  curr_equeue_en       = equeueint_en;
                  curr_equeue_en       = 1'b1;
                  //for every instruction with rd we assign a TAG
                  dispatch_rst_wen     = (inst_rdaddr);
                  //dispatch unit does not read a TAG if instruction doesn't have destination register
                  //or it can't be dispatched;
                  dispatch_tagfifo_ren = (inst_rdaddr);

               end
               // Halt IFQ until branch result is published by CDB.
               `OPCODE_BTYPE : begin
                  curr_equeue_ready = equeueint_ready;
                  curr_equeue_en    = equeueint_en;
                  ifq_branch_addr   = inst_addr_branch;

                  // Stall when branches are decoded and integer queue can't process them.
                  next_state  = (equeueint_ready) ? S_BRANCHSTALL : S_DISPATCH;
               end
               `OPCODE_JTYPE : begin
                  curr_equeue_ready = equeueint_ready;
                  curr_equeue_en    = equeueint_en;
                  ifq_branch_valid  = 1'b1;
                  ifq_branch_addr   = inst_addr_jump;
               end
               default : begin

               end
            endcase
            curr_equeue_en = ~ifq_empty & ~tagfifo_dispatch_empty & curr_equeue_ready;
            ifq_ren        = curr_equeue_ready;
         end
         S_BRANCHSTALL : begin
            curr_equeue_en = cdb_branch & cdb_branch_taken;
            ifq_ren        = 1'b0;
            // Assume all branches are taken
            next_state = (cdb_branch) ? S_DISPATCH : S_BRANCHSTALL;
         end
      endcase
   end

   always @(posedge clk) begin : dispatch_branch_fsm_reg
      state_r <= (reset) ? S_DISPATCH : next_state;
   end

   regfile regfile (
      .clk             (clk                    ),
      .reset           (reset                  ),

      .cdb_wdata       (cdb_data               ),
      .rst_wen_onehot  (rst_regfile_wen_onehot ),

      .dispatch_rsaddr (dispatch_regfile_rsaddr),
      .dispatch_rtaddr (dispatch_regfile_rtaddr),
      .debug_addr      (debug_regfile_addr     ),
      .dispatch_rsdata (regfile_dispatch_rsdata),
      .dispatch_rtdata (regfile_dispatch_rtdata),
      .debug_data      (debug_regfile_data     )
   );

   rst rst(
      .clk                (clk                   ),
      .reset              (reset                 ),

      .dispatch_tag       (dispatch_rst_tag      ),
      .dispatch_valid     (dispatch_rst_valid    ),
      .dispatch_addr      (dispatch_rst_addr     ),
      .dispatch_wen       (dispatch_rst_wen      ),

      .cdb_tag            (cdb_tag               ),
      .cdb_valid          (cdb_valid             ),

      .regfile_wen_onehot (rst_regfile_wen_onehot),

      .dispatch_rstag     (rst_dispatch_rstag    ),
      .dispatch_rttag     (rst_dispatch_rttag    ),
      .dispatch_rtvalid   (rst_dispatch_rtvalid  ),
      .dispatch_rsvalid   (rst_dispatch_rsvalid  ),
      .dispatch_rsaddr    (dispatch_rst_rsaddr   ),
      .dispatch_rtaddr    (dispatch_rst_rtaddr   )
   );

   tagfifo tagfifo (
      .clk            (clk                   ),
      .reset          (reset                 ),
      .dispatch_tag   (tagfifo_dispatch_tag  ),
      .dispatch_ren   (dispatch_tagfifo_ren  ),
      .dispatch_full  (tagfifo_dispatch_full ),
      .dispatch_empty (tagfifo_dispatch_empty),
      .cdb_tag        (cdb_tag               ),
      .cdb_valid      (cdb_valid             )
   );

endmodule

`endif

