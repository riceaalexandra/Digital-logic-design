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
-- /___/   /\     Timestamp : Mon Mar 14 21:36:11 2022
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

    COMPONENT e013sumbin16
        PORT (
            iaA : In std_logic_vector (15 DownTo 0);
            iaB : In std_logic_vector (15 DownTo 0);
            iC : In std_logic;
            oaS : Out std_logic_vector (15 DownTo 0);
            oC : Out std_logic
        );
    END COMPONENT;

    SIGNAL iaA : std_logic_vector (15 DownTo 0) := "0000000000000000";
    SIGNAL iaB : std_logic_vector (15 DownTo 0) := "0000000000000000";
    SIGNAL iC : std_logic := '0';
    SIGNAL oaS : std_logic_vector (15 DownTo 0) := "0000000000000000";
    SIGNAL oC : std_logic := '0';

    BEGIN
        UUT : e013sumbin16
        PORT MAP (
            iaA => iaA,
            iaB => iaB,
            iC => iC,
            oaS => oaS,
            oC => oC
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                iaA <= "0000000000000001";
                -- -------------------------------------
                -- -------------  Current Time:  220ns
                WAIT FOR 120 ns;
                iaA <= "0000000000001111";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 80 ns;
                iaA <= "0000000011111111";
                -- -------------------------------------
                -- -------------  Current Time:  420ns
                WAIT FOR 120 ns;
                iaA <= "0000111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 80 ns;
                iaA <= "1111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                iC <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  660ns
                WAIT FOR 60 ns;
                iC <= '0';
                iaA <= "1010101010101010";
                iaB <= "0101010101010101";
                -- -------------------------------------
                -- -------------  Current Time:  880ns
                WAIT FOR 220 ns;
                iC <= '1';
                -- -------------------------------------
                WAIT FOR 120 ns;

            END PROCESS;

    END testbench_arch;

