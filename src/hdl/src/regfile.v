`ifndef REGFILE_V
`define REGFILE_V

module regfile (
   input	     clk,
   input             rst,
   input      [ 4:0] debugaddr_rf,
   input      [31:0] wen_rf,
   input      [31:0] write_data_rf,
   input      [ 4:0] rsaddr_rf,
   output reg [31:0] rsdata_rf,
   input      [ 4:0] rtaddr_rf,
   output reg [31:0] rtdata_rf,
   input      [31:0] rsdata_dis,
   input      [31:0] cdb_data,
   input      [31:0] rtdata_dis,
   input      [ 6:0] rstag_rst,
   input      [ 6:0] cdb_token,
   input      [ 6:0] rttag_rst,
   output reg [31:0] debugdata_rf
);

   reg  [31:0] reg_file   [0:31];
   reg  [31:0] reg_file_r [0:31];

   always @(*) begin: reg_file_proc
      integer i; 
      for (i=0; i<32; i=i+1) begin
          reg_file[i] = (wen_rf == i) ? write_data_rf : reg_file_r[i];
      end  
   end
 
   always @(posedge clk) begin : reg_file_reg
	integer i;
	for (i=0; i<32; i= i+1) begin
	   reg_file_r[i] <= (rst) ? 'h0: reg_file[i];
	end
   end

   always @(*) begin
      rsdata_rf    = reg_file_r[rsaddr_rf];
      rtdata_rf    = reg_file_r[rtaddr_rf];
      debugdata_rf = reg_file_r[debugaddr_rf];
   end

endmodule

`endif

