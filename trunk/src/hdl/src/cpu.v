

`ifndef CPU_V
`define CPU_V

module cpu(
   input clk,
   input rst
);

   wire  [31:0] ifq_icache_pc_in;
   wire         ifq_icache_rd_en;
   wire         ifq_icache_abort;
   wire [127:0] icache_ifq_dout;
   wire         icache_ifq_dout_valid;

   wire  [31:0] ifq_dispatch_pc_out;
   wire  [31:0] ifq_dispatch_inst;
   wire         ifq_dispatch_empty;
   wire         dispatch_ifq_rd_en;
   wire  [31:0] dispatch_ifq_jump_branch_address;
   wire         dispatch_ifq_jump_branch_valid;

   icache#(
      .INC_OREG       (1'b0                 )
   )icache(
      .clk            (clk                  ),
      .rst            (rst                  ),
      .ifq_pc_in      (ifq_icache_pc_in     ),
      .ifq_rd_en      (ifq_icache_rd_en     ),
      .ifq_abort      (ifq_icache_abort     ),
      .ifq_dout       (icache_ifq_dout      ),
      .ifq_dout_valid (icache_ifq_dout_valid)
   );

   ifq ifq(
      .clk                          (clk                             ),
      .rst                          (rst                             ),
      .icache_pc_in                 (ifq_icache_pc_in                ),
      .icache_rd_en                 (ifq_icache_rd_en                ),
      .icache_abort                 (ifq_icache_abort                ),
      .icache_dout                  (icache_ifq_dout                 ),
      .icache_dout_valid            (icache_ifq_dout_valid           ),
      .dispatch_pc_out              (ifq_dispatch_pc_out             ),
      .dispatch_inst                (ifq_dispatch_inst               ),
      .dispatch_empty               (ifq_dispatch_empty              ),
      .dispatch_rd_en               (dispatch_ifq_rd_en              ),
      .dispatch_jump_branch_address (dispatch_ifq_jump_branch_address),
      .dispatch_jump_branch_valid   (dispatch_ifq_jump_branch_valid  )
   );

   dispatch dispatch(
      .clk                     (clk                             ),
      .rst                     (rst                             ),
      .ifq_pc_out              (ifq_dispatch_pc_out             ),
      .ifq_inst                (ifq_dispatch_inst               ),
      .ifq_empty               (ifq_dispatch_empty              ),
      .ifq_rd_en               (dispatch_ifq_rd_en              ),
      .ifq_jump_branch_address (dispatch_ifq_jump_branch_address),
      .ifq_jump_branch_valid   (dispatch_ifq_jump_branch_valid  )
   );

endmodule

`endif

