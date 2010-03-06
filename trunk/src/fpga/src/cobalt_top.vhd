--
-- Reference design - Pulse Width Modulation (PWM) using PicoBlaze software and 
--                    interrupts only on the Spartan-3E Starter Kit.
--
-- Ken Chapman - Xilinx Ltd - 22nd May 2006
--
-- Allows the intensity of the 8 LEDs to be controlled using pulse width modulation. 
-- The 4 simple header pins provided at connector J4 may also be controlled.
--
-- All 12 channels are PWM with a PRF of 1KHz and duty cycle resolution of 8-bits
-- (256 steps) with each being independently controlled using simple commands typed 
-- at a terminal connected to the RS232 port (J9).
--
-- The design is set up for a 50MHz system clock and UART communications of 9600 baud.
--
-- The JTAG loader utility is also available for rapid program development.
--
--
------------------------------------------------------------------------------------
--
-- NOTICE:
--
-- Copyright Xilinx, Inc. 2006.   This code may be contain portions patented by other 
-- third parties.  By providing this core as one possible implementation of a standard,
-- Xilinx is making no representation that the provided implementation of this standard 
-- is free from any claims of infringement by any third party.  Xilinx expressly 
-- disclaims any warranty with respect to the adequacy of the implementation, including 
-- but not limited to any warranty or representation that the implementation is free 
-- from claims of any third party.  Furthermore, Xilinx is providing this core as a 
-- courtesy to you and suggests that you contact all third parties to obtain the 
-- necessary rights to use this implementation.
--
------------------------------------------------------------------------------------
--
-- Library declarations
--
-- Standard IEEE libraries
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
------------------------------------------------------------------------------------
--
--
entity cobalt_top is
    Port (           led : out std_logic_vector( 7 downto 0);
               simple : out std_logic_vector(12 downto 9);
           rs232_dce_txd : out std_logic;
           rs232_dce_rxd : in std_logic;
                     clk : in std_logic;
                 reset_b : in std_logic);
    end cobalt_top;
--
------------------------------------------------------------------------------------
--
-- Start of test architecture
--
architecture Behavioral of cobalt_top is
--
------------------------------------------------------------------------------------
   --
   -- declaration of KCPSM3
   --
  component kcpsm3
     Port (     address : out std_logic_vector( 9 downto 0);
            instruction : in  std_logic_vector(17 downto 0);
                port_id : out std_logic_vector( 7 downto 0);
           write_strobe : out std_logic;
               out_port : out std_logic_vector( 7 downto 0);
            read_strobe : out std_logic;
                in_port : in  std_logic_vector( 7 downto 0);
              interrupt : in  std_logic;
          interrupt_ack : out std_logic;
                  reset : in  std_logic;
                    clk : in  std_logic);
    end component;
   --
   -- declaration of program ROM
   --
   component cobalt
      Port (      address : in  std_logic_vector( 9 downto 0);
              instruction : out std_logic_vector(17 downto 0);
--             proc_reset : out std_logic;                       --JTAG Loader version
                      clk : in  std_logic);
   end component;
   --
   -- declaration of UART transmitter with integral 16 byte FIFO buffer.
   --
   component uart_tx
      Port (            data_in : in  std_logic_vector( 7 downto 0);
                   write_buffer : in  std_logic;
                   reset_buffer : in  std_logic;
                   en_16_x_baud : in  std_logic;
                     serial_out : out std_logic;
                    buffer_full : out std_logic;
               buffer_half_full : out std_logic;
                            clk : in  std_logic);
   end component;
   --
   -- declaration of UART Receiver with integral 16 byte FIFO buffer
   --
   component uart_rx
      Port (          serial_in : in std_logic;
                       data_out : out std_logic_vector(7 downto 0);
                    read_buffer : in std_logic;
                   reset_buffer : in std_logic;
                   en_16_x_baud : in std_logic;
            buffer_data_present : out std_logic;
                    buffer_full : out std_logic;
               buffer_half_full : out std_logic;
                            clk : in std_logic);
   end component;

   component cpu_2
      Port (            clk : in  std_logic;
                    reset_b : in  std_logic;
                in_reg_addr : in  std_logic_vector( 4 downto 0);
                in_mem_addr : in  std_logic_vector( 7 downto 0);
               out_reg_data : out std_logic_vector(31 downto 0);
               out_mem_data : out std_logic_vector(31 downto 0));
   end component;

