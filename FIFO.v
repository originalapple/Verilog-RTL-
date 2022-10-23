/*
clk	클럭
reset	리셋
write_en	데이터를 쓰고자 할 때 1을 입력
write_data	쓰고자 하는 데이터 값
full	fifo가 꽉찬 경우 1 아니면 0
read_en	데이터를 읽고자 할 때 1을 입력
read_data	FIFO로부터 읽혀진 데이터 값
empty	FIFO가 비어있으면 1 아니면 0
*/

module sync_fifo(
    input wire clk,
    input wire reset,
    //write
    output reg full,
    input wire write_en,
    input wire [7:0] write_data,
    //read
    output reg empty,
    input wire read_en,
    input [7:0] read_data
);

//internals
reg [7:0] mem[7:0];
reg [3:0] write_ptr;
reg       write_ptr_nxt;
reg       write_ptr_phase;
reg       write_ptr_phase_nxt;

