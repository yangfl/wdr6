//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit99;

interface

uses
  SysUtils, Classes;

    //function sub_00512FD8(?:?):?;//00512FD8
    //procedure sub_00512FEC(?:?; ?:?; ?:?);//00512FEC
    procedure sub_00513030(?:Integer; ?:Integer; ?:Integer);//00513030
    //procedure sub_00513044(?:?; ?:?);//00513044
    //procedure sub_0051304C(?:?; ?:?);//0051304C
    //function sub_00513058(?:?; ?:?; ?:?; ?:?):?;//00513058
    //function sub_005130B0(?:Single; ?:?; ?:?):?;//005130B0
    //function sub_005130BC(?:?; ?:?; ?:?):?;//005130BC
    //function sub_00513104(?:?; ?:?):?;//00513104
    //function sub_00513118(?:?; ?:?; ?:?):?;//00513118
    //function sub_005131F0(?:?):?;//005131F0
    //function sub_005131F4(?:?):?;//005131F4
    procedure sub_005131F8;//005131F8

implementation

//00512FD8
{*function sub_00512FD8(?:?):?;
begin
 00512FD8    test        eax,0FFFFFF00
>00512FDD    jne         00512FE0
 00512FDF    ret
>00512FE0    js          00512FE8
 00512FE2    mov         eax,0FF
 00512FE7    ret
 00512FE8    xor         eax,eax
 00512FEA    ret
end;*}

//00512FEC
{*procedure sub_00512FEC(?:?; ?:?; ?:?);
begin
 00512FEC    push        edi
 00512FED    mov         edi,eax
 00512FEF    mov         eax,ecx
 00512FF1    mov         ecx,edx
 00512FF3    test        ecx,ecx
>00512FF5    js          00512FF9
 00512FF7    rep stos    dword ptr [edi]
 00512FF9    pop         edi
 00512FFA    ret
end;*}

//00513030
procedure sub_00513030(?:Integer; ?:Integer; ?:Integer);
begin
{*
 00513030    push        esi
 00513031    push        edi
 00513032    mov         esi,eax
 00513034    mov         edi,edx
 00513036    mov         eax,ecx
 00513038    cmp         edi,esi
>0051303A    je          0051303E
 0051303C    rep movs    dword ptr [edi],dword ptr [esi]
 0051303E    pop         edi
 0051303F    pop         esi
 00513040    ret
*}
end;

//00513044
{*procedure sub_00513044(?:?; ?:?);
begin
 00513044    mov         ecx,dword ptr [eax]
 00513046    xchg        ecx,dword ptr [edx]
 00513048    mov         dword ptr [eax],ecx
 0051304A    ret
end;*}

//0051304C
{*procedure sub_0051304C(?:?; ?:?);
begin
 0051304C    mov         ecx,dword ptr [eax]
 0051304E    cmp         ecx,dword ptr [edx]
>00513050    jle         00513056
 00513052    xchg        ecx,dword ptr [edx]
 00513054    mov         dword ptr [eax],ecx
 00513056    ret
end;*}

//00513058
{*function sub_00513058(?:?; ?:?; ?:?; ?:?):?;
begin
 00513058    push        ebp
 00513059    mov         ebp,esp
 0051305B    add         esp,0FFFFFFF0
 0051305E    mov         dword ptr [ebp-0C],ecx
 00513061    mov         dword ptr [ebp-8],edx
 00513064    mov         dword ptr [ebp-4],eax
 00513067    mov         edx,dword ptr [ebp-8]
 0051306A    mov         eax,dword ptr [ebp-4]
 0051306D    call        0051304C
 00513072    mov         eax,dword ptr [ebp-4]
 00513075    mov         eax,dword ptr [eax]
 00513077    cmp         eax,dword ptr [ebp-0C]
>0051307A    jge         00513084
 0051307C    mov         eax,dword ptr [ebp-4]
 0051307F    mov         edx,dword ptr [ebp-0C]
 00513082    mov         dword ptr [eax],edx
 00513084    mov         eax,dword ptr [ebp-8]
 00513087    mov         eax,dword ptr [eax]
 00513089    cmp         eax,dword ptr [ebp+8]
>0051308C    jl          00513097
 0051308E    mov         eax,dword ptr [ebp+8]
 00513091    dec         eax
 00513092    mov         edx,dword ptr [ebp-8]
 00513095    mov         dword ptr [edx],eax
 00513097    mov         eax,dword ptr [ebp-8]
 0051309A    mov         eax,dword ptr [eax]
 0051309C    mov         edx,dword ptr [ebp-4]
 0051309F    cmp         eax,dword ptr [edx]
 005130A1    setge       byte ptr [ebp-0D]
 005130A5    mov         al,byte ptr [ebp-0D]
 005130A8    mov         esp,ebp
 005130AA    pop         ebp
 005130AB    ret         4
end;*}

