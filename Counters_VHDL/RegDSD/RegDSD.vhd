----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    23:09:57 04/09/2022 
-- Design Name: 
-- Module Name:    RegDSD - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 6.8: Se va modela, sintetiza ?i testa un registru de
-- deplasare dreapta/stânga, ca cel din exemplul anterior, adãugând un
-- semnal de ini?ializare asincron iINIT activ pe nivel ridicat.
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

entity RegDSD is
    Port ( iClock : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           iSens : in  STD_LOGIC;
           iISDD : in  STD_LOGIC;
           iISDS : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (0 to 7));
end RegDSD;

architecture Behavioral of RegDSD is
	signal saData : STD_LOGIC_VECTOR(0 to 7);
	signal saQ : STD_LOGIC_VECTOR(0 to 7);
begin

saData <= iISDD&saQ(0 to 6) when iSens = '0' else 
			 saQ(1 to 7)&iISDS;
saQ <= X"00" when iINIT='1' else
		 saData when rising_edge(iClock);
oaQ <= saQ;

end Behavioral;

