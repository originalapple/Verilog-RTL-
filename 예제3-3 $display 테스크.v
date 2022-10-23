//따옴표 안의 문자열을 출력.
$display("Hello Verilog World");
$display($time); //현재 시간을 출력

reg [0:40] virtual_addr;
$display("At time %d virtual address si %d",$time,virtual_addr);
reg [4:0] port_id; $display("ID of the port is %b",port_id);
//port_id의 값 5를 2진수로 출력

reg [3:0] bus; $display("Bus value is %b",bus);
//x 문자를 출력, 4비트 버스의 값(10xx) 신호충돌 을 2진수로 출력

//계층의 인자를 출력 
$display("This is string is displayed from %m level of hierarchy"):
