//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit101;

interface

uses
  SysUtils, Classes;

    //function sub_00513318(?:?; ?:?):?;//00513318
    //function sub_0051346C(?:?; ?:?; ?:?):?;//0051346C
    //procedure sub_005134B4(?:?; ?:?);//005134B4
    //procedure sub_005134D8(?:?; ?:?; ?:?);//005134D8
    //procedure sub_00513520(?:?; ?:?; ?:?);//00513520
    //procedure sub_00513560(?:?; ?:?; ?:?; ?:?);//00513560
    //procedure sub_0051364C(?:?; ?:?; ?:?);//0051364C
    //procedure sub_0051387C(?:?; ?:?; ?:?);//0051387C
    //procedure sub_005139BC(?:?; ?:?; ?:?; ?:?);//005139BC
    //procedure sub_005139F8(?:?; ?:?; ?:?; ?:?);//005139F8
    procedure sub_00513A34;//00513A34
    procedure sub_00513AC0;//00513AC0
    procedure sub_00513ACC;//00513ACC
    //function sub_00513BE4(?:?; ?:?; ?:?):?;//00513BE4
    //procedure sub_00513CE4(?:?; ?:?; ?:?; ?:?);//00513CE4
    //procedure sub_00513D58(?:?; ?:?; ?:?; ?:?);//00513D58
    //function sub_00513DC8(?:?; ?:?):?;//00513DC8
    //function sub_00513E9C(?:?; ?:?):?;//00513E9C
    //function sub_00513F74(?:?; ?:?):?;//00513F74
    //function sub_005140B4(?:?; ?:?):?;//005140B4
    //function sub_005141B8(?:?; ?:?):?;//005141B8
    //function sub_0051426C(?:?; ?:?):?;//0051426C
    //function sub_00514320(?:?; ?:?):?;//00514320
    //function sub_005143EC(?:?; ?:?):?;//005143EC
    //function sub_005144D4(?:?; ?:?):?;//005144D4
    //function sub_0051457C(?:?; ?:?):?;//0051457C
    procedure sub_00514720;//00514720
    procedure sub_005147C8;//005147C8

implementation

//00513318
{*function sub_00513318(?:?; ?:?):?;
begin
 00513318    test        eax,0FF000000
>0051331D    je          00513468
 00513323    cmp         edx,0FF000000
>00513329    jae         0051345C
 0051332F    cmp         eax,0FF000000
>00513334    jae         0051346A
 0051333A    test        edx,0FF000000
>00513340    je          0051346A
 00513346    push        ebx
 00513347    push        esi
 00513348    push        edi
 00513349    add         esp,0FFFFFFF4
 0051334C    mov         dword ptr [esp+4],edx
 00513350    mov         dword ptr [esp],eax
 00513353    shr         eax,10
 00513356    and         eax,0FF00
 0051335B    shr         edx,18
 0051335E    mov         cl,dl
 00513360    nop
 00513361    nop
 00513362    nop
 00513363    lea         edi,[eax+587A60]
 00513369    shl         edx,8
 0051336C    lea         edx,[edx+587A60]
 00513372    shr         eax,8
 00513375    add         ecx,eax
 00513377    sub         ecx,dword ptr [eax+edx]
 0051337A    mov         byte ptr [esp+0B],cl
 0051337E    shl         ecx,8
 00513381    and         ecx,0FFFF
 00513387    lea         esi,[ecx+577A60]
 0051338D    xor         eax,eax
 0051338F    mov         al,byte ptr [esp+6]
 00513393    mov         cl,byte ptr [eax+edx]
 00513396    mov         byte ptr [esp+0A],cl
 0051339A    mov         al,byte ptr [esp+2]
 0051339E    xor         ebx,ebx
 005133A0    mov         bl,cl
 005133A2    sub         eax,ebx
>005133A4    jl          005133BB
 005133A6    movzx       eax,byte ptr [eax+edi]
 005133AA    and         ecx,0FF
 005133B0    add         eax,ecx
 005133B2    mov         al,byte ptr [eax+esi]
 005133B5    mov         byte ptr [esp+0A],al
>005133B9    jmp         005133D0
 005133BB    neg         eax
 005133BD    movzx       eax,byte ptr [eax+edi]
 005133C1    xor         ecx,ecx
 005133C3    mov         cl,byte ptr [esp+0A]
 005133C7    sub         ecx,eax
 005133C9    mov         al,byte ptr [ecx+esi]
 005133CC    mov         byte ptr [esp+0A],al
 005133D0    xor         eax,eax
 005133D2    mov         al,byte ptr [esp+5]
 005133D6    mov         cl,byte ptr [eax+edx]
 005133D9    mov         byte ptr [esp+9],cl
 005133DD    mov         al,byte ptr [esp+1]
 005133E1    xor         ebx,ebx
 005133E3    mov         bl,cl
 005133E5    sub         eax,ebx
>005133E7    jl          005133FE
 005133E9    movzx       eax,byte ptr [eax+edi]
 005133ED    and         ecx,0FF
 005133F3    add         eax,ecx
 005133F5    mov         al,byte ptr [eax+esi]
 005133F8    mov         byte ptr [esp+9],al
>005133FC    jmp         00513413
 005133FE    neg         eax
 00513400    movzx       eax,byte ptr [eax+edi]
 00513404    xor         ecx,ecx
 00513406    mov         cl,byte ptr [esp+9]
 0051340A    sub         ecx,eax
 0051340C    mov         al,byte ptr [ecx+esi]
 0051340F    mov         byte ptr [esp+9],al
 00513413    xor         eax,eax
 00513415    mov         al,byte ptr [esp+4]
 00513419    mov         cl,byte ptr [eax+edx]
 0051341C    mov         byte ptr [esp+8],cl
 00513420    mov         al,byte ptr [esp]
 00513423    xor         edx,edx
 00513425    mov         dl,cl
 00513427    sub         eax,edx
>00513429    jl          0051343E
 0051342B    movzx       eax,byte ptr [eax+edi]
 0051342F    xor         edx,edx
 00513431    mov         dl,cl
 00513433    add         eax,edx
 00513435    mov         al,byte ptr [eax+esi]
 00513438    mov         byte ptr [esp+8],al
>0051343C    jmp         00513451
 0051343E    neg         eax
 00513440    movzx       eax,byte ptr [eax+edi]
 00513444    xor         edx,edx
 00513446    mov         dl,cl
 00513448    sub         edx,eax
 0051344A    mov         al,byte ptr [edx+esi]
 0051344D    mov         byte ptr [esp+8],al
 00513451    mov         eax,dword ptr [esp+8]
 00513455    add         esp,0C
 00513458    pop         edi
 00513459    pop         esi
 0051345A    pop         ebx
 0051345B    ret
 0051345C    call        dword ptr ds:[5779C4]
 00513462    or          eax,0FF000000
 00513467    ret
 00513468    mov         eax,edx
 0051346A    ret
end;*}

//0051346C
{*function sub_0051346C(?:?; ?:?; ?:?):?;
begin
 0051346C    push        ebp
 0051346D    mov         ebp,esp
 0051346F    add         esp,0FFFFFFF0
 00513472    mov         dword ptr [ebp-0C],ecx
 00513475    mov         dword ptr [ebp-8],edx
 00513478    mov         dword ptr [ebp-4],eax
 0051347B    mov         eax,dword ptr [ebp-4]
 0051347E    shr         eax,18
 00513481    mov         edx,dword ptr [ebp-0C]
 00513484    shl         edx,5
 00513487    lea         edx,[edx*8+587A60]
 0051348E    movzx       eax,byte ptr [edx+eax]
 00513492    shl         eax,18
 00513495    mov         edx,dword ptr [ebp-4]
 00513498    and         edx,0FFFFFF
 0051349E    or          eax,edx
 005134A0    mov         edx,dword ptr [ebp-8]
 005134A3    call        00513318
 005134A8    mov         dword ptr [ebp-10],eax
 005134AB    mov         eax,dword ptr [ebp-10]
 005134AE    mov         esp,ebp
 005134B0    pop         ebp
 005134B1    ret
end;*}

//005134B4
{*procedure sub_005134B4(?:?; ?:?);
begin
 005134B4    push        ebp
 005134B5    mov         ebp,esp
 005134B7    add         esp,0FFFFFFF8
 005134BA    mov         dword ptr [ebp-8],edx
 005134BD    mov         dword ptr [ebp-4],eax
 005134C0    mov         edx,dword ptr [ebp-8]
 005134C3    mov         edx,dword ptr [edx]
 005134C5    mov         eax,dword ptr [ebp-4]
 005134C8    call        00513318
 005134CD    mov         edx,dword ptr [ebp-8]
 005134D0    mov         dword ptr [edx],eax
 005134D2    pop         ecx
 005134D3    pop         ecx
 005134D4    pop         ebp
 005134D5    ret
end;*}

