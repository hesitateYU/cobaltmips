
`ifndef REGFILE_V
`define REGFILE_V

`timescale 1ns/1ps

module regfile #(
   parameter integer W_ADDR =  5,
   parameter integer W_DATA = 32
)(
   input                   clk,
   input                   reset,

   // Single write port, data comes from CDB and wen and address
   // is encoded as one-hot from Register Status Table. If one-hot
   // vector is all zeros then don't write anything.
   input      [W_DATA-1:0] cdb_wdata,
   input      [W_DATA-1:0] rst_wen_onehot,

   // 2 read ports for RS and RT registers.
   input      [W_ADDR-1:0] dispatch_rsaddr,
   input      [W_ADDR-1:0] dispatch_rtaddr,
   input      [W_ADDR-1:0] debug_addr,
   output reg [W_DATA-1:0] dispatch_rsdata,
   output reg [W_DATA-1:0] dispatch_rtdata,
   output reg [W_DATA-1:0] debug_data
);

   localparam integer N_ENTRY = 2 ** W_ADDR;

   reg  [W_DATA-1:0] mem   [N_ENTRY-1:0];
   reg  [W_DATA-1:0] mem_r [N_ENTRY-1:0];

   always @(mem_r[31], mem_r[30], mem_r[29], mem_r[28], mem_r[27], mem_r[26], mem_r[25], mem_r[24], mem_r[23], mem_r[22], mem_r[21], mem_r[20], mem_r[19], mem_r[18], mem_r[17], mem_r[16], mem_r[15], mem_r[14], mem_r[13], mem_r[12], mem_r[11], mem_r[10], mem_r[ 9], mem_r[ 8], mem_r[ 7], mem_r[ 6], mem_r[ 5], mem_r[ 4], mem_r[ 3], mem_r[ 2], mem_r[ 1], mem_r[ 0]) begin : reg_file_write_proc
      integer i, count;
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         mem[i] = (rst_wen_onehot[i]) ? cdb_wdata : mem_r[i];
      end

      // Make sure one-hot vector has one (or zero) active bits.
      //count = 0;
      //for (i = 0; i < N_ENTRY; i = i + 1) if (rst_wen_onehot[i]) count = count + 1;
      //if (count > 1) $display("@%p [REGFILE] FATAL: More than one write in one-hot vector 0b%b", $time, rst_wen_onehot);
   end

   always @(mem_r[31], mem_r[30], mem_r[29], mem_r[28], mem_r[27], mem_r[26], mem_r[25], mem_r[24], mem_r[23], mem_r[22], mem_r[21], mem_r[20], mem_r[19], mem_r[18], mem_r[17], mem_r[16], mem_r[15], mem_r[14], mem_r[13], mem_r[12], mem_r[11], mem_r[10], mem_r[ 9], mem_r[ 8], mem_r[ 7], mem_r[ 6], mem_r[ 5], mem_r[ 4], mem_r[ 3], mem_r[ 2], mem_r[ 1], mem_r[ 0]) begin : reg_file_read_proc
      dispatch_rsdata = mem_r[dispatch_rsaddr];
      dispatch_rtdata = mem_r[dispatch_rtaddr];
      debug_data      = mem_r[debug_addr];
   end

   always @(posedge clk) begin : reg_file_mem_assign
      //integer i;
      //for (i = 0; i < N_ENTRY; i = i + 1) begin
      //   mem_r[i] <= (reset) ? i : mem[i];
      //end
      mem_r[31] <= (reset) ? 31 : mem[31];
      mem_r[30] <= (reset) ? 30 : mem[30];
      mem_r[29] <= (reset) ? 29 : mem[29];
      mem_r[28] <= (reset) ? 28 : mem[28];
      mem_r[27] <= (reset) ? 27 : mem[27];
      mem_r[26] <= (reset) ? 26 : mem[26];
      mem_r[25] <= (reset) ? 25 : mem[25];
      mem_r[24] <= (reset) ? 24 : mem[24];
      mem_r[23] <= (reset) ? 23 : mem[23];
      mem_r[22] <= (reset) ? 22 : mem[22];
      mem_r[21] <= (reset) ? 21 : mem[21];
      mem_r[20] <= (reset) ? 20 : mem[20];
      mem_r[19] <= (reset) ? 19 : mem[19];
      mem_r[18] <= (reset) ? 18 : mem[18];
      mem_r[17] <= (reset) ? 17 : mem[17];
      mem_r[16] <= (reset) ? 16 : mem[16];
      mem_r[15] <= (reset) ? 15 : mem[15];
      mem_r[14] <= (reset) ? 14 : mem[14];
      mem_r[13] <= (reset) ? 13 : mem[13];
      mem_r[12] <= (reset) ? 12 : mem[12];
      mem_r[11] <= (reset) ? 11 : mem[11];
      mem_r[10] <= (reset) ? 10 : mem[10];
      mem_r[ 9] <= (reset) ?  9 : mem[ 9];
      mem_r[ 8] <= (reset) ?  8 : mem[ 8];
      mem_r[ 7] <= (reset) ?  7 : mem[ 7];
      mem_r[ 6] <= (reset) ?  6 : mem[ 6];
      mem_r[ 5] <= (reset) ?  5 : mem[ 5];
      mem_r[ 4] <= (reset) ?  4 : mem[ 4];
      mem_r[ 3] <= (reset) ?  3 : mem[ 3];
      mem_r[ 2] <= (reset) ?  2 : mem[ 2];
      mem_r[ 1] <= (reset) ?  1 : mem[ 1];
      mem_r[ 0] <= (reset) ?  0 : mem[ 0];
   end

endmodule

`endif

