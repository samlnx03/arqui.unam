// compilar con iverilog rom4x4.v rom4x4_tb.v
module rom4x4(input [1:0]address, output [3:0] datos);
	// definir la rom aqui
	reg [3:0] celda[0:3];
	assign datos=celda[address];

	initial begin
		$readmemh("rom4x4-data00.bin",celda);
	end
endmodule
