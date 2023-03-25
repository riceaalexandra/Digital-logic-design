----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    21:31:51 03/27/2022 
-- Design Name: 
-- Module Name:    latch1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 5.4: În acest paragraf va fi modelat un latch D cu
-- schema bloc din Fig. 5.13, folosind programul VHDL latch1 din
-- Fig. 5.14.
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

entity latch1 is
    Port ( iGate : in  STD_LOGIC;
           iD : in  STD_LOGIC;
           oQ : out  STD_LOGIC);
end latch1;

architecture Behavioral of latch1 is

begin

oQ <= iD when iGate='1';

end Behavioral;

