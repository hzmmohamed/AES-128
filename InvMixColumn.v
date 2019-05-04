module InvMixColumn(inmatrix,outmatrix);
input[127:0] inmatrix;
output[127:0] outmatrix;

assign outmatrix[127:120]=mul14(inmatrix[127:120])^mul11(inmatrix[119:112])^mul13(inmatrix[111:104])^mul9(inmatrix[103:96]);
assign outmatrix[119:112]=mul9(inmatrix[127:120])^mul14(inmatrix[119:112])^mul11(inmatrix[111:104])^mul13(inmatrix[103:96]);
assign outmatrix[111:104]=mul13(inmatrix[127:120])^mul9(inmatrix[119:112])^mul14(inmatrix[111:104])^mul11(inmatrix[103:96]);
assign outmatrix[103:96]=mul11(inmatrix[127:120])^mul13(inmatrix[119:112])^mul9(inmatrix[111:104])^mul14(inmatrix[103:96]);


assign outmatrix[95:88]=mul14(inmatrix[95:88])^mul11(inmatrix[87:80])^mul13(inmatrix[79:72])^mul9(inmatrix[71:64]);
assign outmatrix[87:80]=mul9(inmatrix[95:88])^mul14(inmatrix[87:80])^mul11(inmatrix[79:72])^mul13(inmatrix[71:64]);
assign outmatrix[79:72]=mul13(inmatrix[95:88])^mul9(inmatrix[87:80])^mul14(inmatrix[79:72])^mul11(inmatrix[71:64]);
assign outmatrix[71:64]=mul11(inmatrix[95:88])^mul13(inmatrix[87:80])^mul9(inmatrix[79:72])^mul14(inmatrix[71:64]);

assign outmatrix[63:56]=mul14(inmatrix[63:56])^mul11(inmatrix[55:48])^mul13(inmatrix[47:40])^mul9(inmatrix[39:32]);
assign outmatrix[55:48]=mul9(inmatrix[63:56])^mul14(inmatrix[55:48])^mul11(inmatrix[47:40])^mul13(inmatrix[39:32]);
assign outmatrix[47:40]=mul13(inmatrix[63:56])^mul9(inmatrix[55:48])^mul14(inmatrix[47:40])^mul11(inmatrix[39:32]);
assign outmatrix[39:32]=mul11(inmatrix[63:56])^mul13(inmatrix[55:48])^mul9(inmatrix[47:40])^mul14(inmatrix[39:32]);

assign outmatrix[31:24]=mul14(inmatrix[31:24])^mul11(inmatrix[23:16])^mul13(inmatrix[15:8])^mul9(inmatrix[7:0]);
assign outmatrix[23:16]=mul9(inmatrix[31:24])^mul14(inmatrix[23:16])^mul11(inmatrix[15:8])^mul13(inmatrix[7:0]);
assign outmatrix[15:8]=mul13(inmatrix[31:24])^mul9(inmatrix[23:16])^mul14(inmatrix[15:8])^mul11(inmatrix[7:0]);
assign outmatrix[7:0]=mul11(inmatrix[31:24])^mul13(inmatrix[23:16])^mul9(inmatrix[15:8])^mul14(inmatrix[7:0]);





function [7:0]mul9;//function to mutliply number of 9
input [7:0] i1;
reg [7:0]temp;
reg[7:0]temp2,temp3,temp4;
reg[7:0]mul2,mul4,mul8;
begin
temp=i1<<1;
temp2=8'b00011011;
if(i1[7])
mul2=temp ^ temp2;
else
mul2=temp;
//-------
temp3=mul2<<1;
if(mul2[7])
mul4=temp2^temp3;
else
mul4=temp3;
//--------
temp4=mul4<<1;
if(mul4[7])
mul8=temp2^temp4;
else
mul8=temp4;
//-------
mul9=mul8^i1;
end
endfunction



function [7:0]mul11;
input[7:0]num;
reg[7:0]temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;
reg[7:0]temp;
begin
temp=8'b00011011;
temp1=num<<1;
if(num[7])
temp2=temp1^temp;
else
temp2=temp1;
//-----
temp3=temp2<<1;
if(temp2[7])
temp4=temp3^temp;
else
temp4=temp3;

temp5=temp4^num;
temp6=temp5<<1;
if(temp5[7])
temp7=temp6^temp;
else
temp7=temp6;///(((x*2)*2)+x)*2

mul11=temp7^num;///(((x*2)*2)+x)*2+x

end
endfunction

function[7:0]mul13;
input [7:0] num;
reg [7:0]temp,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9;
begin
temp=8'b00011011;
temp1=num<<1;
if(num[7])
temp2=temp1^temp;
else
temp2=temp1;
temp3=temp2^num;
//------
temp4=temp3<<1;
if(temp3[7])
temp5=temp4^temp;
else
temp5=temp4;
//------
temp6=temp5<<1;
if(temp5[7])
temp7=temp6^temp;
else
temp7=temp6;
//--------
mul13=temp7^num;
end
endfunction


function[7:0]mul14;
input[7:0]num;
reg[7:0]temp,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;
begin
temp=8'b00011011;
temp1=num<<1;
if(num[7])
temp2=temp^temp1;
else
temp2=temp1;

temp3=temp2^num;

temp4=temp3<<1;
if(temp3[7])
temp5=temp4^temp;
else
temp5=temp4;

temp6=temp5^num;

temp7=temp6<<1;
if(temp6[7])
mul14=temp7^temp;
else
mul14=temp7;
end
endfunction






endmodule

