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
-- /___/   /\     Timestamp : Tue Apr 05 16:22:33 2022
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

    COMPONENT reg1
        PORT (
            iEnable : In std_logic;
            iData : In std_logic_vector (7 DownTo 0);
            oData : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iEnable : std_logic := '0';
    SIGNAL iData : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oData : std_logic_vector (7 DownTo 0) := "00000000";

    BEGIN
        UUT : reg1
        PORT MAP (
            iEnable => iEnable,
            iData => iData,
            oData => oData
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  500ns
                WAIT FOR 500 ns;
                iEnable <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                iData <= "10101010";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                iEnable <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                iData <= "10111011";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                iEnable <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 200 ns;
                iEnable <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                iData <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                iEnable <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 200 ns;
                iEnable <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 200 ns;
                iEnable <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                iData <= "11011101";
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                iEnable <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 200 ns;
                iEnable <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 200 ns;
                iEnable <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 200 ns;
                iEnable <= '1';
                -- -------------------------------------
                WAIT FOR 500 ns;

            END PROCESS;

    END testbench_arch;

