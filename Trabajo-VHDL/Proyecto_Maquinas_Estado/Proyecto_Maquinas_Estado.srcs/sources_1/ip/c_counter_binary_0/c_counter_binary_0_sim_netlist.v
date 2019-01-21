// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Dec 30 19:36:09 2018
// Host        : DESKTOP-0NO0KU9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Fran/Documents/GitHub/Trabajo-VHDL-/Proyecto_Maquinas_Estado/Proyecto_Maquinas_Estado.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    SCLR,
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME load_intf, LAYERED_METADATA undef" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME l_intf, LAYERED_METADATA undef" *) input [2:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [2:0]Q;

  wire CLK;
  wire [2:0]L;
  wire LOAD;
  wire [2:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "3" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "3" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_12
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
  input [2:0]L;
  output THRESH0;
  output [2:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [2:0]L;
  wire LOAD;
  wire [2:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "3" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
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
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
opnWxKFJO1VndtgOZ7kb/Sq4v8n2yFvD6I7xI0pf5qweml9CWfgEpuLaQmlz1i2U8v4MV6IfM5e3
lrTio2XYk9ERnxsWztcm/vGakRj3McQYqBv1p88NMSWaL91tWz45lRQFgWDlkafBmZgPJEvZuNMA
F44yvj2Fg/cWY9QaxI5XFdptzs2HBFzlY1iSv1KLtvnnikBNyCy3oKTpls4GTeM4vPAQPHzcE9sR
g2LyYvC+SUeph9MuIXT9Bj+o6zMg07RjnQJRXNiSki/L/CxkpAryGeBPakRV1Lv0/CbDehJugEKS
fz+Y5coDVpq8T/VIjPUMxkDXTBNlgVFn7Rls0Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MyyPYVfwbniEJVlw12vjHdAPW+ynH32cka3ylpbioKeRaz8rAqSRKqGBocgHYXGH0L4amz7gnqkh
yKwNuyvtUi3Q7UlAQ7fa/JTd2CimAIiK3UHlNxwJ5KhiXiDDmBjUV3aowqPVRYl4BwRsqygtxOi2
8fkdN92NhfAuI8pERnODP63pRTCy0I785CGR8jxzl7sEJ7iDBYYFR8AsMpGfmXPRmcwO1a/pOx7I
IVb1q5rAdh2gvPLpvTWhQsHSBcPs+imCxpM+Ve5FNWWZVmdrQZ6cxHGU2rxO1alb0ep/YEeVHxR1
J5PPm9hlCID7OLsz+C9eRx3ZXO8Ihgg4I6SwkA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5808)
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
