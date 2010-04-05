
`ifndef ISSUE_UNIT_V
`define ISSUE_UNIT_V

module issue_unit (
      input          clk,
      input          reset,
      
      input [3:0]    opcode,
      input [31:0]   rsdata,
      input [31:0]   rtdata,
      input [ 5:0]   rdtag,
      

      input          ready_int,
      input          ready_mult,
      input          ready_div,
      input          ready_ld_buf,


      output         issue_int,
      output         issue_mult,
      output         issue_div,
      output         issue_ld_buf,
      output         issue_carryout,
      output         issue_overflow,

      output reg [31:0]  cdb_out,
      output reg [ 5:0]  cdb_tagout


);
   wire [3:0] selector;

   wire [31:0]   int_out;
   wire [31:0]   div_out;
   wire [31:0]   mult_out;
   wire [31:0]   ld_buf_out;


   assign selector = {ready_int, ready_mult, ready_div, ready_ld_buf};

   always @(*) begin : mux_sel
      case (selector)
         4'b0001: begin
           cdb_out = ld_buf_out; 
         end
         4'b0010: begin
           cdb_out = div_out; 
         end
         4'b0100: begin
            cdb_out = mult_out;
         end
         4'b1000: begin
            cdb_out = int_out;
         end
         default: begin
            cdb_out = int_out;
         end
      endcase
   end

issueint issueint (
         .clk                 (clk           ),
         .reset               (reset         ),
         .issueint_opcode     (opcode        ),
         .issueint_rsdata     (rsdata        ),
         .issueint_rtdata     (rtdata        ),
         .issueint_rdtag      (rdtag         ),

         .issueint_out        (int_out       ),
         .issueint_rdtag_out  (cdb_tagout    ),

         .issueint_carryout   (issue_carryout),
         .issueint_overflow   (issue_overflow)
);

issuediv issuediv(
         .clk                 (clk),
         .reset               (reset),
         .issuediv_enable     (),
         .issuediv_rsdata     (rsdata),
         .issuediv_rtdata     (rtdata),
         .issuediv_rdtag      (rdtag),

         .issuediv_busy       (),
         .issuediv_out        (div_out),
         .issuediv_rdtag_out  (cdb_tagout)
);

issuemult issuemult(
         .clk                 (clk),
         .reset               (reset),
         .issuemult_rsdata    (rsdata),
         .issuemult_rtdata    (rtdata),
         .issuemult_rdtag     (rdtag),

         .issuemult_out       (mult_out),
         .issuemult_rdtag_out (cdb_tagout)
);


endmodule

`endif
