module contadores_top (
    input clk,
    input rst,
    output [6:0] hex0, 
    output [6:0] hex1, 
    output [6:0] hex2  
);

wire [3:0] contagem_1;
wire [3:0] contagem_2;
wire [3:0] contagem_3;

contador_sincrono counter1 (
    .clk(clk),
    .rst(rst),
    .count(contagem_1)
);

contador_sincrono_crescente counter2 (
    .clk(clk),
    .rst(rst),
    .q(contagem_2)
);

contador_sincrono_decrescente counter3 (
    .clk(clk),
    .rst(rst),
    .q(contagem_3)
);

sete_segmentos con1 (.in(contagem_1), .out(hex0));
sete_segmentos con2 (.in(contagem_2), .out(hex1));
sete_segmentos con3 (.in(contagem_3), .out(hex2));

endmodule
