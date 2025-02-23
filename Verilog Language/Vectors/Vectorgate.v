module top_module( 
    input [2:0] a,    // 3-bit input 'a'
    input [2:0] b,    // 3-bit input 'b'
    output [2:0] out_or_bitwise,  // Bitwise OR result
    output out_or_logical,        // Logical OR result
    output [5:0] out_not          // Bitwise NOT result concatenated for 'a' and 'b'
);

    // Bitwise OR: Performs OR operation bit-by-bit on 'a' and 'b'
    assign out_or_bitwise = a | b; 

    // Logical OR: Returns '1' if either 'a' or 'b' is nonzero, else '0'
    assign out_or_logical = a || b;

    // Bitwise NOT of 'b' stored in upper 3 bits (out_not[5:3])
    assign out_not[5:3] = ~b; 

    // Bitwise NOT of 'a' stored in lower 3 bits (out_not[2:0])
    assign out_not[2:0] = ~a; 

endmodule
