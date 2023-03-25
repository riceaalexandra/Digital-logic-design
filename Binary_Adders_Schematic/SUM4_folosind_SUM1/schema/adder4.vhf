--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : adder4.vhf
-- /___/   /\     Timestamp : 01/11/2022 15:17:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w "D:/SUM4 folosind SUM1- Ricea Alexandra/schema/adder4.sch" adder4.vhf
--Design Name: adder4
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity adder4 is
   port ( a    : in    std_logic_vector (3 downto 0); 
          b    : in    std_logic_vector (3 downto 0); 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          s    : out   std_logic_vector (3 downto 0));
end adder4;

architecture BEHAVIORAL of adder4 is
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_23 : std_logic;
   component adder1
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             Cin  : in    std_logic; 
             Cout : out   std_logic; 
             S    : out   std_logic);
   end component;
   
begin
   XLXI_1 : adder1
      port map (A=>a(3),
                B=>b(3),
                Cin=>XLXN_20,
                Cout=>Cout,
                S=>s(3));
   
   XLXI_2 : adder1
      port map (A=>a(2),
                B=>b(2),
                Cin=>XLXN_21,
                Cout=>XLXN_20,
                S=>s(2));
   
   XLXI_3 : adder1
      port map (A=>a(1),
                B=>b(1),
                Cin=>XLXN_23,
                Cout=>XLXN_21,
                S=>s(1));
   
   XLXI_4 : adder1
      port map (A=>a(0),
                B=>b(0),
                Cin=>Cin,
                Cout=>XLXN_23,
                S=>s(0));
   
end BEHAVIORAL;


