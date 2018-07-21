library ieee;
use ieee.std_logic_1164.all;

entity ALUcontrol is
	port( ALUop      : in std_logic_vector(1 downto 0);
			funct      : in std_logic_vector(5 downto 0);
			ALUcont : out std_logic_vector(2 downto 0));
end ALUControl;

architecture Behavioral of ALUcontrol is
begin
	process(ALUop, funct)
	begin
		case ALUop is
			when "00" => -- LW, SW, ADDI
				ALUcont <= "010";
			when "01" => -- BEQ
				ALUcont <= "110";
			when "10" => -- R-Type instructions
				case funct is
					when "100000" => ALUcont <= "010"; -- ADD
					when "100010" => ALUcont <= "110"; -- SUB
					when "100100" => ALUcont <= "000"; -- AND
					when "100101" => ALUcont <= "001"; -- OR
					when "101010" => ALUcont <= "111"; -- SLT
					when others   => ALUcont <= "010";
				end case;
			when "11" => -- SLTI
				ALUcont <= "111";
		end case;
	end process;
end Behavioral;