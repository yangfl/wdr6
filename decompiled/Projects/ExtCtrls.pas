//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ExtCtrls;

interface

uses
  SysUtils, Classes, Graphics, Controls, Dialogs, ExtCtrls;

type
  TImage = class(TGraphicControl)
  public
    Picture:TPicture;//f168
    OnProgress:TProgressEvent;//f170
    f172:word;//f172
    f174:dword;//f174
    Stretch:Boolean;//f178
    Center:Boolean;//f179
    IncrementalDisplay:Boolean;//f17A
    Transparent:Boolean;//f17B
    FDrawing:Boolean;//f17C
    Proportional:Boolean;//f17D
    destructor Destroy; virtual;//00442ADC
    constructor Create; virtual;//v2C//00442A18
    //function v34(?:?; ?:?):?; virtual;//v34//00443150
    procedure v8C; virtual;//v8C//00442CC0
    //procedure sub_00442E5C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//00442E5C
    procedure sub_00442B1C; dynamic;//00442B1C
    procedure SetCenter(Value:Boolean);//00442ED8
    procedure SetPicture(Value:TPicture);//00442F10
    procedure SetStretch(Value:Boolean);//00442F34
    procedure SetTransparent(Value:Boolean);//00442F6C
    procedure SetProportional(Value:Boolean);//00442FA4
  end;
  TTimer = class(TComponent)
  public
    Interval:Cardinal;//f30
    FWindowHandle:HWND;//f34
    OnTimer:TNotifyEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    Enabled:Boolean;//f40
    destructor Destroy; virtual;//00443244
    constructor Create; virtual;//v2C//004431D8
    procedure sub_00443438; dynamic;//00443438
    procedure SetEnabled(Value:Boolean);//004433BC
    procedure SetInterval(Value:Cardinal);//004433E8
    //procedure SetOnTimer(Value:TNotifyEvent; ?:?; ?:?);//00443414
  end;
  TCustomPanel = class(TCustomControl)
  public
    FAutoSizeDocking:Boolean;//f210
    FBevelInner:TBevelCut;//f211
    FBevelOuter:TBevelCut;//f212
    FBevelWidth:TBevelWidth;//f214
    FBorderWidth:TBorderWidth;//f218
    FBorderStyle:TBorderStyle;//f21C
    FFullRepaint:Boolean;//f21D
    FLocked:Boolean;//f21E
    FParentBackgroundSet:Boolean;//f21F
    FAlignment:TAlignment;//f220
    constructor v2C; virtual;//v2C//0044345C
    //function v34(?:?; ?:?):?; virtual;//v34//00443C9C
    //procedure v8C(?:?); virtual;//v8C//00443AC0
    //procedure v98(?:?); virtual;//v98//0044354C
    procedure SetParentBackground(Value:Boolean); virtual;//vBC//00443CDC
    procedure vC8; virtual;//vC8//004437C8
    //procedure WMWindowPosChangedMsg(?:?); message WM_WINDOWPOSCHANGED;//0044365C
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004435F8
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004435E0
    //procedure CMIsToolControl(?:?); message CM_ISTOOLCONTROL;//00443634
    //procedure CMDockClient(?:?); message CM_DOCKCLIENT;//00443B48
    //procedure CMBorderChanged(?:?); message CM_BORDERCHANGED;//004435BC
    procedure sub_00443AA4; dynamic;//00443AA4
  end;
  TPanel = class(TCustomPanel)
    procedure SetAlignment(Value:TAlignment);//0044399C
    procedure SetBevelInner(Value:TBevelCut);//004439C0
    procedure SetBevelOuter(Value:TBevelCut);//004439EC
    procedure SetBevelWidth(Value:TBevelWidth);//00443A18
    procedure SetBorderWidth(Value:TBorderWidth);//00443A44
    procedure SetBorderStyle(Value:TBorderStyle);//00443A70
  end;
  TCustomRadioGroup = class(TCustomGroupBox)
  public
    FButtons:TList;//f210
    FItems:TStrings;//f214
    FItemIndex:Integer;//f218
    FColumns:Integer;//f21C
    FReading:Boolean;//f220
    FUpdating:Boolean;//f221
    destructor Destroy; virtual;//00444160
    procedure vC; virtual;//vC//00444460
    //procedure v14(?:?); virtual;//v14//0044447C
    constructor v2C; virtual;//v2C//004440AC
    //function vCC:?; virtual;//vCC//004447F8
    //procedure WMSize(?:?); message WM_SIZE;//004447D4
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//00444750
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004447B0
    //procedure sub_004441C8(?:?); dynamic;//004441C8
    //procedure sub_0042A788(?:?; ?:?); dynamic;//0044480C
  end;
  TRadioGroup = class(TCustomRadioGroup)
    procedure SetColumns(Value:Integer);//0044450C
    procedure SetItemIndex(Value:Integer);//00444560
    procedure SetItems(Value:TStrings);//00444630
  end;
  TCanResizeEvent = procedure(Sender:TObject; var NewSize:Integer; var Accept:Boolean) of object;;
  TResizeStyle = (rsNone, rsLine, rsUpdate, rsPattern);
  TSplitter = class(TGraphicControl)
  public
    FActiveControl:TWinControl;//f168
    AutoSnap:Boolean;//f16C
    Beveled:Boolean;//f16D
    FBrush:TBrush;//f170
    FControl:TControl;//f174
    FDownPos:TPoint;//f178
    FLineDC:HDC;//f180
    FLineVisible:Boolean;//f184
    MinSize:NaturalNumber;//f188
    FMaxSize:Integer;//f18C
    FNewSize:Integer;//f190
    FOldKeyDown:TKeyEvent;//f198
    f19C:TMessageForm;//f19C
    FOldSize:Integer;//f1A0
    FPrevBrush:HBRUSH;//f1A4
    ResizeStyle:TResizeStyle;//f1A8
    FSplit:Integer;//f1AC
    OnCanResize:TCanResizeEvent;//f1B0
    f1B2:word;//f1B2
    f1B4:dword;//f1B4
    OnMoved:TNotifyEvent;//f1B8
    f1BA:word;//f1BA
    f1BC:dword;//f1BC
    OnPaint:TNotifyEvent;//f1C0
    f1C2:word;//f1C2
    f1C4:dword;//f1C4
    destructor Destroy; virtual;//004448B8
    constructor v2C; virtual;//v2C//00444820
    procedure v8C; virtual;//v8C//00444BF8
    //function v90(?:?):?; virtual;//v90//00444DE0
    //function v94(?:?):?; virtual;//v94//00444D90
    procedure sub_0044551C; dynamic;//0044551C
    procedure sub_00444BAC; dynamic;//00444BAC
    //procedure sub_00445434(?:?; ?:?; ?:?; ?:?); dynamic;//00445434
    //procedure sub_0044536C(?:?; ?:?; ?:?); dynamic;//0044536C
    //procedure sub_00444E20(?:?; ?:?; ?:?; ?:?); dynamic;//00444E20
    procedure SetBeveled(Value:Boolean);//004454F4
  end;
  TBoundLabel = class(TCustomLabel)
  public
    constructor Create; virtual;//v2C//004455B8
    procedure sub_00445640; dynamic;//00445640
    //function GetHeight:?;//00445690
    //function GetLeft:?;//004456AC
    //function GetTop:?;//004456C8
    //function GetWidth:?;//004456E4
    procedure SetHeight(Value:Integer);//00445700
    procedure SetWidth(Value:Integer);//00445740
  end;
  TLabelPosition = (lpAbove, lpBelow, lpLeft, lpRight);
  TCustomLabeledEdit = class(TCustomEdit)
  public
    FEditLabel:TBoundLabel;//f220
    FLabelPosition:TLabelPosition;//f224
    FLabelSpacing:Integer;//f228
    //procedure v10(?:?; ?:?); virtual;//v10//0044587C
    //procedure v18(?:?); virtual;//v18//00445A90
    constructor v2C; virtual;//v2C//00445780
    //procedure v68(?:?); virtual;//v68//00445B40
    //procedure v84(?:?; ?:?; ?:?; ?:?); virtual;//v84//004458BC
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//0044584C
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//00445818
    procedure CMBiDiModeChanged(Message:TMessage); message CM_BIDIMODECHANGED;//004457E8
  end;
  TLabeledEdit = class(TCustomLabeledEdit)
    procedure SetLabelPosition(Value:TLabelPosition);//004458F8
    procedure SetLabelSpacing(Value:Integer);//00445A60
  end;
  TGroupButton = class(TRadioButton)
  public
    ...FInClick:Boolean;//f218
    destructor Destroy; virtual;//00443F3C
    //procedure sub_00443F84(?:?); dynamic;//00443F84
    //procedure sub_0044401C(?:?); dynamic;//0044401C
    //procedure sub_00444074(?:?; ?:?); dynamic;//00444074
    constructor Create;//00443E9C
  end;
    //procedure sub_004428D8(?:?);//004428D8
    //procedure sub_004429B8(?:TCanvas; ?:?; ?:TColor; ?:?);//004429B8
    constructor Create;//00442A18
    destructor Destroy;//00442ADC
    procedure sub_00442B1C;//00442B1C
    //procedure sub_00442B54(?:TImage; ?:?);//00442B54
    procedure sub_00442CC0;//00442CC0
    //function sub_00442D8C(?:TImage):?;//00442D8C
    //procedure sub_00442E5C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00442E5C
    procedure sub_00442FDC(?:TImage; ?:TImage);//00442FDC
    //function sub_00443150(?:?; ?:?):?;//00443150
    constructor Create;//004431D8
    destructor Destroy;//00443244
    procedure sub_00443318(?:TTimer);//00443318
    procedure sub_00443438;//00443438
    constructor sub_0044345C;//0044345C
    //procedure sub_0044354C(?:?);//0044354C
    //procedure CMBorderChanged(?:?);//004435BC
    //procedure CMTextChanged(?:?);//004435E0
    //procedure CMCtl3DChanged(?:?);//004435F8
    //procedure CMIsToolControl(?:?);//00443634
    //procedure WMWindowPosChangedMsg(?:?);//0044365C
    //procedure sub_00443788(?:?; ?:?);//00443788
    procedure sub_004437C8;//004437C8
    procedure sub_00443AA4;//00443AA4
    //procedure sub_00443AC0(?:?);//00443AC0
    //procedure CMDockClient(?:?);//00443B48
    //function sub_00443C9C(?:?; ?:?):?;//00443C9C
    procedure SetParentBackground(Value:Boolean);//00443CDC
    destructor Destroy;//00443F3C
    //procedure sub_00443F84(?:?);//00443F84
    //procedure sub_0044401C(?:?);//0044401C
    //procedure sub_00444074(?:?; ?:?);//00444074
    constructor sub_004440AC;//004440AC
    destructor Destroy;//00444160
    //procedure sub_004441C8(?:?);//004441C8
    procedure sub_004441D8(?:TCustomRadioGroup);//004441D8
    //procedure sub_004443BC(?:?; ?:?);//004443BC
    //procedure sub_00444408(?:?; ?:?);//00444408
    procedure sub_00444460;//00444460
    //procedure sub_0044447C(?:?);//0044447C
    //procedure sub_004444B4(?:TCustomRadioGroup; ?:?);//004444B4
    procedure sub_00444654(?:TCustomRadioGroup);//00444654
    //procedure CMEnabledChanged(?:?);//00444750
    //procedure CMFontChanged(?:?);//004447B0
    //procedure WMSize(?:?);//004447D4
    //function sub_004447F8:?;//004447F8
    //procedure sub_0042A788(?:?; ?:?);//0044480C
    constructor sub_00444820;//00444820
    destructor Destroy;//004448B8
    procedure sub_004448F8(?:TSplitter);//004448F8
    procedure sub_00444994(?:TSplitter);//00444994
    procedure sub_00444A28(?:TSplitter);//00444A28
    //function sub_00444A98(?:TSplitter):?;//00444A98
    procedure sub_00444BAC;//00444BAC
    procedure sub_00444BF8;//00444BF8
    //function sub_00444D90(?:?):?;//00444D90
    //function sub_00444DE0(?:?):?;//00444DE0
    //procedure sub_00444E20(?:?; ?:?; ?:?; ?:?);//00444E20
    procedure sub_00445050(?:TSplitter);//00445050
    //procedure sub_00445208(?:TSplitter; ?:?; ?:?; ?:?; ?:?);//00445208
    //procedure sub_00445338(?:TSplitter; ?:?; ?:?);//00445338
    //procedure sub_0044536C(?:?; ?:?; ?:?);//0044536C
    //procedure sub_00445434(?:?; ?:?; ?:?; ?:?);//00445434
    //procedure sub_0044549C(?:?; ?:?; ?:?; ?:?);//0044549C
    procedure sub_0044551C;//0044551C
    constructor Create;//004455B8
    procedure sub_00445640;//00445640
    constructor sub_00445780;//00445780
    procedure CMBiDiModeChanged(Message:TMessage);//004457E8
    //procedure CMEnabledChanged(?:?);//00445818
    //procedure CMVisibleChanged(?:?);//0044584C
    //procedure sub_0044587C(?:?; ?:?);//0044587C
    //procedure sub_004458BC(?:?; ?:?; ?:?; ?:?);//004458BC
    //procedure sub_00445A90(?:?);//00445A90
    //procedure sub_00445B40(?:?);//00445B40
    procedure sub_00445B88(?:TCustomLabeledEdit);//00445B88
    procedure _NF__82C;//00445D50

implementation

//004428D8
{*procedure sub_004428D8(?:?);
begin
 004428D8    push        ebp
 004428D9    mov         ebp,esp
 004428DB    add         esp,0FFFFFFD8
 004428DE    mov         eax,dword ptr [ebp+8]
 004428E1    mov         eax,dword ptr [eax-4]
 004428E4    mov         eax,dword ptr [eax+8]
 004428E7    mov         dword ptr [ebp-8],eax
 004428EA    mov         eax,dword ptr [ebp+8]
 004428ED    mov         eax,dword ptr [eax-4]
 004428F0    mov         eax,dword ptr [eax+4]
 004428F3    mov         dword ptr [ebp-4],eax
 004428F6    mov         eax,dword ptr [ebp+8]
 004428F9    mov         eax,dword ptr [eax-4]
 004428FC    mov         eax,dword ptr [eax]
 004428FE    mov         dword ptr [ebp-10],eax
 00442901    mov         eax,dword ptr [ebp+8]
 00442904    mov         eax,dword ptr [eax-4]
 00442907    mov         eax,dword ptr [eax+0C]
 0044290A    mov         dword ptr [ebp-0C],eax
 0044290D    mov         eax,dword ptr [ebp+8]
 00442910    mov         edx,dword ptr [eax-0C]
 00442913    mov         eax,dword ptr [ebp+8]
 00442916    mov         eax,dword ptr [eax-8]
 00442919    mov         eax,dword ptr [eax+10]
 0044291C    call        TPen.SetColor
 00442921    mov         eax,dword ptr [ebp-10]
 00442924    mov         dword ptr [ebp-28],eax
 00442927    mov         eax,dword ptr [ebp-0C]
 0044292A    mov         dword ptr [ebp-24],eax
 0044292D    mov         eax,dword ptr [ebp+8]
 00442930    mov         eax,dword ptr [eax-4]
 00442933    mov         edx,dword ptr [eax]
 00442935    mov         dword ptr [ebp-20],edx
 00442938    mov         edx,dword ptr [eax+4]
 0044293B    mov         dword ptr [ebp-1C],edx
 0044293E    mov         eax,dword ptr [ebp-8]
 00442941    mov         dword ptr [ebp-18],eax
 00442944    mov         eax,dword ptr [ebp-4]
 00442947    mov         dword ptr [ebp-14],eax
 0044294A    lea         edx,[ebp-28]
 0044294D    mov         eax,dword ptr [ebp+8]
 00442950    mov         eax,dword ptr [eax-8]
 00442953    mov         ecx,2
 00442958    call        0042F1D4
 0044295D    mov         eax,dword ptr [ebp+8]
 00442960    mov         edx,dword ptr [eax+0C]
 00442963    mov         eax,dword ptr [ebp+8]
 00442966    mov         eax,dword ptr [eax-8]
 00442969    mov         eax,dword ptr [eax+10]
 0044296C    call        TPen.SetColor
 00442971    dec         dword ptr [ebp-10]
 00442974    mov         eax,dword ptr [ebp-8]
 00442977    mov         dword ptr [ebp-28],eax
 0044297A    mov         eax,dword ptr [ebp-4]
 0044297D    mov         dword ptr [ebp-24],eax
 00442980    mov         eax,dword ptr [ebp+8]
 00442983    mov         eax,dword ptr [eax-4]
 00442986    mov         edx,dword ptr [eax+8]
 00442989    mov         dword ptr [ebp-20],edx
 0044298C    mov         edx,dword ptr [eax+0C]
 0044298F    mov         dword ptr [ebp-1C],edx
 00442992    mov         eax,dword ptr [ebp-10]
 00442995    mov         dword ptr [ebp-18],eax
 00442998    mov         eax,dword ptr [ebp-0C]
 0044299B    mov         dword ptr [ebp-14],eax
 0044299E    lea         edx,[ebp-28]
 004429A1    mov         eax,dword ptr [ebp+8]
 004429A4    mov         eax,dword ptr [eax-8]
 004429A7    mov         ecx,2
 004429AC    call        0042F1D4
 004429B1    mov         esp,ebp
 004429B3    pop         ebp
 004429B4    ret
end;*}

//004429B8
{*procedure sub_004429B8(?:TCanvas; ?:?; ?:TColor; ?:?);
begin
 004429B8    push        ebp
 004429B9    mov         ebp,esp
 004429BB    add         esp,0FFFFFFF4
 004429BE    mov         dword ptr [ebp-0C],ecx
 004429C1    mov         dword ptr [ebp-4],edx
 004429C4    mov         dword ptr [ebp-8],eax
 004429C7    mov         eax,dword ptr [ebp-8]
 004429CA    mov         eax,dword ptr [eax+10]
 004429CD    mov         edx,1
 004429D2    call        TPen.SetWidth
 004429D7    mov         eax,dword ptr [ebp-4]
 004429DA    dec         dword ptr [eax+0C]
 004429DD    mov         eax,dword ptr [ebp-4]
 004429E0    dec         dword ptr [eax+8]
 004429E3    cmp         dword ptr [ebp+8],0
>004429E7    jle         00442A06
 004429E9    dec         dword ptr [ebp+8]
 004429EC    push        ebp
 004429ED    call        004428D8
 004429F2    pop         ecx
 004429F3    push        0FF
 004429F5    push        0FF
 004429F7    mov         eax,dword ptr [ebp-4]
 004429FA    push        eax
 004429FB    call        user32.InflateRect
 00442A00    cmp         dword ptr [ebp+8],0
>00442A04    jg          004429E9
 00442A06    mov         eax,dword ptr [ebp-4]
 00442A09    inc         dword ptr [eax+0C]
 00442A0C    mov         eax,dword ptr [ebp-4]
 00442A0F    inc         dword ptr [eax+8]
 00442A12    mov         esp,ebp
 00442A14    pop         ebp
 00442A15    ret         8
end;*}

//00442A18
constructor TImage.Create;
begin
{*
 00442A18    push        ebp
 00442A19    mov         ebp,esp
 00442A1B    add         esp,0FFFFFFF4
 00442A1E    test        dl,dl
>00442A20    je          00442A2A
 00442A22    add         esp,0FFFFFFF0
 00442A25    call        @ClassCreate
 00442A2A    mov         dword ptr [ebp-0C],ecx
 00442A2D    mov         byte ptr [ebp-5],dl
 00442A30    mov         dword ptr [ebp-4],eax
 00442A33    mov         ecx,dword ptr [ebp-0C]
 00442A36    xor         edx,edx
 00442A38    mov         eax,dword ptr [ebp-4]
 00442A3B    call        0048D848
 00442A40    mov         eax,dword ptr [ebp-4]
 00442A43    mov         eax,dword ptr [eax+50];TImage.FControlStyle:TControlStyle
 00442A46    or          eax,dword ptr ds:[442AD8];0x800 gvar_00442AD8
 00442A4C    mov         edx,dword ptr [ebp-4]
 00442A4F    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
 00442A52    mov         dl,1
 00442A54    mov         eax,[0042CC9C];TPicture
 00442A59    call        TPicture.Create;TPicture.Create
 00442A5E    mov         edx,dword ptr [ebp-4]
 00442A61    mov         dword ptr [edx+168],eax;TImage.Picture:TPicture
 00442A67    mov         eax,dword ptr [ebp-4]
 00442A6A    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00442A70    mov         edx,dword ptr [ebp-4]
 00442A73    mov         dword ptr [eax+14],edx;TPicture.?f14:TImage
 00442A76    mov         dword ptr [eax+10],442FDC;TPicture.FOnChange:TNotifyEvent sub_00442FDC
 00442A7D    mov         eax,dword ptr [ebp-4]
 00442A80    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00442A86    mov         edx,dword ptr [ebp-4]
 00442A89    mov         dword ptr [eax+24],edx;TPicture.?f24:TImage
 00442A8C    push        eax
 00442A8D    mov         eax,edx
 00442A8F    mov         dx,0FFC7
 00442A93    call        @FindDynaInst;TImage.sub_00442E5C
 00442A98    mov         edx,eax
 00442A9A    pop         eax
 00442A9B    mov         dword ptr [eax+20],edx
 00442A9E    mov         edx,69
 00442AA3    mov         eax,dword ptr [ebp-4]
 00442AA6    call        TToolButton.SetHeight
 00442AAB    mov         edx,69
 00442AB0    mov         eax,dword ptr [ebp-4]
 00442AB3    call        TSplitter.SetWidth
 00442AB8    mov         eax,dword ptr [ebp-4]
 00442ABB    cmp         byte ptr [ebp-5],0
>00442ABF    je          00442AD0
 00442AC1    call        @AfterConstruction
 00442AC6    pop         dword ptr fs:[0]
 00442ACD    add         esp,0C
 00442AD0    mov         eax,dword ptr [ebp-4]
 00442AD3    mov         esp,ebp
 00442AD5    pop         ebp
 00442AD6    ret
*}
end;

//00442ADC
destructor TImage.Destroy;
begin
{*
 00442ADC    push        ebp
 00442ADD    mov         ebp,esp
 00442ADF    add         esp,0FFFFFFF8
 00442AE2    call        @BeforeDestruction
 00442AE7    mov         byte ptr [ebp-5],dl
 00442AEA    mov         dword ptr [ebp-4],eax
 00442AED    mov         eax,dword ptr [ebp-4]
 00442AF0    mov         eax,dword ptr [eax+168]
 00442AF6    call        TObject.Free
 00442AFB    mov         dl,byte ptr [ebp-5]
 00442AFE    and         dl,0FC
 00442B01    mov         eax,dword ptr [ebp-4]
 00442B04    call        TGraphicControl.Destroy
 00442B09    cmp         byte ptr [ebp-5],0
>00442B0D    jle         00442B17
 00442B0F    mov         eax,dword ptr [ebp-4]
 00442B12    call        @ClassDestroy
 00442B17    pop         ecx
 00442B18    pop         ecx
 00442B19    pop         ebp
 00442B1A    ret
*}
end;

//00442B1C
procedure TImage.sub_00442B1C;
begin
{*
 00442B1C    push        ebp
 00442B1D    mov         ebp,esp
 00442B1F    add         esp,0FFFFFFF8
 00442B22    mov         dword ptr [ebp-4],eax
 00442B25    xor         eax,eax
 00442B27    mov         dword ptr [ebp-8],eax
 00442B2A    mov         eax,dword ptr [ebp-4]
 00442B2D    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00442B33    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>00442B37    je          00442B4D
 00442B39    mov         eax,dword ptr [ebp-4]
 00442B3C    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00442B42    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00442B45    mov         edx,dword ptr [eax]
 00442B47    call        dword ptr [edx+24];TGraphic.sub_004312D0
 00442B4A    mov         dword ptr [ebp-8],eax
 00442B4D    mov         eax,dword ptr [ebp-8]
 00442B50    pop         ecx
 00442B51    pop         ecx
 00442B52    pop         ebp
 00442B53    ret
*}
end;

//00442B54
{*procedure sub_00442B54(?:TImage; ?:?);
begin
 00442B54    push        ebp
 00442B55    mov         ebp,esp
 00442B57    add         esp,0FFFFFFE0
 00442B5A    mov         dword ptr [ebp-8],edx
 00442B5D    mov         dword ptr [ebp-4],eax
 00442B60    mov         eax,dword ptr [ebp-4]
 00442B63    mov         eax,dword ptr [eax+168]
 00442B69    call        004321B4
 00442B6E    mov         dword ptr [ebp-0C],eax
 00442B71    mov         eax,dword ptr [ebp-4]
 00442B74    mov         eax,dword ptr [eax+168]
 00442B7A    call        004321E0
 00442B7F    mov         dword ptr [ebp-10],eax
 00442B82    mov         eax,dword ptr [ebp-4]
 00442B85    call        TControl.GetClientWidth
 00442B8A    mov         dword ptr [ebp-14],eax
 00442B8D    mov         eax,dword ptr [ebp-4]
 00442B90    call        TControl.GetClientHeight
 00442B95    mov         dword ptr [ebp-18],eax
 00442B98    mov         eax,dword ptr [ebp-4]
 00442B9B    cmp         byte ptr [eax+178],0
>00442BA2    jne         00442BC8
 00442BA4    mov         eax,dword ptr [ebp-4]
 00442BA7    cmp         byte ptr [eax+17D],0
>00442BAE    je          00442C68
 00442BB4    mov         eax,dword ptr [ebp-0C]
 00442BB7    cmp         eax,dword ptr [ebp-14]
>00442BBA    jg          00442BC8
 00442BBC    mov         eax,dword ptr [ebp-10]
 00442BBF    cmp         eax,dword ptr [ebp-18]
>00442BC2    jle         00442C68
 00442BC8    mov         eax,dword ptr [ebp-4]
 00442BCB    cmp         byte ptr [eax+17D],0
>00442BD2    je          00442C5C
 00442BD8    cmp         dword ptr [ebp-0C],0
>00442BDC    jle         00442C5C
 00442BDE    cmp         dword ptr [ebp-10],0
>00442BE2    jle         00442C5C
 00442BE4    fild        dword ptr [ebp-0C]
 00442BE7    fild        dword ptr [ebp-10]
 00442BEA    fdivp       st(1),st
 00442BEC    fstp        qword ptr [ebp-20]
 00442BEF    wait
 00442BF0    mov         eax,dword ptr [ebp-0C]
 00442BF3    cmp         eax,dword ptr [ebp-10]
>00442BF6    jle         00442C2A
 00442BF8    mov         eax,dword ptr [ebp-14]
 00442BFB    mov         dword ptr [ebp-0C],eax
 00442BFE    fild        dword ptr [ebp-14]
 00442C01    fdiv        qword ptr [ebp-20]
 00442C04    call        @TRUNC
 00442C09    mov         dword ptr [ebp-10],eax
 00442C0C    mov         eax,dword ptr [ebp-10]
 00442C0F    cmp         eax,dword ptr [ebp-18]
>00442C12    jle         00442C68
 00442C14    mov         eax,dword ptr [ebp-18]
 00442C17    mov         dword ptr [ebp-10],eax
 00442C1A    fild        dword ptr [ebp-18]
 00442C1D    fmul        qword ptr [ebp-20]
 00442C20    call        @TRUNC
 00442C25    mov         dword ptr [ebp-0C],eax
>00442C28    jmp         00442C68
 00442C2A    mov         eax,dword ptr [ebp-18]
 00442C2D    mov         dword ptr [ebp-10],eax
 00442C30    fild        dword ptr [ebp-18]
 00442C33    fmul        qword ptr [ebp-20]
 00442C36    call        @TRUNC
 00442C3B    mov         dword ptr [ebp-0C],eax
 00442C3E    mov         eax,dword ptr [ebp-0C]
 00442C41    cmp         eax,dword ptr [ebp-14]
>00442C44    jle         00442C68
 00442C46    mov         eax,dword ptr [ebp-14]
 00442C49    mov         dword ptr [ebp-0C],eax
 00442C4C    fild        dword ptr [ebp-14]
 00442C4F    fdiv        qword ptr [ebp-20]
 00442C52    call        @TRUNC
 00442C57    mov         dword ptr [ebp-10],eax
>00442C5A    jmp         00442C68
 00442C5C    mov         eax,dword ptr [ebp-14]
 00442C5F    mov         dword ptr [ebp-0C],eax
 00442C62    mov         eax,dword ptr [ebp-18]
 00442C65    mov         dword ptr [ebp-10],eax
 00442C68    mov         eax,dword ptr [ebp-8]
 00442C6B    xor         edx,edx
 00442C6D    mov         dword ptr [eax],edx
 00442C6F    mov         eax,dword ptr [ebp-8]
 00442C72    xor         edx,edx
 00442C74    mov         dword ptr [eax+4],edx
 00442C77    mov         eax,dword ptr [ebp-8]
 00442C7A    mov         edx,dword ptr [ebp-0C]
 00442C7D    mov         dword ptr [eax+8],edx
 00442C80    mov         eax,dword ptr [ebp-8]
 00442C83    mov         edx,dword ptr [ebp-10]
 00442C86    mov         dword ptr [eax+0C],edx
 00442C89    mov         eax,dword ptr [ebp-4]
 00442C8C    cmp         byte ptr [eax+179],0
>00442C93    je          00442CBA
 00442C95    mov         eax,dword ptr [ebp-18]
 00442C98    sub         eax,dword ptr [ebp-10]
 00442C9B    sar         eax,1
>00442C9D    jns         00442CA2
 00442C9F    adc         eax,0
 00442CA2    push        eax
 00442CA3    mov         eax,dword ptr [ebp-14]
 00442CA6    sub         eax,dword ptr [ebp-0C]
 00442CA9    sar         eax,1
>00442CAB    jns         00442CB0
 00442CAD    adc         eax,0
 00442CB0    push        eax
 00442CB1    mov         eax,dword ptr [ebp-8]
 00442CB4    push        eax
 00442CB5    call        user32.OffsetRect
 00442CBA    mov         esp,ebp
 00442CBC    pop         ebp
 00442CBD    ret
end;*}

