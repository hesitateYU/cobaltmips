
`ifndef ICACHE_V
`define ICACHE_V

`include "globals.vh"

`timescale 1ns/1ps

module icache #(
   parameter integer W_DATA      = 128,
   parameter integer W_ADDR      =  32,
   parameter integer W_BYTEALIGN =   4
) (
   input                   clk,
   input                   reset,
   input      [W_ADDR-1:0] ifq_pcin,
   input                   ifq_ren,
   input                   ifq_abort,
   output reg [W_DATA-1:0] ifq_dout,
   output reg              ifq_dout_valid
);

   localparam integer W_ENTRY = 6;

   // Cache line selector.
   reg [W_ENTRY-1:0] line_sel;

   reg dout_valid, dout_valid_r;

   always @(*) begin : read_proc
      // Addresses are aligned to N_BYTEALIGN bytes, ignore the LSB.
      line_sel = ifq_pcin[W_ENTRY + W_BYTEALIGN - 1 : W_BYTEALIGN];

      dout_valid = ifq_ren;
   end

   always @(*) begin : oreg_assign
      ifq_dout_valid = dout_valid_r & ~ifq_abort;
   end

   always @(posedge clk) begin : dout_valid_reg
      dout_valid_r <= (reset) ? 0 : dout_valid;
   end

   //
   // NOTE: Read only memory (W_DATA) x (2 ^ W_ADDR). Due to FPGA limitations
   //       it only addresses W_ENTRY entries.
   //
   icache_mem icache_mem (
      .clka  ( clk      ),
      .ena   ( ifq_ren  ),
      .addra ( line_sel ),
      .douta ( ifq_dout )
   );

endmodule

`endif

