// compilar con iverilog rom4x4.v rom4x8.v rom4x8_tb.v
module rom4x8_tb();
	reg [1:0] address;
	wire [7:0] datos;
	integer i;
	rom4x8 TB(address, datos);
	initial i=0;
	initial repeat(4) begin address=i; #10 i=i+1; end 
	initial $monitor("direccion: %2h, contenido: %2h",address, datos);
endmodule
