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
-- /___/   /\     Timestamp : Sat May 07 17:32:54 2022
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

    COMPONENT num6
        PORT (
            iClk : In std_logic;
            iReset : In std_logic;
            oaQ : Out std_logic_vector (4 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iReset : std_logic := '0';
    SIGNAL oaQ : std_logic_vector (4 DownTo 0) := "00000";

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : num6
        PORT MAP (
            iClk => iClk,
            iReset => iReset,
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
                -- -------------  Current Time:  10ns
                WAIT FOR 10 ns;
                iReset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  90ns
                WAIT FOR 80 ns;
                iReset <= '0';
                -- -------------------------------------
                WAIT FOR 950 ns;

            END PROCESS;

    END testbench_arch;

