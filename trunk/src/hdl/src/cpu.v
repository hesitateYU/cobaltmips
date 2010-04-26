

`ifndef CPU_V
`define CPU_V

`include "globals.vh"

module cpu (
   input         clk,
   input         reset,
   input  [ 4:0] debug_regfile_addr,
   output [31:0] debug_regfile_data
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

   reg  [ 31:0] cdb_dispatch_data;
   reg  [  5:0] cdb_dispatch_tag;
   reg          cdb_dispatch_valid;
   reg          cdb_dispatch_branch;
   reg          cdb_dispatch_taken;
   reg  [ 31:0] cdb_equeueint_data;
   reg  [  5:0] cdb_equeueint_tag;
   reg          cdb_equeueint_valid;
   reg  [ 31:0] cdb_equeuels_data;
   reg  [  5:0] cdb_equeuels_tag;
   reg          cdb_equeuels_valid;
   reg  [ 31:0] cdb_equeuemult_data;
   reg  [  5:0] cdb_equeuemult_tag;
   reg          cdb_equeuemult_valid;
   reg  [ 31:0] cdb_equeuediv_data;
   reg  [  5:0] cdb_equeuediv_tag;
   reg          cdb_equeuediv_valid;

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
   wire         equeuels_issuels_opcode;
   wire [  5:0] equeuels_issuels_rdtag;
   wire [ 31:0] equeuels_issuels_addr;
   wire [ 31:0] equeuels_issuels_data;
   wire         equeuels_issuels_ready;
   wire         issuels_equeuels_done;

   wire [  3:0] dispatch_equeueint_opcode;
   wire         dispatch_equeueint_en;
   wire         equeueint_dispatch_ready;
   wire [  3:0] equeueint_issueint_opcode;
   wire [  5:0] equeueint_issueint_rdtag;
   wire [ 31:0] equeueint_issueint_rsdata;
   wire [ 31:0] equeueint_issueint_rtdata;
   wire         equeueint_issueint_ready;
   wire         issueint_equeueint_done;

   wire         dispatch_equeuemult_en;
   wire         equeuemult_dispatch_ready;
   wire [  3:0] equeuemult_issuemult_opcode;
   wire [  5:0] equeuemult_issuemult_rdtag;
   wire [ 31:0] equeuemult_issuemult_rsdata;
   wire [ 31:0] equeuemult_issuemult_rtdata;
   wire         equeuemult_issuemult_ready;
   wire         issuemult_equeuemult_done;

   wire         dispatch_equeuediv_en;
   wire         equeuediv_dispatch_ready;
   wire [  3:0] equeuediv_issuediv_opcode;
   wire [  5:0] equeuediv_issuediv_rdtag;
   wire [ 31:0] equeuediv_issuediv_rsdata;
   wire [ 31:0] equeuediv_issuediv_rtdata;
   wire         equeuediv_issuediv_ready;
   wire         issuediv_equeuediv_done;


   initial begin
      //
      // DEBUG: setting the CDB signals to zero.
      //
      cdb_dispatch_data   = 32'h0;
      cdb_dispatch_tag    =  6'h0;
      cdb_dispatch_valid  =  1'b0;
      cdb_dispatch_branch =  1'b0;
      cdb_dispatch_taken  =  1'b0;
   end

   icache #(
      .W_IDATA        ( 32                    ),
      .W_ODATA        ( 128                   ),
      .W_ADDR         ( 6                     ),
      .INCLUDE_OREG   ( 1'b0                  )
   ) icache (
      .clk            ( clk                   ),
      .reset          ( reset                 ),
      .ifq_pcin       ( ifq_icache_pcin       ),
      .ifq_ren        ( ifq_icache_ren        ),
      .ifq_abort      ( ifq_icache_abort      ),
      .ifq_dout       ( icache_ifq_dout       ),
      .ifq_dout_valid ( icache_ifq_dout_valid )
   );

   ifq ifq (
      .clk                   ( clk                       ),
      .reset                 ( reset                     ),
      .icache_pcin           ( ifq_icache_pcin           ),
      .icache_ren            ( ifq_icache_ren            ),
      .icache_abort          ( ifq_icache_abort          ),
      .icache_dout           ( icache_ifq_dout           ),
      .icache_dout_valid     ( icache_ifq_dout_valid     ),
      .dispatch_pcout_plus4  ( ifq_dispatch_pcout_plus4  ),
      .dispatch_inst         ( ifq_dispatch_inst         ),
      .dispatch_empty        ( ifq_dispatch_empty        ),
      .dispatch_ren          ( dispatch_ifq_ren          ),
      .dispatch_branch_addr  ( dispatch_ifq_branch_addr  ),
      .dispatch_branch_valid ( dispatch_ifq_branch_valid )
   );

   dispatch dispatch (
      .clk                ( clk                       ),
      .reset              ( reset                     ),
      .ifq_pcout_plus4    ( ifq_dispatch_pcout_plus4  ),
      .ifq_inst           ( ifq_dispatch_inst         ),
      .ifq_empty          ( ifq_dispatch_empty        ),
      .ifq_ren            ( dispatch_ifq_ren          ),
      .ifq_branch_addr    ( dispatch_ifq_branch_addr  ),
      .ifq_branch_valid   ( dispatch_ifq_branch_valid ),
      .cdb_tag            ( cdb_dispatch_tag          ),
      .cdb_valid          ( cdb_dispatch_valid        ),
      .cdb_data           ( cdb_dispatch_data         ),
      .cdb_branch         ( cdb_dispatch_branch       ),
      .cdb_branch_taken   ( cdb_dispatch_taken        ),
      .equeue_imm         ( dispatch_equeue_imm       ),
      .equeue_rdtag       ( dispatch_equeue_rdtag     ),
      .equeue_rstag       ( dispatch_equeue_rstag     ),
      .equeue_rttag       ( dispatch_equeue_rttag     ),
      .equeue_rsdata      ( dispatch_equeue_rsdata    ),
      .equeue_rtdata      ( dispatch_equeue_rtdata    ),
      .equeue_rsvalid     ( dispatch_equeue_rsvalid   ),
      .equeue_rtvalid     ( dispatch_equeue_rtvalid   ),
      .equeuels_opcode    ( dispatch_equeuels_opcode  ),
      .equeuels_en        ( dispatch_equeuels_en      ),
      .equeuels_ready     ( equeuels_dispatch_ready   ),
      .equeueint_opcode   ( dispatch_equeueint_opcode ),
      .equeueint_en       ( dispatch_equeueint_en     ),
      .equeueint_ready    ( equeueint_dispatch_ready  ),
      .equeuemult_en      ( dispatch_equeuemult_en    ),
      .equeuemult_ready   ( equeuemult_dispatch_ready ),
      .equeuediv_en       ( dispatch_equeuediv_en     ),
      .equeuediv_ready    ( equeuediv_dispatch_ready  ),
      .debug_regfile_addr ( debug_regfile_addr        ),
      .debug_regfile_data ( debug_regfile_data        )
   );

   equeueint equeueint (
      .clk              ( clk                       ),
      .reset            ( reset                     ),
      .dispatch_opcode  ( dispatch_equeueint_opcode ),
      .dispatch_en      ( dispatch_equeueint_en     ),
      .dispatch_ready   ( equeueint_dispatch_ready  ),
      .dispatch_rdtag   ( dispatch_equeue_rdtag     ),
      .dispatch_rstag   ( dispatch_equeue_rstag     ),
      .dispatch_rttag   ( dispatch_equeue_rttag     ),
      .dispatch_rsdata  ( dispatch_equeue_rsdata    ),
      .dispatch_rtdata  ( dispatch_equeue_rtdata    ),
      .dispatch_rsvalid ( dispatch_equeue_rsvalid   ),
      .dispatch_rtvalid ( dispatch_equeue_rtvalid   ),
      .cdb_tag          ( cdb_equeueint_tag         ),
      .cdb_valid        ( cdb_equeueint_valid       ),
      .cdb_data         ( cdb_equeueint_data        ),
      .issueint_opcode  ( equeueint_issueint_opcode ),
      .issueint_rdtag   ( equeueint_issueint_rdtag  ),
      .issueint_rsdata  ( equeueint_issueint_rsdata ),
      .issueint_rtdata  ( equeueint_issueint_rtdata ),
      .issueint_ready   ( equeueint_issueint_ready  ),
      .issueint_done    ( issueint_equeueint_done   )
   );

   equeuels equeuels (
      .clk              ( clk                      ),
      .reset            ( reset                    ),
      .dispatch_opcode  ( dispatch_equeuels_opcode ),
      .dispatch_en      ( dispatch_equeuels_en     ),
      .dispatch_ready   ( equeuels_dispatch_ready  ),
      .dispatch_offset  ( dispatch_equeue_imm      ),
      .dispatch_rdtag   ( dispatch_equeue_rdtag    ),
      .dispatch_rstag   ( dispatch_equeue_rstag    ),
      .dispatch_rttag   ( dispatch_equeue_rttag    ),
      .dispatch_rsdata  ( dispatch_equeue_rsdata   ),
      .dispatch_rtdata  ( dispatch_equeue_rtdata   ),
      .dispatch_rsvalid ( dispatch_equeue_rsvalid  ),
      .dispatch_rtvalid ( dispatch_equeue_rtvalid  ),
      .cdb_tag          ( cdb_equeuels_tag         ),
      .cdb_valid        ( cdb_equeuels_valid       ),
      .cdb_data         ( cdb_equeuels_data        ),
      .issuels_opcode   ( equeuels_issuels_opcode  ),
      .issuels_rdtag    ( equeuels_issuels_rdtag   ),
      .issuels_addr     ( equeuels_issuels_addr    ),
      .issuels_data     ( equeuels_issuels_data    ),
      .issuels_ready    ( equeuels_issuels_ready   ),
      .issuels_done     ( issuels_equeuels_done    )
   );

   equeuediv equeuediv (
      .clk              ( clk                       ),
      .reset            ( reset                     ),
      .dispatch_en      ( dispatch_equeuediv_en     ),
      .dispatch_ready   ( equeuediv_dispatch_ready  ),
      .dispatch_rdtag   ( dispatch_equeue_rdtag     ),
      .dispatch_rstag   ( dispatch_equeue_rstag     ),
      .dispatch_rttag   ( dispatch_equeue_rttag     ),
      .dispatch_rsdata  ( dispatch_equeue_rsdata    ),
      .dispatch_rtdata  ( dispatch_equeue_rtdata    ),
      .dispatch_rsvalid ( dispatch_equeue_rsvalid   ),
      .dispatch_rtvalid ( dispatch_equeue_rtvalid   ),
      .cdb_tag          ( cdb_equeuediv_tag         ),
      .cdb_valid        ( cdb_equeuediv_valid       ),
      .cdb_data         ( cdb_equeuediv_data        ),
      .issuediv_rdtag   ( equeuediv_issuediv_rdtag  ),
      .issuediv_rsdata  ( equeuediv_issuediv_rsdata ),
      .issuediv_rtdata  ( equeuediv_issuediv_rtdata ),
      .issuediv_ready   ( equeuediv_issuediv_ready  ),
      .issuediv_done    ( issuediv_equeuediv_done   )
   );

   equeuemult equeuemult (
      .clk              ( clk                         ),
      .reset            ( reset                       ),
      .dispatch_en      ( dispatch_equeuemult_en      ),
      .dispatch_ready   ( equeuemult_dispatch_ready   ),
      .dispatch_rdtag   ( dispatch_equeue_rdtag       ),
      .dispatch_rstag   ( dispatch_equeue_rstag       ),
      .dispatch_rttag   ( dispatch_equeue_rttag       ),
      .dispatch_rsdata  ( dispatch_equeue_rsdata      ),
      .dispatch_rtdata  ( dispatch_equeue_rtdata      ),
      .dispatch_rsvalid ( dispatch_equeue_rsvalid     ),
      .dispatch_rtvalid ( dispatch_equeue_rtvalid     ),
      .cdb_tag          ( cdb_equeuemult_tag          ),
      .cdb_valid        ( cdb_equeuemult_valid        ),
      .cdb_data         ( cdb_equeuemult_data         ),
      .issuemult_rdtag  ( equeuemult_issuemult_rdtag  ),
      .issuemult_rsdata ( equeuemult_issuemult_rsdata ),
      .issuemult_rtdata ( equeuemult_issuemult_rtdata ),
      .issuemult_ready  ( equeuemult_issuemult_ready  ),
      .issuemult_done   ( issuemult_equeuemult_done   )
   );

endmodule

`endif

