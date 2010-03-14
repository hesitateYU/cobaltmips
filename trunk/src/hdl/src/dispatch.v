
`ifndef DISPATCH_V
`define DISPATCH_V

module dispatch(
   input             clk,
   input             reset,

   input      [31:0] ifq_pc_out,
   input      [31:0] ifq_inst,
   input             ifq_empty,
   output reg        ifq_rd_en,
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

   output reg [ 2:0] equeueint_opcode,
   output reg        equeueint_en,
   input             equeueint_ready,

   output reg        equeuemult_en,
   input             equeuemult_ready,

   output reg        equeuediv_en,
   input             equeuediv_ready
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

   initial begin
      #5;
      #110; ifq_branch_valid = 1'b1; ifq_branch_addr = 32'h5;
      #10  ifq_branch_valid = 1'b0;
      #140 ifq_rd_en = 1'b0;
      #40  ifq_rd_en = 1'b1;
   end

   always @(*) begin : ifq_oreg_proc
      ifq_rd_en        = (reset) ? 'h0 : 1'b1;//~ifq_empty;
      ifq_branch_addr  = (reset) ? 'h0 : 32'h0;
      ifq_branch_valid = (reset) ? 'h0 : 1'b0;
   end

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

   // Signal declarations for Tag FIFO.
   wire [ 5:0] tagfifo_dispatch_tag;
   wire        dispatch_tagfifo_ren;
   wire        tagfifo_dispatch_full;
   wire        tagfifo_dispatch_empty;
   wire [ 5:0] cdb_tagfifo_tag;
   wire        cdb_tagfifo_valid;

   // Internal registers used to flop decoded instruction to execution queues
   // but they are not ready to receive.
   reg  [15:0] equeue_imm_r;
   reg  [ 5:0] equeue_rdtag_r, equeue_rstag_r, equeue_rttag_r;
   reg  [31:0] equeue_rsdata_r, equeue_rtdata_r;
   reg         equeue_rsvalid_r, equeue_rtvalid_r;
   reg         equeuels_opcode_r;
   reg  [ 2:0] equeueint_opcode_r;
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
   `define INST_RTYPE_BIT (0)
   `define INST_ITYPE_BIT (1)
   `define INST_JTYPE_BIT (2)
   `define INST_ERROR (3'b000)
   reg  [31:0] ifq_inst_rtype, ifq_inst_itype, ifq_inst_jtype;
   reg  [ 5:0] ifq_inst_opcode;
   reg  [ 4:0] ifq_inst_rs, ifq_inst_rt, ifq_inst_rd, ifq_inst_shamt;
   reg  [15:0] ifq_inst_imm;
   reg  [ 5:0] ifq_inst_funct;
   reg  [25:0] ifq_inst_addr;
   reg  [ 2:0] ifq_inst_type;
   /*
   always @(*) begin : dispatch_inst_decode_proc
      ifq_inst_rs = () ? cdb_
      ifq_inst_rt = () ?

      ifq_inst_rtype = {ifq_inst_opcode, ifq_inst_rs, ifq_inst_rt, ifq_inst_rd, ifq_inst_shamt, ifq_inst_funct};
      ifq_inst_itype = {ifq_inst_opcode, ifq_inst_rs, ifq_inst_rt, ifq_inst_imm};
      ifq_inst_jtype = {ifq_inst_opcode, ifq_inst_addr};
      case (1'b1)
         ifq_inst_type[`INST_RTYPE_BIT]: equeue_inst = ifq_inst_rtype;
         ifq_inst_type[`INST_ITYPE_BIT]: equeue_inst = ifq_inst_itype;
         ifq_inst_type[`INST_JTYPE_BIT]: equeue_inst = ifq_inst_jtype;
         default                          : ifq_inst = `INST_ERROR;
      endcase
      assert (ifq_inst_type != `INST_ERROR) else
         $fatal($sformatf("Instruction type not valid %b.", ifq_inst_type));

      equeue_rsvalid = ;
      equeue_rtvalid = ;
   end
   */
   `undef INST_RTYPE_BIT
   `undef INST_ITYPE_BIT
   `undef INST_JTYPE_BIT
   `undef INST_ERROR

   regfile regfile (
      .clk             (clk                     ),
      .reset           (reset                   ),

      .cdb_wdata       (cdb_regfile_wdata       ),
      .rst_wen_onehot  (rst_regfile_onehot      ),

      .dispatch_rs_addr(dispatch_regfile_rs_addr),
      .dispatch_rs_data(regfile_dispatch_rs_data),
      .dispatch_rt_addr(dispatch_regfile_rt_addr),
      .dispatch_rt_data(regfile_dispatch_rt_data),
      .debug_addr      (top_regfile_addr        ),
      .debug_data      (regfile_top_data        )
   );

   rst rst(
      .clk               (clk                   ),
      .reset             (reset                 ),

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
      .clk           (clk                   ),
      .reset         (reset                 ),
      .dispatch_tag  (tagfifo_dispatch_tag  ),
      .dispatch_ren  (dispatch_tagfifo_ren  ),
      .dispatch_full (tagfifo_dispatch_full ),
      .dispatch_empty(tagfifo_dispatch_empty),
      .cdb_tag       (cdb_tagfifo_tag       ),
      .cdb_valid     (cdb_tagfifo_valid     )
   );

endmodule

`endif
