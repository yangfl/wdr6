//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit6;

interface

uses
  SysUtils, Classes;

    //function sub_00408988:?;//00408988
    //function sub_004089AC(?:?; ?:?):?;//004089AC
    //function sub_00408B84(?:Byte; ?:?):?;//00408B84
    //function sub_00408CA0(?:?; ?:?; ?:?):?;//00408CA0
    //function sub_00408CB8(?:?):?;//00408CB8
    procedure sub_00408CE4;//00408CE4
    //function sub_00408D14(?:?; ?:?):?;//00408D14
    //function sub_00408D90(?:?; ?:?; ?:?):?;//00408D90
    //function sub_00408E10(?:?):?;//00408E10
    //function sub_00408E38(?:?; ?:?; ?:?):?;//00408E38
    //function sub_00408E74(?:?):?;//00408E74
    //function sub_00408E98(?:Pointer):?;//00408E98
    //function sub_00408ED8:?;//00408ED8
    procedure sub_00408F10(?:Integer);//00408F10
    //procedure sub_00408F50(?:Integer; ?:?; ?:?);//00408F50
    procedure sub_00408FB0;//00408FB0
    //function sub_0040901C(?:?):?;//0040901C
    //function sub_0040931C(?:?):?;//0040931C
    //function sub_0040962C(?:?):?;//0040962C
    //function sub_00409C24(?:?; ?:?; ?:?):?;//00409C24
    //function sub_00409D60(?:?; ?:?):?;//00409D60
    //function sub_00409DE4(?:?; ?:?):?;//00409DE4
    //function sub_00409E78(?:?; ?:?):?;//00409E78
    procedure sub_00409F80;//00409F80
    procedure sub_0040A53C;//0040A53C
    //function sub_0040A5CC:?;//0040A5CC
    procedure sub_0040A9E8;//0040A9E8
    procedure sub_0040AB54;//0040AB54
    procedure sub_0040ABA0;//0040ABA0
    procedure sub_0040ABBC;//0040ABBC

implementation

//00408988
{*function sub_00408988:?;
begin
 00408988    mov         edx,dword ptr ds:[56DFD0];^IsLibrary:Boolean
 0040898E    cmp         byte ptr [edx],0
>00408991    je          0040899B
 00408993    mov         edx,dword ptr ds:[56F668];0x0 HInstance:LongWord
>00408999    jmp         0040899D
 0040899B    xor         edx,edx
 0040899D    push        200
 004089A2    push        eax
 004089A3    push        edx
 004089A4    call        kernel32.GetModuleFileNameA
 004089A9    ret
end;*}

//004089AC
{*function sub_004089AC(?:?; ?:?):?;
begin
 004089AC    push        ebx
 004089AD    push        esi
 004089AE    push        edi
 004089AF    mov         ebx,edx
 004089B1    mov         esi,eax
 004089B3    mov         eax,ebx
 004089B5    call        00408988
 004089BA    mov         edi,eax
 004089BC    test        edi,edi
>004089BE    jbe         004089EE
 004089C0    mov         eax,ebx
 004089C2    add         eax,edi
 004089C4    dec         eax
 004089C5    xor         edi,edi
>004089C7    jmp         004089CB
 004089C9    inc         edi
 004089CA    dec         eax
 004089CB    cmp         eax,ebx
>004089CD    jb          004089D4
 004089CF    cmp         byte ptr [eax],5C
>004089D2    jne         004089C9
 004089D4    inc         eax
 004089D5    mov         edx,ebx
 004089D7    mov         ecx,edi
 004089D9    call        Move
 004089DE    add         ebx,edi
 004089E0    mov         byte ptr [ebx],3A
 004089E3    inc         ebx
 004089E4    mov         byte ptr [ebx],20
 004089E7    inc         ebx
>004089E8    jmp         004089EE
 004089EA    mov         byte ptr [ebx],al
 004089EC    inc         ebx
 004089ED    inc         esi
 004089EE    mov         al,byte ptr [esi]
 004089F0    test        al,al
>004089F2    jne         004089EA
 004089F4    mov         byte ptr [ebx],0
 004089F7    mov         eax,ebx
 004089F9    pop         edi
 004089FA    pop         esi
 004089FB    pop         ebx
 004089FC    ret
end;*}

//00408B84
{*function sub_00408B84(?:Byte; ?:?):?;
begin
 00408B84    push        edi
 00408B85    mov         edi,edx
 00408B87    add         eax,1
 00408B8A    mov         edx,89705F41
 00408B8F    mul         eax,edx
 00408B91    shr         eax,1E
 00408B94    mov         ecx,edx
 00408B96    and         edx,1FFFFFFF
 00408B9C    shr         ecx,1D
 00408B9F    lea         edx,[edx+edx*4]
 00408BA2    add         edx,eax
 00408BA4    mov         eax,ecx
 00408BA6    or          eax,30
 00408BA9    mov         byte ptr [edi],al
 00408BAB    mov         eax,edx
 00408BAD    cmp         ecx,1
 00408BB0    sbb         edi,0FFFFFFFF
 00408BB3    shr         eax,1C
 00408BB6    and         edx,0FFFFFFF
 00408BBC    or          ecx,eax
 00408BBE    or          eax,30
 00408BC1    mov         byte ptr [edi],al
 00408BC3    lea         eax,[edx+edx*4]
 00408BC6    lea         edx,[edx+edx*4]
 00408BC9    cmp         ecx,1
 00408BCC    sbb         edi,0FFFFFFFF
 00408BCF    shr         eax,1B
 00408BD2    and         edx,7FFFFFF
 00408BD8    or          ecx,eax
 00408BDA    or          eax,30
 00408BDD    mov         byte ptr [edi],al
 00408BDF    lea         eax,[edx+edx*4]
 00408BE2    lea         edx,[edx+edx*4]
 00408BE5    cmp         ecx,1
 00408BE8    sbb         edi,0FFFFFFFF
 00408BEB    shr         eax,1A
 00408BEE    and         edx,3FFFFFF
 00408BF4    or          ecx,eax
 00408BF6    or          eax,30
 00408BF9    mov         byte ptr [edi],al
 00408BFB    lea         eax,[edx+edx*4]
 00408BFE    lea         edx,[edx+edx*4]
 00408C01    cmp         ecx,1
 00408C04    sbb         edi,0FFFFFFFF
 00408C07    shr         eax,19
 00408C0A    and         edx,1FFFFFF
 00408C10    or          ecx,eax
 00408C12    or          eax,30
 00408C15    mov         byte ptr [edi],al
 00408C17    lea         eax,[edx+edx*4]
 00408C1A    lea         edx,[edx+edx*4]
 00408C1D    cmp         ecx,1
 00408C20    sbb         edi,0FFFFFFFF
 00408C23    shr         eax,18
 00408C26    and         edx,0FFFFFF
 00408C2C    or          ecx,eax
 00408C2E    or          eax,30
 00408C31    mov         byte ptr [edi],al
 00408C33    lea         eax,[edx+edx*4]
 00408C36    lea         edx,[edx+edx*4]
 00408C39    cmp         ecx,1
 00408C3C    sbb         edi,0FFFFFFFF
 00408C3F    shr         eax,17
 00408C42    and         edx,7FFFFF
 00408C48    or          ecx,eax
 00408C4A    or          eax,30
 00408C4D    mov         byte ptr [edi],al
 00408C4F    lea         eax,[edx+edx*4]
 00408C52    lea         edx,[edx+edx*4]
 00408C55    cmp         ecx,1
 00408C58    sbb         edi,0FFFFFFFF
 00408C5B    shr         eax,16
 00408C5E    and         edx,3FFFFF
 00408C64    or          ecx,eax
 00408C66    or          eax,30
 00408C69    mov         byte ptr [edi],al
 00408C6B    lea         eax,[edx+edx*4]
 00408C6E    lea         edx,[edx+edx*4]
 00408C71    cmp         ecx,1
 00408C74    sbb         edi,0FFFFFFFF
 00408C77    shr         eax,15
 00408C7A    and         edx,1FFFFF
 00408C80    or          ecx,eax
 00408C82    or          eax,30
 00408C85    mov         byte ptr [edi],al
 00408C87    lea         eax,[edx+edx*4]
 00408C8A    cmp         ecx,1
 00408C8D    sbb         edi,0FFFFFFFF
 00408C90    shr         eax,14
 00408C93    or          eax,30
 00408C96    mov         byte ptr [edi],al
 00408C98    lea         eax,[edi+1]
 00408C9B    pop         edi
 00408C9C    ret
end;*}

//00408CA0
{*function sub_00408CA0(?:?; ?:?; ?:?):?;
begin
 00408CA0    push        ebx
 00408CA1    push        esi
 00408CA2    mov         esi,ecx
 00408CA4    mov         ebx,edx
 00408CA6    mov         edx,ebx
 00408CA8    mov         ecx,esi
 00408CAA    call        Move
 00408CAF    mov         eax,ebx
 00408CB1    add         eax,esi
 00408CB3    pop         esi
 00408CB4    pop         ebx
 00408CB5    ret
end;*}

//00408CB8
{*function sub_00408CB8(?:?):?;
begin
 00408CB8    test        eax,eax
>00408CBA    je          00408CCC
 00408CBC    add         eax,0FFFFFFD4
 00408CBF    mov         eax,dword ptr [eax]
 00408CC1    xor         ecx,ecx
 00408CC3    mov         cl,byte ptr [eax]
 00408CC5    inc         eax
 00408CC6    call        00408CA0
 00408CCB    ret
 00408CCC    mov         eax,408CDC
 00408CD1    mov         ecx,7
 00408CD6    call        00408CA0
 00408CDB    ret
end;*}

//00408CE4
procedure sub_00408CE4;
begin
{*
 00408CE4    cmp         byte ptr ds:[5718A2],0;gvar_005718A2
>00408CEB    jne         00408D12
 00408CED    cmp         byte ptr ds:[56F680],0;gvar_0056F680
>00408CF4    jne         00408D12
 00408CF6    mov         byte ptr ds:[5718A2],1;gvar_005718A2
 00408CFD    push        22010
 00408D02    push        edx
 00408D03    push        eax
 00408D04    push        0
 00408D06    call        user32.MessageBoxA
 00408D0B    mov         byte ptr ds:[5718A2],0;gvar_005718A2
 00408D12    ret
*}
end;

