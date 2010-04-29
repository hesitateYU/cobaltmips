////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.36
//  \   \         Application: netgen
//  /   /         Filename: multiplier.v
// /___/   /\     Timestamp: Wed Apr 28 21:38:28 2010
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog C:\Xilinx92i\bin\nt\coregen4\tmp\_cg\multiplier.ngc C:\Xilinx92i\bin\nt\coregen4\tmp\_cg\multiplier.v 
// Device	: 3s500efg320-5
// Input file	: C:/Xilinx92i/bin/nt/coregen4/tmp/_cg/multiplier.ngc
// Output file	: C:/Xilinx92i/bin/nt/coregen4/tmp/_cg/multiplier.v
// # of Modules	: 1
// Design Name	: multiplier
// Xilinx        : C:\Xilinx92i
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module multiplier (
  sclr, ce, clk, a, b, p
);
  input sclr;
  input ce;
  input clk;
  input [15 : 0] a;
  input [15 : 0] b;
  output [31 : 0] p;
  
  // synopsys translate_off
  
  wire \BU2/N2 ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[0] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[1] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[2] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[3] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[4] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[5] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[6] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[7] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[8] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[9] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[10] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[11] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[12] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[13] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[14] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[15] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[16] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[17] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[18] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[19] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[20] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[21] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[22] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[23] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[24] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[25] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[26] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[27] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[28] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[29] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[30] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[35] ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/output_delay/N1 ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/output_delay/N0 ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/Pdelay/N1 ;
  wire \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/Pdelay/N0 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<0>_UNCONNECTED ;
  wire [15 : 0] a_2;
  wire [15 : 0] b_3;
  wire [31 : 0] \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out ;
  wire [0 : 0] \BU2/zero_detect ;
  assign
    a_2[15] = a[15],
    a_2[14] = a[14],
    a_2[13] = a[13],
    a_2[12] = a[12],
    a_2[11] = a[11],
    a_2[10] = a[10],
    a_2[9] = a[9],
    a_2[8] = a[8],
    a_2[7] = a[7],
    a_2[6] = a[6],
    a_2[5] = a[5],
    a_2[4] = a[4],
    a_2[3] = a[3],
    a_2[2] = a[2],
    a_2[1] = a[1],
    a_2[0] = a[0],
    b_3[15] = b[15],
    b_3[14] = b[14],
    b_3[13] = b[13],
    b_3[12] = b[12],
    b_3[11] = b[11],
    b_3[10] = b[10],
    b_3[9] = b[9],
    b_3[8] = b[8],
    b_3[7] = b[7],
    b_3[6] = b[6],
    b_3[5] = b[5],
    b_3[4] = b[4],
    b_3[3] = b[3],
    b_3[2] = b[2],
    b_3[1] = b[1],
    b_3[0] = b[0],
    p[31] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [31],
    p[30] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [30],
    p[29] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [29],
    p[28] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [28],
    p[27] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [27],
    p[26] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [26],
    p[25] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [25],
    p[24] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [24],
    p[23] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [23],
    p[22] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [22],
    p[21] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [21],
    p[20] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [20],
    p[19] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [19],
    p[18] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [18],
    p[17] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [17],
    p[16] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [16],
    p[15] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [15],
    p[14] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [14],
    p[13] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [13],
    p[12] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [12],
    p[11] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [11],
    p[10] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [10],
    p[9] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [9],
    p[8] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [8],
    p[7] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [7],
    p[6] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [6],
    p[5] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [5],
    p[4] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [4],
    p[3] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [3],
    p[2] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [2],
    p[1] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [1],
    p[0] = \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [0];
  VCC VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  VCC \BU2/XST_VCC  (
    .P(\BU2/N2 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_0 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [0])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_1 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [1])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_2 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [2])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_3 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [3])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_4 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [4])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_5 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [5])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_6 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [6])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_7 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [7])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_8 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [8])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_9 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [9])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_10 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [10])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_11 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [11])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_12 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [12])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_13 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [13])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_14 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [14])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_15 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [15])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_16 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [16])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_17 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [17])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_18 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[18] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [18])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_19 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[19] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [19])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_20 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[20] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [20])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_21 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[21] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [21])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_22 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[22] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [22])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_23 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[23] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [23])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_24 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[24] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [24])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_25 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_25  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[25] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [25])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_26 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_26  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[26] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [26])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_27 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_27  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[27] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [27])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_28 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_28  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[28] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [28])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_29 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_29  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[29] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [29])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_30 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_30  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[30] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [30])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_35 .INIT = 1'b0;
  FDRE \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi_del<0>_0_35  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[35] ),
    .R(sclr),
    .Q(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/block_mult_out [31])
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio .AREG = 1;
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio .PREG = 1;
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio .B_INPUT = "DIRECT";
  defparam \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio .BREG = 1;
  MULT18X18SIO \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio  (
    .CEA(ce),
    .CEB(ce),
    .CEP(ce),
    .CLK(clk),
    .RSTA(sclr),
    .RSTB(sclr),
    .RSTP(sclr),
    .A({b_3[15], b_3[15], b_3[15], b_3[14], b_3[13], b_3[12], b_3[11], b_3[10], b_3[9], b_3[8], b_3[7], b_3[6], b_3[5], b_3[4], b_3[3], b_3[2], b_3[1]
, b_3[0]}),
    .B({a_2[15], a_2[15], a_2[15], a_2[14], a_2[13], a_2[12], a_2[11], a_2[10], a_2[9], a_2[8], a_2[7], a_2[6], a_2[5], a_2[4], a_2[3], a_2[2], a_2[1]
, a_2[0]}),
    .BCIN({\BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], 
\BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], 
\BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0]}),
    .P({\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[35] , 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<34>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<33>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<32>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<31>_UNCONNECTED 
, \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[30] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[29] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[28] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[27] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[26] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[25] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[24] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[23] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[22] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[21] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[20] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[19] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[18] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[17] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[16] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[15] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[14] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[13] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[12] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[11] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[10] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[9] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[8] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[7] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[6] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[5] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[4] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[3] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[2] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[1] , 
\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/pi<0><0>[0] }),
    .BCOUT({
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<17>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<16>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<15>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<14>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<13>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<12>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<11>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<10>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<9>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<8>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<7>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<6>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<5>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<4>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<3>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<2>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<1>_UNCONNECTED 
, 
\NLW_BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<0>_UNCONNECTED 
})
  );
  GND \BU2/XST_GND  (
    .G(\BU2/zero_detect [0])
  );
  VCC \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/output_delay/XST_VCC  (
    .P(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/output_delay/N1 )
  );
  GND \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/output_delay/XST_GND  (
    .G(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/output_delay/N0 )
  );
  VCC \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/Pdelay/XST_VCC  (
    .P(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/Pdelay/N1 )
  );
  GND \BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/Pdelay/XST_GND  (
    .G(\BU2/U0/gEMBEDDED_MULT.gHYBRID.iHYBRID/single_mult.mult18_based.iMULT18/Pdelay/N0 )
  );

// synopsys translate_on

endmodule

// synopsys translate_off

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

// synopsys translate_on
