// This module implements an XNOR gate.
module top_module( 
    input a,  // First input signal
    input b,  // Second input signal
    output out // Output signal
);
    
    // Logical XNOR operation: 'out' is HIGH when 'a' and 'b' are the same (both 0 or both 1).
    assign out = a ~^ b;

endmodule
