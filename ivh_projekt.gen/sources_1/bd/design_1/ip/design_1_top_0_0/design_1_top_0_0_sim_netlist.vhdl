-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
-- Date        : Wed May 15 03:06:14 2024
-- Host        : d02-0204a running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/mvtjr/Documents/Vivado
--               Projects/repete/repete.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl}
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_BCD_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    picreg_reg : out STD_LOGIC;
    picreg_reg_0 : out STD_LOGIC;
    invreg_reg : out STD_LOGIC;
    \cnt_reg[0]_0\ : out STD_LOGIC;
    \cnt_reg[1]_0\ : out STD_LOGIC;
    \cnt_reg[1]_1\ : out STD_LOGIC;
    \cnt_reg[0]_1\ : out STD_LOGIC;
    \cnt_reg[0]_2\ : out STD_LOGIC;
    \scol_reg[6]\ : out STD_LOGIC;
    invreg_reg_0 : out STD_LOGIC;
    invreg_reg_1 : out STD_LOGIC;
    \cnt_reg[0]_3\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    PICTURE_en : in STD_LOGIC;
    INV_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_actual_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_actual_reg[1]_0\ : in STD_LOGIC;
    \FSM_onehot_actual_reg[1]_1\ : in STD_LOGIC;
    \FSM_onehot_actual_reg[1]_2\ : in STD_LOGIC;
    \cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \srow_reg[4]\ : in STD_LOGIC;
    \srow_reg[4]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_BCD_counter : entity is "BCD_counter";
end design_1_top_0_0_BCD_counter;

