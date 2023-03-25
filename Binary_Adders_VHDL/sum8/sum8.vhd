----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    19:31:26 03/14/2022 
-- Design Name: 
-- Module Name:    sum8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Se va sintetiza/simula un sumator binar pe 8 bi?i
--care adunã doi operanzi pe 8 bi?i fiecare ?i un eventual transport la
--rangul cel mai pu?in semnificativ.
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

entity sum8 is
    Port ( iCY0 : in  STD_LOGIC;
           iaOp1 : in  STD_LOGIC_VECTOR (7 downto 0);
           iaOp2 : in  STD_LOGIC_VECTOR (7 downto 0);
           oCY : out  STD_LOGIC;
           oaSum : out  STD_LOGIC_VECTOR (7 downto 0));
end sum8;

architecture Behavioral of sum8 is
  signal saSum : STD_LOGIC_VECTOR (8 downto 0);
begin

	saSum <= ('0'&iaOp1)+('0'&iaOp2)+iCY0;
	oaSum <= saSum(7 downto 0);
	oCY <= saSum(8);

end Behavioral;

