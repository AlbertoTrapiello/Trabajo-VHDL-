----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2019 22:04:46
-- Design Name: 
-- Module Name: TOP - Behavioral
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

entity TOP is
    GENERIC(N:INTEGER:=5);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           mode : in STD_LOGIC;
           start : in STD_LOGIC;
           p,s: in STD_LOGIC_VECTOR(0 TO N-1);
           led_correcto: out STD_LOGIC;
           led_incorrecto: out STD_LOGIC;
           display1 : out  STD_LOGIC_VECTOR (6 downto 0);
           display2 : out  STD_LOGIC_VECTOR (6 downto 0);
           display3 : out  STD_LOGIC_VECTOR (6 downto 0);
           display4 : out  STD_LOGIC_VECTOR (6 downto 0);
           display5 : out  STD_LOGIC_VECTOR (6 downto 0));
end TOP;

architecture Behavioral of TOP is
--Señales intermedias para sincronizar las entradas:
SIGNAL p_sync, s_sync: STD_LOGIC_VECTOR(0 TO N-1);
SIGNAL reset_sync, mode_sync, start_sync: STD_LOGIC;
-- Señales intermedias Debouncer:
SIGNAL x: STD_LOGIC_VECTOR(0 TO N-1);
--Señales intermedias Decoder:

-- Señales intermedias counter:
SIGNAL count_p, count_s: INTEGER RANGE 0 TO 5;

    component sync is
    Port ( sync_in : in STD_LOGIC;
               clk : in STD_LOGIC;
               sync_out : out STD_LOGIC);
    end component;
    
    component Debouncer is
    Port ( clk : in STD_LOGIC;--entrada de reloj que sincroniza al sistema
               rst : in STD_LOGIC;--entrada de reset necesaria en caso de que se desee resetear al debouncer 
               btn_in : in STD_LOGIC;--es la entrada del botón sincronizada
               btn_out : out STD_LOGIC);--es la salida con el valor definitivo una vez filtrados los rebotes
    end component;
    
    
    component Counter is
    Port(reset, mode : in STD_LOGIC;
        vector: in STD_LOGIC_VECTOR (0 TO N-1);--Vector entrada. (Hay dos instancias: Una para pulsadores (vector=x) y otra para switches (vector=y)).
        count: out INTEGER range 0 TO N);--Valor de la cuenta entero.
    end component;

    
    component maquina_estados is
    GENERIC(N:integer:=5);--tamaño de la clave
        Port ( reset : in STD_LOGIC;--SEñal de reset activa a nivel alto
               clk, mode, start : in STD_LOGIC; --mode: Seleccionar modo pulsadores (0) o switches (1) 
               --start: Pasar del estado de reposo al de selección de modos. Sirve para mostrar cuando se va a introducir la combinación.
               --finish: Para mostrar cuando se ha terminado de introducir la combinación.
               x,y : in STD_LOGIC_VECTOR (0 to N-1);--x: Entrada Pulsadores ------ y: Entrada Switches
               count_puls, count_switches: in INTEGER RANGE 0 TO N;
               led:out STD_LOGIC_VECTOR(0 TO 1));-- Salida a dos leds. led[0] es el led que indica si la combinación es correcta y 
               --led[1] indica si la combinación es incorrecta.
    end component;
    
    
begin
    --Instanciaciones sincronizadores de señales (sync):
    inst_sync_p_0: sync PORT MAP (
        sync_in => p(0),
        clk => clk,
        sync_out => p_sync(0)
    );
    
    inst_sync_p_1: sync PORT MAP (
        sync_in => p(1),
        clk => clk,
        sync_out => p_sync(1)
        );
    
    inst_sync_p_2: sync PORT MAP (
        sync_in => p(2),
        clk => clk,
        sync_out => p_sync(2)
        );
    
    inst_sync_p_3: sync PORT MAP (
        sync_in => p(3),
        clk => clk,
        sync_out => p_sync(3)
        );
    
    inst_sync_p_4: sync PORT MAP (
        sync_in => p(4),
        clk => clk,
        sync_out => p_sync(4)
        );
    
    inst_sync_s_0: sync PORT MAP (
        sync_in => s(0),
        clk => clk,
        sync_out => s_sync(0)
        );
    
    inst_sync_s_1: sync PORT MAP (
        sync_in => s(1),
        clk => clk,
        sync_out => s_sync(1)
        );
                    
    inst_sync_s_2: sync PORT MAP (
        sync_in => s(2),
        clk => clk,
        sync_out => s_sync(2)
        );
                    
    inst_sync_s_3: sync PORT MAP (
        sync_in => s(3),
        clk => clk,
        sync_out => s_sync(3)
        );
                    
    inst_sync_s_4: sync PORT MAP (
        sync_in => s(4),
        clk => clk,
        sync_out => s_sync(4)
        );    
     
    inst_sync_reset: sync PORT MAP (
        sync_in => reset,
        clk => clk,
        sync_out => reset_sync
        );    
    
    inst_sync_mode: sync PORT MAP (
        sync_in => mode,
        clk => clk,
        sync_out => mode_sync
        );   
    
    inst_sync_start: sync PORT MAP(
        sync_in => start,
        clk => clk,
        sync_out => start_sync
        );

--Instanciaciones de Debouncer (para pulsadores):
    inst_debouncer_p_0: Debouncer PORT MAP(
        clk => clk,
        rst => reset,
        btn_in => p_sync(0),
        btn_out => x(0)
        );

    inst_debouncer_p_1: Debouncer PORT MAP(
        clk => clk,
        rst => reset,
        btn_in => p_sync(1),
        btn_out => x(1)
        );

    inst_debouncer_p_2: Debouncer PORT MAP(
        clk => clk,
        rst => reset,
        btn_in => p_sync(2),
        btn_out => x(2)
        );  

    inst_debouncer_p_3: Debouncer PORT MAP(
        clk => clk,
        rst => reset,
        btn_in => p_sync(3),
        btn_out => x(3)
        );  

    inst_debouncer_p_4: Debouncer PORT MAP(
        clk => clk,
        rst => reset,
        btn_in => p_sync(4),
        btn_out => x(4)
        );  
  
 --Instanciaciones counter: Una instancia para pulsadores (vector=x) y otra para switches (vector=y).
    counter_pulsadores:Counter PORT MAP(
        vector=>x,
        mode => mode,
        reset => reset,
        count => count_p
    ); 
    
    counter_switches:Counter PORT MAP(
            vector=>s_sync,
            mode => mode,
            reset => reset,
            count => count_s
        ); 

--Instanciación máquina de estados:
    inst_maq_estados: maquina_estados PORT MAP(
        clk => clk,
        reset => reset_sync,
        mode => mode_sync,
        start => start_sync,
        x => x,
        y => s_sync,
        count_switches => count_s,
        count_puls => count_p,
        led(0) => led_correcto,
        led(0) => code_led(0),
        led(1) => led_incorrecto,
        led(1) => code_led(1)
     );
     
--Instanciación Decoder:

         
end Behavioral;
