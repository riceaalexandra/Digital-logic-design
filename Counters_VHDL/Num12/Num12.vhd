----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    20:58:26 04/11/2022 
-- Design Name: 
-- Module Name:    Num12 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.4: Se va modela/sintetiza/testa un numãrãtor binar
--modulo N=12 cu numãrare directã ?i ini?ializare asincronã activã pe
--nivel ridicat.

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

entity Num12 is
    Port ( iClock : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (3 downto 0));
end Num12;

architecture Behavioral of Num12 is
	signal saData, saQ :STD_LOGIC_VECTOR (3 downto 0);
begin

	saData <= "0000" when saQ="1011" else
				 saQ+1;
	saQ <= "0000" when iINIT='1' else
			 saData when rising_edge(iClock);
	oaQ <= saQ;

end Behavioral;

