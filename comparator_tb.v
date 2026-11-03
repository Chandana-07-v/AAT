
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
    A = 2'd04;
    B = 2'd04;
    #10;

    // Test Case 2: A < B
    A = 2'd09;
    B = 2'd05;
    #10;

    // Test Case 3: A = B
    A = 2'd02;
    B = 2'd12;
    #10;

    A = 2'd15;
    B = 2'd00;
    #10;

    A = 2'd00;
    B = 2'd15;
    #10;

    $finish;
end

initial begin
    $monitor("A=%b B=%b | GT=%b LT=%b EQ=%b",
             A, B, A_gt_B, A_lt_B, A_eq_B);
end

endmodule
