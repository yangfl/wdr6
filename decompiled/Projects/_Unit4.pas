//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit4;

interface

uses
  SysUtils, Classes;

type
  _Enum_4_1 = (odSelected, odGrayed, odDisabled, odChecked, odFocused, odDefault, odHotLight, odInactive, odNoAccel, odNoFocusRect, odReserved1, odReserved2, odComboBoxEdit);
  TOwnerDrawState = set of _Enum_4_1;
    function RegCloseKey:Integer; stdcall;//00407854
    function RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;//0040785C
    function RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;//00407864
    function CloseHandle:Integer; stdcall;//0040786C
    function CompareStringA(dwCmpFlags:DWORD; lpString1:PAnsiChar; cchCount1:Integer; lpString2:PAnsiChar; cchCount2:Integer):Integer; stdcall;//00407874
    function CopyFileA(lpNewFileName:PAnsiChar; bFailIfExists:LongBool):LongBool; stdcall;//0040787C
    function CreateDirectoryA(lpSecurityAttributes:PSecurityAttributes):LongBool; stdcall;//00407884
    function CreateEventA(bManualReset:LongBool; bInitialState:LongBool; lpName:PAnsiChar):THandle; stdcall;//0040788C
    function CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;//00407894
    function CreateThread(dwStackSize:DWORD; lpStartAddress:Pointer; lpParameter:Pointer; dwCreationFlags:DWORD; var lpThreadId:DWORD):THandle; stdcall;//0040789C
    procedure DeleteCriticalSection; stdcall;//004078A4
    function DeleteFileA:LongBool; stdcall;//004078AC
    function DeviceIoControl(dwIoControlCode:DWORD; lpInBuffer:Pointer; nInBufferSize:DWORD; lpOutBuffer:Pointer; nOutBufferSize:DWORD; var lpBytesReturned:DWORD; lpOverlapped:POverlapped):LongBool; stdcall;//004078B4
    procedure EnterCriticalSection; stdcall;//004078BC
    function EnumCalendarInfoA(Locale:DWORD; Calendar:DWORD; CalType:DWORD):LongBool; stdcall;//004078C4
    function FileTimeToDosDateTime(var lpFatDate:Word; var lpFatTime:Word):LongBool; stdcall;//004078CC
    function FileTimeToLocalFileTime(var lpLocalFileTime:_FILETIME):LongBool; stdcall;//004078D4
    procedure FindClose;//004078DC
    function FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;//004078E4
    function FindResourceA(lpName:PAnsiChar; lpType:PAnsiChar):HRSRC; stdcall;//004078EC
    function FormatMessageA(lpSource:Pointer; dwMessageId:DWORD; dwLanguageId:DWORD; lpBuffer:PAnsiChar; nSize:DWORD; Arguments:Pointer):DWORD; stdcall;//004078F4
    function FreeLibrary:LongBool; stdcall;//004078FC
    function InterlockedDecrement:Integer;//00407904
    function InterlockedExchange(B:Integer):Integer;//0040790C
    function InterlockedIncrement:Integer; stdcall;//00407914
    function FreeResource:LongBool; stdcall;//0040791C
    function GetACP:LongWord;//00407924
    function GetCPInfo(var lpCPInfo:_cpinfo):LongBool; stdcall;//0040792C
    function GetCurrentProcess:THandle;//00407934
    function GetCurrentProcessId:DWORD;//0040793C
    function GetCurrentThread:THandle;//00407944
    function GetCurrentThreadId:Cardinal;//0040794C
    function GetDateFormatA(dwFlags:DWORD; lpDate:PSystemTime; lpFormat:PAnsiChar; lpDateStr:PAnsiChar; cchDate:Integer):Integer; stdcall;//00407954
    function GetDiskFreeSpaceA(var lpSectorsPerCluster:DWORD; var lpBytesPerSector:DWORD; var lpNumberOfFreeClusters:DWORD; var lpTotalNumberOfClusters:DWORD):LongBool; stdcall;//0040795C
    function GetFileAttributesA:DWORD; stdcall;//00407964
    function GetFullPathNameA(nBufferLength:DWORD; lpBuffer:PAnsiChar; var lpFilePart:PAnsiChar):DWORD; stdcall;//0040796C
    function GetLastError:Integer;//00407974
    function GetLocalTime:TDateTime;//0040797C
    function GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;//00407984
    function GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;//0040798C
    function GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;//00407994
    function GetModuleHandleA:HMODULE; stdcall;//0040799C
    function GetPrivateProfileStringA(lpKeyName:PAnsiChar; lpDefault:PAnsiChar; lpReturnedString:PAnsiChar; nSize:DWORD; lpFileName:PAnsiChar):DWORD; stdcall;//004079A4
    function GetProcAddress(lpProcName:PAnsiChar):Pointer; stdcall;//004079AC
    function GetProfileStringA(lpKeyName:PAnsiChar; lpDefault:PAnsiChar; lpReturnedString:PAnsiChar; nSize:DWORD):DWORD; stdcall;//004079B4
    function GetStdHandle:Integer; stdcall;//004079BC
    function GetStringTypeExA(dwInfoType:DWORD; lpSrcStr:PAnsiChar; cchSrc:Integer; var lpCharType:void ):LongBool; stdcall;//004079C4
    function GetSystemDirectoryA(uSize:LongWord):LongWord; stdcall;//004079CC
    procedure GetSystemInfo; stdcall;//004079D4
    procedure GetSystemTime; stdcall;//004079DC
    function GetTempPathA(lpBuffer:PAnsiChar):DWORD; stdcall;//004079E4
    function GetThreadLocale:Integer;//004079EC
    function GetTickCount:Cardinal;//004079F4
    function GetVersion:DWORD;//004079FC
    function GetVersionExA:LongBool; stdcall;//00407A04
    function GlobalAddAtomA:Word; stdcall;//00407A0C
    function GlobalAlloc(dwBytes:DWORD):THandle; stdcall;//00407A14
    function GlobalDeleteAtom:Word; stdcall;//00407A1C
    function GlobalFindAtomA:Word; stdcall;//00407A24
    function GlobalFree:THandle; stdcall;//00407A2C
    function GlobalLock:Pointer; stdcall;//00407A34
    function GlobalHandle:THandle; stdcall;//00407A3C
    function GlobalReAlloc(dwBytes:DWORD; uFlags:LongWord):THandle; stdcall;//00407A44
    function GlobalSize:DWORD; stdcall;//00407A4C
    function GlobalUnlock:LongBool; stdcall;//00407A54
    procedure InitializeCriticalSection; stdcall;//00407A5C
    procedure LeaveCriticalSection; stdcall;//00407A64
    function LoadLibraryA:HMODULE; stdcall;//00407A6C
    function LoadResource(hResInfo:HRSRC):THandle; stdcall;//00407A74
    function LockResource:Pointer; stdcall;//00407A7C
    function MoveFileA(lpNewFileName:PAnsiChar):LongBool; stdcall;//00407A84
    function MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;//00407A8C
    function MultiByteToWideChar(Flags:Integer; MBStr:PAnsiChar; MBCount:Integer; WCStr:PWideChar; WCCount:Integer):Integer; stdcall;//00407A94
    function QueryPerformanceCounter:LongBool; stdcall;//00407A9C
    function QueryPerformanceFrequency:LongBool; stdcall;//00407AA4
    function ReadFile(var Buffer:void ; nNumberOfBytesToRead:Cardinal; var lpNumberOfBytesRead:Cardinal; lpOverlapped:Pointer):Integer; stdcall;//00407AAC
    function ResetEvent:LongBool; stdcall;//00407AB4
    function SetEndOfFile:LongBool; stdcall;//00407ABC
    function SetErrorMode:LongWord; stdcall;//00407AC4
    function SetEvent:LongBool; stdcall;//00407ACC
    function SetFilePointer(Distance:Integer; DistanceHigh:Pointer; MoveMethod:Integer):Integer; stdcall;//00407AD4
    procedure SetLastError; stdcall;//00407ADC
    function SetPriorityClass(dwPriorityClass:DWORD):LongBool; stdcall;//00407AE4
    function SetThreadLocale:LongBool; stdcall;//00407AEC
    procedure SetThreadPriority(const APriority:TThreadPriority; const APolicy:Integer);//00407AF4
    function SizeofResource(hResInfo:HRSRC):DWORD; stdcall;//00407AFC
    //function Sleep:?; stdcall;//00407B04
    function SystemTimeToFileTime(var lpFileTime:_FILETIME):LongBool; stdcall;//00407B0C
    function VirtualAlloc(dwSize:DWORD; flAllocationType:DWORD; flProtect:DWORD):Pointer; stdcall;//00407B14
    function VirtualFree(dwSize:DWORD; dwFreeType:DWORD):LongBool; stdcall;//00407B1C
    function VirtualQuery(var lpBuffer:TMemInfo; dwLength:Integer):Integer; stdcall;//00407B24
    function WaitForSingleObject(dwMilliseconds:DWORD):DWORD; stdcall;//00407B2C
    function WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;//00407B34
    function WritePrivateProfileStringA(lpKeyName:PAnsiChar; lpString:PAnsiChar; lpFileName:PAnsiChar):LongBool; stdcall;//00407B3C
    function lstrcat(lpString2:PChar):PChar; stdcall;//00407B44
    function lstrcmp(lpString2:PChar):Integer; stdcall;//00407B4C
    function lstrcpy(lpString2:PChar):PChar; stdcall;//00407B54
    function GetFileVersionInfoA(dwHandle:DWORD; dwLen:DWORD; lpData:Pointer):LongBool; stdcall;//00407B5C
    function GetFileVersionInfoSizeA(var lpdwHandle:DWORD):DWORD; stdcall;//00407B64
    function VerQueryValueA(lpSubBlock:PAnsiChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;//00407B6C
    function BitBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; Rop:DWORD):LongBool; stdcall;//00407B74
    function CombineRgn(p2:HRGN; p3:HRGN; p4:Integer):Integer; stdcall;//00407B7C
    function CopyEnhMetaFileA(p2:PAnsiChar):HENHMETAFILE; stdcall;//00407B84
    function CreateBitmap(Height:Integer; Planes:Longint; BitCount:Longint; Bits:Pointer):HBITMAP; stdcall;//00407B8C
    function CreateBrushIndirect:HBRUSH; stdcall;//00407B94
    function CreateCompatibleBitmap(Width:Integer; Height:Integer):HBITMAP; stdcall;//00407B9C
    function CreateCompatibleDC:HDC; stdcall;//00407BA4
    function CreateDCA(lpszDevice:PAnsiChar; lpszOutput:PAnsiChar; lpdvmInit:PDeviceModeA):HDC; stdcall;//00407BAC
    function CreateDIBSection(const p2:tagBITMAPINFO; p3:LongWord; var p4:Pointer; p5:THandle; p6:DWORD):HBITMAP; stdcall;//00407BB4
    function CreateDIBitmap(var InfoHeader:tagBITMAPINFOHEADER; dwUsage:DWORD; InitBits:PChar; var InitInfo:tagBITMAPINFO; wUsage:LongWord):HBITMAP; stdcall;//00407BBC
    function CreateFontIndirectA:HFONT; stdcall;//00407BC4
    function CreateHalftonePalette:HPALETTE; stdcall;//00407BCC
    function CreateICA(lpszDevice:PAnsiChar; lpszOutput:PAnsiChar; lpdvmInit:PDeviceModeA):HDC; stdcall;//00407BD4
    function CreatePalette:HPALETTE; stdcall;//00407BDC
    function CreatePenIndirect:HPEN; stdcall;//00407BE4
    function CreateRectRgn(p2:Integer; p3:Integer; p4:Integer):HRGN; stdcall;//00407BEC
    function CreateSolidBrush:HBRUSH; stdcall;//00407BF4
    function DeleteDC:LongBool; stdcall;//00407BFC
    function DeleteEnhMetaFile:LongBool; stdcall;//00407C04
    function DeleteObject:LongBool; stdcall;//00407C0C
    function EndDoc:Integer; stdcall;//00407C14
    function EndPage:Integer; stdcall;//00407C1C
    function ExcludeClipRect(LeftRect:Integer; TopRect:Integer; RightRect:Integer; BottomRect:Integer):Integer; stdcall;//00407C24
    function ExtCreatePen(Width:DWORD; const Brush:tagLOGBRUSH; StyleCount:DWORD; Style:Pointer):HPEN; stdcall;//00407C2C
    function ExtTextOutA(X:Integer; Y:Integer; Options:Longint; Rect:PRect; Str:PAnsiChar; Count:Longint; Dx:PInteger):LongBool; stdcall;//00407C34
    function ExtTextOutW(X:Integer; Y:Integer; Options:Longint; Rect:PRect; Str:PWideChar; Count:Longint; Dx:PInteger):LongBool; stdcall;//00407C3C
    function GdiFlush:LongBool;//00407C44
    function GetBitmapBits(Count:Longint; Bits:Pointer):Longint; stdcall;//00407C4C
    function GetBrushOrgEx(var lppt:TPoint):LongBool; stdcall;//00407C54
    function GetClipBox(var Rect:TRect):Integer; stdcall;//00407C5C
    function GetClipRgn(rgn:HRGN):Integer; stdcall;//00407C64
    function GetCurrentPositionEx(Point:PPoint):LongBool; stdcall;//00407C6C
    function GetDCOrgEx(var Origin:TPoint):LongBool; stdcall;//00407C74
    function GetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadStructs:void ):LongWord; stdcall;//00407C7C
    function GetDIBits(Bitmap:HBITMAP; StartScan:LongWord; NumScans:LongWord; Bits:Pointer; var BitInfo:tagBITMAPINFO; Usage:LongWord):Integer; stdcall;//00407C84
    function GetDeviceCaps(Index:Integer):Integer; stdcall;//00407C8C
    function GetEnhMetaFileBits(p2:LongWord; p3:PByte):LongWord; stdcall;//00407C94
    function GetEnhMetaFileHeader(p2:LongWord; p3:PEnhMetaHeader):LongWord; stdcall;//00407C9C
    function GetEnhMetaFilePaletteEntries(p2:LongWord; p3:Pointer):LongWord; stdcall;//00407CA4
    function GetMetaFileBitsEx(p2:LongWord; p3:Pointer):LongWord; stdcall;//00407CAC
    function GetObjectA(p2:Integer; p3:Pointer):Integer; stdcall;//00407CB4
    function GetPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;//00407CBC
    function GetPixel(X:Integer; Y:Integer):DWORD; stdcall;//00407CC4
    function GetRgnBox(var p2:TRect):Integer; stdcall;//00407CCC
    function GetStockObject:HGDIOBJ; stdcall;//00407CD4
    function GetSystemPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;//00407CDC
    function GetTextExtentPoint32A(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;//00407CE4
    function GetTextExtentPoint32W(Str:PWideChar; Count:Integer; var Size:TSize):LongBool; stdcall;//00407CEC
    function GetTextExtentPointA(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;//00407CF4
    function GetTextMetricsA(var TM:tagTEXTMETRICA):LongBool; stdcall;//00407CFC
    function GetWinMetaFileBits(p2:LongWord; p3:PByte; p4:Integer; p5:HDC):LongWord; stdcall;//00407D04
    function GetWindowOrgEx(var Point:TPoint):LongBool; stdcall;//00407D0C
    function IntersectClipRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):Integer; stdcall;//00407D14
    function LineTo(X:Integer; Y:Integer):LongBool; stdcall;//00407D1C
    function MaskBlt(XDest:Integer; YDest:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XScr:Integer; YScr:Integer; Mask:HBITMAP; xMask:Integer; yMask:Integer; Rop:DWORD):LongBool; stdcall;//00407D24
    function MoveToEx(p2:Integer; p3:Integer; p4:PPoint):LongBool; stdcall;//00407D2C
    function PatBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; Rop:DWORD):LongBool; stdcall;//00407D34
    function PlayEnhMetaFile(p2:HENHMETAFILE; const p3:TRect):LongBool; stdcall;//00407D3C
    function PolyPolyline(const PointStructs:void ; const Points:void ; p4:DWORD):LongBool; stdcall;//00407D44
    function Polygon(var Points:void ; Count:Integer):LongBool; stdcall;//00407D4C
    function Polyline(var Points:void ; Count:Integer):LongBool; stdcall;//00407D54
    function RealizePalette:LongWord; stdcall;//00407D5C
    function RectVisible(const Rect:TRect):LongBool; stdcall;//00407D64
    function Rectangle(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;//00407D6C
    function RestoreDC(SavedDC:Integer):LongBool; stdcall;//00407D74
    function SaveDC:Integer; stdcall;//00407D7C
    function SelectClipRgn(Region:HRGN):Integer; stdcall;//00407D84
    function SelectObject(p2:HGDIOBJ):HGDIOBJ; stdcall;//00407D8C
    function SelectPalette(Palette:HPALETTE; ForceBackground:LongBool):HPALETTE; stdcall;//00407D94
    function SetAbortProc(lpAbortProc:TFNAbortProc):Integer; stdcall;//00407D9C
    function SetBkColor(Color:DWORD):DWORD; stdcall;//00407DA4
    function SetBkMode(BkMode:Integer):Integer; stdcall;//00407DAC
    function SetBrushOrgEx(X:Integer; Y:Integer; PrevPt:PPoint):LongBool; stdcall;//00407DB4
    function SetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadSTructs:void ):LongWord; stdcall;//00407DBC
    function SetEnhMetaFileBits(p2:PChar):HENHMETAFILE; stdcall;//00407DC4
    function SetMapMode(p2:Integer):Integer; stdcall;//00407DCC
    function SetPixel(X:Integer; Y:Integer; Color:DWORD):DWORD; stdcall;//00407DD4
    function SetROP2(p2:Integer):Integer; stdcall;//00407DDC
    function SetStretchBltMode(StretchMode:Integer):Integer; stdcall;//00407DE4
    function SetTextColor(Color:DWORD):DWORD; stdcall;//00407DEC
    function SetViewportExtEx(XExt:Integer; YExt:Integer; Size:PSize):LongBool; stdcall;//00407DF4
    function SetViewportOrgEx(X:Integer; Y:Integer; Point:PPoint):LongBool; stdcall;//00407DFC
    function SetWinMetaFileBits(p2:PChar; p3:HDC; const p4:tagMETAFILEPICT):HENHMETAFILE; stdcall;//00407E04
    function SetWindowExtEx(XExt:Integer; YExt:Integer; Size:PSize):LongBool; stdcall;//00407E0C
    function SetWindowOrgEx(X:Integer; Y:Integer; Point:PPoint):LongBool; stdcall;//00407E14
    function StartDocA(const p2:_DOCINFOA):Integer; stdcall;//00407E1C
    function StartPage:Integer; stdcall;//00407E24
    function StretchBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; SrcWidth:Integer; SrcHeight:Integer; Rop:DWORD):LongBool; stdcall;//00407E2C
    function StretchDIBits(DestX:Integer; DestY:Integer; DestWidth:Integer; DestHeight:Integer; SrcX:Integer; SrcY:Integer; SrcWidth:Integer; SrcHeight:Integer; Bits:Pointer; var BitsInfo:tagBITMAPINFO; Usage:LongWord; Rop:DWORD):Integer; stdcall;//00407E34
    function UnrealizeObject:LongBool; stdcall;//00407E3C
    function ActivateKeyboardLayout(Flags:LongWord):HKL; stdcall;//00407E44
    function AdjustWindowRectEx(dwStyle:DWORD; bMenu:LongBool; dwExStyle:DWORD):LongBool; stdcall;//00407E4C
    function CharLowerA:PAnsiChar; stdcall;//00407E54
    function BeginDeferWindowPos:THandle; stdcall;//00407E5C
    function BeginPaint(var lpPaint:tagPAINTSTRUCT):HDC; stdcall;//00407E64
    function CallNextHookEx(nCode:Integer; wParam:Longint; lParam:Longint):Longint; stdcall;//00407E6C
    function CallWindowProcA(hWnd:HWND; Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407E74
    function CharLowerBuffA(cchLength:DWORD):DWORD; stdcall;//00407E7C
    function CharNextA:PAnsiChar; stdcall;//00407E84
    function CharToOemA(lpszDst:PAnsiChar):LongBool; stdcall;//00407E8C
    function CharToOemA(lpszDst:PAnsiChar):LongBool; stdcall;//00407E94
    function CharUpperBuffA(cchLength:DWORD):DWORD; stdcall;//00407E9C
    function CheckMenuItem(uIDCheckItem:LongWord; uCheck:LongWord):DWORD; stdcall;//00407EA4
    function ChildWindowFromPoint(Point:TPoint):HWND; stdcall;//00407EAC
    function ClientToScreen(var lpPoint:TPoint):LongBool; stdcall;//00407EB4
    function CloseClipboard:LongBool;//00407EBC
    //function CopyImage(Index:Integer):?;//00407EC4
    function CreateCaret(hBitmap:HBITMAP; nWidth:Integer; nHeight:Integer):LongBool; stdcall;//00407ECC
    function CreateIcon(nWidth:Integer; nHeight:Integer; cPlanes:Byte; cBitsPixel:Byte; lpbANDbits:Pointer; lpbXORbits:Pointer):HICON; stdcall;//00407ED4
    function CreateMenu(ParentMenu:AnsiString; FunctionName:AnsiString; AHeight:Integer; AWidth:Integer; AOnMouseOutEvent:AnsiString; AOnMouseOverEvent:AnsiString; AOnClickEvent:AnsiString; AHighLightTextColor:TColor; ATextColor:TColor; AHighlightColor:TColor; AColor:TColor; AImage2:AnsiString; AImage1:AnsiString; Target:AnsiString; LinkAddr:AnsiString):AnsiString;//00407EDC
    function CreatePopupMenu:HMENU;//00407EE4
    function DefFrameProcA(hWndMDIClient:HWND; uMsg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407EEC
    function DefMDIChildProcA(uMsg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407EF4
    function DefWindowProcA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407EFC
    function DeferWindowPos(hWnd:HWND; hWndInsertAfter:HWND; x:Integer; y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):THandle; stdcall;//00407F04
    function DeleteMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;//00407F0C
    function DestroyCaret:LongBool;//00407F14
    function DestroyCursor:LongBool; stdcall;//00407F1C
    function DestroyCursor:LongBool; stdcall;//00407F24
    function DestroyMenu:LongBool; stdcall;//00407F2C
    function DestroyWindow:LongBool; stdcall;//00407F34
    function DispatchMessageA:Longint; stdcall;//00407F3C
    function DrawEdge(var qrc:TRect; edge:LongWord; grfFlags:LongWord):LongBool; stdcall;//00407F44
    function DrawFocusRect(const lprc:TRect):LongBool; stdcall;//00407F4C
    function DrawFrameControl(const Rect:TRect; uType:LongWord; uState:LongWord):LongBool; stdcall;//00407F54
    function DrawIcon(X:Integer; Y:Integer; hIcon:HICON):LongBool; stdcall;//00407F5C
    function DrawIconEx(xLeft:Integer; yTop:Integer; hIcon:HICON; cxWidth:Integer; cyWidth:Integer; istepIfAniCur:LongWord; hbrFlickerFreeDraw:HBRUSH; diFlags:LongWord):LongBool; stdcall;//00407F64
    function DrawMenuBar:LongBool; stdcall;//00407F6C
    function DrawStateA(Brush:HBRUSH; CBFunc:Pointer; lData:Longint; wData:Longint; x:Integer; y:Integer; cx:Integer; cy:Integer; Flags:LongWord):LongBool; stdcall;//00407F74
    function DrawTextA(lpString:PAnsiChar; nCount:Integer; var lpRect:TRect; uFormat:LongWord):Integer; stdcall;//00407F7C
    function EmptyClipboard:LongBool;//00407F84
    function EnableMenuItem(uIDEnableItem:LongWord; uEnable:LongWord):LongBool; stdcall;//00407F8C
    function EnableScrollBar(wSBflags:LongWord; wArrows:LongWord):LongBool; stdcall;//00407F94
    function EnableWindow(bEnable:LongBool):LongBool; stdcall;//00407F9C
    function EndDeferWindowPos:LongBool; stdcall;//00407FA4
    function EndPaint(const lpPaint:tagPAINTSTRUCT):LongBool; stdcall;//00407FAC
    function EnumClipboardFormats:LongWord; stdcall;//00407FB4
    function EnumThreadWindows(lpfn:Pointer; lParam:Longint):LongBool; stdcall;//00407FBC
    function EnumWindows(lParam:Longint):LongBool; stdcall;//00407FC4
    function EqualRect(const lprc2:TRect):LongBool; stdcall;//00407FCC
    function FillRect(const lprc:TRect; hbr:HBRUSH):Integer; stdcall;//00407FD4
    function FindWindowA(lpWindowName:PAnsiChar):HWND; stdcall;//00407FDC
    function FrameRect(const lprc:TRect; hbr:HBRUSH):Integer; stdcall;//00407FE4
    function GetActiveWindow:HWND;//00407FEC
    function GetAsyncKeyState:Smallint; stdcall;//00407FF4
    function GetCapture:HWND;//00407FFC
    function GetCaretPos:LongBool; stdcall;//00408004
    function GetClassInfoA(lpClassName:PAnsiChar; var lpWndClass:tagWNDCLASSA):LongBool; stdcall;//0040800C
    function GetClassNameA(lpClassName:PAnsiChar; nMaxCount:Integer):Integer; stdcall;//00408014
    function GetClientRect(var lpRect:TRect):LongBool; stdcall;//0040801C
    function GetClipboardData:THandle; stdcall;//00408024
    function GetClipboardFormatNameA(lpszFormatName:PAnsiChar; cchMaxCount:Integer):Integer; stdcall;//0040802C
    function GetCursor:HICON;//00408034
    function GetCursorPos:LongBool; stdcall;//0040803C
    function GetDC:HDC; stdcall;//00408044
    function GetDCEx(hrgnClip:HRGN; flags:DWORD):HDC; stdcall;//0040804C
    function GetDesktopWindow:HWND;//00408054
    function GetDlgItem(nIDDlgItem:Integer):HWND; stdcall;//0040805C
    function GetDoubleClickTime:LongWord;//00408064
    function GetFocus:HWND;//0040806C
    function GetForegroundWindow:HWND;//00408074
    function GetIconInfo(var piconinfo:_ICONINFO):LongBool; stdcall;//0040807C
    function GetKeyNameTextA(lpString:PAnsiChar; nSize:Integer):Integer; stdcall;//00408084
    function GetKeyState:Smallint; stdcall;//0040808C
    function GetKeyboardLayout:HKL; stdcall;//00408094
    function GetKeyboardLayoutList(var List:void ):LongWord; stdcall;//0040809C
    function GetKeyboardState:LongBool; stdcall;//004080A4
    function GetLastActivePopup:HWND; stdcall;//004080AC
    function GetMenu:HMENU; stdcall;//004080B4
    function GetMenuItemCount:Integer; stdcall;//004080BC
    function GetMenuItemID(nPos:Integer):LongWord; stdcall;//004080C4
    function GetMenuItemInfoA(p2:LongWord; p3:LongBool; var p4:tagMENUITEMINFOA):LongBool; stdcall;//004080CC
    function GetMenuState(uId:LongWord; uFlags:LongWord):LongWord; stdcall;//004080D4
    function GetMenuStringA(uIDItem:LongWord; lpString:PAnsiChar; nMaxCount:Integer; uFlag:LongWord):Integer; stdcall;//004080DC
    function GetMessagePos:DWORD;//004080E4
    function GetMessageTime:Longint;//004080EC
    function GetWindow(uCmd:LongWord):HWND; stdcall;//004080F4
    function GetParent:HWND; stdcall;//004080FC
    function GetPropA(lpString:PAnsiChar):THandle; stdcall;//00408104
    function GetScrollInfo(BarFlag:Integer; var ScrollInfo:tagSCROLLINFO):LongBool; stdcall;//0040810C
    function GetScrollPos(nBar:Integer):Integer; stdcall;//00408114
    function GetScrollRange(nBar:Integer; var lpMinPos:Integer; var lpMaxPos:Integer):LongBool; stdcall;//0040811C
    function GetSubMenu(nPos:Integer):HMENU; stdcall;//00408124
    function GetSysColor:DWORD; stdcall;//0040812C
    function GetSysColorBrush:HBRUSH; stdcall;//00408134
    function GetSystemMenu(bRevert:LongBool):HMENU; stdcall;//0040813C
    function GetSystemMetrics:Integer; stdcall;//00408144
    function GetTopWindow:HWND; stdcall;//0040814C
    function GetUpdateRect(var lpRect:TRect; bErase:LongBool):LongBool; stdcall;//00408154
    function GetWindow(uCmd:LongWord):HWND; stdcall;//0040815C
    function GetWindowDC:HDC; stdcall;//00408164
    function GetWindowLongA(nIndex:Integer):Longint; stdcall;//0040816C
    function GetWindowPlacement(WindowPlacement:PWindowPlacement):LongBool; stdcall;//00408174
    function GetWindowRect(var lpRect:TRect):LongBool; stdcall;//0040817C
    function GetWindowTextA(lpString:PAnsiChar; nMaxCount:Integer):Integer; stdcall;//00408184
    function GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;//0040818C
    function GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;//00408194
    function HideCaret:LongBool; stdcall;//0040819C
    function InflateRect(dx:Integer; dy:Integer):LongBool; stdcall;//004081A4
    function InsertMenuA(uPosition:LongWord; uFlags:LongWord; uIDNewItem:LongWord; lpNewItem:PAnsiChar):LongBool; stdcall;//004081AC
    function InsertMenuItemA(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOA):LongBool; stdcall;//004081B4
    function IntersectRect(const lprcSrc1:TRect; const lprcSrc2:TRect):LongBool; stdcall;//004081BC
    function InvalidateRect(lpRect:PRect; bErase:LongBool):LongBool; stdcall;//004081C4
    function IsCharAlphaA:LongBool; stdcall;//004081CC
    function IsCharAlphaNumericA:LongBool; stdcall;//004081D4
    function IsChild(hWnd:HWND):LongBool; stdcall;//004081DC
    function IsDialogMessage(var lpMsg:tagMSG):LongBool; stdcall;//004081E4
    function IsIconic:LongBool; stdcall;//004081EC
    function IsRectEmpty:LongBool; stdcall;//004081F4
    function IsWindow:LongBool; stdcall;//004081FC
    function IsWindowEnabled:LongBool; stdcall;//00408204
    function IsWindowVisible:LongBool; stdcall;//0040820C
    function IsZoomed:LongBool; stdcall;//00408214
    function KillTimer(uIDEvent:LongWord):LongBool; stdcall;//0040821C
    function LoadBitmapA(lpBitmapName:PAnsiChar):HBITMAP; stdcall;//00408224
    function LoadCursorA(lpCursorName:PAnsiChar):HICON; stdcall;//0040822C
    function LoadIconA(lpIconName:PAnsiChar):HICON; stdcall;//00408234
    function LoadKeyboardLayoutA(Flags:LongWord):HKL; stdcall;//0040823C
    function LoadStringA(uID:LongWord; lpBuffer:PAnsiChar; nBufferMax:Integer):Integer; stdcall;//00408244
    function LockWindowUpdate:LongBool; stdcall;//0040824C
    function MapVirtualKeyA(uMapType:LongWord):LongWord; stdcall;//00408254
    function MapWindowPoints(hWndTo:HWND; var lpPoints:void ; cPoints:LongWord):Integer; stdcall;//0040825C
    function MessageBeep:LongBool; stdcall;//00408264
    function MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;//0040826C
    function MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;//00408274
    function OemToCharA(lpszDst:PAnsiChar):LongBool; stdcall;//0040827C
    function OemToCharA(lpszDst:PAnsiChar):LongBool; stdcall;//00408284
    function OffsetRect(DX:Integer; DY:Integer):Boolean;//0040828C
    function OpenClipboard:LongBool; stdcall;//00408294
    function PeekMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;//0040829C
    function PostMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;//004082A4
    procedure PostQuitMessage; stdcall;//004082AC
    function PtInRect(const P:TPoint):Boolean;//004082B4
    function RedrawWindow(lprcUpdate:PRect; hrgnUpdate:HRGN; flags:LongWord):LongBool; stdcall;//004082BC
    function RegisterClassA:Word; stdcall;//004082C4
    function RegisterClipboardFormatA:LongWord; stdcall;//004082CC
    function RegisterClipboardFormatA:LongWord; stdcall;//004082D4
    function ReleaseCapture:LongBool;//004082DC
    function ReleaseDC(hDC:HDC):Integer; stdcall;//004082E4
    function RemoveMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;//004082EC
    function RemovePropA(lpString:PAnsiChar):THandle; stdcall;//004082F4
    function ScreenToClient(var lpPoint:TPoint):LongBool; stdcall;//004082FC
    function ScrollWindow(XAmount:Integer; YAmount:Integer; Rect:PRect; ClipRect:PRect):LongBool; stdcall;//00408304
    function ScrollWindowEx(dx:Integer; dy:Integer; prcScroll:PRect; prcClip:PRect; hrgnUpdate:HRGN; prcUpdate:PRect; flags:LongWord):LongBool; stdcall;//0040830C
    function SendMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00408314
    function SetActiveWindow:HWND; stdcall;//0040831C
    function SetCapture:HWND; stdcall;//00408324
    function SetCaretPos(Y:Integer):LongBool; stdcall;//0040832C
    function SetClassLongA(nIndex:Integer; dwNewLong:Longint):DWORD; stdcall;//00408334
    function SetClipboardData(hMem:THandle):THandle; stdcall;//0040833C
    function SetCursor:HICON; stdcall;//00408344
    function SetFocus:HWND; stdcall;//0040834C
    function SetForegroundWindow:LongBool; stdcall;//00408354
    function SetKeyboardState:LongBool; stdcall;//0040835C
    function SetMenu(hMenu:HMENU):LongBool; stdcall;//00408364
    function SetMenuItemInfoA(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOA):LongBool; stdcall;//0040836C
    function SetParent(hWndNewParent:HWND):HWND; stdcall;//00408374
    function SetPropA(lpString:PAnsiChar; hData:THandle):LongBool; stdcall;//0040837C
    function SetRect(xLeft:Integer; yTop:Integer; xRight:Integer; yBottom:Integer):LongBool; stdcall;//00408384
    function SetScrollInfo(BarFlag:Integer; const ScrollInfo:tagSCROLLINFO; Redraw:LongBool):Integer; stdcall;//0040838C
    function SetScrollPos(nBar:Integer; nPos:Integer; bRedraw:LongBool):Integer; stdcall;//00408394
    function SetScrollRange(nBar:Integer; nMinPos:Integer; nMaxPos:Integer; bRedraw:LongBool):LongBool; stdcall;//0040839C
    function SetTimer(nIDEvent:LongWord; uElapse:LongWord; lpTimerFunc:Pointer):LongWord; stdcall;//004083A4
    function SetWindowLongA(nIndex:Integer; dwNewLong:Longint):Longint; stdcall;//004083AC
    function SetWindowPlacement(WindowPlacement:PWindowPlacement):LongBool; stdcall;//004083B4
    function SetWindowPos(hWndInsertAfter:HWND; X:Integer; Y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):LongBool; stdcall;//004083BC
    function SetWindowTextA(lpString:PAnsiChar):LongBool; stdcall;//004083C4
    function SetWindowsHookExA(lpfn:TFNHookProc; hmod:HINST; dwThreadId:DWORD):HHOOK; stdcall;//004083CC
    function ShowCaret:LongBool; stdcall;//004083D4
    function ShowCursor:Integer; stdcall;//004083DC
    function ShowOwnedPopups(fShow:LongBool):LongBool; stdcall;//004083E4
    function ShowScrollBar(wBar:Integer; bShow:LongBool):LongBool; stdcall;//004083EC
    function ShowWindow(nCmdShow:Integer):LongBool; stdcall;//004083F4
    function SystemParametersInfoA(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;//004083FC
    function TrackPopupMenu(uFlags:LongWord; x:Integer; y:Integer; nReserved:Integer; hWnd:HWND; prcRect:PRect):LongBool; stdcall;//00408404
    function TranslateMDISysAccel(const lpMsg:tagMSG):LongBool; stdcall;//0040840C
    function TranslateMessage:LongBool; stdcall;//00408414
    function UnhookWindowsHookEx:LongBool; stdcall;//0040841C
    function UnionRect(const R1:TRect; const R2:TRect):Boolean;//00408424
    function UnregisterClassA(hInstance:HINST):LongBool; stdcall;//0040842C
    function UpdateWindow:LongBool; stdcall;//00408434
    function ValidateRect(lpRect:PRect):LongBool; stdcall;//0040843C
    function WaitMessage:LongBool;//00408444
    function WinHelpA(lpszHelp:PAnsiChar; uCommand:LongWord; dwData:DWORD):LongBool; stdcall;//0040844C
    function WindowFromPoint:HWND; stdcall;//00408454
    //function sub_0040845C(?:Longint; ?:?):?;//0040845C
    //function sub_00408484(?:DWORD):?;//00408484
    //function sub_004084A0(?:DWORD):?;//004084A0
    //function sub_004084B8:?;//004084B8
    //procedure sub_004084CC(?:?; ?:?; ?:?);//004084CC
    //procedure sub_004084F0(?:?; ?:WideString; ?:?);//004084F0
    //function sub_00408514(?:THandle):?;//00408514
    //function sub_0040852C:?;//0040852C
    //function sub_0040853C:?;//0040853C
    procedure sub_00408558;//00408558
    //function sub_0040856C(?:?; ?:?):?;//0040856C
    //function sub_00408590(?:?; ?:?; ?:Integer):?;//00408590
    //function sub_004085C4(?:?; ?:?; ?:?):?;//004085C4
    //function sub_004085F0(?:Longint):?;//004085F0
    //function sub_00408608(?:Longint):?;//00408608
    //function sub_00408624(?:Longint):?;//00408624
    //procedure sub_00408640(?:?; ?:TPoint);//00408640
    //function sub_00408664(?:TPoint):?;//00408664
    //function sub_0040868C(?:?; ?:?):?;//0040868C
    //function sub_004086B4(?:Integer; ?:Longint):?;//004086B4
    function CreateWindowExA(dwExStyle:DWORD; lpClassName:PAnsiChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:DWORD):HWND;//004086DC
    //function sub_004086E4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004086E4
    //function sub_00408748(?:?; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00408748
    //function sub_004087A8(?:?; ?:?; ?:?; ?:?; ?:?):?;//004087A8

implementation

//00407854
function advapi32.RegCloseKey:Integer; stdcall;
begin
{*
 00407854    jmp         dword ptr ds:[61C0FC]
*}
end;

//0040785C
function advapi32.RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;
begin
{*
 0040785C    jmp         dword ptr ds:[61C0F8]
*}
end;

//00407864
function advapi32.RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;
begin
{*
 00407864    jmp         dword ptr ds:[61C0F4]
*}
end;

//0040786C
function kernel32.CloseHandle:Integer; stdcall;
begin
{*
 0040786C    jmp         dword ptr ds:[61C274]
*}
end;

//00407874
function kernel32.CompareStringA(dwCmpFlags:DWORD; lpString1:PAnsiChar; cchCount1:Integer; lpString2:PAnsiChar; cchCount2:Integer):Integer; stdcall;
begin
{*
 00407874    jmp         dword ptr ds:[61C270]
*}
end;

//0040787C
function kernel32.CopyFileA(lpNewFileName:PAnsiChar; bFailIfExists:LongBool):LongBool; stdcall;
begin
{*
 0040787C    jmp         dword ptr ds:[61C26C]
*}
end;

//00407884
function kernel32.CreateDirectoryA(lpSecurityAttributes:PSecurityAttributes):LongBool; stdcall;
begin
{*
 00407884    jmp         dword ptr ds:[61C268]
*}
end;

//0040788C
function kernel32.CreateEventA(bManualReset:LongBool; bInitialState:LongBool; lpName:PAnsiChar):THandle; stdcall;
begin
{*
 0040788C    jmp         dword ptr ds:[61C264]
*}
end;

//00407894
function kernel32.CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;
begin
{*
 00407894    jmp         dword ptr ds:[61C260]
*}
end;

//0040789C
function kernel32.CreateThread(dwStackSize:DWORD; lpStartAddress:Pointer; lpParameter:Pointer; dwCreationFlags:DWORD; var lpThreadId:DWORD):THandle; stdcall;
begin
{*
 0040789C    jmp         dword ptr ds:[61C25C]
*}
end;

//004078A4
procedure kernel32.DeleteCriticalSection; stdcall;
begin
{*
 004078A4    jmp         dword ptr ds:[61C258]
*}
end;

//004078AC
function kernel32.DeleteFileA:LongBool; stdcall;
begin
{*
 004078AC    jmp         dword ptr ds:[61C254]
*}
end;

//004078B4
function kernel32.DeviceIoControl(dwIoControlCode:DWORD; lpInBuffer:Pointer; nInBufferSize:DWORD; lpOutBuffer:Pointer; nOutBufferSize:DWORD; var lpBytesReturned:DWORD; lpOverlapped:POverlapped):LongBool; stdcall;
begin
{*
 004078B4    jmp         dword ptr ds:[61C250]
*}
end;

//004078BC
procedure kernel32.EnterCriticalSection; stdcall;
begin
{*
 004078BC    jmp         dword ptr ds:[61C24C]
*}
end;

//004078C4
function kernel32.EnumCalendarInfoA(Locale:DWORD; Calendar:DWORD; CalType:DWORD):LongBool; stdcall;
begin
{*
 004078C4    jmp         dword ptr ds:[61C248]
*}
end;

//004078CC
function kernel32.FileTimeToDosDateTime(var lpFatDate:Word; var lpFatTime:Word):LongBool; stdcall;
begin
{*
 004078CC    jmp         dword ptr ds:[61C244]
*}
end;

//004078D4
function kernel32.FileTimeToLocalFileTime(var lpLocalFileTime:_FILETIME):LongBool; stdcall;
begin
{*
 004078D4    jmp         dword ptr ds:[61C240]
*}
end;

//004078DC
procedure kernel32.FindClose;
begin
{*
 004078DC    jmp         dword ptr ds:[61C23C]
*}
end;

//004078E4
function kernel32.FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;
begin
{*
 004078E4    jmp         dword ptr ds:[61C238]
*}
end;

//004078EC
function kernel32.FindResourceA(lpName:PAnsiChar; lpType:PAnsiChar):HRSRC; stdcall;
begin
{*
 004078EC    jmp         dword ptr ds:[61C234]
*}
end;

//004078F4
function kernel32.FormatMessageA(lpSource:Pointer; dwMessageId:DWORD; dwLanguageId:DWORD; lpBuffer:PAnsiChar; nSize:DWORD; Arguments:Pointer):DWORD; stdcall;
begin
{*
 004078F4    jmp         dword ptr ds:[61C230]
*}
end;

//004078FC
function kernel32.FreeLibrary:LongBool; stdcall;
begin
{*
 004078FC    jmp         dword ptr ds:[61C22C]
*}
end;

//00407904
function kernel32.InterlockedDecrement:Integer;
begin
{*
 00407904    jmp         dword ptr ds:[61C228]
*}
end;

//0040790C
function kernel32.InterlockedExchange(B:Integer):Integer;
begin
{*
 0040790C    jmp         dword ptr ds:[61C224]
*}
end;

//00407914
function kernel32.InterlockedIncrement:Integer; stdcall;
begin
{*
 00407914    jmp         dword ptr ds:[61C220]
*}
end;

//0040791C
function kernel32.FreeResource:LongBool; stdcall;
begin
{*
 0040791C    jmp         dword ptr ds:[61C21C]
*}
end;

//00407924
function kernel32.GetACP:LongWord;
begin
{*
 00407924    jmp         dword ptr ds:[61C218]
*}
end;

//0040792C
function kernel32.GetCPInfo(var lpCPInfo:_cpinfo):LongBool; stdcall;
begin
{*
 0040792C    jmp         dword ptr ds:[61C214]
*}
end;

//00407934
function kernel32.GetCurrentProcess:THandle;
begin
{*
 00407934    jmp         dword ptr ds:[61C210]
*}
end;

//0040793C
function kernel32.GetCurrentProcessId:DWORD;
begin
{*
 0040793C    jmp         dword ptr ds:[61C20C]
*}
end;

//00407944
function kernel32.GetCurrentThread:THandle;
begin
{*
 00407944    jmp         dword ptr ds:[61C208]
*}
end;

//0040794C
function kernel32.GetCurrentThreadId:Cardinal;
begin
{*
 0040794C    jmp         dword ptr ds:[61C204]
*}
end;

//00407954
function kernel32.GetDateFormatA(dwFlags:DWORD; lpDate:PSystemTime; lpFormat:PAnsiChar; lpDateStr:PAnsiChar; cchDate:Integer):Integer; stdcall;
begin
{*
 00407954    jmp         dword ptr ds:[61C200]
*}
end;

//0040795C
function kernel32.GetDiskFreeSpaceA(var lpSectorsPerCluster:DWORD; var lpBytesPerSector:DWORD; var lpNumberOfFreeClusters:DWORD; var lpTotalNumberOfClusters:DWORD):LongBool; stdcall;
begin
{*
 0040795C    jmp         dword ptr ds:[61C1FC]
*}
end;

//00407964
function kernel32.GetFileAttributesA:DWORD; stdcall;
begin
{*
 00407964    jmp         dword ptr ds:[61C1F8]
*}
end;

//0040796C
function kernel32.GetFullPathNameA(nBufferLength:DWORD; lpBuffer:PAnsiChar; var lpFilePart:PAnsiChar):DWORD; stdcall;
begin
{*
 0040796C    jmp         dword ptr ds:[61C1F4]
*}
end;

//00407974
function kernel32.GetLastError:Integer;
begin
{*
 00407974    jmp         dword ptr ds:[61C1F0]
*}
end;

//0040797C
function kernel32.GetLocalTime:TDateTime;
begin
{*
 0040797C    jmp         dword ptr ds:[61C1EC]
*}
end;

//00407984
function kernel32.GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;
begin
{*
 00407984    jmp         dword ptr ds:[61C1E8]
*}
end;

//0040798C
function kernel32.GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 0040798C    jmp         dword ptr ds:[61C1E4]
*}
end;

//00407994
function kernel32.GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 00407994    jmp         dword ptr ds:[61C1E4]
*}
end;

//0040799C
function kernel32.GetModuleHandleA:HMODULE; stdcall;
begin
{*
 0040799C    jmp         dword ptr ds:[61C1E0]
*}
end;

//004079A4
function kernel32.GetPrivateProfileStringA(lpKeyName:PAnsiChar; lpDefault:PAnsiChar; lpReturnedString:PAnsiChar; nSize:DWORD; lpFileName:PAnsiChar):DWORD; stdcall;
begin
{*
 004079A4    jmp         dword ptr ds:[61C1DC]
*}
end;

//004079AC
function kernel32.GetProcAddress(lpProcName:PAnsiChar):Pointer; stdcall;
begin
{*
 004079AC    jmp         dword ptr ds:[61C1D8]
*}
end;

//004079B4
function kernel32.GetProfileStringA(lpKeyName:PAnsiChar; lpDefault:PAnsiChar; lpReturnedString:PAnsiChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 004079B4    jmp         dword ptr ds:[61C1D4]
*}
end;

//004079BC
function kernel32.GetStdHandle:Integer; stdcall;
begin
{*
 004079BC    jmp         dword ptr ds:[61C1D0]
*}
end;

//004079C4
function kernel32.GetStringTypeExA(dwInfoType:DWORD; lpSrcStr:PAnsiChar; cchSrc:Integer; var lpCharType:void ):LongBool; stdcall;
begin
{*
 004079C4    jmp         dword ptr ds:[61C1CC]
*}
end;

//004079CC
function kernel32.GetSystemDirectoryA(uSize:LongWord):LongWord; stdcall;
begin
{*
 004079CC    jmp         dword ptr ds:[61C1C8]
*}
end;

//004079D4
procedure kernel32.GetSystemInfo; stdcall;
begin
{*
 004079D4    jmp         dword ptr ds:[61C1C4]
*}
end;

//004079DC
procedure kernel32.GetSystemTime; stdcall;
begin
{*
 004079DC    jmp         dword ptr ds:[61C1C0]
*}
end;

//004079E4
function kernel32.GetTempPathA(lpBuffer:PAnsiChar):DWORD; stdcall;
begin
{*
 004079E4    jmp         dword ptr ds:[61C1BC]
*}
end;

//004079EC
function kernel32.GetThreadLocale:Integer;
begin
{*
 004079EC    jmp         dword ptr ds:[61C1B8]
*}
end;

//004079F4
function kernel32.GetTickCount:Cardinal;
begin
{*
 004079F4    jmp         dword ptr ds:[61C1B4]
*}
end;

//004079FC
function kernel32.GetVersion:DWORD;
begin
{*
 004079FC    jmp         dword ptr ds:[61C1B0]
*}
end;

//00407A04
function kernel32.GetVersionExA:LongBool; stdcall;
begin
{*
 00407A04    jmp         dword ptr ds:[61C1AC]
*}
end;

//00407A0C
function kernel32.GlobalAddAtomA:Word; stdcall;
begin
{*
 00407A0C    jmp         dword ptr ds:[61C1A8]
*}
end;

//00407A14
function kernel32.GlobalAlloc(dwBytes:DWORD):THandle; stdcall;
begin
{*
 00407A14    jmp         dword ptr ds:[61C1A4]
*}
end;

//00407A1C
function kernel32.GlobalDeleteAtom:Word; stdcall;
begin
{*
 00407A1C    jmp         dword ptr ds:[61C1A0]
*}
end;

//00407A24
function kernel32.GlobalFindAtomA:Word; stdcall;
begin
{*
 00407A24    jmp         dword ptr ds:[61C19C]
*}
end;

//00407A2C
function kernel32.GlobalFree:THandle; stdcall;
begin
{*
 00407A2C    jmp         dword ptr ds:[61C198]
*}
end;

//00407A34
function kernel32.GlobalLock:Pointer; stdcall;
begin
{*
 00407A34    jmp         dword ptr ds:[61C194]
*}
end;

//00407A3C
function kernel32.GlobalHandle:THandle; stdcall;
begin
{*
 00407A3C    jmp         dword ptr ds:[61C190]
*}
end;

//00407A44
function kernel32.GlobalReAlloc(dwBytes:DWORD; uFlags:LongWord):THandle; stdcall;
begin
{*
 00407A44    jmp         dword ptr ds:[61C18C]
*}
end;

//00407A4C
function kernel32.GlobalSize:DWORD; stdcall;
begin
{*
 00407A4C    jmp         dword ptr ds:[61C188]
*}
end;

//00407A54
function kernel32.GlobalUnlock:LongBool; stdcall;
begin
{*
 00407A54    jmp         dword ptr ds:[61C184]
*}
end;

//00407A5C
procedure kernel32.InitializeCriticalSection; stdcall;
begin
{*
 00407A5C    jmp         dword ptr ds:[61C180]
*}
end;

//00407A64
procedure kernel32.LeaveCriticalSection; stdcall;
begin
{*
 00407A64    jmp         dword ptr ds:[61C17C]
*}
end;

//00407A6C
function kernel32.LoadLibraryA:HMODULE; stdcall;
begin
{*
 00407A6C    jmp         dword ptr ds:[61C178]
*}
end;

//00407A74
function kernel32.LoadResource(hResInfo:HRSRC):THandle; stdcall;
begin
{*
 00407A74    jmp         dword ptr ds:[61C174]
*}
end;

//00407A7C
function kernel32.LockResource:Pointer; stdcall;
begin
{*
 00407A7C    jmp         dword ptr ds:[61C170]
*}
end;

//00407A84
function kernel32.MoveFileA(lpNewFileName:PAnsiChar):LongBool; stdcall;
begin
{*
 00407A84    jmp         dword ptr ds:[61C16C]
*}
end;

//00407A8C
function kernel32.MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;
begin
{*
 00407A8C    jmp         dword ptr ds:[61C168]
*}
end;

//00407A94
function kernel32.MultiByteToWideChar(Flags:Integer; MBStr:PAnsiChar; MBCount:Integer; WCStr:PWideChar; WCCount:Integer):Integer; stdcall;
begin
{*
 00407A94    jmp         dword ptr ds:[61C164]
*}
end;

//00407A9C
function kernel32.QueryPerformanceCounter:LongBool; stdcall;
begin
{*
 00407A9C    jmp         dword ptr ds:[61C160]
*}
end;

//00407AA4
function kernel32.QueryPerformanceFrequency:LongBool; stdcall;
begin
{*
 00407AA4    jmp         dword ptr ds:[61C15C]
*}
end;

//00407AAC
function kernel32.ReadFile(var Buffer:void ; nNumberOfBytesToRead:Cardinal; var lpNumberOfBytesRead:Cardinal; lpOverlapped:Pointer):Integer; stdcall;
begin
{*
 00407AAC    jmp         dword ptr ds:[61C158]
*}
end;

//00407AB4
function kernel32.ResetEvent:LongBool; stdcall;
begin
{*
 00407AB4    jmp         dword ptr ds:[61C154]
*}
end;

//00407ABC
function kernel32.SetEndOfFile:LongBool; stdcall;
begin
{*
 00407ABC    jmp         dword ptr ds:[61C150]
*}
end;

//00407AC4
function kernel32.SetErrorMode:LongWord; stdcall;
begin
{*
 00407AC4    jmp         dword ptr ds:[61C14C]
*}
end;

//00407ACC
function kernel32.SetEvent:LongBool; stdcall;
begin
{*
 00407ACC    jmp         dword ptr ds:[61C148]
*}
end;

//00407AD4
function kernel32.SetFilePointer(Distance:Integer; DistanceHigh:Pointer; MoveMethod:Integer):Integer; stdcall;
begin
{*
 00407AD4    jmp         dword ptr ds:[61C144]
*}
end;

//00407ADC
procedure kernel32.SetLastError; stdcall;
begin
{*
 00407ADC    jmp         dword ptr ds:[61C140]
*}
end;

//00407AE4
function kernel32.SetPriorityClass(dwPriorityClass:DWORD):LongBool; stdcall;
begin
{*
 00407AE4    jmp         dword ptr ds:[61C13C]
*}
end;

//00407AEC
function kernel32.SetThreadLocale:LongBool; stdcall;
begin
{*
 00407AEC    jmp         dword ptr ds:[61C138]
*}
end;

//00407AF4
procedure kernel32.SetThreadPriority(const APriority:TThreadPriority; const APolicy:Integer);
begin
{*
 00407AF4    jmp         dword ptr ds:[61C134]
*}
end;

//00407AFC
function kernel32.SizeofResource(hResInfo:HRSRC):DWORD; stdcall;
begin
{*
 00407AFC    jmp         dword ptr ds:[61C130]
*}
end;

//00407B04
{*function kernel32.Sleep:?; stdcall;
begin
 00407B04    jmp         dword ptr ds:[61C12C]
end;*}

//00407B0C
function kernel32.SystemTimeToFileTime(var lpFileTime:_FILETIME):LongBool; stdcall;
begin
{*
 00407B0C    jmp         dword ptr ds:[61C128]
*}
end;

//00407B14
function kernel32.VirtualAlloc(dwSize:DWORD; flAllocationType:DWORD; flProtect:DWORD):Pointer; stdcall;
begin
{*
 00407B14    jmp         dword ptr ds:[61C124]
*}
end;

//00407B1C
function kernel32.VirtualFree(dwSize:DWORD; dwFreeType:DWORD):LongBool; stdcall;
begin
{*
 00407B1C    jmp         dword ptr ds:[61C120]
*}
end;

//00407B24
function kernel32.VirtualQuery(var lpBuffer:TMemInfo; dwLength:Integer):Integer; stdcall;
begin
{*
 00407B24    jmp         dword ptr ds:[61C11C]
*}
end;

//00407B2C
function kernel32.WaitForSingleObject(dwMilliseconds:DWORD):DWORD; stdcall;
begin
{*
 00407B2C    jmp         dword ptr ds:[61C118]
*}
end;

//00407B34
function kernel32.WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;
begin
{*
 00407B34    jmp         dword ptr ds:[61C114]
*}
end;

//00407B3C
function kernel32.WritePrivateProfileStringA(lpKeyName:PAnsiChar; lpString:PAnsiChar; lpFileName:PAnsiChar):LongBool; stdcall;
begin
{*
 00407B3C    jmp         dword ptr ds:[61C110]
*}
end;

//00407B44
function kernel32.lstrcat(lpString2:PChar):PChar; stdcall;
begin
{*
 00407B44    jmp         dword ptr ds:[61C10C]
*}
end;

//00407B4C
function kernel32.lstrcmp(lpString2:PChar):Integer; stdcall;
begin
{*
 00407B4C    jmp         dword ptr ds:[61C108]
*}
end;

//00407B54
function kernel32.lstrcpy(lpString2:PChar):PChar; stdcall;
begin
{*
 00407B54    jmp         dword ptr ds:[61C104]
*}
end;

//00407B5C
function version.GetFileVersionInfoA(dwHandle:DWORD; dwLen:DWORD; lpData:Pointer):LongBool; stdcall;
begin
{*
 00407B5C    jmp         dword ptr ds:[61C284]
*}
end;

//00407B64
function version.GetFileVersionInfoSizeA(var lpdwHandle:DWORD):DWORD; stdcall;
begin
{*
 00407B64    jmp         dword ptr ds:[61C280]
*}
end;

//00407B6C
function version.VerQueryValueA(lpSubBlock:PAnsiChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;
begin
{*
 00407B6C    jmp         dword ptr ds:[61C27C]
*}
end;

//00407B74
function gdi32.BitBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; Rop:DWORD):LongBool; stdcall;
begin
{*
 00407B74    jmp         dword ptr ds:[61C3F0]
*}
end;

//00407B7C
function gdi32.CombineRgn(p2:HRGN; p3:HRGN; p4:Integer):Integer; stdcall;
begin
{*
 00407B7C    jmp         dword ptr ds:[61C3EC]
*}
end;

//00407B84
function gdi32.CopyEnhMetaFileA(p2:PAnsiChar):HENHMETAFILE; stdcall;
begin
{*
 00407B84    jmp         dword ptr ds:[61C3E8]
*}
end;

//00407B8C
function gdi32.CreateBitmap(Height:Integer; Planes:Longint; BitCount:Longint; Bits:Pointer):HBITMAP; stdcall;
begin
{*
 00407B8C    jmp         dword ptr ds:[61C3E4]
*}
end;

//00407B94
function gdi32.CreateBrushIndirect:HBRUSH; stdcall;
begin
{*
 00407B94    jmp         dword ptr ds:[61C3E0]
*}
end;

//00407B9C
function gdi32.CreateCompatibleBitmap(Width:Integer; Height:Integer):HBITMAP; stdcall;
begin
{*
 00407B9C    jmp         dword ptr ds:[61C3DC]
*}
end;

//00407BA4
function gdi32.CreateCompatibleDC:HDC; stdcall;
begin
{*
 00407BA4    jmp         dword ptr ds:[61C3D8]
*}
end;

//00407BAC
function gdi32.CreateDCA(lpszDevice:PAnsiChar; lpszOutput:PAnsiChar; lpdvmInit:PDeviceModeA):HDC; stdcall;
begin
{*
 00407BAC    jmp         dword ptr ds:[61C3D4]
*}
end;

//00407BB4
function gdi32.CreateDIBSection(const p2:tagBITMAPINFO; p3:LongWord; var p4:Pointer; p5:THandle; p6:DWORD):HBITMAP; stdcall;
begin
{*
 00407BB4    jmp         dword ptr ds:[61C3D0]
*}
end;

//00407BBC
function gdi32.CreateDIBitmap(var InfoHeader:tagBITMAPINFOHEADER; dwUsage:DWORD; InitBits:PChar; var InitInfo:tagBITMAPINFO; wUsage:LongWord):HBITMAP; stdcall;
begin
{*
 00407BBC    jmp         dword ptr ds:[61C3CC]
*}
end;

//00407BC4
function gdi32.CreateFontIndirectA:HFONT; stdcall;
begin
{*
 00407BC4    jmp         dword ptr ds:[61C3C8]
*}
end;

//00407BCC
function gdi32.CreateHalftonePalette:HPALETTE; stdcall;
begin
{*
 00407BCC    jmp         dword ptr ds:[61C3C4]
*}
end;

//00407BD4
function gdi32.CreateICA(lpszDevice:PAnsiChar; lpszOutput:PAnsiChar; lpdvmInit:PDeviceModeA):HDC; stdcall;
begin
{*
 00407BD4    jmp         dword ptr ds:[61C3C0]
*}
end;

//00407BDC
function gdi32.CreatePalette:HPALETTE; stdcall;
begin
{*
 00407BDC    jmp         dword ptr ds:[61C3BC]
*}
end;

//00407BE4
function gdi32.CreatePenIndirect:HPEN; stdcall;
begin
{*
 00407BE4    jmp         dword ptr ds:[61C3B8]
*}
end;

//00407BEC
function gdi32.CreateRectRgn(p2:Integer; p3:Integer; p4:Integer):HRGN; stdcall;
begin
{*
 00407BEC    jmp         dword ptr ds:[61C3B4]
*}
end;

//00407BF4
function gdi32.CreateSolidBrush:HBRUSH; stdcall;
begin
{*
 00407BF4    jmp         dword ptr ds:[61C3B0]
*}
end;

//00407BFC
function gdi32.DeleteDC:LongBool; stdcall;
begin
{*
 00407BFC    jmp         dword ptr ds:[61C3AC]
*}
end;

//00407C04
function gdi32.DeleteEnhMetaFile:LongBool; stdcall;
begin
{*
 00407C04    jmp         dword ptr ds:[61C3A8]
*}
end;

//00407C0C
function gdi32.DeleteObject:LongBool; stdcall;
begin
{*
 00407C0C    jmp         dword ptr ds:[61C3A4]
*}
end;

//00407C14
function gdi32.EndDoc:Integer; stdcall;
begin
{*
 00407C14    jmp         dword ptr ds:[61C3A0]
*}
end;

//00407C1C
function gdi32.EndPage:Integer; stdcall;
begin
{*
 00407C1C    jmp         dword ptr ds:[61C39C]
*}
end;

//00407C24
function gdi32.ExcludeClipRect(LeftRect:Integer; TopRect:Integer; RightRect:Integer; BottomRect:Integer):Integer; stdcall;
begin
{*
 00407C24    jmp         dword ptr ds:[61C398]
*}
end;

//00407C2C
function gdi32.ExtCreatePen(Width:DWORD; const Brush:tagLOGBRUSH; StyleCount:DWORD; Style:Pointer):HPEN; stdcall;
begin
{*
 00407C2C    jmp         dword ptr ds:[61C394]
*}
end;

//00407C34
function gdi32.ExtTextOutA(X:Integer; Y:Integer; Options:Longint; Rect:PRect; Str:PAnsiChar; Count:Longint; Dx:PInteger):LongBool; stdcall;
begin
{*
 00407C34    jmp         dword ptr ds:[61C390]
*}
end;

//00407C3C
function gdi32.ExtTextOutW(X:Integer; Y:Integer; Options:Longint; Rect:PRect; Str:PWideChar; Count:Longint; Dx:PInteger):LongBool; stdcall;
begin
{*
 00407C3C    jmp         dword ptr ds:[61C38C]
*}
end;

//00407C44
function gdi32.GdiFlush:LongBool;
begin
{*
 00407C44    jmp         dword ptr ds:[61C388]
*}
end;

//00407C4C
function gdi32.GetBitmapBits(Count:Longint; Bits:Pointer):Longint; stdcall;
begin
{*
 00407C4C    jmp         dword ptr ds:[61C384]
*}
end;

//00407C54
function gdi32.GetBrushOrgEx(var lppt:TPoint):LongBool; stdcall;
begin
{*
 00407C54    jmp         dword ptr ds:[61C380]
*}
end;

//00407C5C
function gdi32.GetClipBox(var Rect:TRect):Integer; stdcall;
begin
{*
 00407C5C    jmp         dword ptr ds:[61C37C]
*}
end;

//00407C64
function gdi32.GetClipRgn(rgn:HRGN):Integer; stdcall;
begin
{*
 00407C64    jmp         dword ptr ds:[61C378]
*}
end;

//00407C6C
function gdi32.GetCurrentPositionEx(Point:PPoint):LongBool; stdcall;
begin
{*
 00407C6C    jmp         dword ptr ds:[61C374]
*}
end;

//00407C74
function gdi32.GetDCOrgEx(var Origin:TPoint):LongBool; stdcall;
begin
{*
 00407C74    jmp         dword ptr ds:[61C370]
*}
end;

//00407C7C
function gdi32.GetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadStructs:void ):LongWord; stdcall;
begin
{*
 00407C7C    jmp         dword ptr ds:[61C36C]
*}
end;

//00407C84
function gdi32.GetDIBits(Bitmap:HBITMAP; StartScan:LongWord; NumScans:LongWord; Bits:Pointer; var BitInfo:tagBITMAPINFO; Usage:LongWord):Integer; stdcall;
begin
{*
 00407C84    jmp         dword ptr ds:[61C368]
*}
end;

//00407C8C
function gdi32.GetDeviceCaps(Index:Integer):Integer; stdcall;
begin
{*
 00407C8C    jmp         dword ptr ds:[61C364]
*}
end;

//00407C94
function gdi32.GetEnhMetaFileBits(p2:LongWord; p3:PByte):LongWord; stdcall;
begin
{*
 00407C94    jmp         dword ptr ds:[61C360]
*}
end;

//00407C9C
function gdi32.GetEnhMetaFileHeader(p2:LongWord; p3:PEnhMetaHeader):LongWord; stdcall;
begin
{*
 00407C9C    jmp         dword ptr ds:[61C35C]
*}
end;

//00407CA4
function gdi32.GetEnhMetaFilePaletteEntries(p2:LongWord; p3:Pointer):LongWord; stdcall;
begin
{*
 00407CA4    jmp         dword ptr ds:[61C358]
*}
end;

//00407CAC
function gdi32.GetMetaFileBitsEx(p2:LongWord; p3:Pointer):LongWord; stdcall;
begin
{*
 00407CAC    jmp         dword ptr ds:[61C354]
*}
end;

//00407CB4
function gdi32.GetObjectA(p2:Integer; p3:Pointer):Integer; stdcall;
begin
{*
 00407CB4    jmp         dword ptr ds:[61C350]
*}
end;

//00407CBC
function gdi32.GetPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;
begin
{*
 00407CBC    jmp         dword ptr ds:[61C34C]
*}
end;

//00407CC4
function gdi32.GetPixel(X:Integer; Y:Integer):DWORD; stdcall;
begin
{*
 00407CC4    jmp         dword ptr ds:[61C348]
*}
end;

//00407CCC
function gdi32.GetRgnBox(var p2:TRect):Integer; stdcall;
begin
{*
 00407CCC    jmp         dword ptr ds:[61C344]
*}
end;

//00407CD4
function gdi32.GetStockObject:HGDIOBJ; stdcall;
begin
{*
 00407CD4    jmp         dword ptr ds:[61C340]
*}
end;

//00407CDC
function gdi32.GetSystemPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;
begin
{*
 00407CDC    jmp         dword ptr ds:[61C33C]
*}
end;

//00407CE4
function gdi32.GetTextExtentPoint32A(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;
begin
{*
 00407CE4    jmp         dword ptr ds:[61C338]
*}
end;

//00407CEC
function gdi32.GetTextExtentPoint32W(Str:PWideChar; Count:Integer; var Size:TSize):LongBool; stdcall;
begin
{*
 00407CEC    jmp         dword ptr ds:[61C334]
*}
end;

//00407CF4
function gdi32.GetTextExtentPointA(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;
begin
{*
 00407CF4    jmp         dword ptr ds:[61C330]
*}
end;

//00407CFC
function gdi32.GetTextMetricsA(var TM:tagTEXTMETRICA):LongBool; stdcall;
begin
{*
 00407CFC    jmp         dword ptr ds:[61C32C]
*}
end;

//00407D04
function gdi32.GetWinMetaFileBits(p2:LongWord; p3:PByte; p4:Integer; p5:HDC):LongWord; stdcall;
begin
{*
 00407D04    jmp         dword ptr ds:[61C328]
*}
end;

//00407D0C
function gdi32.GetWindowOrgEx(var Point:TPoint):LongBool; stdcall;
begin
{*
 00407D0C    jmp         dword ptr ds:[61C324]
*}
end;

//00407D14
function gdi32.IntersectClipRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):Integer; stdcall;
begin
{*
 00407D14    jmp         dword ptr ds:[61C320]
*}
end;

//00407D1C
function gdi32.LineTo(X:Integer; Y:Integer):LongBool; stdcall;
begin
{*
 00407D1C    jmp         dword ptr ds:[61C31C]
*}
end;

//00407D24
function gdi32.MaskBlt(XDest:Integer; YDest:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XScr:Integer; YScr:Integer; Mask:HBITMAP; xMask:Integer; yMask:Integer; Rop:DWORD):LongBool; stdcall;
begin
{*
 00407D24    jmp         dword ptr ds:[61C318]
*}
end;

//00407D2C
function gdi32.MoveToEx(p2:Integer; p3:Integer; p4:PPoint):LongBool; stdcall;
begin
{*
 00407D2C    jmp         dword ptr ds:[61C314]
*}
end;

//00407D34
function gdi32.PatBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; Rop:DWORD):LongBool; stdcall;
begin
{*
 00407D34    jmp         dword ptr ds:[61C310]
*}
end;

//00407D3C
function gdi32.PlayEnhMetaFile(p2:HENHMETAFILE; const p3:TRect):LongBool; stdcall;
begin
{*
 00407D3C    jmp         dword ptr ds:[61C30C]
*}
end;

//00407D44
function gdi32.PolyPolyline(const PointStructs:void ; const Points:void ; p4:DWORD):LongBool; stdcall;
begin
{*
 00407D44    jmp         dword ptr ds:[61C308]
*}
end;

//00407D4C
function gdi32.Polygon(var Points:void ; Count:Integer):LongBool; stdcall;
begin
{*
 00407D4C    jmp         dword ptr ds:[61C304]
*}
end;

//00407D54
function gdi32.Polyline(var Points:void ; Count:Integer):LongBool; stdcall;
begin
{*
 00407D54    jmp         dword ptr ds:[61C300]
*}
end;

//00407D5C
function gdi32.RealizePalette:LongWord; stdcall;
begin
{*
 00407D5C    jmp         dword ptr ds:[61C2FC]
*}
end;

//00407D64
function gdi32.RectVisible(const Rect:TRect):LongBool; stdcall;
begin
{*
 00407D64    jmp         dword ptr ds:[61C2F8]
*}
end;

//00407D6C
function gdi32.Rectangle(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;
begin
{*
 00407D6C    jmp         dword ptr ds:[61C2F4]
*}
end;

//00407D74
function gdi32.RestoreDC(SavedDC:Integer):LongBool; stdcall;
begin
{*
 00407D74    jmp         dword ptr ds:[61C2F0]
*}
end;

//00407D7C
function gdi32.SaveDC:Integer; stdcall;
begin
{*
 00407D7C    jmp         dword ptr ds:[61C2EC]
*}
end;

//00407D84
function gdi32.SelectClipRgn(Region:HRGN):Integer; stdcall;
begin
{*
 00407D84    jmp         dword ptr ds:[61C2E8]
*}
end;

//00407D8C
function gdi32.SelectObject(p2:HGDIOBJ):HGDIOBJ; stdcall;
begin
{*
 00407D8C    jmp         dword ptr ds:[61C2E4]
*}
end;

//00407D94
function gdi32.SelectPalette(Palette:HPALETTE; ForceBackground:LongBool):HPALETTE; stdcall;
begin
{*
 00407D94    jmp         dword ptr ds:[61C2E0]
*}
end;

//00407D9C
function gdi32.SetAbortProc(lpAbortProc:TFNAbortProc):Integer; stdcall;
begin
{*
 00407D9C    jmp         dword ptr ds:[61C2DC]
*}
end;

//00407DA4
function gdi32.SetBkColor(Color:DWORD):DWORD; stdcall;
begin
{*
 00407DA4    jmp         dword ptr ds:[61C2D8]
*}
end;

//00407DAC
function gdi32.SetBkMode(BkMode:Integer):Integer; stdcall;
begin
{*
 00407DAC    jmp         dword ptr ds:[61C2D4]
*}
end;

//00407DB4
function gdi32.SetBrushOrgEx(X:Integer; Y:Integer; PrevPt:PPoint):LongBool; stdcall;
begin
{*
 00407DB4    jmp         dword ptr ds:[61C2D0]
*}
end;

//00407DBC
function gdi32.SetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadSTructs:void ):LongWord; stdcall;
begin
{*
 00407DBC    jmp         dword ptr ds:[61C2CC]
*}
end;

//00407DC4
function gdi32.SetEnhMetaFileBits(p2:PChar):HENHMETAFILE; stdcall;
begin
{*
 00407DC4    jmp         dword ptr ds:[61C2C8]
*}
end;

//00407DCC
function gdi32.SetMapMode(p2:Integer):Integer; stdcall;
begin
{*
 00407DCC    jmp         dword ptr ds:[61C2C4]
*}
end;

//00407DD4
function gdi32.SetPixel(X:Integer; Y:Integer; Color:DWORD):DWORD; stdcall;
begin
{*
 00407DD4    jmp         dword ptr ds:[61C2C0]
*}
end;

//00407DDC
function gdi32.SetROP2(p2:Integer):Integer; stdcall;
begin
{*
 00407DDC    jmp         dword ptr ds:[61C2BC]
*}
end;

//00407DE4
function gdi32.SetStretchBltMode(StretchMode:Integer):Integer; stdcall;
begin
{*
 00407DE4    jmp         dword ptr ds:[61C2B8]
*}
end;

//00407DEC
function gdi32.SetTextColor(Color:DWORD):DWORD; stdcall;
begin
{*
 00407DEC    jmp         dword ptr ds:[61C2B4]
*}
end;

//00407DF4
function gdi32.SetViewportExtEx(XExt:Integer; YExt:Integer; Size:PSize):LongBool; stdcall;
begin
{*
 00407DF4    jmp         dword ptr ds:[61C2B0]
*}
end;

//00407DFC
function gdi32.SetViewportOrgEx(X:Integer; Y:Integer; Point:PPoint):LongBool; stdcall;
begin
{*
 00407DFC    jmp         dword ptr ds:[61C2AC]
*}
end;

//00407E04
function gdi32.SetWinMetaFileBits(p2:PChar; p3:HDC; const p4:tagMETAFILEPICT):HENHMETAFILE; stdcall;
begin
{*
 00407E04    jmp         dword ptr ds:[61C2A8]
*}
end;

//00407E0C
function gdi32.SetWindowExtEx(XExt:Integer; YExt:Integer; Size:PSize):LongBool; stdcall;
begin
{*
 00407E0C    jmp         dword ptr ds:[61C2A4]
*}
end;

//00407E14
function gdi32.SetWindowOrgEx(X:Integer; Y:Integer; Point:PPoint):LongBool; stdcall;
begin
{*
 00407E14    jmp         dword ptr ds:[61C2A0]
*}
end;

//00407E1C
function gdi32.StartDocA(const p2:_DOCINFOA):Integer; stdcall;
begin
{*
 00407E1C    jmp         dword ptr ds:[61C29C]
*}
end;

//00407E24
function gdi32.StartPage:Integer; stdcall;
begin
{*
 00407E24    jmp         dword ptr ds:[61C298]
*}
end;

//00407E2C
function gdi32.StretchBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; SrcWidth:Integer; SrcHeight:Integer; Rop:DWORD):LongBool; stdcall;
begin
{*
 00407E2C    jmp         dword ptr ds:[61C294]
*}
end;

