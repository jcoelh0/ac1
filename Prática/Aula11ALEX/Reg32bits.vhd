library ieee;
use ieee.std_logic_1164.all;

entity Reg32bits is
	port(	clk 		: in std_logic;
			writeEn 	: in std_logic;
			DataIn	: in std_logic_vector(31 downto 0);
			DataOut	: out std_logic_vector(31 downto 0));
end Reg32bits;

architecture Behavioral of Reg32bits is
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(writeEn = '1') then
				DataOut <= DataIn;
			end if;
		end if;
	end process;
end Behavioral;