//005134D8
{*procedure sub_005134D8(?:?; ?:?; ?:?);
begin
 005134D8    push        ebp
 005134D9    mov         ebp,esp
 005134DB    add         esp,0FFFFFFF4
 005134DE    mov         dword ptr [ebp-0C],ecx
 005134E1    mov         dword ptr [ebp-8],edx
 005134E4    mov         dword ptr [ebp-4],eax
 005134E7    mov         eax,dword ptr [ebp-4]
 005134EA    shr         eax,18
 005134ED    mov         edx,dword ptr [ebp-0C]
 005134F0    shl         edx,5
 005134F3    lea         edx,[edx*8+587A60]
 005134FA    movzx       eax,byte ptr [edx+eax]
 005134FE    shl         eax,18
 00513501    mov         edx,dword ptr [ebp-4]
 00513504    and         edx,0FFFFFF
 0051350A    or          eax,edx
 0051350C    mov         edx,dword ptr [ebp-8]
 0051350F    mov         edx,dword ptr [edx]
 00513511    call        00513318
 00513516    mov         edx,dword ptr [ebp-8]
 00513519    mov         dword ptr [edx],eax
 0051351B    mov         esp,ebp
 0051351D    pop         ebp
 0051351E    ret
end;*}

//00513520
{*procedure sub_00513520(?:?; ?:?; ?:?);
begin
 00513520    push        ebp
 00513521    mov         ebp,esp
 00513523    add         esp,0FFFFFFF4
 00513526    mov         dword ptr [ebp-0C],ecx
 00513529    mov         dword ptr [ebp-8],edx
 0051352C    mov         dword ptr [ebp-4],eax
 0051352F    cmp         dword ptr [ebp-0C],0
>00513533    jle         0051355A
 00513535    mov         eax,dword ptr [ebp-8]
 00513538    mov         edx,dword ptr [eax]
 0051353A    mov         eax,dword ptr [ebp-4]
 0051353D    mov         eax,dword ptr [eax]
 0051353F    call        00513318
 00513544    mov         edx,dword ptr [ebp-8]
 00513547    mov         dword ptr [edx],eax
 00513549    add         dword ptr [ebp-4],4
 0051354D    add         dword ptr [ebp-8],4
 00513551    dec         dword ptr [ebp-0C]
 00513554    cmp         dword ptr [ebp-0C],0
>00513558    jg          00513535
 0051355A    mov         esp,ebp
 0051355C    pop         ebp
 0051355D    ret
end;*}

//00513560
{*procedure sub_00513560(?:?; ?:?; ?:?; ?:?);
begin
 00513560    push        ebp
 00513561    mov         ebp,esp
 00513563    add         esp,0FFFFFFF4
 00513566    mov         dword ptr [ebp-0C],ecx
 00513569    mov         dword ptr [ebp-8],edx
 0051356C    mov         dword ptr [ebp-4],eax
 0051356F    mov         eax,dword ptr [ebp+8]
 00513572    shl         eax,5
 00513575    lea         eax,[eax*8+587A60]
 0051357C    mov         dword ptr [ebp+8],eax
 0051357F    cmp         dword ptr [ebp-0C],0
>00513583    jle         005135C4
 00513585    mov         eax,dword ptr [ebp-4]
 00513588    mov         eax,dword ptr [eax]
 0051358A    shr         eax,18
 0051358D    mov         edx,dword ptr [ebp+8]
 00513590    movzx       eax,byte ptr [edx+eax]
 00513594    shl         eax,18
 00513597    mov         edx,dword ptr [ebp-4]
 0051359A    mov         edx,dword ptr [edx]
 0051359C    and         edx,0FFFFFF
 005135A2    or          eax,edx
 005135A4    mov         edx,dword ptr [ebp-8]
 005135A7    mov         edx,dword ptr [edx]
 005135A9    call        00513318
 005135AE    mov         edx,dword ptr [ebp-8]
 005135B1    mov         dword ptr [edx],eax
 005135B3    add         dword ptr [ebp-4],4
 005135B7    add         dword ptr [ebp-8],4
 005135BB    dec         dword ptr [ebp-0C]
 005135BE    cmp         dword ptr [ebp-0C],0
>005135C2    jg          00513585
 005135C4    mov         esp,ebp
 005135C6    pop         ebp
 005135C7    ret         4
end;*}

//0051364C
{*procedure sub_0051364C(?:?; ?:?; ?:?);
begin
 0051364C    jcxz        005136CC
 0051364F    cmp         ecx,0FF
>00513655    je          005136CD
 00513657    push        ebx
 00513658    push        esi
 00513659    mov         ebx,eax
 0051365B    and         eax,0FF00FF
 00513660    and         ebx,0FF00FF00
 00513666    imul        eax,ecx
 00513669    shr         ebx,8
 0051366C    imul        ebx,ecx
 0051366F    add         eax,800080
 00513674    and         eax,0FF00FF00
 00513679    shr         eax,8
 0051367C    add         ebx,800080
 00513682    and         ebx,0FF00FF00
 00513688    or          eax,ebx
 0051368A    mov         esi,dword ptr [edx]
 0051368C    xor         ecx,0FF
 00513692    mov         ebx,esi
 00513694    and         esi,0FF00FF
 0051369A    and         ebx,0FF00FF00
 005136A0    imul        esi,ecx
 005136A3    shr         ebx,8
 005136A6    imul        ebx,ecx
 005136A9    add         esi,800080
 005136AF    and         esi,0FF00FF00
 005136B5    shr         esi,8
 005136B8    add         ebx,800080
 005136BE    and         ebx,0FF00FF00
 005136C4    or          ebx,esi
 005136C6    add         eax,ebx
 005136C8    mov         dword ptr [edx],eax
 005136CA    pop         esi
 005136CB    pop         ebx
 005136CC    ret
 005136CD    mov         dword ptr [edx],eax
 005136CF    ret
end;*}

//0051387C
{*procedure sub_0051387C(?:?; ?:?; ?:?);
begin
 0051387C    test        eax,0FF000000
>00513881    je          0051390A
 00513887    push        ebx
 00513888    mov         ebx,eax
 0051388A    inc         ecx
 0051388B    shr         ebx,18
 0051388E    imul        ecx,ebx
 00513891    shr         ecx,8
>00513894    je          00513909
 00513896    push        esi
 00513897    mov         ebx,eax
 00513899    and         eax,0FF00FF
 0051389E    and         ebx,0FF00
 005138A4    imul        eax,ecx
 005138A7    shr         ebx,8
 005138AA    imul        ebx,ecx
 005138AD    add         eax,800080
 005138B2    and         eax,0FF00FF00
 005138B7    shr         eax,8
 005138BA    add         ebx,800080
 005138C0    and         ebx,0FF00
 005138C6    or          eax,ebx
 005138C8    mov         esi,dword ptr [edx]
 005138CA    xor         ecx,0FF
 005138D0    mov         ebx,esi
 005138D2    and         esi,0FF00FF
 005138D8    and         ebx,0FF00
 005138DE    imul        esi,ecx
 005138E1    shr         ebx,8
 005138E4    imul        ebx,ecx
 005138E7    add         esi,800080
 005138ED    and         esi,0FF00FF00
 005138F3    shr         esi,8
 005138F6    add         ebx,800080
 005138FC    and         ebx,0FF00
 00513902    or          ebx,esi
 00513904    add         eax,ebx
 00513906    mov         dword ptr [edx],eax
 00513908    pop         esi
 00513909    pop         ebx
 0051390A    ret
end;*}

//005139BC
{*procedure sub_005139BC(?:?; ?:?; ?:?; ?:?);
begin
 005139BC    push        ebp
 005139BD    mov         ebp,esp
 005139BF    add         esp,0FFFFFFF4
 005139C2    mov         dword ptr [ebp-0C],ecx
 005139C5    mov         dword ptr [ebp-8],edx
 005139C8    mov         dword ptr [ebp-4],eax
 005139CB    cmp         dword ptr [ebp-0C],0
>005139CF    jle         005139F2
 005139D1    mov         edx,dword ptr [ebp-8]
 005139D4    mov         ecx,dword ptr [ebp+8]
 005139D7    mov         eax,dword ptr [ebp-4]
 005139DA    mov         eax,dword ptr [eax]
 005139DC    call        0051387C
 005139E1    add         dword ptr [ebp-4],4
 005139E5    add         dword ptr [ebp-8],4
 005139E9    dec         dword ptr [ebp-0C]
 005139EC    cmp         dword ptr [ebp-0C],0
>005139F0    jg          005139D1
 005139F2    mov         esp,ebp
 005139F4    pop         ebp
 005139F5    ret         4
end;*}

