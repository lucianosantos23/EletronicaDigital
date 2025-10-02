module ula_deco(
	input [2:0] A,
	input [2:0] B,
	input [2:0] S,
	output wire [6:0] F
);

wire [3:0] SU;

ULA_3bits i1 (.A(A), .B(B), .S(S), .F(SU));

sete_segmentos i2 (.in(SU), .out(F));

endmodule
