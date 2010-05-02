onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/clk
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/reset
add wave -noupdate -divider {Write port (dispatch)}
add wave -noupdate -color {Violet Red} -format Literal -radix unsigned /tb_rst/rst/dispatch_tag
add wave -noupdate -color {Violet Red} -format Logic -radix unsigned /tb_rst/rst/dispatch_valid
add wave -noupdate -color {Violet Red} -format Literal -radix unsigned /tb_rst/rst/dispatch_addr
add wave -noupdate -divider {Clear port (CDB)}
add wave -noupdate -color {Orange Red} -format Literal -radix unsigned /tb_rst/rst/cdb_tag
add wave -noupdate -color {Orange Red} -format Logic -radix unsigned /tb_rst/rst/cdb_valid
add wave -noupdate -color Red -format Logic -radix unsigned /tb_rst/rst/cdb_tag_found
add wave -noupdate -color Red -format Literal -radix unsigned /tb_rst/rst/cdb_tag_addr
add wave -noupdate -divider {Read port 0 (RS)}
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_rst/rst/dispatch_rsaddr
add wave -noupdate -color {Cornflower Blue} -format Literal -radix unsigned /tb_rst/rst/dispatch_rstag
add wave -noupdate -color {Cornflower Blue} -format Logic -radix unsigned /tb_rst/rst/dispatch_rsvalid
add wave -noupdate -divider {Read port 1 (RT)}
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_rst/rst/dispatch_rtaddr
add wave -noupdate -color {Cornflower Blue} -format Literal -radix unsigned /tb_rst/rst/dispatch_rttag
add wave -noupdate -color {Cornflower Blue} -format Logic -radix unsigned /tb_rst/rst/dispatch_rtvalid
add wave -noupdate -divider {Regfile Write Enable}
add wave -noupdate -color Magenta -format Literal -radix unsigned /tb_rst/rst/regfile_wen_onehot
add wave -noupdate -divider {Internal signals}
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/mem
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/mem_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1084401 ps} 0}
configure wave -namecolwidth 207
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
WaveRestoreZoom {1053410 ps} {1283590 ps}
