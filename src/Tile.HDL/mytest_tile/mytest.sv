module mytest#(
			   parameter XY_SZ = 4
			   )(
				 input logic				 clk_line,
				 input logic				 clk_line_rst_low,
				 input logic [(XY_SZ*2)-1:0] HsrcId, //- Tile identification
				 // input stream
				 input logic				 stream_in_TVALID,
				 input logic [31:0]			 stream_in_TDATA,
				 input logic [3:0]			 stream_in_TKEEP,
				 input logic				 stream_in_TLAST,
				 output logic				 stream_in_TREADY,
				 // output stream
				 output logic				 stream_out_TVALID,
				 output logic [31:0]		 stream_out_TDATA,
				 output logic [3:0]			 stream_out_TKEEP,
				 output logic				 stream_out_TLAST,
				 input logic				 stream_out_TREADY);

   assign stream_out_TKEEP = 4'hF;

   assign stream_in_TREADY = 1'b1;

   //- State machine state1
   localparam [3:0]							 IDLE       = 4'd0; //
   localparam [3:0]							 WAIT_SEND  = 4'd6; //

   //- State machine state3
   localparam [2:0]							 NOC_IDLE      = 3'd0;
   localparam [2:0]							 NOC_DATA      = 3'd1;

   //- FSMs
   logic [3:0]								 currentState1; //- NoC input
   logic [2:0]								 currentState3; //- NoC Output
   logic [3:0]								 nextState1;
   logic [2:0]								 nextState3; // fixed

   logic									 noc_send;

   logic [31:0]								 noc_header_in;
   logic [31:0]								 next_noc_header_in;
   logic [31:0]								 noc_data_in;
   logic [31:0]								 next_noc_data_in;

   logic [31:0]								 noc_out_header;
   logic [31:0]								 noc_out_payload;

   logic [XY_SZ-1:0]						 noc_out_x_dest;
   logic [XY_SZ-1:0]						 noc_out_y_dest;


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
           if (stream_in_TVALID) begin
			  next_noc_header_in = stream_in_TDATA;
			  nextState1 = WAIT_SEND;
           end
		end
		WAIT_SEND: begin
           if (stream_in_TVALID) next_noc_data_in = stream_in_TDATA;
           if (noc_send) begin
			  nextState1 = IDLE;
           end
		end
	  endcase
   end


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
           stream_out_TDATA  =  noc_out_payload + 3;
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

endmodule // mytest
