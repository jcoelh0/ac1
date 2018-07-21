library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;

entity mips_single_cycle is
	port(	CLOCK_50 : in std_logic;
			SW 		: in std_logic_vector(2 downto 0);
			KEY		: in std_logic_vector(3 downto 0);
			HEX0		: out std_logic_vector(6 downto 0);
			HEX1		: out std_logic_vector(6 downto 0);
			HEX2		: out std_logic_vector(6 downto 0);
			HEX3		: out std_logic_vector(6 downto 0);
			HEX4		: out std_logic_vector(6 downto 0);
			HEX5		: out std_logic_vector(6 downto 0);
			HEX6		: out std_logic_vector(6 downto 0);
			HEX7		: out std_logic_vector(6 downto 0));
end mips_single_cycle;

architecture Structural of mips_single_cycle is
	signal s_clk, s_writeEnable 	: std_logic;
	signal se_out, pc_out ,sp_in, s_m32out, s_RD1, s_ALUout, s_writeData, s_readData2, s_mux3in : std_logic_vector(31 downto 0);
	signal se_in 	: std_logic_vector(15 downto 0);
	signal sp_out 	: std_logic_vector(25 downto 0);
	signal s_rs, s_rt,s_rd	:	std_logic_vector(4 downto 0);
	signal s_ALUControl : std_logic_vector(2 downto 0);
	signal s_writeReg: std_logic_vector(4 downto 0);
	signal s_opcode, s_funct : std_logic_vector(5 downto 0);
	signal s_branch, s_jump, s_MemRead, s_MemWrite, s_MemToReg, s_ALUSrc, s_RegWrite, s_RegDst : std_logic;
	signal s_ALUop : std_logic_vector(1 downto 0);

begin

--Debouncer
debnc: 	entity work.DebounceUnit(Behavioral)
				generic map(mSecMinInWidth => 200,
								inPolarity 		=> '0',
								outPolarity 	=> '1')
				port map(refClk 		=> CLOCK_50,
							dirtyIn 		=> KEY(0),
							pulsedOut 	=> s_clk);
							
displ: 	entity work.DisplayUnit(Behavioral)
				generic map(dataPathType => SINGLE_CYCLE_DP,
								IM_ADDR_SIZE => ROM_ADDR_SIZE,
								DM_ADDR_SIZE => RAM_ADDR_SIZE)
				port map(RefClk 	=> CLOCK_50,
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

pcUpdate:	entity work.PCupdate(Behavioral)
					port map(clk 		=> s_clk,
								reset 	=>	not KEY(1),
								zero 		=>	'0',
								branch	=> s_branch,
								jump 		=> s_jump,
								offset32 =>	se_out,
								jAddr26 	=>	sp_out,
								pc			=>	pc_out);

Rom:			entity work.InstructionMemory(Behavioral)
					generic map(Addr_Bus_Size => 6)
					port map(adress => pc_out(5 downto 0),
								Data => sp_in);
								

splitter:	entity work.InstrSplitter(Behavioral)
					port map(instr => sp_in,
								opcode=> s_opcode,
								rs=> s_rs,
								rt=> s_rt,
								rd=>	s_rd,
								shamt=> open,
								funct=> s_funct,
								imm=> se_in,
								jAddr=> sp_out);
				
extender:
				entity work.SignExtend(Behavioral)
					port map(dataIn => se_in,
								dataOut => se_out);

ALU:

				entity work.ALU(Behavioral)
					port map(DataIn1 	=> s_RD1,
								DataIn2 	=>	s_m32out,
								Sel 		=> s_ALUControl,
								Zero		=> open,
								Result 	=> s_ALUout);
ALUControl:
			
				entity work.ALUControl(Behavioral)
					port map(ALUop 		=> s_ALUop,
								instrfunct 	=>	s_funct,
								ALUControl 	=>	s_ALUControl);
								

RegFile:
				
				entity work.RegFile(Structural)
					port map(clk			=> s_clk,
								writeEnable => s_RegWrite,
								writeReg		=>	s_writeReg,
								writeData	=>	s_writeData,
								readReg1		=>	s_rs,
								readReg2		=> s_rt,
								readData1 	=>	s_RD1,
								readData2 	=> s_readData2);

Mux2:

				entity work.Mux2_1(Behavioral)
					generic map( N => 32)
					port map(DataIn1 	=> s_readData2,
								DataIn2	=> se_out,
								Sel		=> s_ALUSrc,
								DataOut	=> s_m32out);


Mux1:
					entity work.Mux2_1(Behavioral)
					generic map( N => 5)
					port map(DataIn1	=>	s_rt,
								DataIn2	=> s_rd,
								Sel		=>	s_RegDst,
								DataOut	=> s_writeReg);
Mux3:
					
					entity work.Mux2_1(Behavioral)
					generic map( N => 32)
					port map(DataIn1	=> s_ALUout,
								DataIn2	=> s_mux3in,
								Sel 		=> s_MemToReg,
								DataOut 	=>	s_WriteData);

DataMemory:
				entity work.DataMemory(Behavioral)
				generic map(ADDR_BUS_SIZE => 6,
								DATA_BUS_SIZE => 32)
				port map(clk			=> s_clk,
							readEn		=>	s_MemRead,
							writeEn		=>	s_MemWrite,
							address		=>	s_ALUout(7 downto 2),
							writeData	=> s_readData2,	
							readData		=>	s_mux3in);			
							
controlUnit:
				entity work.ControlUnit(Behavioral)
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