//00407E34
function gdi32.StretchDIBits(DestX:Integer; DestY:Integer; DestWidth:Integer; DestHeight:Integer; SrcX:Integer; SrcY:Integer; SrcWidth:Integer; SrcHeight:Integer; Bits:Pointer; var BitsInfo:tagBITMAPINFO; Usage:LongWord; Rop:DWORD):Integer; stdcall;
begin
{*
 00407E34    jmp         dword ptr ds:[61C290]
*}
end;

//00407E3C
function gdi32.UnrealizeObject:LongBool; stdcall;
begin
{*
 00407E3C    jmp         dword ptr ds:[61C28C]
*}
end;

//00407E44
function user32.ActivateKeyboardLayout(Flags:LongWord):HKL; stdcall;
begin
{*
 00407E44    jmp         dword ptr ds:[61C6F0]
*}
end;

//00407E4C
function user32.AdjustWindowRectEx(dwStyle:DWORD; bMenu:LongBool; dwExStyle:DWORD):LongBool; stdcall;
begin
{*
 00407E4C    jmp         dword ptr ds:[61C6EC]
*}
end;

//00407E54
function user32.CharLowerA:PAnsiChar; stdcall;
begin
{*
 00407E54    jmp         dword ptr ds:[61C6E0]
*}
end;