//00408D14
{*function sub_00408D14(?:?; ?:?):?;
begin
 00408D14    push        ebp
 00408D15    mov         ebp,esp
 00408D17    push        ebx
 00408D18    mov         edx,eax
 00408D1A    cmp         edx,0FFFF
>00408D20    jbe         00408D8A
 00408D22    test        dl,3
>00408D25    jne         00408D8A
 00408D27    mov         edx,dword ptr [ebp+8]
 00408D2A    mov         edx,dword ptr [edx-1C]
 00408D2D    mov         ecx,eax
 00408D2F    cmp         edx,ecx
>00408D31    ja          00408D43
 00408D33    mov         ebx,dword ptr [ebp+8]
 00408D36    mov         ebx,dword ptr [ebp+8]
 00408D39    add         edx,dword ptr [ebx-10]
 00408D3C    add         ecx,4
 00408D3F    cmp         edx,ecx
>00408D41    jae         00408D5A
 00408D43    mov         edx,dword ptr [ebp+8]
 00408D46    xor         ecx,ecx
 00408D48    mov         dword ptr [edx-10],ecx
 00408D4B    push        1C
 00408D4D    mov         edx,dword ptr [ebp+8]
 00408D50    add         edx,0FFFFFFE4
 00408D53    push        edx
 00408D54    push        eax
 00408D55    call        kernel32.VirtualQuery
 00408D5A    mov         eax,dword ptr [ebp+8]
 00408D5D    cmp         dword ptr [eax-10],4
>00408D61    jb          00408D81
 00408D63    mov         eax,dword ptr [ebp+8]
 00408D66    cmp         dword ptr [eax-0C],1000
>00408D6D    jne         00408D81
 00408D6F    mov         eax,dword ptr [ebp+8]
 00408D72    test        byte ptr [eax-8],0F6
>00408D76    je          00408D81
 00408D78    mov         eax,dword ptr [ebp+8]
 00408D7B    test        byte ptr [eax-7],1
>00408D7F    je          00408D85
 00408D81    xor         eax,eax
>00408D83    jmp         00408D8C
 00408D85    mov         al,1
 00408D87    pop         ebx
 00408D88    pop         ebp
 00408D89    ret
 00408D8A    xor         eax,eax
 00408D8C    pop         ebx
 00408D8D    pop         ebp
 00408D8E    ret
end;*}

//00408D90
{*function sub_00408D90(?:?; ?:?; ?:?):?;
begin
 00408D90    push        ebp
 00408D91    mov         ebp,esp
 00408D93    push        ebx
 00408D94    push        esi
 00408D95    push        edi
 00408D96    mov         edi,edx
 00408D98    mov         ebx,eax
 00408D9A    cmp         edi,3E8
>00408DA0    jge         00408E07
 00408DA2    mov         eax,dword ptr [ebp+8]
 00408DA5    push        eax
 00408DA6    mov         eax,ebx
 00408DA8    add         eax,0FFFFFFB4
 00408DAB    call        00408D14
 00408DB0    pop         ecx
 00408DB1    test        al,al
>00408DB3    je          00408E07
 00408DB5    mov         eax,dword ptr [ebp+8]
 00408DB8    push        eax
 00408DB9    mov         eax,ebx
 00408DBB    add         eax,0FFFFFFDC
 00408DBE    call        00408D14
 00408DC3    pop         ecx
 00408DC4    test        al,al
>00408DC6    je          00408E07
 00408DC8    mov         eax,ebx
 00408DCA    add         eax,0FFFFFFDC
 00408DCD    mov         esi,dword ptr [eax]
 00408DCF    mov         eax,ebx
 00408DD1    add         eax,0FFFFFFB4
 00408DD4    cmp         ebx,dword ptr [eax]
>00408DD6    jne         00408DFF
 00408DD8    test        esi,esi
>00408DDA    je          00408E03
 00408DDC    mov         eax,dword ptr [ebp+8]
 00408DDF    push        eax
 00408DE0    mov         eax,esi
 00408DE2    call        00408D14
 00408DE7    pop         ecx
 00408DE8    test        al,al
>00408DEA    je          00408DFF
 00408DEC    mov         eax,dword ptr [ebp+8]
 00408DEF    push        eax
 00408DF0    lea         edx,[edi+1]
 00408DF3    mov         eax,dword ptr [esi]
 00408DF5    call        00408D90
 00408DFA    pop         ecx
 00408DFB    test        al,al
>00408DFD    jne         00408E03
 00408DFF    xor         eax,eax
>00408E01    jmp         00408E09
 00408E03    mov         al,1
>00408E05    jmp         00408E09
 00408E07    xor         eax,eax
 00408E09    pop         edi
 00408E0A    pop         esi
 00408E0B    pop         ebx
 00408E0C    pop         ebp
 00408E0D    ret
end;*}

//00408E10
{*function sub_00408E10(?:?):?;
begin
 00408E10    push        ebp
 00408E11    mov         ebp,esp
 00408E13    add         esp,0FFFFFFE4
 00408E16    push        ebx
 00408E17    mov         ebx,dword ptr [eax]
 00408E19    xor         eax,eax
 00408E1B    mov         dword ptr [ebp-10],eax
 00408E1E    push        ebp
 00408E1F    xor         edx,edx
 00408E21    mov         eax,ebx
 00408E23    call        00408D90
 00408E28    pop         ecx
 00408E29    test        al,al
>00408E2B    jne         00408E2F
 00408E2D    xor         ebx,ebx
 00408E2F    mov         eax,ebx
 00408E31    pop         ebx
 00408E32    mov         esp,ebp
 00408E34    pop         ebp
 00408E35    ret
end;*}

//00408E38
{*function sub_00408E38(?:?; ?:?; ?:?):?;
begin
 00408E38    push        ebx
 00408E39    push        esi
 00408E3A    mov         ebx,eax
 00408E3C    add         ebx,20
 00408E3F    mov         dword ptr [edx],ebx
 00408E41    mov         edx,dword ptr [eax]
 00408E43    cmp         eax,dword ptr [edx+10]
>00408E46    jne         00408E50
 00408E48    mov         ebx,dword ptr [edx+8]
 00408E4B    cmp         ebx,dword ptr [edx+0C]
>00408E4E    jbe         00408E69
 00408E50    mov         esi,eax
 00408E52    mov         ebx,esi
 00408E54    sub         ebx,4
 00408E57    mov         ebx,dword ptr [ebx]
 00408E59    and         ebx,0FFFFFFF0
 00408E5C    add         ebx,esi
 00408E5E    movzx       eax,word ptr [edx+2]
 00408E62    sub         ebx,eax
 00408E64    mov         dword ptr [ecx],ebx
 00408E66    pop         esi
 00408E67    pop         ebx
 00408E68    ret
 00408E69    mov         eax,dword ptr [edx+8]
 00408E6C    dec         eax
 00408E6D    mov         dword ptr [ecx],eax
 00408E6F    pop         esi
 00408E70    pop         ebx
 00408E71    ret
end;*}

//00408E74
{*function sub_00408E74(?:?):?;
begin
 00408E74    mov         ecx,eax
 00408E76    mov         edx,ecx
 00408E78    sub         edx,4
 00408E7B    mov         edx,dword ptr [edx]
 00408E7D    and         edx,0FFFFFFF0
 00408E80    add         edx,ecx
 00408E82    mov         eax,edx
 00408E84    mov         edx,eax
 00408E86    sub         edx,4
 00408E89    mov         edx,dword ptr [edx]
 00408E8B    and         edx,0FFFFFFF0
 00408E8E    test        edx,edx
>00408E90    jne         00408E94
 00408E92    xor         eax,eax
 00408E94    ret
end;*}

//00408E98
{*function sub_00408E98(?:Pointer):?;
begin
 00408E98    cmp         dword ptr ds:[56F7E8],0;gvar_0056F7E8
>00408E9F    je          00408EBB
 00408EA1    mov         edx,dword ptr ds:[56F7E4];0x0 gvar_0056F7E4
 00408EA7    cmp         edx,eax
>00408EA9    jb          00408EBB
 00408EAB    mov         edx,eax
 00408EAD    add         edx,13FFF0
 00408EB3    cmp         edx,dword ptr ds:[56F7E4];0x0 gvar_0056F7E4
>00408EB9    jae         00408EBF
 00408EBB    add         eax,10
 00408EBE    ret
 00408EBF    cmp         dword ptr ds:[56F7E8],13FFE0;gvar_0056F7E8
>00408EC9    je          00408ED2
 00408ECB    mov         eax,[0056F7E4];0x0 gvar_0056F7E4
>00408ED0    jmp         00408ED4
 00408ED2    xor         eax,eax
 00408ED4    ret
end;*}

//00408ED8
{*function sub_00408ED8:?;
begin
 00408ED8    mov         eax,100
 00408EDD    lock cmpxchgbyte ptr ds:[56F7E0],ah;gvar_0056F7E0
>00408EE5    je          00408F0E
 00408EE7    push        ecx
 00408EE8    push        edx
 00408EE9    push        0
 00408EEB    call        kernel32.Sleep
 00408EF0    pop         edx
 00408EF1    pop         ecx
 00408EF2    mov         eax,100
 00408EF7    lock cmpxchgbyte ptr ds:[56F7E0],ah;gvar_0056F7E0
>00408EFF    je          00408F0E
 00408F01    push        ecx
 00408F02    push        edx
 00408F03    push        0A
 00408F05    call        kernel32.Sleep
 00408F0A    pop         edx
 00408F0B    pop         ecx
>00408F0C    jmp         00408ED8
 00408F0E    ret
end;*}

//00408F10
procedure sub_00408F10(?:Integer);
begin
{*
 00408F10    mov         ecx,dword ptr [eax+4]
 00408F13    mov         edx,dword ptr [eax]
 00408F15    cmp         ecx,edx
 00408F17    mov         dword ptr [ecx],edx
 00408F19    mov         dword ptr [edx+4],ecx
>00408F1C    je          00408F20
 00408F1E    ret
 00408F1F    nop
 00408F20    sub         ecx,56F870;gvar_0056F870
 00408F26    mov         edx,ecx
 00408F28    shr         ecx,3
 00408F2B    movzx       edx,dh
 00408F2E    mov         eax,0FFFFFFFE
 00408F33    rol         eax,cl
 00408F35    and         dword ptr [edx*4+56F7F0],eax
>00408F3C    jne         00408F1E
 00408F3E    mov         eax,0FFFFFFFE
 00408F43    mov         ecx,edx
 00408F45    rol         eax,cl
 00408F47    and         dword ptr ds:[56F7EC],eax;gvar_0056F7EC
 00408F4D    ret
*}
end;

