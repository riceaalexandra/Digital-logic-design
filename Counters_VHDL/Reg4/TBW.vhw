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
-- /___/   /\     Timestamp : Sun Apr 10 23:13:51 2022
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TBW
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY TBW IS
END TBW;

ARCHITECTURE testbench_arch OF TBW IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Reg4
        PORT (
            iClock : In std_logic;
            iC1 : In std_logic;
            iC2 : In std_logic;
            iISDD : In std_logic;
            iISDS : In std_logic;
            iaData : In std_logic_vector (0 To 7);
            oaQ : Out std_logic_vector (0 To 7)
        );
    END COMPONENT;

    SIGNAL iClock : std_logic := '0';
    SIGNAL iC1 : std_logic := '1';
    SIGNAL iC2 : std_logic := '1';
    SIGNAL iISDD : std_logic := '0';
    SIGNAL iISDS : std_logic := '0';
    SIGNAL iaData : std_logic_vector (0 To 7) := "00000000";
    SIGNAL oaQ : std_logic_vector (0 To 7) := "00000000";

    constant PERIOD : time := 50 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : Reg4
        PORT MAP (
            iClock => iClock,
            iC1 => iC1,
            iC2 => iC2,
            iISDD => iISDD,
            iISDS => iISDS,
            iaData => iaData,
            oaQ => oaQ
        );

        PROCESS    -- clock process for iClock
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                iClock <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                iClock <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  15ns
                WAIT FOR 15 ns;
                iC1 <= '0';
                iC2 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  115ns
                WAIT FOR 100 ns;
                iISDD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  165ns
                WAIT FOR 50 ns;
                iC2 <= '1';
                iISDS <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  215ns
                WAIT FOR 50 ns;
                iaData <= "10101010";
                -- -------------------------------------
                -- -------------  Current Time:  315ns
                WAIT FOR 100 ns;
                iISDD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  365ns
                WAIT FOR 50 ns;
                iaData <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  415ns
                WAIT FOR 50 ns;
                iC1 <= '1';
                iC2 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  515ns
                WAIT FOR 100 ns;
                iISDD <= '1';
                iISDS <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  815ns
                WAIT FOR 300 ns;
                iC2 <= '1';
                -- -------------------------------------
                WAIT FOR 235 ns;

            END PROCESS;

    END testbench_arch;

