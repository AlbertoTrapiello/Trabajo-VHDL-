----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2019 14:05:39
-- Design Name: 
-- Module Name: only_state_tb - Behavioral
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

entity only_state_tb is
--  Port ( );
end only_state_tb;

architecture Behavioral of only_state_tb is

component maquina_estados is
    GENERIC(N:integer:=5);--tamaño de la clave
    Port ( reset : in STD_LOGIC;--SEñal de reset activa a nivel alto
           clk, mode, start : in STD_LOGIC; --mode: Seleccionar modo pulsadores (0) o switches (1) 
           --start: Pasar del estado de reposo al de selección de modos. Sirve para mostrar cuando se va a introducir la combinación.
           --finish: Para mostrar cuando se ha terminado de introducir la combinación.
           x,y : in STD_LOGIC_VECTOR (0 to N-1);--x: Entrada Pulsadores ------ y: Entrada Switches
           count_puls, count_switches: in INTEGER RANGE 0 TO N;
           --led:out STD_LOGIC_VECTOR(0 TO 1));-- Salida a dos leds. led[0] es el led que indica si la combinación es correcta y 
           --led[1] indica si la combinación es incorrecta.
           led_test: out INTEGER RANGE 1 to 13);
end component maquina_estados;

constant BUS_N: integer := 5; --genérico declarado para el testbench

signal reset_in, clk_in, mode_in, start_in: STD_LOGIC;
signal x_in, y_in : STD_LOGIC_VECTOR (0 to BUS_N-1);
signal count_puls_in, count_switches_in: INTEGER RANGE 0 TO BUS_N;
signal led_out: STD_LOGIC_VECTOR (0 TO 1);

signal led_test_out: INTEGER RANGE 1 to 13;


CONSTANT k: TIME := 5 ns;

begin
    comp1: maquina_estados PORT MAP(
        reset => reset_in,
        clk => clk_in,
        mode => mode_in,
        start => start_in,
        x => x_in,
        y => y_in,
        count_puls => count_puls_in,
        count_switches => count_switches_in,
        --led => led_out);
        led_test => led_test_out);
    
    p1_clk: PROCESS
    begin
        clk_in <= '0';
        WAIT FOR 2*k;
        clk_in <= '1';
        WAIT FOR 2*k;
    END PROCESS;
    
    p2_reset: PROCESS
    begin
        reset_in <= '1';
        wait for k;
        reset_in <= '0';
        wait for 2*k;
        reset_in <= '1';
        wait;
    end process;
    
    p3_mode: PROCESS
    begin
        mode_in <='0';
        wait;
    end process;
    
    p4_start: PROCESS
    begin
        start_in <= '0';
        wait for 5*k;
        start_in <= '1';
        wait;
    end process;
    
    p5_x: PROCESS
    begin
        x_in(0) <= '0';
        x_in(1) <= '0';
        x_in(2) <= '0';
        x_in(3) <= '0';
        x_in(4) <= '0';
        
        wait for 9*k;
        x_in(0) <= '1';

  
        wait for 4*k;
        x_in(1) <= '1';

 
        wait for 4*k;
        x_in(2) <= '1';

        
        wait for 4*k;
        x_in(3) <= '1';

 
         wait for 4*k;
         x_in(4) <= '1';
         wait;

      end process;
      
      p6_count_puls: process
      begin
        wait until x_in(0)='1';
        count_puls_in <= 1;
        wait until x_in(1)='1';
        count_puls_in <= 2;
        wait until x_in(2)='1';
        count_puls_in <= 3;
        wait until x_in(3) ='1';
        count_puls_in <= 4;
        wait until x_in(4) ='1';
        count_puls_in <= 5;  
    end process;

end Behavioral;