//00408F50
{*procedure sub_00408F50(?:Integer; ?:?; ?:?);
begin
 00408F50    sub         edx,0B30
 00408F56    shr         edx,8
 00408F59    sub         edx,3FF
 00408F5F    sbb         ecx,ecx
 00408F61    and         edx,ecx
 00408F63    add         edx,3FF
 00408F69    lea         ecx,[edx*8+56F870];gvar_0056F870
 00408F70    mov         edx,dword ptr [ecx+4]
 00408F73    cmp         edx,ecx
 00408F75    mov         dword ptr [eax],ecx
 00408F77    mov         dword ptr [eax+4],edx
 00408F7A    mov         dword ptr [edx],eax
 00408F7C    mov         dword ptr [ecx+4],eax
>00408F7F    je          00408F84
 00408F81    ret
 00408F82    nop
 00408F83    nop
 00408F84    sub         ecx,56F870;gvar_0056F870
 00408F8A    mov         edx,ecx
 00408F8C    shr         ecx,3
 00408F8F    movzx       edx,dh
 00408F92    mov         eax,1
 00408F97    shl         eax,cl
 00408F99    or          dword ptr [edx*4+56F7F0],eax
 00408FA0    mov         eax,1
 00408FA5    mov         ecx,edx
 00408FA7    shl         eax,cl
 00408FA9    or          dword ptr ds:[56F7EC],eax;gvar_0056F7EC
 00408FAF    ret
end;*}

//00408FB0
procedure sub_00408FB0;
begin
{*
 00408FB0    cmp         dword ptr ds:[56F7E8],0;gvar_0056F7E8
>00408FB7    jne         00408FBC
 00408FB9    ret
 00408FBA    nop
 00408FBB    nop
 00408FBC    mov         eax,[0056F7E4];0x0 gvar_0056F7E4
 00408FC1    test        byte ptr [eax-4],1
>00408FC5    jne         00408FEC
 00408FC7    or          dword ptr [eax-4],8
 00408FCB    mov         edx,dword ptr ds:[56F7E8];0x0 gvar_0056F7E8
 00408FD1    sub         eax,edx
 00408FD3    lea         ecx,[edx+3]
 00408FD6    mov         dword ptr [eax-4],ecx
 00408FD9    mov         dword ptr [edx+eax-8],edx
 00408FDD    cmp         edx,0B30
>00408FE3    jae         00408F50
 00408FE9    ret
 00408FEA    nop
 00408FEB    nop
 00408FEC    mov         edx,0FFFFFFF0
 00408FF1    and         edx,dword ptr [eax-4]
 00408FF4    cmp         edx,0B30
>00408FFA    jb          0040900E
 00408FFC    call        00408F10
 00409001    mov         eax,[0056F7E4];0x0 gvar_0056F7E4
 00409006    mov         edx,0FFFFFFF0
 0040900B    and         edx,dword ptr [eax-4]
 0040900E    mov         ecx,dword ptr ds:[56F7E8];0x0 gvar_0056F7E8
 00409014    sub         eax,ecx
 00409016    add         edx,ecx
>00409018    jmp         00408FD3
 0040901A    ret
*}
end;

//0040901C
{*function sub_0040901C(?:?):?;
begin
 0040901C    push        ebx
 0040901D    mov         ebx,eax
 0040901F    call        00408FB0
 00409024    push        4
 00409026    push        1000
 0040902B    push        13FFF0
 00409030    push        0
 00409032    call        kernel32.VirtualAlloc
 00409037    test        eax,eax
>00409039    je          00409088
 0040903B    mov         edx,dword ptr ds:[56F7D4];0x0 gvar_0056F7D4:Pointer
 00409041    mov         ecx,eax
 00409043    mov         dword ptr [ecx],56F7D0;gvar_0056F7D0
 00409049    mov         [0056F7D4],eax;gvar_0056F7D4:Pointer
 0040904E    mov         dword ptr [ecx+4],edx
 00409051    mov         dword ptr [edx],eax
 00409053    mov         edx,eax
 00409055    add         edx,13FFF0
 0040905B    mov         ecx,edx
 0040905D    sub         ecx,4
 00409060    mov         dword ptr [ecx],2
 00409066    mov         ecx,13FFE0
 0040906B    sub         ecx,ebx
 0040906D    mov         dword ptr ds:[56F7E8],ecx;gvar_0056F7E8
 00409073    sub         edx,ebx
 00409075    mov         eax,edx
 00409077    mov         [0056F7E4],eax;gvar_0056F7E4
 0040907C    or          ebx,2
 0040907F    mov         edx,eax
 00409081    sub         edx,4
 00409084    mov         dword ptr [edx],ebx
 00409086    pop         ebx
 00409087    ret
 00409088    xor         eax,eax
 0040908A    mov         [0056F7E8],eax;gvar_0056F7E8
 0040908F    xor         eax,eax
 00409091    pop         ebx
 00409092    ret
end;*}

//0040931C
{*function sub_0040931C(?:?):?;
begin
 0040931C    lea         edx,[eax+3]
 0040931F    shr         edx,3
 00409322    cmp         eax,0A2C
 00409327    push        ebx
 00409328    mov         cl,byte ptr ds:[56F04D];0x0 gvar_0056F04D
>0040932E    ja          00409504
 00409334    test        cl,cl
 00409336    movzx       eax,byte ptr [edx+56F688]
 0040933D    lea         ebx,[eax*8+56B0E4]
>00409344    jne         0040939C
 00409346    mov         edx,dword ptr [ebx+4]
 00409349    mov         eax,dword ptr [edx+8]
 0040934C    mov         ecx,0FFFFFFF8
 00409351    cmp         edx,ebx
>00409353    je          0040936C
 00409355    add         dword ptr [edx+0C],1
 00409359    and         ecx,dword ptr [eax-4]
 0040935C    mov         dword ptr [edx+8],ecx
 0040935F    mov         dword ptr [eax-4],edx
>00409362    je          0040938C
 00409364    mov         byte ptr [ebx],0
 00409367    pop         ebx
 00409368    ret
 00409369    nop
 0040936A    nop
 0040936B    nop
 0040936C    mov         edx,dword ptr [ebx+10]
 0040936F    movzx       ecx,word ptr [ebx+2]
 00409373    add         ecx,eax
 00409375    cmp         eax,dword ptr [ebx+0C]
>00409378    ja          004093E8
 0040937A    add         dword ptr [edx+0C],1
 0040937E    mov         dword ptr [ebx+8],ecx
 00409381    mov         byte ptr [ebx],0
 00409384    mov         dword ptr [eax-4],edx
 00409387    pop         ebx
 00409388    ret
 00409389    nop
 0040938A    nop
 0040938B    nop
 0040938C    mov         ecx,dword ptr [edx+4]
 0040938F    mov         dword ptr [ecx+14],ebx
 00409392    mov         dword ptr [ebx+4],ecx
 00409395    mov         byte ptr [ebx],0
 00409398    pop         ebx
 00409399    ret
 0040939A    nop
 0040939B    nop
 0040939C    mov         eax,100
 004093A1    lock cmpxchgbyte ptr [ebx],ah
>004093A5    je          00409346
 004093A7    add         ebx,20
 004093AA    mov         eax,100
 004093AF    lock cmpxchgbyte ptr [ebx],ah
>004093B3    je          00409346
 004093B5    add         ebx,20
 004093B8    mov         eax,100
 004093BD    lock cmpxchgbyte ptr [ebx],ah
>004093C1    je          00409346
 004093C3    sub         ebx,40
 004093C6    push        0
 004093C8    call        kernel32.Sleep
 004093CD    mov         eax,100
 004093D2    lock cmpxchgbyte ptr [ebx],ah
>004093D6    je          00409346
 004093DC    push        0A
 004093DE    call        kernel32.Sleep
>004093E3    jmp         0040939C
 004093E5    nop
 004093E6    nop
 004093E7    nop
 004093E8    push        esi
 004093E9    push        edi
 004093EA    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>004093F1    je          004093F8
 004093F3    call        00408ED8
 004093F8    movsx       esi,byte ptr [ebx+1]
 004093FC    and         esi,dword ptr ds:[56F7EC];0x0 gvar_0056F7EC
>00409402    je          00409474
 00409404    bsf         eax,esi
 00409407    lea         esi,[eax*8+0]
 0040940E    mov         ecx,dword ptr [eax*4+56F7F0]
 00409415    bsf         ecx,ecx
 00409418    lea         ecx,[ecx+esi*4]
 0040941B    lea         edi,[ecx*8+56F870];gvar_0056F870
 00409422    mov         esi,dword ptr [edi+4]
 00409425    mov         edx,dword ptr [esi+4]
 00409428    mov         dword ptr [edi+4],edx
 0040942B    mov         dword ptr [edx],edi
 0040942D    cmp         edi,edx
>0040942F    jne         00409448
 00409431    mov         edx,0FFFFFFFE
 00409436    rol         edx,cl
 00409438    and         dword ptr [eax*4+56F7F0],edx
>0040943F    jne         00409448
 00409441    btr         dword ptr ds:[56F7EC],eax;gvar_0056F7EC
 00409448    mov         edi,0FFFFFFF0
 0040944D    and         edi,dword ptr [esi-4]
 00409450    cmp         edi,10A60
>00409456    jb          004094C4
 00409458    mov         edx,edi
 0040945A    movzx       edi,word ptr [ebx+1A]
 0040945E    sub         edx,edi
 00409460    lea         eax,[edi+esi]
 00409463    lea         ecx,[edx+3]
 00409466    mov         dword ptr [eax-4],ecx
 00409469    mov         dword ptr [edx+eax-8],edx
 0040946D    call        00408F50
>00409472    jmp         004094C9
 00409474    movzx       ecx,word ptr [ebx+18]
 00409478    mov         edi,dword ptr ds:[56F7E8];0x0 gvar_0056F7E8
 0040947E    cmp         edi,ecx
>00409480    jb          004094A8
 00409482    mov         esi,dword ptr ds:[56F7E4];0x0 gvar_0056F7E4
 00409488    movzx       ecx,word ptr [ebx+1A]
 0040948C    lea         edx,[ecx+0B30]
 00409492    cmp         edi,edx
>00409494    jb          00409498
 00409496    mov         edi,ecx
 00409498    sub         esi,edi
 0040949A    sub         dword ptr ds:[56F7E8],edi;gvar_0056F7E8
 004094A0    mov         dword ptr ds:[56F7E4],esi;gvar_0056F7E4
>004094A6    jmp         004094C9
 004094A8    movzx       eax,word ptr [ebx+1A]
 004094AC    mov         edi,eax
 004094AE    call        0040901C
 004094B3    mov         esi,eax
 004094B5    test        eax,eax
>004094B7    jne         004094C9
 004094B9    mov         [0056F7E0],al;gvar_0056F7E0
 004094BE    mov         byte ptr [ebx],al
 004094C0    pop         edi
 004094C1    pop         esi
 004094C2    pop         ebx
 004094C3    ret
 004094C4    and         byte ptr [edi+esi-4],0F7
 004094C9    lea         ecx,[edi+6]
 004094CC    mov         dword ptr [esi-4],ecx
 004094CF    xor         eax,eax
 004094D1    mov         [0056F7E0],al;gvar_0056F7E0
 004094D6    mov         dword ptr [esi],ebx
 004094D8    mov         dword ptr [esi+8],eax
 004094DB    mov         dword ptr [esi+0C],1
 004094E2    mov         dword ptr [ebx+10],esi
 004094E5    lea         eax,[esi+20]
 004094E8    movzx       ecx,word ptr [ebx+2]
 004094EC    lea         edx,[ecx+eax]
 004094EF    mov         dword ptr [ebx+8],edx
 004094F2    add         edi,esi
 004094F4    sub         edi,ecx
 004094F6    mov         dword ptr [ebx+0C],edi
 004094F9    mov         byte ptr [ebx],0
 004094FC    mov         dword ptr [eax-4],esi
 004094FF    pop         edi
 00409500    pop         esi
 00409501    pop         ebx
 00409502    ret
 00409503    nop
 00409504    cmp         eax,40A2C
>00409509    ja          00409620
 0040950F    lea         ebx,[eax+0D3]
 00409515    and         ebx,0FFFFFF00
 0040951B    add         ebx,30
 0040951E    test        cl,cl
>00409520    je          00409527
 00409522    call        00408ED8
 00409527    lea         edx,[ebx-0B30]
 0040952D    mov         ecx,edx
 0040952F    shr         edx,0D
 00409532    shr         ecx,8
 00409535    mov         eax,0FFFFFFFF
 0040953A    shl         eax,cl
 0040953C    and         eax,dword ptr [edx*4+56F7F0]
>00409543    je          00409550
 00409545    and         ecx,0FFFFFFE0
 00409548    bsf         eax,eax
 0040954B    or          ecx,eax
>0040954D    jmp         004095AC
 0040954F    nop
 00409550    mov         eax,0FFFFFFFE
 00409555    mov         ecx,edx
 00409557    shl         eax,cl
 00409559    and         eax,dword ptr ds:[56F7EC];0x0 gvar_0056F7EC
>0040955F    je          00409578
 00409561    bsf         edx,eax
 00409564    mov         eax,dword ptr [edx*4+56F7F0]
 0040956B    bsf         ecx,eax
 0040956E    mov         eax,edx
 00409570    shl         eax,5
 00409573    or          ecx,eax
>00409575    jmp         004095AC
 00409577    nop
 00409578    mov         ecx,dword ptr ds:[56F7E8];0x0 gvar_0056F7E8
 0040957E    sub         ecx,ebx
>00409580    jb          0040959C
 00409582    mov         eax,[0056F7E4];0x0 gvar_0056F7E4
 00409587    sub         eax,ebx
 00409589    mov         [0056F7E4],eax;gvar_0056F7E4
 0040958E    mov         dword ptr ds:[56F7E8],ecx;gvar_0056F7E8
 00409594    or          ebx,2
 00409597    mov         dword ptr [eax-4],ebx
>0040959A    jmp         004095A3
 0040959C    mov         eax,ebx
 0040959E    call        0040901C
 004095A3    mov         byte ptr ds:[56F7E0],0;gvar_0056F7E0
 004095AA    pop         ebx
 004095AB    ret
 004095AC    push        esi
 004095AD    push        edi
 004095AE    lea         edi,[ecx*8+56F870];gvar_0056F870
 004095B5    mov         esi,dword ptr [edi+4]
 004095B8    mov         eax,dword ptr [esi+4]
 004095BB    mov         dword ptr [edi+4],eax
 004095BE    mov         dword ptr [eax],edi
 004095C0    cmp         edi,eax
>004095C2    jne         004095DB
 004095C4    mov         eax,0FFFFFFFE
 004095C9    rol         eax,cl
 004095CB    and         dword ptr [edx*4+56F7F0],eax
>004095D2    jne         004095DB
 004095D4    btr         dword ptr ds:[56F7EC],edx;gvar_0056F7EC
 004095DB    mov         edi,0FFFFFFF0
 004095E0    and         edi,dword ptr [esi-4]
 004095E3    mov         edx,edi
 004095E5    sub         edx,ebx
>004095E7    je          00409608
 004095E9    lea         eax,[ebx+esi]
 004095EC    lea         ecx,[edx+3]
 004095EF    mov         dword ptr [eax-4],ecx
 004095F2    mov         dword ptr [edx+eax-8],edx
 004095F6    cmp         edx,0B30
>004095FC    jb          0040960D
 004095FE    call        00408F50
>00409603    jmp         0040960D
 00409605    nop
 00409606    nop
 00409607    nop
 00409608    and         byte ptr [edi+esi-4],0F7
 0040960D    lea         ecx,[ebx+2]
 00409610    mov         dword ptr [esi-4],ecx
 00409613    mov         byte ptr ds:[56F7E0],0;gvar_0056F7E0
 0040961A    mov         eax,esi
 0040961C    pop         edi
 0040961D    pop         esi
 0040961E    pop         ebx
 0040961F    ret
 00409620    pop         ebx
 00409621    test        eax,eax
>00409623    jns         004090D4
 00409629    xor         eax,eax
 0040962B    ret
end;*}

