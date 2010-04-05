`ifndef CLA_32BIT_V
`define CLA_32BIT_V

module CLA_32bit (
      output wire [31:0] sum, 
      output wire carryout,
      input wire [31:0] A_in, 
      input wire [31:0] B_in, 
      input wire carryin
);

   wire [6:0] carry;

   CLA_4bit  c1 (
         .s(sum[3:0]), 
         .cout(carry[0]), 
         .i1(A_in[3:0]), 
         .i2(B_in[3:0]), 
         .c0(carryin)
   );
   CLA_4bit  c2 (
         .s(sum[7:4]), 
         .cout(carry[1]), 
         .i1(A_in[7:4]), 
         .i2(B_in[7:4]), 
         .c0(carry[0])
   );
   CLA_4bit  c3 (
         .s(sum[11:8]), 
         .cout(carry[2]), 
         .i1(A_in[11:8]), 
         .i2(B_in[11:8]), 
         .c0(carry[1])
   );
   CLA_4bit  c4 (
         .s(sum[15:12]), 
         .cout(carry[3]), 
         .i1(A_in[15:12]), 
         .i2(B_in[15:12]), 
         .c0(carry[2])
   );
   CLA_4bit  c5 (
         .s(sum[19:16]), 
         .cout(carry[4]), 
         .i1(A_in[19:16]), 
         .i2(B_in[19:16]), 
         .c0(carry[3])
   );
   CLA_4bit  c6 (
         .s(sum[23:20]), 
         .cout(carry[5]), 
         .i1(A_in[23:20]), 
         .i2(B_in[23:20]), 
         .c0(carry[4])
   );
   CLA_4bit  c7 (
         .s(sum[27:24]), 
         .cout(carry[6]), 
         .i1(A_in[27:24]), 
         .i2(B_in[27:24]), 
         .c0(carry[5])
   );

   CLA_4bit  c8 (
         .s(sum[31:28]), 
         .cout(carryout), 
         .i1(A_in[31:28]), 
         .i2(B_in[31:28]), 
         .c0(carry[6])
   );
endmodule

`endif
