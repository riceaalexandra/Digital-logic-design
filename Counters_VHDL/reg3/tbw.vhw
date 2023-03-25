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
-- /___/   /\     Timestamp : Sat Apr 09 21:24:44 2022
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

    COMPONENT reg3
        PORT (
            iClk : In std_logic;
            iData : In std_logic;
            oQ : Out std_logic
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iData : std_logic := '0';
    SIGNAL oQ : std_logic := '0';

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.4;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : reg3
        PORT MAP (
            iClk => iClk,
            iData => iData,
            oQ => oQ
        );

        PROCESS    -- clock process for iClk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                iClk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                iClk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  20ns
                WAIT FOR 20 ns;
                iData <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  120ns
                WAIT FOR 100 ns;
                iData <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  170ns
                WAIT FOR 50 ns;
                iData <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  220ns
                WAIT FOR 50 ns;
                iData <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  320ns
                WAIT FOR 100 ns;
                iData <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  470ns
                WAIT FOR 150 ns;
                iData <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  570ns
                WAIT FOR 100 ns;
                iData <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  670ns
                WAIT FOR 100 ns;
                iData <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  770ns
                WAIT FOR 100 ns;
                iData <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  870ns
                WAIT FOR 100 ns;
                iData <= '0';
                -- -------------------------------------
                WAIT FOR 180 ns;

            END PROCESS;

    END testbench_arch;

