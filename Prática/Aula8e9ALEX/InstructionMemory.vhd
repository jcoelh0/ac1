library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library work;
use work.DisplayUnit_pkg.all;

entity InstructionMemory is
	generic(Addr_Bus_Size : positive := 6);
	port(	adress 	: in std_logic_vector(Addr_Bus_Size-1 downto 0);
			Data		: out std_logic_vector(31 downto 0));
end InstructionMemory;

architecture Behavioral of InstructionMemory is
	constant Num_words : positive :=( 2**Addr_Bus_Size);
	subtype TData is std_logic_vector(31 downto 0);
	type TMemory is array(0 to Num_words-1) of TData;
	constant s_memory : TMemory :=(X"2002001A",	--addi $2,$0,0x1A
			X"2003FFF9",X"00432020",X"00432822",X"00433024", --addi $3,$0,-7, add $4,$2,$3, sub $5,$2,$3, and $6,$2,$3
			X"00433825",X"00434027",X"00434826",X"0043502A", --or $7,$2,$3, nor $8,$2,$3, xor $9,$2,$3, slt $10,$2,$3
			X"28EBFFFE",X"292CFFE7", others => X"00000000"); --slti $11,$7,-2, slti $12,$9,-25
	
begin
	Data <= s_memory(to_integer(unsigned(adress)));
	DU_IMdata <= s_memory(to_integer(unsigned(DU_IMaddr)));
	DU_RFdata <= Data;
end Behavioral;