library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is
port( clk         : in  std_logic;
		Reset       : in  std_logic;
		OpCode      : in  std_logic_vector(5 downto 0);
		PCWrite     : out std_logic;
		IRWrite     : out std_logic;
		IorD        : out std_logic;
		PCSource    : out std_logic_vector(1 downto 0);
		RegDest     : out std_logic;
		PCWriteCond : out std_logic;
		MemRead     : out std_logic;
		MemWrite    : out std_logic;
		MemToReg    : out std_logic;
		ALUSelA     : out std_logic;
		ALUSelB     : out std_logic_vector(1 downto 0);
		RegWrite    : out std_logic;
		ALUop       : out std_logic_vector(1 downto 0));
end ControlUnit;