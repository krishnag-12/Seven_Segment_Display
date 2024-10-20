module tb_seven_segment_display;

reg [3:0] bcd; reg clk;
wire [6:0] display;

seven_segment uut (. bcd (bcd ) ,. display ( display ));

initial begin

bcd = 4'b0000;

end

initial begin

bcd = 4'b0001; #100;
bcd = 4'b0011; #100;
bcd = 4'b1000; #100;
bcd = 4'b1001; #100;
#100;

end

endmodule