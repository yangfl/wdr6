//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnCtrls;

interface

uses
  SysUtils, Classes, ExtCtrls, ActnMenus, ActnCtrls, Controls;

type
  TCustomButtonControl = class(TCustomActionControl)
  public
    FAllowAllUp:Boolean;//f1A8
    FDown:Boolean;//f1A9
    FDragging:Boolean;//f1AA
    FMouseInControl:Boolean;//f1AB
    FTrackButton:TMouseButton;//f1AC
    FFlat:Boolean;//f1AD
    FState:TButtonState;//f1AE
    procedure vC; virtual;//vC//004AFD00
    constructor v2C; virtual;//v2C//004AFA40
    //procedure v84(?:?; ?:?; ?:?; ?:?); virtual;//v84//004B01CC
    procedure v8C; virtual;//v8C//004AFFD8
    //function v9C:?; virtual;//v9C//004AFCEC
    //procedure vA8(?:?); virtual;//vA8//004B02BC
    //procedure vAC(?:?); virtual;//vAC//004AFC50
    //procedure vD0(?:?); virtual;//vD0//004B0050
    //procedure vD4(?:?); virtual;//vD4//004B0294
    //procedure vD8(?:?); virtual;//vD8//004B0160
    procedure vDC; virtual;//vDC//004AFAAC
    //procedure vE4(?:TRect; ?:?); virtual;//vE4//004AFCCC
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//004B025C
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004B0318
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//004AFAF0
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004AFB14
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//004AFB7C
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004AFBDC
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?); dynamic;//004AFE54
    //procedure sub_004858F4(?:?; ?:?; ?:?); dynamic;//004AFDA0
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//004AFD38
    procedure sub_004854CC; dynamic;//004AFAD0
    procedure SetFlat(const Value:Boolean);//004B012C
  end;
  TCustomUtilityButton = class(TCustomButtonControl)
  public
    FArrowSize:Integer;//f1B0
    FDirection:TScrollDirection;//f1B4
    FScrollTimer:TTimer;//f1B8
    FOnClick:TNotifyEvent;//f1C0
    f1C2:word;//f1C2
    f1C4:TCustomActionPopupMenu;//f1C4
    FRepeatRate:Integer;//f1C8
    FAutoScroll:Boolean;//f1CC
    FArrowType:TArrowType;//f1CD
    destructor Destroy; virtual;//004B03E8
    constructor v2C; virtual;//v2C//004B0334
    procedure v8C; virtual;//v8C//004B0734
    procedure vE8; virtual;//vE8//004B04B8
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//004B0454
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004B048C
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//004B05FC
    procedure sub_004854CC; dynamic;//004B0428
  end;
  TCustomToolScrollBtn = class(TCustomUtilityButton)
  public
    constructor v2C; virtual;//v2C//004B0774
    procedure vE8; virtual;//vE8//004B07D0
  end;
  TCustomDropDownButton = class(TCustomButtonControl)
  public
    ...FDroppedDown:Boolean;//f1B0
    procedure v8C; virtual;//v8C//004B0C14
    procedure vDC; virtual;//vDC//004B0920
    //procedure vE4(?:?; ?:?); virtual;//vE4//004B0998
    //function vE8:?; virtual;//vE8//004B0B0C
    procedure DropDownClick; virtual;//vEC//004B0A0C
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004B0970
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//004B0B50
    procedure sub_004854CC; dynamic;//004B0944
  end;
  TCustomActionCombo = class(TCustomComboBoxEx)
  public
    ....FComboControl:TCustomComboControl;//f2A0
    //procedure vF4(?:?; ?:?; ?:?); virtual;//vF4//004B0F94
    //procedure sub_00484338(?:?; ?:?; ?:?); dynamic;//004B0CD0
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//004B0D04
    //procedure sub_00484E9C(?:?); dynamic;//004B0C9C
    procedure sub_004841BC; dynamic;//004B0C7C
  end;
  TCustomComboControl = class(TCustomActionControl)
  public
    ..........................FComboBox:TCustomActionCombo;//f1A8
    destructor Destroy; virtual;//004B0E58
    constructor v2C; virtual;//v2C//004B0D88
    //procedure v60(?:?); virtual;//v60//004B1158
    //procedure v68(?:?); virtual;//v68//004B1184
    //procedure v84(?:?; ?:?; ?:?; ?:?); virtual;//v84//004B106C
    procedure v8C; virtual;//v8C//004B0FD4
    //procedure vD0(?:?); virtual;//vD0//004B1014
    procedure vDC; virtual;//vDC//004B0E98
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//004B0F24
    procedure sub_0048513C; dynamic;//004B11BC
    procedure sub_004854CC; dynamic;//004B0EFC
  end;
  TCustomActionDockBar = class(TCustomActionBar)
  public
    ....FDragObject:TDragDockObject;//f280
    procedure vC; virtual;//vC//004B1418
    constructor v2C; virtual;//v2C//004B11D0
    //function v58:?; virtual;//v58//004B1460
    //procedure sub_0048A478(?:?; ?:?; ?:?; ?:?); dynamic;//004B13A8
    //procedure sub_00482C8C(?:?; ?:?); dynamic;//004B122C
    //procedure sub_00484588(?:?); dynamic;//004B1364
    //procedure sub_00484544(?:?; ?:?; ?:?); dynamic;//004B1324
  end;
    constructor sub_004AFA40;//004AFA40
    procedure sub_004AFAAC;//004AFAAC
    procedure sub_004854CC;//004AFAD0
    //procedure CMEnabledChanged(?:?);//004AFAF0
    //procedure CMTextChanged(?:?);//004AFB14
    //procedure CMMouseEnter(?:?);//004AFB7C
    //procedure CMMouseLeave(?:?);//004AFBDC
    //procedure sub_004AFC50(?:?);//004AFC50
    //procedure sub_004AFCCC(?:TRect; ?:?);//004AFCCC
    //function sub_004AFCEC:?;//004AFCEC
    procedure sub_004AFD00;//004AFD00
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//004AFD38
    //procedure sub_004858F4(?:?; ?:?; ?:?);//004AFDA0
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?);//004AFE54
    procedure sub_004AFFD8;//004AFFD8
    //procedure sub_004B0050(?:?);//004B0050
    //procedure sub_004B009C(?:TCustomButtonControl; ?:?);//004B009C
    //procedure sub_004B0160(?:?);//004B0160
    //procedure sub_004B0198(?:TCustomButtonControl; ?:?);//004B0198
    //procedure sub_004B01CC(?:?; ?:?; ?:?; ?:?);//004B01CC
    procedure sub_004B0204(?:TCustomButtonControl);//004B0204
    //procedure WMLButtonDblClk(?:?);//004B025C
    //procedure sub_004B0294(?:?);//004B0294
    //procedure sub_004B02BC(?:?);//004B02BC
    //procedure CMDialogChar(?:?);//004B0318
    constructor sub_004B0334;//004B0334
    destructor Destroy;//004B03E8
    procedure sub_004854CC;//004B0428
    //procedure CMMouseEnter(?:?);//004B0454
    //procedure CMMouseLeave(?:?);//004B048C
    procedure sub_004B04B8;//004B04B8
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//004B05FC
    //procedure sub_004B0698(?:TCustomMenuExpandBtn; ?:?);//004B0698
    //procedure sub_004B06CC(?:TCustomMenuExpandBtn; ?:?);//004B06CC
    //procedure sub_004B0700(?:TCustomMenuExpandBtn; ?:?);//004B0700
    procedure sub_004B0734;//004B0734
    constructor sub_004B0774;//004B0774
    procedure sub_004B07D0;//004B07D0
    procedure sub_004B0920;//004B0920
    procedure sub_004854CC;//004B0944
    //procedure CMMouseLeave(?:?);//004B0970
    //procedure sub_004B0998(?:?; ?:?);//004B0998
    procedure DropDownClick;//004B0A0C
    //function sub_004B0B0C:?;//004B0B0C
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//004B0B50
    //function sub_004B0BA4(?:TCustomDropDownButton):?;//004B0BA4
    procedure sub_004B0C14;//004B0C14
    procedure sub_004841BC;//004B0C7C
    //procedure sub_00484E9C(?:?);//004B0C9C
    //procedure sub_00484338(?:?; ?:?; ?:?);//004B0CD0
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);//004B0D04
    constructor sub_004B0D88;//004B0D88
    destructor Destroy;//004B0E58
    procedure sub_004B0E98;//004B0E98
    procedure sub_004854CC;//004B0EFC
    //procedure CMVisibleChanged(?:?);//004B0F24
    //procedure sub_004B0F54(?:?; ?:?);//004B0F54
    //procedure sub_004B0F94(?:?; ?:?; ?:?);//004B0F94
    procedure sub_004B0FD4;//004B0FD4
    //procedure sub_004B1014(?:?);//004B1014
    //procedure sub_004B106C(?:?; ?:?; ?:?; ?:?);//004B106C
    //procedure sub_004B1158(?:?);//004B1158
    //procedure sub_004B1184(?:?);//004B1184
    procedure sub_0048513C;//004B11BC
    constructor sub_004B11D0;//004B11D0
    //procedure sub_00482C8C(?:?; ?:?);//004B122C
    //procedure sub_00484544(?:?; ?:?; ?:?);//004B1324
    //procedure sub_00484588(?:?);//004B1364
    //procedure sub_0048A478(?:?; ?:?; ?:?; ?:?);//004B13A8
    procedure sub_004B1418;//004B1418
    //function sub_004B1460:?;//004B1460
    //function sub_004B1478(?:TWinControl):?;//004B1478

implementation

//004AFA40
constructor sub_004AFA40;
begin
{*
 004AFA40    push        ebp
 004AFA41    mov         ebp,esp
 004AFA43    add         esp,0FFFFFFF4
 004AFA46    test        dl,dl
>004AFA48    je          004AFA52
 004AFA4A    add         esp,0FFFFFFF0
 004AFA4D    call        @ClassCreate
 004AFA52    mov         dword ptr [ebp-0C],ecx
 004AFA55    mov         byte ptr [ebp-5],dl
 004AFA58    mov         dword ptr [ebp-4],eax
 004AFA5B    mov         ecx,dword ptr [ebp-0C]
 004AFA5E    xor         edx,edx
 004AFA60    mov         eax,dword ptr [ebp-4]
 004AFA63    call        004C4B70
 004AFA68    mov         eax,dword ptr [ebp-4]
 004AFA6B    mov         edx,dword ptr ds:[4AFAA8];0x80 gvar_004AFAA8
 004AFA71    mov         dword ptr [eax+50],edx;TCustomButtonControl.FControlStyle:TControlStyle
 004AFA74    mov         eax,dword ptr [ebp-4]
 004AFA77    mov         byte ptr [eax+1AD],1;TCustomButtonControl.FFlat:Boolean
 004AFA7E    mov         eax,dword ptr [ebp-4]
 004AFA81    mov         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
 004AFA88    mov         eax,dword ptr [ebp-4]
 004AFA8B    cmp         byte ptr [ebp-5],0
>004AFA8F    je          004AFAA0
 004AFA91    call        @AfterConstruction
 004AFA96    pop         dword ptr fs:[0]
 004AFA9D    add         esp,0C
 004AFAA0    mov         eax,dword ptr [ebp-4]
 004AFAA3    mov         esp,ebp
 004AFAA5    pop         ebp
 004AFAA6    ret
*}
end;

//004AFAAC
procedure sub_004AFAAC;
begin
{*
 004AFAAC    push        ebp
 004AFAAD    mov         ebp,esp
 004AFAAF    push        ecx
 004AFAB0    mov         dword ptr [ebp-4],eax
 004AFAB3    mov         eax,dword ptr [ebp-4]
 004AFAB6    call        004C6D68
 004AFABB    mov         eax,dword ptr [ebp-4]
 004AFABE    mov         edx,dword ptr [eax+48];TCustomButtonControl.Width:Integer
 004AFAC1    inc         edx
 004AFAC2    mov         eax,dword ptr [ebp-4]
 004AFAC5    call        TSplitter.SetWidth
 004AFACA    pop         ecx
 004AFACB    pop         ebp
 004AFACC    ret
*}
end;

//004AFAD0
procedure TCustomButtonControl.sub_004854CC;
begin
{*
 004AFAD0    push        ebp
 004AFAD1    mov         ebp,esp
 004AFAD3    push        ecx
 004AFAD4    mov         dword ptr [ebp-4],eax
 004AFAD7    mov         dl,1
 004AFAD9    mov         eax,dword ptr [ebp-4]
 004AFADC    mov         ecx,dword ptr [eax]
 004AFADE    call        dword ptr [ecx+0D8];TCustomButtonControl.sub_004B0160
 004AFAE4    mov         eax,dword ptr [ebp-4]
 004AFAE7    call        TCustomActionControl.sub_004854CC
 004AFAEC    pop         ecx
 004AFAED    pop         ebp
 004AFAEE    ret
*}
end;

//004AFAF0
{*procedure TCustomButtonControl.CMEnabledChanged(?:?);
begin
 004AFAF0    push        ebp
 004AFAF1    mov         ebp,esp
 004AFAF3    add         esp,0FFFFFFF8
 004AFAF6    mov         dword ptr [ebp-8],edx
 004AFAF9    mov         dword ptr [ebp-4],eax
 004AFAFC    mov         eax,dword ptr [ebp-4]
 004AFAFF    call        004B0204
 004AFB04    mov         edx,dword ptr [ebp-8]
 004AFB07    mov         eax,dword ptr [ebp-4]
 004AFB0A    call        TControl.CMEnabledChanged
 004AFB0F    pop         ecx
 004AFB10    pop         ecx
 004AFB11    pop         ebp
 004AFB12    ret
end;*}

//004AFB14
{*procedure TCustomButtonControl.CMTextChanged(?:?);
begin
 004AFB14    push        ebp
 004AFB15    mov         ebp,esp
 004AFB17    add         esp,0FFFFFFF8
 004AFB1A    mov         dword ptr [ebp-8],edx
 004AFB1D    mov         dword ptr [ebp-4],eax
 004AFB20    mov         eax,dword ptr [ebp-4]
 004AFB23    mov         edx,dword ptr [eax]
 004AFB25    call        dword ptr [edx+0C8];TCustomButtonControl.sub_004C6AA0
 004AFB2B    test        al,al
>004AFB2D    je          004AFB6B
 004AFB2F    mov         eax,dword ptr [ebp-4]
 004AFB32    call        004C6C1C
 004AFB37    test        eax,eax
>004AFB39    je          004AFB5C
 004AFB3B    mov         eax,dword ptr [ebp-4]
 004AFB3E    call        004C6C1C
 004AFB43    mov         al,byte ptr [eax+227]
 004AFB49    sub         al,2
>004AFB4B    jae         004AFB5C
 004AFB4D    mov         edx,8
 004AFB52    mov         eax,dword ptr [ebp-4]
 004AFB55    call        TSplitter.SetWidth
>004AFB5A    jmp         004AFB76
 004AFB5C    mov         edx,6
 004AFB61    mov         eax,dword ptr [ebp-4]
 004AFB64    call        TToolButton.SetHeight
>004AFB69    jmp         004AFB76
 004AFB6B    mov         edx,dword ptr [ebp-8]
 004AFB6E    mov         eax,dword ptr [ebp-4]
 004AFB71    call        TCustomActionControl.CMTextChanged
 004AFB76    pop         ecx
 004AFB77    pop         ecx
 004AFB78    pop         ebp
 004AFB79    ret
end;*}

//004AFB7C
{*procedure TCustomButtonControl.CMMouseEnter(?:?);
begin
 004AFB7C    push        ebp
 004AFB7D    mov         ebp,esp
 004AFB7F    add         esp,0FFFFFFF8
 004AFB82    mov         dword ptr [ebp-8],edx
 004AFB85    mov         dword ptr [ebp-4],eax
 004AFB88    mov         edx,dword ptr [ebp-8]
 004AFB8B    mov         eax,dword ptr [ebp-4]
 004AFB8E    call        TControl.CMMouseEnter
 004AFB93    mov         eax,dword ptr [ebp-4]
 004AFB96    cmp         byte ptr [eax+1AD],0;TCustomButtonControl.FFlat:Boolean
>004AFB9D    je          004AFBD5
 004AFB9F    mov         eax,dword ptr [ebp-4]
 004AFBA2    cmp         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
>004AFBA9    jne         004AFBD5
 004AFBAB    mov         eax,dword ptr [ebp-4]
 004AFBAE    mov         edx,dword ptr [eax]
 004AFBB0    call        dword ptr [edx+50];TImage.GetEnabled
 004AFBB3    test        al,al
>004AFBB5    je          004AFBD5
 004AFBB7    call        user32.GetCapture
 004AFBBC    test        eax,eax
>004AFBBE    jne         004AFBD5
 004AFBC0    mov         eax,dword ptr [ebp-4]
 004AFBC3    mov         byte ptr [eax+1AB],1;TCustomButtonControl.FMouseInControl:Boolean
 004AFBCA    mov         eax,dword ptr [ebp-4]
 004AFBCD    mov         edx,dword ptr [eax]
 004AFBCF    call        dword ptr [edx+80];TCustomButtonControl.sub_00484018
 004AFBD5    pop         ecx
 004AFBD6    pop         ecx
 004AFBD7    pop         ebp
 004AFBD8    ret
end;*}