//00442CC0
procedure sub_00442CC0;
begin
{*
 00442CC0    push        ebp
 00442CC1    mov         ebp,esp
 00442CC3    add         esp,0FFFFFFE0
 00442CC6    mov         dword ptr [ebp-4],eax
 00442CC9    mov         eax,dword ptr [ebp-4]
 00442CCC    test        byte ptr [eax+1C],10;TImage.FComponentState:TComponentState
>00442CD0    je          00442D12
 00442CD2    mov         eax,dword ptr [ebp-4]
 00442CD5    mov         eax,dword ptr [eax+160];TImage.............................................................
 00442CDB    mov         dword ptr [ebp-0C],eax
 00442CDE    mov         eax,dword ptr [ebp-0C]
 00442CE1    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00442CE4    mov         dl,1
 00442CE6    call        TPen.SetStyle
 00442CEB    mov         eax,dword ptr [ebp-0C]
 00442CEE    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00442CF1    mov         dl,1
 00442CF3    call        TBrush.SetStyle
 00442CF8    mov         eax,dword ptr [ebp-4]
 00442CFB    mov         eax,dword ptr [eax+48];TImage.Width:Integer
 00442CFE    push        eax
 00442CFF    mov         eax,dword ptr [ebp-4]
 00442D02    mov         eax,dword ptr [eax+4C];TImage.Height:Integer
 00442D05    push        eax
 00442D06    xor         ecx,ecx
 00442D08    xor         edx,edx
 00442D0A    mov         eax,dword ptr [ebp-0C]
 00442D0D    call        0042F220
 00442D12    mov         eax,dword ptr [ebp-4]
 00442D15    mov         al,byte ptr [eax+17C];TImage.FDrawing:Boolean
 00442D1B    mov         byte ptr [ebp-5],al
 00442D1E    mov         eax,dword ptr [ebp-4]
 00442D21    mov         byte ptr [eax+17C],1;TImage.FDrawing:Boolean
 00442D28    xor         eax,eax
 00442D2A    push        ebp
 00442D2B    push        442D7E
 00442D30    push        dword ptr fs:[eax]
 00442D33    mov         dword ptr fs:[eax],esp
 00442D36    mov         eax,dword ptr [ebp-4]
 00442D39    mov         eax,dword ptr [eax+160];TImage.............................................................
 00442D3F    mov         dword ptr [ebp-10],eax
 00442D42    lea         edx,[ebp-20]
 00442D45    mov         eax,dword ptr [ebp-4]
 00442D48    call        00442B54
 00442D4D    lea         edx,[ebp-20]
 00442D50    mov         eax,dword ptr [ebp-4]
 00442D53    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00442D59    mov         ecx,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00442D5C    mov         eax,dword ptr [ebp-10]
 00442D5F    call        0042F2BC
 00442D64    xor         eax,eax
 00442D66    pop         edx
 00442D67    pop         ecx
 00442D68    pop         ecx
 00442D69    mov         dword ptr fs:[eax],edx
 00442D6C    push        442D85
 00442D71    mov         eax,dword ptr [ebp-4]
 00442D74    mov         dl,byte ptr [ebp-5]
 00442D77    mov         byte ptr [eax+17C],dl;TImage.FDrawing:Boolean
 00442D7D    ret
>00442D7E    jmp         @HandleFinally
>00442D83    jmp         00442D71
 00442D85    mov         esp,ebp
 00442D87    pop         ebp
 00442D88    ret
*}
end;

//00442D8C
{*function sub_00442D8C(?:TImage):?;
begin
 00442D8C    push        ebp
 00442D8D    mov         ebp,esp
 00442D8F    add         esp,0FFFFFFF0
 00442D92    mov         dword ptr [ebp-4],eax
 00442D95    mov         byte ptr [ebp-5],0
 00442D99    mov         eax,dword ptr [ebp-4]
 00442D9C    mov         eax,dword ptr [eax+168]
 00442DA2    mov         eax,dword ptr [eax+0C]
 00442DA5    mov         dword ptr [ebp-10],eax
 00442DA8    mov         eax,dword ptr [ebp-4]
 00442DAB    cmp         byte ptr [eax+57],0
>00442DAF    je          00442E54
 00442DB5    mov         eax,dword ptr [ebp-4]
 00442DB8    test        byte ptr [eax+1C],1
>00442DBC    jne         00442E54
 00442DC2    cmp         dword ptr [ebp-10],0
>00442DC6    je          00442E54
 00442DCC    mov         eax,dword ptr [ebp-10]
 00442DCF    cmp         byte ptr [eax+22],0
>00442DD3    je          00442E54
 00442DD5    mov         eax,dword ptr [ebp-10]
 00442DD8    mov         edx,dword ptr [eax]
 00442DDA    call        dword ptr [edx+24]
 00442DDD    test        eax,eax
>00442DDF    jne         00442DEA
 00442DE1    mov         eax,dword ptr [ebp-10]
 00442DE4    mov         byte ptr [eax+22],0
>00442DE8    jmp         00442E54
 00442DEA    mov         eax,dword ptr [ebp-4]
 00442DED    call        004A0740
 00442DF2    mov         dword ptr [ebp-0C],eax
 00442DF5    cmp         dword ptr [ebp-0C],0
>00442DF9    je          00442E54
 00442DFB    mov         eax,dword ptr [ebp-0C]
 00442DFE    cmp         byte ptr [eax+22E],0
>00442E05    je          00442E54
 00442E07    mov         eax,dword ptr [ebp-0C]
 00442E0A    call        TWinControl.HandleAllocated
 00442E0F    test        al,al
>00442E11    je          00442E54
 00442E13    mov         eax,dword ptr [ebp-4]
 00442E16    cmp         byte ptr [eax+17C],0
>00442E1D    je          00442E32
 00442E1F    push        0
 00442E21    xor         ecx,ecx
 00442E23    mov         edx,30F
 00442E28    mov         eax,dword ptr [ebp-0C]
 00442E2B    call        00484FFC
>00442E30    jmp         00442E49
 00442E32    push        0
 00442E34    push        0
 00442E36    push        30F
 00442E3B    mov         eax,dword ptr [ebp-0C]
 00442E3E    call        TWinControl.GetHandle
 00442E43    push        eax
 00442E44    call        user32.PostMessageA
 00442E49    mov         byte ptr [ebp-5],1
 00442E4D    mov         eax,dword ptr [ebp-10]
 00442E50    mov         byte ptr [eax+22],0
 00442E54    mov         al,byte ptr [ebp-5]
 00442E57    mov         esp,ebp
 00442E59    pop         ebp
 00442E5A    ret
end;*}

//00442E5C
{*procedure TImage.sub_00442E5C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00442E5C    push        ebp
 00442E5D    mov         ebp,esp
 00442E5F    add         esp,0FFFFFFF4
 00442E62    push        ebx
 00442E63    mov         byte ptr [ebp-9],cl
 00442E66    mov         dword ptr [ebp-8],edx
 00442E69    mov         dword ptr [ebp-4],eax
 00442E6C    mov         eax,dword ptr [ebp-4]
 00442E6F    mov         al,byte ptr [eax+17A];TImage.IncrementalDisplay:Boolean
 00442E75    and         al,byte ptr [ebp+10]
>00442E78    je          00442E9E
 00442E7A    mov         eax,dword ptr [ebp-4]
 00442E7D    call        00442D8C
 00442E82    test        al,al
>00442E84    je          00442E93
 00442E86    mov         eax,dword ptr [ebp-4]
 00442E89    mov         edx,dword ptr [eax]
 00442E8B    call        dword ptr [edx+88];TImage.sub_00483FDC
>00442E91    jmp         00442E9E
 00442E93    mov         eax,dword ptr [ebp-4]
 00442E96    mov         edx,dword ptr [eax]
 00442E98    call        dword ptr [edx+8C];TImage.sub_00442CC0
 00442E9E    mov         eax,dword ptr [ebp-4]
 00442EA1    cmp         word ptr [eax+172],0;TImage.?f172:word
>00442EA9    je          00442ED0
 00442EAB    mov         al,byte ptr [ebp+14]
 00442EAE    push        eax
 00442EAF    mov         al,byte ptr [ebp+10]
 00442EB2    push        eax
 00442EB3    mov         eax,dword ptr [ebp+0C]
 00442EB6    push        eax
 00442EB7    mov         eax,dword ptr [ebp+8]
 00442EBA    push        eax
 00442EBB    mov         ebx,dword ptr [ebp-4]
 00442EBE    mov         cl,byte ptr [ebp-9]
 00442EC1    mov         edx,dword ptr [ebp-8]
 00442EC4    mov         eax,dword ptr [ebx+174];TImage.?f174:dword
 00442ECA    call        dword ptr [ebx+170];TImage.OnProgress
 00442ED0    pop         ebx
 00442ED1    mov         esp,ebp
 00442ED3    pop         ebp
 00442ED4    ret         10
end;*}

//00442ED8
procedure TImage.SetCenter(Value:Boolean);
begin
{*
 00442ED8    push        ebp
 00442ED9    mov         ebp,esp
 00442EDB    add         esp,0FFFFFFF8
 00442EDE    mov         byte ptr [ebp-5],dl
 00442EE1    mov         dword ptr [ebp-4],eax
 00442EE4    mov         eax,dword ptr [ebp-4]
 00442EE7    mov         al,byte ptr [eax+179];TImage.Center:Boolean
 00442EED    cmp         al,byte ptr [ebp-5]
>00442EF0    je          00442F09
 00442EF2    mov         al,byte ptr [ebp-5]
 00442EF5    mov         edx,dword ptr [ebp-4]
 00442EF8    mov         byte ptr [edx+179],al;TImage.Center:Boolean
 00442EFE    mov         edx,dword ptr [ebp-4]
 00442F01    mov         eax,dword ptr [ebp-4]
 00442F04    call        00442FDC
 00442F09    pop         ecx
 00442F0A    pop         ecx
 00442F0B    pop         ebp
 00442F0C    ret
*}
end;

//00442F10
procedure TImage.SetPicture(Value:TPicture);
begin
{*
 00442F10    push        ebp
 00442F11    mov         ebp,esp
 00442F13    add         esp,0FFFFFFF8
 00442F16    mov         dword ptr [ebp-8],edx
 00442F19    mov         dword ptr [ebp-4],eax
 00442F1C    mov         edx,dword ptr [ebp-8]
 00442F1F    mov         eax,dword ptr [ebp-4]
 00442F22    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00442F28    mov         ecx,dword ptr [eax]
 00442F2A    call        dword ptr [ecx+8];TPicture.sub_00431E44
 00442F2D    pop         ecx
 00442F2E    pop         ecx
 00442F2F    pop         ebp
 00442F30    ret
*}
end;

//00442F34
procedure TImage.SetStretch(Value:Boolean);
begin
{*
 00442F34    push        ebp
 00442F35    mov         ebp,esp
 00442F37    add         esp,0FFFFFFF8
 00442F3A    mov         byte ptr [ebp-5],dl
 00442F3D    mov         dword ptr [ebp-4],eax
 00442F40    mov         al,byte ptr [ebp-5]
 00442F43    mov         edx,dword ptr [ebp-4]
 00442F46    cmp         al,byte ptr [edx+178];TImage.Stretch:Boolean
>00442F4C    je          00442F65
 00442F4E    mov         al,byte ptr [ebp-5]
 00442F51    mov         edx,dword ptr [ebp-4]
 00442F54    mov         byte ptr [edx+178],al;TImage.Stretch:Boolean
 00442F5A    mov         edx,dword ptr [ebp-4]
 00442F5D    mov         eax,dword ptr [ebp-4]
 00442F60    call        00442FDC
 00442F65    pop         ecx
 00442F66    pop         ecx
 00442F67    pop         ebp
 00442F68    ret
*}
end;

//00442F6C
procedure TImage.SetTransparent(Value:Boolean);
begin
{*
 00442F6C    push        ebp
 00442F6D    mov         ebp,esp
 00442F6F    add         esp,0FFFFFFF8
 00442F72    mov         byte ptr [ebp-5],dl
 00442F75    mov         dword ptr [ebp-4],eax
 00442F78    mov         al,byte ptr [ebp-5]
 00442F7B    mov         edx,dword ptr [ebp-4]
 00442F7E    cmp         al,byte ptr [edx+17B];TImage.Transparent:Boolean
>00442F84    je          00442F9D
 00442F86    mov         al,byte ptr [ebp-5]
 00442F89    mov         edx,dword ptr [ebp-4]
 00442F8C    mov         byte ptr [edx+17B],al;TImage.Transparent:Boolean
 00442F92    mov         edx,dword ptr [ebp-4]
 00442F95    mov         eax,dword ptr [ebp-4]
 00442F98    call        00442FDC
 00442F9D    pop         ecx
 00442F9E    pop         ecx
 00442F9F    pop         ebp
 00442FA0    ret
*}
end;

//00442FA4
procedure TImage.SetProportional(Value:Boolean);
begin
{*
 00442FA4    push        ebp
 00442FA5    mov         ebp,esp
 00442FA7    add         esp,0FFFFFFF8
 00442FAA    mov         byte ptr [ebp-5],dl
 00442FAD    mov         dword ptr [ebp-4],eax
 00442FB0    mov         eax,dword ptr [ebp-4]
 00442FB3    mov         al,byte ptr [eax+17D];TImage.Proportional:Boolean
 00442FB9    cmp         al,byte ptr [ebp-5]
>00442FBC    je          00442FD5
 00442FBE    mov         al,byte ptr [ebp-5]
 00442FC1    mov         edx,dword ptr [ebp-4]
 00442FC4    mov         byte ptr [edx+17D],al;TImage.Proportional:Boolean
 00442FCA    mov         edx,dword ptr [ebp-4]
 00442FCD    mov         eax,dword ptr [ebp-4]
 00442FD0    call        00442FDC
 00442FD5    pop         ecx
 00442FD6    pop         ecx
 00442FD7    pop         ebp
 00442FD8    ret
*}
end;

//00442FDC
procedure sub_00442FDC(?:TImage; ?:TImage);
begin
{*
 00442FDC    push        ebp
 00442FDD    mov         ebp,esp
 00442FDF    add         esp,0FFFFFFE4
 00442FE2    push        ebx
 00442FE3    mov         dword ptr [ebp-0C],edx
 00442FE6    mov         dword ptr [ebp-4],eax
 00442FE9    mov         eax,dword ptr [ebp-4]
 00442FEC    cmp         byte ptr [eax+5C],0;TImage.FAutoSize:Boolean
>00442FF0    je          0044304B
 00442FF2    mov         eax,dword ptr [ebp-4]
 00442FF5    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00442FFB    call        004321B4
 00443000    test        eax,eax
>00443002    jle         0044304B
 00443004    mov         eax,dword ptr [ebp-4]
 00443007    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0044300D    call        004321E0
 00443012    test        eax,eax
>00443014    jle         0044304B
 00443016    mov         eax,dword ptr [ebp-4]
 00443019    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0044301F    call        004321B4
 00443024    push        eax
 00443025    mov         eax,dword ptr [ebp-4]
 00443028    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0044302E    call        004321E0
 00443033    push        eax
 00443034    mov         eax,dword ptr [ebp-4]
 00443037    mov         ecx,dword ptr [eax+44];TImage.Top:Integer
 0044303A    mov         eax,dword ptr [ebp-4]
 0044303D    mov         edx,dword ptr [eax+40];TImage.Left:Integer
 00443040    mov         eax,dword ptr [ebp-4]
 00443043    mov         ebx,dword ptr [eax]
 00443045    call        dword ptr [ebx+84];TImage.sub_00482930
 0044304B    mov         eax,dword ptr [ebp-4]
 0044304E    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00443054    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00443057    mov         dword ptr [ebp-8],eax
 0044305A    cmp         dword ptr [ebp-8],0
>0044305E    je          0044311D
 00443064    mov         eax,dword ptr [ebp-8]
 00443067    mov         edx,dword ptr ds:[42CE08];TMetafile
 0044306D    call        @IsClass
 00443072    test        al,al
>00443074    jne         00443099
 00443076    mov         eax,dword ptr [ebp-8]
 00443079    mov         edx,dword ptr ds:[42D08C];TIcon
 0044307F    call        @IsClass
 00443084    test        al,al
>00443086    jne         00443099
 00443088    mov         eax,dword ptr [ebp-4]
 0044308B    mov         dl,byte ptr [eax+17B];TImage.Transparent:Boolean
 00443091    mov         eax,dword ptr [ebp-8]
 00443094    mov         ecx,dword ptr [eax]
 00443096    call        dword ptr [ecx+3C];TGraphic.sub_0043142C
 00443099    lea         edx,[ebp-1C]
 0044309C    mov         eax,dword ptr [ebp-4]
 0044309F    call        00442B54
 004430A4    mov         eax,dword ptr [ebp-8]
 004430A7    mov         edx,dword ptr [eax]
 004430A9    call        dword ptr [edx+28];TGraphic.sub_004312E8
 004430AC    test        al,al
>004430AE    jne         004430E5
 004430B0    cmp         dword ptr [ebp-1C],0
>004430B4    jg          004430E5
 004430B6    cmp         dword ptr [ebp-18],0
>004430BA    jg          004430E5
 004430BC    mov         eax,dword ptr [ebp-14]
 004430BF    mov         edx,dword ptr [ebp-4]
 004430C2    cmp         eax,dword ptr [edx+48];TImage.Width:Integer
>004430C5    jl          004430E5
 004430C7    mov         eax,dword ptr [ebp-10]
 004430CA    mov         edx,dword ptr [ebp-4]
 004430CD    cmp         eax,dword ptr [edx+4C];TImage.Height:Integer
>004430D0    jl          004430E5
 004430D2    mov         eax,[0044314C];0x40 gvar_0044314C
 004430D7    mov         edx,dword ptr [ebp-4]
 004430DA    or          eax,dword ptr [edx+50];TImage.FControlStyle:TControlStyle
 004430DD    mov         edx,dword ptr [ebp-4]
 004430E0    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
>004430E3    jmp         004430F8
 004430E5    mov         eax,[0044314C];0x40 gvar_0044314C
 004430EA    mov         edx,dword ptr [ebp-4]
 004430ED    not         eax
 004430EF    and         eax,dword ptr [edx+50];TImage.FControlStyle:TControlStyle
 004430F2    mov         edx,dword ptr [ebp-4]
 004430F5    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
 004430F8    mov         eax,dword ptr [ebp-4]
 004430FB    call        00442D8C
 00443100    test        al,al
>00443102    je          00443130
 00443104    mov         eax,dword ptr [ebp-4]
 00443107    cmp         byte ptr [eax+17C],0;TImage.FDrawing:Boolean
>0044310E    je          00443130
 00443110    mov         eax,dword ptr [ebp-4]
 00443113    mov         edx,dword ptr [eax]
 00443115    call        dword ptr [edx+88];TImage.sub_00483FDC
>0044311B    jmp         00443130
 0044311D    mov         eax,[0044314C];0x40 gvar_0044314C
 00443122    mov         edx,dword ptr [ebp-4]
 00443125    not         eax
 00443127    and         eax,dword ptr [edx+50];TImage.FControlStyle:TControlStyle
 0044312A    mov         edx,dword ptr [ebp-4]
 0044312D    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
 00443130    mov         eax,dword ptr [ebp-4]
 00443133    cmp         byte ptr [eax+17C],0;TImage.FDrawing:Boolean
>0044313A    jne         00443144
 0044313C    mov         eax,dword ptr [ebp-4]
 0044313F    mov         edx,dword ptr [eax]
 00443141    call        dword ptr [edx+7C];TImage.sub_00483F08
 00443144    pop         ebx
 00443145    mov         esp,ebp
 00443147    pop         ebp
 00443148    ret
*}
end;

//00443150
{*function sub_00443150(?:?; ?:?):?;
begin
 00443150    push        ebp
 00443151    mov         ebp,esp
 00443153    add         esp,0FFFFFFF0
 00443156    mov         dword ptr [ebp-0C],ecx
 00443159    mov         dword ptr [ebp-8],edx
 0044315C    mov         dword ptr [ebp-4],eax
 0044315F    mov         byte ptr [ebp-0D],1
 00443163    mov         eax,dword ptr [ebp-4]
 00443166    test        byte ptr [eax+1C],10;TImage.FComponentState:TComponentState
>0044316A    je          00443190
 0044316C    mov         eax,dword ptr [ebp-4]
 0044316F    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00443175    call        004321B4
 0044317A    test        eax,eax
>0044317C    jle         004431D0
 0044317E    mov         eax,dword ptr [ebp-4]
 00443181    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00443187    call        004321E0
 0044318C    test        eax,eax
>0044318E    jle         004431D0
 00443190    mov         eax,dword ptr [ebp-4]
 00443193    mov         al,byte ptr [eax+5B];TImage.FAlign:TAlign
 00443196    test        al,al
>00443198    je          004431A0
 0044319A    add         al,0FD
 0044319C    sub         al,2
>0044319E    jae         004431B3
 004431A0    mov         eax,dword ptr [ebp-4]
 004431A3    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 004431A9    call        004321B4
 004431AE    mov         edx,dword ptr [ebp-8]
 004431B1    mov         dword ptr [edx],eax
 004431B3    mov         eax,dword ptr [ebp-4]
 004431B6    mov         al,byte ptr [eax+5B];TImage.FAlign:TAlign
 004431B9    sub         al,3
>004431BB    jae         004431D0
 004431BD    mov         eax,dword ptr [ebp-4]
 004431C0    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 004431C6    call        004321E0
 004431CB    mov         edx,dword ptr [ebp-0C]
 004431CE    mov         dword ptr [edx],eax
 004431D0    mov         al,byte ptr [ebp-0D]
 004431D3    mov         esp,ebp
 004431D5    pop         ebp
 004431D6    ret
end;*}

//004431D8
constructor TTimer.Create;
begin
{*
 004431D8    push        ebp
 004431D9    mov         ebp,esp
 004431DB    add         esp,0FFFFFFF4
 004431DE    test        dl,dl
>004431E0    je          004431EA
 004431E2    add         esp,0FFFFFFF0
 004431E5    call        @ClassCreate
 004431EA    mov         dword ptr [ebp-0C],ecx
 004431ED    mov         byte ptr [ebp-5],dl
 004431F0    mov         dword ptr [ebp-4],eax
 004431F3    mov         ecx,dword ptr [ebp-0C]
 004431F6    xor         edx,edx
 004431F8    mov         eax,dword ptr [ebp-4]
 004431FB    call        0042A1B0
 00443200    mov         eax,dword ptr [ebp-4]
 00443203    mov         byte ptr [eax+40],1;TTimer.Enabled:Boolean
 00443207    mov         eax,dword ptr [ebp-4]
 0044320A    mov         dword ptr [eax+30],3E8;TTimer.Interval:Cardinal
 00443211    mov         eax,dword ptr [ebp-4]
 00443214    push        eax
 00443215    push        443290
 0044321A    call        0042BAC0
 0044321F    mov         edx,dword ptr [ebp-4]
 00443222    mov         dword ptr [edx+34],eax;TTimer.FWindowHandle:HWND
 00443225    mov         eax,dword ptr [ebp-4]
 00443228    cmp         byte ptr [ebp-5],0
>0044322C    je          0044323D
 0044322E    call        @AfterConstruction
 00443233    pop         dword ptr fs:[0]
 0044323A    add         esp,0C
 0044323D    mov         eax,dword ptr [ebp-4]
 00443240    mov         esp,ebp
 00443242    pop         ebp
 00443243    ret
*}
end;

//00443244
destructor TTimer.Destroy;
begin
{*
 00443244    push        ebp
 00443245    mov         ebp,esp
 00443247    add         esp,0FFFFFFF8
 0044324A    call        @BeforeDestruction
 0044324F    mov         byte ptr [ebp-5],dl
 00443252    mov         dword ptr [ebp-4],eax
 00443255    mov         eax,dword ptr [ebp-4]
 00443258    mov         byte ptr [eax+40],0
 0044325C    mov         eax,dword ptr [ebp-4]
 0044325F    call        00443318
 00443264    mov         eax,dword ptr [ebp-4]
 00443267    mov         eax,dword ptr [eax+34]
 0044326A    call        0042BB7C
 0044326F    mov         dl,byte ptr [ebp-5]
 00443272    and         dl,0FC
 00443275    mov         eax,dword ptr [ebp-4]
 00443278    call        TComponent.Destroy
 0044327D    cmp         byte ptr [ebp-5],0
>00443281    jle         0044328B
 00443283    mov         eax,dword ptr [ebp-4]
 00443286    call        @ClassDestroy
 0044328B    pop         ecx
 0044328C    pop         ecx
 0044328D    pop         ebp
 0044328E    ret
*}
end;

//00443318
procedure sub_00443318(?:TTimer);
begin
{*
 00443318    push        ebp
 00443319    mov         ebp,esp
 0044331B    add         esp,0FFFFFFF8
 0044331E    xor         edx,edx
 00443320    mov         dword ptr [ebp-8],edx
 00443323    mov         dword ptr [ebp-4],eax
 00443326    xor         eax,eax
 00443328    push        ebp
 00443329    push        4433B0
 0044332E    push        dword ptr fs:[eax]
 00443331    mov         dword ptr fs:[eax],esp
 00443334    push        1
 00443336    mov         eax,dword ptr [ebp-4]
 00443339    mov         eax,dword ptr [eax+34]
 0044333C    push        eax
 0044333D    call        user32.KillTimer
 00443342    mov         eax,dword ptr [ebp-4]
 00443345    cmp         dword ptr [eax+30],0
>00443349    je          0044339A
 0044334B    mov         eax,dword ptr [ebp-4]
 0044334E    cmp         byte ptr [eax+40],0
>00443352    je          0044339A
 00443354    mov         eax,dword ptr [ebp-4]
 00443357    cmp         word ptr [eax+3A],0
>0044335C    je          0044339A
 0044335E    push        0
 00443360    mov         eax,dword ptr [ebp-4]
 00443363    mov         eax,dword ptr [eax+30]
 00443366    push        eax
 00443367    push        1
 00443369    mov         eax,dword ptr [ebp-4]
 0044336C    mov         eax,dword ptr [eax+34]
 0044336F    push        eax
 00443370    call        user32.SetTimer
 00443375    test        eax,eax
>00443377    jne         0044339A
 00443379    lea         edx,[ebp-8]
 0044337C    mov         eax,[0056E600];^SNoTimers:TResStringRec
 00443381    call        LoadResString
 00443386    mov         ecx,dword ptr [ebp-8]
 00443389    mov         dl,1
 0044338B    mov         eax,[0041D3B0];EOutOfResources
 00443390    call        Exception.Create;EOutOfResources.Create
 00443395    call        @RaiseExcept
 0044339A    xor         eax,eax
 0044339C    pop         edx
 0044339D    pop         ecx
 0044339E    pop         ecx
 0044339F    mov         dword ptr fs:[eax],edx
 004433A2    push        4433B7
 004433A7    lea         eax,[ebp-8]
 004433AA    call        @LStrClr
 004433AF    ret
>004433B0    jmp         @HandleFinally
>004433B5    jmp         004433A7
 004433B7    pop         ecx
 004433B8    pop         ecx
 004433B9    pop         ebp
 004433BA    ret
*}
end;

