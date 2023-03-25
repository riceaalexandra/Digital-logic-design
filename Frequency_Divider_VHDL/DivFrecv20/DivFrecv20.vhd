----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    21:44:39 04/11/2022 
-- Design Name: 
-- Module Name:    DivFrecv20 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.11: Sã se modeleze/sintetizeze/testeze un divizor de
--frecven?ã modulo 20 cu ini?ializare asincronã activã pe nivel coborât.
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

entity DivFrecv20 is
    Port ( iClock : in  STD_LOGIC;
           iResetN : in  STD_LOGIC;
           oQ : out  STD_LOGIC);
end DivFrecv20;

architecture Behavioral of DivFrecv20 is
	signal saData, saQ :STD_LOGIC_VECTOR(4 downto 0);
begin

	saData <= "00000" when saQ = "10011" else
			    saQ+1;
	saQ <= "00000" when iResetN='0' else
			 saData when rising_edge(iClock);
	oQ <= '1' when saQ = "10011" else
			'0';

end Behavioral;

