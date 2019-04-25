module SBox(index,val);
input [7:0] index;
output reg[7:0] val;

always @(index)
begin

case (index)	

8'h00: val=8'h63;
	   8'h01: val=8'h7c;
	   8'h02: val=8'h77;
	   8'h03: val=8'h7b;
	   8'h04: val=8'hf2;
	   8'h05: val=8'h6b;
	   8'h06: val=8'h6f;
	   8'h07: val=8'hc5;
	   8'h08: val=8'h30;
	   8'h09: val=8'h01;
	   8'h0a: val=8'h67;
	   8'h0b: val=8'h2b;
	   8'h0c: val=8'hfe;
	   8'h0d: val=8'hd7;
	   8'h0e: val=8'hab;
	   8'h0f: val=8'h76;
	   8'h10: val=8'hca;
	   8'h11: val=8'h82;
	   8'h12: val=8'hc9;
	   8'h13: val=8'h7d;
	   8'h14: val=8'hfa;
	   8'h15: val=8'h59;
	   8'h16: val=8'h47;
	   8'h17: val=8'hf0;
	   8'h18: val=8'had;
	   8'h19: val=8'hd4;
	   8'h1a: val=8'ha2;
	   8'h1b: val=8'haf;
	   8'h1c: val=8'h9c;
	   8'h1d: val=8'ha4;
	   8'h1e: val=8'h72;
	   8'h1f: val=8'hc0;
	   8'h20: val=8'hb7;
	   8'h21: val=8'hfd;
	   8'h22: val=8'h93;
	   8'h23: val=8'h26;
	   8'h24: val=8'h36;
	   8'h25: val=8'h3f;
	   8'h26: val=8'hf7;
	   8'h27: val=8'hcc;
	   8'h28: val=8'h34;
	   8'h29: val=8'ha5;
	   8'h2a: val=8'he5;
	   8'h2b: val=8'hf1;
	   8'h2c: val=8'h71;
	   8'h2d: val=8'hd8;
	   8'h2e: val=8'h31;
	   8'h2f: val=8'h15;
	   8'h30: val=8'h04;
	   8'h31: val=8'hc7;
	   8'h32: val=8'h23;
	   8'h33: val=8'hc3;
	   8'h34: val=8'h18;
	   8'h35: val=8'h96;
	   8'h36: val=8'h05;
	   8'h37: val=8'h9a;
	   8'h38: val=8'h07;
	   8'h39: val=8'h12;
	   8'h3a: val=8'h80;
	   8'h3b: val=8'he2;
	   8'h3c: val=8'heb;
	   8'h3d: val=8'h27;
	   8'h3e: val=8'hb2;
	   8'h3f: val=8'h75;
	   8'h40: val=8'h09;
	   8'h41: val=8'h83;
	   8'h42: val=8'h2c;
	   8'h43: val=8'h1a;
	   8'h44: val=8'h1b;
	   8'h45: val=8'h6e;
	   8'h46: val=8'h5a;
	   8'h47: val=8'ha0;
	   8'h48: val=8'h52;
	   8'h49: val=8'h3b;
	   8'h4a: val=8'hd6;
	   8'h4b: val=8'hb3;
	   8'h4c: val=8'h29;
	   8'h4d: val=8'he3;
	   8'h4e: val=8'h2f;
	   8'h4f: val=8'h84;
	   8'h50: val=8'h53;
	   8'h51: val=8'hd1;
	   8'h52: val=8'h00;
	   8'h53: val=8'hed;
	   8'h54: val=8'h20;
	   8'h55: val=8'hfc;
	   8'h56: val=8'hb1;
	   8'h57: val=8'h5b;
	   8'h58: val=8'h6a;
	   8'h59: val=8'hcb;
	   8'h5a: val=8'hbe;
	   8'h5b: val=8'h39;
	   8'h5c: val=8'h4a;
	   8'h5d: val=8'h4c;
	   8'h5e: val=8'h58;
	   8'h5f: val=8'hcf;
	   8'h60: val=8'hd0;
	   8'h61: val=8'hef;
	   8'h62: val=8'haa;
	   8'h63: val=8'hfb;
	   8'h64: val=8'h43;
	   8'h65: val=8'h4d;
	   8'h66: val=8'h33;
	   8'h67: val=8'h85;
	   8'h68: val=8'h45;
	   8'h69: val=8'hf9;
	   8'h6a: val=8'h02;
	   8'h6b: val=8'h7f;
	   8'h6c: val=8'h50;
	   8'h6d: val=8'h3c;
	   8'h6e: val=8'h9f;
	   8'h6f: val=8'ha8;
	   8'h70: val=8'h51;
	   8'h71: val=8'ha3;
	   8'h72: val=8'h40;
	   8'h73: val=8'h8f;
	   8'h74: val=8'h92;
	   8'h75: val=8'h9d;
	   8'h76: val=8'h38;
	   8'h77: val=8'hf5;
	   8'h78: val=8'hbc;
	   8'h79: val=8'hb6;
	   8'h7a: val=8'hda;
	   8'h7b: val=8'h21;
	   8'h7c: val=8'h10;
	   8'h7d: val=8'hff;
	   8'h7e: val=8'hf3;
	   8'h7f: val=8'hd2;
	   8'h80: val=8'hcd;
	   8'h81: val=8'h0c;
	   8'h82: val=8'h13;
	   8'h83: val=8'hec;
	   8'h84: val=8'h5f;
	   8'h85: val=8'h97;
	   8'h86: val=8'h44;
	   8'h87: val=8'h17;
	   8'h88: val=8'hc4;
	   8'h89: val=8'ha7;
	   8'h8a: val=8'h7e;
	   8'h8b: val=8'h3d;
	   8'h8c: val=8'h64;
	   8'h8d: val=8'h5d;
	   8'h8e: val=8'h19;
	   8'h8f: val=8'h73;
	   8'h90: val=8'h60;
	   8'h91: val=8'h81;
	   8'h92: val=8'h4f;
	   8'h93: val=8'hdc;
	   8'h94: val=8'h22;
	   8'h95: val=8'h2a;
	   8'h96: val=8'h90;
	   8'h97: val=8'h88;
	   8'h98: val=8'h46;
	   8'h99: val=8'hee;
	   8'h9a: val=8'hb8;
	   8'h9b: val=8'h14;
	   8'h9c: val=8'hde;
	   8'h9d: val=8'h5e;
	   8'h9e: val=8'h0b;
	   8'h9f: val=8'hdb;
	   8'ha0: val=8'he0;
	   8'ha1: val=8'h32;
	   8'ha2: val=8'h3a;
	   8'ha3: val=8'h0a;
	   8'ha4: val=8'h49;
	   8'ha5: val=8'h06;
	   8'ha6: val=8'h24;
	   8'ha7: val=8'h5c;
	   8'ha8: val=8'hc2;
	   8'ha9: val=8'hd3;
	   8'haa: val=8'hac;
	   8'hab: val=8'h62;
	   8'hac: val=8'h91;
	   8'had: val=8'h95;
	   8'hae: val=8'he4;
	   8'haf: val=8'h79;
	   8'hb0: val=8'he7;
	   8'hb1: val=8'hc8;
	   8'hb2: val=8'h37;
	   8'hb3: val=8'h6d;
	   8'hb4: val=8'h8d;
	   8'hb5: val=8'hd5;
	   8'hb6: val=8'h4e;
	   8'hb7: val=8'ha9;
	   8'hb8: val=8'h6c;
	   8'hb9: val=8'h56;
	   8'hba: val=8'hf4;
	   8'hbb: val=8'hea;
	   8'hbc: val=8'h65;
	   8'hbd: val=8'h7a;
	   8'hbe: val=8'hae;
	   8'hbf: val=8'h08;
	   8'hc0: val=8'hba;
	   8'hc1: val=8'h78;
	   8'hc2: val=8'h25;
	   8'hc3: val=8'h2e;
	   8'hc4: val=8'h1c;
	   8'hc5: val=8'ha6;
	   8'hc6: val=8'hb4;
	   8'hc7: val=8'hc6;
	   8'hc8: val=8'he8;
	   8'hc9: val=8'hdd;
	   8'hca: val=8'h74;
	   8'hcb: val=8'h1f;
	   8'hcc: val=8'h4b;
	   8'hcd: val=8'hbd;
	   8'hce: val=8'h8b;
	   8'hcf: val=8'h8a;
	   8'hd0: val=8'h70;
	   8'hd1: val=8'h3e;
	   8'hd2: val=8'hb5;
	   8'hd3: val=8'h66;
	   8'hd4: val=8'h48;
	   8'hd5: val=8'h03;
	   8'hd6: val=8'hf6;
	   8'hd7: val=8'h0e;
	   8'hd8: val=8'h61;
	   8'hd9: val=8'h35;
	   8'hda: val=8'h57;
	   8'hdb: val=8'hb9;
	   8'hdc: val=8'h86;
	   8'hdd: val=8'hc1;
	   8'hde: val=8'h1d;
	   8'hdf: val=8'h9e;
	   8'he0: val=8'he1;
	   8'he1: val=8'hf8;
	   8'he2: val=8'h98;
	   8'he3: val=8'h11;
	   8'he4: val=8'h69;
	   8'he5: val=8'hd9;
	   8'he6: val=8'h8e;
	   8'he7: val=8'h94;
	   8'he8: val=8'h9b;
	   8'he9: val=8'h1e;
	   8'hea: val=8'h87;
	   8'heb: val=8'he9;
	   8'hec: val=8'hce;
	   8'hed: val=8'h55;
	   8'hee: val=8'h28;
	   8'hef: val=8'hdf;
	   8'hf0: val=8'h8c;
	   8'hf1: val=8'ha1;
	   8'hf2: val=8'h89;
	   8'hf3: val=8'h0d;
	   8'hf4: val=8'hbf;
	   8'hf5: val=8'he6;
	   8'hf6: val=8'h42;
	   8'hf7: val=8'h68;
	   8'hf8: val=8'h41;
	   8'hf9: val=8'h99;
	   8'hfa: val=8'h2d;
	   8'hfb: val=8'h0f;
	   8'hfc: val=8'hb0;
	   8'hfd: val=8'h54;
	   8'hfe: val=8'hbb;
	   8'hff: val=8'h16;
endcase

end 
endmodule
