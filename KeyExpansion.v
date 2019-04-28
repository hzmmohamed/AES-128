module KeyExpansion(keyin,roundno,out);
input [127:0] keyin;
input roundno;
reg [31:0] rcon;
output  wire [127:0] out;


wire [31:0] w0= keyin[127:96];
wire [31:0] w1= keyin[95:64];
wire [31:0] w2= keyin[63:32];
wire [31:0] w3= keyin[31:0];


//---------rcon value--------

always @(roundno)
begin
case(roundno)

   4'h0: rcon=32'h01_00_00_00;
         4'h1: rcon=32'h02_00_00_00;
         4'h2: rcon=32'h04_00_00_00;
         4'h3: rcon=32'h08_00_00_00;
         4'h4: rcon=32'h10_00_00_00;
         4'h5: rcon=32'h20_00_00_00;
         4'h6: rcon=32'h40_00_00_00;
         4'h7: rcon=32'h80_00_00_00;
         4'h8: rcon=32'h1b_00_00_00;
         4'h9: rcon=32'h36_00_00_00;
         default: rcon=32'h00_00_00_00;

endcase
end
//--end-------rcon value--------


//---------produce output key--------

wire [31:0]temp;


SBox a1(.index(w3[23:16]),.val(temp[31:24]));
SBox a2(.index(w3[15:8]),.val(temp[23:16]));
SBox a3(.index(w3[7:0]),.val(temp[15:8]));
SBox a4(.index(w3[31:24]),.val(temp[7:0]));

assign out [127:96]= w0 ^ temp ^ rcon;
assign out [95:64]= w0 ^ temp ^ rcon ^ w1;
assign out [63:32]= w0 ^ temp ^ rcon ^ w1 ^ w2;
assign out [31:0]= w0 ^ temp ^ rcon ^ w1 ^ w2 ^ w3;
//--end-------produce output key--------



endmodule
