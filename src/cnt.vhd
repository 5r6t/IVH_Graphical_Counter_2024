-------------------------------------------------------------
-- Project: IVH_Graphical_Counter_2024
-- Copyright (C) 2024 Jaroslav Mervart
--
-- This file is licensed under the GNU General Public License
-- version 3 or later. See the LICENSE file for details.
--------------------------------------------------------------
-- clk counter

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
    generic (TICKS : integer);
    Port ( clk : in STD_LOGIC;
           enable : out STD_LOGIC);
end counter;

architecture Behavioral of counter is

    signal cnt : integer range 0 to TICKS-1 := 0; -- integer, thats why no apostrophes
    
begin
    process (clk) is 
    begin
        if rising_edge(clk) then
            enable <= '0';
            if cnt = TICKS - 1 then
                enable <= '1';
                cnt <= 0;
            else
                cnt <= cnt + 1;
            end if;    
         end if;
        end process; 
end Behavioral;
