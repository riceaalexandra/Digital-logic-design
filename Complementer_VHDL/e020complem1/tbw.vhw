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
-- /___/   /\     Timestamp : Sun Mar 20 13:25:10 2022
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

    COMPONENT e020complem1
        PORT (
            iaA : In std_logic_vector (7 DownTo 0);
            oaY : Out std_logic_vector (7 DownTo 0);
            iComplement : In std_logic
        );
    END COMPONENT;

    SIGNAL iaA : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL oaY : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL iComplement : std_logic := '0';

    BEGIN
        UUT : e020complem1
        PORT MAP (
            iaA => iaA,
            oaY => oaY,
            iComplement => iComplement
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                iComplement <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  180ns
                WAIT FOR 80 ns;
                iaA <= "10101010";
                -- -------------------------------------
                -- -------------  Current Time:  260ns
                WAIT FOR 80 ns;
                iComplement <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  340ns
                WAIT FOR 80 ns;
                iaA <= "01010101";
                -- -------------------------------------
                -- -------------  Current Time:  440ns
                WAIT FOR 100 ns;
                iComplement <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 60 ns;
                iaA <= "11111111";
                -- -------------------------------------
                -- -------------  Current Time:  580ns
                WAIT FOR 80 ns;
                iComplement <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  660ns
                WAIT FOR 80 ns;
                iaA <= "11001100";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 140 ns;
                iComplement <= '1';
                -- -------------------------------------
                WAIT FOR 200 ns;

            END PROCESS;

    END testbench_arch;

