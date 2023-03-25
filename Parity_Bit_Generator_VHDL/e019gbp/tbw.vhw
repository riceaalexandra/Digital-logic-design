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
-- /___/   /\     Timestamp : Sun Mar 20 16:25:47 2022
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

    COMPONENT e010gbp
        PORT (
            iaA : In std_logic_vector (7 DownTo 0);
            iSTP : In std_logic;
            oY : Out std_logic
        );
    END COMPONENT;

    SIGNAL iaA : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL iSTP : std_logic := '0';
    SIGNAL oY : std_logic := '0';

    BEGIN
        UUT : e010gbp
        PORT MAP (
            iaA => iaA,
            iSTP => iSTP,
            oY => oY
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  120ns
                WAIT FOR 120 ns;
                iSTP <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  180ns
                WAIT FOR 60 ns;
                iSTP <= '0';
                iaA <= "00110100";
                -- -------------------------------------
                -- -------------  Current Time:  280ns
                WAIT FOR 100 ns;
                iSTP <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  360ns
                WAIT FOR 80 ns;
                iSTP <= '0';
                iaA <= "01010101";
                -- -------------------------------------
                -- -------------  Current Time:  460ns
                WAIT FOR 100 ns;
                iSTP <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  540ns
                WAIT FOR 80 ns;
                iSTP <= '0';
                iaA <= "11110111";
                -- -------------------------------------
                -- -------------  Current Time:  660ns
                WAIT FOR 120 ns;
                iSTP <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  720ns
                WAIT FOR 60 ns;
                iSTP <= '0';
                iaA <= "11111111";
                -- -------------------------------------
                -- -------------  Current Time:  880ns
                WAIT FOR 160 ns;
                iSTP <= '1';
                -- -------------------------------------
                WAIT FOR 120 ns;

            END PROCESS;

    END testbench_arch;

