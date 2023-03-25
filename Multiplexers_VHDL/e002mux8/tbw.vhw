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
-- /___/   /\     Timestamp : Sun Feb 27 17:08:42 2022
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

    COMPONENT e002mux8
        PORT (
            iaSel : In std_logic_vector (2 DownTo 0);
            iaData : In std_logic_vector (7 DownTo 0);
            iEnable : In std_logic;
            oY : Out std_logic
        );
    END COMPONENT;

    SIGNAL iaSel : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL iaData : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL iEnable : std_logic := '0';
    SIGNAL oY : std_logic := '0';

    BEGIN
        UUT : e002mux8
        PORT MAP (
            iaSel => iaSel,
            iaData => iaData,
            iEnable => iEnable,
            oY => oY
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                iEnable <= '1';
                iaData <= "01011111";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                iaSel <= "001";
                iaData <= "11001000";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                iaSel <= "010";
                iaData <= "10010001";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                iaSel <= "011";
                iaData <= "00011101";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                iaSel <= "100";
                iaData <= "11101010";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                iaSel <= "101";
                iaData <= "01110011";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                iaSel <= "110";
                iaData <= "01110100";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                iaSel <= "111";
                iaData <= "10101000";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                iEnable <= '0';
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

