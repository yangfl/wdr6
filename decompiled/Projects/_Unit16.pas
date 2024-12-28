//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit16;

interface

uses
  SysUtils, Classes;

    //function sub_004371E0(?:Extended):?;//004371E0
    //function sub_0043720C(?:Int64; ?:Extended):?;//0043720C
    //function sub_0043723C(?:Extended):?;//0043723C
    //function sub_00437270(?:Extended):?;//00437270
    //function sub_004372A4(?:Extended; ?:Extended; ?:?; ?:?):?;//004372A4
    //function sub_0043736C(?:Extended; ?:?; ?:?):?;//0043736C
    //function sub_004373CC(?:TGridCoord; ?:Single):?;//004373CC
    //function sub_004373F8(?:?; ?:?):?;//004373F8
    //function sub_00437420(?:Integer; ?:?):?;//00437420
    //function sub_00437470(?:Integer; ?:Integer):?;//00437470
    //function sub_0043749C(?:?; ?:?; ?:?; ?:?):?;//0043749C
    //function sub_004374DC(?:?):?;//004374DC
    //function sub_00437508(?:Extended; ?:?; ?:?; ?:Extended):?;//00437508

implementation

//004371E0
{*function sub_004371E0(?:Extended):?;
begin
 004371E0    push        ebp
 004371E1    mov         ebp,esp
 004371E3    add         esp,0FFFFFFF0
 004371E6    fld         tbyte ptr [ebp+8]
 004371E9    fld         tbyte ptr ds:[437200];0.0174532925199433:Extended
 004371EF    fmulp       st(1),st
 004371F1    fstp        tbyte ptr [ebp-10]
 004371F4    wait
 004371F5    fld         tbyte ptr [ebp-10]
 004371F8    mov         esp,ebp
 004371FA    pop         ebp
 004371FB    ret         0C
end;*}

//0043720C
{*function sub_0043720C(?:Int64; ?:Extended):?;
begin
 0043720C    push        ebp
 0043720D    mov         ebp,esp
 0043720F    mov         ecx,eax
 00437211    cdq
 00437212    fld1
 00437214    xor         eax,edx
 00437216    sub         eax,edx
>00437218    je          00437234
 0043721A    fld         tbyte ptr [ebp+8]
>0043721D    jmp         00437221
 0043721F    fmul        st,st(0)
 00437221    shr         eax,1
>00437223    jae         0043721F
 00437225    fmul        st(1),st
>00437227    jne         0043721F
 00437229    fstp        st(0)
 0043722B    cmp         ecx,0
>0043722E    jge         00437234
 00437230    fld1
 00437232    fdivrp      st(1),st
 00437234    wait
 00437235    pop         ebp
 00437236    ret         0C
end;*}

//0043723C
{*function sub_0043723C(?:Extended):?;
begin
 0043723C    push        ebp
 0043723D    mov         ebp,esp
 0043723F    push        ecx
 00437240    fld         tbyte ptr [ebp+8]
 00437243    call        @TRUNC
 00437248    mov         dword ptr [ebp-4],eax
 0043724B    fld         tbyte ptr [ebp+8]
 0043724E    call        @FRAC
 00437253    fcomp       dword ptr ds:[43726C];0:Single
 00437259    fnstsw      al
 0043725B    sahf
>0043725C    jbe         00437261
 0043725E    inc         dword ptr [ebp-4]
 00437261    mov         eax,dword ptr [ebp-4]
 00437264    pop         ecx
 00437265    pop         ebp
 00437266    ret         0C
end;*}

//00437270
{*function sub_00437270(?:Extended):?;
begin
 00437270    push        ebp
 00437271    mov         ebp,esp
 00437273    push        ecx
 00437274    fld         tbyte ptr [ebp+8]
 00437277    call        @TRUNC
 0043727C    mov         dword ptr [ebp-4],eax
 0043727F    fld         tbyte ptr [ebp+8]
 00437282    call        @FRAC
 00437287    fcomp       dword ptr ds:[4372A0];0:Single
 0043728D    fnstsw      al
 0043728F    sahf
>00437290    jae         00437295
 00437292    dec         dword ptr [ebp-4]
 00437295    mov         eax,dword ptr [ebp-4]
 00437298    pop         ecx
 00437299    pop         ebp
 0043729A    ret         0C
end;*}

