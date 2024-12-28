//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Buttons;

interface

uses
  SysUtils, Classes, Buttons, Graphics;

type
  TButtonLayout = (blGlyphLeft, blGlyphRight, blGlyphTop, blGlyphBottom);
  TSpeedButtonActionLink = class(TControlActionLink)
  public
    ........FClient:TSpeedButton;//f20
    //procedure v0(?:?); virtual;//v0//004482DC
    //function v24:?; virtual;//v24//0044830C
    //function v2C:?; virtual;//v2C//00448374
    //procedure v50(?:?); virtual;//v50//004483B8
    //procedure v58(?:?); virtual;//v58//004483E4
  end;
  TSpeedButton = class(TGraphicControl)
  public
    GroupIndex:Integer;//f168
    FGlyph:Pointer;//f16C
    Down:Boolean;//f170
    FDragging:Boolean;//f171
    AllowAllUp:Boolean;//f172
    Layout:TButtonLayout;//f173
    Spacing:Integer;//f174
    Transparent:Boolean;//f178
    Margin:Integer;//f17C
    Flat:Boolean;//f180
    FMouseInControl:Boolean;//f181
    FState:TButtonState;//f182
    destructor Destroy; virtual;//004484F4
    procedure vC; virtual;//vC//00448AAC
    constructor Create; virtual;//v2C//00448410
    procedure v8C; virtual;//v8C//0044853C
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//004490E0
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004491FC
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//00449118
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004492AC
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004492C4
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//00449314
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004493AC
    //procedure CMButtonPressed(?:?); message CM_BUTTONPRESSED;//0044915C
    //procedure CMSysColorChange(?:?); message CM_SYSCOLORCHANGE;//004492DC
    //procedure sub_00448C10(?:?; ?:?; ?:?; ?:?); dynamic;//00448C10
    //procedure sub_00448B50(?:?; ?:?; ?:?); dynamic;//00448B50
    //procedure sub_00448AE8(?:?; ?:?; ?:?; ?:?); dynamic;//00448AE8
    procedure sub_00448D48; dynamic;//00448D48
    procedure sub_00448D68; dynamic;//00448D68
    procedure sub_00448D34; dynamic;//00448D34
    //procedure sub_004494D8(?:?; ?:?); dynamic;//004494D8
    //function GetGlyph:?;//00448D80
    procedure SetGlyph(Value:TBitmap);//00448DA0
    //function GetNumGlyphs:?;//00448DCC
    procedure SetNumGlyphs(Value:TNumGlyphs);//00448DEC
    procedure SetDown(Value:Boolean);//00448EA4
    procedure SetFlat(Value:Boolean);//00448F40
    procedure SetGroupIndex(Value:Integer);//00448F74
    procedure SetLayout(Value:TButtonLayout);//00448FA8
    procedure SetMargin(Value:Integer);//00448FDC
    procedure SetSpacing(Value:Integer);//00449014
    procedure SetTransparent(Value:Boolean);//00449048
    procedure SetAllowAllUp(Value:Boolean);//004490AC
  end;
  TGlyphList = class(TImageList)
  public
    Used:TBits;//f80
    FCount:Integer;//f84
    destructor Destroy; virtual;//004470DC
    //constructor Create(?:?);//00447078
  end;
  TGlyphCache = class(TObject)
  public
    GlyphLists:TList;//f4
    constructor Create;//00447204
  end;
  TButtonGlyph = class(TObject)
  public
    FOriginal:TBitmap;//f4
    FGlyphList:TGlyphList;//f8
    FIndexs:array[TButtonState] of System.Integer;//fC
    FTransparentColor:TColor;//f1C
    FNumGlyphs:TNumGlyphs;//f20
    FOnChange:TNotifyEvent;//f28
    constructor Create;//00447368
  end;
    destructor Destroy;//004470DC
    //function sub_0044711C(?:?):?;//0044711C
    //function sub_00447184(?:?; ?:TBitmap; ?:?):?;//00447184
    //procedure sub_004471C0(?:?; ?:?);//004471C0
    //function sub_00447294(?:TGlyphCache; ?:Integer; ?:?):?;//00447294
    //procedure sub_00447310(?:TGlyphCache; ?:?);//00447310
    procedure sub_00447484(?:Pointer);//00447484
    //procedure sub_004474EC(?:?; ?:?);//004474EC
    procedure sub_00447538(?:Pointer; ?:TBitmap);//00447538
    procedure sub_004475D0(?:Pointer; ?:Integer);//004475D0
    //function sub_00447610(?:Pointer; ?:?):?;//00447610
    //procedure sub_00447C54(?:?; ?:?; ?:?; ?:?; ?:?);//00447C54
    //procedure sub_00447DE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00447DE0
    //procedure sub_00447ED8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00447ED8
    //procedure sub_00448268(?:Pointer; ?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00448268
    //procedure sub_004482DC(?:?);//004482DC
    //function sub_0044830C:?;//0044830C
    //function sub_00448374:?;//00448374
    //procedure sub_004483B8(?:?);//004483B8
    //procedure sub_004483E4(?:?);//004483E4
    constructor Create;//00448410
    destructor Destroy;//004484F4
    procedure sub_0044853C;//0044853C
    procedure sub_00448A30(?:TSpeedButton);//00448A30
    procedure sub_00448AAC;//00448AAC
    //procedure sub_00448AE8(?:?; ?:?; ?:?; ?:?);//00448AE8
    //procedure sub_00448B50(?:?; ?:?; ?:?);//00448B50
    //procedure sub_00448C10(?:?; ?:?; ?:?; ?:?);//00448C10
    procedure sub_00448D34;//00448D34
    procedure sub_00448D48;//00448D48
    procedure sub_00448D68;//00448D68
    //procedure sub_00448E3C(?:?; ?:?);//00448E3C
    procedure sub_00448E54(?:TSpeedButton);//00448E54
    //procedure WMLButtonDblClk(?:?);//004490E0
    //procedure CMEnabledChanged(?:?);//00449118
    //procedure CMButtonPressed(?:?);//0044915C
    //procedure CMDialogChar(?:?);//004491FC
    //procedure CMFontChanged(?:?);//004492AC
    //procedure CMTextChanged(?:?);//004492C4
    //procedure CMSysColorChange(?:?);//004492DC
    //procedure CMMouseEnter(?:?);//00449314
    //procedure CMMouseLeave(?:?);//004493AC
    //procedure sub_00449438(?:?; ?:?; ?:?);//00449438
    //procedure sub_004494D8(?:?; ?:?);//004494D8
    procedure sub_00449594;//00449594
    procedure _NF__383;//004495BC

implementation

//00447078
{*constructor TGlyphList.Create(?:?);
begin
 00447078    push        ebp
 00447079    mov         ebp,esp
 0044707B    add         esp,0FFFFFFF4
 0044707E    test        dl,dl
>00447080    je          0044708A
 00447082    add         esp,0FFFFFFF0
 00447085    call        @ClassCreate
 0044708A    mov         dword ptr [ebp-0C],ecx
 0044708D    mov         byte ptr [ebp-5],dl
 00447090    mov         dword ptr [ebp-4],eax
 00447093    mov         eax,dword ptr [ebp+8]
 00447096    push        eax
 00447097    mov         ecx,dword ptr [ebp-0C]
 0044709A    xor         edx,edx
 0044709C    mov         eax,dword ptr [ebp-4]
 0044709F    call        TDragImageList.Create
 004470A4    mov         dl,1
 004470A6    mov         eax,[0041D528];TBits
 004470AB    call        TObject.Create;TBits.Create
 004470B0    mov         edx,dword ptr [ebp-4]
 004470B3    mov         dword ptr [edx+80],eax
 004470B9    mov         eax,dword ptr [ebp-4]
 004470BC    cmp         byte ptr [ebp-5],0
>004470C0    je          004470D1
 004470C2    call        @AfterConstruction
 004470C7    pop         dword ptr fs:[0]
 004470CE    add         esp,0C
 004470D1    mov         eax,dword ptr [ebp-4]
 004470D4    mov         esp,ebp
 004470D6    pop         ebp
 004470D7    ret         4
end;*}

//004470DC
destructor TGlyphList.Destroy;
begin
{*
 004470DC    push        ebp
 004470DD    mov         ebp,esp
 004470DF    add         esp,0FFFFFFF8
 004470E2    call        @BeforeDestruction
 004470E7    mov         byte ptr [ebp-5],dl
 004470EA    mov         dword ptr [ebp-4],eax
 004470ED    mov         eax,dword ptr [ebp-4]
 004470F0    mov         eax,dword ptr [eax+80]
 004470F6    call        TObject.Free
 004470FB    mov         dl,byte ptr [ebp-5]
 004470FE    and         dl,0FC
 00447101    mov         eax,dword ptr [ebp-4]
 00447104    call        TCustomImageList.Destroy
 00447109    cmp         byte ptr [ebp-5],0
>0044710D    jle         00447117
 0044710F    mov         eax,dword ptr [ebp-4]
 00447112    call        @ClassDestroy
 00447117    pop         ecx
 00447118    pop         ecx
 00447119    pop         ebp
 0044711A    ret
*}
end;

//0044711C
{*function sub_0044711C(?:?):?;
begin
 0044711C    push        ebp
 0044711D    mov         ebp,esp
 0044711F    add         esp,0FFFFFFF8
 00447122    mov         dword ptr [ebp-4],eax
 00447125    mov         eax,dword ptr [ebp-4]
 00447128    mov         eax,dword ptr [eax+80]
 0044712E    call        004209E0
 00447133    mov         dword ptr [ebp-8],eax
 00447136    mov         eax,dword ptr [ebp-4]
 00447139    mov         eax,dword ptr [eax+80]
 0044713F    mov         eax,dword ptr [eax+4]
 00447142    cmp         eax,dword ptr [ebp-8]
>00447145    jg          00447168
 00447147    xor         ecx,ecx
 00447149    xor         edx,edx
 0044714B    mov         eax,dword ptr [ebp-4]
 0044714E    call        00495110
 00447153    mov         dword ptr [ebp-8],eax
 00447156    mov         edx,dword ptr [ebp-8]
 00447159    inc         edx
 0044715A    mov         eax,dword ptr [ebp-4]
 0044715D    mov         eax,dword ptr [eax+80]
 00447163    call        TBits.SetSize
 00447168    mov         cl,1
 0044716A    mov         edx,dword ptr [ebp-8]
 0044716D    mov         eax,dword ptr [ebp-4]
 00447170    mov         eax,dword ptr [eax+80]
 00447176    call        TBits.SetBit
 0044717B    mov         eax,dword ptr [ebp-8]
 0044717E    pop         ecx
 0044717F    pop         ecx
 00447180    pop         ebp
 00447181    ret
end;*}

//00447184
{*function sub_00447184(?:?; ?:TBitmap; ?:?):?;
begin
 00447184    push        ebp
 00447185    mov         ebp,esp
 00447187    add         esp,0FFFFFFF0
 0044718A    mov         dword ptr [ebp-0C],ecx
 0044718D    mov         dword ptr [ebp-8],edx
 00447190    mov         dword ptr [ebp-4],eax
 00447193    mov         eax,dword ptr [ebp-4]
 00447196    call        0044711C
 0044719B    mov         dword ptr [ebp-10],eax
 0044719E    mov         eax,dword ptr [ebp-0C]
 004471A1    push        eax
 004471A2    mov         ecx,dword ptr [ebp-8]
 004471A5    mov         edx,dword ptr [ebp-10]
 004471A8    mov         eax,dword ptr [ebp-4]
 004471AB    call        004953B8
 004471B0    mov         eax,dword ptr [ebp-4]
 004471B3    inc         dword ptr [eax+84]
 004471B9    mov         eax,dword ptr [ebp-10]
 004471BC    mov         esp,ebp
 004471BE    pop         ebp
 004471BF    ret
end;*}

//004471C0
{*procedure sub_004471C0(?:?; ?:?);
begin
 004471C0    push        ebp
 004471C1    mov         ebp,esp
 004471C3    add         esp,0FFFFFFF8
 004471C6    mov         dword ptr [ebp-8],edx
 004471C9    mov         dword ptr [ebp-4],eax
 004471CC    mov         edx,dword ptr [ebp-8]
 004471CF    mov         eax,dword ptr [ebp-4]
 004471D2    mov         eax,dword ptr [eax+80]
 004471D8    call        TBits.GetBit
 004471DD    test        al,al
>004471DF    je          004471FD
 004471E1    mov         eax,dword ptr [ebp-4]
 004471E4    dec         dword ptr [eax+84]
 004471EA    xor         ecx,ecx
 004471EC    mov         edx,dword ptr [ebp-8]
 004471EF    mov         eax,dword ptr [ebp-4]
 004471F2    mov         eax,dword ptr [eax+80]
 004471F8    call        TBits.SetBit
 004471FD    pop         ecx
 004471FE    pop         ecx
 004471FF    pop         ebp
 00447200    ret
end;*}

//00447204
constructor TGlyphCache.Create;
begin
{*
 00447204    push        ebp
 00447205    mov         ebp,esp
 00447207    add         esp,0FFFFFFF8
 0044720A    test        dl,dl
>0044720C    je          00447216
 0044720E    add         esp,0FFFFFFF0
 00447211    call        @ClassCreate
 00447216    mov         byte ptr [ebp-5],dl
 00447219    mov         dword ptr [ebp-4],eax
 0044721C    xor         edx,edx
 0044721E    mov         eax,dword ptr [ebp-4]
 00447221    call        TObject.Create
 00447226    mov         dl,1
 00447228    mov         eax,[0041D46C];TList
 0044722D    call        TObject.Create;TList.Create
 00447232    mov         edx,dword ptr [ebp-4]
 00447235    mov         dword ptr [edx+4],eax
 00447238    mov         eax,dword ptr [ebp-4]
 0044723B    cmp         byte ptr [ebp-5],0
>0044723F    je          00447250
 00447241    call        @AfterConstruction
 00447246    pop         dword ptr fs:[0]
 0044724D    add         esp,0C
 00447250    mov         eax,dword ptr [ebp-4]
 00447253    pop         ecx
 00447254    pop         ecx
 00447255    pop         ebp
 00447256    ret
*}
end;

//00447294
{*function sub_00447294(?:TGlyphCache; ?:Integer; ?:?):?;
begin
 00447294    push        ebp
 00447295    mov         ebp,esp
 00447297    add         esp,0FFFFFFEC
 0044729A    mov         dword ptr [ebp-0C],ecx
 0044729D    mov         dword ptr [ebp-8],edx
 004472A0    mov         dword ptr [ebp-4],eax
 004472A3    mov         eax,dword ptr [ebp-4]
 004472A6    mov         eax,dword ptr [eax+4]
 004472A9    mov         eax,dword ptr [eax+8]
 004472AC    dec         eax
 004472AD    cmp         eax,0
>004472B0    jl          004472E5
 004472B2    mov         dword ptr [ebp-14],eax
 004472B5    mov         eax,dword ptr [ebp-4]
 004472B8    mov         eax,dword ptr [eax+4]
 004472BB    mov         edx,dword ptr [ebp-14]
 004472BE    call        TList.Get
 004472C3    mov         dword ptr [ebp-10],eax
 004472C6    mov         eax,dword ptr [ebp-10]
 004472C9    mov         eax,dword ptr [eax+34]
 004472CC    cmp         eax,dword ptr [ebp-8]
>004472CF    jne         004472DC
 004472D1    mov         eax,dword ptr [ebp-10]
 004472D4    mov         eax,dword ptr [eax+30]
 004472D7    cmp         eax,dword ptr [ebp-0C]
>004472DA    je          00447309
 004472DC    dec         dword ptr [ebp-14]
 004472DF    cmp         dword ptr [ebp-14],0FFFFFFFF
>004472E3    jne         004472B5
 004472E5    mov         eax,dword ptr [ebp-0C]
 004472E8    push        eax
 004472E9    mov         ecx,dword ptr [ebp-8]
 004472EC    mov         dl,1
 004472EE    mov         eax,[00446F04];TGlyphList
 004472F3    call        TGlyphList.Create;TGlyphList.Create
 004472F8    mov         dword ptr [ebp-10],eax
 004472FB    mov         eax,dword ptr [ebp-4]
 004472FE    mov         eax,dword ptr [eax+4]
 00447301    mov         edx,dword ptr [ebp-10]
 00447304    call        TList.Add
 00447309    mov         eax,dword ptr [ebp-10]
 0044730C    mov         esp,ebp
 0044730E    pop         ebp
 0044730F    ret
end;*}

//00447310
{*procedure sub_00447310(?:TGlyphCache; ?:?);
begin
 00447310    push        ebp
 00447311    mov         ebp,esp
 00447313    add         esp,0FFFFFFF8
 00447316    mov         dword ptr [ebp-8],edx
 00447319    mov         dword ptr [ebp-4],eax
 0044731C    cmp         dword ptr [ebp-8],0
>00447320    je          00447344
 00447322    mov         eax,dword ptr [ebp-8]
 00447325    cmp         dword ptr [eax+84],0
>0044732C    jne         00447344
 0044732E    mov         edx,dword ptr [ebp-8]
 00447331    mov         eax,dword ptr [ebp-4]
 00447334    mov         eax,dword ptr [eax+4]
 00447337    call        004204F0
 0044733C    mov         eax,dword ptr [ebp-8]
 0044733F    call        TObject.Free
 00447344    pop         ecx
 00447345    pop         ecx
 00447346    pop         ebp
 00447347    ret
end;*}

//00447368
constructor TButtonGlyph.Create;
begin
{*
 00447368    push        ebp
 00447369    mov         ebp,esp
 0044736B    add         esp,0FFFFFFF8
 0044736E    test        dl,dl
>00447370    je          0044737A
 00447372    add         esp,0FFFFFFF0
 00447375    call        @ClassCreate
 0044737A    mov         byte ptr [ebp-5],dl
 0044737D    mov         dword ptr [ebp-4],eax
 00447380    xor         edx,edx
 00447382    mov         eax,dword ptr [ebp-4]
 00447385    call        TObject.Create
 0044738A    mov         dl,1
 0044738C    mov         eax,[0042CF48];TBitmap
 00447391    call        TBitmap.Create;TBitmap.Create
 00447396    mov         edx,dword ptr [ebp-4]
 00447399    mov         dword ptr [edx+4],eax
 0044739C    mov         eax,dword ptr [ebp-4]
 0044739F    mov         eax,dword ptr [eax+4]
 004473A2    mov         edx,dword ptr [ebp-4]
 004473A5    mov         dword ptr [eax+14],edx
 004473A8    mov         dword ptr [eax+10],4474EC;sub_004474EC
 004473AF    mov         eax,dword ptr [ebp-4]
 004473B2    mov         dword ptr [eax+1C],8080
 004473B9    mov         eax,dword ptr [ebp-4]
 004473BC    mov         byte ptr [eax+20],1
 004473C0    mov         byte ptr [ebp-6],0
 004473C4    xor         eax,eax
 004473C6    mov         al,byte ptr [ebp-6]
 004473C9    mov         edx,dword ptr [ebp-4]
 004473CC    mov         dword ptr [edx+eax*4+0C],0FFFFFFFF
 004473D4    inc         byte ptr [ebp-6]
 004473D7    cmp         byte ptr [ebp-6],4
>004473DB    jne         004473C4
 004473DD    cmp         dword ptr ds:[56C378],0;gvar_0056C378:TGlyphCache
>004473E4    jne         004473F7
 004473E6    mov         dl,1
 004473E8    mov         eax,[00446FC4];TGlyphCache
 004473ED    call        TGlyphCache.Create;TGlyphCache.Create
 004473F2    mov         [0056C378],eax;gvar_0056C378:TGlyphCache
 004473F7    mov         eax,dword ptr [ebp-4]
 004473FA    cmp         byte ptr [ebp-5],0
>004473FE    je          0044740F
 00447400    call        @AfterConstruction
 00447405    pop         dword ptr fs:[0]
 0044740C    add         esp,0C
 0044740F    mov         eax,dword ptr [ebp-4]
 00447412    pop         ecx
 00447413    pop         ecx
 00447414    pop         ebp
 00447415    ret
*}
end;

