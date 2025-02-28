module enc_tb;

reg enb;
reg [3:0] a;
wire [1:0] c;

encoder CONNECTION (enb,a,c);

initial
begin
 enb=1'b0;
 #10;
 enb=1'b1;
 a=4'd1;
 #10;
 a=4'd2;
 #10;
 a=4'd4;
 #10 $finish;
end

initial
$monitor("enb=%0d | a=%0d | c=%0b", enb,a,c);

endmodule




