--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: adder4_timesim.vhd
-- /___/   /\     Timestamp: Tue Jan 11 15:36:09 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf adder4.pcf -rpw 100 -tpw 0 -ar Structure -tm adder4 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim adder4.ncd adder4_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: adder4.ncd
-- Output file	: D:\SUM4 folosind SUM1- Ricea Alexandra\schema\netgen\par\adder4_timesim.vhd
-- # of Entities	: 1
-- Design Name	: adder4
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

entity adder4 is
  port (
    Cout : out STD_LOGIC; 
    Cin : in STD_LOGIC := 'X'; 
    s : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end adder4;

architecture Structure of adder4 is
  signal a_0_IBUF_0 : STD_LOGIC; 
  signal a_1_IBUF_1 : STD_LOGIC; 
  signal a_2_IBUF_2 : STD_LOGIC; 
  signal a_3_IBUF_3 : STD_LOGIC; 
  signal b_0_IBUF_4 : STD_LOGIC; 
  signal b_1_IBUF_5 : STD_LOGIC; 
  signal b_2_IBUF_6 : STD_LOGIC; 
  signal b_3_IBUF_7 : STD_LOGIC; 
  signal Cin_IBUF_8 : STD_LOGIC; 
  signal XLXN_20 : STD_LOGIC; 
  signal XLXN_21_0 : STD_LOGIC; 
  signal XLXN_23 : STD_LOGIC; 
  signal s_0_O : STD_LOGIC; 
  signal s_1_O : STD_LOGIC; 
  signal s_2_O : STD_LOGIC; 
  signal s_3_O : STD_LOGIC; 
  signal Cout_O : STD_LOGIC; 
  signal a_0_INBUF : STD_LOGIC; 
  signal a_1_INBUF : STD_LOGIC; 
  signal a_2_INBUF : STD_LOGIC; 
  signal a_3_INBUF : STD_LOGIC; 
  signal b_0_INBUF : STD_LOGIC; 
  signal b_1_INBUF : STD_LOGIC; 
  signal b_2_INBUF : STD_LOGIC; 
  signal b_3_INBUF : STD_LOGIC; 
  signal Cin_INBUF : STD_LOGIC; 
  signal s_3_OBUF_9 : STD_LOGIC; 
  signal XLXN_20_pack_1 : STD_LOGIC; 
  signal s_2_OBUF_10 : STD_LOGIC; 
  signal s_1_OBUF_11 : STD_LOGIC; 
  signal XLXN_21 : STD_LOGIC; 
  signal XLXN_23_pack_1 : STD_LOGIC; 
  signal s_0_OBUF_12 : STD_LOGIC; 
  signal Cout_OBUF_13 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  s_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => s_0_O,
      O => s(0)
    );
  s_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => s_1_O,
      O => s(1)
    );
  s_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD241"
    )
    port map (
      I => s_2_O,
      O => s(2)
    );
  s_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => s_3_O,
      O => s(3)
    );
  Cout_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => Cout_O,
      O => Cout
    );
  a_0_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(0),
      O => a_0_INBUF
    );
  a_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_0_INBUF,
      O => a_0_IBUF_0
    );
  a_1_IBUF : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(1),
      O => a_1_INBUF
    );
  a_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_1_INBUF,
      O => a_1_IBUF_1
    );
  a_2_IBUF : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(2),
      O => a_2_INBUF
    );
  a_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_2_INBUF,
      O => a_2_IBUF_2
    );
  a_3_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(3),
      O => a_3_INBUF
    );
  a_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_3_INBUF,
      O => a_3_IBUF_3
    );
  b_0_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(0),
      O => b_0_INBUF
    );
  b_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_0_INBUF,
      O => b_0_IBUF_4
    );
  b_1_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(1),
      O => b_1_INBUF
    );
  b_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_1_INBUF,
      O => b_1_IBUF_5
    );
  b_2_IBUF : X_BUF
    generic map(
      LOC => "PAD239",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(2),
      O => b_2_INBUF
    );
  b_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD239",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_2_INBUF,
      O => b_2_IBUF_6
    );
  b_3_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(3),
      O => b_3_INBUF
    );
  b_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_3_INBUF,
      O => b_3_IBUF_7
    );
  Cin_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cin,
      O => Cin_INBUF
    );
  Cin_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cin_INBUF,
      O => Cin_IBUF_8
    );
  s_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y44",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXN_20_pack_1,
      O => XLXN_20
    );
  XLXI_2_XLXI_5 : X_LUT4
    generic map(
      INIT => X"EE88",
      LOC => "SLICE_X37Y44"
    )
    port map (
      ADR0 => XLXN_21_0,
      ADR1 => b_2_IBUF_6,
      ADR2 => VCC,
      ADR3 => a_2_IBUF_2,
      O => XLXN_20_pack_1
    );
  XLXI_2_XLXI_7 : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X5Y38"
    )
    port map (
      ADR0 => b_2_IBUF_6,
      ADR1 => XLXN_21_0,
      ADR2 => a_2_IBUF_2,
      ADR3 => VCC,
      O => s_2_OBUF_10
    );
  XLXI_3_XLXI_7 : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X36Y0"
    )
    port map (
      ADR0 => b_1_IBUF_5,
      ADR1 => a_1_IBUF_1,
      ADR2 => XLXN_23,
      ADR3 => VCC,
      O => s_1_OBUF_11
    );
  XLXN_21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXN_21,
      O => XLXN_21_0
    );
  XLXN_21_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXN_23_pack_1,
      O => XLXN_23
    );
  XLXI_4_XLXI_5 : X_LUT4
    generic map(
      INIT => X"E8E8",
      LOC => "SLICE_X36Y1"
    )
    port map (
      ADR0 => a_0_IBUF_0,
      ADR1 => b_0_IBUF_4,
      ADR2 => Cin_IBUF_8,
      ADR3 => VCC,
      O => XLXN_23_pack_1
    );
  XLXI_4_XLXI_7 : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X24Y0"
    )
    port map (
      ADR0 => b_0_IBUF_4,
      ADR1 => Cin_IBUF_8,
      ADR2 => VCC,
      ADR3 => a_0_IBUF_0,
      O => s_0_OBUF_12
    );
  XLXI_1_XLXI_5 : X_LUT4
    generic map(
      INIT => X"FAA0",
      LOC => "SLICE_X50Y55"
    )
    port map (
      ADR0 => b_3_IBUF_7,
      ADR1 => VCC,
      ADR2 => a_3_IBUF_3,
      ADR3 => XLXN_20,
      O => Cout_OBUF_13
    );
  XLXI_1_XLXI_7 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X37Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => b_3_IBUF_7,
      ADR2 => XLXN_20,
      ADR3 => a_3_IBUF_3,
      O => s_3_OBUF_9
    );
  XLXI_3_XLXI_5 : X_LUT4
    generic map(
      INIT => X"E8E8",
      LOC => "SLICE_X36Y1"
    )
    port map (
      ADR0 => b_1_IBUF_5,
      ADR1 => a_1_IBUF_1,
      ADR2 => XLXN_23,
      ADR3 => VCC,
      O => XLXN_21
    );
  s_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 757 ps
    )
    port map (
      I => s_0_OBUF_12,
      O => s_0_O
    );
  s_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 757 ps
    )
    port map (
      I => s_1_OBUF_11,
      O => s_1_O
    );
  s_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD241",
      PATHPULSE => 757 ps
    )
    port map (
      I => s_2_OBUF_10,
      O => s_2_O
    );
  s_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 757 ps
    )
    port map (
      I => s_3_OBUF_9,
      O => s_3_O
    );
  Cout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cout_OBUF_13,
      O => Cout_O
    );
  NlwBlock_adder4_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

