library FirstDLL;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  SMClientU,
  Windows,
  Messages, Variants, Dialogs,
  SubjectHeader, FieldHeader, CommonUnit, SiseHeader, System, MsgTypeHeader,
  FieldValueHeader;

const MAX_INSTANCES_NUMBER = 10;

(*uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleServer, StdCtrls, ExtCtrls, DB,
  ADODB, MemDS, DBAccess, MSAccess, SMClientU, ActiveX, FIFOQueue,
  CommonUnit, SiseHeader, MsgTypeHeader, FieldHeader, ETradeHeader, 
  SubjectHeader, RBStringTree, SyncObjs, FieldValueHeader, LogUnit, IniFiles, AAUsers,
  ipwcore, ipwipdaemon, StdUtilsKR;  *)


type TMyObject = class(TObject)
  public
  procedure OnThreadWorkEvent(WorkThread: TWorkThread; SMessage: TSMessage; var Handled: Boolean);
end;

type TWorkEventCallBack = function (index : integer; WorkThread : pointer; SMessage: pointer) : integer; stdcall;


var
    SMClients : Array[0..MAX_INSTANCES_NUMBER] of TSMClient;
    SMEvents : Array[0..MAX_INSTANCES_NUMBER] of TSMEvent;
    AbstractObjects : Array[0..MAX_INSTANCES_NUMBER] of TMyObject;
    WorkEventCallBacks : Array[0..MAX_INSTANCES_NUMBER] of TWorkEventCallBack;
    MessagesToSend : Array[0..MAX_INSTANCES_NUMBER] of TSMessage;
    ThreadWorkEvents : Array[0..MAX_INSTANCES_NUMBER] of TThreadWorkEvent;
    LastReceivedMessages : Array[0..MAX_INSTANCES_NUMBER] of TSMessage;
    BinaryData : Array[0..MAX_INSTANCES_NUMBER] of TBinaryData;

    ObjectsNumber : integer;

    FutExec : TFutExec;

    UniqKey : Array[0..255] of byte;
    ClientIP : Array[0..255] of byte;

type CharPointer = ^char;

procedure TMyObject.OnThreadWorkEvent(WorkThread: TWorkThread; SMessage: TSMessage; var Handled: Boolean);
var resi, i1 : integer;
    ownerindex : integer;
begin

  ownerindex := -1;
  for i1 := 0 to MAX_INSTANCES_NUMBER - 1 Do
  begin
    if Self = AbstractObjects[i1] then
    begin
      ownerindex := i1;
      Break;
    end;
  end;

  if ownerindex = -1 then
  begin
    Exit;
  end;

  if Assigned(WorkEventCallBacks[ownerindex]) then
  begin
    LastReceivedMessages[ownerindex] := SMessage;
    resi := WorkEventCallBacks[ownerindex](ownerindex, Addr(WorkThread), Addr(SMessage));
  end;

end;

{$R *.res}

function ConvertPCharToString(p : PChar) : string;
var len, i1 : integer;
    p2 : PChar;
    s : string;
begin
  len := 0;
  p2 := p;
  while (TRUE) do
  begin
    if (p2^ <> Chr(0)) then
    begin
      Inc(p2);
      Inc(len);
    end
    else Break;
  end;

  SetLength(s, len);
  for i1 := 1 to len Do
  begin
    s[i1] := p^;
    Inc(p);
  end;

  Result := s;
end;

function ConvertStringToPChar(instr : string; outstr : PChar) : integer;
var len, i1 : integer;
    p2 : PChar;
    s : string;
begin
  p2 := outstr;
  len := Length(instr);
  for i1 := 0 to (len - 1) Do
  begin
    p2^ := instr[i1 + 1];
    Inc(p2);
  end;
  p2^ := #0;
end;

// create set of instances and return index of created instance
// if MAX Number reached then return -1;
function SMCreateInstance : integer; stdcall;
begin
  if ObjectsNumber >= MAX_INSTANCES_NUMBER then
  begin
    Result := -1;
    Exit;
  end;

  SMClientS[ObjectsNumber] := TSMClient.Create(nil);
  SMEventS[ObjectsNumber] := TSMEvent.Create(nil);
  SMClientS[ObjectsNumber].ThreadMode := tbCustom;
  SMClientS[ObjectsNumber].ThreadCount := 10;
  SMEventS[ObjectsNumber].SMSClient := SMClientS[ObjectsNumber];
  SMEventS[ObjectsNumber].Active := TRUE;
  MessagesToSend[ObjectsNumber] := TSMessage.Create;

  SMEventS[ObjectsNumber].Tag := ObjectsNumber;
  SMClientS[ObjectsNumber].Tag := ObjectsNumber;

  AbstractObjects[ObjectsNumber] := TMyObject.Create;
  SMClientS[ObjectsNumber].OnThreadWorkEvent := AbstractObjects[ObjectsNumber].OnThreadWorkEvent;

  // nil means no callbacks assigned,
  // caller program need to assign callback function later to use it
  WorkEventCallBacks[ObjectsNumber] := nil;
  Inc(ObjectsNumber);

  Result := ObjectsNumber;

end;

