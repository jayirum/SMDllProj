unit FieldValueHeader;

interface
const
  fvProduct_KOSPI200    = 0;   //  KOSPI200
  fvProduct_FUT         = 1;   //  ����
  fvProduct_CALL        = 2;   //  �ݿɼ�
  fvProduct_PUT         = 3;   //  ǲ�ɼ�
  fvProduct_SPREAD      = 4;   //  ��������
  fvProduct_OPT         = 5;   //  �ɼ� ( ���� : ���� Product Value�� ������ ����. �ɼ� ��ü ��ȸ�ø� ���)
  fvProduct_EUROFX      = 7;   //  EURO FX
  fvProduct_AUSTFX      = 72;  //  AUSTRAINAN DOLLAR
  fvProduct_POUDFX      = 73;  //  BRITISH POUND
  fvProduct_YENFX       = 74;  //  JapanYen
  fvProduct_FRACFX      = 75;  //  SWITSS FRANC
  fvProduct_CME         = 8;   //  CME

  fvProduct_SPOT          = 9;  // Spot
  fvProduct_SPOTGOLD      = 91; // Spot_Gold
  fvProduct_SPOTOIL       = 92; // Spot_OIL
  fvProduct_SPOTSILVER    = 93; // Spot_SILVER
  fvProduct_SPOTCOPPER    = 94; // Spot_COPPER
  fvProduct_SPOTSP500    = 95;  // Spot_SP500
  fvProduct_SGX_FTSE     = 96 ;  // SGX FTSE China A50
  fvProduct_HSI          = 97;

  fvProduct_EUREX_CALL        = 51;   //  �ݿɼ�
  fvProduct_EUREX_PUT         = 52;   //  ǲ�ɼ�
  fvProduct_EUREX_OPT         = 55;   //  �߰��ɼǿ�  ( ���� : ���� Product Value�� ������ ����. �ɼ� ��ü ��ȸ�ø� ���)



  fvGoodsType_LOCAL     = 1;    // ��������
  fvGoodsType_CME       = 2;    // �߰�����
  fvGoodsType_GLOBAL    = 3;    // �ؿܼ���

  fvSymbolType_FUT      = '101'; //FUT
  fvSymbolType_CALL     = '201'; //CALL
  fvSymbolType_PUT      = '301'; //PUT
  fvSymbolType_FX       = '6E';  //GF

  fvATM_Name            = 'ATM';
  fvITM_Name            = 'ITM';
  fvOTM_Name            = 'OTM';

  fvATM                 = '1';
  fvITM                 = '2';
  fvOTM                 = '3';

  fvSide_SELL           = '1';    // �ŵ�
  fvSide_BUY            = '2';    // �ż�
  fvSideName_SELL       = '�ŵ�';  // �ŵ�
  fvSideName_BUY        = '�ż�';  // �ż�

  fvOrdType_LIMIT       = '1';  // ������
  fvOrdType_MARKET      = '2';  // ���尡
  fvOrdType_CONDLIMIT   = '3';  // ���Ǻ�������
  fvOrdType_BESTLIMIT   = '4';  // ������������

  fvFXOrdType_LIMIT     = '2';  // ������
  fvFXOrdType_MARKET    = '1';  // ���尡

  fvErrFlag_YES         = 'Y';   // ERROR
  fvErrFlag_NO          = 'N';   // ����

  fvDibStatus_GOOD      = 0;    // ����
  fvDibStatus_ERROR     = -1;   // ����

  fvOrdStatus_NOMAL       = '0';   // good
  fvOrdStatus_PARTIALFILL = '1';   // partially filler
  fvOrdStatus_FILL        = '2';   // fullly filled
  fvOrdStatus_CANCELED    = '4';   // canceled
  fvOrdStatus_REJECT      = '8';   // reject

  fvPendingStatus_NOMAL   = '0';   // good
  fvPendingStatus_REPLACE = '1';   // Pending Replace
  fvPendingStatus_CANCEL  = '2';   // Pending Cancel

  fvPlcType_NEW           = '0';   // �ű�
  fvPlcType_REP           = '1';   // ����
  fvPlcType_CXL           = '2';   // ���

  fvSchOrdStatus_All      = '0';   // All
  fvSchOrdStatus_Live     = '1';   // Live
  fvSchOrdStatus_Fill     = '2';   // Fill

  fvUserRole_ADMIN        = '9999';   // ������
  fvUserRole_SUPERADMIN   = '9100';   // �ְ������
  fvUserRele_TRADER       = '1000';   // �Ϲݻ����
  fvUserRele_PARTNER      = '2000';   // ��Ʈ��
  fvUserRele_PARTNER2     = '2100';   // ��Ʈ��2
  fvUserRele_TESTER       = '9000';   // �׽���

  fvUserStatus_NORMAL     = '1';   // ����
  fvUserStatus_STOP       = '2';   // ���� (�޽�)
  fvUserStatus_DEL        = '3';   // ���� (����)

  fvSchUserStatus_ALL        = '0';   // ��ü
  fvSchUserStatus_NORMAL     = '1';   // ����
  fvSchUserStatus_STOP       = '2';   // ���� (�޽�)
  fvSchUserStatus_DEL        = '3';   // ���� (����)
  fvSchUserStatus_USEALL     = '5';   // ���� + ����
  fvSchUserStatus_LIVE       = '6';   // �ŸŰ��� �ִ»���ڸ�

  fvLicenseType_DAY       = '1';   // ��
  fvLicenseType_WEEK      = '2';   // ��
  fvLicenseType_2WEEK     = '3';   // 2��
  fvLicenseType_MONTH     = '4';   // ��

  fvSpeedOrdFlag_YES      = 'Y';   // SPEED ORDER
  fvSpeedOrdFlag_NO       = 'N';   // GENERAL ORDER

  fvSystemOrdFlag_YES     = 'Y';   // System Order
  fvSystemOrdFlag_NO      = 'N';   // User Order

  fvClearCondition_ALL    = 'Y';   // ��ü
  fvClearCondition_NOTALL = 'N';   // 500,000 ����

  fvBankingType_ALL       = '0';   // ��ü
  fvBankingType_DEPOSIT   = '1';   // �Ա�
  fvBankingType_WITHDRAW  = '2';   // ���
  fvBankingType_MILEAGE   = '3';   // ���ϸ����Ա�

  fvBankingProcFlag_REQ   = '0';   // ��û��
  fvBankingProcFlag_CMPL  = '1';   // ó���Ϸ�
  fvBankingProcFlag_REJ   = '2';   // �ź�

  fvReqProcFlag_REQ       = '0';   // ��û��
  fvReqProcFlag_CMPL      = '1';   // ó���Ϸ�
  fvReqProcFlag_REJ       = '2';   // �ź�

  fvReqType_OVERNIGHT     = '9';   // OverNight
  fvReqType_ACCSTATUS     = '1';   // ���»��º���
  fvReqType_LICENSETYPE   = '2';   // �̿��Ÿ�Ժ���
  fvReqType_LOANCOUNT     = '3';   // ���¼�����

  fvCmplType_USER_BANKING = '1';   // �Ա�/���
  fvCmplType_USER_REQ     = '2';   // ���»���/�̿��Ÿ��/���¼�/OverNight

  fvCmplDetailType_DEPOSIT          = '1'; // �Ա�
  fvCmplDetailType_WITHDRAW         = '2'; // ���
  fvCmplDetailType_ACCSTATUS        = '3';
  fvCmplDetailType_LICENSETYPE      = '4';
  fvCmplDetailType_LOANCOUNT        = '5';
  fvCmplDetailType_OVERNIGHT        = '6';

  fvMgrBankingType_DEPOSIT          = '1'; // ���ű��Ա�
  fvMgrBankingType_WITHDRAW         = '2'; // ���ű����
  fvMgrBankingType_LICENSEWITHDRAW  = '3'; // �������
  fvMgrBankingType_LOANDEPOSIT      = '4'; // �뿩���Ա�
  fvMgrBankingType_LOANWITHDRAW     = '5'; // �뿩�����
  fvMgrBankingType_EVENTDEPOSIT     = '6'; // �̺�Ʈ�Ա�
  fvMgrBankingType_MILEAGEDEPOSIT   = '7'; // ���ϸ����Ա�
  fvMgrBankingType_MILEAGEWITHDRAW  = '8'; // ���ϸ����Ա�

  fvUserManageType_REG     = '1';   // ���
  fvUserManageType_DEL     = '2';   // ����
  fvUserManageType_RESET   = '3';   // �ʱ�ȭ

  fvNoticeManageType_REG   = '1';   // ���
  fvNoticeManageType_CHG   = '2';   // ����
  fvNoticeManageType_DEL   = '3';   // ����

  fvRecStatus_INSERT      = '1';
  fvRecStatus_UPDATE      = '2';
  fvRecStatus_DELETE      = '3';

  fvSearchTerm_DAY        = '1'; // day
  fvSearchTerm_WEEK       = '2'; // Week
  fvSearchTerm_MONTH      = '3'; // Moneh

  fvExecMsgType_RECEIVE   = '1'; // ����
  fvExecMsgType_REPLACED  = '2'; // ����Ȯ��
  fvExecMsgType_CANCELED  = '3'; // ���Ȯ��
  fvExecMsgType_EXECUTION = '4'; // ü��
  fvExecMsgType_REJECT    = '5'; // �ź�

  fvExecMsgName_RECEIVE   = '����';     // ����
  fvExecMsgName_REPLACED  = '����Ȯ��'; // ����Ȯ��
  fvExecMsgName_CANCELED  = '���Ȯ��'; // ���Ȯ��
  fvExecMsgName_EXECUTION = 'ü��';     // ü��
  fvExecMsgName_REJECT    = '�ź�';     // �ź�

  fvExpireFlag_YES        = 'Y'; // Expire
  fvExpireFlag_NO         = 'N'; //

  fvTradeLimitFlag_YES    = 'Y'; // �ֹ�����
  fvTradeLimitFlag_NO     = 'N'; // ���Ѿ���

  fvLossCutFlag_YES       = 'Y'; // LossCut Order
  fvLossCutFlag_NO        = 'N'; //

  fvForciblyOrdFlag_YES   = 'Y';
  fvForciblyOrdFlag_NO    = 'N';

  fvBaseEvalMoney         = 500000;

  fvSymbol_KOSPI200       = '00800';
  fvUpCode_KOSPI200       = '101';

  fvREAL_SERVER           = '0';
  fvTEST_SERVER           = '1';

  fvLeverageValue_X1      = 1;
  fvLeverageValue_X2      = 2;
  fvLeverageValue_X5      = 5;
  fvLeverageValue_X10     = 10;
  fvLeverageValue_X20     = 20;
  fvLeverageValue_X50     = 50;

  fvLeverageType_X1       = '0'; // 1
  fvLeverageType_X2       = '1'; // 2
  fvLeverageType_X5       = '2'; // 5
  fvLeverageType_X10      = '3'; // 10
  fvLeverageType_X20      = '4'; // 20
  fvLeverageType_X50      = '5'; // 50

  fvOrderPath_NORMAL      = '0'; // REAL
  fvOrderPath_VIP         = '1'; // VIP

  fvTradeProduct_FUT      = '1'; //����     100,000
  fvTradeProduct_OPT      = '2'; //�ɼ�     200,000
  fvTradeProduct_FUTOPT   = '3'; //�����ɼ� 300,000
  fvTradeProduct_FXOPT    = '4'; //FX�ɼ�   400,000

  fvOrdCondType_OVERNIGHT  = '1'; //��������
  fvOrdCondType_ONCLOSE    = '2'; //���ø���
  fvOrdCondType_CMEUSE     = '3'; //CME ���
  fvOrdCondType_EXPIRECALC = '4'; //��������

  fvFXCommType_UNLOCK     = '1'; // ����
  fvFXCommType_LOCK       = '2'; // ����

  fvUserGrade_WAIT        = '0'; // ���
  fvUserGrade_COMPLETE    = '9'; // �Ϸ�

  fvCloseOrdFlag_YES      = 'Y'; // �����ֹ�
  fvCloseOrdFlag_NO       = 'N'; // �������ֹ�

  fvRealOrdFlag_YES       = 'Y';  // Real
  fvRealOrdFlag_NO        = 'N';  // Test

  fvOrdHandleType_NORMAL    = '0';
  fvOrdHandleType_SPEED     = '1';
  fvOrdHandleType_STOPLOSS  = '2';
  fvOrdHandleType_MIT       = '3';
  fvOrdHandleType_LOSSCUT   = '4';
  fvOrdHandleType_MANAGER   = '5';

  // STOP / MIT LOG
  fvSTOPSetType_SET       = '1';
  fvSTOPSetType_RESET     = '2';
  fvFlag_YES              = 'Y';
  fvFlag_NO               = 'N';
  fvMITPlcType_NEW        = '0';   // �ű�
  fvMITPlcType_REP        = '1';   // ����
  fvMITPlcType_CXL        = '2';   // ���

  // Market Server ����
  fvMktSvr_MAIN           = 'M';  // Main
  fvMktSvr_BACK           = 'B';  // Back

  fvBreakTimeFlag_YES     = 'Y';         //hangseng
  fvBreakTimeFlag_NO      = 'N';         //hangseng

  STX = char($02);
  ETX = char($03);
implementation

end.
