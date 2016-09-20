module rom4x4(input [1:0]address, output [3:0] datos);
	// definir la rom aqui
	reg [3:0] celda[0:3];
	assign datos=celda[address];

	initial begin
		$readmemh("rom4x4-data00.bin",celda);
	end
endmodule

module rom4x4_tb();
	reg [1:0] address;
	wire [3:0] datos;
	integer i;
	rom4x4 R0(address, datos);
	initial i=0;
	initial repeat(4) begin address=i; #10 i=i+1; end 
	initial $monitor("direccion: %2d, contenido: %1h",address, datos);
endmodule



