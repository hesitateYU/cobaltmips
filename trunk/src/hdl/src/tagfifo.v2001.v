
`ifndef TAGFIFO_V
`define TAGFIFO_V

`timescale 1ns/1ps

module tagfifo #(
   parameter integer W_ENTRY = 6,
   parameter integer W_TAG   = 6
)(
   input                  clk,
   input                  reset,
   input                  dispatch_ren,
   output reg             dispatch_full,
   output reg             dispatch_empty,
   output reg [W_TAG-1:0] dispatch_tag,
   input      [W_TAG-1:0] cdb_tag,
   input                  cdb_valid
);

   localparam integer N_ENTRY = 2 ** W_ENTRY;

   // Typically, 64 tags of 6b.
   reg [W_TAG-1:0] mem   [N_ENTRY-1:0];
   reg [W_TAG-1:0] mem_r [N_ENTRY-1:0];

   reg [W_ENTRY:0] wptr, wptr_r, wptr_i;
   reg [W_ENTRY:0] rptr, rptr_r, rprt_i;

   reg is_empty, is_full;
   reg is_pop, is_push;
   // + Pops always come from Dispatch Unit when requesting a new tag for the
   //   RD register.
   // + Pushes always come from CDB when it publishes a (valid) TAG.
   always @(mem_r[63], mem_r[62], mem_r[61], mem_r[60], mem_r[59], mem_r[58], mem_r[57], mem_r[56], mem_r[55], mem_r[54], mem_r[53], mem_r[52], mem_r[51], mem_r[50], mem_r[49], mem_r[48], mem_r[47], mem_r[46], mem_r[45], mem_r[44], mem_r[43], mem_r[42], mem_r[41], mem_r[40], mem_r[39], mem_r[38], mem_r[37], mem_r[36], mem_r[35], mem_r[34], mem_r[33], mem_r[32], mem_r[31], mem_r[30], mem_r[29], mem_r[28], mem_r[27], mem_r[26], mem_r[25], mem_r[24], mem_r[23], mem_r[22], mem_r[21], mem_r[20], mem_r[19], mem_r[18], mem_r[17], mem_r[16], mem_r[15], mem_r[14], mem_r[13], mem_r[12], mem_r[11], mem_r[10], mem_r[ 9], mem_r[ 8], mem_r[ 7], mem_r[ 6], mem_r[ 5], mem_r[ 4], mem_r[ 3], mem_r[ 2], mem_r[ 1], mem_r[ 0]) begin : tagfifo_oreg_proc
      // Dispatch tag must always be available and valid (unless fifo is
      // empty).
      dispatch_tag   = mem_r[rptr_r[W_ENTRY-1:0]];
      dispatch_empty = is_empty;
      dispatch_full  = is_full;
   end

   always @(*) begin : tagfifo_flags_proc
      is_empty = wptr_r[W_ENTRY] == rptr_r[W_ENTRY] & wptr_r[W_ENTRY-1:0] == rptr_r[W_ENTRY-1:0];
      is_full  = wptr_r[W_ENTRY] != rptr_r[W_ENTRY] & wptr_r[W_ENTRY-1:0] == rptr_r[W_ENTRY-1:0];

      is_pop  = ~dispatch_empty & dispatch_ren;
      is_push = ~dispatch_full  & cdb_valid;

      rptr = (is_pop)  ? rptr_r + 1 : rptr_r;
      wptr = (is_push) ? wptr_r + 1 : wptr_r;
   end

   always @(mem_r[63], mem_r[62], mem_r[61], mem_r[60], mem_r[59], mem_r[58], mem_r[57], mem_r[56], mem_r[55], mem_r[54], mem_r[53], mem_r[52], mem_r[51], mem_r[50], mem_r[49], mem_r[48], mem_r[47], mem_r[46], mem_r[45], mem_r[44], mem_r[43], mem_r[42], mem_r[41], mem_r[40], mem_r[39], mem_r[38], mem_r[37], mem_r[36], mem_r[35], mem_r[34], mem_r[33], mem_r[32], mem_r[31], mem_r[30], mem_r[29], mem_r[28], mem_r[27], mem_r[26], mem_r[25], mem_r[24], mem_r[23], mem_r[22], mem_r[21], mem_r[20], mem_r[19], mem_r[18], mem_r[17], mem_r[16], mem_r[15], mem_r[14], mem_r[13], mem_r[12], mem_r[11], mem_r[10], mem_r[ 9], mem_r[ 8], mem_r[ 7], mem_r[ 6], mem_r[ 5], mem_r[ 4], mem_r[ 3], mem_r[ 2], mem_r[ 1], mem_r[ 0]) begin  : tagfifo_assign_proc
      // Set default values for memory.
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) mem[i] = mem_r[i];
      wptr_i = wptr_r[W_ENTRY-1:0];
      mem[wptr_i] = (is_push) ? cdb_tag : mem_r[wptr_i];
   end


   always @(posedge clk) begin : tagfifo_mem_reg
      //integer i;
      // FIFO must be initialized with values from 0 to (N_ENTRY-1).
      //for (i = 0; i < N_ENTRY; i = i + 1) begin
      //   mem_r[i] <= (reset) ? i : mem[i];
      //end
      mem_r[63] <= (reset) ? 63 : mem[63];
      mem_r[62] <= (reset) ? 62 : mem[62];
      mem_r[61] <= (reset) ? 61 : mem[61];
      mem_r[60] <= (reset) ? 60 : mem[60];
      mem_r[59] <= (reset) ? 59 : mem[59];
      mem_r[58] <= (reset) ? 58 : mem[58];
      mem_r[57] <= (reset) ? 57 : mem[57];
      mem_r[56] <= (reset) ? 56 : mem[56];
      mem_r[55] <= (reset) ? 55 : mem[55];
      mem_r[54] <= (reset) ? 54 : mem[54];
      mem_r[53] <= (reset) ? 53 : mem[53];
      mem_r[52] <= (reset) ? 52 : mem[52];
      mem_r[51] <= (reset) ? 51 : mem[51];
      mem_r[50] <= (reset) ? 50 : mem[50];
      mem_r[49] <= (reset) ? 49 : mem[49];
      mem_r[48] <= (reset) ? 48 : mem[48];
      mem_r[47] <= (reset) ? 47 : mem[47];
      mem_r[46] <= (reset) ? 46 : mem[46];
      mem_r[45] <= (reset) ? 45 : mem[45];
      mem_r[44] <= (reset) ? 44 : mem[44];
      mem_r[43] <= (reset) ? 43 : mem[43];
      mem_r[42] <= (reset) ? 42 : mem[42];
      mem_r[41] <= (reset) ? 41 : mem[41];
      mem_r[40] <= (reset) ? 40 : mem[40];
      mem_r[39] <= (reset) ? 39 : mem[39];
      mem_r[38] <= (reset) ? 38 : mem[38];
      mem_r[37] <= (reset) ? 37 : mem[37];
      mem_r[36] <= (reset) ? 36 : mem[36];
      mem_r[35] <= (reset) ? 35 : mem[35];
      mem_r[34] <= (reset) ? 34 : mem[34];
      mem_r[33] <= (reset) ? 33 : mem[33];
      mem_r[32] <= (reset) ? 32 : mem[32];
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

   always @(posedge clk) begin : tagfifo_ptr_reg
      // Initialized as FULL.
      wptr_r <= (reset) ? N_ENTRY : wptr;
      rptr_r <= (reset) ? 'h0     : rptr;
   end

endmodule

`endif

