unit MsgTypeHeader;

interface

const
  MSG_ORD_FUT_NEW  = '\FUT\NEW\';
  MSG_ORD_FUT_REP  = '\FUT\REP\';
  MSG_ORD_FUT_CXL  = '\FUT\CXL\';
  MSG_ORD_OPT_NEW  = '\OPT\NEW\';
  MSG_ORD_OPT_REP  = '\OPT\REP\';
  MSG_ORD_OPT_CXL  = '\OPT\CXL\';
  MSG_ORD_FX_NEW   = '\FX\NEW\';
  MSG_ORD_FX_REP   = '\FX\REP\';
  MSG_ORD_FX_CXL   = '\FX\CXL\';
  MSG_ORD_CME_NEW  = '\CME\NEW\';
  MSG_ORD_CME_REP  = '\CME\REP\';
  MSG_ORD_CME_CXL  = '\CME\CXL\';

  // 일괄
  MSG_ORD_All_CLEAR = '\ORD\ALL\CLEAR\';
  MSG_ORD_ALL_CXL   = '\ORD\ALL\CXL\';
  MSG_ORD_ALL_REP   = '\ORD\ALL\REP\';
  MSG_ORD_HEDGE_ALL_CLEAR = '\ORD\HEDGE_ALL\CLEAR\';

  // 종목청산, 종목취소
  MSG_ORD_SYMBOL_CLEAR = '\ORD\SYMBOL\CLEAR\';
  MSG_ORD_SYMBOL_CXL   = '\ORD\SYMBOL\CXL\';

  //hangseng
  MSG_ORD_HSI_BREAK = '\ORD\HSI\BREAK\';

  // System 일괄
  MSG_ORD_SYS_CXL   = '\ORD\SYS\CXL\';
  MSG_ORD_SYS_CLEAR = '\ORD\SYS\CLEAR\';   //
  MSG_ORD_SYS_CLOSE = '\ORD\SYS\CLOSE\';   // 동시호가 3시 6분
  MSG_ORD_SYS_HTS   = '\ORD\SYS\HTS\';     // HTS 잔고정리 주문
  MSG_ORD_SYS_CME_CLOSE = '\ORD\SYS\CME\CLOSE\';   // 04:40
  MSG_ORD_SYS_EXPIRE    = '\ORD\SYS\EXPIRE\';      // 만기일 청산

  // LOSSCUT
  MSG_ORD_LOSSCUT   = '\ORD\SYS\LOSSCUT\';
  MSG_MGR_LOSSCUT   = '\ORD\MGR\LOSSCUT\';

  MSG_RCV_LOSSCUT   = '\RCV\SYS\LOSSCUT\';

  // Order Push
  MSGP_ORD_NEW      = '\SEND\ORD\NEW\';
  MSGP_ORD_REP      = '\SEND\ORD\REP\';
  MSGP_ORD_CXL      = '\SEND\ORD\CXL\';

  //체결 메세지타입 + 프로세스 + 메시지종류
  MSGR_GW_EXCH      = '\R\GW\EXCH\';

  MSG_EXCH_RCV       = '\EXCH\RCV\';

  MSG_EXEC           = '\EXEC\';
  MSG_EXCH_REP       = '\EXCH\REP\';
  MSG_EXCH_CXL       = '\EXCH\CXL\';
  MSG_EXCH_REJ       = '\EXCH\REJ\';

  MSGR_REQ_DEPOSIT   = '\RCV\REQ\DEPOSIT\';    // User 입금요청
  MSGR_REQ_WITHDRAW  = '\RCV\REQ\WITHDRAW\';   // User 출금요청
  MSGR_CHG_ACCSTATUS = '\RCV\CHG\ACCSTATUS\';  // User 계좌상태
  MSGR_CHG_LICENSE   = '\RCV\CHG\LICENSE\';    // User 이용료
  MSGR_CHG_LOAN_CNT  = '\RCV\CHG\LOANCNT\';    // User 사용구좌수
  MSGR_REQ_BEABLE_QTY= '\RCV\REQ\BEABLE_QTY\'; // User 계약수
  MSGR_REQ_OVERNIGHT = '\RCV\REQ\OVERNIGHT\';  // User OverNight설정
  MSGR_REQ_ONCLOSE   = '\RCV\REQ\ONCLOSE\';    // User 동시마감 설정
  MSGR_REQ_CMEUSE    = '\RCV\REQ\CMEUSE\';     // User CME 사용설정
  MSGR_REQ_EXPIRECALC= '\RCV\REQ\EXPIRECALC\'; // User 만기정산 설정
  MSGR_SET_ORDCOND   = '\RCV\SET\ORDCOND\';    // 주문조건설정
  MSGR_RESET_ORDCOND = '\RCV\RESET\ORDCOND\';  // 주문조건설정
  MSGP_CHG_ORDCOND   = '\SEND\CHG\ORDCOND\';   // 주문조건설정변경

  MSGP_REQ_DEPOSIT   = '\SEND\REQ\DEPOSIT\';   // To Manager 입금요청
  MSGP_REQ_WITHDRAW  = '\SEND\REQ\WITHDRAW\';  // To Manager 출금요청
  MSGP_REQ_OVERNIGHT = '\SEND\REQ\OVERNIGHT\'; // To Manager OverNight요청
  MSGP_CHG_ACCSTATUS = '\SEND\CHG\ACCSTATUS\'; // To Manager 계좌상태
  MSGP_CHG_LICENSE   = '\SEND\CHG\LICENSE\';   // To Manager 이용료
  MSGP_CHG_LOAN_CNT  = '\SEND\CHG\LOANCNT\';   // To Manager 사용구좌수
  MSGR_CHG_LEVERAGE  = '\SEND\CHG\LEVERAGE\';  // Leverage 변경
  MSGR_CHG_USERINFO  = '\SEND\CHG\USERINFO\';  // 고객정보 변경
  MSGR_SWITCH_MILEAGE= '\SEND\SWITCH\MILEAGE\';// 마일리지 전환
  MSGP_REQ_BEABLE_QTY= '\SEND\REQ\BEABLE_QTY\';// To Manager 계약수

  // 관리자 업무처리
  MSGR_DEPOSIT          = '\MGR\DEPOSIT\';          // Manager 입금완료 (관리화면 증거금입금)
  MSGR_WITHDRAW         = '\MGR\WITHDRAW\';         // Manager 출금완료 (관리화면 증거금출금)
  MSGR_EVENT_DEPOSIT    = '\MGR\EVENT\DEPOSIT\';    // Manager 이벤트입금완료 (관리화면 이벤트입금)
  MSGR_MILEAGE_DEPOSIT  = '\MGR\MILEAGE\DEPOSIT\';  // Manager 마일리지입금완료 (관리화면 마일리지입금)
  MSGR_MILEAGE_WITHDRAW = '\MGR\MILEAGE\WITHDRAW\'; // Manager 마일리지출금완료 (관리화면 마일리지출금)

  MSGR_LICENSE_WITHDRAW = '\MGR\LICENSE\WITHDRAW\'; // Manager 이자(이용료)출금
  MSGR_LOAN_DEPOSIT     = '\MGR\LOAN\DEPOSIT\';     // Manager 대여금입금
  MSGR_LOAN_WITHDRAW    = '\MGR\LOAN\WITHDRAW\';    // Manager 대여금출금
  MSGR_LICENSE_IMPOSE   = '\MGR\LICENSE\IMPOSE\';   // Manager 이용료Type
  MSGR_ACCSTATUS        = '\MGR\ACCSTATUS\';        // Manager 계좌상태
  MSGR_INCREASE_DAYS    = '\MGR\INCREASE\DAYS\';    // Manager 기간증가
  MSGR_LICENSE_CHARGE   = '\MGR\LICENSE\CHARGE\';   // Manager Batch 이자(이용료)
  MSGR_BEABLE_QTY       = '\MGR\BEABLE_QTY\';       // Manager 계약수변경처리(승인/거부)


  MSGP_LOSSCUT_MONEY    = '\SEND\LOSSCUT\MONEY\';    // 계좌 고객증거금 변동내역 LossCut 반영
  MSGP_LOSSCUT_SET_MONEY= '\SEND\LOSSCUT\SET_MONEY\';// 계좌 로스컷 기본금액 변경
  MSGP_LOSSCUT_RELOAD   = '\SEND\LOSSCUT\RELOAD\';   // 잔고 전체 갱신
  MSGP_BEABLE_QTY       = '\SEND\BEABLE_QTY\';       // 계약수 변경

  // 관리자 완료처리
  MSGR_WORK_COMPLETE    = '\MGR\WORK\COMPLETE\';    // Manager Complete

  MSGR_USER_BANK_ACCOUNT  = '\REG\USER_BANK_ACCCOUNT\'; // 고객은행계좌등록
  MSGR_BANK_ACCOUNT       = '\REG\BANK_ACCCOUNT\';      // 업체은행계좌등록

  MSGR_TOT_BALANCE   = '\SCH\TOT\BALANCE\'; // 예탁금내역, 잔고내역, 미체결내역

  MSGP_TOT_BALANCE   = '\TOT\BALANCE\';    // 예탁금내역
  MSGP_TOT_OPENINT   = '\TOT\OPENINT\';    // 잔고내역
  MSGP_TOT_ORDER     = '\TOT\ORDER\';      // 미체결내역

  // 관리화면용
  MSGR_USER_REG      = '\MGR\REG\USER\';   // 사용자등록
  MSGR_USER_DEL      = '\MGR\DEL\USER\';   // 사용자삭제
  MSGR_USER_RESET    = '\MGR\RESET\USER\'; // 사용자초기화
  MSGR_NOTICE_REG    = '\MGR\REG\NOTICE\'; // 공지등록
  MSGR_NOTICE_CHG    = '\MGR\CHG\NOTICE\'; // 공지수정
  MSGR_NOTICE_DEL    = '\MGR\DEL\NOTICE\'; // 공지삭제

  MSGP_USER_REG      = '\SEND\REG\USER\';   // 사용자등록
  MSGP_USER_DEL      = '\SEND\DEL\USER\';   // 사용자삭제

  MSGR_CONFIRM_MEMBER = '\MGR\CONFIRM\MEMBER\';   // 정회원승인-사용자등록
  MSGR_REJECT_MEMBER  = '\MGR\REJECT\MEMBER\';    // 정회원거부

  MSGR_CHG_FUT_CONFIG = '\MGR\CHG\FUT\CONFIG\';   // 환경설정변경
  MSGR_CHG_EUREX_CONFIG = '\MGR\CHG\EUREX\CONFIG\';   // 환경설정변경
  MSGR_CHG_FX_CONFIG  = '\MGR\CHG\FX\CONFIG\';    // 환경설정변경
  MSGR_CHG_CME_CONFIG = '\MGR\CHG\CME\CONFIG\';   // 환경설정변경
  MSGR_CLOSE_FUT      = '\MGR\CLOSE\FUT\';        // 선물마감
  MSGR_CLOSE_FX       = '\MGR\CLOSE\FX\';         // FX마감
  MSGR_CLOSE_CME      = '\MGR\CLOSE\CME\';        // CME마감

  // 주문삭제
  MSGR_ORDER_DEL     = '\MGR\DEL\ORDER\';   // Order삭제
  MSGP_ORDER_DEL     = '\SEND\DEL\ORDER\';  // Order삭제
  MSGR_MANUAL_EXEC   = '\MGR\MANUAL\EXEC\'; // 사용자 체결처리
  MSGP_MANUAL_EXEC   = '\SEND\MANUAL\EXEC\';// 사용자 체결처리

  MSGP_NOTICE        = '\SEND\NOTICE\';    // 공지Push
  MSGP_WARNING       = '\SEND\WARNING\';   // 경고Push
  MSGP_MESSAGE       = '\SEND\MESSAGE\';   // Message

  // 예탁금변동내역
  MSGP_CHG_MONEY     = '\SEND\CHG\MONEY\'; // 예탁금변동

  // SERVER RESTART
  MSGP_RESTART       = '\SERVER\RESTART\'; // SERVER RESTART

  // Hedge
  MSGR_HEDGE_USER_REG = '\MGR\REG\HEDGE_USER\'; // HEDGE 사용자등록
  MSGR_SET_HEDGE      = '\MGR\SET\HEDGE\';      // HEDGE 설정등록
  MSGP_SET_HEDGE      = '\SEND\SET\HEDGE\';     // HEDGE 실행및 해제

  // MARKET PRICE
  MSG_SISE_FUT_MAST  = '\FUT\MAST\';
  MSG_SISE_FUT_HOGA  = '\FUT\HOGA\';
  MSG_SISE_FUT_EXEC  = '\FUT\EXEC\';
  MSG_SISE_OPT_MAST  = '\OPT\MAST\';
  MSG_SISE_OPT_HOGA  = '\OPT\HOGA\';
  MSG_SISE_OPT_EXEC  = '\OPT\EXEC\';
  MSG_SISE_FX_MAST   = '\FX\MAST\';
  MSG_SISE_FX_HOGA   = '\FX\HOGA\';
  MSG_SISE_FX_EXEC   = '\FX\EXEC\';
  MSG_SISE_CME_MAST  = '\CME\MAST\';
  MSG_SISE_CME_HOGA  = '\CME\HOGA\';
  MSG_SISE_CME_EXEC  = '\CME\EXEC\';
  //2013.10.23 현물 추가 KIM
  MSG_SISE_SPOT_MAST   = '\SPOT\MAST\';
  MSG_SISE_SPOT_HOGA   = '\SPOT\HOGA\';
  MSG_SISE_SPOT_EXEC   = '\SPOT\EXEC\';
  //2013.10.30 야간옵션 추가.
  MSG_SISE_EUREX_MAST  = '\EUREX\MAST\';
  MSG_SISE_EUREX_HOGA  = '\EUREX\HOGA\';
  MSG_SISE_EUREX_EXEC  = '\EUREX\EXEC\';

  // MARKET PRICE
  MSG_MKT_KOSPI200  = '\MKT\KOSPI200\EXEC\';
  MSG_MKT_FUT_HOGA  = '\MKT\FUT\HOGA\';
  MSG_MKT_FUT_EXEC  = '\MKT\FUT\EXEC\';
  MSG_MKT_OPT_HOGA  = '\MKT\OPT\HOGA\';
  MSG_MKT_OPT_EXEC  = '\MKT\OPT\EXEC\';
  MSG_MKT_FX_HOGA   = '\MKT\FX\HOGA\';
  MSG_MKT_FX_EXEC   = '\MKT\FX\EXEC\';
  MSG_MKT_CME_HOGA  = '\MKT\CME\HOGA\';
  MSG_MKT_CME_EXEC  = '\MKT\CME\EXEC\';
  MSG_MKT_CME_MAST  = '\MKT\CME\MAST\';
  //2013.10.23 현물 추가 KIM
  MSG_MKT_SPOT_HOGA   = '\MKT\SPOT\HOGA\';
  MSG_MKT_SPOT_EXEC   = '\MKT\SPOT\EXEC\';
  //2013.10.30 야간옵션 추가.
  MSG_MKT_EUREX_HOGA  = '\MKT\EUREX\HOGA\';
  MSG_MKT_EUREX_EXEC  = '\MKT\EUREX\EXEC\';
  MSG_MKT_EUREX_MAST  = '\MKT\EUREX\MAST\';

  // Order GW
  //메세지타입 + 프로세스 + 메시지종류
  MSGR_GW_ORD_NEW    = '\R\GW\ORD\NEW\';
  MSGR_GW_ORD_REP    = '\R\GW\ORD\REP\';
  MSGR_GW_ORD_CXL    = '\R\GW\ORD\CXL\';

