//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit3;

interface

uses
  SysUtils, Classes;

    //procedure sub_00407538(?:?; ?:?; ?:Integer; ?:?; ?:?);//00407538
    //procedure sub_00407570(?:Integer; ?:Integer; ?:?);//00407570
    //function sub_00407594(?:?; ?:?; ?:?):?;//00407594
    //function sub_00407644(?:TRect):?;//00407644
    //function sub_00407678(?:?; ?:?; ?:?):?;//00407678
    //procedure sub_004076C4(?:?; ?:?; ?:?; ?:?; ?:?);//004076C4
    //procedure sub_00407704(?:?; ?:?);//00407704

implementation

//00407538
{*procedure sub_00407538(?:?; ?:?; ?:Integer; ?:?; ?:?);
begin
 00407538    push        ebp
 00407539    mov         ebp,esp
 0040753B    add         esp,0FFFFFFF4
 0040753E    mov         dword ptr [ebp-0C],ecx
 00407541    mov         dword ptr [ebp-8],edx
 00407544    mov         dword ptr [ebp-4],eax
 00407547    mov         eax,dword ptr [ebp+8]
 0040754A    mov         edx,dword ptr [ebp-4]
 0040754D    mov         dword ptr [eax],edx
 0040754F    mov         eax,dword ptr [ebp+8]
 00407552    mov         edx,dword ptr [ebp-8]
 00407555    mov         dword ptr [eax+4],edx
 00407558    mov         eax,dword ptr [ebp+8]
 0040755B    mov         edx,dword ptr [ebp+0C]
 0040755E    mov         dword ptr [eax+0C],edx
 00407561    mov         eax,dword ptr [ebp+8]
 00407564    mov         edx,dword ptr [ebp-0C]
 00407567    mov         dword ptr [eax+8],edx
 0040756A    mov         esp,ebp
 0040756C    pop         ebp
 0040756D    ret         8
end;*}

//00407570
{*procedure sub_00407570(?:Integer; ?:Integer; ?:?);
begin
 00407570    push        ebp
 00407571    mov         ebp,esp
 00407573    add         esp,0FFFFFFF4
 00407576    mov         dword ptr [ebp-0C],ecx
 00407579    mov         dword ptr [ebp-8],edx
 0040757C    mov         dword ptr [ebp-4],eax
 0040757F    mov         eax,dword ptr [ebp-0C]
 00407582    mov         edx,dword ptr [ebp-4]
 00407585    mov         dword ptr [eax],edx
 00407587    mov         eax,dword ptr [ebp-0C]
 0040758A    mov         edx,dword ptr [ebp-8]
 0040758D    mov         dword ptr [eax+4],edx
 00407590    mov         esp,ebp
 00407592    pop         ebp
 00407593    ret
end;*}

