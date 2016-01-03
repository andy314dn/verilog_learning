module Intro_Top (output X, Y, Z, input A, B, C, D);
    //
    wire ab, bc, q, qn; // Wires for internal connectivity
    //
    
    assign #1 Z = ~qn; // Inverter by continuous assignment statement
    
    //
    AndOr InputCombo01 (.X(ab), .Y(bc), .A(A), .B(B), .C(C));
    SR SRLatch01 (.Q(q), .Qn(qn), .S(bc), .R(D));
    XorNor OutputCombo01 (.X(X), .Y(Y), .A(ab), .B(q), .C(qn));
    //
endmodule // Intro_Top.v
