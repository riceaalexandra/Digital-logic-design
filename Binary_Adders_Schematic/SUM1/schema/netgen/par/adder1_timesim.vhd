--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: adder1_timesim.vhd
-- /___/   /\     Timestamp: Tue Jan 11 13:26:54 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf adder1.pcf -rpw 100 -tpw 0 -ar Structure -tm adder1 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim adder1.ncd adder1_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: adder1.ncd
-- Output file	: D:\SUM1-Ricea- Alexandra\schema\netgen\par\adder1_timesim.vhd
-- # of Entities	: 1
-- Design Name	: adder1
-- Xilinx	: C:\Xilinx92i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity adder1 is
  port (
    Cout : out STD_LOGIC; 
    A : in STD_LOGIC := 'X'; 
    B : in STD_LOGIC := 'X'; 
    S : out STD_LOGIC; 
    Cin : in STD_LOGIC := 'X' 
  );
end adder1;

architecture Structure of adder1 is
  signal A_IBUF_0 : STD_LOGIC; 
  signal B_IBUF_1 : STD_LOGIC; 
  signal Cin_IBUF_2 : STD_LOGIC; 
  signal Cout_O : STD_LOGIC; 
  signal A_INBUF : STD_LOGIC; 
  signal B_INBUF : STD_LOGIC; 
  signal S_O : STD_LOGIC; 
  signal Cin_INBUF : STD_LOGIC; 
  signal S_OBUF_3 : STD_LOGIC; 
  signal Cout_OBUF_4 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  Cout_OBUF : X_OBUF
    generic map(
      LOC => "PAD180"
    )
    port map (
      I => Cout_O,
      O => Cout
    );
  A_IBUF : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 757 ps
    )
    port map (
      I => A,
      O => A_INBUF
    );
  A_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_INBUF,
      O => A_IBUF_0
    );
  B_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 757 ps
    )
    port map (
      I => B,
      O => B_INBUF
    );
  B_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_INBUF,
      O => B_IBUF_1
    );
  S_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => S_O,
      O => S
    );
  Cin_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cin,
      O => Cin_INBUF
    );
  Cin_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cin_INBUF,
      O => Cin_IBUF_2
    );
  XLXI_5 : X_LUT4
    generic map(
      INIT => X"E8E8",
      LOC => "SLICE_X18Y0"
    )
    port map (
      ADR0 => A_IBUF_0,
      ADR1 => Cin_IBUF_2,
      ADR2 => B_IBUF_1,
      ADR3 => VCC,
      O => Cout_OBUF_4
    );
  XLXI_7 : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X18Y0"
    )
    port map (
      ADR0 => A_IBUF_0,
      ADR1 => Cin_IBUF_2,
      ADR2 => B_IBUF_1,
      ADR3 => VCC,
      O => S_OBUF_3
    );
  Cout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cout_OBUF_4,
      O => Cout_O
    );
  S_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_OBUF_3,
      O => S_O
    );
  NlwBlock_adder1_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

