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
-- /___/   /\     Timestamp : Mon Mar 14 19:54:16 2022
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

    COMPONENT sum8
        PORT (
            iCY0 : In std_logic;
            iaOp1 : In std_logic_vector (7 DownTo 0);
            iaOp2 : In std_logic_vector (7 DownTo 0);
            oCY : Out std_logic;
            oaSum : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iCY0 : std_logic := '0';
    SIGNAL iaOp1 : std_logic_vector (7 DownTo 0) := "01010101";
    SIGNAL iaOp2 : std_logic_vector (7 DownTo 0) := "10101010";
    SIGNAL oCY : std_logic := '0';
    SIGNAL oaSum : std_logic_vector (7 DownTo 0) := "00000000";

    BEGIN
        UUT : sum8
        PORT MAP (
            iCY0 => iCY0,
            iaOp1 => iaOp1,
            iaOp2 => iaOp2,
            oCY => oCY,
            oaSum => oaSum
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  180ns
                WAIT FOR 180 ns;
                iaOp2 <= "01010101";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 20 ns;
                iaOp1 <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  320ns
                WAIT FOR 120 ns;
                iaOp1 <= "10101010";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 80 ns;
                iaOp2 <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                iCY0 <= '1';
                iaOp1 <= "01010101";
                -- -------------------------------------
                -- -------------  Current Time:  680ns
                WAIT FOR 180 ns;
                iaOp1 <= "11001100";
                iaOp2 <= "00110011";
                -- -------------------------------------
                -- -------------  Current Time:  820ns
                WAIT FOR 140 ns;
                iaOp1 <= "10101010";
                iaOp2 <= "11110000";
                -- -------------------------------------
                WAIT FOR 180 ns;

            END PROCESS;

    END testbench_arch;

