----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2019 18:06:30
-- Design Name: 
-- Module Name: Display - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Display is
    Port ( 
           r_or_e: in STD_LOGIC_VECTOR (2 downto 0);--Variable que determina si es error o right
           digctrl : out STD_LOGIC_VECTOR (3 downto 0);
           segment : out STD_LOGIC_VECTOR (6 downto 0));
end Display;

architecture Behavioral of Display is

component Decoder is
    Port ( code: in STD_LOGIC_VECTOR(0 TO 3);--1ªcomponente: led (salida correcta maquina estados 2ªcomponente: salida led incorrecto maquina estados
           led : out STD_LOGIC_VECTOR (6 DOWNTO 0));
end component;

--Tipo de dato preparado para comprobar el correcto funcionamiento del decoder
TYPE secuence is record
    code : std_logic_vector(3 DOWNTO 0);
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

Constant mux_time: time := 20 ns;--Periodo para cambiar de display de modo que el ojo no lo perciba 
signal code : STD_LOGIC_VECTOR (3 downto 0);--señal que gestiona la letra que se ha de mostrar en cada instante en los displays

begin

--Decoder Instance
Decod: Decoder 
    port map 
    (
        code => code,
        led => segment   
    );
--Display secuence

display: process
    begin
        digctrl <= (others => '1');--se apagan todos los digctrl antes de empezar
        if r_or_e = "10" then
            for i in right'range loop
                if i /= 0 then
                    digctrl(i-1) <= '1';
                end if;
                code <= right(i).code; --se le asigna en cada iteración un valor del code correpsondiente a una letra
                digctrl(i) <= '0'; --se activa el
                --¡¡¡EL ASSERT NO DEBE QUEDARSE AQUÍ, DEBERÍA HACERSE EN EL TB, PERO AL SER ESTAS UNAS SEÑALES INTERNAS NO SE PODRÍA!!!
                assert segment = right(i).segment;
                    report "[FAILED]: Wrong letter'."
                    severity failure;
                wait for mux_time;--Espera un timepo antes de cambiar
            end loop;
        end if;
        if r_or_e = "01" then
            for i in error'range loop
                if i /= 0 then
                    digctrl(i-1) <= '1';
                end if;
                code <= error(i).code; --se le asigna en cada iteración un valor del code correpsondiente a una letra
                digctrl(i) <= '0'; --se activa el 
                wait for mux_time;--Espera un timepo antes de cambiar
                assert segment = error(i).segment;
                    report "[FAILED]: Wrong letter'."
                    severity failure;                
             end loop;
        end if;
        digctrl(4) <= '0';
        code <= "1111";
end process;
end Behavioral;
