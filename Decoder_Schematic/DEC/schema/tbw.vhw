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
-- /___/   /\     Timestamp : Thu Jan 06 12:35:46 2022
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbw
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY tbw IS
END tbw;

ARCHITECTURE testbench_arch OF tbw IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT functie
        PORT (
            ADR : In std_logic_vector (1 DownTo 0);
            E : In std_logic;
            DATA : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL ADR : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL E : std_logic := '0';
    SIGNAL DATA : std_logic_vector (3 DownTo 0) := "0000";

    BEGIN
        UUT : functie
        PORT MAP (
            ADR => ADR,
            E => E,
            DATA => DATA
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                E <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                ADR <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                ADR <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                ADR <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 300 ns;
                E <= '0';
                -- -------------------------------------
                WAIT FOR 300 ns;

            END PROCESS;

    END testbench_arch;

