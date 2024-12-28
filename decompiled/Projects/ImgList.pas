//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ImgList;

interface

uses
  SysUtils, Classes, ImgList, ComCtrls, Graphics;

type
  TChangeLink = class(TObject)
  public
    FSender:TCustomImageList;//f4
    FOnChange:TNotifyEvent;//f8
    fA:word;//fA
    fC:TCustomListView;//fC
    procedure sub_004968A4; dynamic;//004968A4
  end;
  TDrawingStyle = (dsFocus, dsSelected, dsNormal, dsTransparent);
  TImageType = (itImage, itMask);
  TCustomImageList = class(TComponent)
  public
    FHeight:Integer;//f30
    FWidth:Integer;//f34
    FAllocBy:Integer;//f38
    FHandle:HIMAGELIST;//f3C
    FDrawingStyle:TDrawingStyle;//f40
    FMasked:Boolean;//f41
    FShareImages:Boolean;//f42
    FImageType:TImageType;//f43
    FBkColor:TColor;//f44
    FBlendColor:TColor;//f48
    FClients:TList;//f4C
    FBitmap:TBitmap;//f50
    FMonoBitmap:TBitmap;//f54
    FChanged:Boolean;//f58
    FUpdateCount:Integer;//f5C
    FOnChange:TNotifyEvent;//f60
    f62:word;//f62
    f64:dword;//f64
    destructor Destroy; virtual;//00494B70
    //procedure v0(?:?); virtual;//v0//00495CDC
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00496164
    //procedure v8(?:?); virtual;//v8//00495BDC
    constructor Create; virtual;//v2C//00494AA8
    //procedure v30(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v30//00495728
    procedure v34; virtual;//v34//00494C00
    //procedure v38(?:?); virtual;//v38//00496634
    //procedure v3C(?:?); virtual;//v3C//004966C8
    //procedure v40(?:?); virtual;//v40//00495E84
    procedure sub_00495EA0; dynamic;//00495EA0
  end;
    //function sub_00494A30(?:TColor):?;//00494A30
    //function sub_00494A6C(?:TColorRef):?;//00494A6C
    constructor Create;//00494AA8
    //constructor Create(?:?);//00494B0C
    destructor Destroy;//00494B70
    procedure sub_00494C00;//00494C00
    //function sub_00494CE0(?:TCustomImageList):?;//00494CE0
    procedure sub_00494CFC(?:TCustomImageList);//00494CFC
    procedure sub_00494D18(?:TCustomImageList);//00494D18
    //procedure sub_00494DE8(?:TCustomImageList; ?:?);//00494DE8
    procedure SetWidth(Value:Integer);//00494E38
    procedure SetHeight(Value:Integer);//00494EA0
    procedure sub_00494F08(?:TDragImageList; ?:THandle);//00494F08
    //function sub_00494F48(?:?; ?:?):?;//00494F48
    //function sub_00494F78(?:TCustomImageList):?;//00494F78
    //function sub_00494F9C(?:?; ?:?; ?:TBitmap):?;//00494F9C
    procedure sub_0049500C(?:TCustomImageList);//0049500C
    //procedure sub_00495050(?:?);//00495050
    //function sub_00495110(?:?; ?:TBitmap; ?:TBitmap):?;//00495110
    //function sub_004951E0(?:?; ?:?; ?:?):?;//004951E0
    //function sub_00495300(?:?; ?:TImageIndex; ?:TBitmap):?;//00495300
    //function sub_00495384(?:TImageList):?;//00495384
    //procedure sub_004953B8(?:?; ?:?; ?:?; ?:?);//004953B8
    //procedure sub_004955E8(?:TImageList; ?:?);//004955E8
    procedure sub_00495684(?:TCustomImageList; ?:TCustomImageList);//00495684
    procedure SetBkColor(Value:TColor);//0049569C
    //function GetBkColor:?;//004956E8
    //procedure sub_00495728(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00495728
    //procedure sub_00495958(?:TImageList; ?:?; ?:?; ?:?; ?:?; ?:?);//00495958
    //procedure sub_00495998(?:?; ?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00495998
    //procedure sub_004959F0(?:?; ?:?; ?:?);//004959F0
    procedure sub_00495BB0(?:TCustomImageList; ?:TCustomImageList);//00495BB0
    //procedure sub_00495BDC(?:?);//00495BDC
    //procedure sub_00495CDC(?:?);//00495CDC
    //procedure sub_00495DC8(?:?; ?:?);//00495DC8
    procedure SetDrawingStyle(Value:TDrawingStyle);//00495E50
    //procedure sub_00495E84(?:?);//00495E84
    procedure sub_00495EA0;//00495EA0
    procedure sub_00495F18(?:TCustomImageList; ?:TChangeLink);//00495F18
    procedure sub_00495F80(?:TCustomImageList; ?:TChangeLink);//00495F80
    //function sub_00495FB0(?:TMemoryStream; ?:TMemoryStream):?;//00495FB0
    //function sub_00496008(?:?; ?:?):?;//00496008
    //function sub_00496100(?:?):?;//00496100
    procedure DefineProperties(Filer:TFiler);//00496164
    //procedure sub_004961BC(?:TCustomImageList; ?:?);//004961BC
    //procedure sub_00496468(?:TCustomImageList; ?:?);//00496468
    //procedure sub_00496634(?:?);//00496634
    //procedure sub_004966C8(?:?);//004966C8
    //procedure sub_00496814(?:?);//00496814
    //procedure sub_00496824(?:?);//00496824
    procedure sub_004968A4;//004968A4

implementation

//00494A30
{*function sub_00494A30(?:TColor):?;
begin
 00494A30    push        ebp
 00494A31    mov         ebp,esp
 00494A33    add         esp,0FFFFFFF8
 00494A36    mov         dword ptr [ebp-4],eax
 00494A39    mov         eax,dword ptr [ebp-4]
 00494A3C    call        ColorToRGB
 00494A41    mov         dword ptr [ebp-8],eax
 00494A44    mov         eax,dword ptr [ebp-8]
 00494A47    sub         eax,1FFFFFFF
>00494A4C    je          00494A53
 00494A4E    dec         eax
>00494A4F    je          00494A5C
>00494A51    jmp         00494A63
 00494A53    mov         dword ptr [ebp-8],0FFFFFFFF
>00494A5A    jmp         00494A63
 00494A5C    mov         dword ptr [ebp-8],0FF000000
 00494A63    mov         eax,dword ptr [ebp-8]
 00494A66    pop         ecx
 00494A67    pop         ecx
 00494A68    pop         ebp
 00494A69    ret
end;*}

//00494A6C
{*function sub_00494A6C(?:TColorRef):?;
begin
 00494A6C    push        ebp
 00494A6D    mov         ebp,esp
 00494A6F    add         esp,0FFFFFFF8
 00494A72    mov         dword ptr [ebp-4],eax
 00494A75    mov         eax,dword ptr [ebp-4]
 00494A78    sub         eax,0FF000000
>00494A7D    je          00494A8F
 00494A7F    sub         eax,0FFFFFF
>00494A84    jne         00494A98
 00494A86    mov         dword ptr [ebp-8],1FFFFFFF
>00494A8D    jmp         00494A9E
 00494A8F    mov         dword ptr [ebp-8],20000000
>00494A96    jmp         00494A9E
 00494A98    mov         eax,dword ptr [ebp-4]
 00494A9B    mov         dword ptr [ebp-8],eax
 00494A9E    mov         eax,dword ptr [ebp-8]
 00494AA1    pop         ecx
 00494AA2    pop         ecx
 00494AA3    pop         ebp
 00494AA4    ret
end;*}

//00494AA8
constructor TImageList.Create;
begin
{*
 00494AA8    push        ebp
 00494AA9    mov         ebp,esp
 00494AAB    add         esp,0FFFFFFF4
 00494AAE    test        dl,dl
>00494AB0    je          00494ABA
 00494AB2    add         esp,0FFFFFFF0
 00494AB5    call        @ClassCreate
 00494ABA    mov         dword ptr [ebp-0C],ecx
 00494ABD    mov         byte ptr [ebp-5],dl
 00494AC0    mov         dword ptr [ebp-4],eax
 00494AC3    mov         ecx,dword ptr [ebp-0C]
 00494AC6    xor         edx,edx
 00494AC8    mov         eax,dword ptr [ebp-4]
 00494ACB    call        0042A1B0
 00494AD0    mov         eax,dword ptr [ebp-4]
 00494AD3    mov         dword ptr [eax+34],10;TCustomImageList.FWidth:Integer
 00494ADA    mov         eax,dword ptr [ebp-4]
 00494ADD    mov         dword ptr [eax+30],10;TCustomImageList.FHeight:Integer
 00494AE4    mov         eax,dword ptr [ebp-4]
 00494AE7    mov         edx,dword ptr [eax]
 00494AE9    call        dword ptr [edx+34];TCustomImageList.sub_00494C00
 00494AEC    mov         eax,dword ptr [ebp-4]
 00494AEF    cmp         byte ptr [ebp-5],0
>00494AF3    je          00494B04
 00494AF5    call        @AfterConstruction
 00494AFA    pop         dword ptr fs:[0]
 00494B01    add         esp,0C
 00494B04    mov         eax,dword ptr [ebp-4]
 00494B07    mov         esp,ebp
 00494B09    pop         ebp
 00494B0A    ret
*}
end;

//00494B0C
{*constructor TDragImageList.Create(?:?);
begin
 00494B0C    push        ebp
 00494B0D    mov         ebp,esp
 00494B0F    add         esp,0FFFFFFF4
 00494B12    test        dl,dl
>00494B14    je          00494B1E
 00494B16    add         esp,0FFFFFFF0
 00494B19    call        @ClassCreate
 00494B1E    mov         dword ptr [ebp-0C],ecx
 00494B21    mov         byte ptr [ebp-5],dl
 00494B24    mov         dword ptr [ebp-4],eax
 00494B27    xor         ecx,ecx
 00494B29    xor         edx,edx
 00494B2B    mov         eax,dword ptr [ebp-4]
 00494B2E    call        0042A1B0
 00494B33    mov         eax,dword ptr [ebp-4]
 00494B36    mov         edx,dword ptr [ebp-0C]
 00494B39    mov         dword ptr [eax+34],edx;TDragImageList.FWidth:Integer
 00494B3C    mov         eax,dword ptr [ebp-4]
 00494B3F    mov         edx,dword ptr [ebp+8]
 00494B42    mov         dword ptr [eax+30],edx;TDragImageList.FHeight:Integer
 00494B45    mov         eax,dword ptr [ebp-4]
 00494B48    mov         edx,dword ptr [eax]
 00494B4A    call        dword ptr [edx+34];TDragImageList.sub_0048E104
 00494B4D    mov         eax,dword ptr [ebp-4]
 00494B50    cmp         byte ptr [ebp-5],0
>00494B54    je          00494B65
 00494B56    call        @AfterConstruction
 00494B5B    pop         dword ptr fs:[0]
 00494B62    add         esp,0C
 00494B65    mov         eax,dword ptr [ebp-4]
 00494B68    mov         esp,ebp
 00494B6A    pop         ebp
 00494B6B    ret         4
end;*}

//00494B70
destructor TCustomImageList.Destroy;
begin
{*
 00494B70    push        ebp
 00494B71    mov         ebp,esp
 00494B73    add         esp,0FFFFFFF8
 00494B76    call        @BeforeDestruction
 00494B7B    mov         byte ptr [ebp-5],dl
 00494B7E    mov         dword ptr [ebp-4],eax
>00494B81    jmp         00494B98
 00494B83    mov         eax,dword ptr [ebp-4]
 00494B86    mov         eax,dword ptr [eax+4C]
 00494B89    call        004203B8
 00494B8E    mov         edx,eax
 00494B90    mov         eax,dword ptr [ebp-4]
 00494B93    call        00495F18
 00494B98    mov         eax,dword ptr [ebp-4]
 00494B9B    mov         eax,dword ptr [eax+4C]
 00494B9E    cmp         dword ptr [eax+8],0
>00494BA2    jg          00494B83
 00494BA4    mov         eax,dword ptr [ebp-4]
 00494BA7    mov         eax,dword ptr [eax+50]
 00494BAA    call        TObject.Free
 00494BAF    mov         eax,dword ptr [ebp-4]
 00494BB2    call        0049500C
 00494BB7    mov         eax,dword ptr [ebp-4]
 00494BBA    mov         eax,dword ptr [eax+4C]
 00494BBD    call        TObject.Free
 00494BC2    mov         eax,dword ptr [ebp-4]
 00494BC5    xor         edx,edx
 00494BC7    mov         dword ptr [eax+4C],edx
 00494BCA    mov         eax,dword ptr [ebp-4]
 00494BCD    cmp         dword ptr [eax+54],0
>00494BD1    je          00494BDE
 00494BD3    mov         eax,dword ptr [ebp-4]
 00494BD6    mov         eax,dword ptr [eax+54]
 00494BD9    call        TObject.Free
 00494BDE    mov         dl,byte ptr [ebp-5]
 00494BE1    and         dl,0FC
 00494BE4    mov         eax,dword ptr [ebp-4]
 00494BE7    call        TComponent.Destroy
 00494BEC    cmp         byte ptr [ebp-5],0
>00494BF0    jle         00494BFA
 00494BF2    mov         eax,dword ptr [ebp-4]
 00494BF5    call        @ClassDestroy
 00494BFA    pop         ecx
 00494BFB    pop         ecx
 00494BFC    pop         ebp
 00494BFD    ret
*}
end;

//00494C00
procedure sub_00494C00;
begin
{*
 00494C00    push        ebp
 00494C01    mov         ebp,esp
 00494C03    add         esp,0FFFFFFF8
 00494C06    xor         edx,edx
 00494C08    mov         dword ptr [ebp-8],edx
 00494C0B    mov         dword ptr [ebp-4],eax
 00494C0E    xor         eax,eax
 00494C10    push        ebp
 00494C11    push        494CD3
 00494C16    push        dword ptr fs:[eax]
 00494C19    mov         dword ptr fs:[eax],esp
 00494C1C    mov         dl,1
 00494C1E    mov         eax,[0041D46C];TList
 00494C23    call        TObject.Create;TList.Create
 00494C28    mov         edx,dword ptr [ebp-4]
 00494C2B    mov         dword ptr [edx+4C],eax;TCustomImageList.FClients:TList
 00494C2E    mov         eax,dword ptr [ebp-4]
 00494C31    cmp         dword ptr [eax+30],1;TCustomImageList.FHeight:Integer
>00494C35    jl          00494C4C
 00494C37    mov         eax,dword ptr [ebp-4]
 00494C3A    cmp         dword ptr [eax+30],8000;TCustomImageList.FHeight:Integer
>00494C41    jg          00494C4C
 00494C43    mov         eax,dword ptr [ebp-4]
 00494C46    cmp         dword ptr [eax+34],1;TCustomImageList.FWidth:Integer
>00494C4A    jge         00494C6D
 00494C4C    lea         edx,[ebp-8]
 00494C4F    mov         eax,[0056E150];^SInvalidImageSize:TResStringRec
 00494C54    call        LoadResString
 00494C59    mov         ecx,dword ptr [ebp-8]
 00494C5C    mov         dl,1
 00494C5E    mov         eax,[0041D40C];EInvalidOperation
 00494C63    call        Exception.Create;EInvalidOperation.Create
 00494C68    call        @RaiseExcept
 00494C6D    mov         eax,dword ptr [ebp-4]
 00494C70    mov         dword ptr [eax+38],4;TCustomImageList.FAllocBy:Integer
 00494C77    mov         eax,dword ptr [ebp-4]
 00494C7A    mov         byte ptr [eax+41],1;TCustomImageList.FMasked:Boolean
 00494C7E    mov         dl,2
 00494C80    mov         eax,dword ptr [ebp-4]
 00494C83    call        TImageList.SetDrawingStyle
 00494C88    mov         eax,dword ptr [ebp-4]
 00494C8B    mov         byte ptr [eax+43],0;TCustomImageList.FImageType:TImageType
 00494C8F    mov         eax,dword ptr [ebp-4]
 00494C92    mov         dword ptr [eax+44],1FFFFFFF;TCustomImageList.FBkColor:TColor
 00494C99    mov         eax,dword ptr [ebp-4]
 00494C9C    mov         dword ptr [eax+48],1FFFFFFF;TCustomImageList.FBlendColor:TColor
 00494CA3    mov         dl,1
 00494CA5    mov         eax,[0042CF48];TBitmap
 00494CAA    call        TBitmap.Create;TBitmap.Create
 00494CAF    mov         edx,dword ptr [ebp-4]
 00494CB2    mov         dword ptr [edx+50],eax;TCustomImageList.FBitmap:TBitmap
 00494CB5    mov         eax,dword ptr [ebp-4]
 00494CB8    call        00494D18
 00494CBD    xor         eax,eax
 00494CBF    pop         edx
 00494CC0    pop         ecx
 00494CC1    pop         ecx
 00494CC2    mov         dword ptr fs:[eax],edx
 00494CC5    push        494CDA
 00494CCA    lea         eax,[ebp-8]
 00494CCD    call        @LStrClr
 00494CD2    ret
>00494CD3    jmp         @HandleFinally
>00494CD8    jmp         00494CCA
 00494CDA    pop         ecx
 00494CDB    pop         ecx
 00494CDC    pop         ebp
 00494CDD    ret
*}
end;

