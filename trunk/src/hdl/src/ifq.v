
`ifndef IFQ_V
`define IFQ_V

module ifq(
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

   //
   // TODO: replace with a RAM block for FPGA implementation.
   //
   // Internal FIFO memory, 128x4.
   reg  [127:0] mem   [3:0];
   reg  [127:0] mem_r [3:0];

   // Read and write pointers.
   reg  [  4:0] wptr, wptr_r;
   reg  [  4:0] rptr, rptr_r;

   reg  [ 31:0] pcin,  pcin_r;
   reg  [ 31:0] pcout, pcout_r;

   reg is_full, is_empty;
   reg is_valid_read,  do_inc_rptr;
   reg is_valid_write, do_inc_wptr;
   reg bypass_mux_sel;
   always @(*) begin : fifo_proc
      is_empty = (wptr_r[4] == rptr_r[4]) && (wptr_r[3:2] == rptr_r[3:2]);
      is_full  = (wptr_r[4] != rptr_r[4]) && (wptr_r[3:2] == rptr_r[3:2]);

      bypass_mux_sel = dispatch_branch_valid | is_empty;
      is_valid_read  = dispatch_ren      & ~is_empty;
      is_valid_write = icache_dout_valid & ~is_full;
      do_inc_rptr    = is_valid_read | bypass_mux_sel;
      do_inc_wptr    = is_valid_write;

      // If a branch/jump is detected the IFQ must be emptied, that is,
      // both write/read pointers must point to the same address (0).
      // Read from icache 4 instructions at a time, and write to dispatch unit
      // only one instruction at a time.
      rptr = (dispatch_branch_valid) ? 'h0 : (do_inc_rptr) ? rptr_r + 1 : rptr_r;
      wptr = (dispatch_branch_valid) ? 'h0 : (do_inc_wptr) ? wptr_r + 4 : wptr_r;

      // 4 byte alignment for PC.
      // When no branch/jump, read 1 cache line (4 instructions at a time) from icache.
      pcout = (dispatch_branch_valid) ? dispatch_branch_addr +  4 : (do_inc_rptr) ? pcout_r + 4 : pcout_r;
      pcin  = (dispatch_branch_valid) ? dispatch_branch_addr + 16 : (do_inc_wptr) ? pcin_r + 16 : pcin_r;
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

      case (bypass_mux_sel)
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
      //       Fow now, we never set icache_abort.
      //
      icache_abort = 1'b0;
      icache_pcin = (dispatch_branch_valid) ? dispatch_branch_addr : pcin_r;
      icache_ren   = ~(dispatch_branch_valid | is_full);

      dispatch_pcout_plus4 = (dispatch_branch_valid) ? pcout : pcout_r;
      dispatch_inst        = bypass_mux_out;
      dispatch_empty       = is_empty;
   end

   always @(*) begin : ifq_mem_proc
      integer i;
      for(i = 0; i < 4; i = i + 1) mem[i] = mem_r[i];

      mem[wptr_r[3:2]] = (icache_dout_valid) ? icache_dout : mem_r[wptr_r[3:2]];
   end

   always @(posedge clk) begin : ifq_ptr_reg
      rptr_r <= (reset) ? 5'b0 : rptr;
      wptr_r <= (reset) ? 5'b0 : wptr;
   end

   always @(posedge clk) begin : ifq_pc_reg
      pcin_r  <= (reset) ? 32'b0 : pcin;
      pcout_r <= (reset) ? 32'b0 : pcout;
   end

   always @(posedge clk) begin : ifq_mem_reg
      integer i;
      for(i = 0; i < 4; i = i + 1) begin
         mem_r[i] <= (reset) ? 'h0 : mem[i];
      end
   end

endmodule

`endif

