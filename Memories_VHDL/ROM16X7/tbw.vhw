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
-- /___/   /\     Timestamp : Sun May 08 15:31:55 2022
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

    COMPONENT rom16x7
        PORT (
            iaAdresa : In std_logic_vector (3 DownTo 0);
            oaData : Out std_logic_vector (6 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iaAdresa : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL oaData : std_logic_vector (6 DownTo 0) := "0000000";

    BEGIN
        UUT : rom16x7
        PORT MAP (
            iaAdresa => iaAdresa,
            oaData => oaData
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                iaAdresa <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  150ns
                WAIT FOR 50 ns;
                iaAdresa <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 50 ns;
                iaAdresa <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  250ns
                WAIT FOR 50 ns;
                iaAdresa <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 50 ns;
                iaAdresa <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  350ns
                WAIT FOR 50 ns;
                iaAdresa <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 50 ns;
                iaAdresa <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  450ns
                WAIT FOR 50 ns;
                iaAdresa <= "1000";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 50 ns;
                iaAdresa <= "1001";
                -- -------------------------------------
                -- -------------  Current Time:  550ns
                WAIT FOR 50 ns;
                iaAdresa <= "1010";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 50 ns;
                iaAdresa <= "1011";
                -- -------------------------------------
                -- -------------  Current Time:  650ns
                WAIT FOR 50 ns;
                iaAdresa <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 50 ns;
                iaAdresa <= "1101";
                -- -------------------------------------
                -- -------------  Current Time:  750ns
                WAIT FOR 50 ns;
                iaAdresa <= "1110";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 50 ns;
                iaAdresa <= "1111";
                -- -------------------------------------
                WAIT FOR 200 ns;

            END PROCESS;

    END testbench_arch;