//004AFBDC
{*procedure TCustomButtonControl.CMMouseLeave(?:?);
begin
 004AFBDC    push        ebp
 004AFBDD    mov         ebp,esp
 004AFBDF    add         esp,0FFFFFFF8
 004AFBE2    mov         dword ptr [ebp-8],edx
 004AFBE5    mov         dword ptr [ebp-4],eax
 004AFBE8    mov         edx,dword ptr [ebp-8]
 004AFBEB    mov         eax,dword ptr [ebp-4]
 004AFBEE    call        TControl.CMMouseLeave
 004AFBF3    mov         eax,dword ptr [ebp-4]
 004AFBF6    cmp         byte ptr [eax+1AD],0;TCustomButtonControl.FFlat:Boolean
>004AFBFD    je          004AFC4C
 004AFBFF    mov         eax,dword ptr [ebp-4]
 004AFC02    cmp         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
>004AFC09    je          004AFC4C
 004AFC0B    mov         eax,dword ptr [ebp-4]
 004AFC0E    mov         edx,dword ptr [eax]
 004AFC10    call        dword ptr [edx+50];TImage.GetEnabled
 004AFC13    test        al,al
>004AFC15    je          004AFC4C
 004AFC17    mov         eax,dword ptr [ebp-4]
 004AFC1A    mov         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
 004AFC21    mov         eax,dword ptr [ebp-4]
 004AFC24    mov         edx,dword ptr [eax]
 004AFC26    call        dword ptr [edx+0C0];TCustomButtonControl.sub_004C6B70
 004AFC2C    test        al,al
>004AFC2E    jne         004AFC3A
 004AFC30    mov         eax,dword ptr [ebp-4]
 004AFC33    mov         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
 004AFC3A    mov         eax,dword ptr [ebp-4]
 004AFC3D    mov         byte ptr [eax+1AA],0;TCustomButtonControl.FDragging:Boolean
 004AFC44    mov         eax,dword ptr [ebp-4]
 004AFC47    mov         edx,dword ptr [eax]
 004AFC49    call        dword ptr [edx+7C];TCustomButtonControl.sub_00483F08
 004AFC4C    pop         ecx
 004AFC4D    pop         ecx
 004AFC4E    pop         ebp
 004AFC4F    ret
end;*}

//004AFC50
{*procedure sub_004AFC50(?:?);
begin
 004AFC50    push        ebp
 004AFC51    mov         ebp,esp
 004AFC53    add         esp,0FFFFFFF8
 004AFC56    mov         dword ptr [ebp-8],edx
 004AFC59    mov         dword ptr [ebp-4],eax
 004AFC5C    mov         eax,dword ptr [ebp-4]
 004AFC5F    mov         edx,dword ptr [eax]
 004AFC61    call        dword ptr [edx+0C0];TCustomButtonControl.sub_004C6B70
 004AFC67    test        al,al
>004AFC69    je          004AFCBD
 004AFC6B    mov         eax,dword ptr [ebp-4]
 004AFC6E    cmp         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
>004AFC75    jne         004AFCBD
 004AFC77    mov         eax,dword ptr [ebp-4]
 004AFC7A    mov         eax,dword ptr [eax+160];TCustomButtonControl...............................................
 004AFC80    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004AFC83    call        TBrush.GetColor
 004AFC88    mov         edx,13
 004AFC8D    call        004AD754
 004AFC92    push        eax
 004AFC93    mov         eax,dword ptr [ebp-4]
 004AFC96    mov         eax,dword ptr [eax+160];TCustomButtonControl...............................................
 004AFC9C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004AFC9F    call        TBrush.GetColor
 004AFCA4    pop         edx
 004AFCA5    call        00436FC8
 004AFCAA    mov         edx,eax
 004AFCAC    mov         eax,dword ptr [ebp-4]
 004AFCAF    mov         eax,dword ptr [eax+160];TCustomButtonControl...............................................
 004AFCB5    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004AFCB8    call        0042EA6C
 004AFCBD    mov         edx,dword ptr [ebp-8]
 004AFCC0    mov         eax,dword ptr [ebp-4]
 004AFCC3    call        004C522C
 004AFCC8    pop         ecx
 004AFCC9    pop         ecx
 004AFCCA    pop         ebp
 004AFCCB    ret
end;*}

//004AFCCC
{*procedure sub_004AFCCC(?:TRect; ?:?);
begin
 004AFCCC    push        ebp
 004AFCCD    mov         ebp,esp
 004AFCCF    add         esp,0FFFFFFE8
 004AFCD2    push        esi
 004AFCD3    push        edi
 004AFCD4    mov         esi,edx
 004AFCD6    lea         edi,[ebp-14]
 004AFCD9    movs        dword ptr [edi],dword ptr [esi]
 004AFCDA    movs        dword ptr [edi],dword ptr [esi]
 004AFCDB    movs        dword ptr [edi],dword ptr [esi]
 004AFCDC    movs        dword ptr [edi],dword ptr [esi]
 004AFCDD    mov         byte ptr [ebp-15],cl
 004AFCE0    mov         dword ptr [ebp-4],eax
 004AFCE3    pop         edi
 004AFCE4    pop         esi
 004AFCE5    mov         esp,ebp
 004AFCE7    pop         ebp
 004AFCE8    ret
end;*}

//004AFCEC
{*function sub_004AFCEC:?;
begin
 004AFCEC    push        ebp
 004AFCED    mov         ebp,esp
 004AFCEF    add         esp,0FFFFFFF8
 004AFCF2    mov         dword ptr [ebp-4],eax
 004AFCF5    mov         byte ptr [ebp-5],0
 004AFCF9    mov         al,byte ptr [ebp-5]
 004AFCFC    pop         ecx
 004AFCFD    pop         ecx
 004AFCFE    pop         ebp
 004AFCFF    ret
end;*}

//004AFD00
procedure sub_004AFD00;
begin
{*
 004AFD00    push        ebp
 004AFD01    mov         ebp,esp
 004AFD03    push        ecx
 004AFD04    push        esi
 004AFD05    mov         dword ptr [ebp-4],eax
 004AFD08    mov         eax,dword ptr [ebp-4]
 004AFD0B    call        004864B8
 004AFD10    mov         eax,dword ptr [ebp-4]
 004AFD13    mov         edx,dword ptr [eax]
 004AFD15    call        dword ptr [edx+3C];TCustomButtonControl.sub_004C6BC4
 004AFD18    test        eax,eax
>004AFD1A    je          004AFD34
 004AFD1C    mov         eax,dword ptr [ebp-4]
 004AFD1F    mov         edx,dword ptr [eax]
 004AFD21    call        dword ptr [edx+3C];TCustomButtonControl.sub_004C6BC4
 004AFD24    mov         edx,eax
 004AFD26    mov         cl,1
 004AFD28    mov         eax,dword ptr [ebp-4]
 004AFD2B    mov         si,0FFEF
 004AFD2F    call        @CallDynaInst;TControl.sub_00486204
 004AFD34    pop         esi
 004AFD35    pop         ecx
 004AFD36    pop         ebp
 004AFD37    ret
*}
end;

//004AFD38
{*procedure TCustomButtonControl.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 004AFD38    push        ebp
 004AFD39    mov         ebp,esp
 004AFD3B    add         esp,0FFFFFFF8
 004AFD3E    mov         byte ptr [ebp-6],cl
 004AFD41    mov         byte ptr [ebp-5],dl
 004AFD44    mov         dword ptr [ebp-4],eax
 004AFD47    mov         eax,dword ptr [ebp+0C]
 004AFD4A    push        eax
 004AFD4B    mov         eax,dword ptr [ebp+8]
 004AFD4E    push        eax
 004AFD4F    mov         cl,byte ptr [ebp-6]
 004AFD52    mov         dl,byte ptr [ebp-5]
 004AFD55    mov         eax,dword ptr [ebp-4]
 004AFD58    call        TControl.sub_00485588
 004AFD5D    cmp         byte ptr [ebp-5],0
>004AFD61    jne         004AFD97
 004AFD63    mov         eax,dword ptr [ebp-4]
 004AFD66    mov         edx,dword ptr [eax]
 004AFD68    call        dword ptr [edx+50];TImage.GetEnabled
 004AFD6B    test        al,al
>004AFD6D    je          004AFD97
 004AFD6F    mov         eax,dword ptr [ebp-4]
 004AFD72    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004AFD79    jne         004AFD8D
 004AFD7B    mov         dl,2
 004AFD7D    mov         eax,dword ptr [ebp-4]
 004AFD80    call        004B0198
 004AFD85    mov         eax,dword ptr [ebp-4]
 004AFD88    mov         edx,dword ptr [eax]
 004AFD8A    call        dword ptr [edx+7C];TCustomButtonControl.sub_00483F08
 004AFD8D    mov         eax,dword ptr [ebp-4]
 004AFD90    mov         byte ptr [eax+1AA],1;TCustomButtonControl.FDragging:Boolean
 004AFD97    pop         ecx
 004AFD98    pop         ecx
 004AFD99    pop         ebp
 004AFD9A    ret         8
end;*}

//004AFDA0
{*procedure TCustomButtonControl.sub_004858F4(?:?; ?:?; ?:?);
begin
 004AFDA0    push        ebp
 004AFDA1    mov         ebp,esp
 004AFDA3    add         esp,0FFFFFFF0
 004AFDA6    mov         dword ptr [ebp-0C],ecx
 004AFDA9    mov         byte ptr [ebp-5],dl
 004AFDAC    mov         dword ptr [ebp-4],eax
 004AFDAF    mov         eax,dword ptr [ebp+8]
 004AFDB2    push        eax
 004AFDB3    mov         ecx,dword ptr [ebp-0C]
 004AFDB6    mov         dl,byte ptr [ebp-5]
 004AFDB9    mov         eax,dword ptr [ebp-4]
 004AFDBC    call        TControl.sub_004858F4
 004AFDC1    mov         eax,dword ptr [ebp-4]
 004AFDC4    cmp         byte ptr [eax+1AA],0;TCustomButtonControl.FDragging:Boolean
>004AFDCB    je          004AFE3A
 004AFDCD    mov         eax,dword ptr [ebp-4]
 004AFDD0    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004AFDD7    jne         004AFDDF
 004AFDD9    mov         byte ptr [ebp-0D],0
>004AFDDD    jmp         004AFDE3
 004AFDDF    mov         byte ptr [ebp-0D],3
 004AFDE3    cmp         dword ptr [ebp-0C],0
>004AFDE7    jl          004AFE1F
 004AFDE9    mov         eax,dword ptr [ebp-4]
 004AFDEC    call        TControl.GetClientWidth
 004AFDF1    cmp         eax,dword ptr [ebp-0C]
>004AFDF4    jle         004AFE1F
 004AFDF6    cmp         dword ptr [ebp+8],0
>004AFDFA    jl          004AFE1F
 004AFDFC    mov         eax,dword ptr [ebp-4]
 004AFDFF    call        TControl.GetClientHeight
 004AFE04    cmp         eax,dword ptr [ebp+8]
>004AFE07    jl          004AFE1F
 004AFE09    mov         eax,dword ptr [ebp-4]
 004AFE0C    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004AFE13    je          004AFE1B
 004AFE15    mov         byte ptr [ebp-0D],3
>004AFE19    jmp         004AFE1F
 004AFE1B    mov         byte ptr [ebp-0D],2
 004AFE1F    mov         al,byte ptr [ebp-0D]
 004AFE22    mov         edx,dword ptr [ebp-4]
 004AFE25    cmp         al,byte ptr [edx+1AE];TCustomButtonControl.FState:TButtonState
>004AFE2B    je          004AFE4E
 004AFE2D    mov         dl,byte ptr [ebp-0D]
 004AFE30    mov         eax,dword ptr [ebp-4]
 004AFE33    call        004B0198
>004AFE38    jmp         004AFE4E
 004AFE3A    mov         eax,dword ptr [ebp-4]
 004AFE3D    cmp         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
>004AFE44    jne         004AFE4E
 004AFE46    mov         eax,dword ptr [ebp-4]
 004AFE49    call        004B0204
 004AFE4E    mov         esp,ebp
 004AFE50    pop         ebp
 004AFE51    ret         4
end;*}

//004AFE54
{*procedure TCustomButtonControl.sub_004859D0(?:?; ?:?; ?:?; ?:?);
begin
 004AFE54    push        ebp
 004AFE55    mov         ebp,esp
 004AFE57    add         esp,0FFFFFFF8
 004AFE5A    push        esi
 004AFE5B    mov         byte ptr [ebp-6],cl
 004AFE5E    mov         byte ptr [ebp-5],dl
 004AFE61    mov         dword ptr [ebp-4],eax
 004AFE64    mov         eax,dword ptr [ebp+0C]
 004AFE67    push        eax
 004AFE68    mov         eax,dword ptr [ebp+8]
 004AFE6B    push        eax
 004AFE6C    mov         cl,byte ptr [ebp-6]
 004AFE6F    mov         dl,byte ptr [ebp-5]
 004AFE72    mov         eax,dword ptr [ebp-4]
 004AFE75    call        TControl.sub_004859D0
 004AFE7A    mov         eax,dword ptr [ebp-4]
 004AFE7D    cmp         byte ptr [eax+1AA],0;TCustomButtonControl.FDragging:Boolean
>004AFE84    je          004AFFD0
 004AFE8A    mov         eax,dword ptr [ebp-4]
 004AFE8D    mov         byte ptr [eax+1AA],0;TCustomButtonControl.FDragging:Boolean
 004AFE94    cmp         dword ptr [ebp+0C],0
>004AFE98    jl          004AFEBA
 004AFE9A    mov         eax,dword ptr [ebp-4]
 004AFE9D    call        TControl.GetClientWidth
 004AFEA2    cmp         eax,dword ptr [ebp+0C]
>004AFEA5    jle         004AFEBA
 004AFEA7    cmp         dword ptr [ebp+8],0
>004AFEAB    jl          004AFEBA
 004AFEAD    mov         eax,dword ptr [ebp-4]
 004AFEB0    call        TControl.GetClientHeight
 004AFEB5    cmp         eax,dword ptr [ebp+8]
>004AFEB8    jge         004AFEBE
 004AFEBA    xor         eax,eax
>004AFEBC    jmp         004AFEC0
 004AFEBE    mov         al,1
 004AFEC0    mov         byte ptr [ebp-7],al
 004AFEC3    mov         eax,dword ptr [ebp-4]
 004AFEC6    cmp         dword ptr [eax+16C],0;TCustomButtonControl.FActionClient:TActionClientItem
>004AFECD    je          004AFF62
 004AFED3    mov         eax,dword ptr [ebp-4]
 004AFED6    mov         eax,dword ptr [eax+16C];TCustomButtonControl.FActionClient:TActionClientItem
 004AFEDC    call        TActionClientItem.GetAction
 004AFEE1    mov         edx,dword ptr ds:[492C28];TCustomAction
 004AFEE7    call        @IsClass
 004AFEEC    test        al,al
>004AFEEE    je          004AFF62
 004AFEF0    mov         eax,dword ptr [ebp-4]
 004AFEF3    mov         eax,dword ptr [eax+16C];TCustomButtonControl.FActionClient:TActionClientItem
 004AFEF9    call        TActionClientItem.GetAction
 004AFEFE    cmp         dword ptr [eax+6C],0
>004AFF02    je          004AFF2F
 004AFF04    mov         eax,dword ptr [ebp-4]
 004AFF07    mov         eax,dword ptr [eax+16C];TCustomButtonControl.FActionClient:TActionClientItem
 004AFF0D    call        TActionClientItem.GetAction
 004AFF12    cmp         byte ptr [eax+95],0
>004AFF19    je          004AFF62
 004AFF1B    mov         eax,dword ptr [ebp-4]
 004AFF1E    mov         eax,dword ptr [eax+16C];TCustomButtonControl.FActionClient:TActionClientItem
 004AFF24    call        TActionClientItem.GetAction
 004AFF29    cmp         byte ptr [eax+69],0
>004AFF2D    je          004AFF62
 004AFF2F    mov         eax,dword ptr [ebp-4]
 004AFF32    mov         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
 004AFF39    mov         eax,dword ptr [ebp-4]
 004AFF3C    mov         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
 004AFF43    cmp         byte ptr [ebp-7],0
>004AFF47    je          004AFFB6
 004AFF49    mov         eax,dword ptr [ebp-4]
 004AFF4C    mov         al,byte ptr [eax+1AE];TCustomButtonControl.FState:TButtonState
 004AFF52    add         al,0FE
 004AFF54    sub         al,2
>004AFF56    jb          004AFFB6
 004AFF58    mov         eax,dword ptr [ebp-4]
 004AFF5B    mov         edx,dword ptr [eax]
 004AFF5D    call        dword ptr [edx+7C];TCustomButtonControl.sub_00483F08
>004AFF60    jmp         004AFFB6
 004AFF62    cmp         byte ptr [ebp-7],0
>004AFF66    je          004AFF95
 004AFF68    mov         eax,dword ptr [ebp-4]
 004AFF6B    mov         dl,byte ptr [eax+1A9];TCustomButtonControl.FDown:Boolean
 004AFF71    xor         dl,1
 004AFF74    mov         eax,dword ptr [ebp-4]
 004AFF77    call        004B009C
 004AFF7C    mov         eax,dword ptr [ebp-4]
 004AFF7F    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004AFF86    je          004AFFB6
 004AFF88    mov         eax,dword ptr [ebp-4]
 004AFF8B    mov         edx,dword ptr [eax]
 004AFF8D    call        dword ptr [edx+80];TCustomButtonControl.sub_00484018
>004AFF93    jmp         004AFFB6
 004AFF95    mov         eax,dword ptr [ebp-4]
 004AFF98    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004AFF9F    je          004AFFAB
 004AFFA1    mov         eax,dword ptr [ebp-4]
 004AFFA4    mov         byte ptr [eax+1AE],3;TCustomButtonControl.FState:TButtonState
 004AFFAB    mov         eax,dword ptr [ebp-4]
 004AFFAE    mov         edx,dword ptr [eax]
 004AFFB0    call        dword ptr [edx+80];TCustomButtonControl.sub_00484018
 004AFFB6    cmp         byte ptr [ebp-7],0
>004AFFBA    je          004AFFC8
 004AFFBC    mov         eax,dword ptr [ebp-4]
 004AFFBF    mov         si,0FFEB
 004AFFC3    call        @CallDynaInst;TCustomButtonControl.sub_004854CC
 004AFFC8    mov         eax,dword ptr [ebp-4]
 004AFFCB    call        004B0204
 004AFFD0    pop         esi
 004AFFD1    pop         ecx
 004AFFD2    pop         ecx
 004AFFD3    pop         ebp
 004AFFD4    ret         8
end;*}

