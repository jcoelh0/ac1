library ieee;
use ieee.std_logic_1164.all;

entity LeftShifter is
	generic(N : positive := 32);
	port(	DataIn : in std_logic_vector(N-1 downto 0);
			DataOut : out std_logic_vector(N-1 downto 0));
end LeftShifter;

architecture Behavioral of LeftShifter is
begin
	DataOut <= DataIn(N-3 downto 0) & "00";
end Behavioral;