module top_module( 
    input [3:0] in,   // 4-bit input vector
    output out_and,   // Logical AND reduction result
    output out_or,    // Logical OR reduction result
    output out_xor    // Logical XOR reduction result
);

    // Reduction AND: Returns '1' if all bits of 'in' are 1, otherwise '0'
    assign out_and = &in; 

    // Reduction OR: Returns '1' if any bit of 'in' is 1, otherwise '0'
    assign out_or = |in;  

    // Reduction XOR: Computes XOR of all bits in 'in'
    assign out_xor = ^in;  

endmodule
