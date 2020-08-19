module tri_buf_assignDelays();
	reg data_in, enable;
	wire pad;

	assign #5 pad = (enable)? data_in:1'bz;

	initial begin
		$monitor("Time: %d Enable %b Data: %b, Pad: %b ",$time, enable, data_in, pad);
		#10 enable =0;
		#10 data_in = 1;
		#10 enable = 1;
		#10 data_in = 0;
		#10 enable = 0;
	end

endmodule
	
/*Two types of assignment delays assign 
assign #5 a = b; 

assign #(1:5:10) a = b; //minimum assignment time 1, max 10, typical 5

#delay net=expression

net can be a net or a wire, typically any combinational logic expression

Also works:


*/