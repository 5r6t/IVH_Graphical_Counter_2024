// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Wed May 15 03:06:14 2024
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
  output [0:7]col;

  wire clk;
  wire [0:7]col;
  wire [7:0]row;

  design_1_top_0_0_top U0
       (.Q({col[0],col[1],col[2],col[3],col[4],col[5],col[6],col[7]}),
        .clk(clk),
        .row(row));
endmodule

(* ORIG_REF_NAME = "BCD_counter" *) 
module design_1_top_0_0_BCD_counter
   (E,
    picreg_reg,
    picreg_reg_0,
    invreg_reg,
    \cnt_reg[0]_0 ,
    \cnt_reg[1]_0 ,
    \cnt_reg[1]_1 ,
    \cnt_reg[0]_1 ,
    \cnt_reg[0]_2 ,
    \scol_reg[6] ,
    invreg_reg_0,
    invreg_reg_1,
    \cnt_reg[0]_3 ,
    D,
    clk,
    PICTURE_en,
    INV_en,
    Q,
    \FSM_onehot_actual_reg[1] ,
    \FSM_onehot_actual_reg[1]_0 ,
    \FSM_onehot_actual_reg[1]_1 ,
    \FSM_onehot_actual_reg[1]_2 ,
    \cnt_reg[3]_0 ,
    \srow_reg[4] ,
    \srow_reg[4]_0 );
  output [0:0]E;
  output picreg_reg;
  output picreg_reg_0;
  output invreg_reg;
  output \cnt_reg[0]_0 ;
  output \cnt_reg[1]_0 ;
  output \cnt_reg[1]_1 ;
  output \cnt_reg[0]_1 ;
  output \cnt_reg[0]_2 ;
  output \scol_reg[6] ;
  output invreg_reg_0;
  output invreg_reg_1;
  output \cnt_reg[0]_3 ;
  output [0:0]D;
  input clk;
  input PICTURE_en;
  input INV_en;
  input [1:0]Q;
  input [0:0]\FSM_onehot_actual_reg[1] ;
  input \FSM_onehot_actual_reg[1]_0 ;
  input \FSM_onehot_actual_reg[1]_1 ;
  input \FSM_onehot_actual_reg[1]_2 ;
  input [0:0]\cnt_reg[3]_0 ;
  input \srow_reg[4] ;
  input \srow_reg[4]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_actual_reg[1] ;
  wire \FSM_onehot_actual_reg[1]_0 ;
  wire \FSM_onehot_actual_reg[1]_1 ;
  wire \FSM_onehot_actual_reg[1]_2 ;
  wire INV_en;
  wire PICTURE_en;
  wire [1:0]Q;
  wire [3:0]Q_0;
  wire clk;
  wire \cnt[0]_i_1__1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_1 ;
  wire \cnt_reg[0]_2 ;
  wire \cnt_reg[0]_3 ;
  wire \cnt_reg[1]_0 ;
  wire \cnt_reg[1]_1 ;
  wire [0:0]\cnt_reg[3]_0 ;
  wire invreg_reg;
  wire invreg_reg_0;
  wire invreg_reg_1;
  wire picreg_reg;
  wire picreg_reg_0;
  wire \scol_reg[6] ;
  wire \srow[2]_i_8_n_0 ;
  wire \srow[4]_i_3_n_0 ;
  wire \srow[4]_i_4_n_0 ;
  wire \srow[4]_i_7_n_0 ;
  wire \srow_reg[4] ;
  wire \srow_reg[4]_0 ;
  wire temp_i_1_n_0;

  LUT6 #(
    .INIT(64'h2FAFFFFF00FF00FF)) 
    \FSM_onehot_actual[0]_i_1 
       (.I0(\cnt_reg[1]_0 ),
        .I1(\cnt_reg[1]_1 ),
        .I2(\FSM_onehot_actual_reg[1] ),
        .I3(\FSM_onehot_actual_reg[1]_0 ),
        .I4(\FSM_onehot_actual_reg[1]_1 ),
        .I5(\FSM_onehot_actual_reg[1]_2 ),
        .O(\cnt_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFF50FF003F00FF00)) 
    \FSM_onehot_actual[1]_i_1 
       (.I0(\cnt_reg[1]_0 ),
        .I1(\cnt_reg[1]_1 ),
        .I2(\FSM_onehot_actual_reg[1] ),
        .I3(\FSM_onehot_actual_reg[1]_0 ),
        .I4(\FSM_onehot_actual_reg[1]_1 ),
        .I5(\FSM_onehot_actual_reg[1]_2 ),
        .O(\cnt_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \FSM_onehot_actual[1]_i_2 
       (.I0(Q_0[1]),
        .I1(Q_0[0]),
        .I2(Q_0[3]),
        .I3(Q_0[2]),
        .O(\cnt_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_actual[1]_i_3 
       (.I0(Q_0[1]),
        .I1(Q_0[0]),
        .I2(Q_0[2]),
        .I3(Q_0[3]),
        .O(\cnt_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(Q_0[0]),
        .O(\cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6626)) 
    \cnt[1]_i_1 
       (.I0(Q_0[1]),
        .I1(Q_0[0]),
        .I2(Q_0[3]),
        .I3(Q_0[2]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(Q_0[1]),
        .I1(Q_0[0]),
        .I2(Q_0[2]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h78B0)) 
    \cnt[3]_i_1 
       (.I0(Q_0[1]),
        .I1(Q_0[0]),
        .I2(Q_0[3]),
        .I3(Q_0[2]),
        .O(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt_reg[3]_0 ),
        .D(\cnt[0]_i_1__1_n_0 ),
        .Q(Q_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt_reg[3]_0 ),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(Q_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt_reg[3]_0 ),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(Q_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt_reg[3]_0 ),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(Q_0[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FEFD)) 
    \srow[1]_i_6 
       (.I0(Q_0[0]),
        .I1(Q_0[1]),
        .I2(Q_0[3]),
        .I3(Q_0[2]),
        .I4(PICTURE_en),
        .O(\cnt_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \srow[1]_i_7 
       (.I0(Q_0[0]),
        .I1(Q_0[1]),
        .I2(Q_0[3]),
        .I3(Q_0[2]),
        .O(\cnt_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h200022228AAA8888)) 
    \srow[2]_i_5 
       (.I0(Q[0]),
        .I1(PICTURE_en),
        .I2(Q_0[1]),
        .I3(Q_0[0]),
        .I4(\srow[2]_i_8_n_0 ),
        .I5(INV_en),
        .O(\scol_reg[6] ));
  LUT6 #(
    .INIT(64'hAAAAAAAA66565655)) 
    \srow[2]_i_6 
       (.I0(INV_en),
        .I1(Q_0[3]),
        .I2(Q_0[2]),
        .I3(Q_0[0]),
        .I4(Q_0[1]),
        .I5(PICTURE_en),
        .O(invreg_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \srow[2]_i_8 
       (.I0(Q_0[2]),
        .I1(Q_0[3]),
        .O(\srow[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA55955559)) 
    \srow[3]_i_6 
       (.I0(INV_en),
        .I1(Q_0[0]),
        .I2(Q_0[2]),
        .I3(Q_0[3]),
        .I4(Q_0[1]),
        .I5(PICTURE_en),
        .O(invreg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h45555454)) 
    \srow[3]_i_8 
       (.I0(PICTURE_en),
        .I1(Q_0[3]),
        .I2(Q_0[1]),
        .I3(Q_0[0]),
        .I4(Q_0[2]),
        .O(picreg_reg));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \srow[4]_i_1 
       (.I0(\srow_reg[4] ),
        .I1(\srow[4]_i_3_n_0 ),
        .I2(\srow[4]_i_4_n_0 ),
        .I3(\srow_reg[4]_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'hFFAE0051FFFFFFFF)) 
    \srow[4]_i_3 
       (.I0(PICTURE_en),
        .I1(\srow[2]_i_8_n_0 ),
        .I2(Q_0[1]),
        .I3(Q_0[0]),
        .I4(INV_en),
        .I5(Q[1]),
        .O(\srow[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h222222208888888A)) 
    \srow[4]_i_4 
       (.I0(Q[0]),
        .I1(PICTURE_en),
        .I2(Q_0[2]),
        .I3(\srow[4]_i_7_n_0 ),
        .I4(Q_0[3]),
        .I5(INV_en),
        .O(\srow[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \srow[4]_i_7 
       (.I0(Q_0[0]),
        .I1(Q_0[1]),
        .O(\srow[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6665665655565555)) 
    \srow[5]_i_2 
       (.I0(INV_en),
        .I1(PICTURE_en),
        .I2(Q_0[1]),
        .I3(Q_0[3]),
        .I4(Q_0[2]),
        .I5(Q_0[0]),
        .O(invreg_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h11151141)) 
    \srow[5]_i_6 
       (.I0(PICTURE_en),
        .I1(Q_0[0]),
        .I2(Q_0[2]),
        .I3(Q_0[3]),
        .I4(Q_0[1]),
        .O(picreg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    temp_i_1
       (.I0(Q_0[1]),
        .I1(Q_0[0]),
        .I2(Q_0[3]),
        .I3(Q_0[2]),
        .I4(\cnt_reg[3]_0 ),
        .O(temp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(clk),
        .CE(1'b1),
        .D(temp_i_1_n_0),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "BCD_counter" *) 
module design_1_top_0_0_BCD_counter_0
   (Q,
    picreg_reg,
    \cnt_reg[3]_0 ,
    picreg_reg_0,
    \scol_reg[0] ,
    \cnt_reg[0]_0 ,
    \cnt_reg[2]_0 ,
    \cnt_reg[3]_1 ,
    D,
    picreg_reg_1,
    \cnt_reg[0]_1 ,
    invreg_reg,
    invreg_reg_0,
    PICTURE_en,
    INV_en,
    \srow_reg[3] ,
    picreg_reg_2,
    picreg_reg_3,
    \srow_reg[3]_0 ,
    \srow_reg[3]_1 ,
    picreg_reg_4,
    E,
    clk);
  output [0:0]Q;
  output picreg_reg;
  output \cnt_reg[3]_0 ;
  output picreg_reg_0;
  output \scol_reg[0] ;
  output \cnt_reg[0]_0 ;
  output \cnt_reg[2]_0 ;
  output \cnt_reg[3]_1 ;
  output [0:0]D;
  output picreg_reg_1;
  output \cnt_reg[0]_1 ;
  input invreg_reg;
  input invreg_reg_0;
  input PICTURE_en;
  input INV_en;
  input [3:0]\srow_reg[3] ;
  input picreg_reg_2;
  input picreg_reg_3;
  input \srow_reg[3]_0 ;
  input \srow_reg[3]_1 ;
  input picreg_reg_4;
  input [0:0]E;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire INV_en;
  wire PICTURE_en;
  wire [0:0]Q;
  wire [3:1]Q2;
  wire clk;
  wire \cnt[0]_i_1__2_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_1 ;
  wire \cnt_reg[2]_0 ;
  wire \cnt_reg[3]_0 ;
  wire \cnt_reg[3]_1 ;
  wire invreg_reg;
  wire invreg_reg_0;
  wire picreg_i_2_n_0;
  wire picreg_i_5_n_0;
  wire picreg_reg;
  wire picreg_reg_0;
  wire picreg_reg_1;
  wire picreg_reg_2;
  wire picreg_reg_3;
  wire picreg_reg_4;
  wire \scol_reg[0] ;
  wire \srow[2]_i_7_n_0 ;
  wire \srow[3]_i_2_n_0 ;
  wire \srow[3]_i_3_n_0 ;
  wire \srow[3]_i_5_n_0 ;
  wire \srow[4]_i_5_n_0 ;
  wire \srow[4]_i_6_n_0 ;
  wire [3:0]\srow_reg[3] ;
  wire \srow_reg[3]_0 ;
  wire \srow_reg[3]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_actual[1]_i_4 
       (.I0(Q2[3]),
        .I1(Q2[1]),
        .I2(Q2[2]),
        .O(\cnt_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__2 
       (.I0(Q),
        .O(\cnt[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4A5A)) 
    \cnt[1]_i_1__0 
       (.I0(Q2[1]),
        .I1(Q2[2]),
        .I2(Q),
        .I3(Q2[3]),
        .O(\cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt[2]_i_1__0 
       (.I0(Q2[1]),
        .I1(Q2[2]),
        .I2(Q),
        .O(\cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \cnt[3]_i_1__0 
       (.I0(Q2[1]),
        .I1(Q2[2]),
        .I2(Q),
        .I3(Q2[3]),
        .O(\cnt[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\cnt[0]_i_1__2_n_0 ),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(Q2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(Q2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(Q2[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF7F0040)) 
    invreg_i_1
       (.I0(Q),
        .I1(\cnt_reg[3]_0 ),
        .I2(invreg_reg_0),
        .I3(invreg_reg),
        .I4(INV_en),
        .O(\cnt_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAAAAAA)) 
    picreg_i_1
       (.I0(picreg_i_2_n_0),
        .I1(picreg_reg_2),
        .I2(picreg_reg_4),
        .I3(\cnt_reg[3]_1 ),
        .I4(picreg_i_5_n_0),
        .I5(PICTURE_en),
        .O(picreg_reg_1));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    picreg_i_2
       (.I0(invreg_reg),
        .I1(invreg_reg_0),
        .I2(Q2[3]),
        .I3(Q2[1]),
        .I4(Q2[2]),
        .I5(Q),
        .O(picreg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    picreg_i_4
       (.I0(Q2[3]),
        .I1(Q2[2]),
        .I2(Q),
        .I3(Q2[1]),
        .O(\cnt_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    picreg_i_5
       (.I0(picreg_reg_2),
        .I1(Q),
        .I2(picreg_reg_3),
        .I3(Q2[3]),
        .I4(Q2[1]),
        .I5(Q2[2]),
        .O(picreg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF2B)) 
    \srow[1]_i_10 
       (.I0(Q2[2]),
        .I1(Q2[1]),
        .I2(Q),
        .I3(Q2[3]),
        .O(\cnt_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0012)) 
    \srow[1]_i_9 
       (.I0(Q),
        .I1(Q2[3]),
        .I2(Q2[2]),
        .I3(Q2[1]),
        .O(\cnt_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBFAA4055FFFFFFFF)) 
    \srow[2]_i_3 
       (.I0(PICTURE_en),
        .I1(Q2[1]),
        .I2(Q),
        .I3(\srow[2]_i_7_n_0 ),
        .I4(INV_en),
        .I5(\srow_reg[3] [1]),
        .O(picreg_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \srow[2]_i_7 
       (.I0(Q2[2]),
        .I1(Q2[3]),
        .O(\srow[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \srow[3]_i_1 
       (.I0(\srow[3]_i_2_n_0 ),
        .I1(\srow[3]_i_3_n_0 ),
        .I2(\srow_reg[3] [2]),
        .I3(\srow_reg[3]_1 ),
        .O(D));
  LUT4 #(
    .INIT(16'h4F44)) 
    \srow[3]_i_2 
       (.I0(\srow[3]_i_5_n_0 ),
        .I1(\srow_reg[3] [3]),
        .I2(\srow_reg[3]_0 ),
        .I3(\srow_reg[3] [0]),
        .O(\srow[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6666666656656665)) 
    \srow[3]_i_3 
       (.I0(INV_en),
        .I1(PICTURE_en),
        .I2(Q2[2]),
        .I3(Q2[1]),
        .I4(Q),
        .I5(Q2[3]),
        .O(\srow[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555565555565)) 
    \srow[3]_i_5 
       (.I0(INV_en),
        .I1(Q2[3]),
        .I2(Q),
        .I3(Q2[1]),
        .I4(Q2[2]),
        .I5(PICTURE_en),
        .O(\srow[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F8FF40C0C8484)) 
    \srow[4]_i_2 
       (.I0(\srow[4]_i_5_n_0 ),
        .I1(\srow_reg[3] [3]),
        .I2(INV_en),
        .I3(\srow[4]_i_6_n_0 ),
        .I4(PICTURE_en),
        .I5(\srow_reg[3] [1]),
        .O(\scol_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    \srow[4]_i_5 
       (.I0(Q),
        .I1(Q2[1]),
        .I2(Q2[2]),
        .I3(Q2[3]),
        .O(\srow[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \srow[4]_i_6 
       (.I0(Q2[2]),
        .I1(Q2[1]),
        .I2(Q2[3]),
        .I3(Q),
        .O(\srow[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFEEFAABA)) 
    \srow[5]_i_7 
       (.I0(PICTURE_en),
        .I1(Q2[3]),
        .I2(Q2[2]),
        .I3(Q2[1]),
        .I4(Q),
        .O(picreg_reg));
endmodule

(* ORIG_REF_NAME = "FSM" *) 
module design_1_top_0_0_FSM
   (\FSM_onehot_actual_reg[1]_0 ,
    \FSM_onehot_actual_reg[0]_0 ,
    PICTURE_en,
    INV_en,
    D,
    \FSM_onehot_actual_reg[0]_1 ,
    \scol_reg[1] ,
    invreg_reg_0,
    \scol_reg[1]_0 ,
    \FSM_onehot_actual_reg[1]_1 ,
    clk,
    \FSM_onehot_actual_reg[0]_2 ,
    picreg_reg_0,
    invreg_reg_1,
    Q,
    \srow_reg[1] ,
    \srow_reg[1]_0 ,
    \srow_reg[1]_1 ,
    \srow_reg[5] ,
    \srow_reg[1]_2 ,
    \srow_reg[1]_3 ,
    \srow_reg[2] ,
    \srow_reg[7] ,
    \srow_reg[3] ,
    \srow_reg[5]_0 ,
    \srow_reg[1]_4 ,
    E,
    \srow_reg[2]_0 ,
    \srow_reg[2]_1 ,
    \srow_reg[5]_1 );
  output \FSM_onehot_actual_reg[1]_0 ;
  output \FSM_onehot_actual_reg[0]_0 ;
  output PICTURE_en;
  output INV_en;
  output [4:0]D;
  output \FSM_onehot_actual_reg[0]_1 ;
  output \scol_reg[1] ;
  output invreg_reg_0;
  output \scol_reg[1]_0 ;
  input \FSM_onehot_actual_reg[1]_1 ;
  input clk;
  input \FSM_onehot_actual_reg[0]_2 ;
  input picreg_reg_0;
  input invreg_reg_1;
  input [7:0]Q;
  input \srow_reg[1] ;
  input \srow_reg[1]_0 ;
  input \srow_reg[1]_1 ;
  input \srow_reg[5] ;
  input \srow_reg[1]_2 ;
  input \srow_reg[1]_3 ;
  input \srow_reg[2] ;
  input \srow_reg[7] ;
  input \srow_reg[3] ;
  input \srow_reg[5]_0 ;
  input \srow_reg[1]_4 ;
  input [0:0]E;
  input \srow_reg[2]_0 ;
  input \srow_reg[2]_1 ;
  input \srow_reg[5]_1 ;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_actual_reg[0]_0 ;
  wire \FSM_onehot_actual_reg[0]_1 ;
  wire \FSM_onehot_actual_reg[0]_2 ;
  wire \FSM_onehot_actual_reg[1]_0 ;
  wire \FSM_onehot_actual_reg[1]_1 ;
  wire INV_en;
  wire PICTURE_en;
  wire [7:0]Q;
  wire clk;
  wire invreg_reg_0;
  wire invreg_reg_1;
  wire picreg_reg_0;
  wire \scol_reg[1] ;
  wire \scol_reg[1]_0 ;
  wire \srow[0]_i_5_n_0 ;
  wire \srow[0]_i_6_n_0 ;
  wire \srow[1]_i_2_n_0 ;
  wire \srow[1]_i_3_n_0 ;
  wire \srow[1]_i_4_n_0 ;
  wire \srow[1]_i_5_n_0 ;
  wire \srow[1]_i_8_n_0 ;
  wire \srow[2]_i_2_n_0 ;
  wire \srow[3]_i_7_n_0 ;
  wire \srow[5]_i_3_n_0 ;
  wire \srow[5]_i_4_n_0 ;
  wire \srow[5]_i_5_n_0 ;
  wire \srow[7]_i_2_n_0 ;
  wire \srow_reg[1] ;
  wire \srow_reg[1]_0 ;
  wire \srow_reg[1]_1 ;
  wire \srow_reg[1]_2 ;
  wire \srow_reg[1]_3 ;
  wire \srow_reg[1]_4 ;
  wire \srow_reg[2] ;
  wire \srow_reg[2]_0 ;
  wire \srow_reg[2]_1 ;
  wire \srow_reg[3] ;
  wire \srow_reg[5] ;
  wire \srow_reg[5]_0 ;
  wire \srow_reg[5]_1 ;
  wire \srow_reg[7] ;

  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:001,iSTATE1:010," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_actual_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_actual_reg[0]_2 ),
        .Q(\FSM_onehot_actual_reg[0]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:001,iSTATE1:010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_actual_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_actual_reg[1]_1 ),
        .Q(\FSM_onehot_actual_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    invreg_reg
       (.C(clk),
        .CE(1'b1),
        .D(invreg_reg_1),
        .Q(INV_en),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    picreg_i_3
       (.I0(\FSM_onehot_actual_reg[0]_0 ),
        .I1(\FSM_onehot_actual_reg[1]_0 ),
        .O(\FSM_onehot_actual_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    picreg_reg
       (.C(clk),
        .CE(1'b1),
        .D(picreg_reg_0),
        .Q(PICTURE_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFF2)) 
    \srow[0]_i_2 
       (.I0(Q[6]),
        .I1(INV_en),
        .I2(\srow[0]_i_5_n_0 ),
        .I3(\srow[0]_i_6_n_0 ),
        .O(\scol_reg[1] ));
  LUT5 #(
    .INIT(32'h8888FFF4)) 
    \srow[0]_i_5 
       (.I0(PICTURE_en),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(INV_en),
        .O(\srow[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FFFFFFF4)) 
    \srow[0]_i_6 
       (.I0(PICTURE_en),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[7]),
        .I5(INV_en),
        .O(\srow[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \srow[1]_i_1 
       (.I0(\srow[1]_i_2_n_0 ),
        .I1(\srow[1]_i_3_n_0 ),
        .I2(\srow[1]_i_4_n_0 ),
        .I3(\srow[1]_i_5_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFF10E010E0FFE010)) 
    \srow[1]_i_2 
       (.I0(\srow_reg[1]_0 ),
        .I1(PICTURE_en),
        .I2(Q[5]),
        .I3(INV_en),
        .I4(Q[2]),
        .I5(\srow_reg[1]_1 ),
        .O(\srow[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA900)) 
    \srow[1]_i_3 
       (.I0(INV_en),
        .I1(\srow_reg[1]_4 ),
        .I2(PICTURE_en),
        .I3(Q[1]),
        .I4(\srow[1]_i_8_n_0 ),
        .O(\srow[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA802)) 
    \srow[1]_i_4 
       (.I0(Q[3]),
        .I1(PICTURE_en),
        .I2(\srow_reg[1] ),
        .I3(INV_en),
        .O(\srow[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3333EC3C22222828)) 
    \srow[1]_i_5 
       (.I0(Q[6]),
        .I1(INV_en),
        .I2(\srow_reg[1]_2 ),
        .I3(\srow_reg[1]_3 ),
        .I4(PICTURE_en),
        .I5(Q[7]),
        .O(\srow[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8F8FFF4F)) 
    \srow[1]_i_8 
       (.I0(PICTURE_en),
        .I1(Q[4]),
        .I2(E),
        .I3(Q[0]),
        .I4(INV_en),
        .O(\srow[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \srow[2]_i_1 
       (.I0(\srow[2]_i_2_n_0 ),
        .I1(\srow_reg[2]_0 ),
        .I2(\scol_reg[1]_0 ),
        .I3(\srow_reg[2]_1 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h6500FFFF65006500)) 
    \srow[2]_i_2 
       (.I0(INV_en),
        .I1(PICTURE_en),
        .I2(\srow_reg[1]_3 ),
        .I3(Q[7]),
        .I4(\srow_reg[2] ),
        .I5(Q[3]),
        .O(\srow[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAAFEAAE)) 
    \srow[2]_i_4 
       (.I0(\srow[1]_i_8_n_0 ),
        .I1(Q[6]),
        .I2(INV_en),
        .I3(PICTURE_en),
        .I4(Q[2]),
        .O(\scol_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFEEEEFEE)) 
    \srow[3]_i_4 
       (.I0(\srow[1]_i_8_n_0 ),
        .I1(\srow[3]_i_7_n_0 ),
        .I2(INV_en),
        .I3(Q[2]),
        .I4(\srow_reg[3] ),
        .O(invreg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF288)) 
    \srow[3]_i_7 
       (.I0(Q[5]),
        .I1(PICTURE_en),
        .I2(Q[1]),
        .I3(INV_en),
        .O(\srow[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \srow[5]_i_1 
       (.I0(\srow_reg[5]_1 ),
        .I1(Q[3]),
        .I2(\srow[5]_i_3_n_0 ),
        .I3(\srow[5]_i_4_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFEEEEFEE)) 
    \srow[5]_i_3 
       (.I0(\srow[1]_i_8_n_0 ),
        .I1(\srow[5]_i_5_n_0 ),
        .I2(INV_en),
        .I3(Q[2]),
        .I4(\srow_reg[5]_0 ),
        .O(\srow[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h999F)) 
    \srow[5]_i_4 
       (.I0(INV_en),
        .I1(\srow_reg[5] ),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\srow[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBCA0)) 
    \srow[5]_i_5 
       (.I0(Q[5]),
        .I1(PICTURE_en),
        .I2(INV_en),
        .I3(Q[1]),
        .O(\srow[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFF9F0)) 
    \srow[6]_i_1 
       (.I0(PICTURE_en),
        .I1(INV_en),
        .I2(\srow[0]_i_6_n_0 ),
        .I3(Q[6]),
        .I4(\srow[0]_i_5_n_0 ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \srow[7]_i_1 
       (.I0(\srow[0]_i_5_n_0 ),
        .I1(\srow[7]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h88FF88FF88FF88F4)) 
    \srow[7]_i_2 
       (.I0(PICTURE_en),
        .I1(\srow_reg[7] ),
        .I2(Q[6]),
        .I3(INV_en),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\srow[7]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_top_0_0_counter
   (E,
    enable_reg_0,
    clk,
    \srow_reg[0] ,
    Q,
    \srow_reg[0]_0 );
  output [0:0]E;
  output [0:0]enable_reg_0;
  input clk;
  input \srow_reg[0] ;
  input [2:0]Q;
  input \srow_reg[0]_0 ;

  wire [0:0]E;
  wire [2:0]Q;
  wire clk;
  wire [15:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire \cnt[15]_i_1_n_0 ;
  wire \cnt[15]_i_2_n_0 ;
  wire \cnt[15]_i_3_n_0 ;
  wire [0:0]enable_reg_0;
  wire [15:0]p_1_in;
  wire \srow_reg[0] ;
  wire \srow_reg[0]_0 ;
  wire [3:2]NLW_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_cnt0_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({NLW_cnt0_carry__2_CO_UNCONNECTED[3:2],cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__2_O_UNCONNECTED[3],p_1_in[15:13]}),
        .S({1'b0,cnt[15:13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(cnt[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \cnt[15]_i_1 
       (.I0(cnt[13]),
        .I1(cnt[14]),
        .I2(\cnt[15]_i_2_n_0 ),
        .I3(cnt[11]),
        .I4(cnt[12]),
        .I5(cnt[15]),
        .O(\cnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \cnt[15]_i_2 
       (.I0(cnt[9]),
        .I1(cnt[6]),
        .I2(\cnt[15]_i_3_n_0 ),
        .I3(cnt[7]),
        .I4(cnt[8]),
        .I5(cnt[10]),
        .O(\cnt[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \cnt[15]_i_3 
       (.I0(cnt[3]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(cnt[4]),
        .I5(cnt[5]),
        .O(\cnt[15]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(cnt[0]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(cnt[10]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(cnt[11]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(cnt[12]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(cnt[13]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(cnt[14]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(cnt[15]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(cnt[1]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(cnt[2]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(cnt[3]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(cnt[4]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(cnt[5]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(cnt[6]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(cnt[7]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(cnt[8]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(cnt[9]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[15]_i_1_n_0 ),
        .Q(E),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0008088000080882)) 
    \srow[0]_i_1 
       (.I0(E),
        .I1(\srow_reg[0] ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\srow_reg[0]_0 ),
        .O(enable_reg_0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_top_0_0_counter__parameterized1
   (enable_reg_0,
    clk);
  output [0:0]enable_reg_0;
  input clk;

  wire clk;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__0_n_4;
  wire cnt0_carry__0_n_5;
  wire cnt0_carry__0_n_6;
  wire cnt0_carry__0_n_7;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__1_n_4;
  wire cnt0_carry__1_n_5;
  wire cnt0_carry__1_n_6;
  wire cnt0_carry__1_n_7;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__2_n_4;
  wire cnt0_carry__2_n_5;
  wire cnt0_carry__2_n_6;
  wire cnt0_carry__2_n_7;
  wire cnt0_carry__3_n_0;
  wire cnt0_carry__3_n_1;
  wire cnt0_carry__3_n_2;
  wire cnt0_carry__3_n_3;
  wire cnt0_carry__3_n_4;
  wire cnt0_carry__3_n_5;
  wire cnt0_carry__3_n_6;
  wire cnt0_carry__3_n_7;
  wire cnt0_carry__4_n_1;
  wire cnt0_carry__4_n_2;
  wire cnt0_carry__4_n_3;
  wire cnt0_carry__4_n_4;
  wire cnt0_carry__4_n_5;
  wire cnt0_carry__4_n_6;
  wire cnt0_carry__4_n_7;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire cnt0_carry_n_4;
  wire cnt0_carry_n_5;
  wire cnt0_carry_n_6;
  wire cnt0_carry_n_7;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[24]_i_1_n_0 ;
  wire \cnt[24]_i_2_n_0 ;
  wire \cnt[24]_i_3_n_0 ;
  wire \cnt[24]_i_4_n_0 ;
  wire \cnt[24]_i_5_n_0 ;
  wire \cnt[24]_i_6_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[24] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [0:0]enable_reg_0;
  wire [3:3]NLW_cnt0_carry__4_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry_n_4,cnt0_carry_n_5,cnt0_carry_n_6,cnt0_carry_n_7}),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__0_n_4,cnt0_carry__0_n_5,cnt0_carry__0_n_6,cnt0_carry__0_n_7}),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__1_n_4,cnt0_carry__1_n_5,cnt0_carry__1_n_6,cnt0_carry__1_n_7}),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__2_n_4,cnt0_carry__2_n_5,cnt0_carry__2_n_6,cnt0_carry__2_n_7}),
        .S({\cnt_reg_n_0_[16] ,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({cnt0_carry__3_n_0,cnt0_carry__3_n_1,cnt0_carry__3_n_2,cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__3_n_4,cnt0_carry__3_n_5,cnt0_carry__3_n_6,cnt0_carry__3_n_7}),
        .S({\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__4
       (.CI(cnt0_carry__3_n_0),
        .CO({NLW_cnt0_carry__4_CO_UNCONNECTED[3],cnt0_carry__4_n_1,cnt0_carry__4_n_2,cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__4_n_4,cnt0_carry__4_n_5,cnt0_carry__4_n_6,cnt0_carry__4_n_7}),
        .S({\cnt_reg_n_0_[24] ,\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] }));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \cnt[24]_i_1 
       (.I0(\cnt[24]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[19] ),
        .I2(\cnt_reg_n_0_[13] ),
        .I3(\cnt_reg_n_0_[17] ),
        .I4(\cnt[24]_i_3_n_0 ),
        .O(\cnt[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \cnt[24]_i_2 
       (.I0(\cnt_reg_n_0_[15] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[7] ),
        .I3(\cnt_reg_n_0_[18] ),
        .I4(\cnt[24]_i_4_n_0 ),
        .O(\cnt[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \cnt[24]_i_3 
       (.I0(\cnt[24]_i_5_n_0 ),
        .I1(\cnt[24]_i_6_n_0 ),
        .I2(\cnt_reg_n_0_[14] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[5] ),
        .I5(\cnt_reg_n_0_[11] ),
        .O(\cnt[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[24]_i_4 
       (.I0(\cnt_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[20] ),
        .I3(\cnt_reg_n_0_[23] ),
        .O(\cnt[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \cnt[24]_i_5 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt_reg_n_0_[9] ),
        .I3(\cnt_reg_n_0_[16] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg_n_0_[10] ),
        .O(\cnt[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[24]_i_6 
       (.I0(\cnt_reg_n_0_[21] ),
        .I1(\cnt_reg_n_0_[12] ),
        .I2(\cnt_reg_n_0_[24] ),
        .I3(\cnt_reg_n_0_[8] ),
        .O(\cnt[24]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_6),
        .Q(\cnt_reg_n_0_[10] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_5),
        .Q(\cnt_reg_n_0_[11] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_4),
        .Q(\cnt_reg_n_0_[12] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_7),
        .Q(\cnt_reg_n_0_[13] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_6),
        .Q(\cnt_reg_n_0_[14] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_5),
        .Q(\cnt_reg_n_0_[15] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_4),
        .Q(\cnt_reg_n_0_[16] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__3_n_7),
        .Q(\cnt_reg_n_0_[17] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__3_n_6),
        .Q(\cnt_reg_n_0_[18] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__3_n_5),
        .Q(\cnt_reg_n_0_[19] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_7),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__3_n_4),
        .Q(\cnt_reg_n_0_[20] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__4_n_7),
        .Q(\cnt_reg_n_0_[21] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__4_n_6),
        .Q(\cnt_reg_n_0_[22] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__4_n_5),
        .Q(\cnt_reg_n_0_[23] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__4_n_4),
        .Q(\cnt_reg_n_0_[24] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_6),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_5),
        .Q(\cnt_reg_n_0_[3] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_4),
        .Q(\cnt_reg_n_0_[4] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_7),
        .Q(\cnt_reg_n_0_[5] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_6),
        .Q(\cnt_reg_n_0_[6] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_5),
        .Q(\cnt_reg_n_0_[7] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_4),
        .Q(\cnt_reg_n_0_[8] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_7),
        .Q(\cnt_reg_n_0_[9] ),
        .R(\cnt[24]_i_1_n_0 ));
  FDRE enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[24]_i_1_n_0 ),
        .Q(enable_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (Q,
    row,
    clk);
  output [7:0]Q;
  output [7:0]row;
  input clk;

  wire BCDinst2_n_1;
  wire BCDinst2_n_10;
  wire BCDinst2_n_2;
  wire BCDinst2_n_3;
  wire BCDinst2_n_4;
  wire BCDinst2_n_5;
  wire BCDinst2_n_6;
  wire BCDinst2_n_7;
  wire BCDinst2_n_8;
  wire BCDinst2_n_9;
  wire BCDinst_n_1;
  wire BCDinst_n_10;
  wire BCDinst_n_11;
  wire BCDinst_n_12;
  wire BCDinst_n_13;
  wire BCDinst_n_2;
  wire BCDinst_n_3;
  wire BCDinst_n_4;
  wire BCDinst_n_5;
  wire BCDinst_n_6;
  wire BCDinst_n_7;
  wire BCDinst_n_8;
  wire BCDinst_n_9;
  wire EN_OUT;
  wire FSMinst_n_0;
  wire FSMinst_n_1;
  wire FSMinst_n_10;
  wire FSMinst_n_11;
  wire FSMinst_n_12;
  wire FSMinst_n_4;
  wire FSMinst_n_5;
  wire FSMinst_n_6;
  wire FSMinst_n_7;
  wire FSMinst_n_8;
  wire FSMinst_n_9;
  wire INV_en;
  wire PICTURE_en;
  wire [7:0]Q;
  wire [0:0]Q2;
  wire clk;
  wire enable;
  wire [7:0]row;
  wire sec_cnt_en;
  wire [0:0]srow0_in;
  wire \srow[0]_i_3_n_0 ;
  wire \srow[0]_i_4_n_0 ;
  wire \srow[7]_i_3_n_0 ;

  design_1_top_0_0_BCD_counter BCDinst
       (.D(BCDinst_n_13),
        .E(EN_OUT),
        .\FSM_onehot_actual_reg[1] (Q2),
        .\FSM_onehot_actual_reg[1]_0 (FSMinst_n_0),
        .\FSM_onehot_actual_reg[1]_1 (BCDinst2_n_2),
        .\FSM_onehot_actual_reg[1]_2 (FSMinst_n_1),
        .INV_en(INV_en),
        .PICTURE_en(PICTURE_en),
        .Q({Q[3],Q[1]}),
        .clk(clk),
        .\cnt_reg[0]_0 (BCDinst_n_4),
        .\cnt_reg[0]_1 (BCDinst_n_7),
        .\cnt_reg[0]_2 (BCDinst_n_8),
        .\cnt_reg[0]_3 (BCDinst_n_12),
        .\cnt_reg[1]_0 (BCDinst_n_5),
        .\cnt_reg[1]_1 (BCDinst_n_6),
        .\cnt_reg[3]_0 (sec_cnt_en),
        .invreg_reg(BCDinst_n_3),
        .invreg_reg_0(BCDinst_n_10),
        .invreg_reg_1(BCDinst_n_11),
        .picreg_reg(BCDinst_n_1),
        .picreg_reg_0(BCDinst_n_2),
        .\scol_reg[6] (BCDinst_n_9),
        .\srow_reg[4] (BCDinst2_n_4),
        .\srow_reg[4]_0 (FSMinst_n_12));
  design_1_top_0_0_BCD_counter_0 BCDinst2
       (.D(BCDinst2_n_8),
        .E(EN_OUT),
        .INV_en(INV_en),
        .PICTURE_en(PICTURE_en),
        .Q(Q2),
        .clk(clk),
        .\cnt_reg[0]_0 (BCDinst2_n_5),
        .\cnt_reg[0]_1 (BCDinst2_n_10),
        .\cnt_reg[2]_0 (BCDinst2_n_6),
        .\cnt_reg[3]_0 (BCDinst2_n_2),
        .\cnt_reg[3]_1 (BCDinst2_n_7),
        .invreg_reg(BCDinst_n_5),
        .invreg_reg_0(FSMinst_n_1),
        .picreg_reg(BCDinst2_n_1),
        .picreg_reg_0(BCDinst2_n_3),
        .picreg_reg_1(BCDinst2_n_9),
        .picreg_reg_2(BCDinst_n_6),
        .picreg_reg_3(FSMinst_n_0),
        .picreg_reg_4(FSMinst_n_9),
        .\scol_reg[0] (BCDinst2_n_4),
        .\srow_reg[3] ({Q[7:5],Q[3]}),
        .\srow_reg[3]_0 (BCDinst_n_11),
        .\srow_reg[3]_1 (FSMinst_n_11));
  design_1_top_0_0_FSM FSMinst
       (.D({FSMinst_n_4,FSMinst_n_5,FSMinst_n_6,FSMinst_n_7,FSMinst_n_8}),
        .E(enable),
        .\FSM_onehot_actual_reg[0]_0 (FSMinst_n_1),
        .\FSM_onehot_actual_reg[0]_1 (FSMinst_n_9),
        .\FSM_onehot_actual_reg[0]_2 (BCDinst_n_7),
        .\FSM_onehot_actual_reg[1]_0 (FSMinst_n_0),
        .\FSM_onehot_actual_reg[1]_1 (BCDinst_n_4),
        .INV_en(INV_en),
        .PICTURE_en(PICTURE_en),
        .Q(Q),
        .clk(clk),
        .invreg_reg_0(FSMinst_n_11),
        .invreg_reg_1(BCDinst2_n_10),
        .picreg_reg_0(BCDinst2_n_9),
        .\scol_reg[1] (FSMinst_n_10),
        .\scol_reg[1]_0 (FSMinst_n_12),
        .\srow_reg[1] (BCDinst_n_5),
        .\srow_reg[1]_0 (BCDinst2_n_7),
        .\srow_reg[1]_1 (BCDinst_n_8),
        .\srow_reg[1]_2 (BCDinst2_n_5),
        .\srow_reg[1]_3 (BCDinst2_n_6),
        .\srow_reg[1]_4 (BCDinst_n_12),
        .\srow_reg[2] (BCDinst_n_10),
        .\srow_reg[2]_0 (BCDinst2_n_3),
        .\srow_reg[2]_1 (BCDinst_n_9),
        .\srow_reg[3] (BCDinst_n_1),
        .\srow_reg[5] (BCDinst2_n_1),
        .\srow_reg[5]_0 (BCDinst_n_2),
        .\srow_reg[5]_1 (BCDinst_n_3),
        .\srow_reg[7] (\srow[7]_i_3_n_0 ));
  design_1_top_0_0_counter cntinst
       (.E(enable),
        .Q(Q[2:0]),
        .clk(clk),
        .enable_reg_0(srow0_in),
        .\srow_reg[0] (\srow[0]_i_3_n_0 ),
        .\srow_reg[0]_0 (\srow[0]_i_4_n_0 ));
  design_1_top_0_0_counter__parameterized1 cntinst2
       (.clk(clk),
        .enable_reg_0(sec_cnt_en));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[0] 
       (.C(clk),
        .CE(enable),
        .D(Q[0]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[1] 
       (.C(clk),
        .CE(enable),
        .D(Q[7]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[2] 
       (.C(clk),
        .CE(enable),
        .D(Q[6]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[3] 
       (.C(clk),
        .CE(enable),
        .D(Q[5]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[4] 
       (.C(clk),
        .CE(enable),
        .D(Q[4]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[5] 
       (.C(clk),
        .CE(enable),
        .D(Q[3]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[6] 
       (.C(clk),
        .CE(enable),
        .D(Q[2]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[7] 
       (.C(clk),
        .CE(enable),
        .D(Q[1]),
        .Q(Q[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \srow[0]_i_3 
       (.I0(Q[3]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(\srow[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE8)) 
    \srow[0]_i_4 
       (.I0(Q[3]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(\srow[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \srow[7]_i_3 
       (.I0(Q[7]),
        .I1(Q[1]),
        .O(\srow[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[0] 
       (.C(clk),
        .CE(srow0_in),
        .D(FSMinst_n_10),
        .Q(row[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[1] 
       (.C(clk),
        .CE(srow0_in),
        .D(FSMinst_n_4),
        .Q(row[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[2] 
       (.C(clk),
        .CE(srow0_in),
        .D(FSMinst_n_5),
        .Q(row[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[3] 
       (.C(clk),
        .CE(srow0_in),
        .D(BCDinst2_n_8),
        .Q(row[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[4] 
       (.C(clk),
        .CE(srow0_in),
        .D(BCDinst_n_13),
        .Q(row[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[5] 
       (.C(clk),
        .CE(srow0_in),
        .D(FSMinst_n_6),
        .Q(row[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[6] 
       (.C(clk),
        .CE(srow0_in),
        .D(FSMinst_n_7),
        .Q(row[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[7] 
       (.C(clk),
        .CE(srow0_in),
        .D(FSMinst_n_8),
        .Q(row[0]),
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
