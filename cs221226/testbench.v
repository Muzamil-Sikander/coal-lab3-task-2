module tb;

    reg clk;
    reg reset;
    wire [1:0] count;

    
    task2 dut (
             .clk(clk),
             .reset(reset),
             .count(count));
  
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
     end

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 0;
        #10
        reset = 1;
        #10
        reset = 0;     
        #20 
        reset = 1;
        #10 
        reset = 0;
        #20 
        reset = 1;
      $finish;
      
    end

endmodule     
