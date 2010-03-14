

`ifndef TB_TOP_V
`define TB_TOP_V

module tb_top();

   reg  clk;
   reg  reset;
   wire [ 4:0] debug_regfile_addr;
   wire [31:0] debug_regfile_data;

   initial begin
      reset = 1'b1; #10; reset = 1'b0;
   end

   initial begin
      clk = 1'b0;
      forever #5 clk <= ~clk;
   end

   cpu cpu(
      .clk                (clk               ),
      .reset              (reset             ),
      .debug_regfile_addr (debug_regfile_addr),
      .debug_regfile_data (debug_regfile_data)
   );

endmodule

`endif

