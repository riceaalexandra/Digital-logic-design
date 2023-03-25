----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    21:29:58 04/11/2022 
-- Design Name: 
-- Module Name:    num6 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.8: Sã se modeleze/sintetizeze/testeze un numãrãtor
-- în inel modulo 5, folosind un registru de deplasare stânga.
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

entity num6 is
Generic(n:integer := 5);
    Port ( iClk : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (n-1 downto 0));
end num6;

architecture Behavioral of num6 is
	signal saQ, saY : STD_LOGIC_VECTOR (n-1 downto 0);
begin

saY <= saQ(n-2 downto 0)& saQ(n-1);
saQ <= conv_std_logic_vector(1,n) when iReset='1' else
		 saY when rising_edge(iClk);
oaQ <= saQ;

end Behavioral;

