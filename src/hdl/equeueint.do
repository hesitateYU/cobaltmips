onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider queuue
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/equeueint/clk
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/equeueint/reset
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/dispatch_opcode
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/dispatch_rdtag
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/dispatch_rstag
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/dispatch_rttag
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/dispatch_rsdata
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/dispatch_rtdata
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/equeueint/dispatch_rsvalid
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/equeueint/dispatch_rtvalid
add wave -noupdate -color Cyan -format Logic -radix hexadecimal /tb_equeueint/equeueint/dispatch_en
add wave -noupdate -color Magenta -format Logic /tb_equeueint/equeueint/dispatch_ready
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/cdb_tag
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/cdb_data
add wave -noupdate -format Logic -radix hexadecimal /tb_equeueint/equeueint/cdb_valid
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/issueint_opcode
add wave -noupdate -color {Orange Red} -format Literal -radix hexadecimal /tb_equeueint/equeueint/issueint_rdtag
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/issueint_rsdata
add wave -noupdate -format Literal -radix hexadecimal /tb_equeueint/equeueint/issueint_rtdata
add wave -noupdate -color Cyan -format Logic -radix hexadecimal /tb_equeueint/equeueint/issueint_done
add wave -noupdate -color Magenta -format Logic /tb_equeueint/equeueint/issueint_ready
add wave -noupdate -divider queuue
add wave -noupdate -expand -group selected -color Pink -format Literal -radix hexadecimal {/tb_equeueint/equeueint/inst_rdtag_r[4]}
add wave -noupdate -expand -group selected -color #ffff45450000 -format Literal -radix hexadecimal {/tb_equeueint/equeueint/inst_rdtag_r[3]}
add wave -noupdate -expand -group selected -color #ffffa5a50000 -format Logic {/tb_equeueint/equeueint/inst_selected[3]}
add wave -noupdate -expand -group selected -color #ffff45450000 -format Literal -radix hexadecimal {/tb_equeueint/equeueint/inst_rdtag_r[2]}
add wave -noupdate -expand -group selected -color #ffffa5a50000 -format Logic {/tb_equeueint/equeueint/inst_selected[2]}
add wave -noupdate -expand -group selected -color #ffff45450000 -format Literal -radix hexadecimal {/tb_equeueint/equeueint/inst_rdtag_r[1]}
add wave -noupdate -expand -group selected -color #ffffa5a50000 -format Logic {/tb_equeueint/equeueint/inst_selected[1]}
add wave -noupdate -expand -group selected -color #ffff45450000 -format Literal -radix hexadecimal {/tb_equeueint/equeueint/inst_rdtag_r[0]}
add wave -noupdate -expand -group selected -color #ffffa5a50000 -format Logic {/tb_equeueint/equeueint/inst_selected[0]}
add wave -noupdate -group inst -color Orange -format Literal /tb_equeueint/equeueint/inst_selected
add wave -noupdate -group inst -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_opcode
add wave -noupdate -group inst -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_opcode_r
add wave -noupdate -group inst -color {Orange Red} -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_rdtag_r
add wave -noupdate -group inst -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_rstag_r
add wave -noupdate -group inst -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_rttag_r
add wave -noupdate -group inst -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_rsdata_r
add wave -noupdate -group inst -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_rtdata_r
add wave -noupdate -group inst -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_rsvalid_r
add wave -noupdate -group inst -format Literal -radix hexadecimal /tb_equeueint/equeueint/inst_rtvalid_r
add wave -noupdate -format Literal -expand /tb_equeueint/equeueint/inst_valid
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_equeueint/equeueint/inst_valid_r
add wave -noupdate -format Literal /tb_equeueint/equeueint/inst_ready
add wave -noupdate -format Literal -expand /tb_equeueint/equeueint/do_shift
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {229 ns} 0}
configure wave -namecolwidth 204
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {396 ns}
