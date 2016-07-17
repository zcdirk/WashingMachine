--分频器模块，将50MHz时钟信号分成待使用的时钟信号--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY FENPINQI IS
   PORT(clear,clk:IN STD_LOGIC;                --复位信号和原始时钟（50MHz）--、
	     clk_1,clk_100,clk_500:BUFFER STD_LOGIC);       
END FENPINQI;

ARCHITECTURE F OF FENPINQI IS
   CONSTANT D1:INTEGER:=2;                --分出500Hz的计数模值--
	CONSTANT D2:INTEGER:=5;                     --从500Hz分出100Hz的计数模值--
	CONSTANT D3:INTEGER:=100;                   --从100Hz分出1Hz的计数模值--
	SIGNAL   m1:INTEGER RANGE 0 TO D1;          
	SIGNAL   m2:INTEGER RANGE 0 TO D2;
	SIGNAL   m3:INTEGER RANGE 0 TO D3;
BEGIN

p1:PROCESS(clear,clk)                          --分出500Hz--
BEGIN 
   IF clear='1'THEN
	m1<=1;clk_500<='0';
	ELSIF clk'EVENT AND clk='1'THEN	    
		 IF(m1>D1/2)THEN clk_500<='1';
		 ELSE clk_500<='0';
		 END IF;		 
		 IF(m1=D1)THEN m1<=1;
		 ELSE m1<=m1+1;
		 END IF;		 
   END IF;
END PROCESS p1;

p2: PROCESS(clear,clk_500)                     --分出100Hz--
BEGIN 
   IF clear='1'THEN
	m2<=1;clk_100<='0';
	ELSIF clk_500'EVENT AND clk_500='1'THEN
	    IF(m2>D2/2)THEN clk_100<='1';
		 ELSE clk_100<='0';
		 END IF;
		 IF(m2=D2)THEN m2<=1;
		 ELSE m2<=m2+1;
		 END IF;
	END IF;
END PROCESS p2;

p3: PROCESS(clear,clk_100)                     --分出1Hz--
BEGIN 
   IF clear='1'THEN
	m3<=1;clk_1<='0';
	ELSIF clk_100'EVENT AND clk_100='1'THEN
	    IF(m3>D3/2)THEN clk_1<='1';
		 ELSE clk_1<='0';
		 END IF;
		 IF(m3=D3)THEN m3<=1;
		 ELSE m3<=m3+1;
		 END IF;
	END IF;
END PROCESS p3;

END F;
