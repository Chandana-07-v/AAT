
module comparator_tb;

reg [3:0] A, B;

wire A_gt_B, A_lt_B, A_eq_B;

comparator uut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_lt_B(A_lt_B),
    .A_eq_B(A_eq_B)
);

initial begin

    // Test Case 1: A > B
    A = 4'b1010;
    B = 4'b0101;
    #10;

    // Test Case 2: A < B
    A = 4'b0010;
    B = 4'b1000;
    #10;

    // Test Case 3: A = B
    A = 4'b1100;
    B = 4'b1100;
    #10;

    $finish;
end

initial begin
    $monitor("A=%b B=%b | GT=%b LT=%b EQ=%b",
             A, B, A_gt_B, A_lt_B, A_eq_B);
end

endmodule
