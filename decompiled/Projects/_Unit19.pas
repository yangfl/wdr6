//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit19;

interface

uses
  SysUtils, Classes;

    //function sub_00438304(?:?; ?:?; ?:AnsiString):?;//00438304
    //function sub_00438404(?:?):?;//00438404
    //function sub_004384A8(?:?; ?:?):?;//004384A8
    //function sub_00438548(?:?; ?:?):?;//00438548
    //function sub_004385F4(?:?; ?:?; ?:?):?;//004385F4
    //function sub_00438690(?:?; ?:?):?;//00438690
    //function sub_0043878C(?:?; ?:?):?;//0043878C
    //function sub_00438888(?:?; ?:?):?;//00438888
    //function sub_00438984(?:?; ?:?; ?:?; ?:?):?;//00438984
    procedure sub_00438AD0;//00438AD0

implementation

//00438304
{*function sub_00438304(?:?; ?:?; ?:AnsiString):?;
begin
 00438304    push        ebp
 00438305    mov         ebp,esp
 00438307    add         esp,0FFFFFFF0
 0043830A    mov         dword ptr [ebp-0C],ecx
 0043830D    mov         dword ptr [ebp-8],edx
 00438310    mov         byte ptr [ebp-1],al
 00438313    mov         eax,dword ptr [ebp-0C]
 00438316    call        @LStrAddRef
 0043831B    xor         eax,eax
 0043831D    push        ebp
 0043831E    push        4383DB
 00438323    push        dword ptr fs:[eax]
 00438326    mov         dword ptr fs:[eax],esp
 00438329    xor         eax,eax
 0043832B    mov         dword ptr [ebp-10],eax
 0043832E    xor         eax,eax
 00438330    mov         al,byte ptr [ebp-1]
 00438333    cmp         byte ptr [eax+571B54],0;gvar_00571B54
>0043833A    jne         004383C5
 00438340    cmp         dword ptr ds:[571B50],0;gvar_00571B50:HMODULE
>00438347    je          00438399
 00438349    cmp         byte ptr [ebp-1],0
>0043834D    jne         00438380
 0043834F    cmp         byte ptr ds:[571B5C],0;gvar_00571B5C
>00438356    jne         00438380
 00438358    mov         ecx,4383F4;'GetMonitorInfoA'
 0043835D    mov         edx,dword ptr ds:[571B3C];0x0 gvar_00571B3C
 00438363    mov         al,4
 00438365    call        00438304
 0043836A    mov         [00571B3C],eax;gvar_00571B3C
 0043836F    cmp         byte ptr ds:[571B5C],0;gvar_00571B5C
>00438376    jne         00438380
 00438378    lea         eax,[ebp-0C]
 0043837B    call        @LStrClr
 00438380    mov         eax,dword ptr [ebp-0C]
 00438383    call        @LStrToPChar
 00438388    push        eax
 00438389    mov         eax,[00571B50];0x0 gvar_00571B50:HMODULE
 0043838E    push        eax
 0043838F    call        kernel32.GetProcAddress
 00438394    mov         dword ptr [ebp-10],eax
>00438397    jmp         0043839E
 00438399    xor         eax,eax
 0043839B    mov         dword ptr [ebp-10],eax
 0043839E    cmp         dword ptr [ebp-10],0
>004383A2    jne         004383AC
 004383A4    mov         eax,dword ptr [ebp-8]
 004383A7    mov         dword ptr [ebp-10],eax
>004383AA    jmp         004383B9
 004383AC    cmp         byte ptr [ebp-1],0
>004383B0    je          004383B9
 004383B2    mov         byte ptr ds:[571B5C],1;gvar_00571B5C
 004383B9    xor         eax,eax
 004383BB    mov         al,byte ptr [ebp-1]
 004383BE    mov         byte ptr [eax+571B54],1;gvar_00571B54
 004383C5    xor         eax,eax
 004383C7    pop         edx
 004383C8    pop         ecx
 004383C9    pop         ecx
 004383CA    mov         dword ptr fs:[eax],edx
 004383CD    push        4383E2
 004383D2    lea         eax,[ebp-0C]
 004383D5    call        @LStrClr
 004383DA    ret
>004383DB    jmp         @HandleFinally
>004383E0    jmp         004383D2
 004383E2    mov         eax,dword ptr [ebp-10]
 004383E5    mov         esp,ebp
 004383E7    pop         ebp
 004383E8    ret
end;*}

