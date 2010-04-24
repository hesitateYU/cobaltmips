------------------------------------------------------------------------------
-- Create/rivision Date:    
-- Design Name:    DIVISION UNIT
-- Module Name:    DIVIDER
-- Author:         Rahul Tekawade
------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
------------------------------------------------------------------------------
entity divider_core is
    Port ( DATA_A : in std_logic_vector (31 downto 0 );
           DATA_B : in std_logic_vector ( 31 downto 0);
           DIV_OUT : out std_logic_vector ( 31 downto 0)
          );
end divider_core;
------------------------------------------------------------------------------
architecture behv of divider_core is


	begin 
	
	division_unit: process ( DATA_A, DATA_B)
	
	variable Q : std_logic_vector ( 15 downto 0);           -- quotient
	variable R : std_logic_vector ( 15 downto 0);           -- remainder
	variable D : std_logic_vector ( 15 downto 0);           -- divisor
	variable A : std_logic_vector ( 15 downto 0);           -- dividend
	variable X : std_logic_vector ( 15 downto 0);
	begin
	
	A := DATA_A ( 15 downto 0);
	D := DATA_B ( 15 downto 0);
	
	IF ( D = X"0000") THEN         -- DIVIDE BY ZERO
		 R := X"FFFF";
		 Q := X"FFFF";
	ELSE            
	  R(15 downto 1) := ( 15 downto 1 => '0');
	  R(0) := A(15);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(15) := '1';
	  ELSE
			X := R;
			Q(15) := '0';      
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(14);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(14) := '1';
	  ELSE
			X := R;
			Q(14) := '0';      
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(13);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(13) := '1';
	  ELSE
			X := R;
			Q(13) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(12);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(12) := '1';
	  ELSE
			X := R;
			Q(12) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(11);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(11) := '1';
	  ELSE
			X := R;
			Q(11) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(10);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(10) := '1';
	  ELSE
			X := R;
			Q(10) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(9);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(9) := '1';
	  ELSE
			X := R;
			Q(9) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(8);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(8) := '1';
	  ELSE
			X := R;
			Q(8) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(7);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(7) := '1';
	  ELSE
			X := R;
			Q(7) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(6);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(6) := '1';
	  ELSE
			X := R;
			Q(6) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(5);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(5) := '1';
	  ELSE
			X := R;
			Q(5) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(4);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(4) := '1';
	  ELSE
			X := R;
			Q(4) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(3);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(3) := '1';
	  ELSE
			X := R;
			Q(3) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(2);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(2) := '1';
	  ELSE
			X := R;
			Q(2) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(1);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(1) := '1';
	  ELSE
			X := R;
			Q(1) := '0';
	  END IF;
	
	  R(15 downto 1 ) := X(14 downto 0);
	  R(0) := A(0);
	  IF ( R >= D) THEN 
			X := R - D;
			Q(0) := '1';
	  ELSE
			X := R;
			Q(0) := '0';
	  END IF;
	  
	  R := X;
	 END IF;
	 
	-- DIV_OUT <= (R , Q);
	DIV_OUT <= R  & Q;
	 
	  
	end process division_unit;
end behv;

