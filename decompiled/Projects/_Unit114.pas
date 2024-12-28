//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit114;

interface

uses
  SysUtils, Classes, ;

type
  TMicroTilesMap = class(TPointerMap)
  public
    //function v0(?:?; ?:?):?; virtual;//v0//00525048
  end;
  TMicroTilesRepaintOptimizer = class(TCustomRepaintOptimizer)
  public
    //f14:?;//f14
    f24:dword;//f24
    //f28:?;//f28
    f34:dword;//f34
    f38:dword;//f38
    //f58:?;//f58
    //f88:?;//f88
    f98:dword;//f98
    f9C:dword;//f9C
    //fA0:?;//fA0
    fB8:TList;//fB8
    fBC:TMicroTilesMap;//fBC
    fC0:byte;//fC0
    fC1:byte;//fC1
    fC2:byte;//fC2
    fC3:byte;//fC3
    fC4:TPerfTimer;//fC4
    fC8:dword;//fC8
    fD0:dword;//fD0
    fD4:dword;//fD4
    fD8:dword;//fD8
    fDC:dword;//fDC
    fE0:byte;//fE0
    fE1:byte;//fE1
    fE4:dword;//fE4
    fE8:dword;//fE8
    fF0:dword;//fF0
    fF4:dword;//fF4
    fF8:dword;//fF8
    destructor Destroy; virtual;//0052516C
    //procedure v4(?:?); virtual;//v4//00525724
    //procedure v8(?:?; ?:?; ?:?); virtual;//v8//00525304
    //constructor vC(?:?); virtual;//vC//005250B0
    //procedure v10(?:?); virtual;//v10//0052568C
    //procedure v14(?:?); virtual;//v14//005256E8
    procedure v20; virtual;//v20//005258B4
    procedure v24; virtual;//v24//005258D8
    procedure v28; virtual;//v28//00525500
    //function v2C:?; virtual;//v2C//0052557C
    procedure v30; virtual;//v30//0052596C
    //procedure v34(?:?; ?:?; ?:?); virtual;//v34//005251EC
    //procedure v38(?:?; ?:?); virtual;//v38//005252B4
    //procedure v3C(?:?; ?:?); virtual;//v3C//005254C0
  end;
  _DynArr_114_4 = array of ?;
//elSize = 10;
  _DynArr_114_5 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
    //function sub_005239D8(?:?; ?:?; ?:?; ?:?):?;//005239D8
    //procedure sub_00523A0C(?:?; ?:?);//00523A0C
    //procedure sub_00523AF8(?:?; ?:?);//00523AF8
    procedure sub_00523BA4(?:Pointer);//00523BA4
    //procedure sub_00523BCC(?:?);//00523BCC
    //procedure sub_00523BE4(?:?; ?:?);//00523BE4
    //procedure sub_00523C68(?:?; ?:?);//00523C68
    //procedure sub_00523CC0(?:?; ?:?);//00523CC0
    //procedure sub_00523D50(?:?; ?:?);//00523D50
    //procedure sub_00523E70(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00523E70
    //procedure sub_00524050(?:?; ?:?; ?:?);//00524050
    //procedure sub_00524548(?:?; ?:?);//00524548
    //procedure sub_005246FC(?:?; ?:?);//005246FC
    //procedure sub_00524870(?:?; ?:?; ?:?);//00524870
    //function sub_00524A24(?:?; ?:dword; ?:?):?;//00524A24
    //function sub_00524AA4(?:?; ?:?; ?:?; ?:?; ?:?):?;//00524AA4
    //function sub_00525000(?:TMicroTilesMap; ?:?):?;//00525000
    //function sub_00525048(?:?; ?:?):?;//00525048
    //function sub_0052508C(?:TMicroTilesMap; ?:Pointer):?;//0052508C
    //constructor sub_005250B0(?:?);//005250B0
    destructor Destroy;//0052516C
    //procedure sub_005251EC(?:?; ?:?; ?:?);//005251EC
    //procedure sub_0052522C(?:TMicroTilesRepaintOptimizer; ?:?; ?:?; ?:?; ?:?);//0052522C
    //procedure sub_005252B4(?:?; ?:?);//005252B4
    //procedure sub_00525304(?:?; ?:?; ?:?);//00525304
    procedure sub_00525468(?:TMicroTilesRepaintOptimizer);//00525468
    //procedure sub_005254C0(?:?; ?:?);//005254C0
    procedure sub_00525500;//00525500
    //function sub_0052557C:?;//0052557C
    procedure sub_005255A0(?:TMicroTilesRepaintOptimizer);//005255A0
    //procedure sub_0052568C(?:?);//0052568C
    //procedure sub_005256E8(?:?);//005256E8
    //procedure sub_00525724(?:?);//00525724
    procedure sub_00525888(?:TMicroTilesRepaintOptimizer);//00525888
    procedure sub_005258B4;//005258B4
    procedure sub_005258D8;//005258D8
    //procedure sub_005258F4(?:TMicroTilesRepaintOptimizer; ?:?; ?:Pointer);//005258F4
    procedure sub_0052596C;//0052596C
    procedure sub_00525AC8(?:TMicroTilesRepaintOptimizer);//00525AC8
    procedure sub_00525B8C(?:TMicroTilesRepaintOptimizer);//00525B8C
    procedure sub_00525E14;//00525E14

implementation

//005239D8
{*function sub_005239D8(?:?; ?:?; ?:?; ?:?):?;
begin
 005239D8    push        ebp
 005239D9    mov         ebp,esp
 005239DB    add         esp,0FFFFFFF0
 005239DE    mov         dword ptr [ebp-0C],ecx
 005239E1    mov         dword ptr [ebp-8],edx
 005239E4    mov         dword ptr [ebp-4],eax
 005239E7    mov         eax,dword ptr [ebp-4]
 005239EA    shl         eax,18
 005239ED    mov         edx,dword ptr [ebp-8]
 005239F0    shl         edx,10
 005239F3    or          eax,edx
 005239F5    mov         edx,dword ptr [ebp-0C]
 005239F8    shl         edx,8
 005239FB    or          eax,edx
 005239FD    or          eax,dword ptr [ebp+8]
 00523A00    mov         dword ptr [ebp-10],eax
 00523A03    mov         eax,dword ptr [ebp-10]
 00523A06    mov         esp,ebp
 00523A08    pop         ebp
 00523A09    ret         4
end;*}

//00523A0C
{*procedure sub_00523A0C(?:?; ?:?);
begin
 00523A0C    push        ebp
 00523A0D    mov         ebp,esp
 00523A0F    add         esp,0FFFFFFE8
 00523A12    push        ebx
 00523A13    mov         dword ptr [ebp-8],edx
 00523A16    mov         dword ptr [ebp-4],eax
 00523A19    mov         eax,dword ptr [ebp-8]
 00523A1C    shr         eax,18
 00523A1F    mov         dword ptr [ebp-0C],eax
 00523A22    mov         eax,dword ptr [ebp-8]
 00523A25    and         eax,0FF0000
 00523A2A    shr         eax,10
 00523A2D    mov         dword ptr [ebp-10],eax
 00523A30    mov         eax,dword ptr [ebp-8]
 00523A33    and         eax,0FF00
 00523A38    shr         eax,8
 00523A3B    mov         dword ptr [ebp-14],eax
 00523A3E    mov         eax,dword ptr [ebp-8]
 00523A41    and         eax,0FF
 00523A46    mov         dword ptr [ebp-18],eax
 00523A49    mov         eax,dword ptr [ebp-4]
 00523A4C    cmp         dword ptr [eax],2020
>00523A52    je          00523AF3
 00523A58    cmp         dword ptr [ebp-8],0
>00523A5C    je          00523AF3
 00523A62    mov         eax,dword ptr [ebp-14]
 00523A65    sub         eax,dword ptr [ebp-0C]
>00523A68    je          00523AF3
 00523A6E    mov         eax,dword ptr [ebp-18]
 00523A71    sub         eax,dword ptr [ebp-10]
>00523A74    je          00523AF3
 00523A76    mov         eax,dword ptr [ebp-4]
 00523A79    cmp         dword ptr [eax],0
>00523A7C    je          00523A87
 00523A7E    cmp         dword ptr [ebp-8],2020
>00523A85    jne         00523A91
 00523A87    mov         eax,dword ptr [ebp-4]
 00523A8A    mov         edx,dword ptr [ebp-8]
 00523A8D    mov         dword ptr [eax],edx
>00523A8F    jmp         00523AF3
 00523A91    mov         eax,dword ptr [ebp-4]
 00523A94    mov         eax,dword ptr [eax]
 00523A96    shr         eax,18
 00523A99    mov         edx,dword ptr [ebp-0C]
 00523A9C    call        004373CC
 00523AA1    mov         ebx,eax
 00523AA3    shl         ebx,18
 00523AA6    mov         eax,dword ptr [ebp-4]
 00523AA9    mov         eax,dword ptr [eax]
 00523AAB    shr         eax,10
 00523AAE    and         eax,0FF
 00523AB3    mov         edx,dword ptr [ebp-10]
 00523AB6    call        004373CC
 00523ABB    shl         eax,10
 00523ABE    or          ebx,eax
 00523AC0    mov         eax,dword ptr [ebp-4]
 00523AC3    mov         eax,dword ptr [eax]
 00523AC5    shr         eax,8
 00523AC8    and         eax,0FF
 00523ACD    mov         edx,dword ptr [ebp-14]
 00523AD0    call        00437470
 00523AD5    shl         eax,8
 00523AD8    or          ebx,eax
 00523ADA    mov         eax,dword ptr [ebp-4]
 00523ADD    mov         eax,dword ptr [eax]
 00523ADF    and         eax,0FF
 00523AE4    mov         edx,dword ptr [ebp-18]
 00523AE7    call        00437470
 00523AEC    or          ebx,eax
 00523AEE    mov         eax,dword ptr [ebp-4]
 00523AF1    mov         dword ptr [eax],ebx
 00523AF3    pop         ebx
 00523AF4    mov         esp,ebp
 00523AF6    pop         ebp
 00523AF7    ret
end;*}

//00523AF8
{*procedure sub_00523AF8(?:?; ?:?);
begin
 00523AF8    push        ebp
 00523AF9    mov         ebp,esp
 00523AFB    add         esp,0FFFFFFE8
 00523AFE    mov         dword ptr [ebp-4],edx
 00523B01    mov         dword ptr [ebp-8],eax
 00523B04    mov         eax,dword ptr [ebp-4]
 00523B07    shr         eax,18
 00523B0A    mov         dword ptr [ebp-0C],eax
 00523B0D    mov         eax,dword ptr [ebp-4]
 00523B10    and         eax,0FF0000
 00523B15    shr         eax,10
 00523B18    mov         dword ptr [ebp-10],eax
 00523B1B    mov         eax,dword ptr [ebp-4]
 00523B1E    and         eax,0FF00
 00523B23    shr         eax,8
 00523B26    mov         dword ptr [ebp-14],eax
 00523B29    mov         eax,dword ptr [ebp-4]
 00523B2C    and         eax,0FF
 00523B31    mov         dword ptr [ebp-18],eax
 00523B34    mov         eax,dword ptr [ebp-8]
 00523B37    cmp         dword ptr [eax],2020
>00523B3D    je          00523B9D
 00523B3F    cmp         dword ptr [ebp-4],0
>00523B43    je          00523B9D
 00523B45    mov         eax,dword ptr [ebp-14]
 00523B48    sub         eax,dword ptr [ebp-0C]
>00523B4B    je          00523B9D
 00523B4D    mov         eax,dword ptr [ebp-18]
 00523B50    sub         eax,dword ptr [ebp-10]
>00523B53    je          00523B9D
 00523B55    mov         eax,dword ptr [ebp-8]
 00523B58    cmp         dword ptr [eax],0
>00523B5B    je          00523B66
 00523B5D    cmp         dword ptr [ebp-4],2020
>00523B64    jne         00523B70
 00523B66    mov         eax,dword ptr [ebp-8]
 00523B69    mov         edx,dword ptr [ebp-4]
 00523B6C    mov         dword ptr [eax],edx
>00523B6E    jmp         00523B9D
 00523B70    movd        mm1,dword ptr [ebp-4]
 00523B74    mov         eax,dword ptr [ebp-8]
 00523B77    movd        mm2,dword ptr [eax]
 00523B7A    movq        mm3,mm1
 00523B7D    mov         ecx,0FFFF0000
 00523B82    movd        mm0,ecx
 00523B85    ???
 00523B86    fcmove      st,st(2)
 00523B88    pand        mm1,mm0
 00523B8B    psrld       mm0,10
 00523B8F    ???
 00523B90    ???
 00523B91    ror         dword ptr [edi],cl
 00523B93    fcmovnbe    st,st(0)
 00523B95    por         mm1,mm2
 00523B98    movd        dword ptr [eax],mm1
 00523B9B    emms
 00523B9D    mov         esp,ebp
 00523B9F    pop         ebp
 00523BA0    ret
end;*}

//00523BA4
procedure sub_00523BA4(?:Pointer);
begin
{*
 00523BA4    push        ebp
 00523BA5    mov         ebp,esp
 00523BA7    push        ecx
 00523BA8    mov         dword ptr [ebp-4],eax
 00523BAB    mov         eax,dword ptr [ebp-4]
 00523BAE    xor         ecx,ecx
 00523BB0    mov         edx,30
 00523BB5    call        @FillChar
 00523BBA    mov         eax,dword ptr [ebp-4]
 00523BBD    add         eax,2C
 00523BC0    xor         edx,edx
 00523BC2    call        @ReallocMem
 00523BC7    pop         ecx
 00523BC8    pop         ebp
 00523BC9    ret
*}
end;

//00523BCC
{*procedure sub_00523BCC(?:?);
begin
 00523BCC    push        ebp
 00523BCD    mov         ebp,esp
 00523BCF    push        ecx
 00523BD0    mov         dword ptr [ebp-4],eax
 00523BD3    mov         eax,dword ptr [ebp-4]
 00523BD6    add         eax,2C
 00523BD9    xor         edx,edx
 00523BDB    call        @ReallocMem
 00523BE0    pop         ecx
 00523BE1    pop         ebp
 00523BE2    ret
end;*}

//00523BE4
{*procedure sub_00523BE4(?:?; ?:?);
begin
 00523BE4    push        ebp
 00523BE5    mov         ebp,esp
 00523BE7    add         esp,0FFFFFFF8
 00523BEA    push        esi
 00523BEB    push        edi
 00523BEC    mov         dword ptr [ebp-8],edx
 00523BEF    mov         dword ptr [ebp-4],eax
 00523BF2    mov         eax,dword ptr [ebp-8]
 00523BF5    mov         edx,dword ptr [ebp-4]
 00523BF8    mov         esi,eax
 00523BFA    mov         edi,edx
 00523BFC    movs        dword ptr [edi],dword ptr [esi]
 00523BFD    movs        dword ptr [edi],dword ptr [esi]
 00523BFE    movs        dword ptr [edi],dword ptr [esi]
 00523BFF    movs        dword ptr [edi],dword ptr [esi]
 00523C00    mov         eax,dword ptr [ebp-8]
 00523C03    mov         eax,dword ptr [eax+8]
 00523C06    mov         edx,dword ptr [ebp-8]
 00523C09    sub         eax,dword ptr [edx]
 00523C0B    shr         eax,5
 00523C0E    inc         eax
 00523C0F    mov         edx,dword ptr [ebp-4]
 00523C12    mov         dword ptr [edx+10],eax
 00523C15    mov         eax,dword ptr [ebp-8]
 00523C18    mov         eax,dword ptr [eax+0C]
 00523C1B    mov         edx,dword ptr [ebp-8]
 00523C1E    sub         eax,dword ptr [edx+4]
 00523C21    shr         eax,5
 00523C24    inc         eax
 00523C25    mov         edx,dword ptr [ebp-4]
 00523C28    mov         dword ptr [edx+14],eax
 00523C2B    mov         eax,dword ptr [ebp-4]
 00523C2E    mov         eax,dword ptr [eax+10]
 00523C31    inc         eax
 00523C32    mov         edx,dword ptr [ebp-4]
 00523C35    mov         edx,dword ptr [edx+14]
 00523C38    inc         edx
 00523C39    imul        edx
 00523C3B    mov         edx,dword ptr [ebp-4]
 00523C3E    mov         dword ptr [edx+28],eax
 00523C41    mov         eax,dword ptr [ebp-4]
 00523C44    mov         edx,dword ptr [eax+28]
 00523C47    shl         edx,2
 00523C4A    mov         eax,dword ptr [ebp-4]
 00523C4D    add         eax,2C
 00523C50    call        @ReallocMem
 00523C55    mov         eax,dword ptr [ebp-4]
 00523C58    xor         edx,edx
 00523C5A    call        00523C68
 00523C5F    pop         edi
 00523C60    pop         esi
 00523C61    pop         ecx
 00523C62    pop         ecx
 00523C63    pop         ebp
 00523C64    ret
end;*}

//00523C68
{*procedure sub_00523C68(?:?; ?:?);
begin
 00523C68    push        ebp
 00523C69    mov         ebp,esp
 00523C6B    add         esp,0FFFFFFE8
 00523C6E    push        ebx
 00523C6F    push        esi
 00523C70    push        edi
 00523C71    mov         dword ptr [ebp-8],edx
 00523C74    mov         dword ptr [ebp-4],eax
 00523C77    push        0
 00523C79    lea         eax,[ebp-18]
 00523C7C    push        eax
 00523C7D    mov         edx,dword ptr [ebp-4]
 00523C80    mov         edx,dword ptr [edx+14]
 00523C83    mov         eax,dword ptr [ebp-4]
 00523C86    mov         eax,dword ptr [eax+10]
 00523C89    xor         ecx,ecx
 00523C8B    call        0051DC50
 00523C90    mov         eax,dword ptr [ebp-4]
 00523C93    lea         esi,[ebp-18]
 00523C96    lea         edi,[eax+18]
 00523C99    movs        dword ptr [edi],dword ptr [esi]
 00523C9A    movs        dword ptr [edi],dword ptr [esi]
 00523C9B    movs        dword ptr [edi],dword ptr [esi]
 00523C9C    movs        dword ptr [edi],dword ptr [esi]
 00523C9D    mov         ebx,dword ptr ds:[56E100];^gvar_005779AC
 00523CA3    mov         ebx,dword ptr [ebx]
 00523CA5    mov         edx,dword ptr [ebp-4]
 00523CA8    mov         edx,dword ptr [edx+28]
 00523CAB    mov         eax,dword ptr [ebp-4]
 00523CAE    mov         eax,dword ptr [eax+2C]
 00523CB1    mov         ecx,dword ptr [ebp-8]
 00523CB4    call        ebx
 00523CB6    pop         edi
 00523CB7    pop         esi
 00523CB8    pop         ebx
 00523CB9    mov         esp,ebp
 00523CBB    pop         ebp
 00523CBC    ret
end;*}

//00523CC0
{*procedure sub_00523CC0(?:?; ?:?);
begin
 00523CC0    push        ebp
 00523CC1    mov         ebp,esp
 00523CC3    add         esp,0FFFFFFE0
 00523CC6    push        ebx
 00523CC7    push        esi
 00523CC8    push        edi
 00523CC9    mov         dword ptr [ebp-8],edx
 00523CCC    mov         dword ptr [ebp-4],eax
 00523CCF    mov         eax,dword ptr [ebp-4]
 00523CD2    mov         eax,dword ptr [eax+1C]
 00523CD5    mov         edx,dword ptr [ebp-4]
 00523CD8    mov         edx,dword ptr [edx+24]
 00523CDB    sub         edx,eax
>00523CDD    jl          00523D21
 00523CDF    inc         edx
 00523CE0    mov         dword ptr [ebp-10],edx
 00523CE3    mov         dword ptr [ebp-0C],eax
 00523CE6    mov         edx,dword ptr [ebp-4]
 00523CE9    mov         edx,dword ptr [edx+20]
 00523CEC    mov         eax,dword ptr [ebp-4]
 00523CEF    sub         edx,dword ptr [eax+18]
 00523CF2    inc         edx
 00523CF3    mov         eax,dword ptr [ebp-4]
 00523CF6    mov         eax,dword ptr [eax+10]
 00523CF9    imul        eax,dword ptr [ebp-0C]
 00523CFD    mov         ecx,dword ptr [ebp-4]
 00523D00    add         eax,dword ptr [ecx+18]
 00523D03    mov         ecx,dword ptr [ebp-4]
 00523D06    mov         ecx,dword ptr [ecx+2C]
 00523D09    lea         eax,[ecx+eax*4]
 00523D0C    mov         ebx,dword ptr ds:[56E100];^gvar_005779AC
 00523D12    mov         ebx,dword ptr [ebx]
 00523D14    mov         ecx,dword ptr [ebp-8]
 00523D17    call        ebx
 00523D19    inc         dword ptr [ebp-0C]
 00523D1C    dec         dword ptr [ebp-10]
>00523D1F    jne         00523CE6
 00523D21    push        0
 00523D23    lea         eax,[ebp-20]
 00523D26    push        eax
 00523D27    mov         edx,dword ptr [ebp-4]
 00523D2A    mov         edx,dword ptr [edx+14]
 00523D2D    mov         eax,dword ptr [ebp-4]
 00523D30    mov         eax,dword ptr [eax+10]
 00523D33    xor         ecx,ecx
 00523D35    call        0051DC50
 00523D3A    mov         eax,dword ptr [ebp-4]
 00523D3D    lea         esi,[ebp-20]
 00523D40    lea         edi,[eax+18]
 00523D43    movs        dword ptr [edi],dword ptr [esi]
 00523D44    movs        dword ptr [edi],dword ptr [esi]
 00523D45    movs        dword ptr [edi],dword ptr [esi]
 00523D46    movs        dword ptr [edi],dword ptr [esi]
 00523D47    pop         edi
 00523D48    pop         esi
 00523D49    pop         ebx
 00523D4A    mov         esp,ebp
 00523D4C    pop         ebp
 00523D4D    ret
end;*}

