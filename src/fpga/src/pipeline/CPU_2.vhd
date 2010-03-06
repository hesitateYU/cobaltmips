------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

------------------------------------------------------------------------------
entity cpu_2 is
    Port ( 
	   reset_b               	: in std_logic;
      in_reg_addr             : in std_logic_vector(4 downto 0); -- input ID for the register we want to see
      out_reg_data          	: out std_logic_vector(31 downto 0); -- output data given by the register
      in_mem_addr             : in std_logic_vector(7 downto 0); -- input ID for the DM
      out_mem_data          	: out std_logic_vector(31 downto 0); -- output data given by the DM
      clk                   	: in std_logic
		);
end cpu_2;

architecture behave of cpu_2 is
------------ Describe your architecture Here------------------------------------------------
-- Local signals in the pipeline

-- IF stage
signal PC_IN: std_logic_vector (31 downto 0);
signal INSTR: std_logic_vector (31 downto 0);
signal IF_EN: std_logic;

-- ID (RF) Satge
signal ID_RS, ID_RT, ID_RD: std_logic_vector (4 downto 0);
signal ID_OPCODE: std_logic_vector (5 downto 0);
signal ID_ALU_OP: std_logic_vector (5 downto 0);
--signal ID_OFFSET: std_logic_vector (3 downto 0);
signal ID_RS_READ, ID_RT_READ : std_logic_vector(31 downto 0);

--phase2 branch/jump
--signal ID_branch : std_logic;  -- successful branch 
--signal ID_jump: std_logic;  
--signal ID_next_ADDR: std_logic_vector (31 downto 0);
signal ID_BRANCH_OFFSET : std_logic_vector (15 downto 0);
signal ID_jump_offset : std_logic_vector (25 downto 0);
signal PC_ID: std_logic_vector (31 downto 0);
--signal ID_success: std_logic;


-- EX Stage
signal EX_OPCODE: std_logic_vector(5 downto 0);
signal EX_ALU_OP: std_logic_vector (2 downto 0);
signal EX_WB: std_logic;
signal EX_ADDR: std_logic_vector(4 downto 0);
signal EX_operand1, EX_operand2, EX_OUT,EX_OFFSET_SEXT : std_logic_vector(31 downto 0);
signal mux_operand1,mux_operand2,ALU_operand1, ALU_operand2: std_logic_vector(31 downto 0);
signal EX_update, EX_read : std_logic;
--signal EX_DATAIN : std_logic_vector(31 downto 0);
signal EX_LOAD : std_logic;
signal EX_RS, EX_RT: std_logic_vector(4 downto 0);

signal forwarding_RS : std_logic_vector(1 downto 0);
signal forwarding_RT : std_logic_vector(1 downto 0);

-- MEM Stage
--signal MEM_OPCODE: std_logic_vector(5 downto 0);
--signal MEM_ADDR: std_logic_vector (7 downto 0);
--signal MEM_DATAIN: std_logic_vector (31 downto 0);
signal MEM_WB: std_logic;
signal MEM_DATAOUT: std_logic_vector (31 downto 0);
signal MEM_read: std_logic;
signal MEM_regfile_ADDR : std_logic_vector(4 downto 0);
signal MEM_ALU_OUT : std_logic_vector(31 downto 0);
--signal MEM_WB_OUT : std_logic_vector(31 downto 0);
--signal MEM_LOAD : std_logic;

-- WB Stage
signal WB_ADDR: std_logic_vector (4 downto 0);
signal WB_WB: std_logic;
signal WB_DATA: std_logic_vector (31 downto 0);
signal WB_LOAD : std_logic;

--signal ENABLE : std_logic := '0';
signal stall,INS_MEM_EN, stall_lw, stall_br_1, stall_br_2: std_logic;
signal flush: std_logic;
signal forwarding_sw: std_logic_vector (1 downto 0);
signal MEM_IN: std_logic_vector(31 downto 0);

-- Component Declaration

