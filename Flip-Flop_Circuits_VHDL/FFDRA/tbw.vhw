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
-- /___/   /\     Timestamp : Sun Mar 27 23:25:19 2022
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

    COMPONENT FFDRA
        PORT (
            iClk : In std_logic;
            iD : In std_logic;
            iClear : In std_logic;
            iPresent : In std_logic;
            oQ : Out std_logic
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iD : std_logic := '0';
    SIGNAL iClear : std_logic := '0';
    SIGNAL iPresent : std_logic := '0';
    SIGNAL oQ : std_logic := '0';

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : FFDRA
        PORT MAP (
            iClk => iClk,
            iD => iD,
            iClear => iClear,
            iPresent => iPresent,
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
                -- -------------  Current Time:  15ns
                WAIT FOR 15 ns;
                iClear <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  65ns
                WAIT FOR 50 ns;
                iClear <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  115ns
                WAIT FOR 50 ns;
                iD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  265ns
                WAIT FOR 150 ns;
                iD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  415ns
                WAIT FOR 150 ns;
                iD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  565ns
                WAIT FOR 150 ns;
                iD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  765ns
                WAIT FOR 200 ns;
                iPresent <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  815ns
                WAIT FOR 50 ns;
                iPresent <= '0';
                -- -------------------------------------
                WAIT FOR 235 ns;

            END PROCESS;

    END testbench_arch;

