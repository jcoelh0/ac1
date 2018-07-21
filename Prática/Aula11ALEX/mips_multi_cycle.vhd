library ieee;
use ieee.std_logic_1164.all;

entity mips_multi_cycle is
port(	CLOCK_50 : in std_logic;
		KEY : in std_logic_vector(4 downto 0);
		SW  : in std_logic_vector(2 downto 0);
		HEX0: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0);
		HEX2: out std_logic_vector(6 downto 0);
		HEX3: out std_logic_vector(6 downto 0);
		HEX4: out std_logic_vector(6 downto 0);
		HEX5: out std_logic_vector(6 downto 0);
		HEX6: out std_logic_vector(6 downto 0);
		HEX7: out std_logic_vector(6 downto 0));
end mips_multi_cycle;

architecture Behavioral of mips_multi_cycle is
	signal s_clk,s_reset,s_zero,s_ALUSelA, s_MemtoReg ,s_PCWrite,s_PCWriteCond, s_RegWrite ,s_IorD, s_IRWrite, s_MemWrite, s_MemRead, s_RegDst: std_logic;
	signal s_PCSource, s_ALUOp, s_ALUSelB : std_logic_vector(1 downto 0);
	signal s_PC4,s_BTA, s_PC, s_lsB, s_seOut, s_M5Out ,s_M4Out,s_M1Out, s_RegB2, s_RegA1,s_M3Out,s_DROut,s_RR1,s_RR2, s_ALUOut, s_AluOutOut, s_RamOut, s_IROut: std_logic_vector(31 downto 0);
	signal s_jAddr, s_J: std_logic_vector(25 downto 0);
	signal s_ALUControl : std_logic_vector(2 downto 0);
	signal s_opcode, s_funct : std_logic_vector(5 downto 0);
	signal s_rs, s_rd, s_rt, s_shamt, s_M2Out, s_State : std_logic_vector(4 downto 0);
	signal s_imm : std_logic_vector(15 downto 0);
	
begin
	
	s_reset <= not KEY(1);
	
displayUnit:		entity work.DisplayUnit(Behavioral)
								port map( 	RefClk => s_clk,
												InputSel => SW(1 downto 0),
												DispMode => SW(2),
												NextAddr => KEY(3),
												Dir => KEY(2),
												disp0 => HEX0,
												disp1 => HEX1,
												disp2 => HEX2,
												disp3	=> HEX3,
												disp4 => HEX4,
												disp5 => HEX5,
												disp6 => HEX6,
												disp7 => HEX7);

debounceUnit: 	entity work.debounceUnit(Behavioral)
							generic map(mSecMinInWidth => 200,
											inPolarity 		=> '0',
											outPolarity 	=> '1')
							port map(refClk 		=> CLOCK_50,
										dirtyIn 		=> KEY(0),
										pulsedOut 	=> s_clk);


pcupdate:		entity work.PCupdate(Behavioral)
							port map(clk 			=> s_clk,
										reset 		=> s_reset,
										zero			=> s_zero,
										PCSource		=> s_PCSource,
										PCWrite		=> s_PCWrite,
										PCWriteCond	=> s_PCWriteCond,
										PC4 			=>	s_PC4,
										BTA			=>	s_BTA,
										jAddr			=>	s_jAddr,
										PC				=>	s_PC);

										
M1:				entity work.Mux2_1(Behavioral)
							generic map(N => 32)
							port map(DataIn1 	=> s_PC,
										DataIn2 	=> s_AluOutOut,
										Sel		=> s_IorD,
										DataOut 	=> s_M1Out);

M2:				entity work.Mux2_1(Behavioral)
							generic map(N => 5)
							port map(DataIn1 	=> s_rt,
										DataIn2 	=> s_rd,
										Sel 		=> s_RegDst,
										DataOut 	=> s_M2Out);

M3:				entity work.Mux2_1(Behavioral)
							generic map(N => 32)
							port map(DataIn1 	=> s_AluOutOut,
										DataIn2 	=> s_DROut,
										Sel 		=> s_MemtoReg,
										DataOut 	=> s_M3Out);

M4:				entity work.Mux2_1(Behavioral)
							generic map(N => 32)
							port map(DataIn1 	=> s_PC,
										DataIn2 	=> s_RegA1,
										Sel 		=> s_ALUSelA,
										DataOut 	=> s_M4Out);

