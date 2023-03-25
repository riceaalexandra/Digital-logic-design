--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: reg7_timesim.vhd
-- /___/   /\     Timestamp: Sun Apr 10 23:06:16 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf reg7.pcf -rpw 100 -tpw 0 -ar Structure -tm reg7 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim reg7.ncd reg7_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: reg7.ncd
-- Output file	: D:\laborator_6_partea_comuna_II\reg7\netgen\par\reg7_timesim.vhd
-- # of Entities	: 1
-- Design Name	: reg7
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

entity reg7 is
  port (
    iReset : in STD_LOGIC := 'X'; 
    iClk : in STD_LOGIC := 'X'; 
    iSens : in STD_LOGIC := 'X'; 
    iDataddr : in STD_LOGIC := 'X'; 
    iLoad : in STD_LOGIC := 'X'; 
    oaQ : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    iaData : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end reg7;

architecture Structure of reg7 is
  signal iaData_6_IBUF_0 : STD_LOGIC; 
  signal iDataddr_IBUF_1 : STD_LOGIC; 
  signal iaData_7_IBUF_2 : STD_LOGIC; 
  signal iSens_IBUF_3 : STD_LOGIC; 
  signal iaData_0_IBUF_4 : STD_LOGIC; 
  signal iaData_1_IBUF_5 : STD_LOGIC; 
  signal iaData_2_IBUF_6 : STD_LOGIC; 
  signal iaData_3_IBUF_7 : STD_LOGIC; 
  signal iLoad_IBUF_8 : STD_LOGIC; 
  signal iReset_IBUF_9 : STD_LOGIC; 
  signal iaData_4_IBUF_10 : STD_LOGIC; 
  signal iaData_5_IBUF_11 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal iClk_BUFGP : STD_LOGIC; 
  signal oaQ_6_O : STD_LOGIC; 
  signal iaData_6_INBUF : STD_LOGIC; 
  signal iDataddr_INBUF : STD_LOGIC; 
  signal oaQ_7_O : STD_LOGIC; 
  signal iaData_7_INBUF : STD_LOGIC; 
  signal iClk_INBUF : STD_LOGIC; 
  signal iSens_INBUF : STD_LOGIC; 
  signal oaQ_0_O : STD_LOGIC; 
  signal iaData_0_INBUF : STD_LOGIC; 
  signal oaQ_1_O : STD_LOGIC; 
  signal iaData_1_INBUF : STD_LOGIC; 
  signal oaQ_2_O : STD_LOGIC; 
  signal iaData_2_INBUF : STD_LOGIC; 
  signal oaQ_3_O : STD_LOGIC; 
  signal iaData_3_INBUF : STD_LOGIC; 
  signal iLoad_INBUF : STD_LOGIC; 
  signal iReset_INBUF : STD_LOGIC; 
  signal oaQ_4_O : STD_LOGIC; 
  signal iaData_4_INBUF : STD_LOGIC; 
  signal oaQ_5_O : STD_LOGIC; 
  signal iaData_5_INBUF : STD_LOGIC; 
  signal iClk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal iClk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal saQ_1_DXMUX_12 : STD_LOGIC; 
  signal saQ_1_F5MUX_13 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal saQ_1_BXINV_14 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal saQ_1_SRINV_15 : STD_LOGIC; 
  signal saQ_1_CLKINV_16 : STD_LOGIC; 
  signal saQ_2_DXMUX_17 : STD_LOGIC; 
  signal saQ_2_F5MUX_18 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal saQ_2_BXINV_19 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal saQ_2_SRINV_20 : STD_LOGIC; 
  signal saQ_2_CLKINV_21 : STD_LOGIC; 
  signal saQ_3_DXMUX_22 : STD_LOGIC; 
  signal saQ_3_F5MUX_23 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal saQ_3_BXINV_24 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal saQ_3_SRINV_25 : STD_LOGIC; 
  signal saQ_3_CLKINV_26 : STD_LOGIC; 
  signal saQ_4_DXMUX_27 : STD_LOGIC; 
  signal saQ_4_F5MUX_28 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal saQ_4_BXINV_29 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal saQ_4_SRINV_30 : STD_LOGIC; 
  signal saQ_4_CLKINV_31 : STD_LOGIC; 
  signal saQ_5_DXMUX_32 : STD_LOGIC; 
  signal saQ_5_F5MUX_33 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal saQ_5_BXINV_34 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal saQ_5_SRINV_35 : STD_LOGIC; 
  signal saQ_5_CLKINV_36 : STD_LOGIC; 
  signal saQ_6_DXMUX_37 : STD_LOGIC; 
  signal saQ_6_F5MUX_38 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal saQ_6_BXINV_39 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal saQ_6_SRINV_40 : STD_LOGIC; 
  signal saQ_6_CLKINV_41 : STD_LOGIC; 
  signal saQ_7_DXMUX_42 : STD_LOGIC; 
  signal saQ_7_F5MUX_43 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal saQ_7_BXINV_44 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal saQ_7_SRINV_45 : STD_LOGIC; 
  signal saQ_7_CLKINV_46 : STD_LOGIC; 
  signal saQ_0_DYMUX_47 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal saQ_0_SRINV_48 : STD_LOGIC; 
  signal saQ_0_CLKINV_49 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal saQ : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  oaQ_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => oaQ_6_O,
      O => oaQ(6)
    );
  iaData_6_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(6),
      O => iaData_6_INBUF
    );
  iaData_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_6_INBUF,
      O => iaData_6_IBUF_0
    );
  iDataddr_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 757 ps
    )
    port map (
      I => iDataddr,
      O => iDataddr_INBUF
    );
  iDataddr_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 757 ps
    )
    port map (
      I => iDataddr_INBUF,
      O => iDataddr_IBUF_1
    );
  oaQ_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => oaQ_7_O,
      O => oaQ(7)
    );
  iaData_7_IBUF : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(7),
      O => iaData_7_INBUF
    );
  iaData_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_7_INBUF,
      O => iaData_7_IBUF_2
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
  iSens_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSens,
      O => iSens_INBUF
    );
  iSens_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSens_INBUF,
      O => iSens_IBUF_3
    );
  oaQ_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => oaQ_0_O,
      O => oaQ(0)
    );
  iaData_0_IBUF : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(0),
      O => iaData_0_INBUF
    );
  iaData_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_0_INBUF,
      O => iaData_0_IBUF_4
    );
  oaQ_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => oaQ_1_O,
      O => oaQ(1)
    );
  iaData_1_IBUF : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(1),
      O => iaData_1_INBUF
    );
  iaData_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_1_INBUF,
      O => iaData_1_IBUF_5
    );
  oaQ_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD50"
    )
    port map (
      I => oaQ_2_O,
      O => oaQ(2)
    );
  iaData_2_IBUF : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(2),
      O => iaData_2_INBUF
    );
  iaData_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_2_INBUF,
      O => iaData_2_IBUF_6
    );
  oaQ_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => oaQ_3_O,
      O => oaQ(3)
    );
  iaData_3_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(3),
      O => iaData_3_INBUF
    );
  iaData_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_3_INBUF,
      O => iaData_3_IBUF_7
    );
  iLoad_IBUF : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 757 ps
    )
    port map (
      I => iLoad,
      O => iLoad_INBUF
    );
  iLoad_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 757 ps
    )
    port map (
      I => iLoad_INBUF,
      O => iLoad_IBUF_8
    );
  iReset_IBUF : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset,
      O => iReset_INBUF
    );
  iReset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_INBUF,
      O => iReset_IBUF_9
    );
  oaQ_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => oaQ_4_O,
      O => oaQ(4)
    );
  iaData_4_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(4),
      O => iaData_4_INBUF
    );
  iaData_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_4_INBUF,
      O => iaData_4_IBUF_10
    );
  oaQ_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => oaQ_5_O,
      O => oaQ(5)
    );
  iaData_5_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData(5),
      O => iaData_5_INBUF
    );
  iaData_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 757 ps
    )
    port map (
      I => iaData_5_INBUF,
      O => iaData_5_IBUF_11
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
  say_1_1_G : X_LUT4
    generic map(
      INIT => X"DD8D",
      LOC => "SLICE_X42Y44"
    )
    port map (
      ADR0 => iLoad_IBUF_8,
      ADR1 => iaData_1_IBUF_5,
      ADR2 => iSens_IBUF_3,
      ADR3 => saQ(0),
      O => N48
    );
  say_1_1_F : X_LUT4
    generic map(
      INIT => X"D888",
      LOC => "SLICE_X42Y44"
    )
    port map (
      ADR0 => iLoad_IBUF_8,
      ADR1 => iaData_1_IBUF_5,
      ADR2 => iSens_IBUF_3,
      ADR3 => saQ(0),
      O => N47
    );
  saQ_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ_1_F5MUX_13,
      O => saQ_1_DXMUX_12
    );
  saQ_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y44"
    )
    port map (
      IA => N47,
      IB => N48,
      SEL => saQ_1_BXINV_14,
      O => saQ_1_F5MUX_13
    );
  saQ_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(2),
      O => saQ_1_BXINV_14
    );
  saQ_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_IBUF_9,
      O => saQ_1_SRINV_15
    );
  saQ_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y44",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_1_CLKINV_16
    );
  say_2_1_G : X_LUT4
    generic map(
      INIT => X"DD8D",
      LOC => "SLICE_X40Y45"
    )
    port map (
      ADR0 => iLoad_IBUF_8,
      ADR1 => iaData_2_IBUF_6,
      ADR2 => iSens_IBUF_3,
      ADR3 => saQ(1),
      O => N38
    );
  say_2_1_F : X_LUT4
    generic map(
      INIT => X"D888",
      LOC => "SLICE_X40Y45"
    )
    port map (
      ADR0 => iLoad_IBUF_8,
      ADR1 => iaData_2_IBUF_6,
      ADR2 => iSens_IBUF_3,
      ADR3 => saQ(1),
      O => N37
    );
  saQ_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y45",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ_2_F5MUX_18,
      O => saQ_2_DXMUX_17
    );
  saQ_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X40Y45"
    )
    port map (
      IA => N37,
      IB => N38,
      SEL => saQ_2_BXINV_19,
      O => saQ_2_F5MUX_18
    );
  saQ_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y45",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(3),
      O => saQ_2_BXINV_19
    );
  saQ_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y45",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_IBUF_9,
      O => saQ_2_SRINV_20
    );
  saQ_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y45",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_2_CLKINV_21
    );
  say_3_1_G : X_LUT4
    generic map(
      INIT => X"F0DD",
      LOC => "SLICE_X38Y50"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => saQ(2),
      ADR2 => iaData_3_IBUF_7,
      ADR3 => iLoad_IBUF_8,
      O => N40
    );
  say_3_1_F : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X38Y50"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => saQ(2),
      ADR2 => iaData_3_IBUF_7,
      ADR3 => iLoad_IBUF_8,
      O => N39
    );
  saQ_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X38Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ_3_F5MUX_23,
      O => saQ_3_DXMUX_22
    );
  saQ_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y50"
    )
    port map (
      IA => N39,
      IB => N40,
      SEL => saQ_3_BXINV_24,
      O => saQ_3_F5MUX_23
    );
  saQ_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(4),
      O => saQ_3_BXINV_24
    );
  saQ_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_IBUF_9,
      O => saQ_3_SRINV_25
    );
  saQ_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_3_CLKINV_26
    );
  say_4_1_G : X_LUT4
    generic map(
      INIT => X"FD31",
      LOC => "SLICE_X30Y50"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => iLoad_IBUF_8,
      ADR2 => saQ(3),
      ADR3 => iaData_4_IBUF_10,
      O => N42
    );
  say_4_1_F : X_LUT4
    generic map(
      INIT => X"EC20",
      LOC => "SLICE_X30Y50"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => iLoad_IBUF_8,
      ADR2 => saQ(3),
      ADR3 => iaData_4_IBUF_10,
      O => N41
    );
  saQ_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ_4_F5MUX_28,
      O => saQ_4_DXMUX_27
    );
  saQ_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y50"
    )
    port map (
      IA => N41,
      IB => N42,
      SEL => saQ_4_BXINV_29,
      O => saQ_4_F5MUX_28
    );
  saQ_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(5),
      O => saQ_4_BXINV_29
    );
  saQ_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_IBUF_9,
      O => saQ_4_SRINV_30
    );
  saQ_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y50",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_4_CLKINV_31
    );
  say_5_1_G : X_LUT4
    generic map(
      INIT => X"F3D1",
      LOC => "SLICE_X28Y52"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => iLoad_IBUF_8,
      ADR2 => iaData_5_IBUF_11,
      ADR3 => saQ(4),
      O => N44
    );
  say_5_1_F : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X28Y52"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => iLoad_IBUF_8,
      ADR2 => iaData_5_IBUF_11,
      ADR3 => saQ(4),
      O => N43
    );
  saQ_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ_5_F5MUX_33,
      O => saQ_5_DXMUX_32
    );
  saQ_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y52"
    )
    port map (
      IA => N43,
      IB => N44,
      SEL => saQ_5_BXINV_34,
      O => saQ_5_F5MUX_33
    );
  saQ_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(6),
      O => saQ_5_BXINV_34
    );
  saQ_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_IBUF_9,
      O => saQ_5_SRINV_35
    );
  saQ_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y52",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_5_CLKINV_36
    );
  saQ_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y54",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ_6_F5MUX_38,
      O => saQ_6_DXMUX_37
    );
  saQ_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y54"
    )
    port map (
      IA => N45,
      IB => N46,
      SEL => saQ_6_BXINV_39,
      O => saQ_6_F5MUX_38
    );
  saQ_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y54",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(7),
      O => saQ_6_BXINV_39
    );
  saQ_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y54",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_IBUF_9,
      O => saQ_6_SRINV_40
    );
  saQ_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y54",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_6_CLKINV_41
    );
  say_6_1_F : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X28Y54"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => saQ(5),
      ADR2 => iLoad_IBUF_8,
      ADR3 => iaData_6_IBUF_0,
      O => N45
    );
  saQ_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y58",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ_7_F5MUX_43,
      O => saQ_7_DXMUX_42
    );
  saQ_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y58"
    )
    port map (
      IA => N35,
      IB => N36,
      SEL => saQ_7_BXINV_44,
      O => saQ_7_F5MUX_43
    );
  saQ_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y58",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(6),
      O => saQ_7_BXINV_44
    );
  saQ_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y58",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_IBUF_9,
      O => saQ_7_SRINV_45
    );
  saQ_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y58",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_7_CLKINV_46
    );
  say_7_1_F : X_LUT4
    generic map(
      INIT => X"F404",
      LOC => "SLICE_X28Y58"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => iDataddr_IBUF_1,
      ADR2 => iLoad_IBUF_8,
      ADR3 => iaData_7_IBUF_2,
      O => N35
    );
  saQ_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 757 ps
    )
    port map (
      I => N27,
      O => saQ_0_DYMUX_47
    );
  saQ_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_IBUF_9,
      O => saQ_0_SRINV_48
    );
  saQ_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y44",
      PATHPULSE => 757 ps
    )
    port map (
      I => iClk_BUFGP,
      O => saQ_0_CLKINV_49
    );
  say_6_1_G : X_LUT4
    generic map(
      INIT => X"FD0D",
      LOC => "SLICE_X28Y54"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => saQ(5),
      ADR2 => iLoad_IBUF_8,
      ADR3 => iaData_6_IBUF_0,
      O => N46
    );
  say_7_1_G : X_LUT4
    generic map(
      INIT => X"FE0E",
      LOC => "SLICE_X28Y58"
    )
    port map (
      ADR0 => iSens_IBUF_3,
      ADR1 => iDataddr_IBUF_1,
      ADR2 => iLoad_IBUF_8,
      ADR3 => iaData_7_IBUF_2,
      O => N36
    );
  say_0_1 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X44Y44"
    )
    port map (
      ADR0 => iLoad_IBUF_8,
      ADR1 => iSens_IBUF_3,
      ADR2 => saQ(1),
      ADR3 => iaData_0_IBUF_4,
      O => N27
    );
  saQ_1 : X_SFF
    generic map(
      LOC => "SLICE_X42Y44",
      INIT => '0'
    )
    port map (
      I => saQ_1_DXMUX_12,
      CE => VCC,
      CLK => saQ_1_CLKINV_16,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => saQ_1_SRINV_15,
      O => saQ(1)
    );
  saQ_2 : X_SFF
    generic map(
      LOC => "SLICE_X40Y45",
      INIT => '0'
    )
    port map (
      I => saQ_2_DXMUX_17,
      CE => VCC,
      CLK => saQ_2_CLKINV_21,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => saQ_2_SRINV_20,
      O => saQ(2)
    );
  saQ_3 : X_SFF
    generic map(
      LOC => "SLICE_X38Y50",
      INIT => '0'
    )
    port map (
      I => saQ_3_DXMUX_22,
      CE => VCC,
      CLK => saQ_3_CLKINV_26,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => saQ_3_SRINV_25,
      O => saQ(3)
    );
  saQ_4 : X_SFF
    generic map(
      LOC => "SLICE_X30Y50",
      INIT => '0'
    )
    port map (
      I => saQ_4_DXMUX_27,
      CE => VCC,
      CLK => saQ_4_CLKINV_31,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => saQ_4_SRINV_30,
      O => saQ(4)
    );
  saQ_5 : X_SFF
    generic map(
      LOC => "SLICE_X28Y52",
      INIT => '0'
    )
    port map (
      I => saQ_5_DXMUX_32,
      CE => VCC,
      CLK => saQ_5_CLKINV_36,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => saQ_5_SRINV_35,
      O => saQ(5)
    );
  saQ_6 : X_SFF
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => '0'
    )
    port map (
      I => saQ_6_DXMUX_37,
      CE => VCC,
      CLK => saQ_6_CLKINV_41,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => saQ_6_SRINV_40,
      O => saQ(6)
    );
  saQ_7 : X_SFF
    generic map(
      LOC => "SLICE_X28Y58",
      INIT => '0'
    )
    port map (
      I => saQ_7_DXMUX_42,
      CE => VCC,
      CLK => saQ_7_CLKINV_46,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => saQ_7_SRINV_45,
      O => saQ(7)
    );
  saQ_0 : X_SFF
    generic map(
      LOC => "SLICE_X44Y44",
      INIT => '0'
    )
    port map (
      I => saQ_0_DYMUX_47,
      CE => VCC,
      CLK => saQ_0_CLKINV_49,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => saQ_0_SRINV_48,
      O => saQ(0)
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  oaQ_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(6),
      O => oaQ_6_O
    );
  oaQ_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(7),
      O => oaQ_7_O
    );
  oaQ_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(0),
      O => oaQ_0_O
    );
  oaQ_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(1),
      O => oaQ_1_O
    );
  oaQ_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(2),
      O => oaQ_2_O
    );
  oaQ_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(3),
      O => oaQ_3_O
    );
  oaQ_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(4),
      O => oaQ_4_O
    );
  oaQ_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 757 ps
    )
    port map (
      I => saQ(5),
      O => oaQ_5_O
    );
  NlwBlock_reg7_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_reg7_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

