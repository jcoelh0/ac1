library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is
	port(	Opcode 	: in std_logic_vector(5 downto 0);
			RegDst	: out std_logic;
			Branch	: out std_logic;
			Jump		: out std_logic;
			MemRead	: out std_logic;
			MemWrite	: out std_logic;
			MemToReg	: out std_logic;
			ALUSrc	: out std_logic;
			RegWrite	: out std_logic;
			ALUop		: out std_logic_vector(1 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is
begin
	process(Opcode)
	begin
		case OPcode is
			when "000000" => --R instructions
				RegDst 	<= '1';
				Jump 		<= '0';
				Branch 	<= '0';
				MemRead 	<= '0';
				MemWrite <= '0';
				MemToReg <= '0';
				ALUSrc 	<= '0';
				RegWrite <= '1';
				ALUop 	<= "10";
			when "000100" => --BEQ
				RegDst 	<= '-';
				Branch 	<= '1';
				Jump 		<= '0';
				MemRead 	<= '0';
				MemWrite <= '0';
				MemToReg <= '-';
				ALUSrc 	<= '0';
				RegWrite <= '0';
				ALUop 	<= "01";
			when "100011" => --LW
				RegDst 	<= '0';
				Branch 	<= '0';
				Jump 		<= '0';
				MemRead 	<= '1';
				MemWrite <= '0';
				MemToReg <= '1';
				ALUSrc 	<= '1';
				RegWrite <= '1';
				ALUop 	<= "00";
			when "101011" => --SW
				RegDst 	<= '-';
				Branch 	<= '0';
				Jump 		<= '0';
				MemRead 	<= '0';
				MemWrite <= '1';
				MemToReg <= '-';
				ALUSrc 	<= '1';
				RegWrite <= '0';
				ALUop 	<= "00";
			when "001000" => --ADDI
				RegDst 	<= '0';
				Branch 	<= '0';
				Jump 		<= '0';
				MemRead 	<= '0';
				MemWrite <= '0';
				MemToReg <= '0';
				ALUSrc 	<= '1';
				RegWrite <= '1';
				ALUop 	<= "00";
			when "001010" => --SLTI
				RegDst 	<= '0';
				Branch 	<= '0';
				Jump 		<= '0';
				MemRead 	<= '0';
				MemWrite <= '0';
				MemToReg <= '0';
				ALUSrc 	<= '1';
				RegWrite <= '1';
				ALUop 	<= "11";
			when "000010" => 
				RegDst 	<= '0';
				Branch 	<= '0';
				Jump 		<= '1';	
				MemRead 	<= '0';
				MemWrite <= '0';
				MemToReg <= '0';
				ALUSrc 	<= '0';
				RegWrite <= '0';
				ALUop 	<= "00";
			when others =>
				RegDst 	<= '0';
				Branch 	<= '0';
				Jump 		<= '0';	
				MemRead 	<= '0';
				MemWrite <= '0';
				MemToReg <= '0';
				ALUSrc 	<= '0';
				RegWrite <= '0';
				ALUop 	<= "00";
		end case;
	end process;
end Behavioral;