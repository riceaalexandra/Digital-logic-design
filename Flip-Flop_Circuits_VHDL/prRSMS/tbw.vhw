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
-- /___/   /\     Timestamp : Sun Mar 27 21:27:54 2022
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

    COMPONENT prRSMS
        PORT (
            iReset : In std_logic;
            iSet : In std_logic;
            iE : In std_logic;
            oQ1 : Out std_logic;
            oQN1 : Out std_logic
        );
    END COMPONENT;

    SIGNAL iReset : std_logic := '0';
    SIGNAL iSet : std_logic := '0';
    SIGNAL iE : std_logic := '0';
    SIGNAL oQ1 : std_logic := '0';
    SIGNAL oQN1 : std_logic := '0';

    BEGIN
        UUT : prRSMS
        PORT MAP (
            iReset => iReset,
            iSet => iSet,
            iE => iE,
            oQ1 => oQ1,
            oQN1 => oQN1
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  40ns
                WAIT FOR 40 ns;
                iSet <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  60ns
                WAIT FOR 20 ns;
                iSet <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  120ns
                WAIT FOR 60 ns;
                iE <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  140ns
                WAIT FOR 20 ns;
                iSet <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  220ns
                WAIT FOR 80 ns;
                iSet <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  280ns
                WAIT FOR 60 ns;
                iReset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  360ns
                WAIT FOR 80 ns;
                iE <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  380ns
                WAIT FOR 20 ns;
                iReset <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  560ns
                WAIT FOR 180 ns;
                iSet <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  580ns
                WAIT FOR 20 ns;
                iE <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 220 ns;
                iE <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  840ns
                WAIT FOR 40 ns;
                iSet <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  920ns
                WAIT FOR 80 ns;
                iReset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  960ns
                WAIT FOR 40 ns;
                iReset <= '0';
                -- -------------------------------------
                WAIT FOR 40 ns;

            END PROCESS;

    END testbench_arch;