//0040962C
{*function sub_0040962C(?:?):?;
begin
 0040962C    mov         edx,dword ptr [eax-4]
 0040962F    test        dl,7
 00409632    mov         ecx,eax
 00409634    push        ebx
 00409635    mov         bl,byte ptr ds:[56F04D];0x0 gvar_0056F04D
>0040963B    jne         004096DC
 00409641    test        bl,bl
 00409643    mov         ebx,dword ptr [edx]
>00409645    jne         004096A8
 00409647    sub         dword ptr [edx+0C],1
 0040964B    mov         eax,dword ptr [edx+8]
>0040964E    je          0040967C
 00409650    test        eax,eax
 00409652    mov         dword ptr [edx+8],ecx
 00409655    lea         eax,[eax+1]
 00409658    mov         dword ptr [ecx-4],eax
>0040965B    je          00409664
 0040965D    xor         eax,eax
 0040965F    mov         byte ptr [ebx],al
 00409661    pop         ebx
 00409662    ret
 00409663    nop
 00409664    mov         ecx,dword ptr [ebx+4]
 00409667    mov         dword ptr [edx+14],ebx
 0040966A    mov         dword ptr [edx+4],ecx
 0040966D    mov         dword ptr [ecx+14],edx
 00409670    mov         dword ptr [ebx+4],edx
 00409673    mov         byte ptr [ebx],0
 00409676    xor         eax,eax
 00409678    pop         ebx
 00409679    ret
 0040967A    nop
 0040967B    nop
 0040967C    test        eax,eax
>0040967E    je          00409693
 00409680    mov         eax,dword ptr [edx+14]
 00409683    mov         ecx,dword ptr [edx+4]
 00409686    mov         dword ptr [eax+4],ecx
 00409689    mov         dword ptr [ecx+14],eax
 0040968C    xor         eax,eax
 0040968E    cmp         dword ptr [ebx+10],edx
>00409691    jne         00409696
 00409693    mov         dword ptr [ebx+0C],eax
 00409696    mov         byte ptr [ebx],al
 00409698    mov         eax,edx
 0040969A    mov         edx,dword ptr [edx-4]
 0040969D    mov         bl,byte ptr ds:[56F04D];0x0 gvar_0056F04D
>004096A3    jmp         004096E5
 004096A5    nop
 004096A6    nop
 004096A7    nop
 004096A8    mov         eax,100
 004096AD    lock cmpxchgbyte ptr [ebx],ah
>004096B1    je          00409647
 004096B3    push        ecx
 004096B4    push        edx
 004096B5    push        0
 004096B7    call        kernel32.Sleep
 004096BC    pop         edx
 004096BD    pop         ecx
 004096BE    mov         eax,100
 004096C3    lock cmpxchgbyte ptr [ebx],ah
>004096C7    je          00409647
 004096CD    push        ecx
 004096CE    push        edx
 004096CF    push        0A
 004096D1    call        kernel32.Sleep
 004096D6    pop         edx
 004096D7    pop         ecx
>004096D8    jmp         004096A8
 004096DA    nop
 004096DB    nop
 004096DC    test        dl,5
>004096DF    jne         004097D0
 004096E5    and         edx,0FFFFFFF0
 004096E8    test        bl,bl
 004096EA    mov         ebx,edx
 004096EC    push        esi
 004096ED    mov         esi,eax
>004096EF    je          004096F6
 004096F1    call        00408ED8
 004096F6    test        dword ptr [ebx+esi-4],1
 004096FE    mov         ecx,dword ptr [ebx+esi-4]
>00409702    jne         00409738
 00409704    or          ecx,8
 00409707    mov         dword ptr [ebx+esi-4],ecx
 0040970B    test        byte ptr [esi-4],8
>0040970F    jne         00409750
 00409711    cmp         ebx,13FFE0
>00409717    je          00409768
 00409719    lea         eax,[ebx+3]
 0040971C    mov         dword ptr [esi-4],eax
 0040971F    mov         dword ptr [ebx+esi-8],ebx
 00409723    mov         eax,esi
 00409725    mov         edx,ebx
 00409727    call        00408F50
 0040972C    mov         byte ptr ds:[56F7E0],0;gvar_0056F7E0
 00409733    xor         eax,eax
 00409735    pop         esi
 00409736    pop         ebx
 00409737    ret
 00409738    lea         eax,[ebx+esi]
 0040973B    and         ecx,0FFFFFFF0
 0040973E    add         ebx,ecx
 00409740    cmp         ecx,0B30
>00409746    jb          0040970B
 00409748    call        00408F10
>0040974D    jmp         0040970B
 0040974F    nop
 00409750    mov         ecx,dword ptr [esi-8]
 00409753    sub         esi,ecx
 00409755    add         ebx,ecx
 00409757    cmp         ecx,0B30
>0040975D    jb          00409711
 0040975F    mov         eax,esi
 00409761    call        00408F10
>00409766    jmp         00409711
 00409768    cmp         dword ptr ds:[56F7E8],13FFE0;gvar_0056F7E8
>00409772    jne         004097A0
 00409774    sub         esi,10
 00409777    mov         eax,dword ptr [esi]
 00409779    mov         edx,dword ptr [esi+4]
 0040977C    mov         dword ptr [eax+4],edx
 0040977F    mov         dword ptr [edx],eax
 00409781    mov         byte ptr ds:[56F7E0],0;gvar_0056F7E0
 00409788    push        8000
 0040978D    push        0
 0040978F    push        esi
 00409790    call        kernel32.VirtualFree
 00409795    cmp         eax,1
 00409798    sbb         eax,eax
 0040979A    pop         esi
 0040979B    pop         ebx
 0040979C    ret
 0040979D    nop
 0040979E    nop
 0040979F    nop
 004097A0    lea         ebx,[esi+13FFE0]
 004097A6    call        00408FB0
 004097AB    mov         dword ptr [ebx-4],2
 004097B2    mov         dword ptr ds:[56F7E8],13FFE0;gvar_0056F7E8
 004097BC    mov         dword ptr ds:[56F7E4],ebx;gvar_0056F7E4
 004097C2    mov         byte ptr ds:[56F7E0],0;gvar_0056F7E0
 004097C9    xor         eax,eax
 004097CB    pop         esi
 004097CC    pop         ebx
 004097CD    ret
 004097CE    nop
 004097CF    nop
 004097D0    pop         ebx
 004097D1    test        dl,3
>004097D4    je          00409138
 004097DA    mov         eax,0FFFFFFFF
 004097DF    ret
end;*}

