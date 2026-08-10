// Testbench for 2:1 Multiplexer

`timescale 1ns/1ps

module mux_2to1_tb;

    reg I0;
    reg I1;
    reg S;
    wire Y;

    // Instantiate the MUX
    mux_2to1 uut (
        .I0(I0),
        .I1(I1),
        .S(S),
        .Y(Y)
    );

    initial begin

        $dumpfile("mux_2to1.vcd");
        $dumpvars(0, mux_2to1_tb);

        $monitor("Time=%0t | I0=%b I1=%b S=%b | Y=%b",
                 $time, I0, I1, S, Y);

        // Test Case 1
        I0 = 0; I1 = 1; S = 0;
        #10;

        // Test Case 2
        I0 = 1; I1 = 0; S = 0;
        #10;

        // Test Case 3
        I0 = 0; I1 = 1; S = 1;
        #10;

        // Test Case 4
        I0 = 1; I1 = 0; S = 1;
        #10;

        // Test Case 5
        I0 = 0; I1 = 0; S = 0;
        #10;

        // Test Case 6
        I0 = 1; I1 = 1; S = 1;
        #10;

        $finish;
    end

endmodule