//00407E5C
function user32.BeginDeferWindowPos:THandle; stdcall;
begin
{*
 00407E5C    jmp         dword ptr ds:[61C6D4]
*}
end;

//00407E64
function user32.BeginPaint(var lpPaint:tagPAINTSTRUCT):HDC; stdcall;
begin
{*
 00407E64    jmp         dword ptr ds:[61C6D0]
*}
end;

//00407E6C
function user32.CallNextHookEx(nCode:Integer; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407E6C    jmp         dword ptr ds:[61C6CC]
*}
end;

//00407E74
function user32.CallWindowProcA(hWnd:HWND; Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407E74    jmp         dword ptr ds:[61C6C8]
*}
end;

//00407E7C
function user32.CharLowerBuffA(cchLength:DWORD):DWORD; stdcall;
begin
{*
 00407E7C    jmp         dword ptr ds:[61C6DC]
*}
end;

//00407E84
function user32.CharNextA:PAnsiChar; stdcall;
begin
{*
 00407E84    jmp         dword ptr ds:[61C6D8]
*}
end;

//00407E8C
function user32.CharToOemA(lpszDst:PAnsiChar):LongBool; stdcall;
begin
{*
 00407E8C    jmp         dword ptr ds:[61C6E8]
*}
end;

//00407E94
function user32.CharToOemA(lpszDst:PAnsiChar):LongBool; stdcall;
begin
{*
 00407E94    jmp         dword ptr ds:[61C6E8]
*}
end;

