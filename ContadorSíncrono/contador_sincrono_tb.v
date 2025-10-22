`timescale 1ns/1ps

module contador_sincrono_tb();

    reg clk;
    reg rst;
    wire [3:0] count;

    contador_sincrono dut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $display("Tempo\tclk\trst\tcount");
        $monitor("%4dns\t%b\t%b\t%d", $time, clk, rst, count);
    end

    initial begin
        rst = 1; 
        #12;
        rst = 0; 

        #300;

        $finish; 
    end

endmodule

