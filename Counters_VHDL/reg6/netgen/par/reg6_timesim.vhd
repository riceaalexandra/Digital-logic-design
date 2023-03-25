--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: reg6_timesim.vhd
-- /___/   /\     Timestamp: Sun Apr 10 22:26:40 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf reg6.pcf -rpw 100 -tpw 0 -ar Structure -tm reg6 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim reg6.ncd reg6_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: reg6.ncd
-- Output file	: D:\laborator_6_partea_comuna_II\reg6\netgen\par\reg6_timesim.vhd
-- # of Entities	: 1
-- Design Name	: reg6
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

entity reg6 is
  port (
    iDatadst : in STD_LOGIC := 'X'; 
    iClk : in STD_LOGIC := 'X'; 
    iSens : in STD_LOGIC := 'X'; 
    iDataddr : in STD_LOGIC := 'X'; 
    oaQ : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end reg6;

architecture Structure of reg6 is
  signal iDataddr_IBUF_0 : STD_LOGIC; 
  signal iDatadst_IBUF_1 : STD_LOGIC; 
  signal iSens_IBUF_2 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal iClk_BUFGP : STD_LOGIC; 
  signal oaQ_6_O : STD_LOGIC; 
  signal iDataddr_INBUF : STD_LOGIC; 
  signal oaQ_7_O : STD_LOGIC; 
  signal iClk_INBUF : STD_LOGIC; 
  signal iDatadst_INBUF : STD_LOGIC; 
  signal iSens_INBUF : STD_LOGIC; 
  signal oaQ_0_O : STD_LOGIC; 
  signal oaQ_1_O : STD_LOGIC; 
  signal oaQ_2_O : STD_LOGIC; 
  signal oaQ_3_O : STD_LOGIC; 
  signal oaQ_4_O : STD_LOGIC; 
  signal oaQ_5_O : STD_LOGIC; 
  signal iClk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal iClk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal saQ_1_DXMUX_3 : STD_LOGIC; 
  signal saQ_1_DYMUX_4 : STD_LOGIC; 
  signal saQ_1_CLKINV_5 : STD_LOGIC; 
  signal saQ_3_DXMUX_6 : STD_LOGIC; 
  signal saQ_3_DYMUX_7 : STD_LOGIC; 
  signal saQ_3_CLKINV_8 : STD_LOGIC; 
  signal saQ_5_DXMUX_9 : STD_LOGIC; 
  signal saQ_5_DYMUX_10 : STD_LOGIC; 
  signal saQ_5_CLKINV_11 : STD_LOGIC; 
  signal saQ_7_DXMUX_12 : STD_LOGIC; 
  signal saQ_7_DYMUX_13 : STD_LOGIC; 
  signal saQ_7_CLKINV_14 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal saQ : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal saY : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  oaQ_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD50"
    )
    port map (
      I => oaQ_6_O,
      O => oaQ(6)
    );
  iDataddr_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 757 ps
    )
    port map (
      I => iDataddr,
      O => iDataddr_INBUF
    );
  iDataddr_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 757 ps
    )
    port map (
      I => iDataddr_INBUF,
      O => iDataddr_IBUF_0
    );
  oaQ_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => oaQ_7_O,
      O => oaQ(7)
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
  iDatadst_IBUF : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 757 ps
    )
    port map (
      I => iDatadst,
      O => iDatadst_INBUF
    );
  iDatadst_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 757 ps
    )
    port map (
      I => iDatadst_INBUF,
      O => iDatadst_IBUF_1
    );
  iSens_IBUF : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSens,
      O => iSens_INBUF
    );
  iSens_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSens_INBUF,
      O => iSens_IBUF_2
    );
  oaQ_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD88"
    )
    port map (
      I => oaQ_0_O,
      O => oaQ(0)
    );
  oaQ_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => oaQ_1_O,
      O => oaQ(1)
    );
  oaQ_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => oaQ_2_O,
      O => oaQ(2)
    );
  oaQ_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => oaQ_3_O,
      O => oaQ(3)
    );
  oaQ_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD86"
    )
    port map (
      I => oaQ_4_O,
      O => oaQ(4)
    );
  oaQ_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => oaQ_5_O,
      O => oaQ(5)
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
  saQ_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 757 ps
    )
    port map (
      I => saY(1),
      O => saQ_1_DXMUX_3
    );
  saQ_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 757 ps
    )
    port map (
      I => saY(0),
      O => saQ_1_DYMUX_4
    );
  saQ_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y48",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_1_CLKINV_5
    );
  saY_0_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X46Y48"
    )
    port map (
      ADR0 => saQ(1),
      ADR1 => iDatadst_IBUF_1,
      ADR2 => iSens_IBUF_2,
      ADR3 => VCC,
      O => saY(0)
    );
  saQ_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 757 ps
    )
    port map (
      I => saY(3),
      O => saQ_3_DXMUX_6
    );
  saQ_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 757 ps
    )
    port map (
      I => saY(2),
      O => saQ_3_DYMUX_7
    );
  saQ_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_3_CLKINV_8
    );
  saY_2_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X44Y49"
    )
    port map (
      ADR0 => saQ(3),
      ADR1 => saQ(1),
      ADR2 => iSens_IBUF_2,
      ADR3 => VCC,
      O => saY(2)
    );
  saQ_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y48",
      PATHPULSE => 757 ps
    )
    port map (
      I => saY(5),
      O => saQ_5_DXMUX_9
    );
  saQ_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y48",
      PATHPULSE => 757 ps
    )
    port map (
      I => saY(4),
      O => saQ_5_DYMUX_10
    );
  saQ_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y48",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_5_CLKINV_11
    );
  saY_4_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X42Y48"
    )
    port map (
      ADR0 => iSens_IBUF_2,
      ADR1 => saQ(5),
      ADR2 => saQ(3),
      ADR3 => VCC,
      O => saY(4)
    );
  saQ_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saY(7),
      O => saQ_7_DXMUX_12
    );
  saQ_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saY(6),
      O => saQ_7_DYMUX_13
    );
  saQ_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_7_CLKINV_14
    );
  saY_6_1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X42Y50"
    )
    port map (
      ADR0 => iSens_IBUF_2,
      ADR1 => saQ(7),
      ADR2 => VCC,
      ADR3 => saQ(5),
      O => saY(6)
    );
  saQ_0 : X_FF
    generic map(
      LOC => "SLICE_X46Y48",
      INIT => '0'
    )
    port map (
      I => saQ_1_DYMUX_4,
      CE => VCC,
      CLK => saQ_1_CLKINV_5,
      SET => GND,
      RST => GND,
      O => saQ(0)
    );
  saY_1_1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X46Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => saQ(2),
      ADR2 => iSens_IBUF_2,
      ADR3 => saQ(0),
      O => saY(1)
    );
  saQ_1 : X_FF
    generic map(
      LOC => "SLICE_X46Y48",
      INIT => '0'
    )
    port map (
      I => saQ_1_DXMUX_3,
      CE => VCC,
      CLK => saQ_1_CLKINV_5,
      SET => GND,
      RST => GND,
      O => saQ(1)
    );
  saQ_2 : X_FF
    generic map(
      LOC => "SLICE_X44Y49",
      INIT => '0'
    )
    port map (
      I => saQ_3_DYMUX_7,
      CE => VCC,
      CLK => saQ_3_CLKINV_8,
      SET => GND,
      RST => GND,
      O => saQ(2)
    );
  saY_3_1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X44Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => saQ(4),
      ADR2 => iSens_IBUF_2,
      ADR3 => saQ(2),
      O => saY(3)
    );
  saQ_3 : X_FF
    generic map(
      LOC => "SLICE_X44Y49",
      INIT => '0'
    )
    port map (
      I => saQ_3_DXMUX_6,
      CE => VCC,
      CLK => saQ_3_CLKINV_8,
      SET => GND,
      RST => GND,
      O => saQ(3)
    );
  saQ_4 : X_FF
    generic map(
      LOC => "SLICE_X42Y48",
      INIT => '0'
    )
    port map (
      I => saQ_5_DYMUX_10,
      CE => VCC,
      CLK => saQ_5_CLKINV_11,
      SET => GND,
      RST => GND,
      O => saQ(4)
    );
  saY_5_1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X42Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => saQ(6),
      ADR2 => iSens_IBUF_2,
      ADR3 => saQ(4),
      O => saY(5)
    );
  saQ_5 : X_FF
    generic map(
      LOC => "SLICE_X42Y48",
      INIT => '0'
    )
    port map (
      I => saQ_5_DXMUX_9,
      CE => VCC,
      CLK => saQ_5_CLKINV_11,
      SET => GND,
      RST => GND,
      O => saQ(5)
    );
  saQ_6 : X_FF
    generic map(
      LOC => "SLICE_X42Y50",
      INIT => '0'
    )
    port map (
      I => saQ_7_DYMUX_13,
      CE => VCC,
      CLK => saQ_7_CLKINV_14,
      SET => GND,
      RST => GND,
      O => saQ(6)
    );
  saY_7_1 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X42Y50"
    )
    port map (
      ADR0 => iSens_IBUF_2,
      ADR1 => VCC,
      ADR2 => saQ(6),
      ADR3 => iDataddr_IBUF_0,
      O => saY(7)
    );
  saQ_7 : X_FF
    generic map(
      LOC => "SLICE_X42Y50",
      INIT => '0'
    )
    port map (
      I => saQ_7_DXMUX_12,
      CE => VCC,
      CLK => saQ_7_CLKINV_14,
      SET => GND,
      RST => GND,
      O => saQ(7)
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  oaQ_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(6),
      O => oaQ_6_O
    );
  oaQ_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(7),
      O => oaQ_7_O
    );
  oaQ_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(0),
      O => oaQ_0_O
    );
  oaQ_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(1),
      O => oaQ_1_O
    );
  oaQ_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(2),
      O => oaQ_2_O
    );
  oaQ_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(3),
      O => oaQ_3_O
    );
  oaQ_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(4),
      O => oaQ_4_O
    );
  oaQ_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(5),
      O => oaQ_5_O
    );
  NlwBlock_reg6_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_reg6_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

