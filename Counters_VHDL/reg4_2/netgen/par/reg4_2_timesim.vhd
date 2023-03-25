--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: reg4_2_timesim.vhd
-- /___/   /\     Timestamp: Sun Apr 10 22:19:46 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf reg4_2.pcf -rpw 100 -tpw 0 -ar Structure -tm reg4_2 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim reg4_2.ncd reg4_2_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: reg4_2.ncd
-- Output file	: D:\laborator_6_partea_comuna_II\reg4_2\netgen\par\reg4_2_timesim.vhd
-- # of Entities	: 1
-- Design Name	: reg4_2
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

entity reg4_2 is
  port (
    iData1 : in STD_LOGIC := 'X'; 
    iData2 : in STD_LOGIC := 'X'; 
    iClk : in STD_LOGIC := 'X'; 
    oQ : out STD_LOGIC; 
    iSelect : in STD_LOGIC := 'X' 
  );
end reg4_2;

architecture Structure of reg4_2 is
  signal iClk_BUFGP : STD_LOGIC; 
  signal iSelect_IBUF_0 : STD_LOGIC; 
  signal iData1_IBUF_1 : STD_LOGIC; 
  signal iData2_IBUF_2 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal oQ_O : STD_LOGIC; 
  signal iClk_INBUF : STD_LOGIC; 
  signal iSelect_INBUF : STD_LOGIC; 
  signal iData1_INBUF : STD_LOGIC; 
  signal iData2_INBUF : STD_LOGIC; 
  signal iClk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal iClk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal Mshreg_saQ_0 : STD_LOGIC; 
  signal Mshreg_saQ_0_DIG_MUX_3 : STD_LOGIC; 
  signal Mshreg_saQ_0_CLKINV_4 : STD_LOGIC; 
  signal Mshreg_saQ_0_WSG : STD_LOGIC; 
  signal sData : STD_LOGIC; 
  signal oQ_OUTPUT_OFF_O1INV_5 : STD_LOGIC; 
  signal oQ_OUTPUT_OTCLK1INV_6 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_Mshreg_saQ_0_SRL16E_Q15_UNCONNECTED : STD_LOGIC; 
  signal saQ : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  oQ_OBUF : X_OBUF
    generic map(
      LOC => "PAD120"
    )
    port map (
      I => oQ_O,
      O => oQ
    );
  iClk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk,
      O => iClk_INBUF
    );
  iSelect_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSelect,
      O => iSelect_INBUF
    );
  iSelect_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSelect_INBUF,
      O => iSelect_IBUF_0
    );
  iData1_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 757 ps
    )
    port map (
      I => iData1,
      O => iData1_INBUF
    );
  iData1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 757 ps
    )
    port map (
      I => iData1_INBUF,
      O => iData1_IBUF_1
    );
  iData2_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 757 ps
    )
    port map (
      I => iData2,
      O => iData2_INBUF
    );
  iData2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 757 ps
    )
    port map (
      I => iData2_INBUF,
      O => iData2_IBUF_2
    );
  iClk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX7"
    )
    port map (
      I0 => iClk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => iClk_BUFGP_BUFG_S_INVNOT,
      O => iClk_BUFGP
    );
  iClk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX7",
      PATHPULSE => 757 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => iClk_BUFGP_BUFG_S_INVNOT
    );
  iClk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX7",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_INBUF,
      O => iClk_BUFGP_BUFG_I0_INV
    );
  Mshreg_saQ_0_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => sData,
      O => Mshreg_saQ_0_DIG_MUX_3
    );
  Mshreg_saQ_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => Mshreg_saQ_0_CLKINV_4
    );
  sData1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X30Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iData1_IBUF_1,
      ADR2 => iSelect_IBUF_0,
      ADR3 => iData2_IBUF_2,
      O => sData
    );
  oQ_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 757 ps
    )
    port map (
      I => Mshreg_saQ_0,
      O => oQ_OUTPUT_OFF_O1INV_5
    );
  oQ_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(0),
      O => oQ_O
    );
  oQ_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => oQ_OUTPUT_OTCLK1INV_6
    );
  saQ_0 : X_FF
    generic map(
      LOC => "PAD120",
      INIT => '0'
    )
    port map (
      I => oQ_OUTPUT_OFF_O1INV_5,
      CE => VCC,
      CLK => oQ_OUTPUT_OTCLK1INV_6,
      SET => GND,
      RST => GND,
      O => saQ(0)
    );
  Mshreg_saQ_0_SRL16E : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X54Y14"
    )
    port map (
      A0 => GLOBAL_LOGIC0,
      A1 => GLOBAL_LOGIC1,
      A2 => GLOBAL_LOGIC0,
      A3 => GLOBAL_LOGIC0,
      D => Mshreg_saQ_0_DIG_MUX_3,
      CE => Mshreg_saQ_0_WSG,
      CLK => Mshreg_saQ_0_CLKINV_4,
      Q => Mshreg_saQ_0,
      Q15 => NLW_Mshreg_saQ_0_SRL16E_Q15_UNCONNECTED
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  Mshreg_saQ_0_SRL16E_CE_WSGAND : X_BUF
    generic map(
      LOC => "SLICE_X54Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => Mshreg_saQ_0_WSG
    );
  NlwBlock_reg4_2_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_reg4_2_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

