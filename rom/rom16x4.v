// compilar con iverilog rom16x4.v rom4x4.v rom16x4_tb.v
module rom16x4(input [3:0]address, output [3:0] datos);
	wire [3:0] d;
	rom4x4e R0(d[0], address[1:0], datos);
	rom4x4e R1(d[1], address[1:0], datos);
	rom4x4e R3(d[2], address[1:0], datos);
	rom4x4e R4(d[3], address[1:0], datos);
	decoder2a4 D(address[3:2], d);
endmodule

module rom4x4e(input ce, input [1:0]address, output [3:0] datos);
	// ce es chp enable, controla el tercer estado, activa en alto
	wire [3:0] w; // salida de la rom
	assign datos = ce ? w : 4'bz;	// si ce=0 salida en tercer estado
	rom4x4 R(address[1:0], w);
endmodule

module decoder2a4(input [1:0]a, output reg [3:0] d);
	always @(*) begin
		d=4'b0;
		d[a]=1'b1;
	end
endmodule

