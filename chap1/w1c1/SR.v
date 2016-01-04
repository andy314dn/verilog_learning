// ===========================================================
// SR: An S-R Latch using ~ and &.
// This module represents the functionality of a simple latch,
// which is a sequential logic device, using combinational
// ~AND expression connected to feed back on each other.
// ===========================================================

module SR(output Q, Qn, input S, R);
	wire q, qn; // For internal wiring.
	//
	assign #1 Q = q;
	assign #1 Qn = qn;
	//
	assign #10 q = ~(S & qn);
	assign #10 qn = ~(R & q);
	//
endmodule // SR.