----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2019 16:16:29
-- Design Name: 
-- Module Name: top_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is

component TOP is
    GENERIC(N:INTEGER:=5);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           mode : in STD_LOGIC;
           start : in STD_LOGIC;
           p,s: in STD_LOGIC_VECTOR(0 TO N-1);
           led_correcto: out STD_LOGIC;
           led_incorrecto: out STD_LOGIC;
           led: out STD_LOGIC_VECTOR(0 TO 9);
           segment : out STD_LOGIC_VECTOR (6 downto 0);
           digsel : out STD_LOGIC_VECTOR (7 downto 0));--El digsel(4) va al primero de la siguiente fila
end component;

CONSTANT BUS_N: INTEGER := 5;
CONSTANT k: time := 5 ns;

SIGNAL clk_in: STD_LOGIC;
SIGNAL reset_in: STD_LOGIC;
SIGNAL mode_in: STD_LOGIC;
SIGNAL start_in: STD_LOGIC;
SIGNAL p_in, s_in: STD_LOGIC_VECTOR(0 TO BUS_N-1);
SIGNAL led_correcto_out: STD_LOGIC;
SIGNAL led_incorrecto_out: STD_LOGIC;
SIGNAL led_out: STD_LOGIC_VECTOR(0 TO 9);
SIGNAL segment_out: STD_LOGIC_VECTOR (6 downto 0);
SIGNAL digsel_out: STD_LOGIC_VECTOR (7 downto 0);

begin

    uut_1: top PORT MAP(
        clk => clk_in,
        reset => reset_in,
        mode => mode_in,
        start => start_in,
        p => p_in,
        s => s_in,
        led_correcto => led_correcto_out,
        led_incorrecto => led_incorrecto_out,
        led => led_out,
        segment => segment_out,
        digsel => digsel_out);
        
    p_clk: PROCESS
    begin
        clk_in <= '0';
        WAIT FOR 2*k;
        clk_in <= '1';
        WAIT FOR 2*k;
    END PROCESS;
    
    p_reset: PROCESS
    begin
        reset_in <= '1';
        wait for k;
        reset_in <= '0';
        wait for 2*k;
        reset_in <= '1';
        WAIT FOR 9*k;
        reset_in <= '0';
        wait for 2*k;
        reset_in <= '1';
        wait;
    end process;
    
    p_mode: PROCESS
    begin
        mode_in <= '0';
        wait for 17*k;
        mode_in <= '1';
        wait;
    end process;
        
    p_start: PROCESS
    begin
        start_in <= '0';
        wait for 5*k;
        start_in <= '1';
        wait for 2*k;
        start_in <= '0';
        wait for 10*k;
        start_in <= '1';
        wait for 2*k;
        start_in <= '0';
        wait;
    end process;
    
    p_p: PROCESS
    begin
        p_in <=(OTHERS => '0');
        wait for 9*k;
        p_in <= (0 => '1', OTHERS => '0');
        wait;
    end process;
    
    p_s: PROCESS
    begin
        s_in <= (OTHERS => '0');
        wait for 21*k;
        s_in <= (0 => '1', OTHERS => '0');
        wait;
    end process;


end Behavioral;