//00494CE0
{*function sub_00494CE0(?:TCustomImageList):?;
begin
 00494CE0    push        ebp
 00494CE1    mov         ebp,esp
 00494CE3    add         esp,0FFFFFFF8
 00494CE6    mov         dword ptr [ebp-4],eax
 00494CE9    mov         eax,dword ptr [ebp-4]
 00494CEC    cmp         dword ptr [eax+3C],0;TCustomImageList.FHandle:HIMAGELIST
 00494CF0    setne       byte ptr [ebp-5]
 00494CF4    mov         al,byte ptr [ebp-5]
 00494CF7    pop         ecx
 00494CF8    pop         ecx
 00494CF9    pop         ebp
 00494CFA    ret
end;*}

//00494CFC
procedure sub_00494CFC(?:TCustomImageList);
begin
{*
 00494CFC    push        ebp
 00494CFD    mov         ebp,esp
 00494CFF    push        ecx
 00494D00    mov         dword ptr [ebp-4],eax
 00494D03    mov         eax,dword ptr [ebp-4]
 00494D06    cmp         dword ptr [eax+3C],0
>00494D0A    jne         00494D14
 00494D0C    mov         eax,dword ptr [ebp-4]
 00494D0F    call        00495050
 00494D14    pop         ecx
 00494D15    pop         ebp
 00494D16    ret
*}
end;

//00494D18
procedure sub_00494D18(?:TCustomImageList);
begin
{*
 00494D18    push        ebp
 00494D19    mov         ebp,esp
 00494D1B    add         esp,0FFFFFFE4
 00494D1E    mov         dword ptr [ebp-4],eax
 00494D21    push        0
 00494D23    call        user32.GetDC
 00494D28    mov         dword ptr [ebp-8],eax
 00494D2B    xor         eax,eax
 00494D2D    push        ebp
 00494D2E    push        494DC0
 00494D33    push        dword ptr fs:[eax]
 00494D36    mov         dword ptr fs:[eax],esp
 00494D39    mov         eax,dword ptr [ebp-4]
 00494D3C    mov         eax,dword ptr [eax+50];TCustomImageList.FBitmap:TBitmap
 00494D3F    mov         dword ptr [ebp-0C],eax
 00494D42    mov         eax,dword ptr [ebp-4]
 00494D45    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 00494D48    push        eax
 00494D49    mov         eax,dword ptr [ebp-4]
 00494D4C    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 00494D4F    push        eax
 00494D50    mov         eax,dword ptr [ebp-8]
 00494D53    push        eax
 00494D54    call        gdi32.CreateCompatibleBitmap
 00494D59    mov         edx,eax
 00494D5B    mov         eax,dword ptr [ebp-0C]
 00494D5E    call        TBitmap.SetHandle
 00494D63    mov         eax,dword ptr [ebp-0C]
 00494D66    call        0043498C
 00494D6B    mov         eax,dword ptr [eax+14]
 00494D6E    xor         edx,edx
 00494D70    call        TBrush.SetColor
 00494D75    mov         eax,dword ptr [ebp-0C]
 00494D78    mov         edx,dword ptr [eax]
 00494D7A    call        dword ptr [edx+20];TBitmap.sub_00434A8C
 00494D7D    push        eax
 00494D7E    lea         eax,[ebp-1C]
 00494D81    push        eax
 00494D82    mov         eax,dword ptr [ebp-0C]
 00494D85    mov         edx,dword ptr [eax]
 00494D87    call        dword ptr [edx+2C];TBitmap.sub_00434CF0
 00494D8A    mov         ecx,eax
 00494D8C    xor         edx,edx
 00494D8E    xor         eax,eax
 00494D90    call        0041E714
 00494D95    lea         eax,[ebp-1C]
 00494D98    push        eax
 00494D99    mov         eax,dword ptr [ebp-0C]
 00494D9C    call        0043498C
 00494DA1    pop         edx
 00494DA2    call        0042F030
 00494DA7    xor         eax,eax
 00494DA9    pop         edx
 00494DAA    pop         ecx
 00494DAB    pop         ecx
 00494DAC    mov         dword ptr fs:[eax],edx
 00494DAF    push        494DC7
 00494DB4    mov         eax,dword ptr [ebp-8]
 00494DB7    push        eax
 00494DB8    push        0
 00494DBA    call        user32.ReleaseDC
 00494DBF    ret
>00494DC0    jmp         @HandleFinally
>00494DC5    jmp         00494DB4
 00494DC7    mov         eax,dword ptr [ebp-4]
 00494DCA    cmp         dword ptr [eax+54],0;TCustomImageList.FMonoBitmap:TBitmap
>00494DCE    je          00494DE3
 00494DD0    mov         eax,dword ptr [ebp-4]
 00494DD3    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 00494DD6    call        TObject.Free
 00494DDB    mov         eax,dword ptr [ebp-4]
 00494DDE    xor         edx,edx
 00494DE0    mov         dword ptr [eax+54],edx;TCustomImageList.FMonoBitmap:TBitmap
 00494DE3    mov         esp,ebp
 00494DE5    pop         ebp
 00494DE6    ret
*}
end;

//00494DE8
{*procedure sub_00494DE8(?:TCustomImageList; ?:?);
begin
 00494DE8    push        ebp
 00494DE9    mov         ebp,esp
 00494DEB    add         esp,0FFFFFFF0
 00494DEE    mov         dword ptr [ebp-8],edx
 00494DF1    mov         dword ptr [ebp-4],eax
 00494DF4    mov         eax,dword ptr [ebp-4]
 00494DF7    mov         eax,dword ptr [eax+34]
 00494DFA    mov         dword ptr [ebp-10],eax
 00494DFD    mov         eax,dword ptr [ebp-4]
 00494E00    mov         eax,dword ptr [eax+30]
 00494E03    mov         dword ptr [ebp-0C],eax
 00494E06    lea         eax,[ebp-0C]
 00494E09    push        eax
 00494E0A    lea         eax,[ebp-10]
 00494E0D    push        eax
 00494E0E    mov         eax,dword ptr [ebp-8]
 00494E11    push        eax
 00494E12    call        comctl32.ImageList_GetIconSize
 00494E17    mov         eax,dword ptr [ebp-10]
 00494E1A    mov         edx,dword ptr [ebp-4]
 00494E1D    mov         dword ptr [edx+34],eax
 00494E20    mov         eax,dword ptr [ebp-0C]
 00494E23    mov         edx,dword ptr [ebp-4]
 00494E26    mov         dword ptr [edx+30],eax
 00494E29    mov         eax,dword ptr [ebp-4]
 00494E2C    call        00494D18
 00494E31    mov         esp,ebp
 00494E33    pop         ebp
 00494E34    ret
end;*}

//00494E38
procedure TImageList.SetWidth(Value:Integer);
begin
{*
 00494E38    push        ebp
 00494E39    mov         ebp,esp
 00494E3B    add         esp,0FFFFFFF8
 00494E3E    push        esi
 00494E3F    mov         dword ptr [ebp-8],edx
 00494E42    mov         dword ptr [ebp-4],eax
 00494E45    mov         eax,dword ptr [ebp-8]
 00494E48    mov         edx,dword ptr [ebp-4]
 00494E4B    cmp         eax,dword ptr [edx+34];TImageList.FWidth:Integer
>00494E4E    je          00494E9B
 00494E50    mov         eax,dword ptr [ebp-8]
 00494E53    mov         edx,dword ptr [ebp-4]
 00494E56    mov         dword ptr [edx+34],eax;TImageList.FWidth:Integer
 00494E59    mov         eax,dword ptr [ebp-4]
 00494E5C    call        00494CE0
 00494E61    test        al,al
>00494E63    je          00494E7F
 00494E65    mov         eax,dword ptr [ebp-4]
 00494E68    mov         eax,dword ptr [eax+30];TImageList.FHeight:Integer
 00494E6B    push        eax
 00494E6C    mov         eax,dword ptr [ebp-4]
 00494E6F    mov         eax,dword ptr [eax+34];TImageList.FWidth:Integer
 00494E72    push        eax
 00494E73    mov         eax,dword ptr [ebp-4]
 00494E76    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 00494E79    push        eax
 00494E7A    call        comctl32.ImageList_SetIconSize
 00494E7F    mov         eax,dword ptr [ebp-4]
 00494E82    call        00495684
 00494E87    mov         eax,dword ptr [ebp-4]
 00494E8A    call        00494D18
 00494E8F    mov         eax,dword ptr [ebp-4]
 00494E92    mov         si,0FFEF
 00494E96    call        @CallDynaInst;TCustomImageList.sub_00495EA0
 00494E9B    pop         esi
 00494E9C    pop         ecx
 00494E9D    pop         ecx
 00494E9E    pop         ebp
 00494E9F    ret
*}
end;

//00494EA0
procedure TImageList.SetHeight(Value:Integer);
begin
{*
 00494EA0    push        ebp
 00494EA1    mov         ebp,esp
 00494EA3    add         esp,0FFFFFFF8
 00494EA6    push        esi
 00494EA7    mov         dword ptr [ebp-8],edx
 00494EAA    mov         dword ptr [ebp-4],eax
 00494EAD    mov         eax,dword ptr [ebp-8]
 00494EB0    mov         edx,dword ptr [ebp-4]
 00494EB3    cmp         eax,dword ptr [edx+30];TImageList.FHeight:Integer
>00494EB6    je          00494F03
 00494EB8    mov         eax,dword ptr [ebp-8]
 00494EBB    mov         edx,dword ptr [ebp-4]
 00494EBE    mov         dword ptr [edx+30],eax;TImageList.FHeight:Integer
 00494EC1    mov         eax,dword ptr [ebp-4]
 00494EC4    call        00494CE0
 00494EC9    test        al,al
>00494ECB    je          00494EE7
 00494ECD    mov         eax,dword ptr [ebp-4]
 00494ED0    mov         eax,dword ptr [eax+30];TImageList.FHeight:Integer
 00494ED3    push        eax
 00494ED4    mov         eax,dword ptr [ebp-4]
 00494ED7    mov         eax,dword ptr [eax+34];TImageList.FWidth:Integer
 00494EDA    push        eax
 00494EDB    mov         eax,dword ptr [ebp-4]
 00494EDE    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 00494EE1    push        eax
 00494EE2    call        comctl32.ImageList_SetIconSize
 00494EE7    mov         eax,dword ptr [ebp-4]
 00494EEA    call        00495684
 00494EEF    mov         eax,dword ptr [ebp-4]
 00494EF2    call        00494D18
 00494EF7    mov         eax,dword ptr [ebp-4]
 00494EFA    mov         si,0FFEF
 00494EFE    call        @CallDynaInst;TCustomImageList.sub_00495EA0
 00494F03    pop         esi
 00494F04    pop         ecx
 00494F05    pop         ecx
 00494F06    pop         ebp
 00494F07    ret
*}
end;

//00494F08
procedure sub_00494F08(?:TDragImageList; ?:THandle);
begin
{*
 00494F08    push        ebp
 00494F09    mov         ebp,esp
 00494F0B    add         esp,0FFFFFFF8
 00494F0E    push        esi
 00494F0F    mov         dword ptr [ebp-8],edx
 00494F12    mov         dword ptr [ebp-4],eax
 00494F15    mov         eax,dword ptr [ebp-4]
 00494F18    call        0049500C
 00494F1D    cmp         dword ptr [ebp-8],0
>00494F21    je          00494F43
 00494F23    mov         edx,dword ptr [ebp-8]
 00494F26    mov         eax,dword ptr [ebp-4]
 00494F29    call        00494DE8
 00494F2E    mov         eax,dword ptr [ebp-8]
 00494F31    mov         edx,dword ptr [ebp-4]
 00494F34    mov         dword ptr [edx+3C],eax;TDragImageList.FHandle:HIMAGELIST
 00494F37    mov         eax,dword ptr [ebp-4]
 00494F3A    mov         si,0FFEF
 00494F3E    call        @CallDynaInst;TCustomImageList.sub_00495EA0
 00494F43    pop         esi
 00494F44    pop         ecx
 00494F45    pop         ecx
 00494F46    pop         ebp
 00494F47    ret
*}
end;

//00494F48
{*function sub_00494F48(?:?; ?:?):?;
begin
 00494F48    push        ebp
 00494F49    mov         ebp,esp
 00494F4B    add         esp,0FFFFFFF4
 00494F4E    mov         dword ptr [ebp-8],edx
 00494F51    mov         dword ptr [ebp-4],eax
 00494F54    cmp         dword ptr [ebp-8],0
>00494F58    je          00494F62
 00494F5A    mov         eax,dword ptr [ebp-8]
 00494F5D    mov         dword ptr [ebp-0C],eax
>00494F60    jmp         00494F70
 00494F62    mov         eax,dword ptr [ebp-4]
 00494F65    mov         eax,dword ptr [eax+50]
 00494F68    mov         edx,dword ptr [eax]
 00494F6A    call        dword ptr [edx+64]
 00494F6D    mov         dword ptr [ebp-0C],eax
 00494F70    mov         eax,dword ptr [ebp-0C]
 00494F73    mov         esp,ebp
 00494F75    pop         ebp
 00494F76    ret
end;*}

//00494F78
{*function sub_00494F78(?:TCustomImageList):?;
begin
 00494F78    push        ebp
 00494F79    mov         ebp,esp
 00494F7B    add         esp,0FFFFFFF8
 00494F7E    mov         dword ptr [ebp-4],eax
 00494F81    mov         eax,dword ptr [ebp-4]
 00494F84    call        00494CFC
 00494F89    mov         eax,dword ptr [ebp-4]
 00494F8C    mov         eax,dword ptr [eax+3C];TCustomImageList.FHandle:HIMAGELIST
 00494F8F    mov         dword ptr [ebp-8],eax
 00494F92    mov         eax,dword ptr [ebp-8]
 00494F95    pop         ecx
 00494F96    pop         ecx
 00494F97    pop         ebp
 00494F98    ret
end;*}

//00494F9C
{*function sub_00494F9C(?:?; ?:?; ?:TBitmap):?;
begin
 00494F9C    push        ebp
 00494F9D    mov         ebp,esp
 00494F9F    add         esp,0FFFFFFF0
 00494FA2    mov         dword ptr [ebp-0C],ecx
 00494FA5    mov         dword ptr [ebp-8],edx
 00494FA8    mov         dword ptr [ebp-4],eax
 00494FAB    mov         edx,dword ptr [ebp-8]
 00494FAE    mov         eax,dword ptr [ebp-4]
 00494FB1    call        00495DC8
 00494FB6    cmp         dword ptr [ebp-8],0
>00494FBA    je          00494FF7
 00494FBC    mov         eax,dword ptr [ebp-8]
 00494FBF    call        00434A34
 00494FC4    cmp         al,1
>00494FC6    jne         00494FD5
 00494FC8    mov         eax,dword ptr [ebp-8]
 00494FCB    mov         edx,dword ptr [eax]
 00494FCD    call        dword ptr [edx+64]
 00494FD0    mov         dword ptr [ebp-10],eax
>00494FD3    jmp         00495005
 00494FD5    mov         edx,dword ptr [ebp-8]
 00494FD8    mov         eax,dword ptr [ebp-0C]
 00494FDB    mov         ecx,dword ptr [eax]
 00494FDD    call        dword ptr [ecx+8]
 00494FE0    mov         dl,1
 00494FE2    mov         eax,dword ptr [ebp-0C]
 00494FE5    mov         ecx,dword ptr [eax]
 00494FE7    call        dword ptr [ecx+6C]
 00494FEA    mov         eax,dword ptr [ebp-0C]
 00494FED    mov         edx,dword ptr [eax]
 00494FEF    call        dword ptr [edx+64]
 00494FF2    mov         dword ptr [ebp-10],eax
>00494FF5    jmp         00495005
 00494FF7    mov         eax,dword ptr [ebp-4]
 00494FFA    mov         eax,dword ptr [eax+50]
 00494FFD    mov         edx,dword ptr [eax]
 00494FFF    call        dword ptr [edx+64]
 00495002    mov         dword ptr [ebp-10],eax
 00495005    mov         eax,dword ptr [ebp-10]
 00495008    mov         esp,ebp
 0049500A    pop         ebp
 0049500B    ret
end;*}

