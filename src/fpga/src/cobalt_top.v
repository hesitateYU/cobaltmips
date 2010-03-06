`timescale 1ns / 1ps

module cobalt_top(
   input        CLK_50MHZ,
   input        RS232_DCE_RXD,
   output       RS232_DCE_TXD,
   output [3:0] IO_SIMPLE,
   output [7:0] PORT_LED
);

   parameter PORT_CPU_CMD      = 8'h30;
   parameter PORT_CPU_REGADDR  = 8'h00;
   parameter PORT_CPU_REGDATA0 = 8'h01;
   parameter PORT_CPU_REGDATA1 = 8'h02;
   parameter PORT_CPU_REGDATA2 = 8'h03;
   parameter PORT_CPU_REGDATA3 = 8'h04;
   parameter PORT_CPU_MEMADDR  = 8'h10;
   parameter PORT_CPU_MEMDATA0 = 8'h11;
   parameter PORT_CPU_MEMDATA1 = 8'h12;
   parameter PORT_CPU_MEMDATA2 = 8'h13;
   parameter PORT_CPU_MEMDATA3 = 8'h14;
   parameter PORT_STATUS       = 8'h20;
   parameter PORT_UART_TX      = 8'h21;
   parameter PORT_UART_RX      = 8'h22;
   parameter PORT_IO_SIMPLE    = 8'h7F;
   parameter PORT_LED          = 8'h80;


   wire clk;
   wire uart_tx_serial;
   wire uart_serial_in;
   wire [3:0] io_simple;
   wire [7:0] port_led;

   assign clk            = CLK_50MHZ;
   assign uart_rx_serial = RS232_DCE_RXD;
   assign RS232_DCE_TXD  = uart_tx_serial;
   assign IO_SIMPLE      = io_simple;
   assign PORT_LED       = port_led;

   reg  [ 4:0] cpu_in_reg_addr;
   reg  [ 7:0] cpu_in_mem_addr;
   wire [31:0] cpu_out_reg_data;
   wire [31:0] cpu_out_mem_data;

   wire [ 9:0] pblaze_address;
   wire [17:0] pblaze_instruction;
   wire [ 7:0] pblaze_port_id;
   wire [ 7:0] pblaze_out_port;
   reg  [ 7:0] pblaze_in_port;
   wire        pblaze_write_strobe;
   wire        pblaze_read_strobe;
   reg         pblaze_interrupt;
   wire        pblaze_interrupt_ack;

   reg  [ 9:0] uart_baud_count;
   reg         uart_en_16_x_baud;
   reg  [ 7:0] uart_tx_data;
   wire [ 7:0] uart_rx_data;
   wire        uart_tx_full;
   wire        uart_rx_full;
   wire        uart_tx_half_full;
   wire        uart_rx_half_full;
   wire        uart_rx_data_present;
   wire        uart_write_to_uart;
   reg         uart_read_from_uart;

   wire [ 7:0] status_port;

   cpu_2 cpu(.clk         (clk             ),
             .reset_b     (1'b1            ),
             .in_reg_addr (cpu_in_reg_addr ),
             .in_mem_addr (cpu_in_mem_addr ),
             .out_reg_data(cpu_out_reg_data),
             .out_mem_data(cpu_out_mem_data));

   kcpsm3 pblaze(.address      (pblaze_address      ),
                 .instruction  (pblaze_instruction  ),
                 .port_id      (pblaze_port_id      ),
                 .write_strobe (pblaze_write_strobe ),
                 .out_port     (pblaze_out_port     ),
                 .read_strobe  (pblaze_read_strobe  ),
                 .in_port      (pblaze_in_port      ),
                 .interrupt    (pblaze_interrupt    ),
                 .interrupt_ack(pblaze_interrupt_ack),
                 .reset        (1'b0                ),
                 .clk          (clk                 ));

   cobalt program_rom(.address    (pblaze_address    ),
                      .instruction(pblaze_instruction),
                      .clk        (clk               ));


   uart_tx uart_tx(.data_in         (uart_tx_data      ),
                   .write_buffer    (uart_write_to_uart),
                   .reset_buffer    (1'b0              ),
                   .en_16_x_baud    (uart_en_16_x_baud ),
                   .serial_out      (uart_tx_serial    ),
                   .buffer_full     (uart_tx_full      ),
                   .buffer_half_full(uart_tx_half_full ),
                   .clk             (clk               ));

   uart_rx uart_rx(.serial_in          (uart_rx_serial      ),
                   .data_out           (uart_rx_data        ),
                   .read_buffer        (uart_read_from_uart ),
                   .reset_buffer       (1'b0                ),
                   .en_16_x_baud       (uart_en_16_x_baud   ),
                   .buffer_data_present(uart_rx_data_present),
                   .buffer_full        (uart_rx_full        ),
                   .buffer_half_full   (uart_rx_half_full   ),
                   .clk                (clk                 ));

   assign status_port = {3'b 000, uart_rx_data_present, uart_rx_full, uart_rx_half_full, uart_tx_full, uart_tx_half_full};

   assign uart_write_to_uart = pblaze_write_strobe & pblaze_port_id == PORT_UART_TX;
   always @(posedge clk) begin
      // Form read strobe for UART receiver FIFO buffer.
      // The fact that the read strobe will occur after the actual data is read by
      // the KCPSM3 is acceptable because it is really means 'I have read you'!
      uart_read_from_uart <= pblaze_read_strobe & pblaze_port_id == PORT_STATUS;
   end

   always @(posedge clk) begin
      if (pblaze_read_strobe) begin
         case (pblaze_port_id)
            PORT_CPU_REGDATA : pblaze_in_port <= cpu_in_reg_addr;
            PORT_CPU_MEMDATA : pblaze_in_port <= cpu_in_mem_addr;
            PORT_STATUS      : pblaze_in_port <= status_port;
            PORT_UART_RX     : pblaze_in_port <= uart_rx_data;
            default          : pblaze_in_port <= 8'hXX;
         endcase
      end
   end

   always @(posedge clk) begin
     cpu_in_reg_addr <= 8'hXX;
     cpu_in_mem_addr <= 8'hXX;
     uart_tx_data    <= 8'hXX;
     if (pblaze_write_strobe) begin
         case (pblaze_port_id)
            PORT_CPU_REGADDR : cpu_in_reg_addr <= pblaze_out_port;
            PORT_CPU_MEMADDR : cpu_in_mem_addr <= pblaze_out_port;
            PORT_UART_TX     : uart_tx_data    <= pblaze_out_port;
         endcase
     end
   end

   always @(posedge clk) begin
      if (uart_baud_count == 324) begin
         uart_baud_count   <= 1'b0;
         uart_en_16_x_baud <= 1'b1;
      end else begin
         uart_baud_count   <= uart_baud_count + 1;
         uart_en_16_x_baud <= 1'b0;
      end
    end

   reg [31:0] led_cnt, led_cnt_r;
   always @(posedge clk) begin
      led_cnt_r <= led_cnt;
   end
   always @(*) begin
      led_cnt = led_cnt_r + 1;
   end
   assign port_led = led_cnt_r[31:24];

endmodule
