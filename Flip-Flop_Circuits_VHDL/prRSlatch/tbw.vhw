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
-- /___/   /\     Timestamp : Sun Mar 27 20:50:16 2022
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

    COMPONENT prRSlatch
        PORT (
            iE : In std_logic;
            iReset : In std_logic;
            iSet : In std_logic;
            oQ : Out std_logic;
            oQN : Out std_logic
        );
    END COMPONENT;

    SIGNAL iE : std_logic := '0';
    SIGNAL iReset : std_logic := '0';
    SIGNAL iSet : std_logic := '0';
    SIGNAL oQ : std_logic := '0';
    SIGNAL oQN : std_logic := '0';

    BEGIN
        UUT : prRSlatch
        PORT MAP (
            iE => iE,
            iReset => iReset,
            iSet => iSet,
            oQ => oQ,
            oQN => oQN
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  40ns
                WAIT FOR 40 ns;
                iReset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  120ns
                WAIT FOR 80 ns;
                iReset <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  240ns
                WAIT FOR 120 ns;
                iE <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  320ns
                WAIT FOR 80 ns;
                iReset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  440ns
                WAIT FOR 120 ns;
                iReset <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  540ns
                WAIT FOR 100 ns;
                iSet <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 60 ns;
                iReset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  640ns
                WAIT FOR 40 ns;
                iSet <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  680ns
                WAIT FOR 40 ns;
                iE <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  740ns
                WAIT FOR 60 ns;
                iReset <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  820ns
                WAIT FOR 80 ns;
                iSet <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  940ns
                WAIT FOR 120 ns;
                iSet <= '0';
                -- -------------------------------------
                WAIT FOR 60 ns;

            END PROCESS;

    END testbench_arch;

