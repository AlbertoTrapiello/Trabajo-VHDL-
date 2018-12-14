----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2018 20:01:53
-- Design Name: 
-- Module Name: maquina_estados_tb - Behavioral
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

entity maquina_estados_tb is
--  Port ( );
GENERIC (N: integer:=5); --declaramos de nuevo N para que lo reconozca
end maquina_estados_tb;

architecture Behavioral of maquina_estados_tb is

component maquina_estados is
    GENERIC(N:integer:=5);--tamaño de la clave
    Port ( reset : in STD_LOGIC;
           clk, mode, start : in STD_LOGIC; --mode: Seleccionar modo pulsadores (0) o switches (1) 
           --start: Pasar del estado de reposo al de selección de modos. Sirve para mostrar cuando se va a introducir la combinación.
           x,y : in STD_LOGIC_VECTOR (0 to N-1);--x: Entrada Pulsadores ------ y: Entrada Switches
           led : out STD_LOGIC);-- Salida a través de un LED. Posteriormente se podría añadir a su vez un mensaje por el display. 
end component;

signal reset_in, clk_in, mode_in, start_in, led_out: STD_LOGIC;
signal x_in, y_in: STD_LOGIC_VECTOR (0 TO N-1);

constant k: TIME:=10 ns;

begin

comp1: maquina_estados PORT MAP(
    reset => reset_in,
    clk => clk_in,
    mode => mode_in,
    start => start_in,
    led =>led_out,
    x => x_in,
    y => y_in);
    
p1: PROCESS --PROCESS encargado de generar la señal de reloj
BEGIN
    clk_in <= '0';
    WAIT FOR k;
    clk_in <= '1';
    WAIT FOR k;
END PROCESS;

p2: PROCESS --PROCESS encargado de generar la señal de RESET
BEGIN
    reset_in <= '0';
    WAIT FOR 3.5*k;
    reset_in <= '1';
    WAIT FOR 3*k;
    reset_in <= '0';
    WAIT;
END PROCESS;

p3: PROCESS --PROCESS encargado de cambiar entre el modo pulsadores/interruptores
BEGIN
    mode_in <= '0';
    WAIT FOR 100*k;
    mode_in <= '1';
    WAIT FOR 100*k;
END PROCESS;

p4: PROCESS --PROCESS encargado de controlar la señal de START
BEGIN
    start_in <= '0';
    WAIT FOR 4*k;
    start_in <= '1';
    WAIT FOR 3*k;
    start_in <= '0';
    WAIT FOR 2*k;
    start_in <= '1';
    WAIT FOR 2*k;
    start_in <= '0';
    WAIT FOR 100*k;
END PROCESS;

p5: PROCESS --PROCESS encargado de la entrada x
BEGIN
    x_in <= "10000";
    WAIT FOR 2.5*k;
    x_in <= "01000";
    WAIT FOR 2.5*k;
    x_in <= "00100";
    WAIT FOR 2.5*k;
    x_in <= "00010";
    WAIT FOR 2.5*K;
    x_in <= "00001";
    WAIT FOR 100*k;
END PROCESS;

p6: PROCESS --PROCESS encargado de la entrada y
BEGIN
    y_in <= "10000";
    WAIT FOR 2.5*k;
    y_in <= "01000";
    WAIT FOR 2.5*k;
    y_in <= "00100";
    WAIT FOR 2.5*k;
    y_in <= "00010";
    WAIT FOR 2.5*K;
    y_in <= "00001";
    WAIT FOR 100*k;
END PROCESS;


end Behavioral;
