//
// Created by ConBl on 2023/2/25.
//
#include "include/graphics.h"
#include <ctime>
#include <string>

using namespace std;

const char *NowTime;

int getTrayWndHeight(){
    HWND hwnd = ::FindWindow("Shell_TrayWnd","");
    RECT rect;
    ::GetWindowRect(hwnd, &rect);
    int nHeight = rect.bottom - rect.top;
    return nHeight;
}

basic_string<char> getTime () {
    char Time[15];
    string strTime;
    // 基于当前系统的当前日期/时间
    time_t now = time(nullptr);

    tm *ltm = localtime(&now);

    //sprintf(Time, "%d/%d/%d %d:%d:%d" , 1900 + ltm->tm_year, 1 + ltm->tm_mon, ltm->tm_mday, ltm->tm_hour, ltm->tm_min, ltm->tm_sec);

    sprintf(Time, "%2d:%2d:%2d" , ltm->tm_hour, ltm->tm_min, ltm->tm_sec);
    //printf("getTime: %s\n", Time);

    strTime = Time;

    return strTime;
}

int SetWindowAlpha(){
    return 0;
}

int main()
{
    int WindWidth, WindHeight;

    int ScreenWidth = GetSystemMetrics(SM_CXSCREEN);  //屏幕宽度
    int ScreenHeight = GetSystemMetrics(SM_CYSCREEN); //屏幕高度

    //WindWidth = 220;
    //WindHeight = 75;

    // printf("W: %d - H: %d\n", ScreenWidth, ScreenHeight);

    WindWidth = ScreenWidth / 6;
    WindHeight = ScreenHeight / 12;

    initgraph(WindWidth, WindHeight, 0);
    
    
    HWND hwnd = GetHWnd();

    ::SetWindowLong(hwnd, GWL_STYLE, GetWindowLong(hwnd, GWL_STYLE) & (~(WS_CAPTION | WS_SYSMENU | WS_SIZEBOX)));
    ::SetWindowLong(hwnd, GWL_EXSTYLE, GetWindowLong(hwnd, GWL_EXSTYLE) & (~(WS_EX_WINDOWEDGE | WS_EX_DLGMODALFRAME)) | WS_EX_LAYERED | WS_EX_TOOLWINDOW);

    SetWindowPos(hwnd, HWND_TOPMOST, (ScreenWidth / 4 - getwidth() / 2 + ScreenWidth / 2), getTrayWndHeight(),getwidth(), getheight(), SWP_SHOWWINDOW | SWP_FRAMECHANGED | SWP_DRAWFRAME);

    SetLayeredWindowAttributes(hwnd, 0x000000, 0, LWA_COLORKEY);

    setcolor(0xffffff);

    //line(0, 0, WindWidth, 0);

    line(0, WindHeight - 3, WindWidth, WindHeight - 3);
    line(0, WindHeight - 2, WindWidth, WindHeight - 2);
    line(0, WindHeight - 1, WindWidth, WindHeight - 1);

    RECT textPos = {0, 0, 0, 0};
    settextstyle(64, 0, _T("Console"));

    //drawtext(_T(TempChar), &textPos, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
    while (true) {
        NowTime = getTime().c_str();
        //printf("%s\n", NowTime);
        outtextxy(getwidth() / 20, 5, NowTime);
        //outtextxy(getwidth() * 0.35, 5, NowTime);
        Sleep(10);
    }

    system("pause");
    closegraph();
    return 0;
}
