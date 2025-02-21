// This module implements a NOR gate.
module top_module( 
    input a,  // First input signal
    input b,  // Second input signal
    output out // Output signal
);
    
    // Logical NOR operation: 'out' is HIGH only when both 'a' and 'b' are LOW.
    assign out = ~(a | b);

endmodule

