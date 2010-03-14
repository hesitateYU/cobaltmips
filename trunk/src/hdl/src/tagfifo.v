
`ifndef TAGFIFO_V
`define TAGFIFO_V

module tagfifo #(
   parameter W_DATA = 6,
   parameter W_ADDR = 6
)(
   input            clk,
   input            reset,
   input            dispatch_ren,
   output reg       dispatch_full,
   output reg [5:0] dispatch_tag,
   output reg       dispatch_empty,
   input      [5:0] cdb_tag,
   input            cdb_valid
);

   localparam N_ENTRY = 2 ** W_ADDR;

   // Typically, 64 tags of 6b.
   reg [W_DATA-1:0] mem   [N_ENTRY-1:0];
   reg [W_DATA-1:0] mem_r [N_ENTRY-1:0];

   reg [W_ADDR:0] wptr, wptr_r;
   reg [W_ADDR:0] rptr, rptr_r;

   // + Pops always come from Dispatch Unit when requesting a new tag for the
   //   RD register.
   // + Pushes always come from CDB when it publishes a TAG.
   reg can_pop, can_push;
   always @(*) begin  : tag_fifo_ptr_proc
      can_pop  = ~dispatch_empty & dispatch_ren;
      can_push = ~dispatch_full  & cdb_valid;
      rptr = (can_pop)  ? rptr_r + 1 : rptr_r;
      wptr = (can_push) ? wptr_r + 1 : wptr_r;
   end

   always @(*) begin  : tag_fifo_assign_proc
      // Set default values for memory.
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) mem[i] = mem_r[i];

      mem[wptr_r] = (can_push) ? cdb_tag : mem_r[wptr_r];
      // Dispatch tag must always be available and valid (unless fifo is
      // empty).
      dispatch_tag = mem_r[rptr_r];
   end

   always @(*) begin : tag_fifo_oreg_proc
      dispatch_empty = wptr_r[W_ADDR] == rptr_r[W_ADDR] & wptr_r[W_ADDR-1:0] == rptr_r[W_ADDR-1:0];
      dispatch_full  = wptr_r[W_ADDR] != rptr_r[W_ADDR] & wptr_r[W_ADDR-1:0] == rptr_r[W_ADDR-1:0];
   end

   always @(posedge clk) begin : tag_fifo_mem_reg
      integer i;
      // FIFO must be initialized with values from 0 to (N_ENTRY-1).
      for (i = 0; i < N_ENTRY; i = i + 1) mem_r[i] <= (reset) ? i : mem[i];
   end

   always @(posedge clk) begin : tag_fifo_ptr_reg
      wptr_r <= (reset) ? 2**W_ADDR : wptr;
      rptr_r <= (reset) ? 'h0       : rptr;
   end

endmodule

`endif

