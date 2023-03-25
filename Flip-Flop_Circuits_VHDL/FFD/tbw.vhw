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
-- /___/   /\     Timestamp : Sun Mar 27 22:38:33 2022
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

    COMPONENT FFD
        PORT (
            iClk : In std_logic;
            iD : In std_logic;
            oQ : Out std_logic
        );
    END COMPONENT;

    SIGNAL iClk : std_logic := '0';
    SIGNAL iD : std_logic := '0';
    SIGNAL oQ : std_logic := '0';

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : FFD
        PORT MAP (
            iClk => iClk,
            iD => iD,
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
                -- -------------  Current Time:  65ns
                WAIT FOR 65 ns;
                iD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  215ns
                WAIT FOR 150 ns;
                iD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  365ns
                WAIT FOR 150 ns;
                iD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  515ns
                WAIT FOR 150 ns;
                iD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  765ns
                WAIT FOR 250 ns;
                iD <= '1';
                -- -------------------------------------
                WAIT FOR 285 ns;

            END PROCESS;

    END testbench_arch;

