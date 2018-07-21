library ieee;
use ieee.std_logic_1164.all;

entity ALUControl is
	port(	ALUop 		: in std_logic_vector(1 downto 0);
			instrfunct 	: in std_logic_vector(5 downto 0);
			ALUControl	: out std_logic_vector(2 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is
begin
	process(ALUop, instrfunct)
	begin
		case ALUop is
			when "00" =>        			 -- LW,SW,ADDI
				ALUControl <= "010";
			when "01" =>
				ALUControl <= "110"; 		 --BEQ
			when "10" =>
				case instrfunct is
					when "100000" =>
						ALUControl <= "010"; --ADD
					when "100010" =>
						ALUControl <= "110"; --SUB
					when "100100" =>
						ALUControl <= "000"; --AND
					when "100101" =>
						ALUControl <= "001"; --OR
					when "100111" =>
						ALUControl <= "100"; --NOR
					when "100110" =>
						ALUControl <= "011"; --XOR	
					when "101010" =>
						ALUControl <= "111"; --STL
					when others =>
						ALUControl <= "010";
				end case;
			when "11" =>
				ALUControl <= "111";
		end case;
	end process;
end Behavioral;
					
				