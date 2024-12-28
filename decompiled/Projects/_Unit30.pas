//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit30;

interface

uses
  SysUtils, Classes;

    function DragQueryFile(FileIndex:UINT; FileName:PChar; cb:UINT):UINT; stdcall;//0043CFF0

implementation

//0043CFF0
function shell32.DragQueryFile(FileIndex:UINT; FileName:PChar; cb:UINT):UINT; stdcall;
begin
{*
 0043CFF0    jmp         dword ptr ds:[61C7F8]
*}
end;

end.