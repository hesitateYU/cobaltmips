------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

------------------------------------------------------------------------------
entity divider is
generic  (   
         tag_width   				: integer := 6
         );

	port (
				clk_div					: IN std_logic;
				reset_div				: IN std_logic;
				issueque_div_a			: IN std_logic_VECTOR(31 downto 0);
				issueque_div_b			: IN std_logic_VECTOR(31 downto 0);
				issueque_div_tag		: IN std_logic_vector(TAG_WIDTH-1 downto 0);
				issue_div				: IN std_logic;
				div_tag_out				: OUT std_logic_vector(TAG_WIDTH-1 downto 0);
				div_res					: OUT std_logic_vector(31 downto 0);
				div_rfd					: OUT std_logic
			);
end divider;

architecture divid of divider is
	component divider_core is
    port ( DATA_A : in std_logic_vector (31 downto 0 );
           DATA_B : in std_logic_vector ( 31 downto 0);
           DIV_OUT : out std_logic_vector ( 31 downto 0)
          );
			 
	end component divider_core;
	subtype tag_type is std_logic_vector(TAG_WIDTH-1 downto 0);
	type tag is array (0 to 4) of tag_type;

	signal rfd_array				: std_logic_vector(5 downto 0);
	signal tag_div : tag;
--	signal result_1, result_2	: std_logic_vector(31 downto 0);
	
--	signal quotient, remainder	: std_logic_vector(15 downto 0);
	signal div_rem_quo			: std_logic_vector(31 downto 0);
	signal result					: std_logic_vector(31 downto 0);
	signal divisor, divident	: std_logic_vector(31 downto 0);
	signal rfd						: std_logic;
	
	
	begin
		div : divider_core
			port map (
						DATA_A 	=> divisor,
						DATA_B 	=> divident,
						DIV_OUT 	=> result
						);

	div_rfd <= rfd;
	div_res <= div_rem_quo;
	tag_carry	: process (clk_div, reset_div)
	begin
		if (reset_div = '0') then
			for i in 0 to 4 loop
				tag_div(i) <= (others => '-');
				rfd_array  <= (others => '0');
				rfd		  <= '1';	
			end loop;
		elsif(clk_div'event and clk_div = '1') then
			if(issue_div = '1' and rfd = '1') then
				divisor 		<= issueque_div_a;
				divident		<= issueque_div_b;
				tag_div(0)  <= issueque_div_tag;
				rfd_array(0)<= '1';
				rfd			<= '0';
			else
				rfd_array(0)<= '0';
			end if;
			
			for i in 1 to 3 loop
--				tag_div(i) 	 <= 	tag_div(i-1);
				rfd_array(i) <=   rfd_array(i-1);
			end loop;
			
			for i in 1 to 4 loop
				tag_div(i) 	 <= 	tag_div(i-1);
			end loop;
			
			if(rfd = '0' and rfd_array(3) = '1') then
				rfd 			<= '1';
			end if;
			if (rfd = '1')then
				div_rem_quo	<= result;
			end if;
			
			div_tag_out <= tag_div(4);
			
		end if;
	end process tag_carry;
	
end architecture divid;
