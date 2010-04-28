
`ifndef ICACHE_V
`define ICACHE_V

`include "globals.vh"

module icache #(
   parameter integer W_IDATA      = 32,
   parameter integer W_ODATA      = 128,
   parameter integer W_ADDR       = 6,
   parameter integer INCLUDE_OREG = 1
)(
   input                    clk,
   input                    reset,
   input      [W_IDATA-1:0] ifq_pcin,
   input                    ifq_ren,
   input                    ifq_abort,
   output reg [W_ODATA-1:0] ifq_dout,
   output reg               ifq_dout_valid
);

   //
   // NOTE: the module is not entirely parametric:
   //       + N_BYTEALIGN might not work properly if set different than 4;
   //       + W_IDATA and W_ODATA must be a power of 2.
   //
   localparam N_ENTRY     = 2 ** W_ADDR;
   localparam N_BYTEALIGN = W_ODATA / W_IDATA;

   //
   // TODO: replace with a RAM block for FPGA implementation.
   //
   // Internal cache memory, 128x64.
   reg [W_ODATA-1:0] mem_init [N_ENTRY-1:0];
   reg [W_ODATA-1:0] mem      [N_ENTRY-1:0];
   reg [W_ODATA-1:0] mem_r    [N_ENTRY-1:0];

   reg               dout_valid, dout_valid_r;
   reg [W_ODATA-1:0] dout, dout_r;

   reg [W_IDATA-N_BYTEALIGN-1:0] line_sel;
   always @(*) begin : icache_read_proc
      // Addresses are aligned to N_BYTEALIGN bytes, ignore the LSB.
      line_sel = ifq_pcin[W_IDATA-1:N_BYTEALIGN];

      // Since read delay is only one cycle, we always set dout_valid to TRUE
      // unless there is an abort pending.
      //
      // TODO: what is the expected behavior when ifq_abort is set??
      // TODO: validate the case when reading values takes more than one effective
      //       cycles. INCLUDE_OREG works properly, adding a 1 tick delay in every
      //       read.
      //
      dout_valid = ifq_ren & ~ifq_abort;
      dout       = (dout_valid) ? mem_r[line_sel] : dout_r;
   end

   always @(*) begin : icache_oreg_assign
      if (INCLUDE_OREG) begin
         ifq_dout       = dout_r;
         ifq_dout_valid = dout_valid_r;
      end else begin
         ifq_dout       = dout;
         ifq_dout_valid = dout_valid;
      end
   end

   always @(*) begin : ichache_write_proc
      integer i;
      for(i = 0; i < N_ENTRY; i = i + 1) begin
         mem[i] = mem_r[i];
      end
   end

   always @(posedge clk) begin : dout_reg
      dout_r       <= (reset) ? 'h0 : dout;
      dout_valid_r <= (reset) ? 'h0 : dout_valid;
   end

   always @(posedge clk) begin : mem_reg
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) mem_r[i] <= (reset) ? mem_init[i] : mem[i];
   end

   initial begin : ichace_mem_init_proc
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) mem_init[i] = 'h0;

      // Load program in verilog format.
      //`include "programs/rtype.vh"
      //`include "programs/rtype_simple.vh"

      // Load program in hex format.
      $readmemh("programs/incremental.txt", mem_init);

      for (i = 0; i < N_ENTRY; i = i + 1) $display("[%h] %h", i * (2**N_BYTEALIGN), mem_init[i]);
   end

endmodule

`endif

