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
           clk, mode, start : in STD_LOGIC; --mode: Seleccionar modo pulsadores (0) o switches (1) 
           --start: Pasar del estado de reposo al de selección de modos. Sirve para mostrar cuando se va a introducir la combinación.
           --finish: Para mostrar cuando se ha terminado de introducir la combinación.
           x,y : in STD_LOGIC_VECTOR (0 to N-1);--x: Entrada Pulsadores ------ y: Entrada Switches
           count_puls, count_switches: in INTEGER RANGE 0 TO N;
           led:out STD_LOGIC_VECTOR(0 TO 1));-- Salida a dos leds. led[0] es el led que indica si la combinación es correcta y 
           --led[1] indica si la combinación es incorrecta.
end maquina_estados;

--Opcion: Incluir otro led de incorrecto. (Salida)

architecture Behavioral of maquina_estados is

TYPE state_type IS (reposo, mode_sel, incorrecto, --Estados comunes
first_ok, second_ok, third_ok, fourth_ok, fifth_ok, --Estados pulsadores
first_switch_ok, second_switch_ok, third_switch_ok, fourth_switch_ok, fifth_switch_ok); --Estados switches

--NOTA: INICIALIZAR SEÑALES A SU VALOR HABITUAL PARA EVITAR FALLOS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SIGNAL state, next_state: state_type;--Estado actual y próximo estado.
SIGNAL count_puls_ok, count_switches_ok: STD_LOGIC;--Para validar el paso a fifth_ok y fifth_switch_ok respectivamente. Señales intermedias
begin

WITH count_puls SELECT--Se actualiza a 1 el valor de count_puls_ok si count_puls es igual a 5, sino count_puls_ok='0'.
    count_puls_ok <= '1' WHEN 5,
    '0' WHEN OTHERS;

WITH count_switches SELECT--Se actualiza a 1 el valor de count_switches_ok si count_switches es igual a 5, sino count_switches_ok='0'.
    count_switches_ok <= '1' WHEN 5,
    '0' WHEN OTHERS;

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

--COUNTER_SYNC: PROCESS (count_puls, count_switches)-- Es mejor opción hacerlo dataflow (arriba está hecho así).
--BEGIN 
--    IF (count_puls=5) THEN
--        count_puls_ok <= '1';
--    ELSE
--        count_puls_ok <= '0';
--    END IF;
--    IF (count_switches=5) THEN
--            count_switches_ok <= '1';
--        ELSE
--            count_switches_ok <= '0';
--        END IF;
--END PROCESS;

OUTPUT_DECODE: PROCESS (state)--PROCESS encargado de actualizar la salida en función del estado.
BEGIN
    CASE (state) is
        WHEN reposo => led <= "00";
        WHEN mode_sel => led<= "00";
        WHEN incorrecto => led<="01";
        --WHEN correcto => led<="10";
        --Salidas para estados pulsadores
        WHEN first_ok => led<= "00";
        WHEN second_ok => led<= "00";
        WHEN third_ok => led<= "00";
        WHEN fourth_ok => led<= "00";
        WHEN fifth_ok => led<= "10";
        --Salidas para estados switches
        WHEN first_switch_ok => led<= "00";
        WHEN second_switch_ok => led<= "00";
        WHEN third_switch_ok => led<= "00";
        WHEN fourth_switch_ok => led<= "00";
        WHEN fifth_switch_ok => led<= "10";
        WHEN OTHERS => led <= "00";
    END CASE;
END PROCESS;

NEXT_STATE_DECODE: PROCESS (state, x, y, start, mode, count_switches, count_puls)
BEGIN
    --next_state <= reposo;
    CASE (state) is
        WHEN reposo =>
            IF (start='1') THEN
                next_state <= mode_sel;
            END IF;
        WHEN mode_sel =>
            IF (mode = '0') THEN
                IF(x(0)='1') THEN --x(0)='1'
                next_state <= first_ok;
                ELSE --x(0)='0'
                next_state <= incorrecto;
                END IF;
            END IF;
            IF (mode = '1') THEN 
                IF(y(0)='1') THEN --y(0)='1'
                next_state <= first_switch_ok;
                ELSE --y(0)='0'
                next_state <= incorrecto;
                END IF;
            END IF;
 --NO SE HACE WHEN incorrecto, YA QUE SOLO HACE UNA TRANSICIÓN DE ESTADO CUANDO reset='1' Y YA SE CONTEMPLA ESA POSIBILIDAD ANTERIORMENTE.
       -- Modo pulsadores:
        WHEN first_ok =>
            IF (x(1)='1') THEN --x(1)='1'
                next_state <= second_ok;
            ELSE --x(1)='0'
            --Si x no es igual a la 01000 y reset =0
                next_state <= incorrecto;--Se pasa a incorrecto
            END IF;
        WHEN second_ok =>
            IF (x(2)='1') THEN --x(2)='1'
                next_state <= third_ok;
            ELSE--x(2)='0'
                next_state <= incorrecto;
            END IF;
        WHEN third_ok =>
            IF (x(3)='1') THEN --x(3)='1'
                next_state <= fourth_ok;
            ELSE --x(3)='0'
                next_state <= incorrecto;           
            END IF;
        WHEN fourth_ok =>
            IF (x(4)='1' AND count_puls_ok='1') THEN --x(4)='1' y count_puls_ok='1' (es decir, el contador de los pulsadores ha llegado a 5).
                next_state <= fifth_ok;
            ELSE --x(4)='0'
                next_state <= incorrecto;
            END IF;
        WHEN fifth_ok =>--Se pone para que no haya una transición instantánea de estado a reposo y que solo se pase a dicho estado cuando reset='1'
            IF (reset='1') THEN
                next_state <= reposo;
            END IF;
        --Modo Switches:
        WHEN first_switch_ok =>
            IF (y(1)='1') THEN --y(1)='1'
                next_state <= second_switch_ok;
            ELSE--y(1)='0'
                next_state <= incorrecto;
            END IF;
        WHEN second_switch_ok =>
            IF (y(2)='1') THEN --y(2)='1'
                next_state <= third_switch_ok;
            ELSE --y(2)='0'
                next_state <= incorrecto;
            END IF;
        WHEN third_switch_ok =>
            IF (y(3)='1') THEN --y(3)='1'
                next_state <= fourth_switch_ok;
            ELSE --y(3)='1'
                next_state <= incorrecto;           
            END IF;
        WHEN fourth_switch_ok =>
            IF (y(4)='1' AND count_switches_ok='1') THEN --y(4)='1' y count_switches_ok='1' (es decir, el contador de los switches ha llegado a 5).
                next_state <= fifth_switch_ok;
            ELSE--y(4)='0'
                next_state <= incorrecto;
            END IF;
        WHEN fifth_switch_ok =>--Se pone para que no haya una transición instantánea de estado a reposo y que solo se pase a dicho estado cuando reset='1'
            IF (reset='1') THEN
                next_state <= reposo;
            END IF;
        WHEN OTHERS => next_state <= reposo;
END CASE;
END PROCESS;

end Behavioral;
