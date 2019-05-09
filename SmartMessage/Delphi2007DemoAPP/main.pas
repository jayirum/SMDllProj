unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DataTypes, SubjectHeader, SiseHeader, MsgTypeHeader,
  FieldValueHeader, FieldHeader;

type
  TfmMain = class(TForm)
    Button1: TButton;
    edInitDLL: TEdit;
    Button2: TButton;
    edCreateInstance: TEdit;
    Timer1: TTimer;
    lblObjNumber: TLabel;
    lblMaxObjNumber: TLabel;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    lblSelectedInstance: TLabel;
    Button22: TButton;
    edConnRes: TEdit;
    Label2: TLabel;
    Button23: TButton;
    edDisconnRes: TEdit;
    Label5: TLabel;
    lblConnState: TLabel;
    Label1: TLabel;
    edUnKey: TEdit;
    Label11: TLabel;
    edClientIP: TEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button24: TButton;
    edSetMess: TEdit;
    Button26: TButton;
    edSetMessageField2: TEdit;
    Button27: TButton;
    edSendMessage2: TEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button25: TButton;
    edSMAddDest: TEdit;
    Button28: TButton;
    edCallBack2: TEdit;
    ListBox2: TListBox;
    Button3: TButton;
    edSMRemoveDest: TEdit;
    Button4: TButton;
    edSMAllRemoveDest: TEdit;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    function InitDLL: integer;
    { Private declarations }
  public
    DLLInitialized: Boolean;
    Initialize : TInitialize;
    SelectedInstance : integer;
    SMCreateInstance : TSMCreateInstance;
    SMGetObjectsNumber : TSMGetObjectsNumber;
    SMGetMaximumObjectsNumber : TSMGetMaximumObjectsNumber;
    SMClientConnect : TSMClientConnect;
    SMClientDisconnect : TSMClientDisconnect;
    SMClientIsConnected : TSMClientIsConnected;
    SMGetClientUniqKey : TSMGetClientUniqKey;
    SMGetClientIP : TSMGetClientIP;
    SMSetMessageParameters : TSMSetMessageParameters;
    SMSetMessageBinaryField : TSMSetMessageBinaryField;
    SMSetMessageStringField : TSMSetMessageStringField;
    SMSetMessageIntegerField : TSMSetMessageIntegerField;
    SMSetMessageDoubleField : TSMSetMessageDoubleField;    
    SMSendMessage : TSMSendMessage;
    SMEventAddDestination : TSMEventAddDestination;
    SMEventRemoveDestination : TSMEventRemoveDestination;
    SMEventAllRemoveDestination : TSMEventAllRemoveDestination;
    SMSetWorkEventCallBack : TSMSetWorkEventCallBack;
    SMMessageGetBinaryFieldValue : TSMMessageGetBinaryFieldValue;
    SMMessageGetStringFieldValue : TSMMessageGetStringFieldValue;
    SMMessageGetIntegerFieldValue : TSMMessageGetIntegerFieldValue;
    SMSMessageToSMessage : TSMSMessageToSMessage;
    SMSendResponse : TSMSendResponse;
    SMMessageGetDeliveryType : TSMMessageGetDeliveryType;
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

procedure TfmMain.Button12Click(Sender: TObject);
begin
SelectedInstance := (Sender as TButton).Tag;
end;

procedure TfmMain.Button1Click(Sender: TObject);
var resi : integer;
begin
  resi := InitDLL;
  edInitDLL.Text := IntToStr(resi);
  if resi = 0  then DLLInitialized := TRUE;
  if DLLInitialized then
  begin
 	Button2Click(nil);
  Button2Click(nil);
  end;
end;

procedure TfmMain.Button22Click(Sender: TObject);
var resi : integer;
begin
	edConnRes.Text := '';
  Application.ProcessMessages;
	resi := SMClientConnect(SelectedInstance, '110.4.89.206', 7789);
	edConnRes.Text := IntToStr(resi);
