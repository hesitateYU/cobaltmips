
`ifndef DCACHE_V
`define DCACHE_V

`timescale 1ns/1ps

module dcache (
   input  wire        clk,
   input  wire        wen,
   input  wire [15:0] addr,
   input  wire [31:0] wdata,
   output wire [31:0] rdata
);

   dcache_mem dcache_mem (
      .clka  ( clk   ),
      .ena   ( en    ),
      .wea   ( wen   ),
      .addra ( addr  ),
      .dina  ( wdata ),
      .douta ( rdata )
   );

endmodule

`endif