//005139F8
{*procedure sub_005139F8(?:?; ?:?; ?:?; ?:?);
begin
 005139F8    push        ebp
 005139F9    mov         ebp,esp
 005139FB    add         esp,0FFFFFFF4
 005139FE    mov         dword ptr [ebp-0C],ecx
 00513A01    mov         dword ptr [ebp-8],edx
 00513A04    mov         dword ptr [ebp-4],eax
 00513A07    cmp         dword ptr [ebp-0C],0
>00513A0B    jle         00513A2E
 00513A0D    mov         edx,dword ptr [ebp-8]
 00513A10    mov         ecx,dword ptr [ebp+8]
 00513A13    mov         eax,dword ptr [ebp-4]
 00513A16    mov         eax,dword ptr [eax]
 00513A18    call        0051364C
 00513A1D    add         dword ptr [ebp-4],4
 00513A21    add         dword ptr [ebp-8],4
 00513A25    dec         dword ptr [ebp-0C]
 00513A28    cmp         dword ptr [ebp-0C],0
>00513A2C    jg          00513A0D
 00513A2E    mov         esp,ebp
 00513A30    pop         ebp
 00513A31    ret         4
end;*}

//00513A34
procedure sub_00513A34;
begin
{*
 00513A34    push        ebp
 00513A35    mov         ebp,esp
 00513A37    add         esp,0FFFFFFF4
 00513A3A    mov         eax,808
 00513A3F    call        @GetMem
 00513A44    mov         [00577A50],eax;gvar_00577A50:Pointer
 00513A49    mov         eax,[00577A50];0x0 gvar_00577A50:Pointer
 00513A4E    and         eax,0FFFFFFF8
 00513A51    mov         [00577A58],eax;gvar_00577A58
 00513A56    mov         eax,[00577A58];0x0 gvar_00577A58
 00513A5B    cmp         eax,dword ptr ds:[577A50];0x0 gvar_00577A50:Pointer
>00513A61    jge         00513A70
 00513A63    mov         eax,[00577A58];0x0 gvar_00577A58
 00513A68    add         eax,8
 00513A6B    mov         [00577A58],eax;gvar_00577A58
 00513A70    mov         eax,[00577A58];0x0 gvar_00577A58
 00513A75    mov         dword ptr [ebp-0C],eax
 00513A78    xor         eax,eax
 00513A7A    mov         dword ptr [ebp-4],eax
 00513A7D    mov         eax,dword ptr [ebp-4]
 00513A80    shl         eax,10
 00513A83    add         eax,dword ptr [ebp-4]
 00513A86    mov         dword ptr [ebp-8],eax
 00513A89    mov         eax,dword ptr [ebp-8]
 00513A8C    mov         edx,dword ptr [ebp-0C]
 00513A8F    mov         dword ptr [edx],eax
 00513A91    add         dword ptr [ebp-0C],4
 00513A95    mov         eax,dword ptr [ebp-8]
 00513A98    mov         edx,dword ptr [ebp-0C]
 00513A9B    mov         dword ptr [edx],eax
 00513A9D    add         dword ptr [ebp-0C],4
 00513AA1    inc         dword ptr [ebp-4]
 00513AA4    cmp         dword ptr [ebp-4],100
>00513AAB    jne         00513A7D
 00513AAD    mov         eax,[00577A58];0x0 gvar_00577A58
 00513AB2    add         eax,400
 00513AB7    mov         [00577A54],eax;gvar_00577A54
 00513ABC    mov         esp,ebp
 00513ABE    pop         ebp
 00513ABF    ret
*}
end;

//00513AC0
procedure sub_00513AC0;
begin
{*
 00513AC0    mov         eax,[00577A50];0x0 gvar_00577A50:Pointer
 00513AC5    call        @FreeMem
 00513ACA    ret
*}
end;

//00513ACC
procedure sub_00513ACC;
begin
{*
 00513ACC    cmp         byte ptr ds:[5779B8],0;gvar_005779B8
>00513AD3    je          00513AD7
 00513AD5    emms
 00513AD7    ret
*}
end;

//00513BE4
{*function sub_00513BE4(?:?; ?:?; ?:?):?;
begin
 00513BE4    push        ebx
 00513BE5    mov         ebx,eax
 00513BE7    shr         ebx,18
 00513BEA    inc         ecx
 00513BEB    imul        ecx,ebx
 00513BEE    shr         ecx,8
>00513BF1    je          00513C2D
 00513BF3    pxor        mm0,mm0
 00513BF6    movd        mm1,eax
 00513BF9    shl         ecx,3
 00513BFC    movd        mm2,edx
 00513BFF    punpcklbw   mm1,mm0
 00513C02    punpcklbw   mm2,mm0
 00513C05    add         ecx,dword ptr ds:[577A58];0x0 gvar_00577A58
 00513C0B    psubw       mm1,mm2
 00513C0E    pmull       mm1,mmword ptr [ecx]
 00513C11    psllw       mm2,8
 00513C15    mov         ecx,dword ptr ds:[577A54];0x0 gvar_00577A54
 00513C1B    paddw       mm2,mmword ptr [ecx]
 00513C1E    paddw       mm1,mm2
 00513C21    psrlw       mm1,8
 00513C25    packuswb    mm1,mm0
 00513C28    movd        mm0,mm1
 00513C2B    pop         ebx
 00513C2C    ret
 00513C2D    mov         eax,edx
 00513C2F    pop         ebx
 00513C30    ret
end;*}

//00513CE4
{*procedure sub_00513CE4(?:?; ?:?; ?:?; ?:?);
begin
 00513CE4    push        ebp
 00513CE5    mov         ebp,esp
 00513CE7    test        ecx,ecx
>00513CE9    js          00513D52
 00513CEB    push        esi
 00513CEC    push        edi
 00513CED    push        ebx
 00513CEE    mov         esi,eax
 00513CF0    mov         edi,edx
 00513CF2    mov         edx,dword ptr [ebp+8]
 00513CF5    mov         eax,dword ptr [esi]
 00513CF7    test        eax,0FF000000
>00513CFC    je          00513D46
 00513CFE    mov         ebx,eax
 00513D00    shr         ebx,18
 00513D03    inc         ebx
 00513D04    imul        ebx,edx
 00513D07    shr         ebx,8
>00513D0A    je          00513D46
 00513D0C    pxor        mm0,mm0
 00513D0F    movd        mm1,eax
 00513D12    shl         ebx,3
 00513D15    movd        mm2,dword ptr [edi]
 00513D18    punpcklbw   mm1,mm0
 00513D1B    punpcklbw   mm2,mm0
 00513D1E    add         ebx,dword ptr ds:[577A58];0x0 gvar_00577A58
 00513D24    psubw       mm1,mm2
 00513D27    pmull       mm1,mmword ptr [ebx]
 00513D2A    psllw       mm2,8
 00513D2E    mov         ebx,dword ptr ds:[577A54];0x0 gvar_00577A54
 00513D34    paddw       mm2,mmword ptr [ebx]
 00513D37    paddw       mm1,mm2
 00513D3A    psrlw       mm1,8
 00513D3E    packuswb    mm1,mm0
 00513D41    movd        mm0,mm1
 00513D44    mov         dword ptr [edi],eax
 00513D46    add         esi,4
 00513D49    add         edi,4
 00513D4C    dec         ecx
>00513D4D    jne         00513CF5
 00513D4F    pop         ebx
 00513D50    pop         edi
 00513D51    pop         esi
 00513D52    pop         ebp
 00513D53    ret         4
end;*}

//00513D58
{*procedure sub_00513D58(?:?; ?:?; ?:?; ?:?);
begin
 00513D58    push        ebp
 00513D59    mov         ebp,esp
 00513D5B    test        ecx,ecx
>00513D5D    js          00513DB8
 00513D5F    push        ebx
 00513D60    mov         ebx,dword ptr [ebp+8]
 00513D63    test        ebx,ebx
>00513D65    je          00513DB6
 00513D67    cmp         edx,0FF
>00513D6D    je          00513DBB
 00513D6F    shl         ebx,3
 00513D72    add         ebx,dword ptr ds:[577A58];0x0 gvar_00577A58
 00513D78    movq        mm3,mmword ptr [ebx]
 00513D7B    mov         ebx,dword ptr ds:[577A54];0x0 gvar_00577A54
 00513D81    movq        mm4,mmword ptr [ebx]
 00513D84    movd        mm1,dword ptr [eax]
 00513D87    pxor        mm0,mm0
 00513D8A    movd        mm2,dword ptr [edx]
 00513D8D    punpcklbw   mm1,mm0
 00513D90    punpcklbw   mm2,mm0
 00513D93    psubw       mm1,mm2
 00513D96    pmull       mm1,mm3
 00513D99    psllw       mm2,8
 00513D9D    paddw       mm2,mm4
 00513DA0    paddw       mm1,mm2
 00513DA3    psrlw       mm1,8
 00513DA7    packuswb    mm1,mm0
 00513DAA    movd        dword ptr [edx],mm1
 00513DAD    add         eax,4
 00513DB0    add         edx,4
 00513DB3    dec         ecx
>00513DB4    jne         00513D84
 00513DB6    pop         ebx
 00513DB7    pop         ebp
 00513DB8    ret         4
 00513DBB    call        00513030
 00513DC0    pop         ebx
 00513DC1    pop         ebp
 00513DC2    ret         4
end;*}

