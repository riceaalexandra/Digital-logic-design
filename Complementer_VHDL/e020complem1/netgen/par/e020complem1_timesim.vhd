--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: e020complem1_timesim.vhd
-- /___/   /\     Timestamp: Sun Mar 20 13:16:58 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf e020complem1.pcf -rpw 100 -tpw 0 -ar Structure -tm e020complem1 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim e020complem1.ncd e020complem1_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: e020complem1.ncd
-- Output file	: D:\e020complem1\netgen\par\e020complem1_timesim.vhd
-- # of Entities	: 1
-- Design Name	: e020complem1
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

entity e020complem1 is
  port (
    iComplement : in STD_LOGIC := 'X'; 
    oaY : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    iaA : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end e020complem1;

architecture Structure of e020complem1 is
  signal iaA_0_IBUF_0 : STD_LOGIC; 
  signal iaA_1_IBUF_1 : STD_LOGIC; 
  signal iaA_2_IBUF_2 : STD_LOGIC; 
  signal iaA_3_IBUF_3 : STD_LOGIC; 
  signal iaA_4_IBUF_4 : STD_LOGIC; 
  signal iaA_5_IBUF_5 : STD_LOGIC; 
  signal iComplement_IBUF_6 : STD_LOGIC; 
  signal iaA_6_IBUF_7 : STD_LOGIC; 
  signal iaA_7_IBUF_8 : STD_LOGIC; 
  signal oaY_0_O : STD_LOGIC; 
  signal oaY_1_O : STD_LOGIC; 
  signal oaY_2_O : STD_LOGIC; 
  signal oaY_3_O : STD_LOGIC; 
  signal oaY_4_O : STD_LOGIC; 
  signal oaY_5_O : STD_LOGIC; 
  signal oaY_6_O : STD_LOGIC; 
  signal oaY_7_O : STD_LOGIC; 
  signal iaA_0_INBUF : STD_LOGIC; 
  signal iaA_1_INBUF : STD_LOGIC; 
  signal iaA_2_INBUF : STD_LOGIC; 
  signal iaA_3_INBUF : STD_LOGIC; 
  signal iaA_4_INBUF : STD_LOGIC; 
  signal iaA_5_INBUF : STD_LOGIC; 
  signal iComplement_INBUF : STD_LOGIC; 
  signal iaA_6_INBUF : STD_LOGIC; 
  signal iaA_7_INBUF : STD_LOGIC; 
  signal oaY_1_OBUF_9 : STD_LOGIC; 
  signal oaY_0_OBUF_10 : STD_LOGIC; 
  signal oaY_3_OBUF_11 : STD_LOGIC; 
  signal oaY_2_OBUF_12 : STD_LOGIC; 
  signal oaY_5_OBUF_13 : STD_LOGIC; 
  signal oaY_4_OBUF_14 : STD_LOGIC; 
  signal oaY_7_OBUF_15 : STD_LOGIC; 
  signal oaY_6_OBUF_16 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  oaY_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => oaY_0_O,
      O => oaY(0)
    );
  oaY_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => oaY_1_O,
      O => oaY(1)
    );
  oaY_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD251"
    )
    port map (
      I => oaY_2_O,
      O => oaY(2)
    );
  oaY_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD252"
    )
    port map (
      I => oaY_3_O,
      O => oaY(3)
    );
  oaY_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => oaY_4_O,
      O => oaY(4)
    );
  oaY_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => oaY_5_O,
      O => oaY(5)
    );
  oaY_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => oaY_6_O,
      O => oaY(6)
    );
  oaY_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => oaY_7_O,
      O => oaY(7)
    );
  iaA_0_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA(0),
      O => iaA_0_INBUF
    );
  iaA_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA_0_INBUF,
      O => iaA_0_IBUF_0
    );
  iaA_1_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA(1),
      O => iaA_1_INBUF
    );
  iaA_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA_1_INBUF,
      O => iaA_1_IBUF_1
    );
  iaA_2_IBUF : X_BUF
    generic map(
      LOC => "PAD253",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA(2),
      O => iaA_2_INBUF
    );
  iaA_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD253",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA_2_INBUF,
      O => iaA_2_IBUF_2
    );
  iaA_3_IBUF : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA(3),
      O => iaA_3_INBUF
    );
  iaA_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA_3_INBUF,
      O => iaA_3_IBUF_3
    );
  iaA_4_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA(4),
      O => iaA_4_INBUF
    );
  iaA_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA_4_INBUF,
      O => iaA_4_IBUF_4
    );
  iaA_5_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA(5),
      O => iaA_5_INBUF
    );
  iaA_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA_5_INBUF,
      O => iaA_5_IBUF_5
    );
  iComplement_IBUF : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 757 ps
    )
    port map (
      I => iComplement,
      O => iComplement_INBUF
    );
  iComplement_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 757 ps
    )
    port map (
      I => iComplement_INBUF,
      O => iComplement_IBUF_6
    );
  iaA_6_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA(6),
      O => iaA_6_INBUF
    );
  iaA_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA_6_INBUF,
      O => iaA_6_IBUF_7
    );
  iaA_7_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA(7),
      O => iaA_7_INBUF
    );
  iaA_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaA_7_INBUF,
      O => iaA_7_IBUF_8
    );
  oaY_0_1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X55Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iaA_0_IBUF_0,
      ADR2 => VCC,
      ADR3 => iComplement_IBUF_6,
      O => oaY_0_OBUF_10
    );
  oaY_2_1 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X0Y46"
    )
    port map (
      ADR0 => iaA_2_IBUF_2,
      ADR1 => VCC,
      ADR2 => iComplement_IBUF_6,
      ADR3 => VCC,
      O => oaY_2_OBUF_12
    );
  oaY_4_1 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X54Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iComplement_IBUF_6,
      ADR2 => iaA_4_IBUF_4,
      ADR3 => VCC,
      O => oaY_4_OBUF_14
    );
  oaY_6_1 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X26Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => iComplement_IBUF_6,
      ADR3 => iaA_6_IBUF_7,
      O => oaY_6_OBUF_16
    );
  oaY_1_1 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X55Y16"
    )
    port map (
      ADR0 => iaA_1_IBUF_1,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => iComplement_IBUF_6,
      O => oaY_1_OBUF_9
    );
  oaY_3_1 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X0Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => iComplement_IBUF_6,
      ADR3 => iaA_3_IBUF_3,
      O => oaY_3_OBUF_11
    );
  oaY_5_1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X54Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iComplement_IBUF_6,
      ADR2 => VCC,
      ADR3 => iaA_5_IBUF_5,
      O => oaY_5_OBUF_13
    );
  oaY_7_1 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X26Y0"
    )
    port map (
      ADR0 => iaA_7_IBUF_8,
      ADR1 => VCC,
      ADR2 => iComplement_IBUF_6,
      ADR3 => VCC,
      O => oaY_7_OBUF_15
    );
  oaY_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 757 ps
    )
    port map (
      I => oaY_0_OBUF_10,
      O => oaY_0_O
    );
  oaY_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 757 ps
    )
    port map (
      I => oaY_1_OBUF_9,
      O => oaY_1_O
    );
  oaY_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD251",
      PATHPULSE => 757 ps
    )
    port map (
      I => oaY_2_OBUF_12,
      O => oaY_2_O
    );
  oaY_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD252",
      PATHPULSE => 757 ps
    )
    port map (
      I => oaY_3_OBUF_11,
      O => oaY_3_O
    );
  oaY_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => oaY_4_OBUF_14,
      O => oaY_4_O
    );
  oaY_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 757 ps
    )
    port map (
      I => oaY_5_OBUF_13,
      O => oaY_5_O
    );
  oaY_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => oaY_6_OBUF_16,
      O => oaY_6_O
    );
  oaY_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 757 ps
    )
    port map (
      I => oaY_7_OBUF_15,
      O => oaY_7_O
    );
  NlwBlock_e020complem1_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

