//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit XPStyleActnCtrls;

interface

uses
  SysUtils, Classes;

type
  TXPStyleActionBars = class(TActionBarStyleEx)
  public
    //function v0(?:?; ?:?):?; virtual;//v0//004CAEB4
    //function v4(?:?):?; virtual;//v4//004CAE98
    //procedure v8(?:?); virtual;//v8//004CB02C
    //function vC(?:?):?; virtual;//vC//004CAFDC
    //function v10(?:?):?; virtual;//v10//004CAE7C
    //function v14:?; virtual;//v14//004CB014
  end;
    //function sub_004CAE7C(?:?):?;//004CAE7C
    //function sub_004CAE98(?:?):?;//004CAE98
    //function sub_004CAEB4(?:?; ?:?):?;//004CAEB4
    //function sub_004CAFDC(?:?):?;//004CAFDC
    //function sub_004CB014:?;//004CB014
    //procedure sub_004CB02C(?:?);//004CB02C

implementation

//004CAE7C
{*function sub_004CAE7C(?:?):?;
begin
 004CAE7C    push        ebp
 004CAE7D    mov         ebp,esp
 004CAE7F    add         esp,0FFFFFFF4
 004CAE82    mov         dword ptr [ebp-0C],edx
 004CAE85    mov         dword ptr [ebp-4],eax
 004CAE88    mov         eax,[004C818C];TXPStyleAddRemoveItem
 004CAE8D    mov         dword ptr [ebp-8],eax
 004CAE90    mov         eax,dword ptr [ebp-8]
 004CAE93    mov         esp,ebp
 004CAE95    pop         ebp
 004CAE96    ret
end;*}

//004CAE98
{*function sub_004CAE98(?:?):?;
begin
 004CAE98    push        ebp
 004CAE99    mov         ebp,esp
 004CAE9B    add         esp,0FFFFFFF4
 004CAE9E    mov         dword ptr [ebp-0C],edx
 004CAEA1    mov         dword ptr [ebp-4],eax
 004CAEA4    mov         eax,[004AE980];TXPColorMap
 004CAEA9    mov         dword ptr [ebp-8],eax
 004CAEAC    mov         eax,dword ptr [ebp-8]
 004CAEAF    mov         esp,ebp
 004CAEB1    pop         ebp
 004CAEB2    ret
end;*}

