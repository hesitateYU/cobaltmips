onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/clk
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/reset
add wave -noupdate -divider {Write port (dispatch)}
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/dispatch_tag
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/dispatch_valid
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/dispatch_addr
add wave -noupdate -color Magenta -format Logic -radix unsigned /tb_rst/rst/dispatch_wen
add wave -noupdate -divider {Clear port (CDB)}
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/cdb_tag
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/cdb_valid
add wave -noupdate -color Magenta -format Literal -radix unsigned /tb_rst/rst/regfile_wen_onehot
add wave -noupdate -divider {Read port 0 (RS)}
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/dispatch_rstag
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/dispatch_rsvalid
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/dispatch_rsaddr
add wave -noupdate -divider {Read port 1 (RT)}
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/dispatch_rttag
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/dispatch_rtvalid
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/dispatch_rtaddr
add wave -noupdate -divider {Internal signals}
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/comp_cdb_dispatch_tag
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/wport0_data
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/wport1_data
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/rport0_data
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/rport1_data
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/wport0_addr
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/wport1_addr
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/rport0_addr
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/rport1_addr
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/wport0_wen
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/wport1_wen
add wave -noupdate -format Logic -radix unsigned /tb_rst/rst/lookup_found
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/lookup_addr
add wave -noupdate -format Literal -radix unsigned /tb_rst/rst/rst_mem/mem_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {409 ns} 0}
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ns} {528 ns}
