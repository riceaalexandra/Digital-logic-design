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
-- /___/   /\     Timestamp : Sun Apr 10 23:05:38 2022
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

    COMPONENT reg7
        PORT (
            iClk : In std_logic;
            iReset : In std_logic;
            iSens : In std_logic;
            iLoad : In std_logic;
            iDataddr : In std_logic;
            iaData : In std_logic_vector (7 DownTo 0);
            oaQ : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iReset : std_logic := '0';
    SIGNAL iSens : std_logic := '0';
    SIGNAL iLoad : std_logic := '0';
    SIGNAL iDataddr : std_logic := '0';
    SIGNAL iaData : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaQ : std_logic_vector (7 DownTo 0) := "00000000";

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.4;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : reg7
        PORT MAP (
            iClk => iClk,
            iReset => iReset,
            iSens => iSens,
            iLoad => iLoad,
            iDataddr => iDataddr,
            iaData => iaData,
            oaQ => oaQ
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
                iReset <= '1';
                iDataddr <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  70ns
                WAIT FOR 50 ns;
                iReset <= '0';
                iaData <= "11111111";
                -- -------------------------------------
                -- -------------  Current Time:  120ns
                WAIT FOR 50 ns;
                iLoad <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  170ns
                WAIT FOR 50 ns;
                iLoad <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  220ns
                WAIT FOR 50 ns;
                iDataddr <= '0';
                iaData <= "11101110";
                -- -------------------------------------
                -- -------------  Current Time:  370ns
                WAIT FOR 150 ns;
                iaData <= "11011101";
                -- -------------------------------------
                -- -------------  Current Time:  420ns
                WAIT FOR 50 ns;
                iSens <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  570ns
                WAIT FOR 150 ns;
                iaData <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  720ns
                WAIT FOR 150 ns;
                iaData <= "10111011";
                -- -------------------------------------
                -- -------------  Current Time:  870ns
                WAIT FOR 150 ns;
                iaData <= "10101010";
                -- -------------------------------------
                WAIT FOR 180 ns;

            END PROCESS;

    END testbench_arch;

