module encoder(input enb, input[3:0] a,output reg [1:0]c);

always@(*)
 begin
 
   if(enb)
    begin
      case(a)
        4'b0001:c=2'd0;
        4'b0010:c=2'd1;
        4'b0100:c=2'd2;
        4'b1000:c=2'd3;
	    default:c=2'bxx;
      endcase
    end  
   
   else
    c=2'bx;
	
  end
endmodule  