
`ifndef ICACHE_V
`define ICACHE_V

module icache #(
   parameter W_IDATA      = 32,
   parameter W_ODATA      = 128,
   parameter W_ADDR       = 6,
   parameter INCLUDE_OREG = 1'b0
)(
   input                    clk,
   input                    reset,
   input      [W_IDATA-1:0] ifq_pc_in,
   input                    ifq_rd_en,
   input                    ifq_abort,
   output reg [W_ODATA-1:0] ifq_dout,
   output reg               ifq_dout_valid
);

   //
   // NOTE: the module is not entirely parametric:
   //       + N_BYTEALIGN might not work properly if set different than 4;
   //       + W_IDATA and W_ODATA must be a power of 2.
   //
   parameter N_ENTRY     = 2 ** W_ADDR;
   parameter N_BYTEALIGN = W_ODATA / W_IDATA;

   //
   // TODO: replace with a RAM block for FPGA implementation.
   //
   // Internal cache memory, 128x64.
   reg [W_ODATA-1:0] mem   [N_ENTRY-1:0];
   reg [W_ODATA-1:0] mem_r [N_ENTRY-1:0];

   reg               dout_valid, dout_valid_r;
   reg [W_ODATA-1:0] dout, dout_r;

   reg [W_IDATA-N_BYTEALIGN-1:0] line_sel;
   always @(*) begin
      // Addresses are aligned to N_BYTEALIGN bytes, ignore the LSB.
      line_sel = ifq_pc_in[W_IDATA-1:N_BYTEALIGN];

      // Since read delay is only one cycle, we always set dout_valid to TRUE
      // unless there is an abort pending.
      //
      // TODO: what is the expected behavior when ifq_abort is set??
      // TODO: validate the case when reading values takes more than one effective
      //       cycles. INCLUDE_OREG works properly, adding a 1 tick delay in every
      //       read.
      //
      dout_valid = ifq_rd_en & ~ifq_abort;
      dout       = (dout_valid) ? mem_r[line_sel] : dout_r;
   end

   always @(*) begin : out_reg_assignment
      if (INCLUDE_OREG) begin
         ifq_dout       = dout_r;
         ifq_dout_valid = dout_valid_r;
      end else begin
         ifq_dout       = dout;
         ifq_dout_valid = dout_valid;
      end
   end

   always @(*) begin : mem_proc
      integer i;
      for(i = 0; i < N_ENTRY; i = i + 1) begin
         mem[i] = mem_r[i];
      end
   end

   always @(posedge clk) begin : dout_reg
      dout_r       <= (reset) ? 'h0 : dout;
      dout_valid_r <= (reset) ? 'h0 : dout_valid;
   end

   reg [W_ODATA-1:0] init_data, init_data_temp;
   always @(posedge clk) begin : mem_reg
      integer i, j;
      if (reset) $display("icache contents:");
      for(i = 0; i < N_ENTRY; i = i + 1) begin
         init_data_temp = 'h0;
         init_data      = 'h0;
         for (j = 0; j < N_BYTEALIGN; j = j + 1) begin
            init_data_temp = (j + (N_BYTEALIGN * i)) << (j * W_IDATA);
            init_data = init_data | init_data_temp;
         end
         mem_r[i] <= (reset) ? init_data : mem[i];
         if (reset) $display("[%h] 0x%h", i * (2**N_BYTEALIGN), init_data);
      end
   end

endmodule

`endif

