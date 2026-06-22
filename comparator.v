module comparator (
    input A,
    input B,
    output EQ,
    output GT,
    output LT
);
    assign EQ = ~(A ^ B);
    assign GT = A & ~B;
    assign LT = ~A & B;
endmodule