//004433BC
procedure TTimer.SetEnabled(Value:Boolean);
begin
{*
 004433BC    push        ebp
 004433BD    mov         ebp,esp
 004433BF    add         esp,0FFFFFFF8
 004433C2    mov         byte ptr [ebp-5],dl
 004433C5    mov         dword ptr [ebp-4],eax
 004433C8    mov         al,byte ptr [ebp-5]
 004433CB    mov         edx,dword ptr [ebp-4]
 004433CE    cmp         al,byte ptr [edx+40];TTimer.Enabled:Boolean
>004433D1    je          004433E4
 004433D3    mov         al,byte ptr [ebp-5]
 004433D6    mov         edx,dword ptr [ebp-4]
 004433D9    mov         byte ptr [edx+40],al;TTimer.Enabled:Boolean
 004433DC    mov         eax,dword ptr [ebp-4]
 004433DF    call        00443318
 004433E4    pop         ecx
 004433E5    pop         ecx
 004433E6    pop         ebp
 004433E7    ret
*}
end;

//004433E8
procedure TTimer.SetInterval(Value:Cardinal);
begin
{*
 004433E8    push        ebp
 004433E9    mov         ebp,esp
 004433EB    add         esp,0FFFFFFF8
 004433EE    mov         dword ptr [ebp-8],edx
 004433F1    mov         dword ptr [ebp-4],eax
 004433F4    mov         eax,dword ptr [ebp-8]
 004433F7    mov         edx,dword ptr [ebp-4]
 004433FA    cmp         eax,dword ptr [edx+30];TTimer.Interval:Cardinal
>004433FD    je          00443410
 004433FF    mov         eax,dword ptr [ebp-8]
 00443402    mov         edx,dword ptr [ebp-4]
 00443405    mov         dword ptr [edx+30],eax;TTimer.Interval:Cardinal
 00443408    mov         eax,dword ptr [ebp-4]
 0044340B    call        00443318
 00443410    pop         ecx
 00443411    pop         ecx
 00443412    pop         ebp
 00443413    ret
*}
end;

//00443414
{*procedure TTimer.SetOnTimer(Value:TNotifyEvent; ?:?; ?:?);
begin
 00443414    push        ebp
 00443415    mov         ebp,esp
 00443417    push        ecx
 00443418    mov         dword ptr [ebp-4],eax
 0044341B    mov         eax,dword ptr [ebp-4]
 0044341E    mov         edx,dword ptr [ebp+8]
 00443421    mov         dword ptr [eax+38],edx;TTimer.OnTimer:TNotifyEvent
 00443424    mov         edx,dword ptr [ebp+0C]
 00443427    mov         dword ptr [eax+3C],edx;TTimer.?f3C:dword
 0044342A    mov         eax,dword ptr [ebp-4]
 0044342D    call        00443318
 00443432    pop         ecx
 00443433    pop         ebp
 00443434    ret         8
end;*}

//00443438
procedure TTimer.sub_00443438;
begin
{*
 00443438    push        ebp
 00443439    mov         ebp,esp
 0044343B    push        ecx
 0044343C    push        ebx
 0044343D    mov         dword ptr [ebp-4],eax
 00443440    mov         eax,dword ptr [ebp-4]
 00443443    cmp         word ptr [eax+3A],0;TTimer.?f3A:word
>00443448    je          00443456
 0044344A    mov         ebx,dword ptr [ebp-4]
 0044344D    mov         edx,dword ptr [ebp-4]
 00443450    mov         eax,dword ptr [ebx+3C];TTimer.?f3C:dword
 00443453    call        dword ptr [ebx+38];TTimer.OnTimer
 00443456    pop         ebx
 00443457    pop         ecx
 00443458    pop         ebp
 00443459    ret
*}
end;

//0044345C
constructor sub_0044345C;
begin
{*
 0044345C    push        ebp
 0044345D    mov         ebp,esp
 0044345F    add         esp,0FFFFFFF4
 00443462    test        dl,dl
>00443464    je          0044346E
 00443466    add         esp,0FFFFFFF0
 00443469    call        @ClassCreate
 0044346E    mov         dword ptr [ebp-0C],ecx
 00443471    mov         byte ptr [ebp-5],dl
 00443474    mov         dword ptr [ebp-4],eax
 00443477    mov         ecx,dword ptr [ebp-0C]
 0044347A    xor         edx,edx
 0044347C    mov         eax,dword ptr [ebp-4]
 0044347F    call        0048E4F0
 00443484    mov         eax,dword ptr [ebp-4]
 00443487    mov         edx,dword ptr ds:[443540];0x8EB gvar_00443540
 0044348D    mov         dword ptr [eax+50],edx;TCustomPanel.FControlStyle:TControlStyle
 00443490    call        0046BFC0
 00443495    call        0046C0EC
 0044349A    test        al,al
>0044349C    je          004434BA
 0044349E    mov         eax,dword ptr [ebp-4]
 004434A1    mov         eax,dword ptr [eax+50];TCustomPanel.FControlStyle:TControlStyle
 004434A4    or          eax,dword ptr ds:[443544];0x40000 gvar_00443544
 004434AA    mov         edx,dword ptr ds:[443548];0x40 gvar_00443548
 004434B0    not         edx
 004434B2    and         edx,eax
 004434B4    mov         eax,dword ptr [ebp-4]
 004434B7    mov         dword ptr [eax+50],edx;TCustomPanel.FControlStyle:TControlStyle
 004434BA    mov         edx,0B9
 004434BF    mov         eax,dword ptr [ebp-4]
 004434C2    call        TSplitter.SetWidth
 004434C7    mov         edx,29
 004434CC    mov         eax,dword ptr [ebp-4]
 004434CF    call        TToolButton.SetHeight
 004434D4    mov         eax,dword ptr [ebp-4]
 004434D7    mov         byte ptr [eax+220],2;TCustomPanel.FAlignment:TAlignment
 004434DE    mov         dl,2
 004434E0    mov         eax,dword ptr [ebp-4]
 004434E3    call        TPanel.SetBevelOuter
 004434E8    mov         edx,1
 004434ED    mov         eax,dword ptr [ebp-4]
 004434F0    call        TPanel.SetBevelWidth
 004434F5    mov         eax,dword ptr [ebp-4]
 004434F8    mov         byte ptr [eax+21C],0;TCustomPanel.FBorderStyle:TBorderStyle
 004434FF    mov         edx,0FF00000F
 00443504    mov         eax,dword ptr [ebp-4]
 00443507    call        TPanel.SetColor
 0044350C    mov         eax,dword ptr [ebp-4]
 0044350F    mov         byte ptr [eax+21D],1;TCustomPanel.FFullRepaint:Boolean
 00443516    mov         dl,1
 00443518    mov         eax,dword ptr [ebp-4]
 0044351B    call        TPanel.SetUseDockManager
 00443520    mov         eax,dword ptr [ebp-4]
 00443523    cmp         byte ptr [ebp-5],0
>00443527    je          00443538
 00443529    call        @AfterConstruction
 0044352E    pop         dword ptr fs:[0]
 00443535    add         esp,0C
 00443538    mov         eax,dword ptr [ebp-4]
 0044353B    mov         esp,ebp
 0044353D    pop         ebp
 0044353E    ret
*}
end;

//0044354C
{*procedure sub_0044354C(?:?);
begin
 0044354C    push        ebp
 0044354D    mov         ebp,esp
 0044354F    add         esp,0FFFFFFF8
 00443552    mov         dword ptr [ebp-8],edx
 00443555    mov         dword ptr [ebp-4],eax
 00443558    mov         edx,dword ptr [ebp-8]
 0044355B    mov         eax,dword ptr [ebp-4]
 0044355E    call        00488034
 00443563    mov         eax,dword ptr [ebp-4]
 00443566    movzx       eax,byte ptr [eax+21C];TCustomPanel.FBorderStyle:TBorderStyle
 0044356D    mov         eax,dword ptr [eax*4+56C1C0]
 00443574    mov         edx,dword ptr [ebp-8]
 00443577    or          dword ptr [edx+4],eax
 0044357A    mov         eax,[0056E264];^NewStyleControls:Boolean
 0044357F    cmp         byte ptr [eax],0
>00443582    je          004435B0
 00443584    mov         eax,dword ptr [ebp-4]
 00443587    cmp         byte ptr [eax+1A5],0;TCustomPanel.FCtl3D:Boolean
>0044358E    je          004435B0
 00443590    mov         eax,dword ptr [ebp-4]
 00443593    cmp         byte ptr [eax+21C],1;TCustomPanel.FBorderStyle:TBorderStyle
>0044359A    jne         004435B0
 0044359C    mov         eax,dword ptr [ebp-8]
 0044359F    and         dword ptr [eax+4],0FF7FFFFF
 004435A6    mov         eax,dword ptr [ebp-8]
 004435A9    or          dword ptr [eax+8],200
 004435B0    mov         eax,dword ptr [ebp-8]
 004435B3    and         dword ptr [eax+24],0FFFFFFFC
 004435B7    pop         ecx
 004435B8    pop         ecx
 004435B9    pop         ebp
 004435BA    ret
end;*}

//004435BC
{*procedure TCustomPanel.CMBorderChanged(?:?);
begin
 004435BC    push        ebp
 004435BD    mov         ebp,esp
 004435BF    add         esp,0FFFFFFF8
 004435C2    mov         dword ptr [ebp-8],edx
 004435C5    mov         dword ptr [ebp-4],eax
 004435C8    mov         edx,dword ptr [ebp-8]
 004435CB    mov         eax,dword ptr [ebp-4]
 004435CE    call        TWinControl.CMBorderChanged
 004435D3    mov         eax,dword ptr [ebp-4]
 004435D6    mov         edx,dword ptr [eax]
 004435D8    call        dword ptr [edx+7C];TCustomPanel.sub_0048BE68
 004435DB    pop         ecx
 004435DC    pop         ecx
 004435DD    pop         ebp
 004435DE    ret
end;*}

//004435E0
{*procedure TCustomPanel.CMTextChanged(?:?);
begin
 004435E0    push        ebp
 004435E1    mov         ebp,esp
 004435E3    add         esp,0FFFFFFF8
 004435E6    mov         dword ptr [ebp-8],edx
 004435E9    mov         dword ptr [ebp-4],eax
 004435EC    mov         eax,dword ptr [ebp-4]
 004435EF    mov         edx,dword ptr [eax]
 004435F1    call        dword ptr [edx+7C];TCustomPanel.sub_0048BE68
 004435F4    pop         ecx
 004435F5    pop         ecx
 004435F6    pop         ebp
 004435F7    ret
end;*}

//004435F8
{*procedure TCustomPanel.CMCtl3DChanged(?:?);
begin
 004435F8    push        ebp
 004435F9    mov         ebp,esp
 004435FB    add         esp,0FFFFFFF8
 004435FE    mov         dword ptr [ebp-8],edx
 00443601    mov         dword ptr [ebp-4],eax
 00443604    mov         eax,[0056E264];^NewStyleControls:Boolean
 00443609    cmp         byte ptr [eax],0
>0044360C    je          00443622
 0044360E    mov         eax,dword ptr [ebp-4]
 00443611    cmp         byte ptr [eax+21C],1;TCustomPanel.FBorderStyle:TBorderStyle
>00443618    jne         00443622
 0044361A    mov         eax,dword ptr [ebp-4]
 0044361D    call        TWinControl.RecreateWnd
 00443622    mov         edx,dword ptr [ebp-8]
 00443625    mov         eax,dword ptr [ebp-4]
 00443628    call        TWinControl.CMCtl3DChanged
 0044362D    pop         ecx
 0044362E    pop         ecx
 0044362F    pop         ebp
 00443630    ret
end;*}

//00443634
{*procedure TCustomPanel.CMIsToolControl(?:?);
begin
 00443634    push        ebp
 00443635    mov         ebp,esp
 00443637    add         esp,0FFFFFFF8
 0044363A    mov         dword ptr [ebp-8],edx
 0044363D    mov         dword ptr [ebp-4],eax
 00443640    mov         eax,dword ptr [ebp-4]
 00443643    cmp         byte ptr [eax+21E],0;TCustomPanel.FLocked:Boolean
>0044364A    jne         00443656
 0044364C    mov         eax,dword ptr [ebp-8]
 0044364F    mov         dword ptr [eax+0C],1
 00443656    pop         ecx
 00443657    pop         ecx
 00443658    pop         ebp
 00443659    ret
end;*}

//0044365C
{*procedure TCustomPanel.WMWindowPosChangedMsg(?:?);
begin
 0044365C    push        ebp
 0044365D    mov         ebp,esp
 0044365F    add         esp,0FFFFFFE0
 00443662    xor         ecx,ecx
 00443664    mov         dword ptr [ebp-20],ecx
 00443667    mov         dword ptr [ebp-8],edx
 0044366A    mov         dword ptr [ebp-4],eax
 0044366D    xor         eax,eax
 0044366F    push        ebp
 00443670    push        44377C
 00443675    push        dword ptr fs:[eax]
 00443678    mov         dword ptr fs:[eax],esp
 0044367B    mov         eax,dword ptr [ebp-4]
 0044367E    cmp         byte ptr [eax+21D],0;TCustomPanel.FFullRepaint:Boolean
>00443685    jne         00443698
 00443687    lea         edx,[ebp-20]
 0044368A    mov         eax,dword ptr [ebp-4]
 0044368D    call        TPanel.GetCaption
 00443692    cmp         dword ptr [ebp-20],0
>00443696    je          004436A5
 00443698    mov         eax,dword ptr [ebp-4]
 0044369B    mov         edx,dword ptr [eax]
 0044369D    call        dword ptr [edx+7C];TCustomPanel.sub_0048BE68
>004436A0    jmp         0044375B
 004436A5    mov         eax,dword ptr [ebp-4]
 004436A8    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 004436AE    mov         dword ptr [ebp-0C],eax
 004436B1    mov         eax,dword ptr [ebp-4]
 004436B4    cmp         byte ptr [eax+211],0;TCustomPanel.FBevelInner:TBevelCut
>004436BB    je          004436C9
 004436BD    mov         eax,dword ptr [ebp-4]
 004436C0    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 004436C6    add         dword ptr [ebp-0C],eax
 004436C9    mov         eax,dword ptr [ebp-4]
 004436CC    cmp         byte ptr [eax+212],0;TCustomPanel.FBevelOuter:TBevelCut
>004436D3    je          004436E1
 004436D5    mov         eax,dword ptr [ebp-4]
 004436D8    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 004436DE    add         dword ptr [ebp-0C],eax
 004436E1    cmp         dword ptr [ebp-0C],0
>004436E5    jle         0044375B
 004436E7    mov         eax,dword ptr [ebp-4]
 004436EA    mov         eax,dword ptr [eax+48];TCustomPanel.Width:Integer
 004436ED    mov         dword ptr [ebp-14],eax
 004436F0    mov         eax,dword ptr [ebp-4]
 004436F3    mov         eax,dword ptr [eax+4C];TCustomPanel.Height:Integer
 004436F6    mov         dword ptr [ebp-10],eax
 004436F9    mov         eax,dword ptr [ebp-8]
 004436FC    mov         eax,dword ptr [eax+8]
 004436FF    mov         eax,dword ptr [eax+10]
 00443702    cmp         eax,dword ptr [ebp-14]
>00443705    je          0044372A
 00443707    xor         eax,eax
 00443709    mov         dword ptr [ebp-18],eax
 0044370C    mov         eax,dword ptr [ebp-14]
 0044370F    sub         eax,dword ptr [ebp-0C]
 00443712    dec         eax
 00443713    mov         dword ptr [ebp-1C],eax
 00443716    push        0FF
 00443718    lea         eax,[ebp-1C]
 0044371B    push        eax
 0044371C    mov         eax,dword ptr [ebp-4]
 0044371F    call        TWinControl.GetHandle
 00443724    push        eax
 00443725    call        user32.InvalidateRect
 0044372A    mov         eax,dword ptr [ebp-8]
 0044372D    mov         eax,dword ptr [eax+8]
 00443730    mov         eax,dword ptr [eax+14]
 00443733    cmp         eax,dword ptr [ebp-10]
>00443736    je          0044375B
 00443738    xor         eax,eax
 0044373A    mov         dword ptr [ebp-1C],eax
 0044373D    mov         eax,dword ptr [ebp-10]
 00443740    sub         eax,dword ptr [ebp-0C]
 00443743    dec         eax
 00443744    mov         dword ptr [ebp-18],eax
 00443747    push        0FF
 00443749    lea         eax,[ebp-1C]
 0044374C    push        eax
 0044374D    mov         eax,dword ptr [ebp-4]
 00443750    call        TWinControl.GetHandle
 00443755    push        eax
 00443756    call        user32.InvalidateRect
 0044375B    mov         edx,dword ptr [ebp-8]
 0044375E    mov         eax,dword ptr [ebp-4]
 00443761    call        TWinControl.WMWindowPosChangedMsg
 00443766    xor         eax,eax
 00443768    pop         edx
 00443769    pop         ecx
 0044376A    pop         ecx
 0044376B    mov         dword ptr fs:[eax],edx
 0044376E    push        443783
 00443773    lea         eax,[ebp-20]
 00443776    call        @LStrClr
 0044377B    ret
>0044377C    jmp         @HandleFinally
>00443781    jmp         00443773
 00443783    mov         esp,ebp
 00443785    pop         ebp
 00443786    ret
end;*}

//00443788
{*procedure sub_00443788(?:?; ?:?);
begin
 00443788    push        ebp
 00443789    mov         ebp,esp
 0044378B    push        ecx
 0044378C    mov         byte ptr [ebp-1],al
 0044378F    mov         eax,dword ptr [ebp+8]
 00443792    mov         dword ptr [eax-4],0FF000014
 00443799    cmp         byte ptr [ebp-1],1
>0044379D    jne         004437A9
 0044379F    mov         eax,dword ptr [ebp+8]
 004437A2    mov         dword ptr [eax-4],0FF000010
 004437A9    mov         eax,dword ptr [ebp+8]
 004437AC    mov         dword ptr [eax-8],0FF000010
 004437B3    cmp         byte ptr [ebp-1],1
>004437B7    jne         004437C3
 004437B9    mov         eax,dword ptr [ebp+8]
 004437BC    mov         dword ptr [eax-8],0FF000014
 004437C3    pop         ecx
 004437C4    pop         ebp
 004437C5    ret
end;*}

//004437C8
procedure sub_004437C8;
begin
{*
 004437C8    push        ebp
 004437C9    mov         ebp,esp
 004437CB    add         esp,0FFFFFFD4
 004437CE    xor         edx,edx
 004437D0    mov         dword ptr [ebp-2C],edx
 004437D3    mov         dword ptr [ebp-0C],eax
 004437D6    xor         eax,eax
 004437D8    push        ebp
 004437D9    push        443983
 004437DE    push        dword ptr fs:[eax]
 004437E1    mov         dword ptr fs:[eax],esp
 004437E4    lea         edx,[ebp-28]
 004437E7    mov         eax,dword ptr [ebp-0C]
 004437EA    mov         ecx,dword ptr [eax]
 004437EC    call        dword ptr [ecx+44];TCustomPanel.sub_0048C23C
 004437EF    mov         eax,dword ptr [ebp-0C]
 004437F2    cmp         byte ptr [eax+212],0;TCustomPanel.FBevelOuter:TBevelCut
>004437F9    je          0044382D
 004437FB    push        ebp
 004437FC    mov         eax,dword ptr [ebp-0C]
 004437FF    mov         al,byte ptr [eax+212];TCustomPanel.FBevelOuter:TBevelCut
 00443805    call        00443788
 0044380A    pop         ecx
 0044380B    mov         eax,dword ptr [ebp-8]
 0044380E    push        eax
 0044380F    mov         eax,dword ptr [ebp-0C]
 00443812    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 00443818    push        eax
 00443819    lea         edx,[ebp-28]
 0044381C    mov         ecx,dword ptr [ebp-4]
 0044381F    mov         eax,dword ptr [ebp-0C]
 00443822    mov         eax,dword ptr [eax+208];TCustomPanel.......................................................
 00443828    call        004429B8
 0044382D    mov         eax,dword ptr [ebp-0C]
 00443830    mov         eax,dword ptr [eax+70];TCustomPanel.FColor:TColor
 00443833    push        eax
 00443834    mov         eax,dword ptr [ebp-0C]
 00443837    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 0044383D    push        eax
 0044383E    lea         edx,[ebp-28]
 00443841    mov         eax,dword ptr [ebp-0C]
 00443844    mov         ecx,dword ptr [eax+70];TCustomPanel.FColor:TColor
 00443847    mov         eax,dword ptr [ebp-0C]
 0044384A    mov         eax,dword ptr [eax+208];TCustomPanel.......................................................
 00443850    call        004429B8
 00443855    mov         eax,dword ptr [ebp-0C]
 00443858    cmp         byte ptr [eax+211],0;TCustomPanel.FBevelInner:TBevelCut
>0044385F    je          00443893
 00443861    push        ebp
 00443862    mov         eax,dword ptr [ebp-0C]
 00443865    mov         al,byte ptr [eax+211];TCustomPanel.FBevelInner:TBevelCut
 0044386B    call        00443788
 00443870    pop         ecx
 00443871    mov         eax,dword ptr [ebp-8]
 00443874    push        eax
 00443875    mov         eax,dword ptr [ebp-0C]
 00443878    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 0044387E    push        eax
 0044387F    lea         edx,[ebp-28]
 00443882    mov         ecx,dword ptr [ebp-4]
 00443885    mov         eax,dword ptr [ebp-0C]
 00443888    mov         eax,dword ptr [eax+208];TCustomPanel.......................................................
 0044388E    call        004429B8
 00443893    mov         eax,dword ptr [ebp-0C]
 00443896    mov         eax,dword ptr [eax+208];TCustomPanel.......................................................
 0044389C    mov         dword ptr [ebp-18],eax
 0044389F    call        0046BFC0
 004438A4    call        0046C0EC
 004438A9    test        al,al
>004438AB    je          004438B9
 004438AD    mov         eax,dword ptr [ebp-0C]
 004438B0    call        TPanel.GetParentBackground
 004438B5    test        al,al
>004438B7    jne         004438D5
 004438B9    mov         eax,dword ptr [ebp-0C]
 004438BC    mov         edx,dword ptr [eax+70];TCustomPanel.FColor:TColor
 004438BF    mov         eax,dword ptr [ebp-18]
 004438C2    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004438C5    call        TBrush.SetColor
 004438CA    lea         edx,[ebp-28]
 004438CD    mov         eax,dword ptr [ebp-18]
 004438D0    call        0042F030
 004438D5    mov         dl,1
 004438D7    mov         eax,dword ptr [ebp-18]
 004438DA    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004438DD    call        TBrush.SetStyle
 004438E2    mov         eax,dword ptr [ebp-0C]
 004438E5    mov         edx,dword ptr [eax+68];TCustomPanel.FFont:TFont
 004438E8    mov         eax,dword ptr [ebp-18]
 004438EB    call        TCanvas.SetFont
 004438F0    mov         edx,443998;'W'
 004438F5    mov         eax,dword ptr [ebp-18]
 004438F8    call        0042F464
 004438FD    mov         dword ptr [ebp-10],eax
 00443900    mov         eax,dword ptr [ebp-1C]
 00443903    add         eax,dword ptr [ebp-24]
 00443906    sub         eax,dword ptr [ebp-10]
 00443909    sar         eax,1
>0044390B    jns         00443910
 0044390D    adc         eax,0
 00443910    mov         dword ptr [ebp-24],eax
 00443913    mov         eax,dword ptr [ebp-24]
 00443916    add         eax,dword ptr [ebp-10]
 00443919    mov         dword ptr [ebp-1C],eax
 0044391C    mov         eax,dword ptr [ebp-0C]
 0044391F    movzx       eax,byte ptr [eax+220];TCustomPanel.FAlignment:TAlignment
 00443926    mov         eax,dword ptr [eax*4+56C1C8]
 0044392D    or          eax,44
 00443930    mov         dword ptr [ebp-14],eax
 00443933    mov         edx,dword ptr [ebp-14]
 00443936    mov         eax,dword ptr [ebp-0C]
 00443939    call        00486778
 0044393E    mov         dword ptr [ebp-14],eax
 00443941    mov         eax,dword ptr [ebp-14]
 00443944    push        eax
 00443945    lea         eax,[ebp-28]
 00443948    push        eax
 00443949    push        0FF
 0044394B    lea         edx,[ebp-2C]
 0044394E    mov         eax,dword ptr [ebp-0C]
 00443951    call        TPanel.GetCaption
 00443956    mov         eax,dword ptr [ebp-2C]
 00443959    call        @LStrToPChar
 0044395E    push        eax
 0044395F    mov         eax,dword ptr [ebp-18]
 00443962    call        0042F6A0
 00443967    push        eax
 00443968    call        user32.DrawTextA
 0044396D    xor         eax,eax
 0044396F    pop         edx
 00443970    pop         ecx
 00443971    pop         ecx
 00443972    mov         dword ptr fs:[eax],edx
 00443975    push        44398A
 0044397A    lea         eax,[ebp-2C]
 0044397D    call        @LStrClr
 00443982    ret
>00443983    jmp         @HandleFinally
>00443988    jmp         0044397A
 0044398A    mov         esp,ebp
 0044398C    pop         ebp
 0044398D    ret
*}
end;

//0044399C
procedure TPanel.SetAlignment(Value:TAlignment);
begin
{*
 0044399C    push        ebp
 0044399D    mov         ebp,esp
 0044399F    add         esp,0FFFFFFF8
 004439A2    mov         byte ptr [ebp-5],dl
 004439A5    mov         dword ptr [ebp-4],eax
 004439A8    mov         al,byte ptr [ebp-5]
 004439AB    mov         edx,dword ptr [ebp-4]
 004439AE    mov         byte ptr [edx+220],al;TPanel.FAlignment:TAlignment
 004439B4    mov         eax,dword ptr [ebp-4]
 004439B7    mov         edx,dword ptr [eax]
 004439B9    call        dword ptr [edx+7C];TPanel.sub_0048BE68
 004439BC    pop         ecx
 004439BD    pop         ecx
 004439BE    pop         ebp
 004439BF    ret
*}
end;

//004439C0
procedure TPanel.SetBevelInner(Value:TBevelCut);
begin
{*
 004439C0    push        ebp
 004439C1    mov         ebp,esp
 004439C3    add         esp,0FFFFFFF8
 004439C6    mov         byte ptr [ebp-5],dl
 004439C9    mov         dword ptr [ebp-4],eax
 004439CC    mov         al,byte ptr [ebp-5]
 004439CF    mov         edx,dword ptr [ebp-4]
 004439D2    mov         byte ptr [edx+211],al;TPanel.FBevelInner:TBevelCut
 004439D8    mov         eax,dword ptr [ebp-4]
 004439DB    call        004878BC
 004439E0    mov         eax,dword ptr [ebp-4]
 004439E3    mov         edx,dword ptr [eax]
 004439E5    call        dword ptr [edx+7C];TPanel.sub_0048BE68
 004439E8    pop         ecx
 004439E9    pop         ecx
 004439EA    pop         ebp
 004439EB    ret
*}
end;

