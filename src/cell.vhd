--------------------------------------------------------------
-- Project: IVH_Graphical_Counter_2024
-- Copyright (C) 2024 Jaroslav Mervart
--
-- This file is licensed under the GNU General Public License
-- version 3 or later. See the LICENSE file for details.
--------------------------------------------------------------
-- Cell behavior

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cell is
  Port ( 
    clk :               in std_logic;
    picture :           in std_logic;
    segments :          in std_logic; -- segment saying if the cell is on or off
    STATE_BCD :         in std_logic; -- currently displaying numbers from BCD counter
    STATE_picture :     in std_logic; -- currently displaying picture
    MODE_inverted :     in std_logic; -- invert cell state
    result        :     out std_logic -- output cell_state
  
  );
end cell;

architecture Behavioral of cell is
    signal temp : std_logic := '0';
begin

    process (segments, STATE_picture, MODE_inverted, picture)
    begin
        case MODE_inverted is
            when '0' => -- Mode 0, normal operation
                if STATE_picture = '1' then
                    temp <= picture; -- picture display state is active
                else
                    temp <= segments; -- utput segments
                end if;
                
            when '1' => -- Mode 1, inverted operation
                if STATE_picture = '1' then
                    temp <= not picture; -- icture display state is active
                else
                    temp <= not segments; -- inverted segments
                end if;
                
            when others => temp <= '0'; -- output unlit
        end case;
    end process;
    result <= not temp; -- I have no idea why the output is inverted
    
end Behavioral;
    
 
