onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb_ifq/ifq/clk
add wave -noupdate -format Logic -radix unsigned /tb_ifq/ifq/reset
add wave -noupdate -divider icache
add wave -noupdate -format Literal -radix hexadecimal /tb_ifq/ifq/icache_dout
add wave -noupdate -format Logic -radix unsigned /tb_ifq/ifq/icache_dout_valid
add wave -noupdate -format Literal -radix hexadecimal /tb_ifq/ifq/icache_pcin
add wave -noupdate -color Magenta -format Logic -radix unsigned /tb_ifq/ifq/icache_abort
add wave -noupdate -color Magenta -format Logic -radix unsigned /tb_ifq/ifq/icache_ren
add wave -noupdate -divider dispatch
add wave -noupdate -color Gold -format Logic -radix unsigned /tb_ifq/ifq/dispatch_ren
add wave -noupdate -color Gold -format Logic -radix unsigned /tb_ifq/ifq/dispatch_empty
add wave -noupdate -color Red -format Logic -radix unsigned /tb_ifq/ifq/dispatch_branch_valid
add wave -noupdate -color Red -format Literal -radix hexadecimal /tb_ifq/ifq/dispatch_branch_addr
add wave -noupdate -format Literal -radix hexadecimal /tb_ifq/ifq/dispatch_pcout_plus4
add wave -noupdate -format Literal -radix hexadecimal /tb_ifq/ifq/dispatch_inst
add wave -noupdate -divider internal
add wave -noupdate -color {Orange Red} -format Logic -radix unsigned /tb_ifq/ifq/is_full
add wave -noupdate -color {Orange Red} -format Logic /tb_ifq/ifq/will_be_full
add wave -noupdate -color Orange -format Logic -radix unsigned /tb_ifq/ifq/is_empty
add wave -noupdate -color Orange -format Logic /tb_ifq/ifq/will_be_empty
add wave -noupdate -format Logic -radix unsigned /tb_ifq/ifq/do_inc_wptr
add wave -noupdate -format Logic -radix unsigned /tb_ifq/ifq/do_inc_rptr
add wave -noupdate -color Magenta -format Logic /tb_ifq/ifq/do_bypass_mem
add wave -noupdate -color {Sea Green} -format Logic /tb_ifq/ifq/icache_req
add wave -noupdate -color {Sea Green} -format Logic /tb_ifq/ifq/icache_req_r
add wave -noupdate -color {Olive Drab} -format Logic /tb_ifq/ifq/dispatch_req
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_ifq/ifq/rptr
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_ifq/ifq/rptr_r
add wave -noupdate -color Blue -format Literal -radix unsigned /tb_ifq/ifq/wptr
add wave -noupdate -color Blue -format Literal -radix unsigned /tb_ifq/ifq/wptr_r
add wave -noupdate -format Literal -radix unsigned /tb_ifq/ifq/pcout
add wave -noupdate -color Red -format Literal -radix unsigned /tb_ifq/ifq/pcout_r
add wave -noupdate -format Literal -radix unsigned /tb_ifq/ifq/pcin
add wave -noupdate -format Literal -radix unsigned /tb_ifq/ifq/pcin_r
add wave -noupdate -format Literal -radix hexadecimal /tb_ifq/ifq/mem
add wave -noupdate -color Magenta -format Literal -radix hexadecimal -expand /tb_ifq/ifq/mem_r
add wave -noupdate -format Literal -radix unsigned /tb_ifq/ifq/bypass_mux_out
add wave -noupdate -format Literal -radix hexadecimal /tb_ifq/ifq/line_from_mem
add wave -noupdate -format Literal -radix hexadecimal /tb_ifq/ifq/line_from_input
add wave -noupdate -format Literal -radix unsigned /tb_ifq/ifq/inst_from_mem_mux_out
add wave -noupdate -format Literal -radix unsigned /tb_ifq/ifq/inst_from_input_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {561096 ps} 0}
configure wave -namecolwidth 193
configure wave -valuecolwidth 236
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {516438 ps} {647690 ps}
