`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:02:47 PM
// Design Name: 
// Module Name: FA4bit_Sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FA4bit_Sub(
input logic [3:0] a,
input logic [3:0] b,
input logic m,
output logic c_out,
output logic [3:0] s
);
logic w1, w2, w3, w4, w5, w6, w7;
xorgate (w4,m,b[0]);
xorgate (w5,m,b[1]);
xorgate (w6,m,b[2]);
xorgate (w7,m,b[3]);

FA G1( .s(s[0]) , .c_out(w1) , .c_in(m), .a(a[0]) , .b(w4) );
FA G2( .s(s[1]) , .c_out(w2) , .c_in(w1), .a(a[1]) , .b(w5) );
FA G3( .s(s[2]) , .c_out(w3) , .c_in(w2), .a(a[2]) , .b(w6) );
FA G4( .s(s[3]) , .c_out(c_out) , .c_in(w3), .a(a[3]) , .b(w7) );



endmodule