//0049500C
procedure sub_0049500C(?:TCustomImageList);
begin
{*
 0049500C    push        ebp
 0049500D    mov         ebp,esp
 0049500F    push        ecx
 00495010    push        esi
 00495011    mov         dword ptr [ebp-4],eax
 00495014    mov         eax,dword ptr [ebp-4]
 00495017    call        00494CE0
 0049501C    test        al,al
>0049501E    je          00495037
 00495020    mov         eax,dword ptr [ebp-4]
 00495023    cmp         byte ptr [eax+42],0;TDragImageList.FShareImages:Boolean
>00495027    jne         00495037
 00495029    mov         eax,dword ptr [ebp-4]
 0049502C    call        00494F78
 00495031    push        eax
 00495032    call        comctl32.ImageList_Destroy
 00495037    mov         eax,dword ptr [ebp-4]
 0049503A    xor         edx,edx
 0049503C    mov         dword ptr [eax+3C],edx;TDragImageList.FHandle:HIMAGELIST
 0049503F    mov         eax,dword ptr [ebp-4]
 00495042    mov         si,0FFEF
 00495046    call        @CallDynaInst;TCustomImageList.sub_00495EA0
 0049504B    pop         esi
 0049504C    pop         ecx
 0049504D    pop         ebp
 0049504E    ret
*}
end;

//00495050
{*procedure sub_00495050(?:?);
begin
 00495050    push        ebp
 00495051    mov         ebp,esp
 00495053    add         esp,0FFFFFFF8
 00495056    xor         edx,edx
 00495058    mov         dword ptr [ebp-8],edx
 0049505B    mov         dword ptr [ebp-4],eax
 0049505E    xor         eax,eax
 00495060    push        ebp
 00495061    push        495104
 00495066    push        dword ptr fs:[eax]
 00495069    mov         dword ptr fs:[eax],esp
 0049506C    mov         eax,dword ptr [ebp-4]
 0049506F    mov         eax,dword ptr [eax+38]
 00495072    push        eax
 00495073    mov         eax,dword ptr [ebp-4]
 00495076    mov         eax,dword ptr [eax+38]
 00495079    push        eax
 0049507A    mov         eax,dword ptr [ebp-4]
 0049507D    movzx       eax,byte ptr [eax+41]
 00495081    mov         eax,dword ptr [eax*4+56C8C4]
 00495088    or          eax,0FE
 0049508D    push        eax
 0049508E    mov         eax,dword ptr [ebp-4]
 00495091    mov         eax,dword ptr [eax+30]
 00495094    push        eax
 00495095    mov         eax,dword ptr [ebp-4]
 00495098    mov         eax,dword ptr [eax+34]
 0049509B    push        eax
 0049509C    call        comctl32.ImageList_Create
 004950A1    mov         edx,dword ptr [ebp-4]
 004950A4    mov         dword ptr [edx+3C],eax
 004950A7    mov         eax,dword ptr [ebp-4]
 004950AA    call        00494CE0
 004950AF    test        al,al
>004950B1    jne         004950D4
 004950B3    lea         edx,[ebp-8]
 004950B6    mov         eax,[0056E3E0];^SInvalidImageList:TResStringRec
 004950BB    call        LoadResString
 004950C0    mov         ecx,dword ptr [ebp-8]
 004950C3    mov         dl,1
 004950C5    mov         eax,[0041D40C];EInvalidOperation
 004950CA    call        Exception.Create;EInvalidOperation.Create
 004950CF    call        @RaiseExcept
 004950D4    mov         eax,dword ptr [ebp-4]
 004950D7    cmp         dword ptr [eax+44],1FFFFFFF
>004950DE    je          004950EE
 004950E0    mov         eax,dword ptr [ebp-4]
 004950E3    mov         edx,dword ptr [eax+44]
 004950E6    mov         eax,dword ptr [ebp-4]
 004950E9    call        TImageList.SetBkColor
 004950EE    xor         eax,eax
 004950F0    pop         edx
 004950F1    pop         ecx
 004950F2    pop         ecx
 004950F3    mov         dword ptr fs:[eax],edx
 004950F6    push        49510B
 004950FB    lea         eax,[ebp-8]
 004950FE    call        @LStrClr
 00495103    ret
>00495104    jmp         @HandleFinally
>00495109    jmp         004950FB
 0049510B    pop         ecx
 0049510C    pop         ecx
 0049510D    pop         ebp
 0049510E    ret
end;*}

//00495110
{*function sub_00495110(?:?; ?:TBitmap; ?:TBitmap):?;
begin
 00495110    push        ebp
 00495111    mov         ebp,esp
 00495113    add         esp,0FFFFFFE8
 00495116    push        esi
 00495117    mov         dword ptr [ebp-0C],ecx
 0049511A    mov         dword ptr [ebp-8],edx
 0049511D    mov         dword ptr [ebp-4],eax
 00495120    mov         dl,1
 00495122    mov         eax,[0042CF48];TBitmap
 00495127    call        TBitmap.Create;TBitmap.Create
 0049512C    mov         dword ptr [ebp-14],eax
 0049512F    xor         eax,eax
 00495131    push        ebp
 00495132    push        4951C2
 00495137    push        dword ptr fs:[eax]
 0049513A    mov         dword ptr fs:[eax],esp
 0049513D    mov         dl,1
 0049513F    mov         eax,[0042CF48];TBitmap
 00495144    call        TBitmap.Create;TBitmap.Create
 00495149    mov         dword ptr [ebp-18],eax
 0049514C    xor         eax,eax
 0049514E    push        ebp
 0049514F    push        4951A5
 00495154    push        dword ptr fs:[eax]
 00495157    mov         dword ptr fs:[eax],esp
 0049515A    mov         eax,dword ptr [ebp-4]
 0049515D    call        00494CFC
 00495162    mov         ecx,dword ptr [ebp-18]
 00495165    mov         edx,dword ptr [ebp-0C]
 00495168    mov         eax,dword ptr [ebp-4]
 0049516B    call        00494F9C
 00495170    push        eax
 00495171    mov         ecx,dword ptr [ebp-14]
 00495174    mov         edx,dword ptr [ebp-8]
 00495177    mov         eax,dword ptr [ebp-4]
 0049517A    call        00494F9C
 0049517F    push        eax
 00495180    mov         eax,dword ptr [ebp-4]
 00495183    mov         eax,dword ptr [eax+3C]
 00495186    push        eax
 00495187    call        comctl32.ImageList_Add
 0049518C    mov         dword ptr [ebp-10],eax
 0049518F    xor         eax,eax
 00495191    pop         edx
 00495192    pop         ecx
 00495193    pop         ecx
 00495194    mov         dword ptr fs:[eax],edx
 00495197    push        4951AC
 0049519C    mov         eax,dword ptr [ebp-18]
 0049519F    call        TObject.Free
 004951A4    ret
>004951A5    jmp         @HandleFinally
>004951AA    jmp         0049519C
 004951AC    xor         eax,eax
 004951AE    pop         edx
 004951AF    pop         ecx
 004951B0    pop         ecx
 004951B1    mov         dword ptr fs:[eax],edx
 004951B4    push        4951C9
 004951B9    mov         eax,dword ptr [ebp-14]
 004951BC    call        TObject.Free
 004951C1    ret
>004951C2    jmp         @HandleFinally
>004951C7    jmp         004951B9
 004951C9    mov         eax,dword ptr [ebp-4]
 004951CC    mov         si,0FFEF
 004951D0    call        @CallDynaInst
 004951D5    mov         eax,dword ptr [ebp-10]
 004951D8    pop         esi
 004951D9    mov         esp,ebp
 004951DB    pop         ebp
 004951DC    ret
end;*}

//004951E0
{*function sub_004951E0(?:?; ?:?; ?:?):?;
begin
 004951E0    push        ebp
 004951E1    mov         ebp,esp
 004951E3    add         esp,0FFFFFFE8
 004951E6    push        esi
 004951E7    mov         dword ptr [ebp-0C],ecx
 004951EA    mov         dword ptr [ebp-8],edx
 004951ED    mov         dword ptr [ebp-4],eax
 004951F0    mov         dl,1
 004951F2    mov         eax,[0042CF48];TBitmap
 004951F7    call        TBitmap.Create;TBitmap.Create
 004951FC    mov         dword ptr [ebp-14],eax
 004951FF    xor         eax,eax
 00495201    push        ebp
 00495202    push        4952E5
 00495207    push        dword ptr fs:[eax]
 0049520A    mov         dword ptr fs:[eax],esp
 0049520D    mov         eax,dword ptr [ebp-4]
 00495210    cmp         byte ptr [eax+41],0
>00495214    je          004952AD
 0049521A    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0049521E    je          004952AD
 00495224    mov         dl,1
 00495226    mov         eax,[0042CF48];TBitmap
 0049522B    call        TBitmap.Create;TBitmap.Create
 00495230    mov         dword ptr [ebp-18],eax
 00495233    xor         eax,eax
 00495235    push        ebp
 00495236    push        4952A6
 0049523B    push        dword ptr fs:[eax]
 0049523E    mov         dword ptr fs:[eax],esp
 00495241    mov         edx,dword ptr [ebp-8]
 00495244    mov         eax,dword ptr [ebp-18]
 00495247    mov         ecx,dword ptr [eax]
 00495249    call        dword ptr [ecx+8];TBitmap.sub_00434344
 0049524C    mov         edx,dword ptr [ebp-0C]
 0049524F    mov         eax,dword ptr [ebp-18]
 00495252    call        00435F78
 00495257    mov         eax,dword ptr [ebp-4]
 0049525A    call        00494CFC
 0049525F    mov         eax,dword ptr [ebp-18]
 00495262    mov         edx,dword ptr [eax]
 00495264    call        dword ptr [edx+68];TBitmap.sub_00434AB0
 00495267    mov         edx,eax
 00495269    mov         eax,dword ptr [ebp-4]
 0049526C    call        00494F48
 00495271    push        eax
 00495272    mov         ecx,dword ptr [ebp-14]
 00495275    mov         edx,dword ptr [ebp-8]
 00495278    mov         eax,dword ptr [ebp-4]
 0049527B    call        00494F9C
 00495280    push        eax
 00495281    mov         eax,dword ptr [ebp-4]
 00495284    mov         eax,dword ptr [eax+3C]
 00495287    push        eax
 00495288    call        comctl32.ImageList_Add
 0049528D    mov         dword ptr [ebp-10],eax
 00495290    xor         eax,eax
 00495292    pop         edx
 00495293    pop         ecx
 00495294    pop         ecx
 00495295    mov         dword ptr fs:[eax],edx
 00495298    push        4952CF
 0049529D    mov         eax,dword ptr [ebp-18]
 004952A0    call        TObject.Free
 004952A5    ret
>004952A6    jmp         @HandleFinally
>004952AB    jmp         0049529D
 004952AD    push        0
 004952AF    mov         ecx,dword ptr [ebp-14]
 004952B2    mov         edx,dword ptr [ebp-8]
 004952B5    mov         eax,dword ptr [ebp-4]
 004952B8    call        00494F9C
 004952BD    push        eax
 004952BE    mov         eax,dword ptr [ebp-4]
 004952C1    call        00494F78
 004952C6    push        eax
 004952C7    call        comctl32.ImageList_Add
 004952CC    mov         dword ptr [ebp-10],eax
 004952CF    xor         eax,eax
 004952D1    pop         edx
 004952D2    pop         ecx
 004952D3    pop         ecx
 004952D4    mov         dword ptr fs:[eax],edx
 004952D7    push        4952EC
 004952DC    mov         eax,dword ptr [ebp-14]
 004952DF    call        TObject.Free
 004952E4    ret
>004952E5    jmp         @HandleFinally
>004952EA    jmp         004952DC
 004952EC    mov         eax,dword ptr [ebp-4]
 004952EF    mov         si,0FFEF
 004952F3    call        @CallDynaInst
 004952F8    mov         eax,dword ptr [ebp-10]
 004952FB    pop         esi
 004952FC    mov         esp,ebp
 004952FE    pop         ebp
 004952FF    ret
end;*}

//00495300
{*function sub_00495300(?:?; ?:TImageIndex; ?:TBitmap):?;
begin
 00495300    push        ebp
 00495301    mov         ebp,esp
 00495303    add         esp,0FFFFFFF0
 00495306    mov         dword ptr [ebp-0C],ecx
 00495309    mov         dword ptr [ebp-8],edx
 0049530C    mov         dword ptr [ebp-4],eax
 0049530F    cmp         dword ptr [ebp-0C],0
>00495313    je          00495334
 00495315    mov         eax,dword ptr [ebp-4]
 00495318    call        00494CE0
 0049531D    test        al,al
>0049531F    je          00495334
 00495321    cmp         dword ptr [ebp-8],0FFFFFFFF
>00495325    jle         00495334
 00495327    mov         eax,dword ptr [ebp-4]
 0049532A    call        00495384
 0049532F    cmp         eax,dword ptr [ebp-8]
>00495332    jg          00495338
 00495334    xor         eax,eax
>00495336    jmp         0049533A
 00495338    mov         al,1
 0049533A    mov         byte ptr [ebp-0D],al
 0049533D    cmp         byte ptr [ebp-0D],0
>00495341    je          0049537B
 00495343    mov         eax,dword ptr [ebp-4]
 00495346    mov         edx,dword ptr [eax+30]
 00495349    mov         eax,dword ptr [ebp-0C]
 0049534C    mov         ecx,dword ptr [eax]
 0049534E    call        dword ptr [ecx+34]
 00495351    mov         eax,dword ptr [ebp-4]
 00495354    mov         edx,dword ptr [eax+34]
 00495357    mov         eax,dword ptr [ebp-0C]
 0049535A    mov         ecx,dword ptr [eax]
 0049535C    call        dword ptr [ecx+40]
 0049535F    push        0
 00495361    mov         eax,dword ptr [ebp-8]
 00495364    push        eax
 00495365    push        1
 00495367    mov         eax,dword ptr [ebp-0C]
 0049536A    call        0043498C
 0049536F    mov         edx,eax
 00495371    xor         ecx,ecx
 00495373    mov         eax,dword ptr [ebp-4]
 00495376    call        00495958
 0049537B    mov         al,byte ptr [ebp-0D]
 0049537E    mov         esp,ebp
 00495380    pop         ebp
 00495381    ret
end;*}

//00495384
{*function sub_00495384(?:TImageList):?;
begin
 00495384    push        ebp
 00495385    mov         ebp,esp
 00495387    add         esp,0FFFFFFF8
 0049538A    mov         dword ptr [ebp-4],eax
 0049538D    mov         eax,dword ptr [ebp-4]
 00495390    call        00494CE0
 00495395    test        al,al
>00495397    je          004953AC
 00495399    mov         eax,dword ptr [ebp-4]
 0049539C    call        00494F78
 004953A1    push        eax
 004953A2    call        comctl32.ImageList_GetImageCount
 004953A7    mov         dword ptr [ebp-8],eax
>004953AA    jmp         004953B1
 004953AC    xor         eax,eax
 004953AE    mov         dword ptr [ebp-8],eax
 004953B1    mov         eax,dword ptr [ebp-8]
 004953B4    pop         ecx
 004953B5    pop         ecx
 004953B6    pop         ebp
 004953B7    ret
end;*}

