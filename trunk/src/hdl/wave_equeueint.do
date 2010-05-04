onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_equeueint/clk
add wave -noupdate -format Logic /tb_equeueint/reset
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeueint_opcode
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rdtag
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rstag
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rttag
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/dispatch_equeue_rtdata
add wave -noupdate -format Logic -radix unsigned /tb_equeueint/dispatch_equeue_rsvalid
add wave -noupdate -format Logic -radix unsigned /tb_equeueint/dispatch_equeue_rtvalid
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint_issueint_opcode
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint_issueint_rdtag
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint_issueint_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint_issueint_rtdata
add wave -noupdate -color Magenta -format Logic -radix unsigned /tb_equeueint/dispatch_equeueint_en
add wave -noupdate -color Magenta -format Logic -radix unsigned /tb_equeueint/equeueint_dispatch_ready
add wave -noupdate -color Goldenrod -format Logic -radix unsigned /tb_equeueint/equeueint_issueint_ready
add wave -noupdate -color Goldenrod -format Logic -radix unsigned /tb_equeueint/issueint_equeueint_done
add wave -noupdate -divider equeueint
add wave -noupdate -color Red -format Literal -radix unsigned /tb_equeueint/cdb_equeueint_data
add wave -noupdate -color Red -format Literal -radix unsigned /tb_equeueint/cdb_equeueint_tag
add wave -noupdate -color Red -format Logic -radix unsigned /tb_equeueint/cdb_equeueint_valid
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_selected
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_ready
add wave -noupdate -color {Medium Slate Blue} -format Literal -expand /tb_equeueint/equeueint/do_shift
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_valid
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_valid_r
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_opcode
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_opcode_r
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rdtag
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rdtag_r
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/do_rs_update
add wave -noupdate -format Literal /tb_equeueint/equeueint/do_rt_update
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rstag
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rstag_r
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rsdata
add wave -noupdate -color {Orange Red} -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rsdata_r
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rtdata
add wave -noupdate -format Literal -radix unsigned -expand /tb_equeueint/equeueint/inst_rtdata_r
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rttag
add wave -noupdate -format Literal -radix unsigned -expand /tb_equeueint/equeueint/inst_rttag_r
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rtvalid
add wave -noupdate -format Literal -radix unsigned -expand /tb_equeueint/equeueint/inst_rtvalid_r
add wave -noupdate -format Literal -radix unsigned /tb_equeueint/equeueint/inst_rsvalid
add wave -noupdate -format Literal -radix unsigned -expand /tb_equeueint/equeueint/inst_rsvalid_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {951923 ps} 0}
configure wave -namecolwidth 231
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
WaveRestoreZoom {1050625 ps} {1313125 ps}
