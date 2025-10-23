`timescale 1ns/1ps

module tb_contador_sincrono_crescente;
    reg clk;
    reg rst;
    wire [3:0] q;

    contador_sincrono_crescente uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        #10;          
        rst = 0;

        #160;         

        wait (q == 4'd3);  
        rst = 1;           
        #10;               
        rst = 0;           

        #100;

        $finish;
    end

    initial begin
        $display("Tempo (ns)\tReset\tq");
        $monitor("%0t\t%b\t%b", $time, rst, q);
    end
endmodule

