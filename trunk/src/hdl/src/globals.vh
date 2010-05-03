
`ifndef GLOBALS_VH
`define GLOBALS_VH

`define FALSE (0)
`define TRUE  (1)

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
// FLOATING POINT INSTRUCTION FORMATS
//               +------+-----+-----+-----+-----+------+
//               |   6  |  5  |  5  |  5  |  5  |   6  |
//               +------+-----+-----+-----+-----+------+
//   Register FR |Opcode| Fmt | Ft  | Fs  | Fd  | Func |
//               +------+-----+-----+-----+-----+------+
//  Immediate FI |Opcode| Fmt | Ft  |  Immediate (16)  |
//               +------+-----+-----+------------------+
//

//
// Most significant opcodes
//
`define OPCODE_RTYPE  (6'h00)
`define OPCODE_J      (6'h02)
`define OPCODE_JAL    (6'h03)
`define OPCODE_BEQ    (6'h04)
`define OPCODE_BNE    (6'h05)
`define OPCODE_BLEZ   (6'h06)
`define OPCODE_BGTZ   (6'h07)
`define OPCODE_ADDI   (6'h08)
`define OPCODE_ADDIU  (6'h09)
`define OPCODE_SLTI   (6'h0A)
`define OPCODE_SLTIU  (6'h0B)
`define OPCODE_ANDI   (6'h0C)
`define OPCODE_ORI    (6'h0D)
`define OPCODE_XORI   (6'h0E)
`define OPCODE_LUI    (6'h0F)
`define OPCODE_FPTYPE (6'h11)
`define OPCODE_LB     (6'h20)
`define OPCODE_LH     (6'h21)
`define OPCODE_LWL    (6'h22)
`define OPCODE_LW     (6'h23)
`define OPCODE_LBU    (6'h24)
`define OPCODE_LHU    (6'h25)
`define OPCODE_LWR    (6'h26)
`define OPCODE_SB     (6'h28)
`define OPCODE_SH     (6'h29)
`define OPCODE_SWL    (6'h2A)
`define OPCODE_SW     (6'h2B)
`define OPCODE_SWR    (6'h2E)
`define OPCODE_CACHE  (6'h2F)
`define OPCODE_LL     (6'h30)
`define OPCODE_LWC1   (6'h31)
`define OPCODE_LWC2   (6'h32)
`define OPCODE_PREF   (6'h33)
`define OPCODE_LDC1   (6'h35)
`define OPCODE_LDC2   (6'h36)
`define OPCODE_SC     (6'h38)
`define OPCODE_SWC1   (6'h39)
`define OPCODE_SWC2   (6'h3A)
`define OPCODE_SDC1   (6'h3D)
`define OPCODE_SDC2   (6'h3E)

//
// Functions used by basic instructions with:
//   + OPCODE_RTYPE
//
`define FUNCT_SLL     (6'h00)
`define FUNCT_NOOP_01 (6'h01)
`define FUNCT_SRL     (6'h02)
`define FUNCT_SRA     (6'h03)
`define FUNCT_SLLV    (6'h04)
`define FUNCT_SRLV    (6'h06)
`define FUNCT_SRAV    (6'h07)
`define FUNCT_JR      (6'h08)
`define FUNCT_JALR    (6'h09)
`define FUNCT_MOVZ    (6'h0A)
`define FUNCT_MOVN    (6'h0B)
`define FUNCT_SYSCALL (6'h0C)
`define FUNCT_BREAK   (6'h0D)
`define FUNCT_NOOP_0E (6'h0E)
`define FUNCT_SYNC    (6'h0F)
`define FUNCT_MFHI    (6'h10)
`define FUNCT_MTHI    (6'h11)
`define FUNCT_MFLO    (6'h12)
`define FUNCT_MTLO    (6'h13)
`define FUNCT_NOOP_14 (6'h14)
`define FUNCT_NOOP_15 (6'h15)
`define FUNCT_NOOP_16 (6'h16)
`define FUNCT_NOOP_17 (6'h17)
`define FUNCT_MULT    (6'h18)
`define FUNCT_MULTU   (6'h19)
`define FUNCT_DIV     (6'h1A)
`define FUNCT_DIVU    (6'h1B)
`define FUNCT_NOOP_1C (6'h1C)
`define FUNCT_NOOP_1D (6'h1D)
`define FUNCT_NOOP_1E (6'h1E)
`define FUNCT_NOOP_1F (6'h1F)
`define FUNCT_ADD     (6'h20)
`define FUNCT_ADDU    (6'h21)
`define FUNCT_SUB     (6'h22)
`define FUNCT_SUBU    (6'h23)
`define FUNCT_AND     (6'h24)
`define FUNCT_OR      (6'h25)
`define FUNCT_XOR     (6'h26)
`define FUNCT_NOR     (6'h27)
`define FUNCT_NOOP_28 (6'h28)
`define FUNCT_NOOP_29 (6'h29)
`define FUNCT_SLT     (6'h2A)
`define FUNCT_SLTU    (6'h2B)
`define FUNCT_NOOP_2C (6'h2C)
`define FUNCT_NOOP_2D (6'h2D)
`define FUNCT_NOOP_2E (6'h2E)
`define FUNCT_NOOP_2F (6'h2F)
`define FUNCT_TGE     (6'h30)
`define FUNCT_TGEU    (6'h31)
`define FUNCT_TLT     (6'h32)
`define FUNCT_TLTU    (6'h33)
`define FUNCT_TEQ     (6'h34)
`define FUNCT_NOOP_35 (6'h35)
`define FUNCT_TNE     (6'h36)
`define FUNCT_NOOP_37 (6'h37)
`define FUNCT_NOOP_38 (6'h39)
`define FUNCT_NOOP_39 (6'h39)
`define FUNCT_NOOP_3A (6'h3A)
`define FUNCT_NOOP_3B (6'h3B)
`define FUNCT_NOOP_3C (6'h3C)
`define FUNCT_NOOP_3D (6'h3D)
`define FUNCT_NOOP_3E (6'h3E)
`define FUNCT_NOOP_3F (6'h3F)

//
// Functions used by floating point instructions with:
//   + OPCODE_FPTYPE
//
`define FUNCT_ADD_F     (6'h00)
`define FUNCT_SUB_F     (6'h01)
`define FUNCT_MUL_F     (6'h02)
`define FUNCT_DIV_F     (6'h03)
`define FUNCT_SQRT_F    (6'h04)
`define FUNCT_ABS_F     (6'h05)
`define FUNCT_MOV_F     (6'h06)
`define FUNCT_NEG_F     (6'h07)
`define FUNCT_ROUND_F   (6'h0C)
`define FUNCT_TRUNC_F   (6'h0D)
`define FUNCT_CEIL_F    (6'h0E)
`define FUNCT_FLOOR_F   (6'h0F)
`define FUNCT_MOVZ_F    (6'h12)
`define FUNCT_MOVN_F    (6'h13)
`define FUNCT_CVT_S_F   (6'h20)
`define FUNCT_CVT_D_F   (6'h21)
`define FUNCT_CVT_W_F   (6'h24)
`define FUNCT_C_F_F     (6'h30)
`define FUNCT_C_UN_F    (6'h31)
`define FUNCT_C_EQ_F    (6'h32)
`define FUNCT_C_UEQ_F   (6'h33)
`define FUNCT_C_OLT_F   (6'h34)
`define FUNCT_C_ULT_F   (6'h35)
`define FUNCT_C_OLE_F   (6'h36)
`define FUNCT_C_ULE_F   (6'h37)
`define FUNCT_C_SF_F    (6'h38)
`define FUNCT_C_NGLE_F  (6'h39)
`define FUNCT_C_SEQ_F   (6'h3A)
`define FUNCT_C_LT_F    (6'h3B)
`define FUNCT_C_NGE_F   (6'h3C)
`define FUNCT_C_LE_F    (6'h3D)
`define FUNCT_C_NGT_F   (6'h3F)


//
// Simple alias for registers.
//
`define REG_00 (5'h00)
`define REG_01 (5'h01)
`define REG_02 (5'h02)
`define REG_03 (5'h03)
`define REG_04 (5'h04)
`define REG_05 (5'h05)
`define REG_06 (5'h06)
`define REG_07 (5'h07)
`define REG_08 (5'h08)
`define REG_09 (5'h09)
`define REG_10 (5'h0A)
`define REG_11 (5'h0B)
`define REG_12 (5'h0C)
`define REG_13 (5'h0D)
`define REG_14 (5'h0E)
`define REG_15 (5'h0F)
`define REG_16 (5'h10)
`define REG_17 (5'h11)
`define REG_18 (5'h12)
`define REG_19 (5'h13)
`define REG_20 (5'h14)
`define REG_21 (5'h15)
`define REG_22 (5'h16)
`define REG_23 (5'h17)
`define REG_24 (5'h18)
`define REG_25 (5'h19)
`define REG_26 (5'h1A)
`define REG_27 (5'h1B)
`define REG_28 (5'h1C)
`define REG_29 (5'h1D)
`define REG_30 (5'h1E)
`define REG_31 (5'h1F)

//
// Shift amounts used in basic instructions of OPCODE_RTYPE.
//
`define SHAMT_00 (5'h00)
`define SHAMT_01 (5'h01)
`define SHAMT_02 (5'h02)
`define SHAMT_03 (5'h03)
`define SHAMT_04 (5'h04)
`define SHAMT_05 (5'h05)
`define SHAMT_06 (5'h06)
`define SHAMT_07 (5'h07)
`define SHAMT_08 (5'h08)
`define SHAMT_09 (5'h09)
`define SHAMT_10 (5'h0A)
`define SHAMT_11 (5'h0B)
`define SHAMT_12 (5'h0C)
`define SHAMT_13 (5'h0D)
`define SHAMT_14 (5'h0E)
`define SHAMT_15 (5'h0F)
`define SHAMT_16 (5'h10)
`define SHAMT_17 (5'h11)
`define SHAMT_18 (5'h12)
`define SHAMT_19 (5'h13)
`define SHAMT_20 (5'h14)
`define SHAMT_21 (5'h15)
`define SHAMT_22 (5'h16)
`define SHAMT_23 (5'h17)
`define SHAMT_24 (5'h18)
`define SHAMT_25 (5'h19)
`define SHAMT_26 (5'h1A)
`define SHAMT_27 (5'h1B)
`define SHAMT_28 (5'h1C)
`define SHAMT_29 (5'h1D)
`define SHAMT_30 (5'h1E)
`define SHAMT_31 (5'h1F)

/*
module zerodetect #(parameter WIDTH = 8)
                   (input [WIDTH-1:0] a,
                    output            y);

   assign y = (a==0);
endmodule

module flop #(parameter WIDTH = 8)
             (input                  clk,
              input      [WIDTH-1:0] d,
              output reg [WIDTH-1:0] q);

   always @(posedge clk)
      q <= d;
endmodule

module flopen #(parameter WIDTH = 8)
               (input                  clk, en,
                input      [WIDTH-1:0] d,
                output reg [WIDTH-1:0] q);

   always @(posedge clk)
      if (en) q <= d;
endmodule

module flopenr #(parameter WIDTH = 8)
                (input                  clk, reset, en,
                 input      [WIDTH-1:0] d,
                 output reg [WIDTH-1:0] q);

   always @(posedge clk)
      if      (reset) q <= 0;
      else if (en)    q <= d;
endmodule

module mux2 #(parameter WIDTH = 8)
             (input  [WIDTH-1:0] d0, d1,
              input              s,
              output [WIDTH-1:0] y);

   assign y = s ? d1 : d0;
endmodule

module mux4 #(parameter WIDTH = 8)
             (input      [WIDTH-1:0] d0, d1, d2, d3,
              input      [1:0]       s,
              output reg [WIDTH-1:0] y);

   always @(*)
      case(s)
         2'b00: y <= d0;
         2'b01: y <= d1;
         2'b10: y <= d2;
         2'b11: y <= d3;
      endcase
endmodul
*/
`endif

