library ieee;
use ieee.std_logic_1164.all;

entity Mux2N is
	generic(N : positive := 6);
	port(dataIn1  : in  std_logic_vector(N-1 downto 0);
		  dataIn2  : in  std_logic_vector(N-1 downto 0);
		  sel		  : in  std_logic;
		  dataOut  : out std_logic_vector(N-1 downto 0));
end Mux2N;

architecture Behavioral of Mux2N is
begin

	dataOut <= dataIn1 when (sel = '0') else dataIn2;

end Behavioral;