//00409C24
{*function sub_00409C24(?:?; ?:?; ?:?):?;
begin
 00409C24    push        ebx
 00409C25    push        esi
 00409C26    push        edi
 00409C27    push        ecx
 00409C28    mov         byte ptr [esp],0
 00409C2C    mov         esi,dword ptr [eax]
 00409C2E    test        esi,esi
>00409C30    je          00409CDC
 00409C36    mov         ebx,dword ptr [esi+10]
 00409C39    cmp         ebx,dword ptr [edx+10]
>00409C3C    jle         00409C45
 00409C3E    mov         esi,dword ptr [esi]
>00409C40    jmp         00409CDC
 00409C45    mov         ebx,dword ptr [esi+8]
 00409C48    cmp         ebx,dword ptr [edx+8]
>00409C4B    jne         00409CCB
 00409C4D    mov         ebx,dword ptr [esi+0C]
 00409C50    cmp         ebx,dword ptr [edx+0C]
>00409C53    jne         00409CCB
 00409C55    mov         ebx,dword ptr [esi+10]
 00409C58    cmp         ebx,dword ptr [edx+10]
>00409C5B    je          00409C78
 00409C5D    test        cl,cl
>00409C5F    jne         00409CCB
 00409C61    mov         ebx,dword ptr [esi+10]
 00409C64    cmp         ebx,dword ptr [edx+10]
>00409C67    jge         00409CCB
 00409C69    mov         edi,dword ptr [esi+4]
 00409C6C    test        edi,edi
>00409C6E    je          00409C78
 00409C70    mov         ebx,dword ptr [edi+10]
 00409C73    cmp         ebx,dword ptr [edx+10]
>00409C76    jle         00409CCB
 00409C78    mov         ebx,dword ptr [esi+14]
 00409C7B    mov         ecx,dword ptr [edx+14]
 00409C7E    add         ebx,ecx
 00409C80    test        ebx,ebx
>00409C82    jl          00409D57
 00409C88    add         dword ptr [esi+14],ecx
 00409C8B    cmp         dword ptr [esi+14],0
>00409C8F    jne         00409CC2
 00409C91    mov         edx,dword ptr [esi+4]
 00409C94    test        edx,edx
>00409C96    je          00409C9C
 00409C98    mov         ecx,dword ptr [esi]
 00409C9A    mov         dword ptr [edx],ecx
 00409C9C    mov         edx,dword ptr [esi]
 00409C9E    test        edx,edx
>00409CA0    je          00409CAA
 00409CA2    mov         eax,dword ptr [esi+4]
 00409CA5    mov         dword ptr [edx+4],eax
>00409CA8    jmp         00409CAF
 00409CAA    mov         edx,dword ptr [esi+4]
 00409CAD    mov         dword ptr [eax],edx
 00409CAF    mov         eax,[00571884];0x0 gvar_00571884
 00409CB4    mov         eax,dword ptr [eax+4]
 00409CB7    mov         dword ptr [esi+4],eax
 00409CBA    mov         eax,[00571884];0x0 gvar_00571884
 00409CBF    mov         dword ptr [eax+4],esi
 00409CC2    mov         byte ptr [esp],1
>00409CC6    jmp         00409D57
 00409CCB    mov         ebx,dword ptr [esi+4]
 00409CCE    test        ebx,ebx
>00409CD0    je          00409CDC
 00409CD2    mov         esi,ebx
 00409CD4    test        esi,esi
>00409CD6    jne         00409C36
 00409CDC    cmp         dword ptr [edx+14],0
>00409CE0    jle         00409D57
 00409CE2    mov         ecx,dword ptr ds:[571884];0x0 gvar_00571884
 00409CE8    mov         ebx,dword ptr [ecx+4]
 00409CEB    test        ebx,ebx
>00409CED    je          00409CFD
 00409CEF    mov         ecx,dword ptr [ebx+4]
 00409CF2    mov         edi,dword ptr ds:[571884];0x0 gvar_00571884
 00409CF8    mov         dword ptr [edi+4],ecx
>00409CFB    jmp         00409D22
 00409CFD    mov         ecx,dword ptr ds:[571884];0x0 gvar_00571884
 00409D03    mov         ecx,dword ptr [ecx]
 00409D05    cmp         ecx,0AA9
>00409D0B    jge         00409D57
 00409D0D    lea         ecx,[ecx+ecx*2]
 00409D10    mov         ebx,dword ptr ds:[571884];0x0 gvar_00571884
 00409D16    lea         ebx,[ebx+ecx*8+14]
 00409D1A    mov         ecx,dword ptr ds:[571884];0x0 gvar_00571884
 00409D20    inc         dword ptr [ecx]
 00409D22    push        esi
 00409D23    mov         edi,ebx
 00409D25    mov         esi,edx
 00409D27    mov         ecx,6
 00409D2C    rep movs    dword ptr [edi],dword ptr [esi]
 00409D2E    pop         esi
 00409D2F    mov         dword ptr [ebx],esi
 00409D31    test        esi,esi
>00409D33    je          00409D46
 00409D35    mov         eax,dword ptr [esi+4]
 00409D38    mov         dword ptr [ebx+4],eax
 00409D3B    test        eax,eax
>00409D3D    je          00409D41
 00409D3F    mov         dword ptr [eax],ebx
 00409D41    mov         dword ptr [esi+4],ebx
>00409D44    jmp         00409D53
 00409D46    mov         edx,dword ptr [eax]
 00409D48    mov         dword ptr [ebx+4],edx
 00409D4B    test        edx,edx
>00409D4D    je          00409D51
 00409D4F    mov         dword ptr [edx],ebx
 00409D51    mov         dword ptr [eax],ebx
 00409D53    mov         byte ptr [esp],1
 00409D57    mov         al,byte ptr [esp]
 00409D5A    pop         edx
 00409D5B    pop         edi
 00409D5C    pop         esi
 00409D5D    pop         ebx
 00409D5E    ret
end;*}

//00409D60
{*function sub_00409D60(?:?; ?:?):?;
begin
 00409D60    push        esi
 00409D61    push        edi
 00409D62    mov         ecx,eax
 00409D64    cmp         dword ptr [ecx],0FF
>00409D6A    jle         00409D71
 00409D6C    xor         eax,eax
 00409D6E    pop         edi
 00409D6F    pop         esi
 00409D70    ret
 00409D71    mov         esi,1
 00409D76    mov         ecx,dword ptr [ecx+4]
 00409D79    lea         edi,[ecx+1]
 00409D7C    imul        edi,esi
 00409D7F    add         edi,8
 00409D82    test        ecx,ecx
>00409D84    jle         00409D8A
 00409D86    cmp         edx,edi
>00409D88    jge         00409D8F
 00409D8A    xor         eax,eax
 00409D8C    pop         edi
 00409D8D    pop         esi
 00409D8E    ret
 00409D8F    dec         esi
>00409D90    jne         00409DB8
 00409D92    mov         edx,eax
 00409D94    add         edx,8
 00409D97    mov         eax,ecx
 00409D99    test        eax,eax
>00409D9B    jle         00409DAB
 00409D9D    cmp         byte ptr [edx],9
>00409DA0    jae         00409DA7
 00409DA2    xor         eax,eax
 00409DA4    pop         edi
 00409DA5    pop         esi
 00409DA6    ret
 00409DA7    inc         edx
 00409DA8    dec         eax
>00409DA9    jne         00409D9D
 00409DAB    cmp         byte ptr [edx],0
>00409DAE    jne         00409DB4
 00409DB0    mov         al,1
>00409DB2    jmp         00409DE0
 00409DB4    xor         eax,eax
>00409DB6    jmp         00409DE0
 00409DB8    mov         edx,eax
 00409DBA    add         edx,8
 00409DBD    mov         eax,ecx
 00409DBF    test        eax,eax
>00409DC1    jle         00409DD4
 00409DC3    cmp         word ptr [edx],9
>00409DC7    jae         00409DCE
 00409DC9    xor         eax,eax
 00409DCB    pop         edi
 00409DCC    pop         esi
 00409DCD    ret
 00409DCE    add         edx,2
 00409DD1    dec         eax
>00409DD2    jne         00409DC3
 00409DD4    cmp         word ptr [edx],0
>00409DD8    jne         00409DDE
 00409DDA    mov         al,2
>00409DDC    jmp         00409DE0
 00409DDE    xor         eax,eax
 00409DE0    pop         edi
 00409DE1    pop         esi
 00409DE2    ret
end;*}

