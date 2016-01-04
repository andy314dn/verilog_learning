// ===========================================================
// AndOr: combinational logic using & and |.
// This module represents simple combinational logic including
// and AND and an OR expression.
// ===========================================================

module AndOr(output X, Y, input A, B, C);
  //
  assign #10 X = A & B;
  assign #10 Y = B | C;
  //
endmodule // AndOr