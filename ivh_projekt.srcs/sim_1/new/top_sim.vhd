
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_sim is
--  Port ( );
end top_sim;

architecture Behavioral of top_sim is
    component top is
    Port ( clk : in STD_LOGIC;
           row : out STD_LOGIC_VECTOR (0 to 7);
           col : out STD_LOGIC_VECTOR (0 to 7));
    end component;
    
    signal clk : std_logic := '0';
    signal row, col : std_logic_vector (0 to 7);
    
begin
   clk <= not clk after 2ns; --25mhz 
   --clk <= not clk after 200ns;
    
    UUT : top port map (clk => clk, row => row, col => col);

end Behavioral;