//00407E9C
function user32.CharUpperBuffA(cchLength:DWORD):DWORD; stdcall;
begin
{*
 00407E9C    jmp         dword ptr ds:[61C6E4]
*}
end;

//00407EA4
function user32.CheckMenuItem(uIDCheckItem:LongWord; uCheck:LongWord):DWORD; stdcall;
begin
{*
 00407EA4    jmp         dword ptr ds:[61C6C4]
*}
end;

//00407EAC
function user32.ChildWindowFromPoint(Point:TPoint):HWND; stdcall;
begin
{*
 00407EAC    jmp         dword ptr ds:[61C6C0]
*}
end;

//00407EB4
function user32.ClientToScreen(var lpPoint:TPoint):LongBool; stdcall;
begin
{*
 00407EB4    jmp         dword ptr ds:[61C6BC]
*}
end;

//00407EBC
function user32.CloseClipboard:LongBool;
begin
{*
 00407EBC    jmp         dword ptr ds:[61C6B8]
*}
end;

//00407EC4
{*function user32.CopyImage(Index:Integer):?;
begin
 00407EC4    jmp         dword ptr ds:[61C6B4]
end;*}

//00407ECC
function user32.CreateCaret(hBitmap:HBITMAP; nWidth:Integer; nHeight:Integer):LongBool; stdcall;
begin
{*
 00407ECC    jmp         dword ptr ds:[61C6B0]
*}
end;

