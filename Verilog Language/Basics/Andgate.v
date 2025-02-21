// This module performs a simple AND operation between two inputs.
module top_module( 
    input a,  // First input signal
    input b,  // Second input signal
    output out // Output signal
);
    
    // Logical AND operation: Output 'out' is HIGH only when both 'a' and 'b' are HIGH.
    assign out = a & b;

endmodule
