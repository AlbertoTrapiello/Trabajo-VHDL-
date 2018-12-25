// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Dec 25 18:32:14 2018
// Host        : DESKTOP-0NO0KU9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Fran/Documents/GitHub/Trabajo-VHDL-/Proyecto_Maquinas_Estado/Proyecto_Maquinas_Estado.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
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
ewVkbiLZWN6zBE9euJ758eBhozsPUGiHYJclYbJToxDtp9AL8TauAPs4Tt+/O7zGL2UraD29GNy8
eO7WSx8DMqbJOVyVHChR9UdwtuQMdwxWN6Z8kftiy/hggoT5MhBY6y2jvJGrZpB/M12jIaN/8Zow
ZRwhm36X3UMV2oGhatRjy42W74BFs2G7LMXZa5uMib1Z3LxVEFhU7Yg8Ap54xk5g9Eb6R+cEgnDY
aXH36E4Ky38baaF0NTv1RbDDsO8rIcaoakP3jANEjQunn0RYJgJXhY31fNjaxWinUxmHebpox9zD
LELQYvPZzvI2//YgKzhCM9SeEPuF080f88anMg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1fkOn7cKK+eF2o0LeYz9rNYW9voP5jfnugGcbABrCX1sE24UhHP7tfczcBB2j//4Mf3sqvQes/+a
32TSoW9Q85H0sdlDCJ0INAAwAfL6VWAF43WQ+9+r7rVeArCZHItmoAKvLXwEABfQtmzD9yCxZCHX
7pWJBY4IE76xAVY21+rgiiypE8Jy/djPrta2dRPBxkJoQXRNkrvlOgRfZfpCeXgldAh3AcZylC9k
DYxU9zUnZq7p8iWXu8ljJ/zjJvXpZFbL9WhCMKGH/cQvuSN2thUYMt4PSrlM5yojiFIuyiwzM5/N
XRb6VQqkID/oFPeEEccsW3uqRkly2PVtSCxeAg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3504)
`pragma protect data_block
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
/qNODesFVqxv40uuOihpM5AsrEdZ3XRjfLj1
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