{
  // Order REAL GW
  //메세지타입 + 프로세스 + 메시지종류
  MSGR_GW_ORD_NEW    = '\R\REAL\GW\FUT\NEW\';
  MSGR_GW_ORD_REP    = '\R\REAL\GW\FUT\REP\';
  MSGR_GW_ORD_CXL    = '\R\REAL\GW\FUT\CXL\';
}

  // Order Rcv
  MSGR_RCV_ORD_NEW    = '\R\RCV\ORD\NEW\';
  MSGR_RCV_ORD_REP    = '\R\RCV\ORD\REP\';
  MSGR_RCV_ORD_CXL    = '\R\RCV\ORD\CXL\';
  MSGR_RCV_ORD_REJ    = '\R\RCV\ORD\REJ\';

  //MSGR_LOGIN
  MSGR_LOGIN          = '\R\RCV\LOGIN\';
  MSGR_LOGOUT         = '\R\RCV\LOGOUT\';
  MSGP_LOGOUT         = '\P\SEND\LOGOUT\';
  MSGR_KILL_USER      = '\R\KILL\USER\';
  MSGP_KILL_USER      = '\P\KILL\USER\';

  //MSGR_RUN_DAILY
  MSGR_RUN_DAILY      = '\R\RCV\RUN\DAILY\';
  //MSGR_RUN_SECURITY
  MSGR_RUN_SECURITY   = '\R\RCV\RUN\SECURITY\';

  //Change Order Close Time
  MSGP_SYS_ORD_TIME   = '\P\SYS\ORD\TIME\';

  // 가능 계약수 변경
  MSGR_SET_BEABLE_QTY = '\R\RCV\SET\BEABLE_QTY\';

  // 환율변경
  MSGR_SET_USD_EX_RATE = '\R\RCV\SET\USD_EX_RATE\';
  MSGP_SET_USD_EX_RATE = '\P\SEND\USD_EX_RATE\';

  // 사용자 등급관리
  MSGR_SET_USER_GRADE  = '\R\RCV\SET\USER_GRADE\';
  MSGP_SET_USER_GRADE  = '\P\SEND\SET\USER_GRADE\';

  // 사용자 주문환경관리
  MSGR_SET_ENVIRONMENT = '\R\RCV\SET\USER_ENV\';

  // FX VIP 주문 정지
  MSGR_SET_FX_VIP_ORD  = '\R\RCV\SET\FX_VIP_ORD\';

  // 잔고재조회 (야간신청시 사용함)
  MSGP_RELOAD_OI       = '\P\SEND\RELOAD\OI\';

  // STOP 주문 설정/취소
  MSGR_STOP_ORDER      = '\R\RCV\STOP\ORDER\';
  // MIT 주문 설정/취소
  MSGR_MIT_ORDER      = '\R\RCV\MIT\ORDER\';
  // 주문거부처리
  MSGR_MANAGER_ORD_REJ= '\R\RCV\MANAGER\ORD\REJ\';
  // 만기정산
  MSGR_OPT_EXPIRE     = '\R\RCV\OPT\EXPIRE\';
    // 야간만기정산
  MSGR_EUREX_EXPIRE     = '\R\RCV\EUREX\EXPIRE\';
  // 시세서버
  MSGR_SCH_MKTSERVER  = '\R\RCV\SCH\MKTSERVER\';
  MSGR_CHG_MKTSERVER  = '\R\RCV\CHG\MKTSERVER\';

  //KR TR요청
  KR_REQ_5611 = '\KRSEND\REQ5611\';

implementation

end.
 