----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    17:26:05 04/05/2022 
-- Design Name: 
-- Module Name:    RegSP - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 6.5: Sã se modeleze VHDL, sintetizeze ?i testeze un
-- registru serie paralel (registru de deplasare dreapta) pe 8 bi?i realizat
-- cu bistabile FF tip D. Nu existã semnal de ini?ializare.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegSP is
    Port ( iClock : in  STD_LOGIC;
           iDataSerie : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (0 to 7));
end RegSP;

architecture Behavioral of RegSP is
	signal saData : STD_LOGIC_VECTOR (0 to 7);
	signal saQ : STD_LOGIC_VECTOR (0 to 7);
begin
	saData <= iDataSerie & saQ(0 to 6);
	saQ <= saData when rising_edge (iClock);
	oaQ <= saQ;

end Behavioral;

