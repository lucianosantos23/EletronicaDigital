module contador_sincrono_crescente (
    input  wire clk,     
    input  wire rst,    
    output reg  [3:0] q  
);
	initial q = 4'b0000;	

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;          
        else
            q <= q + 1'b1;          
    end

endmodule