//00407ED4
function user32.CreateIcon(nWidth:Integer; nHeight:Integer; cPlanes:Byte; cBitsPixel:Byte; lpbANDbits:Pointer; lpbXORbits:Pointer):HICON; stdcall;
begin
{*
 00407ED4    jmp         dword ptr ds:[61C6AC]
*}
end;

//00407EDC
function user32.CreateMenu(ParentMenu:AnsiString; FunctionName:AnsiString; AHeight:Integer; AWidth:Integer; AOnMouseOutEvent:AnsiString; AOnMouseOverEvent:AnsiString; AOnClickEvent:AnsiString; AHighLightTextColor:TColor; ATextColor:TColor; AHighlightColor:TColor; AColor:TColor; AImage2:AnsiString; AImage1:AnsiString; Target:AnsiString; LinkAddr:AnsiString):AnsiString;
begin
{*
 00407EDC    jmp         dword ptr ds:[61C6A8]
*}
end;

//00407EE4
function user32.CreatePopupMenu:HMENU;
begin
{*
 00407EE4    jmp         dword ptr ds:[61C6A4]
*}
end;

//00407EEC
function user32.DefFrameProcA(hWndMDIClient:HWND; uMsg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407EEC    jmp         dword ptr ds:[61C6A0]
*}
end;

//00407EF4
function user32.DefMDIChildProcA(uMsg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407EF4    jmp         dword ptr ds:[61C69C]
*}
end;

//00407EFC
function user32.DefWindowProcA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407EFC    jmp         dword ptr ds:[61C698]
*}
end;

//00407F04
function user32.DeferWindowPos(hWnd:HWND; hWndInsertAfter:HWND; x:Integer; y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):THandle; stdcall;
begin
{*
 00407F04    jmp         dword ptr ds:[61C694]
*}
end;

//00407F0C
function user32.DeleteMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;
begin
{*
 00407F0C    jmp         dword ptr ds:[61C690]
*}
end;

//00407F14
function user32.DestroyCaret:LongBool;
begin
{*
 00407F14    jmp         dword ptr ds:[61C68C]
*}
end;

//00407F1C
function user32.DestroyCursor:LongBool; stdcall;
begin
{*
 00407F1C    jmp         dword ptr ds:[61C688]
*}
end;

//00407F24
function user32.DestroyCursor:LongBool; stdcall;
begin
{*
 00407F24    jmp         dword ptr ds:[61C684]
*}
end;

//00407F2C
function user32.DestroyMenu:LongBool; stdcall;
begin
{*
 00407F2C    jmp         dword ptr ds:[61C680]
*}
end;

//00407F34
function user32.DestroyWindow:LongBool; stdcall;
begin
{*
 00407F34    jmp         dword ptr ds:[61C67C]
*}
end;

