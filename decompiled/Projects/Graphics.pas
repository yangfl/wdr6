//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Graphics;

interface

uses
  SysUtils, Classes, ComCtrls, Graphics, ExtCtrls;

type
  EInvalidGraphic = class(Exception)
  end;
  EInvalidGraphicOperation = class(Exception)
  end;
  TFontPitch = (fpDefault, fpVariable, fpFixed);
  TFontStyle = (fsBold, fsItalic, fsUnderline, fsStrikeOut);
  TFontStyles = set of TFontStyle;
  TPenStyle = (psSolid, psDash, psDot, psDashDot, psDashDotDot, psClear, psInsideFrame);
  TPenMode = (pmBlack, pmWhite, pmNop, pmNot, pmCopy, pmNotCopy, pmMergePenNot, pmMaskPenNot, pmMergeNotPen, pmMaskNotPen, pmMerge, pmNotMerge, pmMask, pmNotMask, pmXor, pmNotXor);
  TBrushStyle = (bsSolid, bsClear, bsHorizontal, bsVertical, bsFDiagonal, bsBDiagonal, bsCross, bsDiagCross);
  TGraphicsObject = class(TPersistent)
  public
    FOnChange:TNotifyEvent;//f8
    fA:word;//fA
    fC:TCustomListView;//fC
    FResource:PResource;//f10
    FOwnerLock:PRTLCriticalSection;//f14
    procedure sub_0042DB8C; dynamic;//0042DB8C
  end;
  TFont = class(TGraphicsObject)
  public
    Color:TColor;//f18
    FPixelsPerInch:Integer;//f1C
    FNotify:IChangeNotifier;//f20
    destructor Destroy; virtual;//0042DF40
    //procedure v8(?:?); virtual;//v8//0042DF9C
    procedure sub_0042DB8C; dynamic;//0042DF74
    constructor Create;//0042DED4
    procedure SetColor(Value:TColor);//0042E0F8
    //function GetHeight:?;//0042E304
    procedure SetHeight(Value:Integer);//0042E320
    //procedure GetName(?:?);//0042E34C
    procedure SetName(Value:TFontName);//0042E370
    //function GetSize:?;//0042E3D4
    procedure SetSize(Value:Integer);//0042E400
    //function GetStyle:?;//0042E430
    procedure SetStyle(Value:TFontStyles);//0042E44C
    //function GetPitch:?;//0042E478
    procedure SetPitch(Value:TFontPitch);//0042E494
    //function GetCharset:?;//0042E4C0
    procedure SetCharset(Value:TFontCharset);//0042E4DC
  end;
  TPen = class(TGraphicsObject)
  public
    ..Mode:TPenMode;//f18
    destructor Destroy; virtual;//0042E55C
    //procedure v8(?:?); virtual;//v8//0042E590
    constructor Create;//0042E508
    //function GetColor:?;//0042E6CC
    procedure SetColor(Value:TColor);//0042E6E8
    procedure SetMode(Value:TPenMode);//0042E7EC
    //function GetStyle:?;//0042E820
    procedure SetStyle(Value:TPenStyle);//0042E83C
    //function GetWidth:?;//0042E868
    procedure SetWidth(Value:Integer);//0042E884
  end;
  TBrush = class(TGraphicsObject)
  public
    destructor Destroy; virtual;//0042E904
    //procedure v8(?:?); virtual;//v8//0042E938
    constructor Create;//0042E8B8
    //function GetColor:?;//0042EAA0
    procedure SetColor(Value:TColor);//0042EABC
    function GetHandle:HBRUSH;//0042EAF4
    //function GetStyle:?;//0042EBE8
    procedure SetStyle(Value:TBrushStyle);//0042EC04
  end;
  TPenRecall = class(TRecall)
    constructor Create;//0042EC40
  end;
  TBrushRecall = class(TRecall)
    constructor Create;//0042EC98
  end;
  TCanvas = class(TPersistent)
  public
    FHandle:HDC;//f4
    State:TCanvasState;//f8
    Font:TFont;//fC
    Pen:TPen;//f10
    Brush:TBrush;//f14
    FPenPos:TPoint;//f18
    CopyMode:Integer;//f20
    FOnChange:TNotifyEvent;//f28
    f2A:word;//f2A
    f2C:TBitmap;//f2C
    FOnChanging:TNotifyEvent;//f30
    f32:word;//f32
    f34:TBitmap;//f34
    FLock:TRTLCriticalSection;//f38
    FLockCount:Integer;//f50
    FTextFlags:Longint;//f54
    destructor Destroy; virtual;//0042EE00
    procedure vC; virtual;//vC//0042F88C
    procedure v10; virtual;//v10//0042F868
    procedure v14; virtual;//v14//0042F74C
    constructor Create;//0042ECF0
    procedure Lock;//0042F11C
    function TryLock:Boolean;//0042F48C
    procedure Unlock;//0042F4EC
    procedure SetFont(Value:TFont);//0042F51C
    procedure SetPen(Value:TPen);//0042F53C
    procedure SetBrush(Value:TBrush);//0042F55C
    procedure SetHandle(Value:HDC);//0042F758
  end;
  TProgressStage = (psStarting, psRunning, psEnding);
  TProgressEvent = procedure(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:TRect; const Msg:String) of object;;
  TGraphic = class(TInterfacedPersistent)
  public
    FOnChange:TNotifyEvent;//f10
    f12:word;//f12
    f14:TCoolBand;//f14
    FOnProgress:TProgressEvent;//f18
    f1A:word;//f1A
    f1C:dword;//f1C
    FModified:Boolean;//f20
    FTransparent:Boolean;//f21
    FPaletteModified:Boolean;//f22
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00431134
    //procedure v10(?:?); virtual;//v10//004310A0
    procedure v14; virtual; abstract;//v14//00403328
    //function v18(?:?):?; virtual;//v18//00431180
    procedure v1C; virtual; abstract;//v1C//00403328
    procedure v20; virtual; abstract;//v20//00403328
    //function v24:?; virtual;//v24//004312D0
    //function v28:?; virtual;//v28//004312E8
    procedure v2C; virtual; abstract;//v2C//00403328
    //procedure v30(?:?); virtual;//v30//004313A0
    procedure v34; virtual; abstract;//v34//00403328
    //procedure v38(?:?); virtual;//v38//0043141C
    //procedure v3C(?:?); virtual;//v3C//0043142C
    procedure v40; virtual; abstract;//v40//00403328
    //procedure v44(?:?); virtual;//v44//0043145C
    constructor v48; virtual;//v48//0043105C
    //procedure v4C(?:?); virtual;//v4C//00431304
    //procedure v50(?:?); virtual;//v50//004313BC
    procedure v54; virtual; abstract;//v54//00403328
    procedure v58; virtual; abstract;//v58//00403328
    procedure v5C; virtual; abstract;//v5C//00403328
    procedure v60; virtual; abstract;//v60//00403328
    //procedure sub_00431360(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//00431360
  end;
  TPicture = class(TInterfacedPersistent)
  public
    FGraphic:TGraphic;//fC
    FOnChange:TNotifyEvent;//f10
    f12:word;//f12
    f14:TImage;//f14
    FNotify:IChangeNotifier;//f18
    FOnProgress:TProgressEvent;//f20
    f22:word;//f22
    f24:TImage;//f24
    destructor Destroy; virtual;//00431A98
    //procedure v0(?:?); virtual;//v0//00431AD4
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00432168
    //procedure v8(?:?); virtual;//v8//00431E44
    //procedure sub_00431EF0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//00431EF0
    //procedure sub_00431EB4(?:?); dynamic;//00431EB4
    constructor Create;//00431A4C
    procedure ReadData(Stream:TStream);//00431F30
    procedure WriteData(Stream:TStream);//00432060
  end;
  TSharedImage = class(TObject)
  public
    .......FRefCount:Integer;//f4
    procedure v0; virtual; abstract;//v0//00403328
  end;
  TMetafileImage = class(TSharedImage)
  public
    FHandle:THandle;//f8
    FWidth:Integer;//fC
    FHeight:Integer;//f10
    FPalette:HPALETTE;//f14
    FInch:word;//f18
    FTempWidth:Integer;//f1C
    FTempHeight:Integer;//f20
    destructor Destroy; virtual;//0043220C
    procedure v0; virtual;//v0//00432260
  end;
  TMetafile = class(TGraphic)
  public
    FImage:TMetafileImage;//f28
    FEnhanced:Boolean;//f2C
    destructor Destroy; virtual;//004322C8
    //procedure v8(?:?); virtual;//v8//00432304
    //procedure v14(?:?; ?:?); virtual;//v14//004323D8
    //function v1C:?; virtual;//v1C//00432480
    //function v20:?; virtual;//v20//0043249C
    //function v24:?; virtual;//v24//0043252C
    //function v2C:?; virtual;//v2C//004325F8
    //procedure v30(?:?); virtual;//v30//00432724
    //procedure v34(?:?); virtual;//v34//00432BFC
    //procedure v3C(?:?); virtual;//v3C//00432D4C
    //procedure v40(?:?); virtual;//v40//00432D5C
    //procedure v44(?:?); virtual;//v44//00432F38
    constructor Create; virtual;//v48//0043226C
    //procedure v50(?:?); virtual;//v50//00432A2C
    //procedure v54(?:?); virtual;//v54//00432688
    //procedure v58(?:?); virtual;//v58//00432AF0
    //procedure v5C(?:?; ?:?); virtual;//v5C//004331CC
    //procedure v60(?:?; ?:?; ?:?); virtual;//v60//00433278
  end;
  TBitmapImage = class(TSharedImage)
  public
    FHandle:HBITMAP;//f8
    FMaskHandle:HBITMAP;//fC
    FPalette:HPALETTE;//f10
    FDIBHandle:HBITMAP;//f14
    FDIB:TDIBSection;//f18
    FSaveStream:TMemoryStream;//f6C
    FOS2Format:Boolean;//f70
    FHalftone:Boolean;//f71
    destructor Destroy; virtual;//00433728
    procedure v0; virtual;//v0//004337A8
  end;
  TBitmap = class(TGraphic)
  public
    FImage:TBitmapImage;//f28
    FCanvas:TCanvas;//f2C
    FIgnorePalette:Boolean;//f30
    FMaskBitsValid:Boolean;//f31
    FMaskValid:Boolean;//f32
    FTransparentColor:TColor;//f34
    FTransparentMode:TTransparentMode;//f38
    destructor Destroy; virtual;//004342F4
    //procedure v8(?:?); virtual;//v8//00434344
    //procedure v10(?:?); virtual;//v10//0043455C
    //procedure v14(?:?; ?:?); virtual;//v14//00434608
    //function v1C:?; virtual;//v1C//0043494C
    //function v20:?; virtual;//v20//00434A8C
    //function v24:?; virtual;//v24//00434B10
    //function v2C:?; virtual;//v2C//00434CF0
    //procedure v30(?:?); virtual;//v30//004352AC
    //procedure v34(?:?); virtual;//v34//00435BD8
    //procedure v38(?:?); virtual;//v38//00435CF4
    //procedure v40(?:?); virtual;//v40//00435FF8
    //procedure v44(?:?); virtual;//v44//00436068
    constructor Create; virtual;//v48//00434278
    //procedure v54(?:?); virtual;//v54//00435104
    //procedure v58(?:?); virtual;//v58//00436424
    //procedure v5C(?:?; ?:?; ?:?); virtual;//v5C//0043506C
    //procedure v60(?:?; ?:?; ?:?); virtual;//v60//00436444
    //function v64:?; virtual;//v64//004349FC
    //function v68:?; virtual;//v68//00434AB0
    //procedure v6C(?:?); virtual;//v6C//00435A0C
    procedure SetHandle(Value:HBITMAP);//00435920
  end;
  TIconImage = class(TSharedImage)
  public
    FHandle:HICON;//f8
    FMemoryImage:TCustomMemoryStream;//fC
    FSize:TPoint;//f10
    destructor Destroy; virtual;//00436500
    procedure v0; virtual;//v0//0043653C
  end;
  TIcon = class(TGraphic)
  public
    FImage:TIconImage;//f28
    FRequestedSize:TPoint;//f2C
    destructor Destroy; virtual;//004365CC
    //procedure v8(?:?); virtual;//v8//00436608
    //procedure v14(?:?; ?:?); virtual;//v14//00436680
    //function v1C:?; virtual;//v1C//004366D4
    //function v20:?; virtual;//v20//0043672C
    //function v2C:?; virtual;//v2C//00436758
    //procedure v34(?:?); virtual;//v34//00436A4C
    //procedure v3C(?:?); virtual;//v3C//00436A80
    //procedure v40(?:?); virtual;//v40//00436A90
    constructor Create; virtual;//v48//00436564
    //procedure v54(?:?); virtual;//v54//004368DC
    //procedure v58(?:?); virtual;//v58//00436AC4
    //procedure v5C(?:?; ?:?); virtual;//v5C//00436B00
    //procedure v60(?:?; ?:?); virtual;//v60//00436B20
  end;
  TResourceManager = class(TObject)
  public
    ResList:PResource;//f4
    FLock:TRTLCriticalSection;//f8
    ResDataSize:Word;//f20
    constructor Create(AResDataSize:Word);//0042D1FC
  end;
  TFileFormat = TFileFormat = record//size=10
f4:String;//f4
f8:String;//f8
end;;
  TFileFormatsList = class(TList)
  public
    destructor Destroy; virtual;//00431650
    constructor Create;//00431514
  end;
  TClipboardFormats = class(TObject)
  public
    FClasses:TList;//f4
    FFormats:TList;//f8
    constructor Create;//00431858
  end;
  TBitmapCanvas = class(TCanvas)
  public
    FBitmap:TBitmap;//f58
    FOldBitmap:HBITMAP;//f5C
    FOldPalette:HPALETTE;//f60
    destructor Destroy; virtual;//004334F0
    procedure v14; virtual;//v14//004335DC
    constructor Create;//004334A0
    procedure FreeContext;//0043352C
  end;
  TPatternManager = class(TObject)
  public
    List:PPattern;//f4
    FLock:TRTLCriticalSection;//f8
    constructor Create;//00436CAC
  end;
    procedure sub_0042D164(?:HPALETTE);//0042D164
    function GetHashCode(const Buffer:void ; Count:Integer):Word;//0042D1E8
    procedure sub_0042D280(?:TResourceManager);//0042D280
    procedure sub_0042D298(?:TResourceManager);//0042D298
    //function sub_0042D2B0(?:TResourceManager; ?:?):?;//0042D2B0
    //procedure sub_0042D3B4(?:TResourceManager; ?:?);//0042D3B4
    //procedure sub_0042D480(?:TResourceManager; ?:?; ?:?);//0042D480
    //procedure sub_0042D504(?:TResourceManager; ?:TGraphicsObject; ?:?);//0042D504
    procedure sub_0042D584(?:TResourceManager);//0042D584
    procedure sub_0042D610;//0042D610
    function ColorToRGB(Color:TColor):Longint;//0042DB0C
    function ColorToIdent(Color:Longint; var Ident:AnsiString):Boolean;//0042DB3C
    function IdentToColor(const Ident:AnsiString; var Color:Longint):Boolean;//0042DB64
    procedure sub_0042DB8C;//0042DB8C
    procedure sub_0042DBB0(?:TGraphicsObject);//0042DBB0
    procedure sub_0042DBD0(?:TGraphicsObject);//0042DBD0
    function CharsetToIdent(Charset:Longint; var Ident:AnsiString):Boolean;//0042DDA4
    function IdentToCharset(const Ident:AnsiString; var Charset:Longint):Boolean;//0042DDCC
    //procedure sub_0042DDF4(?:?; ?:?);//0042DDF4
    destructor Destroy;//0042DF40
    procedure sub_0042DB8C;//0042DF74
    //procedure sub_0042DF9C(?:?);//0042DF9C
    //procedure sub_0042E074(?:TFont; ?:?);//0042E074
    //procedure sub_0042E0A4(?:TFont; ?:?);//0042E0A4
    //function sub_0042E12C(?:TFont):?;//0042E12C
    procedure sub_0042E2DC(?:TFont; ?:HFONT);//0042E2DC
    destructor Destroy;//0042E55C
    //procedure sub_0042E590(?:?);//0042E590
    //procedure sub_0042E648(?:TPen; ?:?);//0042E648
    //procedure sub_0042E678(?:TPen; ?:?);//0042E678
    //function sub_0042E714(?:?):?;//0042E714
    //procedure sub_0042E7B8(?:?; ?:HPEN);//0042E7B8
    destructor Destroy;//0042E904
    //procedure sub_0042E938(?:?);//0042E938
    //procedure sub_0042E9E0(?:?; ?:?);//0042E9E0
    //procedure sub_0042EA18(?:?; ?:?);//0042EA18
    //procedure sub_0042EA6C(?:TBrush; ?:?);//0042EA6C
    destructor Destroy;//0042EE00
    //procedure sub_0042EE78(?:?; ?:?; ?:TCanvas; ?:?);//0042EE78
    //procedure sub_0042EF28(?:TCanvas; ?:Integer; ?:Integer; ?:?);//0042EF28
    //procedure sub_0042EFEC(?:TCanvas; ?:?);//0042EFEC
    procedure sub_0042F030(?:TCanvas; ?:TPoint);//0042F030
    procedure sub_0042F080(?:TCanvas; ?:TRect);//0042F080
    //procedure sub_0042F0D0(?:TCanvas; ?:TRect; ?:?);//0042F0D0
    //procedure sub_0042F14C(?:TCanvas; ?:TRect; ?:?);//0042F14C
    //procedure sub_0042F188(?:?; ?:void ; ?:?);//0042F188
    //procedure sub_0042F1D4(?:?; ?:void ; ?:?);//0042F1D4
    //procedure sub_0042F220(?:TCanvas; ?:?; ?:?; ?:?; ?:?);//0042F220
    procedure sub_0042F274(?:TCanvas; ?:TPoint);//0042F274
    //procedure sub_0042F2A8(?:?);//0042F2A8
    //procedure sub_0042F2BC(?:TCanvas; ?:?; ?:TGraphic);//0042F2BC
    //function sub_0042F308(?:TCanvas):?;//0042F308
    //procedure sub_0042F344(?:TCanvas; ?:?; ?:?; ?:?);//0042F344
    //procedure sub_0042F3E4(?:?; ?:AnsiString; ?:?);//0042F3E4
    //function sub_0042F43C(?:TCanvas; ?:AnsiString):?;//0042F43C
    //function sub_0042F464(?:TCanvas; ?:AnsiString):?;//0042F464
    //procedure sub_0042F57C(?:?; ?:?);//0042F57C
    //procedure sub_0042F5B0(?:?; ?:?);//0042F5B0
    //function sub_0042F5D8(?:?; ?:?; ?:?):?;//0042F5D8
    //procedure sub_0042F618(?:?; ?:?; ?:?; ?:?);//0042F618
    //procedure sub_0042F66C(?:TCanvas; ?:?);//0042F66C
    //function sub_0042F6A0(?:TCanvas):?;//0042F6A0
    procedure sub_0042F6D4(?:Pointer);//0042F6D4
    procedure sub_0042F74C;//0042F74C
    //procedure sub_0042F7D4(?:?; ?:?);//0042F7D4
    procedure sub_0042F868;//0042F868
    procedure sub_0042F88C;//0042F88C
    //procedure sub_0042F8B0(?:?);//0042F8B0
    //procedure sub_0042F8F0(?:?);//0042F8F0
    //procedure sub_0042F934(?:?);//0042F934
    //procedure sub_0042F9D4(?:?; ?:?);//0042F9D4
    //procedure sub_0042FA08(?:?; ?:?);//0042FA08
    //procedure sub_0042FA3C(?:?; ?:?);//0042FA3C
    procedure sub_0042FA70(?:TResStringRec);//0042FA70
    procedure InvalidGraphic(Str:PResStringRec);//0042FA90
    procedure InvalidBitmap;//0042FAB0
    procedure InvalidIcon;//0042FABC
    procedure InvalidMetafile;//0042FAC8
    procedure OutOfResources;//0042FAD4
    procedure sub_0042FB28;//0042FB28
    //function sub_0042FBD4(?:HBITMAP):?;//0042FBD4
    //function sub_0042FBF8(?:?; ?:?; ?:?):?;//0042FBF8
    //function sub_0042FD64(?:?):?;//0042FD64
    //function sub_0042FDA0(?:?; ?:?; ?:?):?;//0042FDA0
    //function sub_0042FDDC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0042FDDC
    //procedure sub_004300AC(?:?);//004300AC
    //procedure sub_00430120(?:?; ?:LongWord);//00430120
    procedure ByteSwapColors(var Colors:void ; Count:Integer);//004301CC
    //function sub_00430224(?:?; ?:?):?;//00430224
    //function sub_00430350(?:?):?;//00430350
    //function sub_004303F8(?:HBITMAP; ?:?; ?:?):?;//004303F8
    //function sub_004304D8(?:HPALETTE; ?:?; ?:?):?;//004304D8
    //procedure sub_00430540(?:?; ?:?; ?:?; ?:?);//00430540
    //function sub_00430704(?:?):?;//00430704
    //function sub_0043072C(?:Integer; ?:Integer; ?:?):?;//0043072C
    //procedure sub_004307D8(?:TCustomMemoryStream; ?:HICON; ?:?; ?:?; ?:?; ?:?);//004307D8
    //function sub_00430B24(?:Byte):?;//00430B24
    //procedure sub_00430B64(?:?; ?:?; ?:?);//00430B64
    //procedure sub_00430C98(?:HBITMAP; ?:?; ?:void ; ?:?);//00430C98
    //procedure sub_00430D10(?:?; ?:?; ?:?);//00430D10
    //function sub_00430D34(?:?; ?:?; ?:?; ?:?; ?:?):?;//00430D34
    //function sub_00430DF4(?:?; ?:?; ?:?; ?:?):?;//00430DF4
    procedure sub_00430E24;//00430E24
    procedure sub_00430E28(?:LongBool);//00430E28
    //procedure sub_00430E40(?:TMemoryStream; ?:?; ?:?);//00430E40
    constructor sub_0043105C;//0043105C
    //procedure sub_004310A0(?:?);//004310A0
    //function sub_004310D0(?:?):?;//004310D0
    procedure DefineProperties(Filer:TFiler);//00431134
    //function sub_00431180(?:?):?;//00431180
    //function sub_004312D0:?;//004312D0
    //function sub_004312E8:?;//004312E8
    //procedure sub_00431304(?:?);//00431304
    //procedure sub_00431360(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00431360
    //procedure sub_004313A0(?:?);//004313A0
    //procedure sub_004313BC(?:?);//004313BC
    //procedure sub_0043141C(?:?);//0043141C
    //procedure sub_0043142C(?:?);//0043142C
    //procedure sub_0043145C(?:?);//0043145C
    destructor Destroy;//00431650
    //procedure sub_004316B8(?:?; ?:AnsiString; ?:?; ?:?; ?:?);//004316B8
    //function sub_0043175C(?:?; ?:?):?;//0043175C
    //procedure sub_00431928(?:?; ?:?; ?:TGraphic);//00431928
    //function sub_00431998(?:TClipboardFormats; ?:?):?;//00431998
    //function sub_004319F4:?;//004319F4
    //function sub_00431A20:?;//00431A20
    destructor Destroy;//00431A98
    //procedure sub_00431AD4(?:?);//00431AD4
    //procedure sub_00431B18(?:?; ?:TGraphic);//00431B18
    //function sub_00431BA8(?:?):?;//00431BA8
    //function sub_00431BD0(?:TPicture):?;//00431BD0
    //procedure sub_00431BF8(?:TPicture; ?:?);//00431BF8
    //procedure sub_00431CBC(?:?; ?:LongWord; ?:THandle; ?:?);//00431CBC
    //procedure sub_00431DA4(?:?; ?:?; ?:?; ?:?);//00431DA4
    //function sub_00431DDC(?:TPicture; ?:LongWord):?;//00431DDC
    //procedure sub_00431E04(?:?; ?:?);//00431E04
    //procedure sub_00431E24(?:?; ?:?);//00431E24
    //procedure sub_00431E44(?:?);//00431E44
    //procedure sub_00431EB4(?:?);//00431EB4
    //procedure sub_00431EF0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00431EF0
    //function sub_004320D0(?:?):?;//004320D0
    procedure DefineProperties(Filer:TFiler);//00432168
    //function sub_004321B4(?:TPicture):?;//004321B4
    //function sub_004321E0(?:TPicture):?;//004321E0
    destructor Destroy;//0043220C
    procedure sub_00432260;//00432260
    constructor Create;//0043226C
    destructor Destroy;//004322C8
    //procedure sub_00432304(?:?);//00432304
    //procedure sub_004323D8(?:?; ?:?);//004323D8
    //function sub_00432480:?;//00432480
    //function sub_0043249C:?;//0043249C
    //function sub_0043252C:?;//0043252C
    //function sub_004325F8:?;//004325F8
    //procedure sub_00432688(?:?);//00432688
    procedure sub_004326F0(?:TMetafile);//004326F0
    //procedure sub_00432724(?:?);//00432724
    //procedure sub_004327A4(?:TMetafile; ?:?);//004327A4
    //procedure sub_0043288C(?:TMetafile; ?:?; ?:?);//0043288C
    //procedure sub_00432A2C(?:?);//00432A2C
    //procedure sub_00432AF0(?:?);//00432AF0
    procedure sub_00432B2C(?:TMetafile; ?:HENHMETAFILE);//00432B2C
    //procedure sub_00432BFC(?:?);//00432BFC
    procedure sub_00432C94(?:TMetafile; ?:Integer);//00432C94
    procedure sub_00432CF0(?:TMetafile; ?:Integer);//00432CF0
    //procedure sub_00432D4C(?:?);//00432D4C
    //procedure sub_00432D5C(?:?);//00432D5C
    //function sub_00432DF4(?:TMetafile; ?:?):?;//00432DF4
    procedure sub_00432E64(?:TMetafile);//00432E64
    //procedure sub_00432F38(?:?);//00432F38
    //procedure sub_00432FD0(?:TMetafile; ?:?);//00432FD0
    //procedure sub_00433064(?:TMetafile; ?:?);//00433064
    //procedure sub_004331CC(?:?; ?:?);//004331CC
    //procedure sub_00433278(?:?; ?:?; ?:?);//00433278
    procedure FreeMemoryContexts;//00433358
    procedure sub_00433404(?:HBITMAP);//00433404
    destructor Destroy;//004334F0
    procedure sub_004335DC;//004335DC
    procedure sub_004336E8(?:TSharedImage);//004336E8
    procedure sub_004336F8(?:TSharedImage);//004336F8
    destructor Destroy;//00433728
    procedure sub_004337A8;//004337A8
    //procedure sub_00433824(?:HBITMAP; ?:?; ?:?);//00433824
    procedure sub_004338F4(?:TDIBSection);//004338F4
    //function sub_00433964(?:HBITMAP; ?:HPALETTE; ?:HPALETTE; ?:?; ?:?):?;//00433964
    //function sub_00433FD4(?:HPALETTE):?;//00433FD4
    //function sub_0043404C(?:HBITMAP; ?:HPALETTE; ?:?):?;//0043404C
    constructor Create;//00434278
    destructor Destroy;//004342F4
    //procedure sub_00434344(?:?);//00434344
    //procedure sub_0043444C(?:TBitmap; ?:HBITMAP; ?:?);//0043444C
    procedure sub_00434520(?:TBitmap; ?:TBitmap);//00434520
    //procedure sub_0043455C(?:?);//0043455C
    procedure sub_00434580(?:TBitmap);//00434580
    //procedure sub_00434608(?:?; ?:?);//00434608
    //procedure sub_004348AC(?:?);//004348AC
    //function sub_0043494C:?;//0043494C
    //function sub_0043498C(?:TBitmap):?;//0043498C
    //function sub_004349FC:?;//004349FC
    //function sub_00434A34(?:TBitmap):?;//00434A34
    //function sub_00434A8C:?;//00434A8C
    //function sub_00434AB0:?;//00434AB0
    //function sub_00434AD4(?:TBitmap):?;//00434AD4
    //function sub_00434B10:?;//00434B10
    //function sub_00434B34(?:?):?;//00434B34
    //function sub_00434BEC(?:TBitmap; ?:?):?;//00434BEC
    //function sub_00434C88(?:TBitmap):?;//00434C88
    //function sub_00434CF0:?;//00434CF0
    procedure sub_00434D0C(?:TBitmap);//00434D0C
    procedure sub_00434DE0(?:TBitmap);//00434DE0
    procedure sub_00434E00(?:TBitmap);//00434E00
    procedure sub_00434EC4(?:TBitmap);//00434EC4
    procedure sub_00434F5C(?:TBitmap);//00434F5C
    //procedure sub_0043506C(?:?; ?:?; ?:?);//0043506C
    //procedure sub_00435104(?:?);//00435104
    //procedure sub_00435134(?:?; ?:LongWord; ?:AnsiString);//00435134
    //procedure sub_004351A0(?:TBitmap; ?:HBITMAP; ?:HPALETTE; ?:?; ?:?; ?:?);//004351A0
    //procedure sub_004352AC(?:?);//004352AC
    //procedure sub_004352DC(?:TBitmap; ?:TResourceStream; ?:?; ?:?);//004352DC
    //procedure sub_004358A8(?:TBitmap; ?:?; ?:?);//004358A8
    //procedure sub_00435A0C(?:?);//00435A0C
    //procedure sub_00435BD8(?:?);//00435BD8
    //procedure sub_00435C48(?:TBitmap; ?:?);//00435C48
    //procedure sub_00435CF4(?:?);//00435CF4
    //procedure sub_00435E00(?:TBitmap; ?:?);//00435E00
    //procedure sub_00435F78(?:TBitmap; ?:?);//00435F78
    //procedure sub_00435FF8(?:?);//00435FF8
    //procedure sub_00436068(?:?);//00436068
    //procedure sub_00436088(?:TBitmap; ?:?; ?:?);//00436088
    //function sub_004363C8(?:TBitmap):?;//004363C8
    //procedure sub_00436424(?:?);//00436424
    //procedure sub_00436444(?:?; ?:?; ?:?);//00436444
    destructor Destroy;//00436500
    procedure sub_0043653C;//0043653C
    constructor Create;//00436564
    destructor Destroy;//004365CC
    //procedure sub_00436608(?:?);//00436608
    //procedure sub_00436680(?:?; ?:?);//00436680
    //function sub_004366D4:?;//004366D4
    //function sub_00436708(?:TIcon):?;//00436708
    //function sub_0043672C:?;//0043672C
    //function sub_00436758:?;//00436758
    procedure sub_00436784(?:TIcon);//00436784
    procedure sub_00436818(?:TIcon);//00436818
    //procedure sub_004368DC(?:?);//004368DC
    //procedure sub_0043699C(?:TIcon; ?:?; ?:TMemoryStream);//0043699C
    procedure sub_00436A24(?:TIcon; ?:HICON);//00436A24
    //procedure sub_00436A4C(?:?);//00436A4C
    //procedure sub_00436A80(?:?);//00436A80
    //procedure sub_00436A90(?:?);//00436A90
    //procedure sub_00436AC4(?:?);//00436AC4
    //procedure sub_00436B00(?:?; ?:?);//00436B00
    //procedure sub_00436B20(?:?; ?:?);//00436B20
    procedure InitScreenLogPixels;//00436B40
    function GetDefFontCharSet:TFontCharset;//00436B80
    procedure InitDefFontData;//00436BD8
    //procedure sub_00436D28(?:?);//00436D28
    //procedure sub_00436D40(?:?);//00436D40
    //function sub_00436D58(?:TPatternManager; ?:Longint; ?:?):?;//00436D58
    //function sub_00436E24(?:?; ?:?; ?:?):?;//00436E24
    //function sub_00436FC8(?:?; ?:?):?;//00436FC8

implementation

//0042D164
procedure sub_0042D164(?:HPALETTE);
begin
{*
 0042D164    push        ebp
 0042D165    mov         ebp,esp
 0042D167    push        ecx
 0042D168    mov         dword ptr [ebp-4],eax
 0042D16B    cmp         dword ptr [ebp-4],0
>0042D16F    je          0042D185
 0042D171    mov         eax,dword ptr [ebp-4]
 0042D174    cmp         eax,dword ptr ds:[571AB8];0x0 SystemPalette16:HPALETTE
>0042D17A    je          0042D185
 0042D17C    mov         eax,dword ptr [ebp-4]
 0042D17F    push        eax
 0042D180    call        gdi32.DeleteObject
 0042D185    pop         ecx
 0042D186    pop         ebp
 0042D187    ret
*}
end;

//0042D1E8
function GetHashCode(const Buffer:void ; Count:Integer):Word;
begin
{*
 0042D1E8    mov         ecx,edx
 0042D1EA    mov         edx,eax
 0042D1EC    xor         eax,eax
 0042D1EE    rol         ax,5
 0042D1F2    xor         al,byte ptr [edx]
 0042D1F4    inc         edx
 0042D1F5    dec         ecx
>0042D1F6    jne         0042D1EE
 0042D1F8    ret
*}
end;

//0042D1FC
constructor TResourceManager.Create(AResDataSize:Word);
begin
{*
 0042D1FC    push        ebp
 0042D1FD    mov         ebp,esp
 0042D1FF    add         esp,0FFFFFFF8
 0042D202    test        dl,dl
>0042D204    je          0042D20E
 0042D206    add         esp,0FFFFFFF0
 0042D209    call        @ClassCreate
 0042D20E    mov         word ptr [ebp-8],cx
 0042D212    mov         byte ptr [ebp-5],dl
 0042D215    mov         dword ptr [ebp-4],eax
 0042D218    mov         eax,dword ptr [ebp-4]
 0042D21B    mov         dx,word ptr [ebp-8]
 0042D21F    mov         word ptr [eax+20],dx
 0042D223    mov         eax,dword ptr [ebp-4]
 0042D226    add         eax,8
 0042D229    push        eax
 0042D22A    call        kernel32.InitializeCriticalSection
 0042D22F    mov         eax,dword ptr [ebp-4]
 0042D232    cmp         byte ptr [ebp-5],0
>0042D236    je          0042D247
 0042D238    call        @AfterConstruction
 0042D23D    pop         dword ptr fs:[0]
 0042D244    add         esp,0C
 0042D247    mov         eax,dword ptr [ebp-4]
 0042D24A    pop         ecx
 0042D24B    pop         ecx
 0042D24C    pop         ebp
 0042D24D    ret
*}
end;

//0042D280
procedure sub_0042D280(?:TResourceManager);
begin
{*
 0042D280    push        ebp
 0042D281    mov         ebp,esp
 0042D283    push        ecx
 0042D284    mov         dword ptr [ebp-4],eax
 0042D287    mov         eax,dword ptr [ebp-4]
 0042D28A    add         eax,8
 0042D28D    push        eax
 0042D28E    call        kernel32.EnterCriticalSection
 0042D293    pop         ecx
 0042D294    pop         ebp
 0042D295    ret
*}
end;

//0042D298
procedure sub_0042D298(?:TResourceManager);
begin
{*
 0042D298    push        ebp
 0042D299    mov         ebp,esp
 0042D29B    push        ecx
 0042D29C    mov         dword ptr [ebp-4],eax
 0042D29F    mov         eax,dword ptr [ebp-4]
 0042D2A2    add         eax,8
 0042D2A5    push        eax
 0042D2A6    call        kernel32.LeaveCriticalSection
 0042D2AB    pop         ecx
 0042D2AC    pop         ebp
 0042D2AD    ret
*}
end;

//0042D2B0
{*function sub_0042D2B0(?:TResourceManager; ?:?):?;
begin
 0042D2B0    push        ebp
 0042D2B1    mov         ebp,esp
 0042D2B3    add         esp,0FFFFFFEC
 0042D2B6    mov         dword ptr [ebp-8],edx
 0042D2B9    mov         dword ptr [ebp-4],eax
 0042D2BC    mov         eax,dword ptr [ebp-4]
 0042D2BF    movzx       edx,word ptr [eax+20]
 0042D2C3    mov         eax,dword ptr [ebp-8]
 0042D2C6    call        GetHashCode
 0042D2CB    mov         word ptr [ebp-0E],ax
 0042D2CF    mov         eax,dword ptr [ebp-4]
 0042D2D2    call        0042D280
 0042D2D7    xor         eax,eax
 0042D2D9    push        ebp
 0042D2DA    push        42D3A5
 0042D2DF    push        dword ptr fs:[eax]
 0042D2E2    mov         dword ptr fs:[eax],esp
 0042D2E5    mov         eax,dword ptr [ebp-4]
 0042D2E8    mov         eax,dword ptr [eax+4]
 0042D2EB    mov         dword ptr [ebp-0C],eax
>0042D2EE    jmp         0042D2F8
 0042D2F0    mov         eax,dword ptr [ebp-0C]
 0042D2F3    mov         eax,dword ptr [eax]
 0042D2F5    mov         dword ptr [ebp-0C],eax
 0042D2F8    cmp         dword ptr [ebp-0C],0
>0042D2FC    je          0042D324
 0042D2FE    mov         eax,dword ptr [ebp-0C]
 0042D301    mov         ax,word ptr [eax+0C]
 0042D305    cmp         ax,word ptr [ebp-0E]
>0042D309    jne         0042D2F0
 0042D30B    mov         eax,dword ptr [ebp-4]
 0042D30E    movzx       ecx,word ptr [eax+20]
 0042D312    mov         edx,dword ptr [ebp-8]
 0042D315    mov         eax,dword ptr [ebp-0C]
 0042D318    add         eax,10
 0042D31B    call        CompareMem
 0042D320    test        al,al
>0042D322    je          0042D2F0
 0042D324    cmp         dword ptr [ebp-0C],0
>0042D328    jne         0042D389
 0042D32A    mov         eax,dword ptr [ebp-4]
 0042D32D    movzx       eax,word ptr [eax+20]
 0042D331    add         eax,10
 0042D334    call        @GetMem
 0042D339    mov         dword ptr [ebp-0C],eax
 0042D33C    mov         eax,dword ptr [ebp-0C]
 0042D33F    mov         dword ptr [ebp-14],eax
 0042D342    mov         eax,dword ptr [ebp-4]
 0042D345    mov         eax,dword ptr [eax+4]
 0042D348    mov         edx,dword ptr [ebp-14]
 0042D34B    mov         dword ptr [edx],eax
 0042D34D    mov         eax,dword ptr [ebp-14]
 0042D350    xor         edx,edx
 0042D352    mov         dword ptr [eax+4],edx
 0042D355    mov         eax,dword ptr [ebp-8]
 0042D358    mov         eax,dword ptr [eax]
 0042D35A    mov         edx,dword ptr [ebp-14]
 0042D35D    mov         dword ptr [edx+8],eax
 0042D360    mov         eax,dword ptr [ebp-14]
 0042D363    mov         dx,word ptr [ebp-0E]
 0042D367    mov         word ptr [eax+0C],dx
 0042D36B    mov         eax,dword ptr [ebp-4]
 0042D36E    movzx       ecx,word ptr [eax+20]
 0042D372    mov         eax,dword ptr [ebp-14]
 0042D375    lea         edx,[eax+10]
 0042D378    mov         eax,dword ptr [ebp-8]
 0042D37B    call        Move
 0042D380    mov         eax,dword ptr [ebp-4]
 0042D383    mov         edx,dword ptr [ebp-0C]
 0042D386    mov         dword ptr [eax+4],edx
 0042D389    mov         eax,dword ptr [ebp-0C]
 0042D38C    inc         dword ptr [eax+4]
 0042D38F    xor         eax,eax
 0042D391    pop         edx
 0042D392    pop         ecx
 0042D393    pop         ecx
 0042D394    mov         dword ptr fs:[eax],edx
 0042D397    push        42D3AC
 0042D39C    mov         eax,dword ptr [ebp-4]
 0042D39F    call        0042D298
 0042D3A4    ret
>0042D3A5    jmp         @HandleFinally
>0042D3AA    jmp         0042D39C
 0042D3AC    mov         eax,dword ptr [ebp-0C]
 0042D3AF    mov         esp,ebp
 0042D3B1    pop         ebp
 0042D3B2    ret
end;*}

//0042D3B4
{*procedure sub_0042D3B4(?:TResourceManager; ?:?);
begin
 0042D3B4    push        ebp
 0042D3B5    mov         ebp,esp
 0042D3B7    add         esp,0FFFFFFEC
 0042D3BA    mov         dword ptr [ebp-8],edx
 0042D3BD    mov         dword ptr [ebp-4],eax
 0042D3C0    cmp         dword ptr [ebp-8],0
>0042D3C4    je          0042D47C
 0042D3CA    mov         eax,dword ptr [ebp-8]
 0042D3CD    mov         dword ptr [ebp-14],eax
 0042D3D0    mov         eax,dword ptr [ebp-4]
 0042D3D3    call        0042D280
 0042D3D8    xor         eax,eax
 0042D3DA    push        ebp
 0042D3DB    push        42D452
 0042D3E0    push        dword ptr fs:[eax]
 0042D3E3    mov         dword ptr fs:[eax],esp
 0042D3E6    mov         eax,dword ptr [ebp-14]
 0042D3E9    dec         dword ptr [eax+4]
 0042D3EC    mov         eax,dword ptr [ebp-14]
 0042D3EF    cmp         dword ptr [eax+4],0
 0042D3F3    sete        byte ptr [ebp-0D]
 0042D3F7    cmp         byte ptr [ebp-0D],0
>0042D3FB    je          0042D43C
 0042D3FD    mov         eax,dword ptr [ebp-4]
 0042D400    mov         eax,dword ptr [eax+4]
 0042D403    cmp         eax,dword ptr [ebp-8]
>0042D406    jne         0042D415
 0042D408    mov         eax,dword ptr [ebp-8]
 0042D40B    mov         eax,dword ptr [eax]
 0042D40D    mov         edx,dword ptr [ebp-4]
 0042D410    mov         dword ptr [edx+4],eax
>0042D413    jmp         0042D43C
 0042D415    mov         eax,dword ptr [ebp-4]
 0042D418    mov         eax,dword ptr [eax+4]
 0042D41B    mov         dword ptr [ebp-0C],eax
>0042D41E    jmp         0042D428
 0042D420    mov         eax,dword ptr [ebp-0C]
 0042D423    mov         eax,dword ptr [eax]
 0042D425    mov         dword ptr [ebp-0C],eax
 0042D428    mov         eax,dword ptr [ebp-0C]
 0042D42B    mov         eax,dword ptr [eax]
 0042D42D    cmp         eax,dword ptr [ebp-8]
>0042D430    jne         0042D420
 0042D432    mov         eax,dword ptr [ebp-8]
 0042D435    mov         eax,dword ptr [eax]
 0042D437    mov         edx,dword ptr [ebp-0C]
 0042D43A    mov         dword ptr [edx],eax
 0042D43C    xor         eax,eax
 0042D43E    pop         edx
 0042D43F    pop         ecx
 0042D440    pop         ecx
 0042D441    mov         dword ptr fs:[eax],edx
 0042D444    push        42D459
 0042D449    mov         eax,dword ptr [ebp-4]
 0042D44C    call        0042D298
 0042D451    ret
>0042D452    jmp         @HandleFinally
>0042D457    jmp         0042D449
 0042D459    cmp         byte ptr [ebp-0D],0
>0042D45D    je          0042D47C
 0042D45F    mov         eax,dword ptr [ebp-14]
 0042D462    cmp         dword ptr [eax+8],0
>0042D466    je          0042D474
 0042D468    mov         eax,dword ptr [ebp-14]
 0042D46B    mov         eax,dword ptr [eax+8]
 0042D46E    push        eax
 0042D46F    call        gdi32.DeleteObject
 0042D474    mov         eax,dword ptr [ebp-8]
 0042D477    call        @FreeMem
 0042D47C    mov         esp,ebp
 0042D47E    pop         ebp
 0042D47F    ret
end;*}

//0042D480
{*procedure sub_0042D480(?:TResourceManager; ?:?; ?:?);
begin
 0042D480    push        ebp
 0042D481    mov         ebp,esp
 0042D483    add         esp,0FFFFFFF0
 0042D486    push        esi
 0042D487    mov         dword ptr [ebp-0C],ecx
 0042D48A    mov         dword ptr [ebp-8],edx
 0042D48D    mov         dword ptr [ebp-4],eax
 0042D490    mov         eax,dword ptr [ebp-4]
 0042D493    call        0042D280
 0042D498    xor         eax,eax
 0042D49A    push        ebp
 0042D49B    push        42D4F8
 0042D4A0    push        dword ptr fs:[eax]
 0042D4A3    mov         dword ptr fs:[eax],esp
 0042D4A6    mov         eax,dword ptr [ebp-8]
 0042D4A9    mov         eax,dword ptr [eax+10]
 0042D4AC    mov         dword ptr [ebp-10],eax
 0042D4AF    mov         edx,dword ptr [ebp-0C]
 0042D4B2    mov         eax,dword ptr [ebp-4]
 0042D4B5    call        0042D2B0
 0042D4BA    mov         edx,dword ptr [ebp-8]
 0042D4BD    mov         dword ptr [edx+10],eax
 0042D4C0    mov         eax,dword ptr [ebp-8]
 0042D4C3    mov         eax,dword ptr [eax+10]
 0042D4C6    cmp         eax,dword ptr [ebp-10]
>0042D4C9    je          0042D4D7
 0042D4CB    mov         eax,dword ptr [ebp-8]
 0042D4CE    mov         si,0FFFD
 0042D4D2    call        @CallDynaInst
 0042D4D7    mov         edx,dword ptr [ebp-10]
 0042D4DA    mov         eax,dword ptr [ebp-4]
 0042D4DD    call        0042D3B4
 0042D4E2    xor         eax,eax
 0042D4E4    pop         edx
 0042D4E5    pop         ecx
 0042D4E6    pop         ecx
 0042D4E7    mov         dword ptr fs:[eax],edx
 0042D4EA    push        42D4FF
 0042D4EF    mov         eax,dword ptr [ebp-4]
 0042D4F2    call        0042D298
 0042D4F7    ret
>0042D4F8    jmp         @HandleFinally
>0042D4FD    jmp         0042D4EF
 0042D4FF    pop         esi
 0042D500    mov         esp,ebp
 0042D502    pop         ebp
 0042D503    ret
end;*}

//0042D504
{*procedure sub_0042D504(?:TResourceManager; ?:TGraphicsObject; ?:?);
begin
 0042D504    push        ebp
 0042D505    mov         ebp,esp
 0042D507    add         esp,0FFFFFFF0
 0042D50A    push        esi
 0042D50B    mov         dword ptr [ebp-0C],ecx
 0042D50E    mov         dword ptr [ebp-8],edx
 0042D511    mov         dword ptr [ebp-4],eax
 0042D514    mov         eax,dword ptr [ebp-4]
 0042D517    call        0042D280
 0042D51C    xor         eax,eax
 0042D51E    push        ebp
 0042D51F    push        42D577
 0042D524    push        dword ptr fs:[eax]
 0042D527    mov         dword ptr fs:[eax],esp
 0042D52A    mov         eax,dword ptr [ebp-8]
 0042D52D    mov         eax,dword ptr [eax+10]
 0042D530    mov         dword ptr [ebp-10],eax
 0042D533    mov         eax,dword ptr [ebp-10]
 0042D536    cmp         eax,dword ptr [ebp-0C]
>0042D539    je          0042D561
 0042D53B    mov         eax,dword ptr [ebp-0C]
 0042D53E    inc         dword ptr [eax+4]
 0042D541    mov         eax,dword ptr [ebp-8]
 0042D544    mov         edx,dword ptr [ebp-0C]
 0042D547    mov         dword ptr [eax+10],edx
 0042D54A    mov         eax,dword ptr [ebp-8]
 0042D54D    mov         si,0FFFD
 0042D551    call        @CallDynaInst
 0042D556    mov         edx,dword ptr [ebp-10]
 0042D559    mov         eax,dword ptr [ebp-4]
 0042D55C    call        0042D3B4
 0042D561    xor         eax,eax
 0042D563    pop         edx
 0042D564    pop         ecx
 0042D565    pop         ecx
 0042D566    mov         dword ptr fs:[eax],edx
 0042D569    push        42D57E
 0042D56E    mov         eax,dword ptr [ebp-4]
 0042D571    call        0042D298
 0042D576    ret
>0042D577    jmp         @HandleFinally
>0042D57C    jmp         0042D56E
 0042D57E    pop         esi
 0042D57F    mov         esp,ebp
 0042D581    pop         ebp
 0042D582    ret
end;*}

//0042D584
procedure sub_0042D584(?:TResourceManager);
begin
{*
 0042D584    push        ebp
 0042D585    mov         ebp,esp
 0042D587    add         esp,0FFFFFFF4
 0042D58A    mov         dword ptr [ebp-4],eax
 0042D58D    mov         eax,dword ptr [ebp-4]
 0042D590    call        0042D280
 0042D595    xor         eax,eax
 0042D597    push        ebp
 0042D598    push        42D602
 0042D59D    push        dword ptr fs:[eax]
 0042D5A0    mov         dword ptr fs:[eax],esp
 0042D5A3    mov         eax,dword ptr [ebp-4]
 0042D5A6    mov         eax,dword ptr [eax+4]
 0042D5A9    mov         dword ptr [ebp-8],eax
 0042D5AC    cmp         dword ptr [ebp-8],0
>0042D5B0    je          0042D5EC
 0042D5B2    mov         eax,dword ptr [ebp-8]
 0042D5B5    mov         dword ptr [ebp-0C],eax
 0042D5B8    mov         eax,dword ptr [ebp-0C]
 0042D5BB    cmp         dword ptr [eax+8],0
>0042D5BF    je          0042D5DE
 0042D5C1    mov         eax,dword ptr [ebp-0C]
 0042D5C4    cmp         dword ptr [eax+14],0
>0042D5C8    jge         0042D5DE
 0042D5CA    mov         eax,dword ptr [ebp-0C]
 0042D5CD    mov         eax,dword ptr [eax+8]
 0042D5D0    push        eax
 0042D5D1    call        gdi32.DeleteObject
 0042D5D6    mov         eax,dword ptr [ebp-0C]
 0042D5D9    xor         edx,edx
 0042D5DB    mov         dword ptr [eax+8],edx
 0042D5DE    mov         eax,dword ptr [ebp-8]
 0042D5E1    mov         eax,dword ptr [eax]
 0042D5E3    mov         dword ptr [ebp-8],eax
 0042D5E6    cmp         dword ptr [ebp-8],0
>0042D5EA    jne         0042D5B2
 0042D5EC    xor         eax,eax
 0042D5EE    pop         edx
 0042D5EF    pop         ecx
 0042D5F0    pop         ecx
 0042D5F1    mov         dword ptr fs:[eax],edx
 0042D5F4    push        42D609
 0042D5F9    mov         eax,dword ptr [ebp-4]
 0042D5FC    call        0042D298
 0042D601    ret
>0042D602    jmp         @HandleFinally
>0042D607    jmp         0042D5F9
 0042D609    mov         esp,ebp
 0042D60B    pop         ebp
 0042D60C    ret
*}
end;

//0042D610
procedure sub_0042D610;
begin
{*
 0042D610    push        ebp
 0042D611    mov         ebp,esp
 0042D613    add         esp,0FFFFFFEC
 0042D616    xor         eax,eax
 0042D618    mov         dword ptr [ebp-4],eax
 0042D61B    mov         eax,[00571B10];0x0 CanvasList:TThreadList
 0042D620    call        TThreadList.LockList
 0042D625    mov         dword ptr [ebp-0C],eax
 0042D628    xor         eax,eax
 0042D62A    push        ebp
 0042D62B    push        42D6BF
 0042D630    push        dword ptr fs:[eax]
 0042D633    mov         dword ptr fs:[eax],esp
>0042D636    jmp         0042D659
 0042D638    mov         edx,dword ptr [ebp-4]
 0042D63B    mov         eax,dword ptr [ebp-0C]
 0042D63E    call        TList.Get
 0042D643    mov         dword ptr [ebp-10],eax
 0042D646    mov         eax,dword ptr [ebp-10]
 0042D649    call        TCanvas.Lock
 0042D64E    inc         dword ptr [ebp-4]
 0042D651    mov         eax,dword ptr [ebp-10]
 0042D654    call        0042F6D4
 0042D659    mov         eax,dword ptr [ebp-0C]
 0042D65C    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0042D65F    cmp         eax,dword ptr [ebp-4]
>0042D662    jg          0042D638
 0042D664    push        ebp
 0042D665    mov         eax,[00571B08];0x0 PenManager:TResourceManager
 0042D66A    call        0042D584
 0042D66F    pop         ecx
 0042D670    push        ebp
 0042D671    mov         eax,[00571B0C];0x0 BrushManager:TResourceManager
 0042D676    call        0042D584
 0042D67B    pop         ecx
 0042D67C    xor         eax,eax
 0042D67E    pop         edx
 0042D67F    pop         ecx
 0042D680    pop         ecx
 0042D681    mov         dword ptr fs:[eax],edx
 0042D684    push        42D6C6
 0042D689    mov         eax,dword ptr [ebp-4]
 0042D68C    dec         eax
 0042D68D    test        eax,eax
>0042D68F    jl          0042D6B4
 0042D691    inc         eax
 0042D692    mov         dword ptr [ebp-14],eax
 0042D695    mov         dword ptr [ebp-8],0
 0042D69C    mov         edx,dword ptr [ebp-8]
 0042D69F    mov         eax,dword ptr [ebp-0C]
 0042D6A2    call        TList.Get
 0042D6A7    call        TCanvas.Unlock
 0042D6AC    inc         dword ptr [ebp-8]
 0042D6AF    dec         dword ptr [ebp-14]
>0042D6B2    jne         0042D69C
 0042D6B4    mov         eax,[00571B10];0x0 CanvasList:TThreadList
 0042D6B9    call        TThreadList.UnlockList
 0042D6BE    ret
>0042D6BF    jmp         @HandleFinally
>0042D6C4    jmp         0042D689
 0042D6C6    mov         esp,ebp
 0042D6C8    pop         ebp
 0042D6C9    ret
*}
end;

//0042DB0C
function ColorToRGB(Color:TColor):Longint;
begin
{*
 0042DB0C    push        ebp
 0042DB0D    mov         ebp,esp
 0042DB0F    add         esp,0FFFFFFF8
 0042DB12    mov         dword ptr [ebp-4],eax
 0042DB15    cmp         dword ptr [ebp-4],0
>0042DB19    jge         0042DB2E
 0042DB1B    mov         eax,dword ptr [ebp-4]
 0042DB1E    and         eax,0FF
 0042DB23    push        eax
 0042DB24    call        user32.GetSysColor
 0042DB29    mov         dword ptr [ebp-8],eax
>0042DB2C    jmp         0042DB34
 0042DB2E    mov         eax,dword ptr [ebp-4]
 0042DB31    mov         dword ptr [ebp-8],eax
 0042DB34    mov         eax,dword ptr [ebp-8]
 0042DB37    pop         ecx
 0042DB38    pop         ecx
 0042DB39    pop         ebp
 0042DB3A    ret
*}
end;

//0042DB3C
function ColorToIdent(Color:Longint; var Ident:AnsiString):Boolean;
begin
{*
 0042DB3C    push        ebp
 0042DB3D    mov         ebp,esp
 0042DB3F    add         esp,0FFFFFFF4
 0042DB42    mov         dword ptr [ebp-8],edx
 0042DB45    mov         dword ptr [ebp-4],eax
 0042DB48    push        33
 0042DB4A    mov         ecx,56BD9C
 0042DB4F    mov         edx,dword ptr [ebp-8]
 0042DB52    mov         eax,dword ptr [ebp-4]
 0042DB55    call        0041F9C8
 0042DB5A    mov         byte ptr [ebp-9],al
 0042DB5D    mov         al,byte ptr [ebp-9]
 0042DB60    mov         esp,ebp
 0042DB62    pop         ebp
 0042DB63    ret
*}
end;

//0042DB64
function IdentToColor(const Ident:AnsiString; var Color:Longint):Boolean;
begin
{*
 0042DB64    push        ebp
 0042DB65    mov         ebp,esp
 0042DB67    add         esp,0FFFFFFF4
 0042DB6A    mov         dword ptr [ebp-8],edx
 0042DB6D    mov         dword ptr [ebp-4],eax
 0042DB70    push        33
 0042DB72    mov         ecx,56BD9C
 0042DB77    mov         edx,dword ptr [ebp-8]
 0042DB7A    mov         eax,dword ptr [ebp-4]
 0042DB7D    call        0041F968
 0042DB82    mov         byte ptr [ebp-9],al
 0042DB85    mov         al,byte ptr [ebp-9]
 0042DB88    mov         esp,ebp
 0042DB8A    pop         ebp
 0042DB8B    ret
*}
end;

//0042DB8C
procedure TGraphicsObject.sub_0042DB8C;
begin
{*
 0042DB8C    push        ebp
 0042DB8D    mov         ebp,esp
 0042DB8F    push        ecx
 0042DB90    push        ebx
 0042DB91    mov         dword ptr [ebp-4],eax
 0042DB94    mov         eax,dword ptr [ebp-4]
 0042DB97    cmp         word ptr [eax+0A],0;TGraphicsObject.?fA:word
>0042DB9C    je          0042DBAA
 0042DB9E    mov         ebx,dword ptr [ebp-4]
 0042DBA1    mov         edx,dword ptr [ebp-4]
 0042DBA4    mov         eax,dword ptr [ebx+0C];TGraphicsObject.?fC:TCustomListView
 0042DBA7    call        dword ptr [ebx+8];TGraphicsObject.FOnChange
 0042DBAA    pop         ebx
 0042DBAB    pop         ecx
 0042DBAC    pop         ebp
 0042DBAD    ret
*}
end;

//0042DBB0
procedure sub_0042DBB0(?:TGraphicsObject);
begin
{*
 0042DBB0    push        ebp
 0042DBB1    mov         ebp,esp
 0042DBB3    push        ecx
 0042DBB4    mov         dword ptr [ebp-4],eax
 0042DBB7    mov         eax,dword ptr [ebp-4]
 0042DBBA    cmp         dword ptr [eax+14],0
>0042DBBE    je          0042DBCC
 0042DBC0    mov         eax,dword ptr [ebp-4]
 0042DBC3    mov         eax,dword ptr [eax+14]
 0042DBC6    push        eax
 0042DBC7    call        kernel32.EnterCriticalSection
 0042DBCC    pop         ecx
 0042DBCD    pop         ebp
 0042DBCE    ret
*}
end;

//0042DBD0
procedure sub_0042DBD0(?:TGraphicsObject);
begin
{*
 0042DBD0    push        ebp
 0042DBD1    mov         ebp,esp
 0042DBD3    push        ecx
 0042DBD4    mov         dword ptr [ebp-4],eax
 0042DBD7    mov         eax,dword ptr [ebp-4]
 0042DBDA    cmp         dword ptr [eax+14],0
>0042DBDE    je          0042DBEC
 0042DBE0    mov         eax,dword ptr [ebp-4]
 0042DBE3    mov         eax,dword ptr [eax+14]
 0042DBE6    push        eax
 0042DBE7    call        kernel32.LeaveCriticalSection
 0042DBEC    pop         ecx
 0042DBED    pop         ebp
 0042DBEE    ret
*}
end;

//0042DDA4
function CharsetToIdent(Charset:Longint; var Ident:AnsiString):Boolean;
begin
{*
 0042DDA4    push        ebp
 0042DDA5    mov         ebp,esp
 0042DDA7    add         esp,0FFFFFFF4
 0042DDAA    mov         dword ptr [ebp-8],edx
 0042DDAD    mov         dword ptr [ebp-4],eax
 0042DDB0    push        11
 0042DDB2    mov         ecx,56BF3C
 0042DDB7    mov         edx,dword ptr [ebp-8]
 0042DDBA    mov         eax,dword ptr [ebp-4]
 0042DDBD    call        0041F9C8
 0042DDC2    mov         byte ptr [ebp-9],al
 0042DDC5    mov         al,byte ptr [ebp-9]
 0042DDC8    mov         esp,ebp
 0042DDCA    pop         ebp
 0042DDCB    ret
*}
end;

//0042DDCC
function IdentToCharset(const Ident:AnsiString; var Charset:Longint):Boolean;
begin
{*
 0042DDCC    push        ebp
 0042DDCD    mov         ebp,esp
 0042DDCF    add         esp,0FFFFFFF4
 0042DDD2    mov         dword ptr [ebp-8],edx
 0042DDD5    mov         dword ptr [ebp-4],eax
 0042DDD8    push        11
 0042DDDA    mov         ecx,56BF3C
 0042DDDF    mov         edx,dword ptr [ebp-8]
 0042DDE2    mov         eax,dword ptr [ebp-4]
 0042DDE5    call        0041F968
 0042DDEA    mov         byte ptr [ebp-9],al
 0042DDED    mov         al,byte ptr [ebp-9]
 0042DDF0    mov         esp,ebp
 0042DDF2    pop         ebp
 0042DDF3    ret
*}
end;

//0042DDF4
{*procedure sub_0042DDF4(?:?; ?:?);
begin
 0042DDF4    push        ebp
 0042DDF5    mov         ebp,esp
 0042DDF7    add         esp,0FFFFFF98
 0042DDFA    push        esi
 0042DDFB    push        edi
 0042DDFC    mov         dword ptr [ebp-8],edx
 0042DDFF    mov         dword ptr [ebp-4],eax
 0042DE02    mov         eax,dword ptr [ebp-8]
 0042DE05    mov         edi,eax
 0042DE07    mov         esi,56BD6C;gvar_0056BD6C
 0042DE0C    mov         ecx,0B
 0042DE11    rep movs    dword ptr [edi],dword ptr [esi]
 0042DE13    cmp         dword ptr [ebp-4],0
>0042DE17    je          0042DECB
 0042DE1D    lea         eax,[ebp-44]
 0042DE20    push        eax
 0042DE21    push        3C
 0042DE23    mov         eax,dword ptr [ebp-4]
 0042DE26    push        eax
 0042DE27    call        gdi32.GetObjectA
 0042DE2C    test        eax,eax
>0042DE2E    je          0042DECB
 0042DE34    mov         eax,dword ptr [ebp-8]
 0042DE37    mov         edx,dword ptr [ebp-44]
 0042DE3A    mov         dword ptr [eax+4],edx
 0042DE3D    cmp         dword ptr [ebp-34],2BC
>0042DE44    jl          0042DE4D
 0042DE46    mov         eax,dword ptr [ebp-8]
 0042DE49    or          byte ptr [eax+9],1
 0042DE4D    cmp         byte ptr [ebp-30],1
>0042DE51    jne         0042DE5A
 0042DE53    mov         eax,dword ptr [ebp-8]
 0042DE56    or          byte ptr [eax+9],2
 0042DE5A    cmp         byte ptr [ebp-2F],1
>0042DE5E    jne         0042DE67
 0042DE60    mov         eax,dword ptr [ebp-8]
 0042DE63    or          byte ptr [eax+9],4
 0042DE67    cmp         byte ptr [ebp-2E],1
>0042DE6B    jne         0042DE74
 0042DE6D    mov         eax,dword ptr [ebp-8]
 0042DE70    or          byte ptr [eax+9],8
 0042DE74    mov         eax,dword ptr [ebp-8]
 0042DE77    mov         dl,byte ptr [ebp-2D]
 0042DE7A    mov         byte ptr [eax+0A],dl
 0042DE7D    lea         eax,[ebp-68]
 0042DE80    lea         edx,[ebp-28]
 0042DE83    mov         ecx,20
 0042DE88    call        @_CLenToPasStr
 0042DE8D    lea         edx,[ebp-68]
 0042DE90    mov         eax,dword ptr [ebp-8]
 0042DE93    add         eax,0B
 0042DE96    mov         cl,1F
 0042DE98    call        @PStrNCpy
 0042DE9D    mov         al,byte ptr [ebp-29]
 0042DEA0    and         al,0F
 0042DEA2    dec         al
>0042DEA4    je          0042DEB3
 0042DEA6    dec         al
>0042DEA8    jne         0042DEBC
 0042DEAA    mov         eax,dword ptr [ebp-8]
 0042DEAD    mov         byte ptr [eax+8],1
>0042DEB1    jmp         0042DEC3
 0042DEB3    mov         eax,dword ptr [ebp-8]
 0042DEB6    mov         byte ptr [eax+8],2
>0042DEBA    jmp         0042DEC3
 0042DEBC    mov         eax,dword ptr [ebp-8]
 0042DEBF    mov         byte ptr [eax+8],0
 0042DEC3    mov         eax,dword ptr [ebp-8]
 0042DEC6    mov         edx,dword ptr [ebp-4]
 0042DEC9    mov         dword ptr [eax],edx
 0042DECB    pop         edi
 0042DECC    pop         esi
 0042DECD    mov         esp,ebp
 0042DECF    pop         ebp
 0042DED0    ret
end;*}

//0042DED4
constructor TFont.Create;
begin
{*
 0042DED4    push        ebp
 0042DED5    mov         ebp,esp
 0042DED7    add         esp,0FFFFFFF8
 0042DEDA    test        dl,dl
>0042DEDC    je          0042DEE6
 0042DEDE    add         esp,0FFFFFFF0
 0042DEE1    call        @ClassCreate
 0042DEE6    mov         byte ptr [ebp-5],dl
 0042DEE9    mov         dword ptr [ebp-4],eax
 0042DEEC    xor         eax,eax
 0042DEEE    mov         [0056BD6C],eax;gvar_0056BD6C
 0042DEF3    mov         edx,56BD6C;gvar_0056BD6C
 0042DEF8    mov         eax,[00571B04];0x0 FontManager:TResourceManager
 0042DEFD    call        0042D2B0
 0042DF02    mov         edx,dword ptr [ebp-4]
 0042DF05    mov         dword ptr [edx+10],eax
 0042DF08    mov         eax,dword ptr [ebp-4]
 0042DF0B    mov         dword ptr [eax+18],0FF000008
 0042DF12    mov         eax,dword ptr [ebp-4]
 0042DF15    mov         edx,dword ptr ds:[571AC0];0x0 gvar_00571AC0
 0042DF1B    mov         dword ptr [eax+1C],edx
 0042DF1E    mov         eax,dword ptr [ebp-4]
 0042DF21    cmp         byte ptr [ebp-5],0
>0042DF25    je          0042DF36
 0042DF27    call        @AfterConstruction
 0042DF2C    pop         dword ptr fs:[0]
 0042DF33    add         esp,0C
 0042DF36    mov         eax,dword ptr [ebp-4]
 0042DF39    pop         ecx
 0042DF3A    pop         ecx
 0042DF3B    pop         ebp
 0042DF3C    ret
*}
end;

//0042DF40
destructor TFont.Destroy;
begin
{*
 0042DF40    push        ebp
 0042DF41    mov         ebp,esp
 0042DF43    add         esp,0FFFFFFF8
 0042DF46    call        @BeforeDestruction
 0042DF4B    mov         byte ptr [ebp-5],dl
 0042DF4E    mov         dword ptr [ebp-4],eax
 0042DF51    mov         eax,dword ptr [ebp-4]
 0042DF54    mov         edx,dword ptr [eax+10]
 0042DF57    mov         eax,[00571B04];0x0 FontManager:TResourceManager
 0042DF5C    call        0042D3B4
 0042DF61    cmp         byte ptr [ebp-5],0
>0042DF65    jle         0042DF6F
 0042DF67    mov         eax,dword ptr [ebp-4]
 0042DF6A    call        @ClassDestroy
 0042DF6F    pop         ecx
 0042DF70    pop         ecx
 0042DF71    pop         ebp
 0042DF72    ret
*}
end;

//0042DF74
procedure TFont.sub_0042DB8C;
begin
{*
 0042DF74    push        ebp
 0042DF75    mov         ebp,esp
 0042DF77    push        ecx
 0042DF78    mov         dword ptr [ebp-4],eax
 0042DF7B    mov         eax,dword ptr [ebp-4]
 0042DF7E    call        TGraphicsObject.sub_0042DB8C
 0042DF83    mov         eax,dword ptr [ebp-4]
 0042DF86    cmp         dword ptr [eax+20],0;TFont.FNotify:IChangeNotifier
>0042DF8A    je          0042DF97
 0042DF8C    mov         eax,dword ptr [ebp-4]
 0042DF8F    mov         eax,dword ptr [eax+20];TFont.FNotify:IChangeNotifier
 0042DF92    mov         edx,dword ptr [eax]
 0042DF94    call        dword ptr [edx+0C]
 0042DF97    pop         ecx
 0042DF98    pop         ebp
 0042DF99    ret
*}
end;

//0042DF9C
{*procedure sub_0042DF9C(?:?);
begin
 0042DF9C    push        ebp
 0042DF9D    mov         ebp,esp
 0042DF9F    add         esp,0FFFFFFF8
 0042DFA2    mov         dword ptr [ebp-8],edx
 0042DFA5    mov         dword ptr [ebp-4],eax
 0042DFA8    mov         eax,dword ptr [ebp-8]
 0042DFAB    mov         edx,dword ptr ds:[42C4F8];TFont
 0042DFB1    call        @IsClass
 0042DFB6    test        al,al
>0042DFB8    je          0042E065
 0042DFBE    mov         eax,dword ptr [ebp-4]
 0042DFC1    call        0042DBB0
 0042DFC6    xor         eax,eax
 0042DFC8    push        ebp
 0042DFC9    push        42E05E
 0042DFCE    push        dword ptr fs:[eax]
 0042DFD1    mov         dword ptr fs:[eax],esp
 0042DFD4    mov         eax,dword ptr [ebp-8]
 0042DFD7    call        0042DBB0
 0042DFDC    xor         eax,eax
 0042DFDE    push        ebp
 0042DFDF    push        42E041
 0042DFE4    push        dword ptr fs:[eax]
 0042DFE7    mov         dword ptr fs:[eax],esp
 0042DFEA    mov         eax,dword ptr [ebp-8]
 0042DFED    mov         ecx,dword ptr [eax+10]
 0042DFF0    mov         edx,dword ptr [ebp-4]
 0042DFF3    mov         eax,[00571B04];0x0 FontManager:TResourceManager
 0042DFF8    call        0042D504
 0042DFFD    mov         eax,dword ptr [ebp-8]
 0042E000    mov         edx,dword ptr [eax+18]
 0042E003    mov         eax,dword ptr [ebp-4]
 0042E006    call        TFont.SetColor
 0042E00B    mov         eax,dword ptr [ebp-4]
 0042E00E    mov         eax,dword ptr [eax+1C];TFont.FPixelsPerInch:Integer
 0042E011    mov         edx,dword ptr [ebp-8]
 0042E014    cmp         eax,dword ptr [edx+1C]
>0042E017    je          0042E02B
 0042E019    mov         eax,dword ptr [ebp-8]
 0042E01C    call        TFont.GetSize
 0042E021    mov         edx,eax
 0042E023    mov         eax,dword ptr [ebp-4]
 0042E026    call        TFont.SetSize
 0042E02B    xor         eax,eax
 0042E02D    pop         edx
 0042E02E    pop         ecx
 0042E02F    pop         ecx
 0042E030    mov         dword ptr fs:[eax],edx
 0042E033    push        42E048
 0042E038    mov         eax,dword ptr [ebp-8]
 0042E03B    call        0042DBD0
 0042E040    ret
>0042E041    jmp         @HandleFinally
>0042E046    jmp         0042E038
 0042E048    xor         eax,eax
 0042E04A    pop         edx
 0042E04B    pop         ecx
 0042E04C    pop         ecx
 0042E04D    mov         dword ptr fs:[eax],edx
 0042E050    push        42E070
 0042E055    mov         eax,dword ptr [ebp-4]
 0042E058    call        0042DBD0
 0042E05D    ret
>0042E05E    jmp         @HandleFinally
>0042E063    jmp         0042E055
 0042E065    mov         edx,dword ptr [ebp-8]
 0042E068    mov         eax,dword ptr [ebp-4]
 0042E06B    call        00420AD4
 0042E070    pop         ecx
 0042E071    pop         ecx
 0042E072    pop         ebp
 0042E073    ret
end;*}

//0042E074
{*procedure sub_0042E074(?:TFont; ?:?);
begin
 0042E074    push        ebp
 0042E075    mov         ebp,esp
 0042E077    add         esp,0FFFFFFF8
 0042E07A    push        esi
 0042E07B    push        edi
 0042E07C    mov         dword ptr [ebp-8],edx
 0042E07F    mov         dword ptr [ebp-4],eax
 0042E082    mov         eax,dword ptr [ebp-4]
 0042E085    mov         eax,dword ptr [eax+10]
 0042E088    mov         edx,dword ptr [ebp-8]
 0042E08B    lea         esi,[eax+10]
 0042E08E    mov         edi,edx
 0042E090    mov         ecx,0B
 0042E095    rep movs    dword ptr [edi],dword ptr [esi]
 0042E097    mov         eax,dword ptr [ebp-8]
 0042E09A    xor         edx,edx
 0042E09C    mov         dword ptr [eax],edx
 0042E09E    pop         edi
 0042E09F    pop         esi
 0042E0A0    pop         ecx
 0042E0A1    pop         ecx
 0042E0A2    pop         ebp
 0042E0A3    ret
end;*}

//0042E0A4
{*procedure sub_0042E0A4(?:TFont; ?:?);
begin
 0042E0A4    push        ebp
 0042E0A5    mov         ebp,esp
 0042E0A7    add         esp,0FFFFFFF8
 0042E0AA    mov         dword ptr [ebp-8],edx
 0042E0AD    mov         dword ptr [ebp-4],eax
 0042E0B0    mov         eax,dword ptr [ebp-4]
 0042E0B3    call        0042DBB0
 0042E0B8    xor         eax,eax
 0042E0BA    push        ebp
 0042E0BB    push        42E0EC
 0042E0C0    push        dword ptr fs:[eax]
 0042E0C3    mov         dword ptr fs:[eax],esp
 0042E0C6    mov         ecx,dword ptr [ebp-8]
 0042E0C9    mov         edx,dword ptr [ebp-4]
 0042E0CC    mov         eax,[00571B04];0x0 FontManager:TResourceManager
 0042E0D1    call        0042D480
 0042E0D6    xor         eax,eax
 0042E0D8    pop         edx
 0042E0D9    pop         ecx
 0042E0DA    pop         ecx
 0042E0DB    mov         dword ptr fs:[eax],edx
 0042E0DE    push        42E0F3
 0042E0E3    mov         eax,dword ptr [ebp-4]
 0042E0E6    call        0042DBD0
 0042E0EB    ret
>0042E0EC    jmp         @HandleFinally
>0042E0F1    jmp         0042E0E3
 0042E0F3    pop         ecx
 0042E0F4    pop         ecx
 0042E0F5    pop         ebp
 0042E0F6    ret
end;*}

//0042E0F8
procedure TFont.SetColor(Value:TColor);
begin
{*
 0042E0F8    push        ebp
 0042E0F9    mov         ebp,esp
 0042E0FB    add         esp,0FFFFFFF8
 0042E0FE    push        esi
 0042E0FF    mov         dword ptr [ebp-8],edx
 0042E102    mov         dword ptr [ebp-4],eax
 0042E105    mov         eax,dword ptr [ebp-4]
 0042E108    mov         eax,dword ptr [eax+18];TFont.Color:TColor
 0042E10B    cmp         eax,dword ptr [ebp-8]
>0042E10E    je          0042E125
 0042E110    mov         eax,dword ptr [ebp-8]
 0042E113    mov         edx,dword ptr [ebp-4]
 0042E116    mov         dword ptr [edx+18],eax;TFont.Color:TColor
 0042E119    mov         eax,dword ptr [ebp-4]
 0042E11C    mov         si,0FFFD
 0042E120    call        @CallDynaInst;TFont.sub_0042DB8C
 0042E125    pop         esi
 0042E126    pop         ecx
 0042E127    pop         ecx
 0042E128    pop         ebp
 0042E129    ret
*}
end;

//0042E12C
{*function sub_0042E12C(?:TFont):?;
begin
 0042E12C    push        ebp
 0042E12D    mov         ebp,esp
 0042E12F    add         esp,0FFFFFFAC
 0042E132    xor         edx,edx
 0042E134    mov         dword ptr [ebp-54],edx
 0042E137    mov         dword ptr [ebp-50],edx
 0042E13A    mov         dword ptr [ebp-4C],edx
 0042E13D    mov         dword ptr [ebp-4],eax
 0042E140    xor         eax,eax
 0042E142    push        ebp
 0042E143    push        42E2BC
 0042E148    push        dword ptr fs:[eax]
 0042E14B    mov         dword ptr fs:[eax],esp
 0042E14E    mov         eax,dword ptr [ebp-4]
 0042E151    mov         eax,dword ptr [eax+10]
 0042E154    mov         dword ptr [ebp-0C],eax
 0042E157    mov         eax,dword ptr [ebp-0C]
 0042E15A    cmp         dword ptr [eax+8],0
>0042E15E    jne         0042E298
 0042E164    mov         eax,[00571B04];0x0 FontManager:TResourceManager
 0042E169    call        0042D280
 0042E16E    xor         eax,eax
 0042E170    push        ebp
 0042E171    push        42E291
 0042E176    push        dword ptr fs:[eax]
 0042E179    mov         dword ptr fs:[eax],esp
 0042E17C    mov         eax,dword ptr [ebp-0C]
 0042E17F    cmp         dword ptr [eax+8],0
>0042E183    jne         0042E279
 0042E189    mov         eax,dword ptr [ebp-0C]
 0042E18C    mov         eax,dword ptr [eax+14]
 0042E18F    mov         dword ptr [ebp-48],eax
 0042E192    xor         eax,eax
 0042E194    mov         dword ptr [ebp-44],eax
 0042E197    xor         eax,eax
 0042E199    mov         dword ptr [ebp-40],eax
 0042E19C    xor         eax,eax
 0042E19E    mov         dword ptr [ebp-3C],eax
 0042E1A1    mov         eax,dword ptr [ebp-0C]
 0042E1A4    test        byte ptr [eax+19],1
>0042E1A8    je          0042E1B3
 0042E1AA    mov         dword ptr [ebp-38],2BC
>0042E1B1    jmp         0042E1BA
 0042E1B3    mov         dword ptr [ebp-38],190
 0042E1BA    mov         eax,dword ptr [ebp-0C]
 0042E1BD    test        byte ptr [eax+19],2
 0042E1C1    setne       al
 0042E1C4    mov         byte ptr [ebp-34],al
 0042E1C7    mov         eax,dword ptr [ebp-0C]
 0042E1CA    test        byte ptr [eax+19],4
 0042E1CE    setne       al
 0042E1D1    mov         byte ptr [ebp-33],al
 0042E1D4    mov         eax,dword ptr [ebp-0C]
 0042E1D7    test        byte ptr [eax+19],8
 0042E1DB    setne       al
 0042E1DE    mov         byte ptr [ebp-32],al
 0042E1E1    mov         eax,dword ptr [ebp-0C]
 0042E1E4    mov         al,byte ptr [eax+1A]
 0042E1E7    mov         byte ptr [ebp-31],al
 0042E1EA    lea         eax,[ebp-4C]
 0042E1ED    mov         edx,dword ptr [ebp-0C]
 0042E1F0    add         edx,1B
 0042E1F3    call        @LStrFromString
 0042E1F8    mov         eax,dword ptr [ebp-4C]
 0042E1FB    mov         edx,42E2D4;'Default'
 0042E200    call        0040BF44
 0042E205    test        eax,eax
>0042E207    jne         0042E223
 0042E209    lea         eax,[ebp-50]
 0042E20C    mov         edx,56BD77
 0042E211    call        @LStrFromString
 0042E216    mov         edx,dword ptr [ebp-50]
 0042E219    lea         eax,[ebp-2C]
 0042E21C    call        0040CEE4
>0042E221    jmp         0042E23C
 0042E223    lea         eax,[ebp-54]
 0042E226    mov         edx,dword ptr [ebp-0C]
 0042E229    add         edx,1B
 0042E22C    call        @LStrFromString
 0042E231    mov         edx,dword ptr [ebp-54]
 0042E234    lea         eax,[ebp-2C]
 0042E237    call        0040CEE4
 0042E23C    mov         byte ptr [ebp-2E],0
 0042E240    mov         byte ptr [ebp-30],0
 0042E244    mov         byte ptr [ebp-2F],0
 0042E248    mov         eax,dword ptr [ebp-4]
 0042E24B    call        TFont.GetPitch
 0042E250    dec         al
>0042E252    je          0042E25A
 0042E254    dec         al
>0042E256    je          0042E260
>0042E258    jmp         0042E266
 0042E25A    mov         byte ptr [ebp-2D],2
>0042E25E    jmp         0042E26A
 0042E260    mov         byte ptr [ebp-2D],1
>0042E264    jmp         0042E26A
 0042E266    mov         byte ptr [ebp-2D],0
 0042E26A    lea         eax,[ebp-48]
 0042E26D    push        eax
 0042E26E    call        gdi32.CreateFontIndirectA
 0042E273    mov         edx,dword ptr [ebp-0C]
 0042E276    mov         dword ptr [edx+8],eax
 0042E279    xor         eax,eax
 0042E27B    pop         edx
 0042E27C    pop         ecx
 0042E27D    pop         ecx
 0042E27E    mov         dword ptr fs:[eax],edx
 0042E281    push        42E298
 0042E286    mov         eax,[00571B04];0x0 FontManager:TResourceManager
 0042E28B    call        0042D298
 0042E290    ret
>0042E291    jmp         @HandleFinally
>0042E296    jmp         0042E286
 0042E298    mov         eax,dword ptr [ebp-0C]
 0042E29B    mov         eax,dword ptr [eax+8]
 0042E29E    mov         dword ptr [ebp-8],eax
 0042E2A1    xor         eax,eax
 0042E2A3    pop         edx
 0042E2A4    pop         ecx
 0042E2A5    pop         ecx
 0042E2A6    mov         dword ptr fs:[eax],edx
 0042E2A9    push        42E2C3
 0042E2AE    lea         eax,[ebp-54]
 0042E2B1    mov         edx,3
 0042E2B6    call        @LStrArrayClr
 0042E2BB    ret
>0042E2BC    jmp         @HandleFinally
>0042E2C1    jmp         0042E2AE
 0042E2C3    mov         eax,dword ptr [ebp-8]
 0042E2C6    mov         esp,ebp
 0042E2C8    pop         ebp
 0042E2C9    ret
end;*}

//0042E2DC
procedure sub_0042E2DC(?:TFont; ?:HFONT);
begin
{*
 0042E2DC    push        ebp
 0042E2DD    mov         ebp,esp
 0042E2DF    add         esp,0FFFFFFCC
 0042E2E2    mov         dword ptr [ebp-8],edx
 0042E2E5    mov         dword ptr [ebp-4],eax
 0042E2E8    lea         edx,[ebp-34]
 0042E2EB    mov         eax,dword ptr [ebp-8]
 0042E2EE    call        0042DDF4
 0042E2F3    lea         edx,[ebp-34]
 0042E2F6    mov         eax,dword ptr [ebp-4]
 0042E2F9    call        0042E0A4
 0042E2FE    mov         esp,ebp
 0042E300    pop         ebp
 0042E301    ret
*}
end;

//0042E304
{*function TFont.GetHeight:?;
begin
 0042E304    push        ebp
 0042E305    mov         ebp,esp
 0042E307    add         esp,0FFFFFFF8
 0042E30A    mov         dword ptr [ebp-4],eax
 0042E30D    mov         eax,dword ptr [ebp-4]
 0042E310    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 0042E313    mov         eax,dword ptr [eax+14]
 0042E316    mov         dword ptr [ebp-8],eax
 0042E319    mov         eax,dword ptr [ebp-8]
 0042E31C    pop         ecx
 0042E31D    pop         ecx
 0042E31E    pop         ebp
 0042E31F    ret
end;*}

//0042E320
procedure TFont.SetHeight(Value:Integer);
begin
{*
 0042E320    push        ebp
 0042E321    mov         ebp,esp
 0042E323    add         esp,0FFFFFFCC
 0042E326    mov         dword ptr [ebp-8],edx
 0042E329    mov         dword ptr [ebp-4],eax
 0042E32C    lea         edx,[ebp-34]
 0042E32F    mov         eax,dword ptr [ebp-4]
 0042E332    call        0042E074
 0042E337    mov         eax,dword ptr [ebp-8]
 0042E33A    mov         dword ptr [ebp-30],eax
 0042E33D    lea         edx,[ebp-34]
 0042E340    mov         eax,dword ptr [ebp-4]
 0042E343    call        0042E0A4
 0042E348    mov         esp,ebp
 0042E34A    pop         ebp
 0042E34B    ret
*}
end;

//0042E34C
{*procedure TFont.GetName(?:?);
begin
 0042E34C    push        ebp
 0042E34D    mov         ebp,esp
 0042E34F    add         esp,0FFFFFFF8
 0042E352    mov         dword ptr [ebp-8],edx
 0042E355    mov         dword ptr [ebp-4],eax
 0042E358    mov         eax,dword ptr [ebp-8]
 0042E35B    mov         edx,dword ptr [ebp-4]
 0042E35E    mov         edx,dword ptr [edx+10];TFont.FResource:PResource
 0042E361    add         edx,1B
 0042E364    call        @LStrFromString
 0042E369    pop         ecx
 0042E36A    pop         ecx
 0042E36B    pop         ebp
 0042E36C    ret
end;*}

//0042E370
procedure TFont.SetName(Value:TFontName);
begin
{*
 0042E370    push        ebp
 0042E371    mov         ebp,esp
 0042E373    add         esp,0FFFFFECC
 0042E379    mov         dword ptr [ebp-8],edx
 0042E37C    mov         dword ptr [ebp-4],eax
 0042E37F    cmp         dword ptr [ebp-8],0
>0042E383    je          0042E3CD
 0042E385    lea         edx,[ebp-34]
 0042E388    mov         eax,dword ptr [ebp-4]
 0042E38B    call        0042E074
 0042E390    lea         eax,[ebp-29]
 0042E393    xor         ecx,ecx
 0042E395    mov         edx,20
 0042E39A    call        @FillChar
 0042E39F    lea         eax,[ebp-134]
 0042E3A5    mov         edx,dword ptr [ebp-8]
 0042E3A8    mov         ecx,0FF
 0042E3AD    call        @LStrToString
 0042E3B2    lea         edx,[ebp-134]
 0042E3B8    lea         eax,[ebp-29]
 0042E3BB    mov         cl,1F
 0042E3BD    call        @PStrNCpy
 0042E3C2    lea         edx,[ebp-34]
 0042E3C5    mov         eax,dword ptr [ebp-4]
 0042E3C8    call        0042E0A4
 0042E3CD    mov         esp,ebp
 0042E3CF    pop         ebp
 0042E3D0    ret
*}
end;

//0042E3D4
{*function TFont.GetSize:?;
begin
 0042E3D4    push        ebp
 0042E3D5    mov         ebp,esp
 0042E3D7    add         esp,0FFFFFFF8
 0042E3DA    mov         dword ptr [ebp-4],eax
 0042E3DD    mov         eax,dword ptr [ebp-4]
 0042E3E0    mov         eax,dword ptr [eax+1C];TFont.FPixelsPerInch:Integer
 0042E3E3    push        eax
 0042E3E4    push        48
 0042E3E6    mov         eax,dword ptr [ebp-4]
 0042E3E9    call        TFont.GetHeight
 0042E3EE    push        eax
 0042E3EF    call        kernel32.MulDiv
 0042E3F4    neg         eax
 0042E3F6    mov         dword ptr [ebp-8],eax
 0042E3F9    mov         eax,dword ptr [ebp-8]
 0042E3FC    pop         ecx
 0042E3FD    pop         ecx
 0042E3FE    pop         ebp
 0042E3FF    ret
end;*}

//0042E400
procedure TFont.SetSize(Value:Integer);
begin
{*
 0042E400    push        ebp
 0042E401    mov         ebp,esp
 0042E403    add         esp,0FFFFFFF8
 0042E406    mov         dword ptr [ebp-8],edx
 0042E409    mov         dword ptr [ebp-4],eax
 0042E40C    push        48
 0042E40E    mov         eax,dword ptr [ebp-4]
 0042E411    mov         eax,dword ptr [eax+1C];TFont.FPixelsPerInch:Integer
 0042E414    push        eax
 0042E415    mov         eax,dword ptr [ebp-8]
 0042E418    push        eax
 0042E419    call        kernel32.MulDiv
 0042E41E    mov         edx,eax
 0042E420    neg         edx
 0042E422    mov         eax,dword ptr [ebp-4]
 0042E425    call        TFont.SetHeight
 0042E42A    pop         ecx
 0042E42B    pop         ecx
 0042E42C    pop         ebp
 0042E42D    ret
*}
end;

//0042E430
{*function TFont.GetStyle:?;
begin
 0042E430    push        ebp
 0042E431    mov         ebp,esp
 0042E433    add         esp,0FFFFFFF8
 0042E436    mov         dword ptr [ebp-4],eax
 0042E439    mov         eax,dword ptr [ebp-4]
 0042E43C    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 0042E43F    mov         al,byte ptr [eax+19]
 0042E442    mov         byte ptr [ebp-5],al
 0042E445    mov         al,byte ptr [ebp-5]
 0042E448    pop         ecx
 0042E449    pop         ecx
 0042E44A    pop         ebp
 0042E44B    ret
end;*}

//0042E44C
procedure TFont.SetStyle(Value:TFontStyles);
begin
{*
 0042E44C    push        ebp
 0042E44D    mov         ebp,esp
 0042E44F    add         esp,0FFFFFFCC
 0042E452    mov         byte ptr [ebp-5],dl
 0042E455    mov         dword ptr [ebp-4],eax
 0042E458    lea         edx,[ebp-34]
 0042E45B    mov         eax,dword ptr [ebp-4]
 0042E45E    call        0042E074
 0042E463    mov         al,byte ptr [ebp-5]
 0042E466    mov         byte ptr [ebp-2B],al
 0042E469    lea         edx,[ebp-34]
 0042E46C    mov         eax,dword ptr [ebp-4]
 0042E46F    call        0042E0A4
 0042E474    mov         esp,ebp
 0042E476    pop         ebp
 0042E477    ret
*}
end;

//0042E478
{*function TFont.GetPitch:?;
begin
 0042E478    push        ebp
 0042E479    mov         ebp,esp
 0042E47B    add         esp,0FFFFFFF8
 0042E47E    mov         dword ptr [ebp-4],eax
 0042E481    mov         eax,dword ptr [ebp-4]
 0042E484    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 0042E487    mov         al,byte ptr [eax+18]
 0042E48A    mov         byte ptr [ebp-5],al
 0042E48D    mov         al,byte ptr [ebp-5]
 0042E490    pop         ecx
 0042E491    pop         ecx
 0042E492    pop         ebp
 0042E493    ret
end;*}

//0042E494
procedure TFont.SetPitch(Value:TFontPitch);
begin
{*
 0042E494    push        ebp
 0042E495    mov         ebp,esp
 0042E497    add         esp,0FFFFFFCC
 0042E49A    mov         byte ptr [ebp-5],dl
 0042E49D    mov         dword ptr [ebp-4],eax
 0042E4A0    lea         edx,[ebp-34]
 0042E4A3    mov         eax,dword ptr [ebp-4]
 0042E4A6    call        0042E074
 0042E4AB    mov         al,byte ptr [ebp-5]
 0042E4AE    mov         byte ptr [ebp-2C],al
 0042E4B1    lea         edx,[ebp-34]
 0042E4B4    mov         eax,dword ptr [ebp-4]
 0042E4B7    call        0042E0A4
 0042E4BC    mov         esp,ebp
 0042E4BE    pop         ebp
 0042E4BF    ret
*}
end;

//0042E4C0
{*function TFont.GetCharset:?;
begin
 0042E4C0    push        ebp
 0042E4C1    mov         ebp,esp
 0042E4C3    add         esp,0FFFFFFF8
 0042E4C6    mov         dword ptr [ebp-4],eax
 0042E4C9    mov         eax,dword ptr [ebp-4]
 0042E4CC    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 0042E4CF    mov         al,byte ptr [eax+1A]
 0042E4D2    mov         byte ptr [ebp-5],al
 0042E4D5    mov         al,byte ptr [ebp-5]
 0042E4D8    pop         ecx
 0042E4D9    pop         ecx
 0042E4DA    pop         ebp
 0042E4DB    ret
end;*}

//0042E4DC
procedure TFont.SetCharset(Value:TFontCharset);
begin
{*
 0042E4DC    push        ebp
 0042E4DD    mov         ebp,esp
 0042E4DF    add         esp,0FFFFFFCC
 0042E4E2    mov         byte ptr [ebp-5],dl
 0042E4E5    mov         dword ptr [ebp-4],eax
 0042E4E8    lea         edx,[ebp-34]
 0042E4EB    mov         eax,dword ptr [ebp-4]
 0042E4EE    call        0042E074
 0042E4F3    mov         al,byte ptr [ebp-5]
 0042E4F6    mov         byte ptr [ebp-2A],al
 0042E4F9    lea         edx,[ebp-34]
 0042E4FC    mov         eax,dword ptr [ebp-4]
 0042E4FF    call        0042E0A4
 0042E504    mov         esp,ebp
 0042E506    pop         ebp
 0042E507    ret
*}
end;

//0042E508
constructor TPen.Create;
begin
{*
 0042E508    push        ebp
 0042E509    mov         ebp,esp
 0042E50B    add         esp,0FFFFFFF8
 0042E50E    test        dl,dl
>0042E510    je          0042E51A
 0042E512    add         esp,0FFFFFFF0
 0042E515    call        @ClassCreate
 0042E51A    mov         byte ptr [ebp-5],dl
 0042E51D    mov         dword ptr [ebp-4],eax
 0042E520    mov         edx,56BFCC
 0042E525    mov         eax,[00571B08];0x0 PenManager:TResourceManager
 0042E52A    call        0042D2B0
 0042E52F    mov         edx,dword ptr [ebp-4]
 0042E532    mov         dword ptr [edx+10],eax
 0042E535    mov         eax,dword ptr [ebp-4]
 0042E538    mov         byte ptr [eax+18],4
 0042E53C    mov         eax,dword ptr [ebp-4]
 0042E53F    cmp         byte ptr [ebp-5],0
>0042E543    je          0042E554
 0042E545    call        @AfterConstruction
 0042E54A    pop         dword ptr fs:[0]
 0042E551    add         esp,0C
 0042E554    mov         eax,dword ptr [ebp-4]
 0042E557    pop         ecx
 0042E558    pop         ecx
 0042E559    pop         ebp
 0042E55A    ret
*}
end;

//0042E55C
destructor TPen.Destroy;
begin
{*
 0042E55C    push        ebp
 0042E55D    mov         ebp,esp
 0042E55F    add         esp,0FFFFFFF8
 0042E562    call        @BeforeDestruction
 0042E567    mov         byte ptr [ebp-5],dl
 0042E56A    mov         dword ptr [ebp-4],eax
 0042E56D    mov         eax,dword ptr [ebp-4]
 0042E570    mov         edx,dword ptr [eax+10]
 0042E573    mov         eax,[00571B08];0x0 PenManager:TResourceManager
 0042E578    call        0042D3B4
 0042E57D    cmp         byte ptr [ebp-5],0
>0042E581    jle         0042E58B
 0042E583    mov         eax,dword ptr [ebp-4]
 0042E586    call        @ClassDestroy
 0042E58B    pop         ecx
 0042E58C    pop         ecx
 0042E58D    pop         ebp
 0042E58E    ret
*}
end;

//0042E590
{*procedure sub_0042E590(?:?);
begin
 0042E590    push        ebp
 0042E591    mov         ebp,esp
 0042E593    add         esp,0FFFFFFF8
 0042E596    mov         dword ptr [ebp-8],edx
 0042E599    mov         dword ptr [ebp-4],eax
 0042E59C    mov         eax,dword ptr [ebp-8]
 0042E59F    mov         edx,dword ptr ds:[42C674];TPen
 0042E5A5    call        @IsClass
 0042E5AA    test        al,al
>0042E5AC    je          0042E639
 0042E5B2    mov         eax,dword ptr [ebp-4]
 0042E5B5    call        0042DBB0
 0042E5BA    xor         eax,eax
 0042E5BC    push        ebp
 0042E5BD    push        42E632
 0042E5C2    push        dword ptr fs:[eax]
 0042E5C5    mov         dword ptr fs:[eax],esp
 0042E5C8    mov         eax,dword ptr [ebp-8]
 0042E5CB    call        0042DBB0
 0042E5D0    xor         eax,eax
 0042E5D2    push        ebp
 0042E5D3    push        42E615
 0042E5D8    push        dword ptr fs:[eax]
 0042E5DB    mov         dword ptr fs:[eax],esp
 0042E5DE    mov         eax,dword ptr [ebp-8]
 0042E5E1    mov         ecx,dword ptr [eax+10]
 0042E5E4    mov         edx,dword ptr [ebp-4]
 0042E5E7    mov         eax,[00571B08];0x0 PenManager:TResourceManager
 0042E5EC    call        0042D504
 0042E5F1    mov         eax,dword ptr [ebp-8]
 0042E5F4    mov         dl,byte ptr [eax+18]
 0042E5F7    mov         eax,dword ptr [ebp-4]
 0042E5FA    call        TPen.SetMode
 0042E5FF    xor         eax,eax
 0042E601    pop         edx
 0042E602    pop         ecx
 0042E603    pop         ecx
 0042E604    mov         dword ptr fs:[eax],edx
 0042E607    push        42E61C
 0042E60C    mov         eax,dword ptr [ebp-8]
 0042E60F    call        0042DBD0
 0042E614    ret
>0042E615    jmp         @HandleFinally
>0042E61A    jmp         0042E60C
 0042E61C    xor         eax,eax
 0042E61E    pop         edx
 0042E61F    pop         ecx
 0042E620    pop         ecx
 0042E621    mov         dword ptr fs:[eax],edx
 0042E624    push        42E644
 0042E629    mov         eax,dword ptr [ebp-4]
 0042E62C    call        0042DBD0
 0042E631    ret
>0042E632    jmp         @HandleFinally
>0042E637    jmp         0042E629
 0042E639    mov         edx,dword ptr [ebp-8]
 0042E63C    mov         eax,dword ptr [ebp-4]
 0042E63F    call        00420AD4
 0042E644    pop         ecx
 0042E645    pop         ecx
 0042E646    pop         ebp
 0042E647    ret
end;*}

//0042E648
{*procedure sub_0042E648(?:TPen; ?:?);
begin
 0042E648    push        ebp
 0042E649    mov         ebp,esp
 0042E64B    add         esp,0FFFFFFF8
 0042E64E    push        esi
 0042E64F    push        edi
 0042E650    mov         dword ptr [ebp-8],edx
 0042E653    mov         dword ptr [ebp-4],eax
 0042E656    mov         eax,dword ptr [ebp-4]
 0042E659    mov         eax,dword ptr [eax+10]
 0042E65C    mov         edx,dword ptr [ebp-8]
 0042E65F    lea         esi,[eax+10]
 0042E662    mov         edi,edx
 0042E664    movs        dword ptr [edi],dword ptr [esi]
 0042E665    movs        dword ptr [edi],dword ptr [esi]
 0042E666    movs        dword ptr [edi],dword ptr [esi]
 0042E667    movs        dword ptr [edi],dword ptr [esi]
 0042E668    mov         eax,dword ptr [ebp-8]
 0042E66B    xor         edx,edx
 0042E66D    mov         dword ptr [eax],edx
 0042E66F    pop         edi
 0042E670    pop         esi
 0042E671    pop         ecx
 0042E672    pop         ecx
 0042E673    pop         ebp
 0042E674    ret
end;*}

//0042E678
{*procedure sub_0042E678(?:TPen; ?:?);
begin
 0042E678    push        ebp
 0042E679    mov         ebp,esp
 0042E67B    add         esp,0FFFFFFF8
 0042E67E    mov         dword ptr [ebp-8],edx
 0042E681    mov         dword ptr [ebp-4],eax
 0042E684    mov         eax,dword ptr [ebp-4]
 0042E687    call        0042DBB0
 0042E68C    xor         eax,eax
 0042E68E    push        ebp
 0042E68F    push        42E6C0
 0042E694    push        dword ptr fs:[eax]
 0042E697    mov         dword ptr fs:[eax],esp
 0042E69A    mov         ecx,dword ptr [ebp-8]
 0042E69D    mov         edx,dword ptr [ebp-4]
 0042E6A0    mov         eax,[00571B08];0x0 PenManager:TResourceManager
 0042E6A5    call        0042D480
 0042E6AA    xor         eax,eax
 0042E6AC    pop         edx
 0042E6AD    pop         ecx
 0042E6AE    pop         ecx
 0042E6AF    mov         dword ptr fs:[eax],edx
 0042E6B2    push        42E6C7
 0042E6B7    mov         eax,dword ptr [ebp-4]
 0042E6BA    call        0042DBD0
 0042E6BF    ret
>0042E6C0    jmp         @HandleFinally
>0042E6C5    jmp         0042E6B7
 0042E6C7    pop         ecx
 0042E6C8    pop         ecx
 0042E6C9    pop         ebp
 0042E6CA    ret
end;*}

//0042E6CC
{*function TPen.GetColor:?;
begin
 0042E6CC    push        ebp
 0042E6CD    mov         ebp,esp
 0042E6CF    add         esp,0FFFFFFF8
 0042E6D2    mov         dword ptr [ebp-4],eax
 0042E6D5    mov         eax,dword ptr [ebp-4]
 0042E6D8    mov         eax,dword ptr [eax+10];TPen.FResource:PResource
 0042E6DB    mov         eax,dword ptr [eax+14]
 0042E6DE    mov         dword ptr [ebp-8],eax
 0042E6E1    mov         eax,dword ptr [ebp-8]
 0042E6E4    pop         ecx
 0042E6E5    pop         ecx
 0042E6E6    pop         ebp
 0042E6E7    ret
end;*}

//0042E6E8
procedure TPen.SetColor(Value:TColor);
begin
{*
 0042E6E8    push        ebp
 0042E6E9    mov         ebp,esp
 0042E6EB    add         esp,0FFFFFFE8
 0042E6EE    mov         dword ptr [ebp-8],edx
 0042E6F1    mov         dword ptr [ebp-4],eax
 0042E6F4    lea         edx,[ebp-18]
 0042E6F7    mov         eax,dword ptr [ebp-4]
 0042E6FA    call        0042E648
 0042E6FF    mov         eax,dword ptr [ebp-8]
 0042E702    mov         dword ptr [ebp-14],eax
 0042E705    lea         edx,[ebp-18]
 0042E708    mov         eax,dword ptr [ebp-4]
 0042E70B    call        0042E678
 0042E710    mov         esp,ebp
 0042E712    pop         ebp
 0042E713    ret
*}
end;

//0042E714
{*function sub_0042E714(?:?):?;
begin
 0042E714    push        ebp
 0042E715    mov         ebp,esp
 0042E717    add         esp,0FFFFFFE4
 0042E71A    mov         dword ptr [ebp-4],eax
 0042E71D    mov         eax,dword ptr [ebp-4]
 0042E720    mov         eax,dword ptr [eax+10]
 0042E723    mov         dword ptr [ebp-0C],eax
 0042E726    mov         eax,dword ptr [ebp-0C]
 0042E729    cmp         dword ptr [eax+8],0
>0042E72D    jne         0042E7A7
 0042E72F    mov         eax,[00571B08];0x0 PenManager:TResourceManager
 0042E734    call        0042D280
 0042E739    xor         eax,eax
 0042E73B    push        ebp
 0042E73C    push        42E7A0
 0042E741    push        dword ptr fs:[eax]
 0042E744    mov         dword ptr fs:[eax],esp
 0042E747    mov         eax,dword ptr [ebp-0C]
 0042E74A    cmp         dword ptr [eax+8],0
>0042E74E    jne         0042E788
 0042E750    mov         eax,dword ptr [ebp-0C]
 0042E753    movzx       eax,byte ptr [eax+1C]
 0042E757    movzx       eax,word ptr [eax*2+56BFDC]
 0042E75F    mov         dword ptr [ebp-1C],eax
 0042E762    mov         eax,dword ptr [ebp-0C]
 0042E765    mov         eax,dword ptr [eax+18]
 0042E768    mov         dword ptr [ebp-18],eax
 0042E76B    mov         eax,dword ptr [ebp-0C]
 0042E76E    mov         eax,dword ptr [eax+14]
 0042E771    call        ColorToRGB
 0042E776    mov         dword ptr [ebp-10],eax
 0042E779    lea         eax,[ebp-1C]
 0042E77C    push        eax
 0042E77D    call        gdi32.CreatePenIndirect
 0042E782    mov         edx,dword ptr [ebp-0C]
 0042E785    mov         dword ptr [edx+8],eax
 0042E788    xor         eax,eax
 0042E78A    pop         edx
 0042E78B    pop         ecx
 0042E78C    pop         ecx
 0042E78D    mov         dword ptr fs:[eax],edx
 0042E790    push        42E7A7
 0042E795    mov         eax,[00571B08];0x0 PenManager:TResourceManager
 0042E79A    call        0042D298
 0042E79F    ret
>0042E7A0    jmp         @HandleFinally
>0042E7A5    jmp         0042E795
 0042E7A7    mov         eax,dword ptr [ebp-0C]
 0042E7AA    mov         eax,dword ptr [eax+8]
 0042E7AD    mov         dword ptr [ebp-8],eax
 0042E7B0    mov         eax,dword ptr [ebp-8]
 0042E7B3    mov         esp,ebp
 0042E7B5    pop         ebp
 0042E7B6    ret
end;*}

//0042E7B8
{*procedure sub_0042E7B8(?:?; ?:HPEN);
begin
 0042E7B8    push        ebp
 0042E7B9    mov         ebp,esp
 0042E7BB    add         esp,0FFFFFFE8
 0042E7BE    push        esi
 0042E7BF    push        edi
 0042E7C0    mov         dword ptr [ebp-8],edx
 0042E7C3    mov         dword ptr [ebp-4],eax
 0042E7C6    mov         esi,56BFCC
 0042E7CB    lea         edi,[ebp-18]
 0042E7CE    movs        dword ptr [edi],dword ptr [esi]
 0042E7CF    movs        dword ptr [edi],dword ptr [esi]
 0042E7D0    movs        dword ptr [edi],dword ptr [esi]
 0042E7D1    movs        dword ptr [edi],dword ptr [esi]
 0042E7D2    mov         eax,dword ptr [ebp-8]
 0042E7D5    mov         dword ptr [ebp-18],eax
 0042E7D8    lea         edx,[ebp-18]
 0042E7DB    mov         eax,dword ptr [ebp-4]
 0042E7DE    call        0042E678
 0042E7E3    pop         edi
 0042E7E4    pop         esi
 0042E7E5    mov         esp,ebp
 0042E7E7    pop         ebp
 0042E7E8    ret
end;*}

//0042E7EC
procedure TPen.SetMode(Value:TPenMode);
begin
{*
 0042E7EC    push        ebp
 0042E7ED    mov         ebp,esp
 0042E7EF    add         esp,0FFFFFFF8
 0042E7F2    push        esi
 0042E7F3    mov         byte ptr [ebp-5],dl
 0042E7F6    mov         dword ptr [ebp-4],eax
 0042E7F9    mov         eax,dword ptr [ebp-4]
 0042E7FC    mov         al,byte ptr [eax+18];TPen....Mode:TPenMode
 0042E7FF    cmp         al,byte ptr [ebp-5]
>0042E802    je          0042E819
 0042E804    mov         al,byte ptr [ebp-5]
 0042E807    mov         edx,dword ptr [ebp-4]
 0042E80A    mov         byte ptr [edx+18],al;TPen.....Mode:TPenMode
 0042E80D    mov         eax,dword ptr [ebp-4]
 0042E810    mov         si,0FFFD
 0042E814    call        @CallDynaInst;TGraphicsObject.sub_0042DB8C
 0042E819    pop         esi
 0042E81A    pop         ecx
 0042E81B    pop         ecx
 0042E81C    pop         ebp
 0042E81D    ret
*}
end;

//0042E820
{*function TPen.GetStyle:?;
begin
 0042E820    push        ebp
 0042E821    mov         ebp,esp
 0042E823    add         esp,0FFFFFFF8
 0042E826    mov         dword ptr [ebp-4],eax
 0042E829    mov         eax,dword ptr [ebp-4]
 0042E82C    mov         eax,dword ptr [eax+10];TPen.FResource:PResource
 0042E82F    mov         al,byte ptr [eax+1C]
 0042E832    mov         byte ptr [ebp-5],al
 0042E835    mov         al,byte ptr [ebp-5]
 0042E838    pop         ecx
 0042E839    pop         ecx
 0042E83A    pop         ebp
 0042E83B    ret
end;*}

//0042E83C
procedure TPen.SetStyle(Value:TPenStyle);
begin
{*
 0042E83C    push        ebp
 0042E83D    mov         ebp,esp
 0042E83F    add         esp,0FFFFFFE8
 0042E842    mov         byte ptr [ebp-5],dl
 0042E845    mov         dword ptr [ebp-4],eax
 0042E848    lea         edx,[ebp-18]
 0042E84B    mov         eax,dword ptr [ebp-4]
 0042E84E    call        0042E648
 0042E853    mov         al,byte ptr [ebp-5]
 0042E856    mov         byte ptr [ebp-0C],al
 0042E859    lea         edx,[ebp-18]
 0042E85C    mov         eax,dword ptr [ebp-4]
 0042E85F    call        0042E678
 0042E864    mov         esp,ebp
 0042E866    pop         ebp
 0042E867    ret
*}
end;

//0042E868
{*function TPen.GetWidth:?;
begin
 0042E868    push        ebp
 0042E869    mov         ebp,esp
 0042E86B    add         esp,0FFFFFFF8
 0042E86E    mov         dword ptr [ebp-4],eax
 0042E871    mov         eax,dword ptr [ebp-4]
 0042E874    mov         eax,dword ptr [eax+10];TPen.FResource:PResource
 0042E877    mov         eax,dword ptr [eax+18]
 0042E87A    mov         dword ptr [ebp-8],eax
 0042E87D    mov         eax,dword ptr [ebp-8]
 0042E880    pop         ecx
 0042E881    pop         ecx
 0042E882    pop         ebp
 0042E883    ret
end;*}

//0042E884
procedure TPen.SetWidth(Value:Integer);
begin
{*
 0042E884    push        ebp
 0042E885    mov         ebp,esp
 0042E887    add         esp,0FFFFFFE8
 0042E88A    mov         dword ptr [ebp-8],edx
 0042E88D    mov         dword ptr [ebp-4],eax
 0042E890    cmp         dword ptr [ebp-8],0
>0042E894    jl          0042E8B2
 0042E896    lea         edx,[ebp-18]
 0042E899    mov         eax,dword ptr [ebp-4]
 0042E89C    call        0042E648
 0042E8A1    mov         eax,dword ptr [ebp-8]
 0042E8A4    mov         dword ptr [ebp-10],eax
 0042E8A7    lea         edx,[ebp-18]
 0042E8AA    mov         eax,dword ptr [ebp-4]
 0042E8AD    call        0042E678
 0042E8B2    mov         esp,ebp
 0042E8B4    pop         ebp
 0042E8B5    ret
*}
end;

//0042E8B8
constructor TBrush.Create;
begin
{*
 0042E8B8    push        ebp
 0042E8B9    mov         ebp,esp
 0042E8BB    add         esp,0FFFFFFF8
 0042E8BE    test        dl,dl
>0042E8C0    je          0042E8CA
 0042E8C2    add         esp,0FFFFFFF0
 0042E8C5    call        @ClassCreate
 0042E8CA    mov         byte ptr [ebp-5],dl
 0042E8CD    mov         dword ptr [ebp-4],eax
 0042E8D0    mov         edx,56BFEC
 0042E8D5    mov         eax,[00571B0C];0x0 BrushManager:TResourceManager
 0042E8DA    call        0042D2B0
 0042E8DF    mov         edx,dword ptr [ebp-4]
 0042E8E2    mov         dword ptr [edx+10],eax
 0042E8E5    mov         eax,dword ptr [ebp-4]
 0042E8E8    cmp         byte ptr [ebp-5],0
>0042E8EC    je          0042E8FD
 0042E8EE    call        @AfterConstruction
 0042E8F3    pop         dword ptr fs:[0]
 0042E8FA    add         esp,0C
 0042E8FD    mov         eax,dword ptr [ebp-4]
 0042E900    pop         ecx
 0042E901    pop         ecx
 0042E902    pop         ebp
 0042E903    ret
*}
end;

//0042E904
destructor TBrush.Destroy;
begin
{*
 0042E904    push        ebp
 0042E905    mov         ebp,esp
 0042E907    add         esp,0FFFFFFF8
 0042E90A    call        @BeforeDestruction
 0042E90F    mov         byte ptr [ebp-5],dl
 0042E912    mov         dword ptr [ebp-4],eax
 0042E915    mov         eax,dword ptr [ebp-4]
 0042E918    mov         edx,dword ptr [eax+10]
 0042E91B    mov         eax,[00571B0C];0x0 BrushManager:TResourceManager
 0042E920    call        0042D3B4
 0042E925    cmp         byte ptr [ebp-5],0
>0042E929    jle         0042E933
 0042E92B    mov         eax,dword ptr [ebp-4]
 0042E92E    call        @ClassDestroy
 0042E933    pop         ecx
 0042E934    pop         ecx
 0042E935    pop         ebp
 0042E936    ret
*}
end;

//0042E938
{*procedure sub_0042E938(?:?);
begin
 0042E938    push        ebp
 0042E939    mov         ebp,esp
 0042E93B    add         esp,0FFFFFFF8
 0042E93E    mov         dword ptr [ebp-8],edx
 0042E941    mov         dword ptr [ebp-4],eax
 0042E944    mov         eax,dword ptr [ebp-8]
 0042E947    mov         edx,dword ptr ds:[42C774];TBrush
 0042E94D    call        @IsClass
 0042E952    test        al,al
>0042E954    je          0042E9CF
 0042E956    mov         eax,dword ptr [ebp-4]
 0042E959    call        0042DBB0
 0042E95E    xor         eax,eax
 0042E960    push        ebp
 0042E961    push        42E9C8
 0042E966    push        dword ptr fs:[eax]
 0042E969    mov         dword ptr fs:[eax],esp
 0042E96C    mov         eax,dword ptr [ebp-8]
 0042E96F    call        0042DBB0
 0042E974    xor         eax,eax
 0042E976    push        ebp
 0042E977    push        42E9AB
 0042E97C    push        dword ptr fs:[eax]
 0042E97F    mov         dword ptr fs:[eax],esp
 0042E982    mov         eax,dword ptr [ebp-8]
 0042E985    mov         ecx,dword ptr [eax+10]
 0042E988    mov         edx,dword ptr [ebp-4]
 0042E98B    mov         eax,[00571B0C];0x0 BrushManager:TResourceManager
 0042E990    call        0042D504
 0042E995    xor         eax,eax
 0042E997    pop         edx
 0042E998    pop         ecx
 0042E999    pop         ecx
 0042E99A    mov         dword ptr fs:[eax],edx
 0042E99D    push        42E9B2
 0042E9A2    mov         eax,dword ptr [ebp-8]
 0042E9A5    call        0042DBD0
 0042E9AA    ret
>0042E9AB    jmp         @HandleFinally
>0042E9B0    jmp         0042E9A2
 0042E9B2    xor         eax,eax
 0042E9B4    pop         edx
 0042E9B5    pop         ecx
 0042E9B6    pop         ecx
 0042E9B7    mov         dword ptr fs:[eax],edx
 0042E9BA    push        42E9DA
 0042E9BF    mov         eax,dword ptr [ebp-4]
 0042E9C2    call        0042DBD0
 0042E9C7    ret
>0042E9C8    jmp         @HandleFinally
>0042E9CD    jmp         0042E9BF
 0042E9CF    mov         edx,dword ptr [ebp-8]
 0042E9D2    mov         eax,dword ptr [ebp-4]
 0042E9D5    call        00420AD4
 0042E9DA    pop         ecx
 0042E9DB    pop         ecx
 0042E9DC    pop         ebp
 0042E9DD    ret
end;*}

//0042E9E0
{*procedure sub_0042E9E0(?:?; ?:?);
begin
 0042E9E0    push        ebp
 0042E9E1    mov         ebp,esp
 0042E9E3    add         esp,0FFFFFFF8
 0042E9E6    push        esi
 0042E9E7    push        edi
 0042E9E8    mov         dword ptr [ebp-8],edx
 0042E9EB    mov         dword ptr [ebp-4],eax
 0042E9EE    mov         eax,dword ptr [ebp-4]
 0042E9F1    mov         eax,dword ptr [eax+10]
 0042E9F4    mov         edx,dword ptr [ebp-8]
 0042E9F7    lea         esi,[eax+10]
 0042E9FA    mov         edi,edx
 0042E9FC    movs        dword ptr [edi],dword ptr [esi]
 0042E9FD    movs        dword ptr [edi],dword ptr [esi]
 0042E9FE    movs        dword ptr [edi],dword ptr [esi]
 0042E9FF    movs        dword ptr [edi],dword ptr [esi]
 0042EA00    mov         eax,dword ptr [ebp-8]
 0042EA03    xor         edx,edx
 0042EA05    mov         dword ptr [eax],edx
 0042EA07    mov         eax,dword ptr [ebp-8]
 0042EA0A    xor         edx,edx
 0042EA0C    mov         dword ptr [eax+8],edx
 0042EA0F    pop         edi
 0042EA10    pop         esi
 0042EA11    pop         ecx
 0042EA12    pop         ecx
 0042EA13    pop         ebp
 0042EA14    ret
end;*}

//0042EA18
{*procedure sub_0042EA18(?:?; ?:?);
begin
 0042EA18    push        ebp
 0042EA19    mov         ebp,esp
 0042EA1B    add         esp,0FFFFFFF8
 0042EA1E    mov         dword ptr [ebp-8],edx
 0042EA21    mov         dword ptr [ebp-4],eax
 0042EA24    mov         eax,dword ptr [ebp-4]
 0042EA27    call        0042DBB0
 0042EA2C    xor         eax,eax
 0042EA2E    push        ebp
 0042EA2F    push        42EA60
 0042EA34    push        dword ptr fs:[eax]
 0042EA37    mov         dword ptr fs:[eax],esp
 0042EA3A    mov         ecx,dword ptr [ebp-8]
 0042EA3D    mov         edx,dword ptr [ebp-4]
 0042EA40    mov         eax,[00571B0C];0x0 BrushManager:TResourceManager
 0042EA45    call        0042D480
 0042EA4A    xor         eax,eax
 0042EA4C    pop         edx
 0042EA4D    pop         ecx
 0042EA4E    pop         ecx
 0042EA4F    mov         dword ptr fs:[eax],edx
 0042EA52    push        42EA67
 0042EA57    mov         eax,dword ptr [ebp-4]
 0042EA5A    call        0042DBD0
 0042EA5F    ret
>0042EA60    jmp         @HandleFinally
>0042EA65    jmp         0042EA57
 0042EA67    pop         ecx
 0042EA68    pop         ecx
 0042EA69    pop         ebp
 0042EA6A    ret
end;*}

//0042EA6C
{*procedure sub_0042EA6C(?:TBrush; ?:?);
begin
 0042EA6C    push        ebp
 0042EA6D    mov         ebp,esp
 0042EA6F    add         esp,0FFFFFFE8
 0042EA72    push        esi
 0042EA73    push        edi
 0042EA74    mov         dword ptr [ebp-8],edx
 0042EA77    mov         dword ptr [ebp-4],eax
 0042EA7A    mov         esi,56BFEC
 0042EA7F    lea         edi,[ebp-18]
 0042EA82    movs        dword ptr [edi],dword ptr [esi]
 0042EA83    movs        dword ptr [edi],dword ptr [esi]
 0042EA84    movs        dword ptr [edi],dword ptr [esi]
 0042EA85    movs        dword ptr [edi],dword ptr [esi]
 0042EA86    mov         eax,dword ptr [ebp-8]
 0042EA89    mov         dword ptr [ebp-10],eax
 0042EA8C    lea         edx,[ebp-18]
 0042EA8F    mov         eax,dword ptr [ebp-4]
 0042EA92    call        0042EA18
 0042EA97    pop         edi
 0042EA98    pop         esi
 0042EA99    mov         esp,ebp
 0042EA9B    pop         ebp
 0042EA9C    ret
end;*}

//0042EAA0
{*function TBrush.GetColor:?;
begin
 0042EAA0    push        ebp
 0042EAA1    mov         ebp,esp
 0042EAA3    add         esp,0FFFFFFF8
 0042EAA6    mov         dword ptr [ebp-4],eax
 0042EAA9    mov         eax,dword ptr [ebp-4]
 0042EAAC    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 0042EAAF    mov         eax,dword ptr [eax+14]
 0042EAB2    mov         dword ptr [ebp-8],eax
 0042EAB5    mov         eax,dword ptr [ebp-8]
 0042EAB8    pop         ecx
 0042EAB9    pop         ecx
 0042EABA    pop         ebp
 0042EABB    ret
end;*}

//0042EABC
procedure TBrush.SetColor(Value:TColor);
begin
{*
 0042EABC    push        ebp
 0042EABD    mov         ebp,esp
 0042EABF    add         esp,0FFFFFFE8
 0042EAC2    mov         dword ptr [ebp-8],edx
 0042EAC5    mov         dword ptr [ebp-4],eax
 0042EAC8    lea         edx,[ebp-18]
 0042EACB    mov         eax,dword ptr [ebp-4]
 0042EACE    call        0042E9E0
 0042EAD3    mov         eax,dword ptr [ebp-8]
 0042EAD6    mov         dword ptr [ebp-14],eax
 0042EAD9    cmp         byte ptr [ebp-0C],1
>0042EADD    jne         0042EAE3
 0042EADF    mov         byte ptr [ebp-0C],0
 0042EAE3    lea         edx,[ebp-18]
 0042EAE6    mov         eax,dword ptr [ebp-4]
 0042EAE9    call        0042EA18
 0042EAEE    mov         esp,ebp
 0042EAF0    pop         ebp
 0042EAF1    ret
*}
end;

//0042EAF4
function TBrush.GetHandle:HBRUSH;
begin
{*
 0042EAF4    push        ebp
 0042EAF5    mov         ebp,esp
 0042EAF7    add         esp,0FFFFFFE8
 0042EAFA    mov         dword ptr [ebp-4],eax
 0042EAFD    mov         eax,dword ptr [ebp-4]
 0042EB00    mov         eax,dword ptr [eax+10]
 0042EB03    mov         dword ptr [ebp-0C],eax
 0042EB06    mov         eax,dword ptr [ebp-0C]
 0042EB09    cmp         dword ptr [eax+8],0
>0042EB0D    jne         0042EBD8
 0042EB13    mov         eax,[00571B0C];BrushManager:TResourceManager
 0042EB18    call        0042D280
 0042EB1D    xor         eax,eax
 0042EB1F    push        ebp
 0042EB20    push        42EBD1
 0042EB25    push        dword ptr fs:[eax]
 0042EB28    mov         dword ptr fs:[eax],esp
 0042EB2B    mov         eax,dword ptr [ebp-0C]
 0042EB2E    cmp         dword ptr [eax+8],0
>0042EB32    jne         0042EBB9
 0042EB38    mov         eax,dword ptr [ebp-0C]
 0042EB3B    cmp         dword ptr [eax+18],0
>0042EB3F    je          0042EB65
 0042EB41    mov         dword ptr [ebp-18],3
 0042EB48    mov         eax,dword ptr [ebp-0C]
 0042EB4B    mov         eax,dword ptr [eax+18]
 0042EB4E    mov         dl,1
 0042EB50    mov         ecx,dword ptr [eax]
 0042EB52    call        dword ptr [ecx+6C]
 0042EB55    mov         eax,dword ptr [ebp-0C]
 0042EB58    mov         eax,dword ptr [eax+18]
 0042EB5B    mov         edx,dword ptr [eax]
 0042EB5D    call        dword ptr [edx+64]
 0042EB60    mov         dword ptr [ebp-10],eax
>0042EB63    jmp         0042EB9C
 0042EB65    xor         eax,eax
 0042EB67    mov         dword ptr [ebp-10],eax
 0042EB6A    mov         eax,dword ptr [ebp-0C]
 0042EB6D    mov         al,byte ptr [eax+1C]
 0042EB70    sub         al,1
>0042EB72    jb          0042EB78
>0042EB74    je          0042EB7F
>0042EB76    jmp         0042EB88
 0042EB78    xor         eax,eax
 0042EB7A    mov         dword ptr [ebp-18],eax
>0042EB7D    jmp         0042EB9C
 0042EB7F    mov         dword ptr [ebp-18],1
>0042EB86    jmp         0042EB9C
 0042EB88    mov         dword ptr [ebp-18],2
 0042EB8F    mov         eax,dword ptr [ebp-0C]
 0042EB92    movzx       eax,byte ptr [eax+1C]
 0042EB96    sub         eax,2
 0042EB99    mov         dword ptr [ebp-10],eax
 0042EB9C    mov         eax,dword ptr [ebp-0C]
 0042EB9F    mov         eax,dword ptr [eax+14]
 0042EBA2    call        ColorToRGB
 0042EBA7    mov         dword ptr [ebp-14],eax
 0042EBAA    lea         eax,[ebp-18]
 0042EBAD    push        eax
 0042EBAE    call        gdi32.CreateBrushIndirect
 0042EBB3    mov         edx,dword ptr [ebp-0C]
 0042EBB6    mov         dword ptr [edx+8],eax
 0042EBB9    xor         eax,eax
 0042EBBB    pop         edx
 0042EBBC    pop         ecx
 0042EBBD    pop         ecx
 0042EBBE    mov         dword ptr fs:[eax],edx
 0042EBC1    push        42EBD8
 0042EBC6    mov         eax,[00571B0C];BrushManager:TResourceManager
 0042EBCB    call        0042D298
 0042EBD0    ret
>0042EBD1    jmp         @HandleFinally
>0042EBD6    jmp         0042EBC6
 0042EBD8    mov         eax,dword ptr [ebp-0C]
 0042EBDB    mov         eax,dword ptr [eax+8]
 0042EBDE    mov         dword ptr [ebp-8],eax
 0042EBE1    mov         eax,dword ptr [ebp-8]
 0042EBE4    mov         esp,ebp
 0042EBE6    pop         ebp
 0042EBE7    ret
*}
end;

//0042EBE8
{*function TBrush.GetStyle:?;
begin
 0042EBE8    push        ebp
 0042EBE9    mov         ebp,esp
 0042EBEB    add         esp,0FFFFFFF8
 0042EBEE    mov         dword ptr [ebp-4],eax
 0042EBF1    mov         eax,dword ptr [ebp-4]
 0042EBF4    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 0042EBF7    mov         al,byte ptr [eax+1C]
 0042EBFA    mov         byte ptr [ebp-5],al
 0042EBFD    mov         al,byte ptr [ebp-5]
 0042EC00    pop         ecx
 0042EC01    pop         ecx
 0042EC02    pop         ebp
 0042EC03    ret
end;*}

//0042EC04
procedure TBrush.SetStyle(Value:TBrushStyle);
begin
{*
 0042EC04    push        ebp
 0042EC05    mov         ebp,esp
 0042EC07    add         esp,0FFFFFFE8
 0042EC0A    mov         byte ptr [ebp-5],dl
 0042EC0D    mov         dword ptr [ebp-4],eax
 0042EC10    lea         edx,[ebp-18]
 0042EC13    mov         eax,dword ptr [ebp-4]
 0042EC16    call        0042E9E0
 0042EC1B    mov         al,byte ptr [ebp-5]
 0042EC1E    mov         byte ptr [ebp-0C],al
 0042EC21    cmp         byte ptr [ebp-0C],1
>0042EC25    jne         0042EC2E
 0042EC27    mov         dword ptr [ebp-14],0FFFFFF
 0042EC2E    lea         edx,[ebp-18]
 0042EC31    mov         eax,dword ptr [ebp-4]
 0042EC34    call        0042EA18
 0042EC39    mov         esp,ebp
 0042EC3B    pop         ebp
 0042EC3C    ret
*}
end;

//0042EC40
constructor TPenRecall.Create;
begin
{*
 0042EC40    push        ebp
 0042EC41    mov         ebp,esp
 0042EC43    add         esp,0FFFFFFF4
 0042EC46    test        dl,dl
>0042EC48    je          0042EC52
 0042EC4A    add         esp,0FFFFFFF0
 0042EC4D    call        @ClassCreate
 0042EC52    mov         dword ptr [ebp-0C],ecx
 0042EC55    mov         byte ptr [ebp-5],dl
 0042EC58    mov         dword ptr [ebp-4],eax
 0042EC5B    mov         eax,dword ptr [ebp-0C]
 0042EC5E    push        eax
 0042EC5F    mov         dl,1
 0042EC61    mov         eax,[0042C674];TPen
 0042EC66    call        TPen.Create;TPen.Create
 0042EC6B    mov         ecx,eax
 0042EC6D    xor         edx,edx
 0042EC6F    mov         eax,dword ptr [ebp-4]
 0042EC72    call        00420EDC
 0042EC77    mov         eax,dword ptr [ebp-4]
 0042EC7A    cmp         byte ptr [ebp-5],0
>0042EC7E    je          0042EC8F
 0042EC80    call        @AfterConstruction
 0042EC85    pop         dword ptr fs:[0]
 0042EC8C    add         esp,0C
 0042EC8F    mov         eax,dword ptr [ebp-4]
 0042EC92    mov         esp,ebp
 0042EC94    pop         ebp
 0042EC95    ret
*}
end;

//0042EC98
constructor TBrushRecall.Create;
begin
{*
 0042EC98    push        ebp
 0042EC99    mov         ebp,esp
 0042EC9B    add         esp,0FFFFFFF4
 0042EC9E    test        dl,dl
>0042ECA0    je          0042ECAA
 0042ECA2    add         esp,0FFFFFFF0
 0042ECA5    call        @ClassCreate
 0042ECAA    mov         dword ptr [ebp-0C],ecx
 0042ECAD    mov         byte ptr [ebp-5],dl
 0042ECB0    mov         dword ptr [ebp-4],eax
 0042ECB3    mov         eax,dword ptr [ebp-0C]
 0042ECB6    push        eax
 0042ECB7    mov         dl,1
 0042ECB9    mov         eax,[0042C774];TBrush
 0042ECBE    call        TBrush.Create;TBrush.Create
 0042ECC3    mov         ecx,eax
 0042ECC5    xor         edx,edx
 0042ECC7    mov         eax,dword ptr [ebp-4]
 0042ECCA    call        00420EDC
 0042ECCF    mov         eax,dword ptr [ebp-4]
 0042ECD2    cmp         byte ptr [ebp-5],0
>0042ECD6    je          0042ECE7
 0042ECD8    call        @AfterConstruction
 0042ECDD    pop         dword ptr fs:[0]
 0042ECE4    add         esp,0C
 0042ECE7    mov         eax,dword ptr [ebp-4]
 0042ECEA    mov         esp,ebp
 0042ECEC    pop         ebp
 0042ECED    ret
*}
end;

//0042ECF0
constructor TCanvas.Create;
begin
{*
 0042ECF0    push        ebp
 0042ECF1    mov         ebp,esp
 0042ECF3    add         esp,0FFFFFFF8
 0042ECF6    test        dl,dl
>0042ECF8    je          0042ED02
 0042ECFA    add         esp,0FFFFFFF0
 0042ECFD    call        @ClassCreate
 0042ED02    mov         byte ptr [ebp-5],dl
 0042ED05    mov         dword ptr [ebp-4],eax
 0042ED08    xor         edx,edx
 0042ED0A    mov         eax,dword ptr [ebp-4]
 0042ED0D    call        TObject.Create
 0042ED12    mov         eax,dword ptr [ebp-4]
 0042ED15    add         eax,38
 0042ED18    push        eax
 0042ED19    call        kernel32.InitializeCriticalSection
 0042ED1E    mov         dl,1
 0042ED20    mov         eax,[0042C4F8];TFont
 0042ED25    call        TFont.Create;TFont.Create
 0042ED2A    mov         edx,dword ptr [ebp-4]
 0042ED2D    mov         dword ptr [edx+0C],eax
 0042ED30    mov         eax,dword ptr [ebp-4]
 0042ED33    mov         eax,dword ptr [eax+0C]
 0042ED36    mov         edx,dword ptr [ebp-4]
 0042ED39    mov         dword ptr [eax+0C],edx
 0042ED3C    mov         dword ptr [eax+8],42F9D4;sub_0042F9D4
 0042ED43    mov         eax,dword ptr [ebp-4]
 0042ED46    add         eax,38
 0042ED49    mov         edx,dword ptr [ebp-4]
 0042ED4C    mov         edx,dword ptr [edx+0C]
 0042ED4F    mov         dword ptr [edx+14],eax
 0042ED52    mov         dl,1
 0042ED54    mov         eax,[0042C674];TPen
 0042ED59    call        TPen.Create;TPen.Create
 0042ED5E    mov         edx,dword ptr [ebp-4]
 0042ED61    mov         dword ptr [edx+10],eax
 0042ED64    mov         eax,dword ptr [ebp-4]
 0042ED67    mov         eax,dword ptr [eax+10]
 0042ED6A    mov         edx,dword ptr [ebp-4]
 0042ED6D    mov         dword ptr [eax+0C],edx
 0042ED70    mov         dword ptr [eax+8],42FA08;sub_0042FA08
 0042ED77    mov         eax,dword ptr [ebp-4]
 0042ED7A    add         eax,38
 0042ED7D    mov         edx,dword ptr [ebp-4]
 0042ED80    mov         edx,dword ptr [edx+10]
 0042ED83    mov         dword ptr [edx+14],eax
 0042ED86    mov         dl,1
 0042ED88    mov         eax,[0042C774];TBrush
 0042ED8D    call        TBrush.Create;TBrush.Create
 0042ED92    mov         edx,dword ptr [ebp-4]
 0042ED95    mov         dword ptr [edx+14],eax
 0042ED98    mov         eax,dword ptr [ebp-4]
 0042ED9B    mov         eax,dword ptr [eax+14]
 0042ED9E    mov         edx,dword ptr [ebp-4]
 0042EDA1    mov         dword ptr [eax+0C],edx
 0042EDA4    mov         dword ptr [eax+8],42FA3C;sub_0042FA3C
 0042EDAB    mov         eax,dword ptr [ebp-4]
 0042EDAE    add         eax,38
 0042EDB1    mov         edx,dword ptr [ebp-4]
 0042EDB4    mov         edx,dword ptr [edx+14]
 0042EDB7    mov         dword ptr [edx+14],eax
 0042EDBA    mov         eax,dword ptr [ebp-4]
 0042EDBD    mov         dword ptr [eax+20],0CC0020
 0042EDC4    mov         eax,dword ptr [ebp-4]
 0042EDC7    mov         dl,byte ptr ds:[42EDFC];0x0 gvar_0042EDFC
 0042EDCD    mov         byte ptr [eax+8],dl
 0042EDD0    mov         edx,dword ptr [ebp-4]
 0042EDD3    mov         eax,[00571B10];0x0 CanvasList:TThreadList
 0042EDD8    call        00420720
 0042EDDD    mov         eax,dword ptr [ebp-4]
 0042EDE0    cmp         byte ptr [ebp-5],0
>0042EDE4    je          0042EDF5
 0042EDE6    call        @AfterConstruction
 0042EDEB    pop         dword ptr fs:[0]
 0042EDF2    add         esp,0C
 0042EDF5    mov         eax,dword ptr [ebp-4]
 0042EDF8    pop         ecx
 0042EDF9    pop         ecx
 0042EDFA    pop         ebp
 0042EDFB    ret
*}
end;

//0042EE00
destructor TCanvas.Destroy;
begin
{*
 0042EE00    push        ebp
 0042EE01    mov         ebp,esp
 0042EE03    add         esp,0FFFFFFF8
 0042EE06    call        @BeforeDestruction
 0042EE0B    mov         byte ptr [ebp-5],dl
 0042EE0E    mov         dword ptr [ebp-4],eax
 0042EE11    mov         edx,dword ptr [ebp-4]
 0042EE14    mov         eax,[00571B10];0x0 CanvasList:TThreadList
 0042EE19    call        004207D4
 0042EE1E    xor         edx,edx
 0042EE20    mov         eax,dword ptr [ebp-4]
 0042EE23    call        TCanvas.SetHandle
 0042EE28    mov         eax,dword ptr [ebp-4]
 0042EE2B    mov         eax,dword ptr [eax+0C]
 0042EE2E    call        TObject.Free
 0042EE33    mov         eax,dword ptr [ebp-4]
 0042EE36    mov         eax,dword ptr [eax+10]
 0042EE39    call        TObject.Free
 0042EE3E    mov         eax,dword ptr [ebp-4]
 0042EE41    mov         eax,dword ptr [eax+14]
 0042EE44    call        TObject.Free
 0042EE49    mov         eax,dword ptr [ebp-4]
 0042EE4C    add         eax,38
 0042EE4F    push        eax
 0042EE50    call        kernel32.DeleteCriticalSection
 0042EE55    mov         dl,byte ptr [ebp-5]
 0042EE58    and         dl,0FC
 0042EE5B    mov         eax,dword ptr [ebp-4]
 0042EE5E    call        TPersistent.Destroy
 0042EE63    cmp         byte ptr [ebp-5],0
>0042EE67    jle         0042EE71
 0042EE69    mov         eax,dword ptr [ebp-4]
 0042EE6C    call        @ClassDestroy
 0042EE71    pop         ecx
 0042EE72    pop         ecx
 0042EE73    pop         ebp
 0042EE74    ret
*}
end;

//0042EE78
{*procedure sub_0042EE78(?:?; ?:?; ?:TCanvas; ?:?);
begin
 0042EE78    push        ebp
 0042EE79    mov         ebp,esp
 0042EE7B    add         esp,0FFFFFFF4
 0042EE7E    mov         dword ptr [ebp-0C],ecx
 0042EE81    mov         dword ptr [ebp-8],edx
 0042EE84    mov         dword ptr [ebp-4],eax
 0042EE87    mov         eax,dword ptr [ebp-4]
 0042EE8A    mov         edx,dword ptr [eax]
 0042EE8C    call        dword ptr [edx+10]
 0042EE8F    mov         dl,byte ptr ds:[42EF20];0xB gvar_0042EF20
 0042EE95    mov         eax,dword ptr [ebp-4]
 0042EE98    call        0042F7D4
 0042EE9D    mov         dl,byte ptr ds:[42EF24];0x9 gvar_0042EF24
 0042EEA3    mov         eax,dword ptr [ebp-0C]
 0042EEA6    call        0042F7D4
 0042EEAB    mov         eax,dword ptr [ebp-4]
 0042EEAE    mov         eax,dword ptr [eax+20]
 0042EEB1    push        eax
 0042EEB2    mov         eax,dword ptr [ebp+8]
 0042EEB5    mov         eax,dword ptr [eax+0C]
 0042EEB8    mov         edx,dword ptr [ebp+8]
 0042EEBB    sub         eax,dword ptr [edx+4]
 0042EEBE    push        eax
 0042EEBF    mov         eax,dword ptr [ebp+8]
 0042EEC2    mov         eax,dword ptr [eax+8]
 0042EEC5    mov         edx,dword ptr [ebp+8]
 0042EEC8    sub         eax,dword ptr [edx]
 0042EECA    push        eax
 0042EECB    mov         eax,dword ptr [ebp+8]
 0042EECE    mov         eax,dword ptr [eax+4]
 0042EED1    push        eax
 0042EED2    mov         eax,dword ptr [ebp+8]
 0042EED5    mov         eax,dword ptr [eax]
 0042EED7    push        eax
 0042EED8    mov         eax,dword ptr [ebp-0C]
 0042EEDB    mov         eax,dword ptr [eax+4]
 0042EEDE    push        eax
 0042EEDF    mov         eax,dword ptr [ebp-8]
 0042EEE2    mov         eax,dword ptr [eax+0C]
 0042EEE5    mov         edx,dword ptr [ebp-8]
 0042EEE8    sub         eax,dword ptr [edx+4]
 0042EEEB    push        eax
 0042EEEC    mov         eax,dword ptr [ebp-8]
 0042EEEF    mov         eax,dword ptr [eax+8]
 0042EEF2    mov         edx,dword ptr [ebp-8]
 0042EEF5    sub         eax,dword ptr [edx]
 0042EEF7    push        eax
 0042EEF8    mov         eax,dword ptr [ebp-8]
 0042EEFB    mov         eax,dword ptr [eax+4]
 0042EEFE    push        eax
 0042EEFF    mov         eax,dword ptr [ebp-8]
 0042EF02    mov         eax,dword ptr [eax]
 0042EF04    push        eax
 0042EF05    mov         eax,dword ptr [ebp-4]
 0042EF08    mov         eax,dword ptr [eax+4]
 0042EF0B    push        eax
 0042EF0C    call        gdi32.StretchBlt
 0042EF11    mov         eax,dword ptr [ebp-4]
 0042EF14    mov         edx,dword ptr [eax]
 0042EF16    call        dword ptr [edx+0C]
 0042EF19    mov         esp,ebp
 0042EF1B    pop         ebp
 0042EF1C    ret         4
end;*}

//0042EF28
{*procedure sub_0042EF28(?:TCanvas; ?:Integer; ?:Integer; ?:?);
begin
 0042EF28    push        ebp
 0042EF29    mov         ebp,esp
 0042EF2B    add         esp,0FFFFFFE4
 0042EF2E    push        ebx
 0042EF2F    mov         dword ptr [ebp-0C],ecx
 0042EF32    mov         dword ptr [ebp-8],edx
 0042EF35    mov         dword ptr [ebp-4],eax
 0042EF38    cmp         dword ptr [ebp+8],0
>0042EF3C    je          0042EFDE
 0042EF42    mov         eax,dword ptr [ebp+8]
 0042EF45    mov         edx,dword ptr [eax]
 0042EF47    call        dword ptr [edx+1C]
 0042EF4A    test        al,al
>0042EF4C    jne         0042EFDE
 0042EF52    mov         eax,dword ptr [ebp-4]
 0042EF55    mov         edx,dword ptr [eax]
 0042EF57    call        dword ptr [edx+10]
 0042EF5A    mov         dl,byte ptr ds:[42EFE8];0x1 gvar_0042EFE8
 0042EF60    mov         eax,dword ptr [ebp-4]
 0042EF63    call        0042F7D4
 0042EF68    mov         eax,dword ptr [ebp-4]
 0042EF6B    mov         eax,dword ptr [eax+14]
 0042EF6E    call        TBrush.GetColor
 0042EF73    call        ColorToRGB
 0042EF78    push        eax
 0042EF79    mov         eax,dword ptr [ebp-4]
 0042EF7C    mov         eax,dword ptr [eax+4]
 0042EF7F    push        eax
 0042EF80    call        gdi32.SetBkColor
 0042EF85    mov         eax,dword ptr [ebp-4]
 0042EF88    mov         eax,dword ptr [eax+0C]
 0042EF8B    mov         eax,dword ptr [eax+18]
 0042EF8E    call        ColorToRGB
 0042EF93    push        eax
 0042EF94    mov         eax,dword ptr [ebp-4]
 0042EF97    mov         eax,dword ptr [eax+4]
 0042EF9A    push        eax
 0042EF9B    call        gdi32.SetTextColor
 0042EFA0    mov         eax,dword ptr [ebp+8]
 0042EFA3    mov         edx,dword ptr [eax]
 0042EFA5    call        dword ptr [edx+20]
 0042EFA8    add         eax,dword ptr [ebp-0C]
 0042EFAB    push        eax
 0042EFAC    lea         eax,[ebp-1C]
 0042EFAF    push        eax
 0042EFB0    mov         eax,dword ptr [ebp+8]
 0042EFB3    mov         edx,dword ptr [eax]
 0042EFB5    call        dword ptr [edx+2C]
 0042EFB8    mov         ecx,eax
 0042EFBA    add         ecx,dword ptr [ebp-8]
 0042EFBD    mov         edx,dword ptr [ebp-0C]
 0042EFC0    mov         eax,dword ptr [ebp-8]
 0042EFC3    call        0041E714
 0042EFC8    lea         ecx,[ebp-1C]
 0042EFCB    mov         edx,dword ptr [ebp-4]
 0042EFCE    mov         eax,dword ptr [ebp+8]
 0042EFD1    mov         ebx,dword ptr [eax]
 0042EFD3    call        dword ptr [ebx+14]
 0042EFD6    mov         eax,dword ptr [ebp-4]
 0042EFD9    mov         edx,dword ptr [eax]
 0042EFDB    call        dword ptr [edx+0C]
 0042EFDE    pop         ebx
 0042EFDF    mov         esp,ebp
 0042EFE1    pop         ebp
 0042EFE2    ret         4
end;*}

//0042EFEC
{*procedure sub_0042EFEC(?:TCanvas; ?:?);
begin
 0042EFEC    push        ebp
 0042EFED    mov         ebp,esp
 0042EFEF    add         esp,0FFFFFFF8
 0042EFF2    mov         dword ptr [ebp-8],edx
 0042EFF5    mov         dword ptr [ebp-4],eax
 0042EFF8    mov         eax,dword ptr [ebp-4]
 0042EFFB    mov         edx,dword ptr [eax]
 0042EFFD    call        dword ptr [edx+10]
 0042F000    mov         dl,byte ptr ds:[42F02C];0x9 gvar_0042F02C
 0042F006    mov         eax,dword ptr [ebp-4]
 0042F009    call        0042F7D4
 0042F00E    mov         eax,dword ptr [ebp-8]
 0042F011    push        eax
 0042F012    mov         eax,dword ptr [ebp-4]
 0042F015    mov         eax,dword ptr [eax+4]
 0042F018    push        eax
 0042F019    call        user32.DrawFocusRect
 0042F01E    mov         eax,dword ptr [ebp-4]
 0042F021    mov         edx,dword ptr [eax]
 0042F023    call        dword ptr [edx+0C]
 0042F026    pop         ecx
 0042F027    pop         ecx
 0042F028    pop         ebp
 0042F029    ret
end;*}

//0042F030
procedure sub_0042F030(?:TCanvas; ?:TPoint);
begin
{*
 0042F030    push        ebp
 0042F031    mov         ebp,esp
 0042F033    add         esp,0FFFFFFF8
 0042F036    mov         dword ptr [ebp-8],edx
 0042F039    mov         dword ptr [ebp-4],eax
 0042F03C    mov         eax,dword ptr [ebp-4]
 0042F03F    mov         edx,dword ptr [eax]
 0042F041    call        dword ptr [edx+10]
 0042F044    mov         dl,byte ptr ds:[42F07C];0x9 gvar_0042F07C
 0042F04A    mov         eax,dword ptr [ebp-4]
 0042F04D    call        0042F7D4
 0042F052    mov         eax,dword ptr [ebp-4]
 0042F055    mov         eax,dword ptr [eax+14]
 0042F058    call        TBrush.GetHandle
 0042F05D    push        eax
 0042F05E    mov         eax,dword ptr [ebp-8]
 0042F061    push        eax
 0042F062    mov         eax,dword ptr [ebp-4]
 0042F065    mov         eax,dword ptr [eax+4]
 0042F068    push        eax
 0042F069    call        user32.FillRect
 0042F06E    mov         eax,dword ptr [ebp-4]
 0042F071    mov         edx,dword ptr [eax]
 0042F073    call        dword ptr [edx+0C]
 0042F076    pop         ecx
 0042F077    pop         ecx
 0042F078    pop         ebp
 0042F079    ret
*}
end;

//0042F080
procedure sub_0042F080(?:TCanvas; ?:TRect);
begin
{*
 0042F080    push        ebp
 0042F081    mov         ebp,esp
 0042F083    add         esp,0FFFFFFF8
 0042F086    mov         dword ptr [ebp-8],edx
 0042F089    mov         dword ptr [ebp-4],eax
 0042F08C    mov         eax,dword ptr [ebp-4]
 0042F08F    mov         edx,dword ptr [eax]
 0042F091    call        dword ptr [edx+10]
 0042F094    mov         dl,byte ptr ds:[42F0CC];0x9 gvar_0042F0CC
 0042F09A    mov         eax,dword ptr [ebp-4]
 0042F09D    call        0042F7D4
 0042F0A2    mov         eax,dword ptr [ebp-4]
 0042F0A5    mov         eax,dword ptr [eax+14]
 0042F0A8    call        TBrush.GetHandle
 0042F0AD    push        eax
 0042F0AE    mov         eax,dword ptr [ebp-8]
 0042F0B1    push        eax
 0042F0B2    mov         eax,dword ptr [ebp-4]
 0042F0B5    mov         eax,dword ptr [eax+4]
 0042F0B8    push        eax
 0042F0B9    call        user32.FrameRect
 0042F0BE    mov         eax,dword ptr [ebp-4]
 0042F0C1    mov         edx,dword ptr [eax]
 0042F0C3    call        dword ptr [edx+0C]
 0042F0C6    pop         ecx
 0042F0C7    pop         ecx
 0042F0C8    pop         ebp
 0042F0C9    ret
*}
end;

//0042F0D0
{*procedure sub_0042F0D0(?:TCanvas; ?:TRect; ?:?);
begin
 0042F0D0    push        ebp
 0042F0D1    mov         ebp,esp
 0042F0D3    add         esp,0FFFFFFF4
 0042F0D6    mov         dword ptr [ebp-0C],ecx
 0042F0D9    mov         dword ptr [ebp-8],edx
 0042F0DC    mov         dword ptr [ebp-4],eax
 0042F0DF    mov         eax,dword ptr [ebp-4]
 0042F0E2    mov         edx,dword ptr [eax]
 0042F0E4    call        dword ptr [edx+10]
 0042F0E7    mov         dl,byte ptr ds:[42F118];0xD gvar_0042F118
 0042F0ED    mov         eax,dword ptr [ebp-4]
 0042F0F0    call        0042F7D4
 0042F0F5    mov         eax,dword ptr [ebp-0C]
 0042F0F8    push        eax
 0042F0F9    mov         eax,dword ptr [ebp-8]
 0042F0FC    push        eax
 0042F0FD    mov         eax,dword ptr [ebp-4]
 0042F100    mov         eax,dword ptr [eax+4]
 0042F103    push        eax
 0042F104    call        gdi32.LineTo
 0042F109    mov         eax,dword ptr [ebp-4]
 0042F10C    mov         edx,dword ptr [eax]
 0042F10E    call        dword ptr [edx+0C]
 0042F111    mov         esp,ebp
 0042F113    pop         ebp
 0042F114    ret
end;*}

//0042F11C
procedure TCanvas.Lock;
begin
{*
 0042F11C    push        ebp
 0042F11D    mov         ebp,esp
 0042F11F    push        ecx
 0042F120    mov         dword ptr [ebp-4],eax
 0042F123    push        571AEC;CounterLock:TRTLCriticalSection
 0042F128    call        kernel32.EnterCriticalSection
 0042F12D    mov         eax,dword ptr [ebp-4]
 0042F130    inc         dword ptr [eax+50]
 0042F133    push        571AEC;CounterLock:TRTLCriticalSection
 0042F138    call        kernel32.LeaveCriticalSection
 0042F13D    mov         eax,dword ptr [ebp-4]
 0042F140    add         eax,38
 0042F143    push        eax
 0042F144    call        kernel32.EnterCriticalSection
 0042F149    pop         ecx
 0042F14A    pop         ebp
 0042F14B    ret
*}
end;

//0042F14C
{*procedure sub_0042F14C(?:TCanvas; ?:TRect; ?:?);
begin
 0042F14C    push        ebp
 0042F14D    mov         ebp,esp
 0042F14F    add         esp,0FFFFFFF4
 0042F152    mov         dword ptr [ebp-0C],ecx
 0042F155    mov         dword ptr [ebp-8],edx
 0042F158    mov         dword ptr [ebp-4],eax
 0042F15B    mov         dl,byte ptr ds:[42F184];0x1 gvar_0042F184
 0042F161    mov         eax,dword ptr [ebp-4]
 0042F164    call        0042F7D4
 0042F169    push        0
 0042F16B    mov         eax,dword ptr [ebp-0C]
 0042F16E    push        eax
 0042F16F    mov         eax,dword ptr [ebp-8]
 0042F172    push        eax
 0042F173    mov         eax,dword ptr [ebp-4]
 0042F176    mov         eax,dword ptr [eax+4]
 0042F179    push        eax
 0042F17A    call        gdi32.MoveToEx
 0042F17F    mov         esp,ebp
 0042F181    pop         ebp
 0042F182    ret
end;*}

//0042F188
{*procedure sub_0042F188(?:?; ?:void ; ?:?);
begin
 0042F188    push        ebp
 0042F189    mov         ebp,esp
 0042F18B    add         esp,0FFFFFFF4
 0042F18E    mov         dword ptr [ebp-0C],ecx
 0042F191    mov         dword ptr [ebp-8],edx
 0042F194    mov         dword ptr [ebp-4],eax
 0042F197    mov         eax,dword ptr [ebp-4]
 0042F19A    mov         edx,dword ptr [eax]
 0042F19C    call        dword ptr [edx+10]
 0042F19F    mov         dl,byte ptr ds:[42F1D0];0xD gvar_0042F1D0
 0042F1A5    mov         eax,dword ptr [ebp-4]
 0042F1A8    call        0042F7D4
 0042F1AD    mov         eax,dword ptr [ebp-0C]
 0042F1B0    inc         eax
 0042F1B1    push        eax
 0042F1B2    mov         eax,dword ptr [ebp-8]
 0042F1B5    push        eax
 0042F1B6    mov         eax,dword ptr [ebp-4]
 0042F1B9    mov         eax,dword ptr [eax+4]
 0042F1BC    push        eax
 0042F1BD    call        gdi32.Polygon
 0042F1C2    mov         eax,dword ptr [ebp-4]
 0042F1C5    mov         edx,dword ptr [eax]
 0042F1C7    call        dword ptr [edx+0C]
 0042F1CA    mov         esp,ebp
 0042F1CC    pop         ebp
 0042F1CD    ret
end;*}

//0042F1D4
{*procedure sub_0042F1D4(?:?; ?:void ; ?:?);
begin
 0042F1D4    push        ebp
 0042F1D5    mov         ebp,esp
 0042F1D7    add         esp,0FFFFFFF4
 0042F1DA    mov         dword ptr [ebp-0C],ecx
 0042F1DD    mov         dword ptr [ebp-8],edx
 0042F1E0    mov         dword ptr [ebp-4],eax
 0042F1E3    mov         eax,dword ptr [ebp-4]
 0042F1E6    mov         edx,dword ptr [eax]
 0042F1E8    call        dword ptr [edx+10]
 0042F1EB    mov         dl,byte ptr ds:[42F21C];0xD gvar_0042F21C
 0042F1F1    mov         eax,dword ptr [ebp-4]
 0042F1F4    call        0042F7D4
 0042F1F9    mov         eax,dword ptr [ebp-0C]
 0042F1FC    inc         eax
 0042F1FD    push        eax
 0042F1FE    mov         eax,dword ptr [ebp-8]
 0042F201    push        eax
 0042F202    mov         eax,dword ptr [ebp-4]
 0042F205    mov         eax,dword ptr [eax+4]
 0042F208    push        eax
 0042F209    call        gdi32.Polyline
 0042F20E    mov         eax,dword ptr [ebp-4]
 0042F211    mov         edx,dword ptr [eax]
 0042F213    call        dword ptr [edx+0C]
 0042F216    mov         esp,ebp
 0042F218    pop         ebp
 0042F219    ret
end;*}

//0042F220
{*procedure sub_0042F220(?:TCanvas; ?:?; ?:?; ?:?; ?:?);
begin
 0042F220    push        ebp
 0042F221    mov         ebp,esp
 0042F223    add         esp,0FFFFFFF4
 0042F226    mov         dword ptr [ebp-0C],ecx
 0042F229    mov         dword ptr [ebp-8],edx
 0042F22C    mov         dword ptr [ebp-4],eax
 0042F22F    mov         eax,dword ptr [ebp-4]
 0042F232    mov         edx,dword ptr [eax]
 0042F234    call        dword ptr [edx+10]
 0042F237    mov         dl,byte ptr ds:[42F270];0xD gvar_0042F270
 0042F23D    mov         eax,dword ptr [ebp-4]
 0042F240    call        0042F7D4
 0042F245    mov         eax,dword ptr [ebp+8]
 0042F248    push        eax
 0042F249    mov         eax,dword ptr [ebp+0C]
 0042F24C    push        eax
 0042F24D    mov         eax,dword ptr [ebp-0C]
 0042F250    push        eax
 0042F251    mov         eax,dword ptr [ebp-8]
 0042F254    push        eax
 0042F255    mov         eax,dword ptr [ebp-4]
 0042F258    mov         eax,dword ptr [eax+4]
 0042F25B    push        eax
 0042F25C    call        gdi32.Rectangle
 0042F261    mov         eax,dword ptr [ebp-4]
 0042F264    mov         edx,dword ptr [eax]
 0042F266    call        dword ptr [edx+0C]
 0042F269    mov         esp,ebp
 0042F26B    pop         ebp
 0042F26C    ret         8
end;*}

//0042F274
procedure sub_0042F274(?:TCanvas; ?:TPoint);
begin
{*
 0042F274    push        ebp
 0042F275    mov         ebp,esp
 0042F277    add         esp,0FFFFFFF8
 0042F27A    mov         dword ptr [ebp-8],edx
 0042F27D    mov         dword ptr [ebp-4],eax
 0042F280    mov         eax,dword ptr [ebp-8]
 0042F283    mov         eax,dword ptr [eax+8]
 0042F286    push        eax
 0042F287    mov         eax,dword ptr [ebp-8]
 0042F28A    mov         eax,dword ptr [eax+0C]
 0042F28D    push        eax
 0042F28E    mov         ecx,dword ptr [ebp-8]
 0042F291    mov         ecx,dword ptr [ecx+4]
 0042F294    mov         edx,dword ptr [ebp-8]
 0042F297    mov         edx,dword ptr [edx]
 0042F299    mov         eax,dword ptr [ebp-4]
 0042F29C    call        0042F220
 0042F2A1    pop         ecx
 0042F2A2    pop         ecx
 0042F2A3    pop         ebp
 0042F2A4    ret
*}
end;

//0042F2A8
{*procedure sub_0042F2A8(?:?);
begin
 0042F2A8    push        ebp
 0042F2A9    mov         ebp,esp
 0042F2AB    push        ecx
 0042F2AC    mov         dword ptr [ebp-4],eax
 0042F2AF    mov         eax,dword ptr [ebp-4]
 0042F2B2    call        0042F6D4
 0042F2B7    pop         ecx
 0042F2B8    pop         ebp
 0042F2B9    ret
end;*}

//0042F2BC
{*procedure sub_0042F2BC(?:TCanvas; ?:?; ?:TGraphic);
begin
 0042F2BC    push        ebp
 0042F2BD    mov         ebp,esp
 0042F2BF    add         esp,0FFFFFFF4
 0042F2C2    push        ebx
 0042F2C3    mov         dword ptr [ebp-0C],ecx
 0042F2C6    mov         dword ptr [ebp-8],edx
 0042F2C9    mov         dword ptr [ebp-4],eax
 0042F2CC    cmp         dword ptr [ebp-0C],0
>0042F2D0    je          0042F2FE
 0042F2D2    mov         eax,dword ptr [ebp-4]
 0042F2D5    mov         edx,dword ptr [eax]
 0042F2D7    call        dword ptr [edx+10]
 0042F2DA    mov         dl,byte ptr ds:[42F304];0xF gvar_0042F304
 0042F2E0    mov         eax,dword ptr [ebp-4]
 0042F2E3    call        0042F7D4
 0042F2E8    mov         ecx,dword ptr [ebp-8]
 0042F2EB    mov         edx,dword ptr [ebp-4]
 0042F2EE    mov         eax,dword ptr [ebp-0C]
 0042F2F1    mov         ebx,dword ptr [eax]
 0042F2F3    call        dword ptr [ebx+14]
 0042F2F6    mov         eax,dword ptr [ebp-4]
 0042F2F9    mov         edx,dword ptr [eax]
 0042F2FB    call        dword ptr [edx+0C]
 0042F2FE    pop         ebx
 0042F2FF    mov         esp,ebp
 0042F301    pop         ebp
 0042F302    ret
end;*}

//0042F308
{*function sub_0042F308(?:TCanvas):?;
begin
 0042F308    push        ebp
 0042F309    mov         ebp,esp
 0042F30B    add         esp,0FFFFFFF0
 0042F30E    mov         dword ptr [ebp-4],eax
 0042F311    mov         byte ptr [ebp-5],0
 0042F315    mov         eax,dword ptr [ebp-4]
 0042F318    test        byte ptr [eax+54],80
>0042F31C    je          0042F33A
 0042F31E    lea         eax,[ebp-0D]
 0042F321    push        eax
 0042F322    mov         eax,dword ptr [ebp-4]
 0042F325    call        0042F6A0
 0042F32A    push        eax
 0042F32B    call        gdi32.GetWindowOrgEx
 0042F330    cmp         dword ptr [ebp-0D],0
>0042F334    je          0042F33A
 0042F336    mov         byte ptr [ebp-5],1
 0042F33A    mov         al,byte ptr [ebp-5]
 0042F33D    mov         esp,ebp
 0042F33F    pop         ebp
 0042F340    ret
end;*}

//0042F344
{*procedure sub_0042F344(?:TCanvas; ?:?; ?:?; ?:?);
begin
 0042F344    push        ebp
 0042F345    mov         ebp,esp
 0042F347    add         esp,0FFFFFFF4
 0042F34A    mov         dword ptr [ebp-0C],ecx
 0042F34D    mov         dword ptr [ebp-8],edx
 0042F350    mov         dword ptr [ebp-4],eax
 0042F353    mov         eax,dword ptr [ebp-4]
 0042F356    mov         edx,dword ptr [eax]
 0042F358    call        dword ptr [edx+10]
 0042F35B    mov         dl,byte ptr ds:[42F3E0];0xB gvar_0042F3E0
 0042F361    mov         eax,dword ptr [ebp-4]
 0042F364    call        0042F7D4
 0042F369    mov         eax,dword ptr [ebp-4]
 0042F36C    call        0042F308
 0042F371    cmp         al,1
>0042F373    jne         0042F384
 0042F375    mov         edx,dword ptr [ebp+8]
 0042F378    mov         eax,dword ptr [ebp-4]
 0042F37B    call        0042F43C
 0042F380    inc         eax
 0042F381    add         dword ptr [ebp-8],eax
 0042F384    push        0
 0042F386    mov         eax,dword ptr [ebp+8]
 0042F389    call        @LStrLen
 0042F38E    push        eax
 0042F38F    mov         eax,dword ptr [ebp+8]
 0042F392    call        @LStrToPChar
 0042F397    push        eax
 0042F398    push        0
 0042F39A    mov         eax,dword ptr [ebp-4]
 0042F39D    mov         eax,dword ptr [eax+54]
 0042F3A0    push        eax
 0042F3A1    mov         eax,dword ptr [ebp-0C]
 0042F3A4    push        eax
 0042F3A5    mov         eax,dword ptr [ebp-8]
 0042F3A8    push        eax
 0042F3A9    mov         eax,dword ptr [ebp-4]
 0042F3AC    mov         eax,dword ptr [eax+4]
 0042F3AF    push        eax
 0042F3B0    call        gdi32.ExtTextOutA
 0042F3B5    mov         edx,dword ptr [ebp+8]
 0042F3B8    mov         eax,dword ptr [ebp-4]
 0042F3BB    call        0042F43C
 0042F3C0    mov         edx,eax
 0042F3C2    add         edx,dword ptr [ebp-8]
 0042F3C5    mov         ecx,dword ptr [ebp-0C]
 0042F3C8    mov         eax,dword ptr [ebp-4]
 0042F3CB    call        0042F14C
 0042F3D0    mov         eax,dword ptr [ebp-4]
 0042F3D3    mov         edx,dword ptr [eax]
 0042F3D5    call        dword ptr [edx+0C]
 0042F3D8    mov         esp,ebp
 0042F3DA    pop         ebp
 0042F3DB    ret         4
end;*}

//0042F3E4
{*procedure sub_0042F3E4(?:?; ?:AnsiString; ?:?);
begin
 0042F3E4    push        ebp
 0042F3E5    mov         ebp,esp
 0042F3E7    add         esp,0FFFFFFF4
 0042F3EA    mov         dword ptr [ebp-0C],ecx
 0042F3ED    mov         dword ptr [ebp-8],edx
 0042F3F0    mov         dword ptr [ebp-4],eax
 0042F3F3    mov         dl,byte ptr ds:[42F438];0x3 gvar_0042F438
 0042F3F9    mov         eax,dword ptr [ebp-4]
 0042F3FC    call        0042F7D4
 0042F401    mov         eax,dword ptr [ebp-0C]
 0042F404    xor         edx,edx
 0042F406    mov         dword ptr [eax],edx
 0042F408    mov         eax,dword ptr [ebp-0C]
 0042F40B    xor         edx,edx
 0042F40D    mov         dword ptr [eax+4],edx
 0042F410    mov         eax,dword ptr [ebp-0C]
 0042F413    push        eax
 0042F414    mov         eax,dword ptr [ebp-8]
 0042F417    call        @LStrLen
 0042F41C    push        eax
 0042F41D    mov         eax,dword ptr [ebp-8]
 0042F420    call        @LStrToPChar
 0042F425    push        eax
 0042F426    mov         eax,dword ptr [ebp-4]
 0042F429    mov         eax,dword ptr [eax+4]
 0042F42C    push        eax
 0042F42D    call        gdi32.GetTextExtentPoint32A
 0042F432    mov         esp,ebp
 0042F434    pop         ebp
 0042F435    ret
end;*}

//0042F43C
{*function sub_0042F43C(?:TCanvas; ?:AnsiString):?;
begin
 0042F43C    push        ebp
 0042F43D    mov         ebp,esp
 0042F43F    add         esp,0FFFFFFEC
 0042F442    mov         dword ptr [ebp-8],edx
 0042F445    mov         dword ptr [ebp-4],eax
 0042F448    lea         ecx,[ebp-14]
 0042F44B    mov         edx,dword ptr [ebp-8]
 0042F44E    mov         eax,dword ptr [ebp-4]
 0042F451    call        0042F3E4
 0042F456    mov         eax,dword ptr [ebp-14]
 0042F459    mov         dword ptr [ebp-0C],eax
 0042F45C    mov         eax,dword ptr [ebp-0C]
 0042F45F    mov         esp,ebp
 0042F461    pop         ebp
 0042F462    ret
end;*}

//0042F464
{*function sub_0042F464(?:TCanvas; ?:AnsiString):?;
begin
 0042F464    push        ebp
 0042F465    mov         ebp,esp
 0042F467    add         esp,0FFFFFFEC
 0042F46A    mov         dword ptr [ebp-8],edx
 0042F46D    mov         dword ptr [ebp-4],eax
 0042F470    lea         ecx,[ebp-14]
 0042F473    mov         edx,dword ptr [ebp-8]
 0042F476    mov         eax,dword ptr [ebp-4]
 0042F479    call        0042F3E4
 0042F47E    mov         eax,dword ptr [ebp-10]
 0042F481    mov         dword ptr [ebp-0C],eax
 0042F484    mov         eax,dword ptr [ebp-0C]
 0042F487    mov         esp,ebp
 0042F489    pop         ebp
 0042F48A    ret
end;*}

//0042F48C
function TCanvas.TryLock:Boolean;
begin
{*
 0042F48C    push        ebp
 0042F48D    mov         ebp,esp
 0042F48F    add         esp,0FFFFFFF8
 0042F492    mov         dword ptr [ebp-4],eax
 0042F495    push        571AEC;CounterLock:TRTLCriticalSection
 0042F49A    call        kernel32.EnterCriticalSection
 0042F49F    xor         eax,eax
 0042F4A1    push        ebp
 0042F4A2    push        42F4DE
 0042F4A7    push        dword ptr fs:[eax]
 0042F4AA    mov         dword ptr fs:[eax],esp
 0042F4AD    mov         eax,dword ptr [ebp-4]
 0042F4B0    cmp         dword ptr [eax+50],0
 0042F4B4    sete        byte ptr [ebp-5]
 0042F4B8    cmp         byte ptr [ebp-5],0
>0042F4BC    je          0042F4C6
 0042F4BE    mov         eax,dword ptr [ebp-4]
 0042F4C1    call        TCanvas.Lock
 0042F4C6    xor         eax,eax
 0042F4C8    pop         edx
 0042F4C9    pop         ecx
 0042F4CA    pop         ecx
 0042F4CB    mov         dword ptr fs:[eax],edx
 0042F4CE    push        42F4E5
 0042F4D3    push        571AEC;CounterLock:TRTLCriticalSection
 0042F4D8    call        kernel32.LeaveCriticalSection
 0042F4DD    ret
>0042F4DE    jmp         @HandleFinally
>0042F4E3    jmp         0042F4D3
 0042F4E5    mov         al,byte ptr [ebp-5]
 0042F4E8    pop         ecx
 0042F4E9    pop         ecx
 0042F4EA    pop         ebp
 0042F4EB    ret
*}
end;

//0042F4EC
procedure TCanvas.Unlock;
begin
{*
 0042F4EC    push        ebp
 0042F4ED    mov         ebp,esp
 0042F4EF    push        ecx
 0042F4F0    mov         dword ptr [ebp-4],eax
 0042F4F3    mov         eax,dword ptr [ebp-4]
 0042F4F6    add         eax,38
 0042F4F9    push        eax
 0042F4FA    call        kernel32.LeaveCriticalSection
 0042F4FF    push        571AEC;CounterLock:TRTLCriticalSection
 0042F504    call        kernel32.EnterCriticalSection
 0042F509    mov         eax,dword ptr [ebp-4]
 0042F50C    dec         dword ptr [eax+50]
 0042F50F    push        571AEC;CounterLock:TRTLCriticalSection
 0042F514    call        kernel32.LeaveCriticalSection
 0042F519    pop         ecx
 0042F51A    pop         ebp
 0042F51B    ret
*}
end;

//0042F51C
procedure TCanvas.SetFont(Value:TFont);
begin
{*
 0042F51C    push        ebp
 0042F51D    mov         ebp,esp
 0042F51F    add         esp,0FFFFFFF8
 0042F522    mov         dword ptr [ebp-8],edx
 0042F525    mov         dword ptr [ebp-4],eax
 0042F528    mov         edx,dword ptr [ebp-8]
 0042F52B    mov         eax,dword ptr [ebp-4]
 0042F52E    mov         eax,dword ptr [eax+0C]
 0042F531    mov         ecx,dword ptr [eax]
 0042F533    call        dword ptr [ecx+8]
 0042F536    pop         ecx
 0042F537    pop         ecx
 0042F538    pop         ebp
 0042F539    ret
*}
end;

//0042F53C
procedure TCanvas.SetPen(Value:TPen);
begin
{*
 0042F53C    push        ebp
 0042F53D    mov         ebp,esp
 0042F53F    add         esp,0FFFFFFF8
 0042F542    mov         dword ptr [ebp-8],edx
 0042F545    mov         dword ptr [ebp-4],eax
 0042F548    mov         edx,dword ptr [ebp-8]
 0042F54B    mov         eax,dword ptr [ebp-4]
 0042F54E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0042F551    mov         ecx,dword ptr [eax]
 0042F553    call        dword ptr [ecx+8];TPen.sub_0042E590
 0042F556    pop         ecx
 0042F557    pop         ecx
 0042F558    pop         ebp
 0042F559    ret
*}
end;

//0042F55C
procedure TCanvas.SetBrush(Value:TBrush);
begin
{*
 0042F55C    push        ebp
 0042F55D    mov         ebp,esp
 0042F55F    add         esp,0FFFFFFF8
 0042F562    mov         dword ptr [ebp-8],edx
 0042F565    mov         dword ptr [ebp-4],eax
 0042F568    mov         edx,dword ptr [ebp-8]
 0042F56B    mov         eax,dword ptr [ebp-4]
 0042F56E    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0042F571    mov         ecx,dword ptr [eax]
 0042F573    call        dword ptr [ecx+8];TBrush.sub_0042E938
 0042F576    pop         ecx
 0042F577    pop         ecx
 0042F578    pop         ebp
 0042F579    ret
*}
end;

//0042F57C
{*procedure sub_0042F57C(?:?; ?:?);
begin
 0042F57C    push        ebp
 0042F57D    mov         ebp,esp
 0042F57F    add         esp,0FFFFFFF8
 0042F582    mov         dword ptr [ebp-8],edx
 0042F585    mov         dword ptr [ebp-4],eax
 0042F588    mov         dl,byte ptr ds:[42F5AC];0x1 gvar_0042F5AC
 0042F58E    mov         eax,dword ptr [ebp-4]
 0042F591    call        0042F7D4
 0042F596    mov         eax,dword ptr [ebp-8]
 0042F599    push        eax
 0042F59A    mov         eax,dword ptr [ebp-4]
 0042F59D    mov         eax,dword ptr [eax+4]
 0042F5A0    push        eax
 0042F5A1    call        gdi32.GetCurrentPositionEx
 0042F5A6    pop         ecx
 0042F5A7    pop         ecx
 0042F5A8    pop         ebp
 0042F5A9    ret
end;*}

//0042F5B0
{*procedure sub_0042F5B0(?:?; ?:?);
begin
 0042F5B0    push        ebp
 0042F5B1    mov         ebp,esp
 0042F5B3    add         esp,0FFFFFFF4
 0042F5B6    push        esi
 0042F5B7    push        edi
 0042F5B8    mov         esi,edx
 0042F5BA    lea         edi,[ebp-0C]
 0042F5BD    movs        dword ptr [edi],dword ptr [esi]
 0042F5BE    movs        dword ptr [edi],dword ptr [esi]
 0042F5BF    mov         dword ptr [ebp-4],eax
 0042F5C2    mov         ecx,dword ptr [ebp-8]
 0042F5C5    mov         edx,dword ptr [ebp-0C]
 0042F5C8    mov         eax,dword ptr [ebp-4]
 0042F5CB    call        0042F14C
 0042F5D0    pop         edi
 0042F5D1    pop         esi
 0042F5D2    mov         esp,ebp
 0042F5D4    pop         ebp
 0042F5D5    ret
end;*}

//0042F5D8
{*function sub_0042F5D8(?:?; ?:?; ?:?):?;
begin
 0042F5D8    push        ebp
 0042F5D9    mov         ebp,esp
 0042F5DB    add         esp,0FFFFFFF0
 0042F5DE    mov         dword ptr [ebp-0C],ecx
 0042F5E1    mov         dword ptr [ebp-8],edx
 0042F5E4    mov         dword ptr [ebp-4],eax
 0042F5E7    mov         dl,byte ptr ds:[42F614];0x1 gvar_0042F614
 0042F5ED    mov         eax,dword ptr [ebp-4]
 0042F5F0    call        0042F7D4
 0042F5F5    mov         eax,dword ptr [ebp-0C]
 0042F5F8    push        eax
 0042F5F9    mov         eax,dword ptr [ebp-8]
 0042F5FC    push        eax
 0042F5FD    mov         eax,dword ptr [ebp-4]
 0042F600    mov         eax,dword ptr [eax+4]
 0042F603    push        eax
 0042F604    call        gdi32.GetPixel
 0042F609    mov         dword ptr [ebp-10],eax
 0042F60C    mov         eax,dword ptr [ebp-10]
 0042F60F    mov         esp,ebp
 0042F611    pop         ebp
 0042F612    ret
end;*}

//0042F618
{*procedure sub_0042F618(?:?; ?:?; ?:?; ?:?);
begin
 0042F618    push        ebp
 0042F619    mov         ebp,esp
 0042F61B    add         esp,0FFFFFFF4
 0042F61E    mov         dword ptr [ebp-0C],ecx
 0042F621    mov         dword ptr [ebp-8],edx
 0042F624    mov         dword ptr [ebp-4],eax
 0042F627    mov         eax,dword ptr [ebp-4]
 0042F62A    mov         edx,dword ptr [eax]
 0042F62C    call        dword ptr [edx+10]
 0042F62F    mov         dl,byte ptr ds:[42F668];0x5 gvar_0042F668
 0042F635    mov         eax,dword ptr [ebp-4]
 0042F638    call        0042F7D4
 0042F63D    mov         eax,dword ptr [ebp+8]
 0042F640    call        ColorToRGB
 0042F645    push        eax
 0042F646    mov         eax,dword ptr [ebp-0C]
 0042F649    push        eax
 0042F64A    mov         eax,dword ptr [ebp-8]
 0042F64D    push        eax
 0042F64E    mov         eax,dword ptr [ebp-4]
 0042F651    mov         eax,dword ptr [eax+4]
 0042F654    push        eax
 0042F655    call        gdi32.SetPixel
 0042F65A    mov         eax,dword ptr [ebp-4]
 0042F65D    mov         edx,dword ptr [eax]
 0042F65F    call        dword ptr [edx+0C]
 0042F662    mov         esp,ebp
 0042F664    pop         ebp
 0042F665    ret         4
end;*}

//0042F66C
{*procedure sub_0042F66C(?:TCanvas; ?:?);
begin
 0042F66C    push        ebp
 0042F66D    mov         ebp,esp
 0042F66F    add         esp,0FFFFFFF8
 0042F672    mov         dword ptr [ebp-8],edx
 0042F675    mov         dword ptr [ebp-4],eax
 0042F678    mov         dl,byte ptr ds:[42F69C];0x1 gvar_0042F69C
 0042F67E    mov         eax,dword ptr [ebp-4]
 0042F681    call        0042F7D4
 0042F686    mov         eax,dword ptr [ebp-8]
 0042F689    push        eax
 0042F68A    mov         eax,dword ptr [ebp-4]
 0042F68D    mov         eax,dword ptr [eax+4]
 0042F690    push        eax
 0042F691    call        gdi32.GetClipBox
 0042F696    pop         ecx
 0042F697    pop         ecx
 0042F698    pop         ebp
 0042F699    ret
end;*}

//0042F6A0
{*function sub_0042F6A0(?:TCanvas):?;
begin
 0042F6A0    push        ebp
 0042F6A1    mov         ebp,esp
 0042F6A3    add         esp,0FFFFFFF8
 0042F6A6    mov         dword ptr [ebp-4],eax
 0042F6A9    mov         eax,dword ptr [ebp-4]
 0042F6AC    mov         edx,dword ptr [eax]
 0042F6AE    call        dword ptr [edx+10]
 0042F6B1    mov         dl,byte ptr ds:[42F6D0];0xF gvar_0042F6D0
 0042F6B7    mov         eax,dword ptr [ebp-4]
 0042F6BA    call        0042F7D4
 0042F6BF    mov         eax,dword ptr [ebp-4]
 0042F6C2    mov         eax,dword ptr [eax+4]
 0042F6C5    mov         dword ptr [ebp-8],eax
 0042F6C8    mov         eax,dword ptr [ebp-8]
 0042F6CB    pop         ecx
 0042F6CC    pop         ecx
 0042F6CD    pop         ebp
 0042F6CE    ret
end;*}

//0042F6D4
procedure sub_0042F6D4(?:Pointer);
begin
{*
 0042F6D4    push        ebp
 0042F6D5    mov         ebp,esp
 0042F6D7    push        ecx
 0042F6D8    mov         dword ptr [ebp-4],eax
 0042F6DB    mov         eax,dword ptr [ebp-4]
 0042F6DE    cmp         dword ptr [eax+4],0
>0042F6E2    je          0042F744
 0042F6E4    mov         al,[0042F748];0xE gvar_0042F748
 0042F6E9    mov         edx,dword ptr [ebp-4]
 0042F6EC    not         eax
 0042F6EE    and         al,byte ptr [edx+8]
 0042F6F1    mov         edx,dword ptr [ebp-4]
 0042F6F4    mov         dl,byte ptr [edx+8]
 0042F6F7    cmp         dl,al
>0042F6F9    je          0042F744
 0042F6FB    mov         eax,[00571AC4];0x0 StockPen:HPEN
 0042F700    push        eax
 0042F701    mov         eax,dword ptr [ebp-4]
 0042F704    mov         eax,dword ptr [eax+4]
 0042F707    push        eax
 0042F708    call        gdi32.SelectObject
 0042F70D    mov         eax,[00571AC8];0x0 StockBrush:HBRUSH
 0042F712    push        eax
 0042F713    mov         eax,dword ptr [ebp-4]
 0042F716    mov         eax,dword ptr [eax+4]
 0042F719    push        eax
 0042F71A    call        gdi32.SelectObject
 0042F71F    mov         eax,[00571ACC];0x0 StockFont:HFONT
 0042F724    push        eax
 0042F725    mov         eax,dword ptr [ebp-4]
 0042F728    mov         eax,dword ptr [eax+4]
 0042F72B    push        eax
 0042F72C    call        gdi32.SelectObject
 0042F731    mov         al,[0042F748];0xE gvar_0042F748
 0042F736    mov         edx,dword ptr [ebp-4]
 0042F739    not         eax
 0042F73B    and         al,byte ptr [edx+8]
 0042F73E    mov         edx,dword ptr [ebp-4]
 0042F741    mov         byte ptr [edx+8],al
 0042F744    pop         ecx
 0042F745    pop         ebp
 0042F746    ret
*}
end;

//0042F74C
procedure sub_0042F74C;
begin
{*
 0042F74C    push        ebp
 0042F74D    mov         ebp,esp
 0042F74F    push        ecx
 0042F750    mov         dword ptr [ebp-4],eax
 0042F753    pop         ecx
 0042F754    pop         ebp
 0042F755    ret
*}
end;

//0042F758
procedure TCanvas.SetHandle(Value:HDC);
begin
{*
 0042F758    push        ebp
 0042F759    mov         ebp,esp
 0042F75B    add         esp,0FFFFFFF0
 0042F75E    mov         dword ptr [ebp-8],edx
 0042F761    mov         dword ptr [ebp-4],eax
 0042F764    mov         eax,dword ptr [ebp-4]
 0042F767    mov         eax,dword ptr [eax+4]
 0042F76A    cmp         eax,dword ptr [ebp-8]
>0042F76D    je          0042F7CD
 0042F76F    mov         eax,dword ptr [ebp-4]
 0042F772    cmp         dword ptr [eax+4],0
>0042F776    je          0042F7A9
 0042F778    mov         eax,dword ptr [ebp-4]
 0042F77B    call        0042F6D4
 0042F780    lea         edx,[ebp-10]
 0042F783    mov         eax,dword ptr [ebp-4]
 0042F786    call        0042F57C
 0042F78B    mov         eax,dword ptr [ebp-4]
 0042F78E    mov         edx,dword ptr [ebp-10]
 0042F791    mov         dword ptr [eax+18],edx
 0042F794    mov         edx,dword ptr [ebp-0C]
 0042F797    mov         dword ptr [eax+1C],edx
 0042F79A    mov         eax,dword ptr [ebp-4]
 0042F79D    xor         edx,edx
 0042F79F    mov         dword ptr [eax+4],edx
 0042F7A2    mov         eax,dword ptr [ebp-4]
 0042F7A5    and         byte ptr [eax+8],0FE
 0042F7A9    cmp         dword ptr [ebp-8],0
>0042F7AD    je          0042F7CD
 0042F7AF    mov         eax,dword ptr [ebp-4]
 0042F7B2    or          byte ptr [eax+8],1
 0042F7B6    mov         eax,dword ptr [ebp-8]
 0042F7B9    mov         edx,dword ptr [ebp-4]
 0042F7BC    mov         dword ptr [edx+4],eax
 0042F7BF    mov         eax,dword ptr [ebp-4]
 0042F7C2    lea         edx,[eax+18]
 0042F7C5    mov         eax,dword ptr [ebp-4]
 0042F7C8    call        0042F5B0
 0042F7CD    mov         esp,ebp
 0042F7CF    pop         ebp
 0042F7D0    ret
*}
end;

//0042F7D4
{*procedure sub_0042F7D4(?:?; ?:?);
begin
 0042F7D4    push        ebp
 0042F7D5    mov         ebp,esp
 0042F7D7    add         esp,0FFFFFFF8
 0042F7DA    mov         byte ptr [ebp-5],dl
 0042F7DD    mov         dword ptr [ebp-4],eax
 0042F7E0    mov         eax,dword ptr [ebp-4]
 0042F7E3    mov         al,byte ptr [eax+8]
 0042F7E6    not         eax
 0042F7E8    and         al,byte ptr [ebp-5]
 0042F7EB    mov         byte ptr [ebp-6],al
 0042F7EE    mov         al,[0042F864];0x0 gvar_0042F864
 0042F7F3    cmp         al,byte ptr [ebp-6]
>0042F7F6    je          0042F85F
 0042F7F8    test        byte ptr [ebp-6],1
>0042F7FC    je          0042F826
 0042F7FE    mov         eax,dword ptr [ebp-4]
 0042F801    mov         edx,dword ptr [eax]
 0042F803    call        dword ptr [edx+14]
 0042F806    mov         eax,dword ptr [ebp-4]
 0042F809    cmp         dword ptr [eax+4],0
>0042F80D    jne         0042F826
 0042F80F    mov         ecx,dword ptr ds:[56E1EC];^SNoCanvasHandle:TResStringRec
 0042F815    mov         dl,1
 0042F817    mov         eax,[0041D40C];EInvalidOperation
 0042F81C    call        Exception.Create;EInvalidOperation.Create
 0042F821    call        @RaiseExcept
 0042F826    test        byte ptr [ebp-6],2
>0042F82A    je          0042F834
 0042F82C    mov         eax,dword ptr [ebp-4]
 0042F82F    call        0042F8B0
 0042F834    test        byte ptr [ebp-6],4
>0042F838    je          0042F842
 0042F83A    mov         eax,dword ptr [ebp-4]
 0042F83D    call        0042F8F0
 0042F842    test        byte ptr [ebp-6],8
>0042F846    je          0042F850
 0042F848    mov         eax,dword ptr [ebp-4]
 0042F84B    call        0042F934
 0042F850    mov         al,byte ptr [ebp-6]
 0042F853    mov         edx,dword ptr [ebp-4]
 0042F856    or          al,byte ptr [edx+8]
 0042F859    mov         edx,dword ptr [ebp-4]
 0042F85C    mov         byte ptr [edx+8],al
 0042F85F    pop         ecx
 0042F860    pop         ecx
 0042F861    pop         ebp
 0042F862    ret
end;*}

//0042F868
procedure sub_0042F868;
begin
{*
 0042F868    push        ebp
 0042F869    mov         ebp,esp
 0042F86B    push        ecx
 0042F86C    push        ebx
 0042F86D    mov         dword ptr [ebp-4],eax
 0042F870    mov         eax,dword ptr [ebp-4]
 0042F873    cmp         word ptr [eax+32],0;TCanvas.?f32:word
>0042F878    je          0042F886
 0042F87A    mov         ebx,dword ptr [ebp-4]
 0042F87D    mov         edx,dword ptr [ebp-4]
 0042F880    mov         eax,dword ptr [ebx+34];TCanvas.?f34:TBitmap
 0042F883    call        dword ptr [ebx+30];TCanvas.FOnChanging
 0042F886    pop         ebx
 0042F887    pop         ecx
 0042F888    pop         ebp
 0042F889    ret
*}
end;

//0042F88C
procedure sub_0042F88C;
begin
{*
 0042F88C    push        ebp
 0042F88D    mov         ebp,esp
 0042F88F    push        ecx
 0042F890    push        ebx
 0042F891    mov         dword ptr [ebp-4],eax
 0042F894    mov         eax,dword ptr [ebp-4]
 0042F897    cmp         word ptr [eax+2A],0;TCanvas.?f2A:word
>0042F89C    je          0042F8AA
 0042F89E    mov         ebx,dword ptr [ebp-4]
 0042F8A1    mov         edx,dword ptr [ebp-4]
 0042F8A4    mov         eax,dword ptr [ebx+2C];TCanvas.?f2C:TBitmap
 0042F8A7    call        dword ptr [ebx+28];TCanvas.FOnChange
 0042F8AA    pop         ebx
 0042F8AB    pop         ecx
 0042F8AC    pop         ebp
 0042F8AD    ret
*}
end;

//0042F8B0
{*procedure sub_0042F8B0(?:?);
begin
 0042F8B0    push        ebp
 0042F8B1    mov         ebp,esp
 0042F8B3    push        ecx
 0042F8B4    mov         dword ptr [ebp-4],eax
 0042F8B7    mov         eax,dword ptr [ebp-4]
 0042F8BA    mov         eax,dword ptr [eax+0C]
 0042F8BD    call        0042E12C
 0042F8C2    push        eax
 0042F8C3    mov         eax,dword ptr [ebp-4]
 0042F8C6    mov         eax,dword ptr [eax+4]
 0042F8C9    push        eax
 0042F8CA    call        gdi32.SelectObject
 0042F8CF    mov         eax,dword ptr [ebp-4]
 0042F8D2    mov         eax,dword ptr [eax+0C]
 0042F8D5    mov         eax,dword ptr [eax+18]
 0042F8D8    call        ColorToRGB
 0042F8DD    push        eax
 0042F8DE    mov         eax,dword ptr [ebp-4]
 0042F8E1    mov         eax,dword ptr [eax+4]
 0042F8E4    push        eax
 0042F8E5    call        gdi32.SetTextColor
 0042F8EA    pop         ecx
 0042F8EB    pop         ebp
 0042F8EC    ret
end;*}

//0042F8F0
{*procedure sub_0042F8F0(?:?);
begin
 0042F8F0    push        ebp
 0042F8F1    mov         ebp,esp
 0042F8F3    push        ecx
 0042F8F4    mov         dword ptr [ebp-4],eax
 0042F8F7    mov         eax,dword ptr [ebp-4]
 0042F8FA    mov         eax,dword ptr [eax+10]
 0042F8FD    call        0042E714
 0042F902    push        eax
 0042F903    mov         eax,dword ptr [ebp-4]
 0042F906    mov         eax,dword ptr [eax+4]
 0042F909    push        eax
 0042F90A    call        gdi32.SelectObject
 0042F90F    mov         eax,dword ptr [ebp-4]
 0042F912    mov         eax,dword ptr [eax+10]
 0042F915    movzx       eax,byte ptr [eax+18]
 0042F919    movzx       eax,word ptr [eax*2+56BFFC]
 0042F921    push        eax
 0042F922    mov         eax,dword ptr [ebp-4]
 0042F925    mov         eax,dword ptr [eax+4]
 0042F928    push        eax
 0042F929    call        gdi32.SetROP2
 0042F92E    pop         ecx
 0042F92F    pop         ebp
 0042F930    ret
end;*}

//0042F934
{*procedure sub_0042F934(?:?);
begin
 0042F934    push        ebp
 0042F935    mov         ebp,esp
 0042F937    push        ecx
 0042F938    mov         dword ptr [ebp-4],eax
 0042F93B    mov         eax,dword ptr [ebp-4]
 0042F93E    mov         eax,dword ptr [eax+14]
 0042F941    call        TBrush.GetHandle
 0042F946    push        eax
 0042F947    call        gdi32.UnrealizeObject
 0042F94C    mov         eax,dword ptr [ebp-4]
 0042F94F    mov         eax,dword ptr [eax+14]
 0042F952    call        TBrush.GetHandle
 0042F957    push        eax
 0042F958    mov         eax,dword ptr [ebp-4]
 0042F95B    mov         eax,dword ptr [eax+4]
 0042F95E    push        eax
 0042F95F    call        gdi32.SelectObject
 0042F964    mov         eax,dword ptr [ebp-4]
 0042F967    mov         eax,dword ptr [eax+14]
 0042F96A    call        TBrush.GetStyle
 0042F96F    test        al,al
>0042F971    jne         0042F9A1
 0042F973    mov         eax,dword ptr [ebp-4]
 0042F976    mov         eax,dword ptr [eax+14]
 0042F979    call        TBrush.GetColor
 0042F97E    call        ColorToRGB
 0042F983    push        eax
 0042F984    mov         eax,dword ptr [ebp-4]
 0042F987    mov         eax,dword ptr [eax+4]
 0042F98A    push        eax
 0042F98B    call        gdi32.SetBkColor
 0042F990    push        2
 0042F992    mov         eax,dword ptr [ebp-4]
 0042F995    mov         eax,dword ptr [eax+4]
 0042F998    push        eax
 0042F999    call        gdi32.SetBkMode
 0042F99E    pop         ecx
 0042F99F    pop         ebp
 0042F9A0    ret
 0042F9A1    mov         eax,dword ptr [ebp-4]
 0042F9A4    mov         eax,dword ptr [eax+14]
 0042F9A7    call        TBrush.GetColor
 0042F9AC    call        ColorToRGB
 0042F9B1    not         eax
 0042F9B3    push        eax
 0042F9B4    mov         eax,dword ptr [ebp-4]
 0042F9B7    mov         eax,dword ptr [eax+4]
 0042F9BA    push        eax
 0042F9BB    call        gdi32.SetBkColor
 0042F9C0    push        1
 0042F9C2    mov         eax,dword ptr [ebp-4]
 0042F9C5    mov         eax,dword ptr [eax+4]
 0042F9C8    push        eax
 0042F9C9    call        gdi32.SetBkMode
 0042F9CE    pop         ecx
 0042F9CF    pop         ebp
 0042F9D0    ret
end;*}

//0042F9D4
{*procedure sub_0042F9D4(?:?; ?:?);
begin
 0042F9D4    push        ebp
 0042F9D5    mov         ebp,esp
 0042F9D7    add         esp,0FFFFFFF8
 0042F9DA    mov         dword ptr [ebp-8],edx
 0042F9DD    mov         dword ptr [ebp-4],eax
 0042F9E0    mov         eax,dword ptr [ebp-4]
 0042F9E3    test        byte ptr [eax+8],2
>0042F9E7    je          0042FA02
 0042F9E9    mov         eax,dword ptr [ebp-4]
 0042F9EC    and         byte ptr [eax+8],0FD
 0042F9F0    mov         eax,[00571ACC];0x0 StockFont:HFONT
 0042F9F5    push        eax
 0042F9F6    mov         eax,dword ptr [ebp-4]
 0042F9F9    mov         eax,dword ptr [eax+4]
 0042F9FC    push        eax
 0042F9FD    call        gdi32.SelectObject
 0042FA02    pop         ecx
 0042FA03    pop         ecx
 0042FA04    pop         ebp
 0042FA05    ret
end;*}

//0042FA08
{*procedure sub_0042FA08(?:?; ?:?);
begin
 0042FA08    push        ebp
 0042FA09    mov         ebp,esp
 0042FA0B    add         esp,0FFFFFFF8
 0042FA0E    mov         dword ptr [ebp-8],edx
 0042FA11    mov         dword ptr [ebp-4],eax
 0042FA14    mov         eax,dword ptr [ebp-4]
 0042FA17    test        byte ptr [eax+8],4
>0042FA1B    je          0042FA36
 0042FA1D    mov         eax,dword ptr [ebp-4]
 0042FA20    and         byte ptr [eax+8],0FB
 0042FA24    mov         eax,[00571AC4];0x0 StockPen:HPEN
 0042FA29    push        eax
 0042FA2A    mov         eax,dword ptr [ebp-4]
 0042FA2D    mov         eax,dword ptr [eax+4]
 0042FA30    push        eax
 0042FA31    call        gdi32.SelectObject
 0042FA36    pop         ecx
 0042FA37    pop         ecx
 0042FA38    pop         ebp
 0042FA39    ret
end;*}

//0042FA3C
{*procedure sub_0042FA3C(?:?; ?:?);
begin
 0042FA3C    push        ebp
 0042FA3D    mov         ebp,esp
 0042FA3F    add         esp,0FFFFFFF8
 0042FA42    mov         dword ptr [ebp-8],edx
 0042FA45    mov         dword ptr [ebp-4],eax
 0042FA48    mov         eax,dword ptr [ebp-4]
 0042FA4B    test        byte ptr [eax+8],8
>0042FA4F    je          0042FA6A
 0042FA51    mov         eax,dword ptr [ebp-4]
 0042FA54    and         byte ptr [eax+8],0F7
 0042FA58    mov         eax,[00571AC8];0x0 StockBrush:HBRUSH
 0042FA5D    push        eax
 0042FA5E    mov         eax,dword ptr [ebp-4]
 0042FA61    mov         eax,dword ptr [eax+4]
 0042FA64    push        eax
 0042FA65    call        gdi32.SelectObject
 0042FA6A    pop         ecx
 0042FA6B    pop         ecx
 0042FA6C    pop         ebp
 0042FA6D    ret
end;*}

//0042FA70
procedure sub_0042FA70(?:TResStringRec);
begin
{*
 0042FA70    push        ebp
 0042FA71    mov         ebp,esp
 0042FA73    push        ecx
 0042FA74    mov         dword ptr [ebp-4],eax
 0042FA77    mov         ecx,dword ptr [ebp-4]
 0042FA7A    mov         dl,1
 0042FA7C    mov         eax,[0042C144];EInvalidGraphicOperation
 0042FA81    call        Exception.Create;EInvalidGraphicOperation.Create
 0042FA86    call        @RaiseExcept
 0042FA8B    pop         ecx
 0042FA8C    pop         ebp
 0042FA8D    ret
*}
end;

//0042FA90
procedure InvalidGraphic(Str:PResStringRec);
begin
{*
 0042FA90    push        ebp
 0042FA91    mov         ebp,esp
 0042FA93    push        ecx
 0042FA94    mov         dword ptr [ebp-4],eax
 0042FA97    mov         ecx,dword ptr [ebp-4]
 0042FA9A    mov         dl,1
 0042FA9C    mov         eax,[0042C0E8];EInvalidGraphic
 0042FAA1    call        Exception.Create
 0042FAA6    call        @RaiseExcept
 0042FAAB    pop         ecx
 0042FAAC    pop         ebp
 0042FAAD    ret
*}
end;

//0042FAB0
procedure InvalidBitmap;
begin
{*
 0042FAB0    mov         eax,[0056E190];^SInvalidBitmap:TResStringRec
 0042FAB5    call        InvalidGraphic
 0042FABA    ret
*}
end;

//0042FABC
procedure InvalidIcon;
begin
{*
 0042FABC    mov         eax,[0056E1A0];^SInvalidIcon:TResStringRec
 0042FAC1    call        InvalidGraphic
 0042FAC6    ret
*}
end;

//0042FAC8
procedure InvalidMetafile;
begin
{*
 0042FAC8    mov         eax,[0056E428];^SInvalidMetafile:TResStringRec
 0042FACD    call        InvalidGraphic
 0042FAD2    ret
*}
end;

//0042FAD4
procedure OutOfResources;
begin
{*
 0042FAD4    push        ebp
 0042FAD5    mov         ebp,esp
 0042FAD7    push        0
 0042FAD9    xor         eax,eax
 0042FADB    push        ebp
 0042FADC    push        42FB1E
 0042FAE1    push        dword ptr fs:[eax]
 0042FAE4    mov         dword ptr fs:[eax],esp
 0042FAE7    lea         edx,[ebp-4]
 0042FAEA    mov         eax,[0056E080];^SOutOfResources:TResStringRec
 0042FAEF    call        LoadResString
 0042FAF4    mov         ecx,dword ptr [ebp-4]
 0042FAF7    mov         dl,1
 0042FAF9    mov         eax,[0041D3B0];EOutOfResources
 0042FAFE    call        Exception.Create
 0042FB03    call        @RaiseExcept
 0042FB08    xor         eax,eax
 0042FB0A    pop         edx
 0042FB0B    pop         ecx
 0042FB0C    pop         ecx
 0042FB0D    mov         dword ptr fs:[eax],edx
 0042FB10    push        42FB25
 0042FB15    lea         eax,[ebp-4]
 0042FB18    call        @LStrClr
 0042FB1D    ret
>0042FB1E    jmp         @HandleFinally
>0042FB23    jmp         0042FB15
 0042FB25    pop         ecx
 0042FB26    pop         ebp
 0042FB27    ret
*}
end;

//0042FB28
procedure sub_0042FB28;
begin
{*
 0042FB28    push        ebp
 0042FB29    mov         ebp,esp
 0042FB2B    add         esp,0FFFFFEF8
 0042FB31    xor         eax,eax
 0042FB33    mov         dword ptr [ebp-108],eax
 0042FB39    xor         eax,eax
 0042FB3B    push        ebp
 0042FB3C    push        42FBC9
 0042FB41    push        dword ptr fs:[eax]
 0042FB44    mov         dword ptr fs:[eax],esp
 0042FB47    call        kernel32.GetLastError
 0042FB4C    mov         dword ptr [ebp-4],eax
 0042FB4F    cmp         dword ptr [ebp-4],0
>0042FB53    je          0042FBAB
 0042FB55    push        0
 0042FB57    push        100
 0042FB5C    lea         eax,[ebp-104]
 0042FB62    push        eax
 0042FB63    push        400
 0042FB68    mov         eax,dword ptr [ebp-4]
 0042FB6B    push        eax
 0042FB6C    push        0
 0042FB6E    push        1000
 0042FB73    call        kernel32.FormatMessageA
 0042FB78    test        eax,eax
>0042FB7A    je          0042FBAB
 0042FB7C    lea         eax,[ebp-108]
 0042FB82    lea         edx,[ebp-104]
 0042FB88    mov         ecx,100
 0042FB8D    call        @LStrFromArray
 0042FB92    mov         ecx,dword ptr [ebp-108]
 0042FB98    mov         dl,1
 0042FB9A    mov         eax,[0041D3B0];EOutOfResources
 0042FB9F    call        Exception.Create;EOutOfResources.Create
 0042FBA4    call        @RaiseExcept
>0042FBA9    jmp         0042FBB0
 0042FBAB    call        OutOfResources
 0042FBB0    xor         eax,eax
 0042FBB2    pop         edx
 0042FBB3    pop         ecx
 0042FBB4    pop         ecx
 0042FBB5    mov         dword ptr fs:[eax],edx
 0042FBB8    push        42FBD0
 0042FBBD    lea         eax,[ebp-108]
 0042FBC3    call        @LStrClr
 0042FBC8    ret
>0042FBC9    jmp         @HandleFinally
>0042FBCE    jmp         0042FBBD
 0042FBD0    mov         esp,ebp
 0042FBD2    pop         ebp
 0042FBD3    ret
*}
end;

//0042FBD4
{*function sub_0042FBD4(?:HBITMAP):?;
begin
 0042FBD4    push        ebp
 0042FBD5    mov         ebp,esp
 0042FBD7    add         esp,0FFFFFFF8
 0042FBDA    mov         dword ptr [ebp-4],eax
 0042FBDD    cmp         dword ptr [ebp-4],0
>0042FBE1    jne         0042FBE8
 0042FBE3    call        0042FB28
 0042FBE8    mov         eax,dword ptr [ebp-4]
 0042FBEB    mov         dword ptr [ebp-8],eax
 0042FBEE    mov         eax,dword ptr [ebp-8]
 0042FBF1    pop         ecx
 0042FBF2    pop         ecx
 0042FBF3    pop         ebp
 0042FBF4    ret
end;*}

//0042FBF8
{*function sub_0042FBF8(?:?; ?:?; ?:?):?;
begin
 0042FBF8    push        ebp
 0042FBF9    mov         ebp,esp
 0042FBFB    add         esp,0FFFFFFC0
 0042FBFE    push        esi
 0042FBFF    push        edi
 0042FC00    mov         esi,edx
 0042FC02    lea         edi,[ebp-0C]
 0042FC05    movs        dword ptr [edi],dword ptr [esi]
 0042FC06    movs        dword ptr [edi],dword ptr [esi]
 0042FC07    mov         byte ptr [ebp-0D],cl
 0042FC0A    mov         dword ptr [ebp-4],eax
 0042FC0D    push        0
 0042FC0F    call        gdi32.CreateCompatibleDC
 0042FC14    mov         dword ptr [ebp-1C],eax
 0042FC17    push        0
 0042FC19    call        gdi32.CreateCompatibleDC
 0042FC1E    mov         dword ptr [ebp-20],eax
 0042FC21    xor         eax,eax
 0042FC23    push        ebp
 0042FC24    push        42FD54
 0042FC29    push        dword ptr fs:[eax]
 0042FC2C    mov         dword ptr fs:[eax],esp
 0042FC2F    lea         eax,[ebp-40]
 0042FC32    push        eax
 0042FC33    push        18
 0042FC35    mov         eax,dword ptr [ebp-4]
 0042FC38    push        eax
 0042FC39    call        gdi32.GetObjectA
 0042FC3E    cmp         byte ptr [ebp-0D],0
>0042FC42    je          0042FC5C
 0042FC44    push        0
 0042FC46    push        1
 0042FC48    push        1
 0042FC4A    mov         eax,dword ptr [ebp-8]
 0042FC4D    push        eax
 0042FC4E    mov         eax,dword ptr [ebp-0C]
 0042FC51    push        eax
 0042FC52    call        gdi32.CreateBitmap
 0042FC57    mov         dword ptr [ebp-14],eax
>0042FC5A    jmp         0042FCBE
 0042FC5C    push        0
 0042FC5E    call        user32.GetDC
 0042FC63    mov         dword ptr [ebp-18],eax
 0042FC66    cmp         dword ptr [ebp-18],0
>0042FC6A    jne         0042FC71
 0042FC6C    call        0042FB28
 0042FC71    xor         eax,eax
 0042FC73    push        ebp
 0042FC74    push        42FCB7
 0042FC79    push        dword ptr fs:[eax]
 0042FC7C    mov         dword ptr fs:[eax],esp
 0042FC7F    mov         eax,dword ptr [ebp-8]
 0042FC82    push        eax
 0042FC83    mov         eax,dword ptr [ebp-0C]
 0042FC86    push        eax
 0042FC87    mov         eax,dword ptr [ebp-18]
 0042FC8A    push        eax
 0042FC8B    call        gdi32.CreateCompatibleBitmap
 0042FC90    mov         dword ptr [ebp-14],eax
 0042FC93    cmp         dword ptr [ebp-14],0
>0042FC97    jne         0042FC9E
 0042FC99    call        0042FB28
 0042FC9E    xor         eax,eax
 0042FCA0    pop         edx
 0042FCA1    pop         ecx
 0042FCA2    pop         ecx
 0042FCA3    mov         dword ptr fs:[eax],edx
 0042FCA6    push        42FCBE
 0042FCAB    mov         eax,dword ptr [ebp-18]
 0042FCAE    push        eax
 0042FCAF    push        0
 0042FCB1    call        user32.ReleaseDC
 0042FCB6    ret
>0042FCB7    jmp         @HandleFinally
>0042FCBC    jmp         0042FCAB
 0042FCBE    cmp         dword ptr [ebp-14],0
>0042FCC2    je          0042FD34
 0042FCC4    mov         eax,dword ptr [ebp-4]
 0042FCC7    push        eax
 0042FCC8    mov         eax,dword ptr [ebp-1C]
 0042FCCB    push        eax
 0042FCCC    call        gdi32.SelectObject
 0042FCD1    mov         dword ptr [ebp-24],eax
 0042FCD4    mov         eax,dword ptr [ebp-14]
 0042FCD7    push        eax
 0042FCD8    mov         eax,dword ptr [ebp-20]
 0042FCDB    push        eax
 0042FCDC    call        gdi32.SelectObject
 0042FCE1    mov         dword ptr [ebp-28],eax
 0042FCE4    push        0CC0020
 0042FCE9    mov         eax,dword ptr [ebp-38]
 0042FCEC    push        eax
 0042FCED    mov         eax,dword ptr [ebp-3C]
 0042FCF0    push        eax
 0042FCF1    push        0
 0042FCF3    push        0
 0042FCF5    mov         eax,dword ptr [ebp-1C]
 0042FCF8    push        eax
 0042FCF9    mov         eax,dword ptr [ebp-8]
 0042FCFC    push        eax
 0042FCFD    mov         eax,dword ptr [ebp-0C]
 0042FD00    push        eax
 0042FD01    push        0
 0042FD03    push        0
 0042FD05    mov         eax,dword ptr [ebp-20]
 0042FD08    push        eax
 0042FD09    call        gdi32.StretchBlt
 0042FD0E    cmp         dword ptr [ebp-24],0
>0042FD12    je          0042FD21
 0042FD14    mov         eax,dword ptr [ebp-24]
 0042FD17    push        eax
 0042FD18    mov         eax,dword ptr [ebp-1C]
 0042FD1B    push        eax
 0042FD1C    call        gdi32.SelectObject
 0042FD21    cmp         dword ptr [ebp-28],0
>0042FD25    je          0042FD34
 0042FD27    mov         eax,dword ptr [ebp-28]
 0042FD2A    push        eax
 0042FD2B    mov         eax,dword ptr [ebp-20]
 0042FD2E    push        eax
 0042FD2F    call        gdi32.SelectObject
 0042FD34    xor         eax,eax
 0042FD36    pop         edx
 0042FD37    pop         ecx
 0042FD38    pop         ecx
 0042FD39    mov         dword ptr fs:[eax],edx
 0042FD3C    push        42FD5B
 0042FD41    mov         eax,dword ptr [ebp-1C]
 0042FD44    push        eax
 0042FD45    call        gdi32.DeleteDC
 0042FD4A    mov         eax,dword ptr [ebp-20]
 0042FD4D    push        eax
 0042FD4E    call        gdi32.DeleteDC
 0042FD53    ret
>0042FD54    jmp         @HandleFinally
>0042FD59    jmp         0042FD41
 0042FD5B    mov         eax,dword ptr [ebp-14]
 0042FD5E    pop         edi
 0042FD5F    pop         esi
 0042FD60    mov         esp,ebp
 0042FD62    pop         ebp
 0042FD63    ret
end;*}

//0042FD64
{*function sub_0042FD64(?:?):?;
begin
 0042FD64    push        ebp
 0042FD65    mov         ebp,esp
 0042FD67    add         esp,0FFFFFFF8
 0042FD6A    mov         word ptr [ebp-2],ax
 0042FD6E    mov         ax,word ptr [ebp-2]
 0042FD72    dec         ax
>0042FD75    je          0042FD83
 0042FD77    sub         ax,3
>0042FD7B    je          0042FD83
 0042FD7D    sub         ax,4
>0042FD81    jne         0042FD93
 0042FD83    mov         cx,word ptr [ebp-2]
 0042FD87    mov         eax,1
 0042FD8C    shl         eax,cl
 0042FD8E    mov         dword ptr [ebp-8],eax
>0042FD91    jmp         0042FD98
 0042FD93    xor         eax,eax
 0042FD95    mov         dword ptr [ebp-8],eax
 0042FD98    mov         eax,dword ptr [ebp-8]
 0042FD9B    pop         ecx
 0042FD9C    pop         ecx
 0042FD9D    pop         ebp
 0042FD9E    ret
end;*}

//0042FDA0
{*function sub_0042FDA0(?:?; ?:?; ?:?):?;
begin
 0042FDA0    push        ebp
 0042FDA1    mov         ebp,esp
 0042FDA3    add         esp,0FFFFFFF0
 0042FDA6    mov         dword ptr [ebp-0C],ecx
 0042FDA9    mov         dword ptr [ebp-8],edx
 0042FDAC    mov         dword ptr [ebp-4],eax
 0042FDAF    dec         dword ptr [ebp-0C]
 0042FDB2    mov         eax,dword ptr [ebp-4]
 0042FDB5    imul        dword ptr [ebp-8]
 0042FDB8    add         eax,dword ptr [ebp-0C]
 0042FDBB    mov         edx,dword ptr [ebp-0C]
 0042FDBE    not         edx
 0042FDC0    and         eax,edx
 0042FDC2    mov         dword ptr [ebp-10],eax
 0042FDC5    mov         eax,dword ptr [ebp-10]
 0042FDC8    test        eax,eax
>0042FDCA    jns         0042FDCF
 0042FDCC    add         eax,7
 0042FDCF    sar         eax,3
 0042FDD2    mov         dword ptr [ebp-10],eax
 0042FDD5    mov         eax,dword ptr [ebp-10]
 0042FDD8    mov         esp,ebp
 0042FDDA    pop         ebp
 0042FDDB    ret
end;*}

//0042FDDC
{*function sub_0042FDDC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0042FDDC    push        ebp
 0042FDDD    mov         ebp,esp
 0042FDDF    add         esp,0FFFFFFD8
 0042FDE2    mov         dword ptr [ebp-0C],ecx
 0042FDE5    mov         dword ptr [ebp-8],edx
 0042FDE8    mov         dword ptr [ebp-4],eax
 0042FDEB    mov         byte ptr [ebp-0D],1
 0042FDEF    mov         eax,[0056E624];^gvar_0056B7D8
 0042FDF4    cmp         dword ptr [eax],2
>0042FDF7    jne         0042FEB7
 0042FDFD    mov         eax,dword ptr [ebp+18]
 0042FE00    cmp         eax,dword ptr [ebp+2C]
>0042FE03    jne         0042FEB7
 0042FE09    mov         eax,dword ptr [ebp+14]
 0042FE0C    cmp         eax,dword ptr [ebp+28]
>0042FE0F    jne         0042FEB7
 0042FE15    push        1
 0042FE17    push        1
 0042FE19    mov         eax,dword ptr [ebp+24]
 0042FE1C    push        eax
 0042FE1D    call        gdi32.CreateCompatibleBitmap
 0042FE22    call        0042FBD4
 0042FE27    mov         dword ptr [ebp-18],eax
 0042FE2A    mov         eax,dword ptr [ebp-18]
 0042FE2D    push        eax
 0042FE2E    mov         eax,dword ptr [ebp+10]
 0042FE31    push        eax
 0042FE32    call        gdi32.SelectObject
 0042FE37    mov         dword ptr [ebp-18],eax
 0042FE3A    xor         eax,eax
 0042FE3C    push        ebp
 0042FE3D    push        42FEB0
 0042FE42    push        dword ptr fs:[eax]
 0042FE45    mov         dword ptr fs:[eax],esp
 0042FE48    mov         edx,0CC0020
 0042FE4D    mov         eax,0AA0029
 0042FE52    call        0040856C
 0042FE57    push        eax
 0042FE58    mov         eax,dword ptr [ebp+8]
 0042FE5B    push        eax
 0042FE5C    mov         eax,dword ptr [ebp+0C]
 0042FE5F    push        eax
 0042FE60    mov         eax,dword ptr [ebp-18]
 0042FE63    push        eax
 0042FE64    mov         eax,dword ptr [ebp+1C]
 0042FE67    push        eax
 0042FE68    mov         eax,dword ptr [ebp+20]
 0042FE6B    push        eax
 0042FE6C    mov         eax,dword ptr [ebp+24]
 0042FE6F    push        eax
 0042FE70    mov         eax,dword ptr [ebp+28]
 0042FE73    push        eax
 0042FE74    mov         eax,dword ptr [ebp+2C]
 0042FE77    push        eax
 0042FE78    mov         eax,dword ptr [ebp-0C]
 0042FE7B    push        eax
 0042FE7C    mov         eax,dword ptr [ebp-8]
 0042FE7F    push        eax
 0042FE80    mov         eax,dword ptr [ebp-4]
 0042FE83    push        eax
 0042FE84    call        gdi32.MaskBlt
 0042FE89    xor         eax,eax
 0042FE8B    pop         edx
 0042FE8C    pop         ecx
 0042FE8D    pop         ecx
 0042FE8E    mov         dword ptr fs:[eax],edx
 0042FE91    push        4300A0
 0042FE96    mov         eax,dword ptr [ebp-18]
 0042FE99    push        eax
 0042FE9A    mov         eax,dword ptr [ebp+10]
 0042FE9D    push        eax
 0042FE9E    call        gdi32.SelectObject
 0042FEA3    mov         dword ptr [ebp-18],eax
 0042FEA6    mov         eax,dword ptr [ebp-18]
 0042FEA9    push        eax
 0042FEAA    call        gdi32.DeleteObject
 0042FEAF    ret
>0042FEB0    jmp         @HandleFinally
>0042FEB5    jmp         0042FE96
 0042FEB7    xor         eax,eax
 0042FEB9    mov         dword ptr [ebp-28],eax
 0042FEBC    push        0
 0042FEBE    call        gdi32.CreateCompatibleDC
 0042FEC3    call        0042FBD4
 0042FEC8    mov         dword ptr [ebp-14],eax
 0042FECB    xor         eax,eax
 0042FECD    push        ebp
 0042FECE    push        430099
 0042FED3    push        dword ptr fs:[eax]
 0042FED6    mov         dword ptr fs:[eax],esp
 0042FED9    mov         eax,dword ptr [ebp+14]
 0042FEDC    push        eax
 0042FEDD    mov         eax,dword ptr [ebp+18]
 0042FEE0    push        eax
 0042FEE1    mov         eax,dword ptr [ebp+24]
 0042FEE4    push        eax
 0042FEE5    call        gdi32.CreateCompatibleBitmap
 0042FEEA    call        0042FBD4
 0042FEEF    mov         dword ptr [ebp-18],eax
 0042FEF2    mov         eax,dword ptr [ebp-18]
 0042FEF5    push        eax
 0042FEF6    mov         eax,dword ptr [ebp-14]
 0042FEF9    push        eax
 0042FEFA    call        gdi32.SelectObject
 0042FEFF    mov         dword ptr [ebp-1C],eax
 0042FF02    push        0
 0042FF04    mov         eax,[00571AB8];0x0 SystemPalette16:HPALETTE
 0042FF09    push        eax
 0042FF0A    mov         eax,dword ptr [ebp+24]
 0042FF0D    push        eax
 0042FF0E    call        gdi32.SelectPalette
 0042FF13    mov         dword ptr [ebp-28],eax
 0042FF16    push        0
 0042FF18    mov         eax,dword ptr [ebp-28]
 0042FF1B    push        eax
 0042FF1C    mov         eax,dword ptr [ebp+24]
 0042FF1F    push        eax
 0042FF20    call        gdi32.SelectPalette
 0042FF25    cmp         dword ptr [ebp-28],0
>0042FF29    je          0042FF3F
 0042FF2B    push        0FF
 0042FF2D    mov         eax,dword ptr [ebp-28]
 0042FF30    push        eax
 0042FF31    mov         eax,dword ptr [ebp-14]
 0042FF34    push        eax
 0042FF35    call        gdi32.SelectPalette
 0042FF3A    mov         dword ptr [ebp-28],eax
>0042FF3D    jmp         0042FF53
 0042FF3F    push        0FF
 0042FF41    mov         eax,[00571AB8];0x0 SystemPalette16:HPALETTE
 0042FF46    push        eax
 0042FF47    mov         eax,dword ptr [ebp-14]
 0042FF4A    push        eax
 0042FF4B    call        gdi32.SelectPalette
 0042FF50    mov         dword ptr [ebp-28],eax
 0042FF53    mov         eax,dword ptr [ebp-14]
 0042FF56    push        eax
 0042FF57    call        gdi32.RealizePalette
 0042FF5C    push        0CC0020
 0042FF61    mov         eax,dword ptr [ebp+14]
 0042FF64    push        eax
 0042FF65    mov         eax,dword ptr [ebp+18]
 0042FF68    push        eax
 0042FF69    mov         eax,dword ptr [ebp+8]
 0042FF6C    push        eax
 0042FF6D    mov         eax,dword ptr [ebp+0C]
 0042FF70    push        eax
 0042FF71    mov         eax,dword ptr [ebp+10]
 0042FF74    push        eax
 0042FF75    mov         eax,dword ptr [ebp+14]
 0042FF78    push        eax
 0042FF79    mov         eax,dword ptr [ebp+18]
 0042FF7C    push        eax
 0042FF7D    push        0
 0042FF7F    push        0
 0042FF81    mov         eax,dword ptr [ebp-14]
 0042FF84    push        eax
 0042FF85    call        gdi32.StretchBlt
 0042FF8A    push        440328
 0042FF8F    mov         eax,dword ptr [ebp+14]
 0042FF92    push        eax
 0042FF93    mov         eax,dword ptr [ebp+18]
 0042FF96    push        eax
 0042FF97    mov         eax,dword ptr [ebp+1C]
 0042FF9A    push        eax
 0042FF9B    mov         eax,dword ptr [ebp+20]
 0042FF9E    push        eax
 0042FF9F    mov         eax,dword ptr [ebp+24]
 0042FFA2    push        eax
 0042FFA3    mov         eax,dword ptr [ebp+14]
 0042FFA6    push        eax
 0042FFA7    mov         eax,dword ptr [ebp+18]
 0042FFAA    push        eax
 0042FFAB    push        0
 0042FFAD    push        0
 0042FFAF    mov         eax,dword ptr [ebp-14]
 0042FFB2    push        eax
 0042FFB3    call        gdi32.StretchBlt
 0042FFB8    push        0
 0042FFBA    mov         eax,dword ptr [ebp-4]
 0042FFBD    push        eax
 0042FFBE    call        gdi32.SetTextColor
 0042FFC3    mov         dword ptr [ebp-20],eax
 0042FFC6    push        0FFFFFF
 0042FFCB    mov         eax,dword ptr [ebp-4]
 0042FFCE    push        eax
 0042FFCF    call        gdi32.SetBkColor
 0042FFD4    mov         dword ptr [ebp-24],eax
 0042FFD7    push        8800C6
 0042FFDC    mov         eax,dword ptr [ebp+14]
 0042FFDF    push        eax
 0042FFE0    mov         eax,dword ptr [ebp+18]
 0042FFE3    push        eax
 0042FFE4    mov         eax,dword ptr [ebp+8]
 0042FFE7    push        eax
 0042FFE8    mov         eax,dword ptr [ebp+0C]
 0042FFEB    push        eax
 0042FFEC    mov         eax,dword ptr [ebp+10]
 0042FFEF    push        eax
 0042FFF0    mov         eax,dword ptr [ebp+28]
 0042FFF3    push        eax
 0042FFF4    mov         eax,dword ptr [ebp+2C]
 0042FFF7    push        eax
 0042FFF8    mov         eax,dword ptr [ebp-0C]
 0042FFFB    push        eax
 0042FFFC    mov         eax,dword ptr [ebp-8]
 0042FFFF    push        eax
 00430000    mov         eax,dword ptr [ebp-4]
 00430003    push        eax
 00430004    call        gdi32.StretchBlt
 00430009    push        660046;gvar_00660046
 0043000E    mov         eax,dword ptr [ebp+14]
 00430011    push        eax
 00430012    mov         eax,dword ptr [ebp+18]
 00430015    push        eax
 00430016    push        0
 00430018    push        0
 0043001A    mov         eax,dword ptr [ebp-14]
 0043001D    push        eax
 0043001E    mov         eax,dword ptr [ebp+28]
 00430021    push        eax
 00430022    mov         eax,dword ptr [ebp+2C]
 00430025    push        eax
 00430026    mov         eax,dword ptr [ebp-0C]
 00430029    push        eax
 0043002A    mov         eax,dword ptr [ebp-8]
 0043002D    push        eax
 0043002E    mov         eax,dword ptr [ebp-4]
 00430031    push        eax
 00430032    call        gdi32.StretchBlt
 00430037    mov         eax,dword ptr [ebp-20]
 0043003A    push        eax
 0043003B    mov         eax,dword ptr [ebp-4]
 0043003E    push        eax
 0043003F    call        gdi32.SetTextColor
 00430044    mov         eax,dword ptr [ebp-24]
 00430047    push        eax
 00430048    mov         eax,dword ptr [ebp-4]
 0043004B    push        eax
 0043004C    call        gdi32.SetBkColor
 00430051    cmp         dword ptr [ebp-1C],0
>00430055    je          00430064
 00430057    mov         eax,dword ptr [ebp-1C]
 0043005A    push        eax
 0043005B    mov         eax,dword ptr [ebp-14]
 0043005E    push        eax
 0043005F    call        gdi32.SelectObject
 00430064    mov         eax,dword ptr [ebp-18]
 00430067    push        eax
 00430068    call        gdi32.DeleteObject
 0043006D    xor         eax,eax
 0043006F    pop         edx
 00430070    pop         ecx
 00430071    pop         ecx
 00430072    mov         dword ptr fs:[eax],edx
 00430075    push        4300A0
 0043007A    cmp         dword ptr [ebp-28],0
>0043007E    je          0043008F
 00430080    push        0
 00430082    mov         eax,dword ptr [ebp-28]
 00430085    push        eax
 00430086    mov         eax,dword ptr [ebp-14]
 00430089    push        eax
 0043008A    call        gdi32.SelectPalette
 0043008F    mov         eax,dword ptr [ebp-14]
 00430092    push        eax
 00430093    call        gdi32.DeleteDC
 00430098    ret
>00430099    jmp         @HandleFinally
>0043009E    jmp         0043007A
 004300A0    mov         al,byte ptr [ebp-0D]
 004300A3    mov         esp,ebp
 004300A5    pop         ebp
 004300A6    ret         28
end;*}

//004300AC
{*procedure sub_004300AC(?:?);
begin
 004300AC    push        ebp
 004300AD    mov         ebp,esp
 004300AF    add         esp,0FFFFFFE8
 004300B2    mov         dword ptr [ebp-4],eax
 004300B5    mov         eax,dword ptr [ebp-4]
 004300B8    mov         dword ptr [ebp-0C],eax
 004300BB    mov         eax,dword ptr [ebp-0C]
 004300BE    mov         dword ptr [ebp-10],eax
 004300C1    mov         dword ptr [ebp-8],0FF
 004300C8    mov         eax,dword ptr [ebp-10]
 004300CB    mov         edx,dword ptr [ebp-8]
 004300CE    lea         eax,[eax+edx*4]
 004300D1    mov         dword ptr [ebp-14],eax
 004300D4    mov         eax,dword ptr [ebp-8]
 004300D7    lea         eax,[eax+eax*2]
 004300DA    mov         edx,dword ptr [ebp-0C]
 004300DD    lea         eax,[edx+eax]
 004300E0    mov         dword ptr [ebp-18],eax
 004300E3    mov         eax,dword ptr [ebp-18]
 004300E6    mov         al,byte ptr [eax+2]
 004300E9    mov         edx,dword ptr [ebp-14]
 004300EC    mov         byte ptr [edx+2],al
 004300EF    mov         eax,dword ptr [ebp-18]
 004300F2    mov         al,byte ptr [eax+1]
 004300F5    mov         edx,dword ptr [ebp-14]
 004300F8    mov         byte ptr [edx+1],al
 004300FB    mov         eax,dword ptr [ebp-18]
 004300FE    mov         al,byte ptr [eax]
 00430100    mov         edx,dword ptr [ebp-14]
 00430103    mov         byte ptr [edx],al
 00430105    mov         eax,dword ptr [ebp-14]
 00430108    mov         byte ptr [eax+3],0
 0043010C    dec         dword ptr [ebp-8]
 0043010F    cmp         dword ptr [ebp-8],0
>00430113    jne         004300C8
 00430115    mov         eax,dword ptr [ebp-10]
 00430118    mov         byte ptr [eax+3],0
 0043011C    mov         esp,ebp
 0043011E    pop         ebp
 0043011F    ret
end;*}

//00430120
{*procedure sub_00430120(?:?; ?:LongWord);
begin
 00430120    push        ebp
 00430121    mov         ebp,esp
 00430123    add         esp,0FFFFFFE0
 00430126    mov         dword ptr [ebp-8],edx
 00430129    mov         dword ptr [ebp-4],eax
 0043012C    mov         eax,dword ptr [ebp-4]
 0043012F    mov         dword ptr [ebp-10],eax
 00430132    mov         eax,dword ptr [ebp-10]
 00430135    mov         dword ptr [ebp-14],eax
 00430138    mov         eax,dword ptr [ebp-8]
 0043013B    mov         eax,dword ptr [eax]
 0043013D    dec         eax
 0043013E    test        eax,eax
>00430140    jle         00430191
 00430142    mov         dword ptr [ebp-18],eax
 00430145    mov         dword ptr [ebp-0C],1
 0043014C    mov         eax,dword ptr [ebp-14]
 0043014F    mov         edx,dword ptr [ebp-0C]
 00430152    lea         eax,[eax+edx*4]
 00430155    mov         dword ptr [ebp-1C],eax
 00430158    mov         eax,dword ptr [ebp-0C]
 0043015B    lea         eax,[eax+eax*2]
 0043015E    mov         edx,dword ptr [ebp-10]
 00430161    lea         eax,[edx+eax]
 00430164    mov         dword ptr [ebp-20],eax
 00430167    mov         eax,dword ptr [ebp-1C]
 0043016A    mov         al,byte ptr [eax+2]
 0043016D    mov         edx,dword ptr [ebp-20]
 00430170    mov         byte ptr [edx+2],al
 00430173    mov         eax,dword ptr [ebp-1C]
 00430176    mov         al,byte ptr [eax+1]
 00430179    mov         edx,dword ptr [ebp-20]
 0043017C    mov         byte ptr [edx+1],al
 0043017F    mov         eax,dword ptr [ebp-1C]
 00430182    mov         al,byte ptr [eax]
 00430184    mov         edx,dword ptr [ebp-20]
 00430187    mov         byte ptr [edx],al
 00430189    inc         dword ptr [ebp-0C]
 0043018C    dec         dword ptr [ebp-18]
>0043018F    jne         0043014C
 00430191    mov         eax,dword ptr [ebp-8]
 00430194    cmp         dword ptr [eax],100
>0043019A    jge         004301C7
 0043019C    mov         eax,dword ptr [ebp-8]
 0043019F    mov         edx,100
 004301A4    sub         edx,dword ptr [eax]
 004301A6    lea         edx,[edx+edx*2]
 004301A9    mov         eax,dword ptr [ebp-8]
 004301AC    mov         eax,dword ptr [eax]
 004301AE    lea         eax,[eax+eax*2]
 004301B1    mov         ecx,dword ptr [ebp-10]
 004301B4    lea         eax,[ecx+eax]
 004301B7    xor         ecx,ecx
 004301B9    call        @FillChar
 004301BE    mov         eax,dword ptr [ebp-8]
 004301C1    mov         dword ptr [eax],100
 004301C7    mov         esp,ebp
 004301C9    pop         ebp
 004301CA    ret
end;*}

//004301CC
procedure ByteSwapColors(var Colors:void ; Count:Integer);
begin
{*
 004301CC    push        ebp
 004301CD    mov         ebp,esp
 004301CF    add         esp,0FFFFFFD4
 004301D2    mov         dword ptr [ebp-8],edx
 004301D5    mov         dword ptr [ebp-4],eax
 004301D8    lea         eax,[ebp-2C]
 004301DB    push        eax
 004301DC    call        kernel32.GetSystemInfo
 004301E1    mov         edx,dword ptr [ebp-4]
 004301E4    mov         ecx,dword ptr [ebp-8]
 004301E7    dec         ecx
>004301E8    js          0043021D
 004301EA    lea         eax,[ebp-2C]
 004301ED    cmp         word ptr [eax+20],3
>004301F2    je          00430204
 004301F4    mov         eax,dword ptr [edx+ecx*4]
 004301F7    bswap       eax
 004301F9    shr         eax,8
 004301FC    mov         dword ptr [edx+ecx*4],eax
 004301FF    dec         ecx
>00430200    jns         004301F4
>00430202    jmp         0043021D
 00430204    push        ebx
 00430205    xor         ebx,ebx
 00430207    mov         eax,dword ptr [edx+ecx*4]
 0043020A    mov         bh,al
 0043020C    mov         bl,ah
 0043020E    shr         eax,10
 00430211    shl         ebx,8
 00430214    mov         bl,al
 00430216    mov         dword ptr [edx+ecx*4],ebx
 00430219    dec         ecx
>0043021A    jns         00430205
 0043021C    pop         ebx
 0043021D    mov         esp,ebp
 0043021F    pop         ebp
 00430220    ret
*}
end;

//00430224
{*function sub_00430224(?:?; ?:?):?;
begin
 00430224    push        ebp
 00430225    mov         ebp,esp
 00430227    add         esp,0FFFFFBE8
 0043022D    mov         dword ptr [ebp-14],edx
 00430230    mov         dword ptr [ebp-4],eax
 00430233    mov         word ptr [ebp-418],300
 0043023C    mov         word ptr [ebp-416],10
 00430245    lea         edx,[ebp-414]
 0043024B    mov         eax,dword ptr [ebp-4]
 0043024E    mov         ecx,40
 00430253    call        Move
 00430258    push        0
 0043025A    call        user32.GetDC
 0043025F    mov         dword ptr [ebp-0C],eax
 00430262    xor         eax,eax
 00430264    push        ebp
 00430265    push        430332
 0043026A    push        dword ptr fs:[eax]
 0043026D    mov         dword ptr fs:[eax],esp
 00430270    push        68
 00430272    mov         eax,dword ptr [ebp-0C]
 00430275    push        eax
 00430276    call        gdi32.GetDeviceCaps
 0043027B    mov         dword ptr [ebp-10],eax
 0043027E    cmp         dword ptr [ebp-10],10
>00430282    jl          00430319
 00430288    lea         eax,[ebp-414]
 0043028E    push        eax
 0043028F    push        8
 00430291    push        0
 00430293    mov         eax,dword ptr [ebp-0C]
 00430296    push        eax
 00430297    call        gdi32.GetSystemPaletteEntries
 0043029C    cmp         dword ptr [ebp-3F8],0C0C0C0
>004302A6    jne         004302F8
 004302A8    lea         eax,[ebp-3F8]
 004302AE    push        eax
 004302AF    push        1
 004302B1    mov         eax,dword ptr [ebp-10]
 004302B4    sub         eax,8
 004302B7    push        eax
 004302B8    mov         eax,dword ptr [ebp-0C]
 004302BB    push        eax
 004302BC    call        gdi32.GetSystemPaletteEntries
 004302C1    movzx       eax,word ptr [ebp-416]
 004302C8    lea         eax,[ebp+eax*4-430]
 004302CF    push        eax
 004302D0    push        7
 004302D2    mov         eax,dword ptr [ebp-10]
 004302D5    sub         eax,7
 004302D8    push        eax
 004302D9    mov         eax,dword ptr [ebp-0C]
 004302DC    push        eax
 004302DD    call        gdi32.GetSystemPaletteEntries
 004302E2    lea         eax,[ebp-3F4]
 004302E8    push        eax
 004302E9    push        1
 004302EB    push        7
 004302ED    mov         eax,dword ptr [ebp-0C]
 004302F0    push        eax
 004302F1    call        gdi32.GetSystemPaletteEntries
>004302F6    jmp         00430319
 004302F8    movzx       eax,word ptr [ebp-416]
 004302FF    lea         eax,[ebp+eax*4-434]
 00430306    push        eax
 00430307    push        8
 00430309    mov         eax,dword ptr [ebp-10]
 0043030C    sub         eax,8
 0043030F    push        eax
 00430310    mov         eax,dword ptr [ebp-0C]
 00430313    push        eax
 00430314    call        gdi32.GetSystemPaletteEntries
 00430319    xor         eax,eax
 0043031B    pop         edx
 0043031C    pop         ecx
 0043031D    pop         ecx
 0043031E    mov         dword ptr fs:[eax],edx
 00430321    push        430339
 00430326    mov         eax,dword ptr [ebp-0C]
 00430329    push        eax
 0043032A    push        0
 0043032C    call        user32.ReleaseDC
 00430331    ret
>00430332    jmp         @HandleFinally
>00430337    jmp         00430326
 00430339    lea         eax,[ebp-418]
 0043033F    push        eax
 00430340    call        gdi32.CreatePalette
 00430345    mov         dword ptr [ebp-8],eax
 00430348    mov         eax,dword ptr [ebp-8]
 0043034B    mov         esp,ebp
 0043034D    pop         ebp
 0043034E    ret
end;*}

//00430350
{*function sub_00430350(?:?):?;
begin
 00430350    push        ebp
 00430351    mov         ebp,esp
 00430353    add         esp,0FFFFFFF0
 00430356    mov         dword ptr [ebp-4],eax
 00430359    mov         byte ptr [ebp-5],0
 0043035D    cmp         dword ptr ds:[571AB8],0;SystemPalette16:HPALETTE
>00430364    je          004303EE
 0043036A    push        0
 0043036C    call        user32.GetDC
 00430371    mov         dword ptr [ebp-0C],eax
 00430374    xor         eax,eax
 00430376    push        ebp
 00430377    push        4303E7
 0043037C    push        dword ptr fs:[eax]
 0043037F    mov         dword ptr fs:[eax],esp
 00430382    push        68
 00430384    mov         eax,dword ptr [ebp-0C]
 00430387    push        eax
 00430388    call        gdi32.GetDeviceCaps
 0043038D    mov         dword ptr [ebp-10],eax
 00430390    cmp         dword ptr [ebp-10],10
>00430394    jl          004303CE
 00430396    mov         eax,dword ptr [ebp-4]
 00430399    add         eax,4
 0043039C    push        eax
 0043039D    push        8
 0043039F    push        0
 004303A1    mov         eax,[00571AB8];0x0 SystemPalette16:HPALETTE
 004303A6    push        eax
 004303A7    call        gdi32.GetPaletteEntries
 004303AC    mov         eax,dword ptr [ebp-4]
 004303AF    movzx       eax,word ptr [eax+2]
 004303B3    mov         edx,dword ptr [ebp-4]
 004303B6    lea         eax,[edx+eax*4-1C]
 004303BA    push        eax
 004303BB    push        8
 004303BD    push        8
 004303BF    mov         eax,[00571AB8];0x0 SystemPalette16:HPALETTE
 004303C4    push        eax
 004303C5    call        gdi32.GetPaletteEntries
 004303CA    mov         byte ptr [ebp-5],1
 004303CE    xor         eax,eax
 004303D0    pop         edx
 004303D1    pop         ecx
 004303D2    pop         ecx
 004303D3    mov         dword ptr fs:[eax],edx
 004303D6    push        4303EE
 004303DB    mov         eax,dword ptr [ebp-0C]
 004303DE    push        eax
 004303DF    push        0
 004303E1    call        user32.ReleaseDC
 004303E6    ret
>004303E7    jmp         @HandleFinally
>004303EC    jmp         004303DB
 004303EE    mov         al,byte ptr [ebp-5]
 004303F1    mov         esp,ebp
 004303F3    pop         ebp
 004303F4    ret
end;*}

//004303F8
{*function sub_004303F8(?:HBITMAP; ?:?; ?:?):?;
begin
 004303F8    push        ebp
 004303F9    mov         ebp,esp
 004303FB    add         esp,0FFFFFBE4
 00430401    mov         dword ptr [ebp-0C],ecx
 00430404    mov         dword ptr [ebp-8],edx
 00430407    mov         dword ptr [ebp-4],eax
 0043040A    xor         eax,eax
 0043040C    mov         dword ptr [ebp-10],eax
 0043040F    mov         word ptr [ebp-41C],300
 00430418    cmp         dword ptr [ebp-4],0
>0043041C    je          0043046E
 0043041E    push        0
 00430420    call        gdi32.CreateCompatibleDC
 00430425    mov         dword ptr [ebp-14],eax
 00430428    mov         eax,dword ptr [ebp-4]
 0043042B    push        eax
 0043042C    mov         eax,dword ptr [ebp-14]
 0043042F    push        eax
 00430430    call        gdi32.SelectObject
 00430435    mov         dword ptr [ebp-18],eax
 00430438    lea         eax,[ebp-418]
 0043043E    push        eax
 0043043F    push        100
 00430444    push        0
 00430446    mov         eax,dword ptr [ebp-14]
 00430449    push        eax
 0043044A    call        gdi32.GetDIBColorTable
 0043044F    mov         word ptr [ebp-41A],ax
 00430456    mov         eax,dword ptr [ebp-18]
 00430459    push        eax
 0043045A    mov         eax,dword ptr [ebp-14]
 0043045D    push        eax
 0043045E    call        gdi32.SelectObject
 00430463    mov         eax,dword ptr [ebp-14]
 00430466    push        eax
 00430467    call        gdi32.DeleteDC
>0043046C    jmp         0043048D
 0043046E    mov         ax,word ptr [ebp-0C]
 00430472    mov         word ptr [ebp-41A],ax
 00430479    mov         ecx,dword ptr [ebp-0C]
 0043047C    shl         ecx,2
 0043047F    lea         edx,[ebp-418]
 00430485    mov         eax,dword ptr [ebp-8]
 00430488    call        Move
 0043048D    cmp         word ptr [ebp-41A],0
>00430495    je          004304D1
 00430497    cmp         word ptr [ebp-41A],10
>0043049F    jne         004304B0
 004304A1    lea         eax,[ebp-41C]
 004304A7    call        00430350
 004304AC    test        al,al
>004304AE    jne         004304C2
 004304B0    movzx       edx,word ptr [ebp-41A]
 004304B7    lea         eax,[ebp-418]
 004304BD    call        ByteSwapColors
 004304C2    lea         eax,[ebp-41C]
 004304C8    push        eax
 004304C9    call        gdi32.CreatePalette
 004304CE    mov         dword ptr [ebp-10],eax
 004304D1    mov         eax,dword ptr [ebp-10]
 004304D4    mov         esp,ebp
 004304D6    pop         ebp
 004304D7    ret
end;*}

//004304D8
{*function sub_004304D8(?:HPALETTE; ?:?; ?:?):?;
begin
 004304D8    push        ebp
 004304D9    mov         ebp,esp
 004304DB    add         esp,0FFFFFFF0
 004304DE    mov         dword ptr [ebp-0C],ecx
 004304E1    mov         dword ptr [ebp-8],edx
 004304E4    mov         dword ptr [ebp-4],eax
 004304E7    xor         eax,eax
 004304E9    mov         dword ptr [ebp-10],eax
 004304EC    cmp         dword ptr [ebp-4],0
>004304F0    je          00430539
 004304F2    lea         eax,[ebp-10]
 004304F5    push        eax
 004304F6    push        4
 004304F8    mov         eax,dword ptr [ebp-4]
 004304FB    push        eax
 004304FC    call        gdi32.GetObjectA
 00430501    test        eax,eax
>00430503    je          00430539
 00430505    cmp         dword ptr [ebp-10],0
>00430509    je          00430539
 0043050B    mov         eax,dword ptr [ebp-0C]
 0043050E    inc         eax
 0043050F    cmp         eax,dword ptr [ebp-10]
>00430512    jge         0043051B
 00430514    mov         eax,dword ptr [ebp-0C]
 00430517    inc         eax
 00430518    mov         dword ptr [ebp-10],eax
 0043051B    mov         eax,dword ptr [ebp-8]
 0043051E    push        eax
 0043051F    mov         eax,dword ptr [ebp-10]
 00430522    push        eax
 00430523    push        0
 00430525    mov         eax,dword ptr [ebp-4]
 00430528    push        eax
 00430529    call        gdi32.GetPaletteEntries
 0043052E    mov         eax,dword ptr [ebp-8]
 00430531    mov         edx,dword ptr [ebp-10]
 00430534    call        ByteSwapColors
 00430539    mov         eax,dword ptr [ebp-10]
 0043053C    mov         esp,ebp
 0043053E    pop         ebp
 0043053F    ret
end;*}

//00430540
{*procedure sub_00430540(?:?; ?:?; ?:?; ?:?);
begin
 00430540    push        ebp
 00430541    mov         ebp,esp
 00430543    add         esp,0FFFFFFE0
 00430546    mov         dword ptr [ebp-0C],ecx
 00430549    mov         dword ptr [ebp-8],edx
 0043054C    mov         dword ptr [ebp-4],eax
 0043054F    mov         eax,dword ptr [ebp-4]
 00430552    shr         dword ptr [eax+8],1
 00430555    mov         edx,dword ptr [ebp-4]
 00430558    movzx       edx,word ptr [edx+0E]
 0043055C    mov         eax,dword ptr [ebp-4]
 0043055F    mov         eax,dword ptr [eax+4]
 00430562    mov         ecx,20
 00430567    call        0042FDA0
 0043056C    mov         edx,dword ptr [ebp-4]
 0043056F    imul        dword ptr [edx+8]
 00430572    mov         edx,dword ptr [ebp-4]
 00430575    mov         dword ptr [edx+14],eax
 00430578    mov         eax,dword ptr [ebp-4]
 0043057B    mov         ax,word ptr [eax+0E]
 0043057F    call        0042FD64
 00430584    mov         dword ptr [ebp-14],eax
 00430587    push        0
 00430589    call        user32.GetDC
 0043058E    mov         dword ptr [ebp-18],eax
 00430591    cmp         dword ptr [ebp-18],0
>00430595    jne         0043059C
 00430597    call        OutOfResources
 0043059C    xor         eax,eax
 0043059E    push        ebp
 0043059F    push        4306F5
 004305A4    push        dword ptr fs:[eax]
 004305A7    mov         dword ptr fs:[eax],esp
 004305AA    mov         eax,dword ptr [ebp-4]
 004305AD    add         eax,28
 004305B0    mov         edx,dword ptr [ebp-14]
 004305B3    shl         edx,2
 004305B6    add         eax,edx
 004305B8    mov         dword ptr [ebp-1C],eax
 004305BB    push        0
 004305BD    mov         eax,dword ptr [ebp-4]
 004305C0    push        eax
 004305C1    mov         eax,dword ptr [ebp-1C]
 004305C4    push        eax
 004305C5    push        4
 004305C7    mov         eax,dword ptr [ebp-4]
 004305CA    push        eax
 004305CB    mov         eax,dword ptr [ebp-18]
 004305CE    push        eax
 004305CF    call        gdi32.CreateDIBitmap
 004305D4    call        0042FBD4
 004305D9    mov         dword ptr [ebp-10],eax
 004305DC    xor         eax,eax
 004305DE    push        ebp
 004305DF    push        430613
 004305E4    push        dword ptr fs:[eax]
 004305E7    mov         dword ptr fs:[eax],esp
 004305EA    mov         edx,dword ptr [ebp+8]
 004305ED    xor         ecx,ecx
 004305EF    mov         eax,dword ptr [ebp-10]
 004305F2    call        0042FBF8
 004305F7    mov         edx,dword ptr [ebp-8]
 004305FA    mov         dword ptr [edx],eax
 004305FC    xor         eax,eax
 004305FE    pop         edx
 004305FF    pop         ecx
 00430600    pop         ecx
 00430601    mov         dword ptr fs:[eax],edx
 00430604    push        43061A
 00430609    mov         eax,dword ptr [ebp-10]
 0043060C    push        eax
 0043060D    call        gdi32.DeleteObject
 00430612    ret
>00430613    jmp         @HandleFinally
>00430618    jmp         00430609
 0043061A    mov         eax,dword ptr [ebp-4]
 0043061D    mov         eax,dword ptr [eax+14]
 00430620    add         dword ptr [ebp-1C],eax
 00430623    mov         eax,dword ptr [ebp-4]
 00430626    mov         word ptr [eax+0E],1
 0043062C    mov         edx,dword ptr [ebp-4]
 0043062F    movzx       edx,word ptr [edx+0E]
 00430633    mov         eax,dword ptr [ebp-4]
 00430636    mov         eax,dword ptr [eax+4]
 00430639    mov         ecx,20
 0043063E    call        0042FDA0
 00430643    mov         edx,dword ptr [ebp-4]
 00430646    imul        dword ptr [edx+8]
 00430649    mov         edx,dword ptr [ebp-4]
 0043064C    mov         dword ptr [edx+14],eax
 0043064F    mov         eax,dword ptr [ebp-4]
 00430652    mov         dword ptr [eax+20],2
 00430659    mov         eax,dword ptr [ebp-4]
 0043065C    mov         dword ptr [eax+24],2
 00430663    mov         eax,dword ptr [ebp-4]
 00430666    add         eax,28
 00430669    mov         dword ptr [ebp-20],eax
 0043066C    mov         eax,dword ptr [ebp-20]
 0043066F    xor         edx,edx
 00430671    mov         dword ptr [eax],edx
 00430673    mov         eax,dword ptr [ebp-20]
 00430676    mov         dword ptr [eax+4],0FFFFFF
 0043067D    push        0
 0043067F    mov         eax,dword ptr [ebp-4]
 00430682    push        eax
 00430683    mov         eax,dword ptr [ebp-1C]
 00430686    push        eax
 00430687    push        4
 00430689    mov         eax,dword ptr [ebp-4]
 0043068C    push        eax
 0043068D    mov         eax,dword ptr [ebp-18]
 00430690    push        eax
 00430691    call        gdi32.CreateDIBitmap
 00430696    call        0042FBD4
 0043069B    mov         dword ptr [ebp-10],eax
 0043069E    xor         eax,eax
 004306A0    push        ebp
 004306A1    push        4306D5
 004306A6    push        dword ptr fs:[eax]
 004306A9    mov         dword ptr fs:[eax],esp
 004306AC    mov         edx,dword ptr [ebp+8]
 004306AF    mov         cl,1
 004306B1    mov         eax,dword ptr [ebp-10]
 004306B4    call        0042FBF8
 004306B9    mov         edx,dword ptr [ebp-0C]
 004306BC    mov         dword ptr [edx],eax
 004306BE    xor         eax,eax
 004306C0    pop         edx
 004306C1    pop         ecx
 004306C2    pop         ecx
 004306C3    mov         dword ptr fs:[eax],edx
 004306C6    push        4306DC
 004306CB    mov         eax,dword ptr [ebp-10]
 004306CE    push        eax
 004306CF    call        gdi32.DeleteObject
 004306D4    ret
>004306D5    jmp         @HandleFinally
>004306DA    jmp         004306CB
 004306DC    xor         eax,eax
 004306DE    pop         edx
 004306DF    pop         ecx
 004306E0    pop         ecx
 004306E1    mov         dword ptr fs:[eax],edx
 004306E4    push        4306FC
 004306E9    mov         eax,dword ptr [ebp-18]
 004306EC    push        eax
 004306ED    push        0
 004306EF    call        user32.ReleaseDC
 004306F4    ret
>004306F5    jmp         @HandleFinally
>004306FA    jmp         004306E9
 004306FC    mov         esp,ebp
 004306FE    pop         ebp
 004306FF    ret         4
end;*}

//00430704
{*function sub_00430704(?:?):?;
begin
 00430704    push        ebp
 00430705    mov         ebp,esp
 00430707    add         esp,0FFFFFFF8
 0043070A    mov         dword ptr [ebp-4],eax
 0043070D    cmp         dword ptr [ebp-4],0
>00430711    jne         0043071C
 00430713    mov         dword ptr [ebp-8],7FFFFFFF
>0043071A    jmp         00430722
 0043071C    mov         eax,dword ptr [ebp-4]
 0043071F    mov         dword ptr [ebp-8],eax
 00430722    mov         eax,dword ptr [ebp-8]
 00430725    pop         ecx
 00430726    pop         ecx
 00430727    pop         ebp
 00430728    ret
end;*}

//0043072C
{*function sub_0043072C(?:Integer; ?:Integer; ?:?):?;
begin
 0043072C    push        ebp
 0043072D    mov         ebp,esp
 0043072F    add         esp,0FFFFFFE4
 00430732    mov         dword ptr [ebp-8],edx
 00430735    mov         dword ptr [ebp-4],eax
 00430738    mov         eax,dword ptr [ebp-8]
 0043073B    movzx       eax,byte ptr [eax]
 0043073E    mov         edx,dword ptr [ebp+8]
 00430741    mov         edx,dword ptr [edx+8]
 00430744    sub         eax,dword ptr [edx]
 00430746    mov         dword ptr [ebp-10],eax
 00430749    mov         eax,dword ptr [ebp-8]
 0043074C    movzx       eax,byte ptr [eax+1]
 00430750    mov         edx,dword ptr [ebp+8]
 00430753    mov         edx,dword ptr [edx+8]
 00430756    sub         eax,dword ptr [edx+4]
 00430759    mov         dword ptr [ebp-14],eax
 0043075C    mov         eax,dword ptr [ebp-4]
 0043075F    movzx       eax,byte ptr [eax]
 00430762    mov         edx,dword ptr [ebp+8]
 00430765    mov         edx,dword ptr [edx+8]
 00430768    sub         eax,dword ptr [edx]
 0043076A    mov         dword ptr [ebp-18],eax
 0043076D    mov         eax,dword ptr [ebp-4]
 00430770    movzx       eax,byte ptr [eax+1]
 00430774    mov         edx,dword ptr [ebp+8]
 00430777    mov         edx,dword ptr [edx+8]
 0043077A    sub         eax,dword ptr [edx+4]
 0043077D    mov         dword ptr [ebp-1C],eax
 00430780    mov         eax,dword ptr [ebp-10]
 00430783    cdq
 00430784    xor         eax,edx
 00430786    sub         eax,edx
 00430788    mov         ecx,eax
 0043078A    mov         eax,dword ptr [ebp-18]
 0043078D    cdq
 0043078E    xor         eax,edx
 00430790    sub         eax,edx
 00430792    cmp         ecx,eax
>00430794    jg          004307C8
 00430796    cmp         dword ptr [ebp-10],0
>0043079A    jle         004307A4
 0043079C    mov         eax,dword ptr [ebp-10]
 0043079F    cmp         eax,dword ptr [ebp-18]
>004307A2    jg          004307C8
 004307A4    mov         eax,dword ptr [ebp-14]
 004307A7    cdq
 004307A8    xor         eax,edx
 004307AA    sub         eax,edx
 004307AC    mov         ecx,eax
 004307AE    mov         eax,dword ptr [ebp-1C]
 004307B1    cdq
 004307B2    xor         eax,edx
 004307B4    sub         eax,edx
 004307B6    cmp         ecx,eax
>004307B8    jg          004307C8
 004307BA    cmp         dword ptr [ebp-14],0
>004307BE    jle         004307CC
 004307C0    mov         eax,dword ptr [ebp-14]
 004307C3    cmp         eax,dword ptr [ebp-1C]
>004307C6    jle         004307CC
 004307C8    xor         eax,eax
>004307CA    jmp         004307CE
 004307CC    mov         al,1
 004307CE    mov         byte ptr [ebp-9],al
 004307D1    mov         al,byte ptr [ebp-9]
 004307D4    mov         esp,ebp
 004307D6    pop         ebp
 004307D7    ret
end;*}

//004307D8
{*procedure sub_004307D8(?:TCustomMemoryStream; ?:HICON; ?:?; ?:?; ?:?; ?:?);
begin
 004307D8    push        ebp
 004307D9    mov         ebp,esp
 004307DB    add         esp,0FFFFFF74
 004307E1    push        ebx
 004307E2    mov         dword ptr [ebp-0C],ecx
 004307E5    mov         dword ptr [ebp-8],edx
 004307E8    mov         dword ptr [ebp-4],eax
 004307EB    mov         eax,dword ptr [ebp-0C]
 004307EE    shl         eax,4
 004307F1    mov         dword ptr [ebp-14],eax
 004307F4    mov         eax,dword ptr [ebp-14]
 004307F7    call        0040BC0C
 004307FC    mov         dword ptr [ebp-10],eax
 004307FF    xor         eax,eax
 00430801    push        ebp
 00430802    push        430B14
 00430807    push        dword ptr fs:[eax]
 0043080A    mov         dword ptr fs:[eax],esp
 0043080D    mov         edx,dword ptr [ebp-10]
 00430810    mov         ecx,dword ptr [ebp-14]
 00430813    mov         eax,dword ptr [ebp-4]
 00430816    mov         ebx,dword ptr [eax]
 00430818    call        dword ptr [ebx+0C]
 0043081B    mov         eax,dword ptr [ebp+0C]
 0043081E    mov         eax,dword ptr [eax]
 00430820    mov         edx,dword ptr [ebp+0C]
 00430823    or          eax,dword ptr [edx+4]
>00430826    jne         00430843
 00430828    push        0B
 0043082A    call        user32.GetSystemMetrics
 0043082F    mov         edx,dword ptr [ebp+8]
 00430832    mov         dword ptr [edx],eax
 00430834    push        0C
 00430836    call        user32.GetSystemMetrics
 0043083B    mov         edx,dword ptr [ebp+8]
 0043083E    mov         dword ptr [edx+4],eax
>00430841    jmp         00430853
 00430843    mov         eax,dword ptr [ebp+8]
 00430846    mov         edx,dword ptr [ebp+0C]
 00430849    mov         ecx,dword ptr [edx]
 0043084B    mov         dword ptr [eax],ecx
 0043084D    mov         ecx,dword ptr [edx+4]
 00430850    mov         dword ptr [eax+4],ecx
 00430853    push        0
 00430855    call        user32.GetDC
 0043085A    mov         dword ptr [ebp-34],eax
 0043085D    cmp         dword ptr [ebp-34],0
>00430861    jne         00430868
 00430863    call        OutOfResources
 00430868    xor         eax,eax
 0043086A    push        ebp
 0043086B    push        4308CD
 00430870    push        dword ptr fs:[eax]
 00430873    mov         dword ptr fs:[eax],esp
 00430876    push        0E
 00430878    mov         eax,dword ptr [ebp-34]
 0043087B    push        eax
 0043087C    call        gdi32.GetDeviceCaps
 00430881    mov         ebx,eax
 00430883    push        0C
 00430885    mov         eax,dword ptr [ebp-34]
 00430888    push        eax
 00430889    call        gdi32.GetDeviceCaps
 0043088E    imul        bx,ax
 00430892    mov         word ptr [ebp-1A],bx
 00430896    cmp         word ptr [ebp-1A],8
>0043089B    jbe         004308A6
 0043089D    mov         dword ptr [ebp-20],7FFFFFFF
>004308A4    jmp         004308B4
 004308A6    mov         cx,word ptr [ebp-1A]
 004308AA    mov         eax,1
 004308AF    shl         eax,cl
 004308B1    mov         dword ptr [ebp-20],eax
 004308B4    xor         eax,eax
 004308B6    pop         edx
 004308B7    pop         ecx
 004308B8    pop         ecx
 004308B9    mov         dword ptr fs:[eax],edx
 004308BC    push        4308D4
 004308C1    mov         eax,dword ptr [ebp-34]
 004308C4    push        eax
 004308C5    push        0
 004308C7    call        user32.ReleaseDC
 004308CC    ret
>004308CD    jmp         @HandleFinally
>004308D2    jmp         004308C1
 004308D4    xor         eax,eax
 004308D6    mov         dword ptr [ebp-30],eax
 004308D9    push        ebp
 004308DA    mov         eax,dword ptr [ebp-10]
 004308DD    movzx       eax,word ptr [eax+2]
 004308E1    call        00430704
 004308E6    pop         ecx
 004308E7    mov         dword ptr [ebp-24],eax
 004308EA    mov         eax,dword ptr [ebp-0C]
 004308ED    dec         eax
 004308EE    test        eax,eax
>004308F0    jle         00430958
 004308F2    mov         dword ptr [ebp-58],eax
 004308F5    mov         dword ptr [ebp-2C],1
 004308FC    push        ebp
 004308FD    mov         eax,dword ptr [ebp-2C]
 00430900    add         eax,eax
 00430902    mov         edx,dword ptr [ebp-10]
 00430905    movzx       eax,word ptr [edx+eax*8+2]
 0043090A    call        00430704
 0043090F    pop         ecx
 00430910    mov         dword ptr [ebp-28],eax
 00430913    mov         eax,dword ptr [ebp-28]
 00430916    cmp         eax,dword ptr [ebp-20]
>00430919    jg          00430950
 0043091B    mov         eax,dword ptr [ebp-28]
 0043091E    cmp         eax,dword ptr [ebp-24]
>00430921    jl          00430950
 00430923    push        ebp
 00430924    mov         eax,dword ptr [ebp-2C]
 00430927    add         eax,eax
 00430929    mov         edx,dword ptr [ebp-10]
 0043092C    lea         edx,[edx+eax*8]
 0043092F    mov         eax,dword ptr [ebp-30]
 00430932    add         eax,eax
 00430934    mov         ecx,dword ptr [ebp-10]
 00430937    lea         eax,[ecx+eax*8]
 0043093A    call        0043072C
 0043093F    pop         ecx
 00430940    test        al,al
>00430942    je          00430950
 00430944    mov         eax,dword ptr [ebp-2C]
 00430947    mov         dword ptr [ebp-30],eax
 0043094A    mov         eax,dword ptr [ebp-28]
 0043094D    mov         dword ptr [ebp-24],eax
 00430950    inc         dword ptr [ebp-2C]
 00430953    dec         dword ptr [ebp-58]
>00430956    jne         004308FC
 00430958    mov         eax,dword ptr [ebp-30]
 0043095B    add         eax,eax
 0043095D    mov         edx,dword ptr [ebp-10]
 00430960    lea         eax,[edx+eax*8]
 00430963    mov         dword ptr [ebp-5C],eax
 00430966    mov         eax,dword ptr [ebp-5C]
 00430969    movzx       eax,byte ptr [eax]
 0043096C    mov         edx,dword ptr [ebp+8]
 0043096F    mov         dword ptr [edx],eax
 00430971    mov         eax,dword ptr [ebp-5C]
 00430974    movzx       eax,byte ptr [eax+1]
 00430978    mov         edx,dword ptr [ebp+8]
 0043097B    mov         dword ptr [edx+4],eax
 0043097E    mov         eax,dword ptr [ebp-5C]
 00430981    mov         eax,dword ptr [eax+8]
 00430984    call        0040BC0C
 00430989    mov         dword ptr [ebp-38],eax
 0043098C    xor         eax,eax
 0043098E    push        ebp
 0043098F    push        430AF4
 00430994    push        dword ptr fs:[eax]
 00430997    mov         dword ptr fs:[eax],esp
 0043099A    mov         eax,dword ptr [ebp-5C]
 0043099D    mov         edx,dword ptr [eax+0C]
 004309A0    mov         eax,dword ptr [ebp-14]
 004309A3    add         eax,dword ptr [ebp+10]
 004309A6    sub         edx,eax
 004309A8    mov         cx,1
 004309AC    mov         eax,dword ptr [ebp-4]
 004309AF    mov         ebx,dword ptr [eax]
 004309B1    call        dword ptr [ebx+14]
 004309B4    mov         eax,dword ptr [ebp-5C]
 004309B7    mov         ecx,dword ptr [eax+8]
 004309BA    mov         edx,dword ptr [ebp-38]
 004309BD    mov         eax,dword ptr [ebp-4]
 004309C0    mov         ebx,dword ptr [eax]
 004309C2    call        dword ptr [ebx+0C]
 004309C5    mov         eax,dword ptr [ebp+8]
 004309C8    push        eax
 004309C9    lea         ecx,[ebp-44]
 004309CC    lea         edx,[ebp-40]
 004309CF    mov         eax,dword ptr [ebp-38]
 004309D2    call        00430540
 004309D7    lea         eax,[ebp-8C]
 004309DD    push        eax
 004309DE    push        18
 004309E0    mov         eax,dword ptr [ebp-44]
 004309E3    push        eax
 004309E4    call        gdi32.GetObjectA
 004309E9    lea         eax,[ebp-74]
 004309EC    push        eax
 004309ED    push        18
 004309EF    mov         eax,dword ptr [ebp-40]
 004309F2    push        eax
 004309F3    call        gdi32.GetObjectA
 004309F8    mov         eax,dword ptr [ebp-80]
 004309FB    imul        dword ptr [ebp-84]
 00430A01    movzx       edx,word ptr [ebp-7C]
 00430A05    imul        edx
 00430A07    mov         dword ptr [ebp-54],eax
 00430A0A    mov         eax,dword ptr [ebp-68]
 00430A0D    imul        dword ptr [ebp-6C]
 00430A10    movzx       edx,word ptr [ebp-64]
 00430A14    imul        edx
 00430A16    mov         dword ptr [ebp-50],eax
 00430A19    mov         eax,dword ptr [ebp-54]
 00430A1C    add         eax,dword ptr [ebp-50]
 00430A1F    mov         dword ptr [ebp-18],eax
 00430A22    mov         eax,dword ptr [ebp-18]
 00430A25    call        0040BC0C
 00430A2A    mov         dword ptr [ebp-3C],eax
 00430A2D    xor         eax,eax
 00430A2F    push        ebp
 00430A30    push        430AD1
 00430A35    push        dword ptr fs:[eax]
 00430A38    mov         dword ptr fs:[eax],esp
 00430A3B    mov         eax,dword ptr [ebp-3C]
 00430A3E    mov         dword ptr [ebp-4C],eax
 00430A41    mov         eax,dword ptr [ebp-3C]
 00430A44    add         eax,dword ptr [ebp-54]
 00430A47    mov         dword ptr [ebp-48],eax
 00430A4A    mov         eax,dword ptr [ebp-4C]
 00430A4D    push        eax
 00430A4E    mov         eax,dword ptr [ebp-54]
 00430A51    push        eax
 00430A52    mov         eax,dword ptr [ebp-44]
 00430A55    push        eax
 00430A56    call        gdi32.GetBitmapBits
 00430A5B    mov         eax,dword ptr [ebp-48]
 00430A5E    push        eax
 00430A5F    mov         eax,dword ptr [ebp-50]
 00430A62    push        eax
 00430A63    mov         eax,dword ptr [ebp-40]
 00430A66    push        eax
 00430A67    call        gdi32.GetBitmapBits
 00430A6C    mov         eax,dword ptr [ebp-40]
 00430A6F    push        eax
 00430A70    call        gdi32.DeleteObject
 00430A75    mov         eax,dword ptr [ebp-44]
 00430A78    push        eax
 00430A79    call        gdi32.DeleteObject
 00430A7E    mov         eax,dword ptr [ebp-48]
 00430A81    push        eax
 00430A82    mov         eax,dword ptr [ebp-4C]
 00430A85    push        eax
 00430A86    mov         al,byte ptr [ebp-62]
 00430A89    push        eax
 00430A8A    mov         al,byte ptr [ebp-64]
 00430A8D    push        eax
 00430A8E    mov         eax,dword ptr [ebp+8]
 00430A91    mov         eax,dword ptr [eax+4]
 00430A94    push        eax
 00430A95    mov         eax,dword ptr [ebp+8]
 00430A98    mov         eax,dword ptr [eax]
 00430A9A    push        eax
 00430A9B    mov         eax,[0056F668];0x0 HInstance:LongWord
 00430AA0    push        eax
 00430AA1    call        user32.CreateIcon
 00430AA6    mov         edx,dword ptr [ebp-8]
 00430AA9    mov         dword ptr [edx],eax
 00430AAB    mov         eax,dword ptr [ebp-8]
 00430AAE    cmp         dword ptr [eax],0
>00430AB1    jne         00430AB8
 00430AB3    call        0042FB28
 00430AB8    xor         eax,eax
 00430ABA    pop         edx
 00430ABB    pop         ecx
 00430ABC    pop         ecx
 00430ABD    mov         dword ptr fs:[eax],edx
 00430AC0    push        430AD8
 00430AC5    mov         edx,dword ptr [ebp-18]
 00430AC8    mov         eax,dword ptr [ebp-3C]
 00430ACB    call        @FreeMem
 00430AD0    ret
>00430AD1    jmp         @HandleFinally
>00430AD6    jmp         00430AC5
 00430AD8    xor         eax,eax
 00430ADA    pop         edx
 00430ADB    pop         ecx
 00430ADC    pop         ecx
 00430ADD    mov         dword ptr fs:[eax],edx
 00430AE0    push        430AFB
 00430AE5    mov         eax,dword ptr [ebp-5C]
 00430AE8    mov         edx,dword ptr [eax+8]
 00430AEB    mov         eax,dword ptr [ebp-38]
 00430AEE    call        @FreeMem
 00430AF3    ret
>00430AF4    jmp         @HandleFinally
>00430AF9    jmp         00430AE5
 00430AFB    xor         eax,eax
 00430AFD    pop         edx
 00430AFE    pop         ecx
 00430AFF    pop         ecx
 00430B00    mov         dword ptr fs:[eax],edx
 00430B03    push        430B1B
 00430B08    mov         edx,dword ptr [ebp-14]
 00430B0B    mov         eax,dword ptr [ebp-10]
 00430B0E    call        @FreeMem
 00430B13    ret
>00430B14    jmp         @HandleFinally
>00430B19    jmp         00430B08
 00430B1B    pop         ebx
 00430B1C    mov         esp,ebp
 00430B1E    pop         ebp
 00430B1F    ret         0C
end;*}

//00430B24
{*function sub_00430B24(?:Byte):?;
begin
 00430B24    push        ebp
 00430B25    mov         ebp,esp
 00430B27    add         esp,0FFFFFFF0
 00430B2A    mov         dword ptr [ebp-4],eax
 00430B2D    mov         word ptr [ebp-6],0
 00430B33    mov         eax,dword ptr [ebp-4]
 00430B36    mov         dword ptr [ebp-0C],eax
 00430B39    mov         eax,dword ptr [ebp-4]
 00430B3C    add         eax,14
 00430B3F    mov         dword ptr [ebp-10],eax
>00430B42    jmp         00430B52
 00430B44    mov         eax,dword ptr [ebp-0C]
 00430B47    mov         ax,word ptr [eax]
 00430B4A    xor         word ptr [ebp-6],ax
 00430B4E    add         dword ptr [ebp-0C],2
 00430B52    mov         eax,dword ptr [ebp-0C]
 00430B55    cmp         eax,dword ptr [ebp-10]
>00430B58    jl          00430B44
 00430B5A    mov         ax,word ptr [ebp-6]
 00430B5E    mov         esp,ebp
 00430B60    pop         ebp
 00430B61    ret
end;*}

//00430B64
{*procedure sub_00430B64(?:?; ?:?; ?:?);
begin
 00430B64    push        ebp
 00430B65    mov         ebp,esp
 00430B67    add         esp,0FFFFFF9C
 00430B6A    push        esi
 00430B6B    push        edi
 00430B6C    mov         dword ptr [ebp-0C],ecx
 00430B6F    mov         dword ptr [ebp-8],edx
 00430B72    mov         dword ptr [ebp-4],eax
 00430B75    xor         eax,eax
 00430B77    mov         dword ptr [ebp-4C],eax
 00430B7A    lea         eax,[ebp-64]
 00430B7D    push        eax
 00430B7E    push        54
 00430B80    mov         eax,dword ptr [ebp-4]
 00430B83    push        eax
 00430B84    call        gdi32.GetObjectA
 00430B89    mov         dword ptr [ebp-10],eax
 00430B8C    cmp         dword ptr [ebp-10],0
>00430B90    jne         00430B99
 00430B92    call        InvalidBitmap
>00430B97    jmp         00430BE0
 00430B99    cmp         dword ptr [ebp-10],40
>00430B9D    jl          00430BB6
 00430B9F    cmp         dword ptr [ebp-4C],28
>00430BA3    jb          00430BB6
 00430BA5    mov         eax,dword ptr [ebp-8]
 00430BA8    mov         edi,eax
 00430BAA    lea         esi,[ebp-4C]
 00430BAD    mov         ecx,0A
 00430BB2    rep movs    dword ptr [edi],dword ptr [esi]
>00430BB4    jmp         00430BE0
 00430BB6    mov         eax,dword ptr [ebp-8]
 00430BB9    xor         ecx,ecx
 00430BBB    mov         edx,28
 00430BC0    call        @FillChar
 00430BC5    mov         eax,dword ptr [ebp-8]
 00430BC8    mov         dword ptr [eax],28
 00430BCE    mov         eax,dword ptr [ebp-8]
 00430BD1    mov         edx,dword ptr [ebp-60]
 00430BD4    mov         dword ptr [eax+4],edx
 00430BD7    mov         eax,dword ptr [ebp-8]
 00430BDA    mov         edx,dword ptr [ebp-5C]
 00430BDD    mov         dword ptr [eax+8],edx
 00430BE0    mov         eax,dword ptr [ebp-0C]
 00430BE3    sub         eax,2
>00430BE6    je          00430BF7
 00430BE8    dec         eax
 00430BE9    sub         eax,0E
>00430BEC    jb          00430C02
 00430BEE    sub         eax,0F0
>00430BF3    jb          00430C16
>00430BF5    jmp         00430C2A
 00430BF7    mov         eax,dword ptr [ebp-8]
 00430BFA    mov         word ptr [eax+0E],1
>00430C00    jmp         00430C39
 00430C02    mov         eax,dword ptr [ebp-8]
 00430C05    mov         word ptr [eax+0E],4
 00430C0B    mov         eax,dword ptr [ebp-8]
 00430C0E    mov         edx,dword ptr [ebp-0C]
 00430C11    mov         dword ptr [eax+20],edx
>00430C14    jmp         00430C39
 00430C16    mov         eax,dword ptr [ebp-8]
 00430C19    mov         word ptr [eax+0E],8
 00430C1F    mov         eax,dword ptr [ebp-8]
 00430C22    mov         edx,dword ptr [ebp-0C]
 00430C25    mov         dword ptr [eax+20],edx
>00430C28    jmp         00430C39
 00430C2A    mov         ax,word ptr [ebp-52]
 00430C2E    imul        word ptr [ebp-54]
 00430C32    mov         edx,dword ptr [ebp-8]
 00430C35    mov         word ptr [edx+0E],ax
 00430C39    mov         eax,dword ptr [ebp-8]
 00430C3C    mov         word ptr [eax+0C],1
 00430C42    mov         eax,dword ptr [ebp-8]
 00430C45    mov         eax,dword ptr [eax+24]
 00430C48    mov         edx,dword ptr [ebp-8]
 00430C4B    cmp         eax,dword ptr [edx+20]
>00430C4E    jbe         00430C5C
 00430C50    mov         eax,dword ptr [ebp-8]
 00430C53    mov         eax,dword ptr [eax+20]
 00430C56    mov         edx,dword ptr [ebp-8]
 00430C59    mov         dword ptr [edx+24],eax
 00430C5C    mov         eax,dword ptr [ebp-8]
 00430C5F    cmp         dword ptr [eax+14],0
>00430C63    jne         00430C92
 00430C65    mov         edx,dword ptr [ebp-8]
 00430C68    movzx       edx,word ptr [edx+0E]
 00430C6C    mov         eax,dword ptr [ebp-8]
 00430C6F    mov         eax,dword ptr [eax+4]
 00430C72    mov         ecx,20
 00430C77    call        0042FDA0
 00430C7C    mov         ecx,eax
 00430C7E    mov         eax,dword ptr [ebp-8]
 00430C81    mov         eax,dword ptr [eax+8]
 00430C84    cdq
 00430C85    xor         eax,edx
 00430C87    sub         eax,edx
 00430C89    imul        ecx,eax
 00430C8C    mov         eax,dword ptr [ebp-8]
 00430C8F    mov         dword ptr [eax+14],ecx
 00430C92    pop         edi
 00430C93    pop         esi
 00430C94    mov         esp,ebp
 00430C96    pop         ebp
 00430C97    ret
end;*}

//00430C98
{*procedure sub_00430C98(?:HBITMAP; ?:?; ?:void ; ?:?);
begin
 00430C98    push        ebp
 00430C99    mov         ebp,esp
 00430C9B    add         esp,0FFFFFFCC
 00430C9E    mov         dword ptr [ebp-0C],ecx
 00430CA1    mov         dword ptr [ebp-8],edx
 00430CA4    mov         dword ptr [ebp-4],eax
 00430CA7    lea         edx,[ebp-34]
 00430CAA    mov         ecx,dword ptr [ebp+8]
 00430CAD    mov         eax,dword ptr [ebp-4]
 00430CB0    call        00430B64
 00430CB5    cmp         word ptr [ebp-26],8
>00430CBA    jbe         00430CD3
 00430CBC    mov         eax,dword ptr [ebp-8]
 00430CBF    mov         dword ptr [eax],28
 00430CC5    test        byte ptr [ebp-24],3
>00430CC9    je          00430CFF
 00430CCB    mov         eax,dword ptr [ebp-8]
 00430CCE    add         dword ptr [eax],0C
>00430CD1    jmp         00430CFF
 00430CD3    cmp         dword ptr [ebp-14],0
>00430CD7    jne         00430CF1
 00430CD9    mov         cx,word ptr [ebp-26]
 00430CDD    mov         eax,1
 00430CE2    shl         eax,cl
 00430CE4    shl         eax,2
 00430CE7    add         eax,28
 00430CEA    mov         edx,dword ptr [ebp-8]
 00430CED    mov         dword ptr [edx],eax
>00430CEF    jmp         00430CFF
 00430CF1    mov         eax,dword ptr [ebp-14]
 00430CF4    shl         eax,2
 00430CF7    add         eax,28
 00430CFA    mov         edx,dword ptr [ebp-8]
 00430CFD    mov         dword ptr [edx],eax
 00430CFF    mov         eax,dword ptr [ebp-0C]
 00430D02    mov         edx,dword ptr [ebp-20]
 00430D05    mov         dword ptr [eax],edx
 00430D07    mov         esp,ebp
 00430D09    pop         ebp
 00430D0A    ret         4
end;*}

//00430D10
{*procedure sub_00430D10(?:?; ?:?; ?:?);
begin
 00430D10    push        ebp
 00430D11    mov         ebp,esp
 00430D13    add         esp,0FFFFFFF4
 00430D16    mov         dword ptr [ebp-0C],ecx
 00430D19    mov         dword ptr [ebp-8],edx
 00430D1C    mov         dword ptr [ebp-4],eax
 00430D1F    push        0
 00430D21    mov         ecx,dword ptr [ebp-0C]
 00430D24    mov         edx,dword ptr [ebp-8]
 00430D27    mov         eax,dword ptr [ebp-4]
 00430D2A    call        00430C98
 00430D2F    mov         esp,ebp
 00430D31    pop         ebp
 00430D32    ret
end;*}

//00430D34
{*function sub_00430D34(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00430D34    push        ebp
 00430D35    mov         ebp,esp
 00430D37    add         esp,0FFFFFFE8
 00430D3A    mov         dword ptr [ebp-0C],ecx
 00430D3D    mov         dword ptr [ebp-8],edx
 00430D40    mov         dword ptr [ebp-4],eax
 00430D43    mov         edx,dword ptr [ebp-0C]
 00430D46    mov         ecx,dword ptr [ebp+8]
 00430D49    mov         eax,dword ptr [ebp-4]
 00430D4C    call        00430B64
 00430D51    xor         eax,eax
 00430D53    mov         dword ptr [ebp-14],eax
 00430D56    push        0
 00430D58    call        gdi32.CreateCompatibleDC
 00430D5D    mov         dword ptr [ebp-18],eax
 00430D60    xor         eax,eax
 00430D62    push        ebp
 00430D63    push        430DE1
 00430D68    push        dword ptr fs:[eax]
 00430D6B    mov         dword ptr fs:[eax],esp
 00430D6E    cmp         dword ptr [ebp-8],0
>00430D72    je          00430D8F
 00430D74    push        0
 00430D76    mov         eax,dword ptr [ebp-8]
 00430D79    push        eax
 00430D7A    mov         eax,dword ptr [ebp-18]
 00430D7D    push        eax
 00430D7E    call        gdi32.SelectPalette
 00430D83    mov         dword ptr [ebp-14],eax
 00430D86    mov         eax,dword ptr [ebp-18]
 00430D89    push        eax
 00430D8A    call        gdi32.RealizePalette
 00430D8F    push        0
 00430D91    mov         eax,dword ptr [ebp-0C]
 00430D94    push        eax
 00430D95    mov         eax,dword ptr [ebp+0C]
 00430D98    push        eax
 00430D99    mov         eax,dword ptr [ebp-0C]
 00430D9C    mov         eax,dword ptr [eax+8]
 00430D9F    push        eax
 00430DA0    push        0
 00430DA2    mov         eax,dword ptr [ebp-4]
 00430DA5    push        eax
 00430DA6    mov         eax,dword ptr [ebp-18]
 00430DA9    push        eax
 00430DAA    call        gdi32.GetDIBits
 00430DAF    test        eax,eax
 00430DB1    setne       byte ptr [ebp-0D]
 00430DB5    xor         eax,eax
 00430DB7    pop         edx
 00430DB8    pop         ecx
 00430DB9    pop         ecx
 00430DBA    mov         dword ptr fs:[eax],edx
 00430DBD    push        430DE8
 00430DC2    cmp         dword ptr [ebp-14],0
>00430DC6    je          00430DD7
 00430DC8    push        0
 00430DCA    mov         eax,dword ptr [ebp-14]
 00430DCD    push        eax
 00430DCE    mov         eax,dword ptr [ebp-18]
 00430DD1    push        eax
 00430DD2    call        gdi32.SelectPalette
 00430DD7    mov         eax,dword ptr [ebp-18]
 00430DDA    push        eax
 00430DDB    call        gdi32.DeleteDC
 00430DE0    ret
>00430DE1    jmp         @HandleFinally
>00430DE6    jmp         00430DC2
 00430DE8    mov         al,byte ptr [ebp-0D]
 00430DEB    mov         esp,ebp
 00430DED    pop         ebp
 00430DEE    ret         8
end;*}

//00430DF4
{*function sub_00430DF4(?:?; ?:?; ?:?; ?:?):?;
begin
 00430DF4    push        ebp
 00430DF5    mov         ebp,esp
 00430DF7    add         esp,0FFFFFFF0
 00430DFA    mov         dword ptr [ebp-0C],ecx
 00430DFD    mov         dword ptr [ebp-8],edx
 00430E00    mov         dword ptr [ebp-4],eax
 00430E03    mov         eax,dword ptr [ebp+8]
 00430E06    push        eax
 00430E07    push        0
 00430E09    mov         ecx,dword ptr [ebp-0C]
 00430E0C    mov         edx,dword ptr [ebp-8]
 00430E0F    mov         eax,dword ptr [ebp-4]
 00430E12    call        00430D34
 00430E17    mov         byte ptr [ebp-0D],al
 00430E1A    mov         al,byte ptr [ebp-0D]
 00430E1D    mov         esp,ebp
 00430E1F    pop         ebp
 00430E20    ret         4
end;*}

//00430E24
procedure sub_00430E24;
begin
{*
 00430E24    ret
*}
end;

//00430E28
procedure sub_00430E28(?:LongBool);
begin
{*
 00430E28    push        ebp
 00430E29    mov         ebp,esp
 00430E2B    push        ecx
 00430E2C    mov         dword ptr [ebp-4],eax
 00430E2F    cmp         dword ptr [ebp-4],0
>00430E33    jne         00430E3A
 00430E35    call        00430E24
 00430E3A    pop         ecx
 00430E3B    pop         ebp
 00430E3C    ret
*}
end;

//00430E40
{*procedure sub_00430E40(?:TMemoryStream; ?:?; ?:?);
begin
 00430E40    push        ebp
 00430E41    mov         ebp,esp
 00430E43    add         esp,0FFFFFF9C
 00430E46    push        ebx
 00430E47    mov         byte ptr [ebp-9],cl
 00430E4A    mov         dword ptr [ebp-8],edx
 00430E4D    mov         dword ptr [ebp-4],eax
 00430E50    lea         eax,[ebp-32]
 00430E53    xor         ecx,ecx
 00430E55    mov         edx,6
 00430E5A    call        @FillChar
 00430E5F    lea         eax,[ebp-64]
 00430E62    xor         ecx,ecx
 00430E64    mov         edx,10
 00430E69    call        @FillChar
 00430E6E    lea         eax,[ebp-54]
 00430E71    push        eax
 00430E72    mov         eax,dword ptr [ebp-8]
 00430E75    push        eax
 00430E76    call        user32.GetIconInfo
 00430E7B    call        00430E28
 00430E80    xor         eax,eax
 00430E82    push        ebp
 00430E83    push        43104D
 00430E88    push        dword ptr fs:[eax]
 00430E8B    mov         dword ptr fs:[eax],esp
 00430E8E    push        2
 00430E90    lea         ecx,[ebp-18]
 00430E93    lea         edx,[ebp-10]
 00430E96    mov         eax,dword ptr [ebp-48]
 00430E99    call        00430C98
 00430E9E    push        10
 00430EA0    lea         ecx,[ebp-1C]
 00430EA3    lea         edx,[ebp-14]
 00430EA6    mov         eax,dword ptr [ebp-44]
 00430EA9    call        00430C98
 00430EAE    xor         eax,eax
 00430EB0    mov         dword ptr [ebp-20],eax
 00430EB3    xor         eax,eax
 00430EB5    mov         dword ptr [ebp-24],eax
 00430EB8    xor         eax,eax
 00430EBA    mov         dword ptr [ebp-28],eax
 00430EBD    xor         eax,eax
 00430EBF    mov         dword ptr [ebp-2C],eax
 00430EC2    xor         eax,eax
 00430EC4    push        ebp
 00430EC5    push        431026
 00430ECA    push        dword ptr fs:[eax]
 00430ECD    mov         dword ptr fs:[eax],esp
 00430ED0    mov         eax,dword ptr [ebp-10]
 00430ED3    call        0040BC0C
 00430ED8    mov         dword ptr [ebp-20],eax
 00430EDB    mov         eax,dword ptr [ebp-18]
 00430EDE    call        0040BC0C
 00430EE3    mov         dword ptr [ebp-24],eax
 00430EE6    mov         eax,dword ptr [ebp-14]
 00430EE9    call        0040BC0C
 00430EEE    mov         dword ptr [ebp-28],eax
 00430EF1    mov         eax,dword ptr [ebp-1C]
 00430EF4    call        0040BC0C
 00430EF9    mov         dword ptr [ebp-2C],eax
 00430EFC    mov         eax,dword ptr [ebp-24]
 00430EFF    push        eax
 00430F00    push        2
 00430F02    mov         ecx,dword ptr [ebp-20]
 00430F05    xor         edx,edx
 00430F07    mov         eax,dword ptr [ebp-48]
 00430F0A    call        00430D34
 00430F0F    mov         eax,dword ptr [ebp-2C]
 00430F12    push        eax
 00430F13    push        10
 00430F15    mov         ecx,dword ptr [ebp-28]
 00430F18    xor         edx,edx
 00430F1A    mov         eax,dword ptr [ebp-44]
 00430F1D    call        00430D34
 00430F22    cmp         byte ptr [ebp-9],0
>00430F26    je          00430F47
 00430F28    mov         eax,dword ptr [ebp-14]
 00430F2B    add         eax,16
 00430F2E    add         eax,dword ptr [ebp-1C]
 00430F31    add         eax,dword ptr [ebp-18]
 00430F34    mov         dword ptr [ebp-38],eax
 00430F37    lea         edx,[ebp-38]
 00430F3A    mov         ecx,4
 00430F3F    mov         eax,dword ptr [ebp-4]
 00430F42    mov         ebx,dword ptr [eax]
 00430F44    call        dword ptr [ebx+10]
 00430F47    mov         word ptr [ebp-30],1
 00430F4D    mov         word ptr [ebp-2E],1
 00430F53    lea         edx,[ebp-32]
 00430F56    mov         ecx,6
 00430F5B    mov         eax,dword ptr [ebp-4]
 00430F5E    mov         ebx,dword ptr [eax]
 00430F60    call        dword ptr [ebx+10]
 00430F63    mov         eax,dword ptr [ebp-28]
 00430F66    mov         dword ptr [ebp-3C],eax
 00430F69    mov         eax,dword ptr [ebp-3C]
 00430F6C    mov         al,byte ptr [eax+4]
 00430F6F    mov         byte ptr [ebp-64],al
 00430F72    mov         eax,dword ptr [ebp-3C]
 00430F75    mov         al,byte ptr [eax+8]
 00430F78    mov         byte ptr [ebp-63],al
 00430F7B    mov         eax,dword ptr [ebp-3C]
 00430F7E    mov         ax,word ptr [eax+0C]
 00430F82    mov         edx,dword ptr [ebp-3C]
 00430F85    imul        word ptr [edx+0E]
 00430F89    mov         word ptr [ebp-62],ax
 00430F8D    mov         eax,dword ptr [ebp-14]
 00430F90    add         eax,dword ptr [ebp-1C]
 00430F93    add         eax,dword ptr [ebp-18]
 00430F96    mov         dword ptr [ebp-5C],eax
 00430F99    mov         dword ptr [ebp-58],16
 00430FA0    lea         edx,[ebp-64]
 00430FA3    mov         ecx,10
 00430FA8    mov         eax,dword ptr [ebp-4]
 00430FAB    mov         ebx,dword ptr [eax]
 00430FAD    call        dword ptr [ebx+10]
 00430FB0    mov         eax,dword ptr [ebp-28]
 00430FB3    mov         dword ptr [ebp-40],eax
 00430FB6    mov         eax,dword ptr [ebp-40]
 00430FB9    mov         eax,dword ptr [eax+8]
 00430FBC    mov         edx,dword ptr [ebp-40]
 00430FBF    add         dword ptr [edx+8],eax
 00430FC2    mov         edx,dword ptr [ebp-28]
 00430FC5    mov         ecx,dword ptr [ebp-14]
 00430FC8    mov         eax,dword ptr [ebp-4]
 00430FCB    mov         ebx,dword ptr [eax]
 00430FCD    call        dword ptr [ebx+10]
 00430FD0    mov         edx,dword ptr [ebp-2C]
 00430FD3    mov         ecx,dword ptr [ebp-1C]
 00430FD6    mov         eax,dword ptr [ebp-4]
 00430FD9    mov         ebx,dword ptr [eax]
 00430FDB    call        dword ptr [ebx+10]
 00430FDE    mov         edx,dword ptr [ebp-24]
 00430FE1    mov         ecx,dword ptr [ebp-18]
 00430FE4    mov         eax,dword ptr [ebp-4]
 00430FE7    mov         ebx,dword ptr [eax]
 00430FE9    call        dword ptr [ebx+10]
 00430FEC    xor         eax,eax
 00430FEE    pop         edx
 00430FEF    pop         ecx
 00430FF0    pop         ecx
 00430FF1    mov         dword ptr fs:[eax],edx
 00430FF4    push        43102D
 00430FF9    mov         edx,dword ptr [ebp-14]
 00430FFC    mov         eax,dword ptr [ebp-28]
 00430FFF    call        @FreeMem
 00431004    mov         edx,dword ptr [ebp-1C]
 00431007    mov         eax,dword ptr [ebp-2C]
 0043100A    call        @FreeMem
 0043100F    mov         edx,dword ptr [ebp-10]
 00431012    mov         eax,dword ptr [ebp-20]
 00431015    call        @FreeMem
 0043101A    mov         edx,dword ptr [ebp-18]
 0043101D    mov         eax,dword ptr [ebp-24]
 00431020    call        @FreeMem
 00431025    ret
>00431026    jmp         @HandleFinally
>0043102B    jmp         00430FF9
 0043102D    xor         eax,eax
 0043102F    pop         edx
 00431030    pop         ecx
 00431031    pop         ecx
 00431032    mov         dword ptr fs:[eax],edx
 00431035    push        431054
 0043103A    mov         eax,dword ptr [ebp-44]
 0043103D    push        eax
 0043103E    call        gdi32.DeleteObject
 00431043    mov         eax,dword ptr [ebp-48]
 00431046    push        eax
 00431047    call        gdi32.DeleteObject
 0043104C    ret
>0043104D    jmp         @HandleFinally
>00431052    jmp         0043103A
 00431054    pop         ebx
 00431055    mov         esp,ebp
 00431057    pop         ebp
 00431058    ret
end;*}

//0043105C
constructor sub_0043105C;
begin
{*
 0043105C    push        ebp
 0043105D    mov         ebp,esp
 0043105F    add         esp,0FFFFFFF8
 00431062    test        dl,dl
>00431064    je          0043106E
 00431066    add         esp,0FFFFFFF0
 00431069    call        @ClassCreate
 0043106E    mov         byte ptr [ebp-5],dl
 00431071    mov         dword ptr [ebp-4],eax
 00431074    xor         edx,edx
 00431076    mov         eax,dword ptr [ebp-4]
 00431079    call        TObject.Create
 0043107E    mov         eax,dword ptr [ebp-4]
 00431081    cmp         byte ptr [ebp-5],0
>00431085    je          00431096
 00431087    call        @AfterConstruction
 0043108C    pop         dword ptr fs:[0]
 00431093    add         esp,0C
 00431096    mov         eax,dword ptr [ebp-4]
 00431099    pop         ecx
 0043109A    pop         ecx
 0043109B    pop         ebp
 0043109C    ret
*}
end;

//004310A0
{*procedure sub_004310A0(?:?);
begin
 004310A0    push        ebp
 004310A1    mov         ebp,esp
 004310A3    add         esp,0FFFFFFF8
 004310A6    push        ebx
 004310A7    mov         dword ptr [ebp-8],edx
 004310AA    mov         dword ptr [ebp-4],eax
 004310AD    mov         eax,dword ptr [ebp-4]
 004310B0    mov         byte ptr [eax+20],1;TGraphic.FModified:Boolean
 004310B4    mov         eax,dword ptr [ebp-4]
 004310B7    cmp         word ptr [eax+12],0;TGraphic.?f12:word
>004310BC    je          004310CA
 004310BE    mov         ebx,dword ptr [ebp-4]
 004310C1    mov         edx,dword ptr [ebp-4]
 004310C4    mov         eax,dword ptr [ebx+14];TGraphic.?f14:TCoolBand
 004310C7    call        dword ptr [ebx+10];TGraphic.FOnChange
 004310CA    pop         ebx
 004310CB    pop         ecx
 004310CC    pop         ecx
 004310CD    pop         ebp
 004310CE    ret
end;*}

//004310D0
{*function sub_004310D0(?:?):?;
begin
 004310D0    push        ebp
 004310D1    mov         ebp,esp
 004310D3    push        ecx
 004310D4    mov         eax,dword ptr [ebp+8]
 004310D7    mov         eax,dword ptr [eax-4]
 004310DA    cmp         dword ptr [eax+20],0
>004310DE    je          0043111B
 004310E0    mov         eax,dword ptr [ebp+8]
 004310E3    mov         eax,dword ptr [eax-4]
 004310E6    mov         eax,dword ptr [eax+20]
 004310E9    mov         edx,dword ptr ds:[42CB48];TGraphic
 004310EF    call        @IsClass
 004310F4    test        al,al
>004310F6    je          00431114
 004310F8    mov         eax,dword ptr [ebp+8]
 004310FB    mov         eax,dword ptr [eax-4]
 004310FE    mov         edx,dword ptr [eax+20]
 00431101    mov         eax,dword ptr [ebp+8]
 00431104    mov         eax,dword ptr [eax-8]
 00431107    mov         ecx,dword ptr [eax]
 00431109    call        dword ptr [ecx+18]
 0043110C    test        al,al
>0043110E    je          00431114
 00431110    xor         eax,eax
>00431112    jmp         00431116
 00431114    mov         al,1
 00431116    mov         byte ptr [ebp-1],al
>00431119    jmp         0043112B
 0043111B    mov         eax,dword ptr [ebp+8]
 0043111E    mov         eax,dword ptr [eax-8]
 00431121    mov         edx,dword ptr [eax]
 00431123    call        dword ptr [edx+1C]
 00431126    xor         al,1
 00431128    mov         byte ptr [ebp-1],al
 0043112B    mov         al,byte ptr [ebp-1]
 0043112E    pop         ecx
 0043112F    pop         ebp
 00431130    ret
end;*}

//00431134
procedure TGraphic.DefineProperties(Filer:TFiler);
begin
{*
 00431134    push        ebp
 00431135    mov         ebp,esp
 00431137    add         esp,0FFFFFFF8
 0043113A    push        ebx
 0043113B    mov         dword ptr [ebp-4],edx
 0043113E    mov         dword ptr [ebp-8],eax
 00431141    mov         eax,dword ptr [ebp-8]
 00431144    push        eax
 00431145    mov         eax,dword ptr [eax]
 00431147    mov         eax,dword ptr [eax+30]
 0043114A    push        eax
 0043114B    mov         eax,dword ptr [ebp-8]
 0043114E    push        eax
 0043114F    mov         eax,dword ptr [eax]
 00431151    mov         eax,dword ptr [eax+44]
 00431154    push        eax
 00431155    push        ebp
 00431156    call        004310D0
 0043115B    pop         ecx
 0043115C    mov         ecx,eax
 0043115E    mov         edx,431178;'Data'
 00431163    mov         eax,dword ptr [ebp-4]
 00431166    mov         ebx,dword ptr [eax]
 00431168    call        dword ptr [ebx+8]
 0043116B    pop         ebx
 0043116C    pop         ecx
 0043116D    pop         ecx
 0043116E    pop         ebp
 0043116F    ret
*}
end;

//00431180
{*function sub_00431180(?:?):?;
begin
 00431180    push        ebp
 00431181    mov         ebp,esp
 00431183    add         esp,0FFFFFFEC
 00431186    push        ebx
 00431187    mov         dword ptr [ebp-8],edx
 0043118A    mov         dword ptr [ebp-4],eax
 0043118D    cmp         dword ptr [ebp-8],0
>00431191    je          004311A9
 00431193    mov         eax,dword ptr [ebp-4]
 00431196    call        TObject.ClassType
 0043119B    mov         ebx,eax
 0043119D    mov         eax,dword ptr [ebp-8]
 004311A0    call        TObject.ClassType
 004311A5    cmp         ebx,eax
>004311A7    je          004311AD
 004311A9    xor         eax,eax
>004311AB    jmp         004311AF
 004311AD    mov         al,1
 004311AF    mov         byte ptr [ebp-9],al
 004311B2    mov         eax,dword ptr [ebp-4]
 004311B5    mov         edx,dword ptr [eax]
 004311B7    call        dword ptr [edx+1C];@AbstractError
 004311BA    test        al,al
>004311BC    jne         004311CA
 004311BE    mov         eax,dword ptr [ebp-8]
 004311C1    mov         edx,dword ptr [eax]
 004311C3    call        dword ptr [edx+1C]
 004311C6    test        al,al
>004311C8    je          004311F0
 004311CA    mov         eax,dword ptr [ebp-4]
 004311CD    mov         edx,dword ptr [eax]
 004311CF    call        dword ptr [edx+1C];@AbstractError
 004311D2    test        al,al
>004311D4    je          004311E2
 004311D6    mov         eax,dword ptr [ebp-8]
 004311D9    mov         edx,dword ptr [eax]
 004311DB    call        dword ptr [edx+1C]
 004311DE    test        al,al
>004311E0    jne         004311E6
 004311E2    xor         eax,eax
>004311E4    jmp         004311E8
 004311E6    mov         al,1
 004311E8    mov         byte ptr [ebp-9],al
>004311EB    jmp         004312C8
 004311F0    cmp         byte ptr [ebp-9],0
>004311F4    je          004312C8
 004311FA    mov         dl,1
 004311FC    mov         eax,[0041DE14];TMemoryStream
 00431201    call        TObject.Create;TMemoryStream.Create
 00431206    mov         dword ptr [ebp-10],eax
 00431209    xor         eax,eax
 0043120B    push        ebp
 0043120C    push        4312C1
 00431211    push        dword ptr fs:[eax]
 00431214    mov         dword ptr fs:[eax],esp
 00431217    mov         edx,dword ptr [ebp-10]
 0043121A    mov         eax,dword ptr [ebp-4]
 0043121D    mov         ecx,dword ptr [eax]
 0043121F    call        dword ptr [ecx+44];TGraphic.sub_0043145C
 00431222    mov         dl,1
 00431224    mov         eax,[0041DE14];TMemoryStream
 00431229    call        TObject.Create;TMemoryStream.Create
 0043122E    mov         dword ptr [ebp-14],eax
 00431231    xor         eax,eax
 00431233    push        ebp
 00431234    push        4312A4
 00431239    push        dword ptr fs:[eax]
 0043123C    mov         dword ptr fs:[eax],esp
 0043123F    mov         edx,dword ptr [ebp-14]
 00431242    mov         eax,dword ptr [ebp-8]
 00431245    mov         ecx,dword ptr [eax]
 00431247    call        dword ptr [ecx+44]
 0043124A    mov         eax,dword ptr [ebp-10]
 0043124D    mov         edx,dword ptr [eax]
 0043124F    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00431251    push        edx
 00431252    push        eax
 00431253    mov         eax,dword ptr [ebp-14]
 00431256    mov         edx,dword ptr [eax]
 00431258    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0043125A    cmp         edx,dword ptr [esp+4]
>0043125E    jne         00431263
 00431260    cmp         eax,dword ptr [esp]
 00431263    pop         edx
 00431264    pop         eax
>00431265    jne         00431285
 00431267    mov         eax,dword ptr [ebp-10]
 0043126A    mov         edx,dword ptr [eax]
 0043126C    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0043126E    mov         ecx,eax
 00431270    mov         eax,dword ptr [ebp-14]
 00431273    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00431276    mov         eax,dword ptr [ebp-10]
 00431279    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0043127C    call        CompareMem
 00431281    test        al,al
>00431283    jne         00431289
 00431285    xor         eax,eax
>00431287    jmp         0043128B
 00431289    mov         al,1
 0043128B    mov         byte ptr [ebp-9],al
 0043128E    xor         eax,eax
 00431290    pop         edx
 00431291    pop         ecx
 00431292    pop         ecx
 00431293    mov         dword ptr fs:[eax],edx
 00431296    push        4312AB
 0043129B    mov         eax,dword ptr [ebp-14]
 0043129E    call        TObject.Free
 004312A3    ret
>004312A4    jmp         @HandleFinally
>004312A9    jmp         0043129B
 004312AB    xor         eax,eax
 004312AD    pop         edx
 004312AE    pop         ecx
 004312AF    pop         ecx
 004312B0    mov         dword ptr fs:[eax],edx
 004312B3    push        4312C8
 004312B8    mov         eax,dword ptr [ebp-10]
 004312BB    call        TObject.Free
 004312C0    ret
>004312C1    jmp         @HandleFinally
>004312C6    jmp         004312B8
 004312C8    mov         al,byte ptr [ebp-9]
 004312CB    pop         ebx
 004312CC    mov         esp,ebp
 004312CE    pop         ebp
 004312CF    ret
end;*}

//004312D0
{*function sub_004312D0:?;
begin
 004312D0    push        ebp
 004312D1    mov         ebp,esp
 004312D3    add         esp,0FFFFFFF8
 004312D6    mov         dword ptr [ebp-4],eax
 004312D9    xor         eax,eax
 004312DB    mov         dword ptr [ebp-8],eax
 004312DE    mov         eax,dword ptr [ebp-8]
 004312E1    pop         ecx
 004312E2    pop         ecx
 004312E3    pop         ebp
 004312E4    ret
end;*}

//004312E8
{*function sub_004312E8:?;
begin
 004312E8    push        ebp
 004312E9    mov         ebp,esp
 004312EB    add         esp,0FFFFFFF8
 004312EE    mov         dword ptr [ebp-4],eax
 004312F1    mov         eax,dword ptr [ebp-4]
 004312F4    mov         al,byte ptr [eax+21];TGraphic.FTransparent:Boolean
 004312F7    mov         byte ptr [ebp-5],al
 004312FA    mov         al,byte ptr [ebp-5]
 004312FD    pop         ecx
 004312FE    pop         ecx
 004312FF    pop         ebp
 00431300    ret
end;*}

//00431304
{*procedure sub_00431304(?:?);
begin
 00431304    push        ebp
 00431305    mov         ebp,esp
 00431307    add         esp,0FFFFFFF4
 0043130A    mov         dword ptr [ebp-8],edx
 0043130D    mov         dword ptr [ebp-4],eax
 00431310    push        20
 00431312    mov         ecx,dword ptr [ebp-8]
 00431315    mov         dl,1
 00431317    mov         eax,[0041DD24];TFileStream
 0043131C    call        TFileStream.Create;TFileStream.Create
 00431321    mov         dword ptr [ebp-0C],eax
 00431324    xor         eax,eax
 00431326    push        ebp
 00431327    push        431353
 0043132C    push        dword ptr fs:[eax]
 0043132F    mov         dword ptr fs:[eax],esp
 00431332    mov         edx,dword ptr [ebp-0C]
 00431335    mov         eax,dword ptr [ebp-4]
 00431338    mov         ecx,dword ptr [eax]
 0043133A    call        dword ptr [ecx+54];@AbstractError
 0043133D    xor         eax,eax
 0043133F    pop         edx
 00431340    pop         ecx
 00431341    pop         ecx
 00431342    mov         dword ptr fs:[eax],edx
 00431345    push        43135A
 0043134A    mov         eax,dword ptr [ebp-0C]
 0043134D    call        TObject.Free
 00431352    ret
>00431353    jmp         @HandleFinally
>00431358    jmp         0043134A
 0043135A    mov         esp,ebp
 0043135C    pop         ebp
 0043135D    ret
end;*}

//00431360
{*procedure TGraphic.sub_00431360(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00431360    push        ebp
 00431361    mov         ebp,esp
 00431363    add         esp,0FFFFFFF4
 00431366    push        ebx
 00431367    mov         byte ptr [ebp-9],cl
 0043136A    mov         dword ptr [ebp-8],edx
 0043136D    mov         dword ptr [ebp-4],eax
 00431370    mov         eax,dword ptr [ebp-4]
 00431373    cmp         word ptr [eax+1A],0;TGraphic.?f1A:word
>00431378    je          00431399
 0043137A    mov         al,byte ptr [ebp+14]
 0043137D    push        eax
 0043137E    mov         al,byte ptr [ebp+10]
 00431381    push        eax
 00431382    mov         eax,dword ptr [ebp+0C]
 00431385    push        eax
 00431386    mov         eax,dword ptr [ebp+8]
 00431389    push        eax
 0043138A    mov         ebx,dword ptr [ebp-4]
 0043138D    mov         cl,byte ptr [ebp-9]
 00431390    mov         edx,dword ptr [ebp-8]
 00431393    mov         eax,dword ptr [ebx+1C];TGraphic.?f1C:dword
 00431396    call        dword ptr [ebx+18];TGraphic.FOnProgress
 00431399    pop         ebx
 0043139A    mov         esp,ebp
 0043139C    pop         ebp
 0043139D    ret         10
end;*}

//004313A0
{*procedure sub_004313A0(?:?);
begin
 004313A0    push        ebp
 004313A1    mov         ebp,esp
 004313A3    add         esp,0FFFFFFF8
 004313A6    mov         dword ptr [ebp-8],edx
 004313A9    mov         dword ptr [ebp-4],eax
 004313AC    mov         edx,dword ptr [ebp-8]
 004313AF    mov         eax,dword ptr [ebp-4]
 004313B2    mov         ecx,dword ptr [eax]
 004313B4    call        dword ptr [ecx+54];@AbstractError
 004313B7    pop         ecx
 004313B8    pop         ecx
 004313B9    pop         ebp
 004313BA    ret
end;*}

//004313BC
{*procedure sub_004313BC(?:?);
begin
 004313BC    push        ebp
 004313BD    mov         ebp,esp
 004313BF    add         esp,0FFFFFFF4
 004313C2    mov         dword ptr [ebp-8],edx
 004313C5    mov         dword ptr [ebp-4],eax
 004313C8    push        0FFFF
 004313CD    mov         ecx,dword ptr [ebp-8]
 004313D0    mov         dl,1
 004313D2    mov         eax,[0041DD24];TFileStream
 004313D7    call        TFileStream.Create;TFileStream.Create
 004313DC    mov         dword ptr [ebp-0C],eax
 004313DF    xor         eax,eax
 004313E1    push        ebp
 004313E2    push        43140E
 004313E7    push        dword ptr fs:[eax]
 004313EA    mov         dword ptr fs:[eax],esp
 004313ED    mov         edx,dword ptr [ebp-0C]
 004313F0    mov         eax,dword ptr [ebp-4]
 004313F3    mov         ecx,dword ptr [eax]
 004313F5    call        dword ptr [ecx+58];@AbstractError
 004313F8    xor         eax,eax
 004313FA    pop         edx
 004313FB    pop         ecx
 004313FC    pop         ecx
 004313FD    mov         dword ptr fs:[eax],edx
 00431400    push        431415
 00431405    mov         eax,dword ptr [ebp-0C]
 00431408    call        TObject.Free
 0043140D    ret
>0043140E    jmp         @HandleFinally
>00431413    jmp         00431405
 00431415    mov         esp,ebp
 00431417    pop         ebp
 00431418    ret
end;*}

//0043141C
{*procedure sub_0043141C(?:?);
begin
 0043141C    push        ebp
 0043141D    mov         ebp,esp
 0043141F    add         esp,0FFFFFFF8
 00431422    mov         dword ptr [ebp-8],edx
 00431425    mov         dword ptr [ebp-4],eax
 00431428    pop         ecx
 00431429    pop         ecx
 0043142A    pop         ebp
 0043142B    ret
end;*}

//0043142C
{*procedure sub_0043142C(?:?);
begin
 0043142C    push        ebp
 0043142D    mov         ebp,esp
 0043142F    add         esp,0FFFFFFF8
 00431432    mov         byte ptr [ebp-5],dl
 00431435    mov         dword ptr [ebp-4],eax
 00431438    mov         al,byte ptr [ebp-5]
 0043143B    mov         edx,dword ptr [ebp-4]
 0043143E    cmp         al,byte ptr [edx+21];TGraphic.FTransparent:Boolean
>00431441    je          00431457
 00431443    mov         al,byte ptr [ebp-5]
 00431446    mov         edx,dword ptr [ebp-4]
 00431449    mov         byte ptr [edx+21],al;TGraphic.FTransparent:Boolean
 0043144C    mov         edx,dword ptr [ebp-4]
 0043144F    mov         eax,dword ptr [ebp-4]
 00431452    mov         ecx,dword ptr [eax]
 00431454    call        dword ptr [ecx+10];TGraphic.sub_004310A0
 00431457    pop         ecx
 00431458    pop         ecx
 00431459    pop         ebp
 0043145A    ret
end;*}

//0043145C
{*procedure sub_0043145C(?:?);
begin
 0043145C    push        ebp
 0043145D    mov         ebp,esp
 0043145F    add         esp,0FFFFFFF8
 00431462    mov         dword ptr [ebp-8],edx
 00431465    mov         dword ptr [ebp-4],eax
 00431468    mov         edx,dword ptr [ebp-8]
 0043146B    mov         eax,dword ptr [ebp-4]
 0043146E    mov         ecx,dword ptr [eax]
 00431470    call        dword ptr [ecx+58];@AbstractError
 00431473    pop         ecx
 00431474    pop         ecx
 00431475    pop         ebp
 00431476    ret
end;*}

//00431514
constructor TFileFormatsList.Create;
begin
{*
 00431514    push        ebp
 00431515    mov         ebp,esp
 00431517    xor         ecx,ecx
 00431519    push        ecx
 0043151A    push        ecx
 0043151B    push        ecx
 0043151C    push        ecx
 0043151D    push        ecx
 0043151E    push        ecx
 0043151F    test        dl,dl
>00431521    je          0043152B
 00431523    add         esp,0FFFFFFF0
 00431526    call        @ClassCreate
 0043152B    mov         byte ptr [ebp-5],dl
 0043152E    mov         dword ptr [ebp-4],eax
 00431531    xor         eax,eax
 00431533    push        ebp
 00431534    push        4315F8
 00431539    push        dword ptr fs:[eax]
 0043153C    mov         dword ptr fs:[eax],esp
 0043153F    xor         edx,edx
 00431541    mov         eax,dword ptr [ebp-4]
 00431544    call        TObject.Create
 00431549    push        0
 0043154B    mov         eax,[0042CE08];TMetafile
 00431550    push        eax
 00431551    lea         edx,[ebp-0C]
 00431554    mov         eax,[0056E310];^SVMetafiles:TResStringRec
 00431559    call        LoadResString
 0043155E    mov         ecx,dword ptr [ebp-0C]
 00431561    mov         edx,431628;'wmf'
 00431566    mov         eax,dword ptr [ebp-4]
 00431569    call        004316B8
 0043156E    push        0
 00431570    mov         eax,[0042CE08];TMetafile
 00431575    push        eax
 00431576    lea         edx,[ebp-10]
 00431579    mov         eax,[0056E0A0];^SVEnhMetafiles:TResStringRec
 0043157E    call        LoadResString
 00431583    mov         ecx,dword ptr [ebp-10]
 00431586    mov         edx,431634;'emf'
 0043158B    mov         eax,dword ptr [ebp-4]
 0043158E    call        004316B8
 00431593    push        0
 00431595    mov         eax,[0042D08C];TIcon
 0043159A    push        eax
 0043159B    lea         edx,[ebp-14]
 0043159E    mov         eax,[0056E09C];^SVIcons:TResStringRec
 004315A3    call        LoadResString
 004315A8    mov         ecx,dword ptr [ebp-14]
 004315AB    mov         edx,431640;'ico'
 004315B0    mov         eax,dword ptr [ebp-4]
 004315B3    call        004316B8
 004315B8    push        0
 004315BA    mov         eax,[0042CF48];TBitmap
 004315BF    push        eax
 004315C0    lea         edx,[ebp-18]
 004315C3    mov         eax,[0056E090];^SVBitmaps:TResStringRec
 004315C8    call        LoadResString
 004315CD    mov         ecx,dword ptr [ebp-18]
 004315D0    mov         edx,43164C;'bmp'
 004315D5    mov         eax,dword ptr [ebp-4]
 004315D8    call        004316B8
 004315DD    xor         eax,eax
 004315DF    pop         edx
 004315E0    pop         ecx
 004315E1    pop         ecx
 004315E2    mov         dword ptr fs:[eax],edx
 004315E5    push        4315FF
 004315EA    lea         eax,[ebp-18]
 004315ED    mov         edx,4
 004315F2    call        @LStrArrayClr
 004315F7    ret
>004315F8    jmp         @HandleFinally
>004315FD    jmp         004315EA
 004315FF    mov         eax,dword ptr [ebp-4]
 00431602    cmp         byte ptr [ebp-5],0
>00431606    je          00431617
 00431608    call        @AfterConstruction
 0043160D    pop         dword ptr fs:[0]
 00431614    add         esp,0C
 00431617    mov         eax,dword ptr [ebp-4]
 0043161A    mov         esp,ebp
 0043161C    pop         ebp
 0043161D    ret
*}
end;

//00431650
destructor TFileFormatsList.Destroy;
begin
{*
 00431650    push        ebp
 00431651    mov         ebp,esp
 00431653    add         esp,0FFFFFFF0
 00431656    call        @BeforeDestruction
 0043165B    mov         byte ptr [ebp-5],dl
 0043165E    mov         dword ptr [ebp-4],eax
 00431661    mov         eax,dword ptr [ebp-4]
 00431664    mov         eax,dword ptr [eax+8]
 00431667    dec         eax
 00431668    test        eax,eax
>0043166A    jl          00431695
 0043166C    inc         eax
 0043166D    mov         dword ptr [ebp-10],eax
 00431670    mov         dword ptr [ebp-0C],0
 00431677    mov         edx,dword ptr [ebp-0C]
 0043167A    mov         eax,dword ptr [ebp-4]
 0043167D    call        TList.Get
 00431682    mov         edx,dword ptr ds:[431478];TFileFormat
 00431688    call        @Dispose
 0043168D    inc         dword ptr [ebp-0C]
 00431690    dec         dword ptr [ebp-10]
>00431693    jne         00431677
 00431695    mov         dl,byte ptr [ebp-5]
 00431698    and         dl,0FC
 0043169B    mov         eax,dword ptr [ebp-4]
 0043169E    call        TList.Destroy
 004316A3    cmp         byte ptr [ebp-5],0
>004316A7    jle         004316B1
 004316A9    mov         eax,dword ptr [ebp-4]
 004316AC    call        @ClassDestroy
 004316B1    mov         esp,ebp
 004316B3    pop         ebp
 004316B4    ret
*}
end;

//004316B8
{*procedure sub_004316B8(?:?; ?:AnsiString; ?:?; ?:?; ?:?);
begin
 004316B8    push        ebp
 004316B9    mov         ebp,esp
 004316BB    add         esp,0FFFFFFE8
 004316BE    push        ebx
 004316BF    xor         ebx,ebx
 004316C1    mov         dword ptr [ebp-18],ebx
 004316C4    mov         dword ptr [ebp-0C],ecx
 004316C7    mov         dword ptr [ebp-8],edx
 004316CA    mov         dword ptr [ebp-4],eax
 004316CD    xor         eax,eax
 004316CF    push        ebp
 004316D0    push        43174D
 004316D5    push        dword ptr fs:[eax]
 004316D8    mov         dword ptr fs:[eax],esp
 004316DB    mov         edx,dword ptr ds:[431478];TFileFormat
 004316E1    mov         eax,10
 004316E6    call        00405F24
 004316EB    mov         dword ptr [ebp-10],eax
 004316EE    mov         eax,dword ptr [ebp-10]
 004316F1    mov         dword ptr [ebp-14],eax
 004316F4    lea         edx,[ebp-18]
 004316F7    mov         eax,dword ptr [ebp-8]
 004316FA    call        0040BEB0
 004316FF    mov         edx,dword ptr [ebp-18]
 00431702    mov         eax,dword ptr [ebp-14]
 00431705    add         eax,4
 00431708    call        @LStrAsg
 0043170D    mov         eax,dword ptr [ebp+8]
 00431710    mov         edx,dword ptr [ebp-14]
 00431713    mov         dword ptr [edx],eax
 00431715    mov         eax,dword ptr [ebp-14]
 00431718    add         eax,8
 0043171B    mov         edx,dword ptr [ebp-0C]
 0043171E    call        @LStrAsg
 00431723    mov         eax,dword ptr [ebp+0C]
 00431726    mov         edx,dword ptr [ebp-14]
 00431729    mov         dword ptr [edx+0C],eax
 0043172C    mov         edx,dword ptr [ebp-10]
 0043172F    mov         eax,dword ptr [ebp-4]
 00431732    call        TList.Add
 00431737    xor         eax,eax
 00431739    pop         edx
 0043173A    pop         ecx
 0043173B    pop         ecx
 0043173C    mov         dword ptr fs:[eax],edx
 0043173F    push        431754
 00431744    lea         eax,[ebp-18]
 00431747    call        @LStrClr
 0043174C    ret
>0043174D    jmp         @HandleFinally
>00431752    jmp         00431744
 00431754    pop         ebx
 00431755    mov         esp,ebp
 00431757    pop         ebp
 00431758    ret         8
end;*}

//0043175C
{*function sub_0043175C(?:?; ?:?):?;
begin
 0043175C    push        ebp
 0043175D    mov         ebp,esp
 0043175F    add         esp,0FFFFFEEC
 00431765    xor         ecx,ecx
 00431767    mov         dword ptr [ebp-14],ecx
 0043176A    mov         dword ptr [ebp-8],edx
 0043176D    mov         dword ptr [ebp-4],eax
 00431770    xor         eax,eax
 00431772    push        ebp
 00431773    push        4317EA
 00431778    push        dword ptr fs:[eax]
 0043177B    mov         dword ptr fs:[eax],esp
 0043177E    mov         eax,dword ptr [ebp-4]
 00431781    mov         eax,dword ptr [eax+8]
 00431784    dec         eax
 00431785    cmp         eax,0
>00431788    jl          004317CF
 0043178A    mov         dword ptr [ebp-10],eax
 0043178D    mov         edx,dword ptr [ebp-10]
 00431790    mov         eax,dword ptr [ebp-4]
 00431793    call        TList.Get
 00431798    mov         eax,dword ptr [eax]
 0043179A    mov         dword ptr [ebp-0C],eax
 0043179D    lea         edx,[ebp-114]
 004317A3    mov         eax,dword ptr [ebp-0C]
 004317A6    call        TObject.ClassName
 004317AB    lea         edx,[ebp-114]
 004317B1    lea         eax,[ebp-14]
 004317B4    call        @LStrFromString
 004317B9    mov         eax,dword ptr [ebp-14]
 004317BC    mov         edx,dword ptr [ebp-8]
 004317BF    call        @LStrCmp
>004317C4    je          004317D4
 004317C6    dec         dword ptr [ebp-10]
 004317C9    cmp         dword ptr [ebp-10],0FFFFFFFF
>004317CD    jne         0043178D
 004317CF    xor         eax,eax
 004317D1    mov         dword ptr [ebp-0C],eax
 004317D4    xor         eax,eax
 004317D6    pop         edx
 004317D7    pop         ecx
 004317D8    pop         ecx
 004317D9    mov         dword ptr fs:[eax],edx
 004317DC    push        4317F1
 004317E1    lea         eax,[ebp-14]
 004317E4    call        @LStrClr
 004317E9    ret
>004317EA    jmp         @HandleFinally
>004317EF    jmp         004317E1
 004317F1    mov         eax,dword ptr [ebp-0C]
 004317F4    mov         esp,ebp
 004317F6    pop         ebp
 004317F7    ret
end;*}

//00431858
constructor TClipboardFormats.Create;
begin
{*
 00431858    push        ebp
 00431859    mov         ebp,esp
 0043185B    add         esp,0FFFFFFF8
 0043185E    test        dl,dl
>00431860    je          0043186A
 00431862    add         esp,0FFFFFFF0
 00431865    call        @ClassCreate
 0043186A    mov         byte ptr [ebp-5],dl
 0043186D    mov         dword ptr [ebp-4],eax
 00431870    mov         dl,1
 00431872    mov         eax,[0041D46C];TList
 00431877    call        TObject.Create;TList.Create
 0043187C    mov         edx,dword ptr [ebp-4]
 0043187F    mov         dword ptr [edx+4],eax
 00431882    mov         dl,1
 00431884    mov         eax,[0041D46C];TList
 00431889    call        TObject.Create;TList.Create
 0043188E    mov         edx,dword ptr [ebp-4]
 00431891    mov         dword ptr [edx+8],eax
 00431894    mov         ecx,dword ptr ds:[42CE08];TMetafile
 0043189A    mov         dx,3
 0043189E    mov         eax,dword ptr [ebp-4]
 004318A1    call        00431928
 004318A6    mov         ecx,dword ptr ds:[42CE08];TMetafile
 004318AC    mov         dx,0E
 004318B0    mov         eax,dword ptr [ebp-4]
 004318B3    call        00431928
 004318B8    mov         ecx,dword ptr ds:[42CF48];TBitmap
 004318BE    mov         dx,2
 004318C2    mov         eax,dword ptr [ebp-4]
 004318C5    call        00431928
 004318CA    mov         eax,dword ptr [ebp-4]
 004318CD    cmp         byte ptr [ebp-5],0
>004318D1    je          004318E2
 004318D3    call        @AfterConstruction
 004318D8    pop         dword ptr fs:[0]
 004318DF    add         esp,0C
 004318E2    mov         eax,dword ptr [ebp-4]
 004318E5    pop         ecx
 004318E6    pop         ecx
 004318E7    pop         ebp
 004318E8    ret
*}
end;

//00431928
{*procedure sub_00431928(?:?; ?:?; ?:TGraphic);
begin
 00431928    push        ebp
 00431929    mov         ebp,esp
 0043192B    add         esp,0FFFFFFF0
 0043192E    push        ebx
 0043192F    push        esi
 00431930    push        edi
 00431931    mov         dword ptr [ebp-0C],ecx
 00431934    mov         word ptr [ebp-6],dx
 00431938    mov         dword ptr [ebp-4],eax
 0043193B    mov         eax,dword ptr [ebp-4]
 0043193E    mov         eax,dword ptr [eax+4]
 00431941    mov         edx,dword ptr [ebp-0C]
 00431944    call        TList.Add
 00431949    mov         dword ptr [ebp-10],eax
 0043194C    xor         eax,eax
 0043194E    push        ebp
 0043194F    push        431973
 00431954    push        dword ptr fs:[eax]
 00431957    mov         dword ptr fs:[eax],esp
 0043195A    movzx       edx,word ptr [ebp-6]
 0043195E    mov         eax,dword ptr [ebp-4]
 00431961    mov         eax,dword ptr [eax+8]
 00431964    call        TList.Add
 00431969    xor         eax,eax
 0043196B    pop         edx
 0043196C    pop         ecx
 0043196D    pop         ecx
 0043196E    mov         dword ptr fs:[eax],edx
>00431971    jmp         00431990
>00431973    jmp         @HandleAnyException
 00431978    mov         eax,dword ptr [ebp-4]
 0043197B    mov         eax,dword ptr [eax+4]
 0043197E    mov         edx,dword ptr [ebp-10]
 00431981    call        00420094
 00431986    call        @RaiseAgain
 0043198B    call        @DoneExcept
 00431990    pop         edi
 00431991    pop         esi
 00431992    pop         ebx
 00431993    mov         esp,ebp
 00431995    pop         ebp
 00431996    ret
end;*}

//00431998
{*function sub_00431998(?:TClipboardFormats; ?:?):?;
begin
 00431998    push        ebp
 00431999    mov         ebp,esp
 0043199B    add         esp,0FFFFFFF0
 0043199E    mov         word ptr [ebp-6],dx
 004319A2    mov         dword ptr [ebp-4],eax
 004319A5    mov         eax,dword ptr [ebp-4]
 004319A8    mov         eax,dword ptr [eax+8]
 004319AB    mov         eax,dword ptr [eax+8]
 004319AE    dec         eax
 004319AF    cmp         eax,0
>004319B2    jl          004319E7
 004319B4    mov         dword ptr [ebp-10],eax
 004319B7    mov         edx,dword ptr [ebp-10]
 004319BA    mov         eax,dword ptr [ebp-4]
 004319BD    mov         eax,dword ptr [eax+8]
 004319C0    call        TList.Get
 004319C5    cmp         ax,word ptr [ebp-6]
>004319C9    jne         004319DE
 004319CB    mov         edx,dword ptr [ebp-10]
 004319CE    mov         eax,dword ptr [ebp-4]
 004319D1    mov         eax,dword ptr [eax+4]
 004319D4    call        TList.Get
 004319D9    mov         dword ptr [ebp-0C],eax
>004319DC    jmp         004319EC
 004319DE    dec         dword ptr [ebp-10]
 004319E1    cmp         dword ptr [ebp-10],0FFFFFFFF
>004319E5    jne         004319B7
 004319E7    xor         eax,eax
 004319E9    mov         dword ptr [ebp-0C],eax
 004319EC    mov         eax,dword ptr [ebp-0C]
 004319EF    mov         esp,ebp
 004319F1    pop         ebp
 004319F2    ret
end;*}

//004319F4
{*function sub_004319F4:?;
begin
 004319F4    push        ebp
 004319F5    mov         ebp,esp
 004319F7    push        ecx
 004319F8    cmp         dword ptr ds:[56C020],0;gvar_0056C020:TFileFormatsList
>004319FF    jne         00431A12
 00431A01    mov         dl,1
 00431A03    mov         eax,[004314A4];TFileFormatsList
 00431A08    call        TFileFormatsList.Create;TFileFormatsList.Create
 00431A0D    mov         [0056C020],eax;gvar_0056C020:TFileFormatsList
 00431A12    mov         eax,[0056C020];0x0 gvar_0056C020:TFileFormatsList
 00431A17    mov         dword ptr [ebp-4],eax
 00431A1A    mov         eax,dword ptr [ebp-4]
 00431A1D    pop         ecx
 00431A1E    pop         ebp
 00431A1F    ret
end;*}

//00431A20
{*function sub_00431A20:?;
begin
 00431A20    push        ebp
 00431A21    mov         ebp,esp
 00431A23    push        ecx
 00431A24    cmp         dword ptr ds:[56C01C],0;gvar_0056C01C:TClipboardFormats
>00431A2B    jne         00431A3E
 00431A2D    mov         dl,1
 00431A2F    mov         eax,[004317F8];TClipboardFormats
 00431A34    call        TClipboardFormats.Create;TClipboardFormats.Create
 00431A39    mov         [0056C01C],eax;gvar_0056C01C:TClipboardFormats
 00431A3E    mov         eax,[0056C01C];0x0 gvar_0056C01C:TClipboardFormats
 00431A43    mov         dword ptr [ebp-4],eax
 00431A46    mov         eax,dword ptr [ebp-4]
 00431A49    pop         ecx
 00431A4A    pop         ebp
 00431A4B    ret
end;*}

//00431A4C
constructor TPicture.Create;
begin
{*
 00431A4C    push        ebp
 00431A4D    mov         ebp,esp
 00431A4F    add         esp,0FFFFFFF8
 00431A52    test        dl,dl
>00431A54    je          00431A5E
 00431A56    add         esp,0FFFFFFF0
 00431A59    call        @ClassCreate
 00431A5E    mov         byte ptr [ebp-5],dl
 00431A61    mov         dword ptr [ebp-4],eax
 00431A64    xor         edx,edx
 00431A66    mov         eax,dword ptr [ebp-4]
 00431A69    call        TObject.Create
 00431A6E    call        004319F4
 00431A73    call        00431A20
 00431A78    mov         eax,dword ptr [ebp-4]
 00431A7B    cmp         byte ptr [ebp-5],0
>00431A7F    je          00431A90
 00431A81    call        @AfterConstruction
 00431A86    pop         dword ptr fs:[0]
 00431A8D    add         esp,0C
 00431A90    mov         eax,dword ptr [ebp-4]
 00431A93    pop         ecx
 00431A94    pop         ecx
 00431A95    pop         ebp
 00431A96    ret
*}
end;

//00431A98
destructor TPicture.Destroy;
begin
{*
 00431A98    push        ebp
 00431A99    mov         ebp,esp
 00431A9B    add         esp,0FFFFFFF8
 00431A9E    call        @BeforeDestruction
 00431AA3    mov         byte ptr [ebp-5],dl
 00431AA6    mov         dword ptr [ebp-4],eax
 00431AA9    mov         eax,dword ptr [ebp-4]
 00431AAC    mov         eax,dword ptr [eax+0C]
 00431AAF    call        TObject.Free
 00431AB4    mov         dl,byte ptr [ebp-5]
 00431AB7    and         dl,0FC
 00431ABA    mov         eax,dword ptr [ebp-4]
 00431ABD    call        TPersistent.Destroy
 00431AC2    cmp         byte ptr [ebp-5],0
>00431AC6    jle         00431AD0
 00431AC8    mov         eax,dword ptr [ebp-4]
 00431ACB    call        @ClassDestroy
 00431AD0    pop         ecx
 00431AD1    pop         ecx
 00431AD2    pop         ebp
 00431AD3    ret
*}
end;

//00431AD4
{*procedure sub_00431AD4(?:?);
begin
 00431AD4    push        ebp
 00431AD5    mov         ebp,esp
 00431AD7    add         esp,0FFFFFFF8
 00431ADA    mov         dword ptr [ebp-8],edx
 00431ADD    mov         dword ptr [ebp-4],eax
 00431AE0    mov         eax,dword ptr [ebp-8]
 00431AE3    call        TObject.ClassType
 00431AE8    mov         edx,eax
 00431AEA    mov         eax,dword ptr [ebp-4]
 00431AED    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00431AF0    call        @IsClass
 00431AF5    test        al,al
>00431AF7    je          00431B09
 00431AF9    mov         eax,dword ptr [ebp-4]
 00431AFC    mov         edx,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00431AFF    mov         eax,dword ptr [ebp-8]
 00431B02    mov         ecx,dword ptr [eax]
 00431B04    call        dword ptr [ecx+8]
>00431B07    jmp         00431B14
 00431B09    mov         edx,dword ptr [ebp-8]
 00431B0C    mov         eax,dword ptr [ebp-4]
 00431B0F    call        00420BD8
 00431B14    pop         ecx
 00431B15    pop         ecx
 00431B16    pop         ebp
 00431B17    ret
end;*}

//00431B18
{*procedure sub_00431B18(?:?; ?:TGraphic);
begin
 00431B18    push        ebp
 00431B19    mov         ebp,esp
 00431B1B    add         esp,0FFFFFFF8
 00431B1E    push        esi
 00431B1F    mov         dword ptr [ebp-8],edx
 00431B22    mov         dword ptr [ebp-4],eax
 00431B25    mov         eax,dword ptr [ebp-4]
 00431B28    mov         eax,dword ptr [eax+0C]
 00431B2B    mov         edx,dword ptr [ebp-8]
 00431B2E    call        @IsClass
 00431B33    test        al,al
>00431B35    jne         00431BA3
 00431B37    mov         eax,dword ptr [ebp-4]
 00431B3A    mov         eax,dword ptr [eax+0C]
 00431B3D    call        TObject.Free
 00431B42    mov         eax,dword ptr [ebp-4]
 00431B45    xor         edx,edx
 00431B47    mov         dword ptr [eax+0C],edx
 00431B4A    mov         dl,1
 00431B4C    mov         eax,dword ptr [ebp-8]
 00431B4F    call        dword ptr [eax+48]
 00431B52    mov         edx,dword ptr [ebp-4]
 00431B55    mov         dword ptr [edx+0C],eax
 00431B58    mov         eax,dword ptr [ebp-4]
 00431B5B    mov         eax,dword ptr [eax+0C]
 00431B5E    mov         edx,dword ptr [ebp-4]
 00431B61    mov         dword ptr [eax+14],edx
 00431B64    push        eax
 00431B65    mov         eax,edx
 00431B67    mov         dx,0FFFD
 00431B6B    call        @FindDynaInst
 00431B70    mov         edx,eax
 00431B72    pop         eax
 00431B73    mov         dword ptr [eax+10],edx
 00431B76    mov         eax,dword ptr [ebp-4]
 00431B79    mov         eax,dword ptr [eax+0C]
 00431B7C    mov         edx,dword ptr [ebp-4]
 00431B7F    mov         dword ptr [eax+1C],edx
 00431B82    push        eax
 00431B83    mov         eax,edx
 00431B85    mov         dx,0FFFC
 00431B89    call        @FindDynaInst
 00431B8E    mov         edx,eax
 00431B90    pop         eax
 00431B91    mov         dword ptr [eax+18],edx
 00431B94    mov         edx,dword ptr [ebp-4]
 00431B97    mov         eax,dword ptr [ebp-4]
 00431B9A    mov         si,0FFFD
 00431B9E    call        @CallDynaInst
 00431BA3    pop         esi
 00431BA4    pop         ecx
 00431BA5    pop         ecx
 00431BA6    pop         ebp
 00431BA7    ret
end;*}

//00431BA8
{*function sub_00431BA8(?:?):?;
begin
 00431BA8    push        ebp
 00431BA9    mov         ebp,esp
 00431BAB    add         esp,0FFFFFFF8
 00431BAE    mov         dword ptr [ebp-4],eax
 00431BB1    mov         edx,dword ptr ds:[42CF48];TBitmap
 00431BB7    mov         eax,dword ptr [ebp-4]
 00431BBA    call        00431B18
 00431BBF    mov         eax,dword ptr [ebp-4]
 00431BC2    mov         eax,dword ptr [eax+0C]
 00431BC5    mov         dword ptr [ebp-8],eax
 00431BC8    mov         eax,dword ptr [ebp-8]
 00431BCB    pop         ecx
 00431BCC    pop         ecx
 00431BCD    pop         ebp
 00431BCE    ret
end;*}

//00431BD0
{*function sub_00431BD0(?:TPicture):?;
begin
 00431BD0    push        ebp
 00431BD1    mov         ebp,esp
 00431BD3    add         esp,0FFFFFFF8
 00431BD6    mov         dword ptr [ebp-4],eax
 00431BD9    mov         edx,dword ptr ds:[42D08C];TIcon
 00431BDF    mov         eax,dword ptr [ebp-4]
 00431BE2    call        00431B18
 00431BE7    mov         eax,dword ptr [ebp-4]
 00431BEA    mov         eax,dword ptr [eax+0C]
 00431BED    mov         dword ptr [ebp-8],eax
 00431BF0    mov         eax,dword ptr [ebp-8]
 00431BF3    pop         ecx
 00431BF4    pop         ecx
 00431BF5    pop         ebp
 00431BF6    ret
end;*}

//00431BF8
{*procedure sub_00431BF8(?:TPicture; ?:?);
begin
 00431BF8    push        ebp
 00431BF9    mov         ebp,esp
 00431BFB    add         esp,0FFFFFFF4
 00431BFE    push        ebx
 00431BFF    push        esi
 00431C00    push        edi
 00431C01    mov         dword ptr [ebp-8],edx
 00431C04    mov         dword ptr [ebp-4],eax
 00431C07    xor         eax,eax
 00431C09    mov         dword ptr [ebp-0C],eax
 00431C0C    cmp         dword ptr [ebp-8],0
>00431C10    je          00431C63
 00431C12    mov         eax,dword ptr [ebp-8]
 00431C15    call        TObject.ClassType
 00431C1A    mov         dl,1
 00431C1C    call        dword ptr [eax+48]
 00431C1F    mov         dword ptr [ebp-0C],eax
 00431C22    mov         edx,dword ptr [ebp-8]
 00431C25    mov         eax,dword ptr [ebp-0C]
 00431C28    mov         ecx,dword ptr [eax]
 00431C2A    call        dword ptr [ecx+8]
 00431C2D    mov         eax,dword ptr [ebp-0C]
 00431C30    mov         edx,dword ptr [ebp-4]
 00431C33    mov         dword ptr [eax+14],edx
 00431C36    push        eax
 00431C37    mov         eax,edx
 00431C39    mov         dx,0FFFD
 00431C3D    call        @FindDynaInst
 00431C42    mov         edx,eax
 00431C44    pop         eax
 00431C45    mov         dword ptr [eax+10],edx
 00431C48    mov         eax,dword ptr [ebp-0C]
 00431C4B    mov         edx,dword ptr [ebp-4]
 00431C4E    mov         dword ptr [eax+1C],edx
 00431C51    push        eax
 00431C52    mov         eax,edx
 00431C54    mov         dx,0FFFC
 00431C58    call        @FindDynaInst
 00431C5D    mov         edx,eax
 00431C5F    pop         eax
 00431C60    mov         dword ptr [eax+18],edx
 00431C63    xor         eax,eax
 00431C65    push        ebp
 00431C66    push        431C9E
 00431C6B    push        dword ptr fs:[eax]
 00431C6E    mov         dword ptr fs:[eax],esp
 00431C71    mov         eax,dword ptr [ebp-4]
 00431C74    mov         eax,dword ptr [eax+0C]
 00431C77    call        TObject.Free
 00431C7C    mov         eax,dword ptr [ebp-4]
 00431C7F    mov         edx,dword ptr [ebp-0C]
 00431C82    mov         dword ptr [eax+0C],edx
 00431C85    mov         edx,dword ptr [ebp-4]
 00431C88    mov         eax,dword ptr [ebp-4]
 00431C8B    mov         si,0FFFD
 00431C8F    call        @CallDynaInst
 00431C94    xor         eax,eax
 00431C96    pop         edx
 00431C97    pop         ecx
 00431C98    pop         ecx
 00431C99    mov         dword ptr fs:[eax],edx
>00431C9C    jmp         00431CB5
>00431C9E    jmp         @HandleAnyException
 00431CA3    mov         eax,dword ptr [ebp-0C]
 00431CA6    call        TObject.Free
 00431CAB    call        @RaiseAgain
 00431CB0    call        @DoneExcept
 00431CB5    pop         edi
 00431CB6    pop         esi
 00431CB7    pop         ebx
 00431CB8    mov         esp,ebp
 00431CBA    pop         ebp
 00431CBB    ret
end;*}

//00431CBC
{*procedure sub_00431CBC(?:?; ?:LongWord; ?:THandle; ?:?);
begin
 00431CBC    push        ebp
 00431CBD    mov         ebp,esp
 00431CBF    add         esp,0FFFFFFEC
 00431CC2    push        ebx
 00431CC3    push        esi
 00431CC4    push        edi
 00431CC5    mov         dword ptr [ebp-0C],ecx
 00431CC8    mov         word ptr [ebp-6],dx
 00431CCC    mov         dword ptr [ebp-4],eax
 00431CCF    mov         dx,word ptr [ebp-6]
 00431CD3    mov         eax,[0056C01C];0x0 gvar_0056C01C:TClipboardFormats
 00431CD8    call        00431998
 00431CDD    mov         dword ptr [ebp-14],eax
 00431CE0    cmp         dword ptr [ebp-14],0
>00431CE4    jne         00431CF0
 00431CE6    mov         eax,[0056E3D8];^SUnknownClipboardFormat:TResStringRec
 00431CEB    call        InvalidGraphic
 00431CF0    mov         dl,1
 00431CF2    mov         eax,dword ptr [ebp-14]
 00431CF5    call        dword ptr [eax+48]
 00431CF8    mov         dword ptr [ebp-10],eax
 00431CFB    xor         eax,eax
 00431CFD    push        ebp
 00431CFE    push        431D41
 00431D03    push        dword ptr fs:[eax]
 00431D06    mov         dword ptr fs:[eax],esp
 00431D09    mov         eax,dword ptr [ebp-10]
 00431D0C    mov         edx,dword ptr [ebp-4]
 00431D0F    mov         dword ptr [eax+1C],edx
 00431D12    push        eax
 00431D13    mov         eax,edx
 00431D15    mov         dx,0FFFC
 00431D19    call        @FindDynaInst
 00431D1E    mov         edx,eax
 00431D20    pop         eax
 00431D21    mov         dword ptr [eax+18],edx
 00431D24    mov         eax,dword ptr [ebp+8]
 00431D27    push        eax
 00431D28    mov         ecx,dword ptr [ebp-0C]
 00431D2B    mov         dx,word ptr [ebp-6]
 00431D2F    mov         eax,dword ptr [ebp-10]
 00431D32    mov         ebx,dword ptr [eax]
 00431D34    call        dword ptr [ebx+5C]
 00431D37    xor         eax,eax
 00431D39    pop         edx
 00431D3A    pop         ecx
 00431D3B    pop         ecx
 00431D3C    mov         dword ptr fs:[eax],edx
>00431D3F    jmp         00431D58
>00431D41    jmp         @HandleAnyException
 00431D46    mov         eax,dword ptr [ebp-10]
 00431D49    call        TObject.Free
 00431D4E    call        @RaiseAgain
 00431D53    call        @DoneExcept
 00431D58    mov         eax,dword ptr [ebp-4]
 00431D5B    mov         eax,dword ptr [eax+0C]
 00431D5E    call        TObject.Free
 00431D63    mov         eax,dword ptr [ebp-4]
 00431D66    mov         edx,dword ptr [ebp-10]
 00431D69    mov         dword ptr [eax+0C],edx
 00431D6C    mov         eax,dword ptr [ebp-4]
 00431D6F    mov         eax,dword ptr [eax+0C]
 00431D72    mov         edx,dword ptr [ebp-4]
 00431D75    mov         dword ptr [eax+14],edx
 00431D78    push        eax
 00431D79    mov         eax,edx
 00431D7B    mov         dx,0FFFD
 00431D7F    call        @FindDynaInst
 00431D84    mov         edx,eax
 00431D86    pop         eax
 00431D87    mov         dword ptr [eax+10],edx
 00431D8A    mov         edx,dword ptr [ebp-4]
 00431D8D    mov         eax,dword ptr [ebp-4]
 00431D90    mov         si,0FFFD
 00431D94    call        @CallDynaInst
 00431D99    pop         edi
 00431D9A    pop         esi
 00431D9B    pop         ebx
 00431D9C    mov         esp,ebp
 00431D9E    pop         ebp
 00431D9F    ret         4
end;*}

//00431DA4
{*procedure sub_00431DA4(?:?; ?:?; ?:?; ?:?);
begin
 00431DA4    push        ebp
 00431DA5    mov         ebp,esp
 00431DA7    add         esp,0FFFFFFF4
 00431DAA    push        ebx
 00431DAB    mov         dword ptr [ebp-0C],ecx
 00431DAE    mov         dword ptr [ebp-8],edx
 00431DB1    mov         dword ptr [ebp-4],eax
 00431DB4    mov         eax,dword ptr [ebp-4]
 00431DB7    cmp         dword ptr [eax+0C],0
>00431DBB    je          00431DD2
 00431DBD    mov         eax,dword ptr [ebp+8]
 00431DC0    push        eax
 00431DC1    mov         ecx,dword ptr [ebp-0C]
 00431DC4    mov         edx,dword ptr [ebp-8]
 00431DC7    mov         eax,dword ptr [ebp-4]
 00431DCA    mov         eax,dword ptr [eax+0C]
 00431DCD    mov         ebx,dword ptr [eax]
 00431DCF    call        dword ptr [ebx+60]
 00431DD2    pop         ebx
 00431DD3    mov         esp,ebp
 00431DD5    pop         ebp
 00431DD6    ret         4
end;*}

//00431DDC
{*function sub_00431DDC(?:TPicture; ?:LongWord):?;
begin
 00431DDC    push        ebp
 00431DDD    mov         ebp,esp
 00431DDF    add         esp,0FFFFFFF8
 00431DE2    mov         word ptr [ebp-6],dx
 00431DE6    mov         dword ptr [ebp-4],eax
 00431DE9    call        00431A20
 00431DEE    mov         dx,word ptr [ebp-6]
 00431DF2    call        00431998
 00431DF7    test        eax,eax
 00431DF9    setne       byte ptr [ebp-7]
 00431DFD    mov         al,byte ptr [ebp-7]
 00431E00    pop         ecx
 00431E01    pop         ecx
 00431E02    pop         ebp
 00431E03    ret
end;*}

//00431E04
{*procedure sub_00431E04(?:?; ?:?);
begin
 00431E04    push        ebp
 00431E05    mov         ebp,esp
 00431E07    add         esp,0FFFFFFF8
 00431E0A    mov         dword ptr [ebp-8],edx
 00431E0D    mov         dword ptr [ebp-4],eax
 00431E10    mov         eax,dword ptr [ebp-4]
 00431E13    call        00431BA8
 00431E18    mov         edx,dword ptr [ebp-8]
 00431E1B    mov         ecx,dword ptr [eax]
 00431E1D    call        dword ptr [ecx+54]
 00431E20    pop         ecx
 00431E21    pop         ecx
 00431E22    pop         ebp
 00431E23    ret
end;*}

//00431E24
{*procedure sub_00431E24(?:?; ?:?);
begin
 00431E24    push        ebp
 00431E25    mov         ebp,esp
 00431E27    add         esp,0FFFFFFF8
 00431E2A    mov         dword ptr [ebp-8],edx
 00431E2D    mov         dword ptr [ebp-4],eax
 00431E30    mov         eax,dword ptr [ebp-4]
 00431E33    call        00431BA8
 00431E38    mov         edx,dword ptr [ebp-8]
 00431E3B    mov         ecx,dword ptr [eax]
 00431E3D    call        dword ptr [ecx+58]
 00431E40    pop         ecx
 00431E41    pop         ecx
 00431E42    pop         ebp
 00431E43    ret
end;*}

//00431E44
{*procedure sub_00431E44(?:?);
begin
 00431E44    push        ebp
 00431E45    mov         ebp,esp
 00431E47    add         esp,0FFFFFFF8
 00431E4A    mov         dword ptr [ebp-8],edx
 00431E4D    mov         dword ptr [ebp-4],eax
 00431E50    cmp         dword ptr [ebp-8],0
>00431E54    jne         00431E62
 00431E56    xor         edx,edx
 00431E58    mov         eax,dword ptr [ebp-4]
 00431E5B    call        00431BF8
>00431E60    jmp         00431EAE
 00431E62    mov         eax,dword ptr [ebp-8]
 00431E65    mov         edx,dword ptr ds:[42CC9C];TPicture
 00431E6B    call        @IsClass
 00431E70    test        al,al
>00431E72    je          00431E84
 00431E74    mov         eax,dword ptr [ebp-8]
 00431E77    mov         edx,dword ptr [eax+0C]
 00431E7A    mov         eax,dword ptr [ebp-4]
 00431E7D    call        00431BF8
>00431E82    jmp         00431EAE
 00431E84    mov         eax,dword ptr [ebp-8]
 00431E87    mov         edx,dword ptr ds:[42CB48];TGraphic
 00431E8D    call        @IsClass
 00431E92    test        al,al
>00431E94    je          00431EA3
 00431E96    mov         edx,dword ptr [ebp-8]
 00431E99    mov         eax,dword ptr [ebp-4]
 00431E9C    call        00431BF8
>00431EA1    jmp         00431EAE
 00431EA3    mov         edx,dword ptr [ebp-8]
 00431EA6    mov         eax,dword ptr [ebp-4]
 00431EA9    call        00420AD4
 00431EAE    pop         ecx
 00431EAF    pop         ecx
 00431EB0    pop         ebp
 00431EB1    ret
end;*}

//00431EB4
{*procedure TPicture.sub_00431EB4(?:?);
begin
 00431EB4    push        ebp
 00431EB5    mov         ebp,esp
 00431EB7    add         esp,0FFFFFFF8
 00431EBA    push        ebx
 00431EBB    mov         dword ptr [ebp-8],edx
 00431EBE    mov         dword ptr [ebp-4],eax
 00431EC1    mov         eax,dword ptr [ebp-4]
 00431EC4    cmp         word ptr [eax+12],0;TPicture.?f12:word
>00431EC9    je          00431ED7
 00431ECB    mov         ebx,dword ptr [ebp-4]
 00431ECE    mov         edx,dword ptr [ebp-4]
 00431ED1    mov         eax,dword ptr [ebx+14];TPicture.?f14:TImage
 00431ED4    call        dword ptr [ebx+10];TPicture.FOnChange
 00431ED7    mov         eax,dword ptr [ebp-4]
 00431EDA    cmp         dword ptr [eax+18],0;TPicture.FNotify:IChangeNotifier
>00431EDE    je          00431EEB
 00431EE0    mov         eax,dword ptr [ebp-4]
 00431EE3    mov         eax,dword ptr [eax+18];TPicture.FNotify:IChangeNotifier
 00431EE6    mov         edx,dword ptr [eax]
 00431EE8    call        dword ptr [edx+0C]
 00431EEB    pop         ebx
 00431EEC    pop         ecx
 00431EED    pop         ecx
 00431EEE    pop         ebp
 00431EEF    ret
end;*}

//00431EF0
{*procedure TPicture.sub_00431EF0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00431EF0    push        ebp
 00431EF1    mov         ebp,esp
 00431EF3    add         esp,0FFFFFFF4
 00431EF6    push        ebx
 00431EF7    mov         byte ptr [ebp-9],cl
 00431EFA    mov         dword ptr [ebp-8],edx
 00431EFD    mov         dword ptr [ebp-4],eax
 00431F00    mov         eax,dword ptr [ebp-4]
 00431F03    cmp         word ptr [eax+22],0;TPicture.?f22:word
>00431F08    je          00431F29
 00431F0A    mov         al,byte ptr [ebp+14]
 00431F0D    push        eax
 00431F0E    mov         al,byte ptr [ebp+10]
 00431F11    push        eax
 00431F12    mov         eax,dword ptr [ebp+0C]
 00431F15    push        eax
 00431F16    mov         eax,dword ptr [ebp+8]
 00431F19    push        eax
 00431F1A    mov         ebx,dword ptr [ebp-4]
 00431F1D    mov         cl,byte ptr [ebp-9]
 00431F20    mov         edx,dword ptr [ebp-8]
 00431F23    mov         eax,dword ptr [ebx+24];TPicture.?f24:TImage
 00431F26    call        dword ptr [ebx+20];TPicture.FOnProgress
 00431F29    pop         ebx
 00431F2A    mov         esp,ebp
 00431F2C    pop         ebp
 00431F2D    ret         10
end;*}

//00431F30
procedure TPicture.ReadData(Stream:TStream);
begin
{*
 00431F30    push        ebp
 00431F31    mov         ebp,esp
 00431F33    add         esp,0FFFFFFAC
 00431F36    push        ebx
 00431F37    push        esi
 00431F38    push        edi
 00431F39    xor         ecx,ecx
 00431F3B    mov         dword ptr [ebp-54],ecx
 00431F3E    mov         dword ptr [ebp-8],edx
 00431F41    mov         dword ptr [ebp-4],eax
 00431F44    xor         eax,eax
 00431F46    push        ebp
 00431F47    push        432052
 00431F4C    push        dword ptr fs:[eax]
 00431F4F    mov         dword ptr fs:[eax],esp
 00431F52    lea         edx,[ebp-50]
 00431F55    mov         ecx,1
 00431F5A    mov         eax,dword ptr [ebp-8]
 00431F5D    mov         ebx,dword ptr [eax]
 00431F5F    call        dword ptr [ebx+0C]
 00431F62    xor         ecx,ecx
 00431F64    mov         cl,byte ptr [ebp-50]
 00431F67    lea         edx,[ebp-4F]
 00431F6A    mov         eax,dword ptr [ebp-8]
 00431F6D    mov         ebx,dword ptr [eax]
 00431F6F    call        dword ptr [ebx+0C]
 00431F72    lea         eax,[ebp-54]
 00431F75    lea         edx,[ebp-50]
 00431F78    call        @LStrFromString
 00431F7D    mov         edx,dword ptr [ebp-54]
 00431F80    mov         eax,[0056C020];gvar_0056C020:TFileFormatsList
 00431F85    call        0043175C
 00431F8A    mov         dword ptr [ebp-10],eax
 00431F8D    xor         eax,eax
 00431F8F    mov         dword ptr [ebp-0C],eax
 00431F92    cmp         dword ptr [ebp-10],0
>00431F96    je          00431FDD
 00431F98    mov         dl,1
 00431F9A    mov         eax,dword ptr [ebp-10]
 00431F9D    call        dword ptr [eax+48]
 00431FA0    mov         dword ptr [ebp-0C],eax
 00431FA3    xor         eax,eax
 00431FA5    push        ebp
 00431FA6    push        431FC6
 00431FAB    push        dword ptr fs:[eax]
 00431FAE    mov         dword ptr fs:[eax],esp
 00431FB1    mov         edx,dword ptr [ebp-8]
 00431FB4    mov         eax,dword ptr [ebp-0C]
 00431FB7    mov         ecx,dword ptr [eax]
 00431FB9    call        dword ptr [ecx+30]
 00431FBC    xor         eax,eax
 00431FBE    pop         edx
 00431FBF    pop         ecx
 00431FC0    pop         ecx
 00431FC1    mov         dword ptr fs:[eax],edx
>00431FC4    jmp         00431FDD
>00431FC6    jmp         @HandleAnyException
 00431FCB    mov         eax,dword ptr [ebp-0C]
 00431FCE    call        TObject.Free
 00431FD3    call        @RaiseAgain
 00431FD8    call        @DoneExcept
 00431FDD    mov         eax,dword ptr [ebp-4]
 00431FE0    mov         eax,dword ptr [eax+0C]
 00431FE3    call        TObject.Free
 00431FE8    mov         eax,dword ptr [ebp-4]
 00431FEB    mov         edx,dword ptr [ebp-0C]
 00431FEE    mov         dword ptr [eax+0C],edx
 00431FF1    cmp         dword ptr [ebp-0C],0
>00431FF5    je          0043202D
 00431FF7    mov         eax,dword ptr [ebp-0C]
 00431FFA    mov         edx,dword ptr [ebp-4]
 00431FFD    mov         dword ptr [eax+14],edx
 00432000    push        eax
 00432001    mov         eax,edx
 00432003    mov         dx,0FFFD
 00432007    call        @FindDynaInst
 0043200C    mov         edx,eax
 0043200E    pop         eax
 0043200F    mov         dword ptr [eax+10],edx
 00432012    mov         eax,dword ptr [ebp-0C]
 00432015    mov         edx,dword ptr [ebp-4]
 00432018    mov         dword ptr [eax+1C],edx
 0043201B    push        eax
 0043201C    mov         eax,edx
 0043201E    mov         dx,0FFFC
 00432022    call        @FindDynaInst
 00432027    mov         edx,eax
 00432029    pop         eax
 0043202A    mov         dword ptr [eax+18],edx
 0043202D    mov         edx,dword ptr [ebp-4]
 00432030    mov         eax,dword ptr [ebp-4]
 00432033    mov         si,0FFFD
 00432037    call        @CallDynaInst
 0043203C    xor         eax,eax
 0043203E    pop         edx
 0043203F    pop         ecx
 00432040    pop         ecx
 00432041    mov         dword ptr fs:[eax],edx
 00432044    push        432059
 00432049    lea         eax,[ebp-54]
 0043204C    call        @LStrClr
 00432051    ret
>00432052    jmp         @HandleFinally
>00432057    jmp         00432049
 00432059    pop         edi
 0043205A    pop         esi
 0043205B    pop         ebx
 0043205C    mov         esp,ebp
 0043205E    pop         ebp
 0043205F    ret
*}
end;

//00432060
procedure TPicture.WriteData(Stream:TStream);
begin
{*
 00432060    push        ebp
 00432061    mov         ebp,esp
 00432063    add         esp,0FFFFFEB8
 00432069    push        ebx
 0043206A    mov         dword ptr [ebp-8],edx
 0043206D    mov         dword ptr [ebp-4],eax
 00432070    mov         eax,dword ptr [ebp-4]
 00432073    cmp         dword ptr [eax+0C],0
>00432077    je          0043209E
 00432079    lea         edx,[ebp-148]
 0043207F    mov         eax,dword ptr [ebp-4]
 00432082    mov         eax,dword ptr [eax+0C]
 00432085    mov         eax,dword ptr [eax]
 00432087    call        TObject.ClassName
 0043208C    lea         edx,[ebp-148]
 00432092    lea         eax,[ebp-48]
 00432095    mov         cl,3F
 00432097    call        @PStrNCpy
>0043209C    jmp         004320A2
 0043209E    mov         byte ptr [ebp-48],0
 004320A2    xor         ecx,ecx
 004320A4    mov         cl,byte ptr [ebp-48]
 004320A7    inc         ecx
 004320A8    lea         edx,[ebp-48]
 004320AB    mov         eax,dword ptr [ebp-8]
 004320AE    mov         ebx,dword ptr [eax]
 004320B0    call        dword ptr [ebx+10]
 004320B3    mov         eax,dword ptr [ebp-4]
 004320B6    cmp         dword ptr [eax+0C],0
>004320BA    je          004320CA
 004320BC    mov         edx,dword ptr [ebp-8]
 004320BF    mov         eax,dword ptr [ebp-4]
 004320C2    mov         eax,dword ptr [eax+0C]
 004320C5    mov         ecx,dword ptr [eax]
 004320C7    call        dword ptr [ecx+44]
 004320CA    pop         ebx
 004320CB    mov         esp,ebp
 004320CD    pop         ebp
 004320CE    ret
*}
end;

//004320D0
{*function sub_004320D0(?:?):?;
begin
 004320D0    push        ebp
 004320D1    mov         ebp,esp
 004320D3    add         esp,0FFFFFFF8
 004320D6    mov         eax,dword ptr [ebp+8]
 004320D9    mov         eax,dword ptr [eax-4]
 004320DC    cmp         dword ptr [eax+20],0
>004320E0    je          00432153
 004320E2    mov         byte ptr [ebp-1],1
 004320E6    mov         eax,dword ptr [ebp+8]
 004320E9    mov         eax,dword ptr [eax-4]
 004320EC    mov         eax,dword ptr [eax+20]
 004320EF    mov         edx,dword ptr ds:[42CC9C];TPicture
 004320F5    call        @IsClass
 004320FA    test        al,al
>004320FC    je          00432161
 004320FE    mov         eax,dword ptr [ebp+8]
 00432101    mov         eax,dword ptr [eax-4]
 00432104    mov         eax,dword ptr [eax+20]
 00432107    mov         dword ptr [ebp-8],eax
 0043210A    mov         eax,dword ptr [ebp+8]
 0043210D    mov         eax,dword ptr [eax-8]
 00432110    mov         eax,dword ptr [eax+0C]
 00432113    mov         edx,dword ptr [ebp-8]
 00432116    cmp         eax,dword ptr [edx+0C]
>00432119    je          00432148
 0043211B    mov         eax,dword ptr [ebp+8]
 0043211E    mov         eax,dword ptr [eax-8]
 00432121    cmp         dword ptr [eax+0C],0
>00432125    je          0043214C
 00432127    mov         eax,dword ptr [ebp-8]
 0043212A    cmp         dword ptr [eax+0C],0
>0043212E    je          0043214C
 00432130    mov         eax,dword ptr [ebp+8]
 00432133    mov         eax,dword ptr [eax-8]
 00432136    mov         eax,dword ptr [eax+0C]
 00432139    mov         edx,dword ptr [ebp-8]
 0043213C    mov         edx,dword ptr [edx+0C]
 0043213F    mov         ecx,dword ptr [eax]
 00432141    call        dword ptr [ecx+18]
 00432144    test        al,al
>00432146    je          0043214C
 00432148    xor         eax,eax
>0043214A    jmp         0043214E
 0043214C    mov         al,1
 0043214E    mov         byte ptr [ebp-1],al
>00432151    jmp         00432161
 00432153    mov         eax,dword ptr [ebp+8]
 00432156    mov         eax,dword ptr [eax-8]
 00432159    cmp         dword ptr [eax+0C],0
 0043215D    setne       byte ptr [ebp-1]
 00432161    mov         al,byte ptr [ebp-1]
 00432164    pop         ecx
 00432165    pop         ecx
 00432166    pop         ebp
 00432167    ret
end;*}

//00432168
procedure TPicture.DefineProperties(Filer:TFiler);
begin
{*
 00432168    push        ebp
 00432169    mov         ebp,esp
 0043216B    add         esp,0FFFFFFF8
 0043216E    push        ebx
 0043216F    mov         dword ptr [ebp-4],edx
 00432172    mov         dword ptr [ebp-8],eax
 00432175    mov         eax,dword ptr [ebp-8]
 00432178    push        eax
 00432179    push        431F30;TPicture.ReadData
 0043217E    mov         eax,dword ptr [ebp-8]
 00432181    push        eax
 00432182    push        432060;TPicture.WriteData
 00432187    push        ebp
 00432188    call        004320D0
 0043218D    pop         ecx
 0043218E    mov         ecx,eax
 00432190    mov         edx,4321AC;'Data'
 00432195    mov         eax,dword ptr [ebp-4]
 00432198    mov         ebx,dword ptr [eax]
 0043219A    call        dword ptr [ebx+8]
 0043219D    pop         ebx
 0043219E    pop         ecx
 0043219F    pop         ecx
 004321A0    pop         ebp
 004321A1    ret
*}
end;

//004321B4
{*function sub_004321B4(?:TPicture):?;
begin
 004321B4    push        ebp
 004321B5    mov         ebp,esp
 004321B7    add         esp,0FFFFFFF8
 004321BA    mov         dword ptr [ebp-4],eax
 004321BD    xor         eax,eax
 004321BF    mov         dword ptr [ebp-8],eax
 004321C2    mov         eax,dword ptr [ebp-4]
 004321C5    cmp         dword ptr [eax+0C],0
>004321C9    je          004321D9
 004321CB    mov         eax,dword ptr [ebp-4]
 004321CE    mov         eax,dword ptr [eax+0C]
 004321D1    mov         edx,dword ptr [eax]
 004321D3    call        dword ptr [edx+2C]
 004321D6    mov         dword ptr [ebp-8],eax
 004321D9    mov         eax,dword ptr [ebp-8]
 004321DC    pop         ecx
 004321DD    pop         ecx
 004321DE    pop         ebp
 004321DF    ret
end;*}

//004321E0
{*function sub_004321E0(?:TPicture):?;
begin
 004321E0    push        ebp
 004321E1    mov         ebp,esp
 004321E3    add         esp,0FFFFFFF8
 004321E6    mov         dword ptr [ebp-4],eax
 004321E9    xor         eax,eax
 004321EB    mov         dword ptr [ebp-8],eax
 004321EE    mov         eax,dword ptr [ebp-4]
 004321F1    cmp         dword ptr [eax+0C],0
>004321F5    je          00432205
 004321F7    mov         eax,dword ptr [ebp-4]
 004321FA    mov         eax,dword ptr [eax+0C]
 004321FD    mov         edx,dword ptr [eax]
 004321FF    call        dword ptr [edx+20]
 00432202    mov         dword ptr [ebp-8],eax
 00432205    mov         eax,dword ptr [ebp-8]
 00432208    pop         ecx
 00432209    pop         ecx
 0043220A    pop         ebp
 0043220B    ret
end;*}

//0043220C
destructor TMetafileImage.Destroy;
begin
{*
 0043220C    push        ebp
 0043220D    mov         ebp,esp
 0043220F    add         esp,0FFFFFFF8
 00432212    call        @BeforeDestruction
 00432217    mov         byte ptr [ebp-5],dl
 0043221A    mov         dword ptr [ebp-4],eax
 0043221D    mov         eax,dword ptr [ebp-4]
 00432220    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>00432224    je          00432232
 00432226    mov         eax,dword ptr [ebp-4]
 00432229    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0043222C    push        eax
 0043222D    call        gdi32.DeleteEnhMetaFile
 00432232    mov         eax,dword ptr [ebp-4]
 00432235    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 00432238    call        0042D164
 0043223D    mov         dl,byte ptr [ebp-5]
 00432240    and         dl,0FC
 00432243    mov         eax,dword ptr [ebp-4]
 00432246    call        TObject.Destroy
 0043224B    cmp         byte ptr [ebp-5],0
>0043224F    jle         00432259
 00432251    mov         eax,dword ptr [ebp-4]
 00432254    call        @ClassDestroy
 00432259    pop         ecx
 0043225A    pop         ecx
 0043225B    pop         ebp
 0043225C    ret
*}
end;

//00432260
procedure sub_00432260;
begin
{*
 00432260    push        ebp
 00432261    mov         ebp,esp
 00432263    push        ecx
 00432264    mov         dword ptr [ebp-4],eax
 00432267    pop         ecx
 00432268    pop         ebp
 00432269    ret
*}
end;

//0043226C
constructor TMetafile.Create;
begin
{*
 0043226C    push        ebp
 0043226D    mov         ebp,esp
 0043226F    add         esp,0FFFFFFF8
 00432272    test        dl,dl
>00432274    je          0043227E
 00432276    add         esp,0FFFFFFF0
 00432279    call        @ClassCreate
 0043227E    mov         byte ptr [ebp-5],dl
 00432281    mov         dword ptr [ebp-4],eax
 00432284    xor         edx,edx
 00432286    mov         eax,dword ptr [ebp-4]
 00432289    call        0043105C
 0043228E    mov         eax,dword ptr [ebp-4]
 00432291    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 00432295    mov         eax,dword ptr [ebp-4]
 00432298    mov         byte ptr [eax+21],1;TMetafile.FTransparent:Boolean
 0043229C    xor         edx,edx
 0043229E    mov         eax,dword ptr [ebp-4]
 004322A1    mov         ecx,dword ptr [eax]
 004322A3    call        dword ptr [ecx+8];TMetafile.sub_00432304
 004322A6    mov         eax,dword ptr [ebp-4]
 004322A9    cmp         byte ptr [ebp-5],0
>004322AD    je          004322BE
 004322AF    call        @AfterConstruction
 004322B4    pop         dword ptr fs:[0]
 004322BB    add         esp,0C
 004322BE    mov         eax,dword ptr [ebp-4]
 004322C1    pop         ecx
 004322C2    pop         ecx
 004322C3    pop         ebp
 004322C4    ret
*}
end;

//004322C8
destructor TMetafile.Destroy;
begin
{*
 004322C8    push        ebp
 004322C9    mov         ebp,esp
 004322CB    add         esp,0FFFFFFF8
 004322CE    call        @BeforeDestruction
 004322D3    mov         byte ptr [ebp-5],dl
 004322D6    mov         dword ptr [ebp-4],eax
 004322D9    mov         eax,dword ptr [ebp-4]
 004322DC    mov         eax,dword ptr [eax+28]
 004322DF    call        004336F8
 004322E4    mov         dl,byte ptr [ebp-5]
 004322E7    and         dl,0FC
 004322EA    mov         eax,dword ptr [ebp-4]
 004322ED    call        TPersistent.Destroy
 004322F2    cmp         byte ptr [ebp-5],0
>004322F6    jle         00432300
 004322F8    mov         eax,dword ptr [ebp-4]
 004322FB    call        @ClassDestroy
 00432300    pop         ecx
 00432301    pop         ecx
 00432302    pop         ebp
 00432303    ret
*}
end;

//00432304
{*procedure sub_00432304(?:?);
begin
 00432304    push        ebp
 00432305    mov         ebp,esp
 00432307    add         esp,0FFFFFFF4
 0043230A    mov         dword ptr [ebp-8],edx
 0043230D    mov         dword ptr [ebp-4],eax
 00432310    cmp         dword ptr [ebp-8],0
>00432314    je          0043232C
 00432316    mov         eax,dword ptr [ebp-8]
 00432319    mov         edx,dword ptr ds:[42CE08];TMetafile
 0043231F    call        @IsClass
 00432324    test        al,al
>00432326    je          004323C7
 0043232C    xor         eax,eax
 0043232E    mov         dword ptr [ebp-0C],eax
 00432331    mov         eax,dword ptr [ebp-4]
 00432334    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432338    je          00432351
 0043233A    mov         eax,dword ptr [ebp-4]
 0043233D    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432340    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 00432343    mov         dword ptr [ebp-0C],eax
 00432346    mov         eax,dword ptr [ebp-4]
 00432349    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0043234C    call        004336F8
 00432351    cmp         dword ptr [ebp-8],0
>00432355    je          00432371
 00432357    mov         eax,dword ptr [ebp-8]
 0043235A    mov         eax,dword ptr [eax+28]
 0043235D    mov         edx,dword ptr [ebp-4]
 00432360    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 00432363    mov         eax,dword ptr [ebp-8]
 00432366    mov         al,byte ptr [eax+2C]
 00432369    mov         edx,dword ptr [ebp-4]
 0043236C    mov         byte ptr [edx+2C],al;TMetafile.FEnhanced:Boolean
>0043236F    jmp         0043238A
 00432371    mov         dl,1
 00432373    mov         eax,[0042CDA8];TMetafileImage
 00432378    call        TObject.Create;TMetafileImage.Create
 0043237D    mov         edx,dword ptr [ebp-4]
 00432380    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 00432383    mov         eax,dword ptr [ebp-4]
 00432386    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 0043238A    mov         eax,dword ptr [ebp-4]
 0043238D    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432390    call        004336E8
 00432395    mov         eax,dword ptr [ebp-4]
 00432398    mov         edx,dword ptr [eax]
 0043239A    call        dword ptr [edx+24];TMetafile.sub_0043252C
 0043239D    cmp         eax,dword ptr [ebp-0C]
>004323A0    je          004323AE
 004323A2    mov         eax,dword ptr [ebp-4]
 004323A5    mov         edx,dword ptr [eax]
 004323A7    call        dword ptr [edx+24];TMetafile.sub_0043252C
 004323AA    test        eax,eax
>004323AC    jne         004323B2
 004323AE    xor         eax,eax
>004323B0    jmp         004323B4
 004323B2    mov         al,1
 004323B4    mov         edx,dword ptr [ebp-4]
 004323B7    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 004323BA    mov         edx,dword ptr [ebp-4]
 004323BD    mov         eax,dword ptr [ebp-4]
 004323C0    mov         ecx,dword ptr [eax]
 004323C2    call        dword ptr [ecx+10];TMetafile.sub_004310A0
>004323C5    jmp         004323D2
 004323C7    mov         edx,dword ptr [ebp-8]
 004323CA    mov         eax,dword ptr [ebp-4]
 004323CD    call        00420AD4
 004323D2    mov         esp,ebp
 004323D4    pop         ebp
 004323D5    ret
end;*}

//004323D8
{*procedure sub_004323D8(?:?; ?:?);
begin
 004323D8    push        ebp
 004323D9    mov         ebp,esp
 004323DB    add         esp,0FFFFFFDC
 004323DE    push        esi
 004323DF    push        edi
 004323E0    mov         dword ptr [ebp-0C],ecx
 004323E3    mov         dword ptr [ebp-8],edx
 004323E6    mov         dword ptr [ebp-4],eax
 004323E9    mov         eax,dword ptr [ebp-4]
 004323EC    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>004323F0    je          00432479
 004323F6    mov         eax,dword ptr [ebp-4]
 004323F9    mov         edx,dword ptr [eax]
 004323FB    call        dword ptr [edx+24];TMetafile.sub_0043252C
 004323FE    mov         dword ptr [ebp-10],eax
 00432401    xor         eax,eax
 00432403    mov         dword ptr [ebp-14],eax
 00432406    cmp         dword ptr [ebp-10],0
>0043240A    je          00432431
 0043240C    push        0FF
 0043240E    mov         eax,dword ptr [ebp-10]
 00432411    push        eax
 00432412    mov         eax,dword ptr [ebp-8]
 00432415    call        0042F6A0
 0043241A    push        eax
 0043241B    call        gdi32.SelectPalette
 00432420    mov         dword ptr [ebp-14],eax
 00432423    mov         eax,dword ptr [ebp-8]
 00432426    call        0042F6A0
 0043242B    push        eax
 0043242C    call        gdi32.RealizePalette
 00432431    mov         eax,dword ptr [ebp-0C]
 00432434    mov         esi,eax
 00432436    lea         edi,[ebp-24]
 00432439    movs        dword ptr [edi],dword ptr [esi]
 0043243A    movs        dword ptr [edi],dword ptr [esi]
 0043243B    movs        dword ptr [edi],dword ptr [esi]
 0043243C    movs        dword ptr [edi],dword ptr [esi]
 0043243D    dec         dword ptr [ebp-1C]
 00432440    dec         dword ptr [ebp-18]
 00432443    lea         eax,[ebp-24]
 00432446    push        eax
 00432447    mov         eax,dword ptr [ebp-4]
 0043244A    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0043244D    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00432450    push        eax
 00432451    mov         eax,dword ptr [ebp-8]
 00432454    call        0042F6A0
 00432459    push        eax
 0043245A    call        gdi32.PlayEnhMetaFile
 0043245F    cmp         dword ptr [ebp-10],0
>00432463    je          00432479
 00432465    push        0FF
 00432467    mov         eax,dword ptr [ebp-14]
 0043246A    push        eax
 0043246B    mov         eax,dword ptr [ebp-8]
 0043246E    call        0042F6A0
 00432473    push        eax
 00432474    call        gdi32.SelectPalette
 00432479    pop         edi
 0043247A    pop         esi
 0043247B    mov         esp,ebp
 0043247D    pop         ebp
 0043247E    ret
end;*}

//00432480
{*function sub_00432480:?;
begin
 00432480    push        ebp
 00432481    mov         ebp,esp
 00432483    add         esp,0FFFFFFF8
 00432486    mov         dword ptr [ebp-4],eax
 00432489    mov         eax,dword ptr [ebp-4]
 0043248C    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
 00432490    sete        byte ptr [ebp-5]
 00432494    mov         al,byte ptr [ebp-5]
 00432497    pop         ecx
 00432498    pop         ecx
 00432499    pop         ebp
 0043249A    ret
end;*}

//0043249C
{*function sub_0043249C:?;
begin
 0043249C    push        ebp
 0043249D    mov         ebp,esp
 0043249F    add         esp,0FFFFFF90
 004324A2    mov         dword ptr [ebp-4],eax
 004324A5    mov         eax,dword ptr [ebp-4]
 004324A8    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>004324AC    jne         004324B6
 004324AE    mov         eax,dword ptr [ebp-4]
 004324B1    call        004326F0
 004324B6    mov         eax,dword ptr [ebp-4]
 004324B9    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 004324BC    mov         dword ptr [ebp-0C],eax
 004324BF    mov         eax,dword ptr [ebp-0C]
 004324C2    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>004324C7    jne         00432509
 004324C9    mov         eax,dword ptr [ebp-0C]
 004324CC    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>004324D0    jne         004324DD
 004324D2    mov         eax,dword ptr [ebp-0C]
 004324D5    mov         eax,dword ptr [eax+20];TMetafileImage.FTempHeight:Integer
 004324D8    mov         dword ptr [ebp-8],eax
>004324DB    jmp         00432523
 004324DD    lea         eax,[ebp-70]
 004324E0    push        eax
 004324E1    push        64
 004324E3    mov         eax,dword ptr [ebp-0C]
 004324E6    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 004324E9    push        eax
 004324EA    call        gdi32.GetEnhMetaFileHeader
 004324EF    imul        eax,dword ptr [ebp-1C],64
 004324F3    push        eax
 004324F4    mov         eax,dword ptr [ebp-24]
 004324F7    push        eax
 004324F8    mov         eax,dword ptr [ebp-0C]
 004324FB    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 004324FE    push        eax
 004324FF    call        kernel32.MulDiv
 00432504    mov         dword ptr [ebp-8],eax
>00432507    jmp         00432523
 00432509    push        9EC
 0043250E    mov         eax,[00571AC0];0x0 gvar_00571AC0
 00432513    push        eax
 00432514    mov         eax,dword ptr [ebp-0C]
 00432517    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 0043251A    push        eax
 0043251B    call        kernel32.MulDiv
 00432520    mov         dword ptr [ebp-8],eax
 00432523    mov         eax,dword ptr [ebp-8]
 00432526    mov         esp,ebp
 00432528    pop         ebp
 00432529    ret
end;*}

//0043252C
{*function sub_0043252C:?;
begin
 0043252C    push        ebp
 0043252D    mov         ebp,esp
 0043252F    add         esp,0FFFFFBF0
 00432535    mov         dword ptr [ebp-4],eax
 00432538    xor         eax,eax
 0043253A    mov         dword ptr [ebp-8],eax
 0043253D    mov         eax,dword ptr [ebp-4]
 00432540    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432544    je          004325EF
 0043254A    mov         eax,dword ptr [ebp-4]
 0043254D    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432550    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>00432554    je          004325EF
 0043255A    mov         eax,dword ptr [ebp-4]
 0043255D    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432560    cmp         dword ptr [eax+14],0;TMetafileImage.FPalette:HPALETTE
>00432564    jne         004325E3
 00432566    push        0
 00432568    push        0
 0043256A    mov         eax,dword ptr [ebp-4]
 0043256D    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432570    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00432573    push        eax
 00432574    call        gdi32.GetEnhMetaFilePaletteEntries
 00432579    mov         dword ptr [ebp-0C],eax
 0043257C    cmp         dword ptr [ebp-0C],0
>00432580    je          004325EF
 00432582    cmp         dword ptr [ebp-0C],100
>00432589    jle         00432592
 0043258B    and         dword ptr [ebp-0C],0FF
 00432592    mov         eax,dword ptr [ebp-4]
 00432595    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432598    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 0043259B    call        0042D164
 004325A0    mov         word ptr [ebp-410],300
 004325A9    mov         ax,word ptr [ebp-0C]
 004325AD    mov         word ptr [ebp-40E],ax
 004325B4    lea         eax,[ebp-40C]
 004325BA    push        eax
 004325BB    mov         eax,dword ptr [ebp-0C]
 004325BE    push        eax
 004325BF    mov         eax,dword ptr [ebp-4]
 004325C2    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 004325C5    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 004325C8    push        eax
 004325C9    call        gdi32.GetEnhMetaFilePaletteEntries
 004325CE    lea         eax,[ebp-410]
 004325D4    push        eax
 004325D5    call        gdi32.CreatePalette
 004325DA    mov         edx,dword ptr [ebp-4]
 004325DD    mov         edx,dword ptr [edx+28];TMetafile.FImage:TMetafileImage
 004325E0    mov         dword ptr [edx+14],eax;TMetafileImage.FPalette:HPALETTE
 004325E3    mov         eax,dword ptr [ebp-4]
 004325E6    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 004325E9    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 004325EC    mov         dword ptr [ebp-8],eax
 004325EF    mov         eax,dword ptr [ebp-8]
 004325F2    mov         esp,ebp
 004325F4    pop         ebp
 004325F5    ret
end;*}

//004325F8
{*function sub_004325F8:?;
begin
 004325F8    push        ebp
 004325F9    mov         ebp,esp
 004325FB    add         esp,0FFFFFF90
 004325FE    mov         dword ptr [ebp-4],eax
 00432601    mov         eax,dword ptr [ebp-4]
 00432604    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432608    jne         00432612
 0043260A    mov         eax,dword ptr [ebp-4]
 0043260D    call        004326F0
 00432612    mov         eax,dword ptr [ebp-4]
 00432615    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432618    mov         dword ptr [ebp-0C],eax
 0043261B    mov         eax,dword ptr [ebp-0C]
 0043261E    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>00432623    jne         00432665
 00432625    mov         eax,dword ptr [ebp-0C]
 00432628    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0043262C    jne         00432639
 0043262E    mov         eax,dword ptr [ebp-0C]
 00432631    mov         eax,dword ptr [eax+1C];TMetafileImage.FTempWidth:Integer
 00432634    mov         dword ptr [ebp-8],eax
>00432637    jmp         0043267F
 00432639    lea         eax,[ebp-70]
 0043263C    push        eax
 0043263D    push        64
 0043263F    mov         eax,dword ptr [ebp-0C]
 00432642    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00432645    push        eax
 00432646    call        gdi32.GetEnhMetaFileHeader
 0043264B    imul        eax,dword ptr [ebp-20],64
 0043264F    push        eax
 00432650    mov         eax,dword ptr [ebp-28]
 00432653    push        eax
 00432654    mov         eax,dword ptr [ebp-0C]
 00432657    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 0043265A    push        eax
 0043265B    call        kernel32.MulDiv
 00432660    mov         dword ptr [ebp-8],eax
>00432663    jmp         0043267F
 00432665    push        9EC
 0043266A    mov         eax,[00571AC0];0x0 gvar_00571AC0
 0043266F    push        eax
 00432670    mov         eax,dword ptr [ebp-0C]
 00432673    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 00432676    push        eax
 00432677    call        kernel32.MulDiv
 0043267C    mov         dword ptr [ebp-8],eax
 0043267F    mov         eax,dword ptr [ebp-8]
 00432682    mov         esp,ebp
 00432684    pop         ebp
 00432685    ret
end;*}

//00432688
{*procedure sub_00432688(?:?);
begin
 00432688    push        ebp
 00432689    mov         ebp,esp
 0043268B    add         esp,0FFFFFFF8
 0043268E    mov         dword ptr [ebp-8],edx
 00432691    mov         dword ptr [ebp-4],eax
 00432694    mov         edx,dword ptr [ebp-8]
 00432697    mov         eax,dword ptr [ebp-4]
 0043269A    call        00432DF4
 0043269F    test        al,al
>004326A1    je          004326B0
 004326A3    mov         edx,dword ptr [ebp-8]
 004326A6    mov         eax,dword ptr [ebp-4]
 004326A9    call        004327A4
>004326AE    jmp         004326CE
 004326B0    mov         eax,dword ptr [ebp-8]
 004326B3    mov         edx,dword ptr [eax]
 004326B5    call        dword ptr [edx]
 004326B7    push        eax
 004326B8    mov         eax,dword ptr [ebp-8]
 004326BB    call        TStream.GetPosition
 004326C0    pop         ecx
 004326C1    sub         ecx,eax
 004326C3    mov         edx,dword ptr [ebp-8]
 004326C6    mov         eax,dword ptr [ebp-4]
 004326C9    call        0043288C
 004326CE    mov         eax,dword ptr [ebp-4]
 004326D1    mov         edx,dword ptr [eax]
 004326D3    call        dword ptr [edx+24];TMetafile.sub_0043252C
 004326D6    test        eax,eax
 004326D8    setne       al
 004326DB    mov         edx,dword ptr [ebp-4]
 004326DE    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 004326E1    mov         edx,dword ptr [ebp-4]
 004326E4    mov         eax,dword ptr [ebp-4]
 004326E7    mov         ecx,dword ptr [eax]
 004326E9    call        dword ptr [ecx+10];TMetafile.sub_004310A0
 004326EC    pop         ecx
 004326ED    pop         ecx
 004326EE    pop         ebp
 004326EF    ret
end;*}

//004326F0
procedure sub_004326F0(?:TMetafile);
begin
{*
 004326F0    push        ebp
 004326F1    mov         ebp,esp
 004326F3    push        ecx
 004326F4    mov         dword ptr [ebp-4],eax
 004326F7    mov         eax,dword ptr [ebp-4]
 004326FA    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 004326FD    call        004336F8
 00432702    mov         dl,1
 00432704    mov         eax,[0042CDA8];TMetafileImage
 00432709    call        TObject.Create;TMetafileImage.Create
 0043270E    mov         edx,dword ptr [ebp-4]
 00432711    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 00432714    mov         eax,dword ptr [ebp-4]
 00432717    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0043271A    call        004336E8
 0043271F    pop         ecx
 00432720    pop         ebp
 00432721    ret
*}
end;

//00432724
{*procedure sub_00432724(?:?);
begin
 00432724    push        ebp
 00432725    mov         ebp,esp
 00432727    add         esp,0FFFFFFF4
 0043272A    push        ebx
 0043272B    mov         dword ptr [ebp-8],edx
 0043272E    mov         dword ptr [ebp-4],eax
 00432731    lea         edx,[ebp-0C]
 00432734    mov         ecx,4
 00432739    mov         eax,dword ptr [ebp-8]
 0043273C    mov         ebx,dword ptr [eax]
 0043273E    call        dword ptr [ebx+0C]
 00432741    cmp         dword ptr [ebp-0C],4
>00432745    jg          00432753
 00432747    xor         edx,edx
 00432749    mov         eax,dword ptr [ebp-4]
 0043274C    mov         ecx,dword ptr [eax]
 0043274E    call        dword ptr [ecx+8];TMetafile.sub_00432304
>00432751    jmp         00432780
 00432753    mov         edx,dword ptr [ebp-8]
 00432756    mov         eax,dword ptr [ebp-4]
 00432759    call        00432DF4
 0043275E    test        al,al
>00432760    je          0043276F
 00432762    mov         edx,dword ptr [ebp-8]
 00432765    mov         eax,dword ptr [ebp-4]
 00432768    call        004327A4
>0043276D    jmp         00432780
 0043276F    mov         ecx,dword ptr [ebp-0C]
 00432772    sub         ecx,4
 00432775    mov         edx,dword ptr [ebp-8]
 00432778    mov         eax,dword ptr [ebp-4]
 0043277B    call        0043288C
 00432780    mov         eax,dword ptr [ebp-4]
 00432783    mov         edx,dword ptr [eax]
 00432785    call        dword ptr [edx+24];TMetafile.sub_0043252C
 00432788    test        eax,eax
 0043278A    setne       al
 0043278D    mov         edx,dword ptr [ebp-4]
 00432790    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 00432793    mov         edx,dword ptr [ebp-4]
 00432796    mov         eax,dword ptr [ebp-4]
 00432799    mov         ecx,dword ptr [eax]
 0043279B    call        dword ptr [ecx+10];TMetafile.sub_004310A0
 0043279E    pop         ebx
 0043279F    mov         esp,ebp
 004327A1    pop         ebp
 004327A2    ret
end;*}

//004327A4
{*procedure sub_004327A4(?:TMetafile; ?:?);
begin
 004327A4    push        ebp
 004327A5    mov         ebp,esp
 004327A7    add         esp,0FFFFFF8C
 004327AA    mov         dword ptr [ebp-8],edx
 004327AD    mov         dword ptr [ebp-4],eax
 004327B0    mov         eax,dword ptr [ebp-4]
 004327B3    call        004326F0
 004327B8    lea         edx,[ebp-74]
 004327BB    mov         ecx,64
 004327C0    mov         eax,dword ptr [ebp-8]
 004327C3    call        TStream.ReadBuffer
 004327C8    cmp         dword ptr [ebp-4C],464D4520
>004327CF    je          004327D6
 004327D1    call        InvalidMetafile
 004327D6    mov         eax,dword ptr [ebp-44]
 004327D9    call        @GetMem
 004327DE    mov         dword ptr [ebp-0C],eax
 004327E1    mov         eax,dword ptr [ebp-4]
 004327E4    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 004327E7    mov         dword ptr [ebp-10],eax
 004327EA    xor         eax,eax
 004327EC    push        ebp
 004327ED    push        43287E
 004327F2    push        dword ptr fs:[eax]
 004327F5    mov         dword ptr fs:[eax],esp
 004327F8    mov         edx,dword ptr [ebp-0C]
 004327FB    lea         eax,[ebp-74]
 004327FE    mov         ecx,64
 00432803    call        Move
 00432808    mov         ecx,dword ptr [ebp-44]
 0043280B    sub         ecx,64
 0043280E    mov         edx,dword ptr [ebp-0C]
 00432811    add         edx,64
 00432814    mov         eax,dword ptr [ebp-8]
 00432817    call        TStream.ReadBuffer
 0043281C    mov         eax,dword ptr [ebp-0C]
 0043281F    push        eax
 00432820    mov         eax,dword ptr [ebp-44]
 00432823    push        eax
 00432824    call        gdi32.SetEnhMetaFileBits
 00432829    mov         edx,dword ptr [ebp-10]
 0043282C    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 0043282F    mov         eax,dword ptr [ebp-10]
 00432832    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>00432836    jne         0043283D
 00432838    call        InvalidMetafile
 0043283D    mov         eax,dword ptr [ebp-10]
 00432840    mov         word ptr [eax+18],0;TMetafileImage.FInch:word
 00432846    mov         eax,dword ptr [ebp-54]
 00432849    sub         eax,dword ptr [ebp-5C]
 0043284C    mov         edx,dword ptr [ebp-10]
 0043284F    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 00432852    mov         eax,dword ptr [ebp-50]
 00432855    sub         eax,dword ptr [ebp-58]
 00432858    mov         edx,dword ptr [ebp-10]
 0043285B    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 0043285E    mov         eax,dword ptr [ebp-4]
 00432861    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 00432865    xor         eax,eax
 00432867    pop         edx
 00432868    pop         ecx
 00432869    pop         ecx
 0043286A    mov         dword ptr fs:[eax],edx
 0043286D    push        432885
 00432872    mov         edx,dword ptr [ebp-44]
 00432875    mov         eax,dword ptr [ebp-0C]
 00432878    call        @FreeMem
 0043287D    ret
>0043287E    jmp         @HandleFinally
>00432883    jmp         00432872
 00432885    mov         esp,ebp
 00432887    pop         ebp
 00432888    ret
end;*}

//0043288C
{*procedure sub_0043288C(?:TMetafile; ?:?; ?:?);
begin
 0043288C    push        ebp
 0043288D    mov         ebp,esp
 0043288F    add         esp,0FFFFFF60
 00432895    push        ebx
 00432896    mov         dword ptr [ebp-0C],ecx
 00432899    mov         dword ptr [ebp-8],edx
 0043289C    mov         dword ptr [ebp-4],eax
 0043289F    mov         eax,dword ptr [ebp-4]
 004328A2    call        004326F0
 004328A7    lea         edx,[ebp-2A]
 004328AA    mov         ecx,16
 004328AF    mov         eax,dword ptr [ebp-8]
 004328B2    mov         ebx,dword ptr [eax]
 004328B4    call        dword ptr [ebx+0C]
 004328B7    cmp         dword ptr [ebp-2A],9AC6CDD7
>004328BE    jne         004328CE
 004328C0    lea         eax,[ebp-2A]
 004328C3    call        00430B24
 004328C8    cmp         ax,word ptr [ebp-16]
>004328CC    je          004328D3
 004328CE    call        InvalidMetafile
 004328D3    sub         dword ptr [ebp-0C],16
 004328D7    mov         eax,dword ptr [ebp-0C]
 004328DA    call        @GetMem
 004328DF    mov         dword ptr [ebp-10],eax
 004328E2    mov         eax,dword ptr [ebp-4]
 004328E5    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 004328E8    mov         dword ptr [ebp-14],eax
 004328EB    xor         eax,eax
 004328ED    push        ebp
 004328EE    push        432A1F
 004328F3    push        dword ptr fs:[eax]
 004328F6    mov         dword ptr fs:[eax],esp
 004328F9    mov         edx,dword ptr [ebp-10]
 004328FC    mov         ecx,dword ptr [ebp-0C]
 004328FF    mov         eax,dword ptr [ebp-8]
 00432902    mov         ebx,dword ptr [eax]
 00432904    call        dword ptr [ebx+0C]
 00432907    mov         eax,dword ptr [ebp-4]
 0043290A    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0043290D    mov         dx,word ptr [ebp-1C]
 00432911    mov         word ptr [eax+18],dx;TMetafileImage.FInch:word
 00432915    cmp         word ptr [ebp-1C],0
>0043291A    jne         00432922
 0043291C    mov         word ptr [ebp-1C],60
 00432922    movzx       eax,word ptr [ebp-1C]
 00432926    push        eax
 00432927    push        9EC
 0043292C    movsx       eax,word ptr [ebp-20]
 00432930    movsx       edx,word ptr [ebp-24]
 00432934    sub         eax,edx
 00432936    push        eax
 00432937    call        kernel32.MulDiv
 0043293C    mov         edx,dword ptr [ebp-14]
 0043293F    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 00432942    movzx       eax,word ptr [ebp-1C]
 00432946    push        eax
 00432947    push        9EC
 0043294C    movsx       eax,word ptr [ebp-1E]
 00432950    movsx       edx,word ptr [ebp-22]
 00432954    sub         eax,edx
 00432956    push        eax
 00432957    call        kernel32.MulDiv
 0043295C    mov         edx,dword ptr [ebp-14]
 0043295F    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 00432962    mov         dword ptr [ebp-3A],8
 00432969    xor         eax,eax
 0043296B    mov         dword ptr [ebp-36],eax
 0043296E    xor         eax,eax
 00432970    mov         dword ptr [ebp-32],eax
 00432973    xor         eax,eax
 00432975    mov         dword ptr [ebp-2E],eax
 00432978    lea         eax,[ebp-3A]
 0043297B    push        eax
 0043297C    push        0
 0043297E    mov         eax,dword ptr [ebp-10]
 00432981    push        eax
 00432982    mov         eax,dword ptr [ebp-0C]
 00432985    push        eax
 00432986    call        gdi32.SetWinMetaFileBits
 0043298B    mov         edx,dword ptr [ebp-14]
 0043298E    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 00432991    mov         eax,dword ptr [ebp-14]
 00432994    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>00432998    jne         0043299F
 0043299A    call        InvalidMetafile
 0043299F    lea         eax,[ebp-9E]
 004329A5    push        eax
 004329A6    push        64
 004329A8    mov         eax,dword ptr [ebp-14]
 004329AB    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 004329AE    push        eax
 004329AF    call        gdi32.GetEnhMetaFileHeader
 004329B4    mov         dword ptr [ebp-3A],8
 004329BB    mov         eax,dword ptr [ebp-7E]
 004329BE    mov         dword ptr [ebp-36],eax
 004329C1    mov         eax,dword ptr [ebp-7A]
 004329C4    mov         dword ptr [ebp-32],eax
 004329C7    xor         eax,eax
 004329C9    mov         dword ptr [ebp-2E],eax
 004329CC    mov         eax,dword ptr [ebp-14]
 004329CF    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 004329D2    push        eax
 004329D3    call        gdi32.DeleteEnhMetaFile
 004329D8    lea         eax,[ebp-3A]
 004329DB    push        eax
 004329DC    push        0
 004329DE    mov         eax,dword ptr [ebp-10]
 004329E1    push        eax
 004329E2    mov         eax,dword ptr [ebp-0C]
 004329E5    push        eax
 004329E6    call        gdi32.SetWinMetaFileBits
 004329EB    mov         edx,dword ptr [ebp-14]
 004329EE    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 004329F1    mov         eax,dword ptr [ebp-14]
 004329F4    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>004329F8    jne         004329FF
 004329FA    call        InvalidMetafile
 004329FF    mov         eax,dword ptr [ebp-4]
 00432A02    mov         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
 00432A06    xor         eax,eax
 00432A08    pop         edx
 00432A09    pop         ecx
 00432A0A    pop         ecx
 00432A0B    mov         dword ptr fs:[eax],edx
 00432A0E    push        432A26
 00432A13    mov         edx,dword ptr [ebp-0C]
 00432A16    mov         eax,dword ptr [ebp-10]
 00432A19    call        @FreeMem
 00432A1E    ret
>00432A1F    jmp         @HandleFinally
>00432A24    jmp         00432A13
 00432A26    pop         ebx
 00432A27    mov         esp,ebp
 00432A29    pop         ebp
 00432A2A    ret
end;*}

//00432A2C
{*procedure sub_00432A2C(?:?);
begin
 00432A2C    push        ebp
 00432A2D    mov         ebp,esp
 00432A2F    add         esp,0FFFFFFEC
 00432A32    xor         ecx,ecx
 00432A34    mov         dword ptr [ebp-10],ecx
 00432A37    mov         dword ptr [ebp-14],ecx
 00432A3A    mov         dword ptr [ebp-8],edx
 00432A3D    mov         dword ptr [ebp-4],eax
 00432A40    xor         eax,eax
 00432A42    push        ebp
 00432A43    push        432AD5
 00432A48    push        dword ptr fs:[eax]
 00432A4B    mov         dword ptr fs:[eax],esp
 00432A4E    mov         eax,dword ptr [ebp-4]
 00432A51    mov         al,byte ptr [eax+2C];TMetafile.FEnhanced:Boolean
 00432A54    mov         byte ptr [ebp-9],al
 00432A57    xor         eax,eax
 00432A59    push        ebp
 00432A5A    push        432AB3
 00432A5F    push        dword ptr fs:[eax]
 00432A62    mov         dword ptr fs:[eax],esp
 00432A65    lea         edx,[ebp-14]
 00432A68    mov         eax,dword ptr [ebp-8]
 00432A6B    call        0040CCE0
 00432A70    mov         eax,dword ptr [ebp-14]
 00432A73    lea         edx,[ebp-10]
 00432A76    call        004116B0
 00432A7B    mov         eax,dword ptr [ebp-10]
 00432A7E    mov         edx,432AE8;'.wmf'
 00432A83    call        @LStrCmp
>00432A88    jne         00432A91
 00432A8A    mov         eax,dword ptr [ebp-4]
 00432A8D    mov         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
 00432A91    mov         edx,dword ptr [ebp-8]
 00432A94    mov         eax,dword ptr [ebp-4]
 00432A97    call        004313BC
 00432A9C    xor         eax,eax
 00432A9E    pop         edx
 00432A9F    pop         ecx
 00432AA0    pop         ecx
 00432AA1    mov         dword ptr fs:[eax],edx
 00432AA4    push        432ABA
 00432AA9    mov         eax,dword ptr [ebp-4]
 00432AAC    mov         dl,byte ptr [ebp-9]
 00432AAF    mov         byte ptr [eax+2C],dl;TMetafile.FEnhanced:Boolean
 00432AB2    ret
>00432AB3    jmp         @HandleFinally
>00432AB8    jmp         00432AA9
 00432ABA    xor         eax,eax
 00432ABC    pop         edx
 00432ABD    pop         ecx
 00432ABE    pop         ecx
 00432ABF    mov         dword ptr fs:[eax],edx
 00432AC2    push        432ADC
 00432AC7    lea         eax,[ebp-14]
 00432ACA    mov         edx,2
 00432ACF    call        @LStrArrayClr
 00432AD4    ret
>00432AD5    jmp         @HandleFinally
>00432ADA    jmp         00432AC7
 00432ADC    mov         esp,ebp
 00432ADE    pop         ebp
 00432ADF    ret
end;*}

//00432AF0
{*procedure sub_00432AF0(?:?);
begin
 00432AF0    push        ebp
 00432AF1    mov         ebp,esp
 00432AF3    add         esp,0FFFFFFF8
 00432AF6    mov         dword ptr [ebp-8],edx
 00432AF9    mov         dword ptr [ebp-4],eax
 00432AFC    mov         eax,dword ptr [ebp-4]
 00432AFF    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432B03    je          00432B26
 00432B05    mov         eax,dword ptr [ebp-4]
 00432B08    cmp         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
>00432B0C    je          00432B1B
 00432B0E    mov         edx,dword ptr [ebp-8]
 00432B11    mov         eax,dword ptr [ebp-4]
 00432B14    call        00432FD0
>00432B19    jmp         00432B26
 00432B1B    mov         edx,dword ptr [ebp-8]
 00432B1E    mov         eax,dword ptr [ebp-4]
 00432B21    call        00433064
 00432B26    pop         ecx
 00432B27    pop         ecx
 00432B28    pop         ebp
 00432B29    ret
end;*}

//00432B2C
procedure sub_00432B2C(?:TMetafile; ?:HENHMETAFILE);
begin
{*
 00432B2C    push        ebp
 00432B2D    mov         ebp,esp
 00432B2F    add         esp,0FFFFFF94
 00432B32    mov         dword ptr [ebp-8],edx
 00432B35    mov         dword ptr [ebp-4],eax
 00432B38    cmp         dword ptr [ebp-8],0
>00432B3C    je          00432B56
 00432B3E    lea         eax,[ebp-6C]
 00432B41    push        eax
 00432B42    push        64
 00432B44    mov         eax,dword ptr [ebp-8]
 00432B47    push        eax
 00432B48    call        gdi32.GetEnhMetaFileHeader
 00432B4D    test        eax,eax
>00432B4F    jne         00432B56
 00432B51    call        InvalidMetafile
 00432B56    mov         eax,dword ptr [ebp-4]
 00432B59    call        00432E64
 00432B5E    mov         eax,dword ptr [ebp-4]
 00432B61    mov         eax,dword ptr [eax+28]
 00432B64    cmp         dword ptr [eax+8],0
>00432B68    je          00432B79
 00432B6A    mov         eax,dword ptr [ebp-4]
 00432B6D    mov         eax,dword ptr [eax+28]
 00432B70    mov         eax,dword ptr [eax+8]
 00432B73    push        eax
 00432B74    call        gdi32.DeleteEnhMetaFile
 00432B79    mov         eax,dword ptr [ebp-4]
 00432B7C    mov         eax,dword ptr [eax+28]
 00432B7F    mov         eax,dword ptr [eax+14]
 00432B82    call        0042D164
 00432B87    mov         eax,dword ptr [ebp-4]
 00432B8A    mov         eax,dword ptr [eax+28]
 00432B8D    xor         edx,edx
 00432B8F    mov         dword ptr [eax+14],edx
 00432B92    mov         eax,dword ptr [ebp-4]
 00432B95    mov         eax,dword ptr [eax+28]
 00432B98    mov         edx,dword ptr [ebp-8]
 00432B9B    mov         dword ptr [eax+8],edx
 00432B9E    mov         eax,dword ptr [ebp-4]
 00432BA1    mov         eax,dword ptr [eax+28]
 00432BA4    xor         edx,edx
 00432BA6    mov         dword ptr [eax+1C],edx
 00432BA9    mov         eax,dword ptr [ebp-4]
 00432BAC    mov         eax,dword ptr [eax+28]
 00432BAF    xor         edx,edx
 00432BB1    mov         dword ptr [eax+20],edx
 00432BB4    cmp         dword ptr [ebp-8],0
>00432BB8    je          00432BD8
 00432BBA    mov         eax,dword ptr [ebp-4C]
 00432BBD    sub         eax,dword ptr [ebp-54]
 00432BC0    mov         edx,dword ptr [ebp-4]
 00432BC3    mov         edx,dword ptr [edx+28]
 00432BC6    mov         dword ptr [edx+0C],eax
 00432BC9    mov         eax,dword ptr [ebp-48]
 00432BCC    sub         eax,dword ptr [ebp-50]
 00432BCF    mov         edx,dword ptr [ebp-4]
 00432BD2    mov         edx,dword ptr [edx+28]
 00432BD5    mov         dword ptr [edx+10],eax
 00432BD8    mov         eax,dword ptr [ebp-4]
 00432BDB    mov         edx,dword ptr [eax]
 00432BDD    call        dword ptr [edx+24]
 00432BE0    test        eax,eax
 00432BE2    setne       al
 00432BE5    mov         edx,dword ptr [ebp-4]
 00432BE8    mov         byte ptr [edx+22],al
 00432BEB    mov         edx,dword ptr [ebp-4]
 00432BEE    mov         eax,dword ptr [ebp-4]
 00432BF1    mov         ecx,dword ptr [eax]
 00432BF3    call        dword ptr [ecx+10]
 00432BF6    mov         esp,ebp
 00432BF8    pop         ebp
 00432BF9    ret
*}
end;

//00432BFC
{*procedure sub_00432BFC(?:?);
begin
 00432BFC    push        ebp
 00432BFD    mov         ebp,esp
 00432BFF    add         esp,0FFFFFF90
 00432C02    mov         dword ptr [ebp-8],edx
 00432C05    mov         dword ptr [ebp-4],eax
 00432C08    mov         eax,dword ptr [ebp-4]
 00432C0B    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432C0F    jne         00432C19
 00432C11    mov         eax,dword ptr [ebp-4]
 00432C14    call        004326F0
 00432C19    mov         eax,dword ptr [ebp-4]
 00432C1C    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432C1F    mov         dword ptr [ebp-0C],eax
 00432C22    mov         eax,dword ptr [ebp-0C]
 00432C25    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>00432C2A    jne         00432C70
 00432C2C    mov         eax,dword ptr [ebp-0C]
 00432C2F    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>00432C33    jne         00432C40
 00432C35    mov         eax,dword ptr [ebp-8]
 00432C38    mov         edx,dword ptr [ebp-0C]
 00432C3B    mov         dword ptr [edx+20],eax;TMetafileImage.FTempHeight:Integer
>00432C3E    jmp         00432C8E
 00432C40    lea         eax,[ebp-70]
 00432C43    push        eax
 00432C44    push        64
 00432C46    mov         eax,dword ptr [ebp-0C]
 00432C49    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00432C4C    push        eax
 00432C4D    call        gdi32.GetEnhMetaFileHeader
 00432C52    mov         eax,dword ptr [ebp-24]
 00432C55    push        eax
 00432C56    imul        eax,dword ptr [ebp-1C],64
 00432C5A    push        eax
 00432C5B    mov         eax,dword ptr [ebp-8]
 00432C5E    push        eax
 00432C5F    call        kernel32.MulDiv
 00432C64    mov         edx,eax
 00432C66    mov         eax,dword ptr [ebp-4]
 00432C69    call        00432C94
>00432C6E    jmp         00432C8E
 00432C70    mov         eax,[00571AC0];0x0 gvar_00571AC0
 00432C75    push        eax
 00432C76    push        9EC
 00432C7B    mov         eax,dword ptr [ebp-8]
 00432C7E    push        eax
 00432C7F    call        kernel32.MulDiv
 00432C84    mov         edx,eax
 00432C86    mov         eax,dword ptr [ebp-4]
 00432C89    call        00432C94
 00432C8E    mov         esp,ebp
 00432C90    pop         ebp
 00432C91    ret
end;*}

//00432C94
procedure sub_00432C94(?:TMetafile; ?:Integer);
begin
{*
 00432C94    push        ebp
 00432C95    mov         ebp,esp
 00432C97    add         esp,0FFFFFFF8
 00432C9A    mov         dword ptr [ebp-8],edx
 00432C9D    mov         dword ptr [ebp-4],eax
 00432CA0    mov         eax,dword ptr [ebp-4]
 00432CA3    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432CA7    jne         00432CB1
 00432CA9    mov         eax,dword ptr [ebp-4]
 00432CAC    call        004326F0
 00432CB1    mov         eax,dword ptr [ebp-4]
 00432CB4    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432CB7    xor         edx,edx
 00432CB9    mov         dword ptr [eax+20],edx;TMetafileImage.FTempHeight:Integer
 00432CBC    mov         eax,dword ptr [ebp-4]
 00432CBF    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432CC2    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 00432CC5    cmp         eax,dword ptr [ebp-8]
>00432CC8    je          00432CE9
 00432CCA    mov         eax,dword ptr [ebp-4]
 00432CCD    call        00432E64
 00432CD2    mov         eax,dword ptr [ebp-4]
 00432CD5    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432CD8    mov         edx,dword ptr [ebp-8]
 00432CDB    mov         dword ptr [eax+10],edx;TMetafileImage.FHeight:Integer
 00432CDE    mov         edx,dword ptr [ebp-4]
 00432CE1    mov         eax,dword ptr [ebp-4]
 00432CE4    mov         ecx,dword ptr [eax]
 00432CE6    call        dword ptr [ecx+10];TMetafile.sub_004310A0
 00432CE9    pop         ecx
 00432CEA    pop         ecx
 00432CEB    pop         ebp
 00432CEC    ret
*}
end;

//00432CF0
procedure sub_00432CF0(?:TMetafile; ?:Integer);
begin
{*
 00432CF0    push        ebp
 00432CF1    mov         ebp,esp
 00432CF3    add         esp,0FFFFFFF8
 00432CF6    mov         dword ptr [ebp-8],edx
 00432CF9    mov         dword ptr [ebp-4],eax
 00432CFC    mov         eax,dword ptr [ebp-4]
 00432CFF    cmp         dword ptr [eax+28],0
>00432D03    jne         00432D0D
 00432D05    mov         eax,dword ptr [ebp-4]
 00432D08    call        004326F0
 00432D0D    mov         eax,dword ptr [ebp-4]
 00432D10    mov         eax,dword ptr [eax+28]
 00432D13    xor         edx,edx
 00432D15    mov         dword ptr [eax+1C],edx
 00432D18    mov         eax,dword ptr [ebp-4]
 00432D1B    mov         eax,dword ptr [eax+28]
 00432D1E    mov         eax,dword ptr [eax+0C]
 00432D21    cmp         eax,dword ptr [ebp-8]
>00432D24    je          00432D45
 00432D26    mov         eax,dword ptr [ebp-4]
 00432D29    call        00432E64
 00432D2E    mov         eax,dword ptr [ebp-4]
 00432D31    mov         eax,dword ptr [eax+28]
 00432D34    mov         edx,dword ptr [ebp-8]
 00432D37    mov         dword ptr [eax+0C],edx
 00432D3A    mov         edx,dword ptr [ebp-4]
 00432D3D    mov         eax,dword ptr [ebp-4]
 00432D40    mov         ecx,dword ptr [eax]
 00432D42    call        dword ptr [ecx+10]
 00432D45    pop         ecx
 00432D46    pop         ecx
 00432D47    pop         ebp
 00432D48    ret
*}
end;

//00432D4C
{*procedure sub_00432D4C(?:?);
begin
 00432D4C    push        ebp
 00432D4D    mov         ebp,esp
 00432D4F    add         esp,0FFFFFFF8
 00432D52    mov         byte ptr [ebp-5],dl
 00432D55    mov         dword ptr [ebp-4],eax
 00432D58    pop         ecx
 00432D59    pop         ecx
 00432D5A    pop         ebp
 00432D5B    ret
end;*}

//00432D5C
{*procedure sub_00432D5C(?:?);
begin
 00432D5C    push        ebp
 00432D5D    mov         ebp,esp
 00432D5F    add         esp,0FFFFFF90
 00432D62    mov         dword ptr [ebp-8],edx
 00432D65    mov         dword ptr [ebp-4],eax
 00432D68    mov         eax,dword ptr [ebp-4]
 00432D6B    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432D6F    jne         00432D79
 00432D71    mov         eax,dword ptr [ebp-4]
 00432D74    call        004326F0
 00432D79    mov         eax,dword ptr [ebp-4]
 00432D7C    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432D7F    mov         dword ptr [ebp-0C],eax
 00432D82    mov         eax,dword ptr [ebp-0C]
 00432D85    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>00432D8A    jne         00432DD0
 00432D8C    mov         eax,dword ptr [ebp-0C]
 00432D8F    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>00432D93    jne         00432DA0
 00432D95    mov         eax,dword ptr [ebp-8]
 00432D98    mov         edx,dword ptr [ebp-0C]
 00432D9B    mov         dword ptr [edx+1C],eax;TMetafileImage.FTempWidth:Integer
>00432D9E    jmp         00432DEE
 00432DA0    lea         eax,[ebp-70]
 00432DA3    push        eax
 00432DA4    push        64
 00432DA6    mov         eax,dword ptr [ebp-0C]
 00432DA9    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00432DAC    push        eax
 00432DAD    call        gdi32.GetEnhMetaFileHeader
 00432DB2    mov         eax,dword ptr [ebp-28]
 00432DB5    push        eax
 00432DB6    imul        eax,dword ptr [ebp-20],64
 00432DBA    push        eax
 00432DBB    mov         eax,dword ptr [ebp-8]
 00432DBE    push        eax
 00432DBF    call        kernel32.MulDiv
 00432DC4    mov         edx,eax
 00432DC6    mov         eax,dword ptr [ebp-4]
 00432DC9    call        00432CF0
>00432DCE    jmp         00432DEE
 00432DD0    mov         eax,[00571AC0];0x0 gvar_00571AC0
 00432DD5    push        eax
 00432DD6    push        9EC
 00432DDB    mov         eax,dword ptr [ebp-8]
 00432DDE    push        eax
 00432DDF    call        kernel32.MulDiv
 00432DE4    mov         edx,eax
 00432DE6    mov         eax,dword ptr [ebp-4]
 00432DE9    call        00432CF0
 00432DEE    mov         esp,ebp
 00432DF0    pop         ebp
 00432DF1    ret
end;*}

//00432DF4
{*function sub_00432DF4(?:TMetafile; ?:?):?;
begin
 00432DF4    push        ebp
 00432DF5    mov         ebp,esp
 00432DF7    add         esp,0FFFFFF8C
 00432DFA    push        ebx
 00432DFB    mov         dword ptr [ebp-8],edx
 00432DFE    mov         dword ptr [ebp-4],eax
 00432E01    mov         eax,dword ptr [ebp-8]
 00432E04    mov         edx,dword ptr [eax]
 00432E06    call        dword ptr [edx]
 00432E08    mov         ebx,eax
 00432E0A    mov         eax,dword ptr [ebp-8]
 00432E0D    call        TStream.GetPosition
 00432E12    sub         ebx,eax
 00432E14    mov         dword ptr [ebp-10],ebx
 00432E17    cmp         dword ptr [ebp-10],64
>00432E1B    jle         00432E3E
 00432E1D    lea         edx,[ebp-74]
 00432E20    mov         ecx,64
 00432E25    mov         eax,dword ptr [ebp-8]
 00432E28    mov         ebx,dword ptr [eax]
 00432E2A    call        dword ptr [ebx+0C]
 00432E2D    mov         cx,1
 00432E31    mov         edx,0FFFFFF9C
 00432E36    mov         eax,dword ptr [ebp-8]
 00432E39    mov         ebx,dword ptr [eax]
 00432E3B    call        dword ptr [ebx+14]
 00432E3E    cmp         dword ptr [ebp-10],64
>00432E42    jle         00432E53
 00432E44    cmp         dword ptr [ebp-74],1
>00432E48    jne         00432E53
 00432E4A    cmp         dword ptr [ebp-4C],464D4520
>00432E51    je          00432E57
 00432E53    xor         eax,eax
>00432E55    jmp         00432E59
 00432E57    mov         al,1
 00432E59    mov         byte ptr [ebp-9],al
 00432E5C    mov         al,byte ptr [ebp-9]
 00432E5F    pop         ebx
 00432E60    mov         esp,ebp
 00432E62    pop         ebp
 00432E63    ret
end;*}

//00432E64
procedure sub_00432E64(?:TMetafile);
begin
{*
 00432E64    push        ebp
 00432E65    mov         ebp,esp
 00432E67    add         esp,0FFFFFFF8
 00432E6A    mov         dword ptr [ebp-4],eax
 00432E6D    mov         eax,dword ptr [ebp-4]
 00432E70    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432E74    jne         00432E83
 00432E76    mov         eax,dword ptr [ebp-4]
 00432E79    call        004326F0
>00432E7E    jmp         00432F31
 00432E83    mov         eax,dword ptr [ebp-4]
 00432E86    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432E89    cmp         dword ptr [eax+4],1;TMetafileImage.........FRefCount:Integer
>00432E8D    jle         00432F31
 00432E93    mov         dl,1
 00432E95    mov         eax,[0042CDA8];TMetafileImage
 00432E9A    call        TObject.Create;TMetafileImage.Create
 00432E9F    mov         dword ptr [ebp-8],eax
 00432EA2    mov         eax,dword ptr [ebp-4]
 00432EA5    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432EA8    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>00432EAC    je          00432EC5
 00432EAE    push        0
 00432EB0    mov         eax,dword ptr [ebp-4]
 00432EB3    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432EB6    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00432EB9    push        eax
 00432EBA    call        gdi32.CopyEnhMetaFileA
 00432EBF    mov         edx,dword ptr [ebp-8]
 00432EC2    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 00432EC5    mov         eax,dword ptr [ebp-4]
 00432EC8    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432ECB    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 00432ECE    mov         edx,dword ptr [ebp-8]
 00432ED1    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 00432ED4    mov         eax,dword ptr [ebp-4]
 00432ED7    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432EDA    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 00432EDD    mov         edx,dword ptr [ebp-8]
 00432EE0    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 00432EE3    mov         eax,dword ptr [ebp-4]
 00432EE6    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432EE9    mov         ax,word ptr [eax+18];TMetafileImage.FInch:word
 00432EED    mov         edx,dword ptr [ebp-8]
 00432EF0    mov         word ptr [edx+18],ax;TMetafileImage.FInch:word
 00432EF4    mov         eax,dword ptr [ebp-4]
 00432EF7    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432EFA    mov         eax,dword ptr [eax+1C];TMetafileImage.FTempWidth:Integer
 00432EFD    mov         edx,dword ptr [ebp-8]
 00432F00    mov         dword ptr [edx+1C],eax;TMetafileImage.FTempWidth:Integer
 00432F03    mov         eax,dword ptr [ebp-4]
 00432F06    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432F09    mov         eax,dword ptr [eax+20];TMetafileImage.FTempHeight:Integer
 00432F0C    mov         edx,dword ptr [ebp-8]
 00432F0F    mov         dword ptr [edx+20],eax;TMetafileImage.FTempHeight:Integer
 00432F12    mov         eax,dword ptr [ebp-4]
 00432F15    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432F18    call        004336F8
 00432F1D    mov         eax,dword ptr [ebp-8]
 00432F20    mov         edx,dword ptr [ebp-4]
 00432F23    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 00432F26    mov         eax,dword ptr [ebp-4]
 00432F29    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432F2C    call        004336E8
 00432F31    pop         ecx
 00432F32    pop         ecx
 00432F33    pop         ebp
 00432F34    ret
*}
end;

//00432F38
{*procedure sub_00432F38(?:?);
begin
 00432F38    push        ebp
 00432F39    mov         ebp,esp
 00432F3B    add         esp,0FFFFFFF4
 00432F3E    push        ebx
 00432F3F    mov         dword ptr [ebp-8],edx
 00432F42    mov         dword ptr [ebp-4],eax
 00432F45    mov         eax,dword ptr [ebp-4]
 00432F48    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432F4C    je          00432FCA
 00432F4E    xor         eax,eax
 00432F50    mov         dword ptr [ebp-0C],eax
 00432F53    lea         edx,[ebp-0C]
 00432F56    mov         ecx,4
 00432F5B    mov         eax,dword ptr [ebp-8]
 00432F5E    mov         ebx,dword ptr [eax]
 00432F60    call        dword ptr [ebx+10]
 00432F63    mov         eax,dword ptr [ebp-8]
 00432F66    call        TStream.GetPosition
 00432F6B    sub         eax,4
 00432F6E    mov         dword ptr [ebp-0C],eax
 00432F71    mov         eax,dword ptr [ebp-4]
 00432F74    cmp         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
>00432F78    je          00432F87
 00432F7A    mov         edx,dword ptr [ebp-8]
 00432F7D    mov         eax,dword ptr [ebp-4]
 00432F80    call        00432FD0
>00432F85    jmp         00432F92
 00432F87    mov         edx,dword ptr [ebp-8]
 00432F8A    mov         eax,dword ptr [ebp-4]
 00432F8D    call        00433064
 00432F92    xor         ecx,ecx
 00432F94    mov         edx,dword ptr [ebp-0C]
 00432F97    mov         eax,dword ptr [ebp-8]
 00432F9A    mov         ebx,dword ptr [eax]
 00432F9C    call        dword ptr [ebx+14]
 00432F9F    mov         eax,dword ptr [ebp-8]
 00432FA2    mov         edx,dword ptr [eax]
 00432FA4    call        dword ptr [edx]
 00432FA6    sub         eax,dword ptr [ebp-0C]
 00432FA9    mov         dword ptr [ebp-0C],eax
 00432FAC    lea         edx,[ebp-0C]
 00432FAF    mov         ecx,4
 00432FB4    mov         eax,dword ptr [ebp-8]
 00432FB7    mov         ebx,dword ptr [eax]
 00432FB9    call        dword ptr [ebx+10]
 00432FBC    mov         cx,2
 00432FC0    xor         edx,edx
 00432FC2    mov         eax,dword ptr [ebp-8]
 00432FC5    mov         ebx,dword ptr [eax]
 00432FC7    call        dword ptr [ebx+14]
 00432FCA    pop         ebx
 00432FCB    mov         esp,ebp
 00432FCD    pop         ebp
 00432FCE    ret
end;*}

//00432FD0
{*procedure sub_00432FD0(?:TMetafile; ?:?);
begin
 00432FD0    push        ebp
 00432FD1    mov         ebp,esp
 00432FD3    add         esp,0FFFFFFF0
 00432FD6    mov         dword ptr [ebp-8],edx
 00432FD9    mov         dword ptr [ebp-4],eax
 00432FDC    mov         eax,dword ptr [ebp-4]
 00432FDF    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00432FE3    je          0043305F
 00432FE5    push        0
 00432FE7    push        0
 00432FE9    mov         eax,dword ptr [ebp-4]
 00432FEC    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00432FEF    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00432FF2    push        eax
 00432FF3    call        gdi32.GetEnhMetaFileBits
 00432FF8    mov         dword ptr [ebp-10],eax
 00432FFB    cmp         dword ptr [ebp-10],0
>00432FFF    je          0043305F
 00433001    mov         eax,dword ptr [ebp-10]
 00433004    call        @GetMem
 00433009    mov         dword ptr [ebp-0C],eax
 0043300C    xor         eax,eax
 0043300E    push        ebp
 0043300F    push        433058
 00433014    push        dword ptr fs:[eax]
 00433017    mov         dword ptr fs:[eax],esp
 0043301A    mov         eax,dword ptr [ebp-0C]
 0043301D    push        eax
 0043301E    mov         eax,dword ptr [ebp-10]
 00433021    push        eax
 00433022    mov         eax,dword ptr [ebp-4]
 00433025    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00433028    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0043302B    push        eax
 0043302C    call        gdi32.GetEnhMetaFileBits
 00433031    mov         edx,dword ptr [ebp-0C]
 00433034    mov         ecx,dword ptr [ebp-10]
 00433037    mov         eax,dword ptr [ebp-8]
 0043303A    call        TStream.WriteBuffer
 0043303F    xor         eax,eax
 00433041    pop         edx
 00433042    pop         ecx
 00433043    pop         ecx
 00433044    mov         dword ptr fs:[eax],edx
 00433047    push        43305F
 0043304C    mov         edx,dword ptr [ebp-10]
 0043304F    mov         eax,dword ptr [ebp-0C]
 00433052    call        @FreeMem
 00433057    ret
>00433058    jmp         @HandleFinally
>0043305D    jmp         0043304C
 0043305F    mov         esp,ebp
 00433061    pop         ebp
 00433062    ret
end;*}

//00433064
{*procedure sub_00433064(?:TMetafile; ?:?);
begin
 00433064    push        ebp
 00433065    mov         ebp,esp
 00433067    add         esp,0FFFFFFD0
 0043306A    mov         dword ptr [ebp-8],edx
 0043306D    mov         dword ptr [ebp-4],eax
 00433070    mov         eax,dword ptr [ebp-4]
 00433073    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>00433077    je          004331C5
 0043307D    lea         eax,[ebp-2E]
 00433080    xor         ecx,ecx
 00433082    mov         edx,16
 00433087    call        @FillChar
 0043308C    mov         eax,dword ptr [ebp-4]
 0043308F    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00433092    mov         dword ptr [ebp-18],eax
 00433095    mov         dword ptr [ebp-2E],9AC6CDD7
 0043309C    mov         eax,dword ptr [ebp-18]
 0043309F    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>004330A4    jne         004330AE
 004330A6    mov         word ptr [ebp-20],60
>004330AC    jmp         004330B9
 004330AE    mov         eax,dword ptr [ebp-18]
 004330B1    mov         ax,word ptr [eax+18];TMetafileImage.FInch:word
 004330B5    mov         word ptr [ebp-20],ax
 004330B9    push        9EC
 004330BE    movzx       eax,word ptr [ebp-20]
 004330C2    push        eax
 004330C3    mov         eax,dword ptr [ebp-18]
 004330C6    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 004330C9    push        eax
 004330CA    call        kernel32.MulDiv
 004330CF    mov         word ptr [ebp-24],ax
 004330D3    push        9EC
 004330D8    movzx       eax,word ptr [ebp-20]
 004330DC    push        eax
 004330DD    mov         eax,dword ptr [ebp-18]
 004330E0    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 004330E3    push        eax
 004330E4    call        kernel32.MulDiv
 004330E9    mov         word ptr [ebp-22],ax
 004330ED    lea         eax,[ebp-2E]
 004330F0    call        00430B24
 004330F5    mov         word ptr [ebp-1A],ax
 004330F9    push        0
 004330FB    call        user32.GetDC
 00433100    mov         dword ptr [ebp-14],eax
 00433103    xor         eax,eax
 00433105    push        ebp
 00433106    push        4331BE
 0043310B    push        dword ptr fs:[eax]
 0043310E    mov         dword ptr fs:[eax],esp
 00433111    mov         eax,dword ptr [ebp-14]
 00433114    push        eax
 00433115    push        8
 00433117    push        0
 00433119    push        0
 0043311B    mov         eax,dword ptr [ebp-18]
 0043311E    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00433121    push        eax
 00433122    call        gdi32.GetWinMetaFileBits
 00433127    mov         dword ptr [ebp-10],eax
 0043312A    mov         eax,dword ptr [ebp-10]
 0043312D    call        @GetMem
 00433132    mov         dword ptr [ebp-0C],eax
 00433135    xor         eax,eax
 00433137    push        ebp
 00433138    push        43319E
 0043313D    push        dword ptr fs:[eax]
 00433140    mov         dword ptr fs:[eax],esp
 00433143    mov         eax,dword ptr [ebp-14]
 00433146    push        eax
 00433147    push        8
 00433149    mov         eax,dword ptr [ebp-0C]
 0043314C    push        eax
 0043314D    mov         eax,dword ptr [ebp-10]
 00433150    push        eax
 00433151    mov         eax,dword ptr [ebp-18]
 00433154    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00433157    push        eax
 00433158    call        gdi32.GetWinMetaFileBits
 0043315D    cmp         eax,dword ptr [ebp-10]
>00433160    jae         00433167
 00433162    call        0042FB28
 00433167    lea         edx,[ebp-2E]
 0043316A    mov         ecx,16
 0043316F    mov         eax,dword ptr [ebp-8]
 00433172    call        TStream.WriteBuffer
 00433177    mov         edx,dword ptr [ebp-0C]
 0043317A    mov         ecx,dword ptr [ebp-10]
 0043317D    mov         eax,dword ptr [ebp-8]
 00433180    call        TStream.WriteBuffer
 00433185    xor         eax,eax
 00433187    pop         edx
 00433188    pop         ecx
 00433189    pop         ecx
 0043318A    mov         dword ptr fs:[eax],edx
 0043318D    push        4331A5
 00433192    mov         edx,dword ptr [ebp-10]
 00433195    mov         eax,dword ptr [ebp-0C]
 00433198    call        @FreeMem
 0043319D    ret
>0043319E    jmp         @HandleFinally
>004331A3    jmp         00433192
 004331A5    xor         eax,eax
 004331A7    pop         edx
 004331A8    pop         ecx
 004331A9    pop         ecx
 004331AA    mov         dword ptr fs:[eax],edx
 004331AD    push        4331C5
 004331B2    mov         eax,dword ptr [ebp-14]
 004331B5    push        eax
 004331B6    push        0
 004331B8    call        user32.ReleaseDC
 004331BD    ret
>004331BE    jmp         @HandleFinally
>004331C3    jmp         004331B2
 004331C5    mov         esp,ebp
 004331C7    pop         ebp
 004331C8    ret
end;*}

//004331CC
{*procedure sub_004331CC(?:?; ?:?);
begin
 004331CC    push        ebp
 004331CD    mov         ebp,esp
 004331CF    add         esp,0FFFFFF8C
 004331D2    mov         dword ptr [ebp-8],ecx
 004331D5    mov         word ptr [ebp-0E],dx
 004331D9    mov         dword ptr [ebp-4],eax
 004331DC    push        0E
 004331DE    call        user32.GetClipboardData
 004331E3    mov         dword ptr [ebp-8],eax
 004331E6    cmp         dword ptr [ebp-8],0
>004331EA    jne         004331F6
 004331EC    mov         eax,[0056E3D8];^SUnknownClipboardFormat:TResStringRec
 004331F1    call        InvalidGraphic
 004331F6    mov         eax,dword ptr [ebp-4]
 004331F9    call        004326F0
 004331FE    mov         eax,dword ptr [ebp-4]
 00433201    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 00433204    mov         dword ptr [ebp-0C],eax
 00433207    push        0
 00433209    mov         eax,dword ptr [ebp-8]
 0043320C    push        eax
 0043320D    call        gdi32.CopyEnhMetaFileA
 00433212    mov         edx,dword ptr [ebp-0C]
 00433215    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 00433218    lea         eax,[ebp-72]
 0043321B    push        eax
 0043321C    push        64
 0043321E    mov         eax,dword ptr [ebp-0C]
 00433221    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 00433224    push        eax
 00433225    call        gdi32.GetEnhMetaFileHeader
 0043322A    mov         eax,dword ptr [ebp-52]
 0043322D    sub         eax,dword ptr [ebp-5A]
 00433230    mov         edx,dword ptr [ebp-0C]
 00433233    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 00433236    mov         eax,dword ptr [ebp-4E]
 00433239    sub         eax,dword ptr [ebp-56]
 0043323C    mov         edx,dword ptr [ebp-0C]
 0043323F    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 00433242    mov         eax,dword ptr [ebp-0C]
 00433245    mov         word ptr [eax+18],0;TMetafileImage.FInch:word
 0043324B    mov         eax,dword ptr [ebp-4]
 0043324E    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 00433252    mov         eax,dword ptr [ebp-4]
 00433255    mov         edx,dword ptr [eax]
 00433257    call        dword ptr [edx+24];TMetafile.sub_0043252C
 0043325A    test        eax,eax
 0043325C    setne       al
 0043325F    mov         edx,dword ptr [ebp-4]
 00433262    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 00433265    mov         edx,dword ptr [ebp-4]
 00433268    mov         eax,dword ptr [ebp-4]
 0043326B    mov         ecx,dword ptr [eax]
 0043326D    call        dword ptr [ecx+10];TMetafile.sub_004310A0
 00433270    mov         esp,ebp
 00433272    pop         ebp
 00433273    ret         4
end;*}

//00433278
{*procedure sub_00433278(?:?; ?:?; ?:?);
begin
 00433278    push        ebp
 00433279    mov         ebp,esp
 0043327B    add         esp,0FFFFFFF4
 0043327E    mov         dword ptr [ebp-0C],ecx
 00433281    mov         dword ptr [ebp-8],edx
 00433284    mov         dword ptr [ebp-4],eax
 00433287    mov         eax,dword ptr [ebp-4]
 0043328A    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0043328E    je          004332B5
 00433290    mov         eax,dword ptr [ebp-8]
 00433293    mov         word ptr [eax],0E
 00433298    mov         eax,dword ptr [ebp+8]
 0043329B    xor         edx,edx
 0043329D    mov         dword ptr [eax],edx
 0043329F    push        0
 004332A1    mov         eax,dword ptr [ebp-4]
 004332A4    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 004332A7    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 004332AA    push        eax
 004332AB    call        gdi32.CopyEnhMetaFileA
 004332B0    mov         edx,dword ptr [ebp-0C]
 004332B3    mov         dword ptr [edx],eax
 004332B5    mov         esp,ebp
 004332B7    pop         ebp
 004332B8    ret         4
end;*}

//00433358
procedure FreeMemoryContexts;
begin
{*
 00433358    push        ebp
 00433359    mov         ebp,esp
 0043335B    add         esp,0FFFFFFF4
 0043335E    mov         eax,[0056C024];gvar_0056C024
 00433363    call        TThreadList.LockList
 00433368    mov         dword ptr [ebp-8],eax
 0043336B    xor         eax,eax
 0043336D    push        ebp
 0043336E    push        4333F6
 00433373    push        dword ptr fs:[eax]
 00433376    mov         dword ptr fs:[eax],esp
 00433379    mov         eax,dword ptr [ebp-8]
 0043337C    mov         eax,dword ptr [eax+8]
 0043337F    dec         eax
 00433380    cmp         eax,0
>00433383    jl          004333DE
 00433385    mov         dword ptr [ebp-4],eax
 00433388    mov         edx,dword ptr [ebp-4]
 0043338B    mov         eax,dword ptr [ebp-8]
 0043338E    call        TList.Get
 00433393    mov         dword ptr [ebp-0C],eax
 00433396    mov         eax,dword ptr [ebp-0C]
 00433399    call        TCanvas.TryLock
 0043339E    test        al,al
>004333A0    je          004333D5
 004333A2    xor         eax,eax
 004333A4    push        ebp
 004333A5    push        4333CE
 004333AA    push        dword ptr fs:[eax]
 004333AD    mov         dword ptr fs:[eax],esp
 004333B0    mov         eax,dword ptr [ebp-0C]
 004333B3    call        TBitmapCanvas.FreeContext
 004333B8    xor         eax,eax
 004333BA    pop         edx
 004333BB    pop         ecx
 004333BC    pop         ecx
 004333BD    mov         dword ptr fs:[eax],edx
 004333C0    push        4333D5
 004333C5    mov         eax,dword ptr [ebp-0C]
 004333C8    call        TCanvas.Unlock
 004333CD    ret
>004333CE    jmp         @HandleFinally
>004333D3    jmp         004333C5
 004333D5    dec         dword ptr [ebp-4]
 004333D8    cmp         dword ptr [ebp-4],0FFFFFFFF
>004333DC    jne         00433388
 004333DE    xor         eax,eax
 004333E0    pop         edx
 004333E1    pop         ecx
 004333E2    pop         ecx
 004333E3    mov         dword ptr fs:[eax],edx
 004333E6    push        4333FD
 004333EB    mov         eax,[0056C024];gvar_0056C024
 004333F0    call        TThreadList.UnlockList
 004333F5    ret
>004333F6    jmp         @HandleFinally
>004333FB    jmp         004333EB
 004333FD    mov         esp,ebp
 004333FF    pop         ebp
 00433400    ret
*}
end;

//00433404
procedure sub_00433404(?:HBITMAP);
begin
{*
 00433404    push        ebp
 00433405    mov         ebp,esp
 00433407    add         esp,0FFFFFFF0
 0043340A    mov         dword ptr [ebp-4],eax
 0043340D    cmp         dword ptr [ebp-4],0
>00433411    je          00433499
 00433417    mov         eax,[0056C024];0x0 gvar_0056C024
 0043341C    call        TThreadList.LockList
 00433421    mov         dword ptr [ebp-0C],eax
 00433424    xor         eax,eax
 00433426    push        ebp
 00433427    push        433492
 0043342C    push        dword ptr fs:[eax]
 0043342F    mov         dword ptr fs:[eax],esp
 00433432    mov         eax,dword ptr [ebp-0C]
 00433435    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00433438    dec         eax
 00433439    cmp         eax,0
>0043343C    jl          0043347A
 0043343E    mov         dword ptr [ebp-8],eax
 00433441    mov         edx,dword ptr [ebp-8]
 00433444    mov         eax,dword ptr [ebp-0C]
 00433447    call        TList.Get
 0043344C    mov         dword ptr [ebp-10],eax
 0043344F    mov         eax,dword ptr [ebp-10]
 00433452    cmp         dword ptr [eax+58],0
>00433456    je          00433471
 00433458    mov         eax,dword ptr [ebp-10]
 0043345B    mov         eax,dword ptr [eax+58]
 0043345E    mov         eax,dword ptr [eax+28]
 00433461    mov         eax,dword ptr [eax+8]
 00433464    cmp         eax,dword ptr [ebp-4]
>00433467    jne         00433471
 00433469    mov         eax,dword ptr [ebp-10]
 0043346C    call        TBitmapCanvas.FreeContext
 00433471    dec         dword ptr [ebp-8]
 00433474    cmp         dword ptr [ebp-8],0FFFFFFFF
>00433478    jne         00433441
 0043347A    xor         eax,eax
 0043347C    pop         edx
 0043347D    pop         ecx
 0043347E    pop         ecx
 0043347F    mov         dword ptr fs:[eax],edx
 00433482    push        433499
 00433487    mov         eax,[0056C024];0x0 gvar_0056C024
 0043348C    call        TThreadList.UnlockList
 00433491    ret
>00433492    jmp         @HandleFinally
>00433497    jmp         00433487
 00433499    mov         esp,ebp
 0043349B    pop         ebp
 0043349C    ret
*}
end;

//004334A0
constructor TBitmapCanvas.Create;
begin
{*
 004334A0    push        ebp
 004334A1    mov         ebp,esp
 004334A3    add         esp,0FFFFFFF4
 004334A6    test        dl,dl
>004334A8    je          004334B2
 004334AA    add         esp,0FFFFFFF0
 004334AD    call        @ClassCreate
 004334B2    mov         dword ptr [ebp-0C],ecx
 004334B5    mov         byte ptr [ebp-5],dl
 004334B8    mov         dword ptr [ebp-4],eax
 004334BB    xor         edx,edx
 004334BD    mov         eax,dword ptr [ebp-4]
 004334C0    call        TCanvas.Create
 004334C5    mov         eax,dword ptr [ebp-4]
 004334C8    mov         edx,dword ptr [ebp-0C]
 004334CB    mov         dword ptr [eax+58],edx
 004334CE    mov         eax,dword ptr [ebp-4]
 004334D1    cmp         byte ptr [ebp-5],0
>004334D5    je          004334E6
 004334D7    call        @AfterConstruction
 004334DC    pop         dword ptr fs:[0]
 004334E3    add         esp,0C
 004334E6    mov         eax,dword ptr [ebp-4]
 004334E9    mov         esp,ebp
 004334EB    pop         ebp
 004334EC    ret
*}
end;

//004334F0
destructor TBitmapCanvas.Destroy;
begin
{*
 004334F0    push        ebp
 004334F1    mov         ebp,esp
 004334F3    add         esp,0FFFFFFF8
 004334F6    call        @BeforeDestruction
 004334FB    mov         byte ptr [ebp-5],dl
 004334FE    mov         dword ptr [ebp-4],eax
 00433501    mov         eax,dword ptr [ebp-4]
 00433504    call        TBitmapCanvas.FreeContext
 00433509    mov         dl,byte ptr [ebp-5]
 0043350C    and         dl,0FC
 0043350F    mov         eax,dword ptr [ebp-4]
 00433512    call        TCanvas.Destroy
 00433517    cmp         byte ptr [ebp-5],0
>0043351B    jle         00433525
 0043351D    mov         eax,dword ptr [ebp-4]
 00433520    call        @ClassDestroy
 00433525    pop         ecx
 00433526    pop         ecx
 00433527    pop         ebp
 00433528    ret
*}
end;

//0043352C
procedure TBitmapCanvas.FreeContext;
begin
{*
 0043352C    push        ebp
 0043352D    mov         ebp,esp
 0043352F    add         esp,0FFFFFFF8
 00433532    mov         dword ptr [ebp-4],eax
 00433535    mov         eax,dword ptr [ebp-4]
 00433538    cmp         dword ptr [eax+4],0
>0043353C    je          004335D8
 00433542    mov         eax,dword ptr [ebp-4]
 00433545    call        TCanvas.Lock
 0043354A    xor         eax,eax
 0043354C    push        ebp
 0043354D    push        4335D1
 00433552    push        dword ptr fs:[eax]
 00433555    mov         dword ptr fs:[eax],esp
 00433558    mov         eax,dword ptr [ebp-4]
 0043355B    cmp         dword ptr [eax+5C],0
>0043355F    je          00433574
 00433561    mov         eax,dword ptr [ebp-4]
 00433564    mov         eax,dword ptr [eax+5C]
 00433567    push        eax
 00433568    mov         eax,dword ptr [ebp-4]
 0043356B    mov         eax,dword ptr [eax+4]
 0043356E    push        eax
 0043356F    call        gdi32.SelectObject
 00433574    mov         eax,dword ptr [ebp-4]
 00433577    cmp         dword ptr [eax+60],0
>0043357B    je          00433592
 0043357D    push        0FF
 0043357F    mov         eax,dword ptr [ebp-4]
 00433582    mov         eax,dword ptr [eax+60]
 00433585    push        eax
 00433586    mov         eax,dword ptr [ebp-4]
 00433589    mov         eax,dword ptr [eax+4]
 0043358C    push        eax
 0043358D    call        gdi32.SelectPalette
 00433592    mov         eax,dword ptr [ebp-4]
 00433595    mov         eax,dword ptr [eax+4]
 00433598    mov         dword ptr [ebp-8],eax
 0043359B    xor         edx,edx
 0043359D    mov         eax,dword ptr [ebp-4]
 004335A0    call        TCanvas.SetHandle
 004335A5    mov         eax,dword ptr [ebp-8]
 004335A8    push        eax
 004335A9    call        gdi32.DeleteDC
 004335AE    mov         edx,dword ptr [ebp-4]
 004335B1    mov         eax,[0056C024];gvar_0056C024
 004335B6    call        004207D4
 004335BB    xor         eax,eax
 004335BD    pop         edx
 004335BE    pop         ecx
 004335BF    pop         ecx
 004335C0    mov         dword ptr fs:[eax],edx
 004335C3    push        4335D8
 004335C8    mov         eax,dword ptr [ebp-4]
 004335CB    call        TCanvas.Unlock
 004335D0    ret
>004335D1    jmp         @HandleFinally
>004335D6    jmp         004335C8
 004335D8    pop         ecx
 004335D9    pop         ecx
 004335DA    pop         ebp
 004335DB    ret
*}
end;

//004335DC
procedure sub_004335DC;
begin
{*
 004335DC    push        ebp
 004335DD    mov         ebp,esp
 004335DF    add         esp,0FFFFFFF8
 004335E2    mov         dword ptr [ebp-4],eax
 004335E5    mov         eax,dword ptr [ebp-4]
 004335E8    cmp         dword ptr [eax+58],0;TBitmapCanvas.FBitmap:TBitmap
>004335EC    je          004336E3
 004335F2    mov         eax,dword ptr [ebp-4]
 004335F5    call        TCanvas.Lock
 004335FA    xor         eax,eax
 004335FC    push        ebp
 004335FD    push        4336DC
 00433602    push        dword ptr fs:[eax]
 00433605    mov         dword ptr fs:[eax],esp
 00433608    mov         eax,dword ptr [ebp-4]
 0043360B    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0043360E    call        00434E00
 00433613    mov         eax,dword ptr [ebp-4]
 00433616    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 00433619    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0043361C    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0043361F    call        00433404
 00433624    mov         eax,dword ptr [ebp-4]
 00433627    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0043362A    call        00434F5C
 0043362F    push        0
 00433631    call        gdi32.CreateCompatibleDC
 00433636    mov         dword ptr [ebp-8],eax
 00433639    mov         eax,dword ptr [ebp-4]
 0043363C    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0043363F    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00433642    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>00433646    je          00433666
 00433648    mov         eax,dword ptr [ebp-4]
 0043364B    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0043364E    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00433651    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 00433654    push        eax
 00433655    mov         eax,dword ptr [ebp-8]
 00433658    push        eax
 00433659    call        gdi32.SelectObject
 0043365E    mov         edx,dword ptr [ebp-4]
 00433661    mov         dword ptr [edx+5C],eax;TBitmapCanvas.FOldBitmap:HBITMAP
>00433664    jmp         0043366E
 00433666    mov         eax,dword ptr [ebp-4]
 00433669    xor         edx,edx
 0043366B    mov         dword ptr [eax+5C],edx;TBitmapCanvas.FOldBitmap:HBITMAP
 0043366E    mov         eax,dword ptr [ebp-4]
 00433671    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 00433674    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00433677    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>0043367B    je          004336A6
 0043367D    push        0FF
 0043367F    mov         eax,dword ptr [ebp-4]
 00433682    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 00433685    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00433688    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0043368B    push        eax
 0043368C    mov         eax,dword ptr [ebp-8]
 0043368F    push        eax
 00433690    call        gdi32.SelectPalette
 00433695    mov         edx,dword ptr [ebp-4]
 00433698    mov         dword ptr [edx+60],eax;TBitmapCanvas.FOldPalette:HPALETTE
 0043369B    mov         eax,dword ptr [ebp-8]
 0043369E    push        eax
 0043369F    call        gdi32.RealizePalette
>004336A4    jmp         004336AE
 004336A6    mov         eax,dword ptr [ebp-4]
 004336A9    xor         edx,edx
 004336AB    mov         dword ptr [eax+60],edx;TBitmapCanvas.FOldPalette:HPALETTE
 004336AE    mov         edx,dword ptr [ebp-8]
 004336B1    mov         eax,dword ptr [ebp-4]
 004336B4    call        TCanvas.SetHandle
 004336B9    mov         edx,dword ptr [ebp-4]
 004336BC    mov         eax,[0056C024];0x0 gvar_0056C024
 004336C1    call        00420720
 004336C6    xor         eax,eax
 004336C8    pop         edx
 004336C9    pop         ecx
 004336CA    pop         ecx
 004336CB    mov         dword ptr fs:[eax],edx
 004336CE    push        4336E3
 004336D3    mov         eax,dword ptr [ebp-4]
 004336D6    call        TCanvas.Unlock
 004336DB    ret
>004336DC    jmp         @HandleFinally
>004336E1    jmp         004336D3
 004336E3    pop         ecx
 004336E4    pop         ecx
 004336E5    pop         ebp
 004336E6    ret
*}
end;

//004336E8
procedure sub_004336E8(?:TSharedImage);
begin
{*
 004336E8    push        ebp
 004336E9    mov         ebp,esp
 004336EB    push        ecx
 004336EC    mov         dword ptr [ebp-4],eax
 004336EF    mov         eax,dword ptr [ebp-4]
 004336F2    inc         dword ptr [eax+4];TMetafileImage..........FRefCount:Integer
 004336F5    pop         ecx
 004336F6    pop         ebp
 004336F7    ret
*}
end;

//004336F8
procedure sub_004336F8(?:TSharedImage);
begin
{*
 004336F8    push        ebp
 004336F9    mov         ebp,esp
 004336FB    push        ecx
 004336FC    mov         dword ptr [ebp-4],eax
 004336FF    cmp         dword ptr [ebp-4],0
>00433703    je          00433723
 00433705    mov         eax,dword ptr [ebp-4]
 00433708    dec         dword ptr [eax+4];TMetafileImage...........FRefCount:Integer
 0043370B    mov         eax,dword ptr [ebp-4]
 0043370E    cmp         dword ptr [eax+4],0;TMetafileImage............FRefCount:Integer
>00433712    jne         00433723
 00433714    mov         eax,dword ptr [ebp-4]
 00433717    mov         edx,dword ptr [eax]
 00433719    call        dword ptr [edx];TMetafileImage.sub_00432260
 0043371B    mov         eax,dword ptr [ebp-4]
 0043371E    call        TObject.Free
 00433723    pop         ecx
 00433724    pop         ebp
 00433725    ret
*}
end;

//00433728
destructor TBitmapImage.Destroy;
begin
{*
 00433728    push        ebp
 00433729    mov         ebp,esp
 0043372B    add         esp,0FFFFFFF8
 0043372E    call        @BeforeDestruction
 00433733    mov         byte ptr [ebp-5],dl
 00433736    mov         dword ptr [ebp-4],eax
 00433739    mov         eax,dword ptr [ebp-4]
 0043373C    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>00433740    je          00433761
 00433742    mov         eax,dword ptr [ebp-4]
 00433745    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00433748    call        00433404
 0043374D    mov         eax,dword ptr [ebp-4]
 00433750    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00433753    push        eax
 00433754    call        gdi32.DeleteObject
 00433759    mov         eax,dword ptr [ebp-4]
 0043375C    xor         edx,edx
 0043375E    mov         dword ptr [eax+14],edx;TBitmapImage.FDIBHandle:HBITMAP
 00433761    mov         eax,dword ptr [ebp-4]
 00433764    mov         edx,dword ptr [eax]
 00433766    call        dword ptr [edx];TBitmapImage.sub_004337A8
 00433768    mov         eax,dword ptr [ebp-4]
 0043376B    cmp         dword ptr [eax+64],0
>0043376F    je          0043377D
 00433771    mov         eax,dword ptr [ebp-4]
 00433774    mov         eax,dword ptr [eax+64]
 00433777    push        eax
 00433778    call        kernel32.CloseHandle
 0043377D    mov         eax,dword ptr [ebp-4]
 00433780    add         eax,6C;TBitmapImage.FSaveStream:TMemoryStream
 00433783    call        FreeAndNil
 00433788    mov         dl,byte ptr [ebp-5]
 0043378B    and         dl,0FC
 0043378E    mov         eax,dword ptr [ebp-4]
 00433791    call        TObject.Destroy
 00433796    cmp         byte ptr [ebp-5],0
>0043379A    jle         004337A4
 0043379C    mov         eax,dword ptr [ebp-4]
 0043379F    call        @ClassDestroy
 004337A4    pop         ecx
 004337A5    pop         ecx
 004337A6    pop         ebp
 004337A7    ret
*}
end;

//004337A8
procedure sub_004337A8;
begin
{*
 004337A8    push        ebp
 004337A9    mov         ebp,esp
 004337AB    push        ecx
 004337AC    mov         dword ptr [ebp-4],eax
 004337AF    mov         eax,dword ptr [ebp-4]
 004337B2    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>004337B6    je          004337DD
 004337B8    mov         eax,dword ptr [ebp-4]
 004337BB    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 004337BE    mov         edx,dword ptr [ebp-4]
 004337C1    cmp         eax,dword ptr [edx+14];TBitmapImage.FDIBHandle:HBITMAP
>004337C4    je          004337DD
 004337C6    mov         eax,dword ptr [ebp-4]
 004337C9    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 004337CC    call        00433404
 004337D1    mov         eax,dword ptr [ebp-4]
 004337D4    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 004337D7    push        eax
 004337D8    call        gdi32.DeleteObject
 004337DD    mov         eax,dword ptr [ebp-4]
 004337E0    cmp         dword ptr [eax+0C],0;TBitmapImage.FMaskHandle:HBITMAP
>004337E4    je          00433805
 004337E6    mov         eax,dword ptr [ebp-4]
 004337E9    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 004337EC    call        00433404
 004337F1    mov         eax,dword ptr [ebp-4]
 004337F4    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 004337F7    push        eax
 004337F8    call        gdi32.DeleteObject
 004337FD    mov         eax,dword ptr [ebp-4]
 00433800    xor         edx,edx
 00433802    mov         dword ptr [eax+0C],edx;TBitmapImage.FMaskHandle:HBITMAP
 00433805    mov         eax,dword ptr [ebp-4]
 00433808    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0043380B    call        0042D164
 00433810    mov         eax,dword ptr [ebp-4]
 00433813    xor         edx,edx
 00433815    mov         dword ptr [eax+8],edx;TBitmapImage.FHandle:HBITMAP
 00433818    mov         eax,dword ptr [ebp-4]
 0043381B    xor         edx,edx
 0043381D    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
 00433820    pop         ecx
 00433821    pop         ebp
 00433822    ret
*}
end;

//00433824
{*procedure sub_00433824(?:HBITMAP; ?:?; ?:?);
begin
 00433824    push        ebp
 00433825    mov         ebp,esp
 00433827    add         esp,0FFFFFBE4
 0043382D    mov         dword ptr [ebp-0C],ecx
 00433830    mov         dword ptr [ebp-8],edx
 00433833    mov         dword ptr [ebp-4],eax
 00433836    cmp         dword ptr [ebp-4],0
>0043383A    je          004338EE
 00433840    mov         eax,dword ptr [ebp-0C]
 00433843    cmp         word ptr [eax+26],8
>00433848    ja          004338EE
 0043384E    lea         edx,[ebp-41C]
 00433854    mov         ecx,0FF
 00433859    mov         eax,dword ptr [ebp-8]
 0043385C    call        004304D8
 00433861    mov         dword ptr [ebp-1C],eax
 00433864    cmp         dword ptr [ebp-1C],0
>00433868    je          004338EE
 0043386E    push        0
 00433870    call        user32.GetDC
 00433875    mov         dword ptr [ebp-10],eax
 00433878    mov         eax,dword ptr [ebp-10]
 0043387B    push        eax
 0043387C    call        gdi32.CreateCompatibleDC
 00433881    mov         dword ptr [ebp-14],eax
 00433884    mov         eax,dword ptr [ebp-4]
 00433887    push        eax
 00433888    mov         eax,dword ptr [ebp-14]
 0043388B    push        eax
 0043388C    call        gdi32.SelectObject
 00433891    mov         dword ptr [ebp-18],eax
 00433894    xor         eax,eax
 00433896    push        ebp
 00433897    push        4338E7
 0043389C    push        dword ptr fs:[eax]
 0043389F    mov         dword ptr fs:[eax],esp
 004338A2    lea         eax,[ebp-41C]
 004338A8    push        eax
 004338A9    mov         eax,dword ptr [ebp-1C]
 004338AC    push        eax
 004338AD    push        0
 004338AF    mov         eax,dword ptr [ebp-14]
 004338B2    push        eax
 004338B3    call        gdi32.SetDIBColorTable
 004338B8    xor         eax,eax
 004338BA    pop         edx
 004338BB    pop         ecx
 004338BC    pop         ecx
 004338BD    mov         dword ptr fs:[eax],edx
 004338C0    push        4338EE
 004338C5    mov         eax,dword ptr [ebp-18]
 004338C8    push        eax
 004338C9    mov         eax,dword ptr [ebp-14]
 004338CC    push        eax
 004338CD    call        gdi32.SelectObject
 004338D2    mov         eax,dword ptr [ebp-14]
 004338D5    push        eax
 004338D6    call        gdi32.DeleteDC
 004338DB    mov         eax,dword ptr [ebp-10]
 004338DE    push        eax
 004338DF    push        0
 004338E1    call        user32.ReleaseDC
 004338E6    ret
>004338E7    jmp         @HandleFinally
>004338EC    jmp         004338C5
 004338EE    mov         esp,ebp
 004338F0    pop         ebp
 004338F1    ret
end;*}

//004338F4
procedure sub_004338F4(?:TDIBSection);
begin
{*
 004338F4    push        ebp
 004338F5    mov         ebp,esp
 004338F7    push        ecx
 004338F8    mov         dword ptr [ebp-4],eax
 004338FB    mov         eax,dword ptr [ebp-4]
 004338FE    test        byte ptr [eax+28],3
>00433902    je          0043395F
 00433904    mov         eax,dword ptr [ebp-4]
 00433907    cmp         dword ptr [eax+40],0
>0043390B    jne         0043395F
 0043390D    mov         eax,dword ptr [ebp-4]
 00433910    cmp         word ptr [eax+26],10
>00433915    jne         00433937
 00433917    mov         eax,dword ptr [ebp-4]
 0043391A    mov         dword ptr [eax+40],0F800
 00433921    mov         eax,dword ptr [ebp-4]
 00433924    mov         dword ptr [eax+44],7E0
 0043392B    mov         eax,dword ptr [ebp-4]
 0043392E    mov         dword ptr [eax+48],1F
>00433935    jmp         0043395F
 00433937    mov         eax,dword ptr [ebp-4]
 0043393A    cmp         word ptr [eax+26],20
>0043393F    jne         0043395F
 00433941    mov         eax,dword ptr [ebp-4]
 00433944    mov         dword ptr [eax+40],0FF0000
 0043394B    mov         eax,dword ptr [ebp-4]
 0043394E    mov         dword ptr [eax+44],0FF00
 00433955    mov         eax,dword ptr [ebp-4]
 00433958    mov         dword ptr [eax+48],0FF
 0043395F    pop         ecx
 00433960    pop         ebp
 00433961    ret
*}
end;

//00433964
{*function sub_00433964(?:HBITMAP; ?:HPALETTE; ?:HPALETTE; ?:?; ?:?):?;
begin
 00433964    push        ebp
 00433965    mov         ebp,esp
 00433967    add         esp,0FFFFFF60
 0043396D    push        ebx
 0043396E    push        esi
 0043396F    push        edi
 00433970    mov         dword ptr [ebp-0C],ecx
 00433973    mov         dword ptr [ebp-8],edx
 00433976    mov         dword ptr [ebp-4],eax
 00433979    xor         eax,eax
 0043397B    mov         dword ptr [ebp-10],eax
 0043397E    mov         eax,dword ptr [ebp+0C]
 00433981    cmp         dword ptr [eax+18],0
>00433985    je          004339A1
 00433987    mov         eax,dword ptr [ebp+0C]
 0043398A    cmp         dword ptr [eax+1C],0
>0043398E    je          00433FC5
 00433994    mov         eax,dword ptr [ebp+0C]
 00433997    cmp         dword ptr [eax+20],0
>0043399B    je          00433FC5
 004339A1    mov         eax,dword ptr [ebp+0C]
 004339A4    cmp         dword ptr [eax+18],0
>004339A8    jne         004339C4
 004339AA    mov         eax,dword ptr [ebp+0C]
 004339AD    cmp         dword ptr [eax+4],0
>004339B1    je          00433FC5
 004339B7    mov         eax,dword ptr [ebp+0C]
 004339BA    cmp         dword ptr [eax+8],0
>004339BE    je          00433FC5
 004339C4    mov         eax,dword ptr [ebp-4]
 004339C7    call        00433404
 004339CC    xor         eax,eax
 004339CE    mov         dword ptr [ebp-78],eax
 004339D1    cmp         dword ptr [ebp-4],0
>004339D5    je          004339F3
 004339D7    lea         eax,[ebp-90]
 004339DD    push        eax
 004339DE    push        54
 004339E0    mov         eax,dword ptr [ebp-4]
 004339E3    push        eax
 004339E4    call        gdi32.GetObjectA
 004339E9    cmp         eax,18
>004339EC    jge         004339F3
 004339EE    call        InvalidBitmap
 004339F3    push        0
 004339F5    call        user32.GetDC
 004339FA    call        0042FBD4
 004339FF    mov         dword ptr [ebp-1C],eax
 00433A02    mov         eax,dword ptr [ebp-1C]
 00433A05    push        eax
 00433A06    call        gdi32.CreateCompatibleDC
 00433A0B    call        0042FBD4
 00433A10    mov         dword ptr [ebp-20],eax
 00433A13    xor         eax,eax
 00433A15    push        ebp
 00433A16    push        433FBE
 00433A1B    push        dword ptr fs:[eax]
 00433A1E    mov         dword ptr fs:[eax],esp
 00433A21    mov         eax,dword ptr [ebp+0C]
 00433A24    cmp         dword ptr [eax+18],28
>00433A28    jae         00433A88
 00433A2A    mov         eax,dword ptr [ebp+0C]
 00433A2D    mov         ax,word ptr [eax+10]
 00433A31    mov         edx,dword ptr [ebp+0C]
 00433A34    or          ax,word ptr [edx+12]
 00433A38    cmp         ax,1
>00433A3C    jne         00433A64
 00433A3E    push        0
 00433A40    push        1
 00433A42    push        1
 00433A44    mov         eax,dword ptr [ebp+0C]
 00433A47    mov         eax,dword ptr [eax+8]
 00433A4A    push        eax
 00433A4B    mov         eax,dword ptr [ebp+0C]
 00433A4E    mov         eax,dword ptr [eax+4]
 00433A51    push        eax
 00433A52    call        gdi32.CreateBitmap
 00433A57    call        0042FBD4
 00433A5C    mov         dword ptr [ebp-10],eax
>00433A5F    jmp         00433CC4
 00433A64    mov         eax,dword ptr [ebp+0C]
 00433A67    mov         eax,dword ptr [eax+8]
 00433A6A    push        eax
 00433A6B    mov         eax,dword ptr [ebp+0C]
 00433A6E    mov         eax,dword ptr [eax+4]
 00433A71    push        eax
 00433A72    mov         eax,dword ptr [ebp-1C]
 00433A75    push        eax
 00433A76    call        gdi32.CreateCompatibleBitmap
 00433A7B    call        0042FBD4
 00433A80    mov         dword ptr [ebp-10],eax
>00433A83    jmp         00433CC4
 00433A88    mov         eax,42C
 00433A8D    call        @GetMem
 00433A92    mov         dword ptr [ebp-28],eax
 00433A95    xor         eax,eax
 00433A97    push        ebp
 00433A98    push        433CBD
 00433A9D    push        dword ptr fs:[eax]
 00433AA0    mov         dword ptr fs:[eax],esp
 00433AA3    mov         eax,dword ptr [ebp+0C]
 00433AA6    mov         dword ptr [eax+18],28
 00433AAD    mov         eax,dword ptr [ebp+0C]
 00433AB0    mov         word ptr [eax+24],1
 00433AB6    mov         eax,dword ptr [ebp+0C]
 00433AB9    cmp         word ptr [eax+26],0
>00433ABE    jne         00433AE3
 00433AC0    push        0C
 00433AC2    mov         eax,dword ptr [ebp-1C]
 00433AC5    push        eax
 00433AC6    call        gdi32.GetDeviceCaps
 00433ACB    mov         ebx,eax
 00433ACD    push        0E
 00433ACF    mov         eax,dword ptr [ebp-1C]
 00433AD2    push        eax
 00433AD3    call        gdi32.GetDeviceCaps
 00433AD8    imul        bx,ax
 00433ADC    mov         eax,dword ptr [ebp+0C]
 00433ADF    mov         word ptr [eax+26],bx
 00433AE3    mov         eax,dword ptr [ebp+0C]
 00433AE6    mov         edx,dword ptr [ebp-28]
 00433AE9    lea         esi,[eax+18]
 00433AEC    mov         edi,edx
 00433AEE    mov         ecx,0A
 00433AF3    rep movs    dword ptr [edi],dword ptr [esi]
 00433AF5    mov         eax,dword ptr [ebp+0C]
 00433AF8    mov         eax,dword ptr [eax+1C]
 00433AFB    mov         edx,dword ptr [ebp+0C]
 00433AFE    mov         dword ptr [edx+4],eax
 00433B01    mov         eax,dword ptr [ebp+0C]
 00433B04    mov         eax,dword ptr [eax+20]
 00433B07    mov         edx,dword ptr [ebp+0C]
 00433B0A    mov         dword ptr [edx+8],eax
 00433B0D    mov         eax,dword ptr [ebp+0C]
 00433B10    cmp         word ptr [eax+26],8
>00433B15    ja          00433BE2
 00433B1B    mov         eax,dword ptr [ebp+0C]
 00433B1E    cmp         word ptr [eax+26],1
>00433B23    jne         00433B4D
 00433B25    cmp         dword ptr [ebp-4],0
>00433B29    je          00433B31
 00433B2B    cmp         dword ptr [ebp-7C],0
>00433B2F    jne         00433B4D
 00433B31    mov         eax,dword ptr [ebp-28]
 00433B34    xor         edx,edx
 00433B36    mov         dword ptr [eax+28],edx
 00433B39    mov         eax,dword ptr [ebp-28]
 00433B3C    add         eax,28
 00433B3F    add         eax,4
 00433B42    mov         dword ptr [eax],0FFFFFF
>00433B48    jmp         00433C1D
 00433B4D    cmp         dword ptr [ebp-0C],0
>00433B51    je          00433B6B
 00433B53    mov         eax,dword ptr [ebp-28]
 00433B56    lea         edx,[eax+28]
 00433B59    mov         ecx,0FF
 00433B5E    mov         eax,dword ptr [ebp-0C]
 00433B61    call        004304D8
>00433B66    jmp         00433C1D
 00433B6B    cmp         dword ptr [ebp-4],0
>00433B6F    je          00433C1D
 00433B75    mov         eax,dword ptr [ebp-4]
 00433B78    push        eax
 00433B79    mov         eax,dword ptr [ebp-20]
 00433B7C    push        eax
 00433B7D    call        gdi32.SelectObject
 00433B82    mov         dword ptr [ebp-18],eax
 00433B85    cmp         dword ptr [ebp-78],0
>00433B89    jbe         00433BB0
 00433B8B    cmp         dword ptr [ebp-7C],0
>00433B8F    je          00433BB0
 00433B91    mov         eax,dword ptr [ebp-28]
 00433B94    add         eax,28
 00433B97    push        eax
 00433B98    push        100
 00433B9D    push        0
 00433B9F    mov         eax,dword ptr [ebp-20]
 00433BA2    push        eax
 00433BA3    call        gdi32.GetDIBColorTable
 00433BA8    mov         edx,dword ptr [ebp+0C]
 00433BAB    mov         dword ptr [edx+38],eax
>00433BAE    jmp         00433BD3
 00433BB0    push        0
 00433BB2    mov         eax,dword ptr [ebp-28]
 00433BB5    push        eax
 00433BB6    push        0
 00433BB8    mov         eax,dword ptr [ebp+0C]
 00433BBB    mov         eax,dword ptr [eax+20]
 00433BBE    cdq
 00433BBF    xor         eax,edx
 00433BC1    sub         eax,edx
 00433BC3    push        eax
 00433BC4    push        0
 00433BC6    mov         eax,dword ptr [ebp-4]
 00433BC9    push        eax
 00433BCA    mov         eax,dword ptr [ebp-20]
 00433BCD    push        eax
 00433BCE    call        gdi32.GetDIBits
 00433BD3    mov         eax,dword ptr [ebp-18]
 00433BD6    push        eax
 00433BD7    mov         eax,dword ptr [ebp-20]
 00433BDA    push        eax
 00433BDB    call        gdi32.SelectObject
>00433BE0    jmp         00433C1D
 00433BE2    mov         eax,dword ptr [ebp+0C]
 00433BE5    cmp         word ptr [eax+26],10
>00433BEA    je          00433BF6
 00433BEC    mov         eax,dword ptr [ebp+0C]
 00433BEF    cmp         word ptr [eax+26],20
>00433BF4    jne         00433C1D
 00433BF6    mov         eax,dword ptr [ebp+0C]
 00433BF9    test        byte ptr [eax+28],3
>00433BFD    je          00433C1D
 00433BFF    mov         eax,dword ptr [ebp+0C]
 00433C02    call        004338F4
 00433C07    mov         eax,dword ptr [ebp-28]
 00433C0A    lea         edx,[eax+28]
 00433C0D    mov         eax,dword ptr [ebp+0C]
 00433C10    add         eax,40
 00433C13    mov         ecx,0C
 00433C18    call        Move
 00433C1D    push        0
 00433C1F    push        0
 00433C21    lea         eax,[ebp-2C]
 00433C24    push        eax
 00433C25    push        0
 00433C27    mov         eax,dword ptr [ebp-28]
 00433C2A    push        eax
 00433C2B    mov         eax,dword ptr [ebp-1C]
 00433C2E    push        eax
 00433C2F    call        gdi32.CreateDIBSection
 00433C34    call        0042FBD4
 00433C39    mov         dword ptr [ebp-10],eax
 00433C3C    cmp         dword ptr [ebp-2C],0
>00433C40    jne         00433C47
 00433C42    call        0042FB28
 00433C47    cmp         dword ptr [ebp-4],0
>00433C4B    je          00433CA7
 00433C4D    mov         eax,dword ptr [ebp+0C]
 00433C50    mov         eax,dword ptr [eax+1C]
 00433C53    cmp         eax,dword ptr [ebp-8C]
>00433C59    jne         00433CA7
 00433C5B    mov         eax,dword ptr [ebp+0C]
 00433C5E    mov         eax,dword ptr [eax+20]
 00433C61    cmp         eax,dword ptr [ebp-88]
>00433C67    jne         00433CA7
 00433C69    mov         eax,dword ptr [ebp+0C]
 00433C6C    cmp         word ptr [eax+26],8
>00433C71    jbe         00433CA7
 00433C73    push        0
 00433C75    mov         eax,dword ptr [ebp-28]
 00433C78    push        eax
 00433C79    mov         eax,dword ptr [ebp-2C]
 00433C7C    push        eax
 00433C7D    mov         eax,dword ptr [ebp+0C]
 00433C80    mov         eax,dword ptr [eax+20]
 00433C83    cdq
 00433C84    xor         eax,edx
 00433C86    sub         eax,edx
 00433C88    push        eax
 00433C89    push        0
 00433C8B    mov         eax,dword ptr [ebp-4]
 00433C8E    push        eax
 00433C8F    mov         eax,dword ptr [ebp-20]
 00433C92    push        eax
 00433C93    call        gdi32.GetDIBits
 00433C98    call        @TryFinallyExit
 00433C9D    call        @TryFinallyExit
>00433CA2    jmp         00433FC5
 00433CA7    xor         eax,eax
 00433CA9    pop         edx
 00433CAA    pop         ecx
 00433CAB    pop         ecx
 00433CAC    mov         dword ptr fs:[eax],edx
 00433CAF    push        433CC4
 00433CB4    mov         eax,dword ptr [ebp-28]
 00433CB7    call        @FreeMem
 00433CBC    ret
>00433CBD    jmp         @HandleFinally
>00433CC2    jmp         00433CB4
 00433CC4    mov         eax,dword ptr [ebp-10]
 00433CC7    call        0042FBD4
 00433CCC    mov         eax,dword ptr [ebp-10]
 00433CCF    push        eax
 00433CD0    mov         eax,dword ptr [ebp-20]
 00433CD3    push        eax
 00433CD4    call        gdi32.SelectObject
 00433CD9    call        0042FBD4
 00433CDE    mov         dword ptr [ebp-18],eax
 00433CE1    xor         eax,eax
 00433CE3    push        ebp
 00433CE4    push        433F6F
 00433CE9    push        dword ptr fs:[eax]
 00433CEC    mov         dword ptr fs:[eax],esp
 00433CEF    xor         eax,eax
 00433CF1    push        ebp
 00433CF2    push        433F5E
 00433CF7    push        dword ptr fs:[eax]
 00433CFA    mov         dword ptr fs:[eax],esp
 00433CFD    xor         eax,eax
 00433CFF    mov         dword ptr [ebp-38],eax
 00433D02    xor         eax,eax
 00433D04    mov         dword ptr [ebp-3C],eax
 00433D07    cmp         dword ptr [ebp-0C],0
>00433D0B    je          00433D28
 00433D0D    push        0
 00433D0F    mov         eax,dword ptr [ebp-0C]
 00433D12    push        eax
 00433D13    mov         eax,dword ptr [ebp-20]
 00433D16    push        eax
 00433D17    call        gdi32.SelectPalette
 00433D1C    mov         dword ptr [ebp-38],eax
 00433D1F    mov         eax,dword ptr [ebp-20]
 00433D22    push        eax
 00433D23    call        gdi32.RealizePalette
 00433D28    xor         eax,eax
 00433D2A    push        ebp
 00433D2B    push        433F3C
 00433D30    push        dword ptr fs:[eax]
 00433D33    mov         dword ptr fs:[eax],esp
 00433D36    cmp         dword ptr [ebp+8],0
>00433D3A    je          00433DF5
 00433D40    mov         eax,dword ptr [ebp+8]
 00433D43    mov         eax,dword ptr [eax+14]
 00433D46    call        TBrush.GetHandle
 00433D4B    push        eax
 00433D4C    mov         eax,dword ptr [ebp+0C]
 00433D4F    mov         eax,dword ptr [eax+8]
 00433D52    push        eax
 00433D53    lea         eax,[ebp-0A0]
 00433D59    push        eax
 00433D5A    mov         ecx,dword ptr [ebp+0C]
 00433D5D    mov         ecx,dword ptr [ecx+4]
 00433D60    xor         edx,edx
 00433D62    xor         eax,eax
 00433D64    call        0041E714
 00433D69    lea         eax,[ebp-0A0]
 00433D6F    push        eax
 00433D70    mov         eax,dword ptr [ebp-20]
 00433D73    push        eax
 00433D74    call        user32.FillRect
 00433D79    mov         eax,dword ptr [ebp+8]
 00433D7C    mov         eax,dword ptr [eax+0C]
 00433D7F    mov         eax,dword ptr [eax+18]
 00433D82    call        ColorToRGB
 00433D87    push        eax
 00433D88    mov         eax,dword ptr [ebp-20]
 00433D8B    push        eax
 00433D8C    call        gdi32.SetTextColor
 00433D91    mov         eax,dword ptr [ebp+8]
 00433D94    mov         eax,dword ptr [eax+14]
 00433D97    call        TBrush.GetColor
 00433D9C    call        ColorToRGB
 00433DA1    push        eax
 00433DA2    mov         eax,dword ptr [ebp-20]
 00433DA5    push        eax
 00433DA6    call        gdi32.SetBkColor
 00433DAB    mov         eax,dword ptr [ebp+0C]
 00433DAE    cmp         word ptr [eax+26],1
>00433DB3    jne         00433E15
 00433DB5    mov         eax,dword ptr [ebp+0C]
 00433DB8    cmp         dword ptr [eax+14],0
>00433DBC    je          00433E15
 00433DBE    mov         eax,dword ptr [ebp+8]
 00433DC1    mov         eax,dword ptr [eax+0C]
 00433DC4    mov         eax,dword ptr [eax+18]
 00433DC7    call        ColorToRGB
 00433DCC    mov         dword ptr [ebp-34],eax
 00433DCF    mov         eax,dword ptr [ebp+8]
 00433DD2    mov         eax,dword ptr [eax+14]
 00433DD5    call        TBrush.GetColor
 00433DDA    call        ColorToRGB
 00433DDF    mov         dword ptr [ebp-30],eax
 00433DE2    lea         eax,[ebp-34]
 00433DE5    push        eax
 00433DE6    push        2
 00433DE8    push        0
 00433DEA    mov         eax,dword ptr [ebp-20]
 00433DED    push        eax
 00433DEE    call        gdi32.SetDIBColorTable
>00433DF3    jmp         00433E15
 00433DF5    push        0FF0062
 00433DFA    mov         eax,dword ptr [ebp+0C]
 00433DFD    mov         eax,dword ptr [eax+8]
 00433E00    push        eax
 00433E01    mov         eax,dword ptr [ebp+0C]
 00433E04    mov         eax,dword ptr [eax+4]
 00433E07    push        eax
 00433E08    push        0
 00433E0A    push        0
 00433E0C    mov         eax,dword ptr [ebp-20]
 00433E0F    push        eax
 00433E10    call        gdi32.PatBlt
 00433E15    cmp         dword ptr [ebp-4],0
>00433E19    je          00433F19
 00433E1F    mov         eax,dword ptr [ebp-1C]
 00433E22    push        eax
 00433E23    call        gdi32.CreateCompatibleDC
 00433E28    call        0042FBD4
 00433E2D    mov         dword ptr [ebp-24],eax
 00433E30    xor         eax,eax
 00433E32    push        ebp
 00433E33    push        433F12
 00433E38    push        dword ptr fs:[eax]
 00433E3B    mov         dword ptr fs:[eax],esp
 00433E3E    mov         eax,dword ptr [ebp-4]
 00433E41    push        eax
 00433E42    mov         eax,dword ptr [ebp-24]
 00433E45    push        eax
 00433E46    call        gdi32.SelectObject
 00433E4B    call        0042FBD4
 00433E50    mov         dword ptr [ebp-14],eax
 00433E53    cmp         dword ptr [ebp-8],0
>00433E57    je          00433E74
 00433E59    push        0
 00433E5B    mov         eax,dword ptr [ebp-8]
 00433E5E    push        eax
 00433E5F    mov         eax,dword ptr [ebp-24]
 00433E62    push        eax
 00433E63    call        gdi32.SelectPalette
 00433E68    mov         dword ptr [ebp-3C],eax
 00433E6B    mov         eax,dword ptr [ebp-24]
 00433E6E    push        eax
 00433E6F    call        gdi32.RealizePalette
 00433E74    cmp         dword ptr [ebp+8],0
>00433E78    je          00433EAC
 00433E7A    mov         eax,dword ptr [ebp+8]
 00433E7D    mov         eax,dword ptr [eax+0C]
 00433E80    mov         eax,dword ptr [eax+18]
 00433E83    call        ColorToRGB
 00433E88    push        eax
 00433E89    mov         eax,dword ptr [ebp-24]
 00433E8C    push        eax
 00433E8D    call        gdi32.SetTextColor
 00433E92    mov         eax,dword ptr [ebp+8]
 00433E95    mov         eax,dword ptr [eax+14]
 00433E98    call        TBrush.GetColor
 00433E9D    call        ColorToRGB
 00433EA2    push        eax
 00433EA3    mov         eax,dword ptr [ebp-24]
 00433EA6    push        eax
 00433EA7    call        gdi32.SetBkColor
 00433EAC    push        0CC0020
 00433EB1    push        0
 00433EB3    push        0
 00433EB5    mov         eax,dword ptr [ebp-24]
 00433EB8    push        eax
 00433EB9    mov         eax,dword ptr [ebp+0C]
 00433EBC    mov         eax,dword ptr [eax+8]
 00433EBF    push        eax
 00433EC0    mov         eax,dword ptr [ebp+0C]
 00433EC3    mov         eax,dword ptr [eax+4]
 00433EC6    push        eax
 00433EC7    push        0
 00433EC9    push        0
 00433ECB    mov         eax,dword ptr [ebp-20]
 00433ECE    push        eax
 00433ECF    call        gdi32.BitBlt
 00433ED4    cmp         dword ptr [ebp-8],0
>00433ED8    je          00433EE9
 00433EDA    push        0FF
 00433EDC    mov         eax,dword ptr [ebp-3C]
 00433EDF    push        eax
 00433EE0    mov         eax,dword ptr [ebp-24]
 00433EE3    push        eax
 00433EE4    call        gdi32.SelectPalette
 00433EE9    mov         eax,dword ptr [ebp-14]
 00433EEC    push        eax
 00433EED    mov         eax,dword ptr [ebp-24]
 00433EF0    push        eax
 00433EF1    call        gdi32.SelectObject
 00433EF6    call        0042FBD4
 00433EFB    xor         eax,eax
 00433EFD    pop         edx
 00433EFE    pop         ecx
 00433EFF    pop         ecx
 00433F00    mov         dword ptr fs:[eax],edx
 00433F03    push        433F19
 00433F08    mov         eax,dword ptr [ebp-24]
 00433F0B    push        eax
 00433F0C    call        gdi32.DeleteDC
 00433F11    ret
>00433F12    jmp         @HandleFinally
>00433F17    jmp         00433F08
 00433F19    xor         eax,eax
 00433F1B    pop         edx
 00433F1C    pop         ecx
 00433F1D    pop         ecx
 00433F1E    mov         dword ptr fs:[eax],edx
 00433F21    push        433F43
 00433F26    cmp         dword ptr [ebp-0C],0
>00433F2A    je          00433F3B
 00433F2C    push        0FF
 00433F2E    mov         eax,dword ptr [ebp-38]
 00433F31    push        eax
 00433F32    mov         eax,dword ptr [ebp-20]
 00433F35    push        eax
 00433F36    call        gdi32.SelectPalette
 00433F3B    ret
>00433F3C    jmp         @HandleFinally
>00433F41    jmp         00433F26
 00433F43    xor         eax,eax
 00433F45    pop         edx
 00433F46    pop         ecx
 00433F47    pop         ecx
 00433F48    mov         dword ptr fs:[eax],edx
 00433F4B    push        433F65
 00433F50    mov         eax,dword ptr [ebp-18]
 00433F53    push        eax
 00433F54    mov         eax,dword ptr [ebp-20]
 00433F57    push        eax
 00433F58    call        gdi32.SelectObject
 00433F5D    ret
>00433F5E    jmp         @HandleFinally
>00433F63    jmp         00433F50
 00433F65    xor         eax,eax
 00433F67    pop         edx
 00433F68    pop         ecx
 00433F69    pop         ecx
 00433F6A    mov         dword ptr fs:[eax],edx
>00433F6D    jmp         00433F87
>00433F6F    jmp         @HandleAnyException
 00433F74    mov         eax,dword ptr [ebp-10]
 00433F77    push        eax
 00433F78    call        gdi32.DeleteObject
 00433F7D    call        @RaiseAgain
 00433F82    call        @DoneExcept
 00433F87    xor         eax,eax
 00433F89    pop         edx
 00433F8A    pop         ecx
 00433F8B    pop         ecx
 00433F8C    mov         dword ptr fs:[eax],edx
 00433F8F    push        433FC5
 00433F94    mov         eax,dword ptr [ebp-20]
 00433F97    push        eax
 00433F98    call        gdi32.DeleteDC
 00433F9D    mov         eax,dword ptr [ebp-1C]
 00433FA0    push        eax
 00433FA1    push        0
 00433FA3    call        user32.ReleaseDC
 00433FA8    cmp         dword ptr [ebp-10],0
>00433FAC    je          00433FBD
 00433FAE    mov         eax,dword ptr [ebp+0C]
 00433FB1    push        eax
 00433FB2    push        54
 00433FB4    mov         eax,dword ptr [ebp-10]
 00433FB7    push        eax
 00433FB8    call        gdi32.GetObjectA
 00433FBD    ret
>00433FBE    jmp         @HandleFinally
>00433FC3    jmp         00433F94
 00433FC5    mov         eax,dword ptr [ebp-10]
 00433FC8    pop         edi
 00433FC9    pop         esi
 00433FCA    pop         ebx
 00433FCB    mov         esp,ebp
 00433FCD    pop         ebp
 00433FCE    ret         8
end;*}

//00433FD4
{*function sub_00433FD4(?:HPALETTE):?;
begin
 00433FD4    push        ebp
 00433FD5    mov         ebp,esp
 00433FD7    add         esp,0FFFFFBF0
 00433FDD    mov         dword ptr [ebp-4],eax
 00433FE0    xor         eax,eax
 00433FE2    mov         dword ptr [ebp-8],eax
 00433FE5    cmp         dword ptr [ebp-4],0
>00433FE9    je          00434042
 00433FEB    xor         eax,eax
 00433FED    mov         dword ptr [ebp-0C],eax
 00433FF0    lea         eax,[ebp-0C]
 00433FF3    push        eax
 00433FF4    push        4
 00433FF6    mov         eax,dword ptr [ebp-4]
 00433FF9    push        eax
 00433FFA    call        gdi32.GetObjectA
 00433FFF    test        eax,eax
>00434001    je          00434042
 00434003    cmp         dword ptr [ebp-0C],0
>00434007    je          00434042
 00434009    mov         word ptr [ebp-410],300
 00434012    mov         ax,word ptr [ebp-0C]
 00434016    mov         word ptr [ebp-40E],ax
 0043401D    lea         eax,[ebp-40C]
 00434023    push        eax
 00434024    mov         eax,dword ptr [ebp-0C]
 00434027    push        eax
 00434028    push        0
 0043402A    mov         eax,dword ptr [ebp-4]
 0043402D    push        eax
 0043402E    call        gdi32.GetPaletteEntries
 00434033    lea         eax,[ebp-410]
 00434039    push        eax
 0043403A    call        gdi32.CreatePalette
 0043403F    mov         dword ptr [ebp-8],eax
 00434042    mov         eax,dword ptr [ebp-8]
 00434045    mov         esp,ebp
 00434047    pop         ebp
 00434048    ret
end;*}

//0043404C
{*function sub_0043404C(?:HBITMAP; ?:HPALETTE; ?:?):?;
begin
 0043404C    push        ebp
 0043404D    mov         ebp,esp
 0043404F    add         esp,0FFFFFF80
 00434052    mov         dword ptr [ebp-0C],ecx
 00434055    mov         dword ptr [ebp-8],edx
 00434058    mov         dword ptr [ebp-4],eax
 0043405B    xor         eax,eax
 0043405D    mov         dword ptr [ebp-10],eax
 00434060    cmp         dword ptr [ebp-4],0
>00434064    je          0043426E
 0043406A    lea         eax,[ebp-80]
 0043406D    push        eax
 0043406E    push        54
 00434070    mov         eax,dword ptr [ebp-4]
 00434073    push        eax
 00434074    call        gdi32.GetObjectA
 00434079    test        eax,eax
>0043407B    je          0043426E
 00434081    mov         eax,dword ptr [ebp-4]
 00434084    call        00433404
 00434089    xor         eax,eax
 0043408B    mov         dword ptr [ebp-14],eax
 0043408E    xor         eax,eax
 00434090    mov         dword ptr [ebp-1C],eax
 00434093    xor         eax,eax
 00434095    push        ebp
 00434096    push        434267
 0043409B    push        dword ptr fs:[eax]
 0043409E    mov         dword ptr fs:[eax],esp
 004340A1    push        0
 004340A3    call        user32.GetDC
 004340A8    call        0042FBD4
 004340AD    mov         dword ptr [ebp-14],eax
 004340B0    mov         eax,dword ptr [ebp-14]
 004340B3    push        eax
 004340B4    call        gdi32.CreateCompatibleDC
 004340B9    call        0042FBD4
 004340BE    mov         dword ptr [ebp-1C],eax
 004340C1    push        0
 004340C3    push        1
 004340C5    push        1
 004340C7    mov         eax,dword ptr [ebp-78]
 004340CA    push        eax
 004340CB    mov         eax,dword ptr [ebp-7C]
 004340CE    push        eax
 004340CF    call        gdi32.CreateBitmap
 004340D4    mov         dword ptr [ebp-10],eax
 004340D7    cmp         dword ptr [ebp-10],0
>004340DB    je          00434239
 004340E1    mov         eax,dword ptr [ebp-10]
 004340E4    push        eax
 004340E5    mov         eax,dword ptr [ebp-1C]
 004340E8    push        eax
 004340E9    call        gdi32.SelectObject
 004340EE    mov         dword ptr [ebp-2C],eax
 004340F1    cmp         dword ptr [ebp-0C],1FFFFFFF
>004340F8    jne         00434116
 004340FA    push        42
 004340FC    mov         eax,dword ptr [ebp-78]
 004340FF    push        eax
 00434100    mov         eax,dword ptr [ebp-7C]
 00434103    push        eax
 00434104    push        0
 00434106    push        0
 00434108    mov         eax,dword ptr [ebp-1C]
 0043410B    push        eax
 0043410C    call        gdi32.PatBlt
>00434111    jmp         00434226
 00434116    mov         eax,dword ptr [ebp-14]
 00434119    push        eax
 0043411A    call        gdi32.CreateCompatibleDC
 0043411F    call        0042FBD4
 00434124    mov         dword ptr [ebp-18],eax
 00434127    xor         eax,eax
 00434129    push        ebp
 0043412A    push        43421F
 0043412F    push        dword ptr fs:[eax]
 00434132    mov         dword ptr fs:[eax],esp
 00434135    cmp         dword ptr [ebp-6C],0
>00434139    je          0043415D
 0043413B    mov         byte ptr [ebp-21],1
 0043413F    xor         eax,eax
 00434141    mov         dword ptr [ebp-68],eax
 00434144    lea         eax,[ebp-80]
 00434147    push        eax
 00434148    push        0
 0043414A    mov         ecx,dword ptr [ebp-8]
 0043414D    mov         edx,dword ptr [ebp-8]
 00434150    mov         eax,dword ptr [ebp-4]
 00434153    call        00433964
 00434158    mov         dword ptr [ebp-4],eax
>0043415B    jmp         00434161
 0043415D    mov         byte ptr [ebp-21],0
 00434161    mov         eax,dword ptr [ebp-4]
 00434164    push        eax
 00434165    mov         eax,dword ptr [ebp-18]
 00434168    push        eax
 00434169    call        gdi32.SelectObject
 0043416E    mov         dword ptr [ebp-28],eax
 00434171    cmp         dword ptr [ebp-8],0
>00434175    je          004341A7
 00434177    push        0
 00434179    mov         eax,dword ptr [ebp-8]
 0043417C    push        eax
 0043417D    mov         eax,dword ptr [ebp-18]
 00434180    push        eax
 00434181    call        gdi32.SelectPalette
 00434186    mov         eax,dword ptr [ebp-18]
 00434189    push        eax
 0043418A    call        gdi32.RealizePalette
 0043418F    push        0
 00434191    mov         eax,dword ptr [ebp-8]
 00434194    push        eax
 00434195    mov         eax,dword ptr [ebp-1C]
 00434198    push        eax
 00434199    call        gdi32.SelectPalette
 0043419E    mov         eax,dword ptr [ebp-1C]
 004341A1    push        eax
 004341A2    call        gdi32.RealizePalette
 004341A7    mov         eax,dword ptr [ebp-0C]
 004341AA    push        eax
 004341AB    mov         eax,dword ptr [ebp-18]
 004341AE    push        eax
 004341AF    call        gdi32.SetBkColor
 004341B4    mov         dword ptr [ebp-20],eax
 004341B7    push        0CC0020
 004341BC    push        0
 004341BE    push        0
 004341C0    mov         eax,dword ptr [ebp-18]
 004341C3    push        eax
 004341C4    mov         eax,dword ptr [ebp-78]
 004341C7    push        eax
 004341C8    mov         eax,dword ptr [ebp-7C]
 004341CB    push        eax
 004341CC    push        0
 004341CE    push        0
 004341D0    mov         eax,dword ptr [ebp-1C]
 004341D3    push        eax
 004341D4    call        gdi32.BitBlt
 004341D9    mov         eax,dword ptr [ebp-20]
 004341DC    push        eax
 004341DD    mov         eax,dword ptr [ebp-18]
 004341E0    push        eax
 004341E1    call        gdi32.SetBkColor
 004341E6    cmp         dword ptr [ebp-28],0
>004341EA    je          004341F9
 004341EC    mov         eax,dword ptr [ebp-28]
 004341EF    push        eax
 004341F0    mov         eax,dword ptr [ebp-18]
 004341F3    push        eax
 004341F4    call        gdi32.SelectObject
 004341F9    cmp         byte ptr [ebp-21],0
>004341FD    je          00434208
 004341FF    mov         eax,dword ptr [ebp-4]
 00434202    push        eax
 00434203    call        gdi32.DeleteObject
 00434208    xor         eax,eax
 0043420A    pop         edx
 0043420B    pop         ecx
 0043420C    pop         ecx
 0043420D    mov         dword ptr fs:[eax],edx
 00434210    push        434226
 00434215    mov         eax,dword ptr [ebp-18]
 00434218    push        eax
 00434219    call        gdi32.DeleteDC
 0043421E    ret
>0043421F    jmp         @HandleFinally
>00434224    jmp         00434215
 00434226    cmp         dword ptr [ebp-2C],0
>0043422A    je          00434239
 0043422C    mov         eax,dword ptr [ebp-2C]
 0043422F    push        eax
 00434230    mov         eax,dword ptr [ebp-1C]
 00434233    push        eax
 00434234    call        gdi32.SelectObject
 00434239    xor         eax,eax
 0043423B    pop         edx
 0043423C    pop         ecx
 0043423D    pop         ecx
 0043423E    mov         dword ptr fs:[eax],edx
 00434241    push        43426E
 00434246    cmp         dword ptr [ebp-1C],0
>0043424A    je          00434255
 0043424C    mov         eax,dword ptr [ebp-1C]
 0043424F    push        eax
 00434250    call        gdi32.DeleteDC
 00434255    cmp         dword ptr [ebp-14],0
>00434259    je          00434266
 0043425B    mov         eax,dword ptr [ebp-14]
 0043425E    push        eax
 0043425F    push        0
 00434261    call        user32.ReleaseDC
 00434266    ret
>00434267    jmp         @HandleFinally
>0043426C    jmp         00434246
 0043426E    mov         eax,dword ptr [ebp-10]
 00434271    mov         esp,ebp
 00434273    pop         ebp
 00434274    ret
end;*}

//00434278
constructor TBitmap.Create;
begin
{*
 00434278    push        ebp
 00434279    mov         ebp,esp
 0043427B    add         esp,0FFFFFFF8
 0043427E    test        dl,dl
>00434280    je          0043428A
 00434282    add         esp,0FFFFFFF0
 00434285    call        @ClassCreate
 0043428A    mov         byte ptr [ebp-5],dl
 0043428D    mov         dword ptr [ebp-4],eax
 00434290    xor         edx,edx
 00434292    mov         eax,dword ptr [ebp-4]
 00434295    call        0043105C
 0043429A    mov         eax,dword ptr [ebp-4]
 0043429D    mov         dword ptr [eax+34],20000000
 004342A4    mov         dl,1
 004342A6    mov         eax,[0042CEE8];TBitmapImage
 004342AB    call        TObject.Create
 004342B0    mov         edx,dword ptr [ebp-4]
 004342B3    mov         dword ptr [edx+28],eax
 004342B6    mov         eax,dword ptr [ebp-4]
 004342B9    mov         eax,dword ptr [eax+28]
 004342BC    call        004336E8
 004342C1    cmp         byte ptr ds:[56BD98],0;gvar_0056BD98
>004342C8    je          004342D4
 004342CA    mov         dl,1
 004342CC    mov         eax,dword ptr [ebp-4]
 004342CF    mov         ecx,dword ptr [eax]
 004342D1    call        dword ptr [ecx+6C]
 004342D4    mov         eax,dword ptr [ebp-4]
 004342D7    cmp         byte ptr [ebp-5],0
>004342DB    je          004342EC
 004342DD    call        @AfterConstruction
 004342E2    pop         dword ptr fs:[0]
 004342E9    add         esp,0C
 004342EC    mov         eax,dword ptr [ebp-4]
 004342EF    pop         ecx
 004342F0    pop         ecx
 004342F1    pop         ebp
 004342F2    ret
*}
end;

//004342F4
destructor TBitmap.Destroy;
begin
{*
 004342F4    push        ebp
 004342F5    mov         ebp,esp
 004342F7    add         esp,0FFFFFFF8
 004342FA    call        @BeforeDestruction
 004342FF    mov         byte ptr [ebp-5],dl
 00434302    mov         dword ptr [ebp-4],eax
 00434305    mov         eax,dword ptr [ebp-4]
 00434308    call        00434DE0
 0043430D    mov         eax,dword ptr [ebp-4]
 00434310    mov         eax,dword ptr [eax+28]
 00434313    call        004336F8
 00434318    mov         eax,dword ptr [ebp-4]
 0043431B    mov         eax,dword ptr [eax+2C]
 0043431E    call        TObject.Free
 00434323    mov         dl,byte ptr [ebp-5]
 00434326    and         dl,0FC
 00434329    mov         eax,dword ptr [ebp-4]
 0043432C    call        TPersistent.Destroy
 00434331    cmp         byte ptr [ebp-5],0
>00434335    jle         0043433F
 00434337    mov         eax,dword ptr [ebp-4]
 0043433A    call        @ClassDestroy
 0043433F    pop         ecx
 00434340    pop         ecx
 00434341    pop         ebp
 00434342    ret
*}
end;

//00434344
{*procedure sub_00434344(?:?);
begin
 00434344    push        ebp
 00434345    mov         ebp,esp
 00434347    add         esp,0FFFFFFA4
 0043434A    mov         dword ptr [ebp-8],edx
 0043434D    mov         dword ptr [ebp-4],eax
 00434350    cmp         dword ptr [ebp-8],0
>00434354    je          0043436C
 00434356    mov         eax,dword ptr [ebp-8]
 00434359    mov         edx,dword ptr ds:[42CF48];TBitmap
 0043435F    call        @IsClass
 00434364    test        al,al
>00434366    je          0043443C
 0043436C    mov         eax,dword ptr [ebp-4]
 0043436F    call        00434DE0
 00434374    push        571AD4;BitmapImageLock:TRTLCriticalSection
 00434379    call        kernel32.EnterCriticalSection
 0043437E    xor         eax,eax
 00434380    push        ebp
 00434381    push        434415
 00434386    push        dword ptr fs:[eax]
 00434389    mov         dword ptr fs:[eax],esp
 0043438C    cmp         dword ptr [ebp-8],0
>00434390    je          004343DA
 00434392    mov         eax,dword ptr [ebp-8]
 00434395    mov         eax,dword ptr [eax+28]
 00434398    call        004336E8
 0043439D    mov         eax,dword ptr [ebp-4]
 004343A0    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 004343A3    call        004336F8
 004343A8    mov         eax,dword ptr [ebp-8]
 004343AB    mov         eax,dword ptr [eax+28]
 004343AE    mov         edx,dword ptr [ebp-4]
 004343B1    mov         dword ptr [edx+28],eax;TBitmap.FImage:TBitmapImage
 004343B4    mov         eax,dword ptr [ebp-8]
 004343B7    mov         al,byte ptr [eax+21]
 004343BA    mov         edx,dword ptr [ebp-4]
 004343BD    mov         byte ptr [edx+21],al;TBitmap.FTransparent:Boolean
 004343C0    mov         eax,dword ptr [ebp-8]
 004343C3    mov         eax,dword ptr [eax+34]
 004343C6    mov         edx,dword ptr [ebp-4]
 004343C9    mov         dword ptr [edx+34],eax;TBitmap.FTransparentColor:TColor
 004343CC    mov         eax,dword ptr [ebp-8]
 004343CF    mov         al,byte ptr [eax+38]
 004343D2    mov         edx,dword ptr [ebp-4]
 004343D5    mov         byte ptr [edx+38],al;TBitmap.FTransparentMode:TTransparentMode
>004343D8    jmp         004343FD
 004343DA    lea         eax,[ebp-5C]
 004343DD    xor         ecx,ecx
 004343DF    mov         edx,54
 004343E4    call        @FillChar
 004343E9    lea         eax,[ebp-5C]
 004343EC    push        eax
 004343ED    push        0
 004343EF    push        0
 004343F1    xor         ecx,ecx
 004343F3    xor         edx,edx
 004343F5    mov         eax,dword ptr [ebp-4]
 004343F8    call        004351A0
 004343FD    xor         eax,eax
 004343FF    pop         edx
 00434400    pop         ecx
 00434401    pop         ecx
 00434402    mov         dword ptr fs:[eax],edx
 00434405    push        43441C
 0043440A    push        571AD4;BitmapImageLock:TRTLCriticalSection
 0043440F    call        kernel32.LeaveCriticalSection
 00434414    ret
>00434415    jmp         @HandleFinally
>0043441A    jmp         0043440A
 0043441C    mov         eax,dword ptr [ebp-4]
 0043441F    mov         edx,dword ptr [eax]
 00434421    call        dword ptr [edx+24];TBitmap.sub_00434B10
 00434424    test        eax,eax
 00434426    setne       al
 00434429    mov         edx,dword ptr [ebp-4]
 0043442C    mov         byte ptr [edx+22],al;TBitmap.FPaletteModified:Boolean
 0043442F    mov         edx,dword ptr [ebp-4]
 00434432    mov         eax,dword ptr [ebp-4]
 00434435    mov         ecx,dword ptr [eax]
 00434437    call        dword ptr [ecx+10];TBitmap.sub_0043455C
>0043443A    jmp         00434447
 0043443C    mov         edx,dword ptr [ebp-8]
 0043443F    mov         eax,dword ptr [ebp-4]
 00434442    call        00420AD4
 00434447    mov         esp,ebp
 00434449    pop         ebp
 0043444A    ret
end;*}

//0043444C
{*procedure sub_0043444C(?:TBitmap; ?:HBITMAP; ?:?);
begin
 0043444C    push        ebp
 0043444D    mov         ebp,esp
 0043444F    add         esp,0FFFFFF98
 00434452    push        ebx
 00434453    push        esi
 00434454    push        edi
 00434455    mov         esi,dword ptr [ebp+8]
 00434458    lea         edi,[ebp-68]
 0043445B    push        ecx
 0043445C    mov         ecx,15
 00434461    rep movs    dword ptr [edi],dword ptr [esi]
 00434463    pop         ecx
 00434464    mov         dword ptr [ebp-0C],ecx
 00434467    mov         dword ptr [ebp-8],edx
 0043446A    mov         dword ptr [ebp-4],eax
 0043446D    mov         eax,dword ptr [ebp-4]
 00434470    call        00434DE0
 00434475    xor         eax,eax
 00434477    mov         dword ptr [ebp-10],eax
 0043447A    xor         eax,eax
 0043447C    mov         dword ptr [ebp-14],eax
 0043447F    xor         eax,eax
 00434481    push        ebp
 00434482    push        4344EF
 00434487    push        dword ptr fs:[eax]
 0043448A    mov         dword ptr fs:[eax],esp
 0043448D    mov         eax,dword ptr [ebp-0C]
 00434490    cmp         eax,dword ptr ds:[571AB8];0x0 SystemPalette16:HPALETTE
>00434496    jne         004344A0
 00434498    mov         eax,dword ptr [ebp-0C]
 0043449B    mov         dword ptr [ebp-14],eax
>0043449E    jmp         004344AB
 004344A0    mov         eax,dword ptr [ebp-0C]
 004344A3    call        00433FD4
 004344A8    mov         dword ptr [ebp-14],eax
 004344AB    lea         eax,[ebp-68]
 004344AE    push        eax
 004344AF    mov         eax,dword ptr [ebp-4]
 004344B2    mov         eax,dword ptr [eax+2C]
 004344B5    push        eax
 004344B6    mov         ecx,dword ptr [ebp-14]
 004344B9    mov         edx,dword ptr [ebp-0C]
 004344BC    mov         eax,dword ptr [ebp-8]
 004344BF    call        00433964
 004344C4    mov         dword ptr [ebp-10],eax
 004344C7    lea         eax,[ebp-68]
 004344CA    push        eax
 004344CB    mov         eax,dword ptr [ebp-4]
 004344CE    mov         eax,dword ptr [eax+28]
 004344D1    mov         al,byte ptr [eax+70]
 004344D4    push        eax
 004344D5    push        0
 004344D7    mov         ecx,dword ptr [ebp-14]
 004344DA    mov         edx,dword ptr [ebp-10]
 004344DD    mov         eax,dword ptr [ebp-4]
 004344E0    call        004351A0
 004344E5    xor         eax,eax
 004344E7    pop         edx
 004344E8    pop         ecx
 004344E9    pop         ecx
 004344EA    mov         dword ptr fs:[eax],edx
>004344ED    jmp         00434515
>004344EF    jmp         @HandleAnyException
 004344F4    mov         eax,dword ptr [ebp-14]
 004344F7    call        0042D164
 004344FC    cmp         dword ptr [ebp-10],0
>00434500    je          0043450B
 00434502    mov         eax,dword ptr [ebp-10]
 00434505    push        eax
 00434506    call        gdi32.DeleteObject
 0043450B    call        @RaiseAgain
 00434510    call        @DoneExcept
 00434515    pop         edi
 00434516    pop         esi
 00434517    pop         ebx
 00434518    mov         esp,ebp
 0043451A    pop         ebp
 0043451B    ret         4
end;*}

//00434520
procedure sub_00434520(?:TBitmap; ?:TBitmap);
begin
{*
 00434520    push        ebp
 00434521    mov         ebp,esp
 00434523    add         esp,0FFFFFFF8
 00434526    mov         dword ptr [ebp-8],edx
 00434529    mov         dword ptr [ebp-4],eax
 0043452C    mov         eax,dword ptr [ebp-4]
 0043452F    call        004348AC
 00434534    mov         eax,dword ptr [ebp-4]
 00434537    mov         eax,dword ptr [eax+28]
 0043453A    xor         edx,edx
 0043453C    mov         dword ptr [eax+50],edx
 0043453F    mov         eax,dword ptr [ebp-4]
 00434542    mov         eax,dword ptr [eax+28]
 00434545    xor         edx,edx
 00434547    mov         dword ptr [eax+54],edx
 0043454A    mov         eax,dword ptr [ebp-4]
 0043454D    mov         eax,dword ptr [eax+28]
 00434550    add         eax,6C
 00434553    call        FreeAndNil
 00434558    pop         ecx
 00434559    pop         ecx
 0043455A    pop         ebp
 0043455B    ret
*}
end;

//0043455C
{*procedure sub_0043455C(?:?);
begin
 0043455C    push        ebp
 0043455D    mov         ebp,esp
 0043455F    add         esp,0FFFFFFF8
 00434562    mov         dword ptr [ebp-8],edx
 00434565    mov         dword ptr [ebp-4],eax
 00434568    mov         eax,dword ptr [ebp-4]
 0043456B    mov         byte ptr [eax+31],0;TBitmap.FMaskBitsValid:Boolean
 0043456F    mov         edx,dword ptr [ebp-8]
 00434572    mov         eax,dword ptr [ebp-4]
 00434575    call        004310A0
 0043457A    pop         ecx
 0043457B    pop         ecx
 0043457C    pop         ebp
 0043457D    ret
end;*}

//00434580
procedure sub_00434580(?:TBitmap);
begin
{*
 00434580    push        ebp
 00434581    mov         ebp,esp
 00434583    add         esp,0FFFFFFA4
 00434586    push        esi
 00434587    push        edi
 00434588    mov         dword ptr [ebp-4],eax
 0043458B    mov         dl,1
 0043458D    mov         eax,[0041DE14];TMemoryStream
 00434592    call        TObject.Create;TMemoryStream.Create
 00434597    mov         dword ptr [ebp-8],eax
 0043459A    mov         edx,dword ptr [ebp-8]
 0043459D    mov         eax,dword ptr [ebp-4]
 004345A0    mov         ecx,dword ptr [eax]
 004345A2    call        dword ptr [ecx+58]
 004345A5    mov         eax,dword ptr [ebp-8]
 004345A8    mov         edx,dword ptr [eax]
 004345AA    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004345AC    push        edx
 004345AD    push        eax
 004345AE    mov         eax,dword ptr [ebp-8]
 004345B1    call        004235FC
 004345B6    mov         eax,dword ptr [ebp-4]
 004345B9    mov         eax,dword ptr [eax+28]
 004345BC    lea         esi,[eax+18]
 004345BF    lea         edi,[ebp-5C]
 004345C2    mov         ecx,15
 004345C7    rep movs    dword ptr [edi],dword ptr [esi]
 004345C9    xor         eax,eax
 004345CB    mov         dword ptr [ebp-48],eax
 004345CE    mov         eax,dword ptr [ebp-4]
 004345D1    call        00434DE0
 004345D6    mov         eax,dword ptr [ebp-4]
 004345D9    add         eax,2C
 004345DC    call        FreeAndNil
 004345E1    lea         eax,[ebp-5C]
 004345E4    push        eax
 004345E5    mov         eax,dword ptr [ebp-4]
 004345E8    mov         eax,dword ptr [eax+28]
 004345EB    mov         al,byte ptr [eax+70]
 004345EE    push        eax
 004345EF    mov         eax,dword ptr [ebp-8]
 004345F2    push        eax
 004345F3    xor         ecx,ecx
 004345F5    xor         edx,edx
 004345F7    mov         eax,dword ptr [ebp-4]
 004345FA    call        004351A0
 004345FF    pop         edi
 00434600    pop         esi
 00434601    mov         esp,ebp
 00434603    pop         ebp
 00434604    ret
*}
end;

//00434608
{*procedure sub_00434608(?:?; ?:?);
begin
 00434608    push        ebp
 00434609    mov         ebp,esp
 0043460B    add         esp,0FFFFFFD4
 0043460E    push        ebx
 0043460F    mov         dword ptr [ebp-0C],ecx
 00434612    mov         dword ptr [ebp-8],edx
 00434615    mov         dword ptr [ebp-4],eax
 00434618    mov         eax,dword ptr [ebp-4]
 0043461B    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0043461E    mov         dword ptr [ebp-2C],eax
 00434621    mov         dl,byte ptr ds:[4348A8];0xF gvar_004348A8
 00434627    mov         eax,dword ptr [ebp-8]
 0043462A    call        0042F7D4
 0043462F    mov         eax,dword ptr [ebp-4]
 00434632    call        00434F5C
 00434637    xor         eax,eax
 00434639    mov         dword ptr [ebp-10],eax
 0043463C    mov         byte ptr [ebp-11],0
 00434640    mov         eax,dword ptr [ebp-2C]
 00434643    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>00434647    je          00434671
 00434649    push        0FF
 0043464B    mov         eax,dword ptr [ebp-2C]
 0043464E    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00434651    push        eax
 00434652    mov         eax,dword ptr [ebp-8]
 00434655    mov         eax,dword ptr [eax+4]
 00434658    push        eax
 00434659    call        gdi32.SelectPalette
 0043465E    mov         dword ptr [ebp-10],eax
 00434661    mov         eax,dword ptr [ebp-8]
 00434664    mov         eax,dword ptr [eax+4]
 00434667    push        eax
 00434668    call        gdi32.RealizePalette
 0043466D    mov         byte ptr [ebp-11],1
 00434671    push        0C
 00434673    mov         eax,dword ptr [ebp-8]
 00434676    mov         eax,dword ptr [eax+4]
 00434679    push        eax
 0043467A    call        gdi32.GetDeviceCaps
 0043467F    mov         ebx,eax
 00434681    push        0E
 00434683    mov         eax,dword ptr [ebp-8]
 00434686    mov         eax,dword ptr [eax+4]
 00434689    push        eax
 0043468A    call        gdi32.GetDeviceCaps
 0043468F    imul        ebx,eax
 00434692    mov         dword ptr [ebp-20],ebx
 00434695    cmp         dword ptr [ebp-20],8
>00434699    jg          004346B0
 0043469B    mov         eax,dword ptr [ebp-2C]
 0043469E    movzx       eax,word ptr [eax+2A]
 004346A2    mov         edx,dword ptr [ebp-2C]
 004346A5    movzx       edx,word ptr [edx+28]
 004346A9    imul        edx
 004346AB    cmp         eax,dword ptr [ebp-20]
>004346AE    jg          004346B4
 004346B0    xor         eax,eax
>004346B2    jmp         004346B6
 004346B4    mov         al,1
 004346B6    mov         byte ptr [ebp-12],al
 004346B9    cmp         byte ptr [ebp-12],0
>004346BD    je          004346F7
 004346BF    lea         eax,[ebp-1A]
 004346C2    push        eax
 004346C3    mov         eax,dword ptr [ebp-8]
 004346C6    mov         eax,dword ptr [eax+4]
 004346C9    push        eax
 004346CA    call        gdi32.GetBrushOrgEx
 004346CF    push        4
 004346D1    mov         eax,dword ptr [ebp-8]
 004346D4    mov         eax,dword ptr [eax+4]
 004346D7    push        eax
 004346D8    call        gdi32.SetStretchBltMode
 004346DD    lea         eax,[ebp-1A]
 004346E0    push        eax
 004346E1    mov         eax,dword ptr [ebp-16]
 004346E4    push        eax
 004346E5    mov         eax,dword ptr [ebp-1A]
 004346E8    push        eax
 004346E9    mov         eax,dword ptr [ebp-8]
 004346EC    mov         eax,dword ptr [eax+4]
 004346EF    push        eax
 004346F0    call        gdi32.SetBrushOrgEx
>004346F5    jmp         00434713
 004346F7    mov         eax,dword ptr [ebp-4]
 004346FA    call        00434AD4
 004346FF    test        al,al
>00434701    jne         00434713
 00434703    push        3
 00434705    mov         eax,dword ptr [ebp-8]
 00434708    call        0042F6A0
 0043470D    push        eax
 0043470E    call        gdi32.SetStretchBltMode
 00434713    xor         eax,eax
 00434715    push        ebp
 00434716    push        43489B
 0043471B    push        dword ptr fs:[eax]
 0043471E    mov         dword ptr fs:[eax],esp
 00434721    mov         eax,dword ptr [ebp-4]
 00434724    mov         edx,dword ptr [eax]
 00434726    call        dword ptr [edx+28];TBitmap.sub_004312E8
 00434729    test        al,al
>0043472B    je          00434735
 0043472D    mov         eax,dword ptr [ebp-4]
 00434730    call        00434EC4
 00434735    mov         eax,dword ptr [ebp-4]
 00434738    call        0043498C
 0043473D    mov         dl,byte ptr ds:[4348A8];0xF gvar_004348A8
 00434743    call        0042F7D4
 00434748    mov         eax,dword ptr [ebp-4]
 0043474B    mov         edx,dword ptr [eax]
 0043474D    call        dword ptr [edx+28];TBitmap.sub_004312E8
 00434750    test        al,al
>00434752    je          0043481E
 00434758    xor         eax,eax
 0043475A    mov         dword ptr [ebp-28],eax
 0043475D    xor         eax,eax
 0043475F    mov         dword ptr [ebp-24],eax
 00434762    xor         eax,eax
 00434764    push        ebp
 00434765    push        434817
 0043476A    push        dword ptr fs:[eax]
 0043476D    mov         dword ptr fs:[eax],esp
 00434770    push        0
 00434772    call        gdi32.CreateCompatibleDC
 00434777    call        0042FBD4
 0043477C    mov         dword ptr [ebp-24],eax
 0043477F    mov         eax,dword ptr [ebp-2C]
 00434782    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 00434785    push        eax
 00434786    mov         eax,dword ptr [ebp-24]
 00434789    push        eax
 0043478A    call        gdi32.SelectObject
 0043478F    mov         dword ptr [ebp-28],eax
 00434792    mov         eax,dword ptr [ebp-0C]
 00434795    mov         eax,dword ptr [eax+8]
 00434798    mov         edx,dword ptr [ebp-0C]
 0043479B    sub         eax,dword ptr [edx]
 0043479D    push        eax
 0043479E    mov         eax,dword ptr [ebp-0C]
 004347A1    mov         eax,dword ptr [eax+0C]
 004347A4    mov         edx,dword ptr [ebp-0C]
 004347A7    sub         eax,dword ptr [edx+4]
 004347AA    push        eax
 004347AB    mov         eax,dword ptr [ebp-4]
 004347AE    call        0043498C
 004347B3    mov         eax,dword ptr [eax+4]
 004347B6    push        eax
 004347B7    push        0
 004347B9    push        0
 004347BB    mov         eax,dword ptr [ebp-2C]
 004347BE    mov         eax,dword ptr [eax+1C]
 004347C1    push        eax
 004347C2    mov         eax,dword ptr [ebp-2C]
 004347C5    mov         eax,dword ptr [eax+20]
 004347C8    push        eax
 004347C9    mov         eax,dword ptr [ebp-24]
 004347CC    push        eax
 004347CD    push        0
 004347CF    push        0
 004347D1    mov         ecx,dword ptr [ebp-0C]
 004347D4    mov         ecx,dword ptr [ecx+4]
 004347D7    mov         edx,dword ptr [ebp-0C]
 004347DA    mov         edx,dword ptr [edx]
 004347DC    mov         eax,dword ptr [ebp-8]
 004347DF    mov         eax,dword ptr [eax+4]
 004347E2    call        0042FDDC
 004347E7    xor         eax,eax
 004347E9    pop         edx
 004347EA    pop         ecx
 004347EB    pop         ecx
 004347EC    mov         dword ptr fs:[eax],edx
 004347EF    push        434875
 004347F4    cmp         dword ptr [ebp-28],0
>004347F8    je          00434807
 004347FA    mov         eax,dword ptr [ebp-28]
 004347FD    push        eax
 004347FE    mov         eax,dword ptr [ebp-24]
 00434801    push        eax
 00434802    call        gdi32.SelectObject
 00434807    cmp         dword ptr [ebp-24],0
>0043480B    je          00434816
 0043480D    mov         eax,dword ptr [ebp-24]
 00434810    push        eax
 00434811    call        gdi32.DeleteDC
 00434816    ret
>00434817    jmp         @HandleFinally
>0043481C    jmp         004347F4
 0043481E    mov         eax,dword ptr [ebp-8]
 00434821    mov         eax,dword ptr [eax+20]
 00434824    push        eax
 00434825    mov         eax,dword ptr [ebp-2C]
 00434828    mov         eax,dword ptr [eax+20]
 0043482B    push        eax
 0043482C    mov         eax,dword ptr [ebp-2C]
 0043482F    mov         eax,dword ptr [eax+1C]
 00434832    push        eax
 00434833    push        0
 00434835    push        0
 00434837    mov         eax,dword ptr [ebp-4]
 0043483A    call        0043498C
 0043483F    mov         eax,dword ptr [eax+4]
 00434842    push        eax
 00434843    mov         eax,dword ptr [ebp-0C]
 00434846    mov         eax,dword ptr [eax+0C]
 00434849    mov         edx,dword ptr [ebp-0C]
 0043484C    sub         eax,dword ptr [edx+4]
 0043484F    push        eax
 00434850    mov         eax,dword ptr [ebp-0C]
 00434853    mov         eax,dword ptr [eax+8]
 00434856    mov         edx,dword ptr [ebp-0C]
 00434859    sub         eax,dword ptr [edx]
 0043485B    push        eax
 0043485C    mov         eax,dword ptr [ebp-0C]
 0043485F    mov         eax,dword ptr [eax+4]
 00434862    push        eax
 00434863    mov         eax,dword ptr [ebp-0C]
 00434866    mov         eax,dword ptr [eax]
 00434868    push        eax
 00434869    mov         eax,dword ptr [ebp-8]
 0043486C    mov         eax,dword ptr [eax+4]
 0043486F    push        eax
 00434870    call        gdi32.StretchBlt
 00434875    xor         eax,eax
 00434877    pop         edx
 00434878    pop         ecx
 00434879    pop         ecx
 0043487A    mov         dword ptr fs:[eax],edx
 0043487D    push        4348A2
 00434882    cmp         byte ptr [ebp-11],0
>00434886    je          0043489A
 00434888    push        0FF
 0043488A    mov         eax,dword ptr [ebp-10]
 0043488D    push        eax
 0043488E    mov         eax,dword ptr [ebp-8]
 00434891    mov         eax,dword ptr [eax+4]
 00434894    push        eax
 00434895    call        gdi32.SelectPalette
 0043489A    ret
>0043489B    jmp         @HandleFinally
>004348A0    jmp         00434882
 004348A2    pop         ebx
 004348A3    mov         esp,ebp
 004348A5    pop         ebp
 004348A6    ret
end;*}

//004348AC
{*procedure sub_004348AC(?:?);
begin
 004348AC    push        ebp
 004348AD    mov         ebp,esp
 004348AF    add         esp,0FFFFFFF4
 004348B2    mov         dword ptr [ebp-4],eax
 004348B5    mov         eax,dword ptr [ebp-4]
 004348B8    mov         eax,dword ptr [eax+28]
 004348BB    mov         dword ptr [ebp-0C],eax
 004348BE    mov         eax,dword ptr [ebp-0C]
 004348C1    cmp         dword ptr [eax+4],1
>004348C5    jle         00434902
 004348C7    mov         eax,dword ptr [ebp-4]
 004348CA    call        00434E00
 004348CF    mov         eax,dword ptr [ebp-0C]
 004348D2    cmp         byte ptr [eax+71],0
>004348D6    je          004348DF
 004348D8    xor         eax,eax
 004348DA    mov         dword ptr [ebp-8],eax
>004348DD    jmp         004348E8
 004348DF    mov         eax,dword ptr [ebp-0C]
 004348E2    mov         eax,dword ptr [eax+10]
 004348E5    mov         dword ptr [ebp-8],eax
 004348E8    mov         eax,dword ptr [ebp-0C]
 004348EB    add         eax,18
 004348EE    push        eax
 004348EF    mov         ecx,dword ptr [ebp-8]
 004348F2    mov         eax,dword ptr [ebp-0C]
 004348F5    mov         edx,dword ptr [eax+8]
 004348F8    mov         eax,dword ptr [ebp-4]
 004348FB    call        0043444C
>00434900    jmp         00434947
 00434902    mov         eax,dword ptr [ebp-0C]
 00434905    cmp         dword ptr [eax+8],0
>00434909    je          00434947
 0043490B    mov         eax,dword ptr [ebp-0C]
 0043490E    mov         eax,dword ptr [eax+8]
 00434911    mov         edx,dword ptr [ebp-0C]
 00434914    cmp         eax,dword ptr [edx+14]
>00434917    je          00434947
 00434919    mov         eax,dword ptr [ebp-0C]
 0043491C    cmp         dword ptr [eax+14],0
>00434920    je          00434937
 00434922    mov         eax,dword ptr [ebp-0C]
 00434925    mov         eax,dword ptr [eax+14]
 00434928    push        eax
 00434929    call        gdi32.DeleteObject
 0043492E    test        eax,eax
>00434930    jne         00434937
 00434932    call        0042FB28
 00434937    mov         eax,dword ptr [ebp-0C]
 0043493A    xor         edx,edx
 0043493C    mov         dword ptr [eax+14],edx
 0043493F    mov         eax,dword ptr [ebp-0C]
 00434942    xor         edx,edx
 00434944    mov         dword ptr [eax+2C],edx
 00434947    mov         esp,ebp
 00434949    pop         ebp
 0043494A    ret
end;*}

//0043494C
{*function sub_0043494C:?;
begin
 0043494C    push        ebp
 0043494D    mov         ebp,esp
 0043494F    add         esp,0FFFFFFF4
 00434952    mov         dword ptr [ebp-4],eax
 00434955    mov         eax,dword ptr [ebp-4]
 00434958    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0043495B    mov         dword ptr [ebp-0C],eax
 0043495E    mov         eax,dword ptr [ebp-0C]
 00434961    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>00434965    jne         00434979
 00434967    mov         eax,dword ptr [ebp-0C]
 0043496A    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>0043496E    jne         00434979
 00434970    mov         eax,dword ptr [ebp-0C]
 00434973    cmp         dword ptr [eax+6C],0;TBitmapImage.FSaveStream:TMemoryStream
>00434977    je          0043497D
 00434979    xor         eax,eax
>0043497B    jmp         0043497F
 0043497D    mov         al,1
 0043497F    mov         byte ptr [ebp-5],al
 00434982    mov         al,byte ptr [ebp-5]
 00434985    mov         esp,ebp
 00434987    pop         ebp
 00434988    ret
end;*}

//0043498C
{*function sub_0043498C(?:TBitmap):?;
begin
 0043498C    push        ebp
 0043498D    mov         ebp,esp
 0043498F    add         esp,0FFFFFFF8
 00434992    mov         dword ptr [ebp-4],eax
 00434995    mov         eax,dword ptr [ebp-4]
 00434998    cmp         dword ptr [eax+2C],0;TBitmap.FCanvas:TCanvas
>0043499C    jne         004349EB
 0043499E    mov         eax,dword ptr [ebp-4]
 004349A1    call        00434E00
 004349A6    mov         eax,dword ptr [ebp-4]
 004349A9    cmp         dword ptr [eax+2C],0;TBitmap.FCanvas:TCanvas
>004349AD    jne         004349EB
 004349AF    mov         ecx,dword ptr [ebp-4]
 004349B2    mov         dl,1
 004349B4    mov         eax,[004332BC];TBitmapCanvas
 004349B9    call        TBitmapCanvas.Create;TBitmapCanvas.Create
 004349BE    mov         edx,dword ptr [ebp-4]
 004349C1    mov         dword ptr [edx+2C],eax;TBitmap.FCanvas:TCanvas
 004349C4    mov         eax,dword ptr [ebp-4]
 004349C7    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 004349CA    mov         edx,dword ptr [ebp-4]
 004349CD    mov         dword ptr [eax+2C],edx;TCanvas.?f2C:TBitmap
 004349D0    mov         edx,dword ptr [edx]
 004349D2    mov         edx,dword ptr [edx+10];TBitmap.FOnChange:TNotifyEvent
 004349D5    mov         dword ptr [eax+28],edx;TCanvas.FOnChange:TNotifyEvent
 004349D8    mov         eax,dword ptr [ebp-4]
 004349DB    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 004349DE    mov         edx,dword ptr [ebp-4]
 004349E1    mov         dword ptr [eax+34],edx;TCanvas.?f34:TBitmap
 004349E4    mov         dword ptr [eax+30],434520;TCanvas.FOnChanging:TNotifyEvent sub_00434520
 004349EB    mov         eax,dword ptr [ebp-4]
 004349EE    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 004349F1    mov         dword ptr [ebp-8],eax
 004349F4    mov         eax,dword ptr [ebp-8]
 004349F7    pop         ecx
 004349F8    pop         ecx
 004349F9    pop         ebp
 004349FA    ret
end;*}

//004349FC
{*function sub_004349FC:?;
begin
 004349FC    push        ebp
 004349FD    mov         ebp,esp
 004349FF    add         esp,0FFFFFFF8
 00434A02    mov         dword ptr [ebp-4],eax
 00434A05    mov         eax,dword ptr [ebp-4]
 00434A08    call        00434DE0
 00434A0D    mov         eax,dword ptr [ebp-4]
 00434A10    call        00434E00
 00434A15    mov         edx,dword ptr [ebp-4]
 00434A18    mov         eax,dword ptr [ebp-4]
 00434A1B    call        00434520
 00434A20    mov         eax,dword ptr [ebp-4]
 00434A23    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434A26    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 00434A29    mov         dword ptr [ebp-8],eax
 00434A2C    mov         eax,dword ptr [ebp-8]
 00434A2F    pop         ecx
 00434A30    pop         ecx
 00434A31    pop         ebp
 00434A32    ret
end;*}

//00434A34
{*function sub_00434A34(?:TBitmap):?;
begin
 00434A34    push        ebp
 00434A35    mov         ebp,esp
 00434A37    add         esp,0FFFFFFF4
 00434A3A    mov         dword ptr [ebp-4],eax
 00434A3D    mov         eax,dword ptr [ebp-4]
 00434A40    mov         eax,dword ptr [eax+28]
 00434A43    mov         dword ptr [ebp-0C],eax
 00434A46    mov         eax,dword ptr [ebp-0C]
 00434A49    cmp         dword ptr [eax+8],0
>00434A4D    je          00434A5D
 00434A4F    mov         eax,dword ptr [ebp-0C]
 00434A52    mov         eax,dword ptr [eax+8]
 00434A55    mov         edx,dword ptr [ebp-0C]
 00434A58    cmp         eax,dword ptr [edx+14]
>00434A5B    jne         00434A81
 00434A5D    mov         eax,dword ptr [ebp-0C]
 00434A60    cmp         dword ptr [eax+14],0
>00434A64    jne         00434A7B
 00434A66    mov         eax,dword ptr [ebp-0C]
 00434A69    cmp         dword ptr [eax+30],0
>00434A6D    jne         00434A75
 00434A6F    mov         byte ptr [ebp-5],1
>00434A73    jmp         00434A85
 00434A75    mov         byte ptr [ebp-5],0
>00434A79    jmp         00434A85
 00434A7B    mov         byte ptr [ebp-5],0
>00434A7F    jmp         00434A85
 00434A81    mov         byte ptr [ebp-5],1
 00434A85    mov         al,byte ptr [ebp-5]
 00434A88    mov         esp,ebp
 00434A8A    pop         ebp
 00434A8B    ret
end;*}

//00434A8C
{*function sub_00434A8C:?;
begin
 00434A8C    push        ebp
 00434A8D    mov         ebp,esp
 00434A8F    add         esp,0FFFFFFF8
 00434A92    mov         dword ptr [ebp-4],eax
 00434A95    mov         eax,dword ptr [ebp-4]
 00434A98    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434A9B    mov         eax,dword ptr [eax+20]
 00434A9E    cdq
 00434A9F    xor         eax,edx
 00434AA1    sub         eax,edx
 00434AA3    mov         dword ptr [ebp-8],eax
 00434AA6    mov         eax,dword ptr [ebp-8]
 00434AA9    pop         ecx
 00434AAA    pop         ecx
 00434AAB    pop         ebp
 00434AAC    ret
end;*}

//00434AB0
{*function sub_00434AB0:?;
begin
 00434AB0    push        ebp
 00434AB1    mov         ebp,esp
 00434AB3    add         esp,0FFFFFFF8
 00434AB6    mov         dword ptr [ebp-4],eax
 00434AB9    mov         eax,dword ptr [ebp-4]
 00434ABC    call        00434EC4
 00434AC1    mov         eax,dword ptr [ebp-4]
 00434AC4    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434AC7    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 00434ACA    mov         dword ptr [ebp-8],eax
 00434ACD    mov         eax,dword ptr [ebp-8]
 00434AD0    pop         ecx
 00434AD1    pop         ecx
 00434AD2    pop         ebp
 00434AD3    ret
end;*}

//00434AD4
{*function sub_00434AD4(?:TBitmap):?;
begin
 00434AD4    push        ebp
 00434AD5    mov         ebp,esp
 00434AD7    add         esp,0FFFFFFF4
 00434ADA    mov         dword ptr [ebp-4],eax
 00434ADD    mov         eax,dword ptr [ebp-4]
 00434AE0    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434AE3    add         eax,18;TBitmapImage.FDIB:TDIBSection
 00434AE6    mov         dword ptr [ebp-0C],eax
 00434AE9    mov         eax,dword ptr [ebp-0C]
 00434AEC    cmp         word ptr [eax+10],1
>00434AF1    jne         00434AFD
 00434AF3    mov         eax,dword ptr [ebp-0C]
 00434AF6    cmp         word ptr [eax+12],1
>00434AFB    je          00434B01
 00434AFD    xor         eax,eax
>00434AFF    jmp         00434B03
 00434B01    mov         al,1
 00434B03    mov         byte ptr [ebp-5],al
 00434B06    mov         al,byte ptr [ebp-5]
 00434B09    mov         esp,ebp
 00434B0B    pop         ebp
 00434B0C    ret
end;*}

//00434B10
{*function sub_00434B10:?;
begin
 00434B10    push        ebp
 00434B11    mov         ebp,esp
 00434B13    add         esp,0FFFFFFF8
 00434B16    mov         dword ptr [ebp-4],eax
 00434B19    mov         eax,dword ptr [ebp-4]
 00434B1C    call        00434F5C
 00434B21    mov         eax,dword ptr [ebp-4]
 00434B24    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434B27    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00434B2A    mov         dword ptr [ebp-8],eax
 00434B2D    mov         eax,dword ptr [ebp-8]
 00434B30    pop         ecx
 00434B31    pop         ecx
 00434B32    pop         ebp
 00434B33    ret
end;*}

//00434B34
{*function sub_00434B34(?:?):?;
begin
 00434B34    push        ebp
 00434B35    mov         ebp,esp
 00434B37    add         esp,0FFFFFFF0
 00434B3A    mov         dword ptr [ebp-4],eax
 00434B3D    mov         byte ptr [ebp-5],8
 00434B41    mov         eax,dword ptr [ebp-4]
 00434B44    call        00434A34
 00434B49    cmp         al,1
>00434B4B    jne         00434B56
 00434B4D    mov         byte ptr [ebp-5],0
>00434B51    jmp         00434BE3
 00434B56    mov         eax,dword ptr [ebp-4]
 00434B59    mov         eax,dword ptr [eax+28]
 00434B5C    add         eax,18
 00434B5F    mov         dword ptr [ebp-0C],eax
 00434B62    mov         eax,dword ptr [ebp-0C]
 00434B65    add         eax,18
 00434B68    mov         dword ptr [ebp-10],eax
 00434B6B    mov         eax,dword ptr [ebp-10]
 00434B6E    movzx       eax,word ptr [eax+0E]
 00434B72    cmp         eax,10
>00434B75    jg          00434B88
>00434B77    je          00434BA6
 00434B79    dec         eax
>00434B7A    je          00434B94
 00434B7C    sub         eax,3
>00434B7F    je          00434B9A
 00434B81    sub         eax,4
>00434B84    je          00434BA0
>00434B86    jmp         00434BE3
 00434B88    sub         eax,18
>00434B8B    je          00434BD0
 00434B8D    sub         eax,8
>00434B90    je          00434BD6
>00434B92    jmp         00434BE3
 00434B94    mov         byte ptr [ebp-5],1
>00434B98    jmp         00434BE3
 00434B9A    mov         byte ptr [ebp-5],2
>00434B9E    jmp         00434BE3
 00434BA0    mov         byte ptr [ebp-5],3
>00434BA4    jmp         00434BE3
 00434BA6    mov         eax,dword ptr [ebp-10]
 00434BA9    mov         eax,dword ptr [eax+10]
 00434BAC    sub         eax,1
>00434BAF    jb          00434BB8
 00434BB1    sub         eax,2
>00434BB4    je          00434BBE
>00434BB6    jmp         00434BE3
 00434BB8    mov         byte ptr [ebp-5],4
>00434BBC    jmp         00434BE3
 00434BBE    mov         eax,dword ptr [ebp-0C]
 00434BC1    cmp         dword ptr [eax+44],7E0
>00434BC8    jne         00434BE3
 00434BCA    mov         byte ptr [ebp-5],5
>00434BCE    jmp         00434BE3
 00434BD0    mov         byte ptr [ebp-5],6
>00434BD4    jmp         00434BE3
 00434BD6    mov         eax,dword ptr [ebp-10]
 00434BD9    cmp         dword ptr [eax+10],0
>00434BDD    jne         00434BE3
 00434BDF    mov         byte ptr [ebp-5],7
 00434BE3    mov         al,byte ptr [ebp-5]
 00434BE6    mov         esp,ebp
 00434BE8    pop         ebp
 00434BE9    ret
end;*}

//00434BEC
{*function sub_00434BEC(?:TBitmap; ?:?):?;
begin
 00434BEC    push        ebp
 00434BED    mov         ebp,esp
 00434BEF    add         esp,0FFFFFFE8
 00434BF2    mov         dword ptr [ebp-8],edx
 00434BF5    mov         dword ptr [ebp-4],eax
 00434BF8    mov         edx,dword ptr [ebp-4]
 00434BFB    mov         eax,dword ptr [ebp-4]
 00434BFE    call        00434520
 00434C03    mov         eax,dword ptr [ebp-4]
 00434C06    mov         eax,dword ptr [eax+28]
 00434C09    add         eax,18
 00434C0C    mov         dword ptr [ebp-10],eax
 00434C0F    mov         eax,dword ptr [ebp-10]
 00434C12    mov         dword ptr [ebp-14],eax
 00434C15    mov         eax,dword ptr [ebp-10]
 00434C18    add         eax,18
 00434C1B    mov         dword ptr [ebp-18],eax
 00434C1E    cmp         dword ptr [ebp-8],0
>00434C22    jl          00434C2F
 00434C24    mov         eax,dword ptr [ebp-14]
 00434C27    mov         eax,dword ptr [eax+8]
 00434C2A    cmp         eax,dword ptr [ebp-8]
>00434C2D    jg          00434C39
 00434C2F    mov         eax,[0056E4A4];^SScanLine:TResStringRec
 00434C34    call        0042FA70
 00434C39    mov         eax,dword ptr [ebp-4]
 00434C3C    call        00434D0C
 00434C41    call        gdi32.GdiFlush
 00434C46    mov         eax,dword ptr [ebp-18]
 00434C49    cmp         dword ptr [eax+8],0
>00434C4D    jle         00434C5C
 00434C4F    mov         eax,dword ptr [ebp-18]
 00434C52    mov         eax,dword ptr [eax+8]
 00434C55    sub         eax,dword ptr [ebp-8]
 00434C58    dec         eax
 00434C59    mov         dword ptr [ebp-8],eax
 00434C5C    mov         eax,dword ptr [ebp-18]
 00434C5F    movzx       edx,word ptr [eax+0E]
 00434C63    mov         ecx,20
 00434C68    mov         eax,dword ptr [ebp-18]
 00434C6B    mov         eax,dword ptr [eax+4]
 00434C6E    call        0042FDA0
 00434C73    imul        dword ptr [ebp-8]
 00434C76    mov         edx,dword ptr [ebp-14]
 00434C79    add         eax,dword ptr [edx+14]
 00434C7C    mov         dword ptr [ebp-0C],eax
 00434C7F    mov         eax,dword ptr [ebp-0C]
 00434C82    mov         esp,ebp
 00434C84    pop         ebp
 00434C85    ret
end;*}

//00434C88
{*function sub_00434C88(?:TBitmap):?;
begin
 00434C88    push        ebp
 00434C89    mov         ebp,esp
 00434C8B    add         esp,0FFFFFFF8
 00434C8E    mov         dword ptr [ebp-4],eax
 00434C91    mov         eax,dword ptr [ebp-4]
 00434C94    cmp         dword ptr [eax+34],20000000
>00434C9B    jne         00434CD1
 00434C9D    mov         eax,dword ptr [ebp-4]
 00434CA0    call        00434AD4
 00434CA5    test        al,al
>00434CA7    je          00434CB2
 00434CA9    mov         dword ptr [ebp-8],0FFFFFF
>00434CB0    jmp         00434CDF
 00434CB2    mov         eax,dword ptr [ebp-4]
 00434CB5    mov         edx,dword ptr [eax]
 00434CB7    call        dword ptr [edx+20]
 00434CBA    dec         eax
 00434CBB    push        eax
 00434CBC    mov         eax,dword ptr [ebp-4]
 00434CBF    call        0043498C
 00434CC4    xor         edx,edx
 00434CC6    pop         ecx
 00434CC7    call        0042F5D8
 00434CCC    mov         dword ptr [ebp-8],eax
>00434CCF    jmp         00434CDF
 00434CD1    mov         eax,dword ptr [ebp-4]
 00434CD4    mov         eax,dword ptr [eax+34]
 00434CD7    call        ColorToRGB
 00434CDC    mov         dword ptr [ebp-8],eax
 00434CDF    or          dword ptr [ebp-8],2000000
 00434CE6    mov         eax,dword ptr [ebp-8]
 00434CE9    pop         ecx
 00434CEA    pop         ecx
 00434CEB    pop         ebp
 00434CEC    ret
end;*}

//00434CF0
{*function sub_00434CF0:?;
begin
 00434CF0    push        ebp
 00434CF1    mov         ebp,esp
 00434CF3    add         esp,0FFFFFFF8
 00434CF6    mov         dword ptr [ebp-4],eax
 00434CF9    mov         eax,dword ptr [ebp-4]
 00434CFC    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434CFF    mov         eax,dword ptr [eax+1C]
 00434D02    mov         dword ptr [ebp-8],eax
 00434D05    mov         eax,dword ptr [ebp-8]
 00434D08    pop         ecx
 00434D09    pop         ecx
 00434D0A    pop         ebp
 00434D0B    ret
end;*}

//00434D0C
procedure sub_00434D0C(?:TBitmap);
begin
{*
 00434D0C    push        ebp
 00434D0D    mov         ebp,esp
 00434D0F    add         esp,0FFFFFFEC
 00434D12    mov         dword ptr [ebp-4],eax
 00434D15    mov         eax,dword ptr [ebp-4]
 00434D18    mov         eax,dword ptr [eax+28]
 00434D1B    mov         dword ptr [ebp-8],eax
 00434D1E    mov         eax,dword ptr [ebp-8]
 00434D21    cmp         dword ptr [eax+8],0
>00434D25    je          00434DDB
 00434D2B    mov         eax,dword ptr [ebp-8]
 00434D2E    cmp         dword ptr [eax+14],0
>00434D32    jne         00434DDB
 00434D38    mov         eax,dword ptr [ebp-4]
 00434D3B    call        00434F5C
 00434D40    mov         eax,dword ptr [ebp-8]
 00434D43    cmp         dword ptr [eax+30],0
>00434D47    jne         00434DB5
 00434D49    mov         eax,dword ptr [ebp-8]
 00434D4C    add         eax,18
 00434D4F    push        eax
 00434D50    push        54
 00434D52    mov         eax,dword ptr [ebp-8]
 00434D55    mov         eax,dword ptr [eax+8]
 00434D58    push        eax
 00434D59    call        gdi32.GetObjectA
 00434D5E    mov         eax,dword ptr [ebp-8]
 00434D61    add         eax,18
 00434D64    mov         dword ptr [ebp-0C],eax
 00434D67    mov         eax,dword ptr [ebp-0C]
 00434D6A    mov         dword ptr [ebp-10],eax
 00434D6D    mov         eax,dword ptr [ebp-0C]
 00434D70    add         eax,18
 00434D73    mov         dword ptr [ebp-14],eax
 00434D76    mov         eax,dword ptr [ebp-14]
 00434D79    mov         dword ptr [eax],28
 00434D7F    mov         eax,dword ptr [ebp-10]
 00434D82    mov         eax,dword ptr [eax+4]
 00434D85    mov         edx,dword ptr [ebp-14]
 00434D88    mov         dword ptr [edx+4],eax
 00434D8B    mov         eax,dword ptr [ebp-10]
 00434D8E    mov         eax,dword ptr [eax+8]
 00434D91    mov         edx,dword ptr [ebp-14]
 00434D94    mov         dword ptr [edx+8],eax
 00434D97    mov         eax,dword ptr [ebp-14]
 00434D9A    mov         word ptr [eax+0C],1
 00434DA0    mov         eax,dword ptr [ebp-10]
 00434DA3    mov         ax,word ptr [eax+10]
 00434DA7    mov         edx,dword ptr [ebp-10]
 00434DAA    imul        word ptr [edx+12]
 00434DAE    mov         edx,dword ptr [ebp-14]
 00434DB1    mov         word ptr [edx+0E],ax
 00434DB5    mov         eax,dword ptr [ebp-8]
 00434DB8    add         eax,18
 00434DBB    push        eax
 00434DBC    push        0
 00434DBE    mov         eax,dword ptr [ebp-8]
 00434DC1    mov         ecx,dword ptr [eax+10]
 00434DC4    mov         eax,dword ptr [ebp-8]
 00434DC7    mov         edx,dword ptr [eax+10]
 00434DCA    mov         eax,dword ptr [ebp-8]
 00434DCD    mov         eax,dword ptr [eax+8]
 00434DD0    call        00433964
 00434DD5    mov         edx,dword ptr [ebp-8]
 00434DD8    mov         dword ptr [edx+14],eax
 00434DDB    mov         esp,ebp
 00434DDD    pop         ebp
 00434DDE    ret
*}
end;

//00434DE0
procedure sub_00434DE0(?:TBitmap);
begin
{*
 00434DE0    push        ebp
 00434DE1    mov         ebp,esp
 00434DE3    push        ecx
 00434DE4    mov         dword ptr [ebp-4],eax
 00434DE7    mov         eax,dword ptr [ebp-4]
 00434DEA    cmp         dword ptr [eax+2C],0;TBitmap.FCanvas:TCanvas
>00434DEE    je          00434DFB
 00434DF0    mov         eax,dword ptr [ebp-4]
 00434DF3    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 00434DF6    call        TBitmapCanvas.FreeContext
 00434DFB    pop         ecx
 00434DFC    pop         ebp
 00434DFD    ret
*}
end;

//00434E00
procedure sub_00434E00(?:TBitmap);
begin
{*
 00434E00    push        ebp
 00434E01    mov         ebp,esp
 00434E03    add         esp,0FFFFFFEC
 00434E06    mov         dword ptr [ebp-4],eax
 00434E09    mov         eax,dword ptr [ebp-4]
 00434E0C    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434E0F    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>00434E13    jne         00434EA0
 00434E19    mov         eax,dword ptr [ebp-4]
 00434E1C    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434E1F    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>00434E23    jne         00434EA0
 00434E25    mov         eax,dword ptr [ebp-4]
 00434E28    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434E2B    cmp         dword ptr [eax+6C],0;TBitmapImage.FSaveStream:TMemoryStream
>00434E2F    je          00434EA0
 00434E31    push        0
 00434E33    push        0
 00434E35    mov         eax,dword ptr [ebp-4]
 00434E38    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434E3B    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 00434E3E    call        TStream.SetPosition
 00434E43    mov         eax,dword ptr [ebp-4]
 00434E46    mov         edx,dword ptr [eax+10];TBitmap.FOnChange:TNotifyEvent
 00434E49    mov         dword ptr [ebp-10],edx
 00434E4C    mov         edx,dword ptr [eax+14];TBitmap.?f14:TCoolBand
 00434E4F    mov         dword ptr [ebp-0C],edx
 00434E52    xor         eax,eax
 00434E54    push        ebp
 00434E55    push        434E99
 00434E5A    push        dword ptr fs:[eax]
 00434E5D    mov         dword ptr fs:[eax],esp
 00434E60    mov         eax,dword ptr [ebp-4]
 00434E63    xor         edx,edx
 00434E65    mov         dword ptr [eax+10],edx;TBitmap.FOnChange:TNotifyEvent
 00434E68    mov         dword ptr [eax+14],edx;TBitmap.?f14:TCoolBand
 00434E6B    mov         eax,dword ptr [ebp-4]
 00434E6E    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434E71    mov         edx,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 00434E74    mov         eax,dword ptr [ebp-4]
 00434E77    mov         ecx,dword ptr [eax]
 00434E79    call        dword ptr [ecx+54];TBitmap.sub_00435104
 00434E7C    xor         eax,eax
 00434E7E    pop         edx
 00434E7F    pop         ecx
 00434E80    pop         ecx
 00434E81    mov         dword ptr fs:[eax],edx
 00434E84    push        434EA0
 00434E89    mov         eax,dword ptr [ebp-4]
 00434E8C    mov         edx,dword ptr [ebp-10]
 00434E8F    mov         dword ptr [eax+10],edx;TBitmap.FOnChange:TNotifyEvent
 00434E92    mov         edx,dword ptr [ebp-0C]
 00434E95    mov         dword ptr [eax+14],edx;TBitmap.?f14:TCoolBand
 00434E98    ret
>00434E99    jmp         @HandleFinally
>00434E9E    jmp         00434E89
 00434EA0    mov         eax,dword ptr [ebp-4]
 00434EA3    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434EA6    mov         dword ptr [ebp-14],eax
 00434EA9    mov         eax,dword ptr [ebp-14]
 00434EAC    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>00434EB0    jne         00434EBE
 00434EB2    mov         eax,dword ptr [ebp-14]
 00434EB5    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00434EB8    mov         edx,dword ptr [ebp-14]
 00434EBB    mov         dword ptr [edx+8],eax;TBitmapImage.FHandle:HBITMAP
 00434EBE    mov         esp,ebp
 00434EC0    pop         ebp
 00434EC1    ret
*}
end;

//00434EC4
procedure sub_00434EC4(?:TBitmap);
begin
{*
 00434EC4    push        ebp
 00434EC5    mov         ebp,esp
 00434EC7    add         esp,0FFFFFFF4
 00434ECA    mov         dword ptr [ebp-4],eax
 00434ECD    mov         eax,dword ptr [ebp-4]
 00434ED0    cmp         byte ptr [eax+32],0;TBitmap.FMaskValid:Boolean
>00434ED4    je          00434EDF
 00434ED6    mov         eax,dword ptr [ebp-4]
 00434ED9    cmp         byte ptr [eax+31],0;TBitmap.FMaskBitsValid:Boolean
>00434EDD    jne         00434F58
 00434EDF    mov         eax,dword ptr [ebp-4]
 00434EE2    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434EE5    mov         dword ptr [ebp-8],eax
 00434EE8    mov         eax,dword ptr [ebp-8]
 00434EEB    cmp         dword ptr [eax+0C],0;TBitmapImage.FMaskHandle:HBITMAP
>00434EEF    je          00434F10
 00434EF1    mov         eax,dword ptr [ebp-8]
 00434EF4    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 00434EF7    call        00433404
 00434EFC    mov         eax,dword ptr [ebp-8]
 00434EFF    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 00434F02    push        eax
 00434F03    call        gdi32.DeleteObject
 00434F08    mov         eax,dword ptr [ebp-8]
 00434F0B    xor         edx,edx
 00434F0D    mov         dword ptr [eax+0C],edx;TBitmapImage.FMaskHandle:HBITMAP
 00434F10    mov         eax,dword ptr [ebp-4]
 00434F13    call        00434DE0
 00434F18    mov         eax,dword ptr [ebp-4]
 00434F1B    call        00434E00
 00434F20    mov         eax,dword ptr [ebp-4]
 00434F23    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434F26    mov         dword ptr [ebp-0C],eax
 00434F29    mov         eax,dword ptr [ebp-4]
 00434F2C    call        00434C88
 00434F31    mov         ecx,eax
 00434F33    mov         eax,dword ptr [ebp-0C]
 00434F36    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00434F39    mov         eax,dword ptr [ebp-0C]
 00434F3C    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 00434F3F    call        0043404C
 00434F44    mov         edx,dword ptr [ebp-0C]
 00434F47    mov         dword ptr [edx+0C],eax;TBitmapImage.FMaskHandle:HBITMAP
 00434F4A    mov         eax,dword ptr [ebp-4]
 00434F4D    mov         byte ptr [eax+32],1;TBitmap.FMaskValid:Boolean
 00434F51    mov         eax,dword ptr [ebp-4]
 00434F54    mov         byte ptr [eax+31],1;TBitmap.FMaskBitsValid:Boolean
 00434F58    mov         esp,ebp
 00434F5A    pop         ebp
 00434F5B    ret
*}
end;

//00434F5C
procedure sub_00434F5C(?:TBitmap);
begin
{*
 00434F5C    push        ebp
 00434F5D    mov         ebp,esp
 00434F5F    add         esp,0FFFFFFF4
 00434F62    push        ebx
 00434F63    mov         dword ptr [ebp-4],eax
 00434F66    mov         eax,dword ptr [ebp-4]
 00434F69    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00434F6C    mov         dword ptr [ebp-0C],eax
 00434F6F    mov         eax,dword ptr [ebp-4]
 00434F72    cmp         byte ptr [eax+30],0;TBitmap.FIgnorePalette:Boolean
>00434F76    jne         00435065
 00434F7C    mov         eax,dword ptr [ebp-0C]
 00434F7F    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>00434F83    jne         00435065
 00434F89    mov         eax,dword ptr [ebp-0C]
 00434F8C    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>00434F90    je          00435065
 00434F96    mov         eax,dword ptr [ebp-0C]
 00434F99    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 00434F9C    mov         edx,dword ptr [ebp-0C]
 00434F9F    cmp         eax,dword ptr [edx+14];TBitmapImage.FDIBHandle:HBITMAP
>00434FA2    jne         00434FAF
 00434FA4    mov         eax,dword ptr [ebp-0C]
 00434FA7    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00434FAA    call        00433404
 00434FAF    mov         eax,dword ptr [ebp-0C]
 00434FB2    mov         cx,word ptr [eax+3E]
 00434FB6    mov         eax,1
 00434FBB    shl         eax,cl
 00434FBD    mov         ecx,eax
 00434FBF    xor         edx,edx
 00434FC1    mov         eax,dword ptr [ebp-0C]
 00434FC4    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00434FC7    call        004303F8
 00434FCC    mov         edx,dword ptr [ebp-0C]
 00434FCF    mov         dword ptr [edx+10],eax;TBitmapImage.FPalette:HPALETTE
 00434FD2    mov         eax,dword ptr [ebp-0C]
 00434FD5    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>00434FD9    jne         00435065
 00434FDF    push        0
 00434FE1    call        user32.GetDC
 00434FE6    call        0042FBD4
 00434FEB    mov         dword ptr [ebp-8],eax
 00434FEE    mov         eax,dword ptr [ebp-0C]
 00434FF1    cmp         byte ptr [eax+71],0;TBitmapImage.FHalftone:Boolean
>00434FF5    jne         0043502A
 00434FF7    push        0C
 00434FF9    mov         eax,dword ptr [ebp-8]
 00434FFC    push        eax
 00434FFD    call        gdi32.GetDeviceCaps
 00435002    mov         ebx,eax
 00435004    push        0E
 00435006    mov         eax,dword ptr [ebp-8]
 00435009    push        eax
 0043500A    call        gdi32.GetDeviceCaps
 0043500F    imul        ebx,eax
 00435012    mov         eax,dword ptr [ebp-0C]
 00435015    movzx       eax,word ptr [eax+2A]
 00435019    mov         edx,dword ptr [ebp-0C]
 0043501C    movzx       edx,word ptr [edx+28]
 00435020    imul        edx
 00435022    cmp         ebx,eax
>00435024    jl          0043502A
 00435026    xor         eax,eax
>00435028    jmp         0043502C
 0043502A    mov         al,1
 0043502C    mov         edx,dword ptr [ebp-0C]
 0043502F    mov         byte ptr [edx+71],al;TBitmapImage.FHalftone:Boolean
 00435032    mov         eax,dword ptr [ebp-0C]
 00435035    cmp         byte ptr [eax+71],0;TBitmapImage.FHalftone:Boolean
>00435039    je          0043504A
 0043503B    mov         eax,dword ptr [ebp-8]
 0043503E    push        eax
 0043503F    call        gdi32.CreateHalftonePalette
 00435044    mov         edx,dword ptr [ebp-0C]
 00435047    mov         dword ptr [edx+10],eax;TBitmapImage.FPalette:HPALETTE
 0043504A    mov         eax,dword ptr [ebp-8]
 0043504D    push        eax
 0043504E    push        0
 00435050    call        user32.ReleaseDC
 00435055    mov         eax,dword ptr [ebp-0C]
 00435058    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>0043505C    jne         00435065
 0043505E    mov         eax,dword ptr [ebp-4]
 00435061    mov         byte ptr [eax+30],1;TBitmap.FIgnorePalette:Boolean
 00435065    pop         ebx
 00435066    mov         esp,ebp
 00435068    pop         ebp
 00435069    ret
*}
end;

//0043506C
{*procedure sub_0043506C(?:?; ?:?; ?:?);
begin
 0043506C    push        ebp
 0043506D    mov         ebp,esp
 0043506F    add         esp,0FFFFFFA0
 00435072    mov         dword ptr [ebp-0C],ecx
 00435075    mov         word ptr [ebp-6],dx
 00435079    mov         dword ptr [ebp-4],eax
 0043507C    cmp         word ptr [ebp-6],2
>00435081    jne         00435089
 00435083    cmp         dword ptr [ebp-0C],0
>00435087    jne         00435093
 00435089    mov         eax,[0056E3D8];^SUnknownClipboardFormat:TResStringRec
 0043508E    call        InvalidGraphic
 00435093    mov         eax,dword ptr [ebp-4]
 00435096    call        00434DE0
 0043509B    lea         eax,[ebp-60]
 0043509E    xor         ecx,ecx
 004350A0    mov         edx,54
 004350A5    call        @FillChar
 004350AA    lea         eax,[ebp-60]
 004350AD    push        eax
 004350AE    push        54
 004350B0    mov         eax,dword ptr [ebp-0C]
 004350B3    push        eax
 004350B4    call        gdi32.GetObjectA
 004350B9    cmp         dword ptr [ebp-4C],0
>004350BD    jne         004350C4
 004350BF    xor         eax,eax
 004350C1    mov         dword ptr [ebp-48],eax
 004350C4    lea         eax,[ebp-60]
 004350C7    push        eax
 004350C8    mov         ecx,dword ptr [ebp+8]
 004350CB    mov         edx,dword ptr [ebp-0C]
 004350CE    mov         eax,dword ptr [ebp-4]
 004350D1    call        0043444C
 004350D6    mov         eax,dword ptr [ebp-4]
 004350D9    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 004350DC    mov         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
 004350E0    mov         eax,dword ptr [ebp-4]
 004350E3    mov         edx,dword ptr [eax]
 004350E5    call        dword ptr [edx+24];TBitmap.sub_00434B10
 004350E8    test        eax,eax
 004350EA    setne       al
 004350ED    mov         edx,dword ptr [ebp-4]
 004350F0    mov         byte ptr [edx+22],al;TBitmap.FPaletteModified:Boolean
 004350F3    mov         edx,dword ptr [ebp-4]
 004350F6    mov         eax,dword ptr [ebp-4]
 004350F9    mov         ecx,dword ptr [eax]
 004350FB    call        dword ptr [ecx+10];TBitmap.sub_0043455C
 004350FE    mov         esp,ebp
 00435100    pop         ebp
 00435101    ret         4
end;*}

//00435104
{*procedure sub_00435104(?:?);
begin
 00435104    push        ebp
 00435105    mov         ebp,esp
 00435107    add         esp,0FFFFFFF8
 0043510A    mov         dword ptr [ebp-8],edx
 0043510D    mov         dword ptr [ebp-4],eax
 00435110    mov         eax,dword ptr [ebp-8]
 00435113    mov         edx,dword ptr [eax]
 00435115    call        dword ptr [edx]
 00435117    push        eax
 00435118    mov         eax,dword ptr [ebp-8]
 0043511B    call        TStream.GetPosition
 00435120    pop         ecx
 00435121    sub         ecx,eax
 00435123    mov         edx,dword ptr [ebp-8]
 00435126    mov         eax,dword ptr [ebp-4]
 00435129    call        004358A8
 0043512E    pop         ecx
 0043512F    pop         ecx
 00435130    pop         ebp
 00435131    ret
end;*}

//00435134
{*procedure sub_00435134(?:?; ?:LongWord; ?:AnsiString);
begin
 00435134    push        ebp
 00435135    mov         ebp,esp
 00435137    add         esp,0FFFFFFF0
 0043513A    mov         dword ptr [ebp-0C],ecx
 0043513D    mov         dword ptr [ebp-8],edx
 00435140    mov         dword ptr [ebp-4],eax
 00435143    mov         eax,dword ptr [ebp-0C]
 00435146    push        eax
 00435147    push        2
 00435149    mov         ecx,dword ptr [ebp-8]
 0043514C    mov         dl,1
 0043514E    mov         eax,[0041DE90];TResourceStream
 00435153    call        TResourceStream.Create;TResourceStream.Create
 00435158    mov         dword ptr [ebp-10],eax
 0043515B    xor         eax,eax
 0043515D    push        ebp
 0043515E    push        435195
 00435163    push        dword ptr fs:[eax]
 00435166    mov         dword ptr fs:[eax],esp
 00435169    push        0
 0043516B    mov         eax,dword ptr [ebp-10]
 0043516E    mov         edx,dword ptr [eax]
 00435170    call        dword ptr [edx];TResourceStream.sub_004235A0
 00435172    mov         ecx,eax
 00435174    mov         edx,dword ptr [ebp-10]
 00435177    mov         eax,dword ptr [ebp-4]
 0043517A    call        004352DC
 0043517F    xor         eax,eax
 00435181    pop         edx
 00435182    pop         ecx
 00435183    pop         ecx
 00435184    mov         dword ptr fs:[eax],edx
 00435187    push        43519C
 0043518C    mov         eax,dword ptr [ebp-10]
 0043518F    call        TObject.Free
 00435194    ret
>00435195    jmp         @HandleFinally
>0043519A    jmp         0043518C
 0043519C    mov         esp,ebp
 0043519E    pop         ebp
 0043519F    ret
end;*}

//004351A0
{*procedure sub_004351A0(?:TBitmap; ?:HBITMAP; ?:HPALETTE; ?:?; ?:?; ?:?);
begin
 004351A0    push        ebp
 004351A1    mov         ebp,esp
 004351A3    add         esp,0FFFFFFF0
 004351A6    push        ebx
 004351A7    push        esi
 004351A8    push        edi
 004351A9    mov         dword ptr [ebp-0C],ecx
 004351AC    mov         dword ptr [ebp-8],edx
 004351AF    mov         dword ptr [ebp-4],eax
 004351B2    mov         dl,1
 004351B4    mov         eax,[0042CEE8];TBitmapImage
 004351B9    call        TObject.Create;TBitmapImage.Create
 004351BE    mov         dword ptr [ebp-10],eax
 004351C1    xor         eax,eax
 004351C3    push        ebp
 004351C4    push        43522F
 004351C9    push        dword ptr fs:[eax]
 004351CC    mov         dword ptr fs:[eax],esp
 004351CF    mov         eax,dword ptr [ebp-10]
 004351D2    mov         edx,dword ptr [ebp-8]
 004351D5    mov         dword ptr [eax+8],edx;TBitmapImage.FHandle:HBITMAP
 004351D8    mov         eax,dword ptr [ebp-10]
 004351DB    mov         edx,dword ptr [ebp-0C]
 004351DE    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
 004351E1    mov         eax,dword ptr [ebp+10]
 004351E4    mov         edx,dword ptr [ebp-10]
 004351E7    mov         esi,eax
 004351E9    lea         edi,[edx+18];TBitmapImage.FDIB:TDIBSection
 004351EC    mov         ecx,15
 004351F1    rep movs    dword ptr [edi],dword ptr [esi]
 004351F3    mov         eax,dword ptr [ebp-10]
 004351F6    mov         dl,byte ptr [ebp+0C]
 004351F9    mov         byte ptr [eax+70],dl;TBitmapImage.FOS2Format:Boolean
 004351FC    mov         eax,dword ptr [ebp-10]
 004351FF    cmp         dword ptr [eax+2C],0
>00435203    je          00435211
 00435205    mov         eax,dword ptr [ebp-10]
 00435208    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0043520B    mov         edx,dword ptr [ebp-10]
 0043520E    mov         dword ptr [edx+14],eax;TBitmapImage.FDIBHandle:HBITMAP
 00435211    mov         eax,dword ptr [ebp+8]
 00435214    mov         edx,dword ptr ds:[41DE14];TMemoryStream
 0043521A    call        @AsClass
 0043521F    mov         edx,dword ptr [ebp-10]
 00435222    mov         dword ptr [edx+6C],eax;TBitmapImage.FSaveStream:TMemoryStream
 00435225    xor         eax,eax
 00435227    pop         edx
 00435228    pop         ecx
 00435229    pop         ecx
 0043522A    mov         dword ptr fs:[eax],edx
>0043522D    jmp         00435246
>0043522F    jmp         @HandleAnyException
 00435234    mov         eax,dword ptr [ebp-10]
 00435237    call        TObject.Free
 0043523C    call        @RaiseAgain
 00435241    call        @DoneExcept
 00435246    push        571AD4;BitmapImageLock:TRTLCriticalSection
 0043524B    call        kernel32.EnterCriticalSection
 00435250    xor         eax,eax
 00435252    push        ebp
 00435253    push        435295
 00435258    push        dword ptr fs:[eax]
 0043525B    mov         dword ptr fs:[eax],esp
 0043525E    mov         eax,dword ptr [ebp-4]
 00435261    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00435264    call        004336F8
 00435269    mov         eax,dword ptr [ebp-4]
 0043526C    mov         edx,dword ptr [ebp-10]
 0043526F    mov         dword ptr [eax+28],edx;TBitmap.FImage:TBitmapImage
 00435272    mov         eax,dword ptr [ebp-4]
 00435275    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00435278    call        004336E8
 0043527D    xor         eax,eax
 0043527F    pop         edx
 00435280    pop         ecx
 00435281    pop         ecx
 00435282    mov         dword ptr fs:[eax],edx
 00435285    push        43529C
 0043528A    push        571AD4;BitmapImageLock:TRTLCriticalSection
 0043528F    call        kernel32.LeaveCriticalSection
 00435294    ret
>00435295    jmp         @HandleFinally
>0043529A    jmp         0043528A
 0043529C    mov         eax,dword ptr [ebp-4]
 0043529F    mov         byte ptr [eax+32],0;TBitmap.FMaskValid:Boolean
 004352A3    pop         edi
 004352A4    pop         esi
 004352A5    pop         ebx
 004352A6    mov         esp,ebp
 004352A8    pop         ebp
 004352A9    ret         0C
end;*}

//004352AC
{*procedure sub_004352AC(?:?);
begin
 004352AC    push        ebp
 004352AD    mov         ebp,esp
 004352AF    add         esp,0FFFFFFF4
 004352B2    push        ebx
 004352B3    mov         dword ptr [ebp-8],edx
 004352B6    mov         dword ptr [ebp-4],eax
 004352B9    lea         edx,[ebp-0C]
 004352BC    mov         ecx,4
 004352C1    mov         eax,dword ptr [ebp-8]
 004352C4    mov         ebx,dword ptr [eax]
 004352C6    call        dword ptr [ebx+0C]
 004352C9    mov         ecx,dword ptr [ebp-0C]
 004352CC    mov         edx,dword ptr [ebp-8]
 004352CF    mov         eax,dword ptr [ebp-4]
 004352D2    call        004358A8
 004352D7    pop         ebx
 004352D8    mov         esp,ebp
 004352DA    pop         ebp
 004352DB    ret
end;*}

//004352DC
{*procedure sub_004352DC(?:TBitmap; ?:TResourceStream; ?:?; ?:?);
begin
 004352DC    push        ebp
 004352DD    mov         ebp,esp
 004352DF    add         esp,0FFFFFF48
 004352E5    push        ebx
 004352E6    push        esi
 004352E7    push        edi
 004352E8    mov         dword ptr [ebp-0C],ecx
 004352EB    mov         dword ptr [ebp-8],edx
 004352EE    mov         dword ptr [ebp-4],eax
 004352F1    xor         eax,eax
 004352F3    mov         dword ptr [ebp-34],eax
 004352F6    xor         eax,eax
 004352F8    mov         dword ptr [ebp-2C],eax
 004352FB    xor         eax,eax
 004352FD    mov         dword ptr [ebp-3C],eax
 00435300    lea         edx,[ebp-24]
 00435303    mov         ecx,4
 00435308    mov         eax,dword ptr [ebp-8]
 0043530B    mov         ebx,dword ptr [eax]
 0043530D    call        dword ptr [ebx+0C];TResourceStream.sub_00423D8C
 00435310    cmp         dword ptr [ebp-24],0C
 00435314    sete        byte ptr [ebp-25]
 00435318    cmp         byte ptr [ebp-25],0
>0043531C    je          00435325
 0043531E    mov         dword ptr [ebp-24],28
 00435325    mov         eax,dword ptr [ebp-24]
 00435328    add         eax,0C
 0043532B    add         eax,400
 00435330    call        @GetMem
 00435335    mov         dword ptr [ebp-1C],eax
 00435338    mov         eax,dword ptr [ebp-1C]
 0043533B    mov         dword ptr [ebp-40],eax
 0043533E    xor         eax,eax
 00435340    push        ebp
 00435341    push        43585D
 00435346    push        dword ptr fs:[eax]
 00435349    mov         dword ptr fs:[eax],esp
 0043534C    xor         eax,eax
 0043534E    push        ebp
 0043534F    push        435830
 00435354    push        dword ptr fs:[eax]
 00435357    mov         dword ptr fs:[eax],esp
 0043535A    cmp         byte ptr [ebp-25],0
>0043535E    je          004353BB
 00435360    lea         edx,[ebp-54]
 00435363    add         edx,4
 00435366    mov         ecx,8
 0043536B    mov         eax,dword ptr [ebp-8]
 0043536E    mov         ebx,dword ptr [eax]
 00435370    call        dword ptr [ebx+0C];TResourceStream.sub_00423D8C
 00435373    mov         eax,dword ptr [ebp-40]
 00435376    xor         ecx,ecx
 00435378    mov         edx,28
 0043537D    call        @FillChar
 00435382    mov         eax,dword ptr [ebp-40]
 00435385    mov         dword ptr [ebp-44],eax
 00435388    movzx       eax,word ptr [ebp-50]
 0043538C    mov         edx,dword ptr [ebp-44]
 0043538F    mov         dword ptr [edx+4],eax
 00435392    movzx       eax,word ptr [ebp-4E]
 00435396    mov         edx,dword ptr [ebp-44]
 00435399    mov         dword ptr [edx+8],eax
 0043539C    mov         eax,dword ptr [ebp-44]
 0043539F    mov         dx,word ptr [ebp-4C]
 004353A3    mov         word ptr [eax+0C],dx
 004353A7    mov         eax,dword ptr [ebp-44]
 004353AA    mov         dx,word ptr [ebp-4A]
 004353AE    mov         word ptr [eax+0E],dx
 004353B2    sub         dword ptr [ebp-0C],0C
>004353B6    jmp         00435491
 004353BB    mov         ecx,dword ptr [ebp-24]
 004353BE    sub         ecx,4
 004353C1    mov         edx,dword ptr [ebp-1C]
 004353C4    add         edx,4
 004353C7    mov         eax,dword ptr [ebp-8]
 004353CA    mov         ebx,dword ptr [eax]
 004353CC    call        dword ptr [ebx+0C];TResourceStream.sub_00423D8C
 004353CF    mov         eax,dword ptr [ebp-24]
 004353D2    sub         dword ptr [ebp-0C],eax
 004353D5    mov         eax,dword ptr [ebp-40]
 004353D8    cmp         dword ptr [eax+10],3
>004353DC    je          00435491
 004353E2    mov         eax,dword ptr [ebp-40]
 004353E5    cmp         dword ptr [eax+10],0
>004353E9    je          00435491
 004353EF    mov         dl,1
 004353F1    mov         eax,[0041DE14];TMemoryStream
 004353F6    call        TObject.Create;TMemoryStream.Create
 004353FB    mov         dword ptr [ebp-3C],eax
 004353FE    cmp         dword ptr [ebp+8],0
>00435402    jne         00435434
 00435404    lea         eax,[ebp-0B6]
 0043540A    xor         ecx,ecx
 0043540C    mov         edx,0E
 00435411    call        @FillChar
 00435416    mov         word ptr [ebp-0B6],4D42
 0043541F    mov         eax,dword ptr [ebp-0C]
 00435422    add         eax,dword ptr [ebp-24]
 00435425    mov         dword ptr [ebp-0B4],eax
 0043542B    lea         eax,[ebp-0B6]
 00435431    mov         dword ptr [ebp+8],eax
 00435434    mov         edx,dword ptr [ebp+8]
 00435437    mov         ecx,0E
 0043543C    mov         eax,dword ptr [ebp-3C]
 0043543F    mov         ebx,dword ptr [eax]
 00435441    call        dword ptr [ebx+10];TMemoryStream.sub_0042412C
 00435444    lea         edx,[ebp-24]
 00435447    mov         ecx,4
 0043544C    mov         eax,dword ptr [ebp-3C]
 0043544F    mov         ebx,dword ptr [eax]
 00435451    call        dword ptr [ebx+10];TMemoryStream.sub_0042412C
 00435454    mov         ecx,dword ptr [ebp-24]
 00435457    sub         ecx,4
 0043545A    mov         edx,dword ptr [ebp-1C]
 0043545D    add         edx,4
 00435460    mov         eax,dword ptr [ebp-3C]
 00435463    mov         ebx,dword ptr [eax]
 00435465    call        dword ptr [ebx+10];TMemoryStream.sub_0042412C
 00435468    mov         eax,dword ptr [ebp-0C]
 0043546B    xor         edx,edx
 0043546D    push        edx
 0043546E    push        eax
 0043546F    mov         edx,dword ptr [ebp-8]
 00435472    mov         eax,dword ptr [ebp-3C]
 00435475    call        TStream.CopyFrom
 0043547A    mov         edx,dword ptr [ebp-0C]
 0043547D    neg         edx
 0043547F    mov         cx,2
 00435483    mov         eax,dword ptr [ebp-3C]
 00435486    mov         ebx,dword ptr [eax]
 00435488    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0043548B    mov         eax,dword ptr [ebp-3C]
 0043548E    mov         dword ptr [ebp-8],eax
 00435491    mov         eax,dword ptr [ebp-40]
 00435494    mov         dword ptr [ebp-48],eax
 00435497    mov         eax,dword ptr [ebp-48]
 0043549A    mov         edx,dword ptr [ebp-24]
 0043549D    mov         dword ptr [eax],edx
 0043549F    mov         eax,dword ptr [ebp-1C]
 004354A2    add         eax,dword ptr [ebp-24]
 004354A5    mov         dword ptr [ebp-20],eax
 004354A8    mov         eax,dword ptr [ebp-48]
 004354AB    cmp         word ptr [eax+0C],1
>004354B0    je          004354B7
 004354B2    call        InvalidBitmap
 004354B7    cmp         dword ptr [ebp-24],28
>004354BB    jne         004354F2
 004354BD    mov         eax,dword ptr [ebp-48]
 004354C0    cmp         word ptr [eax+0E],10
>004354C5    je          004354D1
 004354C7    mov         eax,dword ptr [ebp-48]
 004354CA    cmp         word ptr [eax+0E],20
>004354CF    jne         004354F2
 004354D1    mov         eax,dword ptr [ebp-48]
 004354D4    cmp         dword ptr [eax+10],3
>004354D8    jne         004354F2
 004354DA    mov         edx,dword ptr [ebp-20]
 004354DD    mov         ecx,0C
 004354E2    mov         eax,dword ptr [ebp-8]
 004354E5    call        TStream.ReadBuffer
 004354EA    add         dword ptr [ebp-20],0C
 004354EE    sub         dword ptr [ebp-0C],0C
 004354F2    mov         eax,dword ptr [ebp-48]
 004354F5    cmp         dword ptr [eax+20],0
>004354F9    jne         0043550D
 004354FB    mov         eax,dword ptr [ebp-48]
 004354FE    mov         ax,word ptr [eax+0E]
 00435502    call        0042FD64
 00435507    mov         edx,dword ptr [ebp-48]
 0043550A    mov         dword ptr [edx+20],eax
 0043550D    mov         eax,dword ptr [ebp-48]
 00435510    mov         ecx,dword ptr [eax+20]
 00435513    xor         eax,eax
 00435515    mov         al,byte ptr [ebp-25]
 00435518    movzx       eax,byte ptr [eax+56C028]
 0043551F    imul        ecx,eax
 00435522    mov         edx,dword ptr [ebp-20]
 00435525    mov         eax,dword ptr [ebp-8]
 00435528    call        TStream.ReadBuffer
 0043552D    mov         eax,dword ptr [ebp-48]
 00435530    mov         eax,dword ptr [eax+20]
 00435533    xor         edx,edx
 00435535    mov         dl,byte ptr [ebp-25]
 00435538    movzx       edx,byte ptr [edx+56C028]
 0043553F    imul        edx
 00435541    sub         dword ptr [ebp-0C],eax
 00435544    mov         eax,dword ptr [ebp-48]
 00435547    cmp         dword ptr [eax+14],0
>0043554B    jne         0043557A
 0043554D    mov         eax,dword ptr [ebp-48]
 00435550    movzx       edx,word ptr [eax+0E]
 00435554    mov         eax,dword ptr [ebp-48]
 00435557    mov         eax,dword ptr [eax+4]
 0043555A    mov         ecx,20
 0043555F    call        0042FDA0
 00435564    mov         ecx,eax
 00435566    mov         eax,dword ptr [ebp-48]
 00435569    mov         eax,dword ptr [eax+8]
 0043556C    cdq
 0043556D    xor         eax,edx
 0043556F    sub         eax,edx
 00435571    imul        ecx,eax
 00435574    mov         eax,dword ptr [ebp-48]
 00435577    mov         dword ptr [eax+14],ecx
 0043557A    mov         eax,dword ptr [ebp-48]
 0043557D    mov         eax,dword ptr [eax+14]
 00435580    cmp         eax,dword ptr [ebp-0C]
>00435583    jae         0043558E
 00435585    mov         eax,dword ptr [ebp-48]
 00435588    mov         eax,dword ptr [eax+14]
 0043558B    mov         dword ptr [ebp-0C],eax
 0043558E    cmp         byte ptr [ebp-25],0
>00435592    je          0043559C
 00435594    mov         eax,dword ptr [ebp-20]
 00435597    call        004300AC
 0043559C    push        0
 0043559E    call        user32.GetDC
 004355A3    call        0042FBD4
 004355A8    mov         dword ptr [ebp-10],eax
 004355AB    xor         eax,eax
 004355AD    push        ebp
 004355AE    push        4357AB
 004355B3    push        dword ptr fs:[eax]
 004355B6    mov         dword ptr fs:[eax],esp
 004355B9    mov         eax,dword ptr [ebp-40]
 004355BC    cmp         dword ptr [eax+10],0
>004355C0    je          004355CB
 004355C2    mov         eax,dword ptr [ebp-40]
 004355C5    cmp         dword ptr [eax+10],3
>004355C9    jne         004355D8
 004355CB    cmp         byte ptr ds:[56BD98],0;gvar_0056BD98
>004355D2    je          00435719
 004355D8    xor         eax,eax
 004355DA    mov         dword ptr [ebp-14],eax
 004355DD    mov         eax,dword ptr [ebp-0C]
 004355E0    call        @GetMem
 004355E5    mov         dword ptr [ebp-18],eax
 004355E8    xor         eax,eax
 004355EA    push        ebp
 004355EB    push        435712
 004355F0    push        dword ptr fs:[eax]
 004355F3    mov         dword ptr fs:[eax],esp
 004355F6    mov         edx,dword ptr [ebp-18]
 004355F9    mov         ecx,dword ptr [ebp-0C]
 004355FC    mov         eax,dword ptr [ebp-8]
 004355FF    call        TStream.ReadBuffer
 00435604    mov         eax,dword ptr [ebp-10]
 00435607    push        eax
 00435608    call        gdi32.CreateCompatibleDC
 0043560D    call        0042FBD4
 00435612    mov         dword ptr [ebp-14],eax
 00435615    push        1
 00435617    push        1
 00435619    mov         eax,dword ptr [ebp-10]
 0043561C    push        eax
 0043561D    call        gdi32.CreateCompatibleBitmap
 00435622    push        eax
 00435623    mov         eax,dword ptr [ebp-14]
 00435626    push        eax
 00435627    call        gdi32.SelectObject
 0043562C    mov         dword ptr [ebp-30],eax
 0043562F    xor         eax,eax
 00435631    mov         dword ptr [ebp-38],eax
 00435634    mov         eax,dword ptr [ebp-40]
 00435637    cmp         dword ptr [eax+20],0
>0043563B    jbe         0043566B
 0043563D    mov         eax,dword ptr [ebp-40]
 00435640    mov         ecx,dword ptr [eax+20]
 00435643    mov         edx,dword ptr [ebp-20]
 00435646    xor         eax,eax
 00435648    call        004303F8
 0043564D    mov         dword ptr [ebp-34],eax
 00435650    push        0
 00435652    mov         eax,dword ptr [ebp-34]
 00435655    push        eax
 00435656    mov         eax,dword ptr [ebp-14]
 00435659    push        eax
 0043565A    call        gdi32.SelectPalette
 0043565F    mov         dword ptr [ebp-38],eax
 00435662    mov         eax,dword ptr [ebp-14]
 00435665    push        eax
 00435666    call        gdi32.RealizePalette
 0043566B    xor         eax,eax
 0043566D    push        ebp
 0043566E    push        4356E6
 00435673    push        dword ptr fs:[eax]
 00435676    mov         dword ptr fs:[eax],esp
 00435679    push        0
 0043567B    mov         eax,dword ptr [ebp-1C]
 0043567E    push        eax
 0043567F    mov         eax,dword ptr [ebp-18]
 00435682    push        eax
 00435683    push        4
 00435685    mov         eax,dword ptr [ebp-1C]
 00435688    push        eax
 00435689    mov         eax,dword ptr [ebp-14]
 0043568C    push        eax
 0043568D    call        gdi32.CreateDIBitmap
 00435692    mov         dword ptr [ebp-2C],eax
 00435695    cmp         dword ptr [ebp-2C],0
>00435699    jne         004356B0
 0043569B    call        kernel32.GetLastError
 004356A0    test        eax,eax
>004356A2    jne         004356AB
 004356A4    call        InvalidBitmap
>004356A9    jmp         004356B0
 004356AB    call        RaiseLastOSError
 004356B0    xor         eax,eax
 004356B2    pop         edx
 004356B3    pop         ecx
 004356B4    pop         ecx
 004356B5    mov         dword ptr fs:[eax],edx
 004356B8    push        4356ED
 004356BD    cmp         dword ptr [ebp-38],0
>004356C1    je          004356D2
 004356C3    push        0FF
 004356C5    mov         eax,dword ptr [ebp-38]
 004356C8    push        eax
 004356C9    mov         eax,dword ptr [ebp-14]
 004356CC    push        eax
 004356CD    call        gdi32.SelectPalette
 004356D2    mov         eax,dword ptr [ebp-30]
 004356D5    push        eax
 004356D6    mov         eax,dword ptr [ebp-14]
 004356D9    push        eax
 004356DA    call        gdi32.SelectObject
 004356DF    push        eax
 004356E0    call        gdi32.DeleteObject
 004356E5    ret
>004356E6    jmp         @HandleFinally
>004356EB    jmp         004356BD
 004356ED    xor         eax,eax
 004356EF    pop         edx
 004356F0    pop         ecx
 004356F1    pop         ecx
 004356F2    mov         dword ptr fs:[eax],edx
 004356F5    push        435792
 004356FA    cmp         dword ptr [ebp-14],0
>004356FE    je          00435709
 00435700    mov         eax,dword ptr [ebp-14]
 00435703    push        eax
 00435704    call        gdi32.DeleteDC
 00435709    mov         eax,dword ptr [ebp-18]
 0043570C    call        @FreeMem
 00435711    ret
>00435712    jmp         @HandleFinally
>00435717    jmp         004356FA
 00435719    push        0
 0043571B    push        0
 0043571D    lea         eax,[ebp-18]
 00435720    push        eax
 00435721    push        0
 00435723    mov         eax,dword ptr [ebp-1C]
 00435726    push        eax
 00435727    mov         eax,dword ptr [ebp-10]
 0043572A    push        eax
 0043572B    call        gdi32.CreateDIBSection
 00435730    mov         dword ptr [ebp-2C],eax
 00435733    cmp         dword ptr [ebp-2C],0
>00435737    je          0043573F
 00435739    cmp         dword ptr [ebp-18],0
>0043573D    jne         00435754
 0043573F    call        kernel32.GetLastError
 00435744    test        eax,eax
>00435746    jne         0043574F
 00435748    call        InvalidBitmap
>0043574D    jmp         00435754
 0043574F    call        RaiseLastOSError
 00435754    xor         eax,eax
 00435756    push        ebp
 00435757    push        43577A
 0043575C    push        dword ptr fs:[eax]
 0043575F    mov         dword ptr fs:[eax],esp
 00435762    mov         edx,dword ptr [ebp-18]
 00435765    mov         ecx,dword ptr [ebp-0C]
 00435768    mov         eax,dword ptr [ebp-8]
 0043576B    call        TStream.ReadBuffer
 00435770    xor         eax,eax
 00435772    pop         edx
 00435773    pop         ecx
 00435774    pop         ecx
 00435775    mov         dword ptr fs:[eax],edx
>00435778    jmp         00435792
>0043577A    jmp         @HandleAnyException
 0043577F    mov         eax,dword ptr [ebp-2C]
 00435782    push        eax
 00435783    call        gdi32.DeleteObject
 00435788    call        @RaiseAgain
 0043578D    call        @DoneExcept
 00435792    xor         eax,eax
 00435794    pop         edx
 00435795    pop         ecx
 00435796    pop         ecx
 00435797    mov         dword ptr fs:[eax],edx
 0043579A    push        4357B2
 0043579F    mov         eax,dword ptr [ebp-10]
 004357A2    push        eax
 004357A3    push        0
 004357A5    call        user32.ReleaseDC
 004357AA    ret
>004357AB    jmp         @HandleFinally
>004357B0    jmp         0043579F
 004357B2    mov         eax,dword ptr [ebp-40]
 004357B5    cmp         word ptr [eax+0E],8
>004357BA    jbe         004357DE
 004357BC    mov         eax,dword ptr [ebp-40]
 004357BF    cmp         dword ptr [eax+20],0
>004357C3    jbe         004357DE
 004357C5    cmp         dword ptr [ebp-34],0
>004357C9    jne         004357DE
 004357CB    mov         eax,dword ptr [ebp-40]
 004357CE    mov         ecx,dword ptr [eax+20]
 004357D1    mov         edx,dword ptr [ebp-20]
 004357D4    xor         eax,eax
 004357D6    call        004303F8
 004357DB    mov         dword ptr [ebp-34],eax
 004357DE    lea         eax,[ebp-0A8]
 004357E4    xor         ecx,ecx
 004357E6    mov         edx,54
 004357EB    call        @FillChar
 004357F0    lea         eax,[ebp-0A8]
 004357F6    push        eax
 004357F7    push        54
 004357F9    mov         eax,dword ptr [ebp-2C]
 004357FC    push        eax
 004357FD    call        gdi32.GetObjectA
 00435802    mov         eax,dword ptr [ebp-40]
 00435805    mov         eax,dword ptr [eax+18]
 00435808    mov         dword ptr [ebp-78],eax
 0043580B    mov         eax,dword ptr [ebp-40]
 0043580E    mov         eax,dword ptr [eax+1C]
 00435811    mov         dword ptr [ebp-74],eax
 00435814    mov         eax,dword ptr [ebp-40]
 00435817    mov         eax,dword ptr [eax+20]
 0043581A    mov         dword ptr [ebp-70],eax
 0043581D    mov         eax,dword ptr [ebp-40]
 00435820    mov         eax,dword ptr [eax+24]
 00435823    mov         dword ptr [ebp-6C],eax
 00435826    xor         eax,eax
 00435828    pop         edx
 00435829    pop         ecx
 0043582A    pop         ecx
 0043582B    mov         dword ptr fs:[eax],edx
>0043582E    jmp         00435847
>00435830    jmp         @HandleAnyException
 00435835    mov         eax,dword ptr [ebp-3C]
 00435838    call        TObject.Free
 0043583D    call        @RaiseAgain
 00435842    call        @DoneExcept
 00435847    xor         eax,eax
 00435849    pop         edx
 0043584A    pop         ecx
 0043584B    pop         ecx
 0043584C    mov         dword ptr fs:[eax],edx
 0043584F    push        435864
 00435854    mov         eax,dword ptr [ebp-1C]
 00435857    call        @FreeMem
 0043585C    ret
>0043585D    jmp         @HandleFinally
>00435862    jmp         00435854
 00435864    lea         eax,[ebp-0A8]
 0043586A    push        eax
 0043586B    mov         al,byte ptr [ebp-25]
 0043586E    push        eax
 0043586F    mov         eax,dword ptr [ebp-3C]
 00435872    push        eax
 00435873    mov         ecx,dword ptr [ebp-34]
 00435876    mov         edx,dword ptr [ebp-2C]
 00435879    mov         eax,dword ptr [ebp-4]
 0043587C    call        004351A0
 00435881    mov         eax,dword ptr [ebp-4]
 00435884    mov         edx,dword ptr [eax]
 00435886    call        dword ptr [edx+24]
 00435889    test        eax,eax
 0043588B    setne       al
 0043588E    mov         edx,dword ptr [ebp-4]
 00435891    mov         byte ptr [edx+22],al
 00435894    mov         edx,dword ptr [ebp-4]
 00435897    mov         eax,dword ptr [ebp-4]
 0043589A    mov         ecx,dword ptr [eax]
 0043589C    call        dword ptr [ecx+10]
 0043589F    pop         edi
 004358A0    pop         esi
 004358A1    pop         ebx
 004358A2    mov         esp,ebp
 004358A4    pop         ebp
 004358A5    ret         4
end;*}

//004358A8
{*procedure sub_004358A8(?:TBitmap; ?:?; ?:?);
begin
 004358A8    push        ebp
 004358A9    mov         ebp,esp
 004358AB    add         esp,0FFFFFF90
 004358AE    mov         dword ptr [ebp-0C],ecx
 004358B1    mov         dword ptr [ebp-8],edx
 004358B4    mov         dword ptr [ebp-4],eax
 004358B7    mov         eax,dword ptr [ebp-4]
 004358BA    call        00434DE0
 004358BF    cmp         dword ptr [ebp-0C],0
>004358C3    jne         004358EA
 004358C5    lea         eax,[ebp-6E]
 004358C8    xor         ecx,ecx
 004358CA    mov         edx,54
 004358CF    call        @FillChar
 004358D4    lea         eax,[ebp-6E]
 004358D7    push        eax
 004358D8    push        0
 004358DA    push        0
 004358DC    xor         ecx,ecx
 004358DE    xor         edx,edx
 004358E0    mov         eax,dword ptr [ebp-4]
 004358E3    call        004351A0
>004358E8    jmp         0043591C
 004358EA    lea         edx,[ebp-1A]
 004358ED    mov         ecx,0E
 004358F2    mov         eax,dword ptr [ebp-8]
 004358F5    call        TStream.ReadBuffer
 004358FA    cmp         word ptr [ebp-1A],4D42
>00435900    je          00435907
 00435902    call        InvalidBitmap
 00435907    lea         eax,[ebp-1A]
 0043590A    push        eax
 0043590B    mov         ecx,dword ptr [ebp-0C]
 0043590E    sub         ecx,0E
 00435911    mov         edx,dword ptr [ebp-8]
 00435914    mov         eax,dword ptr [ebp-4]
 00435917    call        004352DC
 0043591C    mov         esp,ebp
 0043591E    pop         ebp
 0043591F    ret
end;*}

//00435920
procedure TBitmap.SetHandle(Value:HBITMAP);
begin
{*
 00435920    push        ebp
 00435921    mov         ebp,esp
 00435923    add         esp,0FFFFFF9C
 00435926    push        ebx
 00435927    push        esi
 00435928    push        edi
 00435929    mov         dword ptr [ebp-8],edx
 0043592C    mov         dword ptr [ebp-4],eax
 0043592F    mov         eax,dword ptr [ebp-4]
 00435932    mov         eax,dword ptr [eax+28]
 00435935    mov         dword ptr [ebp-10],eax
 00435938    mov         eax,dword ptr [ebp-10]
 0043593B    mov         eax,dword ptr [eax+8]
 0043593E    cmp         eax,dword ptr [ebp-8]
>00435941    je          00435A05
 00435947    mov         eax,dword ptr [ebp-4]
 0043594A    call        00434DE0
 0043594F    lea         eax,[ebp-64]
 00435952    xor         ecx,ecx
 00435954    mov         edx,54
 00435959    call        @FillChar
 0043595E    cmp         dword ptr [ebp-8],0
>00435962    je          00435973
 00435964    lea         eax,[ebp-64]
 00435967    push        eax
 00435968    push        54
 0043596A    mov         eax,dword ptr [ebp-8]
 0043596D    push        eax
 0043596E    call        gdi32.GetObjectA
 00435973    mov         eax,dword ptr [ebp-10]
 00435976    cmp         dword ptr [eax+4],1
>0043597A    jne         0043598F
 0043597C    mov         eax,dword ptr [ebp-10]
 0043597F    mov         eax,dword ptr [eax+10]
 00435982    mov         dword ptr [ebp-0C],eax
 00435985    mov         eax,dword ptr [ebp-10]
 00435988    xor         edx,edx
 0043598A    mov         dword ptr [eax+10],edx
>0043598D    jmp         004359B5
 0043598F    mov         eax,dword ptr [ebp-10]
 00435992    mov         eax,dword ptr [eax+10]
 00435995    cmp         eax,dword ptr ds:[571AB8];SystemPalette16:HPALETTE
>0043599B    jne         004359A7
 0043599D    mov         eax,[00571AB8];SystemPalette16:HPALETTE
 004359A2    mov         dword ptr [ebp-0C],eax
>004359A5    jmp         004359B5
 004359A7    mov         eax,dword ptr [ebp-10]
 004359AA    mov         eax,dword ptr [eax+10]
 004359AD    call        00433FD4
 004359B2    mov         dword ptr [ebp-0C],eax
 004359B5    xor         eax,eax
 004359B7    push        ebp
 004359B8    push        4359E3
 004359BD    push        dword ptr fs:[eax]
 004359C0    mov         dword ptr fs:[eax],esp
 004359C3    lea         eax,[ebp-64]
 004359C6    push        eax
 004359C7    push        0
 004359C9    push        0
 004359CB    mov         ecx,dword ptr [ebp-0C]
 004359CE    mov         edx,dword ptr [ebp-8]
 004359D1    mov         eax,dword ptr [ebp-4]
 004359D4    call        004351A0
 004359D9    xor         eax,eax
 004359DB    pop         edx
 004359DC    pop         ecx
 004359DD    pop         ecx
 004359DE    mov         dword ptr fs:[eax],edx
>004359E1    jmp         004359FA
>004359E3    jmp         @HandleAnyException
 004359E8    mov         eax,dword ptr [ebp-0C]
 004359EB    call        0042D164
 004359F0    call        @RaiseAgain
 004359F5    call        @DoneExcept
 004359FA    mov         edx,dword ptr [ebp-4]
 004359FD    mov         eax,dword ptr [ebp-4]
 00435A00    mov         ecx,dword ptr [eax]
 00435A02    call        dword ptr [ecx+10]
 00435A05    pop         edi
 00435A06    pop         esi
 00435A07    pop         ebx
 00435A08    mov         esp,ebp
 00435A0A    pop         ebp
 00435A0B    ret
*}
end;

//00435A0C
{*procedure sub_00435A0C(?:?);
begin
 00435A0C    push        ebp
 00435A0D    mov         ebp,esp
 00435A0F    add         esp,0FFFFFF94
 00435A12    push        esi
 00435A13    push        edi
 00435A14    mov         byte ptr [ebp-5],dl
 00435A17    mov         dword ptr [ebp-4],eax
 00435A1A    mov         eax,dword ptr [ebp-4]
 00435A1D    call        00434A34
 00435A22    cmp         al,byte ptr [ebp-5]
>00435A25    je          00435BD1
 00435A2B    mov         eax,dword ptr [ebp-4]
 00435A2E    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00435A31    mov         dword ptr [ebp-18],eax
 00435A34    mov         eax,dword ptr [ebp-18]
 00435A37    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>00435A3B    jne         00435A68
 00435A3D    mov         eax,dword ptr [ebp-18]
 00435A40    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>00435A44    jne         00435A68
 00435A46    cmp         byte ptr [ebp-5],1
>00435A4A    jne         00435A59
 00435A4C    mov         eax,dword ptr [ebp-18]
 00435A4F    xor         edx,edx
 00435A51    mov         dword ptr [eax+30],edx
>00435A54    jmp         00435BD1
 00435A59    mov         eax,dword ptr [ebp-18]
 00435A5C    mov         dword ptr [eax+30],28
>00435A63    jmp         00435BD1
 00435A68    cmp         byte ptr [ebp-5],0
>00435A6C    jne         00435B13
 00435A72    mov         eax,dword ptr [ebp-18]
 00435A75    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>00435A79    je          00435A8D
 00435A7B    mov         eax,dword ptr [ebp-18]
 00435A7E    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00435A81    mov         edx,dword ptr [ebp-18]
 00435A84    cmp         eax,dword ptr [edx+8];TBitmapImage.FHandle:HBITMAP
>00435A87    je          00435BD1
 00435A8D    mov         eax,dword ptr [ebp-4]
 00435A90    call        00434DE0
 00435A95    mov         eax,dword ptr [ebp-4]
 00435A98    call        00434F5C
 00435A9D    mov         eax,dword ptr [ebp-4]
 00435AA0    call        00434D0C
 00435AA5    mov         eax,dword ptr [ebp-18]
 00435AA8    cmp         dword ptr [eax+4],1;TBitmapImage.............FRefCount:Integer
>00435AAC    jne         00435AF3
 00435AAE    mov         eax,dword ptr [ebp-18]
 00435AB1    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00435AB4    mov         dword ptr [ebp-0C],eax
 00435AB7    mov         eax,dword ptr [ebp-18]
 00435ABA    xor         edx,edx
 00435ABC    mov         dword ptr [eax+14],edx;TBitmapImage.FDIBHandle:HBITMAP
 00435ABF    mov         eax,dword ptr [ebp-18]
 00435AC2    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00435AC5    mov         dword ptr [ebp-10],eax
 00435AC8    mov         eax,dword ptr [ebp-18]
 00435ACB    xor         edx,edx
 00435ACD    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
 00435AD0    mov         eax,dword ptr [ebp-18]
 00435AD3    add         eax,18;TBitmapImage.FDIB:TDIBSection
 00435AD6    push        eax
 00435AD7    mov         eax,dword ptr [ebp-18]
 00435ADA    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 00435ADD    push        eax
 00435ADE    push        0
 00435AE0    mov         ecx,dword ptr [ebp-10]
 00435AE3    mov         edx,dword ptr [ebp-0C]
 00435AE6    mov         eax,dword ptr [ebp-4]
 00435AE9    call        004351A0
>00435AEE    jmp         00435BC6
 00435AF3    mov         eax,dword ptr [ebp-18]
 00435AF6    add         eax,18;TBitmapImage.FDIB:TDIBSection
 00435AF9    push        eax
 00435AFA    mov         eax,dword ptr [ebp-18]
 00435AFD    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00435B00    mov         eax,dword ptr [ebp-18]
 00435B03    mov         edx,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00435B06    mov         eax,dword ptr [ebp-4]
 00435B09    call        0043444C
>00435B0E    jmp         00435BC6
 00435B13    mov         eax,dword ptr [ebp-18]
 00435B16    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>00435B1A    je          00435B2E
 00435B1C    mov         eax,dword ptr [ebp-18]
 00435B1F    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 00435B22    mov         edx,dword ptr [ebp-18]
 00435B25    cmp         eax,dword ptr [edx+14];TBitmapImage.FDIBHandle:HBITMAP
>00435B28    jne         00435BD1
 00435B2E    mov         eax,dword ptr [ebp-4]
 00435B31    call        00434DE0
 00435B36    mov         eax,dword ptr [ebp-4]
 00435B39    call        00434F5C
 00435B3E    mov         eax,dword ptr [ebp-18]
 00435B41    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 00435B44    lea         edi,[ebp-6C]
 00435B47    mov         ecx,15
 00435B4C    rep movs    dword ptr [edi],dword ptr [esi]
 00435B4E    xor         eax,eax
 00435B50    mov         dword ptr [ebp-54],eax
 00435B53    mov         eax,dword ptr [ebp-18]
 00435B56    cmp         dword ptr [eax+4],1;TBitmapImage..............FRefCount:Integer
 00435B5A    sete        byte ptr [ebp-11]
 00435B5E    cmp         byte ptr [ebp-11],0
>00435B62    je          00435B6F
 00435B64    mov         eax,dword ptr [ebp-18]
 00435B67    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00435B6A    mov         dword ptr [ebp-10],eax
>00435B6D    jmp         00435B7D
 00435B6F    mov         eax,dword ptr [ebp-18]
 00435B72    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00435B75    call        00433FD4
 00435B7A    mov         dword ptr [ebp-10],eax
 00435B7D    lea         eax,[ebp-6C]
 00435B80    push        eax
 00435B81    push        0
 00435B83    mov         ecx,dword ptr [ebp-10]
 00435B86    mov         eax,dword ptr [ebp-18]
 00435B89    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00435B8C    mov         eax,dword ptr [ebp-18]
 00435B8F    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00435B92    call        00433964
 00435B97    mov         dword ptr [ebp-0C],eax
 00435B9A    cmp         byte ptr [ebp-11],0
>00435B9E    je          00435BAB
 00435BA0    mov         eax,dword ptr [ebp-0C]
 00435BA3    mov         edx,dword ptr [ebp-18]
 00435BA6    mov         dword ptr [edx+8],eax;TBitmapImage.FHandle:HBITMAP
>00435BA9    jmp         00435BC6
 00435BAB    lea         eax,[ebp-6C]
 00435BAE    push        eax
 00435BAF    mov         eax,dword ptr [ebp-18]
 00435BB2    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 00435BB5    push        eax
 00435BB6    push        0
 00435BB8    mov         ecx,dword ptr [ebp-10]
 00435BBB    mov         edx,dword ptr [ebp-0C]
 00435BBE    mov         eax,dword ptr [ebp-4]
 00435BC1    call        004351A0
 00435BC6    mov         edx,dword ptr [ebp-4]
 00435BC9    mov         eax,dword ptr [ebp-4]
 00435BCC    mov         ecx,dword ptr [eax]
 00435BCE    call        dword ptr [ecx+10];TBitmap.sub_0043455C
 00435BD1    pop         edi
 00435BD2    pop         esi
 00435BD3    mov         esp,ebp
 00435BD5    pop         ebp
 00435BD6    ret
end;*}

//00435BD8
{*procedure sub_00435BD8(?:?);
begin
 00435BD8    push        ebp
 00435BD9    mov         ebp,esp
 00435BDB    add         esp,0FFFFFFA0
 00435BDE    push        esi
 00435BDF    push        edi
 00435BE0    mov         dword ptr [ebp-8],edx
 00435BE3    mov         dword ptr [ebp-4],eax
 00435BE6    mov         eax,dword ptr [ebp-4]
 00435BE9    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00435BEC    mov         dword ptr [ebp-0C],eax
 00435BEF    mov         eax,dword ptr [ebp-0C]
 00435BF2    mov         eax,dword ptr [eax+20]
 00435BF5    cmp         eax,dword ptr [ebp-8]
>00435BF8    je          00435C41
 00435BFA    mov         eax,dword ptr [ebp-4]
 00435BFD    call        00434E00
 00435C02    mov         eax,dword ptr [ebp-0C]
 00435C05    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 00435C08    lea         edi,[ebp-60]
 00435C0B    mov         ecx,15
 00435C10    rep movs    dword ptr [edi],dword ptr [esi]
 00435C12    mov         eax,dword ptr [ebp-8]
 00435C15    mov         dword ptr [ebp-58],eax
 00435C18    mov         eax,dword ptr [ebp-8]
 00435C1B    mov         dword ptr [ebp-40],eax
 00435C1E    lea         eax,[ebp-60]
 00435C21    push        eax
 00435C22    mov         eax,dword ptr [ebp-0C]
 00435C25    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00435C28    mov         eax,dword ptr [ebp-0C]
 00435C2B    mov         edx,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 00435C2E    mov         eax,dword ptr [ebp-4]
 00435C31    call        0043444C
 00435C36    mov         edx,dword ptr [ebp-4]
 00435C39    mov         eax,dword ptr [ebp-4]
 00435C3C    mov         ecx,dword ptr [eax]
 00435C3E    call        dword ptr [ecx+10];TBitmap.sub_0043455C
 00435C41    pop         edi
 00435C42    pop         esi
 00435C43    mov         esp,ebp
 00435C45    pop         ebp
 00435C46    ret
end;*}

//00435C48
{*procedure sub_00435C48(?:TBitmap; ?:?);
begin
 00435C48    push        ebp
 00435C49    mov         ebp,esp
 00435C4B    add         esp,0FFFFFF9C
 00435C4E    push        esi
 00435C4F    push        edi
 00435C50    mov         byte ptr [ebp-5],dl
 00435C53    mov         dword ptr [ebp-4],eax
 00435C56    mov         eax,dword ptr [ebp-4]
 00435C59    mov         eax,dword ptr [eax+28]
 00435C5C    mov         dword ptr [ebp-0C],eax
 00435C5F    mov         eax,dword ptr [ebp-0C]
 00435C62    add         eax,30
 00435C65    mov         dword ptr [ebp-10],eax
 00435C68    mov         eax,dword ptr [ebp-10]
 00435C6B    cmp         word ptr [eax+0C],1
>00435C70    jne         00435C7C
 00435C72    mov         eax,dword ptr [ebp-10]
 00435C75    cmp         word ptr [eax+0E],1
>00435C7A    je          00435C80
 00435C7C    xor         eax,eax
>00435C7E    jmp         00435C82
 00435C80    mov         al,1
 00435C82    cmp         al,byte ptr [ebp-5]
>00435C85    je          00435CEB
 00435C87    mov         eax,dword ptr [ebp-4]
 00435C8A    call        00434E00
 00435C8F    mov         eax,dword ptr [ebp-0C]
 00435C92    lea         esi,[eax+18]
 00435C95    lea         edi,[ebp-64]
 00435C98    mov         ecx,15
 00435C9D    rep movs    dword ptr [edi],dword ptr [esi]
 00435C9F    xor         eax,eax
 00435CA1    mov         dword ptr [ebp-4C],eax
 00435CA4    xor         eax,eax
 00435CA6    mov         al,byte ptr [ebp-5]
 00435CA9    mov         word ptr [ebp-40],ax
 00435CAD    xor         eax,eax
 00435CAF    mov         al,byte ptr [ebp-5]
 00435CB2    mov         word ptr [ebp-3E],ax
 00435CB6    xor         eax,eax
 00435CB8    mov         al,byte ptr [ebp-5]
 00435CBB    mov         word ptr [ebp-54],ax
 00435CBF    xor         eax,eax
 00435CC1    mov         al,byte ptr [ebp-5]
 00435CC4    mov         word ptr [ebp-52],ax
 00435CC8    lea         eax,[ebp-64]
 00435CCB    push        eax
 00435CCC    mov         eax,dword ptr [ebp-0C]
 00435CCF    mov         ecx,dword ptr [eax+10]
 00435CD2    mov         eax,dword ptr [ebp-0C]
 00435CD5    mov         edx,dword ptr [eax+8]
 00435CD8    mov         eax,dword ptr [ebp-4]
 00435CDB    call        0043444C
 00435CE0    mov         edx,dword ptr [ebp-4]
 00435CE3    mov         eax,dword ptr [ebp-4]
 00435CE6    mov         ecx,dword ptr [eax]
 00435CE8    call        dword ptr [ecx+10]
 00435CEB    pop         edi
 00435CEC    pop         esi
 00435CED    mov         esp,ebp
 00435CEF    pop         ebp
 00435CF0    ret
end;*}

//00435CF4
{*procedure sub_00435CF4(?:?);
begin
 00435CF4    push        ebp
 00435CF5    mov         ebp,esp
 00435CF7    add         esp,0FFFFFF9C
 00435CFA    push        ebx
 00435CFB    push        esi
 00435CFC    push        edi
 00435CFD    mov         dword ptr [ebp-8],edx
 00435D00    mov         dword ptr [ebp-4],eax
 00435D03    mov         eax,dword ptr [ebp-4]
 00435D06    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00435D09    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00435D0C    cmp         eax,dword ptr [ebp-8]
>00435D0F    je          00435DF9
 00435D15    mov         eax,dword ptr [ebp-4]
 00435D18    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00435D1B    mov         dword ptr [ebp-10],eax
 00435D1E    cmp         dword ptr [ebp-8],0
>00435D22    jne         00435D45
 00435D24    mov         eax,dword ptr [ebp-10]
 00435D27    cmp         dword ptr [eax+4],1;TBitmapImage...............FRefCount:Integer
>00435D2B    jne         00435D45
 00435D2D    mov         eax,dword ptr [ebp-10]
 00435D30    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00435D33    call        0042D164
 00435D38    mov         eax,dword ptr [ebp-10]
 00435D3B    xor         edx,edx
 00435D3D    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
>00435D40    jmp         00435DCD
 00435D45    mov         eax,dword ptr [ebp-4]
 00435D48    call        00434DE0
 00435D4D    mov         eax,dword ptr [ebp-4]
 00435D50    call        00434E00
 00435D55    mov         eax,dword ptr [ebp-10]
 00435D58    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 00435D5B    lea         edi,[ebp-64]
 00435D5E    mov         ecx,15
 00435D63    rep movs    dword ptr [edi],dword ptr [esi]
 00435D65    lea         eax,[ebp-64]
 00435D68    push        eax
 00435D69    push        0
 00435D6B    mov         eax,dword ptr [ebp-10]
 00435D6E    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00435D71    mov         eax,dword ptr [ebp-10]
 00435D74    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 00435D77    mov         ecx,dword ptr [ebp-8]
 00435D7A    call        00433964
 00435D7F    mov         dword ptr [ebp-0C],eax
 00435D82    xor         eax,eax
 00435D84    push        ebp
 00435D85    push        435DB5
 00435D8A    push        dword ptr fs:[eax]
 00435D8D    mov         dword ptr fs:[eax],esp
 00435D90    lea         eax,[ebp-64]
 00435D93    push        eax
 00435D94    mov         eax,dword ptr [ebp-10]
 00435D97    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 00435D9A    push        eax
 00435D9B    push        0
 00435D9D    mov         ecx,dword ptr [ebp-8]
 00435DA0    mov         edx,dword ptr [ebp-0C]
 00435DA3    mov         eax,dword ptr [ebp-4]
 00435DA6    call        004351A0
 00435DAB    xor         eax,eax
 00435DAD    pop         edx
 00435DAE    pop         ecx
 00435DAF    pop         ecx
 00435DB0    mov         dword ptr fs:[eax],edx
>00435DB3    jmp         00435DCD
>00435DB5    jmp         @HandleAnyException
 00435DBA    mov         eax,dword ptr [ebp-0C]
 00435DBD    push        eax
 00435DBE    call        gdi32.DeleteObject
 00435DC3    call        @RaiseAgain
 00435DC8    call        @DoneExcept
 00435DCD    mov         eax,dword ptr [ebp-4]
 00435DD0    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00435DD3    lea         ecx,[eax+18];TBitmapImage.FDIB:TDIBSection
 00435DD6    mov         eax,dword ptr [ebp-4]
 00435DD9    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00435DDC    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00435DDF    mov         edx,dword ptr [ebp-8]
 00435DE2    call        00433824
 00435DE7    mov         eax,dword ptr [ebp-4]
 00435DEA    mov         byte ptr [eax+22],1;TBitmap.FPaletteModified:Boolean
 00435DEE    mov         edx,dword ptr [ebp-4]
 00435DF1    mov         eax,dword ptr [ebp-4]
 00435DF4    mov         ecx,dword ptr [eax]
 00435DF6    call        dword ptr [ecx+10];TBitmap.sub_0043455C
 00435DF9    pop         edi
 00435DFA    pop         esi
 00435DFB    pop         ebx
 00435DFC    mov         esp,ebp
 00435DFE    pop         ebp
 00435DFF    ret
end;*}

//00435E00
{*procedure sub_00435E00(?:TBitmap; ?:?);
begin
 00435E00    push        ebp
 00435E01    mov         ebp,esp
 00435E03    add         esp,0FFFFFF98
 00435E06    push        esi
 00435E07    push        edi
 00435E08    mov         byte ptr [ebp-5],dl
 00435E0B    mov         dword ptr [ebp-4],eax
 00435E0E    mov         eax,dword ptr [ebp-4]
 00435E11    call        00434B34
 00435E16    cmp         al,byte ptr [ebp-5]
>00435E19    je          00435F70
 00435E1F    mov         al,byte ptr [ebp-5]
 00435E22    sub         al,1
>00435E24    jb          00435E2C
 00435E26    sub         al,7
>00435E28    je          00435E3B
>00435E2A    jmp         00435E4A
 00435E2C    mov         dl,1
 00435E2E    mov         eax,dword ptr [ebp-4]
 00435E31    mov         ecx,dword ptr [eax]
 00435E33    call        dword ptr [ecx+6C]
>00435E36    jmp         00435F70
 00435E3B    mov         eax,[0056E184];^SInvalidPixelFormat:TResStringRec
 00435E40    call        InvalidGraphic
>00435E45    jmp         00435F70
 00435E4A    lea         eax,[ebp-65]
 00435E4D    xor         ecx,ecx
 00435E4F    mov         edx,54
 00435E54    call        @FillChar
 00435E59    mov         eax,dword ptr [ebp-4]
 00435E5C    mov         eax,dword ptr [eax+28]
 00435E5F    lea         esi,[eax+18]
 00435E62    lea         edi,[ebp-65]
 00435E65    mov         ecx,6
 00435E6A    rep movs    dword ptr [edi],dword ptr [esi]
 00435E6C    mov         byte ptr [ebp-11],0
 00435E70    xor         eax,eax
 00435E72    mov         dword ptr [ebp-51],eax
 00435E75    mov         dword ptr [ebp-4D],28
 00435E7C    mov         eax,dword ptr [ebp-61]
 00435E7F    mov         dword ptr [ebp-49],eax
 00435E82    mov         eax,dword ptr [ebp-5D]
 00435E85    mov         dword ptr [ebp-45],eax
 00435E88    mov         word ptr [ebp-41],1
 00435E8E    xor         eax,eax
 00435E90    mov         al,byte ptr [ebp-5]
 00435E93    movzx       eax,byte ptr [eax+56C02B]
 00435E9A    mov         word ptr [ebp-3F],ax
 00435E9E    mov         eax,dword ptr [ebp-4]
 00435EA1    mov         eax,dword ptr [eax+28]
 00435EA4    mov         eax,dword ptr [eax+10]
 00435EA7    mov         dword ptr [ebp-0C],eax
 00435EAA    mov         al,byte ptr [ebp-5]
 00435EAD    sub         al,2
>00435EAF    je          00435EBB
 00435EB1    dec         al
>00435EB3    je          00435EC5
 00435EB5    sub         al,2
>00435EB7    je          00435EF1
>00435EB9    jmp         00435F0D
 00435EBB    mov         eax,[00571AB8];0x0 SystemPalette16:HPALETTE
 00435EC0    mov         dword ptr [ebp-0C],eax
>00435EC3    jmp         00435F0D
 00435EC5    push        0
 00435EC7    call        user32.GetDC
 00435ECC    call        0042FBD4
 00435ED1    mov         dword ptr [ebp-10],eax
 00435ED4    mov         eax,dword ptr [ebp-10]
 00435ED7    push        eax
 00435ED8    call        gdi32.CreateHalftonePalette
 00435EDD    mov         dword ptr [ebp-0C],eax
 00435EE0    mov         byte ptr [ebp-11],1
 00435EE4    mov         eax,dword ptr [ebp-10]
 00435EE7    push        eax
 00435EE8    push        0
 00435EEA    call        user32.ReleaseDC
>00435EEF    jmp         00435F0D
 00435EF1    mov         dword ptr [ebp-3D],3
 00435EF8    mov         dword ptr [ebp-25],0F800
 00435EFF    mov         dword ptr [ebp-21],7E0
 00435F06    mov         dword ptr [ebp-1D],1F
 00435F0D    xor         eax,eax
 00435F0F    push        ebp
 00435F10    push        435F5E
 00435F15    push        dword ptr fs:[eax]
 00435F18    mov         dword ptr fs:[eax],esp
 00435F1B    lea         eax,[ebp-65]
 00435F1E    push        eax
 00435F1F    mov         eax,dword ptr [ebp-4]
 00435F22    mov         edx,dword ptr [eax]
 00435F24    call        dword ptr [edx+64]
 00435F27    mov         edx,eax
 00435F29    mov         ecx,dword ptr [ebp-0C]
 00435F2C    mov         eax,dword ptr [ebp-4]
 00435F2F    call        0043444C
 00435F34    cmp         dword ptr [ebp-0C],0
 00435F38    setne       al
 00435F3B    mov         edx,dword ptr [ebp-4]
 00435F3E    mov         byte ptr [edx+22],al
 00435F41    xor         eax,eax
 00435F43    pop         edx
 00435F44    pop         ecx
 00435F45    pop         ecx
 00435F46    mov         dword ptr fs:[eax],edx
 00435F49    push        435F65
 00435F4E    cmp         byte ptr [ebp-11],0
>00435F52    je          00435F5D
 00435F54    mov         eax,dword ptr [ebp-0C]
 00435F57    push        eax
 00435F58    call        gdi32.DeleteObject
 00435F5D    ret
>00435F5E    jmp         @HandleFinally
>00435F63    jmp         00435F4E
 00435F65    mov         edx,dword ptr [ebp-4]
 00435F68    mov         eax,dword ptr [ebp-4]
 00435F6B    mov         ecx,dword ptr [eax]
 00435F6D    call        dword ptr [ecx+10]
 00435F70    pop         edi
 00435F71    pop         esi
 00435F72    mov         esp,ebp
 00435F74    pop         ebp
 00435F75    ret
end;*}

//00435F78
{*procedure sub_00435F78(?:TBitmap; ?:?);
begin
 00435F78    push        ebp
 00435F79    mov         ebp,esp
 00435F7B    add         esp,0FFFFFFF4
 00435F7E    mov         dword ptr [ebp-8],edx
 00435F81    mov         dword ptr [ebp-4],eax
 00435F84    mov         eax,dword ptr [ebp-8]
 00435F87    mov         edx,dword ptr [ebp-4]
 00435F8A    cmp         eax,dword ptr [edx+34]
>00435F8D    je          00435FF4
 00435F8F    cmp         dword ptr [ebp-8],20000000
>00435F96    jne         00435FA1
 00435F98    mov         eax,dword ptr [ebp-4]
 00435F9B    mov         byte ptr [eax+38],0
>00435F9F    jmp         00435FA8
 00435FA1    mov         eax,dword ptr [ebp-4]
 00435FA4    mov         byte ptr [eax+38],1
 00435FA8    mov         eax,dword ptr [ebp-8]
 00435FAB    mov         edx,dword ptr [ebp-4]
 00435FAE    mov         dword ptr [edx+34],eax
 00435FB1    mov         eax,dword ptr [ebp-4]
 00435FB4    mov         eax,dword ptr [eax+28]
 00435FB7    cmp         dword ptr [eax+4],1
>00435FBB    jle         00435FE9
 00435FBD    mov         eax,dword ptr [ebp-4]
 00435FC0    mov         eax,dword ptr [eax+28]
 00435FC3    mov         dword ptr [ebp-0C],eax
 00435FC6    mov         eax,dword ptr [ebp-4]
 00435FC9    call        00434E00
 00435FCE    mov         eax,dword ptr [ebp-0C]
 00435FD1    add         eax,18
 00435FD4    push        eax
 00435FD5    mov         eax,dword ptr [ebp-0C]
 00435FD8    mov         ecx,dword ptr [eax+10]
 00435FDB    mov         eax,dword ptr [ebp-0C]
 00435FDE    mov         edx,dword ptr [eax+8]
 00435FE1    mov         eax,dword ptr [ebp-4]
 00435FE4    call        0043444C
 00435FE9    mov         edx,dword ptr [ebp-4]
 00435FEC    mov         eax,dword ptr [ebp-4]
 00435FEF    mov         ecx,dword ptr [eax]
 00435FF1    call        dword ptr [ecx+10]
 00435FF4    mov         esp,ebp
 00435FF6    pop         ebp
 00435FF7    ret
end;*}

//00435FF8
{*procedure sub_00435FF8(?:?);
begin
 00435FF8    push        ebp
 00435FF9    mov         ebp,esp
 00435FFB    add         esp,0FFFFFFA0
 00435FFE    push        esi
 00435FFF    push        edi
 00436000    mov         dword ptr [ebp-8],edx
 00436003    mov         dword ptr [ebp-4],eax
 00436006    mov         eax,dword ptr [ebp-4]
 00436009    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0043600C    mov         dword ptr [ebp-0C],eax
 0043600F    mov         eax,dword ptr [ebp-0C]
 00436012    mov         eax,dword ptr [eax+1C]
 00436015    cmp         eax,dword ptr [ebp-8]
>00436018    je          00436061
 0043601A    mov         eax,dword ptr [ebp-4]
 0043601D    call        00434E00
 00436022    mov         eax,dword ptr [ebp-0C]
 00436025    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 00436028    lea         edi,[ebp-60]
 0043602B    mov         ecx,15
 00436030    rep movs    dword ptr [edi],dword ptr [esi]
 00436032    mov         eax,dword ptr [ebp-8]
 00436035    mov         dword ptr [ebp-5C],eax
 00436038    mov         eax,dword ptr [ebp-8]
 0043603B    mov         dword ptr [ebp-44],eax
 0043603E    lea         eax,[ebp-60]
 00436041    push        eax
 00436042    mov         eax,dword ptr [ebp-0C]
 00436045    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00436048    mov         eax,dword ptr [ebp-0C]
 0043604B    mov         edx,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0043604E    mov         eax,dword ptr [ebp-4]
 00436051    call        0043444C
 00436056    mov         edx,dword ptr [ebp-4]
 00436059    mov         eax,dword ptr [ebp-4]
 0043605C    mov         ecx,dword ptr [eax]
 0043605E    call        dword ptr [ecx+10];TBitmap.sub_0043455C
 00436061    pop         edi
 00436062    pop         esi
 00436063    mov         esp,ebp
 00436065    pop         ebp
 00436066    ret
end;*}

//00436068
{*procedure sub_00436068(?:?);
begin
 00436068    push        ebp
 00436069    mov         ebp,esp
 0043606B    add         esp,0FFFFFFF8
 0043606E    mov         dword ptr [ebp-8],edx
 00436071    mov         dword ptr [ebp-4],eax
 00436074    mov         cl,1
 00436076    mov         edx,dword ptr [ebp-8]
 00436079    mov         eax,dword ptr [ebp-4]
 0043607C    call        00436088
 00436081    pop         ecx
 00436082    pop         ecx
 00436083    pop         ebp
 00436084    ret
end;*}

//00436088
{*procedure sub_00436088(?:TBitmap; ?:?; ?:?);
begin
 00436088    push        ebp
 00436089    mov         ebp,esp
 0043608B    add         esp,0FFFFFBC0
 00436091    push        ebx
 00436092    mov         byte ptr [ebp-9],cl
 00436095    mov         dword ptr [ebp-8],edx
 00436098    mov         dword ptr [ebp-4],eax
 0043609B    lea         eax,[ebp-32]
 0043609E    xor         ecx,ecx
 004360A0    mov         edx,0E
 004360A5    call        @FillChar
 004360AA    mov         word ptr [ebp-32],4D42
 004360B0    mov         eax,dword ptr [ebp-4]
 004360B3    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 004360B6    cmp         dword ptr [eax+6C],0;TBitmapImage.FSaveStream:TMemoryStream
>004360BA    je          0043610A
 004360BC    mov         eax,dword ptr [ebp-4]
 004360BF    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 004360C2    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 004360C5    mov         edx,dword ptr [eax]
 004360C7    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004360C9    mov         dword ptr [ebp-10],eax
 004360CC    cmp         byte ptr [ebp-9],0
>004360D0    je          004360E2
 004360D2    lea         edx,[ebp-10]
 004360D5    mov         ecx,4
 004360DA    mov         eax,dword ptr [ebp-8]
 004360DD    call        TStream.WriteBuffer
 004360E2    mov         eax,dword ptr [ebp-4]
 004360E5    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 004360E8    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 004360EB    mov         edx,dword ptr [eax]
 004360ED    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004360EF    mov         ecx,eax
 004360F1    mov         eax,dword ptr [ebp-4]
 004360F4    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 004360F7    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 004360FA    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 004360FD    mov         eax,dword ptr [ebp-8]
 00436100    mov         ebx,dword ptr [eax]
 00436102    call        dword ptr [ebx+10]
>00436105    jmp         004363BC
 0043610A    mov         eax,dword ptr [ebp-4]
 0043610D    call        00434D0C
 00436112    mov         eax,dword ptr [ebp-4]
 00436115    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 00436118    mov         dword ptr [ebp-20],eax
 0043611B    xor         eax,eax
 0043611D    mov         dword ptr [ebp-10],eax
 00436120    mov         eax,dword ptr [ebp-20]
 00436123    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>00436127    je          00436277
 0043612D    mov         eax,dword ptr [ebp-20]
 00436130    mov         eax,dword ptr [eax+50]
 00436133    push        eax
 00436134    lea         ecx,[ebp-10]
 00436137    lea         edx,[ebp-18]
 0043613A    mov         eax,dword ptr [ebp-20]
 0043613D    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 00436140    call        00430C98
 00436145    mov         eax,dword ptr [ebp-20]
 00436148    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>0043614C    je          00436173
 0043614E    mov         dword ptr [ebp-18],0C
 00436155    mov         eax,dword ptr [ebp-20]
 00436158    cmp         word ptr [eax+3E],8
>0043615D    ja          00436173
 0043615F    mov         eax,dword ptr [ebp-20]
 00436162    mov         cx,word ptr [eax+3E]
 00436166    mov         eax,1
 0043616B    shl         eax,cl
 0043616D    lea         eax,[eax+eax*2]
 00436170    add         dword ptr [ebp-18],eax
 00436173    mov         eax,dword ptr [ebp-18]
 00436176    add         eax,0E
 00436179    add         dword ptr [ebp-10],eax
 0043617C    lea         eax,[ebp-32]
 0043617F    xor         ecx,ecx
 00436181    mov         edx,0E
 00436186    call        @FillChar
 0043618B    mov         word ptr [ebp-32],4D42
 00436191    mov         eax,dword ptr [ebp-4]
 00436194    call        0043498C
 00436199    mov         dl,byte ptr ds:[4363C4];0x1 gvar_004363C4
 0043619F    call        0042F7D4
 004361A4    mov         eax,dword ptr [ebp-20]
 004361A7    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 004361AA    push        eax
 004361AB    mov         eax,dword ptr [ebp-4]
 004361AE    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 004361B1    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 004361B4    push        eax
 004361B5    call        gdi32.SelectObject
 004361BA    call        0042FBD4
 004361BF    mov         dword ptr [ebp-1C],eax
 004361C2    lea         eax,[ebp-43E]
 004361C8    push        eax
 004361C9    push        100
 004361CE    push        0
 004361D0    mov         eax,dword ptr [ebp-4]
 004361D3    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 004361D6    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 004361D9    push        eax
 004361DA    call        gdi32.GetDIBColorTable
 004361DF    mov         dword ptr [ebp-14],eax
 004361E2    mov         eax,dword ptr [ebp-1C]
 004361E5    push        eax
 004361E6    mov         eax,dword ptr [ebp-4]
 004361E9    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 004361EC    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 004361EF    push        eax
 004361F0    call        gdi32.SelectObject
 004361F5    mov         eax,dword ptr [ebp-20]
 004361F8    cmp         dword ptr [eax+50],0
>004361FC    jbe         00436212
 004361FE    mov         eax,dword ptr [ebp-20]
 00436201    mov         eax,dword ptr [eax+50]
 00436204    cmp         eax,dword ptr [ebp-14]
>00436207    jae         00436212
 00436209    mov         eax,dword ptr [ebp-20]
 0043620C    mov         eax,dword ptr [eax+50]
 0043620F    mov         dword ptr [ebp-14],eax
 00436212    mov         eax,dword ptr [ebp-20]
 00436215    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>00436219    jne         00436268
 0043621B    cmp         dword ptr [ebp-14],0
>0043621F    jne         00436268
 00436221    mov         eax,dword ptr [ebp-20]
 00436224    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>00436228    je          00436268
 0043622A    mov         eax,dword ptr [ebp-20]
 0043622D    cmp         byte ptr [eax+71],0;TBitmapImage.FHalftone:Boolean
>00436231    jne         00436268
 00436233    lea         edx,[ebp-43E]
 00436239    mov         ecx,0FF
 0043623E    mov         eax,dword ptr [ebp-20]
 00436241    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 00436244    call        004304D8
 00436249    mov         dword ptr [ebp-14],eax
 0043624C    mov         eax,dword ptr [ebp-20]
 0043624F    cmp         word ptr [eax+3E],8
>00436254    jbe         00436268
 00436256    mov         eax,dword ptr [ebp-14]
 00436259    shl         eax,2
 0043625C    add         dword ptr [ebp-10],eax
 0043625F    mov         eax,dword ptr [ebp-14]
 00436262    shl         eax,2
 00436265    add         dword ptr [ebp-18],eax
 00436268    mov         eax,dword ptr [ebp-10]
 0043626B    mov         dword ptr [ebp-30],eax
 0043626E    mov         eax,dword ptr [ebp-18]
 00436271    add         eax,0E
 00436274    mov         dword ptr [ebp-28],eax
 00436277    cmp         byte ptr [ebp-9],0
>0043627B    je          0043628D
 0043627D    lea         edx,[ebp-10]
 00436280    mov         ecx,4
 00436285    mov         eax,dword ptr [ebp-8]
 00436288    call        TStream.WriteBuffer
 0043628D    cmp         dword ptr [ebp-10],0
>00436291    je          004363BC
 00436297    mov         eax,dword ptr [ebp-20]
 0043629A    add         eax,18;TBitmapImage.FDIB:TDIBSection
 0043629D    call        004338F4
 004362A2    cmp         dword ptr [ebp-14],0
>004362A6    je          004362DC
 004362A8    mov         eax,dword ptr [ebp-20]
 004362AB    cmp         dword ptr [eax+50],0
>004362AF    je          004362BC
 004362B1    mov         eax,dword ptr [ebp-20]
 004362B4    mov         eax,dword ptr [eax+50]
 004362B7    cmp         eax,dword ptr [ebp-14]
>004362BA    je          004362C5
 004362BC    mov         eax,dword ptr [ebp-14]
 004362BF    mov         edx,dword ptr [ebp-20]
 004362C2    mov         dword ptr [edx+50],eax
 004362C5    mov         eax,dword ptr [ebp-20]
 004362C8    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>004362CC    je          004362DC
 004362CE    lea         edx,[ebp-14]
 004362D1    lea         eax,[ebp-43E]
 004362D7    call        00430120
 004362DC    mov         eax,dword ptr [ebp-20]
 004362DF    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>004362E3    je          0043633E
 004362E5    mov         eax,dword ptr [ebp-20]
 004362E8    add         eax,30
 004362EB    mov         dword ptr [ebp-24],eax
 004362EE    mov         dword ptr [ebp-3E],0C
 004362F5    mov         eax,dword ptr [ebp-24]
 004362F8    mov         ax,word ptr [eax+4]
 004362FC    mov         word ptr [ebp-3A],ax
 00436300    mov         eax,dword ptr [ebp-24]
 00436303    mov         ax,word ptr [eax+8]
 00436307    mov         word ptr [ebp-38],ax
 0043630B    mov         word ptr [ebp-36],1
 00436311    mov         eax,dword ptr [ebp-24]
 00436314    mov         ax,word ptr [eax+0E]
 00436318    mov         word ptr [ebp-34],ax
 0043631C    lea         edx,[ebp-32]
 0043631F    mov         ecx,0E
 00436324    mov         eax,dword ptr [ebp-8]
 00436327    call        TStream.WriteBuffer
 0043632C    lea         edx,[ebp-3E]
 0043632F    mov         ecx,0C
 00436334    mov         eax,dword ptr [ebp-8]
 00436337    call        TStream.WriteBuffer
>0043633C    jmp         00436387
 0043633E    lea         edx,[ebp-32]
 00436341    mov         ecx,0E
 00436346    mov         eax,dword ptr [ebp-8]
 00436349    call        TStream.WriteBuffer
 0043634E    mov         eax,dword ptr [ebp-20]
 00436351    lea         edx,[eax+30]
 00436354    mov         ecx,28
 00436359    mov         eax,dword ptr [ebp-8]
 0043635C    call        TStream.WriteBuffer
 00436361    mov         eax,dword ptr [ebp-20]
 00436364    cmp         word ptr [eax+3E],8
>00436369    jbe         00436387
 0043636B    mov         eax,dword ptr [ebp-20]
 0043636E    test        byte ptr [eax+40],3
>00436372    je          00436387
 00436374    mov         eax,dword ptr [ebp-20]
 00436377    lea         edx,[eax+58]
 0043637A    mov         ecx,0C
 0043637F    mov         eax,dword ptr [ebp-8]
 00436382    call        TStream.WriteBuffer
 00436387    mov         eax,dword ptr [ebp-20]
 0043638A    movzx       eax,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 0043638E    xor         ecx,ecx
 00436390    mov         cl,byte ptr [eax+56C034]
 00436396    imul        ecx,dword ptr [ebp-14]
 0043639A    lea         edx,[ebp-43E]
 004363A0    mov         eax,dword ptr [ebp-8]
 004363A3    call        TStream.WriteBuffer
 004363A8    mov         eax,dword ptr [ebp-20]
 004363AB    mov         edx,dword ptr [eax+2C]
 004363AE    mov         eax,dword ptr [ebp-20]
 004363B1    mov         ecx,dword ptr [eax+44]
 004363B4    mov         eax,dword ptr [ebp-8]
 004363B7    call        TStream.WriteBuffer
 004363BC    pop         ebx
 004363BD    mov         esp,ebp
 004363BF    pop         ebp
 004363C0    ret
end;*}

//004363C8
{*function sub_004363C8(?:TBitmap):?;
begin
 004363C8    push        ebp
 004363C9    mov         ebp,esp
 004363CB    add         esp,0FFFFFFF4
 004363CE    mov         dword ptr [ebp-4],eax
 004363D1    mov         eax,dword ptr [ebp-4]
 004363D4    call        00434E00
 004363D9    mov         edx,dword ptr [ebp-4]
 004363DC    mov         eax,dword ptr [ebp-4]
 004363DF    call        00434520
 004363E4    mov         eax,dword ptr [ebp-4]
 004363E7    mov         eax,dword ptr [eax+28]
 004363EA    mov         dword ptr [ebp-0C],eax
 004363ED    mov         eax,dword ptr [ebp-0C]
 004363F0    mov         eax,dword ptr [eax+8]
 004363F3    mov         dword ptr [ebp-8],eax
 004363F6    mov         eax,dword ptr [ebp-0C]
 004363F9    mov         eax,dword ptr [eax+8]
 004363FC    mov         edx,dword ptr [ebp-0C]
 004363FF    cmp         eax,dword ptr [edx+14]
>00436402    jne         00436414
 00436404    mov         eax,dword ptr [ebp-0C]
 00436407    xor         edx,edx
 00436409    mov         dword ptr [eax+14],edx
 0043640C    mov         eax,dword ptr [ebp-0C]
 0043640F    xor         edx,edx
 00436411    mov         dword ptr [eax+2C],edx
 00436414    mov         eax,dword ptr [ebp-0C]
 00436417    xor         edx,edx
 00436419    mov         dword ptr [eax+8],edx
 0043641C    mov         eax,dword ptr [ebp-8]
 0043641F    mov         esp,ebp
 00436421    pop         ebp
 00436422    ret
end;*}

//00436424
{*procedure sub_00436424(?:?);
begin
 00436424    push        ebp
 00436425    mov         ebp,esp
 00436427    add         esp,0FFFFFFF8
 0043642A    mov         dword ptr [ebp-8],edx
 0043642D    mov         dword ptr [ebp-4],eax
 00436430    xor         ecx,ecx
 00436432    mov         edx,dword ptr [ebp-8]
 00436435    mov         eax,dword ptr [ebp-4]
 00436438    call        00436088
 0043643D    pop         ecx
 0043643E    pop         ecx
 0043643F    pop         ebp
 00436440    ret
end;*}

//00436444
{*procedure sub_00436444(?:?; ?:?; ?:?);
begin
 00436444    push        ebp
 00436445    mov         ebp,esp
 00436447    add         esp,0FFFFFF9C
 0043644A    push        ebx
 0043644B    push        esi
 0043644C    push        edi
 0043644D    mov         dword ptr [ebp-0C],ecx
 00436450    mov         dword ptr [ebp-8],edx
 00436453    mov         dword ptr [ebp-4],eax
 00436456    mov         eax,dword ptr [ebp-8]
 00436459    mov         word ptr [eax],2
 0043645E    mov         eax,dword ptr [ebp-4]
 00436461    call        00434E00
 00436466    mov         eax,dword ptr [ebp-4]
 00436469    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0043646C    mov         dword ptr [ebp-10],eax
 0043646F    mov         eax,dword ptr [ebp-10]
 00436472    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 00436475    lea         edi,[ebp-64]
 00436478    mov         ecx,15
 0043647D    rep movs    dword ptr [edi],dword ptr [esi]
 0043647F    xor         eax,eax
 00436481    mov         dword ptr [ebp-4C],eax
 00436484    xor         eax,eax
 00436486    mov         dword ptr [ebp-50],eax
 00436489    lea         eax,[ebp-64]
 0043648C    push        eax
 0043648D    mov         eax,dword ptr [ebp-4]
 00436490    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 00436493    push        eax
 00436494    mov         eax,dword ptr [ebp-10]
 00436497    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0043649A    mov         eax,dword ptr [ebp-10]
 0043649D    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 004364A0    mov         eax,dword ptr [ebp-10]
 004364A3    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 004364A6    call        00433964
 004364AB    mov         edx,dword ptr [ebp-0C]
 004364AE    mov         dword ptr [edx],eax
 004364B0    xor         eax,eax
 004364B2    push        ebp
 004364B3    push        4364DB
 004364B8    push        dword ptr fs:[eax]
 004364BB    mov         dword ptr fs:[eax],esp
 004364BE    mov         eax,dword ptr [ebp-4]
 004364C1    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 004364C4    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 004364C7    call        00433FD4
 004364CC    mov         edx,dword ptr [ebp+8]
 004364CF    mov         dword ptr [edx],eax
 004364D1    xor         eax,eax
 004364D3    pop         edx
 004364D4    pop         ecx
 004364D5    pop         ecx
 004364D6    mov         dword ptr fs:[eax],edx
>004364D9    jmp         004364F5
>004364DB    jmp         @HandleAnyException
 004364E0    mov         eax,dword ptr [ebp-0C]
 004364E3    mov         eax,dword ptr [eax]
 004364E5    push        eax
 004364E6    call        gdi32.DeleteObject
 004364EB    call        @RaiseAgain
 004364F0    call        @DoneExcept
 004364F5    pop         edi
 004364F6    pop         esi
 004364F7    pop         ebx
 004364F8    mov         esp,ebp
 004364FA    pop         ebp
 004364FB    ret         4
end;*}

//00436500
destructor TIconImage.Destroy;
begin
{*
 00436500    push        ebp
 00436501    mov         ebp,esp
 00436503    add         esp,0FFFFFFF8
 00436506    call        @BeforeDestruction
 0043650B    mov         byte ptr [ebp-5],dl
 0043650E    mov         dword ptr [ebp-4],eax
 00436511    mov         eax,dword ptr [ebp-4]
 00436514    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 00436517    call        TObject.Free
 0043651C    mov         dl,byte ptr [ebp-5]
 0043651F    and         dl,0FC
 00436522    mov         eax,dword ptr [ebp-4]
 00436525    call        TObject.Destroy
 0043652A    cmp         byte ptr [ebp-5],0
>0043652E    jle         00436538
 00436530    mov         eax,dword ptr [ebp-4]
 00436533    call        @ClassDestroy
 00436538    pop         ecx
 00436539    pop         ecx
 0043653A    pop         ebp
 0043653B    ret
*}
end;

//0043653C
procedure sub_0043653C;
begin
{*
 0043653C    push        ebp
 0043653D    mov         ebp,esp
 0043653F    push        ecx
 00436540    mov         dword ptr [ebp-4],eax
 00436543    mov         eax,dword ptr [ebp-4]
 00436546    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>0043654A    je          00436558
 0043654C    mov         eax,dword ptr [ebp-4]
 0043654F    mov         eax,dword ptr [eax+8];TIconImage.FHandle:HICON
 00436552    push        eax
 00436553    call        user32.DestroyCursor
 00436558    mov         eax,dword ptr [ebp-4]
 0043655B    xor         edx,edx
 0043655D    mov         dword ptr [eax+8],edx;TIconImage.FHandle:HICON
 00436560    pop         ecx
 00436561    pop         ebp
 00436562    ret
*}
end;

//00436564
constructor TIcon.Create;
begin
{*
 00436564    push        ebp
 00436565    mov         ebp,esp
 00436567    add         esp,0FFFFFFF8
 0043656A    test        dl,dl
>0043656C    je          00436576
 0043656E    add         esp,0FFFFFFF0
 00436571    call        @ClassCreate
 00436576    mov         byte ptr [ebp-5],dl
 00436579    mov         dword ptr [ebp-4],eax
 0043657C    xor         edx,edx
 0043657E    mov         eax,dword ptr [ebp-4]
 00436581    call        0043105C
 00436586    mov         eax,dword ptr [ebp-4]
 00436589    mov         byte ptr [eax+21],1;TIcon.FTransparent:Boolean
 0043658D    mov         dl,1
 0043658F    mov         eax,[0042D030];TIconImage
 00436594    call        TObject.Create;TIconImage.Create
 00436599    mov         edx,dword ptr [ebp-4]
 0043659C    mov         dword ptr [edx+28],eax;TIcon.FImage:TIconImage
 0043659F    mov         eax,dword ptr [ebp-4]
 004365A2    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 004365A5    call        004336E8
 004365AA    mov         eax,dword ptr [ebp-4]
 004365AD    cmp         byte ptr [ebp-5],0
>004365B1    je          004365C2
 004365B3    call        @AfterConstruction
 004365B8    pop         dword ptr fs:[0]
 004365BF    add         esp,0C
 004365C2    mov         eax,dword ptr [ebp-4]
 004365C5    pop         ecx
 004365C6    pop         ecx
 004365C7    pop         ebp
 004365C8    ret
*}
end;

//004365CC
destructor TIcon.Destroy;
begin
{*
 004365CC    push        ebp
 004365CD    mov         ebp,esp
 004365CF    add         esp,0FFFFFFF8
 004365D2    call        @BeforeDestruction
 004365D7    mov         byte ptr [ebp-5],dl
 004365DA    mov         dword ptr [ebp-4],eax
 004365DD    mov         eax,dword ptr [ebp-4]
 004365E0    mov         eax,dword ptr [eax+28]
 004365E3    call        004336F8
 004365E8    mov         dl,byte ptr [ebp-5]
 004365EB    and         dl,0FC
 004365EE    mov         eax,dword ptr [ebp-4]
 004365F1    call        TPersistent.Destroy
 004365F6    cmp         byte ptr [ebp-5],0
>004365FA    jle         00436604
 004365FC    mov         eax,dword ptr [ebp-4]
 004365FF    call        @ClassDestroy
 00436604    pop         ecx
 00436605    pop         ecx
 00436606    pop         ebp
 00436607    ret
*}
end;

//00436608
{*procedure sub_00436608(?:?);
begin
 00436608    push        ebp
 00436609    mov         ebp,esp
 0043660B    add         esp,0FFFFFFF8
 0043660E    mov         dword ptr [ebp-8],edx
 00436611    mov         dword ptr [ebp-4],eax
 00436614    cmp         dword ptr [ebp-8],0
>00436618    je          0043662C
 0043661A    mov         eax,dword ptr [ebp-8]
 0043661D    mov         edx,dword ptr ds:[42D08C];TIcon
 00436623    call        @IsClass
 00436628    test        al,al
>0043662A    je          0043666F
 0043662C    cmp         dword ptr [ebp-8],0
>00436630    je          00436656
 00436632    mov         eax,dword ptr [ebp-8]
 00436635    mov         eax,dword ptr [eax+28]
 00436638    call        004336E8
 0043663D    mov         eax,dword ptr [ebp-4]
 00436640    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 00436643    call        004336F8
 00436648    mov         eax,dword ptr [ebp-8]
 0043664B    mov         eax,dword ptr [eax+28]
 0043664E    mov         edx,dword ptr [ebp-4]
 00436651    mov         dword ptr [edx+28],eax;TIcon.FImage:TIconImage
>00436654    jmp         00436662
 00436656    xor         ecx,ecx
 00436658    xor         edx,edx
 0043665A    mov         eax,dword ptr [ebp-4]
 0043665D    call        0043699C
 00436662    mov         edx,dword ptr [ebp-4]
 00436665    mov         eax,dword ptr [ebp-4]
 00436668    mov         ecx,dword ptr [eax]
 0043666A    call        dword ptr [ecx+10];TIcon.sub_004310A0
>0043666D    jmp         0043667A
 0043666F    mov         edx,dword ptr [ebp-8]
 00436672    mov         eax,dword ptr [ebp-4]
 00436675    call        00420AD4
 0043667A    pop         ecx
 0043667B    pop         ecx
 0043667C    pop         ebp
 0043667D    ret
end;*}

//00436680
{*procedure sub_00436680(?:?; ?:?);
begin
 00436680    push        ebp
 00436681    mov         ebp,esp
 00436683    add         esp,0FFFFFFF4
 00436686    mov         dword ptr [ebp-0C],ecx
 00436689    mov         dword ptr [ebp-8],edx
 0043668C    mov         dword ptr [ebp-4],eax
 0043668F    mov         dl,byte ptr ds:[4366D0];0x1 gvar_004366D0
 00436695    mov         eax,dword ptr [ebp-8]
 00436698    call        0042F7D4
 0043669D    push        3
 0043669F    push        0
 004366A1    push        0
 004366A3    push        0
 004366A5    push        0
 004366A7    mov         eax,dword ptr [ebp-4]
 004366AA    call        00436708
 004366AF    push        eax
 004366B0    mov         eax,dword ptr [ebp-0C]
 004366B3    mov         eax,dword ptr [eax+4]
 004366B6    push        eax
 004366B7    mov         eax,dword ptr [ebp-0C]
 004366BA    mov         eax,dword ptr [eax]
 004366BC    push        eax
 004366BD    mov         eax,dword ptr [ebp-8]
 004366C0    mov         eax,dword ptr [eax+4]
 004366C3    push        eax
 004366C4    call        user32.DrawIconEx
 004366C9    mov         esp,ebp
 004366CB    pop         ebp
 004366CC    ret
end;*}

//004366D4
{*function sub_004366D4:?;
begin
 004366D4    push        ebp
 004366D5    mov         ebp,esp
 004366D7    add         esp,0FFFFFFF4
 004366DA    mov         dword ptr [ebp-4],eax
 004366DD    mov         eax,dword ptr [ebp-4]
 004366E0    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 004366E3    mov         dword ptr [ebp-0C],eax
 004366E6    mov         eax,dword ptr [ebp-0C]
 004366E9    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>004366ED    jne         004366F8
 004366EF    mov         eax,dword ptr [ebp-0C]
 004366F2    cmp         dword ptr [eax+0C],0;TIconImage.FMemoryImage:TCustomMemoryStream
>004366F6    je          004366FC
 004366F8    xor         eax,eax
>004366FA    jmp         004366FE
 004366FC    mov         al,1
 004366FE    mov         byte ptr [ebp-5],al
 00436701    mov         al,byte ptr [ebp-5]
 00436704    mov         esp,ebp
 00436706    pop         ebp
 00436707    ret
end;*}

//00436708
{*function sub_00436708(?:TIcon):?;
begin
 00436708    push        ebp
 00436709    mov         ebp,esp
 0043670B    add         esp,0FFFFFFF8
 0043670E    mov         dword ptr [ebp-4],eax
 00436711    mov         eax,dword ptr [ebp-4]
 00436714    call        00436784
 00436719    mov         eax,dword ptr [ebp-4]
 0043671C    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0043671F    mov         eax,dword ptr [eax+8];TIconImage.FHandle:HICON
 00436722    mov         dword ptr [ebp-8],eax
 00436725    mov         eax,dword ptr [ebp-8]
 00436728    pop         ecx
 00436729    pop         ecx
 0043672A    pop         ebp
 0043672B    ret
end;*}

//0043672C
{*function sub_0043672C:?;
begin
 0043672C    push        ebp
 0043672D    mov         ebp,esp
 0043672F    add         esp,0FFFFFFF8
 00436732    mov         dword ptr [ebp-4],eax
 00436735    mov         eax,dword ptr [ebp-4]
 00436738    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0043673B    mov         eax,dword ptr [eax+14]
 0043673E    mov         dword ptr [ebp-8],eax
 00436741    cmp         dword ptr [ebp-8],0
>00436745    jne         00436751
 00436747    push        0C
 00436749    call        user32.GetSystemMetrics
 0043674E    mov         dword ptr [ebp-8],eax
 00436751    mov         eax,dword ptr [ebp-8]
 00436754    pop         ecx
 00436755    pop         ecx
 00436756    pop         ebp
 00436757    ret
end;*}

//00436758
{*function sub_00436758:?;
begin
 00436758    push        ebp
 00436759    mov         ebp,esp
 0043675B    add         esp,0FFFFFFF8
 0043675E    mov         dword ptr [ebp-4],eax
 00436761    mov         eax,dword ptr [ebp-4]
 00436764    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 00436767    mov         eax,dword ptr [eax+10];TIconImage.FSize:TPoint
 0043676A    mov         dword ptr [ebp-8],eax
 0043676D    cmp         dword ptr [ebp-8],0
>00436771    jne         0043677D
 00436773    push        0B
 00436775    call        user32.GetSystemMetrics
 0043677A    mov         dword ptr [ebp-8],eax
 0043677D    mov         eax,dword ptr [ebp-8]
 00436780    pop         ecx
 00436781    pop         ecx
 00436782    pop         ebp
 00436783    ret
end;*}

//00436784
procedure sub_00436784(?:TIcon);
begin
{*
 00436784    push        ebp
 00436785    mov         ebp,esp
 00436787    add         esp,0FFFFFFEC
 0043678A    mov         dword ptr [ebp-4],eax
 0043678D    mov         eax,dword ptr [ebp-4]
 00436790    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 00436793    mov         dword ptr [ebp-14],eax
 00436796    mov         eax,dword ptr [ebp-14]
 00436799    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>0043679D    jne         00436814
 0043679F    mov         eax,dword ptr [ebp-14]
 004367A2    cmp         dword ptr [eax+0C],0;TIconImage.FMemoryImage:TCustomMemoryStream
>004367A6    je          00436814
 004367A8    push        0
 004367AA    push        0
 004367AC    mov         eax,dword ptr [ebp-14]
 004367AF    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 004367B2    call        TStream.SetPosition
 004367B7    lea         edx,[ebp-0A]
 004367BA    mov         ecx,6
 004367BF    mov         eax,dword ptr [ebp-14]
 004367C2    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 004367C5    call        TStream.ReadBuffer
 004367CA    mov         ax,word ptr [ebp-8]
 004367CE    sub         ax,1
>004367D2    jb          004367D8
>004367D4    je          004367E2
>004367D6    jmp         00436806
 004367D8    mov         eax,[00571AD0];0x0 StockIcon:HICON
 004367DD    mov         dword ptr [ebp-10],eax
>004367E0    jmp         0043680B
 004367E2    push        6
 004367E4    mov         eax,dword ptr [ebp-4]
 004367E7    add         eax,2C;TIcon.FRequestedSize:TPoint
 004367EA    push        eax
 004367EB    mov         eax,dword ptr [ebp-14]
 004367EE    add         eax,10;TIconImage.FSize:TPoint
 004367F1    push        eax
 004367F2    movzx       ecx,word ptr [ebp-6]
 004367F6    lea         edx,[ebp-10]
 004367F9    mov         eax,dword ptr [ebp-14]
 004367FC    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 004367FF    call        004307D8
>00436804    jmp         0043680B
 00436806    call        InvalidIcon
 0043680B    mov         eax,dword ptr [ebp-10]
 0043680E    mov         edx,dword ptr [ebp-14]
 00436811    mov         dword ptr [edx+8],eax;TIconImage.FHandle:HICON
 00436814    mov         esp,ebp
 00436816    pop         ebp
 00436817    ret
*}
end;

//00436818
procedure sub_00436818(?:TIcon);
begin
{*
 00436818    push        ebp
 00436819    mov         ebp,esp
 0043681B    add         esp,0FFFFFFEC
 0043681E    push        ebx
 0043681F    push        esi
 00436820    push        edi
 00436821    mov         dword ptr [ebp-4],eax
 00436824    mov         eax,dword ptr [ebp-4]
 00436827    mov         eax,dword ptr [eax+28]
 0043682A    mov         dword ptr [ebp-14],eax
 0043682D    mov         eax,dword ptr [ebp-14]
 00436830    cmp         dword ptr [eax+0C],0
>00436834    jne         004368D4
 0043683A    mov         eax,dword ptr [ebp-14]
 0043683D    cmp         dword ptr [eax+8],0
>00436841    jne         00436848
 00436843    call        InvalidIcon
 00436848    mov         dl,1
 0043684A    mov         eax,[0041DE14];TMemoryStream
 0043684F    call        TObject.Create;TMemoryStream.Create
 00436854    mov         dword ptr [ebp-8],eax
 00436857    xor         eax,eax
 00436859    push        ebp
 0043685A    push        4368B4
 0043685F    push        dword ptr fs:[eax]
 00436862    mov         dword ptr fs:[eax],esp
 00436865    mov         eax,dword ptr [ebp-4]
 00436868    call        00436708
 0043686D    cmp         eax,dword ptr ds:[571AD0];0x0 StockIcon:HICON
>00436873    jne         00436896
 00436875    lea         eax,[ebp-0E]
 00436878    xor         ecx,ecx
 0043687A    mov         edx,6
 0043687F    call        @FillChar
 00436884    lea         edx,[ebp-0E]
 00436887    mov         ecx,6
 0043688C    mov         eax,dword ptr [ebp-8]
 0043688F    call        TStream.WriteBuffer
>00436894    jmp         004368AA
 00436896    mov         eax,dword ptr [ebp-4]
 00436899    call        00436708
 0043689E    mov         edx,eax
 004368A0    xor         ecx,ecx
 004368A2    mov         eax,dword ptr [ebp-8]
 004368A5    call        00430E40
 004368AA    xor         eax,eax
 004368AC    pop         edx
 004368AD    pop         ecx
 004368AE    pop         ecx
 004368AF    mov         dword ptr fs:[eax],edx
>004368B2    jmp         004368CB
>004368B4    jmp         @HandleAnyException
 004368B9    mov         eax,dword ptr [ebp-8]
 004368BC    call        TObject.Free
 004368C1    call        @RaiseAgain
 004368C6    call        @DoneExcept
 004368CB    mov         eax,dword ptr [ebp-14]
 004368CE    mov         edx,dword ptr [ebp-8]
 004368D1    mov         dword ptr [eax+0C],edx
 004368D4    pop         edi
 004368D5    pop         esi
 004368D6    pop         ebx
 004368D7    mov         esp,ebp
 004368D9    pop         ebp
 004368DA    ret
*}
end;

//004368DC
{*procedure sub_004368DC(?:?);
begin
 004368DC    push        ebp
 004368DD    mov         ebp,esp
 004368DF    add         esp,0FFFFFFEC
 004368E2    push        ebx
 004368E3    push        esi
 004368E4    push        edi
 004368E5    mov         dword ptr [ebp-8],edx
 004368E8    mov         dword ptr [ebp-4],eax
 004368EB    mov         dl,1
 004368ED    mov         eax,[0041DE14];TMemoryStream
 004368F2    call        TObject.Create;TMemoryStream.Create
 004368F7    mov         dword ptr [ebp-0C],eax
 004368FA    xor         eax,eax
 004368FC    push        ebp
 004368FD    push        436970
 00436902    push        dword ptr fs:[eax]
 00436905    mov         dword ptr fs:[eax],esp
 00436908    mov         eax,dword ptr [ebp-8]
 0043690B    mov         edx,dword ptr [eax]
 0043690D    call        dword ptr [edx]
 0043690F    push        eax
 00436910    mov         eax,dword ptr [ebp-8]
 00436913    call        TStream.GetPosition
 00436918    pop         edx
 00436919    sub         edx,eax
 0043691B    mov         eax,dword ptr [ebp-0C]
 0043691E    mov         ecx,dword ptr [eax]
 00436920    call        dword ptr [ecx+4];TMemoryStream.sub_0042401C
 00436923    mov         eax,dword ptr [ebp-0C]
 00436926    mov         edx,dword ptr [eax]
 00436928    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0043692A    mov         ecx,eax
 0043692C    mov         eax,dword ptr [ebp-0C]
 0043692F    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00436932    mov         eax,dword ptr [ebp-8]
 00436935    call        TStream.ReadBuffer
 0043693A    lea         edx,[ebp-12]
 0043693D    mov         ecx,6
 00436942    mov         eax,dword ptr [ebp-0C]
 00436945    call        TStream.ReadBuffer
 0043694A    mov         ax,word ptr [ebp-10]
 0043694E    sub         ax,2
>00436952    jb          00436959
 00436954    call        InvalidIcon
 00436959    mov         ecx,dword ptr [ebp-0C]
 0043695C    xor         edx,edx
 0043695E    mov         eax,dword ptr [ebp-4]
 00436961    call        0043699C
 00436966    xor         eax,eax
 00436968    pop         edx
 00436969    pop         ecx
 0043696A    pop         ecx
 0043696B    mov         dword ptr fs:[eax],edx
>0043696E    jmp         00436987
>00436970    jmp         @HandleAnyException
 00436975    mov         eax,dword ptr [ebp-0C]
 00436978    call        TObject.Free
 0043697D    call        @RaiseAgain
 00436982    call        @DoneExcept
 00436987    mov         edx,dword ptr [ebp-4]
 0043698A    mov         eax,dword ptr [ebp-4]
 0043698D    mov         ecx,dword ptr [eax]
 0043698F    call        dword ptr [ecx+10];TIcon.sub_004310A0
 00436992    pop         edi
 00436993    pop         esi
 00436994    pop         ebx
 00436995    mov         esp,ebp
 00436997    pop         ebp
 00436998    ret
end;*}

//0043699C
{*procedure sub_0043699C(?:TIcon; ?:?; ?:TMemoryStream);
begin
 0043699C    push        ebp
 0043699D    mov         ebp,esp
 0043699F    add         esp,0FFFFFFF0
 004369A2    push        ebx
 004369A3    push        esi
 004369A4    push        edi
 004369A5    mov         dword ptr [ebp-0C],ecx
 004369A8    mov         dword ptr [ebp-8],edx
 004369AB    mov         dword ptr [ebp-4],eax
 004369AE    mov         dl,1
 004369B0    mov         eax,[0042D030];TIconImage
 004369B5    call        TObject.Create;TIconImage.Create
 004369BA    mov         dword ptr [ebp-10],eax
 004369BD    xor         eax,eax
 004369BF    push        ebp
 004369C0    push        4369E7
 004369C5    push        dword ptr fs:[eax]
 004369C8    mov         dword ptr fs:[eax],esp
 004369CB    mov         eax,dword ptr [ebp-10]
 004369CE    mov         edx,dword ptr [ebp-8]
 004369D1    mov         dword ptr [eax+8],edx;TIconImage.FHandle:HICON
 004369D4    mov         eax,dword ptr [ebp-10]
 004369D7    mov         edx,dword ptr [ebp-0C]
 004369DA    mov         dword ptr [eax+0C],edx;TIconImage.FMemoryImage:TCustomMemoryStream
 004369DD    xor         eax,eax
 004369DF    pop         edx
 004369E0    pop         ecx
 004369E1    pop         ecx
 004369E2    mov         dword ptr fs:[eax],edx
>004369E5    jmp         004369FE
>004369E7    jmp         @HandleAnyException
 004369EC    mov         eax,dword ptr [ebp-10]
 004369EF    call        TObject.Free
 004369F4    call        @RaiseAgain
 004369F9    call        @DoneExcept
 004369FE    mov         eax,dword ptr [ebp-10]
 00436A01    call        004336E8
 00436A06    mov         eax,dword ptr [ebp-4]
 00436A09    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 00436A0C    call        004336F8
 00436A11    mov         eax,dword ptr [ebp-4]
 00436A14    mov         edx,dword ptr [ebp-10]
 00436A17    mov         dword ptr [eax+28],edx;TIcon.FImage:TIconImage
 00436A1A    pop         edi
 00436A1B    pop         esi
 00436A1C    pop         ebx
 00436A1D    mov         esp,ebp
 00436A1F    pop         ebp
 00436A20    ret
end;*}

//00436A24
procedure sub_00436A24(?:TIcon; ?:HICON);
begin
{*
 00436A24    push        ebp
 00436A25    mov         ebp,esp
 00436A27    add         esp,0FFFFFFF8
 00436A2A    mov         dword ptr [ebp-8],edx
 00436A2D    mov         dword ptr [ebp-4],eax
 00436A30    xor         ecx,ecx
 00436A32    mov         edx,dword ptr [ebp-8]
 00436A35    mov         eax,dword ptr [ebp-4]
 00436A38    call        0043699C
 00436A3D    mov         edx,dword ptr [ebp-4]
 00436A40    mov         eax,dword ptr [ebp-4]
 00436A43    mov         ecx,dword ptr [eax]
 00436A45    call        dword ptr [ecx+10]
 00436A48    pop         ecx
 00436A49    pop         ecx
 00436A4A    pop         ebp
 00436A4B    ret
*}
end;

//00436A4C
{*procedure sub_00436A4C(?:?);
begin
 00436A4C    push        ebp
 00436A4D    mov         ebp,esp
 00436A4F    add         esp,0FFFFFFF8
 00436A52    mov         dword ptr [ebp-8],edx
 00436A55    mov         dword ptr [ebp-4],eax
 00436A58    mov         eax,dword ptr [ebp-4]
 00436A5B    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 00436A5E    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>00436A62    jne         00436A6F
 00436A64    mov         eax,dword ptr [ebp-8]
 00436A67    mov         edx,dword ptr [ebp-4]
 00436A6A    mov         dword ptr [edx+30],eax
>00436A6D    jmp         00436A79
 00436A6F    mov         eax,[0056E154];^SChangeIconSize:TResStringRec
 00436A74    call        0042FA70
 00436A79    pop         ecx
 00436A7A    pop         ecx
 00436A7B    pop         ebp
 00436A7C    ret
end;*}

//00436A80
{*procedure sub_00436A80(?:?);
begin
 00436A80    push        ebp
 00436A81    mov         ebp,esp
 00436A83    add         esp,0FFFFFFF8
 00436A86    mov         byte ptr [ebp-5],dl
 00436A89    mov         dword ptr [ebp-4],eax
 00436A8C    pop         ecx
 00436A8D    pop         ecx
 00436A8E    pop         ebp
 00436A8F    ret
end;*}

//00436A90
{*procedure sub_00436A90(?:?);
begin
 00436A90    push        ebp
 00436A91    mov         ebp,esp
 00436A93    add         esp,0FFFFFFF8
 00436A96    mov         dword ptr [ebp-8],edx
 00436A99    mov         dword ptr [ebp-4],eax
 00436A9C    mov         eax,dword ptr [ebp-4]
 00436A9F    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 00436AA2    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>00436AA6    jne         00436AB3
 00436AA8    mov         eax,dword ptr [ebp-8]
 00436AAB    mov         edx,dword ptr [ebp-4]
 00436AAE    mov         dword ptr [edx+2C],eax;TIcon.FRequestedSize:TPoint
>00436AB1    jmp         00436ABD
 00436AB3    mov         eax,[0056E154];^SChangeIconSize:TResStringRec
 00436AB8    call        0042FA70
 00436ABD    pop         ecx
 00436ABE    pop         ecx
 00436ABF    pop         ebp
 00436AC0    ret
end;*}

//00436AC4
{*procedure sub_00436AC4(?:?);
begin
 00436AC4    push        ebp
 00436AC5    mov         ebp,esp
 00436AC7    add         esp,0FFFFFFF4
 00436ACA    mov         dword ptr [ebp-8],edx
 00436ACD    mov         dword ptr [ebp-4],eax
 00436AD0    mov         eax,dword ptr [ebp-4]
 00436AD3    call        00436818
 00436AD8    mov         eax,dword ptr [ebp-4]
 00436ADB    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 00436ADE    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 00436AE1    mov         dword ptr [ebp-0C],eax
 00436AE4    mov         eax,dword ptr [ebp-0C]
 00436AE7    mov         edx,dword ptr [eax]
 00436AE9    call        dword ptr [edx];TCustomMemoryStream.sub_004235A0
 00436AEB    mov         ecx,eax
 00436AED    mov         eax,dword ptr [ebp-0C]
 00436AF0    mov         edx,dword ptr [eax+4];TCustomMemoryStream.FMemory:Pointer
 00436AF3    mov         eax,dword ptr [ebp-8]
 00436AF6    call        TStream.WriteBuffer
 00436AFB    mov         esp,ebp
 00436AFD    pop         ebp
 00436AFE    ret
end;*}

//00436B00
{*procedure sub_00436B00(?:?; ?:?);
begin
 00436B00    push        ebp
 00436B01    mov         ebp,esp
 00436B03    add         esp,0FFFFFFF4
 00436B06    mov         dword ptr [ebp-0C],ecx
 00436B09    mov         word ptr [ebp-6],dx
 00436B0D    mov         dword ptr [ebp-4],eax
 00436B10    mov         eax,[0056DFEC];^SIconToClipboard:TResStringRec
 00436B15    call        0042FA70
 00436B1A    mov         esp,ebp
 00436B1C    pop         ebp
 00436B1D    ret         4
end;*}

//00436B20
{*procedure sub_00436B20(?:?; ?:?);
begin
 00436B20    push        ebp
 00436B21    mov         ebp,esp
 00436B23    add         esp,0FFFFFFF4
 00436B26    mov         dword ptr [ebp-0C],ecx
 00436B29    mov         dword ptr [ebp-8],edx
 00436B2C    mov         dword ptr [ebp-4],eax
 00436B2F    mov         eax,[0056DFEC];^SIconToClipboard:TResStringRec
 00436B34    call        0042FA70
 00436B39    mov         esp,ebp
 00436B3B    pop         ebp
 00436B3C    ret         4
end;*}

//00436B40
procedure InitScreenLogPixels;
begin
{*
 00436B40    push        ebp
 00436B41    mov         ebp,esp
 00436B43    push        ecx
 00436B44    push        0
 00436B46    call        user32.GetDC
 00436B4B    mov         dword ptr [ebp-4],eax
 00436B4E    push        5A
 00436B50    mov         eax,dword ptr [ebp-4]
 00436B53    push        eax
 00436B54    call        gdi32.GetDeviceCaps
 00436B59    mov         [00571AC0],eax;gvar_00571AC0
 00436B5E    mov         eax,dword ptr [ebp-4]
 00436B61    push        eax
 00436B62    push        0
 00436B64    call        user32.ReleaseDC
 00436B69    mov         eax,56C038
 00436B6E    mov         edx,0F
 00436B73    call        00430224
 00436B78    mov         [00571AB8],eax;SystemPalette16:HPALETTE
 00436B7D    pop         ecx
 00436B7E    pop         ebp
 00436B7F    ret
*}
end;

//00436B80
function GetDefFontCharSet:TFontCharset;
begin
{*
 00436B80    push        ebp
 00436B81    mov         ebp,esp
 00436B83    add         esp,0FFFFFFC0
 00436B86    mov         byte ptr [ebp-1],1
 00436B8A    push        0
 00436B8C    call        user32.GetDC
 00436B91    mov         dword ptr [ebp-8],eax
 00436B94    cmp         dword ptr [ebp-8],0
>00436B98    je          00436BCF
 00436B9A    mov         eax,[00571ACC];StockFont:HFONT
 00436B9F    push        eax
 00436BA0    mov         eax,dword ptr [ebp-8]
 00436BA3    push        eax
 00436BA4    call        gdi32.SelectObject
 00436BA9    test        eax,eax
>00436BAB    je          00436BC4
 00436BAD    lea         eax,[ebp-40]
 00436BB0    push        eax
 00436BB1    mov         eax,dword ptr [ebp-8]
 00436BB4    push        eax
 00436BB5    call        gdi32.GetTextMetricsA
 00436BBA    test        eax,eax
>00436BBC    je          00436BC4
 00436BBE    mov         al,byte ptr [ebp-0C]
 00436BC1    mov         byte ptr [ebp-1],al
 00436BC4    mov         eax,dword ptr [ebp-8]
 00436BC7    push        eax
 00436BC8    push        0
 00436BCA    call        user32.ReleaseDC
 00436BCF    mov         al,byte ptr [ebp-1]
 00436BD2    mov         esp,ebp
 00436BD4    pop         ebp
 00436BD5    ret
*}
end;

//00436BD8
procedure InitDefFontData;
begin
{*
 00436BD8    push        ebp
 00436BD9    mov         ebp,esp
 00436BDB    push        ecx
 00436BDC    push        esi
 00436BDD    push        edi
 00436BDE    push        48
 00436BE0    mov         eax,[00571AC0];gvar_00571AC0
 00436BE5    push        eax
 00436BE6    push        8
 00436BE8    call        kernel32.MulDiv
 00436BED    neg         eax
 00436BEF    mov         [0056BD70],eax
 00436BF4    mov         eax,[0056E638];^gvar_0057196C:Integer
 00436BF9    cmp         byte ptr [eax+0C],0
>00436BFD    je          00436C3A
 00436BFF    call        GetDefFontCharSet
 00436C04    mov         byte ptr [ebp-1],al
 00436C07    mov         al,byte ptr [ebp-1]
 00436C0A    sub         al,80
>00436C0C    jne         00436C3A
 00436C0E    mov         esi,436C40
 00436C13    mov         edi,56BD77
 00436C18    movs        dword ptr [edi],dword ptr [esi]
 00436C19    movs        dword ptr [edi],dword ptr [esi]
 00436C1A    movs        dword ptr [edi],dword ptr [esi]
 00436C1B    movs        dword ptr [edi],dword ptr [esi]
 00436C1C    push        48
 00436C1E    mov         eax,[00571AC0];gvar_00571AC0
 00436C23    push        eax
 00436C24    push        9
 00436C26    call        kernel32.MulDiv
 00436C2B    neg         eax
 00436C2D    mov         [0056BD70],eax
 00436C32    mov         al,byte ptr [ebp-1]
 00436C35    mov         [0056BD76],al
 00436C3A    pop         edi
 00436C3B    pop         esi
 00436C3C    pop         ecx
 00436C3D    pop         ebp
 00436C3E    ret
*}
end;

//00436CAC
constructor TPatternManager.Create;
begin
{*
 00436CAC    push        ebp
 00436CAD    mov         ebp,esp
 00436CAF    add         esp,0FFFFFFF8
 00436CB2    test        dl,dl
>00436CB4    je          00436CBE
 00436CB6    add         esp,0FFFFFFF0
 00436CB9    call        @ClassCreate
 00436CBE    mov         byte ptr [ebp-5],dl
 00436CC1    mov         dword ptr [ebp-4],eax
 00436CC4    mov         eax,dword ptr [ebp-4]
 00436CC7    add         eax,8
 00436CCA    push        eax
 00436CCB    call        kernel32.InitializeCriticalSection
 00436CD0    mov         eax,dword ptr [ebp-4]
 00436CD3    cmp         byte ptr [ebp-5],0
>00436CD7    je          00436CE8
 00436CD9    call        @AfterConstruction
 00436CDE    pop         dword ptr fs:[0]
 00436CE5    add         esp,0C
 00436CE8    mov         eax,dword ptr [ebp-4]
 00436CEB    pop         ecx
 00436CEC    pop         ecx
 00436CED    pop         ebp
 00436CEE    ret
*}
end;

//00436D28
{*procedure sub_00436D28(?:?);
begin
 00436D28    push        ebp
 00436D29    mov         ebp,esp
 00436D2B    push        ecx
 00436D2C    mov         dword ptr [ebp-4],eax
 00436D2F    mov         eax,dword ptr [ebp-4]
 00436D32    add         eax,8
 00436D35    push        eax
 00436D36    call        kernel32.EnterCriticalSection
 00436D3B    pop         ecx
 00436D3C    pop         ebp
 00436D3D    ret
end;*}

//00436D40
{*procedure sub_00436D40(?:?);
begin
 00436D40    push        ebp
 00436D41    mov         ebp,esp
 00436D43    push        ecx
 00436D44    mov         dword ptr [ebp-4],eax
 00436D47    mov         eax,dword ptr [ebp-4]
 00436D4A    add         eax,8
 00436D4D    push        eax
 00436D4E    call        kernel32.LeaveCriticalSection
 00436D53    pop         ecx
 00436D54    pop         ebp
 00436D55    ret
end;*}

//00436D58
{*function sub_00436D58(?:TPatternManager; ?:Longint; ?:?):?;
begin
 00436D58    push        ebp
 00436D59    mov         ebp,esp
 00436D5B    add         esp,0FFFFFFEC
 00436D5E    mov         dword ptr [ebp-0C],ecx
 00436D61    mov         dword ptr [ebp-8],edx
 00436D64    mov         dword ptr [ebp-4],eax
 00436D67    mov         eax,dword ptr [ebp-4]
 00436D6A    call        00436D28
 00436D6F    xor         eax,eax
 00436D71    push        ebp
 00436D72    push        436E15
 00436D77    push        dword ptr fs:[eax]
 00436D7A    mov         dword ptr fs:[eax],esp
 00436D7D    mov         eax,dword ptr [ebp-4]
 00436D80    mov         eax,dword ptr [eax+4]
 00436D83    mov         dword ptr [ebp-10],eax
>00436D86    jmp         00436D90
 00436D88    mov         eax,dword ptr [ebp-10]
 00436D8B    mov         eax,dword ptr [eax]
 00436D8D    mov         dword ptr [ebp-10],eax
 00436D90    cmp         dword ptr [ebp-10],0
>00436D94    je          00436DAC
 00436D96    mov         eax,dword ptr [ebp-10]
 00436D99    mov         eax,dword ptr [eax+8]
 00436D9C    cmp         eax,dword ptr [ebp-8]
>00436D9F    jne         00436D88
 00436DA1    mov         eax,dword ptr [ebp-10]
 00436DA4    mov         eax,dword ptr [eax+0C]
 00436DA7    cmp         eax,dword ptr [ebp-0C]
>00436DAA    jne         00436D88
 00436DAC    cmp         dword ptr [ebp-10],0
>00436DB0    jne         00436DFF
 00436DB2    mov         eax,10
 00436DB7    call        @GetMem
 00436DBC    mov         dword ptr [ebp-10],eax
 00436DBF    mov         eax,dword ptr [ebp-10]
 00436DC2    mov         dword ptr [ebp-14],eax
 00436DC5    mov         eax,dword ptr [ebp-4]
 00436DC8    mov         eax,dword ptr [eax+4]
 00436DCB    mov         edx,dword ptr [ebp-14]
 00436DCE    mov         dword ptr [edx],eax
 00436DD0    mov         ecx,dword ptr [ebp-0C]
 00436DD3    mov         edx,dword ptr [ebp-8]
 00436DD6    mov         eax,dword ptr [ebp-4]
 00436DD9    call        00436E24
 00436DDE    mov         edx,dword ptr [ebp-14]
 00436DE1    mov         dword ptr [edx+4],eax
 00436DE4    mov         eax,dword ptr [ebp-14]
 00436DE7    mov         edx,dword ptr [ebp-8]
 00436DEA    mov         dword ptr [eax+8],edx
 00436DED    mov         eax,dword ptr [ebp-14]
 00436DF0    mov         edx,dword ptr [ebp-0C]
 00436DF3    mov         dword ptr [eax+0C],edx
 00436DF6    mov         eax,dword ptr [ebp-4]
 00436DF9    mov         edx,dword ptr [ebp-10]
 00436DFC    mov         dword ptr [eax+4],edx
 00436DFF    xor         eax,eax
 00436E01    pop         edx
 00436E02    pop         ecx
 00436E03    pop         ecx
 00436E04    mov         dword ptr fs:[eax],edx
 00436E07    push        436E1C
 00436E0C    mov         eax,dword ptr [ebp-4]
 00436E0F    call        00436D40
 00436E14    ret
>00436E15    jmp         @HandleFinally
>00436E1A    jmp         00436E0C
 00436E1C    mov         eax,dword ptr [ebp-10]
 00436E1F    mov         esp,ebp
 00436E21    pop         ebp
 00436E22    ret
end;*}

//00436E24
{*function sub_00436E24(?:?; ?:?; ?:?):?;
begin
 00436E24    push        ebp
 00436E25    mov         ebp,esp
 00436E27    add         esp,0FFFFFFD4
 00436E2A    push        ebx
 00436E2B    push        esi
 00436E2C    push        edi
 00436E2D    mov         dword ptr [ebp-0C],ecx
 00436E30    mov         dword ptr [ebp-8],edx
 00436E33    mov         dword ptr [ebp-4],eax
 00436E36    mov         dl,1
 00436E38    mov         eax,[0042CF48];TBitmap
 00436E3D    call        TBitmap.Create;TBitmap.Create
 00436E42    mov         dword ptr [ebp-10],eax
 00436E45    xor         eax,eax
 00436E47    push        ebp
 00436E48    push        436F21
 00436E4D    push        dword ptr fs:[eax]
 00436E50    mov         dword ptr fs:[eax],esp
 00436E53    mov         edx,8
 00436E58    mov         eax,dword ptr [ebp-10]
 00436E5B    mov         ecx,dword ptr [eax]
 00436E5D    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 00436E60    mov         edx,8
 00436E65    mov         eax,dword ptr [ebp-10]
 00436E68    mov         ecx,dword ptr [eax]
 00436E6A    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 00436E6D    mov         eax,dword ptr [ebp-10]
 00436E70    call        0043498C
 00436E75    mov         dword ptr [ebp-1C],eax
 00436E78    mov         eax,dword ptr [ebp-1C]
 00436E7B    mov         eax,dword ptr [eax+14]
 00436E7E    xor         edx,edx
 00436E80    call        TBrush.SetStyle
 00436E85    mov         eax,dword ptr [ebp-1C]
 00436E88    mov         eax,dword ptr [eax+14]
 00436E8B    mov         edx,dword ptr [ebp-8]
 00436E8E    call        TBrush.SetColor
 00436E93    mov         eax,dword ptr [ebp-10]
 00436E96    mov         edx,dword ptr [eax]
 00436E98    call        dword ptr [edx+20];TBitmap.sub_00434A8C
 00436E9B    push        eax
 00436E9C    lea         eax,[ebp-2C]
 00436E9F    push        eax
 00436EA0    mov         eax,dword ptr [ebp-10]
 00436EA3    mov         edx,dword ptr [eax]
 00436EA5    call        dword ptr [edx+2C];TBitmap.sub_00434CF0
 00436EA8    mov         ecx,eax
 00436EAA    xor         edx,edx
 00436EAC    xor         eax,eax
 00436EAE    call        0041E714
 00436EB3    lea         edx,[ebp-2C]
 00436EB6    mov         eax,dword ptr [ebp-1C]
 00436EB9    call        0042F030
 00436EBE    xor         eax,eax
 00436EC0    mov         dword ptr [ebp-18],eax
 00436EC3    xor         eax,eax
 00436EC5    mov         dword ptr [ebp-14],eax
 00436EC8    mov         eax,dword ptr [ebp-18]
 00436ECB    and         eax,80000001
>00436ED0    jns         00436ED7
 00436ED2    dec         eax
 00436ED3    or          eax,0FFFFFFFE
 00436ED6    inc         eax
 00436ED7    mov         edx,dword ptr [ebp-14]
 00436EDA    and         edx,80000001
>00436EE0    jns         00436EE7
 00436EE2    dec         edx
 00436EE3    or          edx,0FFFFFFFE
 00436EE6    inc         edx
 00436EE7    cmp         eax,edx
>00436EE9    jne         00436EFD
 00436EEB    mov         eax,dword ptr [ebp-0C]
 00436EEE    push        eax
 00436EEF    mov         ecx,dword ptr [ebp-18]
 00436EF2    mov         edx,dword ptr [ebp-14]
 00436EF5    mov         eax,dword ptr [ebp-1C]
 00436EF8    call        0042F618
 00436EFD    inc         dword ptr [ebp-14]
 00436F00    cmp         dword ptr [ebp-14],9
>00436F04    jne         00436EC8
 00436F06    inc         dword ptr [ebp-18]
 00436F09    cmp         dword ptr [ebp-18],9
>00436F0D    jne         00436EC3
 00436F0F    mov         eax,dword ptr [ebp-10]
 00436F12    call        00434580
 00436F17    xor         eax,eax
 00436F19    pop         edx
 00436F1A    pop         ecx
 00436F1B    pop         ecx
 00436F1C    mov         dword ptr fs:[eax],edx
>00436F1F    jmp         00436F38
>00436F21    jmp         @HandleAnyException
 00436F26    mov         eax,dword ptr [ebp-10]
 00436F29    call        TObject.Free
 00436F2E    call        @RaiseAgain
 00436F33    call        @DoneExcept
 00436F38    mov         eax,dword ptr [ebp-10]
 00436F3B    pop         edi
 00436F3C    pop         esi
 00436F3D    pop         ebx
 00436F3E    mov         esp,ebp
 00436F40    pop         ebp
 00436F41    ret
end;*}

//00436FC8
{*function sub_00436FC8(?:?; ?:?):?;
begin
 00436FC8    push        ebp
 00436FC9    mov         ebp,esp
 00436FCB    add         esp,0FFFFFFF4
 00436FCE    mov         dword ptr [ebp-8],edx
 00436FD1    mov         dword ptr [ebp-4],eax
 00436FD4    cmp         dword ptr ds:[571B14],0;PatternManager:TPatternManager
>00436FDB    je          00437003
 00436FDD    mov         eax,dword ptr [ebp-8]
 00436FE0    call        ColorToRGB
 00436FE5    push        eax
 00436FE6    mov         eax,dword ptr [ebp-4]
 00436FE9    call        ColorToRGB
 00436FEE    mov         edx,eax
 00436FF0    mov         eax,[00571B14];0x0 PatternManager:TPatternManager
 00436FF5    pop         ecx
 00436FF6    call        00436D58
 00436FFB    mov         eax,dword ptr [eax+4]
 00436FFE    mov         dword ptr [ebp-0C],eax
>00437001    jmp         00437008
 00437003    xor         eax,eax
 00437005    mov         dword ptr [ebp-0C],eax
 00437008    mov         eax,dword ptr [ebp-0C]
 0043700B    mov         esp,ebp
 0043700D    pop         ebp
 0043700E    ret
end;*}

Initialization
//004370E4
{*
 004370E4    sub         dword ptr ds:[571ABC],1
>004370EB    jae         004371DE
 004370F1    call        InitScreenLogPixels
 004370F6    push        571AD4;BitmapImageLock:TRTLCriticalSection
 004370FB    call        kernel32.InitializeCriticalSection
 00437100    push        571AEC;CounterLock:TRTLCriticalSection
 00437105    call        kernel32.InitializeCriticalSection
 0043710A    push        7
 0043710C    call        gdi32.GetStockObject
 00437111    mov         [00571AC4],eax;StockPen:HPEN
 00437116    push        5
 00437118    call        gdi32.GetStockObject
 0043711D    mov         [00571AC8],eax;StockBrush:HBRUSH
 00437122    push        0D
 00437124    call        gdi32.GetStockObject
 00437129    mov         [00571ACC],eax;StockFont:HFONT
 0043712E    push        7F00
 00437133    push        0
 00437135    call        user32.LoadIconA
 0043713A    mov         [00571AD0],eax;StockIcon:HICON
 0043713F    call        InitDefFontData
 00437144    mov         cx,2C
 00437148    mov         dl,1
 0043714A    mov         eax,[0042D188];TResourceManager
 0043714F    call        TResourceManager.Create
 00437154    mov         [00571B04],eax;FontManager:TResourceManager
 00437159    mov         cx,10
 0043715D    mov         dl,1
 0043715F    mov         eax,[0042D188];TResourceManager
 00437164    call        TResourceManager.Create
 00437169    mov         [00571B08],eax;PenManager:TResourceManager
 0043716E    mov         cx,10
 00437172    mov         dl,1
 00437174    mov         eax,[0042D188];TResourceManager
 00437179    call        TResourceManager.Create
 0043717E    mov         [00571B0C],eax;BrushManager:TResourceManager
 00437183    mov         dl,1
 00437185    mov         eax,[00436C50];TPatternManager
 0043718A    call        TPatternManager.Create
 0043718F    mov         [00571B14],eax;PatternManager:TPatternManager
 00437194    mov         dl,1
 00437196    mov         eax,[0041D4D0];TThreadList
 0043719B    call        TThreadList.Create
 004371A0    mov         [0056C024],eax;gvar_0056C024
 004371A5    mov         dl,1
 004371A7    mov         eax,[0041D4D0];TThreadList
 004371AC    call        TThreadList.Create
 004371B1    mov         [00571B10],eax;CanvasList:TThreadList
 004371B6    mov         ecx,42DB3C;ColorToIdent:Boolean
 004371BB    mov         edx,42DB64;IdentToColor:Boolean
 004371C0    mov         eax,[0042C0D0];TColor
 004371C5    call        RegisterIntegerConsts
 004371CA    mov         ecx,42DDA4;CharsetToIdent:Boolean
 004371CF    mov         edx,42DDCC;IdentToCharset:Boolean
 004371D4    mov         eax,[0042C200];TFontCharset
 004371D9    call        RegisterIntegerConsts
 004371DE    ret
*}
Finalization
//00437010
{*
 00437010    push        ebp
 00437011    mov         ebp,esp
 00437013    xor         eax,eax
 00437015    push        ebp
 00437016    push        4370D9
 0043701B    push        dword ptr fs:[eax]
 0043701E    mov         dword ptr fs:[eax],esp
 00437021    inc         dword ptr ds:[571ABC]
>00437027    jne         004370CB
 0043702D    mov         eax,[00571B14];PatternManager:TPatternManager
 00437032    call        TObject.Free
 00437037    mov         eax,[0056C020];gvar_0056C020:TFileFormatsList
 0043703C    call        TObject.Free
 00437041    mov         eax,[0056C01C];gvar_0056C01C:TClipboardFormats
 00437046    call        TObject.Free
 0043704B    call        FreeMemoryContexts
 00437050    mov         eax,[0056C024];gvar_0056C024
 00437055    call        TObject.Free
 0043705A    mov         eax,[00571B10];CanvasList:TThreadList
 0043705F    call        TObject.Free
 00437064    mov         eax,[00571B04];FontManager:TResourceManager
 00437069    call        TObject.Free
 0043706E    mov         eax,[00571B08];PenManager:TResourceManager
 00437073    call        TObject.Free
 00437078    mov         eax,[00571B0C];BrushManager:TResourceManager
 0043707D    call        TObject.Free
 00437082    mov         eax,[00571AB8];SystemPalette16:HPALETTE
 00437087    push        eax
 00437088    call        gdi32.DeleteObject
 0043708D    push        571AD4;BitmapImageLock:TRTLCriticalSection
 00437092    call        kernel32.DeleteCriticalSection
 00437097    push        571AEC;CounterLock:TRTLCriticalSection
 0043709C    call        kernel32.DeleteCriticalSection
 004370A1    mov         eax,56BF3C
 004370A6    mov         ecx,12
 004370AB    mov         edx,dword ptr ds:[41E66C];TIdentMapEntry
 004370B1    call        @FinalizeArray
 004370B6    mov         eax,56BD9C
 004370BB    mov         ecx,34
 004370C0    mov         edx,dword ptr ds:[41E66C];TIdentMapEntry
 004370C6    call        @FinalizeArray
 004370CB    xor         eax,eax
 004370CD    pop         edx
 004370CE    pop         ecx
 004370CF    pop         ecx
 004370D0    mov         dword ptr fs:[eax],edx
 004370D3    push        4370E0
 004370D8    ret
>004370D9    jmp         @HandleFinally
>004370DE    jmp         004370D8
 004370E0    pop         ebp
 004370E1    ret
*}
end.