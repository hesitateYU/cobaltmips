

`ifndef CPU_V
`define CPU_V

`include "globals.vh"

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

   wire         dispatch_equeueint_en;
   wire         equeueint_dispatch_ready;
   wire [31:0]  equeueint_cdb_data;
   wire [ 5:0]  equeueint_cdb_tag;
   wire         equeueint_cdb_valid;
   wire         equeueint_cdb_branch;
   wire         equeueint_cdb_taken;


   wire         dispatch_equeuels_en;
   wire         equeuels_dispatch_ready;
   wire [31:0]  equeuels_cdb_data;
   wire [ 5:0]  equeuels_cdb_tag;
   wire         equeuels_cdb_valid;
   wire         equeuels_cdb_branch;
   wire         equeuels_cdb_taken;

   wire         dispatch_equeuediv_en;
   wire         equeuediv_dispatch_ready;
   wire [31:0]  equeuediv_cdb_data;
   wire [ 5:0]  equeuediv_cdb_tag;
   wire         equeuediv_cdb_valid;
   wire         equeuediv_cdb_branch;
   wire         equeuediv_cdb_taken;

   wire [31:0]  dispatch_equeue_inst;
   wire         dispatch_equeue_rsvalid;
   wire         dispatch_equeue_rtvalid;
   wire         dispatch_equeue_en;
   wire         equeuemult_dispatch_ready;
   wire [31:0]  equeuemult_cdb_data;
   wire [ 5:0]  equeuemult_cdb_tag;
   wire         equeuemult_cdb_valid;
   wire         equeuemult_cdb_branch;
   wire         equeuemult_cdb_taken;


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

   equeueint equeueint(
      .clk             (clk                     ),
      .rst             (rst                     ),
      .dispatch_inst   (dispatch_equeue_inst    ),
      .dispatch_rsvalid(dispatch_equeue_rsvalid ),
      .dispatch_rtvalid(dispatch_equeue_rtvalid ),
      .dispatch_en     (dispatch_equeuels_en    ),
      .dispatch_ready  (equeueint_dispatch_ready),
      .cdb_data        (equeueint_cdb_data      ),
      .cdb_tag         (equeueint_cdb_tag       ),
      .cdb_valid       (equeueint_cdb_valid     ),
      .cdb_branch      (equeueint_cdb_branch    ),
      .cdb_branch_taken(equeueint_cdb_taken     )
   );

   equeuels equeuels(
      .clk             (clk                    ),
      .rst             (rst                    ),
      .dispatch_inst   (dispatch_equeue_inst   ),
      .dispatch_rsvalid(dispatch_equeue_rsvalid),
      .dispatch_rtvalid(dispatch_equeue_rtvalid),
      .dispatch_en     (dispatch_equeuels_en   ),
      .dispatch_ready  (equeuels_dispatch_ready),
      .cdb_data        (equeuels_cdb_data      ),
      .cdb_tag         (equeuels_cdb_tag       ),
      .cdb_valid       (equeuels_cdb_valid     ),
      .cdb_branch      (equeuels_cdb_branch    ),
      .cdb_branch_taken(equeuels_cdb_taken     )
   );

      equeuediv equeuediv(
      .clk             (clk                     ),
      .rst             (rst                     ),
      .dispatch_inst   (dispatch_equeue_inst    ),
      .dispatch_rsvalid(dispatch_equeue_rsvalid ),
      .dispatch_rtvalid(dispatch_equeue_rtvalid ),
      .dispatch_en     (dispatch_equeuediv_en   ),
      .dispatch_ready  (equeuediv_dispatch_ready),
      .cdb_data        (equeuediv_cdb_data      ),
      .cdb_tag         (equeuediv_cdb_tag       ),
      .cdb_valid       (equeuediv_cdb_valid     ),
      .cdb_branch      (equeuediv_cdb_branch    ),
      .cdb_branch_taken(equeuediv_cdb_taken     )
   );

   equeuemult equeuemult(
      .clk             (clk                      ),
      .rst             (rst                      ),
      .dispatch_inst   (dispatch_equeue_inst     ),
      .dispatch_rsvalid(dispatch_equeue_rsvalid  ),
      .dispatch_rtvalid(dispatch_equeue_rtvalid  ),
      .dispatch_en     (dispatch_equeuemult_en   ),
      .dispatch_ready  (equeuemult_dispatch_ready),
      .cdb_data        (equeuemult_cdb_data      ),
      .cdb_tag         (equeuemult_cdb_tag       ),
      .cdb_valid       (equeuemult_cdb_valid     ),
      .cdb_branch      (equeuemult_cdb_branch    ),
      .cdb_branch_taken(equeuemult_cdb_taken     )
   );

endmodule

`endif

