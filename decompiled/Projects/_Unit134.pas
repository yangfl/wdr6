//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit134;

interface

uses
  SysUtils, Classes;

    //function sub_0055FE3C(?:?):?;//0055FE3C
    //function sub_0055FE54(?:?):?;//0055FE54
    //procedure sub_0055FE70(?:?; ?:?);//0055FE70
    //function sub_0055FE88:?;//0055FE88
    //function sub_0055FF28:?;//0055FF28
    //function sub_0055FFC4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0055FFC4
    //function sub_00560018(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00560018
    //function sub_00560080:?;//00560080
    //function sub_005600F0:?;//005600F0
    //function sub_00560154(?:?; ?:?; ?:?):?;//00560154
    procedure sub_00560214;//00560214
    procedure sub_00560240;//00560240
    procedure sub_0056026C;//0056026C
    procedure sub_00560288(?:TMemoryStream);//00560288
    //procedure sub_005602A8(?:?);//005602A8
    //procedure sub_005602C8(?:?);//005602C8
    procedure sub_00560318;//00560318
    procedure sub_0056032C;//0056032C
    procedure sub_00560360;//00560360
    procedure sub_0056039C;//0056039C
    //procedure sub_00560580(?:?);//00560580
    //procedure sub_00560624(?:?; ?:?);//00560624
    //function sub_00560678(?:?; ?:?):?;//00560678
    //function sub_0056070C(?:?; ?:?):?;//0056070C
    //function sub_005607A0(?:?; ?:?; ?:?):?;//005607A0
    //function sub_00560854(?:?; ?:?; ?:?):?;//00560854
    //function sub_00560900(?:?):?;//00560900

implementation

//0055FE3C
{*function sub_0055FE3C(?:?):?;
begin
 0055FE3C    push        ebp
 0055FE3D    mov         ebp,esp
 0055FE3F    push        ecx
 0055FE40    mov         word ptr [ebp-2],ax
 0055FE44    mov         dx,word ptr [ebp-2]
 0055FE48    in          al,dl
 0055FE49    mov         byte ptr [ebp-3],al
 0055FE4C    mov         al,byte ptr [ebp-3]
 0055FE4F    pop         ecx
 0055FE50    pop         ebp
 0055FE51    ret
end;*}

//0055FE54
{*function sub_0055FE54(?:?):?;
begin
 0055FE54    push        ebp
 0055FE55    mov         ebp,esp
 0055FE57    push        ecx
 0055FE58    mov         word ptr [ebp-2],ax
 0055FE5C    mov         dx,word ptr [ebp-2]
 0055FE60    in          ax,dl
 0055FE62    mov         word ptr [ebp-4],ax
 0055FE66    mov         ax,word ptr [ebp-4]
 0055FE6A    pop         ecx
 0055FE6B    pop         ebp
 0055FE6C    ret
end;*}

//0055FE70
{*procedure sub_0055FE70(?:?; ?:?);
begin
 0055FE70    push        ebp
 0055FE71    mov         ebp,esp
 0055FE73    push        ecx
 0055FE74    mov         byte ptr [ebp-3],dl
 0055FE77    mov         word ptr [ebp-2],ax
 0055FE7B    mov         dx,word ptr [ebp-2]
 0055FE7F    mov         al,byte ptr [ebp-3]
 0055FE82    out         dl,al
 0055FE83    pop         ecx
 0055FE84    pop         ebp
 0055FE85    ret
end;*}

//0055FE88
{*function sub_0055FE88:?;
begin
 0055FE88    push        ebp
 0055FE89    mov         ebp,esp
 0055FE8B    add         esp,0FFFFFFF4
 0055FE8E    cmp         byte ptr ds:[56DF1C],0;gvar_0056DF1C:Boolean
>0055FE95    jne         0055FEA9
 0055FE97    mov         ax,[0056DF14];0x170 gvar_0056DF14
 0055FE9D    add         ax,7
 0055FEA1    call        0055FE3C
 0055FEA6    mov         byte ptr [ebp-2],al
 0055FEA9    mov         al,byte ptr [ebp-2]
 0055FEAC    and         al,1
 0055FEAE    cmp         al,1
 0055FEB0    sete        byte ptr ds:[59BF4C];gvar_0059BF4C
 0055FEB7    mov         al,byte ptr [ebp-2]
 0055FEBA    and         al,2
 0055FEBC    cmp         al,2
 0055FEBE    sete        byte ptr ds:[59BF4D];gvar_0059BF4D
 0055FEC5    mov         al,byte ptr [ebp-2]
 0055FEC8    and         al,4
 0055FECA    cmp         al,4
 0055FECC    sete        byte ptr ds:[59BF4E];gvar_0059BF4E
 0055FED3    mov         al,byte ptr [ebp-2]
 0055FED6    and         al,8
 0055FED8    cmp         al,8
 0055FEDA    sete        byte ptr ds:[59BF4F];gvar_0059BF4F
 0055FEE1    mov         al,byte ptr [ebp-2]
 0055FEE4    and         al,10
 0055FEE6    cmp         al,10
 0055FEE8    sete        byte ptr ds:[59BF50];gvar_0059BF50
 0055FEEF    mov         al,byte ptr [ebp-2]
 0055FEF2    and         al,20
 0055FEF4    cmp         al,20
 0055FEF6    sete        byte ptr ds:[59BF51];gvar_0059BF51
 0055FEFD    mov         al,byte ptr [ebp-2]
 0055FF00    and         al,40
 0055FF02    cmp         al,40
 0055FF04    sete        byte ptr ds:[59BF52];gvar_0059BF52
 0055FF0B    mov         al,byte ptr [ebp-2]
 0055FF0E    and         al,80
 0055FF10    cmp         al,80
 0055FF12    sete        byte ptr ds:[59BF53];gvar_0059BF53
 0055FF19    mov         al,byte ptr [ebp-2]
 0055FF1C    mov         byte ptr [ebp-1],al
 0055FF1F    mov         al,byte ptr [ebp-1]
 0055FF22    mov         esp,ebp
 0055FF24    pop         ebp
 0055FF25    ret
end;*}

