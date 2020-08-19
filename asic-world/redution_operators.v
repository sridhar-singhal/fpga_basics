module reduction_operators();


//reduction operators apply the and among all the bits of the number.
// In all cases the ouput was 0 except 11 and 111.
initial begin
	$display("& 2'b00 = %b", &2'b00);
	$display("& 2'b01 = %b", &2'b01);
	$display("& 2'b10 = %b", &2'b10);
	$display("& 2'b11 = %b", &2'b11);
	
	$display("& 3'b000 = %b", &3'b000);
	$display("& 3'b001 = %b", &3'b001);
	$display("& 3'b010 = %b", &3'b010);
	$display("& 3'b011 = %b", &3'b011);
	$display("& 3'b100 = %b", &3'b100);
	$display("& 3'b101 = %b", &3'b101);
	$display("& 3'b110 = %b", &3'b110);
	$display("& 3'b111 = %b", &3'b111);
	// $display("\n& 3'b000", & 3'b000);
	// $display("& 2'b11", & 2'b11);

end

endmodule 