//004AFFD8
procedure sub_004AFFD8;
begin
{*
 004AFFD8    push        ebp
 004AFFD9    mov         ebp,esp
 004AFFDB    add         esp,0FFFFFFEC
 004AFFDE    push        ebx
 004AFFDF    mov         dword ptr [ebp-4],eax
 004AFFE2    mov         eax,dword ptr [ebp-4]
 004AFFE5    call        004C5BA8
 004AFFEA    mov         eax,dword ptr [ebp-4]
 004AFFED    mov         edx,dword ptr [eax]
 004AFFEF    call        dword ptr [edx+0C8];TCustomButtonControl.sub_004C6AA0
 004AFFF5    test        al,al
>004AFFF7    jne         004B004B
 004AFFF9    mov         eax,dword ptr [ebp-4]
 004AFFFC    mov         eax,dword ptr [eax+160];TCustomButtonControl...............................................
 004B0002    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B0005    mov         edx,1
 004B000A    call        TPen.SetWidth
 004B000F    lea         edx,[ebp-14]
 004B0012    mov         eax,dword ptr [ebp-4]
 004B0015    mov         ecx,dword ptr [eax]
 004B0017    call        dword ptr [ecx+44];TCustomButtonControl.sub_00482F5C
 004B001A    lea         eax,[ebp-14]
 004B001D    push        eax
 004B001E    mov         eax,dword ptr [ebp-4]
 004B0021    mov         edx,dword ptr [eax]
 004B0023    call        dword ptr [edx+0C0];TCustomButtonControl.sub_004C6B70
 004B0029    test        al,al
>004B002B    jne         004B003D
 004B002D    mov         eax,dword ptr [ebp-4]
 004B0030    cmp         byte ptr [eax+1AE],2;TCustomButtonControl.FState:TButtonState
>004B0037    je          004B003D
 004B0039    xor         ecx,ecx
>004B003B    jmp         004B003F
 004B003D    mov         cl,1
 004B003F    mov         eax,dword ptr [ebp-4]
 004B0042    pop         edx
 004B0043    mov         ebx,dword ptr [eax]
 004B0045    call        dword ptr [ebx+0E4];TCustomButtonControl.sub_004AFCCC
 004B004B    pop         ebx
 004B004C    mov         esp,ebp
 004B004E    pop         ebp
 004B004F    ret
*}
end;

//004B0050
{*procedure sub_004B0050(?:?);
begin
 004B0050    push        ebp
 004B0051    mov         ebp,esp
 004B0053    add         esp,0FFFFFFF8
 004B0056    mov         dword ptr [ebp-8],edx
 004B0059    mov         dword ptr [ebp-4],eax
 004B005C    mov         edx,dword ptr [ebp-8]
 004B005F    mov         eax,dword ptr [ebp-4]
 004B0062    call        004C617C
 004B0067    mov         eax,dword ptr [ebp-4]
 004B006A    mov         edx,dword ptr [eax]
 004B006C    call        dword ptr [edx+50];TImage.GetEnabled
 004B006F    test        al,al
>004B0071    je          004B0088
 004B0073    cmp         dword ptr [ebp-8],0
>004B0077    je          004B0088
 004B0079    mov         eax,dword ptr [ebp-4]
 004B007C    mov         edx,dword ptr [eax]
 004B007E    call        dword ptr [edx+0C8];TCustomButtonControl.sub_004C6AA0
 004B0084    test        al,al
>004B0086    je          004B008C
 004B0088    xor         edx,edx
>004B008A    jmp         004B008E
 004B008C    mov         dl,1
 004B008E    mov         eax,dword ptr [ebp-4]
 004B0091    mov         ecx,dword ptr [eax]
 004B0093    call        dword ptr [ecx+64];TImage.SetEnabled
 004B0096    pop         ecx
 004B0097    pop         ecx
 004B0098    pop         ebp
 004B0099    ret
end;*}

//004B009C
{*procedure sub_004B009C(?:TCustomButtonControl; ?:?);
begin
 004B009C    push        ebp
 004B009D    mov         ebp,esp
 004B009F    add         esp,0FFFFFFF8
 004B00A2    mov         byte ptr [ebp-5],dl
 004B00A5    mov         dword ptr [ebp-4],eax
 004B00A8    mov         eax,dword ptr [ebp-4]
 004B00AB    mov         edx,dword ptr [eax]
 004B00AD    call        dword ptr [edx+0C4];TCustomButtonControl.sub_004C5B68
 004B00B3    test        al,al
>004B00B5    jne         004B00BB
 004B00B7    mov         byte ptr [ebp-5],0
 004B00BB    mov         al,byte ptr [ebp-5]
 004B00BE    mov         edx,dword ptr [ebp-4]
 004B00C1    cmp         al,byte ptr [edx+1A9];TCustomButtonControl.FDown:Boolean
>004B00C7    je          004B0128
 004B00C9    mov         eax,dword ptr [ebp-4]
 004B00CC    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004B00D3    je          004B00E1
 004B00D5    mov         eax,dword ptr [ebp-4]
 004B00D8    cmp         byte ptr [eax+1A8],0;TCustomButtonControl.FAllowAllUp:Boolean
>004B00DF    je          004B0128
 004B00E1    mov         al,byte ptr [ebp-5]
 004B00E4    mov         edx,dword ptr [ebp-4]
 004B00E7    mov         byte ptr [edx+1A9],al;TCustomButtonControl.FDown:Boolean
 004B00ED    cmp         byte ptr [ebp-5],0
>004B00F1    je          004B0113
 004B00F3    mov         eax,dword ptr [ebp-4]
 004B00F6    cmp         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
>004B00FD    jne         004B0107
 004B00FF    mov         eax,dword ptr [ebp-4]
 004B0102    mov         edx,dword ptr [eax]
 004B0104    call        dword ptr [edx+7C];TCustomButtonControl.sub_00483F08
 004B0107    mov         eax,dword ptr [ebp-4]
 004B010A    mov         byte ptr [eax+1AE],3;TCustomButtonControl.FState:TButtonState
>004B0111    jmp         004B0128
 004B0113    mov         eax,dword ptr [ebp-4]
 004B0116    mov         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
 004B011D    mov         eax,dword ptr [ebp-4]
 004B0120    mov         edx,dword ptr [eax]
 004B0122    call        dword ptr [edx+80];TCustomButtonControl.sub_00484018
 004B0128    pop         ecx
 004B0129    pop         ecx
 004B012A    pop         ebp
 004B012B    ret
end;*}

//004B012C
procedure TCustomButtonControl.SetFlat(const Value:Boolean);
begin
{*
 004B012C    push        ebp
 004B012D    mov         ebp,esp
 004B012F    add         esp,0FFFFFFF8
 004B0132    mov         byte ptr [ebp-5],dl
 004B0135    mov         dword ptr [ebp-4],eax
 004B0138    mov         eax,dword ptr [ebp-4]
 004B013B    mov         al,byte ptr [eax+1AD]
 004B0141    cmp         al,byte ptr [ebp-5]
>004B0144    je          004B015A
 004B0146    mov         al,byte ptr [ebp-5]
 004B0149    mov         edx,dword ptr [ebp-4]
 004B014C    mov         byte ptr [edx+1AD],al
 004B0152    mov         eax,dword ptr [ebp-4]
 004B0155    mov         edx,dword ptr [eax]
 004B0157    call        dword ptr [edx+7C]
 004B015A    pop         ecx
 004B015B    pop         ecx
 004B015C    pop         ebp
 004B015D    ret
*}
end;

//004B0160
{*procedure sub_004B0160(?:?);
begin
 004B0160    push        ebp
 004B0161    mov         ebp,esp
 004B0163    add         esp,0FFFFFFF8
 004B0166    mov         byte ptr [ebp-5],dl
 004B0169    mov         dword ptr [ebp-4],eax
 004B016C    mov         dl,byte ptr [ebp-5]
 004B016F    mov         eax,dword ptr [ebp-4]
 004B0172    call        004C62B8
 004B0177    xor         eax,eax
 004B0179    mov         al,byte ptr [ebp-5]
 004B017C    mov         dl,byte ptr [eax+56CB40]
 004B0182    mov         eax,dword ptr [ebp-4]
 004B0185    call        004B0198
 004B018A    mov         eax,dword ptr [ebp-4]
 004B018D    mov         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
 004B0194    pop         ecx
 004B0195    pop         ecx
 004B0196    pop         ebp
 004B0197    ret
end;*}

//004B0198
{*procedure sub_004B0198(?:TCustomButtonControl; ?:?);
begin
 004B0198    push        ebp
 004B0199    mov         ebp,esp
 004B019B    add         esp,0FFFFFFF8
 004B019E    mov         byte ptr [ebp-5],dl
 004B01A1    mov         dword ptr [ebp-4],eax
 004B01A4    mov         eax,dword ptr [ebp-4]
 004B01A7    mov         al,byte ptr [eax+1AE];TCustomButtonControl.FState:TButtonState
 004B01AD    cmp         al,byte ptr [ebp-5]
>004B01B0    je          004B01C6
 004B01B2    mov         al,byte ptr [ebp-5]
 004B01B5    mov         edx,dword ptr [ebp-4]
 004B01B8    mov         byte ptr [edx+1AE],al;TCustomButtonControl.FState:TButtonState
 004B01BE    mov         eax,dword ptr [ebp-4]
 004B01C1    mov         edx,dword ptr [eax]
 004B01C3    call        dword ptr [edx+7C];TCustomButtonControl.sub_00483F08
 004B01C6    pop         ecx
 004B01C7    pop         ecx
 004B01C8    pop         ebp
 004B01C9    ret
end;*}

//004B01CC
{*procedure sub_004B01CC(?:?; ?:?; ?:?; ?:?);
begin
 004B01CC    push        ebp
 004B01CD    mov         ebp,esp
 004B01CF    add         esp,0FFFFFFF4
 004B01D2    mov         dword ptr [ebp-0C],ecx
 004B01D5    mov         dword ptr [ebp-8],edx
 004B01D8    mov         dword ptr [ebp-4],eax
 004B01DB    mov         eax,dword ptr [ebp+0C]
 004B01DE    push        eax
 004B01DF    mov         eax,dword ptr [ebp+8]
 004B01E2    push        eax
 004B01E3    mov         ecx,dword ptr [ebp-0C]
 004B01E6    mov         edx,dword ptr [ebp-8]
 004B01E9    mov         eax,dword ptr [ebp-4]
 004B01EC    call        00482930
 004B01F1    mov         eax,dword ptr [ebp-4]
 004B01F4    mov         edx,dword ptr [eax]
 004B01F6    call        dword ptr [edx+90];TCustomButtonControl.sub_004C4DCC
 004B01FC    mov         esp,ebp
 004B01FE    pop         ebp
 004B01FF    ret         8
end;*}

//004B0204
procedure sub_004B0204(?:TCustomButtonControl);
begin
{*
 004B0204    push        ebp
 004B0205    mov         ebp,esp
 004B0207    add         esp,0FFFFFFF4
 004B020A    mov         dword ptr [ebp-4],eax
 004B020D    mov         eax,dword ptr [ebp-4]
 004B0210    test        byte ptr [eax+1C],8;TCustomButtonControl.FComponentState:TComponentState
>004B0214    jne         004B0258
 004B0216    mov         eax,dword ptr [ebp-4]
 004B0219    cmp         byte ptr [eax+1AD],0;TCustomButtonControl.FFlat:Boolean
>004B0220    je          004B0258
 004B0222    mov         eax,dword ptr [ebp-4]
 004B0225    mov         edx,dword ptr [eax]
 004B0227    call        dword ptr [edx+50];TImage.GetEnabled
 004B022A    test        al,al
>004B022C    je          004B0258
 004B022E    lea         eax,[ebp-0C]
 004B0231    push        eax
 004B0232    call        user32.GetCursorPos
 004B0237    lea         eax,[ebp-0C]
 004B023A    mov         dl,1
 004B023C    call        00481798
 004B0241    cmp         eax,dword ptr [ebp-4]
 004B0244    sete        al
 004B0247    mov         edx,dword ptr [ebp-4]
 004B024A    mov         byte ptr [edx+1AB],al;TCustomButtonControl.FMouseInControl:Boolean
 004B0250    mov         eax,dword ptr [ebp-4]
 004B0253    mov         edx,dword ptr [eax]
 004B0255    call        dword ptr [edx+7C];TCustomButtonControl.sub_00483F08
 004B0258    mov         esp,ebp
 004B025A    pop         ebp
 004B025B    ret
*}
end;

//004B025C
{*procedure TCustomButtonControl.WMLButtonDblClk(?:?);
begin
 004B025C    push        ebp
 004B025D    mov         ebp,esp
 004B025F    add         esp,0FFFFFFF8
 004B0262    push        esi
 004B0263    mov         dword ptr [ebp-8],edx
 004B0266    mov         dword ptr [ebp-4],eax
 004B0269    mov         edx,dword ptr [ebp-8]
 004B026C    mov         eax,dword ptr [ebp-4]
 004B026F    call        TControl.WMLButtonDblClk
 004B0274    mov         eax,dword ptr [ebp-4]
 004B0277    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004B027E    je          004B028C
 004B0280    mov         eax,dword ptr [ebp-4]
 004B0283    mov         si,0FFE9
 004B0287    call        @CallDynaInst;TControl.sub_0048555C
 004B028C    pop         esi
 004B028D    pop         ecx
 004B028E    pop         ecx
 004B028F    pop         ebp
 004B0290    ret
end;*}

//004B0294
{*procedure sub_004B0294(?:?);
begin
 004B0294    push        ebp
 004B0295    mov         ebp,esp
 004B0297    add         esp,0FFFFFFF8
 004B029A    mov         byte ptr [ebp-5],dl
 004B029D    mov         dword ptr [ebp-4],eax
 004B02A0    mov         dl,byte ptr [ebp-5]
 004B02A3    mov         eax,dword ptr [ebp-4]
 004B02A6    call        004C6458
 004B02AB    mov         edx,4
 004B02B0    mov         eax,dword ptr [ebp-4]
 004B02B3    call        004C6404
 004B02B8    pop         ecx
 004B02B9    pop         ecx
 004B02BA    pop         ebp
 004B02BB    ret
end;*}

