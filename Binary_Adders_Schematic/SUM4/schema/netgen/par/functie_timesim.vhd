--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: functie_timesim.vhd
-- /___/   /\     Timestamp: Thu Jan 06 13:09:25 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf functie.pcf -rpw 100 -tpw 0 -ar Structure -tm functie -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim functie.ncd functie_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: functie.ncd
-- Output file	: D:\SUM4-Ricea-Alexandra\schema\netgen\par\functie_timesim.vhd
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
    Cout : out STD_LOGIC; 
    OFL : out STD_LOGIC; 
    Cin : in STD_LOGIC := 'X'; 
    S : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end functie;

architecture Structure of functie is
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal B_0_IBUF_1 : STD_LOGIC; 
  signal A_1_IBUF_2 : STD_LOGIC; 
  signal B_1_IBUF_3 : STD_LOGIC; 
  signal XLXI_1_I_36_55_O : STD_LOGIC; 
  signal A_2_IBUF_4 : STD_LOGIC; 
  signal B_2_IBUF_5 : STD_LOGIC; 
  signal A_3_IBUF_6 : STD_LOGIC; 
  signal B_3_IBUF_7 : STD_LOGIC; 
  signal XLXI_1_C2O : STD_LOGIC; 
  signal Cout_OBUF_8 : STD_LOGIC; 
  signal S_0_OBUF_XORF_9 : STD_LOGIC; 
  signal S_0_OBUF_CYINIT_10 : STD_LOGIC; 
  signal S_0_OBUF_CY0F_11 : STD_LOGIC; 
  signal S_0_OBUF_CYSELF_12 : STD_LOGIC; 
  signal XLXI_1_I0 : STD_LOGIC; 
  signal S_0_OBUF_XORG_13 : STD_LOGIC; 
  signal S_0_OBUF_CYMUXG_14 : STD_LOGIC; 
  signal XLXI_1_I_36_111_O : STD_LOGIC; 
  signal S_0_OBUF_CY0G_15 : STD_LOGIC; 
  signal S_0_OBUF_CYSELG_16 : STD_LOGIC; 
  signal XLXI_1_I1 : STD_LOGIC; 
  signal S_2_OBUF_XORF_17 : STD_LOGIC; 
  signal S_2_OBUF_CYINIT_18 : STD_LOGIC; 
  signal S_2_OBUF_CY0F_19 : STD_LOGIC; 
  signal XLXI_1_I2 : STD_LOGIC; 
  signal S_2_OBUF_XORG_20 : STD_LOGIC; 
  signal S_2_OBUF_CYSELF_21 : STD_LOGIC; 
  signal S_2_OBUF_CYMUXFAST_22 : STD_LOGIC; 
  signal S_2_OBUF_CYAND_23 : STD_LOGIC; 
  signal S_2_OBUF_FASTCARRY_24 : STD_LOGIC; 
  signal S_2_OBUF_CYMUXG2_25 : STD_LOGIC; 
  signal S_2_OBUF_CYMUXF2_26 : STD_LOGIC; 
  signal S_2_OBUF_CY0G_27 : STD_LOGIC; 
  signal S_2_OBUF_CYSELG_28 : STD_LOGIC; 
  signal XLXI_1_I3 : STD_LOGIC; 
  signal A_0_INBUF : STD_LOGIC; 
  signal A_1_INBUF : STD_LOGIC; 
  signal A_2_INBUF : STD_LOGIC; 
  signal A_3_INBUF : STD_LOGIC; 
  signal Cout_O : STD_LOGIC; 
  signal B_0_INBUF : STD_LOGIC; 
  signal B_1_INBUF : STD_LOGIC; 
  signal B_2_INBUF : STD_LOGIC; 
  signal B_3_INBUF : STD_LOGIC; 
  signal OFL_O : STD_LOGIC; 
  signal S_0_O : STD_LOGIC; 
  signal S_1_O : STD_LOGIC; 
  signal S_2_O : STD_LOGIC; 
  signal S_3_O : STD_LOGIC; 
  signal Cin_INBUF : STD_LOGIC; 
  signal OFL_OBUF_29 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  S_0_OBUF_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y38"
    )
    port map (
      I0 => S_0_OBUF_CYINIT_10,
      I1 => XLXI_1_I0,
      O => S_0_OBUF_XORF_9
    );
  S_0_OBUF_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y38"
    )
    port map (
      IA => S_0_OBUF_CY0F_11,
      IB => S_0_OBUF_CYINIT_10,
      SEL => S_0_OBUF_CYSELF_12,
      O => XLXI_1_I_36_111_O
    );
  S_0_OBUF_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y38",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cin_INBUF,
      O => S_0_OBUF_CYINIT_10
    );
  S_0_OBUF_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y38",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_0_IBUF_0,
      O => S_0_OBUF_CY0F_11
    );
  S_0_OBUF_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y38",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I0,
      O => S_0_OBUF_CYSELF_12
    );
  S_0_OBUF_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y38"
    )
    port map (
      I0 => XLXI_1_I_36_111_O,
      I1 => XLXI_1_I1,
      O => S_0_OBUF_XORG_13
    );
  S_0_OBUF_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y38",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_0_OBUF_CYMUXG_14,
      O => XLXI_1_I_36_55_O
    );
  S_0_OBUF_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X0Y38"
    )
    port map (
      IA => S_0_OBUF_CY0G_15,
      IB => XLXI_1_I_36_111_O,
      SEL => S_0_OBUF_CYSELG_16,
      O => S_0_OBUF_CYMUXG_14
    );
  S_0_OBUF_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X0Y38",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_1_IBUF_2,
      O => S_0_OBUF_CY0G_15
    );
  S_0_OBUF_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X0Y38",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I1,
      O => S_0_OBUF_CYSELG_16
    );
  XLXI_1_I_36_240 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X0Y38"
    )
    port map (
      ADR0 => A_1_IBUF_2,
      ADR1 => VCC,
      ADR2 => B_1_IBUF_3,
      ADR3 => VCC,
      O => XLXI_1_I1
    );
  S_2_OBUF_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y39"
    )
    port map (
      I0 => S_2_OBUF_CYINIT_18,
      I1 => XLXI_1_I2,
      O => S_2_OBUF_XORF_17
    );
  S_2_OBUF_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y39"
    )
    port map (
      IA => S_2_OBUF_CY0F_19,
      IB => S_2_OBUF_CYINIT_18,
      SEL => S_2_OBUF_CYSELF_21,
      O => XLXI_1_C2O
    );
  S_2_OBUF_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y39"
    )
    port map (
      IA => S_2_OBUF_CY0F_19,
      IB => S_2_OBUF_CY0F_19,
      SEL => S_2_OBUF_CYSELF_21,
      O => S_2_OBUF_CYMUXF2_26
    );
  S_2_OBUF_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y39",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I_36_55_O,
      O => S_2_OBUF_CYINIT_18
    );
  S_2_OBUF_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y39",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_2_IBUF_4,
      O => S_2_OBUF_CY0F_19
    );
  S_2_OBUF_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y39",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I2,
      O => S_2_OBUF_CYSELF_21
    );
  S_2_OBUF_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y39"
    )
    port map (
      I0 => XLXI_1_C2O,
      I1 => XLXI_1_I3,
      O => S_2_OBUF_XORG_20
    );
  S_2_OBUF_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y39",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_2_OBUF_CYMUXFAST_22,
      O => Cout_OBUF_8
    );
  S_2_OBUF_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X0Y39",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I_36_55_O,
      O => S_2_OBUF_FASTCARRY_24
    );
  S_2_OBUF_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X0Y39"
    )
    port map (
      I0 => S_2_OBUF_CYSELG_28,
      I1 => S_2_OBUF_CYSELF_21,
      O => S_2_OBUF_CYAND_23
    );
  S_2_OBUF_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X0Y39"
    )
    port map (
      IA => S_2_OBUF_CYMUXG2_25,
      IB => S_2_OBUF_FASTCARRY_24,
      SEL => S_2_OBUF_CYAND_23,
      O => S_2_OBUF_CYMUXFAST_22
    );
  S_2_OBUF_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y39"
    )
    port map (
      IA => S_2_OBUF_CY0G_27,
      IB => S_2_OBUF_CYMUXF2_26,
      SEL => S_2_OBUF_CYSELG_28,
      O => S_2_OBUF_CYMUXG2_25
    );
  S_2_OBUF_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X0Y39",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_3_IBUF_6,
      O => S_2_OBUF_CY0G_27
    );
  S_2_OBUF_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X0Y39",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I3,
      O => S_2_OBUF_CYSELG_28
    );
  XLXI_1_I_36_242 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X0Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_3_IBUF_6,
      ADR2 => VCC,
      ADR3 => B_3_IBUF_7,
      O => XLXI_1_I3
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD241",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(0),
      O => A_0_INBUF
    );
  A_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD241",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_0_INBUF,
      O => A_0_IBUF_0
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD237",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(1),
      O => A_1_INBUF
    );
  A_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD237",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_1_INBUF,
      O => A_1_IBUF_2
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD249",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(2),
      O => A_2_INBUF
    );
  A_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD249",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_2_INBUF,
      O => A_2_IBUF_4
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD234",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(3),
      O => A_3_INBUF
    );
  A_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD234",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_3_INBUF,
      O => A_3_IBUF_6
    );
  Cout_OBUF : X_OBUF
    generic map(
      LOC => "PAD253"
    )
    port map (
      I => Cout_O,
      O => Cout
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(0),
      O => B_0_INBUF
    );
  B_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_0_INBUF,
      O => B_0_IBUF_1
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD250",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(1),
      O => B_1_INBUF
    );
  B_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD250",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_1_INBUF,
      O => B_1_IBUF_3
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD235",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(2),
      O => B_2_INBUF
    );
  B_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD235",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_2_INBUF,
      O => B_2_IBUF_5
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(3),
      O => B_3_INBUF
    );
  B_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_3_INBUF,
      O => B_3_IBUF_7
    );
  OFL_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => OFL_O,
      O => OFL
    );
  S_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD239"
    )
    port map (
      I => S_0_O,
      O => S(0)
    );
  S_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD238"
    )
    port map (
      I => S_1_O,
      O => S(1)
    );
  S_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD252"
    )
    port map (
      I => S_2_O,
      O => S(2)
    );
  S_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => S_3_O,
      O => S(3)
    );
  Cin_IBUF : X_BUF
    generic map(
      LOC => "PAD251",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cin,
      O => Cin_INBUF
    );
  XLXI_1_I_36_259 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X1Y38"
    )
    port map (
      ADR0 => XLXI_1_C2O,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Cout_OBUF_8,
      O => OFL_OBUF_29
    );
  XLXI_1_I_36_239 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X0Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_0_IBUF_0,
      ADR2 => B_0_IBUF_1,
      ADR3 => VCC,
      O => XLXI_1_I0
    );
  XLXI_1_I_36_241 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X0Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_2_IBUF_4,
      ADR2 => VCC,
      ADR3 => B_2_IBUF_5,
      O => XLXI_1_I2
    );
  Cout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD253",
      PATHPULSE => 757 ps
    )
    port map (
      I => Cout_OBUF_8,
      O => Cout_O
    );
  OFL_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 757 ps
    )
    port map (
      I => OFL_OBUF_29,
      O => OFL_O
    );
  S_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD239",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_0_OBUF_XORF_9,
      O => S_0_O
    );
  S_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD238",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_0_OBUF_XORG_13,
      O => S_1_O
    );
  S_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD252",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_2_OBUF_XORF_17,
      O => S_2_O
    );
  S_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_2_OBUF_XORG_20,
      O => S_3_O
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

