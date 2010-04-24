onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/clk
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/reset
add wave -noupdate -color Orange -format Logic -radix hexadecimal /tb_equeueint/dispatch_equeueint_en
add wave -noupdate -color Magenta -format Logic -radix hexadecimal /tb_equeueint/equeueint_dispatch_ready
add wave -noupdate -format Literal -radix binary /tb_equeueint/dispatch_equeueint_opcode
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rdtag
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rstag
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rttag
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rtdata
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/dispatch_equeue_rsvalid
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/dispatch_equeue_rtvalid
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/cdb_equeueint_data
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/cdb_equeueint_tag
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/cdb_equeueint_valid
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint_issueint_opcode
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint_issueint_rdtag
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint_issueint_rsdata
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint_issueint_rtdata
add wave -noupdate -color {Orange Red} -format Logic -radix hexadecimal /tb_equeueint/equeueint_issueint_ready
add wave -noupdate -color {Orange Red} -format Logic -radix hexadecimal /tb_equeueint/issueint_equeueint_done
add wave -noupdate -divider {Internal signals}
add wave -noupdate -color Yellow -format Literal -radix hexadecimal -expand /tb_equeueint/equeueint/inst_ready
add wave -noupdate -format Literal -expand /tb_equeueint/equeueint/inst_valid
add wave -noupdate -format Literal -expand /tb_equeueint/equeueint/inst_valid_r
add wave -noupdate -color {Steel Blue} -format Literal -expand /tb_equeueint/equeueint/do_shift
add wave -noupdate -format Literal -expand /tb_equeueint/equeueint/inst_selected
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_rsvalid
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_rsvalid_r
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rtdata
add wave -noupdate -format Literal -radix unsigned -expand /tb_equeueint/equeueint/inst_rtdata_r
add wave -noupdate -format Literal /tb_equeueint/equeueint/do_rs_update
add wave -noupdate -format Literal /tb_equeueint/equeueint/do_rt_update
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {480 ps} 0}
configure wave -namecolwidth 202
configure wave -valuecolwidth 100
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
WaveRestoreZoom {342 ps} {570 ps}