//004953B8
{*procedure sub_004953B8(?:?; ?:?; ?:?; ?:?);
begin
 004953B8    push        ebp
 004953B9    mov         ebp,esp
 004953BB    add         esp,0FFFFFFE0
 004953BE    push        ebx
 004953BF    push        esi
 004953C0    xor         ebx,ebx
 004953C2    mov         dword ptr [ebp-20],ebx
 004953C5    mov         dword ptr [ebp-1C],ebx
 004953C8    mov         dword ptr [ebp-0C],ecx
 004953CB    mov         dword ptr [ebp-8],edx
 004953CE    mov         dword ptr [ebp-4],eax
 004953D1    xor         eax,eax
 004953D3    push        ebp
 004953D4    push        4955D6
 004953D9    push        dword ptr fs:[eax]
 004953DC    mov         dword ptr fs:[eax],esp
 004953DF    mov         eax,dword ptr [ebp-4]
 004953E2    call        00494CE0
 004953E7    test        al,al
>004953E9    je          004955AF
 004953EF    mov         edx,dword ptr [ebp-0C]
 004953F2    mov         eax,dword ptr [ebp-4]
 004953F5    call        00495DC8
 004953FA    mov         ecx,dword ptr [ebp+8]
 004953FD    mov         edx,dword ptr [ebp-0C]
 00495400    mov         eax,dword ptr [ebp-4]
 00495403    call        004951E0
 00495408    mov         dword ptr [ebp-10],eax
 0049540B    cmp         dword ptr [ebp-10],0FFFFFFFF
>0049540F    je          0049558E
 00495415    xor         eax,eax
 00495417    push        ebp
 00495418    push        495587
 0049541D    push        dword ptr fs:[eax]
 00495420    mov         dword ptr fs:[eax],esp
 00495423    mov         dl,1
 00495425    mov         eax,[0042CF48];TBitmap
 0049542A    call        TBitmap.Create;TBitmap.Create
 0049542F    mov         dword ptr [ebp-14],eax
 00495432    xor         eax,eax
 00495434    push        ebp
 00495435    push        495567
 0049543A    push        dword ptr fs:[eax]
 0049543D    mov         dword ptr fs:[eax],esp
 00495440    mov         eax,dword ptr [ebp-4]
 00495443    mov         edx,dword ptr [eax+30]
 00495446    mov         eax,dword ptr [ebp-14]
 00495449    mov         ecx,dword ptr [eax]
 0049544B    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 0049544E    mov         eax,dword ptr [ebp-4]
 00495451    mov         edx,dword ptr [eax+34]
 00495454    mov         eax,dword ptr [ebp-14]
 00495457    mov         ecx,dword ptr [eax]
 00495459    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 0049545C    mov         dl,1
 0049545E    mov         eax,[0042CF48];TBitmap
 00495463    call        TBitmap.Create;TBitmap.Create
 00495468    mov         dword ptr [ebp-18],eax
 0049546B    xor         eax,eax
 0049546D    push        ebp
 0049546E    push        49554A
 00495473    push        dword ptr fs:[eax]
 00495476    mov         dword ptr fs:[eax],esp
 00495479    mov         dl,1
 0049547B    mov         eax,dword ptr [ebp-18]
 0049547E    call        00435C48
 00495483    mov         eax,dword ptr [ebp-4]
 00495486    mov         edx,dword ptr [eax+30]
 00495489    mov         eax,dword ptr [ebp-18]
 0049548C    mov         ecx,dword ptr [eax]
 0049548E    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 00495491    mov         eax,dword ptr [ebp-4]
 00495494    mov         edx,dword ptr [eax+34]
 00495497    mov         eax,dword ptr [ebp-18]
 0049549A    mov         ecx,dword ptr [eax]
 0049549C    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 0049549F    push        0
 004954A1    push        0
 004954A3    push        0
 004954A5    mov         eax,dword ptr [ebp-14]
 004954A8    call        0043498C
 004954AD    call        0042F6A0
 004954B2    push        eax
 004954B3    mov         eax,dword ptr [ebp-10]
 004954B6    push        eax
 004954B7    mov         eax,dword ptr [ebp-4]
 004954BA    call        00494F78
 004954BF    push        eax
 004954C0    call        comctl32.ImageList_Draw
 004954C5    push        10
 004954C7    push        0
 004954C9    push        0
 004954CB    mov         eax,dword ptr [ebp-18]
 004954CE    call        0043498C
 004954D3    call        0042F6A0
 004954D8    push        eax
 004954D9    mov         eax,dword ptr [ebp-10]
 004954DC    push        eax
 004954DD    mov         eax,dword ptr [ebp-4]
 004954E0    call        00494F78
 004954E5    push        eax
 004954E6    call        comctl32.ImageList_Draw
 004954EB    mov         eax,dword ptr [ebp-18]
 004954EE    mov         edx,dword ptr [eax]
 004954F0    call        dword ptr [edx+64];TBitmap.sub_004349FC
 004954F3    push        eax
 004954F4    mov         eax,dword ptr [ebp-14]
 004954F7    mov         edx,dword ptr [eax]
 004954F9    call        dword ptr [edx+64];TBitmap.sub_004349FC
 004954FC    push        eax
 004954FD    mov         eax,dword ptr [ebp-8]
 00495500    push        eax
 00495501    mov         eax,dword ptr [ebp-4]
 00495504    call        00494F78
 00495509    push        eax
 0049550A    call        comctl32.ImageList_Replace
 0049550F    test        eax,eax
>00495511    jne         00495534
 00495513    lea         edx,[ebp-1C]
 00495516    mov         eax,[0056E0D0];^SReplaceImage:TResStringRec
 0049551B    call        LoadResString
 00495520    mov         ecx,dword ptr [ebp-1C]
 00495523    mov         dl,1
 00495525    mov         eax,[0041D40C];EInvalidOperation
 0049552A    call        Exception.Create;EInvalidOperation.Create
 0049552F    call        @RaiseExcept
 00495534    xor         eax,eax
 00495536    pop         edx
 00495537    pop         ecx
 00495538    pop         ecx
 00495539    mov         dword ptr fs:[eax],edx
 0049553C    push        495551
 00495541    mov         eax,dword ptr [ebp-18]
 00495544    call        TObject.Free
 00495549    ret
>0049554A    jmp         @HandleFinally
>0049554F    jmp         00495541
 00495551    xor         eax,eax
 00495553    pop         edx
 00495554    pop         ecx
 00495555    pop         ecx
 00495556    mov         dword ptr fs:[eax],edx
 00495559    push        49556E
 0049555E    mov         eax,dword ptr [ebp-14]
 00495561    call        TObject.Free
 00495566    ret
>00495567    jmp         @HandleFinally
>0049556C    jmp         0049555E
 0049556E    xor         eax,eax
 00495570    pop         edx
 00495571    pop         ecx
 00495572    pop         ecx
 00495573    mov         dword ptr fs:[eax],edx
 00495576    push        4955AF
 0049557B    mov         edx,dword ptr [ebp-10]
 0049557E    mov         eax,dword ptr [ebp-4]
 00495581    call        004955E8
 00495586    ret
>00495587    jmp         @HandleFinally
>0049558C    jmp         0049557B
 0049558E    lea         edx,[ebp-20]
 00495591    mov         eax,[0056E0D0];^SReplaceImage:TResStringRec
 00495596    call        LoadResString
 0049559B    mov         ecx,dword ptr [ebp-20]
 0049559E    mov         dl,1
 004955A0    mov         eax,[0041D40C];EInvalidOperation
 004955A5    call        Exception.Create;EInvalidOperation.Create
 004955AA    call        @RaiseExcept
 004955AF    mov         eax,dword ptr [ebp-4]
 004955B2    mov         si,0FFEF
 004955B6    call        @CallDynaInst
 004955BB    xor         eax,eax
 004955BD    pop         edx
 004955BE    pop         ecx
 004955BF    pop         ecx
 004955C0    mov         dword ptr fs:[eax],edx
 004955C3    push        4955DD
 004955C8    lea         eax,[ebp-20]
 004955CB    mov         edx,2
 004955D0    call        @LStrArrayClr
 004955D5    ret
>004955D6    jmp         @HandleFinally
>004955DB    jmp         004955C8
 004955DD    pop         esi
 004955DE    pop         ebx
 004955DF    mov         esp,ebp
 004955E1    pop         ebp
 004955E2    ret         4
end;*}

//004955E8
{*procedure sub_004955E8(?:TImageList; ?:?);
begin
 004955E8    push        ebp
 004955E9    mov         ebp,esp
 004955EB    add         esp,0FFFFFFF4
 004955EE    push        esi
 004955EF    xor         ecx,ecx
 004955F1    mov         dword ptr [ebp-0C],ecx
 004955F4    mov         dword ptr [ebp-8],edx
 004955F7    mov         dword ptr [ebp-4],eax
 004955FA    xor         eax,eax
 004955FC    push        ebp
 004955FD    push        495676
 00495602    push        dword ptr fs:[eax]
 00495605    mov         dword ptr fs:[eax],esp
 00495608    mov         eax,dword ptr [ebp-4]
 0049560B    call        00495384
 00495610    cmp         eax,dword ptr [ebp-8]
>00495613    jg          00495636
 00495615    lea         edx,[ebp-0C]
 00495618    mov         eax,[0056E170];^SImageIndexError:TResStringRec
 0049561D    call        LoadResString
 00495622    mov         ecx,dword ptr [ebp-0C]
 00495625    mov         dl,1
 00495627    mov         eax,[0041D40C];EInvalidOperation
 0049562C    call        Exception.Create;EInvalidOperation.Create
 00495631    call        @RaiseExcept
 00495636    mov         eax,dword ptr [ebp-4]
 00495639    call        00494CE0
 0049563E    test        al,al
>00495640    je          00495654
 00495642    mov         eax,dword ptr [ebp-8]
 00495645    push        eax
 00495646    mov         eax,dword ptr [ebp-4]
 00495649    call        00494F78
 0049564E    push        eax
 0049564F    call        comctl32.ImageList_Remove
 00495654    mov         eax,dword ptr [ebp-4]
 00495657    mov         si,0FFEF
 0049565B    call        @CallDynaInst
 00495660    xor         eax,eax
 00495662    pop         edx
 00495663    pop         ecx
 00495664    pop         ecx
 00495665    mov         dword ptr fs:[eax],edx
 00495668    push        49567D
 0049566D    lea         eax,[ebp-0C]
 00495670    call        @LStrClr
 00495675    ret
>00495676    jmp         @HandleFinally
>0049567B    jmp         0049566D
 0049567D    pop         esi
 0049567E    mov         esp,ebp
 00495680    pop         ebp
 00495681    ret
end;*}

//00495684
procedure sub_00495684(?:TCustomImageList; ?:TCustomImageList);
begin
{*
 00495684    push        ebp
 00495685    mov         ebp,esp
 00495687    push        ecx
 00495688    mov         dword ptr [ebp-4],eax
 0049568B    or          edx,0FFFFFFFF
 0049568E    mov         eax,dword ptr [ebp-4]
 00495691    call        004955E8
 00495696    pop         ecx
 00495697    pop         ebp
 00495698    ret
*}
end;

//0049569C
procedure TImageList.SetBkColor(Value:TColor);
begin
{*
 0049569C    push        ebp
 0049569D    mov         ebp,esp
 0049569F    add         esp,0FFFFFFF8
 004956A2    push        esi
 004956A3    mov         dword ptr [ebp-8],edx
 004956A6    mov         dword ptr [ebp-4],eax
 004956A9    mov         eax,dword ptr [ebp-4]
 004956AC    call        00494CE0
 004956B1    test        al,al
>004956B3    je          004956CC
 004956B5    mov         eax,dword ptr [ebp-8]
 004956B8    call        00494A30
 004956BD    push        eax
 004956BE    mov         eax,dword ptr [ebp-4]
 004956C1    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 004956C4    push        eax
 004956C5    call        comctl32.ImageList_SetBkColor
>004956CA    jmp         004956D5
 004956CC    mov         eax,dword ptr [ebp-8]
 004956CF    mov         edx,dword ptr [ebp-4]
 004956D2    mov         dword ptr [edx+44],eax;TImageList.FBkColor:TColor
 004956D5    mov         eax,dword ptr [ebp-4]
 004956D8    mov         si,0FFEF
 004956DC    call        @CallDynaInst;TCustomImageList.sub_00495EA0
 004956E1    pop         esi
 004956E2    pop         ecx
 004956E3    pop         ecx
 004956E4    pop         ebp
 004956E5    ret
*}
end;

//004956E8
{*function TImageList.GetBkColor:?;
begin
 004956E8    push        ebp
 004956E9    mov         ebp,esp
 004956EB    add         esp,0FFFFFFF8
 004956EE    mov         dword ptr [ebp-4],eax
 004956F1    mov         eax,dword ptr [ebp-4]
 004956F4    call        00494CE0
 004956F9    test        al,al
>004956FB    je          00495715
 004956FD    mov         eax,dword ptr [ebp-4]
 00495700    call        00494F78
 00495705    push        eax
 00495706    call        comctl32.ImageList_GetBkColor
 0049570B    call        00494A6C
 00495710    mov         dword ptr [ebp-8],eax
>00495713    jmp         0049571E
 00495715    mov         eax,dword ptr [ebp-4]
 00495718    mov         eax,dword ptr [eax+44];TImageList.FBkColor:TColor
 0049571B    mov         dword ptr [ebp-8],eax
 0049571E    mov         eax,dword ptr [ebp-8]
 00495721    pop         ecx
 00495722    pop         ecx
 00495723    pop         ebp
 00495724    ret
end;*}

