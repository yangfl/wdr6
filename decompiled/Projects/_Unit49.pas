//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit49;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0044A870
{*
 0044A870    push        ebp
 0044A871    mov         ebp,esp
 0044A873    sub         dword ptr ds:[571D28],1
 0044A87A    pop         ebp
 0044A87B    ret
*}
Finalization
//0044A820
{*
 0044A820    push        ebp
 0044A821    mov         ebp,esp
 0044A823    xor         eax,eax
 0044A825    push        ebp
 0044A826    push        44A865
 0044A82B    push        dword ptr fs:[eax]
 0044A82E    mov         dword ptr fs:[eax],esp
 0044A831    inc         dword ptr ds:[571D28]
>0044A837    jne         0044A857
 0044A839    cmp         dword ptr ds:[56C3A8],0;gvar_0056C3A8
>0044A840    je          0044A84D
 0044A842    mov         eax,[0056C3A8];0x0 gvar_0056C3A8
 0044A847    push        eax
 0044A848    call        kernel32.FreeLibrary
 0044A84D    mov         eax,56C3A4;^'MAPI32.DLL'
 0044A852    call        @LStrClr
 0044A857    xor         eax,eax
 0044A859    pop         edx
 0044A85A    pop         ecx
 0044A85B    pop         ecx
 0044A85C    mov         dword ptr fs:[eax],edx
 0044A85F    push        44A86C
 0044A864    ret
>0044A865    jmp         @HandleFinally
>0044A86A    jmp         0044A864
 0044A86C    pop         ebp
 0044A86D    ret
*}
end.