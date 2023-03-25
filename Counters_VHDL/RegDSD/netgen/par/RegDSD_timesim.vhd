--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: RegDSD_timesim.vhd
-- /___/   /\     Timestamp: Sun Apr 10 22:47:49 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf RegDSD.pcf -rpw 100 -tpw 0 -ar Structure -tm RegDSD -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim RegDSD.ncd RegDSD_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: RegDSD.ncd
-- Output file	: D:\laborator_6_partea_comuna_II\RegDSD\netgen\par\RegDSD_timesim.vhd
-- # of Entities	: 1
-- Design Name	: RegDSD
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

entity RegDSD is
  port (
    iINIT : in STD_LOGIC := 'X'; 
    iISDD : in STD_LOGIC := 'X'; 
    iSens : in STD_LOGIC := 'X'; 
    iClock : in STD_LOGIC := 'X'; 
    iISDS : in STD_LOGIC := 'X'; 
    oaQ : out STD_LOGIC_VECTOR ( 0 to 7 ) 
  );
end RegDSD;

architecture Structure of RegDSD is
  signal iSens_IBUF_0 : STD_LOGIC; 
  signal iISDD_IBUF_1 : STD_LOGIC; 
  signal iINIT_IBUF_2 : STD_LOGIC; 
  signal iISDS_IBUF_3 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal iClock_BUFGP : STD_LOGIC; 
  signal oaQ_6_O : STD_LOGIC; 
  signal oaQ_7_O : STD_LOGIC; 
  signal iSens_INBUF : STD_LOGIC; 
  signal iISDD_INBUF : STD_LOGIC; 
  signal iINIT_INBUF : STD_LOGIC; 
  signal iClock_INBUF : STD_LOGIC; 
  signal iISDS_INBUF : STD_LOGIC; 
  signal oaQ_0_O : STD_LOGIC; 
  signal oaQ_1_O : STD_LOGIC; 
  signal oaQ_2_O : STD_LOGIC; 
  signal oaQ_3_O : STD_LOGIC; 
  signal oaQ_4_O : STD_LOGIC; 
  signal oaQ_5_O : STD_LOGIC; 
  signal iClock_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal iClock_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal saQ_1_DXMUX_4 : STD_LOGIC; 
  signal saQ_1_DYMUX_5 : STD_LOGIC; 
  signal saQ_1_SRINV_6 : STD_LOGIC; 
  signal saQ_1_CLKINV_7 : STD_LOGIC; 
  signal saQ_3_DXMUX_8 : STD_LOGIC; 
  signal saQ_3_DYMUX_9 : STD_LOGIC; 
  signal saQ_3_SRINV_10 : STD_LOGIC; 
  signal saQ_3_CLKINV_11 : STD_LOGIC; 
  signal saQ_5_DXMUX_12 : STD_LOGIC; 
  signal saQ_5_DYMUX_13 : STD_LOGIC; 
  signal saQ_5_SRINV_14 : STD_LOGIC; 
  signal saQ_5_CLKINV_15 : STD_LOGIC; 
  signal saQ_7_DXMUX_16 : STD_LOGIC; 
  signal saQ_7_DYMUX_17 : STD_LOGIC; 
  signal saQ_7_SRINV_18 : STD_LOGIC; 
  signal saQ_7_CLKINV_19 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal saQ : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal saData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  oaQ_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => oaQ_6_O,
      O => oaQ(6)
    );
  oaQ_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => oaQ_7_O,
      O => oaQ(7)
    );
  iSens_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSens,
      O => iSens_INBUF
    );
  iSens_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSens_INBUF,
      O => iSens_IBUF_0
    );
  iISDD_IBUF : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 757 ps
    )
    port map (
      I => iISDD,
      O => iISDD_INBUF
    );
  iISDD_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 757 ps
    )
    port map (
      I => iISDD_INBUF,
      O => iISDD_IBUF_1
    );
  iINIT_IBUF : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 757 ps
    )
    port map (
      I => iINIT,
      O => iINIT_INBUF
    );
  iINIT_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 757 ps
    )
    port map (
      I => iINIT_INBUF,
      O => iINIT_IBUF_2
    );
  iClock_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClock,
      O => iClock_INBUF
    );
  iISDS_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 757 ps
    )
    port map (
      I => iISDS,
      O => iISDS_INBUF
    );
  iISDS_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 757 ps
    )
    port map (
      I => iISDS_INBUF,
      O => iISDS_IBUF_3
    );
  oaQ_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => oaQ_0_O,
      O => oaQ(0)
    );
  oaQ_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => oaQ_1_O,
      O => oaQ(1)
    );
  oaQ_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
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
      LOC => "PAD63"
    )
    port map (
      I => oaQ_5_O,
      O => oaQ(5)
    );
  iClock_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX7"
    )
    port map (
      I0 => iClock_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => iClock_BUFGP_BUFG_S_INVNOT,
      O => iClock_BUFGP
    );
  iClock_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX7",
      PATHPULSE => 757 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => iClock_BUFGP_BUFG_S_INVNOT
    );
  iClock_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX7",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClock_INBUF,
      O => iClock_BUFGP_BUFG_I0_INV
    );
  saQ_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saData(1),
      O => saQ_1_DXMUX_4
    );
  saQ_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saData(0),
      O => saQ_1_DYMUX_5
    );
  saQ_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => iINIT_IBUF_2,
      O => saQ_1_SRINV_6
    );
  saQ_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClock_BUFGP,
      O => saQ_1_CLKINV_7
    );
  saQ_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => saData(3),
      O => saQ_3_DXMUX_8
    );
  saQ_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => saData(2),
      O => saQ_3_DYMUX_9
    );
  saQ_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => iINIT_IBUF_2,
      O => saQ_3_SRINV_10
    );
  saQ_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClock_BUFGP,
      O => saQ_3_CLKINV_11
    );
  saQ_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => saData(5),
      O => saQ_5_DXMUX_12
    );
  saQ_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => saData(4),
      O => saQ_5_DYMUX_13
    );
  saQ_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => iINIT_IBUF_2,
      O => saQ_5_SRINV_14
    );
  saQ_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClock_BUFGP,
      O => saQ_5_CLKINV_15
    );
  saQ_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y54",
      PATHPULSE => 757 ps
    )
    port map (
      I => saData(7),
      O => saQ_7_DXMUX_16
    );
  saQ_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y54",
      PATHPULSE => 757 ps
    )
    port map (
      I => saData(6),
      O => saQ_7_DYMUX_17
    );
  saQ_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y54",
      PATHPULSE => 757 ps
    )
    port map (
      I => iINIT_IBUF_2,
      O => saQ_7_SRINV_18
    );
  saQ_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y54",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClock_BUFGP,
      O => saQ_7_CLKINV_19
    );
  saData_0_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X50Y50"
    )
    port map (
      ADR0 => iISDD_IBUF_1,
      ADR1 => VCC,
      ADR2 => saQ(1),
      ADR3 => iSens_IBUF_0,
      O => saData(0)
    );
  saData_2_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X50Y52"
    )
    port map (
      ADR0 => saQ(1),
      ADR1 => saQ(3),
      ADR2 => VCC,
      ADR3 => iSens_IBUF_0,
      O => saData(2)
    );
  saData_4_1 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X48Y52"
    )
    port map (
      ADR0 => saQ(5),
      ADR1 => saQ(3),
      ADR2 => iSens_IBUF_0,
      ADR3 => VCC,
      O => saData(4)
    );
  saData_6_1 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X48Y54"
    )
    port map (
      ADR0 => saQ(7),
      ADR1 => saQ(5),
      ADR2 => iSens_IBUF_0,
      ADR3 => VCC,
      O => saData(6)
    );
  saQ_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y50",
      INIT => '0'
    )
    port map (
      I => saQ_1_DYMUX_5,
      CE => VCC,
      CLK => saQ_1_CLKINV_7,
      SET => GND,
      RST => saQ_1_SRINV_6,
      O => saQ(0)
    );
  saData_1_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X50Y50"
    )
    port map (
      ADR0 => saQ(0),
      ADR1 => saQ(2),
      ADR2 => VCC,
      ADR3 => iSens_IBUF_0,
      O => saData(1)
    );
  saQ_1 : X_FF
    generic map(
      LOC => "SLICE_X50Y50",
      INIT => '0'
    )
    port map (
      I => saQ_1_DXMUX_4,
      CE => VCC,
      CLK => saQ_1_CLKINV_7,
      SET => GND,
      RST => saQ_1_SRINV_6,
      O => saQ(1)
    );
  saQ_2 : X_FF
    generic map(
      LOC => "SLICE_X50Y52",
      INIT => '0'
    )
    port map (
      I => saQ_3_DYMUX_9,
      CE => VCC,
      CLK => saQ_3_CLKINV_11,
      SET => GND,
      RST => saQ_3_SRINV_10,
      O => saQ(2)
    );
  saData_3_1 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X50Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iSens_IBUF_0,
      ADR2 => saQ(4),
      ADR3 => saQ(2),
      O => saData(3)
    );
  saQ_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y52",
      INIT => '0'
    )
    port map (
      I => saQ_3_DXMUX_8,
      CE => VCC,
      CLK => saQ_3_CLKINV_11,
      SET => GND,
      RST => saQ_3_SRINV_10,
      O => saQ(3)
    );
  saQ_4 : X_FF
    generic map(
      LOC => "SLICE_X48Y52",
      INIT => '0'
    )
    port map (
      I => saQ_5_DYMUX_13,
      CE => VCC,
      CLK => saQ_5_CLKINV_15,
      SET => GND,
      RST => saQ_5_SRINV_14,
      O => saQ(4)
    );
  saData_5_1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X48Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => saQ(6),
      ADR2 => iSens_IBUF_0,
      ADR3 => saQ(4),
      O => saData(5)
    );
  saQ_5 : X_FF
    generic map(
      LOC => "SLICE_X48Y52",
      INIT => '0'
    )
    port map (
      I => saQ_5_DXMUX_12,
      CE => VCC,
      CLK => saQ_5_CLKINV_15,
      SET => GND,
      RST => saQ_5_SRINV_14,
      O => saQ(5)
    );
  saQ_6 : X_FF
    generic map(
      LOC => "SLICE_X48Y54",
      INIT => '0'
    )
    port map (
      I => saQ_7_DYMUX_17,
      CE => VCC,
      CLK => saQ_7_CLKINV_19,
      SET => GND,
      RST => saQ_7_SRINV_18,
      O => saQ(6)
    );
  saData_7_1 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X48Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iSens_IBUF_0,
      ADR2 => iISDS_IBUF_3,
      ADR3 => saQ(6),
      O => saData(7)
    );
  saQ_7 : X_FF
    generic map(
      LOC => "SLICE_X48Y54",
      INIT => '0'
    )
    port map (
      I => saQ_7_DXMUX_16,
      CE => VCC,
      CLK => saQ_7_CLKINV_19,
      SET => GND,
      RST => saQ_7_SRINV_18,
      O => saQ(7)
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  oaQ_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(6),
      O => oaQ_6_O
    );
  oaQ_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(7),
      O => oaQ_7_O
    );
  oaQ_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(0),
      O => oaQ_0_O
    );
  oaQ_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(1),
      O => oaQ_1_O
    );
  oaQ_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
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
      LOC => "PAD63",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(5),
      O => oaQ_5_O
    );
  NlwBlock_RegDSD_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_RegDSD_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

