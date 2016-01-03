// ===========================================================
// Intro_Top: Top level of a simple design using Verilog
// continuous assignment statements.
// 
// This module contains the top structure of the design, which
// is made up of three lower-level modules and one inverter gate.
// The structure is represented by module instances.
//
// All ports are wire types, because this is the default; also,
// there is no storage of state in combinational statements.
// ===========================================================
module Intro_Top (output X, Y, Z, input A, B, C, D);
    //
    wire ab, bc, q, qn; // Wires for internal connectivity
    //
    // Implied wires may be assumed in this combinational design,
	// when connecting declared ports to instance ports.
	// The #1 is a delay time, in `timescale units:
	//
	
    assign #1 Z = ~qn; // Inverter by continuous assignment statement
    
    // 
    AndOr InputCombo01 (.X(ab), .Y(bc), .A(A), .B(B), .C(C));
    SR SRLatch01 (.Q(q), .Qn(qn), .S(bc), .R(D));
    XorNor OutputCombo01 (.X(X), .Y(Y), .A(ab), .B(q), .C(qn));
    //
endmodule // Intro_Top.v
