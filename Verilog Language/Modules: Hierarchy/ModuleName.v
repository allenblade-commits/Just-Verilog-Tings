module top_module ( 
    input a,    // Input signal 'a'
    input b,    // Input signal 'b'
    input c,    // Input signal 'c'
    input d,    // Input signal 'd'
    output out1, // Output signal 'out1'
    output out2  // Output signal 'out2'
);

    // Instantiating "mod_a" with instance name "m1"
    // Named port connections improve readability and reduce connection errors
    mod_a m1 (
        .out1(out1),  // Connects mod_a's 'out1' to top_module's 'out1'
        .out2(out2),  // Connects mod_a's 'out2' to top_module's 'out2'
        .in1(a),      // Connects mod_a's 'in1' to top_module's 'a'
        .in2(b),      // Connects mod_a's 'in2' to top_module's 'b'
        .in3(c),      // Connects mod_a's 'in3' to top_module's 'c'
        .in4(d)       // Connects mod_a's 'in4' to top_module's 'd'
    );

endmodule
