`timescale 1 ps/ 1 ps

module acc_mytest#(
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



`define MYTESTMOD
`define CHISELGEN

`ifdef MYTESTMOD
   logic		stream_in_TREADY_tmp;

   logic	    stream_out_TVALID_tmp;
   logic [31:0]	stream_out_TDATA_tmp;
   logic [3:0]	stream_out_TKEEP_tmp;
   logic		stream_out_TLAST_tmp;
   logic		stream_out_TREADY_tmp;

 `ifdef CHISELGEN

   MyTest MyTest_inst (
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

 `else
   mytest#(
		   .XY_SZ(XY_SZ)
		   ) mytest_inst (
						  .clk_line (clk_line),
						  .clk_line_rst_low(clk_line_rst_low),
						  .HsrcId(HsrcId),
						  .stream_in_TVALID(stream_in_TVALID_int),
						  .stream_in_TDATA(stream_in_TDATA_int),
						  .stream_in_TKEEP(stream_in_TKEEP_int),
						  .stream_in_TLAST(stream_in_TLAST_int),
						  .stream_in_TREADY(stream_in_TREADY_tmp),
						  .stream_out_TVALID(stream_out_TVALID_tmp),
						  .stream_out_TDATA(stream_out_TDATA_tmp),
						  .stream_out_TKEEP(stream_out_TKEEP_tmp),
						  .stream_out_TLAST(stream_out_TLAST_tmp),
						  .stream_out_TREADY(stream_out_TREADY)
						  );
 `endif
   assign stream_in_TREADY_int = stream_in_TREADY_tmp;

   assign stream_out_TVALID = stream_out_TVALID_tmp;
   assign stream_out_TDATA  = stream_out_TDATA_tmp;
   assign stream_out_TKEEP  = stream_out_TKEEP_tmp;
   assign stream_out_TLAST  = stream_out_TLAST_tmp;

`else // !`ifdef MYTESTMOD

   assign stream_out_TKEEP = 4'hF;

/***************************
* Local parameters for FSMs
****************************/

//- State machine state1
localparam [3:0] IDLE       = 4'd0; //
localparam [3:0] WAIT_SEND  = 4'd6; //

//- State machine state3
localparam [2:0] NOC_IDLE      = 3'd0;
localparam [2:0] NOC_DATA      = 3'd1;

//- FSMs
logic [3:0] currentState1; //- NoC input
logic [2:0] currentState3; //- NoC Output
logic [3:0] nextState1;
logic [1:0] nextState3;

logic noc_send;

logic [31:0] noc_header_in;
logic [31:0] next_noc_header_in;
logic [31:0] noc_data_in;
logic [31:0] next_noc_data_in;

logic [31:0] noc_out_header;
logic [31:0] noc_out_payload;

logic      [XY_SZ-1:0] noc_out_x_dest;
logic      [XY_SZ-1:0] noc_out_y_dest;

//always @(posedge clk_line or negedge clk_line_rst_low) begin
always @(posedge clk_line) begin
   if (~clk_line_rst_low) begin
      currentState1 <= IDLE;
      noc_header_in <= 'h0;
      noc_data_in <= 'h0;
   end else begin
      currentState1 <= nextState1;
      noc_header_in <= next_noc_header_in;
      noc_data_in <= next_noc_data_in;
   end
end

always @( * ) begin
   //- State
   nextState1 = currentState1;

  next_noc_header_in = noc_header_in;
  next_noc_data_in   = noc_data_in;

   case (currentState1)
      IDLE: begin                                              // Waiting for an incoming packet
        if (stream_in_TVALID_int) begin
          next_noc_header_in = stream_in_TDATA_int;
          nextState1 = WAIT_SEND;
        end
      end
      WAIT_SEND: begin
        if (stream_in_TVALID_int) next_noc_data_in = stream_in_TDATA_int;
        if (noc_send) begin
          nextState1 = IDLE;
        end
      end
  endcase
end

//assign stream_in_TREADY_int = 1'b1; //currentState1 == IDLE;

//////////////////////////////
// NoC output
//////////////////////////////

//---Outbound Interface with the NoC---//

//always @(posedge clk_line or negedge clk_line_rst_low) begin
always @(posedge clk_line) begin
   if (~clk_line_rst_low) begin
      currentState3 <= NOC_IDLE;
   end else begin
      currentState3 <= nextState3;
   end
end

always @( * ) begin
   //- State
   nextState3 = currentState3;

   //- NOC interface
   stream_out_TDATA  =  32'h0;
   stream_out_TVALID = 1'b0;
   stream_out_TLAST = 1'b0;

   //- Control
   noc_send = 1'b0;

   case (currentState3)
      NOC_IDLE: begin
         if (stream_out_TREADY) begin
           if (currentState1==WAIT_SEND) begin
             nextState3 = NOC_DATA;
             stream_out_TDATA  = noc_out_header;
             stream_out_TVALID = 1'b1;
             noc_send = 1'b1;
           end
         end
      end
      NOC_DATA: begin
        if (stream_out_TREADY) begin
          nextState3 = NOC_IDLE;
        end
          stream_out_TDATA  =  noc_out_payload + 1;
          stream_out_TVALID = 1'b1;
          stream_out_TLAST = 1'b1;
     end
   endcase
end


////////////////////
// HEADER INFO
///////////////////
assign noc_out_payload = noc_data_in;
assign noc_out_x_dest  = noc_header_in[20:18];
assign noc_out_y_dest  = noc_header_in[23:21];
assign noc_out_header  = {noc_header_in[31:24],HsrcId,noc_header_in[17:6],noc_out_y_dest,noc_out_x_dest};

`endif // !`ifdef MYTESTMOD

endmodule
