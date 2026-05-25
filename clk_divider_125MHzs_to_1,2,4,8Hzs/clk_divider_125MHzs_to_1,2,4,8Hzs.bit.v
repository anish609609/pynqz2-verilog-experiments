`timescale 1ns / 1ps
module diff_clks_on_leds(
    input clk,reset,
    output reg clk8f,clk4f,clk2f,clk1f
    );
reg [22:0]counter8f;
always@(posedge clk or posedge reset)begin 
if(reset)begin 
clk1f<=1;
clk2f<=1;
clk4f<=1;
clk8f<=1;
counter8f<=0;
end
else begin 
counter8f<=counter8f+1;
if (counter8f==7812499)begin 
counter8f<=0;
clk8f<=~clk8f;
if (!clk8f)begin 
clk4f<=~clk4f; 
if (!clk4f)begin 
clk2f<=~clk2f; 
if (!clk2f)begin 
clk1f<=~clk1f; 
end 
end
end
end
end
end 
endmodule
