library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PCupdate is
	port( clk	      : in  std_logic;
			reset	      : in  std_logic;
			zero        : in  std_logic;
			pcWrite     : in  std_logic;
			pcWriteCond	: in  std_logic;
			pcSource  	: in  std_logic_vector(1  downto 0);
			jAddr	      : in  std_logic_vector(25 downto 0);
			pc4 	      : in  std_logic_vector(31 downto 0);
			bta	      : in  std_logic_vector(31 downto 0);
			pc				: out std_logic_vector(31 downto 0));
end PCupdate;

architecture Behavioral of PCupdate is
	signal s_pc : std_logic_vector(31 downto 0);
	signal s_pcEnable : std_logic;
begin
	s_pcEnable <= PCWrite or (PCWriteCond and zero);
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_pc <= (others => '0');
			elsif(s_pcEnable = '1') then
				case PCSource is
					when "01" => -- BTA
						s_pc <= BTA;
					when "10" => -- JTA
						s_pc <= s_pc(31 downto 28) & jAddr & "00";
					when others => -- PC + 4
						s_pc <= PC4;
				end case;
			end if;
		end if;
	end process;
	pc <= std_logic_vector(s_pc);
end Behavioral;
