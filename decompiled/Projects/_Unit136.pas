//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit136;

interface

uses
  SysUtils, Classes;

    procedure sub_00560C38;//00560C38

implementation

//00560C38
procedure sub_00560C38;
begin
{*
 00560C38    push        ebp
 00560C39    mov         ebp,esp
 00560C3B    push        ecx
 00560C3C    push        560D30;'setupapi.dll'
 00560C41    call        kernel32.LoadLibraryA
 00560C46    mov         dword ptr [ebp-4],eax
 00560C49    cmp         dword ptr [ebp-4],0
>00560C4D    je          00560D25
 00560C53    push        560D40;'SetupDiGetClassDevsA'
 00560C58    mov         eax,dword ptr [ebp-4]
 00560C5B    push        eax
 00560C5C    call        kernel32.GetProcAddress
 00560C61    mov         [0059F0C0],eax;gvar_0059F0C0:Pointer
 00560C66    push        560D58;'SetupDiDestroyDeviceInfoList'
 00560C6B    mov         eax,dword ptr [ebp-4]
 00560C6E    push        eax
 00560C6F    call        kernel32.GetProcAddress
 00560C74    mov         [0059F0C4],eax;gvar_0059F0C4:Pointer
 00560C79    push        560D78;'SetupDiEnumDeviceInfo'
 00560C7E    mov         eax,dword ptr [ebp-4]
 00560C81    push        eax
 00560C82    call        kernel32.GetProcAddress
 00560C87    mov         [0059F0C8],eax;gvar_0059F0C8:Pointer
 00560C8C    push        560D90;'SetupDiEnumDeviceInterfaces'
 00560C91    mov         eax,dword ptr [ebp-4]
 00560C94    push        eax
 00560C95    call        kernel32.GetProcAddress
 00560C9A    mov         [0059F0CC],eax;gvar_0059F0CC:Pointer
 00560C9F    push        560DAC;'SetupDiGetDeviceInterfaceDetailA'
 00560CA4    mov         eax,dword ptr [ebp-4]
 00560CA7    push        eax
 00560CA8    call        kernel32.GetProcAddress
 00560CAD    mov         [0059F0D0],eax;gvar_0059F0D0:Pointer
 00560CB2    push        560DD0;'SetupDiGetDeviceRegistryPropertyA'
 00560CB7    mov         eax,dword ptr [ebp-4]
 00560CBA    push        eax
 00560CBB    call        kernel32.GetProcAddress
 00560CC0    mov         [0059F0D4],eax;gvar_0059F0D4:Pointer
 00560CC5    push        560DF4;'SetupDiGetDeviceInterfaceAlias'
 00560CCA    mov         eax,dword ptr [ebp-4]
 00560CCD    push        eax
 00560CCE    call        kernel32.GetProcAddress
 00560CD3    mov         [0059F0D8],eax;gvar_0059F0D8:Pointer
 00560CD8    cmp         dword ptr ds:[59F0C0],0;gvar_0059F0C0:Pointer
>00560CDF    je          00560D17
 00560CE1    cmp         dword ptr ds:[59F0C4],0;gvar_0059F0C4:Pointer
>00560CE8    je          00560D17
 00560CEA    cmp         dword ptr ds:[59F0C8],0;gvar_0059F0C8:Pointer
>00560CF1    je          00560D17
 00560CF3    cmp         dword ptr ds:[59F0CC],0;gvar_0059F0CC:Pointer
>00560CFA    je          00560D17
 00560CFC    cmp         dword ptr ds:[59F0D0],0;gvar_0059F0D0:Pointer
>00560D03    je          00560D17
 00560D05    cmp         dword ptr ds:[59F0D4],0;gvar_0059F0D4:Pointer
>00560D0C    je          00560D17
 00560D0E    cmp         dword ptr ds:[59F0D8],0;gvar_0059F0D8:Pointer
>00560D15    jne         00560D1B
 00560D17    xor         eax,eax
>00560D19    jmp         00560D1D
 00560D1B    mov         al,1
 00560D1D    mov         [0059F0BC],al;gvar_0059F0BC
 00560D22    pop         ecx
 00560D23    pop         ebp
 00560D24    ret
 00560D25    mov         byte ptr ds:[59F0BC],0;gvar_0059F0BC
 00560D2C    pop         ecx
 00560D2D    pop         ebp
 00560D2E    ret
*}
end;

Initialization
//00560E44
{*
 00560E44    sub         dword ptr ds:[59F0DC],1
>00560E4B    jae         00560E52
 00560E4D    call        00560C38
 00560E52    ret
*}
Finalization
end.