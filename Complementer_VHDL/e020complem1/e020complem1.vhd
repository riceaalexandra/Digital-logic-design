----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    23:47:39 03/19/2022 
-- Design Name: 
-- Module Name:    e020complem1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 4.2: Modelul VHDL este cel din Fig. 4.11 iar rezultatul
-- simularii este prezentat în Fig. 4.12.
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

entity e020complem1 is
    Port ( iaA : in  STD_LOGIC_VECTOR (7 downto 0);
           oaY : out  STD_LOGIC_VECTOR (7 downto 0);
           iComplement : in  STD_LOGIC);
end e020complem1;

architecture Behavioral of e020complem1 is

begin

oaY <= not(iaA) when iComplement='1' else
		iaA;

end Behavioral;