end;

procedure TfmMain.Button23Click(Sender: TObject);
var resi : integer;
begin
	edConnRes.Text := '';
  //Application.ProcessMessages;
  try
	resi := SMClientDisconnect(SelectedInstance);
  except

  end;
	edDisConnRes.Text := IntToStr(resi);
end;

procedure TfmMain.Button24Click(Sender: TObject);
var resi : integer;
begin
	resi := SMSetMessageParameters(SelectedInstance, MESSAGE_TO_SEND, Delivery_Push, SISE_GW , MSG_MKT_FX_EXEC);
	//ShowMessage("SMSetMessageParameters function return : " + IntToStr((int)resi));
	edSetMess.Text := IntToStr(resi);
end;

procedure TfmMain.Button25Click(Sender: TObject);
var resi : integer;
begin
	resi := SMEventAddDestination(SelectedInstance, SISE_GW, MSG_MKT_FX_EXEC);
	edSMAddDest.Text := IntToStr(resi);
end;

procedure TfmMain.Button26Click(Sender: TObject);
var resi : integer;
    TTFutExec : TFutExec;

    szTrId: string;
    sSide: string;
    strSide: string;
    sSymbol: string;
    sydiffSign: string;
    schgrate : string;

    ThisTime: TDateTime;

    sData : String;
begin

    try

      FillChar(TTFutExec, sizeof(TFutExec), 0);
      sSymbol := Copy('CLM19', 0, 8);
      Move(sSymbol[1], TTFutExec.issue, 8);



      TTFutExec.gap  := 1.5;     // Change
      TTFutExec.cup  := 89.12;   // close
      TTFutExec.sip  := 88.72;  // open
      TTFutExec.hip  := 89.76;   // high
      TTFutExec.lip  := 88.09;    // log
      TTFutExec.vol  := 876;       


      sydiffSign := '1';  //Copy(Trim(ptOVCOut^.ydiffSign), 0, 1);
      Move(sydiffSign[1], TTFutExec.ydiffSign, 1); // side

      schgrate     := '1.2';  //Copy(Trim(ptOVCOut^.chgrate), 0, 6);
      Move(schgrate[1], TTFutExec.chgrate, 6); // side

      TTFutExec.amt  := 0;
      TTFutExec.time := StrToInt('123456');              // time


      ThisTime := Now();
      TTFutExec.time := StrToInt(FormatDateTime('hhnnss', ThisTime));

      sSide          := '-';

      if (sSide = '-') then
        strSide := fvSide_BUY
      else
        strSide := fvSide_SELL;

       Move(strSide[1], TTFutExec.side, 1); // side
    except
      exit;
    end;

	resi := SMSetMessageBinaryField(SelectedInstance, MESSAGE_TO_SEND, fldFXExec, Addr(TTFutExec), sizeof(TTFutExec));
	resi := SMSetMessageStringField(SelectedInstance, MESSAGE_TO_SEND, fldHDMsg, PChar('GETRESULT'));
	resi := SMSetMessageIntegerField(SelectedInstance, MESSAGE_TO_SEND, fldHDUserID, 2);

  //fldHDUserID
	//ShowMessage("SMSetMessageField function return : " + IntToStr((int)resi));

	edSetMessageField2.Text := IntToStr(resi);
end;

procedure TfmMain.Button27Click(Sender: TObject);
var resi : integer;
begin
	resi := SMSendMessage(SelectedInstance, MESSAGE_TO_SEND);
	edSendMessage2.Text := IntToStr(resi);
end;

function CallBackProc(index : integer; WorkThread : pointer; SMessage: pointer) : integer; stdcall;
var fv : pointer;
    FutExec : TFutExec;
    strfield : string;
    p : PChar;
    resint, resi, delivmode : integer;
