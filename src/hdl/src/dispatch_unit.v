
`ifndef DISPATCH_UNIT_V
`define DISPATCH_UNIT_V

module dispatch_unit (
   // i/f with IFQ
   input      [31:0] ifetch_instruction,
   input             ifetch_empty_flag,
   input      [31:0] ifetch_pc_plus_four,
   output reg [31:0] dispatch_jmp_br_addr,
   output reg        dispatch_jmp,
   output reg        dispatch_ren,
   // i/f with CDB
   input      [ 5:0] cdb_tag,
   input             cdb_valid,
   input      [31:0] cdb_data,
   input             cdb_branch,
   input             cdb_branch_taken
);

   regfile regfile (
      .wen_rf       (),
      .write_data_rf(),
      .rsaddr_rf    (),
      .rsdata_rf    (),
      .rtaddr_rf    (),
      .rtdata_rf    ()
   );

   reg_status_table reg_status_table (
      .wdata0_rst     (),
      .waddr0_rst     (),
      .wen0_rst       (),
      .wdata_rst1     (),
      .wen_rst1       (),
      .rsaddr_rst     (),
      .rstag_rst      (),
      .rsvalid_rst    (),
      .rtaddr_rst     (),
      .rttag_rst      (),
      .rtvalid_rst    (),
      .cdb_valid      (),
      .cdb_tag_rst    (),
      .wen_regfile_rst()
   );

   tagfifo tagfifo (
      .tagout_tf (),
      .ren_tf    (),
      .ff_tf     (),
      .ef_tf     (),
      .cdb_tag_tf()
   //   .cdb_tag_tf // esta repetida en el diagrama, typo del profe.
   );

   // Instruction decoder.
   idecoder idecoder (

   );

   branch_stall brst();

   branch_jmpaddr_calc brjmpcalc();

   jmp_exec jmp_exec();

   dispatcher dispatcher(
      // common signals to all queues
      .dispatch_rs_data      (),
      .dispatch_rs_data_valid(),
      .dispatch_rs_tag       (),
      .dispatch_rt_data      (),
      .dispatch_rt_data_valid(),
      .dispatch_rt_tag       (),
      .dispatch_rd_tag       (),
      // integer queue specific signals
      .dispatch_en_int       (),
      .issueque_integer_full (),
      .dispatch_opcode_int   (),
      // load/store queue specific signals
      .dispatch_en_ld_st     (),
      .issueque_full_ld_st   (),
      .dispatch_opcode_ld_st (),
      .dispatch_imm_ld_st    (),
      .token_ld_st           (),
      // multiplier queue specific signals
      .dispatch_en_mul       (),
      .issueque_full_mul     (),
      // division queue specific signals
      .dispatch_en_div       (),
      .issueque_full_div     ()
   );

endmodule

`endif

