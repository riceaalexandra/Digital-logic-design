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
-- /___/   /\     Timestamp : Sat May 07 23:23:05 2022
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

    COMPONENT NumL
        PORT (
            iClock : In std_logic;
            iLoad : In std_logic;
            iValid : In std_logic;
            iINIT : In std_logic;
            iaData : In std_logic_vector (3 DownTo 0);
            oaQ : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iClock : std_logic := '0';
    SIGNAL iLoad : std_logic := '0';
    SIGNAL iValid : std_logic := '0';
    SIGNAL iINIT : std_logic := '0';
    SIGNAL iaData : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL oaQ : std_logic_vector (3 DownTo 0) := "0000";

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : NumL
        PORT MAP (
            iClock => iClock,
            iLoad => iLoad,
            iValid => iValid,
            iINIT => iINIT,
            iaData => iaData,
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
                -- -------------  Current Time:  90ns
                WAIT FOR 90 ns;
                iValid <= '1';
                iINIT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  130ns
                WAIT FOR 40 ns;
                iINIT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  290ns
                WAIT FOR 160 ns;
                iaData <= "1010";
                -- -------------------------------------
                -- -------------  Current Time:  450ns
                WAIT FOR 160 ns;
                iaData <= "1110";
                -- -------------------------------------
                -- -------------  Current Time:  490ns
                WAIT FOR 40 ns;
                iLoad <= '1';
                iValid <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  530ns
                WAIT FOR 40 ns;
                iLoad <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  570ns
                WAIT FOR 40 ns;
                iaData <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  610ns
                WAIT FOR 40 ns;
                iValid <= '1';
                -- -------------------------------------
                WAIT FOR 430 ns;

            END PROCESS;

    END testbench_arch;

