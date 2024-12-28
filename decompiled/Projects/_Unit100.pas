//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit100;

interface

uses
  SysUtils, Classes;

    //procedure sub_00513258(?:?);//00513258
    //function sub_0051325C(?:?):?;//0051325C
    //function sub_00513268(?:?):?;//00513268
    //function sub_00513274(?:?; ?:Int64):?;//00513274
    //function sub_0051327C(?:?; ?:?):?;//0051327C
    //procedure sub_0051328C(?:?; ?:?);//0051328C
    //procedure sub_005132A4(?:?; ?:?; ?:?);//005132A4

implementation

//00513258
{*procedure sub_00513258(?:?);
begin
 00513258    sar         eax,10
 0051325B    ret
end;*}

//0051325C
{*function sub_0051325C(?:?):?;
begin
 0051325C    add         eax,0FFFF
 00513261    sar         eax,10
 00513264    ret
end;*}

//00513268
{*function sub_00513268(?:?):?;
begin
 00513268    add         eax,7FFF
 0051326D    sar         eax,10
 00513270    ret
end;*}

//00513274
{*function sub_00513274(?:?; ?:Int64):?;
begin
 00513274    imul        edx
 00513276    shrd        eax,edx,10
 0051327A    ret
end;*}

//0051327C
{*function sub_0051327C(?:?; ?:?):?;
begin
 0051327C    mov         ecx,edx
 0051327E    cdq
 0051327F    shld        edx,eax,10
 00513283    shl         eax,10
 00513286    idiv        eax,ecx
 00513288    ret
end;*}

//0051328C
{*procedure sub_0051328C(?:?; ?:?);
begin
 0051328C    push        ebp
 0051328D    mov         ebp,esp
 0051328F    fld         dword ptr [ebp+0C]
 00513292    fmul        st,st(0)
 00513294    fld         dword ptr [ebp+8]
 00513297    fmul        st,st(0)
 00513299    faddp       st(1),st
 0051329B    fsqrt
 0051329D    wait
 0051329E    pop         ebp
 0051329F    ret         8
end;*}

//005132A4
{*procedure sub_005132A4(?:?; ?:?; ?:?);
begin
 005132A4    push        ebx
 005132A5    push        esi
 005132A6    mov         ebx,eax
 005132A8    xor         ebx,edx
 005132AA    xor         ebx,ecx
 005132AC    or          eax,eax
>005132AE    jns         005132B2
 005132B0    neg         eax
 005132B2    or          edx,edx
>005132B4    jns         005132B8
 005132B6    neg         edx
 005132B8    or          ecx,ecx
>005132BA    jns         005132BE
 005132BC    neg         ecx
 005132BE    mul         eax,edx
 005132C0    mov         esi,edx
 005132C2    shl         esi,1
 005132C4    cmp         esi,ecx
>005132C6    jae         005132DA
 005132C8    div         eax,ecx
 005132CA    sub         ecx,edx
 005132CC    cmp         ecx,edx
>005132CE    ja          005132D1
 005132D0    inc         eax
 005132D1    or          ebx,edx
>005132D3    jns         005132DD
 005132D5    neg         eax
 005132D7    pop         esi
 005132D8    pop         ebx
 005132D9    ret
 005132DA    or          eax,0FFFFFFFF
 005132DD    pop         esi
 005132DE    pop         ebx
 005132DF    ret
end;*}

end.