//004439EC
procedure TPanel.SetBevelOuter(Value:TBevelCut);
begin
{*
 004439EC    push        ebp
 004439ED    mov         ebp,esp
 004439EF    add         esp,0FFFFFFF8
 004439F2    mov         byte ptr [ebp-5],dl
 004439F5    mov         dword ptr [ebp-4],eax
 004439F8    mov         al,byte ptr [ebp-5]
 004439FB    mov         edx,dword ptr [ebp-4]
 004439FE    mov         byte ptr [edx+212],al;TPanel.FBevelOuter:TBevelCut
 00443A04    mov         eax,dword ptr [ebp-4]
 00443A07    call        004878BC
 00443A0C    mov         eax,dword ptr [ebp-4]
 00443A0F    mov         edx,dword ptr [eax]
 00443A11    call        dword ptr [edx+7C];TPanel.sub_0048BE68
 00443A14    pop         ecx
 00443A15    pop         ecx
 00443A16    pop         ebp
 00443A17    ret
*}
end;

//00443A18
procedure TPanel.SetBevelWidth(Value:TBevelWidth);
begin
{*
 00443A18    push        ebp
 00443A19    mov         ebp,esp
 00443A1B    add         esp,0FFFFFFF8
 00443A1E    mov         dword ptr [ebp-8],edx
 00443A21    mov         dword ptr [ebp-4],eax
 00443A24    mov         eax,dword ptr [ebp-8]
 00443A27    mov         edx,dword ptr [ebp-4]
 00443A2A    mov         dword ptr [edx+214],eax;TPanel.FBevelWidth:TBevelWidth
 00443A30    mov         eax,dword ptr [ebp-4]
 00443A33    call        004878BC
 00443A38    mov         eax,dword ptr [ebp-4]
 00443A3B    mov         edx,dword ptr [eax]
 00443A3D    call        dword ptr [edx+7C];TPanel.sub_0048BE68
 00443A40    pop         ecx
 00443A41    pop         ecx
 00443A42    pop         ebp
 00443A43    ret
*}
end;

//00443A44
procedure TPanel.SetBorderWidth(Value:TBorderWidth);
begin
{*
 00443A44    push        ebp
 00443A45    mov         ebp,esp
 00443A47    add         esp,0FFFFFFF8
 00443A4A    mov         dword ptr [ebp-8],edx
 00443A4D    mov         dword ptr [ebp-4],eax
 00443A50    mov         eax,dword ptr [ebp-8]
 00443A53    mov         edx,dword ptr [ebp-4]
 00443A56    mov         dword ptr [edx+218],eax;TPanel.FBorderWidth:TBorderWidth
 00443A5C    mov         eax,dword ptr [ebp-4]
 00443A5F    call        004878BC
 00443A64    mov         eax,dword ptr [ebp-4]
 00443A67    mov         edx,dword ptr [eax]
 00443A69    call        dword ptr [edx+7C];TPanel.sub_0048BE68
 00443A6C    pop         ecx
 00443A6D    pop         ecx
 00443A6E    pop         ebp
 00443A6F    ret
*}
end;

//00443A70
procedure TPanel.SetBorderStyle(Value:TBorderStyle);
begin
{*
 00443A70    push        ebp
 00443A71    mov         ebp,esp
 00443A73    add         esp,0FFFFFFF8
 00443A76    mov         byte ptr [ebp-5],dl
 00443A79    mov         dword ptr [ebp-4],eax
 00443A7C    mov         eax,dword ptr [ebp-4]
 00443A7F    mov         al,byte ptr [eax+21C];TPanel.FBorderStyle:TBorderStyle
 00443A85    cmp         al,byte ptr [ebp-5]
>00443A88    je          00443A9E
 00443A8A    mov         al,byte ptr [ebp-5]
 00443A8D    mov         edx,dword ptr [ebp-4]
 00443A90    mov         byte ptr [edx+21C],al;TPanel.FBorderStyle:TBorderStyle
 00443A96    mov         eax,dword ptr [ebp-4]
 00443A99    call        TWinControl.RecreateWnd
 00443A9E    pop         ecx
 00443A9F    pop         ecx
 00443AA0    pop         ebp
 00443AA1    ret
*}
end;

//00443AA4
procedure TCustomPanel.sub_00443AA4;
begin
{*
 00443AA4    push        ebp
 00443AA5    mov         ebp,esp
 00443AA7    add         esp,0FFFFFFF8
 00443AAA    mov         dword ptr [ebp-4],eax
 00443AAD    mov         eax,dword ptr [ebp-4]
 00443AB0    mov         al,byte ptr [eax+220];TCustomPanel.FAlignment:TAlignment
 00443AB6    mov         byte ptr [ebp-5],al
 00443AB9    mov         al,byte ptr [ebp-5]
 00443ABC    pop         ecx
 00443ABD    pop         ecx
 00443ABE    pop         ebp
 00443ABF    ret
*}
end;

//00443AC0
{*procedure sub_00443AC0(?:?);
begin
 00443AC0    push        ebp
 00443AC1    mov         ebp,esp
 00443AC3    add         esp,0FFFFFFF4
 00443AC6    mov         dword ptr [ebp-8],edx
 00443AC9    mov         dword ptr [ebp-4],eax
 00443ACC    mov         edx,dword ptr [ebp-8]
 00443ACF    mov         eax,dword ptr [ebp-4]
 00443AD2    call        00486FB0
 00443AD7    mov         eax,dword ptr [ebp-4]
 00443ADA    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 00443AE0    neg         eax
 00443AE2    push        eax
 00443AE3    mov         eax,dword ptr [ebp-4]
 00443AE6    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 00443AEC    neg         eax
 00443AEE    push        eax
 00443AEF    mov         eax,dword ptr [ebp-8]
 00443AF2    push        eax
 00443AF3    call        user32.InflateRect
 00443AF8    xor         eax,eax
 00443AFA    mov         dword ptr [ebp-0C],eax
 00443AFD    mov         eax,dword ptr [ebp-4]
 00443B00    cmp         byte ptr [eax+212],0;TCustomPanel.FBevelOuter:TBevelCut
>00443B07    je          00443B15
 00443B09    mov         eax,dword ptr [ebp-4]
 00443B0C    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 00443B12    add         dword ptr [ebp-0C],eax
 00443B15    mov         eax,dword ptr [ebp-4]
 00443B18    cmp         byte ptr [eax+211],0;TCustomPanel.FBevelInner:TBevelCut
>00443B1F    je          00443B2D
 00443B21    mov         eax,dword ptr [ebp-4]
 00443B24    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 00443B2A    add         dword ptr [ebp-0C],eax
 00443B2D    mov         eax,dword ptr [ebp-0C]
 00443B30    neg         eax
 00443B32    push        eax
 00443B33    mov         eax,dword ptr [ebp-0C]
 00443B36    neg         eax
 00443B38    push        eax
 00443B39    mov         eax,dword ptr [ebp-8]
 00443B3C    push        eax
 00443B3D    call        user32.InflateRect
 00443B42    mov         esp,ebp
 00443B44    pop         ebp
 00443B45    ret
end;*}

//00443B48
{*procedure TCustomPanel.CMDockClient(?:?);
begin
 00443B48    push        ebp
 00443B49    mov         ebp,esp
 00443B4B    add         esp,0FFFFFFE4
 00443B4E    push        ebx
 00443B4F    push        esi
 00443B50    push        edi
 00443B51    mov         dword ptr [ebp-8],edx
 00443B54    mov         dword ptr [ebp-4],eax
 00443B57    mov         eax,dword ptr [ebp-4]
 00443B5A    cmp         byte ptr [eax+5C],0;TCustomPanel.FAutoSize:Boolean
>00443B5E    je          00443C89
 00443B64    mov         eax,dword ptr [ebp-4]
 00443B67    mov         byte ptr [eax+210],1;TCustomPanel.FAutoSizeDocking:Boolean
 00443B6E    xor         eax,eax
 00443B70    push        ebp
 00443B71    push        443C82
 00443B76    push        dword ptr fs:[eax]
 00443B79    mov         dword ptr fs:[eax],esp
 00443B7C    mov         eax,dword ptr [ebp-8]
 00443B7F    mov         eax,dword ptr [eax+4]
 00443B82    lea         esi,[eax+44]
 00443B85    lea         edi,[ebp-1C]
 00443B88    movs        dword ptr [edi],dword ptr [esi]
 00443B89    movs        dword ptr [edi],dword ptr [esi]
 00443B8A    movs        dword ptr [edi],dword ptr [esi]
 00443B8B    movs        dword ptr [edi],dword ptr [esi]
 00443B8C    mov         eax,dword ptr [ebp-4]
 00443B8F    mov         al,byte ptr [eax+5B];TCustomPanel.FAlign:TAlign
 00443B92    dec         al
>00443B94    je          00443C08
 00443B96    dec         al
>00443B98    je          00443C21
 00443B9E    dec         al
>00443BA0    je          00443BAB
 00443BA2    dec         al
>00443BA4    je          00443BCB
>00443BA6    jmp         00443C58
 00443BAB    mov         eax,dword ptr [ebp-4]
 00443BAE    cmp         dword ptr [eax+48],0;TCustomPanel.Width:Integer
>00443BB2    jne         00443C58
 00443BB8    mov         edx,dword ptr [ebp-14]
 00443BBB    sub         edx,dword ptr [ebp-1C]
 00443BBE    mov         eax,dword ptr [ebp-4]
 00443BC1    call        TSplitter.SetWidth
>00443BC6    jmp         00443C58
 00443BCB    mov         eax,dword ptr [ebp-4]
 00443BCE    cmp         dword ptr [eax+48],0;TCustomPanel.Width:Integer
>00443BD2    jne         00443C58
 00443BD8    mov         eax,dword ptr [ebp-14]
 00443BDB    sub         eax,dword ptr [ebp-1C]
 00443BDE    mov         dword ptr [ebp-0C],eax
 00443BE1    mov         eax,dword ptr [ebp-0C]
 00443BE4    push        eax
 00443BE5    mov         eax,dword ptr [ebp-4]
 00443BE8    mov         eax,dword ptr [eax+4C];TCustomPanel.Height:Integer
 00443BEB    push        eax
 00443BEC    mov         eax,dword ptr [ebp-4]
 00443BEF    mov         ecx,dword ptr [eax+44];TCustomPanel.Top:Integer
 00443BF2    mov         eax,dword ptr [ebp-4]
 00443BF5    mov         edx,dword ptr [eax+40];TCustomPanel.Left:Integer
 00443BF8    sub         edx,dword ptr [ebp-0C]
 00443BFB    mov         eax,dword ptr [ebp-4]
 00443BFE    mov         ebx,dword ptr [eax]
 00443C00    call        dword ptr [ebx+84];TCustomPanel.sub_0048B89C
>00443C06    jmp         00443C58
 00443C08    mov         eax,dword ptr [ebp-4]
 00443C0B    cmp         dword ptr [eax+4C],0;TCustomPanel.Height:Integer
>00443C0F    jne         00443C58
 00443C11    mov         edx,dword ptr [ebp-10]
 00443C14    sub         edx,dword ptr [ebp-18]
 00443C17    mov         eax,dword ptr [ebp-4]
 00443C1A    call        TToolButton.SetHeight
>00443C1F    jmp         00443C58
 00443C21    mov         eax,dword ptr [ebp-4]
 00443C24    cmp         dword ptr [eax+4C],0;TCustomPanel.Height:Integer
>00443C28    jne         00443C58
 00443C2A    mov         eax,dword ptr [ebp-10]
 00443C2D    sub         eax,dword ptr [ebp-18]
 00443C30    mov         dword ptr [ebp-0C],eax
 00443C33    mov         eax,dword ptr [ebp-4]
 00443C36    mov         eax,dword ptr [eax+48];TCustomPanel.Width:Integer
 00443C39    push        eax
 00443C3A    mov         eax,dword ptr [ebp-0C]
 00443C3D    push        eax
 00443C3E    mov         eax,dword ptr [ebp-4]
 00443C41    mov         ecx,dword ptr [eax+44];TCustomPanel.Top:Integer
 00443C44    sub         ecx,dword ptr [ebp-0C]
 00443C47    mov         eax,dword ptr [ebp-4]
 00443C4A    mov         edx,dword ptr [eax+40];TCustomPanel.Left:Integer
 00443C4D    mov         eax,dword ptr [ebp-4]
 00443C50    mov         ebx,dword ptr [eax]
 00443C52    call        dword ptr [ebx+84];TCustomPanel.sub_0048B89C
 00443C58    mov         edx,dword ptr [ebp-8]
 00443C5B    mov         eax,dword ptr [ebp-4]
 00443C5E    call        TWinControl.CMDockClient
 00443C63    call        @TryFinallyExit
>00443C68    jmp         00443C94
 00443C6A    xor         eax,eax
 00443C6C    pop         edx
 00443C6D    pop         ecx
 00443C6E    pop         ecx
 00443C6F    mov         dword ptr fs:[eax],edx
 00443C72    push        443C89
 00443C77    mov         eax,dword ptr [ebp-4]
 00443C7A    mov         byte ptr [eax+210],0;TCustomPanel.FAutoSizeDocking:Boolean
 00443C81    ret
>00443C82    jmp         @HandleFinally
>00443C87    jmp         00443C77
 00443C89    mov         edx,dword ptr [ebp-8]
 00443C8C    mov         eax,dword ptr [ebp-4]
 00443C8F    call        TWinControl.CMDockClient
 00443C94    pop         edi
 00443C95    pop         esi
 00443C96    pop         ebx
 00443C97    mov         esp,ebp
 00443C99    pop         ebp
 00443C9A    ret
end;*}

//00443C9C
{*function sub_00443C9C(?:?; ?:?):?;
begin
 00443C9C    push        ebp
 00443C9D    mov         ebp,esp
 00443C9F    add         esp,0FFFFFFF0
 00443CA2    mov         dword ptr [ebp-0C],ecx
 00443CA5    mov         dword ptr [ebp-8],edx
 00443CA8    mov         dword ptr [ebp-4],eax
 00443CAB    mov         eax,dword ptr [ebp-4]
 00443CAE    cmp         byte ptr [eax+210],0;TCustomPanel.FAutoSizeDocking:Boolean
>00443CB5    jne         00443CC9
 00443CB7    mov         ecx,dword ptr [ebp-0C]
 00443CBA    mov         edx,dword ptr [ebp-8]
 00443CBD    mov         eax,dword ptr [ebp-4]
 00443CC0    call        0048CFAC
 00443CC5    test        al,al
>00443CC7    jne         00443CCD
 00443CC9    xor         eax,eax
>00443CCB    jmp         00443CCF
 00443CCD    mov         al,1
 00443CCF    mov         byte ptr [ebp-0D],al
 00443CD2    mov         al,byte ptr [ebp-0D]
 00443CD5    mov         esp,ebp
 00443CD7    pop         ebp
 00443CD8    ret
end;*}

//00443CDC
procedure TPanel.SetParentBackground(Value:Boolean);
begin
{*
 00443CDC    push        ebp
 00443CDD    mov         ebp,esp
 00443CDF    add         esp,0FFFFFFF8
 00443CE2    mov         byte ptr [ebp-5],dl
 00443CE5    mov         dword ptr [ebp-4],eax
 00443CE8    cmp         byte ptr [ebp-5],0
>00443CEC    je          00443D03
 00443CEE    mov         eax,[00443D30];0x40 gvar_00443D30
 00443CF3    mov         edx,dword ptr [ebp-4]
 00443CF6    not         eax
 00443CF8    and         eax,dword ptr [edx+50];TPanel.FControlStyle:TControlStyle
 00443CFB    mov         edx,dword ptr [ebp-4]
 00443CFE    mov         dword ptr [edx+50],eax;TPanel.FControlStyle:TControlStyle
>00443D01    jmp         00443D14
 00443D03    mov         eax,[00443D30];0x40 gvar_00443D30
 00443D08    mov         edx,dword ptr [ebp-4]
 00443D0B    or          eax,dword ptr [edx+50];TPanel.FControlStyle:TControlStyle
 00443D0E    mov         edx,dword ptr [ebp-4]
 00443D11    mov         dword ptr [edx+50],eax;TPanel.FControlStyle:TControlStyle
 00443D14    mov         eax,dword ptr [ebp-4]
 00443D17    mov         byte ptr [eax+21F],1;TPanel.FParentBackgroundSet:Boolean
 00443D1E    mov         dl,byte ptr [ebp-5]
 00443D21    mov         eax,dword ptr [ebp-4]
 00443D24    call        TRadioGroup.SetParentBackground
 00443D29    pop         ecx
 00443D2A    pop         ecx
 00443D2B    pop         ebp
 00443D2C    ret
*}
end;

//00443E9C
constructor TGroupButton.Create;
begin
{*
 00443E9C    push        ebp
 00443E9D    mov         ebp,esp
 00443E9F    add         esp,0FFFFFFF4
 00443EA2    test        dl,dl
>00443EA4    je          00443EAE
 00443EA6    add         esp,0FFFFFFF0
 00443EA9    call        @ClassCreate
 00443EAE    mov         dword ptr [ebp-0C],ecx
 00443EB1    mov         byte ptr [ebp-5],dl
 00443EB4    mov         dword ptr [ebp-4],eax
 00443EB7    mov         ecx,dword ptr [ebp-0C]
 00443EBA    xor         edx,edx
 00443EBC    mov         eax,dword ptr [ebp-4]
 00443EBF    call        0047860C
 00443EC4    mov         edx,dword ptr [ebp-4]
 00443EC7    mov         eax,dword ptr [ebp-0C]
 00443ECA    mov         eax,dword ptr [eax+210]
 00443ED0    call        TList.Add
 00443ED5    xor         edx,edx
 00443ED7    mov         eax,dword ptr [ebp-4]
 00443EDA    call        TImage.SetVisible
 00443EDF    mov         eax,dword ptr [ebp-0C]
 00443EE2    mov         edx,dword ptr [eax]
 00443EE4    call        dword ptr [edx+50]
 00443EE7    mov         edx,eax
 00443EE9    mov         eax,dword ptr [ebp-4]
 00443EEC    mov         ecx,dword ptr [eax]
 00443EEE    call        dword ptr [ecx+64]
 00443EF1    xor         edx,edx
 00443EF3    mov         eax,dword ptr [ebp-4]
 00443EF6    call        TImage.SetParentShowHint
 00443EFB    mov         eax,dword ptr [ebp-4]
 00443EFE    mov         edx,dword ptr [ebp-0C]
 00443F01    mov         dword ptr [eax+124],edx
 00443F07    mov         dword ptr [eax+120],4443BC;sub_004443BC
 00443F11    mov         edx,dword ptr [ebp-0C]
 00443F14    mov         eax,dword ptr [ebp-4]
 00443F17    mov         ecx,dword ptr [eax]
 00443F19    call        dword ptr [ecx+68]
 00443F1C    mov         eax,dword ptr [ebp-4]
 00443F1F    cmp         byte ptr [ebp-5],0
>00443F23    je          00443F34
 00443F25    call        @AfterConstruction
 00443F2A    pop         dword ptr fs:[0]
 00443F31    add         esp,0C
 00443F34    mov         eax,dword ptr [ebp-4]
 00443F37    mov         esp,ebp
 00443F39    pop         ebp
 00443F3A    ret
*}
end;

//00443F3C
destructor TGroupButton.Destroy;
begin
{*
 00443F3C    push        ebp
 00443F3D    mov         ebp,esp
 00443F3F    add         esp,0FFFFFFF8
 00443F42    call        @BeforeDestruction
 00443F47    mov         byte ptr [ebp-5],dl
 00443F4A    mov         dword ptr [ebp-4],eax
 00443F4D    mov         eax,dword ptr [ebp-4]
 00443F50    mov         eax,dword ptr [eax+4]
 00443F53    mov         eax,dword ptr [eax+210]
 00443F59    mov         edx,dword ptr [ebp-4]
 00443F5C    call        004204F0
 00443F61    mov         dl,byte ptr [ebp-5]
 00443F64    and         dl,0FC
 00443F67    mov         eax,dword ptr [ebp-4]
 00443F6A    call        TWinControl.Destroy
 00443F6F    cmp         byte ptr [ebp-5],0
>00443F73    jle         00443F7D
 00443F75    mov         eax,dword ptr [ebp-4]
 00443F78    call        @ClassDestroy
 00443F7D    pop         ecx
 00443F7E    pop         ecx
 00443F7F    pop         ebp
 00443F80    ret
*}
end;

//00443F84
{*procedure TGroupButton.sub_00443F84(?:?);
begin
 00443F84    push        ebp
 00443F85    mov         ebp,esp
 00443F87    add         esp,0FFFFFFF8
 00443F8A    push        ebx
 00443F8B    push        esi
 00443F8C    push        edi
 00443F8D    mov         dword ptr [ebp-8],edx
 00443F90    mov         dword ptr [ebp-4],eax
 00443F93    mov         eax,dword ptr [ebp-4]
 00443F96    cmp         byte ptr [eax+218],0;TGroupButton.....FInClick:Boolean
>00443F9D    jne         00444015
 00443F9F    mov         eax,dword ptr [ebp-4]
 00443FA2    mov         byte ptr [eax+218],1;TGroupButton......FInClick:Boolean
 00443FA9    xor         eax,eax
 00443FAB    push        ebp
 00443FAC    push        443FF2
 00443FB1    push        dword ptr fs:[eax]
 00443FB4    mov         dword ptr fs:[eax],esp
 00443FB7    mov         eax,dword ptr [ebp-8]
 00443FBA    cmp         word ptr [eax+6],0
>00443FBF    je          00443FCB
 00443FC1    mov         eax,dword ptr [ebp-8]
 00443FC4    cmp         word ptr [eax+6],5
>00443FC9    jne         00443FE8
 00443FCB    mov         eax,dword ptr [ebp-4]
 00443FCE    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 00443FD1    mov         edx,dword ptr [eax]
 00443FD3    call        dword ptr [edx+0CC]
 00443FD9    test        al,al
>00443FDB    je          00443FE8
 00443FDD    mov         edx,dword ptr [ebp-8]
 00443FE0    mov         eax,dword ptr [ebp-4]
 00443FE3    call        TRadioButton.sub_004789C4
 00443FE8    xor         eax,eax
 00443FEA    pop         edx
 00443FEB    pop         ecx
 00443FEC    pop         ecx
 00443FED    mov         dword ptr fs:[eax],edx
>00443FF0    jmp         0044400B
>00443FF2    jmp         @HandleAnyException
 00443FF7    mov         eax,[0056E3C0];^Application:TApplication
 00443FFC    mov         eax,dword ptr [eax]
 00443FFE    mov         edx,dword ptr [ebp-4]
 00444001    call        TApplication.HandleException
 00444006    call        @DoneExcept
 0044400B    mov         eax,dword ptr [ebp-4]
 0044400E    mov         byte ptr [eax+218],0;TGroupButton.......FInClick:Boolean
 00444015    pop         edi
 00444016    pop         esi
 00444017    pop         ebx
 00444018    pop         ecx
 00444019    pop         ecx
 0044401A    pop         ebp
 0044401B    ret
end;*}

//0044401C
{*procedure TGroupButton.sub_0044401C(?:?);
begin
 0044401C    push        ebp
 0044401D    mov         ebp,esp
 0044401F    add         esp,0FFFFFFF8
 00444022    push        esi
 00444023    mov         dword ptr [ebp-8],edx
 00444026    mov         dword ptr [ebp-4],eax
 00444029    mov         edx,dword ptr [ebp-8]
 0044402C    mov         eax,dword ptr [ebp-4]
 0044402F    call        TWinControl.sub_0048AAD0
 00444034    mov         edx,dword ptr [ebp-8]
 00444037    mov         eax,dword ptr [ebp-4]
 0044403A    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 0044403D    mov         si,0FFBA
 00444041    call        @CallDynaInst;TWinControl.sub_0048AAD0
 00444046    mov         eax,dword ptr [ebp-8]
 00444049    cmp         byte ptr [eax],8
>0044404C    je          00444056
 0044404E    mov         eax,dword ptr [ebp-8]
 00444051    cmp         byte ptr [eax],20
>00444054    jne         0044406E
 00444056    mov         eax,dword ptr [ebp-4]
 00444059    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 0044405C    mov         edx,dword ptr [eax]
 0044405E    call        dword ptr [edx+0CC]
 00444064    test        al,al
>00444066    jne         0044406E
 00444068    mov         eax,dword ptr [ebp-8]
 0044406B    mov         byte ptr [eax],0
 0044406E    pop         esi
 0044406F    pop         ecx
 00444070    pop         ecx
 00444071    pop         ebp
 00444072    ret
end;*}

//00444074
{*procedure TGroupButton.sub_00444074(?:?; ?:?);
begin
 00444074    push        ebp
 00444075    mov         ebp,esp
 00444077    add         esp,0FFFFFFF4
 0044407A    push        esi
 0044407B    mov         byte ptr [ebp-9],cl
 0044407E    mov         dword ptr [ebp-8],edx
 00444081    mov         dword ptr [ebp-4],eax
 00444084    mov         edx,dword ptr [ebp-8]
 00444087    mov         cl,byte ptr [ebp-9]
 0044408A    mov         eax,dword ptr [ebp-4]
 0044408D    call        TWinControl.sub_0048A878
 00444092    mov         edx,dword ptr [ebp-8]
 00444095    mov         cl,byte ptr [ebp-9]
 00444098    mov         eax,dword ptr [ebp-4]
 0044409B    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 0044409E    mov         si,0FFBC
 004440A2    call        @CallDynaInst;TWinControl.sub_0048A878
 004440A7    pop         esi
 004440A8    mov         esp,ebp
 004440AA    pop         ebp
 004440AB    ret
end;*}

//004440AC
constructor sub_004440AC;
begin
{*
 004440AC    push        ebp
 004440AD    mov         ebp,esp
 004440AF    add         esp,0FFFFFFF4
 004440B2    test        dl,dl
>004440B4    je          004440BE
 004440B6    add         esp,0FFFFFFF0
 004440B9    call        @ClassCreate
 004440BE    mov         dword ptr [ebp-0C],ecx
 004440C1    mov         byte ptr [ebp-5],dl
 004440C4    mov         dword ptr [ebp-4],eax
 004440C7    mov         ecx,dword ptr [ebp-0C]
 004440CA    xor         edx,edx
 004440CC    mov         eax,dword ptr [ebp-4]
 004440CF    call        00472F48
 004440D4    mov         eax,dword ptr [ebp-4]
 004440D7    mov         edx,dword ptr ds:[44415C];0x400A0 gvar_0044415C
 004440DD    mov         dword ptr [eax+50],edx;TCustomRadioGroup.FControlStyle:TControlStyle
 004440E0    mov         dl,1
 004440E2    mov         eax,[0041D46C];TList
 004440E7    call        TObject.Create;TList.Create
 004440EC    mov         edx,dword ptr [ebp-4]
 004440EF    mov         dword ptr [edx+210],eax;TCustomRadioGroup.FButtons:TList
 004440F5    mov         dl,1
 004440F7    mov         eax,[0041DB24];TStringList
 004440FC    call        TObject.Create;TStringList.Create
 00444101    mov         edx,dword ptr [ebp-4]
 00444104    mov         dword ptr [edx+214],eax;TCustomRadioGroup.FItems:TStrings
 0044410A    mov         eax,dword ptr [ebp-4]
 0044410D    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 00444113    mov         edx,dword ptr [ebp-4]
 00444116    mov         dword ptr [eax+24],edx
 00444119    mov         dword ptr [eax+20],444408;sub_00444408
 00444120    mov         eax,dword ptr [ebp-4]
 00444123    mov         dword ptr [eax+218],0FFFFFFFF;TCustomRadioGroup.FItemIndex:Integer
 0044412D    mov         eax,dword ptr [ebp-4]
 00444130    mov         dword ptr [eax+21C],1;TCustomRadioGroup.FColumns:Integer
 0044413A    mov         eax,dword ptr [ebp-4]
 0044413D    cmp         byte ptr [ebp-5],0
>00444141    je          00444152
 00444143    call        @AfterConstruction
 00444148    pop         dword ptr fs:[0]
 0044414F    add         esp,0C
 00444152    mov         eax,dword ptr [ebp-4]
 00444155    mov         esp,ebp
 00444157    pop         ebp
 00444158    ret
*}
end;

