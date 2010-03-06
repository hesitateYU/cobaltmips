
`ifndef ICACHE_V
`define ICACHE_V

module icache #(
   parameter INC_OREG = 1'b0
)(
   input              clk,
   input              rst,
   input       [31:0] ifq_pc_in,
   input              ifq_rd_en,
   input              ifq_abort,
   output reg [127:0] ifq_dout,
   output reg         ifq_dout_valid
);

   //
   // TODO: replace with a RAM block for FPGA implementation.
   //
   // Internal cache memory, 128x64.
   reg [127:0] mem   [63:0];
   reg [127:0] mem_r [63:0];

   reg dout_valid, dout_valid_r;
   reg [127:0] dout, dout_r;

   reg [27:0] line_sel;

   always @(*) begin
      // Addresses are aligned to 4 bits, ignore (zeros) 4 LSB.
      line_sel = ifq_pc_in[31:4];

      // Since read delay is only one cycle, we always set dout_valid to TRUE
      // unless there is an abort pending.
      if (ifq_rd_en && !ifq_abort) begin
         dout       = mem[line_sel];
         dout_valid = 1'b1;
      end else begin
         dout       = dout_r;
         dout_valid = 1'b0;
      end
   end

   always @(*) begin : out_reg_assignment
      if (INC_OREG == 1'b1) begin
         ifq_dout       = dout_r;
         ifq_dout_valid = dout_valid_r;
      end else begin
         ifq_dout       = dout;
         ifq_dout_valid = dout_valid;
      end
   end

   always @(posedge clk) begin : dout_reg
      dout_r       <= (rst) ? 128'h0 : dout;
      dout_valid_r <= (rst) ?   1'b0 : dout_valid;
   end

   always @(*) begin : mem_proc
      integer i;
      for(i = 0; i < 64; i = i + 1) begin
         mem[i] = mem_r[i];
      end
   end

   always @(posedge clk) begin : mem_reg
      integer i;
      for(i = 0; i < 64; i = i + 1) begin
         mem_r[i] <= (rst) ? {(i*4)+3, (i*4)+2, (i*4)+1, (i*4)} : mem[i];
      end
   end

endmodule

`endif