component instruction_mem
    generic (
         DATA_WIDTH     : integer := 32; 
         ADDR_WIDTH     : integer := 8
        );
    port (
      clk           : in  std_logic; 
		en		 		  : in  std_logic;
      addr          : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
      data_out      : out std_logic_vector(DATA_WIDTH-1 downto 0)
     ); 
end component instruction_mem;

component register_file
    port(
			clk_rf					: in std_logic;
			reset_rf					: in std_logic;	
			write_data_rf			: in std_logic_vector(31 downto 0);
			wen_rf					: in std_logic;
			write_addr				: in std_logic_vector(4 downto 0);
			rsaddr_rf				: in std_logic_vector(4 downto 0);
			rtaddr_rf				: in std_logic_vector(4 downto 0);
			reg_read_addr			: in std_logic_vector(4 downto 0);
			rsdata_rf				: out std_logic_vector(31 downto 0);
			rtdata_rf				: out std_logic_vector(31 downto 0);
			reg_read_data			: out std_logic_vector(31 downto 0)
		  );
end component register_file;

component ALU
    port (
		alu_in1		: in std_logic_vector(31 downto 0);
		alu_in2		: in std_logic_vector(31 downto 0);
		alu_op		: in std_logic_vector(2 downto 0);
		alu_out		: out std_logic_vector(31 downto 0)
		);
end component ALU;

component data_mem_dp
    generic (
         DATA_WIDTH     : integer := 32; 
         ADDR_WIDTH     : integer := 8
        );
port (
      clka          : in  std_logic; 
      addr_a        : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
      data_in_a     : in  std_logic_vector(DATA_WIDTH-1 downto 0);
      wea           : in  std_logic; 
      data_out_a    : out std_logic_vector(DATA_WIDTH-1 downto 0);
		ena			  : in  std_logic;	

      clkb          : in  std_logic; 
      addr_b        : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
      data_in_b     : in  std_logic_vector(DATA_WIDTH-1 downto 0);
      web           : in  std_logic; 
      data_out_b    : out std_logic_vector(DATA_WIDTH-1 downto 0)
     ); 
end component data_mem_dp;

BEGIN

   -- Component instantiaton
	i_memory: instruction_mem port map(clk,INS_MEM_EN,PC_IN(9 downto 2),INSTR);
	r_file: register_file port map(clk, reset_b, WB_DATA,WB_WB, WB_ADDR, ID_RS, ID_RT,in_reg_addr, ID_RS_READ, ID_RT_READ, out_reg_data);  
	ex_alu: ALU port map(ALU_operand1, ALU_operand2, EX_ALU_OP, EX_OUT);
	d_memory: data_mem_dp port map(clk, EX_OUT(9 downto 2), MEM_IN, EX_update, MEM_DATAOUT,EX_read, clk,in_mem_addr, MEM_IN, '0', out_mem_data);


   -- EX forwarding unit
   
   forwarding_RS <= "10" when (EX_RS = MEM_regfile_ADDR) and (MEM_WB = '1') else
                    "01" when ((EX_RS = WB_ADDR) and (WB_WB = '1'))  else
                    "00";

   forwarding_RT <= "01" when (EX_RT = MEM_regfile_ADDR) and (MEM_WB = '1')  else
                 "10" when ((EX_RT = WB_ADDR) and (WB_WB = '1'))  else
                 "00";
	--and not(EX_RT=MEM_regfile_ADDR))
	forwarding_sw <= "01" when (EX_RT = MEM_regfile_ADDR) and (EX_update = '1') else
	                 "10" when (EX_RT = WB_ADDR) and (WB_WB = '1') else
	                 "00";
	
	-- Forwarding Muxes
	mux_operand1 <= EX_operand1 when forwarding_RS(0) = '0' else
	                WB_DATA;
	
	ALU_operand1 <= mux_operand1 when forwarding_RS(1) = '0' else
	                MEM_ALU_OUT;
	                
	--ALU_operand1 <= WB_DATA when (forwarding_RS = "10") else
