//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit98;

interface

uses
  SysUtils, Classes;

type
  TPerfTimer = class(TObject)
  end;
  TThemeNexus = class(TObject)
    constructor Create;//00512DFC
  end;
    //function sub_005128A8:?;//005128A8
    //function sub_005128BC(?:TPerfTimer):?;//005128BC
    procedure sub_00512924(?:TPerfTimer);//00512924
    //function sub_0051293C:?;//0051293C
    //function sub_00512958:?;//00512958
    procedure sub_00512978;//00512978
    //function sub_00512984:?;//00512984
    //function sub_00512990:?;//00512990
    //function sub_005129B4:?;//005129B4
    //function sub_005129C0(?:?):?;//005129C0
    //function sub_00512A54:?;//00512A54
    //function sub_00512A68:?;//00512A68
    //function sub_00512A7C:?;//00512A7C
    procedure sub_00512A90;//00512A90
    //function sub_00512B04:?;//00512B04
    //function sub_00512D18:?;//00512D18
    //procedure sub_00512E94(?:?);//00512E94

implementation

//005128A8
{*function sub_005128A8:?;
begin
 005128A8    push        ebp
 005128A9    mov         ebp,esp
 005128AB    push        ecx
 005128AC    call        kernel32.GetTickCount
 005128B1    mov         dword ptr [ebp-4],eax
 005128B4    mov         eax,dword ptr [ebp-4]
 005128B7    pop         ecx
 005128B8    pop         ebp
 005128B9    ret
end;*}

//005128BC
{*function sub_005128BC(?:TPerfTimer):?;
begin
 005128BC    push        ebp
 005128BD    mov         ebp,esp
 005128BF    add         esp,0FFFFFFE8
 005128C2    mov         dword ptr [ebp-4],eax
 005128C5    mov         eax,dword ptr [ebp-4]
 005128C8    add         eax,18
 005128CB    push        eax
 005128CC    call        kernel32.QueryPerformanceCounter
 005128D1    mov         eax,dword ptr [ebp-4]
 005128D4    add         eax,8
 005128D7    push        eax
 005128D8    call        kernel32.QueryPerformanceFrequency
 005128DD    mov         eax,dword ptr [ebp-4]
 005128E0    mov         edx,dword ptr [eax+1C]
 005128E3    mov         eax,dword ptr [eax+18]
 005128E6    mov         ecx,dword ptr [ebp-4]
 005128E9    sub         eax,dword ptr [ecx+10]
 005128EC    sbb         edx,dword ptr [ecx+14]
 005128EF    push        edx
 005128F0    push        eax
 005128F1    mov         eax,0F4240
 005128F6    xor         edx,edx
 005128F8    call        @_llmul
 005128FD    mov         dword ptr [ebp-18],eax
 00512900    mov         dword ptr [ebp-14],edx
 00512903    fild        qword ptr [ebp-18]
 00512906    mov         eax,dword ptr [ebp-4]
 00512909    fild        qword ptr [eax+8]
 0051290C    fdivp       st(1),st
 0051290E    call        @ROUND
 00512913    mov         dword ptr [ebp-10],eax
 00512916    mov         dword ptr [ebp-0C],edx
 00512919    mov         eax,dword ptr [ebp-10]
 0051291C    mov         edx,dword ptr [ebp-0C]
 0051291F    mov         esp,ebp
 00512921    pop         ebp
 00512922    ret
end;*}

//00512924
procedure sub_00512924(?:TPerfTimer);
begin
{*
 00512924    push        ebp
 00512925    mov         ebp,esp
 00512927    push        ecx
 00512928    mov         dword ptr [ebp-4],eax
 0051292B    mov         eax,dword ptr [ebp-4]
 0051292E    add         eax,10
 00512931    push        eax
 00512932    call        kernel32.QueryPerformanceCounter
 00512937    pop         ecx
 00512938    pop         ebp
 00512939    ret
*}
end;

//0051293C
{*function sub_0051293C:?;
begin
 0051293C    push        ebp
 0051293D    mov         ebp,esp
 0051293F    add         esp,0FFFFFFD8
 00512942    lea         eax,[ebp-28]
 00512945    push        eax
 00512946    call        kernel32.GetSystemInfo
 0051294B    mov         eax,dword ptr [ebp-14]
 0051294E    mov         dword ptr [ebp-4],eax
 00512951    mov         eax,dword ptr [ebp-4]
 00512954    mov         esp,ebp
 00512956    pop         ebp
 00512957    ret
end;*}

