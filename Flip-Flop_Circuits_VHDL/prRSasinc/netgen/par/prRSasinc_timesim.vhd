--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: prRSasinc_timesim.vhd
-- /___/   /\     Timestamp: Sun Mar 27 20:23:21 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf prRSasinc.pcf -rpw 100 -tpw 0 -ar Structure -tm prRSasinc -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim prRSasinc.ncd prRSasinc_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: prRSasinc.ncd
-- Output file	: D:\laborator_5\prRSasinc\netgen\par\prRSasinc_timesim.vhd
-- # of Entities	: 1
-- Design Name	: prRSasinc
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

entity prRSasinc is
  port (
    iReset : in STD_LOGIC := 'X'; 
    iSet : in STD_LOGIC := 'X'; 
    oQ : out STD_LOGIC; 
    oQN : out STD_LOGIC 
  );
end prRSasinc;

architecture Structure of prRSasinc is
  signal iSet_IBUF_0 : STD_LOGIC; 
  signal oQN_OBUF_1 : STD_LOGIC; 
  signal iReset_IBUF_2 : STD_LOGIC; 
  signal oQ_O : STD_LOGIC; 
  signal iSet_INBUF : STD_LOGIC; 
  signal oQN_O : STD_LOGIC; 
  signal iReset_INBUF : STD_LOGIC; 
  signal oQ_OBUF_3 : STD_LOGIC; 
  signal oQN_OBUF_pack_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  oQ_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => oQ_O,
      O => oQ
    );
  iSet_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSet,
      O => iSet_INBUF
    );
  iSet_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 757 ps
    )
    port map (
      I => iSet_INBUF,
      O => iSet_IBUF_0
    );
  oQN_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => oQN_O,
      O => oQN
    );
  iReset_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset,
      O => iReset_INBUF
    );
  iReset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 757 ps
    )
    port map (
      I => iReset_INBUF,
      O => iReset_IBUF_2
    );
  oQ_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => oQN_OBUF_pack_2,
      O => oQN_OBUF_1
    );
  sQN1 : X_LUT4
    generic map(
      INIT => X"AFAA",
      LOC => "SLICE_X18Y0"
    )
    port map (
      ADR0 => iReset_IBUF_2,
      ADR1 => VCC,
      ADR2 => iSet_IBUF_0,
      ADR3 => oQN_OBUF_1,
      O => oQN_OBUF_pack_2
    );
  sQ1 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X18Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => iSet_IBUF_0,
      ADR3 => oQN_OBUF_1,
      O => oQ_OBUF_3
    );
  oQ_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 757 ps
    )
    port map (
      I => oQ_OBUF_3,
      O => oQ_O
    );
  oQN_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 757 ps
    )
    port map (
      I => oQN_OBUF_1,
      O => oQN_O
    );
  NlwBlock_prRSasinc_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

