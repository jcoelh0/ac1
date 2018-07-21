library ieee;
use ieee.std_logic_1164.all;

entity mux4_1 is
	generic(N : positive := 32);
	port(	DataIn1 	: in std_logic_vector(N-1 downto 0);
			DataIn2	: in std_logic_vector(N-1 downto 0);
			DataIn3	: in std_logic_vector(N-1 downto 0);
			DataIn4	: in std_logic_vector(N-1 downto 0);
			Sel 		: in std_logic_vector(1 downto 0);
			DataOut	: out std_logic_vector(N-1 downto 0));
end mux4_1;

architecture Behavioral of mux4_1 is
begin
	process(Sel,DataIn1,DataIn2,DataIn3,DataIn4)
	begin
		if(Sel = "00") then
			DataOut <= DataIn1;
		elsif(Sel = "01") then
			DataOut <= DataIn2;
		elsif(Sel = "10") then
			DataOut <= DataIn3;
		else
			DataOut <= DataIn4;
		end if;
	end process;
end Behavioral;