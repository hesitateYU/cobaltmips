
`ifndef TAGFIFO_V
`define TAGFIFO_V

module tagfifo (
   input            clk,
   input            rst,
   output reg [5:0] dispatch_tag,
   input            dispatch_ren,
   output reg       dispatch_full,
   output reg       dispatch_empty,
   input      [5:0] cdb_tag,
   input            cdb_valid
);

   reg [5:0] tag_fifo   [63:0];
   reg [5:0] tag_fifo_r [63:0];

   reg [6:0] wrptr, rdptr;
   reg [6:0] wrptr_r, rdptr_r;

   always @(posedge clk) begin : tag_fifo_reg
     integer i;
     for (i = 0; i < 64; i = i + 1) begin
         tag_fifo_r[i]  <= (rst) ? 'h0 : tag_fifo[i];
     end
   end
   always @(posedge clk) begin : tag_fifo_ptr
      wrptr_r <= (rst) ? 7'b1000000 : wrptr;
      rdptr_r <= (rst) ? 7'b0000000 : rdptr;
   end

   always @(*) begin  : tag_fifo_proc
      integer i;
      if (rst) begin
         for (i = 0; i < 64; i = i + 1) begin
             tag_fifo[i] <= i; //initialize tags 0-63
         end
      end
      else begin
           if (dispatch_ren && (wrptr_r != rdptr_r)) begin
               dispatch_tag = tag_fifo_r[rdptr];
               rdptr        = rdptr_r + 1;  //increase read pointer to get next tag
            end
            else if(cdb_valid && (wrptr_r != rdptr_r)) begin
               tag_fifo[wrptr_r] = cdb_tag;
               wrptr           = wrptr_r + 1;
            end
      end
   end

   always @(*) begin : tag_fifo_full_empty
         dispatch_full  = (rdptr_r == wrptr_r);
         dispatch_empty = ((rdptr_r[5:0] == wrptr_r[5:0]) && (rdptr_r[6] != wrptr_r[6]));
   end 

endmodule

`endif

