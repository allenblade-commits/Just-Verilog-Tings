// This module acts as a simple wire connection (buffer).
module top_module(input in, output out);
    
    // Directly connecting the input 'in' to the output 'out'.
    assign out = in;
    
    // Note: Signals in Verilog are directional.
    // "assign in = out;" is NOT valid, as inputs cannot be assigned values.
    
endmodule
