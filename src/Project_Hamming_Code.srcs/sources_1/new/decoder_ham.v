// Decoder Function that makes one of the 21 wires high
// Input 5 bits and output is 22 bits
`timescale 1ns / 1ps
module decoder_ham(
    var1, var2, var3, var4, var5, op1, op2, op3, op4, op5, op6, op7, op8, op9, op10, op11, op12, op13, op14, op15, op16, op17, op18, op19, op20, op21, op22
    );
    input var1, var2, var3, var4, var5;
    output op1, op2, op3, op4, op5, op6, op7, op8, op9, op10, op11, op12, op13, op14, op15, op16, op17, op18, op19, op20, op21, op22;
    assign op1 =  ~var1 & ~var2 & ~var3 & ~var4 & ~var5;
    assign op2 =  ~var1 & ~var2 & ~var3 & ~var4 & var5;
    assign op3 =  ~var1 & ~var2 & ~var3 & var4 & ~var5;
    assign op4 =  ~var1 & ~var2 & ~var3 & var4 & var5;
    assign op5 =  ~var1 & ~var2 & var3 & ~var4 & ~var5;
    assign op6 =  ~var1 & ~var2 & var3 & ~var4 & var5;
    assign op7 =  ~var1 & ~var2 & var3 & var4 & ~var5;
    assign op8 = ~var1 & ~var2 & var3 & var4 & var5;
    assign op9 =  ~var1 & var2 & ~var3 & ~var4 & ~var5;
    assign op10 =  ~var1 & var2 & ~var3 & ~var4 & var5;
    assign op11 =  ~var1 & var2 & ~var3 & var4 & ~var5;
    assign op12 =  ~var1 & var2 & ~var3 & var4 & var5;
    assign op13 =  ~var1 & var2 & var3 & ~var4 & ~var5;
    assign op14 =  ~var1 & var2 & var3 & ~var4 & var5;
    assign op15 =  ~var1 & var2 & var3 & var4 & ~var5;
    assign op16 = ~var1 & var2 & var3 & var4 & var5;
    assign op17 =  var1 & ~var2 & ~var3 & ~var4 & ~var5;
    assign op18 =  var1 & ~var2 & ~var3 & ~var4 & var5;
    assign op19 =  var1 & ~var2 & ~var3 & var4 & ~var5;
    assign op20 =  var1 & ~var2 & ~var3 & var4 & var5;
    assign op21 =  var1 & ~var2 & var3 & ~var4 & ~var5;
    assign op22 =  var1 & ~var2 & var3 & ~var4 & var5;

endmodule
