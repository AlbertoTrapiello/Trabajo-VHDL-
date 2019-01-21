// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Dec 30 19:36:09 2018
// Host        : DESKTOP-0NO0KU9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Fran/Documents/GitHub/Trabajo-VHDL-/Proyecto_Maquinas_Estado/Proyecto_Maquinas_Estado.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_stub.v
// Design      : c_counter_binary_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *)
module c_counter_binary_0(CLK, SCLR, LOAD, L, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,SCLR,LOAD,L[2:0],Q[2:0]" */;
  input CLK;
  input SCLR;
  input LOAD;
  input [2:0]L;
  output [2:0]Q;
endmodule
