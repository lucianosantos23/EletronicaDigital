`timescale 1ns/100ps
module ula_tb();
    // Declare os sinais envolvidos na simulação
    reg [2:0] A;
    reg [2:0] B;
    reg [2:0] S;
    wire [3:0] F;

    ULA_3bits dut (.A(A), .B(B), .S(S), .F(F));

    initial begin
        S = 3'b000;
        
        A = 3'b101;
        B = 3'b001; 

        #1 S = 3'b001;
        #1 S = 3'b010;
        #1 S = 3'b011;
        #1 S = 3'b100;
        #1 S = 3'b101;
        #1 S = 3'b110;
        #1 S = 3'b111;
    end

    // A simulação encerra após 8ns
    initial begin 
        #8 $stop; 
    end
endmodule