architecture STRUCTURE of design_1_top_0_0_BCD_counter is
  signal Q_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \^cnt_reg[1]_0\ : STD_LOGIC;
  signal \^cnt_reg[1]_1\ : STD_LOGIC;
  signal \srow[2]_i_8_n_0\ : STD_LOGIC;
  signal \srow[4]_i_3_n_0\ : STD_LOGIC;
  signal \srow[4]_i_4_n_0\ : STD_LOGIC;
  signal \srow[4]_i_7_n_0\ : STD_LOGIC;
  signal temp_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_actual[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_actual[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[0]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \srow[1]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \srow[1]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \srow[3]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \srow[4]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \srow[5]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of temp_i_1 : label is "soft_lutpair2";
begin
  \cnt_reg[1]_0\ <= \^cnt_reg[1]_0\;
  \cnt_reg[1]_1\ <= \^cnt_reg[1]_1\;
\FSM_onehot_actual[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FAFFFFF00FF00FF"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => \^cnt_reg[1]_1\,
      I2 => \FSM_onehot_actual_reg[1]\(0),
      I3 => \FSM_onehot_actual_reg[1]_0\,
      I4 => \FSM_onehot_actual_reg[1]_1\,
      I5 => \FSM_onehot_actual_reg[1]_2\,
      O => \cnt_reg[0]_1\
    );
\FSM_onehot_actual[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF50FF003F00FF00"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => \^cnt_reg[1]_1\,
      I2 => \FSM_onehot_actual_reg[1]\(0),
      I3 => \FSM_onehot_actual_reg[1]_0\,
      I4 => \FSM_onehot_actual_reg[1]_1\,
      I5 => \FSM_onehot_actual_reg[1]_2\,
      O => \cnt_reg[0]_0\
    );
\FSM_onehot_actual[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(0),
      I2 => Q_0(3),
      I3 => Q_0(2),
      O => \^cnt_reg[1]_0\
    );
\FSM_onehot_actual[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(0),
      I2 => Q_0(2),
      I3 => Q_0(3),
      O => \^cnt_reg[1]_1\
    );
\cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q_0(0),
      O => \cnt[0]_i_1__1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6626"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(0),
      I2 => Q_0(3),
      I3 => Q_0(2),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(0),
      I2 => Q_0(2),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78B0"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(0),
      I2 => Q_0(3),
      I3 => Q_0(2),
      O => \cnt[3]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt_reg[3]_0\(0),
      D => \cnt[0]_i_1__1_n_0\,
      Q => Q_0(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt_reg[3]_0\(0),
      D => \cnt[1]_i_1_n_0\,
      Q => Q_0(1),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt_reg[3]_0\(0),
      D => \cnt[2]_i_1_n_0\,
      Q => Q_0(2),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt_reg[3]_0\(0),
      D => \cnt[3]_i_1_n_0\,
      Q => Q_0(3),
      R => '0'
    );
\srow[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEFD"
    )
        port map (
      I0 => Q_0(0),
      I1 => Q_0(1),
      I2 => Q_0(3),
      I3 => Q_0(2),
      I4 => PICTURE_en,
      O => \cnt_reg[0]_2\
    );
\srow[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => Q_0(0),
      I1 => Q_0(1),
      I2 => Q_0(3),
      I3 => Q_0(2),
      O => \cnt_reg[0]_3\
    );
\srow[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200022228AAA8888"
    )
        port map (
      I0 => Q(0),
      I1 => PICTURE_en,
      I2 => Q_0(1),
      I3 => Q_0(0),
      I4 => \srow[2]_i_8_n_0\,
      I5 => INV_en,
      O => \scol_reg[6]\
    );
\srow[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA66565655"
    )
        port map (
      I0 => INV_en,
      I1 => Q_0(3),
      I2 => Q_0(2),
      I3 => Q_0(0),
      I4 => Q_0(1),
      I5 => PICTURE_en,
      O => invreg_reg_0
    );
\srow[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q_0(2),
      I1 => Q_0(3),
      O => \srow[2]_i_8_n_0\
    );
\srow[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55955559"
    )
        port map (
      I0 => INV_en,
      I1 => Q_0(0),
      I2 => Q_0(2),
      I3 => Q_0(3),
      I4 => Q_0(1),
      I5 => PICTURE_en,
      O => invreg_reg_1
    );
\srow[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45555454"
    )
        port map (
      I0 => PICTURE_en,
      I1 => Q_0(3),
      I2 => Q_0(1),
      I3 => Q_0(0),
      I4 => Q_0(2),
      O => picreg_reg
    );
\srow[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \srow_reg[4]\,
      I1 => \srow[4]_i_3_n_0\,
      I2 => \srow[4]_i_4_n_0\,
      I3 => \srow_reg[4]_0\,
      O => D(0)
    );
\srow[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAE0051FFFFFFFF"
    )
        port map (
      I0 => PICTURE_en,
      I1 => \srow[2]_i_8_n_0\,
      I2 => Q_0(1),
      I3 => Q_0(0),
      I4 => INV_en,
      I5 => Q(1),
      O => \srow[4]_i_3_n_0\
    );
\srow[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222208888888A"
    )
        port map (
      I0 => Q(0),
      I1 => PICTURE_en,
      I2 => Q_0(2),
      I3 => \srow[4]_i_7_n_0\,
      I4 => Q_0(3),
      I5 => INV_en,
      O => \srow[4]_i_4_n_0\
    );
\srow[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q_0(0),
      I1 => Q_0(1),
      O => \srow[4]_i_7_n_0\
    );
\srow[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6665665655565555"
    )
        port map (
      I0 => INV_en,
      I1 => PICTURE_en,
      I2 => Q_0(1),
      I3 => Q_0(3),
      I4 => Q_0(2),
      I5 => Q_0(0),
      O => invreg_reg
    );
\srow[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11151141"
    )
        port map (
      I0 => PICTURE_en,
      I1 => Q_0(0),
      I2 => Q_0(2),
      I3 => Q_0(3),
      I4 => Q_0(1),
      O => picreg_reg_0
    );
temp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(0),
      I2 => Q_0(3),
      I3 => Q_0(2),
      I4 => \cnt_reg[3]_0\(0),
      O => temp_i_1_n_0
    );
temp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => temp_i_1_n_0,
      Q => E(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_BCD_counter_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    picreg_reg : out STD_LOGIC;
    \cnt_reg[3]_0\ : out STD_LOGIC;
    picreg_reg_0 : out STD_LOGIC;
    \scol_reg[0]\ : out STD_LOGIC;
    \cnt_reg[0]_0\ : out STD_LOGIC;
    \cnt_reg[2]_0\ : out STD_LOGIC;
    \cnt_reg[3]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    picreg_reg_1 : out STD_LOGIC;
    \cnt_reg[0]_1\ : out STD_LOGIC;
    invreg_reg : in STD_LOGIC;
    invreg_reg_0 : in STD_LOGIC;
    PICTURE_en : in STD_LOGIC;
    INV_en : in STD_LOGIC;
    \srow_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    picreg_reg_2 : in STD_LOGIC;
    picreg_reg_3 : in STD_LOGIC;
    \srow_reg[3]_0\ : in STD_LOGIC;
    \srow_reg[3]_1\ : in STD_LOGIC;
    picreg_reg_4 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_BCD_counter_0 : entity is "BCD_counter";
end design_1_top_0_0_BCD_counter_0;

architecture STRUCTURE of design_1_top_0_0_BCD_counter_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Q2 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \^cnt_reg[3]_0\ : STD_LOGIC;
  signal \^cnt_reg[3]_1\ : STD_LOGIC;
  signal picreg_i_2_n_0 : STD_LOGIC;
  signal picreg_i_5_n_0 : STD_LOGIC;
  signal \srow[2]_i_7_n_0\ : STD_LOGIC;
  signal \srow[3]_i_2_n_0\ : STD_LOGIC;
  signal \srow[3]_i_3_n_0\ : STD_LOGIC;
  signal \srow[3]_i_5_n_0\ : STD_LOGIC;
  signal \srow[4]_i_5_n_0\ : STD_LOGIC;
  signal \srow[4]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_actual[1]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[0]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of invreg_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of picreg_i_4 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \srow[1]_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \srow[1]_i_9\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \srow[4]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \srow[4]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \srow[5]_i_7\ : label is "soft_lutpair6";
begin
  Q(0) <= \^q\(0);
  \cnt_reg[3]_0\ <= \^cnt_reg[3]_0\;
  \cnt_reg[3]_1\ <= \^cnt_reg[3]_1\;
\FSM_onehot_actual[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q2(3),
      I1 => Q2(1),
      I2 => Q2(2),
      O => \^cnt_reg[3]_0\
    );
\cnt[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \cnt[0]_i_1__2_n_0\
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4A5A"
    )
        port map (
      I0 => Q2(1),
      I1 => Q2(2),
      I2 => \^q\(0),
      I3 => Q2(3),
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => Q2(1),
      I1 => Q2(2),
      I2 => \^q\(0),
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F80"
    )
        port map (
      I0 => Q2(1),
      I1 => Q2(2),
      I2 => \^q\(0),
      I3 => Q2(3),
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt[0]_i_1__2_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt[1]_i_1__0_n_0\,
      Q => Q2(1),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt[2]_i_1__0_n_0\,
      Q => Q2(2),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt[3]_i_1__0_n_0\,
      Q => Q2(3),
      R => '0'
    );
invreg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0040"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^cnt_reg[3]_0\,
      I2 => invreg_reg_0,
      I3 => invreg_reg,
      I4 => INV_en,
      O => \cnt_reg[0]_1\
    );
picreg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAAAAAA"
    )
        port map (
      I0 => picreg_i_2_n_0,
      I1 => picreg_reg_2,
      I2 => picreg_reg_4,
      I3 => \^cnt_reg[3]_1\,
      I4 => picreg_i_5_n_0,
      I5 => PICTURE_en,
      O => picreg_reg_1
    );
