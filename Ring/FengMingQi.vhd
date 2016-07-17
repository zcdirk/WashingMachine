--蜂鸣器模块--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY FENGMINGQI IS
   PORT(clk_1,clk_500:IN STD_LOGIC;   --1Hz的时钟用于计时，500Hz作为蜂鸣器的声音频率--
	     PROCESS_END:IN STD_LOGIC;     --进程结束信号，也是蜂鸣器的开始信号--
	     FOUT:OUT STD_LOGIC);          --蜂鸣器的输出端口--
END ENTITY;

ARCHITECTURE F OF FENGMINGQI IS
SIGNAL COUNT:INTEGER RANGE 0 TO 5;    --用于计时的信号（响5s）--
BEGIN
P1:PROCESS(clk_500,clk_1,PROCESS_END)
BEGIN
  IF(PROCESS_END='1')THEN             --若进程结束--
     IF(clk_1'EVENT AND clk_1='1')THEN --每来一个时钟信号COUNT加1--
	  COUNT<=COUNT+1;
	  END IF;
	  IF COUNT>4  THEN              --若COUNT值为5则蜂鸣器停止发声--
	  COUNT<=4;
	  ELSE  FOUT<=clk_500;          --若不是5则发出500Hz的声响--
	  END IF;
  ELSE COUNT<=0;                   --若PROCESS_END为0则将0赋给COUNT--
  END IF;
END PROCESS p1;
END F;