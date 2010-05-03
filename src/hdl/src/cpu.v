
`ifndef CPU_V
`define CPU_V

`timescale 1ns/1ps

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
   wire         dispatch_ifq_ren;
   wire [ 31:0] dispatch_ifq_branch_addr;
   wire         dispatch_ifq_branch_valid;

   reg  [ 31:0] cdb_data;
   reg  [  5:0] cdb_tag;
   reg          cdb_valid;
   reg          cdb_branch;
   reg          cdb_branch_taken;

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
   wire [  5:0] equeueint_issueint_opcode;
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


   icache #(
      .W_DATA         ( 128 ),
      .W_ADDR         (  32 )
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
      .cdb_tag            ( cdb_tag                   ),
      .cdb_valid          ( cdb_valid                 ),
      .cdb_data           ( cdb_data                  ),
      .cdb_branch         ( cdb_branch                ),
      .cdb_branch_taken   ( cdb_taken                 ),
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
      .cdb_tag          ( cdb_tag                   ),
      .cdb_valid        ( cdb_valid                 ),
      .cdb_data         ( cdb_data                  ),
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
      .cdb_tag          ( cdb_tag                  ),
      .cdb_valid        ( cdb_valid                ),
      .cdb_data         ( cdb_data                 ),
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
      .cdb_tag          ( cdb_tag                   ),
      .cdb_valid        ( cdb_valid                 ),
      .cdb_data         ( cdb_data                  ),
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
      .cdb_tag          ( cdb_tag                     ),
      .cdb_valid        ( cdb_valid                   ),
      .cdb_data         ( cdb_data                    ),
      .issuemult_rdtag  ( equeuemult_issuemult_rdtag  ),
      .issuemult_rsdata ( equeuemult_issuemult_rsdata ),
      .issuemult_rtdata ( equeuemult_issuemult_rtdata ),
      .issuemult_ready  ( equeuemult_issuemult_ready  ),
      .issuemult_done   ( issuemult_equeuemult_done   )
   );

   issue issue(
      .clk                       ( clk                          ),
      .reset                     ( reset                        ),
      .issueint_opcode           ( equeueint_issueint_opcode    ),
      .issueint_rsdata           ( equeueint_issueint_rsdata    ),
      .issueint_rtdata           ( equeueint_issueint_rtdata    ),
      .issueint_rdtag            ( equeueint_issueint_rdtag     ),
      .issuels_opcode            ( equeuels_issuels_opcode      ),
      .issuels_rsdata            ( equeuels_issuels_rsdata      ),
      .issuels_rtdata            ( equeuels_issuels_rtdata      ),
      .issuels_rdtag             ( equeuels_issuels_rdtag       ),
      .issuediv_rsdata           ( equeuediv_issuediv_rsdata    ),
      .issuediv_rtdata           ( equeuediv_issuediv_rtdata    ),
      .issuediv_rdtag            ( equeuediv_issuediv_rdtag     ),
      .issuemult_rsdata          ( equeuemult_issuemult_rsdata  ),
      .issuemult_rtdata          ( equeuemult_issuemult_rtdata  ),
      .issuemult_rdtag           ( equeuemult_issuemult_rdtag   ),
      .issueint_ready            ( equeueint_issueint_ready     ),
      .issuemult_ready           ( equeuemult_issuemult_ready   ),
      .issuediv_ready            ( equeuediv_issuediv_ready     ),
      .issuels_ready             ( equeuels_issuels_ready       ),
      .issueint_carryout         ( issueint_carryout            ),
      .issueint_overflow         ( issueint_overflow            ),
      .issuediv_equeuediv_done   ( issuediv_equeuediv_done      ),
      .issueint_equeueint_done   ( issueint_equeueint_done      ),
      .issuemult_equeuemult_done ( issuemult_equeuemult_done    ),
      .issuels_equeuels_done     ( issuels_equeuels_done        ),
      .cdb_data                  ( cdb_data                     ),
      .cdb_tag                   ( cdb_tag                      ),
      .cdb_valid                 ( cdb_valid                    ),
      .cdb_branch                ( cdb_branch                   ),
      .cdb_branch_taken          ( cdb_branch_taken             )
   );

endmodule

`endif

