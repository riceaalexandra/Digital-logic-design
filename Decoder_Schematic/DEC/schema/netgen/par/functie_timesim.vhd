--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: functie_timesim.vhd
-- /___/   /\     Timestamp: Thu Jan 06 12:36:11 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf functie.pcf -rpw 100 -tpw 0 -ar Structure -tm functie -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim functie.ncd functie_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: functie.ncd
-- Output file	: D:\DEC-Ricea-Alexandra\schema\netgen\par\functie_timesim.vhd
-- # of Entities	: 1
-- Design Name	: functie
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

entity functie is
  port (
    E : in STD_LOGIC := 'X'; 
    DATA : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ADR : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end functie;

architecture Structure of functie is
  signal E_IBUF_0 : STD_LOGIC; 
  signal ADR_0_IBUF_1 : STD_LOGIC; 
  signal ADR_1_IBUF_2 : STD_LOGIC; 
  signal DATA_0_O : STD_LOGIC; 
  signal DATA_1_O : STD_LOGIC; 
  signal DATA_2_O : STD_LOGIC; 
  signal DATA_3_O : STD_LOGIC; 
  signal E_INBUF : STD_LOGIC; 
  signal ADR_0_INBUF : STD_LOGIC; 
  signal ADR_1_INBUF : STD_LOGIC; 
  signal DATA_0_OBUF_3 : STD_LOGIC; 
  signal DATA_3_OBUF_4 : STD_LOGIC; 
  signal DATA_1_OBUF_5 : STD_LOGIC; 
  signal DATA_2_OBUF_6 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  DATA_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD180"
    )
    port map (
      I => DATA_0_O,
      O => DATA(0)
    );
  DATA_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => DATA_1_O,
      O => DATA(1)
    );
  DATA_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => DATA_2_O,
      O => DATA(2)
    );
  DATA_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => DATA_3_O,
      O => DATA(3)
    );
  E_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 757 ps
    )
    port map (
      I => E,
      O => E_INBUF
    );
  E_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 757 ps
    )
    port map (
      I => E_INBUF,
      O => E_IBUF_0
    );
  ADR_0_IBUF : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 757 ps
    )
    port map (
      I => ADR(0),
      O => ADR_0_INBUF
    );
  ADR_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 757 ps
    )
    port map (
      I => ADR_0_INBUF,
      O => ADR_0_IBUF_1
    );
  ADR_1_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 757 ps
    )
    port map (
      I => ADR(1),
      O => ADR_1_INBUF
    );
  ADR_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 757 ps
    )
    port map (
      I => ADR_1_INBUF,
      O => ADR_1_IBUF_2
    );
  XLXI_1_I_36_30 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X18Y1"
    )
    port map (
      ADR0 => E_IBUF_0,
      ADR1 => ADR_0_IBUF_1,
      ADR2 => VCC,
      ADR3 => ADR_1_IBUF_2,
      O => DATA_3_OBUF_4
    );
  XLXI_1_I_36_31 : X_LUT4
    generic map(
      INIT => X"2200",
      LOC => "SLICE_X18Y0"
    )
    port map (
      ADR0 => E_IBUF_0,
      ADR1 => ADR_0_IBUF_1,
      ADR2 => VCC,
      ADR3 => ADR_1_IBUF_2,
      O => DATA_2_OBUF_6
    );
  XLXI_1_I_36_33 : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X18Y1"
    )
    port map (
      ADR0 => E_IBUF_0,
      ADR1 => ADR_0_IBUF_1,
      ADR2 => VCC,
      ADR3 => ADR_1_IBUF_2,
      O => DATA_0_OBUF_3
    );
  XLXI_1_I_36_32 : X_LUT4
    generic map(
      INIT => X"0088",
      LOC => "SLICE_X18Y0"
    )
    port map (
      ADR0 => E_IBUF_0,
      ADR1 => ADR_0_IBUF_1,
      ADR2 => VCC,
      ADR3 => ADR_1_IBUF_2,
      O => DATA_1_OBUF_5
    );
  DATA_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 757 ps
    )
    port map (
      I => DATA_0_OBUF_3,
      O => DATA_0_O
    );
  DATA_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 757 ps
    )
    port map (
      I => DATA_1_OBUF_5,
      O => DATA_1_O
    );
  DATA_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 757 ps
    )
    port map (
      I => DATA_2_OBUF_6,
      O => DATA_2_O
    );
  DATA_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 757 ps
    )
    port map (
      I => DATA_3_OBUF_4,
      O => DATA_3_O
    );
  NlwBlock_functie_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

