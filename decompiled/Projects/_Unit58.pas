//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit58;

interface

uses
  SysUtils, Classes;

    //function sub_0043B0D8(?:?; ?:?; ?:?; ?:?):?;//0043B0D8
    //function sub_0043B114(?:?):?;//0043B114
    procedure sub_0043B144;//0043B144

implementation

//0043B0D8
{*function sub_0043B0D8(?:?; ?:?; ?:?; ?:?):?;
begin
 0043B0D8    push        ebp
 0043B0D9    mov         ebp,esp
 0043B0DB    push        ecx
 0043B0DC    cmp         dword ptr ds:[571B9C],0;gvar_00571B9C:Pointer
>0043B0E3    je          0043B0FF
 0043B0E5    mov         eax,dword ptr [ebp+14]
 0043B0E8    push        eax
 0043B0E9    mov         eax,dword ptr [ebp+10]
 0043B0EC    push        eax
 0043B0ED    mov         eax,dword ptr [ebp+0C]
 0043B0F0    push        eax
 0043B0F1    mov         eax,dword ptr [ebp+8]
 0043B0F4    push        eax
 0043B0F5    call        dword ptr ds:[571B9C]
 0043B0FB    test        eax,eax
>0043B0FD    jne         0043B103
 0043B0FF    xor         eax,eax
>0043B101    jmp         0043B105
 0043B103    mov         al,1
 0043B105    neg         al
 0043B107    sbb         eax,eax
 0043B109    mov         dword ptr [ebp-4],eax
 0043B10C    mov         eax,dword ptr [ebp-4]
 0043B10F    pop         ecx
 0043B110    pop         ebp
 0043B111    ret         10
end;*}

//0043B114
{*function sub_0043B114(?:?):?;
begin
 0043B114    push        ebp
 0043B115    mov         ebp,esp
 0043B117    push        ecx
 0043B118    cmp         dword ptr ds:[571BA0],0;gvar_00571BA0:Pointer
>0043B11F    je          0043B12F
 0043B121    mov         eax,dword ptr [ebp+8]
 0043B124    push        eax
 0043B125    call        dword ptr ds:[571BA0]
 0043B12B    test        eax,eax
>0043B12D    jne         0043B133
 0043B12F    xor         eax,eax
>0043B131    jmp         0043B135
 0043B133    mov         al,1
 0043B135    neg         al
 0043B137    sbb         eax,eax
 0043B139    mov         dword ptr [ebp-4],eax
 0043B13C    mov         eax,dword ptr [ebp-4]
 0043B13F    pop         ecx
 0043B140    pop         ebp
 0043B141    ret         4
end;*}