//00513DC8
{*function sub_00513DC8(?:?; ?:?):?;
begin
 00513DC8    push        ebp
 00513DC9    mov         ebp,esp
 00513DCB    add         esp,0FFFFFFD4
 00513DCE    mov         dword ptr [ebp-8],edx
 00513DD1    mov         dword ptr [ebp-4],eax
 00513DD4    mov         eax,dword ptr [ebp-4]
 00513DD7    shr         eax,18
 00513DDA    mov         dword ptr [ebp-1C],eax
 00513DDD    mov         eax,dword ptr [ebp-4]
 00513DE0    and         eax,0FF0000
 00513DE5    mov         dword ptr [ebp-10],eax
 00513DE8    mov         eax,dword ptr [ebp-4]
 00513DEB    and         eax,0FF00
 00513DF0    mov         dword ptr [ebp-14],eax
 00513DF3    mov         eax,dword ptr [ebp-4]
 00513DF6    and         eax,0FF
 00513DFB    mov         dword ptr [ebp-18],eax
 00513DFE    mov         eax,dword ptr [ebp-8]
 00513E01    shr         eax,18
 00513E04    mov         dword ptr [ebp-2C],eax
 00513E07    mov         eax,dword ptr [ebp-8]
 00513E0A    and         eax,0FF0000
 00513E0F    mov         dword ptr [ebp-20],eax
 00513E12    mov         eax,dword ptr [ebp-8]
 00513E15    and         eax,0FF00
 00513E1A    mov         dword ptr [ebp-24],eax
 00513E1D    mov         eax,dword ptr [ebp-8]
 00513E20    and         eax,0FF
 00513E25    mov         dword ptr [ebp-28],eax
 00513E28    mov         eax,dword ptr [ebp-2C]
 00513E2B    add         dword ptr [ebp-1C],eax
 00513E2E    mov         eax,dword ptr [ebp-20]
 00513E31    add         dword ptr [ebp-10],eax
 00513E34    mov         eax,dword ptr [ebp-24]
 00513E37    add         dword ptr [ebp-14],eax
 00513E3A    mov         eax,dword ptr [ebp-28]
 00513E3D    add         dword ptr [ebp-18],eax
 00513E40    cmp         dword ptr [ebp-1C],0FF
>00513E47    jle         00513E50
 00513E49    mov         dword ptr [ebp-1C],0FF
 00513E50    cmp         dword ptr [ebp-10],0FF0000
>00513E57    jle         00513E60
 00513E59    mov         dword ptr [ebp-10],0FF0000
 00513E60    cmp         dword ptr [ebp-14],0FF00
>00513E67    jle         00513E70
 00513E69    mov         dword ptr [ebp-14],0FF00
 00513E70    cmp         dword ptr [ebp-18],0FF
>00513E77    jle         00513E80
 00513E79    mov         dword ptr [ebp-18],0FF
 00513E80    mov         eax,dword ptr [ebp-1C]
 00513E83    shl         eax,18
 00513E86    add         eax,dword ptr [ebp-10]
 00513E89    add         eax,dword ptr [ebp-14]
 00513E8C    add         eax,dword ptr [ebp-18]
 00513E8F    mov         dword ptr [ebp-0C],eax
 00513E92    mov         eax,dword ptr [ebp-0C]
 00513E95    mov         esp,ebp
 00513E97    pop         ebp
 00513E98    ret
end;*}

//00513E9C
{*function sub_00513E9C(?:?; ?:?):?;
begin
 00513E9C    push        ebp
 00513E9D    mov         ebp,esp
 00513E9F    add         esp,0FFFFFFD4
 00513EA2    mov         dword ptr [ebp-8],edx
 00513EA5    mov         dword ptr [ebp-4],eax
 00513EA8    mov         eax,dword ptr [ebp-4]
 00513EAB    shr         eax,18
 00513EAE    mov         dword ptr [ebp-1C],eax
 00513EB1    mov         eax,dword ptr [ebp-4]
 00513EB4    and         eax,0FF0000
 00513EB9    mov         dword ptr [ebp-10],eax
 00513EBC    mov         eax,dword ptr [ebp-4]
 00513EBF    and         eax,0FF00
 00513EC4    mov         dword ptr [ebp-14],eax
 00513EC7    mov         eax,dword ptr [ebp-4]
 00513ECA    and         eax,0FF
 00513ECF    mov         dword ptr [ebp-18],eax
 00513ED2    shr         dword ptr [ebp-10],10
 00513ED6    shr         dword ptr [ebp-14],8
 00513EDA    mov         eax,dword ptr [ebp-8]
 00513EDD    shr         eax,18
 00513EE0    mov         dword ptr [ebp-2C],eax
 00513EE3    mov         eax,dword ptr [ebp-8]
 00513EE6    and         eax,0FF0000
 00513EEB    mov         dword ptr [ebp-20],eax
 00513EEE    mov         eax,dword ptr [ebp-8]
 00513EF1    and         eax,0FF00
 00513EF6    mov         dword ptr [ebp-24],eax
 00513EF9    mov         eax,dword ptr [ebp-8]
 00513EFC    and         eax,0FF
 00513F01    mov         dword ptr [ebp-28],eax
 00513F04    shr         dword ptr [ebp-20],10
 00513F08    shr         dword ptr [ebp-24],8
 00513F0C    mov         eax,dword ptr [ebp-2C]
 00513F0F    sub         dword ptr [ebp-1C],eax
 00513F12    mov         eax,dword ptr [ebp-20]
 00513F15    sub         dword ptr [ebp-10],eax
 00513F18    mov         eax,dword ptr [ebp-24]
 00513F1B    sub         dword ptr [ebp-14],eax
 00513F1E    mov         eax,dword ptr [ebp-28]
 00513F21    sub         dword ptr [ebp-18],eax
 00513F24    cmp         dword ptr [ebp-1C],0
>00513F28    jge         00513F2F
 00513F2A    xor         eax,eax
 00513F2C    mov         dword ptr [ebp-1C],eax
 00513F2F    cmp         dword ptr [ebp-10],0
>00513F33    jge         00513F3A
 00513F35    xor         eax,eax
 00513F37    mov         dword ptr [ebp-10],eax
 00513F3A    cmp         dword ptr [ebp-14],0
>00513F3E    jge         00513F45
 00513F40    xor         eax,eax
 00513F42    mov         dword ptr [ebp-14],eax
 00513F45    cmp         dword ptr [ebp-18],0
>00513F49    jge         00513F50
 00513F4B    xor         eax,eax
 00513F4D    mov         dword ptr [ebp-18],eax
 00513F50    mov         eax,dword ptr [ebp-1C]
 00513F53    shl         eax,18
 00513F56    mov         edx,dword ptr [ebp-10]
 00513F59    shl         edx,10
 00513F5C    add         eax,edx
 00513F5E    mov         edx,dword ptr [ebp-14]
 00513F61    shl         edx,8
 00513F64    add         eax,edx
 00513F66    add         eax,dword ptr [ebp-18]
 00513F69    mov         dword ptr [ebp-0C],eax
 00513F6C    mov         eax,dword ptr [ebp-0C]
 00513F6F    mov         esp,ebp
 00513F71    pop         ebp
 00513F72    ret
end;*}

