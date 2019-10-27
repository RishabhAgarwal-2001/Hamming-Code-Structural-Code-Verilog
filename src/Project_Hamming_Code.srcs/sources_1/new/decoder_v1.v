`timescale 1ns / 1ps
module decoder_v1(A, B);
	input[20:0] A;
	output[15:0] B;
	wire var1, var2, var3, var4, var5;
	xor(var1, A[0], A[2], A[4], A[6], A[8], A[10], A[12], A[14], A[16], A[18], A[20]);
	xor(var2, A[1], A[2], A[5], A[6], A[9], A[10], A[13], A[14], A[17], A[18]);
	xor(var3, A[3], A[6], A[11], A[12], A[13], A[14], A[19], A[20]);
	xor(var4, A[7], A[8], A[9], A[10], A[11], A[12], A[13], A[14]);
	xor(var5, A[15], A[16], A[17], A[18], A[19], A[20]);
//	wire [4:0] error_positon = {var5, var4, var3, var2, var1};
//	initial begin
//	error_position[0] = var1;
//	end
//	buf a1(error_position[0], var1);
//	buf a2(error_position[1], var2);
//	buf a3(error_position[2], var3);
//	buf a4(error_position[3], var4);
//	buf a5(error_position[4], var5);

    wire op1, op2, op3, op4, op5, op6, op7, op8, op9, op10, op11, op12, op13, op14, op15, op16, op17, op18, op19, op20, op21;

    decoder_ham d1(var5,var4,var3,var2,var1,op1, op2, op3, op4, op5, op6, op7, op8, op9, op10, op11, op12, op13, op14, op15, op16, op17, op18, op19, op20, op21);
//	not(A[error_position], A[error_position]);
	
	xor x0(A[0],op1,A[0]);
	xor x1(A[1],op2,A[1]);
	xor x2(A[2],op3,A[2]);
	xor x3(A[3],op4,A[3]);
	xor x4(A[4],op5,A[4]);
	xor x5(A[5],op6,A[5]);
	xor x6(A[6],op7,A[6]);
	xor x7(A[7],op8,A[7]);
	xor x8(A[8],op9,A[8]);
	xor x9(A[9],op10,A[9]);
	xor x10(A[10],op11,A[10]);
	xor x11(A[11],op12,A[11]);
	xor x12(A[12],op13,A[12]);
	xor x13(A[13],op14,A[13]);
	xor x14(A[14],op15,A[14]);
	xor x15(A[15],op16,A[15]);
	xor x16(A[16],op17,A[16]);
	xor x17(A[17],op18,A[17]);
	xor x18(A[18],op19,A[18]);
	xor x19(A[19],op20,A[19]);
	xor x20(A[20],op21,A[20]);
	
	
	
	
	
	
	
	buf u2(B[0], A[2]);
    buf u3(B[1], A[4]);
    buf u4(B[2], A[5]);
    buf u5(B[3], A[6]);
    buf u6(B[4], A[8]);
    buf u7(B[5], A[9]);
    buf u8(B[6], A[10]);
    buf u9(B[7], A[11]);
    buf u10(B[8], A[12]);
    buf u11(B[9], A[13]);
    buf u12(B[10], A[14]);
    buf u13(B[11], A[16]);
    buf u14(B[12], A[17]);
    buf u15(B[13], A[18]);
    buf u16(B[14], A[19]);
    buf u17(B[15], A[20]);
endmodule