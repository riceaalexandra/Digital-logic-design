----------------------------------------------------------------------------------
-- Company: CR1.3A 
-- Engineer: Ricea Florentina-Alexandra 
-- 
-- Create Date:    11:40:39 03/13/2022 
-- Design Name: 
-- Module Name:    e011sumbinel - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Modelarea VHDL a unui sumator binar elementar
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

entity e011sumbinel is
    Port ( iA : in  STD_LOGIC;
           iB : in  STD_LOGIC;
           iC : in  STD_LOGIC;
           oS : out  STD_LOGIC;
           oC : out  STD_LOGIC);
end e011sumbinel;

architecture Behavioral of e011sumbinel is

begin

oS <= iA xor iB xor iC;
oC <= (iA and iB)or(iA and ic)or(iB and iC);

end Behavioral;

