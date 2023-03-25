--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TBW.vhw
-- /___/   /\     Timestamp : Thu Jan 06 12:00:44 2022
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TBW
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

ENTITY TBW IS
END TBW;

ARCHITECTURE testbench_arch OF TBW IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT functie
        PORT (
            DATAIN : In std_logic_vector (3 DownTo 0);
            ENABLE : In std_logic;
            SEL : In std_logic_vector (1 DownTo 0);
            Y : Out std_logic
        );
    END COMPONENT;

    SIGNAL DATAIN : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL ENABLE : std_logic := '0';
    SIGNAL SEL : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL Y : std_logic := '0';

    BEGIN
        UUT : functie
        PORT MAP (
            DATAIN => DATAIN,
            ENABLE => ENABLE,
            SEL => SEL,
            Y => Y
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                ENABLE <= '1';
                DATAIN <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                DATAIN <= "1100";
                SEL <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                DATAIN <= "1001";
                SEL <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                DATAIN <= "0001";
                SEL <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                DATAIN <= "1110";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                DATAIN <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                ENABLE <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                DATAIN <= "1010";
                -- -------------------------------------
                WAIT FOR 200 ns;

            END PROCESS;

    END testbench_arch;