//00513F74
{*function sub_00513F74(?:?; ?:?):?;
begin
 00513F74    push        ebp
 00513F75    mov         ebp,esp
 00513F77    add         esp,0FFFFFFD4
 00513F7A    mov         dword ptr [ebp-8],edx
 00513F7D    mov         dword ptr [ebp-4],eax
 00513F80    mov         eax,dword ptr [ebp-4]
 00513F83    shr         eax,18
 00513F86    mov         dword ptr [ebp-1C],eax
 00513F89    mov         eax,dword ptr [ebp-4]
 00513F8C    and         eax,0FF0000
 00513F91    shr         eax,10
 00513F94    mov         dword ptr [ebp-10],eax
 00513F97    mov         eax,dword ptr [ebp-4]
 00513F9A    and         eax,0FF00
 00513F9F    shr         eax,8
 00513FA2    mov         dword ptr [ebp-14],eax
 00513FA5    mov         eax,dword ptr [ebp-4]
 00513FA8    and         eax,0FF
 00513FAD    mov         dword ptr [ebp-18],eax
 00513FB0    mov         eax,dword ptr [ebp-8]
 00513FB3    shr         eax,18
 00513FB6    mov         dword ptr [ebp-2C],eax
 00513FB9    mov         eax,dword ptr [ebp-8]
 00513FBC    and         eax,0FF0000
 00513FC1    shr         eax,10
 00513FC4    mov         dword ptr [ebp-20],eax
 00513FC7    mov         eax,dword ptr [ebp-8]
 00513FCA    and         eax,0FF00
 00513FCF    shr         eax,8
 00513FD2    mov         dword ptr [ebp-24],eax
 00513FD5    mov         eax,dword ptr [ebp-8]
 00513FD8    and         eax,0FF
 00513FDD    mov         dword ptr [ebp-28],eax
 00513FE0    cmp         dword ptr [ebp-1C],0
>00513FE4    jne         00513FEF
 00513FE6    mov         dword ptr [ebp-1C],0FF
>00513FED    jmp         00513FFC
 00513FEF    mov         eax,dword ptr [ebp-2C]
 00513FF2    shl         eax,8
 00513FF5    cdq
 00513FF6    idiv        eax,dword ptr [ebp-1C]
 00513FF9    mov         dword ptr [ebp-1C],eax
 00513FFC    cmp         dword ptr [ebp-10],0
>00514000    jne         0051400B
 00514002    mov         dword ptr [ebp-10],0FF
>00514009    jmp         00514018
 0051400B    mov         eax,dword ptr [ebp-20]
 0051400E    shl         eax,8
 00514011    cdq
 00514012    idiv        eax,dword ptr [ebp-10]
 00514015    mov         dword ptr [ebp-10],eax
 00514018    cmp         dword ptr [ebp-14],0
>0051401C    jne         00514027
 0051401E    mov         dword ptr [ebp-14],0FF
>00514025    jmp         00514034
 00514027    mov         eax,dword ptr [ebp-24]
 0051402A    shl         eax,8
 0051402D    cdq
 0051402E    idiv        eax,dword ptr [ebp-14]
 00514031    mov         dword ptr [ebp-14],eax
 00514034    cmp         dword ptr [ebp-18],0
>00514038    jne         00514043
 0051403A    mov         dword ptr [ebp-18],0FF
>00514041    jmp         00514050
 00514043    mov         eax,dword ptr [ebp-28]
 00514046    shl         eax,8
 00514049    cdq
 0051404A    idiv        eax,dword ptr [ebp-18]
 0051404D    mov         dword ptr [ebp-18],eax
 00514050    cmp         dword ptr [ebp-1C],0FF
>00514057    jle         00514060
 00514059    mov         dword ptr [ebp-1C],0FF
 00514060    cmp         dword ptr [ebp-10],0FF
>00514067    jle         00514070
 00514069    mov         dword ptr [ebp-10],0FF
 00514070    cmp         dword ptr [ebp-14],0FF
>00514077    jle         00514080
 00514079    mov         dword ptr [ebp-14],0FF
 00514080    cmp         dword ptr [ebp-18],0FF
>00514087    jle         00514090
 00514089    mov         dword ptr [ebp-18],0FF
 00514090    mov         eax,dword ptr [ebp-1C]
 00514093    shl         eax,18
 00514096    mov         edx,dword ptr [ebp-10]
 00514099    shl         edx,10
 0051409C    add         eax,edx
 0051409E    mov         edx,dword ptr [ebp-14]
 005140A1    shl         edx,8
 005140A4    add         eax,edx
 005140A6    add         eax,dword ptr [ebp-18]
 005140A9    mov         dword ptr [ebp-0C],eax
 005140AC    mov         eax,dword ptr [ebp-0C]
 005140AF    mov         esp,ebp
 005140B1    pop         ebp
 005140B2    ret
end;*}

//005140B4
{*function sub_005140B4(?:?; ?:?):?;
begin
 005140B4    push        ebp
 005140B5    mov         ebp,esp
 005140B7    add         esp,0FFFFFFD4
 005140BA    mov         dword ptr [ebp-8],edx
 005140BD    mov         dword ptr [ebp-4],eax
 005140C0    mov         eax,dword ptr [ebp-4]
 005140C3    shr         eax,18
 005140C6    mov         dword ptr [ebp-1C],eax
 005140C9    mov         eax,dword ptr [ebp-4]
 005140CC    and         eax,0FF0000
 005140D1    mov         dword ptr [ebp-10],eax
 005140D4    mov         eax,dword ptr [ebp-4]
 005140D7    and         eax,0FF00
 005140DC    mov         dword ptr [ebp-14],eax
 005140DF    mov         eax,dword ptr [ebp-4]
 005140E2    and         eax,0FF
 005140E7    mov         dword ptr [ebp-18],eax
 005140EA    shr         dword ptr [ebp-10],10
 005140EE    shr         dword ptr [ebp-14],8
 005140F2    mov         eax,dword ptr [ebp-8]
 005140F5    shr         eax,18
 005140F8    mov         dword ptr [ebp-2C],eax
 005140FB    mov         eax,dword ptr [ebp-8]
 005140FE    and         eax,0FF0000
 00514103    mov         dword ptr [ebp-20],eax
 00514106    mov         eax,dword ptr [ebp-8]
 00514109    and         eax,0FF00
 0051410E    mov         dword ptr [ebp-24],eax
 00514111    mov         eax,dword ptr [ebp-8]
 00514114    and         eax,0FF
 00514119    mov         dword ptr [ebp-28],eax
 0051411C    shr         dword ptr [ebp-20],10
 00514120    shr         dword ptr [ebp-24],8
 00514124    mov         eax,dword ptr [ebp-1C]
 00514127    imul        dword ptr [ebp-2C]
 0051412A    shr         eax,8
 0051412D    mov         dword ptr [ebp-1C],eax
 00514130    mov         eax,dword ptr [ebp-10]
 00514133    imul        dword ptr [ebp-20]
 00514136    shr         eax,8
 00514139    mov         dword ptr [ebp-10],eax
 0051413C    mov         eax,dword ptr [ebp-14]
 0051413F    imul        dword ptr [ebp-24]
 00514142    shr         eax,8
 00514145    mov         dword ptr [ebp-14],eax
 00514148    mov         eax,dword ptr [ebp-18]
 0051414B    imul        dword ptr [ebp-28]
 0051414E    shr         eax,8
 00514151    mov         dword ptr [ebp-18],eax
 00514154    cmp         dword ptr [ebp-1C],0FF
>0051415B    jle         00514164
 0051415D    mov         dword ptr [ebp-1C],0FF
 00514164    cmp         dword ptr [ebp-10],0FF
>0051416B    jle         00514174
 0051416D    mov         dword ptr [ebp-10],0FF
 00514174    cmp         dword ptr [ebp-14],0FF
>0051417B    jle         00514184
 0051417D    mov         dword ptr [ebp-14],0FF
 00514184    cmp         dword ptr [ebp-18],0FF
>0051418B    jle         00514194
 0051418D    mov         dword ptr [ebp-18],0FF
 00514194    mov         eax,dword ptr [ebp-1C]
 00514197    shl         eax,18
 0051419A    mov         edx,dword ptr [ebp-10]
 0051419D    shl         edx,10
 005141A0    add         eax,edx
 005141A2    mov         edx,dword ptr [ebp-14]
 005141A5    shl         edx,8
 005141A8    add         eax,edx
 005141AA    add         eax,dword ptr [ebp-18]
 005141AD    mov         dword ptr [ebp-0C],eax
 005141B0    mov         eax,dword ptr [ebp-0C]
 005141B3    mov         esp,ebp
 005141B5    pop         ebp
 005141B6    ret
end;*}

//005141B8
{*function sub_005141B8(?:?; ?:?):?;
begin
 005141B8    push        ebp
 005141B9    mov         ebp,esp
 005141BB    add         esp,0FFFFFFD4
 005141BE    mov         dword ptr [ebp-8],edx
 005141C1    mov         dword ptr [ebp-4],eax
 005141C4    mov         eax,dword ptr [ebp-4]
 005141C7    shr         eax,18
 005141CA    mov         dword ptr [ebp-1C],eax
 005141CD    mov         eax,dword ptr [ebp-4]
 005141D0    and         eax,0FF0000
 005141D5    mov         dword ptr [ebp-10],eax
 005141D8    mov         eax,dword ptr [ebp-4]
 005141DB    and         eax,0FF00
 005141E0    mov         dword ptr [ebp-14],eax
 005141E3    mov         eax,dword ptr [ebp-4]
 005141E6    and         eax,0FF
 005141EB    mov         dword ptr [ebp-18],eax
 005141EE    mov         eax,dword ptr [ebp-8]
 005141F1    shr         eax,18
 005141F4    mov         dword ptr [ebp-2C],eax
 005141F7    mov         eax,dword ptr [ebp-8]
 005141FA    and         eax,0FF0000
 005141FF    mov         dword ptr [ebp-20],eax
 00514202    mov         eax,dword ptr [ebp-8]
 00514205    and         eax,0FF00
 0051420A    mov         dword ptr [ebp-24],eax
 0051420D    mov         eax,dword ptr [ebp-8]
 00514210    and         eax,0FF
 00514215    mov         dword ptr [ebp-28],eax
 00514218    mov         eax,dword ptr [ebp-2C]
 0051421B    cmp         eax,dword ptr [ebp-1C]
>0051421E    jbe         00514226
 00514220    mov         eax,dword ptr [ebp-2C]
 00514223    mov         dword ptr [ebp-1C],eax
 00514226    mov         eax,dword ptr [ebp-20]
 00514229    cmp         eax,dword ptr [ebp-10]
>0051422C    jbe         00514234
 0051422E    mov         eax,dword ptr [ebp-20]
 00514231    mov         dword ptr [ebp-10],eax
 00514234    mov         eax,dword ptr [ebp-24]
 00514237    cmp         eax,dword ptr [ebp-14]
>0051423A    jbe         00514242
 0051423C    mov         eax,dword ptr [ebp-24]
 0051423F    mov         dword ptr [ebp-14],eax
 00514242    mov         eax,dword ptr [ebp-28]
 00514245    cmp         eax,dword ptr [ebp-18]
>00514248    jbe         00514250
 0051424A    mov         eax,dword ptr [ebp-28]
 0051424D    mov         dword ptr [ebp-18],eax
 00514250    mov         eax,dword ptr [ebp-1C]
 00514253    shl         eax,18
 00514256    add         eax,dword ptr [ebp-10]
 00514259    add         eax,dword ptr [ebp-14]
 0051425C    add         eax,dword ptr [ebp-18]
 0051425F    mov         dword ptr [ebp-0C],eax
 00514262    mov         eax,dword ptr [ebp-0C]
 00514265    mov         esp,ebp
 00514267    pop         ebp
 00514268    ret
end;*}

