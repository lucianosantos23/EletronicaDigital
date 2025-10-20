module deslocador_universal
 #(
    parameter size = 8
)(
    input wire clk,
    input wire load,
    input wire dir,
    input wire [size-1:0] E,
    input wire Er,
    input wire El,
    output reg [size-1:0] Y
);

    always @(posedge clk) begin
        if (load) begin
            Y <= E;
        end else begin
            if (dir) begin
					 Y <= {El, Y[size-1:1]};
            end else begin
                Y <= {Y[size-2:0], Er};
            end
        end
    end

endmodule