//0055FF28
{*function sub_0055FF28:?;
begin
 0055FF28    push        ebp
 0055FF29    mov         ebp,esp
 0055FF2B    add         esp,0FFFFFFF4
 0055FF2E    cmp         byte ptr ds:[56DF1C],0;gvar_0056DF1C:Boolean
>0055FF35    jne         0055FF46
 0055FF37    mov         ax,[0056DF14];0x170 gvar_0056DF14
 0055FF3D    inc         eax
 0055FF3E    call        0055FE3C
 0055FF43    mov         byte ptr [ebp-2],al
 0055FF46    mov         al,byte ptr [ebp-2]
 0055FF49    and         al,1
 0055FF4B    cmp         al,1
 0055FF4D    sete        byte ptr ds:[59BF5B];gvar_0059BF5B
 0055FF54    mov         al,byte ptr [ebp-2]
 0055FF57    and         al,2
 0055FF59    cmp         al,2
 0055FF5B    sete        byte ptr ds:[59BF5A];gvar_0059BF5A
 0055FF62    mov         al,byte ptr [ebp-2]
 0055FF65    and         al,4
 0055FF67    cmp         al,4
 0055FF69    sete        byte ptr ds:[59BF59];gvar_0059BF59
 0055FF70    mov         al,byte ptr [ebp-2]
 0055FF73    and         al,8
 0055FF75    cmp         al,8
 0055FF77    sete        byte ptr ds:[59BF58];gvar_0059BF58
 0055FF7E    mov         al,byte ptr [ebp-2]
 0055FF81    and         al,10
 0055FF83    cmp         al,10
 0055FF85    sete        byte ptr ds:[59BF57];gvar_0059BF57
 0055FF8C    mov         al,byte ptr [ebp-2]
 0055FF8F    and         al,20
 0055FF91    cmp         al,20
 0055FF93    sete        byte ptr ds:[59BF56];gvar_0059BF56
 0055FF9A    mov         al,byte ptr [ebp-2]
 0055FF9D    and         al,40
 0055FF9F    cmp         al,40
 0055FFA1    sete        byte ptr ds:[59BF55];gvar_0059BF55
 0055FFA8    mov         al,byte ptr [ebp-2]
 0055FFAB    and         al,80
 0055FFAD    cmp         al,80
 0055FFAF    sete        byte ptr ds:[59BF54];gvar_0059BF54
 0055FFB6    mov         al,byte ptr [ebp-2]
 0055FFB9    mov         byte ptr [ebp-1],al
 0055FFBC    mov         al,byte ptr [ebp-1]
 0055FFBF    mov         esp,ebp
 0055FFC1    pop         ebp
 0055FFC2    ret
end;*}

//0055FFC4
{*function sub_0055FFC4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0055FFC4    push        ebp
 0055FFC5    mov         ebp,esp
 0055FFC7    push        ecx
 0055FFC8    mov         byte ptr [ebp-3],cl
 0055FFCB    mov         byte ptr [ebp-2],dl
 0055FFCE    mov         byte ptr [ebp-1],al
 0055FFD1    mov         dx,word ptr ds:[56DF14];0x170 gvar_0056DF14
 0055FFD8    add         dx,6
 0055FFDC    mov         al,0A0
 0055FFDE    out         dl,al
 0055FFDF    mov         dx,word ptr ds:[56DF14];0x170 gvar_0056DF14
 0055FFE6    inc         dx
 0055FFE8    mov         al,byte ptr [ebp-1]
 0055FFEB    out         dl,al
 0055FFEC    inc         dx
 0055FFEE    mov         al,byte ptr [ebp-2]
 0055FFF1    out         dl,al
 0055FFF2    inc         dx
 0055FFF4    mov         al,byte ptr [ebp-3]
 0055FFF7    out         dl,al
 0055FFF8    inc         dx
 0055FFFA    mov         al,byte ptr [ebp+14]
 0055FFFD    out         dl,al
 0055FFFE    inc         dx
 00560000    mov         al,byte ptr [ebp+10]
 00560003    out         dl,al
 00560004    inc         dx
 00560006    mov         al,byte ptr [ebp+0C]
 00560009    out         dl,al
 0056000A    inc         dx
 0056000C    mov         al,byte ptr [ebp+8]
 0056000F    out         dl,al
 00560010    pop         ecx
 00560011    pop         ebp
 00560012    ret         10
end;*}

