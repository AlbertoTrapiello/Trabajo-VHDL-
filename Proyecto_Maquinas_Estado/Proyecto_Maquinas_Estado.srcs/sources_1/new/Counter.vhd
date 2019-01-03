----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2019 13:15:49
-- Design Name: 
-- Module Name: Counter - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
    GENERIC(N:INTEGER:=5);
    Port ( reset, mode : in STD_LOGIC;
    vector: in STD_LOGIC_VECTOR (0 TO N-1);
    count: out INTEGER range 0 TO N
    );
end Counter;

architecture Behavioral of Counter is
SIGNAL count_std: STD_LOGIC_VECTOR (0 TO 2);-- Salida en binario, que posteriormente se convertirá a unsigned (count_uns).
SIGNAL count_uns: UNSIGNED (count_std' range);--Salida en unsigned que posteriormente se convertirá a integer (count):
begin
process(vector, reset)
VARIABLE suma, suma_tot: STD_LOGIC_VECTOR (0 TO 2):="000";
begin
    IF (reset='1') THEN
        count_std<="000";
    ELSIF(mode='0' AND suma_tot<="101") THEN--Modo pulsadores y suma menor que 5.
        --suma := vector(0)+vector(1)+vector(2)+vector(3)+vector(4);
        
    ELSIF(mode='1' AND suma_tot<="101") THEN--Modo SWITCHES y suma menor que 5.    
    
    END IF;    
end process;
count_uns <= unsigned(count_std);
count <= to_integer(count_uns);
end Behavioral;