//00512958
{*function sub_00512958:?;
begin
 00512958    mov         edx,0
 0051295D    pushfd
 0051295E    pop         eax
 0051295F    mov         ecx,eax
 00512961    xor         eax,200000
 00512966    push        eax
 00512967    popfd
 00512968    pushfd
 00512969    pop         eax
 0051296A    xor         ecx,eax
>0051296C    je          00512973
 0051296E    mov         edx,1
 00512973    push        eax
 00512974    popfd
 00512975    mov         eax,edx
 00512977    ret
end;*}

//00512978
procedure sub_00512978;
begin
{*
 00512978    push        ebx
 00512979    mov         eax,1
 0051297E    cpuid
 00512980    pop         ebx
 00512981    ret
*}
end;

//00512984
{*function sub_00512984:?;
begin
 00512984    push        ebx
 00512985    mov         eax,1
 0051298A    cpuid
 0051298C    pop         ebx
 0051298D    mov         eax,edx
 0051298F    ret
end;*}

//00512990
{*function sub_00512990:?;
begin
 00512990    push        ebp
 00512991    mov         ebp,esp
 00512993    push        ecx
 00512994    push        ebx
 00512995    mov         byte ptr [ebp-1],1
 00512999    mov         eax,80000000
 0051299E    cpuid
 005129A0    cmp         eax,80000000
>005129A5    ja          005129AB
 005129A7    mov         byte ptr [ebp-1],0
 005129AB    pop         ebx
 005129AC    mov         al,byte ptr [ebp-1]
 005129AF    pop         ecx
 005129B0    pop         ebp
 005129B1    ret
end;*}

//005129B4
{*function sub_005129B4:?;
begin
 005129B4    push        ebx
 005129B5    mov         eax,80000001
 005129BA    cpuid
 005129BC    pop         ebx
 005129BD    mov         eax,edx
 005129BF    ret
end;*}

//005129C0
{*function sub_005129C0(?:?):?;
begin
 005129C0    push        ebp
 005129C1    mov         ebp,esp
 005129C3    push        ecx
 005129C4    mov         byte ptr [ebp-1],al
 005129C7    mov         byte ptr [ebp-2],0
 005129CB    call        00512958
 005129D0    test        al,al
>005129D2    je          00512A4B
 005129D4    call        00512978
 005129D9    shr         eax,8
 005129DC    and         eax,0F
 005129DF    cmp         eax,5
>005129E2    jl          00512A4B
 005129E4    mov         al,byte ptr [ebp-1]
 005129E7    dec         al
>005129E9    je          00512A0F
 005129EB    add         al,0FD
 005129ED    sub         al,2
>005129EF    jae         00512A34
 005129F1    call        00512990
 005129F6    test        al,al
>005129F8    je          00512A4B
 005129FA    call        005129B4
 005129FF    xor         edx,edx
 00512A01    mov         dl,byte ptr [ebp-1]
 00512A04    and         eax,dword ptr [edx*4+56D458]
>00512A0B    je          00512A4B
>00512A0D    jmp         00512A47
 00512A0F    call        00512984
 00512A14    and         eax,dword ptr ds:[56D460];0x2000000 gvar_0056D460
>00512A1A    jne         00512A47
 00512A1C    call        00512990
 00512A21    test        al,al
>00512A23    je          00512A4B
 00512A25    call        005129B4
 00512A2A    and         eax,dword ptr ds:[56D45C];0x400000 gvar_0056D45C
>00512A30    je          00512A4B
>00512A32    jmp         00512A47
 00512A34    call        00512984
 00512A39    xor         edx,edx
 00512A3B    mov         dl,byte ptr [ebp-1]
 00512A3E    and         eax,dword ptr [edx*4+56D458]
>00512A45    je          00512A4B
 00512A47    mov         byte ptr [ebp-2],1
 00512A4B    mov         al,byte ptr [ebp-2]
 00512A4E    pop         ecx
 00512A4F    pop         ebp
 00512A50    ret
end;*}

