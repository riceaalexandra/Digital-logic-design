----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    22:31:48 03/27/2022 
-- Design Name: 
-- Module Name:    FFD - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 5.7: Sã se sintetizeze ?i testeze func?ional un flip-flop
-- tip D.
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

entity FFD is
    Port ( iClk : in  STD_LOGIC;
           iD : in  STD_LOGIC;
           oQ : out  STD_LOGIC);
end FFD;

architecture Behavioral of FFD is

begin

oQ <= iD when rising_edge(iClk);

end Behavioral;