constant PORT_CPU_CMD      : std_logic_vector := x"30";
constant PORT_CPU_REGADDR  : std_logic_vector := x"00";
constant PORT_CPU_REGDATA0 : std_logic_vector := x"01";
constant PORT_CPU_REGDATA1 : std_logic_vector := x"02";
constant PORT_CPU_REGDATA2 : std_logic_vector := x"03";
constant PORT_CPU_REGDATA3 : std_logic_vector := x"04";
constant PORT_CPU_MEMADDR  : std_logic_vector := x"10";
constant PORT_CPU_MEMDATA0 : std_logic_vector := x"11";
constant PORT_CPU_MEMDATA1 : std_logic_vector := x"12";
constant PORT_CPU_MEMDATA2 : std_logic_vector := x"13";
constant PORT_CPU_MEMDATA3 : std_logic_vector := x"14";
constant PORT_STATUS       : std_logic_vector := x"20";
constant PORT_UART_TX      : std_logic_vector := x"21";
constant PORT_UART_RX      : std_logic_vector := x"22";
constant PORT_SIMPLE_IO    : std_logic_vector := x"7F";
constant PORT_LEDS         : std_logic_vector := x"80";
--
------------------------------------------------------------------------------------
--
-- Signals used to connect KCPSM3 to program ROM and I/O logic
--
signal address          : std_logic_vector(9 downto 0);
signal instruction      : std_logic_vector(17 downto 0);
signal port_id          : std_logic_vector(7 downto 0);
signal out_port         : std_logic_vector(7 downto 0);
signal in_port          : std_logic_vector(7 downto 0);
signal write_strobe     : std_logic;
signal read_strobe      : std_logic;
signal interrupt        : std_logic :='0';
signal interrupt_ack    : std_logic;
signal kcpsm3_reset     : std_logic;
--
-- Signals for interrupt generation 
--
signal  interrupt_count : integer range 0 to 195 :=0;
signal  interrupt_event : std_logic;
--
-- Signals for connection of UART 
--
signal      status_port : std_logic_vector(7 downto 0);
signal       baud_count : integer range 0 to 325 :=0;
signal     en_16_x_baud : std_logic;
signal    write_to_uart : std_logic;
signal          tx_full : std_logic;
signal     tx_half_full : std_logic;
signal   read_from_uart : std_logic;
signal          rx_data : std_logic_vector(7 downto 0);
signal  rx_data_present : std_logic;
signal          rx_full : std_logic;
signal     rx_half_full : std_logic;
--
-- Signals for cpu_2 processon instance
--
signal           cpu_clkg : std_logic;
signal         cpu_clk_en : std_logic;
signal    cpu_in_reg_addr : std_logic_vector(4 downto 0);
signal    cpu_in_mem_addr : std_logic_vector(7 downto 0);
signal   cpu_out_mem_data : std_logic_vector(31 downto 0);
signal   cpu_out_reg_data : std_logic_vector(31 downto 0);
--
--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- Start of circuit description
--
begin
   --
   ----------------------------------------------------------------------------------------------------------------------------------
   -- KCPSM3 and the program memory
   ----------------------------------------------------------------------------------------------------------------------------------
   --
   processor: kcpsm3
      port map(      address => address,
                 instruction => instruction,
                     port_id => port_id,
                write_strobe => write_strobe,
                    out_port => out_port,
                 read_strobe => read_strobe,
                     in_port => in_port,
                   interrupt => interrupt,
               interrupt_ack => interrupt_ack,
                       reset => kcpsm3_reset,
                         clk => clk);

   program_rom: cobalt
      port map(      address => address,
                 instruction => instruction,
--                proc_reset => kcpsm3_reset,                       --JTAG Loader version 
                         clk => clk);

   --
   ----------------------------------------------------------------------------------------------------------------------------------
   -- MIPS processor instance
   ----------------------------------------------------------------------------------------------------------------------------------
   --
   cpu_2_inst: cpu_2
      --port map(            clk => cpu_clkg,
      port map(            clk => clk,
                       reset_b => reset_b,
                  in_reg_addr  => cpu_in_reg_addr,
                  in_mem_addr  => cpu_in_mem_addr,
                  out_reg_data => cpu_out_reg_data,
                  out_mem_data => cpu_out_mem_data);
   --
   ----------------------------------------------------------------------------------------------------------------------------------
   -- Interrupt
   ----------------------------------------------------------------------------------------------------------------------------------
   --
   --
   -- Interrupt is used to set timing of PicoBlaze during PWM generation.
   -- Interrupts are generated at a rate consistent with a resolution 256 steps of a 1KHz pulse 
   -- repetition frequency waveform. Therefore an interrupt is required every 3.92us which is 
   -- equivalent to once every 196 cycles when using the 50MHz clock provided on the Starter Kit board.
   --
   interrupt_control: process(clk)
   begin
      if clk'event and clk='1' then

         --Generate interrupt every 3.92us
         if interrupt_count=195 then
            interrupt_count <= 0;
            interrupt_event <= '1';
          else
            interrupt_count <= interrupt_count + 1;
            interrupt_event <= '0';
         end if;

         -- processor interrupt waits for an acknowledgment
         if interrupt_ack='1' then
            interrupt <= '0';
         elsif interrupt_event='1' then
            interrupt <= '1';
         else
            interrupt <= interrupt;
         end if;

      end if;
   end process interrupt_control;

   --
   ----------------------------------------------------------------------------------------------------------------------------------
   -- KCPSM3 input ports 
   ----------------------------------------------------------------------------------------------------------------------------------
   --
   --
   -- UART FIFO status signals to form a bus
   --
   status_port <= "000" & rx_full & rx_half_full & rx_data_present & tx_full & tx_half_full;

   --
   -- The inputs connect via a pipelined multiplexer
   --
   input_ports: process(clk)
   begin
      if clk'event and clk='1' then
         case port_id is
            -- read simple toggle switches and buttons at address 00 hex
            when PORT_STATUS => in_port <= status_port;

            -- read UART receive data at address 01 hex
            when PORT_UART_RX => in_port <= rx_data;

            -- read from register file in cpu
            when PORT_CPU_REGDATA0 => in_port <= cpu_out_reg_data( 7 downto  0);
            when PORT_CPU_REGDATA1 => in_port <= cpu_out_reg_data(15 downto  8);
            when PORT_CPU_REGDATA2 => in_port <= cpu_out_reg_data(23 downto 16);
            when PORT_CPU_REGDATA3 => in_port <= cpu_out_reg_data(31 downto 24);

            -- read from memory mapped by cpu
            when PORT_CPU_MEMDATA0 => in_port <= cpu_out_mem_data( 7 downto  0);
            when PORT_CPU_MEMDATA1 => in_port <= cpu_out_mem_data(15 downto  8);
            when PORT_CPU_MEMDATA2 => in_port <= cpu_out_mem_data(23 downto 16);
            when PORT_CPU_MEMDATA3 => in_port <= cpu_out_mem_data(31 downto 24);

            -- Don't care used for all other addresses to ensure minimum logic implementation
            when others => in_port <= "XXXXXXXX";
         end case;

         -- Form read strobe for UART receiver FIFO buffer at address 01 hex.
         -- The fact that the read strobe will occur after the actual data is read by 
         -- the KCPSM3 is acceptable because it is really means 'I have read you'!
         if (read_strobe='1' and port_id = PORT_UART_RX) then
            read_from_uart <= '1';
         else
            read_from_uart <= '0';
         end if;

      end if;

   end process input_ports;

   --
   ----------------------------------------------------------------------------------------------------------------------------------
   -- KCPSM3 output ports
   ----------------------------------------------------------------------------------------------------------------------------------
   --
   -- adding the output registers to the processor
   output_ports: process(clk)
   begin
      if clk'event and clk='1' then
         if write_strobe='1' then
            if port_id = PORT_LEDS then
               led <= out_port;
            end if;

            if port_id = PORT_SIMPLE_IO then
               simple <= out_port(3 downto 0);
            end if;

            if port_id = PORT_CPU_CMD then
               cpu_clk_en <= out_port(0);
            end if;

            if port_id = PORT_CPU_REGADDR then
               cpu_in_reg_addr <= out_port(4 downto 0);
            end if;

            if port_id = PORT_CPU_MEMADDR then
               cpu_in_mem_addr <= out_port;
            end if;

         end if;
      end if;
   end process output_ports;

   clk_gate_cpu_2: process(clk)
   begin
      if clk'event and clk = '1' then
         if (cpu_clk_en = '1') then
            cpu_clkg <= clk;
         else
            cpu_clkg <= cpu_clkg;
         end if;
      end if;
   end process clk_gate_cpu_2;

   --
   -- write to UART transmitter FIFO buffer at address 20 hex.
   -- This is a combinatorial decode because the FIFO is the 'port register'.
   --
   write_to_uart <= '1' when (write_strobe='1' and port_id = PORT_UART_TX) else '0';

   --
   ----------------------------------------------------------------------------------------------------------------------------------
   -- UART
   ----------------------------------------------------------------------------------------------------------------------------------
   --
   -- Connect the 8-bit, 1 stop-bit, no parity transmit and receive macros.
   -- Each contains an embedded 16-byte FIFO buffer.
   --
   transmit: uart_tx
   port map (              data_in => out_port,
                      write_buffer => write_to_uart,
                      reset_buffer => '0',
                      en_16_x_baud => en_16_x_baud,
                        serial_out => rs232_dce_txd,
                       buffer_full => tx_full,
                  buffer_half_full => tx_half_full,
                               clk => clk );

   receive: uart_rx
   port map (            serial_in => rs232_dce_rxd,
                          data_out => rx_data,
                       read_buffer => read_from_uart,
                      reset_buffer => '0',
                      en_16_x_baud => en_16_x_baud,
               buffer_data_present => rx_data_present,
                       buffer_full => rx_full,
                  buffer_half_full => rx_half_full,
                               clk => clk );

   --
   -- Set baud rate to 9600 for the UART communications
   -- Requires en_16_x_baud to be 153600Hz which is a single cycle pulse every 326 cycles at 50MHz 
   --
   baud_timer: process(clk)
   begin
      if clk'event and clk='1' then
         if baud_count=325 then
            baud_count <= 0;
            en_16_x_baud <= '1';
         else
            baud_count <= baud_count + 1;
            en_16_x_baud <= '0';
         end if;
      end if;
   end process baud_timer;

end Behavioral;

------------------------------------------------------------------------------------------------------------------------------------
--
-- END OF FILE picoblaze_pwm_control.vhd
--
------------------------------------------------------------------------------------------------------------------------------------