//0051426C
{*function sub_0051426C(?:?; ?:?):?;
begin
 0051426C    push        ebp
 0051426D    mov         ebp,esp
 0051426F    add         esp,0FFFFFFD4
 00514272    mov         dword ptr [ebp-8],edx
 00514275    mov         dword ptr [ebp-4],eax
 00514278    mov         eax,dword ptr [ebp-4]
 0051427B    shr         eax,18
 0051427E    mov         dword ptr [ebp-1C],eax
 00514281    mov         eax,dword ptr [ebp-4]
 00514284    and         eax,0FF0000
 00514289    mov         dword ptr [ebp-10],eax
 0051428C    mov         eax,dword ptr [ebp-4]
 0051428F    and         eax,0FF00
 00514294    mov         dword ptr [ebp-14],eax
 00514297    mov         eax,dword ptr [ebp-4]
 0051429A    and         eax,0FF
 0051429F    mov         dword ptr [ebp-18],eax
 005142A2    mov         eax,dword ptr [ebp-8]
 005142A5    shr         eax,18
 005142A8    mov         dword ptr [ebp-2C],eax
 005142AB    mov         eax,dword ptr [ebp-8]
 005142AE    and         eax,0FF0000
 005142B3    mov         dword ptr [ebp-20],eax
 005142B6    mov         eax,dword ptr [ebp-8]
 005142B9    and         eax,0FF00
 005142BE    mov         dword ptr [ebp-24],eax
 005142C1    mov         eax,dword ptr [ebp-8]
 005142C4    and         eax,0FF
 005142C9    mov         dword ptr [ebp-28],eax
 005142CC    mov         eax,dword ptr [ebp-2C]
 005142CF    cmp         eax,dword ptr [ebp-1C]
>005142D2    jae         005142DA
 005142D4    mov         eax,dword ptr [ebp-2C]
 005142D7    mov         dword ptr [ebp-1C],eax
 005142DA    mov         eax,dword ptr [ebp-20]
 005142DD    cmp         eax,dword ptr [ebp-10]
>005142E0    jae         005142E8
 005142E2    mov         eax,dword ptr [ebp-20]
 005142E5    mov         dword ptr [ebp-10],eax
 005142E8    mov         eax,dword ptr [ebp-24]
 005142EB    cmp         eax,dword ptr [ebp-14]
>005142EE    jae         005142F6
 005142F0    mov         eax,dword ptr [ebp-24]
 005142F3    mov         dword ptr [ebp-14],eax
 005142F6    mov         eax,dword ptr [ebp-28]
 005142F9    cmp         eax,dword ptr [ebp-18]
>005142FC    jae         00514304
 005142FE    mov         eax,dword ptr [ebp-28]
 00514301    mov         dword ptr [ebp-18],eax
 00514304    mov         eax,dword ptr [ebp-1C]
 00514307    shl         eax,18
 0051430A    add         eax,dword ptr [ebp-10]
 0051430D    add         eax,dword ptr [ebp-14]
 00514310    add         eax,dword ptr [ebp-18]
 00514313    mov         dword ptr [ebp-0C],eax
 00514316    mov         eax,dword ptr [ebp-0C]
 00514319    mov         esp,ebp
 0051431B    pop         ebp
 0051431C    ret
end;*}

//00514320
{*function sub_00514320(?:?; ?:?):?;
begin
 00514320    push        ebp
 00514321    mov         ebp,esp
 00514323    add         esp,0FFFFFFD4
 00514326    mov         dword ptr [ebp-8],edx
 00514329    mov         dword ptr [ebp-4],eax
 0051432C    mov         eax,dword ptr [ebp-4]
 0051432F    shr         eax,18
 00514332    mov         dword ptr [ebp-1C],eax
 00514335    mov         eax,dword ptr [ebp-4]
 00514338    and         eax,0FF0000
 0051433D    mov         dword ptr [ebp-10],eax
 00514340    mov         eax,dword ptr [ebp-4]
 00514343    and         eax,0FF00
 00514348    mov         dword ptr [ebp-14],eax
 0051434B    mov         eax,dword ptr [ebp-4]
 0051434E    and         eax,0FF
 00514353    mov         dword ptr [ebp-18],eax
 00514356    shr         dword ptr [ebp-10],10
 0051435A    shr         dword ptr [ebp-14],8
 0051435E    mov         eax,dword ptr [ebp-8]
 00514361    shr         eax,18
 00514364    mov         dword ptr [ebp-2C],eax
 00514367    mov         eax,dword ptr [ebp-8]
 0051436A    and         eax,0FF0000
 0051436F    mov         dword ptr [ebp-20],eax
 00514372    mov         eax,dword ptr [ebp-8]
 00514375    and         eax,0FF00
 0051437A    mov         dword ptr [ebp-24],eax
 0051437D    mov         eax,dword ptr [ebp-8]
 00514380    and         eax,0FF
 00514385    mov         dword ptr [ebp-28],eax
 00514388    shr         dword ptr [ebp-20],10
 0051438C    shr         dword ptr [ebp-24],8
 00514390    mov         eax,dword ptr [ebp-2C]
 00514393    sub         eax,dword ptr [ebp-1C]
 00514396    cdq
 00514397    xor         eax,edx
 00514399    sub         eax,edx
 0051439B    mov         dword ptr [ebp-1C],eax
 0051439E    mov         eax,dword ptr [ebp-20]
 005143A1    sub         eax,dword ptr [ebp-10]
 005143A4    cdq
 005143A5    xor         eax,edx
 005143A7    sub         eax,edx
 005143A9    mov         dword ptr [ebp-10],eax
 005143AC    mov         eax,dword ptr [ebp-24]
 005143AF    sub         eax,dword ptr [ebp-14]
 005143B2    cdq
 005143B3    xor         eax,edx
 005143B5    sub         eax,edx
 005143B7    mov         dword ptr [ebp-14],eax
 005143BA    mov         eax,dword ptr [ebp-28]
 005143BD    sub         eax,dword ptr [ebp-18]
 005143C0    cdq
 005143C1    xor         eax,edx
 005143C3    sub         eax,edx
 005143C5    mov         dword ptr [ebp-18],eax
 005143C8    mov         eax,dword ptr [ebp-1C]
 005143CB    shl         eax,18
 005143CE    mov         edx,dword ptr [ebp-10]
 005143D1    shl         edx,10
 005143D4    add         eax,edx
 005143D6    mov         edx,dword ptr [ebp-14]
 005143D9    shl         edx,8
 005143DC    add         eax,edx
 005143DE    add         eax,dword ptr [ebp-18]
 005143E1    mov         dword ptr [ebp-0C],eax
 005143E4    mov         eax,dword ptr [ebp-0C]
 005143E7    mov         esp,ebp
 005143E9    pop         ebp
 005143EA    ret
end;*}

