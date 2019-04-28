module KeyExpansionTB(input dummy);

reg [127:0] testkey;
reg roundno;
wire [127:0] out;


KeyExpansion testunit(testkey,roundno,out);


initial begin

roundno=0;

#10

testkey= 127'h2b7e151628aed2a6abf7158809cf4f3c;

#10

testkey=out;
roundno=1;



end
endmodule