//00560018
{*function sub_00560018(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00560018    push        ebp
 00560019    mov         ebp,esp
 0056001B    push        ecx
 0056001C    mov         byte ptr [ebp-3],cl
 0056001F    mov         byte ptr [ebp-2],dl
 00560022    mov         byte ptr [ebp-1],al
 00560025    mov         dx,word ptr ds:[56DF14];0x170 gvar_0056DF14
 0056002C    inc         dx
 0056002E    mov         al,byte ptr [ebp+18]
 00560031    out         dl,al
 00560032    inc         dx
 00560034    mov         al,byte ptr [ebp+14]
 00560037    out         dl,al
 00560038    inc         dx
 0056003A    mov         al,byte ptr [ebp+10]
 0056003D    out         dl,al
 0056003E    inc         dx
 00560040    mov         al,byte ptr [ebp+0C]
 00560043    out         dl,al
 00560044    inc         dx
 00560046    mov         al,byte ptr [ebp+8]
 00560049    out         dl,al
 0056004A    mov         dx,word ptr ds:[56DF14];0x170 gvar_0056DF14
 00560051    inc         dx
 00560053    mov         al,byte ptr [ebp-1]
 00560056    out         dl,al
 00560057    inc         dx
 00560059    mov         al,byte ptr [ebp-2]
 0056005C    out         dl,al
 0056005D    inc         dx
 0056005F    mov         al,byte ptr [ebp-3]
 00560062    out         dl,al
 00560063    inc         dx
 00560065    mov         al,byte ptr [ebp+28]
 00560068    out         dl,al
 00560069    inc         dx
 0056006B    mov         al,byte ptr [ebp+24]
 0056006E    out         dl,al
 0056006F    inc         dx
 00560071    mov         al,byte ptr [ebp+20]
 00560074    out         dl,al
 00560075    inc         dx
 00560077    mov         al,byte ptr [ebp+1C]
 0056007A    out         dl,al
 0056007B    pop         ecx
 0056007C    pop         ebp
 0056007D    ret         24
end;*}

//00560080
{*function sub_00560080:?;
begin
 00560080    push        ebp
 00560081    mov         ebp,esp
 00560083    push        ecx
 00560084    mov         byte ptr [ebp-1],0
 00560088    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>0056008F    jne         005600E5
 00560091    mov         eax,[0056E3C0];^Application:TApplication
 00560096    mov         eax,dword ptr [eax]
 00560098    call        004AB51C
 0056009D    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>005600A4    jne         005600EA
 005600A6    push        0
 005600A8    call        kernel32.Sleep
 005600AD    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>005600B4    jne         005600E5
 005600B6    call        0055FE88
 005600BB    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>005600C2    jne         005600E5
 005600C4    mov         al,[0059BF53];0x0 gvar_0059BF53
 005600C9    xor         al,1
 005600CB    and         al,byte ptr ds:[59BF52];0x0 gvar_0059BF52
>005600D1    je          005600DC
 005600D3    cmp         byte ptr ds:[59BF50],0;gvar_0059BF50
>005600DA    jne         005600E5
 005600DC    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>005600E3    je          00560088
 005600E5    call        0055FF28
 005600EA    mov         al,byte ptr [ebp-1]
 005600ED    pop         ecx
 005600EE    pop         ebp
 005600EF    ret
end;*}

//005600F0
{*function sub_005600F0:?;
begin
 005600F0    push        ebp
 005600F1    mov         ebp,esp
 005600F3    push        ecx
 005600F4    mov         byte ptr [ebp-1],0
 005600F8    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>005600FF    jne         0056014B
 00560101    mov         eax,[0056E3C0];^Application:TApplication
 00560106    mov         eax,dword ptr [eax]
 00560108    call        004AB51C
 0056010D    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>00560114    jne         0056014B
 00560116    push        0
 00560118    call        kernel32.Sleep
 0056011D    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>00560124    jne         0056014B
 00560126    call        0055FE88
 0056012B    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>00560132    jne         0056014B
 00560134    cmp         byte ptr ds:[59BF53],0;gvar_0059BF53
>0056013B    je          00560146
 0056013D    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>00560144    je          005600F8
 00560146    call        0055FF28
 0056014B    mov         al,byte ptr [ebp-1]
 0056014E    pop         ecx
 0056014F    pop         ebp
 00560150    ret
end;*}

//00560154
{*function sub_00560154(?:?; ?:?; ?:?):?;
begin
 00560154    push        ebp
 00560155    mov         ebp,esp
 00560157    add         esp,0FFFFFFE0
 0056015A    mov         dword ptr [ebp-4],eax
 0056015D    mov         byte ptr [ebp-5],1
 00560161    lea         eax,[ebp-10]
 00560164    push        eax
 00560165    call        kernel32.QueryPerformanceCounter
 0056016A    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>00560171    jne         00560204
 00560177    call        0055FE88
 0056017C    mov         eax,[0056E3C0];^Application:TApplication
 00560181    mov         eax,dword ptr [eax]
 00560183    call        004AB51C
 00560188    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>0056018F    jne         00560204
 00560191    push        0
 00560193    call        kernel32.Sleep
 00560198    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>0056019F    jne         00560204
 005601A1    lea         eax,[ebp-18]
 005601A4    push        eax
 005601A5    call        kernel32.QueryPerformanceCounter
 005601AA    push        dword ptr [ebp+0C]
 005601AD    push        dword ptr [ebp+8]
 005601B0    mov         eax,dword ptr [ebp-18]
 005601B3    mov         edx,dword ptr [ebp-14]
 005601B6    sub         eax,dword ptr [ebp-10]
 005601B9    sbb         edx,dword ptr [ebp-0C]
 005601BC    call        @_lldiv
 005601C1    mov         dword ptr [ebp-20],eax
 005601C4    mov         dword ptr [ebp-1C],edx
 005601C7    mov         eax,dword ptr [ebp-4]
 005601CA    cdq
 005601CB    cmp         edx,dword ptr [ebp-1C]
>005601CE    jne         005601D7
 005601D0    cmp         eax,dword ptr [ebp-20]
>005601D3    jae         005601DF
>005601D5    jmp         005601D9
>005601D7    jge         005601DF
 005601D9    mov         byte ptr [ebp-5],0
>005601DD    jmp         00560204
 005601DF    mov         al,[0059BF53];0x0 gvar_0059BF53
 005601E4    xor         al,1
 005601E6    and         al,byte ptr ds:[59BF52];0x0 gvar_0059BF52
>005601EC    je          005601F7
 005601EE    cmp         byte ptr ds:[59BF50],0;gvar_0059BF50
>005601F5    jne         00560204
 005601F7    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>005601FE    je          0056016A
 00560204    call        0055FF28
 00560209    mov         al,byte ptr [ebp-5]
 0056020C    mov         esp,ebp
 0056020E    pop         ebp
 0056020F    ret         8
end;*}

//00560214
procedure sub_00560214;
begin
{*
 00560214    push        edi
 00560215    movzx       edx,word ptr ds:[56DF14];0xC08B0170 gvar_0056DF14
 0056021C    mov         ecx,100
 00560221    lea         edi,ds:[59BF5C];0x0 gvar_0059BF5C
 00560227    rep ins     word ptr [edi],dl
 0056022A    pop         edi
 0056022B    cmp         byte ptr ds:[59F0AC],0;gvar_0059F0AC:Boolean
>00560232    je          0056023A
 00560234    call        005600F0
 00560239    ret
 0056023A    call        00560080
 0056023F    ret
*}
end;

//00560240
procedure sub_00560240;
begin
{*
 00560240    push        esi
 00560241    movzx       edx,word ptr ds:[56DF14];0xC08B0170 gvar_0056DF14
 00560248    mov         ecx,100
 0056024D    lea         esi,ds:[59BF5C];0x0 gvar_0059BF5C
 00560253    rep outs    dl,word ptr [esi]
 00560256    pop         esi
 00560257    cmp         byte ptr ds:[59F0AC],0;gvar_0059F0AC:Boolean
>0056025E    je          00560266
 00560260    call        005600F0
 00560265    ret
 00560266    call        00560080
 0056026B    ret
*}
end;

//0056026C
procedure sub_0056026C;
begin
{*
 0056026C    push        0
 0056026E    mov         edx,59BF5C;gvar_0059BF5C
 00560273    mov         ecx,100
 00560278    mov         eax,59EF60;gvar_0059EF60
 0056027D    call        0040375C
 00560282    call        @_IOTest
 00560287    ret
*}
end;

//00560288
procedure sub_00560288(?:TMemoryStream);
begin
{*
 00560288    push        ebp
 00560289    mov         ebp,esp
 0056028B    push        ecx
 0056028C    push        ebx
 0056028D    mov         dword ptr [ebp-4],eax
 00560290    mov         edx,59BF5C;gvar_0059BF5C
 00560295    mov         ecx,200
 0056029A    mov         eax,dword ptr [ebp-4]
 0056029D    mov         ebx,dword ptr [eax]
 0056029F    call        dword ptr [ebx+10];TMemoryStream.sub_0042412C
 005602A2    pop         ebx
 005602A3    pop         ecx
 005602A4    pop         ebp
 005602A5    ret
*}
end;

//005602A8
{*procedure sub_005602A8(?:?);
begin
 005602A8    push        ebp
 005602A9    mov         ebp,esp
 005602AB    push        ecx
 005602AC    push        ebx
 005602AD    mov         dword ptr [ebp-4],eax
 005602B0    mov         edx,59BF5C;gvar_0059BF5C
 005602B5    mov         ecx,200
 005602BA    mov         eax,dword ptr [ebp-4]
 005602BD    mov         ebx,dword ptr [eax]
 005602BF    call        dword ptr [ebx+0C]
 005602C2    pop         ebx
 005602C3    pop         ecx
 005602C4    pop         ebp
 005602C5    ret
end;*}

//005602C8
{*procedure sub_005602C8(?:?);
begin
 005602C8    push        ebp
 005602C9    mov         ebp,esp
 005602CB    push        ecx
 005602CC    mov         dword ptr [ebp-4],eax
 005602CF    mov         eax,59BF5C;gvar_0059BF5C
 005602D4    xor         ecx,ecx
 005602D6    mov         edx,3000
 005602DB    call        @FillChar
 005602E0    mov         word ptr ds:[59BF5C],6142;gvar_0059BF5C
 005602E9    mov         word ptr ds:[59BF5E],2064;gvar_0059BF5E
 005602F2    mov         word ptr ds:[59BF60],6573;gvar_0059BF60
 005602FB    mov         word ptr ds:[59BF62],7463;gvar_0059BF62
 00560304    mov         word ptr ds:[59BF64],726F;gvar_0059BF64
 0056030D    mov         eax,dword ptr [ebp-4]
 00560310    call        00560288
 00560315    pop         ecx
 00560316    pop         ebp
 00560317    ret
end;*}

//00560318
procedure sub_00560318;
begin
{*
 00560318    mov         eax,59BF5C;gvar_0059BF5C
 0056031D    xor         ecx,ecx
 0056031F    mov         edx,3000
 00560324    call        @FillChar
 00560329    ret
*}
end;

//0056032C
procedure sub_0056032C;
begin
{*
 0056032C    call        00560318
 00560331    push        esi
 00560332    movzx       edx,word ptr ds:[56DF14];0xC08B0170 gvar_0056DF14
 00560339    mov         ecx,100
 0056033E    lea         esi,ds:[59BF5C];0x0 gvar_0059BF5C
 00560344    rep outs    dl,word ptr [esi]
 00560347    pop         esi
 00560348    cmp         byte ptr ds:[59F0AC],0;gvar_0059F0AC:Boolean
>0056034F    je          00560357
 00560351    call        005600F0
 00560356    ret
 00560357    call        00560080
 0056035C    ret
*}
end;

//00560360
procedure sub_00560360;
begin
{*
 00560360    mov         byte ptr ds:[56DF04],0;gvar_0056DF04
 00560367    cmp         byte ptr ds:[56DF1C],0;gvar_0056DF1C:Boolean
>0056036E    jne         00560398
 00560370    mov         dl,0C
 00560372    mov         ax,[0056DF18];0x376 gvar_0056DF18
 00560378    call        0055FE70
 0056037D    push        64
 0056037F    call        kernel32.Sleep
 00560384    mov         dl,8
 00560386    mov         ax,[0056DF18];0x376 gvar_0056DF18
 0056038C    call        0055FE70
 00560391    push        64
 00560393    call        kernel32.Sleep
 00560398    ret
*}
end;

//0056039C
procedure sub_0056039C;
begin
{*
 0056039C    mov         byte ptr ds:[56DF04],0;gvar_0056DF04
 005603A3    cmp         byte ptr ds:[56DF1C],0;gvar_0056DF1C:Boolean
>005603AA    je          005603CE
 005603AC    push        0
 005603AE    push        0
 005603B0    push        0AF
 005603B5    push        91
 005603BA    xor         ecx,ecx
 005603BC    mov         dl,3F
 005603BE    xor         eax,eax
 005603C0    call        004CC058
 005603C5    xor         al,1
 005603C7    mov         [0059BF4C],al;gvar_0059BF4C
>005603CC    jmp         005603FC
 005603CE    push        0
 005603D0    push        0
 005603D2    push        0AF
 005603D7    push        91
 005603DC    xor         ecx,ecx
 005603DE    mov         dl,3F
 005603E0    xor         eax,eax
 005603E2    call        0055FFC4
 005603E7    cmp         byte ptr ds:[59F0AC],0;gvar_0059F0AC:Boolean
>005603EE    je          005603F7
 005603F0    call        005600F0
>005603F5    jmp         005603FC
 005603F7    call        00560080
 005603FC    cmp         byte ptr ds:[59BF4C],0;gvar_0059BF4C
>00560403    jne         0056042D
 00560405    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>0056040C    jne         0056042D
 0056040E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00560413    mov         eax,dword ptr [eax]
 00560415    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0056041B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00560421    mov         edx,5604F4;'Initialize Device Parameters - OK'
 00560426    mov         ecx,dword ptr [eax]
 00560428    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>0056042B    jmp         0056044A
 0056042D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00560432    mov         eax,dword ptr [eax]
 00560434    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0056043A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00560440    mov         edx,560520;'Initialize Device Parameters - Error'
 00560445    mov         ecx,dword ptr [eax]
 00560447    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0056044A    cmp         byte ptr ds:[56DF1C],0;gvar_0056DF1C:Boolean
>00560451    je          00560472
 00560453    push        0
 00560455    push        0
 00560457    push        0A0
 0056045C    push        10
 0056045E    xor         ecx,ecx
 00560460    xor         edx,edx
 00560462    xor         eax,eax
 00560464    call        004CC058
 00560469    xor         al,1
 0056046B    mov         [0059BF4C],al;gvar_0059BF4C
>00560470    jmp         0056049D
 00560472    push        0
 00560474    push        0
 00560476    push        0A0
 0056047B    push        10
 0056047D    xor         ecx,ecx
 0056047F    xor         edx,edx
 00560481    xor         eax,eax
 00560483    call        0055FFC4
 00560488    cmp         byte ptr ds:[59F0AC],0;gvar_0059F0AC:Boolean
>0056048F    je          00560498
 00560491    call        005600F0
>00560496    jmp         0056049D
 00560498    call        00560080
 0056049D    cmp         byte ptr ds:[59BF4C],0;gvar_0059BF4C
>005604A4    jne         005604CD
 005604A6    cmp         byte ptr ds:[56DF04],0;gvar_0056DF04
>005604AD    jne         005604CD
 005604AF    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005604B4    mov         eax,dword ptr [eax]
 005604B6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005604BC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005604C2    mov         edx,560550;'Recalibrate - OK'
 005604C7    mov         ecx,dword ptr [eax]
 005604C9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005604CC    ret
 005604CD    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005604D2    mov         eax,dword ptr [eax]
 005604D4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005604DA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005604E0    mov         edx,56056C;'Recalibrate - Error'
 005604E5    mov         ecx,dword ptr [eax]
 005604E7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005604EA    ret
*}
end;

//00560580
{*procedure sub_00560580(?:?);
begin
 00560580    push        ebp
 00560581    mov         ebp,esp
 00560583    push        ecx
 00560584    push        esi
 00560585    push        edi
 00560586    mov         dword ptr [ebp-4],eax
 00560589    mov         byte ptr ds:[56DF04],0;gvar_0056DF04
 00560590    cmp         byte ptr ds:[56DF1C],0;gvar_0056DF1C:Boolean
>00560597    je          005605B9
 00560599    push        0
 0056059B    push        0
 0056059D    push        0
 0056059F    push        0A0
 005605A4    push        0EC
 005605A9    mov         eax,59BF5C;gvar_0059BF5C
 005605AE    mov         cl,1
 005605B0    xor         edx,edx
 005605B2    call        004CC0B8
>005605B7    jmp         0056061D
 005605B9    push        0
 005605BB    push        0
 005605BD    push        0A0
 005605C2    push        0EC
 005605C7    xor         ecx,ecx
 005605C9    mov         dl,1
 005605CB    xor         eax,eax
 005605CD    call        0055FFC4
 005605D2    cmp         byte ptr ds:[59F0AC],0;gvar_0059F0AC:Boolean
>005605D9    je          005605E2
 005605DB    call        005600F0
>005605E0    jmp         005605E7
 005605E2    call        00560080
 005605E7    mov         al,[0059BF4C];0x0 gvar_0059BF4C
 005605EC    xor         al,1
 005605EE    and         al,byte ptr ds:[59BF4F];0x0 gvar_0059BF4F
>005605F4    je          0056060E
 005605F6    call        00560214
 005605FB    mov         eax,dword ptr [ebp-4]
 005605FE    mov         edi,eax
 00560600    mov         esi,59BF5C;gvar_0059BF5C
 00560605    mov         ecx,80
 0056060A    rep movs    dword ptr [edi],dword ptr [esi]
>0056060C    jmp         0056061D
 0056060E    mov         eax,dword ptr [ebp-4]
 00560611    xor         ecx,ecx
 00560613    mov         edx,200
 00560618    call        @FillChar
 0056061D    pop         edi
 0056061E    pop         esi
 0056061F    pop         ecx
 00560620    pop         ebp
 00560621    ret
end;*}

//00560624
{*procedure sub_00560624(?:?; ?:?);
begin
 00560624    push        ebp
 00560625    mov         ebp,esp
 00560627    add         esp,0FFFFFFE8
 0056062A    mov         dword ptr [ebp-8],edx
 0056062D    mov         dword ptr [ebp-4],eax
 00560630    mov         eax,dword ptr [ebp-4]
 00560633    mov         dword ptr [ebp-0C],eax
 00560636    mov         eax,dword ptr [ebp-8]
 00560639    shr         eax,1
 0056063B    dec         eax
 0056063C    test        eax,eax
>0056063E    jl          00560673
 00560640    inc         eax
 00560641    mov         dword ptr [ebp-18],eax
 00560644    mov         dword ptr [ebp-10],0
 0056064B    mov         eax,dword ptr [ebp-0C]
 0056064E    mov         al,byte ptr [eax]
 00560650    mov         byte ptr [ebp-11],al
 00560653    mov         eax,dword ptr [ebp-0C]
 00560656    inc         eax
 00560657    mov         al,byte ptr [eax]
 00560659    mov         edx,dword ptr [ebp-0C]
 0056065C    mov         byte ptr [edx],al
 0056065E    mov         eax,dword ptr [ebp-0C]
 00560661    inc         eax
 00560662    mov         dl,byte ptr [ebp-11]
 00560665    mov         byte ptr [eax],dl
 00560667    add         dword ptr [ebp-0C],2
 0056066B    inc         dword ptr [ebp-10]
 0056066E    dec         dword ptr [ebp-18]
>00560671    jne         0056064B
 00560673    mov         esp,ebp
 00560675    pop         ebp
 00560676    ret
end;*}

//00560678
{*function sub_00560678(?:?; ?:?):?;
begin
 00560678    push        ebp
 00560679    mov         ebp,esp
 0056067B    add         esp,0FFFFFFF4
 0056067E    mov         byte ptr [ebp-5],dl
 00560681    mov         dword ptr [ebp-4],eax
 00560684    mov         al,byte ptr [ebp-4]
 00560687    and         al,0FF
 00560689    mov         byte ptr [ebp-7],al
 0056068C    mov         eax,dword ptr [ebp-4]
 0056068F    shr         eax,8
 00560692    and         al,0FF
 00560694    mov         byte ptr [ebp-8],al
 00560697    mov         eax,dword ptr [ebp-4]
 0056069A    shr         eax,10
 0056069D    and         al,0FF
 0056069F    mov         byte ptr [ebp-9],al
 005606A2    mov         eax,dword ptr [ebp-4]
 005606A5    shr         eax,18
 005606A8    and         al,0F
 005606AA    mov         byte ptr [ebp-0A],al
 005606AD    cmp         byte ptr ds:[56DF0C],0;gvar_0056DF0C
>005606B4    je          005606D5
 005606B6    mov         al,byte ptr [ebp-8]
 005606B9    push        eax
 005606BA    mov         al,byte ptr [ebp-9]
 005606BD    push        eax
 005606BE    mov         al,byte ptr [ebp-0A]
 005606C1    or          al,0E0
 005606C3    push        eax
 005606C4    push        40
 005606C6    mov         cl,byte ptr [ebp-7]
 005606C9    mov         dl,byte ptr [ebp-5]
 005606CC    xor         eax,eax
 005606CE    call        0055FFC4
>005606D3    jmp         005606F2
 005606D5    mov         al,byte ptr [ebp-8]
 005606D8    push        eax
 005606D9    mov         al,byte ptr [ebp-9]
 005606DC    push        eax
 005606DD    mov         al,byte ptr [ebp-0A]
 005606E0    or          al,0E0
 005606E2    push        eax
 005606E3    push        41
 005606E5    mov         cl,byte ptr [ebp-7]
 005606E8    mov         dl,byte ptr [ebp-5]
 005606EB    xor         eax,eax
 005606ED    call        0055FFC4
 005606F2    cmp         byte ptr ds:[59BF4C],0;gvar_0059BF4C
>005606F9    je          00560701
 005606FB    mov         byte ptr [ebp-6],0
>005606FF    jmp         00560705
 00560701    mov         byte ptr [ebp-6],1
 00560705    mov         al,byte ptr [ebp-6]
 00560708    mov         esp,ebp
 0056070A    pop         ebp
 0056070B    ret
end;*}

//0056070C
{*function sub_0056070C(?:?; ?:?):?;
begin
 0056070C    push        ebp
 0056070D    mov         ebp,esp
 0056070F    add         esp,0FFFFFFF4
 00560712    mov         byte ptr [ebp-5],dl
 00560715    mov         dword ptr [ebp-4],eax
 00560718    mov         al,byte ptr [ebp-4]
 0056071B    and         al,0FF
 0056071D    mov         byte ptr [ebp-7],al
 00560720    mov         eax,dword ptr [ebp-4]
 00560723    shr         eax,8
 00560726    and         al,0FF
 00560728    mov         byte ptr [ebp-8],al
 0056072B    mov         eax,dword ptr [ebp-4]
 0056072E    shr         eax,10
 00560731    and         al,0FF
 00560733    mov         byte ptr [ebp-9],al
 00560736    mov         eax,dword ptr [ebp-4]
 00560739    shr         eax,18
 0056073C    and         al,0F
 0056073E    mov         byte ptr [ebp-0A],al
 00560741    cmp         byte ptr ds:[56DF0C],0;gvar_0056DF0C
>00560748    je          00560769
 0056074A    mov         al,byte ptr [ebp-8]
 0056074D    push        eax
 0056074E    mov         al,byte ptr [ebp-9]
 00560751    push        eax
 00560752    mov         al,byte ptr [ebp-0A]
 00560755    or          al,0E0
 00560757    push        eax
 00560758    push        30
 0056075A    mov         cl,byte ptr [ebp-7]
 0056075D    mov         dl,byte ptr [ebp-5]
 00560760    xor         eax,eax
 00560762    call        0055FFC4
>00560767    jmp         00560786
 00560769    mov         al,byte ptr [ebp-8]
 0056076C    push        eax
 0056076D    mov         al,byte ptr [ebp-9]
 00560770    push        eax
 00560771    mov         al,byte ptr [ebp-0A]
 00560774    or          al,0E0
 00560776    push        eax
 00560777    push        31
 00560779    mov         cl,byte ptr [ebp-7]
 0056077C    mov         dl,byte ptr [ebp-5]
 0056077F    xor         eax,eax
 00560781    call        0055FFC4
 00560786    cmp         byte ptr ds:[59BF4C],0;gvar_0059BF4C
>0056078D    je          00560795
 0056078F    mov         byte ptr [ebp-6],0
>00560793    jmp         00560799
 00560795    mov         byte ptr [ebp-6],1
 00560799    mov         al,byte ptr [ebp-6]
 0056079C    mov         esp,ebp
 0056079E    pop         ebp
 0056079F    ret
end;*}

//005607A0
{*function sub_005607A0(?:?; ?:?; ?:?):?;
begin
 005607A0    push        ebp
 005607A1    mov         ebp,esp
 005607A3    add         esp,0FFFFFFF4
 005607A6    mov         word ptr [ebp-2],ax
 005607AA    mov         al,byte ptr [ebp-2]
 005607AD    and         al,0FF
 005607AF    mov         byte ptr [ebp-5],al
 005607B2    movzx       eax,word ptr [ebp-2]
 005607B6    shr         eax,8
 005607B9    and         al,0FF
 005607BB    mov         byte ptr [ebp-9],al
 005607BE    mov         al,byte ptr [ebp+8]
 005607C1    and         al,0FF
 005607C3    mov         byte ptr [ebp-4],al
 005607C6    mov         eax,dword ptr [ebp+8]
 005607C9    mov         edx,dword ptr [ebp+0C]
 005607CC    shrd        eax,edx,8
 005607D0    shr         edx,8
 005607D3    and         al,0FF
 005607D5    mov         byte ptr [ebp-6],al
 005607D8    mov         eax,dword ptr [ebp+8]
 005607DB    mov         edx,dword ptr [ebp+0C]
 005607DE    shrd        eax,edx,10
 005607E2    shr         edx,10
 005607E5    and         al,0FF
 005607E7    mov         byte ptr [ebp-7],al
 005607EA    mov         eax,dword ptr [ebp+8]
 005607ED    mov         edx,dword ptr [ebp+0C]
 005607F0    shrd        eax,edx,18
 005607F4    shr         edx,18
 005607F7    and         al,0FF
 005607F9    mov         byte ptr [ebp-8],al
 005607FC    mov         eax,dword ptr [ebp+0C]
 005607FF    xor         edx,edx
 00560801    and         al,0FF
 00560803    mov         byte ptr [ebp-0A],al
 00560806    mov         eax,dword ptr [ebp+0C]
 00560809    shr         eax,8
 0056080C    xor         edx,edx
 0056080E    and         al,0FF
 00560810    mov         byte ptr [ebp-0B],al
 00560813    mov         al,byte ptr [ebp-6]
 00560816    push        eax
 00560817    mov         al,byte ptr [ebp-7]
 0056081A    push        eax
 0056081B    push        0E0
 00560820    push        42
 00560822    push        0
 00560824    mov         al,byte ptr [ebp-9]
 00560827    push        eax
 00560828    mov         al,byte ptr [ebp-8]
 0056082B    push        eax
 0056082C    mov         al,byte ptr [ebp-0A]
 0056082F    push        eax
 00560830    mov         al,byte ptr [ebp-0B]
 00560833    push        eax
 00560834    mov         cl,byte ptr [ebp-4]
 00560837    mov         dl,byte ptr [ebp-5]
 0056083A    xor         eax,eax
 0056083C    call        00560018
 00560841    mov         al,[0059BF4C];0x0 gvar_0059BF4C
 00560846    xor         al,1
 00560848    mov         byte ptr [ebp-3],al
 0056084B    mov         al,byte ptr [ebp-3]
 0056084E    mov         esp,ebp
 00560850    pop         ebp
 00560851    ret         8
end;*}

//00560854
{*function sub_00560854(?:?; ?:?; ?:?):?;
begin
 00560854    push        ebp
 00560855    mov         ebp,esp
 00560857    add         esp,0FFFFFFF4
 0056085A    mov         word ptr [ebp-2],ax
 0056085E    mov         al,byte ptr [ebp-2]
 00560861    mov         byte ptr [ebp-5],al
 00560864    movzx       eax,word ptr [ebp-2]
 00560868    shr         eax,8
 0056086B    mov         byte ptr [ebp-9],al
 0056086E    mov         eax,dword ptr [ebp+8]
 00560871    mov         byte ptr [ebp-4],al
 00560874    mov         eax,dword ptr [ebp+8]
 00560877    mov         edx,dword ptr [ebp+0C]
 0056087A    shrd        eax,edx,8
 0056087E    shr         edx,8
 00560881    mov         byte ptr [ebp-6],al
 00560884    mov         eax,dword ptr [ebp+8]
 00560887    mov         edx,dword ptr [ebp+0C]
 0056088A    shrd        eax,edx,10
 0056088E    shr         edx,10
 00560891    mov         byte ptr [ebp-7],al
 00560894    mov         eax,dword ptr [ebp+8]
 00560897    mov         edx,dword ptr [ebp+0C]
 0056089A    shrd        eax,edx,18
 0056089E    shr         edx,18
 005608A1    mov         byte ptr [ebp-8],al
 005608A4    mov         eax,dword ptr [ebp+0C]
 005608A7    xor         edx,edx
 005608A9    mov         byte ptr [ebp-0A],al
 005608AC    mov         eax,dword ptr [ebp+0C]
 005608AF    shr         eax,8
 005608B2    xor         edx,edx
 005608B4    mov         byte ptr [ebp-0B],al
 005608B7    mov         al,byte ptr [ebp-6]
 005608BA    push        eax
 005608BB    mov         al,byte ptr [ebp-7]
 005608BE    push        eax
 005608BF    push        0E0
 005608C4    push        34
 005608C6    push        0
 005608C8    mov         al,byte ptr [ebp-9]
 005608CB    push        eax
 005608CC    mov         al,byte ptr [ebp-8]
 005608CF    push        eax
 005608D0    mov         al,byte ptr [ebp-0A]
 005608D3    push        eax
 005608D4    mov         al,byte ptr [ebp-0B]
 005608D7    push        eax
 005608D8    mov         cl,byte ptr [ebp-4]
 005608DB    mov         dl,byte ptr [ebp-5]
 005608DE    xor         eax,eax
 005608E0    call        00560018
 005608E5    call        00560080
 005608EA    mov         al,[0059BF4C];0x0 gvar_0059BF4C
 005608EF    xor         al,1
 005608F1    mov         byte ptr [ebp-3],al
 005608F4    mov         al,byte ptr [ebp-3]
 005608F7    mov         esp,ebp
 005608F9    pop         ebp
 005608FA    ret         8
end;*}

//00560900
{*function sub_00560900(?:?):?;
begin
 00560900    push        ebp
 00560901    mov         ebp,esp
 00560903    push        ecx
 00560904    mov         byte ptr [ebp-1],al
 00560907    cmp         byte ptr ds:[56DF1C],0;gvar_0056DF1C:Boolean
>0056090E    je          00560936
 00560910    push        4F
 00560912    push        0C2
 00560917    push        0A0
 0056091C    push        0EF
 00560921    xor         ecx,ecx
 00560923    mov         dl,byte ptr [ebp-1]
 00560926    mov         al,3
 00560928    call        004CC058
 0056092D    xor         al,1
 0056092F    mov         [0059BF4C],al;gvar_0059BF4C
>00560934    jmp         00560968
 00560936    push        4F
 00560938    push        0C2
 0056093D    push        0A0
 00560942    push        0EF
 00560947    xor         ecx,ecx
 00560949    mov         dl,byte ptr [ebp-1]
 0056094C    mov         al,3
 0056094E    call        0055FFC4
 00560953    cmp         byte ptr ds:[59F0AC],0;gvar_0059F0AC:Boolean
>0056095A    je          00560963
 0056095C    call        005600F0
>00560961    jmp         00560968
 00560963    call        00560080
 00560968    mov         al,[0059BF4C];0x0 gvar_0059BF4C
 0056096D    xor         al,1
 0056096F    mov         byte ptr [ebp-2],al
 00560972    mov         al,byte ptr [ebp-2]
 00560975    pop         ecx
 00560976    pop         ebp
 00560977    ret
end;*}

Initialization
Finalization
//00560978
{*
 00560978    push        ebp
 00560979    mov         ebp,esp
 0056097B    xor         eax,eax
 0056097D    push        ebp
 0056097E    push        5609A9
 00560983    push        dword ptr fs:[eax]
 00560986    mov         dword ptr fs:[eax],esp
 00560989    inc         dword ptr ds:[59F0B0]
>0056098F    jne         0056099B
 00560991    mov         eax,59EF5C
 00560996    call        @LStrClr
 0056099B    xor         eax,eax
 0056099D    pop         edx
 0056099E    pop         ecx
 0056099F    pop         ecx
 005609A0    mov         dword ptr fs:[eax],edx
 005609A3    push        5609B0
 005609A8    ret
>005609A9    jmp         @HandleFinally
>005609AE    jmp         005609A8
 005609B0    pop         ebp
 005609B1    ret
*}
end.