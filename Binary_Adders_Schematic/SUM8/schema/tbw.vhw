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
-- /___/   /\     Timestamp : Sat Jan 08 13:19:39 2022
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
            A : In std_logic_vector (7 DownTo 0);
            B : In std_logic_vector (7 DownTo 0);
            CIN : In std_logic;
            COUT : Out std_logic;
            OFL : Out std_logic;
            S : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL B : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL CIN : std_logic := '0';
    SIGNAL COUT : std_logic := '0';
    SIGNAL OFL : std_logic := '0';
    SIGNAL S : std_logic_vector (7 DownTo 0) := "00000000";

    BEGIN
        UUT : functie
        PORT MAP (
            A => A,
            B => B,
            CIN => CIN,
            COUT => COUT,
            OFL => OFL,
            S => S
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                A <= "01011111";
                B <= "01011111";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                A <= "11001000";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                A <= "10010001";
                B <= "11001000";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                A <= "00011101";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                CIN <= '1';
                A <= "11101010";
                B <= "10010001";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                A <= "01110011";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                A <= "01110100";
                B <= "00011101";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                A <= "10101000";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                B <= "11101010";
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

