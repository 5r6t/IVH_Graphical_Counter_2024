-- testbench for ROM memory with BCD counter included
-- xmervaj00

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rom_tb is
end rom_tb;

architecture Behavioral of rom_tb is

    component rom is
        Port (
        address: in std_logic_vector(3 downto 0);
        data: out std_logic_vector(6 downto 0)
        );
    end component;
    
    component BCD_counter is
        Port( CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            EN    : in  STD_LOGIC;
            Q     : out STD_LOGIC_VECTOR(3 downto 0);
            EN_OUT: out STD_LOGIC
            );
    end component;
    
    
    signal clk : std_logic := '0';
    signal en1 : std_logic := '0'; -- Enable prvni cifry
    signal address_in : std_logic_vector(3 downto 0) := "0000";
    signal data_out : std_logic_vector(6 downto 0) := "0000000";
    
begin
    UUT1: BCD_counter
    port map (
        CLK => clk,
        RESET => '0', 
        EN => en1, 
        Q => address_in, 
        EN_OUT => open 
    );
    
    
    UUT2: rom port map (
        address => address_in,
        data => data_out
        );
        
     process 
    begin
        report "BEGINNING ROM TEST";
        report "------------------";
        wait for 20ns;
        assert (data_out = "1011111" and address_in = "0000") report "INCORRECT segments for number 0!";
        wait for 50ns;
        assert (data_out = "0000101" and address_in = "0001") report "INCORRECT segments for number 1!";
        wait for 50ns;
        assert (data_out = "1110110" and address_in = "0010") report "INCORRECT segments for number 2!";
        wait for 50ns;
        assert (data_out = "1110101" and address_in = "0011") report "INCORRECT segments for number 3!";
        wait for 50ns;
        assert (data_out = "0101001" and address_in = "0100") report "INCORRECT segments for number 4!";
        wait for 50ns;
        assert (data_out = "1111001" and address_in = "0101") report "INCORRECT segments for number 5!";
        wait for 50ns;
        assert (data_out = "1111011" and address_in = "0110") report "INCORRECT segments for number 6!";
        wait for 50ns;
        assert (data_out = "1000101" and address_in = "0111") report "INCORRECT segments for number 7!";
        wait for 50ns;
        assert (data_out = "1111111" and address_in = "1000") report "INCORRECT segments for number 8!";
        wait for 50ns;
        assert (data_out = "1101101" and address_in = "1001") report "INCORRECT segments for number 9!";
        report "------------------";
        report "ROM TEST ENDED";         
        wait;
    end process;
    
    process 
    begin
        en1 <= '0';
        wait for 40 ns; -- 1 CLK period
        en1 <= '1';
        wait for 10 ns; -- 5 CLK period
    end process;
    
    clk <= not clk after 5 ns;

end Behavioral;