//004B02BC
{*procedure sub_004B02BC(?:?);
begin
 004B02BC    push        ebp
 004B02BD    mov         ebp,esp
 004B02BF    add         esp,0FFFFFFEC
 004B02C2    push        esi
 004B02C3    push        edi
 004B02C4    mov         esi,edx
 004B02C6    lea         edi,[ebp-0C]
 004B02C9    movs        dword ptr [edi],dword ptr [esi]
 004B02CA    movs        dword ptr [edi],dword ptr [esi]
 004B02CB    mov         dword ptr [ebp-4],eax
 004B02CE    mov         eax,dword ptr [ebp-0C]
 004B02D1    mov         dword ptr [ebp-14],eax
 004B02D4    mov         eax,dword ptr [ebp-8]
 004B02D7    mov         dword ptr [ebp-10],eax
 004B02DA    mov         eax,dword ptr [ebp-4]
 004B02DD    test        byte ptr [eax+1C],10;TCustomButtonControl.FComponentState:TComponentState
>004B02E1    jne         004B0304
 004B02E3    mov         eax,dword ptr [ebp-4]
 004B02E6    cmp         byte ptr [eax+1AE],2;TCustomButtonControl.FState:TButtonState
>004B02ED    je          004B02FE
 004B02EF    mov         eax,dword ptr [ebp-4]
 004B02F2    mov         edx,dword ptr [eax]
 004B02F4    call        dword ptr [edx+0C0];TCustomButtonControl.sub_004C6B70
 004B02FA    test        al,al
>004B02FC    je          004B0304
 004B02FE    inc         dword ptr [ebp-14]
 004B0301    inc         dword ptr [ebp-10]
 004B0304    lea         edx,[ebp-14]
 004B0307    mov         eax,dword ptr [ebp-4]
 004B030A    call        004C5420
 004B030F    pop         edi
 004B0310    pop         esi
 004B0311    mov         esp,ebp
 004B0313    pop         ebp
 004B0314    ret
end;*}

//004B0318
{*procedure TCustomButtonControl.CMDialogChar(?:?);
begin
 004B0318    push        ebp
 004B0319    mov         ebp,esp
 004B031B    add         esp,0FFFFFFF8
 004B031E    mov         dword ptr [ebp-8],edx
 004B0321    mov         dword ptr [ebp-4],eax
 004B0324    mov         edx,dword ptr [ebp-8]
 004B0327    mov         eax,dword ptr [ebp-4]
 004B032A    mov         ecx,dword ptr [eax]
 004B032C    call        dword ptr [ecx-10];TControl.DefaultHandler
 004B032F    pop         ecx
 004B0330    pop         ecx
 004B0331    pop         ebp
 004B0332    ret
end;*}

//004B0334
constructor sub_004B0334;
begin
{*
 004B0334    push        ebp
 004B0335    mov         ebp,esp
 004B0337    add         esp,0FFFFFFF0
 004B033A    test        dl,dl
>004B033C    je          004B0346
 004B033E    add         esp,0FFFFFFF0
 004B0341    call        @ClassCreate
 004B0346    mov         dword ptr [ebp-0C],ecx
 004B0349    mov         byte ptr [ebp-5],dl
 004B034C    mov         dword ptr [ebp-4],eax
 004B034F    mov         ecx,dword ptr [ebp-0C]
 004B0352    xor         edx,edx
 004B0354    mov         eax,dword ptr [ebp-4]
 004B0357    call        004AFA40
 004B035C    mov         eax,dword ptr [ebp-4]
 004B035F    mov         byte ptr [eax+1CC],0;TCustomUtilityButton.FAutoScroll:Boolean
 004B0366    mov         eax,dword ptr [ebp-4]
 004B0369    mov         dword ptr [eax+1B0],2;TCustomUtilityButton.FArrowSize:Integer
 004B0373    mov         eax,dword ptr [ebp-4]
 004B0376    mov         byte ptr [eax+1CD],1;TCustomUtilityButton.FArrowType:TArrowType
 004B037D    mov         ecx,dword ptr [ebp-4]
 004B0380    mov         dl,1
 004B0382    mov         eax,[00440074];TTimer
 004B0387    call        TTimer.Create;TTimer.Create
 004B038C    mov         edx,dword ptr [ebp-4]
 004B038F    mov         dword ptr [edx+1B8],eax;TCustomUtilityButton.FScrollTimer:TTimer
 004B0395    mov         eax,dword ptr [ebp-4]
 004B0398    mov         eax,dword ptr [eax+1B8];TCustomUtilityButton.FScrollTimer:TTimer
 004B039E    mov         dword ptr [ebp-10],eax
 004B03A1    xor         edx,edx
 004B03A3    mov         eax,dword ptr [ebp-10]
 004B03A6    call        TTimer.SetEnabled
 004B03AB    mov         eax,dword ptr [ebp-4]
 004B03AE    push        eax
 004B03AF    push        4B0640
 004B03B4    mov         eax,dword ptr [ebp-10]
 004B03B7    call        TTimer.SetOnTimer
 004B03BC    mov         edx,2EE
 004B03C1    mov         eax,dword ptr [ebp-10]
 004B03C4    call        TTimer.SetInterval
 004B03C9    mov         eax,dword ptr [ebp-4]
 004B03CC    cmp         byte ptr [ebp-5],0
>004B03D0    je          004B03E1
 004B03D2    call        @AfterConstruction
 004B03D7    pop         dword ptr fs:[0]
 004B03DE    add         esp,0C
 004B03E1    mov         eax,dword ptr [ebp-4]
 004B03E4    mov         esp,ebp
 004B03E6    pop         ebp
 004B03E7    ret
*}
end;

//004B03E8
destructor TCustomUtilityButton.Destroy;
begin
{*
 004B03E8    push        ebp
 004B03E9    mov         ebp,esp
 004B03EB    add         esp,0FFFFFFF8
 004B03EE    call        @BeforeDestruction
 004B03F3    mov         byte ptr [ebp-5],dl
 004B03F6    mov         dword ptr [ebp-4],eax
 004B03F9    mov         eax,dword ptr [ebp-4]
 004B03FC    mov         eax,dword ptr [eax+1B8]
 004B0402    call        TObject.Free
 004B0407    mov         dl,byte ptr [ebp-5]
 004B040A    and         dl,0FC
 004B040D    mov         eax,dword ptr [ebp-4]
 004B0410    call        TCustomActionControl.Destroy
 004B0415    cmp         byte ptr [ebp-5],0
>004B0419    jle         004B0423
 004B041B    mov         eax,dword ptr [ebp-4]
 004B041E    call        @ClassDestroy
 004B0423    pop         ecx
 004B0424    pop         ecx
 004B0425    pop         ebp
 004B0426    ret
*}
end;

//004B0428
procedure TCustomUtilityButton.sub_004854CC;
begin
{*
 004B0428    push        ebp
 004B0429    mov         ebp,esp
 004B042B    push        ecx
 004B042C    push        ebx
 004B042D    mov         dword ptr [ebp-4],eax
 004B0430    mov         eax,dword ptr [ebp-4]
 004B0433    cmp         word ptr [eax+1C2],0;TCustomUtilityButton.?f1C2:word
>004B043B    je          004B044F
 004B043D    mov         ebx,dword ptr [ebp-4]
 004B0440    mov         edx,dword ptr [ebp-4]
 004B0443    mov         eax,dword ptr [ebx+1C4];TCustomUtilityButton.?f1C4:TCustomActionPopupMenu
 004B0449    call        dword ptr [ebx+1C0];TCustomUtilityButton.FOnClick
 004B044F    pop         ebx
 004B0450    pop         ecx
 004B0451    pop         ebp
 004B0452    ret
*}
end;

//004B0454
{*procedure TCustomUtilityButton.CMMouseEnter(?:?);
begin
 004B0454    push        ebp
 004B0455    mov         ebp,esp
 004B0457    add         esp,0FFFFFFF8
 004B045A    mov         dword ptr [ebp-8],edx
 004B045D    mov         dword ptr [ebp-4],eax
 004B0460    mov         edx,dword ptr [ebp-8]
 004B0463    mov         eax,dword ptr [ebp-4]
 004B0466    call        TCustomButtonControl.CMMouseEnter
 004B046B    mov         eax,dword ptr [ebp-4]
 004B046E    cmp         byte ptr [eax+1CC],0;TCustomUtilityButton.FAutoScroll:Boolean
>004B0475    je          004B0487
 004B0477    mov         dl,1
 004B0479    mov         eax,dword ptr [ebp-4]
 004B047C    mov         eax,dword ptr [eax+1B8];TCustomUtilityButton.FScrollTimer:TTimer
 004B0482    call        TTimer.SetEnabled
 004B0487    pop         ecx
 004B0488    pop         ecx
 004B0489    pop         ebp
 004B048A    ret
end;*}

//004B048C
{*procedure TCustomUtilityButton.CMMouseLeave(?:?);
begin
 004B048C    push        ebp
 004B048D    mov         ebp,esp
 004B048F    add         esp,0FFFFFFF8
 004B0492    mov         dword ptr [ebp-8],edx
 004B0495    mov         dword ptr [ebp-4],eax
 004B0498    mov         edx,dword ptr [ebp-8]
 004B049B    mov         eax,dword ptr [ebp-4]
 004B049E    call        TCustomButtonControl.CMMouseLeave
 004B04A3    xor         edx,edx
 004B04A5    mov         eax,dword ptr [ebp-4]
 004B04A8    mov         eax,dword ptr [eax+1B8];TCustomUtilityButton.FScrollTimer:TTimer
 004B04AE    call        TTimer.SetEnabled
 004B04B3    pop         ecx
 004B04B4    pop         ecx
 004B04B5    pop         ebp
 004B04B6    ret
end;*}

//004B04B8
procedure sub_004B04B8;
begin
{*
 004B04B8    push        ebp
 004B04B9    mov         ebp,esp
 004B04BB    add         esp,0FFFFFFF0
 004B04BE    mov         dword ptr [ebp-4],eax
 004B04C1    mov         byte ptr [ebp-0E],0
 004B04C5    mov         byte ptr [ebp-0D],0
 004B04C9    mov         eax,dword ptr [ebp-4]
 004B04CC    mov         al,byte ptr [eax+1B4];TCustomUtilityButton.FDirection:TScrollDirection
 004B04D2    sub         al,2
>004B04D4    jb          004B053A
 004B04D6    sub         al,2
>004B04D8    jae         004B059B
 004B04DE    mov         eax,dword ptr [ebp-4]
 004B04E1    mov         edx,dword ptr [eax+4C];TCustomUtilityButton.Height:Integer
 004B04E4    sar         edx,1
>004B04E6    jns         004B04EB
 004B04E8    adc         edx,0
 004B04EB    mov         eax,dword ptr [ebp-4]
 004B04EE    mov         eax,dword ptr [eax+1B0];TCustomUtilityButton.FArrowSize:Integer
 004B04F4    sar         eax,1
>004B04F6    jns         004B04FB
 004B04F8    adc         eax,0
 004B04FB    sub         edx,eax
 004B04FD    cmp         byte ptr [ebp-0E],2
 004B0501    sete        al
 004B0504    and         eax,7F
 004B0507    add         edx,dword ptr [eax*4+56CB44]
 004B050E    mov         eax,dword ptr [ebp-4]
 004B0511    mov         eax,dword ptr [eax+48];TCustomUtilityButton.Width:Integer
 004B0514    sar         eax,1
>004B0516    jns         004B051B
 004B0518    adc         eax,0
 004B051B    mov         ecx,dword ptr [ebp-4]
 004B051E    sub         eax,dword ptr [ecx+1B0]
 004B0524    xor         ecx,ecx
 004B0526    mov         cl,byte ptr [ebp-0D]
 004B0529    add         eax,dword ptr [ecx*4+56CB44]
 004B0530    lea         ecx,[ebp-0C]
 004B0533    call        Point
>004B0538    jmp         004B059B
 004B053A    cmp         byte ptr [ebp-0E],2
 004B053E    sete        al
 004B0541    and         eax,7F
 004B0544    mov         edx,dword ptr [eax*4+56CB44]
 004B054B    mov         eax,dword ptr [ebp-4]
 004B054E    mov         eax,dword ptr [eax+4C];TCustomUtilityButton.Height:Integer
 004B0551    sar         eax,1
>004B0553    jns         004B0558
 004B0555    adc         eax,0
 004B0558    mov         ecx,dword ptr [ebp-4]
 004B055B    sub         eax,dword ptr [ecx+1B0]
 004B0561    add         edx,eax
 004B0563    mov         eax,dword ptr [ebp-4]
 004B0566    mov         eax,dword ptr [eax+48];TCustomUtilityButton.Width:Integer
 004B0569    sar         eax,1
>004B056B    jns         004B0570
 004B056D    adc         eax,0
 004B0570    mov         ecx,dword ptr [ebp-4]
 004B0573    mov         ecx,dword ptr [ecx+1B0]
 004B0579    sar         ecx,1
>004B057B    jns         004B0580
 004B057D    adc         ecx,0
 004B0580    sub         eax,ecx
 004B0582    cmp         byte ptr [ebp-0E],2
 004B0586    sete        cl
 004B0589    and         ecx,7F
 004B058C    add         eax,dword ptr [ecx*4+56CB44]
 004B0593    lea         ecx,[ebp-0C]
 004B0596    call        Point
 004B059B    mov         eax,dword ptr [ebp-4]
 004B059E    mov         al,byte ptr [eax+1CD];TCustomUtilityButton.FArrowType:TArrowType
 004B05A4    sub         al,1
>004B05A6    jb          004B05AC
>004B05A8    je          004B05D2
>004B05AA    jmp         004B05F6
 004B05AC    mov         eax,dword ptr [ebp-4]
 004B05AF    mov         eax,dword ptr [eax+1B0];TCustomUtilityButton.FArrowSize:Integer
 004B05B5    push        eax
 004B05B6    lea         ecx,[ebp-0C]
 004B05B9    mov         eax,dword ptr [ebp-4]
 004B05BC    mov         dl,byte ptr [eax+1B4];TCustomUtilityButton.FDirection:TScrollDirection
 004B05C2    mov         eax,dword ptr [ebp-4]
 004B05C5    mov         eax,dword ptr [eax+160];TCustomUtilityButton...............................................
 004B05CB    call        004AD904
>004B05D0    jmp         004B05F6
 004B05D2    mov         eax,dword ptr [ebp-4]
 004B05D5    mov         eax,dword ptr [eax+1B0];TCustomUtilityButton.FArrowSize:Integer
 004B05DB    push        eax
 004B05DC    lea         ecx,[ebp-0C]
 004B05DF    mov         eax,dword ptr [ebp-4]
 004B05E2    mov         dl,byte ptr [eax+1B4];TCustomUtilityButton.FDirection:TScrollDirection
 004B05E8    mov         eax,dword ptr [ebp-4]
 004B05EB    mov         eax,dword ptr [eax+160];TCustomUtilityButton...............................................
 004B05F1    call        004ADAF4
 004B05F6    mov         esp,ebp
 004B05F8    pop         ebp
 004B05F9    ret
*}
end;

//004B05FC
{*procedure TCustomUtilityButton.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 004B05FC    push        ebp
 004B05FD    mov         ebp,esp
 004B05FF    add         esp,0FFFFFFF8
 004B0602    mov         byte ptr [ebp-6],cl
 004B0605    mov         byte ptr [ebp-5],dl
 004B0608    mov         dword ptr [ebp-4],eax
 004B060B    cmp         byte ptr [ebp-5],0
>004B060F    jne         004B0621
 004B0611    xor         edx,edx
 004B0613    mov         eax,dword ptr [ebp-4]
 004B0616    mov         eax,dword ptr [eax+1B8];TCustomUtilityButton.FScrollTimer:TTimer
 004B061C    call        TTimer.SetEnabled
 004B0621    mov         eax,dword ptr [ebp+0C]
 004B0624    push        eax
 004B0625    mov         eax,dword ptr [ebp+8]
 004B0628    push        eax
 004B0629    mov         cl,byte ptr [ebp-6]
 004B062C    mov         dl,byte ptr [ebp-5]
 004B062F    mov         eax,dword ptr [ebp-4]
 004B0632    call        TCustomButtonControl.sub_00485588
 004B0637    pop         ecx
 004B0638    pop         ecx
 004B0639    pop         ebp
 004B063A    ret         8
end;*}

