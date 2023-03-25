----------------------------------------------------------------------------------
-- Company: cr1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    20:51:11 04/11/2022 
-- Design Name: 
-- Module Name:    Num16 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.3: Se va modela/sintetiza/testa un numãrãtor binar
--reversibil cu ?tergere asincronã. Sensul de numãrare este realizat cu
--semnalul iSens dupã regula: iSens=0 ? numãrare direct, iSens=1 ?
--numãrare inversã.
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

entity Num16 is
    Port ( iClock : in  STD_LOGIC;
           iSens : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (3 downto 0));
end Num16;

architecture Behavioral of Num16 is
	signal saData, saQ: STD_LOGIC_VECTOR(3 downto 0);
begin
	saData <= saQ+1 when iSens ='0' else
				 saQ-1;
	saQ <= "0000" when iINIT ='1' else
			saData when rising_edge(iClock);
	oaQ <= saQ;

end Behavioral;

