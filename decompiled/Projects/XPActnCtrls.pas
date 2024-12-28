//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit XPActnCtrls;

interface

uses
  SysUtils, Classes, ShadowWnd;

type
  TXPStyleMenuItem = class(TCustomMenuItem)
  public
    procedure v90; virtual;//v90//004C83C0
    //procedure vA4(?:?); virtual;//vA4//004C866C
    //procedure vAC(?:?); virtual;//vAC//004C8408
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//004C8D78
    //procedure vB4(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//vB4//004C8C70
    //procedure vB8(?:?); virtual;//vB8//004C8AC4
    procedure vDC; virtual;//vDC//004C8348
    procedure vE8; virtual;//vE8//004C8CEC
    procedure vEC; virtual;//vEC//004C8DE0
  end;
  TXPStyleMenuButton = class(TCustomMenuButton)
  public
    //procedure vAC(?:?); virtual;//vAC//004C8E78
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//004C9080
  end;
  TXPStylePopupMenu = class(TCustomActionPopupMenu)
  public
    ......FBtnShadow:TShadowWindow;//f318
    destructor Destroy; virtual;//004C913C
    constructor v2C; virtual;//v2C//004C90E8
    //procedure vC8(?:?); virtual;//vC8//004C9280
    procedure v188; virtual;//v188//004C917C
    //function v18C:?; virtual;//v18C//004C923C
    procedure v190; virtual;//v190//004C9254
    //procedure v194(?:?; ?:?); virtual;//v194//004C95EC
    procedure sub_0048513C; dynamic;//004C968C
  end;
  TXPStyleExpandBtn = class(TCustomMenuExpandBtn)
  public
    //procedure vAC(?:?); virtual;//vAC//004C96C4
    //procedure vE4(?:?; ?:?); virtual;//vE4//004C97D0
  end;
  TXPStyleButton = class(TCustomButtonControl)
  public
    //procedure vA4(?:?); virtual;//vA4//004C9A10
    //procedure vAC(?:?); virtual;//vAC//004C9878
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//004C9C10
    //procedure vE4(?:?; ?:?); virtual;//vE4//004C9954
  end;
  TXPStyleDropDownBtn = class(TCustomDropDownButton)
  public
    //procedure vA4(?:?); virtual;//vA4//004C9E3C
    //procedure vAC(?:?); virtual;//vAC//004C9CB0
    //procedure vE4(?:?; ?:?); virtual;//vE4//004C9D80
    //function vE8:?; virtual;//vE8//004CA038
  end;
  TXPStyleCustomizePopup = class(TCustomizeActionToolBar)
  public
    constructor v2C; virtual;//v2C//004CA050
    //procedure vC8(?:?); virtual;//vC8//004CA0D4
    //function v10C:?; virtual;//v10C//004CA0BC
    //function v198:?; virtual;//v198//004CA0A4
  end;
  TXPStyleToolScrollBtn = class(TCustomToolScrollBtn)
  public
    //procedure vAC(?:?); virtual;//vAC//004CACC8
  end;
  TXPStyleAddRemoveItem = class(TCustomAddRemoveItem)
  public
    //procedure vA4(?:?); virtual;//vA4//004CA4CC
    //procedure vAC(?:?); virtual;//vAC//004CA2A4
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//004CAB80
    //procedure vB8(?:?); virtual;//vB8//004CA9E0
    procedure vDC; virtual;//vDC//004CA260
    procedure vEC; virtual;//vEC//004CACBC
  end;
    //function sub_004C8314:?;//004C8314
    procedure sub_004C8348;//004C8348
    procedure sub_004C83C0;//004C83C0
    //procedure sub_004C8408(?:?);//004C8408
    //procedure sub_004C866C(?:?);//004C866C
    //procedure sub_004C8AC4(?:?);//004C8AC4
    //procedure sub_004C8C70(?:?; ?:?; ?:?; ?:?; ?:?);//004C8C70
    procedure sub_004C8CEC;//004C8CEC
    //procedure sub_004C8D78(?:?; ?:?; ?:?);//004C8D78
    procedure sub_004C8DE0;//004C8DE0
    //procedure sub_004C8DEC(?:?);//004C8DEC
    //procedure sub_004C8E78(?:?);//004C8E78
    //procedure sub_004C9080(?:?; ?:?; ?:?);//004C9080
    constructor sub_004C90E8;//004C90E8
    destructor Destroy;//004C913C
    procedure sub_004C917C;//004C917C
    //function sub_004C923C:?;//004C923C
    procedure sub_004C9254;//004C9254
    //procedure sub_004C9280(?:?);//004C9280
    //procedure sub_004C95EC(?:?; ?:?);//004C95EC
    procedure sub_0048513C;//004C968C
    //procedure sub_004C96C4(?:?);//004C96C4
    //procedure sub_004C97D0(?:?; ?:?);//004C97D0
    //procedure sub_004C9878(?:?);//004C9878
    //procedure sub_004C9954(?:?; ?:?);//004C9954
    //procedure sub_004C9A10(?:?);//004C9A10
    //procedure sub_004C9C10(?:?; ?:?; ?:?);//004C9C10
    //procedure sub_004C9CB0(?:?);//004C9CB0
    //procedure sub_004C9D80(?:?; ?:?);//004C9D80
    //procedure sub_004C9E3C(?:?);//004C9E3C
    //function sub_004CA038:?;//004CA038
    constructor sub_004CA050;//004CA050
    //function sub_004CA0A4:?;//004CA0A4
    //function sub_004CA0BC:?;//004CA0BC
    //procedure sub_004CA0D4(?:?);//004CA0D4
    procedure sub_004CA260;//004CA260
    //procedure sub_004CA2A4(?:?);//004CA2A4
    //procedure sub_004CA4CC(?:?);//004CA4CC
    //procedure sub_004CA9E0(?:?);//004CA9E0
    //procedure sub_004CAB80(?:?; ?:?; ?:?);//004CAB80
    procedure sub_004CACBC;//004CACBC
    //procedure sub_004CACC8(?:?);//004CACC8

implementation

//004C8314
{*function sub_004C8314:?;
begin
 004C8314    push        ebp
 004C8315    mov         ebp,esp
 004C8317    push        ecx
 004C8318    push        2
 004C831A    call        user32.GetAsyncKeyState
 004C831F    movsx       eax,ax
 004C8322    test        ah,80
>004C8325    jne         004C833A
 004C8327    push        1
 004C8329    call        user32.GetAsyncKeyState
 004C832E    movsx       eax,ax
 004C8331    test        ah,80
>004C8334    jne         004C833A
 004C8336    xor         eax,eax
>004C8338    jmp         004C833C
 004C833A    mov         al,1
 004C833C    mov         byte ptr [ebp-1],al
 004C833F    mov         al,byte ptr [ebp-1]
 004C8342    pop         ecx
 004C8343    pop         ebp
 004C8344    ret
end;*}

//004C8348
procedure sub_004C8348;
begin
{*
 004C8348    push        ebp
 004C8349    mov         ebp,esp
 004C834B    add         esp,0FFFFFFEC
 004C834E    push        esi
 004C834F    push        edi
 004C8350    mov         dword ptr [ebp-4],eax
 004C8353    mov         eax,dword ptr [ebp-4]
 004C8356    call        004B9168
 004C835B    mov         eax,dword ptr [ebp-4]
 004C835E    mov         edx,dword ptr [eax]
 004C8360    call        dword ptr [edx+0C8];TXPStyleMenuItem.sub_004C6AA0
 004C8366    test        al,al
>004C8368    je          004C8379
 004C836A    mov         edx,3
 004C836F    mov         eax,dword ptr [ebp-4]
 004C8372    call        TToolButton.SetHeight
>004C8377    jmp         004C838A
 004C8379    mov         eax,dword ptr [ebp-4]
 004C837C    mov         edx,dword ptr [eax+4C];TXPStyleMenuItem.Height:Integer
 004C837F    add         edx,2
 004C8382    mov         eax,dword ptr [ebp-4]
 004C8385    call        TToolButton.SetHeight
 004C838A    mov         eax,dword ptr [ebp-4]
 004C838D    call        004C6A18
 004C8392    test        al,al
>004C8394    jne         004C83B9
 004C8396    mov         eax,dword ptr [ebp-4]
 004C8399    lea         esi,[eax+190];TXPStyleMenuItem.FTextBounds:TRect
 004C839F    lea         edi,[ebp-14]
 004C83A2    movs        dword ptr [edi],dword ptr [esi]
 004C83A3    movs        dword ptr [edi],dword ptr [esi]
 004C83A4    movs        dword ptr [edi],dword ptr [esi]
 004C83A5    movs        dword ptr [edi],dword ptr [esi]
 004C83A6    inc         dword ptr [ebp-10]
 004C83A9    mov         eax,dword ptr [ebp-4]
 004C83AC    lea         esi,[ebp-14]
 004C83AF    lea         edi,[eax+190];TXPStyleMenuItem.FTextBounds:TRect
 004C83B5    movs        dword ptr [edi],dword ptr [esi]
 004C83B6    movs        dword ptr [edi],dword ptr [esi]
 004C83B7    movs        dword ptr [edi],dword ptr [esi]
 004C83B8    movs        dword ptr [edi],dword ptr [esi]
 004C83B9    pop         edi
 004C83BA    pop         esi
 004C83BB    mov         esp,ebp
 004C83BD    pop         ebp
 004C83BE    ret
*}
end;

//004C83C0
procedure sub_004C83C0;
begin
{*
 004C83C0    push        ebp
 004C83C1    mov         ebp,esp
 004C83C3    add         esp,0FFFFFFF4
 004C83C6    mov         dword ptr [ebp-4],eax
 004C83C9    mov         eax,dword ptr [ebp-4]
 004C83CC    call        004B9334
 004C83D1    lea         ecx,[ebp-0C]
 004C83D4    mov         eax,dword ptr [ebp-4]
 004C83D7    mov         edx,dword ptr [eax+176]
 004C83DD    inc         edx
 004C83DE    mov         eax,dword ptr [ebp-4]
 004C83E1    mov         eax,dword ptr [eax+172];TXPStyleMenuItem.FGlyphPos:TPoint
 004C83E7    call        Point
 004C83EC    mov         eax,dword ptr [ebp-4]
 004C83EF    mov         edx,dword ptr [ebp-0C]
 004C83F2    mov         dword ptr [eax+172],edx;TXPStyleMenuItem.FGlyphPos:TPoint
 004C83F8    mov         edx,dword ptr [ebp-8]
 004C83FB    mov         dword ptr [eax+176],edx
 004C8401    mov         esp,ebp
 004C8403    pop         ebp
 004C8404    ret
*}
end;

//004C8408
{*procedure sub_004C8408(?:?);
begin
 004C8408    push        ebp
 004C8409    mov         ebp,esp
 004C840B    add         esp,0FFFFFFD8
 004C840E    push        esi
 004C840F    push        edi
 004C8410    mov         dword ptr [ebp-8],edx
 004C8413    mov         dword ptr [ebp-4],eax
 004C8416    mov         eax,dword ptr [ebp-4]
 004C8419    cmp         dword ptr [eax+16C],0;TXPStyleMenuItem.FActionClient:TActionClientItem
>004C8420    je          004C8663
 004C8426    mov         eax,dword ptr [ebp-4]
 004C8429    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C842F    cmp         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
>004C8436    je          004C8455
 004C8438    mov         eax,dword ptr [ebp-4]
 004C843B    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C8441    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 004C8444    mov         eax,dword ptr [ebp-4]
 004C8447    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C844D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8450    call        TBrush.SetColor
 004C8455    mov         eax,dword ptr [ebp-8]
 004C8458    mov         esi,eax
 004C845A    lea         edi,[ebp-28]
 004C845D    movs        dword ptr [edi],dword ptr [esi]
 004C845E    movs        dword ptr [edi],dword ptr [esi]
 004C845F    movs        dword ptr [edi],dword ptr [esi]
 004C8460    movs        dword ptr [edi],dword ptr [esi]
 004C8461    mov         eax,dword ptr [ebp-4]
 004C8464    mov         eax,dword ptr [eax+190];TXPStyleMenuItem.FTextBounds:TRect
 004C846A    mov         edx,dword ptr [ebp-4]
 004C846D    cmp         eax,dword ptr [edx+172];TXPStyleMenuItem.FGlyphPos:TPoint
>004C8473    jle         004C847A
 004C8475    xor         eax,eax
 004C8477    mov         dword ptr [ebp-28],eax
 004C847A    mov         eax,dword ptr [ebp-8]
 004C847D    mov         esi,eax
 004C847F    lea         edi,[ebp-18]
 004C8482    movs        dword ptr [edi],dword ptr [esi]
 004C8483    movs        dword ptr [edi],dword ptr [esi]
 004C8484    movs        dword ptr [edi],dword ptr [esi]
 004C8485    movs        dword ptr [edi],dword ptr [esi]
 004C8486    mov         eax,dword ptr [ebp-4]
 004C8489    mov         eax,dword ptr [eax+190];TXPStyleMenuItem.FTextBounds:TRect
 004C848F    mov         edx,dword ptr [ebp-4]
 004C8492    cmp         eax,dword ptr [edx+172];TXPStyleMenuItem.FGlyphPos:TPoint
>004C8498    jle         004C84AB
 004C849A    mov         eax,dword ptr [ebp-4]
 004C849D    mov         eax,dword ptr [eax+190];TXPStyleMenuItem.FTextBounds:TRect
 004C84A3    sub         eax,3
 004C84A6    mov         dword ptr [ebp-10],eax
>004C84A9    jmp         004C84BA
 004C84AB    mov         eax,dword ptr [ebp-4]
 004C84AE    mov         eax,dword ptr [eax+198];TXPStyleMenuItem.FTextBounds.Right:Longint
 004C84B4    add         eax,3
 004C84B7    mov         dword ptr [ebp-10],eax
 004C84BA    mov         dword ptr [ebp-10],19
 004C84C1    mov         eax,dword ptr [ebp-10]
 004C84C4    sub         eax,dword ptr [ebp-18]
 004C84C7    mov         dword ptr [ebp-28],eax
 004C84CA    mov         eax,dword ptr [ebp-4]
 004C84CD    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C84D3    call        004C0C60
 004C84D8    test        al,al
>004C84DA    je          004C8503
 004C84DC    mov         eax,dword ptr [ebp-4]
 004C84DF    call        004C6C1C
 004C84E4    call        004C4A40
 004C84E9    call        TXPColorMap.GetUnusedColor
 004C84EE    mov         edx,eax
 004C84F0    mov         eax,dword ptr [ebp-4]
 004C84F3    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C84F9    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C84FC    call        TBrush.SetColor
>004C8501    jmp         004C8524
 004C8503    mov         eax,dword ptr [ebp-4]
 004C8506    call        004C6C1C
 004C850B    call        004C4A40
 004C8510    mov         edx,dword ptr [eax+40]
 004C8513    mov         eax,dword ptr [ebp-4]
 004C8516    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C851C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C851F    call        TBrush.SetColor
 004C8524    lea         edx,[ebp-18]
 004C8527    mov         eax,dword ptr [ebp-4]
 004C852A    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8530    call        0042F030
 004C8535    mov         eax,dword ptr [ebp-4]
 004C8538    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 004C853E    call        004C4A40
 004C8543    mov         edx,dword ptr [eax+74]
 004C8546    mov         eax,dword ptr [ebp-4]
 004C8549    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C854F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8552    call        TBrush.SetColor
 004C8557    mov         eax,dword ptr [ebp-4]
 004C855A    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>004C8561    je          004C856F
 004C8563    mov         eax,dword ptr [ebp-4]
 004C8566    mov         edx,dword ptr [eax]
 004C8568    call        dword ptr [edx+50];TImage.GetEnabled
 004C856B    test        al,al
>004C856D    jne         004C8587
 004C856F    mov         eax,dword ptr [ebp-4]
 004C8572    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>004C8579    je          004C85CF
 004C857B    mov         eax,dword ptr [ebp-4]
 004C857E    cmp         byte ptr [eax+1B0],0;TXPStyleMenuItem.FMouseSelected:Boolean
>004C8585    jne         004C85CF
 004C8587    mov         eax,dword ptr [ebp-4]
 004C858A    mov         edx,dword ptr [eax]
 004C858C    call        dword ptr [edx+50];TImage.GetEnabled
 004C858F    test        al,al
>004C8591    je          004C85C9
 004C8593    mov         eax,dword ptr [ebp-4]
 004C8596    call        004C6C1C
 004C859B    mov         edx,dword ptr [eax]
 004C859D    call        dword ptr [edx+104]
 004C85A3    test        al,al
>004C85A5    jne         004C85C9
 004C85A7    mov         eax,dword ptr [ebp-4]
 004C85AA    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 004C85B0    call        004C4A40
 004C85B5    mov         edx,dword ptr [eax+68]
 004C85B8    mov         eax,dword ptr [ebp-4]
 004C85BB    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C85C1    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C85C4    call        TBrush.SetColor
 004C85C9    mov         eax,dword ptr [ebp-8]
 004C85CC    dec         dword ptr [eax+8]
 004C85CF    lea         edx,[ebp-28]
 004C85D2    mov         eax,dword ptr [ebp-4]
 004C85D5    call        004C522C
 004C85DA    mov         eax,[0056E5B4];^Mouse:TMouse
 004C85DF    mov         eax,dword ptr [eax]
 004C85E1    call        00491DE4
 004C85E6    test        al,al
>004C85E8    jne         004C8663
 004C85EA    mov         eax,dword ptr [ebp-4]
 004C85ED    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>004C85F4    je          004C8602
 004C85F6    mov         eax,dword ptr [ebp-4]
 004C85F9    mov         edx,dword ptr [eax]
 004C85FB    call        dword ptr [edx+50];TImage.GetEnabled
 004C85FE    test        al,al
>004C8600    jne         004C861A
 004C8602    mov         eax,dword ptr [ebp-4]
 004C8605    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>004C860C    je          004C8663
 004C860E    mov         eax,dword ptr [ebp-4]
 004C8611    cmp         byte ptr [eax+1B0],0;TXPStyleMenuItem.FMouseSelected:Boolean
>004C8618    jne         004C8663
 004C861A    mov         edx,dword ptr [ebp-8]
 004C861D    mov         eax,dword ptr [ebp-4]
 004C8620    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8626    call        0042F030
 004C862B    mov         eax,dword ptr [ebp-4]
 004C862E    call        004C6C1C
 004C8633    call        004C4A40
 004C8638    mov         edx,dword ptr [eax+38]
 004C863B    mov         eax,dword ptr [ebp-4]
 004C863E    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8644    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8647    call        TBrush.SetColor
 004C864C    mov         eax,dword ptr [ebp-8]
 004C864F    inc         dword ptr [eax+8]
 004C8652    mov         edx,dword ptr [ebp-8]
 004C8655    mov         eax,dword ptr [ebp-4]
 004C8658    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C865E    call        0042F080
 004C8663    pop         edi
 004C8664    pop         esi
 004C8665    mov         esp,ebp
 004C8667    pop         ebp
 004C8668    ret
end;*}

