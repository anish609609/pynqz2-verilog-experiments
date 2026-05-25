`timescale 1ns / 1ps
module rgb_blinking(
input sysclk,reset,output reg r,g,b);
reg [27:0]counter;
reg [2:0]state;
parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100,
          S5 = 3'b101,
          S6 = 3'b110,
          S7 = 3'b111;
always@(posedge sysclk or posedge reset)begin 
if(reset)begin 
r<=0;
g<=0;
b<=0;
state<=0;
counter<=0;
end
else begin 
counter<=counter+1;
if(counter==124999999)begin
counter<=0;
case(state)
    S0: begin 
    r<=1;
    g<=0;
    b<=0;
    end
    S1: begin 
    r<=0;
    g<=1;
    b<=0;
    end
    S2: begin 
    r<=0;
    g<=0;
    b<=1;
    end
    S3: begin 
    r<=1;
    g<=1;
    b<=0;
    end
    S4: begin 
    r<=0;
    g<=1;
    b<=1;
    end
    S5: begin 
    r<=1;
    g<=0;
    b<=1;
    end
    S6: begin 
    r<=1;
    g<=1;
    b<=1;
    end
    S7: begin 
    r<=0;
    g<=0;
    b<=0;
    end
endcase
state<=state+1;
end
end
end 
endmodule
