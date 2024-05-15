--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
--Date        : Wed May 15 03:04:48 2024
--Host        : d02-0204a running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    col : out STD_LOGIC_VECTOR ( 0 to 7 );
    row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sysclk : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    col : out STD_LOGIC_VECTOR ( 0 to 7 );
    sysclk : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      col(0 to 7) => col(0 to 7),
      row(7 downto 0) => row(7 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
