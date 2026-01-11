`timescale 1ns / 1ps

module sop_som_pom_sim(   );
reg sa, sb, sc;
wire sz1, sz2, sz3;
//sop_som_pom u1( .a(sa), .b(sb), .c(sc), .z1(sz1), .z2(sz2), .z3(sz3) );
sop_som_pom u1( sa, sb, sz1, sz2, sz3 );

initial begin
    {sa, sb, sc} = 3'b0;
    repeat(7) ;  begin
        #100 {sa, sb, sc} = {sa, sb, sc} +1 ;
    end    
        #100 $finish( );
end

endmodule