//004B0698
{*procedure sub_004B0698(?:TCustomMenuExpandBtn; ?:?);
begin
 004B0698    push        ebp
 004B0699    mov         ebp,esp
 004B069B    add         esp,0FFFFFFF8
 004B069E    mov         dword ptr [ebp-8],edx
 004B06A1    mov         dword ptr [ebp-4],eax
 004B06A4    mov         eax,dword ptr [ebp-4]
 004B06A7    mov         eax,dword ptr [eax+1B0]
 004B06AD    cmp         eax,dword ptr [ebp-8]
>004B06B0    je          004B06C6
 004B06B2    mov         eax,dword ptr [ebp-8]
 004B06B5    mov         edx,dword ptr [ebp-4]
 004B06B8    mov         dword ptr [edx+1B0],eax
 004B06BE    mov         eax,dword ptr [ebp-4]
 004B06C1    mov         edx,dword ptr [eax]
 004B06C3    call        dword ptr [edx+7C]
 004B06C6    pop         ecx
 004B06C7    pop         ecx
 004B06C8    pop         ebp
 004B06C9    ret
end;*}

//004B06CC
{*procedure sub_004B06CC(?:TCustomMenuExpandBtn; ?:?);
begin
 004B06CC    push        ebp
 004B06CD    mov         ebp,esp
 004B06CF    add         esp,0FFFFFFF8
 004B06D2    mov         byte ptr [ebp-5],dl
 004B06D5    mov         dword ptr [ebp-4],eax
 004B06D8    mov         eax,dword ptr [ebp-4]
 004B06DB    mov         al,byte ptr [eax+1CD]
 004B06E1    cmp         al,byte ptr [ebp-5]
>004B06E4    je          004B06FA
 004B06E6    mov         al,byte ptr [ebp-5]
 004B06E9    mov         edx,dword ptr [ebp-4]
 004B06EC    mov         byte ptr [edx+1CD],al
 004B06F2    mov         eax,dword ptr [ebp-4]
 004B06F5    mov         edx,dword ptr [eax]
 004B06F7    call        dword ptr [edx+7C]
 004B06FA    pop         ecx
 004B06FB    pop         ecx
 004B06FC    pop         ebp
 004B06FD    ret
end;*}

//004B0700
{*procedure sub_004B0700(?:TCustomMenuExpandBtn; ?:?);
begin
 004B0700    push        ebp
 004B0701    mov         ebp,esp
 004B0703    add         esp,0FFFFFFF8
 004B0706    mov         byte ptr [ebp-5],dl
 004B0709    mov         dword ptr [ebp-4],eax
 004B070C    mov         eax,dword ptr [ebp-4]
 004B070F    mov         al,byte ptr [eax+1B4]
 004B0715    cmp         al,byte ptr [ebp-5]
>004B0718    je          004B072E
 004B071A    mov         al,byte ptr [ebp-5]
 004B071D    mov         edx,dword ptr [ebp-4]
 004B0720    mov         byte ptr [edx+1B4],al
 004B0726    mov         eax,dword ptr [ebp-4]
 004B0729    mov         edx,dword ptr [eax]
 004B072B    call        dword ptr [edx+7C]
 004B072E    pop         ecx
 004B072F    pop         ecx
 004B0730    pop         ebp
 004B0731    ret
end;*}

//004B0734
procedure sub_004B0734;
begin
{*
 004B0734    push        ebp
 004B0735    mov         ebp,esp
 004B0737    push        ecx
 004B0738    mov         dword ptr [ebp-4],eax
 004B073B    mov         eax,dword ptr [ebp-4]
 004B073E    call        004AFFD8
 004B0743    mov         eax,dword ptr [ebp-4]
 004B0746    call        004C6C1C
 004B074B    call        004C4A40
 004B0750    mov         edx,dword ptr [eax+50]
 004B0753    mov         eax,dword ptr [ebp-4]
 004B0756    mov         eax,dword ptr [eax+160];TCustomUtilityButton...............................................
 004B075C    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B075F    call        TPen.SetColor
 004B0764    mov         eax,dword ptr [ebp-4]
 004B0767    mov         edx,dword ptr [eax]
 004B0769    call        dword ptr [edx+0E8];TCustomUtilityButton.sub_004B04B8
 004B076F    pop         ecx
 004B0770    pop         ebp
 004B0771    ret
*}
end;

//004B0774
constructor sub_004B0774;
begin
{*
 004B0774    push        ebp
 004B0775    mov         ebp,esp
 004B0777    add         esp,0FFFFFFF4
 004B077A    test        dl,dl
>004B077C    je          004B0786
 004B077E    add         esp,0FFFFFFF0
 004B0781    call        @ClassCreate
 004B0786    mov         dword ptr [ebp-0C],ecx
 004B0789    mov         byte ptr [ebp-5],dl
 004B078C    mov         dword ptr [ebp-4],eax
 004B078F    mov         ecx,dword ptr [ebp-0C]
 004B0792    xor         edx,edx
 004B0794    mov         eax,dword ptr [ebp-4]
 004B0797    call        004B0334
 004B079C    mov         eax,dword ptr [ebp-4]
 004B079F    lea         edx,[eax+80];TCustomToolScrollBtn.Hint:String
 004B07A5    mov         eax,[0056E18C];^SMoreButtons:TResStringRec
 004B07AA    call        LoadResString
 004B07AF    mov         eax,dword ptr [ebp-4]
 004B07B2    cmp         byte ptr [ebp-5],0
>004B07B6    je          004B07C7
 004B07B8    call        @AfterConstruction
 004B07BD    pop         dword ptr fs:[0]
 004B07C4    add         esp,0C
 004B07C7    mov         eax,dword ptr [ebp-4]
 004B07CA    mov         esp,ebp
 004B07CC    pop         ebp
 004B07CD    ret
*}
end;

//004B07D0
procedure sub_004B07D0;
begin
{*
 004B07D0    push        ebp
 004B07D1    mov         ebp,esp
 004B07D3    add         esp,0FFFFFFEC
 004B07D6    push        ebx
 004B07D7    mov         dword ptr [ebp-4],eax
 004B07DA    mov         eax,dword ptr [ebp-4]
 004B07DD    mov         al,byte ptr [eax+1B4];TCustomToolScrollBtn.FDirection:TScrollDirection
 004B07E3    sub         al,2
>004B07E5    jb          004B0810
 004B07E7    sub         al,2
>004B07E9    jae         004B083C
 004B07EB    lea         ecx,[ebp-0C]
 004B07EE    mov         eax,dword ptr [ebp-4]
 004B07F1    mov         eax,dword ptr [eax+48];TCustomToolScrollBtn.Width:Integer
 004B07F4    sar         eax,1
>004B07F6    jns         004B07FB
 004B07F8    adc         eax,0
 004B07FB    mov         edx,dword ptr [ebp-4]
 004B07FE    sub         eax,dword ptr [edx+1B0]
 004B0804    mov         edx,3
 004B0809    call        Point
>004B080E    jmp         004B083C
 004B0810    mov         eax,dword ptr [ebp-4]
 004B0813    mov         eax,dword ptr [eax+48];TCustomToolScrollBtn.Width:Integer
 004B0816    sar         eax,1
>004B0818    jns         004B081D
 004B081A    adc         eax,0
 004B081D    mov         edx,dword ptr [ebp-4]
 004B0820    mov         edx,dword ptr [edx+1B0];TCustomToolScrollBtn.FArrowSize:Integer
 004B0826    sar         edx,1
>004B0828    jns         004B082D
 004B082A    adc         edx,0
 004B082D    sub         eax,edx
 004B082F    lea         ecx,[ebp-0C]
 004B0832    mov         edx,3
 004B0837    call        Point
 004B083C    mov         eax,dword ptr [ebp-4]
 004B083F    mov         edx,dword ptr [eax]
 004B0841    call        dword ptr [edx+50];TImage.GetEnabled
 004B0844    test        al,al
>004B0846    je          004B086B
 004B0848    mov         eax,dword ptr [ebp-4]
 004B084B    call        004C6C1C
 004B0850    call        004C4A40
 004B0855    mov         edx,dword ptr [eax+50]
 004B0858    mov         eax,dword ptr [ebp-4]
 004B085B    mov         eax,dword ptr [eax+160];TCustomToolScrollBtn...............................................
 004B0861    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B0864    call        TPen.SetColor
>004B0869    jmp         004B088C
 004B086B    mov         eax,dword ptr [ebp-4]
 004B086E    call        004C6C1C
 004B0873    call        004C4A40
 004B0878    mov         edx,dword ptr [eax+48]
 004B087B    mov         eax,dword ptr [ebp-4]
 004B087E    mov         eax,dword ptr [eax+160];TCustomToolScrollBtn...............................................
 004B0884    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B0887    call        TPen.SetColor
 004B088C    mov         eax,dword ptr [ebp-4]
 004B088F    mov         eax,dword ptr [eax+30];TCustomToolScrollBtn.FParent:TWinControl
 004B0892    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004B0898    call        @IsClass
 004B089D    test        al,al
>004B089F    je          004B08D4
 004B08A1    mov         eax,dword ptr [ebp-4]
 004B08A4    mov         eax,dword ptr [eax+30];TCustomToolScrollBtn.FParent:TWinControl
 004B08A7    call        004B1478
 004B08AC    test        eax,eax
>004B08AE    jle         004B08D4
 004B08B0    mov         eax,dword ptr [ebp-4]
 004B08B3    mov         eax,dword ptr [eax+1B0];TCustomToolScrollBtn.FArrowSize:Integer
 004B08B9    push        eax
 004B08BA    lea         ecx,[ebp-0C]
 004B08BD    mov         eax,dword ptr [ebp-4]
 004B08C0    mov         dl,byte ptr [eax+1B4];TCustomToolScrollBtn.FDirection:TScrollDirection
 004B08C6    mov         eax,dword ptr [ebp-4]
 004B08C9    mov         eax,dword ptr [eax+160];TCustomToolScrollBtn...............................................
 004B08CF    call        004ADAF4
 004B08D4    push        2
 004B08D6    lea         ecx,[ebp-14]
 004B08D9    mov         eax,dword ptr [ebp-4]
 004B08DC    mov         edx,dword ptr [eax+4C];TCustomToolScrollBtn.Height:Integer
 004B08DF    sub         edx,8
 004B08E2    mov         eax,dword ptr [ebp-4]
 004B08E5    mov         eax,dword ptr [eax+48];TCustomToolScrollBtn.Width:Integer
 004B08E8    sar         eax,1
>004B08EA    jns         004B08EF
 004B08EC    adc         eax,0
 004B08EF    mov         ebx,dword ptr [ebp-4]
 004B08F2    sub         eax,dword ptr [ebx+1B0]
 004B08F8    call        Point
 004B08FD    lea         ecx,[ebp-14]
 004B0900    mov         eax,dword ptr [ebp-4]
 004B0903    movzx       eax,byte ptr [eax+5B];TCustomToolScrollBtn.FAlign:TAlign
 004B0907    mov         dl,byte ptr [eax+56CB4C]
 004B090D    mov         eax,dword ptr [ebp-4]
 004B0910    mov         eax,dword ptr [eax+160];TCustomToolScrollBtn...............................................
 004B0916    call        004AD904
 004B091B    pop         ebx
 004B091C    mov         esp,ebp
 004B091E    pop         ebp
 004B091F    ret
*}
end;

//004B0920
procedure sub_004B0920;
begin
{*
 004B0920    push        ebp
 004B0921    mov         ebp,esp
 004B0923    push        ecx
 004B0924    mov         dword ptr [ebp-4],eax
 004B0927    mov         eax,dword ptr [ebp-4]
 004B092A    call        004AFAAC
 004B092F    mov         eax,dword ptr [ebp-4]
 004B0932    mov         edx,dword ptr [eax+48];TCustomDropDownButton.Width:Integer
 004B0935    add         edx,9
 004B0938    mov         eax,dword ptr [ebp-4]
 004B093B    call        TSplitter.SetWidth
 004B0940    pop         ecx
 004B0941    pop         ebp
 004B0942    ret
*}
end;

//004B0944
procedure TCustomDropDownButton.sub_004854CC;
begin
{*
 004B0944    push        ebp
 004B0945    mov         ebp,esp
 004B0947    push        ecx
 004B0948    mov         dword ptr [ebp-4],eax
 004B094B    mov         eax,dword ptr [ebp-4]
 004B094E    call        004B0BA4
 004B0953    test        al,al
>004B0955    je          004B0965
 004B0957    mov         eax,dword ptr [ebp-4]
 004B095A    mov         edx,dword ptr [eax]
 004B095C    call        dword ptr [edx+0EC];TCustomDropDownButton.DropDownClick
 004B0962    pop         ecx
 004B0963    pop         ebp
 004B0964    ret
 004B0965    mov         eax,dword ptr [ebp-4]
 004B0968    call        TCustomButtonControl.sub_004854CC
 004B096D    pop         ecx
 004B096E    pop         ebp
 004B096F    ret
*}
end;

//004B0970
{*procedure TCustomDropDownButton.CMMouseLeave(?:?);
begin
 004B0970    push        ebp
 004B0971    mov         ebp,esp
 004B0973    add         esp,0FFFFFFF8
 004B0976    mov         dword ptr [ebp-8],edx
 004B0979    mov         dword ptr [ebp-4],eax
 004B097C    mov         edx,dword ptr [ebp-8]
 004B097F    mov         eax,dword ptr [ebp-4]
 004B0982    call        TCustomButtonControl.CMMouseLeave
 004B0987    mov         eax,dword ptr [ebp-4]
 004B098A    mov         byte ptr [eax+1B0],0;TCustomDropDownButton.....FDroppedDown:Boolean
 004B0991    pop         ecx
 004B0992    pop         ecx
 004B0993    pop         ebp
 004B0994    ret
end;*}

//004B0998
{*procedure sub_004B0998(?:?; ?:?);
begin
 004B0998    push        ebp
 004B0999    mov         ebp,esp
 004B099B    add         esp,0FFFFFFE8
 004B099E    push        esi
 004B099F    push        edi
 004B09A0    mov         esi,edx
 004B09A2    lea         edi,[ebp-15]
 004B09A5    movs        dword ptr [edi],dword ptr [esi]
 004B09A6    movs        dword ptr [edi],dword ptr [esi]
 004B09A7    movs        dword ptr [edi],dword ptr [esi]
 004B09A8    movs        dword ptr [edi],dword ptr [esi]
 004B09A9    mov         byte ptr [ebp-5],cl
 004B09AC    mov         dword ptr [ebp-4],eax
 004B09AF    sub         dword ptr [ebp-0D],9
 004B09B3    cmp         byte ptr [ebp-5],0
>004B09B7    je          004B09C5
 004B09B9    mov         eax,dword ptr [ebp-4]
 004B09BC    call        004B0BA4
 004B09C1    test        al,al
>004B09C3    je          004B09C9
 004B09C5    xor         ecx,ecx
>004B09C7    jmp         004B09CB
 004B09C9    mov         cl,1
 004B09CB    lea         edx,[ebp-15]
 004B09CE    mov         eax,dword ptr [ebp-4]
 004B09D1    call        004AFCCC
 004B09D6    mov         eax,dword ptr [ebp-0D]
 004B09D9    mov         dword ptr [ebp-15],eax
 004B09DC    add         dword ptr [ebp-0D],9
 004B09E0    cmp         byte ptr [ebp-5],0
>004B09E4    jne         004B09F6
 004B09E6    mov         eax,dword ptr [ebp-4]
 004B09E9    cmp         byte ptr [eax+1B0],0;TCustomDropDownButton......FDroppedDown:Boolean
>004B09F0    jne         004B09F6
 004B09F2    xor         ecx,ecx
>004B09F4    jmp         004B09F8
 004B09F6    mov         cl,1
 004B09F8    lea         edx,[ebp-15]
 004B09FB    mov         eax,dword ptr [ebp-4]
 004B09FE    call        004AFCCC
 004B0A03    pop         edi
 004B0A04    pop         esi
 004B0A05    mov         esp,ebp
 004B0A07    pop         ebp
 004B0A08    ret
end;*}

