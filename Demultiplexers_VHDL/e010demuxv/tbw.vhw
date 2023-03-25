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
-- /___/   /\     Timestamp : Sat Mar 05 21:59:10 2022
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

    COMPONENT e010demuxv
        PORT (
            iaData : In std_logic_vector (1 DownTo 0);
            iaAdr : In std_logic_vector (1 DownTo 0);
            oaA : Out std_logic_vector (1 DownTo 0);
            oaB : Out std_logic_vector (1 DownTo 0);
            oaC : Out std_logic_vector (1 DownTo 0);
            oaD : Out std_logic_vector (1 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iaData : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL iaAdr : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL oaA : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL oaB : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL oaC : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL oaD : std_logic_vector (1 DownTo 0) := "00";

    BEGIN
        UUT : e010demuxv
        PORT MAP (
            iaData => iaData,
            iaAdr => iaAdr,
            oaA => oaA,
            oaB => oaB,
            oaC => oaC,
            oaD => oaD
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                iaData <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                iaData <= "11";
                iaAdr <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                iaData <= "10";
                iaAdr <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                iaData <= "00";
                iaAdr <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                iaData <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                iaData <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 200 ns;
                iaData <= "10";
                -- -------------------------------------
                WAIT FOR 200 ns;

            END PROCESS;

    END testbench_arch;