//00512A54
{*function sub_00512A54:?;
begin
 00512A54    push        ebp
 00512A55    mov         ebp,esp
 00512A57    push        ecx
 00512A58    xor         eax,eax
 00512A5A    call        005129C0
 00512A5F    mov         byte ptr [ebp-1],al
 00512A62    mov         al,byte ptr [ebp-1]
 00512A65    pop         ecx
 00512A66    pop         ebp
 00512A67    ret
end;*}

//00512A68
{*function sub_00512A68:?;
begin
 00512A68    push        ebp
 00512A69    mov         ebp,esp
 00512A6B    push        ecx
 00512A6C    mov         al,1
 00512A6E    call        005129C0
 00512A73    mov         byte ptr [ebp-1],al
 00512A76    mov         al,byte ptr [ebp-1]
 00512A79    pop         ecx
 00512A7A    pop         ebp
 00512A7B    ret
end;*}

//00512A7C
{*function sub_00512A7C:?;
begin
 00512A7C    push        ebp
 00512A7D    mov         ebp,esp
 00512A7F    push        ecx
 00512A80    mov         al,4
 00512A82    call        005129C0
 00512A87    mov         byte ptr [ebp-1],al
 00512A8A    mov         al,byte ptr [ebp-1]
 00512A8D    pop         ecx
 00512A8E    pop         ebp
 00512A8F    ret
end;*}

//00512A90
procedure sub_00512A90;
begin
{*
 00512A90    cmp         dword ptr ds:[5779A4],0;gvar_005779A4:HMODULE
>00512A97    je          00512B02
 00512A99    mov         eax,[0056DFD0];^IsLibrary:Boolean
 00512A9E    cmp         byte ptr [eax],0
>00512AA1    jne         00512AAE
 00512AA3    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512AA8    push        eax
 00512AA9    call        kernel32.FreeLibrary
 00512AAE    xor         eax,eax
 00512AB0    mov         [005779A4],eax;gvar_005779A4:HMODULE
 00512AB5    xor         eax,eax
 00512AB7    mov         [00577974],eax;gvar_00577974:Pointer
 00512ABC    xor         eax,eax
 00512ABE    mov         [00577978],eax;gvar_00577978:Pointer
 00512AC3    xor         eax,eax
 00512AC5    mov         [0057797C],eax;gvar_0057797C:Pointer
 00512ACA    xor         eax,eax
 00512ACC    mov         [00577980],eax;gvar_00577980:Pointer
 00512AD1    xor         eax,eax
 00512AD3    mov         [00577984],eax;gvar_00577984:Pointer
 00512AD8    xor         eax,eax
 00512ADA    mov         [00577988],eax;gvar_00577988:Pointer
 00512ADF    xor         eax,eax
 00512AE1    mov         [0057798C],eax;gvar_0057798C:Pointer
 00512AE6    xor         eax,eax
 00512AE8    mov         [00577990],eax;gvar_00577990:Pointer
 00512AED    xor         eax,eax
 00512AEF    mov         [00577994],eax;gvar_00577994:Pointer
 00512AF4    xor         eax,eax
 00512AF6    mov         [00577998],eax;gvar_00577998:Pointer
 00512AFB    xor         eax,eax
 00512AFD    mov         [0057799C],eax;gvar_0057799C:Pointer
 00512B02    ret
*}
end;

