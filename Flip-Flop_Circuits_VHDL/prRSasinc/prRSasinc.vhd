----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina -Alexandra
-- 
-- Create Date:    20:13:23 03/27/2022 
-- Design Name: 
-- Module Name:    prRSasinc - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 5.1: Se va modela un bistabil RS asincron realizat cu
-- por?i NAND pentru a pune �n eviden?� func?ionarea real� a circuitului.
-- Se presupune c� toate por?ile au acea?i �nt�rziere �n propagarea
-- semnalelor tp=10ns. �nt�rzierile sunt introduse �n model cu ajutorul
-- clauzei after �n instruc?iunile de asignare.
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

entity prRSasinc is
    Port ( iReset : in  STD_LOGIC;
           iSet : in  STD_LOGIC;
           oQ : out  STD_LOGIC;
           oQN : out  STD_LOGIC);
end prRSasinc;

architecture Behavioral of prRSasinc is
	signal sRN, sSN, sQ, sQN : STD_LOGIC; 
begin

	sRN <= iReset nand iReset after 10 ns;
	sSN <= iSet nand iSet after 10 ns;
	sQ <= sSN nand sQN after 10 ns;
	sQN <= sRN nand sQ after 10 ns;
	oQ <= sQ;
	oQN <= sQN;

end Behavioral;

