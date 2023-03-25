--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: functie_timesim.vhd
-- /___/   /\     Timestamp: Thu Jan 06 13:31:50 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf functie.pcf -rpw 100 -tpw 0 -ar Structure -tm functie -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim functie.ncd functie_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: functie.ncd
-- Output file	: D:\SUM8-Ricea-Alexandra\schema\netgen\par\functie_timesim.vhd
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
    COUT : out STD_LOGIC; 
    OFL : out STD_LOGIC; 
    CIN : in STD_LOGIC := 'X'; 
    S : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
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
  signal XLXI_1_I_36_58_O : STD_LOGIC; 
  signal A_4_IBUF_8 : STD_LOGIC; 
  signal B_4_IBUF_9 : STD_LOGIC; 
  signal A_5_IBUF_10 : STD_LOGIC; 
  signal B_5_IBUF_11 : STD_LOGIC; 
  signal XLXI_1_I_36_110_O : STD_LOGIC; 
  signal A_6_IBUF_12 : STD_LOGIC; 
  signal B_6_IBUF_13 : STD_LOGIC; 
  signal A_7_IBUF_14 : STD_LOGIC; 
  signal B_7_IBUF_15 : STD_LOGIC; 
  signal XLXI_1_C6O : STD_LOGIC; 
  signal COUT_OBUF_16 : STD_LOGIC; 
  signal S_0_OBUF_XORF_17 : STD_LOGIC; 
  signal S_0_OBUF_CYINIT_18 : STD_LOGIC; 
  signal S_0_OBUF_CY0F_19 : STD_LOGIC; 
  signal S_0_OBUF_CYSELF_20 : STD_LOGIC; 
  signal XLXI_1_I0 : STD_LOGIC; 
  signal S_0_OBUF_XORG_21 : STD_LOGIC; 
  signal S_0_OBUF_CYMUXG_22 : STD_LOGIC; 
  signal XLXI_1_I_36_111_O : STD_LOGIC; 
  signal S_0_OBUF_CY0G_23 : STD_LOGIC; 
  signal S_0_OBUF_CYSELG_24 : STD_LOGIC; 
  signal XLXI_1_I1 : STD_LOGIC; 
  signal S_2_OBUF_XORF_25 : STD_LOGIC; 
  signal S_2_OBUF_CYINIT_26 : STD_LOGIC; 
  signal S_2_OBUF_CY0F_27 : STD_LOGIC; 
  signal XLXI_1_I2 : STD_LOGIC; 
  signal S_2_OBUF_XORG_28 : STD_LOGIC; 
  signal XLXI_1_I_36_62_O : STD_LOGIC; 
  signal S_2_OBUF_CYSELF_29 : STD_LOGIC; 
  signal S_2_OBUF_CYMUXFAST_30 : STD_LOGIC; 
  signal S_2_OBUF_CYAND_31 : STD_LOGIC; 
  signal S_2_OBUF_FASTCARRY_32 : STD_LOGIC; 
  signal S_2_OBUF_CYMUXG2_33 : STD_LOGIC; 
  signal S_2_OBUF_CYMUXF2_34 : STD_LOGIC; 
  signal S_2_OBUF_CY0G_35 : STD_LOGIC; 
  signal S_2_OBUF_CYSELG_36 : STD_LOGIC; 
  signal XLXI_1_I3 : STD_LOGIC; 
  signal S_4_OBUF_XORF_37 : STD_LOGIC; 
  signal S_4_OBUF_CYINIT_38 : STD_LOGIC; 
  signal S_4_OBUF_CY0F_39 : STD_LOGIC; 
  signal XLXI_1_I4 : STD_LOGIC; 
  signal S_4_OBUF_XORG_40 : STD_LOGIC; 
  signal XLXI_1_I_36_63_O : STD_LOGIC; 
  signal S_4_OBUF_CYSELF_41 : STD_LOGIC; 
  signal S_4_OBUF_CYMUXFAST_42 : STD_LOGIC; 
  signal S_4_OBUF_CYAND_43 : STD_LOGIC; 
  signal S_4_OBUF_FASTCARRY_44 : STD_LOGIC; 
  signal S_4_OBUF_CYMUXG2_45 : STD_LOGIC; 
  signal S_4_OBUF_CYMUXF2_46 : STD_LOGIC; 
  signal S_4_OBUF_CY0G_47 : STD_LOGIC; 
  signal S_4_OBUF_CYSELG_48 : STD_LOGIC; 
  signal XLXI_1_I5 : STD_LOGIC; 
  signal S_6_OBUF_XORF_49 : STD_LOGIC; 
  signal S_6_OBUF_CYINIT_50 : STD_LOGIC; 
  signal S_6_OBUF_CY0F_51 : STD_LOGIC; 
  signal XLXI_1_I6 : STD_LOGIC; 
  signal S_6_OBUF_XORG_52 : STD_LOGIC; 
  signal S_6_OBUF_CYSELF_53 : STD_LOGIC; 
  signal S_6_OBUF_CYMUXFAST_54 : STD_LOGIC; 
  signal S_6_OBUF_CYAND_55 : STD_LOGIC; 
  signal S_6_OBUF_FASTCARRY_56 : STD_LOGIC; 
  signal S_6_OBUF_CYMUXG2_57 : STD_LOGIC; 
  signal S_6_OBUF_CYMUXF2_58 : STD_LOGIC; 
  signal S_6_OBUF_CY0G_59 : STD_LOGIC; 
  signal S_6_OBUF_CYSELG_60 : STD_LOGIC; 
  signal XLXI_1_I7 : STD_LOGIC; 
  signal A_0_INBUF : STD_LOGIC; 
  signal A_1_INBUF : STD_LOGIC; 
  signal A_2_INBUF : STD_LOGIC; 
  signal A_3_INBUF : STD_LOGIC; 
  signal B_0_INBUF : STD_LOGIC; 
  signal A_4_INBUF : STD_LOGIC; 
  signal B_1_INBUF : STD_LOGIC; 
  signal A_5_INBUF : STD_LOGIC; 
  signal B_2_INBUF : STD_LOGIC; 
  signal A_6_INBUF : STD_LOGIC; 
  signal B_3_INBUF : STD_LOGIC; 
  signal A_7_INBUF : STD_LOGIC; 
  signal B_4_INBUF : STD_LOGIC; 
  signal OFL_O : STD_LOGIC; 
  signal B_5_INBUF : STD_LOGIC; 
  signal B_6_INBUF : STD_LOGIC; 
  signal B_7_INBUF : STD_LOGIC; 
  signal S_0_O : STD_LOGIC; 
  signal S_1_O : STD_LOGIC; 
  signal S_2_O : STD_LOGIC; 
  signal S_3_O : STD_LOGIC; 
  signal S_4_O : STD_LOGIC; 
  signal S_5_O : STD_LOGIC; 
  signal S_6_O : STD_LOGIC; 
  signal S_7_O : STD_LOGIC; 
  signal CIN_INBUF : STD_LOGIC; 
  signal COUT_O : STD_LOGIC; 
  signal OFL_OBUF_61 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  S_0_OBUF_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X31Y0"
    )
    port map (
      I0 => S_0_OBUF_CYINIT_18,
      I1 => XLXI_1_I0,
      O => S_0_OBUF_XORF_17
    );
  S_0_OBUF_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X31Y0"
    )
    port map (
      IA => S_0_OBUF_CY0F_19,
      IB => S_0_OBUF_CYINIT_18,
      SEL => S_0_OBUF_CYSELF_20,
      O => XLXI_1_I_36_111_O
    );
  S_0_OBUF_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X31Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => CIN_INBUF,
      O => S_0_OBUF_CYINIT_18
    );
  S_0_OBUF_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X31Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_0_IBUF_0,
      O => S_0_OBUF_CY0F_19
    );
  S_0_OBUF_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X31Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I0,
      O => S_0_OBUF_CYSELF_20
    );
  S_0_OBUF_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X31Y0"
    )
    port map (
      I0 => XLXI_1_I_36_111_O,
      I1 => XLXI_1_I1,
      O => S_0_OBUF_XORG_21
    );
  S_0_OBUF_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_0_OBUF_CYMUXG_22,
      O => XLXI_1_I_36_55_O
    );
  S_0_OBUF_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X31Y0"
    )
    port map (
      IA => S_0_OBUF_CY0G_23,
      IB => XLXI_1_I_36_111_O,
      SEL => S_0_OBUF_CYSELG_24,
      O => S_0_OBUF_CYMUXG_22
    );
  S_0_OBUF_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X31Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_1_IBUF_2,
      O => S_0_OBUF_CY0G_23
    );
  S_0_OBUF_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X31Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I1,
      O => S_0_OBUF_CYSELG_24
    );
  XLXI_1_I_36_229 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X31Y0"
    )
    port map (
      ADR0 => A_1_IBUF_2,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => B_1_IBUF_3,
      O => XLXI_1_I1
    );
  S_2_OBUF_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X31Y1"
    )
    port map (
      I0 => S_2_OBUF_CYINIT_26,
      I1 => XLXI_1_I2,
      O => S_2_OBUF_XORF_25
    );
  S_2_OBUF_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X31Y1"
    )
    port map (
      IA => S_2_OBUF_CY0F_27,
      IB => S_2_OBUF_CYINIT_26,
      SEL => S_2_OBUF_CYSELF_29,
      O => XLXI_1_I_36_62_O
    );
  S_2_OBUF_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y1"
    )
    port map (
      IA => S_2_OBUF_CY0F_27,
      IB => S_2_OBUF_CY0F_27,
      SEL => S_2_OBUF_CYSELF_29,
      O => S_2_OBUF_CYMUXF2_34
    );
  S_2_OBUF_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X31Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I_36_55_O,
      O => S_2_OBUF_CYINIT_26
    );
  S_2_OBUF_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X31Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_2_IBUF_4,
      O => S_2_OBUF_CY0F_27
    );
  S_2_OBUF_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X31Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I2,
      O => S_2_OBUF_CYSELF_29
    );
  S_2_OBUF_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X31Y1"
    )
    port map (
      I0 => XLXI_1_I_36_62_O,
      I1 => XLXI_1_I3,
      O => S_2_OBUF_XORG_28
    );
  S_2_OBUF_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_2_OBUF_CYMUXFAST_30,
      O => XLXI_1_I_36_58_O
    );
  S_2_OBUF_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X31Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I_36_55_O,
      O => S_2_OBUF_FASTCARRY_32
    );
  S_2_OBUF_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X31Y1"
    )
    port map (
      I0 => S_2_OBUF_CYSELG_36,
      I1 => S_2_OBUF_CYSELF_29,
      O => S_2_OBUF_CYAND_31
    );
  S_2_OBUF_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X31Y1"
    )
    port map (
      IA => S_2_OBUF_CYMUXG2_33,
      IB => S_2_OBUF_FASTCARRY_32,
      SEL => S_2_OBUF_CYAND_31,
      O => S_2_OBUF_CYMUXFAST_30
    );
  S_2_OBUF_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y1"
    )
    port map (
      IA => S_2_OBUF_CY0G_35,
      IB => S_2_OBUF_CYMUXF2_34,
      SEL => S_2_OBUF_CYSELG_36,
      O => S_2_OBUF_CYMUXG2_33
    );
  S_2_OBUF_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X31Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_3_IBUF_6,
      O => S_2_OBUF_CY0G_35
    );
  S_2_OBUF_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X31Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I3,
      O => S_2_OBUF_CYSELG_36
    );
  XLXI_1_I_36_225 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X31Y1"
    )
    port map (
      ADR0 => A_3_IBUF_6,
      ADR1 => B_3_IBUF_7,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_1_I3
    );
  S_4_OBUF_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X31Y2"
    )
    port map (
      I0 => S_4_OBUF_CYINIT_38,
      I1 => XLXI_1_I4,
      O => S_4_OBUF_XORF_37
    );
  S_4_OBUF_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X31Y2"
    )
    port map (
      IA => S_4_OBUF_CY0F_39,
      IB => S_4_OBUF_CYINIT_38,
      SEL => S_4_OBUF_CYSELF_41,
      O => XLXI_1_I_36_63_O
    );
  S_4_OBUF_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y2"
    )
    port map (
      IA => S_4_OBUF_CY0F_39,
      IB => S_4_OBUF_CY0F_39,
      SEL => S_4_OBUF_CYSELF_41,
      O => S_4_OBUF_CYMUXF2_46
    );
  S_4_OBUF_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X31Y2",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I_36_58_O,
      O => S_4_OBUF_CYINIT_38
    );
  S_4_OBUF_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X31Y2",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_4_IBUF_8,
      O => S_4_OBUF_CY0F_39
    );
  S_4_OBUF_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X31Y2",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I4,
      O => S_4_OBUF_CYSELF_41
    );
  S_4_OBUF_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X31Y2"
    )
    port map (
      I0 => XLXI_1_I_36_63_O,
      I1 => XLXI_1_I5,
      O => S_4_OBUF_XORG_40
    );
  S_4_OBUF_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y2",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_4_OBUF_CYMUXFAST_42,
      O => XLXI_1_I_36_110_O
    );
  S_4_OBUF_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X31Y2",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I_36_58_O,
      O => S_4_OBUF_FASTCARRY_44
    );
  S_4_OBUF_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X31Y2"
    )
    port map (
      I0 => S_4_OBUF_CYSELG_48,
      I1 => S_4_OBUF_CYSELF_41,
      O => S_4_OBUF_CYAND_43
    );
  S_4_OBUF_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X31Y2"
    )
    port map (
      IA => S_4_OBUF_CYMUXG2_45,
      IB => S_4_OBUF_FASTCARRY_44,
      SEL => S_4_OBUF_CYAND_43,
      O => S_4_OBUF_CYMUXFAST_42
    );
  S_4_OBUF_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y2"
    )
    port map (
      IA => S_4_OBUF_CY0G_47,
      IB => S_4_OBUF_CYMUXF2_46,
      SEL => S_4_OBUF_CYSELG_48,
      O => S_4_OBUF_CYMUXG2_45
    );
  S_4_OBUF_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X31Y2",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_5_IBUF_10,
      O => S_4_OBUF_CY0G_47
    );
  S_4_OBUF_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X31Y2",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I5,
      O => S_4_OBUF_CYSELG_48
    );
  XLXI_1_I_36_223 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X31Y2"
    )
    port map (
      ADR0 => A_5_IBUF_10,
      ADR1 => B_5_IBUF_11,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_1_I5
    );
  S_6_OBUF_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X31Y3"
    )
    port map (
      I0 => S_6_OBUF_CYINIT_50,
      I1 => XLXI_1_I6,
      O => S_6_OBUF_XORF_49
    );
  S_6_OBUF_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X31Y3"
    )
    port map (
      IA => S_6_OBUF_CY0F_51,
      IB => S_6_OBUF_CYINIT_50,
      SEL => S_6_OBUF_CYSELF_53,
      O => XLXI_1_C6O
    );
  S_6_OBUF_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y3"
    )
    port map (
      IA => S_6_OBUF_CY0F_51,
      IB => S_6_OBUF_CY0F_51,
      SEL => S_6_OBUF_CYSELF_53,
      O => S_6_OBUF_CYMUXF2_58
    );
  S_6_OBUF_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X31Y3",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I_36_110_O,
      O => S_6_OBUF_CYINIT_50
    );
  S_6_OBUF_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X31Y3",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_6_IBUF_12,
      O => S_6_OBUF_CY0F_51
    );
  S_6_OBUF_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X31Y3",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I6,
      O => S_6_OBUF_CYSELF_53
    );
  S_6_OBUF_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X31Y3"
    )
    port map (
      I0 => XLXI_1_C6O,
      I1 => XLXI_1_I7,
      O => S_6_OBUF_XORG_52
    );
  S_6_OBUF_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y3",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_6_OBUF_CYMUXFAST_54,
      O => COUT_OBUF_16
    );
  S_6_OBUF_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X31Y3",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I_36_110_O,
      O => S_6_OBUF_FASTCARRY_56
    );
  S_6_OBUF_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X31Y3"
    )
    port map (
      I0 => S_6_OBUF_CYSELG_60,
      I1 => S_6_OBUF_CYSELF_53,
      O => S_6_OBUF_CYAND_55
    );
  S_6_OBUF_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X31Y3"
    )
    port map (
      IA => S_6_OBUF_CYMUXG2_57,
      IB => S_6_OBUF_FASTCARRY_56,
      SEL => S_6_OBUF_CYAND_55,
      O => S_6_OBUF_CYMUXFAST_54
    );
  S_6_OBUF_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y3"
    )
    port map (
      IA => S_6_OBUF_CY0G_59,
      IB => S_6_OBUF_CYMUXF2_58,
      SEL => S_6_OBUF_CYSELG_60,
      O => S_6_OBUF_CYMUXG2_57
    );
  S_6_OBUF_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X31Y3",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_7_IBUF_14,
      O => S_6_OBUF_CY0G_59
    );
  S_6_OBUF_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X31Y3",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_1_I7,
      O => S_6_OBUF_CYSELG_60
    );
  XLXI_1_I_36_221 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X31Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_7_IBUF_14,
      ADR2 => VCC,
      ADR3 => B_7_IBUF_15,
      O => XLXI_1_I7
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(0),
      O => A_0_INBUF
    );
  A_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_0_INBUF,
      O => A_0_IBUF_0
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(1),
      O => A_1_INBUF
    );
  A_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_1_INBUF,
      O => A_1_IBUF_2
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(2),
      O => A_2_INBUF
    );
  A_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_2_INBUF,
      O => A_2_IBUF_4
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(3),
      O => A_3_INBUF
    );
  A_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_3_INBUF,
      O => A_3_IBUF_6
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(0),
      O => B_0_INBUF
    );
  B_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_0_INBUF,
      O => B_0_IBUF_1
    );
  A_4_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(4),
      O => A_4_INBUF
    );
  A_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_4_INBUF,
      O => A_4_IBUF_8
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(1),
      O => B_1_INBUF
    );
  B_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_1_INBUF,
      O => B_1_IBUF_3
    );
  A_5_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(5),
      O => A_5_INBUF
    );
  A_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_5_INBUF,
      O => A_5_IBUF_10
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(2),
      O => B_2_INBUF
    );
  B_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_2_INBUF,
      O => B_2_IBUF_5
    );
  A_6_IBUF : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(6),
      O => A_6_INBUF
    );
  A_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_6_INBUF,
      O => A_6_IBUF_12
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(3),
      O => B_3_INBUF
    );
  B_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_3_INBUF,
      O => B_3_IBUF_7
    );
  A_7_IBUF : X_BUF
    generic map(
      LOC => "PAD166",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(7),
      O => A_7_INBUF
    );
  A_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD166",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_7_INBUF,
      O => A_7_IBUF_14
    );
  B_4_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(4),
      O => B_4_INBUF
    );
  B_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_4_INBUF,
      O => B_4_IBUF_9
    );
  OFL_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => OFL_O,
      O => OFL
    );
  B_5_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(5),
      O => B_5_INBUF
    );
  B_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_5_INBUF,
      O => B_5_IBUF_11
    );
  B_6_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(6),
      O => B_6_INBUF
    );
  B_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_6_INBUF,
      O => B_6_IBUF_13
    );
  B_7_IBUF : X_BUF
    generic map(
      LOC => "PAD165",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(7),
      O => B_7_INBUF
    );
  B_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD165",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_7_INBUF,
      O => B_7_IBUF_15
    );
  S_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => S_0_O,
      O => S(0)
    );
  S_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => S_1_O,
      O => S(1)
    );
  S_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => S_2_O,
      O => S(2)
    );
  S_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => S_3_O,
      O => S(3)
    );
  S_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => S_4_O,
      O => S(4)
    );
  S_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => S_5_O,
      O => S(5)
    );
  S_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => S_6_O,
      O => S(6)
    );
  S_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => S_7_O,
      O => S(7)
    );
  CIN_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 757 ps
    )
    port map (
      I => CIN,
      O => CIN_INBUF
    );
  COUT_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => COUT_O,
      O => COUT
    );
  XLXI_1_I_36_239 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X33Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_1_C6O,
      ADR2 => COUT_OBUF_16,
      ADR3 => VCC,
      O => OFL_OBUF_61
    );
  XLXI_1_I_36_228 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X31Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_0_IBUF_0,
      ADR2 => VCC,
      ADR3 => B_0_IBUF_1,
      O => XLXI_1_I0
    );
  XLXI_1_I_36_230 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X31Y1"
    )
    port map (
      ADR0 => A_2_IBUF_4,
      ADR1 => VCC,
      ADR2 => B_2_IBUF_5,
      ADR3 => VCC,
      O => XLXI_1_I2
    );
  XLXI_1_I_36_224 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X31Y2"
    )
    port map (
      ADR0 => A_4_IBUF_8,
      ADR1 => B_4_IBUF_9,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_1_I4
    );
  XLXI_1_I_36_222 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X31Y3"
    )
    port map (
      ADR0 => A_6_IBUF_12,
      ADR1 => B_6_IBUF_13,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_1_I6
    );
  OFL_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 757 ps
    )
    port map (
      I => OFL_OBUF_61,
      O => OFL_O
    );
  S_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_0_OBUF_XORF_17,
      O => S_0_O
    );
  S_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_0_OBUF_XORG_21,
      O => S_1_O
    );
  S_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_2_OBUF_XORF_25,
      O => S_2_O
    );
  S_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_2_OBUF_XORG_28,
      O => S_3_O
    );
  S_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_4_OBUF_XORF_37,
      O => S_4_O
    );
  S_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_4_OBUF_XORG_40,
      O => S_5_O
    );
  S_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_6_OBUF_XORF_49,
      O => S_6_O
    );
  S_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_6_OBUF_XORG_52,
      O => S_7_O
    );
  COUT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 757 ps
    )
    port map (
      I => COUT_OBUF_16,
      O => COUT_O
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

