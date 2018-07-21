library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Mux4N is
	generic(N	: positive);
	port(sel  	: in  std_logic_vector(1 downto 0);
		 dataIn0	: in  std_logic_vector((N - 1) downto 0);
		 dataIn1	: in  std_logic_vector((N - 1) downto 0);
		 dataIn2	: in  std_logic_vector((N - 1) downto 0);
		 dataIn3	: in  std_logic_vector((N - 1) downto 0);
		 dataOut	: out std_logic_vector((N - 1) downto 0));
end Mux4N;

architecture Behavioral of Mux4N is
begin
	dataOut <= dataIn3 when (sel = "11") else
			     dataIn2 when (sel = "10") else
			     dataIn1 when (sel = "01") else
			     dataIn0;
end Behavioral;