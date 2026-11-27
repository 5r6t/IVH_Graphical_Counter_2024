-------------------------------------------------------------
-- Project: IVH_Graphical_Counter_2024
-- Copyright (C) 2024 Jaroslav Mervart
--
-- This file is licensed under the GNU General Public License
-- version 3 or later. See the LICENSE file for details.
-------------------------------------------------------------
-- ROM

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ROM is
  Port (
    address: in std_logic_vector(3 downto 0);
    data: out std_logic_vector(6 downto 0)
  );
end ROM;

architecture Behavioral of ROM is
    type whichseg_array is array (0 to 9) of std_logic_vector(6 downto 0);
    constant rom : whichseg_array := (
                "1011111", -- segmenty pre 0
                "0000101", -- segmenty pre 1
                "1110110", -- segmenty pre 2
                "1110101", -- segmenty pre 3
                "0101001", -- segmenty pre 4
                "1111001", -- segmenty pre 5
                "1111011", -- segmenty pre 6
                "1000101", -- segmenty pre 7
                "1111111", -- segmenty pre 8
                "1101101"  -- segmenty pre 9
    );
begin
    data <= rom(conv_integer(address));
end Behavioral;