//00523D50
{*procedure sub_00523D50(?:?; ?:?);
begin
 00523D50    push        ebp
 00523D51    mov         ebp,esp
 00523D53    add         esp,0FFFFFFB8
 00523D56    push        ebx
 00523D57    push        esi
 00523D58    push        edi
 00523D59    mov         esi,edx
 00523D5B    lea         edi,[ebp-48]
 00523D5E    mov         ecx,0C
 00523D63    rep movs    dword ptr [edi],dword ptr [esi]
 00523D65    mov         dword ptr [ebp-4],eax
 00523D68    mov         eax,dword ptr [ebp-4]
 00523D6B    cmp         dword ptr [eax+2C],0
>00523D6F    je          00523D84
 00523D71    mov         eax,dword ptr [ebp-4]
 00523D74    cmp         dword ptr [eax+28],0
>00523D78    jle         00523D84
 00523D7A    mov         eax,dword ptr [ebp-4]
 00523D7D    xor         edx,edx
 00523D7F    call        00523CC0
 00523D84    mov         eax,dword ptr [ebp-4]
 00523D87    mov         edi,eax
 00523D89    lea         esi,[ebp-48]
 00523D8C    movs        dword ptr [edi],dword ptr [esi]
 00523D8D    movs        dword ptr [edi],dword ptr [esi]
 00523D8E    movs        dword ptr [edi],dword ptr [esi]
 00523D8F    movs        dword ptr [edi],dword ptr [esi]
 00523D90    mov         eax,dword ptr [ebp-4]
 00523D93    mov         edx,dword ptr [ebp-38]
 00523D96    mov         dword ptr [eax+10],edx
 00523D99    mov         eax,dword ptr [ebp-4]
 00523D9C    mov         edx,dword ptr [ebp-34]
 00523D9F    mov         dword ptr [eax+14],edx
 00523DA2    mov         eax,dword ptr [ebp-4]
 00523DA5    lea         edi,[eax+18]
 00523DA8    lea         esi,[ebp-30]
 00523DAB    movs        dword ptr [edi],dword ptr [esi]
 00523DAC    movs        dword ptr [edi],dword ptr [esi]
 00523DAD    movs        dword ptr [edi],dword ptr [esi]
 00523DAE    movs        dword ptr [edi],dword ptr [esi]
 00523DAF    mov         edx,dword ptr [ebp-20]
 00523DB2    shl         edx,2
 00523DB5    mov         eax,dword ptr [ebp-4]
 00523DB8    add         eax,2C
 00523DBB    call        @ReallocMem
 00523DC0    mov         eax,dword ptr [ebp-4]
 00523DC3    mov         eax,dword ptr [eax+28]
 00523DC6    cmp         eax,dword ptr [ebp-20]
>00523DC9    jge         00523DEF
 00523DCB    mov         eax,dword ptr [ebp-4]
 00523DCE    mov         edx,dword ptr [ebp-20]
 00523DD1    sub         edx,dword ptr [eax+28]
 00523DD4    mov         eax,dword ptr [ebp-4]
 00523DD7    mov         eax,dword ptr [eax+28]
 00523DDA    mov         ecx,dword ptr [ebp-4]
 00523DDD    mov         ecx,dword ptr [ecx+2C]
 00523DE0    lea         eax,[ecx+eax*4]
 00523DE3    mov         ebx,dword ptr ds:[56E100];^gvar_005779AC
 00523DE9    mov         ebx,dword ptr [ebx]
 00523DEB    xor         ecx,ecx
 00523DED    call        ebx
 00523DEF    mov         eax,dword ptr [ebp-4]
 00523DF2    mov         edx,dword ptr [ebp-20]
 00523DF5    mov         dword ptr [eax+28],edx
 00523DF8    mov         eax,dword ptr [ebp-2C]
 00523DFB    imul        dword ptr [ebp-38]
 00523DFE    add         eax,dword ptr [ebp-30]
 00523E01    mov         edx,dword ptr [ebp-1C]
 00523E04    lea         eax,[edx+eax*4]
 00523E07    mov         dword ptr [ebp-10],eax
 00523E0A    mov         eax,dword ptr [ebp-4]
 00523E0D    mov         eax,dword ptr [eax+10]
 00523E10    imul        dword ptr [ebp-2C]
 00523E13    add         eax,dword ptr [ebp-30]
 00523E16    mov         edx,dword ptr [ebp-4]
 00523E19    mov         edx,dword ptr [edx+2C]
 00523E1C    lea         eax,[edx+eax*4]
 00523E1F    mov         dword ptr [ebp-14],eax
 00523E22    mov         eax,dword ptr [ebp-28]
 00523E25    sub         eax,dword ptr [ebp-30]
 00523E28    inc         eax
 00523E29    mov         dword ptr [ebp-0C],eax
 00523E2C    mov         eax,dword ptr [ebp-2C]
 00523E2F    mov         edx,dword ptr [ebp-24]
 00523E32    sub         edx,eax
>00523E34    jl          00523E68
 00523E36    inc         edx
 00523E37    mov         dword ptr [ebp-18],edx
 00523E3A    mov         dword ptr [ebp-8],eax
 00523E3D    mov         edx,dword ptr [ebp-14]
 00523E40    mov         eax,dword ptr [ebp-10]
 00523E43    mov         ecx,dword ptr [ebp-0C]
 00523E46    call        00513030
 00523E4B    mov         eax,dword ptr [ebp-4]
 00523E4E    mov         eax,dword ptr [eax+10]
 00523E51    shl         eax,2
 00523E54    add         dword ptr [ebp-14],eax
 00523E57    mov         eax,dword ptr [ebp-38]
 00523E5A    shl         eax,2
 00523E5D    add         dword ptr [ebp-10],eax
 00523E60    inc         dword ptr [ebp-8]
 00523E63    dec         dword ptr [ebp-18]
>00523E66    jne         00523E3D
 00523E68    pop         edi
 00523E69    pop         esi
 00523E6A    pop         ebx
 00523E6B    mov         esp,ebp
 00523E6D    pop         ebp
 00523E6E    ret
end;*}

