//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit8;

interface

uses
  SysUtils, Classes;

type
  tagEXCEPINFO = tagEXCEPINFO = record//size=20
f4:WideString;//f4
f8:WideString;//f8
fC:WideString;//fC
end;;
    function CoInitialize:HRESULT; stdcall;//0041CC54
    procedure CoUninitialize;//0041CC5C
    function CoLockObjectExternal(fLock:BOOL; fLastUnlockReleases:BOOL):HRESULT; stdcall;//0041CC64
    function CoCreateInstance(unkOuter:IUnknown; dwClsContext:Longint; const iid:TGUID; var pv:void ):HRESULT; stdcall;//0041CC6C
    function CoTaskMemAlloc:Pointer; stdcall;//0041CC74
    function OleInitialize:HRESULT; stdcall;//0041CC7C
    procedure OleUninitialize;//0041CC84
    function RegisterDragDrop(dropTarget:IDropTarget):HRESULT; stdcall;//0041CC8C
    function RevokeDragDrop:HRESULT; stdcall;//0041CC94
    function DoDragDrop(dropSource:IDropSource; dwOKEffects:Longint; var dwEffect:Longint):HRESULT; stdcall;//0041CC9C
    function OleSetClipboard:HRESULT; stdcall;//0041CCA4
    function OleGetClipboard:HRESULT; stdcall;//0041CCAC
    function OleFlushClipboard:HRESULT;//0041CCB4
    function OleIsCurrentClipboard:HRESULT; stdcall;//0041CCBC
    procedure ReleaseStgMedium; stdcall;//0041CCC4
    procedure SysFreeString; stdcall;//0041CCCC
    function GetErrorInfo(var errinfo:IErrorInfo):HRESULT; stdcall;//0041CCD4
    //function sub_0041CCDC(?:HRESULT):?;//0041CCDC

implementation

//0041CC54
function ole32.CoInitialize:HRESULT; stdcall;
begin
{*
 0041CC54    jmp         dword ptr ds:[61C76C]
*}
end;

//0041CC5C
procedure ole32.CoUninitialize;
begin
{*
 0041CC5C    jmp         dword ptr ds:[61C768]
*}
end;

//0041CC64
function ole32.CoLockObjectExternal(fLock:BOOL; fLastUnlockReleases:BOOL):HRESULT; stdcall;
begin
{*
 0041CC64    jmp         dword ptr ds:[61C764]
*}
end;

//0041CC6C
function ole32.CoCreateInstance(unkOuter:IUnknown; dwClsContext:Longint; const iid:TGUID; var pv:void ):HRESULT; stdcall;
begin
{*
 0041CC6C    jmp         dword ptr ds:[61C760]
*}
end;

//0041CC74
function ole32.CoTaskMemAlloc:Pointer; stdcall;
begin
{*
 0041CC74    jmp         dword ptr ds:[61C75C]
*}
end;

//0041CC7C
function ole32.OleInitialize:HRESULT; stdcall;
begin
{*
 0041CC7C    jmp         dword ptr ds:[61C758]
*}
end;

//0041CC84
procedure ole32.OleUninitialize;
begin
{*
 0041CC84    jmp         dword ptr ds:[61C754]
*}
end;

//0041CC8C
function ole32.RegisterDragDrop(dropTarget:IDropTarget):HRESULT; stdcall;
begin
{*
 0041CC8C    jmp         dword ptr ds:[61C750]
*}
end;

//0041CC94
function ole32.RevokeDragDrop:HRESULT; stdcall;
begin
{*
 0041CC94    jmp         dword ptr ds:[61C74C]
*}
end;

//0041CC9C
function ole32.DoDragDrop(dropSource:IDropSource; dwOKEffects:Longint; var dwEffect:Longint):HRESULT; stdcall;
begin
{*
 0041CC9C    jmp         dword ptr ds:[61C748]
*}
end;

//0041CCA4
function ole32.OleSetClipboard:HRESULT; stdcall;
begin
{*
 0041CCA4    jmp         dword ptr ds:[61C744]
*}
end;

//0041CCAC
function ole32.OleGetClipboard:HRESULT; stdcall;
begin
{*
 0041CCAC    jmp         dword ptr ds:[61C740]
*}
end;

//0041CCB4
function ole32.OleFlushClipboard:HRESULT;
begin
{*
 0041CCB4    jmp         dword ptr ds:[61C73C]
*}
end;

//0041CCBC
function ole32.OleIsCurrentClipboard:HRESULT; stdcall;
begin
{*
 0041CCBC    jmp         dword ptr ds:[61C738]
*}
end;

//0041CCC4
procedure ole32.ReleaseStgMedium; stdcall;
begin
{*
 0041CCC4    jmp         dword ptr ds:[61C734]
*}
end;

//0041CCCC
procedure oleaut32.SysFreeString; stdcall;
begin
{*
 0041CCCC    jmp         dword ptr ds:[61C778]
*}
end;

//0041CCD4
function oleaut32.GetErrorInfo(var errinfo:IErrorInfo):HRESULT; stdcall;
begin
{*
 0041CCD4    jmp         dword ptr ds:[61C774]
*}
end;

//0041CCDC
{*function sub_0041CCDC(?:HRESULT):?;
begin
 0041CCDC    push        ebp
 0041CCDD    mov         ebp,esp
 0041CCDF    add         esp,0FFFFFFF8
 0041CCE2    mov         dword ptr [ebp-4],eax
 0041CCE5    test        byte ptr [ebp-1],80
 0041CCE9    sete        byte ptr [ebp-5]
 0041CCED    mov         al,byte ptr [ebp-5]
 0041CCF0    pop         ecx
 0041CCF1    pop         ecx
 0041CCF2    pop         ebp
 0041CCF3    ret
end;*}

end.