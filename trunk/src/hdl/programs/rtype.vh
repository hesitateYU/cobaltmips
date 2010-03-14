

//
// Simple program using only register type instructions,
// no jumps, no branches, no load/store.
//
// Instruction formats:
//            +------+-----+-----+------------------+
//            |   6  |  5  |  5  |  5  |  5  |   6  |
//            +------+-----+-----+-----+-----+------+
//   Register |Opcode| Rs  | Rt  | Rd  |Shamt| Func |
//            +------+-----+-----+-----+-----+------+
//  Immediate |Opcode| Rs  | Rt  |  Immediate (16)  |
//            +------+-----+-----+------------------+
//       Jump |Opcode|                Address (26)  |
//            +------+-----+-----+------------------+
//

mem_init['h00] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h01] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h02] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h03] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h04] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h05] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h06] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h07] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h08] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h09] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h0A] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h0B] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h0C] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h0D] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h0E] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h0F] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};

mem_init['h10] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h11] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h12] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h13] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h14] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h15] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h16] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h17] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h18] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h19] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h1A] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h1B] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h1C] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h1D] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h1E] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h1F] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};

mem_init['h20] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h21] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h22] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h23] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h24] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h25] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h26] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h27] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h28] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h29] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h2A] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h2B] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h2C] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h2D] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h2E] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h2F] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};

mem_init['h30] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h31] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h32] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h33] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h34] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h35] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h36] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h37] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h38] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h39] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h3A] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h3B] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h3C] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h3D] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h3E] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};
mem_init['h3F] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_ADD};

