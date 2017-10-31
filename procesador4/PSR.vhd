----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:57:07 10/16/2017 
-- Design Name: 
-- Module Name:    PSR - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PSR is
    Port (nzvc_psr : in  STD_LOGIC_VECTOR (3 downto 0);
           rst : in  STD_LOGIC;         
			  ncwp: in STD_LOGIC_VECTOR (1 downto 0);
			  cwp: out STD_LOGIC_VECTOR (1 downto 0);
			  Alu_acarreo : out  STD_LOGIC);
			  
			 
end PSR;

architecture Behavioral of PSR is

begin

process(rst,nzvc_psr)

		begin
			if (rst = '1') then 		
			Alu_acarreo <= '0';
			cwp<="00";

			else
			Alu_acarreo <= nzvc_psr(0);
			cwp<=ncwp;
				 
         end if;
end process;
end Behavioral;