//00438404
{*function sub_00438404(?:?):?;
begin
 00438404    push        ebp
 00438405    mov         ebp,esp
 00438407    push        ecx
 00438408    cmp         byte ptr ds:[571B54],0;gvar_00571B54
>0043840F    jne         00438437
 00438411    mov         ecx,438494;'GetSystemMetrics'
 00438416    mov         edx,dword ptr ds:[571B2C];0x0 gvar_00571B2C
 0043841C    xor         eax,eax
 0043841E    call        00438304
 00438423    mov         [00571B2C],eax;gvar_00571B2C
 00438428    mov         eax,dword ptr [ebp+8]
 0043842B    push        eax
 0043842C    call        dword ptr ds:[571B2C]
 00438432    mov         dword ptr [ebp-4],eax
>00438435    jmp         00438484
 00438437    mov         dword ptr [ebp-4],0FFFFFFFF
 0043843E    mov         eax,dword ptr [ebp+8]
 00438441    add         eax,0FFFFFFB4
 00438444    sub         eax,2
>00438447    jb          0043845D
>00438449    je          00438464
 0043844B    dec         eax
>0043844C    je          0043846B
 0043844E    dec         eax
 0043844F    sub         eax,2
>00438452    jae         00438472
 00438454    mov         dword ptr [ebp-4],1
>0043845B    jmp         00438472
 0043845D    xor         eax,eax
 0043845F    mov         dword ptr [ebp-4],eax
>00438462    jmp         00438472
 00438464    xor         eax,eax
 00438466    mov         dword ptr [ebp+8],eax
>00438469    jmp         00438472
 0043846B    mov         dword ptr [ebp+8],1
 00438472    cmp         dword ptr [ebp-4],0FFFFFFFF
>00438476    jne         00438484
 00438478    mov         eax,dword ptr [ebp+8]
 0043847B    push        eax
 0043847C    call        user32.GetSystemMetrics
 00438481    mov         dword ptr [ebp-4],eax
 00438484    mov         eax,dword ptr [ebp-4]
 00438487    pop         ecx
 00438488    pop         ebp
 00438489    ret         4
end;*}

//004384A8
{*function sub_004384A8(?:?; ?:?):?;
begin
 004384A8    push        ebp
 004384A9    mov         ebp,esp
 004384AB    push        ecx
 004384AC    cmp         byte ptr ds:[571B56],0;gvar_00571B56
>004384B3    jne         004384DF
 004384B5    mov         ecx,438538;'MonitorFromRect'
 004384BA    mov         edx,dword ptr ds:[571B34];0x0 gvar_00571B34
 004384C0    mov         al,2
 004384C2    call        00438304
 004384C7    mov         [00571B34],eax;gvar_00571B34
 004384CC    mov         eax,dword ptr [ebp+0C]
 004384CF    push        eax
 004384D0    mov         eax,dword ptr [ebp+8]
 004384D3    push        eax
 004384D4    call        dword ptr ds:[571B34]
 004384DA    mov         dword ptr [ebp-4],eax
>004384DD    jmp         00438526
 004384DF    xor         eax,eax
 004384E1    mov         dword ptr [ebp-4],eax
 004384E4    mov         eax,dword ptr [ebp+0C]
 004384E7    and         eax,3
 004384EA    test        al,al
>004384EC    jne         0043851F
 004384EE    mov         eax,dword ptr [ebp+8]
 004384F1    cmp         dword ptr [eax+8],0
>004384F5    jle         00438526
 004384F7    mov         eax,dword ptr [ebp+8]
 004384FA    cmp         dword ptr [eax+0C],0
>004384FE    jle         00438526
 00438500    push        0
 00438502    call        dword ptr ds:[571B2C]
 00438508    mov         edx,dword ptr [ebp+8]
 0043850B    cmp         eax,dword ptr [edx]
>0043850D    jle         00438526
 0043850F    push        1
 00438511    call        dword ptr ds:[571B2C]
 00438517    mov         edx,dword ptr [ebp+8]
 0043851A    cmp         eax,dword ptr [edx+4]
>0043851D    jle         00438526
 0043851F    mov         dword ptr [ebp-4],12340042
 00438526    mov         eax,dword ptr [ebp-4]
 00438529    pop         ecx
 0043852A    pop         ebp
 0043852B    ret         8
end;*}

