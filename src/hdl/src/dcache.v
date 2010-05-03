
`ifndef DCACHE_V
`define DCACHE_V

`timescale 1ns/1ps

module dcache (
   input  wire        clk,
   input  wire        wen, //opcode
   input  wire [31:0] addr,
   input  wire [31:0] wdata,
   input  wire [ 5:0] tag_in,
   output reg  [ 5:0] tag_out,
   output wire [31:0] rdata
);

   localparam integer W_ADDR = 7;
   reg [W_ADDR-1:0] line_sel;

   always @(*) begin: ls_ready_proc
      tag_out  = tag_in;
      line_sel = addr[W_ADDR-1:0];
   end

   dcache_mem dcache_mem (
      .clka  ( clk      ),
      .wea   ( wen      ),
      .addra ( line_sel ),
      .dina  ( wdata    ),
      .douta ( rdata    )
   );

endmodule

`endif

