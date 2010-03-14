

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
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_SUB,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_SUB};
mem_init['h01] = {`OPCODE_RTYPE, `REG_00, `REG_01, `REG_02, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_01, `REG_02, `REG_03, `SHAMT_00, `FUNCT_SUB,
                  `OPCODE_RTYPE, `REG_02, `REG_03, `REG_04, `SHAMT_00, `FUNCT_ADD,
                  `OPCODE_RTYPE, `REG_03, `REG_04, `REG_05, `SHAMT_00, `FUNCT_SUB};