//00438548
{*function sub_00438548(?:?; ?:?):?;
begin
 00438548    push        ebp
 00438549    mov         ebp,esp
 0043854B    add         esp,0FFFFFFD0
 0043854E    cmp         byte ptr ds:[571B55],0;gvar_00571B55
>00438555    jne         00438581
 00438557    mov         ecx,4385E0;'MonitorFromWindow'
 0043855C    mov         edx,dword ptr ds:[571B30];0x0 gvar_00571B30
 00438562    mov         al,1
 00438564    call        00438304
 00438569    mov         [00571B30],eax;gvar_00571B30
 0043856E    mov         eax,dword ptr [ebp+0C]
 00438571    push        eax
 00438572    mov         eax,dword ptr [ebp+8]
 00438575    push        eax
 00438576    call        dword ptr ds:[571B30]
 0043857C    mov         dword ptr [ebp-4],eax
>0043857F    jmp         004385CD
 00438581    mov         eax,dword ptr [ebp+0C]
 00438584    and         eax,3
 00438587    test        al,al
>00438589    je          00438594
 0043858B    mov         dword ptr [ebp-4],12340042
>00438592    jmp         004385CD
 00438594    mov         eax,dword ptr [ebp+8]
 00438597    push        eax
 00438598    call        user32.IsIconic
 0043859D    test        eax,eax
>0043859F    je          004385B0
 004385A1    lea         eax,[ebp-30]
 004385A4    push        eax
 004385A5    mov         eax,dword ptr [ebp+8]
 004385A8    push        eax
 004385A9    call        user32.GetWindowPlacement
>004385AE    jmp         004385BD
 004385B0    lea         eax,[ebp-14]
 004385B3    push        eax
 004385B4    mov         eax,dword ptr [ebp+8]
 004385B7    push        eax
 004385B8    call        user32.GetWindowRect
 004385BD    mov         eax,dword ptr [ebp+0C]
 004385C0    push        eax
 004385C1    lea         eax,[ebp-14]
 004385C4    push        eax
 004385C5    call        004384A8
 004385CA    mov         dword ptr [ebp-4],eax
 004385CD    mov         eax,dword ptr [ebp-4]
 004385D0    mov         esp,ebp
 004385D2    pop         ebp
 004385D3    ret         8
end;*}

//004385F4
{*function sub_004385F4(?:?; ?:?; ?:?):?;
begin
 004385F4    push        ebp
 004385F5    mov         ebp,esp
 004385F7    push        ecx
 004385F8    cmp         byte ptr ds:[571B57],0;gvar_00571B57
>004385FF    jne         0043862D
 00438601    mov         ecx,43867C;'MonitorFromPoint'
 00438606    mov         edx,dword ptr ds:[571B38];0x0 gvar_00571B38
 0043860C    mov         al,3
 0043860E    call        00438304
 00438613    mov         [00571B38],eax;gvar_00571B38
 00438618    mov         eax,dword ptr [ebp+10]
 0043861B    push        eax
 0043861C    push        dword ptr [ebp+0C]
 0043861F    push        dword ptr [ebp+8]
 00438622    call        dword ptr ds:[571B38]
 00438628    mov         dword ptr [ebp-4],eax
>0043862B    jmp         00438669
 0043862D    xor         eax,eax
 0043862F    mov         dword ptr [ebp-4],eax
 00438632    mov         eax,dword ptr [ebp+10]
 00438635    and         eax,3
 00438638    test        al,al
>0043863A    jne         00438662
 0043863C    cmp         dword ptr [ebp+8],0
>00438640    jl          00438669
 00438642    push        0
 00438644    call        dword ptr ds:[571B2C]
 0043864A    cmp         eax,dword ptr [ebp+8]
>0043864D    jle         00438669
 0043864F    cmp         dword ptr [ebp+0C],0
>00438653    jl          00438669
 00438655    push        1
 00438657    call        dword ptr ds:[571B2C]
 0043865D    cmp         eax,dword ptr [ebp+0C]
>00438660    jle         00438669
 00438662    mov         dword ptr [ebp-4],12340042
 00438669    mov         eax,dword ptr [ebp-4]
 0043866C    pop         ecx
 0043866D    pop         ebp
 0043866E    ret         0C
end;*}

