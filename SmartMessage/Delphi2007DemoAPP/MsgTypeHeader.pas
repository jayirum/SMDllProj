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

  // �ϰ�
  MSG_ORD_All_CLEAR = '\ORD\ALL\CLEAR\';
  MSG_ORD_ALL_CXL   = '\ORD\ALL\CXL\';
  MSG_ORD_ALL_REP   = '\ORD\ALL\REP\';
  MSG_ORD_HEDGE_ALL_CLEAR = '\ORD\HEDGE_ALL\CLEAR\';

  // ����û��, �������
  MSG_ORD_SYMBOL_CLEAR = '\ORD\SYMBOL\CLEAR\';
  MSG_ORD_SYMBOL_CXL   = '\ORD\SYMBOL\CXL\';

  //hangseng
  MSG_ORD_HSI_BREAK = '\ORD\HSI\BREAK\';

  // System �ϰ�
  MSG_ORD_SYS_CXL   = '\ORD\SYS\CXL\';
  MSG_ORD_SYS_CLEAR = '\ORD\SYS\CLEAR\';   //
  MSG_ORD_SYS_CLOSE = '\ORD\SYS\CLOSE\';   // ����ȣ�� 3�� 6��
  MSG_ORD_SYS_HTS   = '\ORD\SYS\HTS\';     // HTS �ܰ����� �ֹ�
  MSG_ORD_SYS_CME_CLOSE = '\ORD\SYS\CME\CLOSE\';   // 04:40
  MSG_ORD_SYS_EXPIRE    = '\ORD\SYS\EXPIRE\';      // ������ û��

  // LOSSCUT
  MSG_ORD_LOSSCUT   = '\ORD\SYS\LOSSCUT\';
  MSG_MGR_LOSSCUT   = '\ORD\MGR\LOSSCUT\';

  MSG_RCV_LOSSCUT   = '\RCV\SYS\LOSSCUT\';

  // Order Push
  MSGP_ORD_NEW      = '\SEND\ORD\NEW\';
  MSGP_ORD_REP      = '\SEND\ORD\REP\';
  MSGP_ORD_CXL      = '\SEND\ORD\CXL\';

  //ü�� �޼���Ÿ�� + ���μ��� + �޽�������
  MSGR_GW_EXCH      = '\R\GW\EXCH\';

  MSG_EXCH_RCV       = '\EXCH\RCV\';

  MSG_EXEC           = '\EXEC\';
  MSG_EXCH_REP       = '\EXCH\REP\';
  MSG_EXCH_CXL       = '\EXCH\CXL\';
  MSG_EXCH_REJ       = '\EXCH\REJ\';

  MSGR_REQ_DEPOSIT   = '\RCV\REQ\DEPOSIT\';    // User �Աݿ�û
  MSGR_REQ_WITHDRAW  = '\RCV\REQ\WITHDRAW\';   // User ��ݿ�û
  MSGR_CHG_ACCSTATUS = '\RCV\CHG\ACCSTATUS\';  // User ���»���
  MSGR_CHG_LICENSE   = '\RCV\CHG\LICENSE\';    // User �̿��
  MSGR_CHG_LOAN_CNT  = '\RCV\CHG\LOANCNT\';    // User ��뱸�¼�
  MSGR_REQ_BEABLE_QTY= '\RCV\REQ\BEABLE_QTY\'; // User ����
  MSGR_REQ_OVERNIGHT = '\RCV\REQ\OVERNIGHT\';  // User OverNight����
  MSGR_REQ_ONCLOSE   = '\RCV\REQ\ONCLOSE\';    // User ���ø��� ����
  MSGR_REQ_CMEUSE    = '\RCV\REQ\CMEUSE\';     // User CME ��뼳��
  MSGR_REQ_EXPIRECALC= '\RCV\REQ\EXPIRECALC\'; // User �������� ����
  MSGR_SET_ORDCOND   = '\RCV\SET\ORDCOND\';    // �ֹ����Ǽ���
  MSGR_RESET_ORDCOND = '\RCV\RESET\ORDCOND\';  // �ֹ����Ǽ���
  MSGP_CHG_ORDCOND   = '\SEND\CHG\ORDCOND\';   // �ֹ����Ǽ�������

  MSGP_REQ_DEPOSIT   = '\SEND\REQ\DEPOSIT\';   // To Manager �Աݿ�û
  MSGP_REQ_WITHDRAW  = '\SEND\REQ\WITHDRAW\';  // To Manager ��ݿ�û
  MSGP_REQ_OVERNIGHT = '\SEND\REQ\OVERNIGHT\'; // To Manager OverNight��û
  MSGP_CHG_ACCSTATUS = '\SEND\CHG\ACCSTATUS\'; // To Manager ���»���
  MSGP_CHG_LICENSE   = '\SEND\CHG\LICENSE\';   // To Manager �̿��
  MSGP_CHG_LOAN_CNT  = '\SEND\CHG\LOANCNT\';   // To Manager ��뱸�¼�
  MSGR_CHG_LEVERAGE  = '\SEND\CHG\LEVERAGE\';  // Leverage ����
  MSGR_CHG_USERINFO  = '\SEND\CHG\USERINFO\';  // ������ ����
  MSGR_SWITCH_MILEAGE= '\SEND\SWITCH\MILEAGE\';// ���ϸ��� ��ȯ
  MSGP_REQ_BEABLE_QTY= '\SEND\REQ\BEABLE_QTY\';// To Manager ����

  // ������ ����ó��
  MSGR_DEPOSIT          = '\MGR\DEPOSIT\';          // Manager �ԱݿϷ� (����ȭ�� ���ű��Ա�)
  MSGR_WITHDRAW         = '\MGR\WITHDRAW\';         // Manager ��ݿϷ� (����ȭ�� ���ű����)
  MSGR_EVENT_DEPOSIT    = '\MGR\EVENT\DEPOSIT\';    // Manager �̺�Ʈ�ԱݿϷ� (����ȭ�� �̺�Ʈ�Ա�)
  MSGR_MILEAGE_DEPOSIT  = '\MGR\MILEAGE\DEPOSIT\';  // Manager ���ϸ����ԱݿϷ� (����ȭ�� ���ϸ����Ա�)
  MSGR_MILEAGE_WITHDRAW = '\MGR\MILEAGE\WITHDRAW\'; // Manager ���ϸ�����ݿϷ� (����ȭ�� ���ϸ������)

  MSGR_LICENSE_WITHDRAW = '\MGR\LICENSE\WITHDRAW\'; // Manager ����(�̿��)���
  MSGR_LOAN_DEPOSIT     = '\MGR\LOAN\DEPOSIT\';     // Manager �뿩���Ա�
  MSGR_LOAN_WITHDRAW    = '\MGR\LOAN\WITHDRAW\';    // Manager �뿩�����
  MSGR_LICENSE_IMPOSE   = '\MGR\LICENSE\IMPOSE\';   // Manager �̿��Type
  MSGR_ACCSTATUS        = '\MGR\ACCSTATUS\';        // Manager ���»���
  MSGR_INCREASE_DAYS    = '\MGR\INCREASE\DAYS\';    // Manager �Ⱓ����
  MSGR_LICENSE_CHARGE   = '\MGR\LICENSE\CHARGE\';   // Manager Batch ����(�̿��)
  MSGR_BEABLE_QTY       = '\MGR\BEABLE_QTY\';       // Manager ��������ó��(����/�ź�)


  MSGP_LOSSCUT_MONEY    = '\SEND\LOSSCUT\MONEY\';    // ���� �����ű� �������� LossCut �ݿ�
  MSGP_LOSSCUT_SET_MONEY= '\SEND\LOSSCUT\SET_MONEY\';// ���� �ν��� �⺻�ݾ� ����
  MSGP_LOSSCUT_RELOAD   = '\SEND\LOSSCUT\RELOAD\';   // �ܰ� ��ü ����
  MSGP_BEABLE_QTY       = '\SEND\BEABLE_QTY\';       // ���� ����

  // ������ �Ϸ�ó��
  MSGR_WORK_COMPLETE    = '\MGR\WORK\COMPLETE\';    // Manager Complete

  MSGR_USER_BANK_ACCOUNT  = '\REG\USER_BANK_ACCCOUNT\'; // ��������µ��
  MSGR_BANK_ACCOUNT       = '\REG\BANK_ACCCOUNT\';      // ��ü������µ��

  MSGR_TOT_BALANCE   = '\SCH\TOT\BALANCE\'; // ��Ź�ݳ���, �ܰ���, ��ü�᳻��

  MSGP_TOT_BALANCE   = '\TOT\BALANCE\';    // ��Ź�ݳ���
  MSGP_TOT_OPENINT   = '\TOT\OPENINT\';    // �ܰ���
  MSGP_TOT_ORDER     = '\TOT\ORDER\';      // ��ü�᳻��

  // ����ȭ���
  MSGR_USER_REG      = '\MGR\REG\USER\';   // ����ڵ��
  MSGR_USER_DEL      = '\MGR\DEL\USER\';   // ����ڻ���
  MSGR_USER_RESET    = '\MGR\RESET\USER\'; // ������ʱ�ȭ
  MSGR_NOTICE_REG    = '\MGR\REG\NOTICE\'; // �������
  MSGR_NOTICE_CHG    = '\MGR\CHG\NOTICE\'; // ��������
  MSGR_NOTICE_DEL    = '\MGR\DEL\NOTICE\'; // ��������

  MSGP_USER_REG      = '\SEND\REG\USER\';   // ����ڵ��
  MSGP_USER_DEL      = '\SEND\DEL\USER\';   // ����ڻ���

  MSGR_CONFIRM_MEMBER = '\MGR\CONFIRM\MEMBER\';   // ��ȸ������-����ڵ��
  MSGR_REJECT_MEMBER  = '\MGR\REJECT\MEMBER\';    // ��ȸ���ź�

  MSGR_CHG_FUT_CONFIG = '\MGR\CHG\FUT\CONFIG\';   // ȯ�漳������
  MSGR_CHG_EUREX_CONFIG = '\MGR\CHG\EUREX\CONFIG\';   // ȯ�漳������
  MSGR_CHG_FX_CONFIG  = '\MGR\CHG\FX\CONFIG\';    // ȯ�漳������
  MSGR_CHG_CME_CONFIG = '\MGR\CHG\CME\CONFIG\';   // ȯ�漳������
  MSGR_CLOSE_FUT      = '\MGR\CLOSE\FUT\';        // ��������
  MSGR_CLOSE_FX       = '\MGR\CLOSE\FX\';         // FX����
  MSGR_CLOSE_CME      = '\MGR\CLOSE\CME\';        // CME����

  // �ֹ�����
  MSGR_ORDER_DEL     = '\MGR\DEL\ORDER\';   // Order����
  MSGP_ORDER_DEL     = '\SEND\DEL\ORDER\';  // Order����
  MSGR_MANUAL_EXEC   = '\MGR\MANUAL\EXEC\'; // ����� ü��ó��
  MSGP_MANUAL_EXEC   = '\SEND\MANUAL\EXEC\';// ����� ü��ó��

  MSGP_NOTICE        = '\SEND\NOTICE\';    // ����Push
  MSGP_WARNING       = '\SEND\WARNING\';   // ���Push
  MSGP_MESSAGE       = '\SEND\MESSAGE\';   // Message

  // ��Ź�ݺ�������
  MSGP_CHG_MONEY     = '\SEND\CHG\MONEY\'; // ��Ź�ݺ���

  // SERVER RESTART
  MSGP_RESTART       = '\SERVER\RESTART\'; // SERVER RESTART

  // Hedge
  MSGR_HEDGE_USER_REG = '\MGR\REG\HEDGE_USER\'; // HEDGE ����ڵ��
  MSGR_SET_HEDGE      = '\MGR\SET\HEDGE\';      // HEDGE �������
  MSGP_SET_HEDGE      = '\SEND\SET\HEDGE\';     // HEDGE ����� ����

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
  //2013.10.23 ���� �߰� KIM
  MSG_SISE_SPOT_MAST   = '\SPOT\MAST\';
  MSG_SISE_SPOT_HOGA   = '\SPOT\HOGA\';
  MSG_SISE_SPOT_EXEC   = '\SPOT\EXEC\';
  //2013.10.30 �߰��ɼ� �߰�.
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
  //2013.10.23 ���� �߰� KIM
  MSG_MKT_SPOT_HOGA   = '\MKT\SPOT\HOGA\';
  MSG_MKT_SPOT_EXEC   = '\MKT\SPOT\EXEC\';
  //2013.10.30 �߰��ɼ� �߰�.
  MSG_MKT_EUREX_HOGA  = '\MKT\EUREX\HOGA\';
  MSG_MKT_EUREX_EXEC  = '\MKT\EUREX\EXEC\';
  MSG_MKT_EUREX_MAST  = '\MKT\EUREX\MAST\';

  // Order GW
  //�޼���Ÿ�� + ���μ��� + �޽�������
  MSGR_GW_ORD_NEW    = '\R\GW\ORD\NEW\';
  MSGR_GW_ORD_REP    = '\R\GW\ORD\REP\';
  MSGR_GW_ORD_CXL    = '\R\GW\ORD\CXL\';