//00447484
procedure sub_00447484(?:Pointer);
begin
{*
 00447484    push        ebp
 00447485    mov         ebp,esp
 00447487    add         esp,0FFFFFFF8
 0044748A    mov         dword ptr [ebp-4],eax
 0044748D    mov         byte ptr [ebp-5],0
 00447491    xor         eax,eax
 00447493    mov         al,byte ptr [ebp-5]
 00447496    mov         edx,dword ptr [ebp-4]
 00447499    cmp         dword ptr [edx+eax*4+0C],0FFFFFFFF
>0044749E    je          004474B7
 004474A0    xor         eax,eax
 004474A2    mov         al,byte ptr [ebp-5]
 004474A5    mov         edx,dword ptr [ebp-4]
 004474A8    mov         edx,dword ptr [edx+eax*4+0C]
 004474AC    mov         eax,dword ptr [ebp-4]
 004474AF    mov         eax,dword ptr [eax+8]
 004474B2    call        004471C0
 004474B7    xor         eax,eax
 004474B9    mov         al,byte ptr [ebp-5]
 004474BC    mov         edx,dword ptr [ebp-4]
 004474BF    mov         dword ptr [edx+eax*4+0C],0FFFFFFFF
 004474C7    inc         byte ptr [ebp-5]
 004474CA    cmp         byte ptr [ebp-5],4
>004474CE    jne         00447491
 004474D0    mov         eax,dword ptr [ebp-4]
 004474D3    mov         edx,dword ptr [eax+8]
 004474D6    mov         eax,[0056C378];0x0 gvar_0056C378:TGlyphCache
 004474DB    call        00447310
 004474E0    mov         eax,dword ptr [ebp-4]
 004474E3    xor         edx,edx
 004474E5    mov         dword ptr [eax+8],edx
 004474E8    pop         ecx
 004474E9    pop         ecx
 004474EA    pop         ebp
 004474EB    ret
*}
end;

//004474EC
{*procedure sub_004474EC(?:?; ?:?);
begin
 004474EC    push        ebp
 004474ED    mov         ebp,esp
 004474EF    add         esp,0FFFFFFF8
 004474F2    push        ebx
 004474F3    mov         dword ptr [ebp-8],edx
 004474F6    mov         dword ptr [ebp-4],eax
 004474F9    mov         eax,dword ptr [ebp-8]
 004474FC    mov         edx,dword ptr [ebp-4]
 004474FF    cmp         eax,dword ptr [edx+4]
>00447502    jne         00447533
 00447504    mov         eax,dword ptr [ebp-4]
 00447507    mov         eax,dword ptr [eax+4]
 0044750A    call        00434C88
 0044750F    mov         edx,dword ptr [ebp-4]
 00447512    mov         dword ptr [edx+1C],eax
 00447515    mov         eax,dword ptr [ebp-4]
 00447518    call        00447484
 0044751D    mov         eax,dword ptr [ebp-4]
 00447520    cmp         word ptr [eax+2A],0
>00447525    je          00447533
 00447527    mov         ebx,dword ptr [ebp-4]
 0044752A    mov         edx,dword ptr [ebp-4]
 0044752D    mov         eax,dword ptr [ebx+2C]
 00447530    call        dword ptr [ebx+28]
 00447533    pop         ebx
 00447534    pop         ecx
 00447535    pop         ecx
 00447536    pop         ebp
 00447537    ret
end;*}

//00447538
procedure sub_00447538(?:Pointer; ?:TBitmap);
begin
{*
 00447538    push        ebp
 00447539    mov         ebp,esp
 0044753B    add         esp,0FFFFFFF4
 0044753E    mov         dword ptr [ebp-8],edx
 00447541    mov         dword ptr [ebp-4],eax
 00447544    mov         eax,dword ptr [ebp-4]
 00447547    call        00447484
 0044754C    mov         edx,dword ptr [ebp-8]
 0044754F    mov         eax,dword ptr [ebp-4]
 00447552    mov         eax,dword ptr [eax+4]
 00447555    mov         ecx,dword ptr [eax]
 00447557    call        dword ptr [ecx+8]
 0044755A    cmp         dword ptr [ebp-8],0
>0044755E    je          004475C9
 00447560    mov         eax,dword ptr [ebp-8]
 00447563    mov         edx,dword ptr [eax]
 00447565    call        dword ptr [edx+20]
 00447568    test        eax,eax
>0044756A    jle         004475C9
 0044756C    mov         eax,dword ptr [ebp-8]
 0044756F    call        00434C88
 00447574    mov         edx,dword ptr [ebp-4]
 00447577    mov         dword ptr [edx+1C],eax
 0044757A    mov         eax,dword ptr [ebp-8]
 0044757D    mov         edx,dword ptr [eax]
 0044757F    call        dword ptr [edx+2C]
 00447582    push        eax
 00447583    mov         eax,dword ptr [ebp-8]
 00447586    mov         edx,dword ptr [eax]
 00447588    call        dword ptr [edx+20]
 0044758B    pop         edx
 0044758C    xchg        eax,edx
 0044758D    mov         ecx,edx
 0044758F    cdq
 00447590    idiv        eax,ecx
 00447592    test        edx,edx
>00447594    jne         004475C9
 00447596    mov         eax,dword ptr [ebp-8]
 00447599    mov         edx,dword ptr [eax]
 0044759B    call        dword ptr [edx+2C]
 0044759E    push        eax
 0044759F    mov         eax,dword ptr [ebp-8]
 004475A2    mov         edx,dword ptr [eax]
 004475A4    call        dword ptr [edx+20]
 004475A7    pop         edx
 004475A8    xchg        eax,edx
 004475A9    mov         ecx,edx
 004475AB    cdq
 004475AC    idiv        eax,ecx
 004475AE    mov         dword ptr [ebp-0C],eax
 004475B1    cmp         dword ptr [ebp-0C],4
>004475B5    jle         004475BE
 004475B7    mov         dword ptr [ebp-0C],1
 004475BE    mov         dl,byte ptr [ebp-0C]
 004475C1    mov         eax,dword ptr [ebp-4]
 004475C4    call        004475D0
 004475C9    mov         esp,ebp
 004475CB    pop         ebp
 004475CC    ret
*}
end;

//004475D0
procedure sub_004475D0(?:Pointer; ?:Integer);
begin
{*
 004475D0    push        ebp
 004475D1    mov         ebp,esp
 004475D3    add         esp,0FFFFFFF8
 004475D6    mov         byte ptr [ebp-5],dl
 004475D9    mov         dword ptr [ebp-4],eax
 004475DC    mov         al,byte ptr [ebp-5]
 004475DF    mov         edx,dword ptr [ebp-4]
 004475E2    cmp         al,byte ptr [edx+20]
>004475E5    je          0044760C
 004475E7    cmp         byte ptr [ebp-5],0
>004475EB    jbe         0044760C
 004475ED    mov         eax,dword ptr [ebp-4]
 004475F0    call        00447484
 004475F5    mov         al,byte ptr [ebp-5]
 004475F8    mov         edx,dword ptr [ebp-4]
 004475FB    mov         byte ptr [edx+20],al
 004475FE    mov         eax,dword ptr [ebp-4]
 00447601    mov         edx,dword ptr [eax+4]
 00447604    mov         eax,dword ptr [ebp-4]
 00447607    call        004474EC
 0044760C    pop         ecx
 0044760D    pop         ecx
 0044760E    pop         ebp
 0044760F    ret
*}
end;

//00447610
{*function sub_00447610(?:Pointer; ?:?):?;
begin
 00447610    push        ebp
 00447611    mov         ebp,esp
 00447613    add         esp,0FFFFFFB0
 00447616    push        ebx
 00447617    mov         byte ptr [ebp-5],dl
 0044761A    mov         dword ptr [ebp-4],eax
 0044761D    cmp         byte ptr [ebp-5],2
>00447621    jne         00447630
 00447623    mov         eax,dword ptr [ebp-4]
 00447626    cmp         byte ptr [eax+20],3
>0044762A    jae         00447630
 0044762C    mov         byte ptr [ebp-5],0
 00447630    xor         eax,eax
 00447632    mov         al,byte ptr [ebp-5]
 00447635    mov         edx,dword ptr [ebp-4]
 00447638    mov         eax,dword ptr [edx+eax*4+0C]
 0044763C    mov         dword ptr [ebp-0C],eax
 0044763F    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00447643    jne         00447C4B
 00447649    mov         eax,dword ptr [ebp-4]
 0044764C    mov         eax,dword ptr [eax+4]
 0044764F    mov         edx,dword ptr [eax]
 00447651    call        dword ptr [edx+2C]
 00447654    mov         ebx,eax
 00447656    mov         eax,dword ptr [ebp-4]
 00447659    mov         eax,dword ptr [eax+4]
 0044765C    mov         edx,dword ptr [eax]
 0044765E    call        dword ptr [edx+20]
 00447661    or          ebx,eax
>00447663    je          00447C4B
 00447669    mov         eax,dword ptr [ebp-4]
 0044766C    mov         eax,dword ptr [eax+4]
 0044766F    mov         edx,dword ptr [eax]
 00447671    call        dword ptr [edx+2C]
 00447674    mov         edx,dword ptr [ebp-4]
 00447677    movzx       edx,byte ptr [edx+20]
 0044767B    mov         ecx,edx
 0044767D    cdq
 0044767E    idiv        eax,ecx
 00447680    mov         dword ptr [ebp-1C],eax
 00447683    mov         eax,dword ptr [ebp-4]
 00447686    mov         eax,dword ptr [eax+4]
 00447689    mov         edx,dword ptr [eax]
 0044768B    call        dword ptr [edx+20]
 0044768E    mov         dword ptr [ebp-20],eax
 00447691    mov         eax,dword ptr [ebp-4]
 00447694    cmp         dword ptr [eax+8],0
>00447698    jne         004476CA
 0044769A    cmp         dword ptr ds:[56C378],0;gvar_0056C378:TGlyphCache
>004476A1    jne         004476B4
 004476A3    mov         dl,1
 004476A5    mov         eax,[00446FC4];TGlyphCache
 004476AA    call        TGlyphCache.Create;TGlyphCache.Create
 004476AF    mov         [0056C378],eax;gvar_0056C378:TGlyphCache
 004476B4    mov         ecx,dword ptr [ebp-20]
 004476B7    mov         edx,dword ptr [ebp-1C]
 004476BA    mov         eax,[0056C378];0x0 gvar_0056C378:TGlyphCache
 004476BF    call        00447294
 004476C4    mov         edx,dword ptr [ebp-4]
 004476C7    mov         dword ptr [edx+8],eax
 004476CA    mov         dl,1
 004476CC    mov         eax,[0042CF48];TBitmap
 004476D1    call        TBitmap.Create;TBitmap.Create
 004476D6    mov         dword ptr [ebp-10],eax
 004476D9    xor         eax,eax
 004476DB    push        ebp
 004476DC    push        447C2A
 004476E1    push        dword ptr fs:[eax]
 004476E4    mov         dword ptr fs:[eax],esp
 004476E7    mov         edx,dword ptr [ebp-1C]
 004476EA    mov         eax,dword ptr [ebp-10]
 004476ED    mov         ecx,dword ptr [eax]
 004476EF    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004476F2    mov         edx,dword ptr [ebp-20]
 004476F5    mov         eax,dword ptr [ebp-10]
 004476F8    mov         ecx,dword ptr [eax]
 004476FA    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004476FD    mov         eax,dword ptr [ebp-20]
 00447700    push        eax
 00447701    lea         eax,[ebp-40]
 00447704    push        eax
 00447705    mov         ecx,dword ptr [ebp-1C]
 00447708    xor         edx,edx
 0044770A    xor         eax,eax
 0044770C    call        0041E714
 00447711    mov         eax,dword ptr [ebp-10]
 00447714    call        0043498C
 00447719    mov         eax,dword ptr [eax+14]
 0044771C    mov         edx,0FF00000F
 00447721    call        TBrush.SetColor
 00447726    mov         eax,dword ptr [ebp-4]
 00447729    mov         eax,dword ptr [eax+4]
 0044772C    mov         edx,dword ptr [eax]
 0044772E    call        dword ptr [edx+24]
 00447731    call        00433FD4
 00447736    mov         edx,eax
 00447738    mov         eax,dword ptr [ebp-10]
 0044773B    mov         ecx,dword ptr [eax]
 0044773D    call        dword ptr [ecx+38];TBitmap.sub_00435CF4
 00447740    mov         al,byte ptr [ebp-5]
 00447743    mov         byte ptr [ebp-21],al
 00447746    mov         al,byte ptr [ebp-21]
 00447749    mov         edx,dword ptr [ebp-4]
 0044774C    cmp         al,byte ptr [edx+20]
>0044774F    jl          00447755
 00447751    mov         byte ptr [ebp-21],0
 00447755    mov         eax,dword ptr [ebp-20]
 00447758    push        eax
 00447759    lea         eax,[ebp-50]
 0044775C    push        eax
 0044775D    xor         ecx,ecx
 0044775F    mov         cl,byte ptr [ebp-21]
 00447762    inc         ecx
 00447763    imul        ecx,dword ptr [ebp-1C]
 00447767    xor         eax,eax
 00447769    mov         al,byte ptr [ebp-21]
 0044776C    imul        dword ptr [ebp-1C]
 0044776F    xor         edx,edx
 00447771    call        0041E714
 00447776    mov         al,byte ptr [ebp-5]
 00447779    sub         al,1
>0044777B    jb          00447788
>0044777D    je          004477FE
 0044777F    dec         eax
 00447780    sub         al,2
>00447782    jae         00447C14
 00447788    lea         eax,[ebp-50]
 0044778B    push        eax
 0044778C    mov         eax,dword ptr [ebp-4]
 0044778F    mov         eax,dword ptr [eax+4]
 00447792    call        0043498C
 00447797    push        eax
 00447798    mov         eax,dword ptr [ebp-10]
 0044779B    call        0043498C
 004477A0    lea         edx,[ebp-40]
 004477A3    pop         ecx
 004477A4    call        0042EE78
 004477A9    mov         eax,dword ptr [ebp-4]
 004477AC    mov         eax,dword ptr [eax+4]
 004477AF    cmp         byte ptr [eax+38],1
>004477B3    jne         004477DA
 004477B5    mov         eax,dword ptr [ebp-4]
 004477B8    mov         ecx,dword ptr [eax+1C]
 004477BB    mov         eax,dword ptr [ebp-4]
 004477BE    mov         eax,dword ptr [eax+8]
 004477C1    mov         edx,dword ptr [ebp-10]
 004477C4    call        00447184
 004477C9    xor         edx,edx
 004477CB    mov         dl,byte ptr [ebp-5]
 004477CE    mov         ecx,dword ptr [ebp-4]
 004477D1    mov         dword ptr [ecx+edx*4+0C],eax
>004477D5    jmp         00447C14
 004477DA    mov         eax,dword ptr [ebp-4]
 004477DD    mov         eax,dword ptr [eax+8]
 004477E0    mov         ecx,20000000
 004477E5    mov         edx,dword ptr [ebp-10]
 004477E8    call        00447184
 004477ED    xor         edx,edx
 004477EF    mov         dl,byte ptr [ebp-5]
 004477F2    mov         ecx,dword ptr [ebp-4]
 004477F5    mov         dword ptr [ecx+edx*4+0C],eax
>004477F9    jmp         00447C14
 004477FE    xor         eax,eax
 00447800    mov         dword ptr [ebp-18],eax
 00447803    xor         eax,eax
 00447805    mov         dword ptr [ebp-14],eax
 00447808    xor         eax,eax
 0044780A    push        ebp
 0044780B    push        447BEE
 00447810    push        dword ptr fs:[eax]
 00447813    mov         dword ptr fs:[eax],esp
 00447816    mov         dl,1
 00447818    mov         eax,[0042CF48];TBitmap
 0044781D    call        TBitmap.Create;TBitmap.Create
 00447822    mov         dword ptr [ebp-18],eax
 00447825    mov         dl,1
 00447827    mov         eax,[0042CF48];TBitmap
 0044782C    call        TBitmap.Create;TBitmap.Create
 00447831    mov         dword ptr [ebp-14],eax
 00447834    mov         eax,dword ptr [ebp-4]
 00447837    mov         edx,dword ptr [eax+4]
 0044783A    mov         eax,dword ptr [ebp-14]
 0044783D    mov         ecx,dword ptr [eax]
 0044783F    call        dword ptr [ecx+8];TBitmap.sub_00434344
 00447842    mov         dl,1
 00447844    mov         eax,dword ptr [ebp-14]
 00447847    mov         ecx,dword ptr [eax]
 00447849    call        dword ptr [ecx+6C];TBitmap.sub_00435A0C
 0044784C    mov         eax,dword ptr [ebp-4]
 0044784F    cmp         byte ptr [eax+20],1
>00447853    jbe         00447A63
 00447859    mov         eax,dword ptr [ebp-10]
 0044785C    call        0043498C
 00447861    mov         dword ptr [ebp-2C],eax
 00447864    lea         eax,[ebp-50]
 00447867    push        eax
 00447868    mov         eax,dword ptr [ebp-14]
 0044786B    call        0043498C
 00447870    mov         ecx,eax
 00447872    lea         edx,[ebp-40]
 00447875    mov         eax,dword ptr [ebp-2C]
 00447878    call        0042EE78
 0044787D    mov         dl,1
 0044787F    mov         eax,dword ptr [ebp-18]
 00447882    call        00435C48
 00447887    mov         edx,dword ptr [ebp-1C]
 0044788A    mov         eax,dword ptr [ebp-18]
 0044788D    mov         ecx,dword ptr [eax]
 0044788F    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 00447892    mov         edx,dword ptr [ebp-20]
 00447895    mov         eax,dword ptr [ebp-18]
 00447898    mov         ecx,dword ptr [eax]
 0044789A    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 0044789D    mov         eax,dword ptr [ebp-14]
 004478A0    call        0043498C
 004478A5    mov         eax,dword ptr [eax+14]
 004478A8    mov         edx,0FFFFFF
 004478AD    call        TBrush.SetColor
 004478B2    lea         eax,[ebp-50]
 004478B5    push        eax
 004478B6    mov         eax,dword ptr [ebp-14]
 004478B9    call        0043498C
 004478BE    push        eax
 004478BF    mov         eax,dword ptr [ebp-18]
 004478C2    call        0043498C
 004478C7    lea         edx,[ebp-40]
 004478CA    pop         ecx
 004478CB    call        0042EE78
 004478D0    mov         eax,dword ptr [ebp-2C]
 004478D3    mov         eax,dword ptr [eax+14]
 004478D6    mov         edx,0FF000014
 004478DB    call        TBrush.SetColor
 004478E0    mov         eax,dword ptr [ebp-2C]
 004478E3    call        0042F6A0
 004478E8    mov         dword ptr [ebp-28],eax
 004478EB    push        0
 004478ED    mov         eax,dword ptr [ebp-28]
 004478F0    push        eax
 004478F1    call        gdi32.SetTextColor
 004478F6    push        0FFFFFF
 004478FB    mov         eax,dword ptr [ebp-28]
 004478FE    push        eax
 004478FF    call        gdi32.SetBkColor
 00447904    push        0E20746
 00447909    push        0
 0044790B    push        0
 0044790D    mov         eax,dword ptr [ebp-18]
 00447910    call        0043498C
 00447915    call        0042F6A0
 0044791A    push        eax
 0044791B    mov         eax,dword ptr [ebp-20]
 0044791E    push        eax
 0044791F    mov         eax,dword ptr [ebp-1C]
 00447922    push        eax
 00447923    push        0
 00447925    push        0
 00447927    mov         eax,dword ptr [ebp-28]
 0044792A    push        eax
 0044792B    call        gdi32.BitBlt
 00447930    mov         eax,dword ptr [ebp-14]
 00447933    call        0043498C
 00447938    mov         eax,dword ptr [eax+14]
 0044793B    mov         edx,808080
 00447940    call        TBrush.SetColor
 00447945    lea         eax,[ebp-50]
 00447948    push        eax
 00447949    mov         eax,dword ptr [ebp-14]
 0044794C    call        0043498C
 00447951    push        eax
 00447952    mov         eax,dword ptr [ebp-18]
 00447955    call        0043498C
 0044795A    lea         edx,[ebp-40]
 0044795D    pop         ecx
 0044795E    call        0042EE78
 00447963    mov         eax,dword ptr [ebp-2C]
 00447966    mov         eax,dword ptr [eax+14]
 00447969    mov         edx,0FF000010
 0044796E    call        TBrush.SetColor
 00447973    mov         eax,dword ptr [ebp-2C]
 00447976    call        0042F6A0
 0044797B    mov         dword ptr [ebp-28],eax
 0044797E    push        0
 00447980    mov         eax,dword ptr [ebp-28]
 00447983    push        eax
 00447984    call        gdi32.SetTextColor
 00447989    push        0FFFFFF
 0044798E    mov         eax,dword ptr [ebp-28]
 00447991    push        eax
 00447992    call        gdi32.SetBkColor
 00447997    push        0E20746
 0044799C    push        0
 0044799E    push        0
 004479A0    mov         eax,dword ptr [ebp-18]
 004479A3    call        0043498C
 004479A8    call        0042F6A0
 004479AD    push        eax
 004479AE    mov         eax,dword ptr [ebp-20]
 004479B1    push        eax
 004479B2    mov         eax,dword ptr [ebp-1C]
 004479B5    push        eax
 004479B6    push        0
 004479B8    push        0
 004479BA    mov         eax,dword ptr [ebp-28]
 004479BD    push        eax
 004479BE    call        gdi32.BitBlt
 004479C3    mov         eax,dword ptr [ebp-4]
 004479C6    mov         eax,dword ptr [eax+1C]
 004479C9    call        ColorToRGB
 004479CE    push        eax
 004479CF    mov         eax,dword ptr [ebp-14]
 004479D2    call        0043498C
 004479D7    mov         eax,dword ptr [eax+14]
 004479DA    pop         edx
 004479DB    call        TBrush.SetColor
 004479E0    lea         eax,[ebp-50]
 004479E3    push        eax
 004479E4    mov         eax,dword ptr [ebp-14]
 004479E7    call        0043498C
 004479EC    push        eax
 004479ED    mov         eax,dword ptr [ebp-18]
 004479F0    call        0043498C
 004479F5    lea         edx,[ebp-40]
 004479F8    pop         ecx
 004479F9    call        0042EE78
 004479FE    mov         eax,dword ptr [ebp-2C]
 00447A01    mov         eax,dword ptr [eax+14]
 00447A04    mov         edx,0FF00000F
 00447A09    call        TBrush.SetColor
 00447A0E    mov         eax,dword ptr [ebp-2C]
 00447A11    call        0042F6A0
 00447A16    mov         dword ptr [ebp-28],eax
 00447A19    push        0
 00447A1B    mov         eax,dword ptr [ebp-28]
 00447A1E    push        eax
 00447A1F    call        gdi32.SetTextColor
 00447A24    push        0FFFFFF
 00447A29    mov         eax,dword ptr [ebp-28]
 00447A2C    push        eax
 00447A2D    call        gdi32.SetBkColor
 00447A32    push        0E20746
 00447A37    push        0
 00447A39    push        0
 00447A3B    mov         eax,dword ptr [ebp-18]
 00447A3E    call        0043498C
 00447A43    call        0042F6A0
 00447A48    push        eax
 00447A49    mov         eax,dword ptr [ebp-20]
 00447A4C    push        eax
 00447A4D    mov         eax,dword ptr [ebp-1C]
 00447A50    push        eax
 00447A51    push        0
 00447A53    push        0
 00447A55    mov         eax,dword ptr [ebp-28]
 00447A58    push        eax
 00447A59    call        gdi32.BitBlt
>00447A5E    jmp         00447BD0
 00447A63    mov         eax,dword ptr [ebp-4]
 00447A66    mov         edx,dword ptr [eax+4]
 00447A69    mov         eax,dword ptr [ebp-18]
 00447A6C    mov         ecx,dword ptr [eax]
 00447A6E    call        dword ptr [ecx+8];TBitmap.sub_00434344
 00447A71    mov         dl,1
 00447A73    mov         eax,dword ptr [ebp-18]
 00447A76    mov         ecx,dword ptr [eax]
 00447A78    call        dword ptr [ecx+6C];TBitmap.sub_00435A0C
 00447A7B    mov         eax,dword ptr [ebp-18]
 00447A7E    call        0043498C
 00447A83    mov         eax,dword ptr [eax+14]
 00447A86    xor         edx,edx
 00447A88    call        TBrush.SetColor
 00447A8D    mov         edx,dword ptr [ebp-1C]
 00447A90    mov         eax,dword ptr [ebp-18]
 00447A93    mov         ecx,dword ptr [eax]
 00447A95    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 00447A98    mov         eax,dword ptr [ebp-18]
 00447A9B    call        00434AD4
 00447AA0    test        al,al
>00447AA2    je          00447AD8
 00447AA4    mov         eax,dword ptr [ebp-18]
 00447AA7    call        0043498C
 00447AAC    mov         eax,dword ptr [eax+0C]
 00447AAF    mov         edx,0FFFFFF
 00447AB4    call        TFont.SetColor
 00447AB9    xor         edx,edx
 00447ABB    mov         eax,dword ptr [ebp-18]
 00447ABE    call        00435C48
 00447AC3    mov         eax,dword ptr [ebp-18]
 00447AC6    call        0043498C
 00447ACB    mov         eax,dword ptr [eax+14]
 00447ACE    mov         edx,0FFFFFF
 00447AD3    call        TBrush.SetColor
 00447AD8    mov         dl,1
 00447ADA    mov         eax,dword ptr [ebp-18]
 00447ADD    call        00435C48
 00447AE2    mov         eax,dword ptr [ebp-10]
 00447AE5    call        0043498C
 00447AEA    mov         dword ptr [ebp-30],eax
 00447AED    mov         eax,dword ptr [ebp-30]
 00447AF0    mov         eax,dword ptr [eax+14]
 00447AF3    mov         edx,0FF00000F
 00447AF8    call        TBrush.SetColor
 00447AFD    lea         edx,[ebp-40]
 00447B00    mov         eax,dword ptr [ebp-30]
 00447B03    call        0042F030
 00447B08    mov         eax,dword ptr [ebp-30]
 00447B0B    mov         eax,dword ptr [eax+14]
 00447B0E    mov         edx,0FF000014
 00447B13    call        TBrush.SetColor
 00447B18    push        0
 00447B1A    mov         eax,dword ptr [ebp-30]
 00447B1D    call        0042F6A0
 00447B22    push        eax
 00447B23    call        gdi32.SetTextColor
 00447B28    push        0FFFFFF
 00447B2D    mov         eax,dword ptr [ebp-30]
 00447B30    call        0042F6A0
 00447B35    push        eax
 00447B36    call        gdi32.SetBkColor
 00447B3B    push        0E20746
 00447B40    push        0
 00447B42    push        0
 00447B44    mov         eax,dword ptr [ebp-18]
 00447B47    call        0043498C
 00447B4C    call        0042F6A0
 00447B51    push        eax
 00447B52    mov         eax,dword ptr [ebp-20]
 00447B55    push        eax
 00447B56    mov         eax,dword ptr [ebp-1C]
 00447B59    push        eax
 00447B5A    push        1
 00447B5C    push        1
 00447B5E    mov         eax,dword ptr [ebp-30]
 00447B61    call        0042F6A0
 00447B66    push        eax
 00447B67    call        gdi32.BitBlt
 00447B6C    mov         eax,dword ptr [ebp-30]
 00447B6F    mov         eax,dword ptr [eax+14]
 00447B72    mov         edx,0FF000010
 00447B77    call        TBrush.SetColor
 00447B7C    push        0
 00447B7E    mov         eax,dword ptr [ebp-30]
 00447B81    call        0042F6A0
 00447B86    push        eax
 00447B87    call        gdi32.SetTextColor
 00447B8C    push        0FFFFFF
 00447B91    mov         eax,dword ptr [ebp-30]
 00447B94    call        0042F6A0
 00447B99    push        eax
 00447B9A    call        gdi32.SetBkColor
 00447B9F    push        0E20746
 00447BA4    push        0
 00447BA6    push        0
 00447BA8    mov         eax,dword ptr [ebp-18]
 00447BAB    call        0043498C
 00447BB0    call        0042F6A0
 00447BB5    push        eax
 00447BB6    mov         eax,dword ptr [ebp-20]
 00447BB9    push        eax
 00447BBA    mov         eax,dword ptr [ebp-1C]
 00447BBD    push        eax
 00447BBE    push        0
 00447BC0    push        0
 00447BC2    mov         eax,dword ptr [ebp-30]
 00447BC5    call        0042F6A0
 00447BCA    push        eax
 00447BCB    call        gdi32.BitBlt
 00447BD0    xor         eax,eax
 00447BD2    pop         edx
 00447BD3    pop         ecx
 00447BD4    pop         ecx
 00447BD5    mov         dword ptr fs:[eax],edx
 00447BD8    push        447BF5
 00447BDD    mov         eax,dword ptr [ebp-14]
 00447BE0    call        TObject.Free
 00447BE5    mov         eax,dword ptr [ebp-18]
 00447BE8    call        TObject.Free
 00447BED    ret
>00447BEE    jmp         @HandleFinally
>00447BF3    jmp         00447BDD
 00447BF5    mov         eax,dword ptr [ebp-4]
 00447BF8    mov         eax,dword ptr [eax+8]
 00447BFB    mov         ecx,20000000
 00447C00    mov         edx,dword ptr [ebp-10]
 00447C03    call        00447184
 00447C08    xor         edx,edx
 00447C0A    mov         dl,byte ptr [ebp-5]
 00447C0D    mov         ecx,dword ptr [ebp-4]
 00447C10    mov         dword ptr [ecx+edx*4+0C],eax
 00447C14    xor         eax,eax
 00447C16    pop         edx
 00447C17    pop         ecx
 00447C18    pop         ecx
 00447C19    mov         dword ptr fs:[eax],edx
 00447C1C    push        447C31
 00447C21    mov         eax,dword ptr [ebp-10]
 00447C24    call        TObject.Free
 00447C29    ret
>00447C2A    jmp         @HandleFinally
>00447C2F    jmp         00447C21
 00447C31    xor         eax,eax
 00447C33    mov         al,byte ptr [ebp-5]
 00447C36    mov         edx,dword ptr [ebp-4]
 00447C39    mov         eax,dword ptr [edx+eax*4+0C]
 00447C3D    mov         dword ptr [ebp-0C],eax
 00447C40    mov         eax,dword ptr [ebp-4]
 00447C43    mov         eax,dword ptr [eax+4]
 00447C46    call        00434580
 00447C4B    mov         eax,dword ptr [ebp-0C]
 00447C4E    pop         ebx
 00447C4F    mov         esp,ebp
 00447C51    pop         ebp
 00447C52    ret
end;*}

