////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.36
//  \   \         Application: netgen
//  /   /         Filename: multiplier.v
// /___/   /\     Timestamp: Thu Apr 29 18:46:53 2010
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
  clk, a, b, p
);
  input clk;
  input [15 : 0] a;
  input [15 : 0] b;
  output [31 : 0] p;
  
  // synopsys translate_off
  
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[0] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[1] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[2] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[3] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[4] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[5] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[6] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[7] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[8] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[9] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[10] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[11] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[12] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[13] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[14] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[15] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[16] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[17] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[18] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[19] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[20] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[21] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[22] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[23] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[24] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[25] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[26] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[27] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[28] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[29] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[30] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[35] ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_0_2 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_1_3 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_2_4 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_3_5 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_4_6 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_5_7 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_6_8 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_7_9 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_8_10 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_9_11 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_10_12 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_11_13 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_12_14 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_13_15 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_14_16 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_15_17 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_16_18 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_17_19 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_18_20 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_19_21 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_20_22 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_21_23 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_22_24 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_23_25 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_24_26 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_25_27 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_26_28 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_27_29 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_28_30 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_29_31 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_30_32 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_35_33 ;
  wire \BU2/N1 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/N1 ;
  wire \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/N0 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<0>_UNCONNECTED ;
  wire [15 : 0] a_34;
  wire [15 : 0] b_35;
  wire [0 : 0] \BU2/zero_detect ;
  assign
    a_34[15] = a[15],
    a_34[14] = a[14],
    a_34[13] = a[13],
    a_34[12] = a[12],
    a_34[11] = a[11],
    a_34[10] = a[10],
    a_34[9] = a[9],
    a_34[8] = a[8],
    a_34[7] = a[7],
    a_34[6] = a[6],
    a_34[5] = a[5],
    a_34[4] = a[4],
    a_34[3] = a[3],
    a_34[2] = a[2],
    a_34[1] = a[1],
    a_34[0] = a[0],
    b_35[15] = b[15],
    b_35[14] = b[14],
    b_35[13] = b[13],
    b_35[12] = b[12],
    b_35[11] = b[11],
    b_35[10] = b[10],
    b_35[9] = b[9],
    b_35[8] = b[8],
    b_35[7] = b[7],
    b_35[6] = b[6],
    b_35[5] = b[5],
    b_35[4] = b[4],
    b_35[3] = b[3],
    b_35[2] = b[2],
    b_35[1] = b[1],
    b_35[0] = b[0],
    p[31] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_35_33 ,
    p[30] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_30_32 ,
    p[29] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_29_31 ,
    p[28] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_28_30 ,
    p[27] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_27_29 ,
    p[26] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_26_28 ,
    p[25] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_25_27 ,
    p[24] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_24_26 ,
    p[23] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_23_25 ,
    p[22] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_22_24 ,
    p[21] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_21_23 ,
    p[20] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_20_22 ,
    p[19] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_19_21 ,
    p[18] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_18_20 ,
    p[17] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_17_19 ,
    p[16] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_16_18 ,
    p[15] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_15_17 ,
    p[14] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_14_16 ,
    p[13] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_13_15 ,
    p[12] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_12_14 ,
    p[11] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_11_13 ,
    p[10] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_10_12 ,
    p[9] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_9_11 ,
    p[8] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_8_10 ,
    p[7] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_7_9 ,
    p[6] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_6_8 ,
    p[5] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_5_7 ,
    p[4] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_4_6 ,
    p[3] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_3_5 ,
    p[2] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_2_4 ,
    p[1] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_1_3 ,
    p[0] = \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_0_2 ;
  VCC VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_0 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_0  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[0] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_0_2 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_1 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_1  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[1] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_1_3 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_2 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_2  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[2] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_2_4 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_3 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_3  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[3] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_3_5 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_4 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_4  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[4] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_4_6 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_5 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_5  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[5] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_5_7 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_6 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_6  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[6] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_6_8 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_7 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_7  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[7] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_7_9 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_8 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_8  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[8] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_8_10 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_9 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_9  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[9] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_9_11 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_10 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_10  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[10] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_10_12 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_11 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_11  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[11] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_11_13 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_12 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_12  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[12] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_12_14 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_13 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_13  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[13] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_13_15 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_14 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_14  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[14] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_14_16 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_15 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_15  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[15] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_15_17 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_16 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_16  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[16] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_16_18 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_17 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_17  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[17] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_17_19 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_18 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_18  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[18] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_18_20 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_19 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_19  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[19] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_19_21 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_20 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_20  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[20] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_20_22 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_21 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_21  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[21] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_21_23 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_22 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_22  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[22] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_22_24 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_23 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_23  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[23] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_23_25 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_24 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_24  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[24] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_24_26 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_25 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_25  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[25] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_25_27 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_26 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_26  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[26] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_26_28 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_27 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_27  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[27] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_27_29 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_28 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_28  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[28] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_28_30 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_29 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_29  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[29] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_29_31 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_30 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_30  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[30] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_30_32 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_35 .INIT = 1'b0;
  FD \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_35  (
    .C(clk),
    .D(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[35] ),
    .Q(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi_del<0>_0_35_33 )
  );
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio .B_INPUT = "DIRECT";
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio .PREG = 1;
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio .BREG = 1;
  defparam \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio .AREG = 1;
  MULT18X18SIO \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio  (
    .CEA(\BU2/N1 ),
    .CEB(\BU2/N1 ),
    .CEP(\BU2/N1 ),
    .CLK(clk),
    .RSTA(\BU2/zero_detect [0]),
    .RSTB(\BU2/zero_detect [0]),
    .RSTP(\BU2/zero_detect [0]),
    .A({a_34[15], a_34[15], a_34[15], a_34[14], a_34[13], a_34[12], a_34[11], a_34[10], a_34[9], a_34[8], a_34[7], a_34[6], a_34[5], a_34[4], a_34[3]
, a_34[2], a_34[1], a_34[0]}),
    .B({b_35[15], b_35[15], b_35[15], b_35[14], b_35[13], b_35[12], b_35[11], b_35[10], b_35[9], b_35[8], b_35[7], b_35[6], b_35[5], b_35[4], b_35[3]
, b_35[2], b_35[1], b_35[0]}),
    .BCIN({\BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], 
\BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], 
\BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0], \BU2/zero_detect [0]}),
    .P({\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[35] , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<34>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<33>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<32>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_P<31>_UNCONNECTED , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[30] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[29] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[28] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[27] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[26] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[25] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[24] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[23] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[22] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[21] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[20] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[19] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[18] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[17] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[16] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[15] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[14] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[13] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[12] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[11] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[10] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[9] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[8] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[7] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[6] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[5] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[4] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[3] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[2] , \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[1] , 
\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/pi<0><0>[0] }),
    .BCOUT({\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<17>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<16>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<15>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<14>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<13>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<12>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<11>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<10>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<9>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<8>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<7>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<6>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<5>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<4>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<3>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<2>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<1>_UNCONNECTED , 
\NLW_BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/use_mult18x18sio.appMULTSIO[0].bppMULTSIO[0].m18x18sio_BCOUT<0>_UNCONNECTED })
  );
  VCC \BU2/XST_VCC  (
    .P(\BU2/N1 )
  );
  GND \BU2/XST_GND  (
    .G(\BU2/zero_detect [0])
  );
  VCC \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/XST_VCC  (
    .P(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/N1 )
  );
  GND \BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/XST_GND  (
    .G(\BU2/U0/gEMBEDDED_MULT.gEMB_MULTS_only.gMULT18.iMULT18/Pdelay/N0 )
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
