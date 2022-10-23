//동시에 수행되는 블록킹 문장을 가진 always 블록
always @(posedge clk) begin
    a=b;
end
always @(posedge clk) begin
    b=a;
end

//동시에 수행되는 논블록킹 문장을 가진 always 블록.
always @(posedge clk) begin
    a<=b;
end
always @(posedge clk) begin
    b<=a;
end