//00438690
{*function sub_00438690(?:?; ?:?):?;
begin
 00438690    push        ebp
 00438691    mov         ebp,esp
 00438693    add         esp,0FFFFFFEC
 00438696    push        esi
 00438697    push        edi
 00438698    cmp         byte ptr ds:[571B58],0;gvar_00571B58
>0043869F    jne         004386CE
 004386A1    mov         ecx,438774;'GetMonitorInfo'
 004386A6    mov         edx,dword ptr ds:[571B3C];0x0 gvar_00571B3C
 004386AC    mov         al,4
 004386AE    call        00438304
 004386B3    mov         [00571B3C],eax;gvar_00571B3C
 004386B8    mov         eax,dword ptr [ebp+0C]
 004386BB    push        eax
 004386BC    mov         eax,dword ptr [ebp+8]
 004386BF    push        eax
 004386C0    call        dword ptr ds:[571B3C]
 004386C6    mov         byte ptr [ebp-1],al
>004386C9    jmp         00438760
 004386CE    mov         byte ptr [ebp-1],0
 004386D2    cmp         dword ptr [ebp+8],12340042
>004386D9    jne         00438760
 004386DF    cmp         dword ptr [ebp+0C],0
>004386E3    je          00438760
 004386E5    mov         eax,dword ptr [ebp+0C]
 004386E8    cmp         dword ptr [eax],28
>004386EB    jb          00438760
 004386ED    push        0
 004386EF    lea         eax,[ebp-11]
 004386F2    push        eax
 004386F3    push        0
 004386F5    push        30
 004386F7    call        user32.SystemParametersInfoA
 004386FC    test        eax,eax
>004386FE    je          00438760
 00438700    mov         eax,dword ptr [ebp+0C]
 00438703    xor         edx,edx
 00438705    mov         dword ptr [eax+4],edx
 00438708    mov         eax,dword ptr [ebp+0C]
 0043870B    xor         edx,edx
 0043870D    mov         dword ptr [eax+8],edx
 00438710    push        0
 00438712    call        dword ptr ds:[571B2C]
 00438718    mov         edx,dword ptr [ebp+0C]
 0043871B    mov         dword ptr [edx+0C],eax
 0043871E    push        1
 00438720    call        dword ptr ds:[571B2C]
 00438726    mov         edx,dword ptr [ebp+0C]
 00438729    mov         dword ptr [edx+10],eax
 0043872C    mov         eax,dword ptr [ebp+0C]
 0043872F    lea         esi,[ebp-11]
 00438732    lea         edi,[eax+14]
 00438735    movs        dword ptr [edi],dword ptr [esi]
 00438736    movs        dword ptr [edi],dword ptr [esi]
 00438737    movs        dword ptr [edi],dword ptr [esi]
 00438738    movs        dword ptr [edi],dword ptr [esi]
 00438739    mov         eax,dword ptr [ebp+0C]
 0043873C    mov         dword ptr [eax+24],1
 00438743    mov         eax,dword ptr [ebp+0C]
 00438746    cmp         dword ptr [eax],4C
>00438749    jb          0043875C
 0043874B    push        438784;'DISPLAY'
 00438750    mov         eax,dword ptr [ebp+0C]
 00438753    add         eax,28
 00438756    push        eax
 00438757    call        kernel32.lstrcpy
 0043875C    mov         byte ptr [ebp-1],1
 00438760    mov         al,byte ptr [ebp-1]
 00438763    pop         edi
 00438764    pop         esi
 00438765    mov         esp,ebp
 00438767    pop         ebp
 00438768    ret         8
end;*}

