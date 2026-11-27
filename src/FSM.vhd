--------------------------------------------------------------
-- Project: IVH_Graphical_Counter_2024
-- Copyright (C) 2024 Jaroslav Mervart
--
-- This file is licensed under the GNU General Public License
-- version 3 or later. See the LICENSE file for details.
--------------------------------------------------------------
-- Graphical counter FSM

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM is
    Port (
        CLK            : in std_logic;
        RST            : in std_logic; -- reset to BCD state
        Q1in           : in std_logic_vector (3 downto 0);
        Q2in           : in std_logic_vector (3 downto 0);
        PICTURE_en     : out std_logic;
        BCD_en         : out std_logic;
        ANIMATION_en   : out std_logic;
        INV_en         : out std_logic
    );
end FSM;

architecture Behavioral of FSM is

    signal next_num : std_logic :='0';
    type state is (BCD, PICTURE, ANIMATION); 
    signal actual : state := BCD; -- default state
    signal invreg : std_logic := '0';
    signal picreg : std_logic := '0';
    signal anireg : std_logic := '0';
    signal bcdreg : std_logic := '1';
begin
    process (CLK, RST) is
    begin
        if RST = '1' then 
            actual <= BCD;
            invreg <= '0';
            picreg <= '0';
            anireg <= '0';
            bcdreg <= '1';
        elsif rising_edge(clk) then

            if actual = BCD then            
                if Q1in = "0001" and Q2in = "0010" then -- when 21
                    invreg <= '1';
                elsif Q1in = "0001" and Q2in = "0011" then -- when 31
                    actual <= PICTURE;
                    picreg <= '1';  -- picture state
                    invreg <= '0';
                    bcdreg <= '0';
                end if;
            elsif actual = PICTURE then
                 if Q1in = "0101" and Q2in = "0011"then --37
                    actual <= ANIMATION;
                    picreg <= '0'; -- picture off
                    anireg <= '1';
                 end if;
            elsif actual = ANIMATION then -- animation
                if Q1in = "0111" and Q2in = "0100" then -- 47
                    actual <= BCD;
                    bcdreg <= '1';
                    anireg <= '0';
                 end if;
            end if;
        end if;    
    end process;
    BCD_en <= bcdreg;
    INV_en <= invreg;
    PICTURE_en <= picreg;
    ANIMATION_en <= anireg;
end Behavioral;
