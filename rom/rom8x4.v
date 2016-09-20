// compilar con iverilog rom8x4.v rom4x4.v rom8x4_tb.v
module rom8x4(input [2:0]address, output [3:0] datos);
	rom4x4e R0(~address[2], address[1:0], datos);
	rom4x4e R1( address[2], address[1:0], datos);
endmodule

module rom4x4e(input ce, input [1:0]address, output [3:0] datos);
	// ce es chp enable, controla el tercer estado, activa en alto
	wire [3:0] w; // salida de la rom
	assign datos = ce ? w : 4'bz;	// si ce=0 salida en tercer estado
	rom4x4 R(address[1:0], w);
endmodule
