
`ifndef DISPATCHER_V
`define DISPATCHER_V

module dispatcher (
   // common signals to all queues
   input     [31:0] dispatch_rs_data,
   input            dispatch_rs_data_valid,
   input     [ 5:0] dispatch_rs_tag,
   input     [31:0] dispatch_rt_data,
   input            dispatch_rt_data_valid,
   input     [ 5:0] dispatch_rt_tag,
   input     [ 5:0] dispatch_rd_tag,
   // integer queue specific signals
   input            dispatch_en_int,
   output reg       issueque_integer_full,
   input     [ 2:0] dispatch_opcode_int,
   // load/store queue specific signals
   input            dispatch_en_ld_st,
   output reg       issueque_full_ld_st,
   input            dispatch_opcode_ld_st,
   input     [15:0] dispatch_imm_ld_st,
   input     [ 5:0] token_ld_st,
   // multiplier queue specific signals
   input            dispatch_en_mul,
   output reg       issueque_full_mul,
   // division queue specific signals
   input            dispatch_en_div,
   output reg       issueque_full_div
);

endmodule

`endif

