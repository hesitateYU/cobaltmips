onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/clk
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/reset
add wave -noupdate -divider dispatch_equeueint
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/dispatch_equeueint_opcode
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/dispatch_equeueint_en
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/dispatch_equeue_rdtag
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/dispatch_equeue_rstag
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/dispatch_equeue_rttag
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/dispatch_equeue_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/dispatch_equeue_rtdata
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/dispatch_equeue_rsvalid
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/dispatch_equeue_rtvalid
add wave -noupdate -divider equeueint
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/dispatch_opcode
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/dispatch_rdtag
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/dispatch_rstag
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/dispatch_rttag
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/dispatch_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/dispatch_rtdata
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/equeueint/dispatch_rsvalid
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/equeueint/dispatch_rtvalid
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/equeueint/dispatch_ready
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/equeueint/dispatch_en
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/cdb_data
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/cdb_tag
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/equeueint/cdb_valid
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/issueint_opcode
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/issueint_rdtag
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/issueint_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/equeueint/issueint_rtdata
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/equeueint/issueint_ready
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/equeueint/issueint_done
add wave -noupdate -format Literal -radix binary -expand /tb_equeue_issue/issue/cdb_slot_r
add wave -noupdate -format Literal /tb_equeue_issue/issue/mult_cdb_ctrl_r
add wave -noupdate -divider issue
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/issue/issueint_opcode
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/issue/issueint_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/issue/issueint_rtdata
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/issue/issueint_rdtag
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/issue/issueint_ready
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/issue/issue_int
add wave -noupdate -format Literal -radix unsigned /tb_equeue_issue/issue/issueint_out
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/issue/issueint_alubranch
add wave -noupdate -format Logic -radix unsigned /tb_equeue_issue/issue/issueint_alubranch_taken
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10327 ps} 0}
configure wave -namecolwidth 188
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
WaveRestoreZoom {0 ps} {120320 ps}
