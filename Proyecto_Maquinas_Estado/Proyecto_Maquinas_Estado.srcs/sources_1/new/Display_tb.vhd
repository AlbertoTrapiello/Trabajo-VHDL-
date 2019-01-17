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
Component Display is
    Port ( 
           r_or_e: in STD_LOGIC_VECTOR (1 downto 0);--Variable que determina si es error o right
           clk: in STD_LOGIC;
           segment : out STD_LOGIC_VECTOR (6 downto 0);
           digsel : out STD_LOGIC_VECTOR (3 downto 0));
           
end Component;

component div_frec is
    Generic (N: positive:= 10); 
    Port ( clk : in STD_LOGIC;
           CE_N : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end component;

--Tipo de dato preparado para comprobar el correcto funcionamiento del decoder
TYPE secuence is record
    digsel : std_logic_vector(3 DOWNTO 0);
    led : std_logic_vector(6 DOWNTO 0);
END RECORD;
--Vector de datos secuence
TYPE secuence_vector IS ARRAY (natural RANGE <>) OF secuence;
--Vector de seucuence que contiene las letras de RIGHT
Constant right: secuence_vector := (
    ("0000", "0001000"),--R
    ("0001", "1111001"),--I
    ("0010", "0100000"),--G
    ("0011", "1001000"),--H
    ("0100", "0111001") --T  
);
--Vector de seucuence que contiene las letras de ERROR
Constant error: secuence_vector := (
    ("0101", "0110000"),--E
    ("0110", "0001000"),--R
    ("0111", "0001000"),--R
    ("1000", "0000001"),--O
    ("1001", "0001000") --R      
);
Constant nada: secuence := ("----", "1111111");
  
--Entradas
signal r_or_e: STD_LOGIC_VECTOR (1 downto 0);
signal clk: STD_LOGIC;
--Salidas
signal digsel : STD_LOGIC_VECTOR (3 downto 0); -- señal que controla los displays que se encienden en cada momento
signal segment : STD_LOGIC_VECTOR (6 downto 0); -- señal auxiliar que permite conectar el segmento al decoder
signal clk_div: STD_LOGIC;

--Simulation's clock time
constant CLK_PERIOD: time := 10 ns;
constant DELAY: time := 0.1 * CLK_PERIOD;

begin
--Instancia de  UUT
uut: Display
port map
(
    r_or_e => r_or_e,
    clk => clk,
    digsel => digsel,
    segment => segment
);
--clk divider
-- Divisor de frecuencia Instance
Div_freq: div_frec
    port map 
    (
        clk => clk,
        CE_N => '0', --Por el momento no se muy bien qué hacer con esto
        clk_div => clk_div
    );
--testbench
clock: process
begin
    clk <= not clk;
    wait for CLK_PERIOD;
end process;

test: process
    begin
        if rising_edge(clk_div) then
        for i in right'range loop
                    r_or_e <= "00";-- Nada
                    wait for DELAY;
                    ASSERT segment = nada.segment
                        report "[FAILED]: Segment should be 1111111."
                    severity failure;
                    r_or_e <= "01";-- Right
                    
                    r_or_e <= "10";-- Error
                    r_or_e <= "11";-- Nada
                end loop; 
        end if;                      
    end process;    

end Behavioral;
