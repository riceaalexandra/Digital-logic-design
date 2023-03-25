----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    13:51:49 03/20/2022 
-- Design Name: 
-- Module Name:    e010gbp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 4.4: O varianta a modelului VHDL al unui GBP de
-- tipul celui prezentat în Fig. 4.7 este prezentata în Fig. 4.18 iar un
-- eºantion al simularii funcþionale este reprezentat în diagrama din Fig.
-- 4.19.

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

entity e010gbp is
    Port ( iaA : in  STD_LOGIC_VECTOR (7 downto 0);
           iSTP : in  STD_LOGIC; ---iStp=1 => bit paritate impara/iStp=0 => bit paritate para 
           oY : out  STD_LOGIC);
end e010gbp;

architecture Behavioral of e010gbp is

begin

oY <= iaA(0)xor iaA(1)xor iaA(2)xor iaA(3)xor iaA(4)xor iaA(5)xor iaA(6)xor iaA(7)xor iSTP;

end Behavioral;

