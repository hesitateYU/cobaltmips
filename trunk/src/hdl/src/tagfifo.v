
`ifndef TAGFIFO_V
`define TAGFIFO_V

module tagfifo (
   output     [5:0] tagout_tf,
   input            ren_tf,
   output reg       ff_tf,
   output reg       ef_tf,
   input      [5:0] cdb_tag_tf
   //cdb_tag_tf // esta repetida en el diagrama, typo del profe. preguntar
);

   reg [5:0] tag_fifo [0:63];

endmodule

`endif