//00444160
destructor TCustomRadioGroup.Destroy;
begin
{*
 00444160    push        ebp
 00444161    mov         ebp,esp
 00444163    add         esp,0FFFFFFF8
 00444166    call        @BeforeDestruction
 0044416B    mov         byte ptr [ebp-5],dl
 0044416E    mov         dword ptr [ebp-4],eax
 00444171    xor         edx,edx
 00444173    mov         eax,dword ptr [ebp-4]
 00444176    call        004444B4
 0044417B    mov         eax,dword ptr [ebp-4]
 0044417E    mov         eax,dword ptr [eax+214]
 00444184    xor         edx,edx
 00444186    mov         dword ptr [eax+20],edx
 00444189    mov         dword ptr [eax+24],edx
 0044418C    mov         eax,dword ptr [ebp-4]
 0044418F    mov         eax,dword ptr [eax+214]
 00444195    call        TObject.Free
 0044419A    mov         eax,dword ptr [ebp-4]
 0044419D    mov         eax,dword ptr [eax+210]
 004441A3    call        TObject.Free
 004441A8    mov         dl,byte ptr [ebp-5]
 004441AB    and         dl,0FC
 004441AE    mov         eax,dword ptr [ebp-4]
 004441B1    call        TCustomControl.Destroy
 004441B6    cmp         byte ptr [ebp-5],0
>004441BA    jle         004441C4
 004441BC    mov         eax,dword ptr [ebp-4]
 004441BF    call        @ClassDestroy
 004441C4    pop         ecx
 004441C5    pop         ecx
 004441C6    pop         ebp
 004441C7    ret
*}
end;

//004441C8
{*procedure TCustomRadioGroup.sub_004441C8(?:?);
begin
 004441C8    push        ebp
 004441C9    mov         ebp,esp
 004441CB    add         esp,0FFFFFFF8
 004441CE    mov         byte ptr [ebp-5],dl
 004441D1    mov         dword ptr [ebp-4],eax
 004441D4    pop         ecx
 004441D5    pop         ecx
 004441D6    pop         ebp
 004441D7    ret
end;*}

//004441D8
procedure sub_004441D8(?:TCustomRadioGroup);
begin
{*
 004441D8    push        ebp
 004441D9    mov         ebp,esp
 004441DB    add         esp,0FFFFFF98
 004441DE    push        esi
 004441DF    mov         dword ptr [ebp-4],eax
 004441E2    mov         eax,dword ptr [ebp-4]
 004441E5    mov         eax,dword ptr [eax+210]
 004441EB    cmp         dword ptr [eax+8],0
>004441EF    je          004443B7
 004441F5    mov         eax,dword ptr [ebp-4]
 004441F8    cmp         byte ptr [eax+220],0
>004441FF    jne         004443B7
 00444205    push        0
 00444207    call        user32.GetDC
 0044420C    mov         dword ptr [ebp-1C],eax
 0044420F    mov         eax,dword ptr [ebp-4]
 00444212    mov         eax,dword ptr [eax+68]
 00444215    call        0042E12C
 0044421A    push        eax
 0044421B    mov         eax,dword ptr [ebp-1C]
 0044421E    push        eax
 0044421F    call        gdi32.SelectObject
 00444224    mov         dword ptr [ebp-20],eax
 00444227    lea         eax,[ebp-68]
 0044422A    push        eax
 0044422B    mov         eax,dword ptr [ebp-1C]
 0044422E    push        eax
 0044422F    call        gdi32.GetTextMetricsA
 00444234    mov         eax,dword ptr [ebp-20]
 00444237    push        eax
 00444238    mov         eax,dword ptr [ebp-1C]
 0044423B    push        eax
 0044423C    call        gdi32.SelectObject
 00444241    mov         eax,dword ptr [ebp-1C]
 00444244    push        eax
 00444245    push        0
 00444247    call        user32.ReleaseDC
 0044424C    mov         eax,dword ptr [ebp-4]
 0044424F    mov         eax,dword ptr [eax+210]
 00444255    mov         eax,dword ptr [eax+8]
 00444258    mov         edx,dword ptr [ebp-4]
 0044425B    add         eax,dword ptr [edx+21C]
 00444261    dec         eax
 00444262    mov         edx,dword ptr [ebp-4]
 00444265    mov         ecx,dword ptr [edx+21C]
 0044426B    cdq
 0044426C    idiv        eax,ecx
 0044426E    mov         dword ptr [ebp-8],eax
 00444271    mov         eax,dword ptr [ebp-4]
 00444274    mov         eax,dword ptr [eax+48]
 00444277    sub         eax,0A
 0044427A    mov         edx,dword ptr [ebp-4]
 0044427D    mov         ecx,dword ptr [edx+21C]
 00444283    cdq
 00444284    idiv        eax,ecx
 00444286    mov         dword ptr [ebp-0C],eax
 00444289    mov         eax,dword ptr [ebp-4]
 0044428C    mov         eax,dword ptr [eax+4C]
 0044428F    sub         eax,dword ptr [ebp-68]
 00444292    sub         eax,5
 00444295    mov         dword ptr [ebp-18],eax
 00444298    mov         eax,dword ptr [ebp-18]
 0044429B    cdq
 0044429C    idiv        eax,dword ptr [ebp-8]
 0044429F    mov         dword ptr [ebp-10],eax
 004442A2    mov         eax,dword ptr [ebp-18]
 004442A5    cdq
 004442A6    idiv        eax,dword ptr [ebp-8]
 004442A9    sar         edx,1
>004442AB    jns         004442B0
 004442AD    adc         edx,0
 004442B0    mov         eax,dword ptr [ebp-68]
 004442B3    inc         eax
 004442B4    add         edx,eax
 004442B6    mov         dword ptr [ebp-14],edx
 004442B9    mov         eax,dword ptr [ebp-4]
 004442BC    mov         eax,dword ptr [eax+210]
 004442C2    mov         eax,dword ptr [eax+8]
 004442C5    push        eax
 004442C6    call        user32.BeginDeferWindowPos
 004442CB    mov         dword ptr [ebp-24],eax
 004442CE    xor         eax,eax
 004442D0    push        ebp
 004442D1    push        4443B0
 004442D6    push        dword ptr fs:[eax]
 004442D9    mov         dword ptr fs:[eax],esp
 004442DC    mov         eax,dword ptr [ebp-4]
 004442DF    mov         eax,dword ptr [eax+210]
 004442E5    mov         eax,dword ptr [eax+8]
 004442E8    dec         eax
 004442E9    test        eax,eax
>004442EB    jl          00444399
 004442F1    inc         eax
 004442F2    mov         dword ptr [ebp-2C],eax
 004442F5    mov         dword ptr [ebp-18],0
 004442FC    mov         eax,dword ptr [ebp-4]
 004442FF    mov         eax,dword ptr [eax+210]
 00444305    mov         edx,dword ptr [ebp-18]
 00444308    call        TList.Get
 0044430D    mov         dword ptr [ebp-30],eax
 00444310    mov         eax,dword ptr [ebp-4]
 00444313    mov         dl,byte ptr [eax+5F]
 00444316    mov         eax,dword ptr [ebp-30]
 00444319    mov         ecx,dword ptr [eax]
 0044431B    call        dword ptr [ecx+70]
 0044431E    mov         eax,dword ptr [ebp-18]
 00444321    cdq
 00444322    idiv        eax,dword ptr [ebp-8]
 00444325    imul        dword ptr [ebp-0C]
 00444328    add         eax,8
 0044432B    mov         dword ptr [ebp-28],eax
 0044432E    mov         eax,dword ptr [ebp-30]
 00444331    mov         si,0FFC8
 00444335    call        @CallDynaInst
 0044433A    test        al,al
>0044433C    je          0044434F
 0044433E    mov         eax,dword ptr [ebp-4]
 00444341    call        TControl.GetClientWidth
 00444346    sub         eax,dword ptr [ebp-28]
 00444349    sub         eax,dword ptr [ebp-0C]
 0044434C    mov         dword ptr [ebp-28],eax
 0044434F    push        14
 00444351    mov         eax,dword ptr [ebp-10]
 00444354    push        eax
 00444355    mov         eax,dword ptr [ebp-0C]
 00444358    push        eax
 00444359    mov         eax,dword ptr [ebp-18]
 0044435C    cdq
 0044435D    idiv        eax,dword ptr [ebp-8]
 00444360    imul        edx,dword ptr [ebp-10]
 00444364    add         edx,dword ptr [ebp-14]
 00444367    push        edx
 00444368    mov         eax,dword ptr [ebp-28]
 0044436B    push        eax
 0044436C    push        0
 0044436E    mov         eax,dword ptr [ebp-30]
 00444371    call        TWinControl.GetHandle
 00444376    push        eax
 00444377    mov         eax,dword ptr [ebp-24]
 0044437A    push        eax
 0044437B    call        user32.DeferWindowPos
 00444380    mov         dword ptr [ebp-24],eax
 00444383    mov         dl,1
 00444385    mov         eax,dword ptr [ebp-30]
 00444388    call        TImage.SetVisible
 0044438D    inc         dword ptr [ebp-18]
 00444390    dec         dword ptr [ebp-2C]
>00444393    jne         004442FC
 00444399    xor         eax,eax
 0044439B    pop         edx
 0044439C    pop         ecx
 0044439D    pop         ecx
 0044439E    mov         dword ptr fs:[eax],edx
 004443A1    push        4443B7
 004443A6    mov         eax,dword ptr [ebp-24]
 004443A9    push        eax
 004443AA    call        user32.EndDeferWindowPos
 004443AF    ret
>004443B0    jmp         @HandleFinally
>004443B5    jmp         004443A6
 004443B7    pop         esi
 004443B8    mov         esp,ebp
 004443BA    pop         ebp
 004443BB    ret
*}
end;

//004443BC
{*procedure sub_004443BC(?:?; ?:?);
begin
 004443BC    push        ebp
 004443BD    mov         ebp,esp
 004443BF    add         esp,0FFFFFFF8
 004443C2    push        esi
 004443C3    mov         dword ptr [ebp-8],edx
 004443C6    mov         dword ptr [ebp-4],eax
 004443C9    mov         eax,dword ptr [ebp-4]
 004443CC    cmp         byte ptr [eax+221],0
>004443D3    jne         00444403
 004443D5    mov         edx,dword ptr [ebp-8]
 004443D8    mov         eax,dword ptr [ebp-4]
 004443DB    mov         eax,dword ptr [eax+210]
 004443E1    call        004202BC
 004443E6    mov         edx,dword ptr [ebp-4]
 004443E9    mov         dword ptr [edx+218],eax
 004443EF    mov         eax,dword ptr [ebp-4]
 004443F2    call        00483218
 004443F7    mov         eax,dword ptr [ebp-4]
 004443FA    mov         si,0FFEB
 004443FE    call        @CallDynaInst
 00444403    pop         esi
 00444404    pop         ecx
 00444405    pop         ecx
 00444406    pop         ebp
 00444407    ret
end;*}

//00444408
{*procedure sub_00444408(?:?; ?:?);
begin
 00444408    push        ebp
 00444409    mov         ebp,esp
 0044440B    add         esp,0FFFFFFF8
 0044440E    mov         dword ptr [ebp-8],edx
 00444411    mov         dword ptr [ebp-4],eax
 00444414    mov         eax,dword ptr [ebp-4]
 00444417    cmp         byte ptr [eax+220],0
>0044441E    jne         00444459
 00444420    mov         eax,dword ptr [ebp-4]
 00444423    mov         eax,dword ptr [eax+214]
 00444429    mov         edx,dword ptr [eax]
 0044442B    call        dword ptr [edx+14]
 0044442E    mov         edx,dword ptr [ebp-4]
 00444431    cmp         eax,dword ptr [edx+218]
>00444437    jg          00444451
 00444439    mov         eax,dword ptr [ebp-4]
 0044443C    mov         eax,dword ptr [eax+214]
 00444442    mov         edx,dword ptr [eax]
 00444444    call        dword ptr [edx+14]
 00444447    dec         eax
 00444448    mov         edx,dword ptr [ebp-4]
 0044444B    mov         dword ptr [edx+218],eax
 00444451    mov         eax,dword ptr [ebp-4]
 00444454    call        00444654
 00444459    pop         ecx
 0044445A    pop         ecx
 0044445B    pop         ebp
 0044445C    ret
end;*}

//00444460
procedure sub_00444460;
begin
{*
 00444460    push        ebp
 00444461    mov         ebp,esp
 00444463    push        ecx
 00444464    mov         dword ptr [ebp-4],eax
 00444467    mov         eax,dword ptr [ebp-4]
 0044446A    call        004864B8
 0044446F    mov         eax,dword ptr [ebp-4]
 00444472    call        004441D8
 00444477    pop         ecx
 00444478    pop         ebp
 00444479    ret
*}
end;

//0044447C
{*procedure sub_0044447C(?:?);
begin
 0044447C    push        ebp
 0044447D    mov         ebp,esp
 0044447F    add         esp,0FFFFFFF8
 00444482    mov         dword ptr [ebp-8],edx
 00444485    mov         dword ptr [ebp-4],eax
 00444488    mov         eax,dword ptr [ebp-4]
 0044448B    mov         byte ptr [eax+220],1;TCustomRadioGroup.FReading:Boolean
 00444492    mov         edx,dword ptr [ebp-8]
 00444495    mov         eax,dword ptr [ebp-4]
 00444498    call        00486F38
 0044449D    mov         eax,dword ptr [ebp-4]
 004444A0    mov         byte ptr [eax+220],0;TCustomRadioGroup.FReading:Boolean
 004444A7    mov         eax,dword ptr [ebp-4]
 004444AA    call        00444654
 004444AF    pop         ecx
 004444B0    pop         ecx
 004444B1    pop         ebp
 004444B2    ret
end;*}

//004444B4
{*procedure sub_004444B4(?:TCustomRadioGroup; ?:?);
begin
 004444B4    push        ebp
 004444B5    mov         ebp,esp
 004444B7    add         esp,0FFFFFFF8
 004444BA    mov         dword ptr [ebp-8],edx
 004444BD    mov         dword ptr [ebp-4],eax
>004444C0    jmp         004444D1
 004444C2    mov         ecx,dword ptr [ebp-4]
 004444C5    mov         dl,1
 004444C7    mov         eax,[00443D34];TGroupButton
 004444CC    call        TGroupButton.Create;TGroupButton.Create
 004444D1    mov         eax,dword ptr [ebp-4]
 004444D4    mov         eax,dword ptr [eax+210]
 004444DA    mov         eax,dword ptr [eax+8]
 004444DD    cmp         eax,dword ptr [ebp-8]
>004444E0    jl          004444C2
>004444E2    jmp         004444F7
 004444E4    mov         eax,dword ptr [ebp-4]
 004444E7    mov         eax,dword ptr [eax+210]
 004444ED    call        004203B8
 004444F2    call        TObject.Free
 004444F7    mov         eax,dword ptr [ebp-4]
 004444FA    mov         eax,dword ptr [eax+210]
 00444500    mov         eax,dword ptr [eax+8]
 00444503    cmp         eax,dword ptr [ebp-8]
>00444506    jg          004444E4
 00444508    pop         ecx
 00444509    pop         ecx
 0044450A    pop         ebp
 0044450B    ret
end;*}

//0044450C
procedure TRadioGroup.SetColumns(Value:Integer);
begin
{*
 0044450C    push        ebp
 0044450D    mov         ebp,esp
 0044450F    add         esp,0FFFFFFF8
 00444512    mov         dword ptr [ebp-8],edx
 00444515    mov         dword ptr [ebp-4],eax
 00444518    cmp         dword ptr [ebp-8],1
>0044451C    jge         00444525
 0044451E    mov         dword ptr [ebp-8],1
 00444525    cmp         dword ptr [ebp-8],10
>00444529    jle         00444532
 0044452B    mov         dword ptr [ebp-8],10
 00444532    mov         eax,dword ptr [ebp-4]
 00444535    mov         eax,dword ptr [eax+21C];TRadioGroup.FColumns:Integer
 0044453B    cmp         eax,dword ptr [ebp-8]
>0044453E    je          0044455C
 00444540    mov         eax,dword ptr [ebp-8]
 00444543    mov         edx,dword ptr [ebp-4]
 00444546    mov         dword ptr [edx+21C],eax;TRadioGroup.FColumns:Integer
 0044454C    mov         eax,dword ptr [ebp-4]
 0044454F    call        004441D8
 00444554    mov         eax,dword ptr [ebp-4]
 00444557    mov         edx,dword ptr [eax]
 00444559    call        dword ptr [edx+7C];TRadioGroup.sub_0048BE68
 0044455C    pop         ecx
 0044455D    pop         ecx
 0044455E    pop         ebp
 0044455F    ret
*}
end;

//00444560
procedure TRadioGroup.SetItemIndex(Value:Integer);
begin
{*
 00444560    push        ebp
 00444561    mov         ebp,esp
 00444563    add         esp,0FFFFFFF8
 00444566    mov         dword ptr [ebp-8],edx
 00444569    mov         dword ptr [ebp-4],eax
 0044456C    mov         eax,dword ptr [ebp-4]
 0044456F    cmp         byte ptr [eax+220],0;TRadioGroup.FReading:Boolean
>00444576    je          00444589
 00444578    mov         eax,dword ptr [ebp-8]
 0044457B    mov         edx,dword ptr [ebp-4]
 0044457E    mov         dword ptr [edx+218],eax;TRadioGroup.FItemIndex:Integer
>00444584    jmp         0044462B
 00444589    cmp         dword ptr [ebp-8],0FFFFFFFF
>0044458D    jge         00444596
 0044458F    mov         dword ptr [ebp-8],0FFFFFFFF
 00444596    mov         eax,dword ptr [ebp-4]
 00444599    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 0044459F    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004445A2    cmp         eax,dword ptr [ebp-8]
>004445A5    jg          004445B7
 004445A7    mov         eax,dword ptr [ebp-4]
 004445AA    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 004445B0    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004445B3    dec         eax
 004445B4    mov         dword ptr [ebp-8],eax
 004445B7    mov         eax,dword ptr [ebp-4]
 004445BA    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 004445C0    cmp         eax,dword ptr [ebp-8]
>004445C3    je          0044462B
 004445C5    mov         eax,dword ptr [ebp-4]
 004445C8    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>004445CF    jl          004445F2
 004445D1    mov         eax,dword ptr [ebp-4]
 004445D4    mov         edx,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 004445DA    mov         eax,dword ptr [ebp-4]
 004445DD    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 004445E3    call        TList.Get
 004445E8    xor         edx,edx
 004445EA    mov         ecx,dword ptr [eax]
 004445EC    call        dword ptr [ecx+0CC]
 004445F2    mov         eax,dword ptr [ebp-8]
 004445F5    mov         edx,dword ptr [ebp-4]
 004445F8    mov         dword ptr [edx+218],eax;TRadioGroup.FItemIndex:Integer
 004445FE    mov         eax,dword ptr [ebp-4]
 00444601    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>00444608    jl          0044462B
 0044460A    mov         eax,dword ptr [ebp-4]
 0044460D    mov         edx,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 00444613    mov         eax,dword ptr [ebp-4]
 00444616    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 0044461C    call        TList.Get
 00444621    mov         dl,1
 00444623    mov         ecx,dword ptr [eax]
 00444625    call        dword ptr [ecx+0CC]
 0044462B    pop         ecx
 0044462C    pop         ecx
 0044462D    pop         ebp
 0044462E    ret
*}
end;

//00444630
procedure TRadioGroup.SetItems(Value:TStrings);
begin
{*
 00444630    push        ebp
 00444631    mov         ebp,esp
 00444633    add         esp,0FFFFFFF8
 00444636    mov         dword ptr [ebp-8],edx
 00444639    mov         dword ptr [ebp-4],eax
 0044463C    mov         edx,dword ptr [ebp-8]
 0044463F    mov         eax,dword ptr [ebp-4]
 00444642    mov         eax,dword ptr [eax+214];TRadioGroup.FItems:TStrings
 00444648    mov         ecx,dword ptr [eax]
 0044464A    call        dword ptr [ecx+8];TStrings.sub_00421BB0
 0044464D    pop         ecx
 0044464E    pop         ecx
 0044464F    pop         ebp
 00444650    ret
*}
end;

//00444654
procedure sub_00444654(?:TCustomRadioGroup);
begin
{*
 00444654    push        ebp
 00444655    mov         ebp,esp
 00444657    add         esp,0FFFFFFF0
 0044465A    push        ebx
 0044465B    xor         edx,edx
 0044465D    mov         dword ptr [ebp-10],edx
 00444660    mov         dword ptr [ebp-4],eax
 00444663    xor         eax,eax
 00444665    push        ebp
 00444666    push        444743
 0044466B    push        dword ptr fs:[eax]
 0044466E    mov         dword ptr fs:[eax],esp
 00444671    mov         eax,dword ptr [ebp-4]
 00444674    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 0044467A    mov         edx,dword ptr [eax]
 0044467C    call        dword ptr [edx+14];@AbstractError
 0044467F    mov         edx,eax
 00444681    mov         eax,dword ptr [ebp-4]
 00444684    call        004444B4
 00444689    mov         eax,dword ptr [ebp-4]
 0044468C    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 00444692    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00444695    dec         eax
 00444696    test        eax,eax
>00444698    jl          004446DC
 0044469A    inc         eax
 0044469B    mov         dword ptr [ebp-0C],eax
 0044469E    mov         dword ptr [ebp-8],0
 004446A5    lea         ecx,[ebp-10]
 004446A8    mov         edx,dword ptr [ebp-8]
 004446AB    mov         eax,dword ptr [ebp-4]
 004446AE    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 004446B4    mov         ebx,dword ptr [eax]
 004446B6    call        dword ptr [ebx+0C];@AbstractError
 004446B9    mov         eax,dword ptr [ebp-10]
 004446BC    push        eax
 004446BD    mov         edx,dword ptr [ebp-8]
 004446C0    mov         eax,dword ptr [ebp-4]
 004446C3    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 004446C9    call        TList.Get
 004446CE    pop         edx
 004446CF    call        TPanel.SetCaption
 004446D4    inc         dword ptr [ebp-8]
 004446D7    dec         dword ptr [ebp-0C]
>004446DA    jne         004446A5
 004446DC    mov         eax,dword ptr [ebp-4]
 004446DF    cmp         dword ptr [eax+218],0;TCustomRadioGroup.FItemIndex:Integer
>004446E6    jl          0044471D
 004446E8    mov         eax,dword ptr [ebp-4]
 004446EB    mov         byte ptr [eax+221],1;TCustomRadioGroup.FUpdating:Boolean
 004446F2    mov         eax,dword ptr [ebp-4]
 004446F5    mov         edx,dword ptr [eax+218];TCustomRadioGroup.FItemIndex:Integer
 004446FB    mov         eax,dword ptr [ebp-4]
 004446FE    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 00444704    call        TList.Get
 00444709    mov         dl,1
 0044470B    mov         ecx,dword ptr [eax]
 0044470D    call        dword ptr [ecx+0CC]
 00444713    mov         eax,dword ptr [ebp-4]
 00444716    mov         byte ptr [eax+221],0;TCustomRadioGroup.FUpdating:Boolean
 0044471D    mov         eax,dword ptr [ebp-4]
 00444720    call        004441D8
 00444725    mov         eax,dword ptr [ebp-4]
 00444728    mov         edx,dword ptr [eax]
 0044472A    call        dword ptr [edx+7C];TCustomRadioGroup.sub_0048BE68
 0044472D    xor         eax,eax
 0044472F    pop         edx
 00444730    pop         ecx
 00444731    pop         ecx
 00444732    mov         dword ptr fs:[eax],edx
 00444735    push        44474A
 0044473A    lea         eax,[ebp-10]
 0044473D    call        @LStrClr
 00444742    ret
>00444743    jmp         @HandleFinally
>00444748    jmp         0044473A
 0044474A    pop         ebx
 0044474B    mov         esp,ebp
 0044474D    pop         ebp
 0044474E    ret
*}
end;

//00444750
{*procedure TCustomRadioGroup.CMEnabledChanged(?:?);
begin
 00444750    push        ebp
 00444751    mov         ebp,esp
 00444753    add         esp,0FFFFFFF0
 00444756    mov         dword ptr [ebp-8],edx
 00444759    mov         dword ptr [ebp-4],eax
 0044475C    mov         edx,dword ptr [ebp-8]
 0044475F    mov         eax,dword ptr [ebp-4]
 00444762    call        TWinControl.CMEnabledChanged
 00444767    mov         eax,dword ptr [ebp-4]
 0044476A    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 00444770    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00444773    dec         eax
 00444774    test        eax,eax
>00444776    jl          004447AB
 00444778    inc         eax
 00444779    mov         dword ptr [ebp-10],eax
 0044477C    mov         dword ptr [ebp-0C],0
 00444783    mov         eax,dword ptr [ebp-4]
 00444786    mov         edx,dword ptr [eax]
 00444788    call        dword ptr [edx+50];TImage.GetEnabled
 0044478B    push        eax
 0044478C    mov         edx,dword ptr [ebp-0C]
 0044478F    mov         eax,dword ptr [ebp-4]
 00444792    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 00444798    call        TList.Get
 0044479D    pop         edx
 0044479E    mov         ecx,dword ptr [eax]
 004447A0    call        dword ptr [ecx+64]
 004447A3    inc         dword ptr [ebp-0C]
 004447A6    dec         dword ptr [ebp-10]
>004447A9    jne         00444783
 004447AB    mov         esp,ebp
 004447AD    pop         ebp
 004447AE    ret
end;*}

//004447B0
{*procedure TCustomRadioGroup.CMFontChanged(?:?);
begin
 004447B0    push        ebp
 004447B1    mov         ebp,esp
 004447B3    add         esp,0FFFFFFF8
 004447B6    mov         dword ptr [ebp-8],edx
 004447B9    mov         dword ptr [ebp-4],eax
 004447BC    mov         edx,dword ptr [ebp-8]
 004447BF    mov         eax,dword ptr [ebp-4]
 004447C2    call        TWinControl.CMFontChanged
 004447C7    mov         eax,dword ptr [ebp-4]
 004447CA    call        004441D8
 004447CF    pop         ecx
 004447D0    pop         ecx
 004447D1    pop         ebp
 004447D2    ret
end;*}

//004447D4
{*procedure TCustomRadioGroup.WMSize(?:?);
begin
 004447D4    push        ebp
 004447D5    mov         ebp,esp
 004447D7    add         esp,0FFFFFFF8
 004447DA    mov         dword ptr [ebp-8],edx
 004447DD    mov         dword ptr [ebp-4],eax
 004447E0    mov         edx,dword ptr [ebp-8]
 004447E3    mov         eax,dword ptr [ebp-4]
 004447E6    call        TCustomGroupBox.WMSize
 004447EB    mov         eax,dword ptr [ebp-4]
 004447EE    call        004441D8
 004447F3    pop         ecx
 004447F4    pop         ecx
 004447F5    pop         ebp
 004447F6    ret
end;*}

//004447F8
{*function sub_004447F8:?;
begin
 004447F8    push        ebp
 004447F9    mov         ebp,esp
 004447FB    add         esp,0FFFFFFF8
 004447FE    mov         dword ptr [ebp-4],eax
 00444801    mov         byte ptr [ebp-5],1
 00444805    mov         al,byte ptr [ebp-5]
 00444808    pop         ecx
 00444809    pop         ecx
 0044480A    pop         ebp
 0044480B    ret
end;*}

//0044480C
{*procedure TCustomRadioGroup.sub_0042A788(?:?; ?:?);
begin
 0044480C    push        ebp
 0044480D    mov         ebp,esp
 0044480F    add         esp,0FFFFFFF8
 00444812    mov         dword ptr [ebp-8],edx
 00444815    mov         dword ptr [ebp-4],eax
 00444818    pop         ecx
 00444819    pop         ecx
 0044481A    pop         ebp
 0044481B    ret         8
end;*}

