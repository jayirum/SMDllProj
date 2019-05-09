unit FieldValueHeader;

interface
const
  fvProduct_KOSPI200    = 0;   //  KOSPI200
  fvProduct_FUT         = 1;   //  선물
  fvProduct_CALL        = 2;   //  콜옵션
  fvProduct_PUT         = 3;   //  풋옵션
  fvProduct_SPREAD      = 4;   //  스프레드
  fvProduct_OPT         = 5;   //  옵션 ( 가상 : 실제 Product Value로 사용되지 않음. 옵션 전체 조회시만 사용)
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

  fvProduct_EUREX_CALL        = 51;   //  콜옵션
  fvProduct_EUREX_PUT         = 52;   //  풋옵션
  fvProduct_EUREX_OPT         = 55;   //  야간옵션옵  ( 가상 : 실제 Product Value로 사용되지 않음. 옵션 전체 조회시만 사용)



  fvGoodsType_LOCAL     = 1;    // 국내선물
  fvGoodsType_CME       = 2;    // 야간선물
  fvGoodsType_GLOBAL    = 3;    // 해외선물

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

  fvSide_SELL           = '1';    // 매도
  fvSide_BUY            = '2';    // 매수
  fvSideName_SELL       = '매도';  // 매도
  fvSideName_BUY        = '매수';  // 매수

  fvOrdType_LIMIT       = '1';  // 지정가
  fvOrdType_MARKET      = '2';  // 시장가
  fvOrdType_CONDLIMIT   = '3';  // 조건부지정가
  fvOrdType_BESTLIMIT   = '4';  // 최유리지정가

  fvFXOrdType_LIMIT     = '2';  // 지정가
  fvFXOrdType_MARKET    = '1';  // 시장가

  fvErrFlag_YES         = 'Y';   // ERROR
  fvErrFlag_NO          = 'N';   // 정상

  fvDibStatus_GOOD      = 0;    // 정상
  fvDibStatus_ERROR     = -1;   // 오류

  fvOrdStatus_NOMAL       = '0';   // good
  fvOrdStatus_PARTIALFILL = '1';   // partially filler
  fvOrdStatus_FILL        = '2';   // fullly filled
  fvOrdStatus_CANCELED    = '4';   // canceled
  fvOrdStatus_REJECT      = '8';   // reject

  fvPendingStatus_NOMAL   = '0';   // good
  fvPendingStatus_REPLACE = '1';   // Pending Replace
  fvPendingStatus_CANCEL  = '2';   // Pending Cancel

  fvPlcType_NEW           = '0';   // 신규
  fvPlcType_REP           = '1';   // 정정
  fvPlcType_CXL           = '2';   // 취소

  fvSchOrdStatus_All      = '0';   // All
  fvSchOrdStatus_Live     = '1';   // Live
  fvSchOrdStatus_Fill     = '2';   // Fill

  fvUserRole_ADMIN        = '9999';   // 관리자
  fvUserRole_SUPERADMIN   = '9100';   // 최고관리자
  fvUserRele_TRADER       = '1000';   // 일반사용자
  fvUserRele_PARTNER      = '2000';   // 파트너
  fvUserRele_PARTNER2     = '2100';   // 파트너2
  fvUserRele_TESTER       = '9000';   // 테스터

  fvUserStatus_NORMAL     = '1';   // 정상
  fvUserStatus_STOP       = '2';   // 정지 (휴식)
  fvUserStatus_DEL        = '3';   // 삭제 (해지)

  fvSchUserStatus_ALL        = '0';   // 전체
  fvSchUserStatus_NORMAL     = '1';   // 정상
  fvSchUserStatus_STOP       = '2';   // 정지 (휴식)
  fvSchUserStatus_DEL        = '3';   // 삭제 (해지)
  fvSchUserStatus_USEALL     = '5';   // 정상 + 정지
  fvSchUserStatus_LIVE       = '6';   // 매매건이 있는사용자만

  fvLicenseType_DAY       = '1';   // 일
  fvLicenseType_WEEK      = '2';   // 주
  fvLicenseType_2WEEK     = '3';   // 2주
  fvLicenseType_MONTH     = '4';   // 월

  fvSpeedOrdFlag_YES      = 'Y';   // SPEED ORDER
  fvSpeedOrdFlag_NO       = 'N';   // GENERAL ORDER

  fvSystemOrdFlag_YES     = 'Y';   // System Order
  fvSystemOrdFlag_NO      = 'N';   // User Order

  fvClearCondition_ALL    = 'Y';   // 전체
  fvClearCondition_NOTALL = 'N';   // 500,000 이하

  fvBankingType_ALL       = '0';   // 전체
  fvBankingType_DEPOSIT   = '1';   // 입금
  fvBankingType_WITHDRAW  = '2';   // 출금
  fvBankingType_MILEAGE   = '3';   // 마일리지입금

  fvBankingProcFlag_REQ   = '0';   // 요청중
  fvBankingProcFlag_CMPL  = '1';   // 처리완료
  fvBankingProcFlag_REJ   = '2';   // 거부

  fvReqProcFlag_REQ       = '0';   // 요청중
  fvReqProcFlag_CMPL      = '1';   // 처리완료
  fvReqProcFlag_REJ       = '2';   // 거부

  fvReqType_OVERNIGHT     = '9';   // OverNight
  fvReqType_ACCSTATUS     = '1';   // 계좌상태변경
  fvReqType_LICENSETYPE   = '2';   // 이용료타입변경
  fvReqType_LOANCOUNT     = '3';   // 구좌수변경

  fvCmplType_USER_BANKING = '1';   // 입금/출금
  fvCmplType_USER_REQ     = '2';   // 계좌상태/이용료타입/구좌수/OverNight

  fvCmplDetailType_DEPOSIT          = '1'; // 입금
  fvCmplDetailType_WITHDRAW         = '2'; // 출금
  fvCmplDetailType_ACCSTATUS        = '3';
  fvCmplDetailType_LICENSETYPE      = '4';
  fvCmplDetailType_LOANCOUNT        = '5';
  fvCmplDetailType_OVERNIGHT        = '6';

  fvMgrBankingType_DEPOSIT          = '1'; // 증거금입금
  fvMgrBankingType_WITHDRAW         = '2'; // 증거금출금
  fvMgrBankingType_LICENSEWITHDRAW  = '3'; // 이자출금
  fvMgrBankingType_LOANDEPOSIT      = '4'; // 대여금입금
  fvMgrBankingType_LOANWITHDRAW     = '5'; // 대여금출금
  fvMgrBankingType_EVENTDEPOSIT     = '6'; // 이벤트입금
  fvMgrBankingType_MILEAGEDEPOSIT   = '7'; // 마일리지입금
  fvMgrBankingType_MILEAGEWITHDRAW  = '8'; // 마일리지입금

  fvUserManageType_REG     = '1';   // 등록
  fvUserManageType_DEL     = '2';   // 삭제
  fvUserManageType_RESET   = '3';   // 초기화

  fvNoticeManageType_REG   = '1';   // 등록
  fvNoticeManageType_CHG   = '2';   // 수정
  fvNoticeManageType_DEL   = '3';   // 삭제

  fvRecStatus_INSERT      = '1';
  fvRecStatus_UPDATE      = '2';
  fvRecStatus_DELETE      = '3';

  fvSearchTerm_DAY        = '1'; // day
  fvSearchTerm_WEEK       = '2'; // Week
  fvSearchTerm_MONTH      = '3'; // Moneh

  fvExecMsgType_RECEIVE   = '1'; // 접수
  fvExecMsgType_REPLACED  = '2'; // 정정확인
  fvExecMsgType_CANCELED  = '3'; // 취소확인
  fvExecMsgType_EXECUTION = '4'; // 체결
  fvExecMsgType_REJECT    = '5'; // 거부

  fvExecMsgName_RECEIVE   = '접수';     // 접수
  fvExecMsgName_REPLACED  = '정정확인'; // 정정확인
  fvExecMsgName_CANCELED  = '취소확인'; // 취소확인
  fvExecMsgName_EXECUTION = '체결';     // 체결
  fvExecMsgName_REJECT    = '거부';     // 거부

  fvExpireFlag_YES        = 'Y'; // Expire
  fvExpireFlag_NO         = 'N'; //

  fvTradeLimitFlag_YES    = 'Y'; // 주문제한
  fvTradeLimitFlag_NO     = 'N'; // 제한않함

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

  fvTradeProduct_FUT      = '1'; //선물     100,000
  fvTradeProduct_OPT      = '2'; //옵션     200,000
  fvTradeProduct_FUTOPT   = '3'; //선물옵션 300,000
  fvTradeProduct_FXOPT    = '4'; //FX옵션   400,000

  fvOrdCondType_OVERNIGHT  = '1'; //오버나잇
  fvOrdCondType_ONCLOSE    = '2'; //동시마감
  fvOrdCondType_CMEUSE     = '3'; //CME 사용
  fvOrdCondType_EXPIRECALC = '4'; //만기정산

  fvFXCommType_UNLOCK     = '1'; // 변동
  fvFXCommType_LOCK       = '2'; // 고정

  fvUserGrade_WAIT        = '0'; // 대기
  fvUserGrade_COMPLETE    = '9'; // 완료

  fvCloseOrdFlag_YES      = 'Y'; // 마감주문
  fvCloseOrdFlag_NO       = 'N'; // 정규장주문

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
  fvMITPlcType_NEW        = '0';   // 신규
  fvMITPlcType_REP        = '1';   // 정정
  fvMITPlcType_CXL        = '2';   // 취소

  // Market Server 구분
  fvMktSvr_MAIN           = 'M';  // Main
  fvMktSvr_BACK           = 'B';  // Back

  fvBreakTimeFlag_YES     = 'Y';         //hangseng
  fvBreakTimeFlag_NO      = 'N';         //hangseng

  STX = char($02);
  ETX = char($03);
implementation

end.