function Initialize : integer; stdcall;
var i1 : integer;
begin

  ObjectsNumber := 0;
  for i1 := 0 to MAX_INSTANCES_NUMBER - 1 Do
  begin
    SMClientS[i1] := nil;
    SMEvents[i1] := nil;
    AbstractObjects[i1] := nil;
    WorkEventCallBacks[i1] := nil;
    MessagesToSend[i1] := nil;
    LastReceivedMessages[i1] := nil;
    BinaryData[i1] := nil;
  end;

  Result := 0;

  //SMClientR.OnThreadWorkEvent(MessageToSend, Handled);

  //ShowMessage(IntToStr(SizeOf(FutExec)));
  //ShowMessage('Debug output : Initialize inside DLL !');

end;

function DeInitialize : integer; stdcall;
begin
  Result := 0;
end;

function SMClientDisconnect(index : integer) : integer; stdcall;
begin
  Result := 0;
  try
  SMClients[index].Disconnect;
  except
    Result := -1;
  end;
end;

function SMClientConnect(index : integer; host : PChar; port : integer) : integer; stdcall;
var hoststr : string;
    resb, resb1, resb2 : boolean;
begin
  Result := 0;
  hoststr := ConvertPCharToString(host);
  resb := FALSE;
  try
  resb := SMClientS[index].Connect(hoststr, port);
  except
  resb := FALSE;
  end;
  if resb then Result := 0 else Result := -1;
end;

function SMClientIsConnected(index : integer) : boolean; stdcall;
begin
  Result := FALSE;
  if not Assigned(SMClients[index]) then Exit;
  Result := SMClientS[index].Connected;
end;

function SMSetMessageParameters(index : integer; DeliveryMode : TDeliveryMode; Destination : PChar; Msg : PChar) : integer; stdcall;
begin
  MessagesToSend[index].DeliveryMode := DeliveryMode;
  MessagesToSend[index].Destination := ConvertPCharToString(Destination);
  MessagesToSend[index].Msg := ConvertPCharToString(Msg);
  Result := 0;
end;

function SMSetMessageField(index : integer; FieldName : PChar; Data : Pointer; DataSize : integer) : integer; stdcall;
var fname : string;
begin
  Result := 0;
  try
  fname := ConvertPCharToString(FieldName);
  MessagesToSend[index].SetField(fname, data, DataSize);
  except
    Result := -1;
  end;
end;

function SMSendMessage(index : integer) : integer; stdcall;
var resb : boolean;
begin
  Result := -1;
  try
    resb := SMEventS[index].SendSMessage(MessagesToSend[index]);
    if resb then Result := 0 else Result := -1;
  except
    Result := -1;
    Exit;
  end;
end;

function SMGetClientUniqKey(index : integer) : PChar; stdcall;
var key : string;
begin
   key := SMClients[index].ClientUniqKey;
   ConvertStringToPChar(key, Addr(UniqKey));
   Result := Addr(UniqKey);
end;

function SMGetClientIP(index : integer) : PChar; stdcall;
var ip : string;
begin
   ip := SMClients[index].ClientIP;
   ConvertStringToPChar(ip, Addr(ClientIP));
   Result := Addr(ClientIP);
end;

function SMEventAddDestination(index : integer; Dest : PChar; Msg : PChar) : integer; stdcall;
var deststr, msgstr : string;
begin
  Result := 0;
  deststr := ConvertPCharToString(Dest);
  msgstr := ConvertPCharToString(Msg);
  SMEvents[index].AddDest(deststr, msgstr);
end;

function SMEventRemoveDestination(index : integer; Dest : PChar; Msg : PChar) : integer; stdcall;
var deststr, msgstr : string;
begin
  Result := 0;
  deststr := ConvertPCharToString(Dest);
  msgstr := ConvertPCharToString(Msg);
  SMEvents[index].RemoveDest(deststr, msgstr);
end;

function SMEventAllRemoveDestination(index : integer) : integer; stdcall;
var deststr, msgstr : string;
begin
  Result := 0;
  SMEvents[index].AllRemoveDest;
end;

function SMGetReceivedCnt(index : integer) : integer; stdcall;
begin
  Result := SMClientS[index].RcvCount;
end;

function SMSetWorkEventCallBack(index : integer; Addr : pointer) : integer; stdcall;
begin
  WorkEventCallBacks[index] := Addr;
  Result := 0;
end;

function SMMessageGetBinaryFieldValue(index : integer; FieldName : PChar) : PChar; stdcall;
var fn, fv : string;
    fvp : PChar;
    Mess2 : TSMessage;
    P1 : pointer;
begin
  fn := ConvertPCharToString(FieldName);
  BinaryData[index] := LastReceivedMessages[index].GetBinaryFieldValue(fn);
  Result := BinaryData[index].Buffer;
end;

function SMGetObjectsNumber : integer; stdcall;
begin
  Result := ObjectsNumber;
end;

function SMGetMaximumObjectsNumber : integer; stdcall;
begin
  Result := MAX_INSTANCES_NUMBER;
end;

exports // Make available to calling applications

  Initialize,
  DeInitialize,
  SMClientConnect,
  SMClientIsConnected,
  SMClientDisconnect,
  SMSetMessageParameters,
  SMSetMessageField,
  SMSendMessage,
  SMGetClientUniqKey,
  SMEventAddDestination,
  SMEventRemoveDestination,
  SMEventAllRemoveDestination,
  SMGetReceivedCnt,
  SMSetWorkEventCallBack,
  SMMessageGetBinaryFieldValue,
  SMGetObjectsNumber,
  SMGetMaximumObjectsNumber,
  SMCreateInstance,
  SMGetClientIP;

begin



end.
