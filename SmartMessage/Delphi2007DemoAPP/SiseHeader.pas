unit SiseHeader;

interface

type
//--------------------------------
//  FUTURES
//--------------------------------
//--- 종목Master

pFutMaster = ^TFutMaster;
TFutMaster = packed record
  issue : array[0..8] of char;    // 종목코드
  yesp  : real;                   // 전일종가
  hlimp : real;                   // 상한가
  llimp : real;                   // 하한가
  bas   : real;                   // 기준가
  end;

//--- 5단계호가
pFut5Hoga = ^TFut5Hoga;
TFut5Hoga = packed record
  issue   : array[0..8] of char;    // 종목코드
  mdo     : array[0..4] of real;    // 매도호가
  mdovol  : array[0..4] of integer; // 매도호가잔량
  mdocnt  : array[0..4] of integer; // 매도호가건수
  tmdovol : integer;                // 총매도호가잔량
  tmdocnt : integer;                // 총매도호가건수
  msu     : array[0..4] of real;    // 매수호가
  msuvol  : array[0..4] of integer; // 매수호가잔량
  msucnt  : array[0..4] of integer; // 매수호가건수
  tmsuvol : integer;                // 총매수호가잔량
  tmsucnt : integer;                // 총매수호가건수
  time    : integer;                // time
  end;

//--- 체결
pFutExec = ^TFutExec;
TFutExec = packed record
  issue : array[0..8] of char;    // 종목코드
  gap : real;                     // 전일대비(권배락시는 기준가대비)
  cup : real;                     // 현재가
  sip : real;                     // 시가
  hip : real;                     // 고가
  lip : real;                     // 저가
  vol : integer;                  // 누적거래량
  amt : real;                     // 누적거래대금
  time: integer;                  // time
  side: array[0..1] of char;      // side
  ydiffSign : array[0..1] of char;   //전일대비기호  (5:하락 2:상승 )
  chgrate   : array[0..6]  of char  //; _chgrate   : char;  // [float ,  6.2] 등락율
  end;

//--------------------------------
//  Option
//--------------------------------
//--- 종목Master
pOptMaster = ^TOptMaster;
TOptMaster = packed record
  issue : array[0..8] of char;    // 종목코드
  yesp  : real;                   // 전일종가
  hlimp : real;                   // 상한가
  llimp : real;                   // 하한가
  bas   : real;                   // 기준가
  end;

//--- 5단계호가
pOpt5Hoga = ^TOpt5Hoga;
TOpt5Hoga = packed record
  issue   : array[0..8] of char;    // 종목코드
  mdo     : array[0..4] of real;    // 매도호가
  mdovol  : array[0..4] of integer; // 매도호가잔량
  mdocnt  : array[0..4] of integer; // 매도호가건수
  tmdovol : integer;                // 총매도호가잔량
  tmdocnt : integer;                // 총매도호가건수
  msu     : array[0..4] of real;    // 매수호가
  msuvol  : array[0..4] of integer; // 매수호가잔량
  msucnt  : array[0..4] of integer; // 매수호가건수
  tmsuvol : integer;                // 총매수호가잔량
  tmsucnt : integer;                // 총매수호가건수
  time    : integer;                // time
  end;

//--- 체결
pOptExec = ^TOptExec;
TOptExec = packed record
  issue   : array[0..8] of char;  // 종목코드
  gap : real;                     // 전일대비(권배락시는 기준가대비)
  cup : real;                     // 현재가
  sip : real;                     // 시가
  hip : real;                     // 고가
  lip : real;                     // 저가
  vol : integer;                  // 누적거래량
  amt : real;                     // 누적거래대금
  time: integer;                  // time
  side: array[0..1] of char;      // side
  ydiffSign : array[0..0] of char;   //전일대비기호  (5:하락 2:상승 )
  chgrate   : array[0..5]  of char  //; _chgrate   : char;  // [float ,  6.2] 등락율    
  end;

//-- 전략서버에 시세전송패킷 20180727
{
// ChartMaker 에게 전송할 패킷
typedef struct _ST_PACK2CHART_EX
{
	char	STX[1];
	char	Len[SIZE_PACKET_LEN];	// 전체 길이
	char	Date[8];
	char	Time[8];
	char	ShortCode[LEN_SYMBOL];
	char	Close[LEN_PRC];
	char	CntrQty[LEN_QTY];
	char	DecLen[5];				// 소숫점 자릿수
	char	ETX[1];
 ST_PACK2CHART_EX;
}

_ST_PACK2CHART_EX = packed record
  STX       : array[0..0] of char;
  Len       : array[0..3] of char;
  Date      : array[0..7] of char;
  Time      : array[0..7] of char;
  ShortCode : array[0..6] of char;
  Close     : array[0..9] of char;
  CntrQty   : array[0..19] of char;
  DecLen    : array[0..4] of char;
  ETX       : array[0..0] of char;
end;



implementation

end.
