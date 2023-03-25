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
-- /___/   /\     Timestamp : Sat May 07 17:15:46 2022
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

    COMPONENT NumDec
        PORT (
            iClock : In std_logic;
            iReset : In std_logic;
            iValid : In std_logic;
            oaQ : Out std_logic_vector (3 DownTo 0);
            oCY : Out std_logic
        );
    END COMPONENT;

    SIGNAL iClock : std_logic := '0';
    SIGNAL iReset : std_logic := '1';
    SIGNAL iValid : std_logic := '0';
    SIGNAL oaQ : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL oCY : std_logic := '0';

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : NumDec
        PORT MAP (
            iClock => iClock,
            iReset => iReset,
            iValid => iValid,
            oaQ => oaQ,
            oCY => oCY
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
                -- -------------  Current Time:  10ns
                WAIT FOR 10 ns;
                iReset <= '0';
                iValid <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  490ns
                WAIT FOR 480 ns;
                iValid <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  730ns
                WAIT FOR 240 ns;
                iValid <= '1';
                -- -------------------------------------
                WAIT FOR 310 ns;

            END PROCESS;

    END testbench_arch;

