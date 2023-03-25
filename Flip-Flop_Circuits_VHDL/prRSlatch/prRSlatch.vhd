----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    20:27:58 03/27/2022 
-- Design Name: 
-- Module Name:    prRSlatch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 5.2: Se va modela ?i simula func?ionarea unui latch RS.
-- Schema de principiu a bistabilului este cea din Fig. 5.5. Semnalele
-- R, S, Q sunt active pe 1 logic iar RN, SN, QN sunt active pe 0 logic. 
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

entity prRSlatch is
    Port ( iE : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           iSet : in  STD_LOGIC;
           oQ : out  STD_LOGIC;
           oQN : out  STD_LOGIC);
end prRSlatch;

architecture Behavioral of prRSlatch is
	signal sRN, sSN, sQ, sQN: STD_LOGIC;
begin

	sSN <= iSet nand iE after 10 ns;
	sRN <= iReset nand iE after 10 ns;
	sQ <= sSN nand sQN after 10 ns;
	sQN <= sRN nand sQ after 10 ns;
	oQ <= sQ;
	oQN <= sQN;

end Behavioral;