//00495728
{*procedure sub_00495728(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00495728    push        ebp
 00495729    mov         ebp,esp
 0049572B    add         esp,0FFFFFFC8
 0049572E    mov         dword ptr [ebp-0C],ecx
 00495731    mov         dword ptr [ebp-8],edx
 00495734    mov         dword ptr [ebp-4],eax
 00495737    mov         eax,dword ptr [ebp-4]
 0049573A    call        00494CE0
 0049573F    test        al,al
>00495741    je          00495950
 00495747    cmp         byte ptr [ebp+8],0
>0049574B    je          00495797
 0049574D    mov         eax,dword ptr [ebp+0C]
 00495750    push        eax
 00495751    mov         eax,dword ptr [ebp-4]
 00495754    mov         eax,dword ptr [eax+48];TCustomImageList.FBlendColor:TColor
 00495757    call        00494A30
 0049575C    push        eax
 0049575D    mov         eax,dword ptr [ebp-4]
 00495760    call        TImageList.GetBkColor
 00495765    call        00494A30
 0049576A    push        eax
 0049576B    push        0
 0049576D    push        0
 0049576F    mov         eax,dword ptr [ebp+10]
 00495772    push        eax
 00495773    mov         eax,dword ptr [ebp+14]
 00495776    push        eax
 00495777    mov         eax,dword ptr [ebp-0C]
 0049577A    call        0042F6A0
 0049577F    push        eax
 00495780    mov         eax,dword ptr [ebp-8]
 00495783    push        eax
 00495784    mov         eax,dword ptr [ebp-4]
 00495787    call        00494F78
 0049578C    push        eax
 0049578D    call        comctl32.ImageList_DrawEx
>00495792    jmp         00495950
 00495797    mov         eax,dword ptr [ebp-4]
 0049579A    cmp         dword ptr [eax+54],0;TCustomImageList.FMonoBitmap:TBitmap
>0049579E    jne         004957E1
 004957A0    mov         dl,1
 004957A2    mov         eax,[0042CF48];TBitmap
 004957A7    call        TBitmap.Create;TBitmap.Create
 004957AC    mov         edx,dword ptr [ebp-4]
 004957AF    mov         dword ptr [edx+54],eax;TCustomImageList.FMonoBitmap:TBitmap
 004957B2    mov         eax,dword ptr [ebp-4]
 004957B5    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 004957B8    mov         dword ptr [ebp-18],eax
 004957BB    mov         dl,1
 004957BD    mov         eax,dword ptr [ebp-18]
 004957C0    call        00435C48
 004957C5    mov         eax,dword ptr [ebp-4]
 004957C8    mov         edx,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004957CB    mov         eax,dword ptr [ebp-18]
 004957CE    mov         ecx,dword ptr [eax]
 004957D0    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004957D3    mov         eax,dword ptr [ebp-4]
 004957D6    mov         edx,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004957D9    mov         eax,dword ptr [ebp-18]
 004957DC    mov         ecx,dword ptr [eax]
 004957DE    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004957E1    mov         eax,dword ptr [ebp-4]
 004957E4    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 004957E7    call        0043498C
 004957EC    mov         eax,dword ptr [eax+14]
 004957EF    mov         edx,0FFFFFF
 004957F4    call        TBrush.SetColor
 004957F9    mov         eax,dword ptr [ebp-4]
 004957FC    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004957FF    push        eax
 00495800    lea         eax,[ebp-38]
 00495803    push        eax
 00495804    mov         eax,dword ptr [ebp-4]
 00495807    mov         ecx,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0049580A    xor         edx,edx
 0049580C    xor         eax,eax
 0049580E    call        0041E714
 00495813    lea         eax,[ebp-38]
 00495816    push        eax
 00495817    mov         eax,dword ptr [ebp-4]
 0049581A    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 0049581D    call        0043498C
 00495822    pop         edx
 00495823    call        0042F030
 00495828    push        0
 0049582A    push        0
 0049582C    push        0FF
 0049582E    push        0
 00495830    push        0
 00495832    push        0
 00495834    push        0
 00495836    mov         eax,dword ptr [ebp-4]
 00495839    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 0049583C    call        0043498C
 00495841    call        0042F6A0
 00495846    push        eax
 00495847    mov         eax,dword ptr [ebp-8]
 0049584A    push        eax
 0049584B    mov         eax,dword ptr [ebp-4]
 0049584E    call        00494F78
 00495853    push        eax
 00495854    call        comctl32.ImageList_DrawEx
 00495859    mov         eax,dword ptr [ebp+10]
 0049585C    mov         edx,dword ptr [ebp-4]
 0049585F    add         eax,dword ptr [edx+30];TCustomImageList.FHeight:Integer
 00495862    push        eax
 00495863    lea         eax,[ebp-28]
 00495866    push        eax
 00495867    mov         ecx,dword ptr [ebp+14]
 0049586A    mov         eax,dword ptr [ebp-4]
 0049586D    add         ecx,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 00495870    mov         edx,dword ptr [ebp+10]
 00495873    mov         eax,dword ptr [ebp+14]
 00495876    call        0041E714
 0049587B    mov         eax,dword ptr [ebp-4]
 0049587E    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 00495881    call        0043498C
 00495886    call        0042F6A0
 0049588B    mov         dword ptr [ebp-14],eax
 0049588E    mov         eax,dword ptr [ebp-0C]
 00495891    mov         eax,dword ptr [eax+14]
 00495894    mov         edx,0FF000014
 00495899    call        TBrush.SetColor
 0049589E    mov         eax,dword ptr [ebp-0C]
 004958A1    call        0042F6A0
 004958A6    mov         dword ptr [ebp-10],eax
 004958A9    push        0FFFFFF
 004958AE    mov         eax,dword ptr [ebp-10]
 004958B1    push        eax
 004958B2    call        gdi32.SetTextColor
 004958B7    push        0
 004958B9    mov         eax,dword ptr [ebp-10]
 004958BC    push        eax
 004958BD    call        gdi32.SetBkColor
 004958C2    push        0E20746
 004958C7    push        0
 004958C9    push        0
 004958CB    mov         eax,dword ptr [ebp-14]
 004958CE    push        eax
 004958CF    mov         eax,dword ptr [ebp-4]
 004958D2    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004958D5    push        eax
 004958D6    mov         eax,dword ptr [ebp-4]
 004958D9    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004958DC    push        eax
 004958DD    mov         eax,dword ptr [ebp+10]
 004958E0    inc         eax
 004958E1    push        eax
 004958E2    mov         eax,dword ptr [ebp+14]
 004958E5    inc         eax
 004958E6    push        eax
 004958E7    mov         eax,dword ptr [ebp-10]
 004958EA    push        eax
 004958EB    call        gdi32.BitBlt
 004958F0    mov         eax,dword ptr [ebp-0C]
 004958F3    mov         eax,dword ptr [eax+14]
 004958F6    mov         edx,0FF000010
 004958FB    call        TBrush.SetColor
 00495900    mov         eax,dword ptr [ebp-0C]
 00495903    call        0042F6A0
 00495908    mov         dword ptr [ebp-10],eax
 0049590B    push        0FFFFFF
 00495910    mov         eax,dword ptr [ebp-10]
 00495913    push        eax
 00495914    call        gdi32.SetTextColor
 00495919    push        0
 0049591B    mov         eax,dword ptr [ebp-10]
 0049591E    push        eax
 0049591F    call        gdi32.SetBkColor
 00495924    push        0E20746
 00495929    push        0
 0049592B    push        0
 0049592D    mov         eax,dword ptr [ebp-14]
 00495930    push        eax
 00495931    mov         eax,dword ptr [ebp-4]
 00495934    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 00495937    push        eax
 00495938    mov         eax,dword ptr [ebp-4]
 0049593B    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0049593E    push        eax
 0049593F    mov         eax,dword ptr [ebp+10]
 00495942    push        eax
 00495943    mov         eax,dword ptr [ebp+14]
 00495946    push        eax
 00495947    mov         eax,dword ptr [ebp-10]
 0049594A    push        eax
 0049594B    call        gdi32.BitBlt
 00495950    mov         esp,ebp
 00495952    pop         ebp
 00495953    ret         10
end;*}

//00495958
{*procedure sub_00495958(?:TImageList; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00495958    push        ebp
 00495959    mov         ebp,esp
 0049595B    add         esp,0FFFFFFF4
 0049595E    mov         dword ptr [ebp-0C],ecx
 00495961    mov         dword ptr [ebp-8],edx
 00495964    mov         dword ptr [ebp-4],eax
 00495967    mov         eax,dword ptr [ebp+10]
 0049596A    push        eax
 0049596B    mov         eax,dword ptr [ebp+0C]
 0049596E    push        eax
 0049596F    mov         eax,dword ptr [ebp-4]
 00495972    mov         al,byte ptr [eax+40]
 00495975    push        eax
 00495976    mov         eax,dword ptr [ebp-4]
 00495979    mov         al,byte ptr [eax+43]
 0049597C    push        eax
 0049597D    mov         al,byte ptr [ebp+8]
 00495980    push        eax
 00495981    mov         ecx,dword ptr [ebp-0C]
 00495984    mov         edx,dword ptr [ebp-8]
 00495987    mov         eax,dword ptr [ebp-4]
 0049598A    call        00495998
 0049598F    mov         esp,ebp
 00495991    pop         ebp
 00495992    ret         0C
end;*}

//00495998
{*procedure sub_00495998(?:?; ?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00495998    push        ebp
 00495999    mov         ebp,esp
 0049599B    add         esp,0FFFFFFF4
 0049599E    push        ebx
 0049599F    mov         dword ptr [ebp-0C],ecx
 004959A2    mov         dword ptr [ebp-8],edx
 004959A5    mov         dword ptr [ebp-4],eax
 004959A8    mov         eax,dword ptr [ebp-4]
 004959AB    call        00494CE0
 004959B0    test        al,al
>004959B2    je          004959E7
 004959B4    mov         eax,dword ptr [ebp-0C]
 004959B7    push        eax
 004959B8    mov         eax,dword ptr [ebp+18]
 004959BB    push        eax
 004959BC    xor         eax,eax
 004959BE    mov         al,byte ptr [ebp+10]
 004959C1    mov         eax,dword ptr [eax*4+56C8AC]
 004959C8    xor         edx,edx
 004959CA    mov         dl,byte ptr [ebp+0C]
 004959CD    or          eax,dword ptr [edx*4+56C8BC]
 004959D4    push        eax
 004959D5    mov         al,byte ptr [ebp+8]
 004959D8    push        eax
 004959D9    mov         ecx,dword ptr [ebp-8]
 004959DC    mov         edx,dword ptr [ebp+14]
 004959DF    mov         eax,dword ptr [ebp-4]
 004959E2    mov         ebx,dword ptr [eax]
 004959E4    call        dword ptr [ebx+30]
 004959E7    pop         ebx
 004959E8    mov         esp,ebp
 004959EA    pop         ebp
 004959EB    ret         14
end;*}

//004959F0
{*procedure sub_004959F0(?:?; ?:?; ?:?);
begin
 004959F0    push        ebp
 004959F1    mov         ebp,esp
 004959F3    add         esp,0FFFFFFCC
 004959F6    mov         dword ptr [ebp-0C],ecx
 004959F9    mov         dword ptr [ebp-8],edx
 004959FC    mov         dword ptr [ebp-4],eax
 004959FF    mov         eax,dword ptr [ebp-4]
 00495A02    mov         eax,dword ptr [eax+30]
 00495A05    push        eax
 00495A06    lea         eax,[ebp-34]
 00495A09    push        eax
 00495A0A    mov         eax,dword ptr [ebp-4]
 00495A0D    mov         ecx,dword ptr [eax+34]
 00495A10    xor         edx,edx
 00495A12    xor         eax,eax
 00495A14    call        0041E714
 00495A19    mov         eax,dword ptr [ebp-4]
 00495A1C    call        00496814
 00495A21    xor         eax,eax
 00495A23    push        ebp
 00495A24    push        495BA4
 00495A29    push        dword ptr fs:[eax]
 00495A2C    mov         dword ptr fs:[eax],esp
 00495A2F    mov         dl,1
 00495A31    mov         eax,[0042CF48];TBitmap
 00495A36    call        TBitmap.Create;TBitmap.Create
 00495A3B    mov         dword ptr [ebp-14],eax
 00495A3E    xor         eax,eax
 00495A40    push        ebp
 00495A41    push        495B87
 00495A46    push        dword ptr fs:[eax]
 00495A49    mov         dword ptr fs:[eax],esp
 00495A4C    mov         eax,dword ptr [ebp-4]
 00495A4F    mov         edx,dword ptr [eax+30]
 00495A52    mov         eax,dword ptr [ebp-14]
 00495A55    mov         ecx,dword ptr [eax]
 00495A57    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 00495A5A    mov         eax,dword ptr [ebp-4]
 00495A5D    mov         edx,dword ptr [eax+34]
 00495A60    mov         eax,dword ptr [ebp-14]
 00495A63    mov         ecx,dword ptr [eax]
 00495A65    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 00495A68    mov         dl,1
 00495A6A    mov         eax,[0042CF48];TBitmap
 00495A6F    call        TBitmap.Create;TBitmap.Create
 00495A74    mov         dword ptr [ebp-18],eax
 00495A77    xor         eax,eax
 00495A79    push        ebp
 00495A7A    push        495B6A
 00495A7F    push        dword ptr fs:[eax]
 00495A82    mov         dword ptr fs:[eax],esp
 00495A85    mov         dl,1
 00495A87    mov         eax,dword ptr [ebp-18]
 00495A8A    call        00435C48
 00495A8F    mov         eax,dword ptr [ebp-4]
 00495A92    mov         edx,dword ptr [eax+30]
 00495A95    mov         eax,dword ptr [ebp-18]
 00495A98    mov         ecx,dword ptr [eax]
 00495A9A    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 00495A9D    mov         eax,dword ptr [ebp-4]
 00495AA0    mov         edx,dword ptr [eax+34]
 00495AA3    mov         eax,dword ptr [ebp-18]
 00495AA6    mov         ecx,dword ptr [eax]
 00495AA8    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 00495AAB    mov         eax,dword ptr [ebp-8]
 00495AAE    push        eax
 00495AAF    call        comctl32.ImageList_GetImageCount
 00495AB4    dec         eax
 00495AB5    test        eax,eax
>00495AB7    jl          00495B54
 00495ABD    inc         eax
 00495ABE    mov         dword ptr [ebp-1C],eax
 00495AC1    mov         dword ptr [ebp-10],0
 00495AC8    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00495ACC    je          00495AD6
 00495ACE    mov         eax,dword ptr [ebp-0C]
 00495AD1    cmp         eax,dword ptr [ebp-10]
>00495AD4    jne         00495B48
 00495AD6    mov         eax,dword ptr [ebp-14]
 00495AD9    call        0043498C
 00495ADE    mov         dword ptr [ebp-20],eax
 00495AE1    lea         edx,[ebp-34]
 00495AE4    mov         eax,dword ptr [ebp-20]
 00495AE7    call        0042F030
 00495AEC    push        0
 00495AEE    push        0
 00495AF0    push        0
 00495AF2    mov         eax,dword ptr [ebp-20]
 00495AF5    call        0042F6A0
 00495AFA    push        eax
 00495AFB    mov         eax,dword ptr [ebp-10]
 00495AFE    push        eax
 00495AFF    mov         eax,dword ptr [ebp-8]
 00495B02    push        eax
 00495B03    call        comctl32.ImageList_Draw
 00495B08    mov         eax,dword ptr [ebp-18]
 00495B0B    call        0043498C
 00495B10    mov         dword ptr [ebp-24],eax
 00495B13    lea         edx,[ebp-34]
 00495B16    mov         eax,dword ptr [ebp-24]
 00495B19    call        0042F030
 00495B1E    push        10
 00495B20    push        0
 00495B22    push        0
 00495B24    mov         eax,dword ptr [ebp-24]
 00495B27    call        0042F6A0
 00495B2C    push        eax
 00495B2D    mov         eax,dword ptr [ebp-10]
 00495B30    push        eax
 00495B31    mov         eax,dword ptr [ebp-8]
 00495B34    push        eax
 00495B35    call        comctl32.ImageList_Draw
 00495B3A    mov         ecx,dword ptr [ebp-18]
 00495B3D    mov         edx,dword ptr [ebp-14]
 00495B40    mov         eax,dword ptr [ebp-4]
 00495B43    call        00495110
 00495B48    inc         dword ptr [ebp-10]
 00495B4B    dec         dword ptr [ebp-1C]
>00495B4E    jne         00495AC8
 00495B54    xor         eax,eax
 00495B56    pop         edx
 00495B57    pop         ecx
 00495B58    pop         ecx
 00495B59    mov         dword ptr fs:[eax],edx
 00495B5C    push        495B71
 00495B61    mov         eax,dword ptr [ebp-18]
 00495B64    call        TObject.Free
 00495B69    ret
>00495B6A    jmp         @HandleFinally
>00495B6F    jmp         00495B61
 00495B71    xor         eax,eax
 00495B73    pop         edx
 00495B74    pop         ecx
 00495B75    pop         ecx
 00495B76    mov         dword ptr fs:[eax],edx
 00495B79    push        495B8E
 00495B7E    mov         eax,dword ptr [ebp-14]
 00495B81    call        TObject.Free
 00495B86    ret
>00495B87    jmp         @HandleFinally
>00495B8C    jmp         00495B7E
 00495B8E    xor         eax,eax
 00495B90    pop         edx
 00495B91    pop         ecx
 00495B92    pop         ecx
 00495B93    mov         dword ptr fs:[eax],edx
 00495B96    push        495BAB
 00495B9B    mov         eax,dword ptr [ebp-4]
 00495B9E    call        00496824
 00495BA3    ret
>00495BA4    jmp         @HandleFinally
>00495BA9    jmp         00495B9B
 00495BAB    mov         esp,ebp
 00495BAD    pop         ebp
 00495BAE    ret
end;*}

//00495BB0
procedure sub_00495BB0(?:TCustomImageList; ?:TCustomImageList);
begin
{*
 00495BB0    push        ebp
 00495BB1    mov         ebp,esp
 00495BB3    add         esp,0FFFFFFF8
 00495BB6    mov         dword ptr [ebp-8],edx
 00495BB9    mov         dword ptr [ebp-4],eax
 00495BBC    cmp         dword ptr [ebp-8],0
>00495BC0    je          00495BD7
 00495BC2    mov         eax,dword ptr [ebp-8]
 00495BC5    call        00494F78
 00495BCA    mov         edx,eax
 00495BCC    or          ecx,0FFFFFFFF
 00495BCF    mov         eax,dword ptr [ebp-4]
 00495BD2    call        004959F0
 00495BD7    pop         ecx
 00495BD8    pop         ecx
 00495BD9    pop         ebp
 00495BDA    ret
*}
end;

//00495BDC
{*procedure sub_00495BDC(?:?);
begin
 00495BDC    push        ebp
 00495BDD    mov         ebp,esp
 00495BDF    add         esp,0FFFFFFF4
 00495BE2    mov         dword ptr [ebp-8],edx
 00495BE5    mov         dword ptr [ebp-4],eax
 00495BE8    cmp         dword ptr [ebp-8],0
>00495BEC    jne         00495BFB
 00495BEE    mov         eax,dword ptr [ebp-4]
 00495BF1    call        0049500C
>00495BF6    jmp         00495CD6
 00495BFB    mov         eax,dword ptr [ebp-8]
 00495BFE    mov         edx,dword ptr ds:[494958];TCustomImageList
 00495C04    call        @IsClass
 00495C09    test        al,al
>00495C0B    je          00495CCB
 00495C11    mov         eax,dword ptr [ebp-4]
 00495C14    call        00495684
 00495C19    mov         eax,dword ptr [ebp-8]
 00495C1C    mov         dword ptr [ebp-0C],eax
 00495C1F    mov         eax,dword ptr [ebp-0C]
 00495C22    mov         al,byte ptr [eax+41]
 00495C25    mov         edx,dword ptr [ebp-4]
 00495C28    mov         byte ptr [edx+41],al;TCustomImageList.FMasked:Boolean
 00495C2B    mov         eax,dword ptr [ebp-0C]
 00495C2E    mov         al,byte ptr [eax+43]
 00495C31    mov         edx,dword ptr [ebp-4]
 00495C34    mov         byte ptr [edx+43],al;TCustomImageList.FImageType:TImageType
 00495C37    mov         eax,dword ptr [ebp-0C]
 00495C3A    mov         dl,byte ptr [eax+40]
 00495C3D    mov         eax,dword ptr [ebp-4]
 00495C40    call        TImageList.SetDrawingStyle
 00495C45    mov         eax,dword ptr [ebp-0C]
 00495C48    mov         al,byte ptr [eax+42]
 00495C4B    mov         edx,dword ptr [ebp-4]
 00495C4E    mov         byte ptr [edx+42],al;TCustomImageList.FShareImages:Boolean
 00495C51    mov         eax,dword ptr [ebp-0C]
 00495C54    call        00494F78
 00495C59    mov         edx,eax
 00495C5B    mov         eax,dword ptr [ebp-4]
 00495C5E    call        00494DE8
 00495C63    mov         eax,dword ptr [ebp-4]
 00495C66    call        00494CE0
 00495C6B    test        al,al
>00495C6D    jne         00495C79
 00495C6F    mov         eax,dword ptr [ebp-4]
 00495C72    call        00494CFC
>00495C77    jmp         00495C95
 00495C79    mov         eax,dword ptr [ebp-4]
 00495C7C    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 00495C7F    push        eax
 00495C80    mov         eax,dword ptr [ebp-4]
 00495C83    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 00495C86    push        eax
 00495C87    mov         eax,dword ptr [ebp-4]
 00495C8A    call        00494F78
 00495C8F    push        eax
 00495C90    call        comctl32.ImageList_SetIconSize
 00495C95    mov         eax,dword ptr [ebp-0C]
 00495C98    call        00494F78
 00495C9D    push        eax
 00495C9E    call        comctl32.ImageList_GetBkColor
 00495CA3    call        00494A6C
 00495CA8    mov         edx,eax
 00495CAA    mov         eax,dword ptr [ebp-4]
 00495CAD    call        TImageList.SetBkColor
 00495CB2    mov         eax,dword ptr [ebp-0C]
 00495CB5    mov         eax,dword ptr [eax+48]
 00495CB8    mov         edx,dword ptr [ebp-4]
 00495CBB    mov         dword ptr [edx+48],eax;TCustomImageList.FBlendColor:TColor
 00495CBE    mov         edx,dword ptr [ebp-0C]
 00495CC1    mov         eax,dword ptr [ebp-4]
 00495CC4    call        00495BB0
>00495CC9    jmp         00495CD6
 00495CCB    mov         edx,dword ptr [ebp-8]
 00495CCE    mov         eax,dword ptr [ebp-4]
 00495CD1    call        00420AD4
 00495CD6    mov         esp,ebp
 00495CD8    pop         ebp
 00495CD9    ret
end;*}

//00495CDC
{*procedure sub_00495CDC(?:?);
begin
 00495CDC    push        ebp
 00495CDD    mov         ebp,esp
 00495CDF    add         esp,0FFFFFFF4
 00495CE2    mov         dword ptr [ebp-8],edx
 00495CE5    mov         dword ptr [ebp-4],eax
 00495CE8    mov         eax,dword ptr [ebp-8]
 00495CEB    mov         edx,dword ptr ds:[494958];TCustomImageList
 00495CF1    call        @IsClass
 00495CF6    test        al,al
>00495CF8    je          00495DB8
 00495CFE    mov         eax,dword ptr [ebp-8]
 00495D01    mov         dword ptr [ebp-0C],eax
 00495D04    mov         eax,dword ptr [ebp-4]
 00495D07    mov         al,byte ptr [eax+41];TCustomImageList.FMasked:Boolean
 00495D0A    mov         edx,dword ptr [ebp-0C]
 00495D0D    mov         byte ptr [edx+41],al
 00495D10    mov         eax,dword ptr [ebp-4]
 00495D13    mov         al,byte ptr [eax+43];TCustomImageList.FImageType:TImageType
 00495D16    mov         edx,dword ptr [ebp-0C]
 00495D19    mov         byte ptr [edx+43],al
 00495D1C    mov         eax,dword ptr [ebp-4]
 00495D1F    mov         dl,byte ptr [eax+40];TCustomImageList.FDrawingStyle:TDrawingStyle
 00495D22    mov         eax,dword ptr [ebp-0C]
 00495D25    call        TImageList.SetDrawingStyle
 00495D2A    mov         eax,dword ptr [ebp-4]
 00495D2D    mov         al,byte ptr [eax+42];TCustomImageList.FShareImages:Boolean
 00495D30    mov         edx,dword ptr [ebp-0C]
 00495D33    mov         byte ptr [edx+42],al
 00495D36    mov         eax,dword ptr [ebp-4]
 00495D39    mov         eax,dword ptr [eax+48];TCustomImageList.FBlendColor:TColor
 00495D3C    mov         edx,dword ptr [ebp-0C]
 00495D3F    mov         dword ptr [edx+48],eax
 00495D42    mov         eax,dword ptr [ebp-0C]
 00495D45    call        00495684
 00495D4A    mov         eax,dword ptr [ebp-4]
 00495D4D    call        00494F78
 00495D52    mov         edx,eax
 00495D54    mov         eax,dword ptr [ebp-0C]
 00495D57    call        00494DE8
 00495D5C    mov         eax,dword ptr [ebp-0C]
 00495D5F    call        00494CE0
 00495D64    test        al,al
>00495D66    jne         00495D72
 00495D68    mov         eax,dword ptr [ebp-0C]
 00495D6B    call        00494CFC
>00495D70    jmp         00495D8E
 00495D72    mov         eax,dword ptr [ebp-0C]
 00495D75    mov         eax,dword ptr [eax+30]
 00495D78    push        eax
 00495D79    mov         eax,dword ptr [ebp-0C]
 00495D7C    mov         eax,dword ptr [eax+34]
 00495D7F    push        eax
 00495D80    mov         eax,dword ptr [ebp-0C]
 00495D83    call        00494F78
 00495D88    push        eax
 00495D89    call        comctl32.ImageList_SetIconSize
 00495D8E    mov         eax,dword ptr [ebp-4]
 00495D91    call        00494F78
 00495D96    push        eax
 00495D97    call        comctl32.ImageList_GetBkColor
 00495D9C    call        00494A6C
 00495DA1    mov         edx,eax
 00495DA3    mov         eax,dword ptr [ebp-0C]
 00495DA6    call        TImageList.SetBkColor
 00495DAB    mov         edx,dword ptr [ebp-4]
 00495DAE    mov         eax,dword ptr [ebp-0C]
 00495DB1    call        00495BB0
>00495DB6    jmp         00495DC3
 00495DB8    mov         edx,dword ptr [ebp-8]
 00495DBB    mov         eax,dword ptr [ebp-4]
 00495DBE    call        00420BD8
 00495DC3    mov         esp,ebp
 00495DC5    pop         ebp
 00495DC6    ret
end;*}

//00495DC8
{*procedure sub_00495DC8(?:?; ?:?);
begin
 00495DC8    push        ebp
 00495DC9    mov         ebp,esp
 00495DCB    add         esp,0FFFFFFF4
 00495DCE    xor         ecx,ecx
 00495DD0    mov         dword ptr [ebp-0C],ecx
 00495DD3    mov         dword ptr [ebp-8],edx
 00495DD6    mov         dword ptr [ebp-4],eax
 00495DD9    xor         eax,eax
 00495DDB    push        ebp
 00495DDC    push        495E44
 00495DE1    push        dword ptr fs:[eax]
 00495DE4    mov         dword ptr fs:[eax],esp
 00495DE7    cmp         dword ptr [ebp-8],0
>00495DEB    je          00495E2E
 00495DED    mov         eax,dword ptr [ebp-8]
 00495DF0    mov         edx,dword ptr [eax]
 00495DF2    call        dword ptr [edx+20]
 00495DF5    mov         edx,dword ptr [ebp-4]
 00495DF8    cmp         eax,dword ptr [edx+30]
>00495DFB    jl          00495E0D
 00495DFD    mov         eax,dword ptr [ebp-8]
 00495E00    mov         edx,dword ptr [eax]
 00495E02    call        dword ptr [edx+2C]
 00495E05    mov         edx,dword ptr [ebp-4]
 00495E08    cmp         eax,dword ptr [edx+34]
>00495E0B    jge         00495E2E
 00495E0D    lea         edx,[ebp-0C]
 00495E10    mov         eax,[0056E150];^SInvalidImageSize:TResStringRec
 00495E15    call        LoadResString
 00495E1A    mov         ecx,dword ptr [ebp-0C]
 00495E1D    mov         dl,1
 00495E1F    mov         eax,[0041D40C];EInvalidOperation
 00495E24    call        Exception.Create;EInvalidOperation.Create
 00495E29    call        @RaiseExcept
 00495E2E    xor         eax,eax
 00495E30    pop         edx
 00495E31    pop         ecx
 00495E32    pop         ecx
 00495E33    mov         dword ptr fs:[eax],edx
 00495E36    push        495E4B
 00495E3B    lea         eax,[ebp-0C]
 00495E3E    call        @LStrClr
 00495E43    ret
>00495E44    jmp         @HandleFinally
>00495E49    jmp         00495E3B
 00495E4B    mov         esp,ebp
 00495E4D    pop         ebp
 00495E4E    ret
end;*}

//00495E50
procedure TImageList.SetDrawingStyle(Value:TDrawingStyle);
begin
{*
 00495E50    push        ebp
 00495E51    mov         ebp,esp
 00495E53    add         esp,0FFFFFFF8
 00495E56    push        esi
 00495E57    mov         byte ptr [ebp-5],dl
 00495E5A    mov         dword ptr [ebp-4],eax
 00495E5D    mov         al,byte ptr [ebp-5]
 00495E60    mov         edx,dword ptr [ebp-4]
 00495E63    cmp         al,byte ptr [edx+40];TImageList.FDrawingStyle:TDrawingStyle
>00495E66    je          00495E7D
 00495E68    mov         al,byte ptr [ebp-5]
 00495E6B    mov         edx,dword ptr [ebp-4]
 00495E6E    mov         byte ptr [edx+40],al;TImageList.FDrawingStyle:TDrawingStyle
 00495E71    mov         eax,dword ptr [ebp-4]
 00495E74    mov         si,0FFEF
 00495E78    call        @CallDynaInst;TCustomImageList.sub_00495EA0
 00495E7D    pop         esi
 00495E7E    pop         ecx
 00495E7F    pop         ecx
 00495E80    pop         ebp
 00495E81    ret
*}
end;

//00495E84
{*procedure sub_00495E84(?:?);
begin
 00495E84    push        ebp
 00495E85    mov         ebp,esp
 00495E87    add         esp,0FFFFFFF8
 00495E8A    mov         dword ptr [ebp-8],edx
 00495E8D    mov         dword ptr [ebp-4],eax
 00495E90    mov         ecx,dword ptr [ebp-8]
 00495E93    xor         edx,edx
 00495E95    xor         eax,eax
 00495E97    call        Point
 00495E9C    pop         ecx
 00495E9D    pop         ecx
 00495E9E    pop         ebp
 00495E9F    ret
end;*}

//00495EA0
procedure TCustomImageList.sub_00495EA0;
begin
{*
 00495EA0    push        ebp
 00495EA1    mov         ebp,esp
 00495EA3    add         esp,0FFFFFFF4
 00495EA6    push        ebx
 00495EA7    push        esi
 00495EA8    mov         dword ptr [ebp-4],eax
 00495EAB    mov         eax,dword ptr [ebp-4]
 00495EAE    mov         byte ptr [eax+58],1;TCustomImageList.FChanged:Boolean
 00495EB2    mov         eax,dword ptr [ebp-4]
 00495EB5    cmp         dword ptr [eax+5C],0;TCustomImageList.FUpdateCount:Integer
>00495EB9    jg          00495F12
 00495EBB    mov         eax,dword ptr [ebp-4]
 00495EBE    cmp         dword ptr [eax+4C],0;TCustomImageList.FClients:TList
>00495EC2    je          00495EFC
 00495EC4    mov         eax,dword ptr [ebp-4]
 00495EC7    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 00495ECA    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00495ECD    dec         eax
 00495ECE    test        eax,eax
>00495ED0    jl          00495EFC
 00495ED2    inc         eax
 00495ED3    mov         dword ptr [ebp-0C],eax
 00495ED6    mov         dword ptr [ebp-8],0
 00495EDD    mov         edx,dword ptr [ebp-8]
 00495EE0    mov         eax,dword ptr [ebp-4]
 00495EE3    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 00495EE6    call        TList.Get
 00495EEB    mov         si,0FFFF
 00495EEF    call        @CallDynaInst
 00495EF4    inc         dword ptr [ebp-8]
 00495EF7    dec         dword ptr [ebp-0C]
>00495EFA    jne         00495EDD
 00495EFC    mov         eax,dword ptr [ebp-4]
 00495EFF    cmp         word ptr [eax+62],0;TCustomImageList.?f62:word
>00495F04    je          00495F12
 00495F06    mov         ebx,dword ptr [ebp-4]
 00495F09    mov         edx,dword ptr [ebp-4]
 00495F0C    mov         eax,dword ptr [ebx+64];TCustomImageList.?f64:dword
 00495F0F    call        dword ptr [ebx+60];TCustomImageList.FOnChange
 00495F12    pop         esi
 00495F13    pop         ebx
 00495F14    mov         esp,ebp
 00495F16    pop         ebp
 00495F17    ret
*}
end;

//00495F18
procedure sub_00495F18(?:TCustomImageList; ?:TChangeLink);
begin
{*
 00495F18    push        ebp
 00495F19    mov         ebp,esp
 00495F1B    add         esp,0FFFFFFF0
 00495F1E    mov         dword ptr [ebp-8],edx
 00495F21    mov         dword ptr [ebp-4],eax
 00495F24    mov         eax,dword ptr [ebp-4]
 00495F27    cmp         dword ptr [eax+4C],0;TCustomImageList.FClients:TList
>00495F2B    je          00495F79
 00495F2D    mov         eax,dword ptr [ebp-4]
 00495F30    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 00495F33    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00495F36    dec         eax
 00495F37    test        eax,eax
>00495F39    jl          00495F79
 00495F3B    inc         eax
 00495F3C    mov         dword ptr [ebp-10],eax
 00495F3F    mov         dword ptr [ebp-0C],0
 00495F46    mov         edx,dword ptr [ebp-0C]
 00495F49    mov         eax,dword ptr [ebp-4]
 00495F4C    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 00495F4F    call        TList.Get
 00495F54    cmp         eax,dword ptr [ebp-8]
>00495F57    jne         00495F71
 00495F59    mov         eax,dword ptr [ebp-8]
 00495F5C    xor         edx,edx
 00495F5E    mov         dword ptr [eax+4],edx;TChangeLink.FSender:TCustomImageList
 00495F61    mov         edx,dword ptr [ebp-0C]
 00495F64    mov         eax,dword ptr [ebp-4]
 00495F67    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 00495F6A    call        00420094
>00495F6F    jmp         00495F79
 00495F71    inc         dword ptr [ebp-0C]
 00495F74    dec         dword ptr [ebp-10]
>00495F77    jne         00495F46
 00495F79    mov         esp,ebp
 00495F7B    pop         ebp
 00495F7C    ret
*}
end;

//00495F80
procedure sub_00495F80(?:TCustomImageList; ?:TChangeLink);
begin
{*
 00495F80    push        ebp
 00495F81    mov         ebp,esp
 00495F83    add         esp,0FFFFFFF8
 00495F86    mov         dword ptr [ebp-8],edx
 00495F89    mov         dword ptr [ebp-4],eax
 00495F8C    mov         eax,dword ptr [ebp-4]
 00495F8F    mov         edx,dword ptr [ebp-8]
 00495F92    mov         dword ptr [edx+4],eax;TChangeLink.FSender:TCustomImageList
 00495F95    mov         eax,dword ptr [ebp-4]
 00495F98    cmp         dword ptr [eax+4C],0;TCustomImageList.FClients:TList
>00495F9C    je          00495FAC
 00495F9E    mov         edx,dword ptr [ebp-8]
 00495FA1    mov         eax,dword ptr [ebp-4]
 00495FA4    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 00495FA7    call        TList.Add
 00495FAC    pop         ecx
 00495FAD    pop         ecx
 00495FAE    pop         ebp
 00495FAF    ret
*}
end;

//00495FB0
{*function sub_00495FB0(?:TMemoryStream; ?:TMemoryStream):?;
begin
 00495FB0    push        ebp
 00495FB1    mov         ebp,esp
 00495FB3    add         esp,0FFFFFFF4
 00495FB6    mov         dword ptr [ebp-8],edx
 00495FB9    mov         dword ptr [ebp-4],eax
 00495FBC    mov         eax,dword ptr [ebp-4]
 00495FBF    mov         edx,dword ptr [eax]
 00495FC1    call        dword ptr [edx]
 00495FC3    push        edx
 00495FC4    push        eax
 00495FC5    mov         eax,dword ptr [ebp-8]
 00495FC8    mov         edx,dword ptr [eax]
 00495FCA    call        dword ptr [edx]
 00495FCC    cmp         edx,dword ptr [esp+4]
>00495FD0    jne         00495FD5
 00495FD2    cmp         eax,dword ptr [esp]
 00495FD5    pop         edx
 00495FD6    pop         eax
>00495FD7    jne         00495FF7
 00495FD9    mov         eax,dword ptr [ebp-4]
 00495FDC    mov         edx,dword ptr [eax]
 00495FDE    call        dword ptr [edx]
 00495FE0    mov         ecx,eax
 00495FE2    mov         eax,dword ptr [ebp-8]
 00495FE5    mov         edx,dword ptr [eax+4]
 00495FE8    mov         eax,dword ptr [ebp-4]
 00495FEB    mov         eax,dword ptr [eax+4]
 00495FEE    call        CompareMem
 00495FF3    test        al,al
>00495FF5    jne         00495FFB
 00495FF7    xor         eax,eax
>00495FF9    jmp         00495FFD
 00495FFB    mov         al,1
 00495FFD    mov         byte ptr [ebp-9],al
 00496000    mov         al,byte ptr [ebp-9]
 00496003    mov         esp,ebp
 00496005    pop         ebp
 00496006    ret
end;*}

//00496008
{*function sub_00496008(?:?; ?:?):?;
begin
 00496008    push        ebp
 00496009    mov         ebp,esp
 0049600B    add         esp,0FFFFFFEC
 0049600E    push        ebx
 0049600F    mov         dword ptr [ebp-8],edx
 00496012    mov         dword ptr [ebp-4],eax
 00496015    cmp         dword ptr [ebp-8],0
>00496019    je          00496031
 0049601B    mov         eax,dword ptr [ebp-4]
 0049601E    call        00495384
 00496023    mov         ebx,eax
 00496025    mov         eax,dword ptr [ebp-8]
 00496028    call        00495384
 0049602D    cmp         ebx,eax
>0049602F    je          0049603A
 00496031    mov         byte ptr [ebp-9],0
>00496035    jmp         004960F5
 0049603A    mov         eax,dword ptr [ebp-4]
 0049603D    call        00495384
 00496042    test        eax,eax
>00496044    jne         0049605B
 00496046    mov         eax,dword ptr [ebp-8]
 00496049    call        00495384
 0049604E    test        eax,eax
>00496050    jne         0049605B
 00496052    mov         byte ptr [ebp-9],1
>00496056    jmp         004960F5
 0049605B    mov         dl,1
 0049605D    mov         eax,[0041DE14];TMemoryStream
 00496062    call        TObject.Create;TMemoryStream.Create
 00496067    mov         dword ptr [ebp-10],eax
 0049606A    xor         eax,eax
 0049606C    push        ebp
 0049606D    push        4960EE
 00496072    push        dword ptr fs:[eax]
 00496075    mov         dword ptr fs:[eax],esp
 00496078    mov         edx,dword ptr [ebp-10]
 0049607B    mov         eax,dword ptr [ebp-4]
 0049607E    mov         ecx,dword ptr [eax]
 00496080    call        dword ptr [ecx+3C]
 00496083    mov         dl,1
 00496085    mov         eax,[0041DE14];TMemoryStream
 0049608A    call        TObject.Create;TMemoryStream.Create
 0049608F    mov         dword ptr [ebp-14],eax
 00496092    xor         eax,eax
 00496094    push        ebp
 00496095    push        4960D1
 0049609A    push        dword ptr fs:[eax]
 0049609D    mov         dword ptr fs:[eax],esp
 004960A0    mov         edx,dword ptr [ebp-14]
 004960A3    mov         eax,dword ptr [ebp-8]
 004960A6    mov         ecx,dword ptr [eax]
 004960A8    call        dword ptr [ecx+3C]
 004960AB    push        ebp
 004960AC    mov         edx,dword ptr [ebp-14]
 004960AF    mov         eax,dword ptr [ebp-10]
 004960B2    call        00495FB0
 004960B7    pop         ecx
 004960B8    mov         byte ptr [ebp-9],al
 004960BB    xor         eax,eax
 004960BD    pop         edx
 004960BE    pop         ecx
 004960BF    pop         ecx
 004960C0    mov         dword ptr fs:[eax],edx
 004960C3    push        4960D8
 004960C8    mov         eax,dword ptr [ebp-14]
 004960CB    call        TObject.Free
 004960D0    ret
>004960D1    jmp         @HandleFinally
>004960D6    jmp         004960C8
 004960D8    xor         eax,eax
 004960DA    pop         edx
 004960DB    pop         ecx
 004960DC    pop         ecx
 004960DD    mov         dword ptr fs:[eax],edx
 004960E0    push        4960F5
 004960E5    mov         eax,dword ptr [ebp-10]
 004960E8    call        TObject.Free
 004960ED    ret
>004960EE    jmp         @HandleFinally
>004960F3    jmp         004960E5
 004960F5    mov         al,byte ptr [ebp-9]
 004960F8    pop         ebx
 004960F9    mov         esp,ebp
 004960FB    pop         ebp
 004960FC    ret
end;*}

//00496100
{*function sub_00496100(?:?):?;
begin
 00496100    push        ebp
 00496101    mov         ebp,esp
 00496103    push        ecx
 00496104    mov         eax,dword ptr [ebp+8]
 00496107    mov         eax,dword ptr [eax-4]
 0049610A    cmp         dword ptr [eax+20],0
>0049610E    je          0049614B
 00496110    mov         eax,dword ptr [ebp+8]
 00496113    mov         eax,dword ptr [eax-4]
 00496116    mov         eax,dword ptr [eax+20]
 00496119    mov         edx,dword ptr ds:[494958];TCustomImageList
 0049611F    call        @IsClass
 00496124    test        al,al
>00496126    je          00496144
 00496128    mov         eax,dword ptr [ebp+8]
 0049612B    mov         eax,dword ptr [eax-4]
 0049612E    mov         edx,dword ptr [eax+20]
 00496131    mov         eax,dword ptr [ebp+8]
 00496134    mov         eax,dword ptr [eax-8]
 00496137    call        00496008
 0049613C    test        al,al
>0049613E    je          00496144
 00496140    xor         eax,eax
>00496142    jmp         00496146
 00496144    mov         al,1
 00496146    mov         byte ptr [ebp-1],al
>00496149    jmp         0049615C
 0049614B    mov         eax,dword ptr [ebp+8]
 0049614E    mov         eax,dword ptr [eax-8]
 00496151    call        00495384
 00496156    test        eax,eax
 00496158    setg        byte ptr [ebp-1]
 0049615C    mov         al,byte ptr [ebp-1]
 0049615F    pop         ecx
 00496160    pop         ebp
 00496161    ret
end;*}

//00496164
procedure TCustomImageList.DefineProperties(Filer:TFiler);
begin
{*
 00496164    push        ebp
 00496165    mov         ebp,esp
 00496167    add         esp,0FFFFFFF8
 0049616A    push        ebx
 0049616B    mov         dword ptr [ebp-4],edx
 0049616E    mov         dword ptr [ebp-8],eax
 00496171    mov         edx,dword ptr [ebp-4]
 00496174    mov         eax,dword ptr [ebp-8]
 00496177    call        TComponent.DefineProperties
 0049617C    mov         eax,dword ptr [ebp-8]
 0049617F    push        eax
 00496180    mov         eax,dword ptr [eax]
 00496182    mov         eax,dword ptr [eax+38]
 00496185    push        eax
 00496186    mov         eax,dword ptr [ebp-8]
 00496189    push        eax
 0049618A    mov         eax,dword ptr [eax]
 0049618C    mov         eax,dword ptr [eax+3C]
 0049618F    push        eax
 00496190    push        ebp
 00496191    call        00496100
 00496196    pop         ecx
 00496197    mov         ecx,eax
 00496199    mov         edx,4961B4;'Bitmap'
 0049619E    mov         eax,dword ptr [ebp-4]
 004961A1    mov         ebx,dword ptr [eax]
 004961A3    call        dword ptr [ebx+8]
 004961A6    pop         ebx
 004961A7    pop         ecx
 004961A8    pop         ecx
 004961A9    pop         ebp
 004961AA    ret
*}
end;

//004961BC
{*procedure sub_004961BC(?:TCustomImageList; ?:?);
begin
 004961BC    push        ebp
 004961BD    mov         ebp,esp
 004961BF    add         esp,0FFFFFFAC
 004961C2    mov         dword ptr [ebp-8],edx
 004961C5    mov         dword ptr [ebp-4],eax
 004961C8    lea         edx,[ebp-24]
 004961CB    mov         ecx,4
 004961D0    mov         eax,dword ptr [ebp-8]
 004961D3    call        TStream.ReadBuffer
 004961D8    lea         edx,[ebp-2C]
 004961DB    mov         ecx,4
 004961E0    mov         eax,dword ptr [ebp-8]
 004961E3    call        TStream.ReadBuffer
 004961E8    mov         dl,1
 004961EA    mov         eax,[0042CF48];TBitmap
 004961EF    call        TBitmap.Create;TBitmap.Create
 004961F4    mov         dword ptr [ebp-0C],eax
 004961F7    xor         eax,eax
 004961F9    push        ebp
 004961FA    push        49645B
 004961FF    push        dword ptr fs:[eax]
 00496202    mov         dword ptr fs:[eax],esp
 00496205    mov         eax,dword ptr [ebp-8]
 00496208    call        TStream.GetPosition
 0049620D    mov         dword ptr [ebp-28],eax
 00496210    mov         edx,dword ptr [ebp-8]
 00496213    mov         eax,dword ptr [ebp-0C]
 00496216    mov         ecx,dword ptr [eax]
 00496218    call        dword ptr [ecx+54];TBitmap.sub_00435104
 0049621B    mov         eax,dword ptr [ebp-28]
 0049621E    add         eax,dword ptr [ebp-24]
 00496221    cdq
 00496222    push        edx
 00496223    push        eax
 00496224    mov         eax,dword ptr [ebp-8]
 00496227    call        TStream.SetPosition
 0049622C    mov         dl,1
 0049622E    mov         eax,[0042CF48];TBitmap
 00496233    call        TBitmap.Create;TBitmap.Create
 00496238    mov         dword ptr [ebp-14],eax
 0049623B    xor         eax,eax
 0049623D    push        ebp
 0049623E    push        49643E
 00496243    push        dword ptr fs:[eax]
 00496246    mov         dword ptr fs:[eax],esp
 00496249    mov         edx,dword ptr [ebp-8]
 0049624C    mov         eax,dword ptr [ebp-14]
 0049624F    mov         ecx,dword ptr [eax]
 00496251    call        dword ptr [ecx+54];TBitmap.sub_00435104
 00496254    mov         dl,1
 00496256    mov         eax,[0042CF48];TBitmap
 0049625B    call        TBitmap.Create;TBitmap.Create
 00496260    mov         dword ptr [ebp-10],eax
 00496263    mov         eax,dword ptr [ebp-4]
 00496266    mov         edx,dword ptr [eax+34]
 00496269    mov         eax,dword ptr [ebp-10]
 0049626C    mov         ecx,dword ptr [eax]
 0049626E    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 00496271    mov         eax,dword ptr [ebp-4]
 00496274    mov         edx,dword ptr [eax+30]
 00496277    mov         eax,dword ptr [ebp-10]
 0049627A    mov         ecx,dword ptr [eax]
 0049627C    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 0049627F    mov         dl,1
 00496281    mov         eax,[0042CF48];TBitmap
 00496286    call        TBitmap.Create;TBitmap.Create
 0049628B    mov         dword ptr [ebp-18],eax
 0049628E    mov         dl,1
 00496290    mov         eax,dword ptr [ebp-18]
 00496293    call        00435C48
 00496298    mov         eax,dword ptr [ebp-4]
 0049629B    mov         edx,dword ptr [eax+34]
 0049629E    mov         eax,dword ptr [ebp-18]
 004962A1    mov         ecx,dword ptr [eax]
 004962A3    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004962A6    mov         eax,dword ptr [ebp-4]
 004962A9    mov         edx,dword ptr [eax+30]
 004962AC    mov         eax,dword ptr [ebp-18]
 004962AF    mov         ecx,dword ptr [eax]
 004962B1    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004962B4    mov         eax,dword ptr [ebp-4]
 004962B7    mov         eax,dword ptr [eax+30]
 004962BA    push        eax
 004962BB    lea         eax,[ebp-44]
 004962BE    push        eax
 004962BF    mov         eax,dword ptr [ebp-4]
 004962C2    mov         ecx,dword ptr [eax+34]
 004962C5    xor         edx,edx
 004962C7    xor         eax,eax
 004962C9    call        0041E714
 004962CE    mov         eax,dword ptr [ebp-4]
 004962D1    call        00496814
 004962D6    xor         eax,eax
 004962D8    push        ebp
 004962D9    push        496421
 004962DE    push        dword ptr fs:[eax]
 004962E1    mov         dword ptr fs:[eax],esp
 004962E4    mov         eax,dword ptr [ebp-0C]
 004962E7    mov         edx,dword ptr [eax]
 004962E9    call        dword ptr [edx+20];TBitmap.sub_00434A8C
 004962EC    mov         edx,dword ptr [ebp-4]
 004962EF    mov         ecx,dword ptr [edx+30]
 004962F2    cdq
 004962F3    idiv        eax,ecx
 004962F5    dec         eax
 004962F6    test        eax,eax
>004962F8    jl          004963FB
 004962FE    inc         eax
 004962FF    mov         dword ptr [ebp-30],eax
 00496302    mov         dword ptr [ebp-20],0
 00496309    cmp         dword ptr [ebp-2C],0
>0049630D    je          004963FB
 00496313    mov         eax,dword ptr [ebp-0C]
 00496316    mov         edx,dword ptr [eax]
 00496318    call        dword ptr [edx+2C];TBitmap.sub_00434CF0
 0049631B    mov         edx,dword ptr [ebp-4]
 0049631E    mov         ecx,dword ptr [edx+34]
 00496321    cdq
 00496322    idiv        eax,ecx
 00496324    dec         eax
 00496325    test        eax,eax
>00496327    jl          004963EF
 0049632D    inc         eax
 0049632E    mov         dword ptr [ebp-34],eax
 00496331    mov         dword ptr [ebp-1C],0
 00496338    cmp         dword ptr [ebp-2C],0
>0049633C    je          004963EF
 00496342    mov         eax,dword ptr [ebp-4]
 00496345    mov         eax,dword ptr [eax+30]
 00496348    push        eax
 00496349    lea         eax,[ebp-54]
 0049634C    push        eax
 0049634D    mov         eax,dword ptr [ebp-4]
 00496350    mov         ecx,dword ptr [eax+34]
 00496353    mov         eax,dword ptr [ebp-4]
 00496356    mov         edx,dword ptr [eax+30]
 00496359    imul        edx,dword ptr [ebp-20]
 0049635D    mov         eax,dword ptr [ebp-4]
 00496360    mov         eax,dword ptr [eax+34]
 00496363    imul        eax,dword ptr [ebp-1C]
 00496367    call        0041E740
 0049636C    lea         eax,[ebp-54]
 0049636F    push        eax
 00496370    mov         eax,dword ptr [ebp-0C]
 00496373    call        0043498C
 00496378    push        eax
 00496379    mov         eax,dword ptr [ebp-10]
 0049637C    call        0043498C
 00496381    lea         edx,[ebp-44]
 00496384    pop         ecx
 00496385    call        0042EE78
 0049638A    mov         eax,dword ptr [ebp-4]
 0049638D    mov         eax,dword ptr [eax+30]
 00496390    push        eax
 00496391    lea         eax,[ebp-54]
 00496394    push        eax
 00496395    mov         eax,dword ptr [ebp-4]
 00496398    mov         ecx,dword ptr [eax+34]
 0049639B    mov         eax,dword ptr [ebp-4]
 0049639E    mov         edx,dword ptr [eax+30]
 004963A1    imul        edx,dword ptr [ebp-20]
 004963A5    mov         eax,dword ptr [ebp-4]
 004963A8    mov         eax,dword ptr [eax+34]
 004963AB    imul        eax,dword ptr [ebp-1C]
 004963AF    call        0041E740
 004963B4    lea         eax,[ebp-54]
 004963B7    push        eax
 004963B8    mov         eax,dword ptr [ebp-14]
 004963BB    call        0043498C
 004963C0    push        eax
 004963C1    mov         eax,dword ptr [ebp-18]
 004963C4    call        0043498C
 004963C9    lea         edx,[ebp-44]
 004963CC    pop         ecx
 004963CD    call        0042EE78
 004963D2    mov         ecx,dword ptr [ebp-18]
 004963D5    mov         edx,dword ptr [ebp-10]
 004963D8    mov         eax,dword ptr [ebp-4]
 004963DB    call        00495110
 004963E0    dec         dword ptr [ebp-2C]
 004963E3    inc         dword ptr [ebp-1C]
 004963E6    dec         dword ptr [ebp-34]
>004963E9    jne         00496338
 004963EF    inc         dword ptr [ebp-20]
 004963F2    dec         dword ptr [ebp-30]
>004963F5    jne         00496309
 004963FB    xor         eax,eax
 004963FD    pop         edx
 004963FE    pop         ecx
 004963FF    pop         ecx
 00496400    mov         dword ptr fs:[eax],edx
 00496403    push        496428
 00496408    mov         eax,dword ptr [ebp-10]
 0049640B    call        TObject.Free
 00496410    mov         eax,dword ptr [ebp-18]
 00496413    call        TObject.Free
 00496418    mov         eax,dword ptr [ebp-4]
 0049641B    call        00496824
 00496420    ret
>00496421    jmp         @HandleFinally
>00496426    jmp         00496408
 00496428    xor         eax,eax
 0049642A    pop         edx
 0049642B    pop         ecx
 0049642C    pop         ecx
 0049642D    mov         dword ptr fs:[eax],edx
 00496430    push        496445
 00496435    mov         eax,dword ptr [ebp-14]
 00496438    call        TObject.Free
 0049643D    ret
>0049643E    jmp         @HandleFinally
>00496443    jmp         00496435
 00496445    xor         eax,eax
 00496447    pop         edx
 00496448    pop         ecx
 00496449    pop         ecx
 0049644A    mov         dword ptr fs:[eax],edx
 0049644D    push        496462
 00496452    mov         eax,dword ptr [ebp-0C]
 00496455    call        TObject.Free
 0049645A    ret
>0049645B    jmp         @HandleFinally
>00496460    jmp         00496452
 00496462    mov         esp,ebp
 00496464    pop         ebp
 00496465    ret
end;*}

//00496468
{*procedure sub_00496468(?:TCustomImageList; ?:?);
begin
 00496468    push        ebp
 00496469    mov         ebp,esp
 0049646B    add         esp,0FFFFFFEC
 0049646E    push        ebx
 0049646F    mov         dword ptr [ebp-8],edx
 00496472    mov         dword ptr [ebp-4],eax
 00496475    push        0
 00496477    mov         ecx,dword ptr [ebp-8]
 0049647A    mov         dl,1
 0049647C    mov         eax,[0041E01C];TStreamAdapter
 00496481    call        TStreamAdapter.Create;TStreamAdapter.Create
 00496486    mov         dword ptr [ebp-0C],eax
 00496489    xor         eax,eax
 0049648B    push        ebp
 0049648C    push        4964C7
 00496491    push        dword ptr fs:[eax]
 00496494    mov         dword ptr fs:[eax],esp
 00496497    mov         eax,dword ptr [ebp-0C]
 0049649A    test        eax,eax
>0049649C    je          004964A1
 0049649E    sub         eax,0FFFFFFEC
 004964A1    push        eax
 004964A2    call        comctl32.ImageList_Read
 004964A7    mov         edx,eax
 004964A9    mov         eax,dword ptr [ebp-4]
 004964AC    call        00494F08
 004964B1    xor         eax,eax
 004964B3    pop         edx
 004964B4    pop         ecx
 004964B5    pop         ecx
 004964B6    mov         dword ptr fs:[eax],edx
 004964B9    push        4964CE
 004964BE    mov         eax,dword ptr [ebp-0C]
 004964C1    call        TObject.Free
 004964C6    ret
>004964C7    jmp         @HandleFinally
>004964CC    jmp         004964BE
 004964CE    mov         eax,dword ptr [ebp-4]
 004964D1    call        00494CE0
 004964D6    test        al,al
>004964D8    jne         0049662C
 004964DE    mov         byte ptr [ebp-11],0
 004964E2    mov         dl,1
 004964E4    mov         eax,[0041DE14];TMemoryStream
 004964E9    call        TObject.Create;TMemoryStream.Create
 004964EE    mov         dword ptr [ebp-10],eax
 004964F1    xor         eax,eax
 004964F3    push        ebp
 004964F4    push        496602
 004964F9    push        dword ptr fs:[eax]
 004964FC    mov         dword ptr fs:[eax],esp
 004964FF    push        0
 00496501    push        0
 00496503    mov         eax,dword ptr [ebp-8]
 00496506    call        TStream.SetPosition
 0049650B    mov         edx,dword ptr [ebp-8]
 0049650E    mov         eax,dword ptr [ebp-10]
 00496511    call        00423F44
 00496516    push        0
 00496518    push        12
 0049651A    mov         eax,dword ptr [ebp-10]
 0049651D    call        TStream.SetPosition
 00496522    lea         edx,[ebp-12]
 00496525    mov         ecx,1
 0049652A    mov         eax,dword ptr [ebp-10]
 0049652D    mov         ebx,dword ptr [eax]
 0049652F    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 00496532    dec         eax
>00496533    jne         00496581
 00496535    cmp         byte ptr [ebp-12],1
>00496539    jne         00496581
 0049653B    push        0
 0049653D    push        38
 0049653F    mov         eax,dword ptr [ebp-10]
 00496542    call        TStream.SetPosition
 00496547    lea         edx,[ebp-13]
 0049654A    mov         ecx,1
 0049654F    mov         eax,dword ptr [ebp-10]
 00496552    mov         ebx,dword ptr [eax]
 00496554    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 00496557    dec         eax
>00496558    jne         00496581
 0049655A    mov         al,byte ptr [ebp-13]
 0049655D    or          byte ptr [ebp-12],al
 00496560    push        0
 00496562    push        12
 00496564    mov         eax,dword ptr [ebp-10]
 00496567    call        TStream.SetPosition
 0049656C    lea         edx,[ebp-12]
 0049656F    mov         ecx,1
 00496574    mov         eax,dword ptr [ebp-10]
 00496577    mov         ebx,dword ptr [eax]
 00496579    call        dword ptr [ebx+10];TMemoryStream.sub_0042412C
 0049657C    dec         eax
 0049657D    sete        byte ptr [ebp-11]
 00496581    cmp         byte ptr [ebp-11],0
>00496585    je          004965EC
 00496587    push        0
 00496589    push        0
 0049658B    mov         eax,dword ptr [ebp-10]
 0049658E    call        TStream.SetPosition
 00496593    push        0
 00496595    mov         ecx,dword ptr [ebp-10]
 00496598    mov         dl,1
 0049659A    mov         eax,[0041E01C];TStreamAdapter
 0049659F    call        TStreamAdapter.Create;TStreamAdapter.Create
 004965A4    mov         dword ptr [ebp-0C],eax
 004965A7    xor         eax,eax
 004965A9    push        ebp
 004965AA    push        4965E5
 004965AF    push        dword ptr fs:[eax]
 004965B2    mov         dword ptr fs:[eax],esp
 004965B5    mov         eax,dword ptr [ebp-0C]
 004965B8    test        eax,eax
>004965BA    je          004965BF
 004965BC    sub         eax,0FFFFFFEC
 004965BF    push        eax
 004965C0    call        comctl32.ImageList_Read
 004965C5    mov         edx,eax
 004965C7    mov         eax,dword ptr [ebp-4]
 004965CA    call        00494F08
 004965CF    xor         eax,eax
 004965D1    pop         edx
 004965D2    pop         ecx
 004965D3    pop         ecx
 004965D4    mov         dword ptr fs:[eax],edx
 004965D7    push        4965EC
 004965DC    mov         eax,dword ptr [ebp-0C]
 004965DF    call        TObject.Free
 004965E4    ret
>004965E5    jmp         @HandleFinally
>004965EA    jmp         004965DC
 004965EC    xor         eax,eax
 004965EE    pop         edx
 004965EF    pop         ecx
 004965F0    pop         ecx
 004965F1    mov         dword ptr fs:[eax],edx
 004965F4    push        496609
 004965F9    mov         eax,dword ptr [ebp-10]
 004965FC    call        TObject.Free
 00496601    ret
>00496602    jmp         @HandleFinally
>00496607    jmp         004965F9
 00496609    mov         eax,dword ptr [ebp-4]
 0049660C    call        00494CE0
 00496611    test        al,al
>00496613    jne         0049662C
 00496615    mov         ecx,dword ptr ds:[56E458];^SImageReadFail:TResStringRec
 0049661B    mov         dl,1
 0049661D    mov         eax,[0041D0DC];EReadError
 00496622    call        Exception.Create;EReadError.Create
 00496627    call        @RaiseExcept
 0049662C    pop         ebx
 0049662D    mov         esp,ebp
 0049662F    pop         ebp
 00496630    ret
end;*}

//00496634
{*procedure sub_00496634(?:?);
begin
 00496634    push        ebp
 00496635    mov         ebp,esp
 00496637    add         esp,0FFFFFFE8
 0049663A    push        ebx
 0049663B    mov         dword ptr [ebp-8],edx
 0049663E    mov         dword ptr [ebp-4],eax
 00496641    mov         eax,dword ptr [ebp-4]
 00496644    call        0049500C
 00496649    mov         eax,dword ptr [ebp-8]
 0049664C    call        TStream.GetPosition
 00496651    mov         dword ptr [ebp-18],eax
 00496654    lea         edx,[ebp-0C]
 00496657    mov         ecx,4
 0049665C    mov         eax,dword ptr [ebp-8]
 0049665F    mov         ebx,dword ptr [eax]
 00496661    call        dword ptr [ebx+0C]
 00496664    lea         edx,[ebp-10]
 00496667    mov         ecx,4
 0049666C    mov         eax,dword ptr [ebp-8]
 0049666F    mov         ebx,dword ptr [eax]
 00496671    call        dword ptr [ebx+0C]
 00496674    mov         al,byte ptr [ebp-0C]
 00496677    and         al,0FF
 00496679    mov         byte ptr [ebp-11],al
 0049667C    mov         ax,word ptr [ebp-0C]
 00496680    shr         ax,8
 00496684    mov         byte ptr [ebp-12],al
 00496687    mov         eax,dword ptr [ebp-18]
 0049668A    cdq
 0049668B    push        edx
 0049668C    push        eax
 0049668D    mov         eax,dword ptr [ebp-8]
 00496690    call        TStream.SetPosition
 00496695    mov         eax,dword ptr [ebp-0C]
 00496698    cmp         eax,dword ptr [ebp-10]
>0049669B    je          004966B6
 0049669D    cmp         byte ptr [ebp-11],49
>004966A1    jne         004966B6
 004966A3    cmp         byte ptr [ebp-12],4C
>004966A7    jne         004966B6
 004966A9    mov         edx,dword ptr [ebp-8]
 004966AC    mov         eax,dword ptr [ebp-4]
 004966AF    call        00496468
>004966B4    jmp         004966C1
 004966B6    mov         edx,dword ptr [ebp-8]
 004966B9    mov         eax,dword ptr [ebp-4]
 004966BC    call        004961BC
 004966C1    pop         ebx
 004966C2    mov         esp,ebp
 004966C4    pop         ebp
 004966C5    ret
end;*}

//004966C8
{*procedure sub_004966C8(?:?);
begin
 004966C8    push        ebp
 004966C9    mov         ebp,esp
 004966CB    add         esp,0FFFFFFF0
 004966CE    mov         dword ptr [ebp-8],edx
 004966D1    mov         dword ptr [ebp-4],eax
 004966D4    cmp         dword ptr ds:[571E24],0;gvar_00571E24
>004966DB    jne         0049671E
 004966DD    mov         eax,4967E0;'comctl32.dll'
 004966E2    call        00410FB8
 004966E7    mov         [00571E24],eax;gvar_00571E24
 004966EC    cmp         dword ptr ds:[571E24],60000;gvar_00571E24
>004966F6    jb          0049671E
 004966F8    push        4967F0;'comctl32.dll'
 004966FD    call        kernel32.GetModuleHandleA
 00496702    mov         dword ptr [ebp-10],eax
 00496705    cmp         dword ptr [ebp-10],0
>00496709    je          0049671E
 0049670B    push        496800;'ImageList_WriteEx'
 00496710    mov         eax,dword ptr [ebp-10]
 00496713    push        eax
 00496714    call        kernel32.GetProcAddress
 00496719    mov         [00571E28],eax;gvar_00571E28:Pointer
 0049671E    push        0
 00496720    mov         ecx,dword ptr [ebp-8]
 00496723    mov         dl,1
 00496725    mov         eax,[0041E01C];TStreamAdapter
 0049672A    call        TStreamAdapter.Create;TStreamAdapter.Create
 0049672F    mov         dword ptr [ebp-0C],eax
 00496732    xor         eax,eax
 00496734    push        ebp
 00496735    push        4967CC
 0049673A    push        dword ptr fs:[eax]
 0049673D    mov         dword ptr fs:[eax],esp
 00496740    cmp         dword ptr ds:[571E28],0;gvar_00571E28:Pointer
>00496747    je          00496782
 00496749    mov         eax,dword ptr [ebp-0C]
 0049674C    test        eax,eax
>0049674E    je          00496753
 00496750    sub         eax,0FFFFFFEC
 00496753    push        eax
 00496754    push        1
 00496756    mov         eax,dword ptr [ebp-4]
 00496759    call        00494F78
 0049675E    push        eax
 0049675F    call        dword ptr ds:[571E28]
 00496765    test        eax,eax
>00496767    je          004967B6
 00496769    mov         ecx,dword ptr ds:[56E204];^SImageWriteFail:TResStringRec
 0049676F    mov         dl,1
 00496771    mov         eax,[0041D134];EWriteError
 00496776    call        Exception.Create;EWriteError.Create
 0049677B    call        @RaiseExcept
>00496780    jmp         004967B6
 00496782    mov         eax,dword ptr [ebp-0C]
 00496785    test        eax,eax
>00496787    je          0049678C
 00496789    sub         eax,0FFFFFFEC
 0049678C    push        eax
 0049678D    mov         eax,dword ptr [ebp-4]
 00496790    call        00494F78
 00496795    push        eax
 00496796    call        comctl32.ImageList_Write
 0049679B    test        eax,eax
>0049679D    jne         004967B6
 0049679F    mov         ecx,dword ptr ds:[56E204];^SImageWriteFail:TResStringRec
 004967A5    mov         dl,1
 004967A7    mov         eax,[0041D134];EWriteError
 004967AC    call        Exception.Create;EWriteError.Create
 004967B1    call        @RaiseExcept
 004967B6    xor         eax,eax
 004967B8    pop         edx
 004967B9    pop         ecx
 004967BA    pop         ecx
 004967BB    mov         dword ptr fs:[eax],edx
 004967BE    push        4967D3
 004967C3    mov         eax,dword ptr [ebp-0C]
 004967C6    call        TObject.Free
 004967CB    ret
>004967CC    jmp         @HandleFinally
>004967D1    jmp         004967C3
 004967D3    mov         esp,ebp
 004967D5    pop         ebp
 004967D6    ret
end;*}

//00496814
{*procedure sub_00496814(?:?);
begin
 00496814    push        ebp
 00496815    mov         ebp,esp
 00496817    push        ecx
 00496818    mov         dword ptr [ebp-4],eax
 0049681B    mov         eax,dword ptr [ebp-4]
 0049681E    inc         dword ptr [eax+5C]
 00496821    pop         ecx
 00496822    pop         ebp
 00496823    ret
end;*}

//00496824
{*procedure sub_00496824(?:?);
begin
 00496824    push        ebp
 00496825    mov         ebp,esp
 00496827    push        ecx
 00496828    push        esi
 00496829    mov         dword ptr [ebp-4],eax
 0049682C    mov         eax,dword ptr [ebp-4]
 0049682F    cmp         dword ptr [eax+5C],0
>00496833    jle         0049683B
 00496835    mov         eax,dword ptr [ebp-4]
 00496838    dec         dword ptr [eax+5C]
 0049683B    mov         eax,dword ptr [ebp-4]
 0049683E    cmp         byte ptr [eax+58],0
>00496842    je          00496857
 00496844    mov         eax,dword ptr [ebp-4]
 00496847    mov         byte ptr [eax+58],0
 0049684B    mov         eax,dword ptr [ebp-4]
 0049684E    mov         si,0FFEF
 00496852    call        @CallDynaInst
 00496857    pop         esi
 00496858    pop         ecx
 00496859    pop         ebp
 0049685A    ret
end;*}

//004968A4
procedure TChangeLink.sub_004968A4;
begin
{*
 004968A4    push        ebp
 004968A5    mov         ebp,esp
 004968A7    push        ecx
 004968A8    push        ebx
 004968A9    mov         dword ptr [ebp-4],eax
 004968AC    mov         eax,dword ptr [ebp-4]
 004968AF    cmp         word ptr [eax+0A],0;TChangeLink.?fA:word
>004968B4    je          004968C5
 004968B6    mov         ebx,dword ptr [ebp-4]
 004968B9    mov         eax,dword ptr [ebp-4]
 004968BC    mov         edx,dword ptr [eax+4];TChangeLink.FSender:TCustomImageList
 004968BF    mov         eax,dword ptr [ebx+0C];TChangeLink.?fC:TCustomListView
 004968C2    call        dword ptr [ebx+8];TChangeLink.FOnChange
 004968C5    pop         ebx
 004968C6    pop         ecx
 004968C7    pop         ebp
 004968C8    ret
*}
end;

end.