//00407F3C
function user32.DispatchMessageA:Longint; stdcall;
begin
{*
 00407F3C    jmp         dword ptr ds:[61C678]
*}
end;

//00407F44
function user32.DrawEdge(var qrc:TRect; edge:LongWord; grfFlags:LongWord):LongBool; stdcall;
begin
{*
 00407F44    jmp         dword ptr ds:[61C674]
*}
end;

//00407F4C
function user32.DrawFocusRect(const lprc:TRect):LongBool; stdcall;
begin
{*
 00407F4C    jmp         dword ptr ds:[61C670]
*}
end;

//00407F54
function user32.DrawFrameControl(const Rect:TRect; uType:LongWord; uState:LongWord):LongBool; stdcall;
begin
{*
 00407F54    jmp         dword ptr ds:[61C66C]
*}
end;

//00407F5C
function user32.DrawIcon(X:Integer; Y:Integer; hIcon:HICON):LongBool; stdcall;
begin
{*
 00407F5C    jmp         dword ptr ds:[61C668]
*}
end;

//00407F64
function user32.DrawIconEx(xLeft:Integer; yTop:Integer; hIcon:HICON; cxWidth:Integer; cyWidth:Integer; istepIfAniCur:LongWord; hbrFlickerFreeDraw:HBRUSH; diFlags:LongWord):LongBool; stdcall;
begin
{*
 00407F64    jmp         dword ptr ds:[61C664]
*}
end;

//00407F6C
function user32.DrawMenuBar:LongBool; stdcall;
begin
{*
 00407F6C    jmp         dword ptr ds:[61C660]
*}
end;

//00407F74
function user32.DrawStateA(Brush:HBRUSH; CBFunc:Pointer; lData:Longint; wData:Longint; x:Integer; y:Integer; cx:Integer; cy:Integer; Flags:LongWord):LongBool; stdcall;
begin
{*
 00407F74    jmp         dword ptr ds:[61C65C]
*}
end;

//00407F7C
function user32.DrawTextA(lpString:PAnsiChar; nCount:Integer; var lpRect:TRect; uFormat:LongWord):Integer; stdcall;
begin
{*
 00407F7C    jmp         dword ptr ds:[61C658]
*}
end;

//00407F84
function user32.EmptyClipboard:LongBool;
begin
{*
 00407F84    jmp         dword ptr ds:[61C654]
*}
end;

//00407F8C
function user32.EnableMenuItem(uIDEnableItem:LongWord; uEnable:LongWord):LongBool; stdcall;
begin
{*
 00407F8C    jmp         dword ptr ds:[61C650]
*}
end;

//00407F94
function user32.EnableScrollBar(wSBflags:LongWord; wArrows:LongWord):LongBool; stdcall;
begin
{*
 00407F94    jmp         dword ptr ds:[61C64C]
*}
end;

//00407F9C
function user32.EnableWindow(bEnable:LongBool):LongBool; stdcall;
begin
{*
 00407F9C    jmp         dword ptr ds:[61C648]
*}
end;

//00407FA4
function user32.EndDeferWindowPos:LongBool; stdcall;
begin
{*
 00407FA4    jmp         dword ptr ds:[61C644]
*}
end;

//00407FAC
function user32.EndPaint(const lpPaint:tagPAINTSTRUCT):LongBool; stdcall;
begin
{*
 00407FAC    jmp         dword ptr ds:[61C640]
*}
end;

//00407FB4
function user32.EnumClipboardFormats:LongWord; stdcall;
begin
{*
 00407FB4    jmp         dword ptr ds:[61C63C]
*}
end;

//00407FBC
function user32.EnumThreadWindows(lpfn:Pointer; lParam:Longint):LongBool; stdcall;
begin
{*
 00407FBC    jmp         dword ptr ds:[61C638]
*}
end;

//00407FC4
function user32.EnumWindows(lParam:Longint):LongBool; stdcall;
begin
{*
 00407FC4    jmp         dword ptr ds:[61C634]
*}
end;

//00407FCC
function user32.EqualRect(const lprc2:TRect):LongBool; stdcall;
begin
{*
 00407FCC    jmp         dword ptr ds:[61C630]
*}
end;

//00407FD4
function user32.FillRect(const lprc:TRect; hbr:HBRUSH):Integer; stdcall;
begin
{*
 00407FD4    jmp         dword ptr ds:[61C62C]
*}
end;

//00407FDC
function user32.FindWindowA(lpWindowName:PAnsiChar):HWND; stdcall;
begin
{*
 00407FDC    jmp         dword ptr ds:[61C628]
*}
end;

//00407FE4
function user32.FrameRect(const lprc:TRect; hbr:HBRUSH):Integer; stdcall;
begin
{*
 00407FE4    jmp         dword ptr ds:[61C624]
*}
end;

//00407FEC
function user32.GetActiveWindow:HWND;
begin
{*
 00407FEC    jmp         dword ptr ds:[61C620]
*}
end;

//00407FF4
function user32.GetAsyncKeyState:Smallint; stdcall;
begin
{*
 00407FF4    jmp         dword ptr ds:[61C61C]
*}
end;

//00407FFC
function user32.GetCapture:HWND;
begin
{*
 00407FFC    jmp         dword ptr ds:[61C618]
*}
end;

//00408004
function user32.GetCaretPos:LongBool; stdcall;
begin
{*
 00408004    jmp         dword ptr ds:[61C614]
*}
end;

//0040800C
function user32.GetClassInfoA(lpClassName:PAnsiChar; var lpWndClass:tagWNDCLASSA):LongBool; stdcall;
begin
{*
 0040800C    jmp         dword ptr ds:[61C610]
*}
end;

//00408014
function user32.GetClassNameA(lpClassName:PAnsiChar; nMaxCount:Integer):Integer; stdcall;
begin
{*
 00408014    jmp         dword ptr ds:[61C60C]
*}
end;

//0040801C
function user32.GetClientRect(var lpRect:TRect):LongBool; stdcall;
begin
{*
 0040801C    jmp         dword ptr ds:[61C608]
*}
end;

//00408024
function user32.GetClipboardData:THandle; stdcall;
begin
{*
 00408024    jmp         dword ptr ds:[61C604]
*}
end;

//0040802C
function user32.GetClipboardFormatNameA(lpszFormatName:PAnsiChar; cchMaxCount:Integer):Integer; stdcall;
begin
{*
 0040802C    jmp         dword ptr ds:[61C600]
*}
end;

//00408034
function user32.GetCursor:HICON;
begin
{*
 00408034    jmp         dword ptr ds:[61C5FC]
*}
end;

//0040803C
function user32.GetCursorPos:LongBool; stdcall;
begin
{*
 0040803C    jmp         dword ptr ds:[61C5F8]
*}
end;

//00408044
function user32.GetDC:HDC; stdcall;
begin
{*
 00408044    jmp         dword ptr ds:[61C5F4]
*}
end;

//0040804C
function user32.GetDCEx(hrgnClip:HRGN; flags:DWORD):HDC; stdcall;
begin
{*
 0040804C    jmp         dword ptr ds:[61C5F0]
*}
end;

//00408054
function user32.GetDesktopWindow:HWND;
begin
{*
 00408054    jmp         dword ptr ds:[61C5EC]
*}
end;

//0040805C
function user32.GetDlgItem(nIDDlgItem:Integer):HWND; stdcall;
begin
{*
 0040805C    jmp         dword ptr ds:[61C5E8]
*}
end;

//00408064
function user32.GetDoubleClickTime:LongWord;
begin
{*
 00408064    jmp         dword ptr ds:[61C5E4]
*}
end;

//0040806C
function user32.GetFocus:HWND;
begin
{*
 0040806C    jmp         dword ptr ds:[61C5E0]
*}
end;

//00408074
function user32.GetForegroundWindow:HWND;
begin
{*
 00408074    jmp         dword ptr ds:[61C5DC]
*}
end;

//0040807C
function user32.GetIconInfo(var piconinfo:_ICONINFO):LongBool; stdcall;
begin
{*
 0040807C    jmp         dword ptr ds:[61C5D8]
*}
end;

//00408084
function user32.GetKeyNameTextA(lpString:PAnsiChar; nSize:Integer):Integer; stdcall;
begin
{*
 00408084    jmp         dword ptr ds:[61C5D4]
*}
end;

//0040808C
function user32.GetKeyState:Smallint; stdcall;
begin
{*
 0040808C    jmp         dword ptr ds:[61C5D0]
*}
end;

//00408094
function user32.GetKeyboardLayout:HKL; stdcall;
begin
{*
 00408094    jmp         dword ptr ds:[61C5CC]
*}
end;

//0040809C
function user32.GetKeyboardLayoutList(var List:void ):LongWord; stdcall;
begin
{*
 0040809C    jmp         dword ptr ds:[61C5C8]
*}
end;

//004080A4
function user32.GetKeyboardState:LongBool; stdcall;
begin
{*
 004080A4    jmp         dword ptr ds:[61C5C4]
*}
end;

//004080AC
function user32.GetLastActivePopup:HWND; stdcall;
begin
{*
 004080AC    jmp         dword ptr ds:[61C5C0]
*}
end;

//004080B4
function user32.GetMenu:HMENU; stdcall;
begin
{*
 004080B4    jmp         dword ptr ds:[61C5BC]
*}
end;

//004080BC
function user32.GetMenuItemCount:Integer; stdcall;
begin
{*
 004080BC    jmp         dword ptr ds:[61C5B8]
*}
end;

//004080C4
function user32.GetMenuItemID(nPos:Integer):LongWord; stdcall;
begin
{*
 004080C4    jmp         dword ptr ds:[61C5B4]
*}
end;

//004080CC
function user32.GetMenuItemInfoA(p2:LongWord; p3:LongBool; var p4:tagMENUITEMINFOA):LongBool; stdcall;
begin
{*
 004080CC    jmp         dword ptr ds:[61C5B0]
*}
end;

//004080D4
function user32.GetMenuState(uId:LongWord; uFlags:LongWord):LongWord; stdcall;
begin
{*
 004080D4    jmp         dword ptr ds:[61C5AC]
*}
end;

//004080DC
function user32.GetMenuStringA(uIDItem:LongWord; lpString:PAnsiChar; nMaxCount:Integer; uFlag:LongWord):Integer; stdcall;
begin
{*
 004080DC    jmp         dword ptr ds:[61C5A8]
*}
end;

//004080E4
function user32.GetMessagePos:DWORD;
begin
{*
 004080E4    jmp         dword ptr ds:[61C5A4]
*}
end;

//004080EC
function user32.GetMessageTime:Longint;
begin
{*
 004080EC    jmp         dword ptr ds:[61C5A0]
*}
end;

//004080F4
function user32.GetWindow(uCmd:LongWord):HWND; stdcall;
begin
{*
 004080F4    jmp         dword ptr ds:[61C59C]
*}
end;

//004080FC
function user32.GetParent:HWND; stdcall;
begin
{*
 004080FC    jmp         dword ptr ds:[61C598]
*}
end;

//00408104
function user32.GetPropA(lpString:PAnsiChar):THandle; stdcall;
begin
{*
 00408104    jmp         dword ptr ds:[61C594]
*}
end;

//0040810C
function user32.GetScrollInfo(BarFlag:Integer; var ScrollInfo:tagSCROLLINFO):LongBool; stdcall;
begin
{*
 0040810C    jmp         dword ptr ds:[61C590]
*}
end;

//00408114
function user32.GetScrollPos(nBar:Integer):Integer; stdcall;
begin
{*
 00408114    jmp         dword ptr ds:[61C58C]
*}
end;

//0040811C
function user32.GetScrollRange(nBar:Integer; var lpMinPos:Integer; var lpMaxPos:Integer):LongBool; stdcall;
begin
{*
 0040811C    jmp         dword ptr ds:[61C588]
*}
end;

//00408124
function user32.GetSubMenu(nPos:Integer):HMENU; stdcall;
begin
{*
 00408124    jmp         dword ptr ds:[61C584]
*}
end;

//0040812C
function user32.GetSysColor:DWORD; stdcall;
begin
{*
 0040812C    jmp         dword ptr ds:[61C580]
*}
end;

//00408134
function user32.GetSysColorBrush:HBRUSH; stdcall;
begin
{*
 00408134    jmp         dword ptr ds:[61C57C]
*}
end;

//0040813C
function user32.GetSystemMenu(bRevert:LongBool):HMENU; stdcall;
begin
{*
 0040813C    jmp         dword ptr ds:[61C578]
*}
end;

//00408144
function user32.GetSystemMetrics:Integer; stdcall;
begin
{*
 00408144    jmp         dword ptr ds:[61C574]
*}
end;

//0040814C
function user32.GetTopWindow:HWND; stdcall;
begin
{*
 0040814C    jmp         dword ptr ds:[61C570]
*}
end;

//00408154
function user32.GetUpdateRect(var lpRect:TRect; bErase:LongBool):LongBool; stdcall;
begin
{*
 00408154    jmp         dword ptr ds:[61C56C]
*}
end;

//0040815C
function user32.GetWindow(uCmd:LongWord):HWND; stdcall;
begin
{*
 0040815C    jmp         dword ptr ds:[61C59C]
*}
end;

//00408164
function user32.GetWindowDC:HDC; stdcall;
begin
{*
 00408164    jmp         dword ptr ds:[61C568]
*}
end;

//0040816C
function user32.GetWindowLongA(nIndex:Integer):Longint; stdcall;
begin
{*
 0040816C    jmp         dword ptr ds:[61C564]
*}
end;

//00408174
function user32.GetWindowPlacement(WindowPlacement:PWindowPlacement):LongBool; stdcall;
begin
{*
 00408174    jmp         dword ptr ds:[61C560]
*}
end;

//0040817C
function user32.GetWindowRect(var lpRect:TRect):LongBool; stdcall;
begin
{*
 0040817C    jmp         dword ptr ds:[61C55C]
*}
end;

//00408184
function user32.GetWindowTextA(lpString:PAnsiChar; nMaxCount:Integer):Integer; stdcall;
begin
{*
 00408184    jmp         dword ptr ds:[61C558]
*}
end;

//0040818C
function user32.GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;
begin
{*
 0040818C    jmp         dword ptr ds:[61C554]
*}
end;

//00408194
function user32.GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;
begin
{*
 00408194    jmp         dword ptr ds:[61C554]
*}
end;

//0040819C
function user32.HideCaret:LongBool; stdcall;
begin
{*
 0040819C    jmp         dword ptr ds:[61C550]
*}
end;

//004081A4
function user32.InflateRect(dx:Integer; dy:Integer):LongBool; stdcall;
begin
{*
 004081A4    jmp         dword ptr ds:[61C54C]
*}
end;

//004081AC
function user32.InsertMenuA(uPosition:LongWord; uFlags:LongWord; uIDNewItem:LongWord; lpNewItem:PAnsiChar):LongBool; stdcall;
begin
{*
 004081AC    jmp         dword ptr ds:[61C548]
*}
end;

//004081B4
function user32.InsertMenuItemA(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOA):LongBool; stdcall;
begin
{*
 004081B4    jmp         dword ptr ds:[61C544]
*}
end;

//004081BC
function user32.IntersectRect(const lprcSrc1:TRect; const lprcSrc2:TRect):LongBool; stdcall;
begin
{*
 004081BC    jmp         dword ptr ds:[61C540]
*}
end;

//004081C4
function user32.InvalidateRect(lpRect:PRect; bErase:LongBool):LongBool; stdcall;
begin
{*
 004081C4    jmp         dword ptr ds:[61C53C]
*}
end;

//004081CC
function user32.IsCharAlphaA:LongBool; stdcall;
begin
{*
 004081CC    jmp         dword ptr ds:[61C538]
*}
end;

//004081D4
function user32.IsCharAlphaNumericA:LongBool; stdcall;
begin
{*
 004081D4    jmp         dword ptr ds:[61C534]
*}
end;

//004081DC
function user32.IsChild(hWnd:HWND):LongBool; stdcall;
begin
{*
 004081DC    jmp         dword ptr ds:[61C530]
*}
end;

//004081E4
function user32.IsDialogMessage(var lpMsg:tagMSG):LongBool; stdcall;
begin
{*
 004081E4    jmp         dword ptr ds:[61C52C]
*}
end;

//004081EC
function user32.IsIconic:LongBool; stdcall;
begin
{*
 004081EC    jmp         dword ptr ds:[61C528]
*}
end;

//004081F4
function user32.IsRectEmpty:LongBool; stdcall;
begin
{*
 004081F4    jmp         dword ptr ds:[61C524]
*}
end;

//004081FC
function user32.IsWindow:LongBool; stdcall;
begin
{*
 004081FC    jmp         dword ptr ds:[61C520]
*}
end;

