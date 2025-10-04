module mux8x1(
	input [7:0] d,
	input [3:0] sel,
	output y
);



	wire S1, S2;
	mux4x1 i1 (.d(d[3:0]), .sel(sel[1:0]),.y(S1));

	mux4x1 i2 (.d(d[7:4]), .sel(sel[1:0]),.y(S2));

	mux2x1 i3 (.d({S2,S1}), .sel(sel[2]),.y(y));

endmodule


 