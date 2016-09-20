// compilar con iverilog rom4x4.v rom4x4_tb.v
module rom4x4_tb();
	reg [1:0] address;
	wire [3:0] datos;
	integer i;
	rom4x4 R0(address, datos);
	initial i=0;
	initial repeat(4) begin address=i; #10 i=i+1; end 
	initial $monitor("direccion: %2h, contenido: %2h",address, datos);
endmodule
