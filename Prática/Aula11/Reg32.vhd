library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg32 is
    Port ( clk     : in  STD_LOGIC;
           enable  : in  STD_LOGIC;
           DataIn  : in  STD_LOGIC_VECTOR(31 downto 0);
           DataOut : out STD_LOGIC_VECTOR(31 downto 0));
end Reg32;

architecture Behavioral of Reg32 is

begin

	reg32: process(clk, enable)
	begin
	
		if(enable = '0') then
			DataOut <= "00000000000000000000000000000000";
		elsif(rising_edge(clk) and enable = '1') then
			DataOut <= DataIn;
		end if;

	end process reg32;
end Behavioral;