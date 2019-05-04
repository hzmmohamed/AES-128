module InvShiftRows(inmatrix,outmatrix);
input [127:0]inmatrix;
output[127:0]outmatrix;

assign outmatrix[127:120]=inmatrix[127:120];
assign outmatrix[95:88]=inmatrix[95:88];
assign outmatrix[63:56]=inmatrix[63:56];
assign outmatrix[31:24]=inmatrix[31:24];


assign outmatrix[119:112]=inmatrix[23:16];
assign outmatrix[87:80]=inmatrix[119:112];
assign outmatrix[55:48]=inmatrix[87:80];
assign outmatrix[23:16]=inmatrix[55:48];

assign outmatrix[111:104]=inmatrix[47:40];
assign outmatrix[79:72]=inmatrix[15:8];
assign outmatrix[47:40]=inmatrix[111:104];
assign outmatrix[15:8]=inmatrix[79:72];


assign outmatrix[103:96]=inmatrix[71:64];
assign outmatrix[71:64]=inmatrix[39:32];
assign outmatrix[39:32]=inmatrix[7:0];
assign outmatrix[7:0]=inmatrix[103:96];




endmodule

