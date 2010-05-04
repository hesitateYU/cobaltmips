
`ifndef RST_V
`define RST_V

`timescale 1ns/1ps

module rst #(
   parameter integer W_ADDR = 5,
   parameter integer W_TAG  = 6
)(
   input                   clk,
   input                   reset,

   // Read ports for register RS and RT.
   input      [W_ADDR-1:0] dispatch_rsaddr,
   input      [W_ADDR-1:0] dispatch_rtaddr,
   output reg [ W_TAG-1:0] dispatch_rstag,
   output reg [ W_TAG-1:0] dispatch_rttag,
   output reg              dispatch_rsvalid,
   output reg              dispatch_rtvalid,

   // Write port 0 driven by dispatch unit.
   input      [W_ADDR-1:0] dispatch_addr,
   input      [ W_TAG-1:0] dispatch_tag,
   input                   dispatch_valid,

   // Write port 1 (clear port) driven by CDB.
   input      [ W_TAG-1:0] cdb_tag,
   input                   cdb_valid,

   // Write enable for Register File which value has been published by the CDB.
   output reg [(2**W_ADDR)-1:0] regfile_wen_onehot
);

   // Data stored includes TAG plus a valid bit.
   localparam integer W_DATA  = W_TAG + 1;
   localparam integer N_ENTRY = 2 ** W_ADDR;

   reg [W_DATA-1:0] mem   [N_ENTRY-1:0];
   reg [W_DATA-1:0] mem_r [N_ENTRY-1:0];

   reg [W_ADDR-1:0] cdb_tag_addr;
   reg              cdb_tag_found;

   always @(*) begin : rst_read_proc
      { dispatch_rsvalid, dispatch_rstag } = mem_r[dispatch_rsaddr];
      { dispatch_rtvalid, dispatch_rttag } = mem_r[dispatch_rtaddr];
   end

   always @(*) begin : rst_write_proc
      integer i;
      reg is_same_addr;

      for (int i = 0; i < N_ENTRY; i = i + 1) mem[i] = mem_r[i];

      is_same_addr = dispatch_addr == cdb_tag_addr;

      // Writing tags (dispatch unit) has priority over clearing tags (CDB).
      if (dispatch_valid)
         mem[dispatch_addr] = { dispatch_valid, dispatch_tag };

      // When clearing a tag it is enough to clear the tag_valid bit. For this
      // implementation, we are setting the entire value to zeros.
      if (cdb_valid && cdb_tag_found && !(is_same_addr && dispatch_valid))
         mem[cdb_tag_addr] = { ~cdb_valid, { W_TAG {1'b0}} };
   end

   // CAM: Content Addressable Memory. Lookup memory contents if tag published
   // by CDB is present, then report its address, if a tag is found but is not
   // valid, then it will be reported as tag NOT found.
   integer n_matches;
   always @(*) begin : rst_lookup_proc
      integer i, n_matches;
      reg [W_TAG-1:0] tag;
      reg             tag_valid;
      // Set defaults to avoid latches.
      cdb_tag_found = 'h0;
      cdb_tag_addr  = 'h0;
      n_matches     = 'h0;
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         {tag_valid, tag} = mem_r[i];
         // If a tag is found but it is invalid then report it as NOT found.
         if (cdb_tag == tag & tag_valid) begin
            cdb_tag_found = 1'b1;
            cdb_tag_addr  = i;
            n_matches     = n_matches + 1;
         end
      end

   end

   always @(posedge clk) begin : rst_checkers_proc
      if (n_matches > 1)
         $display("@%p [RST] FATAL: multiple matching tags found [%p] %p", $time, n_matches, cdb_tag);

      if (cdb_valid && ~cdb_tag_found)
         $display("@%p [RST] FATAL: published tag %p not found", $time, cdb_tag);
   end

   // When CDB publishes a data, the REGFILE must update its contents. RST
   // sends a one-hot encoded write enable signal.
   always @(*) begin : rst_onehot_proc
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         regfile_wen_onehot[i] = (cdb_tag_addr == i) && cdb_tag_found && cdb_valid;
      end
   end

   always @(posedge clk) begin : rst_mem_reg
      integer i;
      for (i = 0; i < N_ENTRY; i = i + 1) begin
         mem_r[i] <= (reset) ? 'h0 : mem[i];
      end
   end

endmodule

`endif

