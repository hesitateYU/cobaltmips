
`ifndef RST_V
`define RST_V

module reg_status_table(
   input      [ 6:0] wdata0_rst,
   input      [ 4:0] waddr0_rst,
   input             wen0_rst,
   input      [ 6:0] wdata_rst1,
   input      [31:0] wen_rst1,
   input      [ 4:0] rsaddr_rst,
   output reg [ 5:0] rstag_rst,
   output reg        rsvalid_rst,
   input      [ 4:0] rtaddr_rst,
   output reg [ 5:0] rttag_rst,
   output reg        rtvalid_rst,
   input             cdb_valid,
   input      [ 5:0] cdb_tag_rst,
   output reg [31:0] wen_regfile_rst
);

endmodule

`endif