//00444820
constructor sub_00444820;
begin
{*
 00444820    push        ebp
 00444821    mov         ebp,esp
 00444823    add         esp,0FFFFFFF4
 00444826    test        dl,dl
>00444828    je          00444832
 0044482A    add         esp,0FFFFFFF0
 0044482D    call        @ClassCreate
 00444832    mov         dword ptr [ebp-0C],ecx
 00444835    mov         byte ptr [ebp-5],dl
 00444838    mov         dword ptr [ebp-4],eax
 0044483B    mov         ecx,dword ptr [ebp-0C]
 0044483E    xor         edx,edx
 00444840    mov         eax,dword ptr [ebp-4]
 00444843    call        0048D848
 00444848    mov         eax,dword ptr [ebp-4]
 0044484B    mov         byte ptr [eax+16C],1;TSplitter.AutoSnap:Boolean
 00444852    mov         dl,3
 00444854    mov         eax,dword ptr [ebp-4]
 00444857    call        TImage.SetAlign
 0044485C    mov         edx,3
 00444861    mov         eax,dword ptr [ebp-4]
 00444864    call        TSplitter.SetWidth
 00444869    mov         dx,0FFF2
 0044486D    mov         eax,dword ptr [ebp-4]
 00444870    call        TSplitter.SetCursor
 00444875    mov         eax,dword ptr [ebp-4]
 00444878    mov         dword ptr [eax+188],1E;TSplitter.MinSize:NaturalNumber
 00444882    mov         eax,dword ptr [ebp-4]
 00444885    mov         byte ptr [eax+1A8],3;TSplitter.ResizeStyle:TResizeStyle
 0044488C    mov         eax,dword ptr [ebp-4]
 0044488F    mov         dword ptr [eax+1A0],0FFFFFFFF;TSplitter.FOldSize:Integer
 00444899    mov         eax,dword ptr [ebp-4]
 0044489C    cmp         byte ptr [ebp-5],0
>004448A0    je          004448B1
 004448A2    call        @AfterConstruction
 004448A7    pop         dword ptr fs:[0]
 004448AE    add         esp,0C
 004448B1    mov         eax,dword ptr [ebp-4]
 004448B4    mov         esp,ebp
 004448B6    pop         ebp
 004448B7    ret
*}
end;

//004448B8
destructor TSplitter.Destroy;
begin
{*
 004448B8    push        ebp
 004448B9    mov         ebp,esp
 004448BB    add         esp,0FFFFFFF8
 004448BE    call        @BeforeDestruction
 004448C3    mov         byte ptr [ebp-5],dl
 004448C6    mov         dword ptr [ebp-4],eax
 004448C9    mov         eax,dword ptr [ebp-4]
 004448CC    mov         eax,dword ptr [eax+170]
 004448D2    call        TObject.Free
 004448D7    mov         dl,byte ptr [ebp-5]
 004448DA    and         dl,0FC
 004448DD    mov         eax,dword ptr [ebp-4]
 004448E0    call        TGraphicControl.Destroy
 004448E5    cmp         byte ptr [ebp-5],0
>004448E9    jle         004448F3
 004448EB    mov         eax,dword ptr [ebp-4]
 004448EE    call        @ClassDestroy
 004448F3    pop         ecx
 004448F4    pop         ecx
 004448F5    pop         ebp
 004448F6    ret
*}
end;

//004448F8
procedure sub_004448F8(?:TSplitter);
begin
{*
 004448F8    push        ebp
 004448F9    mov         ebp,esp
 004448FB    push        ecx
 004448FC    mov         dword ptr [ebp-4],eax
 004448FF    push        412
 00444904    push        0
 00444906    mov         eax,dword ptr [ebp-4]
 00444909    mov         eax,dword ptr [eax+30]
 0044490C    call        TWinControl.GetHandle
 00444911    push        eax
 00444912    call        user32.GetDCEx
 00444917    mov         edx,dword ptr [ebp-4]
 0044491A    mov         dword ptr [edx+180],eax
 00444920    mov         eax,dword ptr [ebp-4]
 00444923    cmp         byte ptr [eax+1A8],3
>0044492A    jne         00444990
 0044492C    mov         eax,dword ptr [ebp-4]
 0044492F    cmp         dword ptr [eax+170],0
>00444936    jne         00444969
 00444938    mov         dl,1
 0044493A    mov         eax,[0042C774];TBrush
 0044493F    call        TBrush.Create;TBrush.Create
 00444944    mov         edx,dword ptr [ebp-4]
 00444947    mov         dword ptr [edx+170],eax
 0044494D    mov         edx,0FFFFFF
 00444952    xor         eax,eax
 00444954    call        00436FC8
 00444959    mov         edx,eax
 0044495B    mov         eax,dword ptr [ebp-4]
 0044495E    mov         eax,dword ptr [eax+170]
 00444964    call        0042EA6C
 00444969    mov         eax,dword ptr [ebp-4]
 0044496C    mov         eax,dword ptr [eax+170]
 00444972    call        TBrush.GetHandle
 00444977    push        eax
 00444978    mov         eax,dword ptr [ebp-4]
 0044497B    mov         eax,dword ptr [eax+180]
 00444981    push        eax
 00444982    call        gdi32.SelectObject
 00444987    mov         edx,dword ptr [ebp-4]
 0044498A    mov         dword ptr [edx+1A4],eax
 00444990    pop         ecx
 00444991    pop         ebp
 00444992    ret
*}
end;

//00444994
procedure sub_00444994(?:TSplitter);
begin
{*
 00444994    push        ebp
 00444995    mov         ebp,esp
 00444997    add         esp,0FFFFFFF4
 0044499A    mov         dword ptr [ebp-4],eax
 0044499D    mov         eax,dword ptr [ebp-4]
 004449A0    mov         al,byte ptr [eax+184]
 004449A6    xor         al,1
 004449A8    mov         edx,dword ptr [ebp-4]
 004449AB    mov         byte ptr [edx+184],al
 004449B1    lea         ecx,[ebp-0C]
 004449B4    mov         eax,dword ptr [ebp-4]
 004449B7    mov         edx,dword ptr [eax+44]
 004449BA    mov         eax,dword ptr [ebp-4]
 004449BD    mov         eax,dword ptr [eax+40]
 004449C0    call        Point
 004449C5    mov         eax,dword ptr [ebp-4]
 004449C8    mov         al,byte ptr [eax+5B]
 004449CB    add         al,0FD
 004449CD    sub         al,2
>004449CF    jae         004449E5
 004449D1    mov         eax,dword ptr [ebp-4]
 004449D4    mov         eax,dword ptr [eax+40]
 004449D7    mov         edx,dword ptr [ebp-4]
 004449DA    add         eax,dword ptr [edx+1AC]
 004449E0    mov         dword ptr [ebp-0C],eax
>004449E3    jmp         004449F7
 004449E5    mov         eax,dword ptr [ebp-4]
 004449E8    mov         eax,dword ptr [eax+44]
 004449EB    mov         edx,dword ptr [ebp-4]
 004449EE    add         eax,dword ptr [edx+1AC]
 004449F4    mov         dword ptr [ebp-8],eax
 004449F7    push        5A0049
 004449FC    mov         eax,dword ptr [ebp-4]
 004449FF    mov         eax,dword ptr [eax+4C]
 00444A02    push        eax
 00444A03    mov         eax,dword ptr [ebp-4]
 00444A06    mov         eax,dword ptr [eax+48]
 00444A09    push        eax
 00444A0A    mov         eax,dword ptr [ebp-8]
 00444A0D    push        eax
 00444A0E    mov         eax,dword ptr [ebp-0C]
 00444A11    push        eax
 00444A12    mov         eax,dword ptr [ebp-4]
 00444A15    mov         eax,dword ptr [eax+180]
 00444A1B    push        eax
 00444A1C    call        gdi32.PatBlt
 00444A21    mov         esp,ebp
 00444A23    pop         ebp
 00444A24    ret
*}
end;

//00444A28
procedure sub_00444A28(?:TSplitter);
begin
{*
 00444A28    push        ebp
 00444A29    mov         ebp,esp
 00444A2B    push        ecx
 00444A2C    mov         dword ptr [ebp-4],eax
 00444A2F    mov         eax,dword ptr [ebp-4]
 00444A32    cmp         dword ptr [eax+1A4],0
>00444A39    je          00444A54
 00444A3B    mov         eax,dword ptr [ebp-4]
 00444A3E    mov         eax,dword ptr [eax+1A4]
 00444A44    push        eax
 00444A45    mov         eax,dword ptr [ebp-4]
 00444A48    mov         eax,dword ptr [eax+180]
 00444A4E    push        eax
 00444A4F    call        gdi32.SelectObject
 00444A54    mov         eax,dword ptr [ebp-4]
 00444A57    mov         eax,dword ptr [eax+180]
 00444A5D    push        eax
 00444A5E    mov         eax,dword ptr [ebp-4]
 00444A61    mov         eax,dword ptr [eax+30]
 00444A64    call        TWinControl.GetHandle
 00444A69    push        eax
 00444A6A    call        user32.ReleaseDC
 00444A6F    mov         eax,dword ptr [ebp-4]
 00444A72    cmp         dword ptr [eax+170],0
>00444A79    je          00444A94
 00444A7B    mov         eax,dword ptr [ebp-4]
 00444A7E    mov         eax,dword ptr [eax+170]
 00444A84    call        TObject.Free
 00444A89    mov         eax,dword ptr [ebp-4]
 00444A8C    xor         edx,edx
 00444A8E    mov         dword ptr [eax+170],edx
 00444A94    pop         ecx
 00444A95    pop         ebp
 00444A96    ret
*}
end;

//00444A98
{*function sub_00444A98(?:TSplitter):?;
begin
 00444A98    push        ebp
 00444A99    mov         ebp,esp
 00444A9B    add         esp,0FFFFFFD8
 00444A9E    mov         dword ptr [ebp-4],eax
 00444AA1    xor         eax,eax
 00444AA3    mov         dword ptr [ebp-8],eax
 00444AA6    lea         ecx,[ebp-10]
 00444AA9    mov         eax,dword ptr [ebp-4]
 00444AAC    mov         edx,dword ptr [eax+44]
 00444AAF    mov         eax,dword ptr [ebp-4]
 00444AB2    mov         eax,dword ptr [eax+40]
 00444AB5    call        Point
 00444ABA    mov         eax,dword ptr [ebp-4]
 00444ABD    mov         al,byte ptr [eax+5B]
 00444AC0    dec         al
>00444AC2    je          00444AE5
 00444AC4    dec         al
>00444AC6    je          00444AEA
 00444AC8    dec         al
>00444ACA    je          00444AD5
 00444ACC    dec         al
>00444ACE    je          00444ADA
>00444AD0    jmp         00444BA3
 00444AD5    dec         dword ptr [ebp-10]
>00444AD8    jmp         00444AF3
 00444ADA    mov         eax,dword ptr [ebp-4]
 00444ADD    mov         eax,dword ptr [eax+48]
 00444AE0    add         dword ptr [ebp-10],eax
>00444AE3    jmp         00444AF3
 00444AE5    dec         dword ptr [ebp-0C]
>00444AE8    jmp         00444AF3
 00444AEA    mov         eax,dword ptr [ebp-4]
 00444AED    mov         eax,dword ptr [eax+4C]
 00444AF0    add         dword ptr [ebp-0C],eax
 00444AF3    mov         eax,dword ptr [ebp-4]
 00444AF6    mov         eax,dword ptr [eax+30]
 00444AF9    call        00487E38
 00444AFE    dec         eax
 00444AFF    test        eax,eax
>00444B01    jl          00444B9E
 00444B07    inc         eax
 00444B08    mov         dword ptr [ebp-18],eax
 00444B0B    mov         dword ptr [ebp-14],0
 00444B12    mov         edx,dword ptr [ebp-14]
 00444B15    mov         eax,dword ptr [ebp-4]
 00444B18    mov         eax,dword ptr [eax+30]
 00444B1B    call        00487DCC
 00444B20    mov         dword ptr [ebp-8],eax
 00444B23    mov         eax,dword ptr [ebp-8]
 00444B26    cmp         byte ptr [eax+57],0
>00444B2A    je          00444B92
 00444B2C    mov         eax,dword ptr [ebp-8]
 00444B2F    mov         edx,dword ptr [eax]
 00444B31    call        dword ptr [edx+50]
 00444B34    test        al,al
>00444B36    je          00444B92
 00444B38    lea         edx,[ebp-28]
 00444B3B    mov         eax,dword ptr [ebp-8]
 00444B3E    call        00482ECC
 00444B43    mov         eax,dword ptr [ebp-20]
 00444B46    sub         eax,dword ptr [ebp-28]
>00444B49    jne         00444B61
 00444B4B    mov         eax,dword ptr [ebp-4]
 00444B4E    mov         al,byte ptr [eax+5B]
 00444B51    sub         al,1
>00444B53    je          00444B59
 00444B55    sub         al,2
>00444B57    jne         00444B5E
 00444B59    dec         dword ptr [ebp-28]
>00444B5C    jmp         00444B61
 00444B5E    inc         dword ptr [ebp-20]
 00444B61    mov         eax,dword ptr [ebp-1C]
 00444B64    sub         eax,dword ptr [ebp-24]
>00444B67    jne         00444B7F
 00444B69    mov         eax,dword ptr [ebp-4]
 00444B6C    mov         al,byte ptr [eax+5B]
 00444B6F    sub         al,1
>00444B71    je          00444B77
 00444B73    sub         al,2
>00444B75    jne         00444B7C
 00444B77    dec         dword ptr [ebp-24]
>00444B7A    jmp         00444B7F
 00444B7C    inc         dword ptr [ebp-1C]
 00444B7F    push        dword ptr [ebp-0C]
 00444B82    push        dword ptr [ebp-10]
 00444B85    lea         eax,[ebp-28]
 00444B88    push        eax
 00444B89    call        user32.PtInRect
 00444B8E    test        eax,eax
>00444B90    jne         00444BA3
 00444B92    inc         dword ptr [ebp-14]
 00444B95    dec         dword ptr [ebp-18]
>00444B98    jne         00444B12
 00444B9E    xor         eax,eax
 00444BA0    mov         dword ptr [ebp-8],eax
 00444BA3    mov         eax,dword ptr [ebp-8]
 00444BA6    mov         esp,ebp
 00444BA8    pop         ebp
 00444BA9    ret
end;*}

//00444BAC
procedure TSplitter.sub_00444BAC;
begin
{*
 00444BAC    push        ebp
 00444BAD    mov         ebp,esp
 00444BAF    push        ecx
 00444BB0    mov         dword ptr [ebp-4],eax
 00444BB3    mov         eax,dword ptr [ebp-4]
 00444BB6    call        TControl.sub_004826F8
 00444BBB    mov         eax,dword ptr [ebp-4]
 00444BBE    cmp         word ptr [eax+78],0FFFFFFF1;TSplitter.Cursor:TCursor
>00444BC3    je          00444BCF
 00444BC5    mov         eax,dword ptr [ebp-4]
 00444BC8    cmp         word ptr [eax+78],0FFFFFFF2;TSplitter.Cursor:TCursor
>00444BCD    jne         00444BF4
 00444BCF    mov         eax,dword ptr [ebp-4]
 00444BD2    mov         al,byte ptr [eax+5B];TSplitter.FAlign:TAlign
 00444BD5    dec         eax
 00444BD6    sub         al,2
>00444BD8    jae         00444BE8
 00444BDA    mov         dx,0FFF1
 00444BDE    mov         eax,dword ptr [ebp-4]
 00444BE1    call        TSplitter.SetCursor
>00444BE6    jmp         00444BF4
 00444BE8    mov         dx,0FFF2
 00444BEC    mov         eax,dword ptr [ebp-4]
 00444BEF    call        TSplitter.SetCursor
 00444BF4    pop         ecx
 00444BF5    pop         ebp
 00444BF6    ret
*}
end;

//00444BF8
procedure sub_00444BF8;
begin
{*
 00444BF8    push        ebp
 00444BF9    mov         ebp,esp
 00444BFB    add         esp,0FFFFFFD4
 00444BFE    push        ebx
 00444BFF    mov         dword ptr [ebp-4],eax
 00444C02    lea         edx,[ebp-1C]
 00444C05    mov         eax,dword ptr [ebp-4]
 00444C08    mov         ecx,dword ptr [eax]
 00444C0A    call        dword ptr [ecx+44];TSplitter.sub_00482F5C
 00444C0D    mov         eax,dword ptr [ebp-4]
 00444C10    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 00444C16    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00444C19    mov         edx,dword ptr [ebp-4]
 00444C1C    mov         edx,dword ptr [edx+70];TSplitter.FColor:TColor
 00444C1F    call        TBrush.SetColor
 00444C24    lea         edx,[ebp-2C]
 00444C27    mov         eax,dword ptr [ebp-4]
 00444C2A    mov         ecx,dword ptr [eax]
 00444C2C    call        dword ptr [ecx+44];TSplitter.sub_00482F5C
 00444C2F    lea         edx,[ebp-2C]
 00444C32    mov         eax,dword ptr [ebp-4]
 00444C35    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 00444C3B    call        0042F030
 00444C40    mov         eax,dword ptr [ebp-4]
 00444C43    cmp         byte ptr [eax+16D],0;TSplitter.Beveled:Boolean
>00444C4A    je          00444D02
 00444C50    mov         eax,dword ptr [ebp-4]
 00444C53    mov         al,byte ptr [eax+5B];TSplitter.FAlign:TAlign
 00444C56    add         al,0FD
 00444C58    sub         al,2
>00444C5A    jae         00444C6B
 00444C5C    push        2
 00444C5E    push        0FF
 00444C60    lea         eax,[ebp-1C]
 00444C63    push        eax
 00444C64    call        user32.InflateRect
>00444C69    jmp         00444C78
 00444C6B    push        0FF
 00444C6D    push        2
 00444C6F    lea         eax,[ebp-1C]
 00444C72    push        eax
 00444C73    call        user32.InflateRect
 00444C78    push        1
 00444C7A    push        1
 00444C7C    lea         eax,[ebp-1C]
 00444C7F    push        eax
 00444C80    call        user32.OffsetRect
 00444C85    mov         eax,0FF000014
 00444C8A    call        ColorToRGB
 00444C8F    push        eax
 00444C90    call        gdi32.CreateSolidBrush
 00444C95    mov         dword ptr [ebp-8],eax
 00444C98    mov         eax,dword ptr [ebp-8]
 00444C9B    push        eax
 00444C9C    lea         eax,[ebp-1C]
 00444C9F    push        eax
 00444CA0    mov         eax,dword ptr [ebp-4]
 00444CA3    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 00444CA9    call        0042F6A0
 00444CAE    push        eax
 00444CAF    call        user32.FrameRect
 00444CB4    mov         eax,dword ptr [ebp-8]
 00444CB7    push        eax
 00444CB8    call        gdi32.DeleteObject
 00444CBD    push        0FE
 00444CBF    push        0FE
 00444CC1    lea         eax,[ebp-1C]
 00444CC4    push        eax
 00444CC5    call        user32.OffsetRect
 00444CCA    mov         eax,0FF000010
 00444CCF    call        ColorToRGB
 00444CD4    push        eax
 00444CD5    call        gdi32.CreateSolidBrush
 00444CDA    mov         dword ptr [ebp-8],eax
 00444CDD    mov         eax,dword ptr [ebp-8]
 00444CE0    push        eax
 00444CE1    lea         eax,[ebp-1C]
 00444CE4    push        eax
 00444CE5    mov         eax,dword ptr [ebp-4]
 00444CE8    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 00444CEE    call        0042F6A0
 00444CF3    push        eax
 00444CF4    call        user32.FrameRect
 00444CF9    mov         eax,dword ptr [ebp-8]
 00444CFC    push        eax
 00444CFD    call        gdi32.DeleteObject
 00444D02    mov         eax,dword ptr [ebp-4]
 00444D05    test        byte ptr [eax+1C],10;TSplitter.FComponentState:TComponentState
>00444D09    je          00444D6C
 00444D0B    mov         eax,dword ptr [ebp-4]
 00444D0E    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 00444D14    mov         dword ptr [ebp-0C],eax
 00444D17    mov         eax,dword ptr [ebp-0C]
 00444D1A    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00444D1D    mov         dl,2
 00444D1F    call        TPen.SetStyle
 00444D24    mov         eax,dword ptr [ebp-0C]
 00444D27    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00444D2A    mov         dl,0E
 00444D2C    call        TPen.SetMode
 00444D31    mov         eax,dword ptr [ebp-0C]
 00444D34    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00444D37    mov         edx,0FFD8CE
 00444D3C    call        TPen.SetColor
 00444D41    mov         eax,dword ptr [ebp-0C]
 00444D44    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00444D47    mov         dl,1
 00444D49    call        TBrush.SetStyle
 00444D4E    mov         eax,dword ptr [ebp-4]
 00444D51    call        TControl.GetClientWidth
 00444D56    push        eax
 00444D57    mov         eax,dword ptr [ebp-4]
 00444D5A    call        TControl.GetClientHeight
 00444D5F    push        eax
 00444D60    xor         ecx,ecx
 00444D62    xor         edx,edx
 00444D64    mov         eax,dword ptr [ebp-0C]
 00444D67    call        0042F220
 00444D6C    mov         eax,dword ptr [ebp-4]
 00444D6F    cmp         word ptr [eax+1C2],0;TSplitter.?f1C2:word
>00444D77    je          00444D8B
 00444D79    mov         ebx,dword ptr [ebp-4]
 00444D7C    mov         edx,dword ptr [ebp-4]
 00444D7F    mov         eax,dword ptr [ebx+1C4];TSplitter.?f1C4:dword
 00444D85    call        dword ptr [ebx+1C0];TSplitter.OnPaint
 00444D8B    pop         ebx
 00444D8C    mov         esp,ebp
 00444D8E    pop         ebp
 00444D8F    ret
*}
end;

//00444D90
{*function sub_00444D90(?:?):?;
begin
 00444D90    push        ebp
 00444D91    mov         ebp,esp
 00444D93    add         esp,0FFFFFFF4
 00444D96    mov         dword ptr [ebp-8],edx
 00444D99    mov         dword ptr [ebp-4],eax
 00444D9C    mov         edx,dword ptr [ebp-8]
 00444D9F    mov         eax,dword ptr [ebp-4]
 00444DA2    mov         ecx,dword ptr [eax]
 00444DA4    call        dword ptr [ecx+90];TSplitter.sub_00444DE0
 00444DAA    mov         byte ptr [ebp-9],al
 00444DAD    cmp         byte ptr [ebp-9],0
>00444DB1    je          00444DD6
 00444DB3    mov         eax,dword ptr [ebp-8]
 00444DB6    mov         eax,dword ptr [eax]
 00444DB8    mov         edx,dword ptr [ebp-4]
 00444DBB    cmp         eax,dword ptr [edx+188];TSplitter.MinSize:NaturalNumber
>00444DC1    jg          00444DD6
 00444DC3    mov         eax,dword ptr [ebp-4]
 00444DC6    cmp         byte ptr [eax+16C],0;TSplitter.AutoSnap:Boolean
>00444DCD    je          00444DD6
 00444DCF    mov         eax,dword ptr [ebp-8]
 00444DD2    xor         edx,edx
 00444DD4    mov         dword ptr [eax],edx
 00444DD6    mov         al,byte ptr [ebp-9]
 00444DD9    mov         esp,ebp
 00444DDB    pop         ebp
 00444DDC    ret
end;*}

//00444DE0
{*function sub_00444DE0(?:?):?;
begin
 00444DE0    push        ebp
 00444DE1    mov         ebp,esp
 00444DE3    add         esp,0FFFFFFF4
 00444DE6    push        ebx
 00444DE7    mov         dword ptr [ebp-8],edx
 00444DEA    mov         dword ptr [ebp-4],eax
 00444DED    mov         byte ptr [ebp-9],1
 00444DF1    mov         eax,dword ptr [ebp-4]
 00444DF4    cmp         word ptr [eax+1B2],0;TSplitter.?f1B2:word
>00444DFC    je          00444E17
 00444DFE    lea         eax,[ebp-9]
 00444E01    push        eax
 00444E02    mov         ecx,dword ptr [ebp-8]
 00444E05    mov         ebx,dword ptr [ebp-4]
 00444E08    mov         edx,dword ptr [ebp-4]
 00444E0B    mov         eax,dword ptr [ebx+1B4];TSplitter.?f1B4:dword
 00444E11    call        dword ptr [ebx+1B0];TSplitter.OnCanResize
 00444E17    mov         al,byte ptr [ebp-9]
 00444E1A    pop         ebx
 00444E1B    mov         esp,ebp
 00444E1D    pop         ebp
 00444E1E    ret
end;*}

