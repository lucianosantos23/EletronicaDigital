module contador_sincrono (
    input wire clk,
    input wire rst,
    output reg [3:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 4'd1; // Inicia com 1
    end else begin
        case (count)
            4'd1:  count <= 4'd3;
            4'd3:  count <= 4'd5;
            4'd5:  count <= 4'd0;
            4'd0:  count <= 4'd2;
            4'd2:  count <= 4'd4;
            4'd4:  count <= 4'd6;
            4'd6:  count <= 4'd7;
            4'd7:  count <= 4'd8;
            4'd8:  count <= 4'd9;
            4'd9:  count <= 4'd10;
            4'd10: count <= 4'd15;
            4'd15: count <= 4'd14;
            4'd14: count <= 4'd13;
            4'd13: count <= 4'd12;
            4'd12: count <= 4'd11;
            4'd11: count <= 4'd1; // Reinicia sequência
            default: count <= 4'd1;
        endcase
    end
end

endmodule

