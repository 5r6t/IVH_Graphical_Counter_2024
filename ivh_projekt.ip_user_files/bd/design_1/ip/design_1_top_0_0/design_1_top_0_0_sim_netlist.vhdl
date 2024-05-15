-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
-- Date        : Wed May  8 12:00:33 2024
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
entity design_1_top_0_0_top is
  port (
    col : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal cntone : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \cntone0_carry__0_n_0\ : STD_LOGIC;
  signal \cntone0_carry__0_n_1\ : STD_LOGIC;
  signal \cntone0_carry__0_n_2\ : STD_LOGIC;
  signal \cntone0_carry__0_n_3\ : STD_LOGIC;
  signal \cntone0_carry__1_n_0\ : STD_LOGIC;
  signal \cntone0_carry__1_n_1\ : STD_LOGIC;
  signal \cntone0_carry__1_n_2\ : STD_LOGIC;
  signal \cntone0_carry__1_n_3\ : STD_LOGIC;
  signal \cntone0_carry__2_n_0\ : STD_LOGIC;
  signal \cntone0_carry__2_n_1\ : STD_LOGIC;
  signal \cntone0_carry__2_n_2\ : STD_LOGIC;
  signal \cntone0_carry__2_n_3\ : STD_LOGIC;
  signal \cntone0_carry__3_n_0\ : STD_LOGIC;
  signal \cntone0_carry__3_n_1\ : STD_LOGIC;
  signal \cntone0_carry__3_n_2\ : STD_LOGIC;
  signal \cntone0_carry__3_n_3\ : STD_LOGIC;
  signal \cntone0_carry__4_n_2\ : STD_LOGIC;
  signal \cntone0_carry__4_n_3\ : STD_LOGIC;
  signal cntone0_carry_n_0 : STD_LOGIC;
  signal cntone0_carry_n_1 : STD_LOGIC;
  signal cntone0_carry_n_2 : STD_LOGIC;
  signal cntone0_carry_n_3 : STD_LOGIC;
  signal cntone_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^col\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \scol[7]_i_1_n_0\ : STD_LOGIC;
  signal \scol[7]_i_3_n_0\ : STD_LOGIC;
  signal \scol[7]_i_4_n_0\ : STD_LOGIC;
  signal \scol[7]_i_5_n_0\ : STD_LOGIC;
  signal \scol[7]_i_6_n_0\ : STD_LOGIC;
  signal \scol[7]_i_7_n_0\ : STD_LOGIC;
  signal \scol[7]_i_8_n_0\ : STD_LOGIC;
  signal \NLW_cntone0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cntone0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cntone0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cntone0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cntone0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cntone0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cntone0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cntone0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cntone[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \scol[7]_i_8\ : label is "soft_lutpair0";
begin
  col(7 downto 0) <= \^col\(7 downto 0);
cntone0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cntone0_carry_n_0,
      CO(2) => cntone0_carry_n_1,
      CO(1) => cntone0_carry_n_2,
      CO(0) => cntone0_carry_n_3,
      CYINIT => cntone(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cntone(4 downto 1)
    );
\cntone0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cntone0_carry_n_0,
      CO(3) => \cntone0_carry__0_n_0\,
      CO(2) => \cntone0_carry__0_n_1\,
      CO(1) => \cntone0_carry__0_n_2\,
      CO(0) => \cntone0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cntone(8 downto 5)
    );
\cntone0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntone0_carry__0_n_0\,
      CO(3) => \cntone0_carry__1_n_0\,
      CO(2) => \cntone0_carry__1_n_1\,
      CO(1) => \cntone0_carry__1_n_2\,
      CO(0) => \cntone0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cntone(12 downto 9)
    );
\cntone0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntone0_carry__1_n_0\,
      CO(3) => \cntone0_carry__2_n_0\,
      CO(2) => \cntone0_carry__2_n_1\,
      CO(1) => \cntone0_carry__2_n_2\,
      CO(0) => \cntone0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => cntone(16 downto 13)
    );
\cntone0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntone0_carry__2_n_0\,
      CO(3) => \cntone0_carry__3_n_0\,
      CO(2) => \cntone0_carry__3_n_1\,
      CO(1) => \cntone0_carry__3_n_2\,
      CO(0) => \cntone0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => cntone(20 downto 17)
    );
