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
-- /___/   /\     Timestamp : Sun Mar 20 13:46:34 2022
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

    COMPONENT prcf
        PORT (
            iC : In std_logic;
            iaData : In std_logic_vector (7 DownTo 0);
            oaY : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iC : std_logic := '0';
    SIGNAL iaData : std_logic_vector (7 DownTo 0) := "10101010";
    SIGNAL oaY : std_logic_vector (7 DownTo 0) := "00000000";

    BEGIN
        UUT : prcf
        PORT MAP (
            iC => iC,
            iaData => iaData,
            oaY => oaY
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  240ns
                WAIT FOR 240 ns;
                iC <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 260 ns;
                iaData <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  760ns
                WAIT FOR 260 ns;
                iaData <= "01010101";
                -- -------------------------------------
                WAIT FOR 240 ns;

            END PROCESS;

    END testbench_arch;