//005143EC
{*function sub_005143EC(?:?; ?:?):?;
begin
 005143EC    push        ebp
 005143ED    mov         ebp,esp
 005143EF    add         esp,0FFFFFFD4
 005143F2    mov         dword ptr [ebp-8],edx
 005143F5    mov         dword ptr [ebp-4],eax
 005143F8    mov         eax,dword ptr [ebp-4]
 005143FB    shr         eax,18
 005143FE    mov         dword ptr [ebp-1C],eax
 00514401    mov         eax,dword ptr [ebp-4]
 00514404    and         eax,0FF0000
 00514409    mov         dword ptr [ebp-10],eax
 0051440C    mov         eax,dword ptr [ebp-4]
 0051440F    and         eax,0FF00
 00514414    mov         dword ptr [ebp-14],eax
 00514417    mov         eax,dword ptr [ebp-4]
 0051441A    and         eax,0FF
 0051441F    mov         dword ptr [ebp-18],eax
 00514422    shr         dword ptr [ebp-10],10
 00514426    shr         dword ptr [ebp-14],8
 0051442A    mov         eax,dword ptr [ebp-8]
 0051442D    shr         eax,18
 00514430    mov         dword ptr [ebp-2C],eax
 00514433    mov         eax,dword ptr [ebp-8]
 00514436    and         eax,0FF0000
 0051443B    mov         dword ptr [ebp-20],eax
 0051443E    mov         eax,dword ptr [ebp-8]
 00514441    and         eax,0FF00
 00514446    mov         dword ptr [ebp-24],eax
 00514449    mov         eax,dword ptr [ebp-8]
 0051444C    and         eax,0FF
 00514451    mov         dword ptr [ebp-28],eax
 00514454    shr         dword ptr [ebp-20],10
 00514458    shr         dword ptr [ebp-24],8
 0051445C    mov         eax,dword ptr [ebp-1C]
 0051445F    add         eax,dword ptr [ebp-2C]
 00514462    mov         edx,dword ptr [ebp-1C]
 00514465    imul        edx,dword ptr [ebp-2C]
 00514469    shr         edx,7
 0051446C    sub         eax,edx
 0051446E    mov         dword ptr [ebp-1C],eax
 00514471    mov         eax,dword ptr [ebp-10]
 00514474    add         eax,dword ptr [ebp-20]
 00514477    mov         edx,dword ptr [ebp-10]
 0051447A    imul        edx,dword ptr [ebp-20]
 0051447E    shr         edx,7
 00514481    sub         eax,edx
 00514483    mov         dword ptr [ebp-10],eax
 00514486    mov         eax,dword ptr [ebp-14]
 00514489    add         eax,dword ptr [ebp-24]
 0051448C    mov         edx,dword ptr [ebp-14]
 0051448F    imul        edx,dword ptr [ebp-24]
 00514493    shr         edx,7
 00514496    sub         eax,edx
 00514498    mov         dword ptr [ebp-14],eax
 0051449B    mov         eax,dword ptr [ebp-18]
 0051449E    add         eax,dword ptr [ebp-28]
 005144A1    mov         edx,dword ptr [ebp-18]
 005144A4    imul        edx,dword ptr [ebp-28]
 005144A8    shr         edx,7
 005144AB    sub         eax,edx
 005144AD    mov         dword ptr [ebp-18],eax
 005144B0    mov         eax,dword ptr [ebp-1C]
 005144B3    shl         eax,18
 005144B6    mov         edx,dword ptr [ebp-10]
 005144B9    shl         edx,10
 005144BC    add         eax,edx
 005144BE    mov         edx,dword ptr [ebp-14]
 005144C1    shl         edx,8
 005144C4    add         eax,edx
 005144C6    add         eax,dword ptr [ebp-18]
 005144C9    mov         dword ptr [ebp-0C],eax
 005144CC    mov         eax,dword ptr [ebp-0C]
 005144CF    mov         esp,ebp
 005144D1    pop         ebp
 005144D2    ret
end;*}

//005144D4
{*function sub_005144D4(?:?; ?:?):?;
begin
 005144D4    push        ebp
 005144D5    mov         ebp,esp
 005144D7    add         esp,0FFFFFFD4
 005144DA    mov         dword ptr [ebp-8],edx
 005144DD    mov         dword ptr [ebp-4],eax
 005144E0    mov         eax,dword ptr [ebp-4]
 005144E3    shr         eax,18
 005144E6    mov         dword ptr [ebp-1C],eax
 005144E9    mov         eax,dword ptr [ebp-4]
 005144EC    and         eax,0FF0000
 005144F1    mov         dword ptr [ebp-10],eax
 005144F4    mov         eax,dword ptr [ebp-4]
 005144F7    and         eax,0FF00
 005144FC    mov         dword ptr [ebp-14],eax
 005144FF    mov         eax,dword ptr [ebp-4]
 00514502    and         eax,0FF
 00514507    mov         dword ptr [ebp-18],eax
 0051450A    mov         eax,dword ptr [ebp-8]
 0051450D    shr         eax,18
 00514510    mov         dword ptr [ebp-2C],eax
 00514513    mov         eax,dword ptr [ebp-8]
 00514516    and         eax,0FF0000
 0051451B    mov         dword ptr [ebp-20],eax
 0051451E    mov         eax,dword ptr [ebp-8]
 00514521    and         eax,0FF00
 00514526    mov         dword ptr [ebp-24],eax
 00514529    mov         eax,dword ptr [ebp-8]
 0051452C    and         eax,0FF
 00514531    mov         dword ptr [ebp-28],eax
 00514534    mov         eax,dword ptr [ebp-1C]
 00514537    add         eax,dword ptr [ebp-2C]
 0051453A    shr         eax,1
 0051453C    mov         dword ptr [ebp-1C],eax
 0051453F    mov         eax,dword ptr [ebp-10]
 00514542    add         eax,dword ptr [ebp-20]
 00514545    shr         eax,1
 00514547    mov         dword ptr [ebp-10],eax
 0051454A    mov         eax,dword ptr [ebp-14]
 0051454D    add         eax,dword ptr [ebp-24]
 00514550    shr         eax,1
 00514552    mov         dword ptr [ebp-14],eax
 00514555    mov         eax,dword ptr [ebp-18]
 00514558    add         eax,dword ptr [ebp-28]
 0051455B    shr         eax,1
 0051455D    mov         dword ptr [ebp-18],eax
 00514560    mov         eax,dword ptr [ebp-1C]
 00514563    shl         eax,18
 00514566    add         eax,dword ptr [ebp-10]
 00514569    add         eax,dword ptr [ebp-14]
 0051456C    add         eax,dword ptr [ebp-18]
 0051456F    mov         dword ptr [ebp-0C],eax
 00514572    mov         eax,dword ptr [ebp-0C]
 00514575    mov         esp,ebp
 00514577    pop         ebp
 00514578    ret
end;*}

//0051457C
{*function sub_0051457C(?:?; ?:?):?;
begin
 0051457C    push        ebp
 0051457D    mov         ebp,esp
 0051457F    add         esp,0FFFFFFE4
 00514582    mov         dword ptr [ebp-8],edx
 00514585    mov         dword ptr [ebp-4],eax
 00514588    mov         eax,dword ptr [ebp-4]
 0051458B    shr         eax,18
 0051458E    mov         dword ptr [ebp-1C],eax
 00514591    mov         eax,dword ptr [ebp-4]
 00514594    and         eax,0FF0000
 00514599    mov         dword ptr [ebp-10],eax
 0051459C    mov         eax,dword ptr [ebp-4]
 0051459F    and         eax,0FF00
 005145A4    mov         dword ptr [ebp-14],eax
 005145A7    mov         eax,dword ptr [ebp-4]
 005145AA    and         eax,0FF
 005145AF    mov         dword ptr [ebp-18],eax
 005145B2    shr         dword ptr [ebp-10],10
 005145B6    shr         dword ptr [ebp-14],8
 005145BA    mov         eax,dword ptr [ebp-1C]
 005145BD    imul        dword ptr [ebp-8]
 005145C0    shr         eax,8
 005145C3    mov         dword ptr [ebp-1C],eax
 005145C6    mov         eax,dword ptr [ebp-10]
 005145C9    imul        dword ptr [ebp-8]
 005145CC    shr         eax,8
 005145CF    mov         dword ptr [ebp-10],eax
 005145D2    mov         eax,dword ptr [ebp-14]
 005145D5    imul        dword ptr [ebp-8]
 005145D8    shr         eax,8
 005145DB    mov         dword ptr [ebp-14],eax
 005145DE    mov         eax,dword ptr [ebp-18]
 005145E1    imul        dword ptr [ebp-8]
 005145E4    shr         eax,8
 005145E7    mov         dword ptr [ebp-18],eax
 005145EA    cmp         dword ptr [ebp-1C],0FF
>005145F1    jbe         005145FA
 005145F3    mov         dword ptr [ebp-1C],0FF
 005145FA    cmp         dword ptr [ebp-10],0FF
>00514601    jbe         0051460A
 00514603    mov         dword ptr [ebp-10],0FF
 0051460A    cmp         dword ptr [ebp-14],0FF
>00514611    jbe         0051461A
 00514613    mov         dword ptr [ebp-14],0FF
 0051461A    cmp         dword ptr [ebp-18],0FF
>00514621    jbe         0051462A
 00514623    mov         dword ptr [ebp-18],0FF
 0051462A    mov         eax,dword ptr [ebp-1C]
 0051462D    shl         eax,18
 00514630    mov         edx,dword ptr [ebp-10]
 00514633    shl         edx,10
 00514636    add         eax,edx
 00514638    mov         edx,dword ptr [ebp-14]
 0051463B    shl         edx,8
 0051463E    add         eax,edx
 00514640    add         eax,dword ptr [ebp-18]
 00514643    mov         dword ptr [ebp-0C],eax
 00514646    mov         eax,dword ptr [ebp-0C]
 00514649    mov         esp,ebp
 0051464B    pop         ebp
 0051464C    ret
end;*}

