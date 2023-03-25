----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    21:21:46 04/11/2022 
-- Design Name: 
-- Module Name:    NumIne18 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.7: Sã se modeleze/sintetizeze/testeze un numãrãtor
--în inel modulo 8, folosind un registru de deplasare dreapta.
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

entity NumIne18 is
    Port ( iClock : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end NumIne18;

architecture Behavioral of NumIne18 is
	signal sDataD : STD_LOGIC;
	signal saData, saQ : STD_LOGIC_VECTOR (7 downto 0);
begin
	saData <= saQ(0)&saQ(7 downto 1);
	saQ <= "10000000" when iReset ='1' else
			 saData when rising_edge(iClock);
	oaQ <= saQ;

end Behavioral;