//004CAEB4
{*function sub_004CAEB4(?:?; ?:?):?;
begin
 004CAEB4    push        ebp
 004CAEB5    mov         ebp,esp
 004CAEB7    add         esp,0FFFFFFEC
 004CAEBA    mov         dword ptr [ebp-0C],ecx
 004CAEBD    mov         dword ptr [ebp-8],edx
 004CAEC0    mov         dword ptr [ebp-4],eax
 004CAEC3    mov         eax,dword ptr [ebp-8]
 004CAEC6    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004CAECC    call        @IsClass
 004CAED1    test        al,al
>004CAED3    je          004CAF36
 004CAED5    mov         eax,dword ptr [ebp-0C]
 004CAED8    call        004BE56C
 004CAEDD    test        al,al
>004CAEDF    je          004CAEEE
 004CAEE1    mov         eax,[004C7C4C];TXPStyleDropDownBtn
 004CAEE6    mov         dword ptr [ebp-10],eax
>004CAEE9    jmp         004CAFD5
 004CAEEE    mov         eax,dword ptr [ebp-0C]
 004CAEF1    call        TActionClientItem.GetAction
 004CAEF6    mov         edx,dword ptr ds:[44B1F4];TStaticListAction
 004CAEFC    call        @IsClass
 004CAF01    test        al,al
>004CAF03    jne         004CAF1C
 004CAF05    mov         eax,dword ptr [ebp-0C]
 004CAF08    call        TActionClientItem.GetAction
 004CAF0D    mov         edx,dword ptr ds:[44ADF0];TVirtualListAction
 004CAF13    call        @IsClass
 004CAF18    test        al,al
>004CAF1A    je          004CAF29
 004CAF1C    mov         eax,[004AF6C0];TCustomComboControl
 004CAF21    mov         dword ptr [ebp-10],eax
>004CAF24    jmp         004CAFD5
 004CAF29    mov         eax,[004C7ADC];TXPStyleButton
 004CAF2E    mov         dword ptr [ebp-10],eax
>004CAF31    jmp         004CAFD5
 004CAF36    mov         eax,dword ptr [ebp-8]
 004CAF39    mov         edx,dword ptr ds:[4B1FE0];TCustomActionMainMenuBar
 004CAF3F    call        @IsClass
 004CAF44    test        al,al
>004CAF46    je          004CAF55
 004CAF48    mov         eax,[004C75B8];TXPStyleMenuButton
 004CAF4D    mov         dword ptr [ebp-10],eax
>004CAF50    jmp         004CAFD5
 004CAF55    mov         eax,dword ptr [ebp-8]
 004CAF58    mov         edx,dword ptr ds:[4B1C7C];TCustomizeActionToolBar
 004CAF5E    call        @IsClass
 004CAF63    test        al,al
>004CAF65    je          004CAFB1
 004CAF67    mov         eax,dword ptr [ebp-8]
 004CAF6A    mov         edx,dword ptr ds:[4B1C7C];TCustomizeActionToolBar
 004CAF70    call        @AsClass
 004CAF75    mov         dword ptr [ebp-14],eax
 004CAF78    mov         eax,dword ptr [ebp-14]
 004CAF7B    cmp         dword ptr [eax+2C4],0;TCustomizeActionToolBar.FRootMenu:TCustomActionMenuBar
>004CAF82    je          004CAF9D
 004CAF84    mov         eax,dword ptr [ebp-0C]
 004CAF87    call        004BE5A0
 004CAF8C    mov         edx,dword ptr [ebp-14]
 004CAF8F    mov         edx,dword ptr [edx+2C4];TCustomizeActionToolBar.FRootMenu:TCustomActionMenuBar
 004CAF95    cmp         eax,dword ptr [edx+31C]
>004CAF9B    je          004CAFA7
 004CAF9D    mov         eax,[004C7438];TXPStyleMenuItem
 004CAFA2    mov         dword ptr [ebp-10],eax
>004CAFA5    jmp         004CAFD5
 004CAFA7    mov         eax,[004C818C];TXPStyleAddRemoveItem
 004CAFAC    mov         dword ptr [ebp-10],eax
>004CAFAF    jmp         004CAFD5
 004CAFB1    mov         eax,dword ptr [ebp-8]
 004CAFB4    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004CAFBA    call        @IsClass
 004CAFBF    test        al,al
>004CAFC1    je          004CAFCD
 004CAFC3    mov         eax,[004C7438];TXPStyleMenuItem
 004CAFC8    mov         dword ptr [ebp-10],eax
>004CAFCB    jmp         004CAFD5
 004CAFCD    mov         eax,[004C7ADC];TXPStyleButton
 004CAFD2    mov         dword ptr [ebp-10],eax
 004CAFD5    mov         eax,dword ptr [ebp-10]
 004CAFD8    mov         esp,ebp
 004CAFDA    pop         ebp
 004CAFDB    ret
end;*}

//004CAFDC
{*function sub_004CAFDC(?:?):?;
begin
 004CAFDC    push        ebp
 004CAFDD    mov         ebp,esp
 004CAFDF    add         esp,0FFFFFFF4
 004CAFE2    mov         dword ptr [ebp-8],edx
 004CAFE5    mov         dword ptr [ebp-4],eax
 004CAFE8    mov         eax,dword ptr [ebp-8]
 004CAFEB    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004CAFF1    call        @IsClass
 004CAFF6    test        al,al
>004CAFF8    je          004CB004
 004CAFFA    mov         eax,[004C7DD0];TXPStyleCustomizePopup
 004CAFFF    mov         dword ptr [ebp-0C],eax
>004CB002    jmp         004CB00C
 004CB004    mov         eax,[004C7730];TXPStylePopupMenu
 004CB009    mov         dword ptr [ebp-0C],eax
 004CB00C    mov         eax,dword ptr [ebp-0C]
 004CB00F    mov         esp,ebp
 004CB011    pop         ebp
 004CB012    ret
end;*}

