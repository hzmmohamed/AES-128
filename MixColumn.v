`timescale 1ns / 1ps

module MixColumn(inmatrix,outmatrix);
input  [127:0] inmatrix;
output [127:0] outmatrix;


///creating first column
assign outmatrix[127:120]=mul2(inmatrix[127:120])^mul2(inmatrix[119:112])^inmatrix[119:112]^inmatrix[111:104]^inmatrix[103:96];
assign outmatrix[119:112]=inmatrix[127:120]^mul2(inmatrix[119:112])^mul2(inmatrix[111:104])^inmatrix[111:104]^inmatrix[103:96];
assign outmatrix[111:104]=inmatrix[127:120]^inmatrix[119:112]^mul2(inmatrix[111:104])^mul2(inmatrix[103:96])^inmatrix[103:96];
assign outmatrix[103:96]=mul2(inmatrix[127:120])^inmatrix[127:120]^inmatrix[119:112]^inmatrix[111:104]^mul2(inmatrix[103:96]);
//Creating second column
assign outmatrix[95:88]=mul2(inmatrix[95:88])^mul2(inmatrix[87:80])^inmatrix[87:80]^inmatrix[79:72]^inmatrix[71:64];
assign outmatrix[87:80]=inmatrix[95:88]^mul2(inmatrix[87:80])^mul2(inmatrix[79:72])^inmatrix[79:72]^inmatrix[71:64];
assign outmatrix[79:72]=inmatrix[95:88]^inmatrix[87:80]^mul2(inmatrix[79:72])^mul2(inmatrix[71:64])^inmatrix[71:64];
assign outmatrix[71:64]=mul2(inmatrix[95:88])^inmatrix[95:88]^inmatrix[87:80]^inmatrix[79:72]^mul2(inmatrix[71:64]);
//creating third column

assign outmatrix[63:56]=mul2(inmatrix[63:56])^mul2(inmatrix[55:48])^inmatrix[55:48]^inmatrix[47:40]^inmatrix[39:32];
assign outmatrix[55:48]=inmatrix[63:56]^mul2(inmatrix[55:48])^mul2(inmatrix[47:40])^inmatrix[47:40]^inmatrix[39:32];
assign outmatrix[47:40]=inmatrix[63:56]^inmatrix[55:48]^mul2(inmatrix[47:40])^mul2(inmatrix[39:32])^inmatrix[39:32];
assign outmatrix[39:32]=mul2(inmatrix[63:56])^inmatrix[63:56]^inmatrix[55:48]^inmatrix[47:40]^mul2(inmatrix[39:32]);

//creating fourth column
assign outmatrix[31:24]=mul2(inmatrix[31:24])^mul2(inmatrix[23:16])^inmatrix[23:16]^inmatrix[15:8]^inmatrix[7:0];
assign outmatrix[23:16]=inmatrix[31:24]^mul2(inmatrix[23:16])^mul2(inmatrix[15:8])^inmatrix[15:8]^inmatrix[7:0];
assign outmatrix[15:8]=inmatrix[31:24]^inmatrix[23:16]^mul2(inmatrix[15:8])^mul2(inmatrix[7:0])^inmatrix[7:0];
assign outmatrix[7:0]=mul2(inmatrix[31:24])^inmatrix[31:24]^inmatrix[23:16]^inmatrix[15:8]^mul2(inmatrix[7:0]);


function [7:0]mul2;//function to mutliply number of 2
input [7:0] i1;
reg [7:0]temp;
reg[7:0]temp2;
begin
temp=i1<<1;
temp2=8'b00011011;
if(i1[7])
mul2=temp ^ temp2;
else
mul2=temp;
end
endfunction




endmodule