//00407594
{*function sub_00407594(?:?; ?:?; ?:?):?;
begin
 00407594    push        ebp
 00407595    mov         ebp,esp
 00407597    add         esp,0FFFFFFF0
 0040759A    push        esi
 0040759B    push        edi
 0040759C    mov         dword ptr [ebp-0C],ecx
 0040759F    mov         dword ptr [ebp-8],edx
 004075A2    mov         dword ptr [ebp-4],eax
 004075A5    mov         eax,dword ptr [ebp-8]
 004075A8    mov         edx,dword ptr [ebp-4]
 004075AB    mov         esi,eax
 004075AD    mov         edi,edx
 004075AF    movs        dword ptr [edi],dword ptr [esi]
 004075B0    movs        dword ptr [edi],dword ptr [esi]
 004075B1    movs        dword ptr [edi],dword ptr [esi]
 004075B2    movs        dword ptr [edi],dword ptr [esi]
 004075B3    mov         eax,dword ptr [ebp-0C]
 004075B6    mov         eax,dword ptr [eax]
 004075B8    mov         edx,dword ptr [ebp-8]
 004075BB    cmp         eax,dword ptr [edx]
>004075BD    jle         004075C9
 004075BF    mov         eax,dword ptr [ebp-0C]
 004075C2    mov         eax,dword ptr [eax]
 004075C4    mov         edx,dword ptr [ebp-4]
 004075C7    mov         dword ptr [edx],eax
 004075C9    mov         eax,dword ptr [ebp-0C]
 004075CC    mov         eax,dword ptr [eax+4]
 004075CF    mov         edx,dword ptr [ebp-8]
 004075D2    cmp         eax,dword ptr [edx+4]
>004075D5    jle         004075E3
 004075D7    mov         eax,dword ptr [ebp-0C]
 004075DA    mov         eax,dword ptr [eax+4]
 004075DD    mov         edx,dword ptr [ebp-4]
 004075E0    mov         dword ptr [edx+4],eax
 004075E3    mov         eax,dword ptr [ebp-0C]
 004075E6    mov         eax,dword ptr [eax+8]
 004075E9    mov         edx,dword ptr [ebp-8]
 004075EC    cmp         eax,dword ptr [edx+8]
>004075EF    jge         004075FD
 004075F1    mov         eax,dword ptr [ebp-0C]
 004075F4    mov         eax,dword ptr [eax+8]
 004075F7    mov         edx,dword ptr [ebp-4]
 004075FA    mov         dword ptr [edx+8],eax
 004075FD    mov         eax,dword ptr [ebp-0C]
 00407600    mov         eax,dword ptr [eax+0C]
 00407603    mov         edx,dword ptr [ebp-8]
 00407606    cmp         eax,dword ptr [edx+0C]
>00407609    jge         00407617
 0040760B    mov         eax,dword ptr [ebp-0C]
 0040760E    mov         eax,dword ptr [eax+0C]
 00407611    mov         edx,dword ptr [ebp-4]
 00407614    mov         dword ptr [edx+0C],eax
 00407617    mov         eax,dword ptr [ebp-4]
 0040761A    call        00407644
 0040761F    xor         al,1
 00407621    mov         byte ptr [ebp-0D],al
 00407624    cmp         byte ptr [ebp-0D],0
>00407628    jne         00407639
 0040762A    mov         eax,dword ptr [ebp-4]
 0040762D    xor         ecx,ecx
 0040762F    mov         edx,10
 00407634    call        @FillChar
 00407639    mov         al,byte ptr [ebp-0D]
 0040763C    pop         edi
 0040763D    pop         esi
 0040763E    mov         esp,ebp
 00407640    pop         ebp
 00407641    ret
end;*}

//00407644
{*function sub_00407644(?:TRect):?;
begin
 00407644    push        ebp
 00407645    mov         ebp,esp
 00407647    add         esp,0FFFFFFF8
 0040764A    mov         dword ptr [ebp-4],eax
 0040764D    mov         eax,dword ptr [ebp-4]
 00407650    mov         eax,dword ptr [eax+8]
 00407653    mov         edx,dword ptr [ebp-4]
 00407656    cmp         eax,dword ptr [edx]
>00407658    jle         0040766C
 0040765A    mov         eax,dword ptr [ebp-4]
 0040765D    mov         eax,dword ptr [eax+0C]
 00407660    mov         edx,dword ptr [ebp-4]
 00407663    cmp         eax,dword ptr [edx+4]
>00407666    jle         0040766C
 00407668    xor         eax,eax
>0040766A    jmp         0040766E
 0040766C    mov         al,1
 0040766E    mov         byte ptr [ebp-5],al
 00407671    mov         al,byte ptr [ebp-5]
 00407674    pop         ecx
 00407675    pop         ecx
 00407676    pop         ebp
 00407677    ret
end;*}

