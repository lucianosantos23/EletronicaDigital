module maq_moore1101 (clk, input_bit, rst, output_bit);
input wire clk, input_bit, rst;
output reg output_bit;

reg [2:0] current_state, next_state;

localparam S0 = 3'd0,  // estado inicial
           S1 = 3'd1,  // recebeu '1'
           S2 = 3'd2,  // recebeu '11'
           S3 = 3'd3,  // recebeu '110'
           S4 = 3'd4;  // recebeu '1101' (detecção)

always @(*) begin
    case (current_state)
        S0: if (input_bit) next_state <= S1; 
            else next_state <= S0;

        S1: if (input_bit) next_state <= S2; 
            else next_state <= S0;

        S2: if (input_bit) next_state <= S2; 
            else next_state <= S3;

        S3: if (input_bit) next_state <= S4; 
            else next_state <= S0;

        S4: if (input_bit) next_state <= S2; 
            else next_state <= S0;

        default: next_state <= S0;
    endcase
end

always @(posedge clk or posedge rst) begin
    if (rst)
        current_state <= S0;
    else
        current_state <= next_state;
end

always @(current_state) begin
    output_bit = 1'b0;
    case (current_state)
        S4: output_bit = 1'b1; // detectou 1101
        default: output_bit = 1'b0;
    endcase
end

endmodule

