--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tbw1.vhw
-- /___/   /\     Timestamp : Mon Mar 28 11:23:55 2022
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbw1
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tbw1 IS
END tbw1;

ARCHITECTURE testbench_arch OF tbw1 IS
    COMPONENT latch2
        PORT (
            iGate : In std_logic;
            iD : In std_logic;
            iReset : In std_logic;
            oQ : Out std_logic
        );
    END COMPONENT;

    SIGNAL iGate : std_logic := '0';
    SIGNAL iD : std_logic := '0';
    SIGNAL iReset : std_logic := '0';
    SIGNAL oQ : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : latch2
        PORT MAP (
            iGate => iGate,
            iD => iD,
            iReset => iReset,
            oQ => oQ
        );

        PROCESS    -- clock process for iGate
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                iGate <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                iGate <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  90ns
                WAIT FOR 90 ns;
                iD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  290ns
                WAIT FOR 200 ns;
                iD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  490ns
                WAIT FOR 200 ns;
                iD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  690ns
                WAIT FOR 200 ns;
                iReset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  890ns
                WAIT FOR 200 ns;
                iReset <= '0';
                -- -------------------------------------
                WAIT FOR 310 ns;

            END PROCESS;

    END testbench_arch;

