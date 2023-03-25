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
-- /___/   /\     Timestamp : Sun Apr 10 23:19:13 2022
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

    COMPONENT RegTL
        PORT (
            iValid : In std_logic;
            iOC : In std_logic;
            iaData : In std_logic_vector (7 DownTo 0);
            oaQ : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iValid : std_logic := '0';
    SIGNAL iOC : std_logic := '0';
    SIGNAL iaData : std_logic_vector (7 DownTo 0) := "10101010";
    SIGNAL oaQ : std_logic_vector (7 DownTo 0) := "00000000";

    BEGIN
        UUT : RegTL
        PORT MAP (
            iValid => iValid,
            iOC => iOC,
            iaData => iaData,
            oaQ => oaQ
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  120ns
                WAIT FOR 120 ns;
                iValid <= '1';
                iaData <= "01010101";
                -- -------------------------------------
                -- -------------  Current Time:  160ns
                WAIT FOR 40 ns;
                iOC <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  240ns
                WAIT FOR 80 ns;
                iValid <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  280ns
                WAIT FOR 40 ns;
                iaData <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  360ns
                WAIT FOR 80 ns;
                iValid <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 40 ns;
                iaData <= "11111111";
                -- -------------------------------------
                -- -------------  Current Time:  480ns
                WAIT FOR 80 ns;
                iValid <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  520ns
                WAIT FOR 40 ns;
                iOC <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  560ns
                WAIT FOR 40 ns;
                iaData <= "11101110";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 40 ns;
                iValid <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  680ns
                WAIT FOR 80 ns;
                iOC <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  720ns
                WAIT FOR 40 ns;
                iValid <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  760ns
                WAIT FOR 40 ns;
                iaData <= "00110011";
                -- -------------------------------------
                -- -------------  Current Time:  840ns
                WAIT FOR 80 ns;
                iValid <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  960ns
                WAIT FOR 120 ns;
                iValid <= '0';
                -- -------------------------------------
                WAIT FOR 40 ns;

            END PROCESS;

    END testbench_arch;

