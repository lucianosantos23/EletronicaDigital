module mux2x1(
	input sel,
	input [1:0] d,
	output reg y
);

	always @ (*) begin
		case(sel) 
			1'b0: y = d[0];
			1'b1: y = d[1];
		endcase
	end
endmodule