//00407678
{*function sub_00407678(?:?; ?:?; ?:?):?;
begin
 00407678    push        ebp
 00407679    mov         ebp,esp
 0040767B    add         esp,0FFFFFFF0
 0040767E    mov         dword ptr [ebp-0C],ecx
 00407681    mov         dword ptr [ebp-8],edx
 00407684    mov         dword ptr [ebp-4],eax
 00407687    mov         eax,dword ptr [ebp-4]
 0040768A    test        eax,eax
>0040768C    je          004076B7
 0040768E    mov         eax,dword ptr [ebp-4]
 00407691    mov         edx,dword ptr [ebp-8]
 00407694    add         dword ptr [eax],edx
 00407696    mov         eax,dword ptr [ebp-4]
 00407699    mov         edx,dword ptr [ebp-8]
 0040769C    add         dword ptr [eax+8],edx
 0040769F    mov         eax,dword ptr [ebp-4]
 004076A2    mov         edx,dword ptr [ebp-0C]
 004076A5    add         dword ptr [eax+4],edx
 004076A8    mov         eax,dword ptr [ebp-4]
 004076AB    mov         edx,dword ptr [ebp-0C]
 004076AE    add         dword ptr [eax+0C],edx
 004076B1    mov         byte ptr [ebp-0D],1
>004076B5    jmp         004076BB
 004076B7    mov         byte ptr [ebp-0D],0
 004076BB    mov         al,byte ptr [ebp-0D]
 004076BE    mov         esp,ebp
 004076C0    pop         ebp
 004076C1    ret
end;*}

//004076C4
{*procedure sub_004076C4(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004076C4    push        ebp
 004076C5    mov         ebp,esp
 004076C7    add         esp,0FFFFFFF4
 004076CA    mov         dword ptr [ebp-0C],ecx
 004076CD    mov         dword ptr [ebp-8],edx
 004076D0    mov         dword ptr [ebp-4],eax
 004076D3    mov         eax,dword ptr [ebp+8]
 004076D6    mov         edx,dword ptr [ebp-4]
 004076D9    mov         dword ptr [eax],edx
 004076DB    mov         eax,dword ptr [ebp+8]
 004076DE    mov         edx,dword ptr [ebp-8]
 004076E1    mov         dword ptr [eax+4],edx
 004076E4    mov         eax,dword ptr [ebp-4]
 004076E7    add         eax,dword ptr [ebp-0C]
 004076EA    mov         edx,dword ptr [ebp+8]
 004076ED    mov         dword ptr [edx+8],eax
 004076F0    mov         eax,dword ptr [ebp-8]
 004076F3    add         eax,dword ptr [ebp+0C]
 004076F6    mov         edx,dword ptr [ebp+8]
 004076F9    mov         dword ptr [edx+0C],eax
 004076FC    mov         esp,ebp
 004076FE    pop         ebp
 004076FF    ret         8
end;*}

//00407704
{*procedure sub_00407704(?:?; ?:?);
begin
 00407704    push        ebp
 00407705    mov         ebp,esp
 00407707    add         esp,0FFFFFFF8
 0040770A    mov         dword ptr [ebp-8],edx
 0040770D    mov         dword ptr [ebp-4],eax
 00407710    mov         eax,dword ptr [ebp-4]
 00407713    mov         eax,dword ptr [eax+8]
 00407716    mov         edx,dword ptr [ebp-4]
 00407719    sub         eax,dword ptr [edx]
 0040771B    sar         eax,1
>0040771D    jns         00407722
 0040771F    adc         eax,0
 00407722    mov         edx,dword ptr [ebp-4]
 00407725    add         eax,dword ptr [edx]
 00407727    mov         edx,dword ptr [ebp-8]
 0040772A    mov         dword ptr [edx],eax
 0040772C    mov         eax,dword ptr [ebp-4]
 0040772F    mov         eax,dword ptr [eax+0C]
 00407732    mov         edx,dword ptr [ebp-4]
 00407735    sub         eax,dword ptr [edx+4]
 00407738    sar         eax,1
>0040773A    jns         0040773F
 0040773C    adc         eax,0
 0040773F    mov         edx,dword ptr [ebp-4]
 00407742    add         eax,dword ptr [edx+4]
 00407745    mov         edx,dword ptr [ebp-8]
 00407748    mov         dword ptr [edx+4],eax
 0040774B    pop         ecx
 0040774C    pop         ecx
 0040774D    pop         ebp
 0040774E    ret
end;*}

end.