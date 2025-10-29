module maq_moore1101_TB;
    reg clk;
    reg rst;
    reg in;
    wire out;

    // Instanciação do módulo sob teste 
    maq_moore1101 dut (
        .clk(clk),
        .rst(rst),
        .input_bit(in),
        .output_bit(out)
    );

    // Geração do clock: período de 10ns (100 MHz)
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        in = 0;
       
        #10;
        rst = 0;
        
        // Aplicação da sequencia na entrada
        in = 1;  #10;  
        in = 1;  #10;  
        in = 0;  #10;  
        in = 1;  #10;  
        in = 0;  #10;
        in = 0;  #10;
        in = 1;  #10;
        in = 1;  #10;
        in = 0;  #10;  
        in = 1;  #10;
        in = 0;  #10;
        in = 1;  #10;  

        // Espera final para observação
        #50;
        $stop;
    end

    // Monitoramento
    initial begin
        $display("Tempo\tin\tout");
        $monitor("%4t\t%b\t%b", $time, in, out);
    end

endmodule
