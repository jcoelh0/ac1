library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.DisplayUnit_pkg.all;

entity ALU is
	port(	DataIn1 	: in std_logic_vector(31 downto 0);
			DataIn2 	: in std_logic_vector(31 downto 0);
			Sel 		: in std_logic_vector(2 downto 0);
			Zero		: out std_logic;
			Result 	: out std_logic_vector(31 downto 0));
end ALU;

architecture Behavioral of ALU is
	signal s_DataIn2 : unsigned(31 downto 0);
	signal s_Result : std_logic_vector(31 downto 0);
begin
	s_DataIn2 <= not(unsigned(DataIn2)) + 1 when Sel = "110" else unsigned(DataIn2); -- complemento para 2 (se subtração)
	zero <= '1' when s_Result = X"00000000" else '0';
	process(Sel, DataIn1, DataIn2, s_DataIn2)
	begin
		case Sel is
			when "000" =>
				s_Result <= DataIn1 and DataIn2; 								--AND
			when "001" =>
				s_Result <= DataIn1 or DataIn2; 								--OR
			when "010" =>
				s_Result <= std_logic_vector(unsigned(DataIn1) + s_DataIn2);	--ADD
			when "011" =>
				s_Result <= DataIn1 xor DataIn2;  								--xOR
			when "100" =>
				s_Result <= DataIn1 nor DataIn2;								--NOR
			when "110" =>
				s_Result <= std_logic_vector(unsigned(DataIn1) + s_DataIn2);	--SUB
			when "111" =>
				if(signed(DataIn1) < signed(DataIn2)) then   					--SLT
					s_Result <= X"00000001";
				else
					s_Result <= (others => '0');
				end if;
			when others =>
				s_Result <= (others => '-');
		end case;
	end process;
	Result <= s_Result;
	DU_IMData <=  Result;
end Behavioral;