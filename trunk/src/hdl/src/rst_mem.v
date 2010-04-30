
`ifndef RST_MEM_V
`define RST_MEM_V

`timescale 1ns/1ps

module rst_mem #(
   parameter integer W_ADDR       = 5,
   parameter integer W_DATA       = 7,
   parameter integer W_TAG        = 6,
   parameter integer INCLUDE_OREG = 1
)(
   input                   clk,
   input                   reset,

   input      [W_ADDR-1:0] rport0_addr,
   output reg [W_DATA-1:0] rport0_data,
   input      [W_ADDR-1:0] rport1_addr,
   output reg [W_DATA-1:0] rport1_data,

   input      [W_ADDR-1:0] wport0_addr,
   input      [W_DATA-1:0] wport0_data,
   input                   wport0_wen,
   input      [W_ADDR-1:0] wport1_addr,
   input      [W_DATA-1:0] wport1_data,
   input                   wport1_wen,

   input      [ W_TAG-1:0] lookup_tag,
   output reg              lookup_found,
   output reg [W_ADDR-1:0] lookup_addr
);

   localparam N_ENTRY = 2 ** W_ADDR;

   reg [W_DATA-1:0] mem   [N_ENTRY-1:0];
   reg [W_DATA-1:0] mem_r [N_ENTRY-1:0];

   reg [W_DATA-1:0] dout0, dout0_r;
   reg [W_DATA-1:0] dout1, dout1_r;

   always @(*) begin : rst_mem_write_proc
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) mem[i] = mem_r[i];

      if (wport0_wen) mem[wport0_addr] = wport0_data;
      if (wport1_wen) mem[wport1_addr] = wport1_data;

      //
      // TODO: use an assertion.
      //
      if (wport0_addr == wport1_addr && wport0_wen && wport1_wen)
         $error("ERROR: Can't write data from different ports at the same address 0x%h", rport0_addr);
   end

   always @(*) begin : rst_mem_read_proc
      dout0 = mem_r[rport0_addr];
      dout1 = mem_r[rport1_addr];
   end

   always @(*) begin : rst_oreg_assign_proc
      if (INCLUDE_OREG) begin
         rport0_data = dout0_r;
         rport1_data = dout1_r;
      end else begin
         rport0_data = dout0;
         rport1_data = dout1;
      end
   end

   always @(*) begin : rst_lookup_proc
      integer i;
      // Set defaults to avoid latches.
      lookup_found = '0;
      lookup_addr  = '0;
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         if (lookup_tag == mem_r[i][W_TAG-1:0]) begin
            lookup_found = 1;
            lookup_addr  = i;
         end
      end
   end

   always @(posedge clk) begin : rst_dout_reg
      dout0_r <= (reset) ? '0 : dout0;
      dout1_r <= (reset) ? '0 : dout1;
   end

   always @(posedge clk) begin : rst_mem_assign
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         mem_r[i] <= (reset) ? '0 : mem[i];
      end
   end

endmodule

`endif

