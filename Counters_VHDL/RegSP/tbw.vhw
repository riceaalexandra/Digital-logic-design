--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tbw.vhw
-- /___/   /\     Timestamp : Sat Apr 09 21:45:14 2022
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbw
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tbw IS
END tbw;

ARCHITECTURE testbench_arch OF tbw IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT RegSP
        PORT (
            iClock : In std_logic;
            iDataSerie : In std_logic;
            oaQ : Out std_logic_vector (0 To 7)
        );
    END COMPONENT;

    SIGNAL iClock : std_logic := '0';
    SIGNAL iDataSerie : std_logic := '0';
    SIGNAL oaQ : std_logic_vector (0 To 7) := "00000000";

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : RegSP
        PORT MAP (
            iClock => iClock,
            iDataSerie => iDataSerie,
            oaQ => oaQ
        );

        PROCESS    -- clock process for iClock
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                iClock <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                iClock <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  65ns
                WAIT FOR 65 ns;
                iDataSerie <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  215ns
                WAIT FOR 150 ns;
                iDataSerie <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  315ns
                WAIT FOR 100 ns;
                iDataSerie <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  415ns
                WAIT FOR 100 ns;
                iDataSerie <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  565ns
                WAIT FOR 150 ns;
                iDataSerie <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  765ns
                WAIT FOR 200 ns;
                iDataSerie <= '0';
                -- -------------------------------------
                WAIT FOR 285 ns;

            END PROCESS;

    END testbench_arch;