//004B0A0C
procedure TCustomDropDownButton.DropDownClick;
begin
{*
 004B0A0C    push        ebp
 004B0A0D    mov         ebp,esp
 004B0A0F    add         esp,0FFFFFFE8
 004B0A12    mov         dword ptr [ebp-4],eax
 004B0A15    mov         eax,dword ptr [ebp-4]
 004B0A18    mov         edx,dword ptr [eax]
 004B0A1A    call        dword ptr [edx+0E8]
 004B0A20    xor         ecx,ecx
 004B0A22    mov         dl,1
 004B0A24    call        dword ptr [eax+2C]
 004B0A27    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004B0A2D    call        @AsClass
 004B0A32    mov         dword ptr [ebp-8],eax
 004B0A35    xor         eax,eax
 004B0A37    push        ebp
 004B0A38    push        4B0B00
 004B0A3D    push        dword ptr fs:[eax]
 004B0A40    mov         dword ptr fs:[eax],esp
 004B0A43    mov         eax,dword ptr [ebp-4]
 004B0A46    mov         edx,dword ptr [eax+16C]
 004B0A4C    mov         eax,dword ptr [ebp-8]
 004B0A4F    mov         ecx,dword ptr [eax]
 004B0A51    call        dword ptr [ecx+124]
 004B0A57    mov         eax,dword ptr [ebp-4]
 004B0A5A    mov         edx,dword ptr [eax+44]
 004B0A5D    mov         eax,dword ptr [ebp-4]
 004B0A60    add         edx,dword ptr [eax+4C]
 004B0A63    lea         ecx,[ebp-18]
 004B0A66    mov         eax,dword ptr [ebp-4]
 004B0A69    mov         eax,dword ptr [eax+40]
 004B0A6C    call        Point
 004B0A71    lea         edx,[ebp-18]
 004B0A74    lea         ecx,[ebp-10]
 004B0A77    mov         eax,dword ptr [ebp-4]
 004B0A7A    call        TControl.ClientToScreen
 004B0A7F    mov         eax,dword ptr [ebp-8]
 004B0A82    mov         edx,dword ptr [ebp-4]
 004B0A85    mov         dword ptr [eax+2AC],edx
 004B0A8B    mov         eax,dword ptr [ebp-4]
 004B0A8E    mov         byte ptr [eax+1B0],1
 004B0A95    xor         eax,eax
 004B0A97    push        ebp
 004B0A98    push        4B0AE3
 004B0A9D    push        dword ptr fs:[eax]
 004B0AA0    mov         dword ptr fs:[eax],esp
 004B0AA3    xor         edx,edx
 004B0AA5    mov         eax,dword ptr [ebp-4]
 004B0AA8    call        TCustomButtonControl.SetFlat
 004B0AAD    mov         eax,dword ptr [ebp-4]
 004B0AB0    mov         edx,dword ptr [ebp-10]
 004B0AB3    sub         edx,dword ptr [eax+40]
 004B0AB6    mov         ecx,dword ptr [ebp-0C]
 004B0AB9    mov         eax,dword ptr [ebp-8]
 004B0ABC    call        TCustomActionPopupMenu.Popup
 004B0AC1    xor         eax,eax
 004B0AC3    pop         edx
 004B0AC4    pop         ecx
 004B0AC5    pop         ecx
 004B0AC6    mov         dword ptr fs:[eax],edx
 004B0AC9    push        4B0AEA
 004B0ACE    mov         eax,dword ptr [ebp-4]
 004B0AD1    mov         byte ptr [eax+1B0],0
 004B0AD8    mov         dl,1
 004B0ADA    mov         eax,dword ptr [ebp-4]
 004B0ADD    call        TCustomButtonControl.SetFlat
 004B0AE2    ret
>004B0AE3    jmp         @HandleFinally
>004B0AE8    jmp         004B0ACE
 004B0AEA    xor         eax,eax
 004B0AEC    pop         edx
 004B0AED    pop         ecx
 004B0AEE    pop         ecx
 004B0AEF    mov         dword ptr fs:[eax],edx
 004B0AF2    push        4B0B07
 004B0AF7    mov         eax,dword ptr [ebp-8]
 004B0AFA    call        TObject.Free
 004B0AFF    ret
>004B0B00    jmp         @HandleFinally
>004B0B05    jmp         004B0AF7
 004B0B07    mov         esp,ebp
 004B0B09    pop         ebp
 004B0B0A    ret
*}
end;

//004B0B0C
{*function sub_004B0B0C:?;
begin
 004B0B0C    push        ebp
 004B0B0D    mov         ebp,esp
 004B0B0F    add         esp,0FFFFFFF4
 004B0B12    mov         dword ptr [ebp-4],eax
 004B0B15    mov         eax,dword ptr [ebp-4]
 004B0B18    call        004C6C1C
 004B0B1D    mov         edx,dword ptr [eax]
 004B0B1F    call        dword ptr [edx+148]
 004B0B25    mov         edx,dword ptr ds:[4B1548];TActionBarStyleEx
 004B0B2B    call        @AsClass
 004B0B30    mov         dword ptr [ebp-0C],eax
 004B0B33    mov         eax,dword ptr [ebp-4]
 004B0B36    call        004C6C1C
 004B0B3B    mov         edx,eax
 004B0B3D    mov         eax,dword ptr [ebp-0C]
 004B0B40    mov         ecx,dword ptr [eax]
 004B0B42    call        dword ptr [ecx+0C];@AbstractError
 004B0B45    mov         dword ptr [ebp-8],eax
 004B0B48    mov         eax,dword ptr [ebp-8]
 004B0B4B    mov         esp,ebp
 004B0B4D    pop         ebp
 004B0B4E    ret
end;*}

//004B0B50
{*procedure TCustomDropDownButton.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 004B0B50    push        ebp
 004B0B51    mov         ebp,esp
 004B0B53    add         esp,0FFFFFFF8
 004B0B56    mov         byte ptr [ebp-6],cl
 004B0B59    mov         byte ptr [ebp-5],dl
 004B0B5C    mov         dword ptr [ebp-4],eax
 004B0B5F    mov         eax,dword ptr [ebp+0C]
 004B0B62    push        eax
 004B0B63    mov         eax,dword ptr [ebp+8]
 004B0B66    push        eax
 004B0B67    mov         cl,byte ptr [ebp-6]
 004B0B6A    mov         dl,byte ptr [ebp-5]
 004B0B6D    mov         eax,dword ptr [ebp-4]
 004B0B70    call        TCustomButtonControl.sub_00485588
 004B0B75    mov         eax,dword ptr [ebp-4]
 004B0B78    call        004B0BA4
 004B0B7D    test        al,al
>004B0B7F    je          004B0B8B
 004B0B81    mov         eax,dword ptr [ebp-4]
 004B0B84    mov         byte ptr [eax+1AE],0;TCustomDropDownButton.FState:TButtonState
 004B0B8B    cmp         byte ptr [ebp-5],0
>004B0B8F    jne         004B0B9B
 004B0B91    mov         eax,dword ptr [ebp-4]
 004B0B94    mov         byte ptr [eax+1B0],1;TCustomDropDownButton.......FDroppedDown:Boolean
 004B0B9B    pop         ecx
 004B0B9C    pop         ecx
 004B0B9D    pop         ebp
 004B0B9E    ret         8
end;*}

//004B0BA4
{*function sub_004B0BA4(?:TCustomDropDownButton):?;
begin
 004B0BA4    push        ebp
 004B0BA5    mov         ebp,esp
 004B0BA7    add         esp,0FFFFFFD8
 004B0BAA    mov         dword ptr [ebp-4],eax
 004B0BAD    lea         edx,[ebp-18]
 004B0BB0    mov         eax,[0056E5B4];^Mouse:TMouse
 004B0BB5    mov         eax,dword ptr [eax]
 004B0BB7    call        00491DC4
 004B0BBC    lea         edx,[ebp-18]
 004B0BBF    lea         ecx,[ebp-10]
 004B0BC2    mov         eax,dword ptr [ebp-4]
 004B0BC5    call        TControl.ScreenToClient
 004B0BCA    push        dword ptr [ebp-0C]
 004B0BCD    push        dword ptr [ebp-10]
 004B0BD0    mov         eax,dword ptr [ebp-4]
 004B0BD3    call        TControl.GetClientHeight
 004B0BD8    push        eax
 004B0BD9    lea         eax,[ebp-28]
 004B0BDC    push        eax
 004B0BDD    mov         eax,dword ptr [ebp-4]
 004B0BE0    call        TControl.GetClientWidth
 004B0BE5    push        eax
 004B0BE6    mov         eax,dword ptr [ebp-4]
 004B0BE9    call        TControl.GetClientWidth
 004B0BEE    sub         eax,9
 004B0BF1    xor         edx,edx
 004B0BF3    pop         ecx
 004B0BF4    call        0041E714
 004B0BF9    lea         eax,[ebp-28]
 004B0BFC    push        eax
 004B0BFD    call        user32.PtInRect
 004B0C02    cmp         eax,1
 004B0C05    sbb         eax,eax
 004B0C07    inc         eax
 004B0C08    mov         byte ptr [ebp-5],al
 004B0C0B    mov         al,byte ptr [ebp-5]
 004B0C0E    mov         esp,ebp
 004B0C10    pop         ebp
 004B0C11    ret
end;*}

//004B0C14
procedure sub_004B0C14;
begin
{*
 004B0C14    push        ebp
 004B0C15    mov         ebp,esp
 004B0C17    add         esp,0FFFFFFF4
 004B0C1A    mov         dword ptr [ebp-4],eax
 004B0C1D    mov         eax,dword ptr [ebp-4]
 004B0C20    call        004AFFD8
 004B0C25    mov         eax,dword ptr [ebp-4]
 004B0C28    mov         eax,dword ptr [eax+160];TCustomDropDownButton..............................................
 004B0C2E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B0C31    xor         edx,edx
 004B0C33    call        TPen.SetColor
 004B0C38    push        2
 004B0C3A    mov         eax,dword ptr [ebp-4]
 004B0C3D    call        TControl.GetClientHeight
 004B0C42    sar         eax,1
>004B0C44    jns         004B0C49
 004B0C46    adc         eax,0
 004B0C49    dec         eax
 004B0C4A    push        eax
 004B0C4B    mov         eax,dword ptr [ebp-4]
 004B0C4E    call        TControl.GetClientWidth
 004B0C53    sub         eax,4
 004B0C56    sub         eax,3
 004B0C59    lea         ecx,[ebp-0C]
 004B0C5C    pop         edx
 004B0C5D    call        Point
 004B0C62    lea         ecx,[ebp-0C]
 004B0C65    mov         dl,3
 004B0C67    mov         eax,dword ptr [ebp-4]
 004B0C6A    mov         eax,dword ptr [eax+160];TCustomDropDownButton..............................................
 004B0C70    call        004AD904
 004B0C75    mov         esp,ebp
 004B0C77    pop         ebp
 004B0C78    ret
*}
end;

//004B0C7C
procedure TCustomActionCombo.sub_004841BC;
begin
{*
 004B0C7C    push        ebp
 004B0C7D    mov         ebp,esp
 004B0C7F    push        ecx
 004B0C80    push        esi
 004B0C81    mov         dword ptr [ebp-4],eax
 004B0C84    mov         eax,dword ptr [ebp-4]
 004B0C87    mov         eax,dword ptr [eax+2A0];TCustomActionCombo......FComboControl:TCustomComboControl
 004B0C8D    mov         si,0FFED
 004B0C91    call        @CallDynaInst;TCustomActionControl.sub_004841BC
 004B0C96    pop         esi
 004B0C97    pop         ecx
 004B0C98    pop         ebp
 004B0C99    ret
*}
end;

//004B0C9C
{*procedure TCustomActionCombo.sub_00484E9C(?:?);
begin
 004B0C9C    push        ebp
 004B0C9D    mov         ebp,esp
 004B0C9F    add         esp,0FFFFFFF4
 004B0CA2    mov         dword ptr [ebp-8],edx
 004B0CA5    mov         dword ptr [ebp-4],eax
 004B0CA8    mov         edx,dword ptr [ebp-8]
 004B0CAB    mov         eax,dword ptr [ebp-4]
 004B0CAE    call        TControl.sub_00484E9C
 004B0CB3    mov         byte ptr [ebp-9],al
 004B0CB6    mov         eax,dword ptr [ebp-8]
 004B0CB9    mov         eax,dword ptr [eax]
 004B0CBB    sub         eax,201
>004B0CC0    jne         004B0CC6
 004B0CC2    mov         byte ptr [ebp-9],1
 004B0CC6    mov         al,byte ptr [ebp-9]
 004B0CC9    mov         esp,ebp
 004B0CCB    pop         ebp
 004B0CCC    ret
end;*}

//004B0CD0
{*procedure TCustomActionCombo.sub_00484338(?:?; ?:?; ?:?);
begin
 004B0CD0    push        ebp
 004B0CD1    mov         ebp,esp
 004B0CD3    add         esp,0FFFFFFF4
 004B0CD6    push        ebx
 004B0CD7    mov         dword ptr [ebp-0C],ecx
 004B0CDA    mov         dword ptr [ebp-8],edx
 004B0CDD    mov         dword ptr [ebp-4],eax
 004B0CE0    mov         eax,dword ptr [ebp+8]
 004B0CE3    push        eax
 004B0CE4    mov         ecx,dword ptr [ebp-0C]
 004B0CE7    mov         edx,dword ptr [ebp-8]
 004B0CEA    mov         eax,dword ptr [ebp-4]
 004B0CED    mov         eax,dword ptr [eax+2A0];TCustomActionCombo.......FComboControl:TCustomComboControl
 004B0CF3    mov         ebx,dword ptr [eax]
 004B0CF5    call        dword ptr [ebx+94];TCustomComboControl.sub_004C6ED8
 004B0CFB    pop         ebx
 004B0CFC    mov         esp,ebp
 004B0CFE    pop         ebp
 004B0CFF    ret         4
end;*}

//004B0D04
{*procedure TCustomActionCombo.sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004B0D04    push        ebp
 004B0D05    mov         ebp,esp
 004B0D07    add         esp,0FFFFFFF4
 004B0D0A    mov         dword ptr [ebp-0C],ecx
 004B0D0D    mov         dword ptr [ebp-8],edx
 004B0D10    mov         dword ptr [ebp-4],eax
 004B0D13    mov         eax,dword ptr [ebp+10]
 004B0D16    push        eax
 004B0D17    mov         al,byte ptr [ebp+0C]
 004B0D1A    push        eax
 004B0D1B    mov         eax,dword ptr [ebp+8]
 004B0D1E    push        eax
 004B0D1F    mov         ecx,dword ptr [ebp-0C]
 004B0D22    mov         edx,dword ptr [ebp-8]
 004B0D25    mov         eax,dword ptr [ebp-4]
 004B0D28    call        TControl.sub_004842E0
 004B0D2D    mov         eax,dword ptr [ebp-4]
 004B0D30    mov         eax,dword ptr [eax+2A0];TCustomActionCombo........FComboControl:TCustomComboControl
 004B0D36    cmp         dword ptr [eax+16C],0;TCustomComboControl.FActionClient:TActionClientItem
>004B0D3D    je          004B0D51
 004B0D3F    mov         eax,dword ptr [ebp-8]
 004B0D42    mov         edx,dword ptr ds:[4BB520];TActionDragObject
 004B0D48    call        @IsClass
 004B0D4D    test        al,al
>004B0D4F    jne         004B0D79
 004B0D51    mov         eax,dword ptr [ebp-8]
 004B0D54    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004B0D5A    call        @IsClass
 004B0D5F    test        al,al
>004B0D61    jne         004B0D79
 004B0D63    mov         eax,dword ptr [ebp-8]
 004B0D66    mov         edx,dword ptr ds:[4BB5A4];TCategoryDragObject
 004B0D6C    call        @IsClass
 004B0D71    test        al,al
>004B0D73    jne         004B0D79
 004B0D75    xor         eax,eax
>004B0D77    jmp         004B0D7B
 004B0D79    mov         al,1
 004B0D7B    mov         edx,dword ptr [ebp+8]
 004B0D7E    mov         byte ptr [edx],al
 004B0D80    mov         esp,ebp
 004B0D82    pop         ebp
 004B0D83    ret         0C
end;*}

