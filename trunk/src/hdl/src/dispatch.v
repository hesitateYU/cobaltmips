
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

   output reg [ 5:0] equeueint_opcode,
   output reg        equeueint_en,
   input             equeueint_ready,

   output reg        equeuemult_en,
   input             equeuemult_ready,

   output reg        equeuediv_en,
   input             equeuediv_ready,

   input      [ 4:0] debug_regfile_addr,
   output     [31:0] debug_regfile_data
);

   localparam integer S_DISPATCH    = 1'b0;
   localparam integer S_BRANCHSTALL = 1'b1;
   reg state_r, next_state;

   // All queues are grouped in a packed array indexed by these parameters.
   localparam integer EQ_INT  = 2'h0;
   localparam integer EQ_LS   = 2'h1;
   localparam integer EQ_MULT = 2'h2;
   localparam integer EQ_DIV  = 2'h3;
   localparam integer EQ_NONE = 4'b0000;
   reg [1:0] curr_equeueidx;
   reg [3:0] equeue_ready, equeue_en;

   reg can_dispatch;
   reg do_req_tag;
   reg do_req_equeue;
   reg is_branch, is_jump;

   // Signal declarations for Register File.
   reg  [ 4:0] dispatch_regfile_rsaddr;
   reg  [ 4:0] dispatch_regfile_rtaddr;
   wire [31:0] regfile_dispatch_rsdata;
   wire [31:0] regfile_dispatch_rtdata;

   // Signal declarations for Register Status Table.
   reg  [ 5:0] dispatch_rst_tag;
   reg         dispatch_rst_valid;
   reg  [ 4:0] dispatch_rst_addr;
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

   //
   // BASIC INSTRUCTION FORMATS
   //               +------+-----+-----+-----+-----+------+
   //               |   6  |  5  |  5  |  5  |  5  |   6  |
   //               +------+-----+-----+-----+-----+------+
   //   Register  R |Opcode| Rs  | Rt  | Rd  |Shamt| Func |
   //               +------+-----+-----+-----+-----+------+
   //  Immediate  I |Opcode| Rs  | Rt  |  Immediate (16)  |
   //               +------+-----+-----+------------------+
   //       Jump  J |Opcode|                Address (26)  |
   //               +------+-----+-----+------------------+
   //
   reg [ 5:0] inst_opcode, inst_func;
   reg [ 4:0] inst_rdaddr, inst_rsaddr, inst_rtaddr, inst_shamt;
   reg [15:0] inst_imm;
   reg [25:0] inst_addr;
   reg [31:0] inst_imm_signext, inst_imm_zeroext;
   reg [31:0] inst_addr_jump, inst_addr_branch, inst_addr_branch_r;

   always @(*) begin : dispatch_inst_split_proc
      inst_opcode = ifq_inst[31:26];
      inst_rsaddr = ifq_inst[25:21];
      inst_rtaddr = ifq_inst[20:16];
      inst_rdaddr = ifq_inst[15:11];
      inst_shamt  = ifq_inst[10: 6];
      inst_func   = ifq_inst[ 5: 0];
      inst_imm    = ifq_inst[15: 0];
      inst_addr   = ifq_inst[25: 0];
   end

   always @(*) begin : dispatch_internal_assign_proc
      // Get contents and status of RS and RT registers from REGFILE and RST
      // which will be used later as parameters to EQ_*.
      dispatch_regfile_rsaddr = inst_rsaddr;
      dispatch_regfile_rtaddr = inst_rtaddr;
      dispatch_rst_rsaddr     = inst_rsaddr;
      dispatch_rst_rtaddr     = inst_rtaddr;

      // Calculate branch address and jump address using the sign-extended
      // address provided in the instruction. Embedded jump address is 26 bits,
      // unlike embedded branch address which is only 16 bits.
      inst_addr_branch = { {14{inst_imm[15]}}, inst_imm, 2'b00} + ifq_pcout_plus4;
      inst_addr_jump   = { ifq_pcout_plus4[31:28], inst_addr, 2'b00};

      // Sign extension used in arithmetic operations and Zero extension used
      // logic operations.
      inst_imm_zeroext = { {16{        1'b0}}, inst_imm };
      inst_imm_signext = { {16{inst_imm[15]}}, inst_imm };

      equeue_imm     = inst_imm;
      equeue_rdtag   = tagfifo_dispatch_tag;
      equeue_rstag   = rst_dispatch_rstag;
      equeue_rttag   = rst_dispatch_rttag;
      // If a value is published by CDB, then DATA fields for RS and RT are
      // solved and ready to be used by execution queues, invalidate the
      // VALID fields so that execution queues listen to CDB updates.
      // Values in RST, REGFILE and TAGFIFO will automatically be updated
      // inside those modules every time CDB publishes anything.
      equeue_rsvalid = (rst_dispatch_rstag == cdb_tag && cdb_valid) ? cdb_valid : ~rst_dispatch_rsvalid;
      // Loads don't require RT register. It is used as destination.
      equeue_rtvalid = (`OPCODE_LW == inst_opcode) ? 1'b1
                     : ((rst_dispatch_rttag == cdb_tag && cdb_valid) ? cdb_valid : ~rst_dispatch_rtvalid);
      equeue_rsdata  = (rst_dispatch_rstag == cdb_tag && cdb_valid && rst_dispatch_rsvalid) ? cdb_data : regfile_dispatch_rsdata;
      equeue_rtdata  = (rst_dispatch_rttag == cdb_tag && cdb_valid && rst_dispatch_rtvalid) ? cdb_data : regfile_dispatch_rtdata;

      // After decoding, request a tag to TAGFIFO only if it is needed.
      dispatch_tagfifo_ren = do_req_tag & ~tagfifo_dispatch_empty & ~ifq_empty;
      dispatch_rst_valid   = do_req_tag & ~tagfifo_dispatch_empty & ~ifq_empty;
      dispatch_rst_tag     = tagfifo_dispatch_tag;
      dispatch_rst_addr    = inst_rdaddr;
   end

   always @(*) begin : dispatch_curr_equeue_proc
      equeue_ready[EQ_INT ] = equeueint_ready;
      equeue_ready[EQ_LS  ] = equeuels_ready;
      equeue_ready[EQ_MULT] = equeuemult_ready;
      equeue_ready[EQ_DIV ] = equeuediv_ready;

      equeueint_en  = equeue_en[EQ_INT ];
      equeuels_en   = equeue_en[EQ_LS  ];
      equeuemult_en = equeue_en[EQ_MULT];
      equeuediv_en  = equeue_en[EQ_DIV ];
   end

   always @(*) begin : dispatch_fsm_next_state
      equeue_en = EQ_NONE;
      case (state_r)
         S_DISPATCH : begin
            can_dispatch = (do_req_equeue & equeue_ready[curr_equeueidx])
                         & (is_branch | (do_req_tag & ~tagfifo_dispatch_empty))
                         & (~ifq_empty);
            equeue_en[curr_equeueidx] = can_dispatch;
            ifq_ren = can_dispatch;
            next_state = (~can_dispatch) ? S_DISPATCH : ((is_branch) ? S_BRANCHSTALL : S_DISPATCH);
            ifq_branch_valid = is_jump;
            ifq_branch_addr  = (is_jump) ? inst_addr_jump : 'h0;
         end
         S_BRANCHSTALL : begin
            can_dispatch = (do_req_equeue & equeue_ready[curr_equeueidx])
                         & (is_branch | (do_req_tag & ~tagfifo_dispatch_empty))
                         & (~ifq_empty)
                         & (cdb_branch & ~cdb_branch_taken);
            equeue_en[curr_equeueidx] = can_dispatch;
            ifq_ren = can_dispatch;
            ifq_branch_valid = cdb_branch & cdb_branch_taken;
            ifq_branch_addr  = (cdb_branch_taken) ? inst_addr_branch_r : 'h0;
            next_state = (cdb_branch) ? S_DISPATCH : S_BRANCHSTALL;
         end
      endcase
   end

   always @(*) begin : dispatch_decode_proc
      // Assumptions:
      //  + Instructions must be dispatched to it's execution unit. Default is
      //    integer execution queue.
      //  + Every instruction does not requires a TAG as destination register.
      //  + It is not a branch instruction nor a jump.
      curr_equeueidx = EQ_INT;
      do_req_equeue  = 1'b0;
      do_req_tag     = 1'b0;
      is_branch      = 1'b0;
      is_jump        = 1'b0;

      equeueint_opcode = 'h0;
      equeuels_opcode  = 'h0;

      case (inst_opcode)
         `OPCODE_RTYPE : begin
            case (inst_func)
               `FUNCT_MULTU, `FUNCT_MULT : begin
                  curr_equeueidx = EQ_MULT;
                  do_req_equeue  = 1'b1;
                  do_req_tag     = 1'b1;
               end
               `FUNCT_DIVU, `FUNCT_DIV : begin
                  curr_equeueidx = EQ_DIV;
                  do_req_equeue  = 1'b1;
                  do_req_tag     = 1'b1;
               end
               default : begin
                  equeueint_opcode = inst_func;
                  do_req_equeue    = 1'b1;
                  do_req_tag       = 1'b1;
               end
            endcase
         end
         `OPCODE_BEQ : begin
            equeueint_opcode = inst_opcode;
            do_req_equeue    = 1'b1;
            is_branch        = 1'b1;
         end
         `OPCODE_BNE : begin
            equeueint_opcode = inst_opcode;
            do_req_equeue    = 1'b1;
            is_branch        = 1'b1;
         end
         `OPCODE_J : begin
            is_jump = 1'b1;
         end
         `OPCODE_LW : begin
            equeuels_opcode = `ISSUELS_FUNC_LW;
            curr_equeueidx  = EQ_LS;
            do_req_equeue   = 1'b1;
            do_req_tag      = 1'b1;
         end
         `OPCODE_SW : begin
            equeuels_opcode = `ISSUELS_FUNC_SW;
            curr_equeueidx  = EQ_LS;
            do_req_equeue   = 1'b1;
         end
         default : begin
         end
      endcase
   end

   always @(posedge clk) begin : dispatch_fsm_reg
      state_r <= (reset) ? S_DISPATCH : next_state;
   end

   // This is the only register required. When doing a branch we decode the
   // very next instruction and then stall the entire pipeline until branch is
   // solved, in the meantime, we keep the branch address.
   // If branch was taken then dispatch the instruction (that came after the
   // branch and has already been decoded), otherwise, discard it.
   always @(posedge clk) begin : dispatch_inst_branch_addr_reg
      inst_addr_branch_r <= (reset) ? 'h0 : inst_addr_branch;
   end

   regfile #(
      .W_ADDR (  5 ),
      .W_DATA ( 32 )
   ) regfile (
      .clk             ( clk                     ),
      .reset           ( reset                   ),
      .cdb_wdata       ( cdb_data                ),
      .rst_wen_onehot  ( rst_regfile_wen_onehot  ),
      .dispatch_rsaddr ( dispatch_regfile_rsaddr ),
      .dispatch_rtaddr ( dispatch_regfile_rtaddr ),
      .debug_addr      ( debug_regfile_addr      ),
      .dispatch_rsdata ( regfile_dispatch_rsdata ),
      .dispatch_rtdata ( regfile_dispatch_rtdata ),
      .debug_data      ( debug_regfile_data      )
   );

   rst #(
      .W_ADDR ( 5 ),
      .W_TAG  ( 6 )
   ) rst (
      .clk                ( clk                    ),
      .reset              ( reset                  ),
      .dispatch_rsaddr    ( dispatch_rst_rsaddr    ),
      .dispatch_rtaddr    ( dispatch_rst_rtaddr    ),
      .dispatch_rstag     ( rst_dispatch_rstag     ),
      .dispatch_rttag     ( rst_dispatch_rttag     ),
      .dispatch_rsvalid   ( rst_dispatch_rsvalid   ),
      .dispatch_rtvalid   ( rst_dispatch_rtvalid   ),
      .dispatch_addr      ( dispatch_rst_addr      ),
      .dispatch_tag       ( dispatch_rst_tag       ),
      .dispatch_valid     ( dispatch_rst_valid     ),
      .cdb_tag            ( cdb_tag                ),
      .cdb_valid          ( cdb_valid              ),
      .regfile_wen_onehot ( rst_regfile_wen_onehot )
   );

   tagfifo #(
      .W_ENTRY ( 6 ),
      .W_TAG   ( 6 )
   ) tagfifo (
      .clk            ( clk                    ),
      .reset          ( reset                  ),
      .dispatch_ren   ( dispatch_tagfifo_ren   ),
      .dispatch_full  ( tagfifo_dispatch_full  ),
      .dispatch_empty ( tagfifo_dispatch_empty ),
      .dispatch_tag   ( tagfifo_dispatch_tag   ),
      .cdb_tag        ( cdb_tag                ),
      .cdb_valid      ( cdb_valid              )
   );

endmodule

`endif

