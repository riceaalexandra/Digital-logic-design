--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : functie.vhf
-- /___/   /\     Timestamp : 01/06/2022 13:05:39
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w D:/SUM4-Ricea-Alexandra/schema/functie.sch functie.vhf
--Design Name: functie
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

entity ADD4_MXILINX_functie is
   port ( A0  : in    std_logic; 
          A1  : in    std_logic; 
          A2  : in    std_logic; 
          A3  : in    std_logic; 
          B0  : in    std_logic; 
          B1  : in    std_logic; 
          B2  : in    std_logic; 
          B3  : in    std_logic; 
          CI  : in    std_logic; 
          CO  : out   std_logic; 
          OFL : out   std_logic; 
          S0  : out   std_logic; 
          S1  : out   std_logic; 
          S2  : out   std_logic; 
          S3  : out   std_logic);
end ADD4_MXILINX_functie;

architecture BEHAVIORAL of ADD4_MXILINX_functie is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal C0       : std_logic;
   signal C1       : std_logic;
   signal C2       : std_logic;
   signal C2O      : std_logic;
   signal dummy    : std_logic;
   signal I0       : std_logic;
   signal I1       : std_logic;
   signal I2       : std_logic;
   signal I3       : std_logic;
   signal CO_DUMMY : std_logic;
   component MUXCY_L
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_L : component is "BLACK_BOX";
   
   component MUXCY
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY : component is "BLACK_BOX";
   
   component MUXCY_D
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_D : component is "BLACK_BOX";
   
   component XORCY
      port ( CI : in    std_logic; 
             LI : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XORCY : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_55 : label is "X0Y0";
   attribute RLOC of I_36_58 : label is "X0Y1";
   attribute RLOC of I_36_62 : label is "X0Y1";
   attribute RLOC of I_36_111 : label is "X0Y0";
   attribute RLOC of I_36_175 : label is "X0Y0";
   attribute RLOC of I_36_178 : label is "X0Y0";
   attribute RLOC of I_36_182 : label is "X0Y1";
   attribute RLOC of I_36_206 : label is "X0Y1";
begin
   CO <= CO_DUMMY;
   I_36_55 : MUXCY_L
      port map (CI=>C0,
                DI=>A1,
                S=>I1,
                LO=>C1);
   
   I_36_58 : MUXCY
      port map (CI=>C2,
                DI=>A3,
                S=>I3,
                O=>CO_DUMMY);
   
   I_36_62 : MUXCY_D
      port map (CI=>C1,
                DI=>A2,
                S=>I2,
                LO=>C2,
                O=>C2O);
   
   I_36_73 : XORCY
      port map (CI=>CI,
                LI=>I0,
                O=>S0);
   
   I_36_74 : XORCY
      port map (CI=>C0,
                LI=>I1,
                O=>S1);
   
   I_36_75 : XORCY
      port map (CI=>C2,
                LI=>I3,
                O=>S3);
   
   I_36_76 : XORCY
      port map (CI=>C1,
                LI=>I2,
                O=>S2);
   
   I_36_111 : MUXCY_L
      port map (CI=>CI,
                DI=>A0,
                S=>I0,
                LO=>C0);
   
   I_36_175 : FMAP
      port map (I1=>A1,
                I2=>B1,
                I3=>dummy,
                I4=>dummy,
                O=>I1);
   
   I_36_178 : FMAP
      port map (I1=>A0,
                I2=>B0,
                I3=>dummy,
                I4=>dummy,
                O=>I0);
   
   I_36_182 : FMAP
      port map (I1=>A2,
                I2=>B2,
                I3=>dummy,
                I4=>dummy,
                O=>I2);
   
   I_36_206 : FMAP
      port map (I1=>A3,
                I2=>B3,
                I3=>dummy,
                I4=>dummy,
                O=>I3);
   
   I_36_239 : XOR2
      port map (I0=>A0,
                I1=>B0,
                O=>I0);
   
   I_36_240 : XOR2
      port map (I0=>A1,
                I1=>B1,
                O=>I1);
   
   I_36_241 : XOR2
      port map (I0=>A2,
                I1=>B2,
                O=>I2);
   
   I_36_242 : XOR2
      port map (I0=>A3,
                I1=>B3,
                O=>I3);
   
   I_36_259 : XOR2
      port map (I0=>C2O,
                I1=>CO_DUMMY,
                O=>OFL);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity functie is
   port ( A    : in    std_logic_vector (3 downto 0); 
          B    : in    std_logic_vector (3 downto 0); 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          OFL  : out   std_logic; 
          S    : out   std_logic_vector (3 downto 0));
end functie;

architecture BEHAVIORAL of functie is
   attribute HU_SET     : string ;
   component ADD4_MXILINX_functie
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             B0  : in    std_logic; 
             B1  : in    std_logic; 
             B2  : in    std_logic; 
             B3  : in    std_logic; 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S0  : out   std_logic; 
             S1  : out   std_logic; 
             S2  : out   std_logic; 
             S3  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
begin
   XLXI_1 : ADD4_MXILINX_functie
      port map (A0=>A(0),
                A1=>A(1),
                A2=>A(2),
                A3=>A(3),
                B0=>B(0),
                B1=>B(1),
                B2=>B(2),
                B3=>B(3),
                CI=>Cin,
                CO=>Cout,
                OFL=>OFL,
                S0=>S(0),
                S1=>S(1),
                S2=>S(2),
                S3=>S(3));
   
end BEHAVIORAL;


