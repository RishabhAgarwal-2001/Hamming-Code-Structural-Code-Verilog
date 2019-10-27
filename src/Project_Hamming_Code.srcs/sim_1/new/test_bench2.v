`timescale 1ns / 1ps
module test_bench2;
    reg[20:0] in;
    wire[15:0] out;
    wire var1, var2, var3, var4, var5;
    wire op1, op2, op3, op4, op5, op6, op7, op8, op9, op10, op11, op12, op13, op14, op15, op16, op17, op18, op19, op20, op21;
    decoder module_instance(in, out, var1, var2, var3, var4, var5,  op1, op2, op3, op4, op5, op6, op7, op8, op9, op10, op11, op12, op13, op14, op15, op16, op17, op18, op19, op20, op21);
    initial begin
        in = 21'b100111010111000111010; // <= Last 11th bit flipped
               //100111010111000111010 <= Original w/o any error
    end
endmodule