picreg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => invreg_reg,
      I1 => invreg_reg_0,
      I2 => Q2(3),
      I3 => Q2(1),
      I4 => Q2(2),
      I5 => \^q\(0),
      O => picreg_i_2_n_0
    );
picreg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => Q2(3),
      I1 => Q2(2),
      I2 => \^q\(0),
      I3 => Q2(1),
      O => \^cnt_reg[3]_1\
    );
picreg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => picreg_reg_2,
      I1 => \^q\(0),
      I2 => picreg_reg_3,
      I3 => Q2(3),
      I4 => Q2(1),
      I5 => Q2(2),
      O => picreg_i_5_n_0
    );
\srow[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2B"
    )
        port map (
      I0 => Q2(2),
      I1 => Q2(1),
      I2 => \^q\(0),
      I3 => Q2(3),
      O => \cnt_reg[2]_0\
    );
\srow[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => \^q\(0),
      I1 => Q2(3),
      I2 => Q2(2),
      I3 => Q2(1),
      O => \cnt_reg[0]_0\
    );
\srow[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAA4055FFFFFFFF"
    )
        port map (
      I0 => PICTURE_en,
      I1 => Q2(1),
      I2 => \^q\(0),
      I3 => \srow[2]_i_7_n_0\,
      I4 => INV_en,
      I5 => \srow_reg[3]\(1),
      O => picreg_reg_0
    );
\srow[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q2(2),
      I1 => Q2(3),
      O => \srow[2]_i_7_n_0\
    );
\srow[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \srow[3]_i_2_n_0\,
      I1 => \srow[3]_i_3_n_0\,
      I2 => \srow_reg[3]\(2),
      I3 => \srow_reg[3]_1\,
      O => D(0)
    );
\srow[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \srow[3]_i_5_n_0\,
      I1 => \srow_reg[3]\(3),
      I2 => \srow_reg[3]_0\,
      I3 => \srow_reg[3]\(0),
      O => \srow[3]_i_2_n_0\
    );
\srow[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666656656665"
    )
        port map (
      I0 => INV_en,
      I1 => PICTURE_en,
      I2 => Q2(2),
      I3 => Q2(1),
      I4 => \^q\(0),
      I5 => Q2(3),
      O => \srow[3]_i_3_n_0\
    );
\srow[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555565555565"
    )
        port map (
      I0 => INV_en,
      I1 => Q2(3),
      I2 => \^q\(0),
      I3 => Q2(1),
      I4 => Q2(2),
      I5 => PICTURE_en,
      O => \srow[3]_i_5_n_0\
    );
\srow[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F8FF40C0C8484"
    )
        port map (
      I0 => \srow[4]_i_5_n_0\,
      I1 => \srow_reg[3]\(3),
      I2 => INV_en,
      I3 => \srow[4]_i_6_n_0\,
      I4 => PICTURE_en,
      I5 => \srow_reg[3]\(1),
      O => \scol_reg[0]\
    );
\srow[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => \^q\(0),
      I1 => Q2(1),
      I2 => Q2(2),
      I3 => Q2(3),
      O => \srow[4]_i_5_n_0\
    );
\srow[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Q2(2),
      I1 => Q2(1),
      I2 => Q2(3),
      I3 => \^q\(0),
      O => \srow[4]_i_6_n_0\
    );
\srow[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEFAABA"
    )
        port map (
      I0 => PICTURE_en,
      I1 => Q2(3),
      I2 => Q2(2),
      I3 => Q2(1),
      I4 => \^q\(0),
      O => picreg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_FSM is
  port (
    \FSM_onehot_actual_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_actual_reg[0]_0\ : out STD_LOGIC;
    PICTURE_en : out STD_LOGIC;
    INV_en : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_actual_reg[0]_1\ : out STD_LOGIC;
    \scol_reg[1]\ : out STD_LOGIC;
    invreg_reg_0 : out STD_LOGIC;
    \scol_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_actual_reg[1]_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_onehot_actual_reg[0]_2\ : in STD_LOGIC;
    picreg_reg_0 : in STD_LOGIC;
    invreg_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \srow_reg[1]\ : in STD_LOGIC;
    \srow_reg[1]_0\ : in STD_LOGIC;
    \srow_reg[1]_1\ : in STD_LOGIC;
    \srow_reg[5]\ : in STD_LOGIC;
    \srow_reg[1]_2\ : in STD_LOGIC;
    \srow_reg[1]_3\ : in STD_LOGIC;
    \srow_reg[2]\ : in STD_LOGIC;
    \srow_reg[7]\ : in STD_LOGIC;
    \srow_reg[3]\ : in STD_LOGIC;
    \srow_reg[5]_0\ : in STD_LOGIC;
    \srow_reg[1]_4\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \srow_reg[2]_0\ : in STD_LOGIC;
    \srow_reg[2]_1\ : in STD_LOGIC;
    \srow_reg[5]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_FSM : entity is "FSM";
end design_1_top_0_0_FSM;

architecture STRUCTURE of design_1_top_0_0_FSM is
  signal \^fsm_onehot_actual_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_onehot_actual_reg[1]_0\ : STD_LOGIC;
  signal \^inv_en\ : STD_LOGIC;
  signal \^picture_en\ : STD_LOGIC;
  signal \^scol_reg[1]_0\ : STD_LOGIC;
  signal \srow[0]_i_5_n_0\ : STD_LOGIC;
  signal \srow[0]_i_6_n_0\ : STD_LOGIC;
  signal \srow[1]_i_2_n_0\ : STD_LOGIC;
  signal \srow[1]_i_3_n_0\ : STD_LOGIC;
  signal \srow[1]_i_4_n_0\ : STD_LOGIC;
  signal \srow[1]_i_5_n_0\ : STD_LOGIC;
  signal \srow[1]_i_8_n_0\ : STD_LOGIC;
  signal \srow[2]_i_2_n_0\ : STD_LOGIC;
  signal \srow[3]_i_7_n_0\ : STD_LOGIC;
  signal \srow[5]_i_3_n_0\ : STD_LOGIC;
  signal \srow[5]_i_4_n_0\ : STD_LOGIC;
  signal \srow[5]_i_5_n_0\ : STD_LOGIC;
  signal \srow[7]_i_2_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_actual_reg[0]\ : label is "iSTATE:100,iSTATE0:001,iSTATE1:010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_actual_reg[1]\ : label is "iSTATE:100,iSTATE0:001,iSTATE1:010,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \srow[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \srow[3]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \srow[5]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \srow[6]_i_1\ : label is "soft_lutpair12";
begin
  \FSM_onehot_actual_reg[0]_0\ <= \^fsm_onehot_actual_reg[0]_0\;
  \FSM_onehot_actual_reg[1]_0\ <= \^fsm_onehot_actual_reg[1]_0\;
  INV_en <= \^inv_en\;
  PICTURE_en <= \^picture_en\;
  \scol_reg[1]_0\ <= \^scol_reg[1]_0\;
\FSM_onehot_actual_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_actual_reg[0]_2\,
      Q => \^fsm_onehot_actual_reg[0]_0\,
      R => '0'
    );
\FSM_onehot_actual_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_actual_reg[1]_1\,
      Q => \^fsm_onehot_actual_reg[1]_0\,
      R => '0'
    );
invreg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => invreg_reg_1,
      Q => \^inv_en\,
      R => '0'
    );
