`timescale 1ns / 1ns
`include "full_adder.v"

module full_adder_tb;
    reg A;
    reg B;
    reg Cin;
    wire S;
    wire Cout;

    top uut(A, B, Cin, S, Cout);

    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);

        A = 0;
        B = 0;
        Cin = 0;
        #20;

        A = 0;
        B = 0;
        Cin = 1;
        #20;

        A = 0;
        B = 1;
        Cin = 0;
        #20;

        A = 0;
        B = 1;
        Cin = 1;
        #20

        A = 1;
        B = 0;
        Cin = 0;
        #20;

        A = 1;
        B = 0;
        Cin = 1;
        #20;

        A = 1;
        B = 1;
        Cin = 0;
        #20;

        A = 1;
        B = 1;
        Cin = 1;
        #20;

        $display("Test Completed");
    end
endmodule