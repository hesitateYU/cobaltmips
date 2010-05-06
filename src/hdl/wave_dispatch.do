onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/clk
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/reset
add wave -noupdate -divider {internal flags}
add wave -noupdate -color Magenta -format Literal -radix hexadecimal /tb_top/cpu/dispatch/inst_opcode
add wave -noupdate -color Magenta -format Literal -radix hexadecimal /tb_top/cpu/dispatch/inst_func
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_rsaddr
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_rtaddr
add wave -noupdate -color Brown -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_rdaddr
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_shamt
add wave -noupdate -color Gold -format Literal -radix unsigned /tb_top/cpu/dispatch/inst_addr
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch/inst_addr_branch
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch/inst_addr_branch_r
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch/inst_addr_jump
add wave -noupdate -color Gold -format Literal -radix hexadecimal /tb_top/cpu/dispatch/inst_imm
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch/inst_imm_signext
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch/inst_imm_zeroext
add wave -noupdate -format Logic /tb_top/cpu/dispatch/do_req_tag
add wave -noupdate -format Logic /tb_top/cpu/dispatch/do_req_equeue
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/is_branch
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/is_jump
add wave -noupdate -format Logic /tb_top/cpu/dispatch/next_state
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/state_r
add wave -noupdate -format Logic /tb_top/cpu/dispatch/can_dispatch
add wave -noupdate -format Literal /tb_top/cpu/dispatch/curr_equeueidx
add wave -noupdate -format Literal /tb_top/cpu/dispatch/equeue_ready
add wave -noupdate -format Literal /tb_top/cpu/dispatch/equeue_en
add wave -noupdate -divider {ifq interface}
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/ifq_ren
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/ifq_empty
add wave -noupdate -color Red -format Literal -radix hexadecimal /tb_top/cpu/dispatch/ifq_inst
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/ifq_pcout_plus4
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/ifq_branch_addr
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/ifq_branch_valid
add wave -noupdate -format Logic /tb_top/cpu/ifq/do_bypass_mem
add wave -noupdate -divider cdb
add wave -noupdate -color {Medium Orchid} -format Logic -radix unsigned /tb_top/cpu/cdb_valid
add wave -noupdate -color {Medium Orchid} -format Literal -radix hexadecimal /tb_top/cpu/cdb_data
add wave -noupdate -color Brown -format Literal -radix unsigned /tb_top/cpu/cdb_tag
add wave -noupdate -color {Medium Orchid} -format Logic -radix unsigned /tb_top/cpu/cdb_branch
add wave -noupdate -color {Medium Orchid} -format Logic -radix unsigned /tb_top/cpu/cdb_branch_taken
add wave -noupdate -divider tagfifo
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/tagfifo/dispatch_ren
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/tagfifo/dispatch_empty
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/tagfifo/dispatch_full
add wave -noupdate -color Brown -format Literal -radix unsigned /tb_top/cpu/dispatch/tagfifo/dispatch_tag
add wave -noupdate -format Logic /tb_top/cpu/dispatch/tagfifo/is_pop
add wave -noupdate -format Logic /tb_top/cpu/dispatch/tagfifo/is_push
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/tagfifo/mem_r
add wave -noupdate -divider rst
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/rst/dispatch_valid
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/rst/dispatch_tag
add wave -noupdate -color Brown -format Literal -radix unsigned /tb_top/cpu/dispatch/rst/dispatch_addr
add wave -noupdate -color Orange -format Logic -radix unsigned /tb_top/cpu/dispatch/rst/dispatch_rsvalid
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/dispatch/rst/dispatch_rstag
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/dispatch/rst/dispatch_rsaddr
add wave -noupdate -color Cyan -format Logic -radix unsigned /tb_top/cpu/dispatch/rst/dispatch_rtvalid
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/dispatch/rst/dispatch_rttag
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/dispatch/rst/dispatch_rtaddr
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/rst/cdb_tag_addr
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/dispatch/rst/cdb_tag_found
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/rst/mem_r
add wave -noupdate -divider regfile
add wave -noupdate -format Literal -radix binary /tb_top/cpu/dispatch/regfile/rst_wen_onehot
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/dispatch/regfile/dispatch_rsaddr
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/dispatch/regfile/dispatch_rsdata
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/dispatch/regfile/dispatch_rtaddr
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/dispatch/regfile/dispatch_rtdata
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/dispatch/rst/regfile_wen_onehot
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/regfile/mem_r
add wave -noupdate -divider {equeue interface}
add wave -noupdate -color Orange -format Logic -radix unsigned /tb_top/cpu/dispatch/equeue_rsvalid
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/dispatch/equeue_rsdata
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/dispatch/equeue_rstag
add wave -noupdate -color Cyan -format Logic -radix unsigned /tb_top/cpu/dispatch/equeue_rtvalid
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/dispatch/equeue_rtdata
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/dispatch/equeue_rttag
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/equeue_rdtag
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/equeue_imm
add wave -noupdate -divider issue
add wave -noupdate -format Logic /tb_top/cpu/issue/can_issue_div
add wave -noupdate -format Logic /tb_top/cpu/issue/can_issue_int
add wave -noupdate -format Logic /tb_top/cpu/issue/can_issue_ls
add wave -noupdate -format Logic /tb_top/cpu/issue/can_issue_mult
add wave -noupdate -format Logic /tb_top/cpu/issue/int_before_ls_r
add wave -noupdate -format Logic /tb_top/cpu/issue/issuemult_ready
add wave -noupdate -format Literal -radix binary /tb_top/cpu/issue/cdb_slot_r
add wave -noupdate -format Literal -radix binary /tb_top/cpu/issue/cdb_mux_sel
add wave -noupdate -format Literal -radix binary /tb_top/cpu/issue/mult_cdb_ctrl_r
add wave -noupdate -format Literal -radix binary /tb_top/cpu/issue/div_cdb_ctrl_r
add wave -noupdate -format Logic /tb_top/cpu/issue/div_exec_ready
add wave -noupdate -color {Dark Orchid} -format Literal -radix unsigned /tb_top/cpu/issue/cdb_data_oreg_r
add wave -noupdate -divider {equeueint interface}
add wave -noupdate -color {Medium Slate Blue} -format Logic -radix unsigned /tb_top/cpu/dispatch/equeueint_ready
add wave -noupdate -color Coral -format Logic -radix unsigned /tb_top/cpu/dispatch/equeueint_en
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/dispatch/equeueint_opcode
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/equeueint/dispatch_ready
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/equeueint/issueint_ready
add wave -noupdate -color Magenta -format Literal -radix hexadecimal /tb_top/cpu/equeueint/issueint_opcode
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/equeueint/issueint_rsdata
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/equeueint/issueint_rtdata
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/equeueint/issueint_rdtag
add wave -noupdate -color Magenta -format Literal -radix unsigned /tb_top/cpu/equeueint/inst_opcode_r
add wave -noupdate -color Brown -format Literal -radix unsigned /tb_top/cpu/equeueint/inst_rdtag_r
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/equeueint/inst_rstag_r
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/equeueint/inst_rsdata_r
add wave -noupdate -color Orange -format Literal -radix unsigned /tb_top/cpu/equeueint/inst_rsvalid_r
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/equeueint/inst_rttag_r
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/equeueint/inst_rtdata_r
add wave -noupdate -color Cyan -format Literal -radix unsigned /tb_top/cpu/equeueint/inst_rtvalid_r
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/equeueint/inst_valid_r
add wave -noupdate -divider {equeuels interface}
add wave -noupdate -color {Medium Slate Blue} -format Logic -radix unsigned /tb_top/cpu/dispatch/equeuels_ready
add wave -noupdate -color Coral -format Logic -radix unsigned /tb_top/cpu/dispatch/equeuels_en
add wave -noupdate -color Magenta -format Logic -radix unsigned /tb_top/cpu/dispatch/equeuels_opcode
add wave -noupdate -format Literal -radix unsigned -expand /tb_top/cpu/equeuels/inst_addr_r
add wave -noupdate -format Literal -expand /tb_top/cpu/equeuels/inst_valid_r
add wave -noupdate -format Literal -expand /tb_top/cpu/equeuels/do_shift
add wave -noupdate -format Literal -expand /tb_top/cpu/equeuels/inst_valid
add wave -noupdate -format Literal -radix unsigned -expand /tb_top/cpu/equeuels/inst_ready
add wave -noupdate -format Literal -expand /tb_top/cpu/equeuels/inst_selected
add wave -noupdate -format Logic /tb_top/cpu/equeuels/issuels_done
add wave -noupdate -format Logic /tb_top/cpu/equeuels/issuels_ready
add wave -noupdate -format Literal /tb_top/cpu/equeuels/do_rs_update
add wave -noupdate -format Literal /tb_top/cpu/equeuels/do_rt_update
add wave -noupdate -format Literal /tb_top/cpu/equeuels/inst_rtvalid_r
add wave -noupdate -format Literal /tb_top/cpu/equeuels/inst_rsvalid_r
add wave -noupdate -format Logic /tb_top/cpu/issue/dcache/wen
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/dcache/addr
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/dcache/tag_in
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/dcache/tag_out
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/dcache/wdata
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/dcache/rdata
add wave -noupdate -divider {equeuemult interface}
add wave -noupdate -color {Medium Slate Blue} -format Logic -radix unsigned /tb_top/cpu/dispatch/equeuemult_ready
add wave -noupdate -color Coral -format Logic -radix unsigned /tb_top/cpu/dispatch/equeuemult_en
add wave -noupdate -format Literal /tb_top/cpu/equeuemult/inst_ready
add wave -noupdate -format Literal /tb_top/cpu/equeuemult/inst_valid_r
add wave -noupdate -format Literal /tb_top/cpu/equeuemult/inst_rsvalid_r
add wave -noupdate -format Literal /tb_top/cpu/equeuemult/inst_rtvalid_r
add wave -noupdate -divider {equeuediv interface}
add wave -noupdate -color {Medium Slate Blue} -format Logic -radix unsigned /tb_top/cpu/dispatch/equeuediv_ready
add wave -noupdate -color Coral -format Logic -radix unsigned /tb_top/cpu/dispatch/equeuediv_en
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/equeuediv/inst_ready
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/equeuediv/inst_valid_r
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/divider_wrapper/divider/issueque_div_tag
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/divider_wrapper/divider/issueque_div_a
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/divider_wrapper/divider/issueque_div_b
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/issue/divider_wrapper/divider/issue_div
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/divider_wrapper/divider/tag_width
add wave -noupdate -format Literal -radix unsigned /tb_top/cpu/issue/divider_wrapper/divider/div_tag_out
add wave -noupdate -format Logic -radix unsigned /tb_top/cpu/issue/divider_wrapper/divider/div_rfd
add wave -noupdate -format Literal -radix hexadecimal /tb_top/cpu/issue/divider_wrapper/divider/div_res
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {99925 ps} 0}
configure wave -namecolwidth 178
configure wave -valuecolwidth 104
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
WaveRestoreZoom {34460 ps} {178963 ps}
