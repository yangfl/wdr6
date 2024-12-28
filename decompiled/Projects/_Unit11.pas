//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit11;

interface

uses
  SysUtils, Classes;

    procedure VariantInit; stdcall;//00412E90
    function VariantClear:HRESULT; stdcall;//00412E98
    function VariantCopy(const Source:TVarData):HRESULT; stdcall;//00412EA0
    function VariantChangeType(const Source:TVarData; wFlags:Word; VarType:Word):HRESULT; stdcall;//00412EA8
    //function sub_00412EB0(?:?; ?:?; ?:?; ?:?; ?:?):?;//00412EB0
    //function sub_00412EE8:?;//00412EE8
    //function sub_00412EFC:?;//00412EFC
    //function sub_00412F10:?;//00412F10
    function SafeArrayCreate(DimCount:Integer; const Bounds:TVarArrayBoundArray):PVarArray; stdcall;//00413364
    function SafeArrayGetLBound(nDim:Integer; var lLbound:Longint):HRESULT; stdcall;//0041336C
    function SafeArrayGetUBound(Dim:Integer; var UBound:Integer):HRESULT; stdcall;//00413374
    function SafeArrayAccessData(var pvData:Pointer):HRESULT; stdcall;//0041337C
    function SafeArrayUnaccessData:HRESULT; stdcall;//00413384
    function SafeArrayGetElement(const rgIndices:void ; var pv:void ):HRESULT; stdcall;//0041338C
    function SafeArrayPutElement(const rgIndices:void ; const pv:void ):HRESULT; stdcall;//00413394
    function SafeArrayPtrOfIndex(var rgIndices:void ; var pvData:Pointer):HRESULT; stdcall;//0041339C
    //function sub_004133A4(?:?; ?:?; ?:?):?;//004133A4
    procedure sub_004133E8;//004133E8

implementation

//00412E90
procedure oleaut32.VariantInit; stdcall;
begin
{*
 00412E90    jmp         dword ptr ds:[61C72C]
*}
end;

//00412E98
function oleaut32.VariantClear:HRESULT; stdcall;
begin
{*
 00412E98    jmp         dword ptr ds:[61C728]
*}
end;

//00412EA0
function oleaut32.VariantCopy(const Source:TVarData):HRESULT; stdcall;
begin
{*
 00412EA0    jmp         dword ptr ds:[61C724]
*}
end;

//00412EA8
function oleaut32.VariantChangeType(const Source:TVarData; wFlags:Word; VarType:Word):HRESULT; stdcall;
begin
{*
 00412EA8    jmp         dword ptr ds:[61C720]
*}
end;

