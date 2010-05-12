
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

   always @(mem_r[31], mem_r[30], mem_r[29], mem_r[28], mem_r[27], mem_r[26], mem_r[25], mem_r[24], mem_r[23], mem_r[22], mem_r[21], mem_r[20], mem_r[19], mem_r[18], mem_r[17], mem_r[16], mem_r[15], mem_r[14], mem_r[13], mem_r[12], mem_r[11], mem_r[10], mem_r[ 9], mem_r[ 8], mem_r[ 7], mem_r[ 6], mem_r[ 5], mem_r[ 4], mem_r[ 3], mem_r[ 2], mem_r[ 1], mem_r[ 0]) begin : rst_read_proc
      { dispatch_rsvalid, dispatch_rstag } = mem_r[dispatch_rsaddr];
      { dispatch_rtvalid, dispatch_rttag } = mem_r[dispatch_rtaddr];
   end

   always @(mem_r[31], mem_r[30], mem_r[29], mem_r[28], mem_r[27], mem_r[26], mem_r[25], mem_r[24], mem_r[23], mem_r[22], mem_r[21], mem_r[20], mem_r[19], mem_r[18], mem_r[17], mem_r[16], mem_r[15], mem_r[14], mem_r[13], mem_r[12], mem_r[11], mem_r[10], mem_r[ 9], mem_r[ 8], mem_r[ 7], mem_r[ 6], mem_r[ 5], mem_r[ 4], mem_r[ 3], mem_r[ 2], mem_r[ 1], mem_r[ 0]) begin : rst_write_proc
      integer i;
      reg is_same_addr;

      for (i = 0; i < N_ENTRY; i = i + 1) mem[i] = mem_r[i];

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
   always @(mem_r[31], mem_r[30], mem_r[29], mem_r[28], mem_r[27], mem_r[26], mem_r[25], mem_r[24], mem_r[23], mem_r[22], mem_r[21], mem_r[20], mem_r[19], mem_r[18], mem_r[17], mem_r[16], mem_r[15], mem_r[14], mem_r[13], mem_r[12], mem_r[11], mem_r[10], mem_r[ 9], mem_r[ 8], mem_r[ 7], mem_r[ 6], mem_r[ 5], mem_r[ 4], mem_r[ 3], mem_r[ 2], mem_r[ 1], mem_r[ 0]) begin : rst_lookup_proc
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
      //if (n_matches > 1)
      //   $display("@%p [RST] FATAL: multiple matching tags found [%p] %p", $time, n_matches, cdb_tag);

      //if (cdb_valid && ~cdb_tag_found)
      //   $display("@%p [RST] FATAL: published tag %p not found", $time, cdb_tag);
   end

   // When CDB publishes a data, the REGFILE must update its contents. RST
   // sends a one-hot encoded write enable signal.
   always @(*) begin : rst_onehot_proc
      //integer i;
      //for (i = 0; i < N_ENTRY; i = i + 1) begin
      //   regfile_wen_onehot[i] = (cdb_tag_addr == i) && cdb_tag_found && cdb_valid;
      //end
      regfile_wen_onehot[31] = (cdb_tag_addr == 31) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[30] = (cdb_tag_addr == 30) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[29] = (cdb_tag_addr == 29) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[28] = (cdb_tag_addr == 28) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[27] = (cdb_tag_addr == 27) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[26] = (cdb_tag_addr == 26) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[25] = (cdb_tag_addr == 25) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[24] = (cdb_tag_addr == 24) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[23] = (cdb_tag_addr == 23) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[22] = (cdb_tag_addr == 22) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[21] = (cdb_tag_addr == 21) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[20] = (cdb_tag_addr == 20) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[19] = (cdb_tag_addr == 19) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[18] = (cdb_tag_addr == 18) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[17] = (cdb_tag_addr == 17) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[16] = (cdb_tag_addr == 16) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[15] = (cdb_tag_addr == 15) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[14] = (cdb_tag_addr == 14) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[13] = (cdb_tag_addr == 13) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[12] = (cdb_tag_addr == 12) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[11] = (cdb_tag_addr == 11) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[10] = (cdb_tag_addr == 10) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 9] = (cdb_tag_addr ==  9) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 8] = (cdb_tag_addr ==  8) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 7] = (cdb_tag_addr ==  7) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 6] = (cdb_tag_addr ==  6) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 5] = (cdb_tag_addr ==  5) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 4] = (cdb_tag_addr ==  4) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 3] = (cdb_tag_addr ==  3) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 2] = (cdb_tag_addr ==  2) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 1] = (cdb_tag_addr ==  1) && cdb_tag_found && cdb_valid;
      regfile_wen_onehot[ 0] = (cdb_tag_addr ==  0) && cdb_tag_found && cdb_valid;
   end

   always @(posedge clk) begin : rst_mem_reg
      //integer i;
      //for (i = 0; i < N_ENTRY; i = i + 1) begin
      //   mem_r[i] <= (reset) ? 'h0 : mem[i];
      //end
      mem_r[31] <= (reset) ? 0 : mem[31];
      mem_r[30] <= (reset) ? 0 : mem[30];
      mem_r[29] <= (reset) ? 0 : mem[29];
      mem_r[28] <= (reset) ? 0 : mem[28];
      mem_r[27] <= (reset) ? 0 : mem[27];
      mem_r[26] <= (reset) ? 0 : mem[26];
      mem_r[25] <= (reset) ? 0 : mem[25];
      mem_r[24] <= (reset) ? 0 : mem[24];
      mem_r[23] <= (reset) ? 0 : mem[23];
      mem_r[22] <= (reset) ? 0 : mem[22];
      mem_r[21] <= (reset) ? 0 : mem[21];
      mem_r[20] <= (reset) ? 0 : mem[20];
      mem_r[19] <= (reset) ? 0 : mem[19];
      mem_r[18] <= (reset) ? 0 : mem[18];
      mem_r[17] <= (reset) ? 0 : mem[17];
      mem_r[16] <= (reset) ? 0 : mem[16];
      mem_r[15] <= (reset) ? 0 : mem[15];
      mem_r[14] <= (reset) ? 0 : mem[14];
      mem_r[13] <= (reset) ? 0 : mem[13];
      mem_r[12] <= (reset) ? 0 : mem[12];
      mem_r[11] <= (reset) ? 0 : mem[11];
      mem_r[10] <= (reset) ? 0 : mem[10];
      mem_r[ 9] <= (reset) ? 0 : mem[ 9];
      mem_r[ 8] <= (reset) ? 0 : mem[ 8];
      mem_r[ 7] <= (reset) ? 0 : mem[ 7];
      mem_r[ 6] <= (reset) ? 0 : mem[ 6];
      mem_r[ 5] <= (reset) ? 0 : mem[ 5];
      mem_r[ 4] <= (reset) ? 0 : mem[ 4];
      mem_r[ 3] <= (reset) ? 0 : mem[ 3];
      mem_r[ 2] <= (reset) ? 0 : mem[ 2];
      mem_r[ 1] <= (reset) ? 0 : mem[ 1];
      mem_r[ 0] <= (reset) ? 0 : mem[ 0];
 
   end

endmodule

`endif

