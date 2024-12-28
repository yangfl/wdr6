//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit63;

interface

uses
  SysUtils, Classes;

    function PlaySound(hmod:HMODULE; fdwSound:DWORD):BOOL; stdcall;//004AE938
    function sndPlaySoundA(uFlags:UINT):BOOL; stdcall;//004AE940

implementation

//004AE938
function winmm.PlaySound(hmod:HMODULE; fdwSound:DWORD):BOOL; stdcall;
begin
{*
 004AE938    jmp         dword ptr ds:[61C824]
*}
end;

//004AE940
function winmm.sndPlaySoundA(uFlags:UINT):BOOL; stdcall;
begin
{*
 004AE940    jmp         dword ptr ds:[61C820]
*}
end;

end.