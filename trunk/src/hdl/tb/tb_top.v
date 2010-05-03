
`ifndef TB_TOP_V
`define TB_TOP_V

`timescale 1ns/1ps

module tb_top();

   reg        clk;
   reg        reset;
   reg [ 4:0] debug_regfile_addr;
   reg [31:0] debug_regfile_data;

   initial begin
      reset_testbench(5);
   end

   task reset_testbench(integer unsigned cycles);
      cb.debug_regfile_addr <= 'h0;
      cb.reset <= 1'b1;
      repeat (cycles) @(posedge clk);
      cb.reset <= 1'b0;
   endtask

   initial begin
      clk = 1'b0;
      forever #5 clk <= ~clk;
   end

   clocking cb @(posedge clk);
      default input #1 output #2;
      output reset;
      output debug_regfile_addr;
      input  debug_regfile_data;
   endclocking

   cpu cpu(
      .clk                (clk               ),
      .reset              (reset             ),
      .debug_regfile_addr (debug_regfile_addr),
      .debug_regfile_data (debug_regfile_data)
   );

endmodule

`endif