//00409DE4
{*function sub_00409DE4(?:?; ?:?):?;
begin
 00409DE4    push        ebp
 00409DE5    mov         ebp,esp
 00409DE7    add         esp,0FFFFFFE8
 00409DEA    push        ebx
 00409DEB    push        esi
 00409DEC    push        edi
 00409DED    mov         edi,edx
 00409DEF    mov         esi,eax
 00409DF1    xor         ebx,ebx
 00409DF3    cmp         dword ptr ds:[571884],0;gvar_00571884
>00409DFA    je          00409E6E
 00409DFC    mov         dword ptr [ebp-10],esi
 00409DFF    xor         eax,eax
 00409E01    mov         dword ptr [ebp-0C],eax
 00409E04    xor         eax,eax
 00409E06    mov         dword ptr [ebp-8],eax
 00409E09    mov         dword ptr [ebp-4],0FFFFFFFF
 00409E10    lea         edx,[ebp-18]
 00409E13    mov         eax,[00571884];0x0 gvar_00571884
 00409E18    add         eax,8
 00409E1B    xor         ecx,ecx
 00409E1D    call        00409C24
 00409E22    test        al,al
>00409E24    je          00409E2A
 00409E26    mov         bl,1
>00409E28    jmp         00409E6E
 00409E2A    xor         eax,eax
 00409E2C    mov         dword ptr [ebp-10],eax
 00409E2F    mov         eax,dword ptr [esi]
 00409E31    mov         dword ptr [ebp-0C],eax
 00409E34    mov         dword ptr [ebp-8],edi
 00409E37    lea         edx,[ebp-18]
 00409E3A    mov         eax,[00571884];0x0 gvar_00571884
 00409E3F    add         eax,0C
 00409E42    xor         ecx,ecx
 00409E44    call        00409C24
 00409E49    test        al,al
>00409E4B    je          00409E51
 00409E4D    mov         bl,2
>00409E4F    jmp         00409E6E
 00409E51    xor         eax,eax
 00409E53    mov         dword ptr [ebp-0C],eax
 00409E56    lea         edx,[ebp-18]
 00409E59    mov         eax,[00571884];0x0 gvar_00571884
 00409E5E    add         eax,10
 00409E61    xor         ecx,ecx
 00409E63    call        00409C24
 00409E68    test        al,al
>00409E6A    je          00409E6E
 00409E6C    mov         bl,3
 00409E6E    mov         eax,ebx
 00409E70    pop         edi
 00409E71    pop         esi
 00409E72    pop         ebx
 00409E73    mov         esp,ebp
 00409E75    pop         ebp
 00409E76    ret
end;*}

//00409E78
{*function sub_00409E78(?:?; ?:?):?;
begin
 00409E78    push        ebp
 00409E79    mov         ebp,esp
 00409E7B    add         esp,0FFFFFFF0
 00409E7E    push        ebx
 00409E7F    push        esi
 00409E80    push        edi
 00409E81    mov         esi,eax
 00409E83    mov         eax,dword ptr [esi]
 00409E85    movzx       eax,word ptr [eax+2]
 00409E89    sub         eax,4
 00409E8C    mov         dword ptr [ebp-10],eax
 00409E8F    mov         eax,dword ptr [esi]
 00409E91    sub         eax,56B0E4
 00409E97    shr         eax,5
 00409E9A    shl         eax,8
 00409E9D    mov         edx,dword ptr [ebp+8]
 00409EA0    lea         eax,[edx+eax*8-1B800]
 00409EA7    mov         dword ptr [ebp-0C],eax
 00409EAA    lea         ecx,[ebp-8]
 00409EAD    lea         edx,[ebp-4]
 00409EB0    mov         eax,esi
 00409EB2    call        00408E38
>00409EB7    jmp         00409F6C
 00409EBC    sub         eax,4
 00409EBF    test        byte ptr [eax],1
>00409EC2    jne         00409F63
 00409EC8    mov         edx,dword ptr [ebp-10]
 00409ECB    mov         eax,dword ptr [ebp-4]
 00409ECE    call        00409DE4
 00409ED3    mov         edx,dword ptr [ebp+8]
 00409ED6    cmp         byte ptr [edx-1B801],0
>00409EDD    je          00409EE3
 00409EDF    test        al,al
>00409EE1    jne         00409EE7
 00409EE3    xor         edx,edx
>00409EE5    jmp         00409EE9
 00409EE7    mov         dl,1
 00409EE9    mov         ecx,dword ptr [ebp+8]
 00409EEC    mov         byte ptr [ecx-1B801],dl
 00409EF2    cmp         al,1
>00409EF4    je          00409F63
 00409EF6    mov         edi,dword ptr [ebp-4]
 00409EF9    xor         ebx,ebx
 00409EFB    mov         eax,edi
 00409EFD    call        00408E10
 00409F02    test        eax,eax
>00409F04    jne         00409F2E
 00409F06    mov         eax,dword ptr [esi]
 00409F08    movzx       edx,word ptr [eax+2]
 00409F0C    sub         edx,4
 00409F0F    mov         eax,edi
 00409F11    call        00409D60
 00409F16    dec         al
>00409F18    je          00409F20
 00409F1A    dec         al
>00409F1C    je          00409F27
>00409F1E    jmp         00409F5C
 00409F20    mov         ebx,1
>00409F25    jmp         00409F5C
 00409F27    mov         ebx,2
>00409F2C    jmp         00409F5C
 00409F2E    mov         ebx,3
 00409F33    mov         edx,dword ptr [ebp-0C]
 00409F36    mov         edx,dword ptr [edx+ebx*8]
 00409F39    cmp         eax,edx
>00409F3B    je          00409F4A
 00409F3D    test        edx,edx
>00409F3F    je          00409F4A
 00409F41    inc         ebx
 00409F42    cmp         ebx,0FF
>00409F48    jle         00409F33
 00409F4A    cmp         ebx,0FF
>00409F50    jg          00409F5A
 00409F52    mov         edx,dword ptr [ebp-0C]
 00409F55    mov         dword ptr [edx+ebx*8],eax
>00409F58    jmp         00409F5C
 00409F5A    xor         ebx,ebx
 00409F5C    mov         eax,dword ptr [ebp-0C]
 00409F5F    inc         dword ptr [eax+ebx*8+4]
 00409F63    mov         eax,dword ptr [esi]
 00409F65    movzx       eax,word ptr [eax+2]
 00409F69    add         dword ptr [ebp-4],eax
 00409F6C    mov         eax,dword ptr [ebp-4]
 00409F6F    cmp         eax,dword ptr [ebp-8]
>00409F72    jbe         00409EBC
 00409F78    pop         edi
 00409F79    pop         esi
 00409F7A    pop         ebx
 00409F7B    mov         esp,ebp
 00409F7D    pop         ebp
 00409F7E    ret
end;*}