//0043878C
{*function sub_0043878C(?:?; ?:?):?;
begin
 0043878C    push        ebp
 0043878D    mov         ebp,esp
 0043878F    add         esp,0FFFFFFEC
 00438792    push        esi
 00438793    push        edi
 00438794    cmp         byte ptr ds:[571B59],0;gvar_00571B59
>0043879B    jne         004387CA
 0043879D    mov         ecx,438870;'GetMonitorInfoA'
 004387A2    mov         edx,dword ptr ds:[571B40];0x0 gvar_00571B40
 004387A8    mov         al,5
 004387AA    call        00438304
 004387AF    mov         [00571B40],eax;gvar_00571B40
 004387B4    mov         eax,dword ptr [ebp+0C]
 004387B7    push        eax
 004387B8    mov         eax,dword ptr [ebp+8]
 004387BB    push        eax
 004387BC    call        dword ptr ds:[571B40]
 004387C2    mov         byte ptr [ebp-1],al
>004387C5    jmp         0043885C
 004387CA    mov         byte ptr [ebp-1],0
 004387CE    cmp         dword ptr [ebp+8],12340042
>004387D5    jne         0043885C
 004387DB    cmp         dword ptr [ebp+0C],0
>004387DF    je          0043885C
 004387E1    mov         eax,dword ptr [ebp+0C]
 004387E4    cmp         dword ptr [eax],28
>004387E7    jb          0043885C
 004387E9    push        0
 004387EB    lea         eax,[ebp-11]
 004387EE    push        eax
 004387EF    push        0
 004387F1    push        30
 004387F3    call        user32.SystemParametersInfoA
 004387F8    test        eax,eax
>004387FA    je          0043885C
 004387FC    mov         eax,dword ptr [ebp+0C]
 004387FF    xor         edx,edx
 00438801    mov         dword ptr [eax+4],edx
 00438804    mov         eax,dword ptr [ebp+0C]
 00438807    xor         edx,edx
 00438809    mov         dword ptr [eax+8],edx
 0043880C    push        0
 0043880E    call        dword ptr ds:[571B2C]
 00438814    mov         edx,dword ptr [ebp+0C]
 00438817    mov         dword ptr [edx+0C],eax
 0043881A    push        1
 0043881C    call        dword ptr ds:[571B2C]
 00438822    mov         edx,dword ptr [ebp+0C]
 00438825    mov         dword ptr [edx+10],eax
 00438828    mov         eax,dword ptr [ebp+0C]
 0043882B    lea         esi,[ebp-11]
 0043882E    lea         edi,[eax+14]
 00438831    movs        dword ptr [edi],dword ptr [esi]
 00438832    movs        dword ptr [edi],dword ptr [esi]
 00438833    movs        dword ptr [edi],dword ptr [esi]
 00438834    movs        dword ptr [edi],dword ptr [esi]
 00438835    mov         eax,dword ptr [ebp+0C]
 00438838    mov         dword ptr [eax+24],1
 0043883F    mov         eax,dword ptr [ebp+0C]
 00438842    cmp         dword ptr [eax],4C
>00438845    jb          00438858
 00438847    push        438880;'DISPLAY'
 0043884C    mov         eax,dword ptr [ebp+0C]
 0043884F    add         eax,28
 00438852    push        eax
 00438853    call        kernel32.lstrcpy
 00438858    mov         byte ptr [ebp-1],1
 0043885C    mov         al,byte ptr [ebp-1]
 0043885F    pop         edi
 00438860    pop         esi
 00438861    mov         esp,ebp
 00438863    pop         ebp
 00438864    ret         8
end;*}