//00444E20
{*procedure TSplitter.sub_00444E20(?:?; ?:?; ?:?; ?:?);
begin
 00444E20    push        ebp
 00444E21    mov         ebp,esp
 00444E23    add         esp,0FFFFFFDC
 00444E26    mov         byte ptr [ebp-6],cl
 00444E29    mov         byte ptr [ebp-5],dl
 00444E2C    mov         dword ptr [ebp-4],eax
 00444E2F    mov         eax,dword ptr [ebp+0C]
 00444E32    push        eax
 00444E33    mov         eax,dword ptr [ebp+8]
 00444E36    push        eax
 00444E37    mov         cl,byte ptr [ebp-6]
 00444E3A    mov         dl,byte ptr [ebp-5]
 00444E3D    mov         eax,dword ptr [ebp-4]
 00444E40    call        TControl.sub_00485588
 00444E45    cmp         byte ptr [ebp-5],0
>00444E49    jne         0044504A
 00444E4F    mov         eax,dword ptr [ebp-4]
 00444E52    call        00444A98
 00444E57    mov         edx,dword ptr [ebp-4]
 00444E5A    mov         dword ptr [edx+174],eax;TSplitter.FControl:TControl
 00444E60    lea         ecx,[ebp-24]
 00444E63    mov         edx,dword ptr [ebp+8]
 00444E66    mov         eax,dword ptr [ebp+0C]
 00444E69    call        Point
 00444E6E    mov         eax,dword ptr [ebp-4]
 00444E71    mov         edx,dword ptr [ebp-24]
 00444E74    mov         dword ptr [eax+178],edx;TSplitter.FDownPos:TPoint
 00444E7A    mov         edx,dword ptr [ebp-20]
 00444E7D    mov         dword ptr [eax+17C],edx
 00444E83    mov         eax,dword ptr [ebp-4]
 00444E86    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>00444E8D    je          0044504A
 00444E93    mov         eax,dword ptr [ebp-4]
 00444E96    mov         al,byte ptr [eax+5B];TSplitter.FAlign:TAlign
 00444E99    add         al,0FD
 00444E9B    sub         al,2
>00444E9D    jae         00444F32
 00444EA3    mov         eax,dword ptr [ebp-4]
 00444EA6    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 00444EA9    call        TControl.GetClientWidth
 00444EAE    mov         edx,dword ptr [ebp-4]
 00444EB1    sub         eax,dword ptr [edx+188]
 00444EB7    mov         edx,dword ptr [ebp-4]
 00444EBA    mov         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
 00444EC0    mov         eax,dword ptr [ebp-4]
 00444EC3    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 00444EC6    call        00487E38
 00444ECB    dec         eax
 00444ECC    test        eax,eax
>00444ECE    jl          00444F18
 00444ED0    inc         eax
 00444ED1    mov         dword ptr [ebp-10],eax
 00444ED4    mov         dword ptr [ebp-0C],0
 00444EDB    mov         edx,dword ptr [ebp-0C]
 00444EDE    mov         eax,dword ptr [ebp-4]
 00444EE1    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 00444EE4    call        00487DCC
 00444EE9    mov         dword ptr [ebp-14],eax
 00444EEC    mov         eax,dword ptr [ebp-14]
 00444EEF    cmp         byte ptr [eax+57],0
>00444EF3    je          00444F10
 00444EF5    mov         eax,dword ptr [ebp-14]
 00444EF8    mov         al,byte ptr [eax+5B]
 00444EFB    add         al,0FD
 00444EFD    sub         al,2
>00444EFF    jae         00444F10
 00444F01    mov         eax,dword ptr [ebp-14]
 00444F04    mov         eax,dword ptr [eax+48]
 00444F07    mov         edx,dword ptr [ebp-4]
 00444F0A    sub         dword ptr [edx+18C],eax
 00444F10    inc         dword ptr [ebp-0C]
 00444F13    dec         dword ptr [ebp-10]
>00444F16    jne         00444EDB
 00444F18    mov         eax,dword ptr [ebp-4]
 00444F1B    mov         eax,dword ptr [eax+174];TSplitter.FControl:TControl
 00444F21    mov         eax,dword ptr [eax+48];TControl.Width:Integer
 00444F24    mov         edx,dword ptr [ebp-4]
 00444F27    add         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
>00444F2D    jmp         00444FB2
 00444F32    mov         eax,dword ptr [ebp-4]
 00444F35    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 00444F38    call        TControl.GetClientHeight
 00444F3D    mov         edx,dword ptr [ebp-4]
 00444F40    sub         eax,dword ptr [edx+188]
 00444F46    mov         edx,dword ptr [ebp-4]
 00444F49    mov         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
 00444F4F    mov         eax,dword ptr [ebp-4]
 00444F52    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 00444F55    call        00487E38
 00444F5A    dec         eax
 00444F5B    test        eax,eax
>00444F5D    jl          00444F9D
 00444F5F    inc         eax
 00444F60    mov         dword ptr [ebp-10],eax
 00444F63    mov         dword ptr [ebp-0C],0
 00444F6A    mov         edx,dword ptr [ebp-0C]
 00444F6D    mov         eax,dword ptr [ebp-4]
 00444F70    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 00444F73    call        00487DCC
 00444F78    mov         dword ptr [ebp-18],eax
 00444F7B    mov         eax,dword ptr [ebp-18]
 00444F7E    mov         al,byte ptr [eax+5B]
 00444F81    dec         eax
 00444F82    sub         al,2
>00444F84    jae         00444F95
 00444F86    mov         eax,dword ptr [ebp-18]
 00444F89    mov         eax,dword ptr [eax+4C]
 00444F8C    mov         edx,dword ptr [ebp-4]
 00444F8F    sub         dword ptr [edx+18C],eax
 00444F95    inc         dword ptr [ebp-0C]
 00444F98    dec         dword ptr [ebp-10]
>00444F9B    jne         00444F6A
 00444F9D    mov         eax,dword ptr [ebp-4]
 00444FA0    mov         eax,dword ptr [eax+174];TSplitter.FControl:TControl
 00444FA6    mov         eax,dword ptr [eax+4C];TControl.Height:Integer
 00444FA9    mov         edx,dword ptr [ebp-4]
 00444FAC    add         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
 00444FB2    mov         ecx,dword ptr [ebp+8]
 00444FB5    mov         edx,dword ptr [ebp+0C]
 00444FB8    mov         eax,dword ptr [ebp-4]
 00444FBB    call        00445338
 00444FC0    mov         eax,dword ptr [ebp-4]
 00444FC3    call        004448F8
 00444FC8    mov         eax,dword ptr [ebp-4]
 00444FCB    call        004A0784
 00444FD0    mov         dword ptr [ebp-1C],eax
 00444FD3    mov         eax,dword ptr [ebp-1C]
 00444FD6    cmp         dword ptr [eax+220],0
>00444FDD    je          00445031
 00444FDF    mov         eax,dword ptr [ebp-1C]
 00444FE2    mov         eax,dword ptr [eax+220]
 00444FE8    mov         edx,dword ptr [ebp-4]
 00444FEB    mov         dword ptr [edx+168],eax;TSplitter.FActiveControl:TWinControl
 00444FF1    mov         eax,dword ptr [ebp-4]
 00444FF4    mov         eax,dword ptr [eax+168];TSplitter.FActiveControl:TWinControl
 00444FFA    mov         edx,dword ptr [ebp-4]
 00444FFD    mov         ecx,dword ptr [eax+1D8];TWinControl.FOnKeyDown:TKeyEvent
 00445003    mov         dword ptr [edx+198],ecx;TSplitter.FOldKeyDown:TKeyEvent
 00445009    mov         ecx,dword ptr [eax+1DC];TWinControl.?f1DC:TMessageForm
 0044500F    mov         dword ptr [edx+19C],ecx;TSplitter.?f19C:TMessageForm
 00445015    mov         eax,dword ptr [ebp-4]
 00445018    mov         eax,dword ptr [eax+168];TSplitter.FActiveControl:TWinControl
 0044501E    mov         edx,dword ptr [ebp-4]
 00445021    mov         dword ptr [eax+1DC],edx;TWinControl.?f1DC:TMessageForm
 00445027    mov         dword ptr [eax+1D8],44549C;TWinControl.FOnKeyDown:TKeyEvent sub_0044549C
 00445031    mov         eax,dword ptr [ebp-4]
 00445034    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 0044503A    sub         al,1
>0044503C    je          00445042
 0044503E    sub         al,2
>00445040    jne         0044504A
 00445042    mov         eax,dword ptr [ebp-4]
 00445045    call        00444994
 0044504A    mov         esp,ebp
 0044504C    pop         ebp
 0044504D    ret         8
end;*}

//00445050
procedure sub_00445050(?:TSplitter);
begin
{*
 00445050    push        ebp
 00445051    mov         ebp,esp
 00445053    push        ecx
 00445054    push        ebx
 00445055    mov         dword ptr [ebp-4],eax
 00445058    mov         eax,dword ptr [ebp-4]
 0044505B    mov         eax,dword ptr [eax+190]
 00445061    mov         edx,dword ptr [ebp-4]
 00445064    cmp         eax,dword ptr [edx+1A0]
>0044506A    je          00445201
 00445070    mov         eax,dword ptr [ebp-4]
 00445073    mov         al,byte ptr [eax+5B]
 00445076    dec         al
>00445078    je          004450AB
 0044507A    dec         al
>0044507C    je          00445146
 00445082    dec         al
>00445084    je          0044508F
 00445086    dec         al
>00445088    je          004450C7
>0044508A    jmp         004451C5
 0044508F    mov         eax,dword ptr [ebp-4]
 00445092    mov         edx,dword ptr [eax+190]
 00445098    mov         eax,dword ptr [ebp-4]
 0044509B    mov         eax,dword ptr [eax+174]
 004450A1    call        TSplitter.SetWidth
>004450A6    jmp         004451C5
 004450AB    mov         eax,dword ptr [ebp-4]
 004450AE    mov         edx,dword ptr [eax+190]
 004450B4    mov         eax,dword ptr [ebp-4]
 004450B7    mov         eax,dword ptr [eax+174]
 004450BD    call        TToolButton.SetHeight
>004450C2    jmp         004451C5
 004450C7    mov         eax,dword ptr [ebp-4]
 004450CA    mov         eax,dword ptr [eax+30]
 004450CD    call        TWinControl.DisableAlign
 004450D2    xor         eax,eax
 004450D4    push        ebp
 004450D5    push        44513F
 004450DA    push        dword ptr fs:[eax]
 004450DD    mov         dword ptr fs:[eax],esp
 004450E0    mov         eax,dword ptr [ebp-4]
 004450E3    mov         eax,dword ptr [eax+174]
 004450E9    mov         edx,dword ptr [eax+48]
 004450EC    mov         eax,dword ptr [ebp-4]
 004450EF    sub         edx,dword ptr [eax+190]
 004450F5    mov         eax,dword ptr [ebp-4]
 004450F8    mov         eax,dword ptr [eax+174]
 004450FE    add         edx,dword ptr [eax+40]
 00445101    mov         eax,dword ptr [ebp-4]
 00445104    mov         eax,dword ptr [eax+174]
 0044510A    call        TControl.SetLeft
 0044510F    mov         eax,dword ptr [ebp-4]
 00445112    mov         edx,dword ptr [eax+190]
 00445118    mov         eax,dword ptr [ebp-4]
 0044511B    mov         eax,dword ptr [eax+174]
 00445121    call        TSplitter.SetWidth
 00445126    xor         eax,eax
 00445128    pop         edx
 00445129    pop         ecx
 0044512A    pop         ecx
 0044512B    mov         dword ptr fs:[eax],edx
 0044512E    push        4451C5
 00445133    mov         eax,dword ptr [ebp-4]
 00445136    mov         eax,dword ptr [eax+30]
 00445139    call        TWinControl.EnableAlign
 0044513E    ret
>0044513F    jmp         @HandleFinally
>00445144    jmp         00445133
 00445146    mov         eax,dword ptr [ebp-4]
 00445149    mov         eax,dword ptr [eax+30]
 0044514C    call        TWinControl.DisableAlign
 00445151    xor         eax,eax
 00445153    push        ebp
 00445154    push        4451BE
 00445159    push        dword ptr fs:[eax]
 0044515C    mov         dword ptr fs:[eax],esp
 0044515F    mov         eax,dword ptr [ebp-4]
 00445162    mov         eax,dword ptr [eax+174]
 00445168    mov         edx,dword ptr [eax+4C]
 0044516B    mov         eax,dword ptr [ebp-4]
 0044516E    sub         edx,dword ptr [eax+190]
 00445174    mov         eax,dword ptr [ebp-4]
 00445177    mov         eax,dword ptr [eax+174]
 0044517D    add         edx,dword ptr [eax+44]
 00445180    mov         eax,dword ptr [ebp-4]
 00445183    mov         eax,dword ptr [eax+174]
 00445189    call        TControl.SetTop
 0044518E    mov         eax,dword ptr [ebp-4]
 00445191    mov         edx,dword ptr [eax+190]
 00445197    mov         eax,dword ptr [ebp-4]
 0044519A    mov         eax,dword ptr [eax+174]
 004451A0    call        TToolButton.SetHeight
 004451A5    xor         eax,eax
 004451A7    pop         edx
 004451A8    pop         ecx
 004451A9    pop         ecx
 004451AA    mov         dword ptr fs:[eax],edx
 004451AD    push        4451C5
 004451B2    mov         eax,dword ptr [ebp-4]
 004451B5    mov         eax,dword ptr [eax+30]
 004451B8    call        TWinControl.EnableAlign
 004451BD    ret
>004451BE    jmp         @HandleFinally
>004451C3    jmp         004451B2
 004451C5    mov         eax,dword ptr [ebp-4]
 004451C8    mov         edx,dword ptr [eax]
 004451CA    call        dword ptr [edx+88]
 004451D0    mov         eax,dword ptr [ebp-4]
 004451D3    cmp         word ptr [eax+1BA],0
>004451DB    je          004451EF
 004451DD    mov         ebx,dword ptr [ebp-4]
 004451E0    mov         edx,dword ptr [ebp-4]
 004451E3    mov         eax,dword ptr [ebx+1BC]
 004451E9    call        dword ptr [ebx+1B8]
 004451EF    mov         eax,dword ptr [ebp-4]
 004451F2    mov         eax,dword ptr [eax+190]
 004451F8    mov         edx,dword ptr [ebp-4]
 004451FB    mov         dword ptr [edx+1A0],eax
 00445201    pop         ebx
 00445202    pop         ecx
 00445203    pop         ebp
 00445204    ret
*}
end;

//00445208
{*procedure sub_00445208(?:TSplitter; ?:?; ?:?; ?:?; ?:?);
begin
 00445208    push        ebp
 00445209    mov         ebp,esp
 0044520B    add         esp,0FFFFFFF0
 0044520E    mov         dword ptr [ebp-0C],ecx
 00445211    mov         dword ptr [ebp-8],edx
 00445214    mov         dword ptr [ebp-4],eax
 00445217    mov         eax,dword ptr [ebp-4]
 0044521A    mov         al,byte ptr [eax+5B]
 0044521D    add         al,0FD
 0044521F    sub         al,2
>00445221    jae         00445236
 00445223    mov         eax,dword ptr [ebp-8]
 00445226    mov         edx,dword ptr [ebp-4]
 00445229    sub         eax,dword ptr [edx+178]
 0044522F    mov         edx,dword ptr [ebp+8]
 00445232    mov         dword ptr [edx],eax
>00445234    jmp         00445247
 00445236    mov         eax,dword ptr [ebp-0C]
 00445239    mov         edx,dword ptr [ebp-4]
 0044523C    sub         eax,dword ptr [edx+17C]
 00445242    mov         edx,dword ptr [ebp+8]
 00445245    mov         dword ptr [edx],eax
 00445247    xor         eax,eax
 00445249    mov         dword ptr [ebp-10],eax
 0044524C    mov         eax,dword ptr [ebp-4]
 0044524F    mov         al,byte ptr [eax+5B]
 00445252    dec         al
>00445254    je          00445290
 00445256    dec         al
>00445258    je          004452A6
 0044525A    dec         al
>0044525C    je          00445264
 0044525E    dec         al
>00445260    je          0044527A
>00445262    jmp         004452BA
 00445264    mov         eax,dword ptr [ebp-4]
 00445267    mov         eax,dword ptr [eax+174]
 0044526D    mov         eax,dword ptr [eax+48]
 00445270    mov         edx,dword ptr [ebp+8]
 00445273    add         eax,dword ptr [edx]
 00445275    mov         dword ptr [ebp-10],eax
>00445278    jmp         004452BA
 0044527A    mov         eax,dword ptr [ebp-4]
 0044527D    mov         eax,dword ptr [eax+174]
 00445283    mov         eax,dword ptr [eax+48]
 00445286    mov         edx,dword ptr [ebp+8]
 00445289    sub         eax,dword ptr [edx]
 0044528B    mov         dword ptr [ebp-10],eax
>0044528E    jmp         004452BA
 00445290    mov         eax,dword ptr [ebp-4]
 00445293    mov         eax,dword ptr [eax+174]
 00445299    mov         eax,dword ptr [eax+4C]
 0044529C    mov         edx,dword ptr [ebp+8]
 0044529F    add         eax,dword ptr [edx]
 004452A1    mov         dword ptr [ebp-10],eax
>004452A4    jmp         004452BA
 004452A6    mov         eax,dword ptr [ebp-4]
 004452A9    mov         eax,dword ptr [eax+174]
 004452AF    mov         eax,dword ptr [eax+4C]
 004452B2    mov         edx,dword ptr [ebp+8]
 004452B5    sub         eax,dword ptr [edx]
 004452B7    mov         dword ptr [ebp-10],eax
 004452BA    mov         eax,dword ptr [ebp+0C]
 004452BD    mov         edx,dword ptr [ebp-10]
 004452C0    mov         dword ptr [eax],edx
 004452C2    mov         eax,dword ptr [ebp-10]
 004452C5    mov         edx,dword ptr [ebp-4]
 004452C8    cmp         eax,dword ptr [edx+188]
>004452CE    jge         004452E0
 004452D0    mov         eax,dword ptr [ebp+0C]
 004452D3    mov         edx,dword ptr [ebp-4]
 004452D6    mov         edx,dword ptr [edx+188]
 004452DC    mov         dword ptr [eax],edx
>004452DE    jmp         004452FC
 004452E0    mov         eax,dword ptr [ebp-10]
 004452E3    mov         edx,dword ptr [ebp-4]
 004452E6    cmp         eax,dword ptr [edx+18C]
>004452EC    jle         004452FC
 004452EE    mov         eax,dword ptr [ebp+0C]
 004452F1    mov         edx,dword ptr [ebp-4]
 004452F4    mov         edx,dword ptr [edx+18C]
 004452FA    mov         dword ptr [eax],edx
 004452FC    mov         eax,dword ptr [ebp+0C]
 004452FF    mov         eax,dword ptr [eax]
 00445301    cmp         eax,dword ptr [ebp-10]
>00445304    je          00445331
 00445306    mov         eax,dword ptr [ebp-4]
 00445309    mov         al,byte ptr [eax+5B]
 0044530C    sub         al,2
>0044530E    je          00445314
 00445310    sub         al,2
>00445312    jne         0044531E
 00445314    mov         eax,dword ptr [ebp+0C]
 00445317    mov         eax,dword ptr [eax]
 00445319    sub         dword ptr [ebp-10],eax
>0044531C    jmp         00445329
 0044531E    mov         eax,dword ptr [ebp+0C]
 00445321    mov         eax,dword ptr [eax]
 00445323    sub         eax,dword ptr [ebp-10]
 00445326    mov         dword ptr [ebp-10],eax
 00445329    mov         eax,dword ptr [ebp+8]
 0044532C    mov         edx,dword ptr [ebp-10]
 0044532F    add         dword ptr [eax],edx
 00445331    mov         esp,ebp
 00445333    pop         ebp
 00445334    ret         8
end;*}

//00445338
{*procedure sub_00445338(?:TSplitter; ?:?; ?:?);
begin
 00445338    push        ebp
 00445339    mov         ebp,esp
 0044533B    add         esp,0FFFFFFF4
 0044533E    mov         dword ptr [ebp-0C],ecx
 00445341    mov         dword ptr [ebp-8],edx
 00445344    mov         dword ptr [ebp-4],eax
 00445347    mov         eax,dword ptr [ebp-4]
 0044534A    add         eax,190;TSplitter.FNewSize:Integer
 0044534F    push        eax
 00445350    mov         eax,dword ptr [ebp-4]
 00445353    add         eax,1AC;TSplitter.FSplit:Integer
 00445358    push        eax
 00445359    mov         ecx,dword ptr [ebp-0C]
 0044535C    mov         edx,dword ptr [ebp-8]
 0044535F    mov         eax,dword ptr [ebp-4]
 00445362    call        00445208
 00445367    mov         esp,ebp
 00445369    pop         ebp
 0044536A    ret
end;*}

//0044536C
{*procedure TSplitter.sub_0044536C(?:?; ?:?; ?:?);
begin
 0044536C    push        ebp
 0044536D    mov         ebp,esp
 0044536F    add         esp,0FFFFFFEC
 00445372    mov         dword ptr [ebp-0C],ecx
 00445375    mov         byte ptr [ebp-5],dl
 00445378    mov         dword ptr [ebp-4],eax
 0044537B    mov         eax,dword ptr [ebp+8]
 0044537E    push        eax
 0044537F    mov         ecx,dword ptr [ebp-0C]
 00445382    mov         dl,byte ptr [ebp-5]
 00445385    mov         eax,dword ptr [ebp-4]
 00445388    call        TControl.sub_004858F4
 0044538D    test        byte ptr [ebp-5],8
>00445391    je          0044542D
 00445397    mov         eax,dword ptr [ebp-4]
 0044539A    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>004453A1    je          0044542D
 004453A7    lea         eax,[ebp-10]
 004453AA    push        eax
 004453AB    lea         eax,[ebp-14]
 004453AE    push        eax
 004453AF    mov         ecx,dword ptr [ebp+8]
 004453B2    mov         edx,dword ptr [ebp-0C]
 004453B5    mov         eax,dword ptr [ebp-4]
 004453B8    call        00445208
 004453BD    lea         edx,[ebp-10]
 004453C0    mov         eax,dword ptr [ebp-4]
 004453C3    mov         ecx,dword ptr [eax]
 004453C5    call        dword ptr [ecx+94];TSplitter.sub_00444D90
 004453CB    test        al,al
>004453CD    je          0044542D
 004453CF    mov         eax,dword ptr [ebp-4]
 004453D2    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 004453D8    sub         al,1
>004453DA    je          004453E0
 004453DC    sub         al,2
>004453DE    jne         004453E8
 004453E0    mov         eax,dword ptr [ebp-4]
 004453E3    call        00444994
 004453E8    mov         eax,dword ptr [ebp-10]
 004453EB    mov         edx,dword ptr [ebp-4]
 004453EE    mov         dword ptr [edx+190],eax;TSplitter.FNewSize:Integer
 004453F4    mov         eax,dword ptr [ebp-14]
 004453F7    mov         edx,dword ptr [ebp-4]
 004453FA    mov         dword ptr [edx+1AC],eax;TSplitter.FSplit:Integer
 00445400    mov         eax,dword ptr [ebp-4]
 00445403    cmp         byte ptr [eax+1A8],2;TSplitter.ResizeStyle:TResizeStyle
>0044540A    jne         00445414
 0044540C    mov         eax,dword ptr [ebp-4]
 0044540F    call        00445050
 00445414    mov         eax,dword ptr [ebp-4]
 00445417    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 0044541D    sub         al,1
>0044541F    je          00445425
 00445421    sub         al,2
>00445423    jne         0044542D
 00445425    mov         eax,dword ptr [ebp-4]
 00445428    call        00444994
 0044542D    mov         esp,ebp
 0044542F    pop         ebp
 00445430    ret         4
end;*}

//00445434
{*procedure TSplitter.sub_00445434(?:?; ?:?; ?:?; ?:?);
begin
 00445434    push        ebp
 00445435    mov         ebp,esp
 00445437    add         esp,0FFFFFFF8
 0044543A    push        esi
 0044543B    mov         byte ptr [ebp-6],cl
 0044543E    mov         byte ptr [ebp-5],dl
 00445441    mov         dword ptr [ebp-4],eax
 00445444    mov         eax,dword ptr [ebp+0C]
 00445447    push        eax
 00445448    mov         eax,dword ptr [ebp+8]
 0044544B    push        eax
 0044544C    mov         cl,byte ptr [ebp-6]
 0044544F    mov         dl,byte ptr [ebp-5]
 00445452    mov         eax,dword ptr [ebp-4]
 00445455    call        TControl.sub_004859D0
 0044545A    mov         eax,dword ptr [ebp-4]
 0044545D    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>00445464    je          00445493
 00445466    mov         eax,dword ptr [ebp-4]
 00445469    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 0044546F    sub         al,1
>00445471    je          00445477
 00445473    sub         al,2
>00445475    jne         0044547F
 00445477    mov         eax,dword ptr [ebp-4]
 0044547A    call        00444994
 0044547F    mov         eax,dword ptr [ebp-4]
 00445482    call        00445050
 00445487    mov         eax,dword ptr [ebp-4]
 0044548A    mov         si,0FFC7
 0044548E    call        @CallDynaInst;TSplitter.sub_0044551C
 00445493    pop         esi
 00445494    pop         ecx
 00445495    pop         ecx
 00445496    pop         ebp
 00445497    ret         8
end;*}

//0044549C
{*procedure sub_0044549C(?:?; ?:?; ?:?; ?:?);
begin
 0044549C    push        ebp
 0044549D    mov         ebp,esp
 0044549F    add         esp,0FFFFFFF4
 004454A2    push        ebx
 004454A3    push        esi
 004454A4    mov         dword ptr [ebp-0C],ecx
 004454A7    mov         dword ptr [ebp-8],edx
 004454AA    mov         dword ptr [ebp-4],eax
 004454AD    mov         eax,dword ptr [ebp-0C]
 004454B0    cmp         word ptr [eax],1B
>004454B4    jne         004454C4
 004454B6    mov         eax,dword ptr [ebp-4]
 004454B9    mov         si,0FFC7
 004454BD    call        @CallDynaInst
>004454C2    jmp         004454EA
 004454C4    mov         eax,dword ptr [ebp-4]
 004454C7    cmp         word ptr [eax+19A],0
>004454CF    je          004454EA
 004454D1    mov         al,byte ptr [ebp+8]
 004454D4    push        eax
 004454D5    mov         ecx,dword ptr [ebp-0C]
 004454D8    mov         ebx,dword ptr [ebp-4]
 004454DB    mov         edx,dword ptr [ebp-8]
 004454DE    mov         eax,dword ptr [ebx+19C]
 004454E4    call        dword ptr [ebx+198]
 004454EA    pop         esi
 004454EB    pop         ebx
 004454EC    mov         esp,ebp
 004454EE    pop         ebp
 004454EF    ret         4
end;*}

//004454F4
procedure TSplitter.SetBeveled(Value:Boolean);
begin
{*
 004454F4    push        ebp
 004454F5    mov         ebp,esp
 004454F7    add         esp,0FFFFFFF8
 004454FA    mov         byte ptr [ebp-5],dl
 004454FD    mov         dword ptr [ebp-4],eax
 00445500    mov         al,byte ptr [ebp-5]
 00445503    mov         edx,dword ptr [ebp-4]
 00445506    mov         byte ptr [edx+16D],al;TSplitter.Beveled:Boolean
 0044550C    mov         eax,dword ptr [ebp-4]
 0044550F    mov         edx,dword ptr [eax]
 00445511    call        dword ptr [edx+80];TSplitter.sub_00484018
 00445517    pop         ecx
 00445518    pop         ecx
 00445519    pop         ebp
 0044551A    ret
*}
end;

//0044551C
procedure TSplitter.sub_0044551C;
begin
{*
 0044551C    push        ebp
 0044551D    mov         ebp,esp
 0044551F    push        ecx
 00445520    push        ebx
 00445521    mov         dword ptr [ebp-4],eax
 00445524    mov         eax,dword ptr [ebp-4]
 00445527    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>0044552E    je          00445592
 00445530    mov         eax,dword ptr [ebp-4]
 00445533    cmp         byte ptr [eax+184],0;TSplitter.FLineVisible:Boolean
>0044553A    je          00445544
 0044553C    mov         eax,dword ptr [ebp-4]
 0044553F    call        00444994
 00445544    mov         eax,dword ptr [ebp-4]
 00445547    xor         edx,edx
 00445549    mov         dword ptr [eax+174],edx;TSplitter.FControl:TControl
 0044554F    mov         eax,dword ptr [ebp-4]
 00445552    call        00444A28
 00445557    mov         eax,dword ptr [ebp-4]
 0044555A    cmp         dword ptr [eax+168],0;TSplitter.FActiveControl:TWinControl
>00445561    je          00445592
 00445563    mov         eax,dword ptr [ebp-4]
 00445566    mov         eax,dword ptr [eax+168];TSplitter.FActiveControl:TWinControl
 0044556C    mov         edx,dword ptr [ebp-4]
 0044556F    mov         ecx,dword ptr [edx+198];TSplitter.FOldKeyDown:TKeyEvent
 00445575    mov         dword ptr [eax+1D8],ecx;TWinControl.FOnKeyDown:TKeyEvent
 0044557B    mov         ecx,dword ptr [edx+19C];TSplitter.?f19C:TMessageForm
 00445581    mov         dword ptr [eax+1DC],ecx;TWinControl.?f1DC:TMessageForm
 00445587    mov         eax,dword ptr [ebp-4]
 0044558A    xor         edx,edx
 0044558C    mov         dword ptr [eax+168],edx;TSplitter.FActiveControl:TWinControl
 00445592    mov         eax,dword ptr [ebp-4]
 00445595    cmp         word ptr [eax+1BA],0;TSplitter.?f1BA:word
>0044559D    je          004455B1
 0044559F    mov         ebx,dword ptr [ebp-4]
 004455A2    mov         edx,dword ptr [ebp-4]
 004455A5    mov         eax,dword ptr [ebx+1BC];TSplitter.?f1BC:dword
 004455AB    call        dword ptr [ebx+1B8];TSplitter.OnMoved
 004455B1    pop         ebx
 004455B2    pop         ecx
 004455B3    pop         ebp
 004455B4    ret
*}
end;

//004455B8
constructor TBoundLabel.Create;
begin
{*
 004455B8    push        ebp
 004455B9    mov         ebp,esp
 004455BB    add         esp,0FFFFFFF4
 004455BE    test        dl,dl
>004455C0    je          004455CA
 004455C2    add         esp,0FFFFFFF0
 004455C5    call        @ClassCreate
 004455CA    mov         dword ptr [ebp-0C],ecx
 004455CD    mov         byte ptr [ebp-5],dl
 004455D0    mov         dword ptr [ebp-4],eax
 004455D3    mov         ecx,dword ptr [ebp-0C]
 004455D6    xor         edx,edx
 004455D8    mov         eax,dword ptr [ebp-4]
 004455DB    call        TLabel.Create
 004455E0    mov         edx,445634;'SubLabel'
 004455E5    mov         eax,dword ptr [ebp-4]
 004455E8    mov         ecx,dword ptr [eax]
 004455EA    call        dword ptr [ecx+18];TBoundLabel.sub_00483488
 004455ED    mov         dl,1
 004455EF    mov         eax,dword ptr [ebp-4]
 004455F2    call        0042ACFC
 004455F7    cmp         dword ptr [ebp-0C],0
>004455FB    je          0044560B
 004455FD    mov         eax,dword ptr [ebp-0C]
 00445600    mov         edx,dword ptr [eax+8]
 00445603    mov         eax,dword ptr [ebp-4]
 00445606    call        TPanel.SetCaption
 0044560B    mov         eax,dword ptr [ebp-4]
 0044560E    cmp         byte ptr [ebp-5],0
>00445612    je          00445623
 00445614    call        @AfterConstruction
 00445619    pop         dword ptr fs:[0]
 00445620    add         esp,0C
 00445623    mov         eax,dword ptr [ebp-4]
 00445626    mov         esp,ebp
 00445628    pop         ebp
 00445629    ret
*}
end;

