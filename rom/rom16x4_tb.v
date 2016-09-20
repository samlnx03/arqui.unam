// compilar con iverilog rom16x4.v rom4x4.v rom16x4_tb.v
module rom16x4_tb();
	reg [3:0]address;
	wire [3:0] datos;
	integer i;
	rom16x4 TB(address, datos);
	initial i=0;
	initial repeat(16) begin address=i; #10 i=i+1; end 
	initial $monitor("direccion: %2h, contenido: %2h",address, datos);
endmodule