//004372A4
{*function sub_004372A4(?:Extended; ?:Extended; ?:?; ?:?):?;
begin
 004372A4    push        ebp
 004372A5    mov         ebp,esp
 004372A7    add         esp,0FFFFFFF0
 004372AA    fld         tbyte ptr [ebp+8]
 004372AD    fcomp       dword ptr ds:[43735C];0:Single
 004372B3    fnstsw      al
 004372B5    sahf
>004372B6    jne         004372CF
 004372B8    xor         eax,eax
 004372BA    mov         dword ptr [ebp-10],eax
 004372BD    mov         dword ptr [ebp-0C],80000000
 004372C4    mov         word ptr [ebp-8],3FFF
>004372CA    jmp         00437353
 004372CF    fld         tbyte ptr [ebp+14]
 004372D2    fcomp       dword ptr ds:[43735C];0:Single
 004372D8    fnstsw      al
 004372DA    sahf
>004372DB    jne         004372F9
 004372DD    fld         tbyte ptr [ebp+8]
 004372E0    fcomp       dword ptr ds:[43735C];0:Single
 004372E6    fnstsw      al
 004372E8    sahf
>004372E9    jbe         004372F9
 004372EB    xor         eax,eax
 004372ED    mov         dword ptr [ebp-10],eax
 004372F0    mov         dword ptr [ebp-0C],eax
 004372F3    mov         word ptr [ebp-8],ax
>004372F7    jmp         00437353
 004372F9    fld         tbyte ptr [ebp+8]
 004372FC    call        @FRAC
 00437301    fcomp       dword ptr ds:[43735C];0:Single
 00437307    fnstsw      al
 00437309    sahf
>0043730A    jne         0043733C
 0043730C    fld         tbyte ptr [ebp+8]
 0043730F    fabs
 00437311    fld         tbyte ptr ds:[437360];2147483647:Extended
 00437317    fcompp
 00437319    fnstsw      al
 0043731B    sahf
>0043731C    jb          0043733C
 0043731E    mov         ax,word ptr [ebp+1C]
 00437322    push        eax
 00437323    push        dword ptr [ebp+18]
 00437326    push        dword ptr [ebp+14]
 00437329    fld         tbyte ptr [ebp+8]
 0043732C    call        @TRUNC
 00437331    call        0043720C
 00437336    fstp        tbyte ptr [ebp-10]
 00437339    wait
>0043733A    jmp         00437353
 0043733C    fld         tbyte ptr [ebp+14]
 0043733F    fldln2
 00437341    fxch        st(1)
 00437343    fyl2x
 00437345    fld         tbyte ptr [ebp+8]
 00437348    fmulp       st(1),st
 0043734A    call        @EXP
 0043734F    fstp        tbyte ptr [ebp-10]
 00437352    wait
 00437353    fld         tbyte ptr [ebp-10]
 00437356    mov         esp,ebp
 00437358    pop         ebp
 00437359    ret         18
end;*}

//0043736C
{*function sub_0043736C(?:Extended; ?:?; ?:?):?;
begin
 0043736C    push        ebp
 0043736D    mov         ebp,esp
 0043736F    add         esp,0FFFFFFE4
 00437372    mov         ax,word ptr [ebp+10]
 00437376    push        eax
 00437377    push        dword ptr [ebp+0C]
 0043737A    push        dword ptr [ebp+8]
 0043737D    push        0
 0043737F    push        0
 00437381    push        0
 00437383    call        00437508
 00437388    test        al,al
>0043738A    je          0043739A
 0043738C    xor         eax,eax
 0043738E    mov         dword ptr [ebp-10],eax
 00437391    mov         dword ptr [ebp-0C],eax
 00437394    mov         word ptr [ebp-8],ax
>00437398    jmp         004373BF
 0043739A    fld         tbyte ptr [ebp+8]
 0043739D    call        @EXP
 004373A2    fstp        tbyte ptr [ebp-1C]
 004373A5    wait
 004373A6    fld         tbyte ptr [ebp+8]
 004373A9    fchs
 004373AB    call        @EXP
 004373B0    fld         tbyte ptr [ebp-1C]
 004373B3    fsubrp      st(1),st
 004373B5    fdiv        dword ptr ds:[4373C8];2:Single
 004373BB    fstp        tbyte ptr [ebp-10]
 004373BE    wait
 004373BF    fld         tbyte ptr [ebp-10]
 004373C2    mov         esp,ebp
 004373C4    pop         ebp
 004373C5    ret         0C
end;*}

