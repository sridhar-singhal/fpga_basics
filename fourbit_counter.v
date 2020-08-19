module fourbit_counter(
	clock,
	reset,
	enable,
	counter_out
);


//_____Input Ports_____
input clock;
input reset;
input enable;


//____Output Ports_____

output [3:0] counter_out;

//!!!All input ports must be wires!!!

wire clock;
wire reset;
wire enable;

//try writing them all with a comma once too.

//!!! OUtput ports can be registers or wires

reg [3:0] counter_out;



//____Code Starts_____

always @(posedge clock)
begin : COUNTER //Block Name
	if (reset == 1'b1) begin
		// reset
		counter_out <= #1 4'b0000;
		
	end
	else if ( enable == 1'b1 ) begin
		counter_out <= #1 counter_out + 1;
	end
end //End of block counter.


endmodule 