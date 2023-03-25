----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    21:04:42 04/11/2022 
-- Design Name: 
-- Module Name:    NumDec - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.5: Se va sintetiza un numãrãtor decadic (modulo 10)
--cu ie?iri în cod binar zecimal natural (CBZ 8421), prevãzut cu intrãri
--de ini?ializare asincronã activã pe nivel ridicat ?i de validare sincronã
--activã pe nivel ridicat. Numãrãtorul genereazã ?i o ie?ire de transport
--care se activeazã doar pe durata stãrii 1001.
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

entity NumDec is
    Port ( iClock : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           iValid : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (3 downto 0);
           oCY : out  STD_LOGIC);
end NumDec;

architecture Behavioral of NumDec is
	signal saData, saQ :STD_LOGIC_VECTOR (3 downto 0);
begin
	saData <= "0000" when saQ="1001" else
				 saQ+1 when iValid='1' else
				 saQ;
	saQ <= "0000" when iReset = '1' else
			 saData when rising_edge(iClock);
	oaQ <= saQ;
	oCY <='1' when saQ="1001" else
			'0';

end Behavioral;

