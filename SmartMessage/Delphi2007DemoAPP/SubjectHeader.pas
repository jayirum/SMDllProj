unit SubjectHeader;

interface

const
  // CLENT  => SERVER ( Request & Reply )
  SISE_PROC    = '\SISE\SVR\';
  ORDER_PROC   = '\ORDER\SVR\';
  SEARCH_PROC  = '\SEARCH\SVR\';
  BANKING_PROC = '\BANKING\SVR\';
  ACCOUNT_PROC = '\ACCOUNT\SVR\';
  MANAGER_PROC = '\MANAGER\SVR\';
  LOGIN_PROC   = '\LOGIN\SVR\';
  BATCH_PROC   = '\BATCH\SVR\';
  SYS_ORD_PROC = '\SYS\ORD\SVR\';

  // GW
  ORDER_GW     = '\ORDER\GW\';
  SISE_GW      = '\SISE\GW\';
  EXEC_GW      = '\EXEC\GW\'; 

  // REAL GW
  ORD_REAL_GW  = '\ORD\REAL\GW\';
  EXEC_REAL_GW = '\EXEC\REAL\GW\';

  // RCV
  ORDER_RCV    = '\ORDER\RESPONSE\';
  ORD_REAL_RCV = '\ORD\REAL\RESPONSE\';

  // EXCHANGE
  EXCH_PROC    = '\EXCHANGE\SVR\';

  // EXEC
  EXEC_PROC    = '\EXEC\SVR\';

  // SERVER => CLIENT ( Push )
  SISE_REQ     = '\SISE\CLI\';
  ORDER_SEND   = '\ORDER\CLI\';
  MANAGER_SEND = '\MANAGER\CLI\';
  ALL_CLIENT   = '\ALL\CLIENT\';

  // Server => Server ( Push )
  LOSSCUT_PROC = '\LOSSCUT\SVR\';
  HEDGE_PROC   = '\HEDGE\SVR\';

  // ALL SERVER
  ALL_SERVER   = '\ALL\SERVER\';

  // SIGNAL & STRAT
  SIG_REALY   = '\SIG\RELAY\';

implementation

end.
