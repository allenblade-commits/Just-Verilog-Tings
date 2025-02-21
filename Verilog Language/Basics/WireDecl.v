// Disable implicit net declaration to avoid unintended wire creation.
`default_nettype none  

// This module implements a basic combinational logic circuit.
module top_module(
    input a,      // First input
    input b,      // Second input
    input c,      // Third input
    input d,      // Fourth input
    output out,   // Normal output
    output out_n  // Inverted output
); 

    // Internal wire declarations
    wire w, x, y;

    // AND operations on input pairs
    assign w = a & b;  // w = a AND b
    assign x = c & d;  // x = c AND d

    // OR operation between intermediate results
    assign y = x | w;  // y = (a AND b) OR (c AND d)

    // Output assignments
    assign out = y;    // Normal output
    assign out_n = ~y; // Inverted output

endmodule
