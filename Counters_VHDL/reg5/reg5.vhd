----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    17:20:11 04/05/2022 
-- Design Name: 
-- Module Name:    reg5 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:Exemplul 6.4: Se va modela/sintetiza VHDL un registru de
-- deplasare dreapta serie-paralel. 
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

entity reg5 is
    Port ( iClk : in  STD_LOGIC;
           iDataSerie : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (3 downto 0));
end reg5;

architecture Behavioral of reg5 is
	signal saQ : STD_LOGIC_VECTOR (3 downto 0);
begin

saQ <= iDataSerie & saQ(3 downto 1) when rising_edge(iClk);
oaQ <= saQ;

end Behavioral;

