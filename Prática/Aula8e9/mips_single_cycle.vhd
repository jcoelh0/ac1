library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;

entity mips_single_cycle is
port( CLOCK_50 : in std_logic;
		SW   		: in  std_logic_vector(7 downto 0);
		KEY  		: in  std_logic_vector(3 downto 0);
		HEX0 		: out std_logic_vector(6 downto 0);
		HEX1 		: out std_logic_vector(6 downto 0);
		HEX2 		: out std_logic_vector(6 downto 0);
		HEX3 		: out std_logic_vector(6 downto 0);
		HEX4 		: out std_logic_vector(6 downto 0);
		HEX5 		: out std_logic_vector(6 downto 0);
		HEX6 		: out std_logic_vector(6 downto 0);
		HEX7 		: out std_logic_vector(6 downto 0) );
end mips_single_cycle;

architecture Structural of mips_single_cycle is

	signal s_clk 	 : std_logic;
	signal s_offset : std_logic_vector(31 downto 0);
	signal s_imm 	 : std_logic_vector(15 downto 0);
	signal s_jAddr  : std_logic_vector(25 downto 0);
	signal s_pc		 : std_logic_vector(31 downto 0);
	signal s_instr	 : std_logic_vector(31 downto 0);
	signal s_a      : std_logic_vector(1 downto 0);
	signal s_b      : std_logic_vector(31 downto 0);
	signal s_funct  : std_logic_vector(5 downto 0);
	signal s_oper   : std_logic_vector(2 downto 0);
	
	signal s_writeReg  : std_logic_vector(4 downto 0);
	signal s_writeData : std_logic_vector(31 downto 0);
	signal s_readData1 : std_logic_vector(31 downto 0);
	signal s_readData2 : std_logic_vector(31 downto 0);
	
	signal s_regTemp   : std_logic_vector(4 downto 0);
	signal s_regDest   : std_logic_vector(4 downto 0);
	
	signal s_regSource : std_logic_vector(4 downto 0);
	
	signal s_opcode    : std_logic_vector(5 downto 0);
	signal s_branch, s_jump, s_MemRead, s_MemWrite, s_MemToReg, s_ALUSrc, s_RegWrite, s_RegDst : std_logic;
	signal s_ALUop : std_logic_vector(1 downto 0);
	
begin
	-- Debouncer
	debnc: entity work.DebounceUnit(Behavioral)
	generic map(mSecMinInWidth => 200,
					inPolarity 	 => '0',
					outPolarity 	 => '1')
	port map( refClk    => CLOCK_50,
				 dirtyIn   => KEY(0),
				 pulsedOut => s_clk); 
				  
	-- Display module
	displ: entity work.DisplayUnit(Behavioral)
	generic map(dataPathType => SINGLE_CYCLE_DP,
					IM_ADDR_SIZE => ROM_ADDR_SIZE,
					DM_ADDR_SIZE => RAM_ADDR_SIZE)
	port map( RefClk   => CLOCK_50,
				 InputSel => SW(1 downto 0),
				 DispMode => SW(2),
				 NextAddr => KEY(3),
				 Dir 		 => KEY(2),
				 disp0 	 => HEX0,
				 disp1 	 => HEX1,
				 disp2 	 => HEX2,
				 disp3 	 => HEX3,
				 disp4 	 => HEX4,
				 disp5 	 => HEX5,
				 disp6 	 => HEX6,
				 disp7 	 => HEX7);


	-- PCupdate
	pcupd: entity work.PCupdate(Behavioral)
	port map(clk	 => s_clk,
				reset	 => not KEY(1),
				branch => '0',
				jump	 => '0',
				zero	 => '0',
				offset => s_offset,
				jAddr	 => s_jAddr,
				pc		 => s_pc);
				
	-- SignExtend
	sign: entity work.SignExtend(Behavioral)
	port map(dataIn  => s_imm,
				dataOut => s_offset);

	--InstructionMemory
	instrM: entity work.InstructionMemory(Behavioral)
	port map(address  => s_pc,
				readData => s_instr);
	
	-- InstrSplitter
	instrS: entity work.InstrSplitter(Behavioral)
	port map(instruction => s_instr,
				imm 			=> s_imm,
				jAddr 		=> s_jAddr,
				funct			=> s_funct,
				rd          => s_regDest,
				rs          => s_regSource,
				rt          => s_regTemp);

	--RegFile
	RegFile: entity work.RegFile(Structural)
	port map(clk			=> s_clk,
				writeEnable => SW(7),
				writeReg    => s_writeReg,
				writeData	=> DU_DMdata,
				readReg1 	=> s_regSource,
				readReg2 	=> s_regTemp,
				readData1	=> s_readData1,
				readData2   => s_readData2);
	
	--Mux2N
	Mux2N1: entity work.Mux2N(Behavioral)
	generic map(N    => 5)
	port map(sel     => SW(6),
				dataIn1 => s_regTemp,
				dataIn2 => s_regDest,
				dataOut => s_writeReg);
				
	Mux2N2: entity work.Mux2N(Behavioral)
	generic map(N => 32)
	port map(sel     => SW(5),
				dataIn1 => s_readData2,
				dataIn2 => s_offset,
				dataOut => s_b);		

	--ALU
	ALU32: entity work.ALU32(Behavioral)
	port map(a     => s_readData1,
				b     => s_b,
				oper  => s_oper,
				res   => DU_DMdata);
			
	--ALUcontrol
	ALUcontrol: entity work.ALUcontrol(Behavioral)
	port map(ALUop      => SW(4 downto 3),
				funct      => s_funct,
				ALUcont => s_oper);
				
	--ControlUnit
	ControlUnit: entity work.ControlUnit(Behavioral)
	port map(Opcode 	=> s_opcode,
				RegDst 	=>	s_RegDst,
				Branch 	=>	s_branch,
				Jump	 	=> s_jump,	
				MemRead	=> s_MemRead,
				MemWrite	=> s_MemWrite,
				MemToReg	=>	s_MemToReg,
				ALUSrc	=>	s_ALUSrc,
				RegWrite =>	s_RegWrite,
				ALUop		=> s_ALUop);


end Structural;