
`ifndef ISSUELS_V
`define ISSUELS_V

module issuels (
   input             clk,
   input             reset,
   input             ls_ready_in,
   input  [31:0]     ls_data,
   input  [31:0]     ls_address,
   input  [ 5:0]     ls_tag,
   input             opcode,

   output            ls_done_out,
   output [31:0]     ls_data_out,
   output [ 5:0]     ls_tag_out,
   input             ls_done,
   output            ls_ready_out
);


// Data cache
data_cache data_cache (
      .clk           (clk         ),
      .reset         (reset       ),
      .data          (ls_data     ),
      .address       (ls_address  ),
      .tag           (ls_tag      ),
      .opcode        (opcode      ),
      .lsque_ready   (ls_ready_in ),
      .issueblk_done (ls_done     ),
      .data_out      (ls_data_out ),
      .tag_out       (ls_tag_out  ),
      .done          (ls_done_out ),
      .ready         (ls_ready_out)
   );

endmodule

`endif

