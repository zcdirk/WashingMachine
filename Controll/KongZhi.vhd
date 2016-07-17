--控制模块--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY KONGZHI IS
PORT(GC,SW,YY,MS,DY,QT,PROCESS_END:IN STD_LOGIC;  --过程、水位、预约、模式、电源、启停、过程结束（由计时器发出的信号）--
     SET:BUFFER INTEGER RANGE 0 TO 3;             --模式选择--
	  START:BUFFER STD_LOGIC;      					  --开始信号--
	  ZS_START,FS_START:OUT STD_LOGIC;             --注水开始，放水开始--
	  clk_1:IN STD_LOGIC;								  --1Hz的时钟信号--
	  SW_MODE:BUFFER INTEGER RANGE 0 TO 2;			  --水位模式选择--
	  CONTROLL:BUFFER STD_LOGIC;                   --控制信号--
	  GC_MODE:BUFFER INTEGER RANGE 0 TO 2);        --过程选择信号--
END ENTITY KONGZHI;

ARCHITECTURE K OF KONGZHI IS 
SIGNAL QT_LAST,SW_LAST,GC_LAST,MS_LAST:STD_LOGIC;
SIGNAL TIME_TEMP:INTEGER;
BEGIN
MAIN:PROCESS(DY)
BEGIN
--判断启停键是否被按下--
IF(QT/=QT_LAST AND QT='1')THEN START<=NOT START;
END IF;
QT_LAST<=QT;
IF(DY='0')THEN NULL;   --判断电源是否正常接通，若未正常接通则不工作--
ELSE 
 --在暂停时可对水位，过程，模式进行选择--
 IF(START='0')THEN
  IF(SW/=SW_LAST AND SW='1')THEN 
    IF(SW_MODE=2)THEN
	  SW_MODE<=0;
	 ELSE  SW_MODE<=SW_MODE+1;
	 END IF;
  ELSIF(GC/=GC_LAST AND GC='1')THEN
    IF(GC_MODE=2)THEN 
	  GC_MODE<=0;
	 ELSE  GC_MODE<=GC_MODE+1;
	 END IF;
  ELSIF(MS/=MS_LAST AND MS='1')THEN
    IF(SET=3)THEN
	  SET<=0;
	 ELSE SET<=SET+1;
	 END IF;
  END IF;
  SW_LAST<=SW;
  GC_LAST<=GC; 
  MS_LAST<=MS;
 ELSE       --若启动则进行相应模式的工作
  IF(clk_1'EVENT AND clk_1='1')THEN
  CASE SET IS 
--------------0,强洗涤----------------------------
    WHEN 0 => TIME_TEMP<=TIME_TEMP+1;
	  IF(TIME_TEMP<60)THEN                 --注水
	  ZS_START<='1';
	  ELSIF(TIME_TEMP<1860)THEN            --洗涤
	  CONTROLL<='1';
	  ELSIF(TIME_TEMP<4260)THEN            --漂洗
	  CONTROLL<=NOT CONTROLL;
	  ELSIF(TIME_TEMP<5460)THEN            --脱水
	  FS_START<='1';
	  CONTROLL<='1';
	  ELSE TIME_TEMP<=0;
	  END IF;
--------------1,标准----------------------------
	 WHEN 1 => TIME_TEMP<=TIME_TEMP+1;
	  IF(TIME_TEMP<60)THEN                 --注水
	  ZS_START<='1';
	  ELSIF(TIME_TEMP<1260)THEN            --洗涤
	  CONTROLL<='1';
	  ELSIF(TIME_TEMP<3060)THEN            --漂洗
	  CONTROLL<=NOT CONTROLL;
	  ELSIF(TIME_TEMP<3960)THEN            --脱水
	  FS_START<='1';
	  CONTROLL<='1';
	  ELSE TIME_TEMP<=0;
	  END IF;
--------------2,弱洗涤----------------------------
	 WHEN 2 => TIME_TEMP<=TIME_TEMP+1;
	  IF(TIME_TEMP<60)THEN                 --注水
	  ZS_START<='1';
	  ELSIF(TIME_TEMP<660)THEN            --洗涤
	  CONTROLL<='1';
	  ELSIF(TIME_TEMP<1560)THEN            --漂洗
	  CONTROLL<=NOT CONTROLL;
	  ELSIF(TIME_TEMP<2160)THEN            --脱水
	  FS_START<='1';
	  CONTROLL<='1';
	  ELSE TIME_TEMP<=0;
	  END IF;
--------------3,自定义----------------------------
	 WHEN 3 => TIME_TEMP<=1;
	  IF(PROCESS_END/='0')THEN
      IF(GC_MODE=0)THEN
		 CONTROLL<='1';
		ELSIF(GC_MODE=1)THEN
		 CONTROLL<=NOT CONTROLL;
		ELSE
		 FS_START<='1';
	    CONTROLL<='1';
		END IF;
	  ELSE TIME_TEMP<=0;
	  END IF;
  END CASE;
 END IF; 
END IF;
END IF;
IF(TIME_TEMP=0)THEN 
START<='0';
END IF;
END PROCESS MAIN;
END K;