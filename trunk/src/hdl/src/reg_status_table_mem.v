
`ifndef REG_STATUS_TABLE_MEM_V
`define REG_STATUS_TABLE_MEM_V

module reg_status_table_mem(
   input            clk,
   input            rst,

   input      [4:0] rport0_addr,
   output reg [6:0] rport0_data,
   input      [4:0] rport1_addr,
   output reg [6:0] rport1_data,

   input      [4:0] wport0_addr,
   input      [6:0] wport0_data,
   input            wport0_wen,
   input      [4:0] wport1_addr,
   input      [6:0] wport1_data,
   input            wport1_wen,

   input      [5:0] lookup_tag,
   output reg       lookup_found,
   output reg [4:0] lookup_addr
);

   reg [31:0] mem   [31:0];
   reg [31:0] mem_r [31:0];

   always @(*) begin : reg_status_table_mem_write_proc
      integer i;
      for (i = 0; i < 32; i = i + 1) begin
         mem[i] = (wport0_addr == i && wport0_wen) ? wport0_data : mem_r[i];
         mem[i] = (wport1_addr == i && wport1_wen) ? wport1_data : mem_r[i];
      end

      //
      // TODO: use an assertion.
      //
      //if (!(wport0_addr == wport1_addr && wport0_wen && wport1_wen))
      //   $fatal($sformatf("Can't write data from different ports at the same address 0x%h", rport0_addr));
   end

   always @(*) begin : reg_status_table_mem_read_proc
      rport0_data = mem_r[rport0_addr];
      rport1_data = mem_r[rport1_addr];
   end

   always @(*) begin : reg_status_table_lookup_proc
      integer i;
      // Set defaults to avoid latches.
      lookup_found = 1'b0;
      lookup_addr  = 5'h0;
      for (i = 0; i < 32; i = i + 1) begin
         if (lookup_tag == mem_r[i][5:0]) begin
            lookup_found = 1'b1;
            lookup_addr  = i;
         end
      end
   end

   always @(posedge clk) begin : reg_status_table_mem_assign
      integer i;
      for (i=0; i<32; i= i+1) begin
         mem_r[i] <= (rst) ? 'h0 : mem[i];
      end
   end

endmodule

`endif