begin

  // here we het data from received message and show some of them

	fv := fmMain.SMMessageGetBinaryFieldValue(index, RECEIVED_MESSAGE, fldFXExec);
  p := fmMain.SMMessageGetStringFieldValue(index, RECEIVED_MESSAGE, fldHDMsg);
  resint := fmMain.SMMessageGetIntegerFieldValue(index, RECEIVED_MESSAGE, fldHDUserID);
  delivmode := fmMain.SMMessageGetDeliveryType(index, RECEIVED_MESSAGE);

  CopyMemory(Addr(FutExec), fv, sizeof(FutExec));

	fmMain.ListBox2.Items.Add('Message received via instance ' + IntToStr(index) + ' !');

  fmMain.ListBox2.Items.Add('Message Delivery Mode : ' + IntToStr(delivmode));
	fmMain.ListBox2.Items.Add('----- BINARY FIELD -----');
	fmMain.ListBox2.Items.Add('ISSUE : ' + String(FutExec.issue));
	fmMain.ListBox2.Items.Add('TIME : ' + IntToStr(FutExec.time));

  if p <> nil then
  begin
    strfield := String(p);
	  fmMain.ListBox2.Items.Add('STRING FIELD : ' + strfield);
  end;

  fmMain.ListBox2.Items.Add('INTEGER FIELD : ' + IntToStr(resint));

  // now respond if delivery type of received message is Delivery_Push

  if delivmode <> Ord(Delivery_Push) then
  begin
    Exit;
  end;
  

  // make respond message
  // amd modify something in it, for example fldHDUserID field from 2 to 1
  resi := fmMain.SMSMessageToSMessage(index, RECEIVED_MESSAGE, RESPOND_MESSAGE);
  resi := fmMain.SMSetMessageIntegerField(index, RESPOND_MESSAGE, fldHDUserID, 1);
  resi := fmMain.SMSetMessageStringField(index, RESPOND_MESSAGE, fldHDMsg, PChar('I am OK'));

  // also, important part, we need to setup message parameters, because SMessageToSMessage
  // do not copies them
  resi := fmMain.SMSetMessageParameters(index, RESPOND_MESSAGE, Delivery_RR_Response, SISE_GW , MSG_MKT_FX_EXEC);

  // send response now
  resi := fmMain.SMSendResponse(index, RESPOND_MESSAGE);

  //fmMain.ListBox2.Items.Add('SendResponse function return : ' + IntToStr(resi));

  Result := 0;
  Exit;

end;

procedure TfmMain.Button28Click(Sender: TObject);
var resi : integer;
begin
	resi := SMSetWorkEventCallBack(SelectedInstance, Addr(CallBackProc));
	edCallBack2.Text := IntToStr(resi);
end;

procedure TfmMain.Button2Click(Sender: TObject);
var resi : integer;
begin
  resi := SMCreateInstance;
  edCreateInstance.Text := IntToStr(resi);
  if (resi = 1) then SelectedInstance := 0;
end;

procedure TfmMain.Button3Click(Sender: TObject);
var resi : integer;
begin
	resi := SMEventRemoveDestination(SelectedInstance,SISE_GW, MSG_MKT_FX_EXEC);
	edSMRemoveDest.Text := IntToStr(resi);
end;

procedure TfmMain.Button4Click(Sender: TObject);
var resi : integer;
begin
	resi := SMEventAllRemoveDestination(SelectedInstance);
	edSMAllRemoveDest.Text := IntToStr(resi);
end;

procedure TfmMain.Button5Click(Sender: TObject);
begin
ListBox2.Clear;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  DLLInitialized := FALSE;
  SelectedInstance := -1;
end;

function TfmMain.InitDLL : integer;
var myDLL : HMODULE;
    resi : integer;
