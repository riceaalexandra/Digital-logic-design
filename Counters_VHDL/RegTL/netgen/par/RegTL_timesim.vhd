--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: RegTL_timesim.vhd
-- /___/   /\     Timestamp: Sun Apr 10 23:19:37 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf RegTL.pcf -rpw 100 -tpw 0 -ar Structure -tm RegTL -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim RegTL.ncd RegTL_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: RegTL.ncd
-- Output file	: D:\laborator_6_partea_comuna_II\RegTL\netgen\par\RegTL_timesim.vhd
-- # of Entities	: 1
-- Design Name	: RegTL
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

entity RegTL is
  port (
    iValid : in STD_LOGIC := 'X'; 
    iOC : in STD_LOGIC := 'X'; 
    oaQ : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    iaData : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end RegTL;

architecture Structure of RegTL is
  signal iValid_BUFGP : STD_LOGIC; 
  signal iOC_IBUF_0 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal iaData_6_INBUF : STD_LOGIC; 
  signal iaData_6_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal iaData_6_IFF_IFFDMUX_1 : STD_LOGIC; 
  signal oaQ_6_O : STD_LOGIC; 
  signal oaQ_6_T : STD_LOGIC; 
  signal iaData_7_INBUF : STD_LOGIC; 
  signal iaData_7_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal iaData_7_IFF_IFFDMUX_2 : STD_LOGIC; 
  signal oaQ_7_O : STD_LOGIC; 
  signal oaQ_7_T : STD_LOGIC; 
  signal iOC_INBUF : STD_LOGIC; 
  signal iaData_0_INBUF : STD_LOGIC; 
  signal iaData_0_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal iaData_0_IFF_IFFDMUX_3 : STD_LOGIC; 
  signal oaQ_0_O : STD_LOGIC; 
  signal oaQ_0_T : STD_LOGIC; 
  signal iaData_1_INBUF : STD_LOGIC; 
  signal iaData_1_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal iaData_1_IFF_IFFDMUX_4 : STD_LOGIC; 
  signal oaQ_1_O : STD_LOGIC; 
  signal oaQ_1_T : STD_LOGIC; 
  signal iValid_INBUF : STD_LOGIC; 
  signal iaData_2_INBUF : STD_LOGIC; 
  signal iaData_2_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal iaData_2_IFF_IFFDMUX_5 : STD_LOGIC; 
  signal oaQ_2_O : STD_LOGIC; 
  signal oaQ_2_T : STD_LOGIC; 
  signal iaData_3_INBUF : STD_LOGIC; 
  signal oaQ_3_O : STD_LOGIC; 
  signal oaQ_3_T : STD_LOGIC; 
  signal iaData_4_INBUF : STD_LOGIC; 
  signal oaQ_4_O : STD_LOGIC; 
  signal oaQ_4_T : STD_LOGIC; 
  signal iaData_5_INBUF : STD_LOGIC; 
  signal oaQ_5_O : STD_LOGIC; 
  signal oaQ_5_T : STD_LOGIC; 
  signal iValid_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal iValid_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal iaData_3_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal iaData_3_IFF_IFFDMUX_6 : STD_LOGIC; 
  signal iaData_4_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal iaData_4_IFF_IFFDMUX_7 : STD_LOGIC; 
  signal iaData_5_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal iaData_5_IFF_IFFDMUX_8 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_saQ_6_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_saQ_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_saQ_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_saQ_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_saQ_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_saQ_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_saQ_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_saQ_5_CLK : STD_LOGIC; 
  signal saQ : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  iaData_6_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(6),
      O => iaData_6_INBUF
    );
  iaData_6_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_6_INBUF,
      O => iaData_6_IFF_IFFDMUX_1
    );
  iaData_6_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid_BUFGP,
      O => iaData_6_IFF_ICLK1INVNOT
    );
  saQ_6 : X_LATCHE
    generic map(
      LOC => "PAD172",
      INIT => '0'
    )
    port map (
      I => iaData_6_IFF_IFFDMUX_1,
      GE => VCC,
      CLK => NlwInverterSignal_saQ_6_CLK,
      SET => GND,
      RST => GND,
      O => saQ(6)
    );
  oaQ_6_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => oaQ_6_O,
      CTL => oaQ_6_T,
      O => oaQ(6)
    );
  iaData_7_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(7),
      O => iaData_7_INBUF
    );
  iaData_7_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_7_INBUF,
      O => iaData_7_IFF_IFFDMUX_2
    );
  iaData_7_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD168",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid_BUFGP,
      O => iaData_7_IFF_ICLK1INVNOT
    );
  saQ_7 : X_LATCHE
    generic map(
      LOC => "PAD168",
      INIT => '0'
    )
    port map (
      I => iaData_7_IFF_IFFDMUX_2,
      GE => VCC,
      CLK => NlwInverterSignal_saQ_7_CLK,
      SET => GND,
      RST => GND,
      O => saQ(7)
    );
  oaQ_7_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => oaQ_7_O,
      CTL => oaQ_7_T,
      O => oaQ(7)
    );
  iOC_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC,
      O => iOC_INBUF
    );
  iOC_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC_INBUF,
      O => iOC_IBUF_0
    );
  iaData_0_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(0),
      O => iaData_0_INBUF
    );
  iaData_0_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_0_INBUF,
      O => iaData_0_IFF_IFFDMUX_3
    );
  iaData_0_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD182",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid_BUFGP,
      O => iaData_0_IFF_ICLK1INVNOT
    );
  saQ_0 : X_LATCHE
    generic map(
      LOC => "PAD182",
      INIT => '0'
    )
    port map (
      I => iaData_0_IFF_IFFDMUX_3,
      GE => VCC,
      CLK => NlwInverterSignal_saQ_0_CLK,
      SET => GND,
      RST => GND,
      O => saQ(0)
    );
  oaQ_0_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => oaQ_0_O,
      CTL => oaQ_0_T,
      O => oaQ(0)
    );
  iaData_1_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(1),
      O => iaData_1_INBUF
    );
  iaData_1_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_1_INBUF,
      O => iaData_1_IFF_IFFDMUX_4
    );
  iaData_1_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD177",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid_BUFGP,
      O => iaData_1_IFF_ICLK1INVNOT
    );
  saQ_1 : X_LATCHE
    generic map(
      LOC => "PAD177",
      INIT => '0'
    )
    port map (
      I => iaData_1_IFF_IFFDMUX_4,
      GE => VCC,
      CLK => NlwInverterSignal_saQ_1_CLK,
      SET => GND,
      RST => GND,
      O => saQ(1)
    );
  oaQ_1_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => oaQ_1_O,
      CTL => oaQ_1_T,
      O => oaQ(1)
    );
  iValid_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid,
      O => iValid_INBUF
    );
  iaData_2_IBUF : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(2),
      O => iaData_2_INBUF
    );
  iaData_2_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_2_INBUF,
      O => iaData_2_IFF_IFFDMUX_5
    );
  iaData_2_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD183",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid_BUFGP,
      O => iaData_2_IFF_ICLK1INVNOT
    );
  saQ_2 : X_LATCHE
    generic map(
      LOC => "PAD183",
      INIT => '0'
    )
    port map (
      I => iaData_2_IFF_IFFDMUX_5,
      GE => VCC,
      CLK => NlwInverterSignal_saQ_2_CLK,
      SET => GND,
      RST => GND,
      O => saQ(2)
    );
  oaQ_2_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD184"
    )
    port map (
      I => oaQ_2_O,
      CTL => oaQ_2_T,
      O => oaQ(2)
    );
  iaData_3_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(3),
      O => iaData_3_INBUF
    );
  oaQ_3_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => oaQ_3_O,
      CTL => oaQ_3_T,
      O => oaQ(3)
    );
  iaData_4_IBUF : X_BUF
    generic map(
      LOC => "PAD165",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(4),
      O => iaData_4_INBUF
    );
  oaQ_4_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => oaQ_4_O,
      CTL => oaQ_4_T,
      O => oaQ(4)
    );
  iaData_5_IBUF : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(5),
      O => iaData_5_INBUF
    );
  oaQ_5_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => oaQ_5_O,
      CTL => oaQ_5_T,
      O => oaQ(5)
    );
  iValid_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX7"
    )
    port map (
      I0 => iValid_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => iValid_BUFGP_BUFG_S_INVNOT,
      O => iValid_BUFGP
    );
  iValid_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX7",
      PATHPULSE => 757 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => iValid_BUFGP_BUFG_S_INVNOT
    );
  iValid_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX7",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid_INBUF,
      O => iValid_BUFGP_BUFG_I0_INV
    );
  saQ_3 : X_LATCHE
    generic map(
      LOC => "PAD173",
      INIT => '0'
    )
    port map (
      I => iaData_3_IFF_IFFDMUX_6,
      GE => VCC,
      CLK => NlwInverterSignal_saQ_3_CLK,
      SET => GND,
      RST => GND,
      O => saQ(3)
    );
  iaData_3_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_3_INBUF,
      O => iaData_3_IFF_IFFDMUX_6
    );
  iaData_3_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD173",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid_BUFGP,
      O => iaData_3_IFF_ICLK1INVNOT
    );
  saQ_4 : X_LATCHE
    generic map(
      LOC => "PAD165",
      INIT => '0'
    )
    port map (
      I => iaData_4_IFF_IFFDMUX_7,
      GE => VCC,
      CLK => NlwInverterSignal_saQ_4_CLK,
      SET => GND,
      RST => GND,
      O => saQ(4)
    );
  iaData_4_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD165",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_4_INBUF,
      O => iaData_4_IFF_IFFDMUX_7
    );
  iaData_4_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD165",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid_BUFGP,
      O => iaData_4_IFF_ICLK1INVNOT
    );
  saQ_5 : X_LATCHE
    generic map(
      LOC => "PAD179",
      INIT => '0'
    )
    port map (
      I => iaData_5_IFF_IFFDMUX_8,
      GE => VCC,
      CLK => NlwInverterSignal_saQ_5_CLK,
      SET => GND,
      RST => GND,
      O => saQ(5)
    );
  iaData_5_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_5_INBUF,
      O => iaData_5_IFF_IFFDMUX_8
    );
  iaData_5_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD179",
      PATHPULSE => 757 ps
    )
    port map (
      I => iValid_BUFGP,
      O => iaData_5_IFF_ICLK1INVNOT
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  oaQ_6_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC_IBUF_0,
      O => oaQ_6_T
    );
  oaQ_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(6),
      O => oaQ_6_O
    );
  oaQ_7_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC_IBUF_0,
      O => oaQ_7_T
    );
  oaQ_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(7),
      O => oaQ_7_O
    );
  oaQ_0_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC_IBUF_0,
      O => oaQ_0_T
    );
  oaQ_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(0),
      O => oaQ_0_O
    );
  oaQ_1_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC_IBUF_0,
      O => oaQ_1_T
    );
  oaQ_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(1),
      O => oaQ_1_O
    );
  oaQ_2_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC_IBUF_0,
      O => oaQ_2_T
    );
  oaQ_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(2),
      O => oaQ_2_O
    );
  oaQ_3_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC_IBUF_0,
      O => oaQ_3_T
    );
  oaQ_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(3),
      O => oaQ_3_O
    );
  oaQ_4_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC_IBUF_0,
      O => oaQ_4_T
    );
  oaQ_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(4),
      O => oaQ_4_O
    );
  oaQ_5_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 757 ps
    )
    port map (
      I => iOC_IBUF_0,
      O => oaQ_5_T
    );
  oaQ_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(5),
      O => oaQ_5_O
    );
  NlwBlock_RegTL_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_saQ_6_CLK : X_INV
    port map (
      I => iaData_6_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_saQ_6_CLK
    );
  NlwBlock_RegTL_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_saQ_7_CLK : X_INV
    port map (
      I => iaData_7_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_saQ_7_CLK
    );
  NlwInverterBlock_saQ_0_CLK : X_INV
    port map (
      I => iaData_0_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_saQ_0_CLK
    );
  NlwInverterBlock_saQ_1_CLK : X_INV
    port map (
      I => iaData_1_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_saQ_1_CLK
    );
  NlwInverterBlock_saQ_2_CLK : X_INV
    port map (
      I => iaData_2_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_saQ_2_CLK
    );
  NlwInverterBlock_saQ_3_CLK : X_INV
    port map (
      I => iaData_3_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_saQ_3_CLK
    );
  NlwInverterBlock_saQ_4_CLK : X_INV
    port map (
      I => iaData_4_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_saQ_4_CLK
    );
  NlwInverterBlock_saQ_5_CLK : X_INV
    port map (
      I => iaData_5_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_saQ_5_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