//00409F80
procedure sub_00409F80;
begin
{*
 00409F80    push        ebp
 00409F81    mov         ebp,esp
 00409F83    push        eax
 00409F84    mov         eax,27
 00409F89    add         esp,0FFFFF004
 00409F8F    push        eax
 00409F90    dec         eax
>00409F91    jne         00409F89
 00409F93    mov         eax,dword ptr [ebp-4]
 00409F96    add         esp,0FFFFF3E0
 00409F9C    push        ebx
 00409F9D    push        esi
 00409F9E    push        edi
 00409F9F    mov         ebx,eax
 00409FA1    lea         eax,[ebp-1B800]
 00409FA7    xor         ecx,ecx
 00409FA9    mov         edx,1B800
 00409FAE    call        @FillChar
 00409FB3    lea         eax,[ebp-1F824]
 00409FB9    xor         ecx,ecx
 00409FBB    mov         edx,4000
 00409FC0    call        @FillChar
 00409FC5    xor         eax,eax
 00409FC7    mov         dword ptr [ebp-1B808],eax
 00409FCD    mov         byte ptr [ebp-1B801],1
 00409FD4    mov         edi,dword ptr ds:[56F7D4];0x0 gvar_0056F7D4:Pointer
>00409FDA    jmp         0040A07D
 00409FDF    mov         eax,edi
 00409FE1    call        00408E98
 00409FE6    mov         esi,eax
 00409FE8    test        esi,esi
>00409FEA    je          0040A07A
 00409FF0    mov         eax,esi
 00409FF2    sub         eax,4
 00409FF5    mov         eax,dword ptr [eax]
 00409FF7    test        al,1
>00409FF9    jne         0040A069
 00409FFB    test        bl,bl
>00409FFD    je          0040A069
 00409FFF    test        al,4
>0040A001    je          0040A00E
 0040A003    push        ebp
 0040A004    mov         eax,esi
 0040A006    call        00409E78
 0040A00B    pop         ecx
>0040A00C    jmp         0040A069
 0040A00E    cmp         dword ptr [ebp-1B808],1000
>0040A018    jge         0040A069
 0040A01A    and         eax,0FFFFFFF0
 0040A01D    sub         eax,4
 0040A020    mov         dword ptr [ebp-1B814],eax
 0040A026    mov         edx,dword ptr [ebp-1B814]
 0040A02C    mov         eax,esi
 0040A02E    call        00409DE4
 0040A033    cmp         byte ptr [ebp-1B801],0
>0040A03A    je          0040A040
 0040A03C    test        al,al
>0040A03E    jne         0040A044
 0040A040    xor         edx,edx
>0040A042    jmp         0040A046
 0040A044    mov         dl,1
 0040A046    mov         byte ptr [ebp-1B801],dl
 0040A04C    cmp         al,1
>0040A04E    je          0040A069
 0040A050    mov         eax,dword ptr [ebp-1B808]
 0040A056    mov         edx,dword ptr [ebp-1B814]
 0040A05C    mov         dword ptr [ebp+eax*4-1F824],edx
 0040A063    inc         dword ptr [ebp-1B808]
 0040A069    mov         eax,esi
 0040A06B    call        00408E74
 0040A070    mov         esi,eax
 0040A072    test        esi,esi
>0040A074    jne         00409FF0
 0040A07A    mov         edi,dword ptr [edi+4]
 0040A07D    cmp         edi,56F7D0;gvar_0056F7D0
>0040A083    jne         00409FDF
 0040A089    test        bl,bl
>0040A08B    je          0040A331
 0040A091    mov         ebx,dword ptr ds:[571878];0x0 gvar_00571878
>0040A097    jmp         0040A0F0
 0040A099    cmp         dword ptr [ebp-1B808],1000
>0040A0A3    jge         0040A0ED
 0040A0A5    mov         esi,dword ptr [ebx+0C]
 0040A0A8    and         esi,0FFFFFFF0
 0040A0AB    sub         esi,4
 0040A0AE    sub         esi,10
 0040A0B1    mov         eax,ebx
 0040A0B3    add         eax,10
 0040A0B6    mov         edx,esi
 0040A0B8    call        00409DE4
 0040A0BD    cmp         byte ptr [ebp-1B801],0
>0040A0C4    je          0040A0CA
 0040A0C6    test        al,al
>0040A0C8    jne         0040A0CE
 0040A0CA    xor         edx,edx
>0040A0CC    jmp         0040A0D0
 0040A0CE    mov         dl,1
 0040A0D0    mov         byte ptr [ebp-1B801],dl
 0040A0D6    cmp         al,1
>0040A0D8    je          0040A0ED
 0040A0DA    mov         eax,dword ptr [ebp-1B808]
 0040A0E0    mov         dword ptr [ebp+eax*4-1F824],esi
 0040A0E7    inc         dword ptr [ebp-1B808]
 0040A0ED    mov         ebx,dword ptr [ebx+4]
 0040A0F0    cmp         ebx,571874;gvar_00571874
>0040A0F6    jne         0040A099
 0040A0F8    cmp         byte ptr [ebp-1B801],0
>0040A0FF    jne         0040A331
 0040A105    mov         byte ptr [ebp-1B809],0
 0040A10C    xor         eax,eax
 0040A10E    mov         dword ptr [ebp-1B818],eax
 0040A114    lea         edx,[ebp-27824]
 0040A11A    mov         eax,40A338
 0040A11F    mov         ecx,24
 0040A124    call        00408CA0
 0040A129    mov         dword ptr [ebp-1B810],37
 0040A133    mov         dword ptr [ebp-1B820],56B0E6
 0040A13D    lea         edx,[ebp-1B004]
 0040A143    mov         dword ptr [ebp-1B824],edx
 0040A149    mov         edx,dword ptr [ebp-1B820]
 0040A14F    movzx       edx,word ptr [edx]
 0040A152    sub         edx,4
 0040A155    mov         dword ptr [ebp-1B81C],edx
 0040A15B    mov         byte ptr [ebp-1B80A],0
 0040A162    mov         esi,0FF
 0040A167    mov         edx,dword ptr [ebp-1B824]
 0040A16D    mov         ebx,edx
 0040A16F    lea         edx,[ebp-20025]
 0040A175    cmp         eax,edx
>0040A177    ja          0040A26C
 0040A17D    cmp         dword ptr [ebx],0
>0040A180    jbe         0040A25F
 0040A186    cmp         byte ptr [ebp-1B809],0
>0040A18D    jne         0040A1A6
 0040A18F    mov         edx,40A360
 0040A194    mov         ecx,4D
 0040A199    xchg        eax,edx
 0040A19A    call        00408CA0
 0040A19F    mov         byte ptr [ebp-1B809],1
 0040A1A6    cmp         byte ptr [ebp-1B80A],0
>0040A1AD    jne         0040A1F6
 0040A1AF    mov         byte ptr [eax],0D
 0040A1B2    inc         eax
 0040A1B3    mov         byte ptr [eax],0A
 0040A1B6    inc         eax
 0040A1B7    mov         edx,dword ptr [ebp-1B818]
 0040A1BD    inc         edx
 0040A1BE    xchg        eax,edx
 0040A1BF    call        00408B84
 0040A1C4    mov         byte ptr [eax],20
 0040A1C7    inc         eax
 0040A1C8    mov         byte ptr [eax],2D
 0040A1CB    inc         eax
 0040A1CC    mov         byte ptr [eax],20
 0040A1CF    inc         eax
 0040A1D0    mov         edx,eax
 0040A1D2    mov         eax,dword ptr [ebp-1B81C]
 0040A1D8    call        00408B84
 0040A1DD    mov         edx,40A3B0
 0040A1E2    mov         ecx,8
 0040A1E7    xchg        eax,edx
 0040A1E8    call        00408CA0
 0040A1ED    mov         byte ptr [ebp-1B80A],1
>0040A1F4    jmp         0040A1FE
 0040A1F6    mov         byte ptr [eax],2C
 0040A1F9    inc         eax
 0040A1FA    mov         byte ptr [eax],20
 0040A1FD    inc         eax
 0040A1FE    mov         edx,esi
 0040A200    sub         edx,1
>0040A203    jb          0040A20C
>0040A205    je          0040A21E
 0040A207    dec         edx
>0040A208    je          0040A230
>0040A20A    jmp         0040A242
 0040A20C    mov         edx,40A3BC
 0040A211    mov         ecx,7
 0040A216    xchg        eax,edx
 0040A217    call        00408CA0
>0040A21C    jmp         0040A24B
 0040A21E    mov         edx,40A3C4
 0040A223    mov         ecx,0A
 0040A228    xchg        eax,edx
 0040A229    call        00408CA0
>0040A22E    jmp         0040A24B
 0040A230    mov         edx,40A3D0
 0040A235    mov         ecx,0D
 0040A23A    xchg        eax,edx
 0040A23B    call        00408CA0
>0040A240    jmp         0040A24B
 0040A242    mov         edx,dword ptr [ebx-4]
 0040A245    xchg        eax,edx
 0040A246    call        00408CB8
 0040A24B    mov         byte ptr [eax],20
 0040A24E    inc         eax
 0040A24F    mov         byte ptr [eax],78
 0040A252    inc         eax
 0040A253    mov         byte ptr [eax],20
 0040A256    inc         eax
 0040A257    mov         edx,dword ptr [ebx]
 0040A259    xchg        eax,edx
 0040A25A    call        00408B84
 0040A25F    dec         esi
 0040A260    sub         ebx,8
 0040A263    cmp         esi,0FFFFFFFF
>0040A266    jne         0040A16F
 0040A26C    mov         edx,dword ptr [ebp-1B81C]
 0040A272    mov         dword ptr [ebp-1B818],edx
 0040A278    add         dword ptr [ebp-1B824],800
 0040A282    add         dword ptr [ebp-1B820],20
 0040A289    dec         dword ptr [ebp-1B810]
>0040A28F    jne         0040A149
 0040A295    cmp         dword ptr [ebp-1B808],0
>0040A29C    jle         0040A300
 0040A29E    cmp         byte ptr [ebp-1B809],0
>0040A2A5    je          0040A2B7
 0040A2A7    mov         byte ptr [eax],0D
 0040A2AA    inc         eax
 0040A2AB    mov         byte ptr [eax],0A
 0040A2AE    inc         eax
 0040A2AF    mov         byte ptr [eax],0D
 0040A2B2    inc         eax
 0040A2B3    mov         byte ptr [eax],0A
 0040A2B6    inc         eax
 0040A2B7    mov         edx,40A3E0
 0040A2BC    mov         ecx,62
 0040A2C1    xchg        eax,edx
 0040A2C2    call        00408CA0
 0040A2C7    mov         esi,dword ptr [ebp-1B808]
 0040A2CD    dec         esi
 0040A2CE    test        esi,esi
>0040A2D0    jb          0040A300
 0040A2D2    inc         esi
 0040A2D3    xor         edi,edi
 0040A2D5    lea         ebx,[ebp-1F824]
 0040A2DB    test        edi,edi
>0040A2DD    je          0040A2E7
 0040A2DF    mov         byte ptr [eax],2C
 0040A2E2    inc         eax
 0040A2E3    mov         byte ptr [eax],20
 0040A2E6    inc         eax
 0040A2E7    mov         edx,dword ptr [ebx]
 0040A2E9    xchg        eax,edx
 0040A2EA    call        00408B84
 0040A2EF    lea         edx,[ebp-20025]
 0040A2F5    cmp         eax,edx
>0040A2F7    ja          0040A300
 0040A2F9    inc         edi
 0040A2FA    add         ebx,4
 0040A2FD    dec         esi
>0040A2FE    jne         0040A2DB
 0040A300    mov         edx,40A444
 0040A305    mov         ecx,0DD
 0040A30A    xchg        eax,edx
 0040A30B    call        00408CA0
 0040A310    lea         edx,[ebp-27C24]
 0040A316    mov         eax,40A524
 0040A31B    call        004089AC
 0040A320    lea         edx,[ebp-27C24]
 0040A326    lea         eax,[ebp-27824]
 0040A32C    call        00408CE4
 0040A331    pop         edi
 0040A332    pop         esi
 0040A333    pop         ebx
 0040A334    mov         esp,ebp
 0040A336    pop         ebp
 0040A337    ret
*}
end;

//0040A53C
procedure sub_0040A53C;
begin
{*
 0040A53C    push        ebx
 0040A53D    push        esi
 0040A53E    push        edi
 0040A53F    mov         ebx,56F7D0;gvar_0056F7D0
 0040A544    mov         esi,571874;gvar_00571874
 0040A549    mov         eax,dword ptr [ebx+4]
>0040A54C    jmp         0040A560
 0040A54E    mov         edi,dword ptr [eax+4]
 0040A551    push        8000
 0040A556    push        0
 0040A558    push        eax
 0040A559    call        kernel32.VirtualFree
 0040A55E    mov         eax,edi
 0040A560    cmp         eax,ebx
>0040A562    jne         0040A54E
 0040A564    mov         edx,37
 0040A569    mov         eax,56B0E4
 0040A56E    mov         ecx,eax
 0040A570    mov         dword ptr [eax+14],ecx
 0040A573    mov         ecx,eax
 0040A575    mov         dword ptr [eax+4],ecx
 0040A578    mov         dword ptr [eax+8],1
 0040A57F    xor         ecx,ecx
 0040A581    mov         dword ptr [eax+0C],ecx
 0040A584    add         eax,20
 0040A587    dec         edx
>0040A588    jne         0040A56E
 0040A58A    mov         dword ptr [ebx],ebx
 0040A58C    mov         dword ptr [ebx+4],ebx
 0040A58F    mov         edx,400
 0040A594    mov         ecx,56F870;gvar_0056F870
 0040A599    mov         eax,ecx
 0040A59B    mov         dword ptr [eax],eax
 0040A59D    mov         dword ptr [eax+4],eax
 0040A5A0    add         ecx,8
 0040A5A3    dec         edx
>0040A5A4    jne         0040A599
 0040A5A6    mov         eax,dword ptr [esi+4]
>0040A5A9    jmp         0040A5BD
 0040A5AB    mov         ebx,dword ptr [eax+4]
 0040A5AE    push        8000
 0040A5B3    push        0
 0040A5B5    push        eax
 0040A5B6    call        kernel32.VirtualFree
 0040A5BB    mov         eax,ebx
 0040A5BD    cmp         eax,esi
>0040A5BF    jne         0040A5AB
 0040A5C1    mov         dword ptr [esi],esi
 0040A5C3    mov         dword ptr [esi+4],esi
 0040A5C6    pop         edi
 0040A5C7    pop         esi
 0040A5C8    pop         ebx
 0040A5C9    ret
*}
end;