//0043B144
procedure sub_0043B144;
begin
{*
 0043B144    push        ebp
 0043B145    mov         ebp,esp
 0043B147    push        ecx
 0043B148    push        43B2E0;'comctl32.dll'
 0043B14D    call        kernel32.GetModuleHandleA
 0043B152    mov         dword ptr [ebp-4],eax
 0043B155    cmp         dword ptr [ebp-4],0
>0043B159    je          0043B2DB
 0043B15F    push        43B2F0;'InitializeFlatSB'
 0043B164    mov         eax,dword ptr [ebp-4]
 0043B167    push        eax
 0043B168    call        kernel32.GetProcAddress
 0043B16D    mov         [00571BA0],eax;gvar_00571BA0:Pointer
 0043B172    push        43B304;'UninitializeFlatSB'
 0043B177    mov         eax,dword ptr [ebp-4]
 0043B17A    push        eax
 0043B17B    call        kernel32.GetProcAddress
 0043B180    mov         [00571BA4],eax;gvar_00571BA4:Pointer
 0043B185    push        43B318;'FlatSB_GetScrollProp'
 0043B18A    mov         eax,dword ptr [ebp-4]
 0043B18D    push        eax
 0043B18E    call        kernel32.GetProcAddress
 0043B193    mov         [00571B98],eax;gvar_00571B98:Pointer
 0043B198    push        43B330;'FlatSB_SetScrollProp'
 0043B19D    mov         eax,dword ptr [ebp-4]
 0043B1A0    push        eax
 0043B1A1    call        kernel32.GetProcAddress
 0043B1A6    mov         [00571B9C],eax;gvar_00571B9C:Pointer
 0043B1AB    push        43B348;'FlatSB_EnableScrollBar'
 0043B1B0    mov         eax,dword ptr [ebp-4]
 0043B1B3    push        eax
 0043B1B4    call        kernel32.GetProcAddress
 0043B1B9    mov         [00571B74],eax;gvar_00571B74:LongBool
 0043B1BE    cmp         dword ptr ds:[571B74],0;gvar_00571B74:LongBool
>0043B1C5    jne         0043B1D1
 0043B1C7    mov         eax,407F94;user32.EnableScrollBar:LongBool
 0043B1CC    mov         [00571B74],eax;gvar_00571B74:LongBool
 0043B1D1    push        43B360;'FlatSB_ShowScrollBar'
 0043B1D6    mov         eax,dword ptr [ebp-4]
 0043B1D9    push        eax
 0043B1DA    call        kernel32.GetProcAddress
 0043B1DF    mov         [00571B78],eax;gvar_00571B78:LongBool
 0043B1E4    cmp         dword ptr ds:[571B78],0;gvar_00571B78:LongBool
>0043B1EB    jne         0043B1F7
 0043B1ED    mov         eax,4083EC;user32.ShowScrollBar:LongBool
 0043B1F2    mov         [00571B78],eax;gvar_00571B78:LongBool
 0043B1F7    push        43B378;'FlatSB_GetScrollRange'
 0043B1FC    mov         eax,dword ptr [ebp-4]
 0043B1FF    push        eax
 0043B200    call        kernel32.GetProcAddress
 0043B205    mov         [00571B7C],eax;gvar_00571B7C:LongBool
 0043B20A    cmp         dword ptr ds:[571B7C],0;gvar_00571B7C:LongBool
>0043B211    jne         0043B21D
 0043B213    mov         eax,40811C;user32.GetScrollRange:LongBool
 0043B218    mov         [00571B7C],eax;gvar_00571B7C:LongBool
 0043B21D    push        43B390;'FlatSB_GetScrollInfo'
 0043B222    mov         eax,dword ptr [ebp-4]
 0043B225    push        eax
 0043B226    call        kernel32.GetProcAddress
 0043B22B    mov         [00571B80],eax;gvar_00571B80:LongBool
 0043B230    cmp         dword ptr ds:[571B80],0;gvar_00571B80:LongBool
>0043B237    jne         0043B243
 0043B239    mov         eax,40810C;user32.GetScrollInfo:LongBool
 0043B23E    mov         [00571B80],eax;gvar_00571B80:LongBool
 0043B243    push        43B3A8;'FlatSB_GetScrollPos'
 0043B248    mov         eax,dword ptr [ebp-4]
 0043B24B    push        eax
 0043B24C    call        kernel32.GetProcAddress
 0043B251    mov         [00571B84],eax;gvar_00571B84:Integer
 0043B256    cmp         dword ptr ds:[571B84],0;gvar_00571B84:Integer
>0043B25D    jne         0043B269
 0043B25F    mov         eax,408114;user32.GetScrollPos:Integer
 0043B264    mov         [00571B84],eax;gvar_00571B84:Integer
 0043B269    push        43B3BC;'FlatSB_SetScrollPos'
 0043B26E    mov         eax,dword ptr [ebp-4]
 0043B271    push        eax
 0043B272    call        kernel32.GetProcAddress
 0043B277    mov         [00571B88],eax;gvar_00571B88:Integer
 0043B27C    cmp         dword ptr ds:[571B88],0;gvar_00571B88:Integer
>0043B283    jne         0043B28F
 0043B285    mov         eax,408394;user32.SetScrollPos:Integer
 0043B28A    mov         [00571B88],eax;gvar_00571B88:Integer
 0043B28F    push        43B3D0;'FlatSB_SetScrollInfo'
 0043B294    mov         eax,dword ptr [ebp-4]
 0043B297    push        eax
 0043B298    call        kernel32.GetProcAddress
 0043B29D    mov         [00571B8C],eax;gvar_00571B8C:Integer
 0043B2A2    cmp         dword ptr ds:[571B8C],0;gvar_00571B8C:Integer
>0043B2A9    jne         0043B2B5
 0043B2AB    mov         eax,40838C;user32.SetScrollInfo:Integer
 0043B2B0    mov         [00571B8C],eax;gvar_00571B8C:Integer
 0043B2B5    push        43B3E8;'FlatSB_SetScrollRange'
 0043B2BA    mov         eax,dword ptr [ebp-4]
 0043B2BD    push        eax
 0043B2BE    call        kernel32.GetProcAddress
 0043B2C3    mov         [00571B90],eax;gvar_00571B90:LongBool
 0043B2C8    cmp         dword ptr ds:[571B90],0;gvar_00571B90:LongBool
>0043B2CF    jne         0043B2DB
 0043B2D1    mov         eax,40839C;user32.SetScrollRange:LongBool
 0043B2D6    mov         [00571B90],eax;gvar_00571B90:LongBool
 0043B2DB    pop         ecx
 0043B2DC    pop         ebp
 0043B2DD    ret
*}
end;

Initialization
//0043B430
{*
 0043B430    push        ebp
 0043B431    mov         ebp,esp
 0043B433    sub         dword ptr ds:[571B94],1
>0043B43A    jae         0043B441
 0043B43C    call        0043B144
 0043B441    pop         ebp
 0043B442    ret
*}
Finalization
end.