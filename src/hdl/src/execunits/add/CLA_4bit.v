
`ifndef CLA_4BIT_V
`define CLA_4BIT_V

`timescale 1ns/1ps

module CLA_4bit (
   output wire [3:0] s,
   output wire       cout,
   input       [3:0] i1,
   input       [3:0] i2,
   input             c0
);
   wire [3:0] g;
   wire [3:0] p;
   wire [3:1] c;
   assign g[3:0]=i1[3:0] & i2[3:0]; //carry generation
   assign p[3:0]=i1[3:0] ^ i2[3:0];
   assign c[1]=g[0] | (p[0] & c0);
   assign c[2]=g[1] | (g[0] & p[1]) | (p[0] & p[1] & c0);
   assign c[3]=g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]) | (p[0] & p[1] & p[2] & c0);
   assign cout=g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (g[0] & p[1] & p[2] & p[3]) | (p[0] & p[1] & p[2] & p[3] & c0);
   assign s[0]=p[0]^c0;
   assign s[3:1]=p[3:1]^c[3:1];

endmodule

`endif

