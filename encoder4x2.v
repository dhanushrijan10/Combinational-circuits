module encoder4x2 (
    input I0,
    input I1,
    input I2,
    input I3,
    output A,
    output B
);
    assign A = I2 | I3;
    assign B = I1 | I3;
endmodule
