module SubBytes(in,out);
input [127:0] in;
output wire [127:0] out;

wire [7:0] w0 = in [127:120];
wire [7:0] w1 = in [119:112];
wire [7:0] w2 = in [111:104];
wire [7:0] w3 = in [103:96];
wire [7:0] w4 = in [95:88];
wire [7:0] w5 = in [87:80];
wire [7:0] w6 = in [79:72];
wire [7:0] w7 = in [71:64];
wire [7:0] w8 = in [63:56];
wire [7:0] w9 = in [55:48];
wire [7:0] w10 = in [47:40];
wire [7:0] w11 = in [39:32];
wire [7:0] w12 = in [31:24];
wire [7:0] w13 = in [23:16];
wire [7:0] w14 = in [15:8];
wire [7:0] w15 = in [7:0];


SBox S0(w0, out[127:120]);
SBox S1(w1, out[119:112]);
SBox S2(w2, out[111:104]);
SBox S3(w3, out[103:96]);
SBox S4(w4, out[95:88]);
SBox S5(w5, out[87:80]);
SBox S6(w6, out[79:72]);
SBox S7(w7, out[71:64]);
SBox S8(w8, out[63:56]);
SBox S9(w9, out[55:48]);
SBox S10(w10, out[47:40]);
SBox S11(w11, out[39:32]);
SBox S12(w12, out[31:24]);
SBox S13(w13, out[23:16]);
SBox S14(w14, out[15:8]);
SBox S15(w15, out[7:0]);

endmodule

