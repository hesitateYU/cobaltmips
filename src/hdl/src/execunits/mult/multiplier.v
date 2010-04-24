////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.36
//  \   \         Application: netgen
//  /   /         Filename: multiplier.v
// /___/   /\     Timestamp: Thu Apr 01 18:28:25 2010
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
  sclr, clk, a, b, p
);
  input sclr;
  input clk;
  input [15 : 0] a;
  input [15 : 0] b;
  output [31 : 0] p;
  
  // synopsys translate_off
  
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_0_2 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_1_3 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_0_4 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_1_5 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_0_6 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_1_7 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_0_8 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_1_9 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_0_10 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[2] ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_2_11 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_1_12 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_3_13 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[3] ;
  wire \BU2/U0/gLUT.iLUT/N10 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_2_14 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_4_15 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[4] ;
  wire \BU2/U0/gLUT.iLUT/N11 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_3_16 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_5_17 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[5] ;
  wire \BU2/U0/gLUT.iLUT/N12 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_4_18 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_6_19 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[6] ;
  wire \BU2/U0/gLUT.iLUT/N13 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_5_20 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_7_21 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[7] ;
  wire \BU2/U0/gLUT.iLUT/N14 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_6_22 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_8_23 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[8] ;
  wire \BU2/U0/gLUT.iLUT/N15 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_7_24 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_9_25 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[9] ;
  wire \BU2/U0/gLUT.iLUT/N16 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_8_26 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_10_27 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[10] ;
  wire \BU2/U0/gLUT.iLUT/N17 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_9_28 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_11_29 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[11] ;
  wire \BU2/U0/gLUT.iLUT/N18 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_10_30 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_12_31 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[12] ;
  wire \BU2/U0/gLUT.iLUT/N19 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_11_32 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_13_33 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[13] ;
  wire \BU2/U0/gLUT.iLUT/N20 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_12_34 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_14_35 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[14] ;
  wire \BU2/U0/gLUT.iLUT/N21 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_13_36 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_15_37 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[15] ;
  wire \BU2/U0/gLUT.iLUT/N22 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_14_38 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_16_39 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[16] ;
  wire \BU2/U0/gLUT.iLUT/N23 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_15_40 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[17] ;
  wire \BU2/U0/gLUT.iLUT/N24 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_16_41 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[18] ;
  wire \BU2/U0/gLUT.iLUT/N25 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_7_17_42 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_6_17_43 ;
  wire \BU2/U0/gLUT.iLUT/sum<3>[20] ;
  wire \BU2/U0/gLUT.iLUT/N26 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[4] ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[5] ;
  wire \BU2/U0/gLUT.iLUT/N28 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[6] ;
  wire \BU2/U0/gLUT.iLUT/N29 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[7] ;
  wire \BU2/U0/gLUT.iLUT/N30 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[8] ;
  wire \BU2/U0/gLUT.iLUT/N31 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[9] ;
  wire \BU2/U0/gLUT.iLUT/N32 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[10] ;
  wire \BU2/U0/gLUT.iLUT/N33 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[11] ;
  wire \BU2/U0/gLUT.iLUT/N34 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[12] ;
  wire \BU2/U0/gLUT.iLUT/N35 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[13] ;
  wire \BU2/U0/gLUT.iLUT/N36 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[14] ;
  wire \BU2/U0/gLUT.iLUT/N37 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[15] ;
  wire \BU2/U0/gLUT.iLUT/N38 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[16] ;
  wire \BU2/U0/gLUT.iLUT/N39 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[17] ;
  wire \BU2/U0/gLUT.iLUT/N40 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[18] ;
  wire \BU2/U0/gLUT.iLUT/N41 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[19] ;
  wire \BU2/U0/gLUT.iLUT/N42 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[20] ;
  wire \BU2/U0/gLUT.iLUT/N43 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[21] ;
  wire \BU2/U0/gLUT.iLUT/N44 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[22] ;
  wire \BU2/U0/gLUT.iLUT/N45 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[23] ;
  wire \BU2/U0/gLUT.iLUT/N46 ;
  wire \BU2/U0/gLUT.iLUT/sum0<1>[25] ;
  wire \BU2/U0/gLUT.iLUT/N47 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_0_44 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[2] ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_2_45 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_1_46 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_3_47 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[3] ;
  wire \BU2/U0/gLUT.iLUT/N49 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_2_48 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_4_49 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[4] ;
  wire \BU2/U0/gLUT.iLUT/N50 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_3_50 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_5_51 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[5] ;
  wire \BU2/U0/gLUT.iLUT/N51 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_4_52 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_6_53 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[6] ;
  wire \BU2/U0/gLUT.iLUT/N52 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_5_54 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_7_55 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[7] ;
  wire \BU2/U0/gLUT.iLUT/N53 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_6_56 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_8_57 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[8] ;
  wire \BU2/U0/gLUT.iLUT/N54 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_7_58 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_9_59 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[9] ;
  wire \BU2/U0/gLUT.iLUT/N55 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_8_60 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_10_61 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[10] ;
  wire \BU2/U0/gLUT.iLUT/N56 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_9_62 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_11_63 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[11] ;
  wire \BU2/U0/gLUT.iLUT/N57 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_10_64 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_12_65 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[12] ;
  wire \BU2/U0/gLUT.iLUT/N58 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_11_66 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_13_67 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[13] ;
  wire \BU2/U0/gLUT.iLUT/N59 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_12_68 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_14_69 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[14] ;
  wire \BU2/U0/gLUT.iLUT/N60 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_13_70 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_15_71 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[15] ;
  wire \BU2/U0/gLUT.iLUT/N61 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_14_72 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_16_73 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[16] ;
  wire \BU2/U0/gLUT.iLUT/N62 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_15_74 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[17] ;
  wire \BU2/U0/gLUT.iLUT/N63 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_16_75 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[18] ;
  wire \BU2/U0/gLUT.iLUT/N64 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_5_17_76 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_4_17_77 ;
  wire \BU2/U0/gLUT.iLUT/sum<2>[20] ;
  wire \BU2/U0/gLUT.iLUT/N65 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_0_78 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[2] ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_2_79 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_1_80 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_3_81 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[3] ;
  wire \BU2/U0/gLUT.iLUT/N67 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_2_82 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_4_83 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[4] ;
  wire \BU2/U0/gLUT.iLUT/N68 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_3_84 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_5_85 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[5] ;
  wire \BU2/U0/gLUT.iLUT/N69 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_4_86 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_6_87 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[6] ;
  wire \BU2/U0/gLUT.iLUT/N70 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_5_88 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_7_89 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[7] ;
  wire \BU2/U0/gLUT.iLUT/N71 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_6_90 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_8_91 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[8] ;
  wire \BU2/U0/gLUT.iLUT/N72 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_7_92 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_9_93 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[9] ;
  wire \BU2/U0/gLUT.iLUT/N73 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_8_94 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_10_95 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[10] ;
  wire \BU2/U0/gLUT.iLUT/N74 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_9_96 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_11_97 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[11] ;
  wire \BU2/U0/gLUT.iLUT/N75 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_10_98 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_12_99 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[12] ;
  wire \BU2/U0/gLUT.iLUT/N76 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_11_100 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_13_101 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[13] ;
  wire \BU2/U0/gLUT.iLUT/N77 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_12_102 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_14_103 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[14] ;
  wire \BU2/U0/gLUT.iLUT/N78 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_13_104 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_15_105 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[15] ;
  wire \BU2/U0/gLUT.iLUT/N79 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_14_106 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_16_107 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[16] ;
  wire \BU2/U0/gLUT.iLUT/N80 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_15_108 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[17] ;
  wire \BU2/U0/gLUT.iLUT/N81 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_16_109 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[18] ;
  wire \BU2/U0/gLUT.iLUT/N82 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_3_17_110 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_2_17_111 ;
  wire \BU2/U0/gLUT.iLUT/sum<1>[20] ;
  wire \BU2/U0/gLUT.iLUT/N83 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[8] ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[9] ;
  wire \BU2/U0/gLUT.iLUT/N85 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[10] ;
  wire \BU2/U0/gLUT.iLUT/N86 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[11] ;
  wire \BU2/U0/gLUT.iLUT/N87 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[12] ;
  wire \BU2/U0/gLUT.iLUT/N88 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[13] ;
  wire \BU2/U0/gLUT.iLUT/N89 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[14] ;
  wire \BU2/U0/gLUT.iLUT/N90 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[15] ;
  wire \BU2/U0/gLUT.iLUT/N91 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[16] ;
  wire \BU2/U0/gLUT.iLUT/N92 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[17] ;
  wire \BU2/U0/gLUT.iLUT/N93 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[18] ;
  wire \BU2/U0/gLUT.iLUT/N94 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[19] ;
  wire \BU2/U0/gLUT.iLUT/N95 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[20] ;
  wire \BU2/U0/gLUT.iLUT/N96 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[21] ;
  wire \BU2/U0/gLUT.iLUT/N97 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[22] ;
  wire \BU2/U0/gLUT.iLUT/N98 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[23] ;
  wire \BU2/U0/gLUT.iLUT/N99 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[24] ;
  wire \BU2/U0/gLUT.iLUT/N100 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[25] ;
  wire \BU2/U0/gLUT.iLUT/N101 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[26] ;
  wire \BU2/U0/gLUT.iLUT/N102 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[27] ;
  wire \BU2/U0/gLUT.iLUT/N103 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[28] ;
  wire \BU2/U0/gLUT.iLUT/N104 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[29] ;
  wire \BU2/U0/gLUT.iLUT/N105 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[30] ;
  wire \BU2/U0/gLUT.iLUT/N106 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[31] ;
  wire \BU2/U0/gLUT.iLUT/N107 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[32] ;
  wire \BU2/U0/gLUT.iLUT/N108 ;
  wire \BU2/U0/gLUT.iLUT/sum1<0>[34] ;
  wire \BU2/U0/gLUT.iLUT/N109 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_0_112 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[2] ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_2_113 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_1_114 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_3_115 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[3] ;
  wire \BU2/U0/gLUT.iLUT/N111 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_2_116 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_4_117 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[4] ;
  wire \BU2/U0/gLUT.iLUT/N112 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_3_118 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_5_119 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[5] ;
  wire \BU2/U0/gLUT.iLUT/N113 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_4_120 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_6_121 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[6] ;
  wire \BU2/U0/gLUT.iLUT/N114 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_5_122 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_7_123 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[7] ;
  wire \BU2/U0/gLUT.iLUT/N115 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_6_124 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_8_125 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[8] ;
  wire \BU2/U0/gLUT.iLUT/N116 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_7_126 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_9_127 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[9] ;
  wire \BU2/U0/gLUT.iLUT/N117 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_8_128 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_10_129 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[10] ;
  wire \BU2/U0/gLUT.iLUT/N118 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_9_130 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_11_131 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[11] ;
  wire \BU2/U0/gLUT.iLUT/N119 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_10_132 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_12_133 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[12] ;
  wire \BU2/U0/gLUT.iLUT/N120 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_11_134 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_13_135 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[13] ;
  wire \BU2/U0/gLUT.iLUT/N121 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_12_136 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_14_137 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[14] ;
  wire \BU2/U0/gLUT.iLUT/N122 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_13_138 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_15_139 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[15] ;
  wire \BU2/U0/gLUT.iLUT/N123 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_14_140 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_16_141 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[16] ;
  wire \BU2/U0/gLUT.iLUT/N124 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_15_142 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[17] ;
  wire \BU2/U0/gLUT.iLUT/N125 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_16_143 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[18] ;
  wire \BU2/U0/gLUT.iLUT/N126 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_1_17_144 ;
  wire \BU2/U0/gLUT.iLUT/pp_out_reg_0_17_145 ;
  wire \BU2/U0/gLUT.iLUT/sum<0>[20] ;
  wire \BU2/U0/gLUT.iLUT/N127 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[4] ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[5] ;
  wire \BU2/U0/gLUT.iLUT/N129 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[6] ;
  wire \BU2/U0/gLUT.iLUT/N130 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[7] ;
  wire \BU2/U0/gLUT.iLUT/N131 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[8] ;
  wire \BU2/U0/gLUT.iLUT/N132 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[9] ;
  wire \BU2/U0/gLUT.iLUT/N133 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[10] ;
  wire \BU2/U0/gLUT.iLUT/N134 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[11] ;
  wire \BU2/U0/gLUT.iLUT/N135 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[12] ;
  wire \BU2/U0/gLUT.iLUT/N136 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[13] ;
  wire \BU2/U0/gLUT.iLUT/N137 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[14] ;
  wire \BU2/U0/gLUT.iLUT/N138 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[15] ;
  wire \BU2/U0/gLUT.iLUT/N139 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[16] ;
  wire \BU2/U0/gLUT.iLUT/N140 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[17] ;
  wire \BU2/U0/gLUT.iLUT/N141 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[18] ;
  wire \BU2/U0/gLUT.iLUT/N142 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[19] ;
  wire \BU2/U0/gLUT.iLUT/N143 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[20] ;
  wire \BU2/U0/gLUT.iLUT/N144 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[21] ;
  wire \BU2/U0/gLUT.iLUT/N145 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[22] ;
  wire \BU2/U0/gLUT.iLUT/N146 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[23] ;
  wire \BU2/U0/gLUT.iLUT/N147 ;
  wire \BU2/U0/gLUT.iLUT/sum0<0>[25] ;
  wire \BU2/U0/gLUT.iLUT/N148 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig ;
  wire \BU2/U0/gLUT.iLUT/lut_sig ;
  wire \BU2/U0/gLUT.iLUT/ma_sig0 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig0 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig1 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig1_146 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig2 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig2 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig3 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig3 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig4 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig4 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig5 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig5 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig6 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig6 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig7 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig7 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig8 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig8 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig9 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig9 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig10 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig10 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig11 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig11 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig12 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig12 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig13 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig13 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig14 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig14 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig15 ;
  wire \BU2/N145 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig15 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig16 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig17 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig17 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig18 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig18 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig19 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig19 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig20 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig20 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig21 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig21 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig22 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig22 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig23 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig23 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig24 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig24 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig25 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig25 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig26 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig26 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig27 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig27 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig28 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig28 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig29 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig29 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig30 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig30 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig31 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig31 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig32 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig32 ;
  wire \BU2/N144 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig33 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig33 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig35 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig34 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig36 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig35 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig37 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig36 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig38 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig37 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig39 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig38 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig40 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig39 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig41 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig40 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig42 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig41 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig43 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig42 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig44 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig43 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig45 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig44 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig46 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig45 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig47 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig46 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig48 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig47 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig49 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig48 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig50 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig49 ;
  wire \BU2/N143 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig51 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig50 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig53 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig51 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig54 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig52 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig55 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig53 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig56 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig54 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig57 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig55 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig58 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig56 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig59 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig57 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig60 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig58 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig61 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig59 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig62 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig60 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig63 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig61 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig64 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig62 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig65 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig63 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig66 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig64 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig67 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig65 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig68 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig66 ;
  wire \BU2/N142 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig69 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig67 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig71 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig68 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig72 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig69 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig73 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig70 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig74 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig71 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig75 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig72 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig76 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig73 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig77 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig74 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig78 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig75 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig79 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig76 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig80 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig77 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig81 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig78 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig82 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig79 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig83 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig80 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig84 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig81 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig85 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig82 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig86 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig83 ;
  wire \BU2/N141 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig87 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig84 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig89 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig85 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig90 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig86 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig91 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig87 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig92 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig88 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig93 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig89 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig94 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig90 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig95 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig91 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig96 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig92 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig97 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig93 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig98 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig94 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig99 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig95 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig100 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig96 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig101 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig97 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig102 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig98 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig103 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig99 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig104 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig100 ;
  wire \BU2/N140 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig105 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig101 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig107 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig102 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig108 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig103 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig109 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig104 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig110 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig105 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig111 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig106 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig112 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig107 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig113 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig108 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig114 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig109 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig115 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig110 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig116 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig111 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig117 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig112 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig118 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig113 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig119 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig114 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig120 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig115 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig121 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig116 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig122 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig117 ;
  wire \BU2/N139 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig123 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig118 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig125 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig119 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig126 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig120 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig127 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig121 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig128 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig122 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig129 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig123 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig130 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig124 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig131 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig125 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig132 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig126 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig133 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig127 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig134 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig128 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig135 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig129 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig136 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig130 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig137 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig131 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig138 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig132 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig139 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig133 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig140 ;
  wire \BU2/U0/gLUT.iLUT/ma_sig134 ;
  wire \BU2/N138 ;
  wire \BU2/U0/gLUT.iLUT/lut_sig141 ;
  wire \BU2/N1 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire [15 : 0] a_147;
  wire [15 : 0] b_148;
  wire [31 : 0] p_149;
  wire [19 : 0] \BU2/U0/gLUT.iLUT/s1_add_out<0> ;
  wire [19 : 0] \BU2/U0/gLUT.iLUT/s1_add_out<2> ;
  wire [24 : 0] \BU2/U0/gLUT.iLUT/s2_add_out<0> ;
  wire [33 : 32] \BU2/U0/gLUT.iLUT/s5_add_out<0> ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy ;
  wire [19 : 0] \BU2/U0/gLUT.iLUT/s1_add_out<3> ;
  wire [19 : 0] \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy ;
  wire [24 : 0] \BU2/U0/gLUT.iLUT/s2_add_out<1> ;
  wire [24 : 0] \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy ;
  wire [19 : 0] \BU2/U0/gLUT.iLUT/s1_add_out<1> ;
  wire [19 : 0] \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy ;
  wire [17 : 0] \BU2/U0/gLUT.iLUT/pp_out<0> ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/pp_cout<0> ;
  wire [17 : 0] \BU2/U0/gLUT.iLUT/pp_out<1> ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/pp_cout<1> ;
  wire [17 : 0] \BU2/U0/gLUT.iLUT/pp_out<2> ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/pp_cout<2> ;
  wire [17 : 0] \BU2/U0/gLUT.iLUT/pp_out<3> ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/pp_cout<3> ;
  wire [17 : 0] \BU2/U0/gLUT.iLUT/pp_out<4> ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/pp_cout<4> ;
  wire [17 : 0] \BU2/U0/gLUT.iLUT/pp_out<5> ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/pp_cout<5> ;
  wire [17 : 0] \BU2/U0/gLUT.iLUT/pp_out<6> ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/pp_cout<6> ;
  wire [17 : 0] \BU2/U0/gLUT.iLUT/pp_out<7> ;
  wire [16 : 0] \BU2/U0/gLUT.iLUT/pp_cout<7> ;
  wire [0 : 0] \BU2/zero_detect ;
  assign
    a_147[15] = a[15],
    a_147[14] = a[14],
    a_147[13] = a[13],
    a_147[12] = a[12],
    a_147[11] = a[11],
    a_147[10] = a[10],
    a_147[9] = a[9],
    a_147[8] = a[8],
    a_147[7] = a[7],
    a_147[6] = a[6],
    a_147[5] = a[5],
    a_147[4] = a[4],
    a_147[3] = a[3],
    a_147[2] = a[2],
    a_147[1] = a[1],
    a_147[0] = a[0],
    b_148[15] = b[15],
    b_148[14] = b[14],
    b_148[13] = b[13],
    b_148[12] = b[12],
    b_148[11] = b[11],
    b_148[10] = b[10],
    b_148[9] = b[9],
    b_148[8] = b[8],
    b_148[7] = b[7],
    b_148[6] = b[6],
    b_148[5] = b[5],
    b_148[4] = b[4],
    b_148[3] = b[3],
    b_148[2] = b[2],
    b_148[1] = b[1],
    b_148[0] = b[0],
    p[31] = p_149[31],
    p[30] = p_149[30],
    p[29] = p_149[29],
    p[28] = p_149[28],
    p[27] = p_149[27],
    p[26] = p_149[26],
    p[25] = p_149[25],
    p[24] = p_149[24],
    p[23] = p_149[23],
    p[22] = p_149[22],
    p[21] = p_149[21],
    p[20] = p_149[20],
    p[19] = p_149[19],
    p[18] = p_149[18],
    p[17] = p_149[17],
    p[16] = p_149[16],
    p[15] = p_149[15],
    p[14] = p_149[14],
    p[13] = p_149[13],
    p[12] = p_149[12],
    p[11] = p_149[11],
    p[10] = p_149[10],
    p[9] = p_149[9],
    p[8] = p_149[8],
    p[7] = p_149[7],
    p[6] = p_149[6],
    p[5] = p_149[5],
    p[4] = p_149[4],
    p[3] = p_149[3],
    p[2] = p_149[2],
    p[1] = p_149[1],
    p[0] = p_149[0];
  VCC VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1511 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig1511  (
    .I0(a_147[15]),
    .I1(b_148[0]),
    .I2(b_148[1]),
    .O(\BU2/N145 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig3311 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig3311  (
    .I0(a_147[15]),
    .I1(b_148[2]),
    .I2(b_148[3]),
    .O(\BU2/N144 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig5111 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig5111  (
    .I0(a_147[15]),
    .I1(b_148[4]),
    .I2(b_148[5]),
    .O(\BU2/N143 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig6911 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig6911  (
    .I0(a_147[15]),
    .I1(b_148[6]),
    .I2(b_148[7]),
    .O(\BU2/N142 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig8711 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig8711  (
    .I0(a_147[15]),
    .I1(b_148[8]),
    .I2(b_148[9]),
    .O(\BU2/N141 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig10511 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig10511  (
    .I0(a_147[15]),
    .I1(b_148[10]),
    .I2(b_148[11]),
    .O(\BU2/N140 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig12311 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig12311  (
    .I0(a_147[15]),
    .I1(b_148[12]),
    .I2(b_148[13]),
    .O(\BU2/N139 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig14111 .INIT = 8'h9F;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig14111  (
    .I0(b_148[15]),
    .I1(b_148[14]),
    .I2(a_147[15]),
    .O(\BU2/N138 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig0_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig0_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[0]),
    .I3(a_147[1]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig0 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig100_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig100_Result1  (
    .I0(b_148[10]),
    .I1(b_148[11]),
    .I2(a_147[10]),
    .I3(a_147[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig100 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig101_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig101_Result1  (
    .I0(b_148[10]),
    .I1(b_148[11]),
    .I2(a_147[11]),
    .I3(a_147[12]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig101 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig102_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig102_Result1  (
    .I0(b_148[10]),
    .I1(b_148[11]),
    .I2(a_147[12]),
    .I3(a_147[13]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig102 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig103_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig103_Result1  (
    .I0(b_148[10]),
    .I1(b_148[11]),
    .I2(a_147[13]),
    .I3(a_147[14]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig103 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig104_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig104_Result1  (
    .I0(b_148[10]),
    .I1(b_148[11]),
    .I2(a_147[14]),
    .I3(a_147[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig104 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig108_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig108_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[0]),
    .I3(a_147[1]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig108 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig109_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig109_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[1]),
    .I3(a_147[2]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig109 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig10_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig10_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[10]),
    .I3(a_147[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig10 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig110_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig110_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[2]),
    .I3(a_147[3]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig110 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig111_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig111_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[3]),
    .I3(a_147[4]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig111 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig112_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig112_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[4]),
    .I3(a_147[5]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig112 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig113_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig113_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[5]),
    .I3(a_147[6]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig113 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig114_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig114_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[6]),
    .I3(a_147[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig114 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig115_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig115_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[7]),
    .I3(a_147[8]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig115 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig116_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig116_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[8]),
    .I3(a_147[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig116 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig117_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig117_Result1  (
    .I0(b_148[13]),
    .I1(b_148[12]),
    .I2(a_147[10]),
    .I3(a_147[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig117 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig118_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig118_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[10]),
    .I3(a_147[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig118 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig119_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig119_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[11]),
    .I3(a_147[12]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig119 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig11_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig11_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[11]),
    .I3(a_147[12]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig11 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig120_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig120_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[12]),
    .I3(a_147[13]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig120 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig121_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig121_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[13]),
    .I3(a_147[14]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig121 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig122_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig122_Result1  (
    .I0(b_148[12]),
    .I1(b_148[13]),
    .I2(a_147[14]),
    .I3(a_147[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig122 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig12_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig12_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[12]),
    .I3(a_147[13]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig12 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig13_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig13_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[13]),
    .I3(a_147[14]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig13 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig14_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig14_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[14]),
    .I3(a_147[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig14 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig18_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig18_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[0]),
    .I3(a_147[1]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig18 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig19_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig19_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[1]),
    .I3(a_147[2]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig19 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig1_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig1_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[1]),
    .I3(a_147[2]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig1_146 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig20_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig20_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[2]),
    .I3(a_147[3]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig20 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig21_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig21_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[3]),
    .I3(a_147[4]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig21 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig22_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig22_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[4]),
    .I3(a_147[5]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig22 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig23_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig23_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[5]),
    .I3(a_147[6]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig23 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig24_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig24_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[6]),
    .I3(a_147[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig24 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig25_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig25_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[7]),
    .I3(a_147[8]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig25 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig26_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig26_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[8]),
    .I3(a_147[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig26 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig27_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig27_Result1  (
    .I0(b_148[3]),
    .I1(b_148[2]),
    .I2(a_147[10]),
    .I3(a_147[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig27 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig28_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig28_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[10]),
    .I3(a_147[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig28 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig29_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig29_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[11]),
    .I3(a_147[12]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig29 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig2_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig2_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[2]),
    .I3(a_147[3]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig2 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig30_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig30_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[12]),
    .I3(a_147[13]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig30 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig31_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig31_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[13]),
    .I3(a_147[14]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig31 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig32_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig32_Result1  (
    .I0(b_148[2]),
    .I1(b_148[3]),
    .I2(a_147[14]),
    .I3(a_147[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig32 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig36_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig36_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[0]),
    .I3(a_147[1]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig36 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig37_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig37_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[1]),
    .I3(a_147[2]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig37 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig38_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig38_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[2]),
    .I3(a_147[3]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig38 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig39_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig39_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[3]),
    .I3(a_147[4]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig39 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig3_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig3_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[3]),
    .I3(a_147[4]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig3 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig40_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig40_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[4]),
    .I3(a_147[5]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig40 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig41_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig41_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[5]),
    .I3(a_147[6]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig41 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig42_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig42_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[6]),
    .I3(a_147[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig42 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig43_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig43_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[7]),
    .I3(a_147[8]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig43 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig44_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig44_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[8]),
    .I3(a_147[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig44 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig45_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig45_Result1  (
    .I0(b_148[5]),
    .I1(b_148[4]),
    .I2(a_147[10]),
    .I3(a_147[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig45 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig46_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig46_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[10]),
    .I3(a_147[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig46 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig47_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig47_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[11]),
    .I3(a_147[12]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig47 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig48_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig48_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[12]),
    .I3(a_147[13]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig48 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig49_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig49_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[13]),
    .I3(a_147[14]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig49 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig4_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig4_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[4]),
    .I3(a_147[5]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig4 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig50_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig50_Result1  (
    .I0(b_148[4]),
    .I1(b_148[5]),
    .I2(a_147[14]),
    .I3(a_147[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig50 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig54_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig54_Result1  (
    .I0(b_148[6]),
    .I1(b_148[7]),
    .I2(a_147[0]),
    .I3(a_147[1]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig54 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig55_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig55_Result1  (
    .I0(b_148[6]),
    .I1(b_148[7]),
    .I2(a_147[1]),
    .I3(a_147[2]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig55 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig56_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig56_Result1  (
    .I0(b_148[6]),
    .I1(b_148[7]),
    .I2(a_147[2]),
    .I3(a_147[3]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig56 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig57_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig57_Result1  (
    .I0(b_148[6]),
    .I1(b_148[7]),
    .I2(a_147[3]),
    .I3(a_147[4]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig57 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig58_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig58_Result1  (
    .I0(b_148[6]),
    .I1(b_148[7]),
    .I2(a_147[4]),
    .I3(a_147[5]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig58 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig59_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig59_Result1  (
    .I0(b_148[6]),
    .I1(b_148[7]),
    .I2(a_147[5]),
    .I3(a_147[6]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig59 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig5_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig5_Result1  (
    .I0(b_148[0]),
    .I1(b_148[1]),
    .I2(a_147[5]),
    .I3(a_147[6]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig5 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig60_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig60_Result1  (
    .I0(b_148[6]),
    .I1(b_148[7]),
    .I2(a_147[6]),
    .I3(a_147[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig60 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig61_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig61_Result1  (
    .I0(a_147[7]),
    .I1(b_148[6]),
    .I2(a_147[8]),
    .I3(b_148[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig61 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig62_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig62_Result1  (
    .I0(a_147[8]),
    .I1(b_148[6]),
    .I2(a_147[9]),
    .I3(b_148[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig62 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig63_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig63_Result1  (
    .I0(a_147[10]),
    .I1(b_148[7]),
    .I2(a_147[9]),
    .I3(b_148[6]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig63 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig64_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig64_Result1  (
    .I0(a_147[10]),
    .I1(b_148[6]),
    .I2(a_147[11]),
    .I3(b_148[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig64 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig65_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig65_Result1  (
    .I0(a_147[11]),
    .I1(b_148[6]),
    .I2(a_147[12]),
    .I3(b_148[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig65 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig66_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig66_Result1  (
    .I0(a_147[12]),
    .I1(b_148[6]),
    .I2(a_147[13]),
    .I3(b_148[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig66 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig67_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig67_Result1  (
    .I0(a_147[13]),
    .I1(b_148[6]),
    .I2(a_147[14]),
    .I3(b_148[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig67 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig68_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig68_Result1  (
    .I0(a_147[14]),
    .I1(b_148[6]),
    .I2(a_147[15]),
    .I3(b_148[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig68 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig6_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig6_Result1  (
    .I0(a_147[6]),
    .I1(b_148[0]),
    .I2(a_147[7]),
    .I3(b_148[1]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig6 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig72_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig72_Result1  (
    .I0(a_147[0]),
    .I1(b_148[8]),
    .I2(a_147[1]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig72 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig73_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig73_Result1  (
    .I0(a_147[1]),
    .I1(b_148[8]),
    .I2(a_147[2]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig73 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig74_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig74_Result1  (
    .I0(a_147[2]),
    .I1(b_148[8]),
    .I2(a_147[3]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig74 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig75_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig75_Result1  (
    .I0(a_147[3]),
    .I1(b_148[8]),
    .I2(a_147[4]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig75 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig76_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig76_Result1  (
    .I0(a_147[4]),
    .I1(b_148[8]),
    .I2(a_147[5]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig76 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig77_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig77_Result1  (
    .I0(a_147[5]),
    .I1(b_148[8]),
    .I2(a_147[6]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig77 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig78_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig78_Result1  (
    .I0(a_147[6]),
    .I1(b_148[8]),
    .I2(a_147[7]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig78 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig79_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig79_Result1  (
    .I0(a_147[7]),
    .I1(b_148[8]),
    .I2(a_147[8]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig79 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig7_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig7_Result1  (
    .I0(a_147[7]),
    .I1(b_148[0]),
    .I2(a_147[8]),
    .I3(b_148[1]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig7 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig80_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig80_Result1  (
    .I0(a_147[8]),
    .I1(b_148[8]),
    .I2(a_147[9]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig80 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig81_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig81_Result1  (
    .I0(a_147[10]),
    .I1(b_148[9]),
    .I2(a_147[9]),
    .I3(b_148[8]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig81 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig82_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig82_Result1  (
    .I0(a_147[10]),
    .I1(b_148[8]),
    .I2(a_147[11]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig82 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig83_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig83_Result1  (
    .I0(a_147[11]),
    .I1(b_148[8]),
    .I2(a_147[12]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig83 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig84_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig84_Result1  (
    .I0(a_147[12]),
    .I1(b_148[8]),
    .I2(a_147[13]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig84 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig85_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig85_Result1  (
    .I0(a_147[13]),
    .I1(b_148[8]),
    .I2(a_147[14]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig85 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig86_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig86_Result1  (
    .I0(a_147[14]),
    .I1(b_148[8]),
    .I2(a_147[15]),
    .I3(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig86 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig8_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig8_Result1  (
    .I0(a_147[8]),
    .I1(b_148[0]),
    .I2(a_147[9]),
    .I3(b_148[1]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig8 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig90_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig90_Result1  (
    .I0(a_147[0]),
    .I1(b_148[10]),
    .I2(a_147[1]),
    .I3(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig90 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig91_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig91_Result1  (
    .I0(a_147[1]),
    .I1(b_148[10]),
    .I2(a_147[2]),
    .I3(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig91 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig92_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig92_Result1  (
    .I0(a_147[2]),
    .I1(b_148[10]),
    .I2(a_147[3]),
    .I3(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig92 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig93_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig93_Result1  (
    .I0(a_147[3]),
    .I1(b_148[10]),
    .I2(a_147[4]),
    .I3(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig93 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig94_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig94_Result1  (
    .I0(a_147[4]),
    .I1(b_148[10]),
    .I2(a_147[5]),
    .I3(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig94 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig95_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig95_Result1  (
    .I0(a_147[5]),
    .I1(b_148[10]),
    .I2(a_147[6]),
    .I3(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig95 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig96_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig96_Result1  (
    .I0(a_147[6]),
    .I1(b_148[10]),
    .I2(a_147[7]),
    .I3(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig96 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig97_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig97_Result1  (
    .I0(a_147[7]),
    .I1(b_148[10]),
    .I2(a_147[8]),
    .I3(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig97 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig98_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig98_Result1  (
    .I0(a_147[8]),
    .I1(b_148[10]),
    .I2(a_147[9]),
    .I3(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig98 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig99_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig99_Result1  (
    .I0(a_147[10]),
    .I1(b_148[11]),
    .I2(a_147[9]),
    .I3(b_148[10]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig99 )
  );
  defparam \BU2/U0/gLUT.iLUT/Mxor_lut_sig9_Result1 .INIT = 16'h6AC0;
  LUT4 \BU2/U0/gLUT.iLUT/Mxor_lut_sig9_Result1  (
    .I0(a_147[10]),
    .I1(b_148[1]),
    .I2(a_147[9]),
    .I3(b_148[0]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig9 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1261 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1261  (
    .I0(a_147[1]),
    .I1(a_147[0]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig126 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1271 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1271  (
    .I0(a_147[2]),
    .I1(a_147[1]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig127 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1281 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1281  (
    .I0(a_147[3]),
    .I1(a_147[2]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig128 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1291 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1291  (
    .I0(a_147[4]),
    .I1(a_147[3]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig129 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1301 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1301  (
    .I0(a_147[5]),
    .I1(a_147[4]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig130 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1311 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1311  (
    .I0(a_147[6]),
    .I1(a_147[5]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig131 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1321 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1321  (
    .I0(a_147[7]),
    .I1(a_147[6]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig132 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1331 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1331  (
    .I0(a_147[8]),
    .I1(a_147[7]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig133 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1341 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1341  (
    .I0(a_147[9]),
    .I1(a_147[8]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig134 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1351 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1351  (
    .I0(a_147[9]),
    .I1(a_147[10]),
    .I2(b_148[15]),
    .I3(b_148[14]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig135 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1361 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1361  (
    .I0(a_147[11]),
    .I1(a_147[10]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig136 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1371 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1371  (
    .I0(a_147[12]),
    .I1(a_147[11]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig137 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1381 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1381  (
    .I0(a_147[13]),
    .I1(a_147[12]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig138 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1391 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1391  (
    .I0(a_147[14]),
    .I1(a_147[13]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig139 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1401 .INIT = 16'h935F;
  LUT4 \BU2/U0/gLUT.iLUT/lut_sig1401  (
    .I0(a_147[15]),
    .I1(a_147[14]),
    .I2(b_148[14]),
    .I3(b_148[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig140 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1051 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig1051  (
    .I0(a_147[15]),
    .I1(b_148[10]),
    .I2(b_148[11]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig105 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1231 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig1231  (
    .I0(a_147[15]),
    .I1(b_148[12]),
    .I2(b_148[13]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig123 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1411 .INIT = 8'h9F;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig1411  (
    .I0(b_148[15]),
    .I1(b_148[14]),
    .I2(a_147[15]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig141 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig151 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig151  (
    .I0(a_147[15]),
    .I1(b_148[0]),
    .I2(b_148[1]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig15 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig331 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig331  (
    .I0(a_147[15]),
    .I1(b_148[2]),
    .I2(b_148[3]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig33 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig511 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig511  (
    .I0(a_147[15]),
    .I1(b_148[4]),
    .I2(b_148[5]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig51 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig691 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig691  (
    .I0(a_147[15]),
    .I1(b_148[6]),
    .I2(b_148[7]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig69 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig871 .INIT = 8'h28;
  LUT3 \BU2/U0/gLUT.iLUT/lut_sig871  (
    .I0(a_147[15]),
    .I1(b_148[8]),
    .I2(b_148[9]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig87 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1 .INIT = 4'h8;
  LUT2 \BU2/U0/gLUT.iLUT/lut_sig1  (
    .I0(a_147[0]),
    .I1(b_148[0]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1071 .INIT = 4'h8;
  LUT2 \BU2/U0/gLUT.iLUT/lut_sig1071  (
    .I0(a_147[0]),
    .I1(b_148[12]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig107 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig1251 .INIT = 4'h7;
  LUT2 \BU2/U0/gLUT.iLUT/lut_sig1251  (
    .I0(a_147[0]),
    .I1(b_148[14]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig125 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig171 .INIT = 4'h8;
  LUT2 \BU2/U0/gLUT.iLUT/lut_sig171  (
    .I0(a_147[0]),
    .I1(b_148[2]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig17 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig351 .INIT = 4'h8;
  LUT2 \BU2/U0/gLUT.iLUT/lut_sig351  (
    .I0(a_147[0]),
    .I1(b_148[4]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig35 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig531 .INIT = 4'h8;
  LUT2 \BU2/U0/gLUT.iLUT/lut_sig531  (
    .I0(a_147[0]),
    .I1(b_148[6]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig53 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig711 .INIT = 4'h8;
  LUT2 \BU2/U0/gLUT.iLUT/lut_sig711  (
    .I0(a_147[0]),
    .I1(b_148[8]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig71 )
  );
  defparam \BU2/U0/gLUT.iLUT/lut_sig891 .INIT = 4'h8;
  LUT2 \BU2/U0/gLUT.iLUT/lut_sig891  (
    .I0(a_147[0]),
    .I1(b_148[10]),
    .O(\BU2/U0/gLUT.iLUT/lut_sig89 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_0_78 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_1_80 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_2_82 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_3_84 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_4_86 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_5_88 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_6_90 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_7_92 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_8_94 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_9_96 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_10_98 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_11_100 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_12_102 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_13_104 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_14_106 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_15_108 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_16_109 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_3_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_3_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<3>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_3_17_110 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_0_6 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_1_7 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_2_45 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_3_47 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_4_49 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_5_51 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_6_53 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_7_55 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_8_57 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_9_59 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_10_61 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_11_63 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_12_65 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_13_67 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_14_69 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_15_71 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_16_73 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_4_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_4_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<4>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_4_17_77 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_0_44 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_1_46 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_2_48 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_3_50 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_4_52 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_5_54 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_6_56 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_7_58 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_8_60 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_9_62 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_10_64 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_11_66 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_12_68 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_13_70 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_14_72 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_15_74 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_16_75 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_5_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_5_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<5>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_5_17_76 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_0_8 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_1_9 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_2_11 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_3_13 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_4_15 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_5_17 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_6_19 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_7_21 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_8_23 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_9_25 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_10_27 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_11_29 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_12_31 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_13_33 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_14_35 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_15_37 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_16_39 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_6_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_6_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<6>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_6_17_43 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_0_10 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_1_12 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_2_14 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_3_16 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_4_18 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_5_20 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_6_22 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_7_24 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_8_26 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_9_28 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_10_30 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_11_32 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_12_34 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_13_36 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_14_38 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_15_40 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_16_41 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_7_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_7_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<7>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_7_17_42 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_0_2 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_1_3 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_2_113 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_3_115 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_4_117 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_5_119 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_6_121 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_7_123 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_8_125 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_9_127 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_10_129 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_11_131 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_12_133 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_13_135 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_14_137 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_15_139 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_16_141 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_0_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_0_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<0>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_0_17_145 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_0_112 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_1_114 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_2_116 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_3_118 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_4_120 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_5_122 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_6_124 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_7_126 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_8_128 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_9_130 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_10_132 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_11_134 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_12_136 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_13_138 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_14_140 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_15_142 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_16_143 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_1_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_1_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<1>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_1_17_144 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_0_4 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_1_5 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_2_79 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_3_81 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_4_83 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_5_85 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_6_87 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_7_89 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_8_91 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_9_93 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_10_95 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_11_97 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_12_99 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_13_101 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_14_103 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_15_105 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_16_107 )
  );
  defparam \BU2/U0/gLUT.iLUT/pp_out_reg_2_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/pp_out_reg_2_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out<2>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/pp_out_reg_2_17_111 )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out_reg_0_0_2 ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[0] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out_reg_0_1_3 ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[1] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[2] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_18 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_18  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[18] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_0_19 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_0_19  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<0>[20] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out_reg_2_0_4 ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[0] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out_reg_2_1_5 ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[1] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[2] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_18 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_18  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[18] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_1_19 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_1_19  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<1>[20] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<1>[19] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out_reg_4_0_6 ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[0] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out_reg_4_1_7 ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[1] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[2] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_18 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_18  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[18] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_2_19 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_2_19  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<2>[20] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out_reg_6_0_8 ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[0] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/pp_out_reg_6_1_9 ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[1] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[2] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_18 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_18  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[18] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/s1_add_out_3_19 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s1_add_out_3_19  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum<3>[20] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s1_add_out<3>[19] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s1_add_out<0>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[0] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s1_add_out<0>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[1] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s1_add_out<0>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[2] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s1_add_out<0>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_18 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_18  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[18] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_19 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_19  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[19] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[19] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_20 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_20  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[20] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[20] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_21 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_21  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[21] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[21] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_22 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_22  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[22] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[22] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_23 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_23  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[23] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[23] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_0_24 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_0_24  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<0>[25] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s1_add_out<2>[0] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[0] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s1_add_out<2>[1] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[1] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s1_add_out<2>[2] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[2] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s1_add_out<2>[3] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[4] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[5] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[6] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[7] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[8] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[9] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[10] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[11] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[12] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[13] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[14] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[15] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[16] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[17] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_18 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_18  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[18] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_19 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_19  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[19] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[19] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_20 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_20  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[20] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[20] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_21 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_21  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[21] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[21] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_22 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_22  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[22] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[22] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_23 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_23  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[23] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[23] )
  );
  defparam \BU2/U0/gLUT.iLUT/s2_add_out_1_24 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s2_add_out_1_24  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum0<1>[25] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s2_add_out<1>[24] )
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_0 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_0  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s2_add_out<0>[0] ),
    .R(sclr),
    .Q(p_149[0])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_1 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_1  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s2_add_out<0>[1] ),
    .R(sclr),
    .Q(p_149[1])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_2 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_2  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s2_add_out<0>[2] ),
    .R(sclr),
    .Q(p_149[2])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_3 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_3  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s2_add_out<0>[3] ),
    .R(sclr),
    .Q(p_149[3])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_4 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_4  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s2_add_out<0>[4] ),
    .R(sclr),
    .Q(p_149[4])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_5 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_5  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s2_add_out<0>[5] ),
    .R(sclr),
    .Q(p_149[5])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_6 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_6  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s2_add_out<0>[6] ),
    .R(sclr),
    .Q(p_149[6])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_7 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_7  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/s2_add_out<0>[7] ),
    .R(sclr),
    .Q(p_149[7])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_8 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_8  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[8] ),
    .R(sclr),
    .Q(p_149[8])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_9 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_9  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[9] ),
    .R(sclr),
    .Q(p_149[9])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_10 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_10  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[10] ),
    .R(sclr),
    .Q(p_149[10])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_11 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_11  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[11] ),
    .R(sclr),
    .Q(p_149[11])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_12 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_12  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[12] ),
    .R(sclr),
    .Q(p_149[12])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_13 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_13  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[13] ),
    .R(sclr),
    .Q(p_149[13])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_14 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_14  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[14] ),
    .R(sclr),
    .Q(p_149[14])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_15 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_15  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[15] ),
    .R(sclr),
    .Q(p_149[15])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_16 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_16  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[16] ),
    .R(sclr),
    .Q(p_149[16])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_17 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_17  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[17] ),
    .R(sclr),
    .Q(p_149[17])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_18 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_18  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[18] ),
    .R(sclr),
    .Q(p_149[18])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_19 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_19  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[19] ),
    .R(sclr),
    .Q(p_149[19])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_20 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_20  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[20] ),
    .R(sclr),
    .Q(p_149[20])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_21 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_21  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[21] ),
    .R(sclr),
    .Q(p_149[21])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_22 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_22  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[22] ),
    .R(sclr),
    .Q(p_149[22])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_23 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_23  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[23] ),
    .R(sclr),
    .Q(p_149[23])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_24 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_24  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[24] ),
    .R(sclr),
    .Q(p_149[24])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_25 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_25  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[25] ),
    .R(sclr),
    .Q(p_149[25])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_26 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_26  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[26] ),
    .R(sclr),
    .Q(p_149[26])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_27 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_27  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[27] ),
    .R(sclr),
    .Q(p_149[27])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_28 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_28  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[28] ),
    .R(sclr),
    .Q(p_149[28])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_29 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_29  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[29] ),
    .R(sclr),
    .Q(p_149[29])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_30 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_30  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[30] ),
    .R(sclr),
    .Q(p_149[30])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_31 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_31  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[31] ),
    .R(sclr),
    .Q(p_149[31])
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_32 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_32  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[32] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s5_add_out<0>[32] )
  );
  defparam \BU2/U0/gLUT.iLUT/s3_add_out_0_33 .INIT = 1'b0;
  FDR \BU2/U0/gLUT.iLUT/s3_add_out_0_33  (
    .C(clk),
    .D(\BU2/U0/gLUT.iLUT/sum1<0>[34] ),
    .R(sclr),
    .Q(\BU2/U0/gLUT.iLUT/s5_add_out<0>[33] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<0> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<0>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_2_11 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_0_10 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[2] )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<0>  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_2_11 ),
    .S(\BU2/U0/gLUT.iLUT/sum<3>[2] ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [0])
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<1> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<1>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_3_13 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_1_12 ),
    .O(\BU2/U0/gLUT.iLUT/N10 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [0]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_3_13 ),
    .S(\BU2/U0/gLUT.iLUT/N10 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [1])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [0]),
    .LI(\BU2/U0/gLUT.iLUT/N10 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<2> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<2>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_4_15 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_2_14 ),
    .O(\BU2/U0/gLUT.iLUT/N11 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [1]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_4_15 ),
    .S(\BU2/U0/gLUT.iLUT/N11 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [2])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [1]),
    .LI(\BU2/U0/gLUT.iLUT/N11 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<3> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<3>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_5_17 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_3_16 ),
    .O(\BU2/U0/gLUT.iLUT/N12 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [2]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_5_17 ),
    .S(\BU2/U0/gLUT.iLUT/N12 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [3])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [2]),
    .LI(\BU2/U0/gLUT.iLUT/N12 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<4> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<4>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_6_19 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_4_18 ),
    .O(\BU2/U0/gLUT.iLUT/N13 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [3]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_6_19 ),
    .S(\BU2/U0/gLUT.iLUT/N13 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [4])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [3]),
    .LI(\BU2/U0/gLUT.iLUT/N13 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<5> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<5>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_7_21 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_5_20 ),
    .O(\BU2/U0/gLUT.iLUT/N14 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [4]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_7_21 ),
    .S(\BU2/U0/gLUT.iLUT/N14 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [5])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [4]),
    .LI(\BU2/U0/gLUT.iLUT/N14 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<6> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<6>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_8_23 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_6_22 ),
    .O(\BU2/U0/gLUT.iLUT/N15 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [5]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_8_23 ),
    .S(\BU2/U0/gLUT.iLUT/N15 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [6])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [5]),
    .LI(\BU2/U0/gLUT.iLUT/N15 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<7> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<7>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_9_25 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_7_24 ),
    .O(\BU2/U0/gLUT.iLUT/N16 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [6]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_9_25 ),
    .S(\BU2/U0/gLUT.iLUT/N16 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [7])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [6]),
    .LI(\BU2/U0/gLUT.iLUT/N16 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<8> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<8>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_10_27 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_8_26 ),
    .O(\BU2/U0/gLUT.iLUT/N17 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [7]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_10_27 ),
    .S(\BU2/U0/gLUT.iLUT/N17 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [8])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [7]),
    .LI(\BU2/U0/gLUT.iLUT/N17 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<9> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<9>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_11_29 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_9_28 ),
    .O(\BU2/U0/gLUT.iLUT/N18 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [8]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_11_29 ),
    .S(\BU2/U0/gLUT.iLUT/N18 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [9])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [8]),
    .LI(\BU2/U0/gLUT.iLUT/N18 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<10> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<10>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_12_31 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_10_30 ),
    .O(\BU2/U0/gLUT.iLUT/N19 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [9]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_12_31 ),
    .S(\BU2/U0/gLUT.iLUT/N19 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [10])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [9]),
    .LI(\BU2/U0/gLUT.iLUT/N19 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<11> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<11>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_13_33 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_11_32 ),
    .O(\BU2/U0/gLUT.iLUT/N20 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [10]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_13_33 ),
    .S(\BU2/U0/gLUT.iLUT/N20 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [11])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [10]),
    .LI(\BU2/U0/gLUT.iLUT/N20 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<12> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<12>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_14_35 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_12_34 ),
    .O(\BU2/U0/gLUT.iLUT/N21 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [11]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_14_35 ),
    .S(\BU2/U0/gLUT.iLUT/N21 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [12])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [11]),
    .LI(\BU2/U0/gLUT.iLUT/N21 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<13> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<13>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_15_37 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_13_36 ),
    .O(\BU2/U0/gLUT.iLUT/N22 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [12]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_15_37 ),
    .S(\BU2/U0/gLUT.iLUT/N22 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [13])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [12]),
    .LI(\BU2/U0/gLUT.iLUT/N22 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<14> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<14>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_16_39 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_14_38 ),
    .O(\BU2/U0/gLUT.iLUT/N23 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [13]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_16_39 ),
    .S(\BU2/U0/gLUT.iLUT/N23 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [14])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [13]),
    .LI(\BU2/U0/gLUT.iLUT/N23 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<15> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<15>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_17_43 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_15_40 ),
    .O(\BU2/U0/gLUT.iLUT/N24 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [14]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_17_43 ),
    .S(\BU2/U0/gLUT.iLUT/N24 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [15])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [14]),
    .LI(\BU2/U0/gLUT.iLUT/N24 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<16> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<16>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_17_43 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_16_41 ),
    .O(\BU2/U0/gLUT.iLUT/N25 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [15]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_6_17_43 ),
    .S(\BU2/U0/gLUT.iLUT/N25 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [16])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [15]),
    .LI(\BU2/U0/gLUT.iLUT/N25 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<17> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_lut<17>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_6_17_43 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_7_17_42 ),
    .O(\BU2/U0/gLUT.iLUT/N26 )
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_xor<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_3_add0000_cy [16]),
    .LI(\BU2/U0/gLUT.iLUT/N26 ),
    .O(\BU2/U0/gLUT.iLUT/sum<3>[20] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<0> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<0>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[4] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[0] ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[4] )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<0>  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[4] ),
    .S(\BU2/U0/gLUT.iLUT/sum0<1>[4] ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [0])
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<1> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<1>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[5] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[1] ),
    .O(\BU2/U0/gLUT.iLUT/N28 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [0]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[5] ),
    .S(\BU2/U0/gLUT.iLUT/N28 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [1])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [0]),
    .LI(\BU2/U0/gLUT.iLUT/N28 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<2> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<2>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[6] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[2] ),
    .O(\BU2/U0/gLUT.iLUT/N29 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [1]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[6] ),
    .S(\BU2/U0/gLUT.iLUT/N29 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [2])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [1]),
    .LI(\BU2/U0/gLUT.iLUT/N29 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<3> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<3>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[7] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[3] ),
    .O(\BU2/U0/gLUT.iLUT/N30 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [2]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[7] ),
    .S(\BU2/U0/gLUT.iLUT/N30 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [3])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [2]),
    .LI(\BU2/U0/gLUT.iLUT/N30 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<4> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<4>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[8] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[4] ),
    .O(\BU2/U0/gLUT.iLUT/N31 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [3]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[8] ),
    .S(\BU2/U0/gLUT.iLUT/N31 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [4])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [3]),
    .LI(\BU2/U0/gLUT.iLUT/N31 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<5> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<5>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[9] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[5] ),
    .O(\BU2/U0/gLUT.iLUT/N32 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [4]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[9] ),
    .S(\BU2/U0/gLUT.iLUT/N32 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [5])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [4]),
    .LI(\BU2/U0/gLUT.iLUT/N32 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<6> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<6>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[10] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[6] ),
    .O(\BU2/U0/gLUT.iLUT/N33 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [5]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[10] ),
    .S(\BU2/U0/gLUT.iLUT/N33 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [6])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [5]),
    .LI(\BU2/U0/gLUT.iLUT/N33 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<7> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<7>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[11] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[7] ),
    .O(\BU2/U0/gLUT.iLUT/N34 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [6]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[11] ),
    .S(\BU2/U0/gLUT.iLUT/N34 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [7])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [6]),
    .LI(\BU2/U0/gLUT.iLUT/N34 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<8> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<8>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[12] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[8] ),
    .O(\BU2/U0/gLUT.iLUT/N35 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [7]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[12] ),
    .S(\BU2/U0/gLUT.iLUT/N35 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [8])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [7]),
    .LI(\BU2/U0/gLUT.iLUT/N35 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<9> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<9>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[13] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[9] ),
    .O(\BU2/U0/gLUT.iLUT/N36 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [8]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[13] ),
    .S(\BU2/U0/gLUT.iLUT/N36 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [9])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [8]),
    .LI(\BU2/U0/gLUT.iLUT/N36 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<10> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<10>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[14] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[10] ),
    .O(\BU2/U0/gLUT.iLUT/N37 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [9]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[14] ),
    .S(\BU2/U0/gLUT.iLUT/N37 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [10])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [9]),
    .LI(\BU2/U0/gLUT.iLUT/N37 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<11> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<11>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[15] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[11] ),
    .O(\BU2/U0/gLUT.iLUT/N38 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [10]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[15] ),
    .S(\BU2/U0/gLUT.iLUT/N38 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [11])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [10]),
    .LI(\BU2/U0/gLUT.iLUT/N38 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<12> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<12>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[16] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[12] ),
    .O(\BU2/U0/gLUT.iLUT/N39 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [11]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[16] ),
    .S(\BU2/U0/gLUT.iLUT/N39 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [12])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [11]),
    .LI(\BU2/U0/gLUT.iLUT/N39 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<13> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<13>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[17] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[13] ),
    .O(\BU2/U0/gLUT.iLUT/N40 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [12]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[17] ),
    .S(\BU2/U0/gLUT.iLUT/N40 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [13])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [12]),
    .LI(\BU2/U0/gLUT.iLUT/N40 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<14> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<14>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[18] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[14] ),
    .O(\BU2/U0/gLUT.iLUT/N41 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [13]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[18] ),
    .S(\BU2/U0/gLUT.iLUT/N41 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [14])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [13]),
    .LI(\BU2/U0/gLUT.iLUT/N41 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<15> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<15>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<3>[15] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .O(\BU2/U0/gLUT.iLUT/N42 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [14]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N42 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [15])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [14]),
    .LI(\BU2/U0/gLUT.iLUT/N42 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[19] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<16> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<16>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[16] ),
    .O(\BU2/U0/gLUT.iLUT/N43 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [15]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N43 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [16])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [15]),
    .LI(\BU2/U0/gLUT.iLUT/N43 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[20] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<17> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<17>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[17] ),
    .O(\BU2/U0/gLUT.iLUT/N44 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [16]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N44 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [17])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [16]),
    .LI(\BU2/U0/gLUT.iLUT/N44 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[21] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<18> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<18>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[18] ),
    .O(\BU2/U0/gLUT.iLUT/N45 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<18>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [17]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N45 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [18])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<18>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [17]),
    .LI(\BU2/U0/gLUT.iLUT/N45 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[22] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<19> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<19>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[19] ),
    .O(\BU2/U0/gLUT.iLUT/N46 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy<19>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [18]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N46 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [19])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<19>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [18]),
    .LI(\BU2/U0/gLUT.iLUT/N46 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[23] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<20> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_lut<20>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<2>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<3>[19] ),
    .O(\BU2/U0/gLUT.iLUT/N47 )
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_xor<20>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_1_add0000_cy [19]),
    .LI(\BU2/U0/gLUT.iLUT/N47 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<1>[25] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<0> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<0>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_2_45 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_0_44 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[2] )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<0>  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_2_45 ),
    .S(\BU2/U0/gLUT.iLUT/sum<2>[2] ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [0])
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<1> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<1>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_3_47 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_1_46 ),
    .O(\BU2/U0/gLUT.iLUT/N49 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [0]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_3_47 ),
    .S(\BU2/U0/gLUT.iLUT/N49 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [1])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [0]),
    .LI(\BU2/U0/gLUT.iLUT/N49 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<2> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<2>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_4_49 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_2_48 ),
    .O(\BU2/U0/gLUT.iLUT/N50 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [1]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_4_49 ),
    .S(\BU2/U0/gLUT.iLUT/N50 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [2])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [1]),
    .LI(\BU2/U0/gLUT.iLUT/N50 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<3> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<3>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_5_51 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_3_50 ),
    .O(\BU2/U0/gLUT.iLUT/N51 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [2]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_5_51 ),
    .S(\BU2/U0/gLUT.iLUT/N51 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [3])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [2]),
    .LI(\BU2/U0/gLUT.iLUT/N51 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<4> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<4>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_6_53 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_4_52 ),
    .O(\BU2/U0/gLUT.iLUT/N52 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [3]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_6_53 ),
    .S(\BU2/U0/gLUT.iLUT/N52 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [4])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [3]),
    .LI(\BU2/U0/gLUT.iLUT/N52 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<5> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<5>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_7_55 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_5_54 ),
    .O(\BU2/U0/gLUT.iLUT/N53 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [4]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_7_55 ),
    .S(\BU2/U0/gLUT.iLUT/N53 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [5])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [4]),
    .LI(\BU2/U0/gLUT.iLUT/N53 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<6> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<6>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_8_57 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_6_56 ),
    .O(\BU2/U0/gLUT.iLUT/N54 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [5]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_8_57 ),
    .S(\BU2/U0/gLUT.iLUT/N54 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [6])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [5]),
    .LI(\BU2/U0/gLUT.iLUT/N54 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<7> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<7>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_9_59 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_7_58 ),
    .O(\BU2/U0/gLUT.iLUT/N55 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [6]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_9_59 ),
    .S(\BU2/U0/gLUT.iLUT/N55 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [7])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [6]),
    .LI(\BU2/U0/gLUT.iLUT/N55 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<8> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<8>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_10_61 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_8_60 ),
    .O(\BU2/U0/gLUT.iLUT/N56 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [7]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_10_61 ),
    .S(\BU2/U0/gLUT.iLUT/N56 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [8])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [7]),
    .LI(\BU2/U0/gLUT.iLUT/N56 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<9> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<9>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_11_63 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_9_62 ),
    .O(\BU2/U0/gLUT.iLUT/N57 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [8]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_11_63 ),
    .S(\BU2/U0/gLUT.iLUT/N57 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [9])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [8]),
    .LI(\BU2/U0/gLUT.iLUT/N57 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<10> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<10>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_12_65 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_10_64 ),
    .O(\BU2/U0/gLUT.iLUT/N58 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [9]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_12_65 ),
    .S(\BU2/U0/gLUT.iLUT/N58 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [10])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [9]),
    .LI(\BU2/U0/gLUT.iLUT/N58 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<11> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<11>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_13_67 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_11_66 ),
    .O(\BU2/U0/gLUT.iLUT/N59 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [10]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_13_67 ),
    .S(\BU2/U0/gLUT.iLUT/N59 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [11])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [10]),
    .LI(\BU2/U0/gLUT.iLUT/N59 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<12> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<12>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_14_69 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_12_68 ),
    .O(\BU2/U0/gLUT.iLUT/N60 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [11]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_14_69 ),
    .S(\BU2/U0/gLUT.iLUT/N60 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [12])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [11]),
    .LI(\BU2/U0/gLUT.iLUT/N60 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<13> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<13>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_15_71 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_13_70 ),
    .O(\BU2/U0/gLUT.iLUT/N61 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [12]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_15_71 ),
    .S(\BU2/U0/gLUT.iLUT/N61 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [13])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [12]),
    .LI(\BU2/U0/gLUT.iLUT/N61 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<14> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<14>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_16_73 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_14_72 ),
    .O(\BU2/U0/gLUT.iLUT/N62 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [13]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_16_73 ),
    .S(\BU2/U0/gLUT.iLUT/N62 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [14])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [13]),
    .LI(\BU2/U0/gLUT.iLUT/N62 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<15> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<15>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_17_77 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_15_74 ),
    .O(\BU2/U0/gLUT.iLUT/N63 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [14]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_17_77 ),
    .S(\BU2/U0/gLUT.iLUT/N63 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [15])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [14]),
    .LI(\BU2/U0/gLUT.iLUT/N63 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<16> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<16>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_17_77 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_16_75 ),
    .O(\BU2/U0/gLUT.iLUT/N64 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [15]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_4_17_77 ),
    .S(\BU2/U0/gLUT.iLUT/N64 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [16])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [15]),
    .LI(\BU2/U0/gLUT.iLUT/N64 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<17> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_lut<17>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_4_17_77 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_5_17_76 ),
    .O(\BU2/U0/gLUT.iLUT/N65 )
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_xor<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_2_add0000_cy [16]),
    .LI(\BU2/U0/gLUT.iLUT/N65 ),
    .O(\BU2/U0/gLUT.iLUT/sum<2>[20] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<0> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<0>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_2_79 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_0_78 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[2] )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<0>  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_2_79 ),
    .S(\BU2/U0/gLUT.iLUT/sum<1>[2] ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [0])
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<1> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<1>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_3_81 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_1_80 ),
    .O(\BU2/U0/gLUT.iLUT/N67 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [0]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_3_81 ),
    .S(\BU2/U0/gLUT.iLUT/N67 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [1])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [0]),
    .LI(\BU2/U0/gLUT.iLUT/N67 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<2> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<2>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_4_83 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_2_82 ),
    .O(\BU2/U0/gLUT.iLUT/N68 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [1]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_4_83 ),
    .S(\BU2/U0/gLUT.iLUT/N68 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [2])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [1]),
    .LI(\BU2/U0/gLUT.iLUT/N68 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<3> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<3>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_5_85 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_3_84 ),
    .O(\BU2/U0/gLUT.iLUT/N69 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [2]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_5_85 ),
    .S(\BU2/U0/gLUT.iLUT/N69 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [3])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [2]),
    .LI(\BU2/U0/gLUT.iLUT/N69 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<4> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<4>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_6_87 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_4_86 ),
    .O(\BU2/U0/gLUT.iLUT/N70 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [3]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_6_87 ),
    .S(\BU2/U0/gLUT.iLUT/N70 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [4])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [3]),
    .LI(\BU2/U0/gLUT.iLUT/N70 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<5> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<5>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_7_89 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_5_88 ),
    .O(\BU2/U0/gLUT.iLUT/N71 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [4]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_7_89 ),
    .S(\BU2/U0/gLUT.iLUT/N71 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [5])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [4]),
    .LI(\BU2/U0/gLUT.iLUT/N71 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<6> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<6>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_8_91 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_6_90 ),
    .O(\BU2/U0/gLUT.iLUT/N72 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [5]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_8_91 ),
    .S(\BU2/U0/gLUT.iLUT/N72 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [6])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [5]),
    .LI(\BU2/U0/gLUT.iLUT/N72 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<7> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<7>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_9_93 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_7_92 ),
    .O(\BU2/U0/gLUT.iLUT/N73 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [6]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_9_93 ),
    .S(\BU2/U0/gLUT.iLUT/N73 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [7])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [6]),
    .LI(\BU2/U0/gLUT.iLUT/N73 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<8> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<8>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_10_95 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_8_94 ),
    .O(\BU2/U0/gLUT.iLUT/N74 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [7]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_10_95 ),
    .S(\BU2/U0/gLUT.iLUT/N74 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [8])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [7]),
    .LI(\BU2/U0/gLUT.iLUT/N74 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<9> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<9>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_11_97 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_9_96 ),
    .O(\BU2/U0/gLUT.iLUT/N75 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [8]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_11_97 ),
    .S(\BU2/U0/gLUT.iLUT/N75 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [9])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [8]),
    .LI(\BU2/U0/gLUT.iLUT/N75 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<10> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<10>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_12_99 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_10_98 ),
    .O(\BU2/U0/gLUT.iLUT/N76 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [9]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_12_99 ),
    .S(\BU2/U0/gLUT.iLUT/N76 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [10])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [9]),
    .LI(\BU2/U0/gLUT.iLUT/N76 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<11> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<11>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_13_101 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_11_100 ),
    .O(\BU2/U0/gLUT.iLUT/N77 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [10]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_13_101 ),
    .S(\BU2/U0/gLUT.iLUT/N77 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [11])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [10]),
    .LI(\BU2/U0/gLUT.iLUT/N77 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<12> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<12>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_14_103 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_12_102 ),
    .O(\BU2/U0/gLUT.iLUT/N78 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [11]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_14_103 ),
    .S(\BU2/U0/gLUT.iLUT/N78 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [12])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [11]),
    .LI(\BU2/U0/gLUT.iLUT/N78 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<13> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<13>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_15_105 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_13_104 ),
    .O(\BU2/U0/gLUT.iLUT/N79 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [12]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_15_105 ),
    .S(\BU2/U0/gLUT.iLUT/N79 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [13])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [12]),
    .LI(\BU2/U0/gLUT.iLUT/N79 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<14> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<14>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_16_107 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_14_106 ),
    .O(\BU2/U0/gLUT.iLUT/N80 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [13]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_16_107 ),
    .S(\BU2/U0/gLUT.iLUT/N80 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [14])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [13]),
    .LI(\BU2/U0/gLUT.iLUT/N80 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<15> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<15>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_17_111 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_15_108 ),
    .O(\BU2/U0/gLUT.iLUT/N81 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [14]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_17_111 ),
    .S(\BU2/U0/gLUT.iLUT/N81 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [15])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [14]),
    .LI(\BU2/U0/gLUT.iLUT/N81 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<16> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<16>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_17_111 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_16_109 ),
    .O(\BU2/U0/gLUT.iLUT/N82 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [15]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_2_17_111 ),
    .S(\BU2/U0/gLUT.iLUT/N82 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [16])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [15]),
    .LI(\BU2/U0/gLUT.iLUT/N82 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<17> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_lut<17>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_2_17_111 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_3_17_110 ),
    .O(\BU2/U0/gLUT.iLUT/N83 )
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_xor<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_1_add0000_cy [16]),
    .LI(\BU2/U0/gLUT.iLUT/N83 ),
    .O(\BU2/U0/gLUT.iLUT/sum<1>[20] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<0> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<0>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[8] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[0] ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[8] )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<0>  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[8] ),
    .S(\BU2/U0/gLUT.iLUT/sum1<0>[8] ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [0])
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<1> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<1>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[9] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[1] ),
    .O(\BU2/U0/gLUT.iLUT/N85 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [0]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[9] ),
    .S(\BU2/U0/gLUT.iLUT/N85 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [1])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [0]),
    .LI(\BU2/U0/gLUT.iLUT/N85 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<2> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<2>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[10] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[2] ),
    .O(\BU2/U0/gLUT.iLUT/N86 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [1]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[10] ),
    .S(\BU2/U0/gLUT.iLUT/N86 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [2])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [1]),
    .LI(\BU2/U0/gLUT.iLUT/N86 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<3> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<3>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[11] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[3] ),
    .O(\BU2/U0/gLUT.iLUT/N87 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [2]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[11] ),
    .S(\BU2/U0/gLUT.iLUT/N87 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [3])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [2]),
    .LI(\BU2/U0/gLUT.iLUT/N87 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<4> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<4>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[12] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[4] ),
    .O(\BU2/U0/gLUT.iLUT/N88 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [3]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[12] ),
    .S(\BU2/U0/gLUT.iLUT/N88 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [4])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [3]),
    .LI(\BU2/U0/gLUT.iLUT/N88 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<5> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<5>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[13] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[5] ),
    .O(\BU2/U0/gLUT.iLUT/N89 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [4]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[13] ),
    .S(\BU2/U0/gLUT.iLUT/N89 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [5])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [4]),
    .LI(\BU2/U0/gLUT.iLUT/N89 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<6> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<6>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[14] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[6] ),
    .O(\BU2/U0/gLUT.iLUT/N90 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [5]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[14] ),
    .S(\BU2/U0/gLUT.iLUT/N90 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [6])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [5]),
    .LI(\BU2/U0/gLUT.iLUT/N90 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<7> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<7>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[15] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[7] ),
    .O(\BU2/U0/gLUT.iLUT/N91 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [6]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[15] ),
    .S(\BU2/U0/gLUT.iLUT/N91 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [7])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [6]),
    .LI(\BU2/U0/gLUT.iLUT/N91 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<8> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<8>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[16] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[8] ),
    .O(\BU2/U0/gLUT.iLUT/N92 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [7]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[16] ),
    .S(\BU2/U0/gLUT.iLUT/N92 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [8])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [7]),
    .LI(\BU2/U0/gLUT.iLUT/N92 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<9> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<9>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[17] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[9] ),
    .O(\BU2/U0/gLUT.iLUT/N93 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [8]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[17] ),
    .S(\BU2/U0/gLUT.iLUT/N93 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [9])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [8]),
    .LI(\BU2/U0/gLUT.iLUT/N93 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<10> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<10>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[18] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[10] ),
    .O(\BU2/U0/gLUT.iLUT/N94 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [9]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[18] ),
    .S(\BU2/U0/gLUT.iLUT/N94 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [10])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [9]),
    .LI(\BU2/U0/gLUT.iLUT/N94 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<11> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<11>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[11] ),
    .O(\BU2/U0/gLUT.iLUT/N95 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [10]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N95 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [11])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [10]),
    .LI(\BU2/U0/gLUT.iLUT/N95 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[19] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<12> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<12>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[20] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[12] ),
    .O(\BU2/U0/gLUT.iLUT/N96 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [11]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[20] ),
    .S(\BU2/U0/gLUT.iLUT/N96 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [12])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [11]),
    .LI(\BU2/U0/gLUT.iLUT/N96 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[20] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<13> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<13>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[21] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[13] ),
    .O(\BU2/U0/gLUT.iLUT/N97 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [12]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[21] ),
    .S(\BU2/U0/gLUT.iLUT/N97 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [13])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [12]),
    .LI(\BU2/U0/gLUT.iLUT/N97 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[21] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<14> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<14>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[22] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[14] ),
    .O(\BU2/U0/gLUT.iLUT/N98 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [13]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[22] ),
    .S(\BU2/U0/gLUT.iLUT/N98 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [14])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [13]),
    .LI(\BU2/U0/gLUT.iLUT/N98 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[22] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<15> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<15>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[23] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[15] ),
    .O(\BU2/U0/gLUT.iLUT/N99 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [14]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[23] ),
    .S(\BU2/U0/gLUT.iLUT/N99 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [15])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [14]),
    .LI(\BU2/U0/gLUT.iLUT/N99 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[23] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<16> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<16>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<1>[16] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N100 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [15]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .S(\BU2/U0/gLUT.iLUT/N100 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [16])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [15]),
    .LI(\BU2/U0/gLUT.iLUT/N100 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[24] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<17> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<17>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<1>[17] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N101 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [16]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .S(\BU2/U0/gLUT.iLUT/N101 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [17])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [16]),
    .LI(\BU2/U0/gLUT.iLUT/N101 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[25] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<18> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<18>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<1>[18] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N102 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<18>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [17]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .S(\BU2/U0/gLUT.iLUT/N102 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [18])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<18>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [17]),
    .LI(\BU2/U0/gLUT.iLUT/N102 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[26] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<19> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<19>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<1>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N103 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<19>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [18]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .S(\BU2/U0/gLUT.iLUT/N103 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [19])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<19>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [18]),
    .LI(\BU2/U0/gLUT.iLUT/N103 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[27] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<20> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<20>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<1>[20] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N104 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<20>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [19]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .S(\BU2/U0/gLUT.iLUT/N104 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [20])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<20>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [19]),
    .LI(\BU2/U0/gLUT.iLUT/N104 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[28] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<21> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<21>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<1>[21] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N105 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<21>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [20]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .S(\BU2/U0/gLUT.iLUT/N105 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [21])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<21>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [20]),
    .LI(\BU2/U0/gLUT.iLUT/N105 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[29] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<22> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<22>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<1>[22] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N106 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<22>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [21]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .S(\BU2/U0/gLUT.iLUT/N106 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [22])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<22>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [21]),
    .LI(\BU2/U0/gLUT.iLUT/N106 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[30] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<23> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<23>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<1>[23] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N107 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<23>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [22]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .S(\BU2/U0/gLUT.iLUT/N107 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [23])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<23>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [22]),
    .LI(\BU2/U0/gLUT.iLUT/N107 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[31] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<24> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<24>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<1>[24] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N108 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy<24>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [23]),
    .DI(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .S(\BU2/U0/gLUT.iLUT/N108 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [24])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<24>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [23]),
    .LI(\BU2/U0/gLUT.iLUT/N108 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[32] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<25> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_lut<25>  (
    .I0(\BU2/U0/gLUT.iLUT/s2_add_out<0>[24] ),
    .I1(\BU2/U0/gLUT.iLUT/s2_add_out<1>[24] ),
    .O(\BU2/U0/gLUT.iLUT/N109 )
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_xor<25>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum1_0_add0000_cy [24]),
    .LI(\BU2/U0/gLUT.iLUT/N109 ),
    .O(\BU2/U0/gLUT.iLUT/sum1<0>[34] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<0> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<0>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_2_113 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_0_112 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[2] )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<0>  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_2_113 ),
    .S(\BU2/U0/gLUT.iLUT/sum<0>[2] ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [0])
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<1> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<1>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_3_115 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_1_114 ),
    .O(\BU2/U0/gLUT.iLUT/N111 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [0]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_3_115 ),
    .S(\BU2/U0/gLUT.iLUT/N111 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [1])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [0]),
    .LI(\BU2/U0/gLUT.iLUT/N111 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[3] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<2> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<2>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_4_117 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_2_116 ),
    .O(\BU2/U0/gLUT.iLUT/N112 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [1]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_4_117 ),
    .S(\BU2/U0/gLUT.iLUT/N112 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [2])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [1]),
    .LI(\BU2/U0/gLUT.iLUT/N112 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[4] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<3> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<3>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_5_119 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_3_118 ),
    .O(\BU2/U0/gLUT.iLUT/N113 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [2]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_5_119 ),
    .S(\BU2/U0/gLUT.iLUT/N113 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [3])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [2]),
    .LI(\BU2/U0/gLUT.iLUT/N113 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<4> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<4>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_6_121 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_4_120 ),
    .O(\BU2/U0/gLUT.iLUT/N114 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [3]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_6_121 ),
    .S(\BU2/U0/gLUT.iLUT/N114 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [4])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [3]),
    .LI(\BU2/U0/gLUT.iLUT/N114 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<5> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<5>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_7_123 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_5_122 ),
    .O(\BU2/U0/gLUT.iLUT/N115 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [4]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_7_123 ),
    .S(\BU2/U0/gLUT.iLUT/N115 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [5])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [4]),
    .LI(\BU2/U0/gLUT.iLUT/N115 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<6> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<6>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_8_125 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_6_124 ),
    .O(\BU2/U0/gLUT.iLUT/N116 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [5]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_8_125 ),
    .S(\BU2/U0/gLUT.iLUT/N116 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [6])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [5]),
    .LI(\BU2/U0/gLUT.iLUT/N116 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<7> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<7>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_9_127 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_7_126 ),
    .O(\BU2/U0/gLUT.iLUT/N117 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [6]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_9_127 ),
    .S(\BU2/U0/gLUT.iLUT/N117 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [7])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [6]),
    .LI(\BU2/U0/gLUT.iLUT/N117 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<8> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<8>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_10_129 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_8_128 ),
    .O(\BU2/U0/gLUT.iLUT/N118 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [7]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_10_129 ),
    .S(\BU2/U0/gLUT.iLUT/N118 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [8])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [7]),
    .LI(\BU2/U0/gLUT.iLUT/N118 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<9> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<9>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_11_131 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_9_130 ),
    .O(\BU2/U0/gLUT.iLUT/N119 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [8]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_11_131 ),
    .S(\BU2/U0/gLUT.iLUT/N119 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [9])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [8]),
    .LI(\BU2/U0/gLUT.iLUT/N119 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<10> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<10>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_12_133 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_10_132 ),
    .O(\BU2/U0/gLUT.iLUT/N120 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [9]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_12_133 ),
    .S(\BU2/U0/gLUT.iLUT/N120 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [10])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [9]),
    .LI(\BU2/U0/gLUT.iLUT/N120 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<11> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<11>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_13_135 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_11_134 ),
    .O(\BU2/U0/gLUT.iLUT/N121 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [10]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_13_135 ),
    .S(\BU2/U0/gLUT.iLUT/N121 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [11])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [10]),
    .LI(\BU2/U0/gLUT.iLUT/N121 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<12> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<12>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_14_137 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_12_136 ),
    .O(\BU2/U0/gLUT.iLUT/N122 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [11]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_14_137 ),
    .S(\BU2/U0/gLUT.iLUT/N122 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [12])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [11]),
    .LI(\BU2/U0/gLUT.iLUT/N122 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<13> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<13>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_15_139 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_13_138 ),
    .O(\BU2/U0/gLUT.iLUT/N123 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [12]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_15_139 ),
    .S(\BU2/U0/gLUT.iLUT/N123 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [13])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [12]),
    .LI(\BU2/U0/gLUT.iLUT/N123 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<14> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<14>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_16_141 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_14_140 ),
    .O(\BU2/U0/gLUT.iLUT/N124 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [13]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_16_141 ),
    .S(\BU2/U0/gLUT.iLUT/N124 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [14])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [13]),
    .LI(\BU2/U0/gLUT.iLUT/N124 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<15> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<15>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_17_145 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_15_142 ),
    .O(\BU2/U0/gLUT.iLUT/N125 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [14]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_17_145 ),
    .S(\BU2/U0/gLUT.iLUT/N125 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [15])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [14]),
    .LI(\BU2/U0/gLUT.iLUT/N125 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<16> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<16>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_17_145 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_16_143 ),
    .O(\BU2/U0/gLUT.iLUT/N126 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [15]),
    .DI(\BU2/U0/gLUT.iLUT/pp_out_reg_0_17_145 ),
    .S(\BU2/U0/gLUT.iLUT/N126 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [16])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [15]),
    .LI(\BU2/U0/gLUT.iLUT/N126 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<17> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_lut<17>  (
    .I0(\BU2/U0/gLUT.iLUT/pp_out_reg_0_17_145 ),
    .I1(\BU2/U0/gLUT.iLUT/pp_out_reg_1_17_144 ),
    .O(\BU2/U0/gLUT.iLUT/N127 )
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_xor<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum_0_add0000_cy [16]),
    .LI(\BU2/U0/gLUT.iLUT/N127 ),
    .O(\BU2/U0/gLUT.iLUT/sum<0>[20] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<0> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<0>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[4] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[0] ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[4] )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<0>  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[4] ),
    .S(\BU2/U0/gLUT.iLUT/sum0<0>[4] ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [0])
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<1> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<1>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[5] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[1] ),
    .O(\BU2/U0/gLUT.iLUT/N129 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [0]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[5] ),
    .S(\BU2/U0/gLUT.iLUT/N129 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [1])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<1>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [0]),
    .LI(\BU2/U0/gLUT.iLUT/N129 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[5] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<2> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<2>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[6] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[2] ),
    .O(\BU2/U0/gLUT.iLUT/N130 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [1]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[6] ),
    .S(\BU2/U0/gLUT.iLUT/N130 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [2])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<2>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [1]),
    .LI(\BU2/U0/gLUT.iLUT/N130 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[6] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<3> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<3>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[7] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[3] ),
    .O(\BU2/U0/gLUT.iLUT/N131 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [2]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[7] ),
    .S(\BU2/U0/gLUT.iLUT/N131 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [3])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<3>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [2]),
    .LI(\BU2/U0/gLUT.iLUT/N131 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[7] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<4> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<4>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[8] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[4] ),
    .O(\BU2/U0/gLUT.iLUT/N132 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [3]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[8] ),
    .S(\BU2/U0/gLUT.iLUT/N132 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [4])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<4>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [3]),
    .LI(\BU2/U0/gLUT.iLUT/N132 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[8] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<5> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<5>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[9] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[5] ),
    .O(\BU2/U0/gLUT.iLUT/N133 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [4]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[9] ),
    .S(\BU2/U0/gLUT.iLUT/N133 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [5])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<5>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [4]),
    .LI(\BU2/U0/gLUT.iLUT/N133 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[9] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<6> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<6>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[10] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[6] ),
    .O(\BU2/U0/gLUT.iLUT/N134 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [5]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[10] ),
    .S(\BU2/U0/gLUT.iLUT/N134 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [6])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<6>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [5]),
    .LI(\BU2/U0/gLUT.iLUT/N134 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[10] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<7> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<7>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[11] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[7] ),
    .O(\BU2/U0/gLUT.iLUT/N135 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [6]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[11] ),
    .S(\BU2/U0/gLUT.iLUT/N135 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [7])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<7>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [6]),
    .LI(\BU2/U0/gLUT.iLUT/N135 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[11] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<8> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<8>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[12] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[8] ),
    .O(\BU2/U0/gLUT.iLUT/N136 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [7]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[12] ),
    .S(\BU2/U0/gLUT.iLUT/N136 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [8])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<8>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [7]),
    .LI(\BU2/U0/gLUT.iLUT/N136 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[12] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<9> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<9>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[13] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[9] ),
    .O(\BU2/U0/gLUT.iLUT/N137 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [8]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[13] ),
    .S(\BU2/U0/gLUT.iLUT/N137 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [9])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<9>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [8]),
    .LI(\BU2/U0/gLUT.iLUT/N137 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[13] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<10> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<10>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[14] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[10] ),
    .O(\BU2/U0/gLUT.iLUT/N138 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [9]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[14] ),
    .S(\BU2/U0/gLUT.iLUT/N138 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [10])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<10>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [9]),
    .LI(\BU2/U0/gLUT.iLUT/N138 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[14] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<11> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<11>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[15] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[11] ),
    .O(\BU2/U0/gLUT.iLUT/N139 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [10]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[15] ),
    .S(\BU2/U0/gLUT.iLUT/N139 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [11])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<11>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [10]),
    .LI(\BU2/U0/gLUT.iLUT/N139 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[15] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<12> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<12>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[16] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[12] ),
    .O(\BU2/U0/gLUT.iLUT/N140 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [11]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[16] ),
    .S(\BU2/U0/gLUT.iLUT/N140 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [12])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<12>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [11]),
    .LI(\BU2/U0/gLUT.iLUT/N140 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[16] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<13> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<13>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[17] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[13] ),
    .O(\BU2/U0/gLUT.iLUT/N141 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [12]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[17] ),
    .S(\BU2/U0/gLUT.iLUT/N141 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [13])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<13>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [12]),
    .LI(\BU2/U0/gLUT.iLUT/N141 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[17] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<14> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<14>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[18] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[14] ),
    .O(\BU2/U0/gLUT.iLUT/N142 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [13]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[18] ),
    .S(\BU2/U0/gLUT.iLUT/N142 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [14])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<14>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [13]),
    .LI(\BU2/U0/gLUT.iLUT/N142 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[18] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<15> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<15>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<1>[15] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .O(\BU2/U0/gLUT.iLUT/N143 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [14]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N143 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [15])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<15>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [14]),
    .LI(\BU2/U0/gLUT.iLUT/N143 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[19] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<16> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<16>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[16] ),
    .O(\BU2/U0/gLUT.iLUT/N144 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [15]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N144 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [16])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<16>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [15]),
    .LI(\BU2/U0/gLUT.iLUT/N144 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[20] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<17> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<17>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[17] ),
    .O(\BU2/U0/gLUT.iLUT/N145 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [16]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N145 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [17])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<17>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [16]),
    .LI(\BU2/U0/gLUT.iLUT/N145 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[21] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<18> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<18>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[18] ),
    .O(\BU2/U0/gLUT.iLUT/N146 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<18>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [17]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N146 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [18])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<18>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [17]),
    .LI(\BU2/U0/gLUT.iLUT/N146 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[22] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<19> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<19>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[19] ),
    .O(\BU2/U0/gLUT.iLUT/N147 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy<19>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [18]),
    .DI(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .S(\BU2/U0/gLUT.iLUT/N147 ),
    .O(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [19])
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<19>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [18]),
    .LI(\BU2/U0/gLUT.iLUT/N147 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[23] )
  );
  defparam \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<20> .INIT = 4'h6;
  LUT2 \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_lut<20>  (
    .I0(\BU2/U0/gLUT.iLUT/s1_add_out<0>[19] ),
    .I1(\BU2/U0/gLUT.iLUT/s1_add_out<1>[19] ),
    .O(\BU2/U0/gLUT.iLUT/N148 )
  );
  XORCY \BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_xor<20>  (
    .CI(\BU2/U0/gLUT.iLUT/Madd_sum0_0_add0000_cy [19]),
    .LI(\BU2/U0/gLUT.iLUT/N148 ),
    .O(\BU2/U0/gLUT.iLUT/sum0<0>[25] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[0].ppadd.b_is_even.stageLSB.ma0  (
    .I0(b_148[0]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[0] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0  (
    .CI(\BU2/zero_detect [0]),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[0] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[1].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig0 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[1].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[0] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig0 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig0 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[1] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[1].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[0] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig0 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[1] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[1]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig1 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[1] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig1 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig1_146 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[2] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[1] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig1_146 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[2] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[2]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig2 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[2] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig2 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig2 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[3] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[2] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig2 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[3] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[3]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig3 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[3] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig3 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig3 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[4] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[3] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig3 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[4] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[4]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig4 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[4] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig4 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig4 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[5] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[4] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig4 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[5] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[5]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig5 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[5] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig5 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig5 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[6] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[5] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig5 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[6] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[6]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig6 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[6] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig6 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig6 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[7] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[6] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig6 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[7] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[7]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig7 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[7] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig7 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig7 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[8] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[7] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig7 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[8] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[8]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig8 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[8] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig8 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig8 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[9] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[8] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig8 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[9] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[9]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig9 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[9] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig9 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig9 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[10] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[9] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig9 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[10] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[10]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig10 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[10] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig10 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig10 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[11] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[10] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig10 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[11] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[11]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig11 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[11] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig11 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig11 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[12] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[11] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig11 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[12] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[12]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig12 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[12] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig12 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig12 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[13] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[12] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig12 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[13] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[13]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig13 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[13] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig13 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig13 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[14] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[13] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig13 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[14] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[14]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig14 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[14] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig14 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig14 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[15] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[14] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig14 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[15] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[1]),
    .I1(a_147[15]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig15 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[15] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig15 ),
    .S(\BU2/N145 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<0>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[15] ),
    .LI(\BU2/N145 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageMSB.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<0>[16] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig15 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<0>[17] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.ma0  (
    .I0(b_148[2]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig16 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig16 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig17 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[0] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0  (
    .CI(\BU2/zero_detect [0]),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig17 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[0] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig17 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[0] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig17 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig18 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[1] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[0] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig18 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[1] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[1]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig18 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[1] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig18 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig19 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[2] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[1] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig19 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[2] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[2]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig19 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[2] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig19 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig20 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[3] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[2] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig20 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[3] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[3]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig20 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[3] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig20 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig21 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[4] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[3] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig21 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[4] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[4]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig21 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[4] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig21 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig22 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[5] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[4] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig22 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[5] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[5]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig22 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[5] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig22 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig23 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[6] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[5] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig23 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[6] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[6]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig23 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[6] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig23 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig24 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[7] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[6] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig24 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[7] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[7]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig24 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[7] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig24 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig25 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[8] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[7] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig25 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[8] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[8]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig25 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[8] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig25 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig26 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[9] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[8] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig26 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[9] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[9]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig26 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[9] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig26 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig27 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[10] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[9] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig27 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[10] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[10]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig27 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[10] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig27 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig28 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[11] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[10] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig28 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[11] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[11]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig28 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[11] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig28 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig29 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[12] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[11] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig29 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[12] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[12]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig29 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[12] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig29 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig30 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[13] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[12] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig30 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[13] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[13]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig30 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[13] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig30 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig31 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[14] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[13] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig31 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[14] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[14]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig31 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[14] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig31 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig32 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[15] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[14] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig32 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[15] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[3]),
    .I1(a_147[15]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig32 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[15] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig32 ),
    .S(\BU2/N144 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<1>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[15] ),
    .LI(\BU2/N144 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[1].carrychain[17].ppadd.b_is_even.stageMSB.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<1>[16] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig33 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<1>[17] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.ma0  (
    .I0(b_148[4]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig33 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig33 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig35 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[0] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0  (
    .CI(\BU2/zero_detect [0]),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig35 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[0] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig34 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[0] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig34 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig36 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[1] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[0] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig36 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[1] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[1]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig35 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[1] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig35 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig37 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[2] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[1] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig37 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[2] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[2]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig36 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[2] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig36 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig38 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[3] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[2] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig38 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[3] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[3]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig37 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[3] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig37 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig39 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[4] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[3] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig39 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[4] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[4]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig38 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[4] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig38 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig40 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[5] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[4] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig40 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[5] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[5]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig39 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[5] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig39 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig41 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[6] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[5] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig41 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[6] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[6]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig40 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[6] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig40 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig42 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[7] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[6] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig42 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[7] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[7]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig41 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[7] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig41 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig43 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[8] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[7] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig43 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[8] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[8]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig42 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[8] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig42 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig44 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[9] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[8] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig44 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[9] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[9]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig43 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[9] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig43 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig45 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[10] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[9] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig45 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[10] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[10]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig44 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[10] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig44 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig46 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[11] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[10] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig46 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[11] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[11]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig45 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[11] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig45 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig47 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[12] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[11] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig47 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[12] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[12]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig46 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[12] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig46 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig48 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[13] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[12] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig48 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[13] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[13]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig47 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[13] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig47 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig49 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[14] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[13] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig49 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[14] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[14]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig48 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[14] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig48 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig50 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[15] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[14] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig50 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[15] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[5]),
    .I1(a_147[15]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig49 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[15] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig49 ),
    .S(\BU2/N143 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<2>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[15] ),
    .LI(\BU2/N143 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageMSB.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<2>[16] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig51 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<2>[17] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.ma0  (
    .I0(b_148[6]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig50 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig50 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig53 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[0] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0  (
    .CI(\BU2/zero_detect [0]),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig53 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[0] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig51 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[0] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig51 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig54 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[1] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[0] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig54 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[1] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[1]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig52 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[1] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig52 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig55 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[2] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[1] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig55 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[2] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[2]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig53 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[2] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig53 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig56 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[3] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[2] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig56 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[3] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[3]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig54 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[3] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig54 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig57 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[4] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[3] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig57 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[4] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[4]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig55 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[4] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig55 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig58 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[5] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[4] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig58 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[5] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[5]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig56 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[5] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig56 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig59 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[6] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[5] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig59 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[6] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[6]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig57 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[6] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig57 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig60 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[7] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[6] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig60 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[7] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[7]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig58 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[7] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig58 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig61 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[8] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[7] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig61 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[8] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[8]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig59 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[8] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig59 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig62 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[9] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[8] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig62 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[9] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[9]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig60 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[9] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig60 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig63 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[10] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[9] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig63 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[10] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[10]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig61 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[10] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig61 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig64 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[11] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[10] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig64 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[11] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[11]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig62 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[11] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig62 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig65 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[12] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[11] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig65 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[12] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[12]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig63 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[12] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig63 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig66 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[13] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[12] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig66 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[13] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[13]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig64 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[13] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig64 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig67 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[14] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[13] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig67 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[14] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[14]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig65 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[14] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig65 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig68 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[15] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[14] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig68 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[15] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[7]),
    .I1(a_147[15]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig66 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[15] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig66 ),
    .S(\BU2/N142 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<3>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[15] ),
    .LI(\BU2/N142 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[3].carrychain[17].ppadd.b_is_even.stageMSB.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<3>[16] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig69 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<3>[17] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.ma0  (
    .I0(b_148[8]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig67 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig67 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig71 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[0] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0  (
    .CI(\BU2/zero_detect [0]),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig71 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[0] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig68 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[0] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig68 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig72 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[1] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[0] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig72 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[1] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[1]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig69 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[1] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig69 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig73 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[2] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[1] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig73 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[2] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[2]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig70 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[2] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig70 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig74 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[3] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[2] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig74 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[3] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[3]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig71 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[3] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig71 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig75 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[4] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[3] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig75 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[4] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[4]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig72 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[4] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig72 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig76 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[5] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[4] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig76 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[5] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[5]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig73 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[5] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig73 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig77 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[6] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[5] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig77 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[6] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[6]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig74 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[6] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig74 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig78 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[7] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[6] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig78 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[7] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[7]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig75 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[7] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig75 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig79 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[8] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[7] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig79 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[8] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[8]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig76 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[8] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig76 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig80 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[9] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[8] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig80 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[9] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[9]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig77 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[9] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig77 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig81 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[10] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[9] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig81 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[10] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[10]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig78 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[10] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig78 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig82 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[11] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[10] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig82 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[11] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[11]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig79 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[11] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig79 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig83 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[12] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[11] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig83 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[12] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[12]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig80 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[12] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig80 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig84 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[13] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[12] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig84 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[13] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[13]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig81 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[13] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig81 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig85 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[14] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[13] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig85 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[14] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[14]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig82 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[14] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig82 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig86 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[15] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[14] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig86 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[15] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[9]),
    .I1(a_147[15]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig83 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[15] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig83 ),
    .S(\BU2/N141 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<4>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[15] ),
    .LI(\BU2/N141 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageMSB.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<4>[16] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig87 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<4>[17] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.ma0  (
    .I0(b_148[10]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig84 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig84 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig89 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[0] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0  (
    .CI(\BU2/zero_detect [0]),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig89 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[0] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig85 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[0] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig85 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig90 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[1] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[0] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig90 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[1] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[1]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig86 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[1] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig86 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig91 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[2] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[1] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig91 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[2] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[2]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig87 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[2] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig87 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig92 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[3] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[2] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig92 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[3] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[3]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig88 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[3] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig88 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig93 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[4] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[3] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig93 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[4] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[4]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig89 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[4] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig89 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig94 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[5] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[4] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig94 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[5] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[5]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig90 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[5] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig90 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig95 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[6] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[5] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig95 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[6] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[6]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig91 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[6] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig91 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig96 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[7] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[6] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig96 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[7] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[7]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig92 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[7] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig92 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig97 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[8] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[7] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig97 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[8] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[8]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig93 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[8] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig93 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig98 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[9] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[8] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig98 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[9] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[9]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig94 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[9] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig94 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig99 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[10] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[9] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig99 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[10] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[10]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig95 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[10] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig95 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig100 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[11] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[10] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig100 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[11] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[11]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig96 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[11] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig96 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig101 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[12] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[11] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig101 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[12] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[12]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig97 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[12] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig97 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig102 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[13] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[12] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig102 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[13] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[13]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig98 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[13] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig98 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig103 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[14] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[13] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig103 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[14] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[14]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig99 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[14] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig99 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig104 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[15] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[14] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig104 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[15] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[11]),
    .I1(a_147[15]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig100 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[15] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig100 ),
    .S(\BU2/N140 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<5>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[15] ),
    .LI(\BU2/N140 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[5].carrychain[17].ppadd.b_is_even.stageMSB.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<5>[16] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig105 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<5>[17] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.ma0  (
    .I0(b_148[12]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig101 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00  (
    .CI(\BU2/zero_detect [0]),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig101 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig107 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[0] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0  (
    .CI(\BU2/zero_detect [0]),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig107 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[0] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig102 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[0] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig102 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig108 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[1] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[0] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig108 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[1] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[1]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig103 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[1] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig103 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig109 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[2] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[1] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig109 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[2] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[2]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig104 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[2] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig104 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig110 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[3] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[2] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig110 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[3] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[3]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig105 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[3] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig105 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig111 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[4] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[3] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig111 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[4] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[4]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig106 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[4] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig106 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig112 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[5] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[4] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig112 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[5] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[5]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig107 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[5] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig107 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig113 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[6] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[5] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig113 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[6] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[6]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig108 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[6] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig108 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig114 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[7] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[6] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig114 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[7] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[7]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig109 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[7] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig109 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig115 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[8] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[7] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig115 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[8] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[8]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig110 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[8] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig110 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig116 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[9] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[8] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig116 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[9] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[9]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig111 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[9] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig111 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig117 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[10] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[9] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig117 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[10] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[10]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig112 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[10] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig112 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig118 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[11] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[10] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig118 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[11] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[11]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig113 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[11] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig113 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig119 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[12] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[11] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig119 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[12] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[12]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig114 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[12] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig114 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig120 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[13] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[12] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig120 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[13] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[13]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig115 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[13] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig115 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig121 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[14] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[13] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig121 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[14] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[14]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig116 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[14] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig116 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig122 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[15] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[14] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig122 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[15] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.ma0  (
    .I0(b_148[13]),
    .I1(a_147[15]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig117 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[15] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig117 ),
    .S(\BU2/N139 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<6>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[15] ),
    .LI(\BU2/N139 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageMSB.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<6>[16] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig123 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<6>[17] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.ma1  (
    .I0(b_148[14]),
    .I1(a_147[0]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig118 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.muxcy1  (
    .CI(\BU2/N1 ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig118 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig125 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[0] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.xorcy1  (
    .CI(\BU2/N1 ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig125 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[0] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[1]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig119 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[0] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig119 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig126 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[1] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[0] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig126 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[1] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[2]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig120 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[1] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig120 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig127 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[2] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[1] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig127 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[2] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[3]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig121 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[2] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig121 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig128 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[3] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[2] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig128 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[3] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[4]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig122 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[3] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig122 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig129 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[4] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[3] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig129 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[4] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[5]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig123 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[4] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig123 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig130 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[5] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[4] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig130 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[5] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[6]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig124 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[5] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig124 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig131 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[6] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[5] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig131 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[6] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[7]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig125 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[6] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig125 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig132 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[7] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[6] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig132 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[7] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[8]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig126 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[7] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig126 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig133 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[8] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[7] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig133 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[8] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[9]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig127 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[8] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig127 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig134 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[9] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[8] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig134 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[9] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[10]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig128 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[9] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig128 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig135 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[10] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[9] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig135 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[10] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[11]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig129 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[10] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig129 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig136 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[11] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[10] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig136 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[11] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[12]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig130 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[11] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig130 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig137 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[12] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[11] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig137 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[12] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[13]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig131 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[12] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig131 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig138 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[13] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[12] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig138 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[13] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[14]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig132 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[13] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig132 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig139 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[14] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[13] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig139 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[14] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[15]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig133 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[14] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig133 ),
    .S(\BU2/U0/gLUT.iLUT/lut_sig140 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[15] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[14] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig140 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[15] )
  );
  MULT_AND \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.ma1  (
    .I0(b_148[14]),
    .I1(a_147[15]),
    .LO(\BU2/U0/gLUT.iLUT/ma_sig134 )
  );
  MUXCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.muxcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[15] ),
    .DI(\BU2/U0/gLUT.iLUT/ma_sig134 ),
    .S(\BU2/N138 ),
    .O(\BU2/U0/gLUT.iLUT/pp_cout<7>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[15] ),
    .LI(\BU2/N138 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[16] )
  );
  XORCY \BU2/U0/gLUT.iLUT/NxM_mult.ppgen[7].carrychain[17].ppsub.stageMSB.xorcy0  (
    .CI(\BU2/U0/gLUT.iLUT/pp_cout<7>[16] ),
    .LI(\BU2/U0/gLUT.iLUT/lut_sig141 ),
    .O(\BU2/U0/gLUT.iLUT/pp_out<7>[17] )
  );
  VCC \BU2/XST_VCC  (
    .P(\BU2/N1 )
  );
  GND \BU2/XST_GND  (
    .G(\BU2/zero_detect [0])
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
