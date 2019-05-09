unit DataTypes;

interface


type TCMDType = (cmtIOCPEvent, cmtAccept, cmtDisconnect, cmtTR_CODE);
type TR_CODE = (ctDestAdd, ctDestDel, ctDestPushSend, ctDestRRSend, ctDestRRSendResponse, ctUserID, ctDisconnect, ctUserConnectOk, ctUsersAlready, ctClientUniqKey);
type TDeliveryMode = (Delivery_RR, Delivery_RR_Response, Delivery_Push);

const MESSAGE_TO_SEND = 0;
const RECEIVED_MESSAGE = 1;
const RESPOND_MESSAGE = 2;

type TInitialize = function : integer; stdcall;
type TSMCreateInstance = function : integer; stdcall;
type TSMGetObjectsNumber = function : integer; stdcall;
type TSMGetMaximumObjectsNumber = function : integer; stdcall;
type TSMClientConnect = function (index : integer; host : PChar; port : integer) : integer; stdcall;
type TSMClientDisconnect = function (index : integer) : integer; stdcall;
type TSMClientIsConnected = function (index : integer) : boolean; stdcall;
type TSMGetClientUniqKey = function (index : integer) : PChar; stdcall;
type TSMGetClientIP = function (index : integer) : PChar; stdcall;
type TSMSetMessageParameters = function (index, messtype : integer; DeliveryMode : TDeliveryMode; Destination : PChar; Msg : PChar) : integer; stdcall;
type TSMSetMessageBinaryField = function (index, messtype : integer; FieldName : PChar; Data : Pointer; DataSize : integer) : integer; stdcall;
type TSMSetMessageStringField = function (index, messtype : integer; FieldName : PChar; Str : Pointer) : integer; stdcall;
type TSMSendMessage = function (index, messtype : integer) : integer; stdcall;
type TSMEventAddDestination = function (index : integer; Dest : PChar; Msg : PChar) : integer; stdcall;
type TSMEventRemoveDestination = function (index : integer; Dest : PChar; Msg : PChar) : integer; stdcall;
type TSMEventAllRemoveDestination = function (index : integer) : integer; stdcall;
type TSMSetWorkEventCallBack = function (index : integer; Addr : pointer) : integer; stdcall;
type TSMMessageGetBinaryFieldValue = function (index, messtype : integer; FieldName : PChar) : PChar; stdcall;
type TSMMessageGetStringFieldValue = function (index, messtype : integer; FieldName : PChar) : PChar; stdcall;
type TSMMessageGetIntegerFieldValue = function (index, messtype : integer; FieldName : PChar) : integer; stdcall;
type TSMSetMessageIntegerField = function (index, messtype : integer; FieldName : PChar; Val : integer) : integer; stdcall;
type TSMSetMessageDoubleField = function (index, messtype : integer; FieldName : PChar; Val : double) : integer; stdcall;
type TSMSMessageToSMessage = function (index, inmesstype, outmesstype : integer) : integer; stdcall;
type TSMSendResponse = function (index, messtype : integer) : integer; stdcall;
type TSMMessageGetDeliveryType = function (index, messtype : integer) : integer; stdcall;

implementation

end.
