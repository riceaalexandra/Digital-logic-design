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
-- /___/   /\     Timestamp : Mon Mar 14 19:14:19 2022
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

    COMPONENT e011sumbinel
        PORT (
            iA : In std_logic;
            iB : In std_logic;
            iC : In std_logic;
            oS : Out std_logic;
            oC : Out std_logic
        );
    END COMPONENT;

    SIGNAL iA : std_logic := '0';
    SIGNAL iB : std_logic := '0';
    SIGNAL iC : std_logic := '0';
    SIGNAL oS : std_logic := '0';
    SIGNAL oC : std_logic := '0';

    BEGIN
        UUT : e011sumbinel
        PORT MAP (
            iA => iA,
            iB => iB,
            iC => iC,
            oS => oS,
            oC => oC
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                iA <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                iA <= '0';
                iB <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                iA <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                iA <= '0';
                iB <= '0';
                iC <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                iA <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                iA <= '0';
                iB <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                iA <= '1';
                -- -------------------------------------
                WAIT FOR 300 ns;

            END PROCESS;

    END testbench_arch;

