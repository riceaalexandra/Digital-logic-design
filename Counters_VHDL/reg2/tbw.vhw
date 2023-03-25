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
-- /___/   /\     Timestamp : Tue Apr 05 17:02:40 2022
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

    COMPONENT reg2
        PORT (
            iClk : In std_logic;
            iaData : In std_logic_vector (7 DownTo 0);
            oaData : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iaData : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaData : std_logic_vector (7 DownTo 0) := "00000000";

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.4;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : reg2
        PORT MAP (
            iClk => iClk,
            iaData => iaData,
            oaData => oaData
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
                -- -------------  Current Time:  120ns
                WAIT FOR 120 ns;
                iaData <= "10101010";
                -- -------------------------------------
                -- -------------  Current Time:  370ns
                WAIT FOR 250 ns;
                iaData <= "10111011";
                -- -------------------------------------
                -- -------------  Current Time:  620ns
                WAIT FOR 250 ns;
                iaData <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  870ns
                WAIT FOR 250 ns;
                iaData <= "11011101";
                -- -------------------------------------
                WAIT FOR 180 ns;

            END PROCESS;

    END testbench_arch;

