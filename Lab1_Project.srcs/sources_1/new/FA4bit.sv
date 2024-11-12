`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:09:50 PM
// Design Name: 
// Module Name: FA4bit
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


module FA4bit(
input logic [3:0] a,
input logic [3:0] b,
input logic c_in,
output logic c_out,
output logic [3:0] s
);
logic w1, w2, w3;
FA G1( .s(s[0]) , .c_out(w1) , .c_in(c_in), .a(a[0]) , .b(b[0]) );
FA G2( .s(s[1]) , .c_out(w2) , .c_in(w1), .a(a[1]) , .b(b[1]) );
FA G3( .s(s[2]) , .c_out(w3) , .c_in(w2), .a(a[2]) , .b(b[2]) );
FA G4( .s(s[3]) , .c_out(c_out) , .c_in(w3), .a(a[3]) , .b(b[3]) );


endmodule
