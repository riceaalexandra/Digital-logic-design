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
-- /___/   /\     Timestamp : Sat Apr 09 21:28:30 2022
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

    COMPONENT reg5
        PORT (
            iClk : In std_logic;
            iDataSerie : In std_logic;
            oaQ : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iDataSerie : std_logic := '0';
    SIGNAL oaQ : std_logic_vector (3 DownTo 0) := "0000";

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.4;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : reg5
        PORT MAP (
            iClk => iClk,
            iDataSerie => iDataSerie,
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
                iDataSerie <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  120ns
                WAIT FOR 100 ns;
                iDataSerie <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  270ns
                WAIT FOR 150 ns;
                iDataSerie <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  420ns
                WAIT FOR 150 ns;
                iDataSerie <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  470ns
                WAIT FOR 50 ns;
                iDataSerie <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  720ns
                WAIT FOR 250 ns;
                iDataSerie <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  920ns
                WAIT FOR 200 ns;
                iDataSerie <= '1';
                -- -------------------------------------
                WAIT FOR 130 ns;

            END PROCESS;

    END testbench_arch;

