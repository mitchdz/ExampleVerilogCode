`timescale 1ns / 1ps

module AND(Input_A, Input_B, Output);
    
    input Input_A, Input_B;
    output reg Output;
    
    initial begin
        Output = 0;
    end
    always @(Input_A, Input_B) begin
        Output = Input_A & (Input_B);
    end
    
endmodule


