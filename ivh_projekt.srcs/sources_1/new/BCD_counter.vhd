----------------------------------------------------------------------------------
-- xmervaj00
-- BCD citac
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD_counter is
    Port ( CLK   : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN    : in  STD_LOGIC;
		   Q     : out STD_LOGIC_VECTOR(3 downto 0);
		   EN_OUT: out STD_LOGIC
		   );
end BCD_counter;

architecture Behavioral of BCD_counter is
    signal cnt : std_logic_vector (3 downto 0) := "0000";
    signal eq : std_logic  := '0'; 
    signal temp : std_logic := '0'; -- for EN_OUT

begin
    citac: process (CLK, RESET)
    begin
 
        if rising_edge(CLK) then
            if RESET = '1' then
                cnt <= "0000";
                temp <= '0';  -- disable EN_OUT 
            elsif EN = '1' then
                cnt <= cnt + 1;
                if eq = '1' then
                    cnt <= "0000";
                    temp <= '1';  -- EN_OUT active
                else
                    temp <= '0';  -- EN_OUT disabled
                end if;
            else
                temp <= '0';  --EN_OUT disabled
            end if;
        end if;
        
    end process;
    
    Q <= cnt;
    eq <= '1'  when cnt = "1001"    
        else '0';
    EN_OUT <= temp;
    
end Behavioral;
