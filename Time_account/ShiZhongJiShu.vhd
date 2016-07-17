--时钟计数模块--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY SHIZHONGJISHU IS   
PORT(clk_1:IN STD_LOGIC;                               --1Hz的时钟信号--
     SET:IN INTEGER RANGE 0 TO 3;       					 --模式选择信号，确定计数的初值--
	  START:IN STD_LOGIC;										 --开始计数信号--
	  UP,DOWN:IN STD_LOGIC;										 --按键中的加减信号--
     H1,H2,M1,M2,S1,S2:BUFFER INTEGER RANGE 0 TO 9;	 --输出时分秒的高低位给时钟显示模块--
	  PROCESS_END:OUT STD_LOGIC);								 --进程结束信号，告诉控制器时间到--
END ENTITY SHIZHONGJISHU;

ARCHITECTURE S OF SHIZHONGJISHU IS
SIGNAL SET_LAST:INTEGER RANGE 0 TO 3;                  --用来判断set值是否改变--
SIGNAL UP_LAST:STD_LOGIC;                              --用来判断up值是否改变--
SIGNAL DOWN_LAST:STD_LOGIC;									 --用来判断down值是否改变--
BEGIN


p1:PROCESS(clk_1,START,H1,H2,M1,M2,S1,S2,UP,UP_LAST,DOWN,DOWN_LAST,SET,SET_LAST)
BEGIN

IF(START='1')THEN 							--若收到开始信号则开始计时--
IF(clk_1'EVENT AND clk_1='1')THEN      --倒计时程序--
  IF(S2=0)THEN
  S2<=9;
   IF(S1=0)THEN
	S1<=5;
	  IF(M2=0)THEN 
	  M2<=9;
	    IF(M1=0)THEN
		 M1<=5;
		   IF(H2=0)THEN           --若全0则将计数器清零且将process_end信号置1--
			H1<=0;H2<=0;M1<=0;M2<=0;S1<=0;S2<=0;
			PROCESS_END<='1';            
			ELSE H2<=H2-1;
			END IF;
		 ELSE M1<=M1-1;
		 END IF;
	  ELSE M2<=M2-1;
	  END IF;
	ELSE S1<=S1-1;
	END IF;
  ELSE S2<=S2-1;
  END IF;
END IF;
ELSIF(START='0')THEN                 --若开始信号为0则进入时钟调整模块--
IF(SET/=SET_LAST AND SET=3)THEN      --设置自定义模式初值--
H1<=0;H2<=0;M1<=2;M2<=0;S1<=0;S2<=0; 
ELSIF(SET/=SET_LAST AND SET=2)THEN   --设置弱洗涤模式初值--
H1<=0;H2<=0;M1<=3;M2<=5;S1<=0;S2<=0;
ELSIF(SET/=SET_LAST AND SET=1)THEN   --设置标准模式初值--
H1<=0;H2<=1;M1<=0;M2<=5;S1<=0;S2<=0;
ELSIF(SET/=SET_LAST AND SET=0)THEN   --设置强洗涤模式初值--
H1<=0;H2<=1;M1<=3;M2<=0;S1<=0;S2<=0;
ELSIF(SET=SET_LAST)THEN              --通过按键方式改变计数器数值--
  IF(UP/=UP_LAST AND UP='1')THEN 
    IF(M2=9)THEN 
	    M1<=M1+1;
		 M2<=0;
	 ELSE M2<=M2+1;
	 END IF;
  ELSIF(DOWN/=DOWN_LAST AND DOWN='1')THEN
    IF(M2=0)THEN
	    M1<=M1-1;
		 M2<=9;
	 ELSE M2<=M2-1;
	 END IF;
  END IF;
ELSE NULL;
END IF;
SET_LAST<=SET;                          
UP_LAST<=UP;
DOWN_LAST<=DOWN;
ELSE NULL;
END IF;
END PROCESS p1;

END ARCHITECTURE S;			  
				  