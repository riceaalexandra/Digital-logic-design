--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: e004mux8_synthesis.vhd
-- /___/   /\     Timestamp: Sun Feb 27 17:26:26 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm e004mux8 -w -dir netgen/synthesis -ofmt vhdl -sim e004mux8.ngc e004mux8_synthesis.vhd 
-- Device	: xc3s400-4-ft256
-- Input file	: e004mux8.ngc
-- Output file	: D:\e004mux8\netgen\synthesis\e004mux8_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: e004mux8
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity e004mux8 is
  port (
    oY : out STD_LOGIC; 
    iEnable : in STD_LOGIC := 'X'; 
    iaSel : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    iaData : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end e004mux8;

architecture Structure of e004mux8 is
  signal iEnable_IBUF_0 : STD_LOGIC; 
  signal sY : STD_LOGIC; 
  signal iaSel_2_IBUF_1 : STD_LOGIC; 
  signal iaSel_1_IBUF_2 : STD_LOGIC; 
  signal iaSel_0_IBUF_3 : STD_LOGIC; 
  signal iaData_7_IBUF_4 : STD_LOGIC; 
  signal iaData_6_IBUF_5 : STD_LOGIC; 
  signal iaData_5_IBUF_6 : STD_LOGIC; 
  signal iaData_4_IBUF_7 : STD_LOGIC; 
  signal iaData_3_IBUF_8 : STD_LOGIC; 
  signal iaData_2_IBUF_9 : STD_LOGIC; 
  signal iaData_1_IBUF_10 : STD_LOGIC; 
  signal iaData_0_IBUF_11 : STD_LOGIC; 
  signal iEnable_inv : STD_LOGIC; 
  signal Mmux_sY_4_f5_12 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal Mmux_sY_3_f5_13 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
begin
  Mmux_sY_2_f6 : MUXF6
    port map (
      I0 => Mmux_sY_4_f5_12,
      I1 => Mmux_sY_3_f5_13,
      S => iaSel_2_IBUF_1,
      O => sY
    );
  Mmux_sY_4_f5 : MUXF5
    port map (
      I0 => N5,
      I1 => N4,
      S => iaSel_1_IBUF_2,
      O => Mmux_sY_4_f5_12
    );
  Mmux_sY_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => iaSel_0_IBUF_3,
      I1 => iaData_0_IBUF_11,
      I2 => iaData_1_IBUF_10,
      O => N5
    );
  Mmux_sY_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => iaSel_0_IBUF_3,
      I1 => iaData_2_IBUF_9,
      I2 => iaData_3_IBUF_8,
      O => N4
    );
  Mmux_sY_3_f5 : MUXF5
    port map (
      I0 => N31,
      I1 => N21,
      S => iaSel_1_IBUF_2,
      O => Mmux_sY_3_f5_13
    );
  Mmux_sY_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => iaSel_0_IBUF_3,
      I1 => iaData_4_IBUF_7,
      I2 => iaData_5_IBUF_6,
      O => N31
    );
  Mmux_sY_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => iaSel_0_IBUF_3,
      I1 => iaData_6_IBUF_5,
      I2 => iaData_7_IBUF_4,
      O => N21
    );
  iEnable_IBUF : IBUF
    port map (
      I => iEnable,
      O => iEnable_IBUF_0
    );
  iaSel_2_IBUF : IBUF
    port map (
      I => iaSel(2),
      O => iaSel_2_IBUF_1
    );
  iaSel_1_IBUF : IBUF
    port map (
      I => iaSel(1),
      O => iaSel_1_IBUF_2
    );
  iaSel_0_IBUF : IBUF
    port map (
      I => iaSel(0),
      O => iaSel_0_IBUF_3
    );
  iaData_7_IBUF : IBUF
    port map (
      I => iaData(7),
      O => iaData_7_IBUF_4
    );
  iaData_6_IBUF : IBUF
    port map (
      I => iaData(6),
      O => iaData_6_IBUF_5
    );
  iaData_5_IBUF : IBUF
    port map (
      I => iaData(5),
      O => iaData_5_IBUF_6
    );
  iaData_4_IBUF : IBUF
    port map (
      I => iaData(4),
      O => iaData_4_IBUF_7
    );
  iaData_3_IBUF : IBUF
    port map (
      I => iaData(3),
      O => iaData_3_IBUF_8
    );
  iaData_2_IBUF : IBUF
    port map (
      I => iaData(2),
      O => iaData_2_IBUF_9
    );
  iaData_1_IBUF : IBUF
    port map (
      I => iaData(1),
      O => iaData_1_IBUF_10
    );
  iaData_0_IBUF : IBUF
    port map (
      I => iaData(0),
      O => iaData_0_IBUF_11
    );
  oY_OBUFT : OBUFT
    port map (
      I => sY,
      T => iEnable_inv,
      O => oY
    );
  iEnable_inv1_INV_0 : INV
    port map (
      I => iEnable_IBUF_0,
      O => iEnable_inv
    );
  XST_GND : GND
    port map (
      G => N1
    );
  XST_VCC : VCC
    port map (
      P => N2
    );

end Structure;

