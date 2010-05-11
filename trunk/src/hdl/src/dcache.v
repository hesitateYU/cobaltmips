
`ifndef DCACHE_V
`define DCACHE_V

`timescale 1ns/1ps

module dcache (
   input  wire        clk,
   input  wire        wen, //opcode
   input  wire [31:0] addr,
   input  wire [31:0] wdata,
   output reg         wen_r,
   input  wire [ 5:0] tag_in,
   output reg  [ 5:0] tag_out,
   output wire [31:0] rdata
);

   localparam integer W_ADDR = 7;
   reg [W_ADDR-1:0] line_sel;

   always @(*) begin: ls_ready_proc
      line_sel = addr[W_ADDR-1:0];
   end

   always @(posedge clk) begin : dcache_wen_reg
      wen_r   <= wen;
      tag_out <= tag_in;
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

