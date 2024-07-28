`timescale 1 ps/ 1 ps

module acc_chiseltest#(
   parameter OFFSET_SZ      = 12,
   parameter XY_SZ          =  4
)(
  //---Clock and Reset---//
   input  logic       clk_ctrl,
   input  logic       clk_line,
   input  logic       clk_ctrl_rst_low,
   input  logic       clk_line_rst_low,
   input  logic       clk_line_rst_high,
   input  logic [(XY_SZ*2)-1:0] HsrcId,     //- Tile identification
   //---NOC interface---//
   //- Input Interface
	input  logic        stream_in_TVALID,
	input  logic [31:0] stream_in_TDATA,
	input  logic [ 3:0] stream_in_TKEEP,
	input  logic        stream_in_TLAST,
	output logic        stream_in_TREADY,
   //- Output Interface
	input  logic        stream_out_TREADY,
	output logic        stream_out_TVALID,
	output logic [31:0] stream_out_TDATA,
	output logic [ 3:0] stream_out_TKEEP,
	output logic        stream_out_TLAST,
  //- AXI memory interface
	input  logic        mem_valid_axi,
	input  logic [31:0] mem_addr_axi,
	input  logic [31:0] mem_wdata_axi,
	input  logic        mem_wstrb_axi,
	output logic [31:0] mem_rdata_axi
);

logic        stream_in_TVALID_int;
logic [31:0] stream_in_TDATA_int;
logic [ 3:0] stream_in_TKEEP_int; // unused
logic        stream_in_TLAST_int; // unused
logic        stream_in_TREADY_int;

// Buffer NoC data

noc_buffer_in noc_buffer(
   .clk_in            (clk_line),
   .clk_in_rst_high   (clk_line_rst_high),
   .clk_in_rst_low    (clk_line_rst_low),
   .clk_out           (clk_line),
   .clk_out_rst_low   (clk_line_rst_low),
   .stream_in_TVALID  (stream_in_TVALID),
   .stream_in_TDATA   (stream_in_TDATA),
   .stream_in_TKEEP   (stream_in_TKEEP),
   .stream_in_TLAST   (stream_in_TLAST),
   .stream_in_TREADY  (stream_in_TREADY),
   .stream_out_TVALID (stream_in_TVALID_int),
   .stream_out_TDATA  (stream_in_TDATA_int),
   .stream_out_TKEEP  (stream_in_TKEEP_int),
   .stream_out_TLAST  (stream_in_TLAST_int),
   .stream_out_TREADY (stream_in_TREADY_int)
);

   // Decode NoC header

   assign mem_rdata_axi = 'h0;

   logic		stream_in_TREADY_tmp;

   logic	    stream_out_TVALID_tmp;
   logic [31:0]	stream_out_TDATA_tmp;
   logic [3:0]	stream_out_TKEEP_tmp;
   logic		stream_out_TLAST_tmp;
   logic		stream_out_TREADY_tmp;

   ChiselDecoder ChiselDecoder_inst (
						  .clock(clk_line),
						  .reset(~clk_line_rst_low),
						  .io_HsrcId(HsrcId),
						  .io_stream_in_TVALID(stream_in_TVALID_int),
						  .io_stream_in_TDATA(stream_in_TDATA_int),
						  .io_stream_in_TKEEP(stream_in_TKEEP_int),
						  .io_stream_in_TLAST(stream_in_TLAST_int),
						  .io_stream_in_TREADY(stream_in_TREADY_tmp),
						  .io_stream_out_TVALID(stream_out_TVALID_tmp),
						  .io_stream_out_TDATA(stream_out_TDATA_tmp),
						  .io_stream_out_TKEEP(stream_out_TKEEP_tmp),
						  .io_stream_out_TLAST(stream_out_TLAST_tmp),
						  .io_stream_out_TREADY(stream_out_TREADY)
						  );

   assign stream_in_TREADY_int = stream_in_TREADY_tmp;

   assign stream_out_TVALID = stream_out_TVALID_tmp;
   assign stream_out_TDATA  = stream_out_TDATA_tmp;
   assign stream_out_TKEEP  = stream_out_TKEEP_tmp;
   assign stream_out_TLAST  = stream_out_TLAST_tmp;

endmodule
