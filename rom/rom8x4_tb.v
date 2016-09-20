// compilar con iverilog rom8x4.v rom4x4.v rom8x4_tb.v
module rom8x4_tb();
	reg [2:0] address;
	wire [3:0] datos;
	integer i;

	rom8x4 TB(address, datos);

	initial i=0;
	initial repeat(8) begin address=i; #10 i=i+1; end 
	initial $monitor("direccion: %2h, contenido: %2h",address, datos);
endmodule

