// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Dec 30 19:36:09 2018
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "3" *) 
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
Ldh70wdPCp7CON3GRYPJ68ryyqN99iCOe3Y8wPtfGPZyX5WkUVX0odQFYQQKgiOVpqTtj9vgUpMM
8Qz7jY1z+Oi8I//djhdr6ZNdqwmZdXK7wlGw+j7toOSlyBOD6/zEgDSIsmOZQ6WW+iQz73ZyZoUP
+g7XhAENriEMKtzCLIlAt+zNYGt/QJF0rkKwxx0FaTwdoUJAsY7DCzJvFCBmLQolnEhPexXnu3tI
S7fGDpGdvHLzr/F8cim/fkO3TTr6KIIiIr3PuhklnGJP1QEW2I541+ZrwxbWlMJLZH4uPW3ubB7q
DKgXgicu3HTZQQx9DSC2iUIYXSRMwTXqTjhlUQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RIYLZgmnUYj/UodgdHw8TuY+8ofQWYhQMzNnaD1/tLnfmMdn+Yu4LmSyE/TsOGNi0Y1TLxPFXzd+
WTmYzaflgYWxqz/eB6h4rs/d8YAfQZCOkRvIeqVlhXCTvpOttY9CGDdQ4HB0u9unYrbdT24a2jw0
gtqqoSoQ9e5924o8PWQ6AV67nQThzXB2iGPqyhQmWEibKLcYC9TG12ib+6Ihv1G+fW3xW8tfKcWQ
Ych+oEDoBQ2iainxMkHqmy0nJM1M4fdhFnkQ6hr3IeM1NIcLf+OUxOVtTSEw5ZJUik2lkYrr6jg1
Ih0NJ6ry1V5SRFCOz2xPchVAyvcionYIP1eoxg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5744)
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
