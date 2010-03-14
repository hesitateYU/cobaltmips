`ifndef REGFILE_V
`define REGFILE_V

module regfile #(
   parameter W_DATA = 32,
   parameter W_ADDR = 5
)(
   input                   clk,
   input                   reset,

   // Single write port, data comes from CDB and address is
   // encoded as one-hot from register status table.
   input      [W_DATA-1:0] cdb_wdata,
   input      [W_DATA-1:0] rst_wen_onehot,

   // 2 read ports for RS and RT registers.
   input      [W_ADDR-1:0] dispatch_rs_addr,
   input      [W_ADDR-1:0] dispatch_rt_addr,
   input      [W_ADDR-1:0] debug_addr,
   output reg [W_DATA-1:0] dispatch_rs_data,
   output reg [W_DATA-1:0] dispatch_rt_data,
   output reg [W_DATA-1:0] debug_data
);

   parameter N_ENTRY = 2 ** W_ADDR;

   reg  [W_DATA-1:0] mem   [N_ENTRY-1:0];
   reg  [W_DATA-1:0] mem_r [N_ENTRY-1:0];

   always @(*) begin: reg_file_write_proc
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         mem[i] = (rst_wen_onehot[i]) ? cdb_wdata : mem_r[i];
      end
   end

   always @(*) begin : reg_file_read_proc
      dispatch_rs_data = mem_r[dispatch_rs_addr];
      dispatch_rt_data = mem_r[dispatch_rt_addr];
      debug_data       = mem_r[debug_addr];
   end

   always @(posedge clk) begin : reg_file_mem_assign
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         mem_r[i] <= (reset) ? 'h0 : mem[i];
      end
   end

endmodule

`endif