//00512B04
{*function sub_00512B04:?;
begin
 00512B04    push        ebp
 00512B05    mov         ebp,esp
 00512B07    push        ecx
 00512B08    cmp         dword ptr ds:[5779A4],0;gvar_005779A4:HMODULE
>00512B0F    jne         00512C4A
 00512B15    push        512C5C;'uxtheme.dll'
 00512B1A    call        kernel32.LoadLibraryA
 00512B1F    mov         [005779A4],eax;gvar_005779A4:HMODULE
 00512B24    cmp         dword ptr ds:[5779A4],0;gvar_005779A4:HMODULE
>00512B2B    jbe         00512C4A
 00512B31    push        512C68;'OpenThemeData'
 00512B36    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512B3B    push        eax
 00512B3C    call        kernel32.GetProcAddress
 00512B41    mov         [00577974],eax;gvar_00577974:Pointer
 00512B46    push        512C78;'CloseThemeData'
 00512B4B    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512B50    push        eax
 00512B51    call        kernel32.GetProcAddress
 00512B56    mov         [00577978],eax;gvar_00577978:Pointer
 00512B5B    push        512C88;'DrawThemeBackground'
 00512B60    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512B65    push        eax
 00512B66    call        kernel32.GetProcAddress
 00512B6B    mov         [0057797C],eax;gvar_0057797C:Pointer
 00512B70    push        512C9C;'DrawThemeEdge'
 00512B75    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512B7A    push        eax
 00512B7B    call        kernel32.GetProcAddress
 00512B80    mov         [00577980],eax;gvar_00577980:Pointer
 00512B85    push        512CAC;'GetThemeColor'
 00512B8A    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512B8F    push        eax
 00512B90    call        kernel32.GetProcAddress
 00512B95    mov         [00577984],eax;gvar_00577984:Pointer
 00512B9A    push        512CBC;'GetThemeMetric'
 00512B9F    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512BA4    push        eax
 00512BA5    call        kernel32.GetProcAddress
 00512BAA    mov         [00577988],eax;gvar_00577988:Pointer
 00512BAF    push        512CCC;'GetThemeMargins'
 00512BB4    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512BB9    push        eax
 00512BBA    call        kernel32.GetProcAddress
 00512BBF    mov         [0057798C],eax;gvar_0057798C:Pointer
 00512BC4    push        512CDC;'SetWindowTheme'
 00512BC9    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512BCE    push        eax
 00512BCF    call        kernel32.GetProcAddress
 00512BD4    mov         [00577990],eax;gvar_00577990:Pointer
 00512BD9    push        512CEC;'IsThemeActive'
 00512BDE    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512BE3    push        eax
 00512BE4    call        kernel32.GetProcAddress
 00512BE9    mov         [00577994],eax;gvar_00577994:Pointer
 00512BEE    push        512CFC;'IsAppThemed'
 00512BF3    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512BF8    push        eax
 00512BF9    call        kernel32.GetProcAddress
 00512BFE    mov         [00577998],eax;gvar_00577998:Pointer
 00512C03    push        512D08;'EnableTheming'
 00512C08    mov         eax,[005779A4];0x0 gvar_005779A4:HMODULE
 00512C0D    push        eax
 00512C0E    call        kernel32.GetProcAddress
 00512C13    mov         [0057799C],eax;gvar_0057799C:Pointer
 00512C18    cmp         dword ptr ds:[577974],0;gvar_00577974:Pointer
>00512C1F    je          00512C45
 00512C21    cmp         dword ptr ds:[577978],0;gvar_00577978:Pointer
>00512C28    je          00512C45
 00512C2A    cmp         dword ptr ds:[577994],0;gvar_00577994:Pointer
>00512C31    je          00512C45
 00512C33    cmp         dword ptr ds:[577998],0;gvar_00577998:Pointer
>00512C3A    je          00512C45
 00512C3C    cmp         dword ptr ds:[57799C],0;gvar_0057799C:Pointer
>00512C43    jne         00512C4A
 00512C45    call        00512A90
 00512C4A    cmp         dword ptr ds:[5779A4],0;gvar_005779A4:HMODULE
 00512C51    seta        byte ptr [ebp-1]
 00512C55    mov         al,byte ptr [ebp-1]
 00512C58    pop         ecx
 00512C59    pop         ebp
 00512C5A    ret
end;*}

//00512D18
{*function sub_00512D18:?;
begin
 00512D18    push        ebp
 00512D19    mov         ebp,esp
 00512D1B    push        ecx
 00512D1C    cmp         dword ptr ds:[5779A4],0;gvar_005779A4:HMODULE
>00512D23    jbe         00512D39
 00512D25    call        dword ptr ds:[577998]
 00512D2B    test        eax,eax
>00512D2D    je          00512D39
 00512D2F    call        dword ptr ds:[577994]
 00512D35    test        eax,eax
>00512D37    jne         00512D3D
 00512D39    xor         eax,eax
>00512D3B    jmp         00512D3F
 00512D3D    mov         al,1
 00512D3F    mov         byte ptr [ebp-1],al
 00512D42    mov         al,byte ptr [ebp-1]
 00512D45    pop         ecx
 00512D46    pop         ebp
 00512D47    ret
end;*}

