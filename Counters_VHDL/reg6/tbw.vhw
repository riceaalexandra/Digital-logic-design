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
-- /___/   /\     Timestamp : Sun Apr 10 22:26:13 2022
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

    COMPONENT reg6
        PORT (
            iClk : In std_logic;
            iSens : In std_logic;
            iDataddr : In std_logic;
            iDatadst : In std_logic;
            oaQ : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iSens : std_logic := '0';
    SIGNAL iDataddr : std_logic := '0';
    SIGNAL iDatadst : std_logic := '0';
    SIGNAL oaQ : std_logic_vector (7 DownTo 0) := "00000000";

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.4;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : reg6
        PORT MAP (
            iClk => iClk,
            iSens => iSens,
            iDataddr => iDataddr,
            iDatadst => iDatadst,
            oaQ => oaQ
        );

        PROCESS    -- clock process for iClk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                iClk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                iClk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  20ns
                WAIT FOR 20 ns;
                iDataddr <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  70ns
                WAIT FOR 50 ns;
                iDatadst <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  170ns
                WAIT FOR 100 ns;
                iDataddr <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  270ns
                WAIT FOR 100 ns;
                iDatadst <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  370ns
                WAIT FOR 100 ns;
                iDataddr <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  520ns
                WAIT FOR 150 ns;
                iSens <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  670ns
                WAIT FOR 150 ns;
                iDataddr <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  870ns
                WAIT FOR 200 ns;
                iDataddr <= '1';
                -- -------------------------------------
                WAIT FOR 180 ns;

            END PROCESS;

    END testbench_arch;

