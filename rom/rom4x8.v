// compilar con iverilog rom4x4.v rom4x8.v rom4x8_tb.v
module rom4x8(input [1:0]address, output [7:0] datos);
	rom4x4 R0C0(address, datos[3:0]);
	rom4x4 R0C1(address, datos[7:4]);
endmodule



