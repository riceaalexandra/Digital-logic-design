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
-- /___/   /\     Timestamp : Sun Mar 27 22:26:59 2022
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

    COMPONENT Dlatch3
        PORT (
            iValid : In std_logic;
            iData0 : In std_logic;
            iData1 : In std_logic;
            iSel : In std_logic;
            iReset : In std_logic;
            oZ : Out std_logic
        );
    END COMPONENT;

    SIGNAL iValid : std_logic := '0';
    SIGNAL iData0 : std_logic := '0';
    SIGNAL iData1 : std_logic := '0';
    SIGNAL iSel : std_logic := '0';
    SIGNAL iReset : std_logic := '1';
    SIGNAL oZ : std_logic := '0';

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : Dlatch3
        PORT MAP (
            iValid => iValid,
            iData0 => iData0,
            iData1 => iData1,
            iSel => iSel,
            iReset => iReset,
            oZ => oZ
        );

        PROCESS    -- clock process for iValid
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                iValid <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                iValid <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  5ns
                WAIT FOR 5 ns;
                iReset <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  45ns
                WAIT FOR 40 ns;
                iData0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  125ns
                WAIT FOR 80 ns;
                iData0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  205ns
                WAIT FOR 80 ns;
                iData1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  245ns
                WAIT FOR 40 ns;
                iSel <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  285ns
                WAIT FOR 40 ns;
                iData1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  325ns
                WAIT FOR 40 ns;
                iData0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  565ns
                WAIT FOR 240 ns;
                iData0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  645ns
                WAIT FOR 80 ns;
                iData1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  685ns
                WAIT FOR 40 ns;
                iSel <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  725ns
                WAIT FOR 40 ns;
                iData1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  765ns
                WAIT FOR 40 ns;
                iData0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  885ns
                WAIT FOR 120 ns;
                iData0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  925ns
                WAIT FOR 40 ns;
                iData1 <= '1';
                -- -------------------------------------
                WAIT FOR 115 ns;

            END PROCESS;

    END testbench_arch;

