------------------------------------------------------------------------------
-- Libraries and use clauses

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_SIGNED.ALL;

------------------------------------------------------------------------------
entity cpu_2_tb is
end cpu_2_tb;

------------------------------------------------------------------------------

architecture cpu_behv_tb of cpu_2_tb is

-- clock period
	constant clk_period: time := 20 ns;

-- local signals
	signal		reset_b_tb               	: std_logic;
	signal		in_reg_addr_tb             : std_logic_vector(4 downto 0); -- input ID for the register we want to see
	signal		out_reg_data_tb          	: std_logic_vector(31 downto 0); -- output data given by the register
	signal		in_mem_addr_tb             : std_logic_vector(7 downto 0); -- input ID for the DM
	signal		out_mem_data_tb          	: std_logic_vector(31 downto 0); -- output data given by the DM
	signal		clk_tb                   	: std_logic;
 	
-- component declarations
component cpu_2 is
    Port ( 
			reset_b               	: in std_logic;
			in_reg_addr             : in std_logic_vector(4 downto 0); -- input ID for the register we want to see
			out_reg_data          	: out std_logic_vector(31 downto 0); -- output data given by the register
			in_mem_addr             : in std_logic_vector(7 downto 0); -- input ID for the DM
			out_mem_data          	: out std_logic_vector(31 downto 0); -- output data given by the DM
			clk                   	: in std_logic
			);
end component;


begin
    
  UUT: cpu_2
	  port map(reset_b_tb, in_reg_addr_tb, out_reg_data_tb, in_mem_addr_tb, out_mem_data_tb, clk_tb);
	      
	clock_generate: process
	begin
	  clk_tb <= '0', '1' after (clk_period/2);
	  wait for clk_period;
	end process clock_generate;

	reset_generate: process
	begin
	  reset_b_tb <= '0', '1' after (clk_period * 1.1);
	  wait; -- wait forever
	end process reset_generate;

end cpu_behv_tb;

------------------------------------------------------------------------------
