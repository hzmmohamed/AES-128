module SubBytesTB();

reg [127:0] State;
wire [127:0] out;

SubBytes u1( State,out);

initial
begin
State= 128'h003C6E471F4E22740E081B3154590B1A;
#(20);

end


endmodule
