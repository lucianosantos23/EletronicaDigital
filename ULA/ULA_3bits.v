module ULA_3bits(
	input [2:0] A,
	input [2:0] B,
	input [2:0] S,
	output reg [3:0] F
);

	always @(*) begin
		case (S)
			3'b000: F = {1'b0, A & B}; //logico
			3'b001: F = {1'b0, A | B}; //logico
			3'b010: F =  A + B;
			3'b011: F = {1'b0, ~A}; //logico
			3'b100: F = A & {1'b0, ~B}; //logico
			3'b101: F = A | {1'b0, ~B}; //logico
			3'b110: F = A-B;
			3'b111: F = A < B;
		endcase
	end
endmodule

			