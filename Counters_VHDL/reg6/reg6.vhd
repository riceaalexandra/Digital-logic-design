----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    23:05:48 04/09/2022 
-- Design Name: 
-- Module Name:    reg6 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 6.7: Se va modela/sintetiza VHDL un registru de
-- deplasare stânga/dreapta serie-paralel pe 8.
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

entity reg6 is
    Port ( iClk : in  STD_LOGIC;
           iSens : in  STD_LOGIC;
           iDataddr : in  STD_LOGIC;
           iDatadst : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end reg6;

architecture Behavioral of reg6 is
	signal saQ, saY: STD_LOGIC_VECTOR(7 downto 0);
begin

	saY <= iDataddr&saQ(7 downto 1) when iSens='0' else
			saQ(6 downto 0)&iDatadst;
	saQ <= saY when rising_edge(iClk);
	oaQ <= saQ;

end Behavioral;

