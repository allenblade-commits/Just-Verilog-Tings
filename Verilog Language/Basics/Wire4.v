// This module assigns multiple outputs based on the given inputs.
module top_module( 
    input a, b, c,   // Three input signals
    output w, x, y, z // Four output signals
);
    
    // Assigning inputs to outputs
    assign w = a; // Output 'w' takes the value of 'a'
    assign x = b; // Output 'x' takes the value of 'b'
    assign y = b; // Output 'y' also takes the value of 'b'
    assign z = c; // Output 'z' takes the value of 'c'

endmodule
