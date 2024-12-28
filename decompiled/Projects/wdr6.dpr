//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
program wdr6;

uses
  SysUtils, Classes;

{$R *.res}

//0056A3BC
begin
{*
 0056A3BC    push        ebp
 0056A3BD    mov         ebp,esp
 0056A3BF    add         esp,0FFFFFFF0
 0056A3C2    mov         eax,569F54
 0056A3C7    call        @InitExe
 0056A3CC    mov         eax,[0056E3C0];^Application:TApplication
 0056A3D1    mov         eax,dword ptr [eax]
 0056A3D3    call        004AB688
 0056A3D8    mov         ecx,dword ptr ds:[56E284];^gvar_0056DF34
 0056A3DE    mov         eax,[0056E3C0];^Application:TApplication
 0056A3E3    mov         eax,dword ptr [eax]
 0056A3E5    mov         edx,dword ptr ds:[567334];TfmMain
 0056A3EB    call        004AB6A8
 0056A3F0    mov         eax,[0056E3C0];^Application:TApplication
 0056A3F5    mov         eax,dword ptr [eax]
 0056A3F7    call        004AB73C
 0056A3FC    call        @Halt0
*}
end.
