----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    21:35:30 04/11/2022 
-- Design Name: 
-- Module Name:    NumJohnson8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.9: Sã se modeleze/sintetizeze/testeze un numãrãtor
-- modulo 16 cu ie?iri în cod Johnson, folosind un registru de deplasare
-- stânga. 
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

entity NumJohnson8 is
    Port ( iClock : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end NumJohnson8;

architecture Behavioral of NumJohnson8 is
	signal saData, saQ : STD_LOGIC_VECTOR (7 downto 0);
begin
	saData <= saQ(6 downto 0)&(not saQ(7));
	saQ <= "00000000" when iINIT ='1' else
			 saData when rising_edge(iClock);
	oaQ <= saQ;

end Behavioral;

