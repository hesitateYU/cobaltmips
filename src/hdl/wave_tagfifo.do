onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb_tagfifo/tagfifo/clk
add wave -noupdate -format Logic -radix unsigned /tb_tagfifo/tagfifo/reset
add wave -noupdate -divider tagfifo
add wave -noupdate -color {Orange Red} -format Logic -radix unsigned /tb_tagfifo/tagfifo/dispatch_ren
add wave -noupdate -color Magenta -format Logic -radix unsigned /tb_tagfifo/tagfifo/dispatch_full
add wave -noupdate -color Magenta -format Logic -radix unsigned /tb_tagfifo/tagfifo/dispatch_empty
add wave -noupdate -format Literal -radix unsigned /tb_tagfifo/tagfifo/dispatch_tag
add wave -noupdate -format Literal -radix unsigned /tb_tagfifo/tagfifo/cdb_tag
add wave -noupdate -format Logic -radix unsigned /tb_tagfifo/tagfifo/cdb_valid
add wave -noupdate -divider internal
add wave -noupdate -format Logic /tb_tagfifo/tagfifo/is_pop
add wave -noupdate -format Logic /tb_tagfifo/tagfifo/is_push
add wave -noupdate -format Logic /tb_tagfifo/tagfifo/is_empty
add wave -noupdate -format Logic /tb_tagfifo/tagfifo/is_full
add wave -noupdate -format Literal -radix unsigned /tb_tagfifo/tagfifo/mem
add wave -noupdate -color Violet -format Literal -radix unsigned /tb_tagfifo/tagfifo/mem_r
add wave -noupdate -format Literal -radix unsigned /tb_tagfifo/tagfifo/wptr
add wave -noupdate -format Literal -radix unsigned /tb_tagfifo/tagfifo/wptr_r
add wave -noupdate -format Literal -radix unsigned /tb_tagfifo/tagfifo/rptr
add wave -noupdate -format Literal -radix unsigned -expand /tb_tagfifo/tagfifo/rptr_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1671787 ps} 0}
configure wave -namecolwidth 197
configure wave -valuecolwidth 39
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
WaveRestoreZoom {1554347 ps} {1976747 ps}
