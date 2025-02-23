module top_module( 
    input [7:0] in,    // 8-bit input
    output [7:0] out   // 8-bit output
);

    // Reverse the bit order of 'in' and assign to 'out'
    assign out = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]}; 

endmodule
