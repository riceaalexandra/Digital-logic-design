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
-- /___/   /\     Timestamp : Sat May 07 23:19:17 2022
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

    COMPONENT num1
        PORT (
            iClk : In std_logic;
            iClear : In std_logic;
            iLoad : In std_logic;
            iaData : In std_logic_vector (3 DownTo 0);
            oQ : Out std_logic;
            oaData : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iClear : std_logic := '0';
    SIGNAL iLoad : std_logic := '0';
    SIGNAL iaData : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL oQ : std_logic := '0';
    SIGNAL oaData : std_logic_vector (3 DownTo 0) := "0000";

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : num1
        PORT MAP (
            iClk => iClk,
            iClear => iClear,
            iLoad => iLoad,
            iaData => iaData,
            oQ => oQ,
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
                -- -------------  Current Time:  15ns
                WAIT FOR 15 ns;
                iLoad <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  115ns
                WAIT FOR 100 ns;
                iLoad <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  265ns
                WAIT FOR 150 ns;
                iaData <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  365ns
                WAIT FOR 100 ns;
                iaData <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  465ns
                WAIT FOR 100 ns;
                iaData <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  565ns
                WAIT FOR 100 ns;
                iaData <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  665ns
                WAIT FOR 100 ns;
                iaData <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  765ns
                WAIT FOR 100 ns;
                iaData <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  865ns
                WAIT FOR 100 ns;
                iaData <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  965ns
                WAIT FOR 100 ns;
                iaData <= "1000";
                -- -------------------------------------
                -- -------------  Current Time:  1065ns
                WAIT FOR 100 ns;
                iaData <= "1001";
                -- -------------------------------------
                -- -------------  Current Time:  1165ns
                WAIT FOR 100 ns;
                iaData <= "1010";
                -- -------------------------------------
                -- -------------  Current Time:  1265ns
                WAIT FOR 100 ns;
                iaData <= "1011";
                -- -------------------------------------
                -- -------------  Current Time:  1365ns
                WAIT FOR 100 ns;
                iaData <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  1465ns
                WAIT FOR 100 ns;
                iaData <= "1101";
                -- -------------------------------------
                -- -------------  Current Time:  1565ns
                WAIT FOR 100 ns;
                iaData <= "1110";
                -- -------------------------------------
                -- -------------  Current Time:  1665ns
                WAIT FOR 100 ns;
                iaData <= "1111";
                -- -------------------------------------
                WAIT FOR 385 ns;

            END PROCESS;

    END testbench_arch;