picreg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_onehot_actual_reg[0]_0\,
      I1 => \^fsm_onehot_actual_reg[1]_0\,
      O => \FSM_onehot_actual_reg[0]_1\
    );
picreg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => picreg_reg_0,
      Q => \^picture_en\,
      R => '0'
    );
\srow[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF2"
    )
        port map (
      I0 => Q(6),
      I1 => \^inv_en\,
      I2 => \srow[0]_i_5_n_0\,
      I3 => \srow[0]_i_6_n_0\,
      O => \scol_reg[1]\
    );
\srow[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888FFF4"
    )
        port map (
      I0 => \^picture_en\,
      I1 => Q(4),
      I2 => Q(5),
      I3 => Q(3),
      I4 => \^inv_en\,
      O => \srow[0]_i_5_n_0\
    );
\srow[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFFFFF4"
    )
        port map (
      I0 => \^picture_en\,
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(7),
      I5 => \^inv_en\,
      O => \srow[0]_i_6_n_0\
    );
\srow[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \srow[1]_i_2_n_0\,
      I1 => \srow[1]_i_3_n_0\,
      I2 => \srow[1]_i_4_n_0\,
      I3 => \srow[1]_i_5_n_0\,
      O => D(4)
    );
\srow[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10E010E0FFE010"
    )
        port map (
      I0 => \srow_reg[1]_0\,
      I1 => \^picture_en\,
      I2 => Q(5),
      I3 => \^inv_en\,
      I4 => Q(2),
      I5 => \srow_reg[1]_1\,
      O => \srow[1]_i_2_n_0\
    );
\srow[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA900"
    )
        port map (
      I0 => \^inv_en\,
      I1 => \srow_reg[1]_4\,
      I2 => \^picture_en\,
      I3 => Q(1),
      I4 => \srow[1]_i_8_n_0\,
      O => \srow[1]_i_3_n_0\
    );
\srow[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A802"
    )
        port map (
      I0 => Q(3),
      I1 => \^picture_en\,
      I2 => \srow_reg[1]\,
      I3 => \^inv_en\,
      O => \srow[1]_i_4_n_0\
    );
\srow[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333EC3C22222828"
    )
        port map (
      I0 => Q(6),
      I1 => \^inv_en\,
      I2 => \srow_reg[1]_2\,
      I3 => \srow_reg[1]_3\,
      I4 => \^picture_en\,
      I5 => Q(7),
      O => \srow[1]_i_5_n_0\
    );
\srow[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8FFF4F"
    )
        port map (
      I0 => \^picture_en\,
      I1 => Q(4),
      I2 => E(0),
      I3 => Q(0),
      I4 => \^inv_en\,
      O => \srow[1]_i_8_n_0\
    );
\srow[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \srow[2]_i_2_n_0\,
      I1 => \srow_reg[2]_0\,
      I2 => \^scol_reg[1]_0\,
      I3 => \srow_reg[2]_1\,
      O => D(3)
    );
\srow[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6500FFFF65006500"
    )
        port map (
      I0 => \^inv_en\,
      I1 => \^picture_en\,
      I2 => \srow_reg[1]_3\,
      I3 => Q(7),
      I4 => \srow_reg[2]\,
      I5 => Q(3),
      O => \srow[2]_i_2_n_0\
    );
\srow[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAFEAAE"
    )
        port map (
      I0 => \srow[1]_i_8_n_0\,
      I1 => Q(6),
      I2 => \^inv_en\,
      I3 => \^picture_en\,
      I4 => Q(2),
      O => \^scol_reg[1]_0\
    );
\srow[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEEFEE"
    )
        port map (
      I0 => \srow[1]_i_8_n_0\,
      I1 => \srow[3]_i_7_n_0\,
      I2 => \^inv_en\,
      I3 => Q(2),
      I4 => \srow_reg[3]\,
      O => invreg_reg_0
    );
