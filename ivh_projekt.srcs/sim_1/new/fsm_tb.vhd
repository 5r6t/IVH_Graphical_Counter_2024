----------------------------------------------------------------------------------
-- fsm testbench
-- xmervaj00
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_tb is
end fsm_tb;

architecture Behavioral of fsm_tb is
    component FSM is
      Port (
           CLK 		       : in std_logic;
           RST 		       : in std_logic; -- reset to IDLE state
           PICTURE_en         : out std_logic;
           ANIMATION_en       : out std_logic;
           BCD_en             : out std_logic;
           INV_en             : out std_logic;
           Q1in            : in std_logic_vector (3 downto 0);
           Q2in            : in std_logic_vector (3 downto 0)
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
    signal Q1 : std_logic_vector(3 downto 0) := "0000";
    signal Q2 : std_logic_vector(3 downto 0) := "0000";
    signal PICTURE, ANIMATION, BCDREADER, INVERSION : std_logic := '0';
    signal overflow : std_logic := '0';
begin


    UUT1: BCD_counter
    port map (
        CLK => clk,
        RESET => '0', 
        EN => en1, 
        Q => Q1, 
        EN_OUT => overflow 
    );
    UUT2: BCD_counter
    port map (
        CLK => clk,
        RESET => '0', 
        EN => overflow, 
        Q => Q2, 
        EN_OUT => open 
    );
    UUT3 : FSM Port map (
           CLK => clk,       --: in std_logic;
           RST => '0',		       --: in std_logic; -- reset to IDLE state
           PICTURE_en => PICTURE,        --: out std_logic;
           ANIMATION_en => ANIMATION,      --: out std_logic;
           BCD_en => BCDREADER,      
           INV_en => INVERSION,       -- : out std_logic;
           Q1in => Q1,            --: in std_logic_vector (3 downto 0);
           Q2in => Q2    --: in std_logic_vector (3 downto 0);  
      );
    process 
    begin
        report "BEGINNING ROM TEST";
        report "------------------";
        wait for 1075ns;
        assert (BCDREADER = '1' and INVERSION = '1' and Q1 = "0001" and Q2 = "0010") report "INCORRECT when 21!";
        wait for 500ns;
        assert (PICTURE = '1' and Q1 = "0001" and Q2 = "0011") report "INCORRECT when 31!";
        wait for 296ns;
        assert (ANIMATION = '1' and Q1 = "0111" and Q2 = "0011" ) report "INCORRECT when 37!";
        wait for 496ns;
        assert (BCDREADER = '1' and Q1 = "0111" and Q2 = "0100") report "INCORRECT when 47!";
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
