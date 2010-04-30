`ifndef DATA_CACHE_V 
`define DATA_CACHE_V

`timescale 1ns/1ps

module data_cache #(
   parameter W_DATA = 32,
   parameter W_ADDR = 127
)(
   input              clk,
   input              reset,
   input  [31:0]      data,
   input  [31:0]      address,
   input  [ 5:0]      tag,
   input              opcode,
   input              lsque_ready,
   input              issueblk_done,

   output reg [31:0]  data_out,
   output reg [ 5:0]  tag_out,
   output reg         done,
   output reg         ready
   // backdoor signals
   //
   );

   localparam N_ENTRY = 2 ** W_ADDR;

   reg [127:0] mem_r [31:0];
   reg [127:0] mem   [31:0];

   always @(posedge clk) begin : mem_assign
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         mem_r[i] <= (reset) ? 'h0 : mem[i];
      end
   end

   always @(*) begin : read_write
      if (opcode) begin
         mem[address] = data; 
      end
      else begin
         data_out = mem[address];
      end
   end

   always @(*) begin: done_ready
      done = (opcode == 1'b1 | issueblk_done == 1'b1) ? 1'b1 : 1'b0;
      ready = lsque_ready & opcode;
      tag_out = tag;
   end

endmodule

`endif

