module PRPG (Q,clk,rst);
    input clk,rst;
    output [2:0]Q;
    reg [2:0]Q;

    always @(posedge clk) begin
        if (rst) begin
            Q<=3'b110;
        end
        else begin
        Q[0]<=Q[2]^Q[0];
        Q[1]<=Q[0];
        Q[2]<=Q[1];
        end
    end
endmodule