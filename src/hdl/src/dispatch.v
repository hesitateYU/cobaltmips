
`ifndef DISPATCH_V
`define DISPATCH_V

`include "globals.vh"

module dispatch(
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

   output reg [ 2:0] equeueint_opcode,
   output reg        equeueint_en,
   input             equeueint_ready,

   output reg        equeuemult_en,
   input             equeuemult_ready,

   output reg        equeuediv_en,
   input             equeuediv_ready
);

   initial begin
      #5;
      #110; ifq_branch_valid = 1'b1; ifq_branch_addr = 32'h5;
      #10   ifq_branch_valid = 1'b0;
      #140  ifq_ren = 1'b0;
      #40   ifq_ren = 1'b1;
   end

   always @(*) begin : ifq_oreg_proc
      ifq_ren          = (reset) ? 'h0 : 1'b1;//~ifq_empty;
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
   reg [ 5:0] inst_opcode, inst_func;
   reg [ 4:0] inst_rdtag, inst_rstag, inst_rttag, inst_shamt;
   reg [15:0] inst_imm;
   reg [31:0] inst_imm_sext, inst_imm_sext_r;
   reg [25:0] inst_addr;
   reg [31:0] inst_addr_sext, inst_addr_jump, inst_addr_branch;
   always @(*) begin : dispatch_ifq_inst_split_proc
      inst_opcode = ifq_inst[31:26];
      inst_rstag  = ifq_inst[25:21];
      inst_rttag  = ifq_inst[20:16];
      inst_rdtag  = ifq_inst[15:11];
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

   always @(*) begin : dispatch_decode_proc
      // Set defaults.
      ifq_ren          = 1'b1;
      ifq_branch_valid = 1'b0;
      ifq_branch_addr  = inst_addr_branch;

      case (inst_opcode)
         `OPCODE_RTYPE : begin

         end
         // Halt IFQ until branch result is published by CDB.
         `OPCODE_BTYPE : begin
            ifq_ren          = 1'b0;
            ifq_branch_valid = 1'b0;
            ifq_branch_addr  = inst_addr_branch;
         end
         `OPCODE_JTYPE : begin
            ifq_branch_valid = 1'b1;
            ifq_branch_addr  = inst_addr_jump;
         end
         default : begin

         end
      endcase
   end

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

