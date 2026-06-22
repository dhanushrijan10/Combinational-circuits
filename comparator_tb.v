module comparator_tb;
    reg A,B;
    wire EQ, GT, LT;

    comparator uut (
        .A(A),
        .B(B),
        .EQ(EQ),
        .GT(GT),
        .LT(LT)
    );
    initial begin
        $dumpfile("comparator_tb.vcd");
        $dumpvars(0, comparator_tb);
        $display("A B | EQ GT LT");

        A=0; B=0;
        #10;
        $display("%b %b | %b %b %b",A,B,EQ,GT,LT);


        A=0; B=1;
        #10;
        $display("%b %b | %b %b %b",A,B,EQ,GT,LT);


        A=1; B=0;
        #10;
        $display("%b %b | %b %b %b",A,B,EQ,GT,LT);


        A=1; B=1;
        #10;
        $display("%b %b | %b %b %b",A,B,EQ,GT,LT);
        $finish;
    end
endmodule


