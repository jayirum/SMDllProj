#include "SMDataTypes.h"
#include "Func.h"


extern HINSTANCE g_hIns;
extern long g_lIdx;
extern bool g_bInit;

void DeInitDll(long idx)
{
	SMClientDisconnect(idx);
}
int InitDLL(void)
{
	g_hIns = LoadLibraryA("FirstDLL.dll");
	if (g_hIns <= 0)
	{
		printf("DLL not found !\n");
		return -1;
	}

	//ShowMessage(IntToStr((int)sizeof(TFutExec)));

	Initialize = NULL;
	Initialize = (TInitialize)GetProcAddress(g_hIns, "Initialize");
	if (Initialize == NULL)
	{
		printf("Initialize function not found in the DLL !\n");
		return -1;
	}

	SMCreateInstance = (TSMCreateInstance)GetProcAddress(g_hIns, "SMCreateInstance");
	if (SMCreateInstance == NULL)
	{
		//ShowMessage("Initialize function not found in the DLL !");
		printf("SMCreateInstance error\n");
		return -1;

	}



	SMClientConnect = NULL;
	SMClientConnect = (TSMClientConnect)GetProcAddress(g_hIns, "SMClientConnect");
	if (SMClientConnect == NULL)
	{
		printf("SMClientConnect function not found in the DLL !");
		return -1;
	}

	SMClientDisconnect = NULL;
	SMClientDisconnect = (TSMClientDisconnect)GetProcAddress(g_hIns, "SMClientDisconnect");
	if (SMClientDisconnect == NULL)
	{
		printf("SMClientDisconnect function not found in the DLL !");
		return -1;
	}

	SMClientIsConnected = NULL;
	SMClientIsConnected = (TSMClientIsConnected)GetProcAddress(g_hIns, "SMClientIsConnected");
	if (SMClientIsConnected == NULL)
	{
		printf("SMClientIsConnected function not found in the DLL !");
		return -1;
	}

	SMSetMessageParameters = NULL;
	SMSetMessageParameters = (TSMSetMessageParameters)GetProcAddress(g_hIns, "SMSetMessageParameters");
	if (SMSetMessageParameters == NULL)
	{
		printf("SMSetMessageParameters function not found in the DLL !");
		return -1;
	}

	SMSetMessageField = NULL;
	SMSetMessageField = (TSMSetMessageField)GetProcAddress(g_hIns, "SMSetMessageField");
	if (SMSetMessageField == NULL)
	{
		printf("SMSetMessageField function not found in the DLL !");
		return -1;
	}

	SMSendMessage = NULL;
	SMSendMessage = (TSMSendMessage)GetProcAddress(g_hIns, "SMSendMessage");
	if (SMSendMessage == NULL)
	{
		printf("SMSendMessage function not found in the DLL !");
		return -1;
	}

	SMGetClientUniqKey = NULL;
	SMGetClientUniqKey = (TSMGetClientUniqKey)GetProcAddress(g_hIns, "SMGetClientUniqKey");
	if (SMGetClientUniqKey == NULL)
	{
		printf("SMGetClientUniqKey function not found in the DLL !");
		return -1;
	}

	SMEventAddDestination = NULL;
	SMEventAddDestination = (TSMEventAddDestination)GetProcAddress(g_hIns, "SMEventAddDestination");
	if (SMEventAddDestination == NULL)
	{
		printf("SMEventAddDestination function not found in the DLL !");
		return -1;
	}

	SMGetReceivedCnt = NULL;
	SMGetReceivedCnt = (TSMGetReceivedCnt)GetProcAddress(g_hIns, "SMGetReceivedCnt");
	if (SMGetReceivedCnt == NULL)
	{
		printf("SMGetReceivedCnt function not found in the DLL !");
		return -1;
	}

	SMSetWorkEventCallBack = NULL;
	SMSetWorkEventCallBack = (TSMSetWorkEventCallBack)GetProcAddress(g_hIns, "SMSetWorkEventCallBack");
	if (SMSetWorkEventCallBack == NULL)
	{
		printf("SMSetWorkEventCallBack function not found in the DLL !");
		return -1;
	}

	SMMessageGetBinaryFieldValue = NULL;
	SMMessageGetBinaryFieldValue = (TSMMessageGetBinaryFieldValue)GetProcAddress(g_hIns, "SMMessageGetBinaryFieldValue");
	if (SMMessageGetBinaryFieldValue == NULL)
	{
		printf("SMMessageGetBinaryFieldValue function not found in the DLL !");
		return -1;
	}

	SMGetObjectsNumber = NULL;
	SMGetObjectsNumber = (TSMGetObjectsNumber)GetProcAddress(g_hIns, "SMGetObjectsNumber");
	if (SMGetObjectsNumber == NULL)
	{
		printf("SMGetObjectsNumber function not found in the DLL !");
		return -1;
	}

	SMGetMaximumObjectsNumber = NULL;
	SMGetMaximumObjectsNumber = (TSMGetMaximumObjectsNumber)GetProcAddress(g_hIns, "SMGetMaximumObjectsNumber");
	if (SMGetMaximumObjectsNumber == NULL)
	{
		printf("SMGetMaximumObjectsNumber function not found in the DLL !");
		return -1;
	}

	SMCreateInstance = NULL;
	SMCreateInstance = (TSMCreateInstance)GetProcAddress(g_hIns, "SMCreateInstance");
	if (SMCreateInstance == NULL)
	{
		printf("SMCreateInstance function not found in the DLL !");
		return -1;
	}

	SMGetClientIP = NULL;
	SMGetClientIP = (TSMGetClientIP)GetProcAddress(g_hIns, "SMGetClientIP");
	if (SMGetClientIP == NULL)
	{
		printf("SMGetClientIP function not found in the DLL !");
		return -1;
	}

	SMEventRemoveDestination = NULL;
	SMEventRemoveDestination = (TSMEventRemoveDestination)GetProcAddress(g_hIns, "SMEventRemoveDestination");
	if (SMEventRemoveDestination == NULL)
	{
		printf("SMEventRemoveDestination function not found in the DLL !");
		return -1;
	}

	SMEventAllRemoveDestination = NULL;
	SMEventAllRemoveDestination = (TSMEventAllRemoveDestination)GetProcAddress(g_hIns, "SMEventAllRemoveDestination");
	if (SMEventAllRemoveDestination == NULL)
	{
		printf("SMEventAllRemoveDestination function not found in the DLL !");
		return -1;
	}

	long int resi;
	resi = Initialize();
	g_bInit = (resi == 0);
	return resi;

}