//004373CC
{*function sub_004373CC(?:TGridCoord; ?:Single):?;
begin
 004373CC    push        ebp
 004373CD    mov         ebp,esp
 004373CF    add         esp,0FFFFFFF4
 004373D2    mov         dword ptr [ebp-8],edx
 004373D5    mov         dword ptr [ebp-4],eax
 004373D8    mov         eax,dword ptr [ebp-4]
 004373DB    cmp         eax,dword ptr [ebp-8]
>004373DE    jge         004373E8
 004373E0    mov         eax,dword ptr [ebp-4]
 004373E3    mov         dword ptr [ebp-0C],eax
>004373E6    jmp         004373EE
 004373E8    mov         eax,dword ptr [ebp-8]
 004373EB    mov         dword ptr [ebp-0C],eax
 004373EE    mov         eax,dword ptr [ebp-0C]
 004373F1    mov         esp,ebp
 004373F3    pop         ebp
 004373F4    ret
end;*}

//004373F8
{*function sub_004373F8(?:?; ?:?):?;
begin
 004373F8    push        ebp
 004373F9    mov         ebp,esp
 004373FB    push        ecx
 004373FC    fld         dword ptr [ebp+0C]
 004373FF    fcomp       dword ptr [ebp+8]
 00437402    fnstsw      al
 00437404    sahf
>00437405    jae         0043740F
 00437407    mov         eax,dword ptr [ebp+0C]
 0043740A    mov         dword ptr [ebp-4],eax
>0043740D    jmp         00437415
 0043740F    mov         eax,dword ptr [ebp+8]
 00437412    mov         dword ptr [ebp-4],eax
 00437415    fld         dword ptr [ebp-4]
 00437418    pop         ecx
 00437419    pop         ebp
 0043741A    ret         8
end;*}

//00437420
{*function sub_00437420(?:Integer; ?:?):?;
begin
 00437420    push        ebp
 00437421    mov         ebp,esp
 00437423    add         esp,0FFFFFFEC
 00437426    mov         dword ptr [ebp-8],edx
 00437429    mov         dword ptr [ebp-4],eax
 0043742C    mov         eax,dword ptr [ebp-4]
 0043742F    mov         eax,dword ptr [eax]
 00437431    mov         dword ptr [ebp-0C],eax
 00437434    mov         eax,dword ptr [ebp-8]
 00437437    test        eax,eax
>00437439    jle         00437467
 0043743B    mov         dword ptr [ebp-14],eax
 0043743E    mov         dword ptr [ebp-10],1
 00437445    mov         eax,dword ptr [ebp-4]
 00437448    mov         edx,dword ptr [ebp-10]
 0043744B    mov         eax,dword ptr [eax+edx*4]
 0043744E    cmp         eax,dword ptr [ebp-0C]
>00437451    jle         0043745F
 00437453    mov         eax,dword ptr [ebp-4]
 00437456    mov         edx,dword ptr [ebp-10]
 00437459    mov         eax,dword ptr [eax+edx*4]
 0043745C    mov         dword ptr [ebp-0C],eax
 0043745F    inc         dword ptr [ebp-10]
 00437462    dec         dword ptr [ebp-14]
>00437465    jne         00437445
 00437467    mov         eax,dword ptr [ebp-0C]
 0043746A    mov         esp,ebp
 0043746C    pop         ebp
 0043746D    ret
end;*}

