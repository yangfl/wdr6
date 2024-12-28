//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit50;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0044A8CC
{*
 0044A8CC    push        ebp
 0044A8CD    mov         ebp,esp
 0044A8CF    sub         dword ptr ds:[571D2C],1
 0044A8D6    pop         ebp
 0044A8D7    ret
*}
Finalization
//0044A87C
{*
 0044A87C    push        ebp
 0044A87D    mov         ebp,esp
 0044A87F    xor         eax,eax
 0044A881    push        ebp
 0044A882    push        44A8C0
 0044A887    push        dword ptr fs:[eax]
 0044A88A    mov         dword ptr fs:[eax],esp
 0044A88D    inc         dword ptr ds:[571D2C]
>0044A893    jne         0044A8B2
 0044A895    cmp         byte ptr ds:[571D34],0;gvar_00571D34
>0044A89C    je          0044A8B2
 0044A89E    cmp         dword ptr ds:[571D30],0;gvar_00571D30
>0044A8A5    je          0044A8B2
 0044A8A7    mov         eax,[00571D30];0x0 gvar_00571D30
 0044A8AC    push        eax
 0044A8AD    call        kernel32.FreeLibrary
 0044A8B2    xor         eax,eax
 0044A8B4    pop         edx
 0044A8B5    pop         ecx
 0044A8B6    pop         ecx
 0044A8B7    mov         dword ptr fs:[eax],edx
 0044A8BA    push        44A8C7
 0044A8BF    ret
>0044A8C0    jmp         @HandleFinally
>0044A8C5    jmp         0044A8BF
 0044A8C7    pop         ebp
 0044A8C8    ret
*}
end.