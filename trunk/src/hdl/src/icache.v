
`ifndef ICACHE_V
`define ICACHE_V

`include "globals.vh"

`timescale 1ns/1ps

module icache #(
   parameter integer W_DATA      = 128,
   parameter integer W_ADDR      =  32,
   parameter integer N_BYTEALIGN =   4
) (
   input              clk,
   input              reset,
   input      [31:0]  ifq_pcin,
   input              ifq_ren,
   input              ifq_abort,
   output reg [127:0] ifq_dout,
   output reg         ifq_dout_valid
);

   // Cache line selector.
   reg [W_ADDR-N_BYTEALIGN-1:0] line_sel;

   reg dout_valid, dout_valid_r;

   always @(*) begin : icache_read_proc
      // Addresses are aligned to N_BYTEALIGN bytes, ignore the LSB.
      line_sel = ifq_pcin[W_ADDR-1:N_BYTEALIGN];

      dout_valid = ifq_ren & ~ifq_abort;
   end

   always @(*) begin : icache_oreg_assign
      ifq_dout_valid = dout_valid_r & ~ifq_abort;
   end

   always @(posedge clk) begin : icache_dout_valid_proc
      dout_valid_r <= (reset) ? 0 : dout_valid;
   end

   //
   // NOTE: Read only memory (W_DATA) x (2 ^ W_ADDR).
   //
   icache_mem icache_mem (
      .clka  ( clk      ),
      .ena   ( ifq_ren  ),
      .addra ( line_sel ),
      .douta ( ifq_dout )
   );

endmodule

`endif

