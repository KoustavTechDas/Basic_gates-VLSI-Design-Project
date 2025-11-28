
module allgate_tb();
    reg t_a, t_b;
    wire t_y1, t_y2, t_y3, t_y4, t_y5, t_y6, t_y7;

    // Instantiate the allgate module
    allgate dut(
        .a(t_a), .b(t_b), 
        .y1(t_y1), .y2(t_y2), .y3(t_y3), .y4(t_y4), .y5(t_y5), .y6(t_y6), .y7(t_y7)
    );

    initial begin
        // Monitor the outputs
        $display("t_a t_b y1 y2 y3 y4 y5 y6 y7");
        $monitor("%b   %b   %b  %b  %b  %b  %b  %b  %b", t_a, t_b, t_y1, t_y2, t_y3, t_y4, t_y5, t_y6, t_y7);
        
        // Test case 1: t_a = 0, t_b = 0
        t_a = 0;
        t_b = 0;
        #10;  // Wait for 10 time units

        // Test case 2: t_a = 0, t_b = 1
        t_a = 0;
        t_b = 1;
        #10;

        // Test case 3: t_a = 1, t_b = 0
        t_a = 1;
        t_b = 0;
        #10;

        // Test case 4: t_a = 1, t_b = 1
        t_a = 1;
        t_b = 1;
        #10;

        // Stop the simulation
        $stop;
    end
endmodule
