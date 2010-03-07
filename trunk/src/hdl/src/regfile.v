`ifndef REGFILE_V
`define REGFILE_V

module regfile(
   input             clk,
   input             rst,

   // Single write port, data comes from CDB and address is
   // encoded as one-hot from register status table.
   input      [31:0] cdb_wdata,
   input      [31:0] rst_wen_onehot,

   // 2 read ports for RS and RT registers.
   input      [ 4:0] dispatch_rs_addr,
   output reg [31:0] dispatch_rs_data,
   input      [ 4:0] dispatch_rt_addr,
   output reg [31:0] dispatch_rt_data,
   input      [ 4:0] debug_addr,
   output reg [31:0] debug_data
);

   reg  [31:0] mem   [31:0];
   reg  [31:0] mem_r [31:0];

   always @(*) begin: reg_file_write_proc
      integer i;
      for (i = 0; i < 32; i = i + 1) begin
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
      for (i=0; i<32; i= i+1) begin
         mem_r[i] <= (rst) ? 'h0 : mem[i];
      end
   end

endmodule

`endif

