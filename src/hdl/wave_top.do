onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /tb_top/reset
add wave -noupdate -format Logic -radix hexadecimal /tb_top/clk
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq_icache_pcin
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/ifq_icache_ren
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/ifq_icache_abort
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/icache_ifq_dout
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/icache_ifq_dout_valid
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq_dispatch_pcout_plus4
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq_dispatch_inst
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/ifq_dispatch_empty
add wave -noupdate -format Logic /tb_top/cpu/dispatch_ifq_ren
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch_ifq_branch_addr
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/dispatch_ifq_branch_valid
add wave -noupdate -divider {New Divider}
add wave -noupdate -format Logic /tb_top/cpu/ifq/ren_r
add wave -noupdate -format Logic /tb_top/cpu/ifq/is_full
add wave -noupdate -format Logic /tb_top/cpu/ifq/is_empty
add wave -noupdate -color {Light Steel Blue} -format Logic /tb_top/cpu/ifq/is_valid_read
add wave -noupdate -color {Light Steel Blue} -format Logic /tb_top/cpu/ifq/bypass_mux_sel
add wave -noupdate -color {Light Steel Blue} -format Logic /tb_top/cpu/ifq/do_inc_rptr
add wave -noupdate -color Cyan -format Logic /tb_top/cpu/ifq/do_inc_wptr
add wave -noupdate -color Cyan -format Logic /tb_top/cpu/ifq/is_valid_write
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_top/cpu/ifq/mem_r
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq/wptr_r
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq/rptr_r
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq/pcin_r
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq/pcout_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {23937 ps} 0}
configure wave -namecolwidth 231
configure wave -valuecolwidth 250
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
WaveRestoreZoom {0 ps} {167095 ps}
