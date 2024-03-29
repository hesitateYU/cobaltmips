-------------------------------------------------------------------------------
--
-- Design       : dpram 
-- Project      : Digilent Terminal 
-- Author       : Srinivas Vaduvatha 
-- Company      : University of Southern California 
--
-------------------------------------------------------------------------------
--
-- File         : dpram.vhd
-- Version      : 1.0
--
-------------------------------------------------------------------------------
--
-- Description  : Data width & Address width - Generics
--                Dual port synchronous memory. Supports Read / Write on both ports 
--                Read / Write ports can be different clocks.
--                Infers BRAM resource in Xilinx FPGAs.
--                If the width / depth specified require more bits than in a single 
--                BRAM, multiple BRAMs are automatically cascaded to form a larger 
--                memory. Memory has to be of (2**n) depth
--
-------------------------------------------------------------------------------

-- libraries and use clauses
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity data_mem_dp is 
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
end data_mem_dp ; 

architecture inferrable of data_mem_dp is 

-- type declarations
type mem_type is array (0 to (2**ADDR_WIDTH)-1) of std_logic_vector((DATA_WIDTH-1) downto 0); 

-- signals declarations.
shared variable mem : mem_type := (X"00000000", X"00000001", X"00000002", X"00000003",X"00000004", X"00000005",X"00000006", X"00000007", X"00000008", X"00000009", X"0000000A", X"0000000B", X"0000000C", X"0000000D", X"0000000E",X"0000000F",
                                   X"00000010", X"00000011", X"00000012", X"00000013",X"00000014", X"00000015",X"00000016", X"00000017", X"00000018", X"00000019", X"0000001A", X"0000001B", X"0000001C", X"0000001D", X"0000001E",X"0000001F",
											  X"00000020", X"00000021", X"00000022", X"00000023",X"00000024", X"00000025",X"00000026", X"00000027", X"00000028", X"00000029", X"0000002A", X"0000002B", X"0000002C", X"0000002D", X"0000002E",X"0000002F",
											  X"00000030", X"00000031", X"00000032", X"00000033",X"00000034", X"00000035",X"00000036", X"00000037", X"00000038", X"00000039", X"0000003A", X"0000003B", X"0000003C", X"0000003D", X"0000003E",X"0000003F",
											  X"00000040", X"00000041", X"00000042", X"00000043",X"00000044", X"00000045",X"00000046", X"00000047", X"00000048", X"00000049", X"0000004A", X"0000004B", X"0000004C", X"0000004D", X"0000004E",X"0000004F",
											  X"00000050", X"00000051", X"00000052", X"00000053",X"00000054", X"00000055",X"00000056", X"00000057", X"00000058", X"00000059", X"0000005A", X"0000005B", X"0000005C", X"0000005D", X"0000005E",X"0000005F",
											  X"00000060", X"00000061", X"00000062", X"00000063",X"00000064", X"00000065",X"00000066", X"00000067", X"00000068", X"00000069", X"0000006A", X"0000006B", X"0000006C", X"0000006D", X"0000006E",X"0000006F",
											  X"00000070", X"00000071", X"00000072", X"00000073",X"00000074", X"00000075",X"00000076", X"00000077", X"00000078", X"00000079", X"0000007A", X"0000007B", X"0000007C", X"0000007D", X"0000007E",X"0000007F",
											  X"00000080", X"00000081", X"00000082", X"00000083",X"00000084", X"00000085",X"00000086", X"00000087", X"00000088", X"00000089", X"0000008A", X"0000008B", X"0000008C", X"0000008D", X"0000008E",X"0000008F",
											  X"00000090", X"00000091", X"00000092", X"00000093",X"00000094", X"00000095",X"00000096", X"00000097", X"00000098", X"00000099", X"0000009A", X"0000009B", X"0000009C", X"0000009D", X"0000009E",X"0000009F",
											  X"000000A0", X"000000A1", X"000000A2", X"000000A3",X"000000A4", X"000000A5",X"000000A6", X"000000A7", X"000000A8", X"000000A9", X"000000AA", X"000000AB", X"000000AC", X"000000AD", X"000000AE",X"000000AF",
											  X"000000B0", X"000000B1", X"000000B2", X"000000B3",X"000000B4", X"000000B5",X"000000B6", X"000000B7", X"000000B8", X"000000B9", X"000000BA", X"000000BB", X"000000BC", X"000000BD", X"000000BE",X"000000BF",
											  X"000000C0", X"000000C1", X"000000C2", X"000000C3",X"000000C4", X"000000C5",X"000000C6", X"000000C7", X"000000C8", X"000000C9", X"000000CA", X"000000CB", X"000000CC", X"000000CD", X"000000CE",X"000000CF",
											  X"000000D0", X"000000D1", X"000000D2", X"000000D3",X"000000D4", X"000000D5",X"000000D6", X"000000D7", X"000000D8", X"000000D9", X"000000DA", X"000000DB", X"000000DC", X"000000DD", X"000000DE",X"000000DF",
											  X"000000E0", X"000000E1", X"000000E2", X"000000E3",X"000000E4", X"000000E5",X"000000E6", X"000000E7", X"000000E8", X"000000E9", X"000000EA", X"000000EB", X"000000EC", X"000000ED", X"000000EE",X"000000EF",
											  X"000000F0", X"000000F1", X"000000F2", X"000000F3",X"000000F4", X"000000F5",X"000000F6", X"000000F7", X"000000F8", X"000000F9", X"000000FA", X"000000FB", X"000000FC", X"000000FD", X"000000FE",X"000000FF") ;
 

begin 
porta_oper : process (clka) 
begin 
    if (clka = '1' and clka'event) then
        if (wea = '1' and ena='1') then 
            mem(CONV_INTEGER(addr_a))     := data_in_a; 
        end if;
		  if( ena='1')then
			data_out_a          <= mem(CONV_INTEGER(addr_a));
		  end if;	
    end if;
end process; 

portb_oper : process (clkb) 
begin 
    if (clkb = '1' and clkb'event) then
        if (web = '1') then 
            mem(CONV_INTEGER(addr_b))     := data_in_b; 
        end if;
        data_out_b          <= mem(CONV_INTEGER(addr_b)); 
    end if;
end process; 

end inferrable ;