//00445640
procedure TBoundLabel.sub_00445640;
begin
{*
 00445640    push        ebp
 00445641    mov         ebp,esp
 00445643    add         esp,0FFFFFFF8
 00445646    mov         dword ptr [ebp-4],eax
 00445649    mov         eax,dword ptr [ebp-4]
 0044564C    call        TCustomLabel.sub_00473944
 00445651    mov         eax,dword ptr [ebp-4]
 00445654    mov         eax,dword ptr [eax+4];TBoundLabel.FOwner:TComponent
 00445657    mov         edx,dword ptr ds:[441DD4];TCustomLabeledEdit
 0044565D    call        @IsClass
 00445662    test        al,al
>00445664    je          0044568B
 00445666    mov         eax,dword ptr [ebp-4]
 00445669    mov         eax,dword ptr [eax+4];TBoundLabel.FOwner:TComponent
 0044566C    mov         edx,dword ptr ds:[441DD4];TCustomLabeledEdit
 00445672    call        @AsClass
 00445677    mov         dword ptr [ebp-8],eax
 0044567A    mov         eax,dword ptr [ebp-8]
 0044567D    mov         dl,byte ptr [eax+224];TCustomLabeledEdit.FLabelPosition:TLabelPosition
 00445683    mov         eax,dword ptr [ebp-8]
 00445686    call        TLabeledEdit.SetLabelPosition
 0044568B    pop         ecx
 0044568C    pop         ecx
 0044568D    pop         ebp
 0044568E    ret
*}
end;

//00445690
{*function TBoundLabel.GetHeight:?;
begin
 00445690    push        ebp
 00445691    mov         ebp,esp
 00445693    add         esp,0FFFFFFF8
 00445696    mov         dword ptr [ebp-4],eax
 00445699    mov         eax,dword ptr [ebp-4]
 0044569C    mov         eax,dword ptr [eax+4C];TBoundLabel.Height:Integer
 0044569F    mov         dword ptr [ebp-8],eax
 004456A2    mov         eax,dword ptr [ebp-8]
 004456A5    pop         ecx
 004456A6    pop         ecx
 004456A7    pop         ebp
 004456A8    ret
end;*}

//004456AC
{*function TBoundLabel.GetLeft:?;
begin
 004456AC    push        ebp
 004456AD    mov         ebp,esp
 004456AF    add         esp,0FFFFFFF8
 004456B2    mov         dword ptr [ebp-4],eax
 004456B5    mov         eax,dword ptr [ebp-4]
 004456B8    mov         eax,dword ptr [eax+40];TBoundLabel.Left:Integer
 004456BB    mov         dword ptr [ebp-8],eax
 004456BE    mov         eax,dword ptr [ebp-8]
 004456C1    pop         ecx
 004456C2    pop         ecx
 004456C3    pop         ebp
 004456C4    ret
end;*}

//004456C8
{*function TBoundLabel.GetTop:?;
begin
 004456C8    push        ebp
 004456C9    mov         ebp,esp
 004456CB    add         esp,0FFFFFFF8
 004456CE    mov         dword ptr [ebp-4],eax
 004456D1    mov         eax,dword ptr [ebp-4]
 004456D4    mov         eax,dword ptr [eax+44];TBoundLabel.Top:Integer
 004456D7    mov         dword ptr [ebp-8],eax
 004456DA    mov         eax,dword ptr [ebp-8]
 004456DD    pop         ecx
 004456DE    pop         ecx
 004456DF    pop         ebp
 004456E0    ret
end;*}

//004456E4
{*function TBoundLabel.GetWidth:?;
begin
 004456E4    push        ebp
 004456E5    mov         ebp,esp
 004456E7    add         esp,0FFFFFFF8
 004456EA    mov         dword ptr [ebp-4],eax
 004456ED    mov         eax,dword ptr [ebp-4]
 004456F0    mov         eax,dword ptr [eax+48];TBoundLabel.Width:Integer
 004456F3    mov         dword ptr [ebp-8],eax
 004456F6    mov         eax,dword ptr [ebp-8]
 004456F9    pop         ecx
 004456FA    pop         ecx
 004456FB    pop         ebp
 004456FC    ret
end;*}

//00445700
procedure TBoundLabel.SetHeight(Value:Integer);
begin
{*
 00445700    push        ebp
 00445701    mov         ebp,esp
 00445703    add         esp,0FFFFFFF8
 00445706    push        ebx
 00445707    mov         dword ptr [ebp-8],edx
 0044570A    mov         dword ptr [ebp-4],eax
 0044570D    mov         eax,dword ptr [ebp-4]
 00445710    call        TBoundLabel.GetWidth
 00445715    push        eax
 00445716    mov         eax,dword ptr [ebp-8]
 00445719    push        eax
 0044571A    mov         eax,dword ptr [ebp-4]
 0044571D    call        TBoundLabel.GetTop
 00445722    push        eax
 00445723    mov         eax,dword ptr [ebp-4]
 00445726    call        TBoundLabel.GetLeft
 0044572B    mov         edx,eax
 0044572D    mov         eax,dword ptr [ebp-4]
 00445730    pop         ecx
 00445731    mov         ebx,dword ptr [eax]
 00445733    call        dword ptr [ebx+84];TBoundLabel.sub_00482930
 00445739    pop         ebx
 0044573A    pop         ecx
 0044573B    pop         ecx
 0044573C    pop         ebp
 0044573D    ret
*}
end;

//00445740
procedure TBoundLabel.SetWidth(Value:Integer);
begin
{*
 00445740    push        ebp
 00445741    mov         ebp,esp
 00445743    add         esp,0FFFFFFF8
 00445746    push        ebx
 00445747    mov         dword ptr [ebp-8],edx
 0044574A    mov         dword ptr [ebp-4],eax
 0044574D    mov         eax,dword ptr [ebp-8]
 00445750    push        eax
 00445751    mov         eax,dword ptr [ebp-4]
 00445754    call        TBoundLabel.GetHeight
 00445759    push        eax
 0044575A    mov         eax,dword ptr [ebp-4]
 0044575D    call        TBoundLabel.GetTop
 00445762    push        eax
 00445763    mov         eax,dword ptr [ebp-4]
 00445766    call        TBoundLabel.GetLeft
 0044576B    mov         edx,eax
 0044576D    mov         eax,dword ptr [ebp-4]
 00445770    pop         ecx
 00445771    mov         ebx,dword ptr [eax]
 00445773    call        dword ptr [ebx+84];TBoundLabel.sub_00482930
 00445779    pop         ebx
 0044577A    pop         ecx
 0044577B    pop         ecx
 0044577C    pop         ebp
 0044577D    ret
*}
end;

//00445780
constructor sub_00445780;
begin
{*
 00445780    push        ebp
 00445781    mov         ebp,esp
 00445783    add         esp,0FFFFFFF4
 00445786    test        dl,dl
>00445788    je          00445792
 0044578A    add         esp,0FFFFFFF0
 0044578D    call        @ClassCreate
 00445792    mov         dword ptr [ebp-0C],ecx
 00445795    mov         byte ptr [ebp-5],dl
 00445798    mov         dword ptr [ebp-4],eax
 0044579B    mov         ecx,dword ptr [ebp-0C]
 0044579E    xor         edx,edx
 004457A0    mov         eax,dword ptr [ebp-4]
 004457A3    call        00473DC0
 004457A8    mov         eax,dword ptr [ebp-4]
 004457AB    mov         byte ptr [eax+224],0;TCustomLabeledEdit.FLabelPosition:TLabelPosition
 004457B2    mov         eax,dword ptr [ebp-4]
 004457B5    mov         dword ptr [eax+228],3;TCustomLabeledEdit.FLabelSpacing:Integer
 004457BF    mov         eax,dword ptr [ebp-4]
 004457C2    call        00445B88
 004457C7    mov         eax,dword ptr [ebp-4]
 004457CA    cmp         byte ptr [ebp-5],0
>004457CE    je          004457DF
 004457D0    call        @AfterConstruction
 004457D5    pop         dword ptr fs:[0]
 004457DC    add         esp,0C
 004457DF    mov         eax,dword ptr [ebp-4]
 004457E2    mov         esp,ebp
 004457E4    pop         ebp
 004457E5    ret
*}
end;

//004457E8
procedure TCustomLabeledEdit.CMBiDiModeChanged(Message:TMessage);
begin
{*
 004457E8    push        ebp
 004457E9    mov         ebp,esp
 004457EB    add         esp,0FFFFFFF8
 004457EE    mov         dword ptr [ebp-8],edx
 004457F1    mov         dword ptr [ebp-4],eax
 004457F4    mov         edx,dword ptr [ebp-8]
 004457F7    mov         eax,dword ptr [ebp-4]
 004457FA    call        TWinControl.CMBiDiModeChanged
 004457FF    mov         eax,dword ptr [ebp-4]
 00445802    mov         dl,byte ptr [eax+5F];TCustomLabeledEdit.FBiDiMode:TBiDiMode
 00445805    mov         eax,dword ptr [ebp-4]
 00445808    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0044580E    mov         ecx,dword ptr [eax]
 00445810    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 00445813    pop         ecx
 00445814    pop         ecx
 00445815    pop         ebp
 00445816    ret
*}
end;

//00445818
{*procedure TCustomLabeledEdit.CMEnabledChanged(?:?);
begin
 00445818    push        ebp
 00445819    mov         ebp,esp
 0044581B    add         esp,0FFFFFFF8
 0044581E    mov         dword ptr [ebp-8],edx
 00445821    mov         dword ptr [ebp-4],eax
 00445824    mov         edx,dword ptr [ebp-8]
 00445827    mov         eax,dword ptr [ebp-4]
 0044582A    call        TWinControl.CMEnabledChanged
 0044582F    mov         eax,dword ptr [ebp-4]
 00445832    mov         edx,dword ptr [eax]
 00445834    call        dword ptr [edx+50];TImage.GetEnabled
 00445837    mov         edx,eax
 00445839    mov         eax,dword ptr [ebp-4]
 0044583C    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445842    mov         ecx,dword ptr [eax]
 00445844    call        dword ptr [ecx+64];TImage.SetEnabled
 00445847    pop         ecx
 00445848    pop         ecx
 00445849    pop         ebp
 0044584A    ret
end;*}

//0044584C
{*procedure TCustomLabeledEdit.CMVisibleChanged(?:?);
begin
 0044584C    push        ebp
 0044584D    mov         ebp,esp
 0044584F    add         esp,0FFFFFFF8
 00445852    mov         dword ptr [ebp-8],edx
 00445855    mov         dword ptr [ebp-4],eax
 00445858    mov         edx,dword ptr [ebp-8]
 0044585B    mov         eax,dword ptr [ebp-4]
 0044585E    call        TWinControl.CMVisibleChanged
 00445863    mov         eax,dword ptr [ebp-4]
 00445866    mov         dl,byte ptr [eax+57];TCustomLabeledEdit.FVisible:Boolean
 00445869    mov         eax,dword ptr [ebp-4]
 0044586C    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445872    call        TImage.SetVisible
 00445877    pop         ecx
 00445878    pop         ecx
 00445879    pop         ebp
 0044587A    ret
end;*}

//0044587C
{*procedure sub_0044587C(?:?; ?:?);
begin
 0044587C    push        ebp
 0044587D    mov         ebp,esp
 0044587F    add         esp,0FFFFFFF4
 00445882    mov         byte ptr [ebp-9],cl
 00445885    mov         dword ptr [ebp-8],edx
 00445888    mov         dword ptr [ebp-4],eax
 0044588B    mov         cl,byte ptr [ebp-9]
 0044588E    mov         edx,dword ptr [ebp-8]
 00445891    mov         eax,dword ptr [ebp-4]
 00445894    call        004827F4
 00445899    mov         eax,dword ptr [ebp-8]
 0044589C    mov         edx,dword ptr [ebp-4]
 0044589F    cmp         eax,dword ptr [edx+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
>004458A5    jne         004458B8
 004458A7    cmp         byte ptr [ebp-9],1
>004458AB    jne         004458B8
 004458AD    mov         eax,dword ptr [ebp-4]
 004458B0    xor         edx,edx
 004458B2    mov         dword ptr [eax+220],edx;TCustomLabeledEdit.FEditLabel:TBoundLabel
 004458B8    mov         esp,ebp
 004458BA    pop         ebp
 004458BB    ret
end;*}

//004458BC
{*procedure sub_004458BC(?:?; ?:?; ?:?; ?:?);
begin
 004458BC    push        ebp
 004458BD    mov         ebp,esp
 004458BF    add         esp,0FFFFFFF4
 004458C2    mov         dword ptr [ebp-0C],ecx
 004458C5    mov         dword ptr [ebp-8],edx
 004458C8    mov         dword ptr [ebp-4],eax
 004458CB    mov         eax,dword ptr [ebp+0C]
 004458CE    push        eax
 004458CF    mov         eax,dword ptr [ebp+8]
 004458D2    push        eax
 004458D3    mov         ecx,dword ptr [ebp-0C]
 004458D6    mov         edx,dword ptr [ebp-8]
 004458D9    mov         eax,dword ptr [ebp-4]
 004458DC    call        0048B89C
 004458E1    mov         eax,dword ptr [ebp-4]
 004458E4    mov         dl,byte ptr [eax+224];TCustomLabeledEdit.FLabelPosition:TLabelPosition
 004458EA    mov         eax,dword ptr [ebp-4]
 004458ED    call        TLabeledEdit.SetLabelPosition
 004458F2    mov         esp,ebp
 004458F4    pop         ebp
 004458F5    ret         8
end;*}

//004458F8
procedure TLabeledEdit.SetLabelPosition(Value:TLabelPosition);
begin
{*
 004458F8    push        ebp
 004458F9    mov         ebp,esp
 004458FB    add         esp,0FFFFFFF0
 004458FE    push        ebx
 004458FF    mov         byte ptr [ebp-5],dl
 00445902    mov         dword ptr [ebp-4],eax
 00445905    mov         eax,dword ptr [ebp-4]
 00445908    cmp         dword ptr [eax+220],0;TLabeledEdit.FEditLabel:TBoundLabel
>0044590F    je          00445A5A
 00445915    mov         al,byte ptr [ebp-5]
 00445918    mov         edx,dword ptr [ebp-4]
 0044591B    mov         byte ptr [edx+224],al;TLabeledEdit.FLabelPosition:TLabelPosition
 00445921    mov         al,byte ptr [ebp-5]
 00445924    sub         al,1
>00445926    jb          0044593B
>00445928    je          0044596D
 0044592A    dec         al
>0044592C    je          00445995
 0044592E    dec         al
>00445930    je          004459E5
>00445936    jmp         00445A25
 0044593B    mov         eax,dword ptr [ebp-4]
 0044593E    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 00445944    call        TBoundLabel.GetHeight
 00445949    mov         edx,dword ptr [ebp-4]
 0044594C    mov         edx,dword ptr [edx+44];TLabeledEdit.Top:Integer
 0044594F    sub         edx,eax
 00445951    mov         eax,dword ptr [ebp-4]
 00445954    sub         edx,dword ptr [eax+228]
 0044595A    lea         ecx,[ebp-0D]
 0044595D    mov         eax,dword ptr [ebp-4]
 00445960    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 00445963    call        Point
>00445968    jmp         00445A25
 0044596D    lea         ecx,[ebp-0D]
 00445970    mov         eax,dword ptr [ebp-4]
 00445973    mov         edx,dword ptr [eax+44];TLabeledEdit.Top:Integer
 00445976    mov         eax,dword ptr [ebp-4]
 00445979    add         edx,dword ptr [eax+4C];TLabeledEdit.Height:Integer
 0044597C    mov         eax,dword ptr [ebp-4]
 0044597F    add         edx,dword ptr [eax+228];TLabeledEdit.FLabelSpacing:Integer
 00445985    mov         eax,dword ptr [ebp-4]
 00445988    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 0044598B    call        Point
>00445990    jmp         00445A25
 00445995    mov         eax,dword ptr [ebp-4]
 00445998    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 0044599E    call        TBoundLabel.GetHeight
 004459A3    mov         edx,dword ptr [ebp-4]
 004459A6    mov         edx,dword ptr [edx+4C];TLabeledEdit.Height:Integer
 004459A9    sub         edx,eax
 004459AB    sar         edx,1
>004459AD    jns         004459B2
 004459AF    adc         edx,0
 004459B2    mov         eax,dword ptr [ebp-4]
 004459B5    add         edx,dword ptr [eax+44];TLabeledEdit.Top:Integer
 004459B8    push        edx
 004459B9    mov         eax,dword ptr [ebp-4]
 004459BC    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 004459C2    call        TBoundLabel.GetWidth
 004459C7    push        eax
 004459C8    mov         eax,dword ptr [ebp-4]
 004459CB    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 004459CE    pop         edx
 004459CF    sub         eax,edx
 004459D1    mov         edx,dword ptr [ebp-4]
 004459D4    sub         eax,dword ptr [edx+228]
 004459DA    lea         ecx,[ebp-0D]
 004459DD    pop         edx
 004459DE    call        Point
>004459E3    jmp         00445A25
 004459E5    mov         eax,dword ptr [ebp-4]
 004459E8    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 004459EE    call        TBoundLabel.GetHeight
 004459F3    mov         edx,dword ptr [ebp-4]
 004459F6    mov         edx,dword ptr [edx+4C];TLabeledEdit.Height:Integer
 004459F9    sub         edx,eax
 004459FB    sar         edx,1
>004459FD    jns         00445A02
 004459FF    adc         edx,0
 00445A02    mov         eax,dword ptr [ebp-4]
 00445A05    add         edx,dword ptr [eax+44];TLabeledEdit.Top:Integer
 00445A08    lea         ecx,[ebp-0D]
 00445A0B    mov         eax,dword ptr [ebp-4]
 00445A0E    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 00445A11    mov         ebx,dword ptr [ebp-4]
 00445A14    add         eax,dword ptr [ebx+48];TLabeledEdit.Width:Integer
 00445A17    mov         ebx,dword ptr [ebp-4]
 00445A1A    add         eax,dword ptr [ebx+228];TLabeledEdit.FLabelSpacing:Integer
 00445A20    call        Point
 00445A25    mov         eax,dword ptr [ebp-4]
 00445A28    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 00445A2E    call        TBoundLabel.GetWidth
 00445A33    push        eax
 00445A34    mov         eax,dword ptr [ebp-4]
 00445A37    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 00445A3D    call        TBoundLabel.GetHeight
 00445A42    push        eax
 00445A43    mov         ecx,dword ptr [ebp-9]
 00445A46    mov         edx,dword ptr [ebp-0D]
 00445A49    mov         eax,dword ptr [ebp-4]
 00445A4C    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 00445A52    mov         ebx,dword ptr [eax]
 00445A54    call        dword ptr [ebx+84];TBoundLabel.sub_00482930
 00445A5A    pop         ebx
 00445A5B    mov         esp,ebp
 00445A5D    pop         ebp
 00445A5E    ret
*}
end;

//00445A60
procedure TLabeledEdit.SetLabelSpacing(Value:Integer);
begin
{*
 00445A60    push        ebp
 00445A61    mov         ebp,esp
 00445A63    add         esp,0FFFFFFF8
 00445A66    mov         dword ptr [ebp-8],edx
 00445A69    mov         dword ptr [ebp-4],eax
 00445A6C    mov         eax,dword ptr [ebp-8]
 00445A6F    mov         edx,dword ptr [ebp-4]
 00445A72    mov         dword ptr [edx+228],eax;TLabeledEdit.FLabelSpacing:Integer
 00445A78    mov         eax,dword ptr [ebp-4]
 00445A7B    mov         dl,byte ptr [eax+224];TLabeledEdit.FLabelPosition:TLabelPosition
 00445A81    mov         eax,dword ptr [ebp-4]
 00445A84    call        TLabeledEdit.SetLabelPosition
 00445A89    pop         ecx
 00445A8A    pop         ecx
 00445A8B    pop         ebp
 00445A8C    ret
*}
end;

//00445A90
{*procedure sub_00445A90(?:?);
begin
 00445A90    push        ebp
 00445A91    mov         ebp,esp
 00445A93    add         esp,0FFFFFFF4
 00445A96    xor         ecx,ecx
 00445A98    mov         dword ptr [ebp-0C],ecx
 00445A9B    mov         dword ptr [ebp-8],edx
 00445A9E    mov         dword ptr [ebp-4],eax
 00445AA1    xor         eax,eax
 00445AA3    push        ebp
 00445AA4    push        445B32
 00445AA9    push        dword ptr fs:[eax]
 00445AAC    mov         dword ptr fs:[eax],esp
 00445AAF    mov         eax,dword ptr [ebp-4]
 00445AB2    test        byte ptr [eax+1C],10;TCustomLabeledEdit.FComponentState:TComponentState
>00445AB6    je          00445AFE
 00445AB8    mov         eax,dword ptr [ebp-4]
 00445ABB    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445AC1    call        00483694
 00445AC6    test        eax,eax
>00445AC8    je          00445AED
 00445ACA    lea         edx,[ebp-0C]
 00445ACD    mov         eax,dword ptr [ebp-4]
 00445AD0    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445AD6    call        TPanel.GetCaption
 00445ADB    mov         eax,dword ptr [ebp-0C]
 00445ADE    mov         edx,dword ptr [ebp-4]
 00445AE1    mov         edx,dword ptr [edx+8];TCustomLabeledEdit.Name:TComponentName
 00445AE4    call        CompareText
 00445AE9    test        eax,eax
>00445AEB    jne         00445AFE
 00445AED    mov         edx,dword ptr [ebp-8]
 00445AF0    mov         eax,dword ptr [ebp-4]
 00445AF3    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445AF9    call        TPanel.SetCaption
 00445AFE    mov         edx,dword ptr [ebp-8]
 00445B01    mov         eax,dword ptr [ebp-4]
 00445B04    call        00483488
 00445B09    mov         eax,dword ptr [ebp-4]
 00445B0C    test        byte ptr [eax+1C],10;TCustomLabeledEdit.FComponentState:TComponentState
>00445B10    je          00445B1C
 00445B12    xor         edx,edx
 00445B14    mov         eax,dword ptr [ebp-4]
 00445B17    call        TPanel.SetCaption
 00445B1C    xor         eax,eax
 00445B1E    pop         edx
 00445B1F    pop         ecx
 00445B20    pop         ecx
 00445B21    mov         dword ptr fs:[eax],edx
 00445B24    push        445B39
 00445B29    lea         eax,[ebp-0C]
 00445B2C    call        @LStrClr
 00445B31    ret
>00445B32    jmp         @HandleFinally
>00445B37    jmp         00445B29
 00445B39    mov         esp,ebp
 00445B3B    pop         ebp
 00445B3C    ret
end;*}

//00445B40
{*procedure sub_00445B40(?:?);
begin
 00445B40    push        ebp
 00445B41    mov         ebp,esp
 00445B43    add         esp,0FFFFFFF8
 00445B46    mov         dword ptr [ebp-8],edx
 00445B49    mov         dword ptr [ebp-4],eax
 00445B4C    mov         edx,dword ptr [ebp-8]
 00445B4F    mov         eax,dword ptr [ebp-4]
 00445B52    call        0048359C
 00445B57    mov         eax,dword ptr [ebp-4]
 00445B5A    cmp         dword ptr [eax+220],0;TCustomLabeledEdit.FEditLabel:TBoundLabel
>00445B61    je          00445B84
 00445B63    mov         edx,dword ptr [ebp-8]
 00445B66    mov         eax,dword ptr [ebp-4]
 00445B69    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445B6F    mov         ecx,dword ptr [eax]
 00445B71    call        dword ptr [ecx+68];TBoundLabel.sub_0048359C
 00445B74    mov         dl,1
 00445B76    mov         eax,dword ptr [ebp-4]
 00445B79    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445B7F    call        TImage.SetVisible
 00445B84    pop         ecx
 00445B85    pop         ecx
 00445B86    pop         ebp
 00445B87    ret
end;*}

//00445B88
procedure sub_00445B88(?:TCustomLabeledEdit);
begin
{*
 00445B88    push        ebp
 00445B89    mov         ebp,esp
 00445B8B    push        ecx
 00445B8C    mov         dword ptr [ebp-4],eax
 00445B8F    mov         eax,dword ptr [ebp-4]
 00445B92    cmp         dword ptr [eax+220],0;TCustomLabeledEdit.FEditLabel:TBoundLabel
>00445B99    jne         00445BD5
 00445B9B    mov         ecx,dword ptr [ebp-4]
 00445B9E    mov         dl,1
 00445BA0    mov         eax,[004417CC];TBoundLabel
 00445BA5    call        TBoundLabel.Create;TBoundLabel.Create
 00445BAA    mov         edx,dword ptr [ebp-4]
 00445BAD    mov         dword ptr [edx+220],eax;TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445BB3    mov         edx,dword ptr [ebp-4]
 00445BB6    mov         eax,dword ptr [ebp-4]
 00445BB9    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445BBF    call        0042A2CC
 00445BC4    mov         edx,dword ptr [ebp-4]
 00445BC7    mov         eax,dword ptr [ebp-4]
 00445BCA    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 00445BD0    call        TLabel.SetFocusControl
 00445BD5    pop         ecx
 00445BD6    pop         ebp
 00445BD7    ret
*}
end;

//00445D50
procedure _NF__82C;
begin
{*
 00445D50    das
 00445D51    add         byte ptr [eax],al
 00445D53    add         byte ptr [eax-3D],cl
 00445D56    push        esi
 00445D57    add         byte ptr [eax+5D],cl
 00445D5A    inc         esp
 00445D5B    add         byte ptr [eax-3D],al
 00445D5E    push        esi
 00445D5F    add         byte ptr [eax+5D],al
 00445D62    inc         esp
 00445D63    add         byte ptr [eax],bh
 00445D65    ret
*}
end;

Initialization
//00445F14
{*
 00445F14    sub         dword ptr ds:[571CD4],1
>00445F1B    jae         00445F41
 00445F1D    mov         eax,445D50;_NF__82C
 00445F22    call        @InitResStrings
 00445F27    mov         eax,[0047DF94];TControl
 00445F2C    call        StartClassGroup
 00445F31    mov         edx,dword ptr ds:[47DF94];TControl
 00445F37    mov         eax,[00440074];TTimer
 00445F3C    call        GroupDescendentsWith
 00445F41    ret
*}
Finalization
//00445ECC
{*
 00445ECC    push        ebp
 00445ECD    mov         ebp,esp
 00445ECF    xor         eax,eax
 00445ED1    push        ebp
 00445ED2    push        445F08
 00445ED7    push        dword ptr fs:[eax]
 00445EDA    mov         dword ptr fs:[eax],esp
 00445EDD    inc         dword ptr ds:[571CD4]
>00445EE3    jne         00445EFA
 00445EE5    mov         eax,56C1D4
 00445EEA    mov         ecx,2F
 00445EEF    mov         edx,dword ptr ds:[41E66C];TIdentMapEntry
 00445EF5    call        @FinalizeArray
 00445EFA    xor         eax,eax
 00445EFC    pop         edx
 00445EFD    pop         ecx
 00445EFE    pop         ecx
 00445EFF    mov         dword ptr fs:[eax],edx
 00445F02    push        445F0F
 00445F07    ret
>00445F08    jmp         @HandleFinally
>00445F0D    jmp         00445F07
 00445F0F    pop         ebp
 00445F10    ret
*}
end.