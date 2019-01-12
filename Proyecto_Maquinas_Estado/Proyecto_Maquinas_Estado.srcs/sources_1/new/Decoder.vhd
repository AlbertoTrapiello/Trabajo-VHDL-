----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.12.2018 19:18:26
-- Design Name: 
-- Module Name: Decoder - Behavioral
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

entity Decoder is
    Port ( code: in STD_LOGIC_VECTOR(0 TO 1);--1ªcomponente: led (salida correcta maquina estados 2ªcomponente: salida led incorrecto maquina estados
           led1 : out STD_LOGIC_VECTOR (6 DOWNTO 0);
           led2 : out STD_LOGIC_VECTOR (6 DOWNTO 0);
           led3 : out STD_LOGIC_VECTOR (6 DOWNTO 0);
           led4 : out STD_LOGIC_VECTOR (6 DOWNTO 0);
           led5 : out STD_LOGIC_VECTOR (6 DOWNTO 0);
           led: out STD_LOGIC_VECTOR (0 TO 1));
end Decoder;

architecture Dataflow of Decoder is
--SIGNAL led_1, led_2, led_3, led_4, led_5:STD_LOGIC_VECTOR (6 DOWNTO 0);
begin
WITH code SELECT
    led1 <= "0001000" WHEN "10",--R
    "0110000" WHEN "01",--E
    "1111111" WHEN OTHERS;--nada

WITH code SELECT
    led2 <= "1111001" WHEN "10",--I
    "0001000" WHEN "01",--R
    "1111111" WHEN OTHERS;--nada
    
WITH code SELECT
    led3 <= "0100000" WHEN "10",--G
    "0001000" WHEN "01",--R
    "1111111" WHEN OTHERS;--nada

WITH code SELECT
    led4 <= "1001000" WHEN "10",--H
    "0000001" WHEN "01",--O
    "1111111" WHEN OTHERS;

WITH code SELECT
    led5 <= "0111001" WHEN "10",--T
    "0001000" WHEN "01",--R
    "1111111" WHEN OTHERS;--nada
    
-- Parece que hay fallos de sintaxis haciendolo todo seguido, por eso se utilizan varios with select.
--       led_1 <= "0001000", led_2 <="1111001", led_3 <="0100000", led_4 <="1001000", led_5 <="0111001" WHEN "10",
--        "0110000", "0001000", "0001000", "0000001", "0001000" WHEN "01",
--        "1111111", "1111111", "1111111", "1111111", "1111111" WHEN OTHERS;
led <= code;        
end Dataflow;
