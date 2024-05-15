-- xmervaj00
-- main entity
--- currently requires BCD_counter, cell, FSM, ROM, counter(clk)
----------------------------------------------------------------------------------
---- LIBRARIES ----
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use  work.matrix_pack.ALL;

entity top is
    Port ( clk : in STD_LOGIC;
           row : out STD_LOGIC_VECTOR (7 downto 0);
           col : out STD_LOGIC_VECTOR (0 to 7)
          );
end top;

architecture Behavioral of top is
    signal scol : std_logic_vector(0 to 7) := "00000001";     -- stlpce
    signal srow : std_logic_vector(0 to 7) := "00000000";     -- riadky
----------------------------------------------------------------------------------------------------------------------  
------------------------------- REFRESH RATE AND TIMERS -------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------  
    constant maxcnt : integer := 50_000 - 1; -- real, works for now
    constant delay : integer := 25_000_000 - 1; -- 1s
----------------------------------------------------------------------------------------------------------------------  
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
    ---- CLK_COUNTER ----
    component counter is
        generic (ticks : integer);
        Port ( 
            clk : in STD_LOGIC;
            enable : out STD_LOGIC
        );    
    end component;
    ---- BCD_COUNTER ----
    component BCD_counter is
        Port ( CLK   : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN    : in  STD_LOGIC;
		   Q     : out STD_LOGIC_VECTOR(3 downto 0);
		   EN_OUT: out STD_LOGIC
		   );
    end component;
    ---- ROM ----
    component rom
        Port(
            address : IN  std_logic_vector(3 downto 0); -- input -- Q1 or Q2
            data : OUT  std_logic_vector(6 downto 0)    -- output
        );
    end component;
    ---- CELL ----
    component cell
        Port ( 
            clk :               in std_logic;
            picture  :          in std_logic; -- 
            segments :          in std_logic; -- segment selected
            STATE_BCD :         in std_logic; -- currently displaying numbers from BCD counter
            STATE_picture :     in std_logic; -- currently displaying picture
            MODE_inverted :     in std_logic; -- invert cell state
            result        :     out std_logic -- output cell_state
          );
    end component;
----------------------------------------------------------------------------------------------------------------------  
    signal en_clk : std_logic := '0';  -- enable signal - used with clk counter
    -- ROM OUTPUT
    signal seg_out1 :           std_logic_vector(6 downto 0) := "0000000";
    signal seg_out2 :           std_logic_vector(6 downto 0) := "0000000";
    signal segments_managed :   std_logic_vector(0 to 63) := (others => '0');
    signal display_input :      std_logic_vector(0 to 63) := (others => '0'); -- send to display module
    signal picture_in :         std_logic_vector(0 to 63) := "0000101000011101001010100100100100101010000111000010101001001001"; 
    -- FSM 
    signal INVERSION :  std_logic := '0';
    signal ANIMATION :  std_logic := '0';
    signal PICTURE :    std_logic := '0';
    signal BCDREADER :  std_logic := '1';
    signal animation_en : std_logic := '0';
     -- BCD_COUNTER_REGISTERS
    signal Q1:          STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal Q2:          STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal BCD_enable : std_logic := '0'; -- enables bcd counter (first counter), second is enabled by the first
    signal BCD_sec_en : std_logic := '0'; -- register for enabling the second counter
    signal sec_cnt_en : std_logic := '0';
    
