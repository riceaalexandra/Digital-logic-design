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
-- /___/   /\     Timestamp : Sun May 08 14:57:37 2022
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

    COMPONENT MemPROM
        PORT (
            iaAdr : In std_logic_vector (4 DownTo 0);
            oaData : Out std_logic_vector (7 DownTo 0);
            iRead : In std_logic;
            iOC : In std_logic
        );
    END COMPONENT;

    SIGNAL iaAdr : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL oaData : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL iRead : std_logic := '0';
    SIGNAL iOC : std_logic := '0';

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 40 ns;

    BEGIN
        UUT : MemPROM
        PORT MAP (
            iaAdr => iaAdr,
            oaData => oaData,
            iRead => iRead,
            iOC => iOC
        );

        PROCESS    -- clock process for iRead
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                iRead <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                iRead <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  90ns
                WAIT FOR 90 ns;
                iaAdr <= "10101";
                -- -------------------------------------
                -- -------------  Current Time:  170ns
                WAIT FOR 80 ns;
                iaAdr <= "00001";
                -- -------------------------------------
                -- -------------  Current Time:  250ns
                WAIT FOR 80 ns;
                iaAdr <= "10110";
                -- -------------------------------------
                -- -------------  Current Time:  290ns
                WAIT FOR 40 ns;
                iaAdr <= "10111";
                -- -------------------------------------
                -- -------------  Current Time:  370ns
                WAIT FOR 80 ns;
                iaAdr <= "11001";
                -- -------------------------------------
                -- -------------  Current Time:  450ns
                WAIT FOR 80 ns;
                iaAdr <= "11010";
                -- -------------------------------------
                -- -------------  Current Time:  490ns
                WAIT FOR 40 ns;
                iOC <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  530ns
                WAIT FOR 40 ns;
                iaAdr <= "11011";
                -- -------------------------------------
                -- -------------  Current Time:  570ns
                WAIT FOR 40 ns;
                iaAdr <= "11100";
                -- -------------------------------------
                -- -------------  Current Time:  610ns
                WAIT FOR 40 ns;
                iaAdr <= "11101";
                -- -------------------------------------
                -- -------------  Current Time:  650ns
                WAIT FOR 40 ns;
                iOC <= '0';
                iaAdr <= "11110";
                -- -------------------------------------
                -- -------------  Current Time:  690ns
                WAIT FOR 40 ns;
                iaAdr <= "11111";
                -- -------------------------------------
                -- -------------  Current Time:  770ns
                WAIT FOR 80 ns;
                iaAdr <= "00101";
                -- -------------------------------------
                -- -------------  Current Time:  850ns
                WAIT FOR 80 ns;
                iaAdr <= "00110";
                -- -------------------------------------
                WAIT FOR 190 ns;

            END PROCESS;

    END testbench_arch;

