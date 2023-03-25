----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:04 02/27/2022 
-- Design Name: 
-- Module Name:    e006mux4x2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

entity e006mux4x2 is
    Port ( iaSel : in  STD_LOGIC_VECTOR (1 downto 0);
           iaData0 : in  STD_LOGIC_VECTOR (1 downto 0);
           iaData1 : in  STD_LOGIC_VECTOR (1 downto 0);
           iaData2 : in  STD_LOGIC_VECTOR (1 downto 0);
           iaData3 : in  STD_LOGIC_VECTOR (1 downto 0);
           iEnable : in  STD_LOGIC;
           oaY : out  STD_LOGIC_VECTOR (1 downto 0));
end e006mux4x2;

architecture Behavioral of e006mux4x2 is
	signal saY: STD_LOGIC_VECTOR (1 downto 0);
begin
with iaSel select
saY <= iaData0 when "00",
		 iaData1 when "01",
		 iaData2 when "10",
		 iaData3 when "11",
		 "00" when others;
oaY <= saY when iEnable='1' else "ZZ";
end Behavioral;

