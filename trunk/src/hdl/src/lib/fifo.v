
`ifndef FIFO_V
`define FIFO_V

module fifo #(
   parameter DATA_WIDTH = 8,
   parameter DEPTH      = 8
)(
   input clk,
   input rst,

   input [DATA_WIDTH-1:0]  din,
   input wr_en,
   input rd_en,
   output reg [DATA_WIDTH-1:0] dout,
   output reg full,
   output reg empty
);

   function integer log2;
      input integer n;
      begin
         log2 = 0;
         while(2**log2 < n) begin
            log2 = log2 + 1;
         end
      end
   endfunction

   parameter ADDR_WIDTH = log2(DEPTH);
   reg  [ADDR_WIDTH   : 0]  rd_ptr; // note MSB is not really address
   reg  [ADDR_WIDTH   : 0]  wr_ptr; // note MSB is not really address
   wire [ADDR_WIDTH-1 : 0]  wr_loc;
   wire [ADDR_WIDTH-1 : 0]  rd_loc;
   reg  [DATA_WIDTH-1 : 0]  mem[DEPTH-1 : 0];

   assign wr_loc = wr_ptr[ADDR_WIDTH-1 : 0];
   assign rd_loc = rd_ptr[ADDR_WIDTH-1 : 0];

   always @(posedge clk) begin
      if (rst) begin
         wr_ptr <= 'h0;
         rd_ptr <= 'h0;
      end else begin
         if (wr_en & (~full))  wr_ptr <= wr_ptr + 1;
         if (rd_en & (~empty)) rd_ptr <= rd_ptr + 1;
      end
   end

   // Empty if all the bits of rd_ptr and wr_ptr are the same.
   // Full if all bits except the MSB are equal and MSB differ.
   always @(rd_ptr or wr_ptr) begin
      //default catch-alls
      empty <= 1'b0;
      full  <= 1'b0;
      if (rd_ptr[ADDR_WIDTH-1:0] == wr_ptr[ADDR_WIDTH-1:0]) begin
         if(rd_ptr[ADDR_WIDTH] == wr_ptr[ADDR_WIDTH])
            empty <= 1'b1;
         else
            full  <= 1'b1;
      end
   end

   always @(posedge clk) begin
      if (wr_en) mem[wr_loc] <= din;
   end

   // Comment out if you want a registered dout.
   always @(*) begin
      dout = rd_en ? mem[rd_loc]:'h0;
   end
   // Uncomment if you want a registered dout.
   //always @(posedge clk) begin
   //   if (rst)
   //      dout <= 'h0;
   //   else if (rd_en)
   //      dout <= mem[rd_ptr];
   //   else
   //      dout <= dout;
   //end
endmodule

`endif