\srow[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F288"
    )
        port map (
      I0 => Q(5),
      I1 => \^picture_en\,
      I2 => Q(1),
      I3 => \^inv_en\,
      O => \srow[3]_i_7_n_0\
    );
\srow[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => \srow_reg[5]_1\,
      I1 => Q(3),
      I2 => \srow[5]_i_3_n_0\,
      I3 => \srow[5]_i_4_n_0\,
      O => D(2)
    );
\srow[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEEFEE"
    )
        port map (
      I0 => \srow[1]_i_8_n_0\,
      I1 => \srow[5]_i_5_n_0\,
      I2 => \^inv_en\,
      I3 => Q(2),
      I4 => \srow_reg[5]_0\,
      O => \srow[5]_i_3_n_0\
    );
\srow[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"999F"
    )
        port map (
      I0 => \^inv_en\,
      I1 => \srow_reg[5]\,
      I2 => Q(7),
      I3 => Q(6),
      O => \srow[5]_i_4_n_0\
    );
\srow[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BCA0"
    )
        port map (
      I0 => Q(5),
      I1 => \^picture_en\,
      I2 => \^inv_en\,
      I3 => Q(1),
      O => \srow[5]_i_5_n_0\
    );
\srow[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF9F0"
    )
        port map (
      I0 => \^picture_en\,
      I1 => \^inv_en\,
      I2 => \srow[0]_i_6_n_0\,
      I3 => Q(6),
      I4 => \srow[0]_i_5_n_0\,
      O => D(1)
    );
\srow[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \srow[0]_i_5_n_0\,
      I1 => \srow[7]_i_2_n_0\,
      O => D(0)
    );
\srow[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88FF88FF88FF88F4"
    )
        port map (
      I0 => \^picture_en\,
      I1 => \srow_reg[7]\,
      I2 => Q(6),
      I3 => \^inv_en\,
      I4 => Q(2),
      I5 => Q(0),
      O => \srow[7]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \srow_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \srow_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_counter : entity is "counter";
end design_1_top_0_0_counter;

architecture STRUCTURE of design_1_top_0_0_counter is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[15]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[15]_i_3_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
begin
  E(0) <= \^e\(0);
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_cnt0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => cnt(15 downto 13)
    );
\cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => p_1_in(0)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => cnt(13),
      I1 => cnt(14),
      I2 => \cnt[15]_i_2_n_0\,
      I3 => cnt(11),
      I4 => cnt(12),
      I5 => cnt(15),
      O => \cnt[15]_i_1_n_0\
    );
\cnt[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => cnt(9),
      I1 => cnt(6),
      I2 => \cnt[15]_i_3_n_0\,
      I3 => cnt(7),
      I4 => cnt(8),
      I5 => cnt(10),
      O => \cnt[15]_i_2_n_0\
    );
\cnt[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(0),
      I2 => cnt(2),
      I3 => cnt(1),
      I4 => cnt(4),
      I5 => cnt(5),
      O => \cnt[15]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => cnt(0),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(10),
      Q => cnt(10),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(11),
      Q => cnt(11),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(12),
      Q => cnt(12),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(13),
      Q => cnt(13),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(14),
      Q => cnt(14),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(15),
      Q => cnt(15),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => cnt(1),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => cnt(2),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => cnt(3),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => cnt(4),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => cnt(5),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => cnt(6),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => cnt(7),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => cnt(8),
      R => \cnt[15]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => cnt(9),
      R => \cnt[15]_i_1_n_0\
    );
enable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[15]_i_1_n_0\,
      Q => \^e\(0),
      R => '0'
    );
\srow[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008088000080882"
    )
        port map (
      I0 => \^e\(0),
      I1 => \srow_reg[0]\,
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => \srow_reg[0]_0\,
      O => enable_reg_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_counter__parameterized1\ is
  port (
    enable_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_counter__parameterized1\ : entity is "counter";
end \design_1_top_0_0_counter__parameterized1\;

architecture STRUCTURE of \design_1_top_0_0_counter__parameterized1\ is
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \cnt0_carry__0_n_7\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_4\ : STD_LOGIC;
  signal \cnt0_carry__1_n_5\ : STD_LOGIC;
  signal \cnt0_carry__1_n_6\ : STD_LOGIC;
  signal \cnt0_carry__1_n_7\ : STD_LOGIC;
  signal \cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_4\ : STD_LOGIC;
  signal \cnt0_carry__2_n_5\ : STD_LOGIC;
  signal \cnt0_carry__2_n_6\ : STD_LOGIC;
  signal \cnt0_carry__2_n_7\ : STD_LOGIC;
  signal \cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \cnt0_carry__3_n_4\ : STD_LOGIC;
  signal \cnt0_carry__3_n_5\ : STD_LOGIC;
  signal \cnt0_carry__3_n_6\ : STD_LOGIC;
  signal \cnt0_carry__3_n_7\ : STD_LOGIC;
  signal \cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \cnt0_carry__4_n_4\ : STD_LOGIC;
  signal \cnt0_carry__4_n_5\ : STD_LOGIC;
  signal \cnt0_carry__4_n_6\ : STD_LOGIC;
  signal \cnt0_carry__4_n_7\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal cnt0_carry_n_4 : STD_LOGIC;
  signal cnt0_carry_n_5 : STD_LOGIC;
  signal cnt0_carry_n_6 : STD_LOGIC;
  signal cnt0_carry_n_7 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_cnt0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__4\ : label is 35;
begin
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => \cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => cnt0_carry_n_4,
      O(2) => cnt0_carry_n_5,
      O(1) => cnt0_carry_n_6,
      O(0) => cnt0_carry_n_7,
      S(3) => \cnt_reg_n_0_[4]\,
      S(2) => \cnt_reg_n_0_[3]\,
      S(1) => \cnt_reg_n_0_[2]\,
      S(0) => \cnt_reg_n_0_[1]\
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt0_carry__0_n_4\,
      O(2) => \cnt0_carry__0_n_5\,
      O(1) => \cnt0_carry__0_n_6\,
      O(0) => \cnt0_carry__0_n_7\,
      S(3) => \cnt_reg_n_0_[8]\,
      S(2) => \cnt_reg_n_0_[7]\,
      S(1) => \cnt_reg_n_0_[6]\,
      S(0) => \cnt_reg_n_0_[5]\
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt0_carry__1_n_4\,
      O(2) => \cnt0_carry__1_n_5\,
      O(1) => \cnt0_carry__1_n_6\,
      O(0) => \cnt0_carry__1_n_7\,
      S(3) => \cnt_reg_n_0_[12]\,
      S(2) => \cnt_reg_n_0_[11]\,
      S(1) => \cnt_reg_n_0_[10]\,
      S(0) => \cnt_reg_n_0_[9]\
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3) => \cnt0_carry__2_n_0\,
      CO(2) => \cnt0_carry__2_n_1\,
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt0_carry__2_n_4\,
      O(2) => \cnt0_carry__2_n_5\,
      O(1) => \cnt0_carry__2_n_6\,
      O(0) => \cnt0_carry__2_n_7\,
      S(3) => \cnt_reg_n_0_[16]\,
      S(2) => \cnt_reg_n_0_[15]\,
      S(1) => \cnt_reg_n_0_[14]\,
      S(0) => \cnt_reg_n_0_[13]\
    );
\cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__2_n_0\,
      CO(3) => \cnt0_carry__3_n_0\,
      CO(2) => \cnt0_carry__3_n_1\,
      CO(1) => \cnt0_carry__3_n_2\,
      CO(0) => \cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt0_carry__3_n_4\,
      O(2) => \cnt0_carry__3_n_5\,
      O(1) => \cnt0_carry__3_n_6\,
      O(0) => \cnt0_carry__3_n_7\,
      S(3) => \cnt_reg_n_0_[20]\,
      S(2) => \cnt_reg_n_0_[19]\,
      S(1) => \cnt_reg_n_0_[18]\,
      S(0) => \cnt_reg_n_0_[17]\
    );
\cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__3_n_0\,
      CO(3) => \NLW_cnt0_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \cnt0_carry__4_n_1\,
      CO(1) => \cnt0_carry__4_n_2\,
      CO(0) => \cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt0_carry__4_n_4\,
      O(2) => \cnt0_carry__4_n_5\,
      O(1) => \cnt0_carry__4_n_6\,
      O(0) => \cnt0_carry__4_n_7\,
      S(3) => \cnt_reg_n_0_[24]\,
      S(2) => \cnt_reg_n_0_[23]\,
      S(1) => \cnt_reg_n_0_[22]\,
      S(0) => \cnt_reg_n_0_[21]\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \cnt[24]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[19]\,
      I2 => \cnt_reg_n_0_[13]\,
      I3 => \cnt_reg_n_0_[17]\,
      I4 => \cnt[24]_i_3_n_0\,
      O => \cnt[24]_i_1_n_0\
    );
\cnt[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[15]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[7]\,
      I3 => \cnt_reg_n_0_[18]\,
      I4 => \cnt[24]_i_4_n_0\,
      O => \cnt[24]_i_2_n_0\
    );
\cnt[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt[24]_i_5_n_0\,
      I1 => \cnt[24]_i_6_n_0\,
      I2 => \cnt_reg_n_0_[14]\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[5]\,
      I5 => \cnt_reg_n_0_[11]\,
      O => \cnt[24]_i_3_n_0\
    );
\cnt[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \cnt_reg_n_0_[22]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[20]\,
      I3 => \cnt_reg_n_0_[23]\,
      O => \cnt[24]_i_4_n_0\
    );
\cnt[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \cnt_reg_n_0_[9]\,
      I3 => \cnt_reg_n_0_[16]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => \cnt_reg_n_0_[10]\,
      O => \cnt[24]_i_5_n_0\
    );
\cnt[24]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \cnt_reg_n_0_[21]\,
      I1 => \cnt_reg_n_0_[12]\,
      I2 => \cnt_reg_n_0_[24]\,
      I3 => \cnt_reg_n_0_[8]\,
      O => \cnt[24]_i_6_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__1_n_6\,
      Q => \cnt_reg_n_0_[10]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__1_n_5\,
      Q => \cnt_reg_n_0_[11]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__1_n_4\,
      Q => \cnt_reg_n_0_[12]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__2_n_7\,
      Q => \cnt_reg_n_0_[13]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__2_n_6\,
      Q => \cnt_reg_n_0_[14]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__2_n_5\,
      Q => \cnt_reg_n_0_[15]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__2_n_4\,
      Q => \cnt_reg_n_0_[16]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__3_n_7\,
      Q => \cnt_reg_n_0_[17]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__3_n_6\,
      Q => \cnt_reg_n_0_[18]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__3_n_5\,
      Q => \cnt_reg_n_0_[19]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt0_carry_n_7,
      Q => \cnt_reg_n_0_[1]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__3_n_4\,
      Q => \cnt_reg_n_0_[20]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__4_n_7\,
      Q => \cnt_reg_n_0_[21]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__4_n_6\,
      Q => \cnt_reg_n_0_[22]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__4_n_5\,
      Q => \cnt_reg_n_0_[23]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__4_n_4\,
      Q => \cnt_reg_n_0_[24]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt0_carry_n_6,
      Q => \cnt_reg_n_0_[2]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt0_carry_n_5,
      Q => \cnt_reg_n_0_[3]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt0_carry_n_4,
      Q => \cnt_reg_n_0_[4]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__0_n_7\,
      Q => \cnt_reg_n_0_[5]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__0_n_6\,
      Q => \cnt_reg_n_0_[6]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__0_n_5\,
      Q => \cnt_reg_n_0_[7]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__0_n_4\,
      Q => \cnt_reg_n_0_[8]\,
      R => \cnt[24]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__1_n_7\,
      Q => \cnt_reg_n_0_[9]\,
      R => \cnt[24]_i_1_n_0\
    );