//004B0D88
constructor sub_004B0D88;
begin
{*
 004B0D88    push        ebp
 004B0D89    mov         ebp,esp
 004B0D8B    add         esp,0FFFFFFF4
 004B0D8E    test        dl,dl
>004B0D90    je          004B0D9A
 004B0D92    add         esp,0FFFFFFF0
 004B0D95    call        @ClassCreate
 004B0D9A    mov         dword ptr [ebp-0C],ecx
 004B0D9D    mov         byte ptr [ebp-5],dl
 004B0DA0    mov         dword ptr [ebp-4],eax
 004B0DA3    mov         ecx,dword ptr [ebp-0C]
 004B0DA6    xor         edx,edx
 004B0DA8    mov         eax,dword ptr [ebp-4]
 004B0DAB    call        004C4B70
 004B0DB0    mov         ecx,dword ptr [ebp-4]
 004B0DB3    mov         dl,1
 004B0DB5    mov         eax,[004AF504];TCustomActionCombo
 004B0DBA    call        TCustomActionCombo.Create;TCustomActionCombo.Create
 004B0DBF    mov         edx,dword ptr [ebp-4]
 004B0DC2    mov         dword ptr [edx+1A8],eax;TCustomComboControl............................FComboBox:TCustom...
 004B0DC8    mov         eax,dword ptr [ebp-4]
 004B0DCB    mov         eax,dword ptr [eax+1A8];TCustomComboControl.............................FComboBox:TCusto...
 004B0DD1    xor         edx,edx
 004B0DD3    call        TPanel.SetTabStop
 004B0DD8    mov         eax,dword ptr [ebp-4]
 004B0DDB    mov         eax,dword ptr [eax+1A8];TCustomComboControl..............................FComboBox:TCust...
 004B0DE1    mov         edx,64
 004B0DE6    call        TSplitter.SetWidth
 004B0DEB    mov         eax,dword ptr [ebp-4]
 004B0DEE    mov         eax,dword ptr [eax+1A8];TCustomComboControl...............................FComboBox:TCus...
 004B0DF4    mov         edx,dword ptr [ebp-4]
 004B0DF7    mov         dword ptr [eax+124],edx;TCustomActionCombo.?f124:TMessageForm
 004B0DFD    mov         dword ptr [eax+120],4B0F54;TCustomActionCombo.FOnClick:TNotifyEvent sub_004B0F54
 004B0E07    mov         eax,dword ptr [ebp-4]
 004B0E0A    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................FComboBox:TCu...
 004B0E10    mov         edx,dword ptr [ebp-4]
 004B0E13    mov         dword ptr [eax+2A0],edx;TCustomActionCombo.........FComboControl:TCustomComboControl
 004B0E19    mov         eax,dword ptr [ebp-4]
 004B0E1C    mov         eax,dword ptr [eax+1A8];TCustomComboControl.................................FComboBox:TC...
 004B0E22    test        byte ptr [eax+1C],10;TCustomActionCombo.FComponentState:TComponentState
>004B0E26    je          004B0E38
 004B0E28    mov         eax,dword ptr [ebp-4]
 004B0E2B    mov         eax,dword ptr [eax+1A8];TCustomComboControl..................................FComboBox:T...
 004B0E31    mov         dl,1
 004B0E33    mov         ecx,dword ptr [eax]
 004B0E35    call        dword ptr [ecx+60];TImage.SetDragMode
 004B0E38    mov         eax,dword ptr [ebp-4]
 004B0E3B    cmp         byte ptr [ebp-5],0
>004B0E3F    je          004B0E50
 004B0E41    call        @AfterConstruction
 004B0E46    pop         dword ptr fs:[0]
 004B0E4D    add         esp,0C
 004B0E50    mov         eax,dword ptr [ebp-4]
 004B0E53    mov         esp,ebp
 004B0E55    pop         ebp
 004B0E56    ret
*}
end;

//004B0E58
destructor TCustomComboControl.Destroy;
begin
{*
 004B0E58    push        ebp
 004B0E59    mov         ebp,esp
 004B0E5B    add         esp,0FFFFFFF8
 004B0E5E    call        @BeforeDestruction
 004B0E63    mov         byte ptr [ebp-5],dl
 004B0E66    mov         dword ptr [ebp-4],eax
 004B0E69    mov         eax,dword ptr [ebp-4]
 004B0E6C    add         eax,1A8
 004B0E71    call        FreeAndNil
 004B0E76    mov         dl,byte ptr [ebp-5]
 004B0E79    and         dl,0FC
 004B0E7C    mov         eax,dword ptr [ebp-4]
 004B0E7F    call        TCustomActionControl.Destroy
 004B0E84    cmp         byte ptr [ebp-5],0
>004B0E88    jle         004B0E92
 004B0E8A    mov         eax,dword ptr [ebp-4]
 004B0E8D    call        @ClassDestroy
 004B0E92    pop         ecx
 004B0E93    pop         ecx
 004B0E94    pop         ebp
 004B0E95    ret
*}
end;

//004B0E98
procedure sub_004B0E98;
begin
{*
 004B0E98    push        ebp
 004B0E99    mov         ebp,esp
 004B0E9B    push        ecx
 004B0E9C    mov         dword ptr [ebp-4],eax
 004B0E9F    mov         eax,dword ptr [ebp-4]
 004B0EA2    call        004C6D68
 004B0EA7    mov         eax,dword ptr [ebp-4]
 004B0EAA    mov         eax,dword ptr [eax+1A8];TCustomComboControl...................................FComboBox:...
 004B0EB0    call        TWinControl.HandleAllocated
 004B0EB5    test        al,al
>004B0EB7    je          004B0EF8
 004B0EB9    mov         eax,dword ptr [ebp-4]
 004B0EBC    mov         edx,dword ptr [eax]
 004B0EBE    call        dword ptr [edx+98];TCustomComboControl.sub_004C6AD0
 004B0EC4    test        al,al
>004B0EC6    je          004B0EE4
 004B0EC8    mov         eax,dword ptr [ebp-4]
 004B0ECB    mov         eax,dword ptr [eax+1A8];TCustomComboControl....................................FComboBox...
 004B0ED1    mov         edx,dword ptr [eax+48];TCustomActionCombo.Width:Integer
 004B0ED4    mov         eax,dword ptr [ebp-4]
 004B0ED7    add         edx,dword ptr [eax+48];TCustomComboControl.Width:Integer
 004B0EDA    mov         eax,dword ptr [ebp-4]
 004B0EDD    call        TSplitter.SetWidth
>004B0EE2    jmp         004B0EF8
 004B0EE4    mov         eax,dword ptr [ebp-4]
 004B0EE7    mov         eax,dword ptr [eax+1A8];TCustomComboControl.....................................FComboBo...
 004B0EED    mov         edx,dword ptr [eax+48];TCustomActionCombo.Width:Integer
 004B0EF0    mov         eax,dword ptr [ebp-4]
 004B0EF3    call        TSplitter.SetWidth
 004B0EF8    pop         ecx
 004B0EF9    pop         ebp
 004B0EFA    ret
*}
end;

//004B0EFC
procedure TCustomComboControl.sub_004854CC;
begin
{*
 004B0EFC    push        ebp
 004B0EFD    mov         ebp,esp
 004B0EFF    push        ecx
 004B0F00    mov         dword ptr [ebp-4],eax
 004B0F03    mov         eax,dword ptr [ebp-4]
 004B0F06    test        byte ptr [eax+1C],10;TCustomComboControl.FComponentState:TComponentState
>004B0F0A    je          004B0F19
 004B0F0C    mov         dl,1
 004B0F0E    mov         eax,dword ptr [ebp-4]
 004B0F11    mov         ecx,dword ptr [eax]
 004B0F13    call        dword ptr [ecx+0D8];TCustomComboControl.sub_004C62B8
 004B0F19    mov         eax,dword ptr [ebp-4]
 004B0F1C    call        TCustomActionControl.sub_004854CC
 004B0F21    pop         ecx
 004B0F22    pop         ebp
 004B0F23    ret
*}
end;

//004B0F24
{*procedure TCustomComboControl.CMVisibleChanged(?:?);
begin
 004B0F24    push        ebp
 004B0F25    mov         ebp,esp
 004B0F27    add         esp,0FFFFFFF8
 004B0F2A    mov         dword ptr [ebp-8],edx
 004B0F2D    mov         dword ptr [ebp-4],eax
 004B0F30    mov         edx,dword ptr [ebp-8]
 004B0F33    mov         eax,dword ptr [ebp-4]
 004B0F36    call        TControl.CMVisibleChanged
 004B0F3B    mov         eax,dword ptr [ebp-4]
 004B0F3E    mov         dl,byte ptr [eax+57];TCustomComboControl.FVisible:Boolean
 004B0F41    mov         eax,dword ptr [ebp-4]
 004B0F44    mov         eax,dword ptr [eax+1A8];TCustomComboControl......................................FComboB...
 004B0F4A    call        TImage.SetVisible
 004B0F4F    pop         ecx
 004B0F50    pop         ecx
 004B0F51    pop         ebp
 004B0F52    ret
end;*}

//004B0F54
{*procedure sub_004B0F54(?:?; ?:?);
begin
 004B0F54    push        ebp
 004B0F55    mov         ebp,esp
 004B0F57    add         esp,0FFFFFFF8
 004B0F5A    push        esi
 004B0F5B    mov         dword ptr [ebp-8],edx
 004B0F5E    mov         dword ptr [ebp-4],eax
 004B0F61    mov         eax,dword ptr [ebp-4]
 004B0F64    call        004C6C1C
 004B0F69    test        eax,eax
>004B0F6B    je          004B0F8D
 004B0F6D    mov         eax,dword ptr [ebp-4]
 004B0F70    call        004C6C1C
 004B0F75    mov         edx,dword ptr [eax]
 004B0F77    call        dword ptr [edx+104]
 004B0F7D    test        al,al
>004B0F7F    jne         004B0F8D
 004B0F81    mov         eax,dword ptr [ebp-4]
 004B0F84    mov         si,0FFEB
 004B0F88    call        @CallDynaInst
 004B0F8D    pop         esi
 004B0F8E    pop         ecx
 004B0F8F    pop         ecx
 004B0F90    pop         ebp
 004B0F91    ret
end;*}

//004B0F94
{*procedure sub_004B0F94(?:?; ?:?; ?:?);
begin
 004B0F94    push        ebp
 004B0F95    mov         ebp,esp
 004B0F97    add         esp,0FFFFFFF4
 004B0F9A    mov         dword ptr [ebp-0C],ecx
 004B0F9D    mov         dword ptr [ebp-8],edx
 004B0FA0    mov         dword ptr [ebp-4],eax
 004B0FA3    mov         eax,dword ptr [ebp-4]
 004B0FA6    cmp         byte ptr [eax+5D],1;TCustomActionCombo.FDragMode:TDragMode
>004B0FAA    jne         004B0FBB
 004B0FAC    mov         eax,dword ptr [ebp-8]
 004B0FAF    mov         eax,dword ptr [eax]
 004B0FB1    add         eax,0FFFFFF00
 004B0FB6    sub         eax,9
>004B0FB9    jb          004B0FCD
 004B0FBB    mov         eax,dword ptr [ebp+8]
 004B0FBE    push        eax
 004B0FBF    mov         edx,dword ptr [ebp-8]
 004B0FC2    mov         ecx,dword ptr [ebp-0C]
 004B0FC5    mov         eax,dword ptr [ebp-4]
 004B0FC8    call        00475E10
 004B0FCD    mov         esp,ebp
 004B0FCF    pop         ebp
 004B0FD0    ret         4
end;*}

//004B0FD4
procedure sub_004B0FD4;
begin
{*
 004B0FD4    push        ebp
 004B0FD5    mov         ebp,esp
 004B0FD7    push        ecx
 004B0FD8    mov         dword ptr [ebp-4],eax
 004B0FDB    mov         eax,dword ptr [ebp-4]
 004B0FDE    call        004C5BA8
 004B0FE3    mov         eax,dword ptr [ebp-4]
 004B0FE6    cmp         dword ptr [eax+1A8],0;TCustomComboControl.......................................FComboBo...
>004B0FED    je          004B100F
 004B0FEF    mov         eax,dword ptr [ebp-4]
 004B0FF2    mov         eax,dword ptr [eax+1A8];TCustomComboControl........................................FComb...
 004B0FF8    call        TWinControl.HandleAllocated
 004B0FFD    test        al,al
>004B0FFF    je          004B100F
 004B1001    mov         eax,dword ptr [ebp-4]
 004B1004    mov         eax,dword ptr [eax+1A8];TCustomComboControl.........................................FCom...
 004B100A    mov         edx,dword ptr [eax]
 004B100C    call        dword ptr [edx+7C];TCustomActionCombo.sub_0048BE68
 004B100F    pop         ecx
 004B1010    pop         ebp
 004B1011    ret
*}
end;

//004B1014
{*procedure sub_004B1014(?:?);
begin
 004B1014    push        ebp
 004B1015    mov         ebp,esp
 004B1017    add         esp,0FFFFFFF8
 004B101A    push        ebx
 004B101B    mov         dword ptr [ebp-8],edx
 004B101E    mov         dword ptr [ebp-4],eax
 004B1021    mov         edx,dword ptr [ebp-8]
 004B1024    mov         eax,dword ptr [ebp-4]
 004B1027    call        004C617C
 004B102C    cmp         dword ptr [ebp-8],0
>004B1030    je          004B1066
 004B1032    mov         eax,dword ptr [ebp-4]
 004B1035    mov         eax,dword ptr [eax+1A8];TCustomComboControl..........................................FCo...
 004B103B    mov         edx,dword ptr [eax]
 004B103D    call        dword ptr [edx+3C];TSpeedButton.GetAction
 004B1040    mov         ebx,eax
 004B1042    mov         eax,dword ptr [ebp-8]
 004B1045    call        TActionClientItem.GetAction
 004B104A    cmp         ebx,eax
>004B104C    je          004B1066
 004B104E    mov         eax,dword ptr [ebp-8]
 004B1051    call        TActionClientItem.GetAction
 004B1056    mov         edx,eax
 004B1058    mov         eax,dword ptr [ebp-4]
 004B105B    mov         eax,dword ptr [eax+1A8];TCustomComboControl...........................................FC...
 004B1061    call        TSpeedButton.SetAction
 004B1066    pop         ebx
 004B1067    pop         ecx
 004B1068    pop         ecx
 004B1069    pop         ebp
 004B106A    ret
end;*}

//004B106C
{*procedure sub_004B106C(?:?; ?:?; ?:?; ?:?);
begin
 004B106C    push        ebp
 004B106D    mov         ebp,esp
 004B106F    add         esp,0FFFFFFF0
 004B1072    push        ebx
 004B1073    mov         dword ptr [ebp-0C],ecx
 004B1076    mov         dword ptr [ebp-8],edx
 004B1079    mov         dword ptr [ebp-4],eax
 004B107C    mov         eax,dword ptr [ebp+0C]
 004B107F    push        eax
 004B1080    mov         eax,dword ptr [ebp+8]
 004B1083    push        eax
 004B1084    mov         ecx,dword ptr [ebp-0C]
 004B1087    mov         edx,dword ptr [ebp-8]
 004B108A    mov         eax,dword ptr [ebp-4]
 004B108D    call        00482930
 004B1092    mov         eax,dword ptr [ebp-4]
 004B1095    cmp         dword ptr [eax+1A8],0;TCustomComboControl............................................FCo...
>004B109C    je          004B1146
 004B10A2    mov         eax,dword ptr [ebp-4]
 004B10A5    mov         eax,dword ptr [eax+4C];TCustomComboControl.Height:Integer
 004B10A8    sar         eax,1
>004B10AA    jns         004B10AF
 004B10AC    adc         eax,0
 004B10AF    mov         edx,dword ptr [ebp-4]
 004B10B2    add         eax,dword ptr [edx+44];TCustomComboControl.Top:Integer
 004B10B5    mov         edx,dword ptr [ebp-4]
 004B10B8    mov         edx,dword ptr [edx+1A8];TCustomComboControl................................................
 004B10BE    mov         edx,dword ptr [edx+4C];TCustomActionCombo.Height:Integer
 004B10C1    sar         edx,1
>004B10C3    jns         004B10C8
 004B10C5    adc         edx,0
 004B10C8    sub         eax,edx
 004B10CA    mov         dword ptr [ebp-10],eax
 004B10CD    mov         eax,dword ptr [ebp-4]
 004B10D0    mov         edx,dword ptr [eax]
 004B10D2    call        dword ptr [edx+98];TCustomComboControl.sub_004C6AD0
 004B10D8    test        al,al
>004B10DA    je          004B111B
 004B10DC    mov         eax,dword ptr [ebp-4]
 004B10DF    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004B10E5    mov         eax,dword ptr [eax+48];TCustomActionCombo.Width:Integer
 004B10E8    push        eax
 004B10E9    mov         eax,dword ptr [ebp-4]
 004B10EC    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004B10F2    mov         eax,dword ptr [eax+4C];TCustomActionCombo.Height:Integer
 004B10F5    push        eax
 004B10F6    mov         edx,dword ptr [ebp-8]
 004B10F9    mov         eax,dword ptr [ebp-4]
 004B10FC    add         edx,dword ptr [eax+198];TCustomComboControl.FTextBounds.Right:Longint
 004B1102    add         edx,5
 004B1105    mov         ecx,dword ptr [ebp-10]
 004B1108    mov         eax,dword ptr [ebp-4]
 004B110B    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004B1111    mov         ebx,dword ptr [eax]
 004B1113    call        dword ptr [ebx+84];TCustomActionCombo.sub_0048B89C
>004B1119    jmp         004B1146
 004B111B    mov         eax,dword ptr [ebp-4]
 004B111E    mov         eax,dword ptr [eax+48];TCustomComboControl.Width:Integer
 004B1121    push        eax
 004B1122    mov         eax,dword ptr [ebp-4]
 004B1125    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004B112B    mov         eax,dword ptr [eax+4C];TCustomActionCombo.Height:Integer
 004B112E    push        eax
 004B112F    mov         ecx,dword ptr [ebp-10]
 004B1132    mov         edx,dword ptr [ebp-8]
 004B1135    mov         eax,dword ptr [ebp-4]
 004B1138    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004B113E    mov         ebx,dword ptr [eax]
 004B1140    call        dword ptr [ebx+84];TCustomActionCombo.sub_0048B89C
 004B1146    mov         eax,dword ptr [ebp-4]
 004B1149    mov         edx,dword ptr [eax]
 004B114B    call        dword ptr [edx+90];TCustomComboControl.sub_004C4DCC
 004B1151    pop         ebx
 004B1152    mov         esp,ebp
 004B1154    pop         ebp
 004B1155    ret         8
end;*}