//00512DFC
constructor TThemeNexus.Create;
begin
{*
 00512DFC    push        ebp
 00512DFD    mov         ebp,esp
 00512DFF    add         esp,0FFFFFFF8
 00512E02    test        dl,dl
>00512E04    je          00512E0E
 00512E06    add         esp,0FFFFFFF0
 00512E09    call        @ClassCreate
 00512E0E    mov         byte ptr [ebp-5],dl
 00512E11    mov         dword ptr [ebp-4],eax
 00512E14    mov         eax,dword ptr [ebp-4]
 00512E17    push        eax
 00512E18    push        512F14
 00512E1D    call        0042BAC0
 00512E22    mov         edx,dword ptr [ebp-4]
 00512E25    mov         dword ptr [edx+4],eax
 00512E28    mov         eax,dword ptr [ebp-4]
 00512E2B    call        00512E94
 00512E30    mov         eax,dword ptr [ebp-4]
 00512E33    cmp         byte ptr [ebp-5],0
>00512E37    je          00512E48
 00512E39    call        @AfterConstruction
 00512E3E    pop         dword ptr fs:[0]
 00512E45    add         esp,0C
 00512E48    mov         eax,dword ptr [ebp-4]
 00512E4B    pop         ecx
 00512E4C    pop         ecx
 00512E4D    pop         ebp
 00512E4E    ret
*}
end;

//00512E94
{*procedure sub_00512E94(?:?);
begin
 00512E94    push        ebp
 00512E95    mov         ebp,esp
 00512E97    push        ecx
 00512E98    mov         dword ptr [ebp-4],eax
 00512E9B    mov         byte ptr ds:[56D470],0;gvar_0056D470
 00512EA2    call        00512B04
 00512EA7    test        al,al
>00512EA9    je          00512EEC
 00512EAB    call        00512D18
 00512EB0    mov         [0056D470],al;gvar_0056D470
 00512EB5    cmp         byte ptr ds:[56D470],0;gvar_0056D470
>00512EBC    je          00512EEC
 00512EBE    push        512EF0
 00512EC3    mov         eax,dword ptr [ebp-4]
 00512EC6    mov         eax,dword ptr [eax+4]
 00512EC9    push        eax
 00512ECA    call        dword ptr ds:[577974]
 00512ED0    mov         [0056D474],eax;gvar_0056D474
 00512ED5    push        512F04
 00512EDA    mov         eax,dword ptr [ebp-4]
 00512EDD    mov         eax,dword ptr [eax+4]
 00512EE0    push        eax
 00512EE1    call        dword ptr ds:[577974]
 00512EE7    mov         [0056D478],eax;gvar_0056D478
 00512EEC    pop         ecx
 00512EED    pop         ebp
 00512EEE    ret
end;*}

Initialization
//00512FAC
{*
 00512FAC    sub         dword ptr ds:[5779A0],1
>00512FB3    jae         00512FD7
 00512FB5    mov         dl,1
 00512FB7    mov         eax,[00512D48];TThemeNexus
 00512FBC    call        TThemeNexus.Create;TThemeNexus.Create
 00512FC1    mov         [005779A8],eax;gvar_005779A8:TThemeNexus
 00512FC6    mov         dl,1
 00512FC8    mov         eax,[00512850];TPerfTimer
 00512FCD    call        TObject.Create;TPerfTimer.Create
 00512FD2    mov         [00577970],eax;gvar_00577970:TPerfTimer
 00512FD7    ret
*}
Finalization
//00512F68
{*
 00512F68    push        ebp
 00512F69    mov         ebp,esp
 00512F6B    xor         eax,eax
 00512F6D    push        ebp
 00512F6E    push        512FA3
 00512F73    push        dword ptr fs:[eax]
 00512F76    mov         dword ptr fs:[eax],esp
 00512F79    inc         dword ptr ds:[5779A0]
>00512F7F    jne         00512F95
 00512F81    mov         eax,[00577970];0x0 gvar_00577970:TPerfTimer
 00512F86    call        TObject.Free
 00512F8B    mov         eax,[005779A8];0x0 gvar_005779A8:TThemeNexus
 00512F90    call        TObject.Free
 00512F95    xor         eax,eax
 00512F97    pop         edx
 00512F98    pop         ecx
 00512F99    pop         ecx
 00512F9A    mov         dword ptr fs:[eax],edx
 00512F9D    push        512FAA
 00512FA2    ret
>00512FA3    jmp         @HandleFinally
>00512FA8    jmp         00512FA2
 00512FAA    pop         ebp
 00512FAB    ret
*}
end.