//00514720
procedure sub_00514720;
begin
{*
 00514720    push        ebp
 00514721    mov         ebp,esp
 00514723    add         esp,0FFFFFFF4
 00514726    xor         eax,eax
 00514728    mov         dword ptr [ebp-8],eax
 0051472B    xor         eax,eax
 0051472D    mov         dword ptr [ebp-4],eax
 00514730    mov         eax,dword ptr [ebp-4]
 00514733    imul        dword ptr [ebp-8]
 00514736    mov         dword ptr [ebp-0C],eax
 00514739    fild        dword ptr [ebp-0C]
 0051473C    fdiv        dword ptr ds:[5147C4];255:Single
 00514742    call        @ROUND
 00514747    mov         edx,dword ptr [ebp-4]
 0051474A    shl         edx,5
 0051474D    lea         edx,[edx*8+587A60]
 00514754    mov         ecx,dword ptr [ebp-8]
 00514757    mov         byte ptr [edx+ecx],al
 0051475A    cmp         dword ptr [ebp-4],0
>0051475E    jle         0051478F
 00514760    mov         eax,dword ptr [ebp-8]
 00514763    mov         edx,eax
 00514765    shl         eax,8
 00514768    sub         eax,edx
 0051476A    mov         dword ptr [ebp-0C],eax
 0051476D    fild        dword ptr [ebp-0C]
 00514770    fild        dword ptr [ebp-4]
 00514773    fdivp       st(1),st
 00514775    call        @ROUND
 0051477A    mov         edx,dword ptr [ebp-4]
 0051477D    shl         edx,5
 00514780    lea         edx,[edx*8+577A60]
 00514787    mov         ecx,dword ptr [ebp-8]
 0051478A    mov         byte ptr [edx+ecx],al
>0051478D    jmp         005147A3
 0051478F    mov         eax,dword ptr [ebp-4]
 00514792    shl         eax,5
 00514795    lea         eax,[eax*8+577A60]
 0051479C    mov         edx,dword ptr [ebp-8]
 0051479F    mov         byte ptr [eax+edx],0
 005147A3    inc         dword ptr [ebp-4]
 005147A6    cmp         dword ptr [ebp-4],100
>005147AD    jne         00514730
 005147AF    inc         dword ptr [ebp-8]
 005147B2    cmp         dword ptr [ebp-8],100
>005147B9    jne         0051472B
 005147BF    mov         esp,ebp
 005147C1    pop         ebp
 005147C2    ret
*}
end;

//005147C8
procedure sub_005147C8;
begin
{*
 005147C8    call        00512A54
 005147CD    mov         [005779B8],al;gvar_005779B8
 005147D2    mov         dword ptr ds:[5779E0],513318
 005147DC    mov         dword ptr ds:[5779E4],5134B4
 005147E6    mov         dword ptr ds:[5779E8],51346C
 005147F0    mov         dword ptr ds:[5779EC],5134D8
 005147FA    mov         dword ptr ds:[5779F0],513520
 00514804    mov         dword ptr ds:[5779F4],513560
 0051480E    mov         dword ptr ds:[577A04],5134B4
 00514818    mov         dword ptr ds:[5779FC],513318
 00514822    mov         dword ptr ds:[577A14],5134D8
 0051482C    mov         dword ptr ds:[577A0C],51346C
 00514836    mov         dword ptr ds:[577A1C],513520
 00514840    mov         dword ptr ds:[577A24],513560
 0051484A    cmp         byte ptr ds:[5779B8],0;gvar_005779B8
>00514851    je          00514938
 00514857    mov         dword ptr ds:[5779BC],513AD8
 00514861    mov         dword ptr ds:[5779C0],513B14
 0051486B    mov         dword ptr ds:[5779C4],513B5C
 00514875    mov         dword ptr ds:[5779C8],513B98
 0051487F    mov         dword ptr ds:[5779CC],513BE4
 00514889    mov         dword ptr ds:[5779D0],513C34
 00514893    mov         dword ptr ds:[5779D4],513C84
 0051489D    mov         dword ptr ds:[5779D8],513CE4
 005148A7    mov         dword ptr ds:[5779DC],513D58
 005148B1    mov         dword ptr ds:[577A00],513B98
 005148BB    mov         dword ptr ds:[5779F8],513B5C
 005148C5    mov         dword ptr ds:[577A10],513C34
 005148CF    mov         dword ptr ds:[577A08],513BE4
 005148D9    mov         dword ptr ds:[577A18],513C84
 005148E3    mov         dword ptr ds:[577A20],513CE4
 005148ED    mov         dword ptr ds:[577A28],514650
 005148F7    mov         dword ptr ds:[577A2C],514660
 00514901    mov         dword ptr ds:[577A30],513F74
 0051490B    mov         dword ptr ds:[577A34],514670
 00514915    mov         dword ptr ds:[577A40],5146B0
 0051491F    mov         dword ptr ds:[577A48],5146C8
 00514929    mov         dword ptr ds:[577A4C],514700
>00514933    jmp         00514A14
 00514938    mov         dword ptr ds:[5779BC],5135CC
 00514942    mov         dword ptr ds:[5779C0],51364C
 0051494C    mov         dword ptr ds:[5779C4],5136D4
 00514956    mov         dword ptr ds:[5779C8],51375C
 00514960    mov         dword ptr ds:[5779CC],5137F0
 0051496A    mov         dword ptr ds:[5779D0],51387C
 00514974    mov         dword ptr ds:[5779D4],51390C
 0051497E    mov         dword ptr ds:[5779D8],5139BC
 00514988    mov         dword ptr ds:[5779DC],5139F8
 00514992    mov         dword ptr ds:[577A00],51375C
 0051499C    mov         dword ptr ds:[5779F8],5136D4
 005149A6    mov         dword ptr ds:[577A10],51387C
 005149B0    mov         dword ptr ds:[577A08],5137F0
 005149BA    mov         dword ptr ds:[577A18],51390C
 005149C4    mov         dword ptr ds:[577A20],5139BC
 005149CE    mov         dword ptr ds:[577A28],513DC8
 005149D8    mov         dword ptr ds:[577A2C],513E9C
 005149E2    mov         dword ptr ds:[577A30],513F74
 005149EC    mov         dword ptr ds:[577A34],5140B4
 005149F6    mov         dword ptr ds:[577A40],514320
 00514A00    mov         dword ptr ds:[577A48],5143EC
 00514A0A    mov         dword ptr ds:[577A4C],51457C
 00514A14    call        00512A68
 00514A19    test        al,al
>00514A1B    je          00514A3C
 00514A1D    mov         dword ptr ds:[577A38],514690
 00514A27    mov         dword ptr ds:[577A3C],5146A0
 00514A31    mov         dword ptr ds:[577A44],5146F0
 00514A3B    ret
 00514A3C    mov         dword ptr ds:[577A38],5141B8
 00514A46    mov         dword ptr ds:[577A3C],51426C
 00514A50    mov         dword ptr ds:[577A44],5144D4
 00514A5A    ret
*}
end;

Initialization
//00514A9C
{*
 00514A9C    sub         dword ptr ds:[577A5C],1
>00514AA3    jae         00514ABD
 00514AA5    call        00514720
 00514AAA    call        005147C8
 00514AAF    cmp         byte ptr ds:[5779B8],0;gvar_005779B8
>00514AB6    je          00514ABD
 00514AB8    call        00513A34
 00514ABD    ret
*}
Finalization
//00514A5C
{*
 00514A5C    push        ebp
 00514A5D    mov         ebp,esp
 00514A5F    xor         eax,eax
 00514A61    push        ebp
 00514A62    push        514A91
 00514A67    push        dword ptr fs:[eax]
 00514A6A    mov         dword ptr fs:[eax],esp
 00514A6D    inc         dword ptr ds:[577A5C]
>00514A73    jne         00514A83
 00514A75    cmp         byte ptr ds:[5779B8],0;gvar_005779B8
>00514A7C    je          00514A83
 00514A7E    call        00513AC0
 00514A83    xor         eax,eax
 00514A85    pop         edx
 00514A86    pop         ecx
 00514A87    pop         ecx
 00514A88    mov         dword ptr fs:[eax],edx
 00514A8B    push        514A98
 00514A90    ret
>00514A91    jmp         @HandleFinally
>00514A96    jmp         00514A90
 00514A98    pop         ebp
 00514A99    ret
*}
end.