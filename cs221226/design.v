module task2(clk,reset, count);
    input clk, reset;
    output reg [1:0] count;

  always @(posedge clk or posedge reset) begin
      if (RST)
            count <= 2'b00;
       else
            count <= C + 1;
    end

endmodule