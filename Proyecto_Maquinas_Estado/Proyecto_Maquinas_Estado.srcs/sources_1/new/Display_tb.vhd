----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2019 20:10:18
-- Design Name: 
-- Module Name: Display_tb - Behavioral
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

entity Display_tb is
--  Port ( );
end Display_tb;

architecture Behavioral of Display_tb is

--Declaración del UUT
component Display is
    Port ( 
           r_or_e: in STD_LOGIC_VECTOR (1 downto 0);--Variable que determina si es error o right
           digctrl : out STD_LOGIC_VECTOR (3 downto 0);
           segment : out STD_LOGIC_VECTOR (6 downto 0));
end component;
--Tipo de dato preparado para comprobar el correcto funcionamiento del decoder
TYPE secuence is record
    code : std_logic_vector(3 DOWNTO 0);
    led : std_logic_vector(6 DOWNTO 0);
END RECORD;
--Vector de datos secuence
TYPE secuence_vector IS ARRAY (natural RANGE <>) OF secuence;

--Entradas
signal r_or_e: STD_LOGIC_VECTOR (1 downto 0);
--Salidas
signal digctrl : STD_LOGIC_VECTOR (3 downto 0);
signal segment : STD_LOGIC_VECTOR (6 downto 0);

--Simulation's clock time
constant CLK_PERIOD: time := 10 ns; 

begin
--Instancia de  UUT
uut: Display
port map
(
    r_or_e => r_or_e,
    digctrl => digctrl,
    segment => segment
);

test: process
    begin
        r_or_e <= "00";
        wait for CLK_PERIOD;
        assert segment = "1111111";
            report "[FAILED]: Wrong letter'."
            severity failure;
        r_or_e <= "01";
        wait for CLK_PERIOD;
        assert segment = "0111001";--Sólo la última letra
            report "[FAILED]: Wrong letter'."
            severity failure;        
        r_or_e <= "10";
        wait for CLK_PERIOD;
        assert segment = "0001000";--Sólo la última letra
            report "[FAILED]: Wrong letter'."
            severity failure;        
        r_or_e <= "11";
        wait for CLK_PERIOD;
        assert segment = "1111111";  
            report "[FAILED]: Wrong letter'."
            severity failure;                      
    end process;    

end Behavioral;