//004C866C
{*procedure sub_004C866C(?:?);
begin
 004C866C    push        ebp
 004C866D    mov         ebp,esp
 004C866F    add         esp,0FFFFFFC8
 004C8672    mov         dword ptr [ebp-8],edx
 004C8675    mov         dword ptr [ebp-4],eax
 004C8678    mov         eax,dword ptr [ebp-4]
 004C867B    cmp         dword ptr [eax+16C],0;TXPStyleMenuItem.FActionClient:TActionClientItem
>004C8682    je          004C87BE
 004C8688    mov         eax,dword ptr [ebp-4]
 004C868B    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C8691    call        004C0320
 004C8696    test        al,al
>004C8698    jne         004C87BE
 004C869E    mov         eax,dword ptr [ebp-4]
 004C86A1    mov         edx,dword ptr [eax]
 004C86A3    call        dword ptr [edx+3C];TXPStyleMenuItem.sub_004C6BC4
 004C86A6    mov         edx,dword ptr ds:[492C28];TCustomAction
 004C86AC    call        @IsClass
 004C86B1    test        al,al
>004C86B3    je          004C87BE
 004C86B9    mov         eax,dword ptr [ebp-4]
 004C86BC    mov         edx,dword ptr [eax]
 004C86BE    call        dword ptr [edx+3C];TXPStyleMenuItem.sub_004C6BC4
 004C86C1    cmp         byte ptr [eax+69],0
>004C86C5    je          004C87BE
 004C86CB    mov         eax,dword ptr [ebp-4]
 004C86CE    mov         edx,dword ptr [eax]
 004C86D0    call        dword ptr [edx+0C0];TXPStyleMenuItem.sub_004C6B70
 004C86D6    test        al,al
>004C86D8    je          004C8767
 004C86DE    mov         eax,dword ptr [ebp-4]
 004C86E1    mov         eax,dword ptr [eax+4C];TXPStyleMenuItem.Height:Integer
 004C86E4    dec         eax
 004C86E5    push        eax
 004C86E6    lea         eax,[ebp-30]
 004C86E9    push        eax
 004C86EA    mov         ecx,dword ptr [ebp-8]
 004C86ED    mov         ecx,dword ptr [ecx]
 004C86EF    add         ecx,14
 004C86F2    mov         eax,dword ptr [ebp-8]
 004C86F5    mov         eax,dword ptr [eax]
 004C86F7    dec         eax
 004C86F8    mov         edx,1
 004C86FD    call        0041E714
 004C8702    mov         eax,dword ptr [ebp-4]
 004C8705    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 004C870B    call        004C4A40
 004C8710    mov         edx,dword ptr [eax+68]
 004C8713    mov         eax,dword ptr [ebp-4]
 004C8716    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C871C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C871F    call        TBrush.SetColor
 004C8724    lea         edx,[ebp-30]
 004C8727    mov         eax,dword ptr [ebp-4]
 004C872A    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8730    call        0042F030
 004C8735    mov         eax,dword ptr [ebp-4]
 004C8738    call        004C6C1C
 004C873D    call        004C4A40
 004C8742    mov         edx,dword ptr [eax+38]
 004C8745    mov         eax,dword ptr [ebp-4]
 004C8748    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C874E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C8751    call        TPen.SetColor
 004C8756    lea         edx,[ebp-30]
 004C8759    mov         eax,dword ptr [ebp-4]
 004C875C    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8762    call        0042F274
 004C8767    mov         eax,dword ptr [ebp-4]
 004C876A    call        004C6C1C
 004C876F    call        004C4A40
 004C8774    mov         edx,dword ptr [eax+50]
 004C8777    mov         eax,dword ptr [ebp-4]
 004C877A    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8780    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C8783    call        TPen.SetColor
 004C8788    push        1
 004C878A    lea         ecx,[ebp-38]
 004C878D    mov         edx,dword ptr [ebp-8]
 004C8790    mov         edx,dword ptr [edx+4]
 004C8793    add         edx,3
 004C8796    mov         eax,dword ptr [ebp-8]
 004C8799    mov         eax,dword ptr [eax]
 004C879B    add         eax,6
 004C879E    call        Point
 004C87A3    lea         edx,[ebp-38]
 004C87A6    mov         eax,dword ptr [ebp-4]
 004C87A9    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C87AF    mov         ecx,2
 004C87B4    call        004ADBB0
>004C87B9    jmp         004C8AC0
 004C87BE    mov         eax,dword ptr [ebp-4]
 004C87C1    mov         edx,dword ptr [eax]
 004C87C3    call        dword ptr [edx+0C0];TXPStyleMenuItem.sub_004C6B70
 004C87C9    test        al,al
>004C87CB    je          004C8845
 004C87CD    mov         eax,dword ptr [ebp-4]
 004C87D0    mov         eax,dword ptr [eax+4C];TXPStyleMenuItem.Height:Integer
 004C87D3    dec         eax
 004C87D4    push        eax
 004C87D5    lea         eax,[ebp-30]
 004C87D8    push        eax
 004C87D9    mov         ecx,dword ptr [ebp-8]
 004C87DC    mov         ecx,dword ptr [ecx]
 004C87DE    add         ecx,14
 004C87E1    mov         eax,dword ptr [ebp-8]
 004C87E4    mov         eax,dword ptr [eax]
 004C87E6    dec         eax
 004C87E7    mov         edx,1
 004C87EC    call        0041E714
 004C87F1    mov         eax,dword ptr [ebp-4]
 004C87F4    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 004C87FA    call        004C4A40
 004C87FF    mov         edx,dword ptr [eax+68]
 004C8802    mov         eax,dword ptr [ebp-4]
 004C8805    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C880B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C880E    call        TBrush.SetColor
 004C8813    mov         eax,dword ptr [ebp-4]
 004C8816    call        004C6C1C
 004C881B    call        004C4A40
 004C8820    mov         edx,dword ptr [eax+38]
 004C8823    mov         eax,dword ptr [ebp-4]
 004C8826    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C882C    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C882F    call        TPen.SetColor
 004C8834    lea         edx,[ebp-30]
 004C8837    mov         eax,dword ptr [ebp-4]
 004C883A    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8840    call        0042F274
 004C8845    mov         eax,dword ptr [ebp-4]
 004C8848    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C884E    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8851    call        TBrush.GetColor
 004C8856    mov         dword ptr [ebp-0C],eax
 004C8859    mov         eax,dword ptr [ebp-4]
 004C885C    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>004C8863    je          004C8871
 004C8865    mov         eax,dword ptr [ebp-4]
 004C8868    mov         edx,dword ptr [eax]
 004C886A    call        dword ptr [edx+50];TImage.GetEnabled
 004C886D    test        al,al
>004C886F    jne         004C8889
 004C8871    mov         eax,dword ptr [ebp-4]
 004C8874    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>004C887B    je          004C88AD
 004C887D    mov         eax,dword ptr [ebp-4]
 004C8880    cmp         byte ptr [eax+1B0],0;TXPStyleMenuItem.FMouseSelected:Boolean
>004C8887    jne         004C88AD
 004C8889    mov         eax,dword ptr [ebp-4]
 004C888C    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 004C8892    call        004C4A40
 004C8897    mov         edx,dword ptr [eax+68]
 004C889A    mov         eax,dword ptr [ebp-4]
 004C889D    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C88A3    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C88A6    call        TBrush.SetColor
>004C88AB    jmp         004C88CF
 004C88AD    mov         eax,dword ptr [ebp-4]
 004C88B0    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 004C88B6    call        004C4A40
 004C88BB    mov         edx,dword ptr [eax+58]
 004C88BE    mov         eax,dword ptr [ebp-4]
 004C88C1    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C88C7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C88CA    call        TBrush.SetColor
 004C88CF    mov         eax,dword ptr [ebp-8]
 004C88D2    mov         edx,dword ptr [eax]
 004C88D4    mov         dword ptr [ebp-18],edx
 004C88D7    mov         edx,dword ptr [eax+4]
 004C88DA    mov         dword ptr [ebp-14],edx
 004C88DD    mov         eax,dword ptr [ebp-4]
 004C88E0    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>004C88E7    je          004C8A9A
 004C88ED    mov         eax,dword ptr [ebp-4]
 004C88F0    mov         edx,dword ptr [eax]
 004C88F2    call        dword ptr [edx+50];TImage.GetEnabled
 004C88F5    test        al,al
>004C88F7    je          004C8A9A
 004C88FD    mov         eax,dword ptr [ebp-4]
 004C8900    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C8906    call        004C0320
 004C890B    test        al,al
>004C890D    je          004C8A9A
 004C8913    mov         eax,dword ptr [ebp-4]
 004C8916    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C891C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C891F    call        TBrush.GetColor
 004C8924    mov         dword ptr [ebp-10],eax
 004C8927    mov         dl,1
 004C8929    mov         eax,[0042CF48];TBitmap
 004C892E    call        TBitmap.Create;TBitmap.Create
 004C8933    mov         dword ptr [ebp-1C],eax
 004C8936    xor         eax,eax
 004C8938    push        ebp
 004C8939    push        4C8A83
 004C893E    push        dword ptr fs:[eax]
 004C8941    mov         dword ptr fs:[eax],esp
 004C8944    mov         eax,dword ptr [ebp-4]
 004C8947    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C894D    call        TActionClientItem.GetAction
 004C8952    test        eax,eax
>004C8954    je          004C8983
 004C8956    mov         eax,dword ptr [ebp-4]
 004C8959    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C895F    call        TActionClientItem.GetAction
 004C8964    cmp         dword ptr [eax+5C],0
>004C8968    je          004C8983
 004C896A    mov         eax,dword ptr [ebp-4]
 004C896D    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C8973    call        TActionClientItem.GetAction
 004C8978    mov         eax,dword ptr [eax+5C]
 004C897B    mov         eax,dword ptr [eax+38]
 004C897E    mov         dword ptr [ebp-20],eax
>004C8981    jmp         004C899C
 004C8983    mov         eax,dword ptr [ebp-4]
 004C8986    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C898C    call        004BE698
 004C8991    call        004BD7EC
 004C8996    mov         eax,dword ptr [eax+38]
 004C8999    mov         dword ptr [ebp-20],eax
 004C899C    cmp         dword ptr [ebp-20],0
>004C89A0    je          004C8A59
 004C89A6    mov         eax,dword ptr [ebp-4]
 004C89A9    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C89AF    mov         edx,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 004C89B2    mov         ecx,dword ptr [ebp-1C]
 004C89B5    mov         eax,dword ptr [ebp-20]
 004C89B8    call        00495300
 004C89BD    test        al,al
>004C89BF    je          004C8A59
 004C89C5    mov         eax,dword ptr [ebp-4]
 004C89C8    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 004C89CE    call        004C4A40
 004C89D3    mov         eax,dword ptr [eax+68]
 004C89D6    mov         edx,0FFFFFFCE
 004C89DB    call        004AD82C
 004C89E0    mov         edx,eax
 004C89E2    mov         eax,dword ptr [ebp-4]
 004C89E5    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C89EB    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C89EE    call        TBrush.SetColor
 004C89F3    mov         eax,dword ptr [ebp-20]
 004C89F6    mov         edx,dword ptr [eax+34]
 004C89F9    mov         eax,dword ptr [ebp-1C]
 004C89FC    mov         ecx,dword ptr [eax]
 004C89FE    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004C8A01    mov         eax,dword ptr [ebp-20]
 004C8A04    mov         edx,dword ptr [eax+34]
 004C8A07    mov         eax,dword ptr [ebp-1C]
 004C8A0A    mov         ecx,dword ptr [eax]
 004C8A0C    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004C8A0F    push        84
 004C8A14    push        0
 004C8A16    push        0
 004C8A18    mov         eax,dword ptr [ebp-14]
 004C8A1B    add         eax,2
 004C8A1E    push        eax
 004C8A1F    mov         eax,dword ptr [ebp-18]
 004C8A22    add         eax,3
 004C8A25    push        eax
 004C8A26    push        0
 004C8A28    mov         eax,dword ptr [ebp-1C]
 004C8A2B    mov         edx,dword ptr [eax]
 004C8A2D    call        dword ptr [edx+64];TBitmap.sub_004349FC
 004C8A30    push        eax
 004C8A31    push        0
 004C8A33    mov         eax,dword ptr [ebp-4]
 004C8A36    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8A3C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8A3F    call        TBrush.GetHandle
 004C8A44    push        eax
 004C8A45    mov         eax,dword ptr [ebp-4]
 004C8A48    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8A4E    call        0042F6A0
 004C8A53    push        eax
 004C8A54    call        user32.DrawStateA
 004C8A59    xor         eax,eax
 004C8A5B    pop         edx
 004C8A5C    pop         ecx
 004C8A5D    pop         ecx
 004C8A5E    mov         dword ptr fs:[eax],edx
 004C8A61    push        4C8A8A
 004C8A66    mov         eax,dword ptr [ebp-1C]
 004C8A69    call        TObject.Free
 004C8A6E    mov         eax,dword ptr [ebp-4]
 004C8A71    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8A77    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8A7A    mov         edx,dword ptr [ebp-10]
 004C8A7D    call        TBrush.SetColor
 004C8A82    ret
>004C8A83    jmp         @HandleFinally
>004C8A88    jmp         004C8A66
 004C8A8A    inc         dword ptr [ebp-18]
 004C8A8D    lea         edx,[ebp-18]
 004C8A90    mov         eax,dword ptr [ebp-4]
 004C8A93    call        004C535C
>004C8A98    jmp         004C8AAC
 004C8A9A    add         dword ptr [ebp-18],2
 004C8A9E    inc         dword ptr [ebp-14]
 004C8AA1    lea         edx,[ebp-18]
 004C8AA4    mov         eax,dword ptr [ebp-4]
 004C8AA7    call        004C535C
 004C8AAC    mov         eax,dword ptr [ebp-4]
 004C8AAF    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8AB5    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8AB8    mov         edx,dword ptr [ebp-0C]
 004C8ABB    call        TBrush.SetColor
 004C8AC0    mov         esp,ebp
 004C8AC2    pop         ebp
 004C8AC3    ret
end;*}

//004C8AC4
{*procedure sub_004C8AC4(?:?);
begin
 004C8AC4    push        ebp
 004C8AC5    mov         ebp,esp
 004C8AC7    add         esp,0FFFFFFD0
 004C8ACA    mov         dword ptr [ebp-10],edx
 004C8ACD    mov         dword ptr [ebp-4],eax
 004C8AD0    mov         eax,dword ptr [ebp-4]
 004C8AD3    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>004C8ADA    je          004C8AF8
 004C8ADC    lea         edx,[ebp-30]
 004C8ADF    mov         eax,dword ptr [ebp-4]
 004C8AE2    mov         ecx,dword ptr [eax]
 004C8AE4    call        dword ptr [ecx+44];TXPStyleMenuItem.sub_00482F5C
 004C8AE7    lea         edx,[ebp-30]
 004C8AEA    mov         eax,dword ptr [ebp-4]
 004C8AED    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8AF3    call        0042F030
 004C8AF8    mov         eax,dword ptr [ebp-4]
 004C8AFB    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8B01    mov         ecx,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8B04    mov         dl,1
 004C8B06    mov         eax,[0042C890];TBrushRecall
 004C8B0B    call        TBrushRecall.Create;TBrushRecall.Create
 004C8B10    mov         dword ptr [ebp-0C],eax
 004C8B13    mov         eax,dword ptr [ebp-4]
 004C8B16    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8B1C    mov         ecx,dword ptr [eax+10];TCanvas.Pen:TPen
 004C8B1F    mov         dl,1
 004C8B21    mov         eax,[0042C838];TPenRecall
 004C8B26    call        TPenRecall.Create;TPenRecall.Create
 004C8B2B    mov         dword ptr [ebp-8],eax
 004C8B2E    xor         eax,eax
 004C8B30    push        ebp
 004C8B31    push        4C8C62
 004C8B36    push        dword ptr fs:[eax]
 004C8B39    mov         dword ptr fs:[eax],esp
 004C8B3C    mov         eax,dword ptr [ebp-4]
 004C8B3F    cmp         dword ptr [eax+16C],0;TXPStyleMenuItem.FActionClient:TActionClientItem
>004C8B46    je          004C8B7B
 004C8B48    mov         eax,dword ptr [ebp-4]
 004C8B4B    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 004C8B51    call        004C0C60
 004C8B56    test        al,al
>004C8B58    je          004C8B7B
 004C8B5A    mov         eax,dword ptr [ebp-4]
 004C8B5D    cmp         byte ptr [eax+1A0],0;TXPStyleMenuItem.FTransparent:Boolean
>004C8B64    jne         004C8B7B
 004C8B66    mov         eax,dword ptr [ebp-4]
 004C8B69    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8B6F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8B72    xor         edx,edx
 004C8B74    call        TBrush.SetStyle
>004C8B79    jmp         004C8BD5
 004C8B7B    mov         eax,dword ptr [ebp-4]
 004C8B7E    mov         edx,dword ptr [eax+70];TXPStyleMenuItem.FColor:TColor
 004C8B81    mov         eax,dword ptr [ebp-4]
 004C8B84    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8B8A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8B8D    call        TBrush.SetColor
 004C8B92    lea         edx,[ebp-20]
 004C8B95    mov         eax,dword ptr [ebp-4]
 004C8B98    call        00482ECC
 004C8B9D    push        1
 004C8B9F    push        4
 004C8BA1    lea         eax,[ebp-20]
 004C8BA4    push        eax
 004C8BA5    mov         eax,dword ptr [ebp-4]
 004C8BA8    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8BAE    call        0042F6A0
 004C8BB3    push        eax
 004C8BB4    call        user32.DrawEdge
 004C8BB9    push        4
 004C8BBB    push        4
 004C8BBD    lea         eax,[ebp-20]
 004C8BC0    push        eax
 004C8BC1    mov         eax,dword ptr [ebp-4]
 004C8BC4    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8BCA    call        0042F6A0
 004C8BCF    push        eax
 004C8BD0    call        user32.DrawEdge
 004C8BD5    mov         eax,dword ptr [ebp-4]
 004C8BD8    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 004C8BDE    call        004C4A40
 004C8BE3    mov         edx,dword ptr [eax+48]
 004C8BE6    mov         eax,dword ptr [ebp-4]
 004C8BE9    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8BEF    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C8BF2    call        TPen.SetColor
 004C8BF7    mov         eax,dword ptr [ebp-4]
 004C8BFA    call        TControl.GetClientHeight
 004C8BFF    mov         ecx,eax
 004C8C01    sar         ecx,1
>004C8C03    jns         004C8C08
 004C8C05    adc         ecx,0
 004C8C08    mov         eax,dword ptr [ebp-4]
 004C8C0B    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8C11    mov         edx,20
 004C8C16    call        0042F14C
 004C8C1B    mov         eax,dword ptr [ebp-4]
 004C8C1E    call        TControl.GetClientHeight
 004C8C23    sar         eax,1
>004C8C25    jns         004C8C2A
 004C8C27    adc         eax,0
 004C8C2A    push        eax
 004C8C2B    mov         eax,dword ptr [ebp-4]
 004C8C2E    call        TControl.GetClientWidth
 004C8C33    mov         edx,eax
 004C8C35    mov         eax,dword ptr [ebp-4]
 004C8C38    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8C3E    pop         ecx
 004C8C3F    call        0042F0D0
 004C8C44    xor         eax,eax
 004C8C46    pop         edx
 004C8C47    pop         ecx
 004C8C48    pop         ecx
 004C8C49    mov         dword ptr fs:[eax],edx
 004C8C4C    push        4C8C69
 004C8C51    mov         eax,dword ptr [ebp-0C]
 004C8C54    call        TObject.Free
 004C8C59    mov         eax,dword ptr [ebp-8]
 004C8C5C    call        TObject.Free
 004C8C61    ret
>004C8C62    jmp         @HandleFinally
>004C8C67    jmp         004C8C51
 004C8C69    mov         esp,ebp
 004C8C6B    pop         ebp
 004C8C6C    ret
end;*}

