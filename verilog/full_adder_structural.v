// Mô tả module cổng XOR 2 ngõ vào
module XOR2(output wire OUT, input wire A, B);
    assign OUT = A ^ B;
endmodule

// Mô tả module cổng AND 2 ngõ vào
module AND2(output wire OUT, input wire A, B);
    assign OUT = A & B;
endmodule

// Mô tả module cổng OR 2 ngõ vào
module OR2(output wire OUT, input wire A, B);
    assign OUT = A | B;
endmodule

// Bộ cộng 1 bit viết theo kiểu cấu trúc
module full_adder_structural(
    input wire A,
    input wire B,
    input wire cin,
    output wire sum,
    output wire cout
);
    // Tín hiệu trung gian
    wire XOR1_out, AND1_out, AND2_out;

    // sum = a ^ b ^ cin
    XOR2 u1(XOR1_out, A, B);       // xor1_out = a ^ b
    XOR2 u2(sum, XOR1_out, cin);   // sum = (a ^ b) ^ cin

    // cout = (a & b) | (cin & (a ^ b))
    AND2 u3(AND1_out, A, B);       // and1_out = a & b
    AND2 u4(AND2_out, XOR1_out, cin); // and2_out = (a ^ b) & cin
    OR2  u5(cout, AND1_out, AND2_out); // cout = and1_out | and2_out
endmodule
