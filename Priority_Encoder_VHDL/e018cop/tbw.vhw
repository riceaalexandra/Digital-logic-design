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
-- /___/   /\     Timestamp : Sun Mar 20 12:58:20 2022
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

    COMPONENT e018cop
        PORT (
            iaData : In std_logic_vector (7 DownTo 0);
            oaCod : Out std_logic_vector (2 DownTo 0);
            oGS : Out std_logic
        );
    END COMPONENT;

    SIGNAL iaData : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaCod : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL oGS : std_logic := '0';

    BEGIN
        UUT : e018cop
        PORT MAP (
            iaData => iaData,
            oaCod => oaCod,
            oGS => oGS
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  140ns
                WAIT FOR 140 ns;
                iaData <= "00001111";
                -- -------------------------------------
                -- -------------  Current Time:  260ns
                WAIT FOR 120 ns;
                iaData <= "00111111";
                -- -------------------------------------
                -- -------------  Current Time:  380ns
                WAIT FOR 120 ns;
                iaData <= "00011111";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 120 ns;
                iaData <= "01111010";
                -- -------------------------------------
                -- -------------  Current Time:  640ns
                WAIT FOR 140 ns;
                iaData <= "01111111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 160 ns;
                iaData <= "11111111";
                -- -------------------------------------
                WAIT FOR 200 ns;

            END PROCESS;

    END testbench_arch;