//00438888
{*function sub_00438888(?:?; ?:?):?;
begin
 00438888    push        ebp
 00438889    mov         ebp,esp
 0043888B    add         esp,0FFFFFFEC
 0043888E    push        esi
 0043888F    push        edi
 00438890    cmp         byte ptr ds:[571B5A],0;gvar_00571B5A
>00438897    jne         004388C6
 00438899    mov         ecx,43896C;'GetMonitorInfoW'
 0043889E    mov         edx,dword ptr ds:[571B44];0x0 gvar_00571B44
 004388A4    mov         al,6
 004388A6    call        00438304
 004388AB    mov         [00571B44],eax;gvar_00571B44
 004388B0    mov         eax,dword ptr [ebp+0C]
 004388B3    push        eax
 004388B4    mov         eax,dword ptr [ebp+8]
 004388B7    push        eax
 004388B8    call        dword ptr ds:[571B44]
 004388BE    mov         byte ptr [ebp-1],al
>004388C1    jmp         00438958
 004388C6    mov         byte ptr [ebp-1],0
 004388CA    cmp         dword ptr [ebp+8],12340042
>004388D1    jne         00438958
 004388D7    cmp         dword ptr [ebp+0C],0
>004388DB    je          00438958
 004388DD    mov         eax,dword ptr [ebp+0C]
 004388E0    cmp         dword ptr [eax],28
>004388E3    jb          00438958
 004388E5    push        0
 004388E7    lea         eax,[ebp-11]
 004388EA    push        eax
 004388EB    push        0
 004388ED    push        30
 004388EF    call        user32.SystemParametersInfoA
 004388F4    test        eax,eax
>004388F6    je          00438958
 004388F8    mov         eax,dword ptr [ebp+0C]
 004388FB    xor         edx,edx
 004388FD    mov         dword ptr [eax+4],edx
 00438900    mov         eax,dword ptr [ebp+0C]
 00438903    xor         edx,edx
 00438905    mov         dword ptr [eax+8],edx
 00438908    push        0
 0043890A    call        dword ptr ds:[571B2C]
 00438910    mov         edx,dword ptr [ebp+0C]
 00438913    mov         dword ptr [edx+0C],eax
 00438916    push        1
 00438918    call        dword ptr ds:[571B2C]
 0043891E    mov         edx,dword ptr [ebp+0C]
 00438921    mov         dword ptr [edx+10],eax
 00438924    mov         eax,dword ptr [ebp+0C]
 00438927    lea         esi,[ebp-11]
 0043892A    lea         edi,[eax+14]
 0043892D    movs        dword ptr [edi],dword ptr [esi]
 0043892E    movs        dword ptr [edi],dword ptr [esi]
 0043892F    movs        dword ptr [edi],dword ptr [esi]
 00438930    movs        dword ptr [edi],dword ptr [esi]
 00438931    mov         eax,dword ptr [ebp+0C]
 00438934    mov         dword ptr [eax+24],1
 0043893B    mov         eax,dword ptr [ebp+0C]
 0043893E    cmp         dword ptr [eax],4C
>00438941    jb          00438954
 00438943    push        43897C;'DISPLAY'
 00438948    mov         eax,dword ptr [ebp+0C]
 0043894B    add         eax,28
 0043894E    push        eax
 0043894F    call        kernel32.lstrcpy
 00438954    mov         byte ptr [ebp-1],1
 00438958    mov         al,byte ptr [ebp-1]
 0043895B    pop         edi
 0043895C    pop         esi
 0043895D    mov         esp,ebp
 0043895F    pop         ebp
 00438960    ret         8
end;*}

