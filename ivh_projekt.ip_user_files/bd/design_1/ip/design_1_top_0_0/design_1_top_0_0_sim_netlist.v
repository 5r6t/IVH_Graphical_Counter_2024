// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Wed May  8 12:00:33 2024
// Host        : d02-0204a running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/mvtjr/Documents/Vivado
//               Projects/repete/repete.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v}
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top,Vivado 2023.2.1" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (clk,
    row,
    col);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  output [7:0]row;
  output [7:0]col;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [7:0]col;

  assign row[7] = \<const1> ;
  assign row[6] = \<const1> ;
  assign row[5] = \<const1> ;
  assign row[4] = \<const1> ;
  assign row[3] = \<const1> ;
  assign row[2] = \<const1> ;
  assign row[1] = \<const1> ;
  assign row[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_top_0_0_top U0
       (.clk(clk),
        .col(col));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (col,
    clk);
  output [7:0]col;
  input clk;

  wire clk;
  wire [23:0]cntone;
  wire cntone0_carry__0_n_0;
  wire cntone0_carry__0_n_1;
  wire cntone0_carry__0_n_2;
  wire cntone0_carry__0_n_3;
  wire cntone0_carry__1_n_0;
  wire cntone0_carry__1_n_1;
  wire cntone0_carry__1_n_2;
  wire cntone0_carry__1_n_3;
  wire cntone0_carry__2_n_0;
  wire cntone0_carry__2_n_1;
  wire cntone0_carry__2_n_2;
  wire cntone0_carry__2_n_3;
  wire cntone0_carry__3_n_0;
  wire cntone0_carry__3_n_1;
  wire cntone0_carry__3_n_2;
  wire cntone0_carry__3_n_3;
  wire cntone0_carry__4_n_2;
  wire cntone0_carry__4_n_3;
  wire cntone0_carry_n_0;
  wire cntone0_carry_n_1;
  wire cntone0_carry_n_2;
  wire cntone0_carry_n_3;
  wire [0:0]cntone_0;
  wire [7:0]col;
  wire [23:1]data0;
  wire [7:0]p_0_in;
  wire \scol[7]_i_1_n_0 ;
  wire \scol[7]_i_3_n_0 ;
  wire \scol[7]_i_4_n_0 ;
  wire \scol[7]_i_5_n_0 ;
  wire \scol[7]_i_6_n_0 ;
  wire \scol[7]_i_7_n_0 ;
  wire \scol[7]_i_8_n_0 ;
  wire [3:2]NLW_cntone0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_cntone0_carry__4_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntone0_carry
       (.CI(1'b0),
        .CO({cntone0_carry_n_0,cntone0_carry_n_1,cntone0_carry_n_2,cntone0_carry_n_3}),
        .CYINIT(cntone[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cntone[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntone0_carry__0
       (.CI(cntone0_carry_n_0),
        .CO({cntone0_carry__0_n_0,cntone0_carry__0_n_1,cntone0_carry__0_n_2,cntone0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cntone[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntone0_carry__1
       (.CI(cntone0_carry__0_n_0),
        .CO({cntone0_carry__1_n_0,cntone0_carry__1_n_1,cntone0_carry__1_n_2,cntone0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cntone[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntone0_carry__2
       (.CI(cntone0_carry__1_n_0),
        .CO({cntone0_carry__2_n_0,cntone0_carry__2_n_1,cntone0_carry__2_n_2,cntone0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cntone[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntone0_carry__3
       (.CI(cntone0_carry__2_n_0),
        .CO({cntone0_carry__3_n_0,cntone0_carry__3_n_1,cntone0_carry__3_n_2,cntone0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(cntone[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntone0_carry__4
       (.CI(cntone0_carry__3_n_0),
        .CO({NLW_cntone0_carry__4_CO_UNCONNECTED[3:2],cntone0_carry__4_n_2,cntone0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cntone0_carry__4_O_UNCONNECTED[3],data0[23:21]}),
        .S({1'b0,cntone[23:21]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cntone[0]_i_1 
       (.I0(cntone[0]),
        .O(cntone_0));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cntone_0),
        .Q(cntone[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(cntone[10]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(cntone[11]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(cntone[12]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(cntone[13]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(cntone[14]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(cntone[15]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(cntone[16]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(cntone[17]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(cntone[18]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(cntone[19]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(cntone[1]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(cntone[20]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(cntone[21]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(cntone[22]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(cntone[23]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(cntone[2]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(cntone[3]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(cntone[4]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(cntone[5]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(cntone[6]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(cntone[7]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(cntone[8]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntone_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(cntone[9]),
        .R(\scol[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \scol[0]_i_1 
       (.I0(col[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \scol[1]_i_1 
       (.I0(col[1]),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \scol[2]_i_1 
       (.I0(col[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \scol[3]_i_1 
       (.I0(col[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \scol[4]_i_1 
       (.I0(col[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \scol[5]_i_1 
       (.I0(col[5]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \scol[6]_i_1 
       (.I0(col[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \scol[7]_i_1 
       (.I0(\scol[7]_i_3_n_0 ),
        .I1(\scol[7]_i_4_n_0 ),
        .I2(\scol[7]_i_5_n_0 ),
        .I3(\scol[7]_i_6_n_0 ),
        .I4(\scol[7]_i_7_n_0 ),
        .I5(\scol[7]_i_8_n_0 ),
        .O(\scol[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \scol[7]_i_2 
       (.I0(col[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \scol[7]_i_3 
       (.I0(cntone[17]),
        .I1(cntone[16]),
        .I2(cntone[19]),
        .I3(cntone[18]),
        .O(\scol[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \scol[7]_i_4 
       (.I0(cntone[21]),
        .I1(cntone[20]),
        .I2(cntone[23]),
        .I3(cntone[22]),
        .O(\scol[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \scol[7]_i_5 
       (.I0(cntone[9]),
        .I1(cntone[8]),
        .I2(cntone[11]),
        .I3(cntone[10]),
        .O(\scol[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \scol[7]_i_6 
       (.I0(cntone[13]),
        .I1(cntone[12]),
        .I2(cntone[15]),
        .I3(cntone[14]),
        .O(\scol[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \scol[7]_i_7 
       (.I0(cntone[4]),
        .I1(cntone[5]),
        .I2(cntone[7]),
        .I3(cntone[6]),
        .O(\scol[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \scol[7]_i_8 
       (.I0(cntone[1]),
        .I1(cntone[0]),
        .I2(cntone[3]),
        .I3(cntone[2]),
        .O(\scol[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[0] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(col[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[1] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(col[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[2] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(col[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[3] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(col[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[4] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(col[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[5] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(col[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[6] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(col[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[7] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(col[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
