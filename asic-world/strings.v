module strings ();

	//each letter is 8 bits (0-255) in ASCII.
	//Note you can't name a variable string
	reg [0:15*8] strings;
	//Note the length is 21 for the string and we have begun this with the rightmost bit the smallest bit. So initial spaces as all zero.
	//Doing it from 0:21*8 has no effect either, there are spaces up ahead anyway
	initial begin
		strings = "12345678";
		//$display(strings); //This just prints probably the location/pointer of the variable.
		$display("%s\n",strings);
		$display("Hello");
	end

endmodule