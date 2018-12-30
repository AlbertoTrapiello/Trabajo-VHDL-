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
    GENERIC(N:integer:=5);--tamaño de la clave
    Port ( reset : in STD_LOGIC;--SEñal de reset activa a nivel alto
           clk, mode, start, finish : in STD_LOGIC; --mode: Seleccionar modo pulsadores (0) o switches (1) 
           --start: Pasar del estado de reposo al de selección de modos. Sirve para mostrar cuando se va a introducir la combinación.
           --finish: Para mostrar cuando se ha terminado de introducir la combinación.
           x,y : in STD_LOGIC_VECTOR (0 to N-1);--x: Entrada Pulsadores ------ y: Entrada Switches
           count_puls, count_switches: in INTEGER RANGE 0 TO N;
           led:out STD_LOGIC_VECTOR(0 TO 1));-- Salida a dos leds. led[0] es el led que indica si la combinación es correcta y 
           --led[1] indica si la combinación es incorrecta.
end maquina_estados;

--Opcion: Incluir otro led de incorrecto. (Salida)

architecture Behavioral of maquina_estados is

TYPE state_type IS (reposo, mode_sel, incorrecto, terminado, --Estados comunes
first_ok, second_ok, third_ok, fourth_ok, fifth_ok, --Estados pulsadores
first_switch_ok, second_switch_ok, third_switch_ok, fourth_switch_ok, fifth_switch_ok); --Estados switches

--NOTA: INICIALIZAR SEÑALES A SU VALOR HABITUAL PARA EVITAR FALLOS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

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
        WHEN reposo => led <= "00";
        WHEN mode_sel => led<= "00";
        WHEN incorrecto => led<="01";
        WHEN terminado => led<="10";
        --Salidas para estados pulsadores
        WHEN first_ok => led<= "00";
        WHEN second_ok => led<= "00";
        WHEN third_ok => led<= "00";
        WHEN fourth_ok => led<= "00";
        WHEN fifth_ok => led<= "00";
        --Salidas para estados switches
        WHEN first_switch_ok => led<= "00";
        WHEN second_switch_ok => led<= "00";
        WHEN third_switch_ok => led<= "00";
        WHEN fourth_switch_ok => led<= "00";
        WHEN fifth_switch_ok => led<= "00";
        WHEN OTHERS => led <= "00";
    END CASE;
END PROCESS;

NEXT_STATE_DECODE: PROCESS (state, x, y, start, finish)
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
                --haceR LO DE FINISH, meter el valor del contador correspondiente también.
--                    IF(finish='1') THEN
--                    next_state <= terminado;
--                    END IF;
                ELSIF (reset='0') THEN 
                next_state <= incorrecto;
                END IF;
            END IF;
            IF (mode = '1') THEN 
                IF(y="10000") THEN 
                next_state <= first_switch_ok;
                ELSIF (reset='0') THEN 
                next_state <= incorrecto;
                END IF;
            END IF;
 --NO SE HACE WHEN incorrecto, YA QUE SOLO HACE UNA TRANSICIÓN DE ESTADO CUANDO reset='1' Y YA SE CONTEMPLA ESA POSIBILIDAD ANTERIORMENTE.
       -- Modo pulsadores:
        WHEN first_ok =>
            IF (x="01000") THEN 
                next_state <= second_ok;
            ELSIF(reset='0') THEN --Si x no es igual a la 01000 y reset =0
                next_state <= incorrecto;--Se pasa a incorrecto
            END IF;
        WHEN second_ok =>
            IF (x="00100") THEN 
                next_state <= third_ok;
            ELSIF(reset='0') THEN 
                next_state <= incorrecto;
            END IF;
        WHEN third_ok =>
            IF (x="00010") THEN 
                next_state <= fourth_ok;
            ELSIF(reset='0') THEN 
                next_state <= incorrecto;           
            END IF;
        WHEN fourth_ok =>
            IF (x="00001") THEN 
                next_state <= fifth_ok;
            ELSIF(reset='0') THEN 
                next_state <= incorrecto;
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
                next_state <= incorrecto;
            END IF;
        WHEN second_switch_ok =>
            IF (y="11100") THEN 
                next_state <= third_switch_ok;
            ELSIF(reset='0') THEN 
                next_state <= incorrecto;
            END IF;
        WHEN third_switch_ok =>
            IF (y="11110") THEN 
                next_state <= fourth_switch_ok;
            ELSIF(reset='0') THEN 
                next_state <= incorrecto;           
            END IF;
        WHEN fourth_switch_ok =>
            IF (y="11111") THEN 
                next_state <= fifth_switch_ok;
            ELSIF(reset='0') THEN 
                next_state <= incorrecto;
            END IF;
        WHEN fifth_switch_ok =>
            IF (reset='1') THEN
                next_state <= reposo;
            END IF;
        WHEN OTHERS => next_state <= reposo;
END CASE;
END PROCESS;

end Behavioral;
