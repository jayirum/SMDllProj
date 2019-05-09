unit FieldHeader;

interface

const
  // 공통 HEADER
  fldHDUserID    = 'H001';
  fldHDWndHandle = 'H002';
  fldHDIPAddr    = 'H003';
  fldHDErrFlag   = 'H004';
  fldHDMsgCode   = 'H005';
  fldHDMsg       = 'H006';
  fldHDMacAddr   = 'H007';

  // 시세
  fldFutMast  = 'S001';
  fldFutHoga  = 'S002';
  fldFutExec  = 'S003';
  fldOptMast  = 'S004';
  fldOptHoga  = 'S005';
  fldOptExec  = 'S006';
  fldFXMast   = 'S007';
  fldFXHoga   = 'S008';
  fldFXExec   = 'S009';

  //현물 추가 2013.10.23
  fldSPOTMast   = 'S010';
  fldSPOTHoga   = 'S011';
  fldSPOTExec   = 'S012';

 // KIM 야간선물 추가 2013.10.30
  fldEurexMast  = 'S013';
  fldEurexHoga  = 'S014';
  fldEurexExec  = 'S015';
    
  // Binary Field
  fldBinOrder        = 'B001';  // TTradeOrder
  fldBinOrigOrder    = 'B002';  // TTradeOrder
  fldBinOpenInterest = 'B003';  // TTradeOpenInterest
  fldBinBalance      = 'B004';  // TTradeBalance

  fldBinTotOrder     = 'B005';  // TTradeTotOrder
  fldBinTotOI        = 'B006';  // TTradeTotOpenInterest
  fldBinTotBalance   = 'B007';  // TTradeTotBalance
  fldBinTotSysOrder  = 'B008';  // TTradeTotOrder
  fldBinTotSysOI     = 'B009';  // TTradeTotOpenInterest
  fldBinUser         = 'B010';  // TTradeUser

  // Field
  fldSymbol        = 'U001';
  fldAccountNo     = 'U002';
  fldOrderQty      = 'U003';
  fldPrice         = 'U004';
  fldSide          = 'U005';
  fldOrdType       = 'U006';
  fldHostOrdNo     = 'U007';
  fldOrigHostOrdNo = 'U008';
  fldExecQty       = 'U009';
  fldExecPrice     = 'U010';
  fldOrderID       = 'U011';
  fldOrigOrderID   = 'U012';
  fldSpeedOrdFlag  = 'U013';
  fldPendingStatus = 'U014';
  fldSystemOrdFlag = 'U015';
  fldBankingType   = 'U016';
  fldComments      = 'U017';
  fldDepositReqMoney   = 'U018';
  fldDepositMoney      = 'U019';
  fldWithDrawReqMoney  = 'U020';
  fldWithDrawMoney     = 'U021';
  fldTransferFee       = 'U022';
  fldBankName          = 'U023';
  fldBankAccountNo     = 'U024';
  fldBankAccountHolder = 'U025';
  fldBankingProcFlag   = 'U026';
  fldDepositHolder     = 'U027';
  fldReqSeq            = 'U028';
  fldReqType           = 'U029';
  fldUserStatus        = 'U030';
  fldLicenseType       = 'U031';
  fldLoanCount         = 'U032';
  fldReqProcFlag       = 'U033';
  fldUserID            = 'U034';
  fldUserName          = 'U035';
  fldPassword          = 'U036';
  fldEMail             = 'U037';
  fldPhoneNo           = 'U038';
  fldMobilePhoneNo     = 'U039';
  fldUserAddress       = 'U040';
  fldFutCommissionRate = 'U041';
  fldOptCommissionRate = 'U042';
  fldLicenseFee        = 'U043';
  fldLicenseImposeType = 'U044';
  fldRoleID            = 'U045';
  fldLicenseMoney      = 'U046';
  fldUseDays           = 'U047';
  fldTotRec            = 'U048';
  fldTotRec2           = 'U049';
  fldNoticeSeq         = 'U050';
  fldNoticeSubject     = 'U051';
  fldNoticeText        = 'U052';
  fldTradeDate         = 'U053';
  fldRecStatus         = 'U054';
  fldMoney             = 'U055';
  fldCmplSeq           = 'U056';
  fldCmplType          = 'U057';
  fldBankingSeq        = 'U058';
  fldUpdateTime        = 'U059';
  fldTotRec3           = 'U060';
  fldTotRec4           = 'U061';
  fldExpireFlag        = 'U062';
  fldExecMsgType       = 'U063';
  fldBalanceMoney      = 'U064';
  fldClearCondition    = 'U065';
  fldTradeLimitFlag    = 'U066';
  fldEvalMoney         = 'U067';
  fldLossCutFlag       = 'U068';
  fldHostExecID        = 'U069';
  fldExecutionID       = 'U070';
  fldNewUserFlag       = 'U071';

  fldHedgeAccountNo    = 'U072';
  fldFutFlag           = 'U073';
  fldOptFlag           = 'U074';
  fldHedgeAccountFlag  = 'U076';
  fldNewOrdType        = 'U077';
  fldNewOrdTick        = 'U078';
  fldClearOrdType      = 'U079';
  fldClearOrdTick      = 'U080';
  fldErrorMsg          = 'U081';
  fldLeverageType      = 'U082';
  fldSMSRcvFlag        = 'U083';
  fldEMailRcvFlag      = 'U084';
  fldServerIP          = 'U085';
  fldServerPort        = 'U086';
  fldMarketServerIP    = 'U087';
  fldMarketServerPort  = 'U088';
  fldDBServerIP        = 'U089';
  fldDbServerPort      = 'U090';
  fldMileage           = 'U091';
  fldSwitchMileage     = 'U092';
  fldFxBaseCommission  = 'U093';

  fldFutOpenTime       = 'U094';
  fldFutCloseTime      = 'U095';
  fldFutExpOpenTime    = 'U096';
  fldFutExpCloseTime   = 'U097';
  fldFutOrdCloseFlag   = 'U098';
  fldFutConfigMsg      = 'U099';
  fldFxOpenTime        = 'U100';
  fldFxCloseTime       = 'U101';
  fldFxExpOpenTime     = 'U102';
  fldFxExpCloseTime    = 'U103';
  fldFxOrdCloseFlag    = 'U104';
  fldFxConfigMsg       = 'U105';
  fldRunBackupOrder    = 'U106';
  fldRunUploadSecurity = 'U107';
  fldRunEventDeposit   = 'U108';
  fldBeableQty         = 'U109';
  fldBeableOptQty      = 'U301';
  fldBeableFutQty      = 'U302';
  fldBeableFxQty       = 'U303';
  fldProduct           = 'U110';
  fldAuthorityKey      = 'U111';
  fldForciblyOrdFlag   = 'U112';
  fldOpenPriceFlag     = 'U113';
  fldFXCommissionType  = 'U114';
  fldAlreadyLoginFlag  = 'U115';
  fldUserIdentity      = 'U116';
  fldUSDExRate         = 'U117';
  fldPopupFlag         = 'U118';
  fldCmeCommissionRate = 'U119';
  fldOrderPath         = 'U120';
  fldCustNo            = 'U121';
  fldMaxBeableQty      = 'U122';
  fldTradeProduct      = 'U123';
  fldOrdCondType       = 'U124';
  fldSecurityKey       = 'U125';
  fldOrigMsgType       = 'U126';
  fldRealHostOrdNo     = 'U127';
  fldFutGrade          = 'U128';
  fldFXGrade           = 'U129';
  fldFutUseFlag        = 'U130';
  fldOptUseFlag        = 'U131';
  fldFXUseFlag         = 'U132';
  fldHighPrice         = 'U133';
  fldLowPrice          = 'U134';
  fldLossCutMoney      = 'U135';
  fldGoodsType         = 'U136';
  fldCloseOrdFlag      = 'U137';
  fldRealOrdFlag       = 'U138';
  fldAutoCxlFlag       = 'U139';
  fldOrdHandleType     = 'U140';
  fldFXVIPOrdFlag      = 'U141';
  fldOverNightOrdFlag  = 'U142';
  fldOverNightAccountNo= 'U143';
  fldRecommenderName   = 'U144';
  fldCMEOpenTime       = 'U145';
  fldCMECloseTime      = 'U146';
  fldCMEOrdCloseFlag   = 'U147';
  fldSTOPSetType       = 'U148';
  fldSTOPBasePrice     = 'U149';
  fldSTOPProfitUseFlag = 'U150';
  fldSTOPProfitTick    = 'U151';
  fldSTOPLossUseFlag   = 'U152';
  fldSTOPLossTick      = 'U153';
  fldMITPlcType        = 'U154';
  fldMITPrice          = 'U155';
  fldMITOrigPrice      = 'U156';
  fldStrikePrice       = 'U157';
  fldMktSvrType        = 'U158';
  fldFXOptGrade        = 'U159';

  fldEurexOpenTime       = 'U160';
  fldEurexCloseTime      = 'U161';
  fldEurexExpOpenTime    = 'U162';
  fldEurexExpCloseTime   = 'U163';
  fldEurexOrdCloseFlag   = 'U164';
  fldEurexConfigMsg      = 'U165';

  fldHKDExRate         = 'U166';  //lee 항셍환율
  fvBreakTimeFlag      = 'U167';

  //////////////////////////////////////////////////////////////////////
  // FB 전략 관련

  // HEADER PART
  fldHStratCode    = 'S001';
  fldHStratUserID  = 'S002';
  fldHStratCompID  = 'S003';
  fldHStratTp      = 'S004';
  fldHStratSymbol   = 'S005';
  fldHStratGroupKey = 'S006';
  fldHStratApiYN    = 'S007';
  fldHStratTM       = 'S008';
  fldHStratReserve  = 'S009';

  fldStratID = 'S010';
  fldStratChartTp = 'S011';
  fldStratChartNm = 'S012';
  fldStratPrc     = 'S013';
  fldStratChartGb = 'S014';
  fldStratArrowType = 'S015';

  fldStratMatchedChart  = 'S016';
  fldStratClrYN         = 'S017';
  fldStratCrossTp       = 'S018';
  fldStratClrAssistPrc  = 'S019';
  fldStratNowPrc        = 'S020';

  fldStratBreakTp = 'S021';
  fldStratMAPrice = 'S022';

  fldStratSide      = 'S023';
  fldStratOrdTp     = 'S024';
  fldStratProcTp    = 'S025';
  fldStratOrdPrc    = 'S026';
  fldStratOrdQty    = 'S027';
  fldStratCnclAllYN = 'S028';
  fldStratOrigNo  = 'S029';
  fldStratOrigPrc = 'S030';
  fldStratSLTick  = 'S031';
  fldStratPTTick  = 'S032';
  
implementation

end.

