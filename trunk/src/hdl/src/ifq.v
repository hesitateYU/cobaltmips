
`ifndef IFQ_V
`define IFQ_V

module ifq(
   input          clk,
   input          rst,
   // Interface with instruction cache.
   output reg  [31:0] icache_pc_in,
   output reg         icache_rd_en,
   output reg         icache_abort,
   input      [127:0] icache_dout,
   input              icache_dout_valid,
   // Interface with dispatch unit.
   output reg  [31:0] dispatch_pc_out,
   output reg  [31:0] dispatch_inst,
   output reg         dispatch_empty,
   input              dispatch_rd_en,
   input       [31:0] dispatch_jump_branch_addr,
   input              dispatch_jump_branch_valid
);

   //
   // TODO: replace with a RAM block for FPGA implementation.
   //
   // Internal FIFO memory, 128x4.
   reg [127:0] mem   [3:0];
   reg [127:0] mem_r [3:0];

   reg is_full, is_empty;

   // Internal mux signals, one coming form memory and the other coming
   // directly from input (icache).
   reg [31:0] bypass_from_mem, bypass_from_input, bypass_mux_out;
   reg [127:0] inst_from_mem, inst_from_input;

   // Read and write pointers.
   reg [4:0] wptr, wptr_r;
   reg [4:0] rptr, rptr_r;

   reg [31:0] pc_in,  pc_in_r;
   reg [31:0] pc_out, pc_out_r;

   always @(*) begin : fifo_proc
      is_empty = (wptr_r[4] == rptr_r[4]) && (wptr_r[3:2] == rptr_r[3:2]);
      is_full  = (wptr_r[4] != rptr_r[4]) && (wptr_r[3:2] == rptr_r[3:2]);

      // Read from icache 4 instructions at a time, and write to dispatch unit
      // only one instruction at a time.
      wptr = (~is_full  & icache_dout_valid) ? wptr_r + 4 : wptr_r;
      rptr = (~is_empty & dispatch_rd_en)    ? rptr_r + 1 : rptr_r;

      inst_from_input = icache_dout;
      inst_from_mem   = mem_r[rptr_r[3:2]];
   end

   always @(*) begin : pc_calc_proc
      // Address calculation when branch/jump detected.
      if (dispatch_jump_branch_valid) begin
         pc_in  = dispatch_jump_branch_addr;
         pc_out = (~is_empty & dispatch_rd_en) ? pc_out_r + 4 : pc_out_r;
         icache_abort = 1'b1;
      end else begin
         // No branch/jump, read 4 instructions at a time from icache.
         pc_in  = (~is_full & icache_dout_valid) ? pc_in_r + 16 : pc_in_r;
         pc_out = pc_out_r;
         icache_abort = 1'b0;
      end
   end

   always @(*) begin : bypass_inst_mux_proc
      case (rptr_r[1:0])
         2'b00: bypass_from_input = inst_from_input[ 31: 0];
         2'b01: bypass_from_input = inst_from_input[ 63:32];
         2'b10: bypass_from_input = inst_from_input[ 95:64];
         2'b11: bypass_from_input = inst_from_input[127:65];
      endcase

      case (rptr_r[1:0])
         2'b00: bypass_from_mem = inst_from_mem[ 31: 0];
         2'b01: bypass_from_mem = inst_from_mem[ 63:32];
         2'b10: bypass_from_mem = inst_from_mem[ 95:64];
         2'b11: bypass_from_mem = inst_from_mem[127:65];
      endcase

      case (dispatch_jump_branch_valid)
         1'b0: bypass_mux_out = bypass_from_input;
         1'b1: bypass_mux_out = bypass_from_mem;
      endcase
   end

   always @(*) begin : oreg_proc
      // Interface with icache.
      icache_pc_in = pc_in_r;
      icache_rd_en = ~is_full;
      icache_abort = 1'b0;

      // Interface with dispatch unit.
      dispatch_pc_out = pc_out_r;
      dispatch_inst   = bypass_mux_out;
      dispatch_empty  = is_empty;
   end

   always @(*) begin : mem_proc
      integer i;
      for(i = 0; i < 4; i = i + 1) begin
         mem[i] = mem_r[i];
      end

      mem[wptr_r[3:2]] = (icache_dout_valid) ? icache_dout : mem_r[wptr_r[3:2]];
   end

   always @(posedge clk) begin : ptr_reg
      rptr_r <= (rst) ? 5'b0 : rptr;
      wptr_r <= (rst) ? 5'b0 : wptr;
   end

   always @(posedge clk) begin : pc_reg
      pc_in_r  <= (rst) ? 32'b0 : pc_in;
      pc_out_r <= (rst) ? 32'b0 : pc_out;
   end

   always @(posedge clk) begin : mem_reg
      integer i;
      for(i = 0; i < 4; i = i + 1) begin
         mem_r[i] <= (rst) ? 'h0 : mem[i];
      end
   end

endmodule

`endif