enable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[24]_i_1_n_0\,
      Q => enable_reg_0(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal BCDinst2_n_1 : STD_LOGIC;
  signal BCDinst2_n_10 : STD_LOGIC;
  signal BCDinst2_n_2 : STD_LOGIC;
  signal BCDinst2_n_3 : STD_LOGIC;
  signal BCDinst2_n_4 : STD_LOGIC;
  signal BCDinst2_n_5 : STD_LOGIC;
  signal BCDinst2_n_6 : STD_LOGIC;
  signal BCDinst2_n_7 : STD_LOGIC;
  signal BCDinst2_n_8 : STD_LOGIC;
  signal BCDinst2_n_9 : STD_LOGIC;
  signal BCDinst_n_1 : STD_LOGIC;
  signal BCDinst_n_10 : STD_LOGIC;
  signal BCDinst_n_11 : STD_LOGIC;
  signal BCDinst_n_12 : STD_LOGIC;
  signal BCDinst_n_13 : STD_LOGIC;
  signal BCDinst_n_2 : STD_LOGIC;
  signal BCDinst_n_3 : STD_LOGIC;
  signal BCDinst_n_4 : STD_LOGIC;
  signal BCDinst_n_5 : STD_LOGIC;
  signal BCDinst_n_6 : STD_LOGIC;
  signal BCDinst_n_7 : STD_LOGIC;
  signal BCDinst_n_8 : STD_LOGIC;
  signal BCDinst_n_9 : STD_LOGIC;
  signal EN_OUT : STD_LOGIC;
  signal FSMinst_n_0 : STD_LOGIC;
  signal FSMinst_n_1 : STD_LOGIC;
  signal FSMinst_n_10 : STD_LOGIC;
  signal FSMinst_n_11 : STD_LOGIC;
  signal FSMinst_n_12 : STD_LOGIC;
  signal FSMinst_n_4 : STD_LOGIC;
  signal FSMinst_n_5 : STD_LOGIC;
  signal FSMinst_n_6 : STD_LOGIC;
  signal FSMinst_n_7 : STD_LOGIC;
  signal FSMinst_n_8 : STD_LOGIC;
  signal FSMinst_n_9 : STD_LOGIC;
  signal INV_en : STD_LOGIC;
  signal PICTURE_en : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Q2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal enable : STD_LOGIC;
  signal sec_cnt_en : STD_LOGIC;
  signal srow0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \srow[0]_i_3_n_0\ : STD_LOGIC;
  signal \srow[0]_i_4_n_0\ : STD_LOGIC;
  signal \srow[7]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \srow[0]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \srow[0]_i_4\ : label is "soft_lutpair14";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
BCDinst: entity work.design_1_top_0_0_BCD_counter
     port map (
      D(0) => BCDinst_n_13,
      E(0) => EN_OUT,
      \FSM_onehot_actual_reg[1]\(0) => Q2(0),
      \FSM_onehot_actual_reg[1]_0\ => FSMinst_n_0,
      \FSM_onehot_actual_reg[1]_1\ => BCDinst2_n_2,
      \FSM_onehot_actual_reg[1]_2\ => FSMinst_n_1,
      INV_en => INV_en,
      PICTURE_en => PICTURE_en,
      Q(1) => \^q\(3),
      Q(0) => \^q\(1),
      clk => clk,
      \cnt_reg[0]_0\ => BCDinst_n_4,
      \cnt_reg[0]_1\ => BCDinst_n_7,
      \cnt_reg[0]_2\ => BCDinst_n_8,
      \cnt_reg[0]_3\ => BCDinst_n_12,
      \cnt_reg[1]_0\ => BCDinst_n_5,
      \cnt_reg[1]_1\ => BCDinst_n_6,
      \cnt_reg[3]_0\(0) => sec_cnt_en,
      invreg_reg => BCDinst_n_3,
      invreg_reg_0 => BCDinst_n_10,
      invreg_reg_1 => BCDinst_n_11,
      picreg_reg => BCDinst_n_1,
      picreg_reg_0 => BCDinst_n_2,
      \scol_reg[6]\ => BCDinst_n_9,
      \srow_reg[4]\ => BCDinst2_n_4,
      \srow_reg[4]_0\ => FSMinst_n_12
    );
BCDinst2: entity work.design_1_top_0_0_BCD_counter_0
     port map (
      D(0) => BCDinst2_n_8,
      E(0) => EN_OUT,
      INV_en => INV_en,
      PICTURE_en => PICTURE_en,
      Q(0) => Q2(0),
      clk => clk,
      \cnt_reg[0]_0\ => BCDinst2_n_5,
      \cnt_reg[0]_1\ => BCDinst2_n_10,
      \cnt_reg[2]_0\ => BCDinst2_n_6,
      \cnt_reg[3]_0\ => BCDinst2_n_2,
      \cnt_reg[3]_1\ => BCDinst2_n_7,
      invreg_reg => BCDinst_n_5,
      invreg_reg_0 => FSMinst_n_1,
      picreg_reg => BCDinst2_n_1,
      picreg_reg_0 => BCDinst2_n_3,
      picreg_reg_1 => BCDinst2_n_9,
      picreg_reg_2 => BCDinst_n_6,
      picreg_reg_3 => FSMinst_n_0,
      picreg_reg_4 => FSMinst_n_9,
      \scol_reg[0]\ => BCDinst2_n_4,
      \srow_reg[3]\(3 downto 1) => \^q\(7 downto 5),
      \srow_reg[3]\(0) => \^q\(3),
      \srow_reg[3]_0\ => BCDinst_n_11,
      \srow_reg[3]_1\ => FSMinst_n_11
    );
FSMinst: entity work.design_1_top_0_0_FSM
     port map (
      D(4) => FSMinst_n_4,
      D(3) => FSMinst_n_5,
      D(2) => FSMinst_n_6,
      D(1) => FSMinst_n_7,
      D(0) => FSMinst_n_8,
      E(0) => enable,
      \FSM_onehot_actual_reg[0]_0\ => FSMinst_n_1,
      \FSM_onehot_actual_reg[0]_1\ => FSMinst_n_9,
      \FSM_onehot_actual_reg[0]_2\ => BCDinst_n_7,
      \FSM_onehot_actual_reg[1]_0\ => FSMinst_n_0,
      \FSM_onehot_actual_reg[1]_1\ => BCDinst_n_4,
      INV_en => INV_en,
      PICTURE_en => PICTURE_en,
      Q(7 downto 0) => \^q\(7 downto 0),
      clk => clk,
      invreg_reg_0 => FSMinst_n_11,
      invreg_reg_1 => BCDinst2_n_10,
      picreg_reg_0 => BCDinst2_n_9,
      \scol_reg[1]\ => FSMinst_n_10,
      \scol_reg[1]_0\ => FSMinst_n_12,
      \srow_reg[1]\ => BCDinst_n_5,
      \srow_reg[1]_0\ => BCDinst2_n_7,
      \srow_reg[1]_1\ => BCDinst_n_8,
      \srow_reg[1]_2\ => BCDinst2_n_5,
      \srow_reg[1]_3\ => BCDinst2_n_6,
      \srow_reg[1]_4\ => BCDinst_n_12,
      \srow_reg[2]\ => BCDinst_n_10,
      \srow_reg[2]_0\ => BCDinst2_n_3,
      \srow_reg[2]_1\ => BCDinst_n_9,
      \srow_reg[3]\ => BCDinst_n_1,
      \srow_reg[5]\ => BCDinst2_n_1,
      \srow_reg[5]_0\ => BCDinst_n_2,
      \srow_reg[5]_1\ => BCDinst_n_3,
      \srow_reg[7]\ => \srow[7]_i_3_n_0\
    );
cntinst: entity work.design_1_top_0_0_counter
     port map (
      E(0) => enable,
      Q(2 downto 0) => \^q\(2 downto 0),
      clk => clk,
      enable_reg_0(0) => srow0_in(0),
      \srow_reg[0]\ => \srow[0]_i_3_n_0\,
      \srow_reg[0]_0\ => \srow[0]_i_4_n_0\
    );
cntinst2: entity work.\design_1_top_0_0_counter__parameterized1\
     port map (
      clk => clk,
      enable_reg_0(0) => sec_cnt_en
    );
\scol_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => enable,
      D => \^q\(0),
      Q => \^q\(7),
      R => '0'
    );