//0040A5CC
{*function sub_0040A5CC:?;
begin
 0040A5CC    push        ebx
 0040A5CD    add         esp,0FFFFFBD8
 0040A5D3    xor         ebx,ebx
 0040A5D5    cmp         byte ptr ds:[5718A0],0;gvar_005718A0
>0040A5DC    je          0040A5F8
 0040A5DE    mov         edx,esp
 0040A5E0    mov         eax,40A658
 0040A5E5    call        004089AC
 0040A5EA    mov         edx,esp
 0040A5EC    mov         eax,40A66C
 0040A5F1    call        00408CE4
>0040A5F6    jmp         0040A64D
 0040A5F8    call        IsMemoryManagerSet
 0040A5FD    test        al,al
>0040A5FF    je          0040A61B
 0040A601    mov         edx,esp
 0040A603    mov         eax,40A68C
 0040A608    call        004089AC
 0040A60D    mov         edx,esp
 0040A60F    mov         eax,40A6D4
 0040A614    call        00408CE4
>0040A619    jmp         0040A64D
 0040A61B    lea         eax,[esp+400]
 0040A622    call        00402B00
 0040A627    cmp         dword ptr [esp+40C],0
>0040A62F    je          0040A64B
 0040A631    mov         edx,esp
 0040A633    mov         eax,40A7C4
 0040A638    call        004089AC
 0040A63D    mov         edx,esp
 0040A63F    mov         eax,40A800
 0040A644    call        00408CE4
>0040A649    jmp         0040A64D
 0040A64B    mov         bl,1
 0040A64D    mov         eax,ebx
 0040A64F    add         esp,428
 0040A655    pop         ebx
 0040A656    ret
end;*}

//0040A9E8
procedure sub_0040A9E8;
begin
{*
 0040A9E8    push        ebx
 0040A9E9    push        esi
 0040A9EA    push        edi
 0040A9EB    xor         eax,eax
 0040A9ED    xor         esi,esi
 0040A9EF    mov         ebx,56B100;gvar_0056B100
 0040A9F4    cmp         dword ptr [ebx],0
>0040A9F7    jne         0040A9FF
 0040A9F9    mov         dword ptr [ebx],408B38
 0040A9FF    lea         edx,[ebx-1C]
 0040AA02    mov         dword ptr [ebx-8],edx
 0040AA05    lea         edx,[ebx-1C]
 0040AA08    mov         dword ptr [ebx-18],edx
 0040AA0B    shr         eax,3
 0040AA0E    movzx       edx,word ptr [ebx-1A]
 0040AA12    dec         edx
 0040AA13    test        edx,edx
>0040AA15    jns         0040AA1A
 0040AA17    add         edx,7
 0040AA1A    sar         edx,3
 0040AA1D    sub         edx,eax
>0040AA1F    jb          0040AA32
 0040AA21    inc         edx
 0040AA22    add         eax,56F688
 0040AA27    mov         ecx,esi
 0040AA29    shl         ecx,2
 0040AA2C    mov         byte ptr [eax],cl
 0040AA2E    inc         eax
 0040AA2F    dec         edx
>0040AA30    jne         0040AA27
 0040AA32    xor         eax,eax
 0040AA34    mov         dword ptr [ebx-10],eax
 0040AA37    mov         dword ptr [ebx-14],1
 0040AA3E    movzx       eax,word ptr [ebx-1A]
 0040AA42    shl         eax,2
 0040AA45    lea         eax,[eax+eax*2]
 0040AA48    add         eax,20
 0040AA4B    add         eax,100
 0040AA50    dec         eax
 0040AA51    sub         eax,30
 0040AA54    and         eax,0FFFFFF00
 0040AA59    add         eax,30
 0040AA5C    cmp         eax,0B30
>0040AA61    jae         0040AA68
 0040AA63    mov         eax,0B30
 0040AA68    sub         eax,0B30
 0040AA6D    add         eax,1000
 0040AA72    shr         eax,0D
 0040AA75    cmp         eax,7
>0040AA78    jbe         0040AA7F
 0040AA7A    mov         eax,7
 0040AA7F    mov         ecx,eax
 0040AA81    mov         dl,1
 0040AA83    shl         dl,cl
 0040AA85    neg         dl
 0040AA87    mov         byte ptr [ebx-1B],dl
 0040AA8A    shl         eax,0D
 0040AA8D    add         ax,0B30
 0040AA91    mov         word ptr [ebx-4],ax
 0040AA95    mov         di,word ptr [ebx-1A]
 0040AA99    movzx       eax,di
 0040AA9C    mov         ecx,eax
 0040AA9E    shl         ecx,4
 0040AAA1    lea         ecx,[ecx+ecx*2]
 0040AAA4    add         ecx,20
 0040AAA7    add         ecx,100
 0040AAAD    dec         ecx
 0040AAAE    sub         ecx,30
 0040AAB1    and         ecx,0FFFFFF00
 0040AAB7    add         ecx,30
 0040AABA    cmp         ecx,7330
>0040AAC0    jae         0040AAC7
 0040AAC2    mov         ecx,7330
 0040AAC7    cmp         ecx,0FF30
>0040AACD    jbe         0040AAD4
 0040AACF    mov         ecx,0FF30
 0040AAD4    mov         eax,ecx
 0040AAD6    sub         eax,20
 0040AAD9    movzx       edx,di
 0040AADC    mov         ecx,edx
 0040AADE    xor         edx,edx
 0040AAE0    div         eax,ecx
 0040AAE2    imul        word ptr [ebx-1A]
 0040AAE6    add         ax,20
 0040AAEA    add         ax,100
 0040AAEE    dec         eax
 0040AAEF    sub         ax,30
 0040AAF3    and         ax,0FF00
 0040AAF7    add         ax,30
 0040AAFB    mov         word ptr [ebx-2],ax
 0040AAFF    movzx       eax,word ptr [ebx-1A]
 0040AB03    inc         esi
 0040AB04    add         ebx,20
 0040AB07    cmp         esi,37
>0040AB0A    jne         0040A9F4
 0040AB10    mov         dword ptr ds:[56F7D0],56F7D0
 0040AB1A    mov         dword ptr ds:[56F7D4],56F7D0
 0040AB24    mov         esi,400
 0040AB29    mov         edx,56F870;gvar_0056F870
 0040AB2E    mov         eax,edx
 0040AB30    mov         dword ptr [eax],eax
 0040AB32    mov         dword ptr [eax+4],eax
 0040AB35    add         edx,8
 0040AB38    dec         esi
>0040AB39    jne         0040AB2E
 0040AB3B    mov         dword ptr ds:[571874],571874
 0040AB45    mov         dword ptr ds:[571878],571874
 0040AB4F    pop         edi
 0040AB50    pop         esi
 0040AB51    pop         ebx
 0040AB52    ret
*}
end;

//0040AB54
procedure sub_0040AB54;
begin
{*
 0040AB54    cmp         byte ptr ds:[5718A0],0;gvar_005718A0
>0040AB5B    jne         0040AB9D
 0040AB5D    mov         dword ptr ds:[571894],40931C
 0040AB67    mov         dword ptr ds:[571898],40962C
 0040AB71    mov         dword ptr ds:[57189C],4097E0
 0040AB7B    mov         byte ptr ds:[5718A1],1;gvar_005718A1
 0040AB82    mov         eax,571888
 0040AB87    call        GetMemoryManager
 0040AB8C    mov         eax,571894;gvar_00571894
 0040AB91    call        SetMemoryManager
 0040AB96    mov         byte ptr ds:[5718A0],1;gvar_005718A0
 0040AB9D    ret
*}
end;

//0040ABA0
procedure sub_0040ABA0;
begin
{*
 0040ABA0    cmp         byte ptr ds:[5718A1],0;gvar_005718A1
 0040ABA7    mov         eax,56B7C4
 0040ABAC    call        SetMemoryManager
 0040ABB1    mov         byte ptr ds:[5718A0],0;gvar_005718A0
 0040ABB8    ret
*}
end;

//0040ABBC
procedure sub_0040ABBC;
begin
{*
 0040ABBC    cmp         byte ptr ds:[5718A0],0;gvar_005718A0
>0040ABC3    je          0040AC0B
 0040ABC5    call        0040ABA0
 0040ABCA    cmp         byte ptr ds:[5718A1],0;gvar_005718A1
>0040ABD1    je          0040AC0B
 0040ABD3    mov         eax,[0056E2E0];^gvar_0056B028
 0040ABD8    cmp         byte ptr [eax],0
>0040ABDB    je          0040ABE4
 0040ABDD    mov         al,1
 0040ABDF    call        00409F80
 0040ABE4    cmp         dword ptr ds:[571884],0;gvar_00571884
>0040ABEB    je          0040AC06
 0040ABED    push        8000
 0040ABF2    push        0
 0040ABF4    mov         eax,[00571884];0x0 gvar_00571884
 0040ABF9    push        eax
 0040ABFA    call        kernel32.VirtualFree
 0040ABFF    xor         eax,eax
 0040AC01    mov         [00571884],eax;gvar_00571884
 0040AC06    call        0040A53C
 0040AC0B    ret
*}
end;

Initialization
//0040AC4C
{*
 0040AC4C    sub         dword ptr ds:[56F684],1
>0040AC53    jae         0040AC68
 0040AC55    call        0040A9E8
 0040AC5A    call        0040A5CC
 0040AC5F    test        al,al
>0040AC61    je          0040AC68
 0040AC63    call        0040AB54
 0040AC68    ret
*}
Finalization
//0040AC0C
{*
 0040AC0C    push        ebp
 0040AC0D    mov         ebp,esp
 0040AC0F    xor         eax,eax
 0040AC11    push        ebp
 0040AC12    push        40AC42
 0040AC17    push        dword ptr fs:[eax]
 0040AC1A    mov         dword ptr fs:[eax],esp
 0040AC1D    inc         dword ptr ds:[56F684]
>0040AC23    jne         0040AC34
 0040AC25    call        0040ABBC
 0040AC2A    mov         eax,56B0E0;^'FastMM4 (c) 2004 - 2008 Pierre le Riche / Professional Software Development...
 0040AC2F    call        @LStrClr
 0040AC34    xor         eax,eax
 0040AC36    pop         edx
 0040AC37    pop         ecx
 0040AC38    pop         ecx
 0040AC39    mov         dword ptr fs:[eax],edx
 0040AC3C    push        40AC49
 0040AC41    ret
>0040AC42    jmp         @HandleFinally
>0040AC47    jmp         0040AC41
 0040AC49    pop         ebp
 0040AC4A    ret
*}
end.