`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 11:27:12 PM
// Design Name: 
// Module Name: FA
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


module FA(
input logic a,
input logic b,
input logic c_in,
output logic c_out,
output logic s
);
logic w1, w2, w3;
HA G1( .s(w1) , .c(w2), .a(a) , .b(b) );
HA G2( .s(s) , .c(w3), .a(w1) , .b(c_in) );
orgate G3( .f(c_out) , .a(w2) , .b(w3) );
endmodule