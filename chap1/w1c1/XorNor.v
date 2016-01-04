// ===========================================================
// XorNor: Combinational logic using ^ and ~|.
// This module represents simple combinational logic including
// and XOR and a NOR expression.
// ===========================================================

module XorNor(output X, Y, input A, B, C);
	wire x; // To illustrate use of internal wiring
	//
	assign #1 X = x; // Verilog is case-sensitive; 'X' and 'x' are different.
	//
	assign #10 x = A ^ B;
	assign #10 Y = ~(x | C);
	//
endmodule // XorNor