--	                MEM_ALU_OUT when (forwarding_RS = "01") else
--	                EX_operand1;
	
	
	                
	mux_operand2 <= WB_DATA when (forwarding_RT = "10") else
	                MEM_ALU_OUT when (forwarding_RT = "01") else
	                EX_operand2;
	                
	ALU_operand2 <= EX_OFFSET_SEXT when EX_OPCODE(5) = '1' else
	                mux_operand2;                
--	ALU_operand2 <= EX_OFFSET_SEXT when (EX_OPCODE(5) = '1') else
--	                WB_DATA when (forwarding_RT = "10") else
--	                MEM_ALU_OUT when (forwarding_RT = "01") else
--	                EX_operand2;
	                
	MEM_IN <=   WB_DATA when (forwarding_sw = "10") else
	            MEM_ALU_OUT when (forwarding_sw = "01") else
	            EX_operand2;
	-- HDU
	
	stall_lw  <= '1' when ((ID_RS = EX_ADDR or ID_RT = EX_ADDR) and EX_WB = '1' and 
	                     EX_LOAD = '1') else  '0';
	
	stall_br_1 <= '1' when ((ID_RS = EX_ADDR or ID_RT = EX_ADDR) and EX_WB = '1' and 
	                       ID_OPCODE(2)='1' and EX_LOAD ='0') else '0' ;
	
	stall_br_2 <= '1' when ((ID_RS = MEM_regfile_ADDR or ID_RT =MEM_regfile_ADDR) and 
	                        MEM_WB = '1' and MEM_read = '1' and ID_OPCODE(2)='1') else '0';
	                        
	stall <= stall_lw or stall_br_1 or stall_br_2;
	                      
	INS_MEM_EN <= not(stall) and IF_EN;                    
	      
	pipeline: process(clk, reset_b)
		
		variable instruction: std_logic_vector(31 downto 0);
		variable rs_read, rt_read, rs_fw, rt_fw : std_logic_vector(31 downto 0);
      variable id_jump, id_branch, id_success : std_logic;
      variable id_next_addr,jmp_addr,pc_4,pc_out,signed_ext_offset: std_logic_vector(31 downto 0);
      
	BEGIN
		if reset_b = '0' then    -- IF reset is active, clear all the signals
			-- IF Stage
			PC_IN <= X"FFFFFFFC";
			PC_OUT := X"FFFFFFFC";
			IF_EN <= '0';
         flush <= '0';
			-- ID Stage
			ID_RS <=  (OTHERS => '0');
			ID_RT <=  (OTHERS => '0');
			ID_RD <=  (OTHERS => '0');
			PC_ID <=  (OTHERS => '0');
			ID_OPCODE <= (OTHERS => '-');
			ID_ALU_OP <=  (OTHERS => '-');
			--ID_OFFSET <=  (OTHERS => '-');
		   ID_branch := '0';   
			ID_jump := '0';  
			ID_success := '0';

			-- EX Stage
			EX_ALU_OP <=   (OTHERS => '-');
			EX_WB <= '0';
			EX_ADDR <=   (OTHERS => '0');
			EX_update <= '0';
			EX_read <= '0';
			EX_LOAD <= '-';
			EX_RS <=  (OTHERS => '0');
			EX_RT <=  (OTHERS => '0');
			--EX_RD <=  (OTHERS => '0');
			EX_OPCODE <= (OTHERS => '-');
			EX_OFFSET_SEXT <= (OTHERS => '-');
			--forwarding_RS <= "00";
			--forwarding_RT <= "00";

			-- MEM Stage
			--MEM_ADDR <=  (OTHERS => '-');
			--MEM_DATAIN <=   (OTHERS => '-');
			MEM_WB <= '0';
			--MEM_update <= '0';
			MEM_read <= '0';
			--MEM_LOAD <= '-';
			MEM_regfile_ADDR <= (others => '0');

			--WB Stage
			WB_ADDR <= "00000";
			WB_WB <= '0';
	  		WB_DATA <= (OTHERS => '-');
			WB_LOAD <= '-';
         
		elsif (clk'EVENT and clk = '1') then
			-- IF Stage
			
			IF_EN <= '1';
			
			PC_OUT := PC_IN;
			PC_4 := PC_OUT + 4;
			instruction := INSTR;
				
			--if( id_success = '0' and stall ='0') then
--			   PC_IN <= PC_OUT +4;	
--			
--			end if;
			   	     
			-- IF/ID Register
			if (stall = '0') then
			   ID_ALU_OP <= instruction(5 downto 0);
			   --ID_OFFSET <= instruction(3 downto 0);
			   ID_OPCODE <= instruction(31 downto 26);
			   ID_RS <= instruction(25 downto 21);
			   ID_RT <= instruction(20 downto 16);
			   ID_RD <= instruction(15 downto 11);
			   ID_BRANCH_OFFSET <= instruction(15 downto 0);  
			   ID_jump_offset <= instruction (25 downto 0);
			   PC_ID <= PC_OUT;
		   end if;
		   
		   --branch and jump address calculation
		   
		   signed_ext_offset(31 downto 16) := (31 downto 16 => ID_BRANCH_OFFSET(15)); 
			signed_ext_offset(15 downto 0) := ID_BRANCH_OFFSET(15 downto 0);
			id_next_addr(31 downto 2):= signed_ext_offset(29 downto 0);
			id_next_addr(1 downto 0):= "00";
			id_next_addr := id_next_addr + PC_ID;
			jmp_addr(31 downto 28):= PC_ID(31 downto 28);
			jmp_addr(27 downto 2):=  ID_jump_offset;
			jmp_addr(1 downto 0):=   "00";
			
		   --if (id_success = '1' or flush ='1') then
--		       
--		       ID_OPCODE <= (others => '-');
--		   end if;
		      
			-- ID Stage
			
			-- external forwarding for register file
			if (ID_RS = WB_ADDR) then
				rs_read := WB_DATA;
			else
				rs_read := ID_RS_READ;
			end if;

			if (ID_RT = WB_ADDR) then
				rt_read := WB_DATA;
			else
				rt_read := ID_RT_READ;
			end if;
			
			-- forwarding for branch operation
			
			if(ID_RS = MEM_regfile_ADDR and MEM_WB = '1' and ID_OPCODE(2)='1') then
			   rs_fw := MEM_ALU_OUT;
			else
			   rs_fw := rs_read;
			end if;
			
			if(ID_RT = MEM_regfile_ADDR and MEM_WB = '1' and ID_OPCODE(2)='1') then
			    rt_fw := MEM_ALU_OUT;
			else
			    rt_fw := rt_read;
			end if;
			
			--ID/EX Register
			
		   EX_Operand1 <= rs_read;
			EX_Operand2 <= rt_read;
			
			EX_RS <= ID_RS;
			EX_RT <= ID_RT;
			--EX_RD <= ID_RD;
			EX_ADDR <= ID_RD;
			EX_OFFSET_SEXT <= signed_ext_offset;
			   
			if(stall = '0' and flush = '0') then
			   EX_OPCODE <= ID_OPCODE;
			  
         case ID_OPCODE is
             
             when "000100" =>
                			-- branch/jump resolution
         		EX_WB <= '0';
					id_branch:='0';
					id_jump:='0';
				   if (rs_fw = rt_fw) then
					   id_branch := '1';
					   flush <= '1';
					   
				   end if;
				  
				 when "000010" =>
				      id_jump := '1';
				      flush <= '1';
				      EX_WB <= '0';
						id_branch:= '0';
			    when "000000" =>              -- if ex_opcode is ALU operation
				   id_branch := '0';
               id_jump := '0';
               flush <= '0';
							
				   EX_ADDR <= ID_RD;
				   EX_LOAD <= '0';
				   EX_WB <= '1';
				   EX_read <= '0';
				   EX_update <= '0';
				   if (ID_ALU_OP = "100000") then
					   EX_ALU_OP <= "000";
				   elsif (ID_ALU_OP = "100010") then
					   EX_ALU_OP <= "001";
				   elsif (ID_ALU_OP <= "100100") then
					   EX_ALU_OP <= "010";
				   elsif (ID_ALU_OP <= "100101") then
					   EX_ALU_OP <= "011";
				   elsif (ID_ALU_OP <= "101010") then
					   EX_ALU_OP <= "100";
				   else  -- any other ALU opcodes for now
					   EX_ALU_OP <= "---";
					   EX_WB <= '0';
		  		   end if;
		  		   
			    when "100011" | "101011" =>  -- if ex_opcode is Store or LOAD
			      id_branch := '0';
               id_jump := '0';
               flush <= '0';
				   
				   EX_ALU_OP <= "000";
				   if (ID_OPCODE = "100011") then   -- load case
					   EX_ADDR <= ID_RT;
					   EX_read <= '1';
					   EX_update <= '0';
					   --EX_DATAIN <=   (OTHERS => '-');
					   EX_WB <= '1';
					   EX_LOAD <= '1';
				   else  -- store case
					   EX_ADDR <=   (OTHERS => '-');
					   EX_update <= '1';
					   --EX_DATAIN <=ID_RT_READ;
					   EX_read <= '1';
					   EX_WB <= '0';
				   end if;
			    when others =>  -- any other opcodes for now
				   EX_ALU_OP <=  (OTHERS => '-');
				   EX_ADDR <=   (OTHERS => '-');
				   EX_WB <= '0';
				   EX_read <= '0';
				   EX_update <= '0';
					id_branch := '0';
               id_jump := '0';
               flush <= '0';
			end case;
         
         else
            EX_OPCODE <= "000000";
            EX_ALU_OP <= "---";
            EX_WB <= '0';
            EX_read <= '0';
            EX_update <= '0';
            EX_LOAD <= '0';
            id_branch := '0';
            id_jump := '0';
            flush <= '0';
     end if;
    
     --Updata PC counter
     
     if(id_branch = '0' and id_jump = '0' and stall = '0') then
         PC_IN <= pc_4;
     elsif(id_branch = '1') then
         PC_IN <= id_next_addr;
         
     elsif(id_jump = '1') then
         PC_IN <= jmp_addr;
     end if;
 
     if (id_branch ='1' or id_branch = '1' or flush ='1') then
			   ID_ALU_OP <= (OTHERS => '0');
			   --ID_OFFSET <= (OTHERS => '0');
			   ID_OPCODE <= (OTHERS => '0');
			   ID_RS <= (OTHERS => '0');
			   ID_RT <= (OTHERS => '0');
			   ID_RD <= (OTHERS => '0');
			   ID_BRANCH_OFFSET <= (OTHERS => '0');  
			   ID_jump_offset <= (OTHERS => '0');
			  
	 end if;
    
      
			-- EX/MEM Register
			--MEM_OPCODE <= EX_OPCODE;
			--MEM_ADDR <= EX_OUT(7 downto 0);             
			--MEM_update <= EX_update;
			MEM_ALU_OUT <= EX_OUT;
			MEM_read <= EX_read;
			MEM_WB <= EX_WB;
			MEM_regfile_ADDR <= EX_ADDR;
			--MEM_DATAIN <= EX_DATAIN;
			--MEM_LOAD <= EX_LOAD;	
		
		
			-- WB Stage
			WB_ADDR <= MEM_regfile_ADDR;
			WB_WB <= MEM_WB;
			WB_LOAD <= EX_LOAD;
			if (WB_LOAD = '1') then
				WB_DATA <= MEM_DATAOUT;
			else
				WB_DATA <= MEM_ALU_OUT;
			end if;


		end if;
				
	end process pipeline;	
end architecture behave;	  

