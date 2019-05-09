unit SiseHeader;

interface

type
//--------------------------------
//  FUTURES
//--------------------------------
//--- ����Master

pFutMaster = ^TFutMaster;
TFutMaster = packed record
  issue : array[0..8] of char;    // �����ڵ�
  yesp  : real;                   // ��������
  hlimp : real;                   // ���Ѱ�
  llimp : real;                   // ���Ѱ�
  bas   : real;                   // ���ذ�
  end;

//--- 5�ܰ�ȣ��
pFut5Hoga = ^TFut5Hoga;
TFut5Hoga = packed record
  issue   : array[0..8] of char;    // �����ڵ�
  mdo     : array[0..4] of real;    // �ŵ�ȣ��
  mdovol  : array[0..4] of integer; // �ŵ�ȣ���ܷ�
  mdocnt  : array[0..4] of integer; // �ŵ�ȣ���Ǽ�
  tmdovol : integer;                // �Ѹŵ�ȣ���ܷ�
  tmdocnt : integer;                // �Ѹŵ�ȣ���Ǽ�
  msu     : array[0..4] of real;    // �ż�ȣ��
  msuvol  : array[0..4] of integer; // �ż�ȣ���ܷ�
  msucnt  : array[0..4] of integer; // �ż�ȣ���Ǽ�
  tmsuvol : integer;                // �Ѹż�ȣ���ܷ�
  tmsucnt : integer;                // �Ѹż�ȣ���Ǽ�
  time    : integer;                // time
  end;

//--- ü��
pFutExec = ^TFutExec;
TFutExec = packed record
  issue : array[0..8] of char;    // �����ڵ�
  gap : real;                     // ���ϴ��(�ǹ���ô� ���ذ����)
  cup : real;                     // ���簡
  sip : real;                     // �ð�
  hip : real;                     // ��
  lip : real;                     // ����
  vol : integer;                  // �����ŷ���
  amt : real;                     // �����ŷ����
  time: integer;                  // time
  side: array[0..1] of char;      // side
  ydiffSign : array[0..1] of char;   //���ϴ���ȣ  (5:�϶� 2:��� )
  chgrate   : array[0..6]  of char  //; _chgrate   : char;  // [float ,  6.2] �����
  end;

//--------------------------------
//  Option
//--------------------------------
//--- ����Master
pOptMaster = ^TOptMaster;
TOptMaster = packed record
  issue : array[0..8] of char;    // �����ڵ�
  yesp  : real;                   // ��������
  hlimp : real;                   // ���Ѱ�
  llimp : real;                   // ���Ѱ�
  bas   : real;                   // ���ذ�
  end;

//--- 5�ܰ�ȣ��
pOpt5Hoga = ^TOpt5Hoga;
TOpt5Hoga = packed record
  issue   : array[0..8] of char;    // �����ڵ�
  mdo     : array[0..4] of real;    // �ŵ�ȣ��
  mdovol  : array[0..4] of integer; // �ŵ�ȣ���ܷ�
  mdocnt  : array[0..4] of integer; // �ŵ�ȣ���Ǽ�
  tmdovol : integer;                // �Ѹŵ�ȣ���ܷ�
  tmdocnt : integer;                // �Ѹŵ�ȣ���Ǽ�
  msu     : array[0..4] of real;    // �ż�ȣ��
  msuvol  : array[0..4] of integer; // �ż�ȣ���ܷ�
  msucnt  : array[0..4] of integer; // �ż�ȣ���Ǽ�
  tmsuvol : integer;                // �Ѹż�ȣ���ܷ�
  tmsucnt : integer;                // �Ѹż�ȣ���Ǽ�
  time    : integer;                // time
  end;

//--- ü��
pOptExec = ^TOptExec;
TOptExec = packed record
  issue   : array[0..8] of char;  // �����ڵ�
  gap : real;                     // ���ϴ��(�ǹ���ô� ���ذ����)
  cup : real;                     // ���簡
  sip : real;                     // �ð�
  hip : real;                     // ��
  lip : real;                     // ����
  vol : integer;                  // �����ŷ���
  amt : real;                     // �����ŷ����
  time: integer;                  // time
  side: array[0..1] of char;      // side
  ydiffSign : array[0..0] of char;   //���ϴ���ȣ  (5:�϶� 2:��� )
  chgrate   : array[0..5]  of char  //; _chgrate   : char;  // [float ,  6.2] �����    
  end;

//-- ���������� �ü�������Ŷ 20180727
{
// ChartMaker ���� ������ ��Ŷ
typedef struct _ST_PACK2CHART_EX
{
	char	STX[1];
	char	Len[SIZE_PACKET_LEN];	// ��ü ����
	char	Date[8];
	char	Time[8];
	char	ShortCode[LEN_SYMBOL];
	char	Close[LEN_PRC];
	char	CntrQty[LEN_QTY];
	char	DecLen[5];				// �Ҽ��� �ڸ���
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
