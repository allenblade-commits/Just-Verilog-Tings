module top_module (
	input a,   // Input port 'a'
	input b,   // Input port 'b'
	output out // Output port 'out'
);

	// Instantiate module "mod_a" with instance name "inst1"
	// Port connections are done by name
	mod_a inst1 ( 
		.in1(a), 	// Connects "a" to "in1" of mod_a
		.in2(b),	// Connects "b" to "in2" of mod_a
		.out(out)	// Connects "out" of mod_a to "out" of top_module
		// Note: "out" in mod_a and "out" in top_module are different entities
	);

	/*
	// Alternative way: Instantiating mod_a using positional connections
	// Here, the ports are connected in the order they are defined in mod_a
	mod_a inst2 ( a, b, out ); // Connects a -> in1, b -> in2, and out -> out
	*/

endmodule