{
  // Order REAL GW
  //�޼���Ÿ�� + ���μ��� + �޽�������
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

  // ���� ���� ����
  MSGR_SET_BEABLE_QTY = '\R\RCV\SET\BEABLE_QTY\';

  // ȯ������
  MSGR_SET_USD_EX_RATE = '\R\RCV\SET\USD_EX_RATE\';
  MSGP_SET_USD_EX_RATE = '\P\SEND\USD_EX_RATE\';

  // ����� ��ް���
  MSGR_SET_USER_GRADE  = '\R\RCV\SET\USER_GRADE\';
  MSGP_SET_USER_GRADE  = '\P\SEND\SET\USER_GRADE\';

  // ����� �ֹ�ȯ�����
  MSGR_SET_ENVIRONMENT = '\R\RCV\SET\USER_ENV\';

  // FX VIP �ֹ� ����
  MSGR_SET_FX_VIP_ORD  = '\R\RCV\SET\FX_VIP_ORD\';

  // �ܰ�����ȸ (�߰���û�� �����)
  MSGP_RELOAD_OI       = '\P\SEND\RELOAD\OI\';

  // STOP �ֹ� ����/���
  MSGR_STOP_ORDER      = '\R\RCV\STOP\ORDER\';
  // MIT �ֹ� ����/���
  MSGR_MIT_ORDER      = '\R\RCV\MIT\ORDER\';
  // �ֹ��ź�ó��
  MSGR_MANAGER_ORD_REJ= '\R\RCV\MANAGER\ORD\REJ\';
  // ��������
  MSGR_OPT_EXPIRE     = '\R\RCV\OPT\EXPIRE\';
    // �߰���������
  MSGR_EUREX_EXPIRE     = '\R\RCV\EUREX\EXPIRE\';
  // �ü�����
  MSGR_SCH_MKTSERVER  = '\R\RCV\SCH\MKTSERVER\';
  MSGR_CHG_MKTSERVER  = '\R\RCV\CHG\MKTSERVER\';

  //KR TR��û
  KR_REQ_5611 = '\KRSEND\REQ5611\';

implementation

end.
 