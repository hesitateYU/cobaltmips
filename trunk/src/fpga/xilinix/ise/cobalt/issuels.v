
`ifndef ISSUELS_V
`define ISSUELS_V

`timescale 1ns/1ps

module issuels (
   input             clk,
   input             reset,
   input             ls_ready_in,
   input  [31:0]     ls_data,
   input  [31:0]     ls_addr,
   input  [31:0]     ls_imm,
   input  [ 5:0]     ls_tag,
   input             ls_opcode,

   output            ls_done_out,
   output [31:0]     ls_data_out,
   output [ 5:0]     ls_tag_out,
   output reg        ls_opcode_out,
   input             ls_done,
   output            ls_ready_out
);

   reg [31:0] addr;
   reg wen;

   always @(*) begin : issuels_addr_calc_proc
      addr = ls_addr + ls_imm;
   end


   data_cache data_cache (
      .clk           ( clk          ),
      .reset         ( reset        ),
      .data          ( ls_data      ),
      .address       ( addr         ),
      .tag           ( ls_tag       ),
      .opcode        ( opcode       ),
      .lsque_ready   ( ls_ready_in  ),
      .issueblk_done ( ls_done      ),
      .data_out      ( ls_data_out  ),
      .tag_out       ( ls_tag_out   ),
      .done          ( ls_done_out  ),
      .ready         ( ls_ready_out )
   );

endmodule

`endif

