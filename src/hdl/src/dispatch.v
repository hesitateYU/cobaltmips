
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
   output reg [31:0] equeue_imm,
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
   reg is_branch, is_jump, is_store, is_load, do_dispatch;
   reg do_zeroext;

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

      equeue_imm     = (do_zeroext) ? inst_imm_zeroext : inst_imm_signext;
      equeue_rdtag   = tagfifo_dispatch_tag;
      equeue_rstag   = rst_dispatch_rstag;
      equeue_rttag   = (is_load) ? tagfifo_dispatch_tag : rst_dispatch_rttag;
      // If a value is published by CDB, then DATA fields for RS and RT are
      // solved and ready to be used by execution queues, invalidate the
      // VALID fields so that execution queues listen to CDB updates.
      // Values in RST, REGFILE and TAGFIFO will automatically be updated
      // inside those modules every time CDB publishes anything.
      equeue_rsvalid = (rst_dispatch_rstag == cdb_tag && cdb_valid) ? cdb_valid : ~rst_dispatch_rsvalid;
      // Loads don't require RT register. It is used as destination.
      equeue_rtvalid = (is_store) ? 1'b1
                     : ((rst_dispatch_rttag == cdb_tag && cdb_valid) ? cdb_valid : ~rst_dispatch_rtvalid);
      equeue_rsdata  = (rst_dispatch_rstag == cdb_tag && cdb_valid && rst_dispatch_rsvalid) ? cdb_data : regfile_dispatch_rsdata;
      equeue_rtdata  = (rst_dispatch_rttag == cdb_tag && cdb_valid && rst_dispatch_rtvalid) ? cdb_data : regfile_dispatch_rtdata;

      // After decoding, request a tag to TAGFIFO and write back results to
      // register file only if it is needed.
      do_dispatch = do_req_tag & ~tagfifo_dispatch_empty & ~ifq_empty
                  & ((S_DISPATCH == state_r) || (S_BRANCHSTALL == state_r && S_DISPATCH == next_state & cdb_branch & ~cdb_branch_taken));
      dispatch_tagfifo_ren = do_dispatch;
      dispatch_rst_valid   = do_dispatch;
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
                         & (is_branch | (do_req_tag & ~tagfifo_dispatch_empty) | is_store)
                         & (~ifq_empty);
            equeue_en[curr_equeueidx] = can_dispatch;
            ifq_ren = can_dispatch;
            next_state = (~can_dispatch) ? S_DISPATCH : ((is_branch) ? S_BRANCHSTALL : S_DISPATCH);
            ifq_branch_valid = is_jump;
            ifq_branch_addr  = (is_jump) ? inst_addr_jump : 'h0;
         end
         S_BRANCHSTALL : begin
            can_dispatch = (do_req_equeue & equeue_ready[curr_equeueidx])
                         & (is_branch | (do_req_tag & ~tagfifo_dispatch_empty) | is_store)
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
      is_store       = 1'b0;
      is_load        = 1'b0;
      do_zeroext     = 1'b0;

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
            is_load         = 1'b1;
         end
         `OPCODE_SW : begin
            equeuels_opcode = `ISSUELS_FUNC_SW;
            curr_equeueidx  = EQ_LS;
            do_req_equeue   = 1'b1;
            is_store        = 1'b1;
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
      inst_addr_branch_r <= (reset) ? 'h0 : (is_branch) ? inst_addr_branch : inst_addr_branch_r;
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

   always @(*) begin : dispatch_opcode_str_proc
      reg [10*8:0] inst_opcode_string, inst_func_string, dispatch_state_string;
      inst_opcode_string = "";
      inst_func_string   = "";
      dispatch_state_string  = "";

      dispatch_state_string = (state_r == S_DISPATCH) ? "DISPATCH" : "BR STALL";

      case (inst_opcode)
         `OPCODE_RTYPE  : inst_opcode_string = "RTYPE ";
         `OPCODE_J      : inst_opcode_string = "J     ";
         `OPCODE_JAL    : inst_opcode_string = "JAL   ";
         `OPCODE_BEQ    : inst_opcode_string = "BEQ   ";
         `OPCODE_BNE    : inst_opcode_string = "BNE   ";
         `OPCODE_BLEZ   : inst_opcode_string = "BLEZ  ";
         `OPCODE_BGTZ   : inst_opcode_string = "BGTZ  ";
         `OPCODE_ADDI   : inst_opcode_string = "ADDI  ";
         `OPCODE_ADDIU  : inst_opcode_string = "ADDIU ";
         `OPCODE_SLTI   : inst_opcode_string = "SLTI  ";
         `OPCODE_SLTIU  : inst_opcode_string = "SLTIU ";
         `OPCODE_ANDI   : inst_opcode_string = "ANDI  ";
         `OPCODE_ORI    : inst_opcode_string = "ORI   ";
         `OPCODE_XORI   : inst_opcode_string = "XORI  ";
         `OPCODE_LUI    : inst_opcode_string = "LUI   ";
         `OPCODE_FPTYPE : inst_opcode_string = "FPTYPE";
         `OPCODE_LB     : inst_opcode_string = "LB    ";
         `OPCODE_LH     : inst_opcode_string = "LH    ";
         `OPCODE_LWL    : inst_opcode_string = "LWL   ";
         `OPCODE_LW     : inst_opcode_string = "LW    ";
         `OPCODE_LBU    : inst_opcode_string = "LBU   ";
         `OPCODE_LHU    : inst_opcode_string = "LHU   ";
         `OPCODE_LWR    : inst_opcode_string = "LWR   ";
         `OPCODE_SB     : inst_opcode_string = "SB    ";
         `OPCODE_SH     : inst_opcode_string = "SH    ";
         `OPCODE_SWL    : inst_opcode_string = "SWL   ";
         `OPCODE_SW     : inst_opcode_string = "SW    ";
         `OPCODE_SWR    : inst_opcode_string = "SWR   ";
         `OPCODE_CACHE  : inst_opcode_string = "CACHE ";
         `OPCODE_LL     : inst_opcode_string = "LL    ";
         `OPCODE_LWC1   : inst_opcode_string = "LWC1  ";
         `OPCODE_LWC2   : inst_opcode_string = "LWC2  ";
         `OPCODE_PREF   : inst_opcode_string = "PREF  ";
         `OPCODE_LDC1   : inst_opcode_string = "LDC1  ";
         `OPCODE_LDC2   : inst_opcode_string = "LDC2  ";
         `OPCODE_SC     : inst_opcode_string = "SC    ";
         `OPCODE_SWC1   : inst_opcode_string = "SWC1  ";
         `OPCODE_SWC2   : inst_opcode_string = "SWC2  ";
         `OPCODE_SDC1   : inst_opcode_string = "SDC1  ";
         `OPCODE_SDC2   : inst_opcode_string = "SDC2  ";
      endcase

      if (inst_opcode == `OPCODE_RTYPE) begin
         case (inst_func)
            `FUNCT_SLL     : inst_func_string = "SLL    ";
            `FUNCT_NOOP_01 : inst_func_string = "NOOP_01";
            `FUNCT_SRL     : inst_func_string = "SRL    ";
            `FUNCT_SRA     : inst_func_string = "SRA    ";
            `FUNCT_SLLV    : inst_func_string = "SLLV   ";
            `FUNCT_SRLV    : inst_func_string = "SRLV   ";
            `FUNCT_SRAV    : inst_func_string = "SRAV   ";
            `FUNCT_JR      : inst_func_string = "JR     ";
            `FUNCT_JALR    : inst_func_string = "JALR   ";
            `FUNCT_MOVZ    : inst_func_string = "MOVZ   ";
            `FUNCT_MOVN    : inst_func_string = "MOVN   ";
            `FUNCT_SYSCALL : inst_func_string = "SYSCALL";
            `FUNCT_BREAK   : inst_func_string = "BREAK  ";
            `FUNCT_NOOP_0E : inst_func_string = "NOOP_0E";
            `FUNCT_SYNC    : inst_func_string = "SYNC   ";
            `FUNCT_MFHI    : inst_func_string = "MFHI   ";
            `FUNCT_MTHI    : inst_func_string = "MTHI   ";
            `FUNCT_MFLO    : inst_func_string = "MFLO   ";
            `FUNCT_MTLO    : inst_func_string = "MTLO   ";
            `FUNCT_NOOP_14 : inst_func_string = "NOOP_14";
            `FUNCT_NOOP_15 : inst_func_string = "NOOP_15";
            `FUNCT_NOOP_16 : inst_func_string = "NOOP_16";
            `FUNCT_NOOP_17 : inst_func_string = "NOOP_17";
            `FUNCT_MULT    : inst_func_string = "MULT   ";
            `FUNCT_MULTU   : inst_func_string = "MULTU  ";
            `FUNCT_DIV     : inst_func_string = "DIV    ";
            `FUNCT_DIVU    : inst_func_string = "DIVU   ";
            `FUNCT_NOOP_1C : inst_func_string = "NOOP_1C";
            `FUNCT_NOOP_1D : inst_func_string = "NOOP_1D";
            `FUNCT_NOOP_1E : inst_func_string = "NOOP_1E";
            `FUNCT_NOOP_1F : inst_func_string = "NOOP_1F";
            `FUNCT_ADD     : inst_func_string = "ADD    ";
            `FUNCT_ADDU    : inst_func_string = "ADDU   ";
            `FUNCT_SUB     : inst_func_string = "SUB    ";
            `FUNCT_SUBU    : inst_func_string = "SUBU   ";
            `FUNCT_AND     : inst_func_string = "AND    ";
            `FUNCT_OR      : inst_func_string = "OR     ";
            `FUNCT_XOR     : inst_func_string = "XOR    ";
            `FUNCT_NOR     : inst_func_string = "NOR    ";
            `FUNCT_NOOP_28 : inst_func_string = "NOOP_28";
            `FUNCT_NOOP_29 : inst_func_string = "NOOP_29";
            `FUNCT_SLT     : inst_func_string = "SLT    ";
            `FUNCT_SLTU    : inst_func_string = "SLTU   ";
            `FUNCT_NOOP_2C : inst_func_string = "NOOP_2C";
            `FUNCT_NOOP_2D : inst_func_string = "NOOP_2D";
            `FUNCT_NOOP_2E : inst_func_string = "NOOP_2E";
            `FUNCT_NOOP_2F : inst_func_string = "NOOP_2F";
            `FUNCT_TGE     : inst_func_string = "TGE    ";
            `FUNCT_TGEU    : inst_func_string = "TGEU   ";
            `FUNCT_TLT     : inst_func_string = "TLT    ";
            `FUNCT_TLTU    : inst_func_string = "TLTU   ";
            `FUNCT_TEQ     : inst_func_string = "TEQ    ";
            `FUNCT_NOOP_35 : inst_func_string = "NOOP_35";
            `FUNCT_TNE     : inst_func_string = "TNE    ";
            `FUNCT_NOOP_37 : inst_func_string = "NOOP_37";
            `FUNCT_NOOP_38 : inst_func_string = "NOOP_38";
            `FUNCT_NOOP_39 : inst_func_string = "NOOP_39";
            `FUNCT_NOOP_3A : inst_func_string = "NOOP_3A";
            `FUNCT_NOOP_3B : inst_func_string = "NOOP_3B";
            `FUNCT_NOOP_3C : inst_func_string = "NOOP_3C";
            `FUNCT_NOOP_3D : inst_func_string = "NOOP_3D";
            `FUNCT_NOOP_3E : inst_func_string = "NOOP_3E";
            `FUNCT_NOOP_3F : inst_func_string = "NOOP_3F";
         endcase
      end
   end
endmodule

`endif

