library ieee;
use ieee.std_logic_1164.all;

entity Mux2_1 is
	generic( N 		: positive := 5);
	port(	DataIn1 	: in std_logic_vector(N-1 downto 0);
			DataIn2 	: in std_logic_vector(N-1 downto 0);
			Sel 		: in std_logic;
			DataOut 	: out std_logic_vector(N-1 downto 0));
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin
	process(Sel, DataIn1, DataIn2)
	begin
		if(Sel = '1') then
			DataOut <= DataIn2;
		else
			DataOut <= DataIn1;
		end if;
	end process;
end Behavioral;