//00438984
{*function sub_00438984(?:?; ?:?; ?:?; ?:?):?;
begin
 00438984    push        ebp
 00438985    mov         ebp,esp
 00438987    add         esp,0FFFFFFD0
 0043898A    cmp         byte ptr ds:[571B5B],0;gvar_00571B5B
>00438991    jne         004389C8
 00438993    mov         ecx,438ABC;'EnumDisplayMonitors'
 00438998    mov         edx,dword ptr ds:[571B48];0x0 gvar_00571B48
 0043899E    mov         al,7
 004389A0    call        00438304
 004389A5    mov         [00571B48],eax;gvar_00571B48
 004389AA    mov         eax,dword ptr [ebp+14]
 004389AD    push        eax
 004389AE    mov         eax,dword ptr [ebp+10]
 004389B1    push        eax
 004389B2    mov         eax,dword ptr [ebp+0C]
 004389B5    push        eax
 004389B6    mov         eax,dword ptr [ebp+8]
 004389B9    push        eax
 004389BA    call        dword ptr ds:[571B48]
 004389C0    mov         byte ptr [ebp-1],al
>004389C3    jmp         00438AAA
 004389C8    mov         byte ptr [ebp-1],0
 004389CC    cmp         dword ptr [ebp+10],0
>004389D0    je          00438AAA
 004389D6    xor         eax,eax
 004389D8    mov         dword ptr [ebp-20],eax
 004389DB    xor         eax,eax
 004389DD    mov         dword ptr [ebp-1C],eax
 004389E0    push        0
 004389E2    call        dword ptr ds:[571B2C]
 004389E8    mov         dword ptr [ebp-18],eax
 004389EB    push        1
 004389ED    call        dword ptr ds:[571B2C]
 004389F3    mov         dword ptr [ebp-14],eax
 004389F6    cmp         dword ptr [ebp+8],0
>004389FA    je          00438A72
 004389FC    lea         eax,[ebp-30]
 004389FF    push        eax
 00438A00    mov         eax,dword ptr [ebp+8]
 00438A03    push        eax
 00438A04    call        gdi32.GetClipBox
 00438A09    mov         dword ptr [ebp-10],eax
 00438A0C    lea         eax,[ebp-9]
 00438A0F    push        eax
 00438A10    mov         eax,dword ptr [ebp+8]
 00438A13    push        eax
 00438A14    call        gdi32.GetDCOrgEx
 00438A19    test        eax,eax
>00438A1B    je          00438AAA
 00438A21    mov         eax,dword ptr [ebp-5]
 00438A24    neg         eax
 00438A26    push        eax
 00438A27    mov         eax,dword ptr [ebp-9]
 00438A2A    neg         eax
 00438A2C    push        eax
 00438A2D    lea         eax,[ebp-20]
 00438A30    push        eax
 00438A31    call        user32.OffsetRect
 00438A36    lea         eax,[ebp-30]
 00438A39    push        eax
 00438A3A    lea         eax,[ebp-20]
 00438A3D    push        eax
 00438A3E    lea         eax,[ebp-20]
 00438A41    push        eax
 00438A42    call        user32.IntersectRect
 00438A47    test        eax,eax
>00438A49    je          00438A51
 00438A4B    cmp         dword ptr [ebp+0C],0
>00438A4F    je          00438A93
 00438A51    mov         eax,dword ptr [ebp+0C]
 00438A54    push        eax
 00438A55    lea         eax,[ebp-20]
 00438A58    push        eax
 00438A59    lea         eax,[ebp-20]
 00438A5C    push        eax
 00438A5D    call        user32.IntersectRect
 00438A62    test        eax,eax
>00438A64    jne         00438A93
 00438A66    cmp         dword ptr [ebp-10],1
>00438A6A    jne         00438AAA
 00438A6C    mov         byte ptr [ebp-1],1
>00438A70    jmp         00438AAA
 00438A72    cmp         dword ptr [ebp+0C],0
>00438A76    je          00438A93
 00438A78    mov         eax,dword ptr [ebp+0C]
 00438A7B    push        eax
 00438A7C    lea         eax,[ebp-20]
 00438A7F    push        eax
 00438A80    lea         eax,[ebp-20]
 00438A83    push        eax
 00438A84    call        user32.IntersectRect
 00438A89    test        eax,eax
>00438A8B    jne         00438A93
 00438A8D    mov         byte ptr [ebp-1],1
>00438A91    jmp         00438AAA
 00438A93    mov         eax,dword ptr [ebp+14]
 00438A96    push        eax
 00438A97    lea         eax,[ebp-20]
 00438A9A    push        eax
 00438A9B    mov         eax,dword ptr [ebp+8]
 00438A9E    push        eax
 00438A9F    push        12340042
 00438AA4    call        dword ptr [ebp+10]
 00438AA7    mov         byte ptr [ebp-1],al
 00438AAA    mov         al,byte ptr [ebp-1]
 00438AAD    mov         esp,ebp
 00438AAF    pop         ebp
 00438AB0    ret         10
end;*}

//00438AD0
procedure sub_00438AD0;
begin
{*
 00438AD0    push        ebp
 00438AD1    mov         ebp,esp
 00438AD3    push        438B34;'USER32.DLL'
 00438AD8    call        kernel32.GetModuleHandleA
 00438ADD    mov         [00571B50],eax;gvar_00571B50:HMODULE
 00438AE2    mov         dword ptr ds:[571B2C],438404
 00438AEC    mov         dword ptr ds:[571B30],438548
 00438AF6    mov         dword ptr ds:[571B34],4384A8
 00438B00    mov         dword ptr ds:[571B38],4385F4
 00438B0A    mov         dword ptr ds:[571B3C],438690
 00438B14    mov         dword ptr ds:[571B40],43878C
 00438B1E    mov         dword ptr ds:[571B44],438888
 00438B28    mov         dword ptr ds:[571B48],438984
 00438B32    pop         ebp
 00438B33    ret
*}
end;

Initialization
//00438B70
{*
 00438B70    push        ebp
 00438B71    mov         ebp,esp
 00438B73    sub         dword ptr ds:[571B4C],1
>00438B7A    jae         00438B81
 00438B7C    call        00438AD0
 00438B81    pop         ebp
 00438B82    ret
*}
Finalization
end.