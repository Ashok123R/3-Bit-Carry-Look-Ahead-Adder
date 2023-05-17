module TestModule;
	reg [2:0] a; //Inputs
	reg [2:0] b;
	reg cin;
	wire [2:0] sum; // outputs
      wire cout;  

			
CLA_Adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));  // Instantiate the unit under Test (UUT) 
initial begin
	a = 000; b=000; cin = 0; #100;
	a = 2;b= 3; cin= 0; #100;
end

initial begin $monitor("%t|a=%a|b=%b|cin=%cin|sum=%sum|cout=%cout,$time,a,b,cin,sum,cout);
end
end endmodule