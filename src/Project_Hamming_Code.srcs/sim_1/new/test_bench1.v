module test_bench1;
    reg[16:1] A;
    wire[1:21] B;
    encoder mod(A, B);
    initial begin
        A = 16'b1001101011100110;
        //0100110110101100
        //0100110110101100
    end
endmodule
