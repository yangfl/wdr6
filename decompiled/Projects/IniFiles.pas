//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit IniFiles;

interface

uses
  SysUtils, Classes;


implementation

Initialization
Finalization
//0044A7BC
{*
 0044A7BC    push        ebp
 0044A7BD    mov         ebp,esp
 0044A7BF    xor         eax,eax
 0044A7C1    push        ebp
 0044A7C2    push        44A7F8
 0044A7C7    push        dword ptr fs:[eax]
 0044A7CA    mov         dword ptr fs:[eax],esp
 0044A7CD    inc         dword ptr ds:[571D24]
>0044A7D3    jne         0044A7EA
 0044A7D5    mov         eax,56C39C
 0044A7DA    mov         ecx,2
 0044A7DF    mov         edx,dword ptr ds:[4010C0];String
 0044A7E5    call        @FinalizeArray
 0044A7EA    xor         eax,eax
 0044A7EC    pop         edx
 0044A7ED    pop         ecx
 0044A7EE    pop         ecx
 0044A7EF    mov         dword ptr fs:[eax],edx
 0044A7F2    push        44A7FF
 0044A7F7    ret
>0044A7F8    jmp         @HandleFinally
>0044A7FD    jmp         0044A7F7
 0044A7FF    pop         ebp
 0044A800    ret
*}
end.