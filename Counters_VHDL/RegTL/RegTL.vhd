----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    23:32:52 04/09/2022 
-- Design Name: 
-- Module Name:    RegTL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 6.11: Registrul tampon este un registru paralel-paralel
-- prevãzut cu circuite de control a ie?irii care pot fi într-o stare logicã
-- normalã (Low sau High) ori într-o stare specialã numitã stare de
-- impedan?ã ridicatã.
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

entity RegTL is
    Port ( iValid : in  STD_LOGIC;
           iOC : in  STD_LOGIC;
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end RegTL;

architecture Behavioral of RegTL is
	signal saQ: STD_LOGIC_VECTOR (7 downto 0);
begin
	saQ <= iaData when iValid = '1';
	oaQ <= "ZZZZZZZZ" when iOC = '1' else
			 saQ;

end Behavioral;