begin
	myDLL := LoadLibraryA('SmartMessage.dll');
	if (myDLL <= 0) then
	begin
		ShowMessage('DLL not found !');
		Result := -1; Exit;
	end;

	//ShowMessage(IntToStr((int)sizeof(TFutExec)));

	Initialize := nil;
	Initialize := TInitialize(GetProcAddress(myDLL, 'Initialize'));
	if (Addr(Initialize) = nil) then
	begin
	  ShowMessage('Initialize function not found in the DLL !');
	  Result := -1; Exit;
	end;

	SMCreateInstance := nil;
	SMCreateInstance := TSMCreateInstance(GetProcAddress(myDLL, 'SMCreateInstance'));
	if (Addr(SMCreateInstance) = nil) then
	begin
	  ShowMessage('SMCreateInstance function not found in the DLL !');
	  Result := -1; Exit;
	end;

	SMGetObjectsNumber := nil;
	SMGetObjectsNumber := TSMGetObjectsNumber(GetProcAddress(myDLL, 'SMGetObjectsNumber'));
	if (Addr(SMGetObjectsNumber) = nil) then
	begin
	  ShowMessage('SMGetObjectsNumber function not found in the DLL !');
	  Result := -1; Exit;
	end;

	SMGetMaximumObjectsNumber := nil;
	SMGetMaximumObjectsNumber := TSMGetMaximumObjectsNumber(GetProcAddress(myDLL, 'SMGetMaximumObjectsNumber'));
	if (Addr(SMGetMaximumObjectsNumber) = nil) then
	begin
	  ShowMessage('SMGetMaximumObjectsNumber function not found in the DLL !');
	  Result := -1; Exit;
	end;

 	SMClientConnect := nil;
	SMClientConnect := TSMClientConnect (GetProcAddress(myDLL, 'SMClientConnect'));
	if (Addr(SMClientConnect) = nil) then
	begin
	  ShowMessage('SMClientConnect function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMClientDisconnect := nil;
	SMClientDisconnect := TSMClientDisconnect (GetProcAddress(myDLL, 'SMClientDisconnect'));
	if (Addr(SMClientDisconnect) = nil) then
	begin
	  ShowMessage('SMClientDisconnect function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMClientIsConnected := nil;
	SMClientIsConnected := TSMClientIsConnected (GetProcAddress(myDLL, 'SMClientIsConnected'));
	if (Addr(SMClientIsConnected) = nil) then
	begin
	  ShowMessage('SMClientIsConnected function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMGetClientUniqKey := nil;
	SMGetClientUniqKey := TSMGetClientUniqKey (GetProcAddress(myDLL, 'SMGetClientUniqKey'));
	if (Addr(SMGetClientUniqKey) = nil) then
	begin
	  ShowMessage('SMGetClientUniqKey function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMGetClientIP := nil;
	SMGetClientIP := TSMGetClientIP (GetProcAddress(myDLL, 'SMGetClientIP'));
	if (Addr(SMGetClientIP) = nil) then
	begin
	  ShowMessage('SMGetClientIP function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMSetMessageParameters := nil;
	SMSetMessageParameters := TSMSetMessageParameters (GetProcAddress(myDLL, 'SMSetMessageParameters'));
	if (Addr(SMSetMessageParameters) = nil) then
	begin
	  ShowMessage('SMSetMessageParameters function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMSetMessageBinaryField := nil;
	SMSetMessageBinaryField := TSMSetMessageBinaryField (GetProcAddress(myDLL, 'SMSetMessageBinaryField'));
	if (Addr(SMSetMessageBinaryField) = nil) then
	begin
	  ShowMessage('SMSetMessageBinaryField function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMSetMessageStringField := nil;
	SMSetMessageStringField := TSMSetMessageStringField (GetProcAddress(myDLL, 'SMSetMessageStringField'));
	if (Addr(SMSetMessageStringField) = nil) then
	begin
	  ShowMessage('SMSetMessageStringField function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMSetMessageIntegerField := nil;
	SMSetMessageIntegerField := TSMSetMessageIntegerField (GetProcAddress(myDLL, 'SMSetMessageIntegerField'));
	if (Addr(SMSetMessageIntegerField) = nil) then
	begin
	  ShowMessage('SMSetMessageIntegerField function not found in the DLL !');
	  Result := -1; Exit;
	end;


  SMSendMessage := nil;
	SMSendMessage := TSMSendMessage (GetProcAddress(myDLL, 'SMSendMessage'));
	if (Addr(SMSendMessage) = nil) then
	begin
	  ShowMessage('SMSendMessage function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMEventAddDestination := nil;
	SMEventAddDestination := TSMEventAddDestination (GetProcAddress(myDLL, 'SMEventAddDestination'));
	if (Addr(SMEventAddDestination) = nil) then
	begin
	  ShowMessage('SMEventAddDestination function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMEventRemoveDestination := nil;
	SMEventRemoveDestination := TSMEventRemoveDestination (GetProcAddress(myDLL, 'SMEventRemoveDestination'));
	if (Addr(SMEventRemoveDestination) = nil) then
	begin
	  ShowMessage('SMEventRemoveDestination function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMEventAllRemoveDestination := nil;
	SMEventAllRemoveDestination := TSMEventAllRemoveDestination (GetProcAddress(myDLL, 'SMEventAllRemoveDestination'));
	if (Addr(SMEventAllRemoveDestination) = nil) then
	begin
	  ShowMessage('SMEventAllRemoveDestination function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMSetWorkEventCallBack := nil;
	SMSetWorkEventCallBack := TSMSetWorkEventCallBack (GetProcAddress(myDLL, 'SMSetWorkEventCallBack'));
	if (Addr(SMSetWorkEventCallBack) = nil) then
	begin
	  ShowMessage('SMSetWorkEventCallBack function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMMessageGetBinaryFieldValue := nil;
	SMMessageGetBinaryFieldValue := TSMMessageGetBinaryFieldValue (GetProcAddress(myDLL, 'SMMessageGetBinaryFieldValue'));
	if (Addr(SMMessageGetBinaryFieldValue) = nil) then
	begin
	  ShowMessage('SMMessageGetBinaryFieldValue function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMMessageGetStringFieldValue := nil;
	SMMessageGetStringFieldValue := TSMMessageGetStringFieldValue (GetProcAddress(myDLL, 'SMMessageGetStringFieldValue'));
	if (Addr(SMMessageGetStringFieldValue) = nil) then
	begin
	  ShowMessage('SMMessageGetStringFieldValue function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMMessageGetIntegerFieldValue := nil;
	SMMessageGetIntegerFieldValue := TSMMessageGetIntegerFieldValue (GetProcAddress(myDLL, 'SMMessageGetIntegerFieldValue'));
	if (Addr(SMMessageGetIntegerFieldValue) = nil) then
	begin
	  ShowMessage('SMMessageGetIntegerFieldValue function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMSMessageToSMessage := nil;
	SMSMessageToSMessage := TSMSMessageToSMessage(GetProcAddress(myDLL, 'SMSMessageToSMessage'));
	if (Addr(SMSMessageToSMessage) = nil) then
	begin
	  ShowMessage('SMSMessageToSMessage function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMSendResponse := nil;
	SMSendResponse := TSMSendResponse(GetProcAddress(myDLL, 'SMSendResponse'));
	if (Addr(SMSendResponse) = nil) then
	begin
	  ShowMessage('SMSendResponse function not found in the DLL !');
	  Result := -1; Exit;
	end;

  SMMessageGetDeliveryType := nil;
	SMMessageGetDeliveryType := TSMMessageGetDeliveryType(GetProcAddress(myDLL, 'SMMessageGetDeliveryType'));
	if (Addr(SMMessageGetDeliveryType) = nil) then
	begin
	  ShowMessage('SMMessageGetDeliveryType function not found in the DLL !');
	  Result := -1; Exit;
	end;

  resi := Initialize;
  Result := resi;
  
end;

procedure TfmMain.Timer1Timer(Sender: TObject);
var objnumber : integer;
    isconn : boolean;
begin

  Button2.Enabled := DLLInitialized;

	if (not DLLInitialized) then
	begin
		Button12.Enabled := false;
		Button13.Enabled := false;
		Button14.Enabled := false;
		Button15.Enabled := false;
		Button16.Enabled := false;
		Button17.Enabled := false;
		Button18.Enabled := false;
		Button19.Enabled := false;
		Button20.Enabled := false;
		Button21.Enabled := false;
		//Button11.Enabled := false;
		Button12.Font.Style := [];
		Button13.Font.Style := [];
		Button14.Font.Style := [];
		Button15.Font.Style := [];
		Button16.Font.Style := [];
		Button17.Font.Style := [];
		Button18.Font.Style := [];
		Button19.Font.Style := [];
		Button20.Font.Style := [];
		Button21.Font.Style := [];
	end;

	if (not DLLInitialized) then Exit;

	objnumber := SMGetObjectsNumber;
	//int maxobjnumber =

	Button12.Enabled := DLLInitialized and (Button12.Tag < objnumber);
	Button13.Enabled := DLLInitialized and (Button13.Tag < objnumber);
	Button14.Enabled := DLLInitialized and (Button14.Tag < objnumber);
	Button15.Enabled := DLLInitialized and (Button15.Tag < objnumber);
	Button16.Enabled := DLLInitialized and (Button16.Tag < objnumber);
	Button17.Enabled := DLLInitialized and (Button17.Tag < objnumber);
	Button18.Enabled := DLLInitialized and (Button18.Tag < objnumber);
	Button19.Enabled := DLLInitialized and (Button19.Tag < objnumber);
	Button20.Enabled := DLLInitialized and (Button20.Tag < objnumber);
	Button21.Enabled := DLLInitialized and (Button21.Tag < objnumber);

	Button12.Font.Style := [];
	Button13.Font.Style := [];
	Button14.Font.Style := [];
	Button15.Font.Style := [];
	Button16.Font.Style := [];
	Button17.Font.Style := [];
	Button18.Font.Style := [];
	Button19.Font.Style := [];
	Button20.Font.Style := [];
	Button21.Font.Style := [];

	if (SelectedInstance = 0)  then Button12.Font.Style := [fsBold];
	if (SelectedInstance = 1)  then Button13.Font.Style := [fsBold];
	if (SelectedInstance = 2)  then Button14.Font.Style := [fsBold];
	if (SelectedInstance = 3)  then Button15.Font.Style := [fsBold];
	if (SelectedInstance = 4)  then Button16.Font.Style := [fsBold];
	if (SelectedInstance = 5)  then Button17.Font.Style := [fsBold];
	if (SelectedInstance = 6)  then Button18.Font.Style := [fsBold];
	if (SelectedInstance = 7)  then Button19.Font.Style := [fsBold];
	if (SelectedInstance = 8)  then Button20.Font.Style := [fsBold];
	if (SelectedInstance = 9)  then Button21.Font.Style := [fsBold];


	if DLLInitialized then
  begin
    lblObjNumber.Caption := 'Objects number : ' + IntToStr(SMGetObjectsNumber);
	  lblMaxObjNumber.Caption := 'Maximum objects number : ' + IntToStr(SMGetMaximumObjectsNumber);
    lblSelectedInstance.Caption := 'Selected object index : ' + IntToStr(SelectedInstance);
  end;

	if (DLLInitialized and (SelectedInstance >= 0)) then
	begin
	  isconn := SMClientIsConnected(SelectedInstance);
	  if (isconn) then
	  lblConnState.Caption := 'Connection state : CONNECTED'
	  else
	  lblConnState.Caption := 'Connection state : DISCONNECTED';

	  edUnKey.Text := SMGetClientUniqKey(SelectedInstance);
	  if (isconn) then edClientIP.Text := SMGetClientIP(SelectedInstance)
	  else edClientIP.Text := '';


	end;

end;

end.
