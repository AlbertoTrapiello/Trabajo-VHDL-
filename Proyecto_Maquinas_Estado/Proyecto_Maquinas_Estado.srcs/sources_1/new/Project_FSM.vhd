----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2018 16:53:41
-- Design Name: 
-- Module Name: maquina_estados - Behavioral
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

entity maquina_estados is
    GENERIC(N:integer:=5);
    Port ( reset : in STD_LOGIC;
           clk, mode, start : in STD_LOGIC; --mode: Seleccionar modo pulsadores (0) o switches (1) 
           --start: Pasar del estado de reposo al de selección de modos. Sirve para mostrar cuando se va a introducir la combinación.
           x,y : in STD_LOGIC_VECTOR (0 to N-1);--x: Entrada Pulsadores ------ y: Entrada Switches
           led : out STD_LOGIC);-- Salida a través de un LED. Posteriormente se podría añadir a su vez un mensaje por el display. 
end maquina_estados;

--Opcion: Incluir otro led de incorrecto. (Salida)

architecture Behavioral of maquina_estados is

TYPE state_type IS (reposo, mode_sel, first_ok, second_ok, third_ok, fourth_ok, fifth_ok, --Estados pulsadores
first_switch_ok, second_switch_ok, third_switch_ok, fourth_switch_ok, fifth_switch_ok); --Estados switches

SIGNAL state, next_state: state_type;

begin

SYNC_PROC: PROCESS (clk)--PROCESS encargado de actualizar el estado actual.
BEGIN
    IF rising_edge(clk) THEN
        IF (reset = '1') THEN
            state <= reposo;--Cuando reset=1, se vuelve al reposo.
        ELSE
            state <= next_state;--Cuando reset=0, se actualiza el estado.
        END IF;
    END IF;
END PROCESS;

OUTPUT_DECODE: PROCESS (state)--PROCESS encargado de actualizar la salida en función del estado.
BEGIN
    CASE (state) is
        WHEN reposo => led <= '0';
        WHEN mode_sel => led<= '0';
        --Salidas para estados pulsadores
        WHEN first_ok => led<= '0';
        WHEN second_ok => led<= '0';
        WHEN third_ok => led<= '0';
        WHEN fourth_ok => led<= '0';
        WHEN fifth_ok => led<= '1';
        --Salidas para estados switches
        WHEN first_switch_ok => led<= '0';
        WHEN second_switch_ok => led<= '0';
        WHEN third_switch_ok => led<= '0';
        WHEN fourth_switch_ok => led<= '0';
        WHEN fifth_switch_ok => led<= '1';
        WHEN OTHERS => led <= '0';
    END CASE;
END PROCESS;

NEXT_STATE_DECODE: PROCESS (state, x, y, start)
BEGIN
    --next_state <= reposo;
    CASE (state) is
        WHEN reposo =>
            IF (start='1') THEN
                next_state <= mode_sel;
            END IF;
        WHEN mode_sel =>
            IF (mode = '0') THEN
                IF(x="10000") THEN 
                next_state <= first_ok;
                END IF;
            ELSIF (mode = '1' AND y="10000") THEN 
                next_state <= first_switch_ok;
            END IF;
       -- Modo pulsadores:
        WHEN first_ok =>
            IF (x="01000") THEN 
                next_state <= second_ok;
            ELSIF(reset='0') THEN 
                next_state <= mode_sel;
            END IF;
        WHEN second_ok =>
            IF (x="00100") THEN 
                next_state <= third_ok;
            ELSIF(reset='0') THEN 
                next_state <= mode_sel;
            END IF;
        WHEN third_ok =>
            IF (x="00010") THEN 
                next_state <= fourth_ok;
            ELSIF(reset='0') THEN 
                next_state <= mode_sel;           
            END IF;
        WHEN fourth_ok =>
            IF (x="00001") THEN 
                next_state <= fifth_ok;
            ELSIF(reset='0') THEN 
                next_state <= mode_sel;
            END IF;
        WHEN fifth_ok =>
            IF (reset='1') THEN
                next_state <= reposo;
            END IF;
        --Modo Switches:
        WHEN first_switch_ok =>
            IF (y="11000") THEN 
                next_state <= second_switch_ok;
            ELSIF(reset='0') THEN 
                next_state <= mode_sel;
            END IF;
        WHEN second_switch_ok =>
            IF (y="11100") THEN 
                next_state <= third_switch_ok;
            ELSIF(reset='0') THEN 
                next_state <= mode_sel;
            END IF;
        WHEN third_switch_ok =>
            IF (y="11110") THEN 
                next_state <= fourth_switch_ok;
            ELSIF(reset='0') THEN 
                next_state <= mode_sel;           
            END IF;
        WHEN fourth_switch_ok =>
            IF (y="11111") THEN 
                next_state <= fifth_switch_ok;
            ELSIF(reset='0') THEN 
                next_state <= mode_sel;
            END IF;
        WHEN fifth_switch_ok =>
            IF (reset='1') THEN
                next_state <= reposo;
            END IF;
        WHEN OTHERS => next_state <= reposo;
END CASE;
END PROCESS;

end Behavioral;