//004CB014
{*function sub_004CB014:?;
begin
 004CB014    push        ebp
 004CB015    mov         ebp,esp
 004CB017    add         esp,0FFFFFFF8
 004CB01A    mov         dword ptr [ebp-4],eax
 004CB01D    mov         eax,[004C8008];TXPStyleToolScrollBtn
 004CB022    mov         dword ptr [ebp-8],eax
 004CB025    mov         eax,dword ptr [ebp-8]
 004CB028    pop         ecx
 004CB029    pop         ecx
 004CB02A    pop         ebp
 004CB02B    ret
end;*}

//004CB02C
{*procedure sub_004CB02C(?:?);
begin
 004CB02C    push        ebp
 004CB02D    mov         ebp,esp
 004CB02F    add         esp,0FFFFFFF8
 004CB032    mov         dword ptr [ebp-8],edx
 004CB035    mov         dword ptr [ebp-4],eax
 004CB038    mov         eax,dword ptr [ebp-8]
 004CB03B    mov         edx,4CB054;'XP Style'
 004CB040    call        @LStrAsg
 004CB045    pop         ecx
 004CB046    pop         ecx
 004CB047    pop         ebp
 004CB048    ret
end;*}

Initialization
//004CB0A4
{*
 004CB0A4    push        ebp
 004CB0A5    mov         ebp,esp
 004CB0A7    push        0
 004CB0A9    xor         eax,eax
 004CB0AB    push        ebp
 004CB0AC    push        4CB10B
 004CB0B1    push        dword ptr fs:[eax]
 004CB0B4    mov         dword ptr fs:[eax],esp
 004CB0B7    sub         dword ptr ds:[571E98],1
>004CB0BE    jae         004CB0F5
 004CB0C0    mov         dl,1
 004CB0C2    mov         eax,[004CADCC];TXPStyleActionBars
 004CB0C7    call        TObject.Create
 004CB0CC    mov         [00571E94],eax;XPStyle:TXPStyleActionBars
 004CB0D1    lea         edx,[ebp-4]
 004CB0D4    mov         eax,[00571E94];XPStyle:TXPStyleActionBars
 004CB0D9    mov         ecx,dword ptr [eax]
 004CB0DB    call        dword ptr [ecx+8]
 004CB0DE    mov         edx,dword ptr [ebp-4]
 004CB0E1    mov         eax,[0056DFE4];^DefaultActnBarStyle:AnsiString
 004CB0E6    call        @LStrAsg
 004CB0EB    mov         eax,[00571E94];XPStyle:TXPStyleActionBars
 004CB0F0    call        RegisterActnBarStyle
 004CB0F5    xor         eax,eax
 004CB0F7    pop         edx
 004CB0F8    pop         ecx
 004CB0F9    pop         ecx
 004CB0FA    mov         dword ptr fs:[eax],edx
 004CB0FD    push        4CB112
 004CB102    lea         eax,[ebp-4]
 004CB105    call        @LStrClr
 004CB10A    ret
>004CB10B    jmp         @HandleFinally
>004CB110    jmp         004CB102
 004CB112    pop         ecx
 004CB113    pop         ebp
 004CB114    ret
*}
Finalization
//004CB060
{*
 004CB060    push        ebp
 004CB061    mov         ebp,esp
 004CB063    xor         eax,eax
 004CB065    push        ebp
 004CB066    push        4CB09B
 004CB06B    push        dword ptr fs:[eax]
 004CB06E    mov         dword ptr fs:[eax],esp
 004CB071    inc         dword ptr ds:[571E98]
>004CB077    jne         004CB08D
 004CB079    mov         eax,[00571E94];XPStyle:TXPStyleActionBars
 004CB07E    call        UnRegisterActnBarStyle
 004CB083    mov         eax,[00571E94];XPStyle:TXPStyleActionBars
 004CB088    call        TObject.Free
 004CB08D    xor         eax,eax
 004CB08F    pop         edx
 004CB090    pop         ecx
 004CB091    pop         ecx
 004CB092    mov         dword ptr fs:[eax],edx
 004CB095    push        4CB0A2
 004CB09A    ret
>004CB09B    jmp         @HandleFinally
>004CB0A0    jmp         004CB09A
 004CB0A2    pop         ebp
 004CB0A3    ret
*}
end.