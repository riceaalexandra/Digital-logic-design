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
-- /___/   /\     Timestamp : Sun May 08 22:37:24 2022
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

    COMPONENT MemRAM
        PORT (
            iClockMem : In std_logic;
            iWrite : In std_logic;
            iaADR : In std_logic_vector (4 DownTo 0);
            iaData : In std_logic_vector (7 DownTo 0);
            oaData : Out std_logic_vector (7 DownTo 0);
            iOC : In std_logic
        );
    END COMPONENT;

    SIGNAL iClockMem : std_logic := '0';
    SIGNAL iWrite : std_logic := '0';
    SIGNAL iaADR : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL iaData : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaData : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL iOC : std_logic := '0';

    constant PERIOD : time := 75 ns;
    constant DUTY_CYCLE : real := 0.3333333333;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : MemRAM
        PORT MAP (
            iClockMem => iClockMem,
            iWrite => iWrite,
            iaADR => iaADR,
            iaData => iaData,
            oaData => oaData,
            iOC => iOC
        );

        PROCESS    -- clock process for iClockMem
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                iClockMem <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                iClockMem <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  110ns
                WAIT FOR 110 ns;
                iWrite <= '1';
                iaADR <= "00011";
                iaData <= "11111111";
                -- -------------------------------------
                -- -------------  Current Time:  185ns
                WAIT FOR 75 ns;
                iWrite <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  260ns
                WAIT FOR 75 ns;
                iaADR <= "00101";
                iaData <= "10101010";
                -- -------------------------------------
                -- -------------  Current Time:  335ns
                WAIT FOR 75 ns;
                iaADR <= "00110";
                -- -------------------------------------
                -- -------------  Current Time:  410ns
                WAIT FOR 75 ns;
                iaADR <= "00011";
                -- -------------------------------------
                -- -------------  Current Time:  485ns
                WAIT FOR 75 ns;
                iaADR <= "00111";
                iaData <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  560ns
                WAIT FOR 75 ns;
                iWrite <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  710ns
                WAIT FOR 150 ns;
                iWrite <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 75 ns;
                iOC <= '1';
                iaADR <= "00011";
                -- -------------------------------------
                -- -------------  Current Time:  860ns
                WAIT FOR 75 ns;
                iaData <= "01010101";
                -- -------------------------------------
                -- -------------  Current Time:  935ns
                WAIT FOR 75 ns;
                iWrite <= '1';
                iOC <= '0';
                -- -------------------------------------
                WAIT FOR 140 ns;

            END PROCESS;

    END testbench_arch;

