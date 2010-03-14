

`ifndef CPU_V
`define CPU_V

`include "globals.vh"

module cpu(
   input        clk,
   input        reset
);

   wire [ 31:0] ifq_icache_pcin;
   wire         ifq_icache_ren;
   wire         ifq_icache_abort;
   wire [127:0] icache_ifq_dout;
   wire         icache_ifq_dout_valid;

   wire [ 31:0] ifq_dispatch_pcout_plus4;
   wire [ 31:0] ifq_dispatch_inst;
   wire         ifq_dispatch_empty;
   wire         dispatch_ifq_rd_en;
   wire [ 31:0] dispatch_ifq_branch_addr;
   wire         dispatch_ifq_branch_valid;

   wire [ 31:0] cdb_dispatch_data;
   wire [  5:0] cdb_dispatch_tag;
   wire         cdb_dispatch_valid;
   wire         cdb_dispatch_branch;
   wire         cdb_dispatch_taken;

   wire [ 15:0] dispatch_equeue_imm;
   wire [  5:0] dispatch_equeue_rdtag;
   wire [  5:0] dispatch_equeue_rstag;
   wire [  5:0] dispatch_equeue_rttag;
   wire [ 31:0] dispatch_equeue_rsdata;
   wire [ 31:0] dispatch_equeue_rtdata;
   wire         dispatch_equeue_rsvalid;
   wire         dispatch_equeue_rtvalid;

   wire         dispatch_equeuels_opcode;
   wire         dispatch_equeuels_en;
   wire         equeuels_dispatch_ready;

   wire [  2:0] dispatch_equeueint_opcode;
   wire         dispatch_equeueint_en;
   wire         equeueint_dispatch_ready;

   wire         dispatch_equeuemult_en;
   wire         equeuemult_dispatch_ready;

   wire         dispatch_equeuediv_en;
   wire         equeuediv_dispatch_ready;

   icache #(
      .W_IDATA        (32                   ),
      .W_ODATA        (128                  ),
      .W_ADDR         (6                    ),
      .INCLUDE_OREG   (1'b0                 )
   ) icache (
      .clk            (clk                  ),
      .reset          (reset                ),
      .ifq_pcin       (ifq_icache_pcin      ),
      .ifq_ren        (ifq_icache_ren       ),
      .ifq_abort      (ifq_icache_abort     ),
      .ifq_dout       (icache_ifq_dout      ),
      .ifq_dout_valid (icache_ifq_dout_valid)
   );

   ifq ifq (
      .clk                   (clk                      ),
      .reset                 (reset                    ),
      .icache_pcin           (ifq_icache_pcin          ),
      .icache_ren            (ifq_icache_ren           ),
      .icache_abort          (ifq_icache_abort         ),
      .icache_dout           (icache_ifq_dout          ),
      .icache_dout_valid     (icache_ifq_dout_valid    ),
      .dispatch_pcout_plus4  (ifq_dispatch_pcout_plus4 ),
      .dispatch_inst         (ifq_dispatch_inst        ),
      .dispatch_empty        (ifq_dispatch_empty       ),
      .dispatch_ren          (dispatch_ifq_ren         ),
      .dispatch_branch_addr  (dispatch_ifq_branch_addr ),
      .dispatch_branch_valid (dispatch_ifq_branch_valid)
   );

   dispatch dispatch (
      .clk              (clk                      ),
      .reset            (reset                    ),
      .ifq_pcout_plus4  (ifq_dispatch_pcout_plus4 ),
      .ifq_inst         (ifq_dispatch_inst        ),
      .ifq_empty        (ifq_dispatch_empty       ),
      .ifq_ren          (dispatch_ifq_ren         ),
      .ifq_branch_addr  (dispatch_ifq_branch_addr ),
      .ifq_branch_valid (dispatch_ifq_branch_valid),
      .cdb_tag          (cdb_dispatch_tag         ),
      .cdb_valid        (cdb_dispatch_valid       ),
      .cdb_data         (cdb_dispatch_data        ),
      .cdb_branch       (cdb_dispatch_branch      ),
      .cdb_branch_taken (cdb_dispatch_taken       ),
      .equeue_imm       (dispatch_equeue_imm      ),
      .equeue_rdtag     (dispatch_equeue_rdtag    ),
      .equeue_rstag     (dispatch_equeue_rstag    ),
      .equeue_rttag     (dispatch_equeue_rttag    ),
      .equeue_rsdata    (dispatch_equeue_rsdata   ),
      .equeue_rtdata    (dispatch_equeue_rtdata   ),
      .equeue_rsvalid   (dispatch_equeue_rsvalid  ),
      .equeue_rtvalid   (dispatch_equeue_rtvalid  ),
      .equeuels_opcode  (dispatch_equeuels_opcode ),
      .equeuels_en      (dispatch_equeuels_en     ),
      .equeuels_ready   (equeuels_dispatch_ready  ),
      .equeueint_opcode (dispatch_equeueint_opcode),
      .equeueint_en     (dispatch_equeueint_en    ),
      .equeueint_ready  (equeueint_dispatch_ready ),
      .equeuemult_en    (dispatch_equeuemult_en   ),
      .equeuemult_ready (equeuemult_dispatch_ready),
      .equeuediv_en     (dispatch_equeuediv_en    ),
      .equeuediv_ready  (equeuediv_dispatch_ready )
   );

   equeueint equeueint (
      .clk             (clk                      ),
      .reset           (reset                    ),
      .dispatch_opcode (dispatch_equeueint_opcode),
      .dispatch_en     (dispatch_equeueint_en    ),
      .dispatch_ready  (equeueint_dispatch_ready ),
      .dispatch_rdtag  (dispatch_equeue_rdtag    ),
      .dispatch_rstag  (dispatch_equeue_rstag    ),
      .dispatch_rttag  (dispatch_equeue_rttag    ),
      .dispatch_rsdata (dispatch_equeue_rsdata   ),
      .dispatch_rtdata (dispatch_equeue_rtdata   ),
      .dispatch_rsvalid(dispatch_equeue_rsvalid  ),
      .dispatch_rtvalid(dispatch_equeue_rtvalid  )
   );

   equeuels equeuels (
      .clk             (clk                     ),
      .reset           (reset                   ),
      .dispatch_opcode (dispatch_equeuels_opcode),
      .dispatch_en     (dispatch_equeuels_en    ),
      .dispatch_ready  (equeuels_dispatch_ready ),
      .dispatch_imm    (dispatch_equeue_imm     ),
      .dispatch_rdtag  (dispatch_equeue_rdtag   ),
      .dispatch_rstag  (dispatch_equeue_rstag   ),
      .dispatch_rttag  (dispatch_equeue_rttag   ),
      .dispatch_rsdata (dispatch_equeue_rsdata  ),
      .dispatch_rtdata (dispatch_equeue_rtdata  ),
      .dispatch_rsvalid(dispatch_equeue_rsvalid ),
      .dispatch_rtvalid(dispatch_equeue_rtvalid )
   );

   equeuediv equeuediv (
      .clk             (clk                     ),
      .reset           (reset                   ),
      .dispatch_en     (dispatch_equeuediv_en   ),
      .dispatch_ready  (equeuediv_dispatch_ready),
      .dispatch_rdtag  (dispatch_equeue_rdtag   ),
      .dispatch_rstag  (dispatch_equeue_rstag   ),
      .dispatch_rttag  (dispatch_equeue_rttag   ),
      .dispatch_rsdata (dispatch_equeue_rsdata  ),
      .dispatch_rtdata (dispatch_equeue_rtdata  ),
      .dispatch_rsvalid(dispatch_equeue_rsvalid ),
      .dispatch_rtvalid(dispatch_equeue_rtvalid )
   );

   equeuemult equeuemult (
      .clk             (clk                      ),
      .reset           (reset                    ),
      .dispatch_en     (dispatch_equeuemult_en   ),
      .dispatch_ready  (equeuemult_dispatch_ready),
      .dispatch_rdtag  (dispatch_equeue_rdtag    ),
      .dispatch_rstag  (dispatch_equeue_rstag    ),
      .dispatch_rttag  (dispatch_equeue_rttag    ),
      .dispatch_rsdata (dispatch_equeue_rsdata   ),
      .dispatch_rtdata (dispatch_equeue_rtdata   ),
      .dispatch_rsvalid(dispatch_equeue_rsvalid  ),
      .dispatch_rtvalid(dispatch_equeue_rtvalid  )
   );

endmodule

`endif

