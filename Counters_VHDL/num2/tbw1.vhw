--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tbw1.vhw
-- /___/   /\     Timestamp : Sat May 07 23:34:01 2022
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbw1
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tbw1 IS
END tbw1;

ARCHITECTURE testbench_arch OF tbw1 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT num2
        PORT (
            iClk : In std_logic;
            iClear : In std_logic;
            iLoad : In std_logic;
            iEnable1 : In std_logic;
            iEnable2 : In std_logic;
            iaData : In std_logic_vector (3 DownTo 0);
            oQ : Out std_logic;
            oaData : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iClear : std_logic := '1';
    SIGNAL iLoad : std_logic := '0';
    SIGNAL iEnable1 : std_logic := '0';
    SIGNAL iEnable2 : std_logic := '0';
    SIGNAL iaData : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL oQ : std_logic := '0';
    SIGNAL oaData : std_logic_vector (3 DownTo 0) := "0000";

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : num2
        PORT MAP (
            iClk => iClk,
            iClear => iClear,
            iLoad => iLoad,
            iEnable1 => iEnable1,
            iEnable2 => iEnable2,
            iaData => iaData,
            oQ => oQ,
            oaData => oaData
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
                -- -------------  Current Time:  10ns
                WAIT FOR 10 ns;
                iClear <= '0';
                iEnable1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  50ns
                WAIT FOR 40 ns;
                iEnable2 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  970ns
                WAIT FOR 920 ns;
                iEnable1 <= '0';
                -- -------------------------------------
                WAIT FOR 70 ns;

            END PROCESS;

    END testbench_arch;

