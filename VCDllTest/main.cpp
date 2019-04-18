#include "Func.h"


HINSTANCE g_hIns = NULL;
long g_lIdx = 0;
bool g_bInit = false;


void main(int argc, char** argv)
{
	if (argc < 2)
	{
		printf("Usage ==> 'S' : send, 'R' : recv\n");
		return;
	}

	if (InitDLL() >= 0)
	{

		if (*argv[1] == 'R' || *argv[1] == 'r')
			recvData();
		if (*argv[1] == 'S' || *argv[1] == 's')
			sendData();
	}

	getchar();


	DeInitDll(g_lIdx);
}

