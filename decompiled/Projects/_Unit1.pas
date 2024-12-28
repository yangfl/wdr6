//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit1;

interface

uses
  SysUtils, Classes;

    function GetModuleHandleA:HMODULE; stdcall;//004073F8
    function LocalAlloc(size:Integer):Pointer; stdcall;//00407400
    function TlsGetValue:Pointer; stdcall;//00407408
    function TlsSetValue(lpTlsValue:Pointer):LongBool; stdcall;//00407410
    function AllocTlsBuffer(Size:Integer):Pointer;//00407418
    function GetTlsSize:Integer;//00407424
    procedure InitThreadTLS;//0040742C
    function @GetTls:Pointer;//00407470
    procedure InitializeModule;//004074B0
    procedure @InitExe;//004074BC

implementation

//004073F8
function kernel32.GetModuleHandleA:HMODULE; stdcall;
begin
{*
 004073F8    jmp         dword ptr ds:[61C0EC]
*}
end;

//00407400
function kernel32.LocalAlloc(size:Integer):Pointer; stdcall;
begin
{*
 00407400    jmp         dword ptr ds:[61C0E8]
*}
end;

//00407408
function kernel32.TlsGetValue:Pointer; stdcall;
begin
{*
 00407408    jmp         dword ptr ds:[61C0E4]
*}
end;

//00407410
function kernel32.TlsSetValue(lpTlsValue:Pointer):LongBool; stdcall;
begin
{*
 00407410    jmp         dword ptr ds:[61C0E0]
*}
end;

//00407418
function AllocTlsBuffer(Size:Integer):Pointer;
begin
{*
 00407418    push        eax
 00407419    push        40
 0040741B    call        kernel32.LocalAlloc
 00407420    ret
*}
end;

//00407424
function GetTlsSize:Integer;
begin
{*
 00407424    mov         eax,40
 00407429    ret
*}
end;

//0040742C
procedure InitThreadTLS;
begin
{*
 0040742C    push        ebx
 0040742D    call        GetTlsSize
 00407432    mov         ebx,eax
 00407434    test        ebx,ebx
>00407436    je          0040746E
 00407438    cmp         dword ptr ds:[56B0C0],0FFFFFFFF
>0040743F    jne         0040744B
 00407441    mov         eax,0E2
 00407446    call        @RunError
 0040744B    mov         eax,ebx
 0040744D    call        AllocTlsBuffer
 00407452    test        eax,eax
>00407454    jne         00407462
 00407456    mov         eax,0E2
 0040745B    call        @RunError
>00407460    jmp         0040746E
 00407462    push        eax
 00407463    mov         eax,[0056B0C0]
 00407468    push        eax
 00407469    call        kernel32.TlsSetValue
 0040746E    pop         ebx
 0040746F    ret
*}
end;

//00407470
function @GetTls:Pointer;
begin
{*
 00407470    mov         cl,byte ptr ds:[56F664];ModuleIsLib:Boolean
 00407476    mov         eax,[0056B0C0]
 0040747B    test        cl,cl
>0040747D    jne         004074A5
 0040747F    mov         edx,dword ptr fs:[2C]
 00407486    mov         eax,dword ptr [edx+eax*4]
 00407489    ret
 0040748A    call        InitThreadTLS
 0040748F    mov         eax,[0056B0C0]
 00407494    push        eax
 00407495    call        kernel32.TlsGetValue
 0040749A    test        eax,eax
>0040749C    je          0040749F
 0040749E    ret
 0040749F    mov         eax,[0056F670];tlsBuffer:Pointer
 004074A4    ret
 004074A5    push        eax
 004074A6    call        kernel32.TlsGetValue
 004074AB    test        eax,eax
>004074AD    je          0040748A
 004074AF    ret
*}
end;

//004074B0
procedure InitializeModule;
begin
{*
 004074B0    mov         eax,56B0C8
 004074B5    call        RegisterModule
 004074BA    ret
*}
end;

//004074BC
procedure @InitExe;
begin
{*
 004074BC    push        ebx
 004074BD    mov         ebx,eax
 004074BF    xor         eax,eax
 004074C1    mov         [0056B0C0],eax
 004074C6    push        0
 004074C8    call        kernel32.GetModuleHandleA
 004074CD    mov         [0056F668],eax;HInstance:LongWord
 004074D2    mov         eax,[0056F668];HInstance:LongWord
 004074D7    mov         [0056B0CC],eax
 004074DC    xor         eax,eax
 004074DE    mov         [0056B0D0],eax
 004074E3    xor         eax,eax
 004074E5    mov         [0056B0D4],eax
 004074EA    call        InitializeModule
 004074EF    mov         edx,56B0C8
 004074F4    mov         eax,ebx
 004074F6    call        @StartExe
 004074FB    pop         ebx
 004074FC    ret
*}
end;

end.