//004C8C70
{*procedure sub_004C8C70(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004C8C70    push        ebp
 004C8C71    mov         ebp,esp
 004C8C73    add         esp,0FFFFFFE8
 004C8C76    push        esi
 004C8C77    push        edi
 004C8C78    mov         esi,edx
 004C8C7A    lea         edi,[ebp-18]
 004C8C7D    movs        dword ptr [edi],dword ptr [esi]
 004C8C7E    movs        dword ptr [edi],dword ptr [esi]
 004C8C7F    movs        dword ptr [edi],dword ptr [esi]
 004C8C80    movs        dword ptr [edi],dword ptr [esi]
 004C8C81    mov         dword ptr [ebp-8],ecx
 004C8C84    mov         dword ptr [ebp-4],eax
 004C8C87    mov         eax,dword ptr [ebp+10]
 004C8C8A    call        @LStrAddRef
 004C8C8F    xor         eax,eax
 004C8C91    push        ebp
 004C8C92    push        4C8CDA
 004C8C97    push        dword ptr fs:[eax]
 004C8C9A    mov         dword ptr fs:[eax],esp
 004C8C9D    push        0
 004C8C9F    push        6
 004C8CA1    lea         eax,[ebp-18]
 004C8CA4    push        eax
 004C8CA5    call        user32.OffsetRect
 004C8CAA    mov         eax,dword ptr [ebp+10]
 004C8CAD    push        eax
 004C8CAE    mov         eax,dword ptr [ebp+0C]
 004C8CB1    push        eax
 004C8CB2    mov         eax,dword ptr [ebp+8]
 004C8CB5    push        eax
 004C8CB6    mov         ecx,dword ptr [ebp-8]
 004C8CB9    lea         edx,[ebp-18]
 004C8CBC    mov         eax,dword ptr [ebp-4]
 004C8CBF    call        004B93A8
 004C8CC4    xor         eax,eax
 004C8CC6    pop         edx
 004C8CC7    pop         ecx
 004C8CC8    pop         ecx
 004C8CC9    mov         dword ptr fs:[eax],edx
 004C8CCC    push        4C8CE1
 004C8CD1    lea         eax,[ebp+10]
 004C8CD4    call        @LStrClr
 004C8CD9    ret
>004C8CDA    jmp         @HandleFinally
>004C8CDF    jmp         004C8CD1
 004C8CE1    pop         edi
 004C8CE2    pop         esi
 004C8CE3    mov         esp,ebp
 004C8CE5    pop         ebp
 004C8CE6    ret         0C
end;*}

//004C8CEC
procedure sub_004C8CEC;
begin
{*
 004C8CEC    push        ebp
 004C8CED    mov         ebp,esp
 004C8CEF    add         esp,0FFFFFFF0
 004C8CF2    mov         dword ptr [ebp-4],eax
 004C8CF5    mov         eax,dword ptr [ebp-4]
 004C8CF8    call        004B89BC
 004C8CFD    mov         eax,dword ptr [ebp-4]
 004C8D00    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8D06    mov         dword ptr [ebp-8],eax
 004C8D09    mov         eax,dword ptr [ebp-4]
 004C8D0C    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 004C8D12    call        004C4A40
 004C8D17    mov         edx,dword ptr [eax+50]
 004C8D1A    mov         eax,dword ptr [ebp-8]
 004C8D1D    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C8D20    call        TPen.SetColor
 004C8D25    mov         eax,dword ptr [ebp-8]
 004C8D28    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C8D2B    call        TPen.GetColor
 004C8D30    mov         edx,eax
 004C8D32    mov         eax,dword ptr [ebp-8]
 004C8D35    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8D38    call        TBrush.SetColor
 004C8D3D    push        3
 004C8D3F    lea         ecx,[ebp-10]
 004C8D42    mov         eax,dword ptr [ebp-4]
 004C8D45    mov         edx,dword ptr [eax+4C];TXPStyleMenuItem.Height:Integer
 004C8D48    sar         edx,1
>004C8D4A    jns         004C8D4F
 004C8D4C    adc         edx,0
 004C8D4F    sub         edx,3
 004C8D52    mov         eax,dword ptr [ebp-4]
 004C8D55    mov         eax,dword ptr [eax+48];TXPStyleMenuItem.Width:Integer
 004C8D58    sub         eax,0B
 004C8D5B    call        Point
 004C8D60    lea         ecx,[ebp-10]
 004C8D63    mov         dl,1
 004C8D65    mov         eax,dword ptr [ebp-4]
 004C8D68    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 004C8D6E    call        004AD904
 004C8D73    mov         esp,ebp
 004C8D75    pop         ebp
 004C8D76    ret
*}
end;

//004C8D78
{*procedure sub_004C8D78(?:?; ?:?; ?:?);
begin
 004C8D78    push        ebp
 004C8D79    mov         ebp,esp
 004C8D7B    add         esp,0FFFFFFF4
 004C8D7E    mov         dword ptr [ebp-0C],ecx
 004C8D81    mov         dword ptr [ebp-8],edx
 004C8D84    mov         dword ptr [ebp-4],eax
 004C8D87    mov         eax,dword ptr [ebp+8]
 004C8D8A    call        @LStrAddRef
 004C8D8F    xor         eax,eax
 004C8D91    push        ebp
 004C8D92    push        4C8DD2
 004C8D97    push        dword ptr fs:[eax]
 004C8D9A    mov         dword ptr fs:[eax],esp
 004C8D9D    push        0
 004C8D9F    push        6
 004C8DA1    mov         eax,dword ptr [ebp-8]
 004C8DA4    push        eax
 004C8DA5    call        user32.OffsetRect
 004C8DAA    mov         eax,dword ptr [ebp+8]
 004C8DAD    push        eax
 004C8DAE    mov         ecx,dword ptr [ebp-0C]
 004C8DB1    mov         edx,dword ptr [ebp-8]
 004C8DB4    mov         eax,dword ptr [ebp-4]
 004C8DB7    call        004B94DC
 004C8DBC    xor         eax,eax
 004C8DBE    pop         edx
 004C8DBF    pop         ecx
 004C8DC0    pop         ecx
 004C8DC1    mov         dword ptr fs:[eax],edx
 004C8DC4    push        4C8DD9
 004C8DC9    lea         eax,[ebp+8]
 004C8DCC    call        @LStrClr
 004C8DD1    ret
>004C8DD2    jmp         @HandleFinally
>004C8DD7    jmp         004C8DC9
 004C8DD9    mov         esp,ebp
 004C8DDB    pop         ebp
 004C8DDC    ret         4
end;*}

//004C8DE0
procedure sub_004C8DE0;
begin
{*
 004C8DE0    push        ebp
 004C8DE1    mov         ebp,esp
 004C8DE3    push        ecx
 004C8DE4    mov         dword ptr [ebp-4],eax
 004C8DE7    pop         ecx
 004C8DE8    pop         ebp
 004C8DE9    ret
*}
end;

//004C8DEC
{*procedure sub_004C8DEC(?:?);
begin
 004C8DEC    push        ebp
 004C8DED    mov         ebp,esp
 004C8DEF    mov         eax,dword ptr [ebp+8]
 004C8DF2    mov         eax,dword ptr [eax-4]
 004C8DF5    call        004B9E3C
 004C8DFA    call        004C4A40
 004C8DFF    mov         edx,dword ptr [eax+68]
 004C8E02    mov         eax,dword ptr [ebp+8]
 004C8E05    mov         eax,dword ptr [eax-4]
 004C8E08    mov         eax,dword ptr [eax+160]
 004C8E0E    mov         eax,dword ptr [eax+14]
 004C8E11    call        TBrush.SetColor
 004C8E16    mov         eax,dword ptr [ebp+8]
 004C8E19    mov         eax,dword ptr [eax-4]
 004C8E1C    call        004C6C1C
 004C8E21    call        004C4A40
 004C8E26    mov         edx,dword ptr [eax+38]
 004C8E29    mov         eax,dword ptr [ebp+8]
 004C8E2C    mov         eax,dword ptr [eax-4]
 004C8E2F    mov         eax,dword ptr [eax+160]
 004C8E35    mov         eax,dword ptr [eax+10]
 004C8E38    call        TPen.SetColor
 004C8E3D    mov         eax,dword ptr [ebp+8]
 004C8E40    mov         eax,dword ptr [eax-4]
 004C8E43    mov         eax,dword ptr [eax+48]
 004C8E46    push        eax
 004C8E47    mov         eax,dword ptr [ebp+8]
 004C8E4A    mov         eax,dword ptr [eax-4]
 004C8E4D    mov         eax,dword ptr [eax+4C]
 004C8E50    push        eax
 004C8E51    mov         eax,dword ptr [ebp+8]
 004C8E54    mov         eax,dword ptr [eax-4]
 004C8E57    mov         eax,dword ptr [eax+160]
 004C8E5D    xor         ecx,ecx
 004C8E5F    xor         edx,edx
 004C8E61    call        0042F220
 004C8E66    push        0FF
 004C8E68    push        0FF
 004C8E6A    mov         eax,dword ptr [ebp+8]
 004C8E6D    mov         eax,dword ptr [eax-8]
 004C8E70    push        eax
 004C8E71    call        user32.InflateRect
 004C8E76    pop         ebp
 004C8E77    ret
end;*}

//004C8E78
{*procedure sub_004C8E78(?:?);
begin
 004C8E78    push        ebp
 004C8E79    mov         ebp,esp
 004C8E7B    add         esp,0FFFFFFE0
 004C8E7E    mov         dword ptr [ebp-8],edx
 004C8E81    mov         dword ptr [ebp-4],eax
 004C8E84    mov         eax,dword ptr [ebp-4]
 004C8E87    call        004C6C1C
 004C8E8C    call        004C4A40
 004C8E91    mov         edx,dword ptr [eax+40]
 004C8E94    mov         eax,dword ptr [ebp-4]
 004C8E97    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 004C8E9D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8EA0    call        TBrush.SetColor
 004C8EA5    mov         eax,dword ptr [ebp-4]
 004C8EA8    call        004C6C1C
 004C8EAD    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004C8EB3    call        @IsClass
 004C8EB8    test        al,al
>004C8EBA    je          004C905D
 004C8EC0    mov         eax,dword ptr [ebp-4]
 004C8EC3    call        004C6C1C
 004C8EC8    cmp         byte ptr [eax+296],0
>004C8ECF    je          004C905D
 004C8ED5    mov         eax,dword ptr [ebp-4]
 004C8ED8    cmp         byte ptr [eax+18A],0;TXPStyleMenuButton.FSelected:Boolean
>004C8EDF    je          004C9070
 004C8EE5    mov         eax,dword ptr [ebp-4]
 004C8EE8    mov         eax,dword ptr [eax+16C];TXPStyleMenuButton.FActionClient:TActionClientItem
 004C8EEE    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>004C8EF2    jne         004C8F41
 004C8EF4    mov         eax,dword ptr [ebp-4]
 004C8EF7    call        004B9E3C
 004C8EFC    mov         eax,dword ptr [eax+2C4]
 004C8F02    mov         eax,dword ptr [eax+2B0]
 004C8F08    call        004377BC
 004C8F0D    dec         eax
>004C8F0E    jne         004C9070
 004C8F14    mov         eax,dword ptr [ebp-4]
 004C8F17    call        004B9E3C
 004C8F1C    call        004C4A40
 004C8F21    mov         edx,dword ptr [eax+68]
 004C8F24    mov         eax,dword ptr [ebp-4]
 004C8F27    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 004C8F2D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8F30    call        TBrush.SetColor
 004C8F35    push        ebp
 004C8F36    call        004C8DEC
 004C8F3B    pop         ecx
>004C8F3C    jmp         004C9070
 004C8F41    mov         eax,dword ptr [ebp-4]
 004C8F44    call        004B9E3C
 004C8F49    call        004C4A40
 004C8F4E    mov         edx,dword ptr [eax+34]
 004C8F51    mov         eax,dword ptr [ebp-4]
 004C8F54    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 004C8F5A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8F5D    call        TBrush.SetColor
 004C8F62    mov         eax,dword ptr [ebp-4]
 004C8F65    call        004C6C1C
 004C8F6A    call        004C4A40
 004C8F6F    mov         edx,dword ptr [eax+7C]
 004C8F72    mov         eax,dword ptr [ebp-4]
 004C8F75    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 004C8F7B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C8F7E    call        TPen.SetColor
 004C8F83    mov         eax,dword ptr [ebp-4]
 004C8F86    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 004C8F8C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C8F8F    mov         dl,1
 004C8F91    call        TBrush.SetStyle
 004C8F96    mov         eax,dword ptr [ebp-4]
 004C8F99    mov         eax,dword ptr [eax+48];TXPStyleMenuButton.Width:Integer
 004C8F9C    push        eax
 004C8F9D    mov         eax,dword ptr [ebp-4]
 004C8FA0    mov         eax,dword ptr [eax+4C];TXPStyleMenuButton.Height:Integer
 004C8FA3    push        eax
 004C8FA4    mov         eax,dword ptr [ebp-4]
 004C8FA7    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 004C8FAD    xor         ecx,ecx
 004C8FAF    xor         edx,edx
 004C8FB1    call        0042F220
 004C8FB6    lea         edx,[ebp-20]
 004C8FB9    mov         eax,dword ptr [ebp-4]
 004C8FBC    call        00482ECC
 004C8FC1    lea         edx,[ebp-20]
 004C8FC4    lea         ecx,[ebp-10]
 004C8FC7    mov         eax,dword ptr [ebp-4]
 004C8FCA    mov         eax,dword ptr [eax+30];TXPStyleMenuButton.FParent:TWinControl
 004C8FCD    call        TControl.ClientToScreen
 004C8FD2    lea         edx,[ebp-20]
 004C8FD5    mov         eax,dword ptr [ebp-4]
 004C8FD8    mov         eax,dword ptr [eax+16C];TXPStyleMenuButton.FActionClient:TActionClientItem
 004C8FDE    mov         eax,dword ptr [eax+18];TActionClientItem.FChildActionBar:TCustomActionBar
 004C8FE1    call        00482ECC
 004C8FE6    mov         eax,dword ptr [ebp-14]
 004C8FE9    cmp         eax,dword ptr [ebp-0C]
>004C8FEC    jg          004C8FF5
 004C8FEE    xor         eax,eax
 004C8FF0    mov         dword ptr [ebp-0C],eax
>004C8FF3    jmp         004C8FFF
 004C8FF5    mov         eax,dword ptr [ebp-4]
 004C8FF8    mov         eax,dword ptr [eax+4C];TXPStyleMenuButton.Height:Integer
 004C8FFB    dec         eax
 004C8FFC    mov         dword ptr [ebp-0C],eax
 004C8FFF    mov         eax,dword ptr [ebp-4]
 004C9002    call        004C6C1C
 004C9007    call        004C4A40
 004C900C    mov         edx,dword ptr [eax+34]
 004C900F    mov         eax,dword ptr [ebp-4]
 004C9012    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 004C9018    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C901B    call        TPen.SetColor
 004C9020    mov         eax,dword ptr [ebp-4]
 004C9023    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 004C9029    mov         ecx,dword ptr [ebp-0C]
 004C902C    mov         edx,1
 004C9031    call        0042F14C
 004C9036    mov         eax,dword ptr [ebp-4]
 004C9039    mov         edx,dword ptr [eax+48];TXPStyleMenuButton.Width:Integer
 004C903C    dec         edx
 004C903D    mov         eax,dword ptr [ebp-4]
 004C9040    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 004C9046    mov         ecx,dword ptr [ebp-0C]
 004C9049    call        0042F0D0
 004C904E    push        0FF
 004C9050    push        0FF
 004C9052    mov         eax,dword ptr [ebp-8]
 004C9055    push        eax
 004C9056    call        user32.InflateRect
>004C905B    jmp         004C9070
 004C905D    mov         eax,dword ptr [ebp-4]
 004C9060    cmp         byte ptr [eax+1AB],0;TXPStyleMenuButton.FMouseInControl:Boolean
>004C9067    je          004C9070
 004C9069    push        ebp
 004C906A    call        004C8DEC
 004C906F    pop         ecx
 004C9070    mov         edx,dword ptr [ebp-8]
 004C9073    mov         eax,dword ptr [ebp-4]
 004C9076    call        004AFC50
 004C907B    mov         esp,ebp
 004C907D    pop         ebp
 004C907E    ret
end;*}

//004C9080
{*procedure sub_004C9080(?:?; ?:?; ?:?);
begin
 004C9080    push        ebp
 004C9081    mov         ebp,esp
 004C9083    add         esp,0FFFFFFF4
 004C9086    mov         dword ptr [ebp-0C],ecx
 004C9089    mov         dword ptr [ebp-8],edx
 004C908C    mov         dword ptr [ebp-4],eax
 004C908F    mov         eax,dword ptr [ebp+8]
 004C9092    call        @LStrAddRef
 004C9097    xor         eax,eax
 004C9099    push        ebp
 004C909A    push        4C90DA
 004C909F    push        dword ptr fs:[eax]
 004C90A2    mov         dword ptr fs:[eax],esp
 004C90A5    push        0
 004C90A7    push        1
 004C90A9    mov         eax,dword ptr [ebp-8]
 004C90AC    push        eax
 004C90AD    call        user32.OffsetRect
 004C90B2    mov         eax,dword ptr [ebp+8]
 004C90B5    push        eax
 004C90B6    mov         ecx,dword ptr [ebp-0C]
 004C90B9    mov         edx,dword ptr [ebp-8]
 004C90BC    mov         eax,dword ptr [ebp-4]
 004C90BF    call        004B9D08
 004C90C4    xor         eax,eax
 004C90C6    pop         edx
 004C90C7    pop         ecx
 004C90C8    pop         ecx
 004C90C9    mov         dword ptr fs:[eax],edx
 004C90CC    push        4C90E1
 004C90D1    lea         eax,[ebp+8]
 004C90D4    call        @LStrClr
 004C90D9    ret
>004C90DA    jmp         @HandleFinally
>004C90DF    jmp         004C90D1
 004C90E1    mov         esp,ebp
 004C90E3    pop         ebp
 004C90E4    ret         4
end;*}

//004C90E8
constructor sub_004C90E8;
begin
{*
 004C90E8    push        ebp
 004C90E9    mov         ebp,esp
 004C90EB    add         esp,0FFFFFFF4
 004C90EE    test        dl,dl
>004C90F0    je          004C90FA
 004C90F2    add         esp,0FFFFFFF0
 004C90F5    call        @ClassCreate
 004C90FA    mov         dword ptr [ebp-0C],ecx
 004C90FD    mov         byte ptr [ebp-5],dl
 004C9100    mov         dword ptr [ebp-4],eax
 004C9103    mov         ecx,dword ptr [ebp-0C]
 004C9106    xor         edx,edx
 004C9108    mov         eax,dword ptr [ebp-4]
 004C910B    call        004B59CC
 004C9110    xor         edx,edx
 004C9112    mov         eax,dword ptr [ebp-4]
 004C9115    call        004C3C04
 004C911A    mov         eax,dword ptr [ebp-4]
 004C911D    cmp         byte ptr [ebp-5],0
>004C9121    je          004C9132
 004C9123    call        @AfterConstruction
 004C9128    pop         dword ptr fs:[0]
 004C912F    add         esp,0C
 004C9132    mov         eax,dword ptr [ebp-4]
 004C9135    mov         esp,ebp
 004C9137    pop         ebp
 004C9138    ret
*}
end;

//004C913C
destructor TXPStylePopupMenu.Destroy;
begin
{*
 004C913C    push        ebp
 004C913D    mov         ebp,esp
 004C913F    add         esp,0FFFFFFF8
 004C9142    call        @BeforeDestruction
 004C9147    mov         byte ptr [ebp-5],dl
 004C914A    mov         dword ptr [ebp-4],eax
 004C914D    mov         eax,dword ptr [ebp-4]
 004C9150    add         eax,318
 004C9155    call        FreeAndNil
 004C915A    mov         dl,byte ptr [ebp-5]
 004C915D    and         dl,0FC
 004C9160    mov         eax,dword ptr [ebp-4]
 004C9163    call        TCustomActionPopupMenu.Destroy
 004C9168    cmp         byte ptr [ebp-5],0
>004C916C    jle         004C9176
 004C916E    mov         eax,dword ptr [ebp-4]
 004C9171    call        @ClassDestroy
 004C9176    pop         ecx
 004C9177    pop         ecx
 004C9178    pop         ebp
 004C9179    ret
*}
end;

//004C917C
procedure sub_004C917C;
begin
{*
 004C917C    push        ebp
 004C917D    mov         ebp,esp
 004C917F    push        ecx
 004C9180    mov         dword ptr [ebp-4],eax
 004C9183    mov         eax,dword ptr [ebp-4]
 004C9186    call        004B6CA8
 004C918B    mov         eax,dword ptr [ebp-4]
 004C918E    cmp         byte ptr [eax+314],0;TXPStylePopupMenu.FShadow:Boolean
>004C9195    je          004C9239
 004C919B    mov         eax,dword ptr [ebp-4]
 004C919E    mov         edx,dword ptr [eax]
 004C91A0    call        dword ptr [edx+104];TXPStylePopupMenu.sub_004B3EB0
 004C91A6    test        al,al
>004C91A8    jne         004C9239
 004C91AE    mov         eax,dword ptr [ebp-4]
 004C91B1    cmp         dword ptr [eax+210],0;TXPStylePopupMenu.FActionClient:TActionClient
>004C91B8    je          004C9213
 004C91BA    mov         eax,dword ptr [ebp-4]
 004C91BD    mov         eax,dword ptr [eax+210];TXPStylePopupMenu.FActionClient:TActionClient
 004C91C3    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004C91C9    call        @IsClass
 004C91CE    test        al,al
>004C91D0    je          004C9213
 004C91D2    mov         eax,dword ptr [ebp-4]
 004C91D5    mov         eax,dword ptr [eax+210];TXPStylePopupMenu.FActionClient:TActionClient
 004C91DB    mov         eax,dword ptr [eax+40]
 004C91DE    mov         edx,dword ptr ds:[4B23F8];TCustomMenuButton
 004C91E4    call        @IsClass
 004C91E9    test        al,al
>004C91EB    je          004C9213
 004C91ED    mov         eax,dword ptr [ebp-4]
 004C91F0    cmp         dword ptr [eax+318],0;TXPStylePopupMenu........FBtnShadow:TShadowWindow
>004C91F7    jne         004C9213
 004C91F9    push        0
 004C91FB    mov         ecx,dword ptr [ebp-4]
 004C91FE    mov         dl,1
 004C9200    mov         eax,[004ADEF4];TShadowWindow
 004C9205    call        TShadowWindow.Create;TShadowWindow.Create
 004C920A    mov         edx,dword ptr [ebp-4]
 004C920D    mov         dword ptr [edx+318],eax;TXPStylePopupMenu.........FBtnShadow:TShadowWindow
 004C9213    mov         eax,dword ptr [ebp-4]
 004C9216    cmp         dword ptr [eax+318],0;TXPStylePopupMenu..........FBtnShadow:TShadowWindow
>004C921D    je          004C9239
 004C921F    mov         eax,dword ptr [ebp-4]
 004C9222    mov         eax,dword ptr [eax+210];TXPStylePopupMenu.FActionClient:TActionClient
 004C9228    mov         edx,dword ptr [eax+40]
 004C922B    mov         eax,dword ptr [ebp-4]
 004C922E    mov         eax,dword ptr [eax+318];TXPStylePopupMenu...........FBtnShadow:TShadowWindow
 004C9234    call        004AE290
 004C9239    pop         ecx
 004C923A    pop         ebp
 004C923B    ret
*}
end;

//004C923C
{*function sub_004C923C:?;
begin
 004C923C    push        ebp
 004C923D    mov         ebp,esp
 004C923F    add         esp,0FFFFFFF8
 004C9242    mov         dword ptr [ebp-4],eax
 004C9245    mov         eax,[004C7960];TXPStyleExpandBtn
 004C924A    mov         dword ptr [ebp-8],eax
 004C924D    mov         eax,dword ptr [ebp-8]
 004C9250    pop         ecx
 004C9251    pop         ecx
 004C9252    pop         ebp
 004C9253    ret
end;*}

//004C9254
procedure sub_004C9254;
begin
{*
 004C9254    push        ebp
 004C9255    mov         ebp,esp
 004C9257    push        ecx
 004C9258    mov         dword ptr [ebp-4],eax
 004C925B    mov         eax,dword ptr [ebp-4]
 004C925E    call        004B6D3C
 004C9263    mov         eax,dword ptr [ebp-4]
 004C9266    cmp         dword ptr [eax+318],0;TXPStylePopupMenu............FBtnShadow:TShadowWindow
>004C926D    je          004C927D
 004C926F    mov         eax,dword ptr [ebp-4]
 004C9272    mov         eax,dword ptr [eax+318];TXPStylePopupMenu.............FBtnShadow:TShadowWindow
 004C9278    call        00483F88
 004C927D    pop         ecx
 004C927E    pop         ebp
 004C927F    ret
*}
end;

//004C9280
{*procedure sub_004C9280(?:?);
begin
 004C9280    push        ebp
 004C9281    mov         ebp,esp
 004C9283    add         esp,0FFFFFFBC
 004C9286    push        ebx
 004C9287    mov         dword ptr [ebp-8],edx
 004C928A    mov         dword ptr [ebp-4],eax
 004C928D    lea         eax,[ebp-24]
 004C9290    push        eax
 004C9291    mov         eax,dword ptr [ebp-4]
 004C9294    call        TWinControl.GetHandle
 004C9299    push        eax
 004C929A    call        user32.GetClientRect
 004C929F    lea         eax,[ebp-34]
 004C92A2    push        eax
 004C92A3    mov         eax,dword ptr [ebp-4]
 004C92A6    call        TWinControl.GetHandle
 004C92AB    push        eax
 004C92AC    call        user32.GetWindowRect
 004C92B1    push        2
 004C92B3    lea         eax,[ebp-34]
 004C92B6    push        eax
 004C92B7    mov         eax,dword ptr [ebp-4]
 004C92BA    call        TWinControl.GetHandle
 004C92BF    push        eax
 004C92C0    push        0
 004C92C2    call        user32.MapWindowPoints
 004C92C7    mov         eax,dword ptr [ebp-30]
 004C92CA    neg         eax
 004C92CC    push        eax
 004C92CD    mov         eax,dword ptr [ebp-34]
 004C92D0    neg         eax
 004C92D2    push        eax
 004C92D3    lea         eax,[ebp-24]
 004C92D6    push        eax
 004C92D7    call        user32.OffsetRect
 004C92DC    mov         eax,dword ptr [ebp-18]
 004C92DF    push        eax
 004C92E0    mov         eax,dword ptr [ebp-1C]
 004C92E3    push        eax
 004C92E4    mov         eax,dword ptr [ebp-20]
 004C92E7    push        eax
 004C92E8    mov         eax,dword ptr [ebp-24]
 004C92EB    push        eax
 004C92EC    mov         eax,dword ptr [ebp-8]
 004C92EF    push        eax
 004C92F0    call        gdi32.ExcludeClipRect
 004C92F5    mov         eax,dword ptr [ebp-30]
 004C92F8    neg         eax
 004C92FA    push        eax
 004C92FB    mov         eax,dword ptr [ebp-34]
 004C92FE    neg         eax
 004C9300    push        eax
 004C9301    lea         eax,[ebp-34]
 004C9304    push        eax
 004C9305    call        user32.OffsetRect
 004C930A    mov         eax,dword ptr [ebp-4]
 004C930D    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9313    call        0042F6A0
 004C9318    mov         dword ptr [ebp-0C],eax
 004C931B    xor         eax,eax
 004C931D    push        ebp
 004C931E    push        4C95DE
 004C9323    push        dword ptr fs:[eax]
 004C9326    mov         dword ptr fs:[eax],esp
 004C9329    mov         eax,dword ptr [ebp-4]
 004C932C    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9332    mov         edx,dword ptr [ebp-8]
 004C9335    call        TCanvas.SetHandle
 004C933A    mov         eax,dword ptr [ebp-4]
 004C933D    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9343    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C9346    mov         edx,1
 004C934B    call        TPen.SetWidth
 004C9350    mov         eax,dword ptr [ebp-4]
 004C9353    call        004C4A40
 004C9358    mov         edx,dword ptr [eax+7C]
 004C935B    mov         eax,dword ptr [ebp-4]
 004C935E    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9364    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C9367    call        TPen.SetColor
 004C936C    mov         eax,dword ptr [ebp-4]
 004C936F    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9375    mov         ecx,dword ptr [ebp-30]
 004C9378    mov         edx,dword ptr [ebp-2C]
 004C937B    call        0042F14C
 004C9380    mov         eax,dword ptr [ebp-4]
 004C9383    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9389    mov         ecx,dword ptr [ebp-30]
 004C938C    mov         edx,dword ptr [ebp-34]
 004C938F    call        0042F0D0
 004C9394    mov         eax,dword ptr [ebp-4]
 004C9397    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C939D    mov         ecx,dword ptr [ebp-28]
 004C93A0    mov         edx,dword ptr [ebp-34]
 004C93A3    call        0042F0D0
 004C93A8    mov         eax,dword ptr [ebp-4]
 004C93AB    call        004C4A40
 004C93B0    mov         edx,dword ptr [eax+78]
 004C93B3    mov         eax,dword ptr [ebp-4]
 004C93B6    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C93BC    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C93BF    call        TPen.SetColor
 004C93C4    mov         ecx,dword ptr [ebp-30]
 004C93C7    inc         ecx
 004C93C8    mov         edx,dword ptr [ebp-2C]
 004C93CB    dec         edx
 004C93CC    mov         eax,dword ptr [ebp-4]
 004C93CF    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C93D5    call        0042F14C
 004C93DA    mov         ecx,dword ptr [ebp-30]
 004C93DD    inc         ecx
 004C93DE    mov         edx,dword ptr [ebp-34]
 004C93E1    inc         edx
 004C93E2    mov         eax,dword ptr [ebp-4]
 004C93E5    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C93EB    call        0042F0D0
 004C93F0    mov         ecx,dword ptr [ebp-28]
 004C93F3    sub         ecx,2
 004C93F6    mov         edx,dword ptr [ebp-34]
 004C93F9    inc         edx
 004C93FA    mov         eax,dword ptr [ebp-4]
 004C93FD    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9403    call        0042F0D0
 004C9408    mov         eax,dword ptr [ebp-4]
 004C940B    call        004C4A40
 004C9410    mov         edx,dword ptr [eax+84]
 004C9416    mov         eax,dword ptr [ebp-4]
 004C9419    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C941F    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C9422    call        TPen.SetColor
 004C9427    mov         edx,dword ptr [ebp-2C]
 004C942A    dec         edx
 004C942B    mov         eax,dword ptr [ebp-4]
 004C942E    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9434    mov         ecx,dword ptr [ebp-30]
 004C9437    call        0042F14C
 004C943C    mov         ecx,dword ptr [ebp-28]
 004C943F    dec         ecx
 004C9440    mov         edx,dword ptr [ebp-2C]
 004C9443    dec         edx
 004C9444    mov         eax,dword ptr [ebp-4]
 004C9447    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C944D    call        0042F0D0
 004C9452    mov         ecx,dword ptr [ebp-28]
 004C9455    dec         ecx
 004C9456    mov         edx,dword ptr [ebp-34]
 004C9459    dec         edx
 004C945A    mov         eax,dword ptr [ebp-4]
 004C945D    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9463    call        0042F0D0
 004C9468    mov         eax,dword ptr [ebp-4]
 004C946B    call        004C4A40
 004C9470    mov         edx,dword ptr [eax+80]
 004C9476    mov         eax,dword ptr [ebp-4]
 004C9479    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C947F    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C9482    call        TPen.SetColor
 004C9487    mov         ecx,dword ptr [ebp-30]
 004C948A    inc         ecx
 004C948B    mov         edx,dword ptr [ebp-2C]
 004C948E    sub         edx,2
 004C9491    mov         eax,dword ptr [ebp-4]
 004C9494    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C949A    call        0042F14C
 004C949F    mov         ecx,dword ptr [ebp-28]
 004C94A2    sub         ecx,2
 004C94A5    mov         edx,dword ptr [ebp-2C]
 004C94A8    sub         edx,2
 004C94AB    mov         eax,dword ptr [ebp-4]
 004C94AE    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C94B4    call        0042F0D0
 004C94B9    mov         ecx,dword ptr [ebp-28]
 004C94BC    sub         ecx,2
 004C94BF    mov         eax,dword ptr [ebp-4]
 004C94C2    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C94C8    mov         edx,dword ptr [ebp-34]
 004C94CB    call        0042F0D0
 004C94D0    mov         eax,dword ptr [ebp-4]
 004C94D3    cmp         dword ptr [eax+210],0;TXPStylePopupMenu.FActionClient:TActionClient
>004C94DA    je          004C95BF
 004C94E0    mov         eax,dword ptr [ebp-4]
 004C94E3    call        004C4A40
 004C94E8    mov         ebx,dword ptr [eax+34]
 004C94EB    mov         eax,dword ptr [ebp-4]
 004C94EE    call        004C4A40
 004C94F3    cmp         ebx,dword ptr [eax+7C]
>004C94F6    je          004C95BF
 004C94FC    mov         eax,dword ptr [ebp-4]
 004C94FF    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 004C9505    mov         edx,dword ptr ds:[4C75B8];TXPStyleMenuButton
 004C950B    call        @IsClass
 004C9510    test        al,al
>004C9512    je          004C95BF
 004C9518    lea         edx,[ebp-44]
 004C951B    mov         eax,dword ptr [ebp-4]
 004C951E    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 004C9524    call        00482ECC
 004C9529    lea         edx,[ebp-44]
 004C952C    lea         ecx,[ebp-14]
 004C952F    mov         eax,dword ptr [ebp-4]
 004C9532    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 004C9538    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 004C953B    call        TControl.ClientToScreen
 004C9540    lea         edx,[ebp-44]
 004C9543    mov         eax,dword ptr [ebp-4]
 004C9546    call        00482ECC
 004C954B    mov         eax,dword ptr [ebp-38]
 004C954E    cmp         eax,dword ptr [ebp-10]
>004C9551    jg          004C955C
 004C9553    mov         eax,dword ptr [ebp-28]
 004C9556    dec         eax
 004C9557    mov         dword ptr [ebp-10],eax
>004C955A    jmp         004C9561
 004C955C    xor         eax,eax
 004C955E    mov         dword ptr [ebp-10],eax
 004C9561    mov         eax,dword ptr [ebp-4]
 004C9564    mov         edx,dword ptr [ebp-14]
 004C9567    sub         edx,dword ptr [eax+40]
 004C956A    inc         edx
 004C956B    mov         eax,dword ptr [ebp-4]
 004C956E    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9574    mov         ecx,dword ptr [ebp-10]
 004C9577    call        0042F14C
 004C957C    mov         eax,dword ptr [ebp-4]
 004C957F    call        004C4A40
 004C9584    mov         edx,dword ptr [eax+34]
 004C9587    mov         eax,dword ptr [ebp-4]
 004C958A    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C9590    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C9593    call        TPen.SetColor
 004C9598    mov         eax,dword ptr [ebp-4]
 004C959B    mov         edx,dword ptr [ebp-14]
 004C959E    sub         edx,dword ptr [eax+40]
 004C95A1    mov         eax,dword ptr [ebp-4]
 004C95A4    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 004C95AA    add         edx,dword ptr [eax+48];TCustomActionControl.Width:Integer
 004C95AD    dec         edx
 004C95AE    mov         eax,dword ptr [ebp-4]
 004C95B1    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C95B7    mov         ecx,dword ptr [ebp-10]
 004C95BA    call        0042F0D0
 004C95BF    xor         eax,eax
 004C95C1    pop         edx
 004C95C2    pop         ecx
 004C95C3    pop         ecx
 004C95C4    mov         dword ptr fs:[eax],edx
 004C95C7    push        4C95E5
 004C95CC    mov         eax,dword ptr [ebp-4]
 004C95CF    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 004C95D5    mov         edx,dword ptr [ebp-0C]
 004C95D8    call        TCanvas.SetHandle
 004C95DD    ret
>004C95DE    jmp         @HandleFinally
>004C95E3    jmp         004C95CC
 004C95E5    pop         ebx
 004C95E6    mov         esp,ebp
 004C95E8    pop         ebp
 004C95E9    ret
end;*}

//004C95EC
{*procedure sub_004C95EC(?:?; ?:?);
begin
 004C95EC    push        ebp
 004C95ED    mov         ebp,esp
 004C95EF    add         esp,0FFFFFFE4
 004C95F2    mov         dword ptr [ebp-0C],ecx
 004C95F5    mov         dword ptr [ebp-8],edx
 004C95F8    mov         dword ptr [ebp-4],eax
 004C95FB    mov         ecx,dword ptr [ebp-0C]
 004C95FE    mov         edx,dword ptr [ebp-8]
 004C9601    mov         eax,dword ptr [ebp-4]
 004C9604    call        004B6178
 004C9609    mov         eax,dword ptr [ebp-0C]
 004C960C    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004C9612    call        @IsClass
 004C9617    test        al,al
>004C9619    je          004C9650
 004C961B    lea         edx,[ebp-1C]
 004C961E    mov         eax,dword ptr [ebp-0C]
 004C9621    mov         eax,dword ptr [eax+30]
 004C9624    call        00482ECC
 004C9629    mov         eax,dword ptr [ebp-1C]
 004C962C    mov         edx,dword ptr [ebp-4]
 004C962F    cmp         eax,dword ptr [edx+40];TXPStylePopupMenu.Left:Integer
>004C9632    jge         004C9650
 004C9634    lea         edx,[ebp-1C]
 004C9637    mov         eax,dword ptr [ebp-0C]
 004C963A    mov         eax,dword ptr [eax+30]
 004C963D    call        00482ECC
 004C9642    mov         edx,dword ptr [ebp-14]
 004C9645    dec         edx
 004C9646    mov         eax,dword ptr [ebp-4]
 004C9649    call        TControl.SetLeft
>004C964E    jmp         004C9687
 004C9650    mov         eax,dword ptr [ebp-0C]
 004C9653    mov         edx,dword ptr ds:[4B23F8];TCustomMenuButton
 004C9659    call        @IsClass
 004C965E    test        al,al
>004C9660    je          004C9687
 004C9662    lea         edx,[ebp-1C]
 004C9665    mov         eax,dword ptr [ebp-0C]
 004C9668    call        00482ECC
 004C966D    mov         eax,dword ptr [ebp-1C]
 004C9670    mov         edx,dword ptr [ebp-4]
 004C9673    cmp         eax,dword ptr [edx+40];TXPStylePopupMenu.Left:Integer
>004C9676    jge         004C9687
 004C9678    mov         eax,dword ptr [ebp-4]
 004C967B    mov         edx,dword ptr [eax+40];TXPStylePopupMenu.Left:Integer
 004C967E    dec         edx
 004C967F    mov         eax,dword ptr [ebp-4]
 004C9682    call        TControl.SetLeft
 004C9687    mov         esp,ebp
 004C9689    pop         ebp
 004C968A    ret
end;*}

//004C968C
procedure TXPStylePopupMenu.sub_0048513C;
begin
{*
 004C968C    push        ebp
 004C968D    mov         ebp,esp
 004C968F    push        ecx
 004C9690    mov         dword ptr [ebp-4],eax
 004C9693    mov         eax,dword ptr [ebp-4]
 004C9696    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 004C969C    mov         edx,dword ptr ds:[4AEE98];TCustomButtonControl
 004C96A2    call        @IsClass
 004C96A7    test        al,al
>004C96A9    je          004C96B9
 004C96AB    mov         eax,dword ptr [ebp-4]
 004C96AE    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 004C96B4    mov         edx,dword ptr [eax]
 004C96B6    call        dword ptr [edx+7C];TCustomActionControl.sub_00483F08
 004C96B9    mov         eax,dword ptr [ebp-4]
 004C96BC    call        TCustomActionPopupMenu.sub_0048513C
 004C96C1    pop         ecx
 004C96C2    pop         ebp
 004C96C3    ret
*}
end;

//004C96C4
{*procedure sub_004C96C4(?:?);
begin
 004C96C4    push        ebp
 004C96C5    mov         ebp,esp
 004C96C7    add         esp,0FFFFFFE8
 004C96CA    push        esi
 004C96CB    push        edi
 004C96CC    mov         dword ptr [ebp-8],edx
 004C96CF    mov         dword ptr [ebp-4],eax
 004C96D2    mov         eax,dword ptr [ebp-4]
 004C96D5    call        004B59A4
 004C96DA    call        004C4A40
 004C96DF    mov         edx,dword ptr [eax+74]
 004C96E2    mov         eax,dword ptr [ebp-4]
 004C96E5    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 004C96EB    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C96EE    call        TBrush.SetColor
 004C96F3    mov         edx,dword ptr [ebp-8]
 004C96F6    mov         eax,dword ptr [ebp-4]
 004C96F9    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 004C96FF    call        0042F030
 004C9704    mov         eax,dword ptr [ebp-8]
 004C9707    mov         esi,eax
 004C9709    lea         edi,[ebp-18]
 004C970C    movs        dword ptr [edi],dword ptr [esi]
 004C970D    movs        dword ptr [edi],dword ptr [esi]
 004C970E    movs        dword ptr [edi],dword ptr [esi]
 004C970F    movs        dword ptr [edi],dword ptr [esi]
 004C9710    mov         dword ptr [ebp-10],18
 004C9717    mov         eax,dword ptr [ebp-4]
 004C971A    call        004B59A4
 004C971F    call        004C4A40
 004C9724    mov         edx,dword ptr [eax+34]
 004C9727    mov         eax,dword ptr [ebp-4]
 004C972A    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 004C9730    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9733    call        TBrush.SetColor
 004C9738    lea         edx,[ebp-18]
 004C973B    mov         eax,dword ptr [ebp-4]
 004C973E    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 004C9744    call        0042F030
 004C9749    mov         eax,dword ptr [ebp-4]
 004C974C    cmp         byte ptr [eax+1AE],2;TXPStyleExpandBtn.FState:TButtonState
>004C9753    je          004C977C
 004C9755    mov         eax,dword ptr [ebp-4]
 004C9758    cmp         byte ptr [eax+1AD],0;TXPStyleExpandBtn.FFlat:Boolean
>004C975F    je          004C977C
 004C9761    mov         eax,dword ptr [ebp-4]
 004C9764    cmp         byte ptr [eax+1AB],0;TXPStyleExpandBtn.FMouseInControl:Boolean
>004C976B    jne         004C977C
 004C976D    mov         eax,dword ptr [ebp-4]
 004C9770    mov         edx,dword ptr [eax]
 004C9772    call        dword ptr [edx+0C0];TXPStyleExpandBtn.sub_004C6B70
 004C9778    test        al,al
>004C977A    je          004C97C8
 004C977C    push        1
 004C977E    push        0
 004C9780    mov         eax,dword ptr [ebp-8]
 004C9783    push        eax
 004C9784    call        user32.OffsetRect
 004C9789    push        0FC
 004C978B    push        0FE
 004C978D    mov         eax,dword ptr [ebp-8]
 004C9790    push        eax
 004C9791    call        user32.InflateRect
 004C9796    mov         eax,dword ptr [ebp-4]
 004C9799    call        004B59A4
 004C979E    call        004C4A40
 004C97A3    mov         edx,dword ptr [eax+68]
 004C97A6    mov         eax,dword ptr [ebp-4]
 004C97A9    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 004C97AF    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C97B2    call        TBrush.SetColor
 004C97B7    mov         edx,dword ptr [ebp-8]
 004C97BA    mov         eax,dword ptr [ebp-4]
 004C97BD    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 004C97C3    call        0042F030
 004C97C8    pop         edi
 004C97C9    pop         esi
 004C97CA    mov         esp,ebp
 004C97CC    pop         ebp
 004C97CD    ret
end;*}

//004C97D0
{*procedure sub_004C97D0(?:?; ?:?);
begin
 004C97D0    push        ebp
 004C97D1    mov         ebp,esp
 004C97D3    add         esp,0FFFFFFE8
 004C97D6    push        esi
 004C97D7    push        edi
 004C97D8    mov         esi,edx
 004C97DA    lea         edi,[ebp-14]
 004C97DD    movs        dword ptr [edi],dword ptr [esi]
 004C97DE    movs        dword ptr [edi],dword ptr [esi]
 004C97DF    movs        dword ptr [edi],dword ptr [esi]
 004C97E0    movs        dword ptr [edi],dword ptr [esi]
 004C97E1    mov         byte ptr [ebp-15],cl
 004C97E4    mov         dword ptr [ebp-4],eax
 004C97E7    mov         eax,dword ptr [ebp-4]
 004C97EA    mov         edx,dword ptr [eax]
 004C97EC    call        dword ptr [edx+50];TImage.GetEnabled
 004C97EF    test        al,al
>004C97F1    je          004C9872
 004C97F3    mov         eax,dword ptr [ebp-4]
 004C97F6    cmp         byte ptr [eax+1AE],2;TXPStyleExpandBtn.FState:TButtonState
>004C97FD    je          004C9826
 004C97FF    mov         eax,dword ptr [ebp-4]
 004C9802    cmp         byte ptr [eax+1AD],0;TXPStyleExpandBtn.FFlat:Boolean
>004C9809    je          004C9826
 004C980B    mov         eax,dword ptr [ebp-4]
 004C980E    cmp         byte ptr [eax+1AB],0;TXPStyleExpandBtn.FMouseInControl:Boolean
>004C9815    jne         004C9826
 004C9817    mov         eax,dword ptr [ebp-4]
 004C981A    mov         edx,dword ptr [eax]
 004C981C    call        dword ptr [edx+0C0];TXPStyleExpandBtn.sub_004C6B70
 004C9822    test        al,al
>004C9824    je          004C9872
 004C9826    push        1
 004C9828    push        0
 004C982A    lea         eax,[ebp-14]
 004C982D    push        eax
 004C982E    call        user32.OffsetRect
 004C9833    push        0FC
 004C9835    push        0FE
 004C9837    lea         eax,[ebp-14]
 004C983A    push        eax
 004C983B    call        user32.InflateRect
 004C9840    mov         eax,dword ptr [ebp-4]
 004C9843    call        004C6C1C
 004C9848    call        004C4A40
 004C984D    mov         edx,dword ptr [eax+38]
 004C9850    mov         eax,dword ptr [ebp-4]
 004C9853    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 004C9859    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C985C    call        TPen.SetColor
 004C9861    lea         edx,[ebp-14]
 004C9864    mov         eax,dword ptr [ebp-4]
 004C9867    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 004C986D    call        0042F274
 004C9872    pop         edi
 004C9873    pop         esi
 004C9874    mov         esp,ebp
 004C9876    pop         ebp
 004C9877    ret
end;*}

//004C9878
{*procedure sub_004C9878(?:?);
begin
 004C9878    push        ebp
 004C9879    mov         ebp,esp
 004C987B    add         esp,0FFFFFFF8
 004C987E    mov         dword ptr [ebp-8],edx
 004C9881    mov         dword ptr [ebp-4],eax
 004C9884    mov         eax,dword ptr [ebp-4]
 004C9887    mov         edx,dword ptr [eax]
 004C9889    call        dword ptr [edx+50];TImage.GetEnabled
 004C988C    test        al,al
>004C988E    je          004C9924
 004C9894    mov         eax,dword ptr [ebp-4]
 004C9897    call        004C6C1C
 004C989C    mov         edx,dword ptr [eax]
 004C989E    call        dword ptr [edx+104]
 004C98A4    test        al,al
>004C98A6    jne         004C9924
 004C98A8    mov         eax,dword ptr [ebp-4]
 004C98AB    cmp         byte ptr [eax+1AB],0;TXPStyleButton.FMouseInControl:Boolean
>004C98B2    jne         004C98C3
 004C98B4    mov         eax,dword ptr [ebp-4]
 004C98B7    mov         edx,dword ptr [eax]
 004C98B9    call        dword ptr [edx+0C0];TXPStyleButton.sub_004C6B70
 004C98BF    test        al,al
>004C98C1    je          004C9901
 004C98C3    mov         eax,dword ptr [ebp-4]
 004C98C6    cmp         dword ptr [eax+16C],0;TXPStyleButton.FActionClient:TActionClientItem
>004C98CD    je          004C9901
 004C98CF    mov         eax,dword ptr [ebp-4]
 004C98D2    mov         eax,dword ptr [eax+16C];TXPStyleButton.FActionClient:TActionClientItem
 004C98D8    cmp         byte ptr [eax+50],0;TActionClientItem.FSeparator:Boolean
>004C98DC    jne         004C9901
 004C98DE    mov         eax,dword ptr [ebp-4]
 004C98E1    call        004C6C1C
 004C98E6    call        004C4A40
 004C98EB    mov         edx,dword ptr [eax+68]
 004C98EE    mov         eax,dword ptr [ebp-4]
 004C98F1    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C98F7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C98FA    call        TBrush.SetColor
>004C98FF    jmp         004C9945
 004C9901    mov         eax,dword ptr [ebp-4]
 004C9904    call        004C6C1C
 004C9909    call        004C4A40
 004C990E    mov         edx,dword ptr [eax+40]
 004C9911    mov         eax,dword ptr [ebp-4]
 004C9914    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C991A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C991D    call        TBrush.SetColor
>004C9922    jmp         004C9945
 004C9924    mov         eax,dword ptr [ebp-4]
 004C9927    call        004C6C1C
 004C992C    call        004C4A40
 004C9931    mov         edx,dword ptr [eax+40]
 004C9934    mov         eax,dword ptr [ebp-4]
 004C9937    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C993D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9940    call        TBrush.SetColor
 004C9945    mov         edx,dword ptr [ebp-8]
 004C9948    mov         eax,dword ptr [ebp-4]
 004C994B    call        004AFC50
 004C9950    pop         ecx
 004C9951    pop         ecx
 004C9952    pop         ebp
 004C9953    ret
end;*}

//004C9954
{*procedure sub_004C9954(?:?; ?:?);
begin
 004C9954    push        ebp
 004C9955    mov         ebp,esp
 004C9957    add         esp,0FFFFFFE8
 004C995A    push        esi
 004C995B    push        edi
 004C995C    mov         esi,edx
 004C995E    lea         edi,[ebp-14]
 004C9961    movs        dword ptr [edi],dword ptr [esi]
 004C9962    movs        dword ptr [edi],dword ptr [esi]
 004C9963    movs        dword ptr [edi],dword ptr [esi]
 004C9964    movs        dword ptr [edi],dword ptr [esi]
 004C9965    mov         byte ptr [ebp-15],cl
 004C9968    mov         dword ptr [ebp-4],eax
 004C996B    mov         eax,dword ptr [ebp-4]
 004C996E    call        004C6C1C
 004C9973    mov         edx,dword ptr [eax]
 004C9975    call        dword ptr [edx+104]
 004C997B    test        al,al
>004C997D    jne         004C9A07
 004C9983    mov         eax,dword ptr [ebp-4]
 004C9986    mov         edx,dword ptr [eax]
 004C9988    call        dword ptr [edx+50];TImage.GetEnabled
 004C998B    test        al,al
>004C998D    je          004C9A07
 004C998F    mov         eax,dword ptr [ebp-4]
 004C9992    cmp         byte ptr [eax+1AE],2;TXPStyleButton.FState:TButtonState
>004C9999    je          004C99C2
 004C999B    mov         eax,dword ptr [ebp-4]
 004C999E    cmp         byte ptr [eax+1AD],0;TXPStyleButton.FFlat:Boolean
>004C99A5    je          004C99C2
 004C99A7    mov         eax,dword ptr [ebp-4]
 004C99AA    cmp         byte ptr [eax+1AB],0;TXPStyleButton.FMouseInControl:Boolean
>004C99B1    jne         004C99C2
 004C99B3    mov         eax,dword ptr [ebp-4]
 004C99B6    mov         edx,dword ptr [eax]
 004C99B8    call        dword ptr [edx+0C0];TXPStyleButton.sub_004C6B70
 004C99BE    test        al,al
>004C99C0    je          004C9A07
 004C99C2    mov         eax,dword ptr [ebp-4]
 004C99C5    call        004C6C1C
 004C99CA    call        004C4A40
 004C99CF    mov         edx,dword ptr [eax+38]
 004C99D2    mov         eax,dword ptr [ebp-4]
 004C99D5    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C99DB    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C99DE    call        TPen.SetColor
 004C99E3    mov         eax,dword ptr [ebp-4]
 004C99E6    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C99EC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C99EF    mov         dl,1
 004C99F1    call        TBrush.SetStyle
 004C99F6    lea         edx,[ebp-14]
 004C99F9    mov         eax,dword ptr [ebp-4]
 004C99FC    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C9A02    call        0042F274
 004C9A07    pop         edi
 004C9A08    pop         esi
 004C9A09    mov         esp,ebp
 004C9A0B    pop         ebp
 004C9A0C    ret
end;*}

//004C9A10
{*procedure sub_004C9A10(?:?);
begin
 004C9A10    push        ebp
 004C9A11    mov         ebp,esp
 004C9A13    add         esp,0FFFFFFE4
 004C9A16    mov         dword ptr [ebp-8],edx
 004C9A19    mov         dword ptr [ebp-4],eax
 004C9A1C    mov         eax,dword ptr [ebp-8]
 004C9A1F    mov         edx,dword ptr [eax]
 004C9A21    mov         dword ptr [ebp-18],edx
 004C9A24    mov         edx,dword ptr [eax+4]
 004C9A27    mov         dword ptr [ebp-14],edx
 004C9A2A    mov         eax,dword ptr [ebp-4]
 004C9A2D    call        004C6C1C
 004C9A32    mov         edx,dword ptr [eax]
 004C9A34    call        dword ptr [edx+104]
 004C9A3A    test        al,al
>004C9A3C    jne         004C9BCD
 004C9A42    mov         eax,dword ptr [ebp-4]
 004C9A45    cmp         byte ptr [eax+1AB],0;TXPStyleButton.FMouseInControl:Boolean
>004C9A4C    je          004C9BCD
 004C9A52    mov         eax,dword ptr [ebp-4]
 004C9A55    mov         edx,dword ptr [eax]
 004C9A57    call        dword ptr [edx+0C0];TXPStyleButton.sub_004C6B70
 004C9A5D    test        al,al
>004C9A5F    jne         004C9BCD
 004C9A65    mov         eax,dword ptr [ebp-4]
 004C9A68    mov         edx,dword ptr [eax]
 004C9A6A    call        dword ptr [edx+50];TImage.GetEnabled
 004C9A6D    test        al,al
>004C9A6F    je          004C9BCD
 004C9A75    mov         eax,dword ptr [ebp-4]
 004C9A78    mov         eax,dword ptr [eax+16C];TXPStyleButton.FActionClient:TActionClientItem
 004C9A7E    call        004C0320
 004C9A83    test        al,al
>004C9A85    je          004C9BCD
 004C9A8B    mov         eax,dword ptr [ebp-4]
 004C9A8E    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C9A94    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9A97    call        TBrush.GetColor
 004C9A9C    mov         dword ptr [ebp-0C],eax
 004C9A9F    mov         dl,1
 004C9AA1    mov         eax,[0042CF48];TBitmap
 004C9AA6    call        TBitmap.Create;TBitmap.Create
 004C9AAB    mov         dword ptr [ebp-10],eax
 004C9AAE    xor         eax,eax
 004C9AB0    push        ebp
 004C9AB1    push        4C9BB1
 004C9AB6    push        dword ptr fs:[eax]
 004C9AB9    mov         dword ptr fs:[eax],esp
 004C9ABC    mov         eax,dword ptr [ebp-4]
 004C9ABF    mov         eax,dword ptr [eax+16C];TXPStyleButton.FActionClient:TActionClientItem
 004C9AC5    call        TActionClientItem.GetAction
 004C9ACA    mov         eax,dword ptr [eax+5C]
 004C9ACD    mov         dword ptr [ebp-1C],eax
 004C9AD0    mov         eax,dword ptr [ebp-4]
 004C9AD3    mov         eax,dword ptr [eax+16C];TXPStyleButton.FActionClient:TActionClientItem
 004C9AD9    mov         edx,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 004C9ADC    mov         eax,dword ptr [ebp-1C]
 004C9ADF    mov         eax,dword ptr [eax+38]
 004C9AE2    mov         ecx,dword ptr [ebp-10]
 004C9AE5    call        00495300
 004C9AEA    test        al,al
>004C9AEC    je          004C9B87
 004C9AF2    mov         eax,dword ptr [ebp-4]
 004C9AF5    call        004C6C1C
 004C9AFA    call        004C4A40
 004C9AFF    mov         eax,dword ptr [eax+68]
 004C9B02    mov         edx,0FFFFFFCE
 004C9B07    call        004AD82C
 004C9B0C    mov         edx,eax
 004C9B0E    mov         eax,dword ptr [ebp-4]
 004C9B11    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C9B17    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9B1A    call        TBrush.SetColor
 004C9B1F    mov         eax,dword ptr [ebp-1C]
 004C9B22    mov         eax,dword ptr [eax+38]
 004C9B25    mov         edx,dword ptr [eax+34]
 004C9B28    mov         eax,dword ptr [ebp-10]
 004C9B2B    mov         ecx,dword ptr [eax]
 004C9B2D    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004C9B30    mov         eax,dword ptr [ebp-1C]
 004C9B33    mov         eax,dword ptr [eax+38]
 004C9B36    mov         edx,dword ptr [eax+34]
 004C9B39    mov         eax,dword ptr [ebp-10]
 004C9B3C    mov         ecx,dword ptr [eax]
 004C9B3E    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004C9B41    push        84
 004C9B46    push        0
 004C9B48    push        0
 004C9B4A    mov         eax,dword ptr [ebp-14]
 004C9B4D    inc         eax
 004C9B4E    push        eax
 004C9B4F    mov         eax,dword ptr [ebp-18]
 004C9B52    inc         eax
 004C9B53    push        eax
 004C9B54    push        0
 004C9B56    mov         eax,dword ptr [ebp-10]
 004C9B59    mov         edx,dword ptr [eax]
 004C9B5B    call        dword ptr [edx+64];TBitmap.sub_004349FC
 004C9B5E    push        eax
 004C9B5F    push        0
 004C9B61    mov         eax,dword ptr [ebp-4]
 004C9B64    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C9B6A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9B6D    call        TBrush.GetHandle
 004C9B72    push        eax
 004C9B73    mov         eax,dword ptr [ebp-4]
 004C9B76    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C9B7C    call        0042F6A0
 004C9B81    push        eax
 004C9B82    call        user32.DrawStateA
 004C9B87    xor         eax,eax
 004C9B89    pop         edx
 004C9B8A    pop         ecx
 004C9B8B    pop         ecx
 004C9B8C    mov         dword ptr fs:[eax],edx
 004C9B8F    push        4C9BB8
 004C9B94    mov         eax,dword ptr [ebp-10]
 004C9B97    call        TObject.Free
 004C9B9C    mov         eax,dword ptr [ebp-4]
 004C9B9F    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C9BA5    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9BA8    mov         edx,dword ptr [ebp-0C]
 004C9BAB    call        TBrush.SetColor
 004C9BB0    ret
>004C9BB1    jmp         @HandleFinally
>004C9BB6    jmp         004C9B94
 004C9BB8    mov         eax,dword ptr [ebp-4]
 004C9BBB    mov         edx,dword ptr [eax]
 004C9BBD    call        dword ptr [edx+0C0];TXPStyleButton.sub_004C6B70
 004C9BC3    test        al,al
>004C9BC5    jne         004C9BCD
 004C9BC7    dec         dword ptr [ebp-18]
 004C9BCA    dec         dword ptr [ebp-14]
 004C9BCD    mov         eax,dword ptr [ebp-4]
 004C9BD0    test        byte ptr [eax+1C],10;TXPStyleButton.FComponentState:TComponentState
>004C9BD4    jne         004C9C00
 004C9BD6    mov         eax,dword ptr [ebp-4]
 004C9BD9    cmp         byte ptr [eax+1AE],2;TXPStyleButton.FState:TButtonState
>004C9BE0    jne         004C9C00
 004C9BE2    mov         eax,dword ptr [ebp-4]
 004C9BE5    mov         edx,dword ptr [eax]
 004C9BE7    call        dword ptr [edx+0C0];TXPStyleButton.sub_004C6B70
 004C9BED    test        al,al
>004C9BEF    jne         004C9C00
 004C9BF1    call        004C8314
 004C9BF6    test        al,al
>004C9BF8    je          004C9C00
 004C9BFA    inc         dword ptr [ebp-18]
 004C9BFD    inc         dword ptr [ebp-14]
 004C9C00    lea         edx,[ebp-18]
 004C9C03    mov         eax,dword ptr [ebp-4]
 004C9C06    call        004C535C
 004C9C0B    mov         esp,ebp
 004C9C0D    pop         ebp
 004C9C0E    ret
end;*}

//004C9C10
{*procedure sub_004C9C10(?:?; ?:?; ?:?);
begin
 004C9C10    push        ebp
 004C9C11    mov         ebp,esp
 004C9C13    add         esp,0FFFFFFF4
 004C9C16    mov         dword ptr [ebp-0C],ecx
 004C9C19    mov         dword ptr [ebp-8],edx
 004C9C1C    mov         dword ptr [ebp-4],eax
 004C9C1F    mov         eax,dword ptr [ebp+8]
 004C9C22    call        @LStrAddRef
 004C9C27    xor         eax,eax
 004C9C29    push        ebp
 004C9C2A    push        4C9CA0
 004C9C2F    push        dword ptr fs:[eax]
 004C9C32    mov         dword ptr fs:[eax],esp
 004C9C35    mov         eax,dword ptr [ebp-4]
 004C9C38    cmp         byte ptr [eax+1AB],0;TXPStyleButton.FMouseInControl:Boolean
>004C9C3F    je          004C9C78
 004C9C41    mov         eax,dword ptr [ebp-4]
 004C9C44    call        004C6C1C
 004C9C49    call        004C4A40
 004C9C4E    cmp         dword ptr [eax+5C],20000000
>004C9C55    je          004C9C78
 004C9C57    mov         eax,dword ptr [ebp-4]
 004C9C5A    call        004C6C1C
 004C9C5F    call        004C4A40
 004C9C64    mov         edx,dword ptr [eax+5C]
 004C9C67    mov         eax,dword ptr [ebp-4]
 004C9C6A    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 004C9C70    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C9C73    call        TFont.SetColor
 004C9C78    mov         eax,dword ptr [ebp+8]
 004C9C7B    push        eax
 004C9C7C    mov         ecx,dword ptr [ebp-0C]
 004C9C7F    mov         edx,dword ptr [ebp-8]
 004C9C82    mov         eax,dword ptr [ebp-4]
 004C9C85    call        004C5A00
 004C9C8A    xor         eax,eax
 004C9C8C    pop         edx
 004C9C8D    pop         ecx
 004C9C8E    pop         ecx
 004C9C8F    mov         dword ptr fs:[eax],edx
 004C9C92    push        4C9CA7
 004C9C97    lea         eax,[ebp+8]
 004C9C9A    call        @LStrClr
 004C9C9F    ret
>004C9CA0    jmp         @HandleFinally
>004C9CA5    jmp         004C9C97
 004C9CA7    mov         esp,ebp
 004C9CA9    pop         ebp
 004C9CAA    ret         4
end;*}

//004C9CB0
{*procedure sub_004C9CB0(?:?);
begin
 004C9CB0    push        ebp
 004C9CB1    mov         ebp,esp
 004C9CB3    add         esp,0FFFFFFF8
 004C9CB6    mov         dword ptr [ebp-8],edx
 004C9CB9    mov         dword ptr [ebp-4],eax
 004C9CBC    mov         eax,dword ptr [ebp-4]
 004C9CBF    mov         edx,dword ptr [eax]
 004C9CC1    call        dword ptr [edx+50];TImage.GetEnabled
 004C9CC4    test        al,al
>004C9CC6    je          004C9D4D
 004C9CCC    mov         eax,dword ptr [ebp-4]
 004C9CCF    call        004C6C1C
 004C9CD4    mov         edx,dword ptr [eax]
 004C9CD6    call        dword ptr [edx+104]
 004C9CDC    test        al,al
>004C9CDE    jne         004C9D4D
 004C9CE0    mov         eax,dword ptr [ebp-4]
 004C9CE3    cmp         byte ptr [eax+1AB],0;TXPStyleDropDownBtn.FMouseInControl:Boolean
>004C9CEA    jne         004C9CFB
 004C9CEC    mov         eax,dword ptr [ebp-4]
 004C9CEF    mov         edx,dword ptr [eax]
 004C9CF1    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_004C6B70
 004C9CF7    test        al,al
>004C9CF9    je          004C9D2A
 004C9CFB    mov         eax,dword ptr [ebp-4]
 004C9CFE    cmp         dword ptr [eax+16C],0;TXPStyleDropDownBtn.FActionClient:TActionClientItem
>004C9D05    je          004C9D2A
 004C9D07    mov         eax,dword ptr [ebp-4]
 004C9D0A    call        004C6C1C
 004C9D0F    call        004C4A40
 004C9D14    mov         edx,dword ptr [eax+68]
 004C9D17    mov         eax,dword ptr [ebp-4]
 004C9D1A    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9D20    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9D23    call        TBrush.SetColor
>004C9D28    jmp         004C9D6E
 004C9D2A    mov         eax,dword ptr [ebp-4]
 004C9D2D    call        004C6C1C
 004C9D32    call        004C4A40
 004C9D37    mov         edx,dword ptr [eax+40]
 004C9D3A    mov         eax,dword ptr [ebp-4]
 004C9D3D    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9D43    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9D46    call        TBrush.SetColor
>004C9D4B    jmp         004C9D6E
 004C9D4D    mov         eax,dword ptr [ebp-4]
 004C9D50    call        004C6C1C
 004C9D55    call        004C4A40
 004C9D5A    mov         edx,dword ptr [eax+40]
 004C9D5D    mov         eax,dword ptr [ebp-4]
 004C9D60    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9D66    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9D69    call        TBrush.SetColor
 004C9D6E    mov         edx,dword ptr [ebp-8]
 004C9D71    mov         eax,dword ptr [ebp-4]
 004C9D74    call        004AFC50
 004C9D79    pop         ecx
 004C9D7A    pop         ecx
 004C9D7B    pop         ebp
 004C9D7C    ret
end;*}

//004C9D80
{*procedure sub_004C9D80(?:?; ?:?);
begin
 004C9D80    push        ebp
 004C9D81    mov         ebp,esp
 004C9D83    add         esp,0FFFFFFE8
 004C9D86    push        esi
 004C9D87    push        edi
 004C9D88    mov         esi,edx
 004C9D8A    lea         edi,[ebp-14]
 004C9D8D    movs        dword ptr [edi],dword ptr [esi]
 004C9D8E    movs        dword ptr [edi],dword ptr [esi]
 004C9D8F    movs        dword ptr [edi],dword ptr [esi]
 004C9D90    movs        dword ptr [edi],dword ptr [esi]
 004C9D91    mov         byte ptr [ebp-15],cl
 004C9D94    mov         dword ptr [ebp-4],eax
 004C9D97    mov         eax,dword ptr [ebp-4]
 004C9D9A    mov         edx,dword ptr [eax]
 004C9D9C    call        dword ptr [edx+50];TImage.GetEnabled
 004C9D9F    test        al,al
>004C9DA1    je          004C9E34
 004C9DA7    mov         eax,dword ptr [ebp-4]
 004C9DAA    call        004C6C1C
 004C9DAF    mov         edx,dword ptr [eax]
 004C9DB1    call        dword ptr [edx+104]
 004C9DB7    test        al,al
>004C9DB9    jne         004C9E34
 004C9DBB    mov         eax,dword ptr [ebp-4]
 004C9DBE    cmp         byte ptr [eax+1AB],0;TXPStyleDropDownBtn.FMouseInControl:Boolean
>004C9DC5    jne         004C9DD6
 004C9DC7    mov         eax,dword ptr [ebp-4]
 004C9DCA    mov         edx,dword ptr [eax]
 004C9DCC    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_004C6B70
 004C9DD2    test        al,al
>004C9DD4    je          004C9E34
 004C9DD6    mov         eax,dword ptr [ebp-4]
 004C9DD9    cmp         dword ptr [eax+16C],0;TXPStyleDropDownBtn.FActionClient:TActionClientItem
>004C9DE0    je          004C9E34
 004C9DE2    mov         eax,dword ptr [ebp-4]
 004C9DE5    call        004C6C1C
 004C9DEA    call        004C4A40
 004C9DEF    mov         edx,dword ptr [eax+38]
 004C9DF2    mov         eax,dword ptr [ebp-4]
 004C9DF5    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9DFB    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C9DFE    call        TPen.SetColor
 004C9E03    sub         dword ptr [ebp-0C],9
 004C9E07    lea         edx,[ebp-14]
 004C9E0A    mov         eax,dword ptr [ebp-4]
 004C9E0D    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9E13    call        0042F274
 004C9E18    mov         eax,dword ptr [ebp-0C]
 004C9E1B    dec         eax
 004C9E1C    mov         dword ptr [ebp-14],eax
 004C9E1F    add         dword ptr [ebp-0C],9
 004C9E23    lea         edx,[ebp-14]
 004C9E26    mov         eax,dword ptr [ebp-4]
 004C9E29    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9E2F    call        0042F274
 004C9E34    pop         edi
 004C9E35    pop         esi
 004C9E36    mov         esp,ebp
 004C9E38    pop         ebp
 004C9E39    ret
end;*}

//004C9E3C
{*procedure sub_004C9E3C(?:?);
begin
 004C9E3C    push        ebp
 004C9E3D    mov         ebp,esp
 004C9E3F    add         esp,0FFFFFFE4
 004C9E42    mov         dword ptr [ebp-8],edx
 004C9E45    mov         dword ptr [ebp-4],eax
 004C9E48    mov         eax,dword ptr [ebp-8]
 004C9E4B    mov         edx,dword ptr [eax]
 004C9E4D    mov         dword ptr [ebp-18],edx
 004C9E50    mov         edx,dword ptr [eax+4]
 004C9E53    mov         dword ptr [ebp-14],edx
 004C9E56    mov         eax,dword ptr [ebp-4]
 004C9E59    call        004C6C1C
 004C9E5E    mov         edx,dword ptr [eax]
 004C9E60    call        dword ptr [edx+104]
 004C9E66    test        al,al
>004C9E68    jne         004C9FF3
 004C9E6E    mov         eax,dword ptr [ebp-4]
 004C9E71    cmp         byte ptr [eax+1AB],0;TXPStyleDropDownBtn.FMouseInControl:Boolean
>004C9E78    je          004C9FF3
 004C9E7E    mov         eax,dword ptr [ebp-4]
 004C9E81    mov         edx,dword ptr [eax]
 004C9E83    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_004C6B70
 004C9E89    test        al,al
>004C9E8B    jne         004C9FF3
 004C9E91    mov         eax,dword ptr [ebp-4]
 004C9E94    mov         edx,dword ptr [eax]
 004C9E96    call        dword ptr [edx+50];TImage.GetEnabled
 004C9E99    test        al,al
>004C9E9B    je          004C9FF3
 004C9EA1    mov         eax,dword ptr [ebp-4]
 004C9EA4    mov         eax,dword ptr [eax+16C];TXPStyleDropDownBtn.FActionClient:TActionClientItem
 004C9EAA    call        004C0320
 004C9EAF    test        al,al
>004C9EB1    je          004C9FF3
 004C9EB7    mov         eax,dword ptr [ebp-4]
 004C9EBA    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9EC0    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9EC3    call        TBrush.GetColor
 004C9EC8    mov         dword ptr [ebp-0C],eax
 004C9ECB    mov         dl,1
 004C9ECD    mov         eax,[0042CF48];TBitmap
 004C9ED2    call        TBitmap.Create;TBitmap.Create
 004C9ED7    mov         dword ptr [ebp-10],eax
 004C9EDA    xor         eax,eax
 004C9EDC    push        ebp
 004C9EDD    push        4C9FD7
 004C9EE2    push        dword ptr fs:[eax]
 004C9EE5    mov         dword ptr fs:[eax],esp
 004C9EE8    mov         eax,dword ptr [ebp-4]
 004C9EEB    mov         edx,dword ptr [eax]
 004C9EED    call        dword ptr [edx+3C];TXPStyleDropDownBtn.sub_004C6BC4
 004C9EF0    mov         eax,dword ptr [eax+5C]
 004C9EF3    mov         dword ptr [ebp-1C],eax
 004C9EF6    mov         eax,dword ptr [ebp-4]
 004C9EF9    mov         eax,dword ptr [eax+16C];TXPStyleDropDownBtn.FActionClient:TActionClientItem
 004C9EFF    mov         edx,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 004C9F02    mov         eax,dword ptr [ebp-1C]
 004C9F05    mov         eax,dword ptr [eax+38]
 004C9F08    mov         ecx,dword ptr [ebp-10]
 004C9F0B    call        00495300
 004C9F10    test        al,al
>004C9F12    je          004C9FAD
 004C9F18    mov         eax,dword ptr [ebp-4]
 004C9F1B    call        004C6C1C
 004C9F20    call        004C4A40
 004C9F25    mov         eax,dword ptr [eax+68]
 004C9F28    mov         edx,0FFFFFFCE
 004C9F2D    call        004AD82C
 004C9F32    mov         edx,eax
 004C9F34    mov         eax,dword ptr [ebp-4]
 004C9F37    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9F3D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9F40    call        TBrush.SetColor
 004C9F45    mov         eax,dword ptr [ebp-1C]
 004C9F48    mov         eax,dword ptr [eax+38]
 004C9F4B    mov         edx,dword ptr [eax+34]
 004C9F4E    mov         eax,dword ptr [ebp-10]
 004C9F51    mov         ecx,dword ptr [eax]
 004C9F53    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004C9F56    mov         eax,dword ptr [ebp-1C]
 004C9F59    mov         eax,dword ptr [eax+38]
 004C9F5C    mov         edx,dword ptr [eax+34]
 004C9F5F    mov         eax,dword ptr [ebp-10]
 004C9F62    mov         ecx,dword ptr [eax]
 004C9F64    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004C9F67    push        84
 004C9F6C    push        0
 004C9F6E    push        0
 004C9F70    mov         eax,dword ptr [ebp-14]
 004C9F73    inc         eax
 004C9F74    push        eax
 004C9F75    mov         eax,dword ptr [ebp-18]
 004C9F78    inc         eax
 004C9F79    push        eax
 004C9F7A    push        0
 004C9F7C    mov         eax,dword ptr [ebp-10]
 004C9F7F    mov         edx,dword ptr [eax]
 004C9F81    call        dword ptr [edx+64];TBitmap.sub_004349FC
 004C9F84    push        eax
 004C9F85    push        0
 004C9F87    mov         eax,dword ptr [ebp-4]
 004C9F8A    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9F90    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9F93    call        TBrush.GetHandle
 004C9F98    push        eax
 004C9F99    mov         eax,dword ptr [ebp-4]
 004C9F9C    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9FA2    call        0042F6A0
 004C9FA7    push        eax
 004C9FA8    call        user32.DrawStateA
 004C9FAD    xor         eax,eax
 004C9FAF    pop         edx
 004C9FB0    pop         ecx
 004C9FB1    pop         ecx
 004C9FB2    mov         dword ptr fs:[eax],edx
 004C9FB5    push        4C9FDE
 004C9FBA    mov         eax,dword ptr [ebp-10]
 004C9FBD    call        TObject.Free
 004C9FC2    mov         eax,dword ptr [ebp-4]
 004C9FC5    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 004C9FCB    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C9FCE    mov         edx,dword ptr [ebp-0C]
 004C9FD1    call        TBrush.SetColor
 004C9FD6    ret
>004C9FD7    jmp         @HandleFinally
>004C9FDC    jmp         004C9FBA
 004C9FDE    mov         eax,dword ptr [ebp-4]
 004C9FE1    mov         edx,dword ptr [eax]
 004C9FE3    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_004C6B70
 004C9FE9    test        al,al
>004C9FEB    jne         004C9FF3
 004C9FED    dec         dword ptr [ebp-18]
 004C9FF0    dec         dword ptr [ebp-14]
 004C9FF3    mov         eax,dword ptr [ebp-4]
 004C9FF6    test        byte ptr [eax+1C],10;TXPStyleDropDownBtn.FComponentState:TComponentState
>004C9FFA    jne         004CA026
 004C9FFC    mov         eax,dword ptr [ebp-4]
 004C9FFF    cmp         byte ptr [eax+1AE],2;TXPStyleDropDownBtn.FState:TButtonState
>004CA006    jne         004CA026
 004CA008    mov         eax,dword ptr [ebp-4]
 004CA00B    mov         edx,dword ptr [eax]
 004CA00D    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_004C6B70
 004CA013    test        al,al
>004CA015    jne         004CA026
 004CA017    call        004C8314
 004CA01C    test        al,al
>004CA01E    je          004CA026
 004CA020    inc         dword ptr [ebp-18]
 004CA023    inc         dword ptr [ebp-14]
 004CA026    lea         edx,[ebp-18]
 004CA029    mov         eax,dword ptr [ebp-4]
 004CA02C    call        004C535C
 004CA031    mov         esp,ebp
 004CA033    pop         ebp
 004CA034    ret
end;*}

//004CA038
{*function sub_004CA038:?;
begin
 004CA038    push        ebp
 004CA039    mov         ebp,esp
 004CA03B    add         esp,0FFFFFFF8
 004CA03E    mov         dword ptr [ebp-4],eax
 004CA041    mov         eax,[004C7730];TXPStylePopupMenu
 004CA046    mov         dword ptr [ebp-8],eax
 004CA049    mov         eax,dword ptr [ebp-8]
 004CA04C    pop         ecx
 004CA04D    pop         ecx
 004CA04E    pop         ebp
 004CA04F    ret
end;*}

//004CA050
constructor sub_004CA050;
begin
{*
 004CA050    push        ebp
 004CA051    mov         ebp,esp
 004CA053    add         esp,0FFFFFFF4
 004CA056    test        dl,dl
>004CA058    je          004CA062
 004CA05A    add         esp,0FFFFFFF0
 004CA05D    call        @ClassCreate
 004CA062    mov         dword ptr [ebp-0C],ecx
 004CA065    mov         byte ptr [ebp-5],dl
 004CA068    mov         dword ptr [ebp-4],eax
 004CA06B    mov         ecx,dword ptr [ebp-0C]
 004CA06E    xor         edx,edx
 004CA070    mov         eax,dword ptr [ebp-4]
 004CA073    call        004B6F6C
 004CA078    xor         edx,edx
 004CA07A    mov         eax,dword ptr [ebp-4]
 004CA07D    call        004C3C04
 004CA082    mov         eax,dword ptr [ebp-4]
 004CA085    cmp         byte ptr [ebp-5],0
>004CA089    je          004CA09A
 004CA08B    call        @AfterConstruction
 004CA090    pop         dword ptr fs:[0]
 004CA097    add         esp,0C
 004CA09A    mov         eax,dword ptr [ebp-4]
 004CA09D    mov         esp,ebp
 004CA09F    pop         ebp
 004CA0A0    ret
*}
end;

//004CA0A4
{*function sub_004CA0A4:?;
begin
 004CA0A4    push        ebp
 004CA0A5    mov         ebp,esp
 004CA0A7    add         esp,0FFFFFFF8
 004CA0AA    mov         dword ptr [ebp-4],eax
 004CA0AD    mov         eax,[004C818C];TXPStyleAddRemoveItem
 004CA0B2    mov         dword ptr [ebp-8],eax
 004CA0B5    mov         eax,dword ptr [ebp-8]
 004CA0B8    pop         ecx
 004CA0B9    pop         ecx
 004CA0BA    pop         ebp
 004CA0BB    ret
end;*}

//004CA0BC
{*function sub_004CA0BC:?;
begin
 004CA0BC    push        ebp
 004CA0BD    mov         ebp,esp
 004CA0BF    add         esp,0FFFFFFF8
 004CA0C2    mov         dword ptr [ebp-4],eax
 004CA0C5    mov         eax,[004AE980];TXPColorMap
 004CA0CA    mov         dword ptr [ebp-8],eax
 004CA0CD    mov         eax,dword ptr [ebp-8]
 004CA0D0    pop         ecx
 004CA0D1    pop         ecx
 004CA0D2    pop         ebp
 004CA0D3    ret
end;*}

//004CA0D4
{*procedure sub_004CA0D4(?:?);
begin
 004CA0D4    push        ebp
 004CA0D5    mov         ebp,esp
 004CA0D7    add         esp,0FFFFFFD8
 004CA0DA    mov         dword ptr [ebp-8],edx
 004CA0DD    mov         dword ptr [ebp-4],eax
 004CA0E0    lea         eax,[ebp-18]
 004CA0E3    push        eax
 004CA0E4    mov         eax,dword ptr [ebp-4]
 004CA0E7    call        TWinControl.GetHandle
 004CA0EC    push        eax
 004CA0ED    call        user32.GetClientRect
 004CA0F2    lea         eax,[ebp-28]
 004CA0F5    push        eax
 004CA0F6    mov         eax,dword ptr [ebp-4]
 004CA0F9    call        TWinControl.GetHandle
 004CA0FE    push        eax
 004CA0FF    call        user32.GetWindowRect
 004CA104    push        2
 004CA106    lea         eax,[ebp-28]
 004CA109    push        eax
 004CA10A    mov         eax,dword ptr [ebp-4]
 004CA10D    call        TWinControl.GetHandle
 004CA112    push        eax
 004CA113    push        0
 004CA115    call        user32.MapWindowPoints
 004CA11A    mov         eax,dword ptr [ebp-24]
 004CA11D    neg         eax
 004CA11F    push        eax
 004CA120    mov         eax,dword ptr [ebp-28]
 004CA123    neg         eax
 004CA125    push        eax
 004CA126    lea         eax,[ebp-18]
 004CA129    push        eax
 004CA12A    call        user32.OffsetRect
 004CA12F    mov         eax,dword ptr [ebp-0C]
 004CA132    push        eax
 004CA133    mov         eax,dword ptr [ebp-10]
 004CA136    push        eax
 004CA137    mov         eax,dword ptr [ebp-14]
 004CA13A    push        eax
 004CA13B    mov         eax,dword ptr [ebp-18]
 004CA13E    push        eax
 004CA13F    mov         eax,dword ptr [ebp-8]
 004CA142    push        eax
 004CA143    call        gdi32.ExcludeClipRect
 004CA148    mov         eax,dword ptr [ebp-24]
 004CA14B    neg         eax
 004CA14D    push        eax
 004CA14E    mov         eax,dword ptr [ebp-28]
 004CA151    neg         eax
 004CA153    push        eax
 004CA154    lea         eax,[ebp-28]
 004CA157    push        eax
 004CA158    call        user32.OffsetRect
 004CA15D    xor         eax,eax
 004CA15F    push        ebp
 004CA160    push        4CA255
 004CA165    push        dword ptr fs:[eax]
 004CA168    mov         dword ptr fs:[eax],esp
 004CA16B    mov         eax,dword ptr [ebp-4]
 004CA16E    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 004CA174    mov         edx,dword ptr [ebp-8]
 004CA177    call        TCanvas.SetHandle
 004CA17C    mov         eax,dword ptr [ebp-4]
 004CA17F    call        004C4A40
 004CA184    mov         edx,dword ptr [eax+7C]
 004CA187    mov         eax,dword ptr [ebp-4]
 004CA18A    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 004CA190    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004CA193    call        TPen.SetColor
 004CA198    mov         eax,dword ptr [ebp-4]
 004CA19B    call        004C4A40
 004CA1A0    mov         edx,dword ptr [eax+40]
 004CA1A3    mov         eax,dword ptr [ebp-4]
 004CA1A6    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 004CA1AC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA1AF    call        TBrush.SetColor
 004CA1B4    lea         edx,[ebp-28]
 004CA1B7    mov         eax,dword ptr [ebp-4]
 004CA1BA    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 004CA1C0    call        0042F274
 004CA1C5    mov         eax,dword ptr [ebp-4]
 004CA1C8    call        004C4A40
 004CA1CD    mov         edx,dword ptr [eax+34]
 004CA1D0    mov         eax,dword ptr [ebp-4]
 004CA1D3    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 004CA1D9    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004CA1DC    call        TPen.SetColor
 004CA1E1    mov         eax,dword ptr [ebp-4]
 004CA1E4    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 004CA1EA    mov         ecx,1
 004CA1EF    mov         edx,1
 004CA1F4    call        0042F14C
 004CA1F9    mov         eax,dword ptr [ebp-4]
 004CA1FC    mov         ecx,dword ptr [eax+4C];TXPStyleCustomizePopup.Height:Integer
 004CA1FF    dec         ecx
 004CA200    mov         eax,dword ptr [ebp-4]
 004CA203    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 004CA209    mov         edx,1
 004CA20E    call        0042F0D0
 004CA213    xor         eax,eax
 004CA215    pop         edx
 004CA216    pop         ecx
 004CA217    pop         ecx
 004CA218    mov         dword ptr fs:[eax],edx
 004CA21B    push        4CA25C
 004CA220    mov         eax,dword ptr [ebp-1C]
 004CA223    push        eax
 004CA224    mov         eax,dword ptr [ebp-20]
 004CA227    push        eax
 004CA228    mov         eax,dword ptr [ebp-24]
 004CA22B    push        eax
 004CA22C    mov         eax,dword ptr [ebp-28]
 004CA22F    push        eax
 004CA230    mov         eax,dword ptr [ebp-4]
 004CA233    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 004CA239    call        0042F6A0
 004CA23E    push        eax
 004CA23F    call        gdi32.IntersectClipRect
 004CA244    mov         eax,dword ptr [ebp-4]
 004CA247    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 004CA24D    xor         edx,edx
 004CA24F    call        TCanvas.SetHandle
 004CA254    ret
>004CA255    jmp         @HandleFinally
>004CA25A    jmp         004CA220
 004CA25C    mov         esp,ebp
 004CA25E    pop         ebp
 004CA25F    ret
end;*}

//004CA260
procedure sub_004CA260;
begin
{*
 004CA260    push        ebp
 004CA261    mov         ebp,esp
 004CA263    push        ecx
 004CA264    mov         dword ptr [ebp-4],eax
 004CA267    mov         eax,dword ptr [ebp-4]
 004CA26A    call        004B6E90
 004CA26F    mov         eax,dword ptr [ebp-4]
 004CA272    mov         edx,dword ptr [eax]
 004CA274    call        dword ptr [edx+0C8];TXPStyleAddRemoveItem.sub_004C6AA0
 004CA27A    test        al,al
>004CA27C    je          004CA28E
 004CA27E    mov         edx,3
 004CA283    mov         eax,dword ptr [ebp-4]
 004CA286    call        TToolButton.SetHeight
 004CA28B    pop         ecx
 004CA28C    pop         ebp
 004CA28D    ret
 004CA28E    mov         eax,dword ptr [ebp-4]
 004CA291    mov         edx,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 004CA294    add         edx,2
 004CA297    mov         eax,dword ptr [ebp-4]
 004CA29A    call        TToolButton.SetHeight
 004CA29F    pop         ecx
 004CA2A0    pop         ebp
 004CA2A1    ret
*}
end;

//004CA2A4
{*procedure sub_004CA2A4(?:?);
begin
 004CA2A4    push        ebp
 004CA2A5    mov         ebp,esp
 004CA2A7    add         esp,0FFFFFFD8
 004CA2AA    push        esi
 004CA2AB    push        edi
 004CA2AC    mov         dword ptr [ebp-8],edx
 004CA2AF    mov         dword ptr [ebp-4],eax
 004CA2B2    mov         eax,dword ptr [ebp-4]
 004CA2B5    cmp         dword ptr [eax+16C],0;TXPStyleAddRemoveItem.FActionClient:TActionClientItem
>004CA2BC    je          004CA4C5
 004CA2C2    mov         eax,dword ptr [ebp-4]
 004CA2C5    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 004CA2CB    cmp         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
>004CA2D2    je          004CA2F1
 004CA2D4    mov         eax,dword ptr [ebp-4]
 004CA2D7    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 004CA2DD    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 004CA2E0    mov         eax,dword ptr [ebp-4]
 004CA2E3    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA2E9    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA2EC    call        TBrush.SetColor
 004CA2F1    mov         eax,dword ptr [ebp-8]
 004CA2F4    mov         esi,eax
 004CA2F6    lea         edi,[ebp-28]
 004CA2F9    movs        dword ptr [edi],dword ptr [esi]
 004CA2FA    movs        dword ptr [edi],dword ptr [esi]
 004CA2FB    movs        dword ptr [edi],dword ptr [esi]
 004CA2FC    movs        dword ptr [edi],dword ptr [esi]
 004CA2FD    mov         eax,dword ptr [ebp-4]
 004CA300    mov         eax,dword ptr [eax+190];TXPStyleAddRemoveItem.FTextBounds:TRect
 004CA306    mov         edx,dword ptr [ebp-4]
 004CA309    cmp         eax,dword ptr [edx+172];TXPStyleAddRemoveItem.FGlyphPos:TPoint
>004CA30F    jle         004CA316
 004CA311    xor         eax,eax
 004CA313    mov         dword ptr [ebp-28],eax
 004CA316    mov         eax,dword ptr [ebp-8]
 004CA319    mov         esi,eax
 004CA31B    lea         edi,[ebp-18]
 004CA31E    movs        dword ptr [edi],dword ptr [esi]
 004CA31F    movs        dword ptr [edi],dword ptr [esi]
 004CA320    movs        dword ptr [edi],dword ptr [esi]
 004CA321    movs        dword ptr [edi],dword ptr [esi]
 004CA322    mov         eax,dword ptr [ebp-4]
 004CA325    mov         eax,dword ptr [eax+190];TXPStyleAddRemoveItem.FTextBounds:TRect
 004CA32B    mov         edx,dword ptr [ebp-4]
 004CA32E    cmp         eax,dword ptr [edx+172];TXPStyleAddRemoveItem.FGlyphPos:TPoint
>004CA334    jle         004CA347
 004CA336    mov         eax,dword ptr [ebp-4]
 004CA339    mov         eax,dword ptr [eax+190];TXPStyleAddRemoveItem.FTextBounds:TRect
 004CA33F    sub         eax,3
 004CA342    mov         dword ptr [ebp-10],eax
>004CA345    jmp         004CA356
 004CA347    mov         eax,dword ptr [ebp-4]
 004CA34A    mov         eax,dword ptr [eax+198];TXPStyleAddRemoveItem.FTextBounds.Right:Longint
 004CA350    add         eax,3
 004CA353    mov         dword ptr [ebp-10],eax
 004CA356    mov         dword ptr [ebp-10],2C
 004CA35D    mov         eax,dword ptr [ebp-10]
 004CA360    sub         eax,dword ptr [ebp-18]
 004CA363    mov         dword ptr [ebp-28],eax
 004CA366    mov         eax,dword ptr [ebp-4]
 004CA369    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 004CA36F    call        004C0C60
 004CA374    test        al,al
>004CA376    je          004CA3A0
 004CA378    mov         eax,dword ptr [ebp-4]
 004CA37B    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA381    call        004C4A40
 004CA386    call        TXPColorMap.GetUnusedColor
 004CA38B    mov         edx,eax
 004CA38D    mov         eax,dword ptr [ebp-4]
 004CA390    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA396    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA399    call        TBrush.SetColor
>004CA39E    jmp         004CA3C2
 004CA3A0    mov         eax,dword ptr [ebp-4]
 004CA3A3    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA3A9    call        004C4A40
 004CA3AE    mov         edx,dword ptr [eax+34]
 004CA3B1    mov         eax,dword ptr [ebp-4]
 004CA3B4    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA3BA    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA3BD    call        TBrush.SetColor
 004CA3C2    lea         edx,[ebp-18]
 004CA3C5    mov         eax,dword ptr [ebp-4]
 004CA3C8    call        004C522C
 004CA3CD    mov         eax,dword ptr [ebp-4]
 004CA3D0    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA3D6    call        004C4A40
 004CA3DB    mov         edx,dword ptr [eax+74]
 004CA3DE    mov         eax,dword ptr [ebp-4]
 004CA3E1    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA3E7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA3EA    call        TBrush.SetColor
 004CA3EF    mov         eax,dword ptr [ebp-4]
 004CA3F2    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>004CA3F9    je          004CA407
 004CA3FB    mov         eax,dword ptr [ebp-4]
 004CA3FE    mov         edx,dword ptr [eax]
 004CA400    call        dword ptr [edx+50];TImage.GetEnabled
 004CA403    test        al,al
>004CA405    jne         004CA41F
 004CA407    mov         eax,dword ptr [ebp-4]
 004CA40A    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>004CA411    je          004CA447
 004CA413    mov         eax,dword ptr [ebp-4]
 004CA416    cmp         byte ptr [eax+1B0],0;TXPStyleAddRemoveItem.FMouseSelected:Boolean
>004CA41D    jne         004CA447
 004CA41F    mov         eax,dword ptr [ebp-4]
 004CA422    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA428    call        004C4A40
 004CA42D    mov         edx,dword ptr [eax+68]
 004CA430    mov         eax,dword ptr [ebp-4]
 004CA433    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA439    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA43C    call        TBrush.SetColor
 004CA441    mov         eax,dword ptr [ebp-8]
 004CA444    dec         dword ptr [eax+8]
 004CA447    lea         edx,[ebp-28]
 004CA44A    mov         eax,dword ptr [ebp-4]
 004CA44D    call        004C522C
 004CA452    mov         eax,dword ptr [ebp-4]
 004CA455    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>004CA45C    je          004CA46A
 004CA45E    mov         eax,dword ptr [ebp-4]
 004CA461    mov         edx,dword ptr [eax]
 004CA463    call        dword ptr [edx+50];TImage.GetEnabled
 004CA466    test        al,al
>004CA468    jne         004CA482
 004CA46A    mov         eax,dword ptr [ebp-4]
 004CA46D    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>004CA474    je          004CA4C5
 004CA476    mov         eax,dword ptr [ebp-4]
 004CA479    cmp         byte ptr [eax+1B0],0;TXPStyleAddRemoveItem.FMouseSelected:Boolean
>004CA480    jne         004CA4C5
 004CA482    mov         edx,dword ptr [ebp-8]
 004CA485    mov         eax,dword ptr [ebp-4]
 004CA488    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA48E    call        0042F030
 004CA493    mov         eax,dword ptr [ebp-4]
 004CA496    call        004C6C1C
 004CA49B    call        004C4A40
 004CA4A0    mov         edx,dword ptr [eax+38]
 004CA4A3    mov         eax,dword ptr [ebp-4]
 004CA4A6    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA4AC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA4AF    call        TBrush.SetColor
 004CA4B4    mov         edx,dword ptr [ebp-8]
 004CA4B7    mov         eax,dword ptr [ebp-4]
 004CA4BA    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA4C0    call        0042F080
 004CA4C5    pop         edi
 004CA4C6    pop         esi
 004CA4C7    mov         esp,ebp
 004CA4C9    pop         ebp
 004CA4CA    ret
end;*}

//004CA4CC
{*procedure sub_004CA4CC(?:?);
begin
 004CA4CC    push        ebp
 004CA4CD    mov         ebp,esp
 004CA4CF    add         esp,0FFFFFFC8
 004CA4D2    mov         dword ptr [ebp-8],edx
 004CA4D5    mov         dword ptr [ebp-4],eax
 004CA4D8    mov         eax,dword ptr [ebp-4]
 004CA4DB    cmp         dword ptr [eax+16C],0;TXPStyleAddRemoveItem.FActionClient:TActionClientItem
>004CA4E2    je          004CA61F
 004CA4E8    mov         eax,dword ptr [ebp-4]
 004CA4EB    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 004CA4F1    call        004C0320
 004CA4F6    test        al,al
>004CA4F8    jne         004CA61F
 004CA4FE    mov         eax,dword ptr [ebp-4]
 004CA501    mov         edx,dword ptr [eax]
 004CA503    call        dword ptr [edx+3C];TXPStyleAddRemoveItem.sub_004C6BC4
 004CA506    mov         edx,dword ptr ds:[492C28];TCustomAction
 004CA50C    call        @IsClass
 004CA511    test        al,al
>004CA513    je          004CA61F
 004CA519    mov         eax,dword ptr [ebp-4]
 004CA51C    mov         edx,dword ptr [eax]
 004CA51E    call        dword ptr [edx+3C];TXPStyleAddRemoveItem.sub_004C6BC4
 004CA521    cmp         byte ptr [eax+69],0
>004CA525    je          004CA61F
 004CA52B    mov         eax,dword ptr [ebp-4]
 004CA52E    mov         edx,dword ptr [eax]
 004CA530    call        dword ptr [edx+0C0];TXPStyleAddRemoveItem.sub_004C6B70
 004CA536    test        al,al
>004CA538    je          004CA5C7
 004CA53E    mov         eax,dword ptr [ebp-4]
 004CA541    mov         eax,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 004CA544    dec         eax
 004CA545    push        eax
 004CA546    lea         eax,[ebp-30]
 004CA549    push        eax
 004CA54A    mov         ecx,dword ptr [ebp-8]
 004CA54D    mov         ecx,dword ptr [ecx]
 004CA54F    add         ecx,14
 004CA552    mov         eax,dword ptr [ebp-8]
 004CA555    mov         eax,dword ptr [eax]
 004CA557    dec         eax
 004CA558    mov         edx,1
 004CA55D    call        0041E714
 004CA562    mov         eax,dword ptr [ebp-4]
 004CA565    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA56B    call        004C4A40
 004CA570    mov         edx,dword ptr [eax+68]
 004CA573    mov         eax,dword ptr [ebp-4]
 004CA576    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA57C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA57F    call        TBrush.SetColor
 004CA584    lea         edx,[ebp-30]
 004CA587    mov         eax,dword ptr [ebp-4]
 004CA58A    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA590    call        0042F030
 004CA595    mov         eax,dword ptr [ebp-4]
 004CA598    call        004C6C1C
 004CA59D    call        004C4A40
 004CA5A2    mov         edx,dword ptr [eax+38]
 004CA5A5    mov         eax,dword ptr [ebp-4]
 004CA5A8    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA5AE    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004CA5B1    call        TPen.SetColor
 004CA5B6    lea         edx,[ebp-30]
 004CA5B9    mov         eax,dword ptr [ebp-4]
 004CA5BC    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA5C2    call        0042F274
 004CA5C7    mov         eax,dword ptr [ebp-4]
 004CA5CA    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA5D0    call        004C4A40
 004CA5D5    mov         edx,dword ptr [eax+50]
 004CA5D8    mov         eax,dword ptr [ebp-4]
 004CA5DB    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA5E1    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004CA5E4    call        TPen.SetColor
 004CA5E9    push        1
 004CA5EB    lea         ecx,[ebp-38]
 004CA5EE    mov         edx,dword ptr [ebp-8]
 004CA5F1    mov         edx,dword ptr [edx+4]
 004CA5F4    add         edx,3
 004CA5F7    mov         eax,dword ptr [ebp-8]
 004CA5FA    mov         eax,dword ptr [eax]
 004CA5FC    add         eax,6
 004CA5FF    call        Point
 004CA604    lea         edx,[ebp-38]
 004CA607    mov         eax,dword ptr [ebp-4]
 004CA60A    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA610    mov         ecx,2
 004CA615    call        004ADBB0
>004CA61A    jmp         004CA8BA
 004CA61F    mov         eax,dword ptr [ebp-4]
 004CA622    mov         edx,dword ptr [eax]
 004CA624    call        dword ptr [edx+0C0];TXPStyleAddRemoveItem.sub_004C6B70
 004CA62A    test        al,al
>004CA62C    je          004CA6A6
 004CA62E    mov         eax,dword ptr [ebp-4]
 004CA631    mov         eax,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 004CA634    dec         eax
 004CA635    push        eax
 004CA636    lea         eax,[ebp-30]
 004CA639    push        eax
 004CA63A    mov         ecx,dword ptr [ebp-8]
 004CA63D    mov         ecx,dword ptr [ecx]
 004CA63F    add         ecx,14
 004CA642    mov         eax,dword ptr [ebp-8]
 004CA645    mov         eax,dword ptr [eax]
 004CA647    dec         eax
 004CA648    mov         edx,1
 004CA64D    call        0041E714
 004CA652    mov         eax,dword ptr [ebp-4]
 004CA655    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA65B    call        004C4A40
 004CA660    mov         edx,dword ptr [eax+68]
 004CA663    mov         eax,dword ptr [ebp-4]
 004CA666    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA66C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA66F    call        TBrush.SetColor
 004CA674    mov         eax,dword ptr [ebp-4]
 004CA677    call        004C6C1C
 004CA67C    call        004C4A40
 004CA681    mov         edx,dword ptr [eax+38]
 004CA684    mov         eax,dword ptr [ebp-4]
 004CA687    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA68D    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004CA690    call        TPen.SetColor
 004CA695    lea         edx,[ebp-30]
 004CA698    mov         eax,dword ptr [ebp-4]
 004CA69B    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA6A1    call        0042F274
 004CA6A6    mov         eax,dword ptr [ebp-4]
 004CA6A9    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA6AF    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA6B2    call        TBrush.GetColor
 004CA6B7    mov         dword ptr [ebp-0C],eax
 004CA6BA    mov         eax,dword ptr [ebp-4]
 004CA6BD    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>004CA6C4    je          004CA6D2
 004CA6C6    mov         eax,dword ptr [ebp-4]
 004CA6C9    mov         edx,dword ptr [eax]
 004CA6CB    call        dword ptr [edx+50];TImage.GetEnabled
 004CA6CE    test        al,al
>004CA6D0    jne         004CA6EA
 004CA6D2    mov         eax,dword ptr [ebp-4]
 004CA6D5    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>004CA6DC    je          004CA70E
 004CA6DE    mov         eax,dword ptr [ebp-4]
 004CA6E1    cmp         byte ptr [eax+1B0],0;TXPStyleAddRemoveItem.FMouseSelected:Boolean
>004CA6E8    jne         004CA70E
 004CA6EA    mov         eax,dword ptr [ebp-4]
 004CA6ED    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA6F3    call        004C4A40
 004CA6F8    mov         edx,dword ptr [eax+68]
 004CA6FB    mov         eax,dword ptr [ebp-4]
 004CA6FE    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA704    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA707    call        TBrush.SetColor
>004CA70C    jmp         004CA730
 004CA70E    mov         eax,dword ptr [ebp-4]
 004CA711    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA717    call        004C4A40
 004CA71C    mov         edx,dword ptr [eax+34]
 004CA71F    mov         eax,dword ptr [ebp-4]
 004CA722    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA728    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA72B    call        TBrush.SetColor
 004CA730    mov         eax,dword ptr [ebp-8]
 004CA733    mov         edx,dword ptr [eax]
 004CA735    mov         dword ptr [ebp-18],edx
 004CA738    mov         edx,dword ptr [eax+4]
 004CA73B    mov         dword ptr [ebp-14],edx
 004CA73E    mov         eax,dword ptr [ebp-4]
 004CA741    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>004CA748    je          004CA894
 004CA74E    mov         eax,dword ptr [ebp-4]
 004CA751    mov         edx,dword ptr [eax]
 004CA753    call        dword ptr [edx+50];TImage.GetEnabled
 004CA756    test        al,al
>004CA758    je          004CA894
 004CA75E    mov         eax,dword ptr [ebp-4]
 004CA761    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 004CA767    call        004C0320
 004CA76C    test        al,al
>004CA76E    je          004CA894
 004CA774    mov         eax,dword ptr [ebp-4]
 004CA777    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA77D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA780    call        TBrush.GetColor
 004CA785    mov         dword ptr [ebp-10],eax
 004CA788    mov         dl,1
 004CA78A    mov         eax,[0042CF48];TBitmap
 004CA78F    call        TBitmap.Create;TBitmap.Create
 004CA794    mov         dword ptr [ebp-1C],eax
 004CA797    xor         eax,eax
 004CA799    push        ebp
 004CA79A    push        4CA87D
 004CA79F    push        dword ptr fs:[eax]
 004CA7A2    mov         dword ptr fs:[eax],esp
 004CA7A5    mov         eax,dword ptr [ebp-4]
 004CA7A8    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA7AE    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA7B1    mov         edx,0FF000010
 004CA7B6    call        TBrush.SetColor
 004CA7BB    mov         eax,dword ptr [ebp-4]
 004CA7BE    mov         edx,dword ptr [eax]
 004CA7C0    call        dword ptr [edx+3C];TXPStyleAddRemoveItem.sub_004C6BC4
 004CA7C3    mov         eax,dword ptr [eax+5C]
 004CA7C6    mov         dword ptr [ebp-20],eax
 004CA7C9    mov         eax,dword ptr [ebp-4]
 004CA7CC    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 004CA7D2    mov         edx,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 004CA7D5    mov         eax,dword ptr [ebp-20]
 004CA7D8    mov         eax,dword ptr [eax+38]
 004CA7DB    mov         ecx,dword ptr [ebp-1C]
 004CA7DE    call        00495300
 004CA7E3    test        al,al
>004CA7E5    je          004CA853
 004CA7E7    mov         eax,dword ptr [ebp-20]
 004CA7EA    mov         eax,dword ptr [eax+38]
 004CA7ED    mov         edx,dword ptr [eax+34]
 004CA7F0    mov         eax,dword ptr [ebp-1C]
 004CA7F3    mov         ecx,dword ptr [eax]
 004CA7F5    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004CA7F8    mov         eax,dword ptr [ebp-20]
 004CA7FB    mov         eax,dword ptr [eax+38]
 004CA7FE    mov         edx,dword ptr [eax+34]
 004CA801    mov         eax,dword ptr [ebp-1C]
 004CA804    mov         ecx,dword ptr [eax]
 004CA806    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004CA809    push        84
 004CA80E    push        0
 004CA810    push        0
 004CA812    mov         eax,dword ptr [ebp-14]
 004CA815    add         eax,2
 004CA818    push        eax
 004CA819    mov         eax,dword ptr [ebp-18]
 004CA81C    add         eax,3
 004CA81F    push        eax
 004CA820    push        0
 004CA822    mov         eax,dword ptr [ebp-1C]
 004CA825    mov         edx,dword ptr [eax]
 004CA827    call        dword ptr [edx+64];TBitmap.sub_004349FC
 004CA82A    push        eax
 004CA82B    push        0
 004CA82D    mov         eax,dword ptr [ebp-4]
 004CA830    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA836    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA839    call        TBrush.GetHandle
 004CA83E    push        eax
 004CA83F    mov         eax,dword ptr [ebp-4]
 004CA842    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA848    call        0042F6A0
 004CA84D    push        eax
 004CA84E    call        user32.DrawStateA
 004CA853    xor         eax,eax
 004CA855    pop         edx
 004CA856    pop         ecx
 004CA857    pop         ecx
 004CA858    mov         dword ptr fs:[eax],edx
 004CA85B    push        4CA884
 004CA860    mov         eax,dword ptr [ebp-1C]
 004CA863    call        TObject.Free
 004CA868    mov         eax,dword ptr [ebp-4]
 004CA86B    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA871    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA874    mov         edx,dword ptr [ebp-10]
 004CA877    call        TBrush.SetColor
 004CA87C    ret
>004CA87D    jmp         @HandleFinally
>004CA882    jmp         004CA860
 004CA884    inc         dword ptr [ebp-18]
 004CA887    lea         edx,[ebp-18]
 004CA88A    mov         eax,dword ptr [ebp-4]
 004CA88D    call        004C535C
>004CA892    jmp         004CA8A6
 004CA894    add         dword ptr [ebp-18],2
 004CA898    inc         dword ptr [ebp-14]
 004CA89B    lea         edx,[ebp-18]
 004CA89E    mov         eax,dword ptr [ebp-4]
 004CA8A1    call        004C535C
 004CA8A6    mov         eax,dword ptr [ebp-4]
 004CA8A9    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA8AF    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA8B2    mov         edx,dword ptr [ebp-0C]
 004CA8B5    call        TBrush.SetColor
 004CA8BA    mov         eax,dword ptr [ebp-4]
 004CA8BD    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 004CA8C3    call        TCollectionItem.GetIndex
 004CA8C8    push        eax
 004CA8C9    mov         eax,dword ptr [ebp-4]
 004CA8CC    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA8D2    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004CA8D8    mov         eax,dword ptr [eax+2AC];TCustomActionMenuBar.FParentControl:TCustomActionControl
 004CA8DE    call        004C6C1C
 004CA8E3    mov         eax,dword ptr [eax+210]
 004CA8E9    call        TActionClient.GetItems
 004CA8EE    pop         edx
 004CA8EF    call        004BF258
 004CA8F4    cmp         byte ptr [eax+30],0
>004CA8F8    je          004CA9D9
 004CA8FE    mov         eax,dword ptr [ebp-4]
 004CA901    mov         eax,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 004CA904    dec         eax
 004CA905    push        eax
 004CA906    lea         eax,[ebp-30]
 004CA909    push        eax
 004CA90A    mov         ecx,12
 004CA90F    mov         edx,1
 004CA914    mov         eax,1
 004CA919    call        0041E714
 004CA91E    mov         eax,dword ptr [ebp-4]
 004CA921    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA927    call        004C4A40
 004CA92C    mov         edx,dword ptr [eax+68]
 004CA92F    mov         eax,dword ptr [ebp-4]
 004CA932    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA938    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CA93B    call        TBrush.SetColor
 004CA940    lea         edx,[ebp-30]
 004CA943    mov         eax,dword ptr [ebp-4]
 004CA946    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA94C    call        0042F030
 004CA951    mov         eax,dword ptr [ebp-4]
 004CA954    call        004C6C1C
 004CA959    call        004C4A40
 004CA95E    mov         edx,dword ptr [eax+38]
 004CA961    mov         eax,dword ptr [ebp-4]
 004CA964    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA96A    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004CA96D    call        TPen.SetColor
 004CA972    lea         edx,[ebp-30]
 004CA975    mov         eax,dword ptr [ebp-4]
 004CA978    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA97E    call        0042F274
 004CA983    mov         eax,dword ptr [ebp-4]
 004CA986    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CA98C    call        004C4A40
 004CA991    mov         edx,dword ptr [eax+50]
 004CA994    mov         eax,dword ptr [ebp-4]
 004CA997    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA99D    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004CA9A0    call        TPen.SetColor
 004CA9A5    push        1
 004CA9A7    lea         ecx,[ebp-38]
 004CA9AA    mov         eax,dword ptr [ebp-4]
 004CA9AD    mov         edx,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 004CA9B0    sar         edx,1
>004CA9B2    jns         004CA9B7
 004CA9B4    adc         edx,0
 004CA9B7    dec         edx
 004CA9B8    mov         eax,dword ptr [ebp-30]
 004CA9BB    add         eax,5
 004CA9BE    call        Point
 004CA9C3    lea         edx,[ebp-38]
 004CA9C6    mov         eax,dword ptr [ebp-4]
 004CA9C9    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CA9CF    mov         ecx,2
 004CA9D4    call        004ADBB0
 004CA9D9    mov         esp,ebp
 004CA9DB    pop         ebp
 004CA9DC    ret
end;*}

//004CA9E0
{*procedure sub_004CA9E0(?:?);
begin
 004CA9E0    push        ebp
 004CA9E1    mov         ebp,esp
 004CA9E3    add         esp,0FFFFFFD0
 004CA9E6    mov         dword ptr [ebp-10],edx
 004CA9E9    mov         dword ptr [ebp-4],eax
 004CA9EC    mov         eax,dword ptr [ebp-4]
 004CA9EF    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>004CA9F6    je          004CAA14
 004CA9F8    lea         edx,[ebp-30]
 004CA9FB    mov         eax,dword ptr [ebp-4]
 004CA9FE    mov         ecx,dword ptr [eax]
 004CAA00    call        dword ptr [ecx+44];TXPStyleAddRemoveItem.sub_00482F5C
 004CAA03    lea         edx,[ebp-30]
 004CAA06    mov         eax,dword ptr [ebp-4]
 004CAA09    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAA0F    call        0042F030
 004CAA14    mov         eax,dword ptr [ebp-4]
 004CAA17    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAA1D    mov         ecx,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CAA20    mov         dl,1
 004CAA22    mov         eax,[0042C890];TBrushRecall
 004CAA27    call        TBrushRecall.Create;TBrushRecall.Create
 004CAA2C    mov         dword ptr [ebp-0C],eax
 004CAA2F    mov         eax,dword ptr [ebp-4]
 004CAA32    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAA38    mov         ecx,dword ptr [eax+10];TCanvas.Pen:TPen
 004CAA3B    mov         dl,1
 004CAA3D    mov         eax,[0042C838];TPenRecall
 004CAA42    call        TPenRecall.Create;TPenRecall.Create
 004CAA47    mov         dword ptr [ebp-8],eax
 004CAA4A    xor         eax,eax
 004CAA4C    push        ebp
 004CAA4D    push        4CAB72
 004CAA52    push        dword ptr fs:[eax]
 004CAA55    mov         dword ptr fs:[eax],esp
 004CAA58    mov         eax,dword ptr [ebp-4]
 004CAA5B    cmp         dword ptr [eax+16C],0;TXPStyleAddRemoveItem.FActionClient:TActionClientItem
>004CAA62    je          004CAA97
 004CAA64    mov         eax,dword ptr [ebp-4]
 004CAA67    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 004CAA6D    call        004C0C60
 004CAA72    test        al,al
>004CAA74    je          004CAA97
 004CAA76    mov         eax,dword ptr [ebp-4]
 004CAA79    cmp         byte ptr [eax+1A0],0;TXPStyleAddRemoveItem.FTransparent:Boolean
>004CAA80    jne         004CAA97
 004CAA82    mov         eax,dword ptr [ebp-4]
 004CAA85    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAA8B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CAA8E    xor         edx,edx
 004CAA90    call        TBrush.SetStyle
>004CAA95    jmp         004CAAF1
 004CAA97    mov         eax,dword ptr [ebp-4]
 004CAA9A    mov         edx,dword ptr [eax+70];TXPStyleAddRemoveItem.FColor:TColor
 004CAA9D    mov         eax,dword ptr [ebp-4]
 004CAAA0    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAAA6    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CAAA9    call        TBrush.SetColor
 004CAAAE    lea         edx,[ebp-20]
 004CAAB1    mov         eax,dword ptr [ebp-4]
 004CAAB4    call        00482ECC
 004CAAB9    push        1
 004CAABB    push        4
 004CAABD    lea         eax,[ebp-20]
 004CAAC0    push        eax
 004CAAC1    mov         eax,dword ptr [ebp-4]
 004CAAC4    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAACA    call        0042F6A0
 004CAACF    push        eax
 004CAAD0    call        user32.DrawEdge
 004CAAD5    push        4
 004CAAD7    push        4
 004CAAD9    lea         eax,[ebp-20]
 004CAADC    push        eax
 004CAADD    mov         eax,dword ptr [ebp-4]
 004CAAE0    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAAE6    call        0042F6A0
 004CAAEB    push        eax
 004CAAEC    call        user32.DrawEdge
 004CAAF1    mov         eax,dword ptr [ebp-4]
 004CAAF4    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAAFA    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004CAAFD    mov         edx,0FF000010
 004CAB02    call        TPen.SetColor
 004CAB07    mov         eax,dword ptr [ebp-4]
 004CAB0A    call        TControl.GetClientHeight
 004CAB0F    mov         ecx,eax
 004CAB11    sar         ecx,1
>004CAB13    jns         004CAB18
 004CAB15    adc         ecx,0
 004CAB18    mov         eax,dword ptr [ebp-4]
 004CAB1B    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAB21    mov         edx,20
 004CAB26    call        0042F14C
 004CAB2B    mov         eax,dword ptr [ebp-4]
 004CAB2E    call        TControl.GetClientHeight
 004CAB33    sar         eax,1
>004CAB35    jns         004CAB3A
 004CAB37    adc         eax,0
 004CAB3A    push        eax
 004CAB3B    mov         eax,dword ptr [ebp-4]
 004CAB3E    call        TControl.GetClientWidth
 004CAB43    mov         edx,eax
 004CAB45    mov         eax,dword ptr [ebp-4]
 004CAB48    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAB4E    pop         ecx
 004CAB4F    call        0042F0D0
 004CAB54    xor         eax,eax
 004CAB56    pop         edx
 004CAB57    pop         ecx
 004CAB58    pop         ecx
 004CAB59    mov         dword ptr fs:[eax],edx
 004CAB5C    push        4CAB79
 004CAB61    mov         eax,dword ptr [ebp-0C]
 004CAB64    call        TObject.Free
 004CAB69    mov         eax,dword ptr [ebp-8]
 004CAB6C    call        TObject.Free
 004CAB71    ret
>004CAB72    jmp         @HandleFinally
>004CAB77    jmp         004CAB61
 004CAB79    mov         esp,ebp
 004CAB7B    pop         ebp
 004CAB7C    ret
end;*}

//004CAB80
{*procedure sub_004CAB80(?:?; ?:?; ?:?);
begin
 004CAB80    push        ebp
 004CAB81    mov         ebp,esp
 004CAB83    add         esp,0FFFFFFF0
 004CAB86    push        ebx
 004CAB87    xor         ebx,ebx
 004CAB89    mov         dword ptr [ebp-10],ebx
 004CAB8C    mov         dword ptr [ebp-0C],ecx
 004CAB8F    mov         dword ptr [ebp-8],edx
 004CAB92    mov         dword ptr [ebp-4],eax
 004CAB95    mov         eax,dword ptr [ebp+8]
 004CAB98    call        @LStrAddRef
 004CAB9D    xor         eax,eax
 004CAB9F    push        ebp
 004CABA0    push        4CACA1
 004CABA5    push        dword ptr fs:[eax]
 004CABA8    mov         dword ptr fs:[eax],esp
 004CABAB    lea         eax,[ebp-10]
 004CABAE    mov         edx,dword ptr [ebp+8]
 004CABB1    call        @LStrLAsg
 004CABB6    mov         eax,dword ptr [ebp-4]
 004CABB9    mov         eax,dword ptr [eax+30];TXPStyleAddRemoveItem.FParent:TWinControl
 004CABBC    mov         edx,dword ptr ds:[4BB79C];TCustomActionBar
 004CABC2    call        @IsClass
 004CABC7    test        al,al
>004CABC9    je          004CAC07
 004CABCB    mov         eax,dword ptr [ebp-4]
 004CABCE    mov         eax,dword ptr [eax+30];TXPStyleAddRemoveItem.FParent:TWinControl
 004CABD1    cmp         byte ptr [eax+248],0
>004CABD8    jne         004CAC07
 004CABDA    mov         edx,dword ptr [ebp-10]
 004CABDD    mov         eax,4CACB8;'&'
 004CABE2    call        @LStrPos
 004CABE7    test        eax,eax
>004CABE9    jle         004CAC07
 004CABEB    mov         edx,dword ptr [ebp-10]
 004CABEE    mov         eax,4CACB8;'&'
 004CABF3    call        @LStrPos
 004CABF8    mov         edx,eax
 004CABFA    lea         eax,[ebp-10]
 004CABFD    mov         ecx,1
 004CAC02    call        @LStrDelete
 004CAC07    lea         eax,[ebp+8]
 004CAC0A    mov         edx,dword ptr [ebp-10]
 004CAC0D    call        @LStrLAsg
 004CAC12    push        0
 004CAC14    push        6
 004CAC16    mov         eax,dword ptr [ebp-8]
 004CAC19    push        eax
 004CAC1A    call        user32.OffsetRect
 004CAC1F    mov         eax,dword ptr [ebp-4]
 004CAC22    mov         edx,dword ptr [eax]
 004CAC24    call        dword ptr [edx+50];TImage.GetEnabled
 004CAC27    test        al,al
>004CAC29    je          004CAC4F
 004CAC2B    mov         eax,dword ptr [ebp-4]
 004CAC2E    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CAC34    call        004C4A40
 004CAC39    mov         edx,dword ptr [eax+50]
 004CAC3C    mov         eax,dword ptr [ebp-4]
 004CAC3F    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAC45    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004CAC48    call        TFont.SetColor
>004CAC4D    jmp         004CAC71
 004CAC4F    mov         eax,dword ptr [ebp-4]
 004CAC52    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 004CAC58    call        004C4A40
 004CAC5D    mov         edx,dword ptr [eax+48]
 004CAC60    mov         eax,dword ptr [ebp-4]
 004CAC63    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 004CAC69    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004CAC6C    call        TFont.SetColor
 004CAC71    mov         eax,dword ptr [ebp+8]
 004CAC74    push        eax
 004CAC75    mov         ecx,dword ptr [ebp-0C]
 004CAC78    mov         edx,dword ptr [ebp-8]
 004CAC7B    mov         eax,dword ptr [ebp-4]
 004CAC7E    call        004B94DC
 004CAC83    xor         eax,eax
 004CAC85    pop         edx
 004CAC86    pop         ecx
 004CAC87    pop         ecx
 004CAC88    mov         dword ptr fs:[eax],edx
 004CAC8B    push        4CACA8
 004CAC90    lea         eax,[ebp-10]
 004CAC93    call        @LStrClr
 004CAC98    lea         eax,[ebp+8]
 004CAC9B    call        @LStrClr
 004CACA0    ret
>004CACA1    jmp         @HandleFinally
>004CACA6    jmp         004CAC90
 004CACA8    pop         ebx
 004CACA9    mov         esp,ebp
 004CACAB    pop         ebp
 004CACAC    ret         4
end;*}

//004CACBC
procedure sub_004CACBC;
begin
{*
 004CACBC    push        ebp
 004CACBD    mov         ebp,esp
 004CACBF    push        ecx
 004CACC0    mov         dword ptr [ebp-4],eax
 004CACC3    pop         ecx
 004CACC4    pop         ebp
 004CACC5    ret
*}
end;

//004CACC8
{*procedure sub_004CACC8(?:?);
begin
 004CACC8    push        ebp
 004CACC9    mov         ebp,esp
 004CACCB    add         esp,0FFFFFFE8
 004CACCE    mov         dword ptr [ebp-8],edx
 004CACD1    mov         dword ptr [ebp-4],eax
 004CACD4    mov         eax,dword ptr [ebp-4]
 004CACD7    mov         edx,dword ptr [eax]
 004CACD9    call        dword ptr [edx+50];TImage.GetEnabled
 004CACDC    test        al,al
>004CACDE    je          004CAD0F
 004CACE0    mov         eax,dword ptr [ebp-4]
 004CACE3    cmp         byte ptr [eax+1AB],0;TXPStyleToolScrollBtn.FMouseInControl:Boolean
>004CACEA    je          004CAD0F
 004CACEC    mov         eax,dword ptr [ebp-4]
 004CACEF    call        004C6C1C
 004CACF4    call        004C4A40
 004CACF9    mov         edx,dword ptr [eax+68]
 004CACFC    mov         eax,dword ptr [ebp-4]
 004CACFF    mov         eax,dword ptr [eax+160];TXPStyleToolScrollBtn..............................................
 004CAD05    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CAD08    call        TBrush.SetColor
>004CAD0D    jmp         004CAD30
 004CAD0F    mov         eax,dword ptr [ebp-4]
 004CAD12    call        004C6C1C
 004CAD17    call        004C4A40
 004CAD1C    mov         edx,dword ptr [eax+40]
 004CAD1F    mov         eax,dword ptr [ebp-4]
 004CAD22    mov         eax,dword ptr [eax+160];TXPStyleToolScrollBtn..............................................
 004CAD28    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004CAD2B    call        TBrush.SetColor
 004CAD30    mov         edx,dword ptr [ebp-8]
 004CAD33    mov         eax,dword ptr [ebp-4]
 004CAD36    call        004AFC50
 004CAD3B    mov         eax,dword ptr [ebp-4]
 004CAD3E    mov         edx,dword ptr [eax]
 004CAD40    call        dword ptr [edx+50];TImage.GetEnabled
 004CAD43    test        al,al
>004CAD45    je          004CAD90
 004CAD47    mov         eax,dword ptr [ebp-4]
 004CAD4A    cmp         byte ptr [eax+1AB],0;TXPStyleToolScrollBtn.FMouseInControl:Boolean
>004CAD51    je          004CAD90
 004CAD53    mov         eax,dword ptr [ebp-4]
 004CAD56    call        004C6C1C
 004CAD5B    call        004C4A40
 004CAD60    mov         edx,dword ptr [eax+38]
 004CAD63    mov         eax,dword ptr [ebp-4]
 004CAD66    mov         eax,dword ptr [eax+160];TXPStyleToolScrollBtn..............................................
 004CAD6C    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004CAD6F    call        TPen.SetColor
 004CAD74    lea         edx,[ebp-18]
 004CAD77    mov         eax,dword ptr [ebp-4]
 004CAD7A    mov         ecx,dword ptr [eax]
 004CAD7C    call        dword ptr [ecx+44];TXPStyleToolScrollBtn.sub_00482F5C
 004CAD7F    lea         edx,[ebp-18]
 004CAD82    mov         eax,dword ptr [ebp-4]
 004CAD85    mov         eax,dword ptr [eax+160];TXPStyleToolScrollBtn..............................................
 004CAD8B    call        0042F274
 004CAD90    mov         esp,ebp
 004CAD92    pop         ebp
 004CAD93    ret
end;*}

end.