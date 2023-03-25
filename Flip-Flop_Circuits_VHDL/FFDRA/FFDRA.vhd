----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    22:49:36 03/27/2022 
-- Design Name: 
-- Module Name:    FFDRA - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 5.8: Sã se sintetizeze ?i testeze func?ional un flip-flop
-- tip D cu douã ini?ializãri a sincrone (Clear ?i Preset).
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

entity FFDRA is
    Port ( iClk : in  STD_LOGIC;
           iD : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           iPresent : in  STD_LOGIC;
           oQ : out  STD_LOGIC);
end FFDRA;

architecture Behavioral of FFDRA is

begin

oQ <= '0' when iClear='1' else
		'1' when IPresent='1' else
		iD when rising_edge(iClk);
		
end Behavioral;

