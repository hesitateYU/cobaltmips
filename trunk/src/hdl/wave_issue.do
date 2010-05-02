onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb_issue/clk
add wave -noupdate -format Logic -radix unsigned /tb_issue/reset
add wave -noupdate -divider CDB
add wave -noupdate -format Literal -radix unsigned /tb_issue/cdb_out
add wave -noupdate -format Literal -radix unsigned /tb_issue/cdb_tagout
add wave -noupdate -format Logic -radix unsigned /tb_issue/cdb_valid
add wave -noupdate -divider issuels
add wave -noupdate -format Logic -radix unsigned /tb_issue/equeuels_issuels_opcode
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeuels_issuels_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeuels_issuels_rtdata
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeuels_issuels_rdtag
add wave -noupdate -format Logic -radix unsigned /tb_issue/equeuels_issuels_ready
add wave -noupdate -format Logic -radix unsigned /tb_issue/issuels_equeuels_done
add wave -noupdate -divider issueint
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeueint_issueint_opcode
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeueint_issueint_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeueint_issueint_rtdata
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeueint_issueint_rdtag
add wave -noupdate -format Logic -radix unsigned /tb_issue/equeueint_issueint_ready
add wave -noupdate -format Logic -radix unsigned /tb_issue/issueint_equeueint_done
add wave -noupdate -divider issuediv
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeuediv_issuediv_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeuediv_issuediv_rtdata
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeuediv_issuediv_rdtag
add wave -noupdate -format Logic -radix unsigned /tb_issue/equeuediv_issuediv_ready
add wave -noupdate -format Logic -radix unsigned /tb_issue/issuediv_equeuediv_done
add wave -noupdate -divider issuemult
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeuemult_issuemult_rsdata
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeuemult_issuemult_rtdata
add wave -noupdate -format Literal -radix unsigned /tb_issue/equeuemult_issuemult_rdtag
add wave -noupdate -format Logic -radix unsigned /tb_issue/equeuemult_issuemult_ready
add wave -noupdate -format Logic -radix unsigned /tb_issue/issuemult_equeuemult_done
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {113225 ps} 0}
configure wave -namecolwidth 281
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
WaveRestoreZoom {13798 ps} {420326 ps}
