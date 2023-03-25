----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    21:48:48 04/11/2022 
-- Design Name: 
-- Module Name:    num4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.12: Sã se modeleze/sintetizeze/testeze un divizor de
-- frecven?ã modulo 20 cu ini?ializare asincronã activã pe nivel ridicat.
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

entity num4 is
    Port ( iClk : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           oY : out  STD_LOGIC);
end num4;

architecture Behavioral of num4 is
	signal saQ, saY: STD_LOGIC_VECTOR(4 downto 0);
begin

saY <= "01100" when saQ= "11111" else
		 saQ+1;
saQ <= "01100" when iReset='1' else
		 saY when rising_edge(iClk);
oY <='1' when saQ="11111" else '0';

end Behavioral;

