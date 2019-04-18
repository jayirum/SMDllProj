#pragma once


#include <stdio.h>
#include <Windows.h>


int InitDLL(void);
void DeInitDll(long idx);
void sendData();
void recvData();