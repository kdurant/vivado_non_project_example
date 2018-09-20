`timescale  1 ns/1 ps

module top
(
    input   wire                clk,
    /*port*/
    output  reg  [03:00]        led
);
reg[31:0] timer_cnt; //定义一个 32 位癿计数器
//============================================================
// LED 灯控刢
//=============================================================
always@(posedge clk) //输入时钟癿上升沿检测
begin
    if(timer_cnt >= 32'd49_999_999) //开収板使用癿晶振为 50MHz，1 秒计数 (50M*1-1=49_999_999)
    begin
        led <= ~led; //LED 信号翻转
        timer_cnt <= 32'd0; //计数器计刡 1 秒，计数器清零
    end
    else
    begin
        led <= led; //LED 信号保持
        timer_cnt <= timer_cnt + 32'd1; //计数器加 1
    end
end
endmodule