//005130B0
{*function sub_005130B0(?:Single; ?:?; ?:?):?;
begin
 005130B0    cmp         edx,eax
 005130B2    cmovg       eax,edx
 005130B5    cmp         ecx,eax
 005130B7    cmovl       eax,ecx
 005130BA    ret
end;*}

//005130BC
{*function sub_005130BC(?:?; ?:?; ?:?):?;
begin
 005130BC    push        ebp
 005130BD    mov         ebp,esp
 005130BF    add         esp,0FFFFFFF0
 005130C2    mov         dword ptr [ebp-0C],ecx
 005130C5    mov         dword ptr [ebp-8],edx
 005130C8    mov         dword ptr [ebp-4],eax
 005130CB    lea         edx,[ebp-0C]
 005130CE    lea         eax,[ebp-8]
 005130D1    call        0051304C
 005130D6    mov         eax,dword ptr [ebp-4]
 005130D9    cmp         eax,dword ptr [ebp-8]
>005130DC    jge         005130E6
 005130DE    mov         eax,dword ptr [ebp-8]
 005130E1    mov         dword ptr [ebp-10],eax
>005130E4    jmp         005130FC
 005130E6    mov         eax,dword ptr [ebp-4]
 005130E9    cmp         eax,dword ptr [ebp-0C]
>005130EC    jle         005130F6
 005130EE    mov         eax,dword ptr [ebp-0C]
 005130F1    mov         dword ptr [ebp-10],eax
>005130F4    jmp         005130FC
 005130F6    mov         eax,dword ptr [ebp-4]
 005130F9    mov         dword ptr [ebp-10],eax
 005130FC    mov         eax,dword ptr [ebp-10]
 005130FF    mov         esp,ebp
 00513101    pop         ebp
 00513102    ret
end;*}

//00513104
{*function sub_00513104(?:?; ?:?):?;
begin
 00513104    cmp         eax,edx
>00513106    jg          0051310D
 00513108    test        eax,eax
>0051310A    jl          00513110
 0051310C    ret
 0051310D    mov         eax,edx
 0051310F    ret
 00513110    mov         eax,0
 00513115    ret
end;*}

//00513118
{*function sub_00513118(?:?; ?:?; ?:?):?;
begin
 00513118    cmp         edx,eax
 0051311A    cmovg       eax,edx
 0051311D    cmp         ecx,eax
 0051311F    cmovl       eax,ecx
 00513122    ret
end;*}

//005131F0
{*function sub_005131F0(?:?):?;
begin
 005131F0    sar         eax,8
 005131F3    ret
end;*}

//005131F4
{*function sub_005131F4(?:?):?;
begin
 005131F4    sar         eax,9
 005131F7    ret
end;*}

//005131F8
procedure sub_005131F8;
begin
{*
 005131F8    call        00512A54
 005131FD    test        al,al
>005131FF    je          0051320C
 00513201    mov         dword ptr ds:[5779AC],512FFC
 0051320B    ret
 0051320C    mov         dword ptr ds:[5779AC],512FEC
 00513216    ret
*}
end;

Initialization
//00513248
{*
 00513248    sub         dword ptr ds:[5779B0],1
>0051324F    jae         00513256
 00513251    call        005131F8
 00513256    ret
*}
Finalization
end.