// Hamming Encoder Module (Even Parity)
// Input : 16 bit input <= The message to be encoded
// Output : 21 bit output <= 16 Message bits padded with 5 extra parity bits
`timescale 1ns / 1ps
module encoder(A, B);
    input[16:1] A;
    output[1:21] B;
    // Copying Data/Message bits into the output stream
    buf u2(B[3], A[1]);
    buf u3(B[5], A[2]);
    buf u4(B[6], A[3]);
    buf u5(B[7], A[4]);
    buf u6(B[9], A[5]);
    buf u7(B[10], A[6]);
    buf u8(B[11], A[7]);
    buf u9(B[12], A[8]);
    buf u10(B[13], A[9]);
    buf u11(B[14], A[10]);
    buf u12(B[15], A[11]);
    buf u13(B[17], A[12]);
    buf u14(B[18], A[13]);
    buf u15(B[19], A[14]);
    buf u16(B[20], A[15]);
    buf u17(B[21], A[16]);
    // Copying Completed
    // Caluclating Parity Bits
    xor p1(B[1], B[3], B[5], B[7], B[9], B[11], B[13], B[15], B[17], B[19], B[21]);
    xor p2(B[2], B[3], B[6], B[7], B[10], B[11], B[14], B[15], B[18], B[19]);
    xor p4(B[4], B[5], B[6], B[7], B[12], B[13], B[14], B[15], B[20], B[21]);
    xor p8(B[8], B[9], B[10], B[11], B[12], B[13], B[14], B[15]);
    xor p16(B[16], B[17], B[18], B[19], B[20], B[21]);
    //Calculation of Parity bits completed
endmodule
