
`ifndef IFQ_V
`define IFQ_V

`timescale 1ns/1ps

module ifq (
   input              clk,
   input              reset,
   // Interface with instruction cache.
   output reg  [31:0] icache_pcin,
   output reg         icache_ren,
   output reg         icache_abort,
   input      [127:0] icache_dout,
   input              icache_dout_valid,
   // Interface with dispatch unit.
   output reg  [31:0] dispatch_pcout_plus4,
   output reg  [31:0] dispatch_inst,
   output reg         dispatch_empty,
   input              dispatch_ren,
   input       [31:0] dispatch_branch_addr,
   input              dispatch_branch_valid
);

   // Internal FIFO memory, 128x4.
   reg  [127:0] mem   [3:0];
   reg  [127:0] mem_r [3:0];

   // Read and write pointers.
   reg  [  4:0] wptr, wptr_r;
   reg  [  4:0] rptr, rptr_r;
   reg  [  4:0] rptr_branch, wptr_branch;

   reg  [ 31:0] pcin,  pcin_r;
   reg  [ 31:0] pcout, pcout_r;
   reg  [ 31:0] pcout_branch, pcin_branch;

   reg icache_req, icache_req_r;
   reg dispatch_req;
   reg is_full, will_be_full, is_empty, will_be_empty;
   reg do_inc_rptr, do_inc_wptr;
   reg do_bypass_mem;

   always @(*) begin : fifo_full_empty_proc
      is_empty = (wptr_r[4] == rptr_r[4]) && (wptr_r[3:2] == rptr_r[3:2]);
      is_full  = (wptr_r[4] != rptr_r[4]) && (wptr_r[3:2] == rptr_r[3:2]);
      will_be_empty = (wptr[4] == rptr[4]) && (wptr[3:2] == rptr[3:2]);
      will_be_full  = (wptr[4] != rptr[4]) && (wptr[3:2] == rptr[3:2]);
   end

   always @(*) begin : fifo_ptr_proc
      do_bypass_mem = is_empty & icache_req_r;
      dispatch_req = (~is_empty & dispatch_ren) | do_bypass_mem;
      icache_req = ~will_be_full;

      do_inc_rptr = dispatch_req;
      do_inc_wptr = icache_req_r & icache_dout_valid;

      // If a branch/jump is detected the IFQ must be emptied, that is,
      // both write/read pointers must point to the same address (0).
      // Read from icache 4 instructions at a time, and write to dispatch unit
      // only one instruction at a time.
      rptr_branch = {3'h0, dispatch_branch_addr[1:0]};
      wptr_branch = {5'h0};
      rptr = (dispatch_branch_valid) ? rptr_branch : ( (do_inc_rptr) ? rptr_r + 1 : rptr_r );
      wptr = (dispatch_branch_valid) ? wptr_branch : ( (do_inc_wptr) ? wptr_r + 4 : wptr_r );

      // 4 byte alignment for PC.
      // When no branch/jump, read 1 cache line (4 instructions at a time) from icache.
      pcout_branch = {dispatch_branch_addr[31:2], 2'h0};
      pcin_branch  = {dispatch_branch_addr[31:4], 4'h0};
      pcout = (dispatch_branch_valid) ? pcout_branch : ( (do_inc_rptr) ? pcout_r + 4 : pcout_r );
      pcin  = (dispatch_branch_valid) ? pcin_branch  : ( (icache_req)  ? pcin_r + 16 : pcin_r );
   end

   // Internal mux signals, one coming form memory and the other coming
   // directly from input (icache).
   reg  [ 31:0] inst_from_mem_mux_out, inst_from_input_mux_out, bypass_mux_out;
   reg  [127:0] line_from_mem, line_from_input;
   always @(*) begin : bypass_inst_mux_proc
      line_from_input = icache_dout;
      case (rptr_r[1:0])
         2'b00: inst_from_input_mux_out = line_from_input[ 31: 0];
         2'b01: inst_from_input_mux_out = line_from_input[ 63:32];
         2'b10: inst_from_input_mux_out = line_from_input[ 95:64];
         2'b11: inst_from_input_mux_out = line_from_input[127:96];
      endcase

      line_from_mem = mem_r[rptr_r[3:2]];
      case (rptr_r[1:0])
         2'b00: inst_from_mem_mux_out = line_from_mem[ 31: 0];
         2'b01: inst_from_mem_mux_out = line_from_mem[ 63:32];
         2'b10: inst_from_mem_mux_out = line_from_mem[ 95:64];
         2'b11: inst_from_mem_mux_out = line_from_mem[127:96];
      endcase

      case (do_bypass_mem)
         1'b0: bypass_mux_out = inst_from_mem_mux_out;
         1'b1: bypass_mux_out = inst_from_input_mux_out;
      endcase
   end

   always @(*) begin : ifq_oreg_proc
      //
      // TODO: when should abort the reading from icache? If readings take much
      //       more than 1 cycle then it makes sense, but how to detect when we
      //       are still waiting for the instruction to arrive? We need to set
      //       a register indicating that icache_ren has been issued but
      //       icache_dout_valid hasn't arrived yet.
      //       For now, we never set icache_abort.
      //
      icache_abort = dispatch_branch_valid & icache_req_r;
      icache_pcin  = (dispatch_branch_valid) ? dispatch_branch_addr : pcin_r;
      icache_ren   = icache_req;

      dispatch_pcout_plus4 = (dispatch_branch_valid) ? pcout : pcout_r;
      dispatch_inst        = bypass_mux_out;
      dispatch_empty       = is_empty;
   end

   always @(*) begin : ifq_mem_proc
      integer i;
      for(i = 0; i < 4; i = i + 1) mem[i] = mem_r[i];

      mem[wptr_r[3:2]] = (icache_dout_valid & icache_req_r) ? icache_dout : mem_r[wptr_r[3:2]];
   end

   always @(posedge clk) begin : ifq_flags_reg
      icache_req_r   <= (reset) ? 'h0 : icache_req;
   end

   always @(posedge clk) begin : ifq_ptr_reg
      rptr_r <= (reset) ? 'h0 : rptr;
      wptr_r <= (reset) ? 'h0 : wptr;
   end

   always @(posedge clk) begin : ifq_pc_reg
      pcin_r  <= (reset) ? 'h0 : pcin;
      pcout_r <= (reset) ? 'h0 : pcout;
   end

   always @(posedge clk) begin : ifq_mem_reg
      integer i;
      for(i = 0; i < 4; i = i + 1) begin
         mem_r[i] <= (reset) ? 'h0 : mem[i];
      end
   end

endmodule

`endif