M5:				entity work.mux4_1(Behavioral)
							generic map(N => 32)
							port map(DataIn1 	=> s_RegB2,
										DataIn2 	=> X"00000004",
										DataIn3	=> s_seOut,
										DataIn4 	=>	s_lsB,
										Sel 		=> s_ALUSelB,
										DataOut 	=> s_M5Out);


LeftShiterJ: entity work.LeftShifter(Behavioral)
						generic map( N => 26)
						port map(DataIn => s_J,
									DataOut => s_jAddr);

LeftShifterB:	entity work.LeftShifter(Behavioral)
						generic map( N => 32)
						port map(DataIn => s_seOut,
									DataOut => s_lsB);


SignExtend:		entity work.SignExtend(Behavioral)
						port map(dataIn  => s_imm,
									dataOut => s_seOut);




InstrSplitter:	entity work.InstrSplitter(Behavioral)
							port map(instr 	=> s_IROut,	
										opcode 	=>	s_opcode,
										rs			=>	s_rs,
										rt			=>	s_rt,
										rd			=>	s_rd,
										shamt		=>	s_shamt,
										funct		=>	s_funct,
										imm		=>	s_imm,
										jAddr		=>	s_J);

ControlUnit:		entity work.ControlUnit(Behavioral)
								port map(clk 			=> s_clk,
											reset 		=>	s_reset,
											opcode 		=>	s_opcode,
											PCWrite 		=>	s_PCWrite,
											PCWriteCond => s_PCWriteCond,
											IorD 			=>	s_IorD,
											MemRead 		=>	s_MemRead,
											MemWrite 	=>	s_MemWrite,
											IRWrite 		=>	s_IRWrite,
											MemtoReg 	=> s_MemtoReg,
											PCSource 	=>	s_PCSource,
											ALUOp 		=>	s_ALUOp,
											ALUSelA 		=>	s_ALUSelA,
											ALUSelB 		=>	s_ALUSelB,
											RegWrite 	=>	s_RegWrite,
											RegDst 		=> s_RegDst,
											State 		=> s_State);

Ram:						entity work.Ram(Behavioral)
									port map(clk 			=> s_clk,
												readEn		=> s_MemRead,
												writeEn		=>	s_MemWrite,
												address		=>	s_M1Out(5 downto 0),
												writeData	=>	s_AluOutOut,
												readData		=>	s_RamOut);

DataRegister:	entity work.Reg32bits(Behavioral)
								port map(clk 		=>	s_clk,	
											writeEn 	=> '1',
											DataIn	=>	s_RamOut,
											DataOut	=> s_DROut);

InstructionRegister:	entity work.Reg32bits(Behavioral)
									port map(clk 		=>	s_clk,	
												writeEn 	=> s_IRWrite,
												DataIn	=>	s_RamOut,
												DataOut	=> s_IROut);

												
RegFile:					entity work.RegFile(Structural)
									port map(clk 			=> s_clk,
												writeEnable	=>	s_RegWrite,
												writeReg		=>	s_M2Out,
												writeData	=>	s_M3Out,
												readReg1		=>	s_rs,
												readReg2		=>	s_rt,
												readData1 	=>	s_RR1,
												readData2 	=> s_RR2);

RegA:						entity work.Reg32bits(Behavioral)
									port map(clk		=>	s_clk,
												writeEn 	=>	'1',
												DataIn	=>	s_RR1,
												DataOut	=>	s_RegA1);

RegB:						entity work.Reg32bits(Behavioral)
									port map(clk		=>	s_clk,
												writeEn 	=>	'1',
												DataIn	=>	s_RR2,
												DataOut	=>	s_RegB2);

ALUOut:					entity work.Reg32bits(Behavioral)
									port map(clk		=>	s_clk,
												writeEn 	=>	'1',
												DataIn	=>	s_PC4,
												DataOut	=>	s_BTA);
			
ALU:
							entity work.ALU(Behavioral)
								port map(DataIn1  => s_M4Out,	
											DataIn2 	=>	s_M5Out,
											Sel 		=>	s_ALUControl,
											Zero		=> s_zero,
											Result 	=>	s_PC4);

											
ALUControl: 			entity work.ALUControl(Behavioral)
								port map(ALUop 		=>	s_ALUOp,	
											instrfunct 	=> s_funct,
											ALUControl	=>	s_ALUControl);
										
end Behavioral;