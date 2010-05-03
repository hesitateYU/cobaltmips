
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
   always @(*) begin : tagfifo_oreg_proc
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

   always @(*) begin  : tagfifo_assign_proc
      // Set default values for memory.
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) mem[i] = mem_r[i];
      wptr_i = wptr_r[W_ENTRY-1:0];
      mem[wptr_i] = (is_push) ? cdb_tag : mem_r[wptr_i];
   end


   always @(posedge clk) begin : tagfifo_mem_reg
      integer i;
      // FIFO must be initialized with values from 0 to (N_ENTRY-1).
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         mem_r[i] <= (reset) ? i : mem[i];
      end
   end

   always @(posedge clk) begin : tagfifo_ptr_reg
      // Initialized as FULL.
      wptr_r <= (reset) ? N_ENTRY : wptr;
      rptr_r <= (reset) ? 'h0     : rptr;
   end

endmodule

`endif