void sendData()
{
	long g_lIdx = SMCreateInstance() - 1;
	printf("SMCreateInstance ok\n");

	//
	//
	//
	if (SMClientConnect(g_lIdx, "110.4.89.206", (long)7789) < 0) {
		printf("failed to connect\n");
		return;
	}
	printf("connect ok !\n");

	//
	//
	//
	long ret = SMSetMessageParameters(g_lIdx, Delivery_Push, (char*)SISE_GW, (char*)MSG_MKT_FX_EXEC);
	printf("SMSetMessageParameters function ok !\n");

	//
	//
	//
	TFutExec pack;
	ZeroMemory(&pack, sizeof(pack));
	memcpy(pack.issue, "CLM19", 5);

	pack.gap = 1.5;
	pack.cup = 89.12;   // close
	pack.sip = 88.72;  // open
	pack.hip = 89.76;   // high
	pack.lip = 88.09;    // log
	pack.vol = 876;
	pack.ydiffSign[1] = '1';
	memcpy(pack.chgrate, "1.2", 3);  //Copy(Trim(ptOVCOut^.chgrate), 0, 6);

	pack.amt = 0;
	pack.time = 998877;
	pack.side[1] = '1';
	ret = SMSetMessageField(g_lIdx, (char*)fldFXExec, (char*)&pack, sizeof(pack));
	if (ret<0)
	{
		printf("SMSetMessageField call error !\n");
		return;
	}
	printf("SMSetMessageField call ok !\n");

	//
	//
	//
	ret = SMSendMessage(g_lIdx);
	if (ret <0)
	{
		printf("SMSendMessage call error !\n");
		return;
	}
	printf("SMSendMessage call ok !\n");

}

/*
procedure TRecvThread.FXExecReceived(Sender: TObject; RcvMsg: TSMessage);
var
FutExecBin: TBinaryData;
TTFutExec: TFutExec;
log : string;
begin
FutExecBin := RcvMsg.GetBinaryFieldValue(fldFXExec);

FillChar(TTFutExec, sizeof(TFutExec), 0);
move(FutExecBin.Buffer^, TTFutExec, FutExecBin.Len);

log := Format('Recv Prc (time:%d)', [TTFutExec.time]);
form1.memo.Lines.Insert(0, log);


end;
*/
long int __stdcall CallBackProc(int index, char* WorkThread, char* Message)
{
	char* fv;
	//ShowMessage("Our CallBack func !");

	fv = SMMessageGetBinaryFieldValue(index, (char *)fldFXExec);
	TFutExec FutExec;
	memcpy(&FutExec, fv, sizeof(FutExec));
	//ShowMessage(FutExec.issue);

	//ShowMessage(FutExec.issue);
	printf("[IDX:%d] (ISSUE:%s) (TIME:%d)\n", index, FutExec.issue, FutExec.time);

	return 0;
}




void recvData()
{
	g_hIns = LoadLibraryA("FirstDLL.dll");
	if (g_hIns <= 0)
	{
		//ShowMessage("DLL not found !");
		printf("load error\n");
		return;
	}
	printf("load OK\n");

	//
	//
	//
	int ret = Initialize();
	printf("Init ok\n");

	//
	//
	//
	g_lIdx = SMCreateInstance() - 1;
	printf("SMCreateInstance ok\n");

	//
	//
	//
	if (SMClientConnect(g_lIdx, "110.4.89.206", (long)7789) < 0) {
		printf("failed to connect\n");
		return;
	}
	printf("connect ok !\n");

	//
	//
	//
	//SMEventR.AddDest(SISE_GW, MSG_MKT_FX_HOGA);
	SMEventAddDestination(g_lIdx, (char*)SISE_GW, (char*)MSG_MKT_FX_HOGA);
	printf("SMEventAddDestination ok !\n");

	//
	//
	//
	int resi;
	resi = SMSetWorkEventCallBack(g_lIdx, (char *)CallBackProc);
	
	
	
	printf("SMClientDisconnect function ok !\n");
}
