//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit20;

interface

uses
  SysUtils, Classes;

    function InitCommonControls:Boolean;//00437918
    procedure sub_00437920;//00437920
    //function sub_00437984(?:?):?;//00437984
    function ImageList_Create(CY:Integer; Flags:UINT; Initial:Integer; Grow:Integer):THandle; stdcall;//004379C8
    function ImageList_Destroy:BOOL; stdcall;//004379D0
    function ImageList_GetImageCount:Integer; stdcall;//004379D8
    function ImageList_Add(Image:HBITMAP; Mask:HBITMAP):Integer; stdcall;//004379E0
    function ImageList_ReplaceIcon(Index:Integer; Icon:HICON):Integer; stdcall;//004379E8
    function ImageList_SetBkColor(ClrBk:TColorRef):TColorRef; stdcall;//004379F0
    function ImageList_GetBkColor:TColorRef; stdcall;//004379F8
    //function sub_00437A00(?:THandle; ?:?):?;//00437A00
    //function sub_00437A28(?:?):?;//00437A28
    function ImageList_Draw(Index:Integer; Dest:HDC; X:Integer; Y:Integer; Style:UINT):BOOL; stdcall;//00437A44
    function ImageList_Replace(Index:Integer; Image:HBITMAP; Mask:HBITMAP):BOOL; stdcall;//00437A4C
    function ImageList_DrawEx(Index:Integer; Dest:HDC; X:Integer; Y:Integer; DX:Integer; DY:Integer; Bk:TColorRef; Fg:TColorRef; Style:Cardinal):BOOL; stdcall;//00437A54
    function ImageList_Remove(Index:Integer):BOOL; stdcall;//00437A5C
    function ImageList_BeginDrag(Track:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;//00437A64
    function ImageList_EndDrag:BOOL;//00437A6C
    function ImageList_DragEnter(X:Integer; Y:Integer):BOOL; stdcall;//00437A74
    function ImageList_DragLeave:BOOL; stdcall;//00437A7C
    function ImageList_DragMove(Y:Integer):BOOL; stdcall;//00437A84
    function ImageList_SetDragCursorImage(Drag:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;//00437A8C
    function ImageList_DragShowNolock:BOOL; stdcall;//00437A94
    function ImageList_GetDragImage(HotSpot:PPoint):THandle; stdcall;//00437A9C
    function ImageList_Read:THandle; stdcall;//00437AA4
    function ImageList_Write(Stream:IStream):BOOL; stdcall;//00437AAC
    function ImageList_GetIconSize(var CX:Integer; var CY:Integer):BOOL; stdcall;//00437AB4
    function ImageList_SetIconSize(CX:Integer; CY:Integer):BOOL; stdcall;//00437ABC
    //function sub_00437AC4(?:HWND; ?:?):?;//00437AC4
    //function sub_00437AF0(?:HWND; ?:?; ?:?):?;//00437AF0
    //function sub_00437B20(?:?):?;//00437B20
    //function sub_00437B48(?:?):?;//00437B48
    //function sub_00437B64(?:?; ?:Byte):?;//00437B64
    //function sub_00437B90(?:?; ?:?):?;//00437B90
    //function sub_00437BBC(?:?; ?:?):?;//00437BBC
    //function sub_00437BE8(?:?; ?:?):?;//00437BE8
    //function sub_00437C14(?:?):?;//00437C14
    //function sub_00437C3C(?:HWND; ?:?; ?:?):?;//00437C3C
    //function sub_00437C74(?:HWND; ?:?; ?:?):?;//00437C74
    //function sub_00437CA4(?:?; ?:?; ?:?; ?:?):?;//00437CA4
    //function sub_00437D00(?:HWND; ?:?):?;//00437D00
    //function sub_00437D2C(?:?; ?:?; ?:?):?;//00437D2C
    //function sub_00437D6C(?:HWND; ?:?; ?:?):?;//00437D6C
    //function sub_00437D9C(?:HWND; ?:?):?;//00437D9C
    //function sub_00437DC8(?:HWND):?;//00437DC8
    //function sub_00437DF0(?:HWND; ?:?; ?:?):?;//00437DF0
    //function sub_00437E20(?:HWND; ?:?; ?:?):?;//00437E20
    //function sub_00437E50(?:HWND; ?:?):?;//00437E50
    //function sub_00437E7C(?:HWND; ?:?):?;//00437E7C
    //function sub_00437EA8(?:HWND; ?:?; ?:?):?;//00437EA8
    //function sub_00437EE0(?:HWND; ?:?; ?:?):?;//00437EE0
    //function sub_00437F10(?:HWND; ?:?):?;//00437F10
    //function sub_00437F3C(?:HWND; ?:?):?;//00437F3C
    //function sub_00437F68(?:HWND):?;//00437F68
    //function sub_00437F90(?:HWND; ?:?):?;//00437F90
    //function sub_00437FBC(?:?; ?:?):?;//00437FBC
    //function sub_00437FF0(?:?; ?:?; ?:?; ?:?):?;//00437FF0
    //function sub_00438030(?:?; ?:?; ?:?):?;//00438030
    //function sub_00438060(?:HWND; ?:?):?;//00438060
    //procedure sub_00438094(?:HWND; ?:?; ?:?);//00438094
    //function sub_004380D4(?:?; ?:?; ?:?; ?:?):?;//004380D4
    procedure sub_00438114(?:HWND; ?:Integer);//00438114
    //procedure sub_00438138(?:?; ?:?; ?:?);//00438138
    //function sub_00438164(?:HWND; ?:?; ?:?):?;//00438164
    //function sub_00438194(?:HWND):?;//00438194
    //function sub_004381BC(?:HWND; ?:?):?;//004381BC
    //function sub_004381E8(?:HWND; ?:?; ?:?):?;//004381E8
    //function sub_00438248(?:HWND; ?:?; ?:?):?;//00438248
    //function sub_00438278(?:HWND; ?:Integer):?;//00438278
    //function sub_004382A4(?:HWND):?;//004382A4

implementation

//00437918
function comctl32.InitCommonControls:Boolean;
begin
{*
 00437918    jmp         dword ptr ds:[61C7DC]
*}
end;

//00437920
procedure sub_00437920;
begin
{*
 00437920    push        ebp
 00437921    mov         ebp,esp
 00437923    cmp         dword ptr ds:[571B24],0;gvar_00571B24:HMODULE
>0043792A    jne         00437959
 0043792C    push        43795C;'comctl32.dll'
 00437931    call        kernel32.GetModuleHandleA
 00437936    mov         [00571B24],eax;gvar_00571B24:HMODULE
 0043793B    cmp         dword ptr ds:[571B24],0;gvar_00571B24:HMODULE
>00437942    je          00437959
 00437944    push        43796C;'InitCommonControlsEx'
 00437949    mov         eax,[00571B24];0x0 gvar_00571B24:HMODULE
 0043794E    push        eax
 0043794F    call        kernel32.GetProcAddress
 00437954    mov         [00571B28],eax;gvar_00571B28:Pointer
 00437959    pop         ebp
 0043795A    ret
*}
end;

//00437984
{*function sub_00437984(?:?):?;
begin
 00437984    push        ebp
 00437985    mov         ebp,esp
 00437987    add         esp,0FFFFFFF8
 0043798A    mov         dword ptr [ebp-4],eax
 0043798D    cmp         dword ptr ds:[571B24],0;gvar_00571B24:HMODULE
>00437994    jne         0043799B
 00437996    call        00437920
 0043799B    cmp         dword ptr ds:[571B28],0;gvar_00571B28:Pointer
>004379A2    je          004379B2
 004379A4    mov         eax,dword ptr [ebp-4]
 004379A7    push        eax
 004379A8    call        dword ptr ds:[571B28]
 004379AE    test        eax,eax
>004379B0    jne         004379B6
 004379B2    xor         eax,eax
>004379B4    jmp         004379B8
 004379B6    mov         al,1
 004379B8    neg         al
 004379BA    sbb         eax,eax
 004379BC    mov         dword ptr [ebp-8],eax
 004379BF    mov         eax,dword ptr [ebp-8]
 004379C2    pop         ecx
 004379C3    pop         ecx
 004379C4    pop         ebp
 004379C5    ret
end;*}

//004379C8
function comctl32.ImageList_Create(CY:Integer; Flags:UINT; Initial:Integer; Grow:Integer):THandle; stdcall;
begin
{*
 004379C8    jmp         dword ptr ds:[61C7D8]
*}
end;

//004379D0
function comctl32.ImageList_Destroy:BOOL; stdcall;
begin
{*
 004379D0    jmp         dword ptr ds:[61C7D4]
*}
end;

//004379D8
function comctl32.ImageList_GetImageCount:Integer; stdcall;
begin
{*
 004379D8    jmp         dword ptr ds:[61C7D0]
*}
end;

//004379E0
function comctl32.ImageList_Add(Image:HBITMAP; Mask:HBITMAP):Integer; stdcall;
begin
{*
 004379E0    jmp         dword ptr ds:[61C7CC]
*}
end;

//004379E8
function comctl32.ImageList_ReplaceIcon(Index:Integer; Icon:HICON):Integer; stdcall;
begin
{*
 004379E8    jmp         dword ptr ds:[61C7C8]
*}
end;

//004379F0
function comctl32.ImageList_SetBkColor(ClrBk:TColorRef):TColorRef; stdcall;
begin
{*
 004379F0    jmp         dword ptr ds:[61C7C4]
*}
end;

//004379F8
function comctl32.ImageList_GetBkColor:TColorRef; stdcall;
begin
{*
 004379F8    jmp         dword ptr ds:[61C7C0]
*}
end;

//00437A00
{*function sub_00437A00(?:THandle; ?:?):?;
begin
 00437A00    push        ebp
 00437A01    mov         ebp,esp
 00437A03    add         esp,0FFFFFFF4
 00437A06    mov         dword ptr [ebp-8],edx
 00437A09    mov         dword ptr [ebp-4],eax
 00437A0C    mov         eax,dword ptr [ebp-8]
 00437A0F    push        eax
 00437A10    push        0FF
 00437A12    mov         eax,dword ptr [ebp-4]
 00437A15    push        eax
 00437A16    call        comctl32.ImageList_ReplaceIcon
 00437A1B    mov         dword ptr [ebp-0C],eax
 00437A1E    mov         eax,dword ptr [ebp-0C]
 00437A21    mov         esp,ebp
 00437A23    pop         ebp
 00437A24    ret
end;*}

//00437A28
{*function sub_00437A28(?:?):?;
begin
 00437A28    push        ebp
 00437A29    mov         ebp,esp
 00437A2B    add         esp,0FFFFFFF8
 00437A2E    mov         dword ptr [ebp-4],eax
 00437A31    mov         eax,dword ptr [ebp-4]
 00437A34    shl         eax,8
 00437A37    mov         dword ptr [ebp-8],eax
 00437A3A    mov         eax,dword ptr [ebp-8]
 00437A3D    pop         ecx
 00437A3E    pop         ecx
 00437A3F    pop         ebp
 00437A40    ret
end;*}

//00437A44
function comctl32.ImageList_Draw(Index:Integer; Dest:HDC; X:Integer; Y:Integer; Style:UINT):BOOL; stdcall;
begin
{*
 00437A44    jmp         dword ptr ds:[61C7BC]
*}
end;

//00437A4C
function comctl32.ImageList_Replace(Index:Integer; Image:HBITMAP; Mask:HBITMAP):BOOL; stdcall;
begin
{*
 00437A4C    jmp         dword ptr ds:[61C7B8]
*}
end;

//00437A54
function comctl32.ImageList_DrawEx(Index:Integer; Dest:HDC; X:Integer; Y:Integer; DX:Integer; DY:Integer; Bk:TColorRef; Fg:TColorRef; Style:Cardinal):BOOL; stdcall;
begin
{*
 00437A54    jmp         dword ptr ds:[61C7B4]
*}
end;

//00437A5C
function comctl32.ImageList_Remove(Index:Integer):BOOL; stdcall;
begin
{*
 00437A5C    jmp         dword ptr ds:[61C7B0]
*}
end;

//00437A64
function comctl32.ImageList_BeginDrag(Track:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;
begin
{*
 00437A64    jmp         dword ptr ds:[61C7AC]
*}
end;

//00437A6C
function comctl32.ImageList_EndDrag:BOOL;
begin
{*
 00437A6C    jmp         dword ptr ds:[61C7A8]
*}
end;

//00437A74
function comctl32.ImageList_DragEnter(X:Integer; Y:Integer):BOOL; stdcall;
begin
{*
 00437A74    jmp         dword ptr ds:[61C7A4]
*}
end;

//00437A7C
function comctl32.ImageList_DragLeave:BOOL; stdcall;
begin
{*
 00437A7C    jmp         dword ptr ds:[61C7A0]
*}
end;

//00437A84
function comctl32.ImageList_DragMove(Y:Integer):BOOL; stdcall;
begin
{*
 00437A84    jmp         dword ptr ds:[61C79C]
*}
end;

//00437A8C
function comctl32.ImageList_SetDragCursorImage(Drag:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;
begin
{*
 00437A8C    jmp         dword ptr ds:[61C798]
*}
end;

//00437A94
function comctl32.ImageList_DragShowNolock:BOOL; stdcall;
begin
{*
 00437A94    jmp         dword ptr ds:[61C794]
*}
end;

//00437A9C
function comctl32.ImageList_GetDragImage(HotSpot:PPoint):THandle; stdcall;
begin
{*
 00437A9C    jmp         dword ptr ds:[61C790]
*}
end;

//00437AA4
function comctl32.ImageList_Read:THandle; stdcall;
begin
{*
 00437AA4    jmp         dword ptr ds:[61C78C]
*}
end;

//00437AAC
function comctl32.ImageList_Write(Stream:IStream):BOOL; stdcall;
begin
{*
 00437AAC    jmp         dword ptr ds:[61C788]
*}
end;

//00437AB4
function comctl32.ImageList_GetIconSize(var CX:Integer; var CY:Integer):BOOL; stdcall;
begin
{*
 00437AB4    jmp         dword ptr ds:[61C784]
*}
end;

//00437ABC
function comctl32.ImageList_SetIconSize(CX:Integer; CY:Integer):BOOL; stdcall;
begin
{*
 00437ABC    jmp         dword ptr ds:[61C780]
*}
end;

//00437AC4
{*function sub_00437AC4(?:HWND; ?:?):?;
begin
 00437AC4    push        ebp
 00437AC5    mov         ebp,esp
 00437AC7    add         esp,0FFFFFFF4
 00437ACA    mov         dword ptr [ebp-8],edx
 00437ACD    mov         dword ptr [ebp-4],eax
 00437AD0    mov         eax,dword ptr [ebp-8]
 00437AD3    push        eax
 00437AD4    push        0
 00437AD6    push        1001
 00437ADB    mov         eax,dword ptr [ebp-4]
 00437ADE    push        eax
 00437ADF    call        user32.SendMessageA
 00437AE4    mov         dword ptr [ebp-0C],eax
 00437AE7    mov         eax,dword ptr [ebp-0C]
 00437AEA    mov         esp,ebp
 00437AEC    pop         ebp
 00437AED    ret
end;*}

//00437AF0
{*function sub_00437AF0(?:HWND; ?:?; ?:?):?;
begin
 00437AF0    push        ebp
 00437AF1    mov         ebp,esp
 00437AF3    add         esp,0FFFFFFF0
 00437AF6    mov         dword ptr [ebp-0C],ecx
 00437AF9    mov         dword ptr [ebp-8],edx
 00437AFC    mov         dword ptr [ebp-4],eax
 00437AFF    mov         eax,dword ptr [ebp-8]
 00437B02    push        eax
 00437B03    mov         eax,dword ptr [ebp-0C]
 00437B06    push        eax
 00437B07    push        1003
 00437B0C    mov         eax,dword ptr [ebp-4]
 00437B0F    push        eax
 00437B10    call        user32.SendMessageA
 00437B15    mov         dword ptr [ebp-10],eax
 00437B18    mov         eax,dword ptr [ebp-10]
 00437B1B    mov         esp,ebp
 00437B1D    pop         ebp
 00437B1E    ret
end;*}

//00437B20
{*function sub_00437B20(?:?):?;
begin
 00437B20    push        ebp
 00437B21    mov         ebp,esp
 00437B23    add         esp,0FFFFFFF8
 00437B26    mov         dword ptr [ebp-4],eax
 00437B29    push        0
 00437B2B    push        0
 00437B2D    push        1004
 00437B32    mov         eax,dword ptr [ebp-4]
 00437B35    push        eax
 00437B36    call        user32.SendMessageA
 00437B3B    mov         dword ptr [ebp-8],eax
 00437B3E    mov         eax,dword ptr [ebp-8]
 00437B41    pop         ecx
 00437B42    pop         ecx
 00437B43    pop         ebp
 00437B44    ret
end;*}

//00437B48
{*function sub_00437B48(?:?):?;
begin
 00437B48    push        ebp
 00437B49    mov         ebp,esp
 00437B4B    add         esp,0FFFFFFF8
 00437B4E    mov         dword ptr [ebp-4],eax
 00437B51    mov         eax,dword ptr [ebp-4]
 00437B54    shl         eax,0C
 00437B57    mov         dword ptr [ebp-8],eax
 00437B5A    mov         eax,dword ptr [ebp-8]
 00437B5D    pop         ecx
 00437B5E    pop         ecx
 00437B5F    pop         ebp
 00437B60    ret
end;*}

//00437B64
{*function sub_00437B64(?:?; ?:Byte):?;
begin
 00437B64    push        ebp
 00437B65    mov         ebp,esp
 00437B67    add         esp,0FFFFFFF4
 00437B6A    mov         dword ptr [ebp-8],edx
 00437B6D    mov         dword ptr [ebp-4],eax
 00437B70    mov         eax,dword ptr [ebp-8]
 00437B73    push        eax
 00437B74    push        0
 00437B76    push        1005
 00437B7B    mov         eax,dword ptr [ebp-4]
 00437B7E    push        eax
 00437B7F    call        user32.SendMessageA
 00437B84    mov         dword ptr [ebp-0C],eax
 00437B87    mov         eax,dword ptr [ebp-0C]
 00437B8A    mov         esp,ebp
 00437B8C    pop         ebp
 00437B8D    ret
end;*}

//00437B90
{*function sub_00437B90(?:?; ?:?):?;
begin
 00437B90    push        ebp
 00437B91    mov         ebp,esp
 00437B93    add         esp,0FFFFFFF4
 00437B96    mov         dword ptr [ebp-8],edx
 00437B99    mov         dword ptr [ebp-4],eax
 00437B9C    mov         eax,dword ptr [ebp-8]
 00437B9F    push        eax
 00437BA0    push        0
 00437BA2    push        1006
 00437BA7    mov         eax,dword ptr [ebp-4]
 00437BAA    push        eax
 00437BAB    call        user32.SendMessageA
 00437BB0    mov         dword ptr [ebp-0C],eax
 00437BB3    mov         eax,dword ptr [ebp-0C]
 00437BB6    mov         esp,ebp
 00437BB8    pop         ebp
 00437BB9    ret
end;*}

//00437BBC
{*function sub_00437BBC(?:?; ?:?):?;
begin
 00437BBC    push        ebp
 00437BBD    mov         ebp,esp
 00437BBF    add         esp,0FFFFFFF4
 00437BC2    mov         dword ptr [ebp-8],edx
 00437BC5    mov         dword ptr [ebp-4],eax
 00437BC8    mov         eax,dword ptr [ebp-8]
 00437BCB    push        eax
 00437BCC    push        0
 00437BCE    push        1007
 00437BD3    mov         eax,dword ptr [ebp-4]
 00437BD6    push        eax
 00437BD7    call        user32.SendMessageA
 00437BDC    mov         dword ptr [ebp-0C],eax
 00437BDF    mov         eax,dword ptr [ebp-0C]
 00437BE2    mov         esp,ebp
 00437BE4    pop         ebp
 00437BE5    ret
end;*}

//00437BE8
{*function sub_00437BE8(?:?; ?:?):?;
begin
 00437BE8    push        ebp
 00437BE9    mov         ebp,esp
 00437BEB    add         esp,0FFFFFFF4
 00437BEE    mov         dword ptr [ebp-8],edx
 00437BF1    mov         dword ptr [ebp-4],eax
 00437BF4    push        0
 00437BF6    mov         eax,dword ptr [ebp-8]
 00437BF9    push        eax
 00437BFA    push        1008
 00437BFF    mov         eax,dword ptr [ebp-4]
 00437C02    push        eax
 00437C03    call        user32.SendMessageA
 00437C08    mov         dword ptr [ebp-0C],eax
 00437C0B    mov         eax,dword ptr [ebp-0C]
 00437C0E    mov         esp,ebp
 00437C10    pop         ebp
 00437C11    ret
end;*}

//00437C14
{*function sub_00437C14(?:?):?;
begin
 00437C14    push        ebp
 00437C15    mov         ebp,esp
 00437C17    add         esp,0FFFFFFF8
 00437C1A    mov         dword ptr [ebp-4],eax
 00437C1D    push        0
 00437C1F    push        0
 00437C21    push        1009
 00437C26    mov         eax,dword ptr [ebp-4]
 00437C29    push        eax
 00437C2A    call        user32.SendMessageA
 00437C2F    mov         dword ptr [ebp-8],eax
 00437C32    mov         eax,dword ptr [ebp-8]
 00437C35    pop         ecx
 00437C36    pop         ecx
 00437C37    pop         ebp
 00437C38    ret
end;*}

//00437C3C
{*function sub_00437C3C(?:HWND; ?:?; ?:?):?;
begin
 00437C3C    push        ebp
 00437C3D    mov         ebp,esp
 00437C3F    add         esp,0FFFFFFF0
 00437C42    mov         dword ptr [ebp-0C],ecx
 00437C45    mov         dword ptr [ebp-8],edx
 00437C48    mov         dword ptr [ebp-4],eax
 00437C4B    xor         edx,edx
 00437C4D    mov         ax,word ptr [ebp-0C]
 00437C51    call        0040845C
 00437C56    push        eax
 00437C57    mov         eax,dword ptr [ebp-8]
 00437C5A    push        eax
 00437C5B    push        100C
 00437C60    mov         eax,dword ptr [ebp-4]
 00437C63    push        eax
 00437C64    call        user32.SendMessageA
 00437C69    mov         dword ptr [ebp-10],eax
 00437C6C    mov         eax,dword ptr [ebp-10]
 00437C6F    mov         esp,ebp
 00437C71    pop         ebp
 00437C72    ret
end;*}

//00437C74
{*function sub_00437C74(?:HWND; ?:?; ?:?):?;
begin
 00437C74    push        ebp
 00437C75    mov         ebp,esp
 00437C77    add         esp,0FFFFFFF0
 00437C7A    mov         dword ptr [ebp-0C],ecx
 00437C7D    mov         dword ptr [ebp-8],edx
 00437C80    mov         dword ptr [ebp-4],eax
 00437C83    mov         eax,dword ptr [ebp-0C]
 00437C86    push        eax
 00437C87    mov         eax,dword ptr [ebp-8]
 00437C8A    push        eax
 00437C8B    push        100D
 00437C90    mov         eax,dword ptr [ebp-4]
 00437C93    push        eax
 00437C94    call        user32.SendMessageA
 00437C99    mov         dword ptr [ebp-10],eax
 00437C9C    mov         eax,dword ptr [ebp-10]
 00437C9F    mov         esp,ebp
 00437CA1    pop         ebp
 00437CA2    ret
end;*}

//00437CA4
{*function sub_00437CA4(?:?; ?:?; ?:?; ?:?):?;
begin
 00437CA4    push        ebp
 00437CA5    mov         ebp,esp
 00437CA7    add         esp,0FFFFFFF0
 00437CAA    mov         dword ptr [ebp-0C],ecx
 00437CAD    mov         dword ptr [ebp-8],edx
 00437CB0    mov         dword ptr [ebp-4],eax
 00437CB3    mov         eax,dword ptr [ebp-0C]
 00437CB6    test        eax,eax
>00437CB8    je          00437CDD
 00437CBA    mov         eax,dword ptr [ebp-0C]
 00437CBD    mov         edx,dword ptr [ebp+8]
 00437CC0    mov         dword ptr [eax],edx
 00437CC2    mov         eax,dword ptr [ebp-0C]
 00437CC5    push        eax
 00437CC6    mov         eax,dword ptr [ebp-8]
 00437CC9    push        eax
 00437CCA    push        100E
 00437CCF    mov         eax,dword ptr [ebp-4]
 00437CD2    push        eax
 00437CD3    call        user32.SendMessageA
 00437CD8    mov         dword ptr [ebp-10],eax
>00437CDB    jmp         00437CF4
 00437CDD    push        0
 00437CDF    mov         eax,dword ptr [ebp-8]
 00437CE2    push        eax
 00437CE3    push        100E
 00437CE8    mov         eax,dword ptr [ebp-4]
 00437CEB    push        eax
 00437CEC    call        user32.SendMessageA
 00437CF1    mov         dword ptr [ebp-10],eax
 00437CF4    mov         eax,dword ptr [ebp-10]
 00437CF7    mov         esp,ebp
 00437CF9    pop         ebp
 00437CFA    ret         4
end;*}

//00437D00
{*function sub_00437D00(?:HWND; ?:?):?;
begin
 00437D00    push        ebp
 00437D01    mov         ebp,esp
 00437D03    add         esp,0FFFFFFF4
 00437D06    mov         dword ptr [ebp-8],edx
 00437D09    mov         dword ptr [ebp-4],eax
 00437D0C    mov         eax,dword ptr [ebp-8]
 00437D0F    push        eax
 00437D10    push        0
 00437D12    push        1012
 00437D17    mov         eax,dword ptr [ebp-4]
 00437D1A    push        eax
 00437D1B    call        user32.SendMessageA
 00437D20    mov         dword ptr [ebp-0C],eax
 00437D23    mov         eax,dword ptr [ebp-0C]
 00437D26    mov         esp,ebp
 00437D28    pop         ebp
 00437D29    ret
end;*}

//00437D2C
{*function sub_00437D2C(?:?; ?:?; ?:?):?;
begin
 00437D2C    push        ebp
 00437D2D    mov         ebp,esp
 00437D2F    add         esp,0FFFFFFF0
 00437D32    mov         dword ptr [ebp-0C],ecx
 00437D35    mov         dword ptr [ebp-8],edx
 00437D38    mov         dword ptr [ebp-4],eax
 00437D3B    xor         edx,edx
 00437D3D    mov         ax,word ptr [ebp-0C]
 00437D41    call        0040845C
 00437D46    push        eax
 00437D47    mov         eax,dword ptr [ebp-8]
 00437D4A    push        eax
 00437D4B    push        1013
 00437D50    mov         eax,dword ptr [ebp-4]
 00437D53    push        eax
 00437D54    call        user32.SendMessageA
 00437D59    test        eax,eax
 00437D5B    setne       al
 00437D5E    neg         al
 00437D60    sbb         eax,eax
 00437D62    mov         dword ptr [ebp-10],eax
 00437D65    mov         eax,dword ptr [ebp-10]
 00437D68    mov         esp,ebp
 00437D6A    pop         ebp
 00437D6B    ret
end;*}

//00437D6C
{*function sub_00437D6C(?:HWND; ?:?; ?:?):?;
begin
 00437D6C    push        ebp
 00437D6D    mov         ebp,esp
 00437D6F    add         esp,0FFFFFFF0
 00437D72    mov         dword ptr [ebp-0C],ecx
 00437D75    mov         dword ptr [ebp-8],edx
 00437D78    mov         dword ptr [ebp-4],eax
 00437D7B    mov         eax,dword ptr [ebp-0C]
 00437D7E    push        eax
 00437D7F    mov         eax,dword ptr [ebp-8]
 00437D82    push        eax
 00437D83    push        1015
 00437D88    mov         eax,dword ptr [ebp-4]
 00437D8B    push        eax
 00437D8C    call        user32.SendMessageA
 00437D91    mov         dword ptr [ebp-10],eax
 00437D94    mov         eax,dword ptr [ebp-10]
 00437D97    mov         esp,ebp
 00437D99    pop         ebp
 00437D9A    ret
end;*}

//00437D9C
{*function sub_00437D9C(?:HWND; ?:?):?;
begin
 00437D9C    push        ebp
 00437D9D    mov         ebp,esp
 00437D9F    add         esp,0FFFFFFF4
 00437DA2    mov         dword ptr [ebp-8],edx
 00437DA5    mov         dword ptr [ebp-4],eax
 00437DA8    push        0
 00437DAA    mov         eax,dword ptr [ebp-8]
 00437DAD    push        eax
 00437DAE    push        1016
 00437DB3    mov         eax,dword ptr [ebp-4]
 00437DB6    push        eax
 00437DB7    call        user32.SendMessageA
 00437DBC    mov         dword ptr [ebp-0C],eax
 00437DBF    mov         eax,dword ptr [ebp-0C]
 00437DC2    mov         esp,ebp
 00437DC4    pop         ebp
 00437DC5    ret
end;*}

//00437DC8
{*function sub_00437DC8(?:HWND):?;
begin
 00437DC8    push        ebp
 00437DC9    mov         ebp,esp
 00437DCB    add         esp,0FFFFFFF8
 00437DCE    mov         dword ptr [ebp-4],eax
 00437DD1    push        0
 00437DD3    push        0
 00437DD5    push        1018
 00437DDA    mov         eax,dword ptr [ebp-4]
 00437DDD    push        eax
 00437DDE    call        user32.SendMessageA
 00437DE3    mov         dword ptr [ebp-8],eax
 00437DE6    mov         eax,dword ptr [ebp-8]
 00437DE9    pop         ecx
 00437DEA    pop         ecx
 00437DEB    pop         ebp
 00437DEC    ret
end;*}

//00437DF0
{*function sub_00437DF0(?:HWND; ?:?; ?:?):?;
begin
 00437DF0    push        ebp
 00437DF1    mov         ebp,esp
 00437DF3    add         esp,0FFFFFFF0
 00437DF6    mov         dword ptr [ebp-0C],ecx
 00437DF9    mov         dword ptr [ebp-8],edx
 00437DFC    mov         dword ptr [ebp-4],eax
 00437DFF    mov         eax,dword ptr [ebp-0C]
 00437E02    push        eax
 00437E03    mov         eax,dword ptr [ebp-8]
 00437E06    push        eax
 00437E07    push        101A
 00437E0C    mov         eax,dword ptr [ebp-4]
 00437E0F    push        eax
 00437E10    call        user32.SendMessageA
 00437E15    mov         dword ptr [ebp-10],eax
 00437E18    mov         eax,dword ptr [ebp-10]
 00437E1B    mov         esp,ebp
 00437E1D    pop         ebp
 00437E1E    ret
end;*}

//00437E20
{*function sub_00437E20(?:HWND; ?:?; ?:?):?;
begin
 00437E20    push        ebp
 00437E21    mov         ebp,esp
 00437E23    add         esp,0FFFFFFF0
 00437E26    mov         dword ptr [ebp-0C],ecx
 00437E29    mov         dword ptr [ebp-8],edx
 00437E2C    mov         dword ptr [ebp-4],eax
 00437E2F    mov         eax,dword ptr [ebp-0C]
 00437E32    push        eax
 00437E33    mov         eax,dword ptr [ebp-8]
 00437E36    push        eax
 00437E37    push        101B
 00437E3C    mov         eax,dword ptr [ebp-4]
 00437E3F    push        eax
 00437E40    call        user32.SendMessageA
 00437E45    mov         dword ptr [ebp-10],eax
 00437E48    mov         eax,dword ptr [ebp-10]
 00437E4B    mov         esp,ebp
 00437E4D    pop         ebp
 00437E4E    ret
end;*}

//00437E50
{*function sub_00437E50(?:HWND; ?:?):?;
begin
 00437E50    push        ebp
 00437E51    mov         ebp,esp
 00437E53    add         esp,0FFFFFFF4
 00437E56    mov         dword ptr [ebp-8],edx
 00437E59    mov         dword ptr [ebp-4],eax
 00437E5C    push        0
 00437E5E    mov         eax,dword ptr [ebp-8]
 00437E61    push        eax
 00437E62    push        101C
 00437E67    mov         eax,dword ptr [ebp-4]
 00437E6A    push        eax
 00437E6B    call        user32.SendMessageA
 00437E70    mov         dword ptr [ebp-0C],eax
 00437E73    mov         eax,dword ptr [ebp-0C]
 00437E76    mov         esp,ebp
 00437E78    pop         ebp
 00437E79    ret
end;*}

//00437E7C
{*function sub_00437E7C(?:HWND; ?:?):?;
begin
 00437E7C    push        ebp
 00437E7D    mov         ebp,esp
 00437E7F    add         esp,0FFFFFFF4
 00437E82    mov         dword ptr [ebp-8],edx
 00437E85    mov         dword ptr [ebp-4],eax
 00437E88    push        0
 00437E8A    mov         eax,dword ptr [ebp-8]
 00437E8D    push        eax
 00437E8E    push        101D
 00437E93    mov         eax,dword ptr [ebp-4]
 00437E96    push        eax
 00437E97    call        user32.SendMessageA
 00437E9C    mov         dword ptr [ebp-0C],eax
 00437E9F    mov         eax,dword ptr [ebp-0C]
 00437EA2    mov         esp,ebp
 00437EA4    pop         ebp
 00437EA5    ret
end;*}

//00437EA8
{*function sub_00437EA8(?:HWND; ?:?; ?:?):?;
begin
 00437EA8    push        ebp
 00437EA9    mov         ebp,esp
 00437EAB    add         esp,0FFFFFFF0
 00437EAE    mov         dword ptr [ebp-0C],ecx
 00437EB1    mov         dword ptr [ebp-8],edx
 00437EB4    mov         dword ptr [ebp-4],eax
 00437EB7    xor         edx,edx
 00437EB9    mov         ax,word ptr [ebp-0C]
 00437EBD    call        0040845C
 00437EC2    push        eax
 00437EC3    mov         eax,dword ptr [ebp-8]
 00437EC6    push        eax
 00437EC7    push        101E
 00437ECC    mov         eax,dword ptr [ebp-4]
 00437ECF    push        eax
 00437ED0    call        user32.SendMessageA
 00437ED5    mov         dword ptr [ebp-10],eax
 00437ED8    mov         eax,dword ptr [ebp-10]
 00437EDB    mov         esp,ebp
 00437EDD    pop         ebp
 00437EDE    ret
end;*}

//00437EE0
{*function sub_00437EE0(?:HWND; ?:?; ?:?):?;
begin
 00437EE0    push        ebp
 00437EE1    mov         ebp,esp
 00437EE3    add         esp,0FFFFFFF0
 00437EE6    mov         dword ptr [ebp-0C],ecx
 00437EE9    mov         dword ptr [ebp-8],edx
 00437EEC    mov         dword ptr [ebp-4],eax
 00437EEF    mov         eax,dword ptr [ebp-0C]
 00437EF2    push        eax
 00437EF3    mov         eax,dword ptr [ebp-8]
 00437EF6    push        eax
 00437EF7    push        1021
 00437EFC    mov         eax,dword ptr [ebp-4]
 00437EFF    push        eax
 00437F00    call        user32.SendMessageA
 00437F05    mov         dword ptr [ebp-10],eax
 00437F08    mov         eax,dword ptr [ebp-10]
 00437F0B    mov         esp,ebp
 00437F0D    pop         ebp
 00437F0E    ret
end;*}

//00437F10
{*function sub_00437F10(?:HWND; ?:?):?;
begin
 00437F10    push        ebp
 00437F11    mov         ebp,esp
 00437F13    add         esp,0FFFFFFF4
 00437F16    mov         dword ptr [ebp-8],edx
 00437F19    mov         dword ptr [ebp-4],eax
 00437F1C    mov         eax,dword ptr [ebp-8]
 00437F1F    push        eax
 00437F20    push        0
 00437F22    push        1024
 00437F27    mov         eax,dword ptr [ebp-4]
 00437F2A    push        eax
 00437F2B    call        user32.SendMessageA
 00437F30    mov         dword ptr [ebp-0C],eax
 00437F33    mov         eax,dword ptr [ebp-0C]
 00437F36    mov         esp,ebp
 00437F38    pop         ebp
 00437F39    ret
end;*}

//00437F3C
{*function sub_00437F3C(?:HWND; ?:?):?;
begin
 00437F3C    push        ebp
 00437F3D    mov         ebp,esp
 00437F3F    add         esp,0FFFFFFF4
 00437F42    mov         dword ptr [ebp-8],edx
 00437F45    mov         dword ptr [ebp-4],eax
 00437F48    mov         eax,dword ptr [ebp-8]
 00437F4B    push        eax
 00437F4C    push        0
 00437F4E    push        1026
 00437F53    mov         eax,dword ptr [ebp-4]
 00437F56    push        eax
 00437F57    call        user32.SendMessageA
 00437F5C    mov         dword ptr [ebp-0C],eax
 00437F5F    mov         eax,dword ptr [ebp-0C]
 00437F62    mov         esp,ebp
 00437F64    pop         ebp
 00437F65    ret
end;*}

//00437F68
{*function sub_00437F68(?:HWND):?;
begin
 00437F68    push        ebp
 00437F69    mov         ebp,esp
 00437F6B    add         esp,0FFFFFFF8
 00437F6E    mov         dword ptr [ebp-4],eax
 00437F71    push        0
 00437F73    push        0
 00437F75    push        1027
 00437F7A    mov         eax,dword ptr [ebp-4]
 00437F7D    push        eax
 00437F7E    call        user32.SendMessageA
 00437F83    mov         dword ptr [ebp-8],eax
 00437F86    mov         eax,dword ptr [ebp-8]
 00437F89    pop         ecx
 00437F8A    pop         ecx
 00437F8B    pop         ebp
 00437F8C    ret
end;*}

//00437F90
{*function sub_00437F90(?:HWND; ?:?):?;
begin
 00437F90    push        ebp
 00437F91    mov         ebp,esp
 00437F93    add         esp,0FFFFFFF4
 00437F96    mov         dword ptr [ebp-8],edx
 00437F99    mov         dword ptr [ebp-4],eax
 00437F9C    mov         eax,dword ptr [ebp-8]
 00437F9F    push        eax
 00437FA0    push        0
 00437FA2    push        1029
 00437FA7    mov         eax,dword ptr [ebp-4]
 00437FAA    push        eax
 00437FAB    call        user32.SendMessageA
 00437FB0    mov         dword ptr [ebp-0C],eax
 00437FB3    mov         eax,dword ptr [ebp-0C]
 00437FB6    mov         esp,ebp
 00437FB8    pop         ebp
 00437FB9    ret
end;*}

//00437FBC
{*function sub_00437FBC(?:?; ?:?):?;
begin
 00437FBC    push        ebp
 00437FBD    mov         ebp,esp
 00437FBF    add         esp,0FFFFFFF4
 00437FC2    mov         dword ptr [ebp-8],edx
 00437FC5    mov         dword ptr [ebp-4],eax
 00437FC8    push        0
 00437FCA    mov         eax,dword ptr [ebp-8]
 00437FCD    push        eax
 00437FCE    push        102A
 00437FD3    mov         eax,dword ptr [ebp-4]
 00437FD6    push        eax
 00437FD7    call        user32.SendMessageA
 00437FDC    test        eax,eax
 00437FDE    setne       al
 00437FE1    neg         al
 00437FE3    sbb         eax,eax
 00437FE5    mov         dword ptr [ebp-0C],eax
 00437FE8    mov         eax,dword ptr [ebp-0C]
 00437FEB    mov         esp,ebp
 00437FED    pop         ebp
 00437FEE    ret
end;*}

//00437FF0
{*function sub_00437FF0(?:?; ?:?; ?:?; ?:?):?;
begin
 00437FF0    push        ebp
 00437FF1    mov         ebp,esp
 00437FF3    add         esp,0FFFFFFC8
 00437FF6    mov         dword ptr [ebp-0C],ecx
 00437FF9    mov         dword ptr [ebp-8],edx
 00437FFC    mov         dword ptr [ebp-4],eax
 00437FFF    mov         eax,dword ptr [ebp+8]
 00438002    mov         dword ptr [ebp-28],eax
 00438005    mov         eax,dword ptr [ebp-0C]
 00438008    mov         dword ptr [ebp-2C],eax
 0043800B    lea         eax,[ebp-38]
 0043800E    push        eax
 0043800F    mov         eax,dword ptr [ebp-8]
 00438012    push        eax
 00438013    push        102B
 00438018    mov         eax,dword ptr [ebp-4]
 0043801B    push        eax
 0043801C    call        user32.SendMessageA
 00438021    mov         dword ptr [ebp-10],eax
 00438024    mov         eax,dword ptr [ebp-10]
 00438027    mov         esp,ebp
 00438029    pop         ebp
 0043802A    ret         4
end;*}

//00438030
{*function sub_00438030(?:?; ?:?; ?:?):?;
begin
 00438030    push        ebp
 00438031    mov         ebp,esp
 00438033    add         esp,0FFFFFFF0
 00438036    mov         dword ptr [ebp-0C],ecx
 00438039    mov         dword ptr [ebp-8],edx
 0043803C    mov         dword ptr [ebp-4],eax
 0043803F    mov         eax,dword ptr [ebp-0C]
 00438042    push        eax
 00438043    mov         eax,dword ptr [ebp-8]
 00438046    push        eax
 00438047    push        102C
 0043804C    mov         eax,dword ptr [ebp-4]
 0043804F    push        eax
 00438050    call        user32.SendMessageA
 00438055    mov         dword ptr [ebp-10],eax
 00438058    mov         eax,dword ptr [ebp-10]
 0043805B    mov         esp,ebp
 0043805D    pop         ebp
 0043805E    ret
end;*}

//00438060
{*function sub_00438060(?:HWND; ?:?):?;
begin
 00438060    push        ebp
 00438061    mov         ebp,esp
 00438063    add         esp,0FFFFFFF4
 00438066    mov         dword ptr [ebp-8],edx
 00438069    mov         dword ptr [ebp-4],eax
 0043806C    push        0F000
 00438071    mov         eax,dword ptr [ebp-8]
 00438074    push        eax
 00438075    push        102C
 0043807A    mov         eax,dword ptr [ebp-4]
 0043807D    push        eax
 0043807E    call        user32.SendMessageA
 00438083    shr         eax,0C
 00438086    dec         eax
 00438087    mov         dword ptr [ebp-0C],eax
 0043808A    mov         eax,dword ptr [ebp-0C]
 0043808D    mov         esp,ebp
 0043808F    pop         ebp
 00438090    ret
end;*}

//00438094
{*procedure sub_00438094(?:HWND; ?:?; ?:?);
begin
 00438094    push        ebp
 00438095    mov         ebp,esp
 00438097    add         esp,0FFFFFFCC
 0043809A    mov         byte ptr [ebp-9],cl
 0043809D    mov         dword ptr [ebp-8],edx
 004380A0    mov         dword ptr [ebp-4],eax
 004380A3    mov         dword ptr [ebp-21],0F000
 004380AA    mov         al,byte ptr [ebp-9]
 004380AD    and         eax,1
 004380B0    inc         eax
 004380B1    shl         eax,0C
 004380B4    mov         dword ptr [ebp-25],eax
 004380B7    lea         eax,[ebp-31]
 004380BA    push        eax
 004380BB    mov         eax,dword ptr [ebp-8]
 004380BE    push        eax
 004380BF    push        102B
 004380C4    mov         eax,dword ptr [ebp-4]
 004380C7    push        eax
 004380C8    call        user32.SendMessageA
 004380CD    mov         esp,ebp
 004380CF    pop         ebp
 004380D0    ret
end;*}

//004380D4
{*function sub_004380D4(?:?; ?:?; ?:?; ?:?):?;
begin
 004380D4    push        ebp
 004380D5    mov         ebp,esp
 004380D7    add         esp,0FFFFFFC8
 004380DA    mov         dword ptr [ebp-0C],ecx
 004380DD    mov         dword ptr [ebp-8],edx
 004380E0    mov         dword ptr [ebp-4],eax
 004380E3    mov         eax,dword ptr [ebp-0C]
 004380E6    mov         dword ptr [ebp-30],eax
 004380E9    mov         eax,dword ptr [ebp+8]
 004380EC    mov         dword ptr [ebp-24],eax
 004380EF    lea         eax,[ebp-38]
 004380F2    push        eax
 004380F3    mov         eax,dword ptr [ebp-8]
 004380F6    push        eax
 004380F7    push        102E
 004380FC    mov         eax,dword ptr [ebp-4]
 004380FF    push        eax
 00438100    call        user32.SendMessageA
 00438105    mov         dword ptr [ebp-10],eax
 00438108    mov         eax,dword ptr [ebp-10]
 0043810B    mov         esp,ebp
 0043810D    pop         ebp
 0043810E    ret         4
end;*}

//00438114
procedure sub_00438114(?:HWND; ?:Integer);
begin
{*
 00438114    push        ebp
 00438115    mov         ebp,esp
 00438117    add         esp,0FFFFFFF8
 0043811A    mov         dword ptr [ebp-8],edx
 0043811D    mov         dword ptr [ebp-4],eax
 00438120    push        0
 00438122    mov         eax,dword ptr [ebp-8]
 00438125    push        eax
 00438126    push        102F
 0043812B    mov         eax,dword ptr [ebp-4]
 0043812E    push        eax
 0043812F    call        user32.SendMessageA
 00438134    pop         ecx
 00438135    pop         ecx
 00438136    pop         ebp
 00438137    ret
*}
end;

//00438138
{*procedure sub_00438138(?:?; ?:?; ?:?);
begin
 00438138    push        ebp
 00438139    mov         ebp,esp
 0043813B    add         esp,0FFFFFFF4
 0043813E    mov         dword ptr [ebp-0C],ecx
 00438141    mov         dword ptr [ebp-8],edx
 00438144    mov         dword ptr [ebp-4],eax
 00438147    mov         eax,dword ptr [ebp-0C]
 0043814A    push        eax
 0043814B    mov         eax,dword ptr [ebp-8]
 0043814E    push        eax
 0043814F    push        102F
 00438154    mov         eax,dword ptr [ebp-4]
 00438157    push        eax
 00438158    call        user32.SendMessageA
 0043815D    mov         esp,ebp
 0043815F    pop         ebp
 00438160    ret
end;*}

//00438164
{*function sub_00438164(?:HWND; ?:?; ?:?):?;
begin
 00438164    push        ebp
 00438165    mov         ebp,esp
 00438167    add         esp,0FFFFFFF0
 0043816A    mov         dword ptr [ebp-0C],ecx
 0043816D    mov         dword ptr [ebp-8],edx
 00438170    mov         dword ptr [ebp-4],eax
 00438173    mov         eax,dword ptr [ebp-8]
 00438176    push        eax
 00438177    mov         eax,dword ptr [ebp-0C]
 0043817A    push        eax
 0043817B    push        1030
 00438180    mov         eax,dword ptr [ebp-4]
 00438183    push        eax
 00438184    call        user32.SendMessageA
 00438189    mov         dword ptr [ebp-10],eax
 0043818C    mov         eax,dword ptr [ebp-10]
 0043818F    mov         esp,ebp
 00438191    pop         ebp
 00438192    ret
end;*}

//00438194
{*function sub_00438194(?:HWND):?;
begin
 00438194    push        ebp
 00438195    mov         ebp,esp
 00438197    add         esp,0FFFFFFF8
 0043819A    mov         dword ptr [ebp-4],eax
 0043819D    push        0
 0043819F    push        0
 004381A1    push        1032
 004381A6    mov         eax,dword ptr [ebp-4]
 004381A9    push        eax
 004381AA    call        user32.SendMessageA
 004381AF    mov         dword ptr [ebp-8],eax
 004381B2    mov         eax,dword ptr [ebp-8]
 004381B5    pop         ecx
 004381B6    pop         ecx
 004381B7    pop         ebp
 004381B8    ret
end;*}

//004381BC
{*function sub_004381BC(?:HWND; ?:?):?;
begin
 004381BC    push        ebp
 004381BD    mov         ebp,esp
 004381BF    add         esp,0FFFFFFF4
 004381C2    mov         dword ptr [ebp-8],edx
 004381C5    mov         dword ptr [ebp-4],eax
 004381C8    mov         eax,dword ptr [ebp-8]
 004381CB    push        eax
 004381CC    push        0
 004381CE    push        1036
 004381D3    mov         eax,dword ptr [ebp-4]
 004381D6    push        eax
 004381D7    call        user32.SendMessageA
 004381DC    mov         dword ptr [ebp-0C],eax
 004381DF    mov         eax,dword ptr [ebp-0C]
 004381E2    mov         esp,ebp
 004381E4    pop         ebp
 004381E5    ret
end;*}

//004381E8
{*function sub_004381E8(?:HWND; ?:?; ?:?):?;
begin
 004381E8    push        ebp
 004381E9    mov         ebp,esp
 004381EB    add         esp,0FFFFFFF0
 004381EE    mov         dword ptr [ebp-0C],ecx
 004381F1    mov         dword ptr [ebp-8],edx
 004381F4    mov         dword ptr [ebp-4],eax
 004381F7    mov         eax,dword ptr [ebp-0C]
 004381FA    push        eax
 004381FB    mov         eax,dword ptr [ebp-8]
 004381FE    push        eax
 004381FF    push        103A
 00438204    mov         eax,dword ptr [ebp-4]
 00438207    push        eax
 00438208    call        user32.SendMessageA
 0043820D    mov         dword ptr [ebp-10],eax
 00438210    mov         eax,dword ptr [ebp-10]
 00438213    mov         esp,ebp
 00438215    pop         ebp
 00438216    ret
end;*}

//00438248
{*function sub_00438248(?:HWND; ?:?; ?:?):?;
begin
 00438248    push        ebp
 00438249    mov         ebp,esp
 0043824B    add         esp,0FFFFFFF0
 0043824E    mov         dword ptr [ebp-0C],ecx
 00438251    mov         dword ptr [ebp-8],edx
 00438254    mov         dword ptr [ebp-4],eax
 00438257    mov         eax,dword ptr [ebp-0C]
 0043825A    push        eax
 0043825B    mov         eax,dword ptr [ebp-8]
 0043825E    push        eax
 0043825F    push        1041
 00438264    mov         eax,dword ptr [ebp-4]
 00438267    push        eax
 00438268    call        user32.SendMessageA
 0043826D    mov         dword ptr [ebp-10],eax
 00438270    mov         eax,dword ptr [ebp-10]
 00438273    mov         esp,ebp
 00438275    pop         ebp
 00438276    ret
end;*}

//00438278
{*function sub_00438278(?:HWND; ?:Integer):?;
begin
 00438278    push        ebp
 00438279    mov         ebp,esp
 0043827B    add         esp,0FFFFFFF4
 0043827E    mov         dword ptr [ebp-8],edx
 00438281    mov         dword ptr [ebp-4],eax
 00438284    mov         eax,dword ptr [ebp-8]
 00438287    push        eax
 00438288    push        0
 0043828A    push        1047
 0043828F    mov         eax,dword ptr [ebp-4]
 00438292    push        eax
 00438293    call        user32.SendMessageA
 00438298    mov         dword ptr [ebp-0C],eax
 0043829B    mov         eax,dword ptr [ebp-0C]
 0043829E    mov         esp,ebp
 004382A0    pop         ebp
 004382A1    ret
end;*}

//004382A4
{*function sub_004382A4(?:HWND):?;
begin
 004382A4    push        ebp
 004382A5    mov         ebp,esp
 004382A7    add         esp,0FFFFFFF8
 004382AA    mov         dword ptr [ebp-4],eax
 004382AD    push        0
 004382AF    push        0
 004382B1    push        1048
 004382B6    mov         eax,dword ptr [ebp-4]
 004382B9    push        eax
 004382BA    call        user32.SendMessageA
 004382BF    mov         dword ptr [ebp-8],eax
 004382C2    mov         eax,dword ptr [ebp-8]
 004382C5    pop         ecx
 004382C6    pop         ecx
 004382C7    pop         ebp
 004382C8    ret
end;*}

end.