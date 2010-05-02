onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/clk
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/reset
add wave -noupdate -divider icache_ifq
add wave -noupdate -expand -group icache -format Literal -radix hexadecimal /tb_top/cpu/icache/mem_r
add wave -noupdate -expand -group icache -format Literal -radix hexadecimal /tb_top/cpu/icache/mem
add wave -noupdate -expand -group icache -format Literal -radix hexadecimal /tb_top/cpu/icache/line_sel
add wave -noupdate -expand -group icache -format Literal /tb_top/cpu/icache/dout
add wave -noupdate -expand -group icache -format Literal /tb_top/cpu/icache/dout_r
add wave -noupdate -expand -group icache -format Logic /tb_top/cpu/icache/dout_valid
add wave -noupdate -expand -group icache -format Logic /tb_top/cpu/icache/dout_valid_r
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/icache/mem
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq_dispatch_pcout_plus4
add wave -noupdate -format Logic /tb_top/cpu/ifq_icache_ren
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/ifq_icache_abort
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/icache_ifq_dout
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/icache_ifq_dout_valid
add wave -noupdate -divider ifq_dispatch
add wave -noupdate -expand -group ifq -color Magenta -format Logic -radix hexadecimal /tb_top/cpu/ifq/is_full
add wave -noupdate -expand -group ifq -color Magenta -format Logic -radix hexadecimal /tb_top/cpu/ifq/is_empty
add wave -noupdate -expand -group ifq -format Literal -radix hexadecimal /tb_top/cpu/ifq/line_from_mem
add wave -noupdate -expand -group ifq -format Literal -radix hexadecimal /tb_top/cpu/ifq/line_from_input
add wave -noupdate -expand -group ifq -format Literal -radix hexadecimal /tb_top/cpu/ifq/inst_from_mem_mux_out
add wave -noupdate -expand -group ifq -format Literal -radix hexadecimal /tb_top/cpu/ifq/inst_from_input_mux_out
add wave -noupdate -expand -group ifq -color Magenta -format Literal -radix hexadecimal /tb_top/cpu/ifq/bypass_mux_out
add wave -noupdate -expand -group ifq -format Logic -radix unsigned /tb_top/cpu/ifq/bypass_mux_sel
add wave -noupdate -expand -group ifq -format Literal -radix hexadecimal /tb_top/cpu/ifq/mem_r
add wave -noupdate -expand -group ifq -format Literal -radix unsigned /tb_top/cpu/ifq/wptr
add wave -noupdate -expand -group ifq -format Literal -radix unsigned /tb_top/cpu/ifq/wptr_r
add wave -noupdate -expand -group ifq -format Literal -radix unsigned /tb_top/cpu/ifq/rptr
add wave -noupdate -expand -group ifq -format Literal -radix unsigned /tb_top/cpu/ifq/rptr_r
add wave -noupdate -expand -group ifq -format Literal -radix decimal /tb_top/cpu/ifq/pcin
add wave -noupdate -expand -group ifq -format Literal -radix decimal /tb_top/cpu/ifq/pcin_r
add wave -noupdate -expand -group ifq -format Literal -radix decimal /tb_top/cpu/ifq/pcout
add wave -noupdate -expand -group ifq -format Literal -radix decimal /tb_top/cpu/ifq/pcout_r
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq_icache_pcin
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/ifq_dispatch_inst
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/ifq_dispatch_empty
add wave -noupdate -format Logic /tb_top/cpu/ifq_icache_ren
add wave -noupdate -color Magenta -format Logic -radix hexadecimal /tb_top/cpu/dispatch_ifq_rd_en
add wave -noupdate -color Cyan -format Literal -radix hexadecimal /tb_top/cpu/dispatch_ifq_branch_addr
add wave -noupdate -color Cyan -format Logic -radix hexadecimal /tb_top/cpu/dispatch_ifq_branch_valid
add wave -noupdate -divider cdb_dispatch
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_opcode
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_func
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_rdtag
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_rstag
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_rttag
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_shamt
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_imm
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_imm_sext
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_addr
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_addr_sext
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_addr_jump
add wave -noupdate -expand -group dispatch -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_addr_branch
add wave -noupdate -group regfile -format Literal -radix unsigned /tb_top/cpu/dispatch/regfile/mem
add wave -noupdate -group regfile -format Literal -radix hexadecimal /tb_top/cpu/dispatch/regfile/mem_r
add wave -noupdate -group regfile -format Literal -radix hexadecimal /tb_top/cpu/dispatch/regfile/cdb_wdata
add wave -noupdate -group regfile -format Literal -radix binary /tb_top/cpu/dispatch/regfile/rst_wen_onehot
add wave -noupdate -group regfile -format Literal -radix unsigned /tb_top/cpu/dispatch/regfile/dispatch_rs_addr
add wave -noupdate -group regfile -format Literal -radix unsigned /tb_top/cpu/dispatch/regfile/dispatch_rt_addr
add wave -noupdate -group regfile -format Literal -radix unsigned /tb_top/cpu/dispatch/regfile/debug_addr
add wave -noupdate -group regfile -format Literal -radix hexadecimal /tb_top/cpu/dispatch/regfile/dispatch_rs_data
add wave -noupdate -group regfile -format Literal -radix hexadecimal /tb_top/cpu/dispatch/regfile/dispatch_rt_data
add wave -noupdate -group regfile -format Literal -radix hexadecimal /tb_top/cpu/dispatch/regfile/debug_data
add wave -noupdate -expand -group tagfifo -format Literal -radix hexadecimal /tb_top/cpu/cdb_dispatch_data
add wave -noupdate -expand -group tagfifo -format Logic /tb_top/cpu/dispatch/tagfifo/dispatch_ren
add wave -noupdate -expand -group tagfifo -format Logic /tb_top/cpu/dispatch/tagfifo/dispatch_full
add wave -noupdate -expand -group tagfifo -format Literal /tb_top/cpu/dispatch/tagfifo/dispatch_tag
add wave -noupdate -expand -group tagfifo -format Logic /tb_top/cpu/dispatch/tagfifo/dispatch_empty
add wave -noupdate -expand -group tagfifo -format Literal /tb_top/cpu/dispatch/tagfifo/cdb_tag
add wave -noupdate -expand -group tagfifo -format Logic /tb_top/cpu/dispatch/tagfifo/cdb_valid
add wave -noupdate -expand -group tagfifo -format Literal /tb_top/cpu/dispatch/tagfifo/mem
add wave -noupdate -expand -group tagfifo -format Literal /tb_top/cpu/dispatch/tagfifo/mem_r
add wave -noupdate -expand -group tagfifo -format Literal /tb_top/cpu/dispatch/tagfifo/wptr
add wave -noupdate -expand -group tagfifo -format Literal /tb_top/cpu/dispatch/tagfifo/wptr_r
add wave -noupdate -expand -group tagfifo -format Literal /tb_top/cpu/dispatch/tagfifo/rptr
add wave -noupdate -expand -group tagfifo -format Literal /tb_top/cpu/dispatch/tagfifo/rptr_r
add wave -noupdate -expand -group tagfifo -format Logic /tb_top/cpu/dispatch/tagfifo/can_pop
add wave -noupdate -expand -group tagfifo -format Logic /tb_top/cpu/dispatch/tagfifo/can_push
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/cdb_dispatch_tag
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/cdb_dispatch_valid
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/cdb_dispatch_branch
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/cdb_dispatch_taken
add wave -noupdate -divider dispatch_equeue
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch_equeue_imm
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch_equeue_rdtag
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch_equeue_rstag
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch_equeue_rttag
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch_equeue_rsdata
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch_equeue_rtdata
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/dispatch_equeue_rsvalid
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/dispatch_equeue_rtvalid
add wave -noupdate -divider dispatch_equeuels
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/dispatch_equeuels_opcode
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/dispatch_equeuels_en
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/equeuels_dispatch_ready
add wave -noupdate -divider dispatch_equeueint
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch_equeueint_opcode
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/dispatch_equeueint_en
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/equeueint_dispatch_ready
add wave -noupdate -divider dispatch_equeuemult
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/dispatch_equeuemult_en
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/equeuemult_dispatch_ready
add wave -noupdate -divider dispatch_equeuediv
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/dispatch_equeuediv_en
add wave -noupdate -format Logic -radix hexadecimal /tb_top/cpu/equeuediv_dispatch_ready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {130 ns} 0}
configure wave -namecolwidth 197
configure wave -valuecolwidth 82
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {105 ns}
