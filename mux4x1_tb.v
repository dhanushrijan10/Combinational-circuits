module mux4x1_tb;
    reg I0;
    reg I1;
    reg I2;
    reg I3;
    reg S0;
    reg S1;
    wire Y;

    mux4x1 uut(
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S0(S0),
        .S1(S1),
        .Y(Y)
    );
    initial begin
        $dumpfile("mux4x1_tb.vcd");
        $dumpvars(0, mux4x1_tb);
        $display("I0 I1 I2 I3 S0 S1 | Y");

        I0 = 0; I1 =0; I2 = 0; I3 = 0; S0 = 0; S1 = 1;
        #10;
        $display("%b %b %b %b %b %b | %b",I0,I1,I2,I3,S0,S1,Y);
        
        I0 = 1; I1 =1; I2 = 0; I3 = 0; S0 = 0; S1 = 0;
        #10;
        $display("%b %b %b %b %b %b | %b",I0,I1,I2,I3,S0,S1,Y);

        I0 = 1; I1 =1; I2 = 0; I3 = 1; S0 = 1; S1 = 0;
        #10;
        $display("%b %b %b %b %b %b | %b",I0,I1,I2,I3,S0,S1,Y);

        I0 = 1; I1 =1; I2 = 1; I3 = 1; S0 = 1; S1 = 1;
        #10;
        $display("%b %b %b %b %b %b | %b",I0,I1,I2,I3,S0,S1,Y);
        $finish;
    end
endmodule
