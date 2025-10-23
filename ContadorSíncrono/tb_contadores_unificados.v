`timescale 1ns/1ps

module tb_contadores_unificados;
    reg clk;
    reg rst;
    wire [3:0] q_crescente;
    wire [3:0] q_decrescente;
    wire [3:0] q_misto;

    contador_sincrono_crescente uut_crescente (
        .clk(clk),
        .rst(rst),
        .q(q_crescente)
    );

    contador_sincrono_decrescente uut_decrescente (
        .clk(clk),
        .rst(rst),
        .q(q_decrescente)
    );

    contador_sincrono uut_misto (
        .clk(clk),
        .rst(rst),
        .count(q_misto)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $display("Tempo(ns)\tReset\tCrescente\tDecrescente\tMisto");
        $monitor("%0t\t%b\t\t%0d\t\t%0d\t\t%0d", $time, rst, q_crescente, q_decrescente, q_misto);
    end

    initial begin

        rst = 1;
        #10;
        rst = 0;
		  
        #190;

        rst = 1;
        #10;
        rst = 0;

        #160;

        #10;
        rst = 0;

        #100;

        $finish;
    end
endmodule
