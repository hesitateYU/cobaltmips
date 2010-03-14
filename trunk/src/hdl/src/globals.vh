
`ifndef GLOBALS_VH
`define GLOBALS_VH

`define FALSE (0)
`define TRUE  (1)

//
// Most significant opcodes
//
`define OPCODE_RTYPE  (6'h00)
`define OPCODE_J      (6'h02)
`define OPCODE_JAL    (6'h03)
`define OPCODE_BTYPE  (6'b00001XX)
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
// Functions for OPCODE_RTYPE
//
`define FUNCT_SLL     (6'h00)
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
`define FUNCT_SYNC    (6'h0F)
`define FUNCT_MFHI    (6'h10)
`define FUNCT_MTHI    (6'h11)
`define FUNCT_MFLO    (6'h12)
`define FUNCT_MTLO    (6'h13)
`define FUNCT_MULT    (6'h18)
`define FUNCT_MULTU   (6'h19)
`define FUNCT_DIV     (6'h1A)
`define FUNCT_DIVU    (6'h1B)
`define FUNCT_ADD     (6'h20)
`define FUNCT_ADDU    (6'h21)
`define FUNCT_SUB     (6'h22)
`define FUNCT_SUBU    (6'h23)
`define FUNCT_AND     (6'h24)
`define FUNCT_OR      (6'h25)
`define FUNCT_XOR     (6'h26)
`define FUNCT_NOR     (6'h27)
`define FUNCT_SLT     (6'h2A)
`define FUNCT_SLTU    (6'h2B)
`define FUNCT_TGE     (6'h30)
`define FUNCT_TGEU    (6'h31)
`define FUNCT_TLT     (6'h32)
`define FUNCT_TLTU    (6'h33)
`define FUNCT_TEQ     (6'h34)
`define FUNCT_TNE     (6'h36)

//
// Functions for OPCODE_FPTYPE
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
