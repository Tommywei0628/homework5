module  PRPG_tb;
  reg clk,rst;
  wire [2:0]Q;
  parameter PERIOD=20;
  parameter real DUTY_CYCLE=0.5;
  parameter OFFSET=0;
initial begin
  #OFFSET;
  forever begin
    clk=1'b1;
    #(PERIOD-(PERIOD*DUTY_CYCLE)) clk=1'b0;
    #(PERIOD*DUTY_CYCLE);
  end
end
initial begin
  rst=1'b1;
  #20   rst=1'b0;
  #200 $finish;
end
initial begin
$dumpfile("PRPG.vcd");
  $dumpvars(0, PRPG_tb);
end
  PRPG PRPG_tb(
    .clk(clk),
    .rst(rst),
    .Q(Q)
  );
endmodule