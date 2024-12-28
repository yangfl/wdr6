//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit36;

interface

uses
  SysUtils, Classes;

    function GetOpenFileNameA:BOOL; stdcall;//0043D198
    function GetSaveFileNameA:BOOL; stdcall;//0043D1A0

implementation

//0043D198
function comdlg32.GetOpenFileNameA:BOOL; stdcall;
begin
{*
 0043D198    jmp         dword ptr ds:[61C818]
*}
end;

//0043D1A0
function comdlg32.GetSaveFileNameA:BOOL; stdcall;
begin
{*
 0043D1A0    jmp         dword ptr ds:[61C814]
*}
end;

end.