//00408204
function user32.IsWindowEnabled:LongBool; stdcall;
begin
{*
 00408204    jmp         dword ptr ds:[61C51C]
*}
end;

//0040820C
function user32.IsWindowVisible:LongBool; stdcall;
begin
{*
 0040820C    jmp         dword ptr ds:[61C518]
*}
end;

//00408214
function user32.IsZoomed:LongBool; stdcall;
begin
{*
 00408214    jmp         dword ptr ds:[61C514]
*}
end;

//0040821C
function user32.KillTimer(uIDEvent:LongWord):LongBool; stdcall;
begin
{*
 0040821C    jmp         dword ptr ds:[61C510]
*}
end;

//00408224
function user32.LoadBitmapA(lpBitmapName:PAnsiChar):HBITMAP; stdcall;
begin
{*
 00408224    jmp         dword ptr ds:[61C50C]
*}
end;

//0040822C
function user32.LoadCursorA(lpCursorName:PAnsiChar):HICON; stdcall;
begin
{*
 0040822C    jmp         dword ptr ds:[61C508]
*}
end;

//00408234
function user32.LoadIconA(lpIconName:PAnsiChar):HICON; stdcall;
begin
{*
 00408234    jmp         dword ptr ds:[61C504]
*}
end;

//0040823C
function user32.LoadKeyboardLayoutA(Flags:LongWord):HKL; stdcall;
begin
{*
 0040823C    jmp         dword ptr ds:[61C500]
*}
end;

//00408244
function user32.LoadStringA(uID:LongWord; lpBuffer:PAnsiChar; nBufferMax:Integer):Integer; stdcall;
begin
{*
 00408244    jmp         dword ptr ds:[61C4FC]
*}
end;

//0040824C
function user32.LockWindowUpdate:LongBool; stdcall;
begin
{*
 0040824C    jmp         dword ptr ds:[61C4F8]
*}
end;

//00408254
function user32.MapVirtualKeyA(uMapType:LongWord):LongWord; stdcall;
begin
{*
 00408254    jmp         dword ptr ds:[61C4F4]
*}
end;

//0040825C
function user32.MapWindowPoints(hWndTo:HWND; var lpPoints:void ; cPoints:LongWord):Integer; stdcall;
begin
{*
 0040825C    jmp         dword ptr ds:[61C4F0]
*}
end;

//00408264
function user32.MessageBeep:LongBool; stdcall;
begin
{*
 00408264    jmp         dword ptr ds:[61C4EC]
*}
end;

//0040826C
function user32.MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;
begin
{*
 0040826C    jmp         dword ptr ds:[61C4E8]
*}
end;

//00408274
function user32.MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;
begin
{*
 00408274    jmp         dword ptr ds:[61C4E8]
*}
end;

//0040827C
function user32.OemToCharA(lpszDst:PAnsiChar):LongBool; stdcall;
begin
{*
 0040827C    jmp         dword ptr ds:[61C4E4]
*}
end;

//00408284
function user32.OemToCharA(lpszDst:PAnsiChar):LongBool; stdcall;
begin
{*
 00408284    jmp         dword ptr ds:[61C4E4]
*}
end;

//0040828C
function user32.OffsetRect(DX:Integer; DY:Integer):Boolean;
begin
{*
 0040828C    jmp         dword ptr ds:[61C4E0]
*}
end;

//00408294
function user32.OpenClipboard:LongBool; stdcall;
begin
{*
 00408294    jmp         dword ptr ds:[61C4DC]
*}
end;

//0040829C
function user32.PeekMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;
begin
{*
 0040829C    jmp         dword ptr ds:[61C4D8]
*}
end;

//004082A4
function user32.PostMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;
begin
{*
 004082A4    jmp         dword ptr ds:[61C4D4]
*}
end;

//004082AC
procedure user32.PostQuitMessage; stdcall;
begin
{*
 004082AC    jmp         dword ptr ds:[61C4D0]
*}
end;

//004082B4
function user32.PtInRect(const P:TPoint):Boolean;
begin
{*
 004082B4    jmp         dword ptr ds:[61C4CC]
*}
end;

//004082BC
function user32.RedrawWindow(lprcUpdate:PRect; hrgnUpdate:HRGN; flags:LongWord):LongBool; stdcall;
begin
{*
 004082BC    jmp         dword ptr ds:[61C4C8]
*}
end;

//004082C4
function user32.RegisterClassA:Word; stdcall;
begin
{*
 004082C4    jmp         dword ptr ds:[61C4C4]
*}
end;

//004082CC
function user32.RegisterClipboardFormatA:LongWord; stdcall;
begin
{*
 004082CC    jmp         dword ptr ds:[61C4C0]
*}
end;

//004082D4
function user32.RegisterClipboardFormatA:LongWord; stdcall;
begin
{*
 004082D4    jmp         dword ptr ds:[61C4BC]
*}
end;

//004082DC
function user32.ReleaseCapture:LongBool;
begin
{*
 004082DC    jmp         dword ptr ds:[61C4B8]
*}
end;

//004082E4
function user32.ReleaseDC(hDC:HDC):Integer; stdcall;
begin
{*
 004082E4    jmp         dword ptr ds:[61C4B4]
*}
end;

//004082EC
function user32.RemoveMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;
begin
{*
 004082EC    jmp         dword ptr ds:[61C4B0]
*}
end;

//004082F4
function user32.RemovePropA(lpString:PAnsiChar):THandle; stdcall;
begin
{*
 004082F4    jmp         dword ptr ds:[61C4AC]
*}
end;

//004082FC
function user32.ScreenToClient(var lpPoint:TPoint):LongBool; stdcall;
begin
{*
 004082FC    jmp         dword ptr ds:[61C4A8]
*}
end;

//00408304
function user32.ScrollWindow(XAmount:Integer; YAmount:Integer; Rect:PRect; ClipRect:PRect):LongBool; stdcall;
begin
{*
 00408304    jmp         dword ptr ds:[61C4A4]
*}
end;

//0040830C
function user32.ScrollWindowEx(dx:Integer; dy:Integer; prcScroll:PRect; prcClip:PRect; hrgnUpdate:HRGN; prcUpdate:PRect; flags:LongWord):LongBool; stdcall;
begin
{*
 0040830C    jmp         dword ptr ds:[61C4A0]
*}
end;

//00408314
function user32.SendMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00408314    jmp         dword ptr ds:[61C49C]
*}
end;

//0040831C
function user32.SetActiveWindow:HWND; stdcall;
begin
{*
 0040831C    jmp         dword ptr ds:[61C498]
*}
end;

//00408324
function user32.SetCapture:HWND; stdcall;
begin
{*
 00408324    jmp         dword ptr ds:[61C494]
*}
end;

//0040832C
function user32.SetCaretPos(Y:Integer):LongBool; stdcall;
begin
{*
 0040832C    jmp         dword ptr ds:[61C490]
*}
end;

//00408334
function user32.SetClassLongA(nIndex:Integer; dwNewLong:Longint):DWORD; stdcall;
begin
{*
 00408334    jmp         dword ptr ds:[61C48C]
*}
end;

//0040833C
function user32.SetClipboardData(hMem:THandle):THandle; stdcall;
begin
{*
 0040833C    jmp         dword ptr ds:[61C488]
*}
end;

//00408344
function user32.SetCursor:HICON; stdcall;
begin
{*
 00408344    jmp         dword ptr ds:[61C484]
*}
end;

//0040834C
function user32.SetFocus:HWND; stdcall;
begin
{*
 0040834C    jmp         dword ptr ds:[61C480]
*}
end;

//00408354
function user32.SetForegroundWindow:LongBool; stdcall;
begin
{*
 00408354    jmp         dword ptr ds:[61C47C]
*}
end;

//0040835C
function user32.SetKeyboardState:LongBool; stdcall;
begin
{*
 0040835C    jmp         dword ptr ds:[61C478]
*}
end;

//00408364
function user32.SetMenu(hMenu:HMENU):LongBool; stdcall;
begin
{*
 00408364    jmp         dword ptr ds:[61C474]
*}
end;

//0040836C
function user32.SetMenuItemInfoA(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOA):LongBool; stdcall;
begin
{*
 0040836C    jmp         dword ptr ds:[61C470]
*}
end;

//00408374
function user32.SetParent(hWndNewParent:HWND):HWND; stdcall;
begin
{*
 00408374    jmp         dword ptr ds:[61C46C]
*}
end;

//0040837C
function user32.SetPropA(lpString:PAnsiChar; hData:THandle):LongBool; stdcall;
begin
{*
 0040837C    jmp         dword ptr ds:[61C468]
*}
end;

//00408384
function user32.SetRect(xLeft:Integer; yTop:Integer; xRight:Integer; yBottom:Integer):LongBool; stdcall;
begin
{*
 00408384    jmp         dword ptr ds:[61C464]
*}
end;

//0040838C
function user32.SetScrollInfo(BarFlag:Integer; const ScrollInfo:tagSCROLLINFO; Redraw:LongBool):Integer; stdcall;
begin
{*
 0040838C    jmp         dword ptr ds:[61C460]
*}
end;

//00408394
function user32.SetScrollPos(nBar:Integer; nPos:Integer; bRedraw:LongBool):Integer; stdcall;
begin
{*
 00408394    jmp         dword ptr ds:[61C45C]
*}
end;

//0040839C
function user32.SetScrollRange(nBar:Integer; nMinPos:Integer; nMaxPos:Integer; bRedraw:LongBool):LongBool; stdcall;
begin
{*
 0040839C    jmp         dword ptr ds:[61C458]
*}
end;

//004083A4
function user32.SetTimer(nIDEvent:LongWord; uElapse:LongWord; lpTimerFunc:Pointer):LongWord; stdcall;
begin
{*
 004083A4    jmp         dword ptr ds:[61C454]
*}
end;

//004083AC
function user32.SetWindowLongA(nIndex:Integer; dwNewLong:Longint):Longint; stdcall;
begin
{*
 004083AC    jmp         dword ptr ds:[61C450]
*}
end;

//004083B4
function user32.SetWindowPlacement(WindowPlacement:PWindowPlacement):LongBool; stdcall;
begin
{*
 004083B4    jmp         dword ptr ds:[61C44C]
*}
end;

//004083BC
function user32.SetWindowPos(hWndInsertAfter:HWND; X:Integer; Y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):LongBool; stdcall;
begin
{*
 004083BC    jmp         dword ptr ds:[61C448]
*}
end;

//004083C4
function user32.SetWindowTextA(lpString:PAnsiChar):LongBool; stdcall;
begin
{*
 004083C4    jmp         dword ptr ds:[61C444]
*}
end;

//004083CC
function user32.SetWindowsHookExA(lpfn:TFNHookProc; hmod:HINST; dwThreadId:DWORD):HHOOK; stdcall;
begin
{*
 004083CC    jmp         dword ptr ds:[61C440]
*}
end;

//004083D4
function user32.ShowCaret:LongBool; stdcall;
begin
{*
 004083D4    jmp         dword ptr ds:[61C43C]
*}
end;

//004083DC
function user32.ShowCursor:Integer; stdcall;
begin
{*
 004083DC    jmp         dword ptr ds:[61C438]
*}
end;

//004083E4
function user32.ShowOwnedPopups(fShow:LongBool):LongBool; stdcall;
begin
{*
 004083E4    jmp         dword ptr ds:[61C434]
*}
end;

//004083EC
function user32.ShowScrollBar(wBar:Integer; bShow:LongBool):LongBool; stdcall;
begin
{*
 004083EC    jmp         dword ptr ds:[61C430]
*}
end;

//004083F4
function user32.ShowWindow(nCmdShow:Integer):LongBool; stdcall;
begin
{*
 004083F4    jmp         dword ptr ds:[61C42C]
*}
end;

