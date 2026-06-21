module encoder4x2_tb;
    reg I0;
    reg I1;
    reg I2;
    reg I3;
    wire A;
    wire B;

    encoder4x2 uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .A(A),
        .B(B)
    );
    initial begin
        $dumpfile("encoder4x2_tb.vcd");
        $dumpvars(0, encoder4x2_tb);
        $display("I3 I2 I1 I0 | A B");

        I0=1; I1=0; I2=0; I3=0;
        #10;
        $display("%b %b %b %b | %b %b",I3,I2,I1,I0,A,B);

        I0=0; I1=1; I2=0; I3=0;
        #10;
        $display("%b %b %b %b | %b %b",I3,I2,I1,I0,A,B);

        I0=0; I1=0; I2=1; I3=0;
        #10;
        $display("%b %b %b %b | %b %b",I3,I2,I1,I0,A,B);

        I0=0; I1=0; I2=0; I3=1;
        #10;
        $display("%b %b %b %b | %b %b",I3,I2,I1,I0,A,B);
        $finish;
    end 
endmodule