---------------------------------------------------------------------------------------------------------------------  
begin
    FSMinst : FSM Port map (
           CLK => clk,       --: in std_logic;
           RST => '0',		       --: in std_logic; -- reset to IDLE state
           PICTURE_en => PICTURE,        --: out std_logic;
           ANIMATION_en => ANIMATION,      --: out std_logic;
           BCD_en => BCDREADER,      
           INV_en => INVERSION,       -- : out std_logic;
           Q1in => Q1,            --: in std_logic_vector (3 downto 0);
           Q2in => Q2    --: in std_logic_vector (3 downto 0);  
      );
      
    cntinst : counter generic map ( TICKS => maxcnt ) port map ( clk => clk, enable => en_clk );
    cntinst2 : counter generic map ( TICKS => delay ) port map ( clk => clk, enable => sec_cnt_en );
    BCDinst : BCD_counter
        port map (
        CLK => clk,
        RESET => '0', 
        EN => sec_cnt_en, --BCD enable 
        Q => Q1, 
        EN_OUT => BCD_sec_en -- out
    );
    BCDinst2: BCD_counter
        port map (
            CLK => clk,
            RESET => '0', 
            EN => BCD_sec_en, -- in
            Q => Q2, 
            EN_OUT => open 
    );
    ROMinst:  ROM port map ( address => Q1, data => seg_out1 );
    ROMinst2: ROM port map ( address => Q2, data => seg_out2 );   
    
    CELLx64: for i in 0 to 63 generate
        begin
            cellinst : cell
                port map (
                clk => clk,
                picture => picture_in(i),
                segments => segments_managed(i),
                STATE_BCD =>BCDREADER,
                STATE_picture => PICTURE,
                MODE_inverted => INVERSION,
                result => display_input(i)
                );
        end generate;
    -------------------------------------------------------------
    -- Mapping segments to cells for ROM1 (seg_out1) 13cells --seg_out (6 downto 0) 6 is actually first segment, "bit" confusing
    -------------------------------------------------------------
     segments_managed(9) <= '1'  when  seg_out2(3) = '1' or seg_out2(6) = '1' else '0'; -- x3
     segments_managed(10) <= '1' when  seg_out2(6) = '1' else '0';
     segments_managed(11) <= '1' when  seg_out2(2) = '1' or seg_out2(6) = '1' else '0'; -- x4
     segments_managed(17) <= '1' when  seg_out2(3) = '1' else '0'; 
     segments_managed(19) <= '1' when  seg_out2(2) = '1' else '0'; 
     segments_managed(25) <= '1' when  seg_out2(1) = '1' or seg_out2(5) = '1' or seg_out2(3) = '1' else '0'; -- x2
     segments_managed(26) <= '1' when  seg_out2(5) = '1' else '0'; 
     segments_managed(27) <= '1' when  seg_out2(0) = '1' or seg_out2(5) = '1' or seg_out2(2) = '1' else '0'; -- x1
     segments_managed(33) <= '1' when  seg_out2(1) = '1' else '0';
     segments_managed(35) <= '1' when  seg_out2(0) = '1' else '0'; 
     segments_managed(41) <= '1' when  seg_out2(1) = '1' or seg_out2(4) = '1' else '0'; -- x5
     segments_managed(42) <= '1' when  seg_out2(4) = '1' else '0'; 
     segments_managed(43) <= '1' when  seg_out2(0) = '1' or seg_out2(4) = '1' else '0'; -- x6
    -------------------------------------------------------------
     -- Mapping segments to cells for ROM2 (seg_out2) 13cells
    -------------------------------------------------------------
     segments_managed(13) <= '1' when  seg_out1(3) = '1' or seg_out1(6) = '1' else '0'; -- x3
     segments_managed(14) <= '1' when  seg_out1(6) = '1' else '0'; 
     segments_managed(15) <= '1' when  seg_out1(2) = '1' or seg_out1(6) = '1' else '0'; -- x4
     segments_managed(21) <= '1' when  seg_out1(3) = '1' else '0'; 
     segments_managed(23) <= '1' when  seg_out1(2) = '1' else '0'; 
     segments_managed(29) <= '1' when  seg_out1(1) = '1' or seg_out1(5) = '1' or seg_out1(3) = '1' else '0'; -- x2
     segments_managed(30) <= '1' when  seg_out1(5) = '1' else '0'; 
     segments_managed(31) <= '1' when  seg_out1(0) = '1' or seg_out1(5) = '1' or seg_out1(2) = '1' else '0'; -- x1
     segments_managed(37) <= '1' when  seg_out1(1) = '1' else '0'; 
     segments_managed(39) <= '1' when  seg_out1(0) = '1' else '0'; 
     segments_managed(45) <= '1' when  seg_out1(1) = '1' or seg_out1(4) = '1' else '0'; -- x5
     segments_managed(46) <= '1' when  seg_out1(4) = '1' else '0'; 
     segments_managed(47) <= '1' when  seg_out1(0) = '1' or seg_out1(4) = '1' else '0'; -- x6
     -------------------------------------------------------------
    process (clk) is
    begin
        if rising_edge(clk) then
            if en_clk = '1' and ANIMATION = '0' then
                scol <= scol(7) & scol(0 to 6); -- scol je register
                case scol is
                    when "10000000" =>
                        srow <= GETROW(display_input, 1, 8);
                    when "01000000" =>
                        srow <= GETROW(display_input, 2, 8);
                    when "00100000" =>
                        srow <= GETROW(display_input, 3, 8);
                    when "00010000" =>
                        srow <= GETROW(display_input, 4, 8);
                    when "00001000" =>
                        srow <= GETROW(display_input, 5, 8);
                    when "00000100" =>
                        srow <= GETROW(display_input, 6, 8);
                    when "00000010" => 
                        srow <= GETROW(display_input, 7, 8);
                    when "00000001" =>
                        srow <= GETROW(display_input, 0, 8);
                    when others =>
                        null;
                end case;
            elsif en_clk = '1' and ANIMATION = '1' then
                scol <= scol(7) & scol(0 to 6);
                srow <= '1' & srow(0 to 6);
            end if;
            
        end if;
    end process;
    
    row <= srow;
    col <= scol;    --x2
    
end Behavioral;