//004083FC
function user32.SystemParametersInfoA(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;
begin
{*
 004083FC    jmp         dword ptr ds:[61C428]
*}
end;

//00408404
function user32.TrackPopupMenu(uFlags:LongWord; x:Integer; y:Integer; nReserved:Integer; hWnd:HWND; prcRect:PRect):LongBool; stdcall;
begin
{*
 00408404    jmp         dword ptr ds:[61C424]
*}
end;

//0040840C
function user32.TranslateMDISysAccel(const lpMsg:tagMSG):LongBool; stdcall;
begin
{*
 0040840C    jmp         dword ptr ds:[61C420]
*}
end;

//00408414
function user32.TranslateMessage:LongBool; stdcall;
begin
{*
 00408414    jmp         dword ptr ds:[61C41C]
*}
end;

//0040841C
function user32.UnhookWindowsHookEx:LongBool; stdcall;
begin
{*
 0040841C    jmp         dword ptr ds:[61C418]
*}
end;

//00408424
function user32.UnionRect(const R1:TRect; const R2:TRect):Boolean;
begin
{*
 00408424    jmp         dword ptr ds:[61C414]
*}
end;

//0040842C
function user32.UnregisterClassA(hInstance:HINST):LongBool; stdcall;
begin
{*
 0040842C    jmp         dword ptr ds:[61C410]
*}
end;

//00408434
function user32.UpdateWindow:LongBool; stdcall;
begin
{*
 00408434    jmp         dword ptr ds:[61C40C]
*}
end;

//0040843C
function user32.ValidateRect(lpRect:PRect):LongBool; stdcall;
begin
{*
 0040843C    jmp         dword ptr ds:[61C408]
*}
end;

//00408444
function user32.WaitMessage:LongBool;
begin
{*
 00408444    jmp         dword ptr ds:[61C404]
*}
end;

//0040844C
function user32.WinHelpA(lpszHelp:PAnsiChar; uCommand:LongWord; dwData:DWORD):LongBool; stdcall;
begin
{*
 0040844C    jmp         dword ptr ds:[61C400]
*}
end;

//00408454
function user32.WindowFromPoint:HWND; stdcall;
begin
{*
 00408454    jmp         dword ptr ds:[61C3FC]
*}
end;

//0040845C
{*function sub_0040845C(?:Longint; ?:?):?;
begin
 0040845C    push        ebp
 0040845D    mov         ebp,esp
 0040845F    add         esp,0FFFFFFF8
 00408462    mov         word ptr [ebp-4],dx
 00408466    mov         word ptr [ebp-2],ax
 0040846A    movzx       eax,word ptr [ebp-2]
 0040846E    movzx       edx,word ptr [ebp-4]
 00408472    shl         edx,10
 00408475    or          eax,edx
 00408477    mov         dword ptr [ebp-8],eax
 0040847A    mov         eax,dword ptr [ebp-8]
 0040847D    pop         ecx
 0040847E    pop         ecx
 0040847F    pop         ebp
 00408480    ret
end;*}

//00408484
{*function sub_00408484(?:DWORD):?;
begin
 00408484    push        ebp
 00408485    mov         ebp,esp
 00408487    add         esp,0FFFFFFF8
 0040848A    mov         dword ptr [ebp-4],eax
 0040848D    mov         eax,dword ptr [ebp-4]
 00408490    shr         eax,10
 00408493    mov         word ptr [ebp-6],ax
 00408497    mov         ax,word ptr [ebp-6]
 0040849B    pop         ecx
 0040849C    pop         ecx
 0040849D    pop         ebp
 0040849E    ret
end;*}

//004084A0
{*function sub_004084A0(?:DWORD):?;
begin
 004084A0    push        ebp
 004084A1    mov         ebp,esp
 004084A3    push        ecx
 004084A4    mov         word ptr [ebp-2],ax
 004084A8    movzx       eax,word ptr [ebp-2]
 004084AC    shr         eax,8
 004084AF    mov         byte ptr [ebp-3],al
 004084B2    mov         al,byte ptr [ebp-3]
 004084B5    pop         ecx
 004084B6    pop         ebp
 004084B7    ret
end;*}

//004084B8
{*function sub_004084B8:?;
begin
 004084B8    push        ebp
 004084B9    mov         ebp,esp
 004084BB    push        ecx
 004084BC    call        kernel32.GetTickCount
 004084C1    mov         dword ptr [ebp-4],eax
 004084C4    mov         eax,dword ptr [ebp-4]
 004084C7    pop         ecx
 004084C8    pop         ebp
 004084C9    ret
end;*}

//004084CC
{*procedure sub_004084CC(?:?; ?:?; ?:?);
begin
 004084CC    push        ebp
 004084CD    mov         ebp,esp
 004084CF    add         esp,0FFFFFFF4
 004084D2    mov         dword ptr [ebp-0C],ecx
 004084D5    mov         dword ptr [ebp-8],edx
 004084D8    mov         dword ptr [ebp-4],eax
 004084DB    mov         edx,dword ptr [ebp-4]
 004084DE    mov         eax,dword ptr [ebp-8]
 004084E1    mov         ecx,dword ptr [ebp-0C]
 004084E4    call        Move
 004084E9    mov         esp,ebp
 004084EB    pop         ebp
 004084EC    ret
end;*}

//004084F0
{*procedure sub_004084F0(?:?; ?:WideString; ?:?);
begin
 004084F0    push        ebp
 004084F1    mov         ebp,esp
 004084F3    add         esp,0FFFFFFF4
 004084F6    mov         dword ptr [ebp-0C],ecx
 004084F9    mov         dword ptr [ebp-8],edx
 004084FC    mov         dword ptr [ebp-4],eax
 004084FF    mov         edx,dword ptr [ebp-4]
 00408502    mov         eax,dword ptr [ebp-8]
 00408505    mov         ecx,dword ptr [ebp-0C]
 00408508    call        Move
 0040850D    mov         esp,ebp
 0040850F    pop         ebp
 00408510    ret
end;*}

//00408514
{*function sub_00408514(?:THandle):?;
begin
 00408514    push        ebp
 00408515    mov         ebp,esp
 00408517    add         esp,0FFFFFFF8
 0040851A    mov         dword ptr [ebp-8],eax
 0040851D    xor         eax,eax
 0040851F    mov         dword ptr [ebp-4],eax
 00408522    mov         eax,dword ptr [ebp-4]
 00408525    pop         ecx
 00408526    pop         ecx
 00408527    pop         ebp
 00408528    ret
end;*}

//0040852C
{*function sub_0040852C:?;
begin
 0040852C    push        edx
 0040852D    push        eax
 0040852E    call        kernel32.GlobalAlloc
 00408533    push        eax
 00408534    call        kernel32.GlobalLock
 00408539    ret
end;*}

//0040853C
{*function sub_0040853C:?;
begin
 0040853C    push        ecx
 0040853D    push        edx
 0040853E    push        eax
 0040853F    call        kernel32.GlobalHandle
 00408544    push        eax
 00408545    push        eax
 00408546    call        kernel32.GlobalUnlock
 0040854B    call        kernel32.GlobalReAlloc
 00408550    push        eax
 00408551    call        kernel32.GlobalLock
 00408556    ret
end;*}

//00408558
procedure sub_00408558;
begin
{*
 00408558    push        eax
 00408559    call        kernel32.GlobalHandle
 0040855E    push        eax
 0040855F    push        eax
 00408560    call        kernel32.GlobalUnlock
 00408565    call        kernel32.GlobalFree
 0040856A    ret
*}
end;

//0040856C
{*function sub_0040856C(?:?; ?:?):?;
begin
 0040856C    push        ebp
 0040856D    mov         ebp,esp
 0040856F    add         esp,0FFFFFFF4
 00408572    mov         dword ptr [ebp-8],edx
 00408575    mov         dword ptr [ebp-4],eax
 00408578    mov         eax,dword ptr [ebp-8]
 0040857B    shl         eax,8
 0040857E    and         eax,0FF000000
 00408583    or          eax,dword ptr [ebp-4]
 00408586    mov         dword ptr [ebp-0C],eax
 00408589    mov         eax,dword ptr [ebp-0C]
 0040858C    mov         esp,ebp
 0040858E    pop         ebp
 0040858F    ret
end;*}

//00408590
{*function sub_00408590(?:?; ?:?; ?:Integer):?;
begin
 00408590    push        ebp
 00408591    mov         ebp,esp
 00408593    add         esp,0FFFFFFF8
 00408596    mov         byte ptr [ebp-3],cl
 00408599    mov         byte ptr [ebp-2],dl
 0040859C    mov         byte ptr [ebp-1],al
 0040859F    xor         eax,eax
 004085A1    mov         al,byte ptr [ebp-1]
 004085A4    xor         edx,edx
 004085A6    mov         dl,byte ptr [ebp-2]
 004085A9    shl         edx,8
 004085AC    or          eax,edx
 004085AE    xor         edx,edx
 004085B0    mov         dl,byte ptr [ebp-3]
 004085B3    shl         edx,10
 004085B6    or          eax,edx
 004085B8    mov         dword ptr [ebp-8],eax
 004085BB    mov         eax,dword ptr [ebp-8]
 004085BE    pop         ecx
 004085BF    pop         ecx
 004085C0    pop         ebp
 004085C1    ret
end;*}

//004085C4
{*function sub_004085C4(?:?; ?:?; ?:?):?;
begin
 004085C4    push        ebp
 004085C5    mov         ebp,esp
 004085C7    add         esp,0FFFFFFF8
 004085CA    mov         byte ptr [ebp-3],cl
 004085CD    mov         byte ptr [ebp-2],dl
 004085D0    mov         byte ptr [ebp-1],al
 004085D3    mov         cl,byte ptr [ebp-3]
 004085D6    mov         dl,byte ptr [ebp-2]
 004085D9    mov         al,byte ptr [ebp-1]
 004085DC    call        00408590
 004085E1    or          eax,2000000
 004085E6    mov         dword ptr [ebp-8],eax
 004085E9    mov         eax,dword ptr [ebp-8]
 004085EC    pop         ecx
 004085ED    pop         ecx
 004085EE    pop         ebp
 004085EF    ret
end;*}

//004085F0
{*function sub_004085F0(?:Longint):?;
begin
 004085F0    push        ebp
 004085F1    mov         ebp,esp
 004085F3    add         esp,0FFFFFFF8
 004085F6    mov         dword ptr [ebp-4],eax
 004085F9    mov         al,byte ptr [ebp-4]
 004085FC    mov         byte ptr [ebp-5],al
 004085FF    mov         al,byte ptr [ebp-5]
 00408602    pop         ecx
 00408603    pop         ecx
 00408604    pop         ebp
 00408605    ret
end;*}

//00408608
{*function sub_00408608(?:Longint):?;
begin
 00408608    push        ebp
 00408609    mov         ebp,esp
 0040860B    add         esp,0FFFFFFF8
 0040860E    mov         dword ptr [ebp-4],eax
 00408611    mov         eax,dword ptr [ebp-4]
 00408614    shr         eax,8
 00408617    mov         byte ptr [ebp-5],al
 0040861A    mov         al,byte ptr [ebp-5]
 0040861D    pop         ecx
 0040861E    pop         ecx
 0040861F    pop         ebp
 00408620    ret
end;*}

//00408624
{*function sub_00408624(?:Longint):?;
begin
 00408624    push        ebp
 00408625    mov         ebp,esp
 00408627    add         esp,0FFFFFFF8
 0040862A    mov         dword ptr [ebp-4],eax
 0040862D    mov         eax,dword ptr [ebp-4]
 00408630    shr         eax,10
 00408633    mov         byte ptr [ebp-5],al
 00408636    mov         al,byte ptr [ebp-5]
 00408639    pop         ecx
 0040863A    pop         ecx
 0040863B    pop         ebp
 0040863C    ret
end;*}

//00408640
{*procedure sub_00408640(?:?; ?:TPoint);
begin
 00408640    push        ebp
 00408641    mov         ebp,esp
 00408643    add         esp,0FFFFFFF8
 00408646    mov         dword ptr [ebp-8],edx
 00408649    mov         dword ptr [ebp-4],eax
 0040864C    movsx       eax,word ptr [ebp-4]
 00408650    mov         edx,dword ptr [ebp-8]
 00408653    mov         dword ptr [edx],eax
 00408655    movsx       eax,word ptr [ebp-2]
 00408659    mov         edx,dword ptr [ebp-8]
 0040865C    mov         dword ptr [edx+4],eax
 0040865F    pop         ecx
 00408660    pop         ecx
 00408661    pop         ebp
 00408662    ret
end;*}

//00408664
{*function sub_00408664(?:TPoint):?;
begin
 00408664    push        ebp
 00408665    mov         ebp,esp
 00408667    add         esp,0FFFFFFF8
 0040866A    mov         dword ptr [ebp-4],eax
 0040866D    mov         eax,dword ptr [ebp-4]
 00408670    mov         ax,word ptr [eax]
 00408673    mov         word ptr [ebp-8],ax
 00408677    mov         eax,dword ptr [ebp-4]
 0040867A    mov         ax,word ptr [eax+4]
 0040867E    mov         word ptr [ebp-6],ax
 00408682    mov         eax,dword ptr [ebp-8]
 00408685    pop         ecx
 00408686    pop         ecx
 00408687    pop         ebp
 00408688    ret
end;*}

//0040868C
{*function sub_0040868C(?:?; ?:?):?;
begin
 0040868C    push        ebp
 0040868D    mov         ebp,esp
 0040868F    add         esp,0FFFFFFF8
 00408692    mov         word ptr [ebp-4],dx
 00408696    mov         word ptr [ebp-2],ax
 0040869A    mov         dx,word ptr [ebp-4]
 0040869E    mov         ax,word ptr [ebp-2]
 004086A2    call        0040845C
 004086A7    mov         dword ptr [ebp-8],eax
 004086AA    mov         eax,dword ptr [ebp-8]
 004086AD    pop         ecx
 004086AE    pop         ecx
 004086AF    pop         ebp
 004086B0    ret
end;*}

//004086B4
{*function sub_004086B4(?:Integer; ?:Longint):?;
begin
 004086B4    push        ebp
 004086B5    mov         ebp,esp
 004086B7    add         esp,0FFFFFFF8
 004086BA    mov         word ptr [ebp-4],dx
 004086BE    mov         word ptr [ebp-2],ax
 004086C2    mov         dx,word ptr [ebp-4]
 004086C6    mov         ax,word ptr [ebp-2]
 004086CA    call        0040845C
 004086CF    mov         dword ptr [ebp-8],eax
 004086D2    mov         eax,dword ptr [ebp-8]
 004086D5    pop         ecx
 004086D6    pop         ecx
 004086D7    pop         ebp
 004086D8    ret
end;*}

//004086DC
function user32.CreateWindowExA(dwExStyle:DWORD; lpClassName:PAnsiChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:DWORD):HWND;
begin
{*
 004086DC    jmp         dword ptr ds:[61C3F8]
*}
end;

//004086E4
{*function sub_004086E4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004086E4    push        ebp
 004086E5    mov         ebp,esp
 004086E7    add         esp,0FFFFFFEC
 004086EA    mov         dword ptr [ebp-0C],ecx
 004086ED    mov         dword ptr [ebp-8],edx
 004086F0    mov         dword ptr [ebp-4],eax
 004086F3    call        00403294
 004086F8    mov         word ptr [ebp-12],ax
 004086FC    mov         eax,dword ptr [ebp+8]
 004086FF    push        eax
 00408700    mov         eax,dword ptr [ebp+0C]
 00408703    push        eax
 00408704    mov         eax,dword ptr [ebp+10]
 00408707    push        eax
 00408708    mov         eax,dword ptr [ebp+14]
 0040870B    push        eax
 0040870C    mov         eax,dword ptr [ebp+18]
 0040870F    push        eax
 00408710    mov         eax,dword ptr [ebp+1C]
 00408713    push        eax
 00408714    mov         eax,dword ptr [ebp+20]
 00408717    push        eax
 00408718    mov         eax,dword ptr [ebp+24]
 0040871B    push        eax
 0040871C    mov         eax,dword ptr [ebp+28]
 0040871F    push        eax
 00408720    mov         eax,dword ptr [ebp-0C]
 00408723    push        eax
 00408724    mov         eax,dword ptr [ebp-8]
 00408727    push        eax
 00408728    mov         eax,dword ptr [ebp-4]
 0040872B    push        eax
 0040872C    call        user32.CreateWindowExA
 00408731    mov         dword ptr [ebp-10],eax
 00408734    mov         ax,word ptr [ebp-12]
 00408738    call        Set8087CW
 0040873D    mov         eax,dword ptr [ebp-10]
 00408740    mov         esp,ebp
 00408742    pop         ebp
 00408743    ret         24
end;*}

//00408748
{*function sub_00408748(?:?; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00408748    push        ebp
 00408749    mov         ebp,esp
 0040874B    add         esp,0FFFFFFEC
 0040874E    mov         dword ptr [ebp-0C],ecx
 00408751    mov         dword ptr [ebp-8],edx
 00408754    mov         dword ptr [ebp-4],eax
 00408757    call        00403294
 0040875C    mov         word ptr [ebp-12],ax
 00408760    mov         eax,dword ptr [ebp+8]
 00408763    push        eax
 00408764    mov         eax,dword ptr [ebp+0C]
 00408767    push        eax
 00408768    mov         eax,dword ptr [ebp+10]
 0040876B    push        eax
 0040876C    mov         eax,dword ptr [ebp+14]
 0040876F    push        eax
 00408770    mov         eax,dword ptr [ebp+18]
 00408773    push        eax
 00408774    mov         eax,dword ptr [ebp+1C]
 00408777    push        eax
 00408778    mov         eax,dword ptr [ebp+20]
 0040877B    push        eax
 0040877C    mov         eax,dword ptr [ebp+24]
 0040877F    push        eax
 00408780    mov         eax,dword ptr [ebp-0C]
 00408783    push        eax
 00408784    mov         eax,dword ptr [ebp-8]
 00408787    push        eax
 00408788    mov         eax,dword ptr [ebp-4]
 0040878B    push        eax
 0040878C    push        0
 0040878E    call        user32.CreateWindowExA
 00408793    mov         dword ptr [ebp-10],eax
 00408796    mov         ax,word ptr [ebp-12]
 0040879A    call        Set8087CW
 0040879F    mov         eax,dword ptr [ebp-10]
 004087A2    mov         esp,ebp
 004087A4    pop         ebp
 004087A5    ret         20
end;*}

//004087A8
{*function sub_004087A8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004087A8    push        ebp
 004087A9    mov         ebp,esp
 004087AB    add         esp,0FFFFFFF0
 004087AE    mov         dword ptr [ebp-0C],ecx
 004087B1    mov         dword ptr [ebp-8],edx
 004087B4    mov         dword ptr [ebp-4],eax
 004087B7    push        408860;'Magellan MSWHEEL'
 004087BC    push        408874;'MouseZ'
 004087C1    call        user32.FindWindowA
 004087C6    mov         dword ptr [ebp-10],eax
 004087C9    push        40887C;'MSWHEEL_ROLLMSG'
 004087CE    call        user32.RegisterClipboardFormatA
 004087D3    mov         edx,dword ptr [ebp-4]
 004087D6    mov         dword ptr [edx],eax
 004087D8    push        40888C;'MSH_WHEELSUPPORT_MSG'
 004087DD    call        user32.RegisterClipboardFormatA
 004087E2    mov         edx,dword ptr [ebp-8]
 004087E5    mov         dword ptr [edx],eax
 004087E7    push        4088A4;'MSH_SCROLL_LINES_MSG'
 004087EC    call        user32.RegisterClipboardFormatA
 004087F1    mov         edx,dword ptr [ebp-0C]
 004087F4    mov         dword ptr [edx],eax
 004087F6    mov         eax,dword ptr [ebp-8]
 004087F9    cmp         dword ptr [eax],0
>004087FC    je          0040881E
 004087FE    cmp         dword ptr [ebp-10],0
>00408802    je          0040881E
 00408804    push        0
 00408806    push        0
 00408808    mov         eax,dword ptr [ebp-8]
 0040880B    mov         eax,dword ptr [eax]
 0040880D    push        eax
 0040880E    mov         eax,dword ptr [ebp-10]
 00408811    push        eax
 00408812    call        user32.SendMessageA
 00408817    mov         edx,dword ptr [ebp+0C]
 0040881A    mov         dword ptr [edx],eax
>0040881C    jmp         00408825
 0040881E    mov         eax,dword ptr [ebp+0C]
 00408821    xor         edx,edx
 00408823    mov         dword ptr [eax],edx
 00408825    mov         eax,dword ptr [ebp-0C]
 00408828    cmp         dword ptr [eax],0
>0040882B    je          0040884D
 0040882D    cmp         dword ptr [ebp-10],0
>00408831    je          0040884D
 00408833    push        0
 00408835    push        0
 00408837    mov         eax,dword ptr [ebp-0C]
 0040883A    mov         eax,dword ptr [eax]
 0040883C    push        eax
 0040883D    mov         eax,dword ptr [ebp-10]
 00408840    push        eax
 00408841    call        user32.SendMessageA
 00408846    mov         edx,dword ptr [ebp+8]
 00408849    mov         dword ptr [edx],eax
>0040884B    jmp         00408856
 0040884D    mov         eax,dword ptr [ebp+8]
 00408850    mov         dword ptr [eax],3
 00408856    mov         eax,dword ptr [ebp-10]
 00408859    mov         esp,ebp
 0040885B    pop         ebp
 0040885C    ret         8
end;*}

end.