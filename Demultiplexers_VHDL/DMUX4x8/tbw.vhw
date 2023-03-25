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
-- /___/   /\     Timestamp : Tue Mar 08 10:17:10 2022
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

    COMPONENT DMUX4x8
        PORT (
            iE0 : In std_logic;
            iE1 : In std_logic;
            iaAdr : In std_logic_vector (1 DownTo 0);
            iaData : In std_logic_vector (7 DownTo 0);
            oaY0 : Out std_logic_vector (7 DownTo 0);
            oaY1 : Out std_logic_vector (7 DownTo 0);
            oaY2 : Out std_logic_vector (7 DownTo 0);
            oaY3 : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iE0 : std_logic := '0';
    SIGNAL iE1 : std_logic := '0';
    SIGNAL iaAdr : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL iaData : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaY0 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaY1 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaY2 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaY3 : std_logic_vector (7 DownTo 0) := "00000000";

    BEGIN
        UUT : DMUX4x8
        PORT MAP (
            iE0 => iE0,
            iE1 => iE1,
            iaAdr => iaAdr,
            iaData => iaData,
            oaY0 => oaY0,
            oaY1 => oaY1,
            oaY2 => oaY2,
            oaY3 => oaY3
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                iE0 <= '1';
                iE1 <= '1';
                iaData <= "01011111";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                iE0 <= '0';
                iaAdr <= "01";
                iaData <= "11001000";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                iaAdr <= "10";
                iaData <= "10010001";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                iaAdr <= "11";
                iaData <= "00011101";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                iaData <= "11101010";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                iaData <= "01110011";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                iaData <= "01110100";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                iaData <= "10101000";
                -- -------------------------------------
                WAIT FOR 200 ns;

            END PROCESS;

    END testbench_arch;