//004B1158
{*procedure sub_004B1158(?:?);
begin
 004B1158    push        ebp
 004B1159    mov         ebp,esp
 004B115B    add         esp,0FFFFFFF8
 004B115E    mov         byte ptr [ebp-5],dl
 004B1161    mov         dword ptr [ebp-4],eax
 004B1164    mov         dl,byte ptr [ebp-5]
 004B1167    mov         eax,dword ptr [ebp-4]
 004B116A    call        TImage.SetDragMode
 004B116F    mov         dl,byte ptr [ebp-5]
 004B1172    mov         eax,dword ptr [ebp-4]
 004B1175    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004B117B    mov         ecx,dword ptr [eax]
 004B117D    call        dword ptr [ecx+60];TImage.SetDragMode
 004B1180    pop         ecx
 004B1181    pop         ecx
 004B1182    pop         ebp
 004B1183    ret
end;*}

//004B1184
{*procedure sub_004B1184(?:?);
begin
 004B1184    push        ebp
 004B1185    mov         ebp,esp
 004B1187    add         esp,0FFFFFFF8
 004B118A    mov         dword ptr [ebp-8],edx
 004B118D    mov         dword ptr [ebp-4],eax
 004B1190    mov         eax,dword ptr [ebp-4]
 004B1193    cmp         dword ptr [eax+1A8],0;TCustomComboControl..................................................
>004B119A    je          004B11AD
 004B119C    mov         edx,dword ptr [ebp-8]
 004B119F    mov         eax,dword ptr [ebp-4]
 004B11A2    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004B11A8    mov         ecx,dword ptr [eax]
 004B11AA    call        dword ptr [ecx+68];TCustomActionCombo.sub_0048359C
 004B11AD    mov         edx,dword ptr [ebp-8]
 004B11B0    mov         eax,dword ptr [ebp-4]
 004B11B3    call        0048359C
 004B11B8    pop         ecx
 004B11B9    pop         ecx
 004B11BA    pop         ebp
 004B11BB    ret
end;*}

//004B11BC
procedure TCustomComboControl.sub_0048513C;
begin
{*
 004B11BC    push        ebp
 004B11BD    mov         ebp,esp
 004B11BF    push        ecx
 004B11C0    mov         dword ptr [ebp-4],eax
 004B11C3    mov         eax,dword ptr [ebp-4]
 004B11C6    call        TControl.sub_0048513C
 004B11CB    pop         ecx
 004B11CC    pop         ebp
 004B11CD    ret
*}
end;

//004B11D0
constructor sub_004B11D0;
begin
{*
 004B11D0    push        ebp
 004B11D1    mov         ebp,esp
 004B11D3    add         esp,0FFFFFFF4
 004B11D6    test        dl,dl
>004B11D8    je          004B11E2
 004B11DA    add         esp,0FFFFFFF0
 004B11DD    call        @ClassCreate
 004B11E2    mov         dword ptr [ebp-0C],ecx
 004B11E5    mov         byte ptr [ebp-5],dl
 004B11E8    mov         dword ptr [ebp-4],eax
 004B11EB    mov         ecx,dword ptr [ebp-0C]
 004B11EE    xor         edx,edx
 004B11F0    mov         eax,dword ptr [ebp-4]
 004B11F3    call        004C14FC
 004B11F8    xor         edx,edx
 004B11FA    mov         eax,dword ptr [ebp-4]
 004B11FD    call        TImage.SetAlign
 004B1202    mov         eax,dword ptr [ebp-4]
 004B1205    mov         byte ptr [eax+9B],1;TCustomActionDockBar.FDragKind:TDragKind
 004B120C    mov         eax,dword ptr [ebp-4]
 004B120F    cmp         byte ptr [ebp-5],0
>004B1213    je          004B1224
 004B1215    call        @AfterConstruction
 004B121A    pop         dword ptr fs:[0]
 004B1221    add         esp,0C
 004B1224    mov         eax,dword ptr [ebp-4]
 004B1227    mov         esp,ebp
 004B1229    pop         ebp
 004B122A    ret
*}
end;

//004B122C
{*procedure TCustomActionDockBar.sub_00482C8C(?:?; ?:?);
begin
 004B122C    push        ebp
 004B122D    mov         ebp,esp
 004B122F    add         esp,0FFFFFFE0
 004B1232    push        esi
 004B1233    push        edi
 004B1234    mov         esi,ecx
 004B1236    lea         edi,[ebp-20]
 004B1239    movs        dword ptr [edi],dword ptr [esi]
 004B123A    movs        dword ptr [edi],dword ptr [esi]
 004B123B    movs        dword ptr [edi],dword ptr [esi]
 004B123C    movs        dword ptr [edi],dword ptr [esi]
 004B123D    mov         dword ptr [ebp-8],edx
 004B1240    mov         dword ptr [ebp-4],eax
 004B1243    lea         ecx,[ebp-20]
 004B1246    mov         edx,dword ptr [ebp-8]
 004B1249    mov         eax,dword ptr [ebp-4]
 004B124C    call        TControl.sub_00482C8C
 004B1251    mov         eax,dword ptr [ebp-4]
 004B1254    mov         edx,dword ptr [eax]
 004B1256    call        dword ptr [edx+54];TCustomActionDockBar.sub_004866DC
 004B1259    test        al,al
>004B125B    je          004B1288
 004B125D    mov         eax,dword ptr [ebp-4]
 004B1260    cmp         dword ptr [eax+210],0;TCustomActionDockBar.FActionClient:TActionClient
>004B1267    je          004B1279
 004B1269    mov         dl,1
 004B126B    mov         eax,dword ptr [ebp-4]
 004B126E    mov         eax,dword ptr [eax+210];TCustomActionDockBar.FActionClient:TActionClient
 004B1274    call        TActionBarItem.SetAutoSize
 004B1279    xor         edx,edx
 004B127B    mov         eax,dword ptr [ebp-4]
 004B127E    mov         ecx,dword ptr [eax]
 004B1280    call        dword ptr [ecx+60];TImage.SetDragMode
>004B1283    jmp         004B131E
 004B1288    xor         edx,edx
 004B128A    mov         eax,dword ptr [ebp-4]
 004B128D    mov         ecx,dword ptr [eax]
 004B128F    call        dword ptr [ecx+60];TImage.SetDragMode
 004B1292    mov         eax,dword ptr [ebp-4]
 004B1295    cmp         dword ptr [eax+210],0;TCustomActionDockBar.FActionClient:TActionClient
>004B129C    je          004B12AE
 004B129E    xor         edx,edx
 004B12A0    mov         eax,dword ptr [ebp-4]
 004B12A3    mov         eax,dword ptr [eax+210];TCustomActionDockBar.FActionClient:TActionClient
 004B12A9    call        TActionBarItem.SetAutoSize
 004B12AE    mov         eax,dword ptr [ebp-4]
 004B12B1    mov         eax,dword ptr [eax+258];TCustomActionDockBar.FHorzMargin:Integer
 004B12B7    add         eax,eax
 004B12B9    mov         dword ptr [ebp-0C],eax
 004B12BC    mov         eax,dword ptr [ebp-4]
 004B12BF    call        004C28DC
 004B12C4    mov         dword ptr [ebp-10],eax
 004B12C7    cmp         dword ptr [ebp-10],0
>004B12CB    je          004B12F9
 004B12CD    mov         eax,dword ptr [ebp-10]
 004B12D0    mov         eax,dword ptr [eax+40]
 004B12D3    mov         eax,dword ptr [eax+48]
 004B12D6    add         dword ptr [ebp-0C],eax
 004B12D9    mov         eax,dword ptr [ebp-4]
 004B12DC    mov         eax,dword ptr [eax+228];TCustomActionDockBar.FSpacing:Integer
 004B12E2    add         dword ptr [ebp-0C],eax
 004B12E5    mov         edx,dword ptr [ebp-10]
 004B12E8    mov         eax,dword ptr [ebp-4]
 004B12EB    call        004C2C20
 004B12F0    mov         dword ptr [ebp-10],eax
 004B12F3    cmp         dword ptr [ebp-10],0
>004B12F7    jne         004B12CD
 004B12F9    mov         eax,dword ptr [ebp-4]
 004B12FC    mov         eax,dword ptr [eax+258];TCustomActionDockBar.FHorzMargin:Integer
 004B1302    add         eax,eax
 004B1304    cmp         eax,dword ptr [ebp-0C]
>004B1307    je          004B1314
 004B1309    mov         edx,dword ptr [ebp-0C]
 004B130C    mov         eax,dword ptr [ebp-4]
 004B130F    call        TSplitter.SetWidth
 004B1314    xor         edx,edx
 004B1316    mov         eax,dword ptr [ebp-4]
 004B1319    call        TToolButton.SetHeight
 004B131E    pop         edi
 004B131F    pop         esi
 004B1320    mov         esp,ebp
 004B1322    pop         ebp
 004B1323    ret
end;*}

//004B1324
{*procedure TCustomActionDockBar.sub_00484544(?:?; ?:?; ?:?);
begin
 004B1324    push        ebp
 004B1325    mov         ebp,esp
 004B1327    add         esp,0FFFFFFF4
 004B132A    mov         dword ptr [ebp-0C],ecx
 004B132D    mov         dword ptr [ebp-8],edx
 004B1330    mov         dword ptr [ebp-4],eax
 004B1333    mov         eax,dword ptr [ebp+8]
 004B1336    push        eax
 004B1337    mov         ecx,dword ptr [ebp-0C]
 004B133A    mov         edx,dword ptr [ebp-8]
 004B133D    mov         eax,dword ptr [ebp-4]
 004B1340    call        TControl.sub_00484544
 004B1345    mov         eax,dword ptr [ebp-4]
 004B1348    mov         eax,dword ptr [eax+280];TCustomActionDockBar......FDragObject:TDragDockObject
 004B134E    call        TObject.Free
 004B1353    mov         eax,dword ptr [ebp-4]
 004B1356    xor         edx,edx
 004B1358    mov         dword ptr [eax+280],edx;TCustomActionDockBar.......FDragObject:TDragDockObject
 004B135E    mov         esp,ebp
 004B1360    pop         ebp
 004B1361    ret         4
end;*}

//004B1364
{*procedure TCustomActionDockBar.sub_00484588(?:?);
begin
 004B1364    push        ebp
 004B1365    mov         ebp,esp
 004B1367    add         esp,0FFFFFFF8
 004B136A    mov         dword ptr [ebp-8],edx
 004B136D    mov         dword ptr [ebp-4],eax
 004B1370    mov         edx,dword ptr [ebp-8]
 004B1373    mov         eax,dword ptr [ebp-4]
 004B1376    call        TControl.sub_00484588
 004B137B    mov         ecx,dword ptr [ebp-4]
 004B137E    mov         dl,1
 004B1380    mov         eax,[0043C2E8];TToolDockObject
 004B1385    call        TToolDockObject.Create;TToolDockObject.Create
 004B138A    mov         edx,dword ptr [ebp-4]
 004B138D    mov         dword ptr [edx+280],eax;TCustomActionDockBar........FDragObject:TDragDockObject
 004B1393    mov         eax,dword ptr [ebp-8]
 004B1396    mov         edx,dword ptr [ebp-4]
 004B1399    mov         edx,dword ptr [edx+280];TCustomActionDockBar.........FDragObject:TDragDockObject
 004B139F    mov         dword ptr [eax],edx
 004B13A1    pop         ecx
 004B13A2    pop         ecx
 004B13A3    pop         ebp
 004B13A4    ret
end;*}

//004B13A8
{*procedure TCustomActionDockBar.sub_0048A478(?:?; ?:?; ?:?; ?:?);
begin
 004B13A8    push        ebp
 004B13A9    mov         ebp,esp
 004B13AB    add         esp,0FFFFFFEC
 004B13AE    push        esi
 004B13AF    push        edi
 004B13B0    mov         esi,dword ptr [ebp+0C]
 004B13B3    lea         edi,[ebp-14]
 004B13B6    movs        dword ptr [edi],dword ptr [esi]
 004B13B7    movs        dword ptr [edi],dword ptr [esi]
 004B13B8    mov         dword ptr [ebp-0C],ecx
 004B13BB    mov         dword ptr [ebp-8],edx
 004B13BE    mov         dword ptr [ebp-4],eax
 004B13C1    lea         eax,[ebp-14]
 004B13C4    push        eax
 004B13C5    mov         eax,dword ptr [ebp+8]
 004B13C8    push        eax
 004B13C9    mov         ecx,dword ptr [ebp-0C]
 004B13CC    mov         edx,dword ptr [ebp-8]
 004B13CF    mov         eax,dword ptr [ebp-4]
 004B13D2    call        TWinControl.sub_0048A478
 004B13D7    mov         eax,dword ptr [ebp+8]
 004B13DA    cmp         byte ptr [eax],0
>004B13DD    je          004B1403
 004B13DF    mov         eax,dword ptr [ebp-8]
 004B13E2    mov         edx,dword ptr ds:[4BB9B8];TCustomActionControl
 004B13E8    call        @IsClass
 004B13ED    test        al,al
>004B13EF    jne         004B1407
 004B13F1    mov         eax,dword ptr [ebp-8]
 004B13F4    mov         edx,dword ptr ds:[4469B4];TSpeedButton
 004B13FA    call        @IsClass
 004B13FF    test        al,al
>004B1401    jne         004B1407
 004B1403    xor         eax,eax
>004B1405    jmp         004B1409
 004B1407    mov         al,1
 004B1409    mov         edx,dword ptr [ebp+8]
 004B140C    mov         byte ptr [edx],al
 004B140E    pop         edi
 004B140F    pop         esi
 004B1410    mov         esp,ebp
 004B1412    pop         ebp
 004B1413    ret         8
end;*}

//004B1418
procedure sub_004B1418;
begin
{*
 004B1418    push        ebp
 004B1419    mov         ebp,esp
 004B141B    add         esp,0FFFFFFF4
 004B141E    mov         dword ptr [ebp-4],eax
 004B1421    mov         eax,dword ptr [ebp-4]
 004B1424    call        00487E38
 004B1429    dec         eax
 004B142A    test        eax,eax
>004B142C    jl          004B1454
 004B142E    inc         eax
 004B142F    mov         dword ptr [ebp-0C],eax
 004B1432    mov         dword ptr [ebp-8],0
 004B1439    mov         edx,dword ptr [ebp-8]
 004B143C    mov         eax,dword ptr [ebp-4]
 004B143F    call        00487DCC
 004B1444    mov         edx,dword ptr [ebp-4]
 004B1447    call        00482E9C
 004B144C    inc         dword ptr [ebp-8]
 004B144F    dec         dword ptr [ebp-0C]
>004B1452    jne         004B1439
 004B1454    mov         eax,dword ptr [ebp-4]
 004B1457    call        004C2FE8
 004B145C    mov         esp,ebp
 004B145E    pop         ebp
 004B145F    ret
*}
end;

//004B1460
{*function sub_004B1460:?;
begin
 004B1460    push        ebp
 004B1461    mov         ebp,esp
 004B1463    add         esp,0FFFFFFF8
 004B1466    mov         dword ptr [ebp-4],eax
 004B1469    mov         eax,[004BBB84];TXToolDockForm
 004B146E    mov         dword ptr [ebp-8],eax
 004B1471    mov         eax,dword ptr [ebp-8]
 004B1474    pop         ecx
 004B1475    pop         ecx
 004B1476    pop         ebp
 004B1477    ret
end;*}

//004B1478
{*function sub_004B1478(?:TWinControl):?;
begin
 004B1478    push        ebp
 004B1479    mov         ebp,esp
 004B147B    add         esp,0FFFFFFF8
 004B147E    mov         dword ptr [ebp-4],eax
 004B1481    xor         eax,eax
 004B1483    mov         dword ptr [ebp-8],eax
 004B1486    mov         eax,dword ptr [ebp-4]
 004B1489    cmp         dword ptr [eax+288],0
>004B1490    je          004B14A3
 004B1492    mov         eax,dword ptr [ebp-4]
 004B1495    mov         eax,dword ptr [eax+288]
 004B149B    call        004377BC
 004B14A0    mov         dword ptr [ebp-8],eax
 004B14A3    mov         eax,dword ptr [ebp-8]
 004B14A6    pop         ecx
 004B14A7    pop         ecx
 004B14A8    pop         ebp
 004B14A9    ret
end;*}

end.