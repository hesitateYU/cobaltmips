
`ifndef DISPATCH_V
`define DISPATCH_V

module dispatch(
   input             clk,
   input             rst,

   input      [31:0] ifq_pc_out,
   input      [31:0] ifq_inst,
   input             ifq_empty,
   output reg        ifq_rd_en,
   output reg [31:0] ifq_jump_branch_address,
   output reg        ifq_jump_branch_valid

   /*
   // i/f with CDB
   input      [ 5:0] cdb_tag,
   input             cdb_valid,
   input      [31:0] cdb_data,
   input             cdb_branch,
   input             cdb_branch_taken

   // i/f with Integer Queue
   */
);
   //
   // Instruction decoder.
   // Instruction formats (based in opcode):
   //
   //            |Opcode| | 16 |
   //            +------+-----+-----+-----+-----+------+
   //            |   6  |  5  |  5  |  5  |  5  |   6  |
   //   Reg Type |000000| Rs  | Rt  | Rd  |Shamt| Func |
   //            +------+-----+-----+-----+-----+------+
   //  Load Word |100011| Rs  | Rt  | Address(15)      |
   //            +------+-----+-----+------------------+
   // Store Word |101011| Rs  | Rt  | Address(15)      |
   //            +------+-----+-----+------------------+
   //  Branch Eq |000100| Rs  | Rt  | Address(15)      |
   //            +------+-----+-----+------------------+
   //       Jump |000010| Address(26)                  |
   //            +------+------------------------------+
   //
   /// </Description>
   always @(*) begin
      /*
      case (ifq_inst) begin
         `OPCODE_RTYPE:
         `OPCODE_BEQ:
         `OPCODE_BNE:
         `OPCODE_BLEZ:
         `OPCODE_BGTZ:
      endcase
      */
   end

   //always @(posedge clk) begin : ifq_oreg_proc
   //   ifq_rd_en               <=  1'b1;
   //   ifq_jump_branch_valid   <=  1'b0;
   //   ifq_jump_branch_address <= 32'h0;
   //end

   // Signal declarations for Regfile.
   wire [31:0] cdb_regfile_wdata;
   wire [31:0] rst_regfile_onehot;
   wire [ 4:0] dispatch_regfile_rs_addr;
   wire [31:0] regfile_dispatch_rs_data;
   wire [ 4:0] dispatch_regfile_rt_addr;
   wire [31:0] regfile_dispatch_rt_data;
   wire [ 4:0] top_regfile_addr;
   wire [31:0] regfile_top_data;

   // Signal declarations for Register Status Table.
   wire [ 5:0] dispatch_rst_tag;
   wire        dispatch_rst_valid;
   wire [ 4:0] dispatch_rst_addr;
   wire        dispatch_rst_wen;
   wire [ 5:0] cdb_rst_tag;
   wire        cdb_rst_valid;
   wire [31:0] rst_regfile_wen_onehot;
   wire [ 5:0] rst_dispatch_rstag;
   wire        rst_dispatch_rsvalid;
   wire [ 4:0] dispatch_rst_rsaddr;
   wire [ 5:0] rst_dispatch_rttag;
   wire        rst_dispatch_rtvalid;
   wire [ 4:0] dispatch_rst_rtaddr;


   regfile regfile (
      .clk             (clk                     ),
      .rst             (rst                     ),

      .cdb_wdata       (cdb_regfile_wdata       ),
      .rst_wen_onehot  (rst_regfile_onehot      ),

      .dispatch_rs_addr(dispatch_regfile_rs_addr),
      .dispatch_rs_data(regfile_dispatch_rs_data),
      .dispatch_rt_addr(dispatch_regfile_rt_addr),
      .dispatch_rt_data(regfile_dispatch_rt_data),
      .debug_addr      (top_regfile_addr        ),
      .debug_data      (regfile_top_data        )
   );

   reg_status_table reg_status_table (
      .clk               (clk                   ),
      .rst               (rst                   ),

      .dispatch_tag      (dispatch_rst_tag      ),
      .dispatch_valid    (dispatch_rst_valid    ),
      .dispatch_addr     (dispatch_rst_addr     ),
      .dispatch_wen      (dispatch_rst_wen      ),

      .cdb_tag           (cdb_rst_tag           ),
      .cdb_valid         (cdb_rst_valid         ),

      .regfile_wen_onehot(rst_regfile_wen_onehot),

      .dispatch_rstag    (rst_dispatch_rstag    ),
      .dispatch_rsvalid  (rst_dispatch_rsvalid  ),
      .dispatch_rsaddr   (dispatch_rst_rsaddr   ),
      .dispatch_rttag    (rst_dispatch_rttag    ),
      .dispatch_rtvalid  (rst_dispatch_rtvalid  ),
      .dispatch_rtaddr   (dispatch_rst_rtaddr   )
   );

   tagfifo tagfifo (
      .tagout_tf (),
      .ren_tf    (),
      .ff_tf     (),
      .ef_tf     (),
      .cdb_tag_tf()
   //   .cdb_tag_tf // esta repetida en el diagrama, typo del profe.
   );

   //branch_stall brst();

   //branch_jmpaddr_calc brjmpcalc();

   //jmp_exec jmp_exec();

   /*
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
*/
endmodule

`endif

