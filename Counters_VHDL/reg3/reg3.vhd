----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    17:07:59 04/05/2022 
-- Design Name: 
-- Module Name:    reg3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 6.3: Se va modela/sintetiza VHDL un registru de
-- deplasare dreapta serie-serie.
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

entity reg3 is
    Port ( iClk : in  STD_LOGIC;
           iData : in  STD_LOGIC;
           oQ : out  STD_LOGIC);
end reg3;

architecture Behavioral of reg3 is

	signal saQ : STD_LOGIC_VECTOR(3 downto 0);

begin

saQ <= iData & saQ(3 downto 1) when rising_edge(iClk);
oQ <= saQ(0);

end Behavioral;

