----------------------------------------------------------------------------------
-- Company: CR1.3A 
-- Engineer: Ricea Florentina- Alexandra
-- 
-- Create Date:    20:53:45 03/27/2022 
-- Design Name: 
-- Module Name:    prRSMS - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 5.3: Se va modela ?i simula func?ionarea unui bistabil
-- RS tip Master-Slave.
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

entity prRSMS is
    Port ( iReset : in  STD_LOGIC;
           iSet : in  STD_LOGIC;
           iE : in  STD_LOGIC;
           oQ1 : out  STD_LOGIC;
           oQN1 : out  STD_LOGIC);
end prRSMS;

architecture Behavioral of prRSMS is
	signal sRN, sSN, sQ, sQN, sEN: STD_LOGIC;
	signal sR1, sRN1, sS1, sE1, sSN1, sQ1, sQN1 : STD_LOGIC;
	
begin

	sRN <= iReset nand iE after 10 ns;
	sSN <= iSet nand iE after 10 ns;
	sQ <= sSN nand SQN after 10 ns;
	sQN <= sRN nand sQ after 10 ns;
	sS1 <= sQ;
	sR1 <= sQN;
	sE1 <= not iE;
	
	sRN1 <= sR1 nand sE1 after 10 ns;
	sSN1 <= sS1 nand  sE1 after 10 ns;
	sQ1 <= sSN1 nand sQN1 after 10 ns;
	sQN1 <= sRN1 nand sQ1 after 10 ns;
	
	oQ1 <= sQ1;
	oQN1 <= sQN1;
	
end Behavioral;