//00523E70
{*procedure sub_00523E70(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00523E70    push        ebp
 00523E71    mov         ebp,esp
 00523E73    add         esp,0FFFFFFA4
 00523E76    mov         dword ptr [ebp-0C],ecx
 00523E79    mov         dword ptr [ebp-8],edx
 00523E7C    mov         dword ptr [ebp-4],eax
 00523E7F    mov         eax,dword ptr [ebp+14]
 00523E82    sub         eax,dword ptr [ebp-8]
 00523E85    mov         dword ptr [ebp-14],eax
 00523E88    mov         eax,dword ptr [ebp+10]
 00523E8B    sub         eax,dword ptr [ebp-0C]
 00523E8E    mov         dword ptr [ebp-18],eax
 00523E91    shl         dword ptr [ebp+0C],1
 00523E94    cmp         dword ptr [ebp-14],0
>00523E98    jle         00523EA3
 00523E9A    mov         dword ptr [ebp-1C],1
>00523EA1    jmp         00523EEC
 00523EA3    cmp         dword ptr [ebp-14],0
>00523EA7    jge         00523EB5
 00523EA9    neg         dword ptr [ebp-14]
 00523EAC    mov         dword ptr [ebp-1C],0FFFFFFFF
>00523EB3    jmp         00523EEC
 00523EB5    mov         eax,dword ptr [ebp+10]
 00523EB8    push        eax
 00523EB9    lea         eax,[ebp-4C]
 00523EBC    push        eax
 00523EBD    mov         ecx,dword ptr [ebp+14]
 00523EC0    mov         edx,dword ptr [ebp-0C]
 00523EC3    mov         eax,dword ptr [ebp-8]
 00523EC6    call        0051DC50
 00523ECB    lea         eax,[ebp-4C]
 00523ECE    mov         ecx,dword ptr [ebp+0C]
 00523ED1    mov         edx,dword ptr [ebp+0C]
 00523ED4    call        00523694
 00523ED9    mov         eax,dword ptr [ebp-4]
 00523EDC    mov         cl,byte ptr [ebp+8]
 00523EDF    lea         edx,[ebp-4C]
 00523EE2    call        00524050
>00523EE7    jmp         00524048
 00523EEC    cmp         dword ptr [ebp-18],0
>00523EF0    jle         00523EFB
 00523EF2    mov         dword ptr [ebp-20],1
>00523EF9    jmp         00523F44
 00523EFB    cmp         dword ptr [ebp-18],0
>00523EFF    jge         00523F0D
 00523F01    neg         dword ptr [ebp-18]
 00523F04    mov         dword ptr [ebp-20],0FFFFFFFF
>00523F0B    jmp         00523F44
 00523F0D    mov         eax,dword ptr [ebp+10]
 00523F10    push        eax
 00523F11    lea         eax,[ebp-4C]
 00523F14    push        eax
 00523F15    mov         ecx,dword ptr [ebp+14]
 00523F18    mov         edx,dword ptr [ebp-0C]
 00523F1B    mov         eax,dword ptr [ebp-8]
 00523F1E    call        0051DC50
 00523F23    lea         eax,[ebp-4C]
 00523F26    mov         ecx,dword ptr [ebp+0C]
 00523F29    mov         edx,dword ptr [ebp+0C]
 00523F2C    call        00523694
 00523F31    mov         eax,dword ptr [ebp-4]
 00523F34    mov         cl,byte ptr [ebp+8]
 00523F37    lea         edx,[ebp-4C]
 00523F3A    call        00524050
>00523F3F    jmp         00524048
 00523F44    mov         eax,dword ptr [ebp-8]
 00523F47    shl         eax,10
 00523F4A    mov         dword ptr [ebp-8],eax
 00523F4D    mov         eax,dword ptr [ebp-0C]
 00523F50    shl         eax,10
 00523F53    mov         dword ptr [ebp-0C],eax
 00523F56    mov         eax,dword ptr [ebp-14]
 00523F59    shl         eax,10
 00523F5C    mov         dword ptr [ebp-14],eax
 00523F5F    mov         eax,dword ptr [ebp-18]
 00523F62    shl         eax,10
 00523F65    mov         dword ptr [ebp-18],eax
 00523F68    mov         eax,dword ptr [ebp-14]
 00523F6B    cmp         eax,dword ptr [ebp-18]
>00523F6E    jge         00523F81
 00523F70    mov         byte ptr [ebp-35],1
 00523F74    lea         edx,[ebp-18]
 00523F77    lea         eax,[ebp-14]
 00523F7A    call        00513044
>00523F7F    jmp         00523F85
 00523F81    mov         byte ptr [ebp-35],0
 00523F85    mov         eax,dword ptr [ebp-14]
 00523F88    test        eax,eax
>00523F8A    jns         00523F8F
 00523F8C    add         eax,1F
 00523F8F    sar         eax,5
 00523F92    mov         dword ptr [ebp-2C],eax
 00523F95    mov         dword ptr [ebp-24],200000
 00523F9C    mov         edx,dword ptr [ebp-2C]
 00523F9F    mov         eax,dword ptr [ebp-18]
 00523FA2    call        0051327C
 00523FA7    mov         dword ptr [ebp-28],eax
 00523FAA    cmp         byte ptr [ebp-35],0
>00523FAE    je          00523FBB
 00523FB0    lea         edx,[ebp-28]
 00523FB3    lea         eax,[ebp-24]
 00523FB6    call        00513044
 00523FBB    mov         eax,dword ptr [ebp-1C]
 00523FBE    imul        dword ptr [ebp-24]
 00523FC1    mov         dword ptr [ebp-24],eax
 00523FC4    mov         eax,dword ptr [ebp-20]
 00523FC7    imul        dword ptr [ebp-28]
 00523FCA    mov         dword ptr [ebp-28],eax
 00523FCD    mov         eax,dword ptr [ebp-2C]
 00523FD0    call        0051325C
 00523FD5    test        eax,eax
>00523FD7    jle         00524048
 00523FD9    mov         dword ptr [ebp-3C],eax
 00523FDC    mov         dword ptr [ebp-10],1
 00523FE3    mov         eax,dword ptr [ebp-8]
 00523FE6    add         eax,dword ptr [ebp-24]
 00523FE9    mov         dword ptr [ebp-30],eax
 00523FEC    mov         eax,dword ptr [ebp-0C]
 00523FEF    add         eax,dword ptr [ebp-28]
 00523FF2    mov         dword ptr [ebp-34],eax
 00523FF5    mov         eax,dword ptr [ebp-34]
 00523FF8    push        eax
 00523FF9    lea         eax,[ebp-5C]
 00523FFC    push        eax
 00523FFD    mov         ecx,dword ptr [ebp-30]
 00524000    mov         edx,dword ptr [ebp-0C]
 00524003    mov         eax,dword ptr [ebp-8]
 00524006    call        0051DF10
 0052400B    lea         eax,[ebp-5C]
 0052400E    lea         ecx,[ebp-4C]
 00524011    xor         edx,edx
 00524013    call        0051DDE8
 00524018    lea         eax,[ebp-4C]
 0052401B    mov         ecx,dword ptr [ebp+0C]
 0052401E    mov         edx,dword ptr [ebp+0C]
 00524021    call        00523694
 00524026    mov         eax,dword ptr [ebp-4]
 00524029    mov         cl,byte ptr [ebp+8]
 0052402C    lea         edx,[ebp-4C]
 0052402F    call        00524050
 00524034    mov         eax,dword ptr [ebp-30]
 00524037    mov         dword ptr [ebp-8],eax
 0052403A    mov         eax,dword ptr [ebp-34]
 0052403D    mov         dword ptr [ebp-0C],eax
 00524040    inc         dword ptr [ebp-10]
 00524043    dec         dword ptr [ebp-3C]
>00524046    jne         00523FE3
 00524048    mov         esp,ebp
 0052404A    pop         ebp
 0052404B    ret         10
end;*}

//00524050
{*procedure sub_00524050(?:?; ?:?; ?:?);
begin
 00524050    push        ebp
 00524051    mov         ebp,esp
 00524053    add         esp,0FFFFFFA8
 00524056    push        ebx
 00524057    push        esi
 00524058    push        edi
 00524059    mov         esi,edx
 0052405B    lea         edi,[ebp-58]
 0052405E    movs        dword ptr [edi],dword ptr [esi]
 0052405F    movs        dword ptr [edi],dword ptr [esi]
 00524060    movs        dword ptr [edi],dword ptr [esi]
 00524061    movs        dword ptr [edi],dword ptr [esi]
 00524062    mov         byte ptr [ebp-5],cl
 00524065    mov         dword ptr [ebp-4],eax
 00524068    mov         eax,dword ptr [ebp-4]
 0052406B    cmp         dword ptr [eax+28],0
>0052406F    je          00524541
 00524075    lea         edx,[ebp-50]
 00524078    lea         eax,[ebp-58]
 0052407B    call        0051304C
 00524080    lea         edx,[ebp-4C]
 00524083    lea         eax,[ebp-54]
 00524086    call        0051304C
 0052408B    cmp         dword ptr [ebp-58],0
>0052408F    jge         00524096
 00524091    xor         eax,eax
 00524093    mov         dword ptr [ebp-58],eax
 00524096    cmp         dword ptr [ebp-54],0
>0052409A    jge         005240A1
 0052409C    xor         eax,eax
 0052409E    mov         dword ptr [ebp-54],eax
 005240A1    mov         eax,dword ptr [ebp-4]
 005240A4    mov         eax,dword ptr [eax+10]
 005240A7    shl         eax,5
 005240AA    mov         dword ptr [ebp-1C],eax
 005240AD    mov         eax,dword ptr [ebp-50]
 005240B0    cmp         eax,dword ptr [ebp-1C]
>005240B3    jle         005240BB
 005240B5    mov         eax,dword ptr [ebp-1C]
 005240B8    mov         dword ptr [ebp-50],eax
 005240BB    mov         eax,dword ptr [ebp-4]
 005240BE    mov         eax,dword ptr [eax+14]
 005240C1    shl         eax,5
 005240C4    mov         dword ptr [ebp-1C],eax
 005240C7    mov         eax,dword ptr [ebp-4C]
 005240CA    cmp         eax,dword ptr [ebp-1C]
>005240CD    jle         005240D5
 005240CF    mov         eax,dword ptr [ebp-1C]
 005240D2    mov         dword ptr [ebp-4C],eax
 005240D5    mov         eax,dword ptr [ebp-58]
 005240D8    cmp         eax,dword ptr [ebp-50]
>005240DB    jg          00524541
 005240E1    mov         eax,dword ptr [ebp-54]
 005240E4    cmp         eax,dword ptr [ebp-4C]
>005240E7    jg          00524541
 005240ED    mov         eax,dword ptr [ebp-58]
 005240F0    shr         eax,5
 005240F3    mov         dword ptr [ebp-20],eax
 005240F6    mov         eax,dword ptr [ebp-54]
 005240F9    shr         eax,5
 005240FC    mov         dword ptr [ebp-24],eax
 005240FF    mov         eax,dword ptr [ebp-50]
 00524102    shr         eax,5
 00524105    mov         dword ptr [ebp-28],eax
 00524108    mov         eax,dword ptr [ebp-4C]
 0052410B    shr         eax,5
 0052410E    mov         dword ptr [ebp-2C],eax
 00524111    mov         eax,dword ptr [ebp-4]
 00524114    mov         eax,dword ptr [eax+10]
 00524117    imul        dword ptr [ebp-24]
 0052411A    add         eax,dword ptr [ebp-20]
 0052411D    mov         edx,dword ptr [ebp-4]
 00524120    mov         edx,dword ptr [edx+2C]
 00524123    lea         eax,[edx+eax*4]
 00524126    mov         dword ptr [ebp-40],eax
 00524129    cmp         byte ptr [ebp-5],0
>0052412D    je          00524176
 0052412F    mov         eax,dword ptr [ebp-24]
 00524132    mov         edx,dword ptr [ebp-2C]
 00524135    sub         edx,eax
>00524137    jl          005244F1
 0052413D    inc         edx
 0052413E    mov         dword ptr [ebp-48],edx
 00524141    mov         dword ptr [ebp-38],eax
 00524144    mov         ebx,dword ptr ds:[56E100];^gvar_005779AC
 0052414A    mov         ebx,dword ptr [ebx]
 0052414C    mov         edx,dword ptr [ebp-28]
 0052414F    sub         edx,dword ptr [ebp-20]
 00524152    inc         edx
 00524153    mov         eax,dword ptr [ebp-40]
 00524156    mov         ecx,2020
 0052415B    call        ebx
 0052415D    mov         eax,dword ptr [ebp-4]
 00524160    mov         eax,dword ptr [eax+10]
 00524163    shl         eax,2
 00524166    add         dword ptr [ebp-40],eax
 00524169    inc         dword ptr [ebp-38]
 0052416C    dec         dword ptr [ebp-48]
>0052416F    jne         00524144
>00524171    jmp         005244F1
 00524176    mov         eax,dword ptr [ebp-50]
 00524179    add         eax,20
 0052417C    shr         eax,5
 0052417F    mov         edx,dword ptr [ebp-58]
 00524182    shr         edx,5
 00524185    sub         eax,edx
 00524187    mov         dword ptr [ebp-30],eax
 0052418A    mov         eax,dword ptr [ebp-4C]
 0052418D    add         eax,20
 00524190    shr         eax,5
 00524193    mov         edx,dword ptr [ebp-54]
 00524196    shr         edx,5
 00524199    sub         eax,edx
 0052419B    mov         dword ptr [ebp-34],eax
 0052419E    mov         eax,dword ptr [ebp-58]
 005241A1    and         eax,8000001F
>005241A6    jns         005241AD
 005241A8    dec         eax
 005241A9    or          eax,0FFFFFFE0
 005241AC    inc         eax
 005241AD    mov         dword ptr [ebp-0C],eax
 005241B0    mov         eax,dword ptr [ebp-54]
 005241B3    and         eax,8000001F
>005241B8    jns         005241BF
 005241BA    dec         eax
 005241BB    or          eax,0FFFFFFE0
 005241BE    inc         eax
 005241BF    mov         dword ptr [ebp-14],eax
 005241C2    mov         eax,dword ptr [ebp-50]
 005241C5    and         eax,8000001F
>005241CA    jns         005241D1
 005241CC    dec         eax
 005241CD    or          eax,0FFFFFFE0
 005241D0    inc         eax
 005241D1    mov         dword ptr [ebp-10],eax
 005241D4    mov         eax,dword ptr [ebp-4C]
 005241D7    and         eax,8000001F
>005241DC    jns         005241E3
 005241DE    dec         eax
 005241DF    or          eax,0FFFFFFE0
 005241E2    inc         eax
 005241E3    mov         dword ptr [ebp-18],eax
 005241E6    cmp         dword ptr [ebp-30],1
>005241EA    jne         00524214
 005241EC    cmp         dword ptr [ebp-34],1
>005241F0    jne         00524214
 005241F2    mov         eax,dword ptr [ebp-18]
 005241F5    push        eax
 005241F6    mov         ecx,dword ptr [ebp-10]
 005241F9    mov         edx,dword ptr [ebp-14]
 005241FC    mov         eax,dword ptr [ebp-0C]
 005241FF    call        005239D8
 00524204    mov         edx,eax
 00524206    mov         eax,dword ptr [ebp-40]
 00524209    call        dword ptr ds:[597BC0]
>0052420F    jmp         005244F1
 00524214    cmp         dword ptr [ebp-30],1
>00524218    jne         005242AD
 0052421E    push        20
 00524220    mov         ecx,dword ptr [ebp-10]
 00524223    mov         edx,dword ptr [ebp-14]
 00524226    mov         eax,dword ptr [ebp-0C]
 00524229    call        005239D8
 0052422E    mov         edx,eax
 00524230    mov         eax,dword ptr [ebp-40]
 00524233    call        dword ptr ds:[597BC0]
 00524239    mov         eax,dword ptr [ebp-4]
 0052423C    mov         eax,dword ptr [eax+10]
 0052423F    shl         eax,2
 00524242    add         dword ptr [ebp-40],eax
 00524245    cmp         dword ptr [ebp-34],2
>00524249    jle         0052428C
 0052424B    mov         eax,dword ptr [ebp-24]
 0052424E    inc         eax
 0052424F    mov         edx,dword ptr [ebp-2C]
 00524252    dec         edx
 00524253    sub         edx,eax
>00524255    jl          0052428C
 00524257    inc         edx
 00524258    mov         dword ptr [ebp-48],edx
 0052425B    mov         dword ptr [ebp-3C],eax
 0052425E    push        20
 00524260    mov         ecx,dword ptr [ebp-10]
 00524263    xor         edx,edx
 00524265    mov         eax,dword ptr [ebp-0C]
 00524268    call        005239D8
 0052426D    mov         edx,eax
 0052426F    mov         eax,dword ptr [ebp-40]
 00524272    call        dword ptr ds:[597BC0]
 00524278    mov         eax,dword ptr [ebp-4]
 0052427B    mov         eax,dword ptr [eax+10]
 0052427E    shl         eax,2
 00524281    add         dword ptr [ebp-40],eax
 00524284    inc         dword ptr [ebp-3C]
 00524287    dec         dword ptr [ebp-48]
>0052428A    jne         0052425E
 0052428C    mov         eax,dword ptr [ebp-18]
 0052428F    push        eax
 00524290    mov         ecx,dword ptr [ebp-10]
 00524293    xor         edx,edx
 00524295    mov         eax,dword ptr [ebp-0C]
 00524298    call        005239D8
 0052429D    mov         edx,eax
 0052429F    mov         eax,dword ptr [ebp-40]
 005242A2    call        dword ptr ds:[597BC0]
>005242A8    jmp         005244F1
 005242AD    cmp         dword ptr [ebp-34],1
>005242B1    jne         0052433E
 005242B7    mov         eax,dword ptr [ebp-18]
 005242BA    push        eax
 005242BB    mov         ecx,20
 005242C0    mov         edx,dword ptr [ebp-14]
 005242C3    mov         eax,dword ptr [ebp-0C]
 005242C6    call        005239D8
 005242CB    mov         edx,eax
 005242CD    mov         eax,dword ptr [ebp-40]
 005242D0    call        dword ptr ds:[597BC0]
 005242D6    add         dword ptr [ebp-40],4
 005242DA    cmp         dword ptr [ebp-30],2
>005242DE    jle         0052431D
 005242E0    mov         eax,dword ptr [ebp-20]
 005242E3    inc         eax
 005242E4    mov         edx,dword ptr [ebp-28]
 005242E7    dec         edx
 005242E8    sub         edx,eax
>005242EA    jl          0052431D
 005242EC    inc         edx
 005242ED    mov         dword ptr [ebp-48],edx
 005242F0    mov         dword ptr [ebp-38],eax
 005242F3    mov         eax,dword ptr [ebp-18]
 005242F6    push        eax
 005242F7    mov         ecx,20
 005242FC    mov         edx,dword ptr [ebp-14]
 005242FF    xor         eax,eax
 00524301    call        005239D8
 00524306    mov         edx,eax
 00524308    mov         eax,dword ptr [ebp-40]
 0052430B    call        dword ptr ds:[597BC0]
 00524311    add         dword ptr [ebp-40],4
 00524315    inc         dword ptr [ebp-38]
 00524318    dec         dword ptr [ebp-48]
>0052431B    jne         005242F3
 0052431D    mov         eax,dword ptr [ebp-18]
 00524320    push        eax
 00524321    mov         ecx,dword ptr [ebp-10]
 00524324    mov         edx,dword ptr [ebp-14]
 00524327    xor         eax,eax
 00524329    call        005239D8
 0052432E    mov         edx,eax
 00524330    mov         eax,dword ptr [ebp-40]
 00524333    call        dword ptr ds:[597BC0]
>00524339    jmp         005244F1
 0052433E    mov         eax,dword ptr [ebp-40]
 00524341    mov         dword ptr [ebp-44],eax
 00524344    push        20
 00524346    mov         ecx,20
 0052434B    mov         edx,dword ptr [ebp-14]
 0052434E    mov         eax,dword ptr [ebp-0C]
 00524351    call        005239D8
 00524356    mov         edx,eax
 00524358    mov         eax,dword ptr [ebp-44]
 0052435B    call        dword ptr ds:[597BC0]
 00524361    add         dword ptr [ebp-44],4
 00524365    cmp         dword ptr [ebp-30],2
>00524369    jle         005243A6
 0052436B    mov         eax,dword ptr [ebp-20]
 0052436E    inc         eax
 0052436F    mov         edx,dword ptr [ebp-28]
 00524372    dec         edx
 00524373    sub         edx,eax
>00524375    jl          005243A6
 00524377    inc         edx
 00524378    mov         dword ptr [ebp-48],edx
 0052437B    mov         dword ptr [ebp-38],eax
 0052437E    push        20
 00524380    mov         ecx,20
 00524385    mov         edx,dword ptr [ebp-14]
 00524388    xor         eax,eax
 0052438A    call        005239D8
 0052438F    mov         edx,eax
 00524391    mov         eax,dword ptr [ebp-44]
 00524394    call        dword ptr ds:[597BC0]
 0052439A    add         dword ptr [ebp-44],4
 0052439E    inc         dword ptr [ebp-38]
 005243A1    dec         dword ptr [ebp-48]
>005243A4    jne         0052437E
 005243A6    push        20
 005243A8    mov         ecx,dword ptr [ebp-10]
 005243AB    mov         edx,dword ptr [ebp-14]
 005243AE    xor         eax,eax
 005243B0    call        005239D8
 005243B5    mov         edx,eax
 005243B7    mov         eax,dword ptr [ebp-44]
 005243BA    call        dword ptr ds:[597BC0]
 005243C0    mov         eax,dword ptr [ebp-4]
 005243C3    mov         eax,dword ptr [eax+10]
 005243C6    shl         eax,2
 005243C9    add         dword ptr [ebp-40],eax
 005243CC    cmp         dword ptr [ebp-34],2
>005243D0    jle         0052446C
 005243D6    mov         eax,dword ptr [ebp-24]
 005243D9    inc         eax
 005243DA    mov         edx,dword ptr [ebp-2C]
 005243DD    dec         edx
 005243DE    sub         edx,eax
>005243E0    jl          0052446C
 005243E6    inc         edx
 005243E7    mov         dword ptr [ebp-48],edx
 005243EA    mov         dword ptr [ebp-3C],eax
 005243ED    mov         eax,dword ptr [ebp-40]
 005243F0    mov         dword ptr [ebp-44],eax
 005243F3    push        20
 005243F5    mov         ecx,20
 005243FA    xor         edx,edx
 005243FC    mov         eax,dword ptr [ebp-0C]
 005243FF    call        005239D8
 00524404    mov         edx,eax
 00524406    mov         eax,dword ptr [ebp-44]
 00524409    call        dword ptr ds:[597BC0]
 0052440F    add         dword ptr [ebp-44],4
 00524413    cmp         dword ptr [ebp-30],2
>00524417    jle         0052443F
 00524419    mov         ebx,dword ptr ds:[56E100];^gvar_005779AC
 0052441F    mov         ebx,dword ptr [ebx]
 00524421    mov         edx,dword ptr [ebp-28]
 00524424    sub         edx,dword ptr [ebp-20]
 00524427    dec         edx
 00524428    mov         eax,dword ptr [ebp-44]
 0052442B    mov         ecx,2020
 00524430    call        ebx
 00524432    mov         eax,dword ptr [ebp-28]
 00524435    sub         eax,dword ptr [ebp-20]
 00524438    dec         eax
 00524439    shl         eax,2
 0052443C    add         dword ptr [ebp-44],eax
 0052443F    push        20
 00524441    mov         ecx,dword ptr [ebp-10]
 00524444    xor         edx,edx
 00524446    xor         eax,eax
 00524448    call        005239D8
 0052444D    mov         edx,eax
 0052444F    mov         eax,dword ptr [ebp-44]
 00524452    call        dword ptr ds:[597BC0]
 00524458    mov         eax,dword ptr [ebp-4]
 0052445B    mov         eax,dword ptr [eax+10]
 0052445E    shl         eax,2
 00524461    add         dword ptr [ebp-40],eax
 00524464    inc         dword ptr [ebp-3C]
 00524467    dec         dword ptr [ebp-48]
>0052446A    jne         005243ED
 0052446C    mov         eax,dword ptr [ebp-40]
 0052446F    mov         dword ptr [ebp-44],eax
 00524472    mov         eax,dword ptr [ebp-18]
 00524475    push        eax
 00524476    mov         ecx,20
 0052447B    xor         edx,edx
 0052447D    mov         eax,dword ptr [ebp-0C]
 00524480    call        005239D8
 00524485    mov         edx,eax
 00524487    mov         eax,dword ptr [ebp-44]
 0052448A    call        dword ptr ds:[597BC0]
 00524490    add         dword ptr [ebp-44],4
 00524494    cmp         dword ptr [ebp-30],2
>00524498    jle         005244D6
 0052449A    mov         eax,dword ptr [ebp-20]
 0052449D    inc         eax
 0052449E    mov         edx,dword ptr [ebp-28]
 005244A1    dec         edx
 005244A2    sub         edx,eax
>005244A4    jl          005244D6
 005244A6    inc         edx
 005244A7    mov         dword ptr [ebp-48],edx
 005244AA    mov         dword ptr [ebp-38],eax
 005244AD    mov         eax,dword ptr [ebp-18]
 005244B0    push        eax
 005244B1    mov         ecx,20
 005244B6    xor         edx,edx
 005244B8    xor         eax,eax
 005244BA    call        005239D8
 005244BF    mov         edx,eax
 005244C1    mov         eax,dword ptr [ebp-44]
 005244C4    call        dword ptr ds:[597BC0]
 005244CA    add         dword ptr [ebp-44],4
 005244CE    inc         dword ptr [ebp-38]
 005244D1    dec         dword ptr [ebp-48]
>005244D4    jne         005244AD
 005244D6    mov         eax,dword ptr [ebp-18]
 005244D9    push        eax
 005244DA    mov         ecx,dword ptr [ebp-10]
 005244DD    xor         edx,edx
 005244DF    xor         eax,eax
 005244E1    call        005239D8
 005244E6    mov         edx,eax
 005244E8    mov         eax,dword ptr [ebp-44]
 005244EB    call        dword ptr ds:[597BC0]
 005244F1    mov         eax,dword ptr [ebp-4]
 005244F4    mov         eax,dword ptr [eax+18]
 005244F7    cmp         eax,dword ptr [ebp-20]
>005244FA    jle         00524505
 005244FC    mov         eax,dword ptr [ebp-4]
 005244FF    mov         edx,dword ptr [ebp-20]
 00524502    mov         dword ptr [eax+18],edx
 00524505    mov         eax,dword ptr [ebp-4]
 00524508    mov         eax,dword ptr [eax+1C]
 0052450B    cmp         eax,dword ptr [ebp-24]
>0052450E    jle         00524519
 00524510    mov         eax,dword ptr [ebp-4]
 00524513    mov         edx,dword ptr [ebp-24]
 00524516    mov         dword ptr [eax+1C],edx
 00524519    mov         eax,dword ptr [ebp-4]
 0052451C    mov         eax,dword ptr [eax+20]
 0052451F    cmp         eax,dword ptr [ebp-28]
>00524522    jge         0052452D
 00524524    mov         eax,dword ptr [ebp-4]
 00524527    mov         edx,dword ptr [ebp-28]
 0052452A    mov         dword ptr [eax+20],edx
 0052452D    mov         eax,dword ptr [ebp-4]
 00524530    mov         eax,dword ptr [eax+24]
 00524533    cmp         eax,dword ptr [ebp-2C]
>00524536    jge         00524541
 00524538    mov         eax,dword ptr [ebp-4]
 0052453B    mov         edx,dword ptr [ebp-2C]
 0052453E    mov         dword ptr [eax+24],edx
 00524541    pop         edi
 00524542    pop         esi
 00524543    pop         ebx
 00524544    mov         esp,ebp
 00524546    pop         ebp
 00524547    ret
end;*}

//00524548
{*procedure sub_00524548(?:?; ?:?);
begin
 00524548    push        ebp
 00524549    mov         ebp,esp
 0052454B    add         esp,0FFFFFFC4
 0052454E    push        ebx
 0052454F    mov         dword ptr [ebp-8],edx
 00524552    mov         dword ptr [ebp-4],eax
 00524555    mov         eax,dword ptr [ebp-8]
 00524558    mov         eax,dword ptr [eax+1C]
 0052455B    mov         edx,dword ptr [ebp-8]
 0052455E    imul        dword ptr [edx+10]
 00524561    mov         edx,dword ptr [ebp-8]
 00524564    add         eax,dword ptr [edx+18]
 00524567    mov         edx,dword ptr [ebp-8]
 0052456A    mov         edx,dword ptr [edx+2C]
 0052456D    lea         eax,[edx+eax*4]
 00524570    mov         dword ptr [ebp-0C],eax
 00524573    mov         eax,dword ptr [ebp-8]
 00524576    mov         eax,dword ptr [eax+1C]
 00524579    mov         edx,dword ptr [ebp-4]
 0052457C    imul        dword ptr [edx+10]
 0052457F    mov         edx,dword ptr [ebp-8]
 00524582    add         eax,dword ptr [edx+18]
 00524585    mov         edx,dword ptr [ebp-4]
 00524588    mov         edx,dword ptr [edx+2C]
 0052458B    lea         eax,[edx+eax*4]
 0052458E    mov         dword ptr [ebp-10],eax
 00524591    mov         eax,dword ptr [ebp-8]
 00524594    mov         eax,dword ptr [eax+1C]
 00524597    mov         edx,dword ptr [ebp-8]
 0052459A    mov         edx,dword ptr [edx+24]
 0052459D    sub         edx,eax
>0052459F    jl          005246F7
 005245A5    inc         edx
 005245A6    mov         dword ptr [ebp-38],edx
 005245A9    mov         dword ptr [ebp-20],eax
 005245AC    mov         eax,dword ptr [ebp-0C]
 005245AF    mov         dword ptr [ebp-14],eax
 005245B2    mov         eax,dword ptr [ebp-10]
 005245B5    mov         dword ptr [ebp-18],eax
 005245B8    mov         eax,dword ptr [ebp-8]
 005245BB    mov         eax,dword ptr [eax+18]
 005245BE    mov         edx,dword ptr [ebp-8]
 005245C1    mov         edx,dword ptr [edx+20]
 005245C4    sub         edx,eax
>005245C6    jl          005246D3
 005245CC    inc         edx
 005245CD    mov         dword ptr [ebp-3C],edx
 005245D0    mov         dword ptr [ebp-1C],eax
 005245D3    mov         eax,dword ptr [ebp-14]
 005245D6    mov         eax,dword ptr [eax]
 005245D8    mov         dword ptr [ebp-34],eax
 005245DB    mov         eax,dword ptr [ebp-34]
 005245DE    shr         eax,18
 005245E1    mov         dword ptr [ebp-24],eax
 005245E4    mov         eax,dword ptr [ebp-34]
 005245E7    and         eax,0FF0000
 005245EC    shr         eax,10
 005245EF    mov         dword ptr [ebp-28],eax
 005245F2    mov         eax,dword ptr [ebp-34]
 005245F5    and         eax,0FF00
 005245FA    shr         eax,8
 005245FD    mov         dword ptr [ebp-2C],eax
 00524600    mov         eax,dword ptr [ebp-34]
 00524603    and         eax,0FF
 00524608    mov         dword ptr [ebp-30],eax
 0052460B    mov         eax,dword ptr [ebp-18]
 0052460E    cmp         dword ptr [eax],2020
>00524614    je          005246BF
 0052461A    mov         eax,dword ptr [ebp-14]
 0052461D    cmp         dword ptr [eax],0
>00524620    je          005246BF
 00524626    mov         eax,dword ptr [ebp-2C]
 00524629    sub         eax,dword ptr [ebp-24]
>0052462C    je          005246BF
 00524632    mov         eax,dword ptr [ebp-30]
 00524635    sub         eax,dword ptr [ebp-28]
>00524638    je          005246BF
 0052463E    mov         eax,dword ptr [ebp-18]
 00524641    cmp         dword ptr [eax],0
>00524644    je          00524651
 00524646    mov         eax,dword ptr [ebp-14]
 00524649    cmp         dword ptr [eax],2020
>0052464F    jne         0052465D
 00524651    mov         eax,dword ptr [ebp-14]
 00524654    mov         eax,dword ptr [eax]
 00524656    mov         edx,dword ptr [ebp-18]
 00524659    mov         dword ptr [edx],eax
>0052465B    jmp         005246BF
 0052465D    mov         eax,dword ptr [ebp-18]
 00524660    mov         eax,dword ptr [eax]
 00524662    shr         eax,18
 00524665    mov         edx,dword ptr [ebp-24]
 00524668    call        004373CC
 0052466D    mov         ebx,eax
 0052466F    shl         ebx,18
 00524672    mov         eax,dword ptr [ebp-18]
 00524675    mov         eax,dword ptr [eax]
 00524677    shr         eax,10
 0052467A    and         eax,0FF
 0052467F    mov         edx,dword ptr [ebp-28]
 00524682    call        004373CC
 00524687    shl         eax,10
 0052468A    or          ebx,eax
 0052468C    mov         eax,dword ptr [ebp-18]
 0052468F    mov         eax,dword ptr [eax]
 00524691    shr         eax,8
 00524694    and         eax,0FF
 00524699    mov         edx,dword ptr [ebp-2C]
 0052469C    call        00437470
 005246A1    shl         eax,8
 005246A4    or          ebx,eax
 005246A6    mov         eax,dword ptr [ebp-18]
 005246A9    mov         eax,dword ptr [eax]
 005246AB    and         eax,0FF
 005246B0    mov         edx,dword ptr [ebp-30]
 005246B3    call        00437470
 005246B8    or          ebx,eax
 005246BA    mov         eax,dword ptr [ebp-18]
 005246BD    mov         dword ptr [eax],ebx
 005246BF    add         dword ptr [ebp-18],4
 005246C3    add         dword ptr [ebp-14],4
 005246C7    inc         dword ptr [ebp-1C]
 005246CA    dec         dword ptr [ebp-3C]
>005246CD    jne         005245D3
 005246D3    mov         eax,dword ptr [ebp-4]
 005246D6    mov         eax,dword ptr [eax+10]
 005246D9    shl         eax,2
 005246DC    add         dword ptr [ebp-10],eax
 005246DF    mov         eax,dword ptr [ebp-8]
 005246E2    mov         eax,dword ptr [eax+10]
 005246E5    shl         eax,2
 005246E8    add         dword ptr [ebp-0C],eax
 005246EB    inc         dword ptr [ebp-20]
 005246EE    dec         dword ptr [ebp-38]
>005246F1    jne         005245AC
 005246F7    pop         ebx
 005246F8    mov         esp,ebp
 005246FA    pop         ebp
 005246FB    ret
end;*}

//005246FC
{*procedure sub_005246FC(?:?; ?:?);
begin
 005246FC    push        ebp
 005246FD    mov         ebp,esp
 005246FF    add         esp,0FFFFFFC8
 00524702    mov         dword ptr [ebp-10],edx
 00524705    mov         dword ptr [ebp-0C],eax
 00524708    mov         eax,dword ptr [ebp-10]
 0052470B    mov         eax,dword ptr [eax+1C]
 0052470E    mov         edx,dword ptr [ebp-10]
 00524711    imul        dword ptr [edx+10]
 00524714    mov         edx,dword ptr [ebp-10]
 00524717    add         eax,dword ptr [edx+18]
 0052471A    mov         edx,dword ptr [ebp-10]
 0052471D    mov         edx,dword ptr [edx+2C]
 00524720    lea         eax,[edx+eax*4]
 00524723    mov         dword ptr [ebp-14],eax
 00524726    mov         eax,dword ptr [ebp-10]
 00524729    mov         eax,dword ptr [eax+1C]
 0052472C    mov         edx,dword ptr [ebp-0C]
 0052472F    imul        dword ptr [edx+10]
 00524732    mov         edx,dword ptr [ebp-10]
 00524735    add         eax,dword ptr [edx+18]
 00524738    mov         edx,dword ptr [ebp-0C]
 0052473B    mov         edx,dword ptr [edx+2C]
 0052473E    lea         eax,[edx+eax*4]
 00524741    mov         dword ptr [ebp-18],eax
 00524744    mov         ecx,0FFFF
 00524749    movd        mm0,ecx
 0052474C    movq        mm4,mm0
 0052474F    pslld       mm4,10
 00524753    mov         eax,dword ptr [ebp-10]
 00524756    mov         eax,dword ptr [eax+1C]
 00524759    mov         edx,dword ptr [ebp-10]
 0052475C    mov         edx,dword ptr [edx+24]
 0052475F    sub         edx,eax
>00524761    jl          00524868
 00524767    inc         edx
 00524768    mov         dword ptr [ebp-34],edx
 0052476B    mov         dword ptr [ebp-20],eax
 0052476E    mov         eax,dword ptr [ebp-14]
 00524771    mov         dword ptr [ebp-8],eax
 00524774    mov         eax,dword ptr [ebp-18]
 00524777    mov         dword ptr [ebp-4],eax
 0052477A    mov         eax,dword ptr [ebp-10]
 0052477D    mov         eax,dword ptr [eax+18]
 00524780    mov         edx,dword ptr [ebp-10]
 00524783    mov         edx,dword ptr [edx+20]
 00524786    sub         edx,eax
>00524788    jl          00524844
 0052478E    inc         edx
 0052478F    mov         dword ptr [ebp-38],edx
 00524792    mov         dword ptr [ebp-1C],eax
 00524795    mov         eax,dword ptr [ebp-8]
 00524798    mov         eax,dword ptr [eax]
 0052479A    shr         eax,18
 0052479D    mov         dword ptr [ebp-24],eax
 005247A0    mov         eax,dword ptr [ebp-8]
 005247A3    mov         eax,dword ptr [eax]
 005247A5    and         eax,0FF0000
 005247AA    shr         eax,10
 005247AD    mov         dword ptr [ebp-28],eax
 005247B0    mov         eax,dword ptr [ebp-8]
 005247B3    mov         eax,dword ptr [eax]
 005247B5    and         eax,0FF00
 005247BA    shr         eax,8
 005247BD    mov         dword ptr [ebp-2C],eax
 005247C0    mov         eax,dword ptr [ebp-8]
 005247C3    mov         eax,dword ptr [eax]
 005247C5    and         eax,0FF
 005247CA    mov         dword ptr [ebp-30],eax
 005247CD    mov         eax,dword ptr [ebp-4]
 005247D0    cmp         dword ptr [eax],2020
>005247D6    je          00524830
 005247D8    mov         eax,dword ptr [ebp-8]
 005247DB    cmp         dword ptr [eax],0
>005247DE    je          00524830
 005247E0    mov         eax,dword ptr [ebp-2C]
 005247E3    sub         eax,dword ptr [ebp-24]
>005247E6    je          00524830
 005247E8    mov         eax,dword ptr [ebp-30]
 005247EB    sub         eax,dword ptr [ebp-28]
>005247EE    je          00524830
 005247F0    mov         eax,dword ptr [ebp-4]
 005247F3    cmp         dword ptr [eax],0
>005247F6    je          00524803
 005247F8    mov         eax,dword ptr [ebp-8]
 005247FB    cmp         dword ptr [eax],2020
>00524801    jne         0052480F
 00524803    mov         eax,dword ptr [ebp-8]
 00524806    mov         eax,dword ptr [eax]
 00524808    mov         edx,dword ptr [ebp-4]
 0052480B    mov         dword ptr [edx],eax
>0052480D    jmp         00524830
 0052480F    mov         eax,dword ptr [ebp-4]
 00524812    movd        mm2,dword ptr [eax]
 00524815    mov         ecx,dword ptr [ebp-8]
 00524818    movd        mm1,dword ptr [ecx]
 0052481B    movq        mm3,mm1
 0052481E    ???
 0052481F    fcmove      st,st(2)
 00524821    pand        mm1,mm4
 00524824    ???
 00524825    ???
 00524826    ror         dword ptr [edi],cl
 00524828    fcmovnbe    st,st(0)
 0052482A    por         mm1,mm2
 0052482D    movd        dword ptr [eax],mm1
 00524830    add         dword ptr [ebp-4],4
 00524834    add         dword ptr [ebp-8],4
 00524838    inc         dword ptr [ebp-1C]
 0052483B    dec         dword ptr [ebp-38]
>0052483E    jne         00524795
 00524844    mov         eax,dword ptr [ebp-0C]
 00524847    mov         eax,dword ptr [eax+10]
 0052484A    shl         eax,2
 0052484D    add         dword ptr [ebp-18],eax
 00524850    mov         eax,dword ptr [ebp-10]
 00524853    mov         eax,dword ptr [eax+10]
 00524856    shl         eax,2
 00524859    add         dword ptr [ebp-14],eax
 0052485C    inc         dword ptr [ebp-20]
 0052485F    dec         dword ptr [ebp-34]
>00524862    jne         0052476E
 00524868    emms
 0052486A    mov         esp,ebp
 0052486C    pop         ebp
 0052486D    ret
end;*}

//00524870
{*procedure sub_00524870(?:?; ?:?; ?:?);
begin
 00524870    push        ebp
 00524871    mov         ebp,esp
 00524873    add         esp,0FFFFFFC4
 00524876    mov         byte ptr [ebp-9],cl
 00524879    mov         dword ptr [ebp-8],edx
 0052487C    mov         dword ptr [ebp-4],eax
 0052487F    mov         eax,dword ptr [ebp-8]
 00524882    cmp         dword ptr [eax+28],0
>00524886    je          00524A1E
 0052488C    cmp         byte ptr [ebp-9],0
>00524890    je          005249AA
 00524896    mov         eax,dword ptr [ebp-8]
 00524899    mov         eax,dword ptr [eax+1C]
 0052489C    mov         edx,dword ptr [ebp-8]
 0052489F    imul        dword ptr [edx+10]
 005248A2    mov         edx,dword ptr [ebp-8]
 005248A5    add         eax,dword ptr [edx+18]
 005248A8    mov         edx,dword ptr [ebp-8]
 005248AB    mov         edx,dword ptr [edx+2C]
 005248AE    lea         eax,[edx+eax*4]
 005248B1    mov         dword ptr [ebp-10],eax
 005248B4    mov         eax,dword ptr [ebp-8]
 005248B7    mov         eax,dword ptr [eax+1C]
 005248BA    mov         edx,dword ptr [ebp-4]
 005248BD    imul        dword ptr [edx+10]
 005248C0    mov         edx,dword ptr [ebp-8]
 005248C3    add         eax,dword ptr [edx+18]
 005248C6    mov         edx,dword ptr [ebp-4]
 005248C9    mov         edx,dword ptr [edx+2C]
 005248CC    lea         eax,[edx+eax*4]
 005248CF    mov         dword ptr [ebp-14],eax
 005248D2    mov         eax,dword ptr [ebp-8]
 005248D5    mov         eax,dword ptr [eax+1C]
 005248D8    mov         edx,dword ptr [ebp-8]
 005248DB    mov         edx,dword ptr [edx+24]
 005248DE    sub         edx,eax
>005248E0    jl          005249B6
 005248E6    inc         edx
 005248E7    mov         dword ptr [ebp-38],edx
 005248EA    mov         dword ptr [ebp-24],eax
 005248ED    mov         eax,dword ptr [ebp-10]
 005248F0    mov         dword ptr [ebp-18],eax
 005248F3    mov         eax,dword ptr [ebp-14]
 005248F6    mov         dword ptr [ebp-1C],eax
 005248F9    mov         eax,dword ptr [ebp-8]
 005248FC    mov         eax,dword ptr [eax+18]
 005248FF    mov         edx,dword ptr [ebp-8]
 00524902    mov         edx,dword ptr [edx+20]
 00524905    sub         edx,eax
>00524907    jl          00524984
 00524909    inc         edx
 0052490A    mov         dword ptr [ebp-3C],edx
 0052490D    mov         dword ptr [ebp-20],eax
 00524910    mov         eax,dword ptr [ebp-18]
 00524913    mov         eax,dword ptr [eax]
 00524915    shr         eax,18
 00524918    mov         dword ptr [ebp-28],eax
 0052491B    mov         eax,dword ptr [ebp-18]
 0052491E    mov         eax,dword ptr [eax]
 00524920    and         eax,0FF0000
 00524925    shr         eax,10
 00524928    mov         dword ptr [ebp-2C],eax
 0052492B    mov         eax,dword ptr [ebp-18]
 0052492E    mov         eax,dword ptr [eax]
 00524930    and         eax,0FF00
 00524935    shr         eax,8
 00524938    mov         dword ptr [ebp-30],eax
 0052493B    mov         eax,dword ptr [ebp-18]
 0052493E    mov         eax,dword ptr [eax]
 00524940    and         eax,0FF
 00524945    mov         dword ptr [ebp-34],eax
 00524948    mov         eax,dword ptr [ebp-1C]
 0052494B    cmp         dword ptr [eax],2020
>00524951    je          00524974
 00524953    mov         eax,dword ptr [ebp-18]
 00524956    cmp         dword ptr [eax],0
>00524959    je          00524974
 0052495B    mov         eax,dword ptr [ebp-30]
 0052495E    sub         eax,dword ptr [ebp-28]
>00524961    je          00524974
 00524963    mov         eax,dword ptr [ebp-34]
 00524966    sub         eax,dword ptr [ebp-2C]
>00524969    je          00524974
 0052496B    mov         eax,dword ptr [ebp-1C]
 0052496E    mov         dword ptr [eax],2020
 00524974    add         dword ptr [ebp-1C],4
 00524978    add         dword ptr [ebp-18],4
 0052497C    inc         dword ptr [ebp-20]
 0052497F    dec         dword ptr [ebp-3C]
>00524982    jne         00524910
 00524984    mov         eax,dword ptr [ebp-4]
 00524987    mov         eax,dword ptr [eax+10]
 0052498A    shl         eax,2
 0052498D    add         dword ptr [ebp-14],eax
 00524990    mov         eax,dword ptr [ebp-8]
 00524993    mov         eax,dword ptr [eax+10]
 00524996    shl         eax,2
 00524999    add         dword ptr [ebp-10],eax
 0052499C    inc         dword ptr [ebp-24]
 0052499F    dec         dword ptr [ebp-38]
>005249A2    jne         005248ED
>005249A8    jmp         005249B6
 005249AA    mov         edx,dword ptr [ebp-8]
 005249AD    mov         eax,dword ptr [ebp-4]
 005249B0    call        dword ptr ds:[597BC8]
 005249B6    mov         eax,dword ptr [ebp-8]
 005249B9    mov         eax,dword ptr [eax+18]
 005249BC    mov         edx,dword ptr [ebp-4]
 005249BF    cmp         eax,dword ptr [edx+18]
>005249C2    jge         005249D0
 005249C4    mov         eax,dword ptr [ebp-8]
 005249C7    mov         eax,dword ptr [eax+18]
 005249CA    mov         edx,dword ptr [ebp-4]
 005249CD    mov         dword ptr [edx+18],eax
 005249D0    mov         eax,dword ptr [ebp-8]
 005249D3    mov         eax,dword ptr [eax+1C]
 005249D6    mov         edx,dword ptr [ebp-4]
 005249D9    cmp         eax,dword ptr [edx+1C]
>005249DC    jge         005249EA
 005249DE    mov         eax,dword ptr [ebp-8]
 005249E1    mov         eax,dword ptr [eax+1C]
 005249E4    mov         edx,dword ptr [ebp-4]
 005249E7    mov         dword ptr [edx+1C],eax
 005249EA    mov         eax,dword ptr [ebp-8]
 005249ED    mov         eax,dword ptr [eax+20]
 005249F0    mov         edx,dword ptr [ebp-4]
 005249F3    cmp         eax,dword ptr [edx+20]
>005249F6    jle         00524A04
 005249F8    mov         eax,dword ptr [ebp-8]
 005249FB    mov         eax,dword ptr [eax+20]
 005249FE    mov         edx,dword ptr [ebp-4]
 00524A01    mov         dword ptr [edx+20],eax
 00524A04    mov         eax,dword ptr [ebp-8]
 00524A07    mov         eax,dword ptr [eax+24]
 00524A0A    mov         edx,dword ptr [ebp-4]
 00524A0D    cmp         eax,dword ptr [edx+24]
>00524A10    jle         00524A1E
 00524A12    mov         eax,dword ptr [ebp-8]
 00524A15    mov         eax,dword ptr [eax+24]
 00524A18    mov         edx,dword ptr [ebp-4]
 00524A1B    mov         dword ptr [edx+24],eax
 00524A1E    mov         esp,ebp
 00524A20    pop         ebp
 00524A21    ret
end;*}

//00524A24
{*function sub_00524A24(?:?; ?:dword; ?:?):?;
begin
 00524A24    push        ebp
 00524A25    mov         ebp,esp
 00524A27    add         esp,0FFFFFFF0
 00524A2A    mov         byte ptr [ebp-9],cl
 00524A2D    mov         dword ptr [ebp-8],edx
 00524A30    mov         dword ptr [ebp-4],eax
 00524A33    mov         al,byte ptr [ebp-9]
 00524A36    push        eax
 00524A37    push        0
 00524A39    mov         ecx,dword ptr [ebp-4]
 00524A3C    mov         eax,dword ptr [ebp-4]
 00524A3F    mov         edx,dword ptr [ebp-8]
 00524A42    call        00524AA4
 00524A47    mov         dword ptr [ebp-10],eax
 00524A4A    mov         eax,dword ptr [ebp-10]
 00524A4D    mov         esp,ebp
 00524A4F    pop         ebp
 00524A50    ret         4
end;*}

//00524AA4
{*function sub_00524AA4(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00524AA4    push        ebp
 00524AA5    mov         ebp,esp
 00524AA7    add         esp,0FFFFFFA8
 00524AAA    push        ebx
 00524AAB    xor         ebx,ebx
 00524AAD    mov         dword ptr [ebp-14],ebx
 00524AB0    mov         dword ptr [ebp-1C],ebx
 00524AB3    mov         dword ptr [ebp-0C],ecx
 00524AB6    mov         dword ptr [ebp-8],edx
 00524AB9    mov         dword ptr [ebp-4],eax
 00524ABC    xor         eax,eax
 00524ABE    push        ebp
 00524ABF    push        524FEC
 00524AC4    push        dword ptr fs:[eax]
 00524AC7    mov         dword ptr fs:[eax],esp
 00524ACA    xor         eax,eax
 00524ACC    mov         dword ptr [ebp-10],eax
 00524ACF    mov         eax,dword ptr [ebp-4]
 00524AD2    cmp         dword ptr [eax+28],0
>00524AD6    je          00524FC2
 00524ADC    mov         eax,dword ptr [ebp-4]
 00524ADF    mov         eax,dword ptr [eax+20]
 00524AE2    mov         edx,dword ptr [ebp-4]
 00524AE5    sub         eax,dword ptr [edx+18]
>00524AE8    js          00524FC2
 00524AEE    mov         eax,dword ptr [ebp-4]
 00524AF1    mov         eax,dword ptr [eax+24]
 00524AF4    mov         edx,dword ptr [ebp-4]
 00524AF7    sub         eax,dword ptr [edx+1C]
>00524AFA    js          00524FC2
 00524B00    mov         eax,dword ptr [ebp-4]
 00524B03    mov         eax,dword ptr [eax+10]
 00524B06    mov         edx,dword ptr [ebp-4]
 00524B09    imul        dword ptr [edx+14]
 00524B0C    push        eax
 00524B0D    lea         eax,[ebp-14]
 00524B10    mov         ecx,1
 00524B15    mov         edx,dword ptr ds:[524A54];_DynArr_114_4
 00524B1B    call        @DynArraySetLength
 00524B20    add         esp,4
 00524B23    mov         eax,dword ptr [ebp-4]
 00524B26    mov         eax,dword ptr [eax+10]
 00524B29    mov         edx,dword ptr [ebp-4]
 00524B2C    imul        dword ptr [edx+14]
 00524B2F    push        eax
 00524B30    lea         eax,[ebp-1C]
 00524B33    mov         ecx,1
 00524B38    mov         edx,dword ptr ds:[524A7C];_DynArr_114_5
 00524B3E    call        @DynArraySetLength
 00524B43    add         esp,4
 00524B46    mov         eax,dword ptr [ebp-1C]
 00524B49    call        @DynArrayLength
 00524B4E    mov         edx,eax
 00524B50    mov         ebx,dword ptr ds:[56E100];^gvar_005779AC
 00524B56    mov         ebx,dword ptr [ebx]
 00524B58    mov         eax,dword ptr [ebp-1C]
 00524B5B    or          ecx,0FFFFFFFF
 00524B5E    call        ebx
 00524B60    xor         eax,eax
 00524B62    mov         dword ptr [ebp-48],eax
 00524B65    xor         eax,eax
 00524B67    mov         dword ptr [ebp-4C],eax
 00524B6A    cmp         byte ptr [ebp+8],0
>00524B6E    jne         00524DB7
 00524B74    mov         eax,dword ptr [ebp-4]
 00524B77    mov         eax,dword ptr [eax+14]
 00524B7A    dec         eax
 00524B7B    test        eax,eax
>00524B7D    jl          00524F88
 00524B83    inc         eax
 00524B84    mov         dword ptr [ebp-50],eax
 00524B87    mov         dword ptr [ebp-44],0
 00524B8E    xor         eax,eax
 00524B90    mov         dword ptr [ebp-40],eax
>00524B93    jmp         00524D97
 00524B98    mov         eax,dword ptr [ebp-4]
 00524B9B    mov         eax,dword ptr [eax+2C]
 00524B9E    mov         edx,dword ptr [ebp-48]
 00524BA1    mov         eax,dword ptr [eax+edx*4]
 00524BA4    mov         dword ptr [ebp-24],eax
 00524BA7    cmp         dword ptr [ebp-24],0
>00524BAB    je          00524D91
 00524BB1    mov         eax,dword ptr [ebp-44]
 00524BB4    shl         eax,5
 00524BB7    mov         dword ptr [ebp-2C],eax
 00524BBA    mov         ecx,dword ptr [ebp-0C]
 00524BBD    mov         ecx,dword ptr [ecx+0C]
 00524BC0    mov         edx,dword ptr [ebp-0C]
 00524BC3    mov         edx,dword ptr [edx+4]
 00524BC6    mov         eax,dword ptr [ebp-24]
 00524BC9    shr         eax,10
 00524BCC    and         eax,0FF
 00524BD1    add         eax,dword ptr [ebp-2C]
 00524BD4    call        005130B0
 00524BD9    mov         dword ptr [ebp-34],eax
 00524BDC    mov         ecx,dword ptr [ebp-0C]
 00524BDF    mov         ecx,dword ptr [ecx+0C]
 00524BE2    mov         edx,dword ptr [ebp-0C]
 00524BE5    mov         edx,dword ptr [edx+4]
 00524BE8    mov         eax,dword ptr [ebp-24]
 00524BEB    and         eax,0FF
 00524BF0    add         eax,dword ptr [ebp-2C]
 00524BF3    call        005130B0
 00524BF8    mov         dword ptr [ebp-3C],eax
 00524BFB    mov         eax,dword ptr [ebp-40]
 00524BFE    shl         eax,5
 00524C01    mov         edx,dword ptr [ebp-24]
 00524C04    shr         edx,18
 00524C07    add         eax,edx
 00524C09    mov         ecx,dword ptr [ebp-0C]
 00524C0C    mov         ecx,dword ptr [ecx+8]
 00524C0F    mov         edx,dword ptr [ebp-0C]
 00524C12    mov         edx,dword ptr [edx]
 00524C14    call        005130B0
 00524C19    mov         dword ptr [ebp-30],eax
 00524C1C    mov         eax,dword ptr [ebp-48]
 00524C1F    mov         dword ptr [ebp-20],eax
 00524C22    mov         eax,dword ptr [ebp-24]
 00524C25    shr         eax,8
 00524C28    and         eax,0FF
 00524C2D    cmp         eax,20
>00524C30    jne         00524C9C
 00524C32    mov         eax,dword ptr [ebp-4]
 00524C35    mov         eax,dword ptr [eax+10]
 00524C38    dec         eax
 00524C39    cmp         eax,dword ptr [ebp-40]
>00524C3C    je          00524C9C
 00524C3E    inc         dword ptr [ebp-40]
 00524C41    inc         dword ptr [ebp-48]
 00524C44    mov         eax,dword ptr [ebp-4]
 00524C47    mov         eax,dword ptr [eax+2C]
 00524C4A    mov         edx,dword ptr [ebp-48]
 00524C4D    mov         eax,dword ptr [eax+edx*4]
 00524C50    mov         dword ptr [ebp-28],eax
 00524C53    mov         eax,dword ptr [ebp-4]
 00524C56    mov         eax,dword ptr [eax+10]
 00524C59    cmp         eax,dword ptr [ebp-40]
>00524C5C    je          00524C96
 00524C5E    mov         eax,dword ptr [ebp-28]
 00524C61    shr         eax,10
 00524C64    and         eax,0FF
 00524C69    mov         edx,dword ptr [ebp-24]
 00524C6C    shr         edx,10
 00524C6F    and         edx,0FF
 00524C75    cmp         eax,edx
>00524C77    jne         00524C96
 00524C79    mov         eax,dword ptr [ebp-28]
 00524C7C    and         eax,0FF
 00524C81    mov         edx,dword ptr [ebp-24]
 00524C84    and         edx,0FF
 00524C8A    cmp         eax,edx
>00524C8C    jne         00524C96
 00524C8E    mov         eax,dword ptr [ebp-28]
 00524C91    shr         eax,18
>00524C94    je          00524C3E
 00524C96    dec         dword ptr [ebp-40]
 00524C99    dec         dword ptr [ebp-48]
 00524C9C    mov         eax,dword ptr [ebp-4]
 00524C9F    mov         eax,dword ptr [eax+2C]
 00524CA2    mov         edx,dword ptr [ebp-48]
 00524CA5    mov         eax,dword ptr [eax+edx*4]
 00524CA8    shr         eax,8
 00524CAB    and         eax,0FF
 00524CB0    mov         edx,dword ptr [ebp-40]
 00524CB3    shl         edx,5
 00524CB6    add         eax,edx
 00524CB8    mov         ecx,dword ptr [ebp-0C]
 00524CBB    mov         ecx,dword ptr [ecx+8]
 00524CBE    mov         edx,dword ptr [ebp-0C]
 00524CC1    mov         edx,dword ptr [edx]
 00524CC3    call        005130B0
 00524CC8    mov         dword ptr [ebp-38],eax
 00524CCB    mov         eax,dword ptr [ebp-1C]
 00524CCE    mov         edx,dword ptr [ebp-20]
 00524CD1    mov         eax,dword ptr [eax+edx*4]
 00524CD4    mov         dword ptr [ebp-2C],eax
 00524CD7    xor         eax,eax
 00524CD9    mov         dword ptr [ebp-18],eax
 00524CDC    cmp         dword ptr [ebp-2C],0FFFFFFFF
>00524CE0    je          00524CF0
 00524CE2    mov         eax,dword ptr [ebp-2C]
 00524CE5    add         eax,eax
 00524CE7    mov         edx,dword ptr [ebp-14]
 00524CEA    lea         eax,[edx+eax*8]
 00524CED    mov         dword ptr [ebp-18],eax
 00524CF0    cmp         dword ptr [ebp-18],0
>00524CF4    je          00524D3F
 00524CF6    mov         eax,dword ptr [ebp-18]
 00524CF9    mov         eax,dword ptr [eax]
 00524CFB    cmp         eax,dword ptr [ebp-30]
>00524CFE    jne         00524D3F
 00524D00    mov         eax,dword ptr [ebp-18]
 00524D03    mov         eax,dword ptr [eax+8]
 00524D06    cmp         eax,dword ptr [ebp-38]
>00524D09    jne         00524D3F
 00524D0B    mov         eax,dword ptr [ebp-18]
 00524D0E    mov         eax,dword ptr [eax+0C]
 00524D11    cmp         eax,dword ptr [ebp-34]
>00524D14    jne         00524D3F
 00524D16    mov         eax,dword ptr [ebp-18]
 00524D19    mov         edx,dword ptr [ebp-3C]
 00524D1C    mov         dword ptr [eax+0C],edx
 00524D1F    mov         eax,dword ptr [ebp-4]
 00524D22    mov         eax,dword ptr [eax+14]
 00524D25    dec         eax
 00524D26    cmp         eax,dword ptr [ebp-44]
>00524D29    je          00524D91
 00524D2B    mov         eax,dword ptr [ebp-4]
 00524D2E    mov         eax,dword ptr [eax+10]
 00524D31    add         eax,dword ptr [ebp-20]
 00524D34    mov         edx,dword ptr [ebp-1C]
 00524D37    mov         ecx,dword ptr [ebp-2C]
 00524D3A    mov         dword ptr [edx+eax*4],ecx
>00524D3D    jmp         00524D91
 00524D3F    mov         eax,dword ptr [ebp-4C]
 00524D42    add         eax,eax
 00524D44    mov         edx,dword ptr [ebp-14]
 00524D47    lea         eax,[edx+eax*8]
 00524D4A    mov         dword ptr [ebp-54],eax
 00524D4D    mov         eax,dword ptr [ebp-54]
 00524D50    mov         edx,dword ptr [ebp-30]
 00524D53    mov         dword ptr [eax],edx
 00524D55    mov         eax,dword ptr [ebp-54]
 00524D58    mov         edx,dword ptr [ebp-34]
 00524D5B    mov         dword ptr [eax+4],edx
 00524D5E    mov         eax,dword ptr [ebp-54]
 00524D61    mov         edx,dword ptr [ebp-38]
 00524D64    mov         dword ptr [eax+8],edx
 00524D67    mov         eax,dword ptr [ebp-54]
 00524D6A    mov         edx,dword ptr [ebp-3C]
 00524D6D    mov         dword ptr [eax+0C],edx
 00524D70    mov         eax,dword ptr [ebp-4]
 00524D73    mov         eax,dword ptr [eax+14]
 00524D76    dec         eax
 00524D77    cmp         eax,dword ptr [ebp-44]
>00524D7A    je          00524D8E
 00524D7C    mov         eax,dword ptr [ebp-4]
 00524D7F    mov         eax,dword ptr [eax+10]
 00524D82    add         eax,dword ptr [ebp-20]
 00524D85    mov         edx,dword ptr [ebp-1C]
 00524D88    mov         ecx,dword ptr [ebp-4C]
 00524D8B    mov         dword ptr [edx+eax*4],ecx
 00524D8E    inc         dword ptr [ebp-4C]
 00524D91    inc         dword ptr [ebp-48]
 00524D94    inc         dword ptr [ebp-40]
 00524D97    mov         eax,dword ptr [ebp-4]
 00524D9A    mov         eax,dword ptr [eax+10]
 00524D9D    cmp         eax,dword ptr [ebp-40]
>00524DA0    jg          00524B98
 00524DA6    inc         dword ptr [ebp-44]
 00524DA9    dec         dword ptr [ebp-50]
>00524DAC    jne         00524B8E
>00524DB2    jmp         00524F88
 00524DB7    mov         eax,dword ptr [ebp-4]
 00524DBA    mov         eax,dword ptr [eax+14]
 00524DBD    dec         eax
 00524DBE    test        eax,eax
>00524DC0    jl          00524F88
 00524DC6    inc         eax
 00524DC7    mov         dword ptr [ebp-50],eax
 00524DCA    mov         dword ptr [ebp-44],0
 00524DD1    xor         eax,eax
 00524DD3    mov         dword ptr [ebp-40],eax
>00524DD6    jmp         00524F6D
 00524DDB    mov         eax,dword ptr [ebp-4]
 00524DDE    mov         eax,dword ptr [eax+2C]
 00524DE1    mov         edx,dword ptr [ebp-48]
 00524DE4    mov         eax,dword ptr [eax+edx*4]
 00524DE7    mov         dword ptr [ebp-24],eax
 00524DEA    cmp         dword ptr [ebp-24],0
>00524DEE    je          00524F67
 00524DF4    mov         eax,dword ptr [ebp-44]
 00524DF7    shl         eax,5
 00524DFA    mov         dword ptr [ebp-2C],eax
 00524DFD    mov         ecx,dword ptr [ebp-0C]
 00524E00    mov         ecx,dword ptr [ecx+0C]
 00524E03    mov         edx,dword ptr [ebp-0C]
 00524E06    mov         edx,dword ptr [edx+4]
 00524E09    mov         eax,dword ptr [ebp-2C]
 00524E0C    call        005130B0
 00524E11    mov         dword ptr [ebp-34],eax
 00524E14    mov         ecx,dword ptr [ebp-0C]
 00524E17    mov         ecx,dword ptr [ecx+0C]
 00524E1A    mov         edx,dword ptr [ebp-0C]
 00524E1D    mov         edx,dword ptr [edx+4]
 00524E20    mov         eax,dword ptr [ebp-2C]
 00524E23    add         eax,20
 00524E26    call        005130B0
 00524E2B    mov         dword ptr [ebp-3C],eax
 00524E2E    mov         ecx,dword ptr [ebp-0C]
 00524E31    mov         ecx,dword ptr [ecx+8]
 00524E34    mov         edx,dword ptr [ebp-0C]
 00524E37    mov         edx,dword ptr [edx]
 00524E39    mov         eax,dword ptr [ebp-40]
 00524E3C    shl         eax,5
 00524E3F    call        005130B0
 00524E44    mov         dword ptr [ebp-30],eax
 00524E47    mov         eax,dword ptr [ebp-48]
 00524E4A    mov         dword ptr [ebp-20],eax
 00524E4D    mov         eax,dword ptr [ebp-4]
 00524E50    mov         eax,dword ptr [eax+10]
 00524E53    dec         eax
 00524E54    cmp         eax,dword ptr [ebp-40]
>00524E57    je          00524E85
 00524E59    inc         dword ptr [ebp-40]
 00524E5C    inc         dword ptr [ebp-48]
 00524E5F    mov         eax,dword ptr [ebp-4]
 00524E62    mov         eax,dword ptr [eax+2C]
 00524E65    mov         edx,dword ptr [ebp-48]
 00524E68    mov         eax,dword ptr [eax+edx*4]
 00524E6B    mov         dword ptr [ebp-28],eax
 00524E6E    mov         eax,dword ptr [ebp-4]
 00524E71    mov         eax,dword ptr [eax+10]
 00524E74    cmp         eax,dword ptr [ebp-40]
>00524E77    je          00524E7F
 00524E79    cmp         dword ptr [ebp-28],0
>00524E7D    jne         00524E59
 00524E7F    dec         dword ptr [ebp-40]
 00524E82    dec         dword ptr [ebp-48]
 00524E85    mov         ecx,dword ptr [ebp-0C]
 00524E88    mov         ecx,dword ptr [ecx+8]
 00524E8B    mov         edx,dword ptr [ebp-0C]
 00524E8E    mov         edx,dword ptr [edx]
 00524E90    mov         eax,dword ptr [ebp-40]
 00524E93    shl         eax,5
 00524E96    add         eax,20
 00524E99    call        005130B0
 00524E9E    mov         dword ptr [ebp-38],eax
 00524EA1    mov         eax,dword ptr [ebp-1C]
 00524EA4    mov         edx,dword ptr [ebp-20]
 00524EA7    mov         eax,dword ptr [eax+edx*4]
 00524EAA    mov         dword ptr [ebp-2C],eax
 00524EAD    xor         eax,eax
 00524EAF    mov         dword ptr [ebp-18],eax
 00524EB2    cmp         dword ptr [ebp-2C],0FFFFFFFF
>00524EB6    je          00524EC6
 00524EB8    mov         eax,dword ptr [ebp-2C]
 00524EBB    add         eax,eax
 00524EBD    mov         edx,dword ptr [ebp-14]
 00524EC0    lea         eax,[edx+eax*8]
 00524EC3    mov         dword ptr [ebp-18],eax
 00524EC6    cmp         dword ptr [ebp-18],0
>00524ECA    je          00524F15
 00524ECC    mov         eax,dword ptr [ebp-18]
 00524ECF    mov         eax,dword ptr [eax]
 00524ED1    cmp         eax,dword ptr [ebp-30]
>00524ED4    jne         00524F15
 00524ED6    mov         eax,dword ptr [ebp-18]
 00524ED9    mov         eax,dword ptr [eax+8]
 00524EDC    cmp         eax,dword ptr [ebp-38]
>00524EDF    jne         00524F15
 00524EE1    mov         eax,dword ptr [ebp-18]
 00524EE4    mov         eax,dword ptr [eax+0C]
 00524EE7    cmp         eax,dword ptr [ebp-34]
>00524EEA    jne         00524F15
 00524EEC    mov         eax,dword ptr [ebp-18]
 00524EEF    mov         edx,dword ptr [ebp-3C]
 00524EF2    mov         dword ptr [eax+0C],edx
 00524EF5    mov         eax,dword ptr [ebp-4]
 00524EF8    mov         eax,dword ptr [eax+14]
 00524EFB    dec         eax
 00524EFC    cmp         eax,dword ptr [ebp-44]
>00524EFF    je          00524F67
 00524F01    mov         eax,dword ptr [ebp-4]
 00524F04    mov         eax,dword ptr [eax+10]
 00524F07    add         eax,dword ptr [ebp-20]
 00524F0A    mov         edx,dword ptr [ebp-1C]
 00524F0D    mov         ecx,dword ptr [ebp-2C]
 00524F10    mov         dword ptr [edx+eax*4],ecx
>00524F13    jmp         00524F67
 00524F15    mov         eax,dword ptr [ebp-4C]
 00524F18    add         eax,eax
 00524F1A    mov         edx,dword ptr [ebp-14]
 00524F1D    lea         eax,[edx+eax*8]
 00524F20    mov         dword ptr [ebp-58],eax
 00524F23    mov         eax,dword ptr [ebp-58]
 00524F26    mov         edx,dword ptr [ebp-30]
 00524F29    mov         dword ptr [eax],edx
 00524F2B    mov         eax,dword ptr [ebp-58]
 00524F2E    mov         edx,dword ptr [ebp-34]
 00524F31    mov         dword ptr [eax+4],edx
 00524F34    mov         eax,dword ptr [ebp-58]
 00524F37    mov         edx,dword ptr [ebp-38]
 00524F3A    mov         dword ptr [eax+8],edx
 00524F3D    mov         eax,dword ptr [ebp-58]
 00524F40    mov         edx,dword ptr [ebp-3C]
 00524F43    mov         dword ptr [eax+0C],edx
 00524F46    mov         eax,dword ptr [ebp-4]
 00524F49    mov         eax,dword ptr [eax+14]
 00524F4C    dec         eax
 00524F4D    cmp         eax,dword ptr [ebp-44]
>00524F50    je          00524F64
 00524F52    mov         eax,dword ptr [ebp-4]
 00524F55    mov         eax,dword ptr [eax+10]
 00524F58    add         eax,dword ptr [ebp-20]
 00524F5B    mov         edx,dword ptr [ebp-1C]
 00524F5E    mov         ecx,dword ptr [ebp-4C]
 00524F61    mov         dword ptr [edx+eax*4],ecx
 00524F64    inc         dword ptr [ebp-4C]
 00524F67    inc         dword ptr [ebp-48]
 00524F6A    inc         dword ptr [ebp-40]
 00524F6D    mov         eax,dword ptr [ebp-4]
 00524F70    mov         eax,dword ptr [eax+10]
 00524F73    cmp         eax,dword ptr [ebp-40]
>00524F76    jg          00524DDB
 00524F7C    inc         dword ptr [ebp-44]
 00524F7F    dec         dword ptr [ebp-50]
>00524F82    jne         00524DD1
 00524F88    mov         eax,dword ptr [ebp-4C]
 00524F8B    mov         dword ptr [ebp-10],eax
 00524F8E    cmp         byte ptr [ebp+0C],0
>00524F92    jne         00524FC2
 00524F94    mov         eax,dword ptr [ebp-4C]
 00524F97    dec         eax
 00524F98    test        eax,eax
>00524F9A    jl          00524FC2
 00524F9C    inc         eax
 00524F9D    mov         dword ptr [ebp-50],eax
 00524FA0    mov         dword ptr [ebp-48],0
 00524FA7    mov         eax,dword ptr [ebp-48]
 00524FAA    add         eax,eax
 00524FAC    mov         edx,dword ptr [ebp-14]
 00524FAF    lea         edx,[edx+eax*8]
 00524FB2    mov         eax,dword ptr [ebp-8]
 00524FB5    call        005153BC
 00524FBA    inc         dword ptr [ebp-48]
 00524FBD    dec         dword ptr [ebp-50]
>00524FC0    jne         00524FA7
 00524FC2    xor         eax,eax
 00524FC4    pop         edx
 00524FC5    pop         ecx
 00524FC6    pop         ecx
 00524FC7    mov         dword ptr fs:[eax],edx
 00524FCA    push        524FF3
 00524FCF    lea         eax,[ebp-1C]
 00524FD2    mov         edx,dword ptr ds:[524A7C];_DynArr_114_5
 00524FD8    call        @DynArrayClear
 00524FDD    lea         eax,[ebp-14]
 00524FE0    mov         edx,dword ptr ds:[524A54];_DynArr_114_4
 00524FE6    call        @DynArrayClear
 00524FEB    ret
>00524FEC    jmp         @HandleFinally
>00524FF1    jmp         00524FCF
 00524FF3    mov         eax,dword ptr [ebp-10]
 00524FF6    pop         ebx
 00524FF7    mov         esp,ebp
 00524FF9    pop         ebp
 00524FFA    ret         8
end;*}

//00525000
{*function sub_00525000(?:TMicroTilesMap; ?:?):?;
begin
 00525000    push        ebp
 00525001    mov         ebp,esp
 00525003    add         esp,0FFFFFFEC
 00525006    mov         dword ptr [ebp-8],edx
 00525009    mov         dword ptr [ebp-4],eax
 0052500C    lea         ecx,[ebp-11]
 0052500F    mov         edx,dword ptr [ebp-8]
 00525012    mov         eax,dword ptr [ebp-4]
 00525015    call        00514EA0
 0052501A    mov         dword ptr [ebp-0C],eax
 0052501D    cmp         byte ptr [ebp-11],0
>00525021    je          00525040
 00525023    mov         eax,30
 00525028    call        @GetMem
 0052502D    mov         dword ptr [ebp-10],eax
 00525030    mov         eax,dword ptr [ebp-10]
 00525033    call        00523BA4
 00525038    mov         eax,dword ptr [ebp-0C]
 0052503B    mov         edx,dword ptr [ebp-10]
 0052503E    mov         dword ptr [eax],edx
 00525040    mov         eax,dword ptr [ebp-0C]
 00525043    mov         esp,ebp
 00525045    pop         ebp
 00525046    ret
end;*}

//00525048
{*function sub_00525048(?:?; ?:?):?;
begin
 00525048    push        ebp
 00525049    mov         ebp,esp
 0052504B    add         esp,0FFFFFFEC
 0052504E    mov         dword ptr [ebp-0C],ecx
 00525051    mov         dword ptr [ebp-8],edx
 00525054    mov         dword ptr [ebp-4],eax
 00525057    mov         ecx,dword ptr [ebp-0C]
 0052505A    mov         edx,dword ptr [ebp-8]
 0052505D    mov         eax,dword ptr [ebp-4]
 00525060    call        00515080
 00525065    mov         dword ptr [ebp-14],eax
 00525068    mov         eax,dword ptr [ebp-14]
 0052506B    call        00523BCC
 00525070    mov         edx,30
 00525075    mov         eax,dword ptr [ebp-14]
 00525078    call        @FreeMem
 0052507D    xor         eax,eax
 0052507F    mov         dword ptr [ebp-10],eax
 00525082    mov         eax,dword ptr [ebp-10]
 00525085    mov         esp,ebp
 00525087    pop         ebp
 00525088    ret
end;*}

//0052508C
{*function sub_0052508C(?:TMicroTilesMap; ?:Pointer):?;
begin
 0052508C    push        ebp
 0052508D    mov         ebp,esp
 0052508F    add         esp,0FFFFFFF4
 00525092    mov         dword ptr [ebp-8],edx
 00525095    mov         dword ptr [ebp-4],eax
 00525098    mov         edx,dword ptr [ebp-8]
 0052509B    mov         eax,dword ptr [ebp-4]
 0052509E    call        005151D8
 005250A3    mov         dword ptr [ebp-0C],eax
 005250A6    mov         eax,dword ptr [ebp-0C]
 005250A9    mov         esp,ebp
 005250AB    pop         ebp
 005250AC    ret
end;*}

//005250B0
{*constructor sub_005250B0(?:?);
begin
 005250B0    push        ebp
 005250B1    mov         ebp,esp
 005250B3    add         esp,0FFFFFFF4
 005250B6    test        dl,dl
>005250B8    je          005250C2
 005250BA    add         esp,0FFFFFFF0
 005250BD    call        @ClassCreate
 005250C2    mov         dword ptr [ebp-0C],ecx
 005250C5    mov         byte ptr [ebp-5],dl
 005250C8    mov         dword ptr [ebp-4],eax
 005250CB    mov         eax,dword ptr [ebp+8]
 005250CE    push        eax
 005250CF    mov         ecx,dword ptr [ebp-0C]
 005250D2    xor         edx,edx
 005250D4    mov         eax,dword ptr [ebp-4]
 005250D7    call        005236EC
 005250DC    mov         dl,1
 005250DE    mov         eax,[005238D0];TMicroTilesMap
 005250E3    call        TObject.Create;TMicroTilesMap.Create
 005250E8    mov         edx,dword ptr [ebp-4]
 005250EB    mov         dword ptr [edx+0BC],eax;TMicroTilesRepaintOptimizer.?fBC:TMicroTilesMap
 005250F1    mov         dl,1
 005250F3    mov         eax,[0041D46C];TList
 005250F8    call        TObject.Create;TList.Create
 005250FD    mov         edx,dword ptr [ebp-4]
 00525100    mov         dword ptr [edx+0B8],eax;TMicroTilesRepaintOptimizer.?fB8:TList
 00525106    mov         dl,1
 00525108    mov         eax,[00512850];TPerfTimer
 0052510D    call        TObject.Create;TPerfTimer.Create
 00525112    mov         edx,dword ptr [ebp-4]
 00525115    mov         dword ptr [edx+0C4],eax;TMicroTilesRepaintOptimizer.?fC4:TPerfTimer
 0052511B    mov         eax,dword ptr [ebp-4]
 0052511E    mov         byte ptr [eax+0C3],1;TMicroTilesRepaintOptimizer.?fC3:byte
 00525125    mov         eax,dword ptr [ebp-4]
 00525128    add         eax,58;TMicroTilesRepaintOptimizer.?f58:?
 0052512B    call        00523BA4
 00525130    mov         eax,dword ptr [ebp-4]
 00525133    add         eax,28;TMicroTilesRepaintOptimizer.?f28:?
 00525136    call        00523BA4
 0052513B    mov         eax,dword ptr [ebp-4]
 0052513E    add         eax,88;TMicroTilesRepaintOptimizer.?f88:?
 00525143    call        00523BA4
 00525148    mov         eax,dword ptr [ebp-4]
 0052514B    cmp         byte ptr [ebp-5],0
>0052514F    je          00525160
 00525151    call        @AfterConstruction
 00525156    pop         dword ptr fs:[0]
 0052515D    add         esp,0C
 00525160    mov         eax,dword ptr [ebp-4]
 00525163    mov         esp,ebp
 00525165    pop         ebp
 00525166    ret         4
end;*}

//0052516C
destructor TMicroTilesRepaintOptimizer.Destroy;
begin
{*
 0052516C    push        ebp
 0052516D    mov         ebp,esp
 0052516F    add         esp,0FFFFFFF8
 00525172    call        @BeforeDestruction
 00525177    mov         byte ptr [ebp-5],dl
 0052517A    mov         dword ptr [ebp-4],eax
 0052517D    mov         eax,dword ptr [ebp-4]
 00525180    add         eax,88
 00525185    call        00523BCC
 0052518A    mov         eax,dword ptr [ebp-4]
 0052518D    add         eax,28
 00525190    call        00523BCC
 00525195    mov         eax,dword ptr [ebp-4]
 00525198    add         eax,58
 0052519B    call        00523BCC
 005251A0    mov         eax,dword ptr [ebp-4]
 005251A3    mov         eax,dword ptr [eax+0C4]
 005251A9    call        TObject.Free
 005251AE    mov         eax,dword ptr [ebp-4]
 005251B1    mov         eax,dword ptr [eax+0B8]
 005251B7    call        TObject.Free
 005251BC    mov         eax,dword ptr [ebp-4]
 005251BF    mov         eax,dword ptr [eax+0BC]
 005251C5    call        TObject.Free
 005251CA    mov         dl,byte ptr [ebp-5]
 005251CD    and         dl,0FC
 005251D0    mov         eax,dword ptr [ebp-4]
 005251D3    call        TCustomRepaintOptimizer.Destroy
 005251D8    cmp         byte ptr [ebp-5],0
>005251DC    jle         005251E6
 005251DE    mov         eax,dword ptr [ebp-4]
 005251E1    call        @ClassDestroy
 005251E6    pop         ecx
 005251E7    pop         ecx
 005251E8    pop         ebp
 005251E9    ret
*}
end;

//005251EC
{*procedure sub_005251EC(?:?; ?:?; ?:?);
begin
 005251EC    push        ebp
 005251ED    mov         ebp,esp
 005251EF    add         esp,0FFFFFFF4
 005251F2    mov         dword ptr [ebp-8],ecx
 005251F5    mov         dword ptr [ebp-0C],edx
 005251F8    mov         dword ptr [ebp-4],eax
 005251FB    mov         eax,dword ptr [ebp-4]
 005251FE    call        00525468
 00525203    mov         eax,dword ptr [ebp+8]
 00525206    push        eax
 00525207    mov         ecx,dword ptr [ebp-8]
 0052520A    mov         eax,dword ptr [ebp-4]
 0052520D    lea         edx,[eax+88];TMicroTilesRepaintOptimizer.?f88:?
 00525213    mov         eax,dword ptr [ebp-4]
 00525216    call        0052522C
 0052521B    mov         eax,dword ptr [ebp-4]
 0052521E    mov         byte ptr [eax+0C2],1;TMicroTilesRepaintOptimizer.?fC2:byte
 00525225    mov         esp,ebp
 00525227    pop         ebp
 00525228    ret         4
end;*}

//0052522C
{*procedure sub_0052522C(?:TMicroTilesRepaintOptimizer; ?:?; ?:?; ?:?; ?:?);
begin
 0052522C    push        ebp
 0052522D    mov         ebp,esp
 0052522F    add         esp,0FFFFFFE0
 00525232    push        esi
 00525233    push        edi
 00525234    mov         dword ptr [ebp-0C],ecx
 00525237    mov         dword ptr [ebp-8],edx
 0052523A    mov         dword ptr [ebp-4],eax
 0052523D    test        byte ptr [ebp+0B],40
>00525241    je          00525292
 00525243    mov         eax,dword ptr [ebp+8]
 00525246    and         eax,0FFFFFF
 0052524B    mov         dword ptr [ebp-10],eax
 0052524E    mov         eax,dword ptr [ebp-0C]
 00525251    mov         esi,eax
 00525253    lea         edi,[ebp-20]
 00525256    movs        dword ptr [edi],dword ptr [esi]
 00525257    movs        dword ptr [edi],dword ptr [esi]
 00525258    movs        dword ptr [edi],dword ptr [esi]
 00525259    movs        dword ptr [edi],dword ptr [esi]
 0052525A    lea         eax,[ebp-20]
 0052525D    mov         ecx,dword ptr [ebp-10]
 00525260    mov         edx,dword ptr [ebp-10]
 00525263    call        00523694
 00525268    mov         eax,dword ptr [ebp-18]
 0052526B    push        eax
 0052526C    mov         eax,dword ptr [ebp-14]
 0052526F    push        eax
 00525270    mov         eax,dword ptr [ebp-10]
 00525273    push        eax
 00525274    mov         eax,dword ptr [ebp-4]
 00525277    cmp         dword ptr [eax+0C8],0;TMicroTilesRepaintOptimizer.?fC8:dword
 0052527E    setg        al
 00525281    push        eax
 00525282    mov         eax,dword ptr [ebp-8]
 00525285    mov         ecx,dword ptr [ebp-1C]
 00525288    mov         edx,dword ptr [ebp-20]
 0052528B    call        00523E70
>00525290    jmp         005252AA
 00525292    mov         eax,dword ptr [ebp-4]
 00525295    cmp         dword ptr [eax+0C8],0;TMicroTilesRepaintOptimizer.?fC8:dword
 0052529C    setg        cl
 0052529F    mov         edx,dword ptr [ebp-0C]
 005252A2    mov         eax,dword ptr [ebp-8]
 005252A5    call        00524050
 005252AA    pop         edi
 005252AB    pop         esi
 005252AC    mov         esp,ebp
 005252AE    pop         ebp
 005252AF    ret         4
end;*}

//005252B4
{*procedure sub_005252B4(?:?; ?:?);
begin
 005252B4    push        ebp
 005252B5    mov         ebp,esp
 005252B7    add         esp,0FFFFFFF4
 005252BA    mov         dword ptr [ebp-8],ecx
 005252BD    mov         dword ptr [ebp-0C],edx
 005252C0    mov         dword ptr [ebp-4],eax
 005252C3    mov         eax,dword ptr [ebp-4]
 005252C6    cmp         byte ptr [eax+0C1],0;TMicroTilesRepaintOptimizer.?fC1:byte
>005252CD    je          00525300
 005252CF    mov         eax,dword ptr [ebp-8]
 005252D2    call        0052A880
 005252D7    test        al,al
>005252D9    jne         00525300
 005252DB    mov         edx,dword ptr [ebp-8]
 005252DE    mov         eax,dword ptr [ebp-4]
 005252E1    mov         eax,dword ptr [eax+0B8];TMicroTilesRepaintOptimizer.?fB8:TList
 005252E7    call        TList.Add
 005252EC    mov         dl,1
 005252EE    mov         eax,dword ptr [ebp-8]
 005252F1    call        0052A89C
 005252F6    mov         eax,dword ptr [ebp-4]
 005252F9    mov         byte ptr [eax+0C2],1;TMicroTilesRepaintOptimizer.?fC2:byte
 00525300    mov         esp,ebp
 00525302    pop         ebp
 00525303    ret
end;*}

//00525304
{*procedure sub_00525304(?:?; ?:?; ?:?);
begin
 00525304    push        ebp
 00525305    mov         ebp,esp
 00525307    add         esp,0FFFFFFDC
 0052530A    mov         byte ptr [ebp-5],cl
 0052530D    mov         dword ptr [ebp-14],edx
 00525310    mov         dword ptr [ebp-4],eax
 00525313    mov         al,byte ptr [ebp-5]
 00525316    sub         al,2
>00525318    jb          00525329
>0052531A    je          00525367
 0052531C    dec         al
>0052531E    je          005253C4
>00525324    jmp         00525460
 00525329    mov         eax,dword ptr [ebp-4]
 0052532C    mov         eax,dword ptr [eax+0BC];TMicroTilesRepaintOptimizer.?fBC:TMicroTilesMap
 00525332    mov         edx,dword ptr [ebp+0C]
 00525335    call        00525000
 0052533A    mov         eax,dword ptr [eax]
 0052533C    mov         dword ptr [ebp-0C],eax
 0052533F    lea         edx,[ebp-24]
 00525342    mov         eax,dword ptr [ebp-4]
 00525345    mov         eax,dword ptr [eax+10];TMicroTilesRepaintOptimizer.?f10:dword
 00525348    call        00522F30
 0052534D    lea         edx,[ebp-24]
 00525350    mov         eax,dword ptr [ebp-0C]
 00525353    call        00523BE4
 00525358    mov         eax,dword ptr [ebp-4]
 0052535B    mov         byte ptr [eax+0C1],1;TMicroTilesRepaintOptimizer.?fC1:byte
>00525362    jmp         00525460
 00525367    mov         eax,dword ptr [ebp-4]
 0052536A    cmp         byte ptr [eax+0C1],0;TMicroTilesRepaintOptimizer.?fC1:byte
>00525371    je          0052539D
 00525373    mov         eax,dword ptr [ebp-4]
 00525376    mov         eax,dword ptr [eax+0BC];TMicroTilesRepaintOptimizer.?fBC:TMicroTilesMap
 0052537C    mov         edx,dword ptr [ebp+0C]
 0052537F    call        0052508C
 00525384    mov         edx,eax
 00525386    mov         eax,dword ptr [ebp-4]
 00525389    add         eax,58;TMicroTilesRepaintOptimizer.?f58:?
 0052538C    xor         ecx,ecx
 0052538E    call        00524870
 00525393    mov         eax,dword ptr [ebp-4]
 00525396    mov         byte ptr [eax+0C2],1;TMicroTilesRepaintOptimizer.?fC2:byte
 0052539D    mov         eax,dword ptr [ebp-4]
 005253A0    mov         eax,dword ptr [eax+0B8];TMicroTilesRepaintOptimizer.?fB8:TList
 005253A6    mov         edx,dword ptr [ebp+0C]
 005253A9    call        004204F0
 005253AE    mov         eax,dword ptr [ebp-4]
 005253B1    mov         eax,dword ptr [eax+0BC];TMicroTilesRepaintOptimizer.?fBC:TMicroTilesMap
 005253B7    mov         edx,dword ptr [ebp+0C]
 005253BA    call        0051511C
>005253BF    jmp         00525460
 005253C4    mov         eax,dword ptr [ebp-4]
 005253C7    cmp         byte ptr [eax+0C1],0;TMicroTilesRepaintOptimizer.?fC1:byte
>005253CE    je          00525448
 005253D0    mov         eax,dword ptr [ebp-4]
 005253D3    mov         ecx,dword ptr [eax+0BC];TMicroTilesRepaintOptimizer.?fBC:TMicroTilesMap
 005253D9    mov         dl,1
 005253DB    mov         eax,[00514BBC];TPointerMapIterator
 005253E0    call        TPointerMapIterator.Create;TPointerMapIterator.Create
 005253E5    mov         dword ptr [ebp-10],eax
 005253E8    xor         eax,eax
 005253EA    push        ebp
 005253EB    push        52542F
 005253F0    push        dword ptr fs:[eax]
 005253F3    mov         dword ptr fs:[eax],esp
>005253F6    jmp         0052540D
 005253F8    mov         eax,dword ptr [ebp-10]
 005253FB    mov         eax,dword ptr [eax+0C];TPointerMapIterator..:dword
 005253FE    mov         edx,eax
 00525400    mov         eax,dword ptr [ebp-4]
 00525403    add         eax,58;TMicroTilesRepaintOptimizer.?f58:?
 00525406    xor         ecx,ecx
 00525408    call        00524870
 0052540D    mov         eax,dword ptr [ebp-10]
 00525410    call        005152DC
 00525415    test        al,al
>00525417    jne         005253F8
 00525419    xor         eax,eax
 0052541B    pop         edx
 0052541C    pop         ecx
 0052541D    pop         ecx
 0052541E    mov         dword ptr fs:[eax],edx
 00525421    push        525436
 00525426    mov         eax,dword ptr [ebp-10]
 00525429    call        TObject.Free
 0052542E    ret
>0052542F    jmp         @HandleFinally
>00525434    jmp         00525426
 00525436    mov         eax,dword ptr [ebp-4]
 00525439    mov         byte ptr [eax+0C2],1;TMicroTilesRepaintOptimizer.?fC2:byte
 00525440    mov         eax,dword ptr [ebp-4]
 00525443    call        00525888
 00525448    mov         eax,dword ptr [ebp-4]
 0052544B    mov         eax,dword ptr [eax+0BC];TMicroTilesRepaintOptimizer.?fBC:TMicroTilesMap
 00525451    call        00514FC4
 00525456    mov         eax,dword ptr [ebp-4]
 00525459    mov         byte ptr [eax+0C1],1;TMicroTilesRepaintOptimizer.?fC1:byte
 00525460    mov         esp,ebp
 00525462    pop         ebp
 00525463    ret         8
end;*}

//00525468
procedure sub_00525468(?:TMicroTilesRepaintOptimizer);
begin
{*
 00525468    push        ebp
 00525469    mov         ebp,esp
 0052546B    push        ecx
 0052546C    mov         dword ptr [ebp-4],eax
 0052546F    mov         eax,dword ptr [ebp-4]
 00525472    cmp         byte ptr [eax+0C0],0;TMicroTilesRepaintOptimizer.?fC0:byte
>00525479    jne         005254BA
 0052547B    mov         eax,dword ptr [ebp-4]
 0052547E    lea         edx,[eax+14];TMicroTilesRepaintOptimizer.?f14:?
 00525481    mov         eax,dword ptr [ebp-4]
 00525484    add         eax,28;TMicroTilesRepaintOptimizer.?f28:?
 00525487    call        00523BE4
 0052548C    mov         eax,dword ptr [ebp-4]
 0052548F    lea         edx,[eax+14];TMicroTilesRepaintOptimizer.?f14:?
 00525492    mov         eax,dword ptr [ebp-4]
 00525495    add         eax,58;TMicroTilesRepaintOptimizer.?f58:?
 00525498    call        00523BE4
 0052549D    mov         eax,dword ptr [ebp-4]
 005254A0    lea         edx,[eax+14];TMicroTilesRepaintOptimizer.?f14:?
 005254A3    mov         eax,dword ptr [ebp-4]
 005254A6    add         eax,88;TMicroTilesRepaintOptimizer.?f88:?
 005254AB    call        00523BE4
 005254B0    mov         eax,dword ptr [ebp-4]
 005254B3    mov         byte ptr [eax+0C0],1;TMicroTilesRepaintOptimizer.?fC0:byte
 005254BA    pop         ecx
 005254BB    pop         ebp
 005254BC    ret
*}
end;

//005254C0
{*procedure sub_005254C0(?:?; ?:?);
begin
 005254C0    push        ebp
 005254C1    mov         ebp,esp
 005254C3    add         esp,0FFFFFFE4
 005254C6    push        esi
 005254C7    push        edi
 005254C8    mov         dword ptr [ebp-0C],ecx
 005254CB    mov         dword ptr [ebp-8],edx
 005254CE    mov         dword ptr [ebp-4],eax
 005254D1    mov         eax,dword ptr [ebp-0C]
 005254D4    push        eax
 005254D5    lea         eax,[ebp-1C]
 005254D8    push        eax
 005254D9    mov         ecx,dword ptr [ebp-8]
 005254DC    xor         edx,edx
 005254DE    xor         eax,eax
 005254E0    call        0051DC50
 005254E5    mov         eax,dword ptr [ebp-4]
 005254E8    lea         esi,[ebp-1C]
 005254EB    lea         edi,[eax+14];TMicroTilesRepaintOptimizer.?f14:?
 005254EE    movs        dword ptr [edi],dword ptr [esi]
 005254EF    movs        dword ptr [edi],dword ptr [esi]
 005254F0    movs        dword ptr [edi],dword ptr [esi]
 005254F1    movs        dword ptr [edi],dword ptr [esi]
 005254F2    mov         eax,dword ptr [ebp-4]
 005254F5    mov         edx,dword ptr [eax]
 005254F7    call        dword ptr [edx+28];TMicroTilesRepaintOptimizer.sub_00525500
 005254FA    pop         edi
 005254FB    pop         esi
 005254FC    mov         esp,ebp
 005254FE    pop         ebp
 005254FF    ret
end;*}

//00525500
procedure sub_00525500;
begin
{*
 00525500    push        ebp
 00525501    mov         ebp,esp
 00525503    add         esp,0FFFFFFEC
 00525506    push        esi
 00525507    push        edi
 00525508    mov         dword ptr [ebp-4],eax
 0052550B    mov         eax,dword ptr [ebp-4]
 0052550E    mov         byte ptr [eax+0C0],0;TMicroTilesRepaintOptimizer.?fC0:byte
 00525515    mov         eax,dword ptr [ebp-4]
 00525518    mov         byte ptr [eax+0C1],0;TMicroTilesRepaintOptimizer.?fC1:byte
 0052551F    mov         eax,dword ptr [ebp-4]
 00525522    call        005255A0
 00525527    mov         eax,dword ptr [ebp-4]
 0052552A    add         eax,88;TMicroTilesRepaintOptimizer.?f88:?
 0052552F    mov         edx,2020
 00525534    call        00523C68
 00525539    mov         eax,dword ptr [ebp-4]
 0052553C    mov         eax,dword ptr [eax+9C];TMicroTilesRepaintOptimizer.?f9C:dword
 00525542    push        eax
 00525543    lea         eax,[ebp-14]
 00525546    push        eax
 00525547    mov         eax,dword ptr [ebp-4]
 0052554A    mov         ecx,dword ptr [eax+98];TMicroTilesRepaintOptimizer.?f98:dword
 00525550    xor         edx,edx
 00525552    xor         eax,eax
 00525554    call        0051DC50
 00525559    mov         eax,dword ptr [ebp-4]
 0052555C    lea         esi,[ebp-14]
 0052555F    lea         edi,[eax+0A0];TMicroTilesRepaintOptimizer.?fA0:?
 00525565    movs        dword ptr [edi],dword ptr [esi]
 00525566    movs        dword ptr [edi],dword ptr [esi]
 00525567    movs        dword ptr [edi],dword ptr [esi]
 00525568    movs        dword ptr [edi],dword ptr [esi]
 00525569    mov         eax,dword ptr [ebp-4]
 0052556C    mov         byte ptr [eax+0C2],1;TMicroTilesRepaintOptimizer.?fC2:byte
 00525573    pop         edi
 00525574    pop         esi
 00525575    mov         esp,ebp
 00525577    pop         ebp
 00525578    ret
*}
end;

//0052557C
{*function sub_0052557C:?;
begin
 0052557C    push        ebp
 0052557D    mov         ebp,esp
 0052557F    add         esp,0FFFFFFF8
 00525582    mov         dword ptr [ebp-4],eax
 00525585    mov         eax,dword ptr [ebp-4]
 00525588    call        005255A0
 0052558D    mov         eax,dword ptr [ebp-4]
 00525590    mov         al,byte ptr [eax+0C2];TMicroTilesRepaintOptimizer.?fC2:byte
 00525596    mov         byte ptr [ebp-5],al
 00525599    mov         al,byte ptr [ebp-5]
 0052559C    pop         ecx
 0052559D    pop         ecx
 0052559E    pop         ebp
 0052559F    ret
end;*}

//005255A0
procedure sub_005255A0(?:TMicroTilesRepaintOptimizer);
begin
{*
 005255A0    push        ebp
 005255A1    mov         ebp,esp
 005255A3    add         esp,0FFFFFFE0
 005255A6    mov         dword ptr [ebp-4],eax
 005255A9    mov         eax,dword ptr [ebp-4]
 005255AC    cmp         byte ptr [eax+0C1],0;TMicroTilesRepaintOptimizer.?fC1:byte
>005255B3    jne         00525687
 005255B9    mov         eax,dword ptr [ebp-4]
 005255BC    call        00525468
 005255C1    mov         eax,dword ptr [ebp-4]
 005255C4    mov         eax,dword ptr [eax+8];TMicroTilesRepaintOptimizer.?f8:TList
 005255C7    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005255CA    dec         eax
 005255CB    test        eax,eax
>005255CD    jl          00525665
 005255D3    inc         eax
 005255D4    mov         dword ptr [ebp-18],eax
 005255D7    mov         dword ptr [ebp-8],0
 005255DE    mov         edx,dword ptr [ebp-8]
 005255E1    mov         eax,dword ptr [ebp-4]
 005255E4    mov         eax,dword ptr [eax+8];TMicroTilesRepaintOptimizer.?f8:TList
 005255E7    call        TList.Get
 005255EC    mov         dword ptr [ebp-1C],eax
 005255EF    mov         eax,dword ptr [ebp-1C]
 005255F2    call        00529E80
 005255F7    dec         eax
 005255F8    test        eax,eax
>005255FA    jl          00525659
 005255FC    inc         eax
 005255FD    mov         dword ptr [ebp-20],eax
 00525600    mov         dword ptr [ebp-0C],0
 00525607    mov         edx,dword ptr [ebp-0C]
 0052560A    mov         eax,dword ptr [ebp-1C]
 0052560D    call        00529E9C
 00525612    mov         dword ptr [ebp-14],eax
 00525615    mov         edx,dword ptr [ebp-14]
 00525618    mov         eax,dword ptr [ebp-4]
 0052561B    mov         eax,dword ptr [eax+0BC];TMicroTilesRepaintOptimizer.?fBC:TMicroTilesMap
 00525621    call        00525000
 00525626    mov         eax,dword ptr [eax]
 00525628    mov         dword ptr [ebp-10],eax
 0052562B    mov         eax,dword ptr [ebp-4]
 0052562E    lea         edx,[eax+14];TMicroTilesRepaintOptimizer.?f14:?
 00525631    mov         eax,dword ptr [ebp-10]
 00525634    call        00523BE4
 00525639    mov         edx,dword ptr [ebp-10]
 0052563C    mov         ecx,dword ptr [ebp-14]
 0052563F    mov         eax,dword ptr [ebp-4]
 00525642    call        005258F4
 00525647    xor         edx,edx
 00525649    mov         eax,dword ptr [ebp-14]
 0052564C    call        0052A89C
 00525651    inc         dword ptr [ebp-0C]
 00525654    dec         dword ptr [ebp-20]
>00525657    jne         00525607
 00525659    inc         dword ptr [ebp-8]
 0052565C    dec         dword ptr [ebp-18]
>0052565F    jne         005255DE
 00525665    mov         eax,dword ptr [ebp-4]
 00525668    mov         eax,dword ptr [eax+0B8];TMicroTilesRepaintOptimizer.?fB8:TList
 0052566E    mov         edx,dword ptr [eax]
 00525670    call        dword ptr [edx+8];TList.sub_00420074
 00525673    mov         eax,dword ptr [ebp-4]
 00525676    mov         byte ptr [eax+0C1],1;TMicroTilesRepaintOptimizer.?fC1:byte
 0052567D    mov         eax,dword ptr [ebp-4]
 00525680    mov         byte ptr [eax+0C2],0;TMicroTilesRepaintOptimizer.?fC2:byte
 00525687    mov         esp,ebp
 00525689    pop         ebp
 0052568A    ret
*}
end;

//0052568C
{*procedure sub_0052568C(?:?);
begin
 0052568C    push        ebp
 0052568D    mov         ebp,esp
 0052568F    add         esp,0FFFFFFF8
 00525692    mov         dword ptr [ebp-8],edx
 00525695    mov         dword ptr [ebp-4],eax
 00525698    mov         edx,dword ptr [ebp-8]
 0052569B    mov         eax,dword ptr [ebp-4]
 0052569E    call        005237FC
 005256A3    mov         eax,dword ptr [ebp-4]
 005256A6    mov         edx,dword ptr [eax]
 005256A8    call        dword ptr [edx];TMicroTilesRepaintOptimizer.sub_005237C4
 005256AA    test        al,al
>005256AC    je          005256E1
 005256AE    mov         eax,dword ptr [ebp-8]
 005256B1    mov         edx,dword ptr [ebp-4]
 005256B4    mov         dword ptr [eax+3C],edx
 005256B7    mov         edx,dword ptr [edx]
 005256B9    mov         edx,dword ptr [edx+38];TMicroTilesRepaintOptimizer.?f38:dword
 005256BC    mov         dword ptr [eax+38],edx
 005256BF    mov         eax,dword ptr [ebp-8]
 005256C2    mov         edx,dword ptr [ebp-4]
 005256C5    mov         dword ptr [eax+44],edx
 005256C8    mov         edx,dword ptr [edx]
 005256CA    mov         edx,dword ptr [edx+34];TMicroTilesRepaintOptimizer.?f34:dword
 005256CD    mov         dword ptr [eax+40],edx
 005256D0    mov         eax,dword ptr [ebp-8]
 005256D3    mov         edx,dword ptr [ebp-4]
 005256D6    mov         dword ptr [eax+34],edx
 005256D9    mov         edx,dword ptr [edx]
 005256DB    mov         edx,dword ptr [edx+8];TMicroTilesRepaintOptimizer.?f8:TList
 005256DE    mov         dword ptr [eax+30],edx
 005256E1    pop         ecx
 005256E2    pop         ecx
 005256E3    pop         ebp
 005256E4    ret
end;*}

//005256E8
{*procedure sub_005256E8(?:?);
begin
 005256E8    push        ebp
 005256E9    mov         ebp,esp
 005256EB    add         esp,0FFFFFFF8
 005256EE    mov         dword ptr [ebp-8],edx
 005256F1    mov         dword ptr [ebp-4],eax
 005256F4    mov         eax,dword ptr [ebp-8]
 005256F7    xor         edx,edx
 005256F9    mov         dword ptr [eax+38],edx
 005256FC    mov         dword ptr [eax+3C],edx
 005256FF    mov         eax,dword ptr [ebp-8]
 00525702    xor         edx,edx
 00525704    mov         dword ptr [eax+40],edx
 00525707    mov         dword ptr [eax+44],edx
 0052570A    mov         eax,dword ptr [ebp-8]
 0052570D    xor         edx,edx
 0052570F    mov         dword ptr [eax+30],edx
 00525712    mov         dword ptr [eax+34],edx
 00525715    mov         edx,dword ptr [ebp-8]
 00525718    mov         eax,dword ptr [ebp-4]
 0052571B    call        0052383C
 00525720    pop         ecx
 00525721    pop         ecx
 00525722    pop         ebp
 00525723    ret
end;*}

//00525724
{*procedure sub_00525724(?:?);
begin
 00525724    push        ebp
 00525725    mov         ebp,esp
 00525727    add         esp,0FFFFFFE8
 0052572A    push        ebx
 0052572B    mov         byte ptr [ebp-5],dl
 0052572E    mov         dword ptr [ebp-4],eax
 00525731    mov         eax,dword ptr [ebp-4]
 00525734    mov         edx,dword ptr [eax]
 00525736    call        dword ptr [edx];TMicroTilesRepaintOptimizer.sub_005237C4
 00525738    cmp         al,byte ptr [ebp-5]
>0052573B    je          00525880
 00525741    cmp         byte ptr [ebp-5],0
>00525745    je          005257CF
 0052574B    mov         eax,dword ptr [ebp-4]
 0052574E    mov         eax,dword ptr [eax+8];TMicroTilesRepaintOptimizer.?f8:TList
 00525751    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00525754    dec         eax
 00525755    test        eax,eax
>00525757    jl          005257B0
 00525759    inc         eax
 0052575A    mov         dword ptr [ebp-10],eax
 0052575D    mov         dword ptr [ebp-0C],0
 00525764    mov         edx,dword ptr [ebp-0C]
 00525767    mov         eax,dword ptr [ebp-4]
 0052576A    mov         eax,dword ptr [eax+8];TMicroTilesRepaintOptimizer.?f8:TList
 0052576D    call        TList.Get
 00525772    mov         dword ptr [ebp-14],eax
 00525775    mov         eax,dword ptr [ebp-14]
 00525778    mov         edx,dword ptr [ebp-4]
 0052577B    mov         dword ptr [eax+3C],edx
 0052577E    mov         edx,dword ptr [edx]
 00525780    mov         edx,dword ptr [edx+38];TMicroTilesRepaintOptimizer.?f38:dword
 00525783    mov         dword ptr [eax+38],edx
 00525786    mov         eax,dword ptr [ebp-14]
 00525789    mov         edx,dword ptr [ebp-4]
 0052578C    mov         dword ptr [eax+44],edx
 0052578F    mov         edx,dword ptr [edx]
 00525791    mov         edx,dword ptr [edx+34];TMicroTilesRepaintOptimizer.?f34:dword
 00525794    mov         dword ptr [eax+40],edx
 00525797    mov         eax,dword ptr [ebp-14]
 0052579A    mov         edx,dword ptr [ebp-4]
 0052579D    mov         dword ptr [eax+34],edx
 005257A0    mov         edx,dword ptr [edx]
 005257A2    mov         edx,dword ptr [edx+8];TMicroTilesRepaintOptimizer.?f8:TList
 005257A5    mov         dword ptr [eax+30],edx
 005257A8    inc         dword ptr [ebp-0C]
 005257AB    dec         dword ptr [ebp-10]
>005257AE    jne         00525764
 005257B0    mov         eax,dword ptr [ebp-4]
 005257B3    mov         eax,dword ptr [eax+10];TMicroTilesRepaintOptimizer.?f10:dword
 005257B6    mov         ecx,dword ptr [eax+30]
 005257B9    mov         eax,dword ptr [ebp-4]
 005257BC    mov         eax,dword ptr [eax+10];TMicroTilesRepaintOptimizer.?f10:dword
 005257BF    mov         edx,dword ptr [eax+34]
 005257C2    mov         eax,dword ptr [ebp-4]
 005257C5    mov         ebx,dword ptr [eax]
 005257C7    call        dword ptr [ebx+3C];TMicroTilesRepaintOptimizer.sub_005254C0
>005257CA    jmp         00525875
 005257CF    mov         eax,dword ptr [ebp-4]
 005257D2    mov         eax,dword ptr [eax+8];TMicroTilesRepaintOptimizer.?f8:TList
 005257D5    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005257D8    dec         eax
 005257D9    test        eax,eax
>005257DB    jl          00525822
 005257DD    inc         eax
 005257DE    mov         dword ptr [ebp-10],eax
 005257E1    mov         dword ptr [ebp-0C],0
 005257E8    mov         edx,dword ptr [ebp-0C]
 005257EB    mov         eax,dword ptr [ebp-4]
 005257EE    mov         eax,dword ptr [eax+8];TMicroTilesRepaintOptimizer.?f8:TList
 005257F1    call        TList.Get
 005257F6    mov         dword ptr [ebp-18],eax
 005257F9    mov         eax,dword ptr [ebp-18]
 005257FC    xor         edx,edx
 005257FE    mov         dword ptr [eax+38],edx
 00525801    mov         dword ptr [eax+3C],edx
 00525804    mov         eax,dword ptr [ebp-18]
 00525807    xor         edx,edx
 00525809    mov         dword ptr [eax+40],edx
 0052580C    mov         dword ptr [eax+44],edx
 0052580F    mov         eax,dword ptr [ebp-18]
 00525812    xor         edx,edx
 00525814    mov         dword ptr [eax+30],edx
 00525817    mov         dword ptr [eax+34],edx
 0052581A    inc         dword ptr [ebp-0C]
 0052581D    dec         dword ptr [ebp-10]
>00525820    jne         005257E8
 00525822    mov         eax,dword ptr [ebp-4]
 00525825    add         eax,58;TMicroTilesRepaintOptimizer.?f58:?
 00525828    call        00523BCC
 0052582D    mov         eax,dword ptr [ebp-4]
 00525830    add         eax,28;TMicroTilesRepaintOptimizer.?f28:?
 00525833    call        00523BCC
 00525838    mov         eax,dword ptr [ebp-4]
 0052583B    add         eax,88;TMicroTilesRepaintOptimizer.?f88:?
 00525840    call        00523BCC
 00525845    mov         eax,dword ptr [ebp-4]
 00525848    mov         byte ptr [eax+0C2],0;TMicroTilesRepaintOptimizer.?fC2:byte
 0052584F    mov         eax,dword ptr [ebp-4]
 00525852    mov         byte ptr [eax+0C1],0;TMicroTilesRepaintOptimizer.?fC1:byte
 00525859    mov         eax,dword ptr [ebp-4]
 0052585C    mov         eax,dword ptr [eax+0BC];TMicroTilesRepaintOptimizer.?fBC:TMicroTilesMap
 00525862    call        00514FC4
 00525867    mov         eax,dword ptr [ebp-4]
 0052586A    mov         eax,dword ptr [eax+0B8];TMicroTilesRepaintOptimizer.?fB8:TList
 00525870    mov         edx,dword ptr [eax]
 00525872    call        dword ptr [edx+8];TList.sub_00420074
 00525875    mov         dl,byte ptr [ebp-5]
 00525878    mov         eax,dword ptr [ebp-4]
 0052587B    call        005237E0
 00525880    pop         ebx
 00525881    mov         esp,ebp
 00525883    pop         ebp
 00525884    ret
end;*}

//00525888
procedure sub_00525888(?:TMicroTilesRepaintOptimizer);
begin
{*
 00525888    push        ebp
 00525889    mov         ebp,esp
 0052588B    push        ecx
 0052588C    mov         dword ptr [ebp-4],eax
 0052588F    mov         eax,dword ptr [ebp-4]
 00525892    mov         dword ptr [eax+0E4],3E8;TMicroTilesRepaintOptimizer.?fE4:dword
 0052589C    mov         eax,dword ptr [ebp-4]
 0052589F    mov         byte ptr [eax+0E0],0;TMicroTilesRepaintOptimizer.?fE0:byte
 005258A6    mov         eax,dword ptr [ebp-4]
 005258A9    xor         edx,edx
 005258AB    mov         dword ptr [eax+0C8],edx;TMicroTilesRepaintOptimizer.?fC8:dword
 005258B1    pop         ecx
 005258B2    pop         ebp
 005258B3    ret
*}
end;

//005258B4
procedure sub_005258B4;
begin
{*
 005258B4    push        ebp
 005258B5    mov         ebp,esp
 005258B7    push        ecx
 005258B8    mov         dword ptr [ebp-4],eax
 005258BB    mov         eax,dword ptr [ebp-4]
 005258BE    cmp         byte ptr [eax+0C3],0;TMicroTilesRepaintOptimizer.?fC3:byte
>005258C5    je          005258D5
 005258C7    mov         eax,dword ptr [ebp-4]
 005258CA    mov         eax,dword ptr [eax+0C4];TMicroTilesRepaintOptimizer.?fC4:TPerfTimer
 005258D0    call        00512924
 005258D5    pop         ecx
 005258D6    pop         ebp
 005258D7    ret
*}
end;

//005258D8
procedure sub_005258D8;
begin
{*
 005258D8    push        ebp
 005258D9    mov         ebp,esp
 005258DB    push        ecx
 005258DC    mov         dword ptr [ebp-4],eax
 005258DF    mov         eax,dword ptr [ebp-4]
 005258E2    mov         byte ptr [eax+0C2],0;TMicroTilesRepaintOptimizer.?fC2:byte
 005258E9    mov         eax,dword ptr [ebp-4]
 005258EC    call        00525B8C
 005258F1    pop         ecx
 005258F2    pop         ebp
 005258F3    ret
*}
end;

//005258F4
{*procedure sub_005258F4(?:TMicroTilesRepaintOptimizer; ?:?; ?:Pointer);
begin
 005258F4    push        ebp
 005258F5    mov         ebp,esp
 005258F7    add         esp,0FFFFFFF4
 005258FA    mov         dword ptr [ebp-0C],ecx
 005258FD    mov         dword ptr [ebp-8],edx
 00525900    mov         dword ptr [ebp-4],eax
 00525903    mov         eax,dword ptr [ebp-4]
 00525906    push        eax
 00525907    push        525940
 0052590C    mov         eax,dword ptr [ebp-4]
 0052590F    mov         eax,dword ptr [eax+10];TMicroTilesRepaintOptimizer.?f10:dword
 00525912    call        0052303C
 00525917    mov         eax,dword ptr [ebp-8]
 0052591A    mov         edx,dword ptr [ebp-4]
 0052591D    mov         dword ptr [edx+24],eax;TMicroTilesRepaintOptimizer.?f24:dword
 00525920    mov         eax,dword ptr [ebp-4]
 00525923    mov         edx,dword ptr [eax+10];TMicroTilesRepaintOptimizer.?f10:dword
 00525926    mov         eax,dword ptr [ebp-0C]
 00525929    call        0052A4B4
 0052592E    mov         eax,dword ptr [ebp-4]
 00525931    mov         eax,dword ptr [eax+10];TMicroTilesRepaintOptimizer.?f10:dword
 00525934    call        00523088
 00525939    mov         esp,ebp
 0052593B    pop         ebp
 0052593C    ret
end;*}

//0052596C
procedure sub_0052596C;
begin
{*
 0052596C    push        ebp
 0052596D    mov         ebp,esp
 0052596F    add         esp,0FFFFFFE8
 00525972    mov         dword ptr [ebp-4],eax
 00525975    mov         eax,dword ptr [ebp-4]
 00525978    cmp         byte ptr [eax+0C2],0;TMicroTilesRepaintOptimizer.?fC2:byte
>0052597F    je          00525A9D
 00525985    mov         eax,dword ptr [ebp-4]
 00525988    call        00525468
 0052598D    mov         eax,dword ptr [ebp-4]
 00525990    cmp         dword ptr [eax+0C8],0;TMicroTilesRepaintOptimizer.?fC8:dword
 00525997    setg        byte ptr [ebp-0D]
 0052599B    mov         eax,dword ptr [ebp-4]
 0052599E    mov         eax,dword ptr [eax+0B8];TMicroTilesRepaintOptimizer.?fB8:TList
 005259A4    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>005259A8    jle         00525A6D
 005259AE    mov         eax,dword ptr [ebp-4]
 005259B1    mov         eax,dword ptr [eax+0B8];TMicroTilesRepaintOptimizer.?fB8:TList
 005259B7    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005259BA    dec         eax
 005259BB    test        eax,eax
>005259BD    jl          00525A5F
 005259C3    inc         eax
 005259C4    mov         dword ptr [ebp-18],eax
 005259C7    mov         dword ptr [ebp-8],0
 005259CE    mov         edx,dword ptr [ebp-8]
 005259D1    mov         eax,dword ptr [ebp-4]
 005259D4    mov         eax,dword ptr [eax+0B8];TMicroTilesRepaintOptimizer.?fB8:TList
 005259DA    call        TList.Get
 005259DF    mov         dword ptr [ebp-0C],eax
 005259E2    mov         eax,dword ptr [ebp-4]
 005259E5    add         eax,28;TMicroTilesRepaintOptimizer.?f28:?
 005259E8    xor         edx,edx
 005259EA    call        00523CC0
 005259EF    mov         eax,dword ptr [ebp-4]
 005259F2    lea         edx,[eax+28];TMicroTilesRepaintOptimizer.?f28:?
 005259F5    mov         ecx,dword ptr [ebp-0C]
 005259F8    mov         eax,dword ptr [ebp-4]
 005259FB    call        005258F4
 00525A00    mov         eax,dword ptr [ebp-4]
 00525A03    lea         edx,[eax+28];TMicroTilesRepaintOptimizer.?f28:?
 00525A06    mov         eax,dword ptr [ebp-4]
 00525A09    add         eax,58;TMicroTilesRepaintOptimizer.?f58:?
 00525A0C    mov         cl,byte ptr [ebp-0D]
 00525A0F    call        00524870
 00525A14    mov         edx,dword ptr [ebp-0C]
 00525A17    mov         eax,dword ptr [ebp-4]
 00525A1A    mov         eax,dword ptr [eax+0BC];TMicroTilesRepaintOptimizer.?fBC:TMicroTilesMap
 00525A20    call        0052508C
 00525A25    mov         dword ptr [ebp-14],eax
 00525A28    mov         eax,dword ptr [ebp-14]
 00525A2B    mov         edx,eax
 00525A2D    mov         eax,dword ptr [ebp-4]
 00525A30    add         eax,58;TMicroTilesRepaintOptimizer.?f58:?
 00525A33    mov         cl,byte ptr [ebp-0D]
 00525A36    call        00524870
 00525A3B    mov         eax,dword ptr [ebp-14]
 00525A3E    mov         edx,dword ptr [ebp-4]
 00525A41    add         edx,28;TMicroTilesRepaintOptimizer.?f28:?
 00525A44    call        00523D50
 00525A49    xor         edx,edx
 00525A4B    mov         eax,dword ptr [ebp-0C]
 00525A4E    call        0052A89C
 00525A53    inc         dword ptr [ebp-8]
 00525A56    dec         dword ptr [ebp-18]
>00525A59    jne         005259CE
 00525A5F    mov         eax,dword ptr [ebp-4]
 00525A62    mov         eax,dword ptr [eax+0B8];TMicroTilesRepaintOptimizer.?fB8:TList
 00525A68    mov         edx,dword ptr [eax]
 00525A6A    call        dword ptr [edx+8];TList.sub_00420074
 00525A6D    mov         al,byte ptr [ebp-0D]
 00525A70    push        eax
 00525A71    mov         eax,dword ptr [ebp-4]
 00525A74    add         eax,58;TMicroTilesRepaintOptimizer.?f58:?
 00525A77    xor         ecx,ecx
 00525A79    mov         edx,dword ptr [ebp-4]
 00525A7C    mov         edx,dword ptr [edx+0C];TMicroTilesRepaintOptimizer.?fC:dword
 00525A7F    call        00524A24
 00525A84    mov         al,byte ptr [ebp-0D]
 00525A87    push        eax
 00525A88    mov         eax,dword ptr [ebp-4]
 00525A8B    add         eax,88;TMicroTilesRepaintOptimizer.?f88:?
 00525A90    xor         ecx,ecx
 00525A92    mov         edx,dword ptr [ebp-4]
 00525A95    mov         edx,dword ptr [edx+0C];TMicroTilesRepaintOptimizer.?fC:dword
 00525A98    call        00524A24
 00525A9D    mov         eax,dword ptr [ebp-4]
 00525AA0    call        00525AC8
 00525AA5    mov         eax,dword ptr [ebp-4]
 00525AA8    add         eax,58;TMicroTilesRepaintOptimizer.?f58:?
 00525AAB    xor         edx,edx
 00525AAD    call        00523CC0
 00525AB2    mov         eax,dword ptr [ebp-4]
 00525AB5    add         eax,88;TMicroTilesRepaintOptimizer.?f88:?
 00525ABA    xor         edx,edx
 00525ABC    call        00523CC0
 00525AC1    mov         esp,ebp
 00525AC3    pop         ebp
 00525AC4    ret
*}
end;

//00525AC8
procedure sub_00525AC8(?:TMicroTilesRepaintOptimizer);
begin
{*
 00525AC8    push        ebp
 00525AC9    mov         ebp,esp
 00525ACB    push        ecx
 00525ACC    mov         dword ptr [ebp-4],eax
 00525ACF    mov         eax,dword ptr [ebp-4]
 00525AD2    cmp         byte ptr [eax+0C3],0;TMicroTilesRepaintOptimizer.?fC3:byte
>00525AD9    je          00525B87
 00525ADF    mov         eax,dword ptr [ebp-4]
 00525AE2    cmp         dword ptr [eax+0C8],0;TMicroTilesRepaintOptimizer.?fC8:dword
>00525AE9    jle         00525B87
 00525AEF    call        005128A8
 00525AF4    mov         edx,dword ptr [ebp-4]
 00525AF7    cmp         eax,dword ptr [edx+0E8];TMicroTilesRepaintOptimizer.?fE8:dword
>00525AFD    jle         00525B2A
 00525AFF    mov         eax,dword ptr [ebp-4]
 00525B02    mov         eax,dword ptr [eax+0C8];TMicroTilesRepaintOptimizer.?fC8:dword
 00525B08    dec         eax
 00525B09    mov         ecx,2
 00525B0E    xor         edx,edx
 00525B10    call        005130B0
 00525B15    mov         edx,dword ptr [ebp-4]
 00525B18    mov         dword ptr [edx+0C8],eax;TMicroTilesRepaintOptimizer.?fC8:dword
 00525B1E    mov         eax,dword ptr [ebp-4]
 00525B21    mov         byte ptr [eax+0E1],1;TMicroTilesRepaintOptimizer.?fE1:byte
>00525B28    jmp         00525B87
 00525B2A    mov         eax,dword ptr [ebp-4]
 00525B2D    cmp         byte ptr [eax+0E0],0;TMicroTilesRepaintOptimizer.?fE0:byte
>00525B34    jne         00525B70
 00525B36    mov         eax,dword ptr [ebp-4]
 00525B39    mov         eax,dword ptr [eax+0C];TMicroTilesRepaintOptimizer.?fC:dword
 00525B3C    mov         eax,dword ptr [eax+8]
 00525B3F    mov         edx,dword ptr [ebp-4]
 00525B42    mov         edx,dword ptr [edx+0F8];TMicroTilesRepaintOptimizer.?fF8:dword
 00525B48    sub         edx,0A
 00525B4B    cmp         eax,edx
>00525B4D    jge         00525B70
 00525B4F    mov         eax,dword ptr [ebp-4]
 00525B52    mov         eax,dword ptr [eax+0C8];TMicroTilesRepaintOptimizer.?fC8:dword
 00525B58    dec         eax
 00525B59    mov         ecx,2
 00525B5E    xor         edx,edx
 00525B60    call        005130B0
 00525B65    mov         edx,dword ptr [ebp-4]
 00525B68    mov         dword ptr [edx+0C8],eax;TMicroTilesRepaintOptimizer.?fC8:dword
>00525B6E    jmp         00525B87
 00525B70    mov         eax,dword ptr [ebp-4]
 00525B73    cmp         dword ptr [eax+0C8],2;TMicroTilesRepaintOptimizer.?fC8:dword
>00525B7A    jne         00525B87
 00525B7C    mov         eax,dword ptr [ebp-4]
 00525B7F    mov         eax,dword ptr [eax+0C];TMicroTilesRepaintOptimizer.?fC:dword
 00525B82    mov         edx,dword ptr [eax]
 00525B84    call        dword ptr [edx+4]
 00525B87    pop         ecx
 00525B88    pop         ebp
 00525B89    ret
*}
end;

//00525B8C
procedure sub_00525B8C(?:TMicroTilesRepaintOptimizer);
begin
{*
 00525B8C    push        ebp
 00525B8D    mov         ebp,esp
 00525B8F    add         esp,0FFFFFFEC
 00525B92    mov         dword ptr [ebp-4],eax
 00525B95    mov         eax,dword ptr [ebp-4]
 00525B98    mov         eax,dword ptr [eax+0C4];TMicroTilesRepaintOptimizer.?fC4:TPerfTimer
 00525B9E    call        005128BC
 00525BA3    mov         dword ptr [ebp-10],eax
 00525BA6    mov         dword ptr [ebp-0C],edx
 00525BA9    mov         eax,dword ptr [ebp-4]
 00525BAC    mov         eax,dword ptr [eax+0C];TMicroTilesRepaintOptimizer.?fC:dword
 00525BAF    cmp         dword ptr [eax+8],0
>00525BB3    jne         00525BCF
 00525BB5    mov         eax,dword ptr [ebp-4]
 00525BB8    mov         edx,dword ptr [ebp-10]
 00525BBB    mov         dword ptr [eax+0D8],edx;TMicroTilesRepaintOptimizer.?fD8:dword
 00525BC1    mov         edx,dword ptr [ebp-0C]
 00525BC4    mov         dword ptr [eax+0DC],edx;TMicroTilesRepaintOptimizer.?fDC:dword
>00525BCA    jmp         00525DFA
 00525BCF    mov         eax,dword ptr [ebp-4]
 00525BD2    cmp         byte ptr [eax+0C3],0;TMicroTilesRepaintOptimizer.?fC3:byte
>00525BD9    je          00525DFA
 00525BDF    mov         eax,dword ptr [ebp-10]
 00525BE2    mov         edx,dword ptr [ebp-0C]
 00525BE5    mov         ecx,dword ptr [ebp-4]
 00525BE8    cmp         edx,dword ptr [ecx+0DC]
>00525BEE    jne         00525BFE
 00525BF0    cmp         eax,dword ptr [ecx+0D8]
>00525BF6    jbe         00525CC4
>00525BFC    jmp         00525C04
>00525BFE    jle         00525CC4
 00525C04    mov         eax,dword ptr [ebp-4]
 00525C07    mov         eax,dword ptr [eax+0C8];TMicroTilesRepaintOptimizer.?fC8:dword
 00525C0D    inc         eax
 00525C0E    mov         ecx,2
 00525C13    xor         edx,edx
 00525C15    call        005130B0
 00525C1A    mov         dword ptr [ebp-14],eax
 00525C1D    mov         eax,dword ptr [ebp-14]
 00525C20    mov         edx,dword ptr [ebp-4]
 00525C23    cmp         eax,dword ptr [edx+0C8];TMicroTilesRepaintOptimizer.?fC8:dword
>00525C29    je          00525DFA
 00525C2F    mov         eax,dword ptr [ebp-4]
 00525C32    mov         eax,dword ptr [eax+0C];TMicroTilesRepaintOptimizer.?fC:dword
 00525C35    mov         eax,dword ptr [eax+8]
 00525C38    mov         edx,dword ptr [ebp-4]
 00525C3B    mov         dword ptr [edx+0F8],eax;TMicroTilesRepaintOptimizer.?fF8:dword
 00525C41    mov         eax,dword ptr [ebp-14]
 00525C44    mov         edx,dword ptr [ebp-4]
 00525C47    mov         dword ptr [edx+0C8],eax;TMicroTilesRepaintOptimizer.?fC8:dword
 00525C4D    mov         eax,dword ptr [ebp-4]
 00525C50    cmp         byte ptr [eax+0E1],0;TMicroTilesRepaintOptimizer.?fE1:byte
>00525C57    je          00525CB5
 00525C59    mov         eax,dword ptr [ebp-4]
 00525C5C    mov         eax,dword ptr [eax+0E4];TMicroTilesRepaintOptimizer.?fE4:dword
 00525C62    add         eax,0FA
 00525C67    mov         ecx,1388
 00525C6C    mov         edx,3E8
 00525C71    call        005130B0
 00525C76    mov         edx,dword ptr [ebp-4]
 00525C79    mov         dword ptr [edx+0E4],eax;TMicroTilesRepaintOptimizer.?fE4:dword
 00525C7F    call        005128A8
 00525C84    mov         edx,dword ptr [ebp-4]
 00525C87    add         eax,dword ptr [edx+0E4];TMicroTilesRepaintOptimizer.?fE4:dword
 00525C8D    mov         edx,dword ptr [ebp-4]
 00525C90    mov         dword ptr [edx+0E8],eax;TMicroTilesRepaintOptimizer.?fE8:dword
 00525C96    mov         eax,dword ptr [ebp-4]
 00525C99    mov         edx,dword ptr [ebp-10]
 00525C9C    mov         dword ptr [eax+0F0],edx;TMicroTilesRepaintOptimizer.?fF0:dword
 00525CA2    mov         edx,dword ptr [ebp-0C]
 00525CA5    mov         dword ptr [eax+0F4],edx;TMicroTilesRepaintOptimizer.?fF4:dword
 00525CAB    mov         eax,dword ptr [ebp-4]
 00525CAE    mov         byte ptr [eax+0E1],0;TMicroTilesRepaintOptimizer.?fE1:byte
 00525CB5    mov         eax,dword ptr [ebp-4]
 00525CB8    mov         byte ptr [eax+0E0],1;TMicroTilesRepaintOptimizer.?fE0:byte
>00525CBF    jmp         00525DFA
 00525CC4    mov         eax,dword ptr [ebp-10]
 00525CC7    mov         edx,dword ptr [ebp-0C]
 00525CCA    mov         ecx,dword ptr [ebp-4]
 00525CCD    cmp         edx,dword ptr [ecx+0DC]
>00525CD3    jne         00525CE3
 00525CD5    cmp         eax,dword ptr [ecx+0D8]
>00525CDB    jae         00525D8A
>00525CE1    jmp         00525CE9
>00525CE3    jge         00525D8A
 00525CE9    mov         eax,dword ptr [ebp-4]
 00525CEC    cmp         byte ptr [eax+0E1],0;TMicroTilesRepaintOptimizer.?fE1:byte
>00525CF3    je          00525D32
 00525CF5    mov         eax,dword ptr [ebp-4]
 00525CF8    mov         dword ptr [eax+0E4],3E8;TMicroTilesRepaintOptimizer.?fE4:dword
 00525D02    call        005128A8
 00525D07    mov         edx,dword ptr [ebp-4]
 00525D0A    add         eax,dword ptr [edx+0E4];TMicroTilesRepaintOptimizer.?fE4:dword
 00525D10    mov         edx,dword ptr [ebp-4]
 00525D13    mov         dword ptr [edx+0E8],eax;TMicroTilesRepaintOptimizer.?fE8:dword
 00525D19    mov         eax,dword ptr [ebp-4]
 00525D1C    mov         byte ptr [eax+0E1],0;TMicroTilesRepaintOptimizer.?fE1:byte
 00525D23    mov         eax,dword ptr [ebp-4]
 00525D26    mov         byte ptr [eax+0E0],0;TMicroTilesRepaintOptimizer.?fE0:byte
>00525D2D    jmp         00525DFA
 00525D32    mov         eax,dword ptr [ebp-4]
 00525D35    cmp         dword ptr [eax+0E4],3E8;TMicroTilesRepaintOptimizer.?fE4:dword
>00525D3F    jle         00525D7E
 00525D41    mov         eax,dword ptr [ebp-4]
 00525D44    mov         eax,dword ptr [eax+0E4];TMicroTilesRepaintOptimizer.?fE4:dword
 00525D4A    sub         eax,3E8
 00525D4F    mov         ecx,1388
 00525D54    mov         edx,3E8
 00525D59    call        005130B0
 00525D5E    mov         edx,dword ptr [ebp-4]
 00525D61    mov         dword ptr [edx+0E4],eax;TMicroTilesRepaintOptimizer.?fE4:dword
 00525D67    call        005128A8
 00525D6C    mov         edx,dword ptr [ebp-4]
 00525D6F    add         eax,dword ptr [edx+0E4];TMicroTilesRepaintOptimizer.?fE4:dword
 00525D75    mov         edx,dword ptr [ebp-4]
 00525D78    mov         dword ptr [edx+0E8],eax;TMicroTilesRepaintOptimizer.?fE8:dword
 00525D7E    mov         eax,dword ptr [ebp-4]
 00525D81    mov         byte ptr [eax+0E0],0;TMicroTilesRepaintOptimizer.?fE0:byte
>00525D88    jmp         00525DFA
 00525D8A    mov         eax,dword ptr [ebp-10]
 00525D8D    mov         edx,dword ptr [ebp-0C]
 00525D90    mov         ecx,dword ptr [ebp-4]
 00525D93    cmp         edx,dword ptr [ecx+0F4]
>00525D99    jne         00525DA5
 00525D9B    cmp         eax,dword ptr [ecx+0F0]
>00525DA1    jae         00525DFA
>00525DA3    jmp         00525DA7
>00525DA5    jge         00525DFA
 00525DA7    mov         eax,dword ptr [ebp-4]
 00525DAA    cmp         byte ptr [eax+0E1],0;TMicroTilesRepaintOptimizer.?fE1:byte
>00525DB1    je          00525DFA
 00525DB3    mov         eax,dword ptr [ebp-4]
 00525DB6    mov         eax,dword ptr [eax+0E4];TMicroTilesRepaintOptimizer.?fE4:dword
 00525DBC    sub         eax,0FA
 00525DC1    mov         ecx,1388
 00525DC6    mov         edx,3E8
 00525DCB    call        005130B0
 00525DD0    mov         edx,dword ptr [ebp-4]
 00525DD3    mov         dword ptr [edx+0E4],eax;TMicroTilesRepaintOptimizer.?fE4:dword
 00525DD9    call        005128A8
 00525DDE    mov         edx,dword ptr [ebp-4]
 00525DE1    add         eax,dword ptr [edx+0E4];TMicroTilesRepaintOptimizer.?fE4:dword
 00525DE7    mov         edx,dword ptr [ebp-4]
 00525DEA    mov         dword ptr [edx+0E8],eax;TMicroTilesRepaintOptimizer.?fE8:dword
 00525DF0    mov         eax,dword ptr [ebp-4]
 00525DF3    mov         byte ptr [eax+0E1],0;TMicroTilesRepaintOptimizer.?fE1:byte
 00525DFA    mov         eax,dword ptr [ebp-4]
 00525DFD    mov         edx,dword ptr [ebp-10]
 00525E00    mov         dword ptr [eax+0D0],edx;TMicroTilesRepaintOptimizer.?fD0:dword
 00525E06    mov         edx,dword ptr [ebp-0C]
 00525E09    mov         dword ptr [eax+0D4],edx;TMicroTilesRepaintOptimizer.?fD4:dword
 00525E0F    mov         esp,ebp
 00525E11    pop         ebp
 00525E12    ret
*}
end;

//00525E14
procedure sub_00525E14;
begin
{*
 00525E14    call        00512A68
 00525E19    test        al,al
>00525E1B    je          00525E32
 00525E1D    mov         dword ptr ds:[597BC0],523AF8
 00525E27    mov         dword ptr ds:[597BC8],5246FC
 00525E31    ret
 00525E32    mov         dword ptr ds:[597BC0],523A0C
 00525E3C    mov         dword ptr ds:[597BC8],524548
 00525E46    ret
*}
end;

Initialization
//00525E78
{*
 00525E78    sub         dword ptr ds:[597BC4],1
>00525E7F    jae         00525E86
 00525E81    call        00525E14
 00525E86    ret
*}
Finalization
end.