\scol_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => enable,
      D => \^q\(7),
      Q => \^q\(6),
      R => '0'
    );
\scol_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => enable,
      D => \^q\(6),
      Q => \^q\(5),
      R => '0'
    );
\scol_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => enable,
      D => \^q\(5),
      Q => \^q\(4),
      R => '0'
    );
\scol_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => enable,
      D => \^q\(4),
      Q => \^q\(3),
      R => '0'
    );
\scol_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => enable,
      D => \^q\(3),
      Q => \^q\(2),
      R => '0'
    );
\scol_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => enable,
      D => \^q\(2),
      Q => \^q\(1),
      R => '0'
    );
\scol_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => enable,
      D => \^q\(1),
      Q => \^q\(0),
      R => '0'
    );
\srow[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(5),
      I4 => \^q\(4),
      O => \srow[0]_i_3_n_0\
    );
\srow[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEE8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \^q\(4),
      O => \srow[0]_i_4_n_0\
    );
\srow[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(1),
      O => \srow[7]_i_3_n_0\
    );
\srow_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => srow0_in(0),
      D => FSMinst_n_10,
      Q => row(7),
      R => '0'
    );
\srow_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => srow0_in(0),
      D => FSMinst_n_4,
      Q => row(6),
      R => '0'
    );
\srow_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => srow0_in(0),
      D => FSMinst_n_5,
      Q => row(5),
      R => '0'
    );
\srow_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => srow0_in(0),
      D => BCDinst2_n_8,
      Q => row(4),
      R => '0'
    );
\srow_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => srow0_in(0),
      D => BCDinst_n_13,
      Q => row(3),
      R => '0'
    );
\srow_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => srow0_in(0),
      D => FSMinst_n_6,
      Q => row(2),
      R => '0'
    );
\srow_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => srow0_in(0),
      D => FSMinst_n_7,
      Q => row(1),
      R => '0'
    );
\srow_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => srow0_in(0),
      D => FSMinst_n_8,
      Q => row(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    clk : in STD_LOGIC;
    row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    col : out STD_LOGIC_VECTOR ( 0 to 7 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_top_0_0 : entity is "top,Vivado 2023.2.1";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
begin
U0: entity work.design_1_top_0_0_top
     port map (
      Q(7) => col(0),
      Q(6) => col(1),
      Q(5) => col(2),
      Q(4) => col(3),
      Q(3) => col(4),
      Q(2) => col(5),
      Q(1) => col(6),
      Q(0) => col(7),
      clk => clk,
      row(7 downto 0) => row(7 downto 0)
    );
end STRUCTURE;