//00437470
{*function sub_00437470(?:Integer; ?:Integer):?;
begin
 00437470    push        ebp
 00437471    mov         ebp,esp
 00437473    add         esp,0FFFFFFF4
 00437476    mov         dword ptr [ebp-8],edx
 00437479    mov         dword ptr [ebp-4],eax
 0043747C    mov         eax,dword ptr [ebp-4]
 0043747F    cmp         eax,dword ptr [ebp-8]
>00437482    jle         0043748C
 00437484    mov         eax,dword ptr [ebp-4]
 00437487    mov         dword ptr [ebp-0C],eax
>0043748A    jmp         00437492
 0043748C    mov         eax,dword ptr [ebp-8]
 0043748F    mov         dword ptr [ebp-0C],eax
 00437492    mov         eax,dword ptr [ebp-0C]
 00437495    mov         esp,ebp
 00437497    pop         ebp
 00437498    ret
end;*}

//0043749C
{*function sub_0043749C(?:?; ?:?; ?:?; ?:?):?;
begin
 0043749C    push        ebp
 0043749D    mov         ebp,esp
 0043749F    add         esp,0FFFFFFF8
 004374A2    mov         eax,dword ptr [ebp+10]
 004374A5    mov         edx,dword ptr [ebp+14]
 004374A8    cmp         edx,dword ptr [ebp+0C]
>004374AB    jne         004374B4
 004374AD    cmp         eax,dword ptr [ebp+8]
>004374B0    jbe         004374C4
>004374B2    jmp         004374B6
>004374B4    jle         004374C4
 004374B6    mov         eax,dword ptr [ebp+10]
 004374B9    mov         dword ptr [ebp-8],eax
 004374BC    mov         eax,dword ptr [ebp+14]
 004374BF    mov         dword ptr [ebp-4],eax
>004374C2    jmp         004374D0
 004374C4    mov         eax,dword ptr [ebp+8]
 004374C7    mov         dword ptr [ebp-8],eax
 004374CA    mov         eax,dword ptr [ebp+0C]
 004374CD    mov         dword ptr [ebp-4],eax
 004374D0    mov         eax,dword ptr [ebp-8]
 004374D3    mov         edx,dword ptr [ebp-4]
 004374D6    pop         ecx
 004374D7    pop         ecx
 004374D8    pop         ebp
 004374D9    ret         10
end;*}

//004374DC
{*function sub_004374DC(?:?):?;
begin
 004374DC    push        ebp
 004374DD    mov         ebp,esp
 004374DF    add         esp,0FFFFFFF8
 004374E2    mov         dword ptr [ebp-4],eax
 004374E5    mov         byte ptr [ebp-5],0
 004374E9    cmp         dword ptr [ebp-4],0
>004374ED    jge         004374F5
 004374EF    mov         byte ptr [ebp-5],0FF
>004374F3    jmp         004374FF
 004374F5    cmp         dword ptr [ebp-4],0
>004374F9    jle         004374FF
 004374FB    mov         byte ptr [ebp-5],1
 004374FF    mov         al,byte ptr [ebp-5]
 00437502    pop         ecx
 00437503    pop         ecx
 00437504    pop         ebp
 00437505    ret
end;*}

//00437508
{*function sub_00437508(?:Extended; ?:?; ?:?; ?:Extended):?;
begin
 00437508    push        ebp
 00437509    mov         ebp,esp
 0043750B    push        ecx
 0043750C    fld         tbyte ptr [ebp+8]
 0043750F    fcomp       dword ptr ds:[437548];0:Single
 00437515    fnstsw      al
 00437517    sahf
>00437518    jne         0043752E
 0043751A    mov         dword ptr [ebp+8],0C44DE15B
 00437521    mov         dword ptr [ebp+0C],0E69594BE
 00437528    mov         word ptr [ebp+10],3FC9
 0043752E    fld         tbyte ptr [ebp+14]
 00437531    fabs
 00437533    fld         tbyte ptr [ebp+8]
 00437536    fcompp
 00437538    fnstsw      al
 0043753A    sahf
 0043753B    setae       byte ptr [ebp-1]
 0043753F    mov         al,byte ptr [ebp-1]
 00437542    pop         ecx
 00437543    pop         ebp
 00437544    ret         18
end;*}

end.