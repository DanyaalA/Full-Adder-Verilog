`include "half_adder.v"

module top (A, B, Cin, S, Cout);
    input A;
    input B;
    input Cin;
    output S;
    output C;
    output Cout;
    output tempC;
    output M;

    half_adder HA0(A, B, M, C);
    half_adder HA1(M, Cin, S, tempC);

    assign Cout = C ^ tempC;
endmodule