\cntone0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntone0_carry__3_n_0\,
      CO(3 downto 2) => \NLW_cntone0_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cntone0_carry__4_n_2\,
      CO(0) => \cntone0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cntone0_carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(23 downto 21),
      S(3) => '0',
      S(2 downto 0) => cntone(23 downto 21)
    );
\cntone[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntone(0),
      O => cntone_0(0)
    );
\cntone_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cntone_0(0),
      Q => cntone(0),
      R => '0'
    );
\cntone_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => cntone(10),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => cntone(11),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => cntone(12),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => cntone(13),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => cntone(14),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(15),
      Q => cntone(15),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(16),
      Q => cntone(16),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(17),
      Q => cntone(17),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(18),
      Q => cntone(18),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(19),
      Q => cntone(19),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => cntone(1),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(20),
      Q => cntone(20),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(21),
      Q => cntone(21),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(22),
      Q => cntone(22),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(23),
      Q => cntone(23),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => cntone(2),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => cntone(3),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => cntone(4),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => cntone(5),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => cntone(6),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => cntone(7),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => cntone(8),
      R => \scol[7]_i_1_n_0\
    );
\cntone_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => cntone(9),
      R => \scol[7]_i_1_n_0\
    );
\scol[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^col\(0),
      O => p_0_in(0)
    );
\scol[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^col\(1),
      O => p_0_in(1)
    );
\scol[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^col\(2),
      O => p_0_in(2)
    );
\scol[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^col\(3),
      O => p_0_in(3)
    );
\scol[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^col\(4),
      O => p_0_in(4)
    );
\scol[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^col\(5),
      O => p_0_in(5)
    );
\scol[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^col\(6),
      O => p_0_in(6)
    );
\scol[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \scol[7]_i_3_n_0\,
      I1 => \scol[7]_i_4_n_0\,
      I2 => \scol[7]_i_5_n_0\,
      I3 => \scol[7]_i_6_n_0\,
      I4 => \scol[7]_i_7_n_0\,
      I5 => \scol[7]_i_8_n_0\,
      O => \scol[7]_i_1_n_0\
    );
\scol[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^col\(7),
      O => p_0_in(7)
    );
\scol[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => cntone(17),
      I1 => cntone(16),
      I2 => cntone(19),
      I3 => cntone(18),
      O => \scol[7]_i_3_n_0\
    );
\scol[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => cntone(21),
      I1 => cntone(20),
      I2 => cntone(23),
      I3 => cntone(22),
      O => \scol[7]_i_4_n_0\
    );
\scol[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => cntone(9),
      I1 => cntone(8),
      I2 => cntone(11),
      I3 => cntone(10),
      O => \scol[7]_i_5_n_0\
    );
\scol[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => cntone(13),
      I1 => cntone(12),
      I2 => cntone(15),
      I3 => cntone(14),
      O => \scol[7]_i_6_n_0\
    );
\scol[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => cntone(4),
      I1 => cntone(5),
      I2 => cntone(7),
      I3 => cntone(6),
      O => \scol[7]_i_7_n_0\
    );
\scol[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cntone(1),
      I1 => cntone(0),
      I2 => cntone(3),
      I3 => cntone(2),
      O => \scol[7]_i_8_n_0\
    );
\scol_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \^col\(0),
      R => '0'
    );
\scol_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \^col\(1),
      R => '0'
    );
\scol_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \^col\(2),
      R => '0'
    );
\scol_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \^col\(3),
      R => '0'
    );
\scol_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \^col\(4),
      R => '0'
    );
\scol_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \^col\(5),
      R => '0'
    );
\scol_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \^col\(6),
      R => '0'
    );
\scol_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \^col\(7),
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
    col : out STD_LOGIC_VECTOR ( 7 downto 0 )
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
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
begin
  row(7) <= \<const1>\;
  row(6) <= \<const1>\;
  row(5) <= \<const1>\;
  row(4) <= \<const1>\;
  row(3) <= \<const1>\;
  row(2) <= \<const1>\;
  row(1) <= \<const1>\;
  row(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_top_0_0_top
     port map (
      clk => clk,
      col(7 downto 0) => col(7 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