//00447C54
{*procedure sub_00447C54(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00447C54    push        ebp
 00447C55    mov         ebp,esp
 00447C57    add         esp,0FFFFFFD0
 00447C5A    mov         dword ptr [ebp-0C],ecx
 00447C5D    mov         dword ptr [ebp-8],edx
 00447C60    mov         dword ptr [ebp-4],eax
 00447C63    mov         eax,dword ptr [ebp-4]
 00447C66    cmp         dword ptr [eax+4],0
>00447C6A    je          00447DDA
 00447C70    mov         eax,dword ptr [ebp-4]
 00447C73    mov         eax,dword ptr [eax+4]
 00447C76    mov         edx,dword ptr [eax]
 00447C78    call        dword ptr [edx+2C]
 00447C7B    test        eax,eax
>00447C7D    je          00447DDA
 00447C83    mov         eax,dword ptr [ebp-4]
 00447C86    mov         eax,dword ptr [eax+4]
 00447C89    mov         edx,dword ptr [eax]
 00447C8B    call        dword ptr [edx+20]
 00447C8E    test        eax,eax
>00447C90    je          00447DDA
 00447C96    mov         dl,byte ptr [ebp+0C]
 00447C99    mov         eax,dword ptr [ebp-4]
 00447C9C    call        00447610
 00447CA1    mov         dword ptr [ebp-10],eax
 00447CA4    call        0046BFC0
 00447CA9    call        0046C0EC
 00447CAE    test        al,al
>00447CB0    je          00447D50
 00447CB6    mov         eax,dword ptr [ebp-0C]
 00447CB9    mov         edx,dword ptr [eax]
 00447CBB    mov         dword ptr [ebp-30],edx
 00447CBE    mov         edx,dword ptr [eax+4]
 00447CC1    mov         dword ptr [ebp-2C],edx
 00447CC4    mov         eax,dword ptr [ebp-4]
 00447CC7    mov         eax,dword ptr [eax+4]
 00447CCA    mov         edx,dword ptr [eax]
 00447CCC    call        dword ptr [edx+2C]
 00447CCF    mov         edx,dword ptr [ebp-4]
 00447CD2    movzx       edx,byte ptr [edx+20]
 00447CD6    mov         ecx,edx
 00447CD8    cdq
 00447CD9    idiv        eax,ecx
 00447CDB    add         eax,dword ptr [ebp-30]
 00447CDE    mov         dword ptr [ebp-28],eax
 00447CE1    mov         eax,dword ptr [ebp-4]
 00447CE4    mov         eax,dword ptr [eax+4]
 00447CE7    mov         edx,dword ptr [eax]
 00447CE9    call        dword ptr [edx+20]
 00447CEC    add         eax,dword ptr [ebp-2C]
 00447CEF    mov         dword ptr [ebp-24],eax
 00447CF2    mov         al,byte ptr [ebp+0C]
 00447CF5    dec         al
>00447CF7    je          00447D00
 00447CF9    dec         eax
 00447CFA    sub         al,2
>00447CFC    jb          00447D06
>00447CFE    jmp         00447D0C
 00447D00    mov         byte ptr [ebp-11],5
>00447D04    jmp         00447D10
 00447D06    mov         byte ptr [ebp-11],4
>00447D0A    jmp         00447D10
 00447D0C    mov         byte ptr [ebp-11],2
 00447D10    call        0046BFC0
 00447D15    lea         ecx,[ebp-20]
 00447D18    mov         dl,byte ptr [ebp-11]
 00447D1B    call        0046C3C8
 00447D20    lea         eax,[ebp-30]
 00447D23    push        eax
 00447D24    mov         eax,dword ptr [ebp-4]
 00447D27    mov         eax,dword ptr [eax+8]
 00447D2A    call        00494F78
 00447D2F    push        eax
 00447D30    mov         eax,dword ptr [ebp-10]
 00447D33    push        eax
 00447D34    mov         eax,dword ptr [ebp-8]
 00447D37    call        0042F6A0
 00447D3C    push        eax
 00447D3D    call        0046BFC0
 00447D42    lea         ecx,[ebp-20]
 00447D45    pop         edx
 00447D46    call        0046C29C
>00447D4B    jmp         00447DDA
 00447D50    cmp         byte ptr [ebp+8],0
>00447D54    jne         00447D5C
 00447D56    cmp         byte ptr [ebp+0C],3
>00447D5A    jne         00447D99
 00447D5C    push        1
 00447D5E    push        1FFFFFFF
 00447D63    push        1FFFFFFF
 00447D68    push        0
 00447D6A    push        0
 00447D6C    mov         eax,dword ptr [ebp-0C]
 00447D6F    mov         eax,dword ptr [eax+4]
 00447D72    push        eax
 00447D73    mov         eax,dword ptr [ebp-0C]
 00447D76    mov         eax,dword ptr [eax]
 00447D78    push        eax
 00447D79    mov         eax,dword ptr [ebp-8]
 00447D7C    call        0042F6A0
 00447D81    push        eax
 00447D82    mov         eax,dword ptr [ebp-10]
 00447D85    push        eax
 00447D86    mov         eax,dword ptr [ebp-4]
 00447D89    mov         eax,dword ptr [eax+8]
 00447D8C    call        00494F78
 00447D91    push        eax
 00447D92    call        comctl32.ImageList_DrawEx
>00447D97    jmp         00447DDA
 00447D99    push        0
 00447D9B    push        1FFFFFFF
 00447DA0    mov         eax,0FF00000F
 00447DA5    call        ColorToRGB
 00447DAA    push        eax
 00447DAB    push        0
 00447DAD    push        0
 00447DAF    mov         eax,dword ptr [ebp-0C]
 00447DB2    mov         eax,dword ptr [eax+4]
 00447DB5    push        eax
 00447DB6    mov         eax,dword ptr [ebp-0C]
 00447DB9    mov         eax,dword ptr [eax]
 00447DBB    push        eax
 00447DBC    mov         eax,dword ptr [ebp-8]
 00447DBF    call        0042F6A0
 00447DC4    push        eax
 00447DC5    mov         eax,dword ptr [ebp-10]
 00447DC8    push        eax
 00447DC9    mov         eax,dword ptr [ebp-4]
 00447DCC    mov         eax,dword ptr [eax+8]
 00447DCF    call        00494F78
 00447DD4    push        eax
 00447DD5    call        comctl32.ImageList_DrawEx
 00447DDA    mov         esp,ebp
 00447DDC    pop         ebp
 00447DDD    ret         8
end;*}

//00447DE0
{*procedure sub_00447DE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00447DE0    push        ebp
 00447DE1    mov         ebp,esp
 00447DE3    add         esp,0FFFFFFE4
 00447DE6    push        esi
 00447DE7    push        edi
 00447DE8    mov         esi,dword ptr [ebp+10]
 00447DEB    lea         edi,[ebp-1C]
 00447DEE    movs        dword ptr [edi],dword ptr [esi]
 00447DEF    movs        dword ptr [edi],dword ptr [esi]
 00447DF0    movs        dword ptr [edi],dword ptr [esi]
 00447DF1    movs        dword ptr [edi],dword ptr [esi]
 00447DF2    mov         dword ptr [ebp-0C],ecx
 00447DF5    mov         dword ptr [ebp-8],edx
 00447DF8    mov         dword ptr [ebp-4],eax
 00447DFB    mov         dl,1
 00447DFD    mov         eax,dword ptr [ebp-8]
 00447E00    mov         eax,dword ptr [eax+14]
 00447E03    call        TBrush.SetStyle
 00447E08    cmp         byte ptr [ebp+0C],1
>00447E0C    jne         00447EA4
 00447E12    push        1
 00447E14    push        1
 00447E16    lea         eax,[ebp-1C]
 00447E19    push        eax
 00447E1A    call        user32.OffsetRect
 00447E1F    mov         edx,0FF000014
 00447E24    mov         eax,dword ptr [ebp-8]
 00447E27    mov         eax,dword ptr [eax+0C]
 00447E2A    call        TFont.SetColor
 00447E2F    mov         eax,dword ptr [ebp+8]
 00447E32    or          eax,5
 00447E35    push        eax
 00447E36    lea         eax,[ebp-1C]
 00447E39    push        eax
 00447E3A    mov         eax,dword ptr [ebp-0C]
 00447E3D    call        @LStrLen
 00447E42    push        eax
 00447E43    mov         eax,dword ptr [ebp-0C]
 00447E46    call        @LStrToPChar
 00447E4B    push        eax
 00447E4C    mov         eax,dword ptr [ebp-8]
 00447E4F    call        0042F6A0
 00447E54    push        eax
 00447E55    call        user32.DrawTextA
 00447E5A    push        0FF
 00447E5C    push        0FF
 00447E5E    lea         eax,[ebp-1C]
 00447E61    push        eax
 00447E62    call        user32.OffsetRect
 00447E67    mov         edx,0FF000010
 00447E6C    mov         eax,dword ptr [ebp-8]
 00447E6F    mov         eax,dword ptr [eax+0C]
 00447E72    call        TFont.SetColor
 00447E77    mov         eax,dword ptr [ebp+8]
 00447E7A    or          eax,5
 00447E7D    push        eax
 00447E7E    lea         eax,[ebp-1C]
 00447E81    push        eax
 00447E82    mov         eax,dword ptr [ebp-0C]
 00447E85    call        @LStrLen
 00447E8A    push        eax
 00447E8B    mov         eax,dword ptr [ebp-0C]
 00447E8E    call        @LStrToPChar
 00447E93    push        eax
 00447E94    mov         eax,dword ptr [ebp-8]
 00447E97    call        0042F6A0
 00447E9C    push        eax
 00447E9D    call        user32.DrawTextA
>00447EA2    jmp         00447ECF
 00447EA4    mov         eax,dword ptr [ebp+8]
 00447EA7    or          eax,5
 00447EAA    push        eax
 00447EAB    lea         eax,[ebp-1C]
 00447EAE    push        eax
 00447EAF    mov         eax,dword ptr [ebp-0C]
 00447EB2    call        @LStrLen
 00447EB7    push        eax
 00447EB8    mov         eax,dword ptr [ebp-0C]
 00447EBB    call        @LStrToPChar
 00447EC0    push        eax
 00447EC1    mov         eax,dword ptr [ebp-8]
 00447EC4    call        0042F6A0
 00447EC9    push        eax
 00447ECA    call        user32.DrawTextA
 00447ECF    pop         edi
 00447ED0    pop         esi
 00447ED1    mov         esp,ebp
 00447ED3    pop         ebp
 00447ED4    ret         0C
end;*}

//00447ED8
{*procedure sub_00447ED8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00447ED8    push        ebp
 00447ED9    mov         ebp,esp
 00447EDB    add         esp,0FFFFFFBC
 00447EDE    push        esi
 00447EDF    push        edi
 00447EE0    mov         dword ptr [ebp-0C],ecx
 00447EE3    mov         dword ptr [ebp-8],edx
 00447EE6    mov         dword ptr [ebp-4],eax
 00447EE9    mov         eax,dword ptr [ebp+8]
 00447EEC    and         eax,2
 00447EEF    cmp         eax,2
>00447EF2    jne         00447F0A
 00447EF4    cmp         byte ptr [ebp+1C],0
>00447EF8    jne         00447F00
 00447EFA    mov         byte ptr [ebp+1C],1
>00447EFE    jmp         00447F0A
 00447F00    cmp         byte ptr [ebp+1C],1
>00447F04    jne         00447F0A
 00447F06    mov         byte ptr [ebp+1C],0
 00447F0A    mov         edx,dword ptr [ebp-0C]
 00447F0D    mov         edx,dword ptr [edx+0C]
 00447F10    mov         eax,dword ptr [ebp-0C]
 00447F13    sub         edx,dword ptr [eax+4]
 00447F16    mov         eax,dword ptr [ebp-0C]
 00447F19    mov         eax,dword ptr [eax+8]
 00447F1C    mov         ecx,dword ptr [ebp-0C]
 00447F1F    sub         eax,dword ptr [ecx]
 00447F21    lea         ecx,[ebp-1C]
 00447F24    call        Point
 00447F29    mov         eax,dword ptr [ebp-4]
 00447F2C    cmp         dword ptr [eax+4],0
>00447F30    je          00447F60
 00447F32    mov         eax,dword ptr [ebp-4]
 00447F35    mov         eax,dword ptr [eax+4]
 00447F38    mov         edx,dword ptr [eax]
 00447F3A    call        dword ptr [edx+20]
 00447F3D    push        eax
 00447F3E    mov         eax,dword ptr [ebp-4]
 00447F41    mov         eax,dword ptr [eax+4]
 00447F44    mov         edx,dword ptr [eax]
 00447F46    call        dword ptr [edx+2C]
 00447F49    mov         edx,dword ptr [ebp-4]
 00447F4C    movzx       edx,byte ptr [edx+20]
 00447F50    mov         ecx,edx
 00447F52    cdq
 00447F53    idiv        eax,ecx
 00447F55    lea         ecx,[ebp-24]
 00447F58    pop         edx
 00447F59    call        Point
>00447F5E    jmp         00447F6C
 00447F60    lea         ecx,[ebp-24]
 00447F63    xor         edx,edx
 00447F65    xor         eax,eax
 00447F67    call        Point
 00447F6C    mov         eax,dword ptr [ebp+20]
 00447F6F    call        @LStrLen
 00447F74    test        eax,eax
>00447F76    jle         00447FEC
 00447F78    push        0
 00447F7A    lea         eax,[ebp-44]
 00447F7D    push        eax
 00447F7E    mov         ecx,dword ptr [ebp-0C]
 00447F81    mov         ecx,dword ptr [ecx+8]
 00447F84    mov         eax,dword ptr [ebp-0C]
 00447F87    sub         ecx,dword ptr [eax]
 00447F89    xor         edx,edx
 00447F8B    xor         eax,eax
 00447F8D    call        0041E714
 00447F92    mov         eax,dword ptr [ebp+0C]
 00447F95    lea         esi,[ebp-44]
 00447F98    mov         edi,eax
 00447F9A    movs        dword ptr [edi],dword ptr [esi]
 00447F9B    movs        dword ptr [edi],dword ptr [esi]
 00447F9C    movs        dword ptr [edi],dword ptr [esi]
 00447F9D    movs        dword ptr [edi],dword ptr [esi]
 00447F9E    mov         eax,dword ptr [ebp+8]
 00447FA1    or          eax,400
 00447FA6    push        eax
 00447FA7    mov         eax,dword ptr [ebp+0C]
 00447FAA    push        eax
 00447FAB    mov         eax,dword ptr [ebp+20]
 00447FAE    call        @LStrLen
 00447FB3    push        eax
 00447FB4    mov         eax,dword ptr [ebp+20]
 00447FB7    call        @LStrToPChar
 00447FBC    push        eax
 00447FBD    mov         eax,dword ptr [ebp-8]
 00447FC0    call        0042F6A0
 00447FC5    push        eax
 00447FC6    call        user32.DrawTextA
 00447FCB    mov         edx,dword ptr [ebp+0C]
 00447FCE    mov         edx,dword ptr [edx+0C]
 00447FD1    mov         eax,dword ptr [ebp+0C]
 00447FD4    sub         edx,dword ptr [eax+4]
 00447FD7    mov         eax,dword ptr [ebp+0C]
 00447FDA    mov         eax,dword ptr [eax+8]
 00447FDD    mov         ecx,dword ptr [ebp+0C]
 00447FE0    sub         eax,dword ptr [ecx]
 00447FE2    lea         ecx,[ebp-2C]
 00447FE5    call        Point
>00447FEA    jmp         00448015
 00447FEC    push        0
 00447FEE    lea         eax,[ebp-44]
 00447FF1    push        eax
 00447FF2    xor         ecx,ecx
 00447FF4    xor         edx,edx
 00447FF6    xor         eax,eax
 00447FF8    call        0041E714
 00447FFD    mov         eax,dword ptr [ebp+0C]
 00448000    lea         esi,[ebp-44]
 00448003    mov         edi,eax
 00448005    movs        dword ptr [edi],dword ptr [esi]
 00448006    movs        dword ptr [edi],dword ptr [esi]
 00448007    movs        dword ptr [edi],dword ptr [esi]
 00448008    movs        dword ptr [edi],dword ptr [esi]
 00448009    lea         ecx,[ebp-2C]
 0044800C    xor         edx,edx
 0044800E    xor         eax,eax
 00448010    call        Point
 00448015    mov         al,byte ptr [ebp+1C]
 00448018    sub         al,2
>0044801A    jae         00448043
 0044801C    mov         eax,dword ptr [ebp-18]
 0044801F    sub         eax,dword ptr [ebp-20]
 00448022    inc         eax
 00448023    sar         eax,1
>00448025    jns         0044802A
 00448027    adc         eax,0
 0044802A    mov         edx,dword ptr [ebp+10]
 0044802D    mov         dword ptr [edx+4],eax
 00448030    mov         eax,dword ptr [ebp-18]
 00448033    sub         eax,dword ptr [ebp-28]
 00448036    inc         eax
 00448037    sar         eax,1
>00448039    jns         0044803E
 0044803B    adc         eax,0
 0044803E    mov         dword ptr [ebp-10],eax
>00448041    jmp         00448067
 00448043    mov         eax,dword ptr [ebp-1C]
 00448046    sub         eax,dword ptr [ebp-24]
 00448049    inc         eax
 0044804A    sar         eax,1
>0044804C    jns         00448051
 0044804E    adc         eax,0
 00448051    mov         edx,dword ptr [ebp+10]
 00448054    mov         dword ptr [edx],eax
 00448056    mov         eax,dword ptr [ebp-1C]
 00448059    sub         eax,dword ptr [ebp-2C]
 0044805C    inc         eax
 0044805D    sar         eax,1
>0044805F    jns         00448064
 00448061    adc         eax,0
 00448064    mov         dword ptr [ebp-14],eax
 00448067    cmp         dword ptr [ebp-2C],0
>0044806B    je          00448073
 0044806D    cmp         dword ptr [ebp-24],0
>00448071    jne         00448078
 00448073    xor         eax,eax
 00448075    mov         dword ptr [ebp+14],eax
 00448078    cmp         dword ptr [ebp+18],0FFFFFFFF
>0044807C    jne         00448119
 00448082    cmp         dword ptr [ebp+14],0FFFFFFFF
>00448086    jne         004480D2
 00448088    lea         ecx,[ebp-34]
 0044808B    mov         edx,dword ptr [ebp-20]
 0044808E    add         edx,dword ptr [ebp-28]
 00448091    mov         eax,dword ptr [ebp-24]
 00448094    add         eax,dword ptr [ebp-2C]
 00448097    call        Point
 0044809C    mov         al,byte ptr [ebp+1C]
 0044809F    sub         al,2
>004480A1    jae         004480B6
 004480A3    mov         eax,dword ptr [ebp-1C]
 004480A6    sub         eax,dword ptr [ebp-34]
 004480A9    mov         ecx,3
 004480AE    cdq
 004480AF    idiv        eax,ecx
 004480B1    mov         dword ptr [ebp+18],eax
>004480B4    jmp         004480C7
 004480B6    mov         eax,dword ptr [ebp-18]
 004480B9    sub         eax,dword ptr [ebp-30]
 004480BC    mov         ecx,3
 004480C1    cdq
 004480C2    idiv        eax,ecx
 004480C4    mov         dword ptr [ebp+18],eax
 004480C7    mov         eax,dword ptr [ebp+18]
 004480CA    mov         dword ptr [ebp+14],eax
>004480CD    jmp         00448168
 004480D2    lea         ecx,[ebp-34]
 004480D5    mov         edx,dword ptr [ebp-20]
 004480D8    add         edx,dword ptr [ebp+14]
 004480DB    add         edx,dword ptr [ebp-28]
 004480DE    mov         eax,dword ptr [ebp-24]
 004480E1    add         eax,dword ptr [ebp+14]
 004480E4    add         eax,dword ptr [ebp-2C]
 004480E7    call        Point
 004480EC    mov         al,byte ptr [ebp+1C]
 004480EF    sub         al,2
>004480F1    jae         00448106
 004480F3    mov         eax,dword ptr [ebp-1C]
 004480F6    sub         eax,dword ptr [ebp-34]
 004480F9    inc         eax
 004480FA    sar         eax,1
>004480FC    jns         00448101
 004480FE    adc         eax,0
 00448101    mov         dword ptr [ebp+18],eax
>00448104    jmp         00448168
 00448106    mov         eax,dword ptr [ebp-18]
 00448109    sub         eax,dword ptr [ebp-30]
 0044810C    inc         eax
 0044810D    sar         eax,1
>0044810F    jns         00448114
 00448111    adc         eax,0
 00448114    mov         dword ptr [ebp+18],eax
>00448117    jmp         00448168
 00448119    cmp         dword ptr [ebp+14],0FFFFFFFF
>0044811D    jne         00448168
 0044811F    mov         eax,dword ptr [ebp+18]
 00448122    add         eax,dword ptr [ebp-20]
 00448125    mov         edx,dword ptr [ebp-18]
 00448128    sub         edx,eax
 0044812A    mov         eax,dword ptr [ebp+18]
 0044812D    add         eax,dword ptr [ebp-24]
 00448130    push        eax
 00448131    mov         eax,dword ptr [ebp-1C]
 00448134    pop         ecx
 00448135    sub         eax,ecx
 00448137    lea         ecx,[ebp-34]
 0044813A    call        Point
 0044813F    mov         al,byte ptr [ebp+1C]
 00448142    sub         al,2
>00448144    jae         00448158
 00448146    mov         eax,dword ptr [ebp-34]
 00448149    sub         eax,dword ptr [ebp-2C]
 0044814C    sar         eax,1
>0044814E    jns         00448153
 00448150    adc         eax,0
 00448153    mov         dword ptr [ebp+14],eax
>00448156    jmp         00448168
 00448158    mov         eax,dword ptr [ebp-30]
 0044815B    sub         eax,dword ptr [ebp-28]
 0044815E    sar         eax,1
>00448160    jns         00448165
 00448162    adc         eax,0
 00448165    mov         dword ptr [ebp+14],eax
 00448168    mov         al,byte ptr [ebp+1C]
 0044816B    sub         al,1
>0044816D    jb          0044817B
>0044816F    je          00448193
 00448171    dec         al
>00448173    je          004481B1
 00448175    dec         al
>00448177    je          004481CB
>00448179    jmp         004481E9
 0044817B    mov         eax,dword ptr [ebp+10]
 0044817E    mov         edx,dword ptr [ebp+18]
 00448181    mov         dword ptr [eax],edx
 00448183    mov         eax,dword ptr [ebp+10]
 00448186    mov         eax,dword ptr [eax]
 00448188    add         eax,dword ptr [ebp-24]
 0044818B    add         eax,dword ptr [ebp+14]
 0044818E    mov         dword ptr [ebp-14],eax
>00448191    jmp         004481E9
 00448193    mov         eax,dword ptr [ebp-1C]
 00448196    sub         eax,dword ptr [ebp+18]
 00448199    sub         eax,dword ptr [ebp-24]
 0044819C    mov         edx,dword ptr [ebp+10]
 0044819F    mov         dword ptr [edx],eax
 004481A1    mov         eax,dword ptr [ebp+10]
 004481A4    mov         eax,dword ptr [eax]
 004481A6    sub         eax,dword ptr [ebp+14]
 004481A9    sub         eax,dword ptr [ebp-2C]
 004481AC    mov         dword ptr [ebp-14],eax
>004481AF    jmp         004481E9
 004481B1    mov         eax,dword ptr [ebp+10]
 004481B4    mov         edx,dword ptr [ebp+18]
 004481B7    mov         dword ptr [eax+4],edx
 004481BA    mov         eax,dword ptr [ebp+10]
 004481BD    mov         eax,dword ptr [eax+4]
 004481C0    add         eax,dword ptr [ebp-20]
 004481C3    add         eax,dword ptr [ebp+14]
 004481C6    mov         dword ptr [ebp-10],eax
>004481C9    jmp         004481E9
 004481CB    mov         eax,dword ptr [ebp-18]
 004481CE    sub         eax,dword ptr [ebp+18]
 004481D1    sub         eax,dword ptr [ebp-20]
 004481D4    mov         edx,dword ptr [ebp+10]
 004481D7    mov         dword ptr [edx+4],eax
 004481DA    mov         eax,dword ptr [ebp+10]
 004481DD    mov         eax,dword ptr [eax+4]
 004481E0    sub         eax,dword ptr [ebp+14]
 004481E3    sub         eax,dword ptr [ebp-28]
 004481E6    mov         dword ptr [ebp-10],eax
 004481E9    mov         eax,dword ptr [ebp-0C]
 004481EC    mov         eax,dword ptr [eax]
 004481EE    mov         edx,dword ptr [ebp+24]
 004481F1    add         eax,dword ptr [edx]
 004481F3    mov         edx,dword ptr [ebp+10]
 004481F6    add         dword ptr [edx],eax
 004481F8    mov         eax,dword ptr [ebp-0C]
 004481FB    mov         eax,dword ptr [eax+4]
 004481FE    mov         edx,dword ptr [ebp+24]
 00448201    add         eax,dword ptr [edx+4]
 00448204    mov         edx,dword ptr [ebp+10]
 00448207    add         dword ptr [edx+4],eax
 0044820A    call        0046BFC0
 0044820F    call        0046C0EC
 00448214    test        al,al
>00448216    je          00448236
 00448218    mov         eax,dword ptr [ebp-0C]
 0044821B    mov         eax,dword ptr [eax+4]
 0044821E    add         eax,dword ptr [ebp-10]
 00448221    push        eax
 00448222    mov         eax,dword ptr [ebp-0C]
 00448225    mov         eax,dword ptr [eax]
 00448227    add         eax,dword ptr [ebp-14]
 0044822A    push        eax
 0044822B    mov         eax,dword ptr [ebp+0C]
 0044822E    push        eax
 0044822F    call        user32.OffsetRect
>00448234    jmp         0044825D
 00448236    mov         eax,dword ptr [ebp-0C]
 00448239    mov         eax,dword ptr [eax+4]
 0044823C    add         eax,dword ptr [ebp-10]
 0044823F    mov         edx,dword ptr [ebp+24]
 00448242    add         eax,dword ptr [edx+4]
 00448245    push        eax
 00448246    mov         eax,dword ptr [ebp-0C]
 00448249    mov         eax,dword ptr [eax]
 0044824B    add         eax,dword ptr [ebp-14]
 0044824E    mov         edx,dword ptr [ebp+24]
 00448251    add         eax,dword ptr [edx]
 00448253    push        eax
 00448254    mov         eax,dword ptr [ebp+0C]
 00448257    push        eax
 00448258    call        user32.OffsetRect
 0044825D    pop         edi
 0044825E    pop         esi
 0044825F    mov         esp,ebp
 00448261    pop         ebp
 00448262    ret         20
end;*}

//00448268
{*procedure sub_00448268(?:Pointer; ?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00448268    push        ebp
 00448269    mov         ebp,esp
 0044826B    add         esp,0FFFFFFEC
 0044826E    mov         dword ptr [ebp-0C],ecx
 00448271    mov         dword ptr [ebp-8],edx
 00448274    mov         dword ptr [ebp-4],eax
 00448277    mov         eax,dword ptr [ebp+28]
 0044827A    push        eax
 0044827B    mov         eax,dword ptr [ebp+24]
 0044827E    push        eax
 0044827F    mov         al,byte ptr [ebp+20]
 00448282    push        eax
 00448283    mov         eax,dword ptr [ebp+1C]
 00448286    push        eax
 00448287    mov         eax,dword ptr [ebp+18]
 0044828A    push        eax
 0044828B    lea         eax,[ebp-14]
 0044828E    push        eax
 0044828F    mov         eax,dword ptr [ebp+8]
 00448292    push        eax
 00448293    mov         eax,dword ptr [ebp+0C]
 00448296    push        eax
 00448297    mov         ecx,dword ptr [ebp-0C]
 0044829A    mov         edx,dword ptr [ebp-8]
 0044829D    mov         eax,dword ptr [ebp-4]
 004482A0    call        00447ED8
 004482A5    mov         al,byte ptr [ebp+14]
 004482A8    push        eax
 004482A9    mov         al,byte ptr [ebp+10]
 004482AC    push        eax
 004482AD    lea         ecx,[ebp-14]
 004482B0    mov         edx,dword ptr [ebp-8]
 004482B3    mov         eax,dword ptr [ebp-4]
 004482B6    call        00447C54
 004482BB    mov         eax,dword ptr [ebp+8]
 004482BE    push        eax
 004482BF    mov         al,byte ptr [ebp+14]
 004482C2    push        eax
 004482C3    mov         eax,dword ptr [ebp+0C]
 004482C6    push        eax
 004482C7    mov         ecx,dword ptr [ebp+24]
 004482CA    mov         edx,dword ptr [ebp-8]
 004482CD    mov         eax,dword ptr [ebp-4]
 004482D0    call        00447DE0
 004482D5    mov         esp,ebp
 004482D7    pop         ebp
 004482D8    ret         24
end;*}

//004482DC
{*procedure sub_004482DC(?:?);
begin
 004482DC    push        ebp
 004482DD    mov         ebp,esp
 004482DF    add         esp,0FFFFFFF8
 004482E2    mov         dword ptr [ebp-8],edx
 004482E5    mov         dword ptr [ebp-4],eax
 004482E8    mov         edx,dword ptr [ebp-8]
 004482EB    mov         eax,dword ptr [ebp-4]
 004482EE    call        00481D9C
 004482F3    mov         eax,dword ptr [ebp-8]
 004482F6    mov         edx,dword ptr ds:[4469B4];TSpeedButton
 004482FC    call        @AsClass
 00448301    mov         edx,dword ptr [ebp-4]
 00448304    mov         dword ptr [edx+20],eax;TSpeedButtonActionLink..........FClient:TSpeedButton
 00448307    pop         ecx
 00448308    pop         ecx
 00448309    pop         ebp
 0044830A    ret
end;*}

//0044830C
{*function sub_0044830C:?;
begin
 0044830C    push        ebp
 0044830D    mov         ebp,esp
 0044830F    add         esp,0FFFFFFF8
 00448312    mov         dword ptr [ebp-4],eax
 00448315    mov         eax,dword ptr [ebp-4]
 00448318    call        00493A1C
 0044831D    test        al,al
>0044831F    je          00448361
 00448321    mov         eax,dword ptr [ebp-4]
 00448324    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink...........FClient:TSpeedButton
 00448327    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0044832E    je          00448361
 00448330    mov         eax,dword ptr [ebp-4]
 00448333    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink............FClient:TSpeedButton
 00448336    cmp         byte ptr [eax+172],0;TSpeedButton.AllowAllUp:Boolean
>0044833D    je          00448361
 0044833F    mov         eax,dword ptr [ebp-4]
 00448342    mov         eax,dword ptr [eax+10];TSpeedButtonActionLink.FAction:TBasicAction
 00448345    mov         edx,dword ptr ds:[492C28];TCustomAction
 0044834B    call        @AsClass
 00448350    mov         al,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 00448353    mov         edx,dword ptr [ebp-4]
 00448356    mov         edx,dword ptr [edx+20];TSpeedButtonActionLink.............FClient:TSpeedButton
 00448359    cmp         al,byte ptr [edx+170];TSpeedButton.Down:Boolean
>0044835F    je          00448365
 00448361    xor         eax,eax
>00448363    jmp         00448367
 00448365    mov         al,1
 00448367    mov         byte ptr [ebp-5],al
 0044836A    mov         al,byte ptr [ebp-5]
 0044836D    pop         ecx
 0044836E    pop         ecx
 0044836F    pop         ebp
 00448370    ret
end;*}

//00448374
{*function sub_00448374:?;
begin
 00448374    push        ebp
 00448375    mov         ebp,esp
 00448377    add         esp,0FFFFFFF8
 0044837A    mov         dword ptr [ebp-4],eax
 0044837D    mov         eax,dword ptr [ebp-4]
 00448380    cmp         dword ptr [eax+20],0;TSpeedButtonActionLink..............FClient:TSpeedButton
>00448384    je          004483A8
 00448386    mov         eax,dword ptr [ebp-4]
 00448389    mov         eax,dword ptr [eax+10];TSpeedButtonActionLink.FAction:TBasicAction
 0044838C    mov         edx,dword ptr ds:[492C28];TCustomAction
 00448392    call        @AsClass
 00448397    mov         eax,dword ptr [eax+6C];TCustomAction.FGroupIndex:Integer
 0044839A    mov         edx,dword ptr [ebp-4]
 0044839D    mov         edx,dword ptr [edx+20];TSpeedButtonActionLink...............FClient:TSpeedButton
 004483A0    cmp         eax,dword ptr [edx+168];TSpeedButton.GroupIndex:Integer
>004483A6    je          004483AC
 004483A8    xor         eax,eax
>004483AA    jmp         004483AE
 004483AC    mov         al,1
 004483AE    mov         byte ptr [ebp-5],al
 004483B1    mov         al,byte ptr [ebp-5]
 004483B4    pop         ecx
 004483B5    pop         ecx
 004483B6    pop         ebp
 004483B7    ret
end;*}

//004483B8
{*procedure sub_004483B8(?:?);
begin
 004483B8    push        ebp
 004483B9    mov         ebp,esp
 004483BB    add         esp,0FFFFFFF8
 004483BE    mov         byte ptr [ebp-5],dl
 004483C1    mov         dword ptr [ebp-4],eax
 004483C4    mov         eax,dword ptr [ebp-4]
 004483C7    mov         edx,dword ptr [eax]
 004483C9    call        dword ptr [edx+24];TSpeedButtonActionLink.sub_0044830C
 004483CC    test        al,al
>004483CE    je          004483DE
 004483D0    mov         dl,byte ptr [ebp-5]
 004483D3    mov         eax,dword ptr [ebp-4]
 004483D6    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink................FClient:TSpeedButton
 004483D9    call        TSpeedButton.SetDown
 004483DE    pop         ecx
 004483DF    pop         ecx
 004483E0    pop         ebp
 004483E1    ret
end;*}

//004483E4
{*procedure sub_004483E4(?:?);
begin
 004483E4    push        ebp
 004483E5    mov         ebp,esp
 004483E7    add         esp,0FFFFFFF8
 004483EA    mov         dword ptr [ebp-8],edx
 004483ED    mov         dword ptr [ebp-4],eax
 004483F0    mov         eax,dword ptr [ebp-4]
 004483F3    mov         edx,dword ptr [eax]
 004483F5    call        dword ptr [edx+2C];TSpeedButtonActionLink.sub_00448374
 004483F8    test        al,al
>004483FA    je          0044840A
 004483FC    mov         edx,dword ptr [ebp-8]
 004483FF    mov         eax,dword ptr [ebp-4]
 00448402    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink.................FClient:TSpeedButton
 00448405    call        TSpeedButton.SetGroupIndex
 0044840A    pop         ecx
 0044840B    pop         ecx
 0044840C    pop         ebp
 0044840D    ret
end;*}

//00448410
constructor TCustomMDIMenuButton.Create;
begin
{*
 00448410    push        ebp
 00448411    mov         ebp,esp
 00448413    add         esp,0FFFFFFF4
 00448416    push        ebx
 00448417    test        dl,dl
>00448419    je          00448423
 0044841B    add         esp,0FFFFFFF0
 0044841E    call        @ClassCreate
 00448423    mov         dword ptr [ebp-0C],ecx
 00448426    mov         byte ptr [ebp-5],dl
 00448429    mov         dword ptr [ebp-4],eax
 0044842C    mov         dl,1
 0044842E    mov         eax,[0044701C];TButtonGlyph
 00448433    call        TButtonGlyph.Create;TButtonGlyph.Create
 00448438    mov         edx,dword ptr [ebp-4]
 0044843B    mov         dword ptr [edx+16C],eax;TSpeedButton.FGlyph:Pointer
 00448441    mov         eax,dword ptr [ebp-4]
 00448444    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0044844A    mov         edx,dword ptr [ebp-4]
 0044844D    mov         dword ptr [eax+2C],edx
 00448450    mov         dword ptr [eax+28],448E3C;sub_00448E3C
 00448457    mov         ecx,dword ptr [ebp-0C]
 0044845A    xor         edx,edx
 0044845C    mov         eax,dword ptr [ebp-4]
 0044845F    call        0048D848
 00448464    push        17
 00448466    push        16
 00448468    xor         ecx,ecx
 0044846A    xor         edx,edx
 0044846C    mov         eax,dword ptr [ebp-4]
 0044846F    mov         ebx,dword ptr [eax]
 00448471    call        dword ptr [ebx+84];TSpeedButton.sub_00482930
 00448477    mov         eax,dword ptr [ebp-4]
 0044847A    mov         edx,dword ptr ds:[4484F0];0x82 gvar_004484F0
 00448480    mov         dword ptr [eax+50],edx;TSpeedButton.FControlStyle:TControlStyle
 00448483    mov         dl,1
 00448485    mov         eax,dword ptr [ebp-4]
 00448488    call        TPanel.SetParentFont
 0044848D    mov         edx,0FF00000F
 00448492    mov         eax,dword ptr [ebp-4]
 00448495    call        TPanel.SetColor
 0044849A    mov         eax,dword ptr [ebp-4]
 0044849D    mov         dword ptr [eax+174],4;TSpeedButton.Spacing:Integer
 004484A7    mov         eax,dword ptr [ebp-4]
 004484AA    mov         dword ptr [eax+17C],0FFFFFFFF;TSpeedButton.Margin:Integer
 004484B4    mov         eax,dword ptr [ebp-4]
 004484B7    mov         byte ptr [eax+173],0;TSpeedButton.Layout:TButtonLayout
 004484BE    mov         eax,dword ptr [ebp-4]
 004484C1    mov         byte ptr [eax+178],1;TSpeedButton.Transparent:Boolean
 004484C8    inc         dword ptr ds:[56C37C]
 004484CE    mov         eax,dword ptr [ebp-4]
 004484D1    cmp         byte ptr [ebp-5],0
>004484D5    je          004484E6
 004484D7    call        @AfterConstruction
 004484DC    pop         dword ptr fs:[0]
 004484E3    add         esp,0C
 004484E6    mov         eax,dword ptr [ebp-4]
 004484E9    pop         ebx
 004484EA    mov         esp,ebp
 004484EC    pop         ebp
 004484ED    ret
*}
end;

//004484F4
destructor TSpeedButton.Destroy;
begin
{*
 004484F4    push        ebp
 004484F5    mov         ebp,esp
 004484F7    add         esp,0FFFFFFF8
 004484FA    call        @BeforeDestruction
 004484FF    mov         byte ptr [ebp-5],dl
 00448502    mov         dword ptr [ebp-4],eax
 00448505    dec         dword ptr ds:[56C37C]
 0044850B    mov         dl,byte ptr [ebp-5]
 0044850E    and         dl,0FC
 00448511    mov         eax,dword ptr [ebp-4]
 00448514    call        TGraphicControl.Destroy
 00448519    mov         eax,dword ptr [ebp-4]
 0044851C    mov         eax,dword ptr [eax+16C]
 00448522    call        TObject.Free
 00448527    cmp         byte ptr [ebp-5],0
>0044852B    jle         00448535
 0044852D    mov         eax,dword ptr [ebp-4]
 00448530    call        @ClassDestroy
 00448535    pop         ecx
 00448536    pop         ecx
 00448537    pop         ebp
 00448538    ret
*}
end;

//0044853C
procedure sub_0044853C;
begin
{*
 0044853C    push        ebp
 0044853D    mov         ebp,esp
 0044853F    add         esp,0FFFFFFB8
 00448542    push        esi
 00448543    push        edi
 00448544    xor         edx,edx
 00448546    mov         dword ptr [ebp-48],edx
 00448549    mov         dword ptr [ebp-44],edx
 0044854C    mov         dword ptr [ebp-4],eax
 0044854F    xor         eax,eax
 00448551    push        ebp
 00448552    push        448A20
 00448557    push        dword ptr fs:[eax]
 0044855A    mov         dword ptr fs:[eax],esp
 0044855D    mov         eax,dword ptr [ebp-4]
 00448560    mov         edx,dword ptr [eax]
 00448562    call        dword ptr [edx+50];TImage.GetEnabled
 00448565    test        al,al
>00448567    jne         0044857F
 00448569    mov         eax,dword ptr [ebp-4]
 0044856C    mov         byte ptr [eax+182],1;TSpeedButton.FState:TButtonState
 00448573    mov         eax,dword ptr [ebp-4]
 00448576    mov         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>0044857D    jmp         004485B9
 0044857F    mov         eax,dword ptr [ebp-4]
 00448582    cmp         byte ptr [eax+182],1;TSpeedButton.FState:TButtonState
>00448589    jne         004485B9
 0044858B    mov         eax,dword ptr [ebp-4]
 0044858E    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>00448595    je          004485AF
 00448597    mov         eax,dword ptr [ebp-4]
 0044859A    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>004485A1    je          004485AF
 004485A3    mov         eax,dword ptr [ebp-4]
 004485A6    mov         byte ptr [eax+182],3;TSpeedButton.FState:TButtonState
>004485AD    jmp         004485B9
 004485AF    mov         eax,dword ptr [ebp-4]
 004485B2    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 004485B9    mov         eax,dword ptr [ebp-4]
 004485BC    mov         edx,dword ptr [eax+68];TSpeedButton.FFont:TFont
 004485BF    mov         eax,dword ptr [ebp-4]
 004485C2    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 004485C8    call        TCanvas.SetFont
 004485CD    call        0046BFC0
 004485D2    call        0046C0EC
 004485D7    test        al,al
>004485D9    je          004487F6
 004485DF    mov         eax,dword ptr [ebp-4]
 004485E2    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 004485E8    call        0042F6A0
 004485ED    mov         edx,eax
 004485EF    mov         eax,dword ptr [ebp-4]
 004485F2    call        0047FAEC
 004485F7    mov         eax,dword ptr [ebp-4]
 004485FA    mov         edx,dword ptr [eax]
 004485FC    call        dword ptr [edx+50];TImage.GetEnabled
 004485FF    test        al,al
>00448601    jne         00448609
 00448603    mov         byte ptr [ebp-11],5
>00448607    jmp         00448634
 00448609    mov         eax,dword ptr [ebp-4]
 0044860C    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 00448612    add         al,0FE
 00448614    sub         al,2
>00448616    jae         0044861E
 00448618    mov         byte ptr [ebp-11],4
>0044861C    jmp         00448634
 0044861E    mov         eax,dword ptr [ebp-4]
 00448621    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>00448628    je          00448630
 0044862A    mov         byte ptr [ebp-11],3
>0044862E    jmp         00448634
 00448630    mov         byte ptr [ebp-11],2
 00448634    mov         byte ptr [ebp-12],0
 00448638    mov         eax,dword ptr [ebp-4]
 0044863B    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>00448642    je          0044866D
 00448644    mov         al,byte ptr [ebp-11]
 00448647    sub         al,2
>00448649    je          00448669
 0044864B    dec         al
>0044864D    je          00448663
 0044864F    dec         al
>00448651    je          0044865D
 00448653    dec         al
>00448655    jne         0044866D
 00448657    mov         byte ptr [ebp-12],5
>0044865B    jmp         0044866D
 0044865D    mov         byte ptr [ebp-12],4
>00448661    jmp         0044866D
 00448663    mov         byte ptr [ebp-12],3
>00448667    jmp         0044866D
 00448669    mov         byte ptr [ebp-12],2
 0044866D    lea         edx,[ebp-22]
 00448670    mov         eax,dword ptr [ebp-4]
 00448673    mov         ecx,dword ptr [eax]
 00448675    call        dword ptr [ecx+44];TSpeedButton.sub_00482F5C
 00448678    cmp         byte ptr [ebp-12],0
>0044867C    jne         004486E2
 0044867E    call        0046BFC0
 00448683    lea         ecx,[ebp-30]
 00448686    mov         dl,byte ptr [ebp-11]
 00448689    call        0046C3C8
 0044868E    lea         eax,[ebp-22]
 00448691    push        eax
 00448692    push        0
 00448694    mov         eax,dword ptr [ebp-4]
 00448697    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 0044869D    call        0042F6A0
 004486A2    push        eax
 004486A3    call        0046BFC0
 004486A8    lea         ecx,[ebp-30]
 004486AB    pop         edx
 004486AC    call        0046C254
 004486B1    lea         eax,[ebp-22]
 004486B4    push        eax
 004486B5    lea         eax,[ebp-40]
 004486B8    push        eax
 004486B9    mov         eax,dword ptr [ebp-4]
 004486BC    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 004486C2    call        0042F6A0
 004486C7    push        eax
 004486C8    call        0046BFC0
 004486CD    lea         ecx,[ebp-30]
 004486D0    pop         edx
 004486D1    call        0046C1B0
 004486D6    lea         esi,[ebp-40]
 004486D9    lea         edi,[ebp-22]
 004486DC    movs        dword ptr [edi],dword ptr [esi]
 004486DD    movs        dword ptr [edi],dword ptr [esi]
 004486DE    movs        dword ptr [edi],dword ptr [esi]
 004486DF    movs        dword ptr [edi],dword ptr [esi]
>004486E0    jmp         00448744
 004486E2    call        0046BFC0
 004486E7    lea         ecx,[ebp-30]
 004486EA    mov         dl,byte ptr [ebp-12]
 004486ED    call        0046C570
 004486F2    lea         eax,[ebp-22]
 004486F5    push        eax
 004486F6    push        0
 004486F8    mov         eax,dword ptr [ebp-4]
 004486FB    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 00448701    call        0042F6A0
 00448706    push        eax
 00448707    call        0046BFC0
 0044870C    lea         ecx,[ebp-30]
 0044870F    pop         edx
 00448710    call        0046C254
 00448715    lea         eax,[ebp-22]
 00448718    push        eax
 00448719    lea         eax,[ebp-40]
 0044871C    push        eax
 0044871D    mov         eax,dword ptr [ebp-4]
 00448720    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 00448726    call        0042F6A0
 0044872B    push        eax
 0044872C    call        0046BFC0
 00448731    lea         ecx,[ebp-30]
 00448734    pop         edx
 00448735    call        0046C1B0
 0044873A    lea         esi,[ebp-40]
 0044873D    lea         edi,[ebp-22]
 00448740    movs        dword ptr [edi],dword ptr [esi]
 00448741    movs        dword ptr [edi],dword ptr [esi]
 00448742    movs        dword ptr [edi],dword ptr [esi]
 00448743    movs        dword ptr [edi],dword ptr [esi]
 00448744    cmp         byte ptr [ebp-11],4
>00448748    jne         00448777
 0044874A    cmp         byte ptr [ebp-12],0
>0044874E    je          00448766
 00448750    mov         eax,dword ptr [ebp-4]
 00448753    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 00448759    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0044875C    mov         edx,0FF00000E
 00448761    call        TFont.SetColor
 00448766    lea         ecx,[ebp-10]
 00448769    xor         edx,edx
 0044876B    mov         eax,1
 00448770    call        Point
>00448775    jmp         00448783
 00448777    lea         ecx,[ebp-10]
 0044877A    xor         edx,edx
 0044877C    xor         eax,eax
 0044877E    call        Point
 00448783    lea         eax,[ebp-10]
 00448786    push        eax
 00448787    lea         edx,[ebp-44]
 0044878A    mov         eax,dword ptr [ebp-4]
 0044878D    call        TPanel.GetCaption
 00448792    mov         eax,dword ptr [ebp-44]
 00448795    push        eax
 00448796    mov         eax,dword ptr [ebp-4]
 00448799    mov         al,byte ptr [eax+173];TSpeedButton.Layout:TButtonLayout
 0044879F    push        eax
 004487A0    mov         eax,dword ptr [ebp-4]
 004487A3    mov         eax,dword ptr [eax+17C];TSpeedButton.Margin:Integer
 004487A9    push        eax
 004487AA    mov         eax,dword ptr [ebp-4]
 004487AD    mov         eax,dword ptr [eax+174];TSpeedButton.Spacing:Integer
 004487B3    push        eax
 004487B4    mov         eax,dword ptr [ebp-4]
 004487B7    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 004487BD    push        eax
 004487BE    mov         eax,dword ptr [ebp-4]
 004487C1    mov         al,byte ptr [eax+178];TSpeedButton.Transparent:Boolean
 004487C7    push        eax
 004487C8    xor         edx,edx
 004487CA    mov         eax,dword ptr [ebp-4]
 004487CD    call        00486778
 004487D2    push        eax
 004487D3    lea         eax,[ebp-40]
 004487D6    push        eax
 004487D7    lea         ecx,[ebp-22]
 004487DA    mov         eax,dword ptr [ebp-4]
 004487DD    mov         edx,dword ptr [eax+160];TSpeedButton.......................................................
 004487E3    mov         eax,dword ptr [ebp-4]
 004487E6    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 004487EC    call        00448268
>004487F1    jmp         00448A05
 004487F6    mov         eax,dword ptr [ebp-4]
 004487F9    mov         eax,dword ptr [eax+4C];TSpeedButton.Height:Integer
 004487FC    push        eax
 004487FD    lea         eax,[ebp-22]
 00448800    push        eax
 00448801    mov         eax,dword ptr [ebp-4]
 00448804    mov         ecx,dword ptr [eax+48];TSpeedButton.Width:Integer
 00448807    xor         edx,edx
 00448809    xor         eax,eax
 0044880B    call        0041E714
 00448810    mov         eax,dword ptr [ebp-4]
 00448813    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>0044881A    jne         0044885C
 0044881C    mov         dword ptr [ebp-8],2010
 00448823    mov         eax,dword ptr [ebp-4]
 00448826    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 0044882C    add         al,0FE
 0044882E    sub         al,2
>00448830    jae         00448839
 00448832    or          dword ptr [ebp-8],200
 00448839    mov         eax,dword ptr [ebp-8]
 0044883C    push        eax
 0044883D    push        4
 0044883F    lea         eax,[ebp-22]
 00448842    push        eax
 00448843    mov         eax,dword ptr [ebp-4]
 00448846    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 0044884C    call        0042F6A0
 00448851    push        eax
 00448852    call        user32.DrawFrameControl
>00448857    jmp         00448917
 0044885C    mov         eax,dword ptr [ebp-4]
 0044885F    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 00448865    add         al,0FE
 00448867    sub         al,2
>00448869    jb          0044888C
 0044886B    mov         eax,dword ptr [ebp-4]
 0044886E    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>00448875    je          00448883
 00448877    mov         eax,dword ptr [ebp-4]
 0044887A    cmp         byte ptr [eax+182],1;TSpeedButton.FState:TButtonState
>00448881    jne         0044888C
 00448883    mov         eax,dword ptr [ebp-4]
 00448886    test        byte ptr [eax+1C],10;TSpeedButton.FComponentState:TComponentState
>0044888A    je          004488D6
 0044888C    mov         eax,dword ptr [ebp-4]
 0044888F    movzx       eax,byte ptr [eax+178];TSpeedButton.Transparent:Boolean
 00448896    mov         eax,dword ptr [eax*4+56C388]
 0044889D    or          eax,0F
 004488A0    push        eax
 004488A1    mov         eax,dword ptr [ebp-4]
 004488A4    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 004488AA    add         al,0FE
 004488AC    sub         al,2
 004488AE    setb        al
 004488B1    and         eax,7F
 004488B4    mov         eax,dword ptr [eax*4+56C380]
 004488BB    push        eax
 004488BC    lea         eax,[ebp-22]
 004488BF    push        eax
 004488C0    mov         eax,dword ptr [ebp-4]
 004488C3    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 004488C9    call        0042F6A0
 004488CE    push        eax
 004488CF    call        user32.DrawEdge
>004488D4    jmp         0044890A
 004488D6    mov         eax,dword ptr [ebp-4]
 004488D9    cmp         byte ptr [eax+178],0;TSpeedButton.Transparent:Boolean
>004488E0    jne         0044890A
 004488E2    mov         eax,dword ptr [ebp-4]
 004488E5    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 004488EB    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004488EE    mov         edx,dword ptr [ebp-4]
 004488F1    mov         edx,dword ptr [edx+70];TSpeedButton.FColor:TColor
 004488F4    call        TBrush.SetColor
 004488F9    lea         edx,[ebp-22]
 004488FC    mov         eax,dword ptr [ebp-4]
 004488FF    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 00448905    call        0042F030
 0044890A    push        0FF
 0044890C    push        0FF
 0044890E    lea         eax,[ebp-22]
 00448911    push        eax
 00448912    call        user32.InflateRect
 00448917    mov         eax,dword ptr [ebp-4]
 0044891A    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 00448920    add         al,0FE
 00448922    sub         al,2
>00448924    jae         0044898D
 00448926    mov         eax,dword ptr [ebp-4]
 00448929    cmp         byte ptr [eax+182],3;TSpeedButton.FState:TButtonState
>00448930    jne         0044897D
 00448932    mov         eax,dword ptr [ebp-4]
 00448935    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>0044893C    je          0044894A
 0044893E    mov         eax,dword ptr [ebp-4]
 00448941    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>00448948    jne         0044897D
 0044894A    mov         edx,0FF000014
 0044894F    mov         eax,0FF00000F
 00448954    call        00436FC8
 00448959    mov         edx,eax
 0044895B    mov         eax,dword ptr [ebp-4]
 0044895E    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 00448964    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00448967    call        0042EA6C
 0044896C    lea         edx,[ebp-22]
 0044896F    mov         eax,dword ptr [ebp-4]
 00448972    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 00448978    call        0042F030
 0044897D    mov         dword ptr [ebp-10],1
 00448984    mov         dword ptr [ebp-0C],1
>0044898B    jmp         00448997
 0044898D    xor         eax,eax
 0044898F    mov         dword ptr [ebp-10],eax
 00448992    xor         eax,eax
 00448994    mov         dword ptr [ebp-0C],eax
 00448997    lea         eax,[ebp-10]
 0044899A    push        eax
 0044899B    lea         edx,[ebp-48]
 0044899E    mov         eax,dword ptr [ebp-4]
 004489A1    call        TPanel.GetCaption
 004489A6    mov         eax,dword ptr [ebp-48]
 004489A9    push        eax
 004489AA    mov         eax,dword ptr [ebp-4]
 004489AD    mov         al,byte ptr [eax+173];TSpeedButton.Layout:TButtonLayout
 004489B3    push        eax
 004489B4    mov         eax,dword ptr [ebp-4]
 004489B7    mov         eax,dword ptr [eax+17C];TSpeedButton.Margin:Integer
 004489BD    push        eax
 004489BE    mov         eax,dword ptr [ebp-4]
 004489C1    mov         eax,dword ptr [eax+174];TSpeedButton.Spacing:Integer
 004489C7    push        eax
 004489C8    mov         eax,dword ptr [ebp-4]
 004489CB    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 004489D1    push        eax
 004489D2    mov         eax,dword ptr [ebp-4]
 004489D5    mov         al,byte ptr [eax+178];TSpeedButton.Transparent:Boolean
 004489DB    push        eax
 004489DC    xor         edx,edx
 004489DE    mov         eax,dword ptr [ebp-4]
 004489E1    call        00486778
 004489E6    push        eax
 004489E7    lea         eax,[ebp-40]
 004489EA    push        eax
 004489EB    lea         ecx,[ebp-22]
 004489EE    mov         eax,dword ptr [ebp-4]
 004489F1    mov         edx,dword ptr [eax+160];TSpeedButton.......................................................
 004489F7    mov         eax,dword ptr [ebp-4]
 004489FA    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 00448A00    call        00448268
 00448A05    xor         eax,eax
 00448A07    pop         edx
 00448A08    pop         ecx
 00448A09    pop         ecx
 00448A0A    mov         dword ptr fs:[eax],edx
 00448A0D    push        448A27
 00448A12    lea         eax,[ebp-48]
 00448A15    mov         edx,2
 00448A1A    call        @LStrArrayClr
 00448A1F    ret
>00448A20    jmp         @HandleFinally
>00448A25    jmp         00448A12
 00448A27    pop         edi
 00448A28    pop         esi
 00448A29    mov         esp,ebp
 00448A2B    pop         ebp
 00448A2C    ret
*}
end;

//00448A30
procedure sub_00448A30(?:TSpeedButton);
begin
{*
 00448A30    push        ebp
 00448A31    mov         ebp,esp
 00448A33    add         esp,0FFFFFFF4
 00448A36    mov         dword ptr [ebp-4],eax
 00448A39    mov         eax,dword ptr [ebp-4]
 00448A3C    cmp         byte ptr [eax+180],0
>00448A43    je          00448AA5
 00448A45    mov         eax,dword ptr [ebp-4]
 00448A48    mov         edx,dword ptr [eax]
 00448A4A    call        dword ptr [edx+50]
 00448A4D    test        al,al
>00448A4F    je          00448AA5
 00448A51    lea         eax,[ebp-0C]
 00448A54    push        eax
 00448A55    call        user32.GetCursorPos
 00448A5A    lea         eax,[ebp-0C]
 00448A5D    mov         dl,1
 00448A5F    call        00481798
 00448A64    cmp         eax,dword ptr [ebp-4]
 00448A67    sete        al
 00448A6A    xor         al,1
 00448A6C    mov         edx,dword ptr [ebp-4]
 00448A6F    mov         byte ptr [edx+181],al
 00448A75    mov         eax,dword ptr [ebp-4]
 00448A78    cmp         byte ptr [eax+181],0
>00448A7F    je          00448A94
 00448A81    push        0
 00448A83    xor         ecx,ecx
 00448A85    mov         edx,0B014
 00448A8A    mov         eax,dword ptr [ebp-4]
 00448A8D    call        00484FFC
>00448A92    jmp         00448AA5
 00448A94    push        0
 00448A96    xor         ecx,ecx
 00448A98    mov         edx,0B013
 00448A9D    mov         eax,dword ptr [ebp-4]
 00448AA0    call        00484FFC
 00448AA5    mov         esp,ebp
 00448AA7    pop         ebp
 00448AA8    ret
*}
end;

//00448AAC
procedure sub_00448AAC;
begin
{*
 00448AAC    push        ebp
 00448AAD    mov         ebp,esp
 00448AAF    add         esp,0FFFFFFF8
 00448AB2    mov         dword ptr [ebp-4],eax
 00448AB5    mov         eax,dword ptr [ebp-4]
 00448AB8    call        004864B8
 00448ABD    mov         eax,dword ptr [ebp-4]
 00448AC0    mov         edx,dword ptr [eax]
 00448AC2    call        dword ptr [edx+50];TImage.GetEnabled
 00448AC5    test        al,al
>00448AC7    je          00448ACF
 00448AC9    mov         byte ptr [ebp-5],0
>00448ACD    jmp         00448AD3
 00448ACF    mov         byte ptr [ebp-5],1
 00448AD3    mov         dl,byte ptr [ebp-5]
 00448AD6    mov         eax,dword ptr [ebp-4]
 00448AD9    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 00448ADF    call        00447610
 00448AE4    pop         ecx
 00448AE5    pop         ecx
 00448AE6    pop         ebp
 00448AE7    ret
*}
end;

//00448AE8
{*procedure TSpeedButton.sub_00448AE8(?:?; ?:?; ?:?; ?:?);
begin
 00448AE8    push        ebp
 00448AE9    mov         ebp,esp
 00448AEB    add         esp,0FFFFFFF8
 00448AEE    mov         byte ptr [ebp-6],cl
 00448AF1    mov         byte ptr [ebp-5],dl
 00448AF4    mov         dword ptr [ebp-4],eax
 00448AF7    mov         eax,dword ptr [ebp+0C]
 00448AFA    push        eax
 00448AFB    mov         eax,dword ptr [ebp+8]
 00448AFE    push        eax
 00448AFF    mov         cl,byte ptr [ebp-6]
 00448B02    mov         dl,byte ptr [ebp-5]
 00448B05    mov         eax,dword ptr [ebp-4]
 00448B08    call        TControl.sub_00485588
 00448B0D    cmp         byte ptr [ebp-5],0
>00448B11    jne         00448B47
 00448B13    mov         eax,dword ptr [ebp-4]
 00448B16    mov         edx,dword ptr [eax]
 00448B18    call        dword ptr [edx+50];TImage.GetEnabled
 00448B1B    test        al,al
>00448B1D    je          00448B47
 00448B1F    mov         eax,dword ptr [ebp-4]
 00448B22    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>00448B29    jne         00448B3D
 00448B2B    mov         eax,dword ptr [ebp-4]
 00448B2E    mov         byte ptr [eax+182],2;TSpeedButton.FState:TButtonState
 00448B35    mov         eax,dword ptr [ebp-4]
 00448B38    mov         edx,dword ptr [eax]
 00448B3A    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 00448B3D    mov         eax,dword ptr [ebp-4]
 00448B40    mov         byte ptr [eax+171],1;TSpeedButton.FDragging:Boolean
 00448B47    pop         ecx
 00448B48    pop         ecx
 00448B49    pop         ebp
 00448B4A    ret         8
end;*}

//00448B50
{*procedure TSpeedButton.sub_00448B50(?:?; ?:?; ?:?);
begin
 00448B50    push        ebp
 00448B51    mov         ebp,esp
 00448B53    add         esp,0FFFFFFF0
 00448B56    mov         dword ptr [ebp-0C],ecx
 00448B59    mov         byte ptr [ebp-5],dl
 00448B5C    mov         dword ptr [ebp-4],eax
 00448B5F    mov         eax,dword ptr [ebp+8]
 00448B62    push        eax
 00448B63    mov         ecx,dword ptr [ebp-0C]
 00448B66    mov         dl,byte ptr [ebp-5]
 00448B69    mov         eax,dword ptr [ebp-4]
 00448B6C    call        TControl.sub_004858F4
 00448B71    mov         eax,dword ptr [ebp-4]
 00448B74    cmp         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>00448B7B    je          00448BF3
 00448B7D    mov         eax,dword ptr [ebp-4]
 00448B80    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>00448B87    jne         00448B8F
 00448B89    mov         byte ptr [ebp-0D],0
>00448B8D    jmp         00448B93
 00448B8F    mov         byte ptr [ebp-0D],3
 00448B93    cmp         dword ptr [ebp-0C],0
>00448B97    jl          00448BCF
 00448B99    mov         eax,dword ptr [ebp-4]
 00448B9C    call        TControl.GetClientWidth
 00448BA1    cmp         eax,dword ptr [ebp-0C]
>00448BA4    jle         00448BCF
 00448BA6    cmp         dword ptr [ebp+8],0
>00448BAA    jl          00448BCF
 00448BAC    mov         eax,dword ptr [ebp-4]
 00448BAF    call        TControl.GetClientHeight
 00448BB4    cmp         eax,dword ptr [ebp+8]
>00448BB7    jl          00448BCF
 00448BB9    mov         eax,dword ptr [ebp-4]
 00448BBC    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>00448BC3    je          00448BCB
 00448BC5    mov         byte ptr [ebp-0D],3
>00448BC9    jmp         00448BCF
 00448BCB    mov         byte ptr [ebp-0D],2
 00448BCF    mov         al,byte ptr [ebp-0D]
 00448BD2    mov         edx,dword ptr [ebp-4]
 00448BD5    cmp         al,byte ptr [edx+182];TSpeedButton.FState:TButtonState
>00448BDB    je          00448C07
 00448BDD    mov         al,byte ptr [ebp-0D]
 00448BE0    mov         edx,dword ptr [ebp-4]
 00448BE3    mov         byte ptr [edx+182],al;TSpeedButton.FState:TButtonState
 00448BE9    mov         eax,dword ptr [ebp-4]
 00448BEC    mov         edx,dword ptr [eax]
 00448BEE    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
>00448BF1    jmp         00448C07
 00448BF3    mov         eax,dword ptr [ebp-4]
 00448BF6    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>00448BFD    jne         00448C07
 00448BFF    mov         eax,dword ptr [ebp-4]
 00448C02    call        00448A30
 00448C07    mov         esp,ebp
 00448C09    pop         ebp
 00448C0A    ret         4
end;*}

//00448C10
{*procedure TSpeedButton.sub_00448C10(?:?; ?:?; ?:?; ?:?);
begin
 00448C10    push        ebp
 00448C11    mov         ebp,esp
 00448C13    add         esp,0FFFFFFF8
 00448C16    push        esi
 00448C17    mov         byte ptr [ebp-6],cl
 00448C1A    mov         byte ptr [ebp-5],dl
 00448C1D    mov         dword ptr [ebp-4],eax
 00448C20    mov         eax,dword ptr [ebp+0C]
 00448C23    push        eax
 00448C24    mov         eax,dword ptr [ebp+8]
 00448C27    push        eax
 00448C28    mov         cl,byte ptr [ebp-6]
 00448C2B    mov         dl,byte ptr [ebp-5]
 00448C2E    mov         eax,dword ptr [ebp-4]
 00448C31    call        TControl.sub_004859D0
 00448C36    mov         eax,dword ptr [ebp-4]
 00448C39    cmp         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>00448C40    je          00448D2C
 00448C46    mov         eax,dword ptr [ebp-4]
 00448C49    mov         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
 00448C50    cmp         dword ptr [ebp+0C],0
>00448C54    jl          00448C76
 00448C56    mov         eax,dword ptr [ebp-4]
 00448C59    call        TControl.GetClientWidth
 00448C5E    cmp         eax,dword ptr [ebp+0C]
>00448C61    jle         00448C76
 00448C63    cmp         dword ptr [ebp+8],0
>00448C67    jl          00448C76
 00448C69    mov         eax,dword ptr [ebp-4]
 00448C6C    call        TControl.GetClientHeight
 00448C71    cmp         eax,dword ptr [ebp+8]
>00448C74    jge         00448C7A
 00448C76    xor         eax,eax
>00448C78    jmp         00448C7C
 00448C7A    mov         al,1
 00448C7C    mov         byte ptr [ebp-7],al
 00448C7F    mov         eax,dword ptr [ebp-4]
 00448C82    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>00448C89    jne         00448CBE
 00448C8B    mov         eax,dword ptr [ebp-4]
 00448C8E    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 00448C95    mov         eax,dword ptr [ebp-4]
 00448C98    mov         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
 00448C9F    cmp         byte ptr [ebp-7],0
>00448CA3    je          00448D12
 00448CA5    mov         eax,dword ptr [ebp-4]
 00448CA8    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 00448CAE    add         al,0FE
 00448CB0    sub         al,2
>00448CB2    jb          00448D12
 00448CB4    mov         eax,dword ptr [ebp-4]
 00448CB7    mov         edx,dword ptr [eax]
 00448CB9    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
>00448CBC    jmp         00448D12
 00448CBE    cmp         byte ptr [ebp-7],0
>00448CC2    je          00448CF1
 00448CC4    mov         eax,dword ptr [ebp-4]
 00448CC7    mov         dl,byte ptr [eax+170];TSpeedButton.Down:Boolean
 00448CCD    xor         dl,1
 00448CD0    mov         eax,dword ptr [ebp-4]
 00448CD3    call        TSpeedButton.SetDown
 00448CD8    mov         eax,dword ptr [ebp-4]
 00448CDB    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>00448CE2    je          00448D12
 00448CE4    mov         eax,dword ptr [ebp-4]
 00448CE7    mov         edx,dword ptr [eax]
 00448CE9    call        dword ptr [edx+80];TSpeedButton.sub_00484018
>00448CEF    jmp         00448D12
 00448CF1    mov         eax,dword ptr [ebp-4]
 00448CF4    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>00448CFB    je          00448D07
 00448CFD    mov         eax,dword ptr [ebp-4]
 00448D00    mov         byte ptr [eax+182],3;TSpeedButton.FState:TButtonState
 00448D07    mov         eax,dword ptr [ebp-4]
 00448D0A    mov         edx,dword ptr [eax]
 00448D0C    call        dword ptr [edx+80];TSpeedButton.sub_00484018
 00448D12    cmp         byte ptr [ebp-7],0
>00448D16    je          00448D24
 00448D18    mov         eax,dword ptr [ebp-4]
 00448D1B    mov         si,0FFEB
 00448D1F    call        @CallDynaInst;TSpeedButton.sub_00448D34
 00448D24    mov         eax,dword ptr [ebp-4]
 00448D27    call        00448A30
 00448D2C    pop         esi
 00448D2D    pop         ecx
 00448D2E    pop         ecx
 00448D2F    pop         ebp
 00448D30    ret         8
end;*}

//00448D34
procedure TSpeedButton.sub_00448D34;
begin
{*
 00448D34    push        ebp
 00448D35    mov         ebp,esp
 00448D37    push        ecx
 00448D38    mov         dword ptr [ebp-4],eax
 00448D3B    mov         eax,dword ptr [ebp-4]
 00448D3E    call        TControl.sub_004854CC
 00448D43    pop         ecx
 00448D44    pop         ebp
 00448D45    ret
*}
end;

//00448D48
procedure TSpeedButton.sub_00448D48;
begin
{*
 00448D48    push        ebp
 00448D49    mov         ebp,esp
 00448D4B    add         esp,0FFFFFFF8
 00448D4E    mov         dword ptr [ebp-4],eax
 00448D51    mov         eax,dword ptr [ebp-4]
 00448D54    call        TSpeedButton.GetGlyph
 00448D59    mov         edx,dword ptr [eax]
 00448D5B    call        dword ptr [edx+24]
 00448D5E    mov         dword ptr [ebp-8],eax
 00448D61    mov         eax,dword ptr [ebp-8]
 00448D64    pop         ecx
 00448D65    pop         ecx
 00448D66    pop         ebp
 00448D67    ret
*}
end;

//00448D68
procedure TSpeedButton.sub_00448D68;
begin
{*
 00448D68    push        ebp
 00448D69    mov         ebp,esp
 00448D6B    add         esp,0FFFFFFF8
 00448D6E    mov         dword ptr [ebp-4],eax
 00448D71    mov         eax,[004468D4];TSpeedButtonActionLink
 00448D76    mov         dword ptr [ebp-8],eax
 00448D79    mov         eax,dword ptr [ebp-8]
 00448D7C    pop         ecx
 00448D7D    pop         ecx
 00448D7E    pop         ebp
 00448D7F    ret
*}
end;

//00448D80
{*function TSpeedButton.GetGlyph:?;
begin
 00448D80    push        ebp
 00448D81    mov         ebp,esp
 00448D83    add         esp,0FFFFFFF8
 00448D86    mov         dword ptr [ebp-4],eax
 00448D89    mov         eax,dword ptr [ebp-4]
 00448D8C    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 00448D92    mov         eax,dword ptr [eax+4]
 00448D95    mov         dword ptr [ebp-8],eax
 00448D98    mov         eax,dword ptr [ebp-8]
 00448D9B    pop         ecx
 00448D9C    pop         ecx
 00448D9D    pop         ebp
 00448D9E    ret
end;*}

//00448DA0
procedure TSpeedButton.SetGlyph(Value:TBitmap);
begin
{*
 00448DA0    push        ebp
 00448DA1    mov         ebp,esp
 00448DA3    add         esp,0FFFFFFF8
 00448DA6    mov         dword ptr [ebp-8],edx
 00448DA9    mov         dword ptr [ebp-4],eax
 00448DAC    mov         edx,dword ptr [ebp-8]
 00448DAF    mov         eax,dword ptr [ebp-4]
 00448DB2    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 00448DB8    call        00447538
 00448DBD    mov         eax,dword ptr [ebp-4]
 00448DC0    mov         edx,dword ptr [eax]
 00448DC2    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 00448DC5    pop         ecx
 00448DC6    pop         ecx
 00448DC7    pop         ebp
 00448DC8    ret
*}
end;

//00448DCC
{*function TSpeedButton.GetNumGlyphs:?;
begin
 00448DCC    push        ebp
 00448DCD    mov         ebp,esp
 00448DCF    add         esp,0FFFFFFF8
 00448DD2    mov         dword ptr [ebp-4],eax
 00448DD5    mov         eax,dword ptr [ebp-4]
 00448DD8    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 00448DDE    mov         al,byte ptr [eax+20]
 00448DE1    mov         byte ptr [ebp-5],al
 00448DE4    mov         al,byte ptr [ebp-5]
 00448DE7    pop         ecx
 00448DE8    pop         ecx
 00448DE9    pop         ebp
 00448DEA    ret
end;*}

//00448DEC
procedure TSpeedButton.SetNumGlyphs(Value:TNumGlyphs);
begin
{*
 00448DEC    push        ebp
 00448DED    mov         ebp,esp
 00448DEF    add         esp,0FFFFFFF8
 00448DF2    mov         byte ptr [ebp-5],dl
 00448DF5    mov         dword ptr [ebp-4],eax
 00448DF8    cmp         byte ptr [ebp-5],0
>00448DFC    jae         00448E04
 00448DFE    mov         byte ptr [ebp-5],1
>00448E02    jmp         00448E0E
 00448E04    cmp         byte ptr [ebp-5],4
>00448E08    jbe         00448E0E
 00448E0A    mov         byte ptr [ebp-5],4
 00448E0E    mov         eax,dword ptr [ebp-4]
 00448E11    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 00448E17    mov         al,byte ptr [eax+20]
 00448E1A    cmp         al,byte ptr [ebp-5]
>00448E1D    je          00448E38
 00448E1F    mov         dl,byte ptr [ebp-5]
 00448E22    mov         eax,dword ptr [ebp-4]
 00448E25    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 00448E2B    call        004475D0
 00448E30    mov         eax,dword ptr [ebp-4]
 00448E33    mov         edx,dword ptr [eax]
 00448E35    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 00448E38    pop         ecx
 00448E39    pop         ecx
 00448E3A    pop         ebp
 00448E3B    ret
*}
end;

//00448E3C
{*procedure sub_00448E3C(?:?; ?:?);
begin
 00448E3C    push        ebp
 00448E3D    mov         ebp,esp
 00448E3F    add         esp,0FFFFFFF8
 00448E42    mov         dword ptr [ebp-8],edx
 00448E45    mov         dword ptr [ebp-4],eax
 00448E48    mov         eax,dword ptr [ebp-4]
 00448E4B    mov         edx,dword ptr [eax]
 00448E4D    call        dword ptr [edx+7C]
 00448E50    pop         ecx
 00448E51    pop         ecx
 00448E52    pop         ebp
 00448E53    ret
end;*}

//00448E54
procedure sub_00448E54(?:TSpeedButton);
begin
{*
 00448E54    push        ebp
 00448E55    mov         ebp,esp
 00448E57    add         esp,0FFFFFFEC
 00448E5A    mov         dword ptr [ebp-4],eax
 00448E5D    mov         eax,dword ptr [ebp-4]
 00448E60    cmp         dword ptr [eax+168],0
>00448E67    je          00448E9E
 00448E69    mov         eax,dword ptr [ebp-4]
 00448E6C    cmp         dword ptr [eax+30],0
>00448E70    je          00448E9E
 00448E72    mov         dword ptr [ebp-14],0B018
 00448E79    mov         eax,dword ptr [ebp-4]
 00448E7C    mov         eax,dword ptr [eax+168]
 00448E82    mov         dword ptr [ebp-10],eax
 00448E85    mov         eax,dword ptr [ebp-4]
 00448E88    mov         dword ptr [ebp-0C],eax
 00448E8B    xor         eax,eax
 00448E8D    mov         dword ptr [ebp-8],eax
 00448E90    lea         edx,[ebp-14]
 00448E93    mov         eax,dword ptr [ebp-4]
 00448E96    mov         eax,dword ptr [eax+30]
 00448E99    call        00487E84
 00448E9E    mov         esp,ebp
 00448EA0    pop         ebp
 00448EA1    ret
*}
end;

//00448EA4
procedure TSpeedButton.SetDown(Value:Boolean);
begin
{*
 00448EA4    push        ebp
 00448EA5    mov         ebp,esp
 00448EA7    add         esp,0FFFFFFF8
 00448EAA    mov         byte ptr [ebp-5],dl
 00448EAD    mov         dword ptr [ebp-4],eax
 00448EB0    mov         eax,dword ptr [ebp-4]
 00448EB3    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>00448EBA    jne         00448EC0
 00448EBC    mov         byte ptr [ebp-5],0
 00448EC0    mov         al,byte ptr [ebp-5]
 00448EC3    mov         edx,dword ptr [ebp-4]
 00448EC6    cmp         al,byte ptr [edx+170];TSpeedButton.Down:Boolean
>00448ECC    je          00448F3B
 00448ECE    mov         eax,dword ptr [ebp-4]
 00448ED1    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>00448ED8    je          00448EE6
 00448EDA    mov         eax,dword ptr [ebp-4]
 00448EDD    cmp         byte ptr [eax+172],0;TSpeedButton.AllowAllUp:Boolean
>00448EE4    je          00448F3B
 00448EE6    mov         al,byte ptr [ebp-5]
 00448EE9    mov         edx,dword ptr [ebp-4]
 00448EEC    mov         byte ptr [edx+170],al;TSpeedButton.Down:Boolean
 00448EF2    cmp         byte ptr [ebp-5],0
>00448EF6    je          00448F18
 00448EF8    mov         eax,dword ptr [ebp-4]
 00448EFB    cmp         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
>00448F02    jne         00448F0C
 00448F04    mov         eax,dword ptr [ebp-4]
 00448F07    mov         edx,dword ptr [eax]
 00448F09    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 00448F0C    mov         eax,dword ptr [ebp-4]
 00448F0F    mov         byte ptr [eax+182],3;TSpeedButton.FState:TButtonState
>00448F16    jmp         00448F2D
 00448F18    mov         eax,dword ptr [ebp-4]
 00448F1B    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 00448F22    mov         eax,dword ptr [ebp-4]
 00448F25    mov         edx,dword ptr [eax]
 00448F27    call        dword ptr [edx+80];TSpeedButton.sub_00484018
 00448F2D    cmp         byte ptr [ebp-5],0
>00448F31    je          00448F3B
 00448F33    mov         eax,dword ptr [ebp-4]
 00448F36    call        00448E54
 00448F3B    pop         ecx
 00448F3C    pop         ecx
 00448F3D    pop         ebp
 00448F3E    ret
*}
end;

//00448F40
procedure TSpeedButton.SetFlat(Value:Boolean);
begin
{*
 00448F40    push        ebp
 00448F41    mov         ebp,esp
 00448F43    add         esp,0FFFFFFF8
 00448F46    mov         byte ptr [ebp-5],dl
 00448F49    mov         dword ptr [ebp-4],eax
 00448F4C    mov         al,byte ptr [ebp-5]
 00448F4F    mov         edx,dword ptr [ebp-4]
 00448F52    cmp         al,byte ptr [edx+180];TSpeedButton.Flat:Boolean
>00448F58    je          00448F6E
 00448F5A    mov         al,byte ptr [ebp-5]
 00448F5D    mov         edx,dword ptr [ebp-4]
 00448F60    mov         byte ptr [edx+180],al;TSpeedButton.Flat:Boolean
 00448F66    mov         eax,dword ptr [ebp-4]
 00448F69    mov         edx,dword ptr [eax]
 00448F6B    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 00448F6E    pop         ecx
 00448F6F    pop         ecx
 00448F70    pop         ebp
 00448F71    ret
*}
end;

//00448F74
procedure TSpeedButton.SetGroupIndex(Value:Integer);
begin
{*
 00448F74    push        ebp
 00448F75    mov         ebp,esp
 00448F77    add         esp,0FFFFFFF8
 00448F7A    mov         dword ptr [ebp-8],edx
 00448F7D    mov         dword ptr [ebp-4],eax
 00448F80    mov         eax,dword ptr [ebp-4]
 00448F83    mov         eax,dword ptr [eax+168];TSpeedButton.GroupIndex:Integer
 00448F89    cmp         eax,dword ptr [ebp-8]
>00448F8C    je          00448FA2
 00448F8E    mov         eax,dword ptr [ebp-8]
 00448F91    mov         edx,dword ptr [ebp-4]
 00448F94    mov         dword ptr [edx+168],eax;TSpeedButton.GroupIndex:Integer
 00448F9A    mov         eax,dword ptr [ebp-4]
 00448F9D    call        00448E54
 00448FA2    pop         ecx
 00448FA3    pop         ecx
 00448FA4    pop         ebp
 00448FA5    ret
*}
end;

//00448FA8
procedure TSpeedButton.SetLayout(Value:TButtonLayout);
begin
{*
 00448FA8    push        ebp
 00448FA9    mov         ebp,esp
 00448FAB    add         esp,0FFFFFFF8
 00448FAE    mov         byte ptr [ebp-5],dl
 00448FB1    mov         dword ptr [ebp-4],eax
 00448FB4    mov         eax,dword ptr [ebp-4]
 00448FB7    mov         al,byte ptr [eax+173];TSpeedButton.Layout:TButtonLayout
 00448FBD    cmp         al,byte ptr [ebp-5]
>00448FC0    je          00448FD6
 00448FC2    mov         al,byte ptr [ebp-5]
 00448FC5    mov         edx,dword ptr [ebp-4]
 00448FC8    mov         byte ptr [edx+173],al;TSpeedButton.Layout:TButtonLayout
 00448FCE    mov         eax,dword ptr [ebp-4]
 00448FD1    mov         edx,dword ptr [eax]
 00448FD3    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 00448FD6    pop         ecx
 00448FD7    pop         ecx
 00448FD8    pop         ebp
 00448FD9    ret
*}
end;

//00448FDC
procedure TSpeedButton.SetMargin(Value:Integer);
begin
{*
 00448FDC    push        ebp
 00448FDD    mov         ebp,esp
 00448FDF    add         esp,0FFFFFFF8
 00448FE2    mov         dword ptr [ebp-8],edx
 00448FE5    mov         dword ptr [ebp-4],eax
 00448FE8    mov         eax,dword ptr [ebp-8]
 00448FEB    mov         edx,dword ptr [ebp-4]
 00448FEE    cmp         eax,dword ptr [edx+17C];TSpeedButton.Margin:Integer
>00448FF4    je          00449010
 00448FF6    cmp         dword ptr [ebp-8],0FFFFFFFF
>00448FFA    jl          00449010
 00448FFC    mov         eax,dword ptr [ebp-8]
 00448FFF    mov         edx,dword ptr [ebp-4]
 00449002    mov         dword ptr [edx+17C],eax;TSpeedButton.Margin:Integer
 00449008    mov         eax,dword ptr [ebp-4]
 0044900B    mov         edx,dword ptr [eax]
 0044900D    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 00449010    pop         ecx
 00449011    pop         ecx
 00449012    pop         ebp
 00449013    ret
*}
end;

//00449014
procedure TSpeedButton.SetSpacing(Value:Integer);
begin
{*
 00449014    push        ebp
 00449015    mov         ebp,esp
 00449017    add         esp,0FFFFFFF8
 0044901A    mov         dword ptr [ebp-8],edx
 0044901D    mov         dword ptr [ebp-4],eax
 00449020    mov         eax,dword ptr [ebp-8]
 00449023    mov         edx,dword ptr [ebp-4]
 00449026    cmp         eax,dword ptr [edx+174];TSpeedButton.Spacing:Integer
>0044902C    je          00449042
 0044902E    mov         eax,dword ptr [ebp-8]
 00449031    mov         edx,dword ptr [ebp-4]
 00449034    mov         dword ptr [edx+174],eax;TSpeedButton.Spacing:Integer
 0044903A    mov         eax,dword ptr [ebp-4]
 0044903D    mov         edx,dword ptr [eax]
 0044903F    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 00449042    pop         ecx
 00449043    pop         ecx
 00449044    pop         ebp
 00449045    ret
*}
end;

//00449048
procedure TSpeedButton.SetTransparent(Value:Boolean);
begin
{*
 00449048    push        ebp
 00449049    mov         ebp,esp
 0044904B    add         esp,0FFFFFFF8
 0044904E    mov         byte ptr [ebp-5],dl
 00449051    mov         dword ptr [ebp-4],eax
 00449054    mov         al,byte ptr [ebp-5]
 00449057    mov         edx,dword ptr [ebp-4]
 0044905A    cmp         al,byte ptr [edx+178];TSpeedButton.Transparent:Boolean
>00449060    je          004490A2
 00449062    mov         al,byte ptr [ebp-5]
 00449065    mov         edx,dword ptr [ebp-4]
 00449068    mov         byte ptr [edx+178],al;TSpeedButton.Transparent:Boolean
 0044906E    cmp         byte ptr [ebp-5],0
>00449072    je          00449089
 00449074    mov         eax,[004490A8];0x40 gvar_004490A8
 00449079    mov         edx,dword ptr [ebp-4]
 0044907C    not         eax
 0044907E    and         eax,dword ptr [edx+50];TSpeedButton.FControlStyle:TControlStyle
 00449081    mov         edx,dword ptr [ebp-4]
 00449084    mov         dword ptr [edx+50],eax;TSpeedButton.FControlStyle:TControlStyle
>00449087    jmp         0044909A
 00449089    mov         eax,[004490A8];0x40 gvar_004490A8
 0044908E    mov         edx,dword ptr [ebp-4]
 00449091    or          eax,dword ptr [edx+50];TSpeedButton.FControlStyle:TControlStyle
 00449094    mov         edx,dword ptr [ebp-4]
 00449097    mov         dword ptr [edx+50],eax;TSpeedButton.FControlStyle:TControlStyle
 0044909A    mov         eax,dword ptr [ebp-4]
 0044909D    mov         edx,dword ptr [eax]
 0044909F    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 004490A2    pop         ecx
 004490A3    pop         ecx
 004490A4    pop         ebp
 004490A5    ret
*}
end;

//004490AC
procedure TSpeedButton.SetAllowAllUp(Value:Boolean);
begin
{*
 004490AC    push        ebp
 004490AD    mov         ebp,esp
 004490AF    add         esp,0FFFFFFF8
 004490B2    mov         byte ptr [ebp-5],dl
 004490B5    mov         dword ptr [ebp-4],eax
 004490B8    mov         eax,dword ptr [ebp-4]
 004490BB    mov         al,byte ptr [eax+172];TSpeedButton.AllowAllUp:Boolean
 004490C1    cmp         al,byte ptr [ebp-5]
>004490C4    je          004490DA
 004490C6    mov         al,byte ptr [ebp-5]
 004490C9    mov         edx,dword ptr [ebp-4]
 004490CC    mov         byte ptr [edx+172],al;TSpeedButton.AllowAllUp:Boolean
 004490D2    mov         eax,dword ptr [ebp-4]
 004490D5    call        00448E54
 004490DA    pop         ecx
 004490DB    pop         ecx
 004490DC    pop         ebp
 004490DD    ret
*}
end;

//004490E0
{*procedure TSpeedButton.WMLButtonDblClk(?:?);
begin
 004490E0    push        ebp
 004490E1    mov         ebp,esp
 004490E3    add         esp,0FFFFFFF8
 004490E6    push        esi
 004490E7    mov         dword ptr [ebp-8],edx
 004490EA    mov         dword ptr [ebp-4],eax
 004490ED    mov         edx,dword ptr [ebp-8]
 004490F0    mov         eax,dword ptr [ebp-4]
 004490F3    call        TControl.WMLButtonDblClk
 004490F8    mov         eax,dword ptr [ebp-4]
 004490FB    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>00449102    je          00449110
 00449104    mov         eax,dword ptr [ebp-4]
 00449107    mov         si,0FFE9
 0044910B    call        @CallDynaInst;TControl.sub_0048555C
 00449110    pop         esi
 00449111    pop         ecx
 00449112    pop         ecx
 00449113    pop         ebp
 00449114    ret
end;*}

//00449118
{*procedure TSpeedButton.CMEnabledChanged(?:?);
begin
 00449118    push        ebp
 00449119    mov         ebp,esp
 0044911B    add         esp,0FFFFFFF8
 0044911E    mov         dword ptr [ebp-8],edx
 00449121    mov         dword ptr [ebp-4],eax
 00449124    mov         eax,dword ptr [ebp-4]
 00449127    mov         edx,dword ptr [eax]
 00449129    call        dword ptr [edx+50];TImage.GetEnabled
 0044912C    and         eax,7F
 0044912F    mov         dl,byte ptr [eax+56C390]
 00449135    mov         eax,dword ptr [ebp-4]
 00449138    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0044913E    call        00447610
 00449143    mov         eax,dword ptr [ebp-4]
 00449146    call        00448A30
 0044914B    mov         eax,dword ptr [ebp-4]
 0044914E    mov         edx,dword ptr [eax]
 00449150    call        dword ptr [edx+80];TSpeedButton.sub_00484018
 00449156    pop         ecx
 00449157    pop         ecx
 00449158    pop         ebp
 00449159    ret
end;*}

//0044915C
{*procedure TSpeedButton.CMButtonPressed(?:?);
begin
 0044915C    push        ebp
 0044915D    mov         ebp,esp
 0044915F    add         esp,0FFFFFFF4
 00449162    mov         dword ptr [ebp-8],edx
 00449165    mov         dword ptr [ebp-4],eax
 00449168    mov         eax,dword ptr [ebp-8]
 0044916B    mov         eax,dword ptr [eax+4]
 0044916E    mov         edx,dword ptr [ebp-4]
 00449171    cmp         eax,dword ptr [edx+168];TSpeedButton.GroupIndex:Integer
>00449177    jne         004491F6
 00449179    mov         eax,dword ptr [ebp-8]
 0044917C    mov         eax,dword ptr [eax+8]
 0044917F    mov         dword ptr [ebp-0C],eax
 00449182    mov         eax,dword ptr [ebp-0C]
 00449185    cmp         eax,dword ptr [ebp-4]
>00449188    je          004491F6
 0044918A    mov         eax,dword ptr [ebp-0C]
 0044918D    cmp         byte ptr [eax+170],0
>00449194    je          004491E4
 00449196    mov         eax,dword ptr [ebp-4]
 00449199    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>004491A0    je          004491E4
 004491A2    mov         eax,dword ptr [ebp-4]
 004491A5    mov         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
 004491AC    mov         eax,dword ptr [ebp-4]
 004491AF    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 004491B6    mov         eax,dword ptr [ebp-4]
 004491B9    mov         edx,dword ptr [eax]
 004491BB    call        dword ptr [edx+3C];TSpeedButton.GetAction
 004491BE    mov         edx,dword ptr ds:[492C28];TCustomAction
 004491C4    call        @IsClass
 004491C9    test        al,al
>004491CB    je          004491DC
 004491CD    mov         eax,dword ptr [ebp-4]
 004491D0    mov         edx,dword ptr [eax]
 004491D2    call        dword ptr [edx+3C];TSpeedButton.GetAction
 004491D5    xor         edx,edx
 004491D7    call        TAction.SetChecked
 004491DC    mov         eax,dword ptr [ebp-4]
 004491DF    mov         edx,dword ptr [eax]
 004491E1    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 004491E4    mov         eax,dword ptr [ebp-0C]
 004491E7    mov         al,byte ptr [eax+172]
 004491ED    mov         edx,dword ptr [ebp-4]
 004491F0    mov         byte ptr [edx+172],al;TSpeedButton.AllowAllUp:Boolean
 004491F6    mov         esp,ebp
 004491F8    pop         ebp
 004491F9    ret
end;*}

//004491FC
{*procedure TSpeedButton.CMDialogChar(?:?);
begin
 004491FC    push        ebp
 004491FD    mov         ebp,esp
 004491FF    add         esp,0FFFFFFF4
 00449202    push        esi
 00449203    xor         ecx,ecx
 00449205    mov         dword ptr [ebp-0C],ecx
 00449208    mov         dword ptr [ebp-8],edx
 0044920B    mov         dword ptr [ebp-4],eax
 0044920E    xor         eax,eax
 00449210    push        ebp
 00449211    push        4492A0
 00449216    push        dword ptr fs:[eax]
 00449219    mov         dword ptr fs:[eax],esp
 0044921C    lea         edx,[ebp-0C]
 0044921F    mov         eax,dword ptr [ebp-4]
 00449222    call        TPanel.GetCaption
 00449227    mov         edx,dword ptr [ebp-0C]
 0044922A    mov         eax,dword ptr [ebp-8]
 0044922D    mov         ax,word ptr [eax+4]
 00449231    call        004A06C8
 00449236    test        al,al
>00449238    je          0044927F
 0044923A    mov         eax,dword ptr [ebp-4]
 0044923D    mov         edx,dword ptr [eax]
 0044923F    call        dword ptr [edx+50];TImage.GetEnabled
 00449242    test        al,al
>00449244    je          0044927F
 00449246    mov         eax,dword ptr [ebp-4]
 00449249    cmp         byte ptr [eax+57],0;TSpeedButton.FVisible:Boolean
>0044924D    je          0044927F
 0044924F    mov         eax,dword ptr [ebp-4]
 00449252    cmp         dword ptr [eax+30],0;TSpeedButton.FParent:TWinControl
>00449256    je          0044927F
 00449258    mov         eax,dword ptr [ebp-4]
 0044925B    mov         eax,dword ptr [eax+30];TSpeedButton.FParent:TWinControl
 0044925E    cmp         byte ptr [eax+1A6],0;TWinControl.FShowing:Boolean
>00449265    je          0044927F
 00449267    mov         eax,dword ptr [ebp-4]
 0044926A    mov         si,0FFEB
 0044926E    call        @CallDynaInst;TSpeedButton.sub_00448D34
 00449273    mov         eax,dword ptr [ebp-8]
 00449276    mov         dword ptr [eax+0C],1
>0044927D    jmp         0044928A
 0044927F    mov         edx,dword ptr [ebp-8]
 00449282    mov         eax,dword ptr [ebp-4]
 00449285    mov         ecx,dword ptr [eax]
 00449287    call        dword ptr [ecx-10];TSpeedButton.DefaultHandler
 0044928A    xor         eax,eax
 0044928C    pop         edx
 0044928D    pop         ecx
 0044928E    pop         ecx
 0044928F    mov         dword ptr fs:[eax],edx
 00449292    push        4492A7
 00449297    lea         eax,[ebp-0C]
 0044929A    call        @LStrClr
 0044929F    ret
>004492A0    jmp         @HandleFinally
>004492A5    jmp         00449297
 004492A7    pop         esi
 004492A8    mov         esp,ebp
 004492AA    pop         ebp
 004492AB    ret
end;*}

//004492AC
{*procedure TSpeedButton.CMFontChanged(?:?);
begin
 004492AC    push        ebp
 004492AD    mov         ebp,esp
 004492AF    add         esp,0FFFFFFF8
 004492B2    mov         dword ptr [ebp-8],edx
 004492B5    mov         dword ptr [ebp-4],eax
 004492B8    mov         eax,dword ptr [ebp-4]
 004492BB    mov         edx,dword ptr [eax]
 004492BD    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 004492C0    pop         ecx
 004492C1    pop         ecx
 004492C2    pop         ebp
 004492C3    ret
end;*}

//004492C4
{*procedure TSpeedButton.CMTextChanged(?:?);
begin
 004492C4    push        ebp
 004492C5    mov         ebp,esp
 004492C7    add         esp,0FFFFFFF8
 004492CA    mov         dword ptr [ebp-8],edx
 004492CD    mov         dword ptr [ebp-4],eax
 004492D0    mov         eax,dword ptr [ebp-4]
 004492D3    mov         edx,dword ptr [eax]
 004492D5    call        dword ptr [edx+7C];TSpeedButton.sub_00483F08
 004492D8    pop         ecx
 004492D9    pop         ecx
 004492DA    pop         ebp
 004492DB    ret
end;*}

//004492DC
{*procedure TSpeedButton.CMSysColorChange(?:?);
begin
 004492DC    push        ebp
 004492DD    mov         ebp,esp
 004492DF    add         esp,0FFFFFFF4
 004492E2    mov         dword ptr [ebp-0C],edx
 004492E5    mov         dword ptr [ebp-4],eax
 004492E8    mov         eax,dword ptr [ebp-4]
 004492EB    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 004492F1    mov         dword ptr [ebp-8],eax
 004492F4    mov         eax,dword ptr [ebp-8]
 004492F7    call        00447484
 004492FC    mov         eax,dword ptr [ebp-4]
 004492FF    mov         dl,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 00449305    mov         eax,dword ptr [ebp-8]
 00449308    call        00447610
 0044930D    mov         esp,ebp
 0044930F    pop         ebp
 00449310    ret
end;*}

//00449314
{*procedure TSpeedButton.CMMouseEnter(?:?);
begin
 00449314    push        ebp
 00449315    mov         ebp,esp
 00449317    add         esp,0FFFFFFF4
 0044931A    mov         dword ptr [ebp-8],edx
 0044931D    mov         dword ptr [ebp-4],eax
 00449320    mov         edx,dword ptr [ebp-8]
 00449323    mov         eax,dword ptr [ebp-4]
 00449326    call        TControl.CMMouseEnter
 0044932B    mov         eax,dword ptr [ebp-4]
 0044932E    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>00449335    je          00449361
 00449337    mov         eax,dword ptr [ebp-4]
 0044933A    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>00449341    jne         00449361
 00449343    mov         eax,dword ptr [ebp-4]
 00449346    mov         edx,dword ptr [eax]
 00449348    call        dword ptr [edx+50];TImage.GetEnabled
 0044934B    test        al,al
>0044934D    je          00449361
 0044934F    mov         eax,dword ptr [ebp-4]
 00449352    cmp         byte ptr [eax+5D],1;TSpeedButton.FDragMode:TDragMode
>00449356    je          00449361
 00449358    call        user32.GetCapture
 0044935D    test        eax,eax
>0044935F    je          00449365
 00449361    xor         eax,eax
>00449363    jmp         00449367
 00449365    mov         al,1
 00449367    mov         byte ptr [ebp-9],al
 0044936A    cmp         byte ptr [ebp-9],0
>0044936E    jne         0044937E
 00449370    call        0046BFC0
 00449375    call        0046C0EC
 0044937A    test        al,al
>0044937C    je          004493A8
 0044937E    mov         eax,dword ptr [ebp-4]
 00449381    test        byte ptr [eax+1C],10;TSpeedButton.FComponentState:TComponentState
>00449385    jne         004493A8
 00449387    mov         eax,dword ptr [ebp-4]
 0044938A    mov         byte ptr [eax+181],1;TSpeedButton.FMouseInControl:Boolean
 00449391    mov         eax,dword ptr [ebp-4]
 00449394    mov         edx,dword ptr [eax]
 00449396    call        dword ptr [edx+50];TImage.GetEnabled
 00449399    test        al,al
>0044939B    je          004493A8
 0044939D    mov         eax,dword ptr [ebp-4]
 004493A0    mov         edx,dword ptr [eax]
 004493A2    call        dword ptr [edx+80];TSpeedButton.sub_00484018
 004493A8    mov         esp,ebp
 004493AA    pop         ebp
 004493AB    ret
end;*}

//004493AC
{*procedure TSpeedButton.CMMouseLeave(?:?);
begin
 004493AC    push        ebp
 004493AD    mov         ebp,esp
 004493AF    add         esp,0FFFFFFF4
 004493B2    mov         dword ptr [ebp-8],edx
 004493B5    mov         dword ptr [ebp-4],eax
 004493B8    mov         edx,dword ptr [ebp-8]
 004493BB    mov         eax,dword ptr [ebp-4]
 004493BE    call        TControl.CMMouseLeave
 004493C3    mov         eax,dword ptr [ebp-4]
 004493C6    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>004493CD    je          004493F3
 004493CF    mov         eax,dword ptr [ebp-4]
 004493D2    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>004493D9    je          004493F3
 004493DB    mov         eax,dword ptr [ebp-4]
 004493DE    mov         edx,dword ptr [eax]
 004493E0    call        dword ptr [edx+50];TImage.GetEnabled
 004493E3    test        al,al
>004493E5    je          004493F3
 004493E7    mov         eax,dword ptr [ebp-4]
 004493EA    cmp         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>004493F1    je          004493F7
 004493F3    xor         eax,eax
>004493F5    jmp         004493F9
 004493F7    mov         al,1
 004493F9    mov         byte ptr [ebp-9],al
 004493FC    cmp         byte ptr [ebp-9],0
>00449400    jne         00449410
 00449402    call        0046BFC0
 00449407    call        0046C0EC
 0044940C    test        al,al
>0044940E    je          00449431
 00449410    mov         eax,dword ptr [ebp-4]
 00449413    mov         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
 0044941A    mov         eax,dword ptr [ebp-4]
 0044941D    mov         edx,dword ptr [eax]
 0044941F    call        dword ptr [edx+50];TImage.GetEnabled
 00449422    test        al,al
>00449424    je          00449431
 00449426    mov         eax,dword ptr [ebp-4]
 00449429    mov         edx,dword ptr [eax]
 0044942B    call        dword ptr [edx+80];TSpeedButton.sub_00484018
 00449431    mov         esp,ebp
 00449433    pop         ebp
 00449434    ret
end;*}

//00449438
{*procedure sub_00449438(?:?; ?:?; ?:?);
begin
 00449438    push        ebp
 00449439    mov         ebp,esp
 0044943B    add         esp,0FFFFFFE4
 0044943E    mov         dword ptr [ebp-8],edx
 00449441    mov         dword ptr [ebp-4],eax
 00449444    mov         eax,dword ptr [ebp+8]
 00449447    mov         eax,dword ptr [eax-4]
 0044944A    call        TSpeedButton.GetGlyph
 0044944F    mov         dword ptr [ebp-0C],eax
 00449452    mov         eax,dword ptr [ebp-4]
 00449455    mov         edx,dword ptr [eax+34]
 00449458    mov         eax,dword ptr [ebp-0C]
 0044945B    mov         ecx,dword ptr [eax]
 0044945D    call        dword ptr [ecx+40]
 00449460    mov         eax,dword ptr [ebp-4]
 00449463    mov         edx,dword ptr [eax+30]
 00449466    mov         eax,dword ptr [ebp-0C]
 00449469    mov         ecx,dword ptr [eax]
 0044946B    call        dword ptr [ecx+34]
 0044946E    mov         eax,dword ptr [ebp-0C]
 00449471    call        0043498C
 00449476    mov         eax,dword ptr [eax+14]
 00449479    mov         edx,0FF00FF
 0044947E    call        TBrush.SetColor
 00449483    mov         eax,dword ptr [ebp-0C]
 00449486    mov         edx,dword ptr [eax]
 00449488    call        dword ptr [edx+20]
 0044948B    push        eax
 0044948C    lea         eax,[ebp-1C]
 0044948F    push        eax
 00449490    mov         eax,dword ptr [ebp-0C]
 00449493    mov         edx,dword ptr [eax]
 00449495    call        dword ptr [edx+2C]
 00449498    mov         ecx,eax
 0044949A    xor         edx,edx
 0044949C    xor         eax,eax
 0044949E    call        0041E714
 004494A3    lea         eax,[ebp-1C]
 004494A6    push        eax
 004494A7    mov         eax,dword ptr [ebp-0C]
 004494AA    call        0043498C
 004494AF    pop         edx
 004494B0    call        0042F030
 004494B5    push        0
 004494B7    mov         eax,dword ptr [ebp-8]
 004494BA    push        eax
 004494BB    push        1
 004494BD    mov         eax,dword ptr [ebp-0C]
 004494C0    call        0043498C
 004494C5    mov         edx,eax
 004494C7    xor         ecx,ecx
 004494C9    mov         eax,dword ptr [ebp-4]
 004494CC    call        00495958
 004494D1    mov         esp,ebp
 004494D3    pop         ebp
 004494D4    ret
end;*}

//004494D8
{*procedure TSpeedButton.sub_004494D8(?:?; ?:?);
begin
 004494D8    push        ebp
 004494D9    mov         ebp,esp
 004494DB    add         esp,0FFFFFFF4
 004494DE    mov         byte ptr [ebp-9],cl
 004494E1    mov         dword ptr [ebp-8],edx
 004494E4    mov         dword ptr [ebp-4],eax
 004494E7    mov         cl,byte ptr [ebp-9]
 004494EA    mov         edx,dword ptr [ebp-8]
 004494ED    mov         eax,dword ptr [ebp-4]
 004494F0    call        TControl.sub_00486204
 004494F5    mov         eax,dword ptr [ebp-8]
 004494F8    mov         edx,dword ptr ds:[492C28];TCustomAction
 004494FE    call        @IsClass
 00449503    test        al,al
>00449505    je          0044958F
 0044950B    cmp         byte ptr [ebp-9],0
>0044950F    jne         0044951D
 00449511    mov         eax,dword ptr [ebp-4]
 00449514    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0044951B    jne         0044952B
 0044951D    mov         eax,dword ptr [ebp-8]
 00449520    mov         edx,dword ptr [eax+6C]
 00449523    mov         eax,dword ptr [ebp-4]
 00449526    call        TSpeedButton.SetGroupIndex
 0044952B    mov         eax,dword ptr [ebp-4]
 0044952E    call        TSpeedButton.GetGlyph
 00449533    mov         edx,dword ptr [eax]
 00449535    call        dword ptr [edx+1C]
 00449538    test        al,al
>0044953A    je          0044958F
 0044953C    mov         eax,dword ptr [ebp-8]
 0044953F    cmp         dword ptr [eax+5C],0
>00449543    je          0044958F
 00449545    mov         eax,dword ptr [ebp-8]
 00449548    mov         eax,dword ptr [eax+5C]
 0044954B    cmp         dword ptr [eax+38],0
>0044954F    je          0044958F
 00449551    mov         eax,dword ptr [ebp-8]
 00449554    cmp         dword ptr [eax+80],0
>0044955B    jl          0044958F
 0044955D    mov         eax,dword ptr [ebp-8]
 00449560    mov         eax,dword ptr [eax+5C]
 00449563    mov         eax,dword ptr [eax+38]
 00449566    call        00495384
 0044956B    mov         edx,dword ptr [ebp-8]
 0044956E    cmp         eax,dword ptr [edx+80]
>00449574    jle         0044958F
 00449576    push        ebp
 00449577    mov         eax,dword ptr [ebp-8]
 0044957A    mov         edx,dword ptr [eax+80]
 00449580    mov         eax,dword ptr [ebp-8]
 00449583    mov         eax,dword ptr [eax+5C]
 00449586    mov         eax,dword ptr [eax+38]
 00449589    call        00449438
 0044958E    pop         ecx
 0044958F    mov         esp,ebp
 00449591    pop         ebp
 00449592    ret
end;*}

//00449594
procedure sub_00449594;
begin
{*
 00449594    push        ebp
 00449595    mov         ebp,esp
 00449597    push        ecx
 00449598    mov         byte ptr [ebp-1],0
 0044959C    xor         eax,eax
 0044959E    mov         al,byte ptr [ebp-1]
 004495A1    mov         eax,dword ptr [eax*4+571CF0];BitBtnGlyphs:array[TBitBtnKind] of Graphics.TBitmap
 004495A8    call        TObject.Free
 004495AD    inc         byte ptr [ebp-1]
 004495B0    cmp         byte ptr [ebp-1],0B
>004495B4    jne         0044959C
 004495B6    pop         ecx
 004495B7    pop         ebp
 004495B8    ret
*}
end;

//004495BC
procedure _NF__383;
begin
{*
 004495BC    or          al,byte ptr [eax]
 004495BE    add         byte ptr [eax],al
>004495C0    je          00449585
 004495C2    push        esi
 004495C3    add         byte ptr [edx],dh
 004495C6    push        esi
 004495C7    add         byte ptr [eax],al
 004495C9    add         byte ptr [eax],al
 004495CB    add         byte ptr [eax-3D],dh
 004495CE    push        esi
 004495CF    add         byte ptr [eax+56],al
 004495D6    add         byte ptr [eax],al
 004495D8    ins         byte ptr [edi],dl
 004495D9    ret
*}
end;

Initialization
//00449670
{*
 00449670    sub         dword ptr ds:[571CEC],1
>00449677    jae         00449694
 00449679    mov         eax,4495BC;_NF__383
 0044967E    call        @InitImports
 00449683    mov         eax,571CF0;BitBtnGlyphs:array[TBitBtnKind] of Graphics.TBitmap
 00449688    xor         ecx,ecx
 0044968A    mov         edx,2C
 0044968F    call        @FillChar
 00449694    ret
*}
Finalization
end.