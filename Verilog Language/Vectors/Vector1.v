`default_nettype none  // Disable implicit nets to prevent unintended connections

module top_module( 
    input wire [15:0] in,   // 16-bit input signal
    output wire [7:0] out_hi, // Upper 8 bits of 'in'
    output wire [7:0] out_lo  // Lower 8 bits of 'in'
);

    // Assigning the upper 8 bits (bits 15 to 8) of 'in' to 'out_hi'
    assign out_hi = in[15:8];

    // Assigning the lower 8 bits (bits 7 to 0) of 'in' to 'out_lo'
    assign out_lo = in[7:0];

endmodule
