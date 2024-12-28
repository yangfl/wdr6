//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit31;

interface

uses
  SysUtils, Classes;

    function SHBrowseForFolder:PItemIDList; stdcall;//0043D140
    function SHGetDesktopFolder:HRESULT; stdcall;//0043D148
    function SHGetMalloc:HRESULT; stdcall;//0043D150
    function SHGetPathFromIDList(pszPath:PChar):BOOL; stdcall;//0043D158

implementation

//0043D140
function shell32.SHBrowseForFolder:PItemIDList; stdcall;
begin
{*
 0043D140    jmp         dword ptr ds:[61C80C]
*}
end;

//0043D148
function shell32.SHGetDesktopFolder:HRESULT; stdcall;
begin
{*
 0043D148    jmp         dword ptr ds:[61C808]
*}
end;

//0043D150
function shell32.SHGetMalloc:HRESULT; stdcall;
begin
{*
 0043D150    jmp         dword ptr ds:[61C804]
*}
end;

//0043D158
function shell32.SHGetPathFromIDList(pszPath:PChar):BOOL; stdcall;
begin
{*
 0043D158    jmp         dword ptr ds:[61C800]
*}
end;

end.