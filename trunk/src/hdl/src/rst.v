`ifndef RST_V
`define RST_V

module rst (
   input             clk,
   input             reset,

   // Write port 0.
   input      [ 5:0] dispatch_tag,
   input             dispatch_valid,
   input      [ 4:0] dispatch_addr,
   input             dispatch_wen,

   // Write port 1 (clear port), signaled by CDB.
   input      [ 5:0] cdb_tag,
   input             cdb_valid,

   // Write enable for Register File which value has
   // been published by the CDB.
   output reg [31:0] regfile_wen_onehot,

   // Read port RS.
   output reg [ 5:0] dispatch_rstag,
   output reg        dispatch_rsvalid,
   input      [ 4:0] dispatch_rsaddr,

   // Read port RT.
   output reg [ 5:0] dispatch_rttag,
   output reg        dispatch_rtvalid,
   input      [ 4:0] dispatch_rtaddr
);

   // Tag comparator: CDB published tag VS tag ready to write from dispatch
   // unit.
   reg [31:0] comp_cdb_dispatch_tag;
   always @(*) begin : rst_comp_proc
      integer i;
      for (i = 0; i < 31; i = i + 1) begin
         comp_cdb_dispatch_tag = (cdb_tag == dispatch_tag);
      end
   end

   // Signal interface with internal memory register file (which also acts
   // as a look up table).
   reg  [6:0] wport0_data, wport1_data;
   wire [6:0] rport0_data, rport1_data;
   reg  [4:0] wport0_addr, wport1_addr, rport0_addr, rport1_addr;
   reg        wport0_wen,  wport1_wen;
   wire       lookup_found;
   wire [4:0] lookup_addr;
   always @(*) begin
      // Read port for both RS and RT register fields.
      rport0_addr      = dispatch_rsaddr;
      dispatch_rstag   = rport1_data[5:0];
      dispatch_rsvalid = rport1_data[6];
      rport1_addr      = dispatch_rtaddr;
      dispatch_rttag   = rport0_data[5:0];
      dispatch_rtvalid = rport0_data[6];

      // Write data from dispatch unit only if the CDB published tag and
      // tag for dispatch are different and wen is set.
      wport0_data = {dispatch_valid, dispatch_tag};
      wport0_addr = dispatch_addr;
      wport0_wen  = dispatch_wen && comp_cdb_dispatch_tag[wport0_addr] == 0;

      // Clear data specified by CDB is valid (cdb_valid) and if,
      // after looking up the tag published by the CDB, it is found
      // and is valid (inside the rst).
      wport1_data = 7'h0;
      wport1_addr = lookup_addr;
      wport1_wen  = lookup_found && cdb_valid;
   end

   // One-hot encoder for register file write enable.
   always @(*) begin : rst_onehot_proc
      integer i;
      for (i = 0; i < 31; i = i + 1) begin
         regfile_wen_onehot = (lookup_addr == i) && lookup_found;
      end
   end

   rst_mem rst_mem(
      .clk         (clk         ),
      .reset       (reset       ),

      // 2 read ports: RS and RT register fields.
      .rport0_addr (rport0_addr ),
      .rport0_data (rport0_data ),
      .rport1_addr (rport1_addr ),
      .rport1_data (rport1_data ),

      // 2 write ports: write and clear.
      .wport0_addr (wport0_addr ),
      .wport0_data (wport0_data ),
      .wport0_wen  (wport0_wen  ),
      .wport1_addr (wport1_addr ),
      .wport1_data (wport1_data ),
      .wport1_wen  (wport1_wen  ),

      // Lookup port, set a tag and rst_mem will indicate if it was found and
      // its index. If tag is found but is not valid, then it will be reported
      // as tag not found.
      .lookup_tag  (cdb_tag     ),
      .lookup_found(lookup_found),
      .lookup_addr (lookup_addr )
   );

endmodule

`endif

