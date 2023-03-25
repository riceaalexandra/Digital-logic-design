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
-- /___/   /\     Timestamp : Sun Apr 10 22:55:09 2022
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

    COMPONENT RegDSD
        PORT (
            iClock : In std_logic;
            iINIT : In std_logic;
            iSens : In std_logic;
            iISDD : In std_logic;
            iISDS : In std_logic;
            oaQ : Out std_logic_vector (0 To 7)
        );
    END COMPONENT;

    SIGNAL iClock : std_logic := '0';
    SIGNAL iINIT : std_logic := '1';
    SIGNAL iSens : std_logic := '0';
    SIGNAL iISDD : std_logic := '0';
    SIGNAL iISDS : std_logic := '0';
    SIGNAL oaQ : std_logic_vector (0 To 7) := "00000000";

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : RegDSD
        PORT MAP (
            iClock => iClock,
            iINIT => iINIT,
            iSens => iSens,
            iISDD => iISDD,
            iISDS => iISDS,
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
                -- -------------  Current Time:  15ns
                WAIT FOR 15 ns;
                iINIT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  65ns
                WAIT FOR 50 ns;
                iISDD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  165ns
                WAIT FOR 100 ns;
                iISDD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  265ns
                WAIT FOR 100 ns;
                iISDD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  315ns
                WAIT FOR 50 ns;
                iISDD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  415ns
                WAIT FOR 100 ns;
                iSens <= '1';
                iISDS <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  465ns
                WAIT FOR 50 ns;
                iISDD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  515ns
                WAIT FOR 50 ns;
                iISDS <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  565ns
                WAIT FOR 50 ns;
                iISDD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  615ns
                WAIT FOR 50 ns;
                iISDD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  665ns
                WAIT FOR 50 ns;
                iISDS <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  715ns
                WAIT FOR 50 ns;
                iISDD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  765ns
                WAIT FOR 50 ns;
                iISDS <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  815ns
                WAIT FOR 50 ns;
                iSens <= '0';
                iISDD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  865ns
                WAIT FOR 50 ns;
                iISDS <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  915ns
                WAIT FOR 50 ns;
                iISDD <= '0';
                -- -------------------------------------
                WAIT FOR 135 ns;

            END PROCESS;

    END testbench_arch;