//00412EB0
{*function sub_00412EB0(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00412EB0    push        ebp
 00412EB1    mov         ebp,esp
 00412EB3    push        ecx
 00412EB4    cmp         dword ptr [ebp+10],400
>00412EBB    je          00412EC6
 00412EBD    mov         dword ptr [ebp-4],80004001
>00412EC4    jmp         00412EE0
 00412EC6    mov         ax,word ptr [ebp+18]
 00412ECA    push        eax
 00412ECB    mov         ax,word ptr [ebp+14]
 00412ECF    push        eax
 00412ED0    mov         eax,dword ptr [ebp+0C]
 00412ED3    push        eax
 00412ED4    mov         eax,dword ptr [ebp+8]
 00412ED7    push        eax
 00412ED8    call        oleaut32.VariantChangeType
 00412EDD    mov         dword ptr [ebp-4],eax
 00412EE0    mov         eax,dword ptr [ebp-4]
 00412EE3    pop         ecx
 00412EE4    pop         ebp
 00412EE5    ret         14
end;*}

//00412EE8
{*function sub_00412EE8:?;
begin
 00412EE8    push        ebp
 00412EE9    mov         ebp,esp
 00412EEB    push        ecx
 00412EEC    mov         dword ptr [ebp-4],80004001
 00412EF3    mov         eax,dword ptr [ebp-4]
 00412EF6    pop         ecx
 00412EF7    pop         ebp
 00412EF8    ret         8
end;*}

//00412EFC
{*function sub_00412EFC:?;
begin
 00412EFC    push        ebp
 00412EFD    mov         ebp,esp
 00412EFF    push        ecx
 00412F00    mov         dword ptr [ebp-4],80004001
 00412F07    mov         eax,dword ptr [ebp-4]
 00412F0A    pop         ecx
 00412F0B    pop         ebp
 00412F0C    ret         0C
end;*}

//00412F10
{*function sub_00412F10:?;
begin
 00412F10    push        ebp
 00412F11    mov         ebp,esp
 00412F13    push        ecx
 00412F14    mov         dword ptr [ebp-4],80004001
 00412F1B    mov         eax,dword ptr [ebp-4]
 00412F1E    pop         ecx
 00412F1F    pop         ebp
 00412F20    ret         10
end;*}

//00413364
function oleaut32.SafeArrayCreate(DimCount:Integer; const Bounds:TVarArrayBoundArray):PVarArray; stdcall;
begin
{*
 00413364    jmp         dword ptr ds:[61C71C]
*}
end;

//0041336C
function oleaut32.SafeArrayGetLBound(nDim:Integer; var lLbound:Longint):HRESULT; stdcall;
begin
{*
 0041336C    jmp         dword ptr ds:[61C718]
*}
end;

//00413374
function oleaut32.SafeArrayGetUBound(Dim:Integer; var UBound:Integer):HRESULT; stdcall;
begin
{*
 00413374    jmp         dword ptr ds:[61C714]
*}
end;

//0041337C
function oleaut32.SafeArrayAccessData(var pvData:Pointer):HRESULT; stdcall;
begin
{*
 0041337C    jmp         dword ptr ds:[61C710]
*}
end;

//00413384
function oleaut32.SafeArrayUnaccessData:HRESULT; stdcall;
begin
{*
 00413384    jmp         dword ptr ds:[61C70C]
*}
end;

//0041338C
function oleaut32.SafeArrayGetElement(const rgIndices:void ; var pv:void ):HRESULT; stdcall;
begin
{*
 0041338C    jmp         dword ptr ds:[61C708]
*}
end;

//00413394
function oleaut32.SafeArrayPutElement(const rgIndices:void ; const pv:void ):HRESULT; stdcall;
begin
{*
 00413394    jmp         dword ptr ds:[61C704]
*}
end;

//0041339C
function oleaut32.SafeArrayPtrOfIndex(var rgIndices:void ; var pvData:Pointer):HRESULT; stdcall;
begin
{*
 0041339C    jmp         dword ptr ds:[61C700]
*}
end;

//004133A4
{*function sub_004133A4(?:?; ?:?; ?:?):?;
begin
 004133A4    push        ebp
 004133A5    mov         ebp,esp
 004133A7    add         esp,0FFFFFFF4
 004133AA    mov         dword ptr [ebp-8],edx
 004133AD    mov         dword ptr [ebp-4],eax
 004133B0    mov         eax,dword ptr [ebp-8]
 004133B3    mov         dword ptr [ebp-0C],eax
 004133B6    mov         eax,dword ptr [ebp+8]
 004133B9    cmp         dword ptr [eax-4],0
>004133BD    je          004133DE
 004133BF    mov         eax,dword ptr [ebp-4]
 004133C2    push        eax
 004133C3    mov         eax,dword ptr [ebp+8]
 004133C6    mov         eax,dword ptr [eax-4]
 004133C9    push        eax
 004133CA    call        kernel32.GetProcAddress
 004133CF    mov         dword ptr [ebp-0C],eax
 004133D2    cmp         dword ptr [ebp-0C],0
>004133D6    jne         004133DE
 004133D8    mov         eax,dword ptr [ebp-8]
 004133DB    mov         dword ptr [ebp-0C],eax
 004133DE    mov         eax,dword ptr [ebp-0C]
 004133E1    mov         esp,ebp
 004133E3    pop         ebp
 004133E4    ret
end;*}

//004133E8
procedure sub_004133E8;
begin
{*
 004133E8    push        ebp
 004133E9    mov         ebp,esp
 004133EB    push        ecx
 004133EC    push        4135E0;'oleaut32.dll'
 004133F1    call        kernel32.GetModuleHandleA
 004133F6    mov         dword ptr [ebp-4],eax
 004133F9    push        ebp
 004133FA    mov         edx,412EB0;sub_00412EB0
 004133FF    mov         eax,4135F0
 00413404    call        004133A4
 00413409    pop         ecx
 0041340A    mov         [005719CC],eax;gvar_005719CC
 0041340F    push        ebp
 00413410    mov         edx,412EE8;sub_00412EE8
 00413415    mov         eax,413604
 0041341A    call        004133A4
 0041341F    pop         ecx
 00413420    mov         [005719D0],eax;gvar_005719D0
 00413425    push        ebp
 00413426    mov         edx,412EE8;sub_00412EE8
 0041342B    mov         eax,41360C
 00413430    call        004133A4
 00413435    pop         ecx
 00413436    mov         [005719D4],eax;gvar_005719D4
 0041343B    push        ebp
 0041343C    mov         edx,412EFC;sub_00412EFC
 00413441    mov         eax,413614
 00413446    call        004133A4
 0041344B    pop         ecx
 0041344C    mov         [005719D8],eax;gvar_005719D8
 00413451    push        ebp
 00413452    mov         edx,412EFC;sub_00412EFC
 00413457    mov         eax,41361C
 0041345C    call        004133A4
 00413461    pop         ecx
 00413462    mov         [005719DC],eax;gvar_005719DC
 00413467    push        ebp
 00413468    mov         edx,412EFC;sub_00412EFC
 0041346D    mov         eax,413624
 00413472    call        004133A4
 00413477    pop         ecx
 00413478    mov         [005719E0],eax;gvar_005719E0
 0041347D    push        ebp
 0041347E    mov         edx,412EFC;sub_00412EFC
 00413483    mov         eax,41362C
 00413488    call        004133A4
 0041348D    pop         ecx
 0041348E    mov         [005719E4],eax;gvar_005719E4
 00413493    push        ebp
 00413494    mov         edx,412EFC;sub_00412EFC
 00413499    mov         eax,413634
 0041349E    call        004133A4
 004134A3    pop         ecx
 004134A4    mov         [005719E8],eax;gvar_005719E8
 004134A9    push        ebp
 004134AA    mov         edx,412EFC;sub_00412EFC
 004134AF    mov         eax,41363C
 004134B4    call        004133A4
 004134B9    pop         ecx
 004134BA    mov         [005719EC],eax;gvar_005719EC
 004134BF    push        ebp
 004134C0    mov         edx,412EFC;sub_00412EFC
 004134C5    mov         eax,413644
 004134CA    call        004133A4
 004134CF    pop         ecx
 004134D0    mov         [005719F0],eax;gvar_005719F0
 004134D5    push        ebp
 004134D6    mov         edx,412EFC;sub_00412EFC
 004134DB    mov         eax,41364C
 004134E0    call        004133A4
 004134E5    pop         ecx
 004134E6    mov         [005719F4],eax;gvar_005719F4
 004134EB    push        ebp
 004134EC    mov         edx,412EFC;sub_00412EFC
 004134F1    mov         eax,413654
 004134F6    call        004133A4
 004134FB    pop         ecx
 004134FC    mov         [005719F8],eax;gvar_005719F8
 00413501    push        ebp
 00413502    mov         edx,412F10;sub_00412F10
 00413507    mov         eax,41365C
 0041350C    call        004133A4
 00413511    pop         ecx
 00413512    mov         [005719FC],eax;gvar_005719FC
 00413517    push        ebp
 00413518    mov         edx,412F24
 0041351D    mov         eax,413664
 00413522    call        004133A4
 00413527    pop         ecx
 00413528    mov         [00571A00],eax;gvar_00571A00
 0041352D    push        ebp
 0041352E    mov         edx,412F98
 00413533    mov         eax,413674
 00413538    call        004133A4
 0041353D    pop         ecx
 0041353E    mov         [00571A04],eax;gvar_00571A04
 00413543    push        ebp
 00413544    mov         edx,41300C
 00413549    mov         eax,413684
 0041354E    call        004133A4
 00413553    pop         ecx
 00413554    mov         [00571A08],eax;gvar_00571A08
 00413559    push        ebp
 0041355A    mov         edx,413080
 0041355F    mov         eax,413694
 00413564    call        004133A4
 00413569    pop         ecx
 0041356A    mov         [00571A0C],eax;gvar_00571A0C
 0041356F    push        ebp
 00413570    mov         edx,4130F4
 00413575    mov         eax,4136A4
 0041357A    call        004133A4
 0041357F    pop         ecx
 00413580    mov         [00571A10],eax;gvar_00571A10
 00413585    push        ebp
 00413586    mov         edx,413168
 0041358B    mov         eax,4136B4
 00413590    call        004133A4
 00413595    pop         ecx
 00413596    mov         [00571A14],eax;gvar_00571A14
 0041359B    push        ebp
 0041359C    mov         edx,4131EC
 004135A1    mov         eax,4136C4
 004135A6    call        004133A4
 004135AB    pop         ecx
 004135AC    mov         [00571A18],eax;gvar_00571A18
 004135B1    push        ebp
 004135B2    mov         edx,413268
 004135B7    mov         eax,4136D4
 004135BC    call        004133A4
 004135C1    pop         ecx
 004135C2    mov         [00571A1C],eax;gvar_00571A1C
 004135C7    push        ebp
 004135C8    mov         edx,4132E4
 004135CD    mov         eax,4136E4
 004135D2    call        004133A4
 004135D7    pop         ecx
 004135D8    mov         [00571A20],eax;gvar_00571A20
 004135DD    pop         ecx
 004135DE    pop         ebp
 004135DF    ret
*}
end;

Initialization
//00413724
{*
 00413724    push        ebp
 00413725    mov         ebp,esp
 00413727    sub         dword ptr ds:[571A24],1
>0041372E    jae         00413735
 00413730    call        004133E8
 00413735    pop         ebp
 00413736    ret
*}
Finalization
end.