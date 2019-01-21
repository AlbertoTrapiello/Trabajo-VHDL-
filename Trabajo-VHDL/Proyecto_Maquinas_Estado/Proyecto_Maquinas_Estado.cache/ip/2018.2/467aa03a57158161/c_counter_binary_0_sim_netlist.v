// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Dec 25 18:32:13 2018
// Host        : DESKTOP-0NO0KU9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SCLR,
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME load_intf, LAYERED_METADATA undef" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME l_intf, LAYERED_METADATA undef" *) input [0:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [0:0]Q;

  wire CLK;
  wire [0:0]L;
  wire LOAD;
  wire [0:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [0:0]L;
  output THRESH0;
  output [0:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [0:0]L;
  wire LOAD;
  wire [0:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nnt4hpm8aMeHj7Ghlfbft25wCDSU4OgHSYgohY5Y54OVk/ZF/3/A/1b58fvKplqLYq8SNPaFTeCI
yugxb4XKPA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
icRB/fOZDWyBabMGd2m0JhukfnHCgsonFqJLnbFiHqD4HAq532BpIMPsTzpuAnC2rpknvyTqUyNp
zmJV0F6HEz0B1BGhBWnWQWdUPOecb25tLs+HSnew62d+ujGd8F13AaXdqIxZe7XJ+oOhHoHhftLN
PVzwMLuHPFC02rrHF5U=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UY3ILsM3DuZnc+XV/RUWvQudTdoUz1tkAgav0BAHvgsM5yBjdXDC31ZmzwEomTATGQA3ZyDP1IDL
GXtKbgQ+Cd8kP0mzW8uQLpCA3FUxCYqGIOkrz1AGh8jX5JuHEvHCWemoS+uYgbVwGRgNn36iGiSU
gxGxGxdh2dlgJ5TnZBiEIX0KhlcoFalz5hmVTHOhhNB151SriAh/a7nvbZZdKagnqHLBGnsXr3X2
hj5Ufi+imJE/MbA3k0WSVJ4K4e5uzS7+rQaV7dfOOnqtxha/GLsZlIe+0/cSPegx5a1wR5/zNvZt
BjRWlUOjXOajbYx1DXcjwQJUCOW/mYg7roilCA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Slli2CcwGUT/eLLglKtjS4wUNMwN9NHiNCUArxZPrQCDFj2jhlUE28LL+IBGjrR+qAtIFykC9Kd9
3eCP9pujYo2DPdVUfuJULZV2Ow2d/+Zf5Mnl7hwkv3QsIu23MMfg+lCwO9PbciWGT7M4tuIOaDt9
gcvijNKNayVH/TgLuZmnfRcPwBpc/J8XAcme4fDtiSN81WJiamjnOditpRqGbcdTwO131y3Nf8IU
sOBj/rKwh/WiQn2F7WQwKwRx1RG7KWbvxZ7AKvotMiiicQ4EeMLyar6qr288WdRWnzO40o3xfNf9
XcEV9DFEH5pf6mlO7Be+8poeQfF48BYr0oIWsA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vuD5k8BVxa4nKjQQQ+WKvoQLLI56XSBoO+N6Qlv4P2y6A1vklc08REN048SZS7CnH5rLUGlX+L+9
fd5VyDJoxFwuO+7w6acZY9orT2bwypP1gs++inV5X8k5aesVPhn5W5ZLNBx3f2u68cgOZ91cv7Tb
l27FG3cu02IjM24oe/guAhidJTAyYUgfasdILVTBFK7U7Qgqxrrtk9P5fQ7hgv3p/dnNUgVcsmUN
WLgfDR6BhoxTTfVJ3LsVLbRONPCncrmpSZN9u0gN4Ppjc6IoJlWVtcVVe8e5+AsCgtYtEC7c5uV3
ZzcSv8V9D5QSRKzac/hcIss/5ig5V2e7Odq1Ow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MnSIaBDkmU6w1uv4HUaSfyV1n39EmtmvDL4skDTuSqIic/7uyYxdyxkI1yYPW83e1uADyCVxLgIF
QWykei8H4LBD2qPj35xMB0VUiGklNVrf0xPw7A9zc+TaWRZbe2fUzVBYNGCZRONUmFhpErrW3ZTm
DGatJQqh0zL7zm6RtM0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MKqZgbDvPEkX3ewZ4OGZSdUgYTLha4IvHZdTjQbGb00U8YWqnUlofBnOzBnxDcKNxtcZr7tRVEhw
kraDbaXkY7kZztTYdYH4OIPzHav6NHz5mCM1y/JJ9LeFzH58+3usISA/dOz35h199Zr92CNRUFam
2jVWlIcu5zPNeve8tgzRX6nW7B14Chd6hqXLtQgEIHqi8YzTiDcZ0IasUfzqR0s3tKkzjMCC9/w7
bThLIredtKAIcJsjllEJm7S6cloYWgTjZHdOti+DRmdqPHf0yB6CaYa5wIK85A0vbRUG90uBivfI
+je7B+2BZvmSOa3QJP1N3EeJyT89YDYnpJhiDg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ozA4HNafAeUn+jkgUG9jP8BaIQB6g0uMm5Z6tfTuEFKurp1i2//VGXpV3hfrA/ggYQhDqeBH/QZY
LlqcmZU78RuzVzV3j+qXteMtO9GNo31DnooI/FBRPfHMZNfeCVQoDATPA6Qegb5gQkG7w5/txTRm
9Bfz4Fo6zI58Na8M8aDRGXjnzMj8o4qeImoEnGgzwsk+2jBTUagB5yWSFJ5OQwCrfKA4qRTbQH3l
V7kNHEl+mnQq1bOEt/+7c/XX/y/i9l5BaOZX3oaobYvFxUhEm/TP608VZo8Ji2BMIAPWXoF5BKeU
IetuPzSzaUPWmEg5hQOGOrtWX2sobXCVsDRYvA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CUvVtY+tkpp2qbj9jAIc5J99RMv9oajDN4dJh9F3BOLE8tiLEMUv/b81zR0cw7z2yVzqBrxiuoWz
nCRnf5NexUzecH1k/TmsePFmZq3FURcEEqhKqxXJyYdwSV/Npa2J2IMRISjhZ8dESmhfAoubWdcp
Hv0u/2ku6vZMjeVBvUpaxL4LR37+WgEeVx2bOj0RZ4Ez0NgEmPz806DgFpUORPS0it/HVSaMe1ku
JKThASh2i+2jmOvp+o1Kt0uT8ZHfoYMdxbevTu3IP+77bnyPeJVO2awMBO0K5QtN6auTU7rlR1y6
oVCZ7x9EvulHLyYocHHyejYqZ/j+iQlWuCnGZQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3520)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
`endif
