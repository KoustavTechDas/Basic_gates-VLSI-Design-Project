
module allgate(a, b, y1, y2, y3, y4, y5, y6, y7);
    input a, b;
    output y1, y2, y3, y4, y5, y6, y7;

    assign y1 = ~a;         // NOT
    assign y2 = a | b;      // OR
    assign y3 = a & b;      // AND
    assign y4 = ~(a | b);   // NOR
    assign y5 = ~(a & b);   // NAND
    assign y6 = a ^ b;      // XOR
    assign y7 = ~(a ^ b);   // XNOR
endmodule
