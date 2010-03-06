
`ifndef REGFILE_V
`define REGFILE_V

module regfile (
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
   input      [ 6:0] rttag_rst
);

   reg  [31:0] reg_file [0:31];
   wire [31:0] dispatch_rs_data, dispatch_rt_data;

   //7 bits comparators
   assign sel_rs = (rttag_rst == cdb_token) ? 1'b1: 1'b0;
   assign sel_rt = (rstag_rst == cdb_token) ? 1'b1: 1'b0;

   // select rs: either from rsdata or cdb
   assign dispatch_rs_data = sel_rs ? rsdata_dis: cdb_data;
   // select rt
   assign dispatch_rt_data = sel_rt ? rtdata_dis: cdb_data;

   always @(*) begin
      if (wen_rf) begin
         //case (write_data_rf)
            //32'h1: reg_file[0]= ;
            //32'h2: reg_file[1]= ;
            //32'h4: reg_file[2]= ;
         //endcase
      end
   end

endmodule

`endif

