//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnMan;

interface

uses
  SysUtils, Classes, ActnList, ActnMan, Graphics;

type
  TGetBarsClassEvent = procedure(Sender:TCustomActionManager; BarsClass:TActionBarsClass) of object;;
  TGetBarItemClassEvent = procedure(Sender:TCustomActionManager; var BarItemClass:TActionBarItemClass) of object;;
  TGetClientsClassEvent = procedure(Sender:TCustomActionManager; var ClientsClass:TActionClientsClass) of object;;
  TGetClientItemClassEvent = procedure(Sender:TCustomActionManager; var ClientItemClass:TActionClientItemClass) of object;;
  TStyleChanged = procedure(Sender:TCustomActionManager) of object;;
  TActionBarStyle = class(TObject)
  public
    procedure v0; virtual; abstract;//v0//00403328
    procedure v4; virtual; abstract;//v4//00403328
    procedure v8; virtual; abstract;//v8//00403328
  end;
  TCustomActionManager = class(TCustomActionList)
  public
    FAction:TCustomAction;//f68
    FActionBars:TActionBars;//f6C
    FCompareCaption:String;//f70
    FCompareProc:TActionProc;//f78
    FFoundClient:TActionClientItem;//f80
    FLinkedActionLists:TActionListCollection;//f84
    FDefaultActionBars:TActionBars;//f88
    FFileName:TFileName;//f8C
    FLoading:Boolean;//f90
    FPrioritySchedule:TStringList;//f94
    FSaved:Boolean;//f98
    FOnGetBarItemClass:TGetBarItemClassEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    FOnGetBarsClass:TGetBarsClassEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    FOnGetClientItemClass:TGetClientItemClassEvent;//fB0
    fB2:word;//fB2
    fB4:dword;//fB4
    FOnGetClientsClass:TGetClientsClassEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    FOnStyleChanged:TStyleChanged;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FStyle:TActionBarStyle;//fC8
    procedure AfterConstruction; virtual;//004BD404
    destructor Destroy; virtual;//004BC080
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004BC21C
    //procedure v8(?:?); virtual;//v8//004BC0F4
    procedure vC; virtual;//vC//004BC5F8
    //procedure v10(?:?; ?:?); virtual;//v10//004BC6F0
    constructor v2C; virtual;//v2C//004BBF5C
    procedure v30; virtual;//v30//004BD09C
    procedure SetImages(Value:TCustomImageList); virtual;//v34//004BCB94
    //function v38(?:?):?; virtual;//v38//004BCE74
    procedure sub_004BD118; dynamic;//004BD118
    procedure sub_004BD0CC; dynamic;//004BD0CC
    procedure sub_004BD1B0; dynamic;//004BD1B0
    procedure sub_004BD164; dynamic;//004BD164
    procedure ResetActionBar(Index:Integer);//004BCFCC
    procedure ReadStyleProp(Reader:TReader);//004BD2A0
    procedure WriteStyleProp(Writer:TWriter);//004BD384
  end;
  TActionManager = class(TCustomActionManager)
    procedure SetActionBars(Value:TActionBars);//004BCB74
    procedure SetPrioritySchedule(Value:TStringList);//004BCCF0
    function IsStoredPrioritySchedule(Value:TStringList):Boolean;//004BCF68
    procedure SetLinkedActionLists(Value:TActionListCollection);//004BD050
    function IsStoredLinkedActionLists(Value:TActionListCollection):Boolean;//004BD1FC
    function IsStoredActionBars(Value:TActionBars):Boolean;//004BD234
    //function GetLinkedActionLists:?;//004BD258
    procedure SetStyle(Value:TActionBarStyle);//004BD450
  end;
  TActionListItem = class(TCollectionItem)
  public
    ActionList:TCustomActionList;//fC
    Caption:String;//f10
    //procedure v8(?:?); virtual;//v8//004BD56C
    //procedure vC(?:?); virtual;//vC//004BD694
    //procedure GetCaption(?:?);//004BD63C
    procedure SetActionList(Value:TCustomActionList);//004BD6E4
  end;
  TActionListCollection = class(TOwnedCollection)
  end;
  TActionClientsCollection = class(TOwnedCollection)
  public
    FAutoHotKeys:Boolean;//f1C
    FParentItem:TActionClient;//f20
    FCustomizable:Boolean;//f24
    procedure AfterConstruction; virtual;//004BDFCC
  end;
  TBackgroundLayout = (blNormal, blStretch, blTile, blLeftBanner, blRightBanner);
  TChangesAllowed = (caModify, caMove, caDelete);
  TChangesAllowedSet = set of TChangesAllowed;
  TActionClient = class(TCollectionItem)
  public
    FActionBar:TCustomActionBar;//fC
    FBackground:TPicture;//f10
    BackgroundLayout:TBackgroundLayout;//f14
    FChildActionBar:TCustomActionBar;//f18
    FContextItems:TActionClients;//f1C
    FCaption:String;//f20
    Color:TColor;//f24
    FSmallIcons:Boolean;//f28
    FItems:TActionClients;//f2C
    Visible:Boolean;//f30
    ChangesAllowed:TChangesAllowedSet;//f31
    Tag:Integer;//f34
    destructor Destroy; virtual;//004BE240
    //procedure v8(?:?); virtual;//v8//004BE338
    constructor v1C; virtual;//v1C//004BE1B8
    procedure v20; virtual;//v20//004BE45C
    procedure SetChangesAllowed(Value:TChangesAllowedSet); virtual;//v24//004BEB78
    procedure SetColor(Value:TColor); virtual;//v28//004BEB9C
    procedure SetVisible(Value:Boolean); virtual;//v2C//004BEBE4
    procedure v30; virtual;//v30//004BE8A8
    function IsStoredContextItems(Value:TActionClients):Boolean;//004BE2C8
    //function GetBackground:?;//004BE4EC
    //function GetContextItems:?;//004BE520
    //function GetItems:?;//004BE5D4
    function IsStoredBackground(Value:TPicture):Boolean;//004BE780
    function IsStoredItems(Value:TActionClients):Boolean;//004BE838
    procedure SetItems(Value:TActionClients);//004BE9D4
    procedure SetBackground(Value:TPicture);//004BEA08
    procedure SetBackgroundLayout(Value:TBackgroundLayout);//004BEAB0
    procedure SetContextItems(Value:TActionClients);//004BEBC8
  end;
  TActionBarItem = class(TActionClient)
  public
    AutoSize:Boolean;//f38
    GlyphLayout:TButtonLayout;//f39
    //procedure vC(?:?); virtual;//vC//004BECA0
    constructor v1C; virtual;//v1C//004BEC50
    procedure v20; virtual;//v20//004BEC10
    //procedure v2C(?:?); virtual;//v2C//004BEE94
    procedure v30; virtual;//v30//004BECF4
    procedure SetActionBar(Value:TCustomActionBar);//004BE8B4
    procedure SetAutoSize(Value:Boolean);//004BED24
    procedure SetGlyphLayout(Value:TButtonLayout);//004BED60
  end;
  TActionBars = class(TActionClientsCollection)
  public
    SessionCount:Integer;//f28
    ShowHints:Boolean;//f2C
    //procedure v14(?:?; ?:?); virtual;//v14//004BEFF4
    //function GetHintShortCuts:?;//004BEFC8
    procedure SetShowHints(Value:Boolean);//004BF058
    procedure SetHintShortCuts(Value:Boolean);//004BF090
  end;
  TCaptionOptions = (coNone, coSelective, coAll);
  TActionClients = class(TActionClientsCollection)
  public
    CaptionOptions:TCaptionOptions;//f28
    SmallIcons:Boolean;//f29
    HideUnused:Boolean;//f2A
    //procedure v8(?:?); virtual;//v8//004BF140
    //procedure v14(?:?; ?:?); virtual;//v14//004BF27C
    procedure SetAutoHotKeys(Value:Boolean);//004BE188
    //constructor Create(?:?);//004BF0B8
    procedure SetCaptionOptions(Value:TCaptionOptions);//004BF458
    procedure SetHideUnused(Value:Boolean);//004BF4FC
    procedure SetSmallIcons(Value:Boolean);//004BF544
  end;
  TActionClientLink = class(TActionLink)
  public
    .........................FClient:TActionClientItem;//f18
    //procedure v0(?:?); virtual;//v0//004BF6F0
    //function v8:?; virtual;//v8//004BFA48
    //procedure v10(?:?; ?:?); virtual;//v10//004BFC50
    //function v20:?; virtual;//v20//004BF818
    //function v28:?; virtual;//v28//004BF8F0
    //function v30:?; virtual;//v30//004BF94C
    //function v38:?; virtual;//v38//004BF990
    //function v3C:?; virtual;//v3C//004BF9EC
    //function v40:?; virtual;//v40//004BFA94
    //function v44:?; virtual;//v44//004BFAE0
    //procedure v4C(?:?); virtual;//v4C//004BFB28
    //procedure v50(?:?); virtual;//v50//004BFB54
    //procedure v54(?:?); virtual;//v54//004BFB98
    //procedure v5C(?:?); virtual;//v5C//004BFBC8
    //procedure v68(?:?); virtual;//v68//004BFBF0
    //procedure v6C(?:?); virtual;//v6C//004BFC24
    //procedure v70(?:?); virtual;//v70//004BFC84
    //procedure v74(?:?); virtual;//v74//004BFCB0
    //function v78(?:?):?; virtual;//v78//004BF714
  end;
  TActionClientItem = class(TActionClient)
  public
    FActionLink:TActionClientLink;//f38
    FCheckUnused:Boolean;//f3C
    FControl:TCustomActionControl;//f40
    UsageCount:Integer;//f44
    ShortCut:TShortCut;//f48
    MergeIndex:TMergeRange;//f4C
    FSeparator:Boolean;//f50
    ShowCaption:Boolean;//f51
    ShowShortCut:Boolean;//f52
    FShortCutText:String;//f54
    ImageIndex:TImageIndex;//f58
    LastSession:Integer;//f5C
    FUnused:Boolean;//f60
    ShowGlyph:Boolean;//f61
    HelpContext:THelpContext;//f64
    destructor Destroy; virtual;//004BFD6C
    //procedure v8(?:?); virtual;//v8//004BFF40
    //procedure vC(?:?); virtual;//vC//004C0218
    //procedure v10(?:?); virtual;//v10//004C0C14
    //procedure v14(?:?); virtual;//v14//004C07F4
    constructor v1C; virtual;//v1C//004BFCDC
    procedure v20; virtual;//v20//004C00B0
    //procedure v24(?:?); virtual;//v24//004C0B7C
    //procedure v2C(?:?); virtual;//v2C//004C0AA8
    procedure v30; virtual;//v30//004C0438
    procedure v34; virtual;//v34//004C0388
    procedure sub_004C0150; dynamic;//004C0150
    //procedure sub_004BFDB4(?:?; ?:?); dynamic;//004BFDB4
    //function GetAction:?;//004C0168
    //procedure GetCaption(?:?);//004C0194
    function IsStoredCaption(Value:String):Boolean;//004C03A8
    procedure SetAction(Value:TContainedAction);//004C0550
    procedure SetCaption(Value:AnsiString);//004C0698
    procedure SetImageIndex(Value:TImageIndex);//004C07AC
    procedure SetLastSession(Value:Integer);//004C0834
    procedure SetMergeIndex(Value:TMergeRange);//004C0860
    procedure SetShortCut(Value:TShortCut);//004C0920
    procedure SetShowCaption(Value:Boolean);//004C099C
    procedure SetShowShortCut(Value:Boolean);//004C0A14
    procedure SetUsageCount(Value:Integer);//004C0A60
    procedure SetShowGlyph(Value:Boolean);//004C0BD8
    function IsStoredHelpContext(Value:THelpContext):Boolean;//004C0E0C
  end;
  TActionDragBaseClass = class(TDragObjectEx)
  public
    ..FActionManager:TCustomActionManager;//f38
  end;
  TActionDragObject = class(TActionDragBaseClass)
  public
    FActions:TList;//f40
    FActionClasses:Boolean;//f44
    destructor Destroy; virtual;//004C0E40
  end;
  TCategoryDragObject = class(TActionDragObject)
  public
    ..FCategory:String;//f48
  end;
  TActionItemDragObject = class(TActionDragBaseClass)
  public
    .....................FClientItem:TActionClientItem;//f40
    //procedure v0(?:?; ?:?; ?:?; ?:?); virtual;//v0//004C0EE4
  end;
  TCustomActionBarColorMap = class(TComponent)
  public
    FActionBars:TList;//f30
    FBtnSelectedColor:TColor;//f34
    FBtnFrameColor:TColor;//f38
    FBtnSelectedFont:TColor;//f3C
    FColor:TColor;//f40
    FDisabledColor:TColor;//f44
    FDisabledFontColor:TColor;//f48
    FDisabledFontShadow:TColor;//f4C
    FFontColor:TColor;//f50
    FHotColor:TColor;//f54
    FShadowColor:TColor;//f58
    FHotFontColor:TColor;//f5C
    FUnusedColor:TColor;//f60
    FSelectedFontColor:TColor;//f64
    FSelectedColor:TColor;//f68
    FHighlightColor:TColor;//f6C
    FDesignFocus:TColor;//f70
    FMenuColor:TColor;//f74
    FFrameTopLeftInner:TColor;//f78
    FFrameTopLeftOuter:TColor;//f7C
    FFrameBottomRightInner:TColor;//f80
    FFrameBottomRightOuter:TColor;//f84
    FOnColorChange:TNotifyEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    destructor Destroy; virtual;//004C10E0
    //procedure v8(?:?); virtual;//v8//004C13A8
    //procedure v10(?:?; ?:?); virtual;//v10//004C1190
    constructor v2C; virtual;//v2C//004C107C
    procedure SetColor(Value:TColor); virtual;//v30//004C1238
    procedure SetFontColor(Value:TColor); virtual;//v34//004C12D4
    procedure v38; virtual;//v38//004C134C
  end;
  TCustomActionBar = class(TToolWindow)
  public
    FActionClient:TActionClient;//f210
    FActionManager:TCustomActionManager;//f214
    FAllowHiding:Boolean;//f218
    FCanvas:TCanvas;//f21C
    FColorMap:TCustomActionBarColorMap;//f220
    FDesignable:Boolean;//f224
    FDesignMode:Boolean;//f225
    FEnabledState:Boolean;//f226
    FOrientation:TBarOrientation;//f227
    FSpacing:Integer;//f228
    FOnControlCreated:TControlCreatedEvent;//f230
    f232:word;//f232
    f234:dword;//f234
    FOnGetControlClass:TGetControlClassEvent;//f238
    f23A:word;//f23A
    f23C:dword;//f23C
    FOnPaint:TNotifyEvent;//f240
    f242:word;//f242
    f244:dword;//f244
    FPersistentHotKeys:Boolean;//f248
    FHRowCount:Integer;//f24C
    FVRowCount:Integer;//f250
    FVertMargin:Integer;//f254
    FHorzMargin:Integer;//f258
    FHorzSeparator:Boolean;//f25C
    FSavedSize:TPoint;//f25D
    FVertSeparator:Boolean;//f265
    FTallest:Integer;//f268
    FWidest:Integer;//f26C
    FContextBar:Boolean;//f270
    FDefaultColorMap:TCustomActionBarColorMap;//f274
    FSavedWrapState:Boolean;//f278
    destructor Destroy; virtual;//004C15FC
    procedure vC; virtual;//vC//004C2FE8
    //procedure v10(?:?; ?:?); virtual;//v10//004C3044
    constructor v2C; virtual;//v2C//004C14FC
    //procedure v70(?:?); virtual;//v70//004C3918
    //procedure v84(?:?; ?:?; ?:?; ?:?); virtual;//v84//004C4058
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//004C1654
    //function vA4(?:?; ?:?):?; virtual;//vA4//004C1AB0
    //procedure vA8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//vA8//004C1C60
    //procedure vB8(?:?); virtual;//vB8//004C30F0
    //procedure vC8(?:?); virtual;//vC8//004C42F4
    procedure vCC; virtual;//vCC//004C16A8
    procedure vD0; virtual;//vD0//004C17C8
    //function vD4(?:?):?; virtual;//vD4//004C1888
    procedure vD8; virtual;//vD8//004C1994
    //procedure vDC(?:?); virtual;//vDC//004C263C
    //procedure vE0(?:?; ?:?; ?:?); virtual;//vE0//004C3768
    //procedure vE4(?:?; ?:?; ?:?); virtual;//vE4//004C36AC
    //procedure vE8(?:?; ?:?; ?:?); virtual;//vE8//004C3EAC
    //function vEC:?; virtual;//vEC//004C2830
    //function vF0(?:?; ?:?):?; virtual;//vF0//004C2C78
    //function vF4(?:?; ?:?):?; virtual;//vF4//004C2D1C
    //function vF8(?:?):?; virtual;//vF8//004C2DF8
    //function vFC:?; virtual;//vFC//004C396C
    //function v100:?; virtual;//v100//004C3A6C
    //function v104:?; virtual;//v104//004C3B84
    //function v108(?:?):?; virtual;//v108//004C2DB0
    //function v10C:?; virtual;//v10C//004C4238
    //function v110(?:?):?; virtual;//v110//004C2EB8
    //function v114:?; virtual;//v114//004C2FA8
    procedure v118; virtual;//v118//004C225C
    procedure v11C; virtual;//v11C//004C30B8
    procedure Reset; virtual;//v120//004C3C60
    //procedure v124(?:?); virtual;//v124//004C319C
    //procedure v128(?:?); virtual;//v128//004C3E64
    //procedure v12C(?:?); virtual;//v12C//004C4180
    //procedure v130(?:?); virtual;//v130//004C324C
    //procedure v134(?:?); virtual;//v134//004C3528
    //procedure v138(?:?); virtual;//v138//004C3678
    //procedure v13C(?:?); virtual;//v13C//004C35D4
    //function v140:?; virtual;//v140//004C273C
    procedure v144; virtual;//v144//004C3FE8
    //function v148:?; virtual;//v148//004C4B1C
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//004C4134
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//004C3D68
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//004C1860
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004C4A8C
    //procedure CMWinIniChange(?:?); message CM_WININICHANGE;//004C4A00
    //procedure sub_004C3C44(?:?); dynamic;//004C3C44
    //procedure sub_004C25EC(?:?); dynamic;//004C25EC
    //procedure sub_00484338(?:?; ?:?; ?:?); dynamic;//004C2474
    procedure sub_0048513C; dynamic;//004C3CE0
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//004C2408
    //procedure sub_00484E9C(?:?); dynamic;//004C4AD8
  end;
  TCustomActionControl = class(TGraphicControl)
  public
    FActionBar:TCustomActionBar;//f168
    FActionClient:TActionClientItem;//f16C
    FDropPoint:Boolean;//f170
    FGlyphLayout:TButtonLayout;//f171
    FGlyphPos:TPoint;//f172
    FMargins:TRect;//f17A
    FSelected:Boolean;//f18A
    FSmallIcon:Boolean;//f18B
    FSpacing:Integer;//f18C
    FTextBounds:TRect;//f190
    FTransparent:Boolean;//f1A0
    destructor Destroy; virtual;//004C4C34
    constructor v2C; virtual;//v2C//004C4B70
    //function v3C:?; virtual;//v3C//004C6BC4
    procedure v78; virtual;//v78//004C6BF8
    procedure v8C; virtual;//v8C//004C5BA8
    procedure v90; virtual;//v90//004C4DCC
    //procedure v94(?:?; ?:?); virtual;//v94//004C6ED8
    //function v98:?; virtual;//v98//004C6AD0
    //function v9C:?; virtual;//v9C//004C6B28
    //procedure vA0(?:?); virtual;//vA0//004C6570
    //procedure vA4(?:?); virtual;//vA4//004C535C
    //procedure vA8(?:?); virtual;//vA8//004C5420
    //procedure vAC(?:?); virtual;//vAC//004C522C
    //procedure vB0(?:TRect; ?:?; ?:?); virtual;//vB0//004C5A00
    //procedure vB4(?:TRect; ?:?; ?:?; ?:?; ?:?); virtual;//vB4//004C5A78
    //procedure vB8(?:?); virtual;//vB8//004C5784
    //procedure vBC(?:?); virtual;//vBC//004C6058
    //function vC0:?; virtual;//vC0//004C6B70
    //function vC4:?; virtual;//vC4//004C5B68
    //function vC8:?; virtual;//vC8//004C6AA0
    procedure vCC; virtual;//vCC//004C5FDC
    //procedure vD0(?:?); virtual;//vD0//004C617C
    //procedure vD4(?:?); virtual;//vD4//004C6458
    //procedure vD8(?:?); virtual;//vD8//004C62B8
    procedure vDC; virtual;//vDC//004C6D68
    procedure vE0; virtual;//vE0//004C64C8
    //procedure WMSetText(?:?); message WM_SETTEXT;//004C6A64
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//004C71C8
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004C50C8
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004C6C40
    //procedure CMDesignHitTest(?:?); message CM_DESIGNHITTEST;//004C6500
    //procedure CMHintShow(?:?); message CM_HINTSHOW;//004C651C
    //procedure sub_004C6334(?:?); dynamic;//004C6334
    //procedure sub_004C72E4(?:?); dynamic;//004C72E4
    //procedure sub_00484338(?:?; ?:?; ?:?); dynamic;//004C660C
    //procedure sub_0048437C(?:?); dynamic;//004C69C0
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//004C664C
    //procedure sub_00484E9C(?:?); dynamic;//004C5168
    procedure sub_004854CC; dynamic;//004C50FC
    procedure sub_004841BC; dynamic;//004C4C90
  end;
  TXToolDockForm = class(TToolDockForm)
  public
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004BBEE0
  end;
  TActionBarStyleList = class(TStringList)
  end;
    //procedure CMDialogChar(?:?);//004BBEE0
    procedure sub_004BBF24(?:TCustomActionBar);//004BBF24
    constructor sub_004BBF5C;//004BBF5C
    destructor Destroy;//004BC080
    //procedure sub_004BC0F4(?:?);//004BC0F4
    //function sub_004BC19C(?:TCustomActionManager):?;//004BC19C
    function StyleNameStored:Boolean;//004BC1D4
    procedure DefineProperties(Filer:TFiler);//004BC21C
    //function sub_004BC278(?:TCustomActionManager; ?:?; ?:?):?;//004BC278
    //function sub_004BC344(?:TCustomActionManager; ?:?; ?:TActionBars):?;//004BC344
    procedure sub_004BC3EC(?:TCustomActionManager; ?:TFileName);//004BC3EC
    //procedure sub_004BC4FC(?:?; ?:TFileStream);//004BC4FC
    procedure sub_004BC5F8;//004BC5F8
    //procedure sub_004BC6F0(?:?; ?:?);//004BC6F0
    procedure sub_004BC940(?:TCustomActionManager; ?:TFileName);//004BC940
    procedure sub_004BCA4C(?:TCustomActionManager; ?:TFileStream);//004BCA4C
    procedure sub_004BCAC4(?:TCustomActionManager; ?:TActionBars);//004BCAC4
    procedure SetImages(Value:TCustomImageList);//004BCB94
    //function sub_004BCE74(?:?):?;//004BCE74
    procedure sub_004BD09C;//004BD09C
    procedure sub_004BD0CC;//004BD0CC
    procedure sub_004BD118;//004BD118
    procedure sub_004BD164;//004BD164
    procedure sub_004BD1B0;//004BD1B0
    procedure AfterConstruction;//004BD404
    //procedure sub_004BD56C(?:?);//004BD56C
    //procedure sub_004BD694(?:?);//004BD694
    //function sub_004BD6C8(?:TActionListItem):?;//004BD6C8
    //function sub_004BD788(?:?):?;//004BD788
    //function sub_004BD7A4(?:TActionListCollection; ?:?):?;//004BD7A4
    //function sub_004BD7C8(?:TActionBars; ?:?):?;//004BD7C8
    //function sub_004BD7EC(?:TCollection):?;//004BD7EC
    //function sub_004BD814(?:?; ?:?):?;//004BD814
    //procedure sub_004BD858(?:?);//004BD858
    //procedure sub_004BD8E8(?:AnsiString; ?:?; ?:?);//004BD8E8
    //function sub_004BDA70(?:TActionClientsCollection; ?:?):?;//004BDA70
    procedure AfterConstruction;//004BDFCC
    //procedure sub_004BDFE8(?:?);//004BDFE8
    //procedure sub_004BE03C(?:TActionClientsCollection; ?:TActionClientsCollection; ?:?; ?:?; ?:?);//004BE03C
    constructor sub_004BE1B8;//004BE1B8
    destructor Destroy;//004BE240
    //procedure sub_004BE338(?:?);//004BE338
    procedure sub_004BE448(?:TActionClient);//004BE448
    procedure sub_004BE45C;//004BE45C
    //procedure sub_004BE468(?:?);//004BE468
    //function sub_004BE56C(?:TActionClient):?;//004BE56C
    //function sub_004BE5A0(?:TActionClientItem):?;//004BE5A0
    //function sub_004BE698(?:TActionClient):?;//004BE698
    //function sub_004BE6B4(?:TActionClient):?;//004BE6B4
    //function sub_004BE6F4(?:?):?;//004BE6F4
    //function sub_004BE7C0(?:TActionClientItem; ?:TActionClientItem):?;//004BE7C0
    procedure sub_004BE8A8;//004BE8A8
    procedure SetChangesAllowed(Value:TChangesAllowedSet);//004BEB78
    procedure SetColor(Value:TColor);//004BEB9C
    procedure SetVisible(Value:Boolean);//004BEBE4
    procedure sub_004BEC10;//004BEC10
    constructor sub_004BEC50;//004BEC50
    //procedure sub_004BECA0(?:?);//004BECA0
    procedure sub_004BECF4;//004BECF4
    //procedure sub_004BEE94(?:?);//004BEE94
    //constructor sub_004BEECC(?:?);//004BEECC
    //function sub_004BEF38(?:TActionBars):?;//004BEF38
    //function sub_004BEFA4(?:TActionBars; ?:?):?;//004BEFA4
    //procedure sub_004BEFF4(?:?; ?:?);//004BEFF4
    //function sub_004BF124(?:?):?;//004BF124
    //procedure sub_004BF140(?:?);//004BF140
    //function sub_004BF258(?:TActionClients; ?:?):?;//004BF258
    //procedure sub_004BF27C(?:?; ?:?);//004BF27C
    //procedure sub_004BF5F0(?:TActionClients; ?:TActionClients; ?:?);//004BF5F0
    //function sub_004BF6A4(?:?):?;//004BF6A4
    //procedure sub_004BF6F0(?:?);//004BF6F0
    //function sub_004BF714(?:?):?;//004BF714
    //function sub_004BF818:?;//004BF818
    //function sub_004BF8F0:?;//004BF8F0
    //function sub_004BF94C:?;//004BF94C
    //function sub_004BF990:?;//004BF990
    //function sub_004BF9EC:?;//004BF9EC
    //function sub_004BFA48:?;//004BFA48
    //function sub_004BFA94:?;//004BFA94
    //function sub_004BFAE0:?;//004BFAE0
    //procedure sub_004BFB28(?:?);//004BFB28
    //procedure sub_004BFB54(?:?);//004BFB54
    //procedure sub_004BFB98(?:?);//004BFB98
    //procedure sub_004BFBC8(?:?);//004BFBC8
    //procedure sub_004BFBF0(?:?);//004BFBF0
    //procedure sub_004BFC24(?:?);//004BFC24
    //procedure sub_004BFC50(?:?; ?:?);//004BFC50
    //procedure sub_004BFC84(?:?);//004BFC84
    //procedure sub_004BFCB0(?:?);//004BFCB0
    constructor sub_004BFCDC;//004BFCDC
    destructor Destroy;//004BFD6C
    //procedure sub_004BFDB4(?:?; ?:?);//004BFDB4
    //procedure sub_004BFF40(?:?);//004BFF40
    procedure sub_004C00B0;//004C00B0
    //procedure sub_004C0104(?:?; ?:?);//004C0104
    //function sub_004C0134(?:TActionClientItem):?;//004C0134
    procedure sub_004C0150;//004C0150
    //procedure sub_004C0218(?:?);//004C0218
    //function sub_004C02D4(?:?; ?:?):?;//004C02D4
    //function sub_004C0320(?:TActionClientItem):?;//004C0320
    procedure sub_004C0388;//004C0388
    procedure sub_004C0438;//004C0438
    procedure sub_004C045C(?:TActionClientItem);//004C045C
    //procedure sub_004C0748(?:?; ?:?);//004C0748
    //procedure sub_004C07F4(?:?);//004C07F4
    //procedure sub_004C0AA8(?:?);//004C0AA8
    //procedure sub_004C0B7C(?:?);//004C0B7C
    //procedure sub_004C0C14(?:?);//004C0C14
    //function sub_004C0C60(?:TActionClientItem):?;//004C0C60
    destructor Destroy;//004C0E40
    //function sub_004C0E7C(?:TActionDragObject; ?:?):?;//004C0E7C
    //function sub_004C0EC8(?:TActionDragObject):?;//004C0EC8
    //procedure sub_004C0EE4(?:?; ?:?; ?:?; ?:?);//004C0EE4
    //procedure sub_004C0F90(?:?; ?:?);//004C0F90
    //procedure sub_004C0FEC(?:?; ?:?);//004C0FEC
    procedure sub_004C1024(?:TCustomActionBarColorMap; ?:TCustomActionBar);//004C1024
    constructor sub_004C107C;//004C107C
    destructor Destroy;//004C10E0
    //function GetDisabledColor:?;//004C111C
    //function GetUnusedColor:?;//004C1154
    //procedure sub_004C1190(?:?; ?:?);//004C1190
    procedure sub_004C11F0(?:TCustomActionBarColorMap; ?:TCustomActionBar);//004C11F0
    procedure SetColor(Value:TColor);//004C1238
    procedure SetFontColor(Value:TColor);//004C12D4
    procedure sub_004C134C;//004C134C
    //procedure sub_004C1360(?:TXPColorMap; ?:?; ?:TColor);//004C1360
    //procedure sub_004C13A8(?:?);//004C13A8
    constructor sub_004C14FC;//004C14FC
    destructor Destroy;//004C15FC
    procedure AlignControls(AControl:TControl; var Rect:TRect);//004C1654
    procedure sub_004C16A8;//004C16A8
    //function sub_004C16B4(?:TCustomActionBar; ?:?; ?:?; ?:?):?;//004C16B4
    procedure sub_004C17C8;//004C17C8
    //procedure CMEnabledChanged(?:?);//004C1860
    //function sub_004C1888(?:?):?;//004C1888
    procedure sub_004C1994;//004C1994
    //function sub_004C1AB0(?:?; ?:?):?;//004C1AB0
    //procedure sub_004C1C60(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004C1C60
    procedure sub_004C225C;//004C225C
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);//004C2408
    //procedure sub_00484338(?:?; ?:?; ?:?);//004C2474
    //procedure sub_004C25EC(?:?);//004C25EC
    //procedure sub_004C263C(?:?);//004C263C
    //function sub_004C2670(?:TCustomActionMainMenuBar; ?:?):?;//004C2670
    //function sub_004C273C:?;//004C273C
    //function sub_004C278C(?:?; ?:?):?;//004C278C
    //function sub_004C2830:?;//004C2830
    //function sub_004C2880(?:TCustomActionMenuBar):?;//004C2880
    //function sub_004C28DC(?:TCustomActionDockBar):?;//004C28DC
    //function sub_004C292C(?:TPoint; ?:?):?;//004C292C
    //function sub_004C29D8(?:TCustomActionBar; ?:?):?;//004C29D8
    //function sub_004C2C20(?:TCustomActionDockBar; ?:TActionClientItem):?;//004C2C20
    //function sub_004C2C78(?:?; ?:?):?;//004C2C78
    //function sub_004C2D1C(?:?; ?:?):?;//004C2D1C
    //function sub_004C2DB0(?:?):?;//004C2DB0
    //function sub_004C2DF8(?:?):?;//004C2DF8
    //function sub_004C2EB8(?:?):?;//004C2EB8
    //function sub_004C2EE8(?:TCustomActionBar):?;//004C2EE8
    //function sub_004C2F3C(?:TCustomActionBar):?;//004C2F3C
    //function sub_004C2FA8:?;//004C2FA8
    procedure sub_004C2FE8;//004C2FE8
    //procedure sub_004C3044(?:?; ?:?);//004C3044
    procedure sub_004C30B8;//004C30B8
    //procedure sub_004C30F0(?:?);//004C30F0
    //procedure sub_004C319C(?:?);//004C319C
    //procedure sub_004C324C(?:?);//004C324C
    //procedure sub_004C3528(?:?);//004C3528
    //procedure sub_004C35D4(?:?);//004C35D4
    procedure sub_004C3608(?:TCustomActionBar; ?:TCustomActionManager);//004C3608
    //procedure sub_004C3678(?:?);//004C3678
    //procedure sub_004C36AC(?:?; ?:?; ?:?);//004C36AC
    //procedure sub_004C3768(?:?; ?:?; ?:?);//004C3768
    //function sub_004C38CC(?:TCustomActionPopupMenu; ?:TActionClientItem):?;//004C38CC
    //procedure sub_004C3918(?:?);//004C3918
    //function sub_004C396C:?;//004C396C
    //function sub_004C3A6C:?;//004C3A6C
    //function sub_004C3B84:?;//004C3B84
    //procedure sub_004C3BC4(?:TCustomActionMenuBar; ?:?);//004C3BC4
    //procedure sub_004C3C04(?:TCustomActionPopupMenu; ?:?);//004C3C04
    //procedure sub_004C3C44(?:?);//004C3C44
    procedure Reset;//004C3C60
    procedure sub_0048513C;//004C3CE0
    //procedure WMContextMenu(?:?);//004C3D68
    //function sub_004C3E24(?:TCustomActionBar):?;//004C3E24
    //procedure sub_004C3E64(?:?);//004C3E64
    //procedure sub_004C3EAC(?:?; ?:?; ?:?);//004C3EAC
    procedure sub_004C3FE8;//004C3FE8
    //procedure sub_004C4058(?:?; ?:?; ?:?; ?:?);//004C4058
    procedure WMPaint(Message:TWMPaint);//004C4134
    //procedure sub_004C4180(?:?);//004C4180
    //function sub_004C4238:?;//004C4238
    //function sub_004C4260(?:TCustomActionBar):?;//004C4260
    //procedure sub_004C42F4(?:?);//004C42F4
    //procedure CMWinIniChange(?:?);//004C4A00
    //function sub_004C4A28(?:TCustomActionBar):?;//004C4A28
    //function sub_004C4A40(?:TCustomActionBar):?;//004C4A40
    //procedure CMMouseLeave(?:?);//004C4A8C
    //procedure sub_00484E9C(?:?);//004C4AD8
    //function sub_004C4B1C:?;//004C4B1C
    constructor sub_004C4B70;//004C4B70
    destructor Destroy;//004C4C34
    procedure sub_004841BC;//004C4C90
    //function sub_004C4CBC(?:TCustomActionControl):?;//004C4CBC
    //function sub_004C4D24(?:TCustomActionControl):?;//004C4D24
    //function sub_004C4D8C(?:TCustomActionControl; ?:?):?;//004C4D8C
    procedure sub_004C4DCC;//004C4DCC
    //procedure CMFontChanged(?:?);//004C50C8
    procedure sub_004854CC;//004C50FC
    //procedure sub_00484E9C(?:?);//004C5168
    //procedure sub_004C522C(?:?);//004C522C
    //procedure sub_004C535C(?:?);//004C535C
    //procedure sub_004C5420(?:?);//004C5420
    //procedure sub_004C5784(?:?);//004C5784
    //procedure sub_004C5A00(?:TRect; ?:?; ?:?);//004C5A00
    //procedure sub_004C5A78(?:TRect; ?:?; ?:?; ?:?; ?:?);//004C5A78
    //function sub_004C5B68:?;//004C5B68
    procedure sub_004C5BA8;//004C5BA8
    procedure sub_004C5FDC;//004C5FDC
    //procedure sub_004C5FF4(?:TCustomActionControl; ?:?);//004C5FF4
    //procedure sub_004C6058(?:?);//004C6058
    //procedure sub_004C617C(?:?);//004C617C
    //procedure sub_004C62B8(?:?);//004C62B8
    procedure sub_004C62F8(?:TCustomActionControl);//004C62F8
    //procedure sub_004C6334(?:?);//004C6334
    //procedure sub_004C6394(?:TCustomMenuItem; ?:?);//004C6394
    //procedure sub_004C6404(?:TCustomActionControl; ?:?);//004C6404
    //procedure sub_004C6458(?:?);//004C6458
    procedure sub_004C64C8;//004C64C8
    //procedure CMDesignHitTest(?:?);//004C6500
    //procedure CMHintShow(?:?);//004C651C
    //procedure sub_004C6570(?:?);//004C6570
    procedure sub_004C6594(?:TCustomActionControl);//004C6594
    //procedure sub_00484338(?:?; ?:?; ?:?);//004C660C
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);//004C664C
    procedure sub_004C6868(?:TCustomActionControl);//004C6868
    //procedure sub_0048437C(?:?);//004C69C0
    //function sub_004C6A18(?:TCustomActionControl):?;//004C6A18
    //procedure WMSetText(?:?);//004C6A64
    //function sub_004C6AA0:?;//004C6AA0
    //function sub_004C6AD0:?;//004C6AD0
    //function sub_004C6B28:?;//004C6B28
    //function sub_004C6B70:?;//004C6B70
    //function sub_004C6BC4:?;//004C6BC4
    procedure sub_004C6BF8;//004C6BF8
    //function sub_004C6C1C(?:TCustomActionControl):?;//004C6C1C
    //procedure CMTextChanged(?:?);//004C6C40
    procedure sub_004C6C74(?:TCustomActionControl);//004C6C74
    procedure sub_004C6D68;//004C6D68
    //procedure sub_004C6ED8(?:?; ?:?);//004C6ED8
    //procedure sub_004C7184(?:?; ?:?);//004C7184
    //procedure WMContextMenu(?:?);//004C71C8
    //procedure sub_004C727C(?:TCustomActionControl; ?:?);//004C727C
    //procedure sub_004C72E4(?:?);//004C72E4
    //function sub_004C7318(?:TActionBarStyleList; ?:?):?;//004C7318

implementation

//004BBEE0
{*procedure TXToolDockForm.CMDialogChar(?:?);
begin
 004BBEE0    push        ebp
 004BBEE1    mov         ebp,esp
 004BBEE3    add         esp,0FFFFFFF8
 004BBEE6    mov         dword ptr [ebp-8],edx
 004BBEE9    mov         dword ptr [ebp-4],eax
 004BBEEC    mov         eax,[0056E3C0];^Application:TApplication
 004BBEF1    mov         eax,dword ptr [eax]
 004BBEF3    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004BBEF7    je          004BBF0B
 004BBEF9    mov         edx,dword ptr [ebp-8]
 004BBEFC    mov         eax,[0056E3C0];^Application:TApplication
 004BBF01    mov         eax,dword ptr [eax]
 004BBF03    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004BBF06    mov         ecx,dword ptr [eax]
 004BBF08    call        dword ptr [ecx-14];TObject.Dispatch
 004BBF0B    mov         eax,dword ptr [ebp-8]
 004BBF0E    cmp         dword ptr [eax+0C],0
>004BBF12    jne         004BBF1F
 004BBF14    mov         edx,dword ptr [ebp-8]
 004BBF17    mov         eax,dword ptr [ebp-4]
 004BBF1A    call        TWinControl.CMDialogChar
 004BBF1F    pop         ecx
 004BBF20    pop         ecx
 004BBF21    pop         ebp
 004BBF22    ret
end;*}

//004BBF24
procedure sub_004BBF24(?:TCustomActionBar);
begin
{*
 004BBF24    push        ebp
 004BBF25    mov         ebp,esp
 004BBF27    push        ecx
 004BBF28    mov         dword ptr [ebp-4],eax
 004BBF2B    cmp         dword ptr ds:[56CB8C],0;gvar_0056CB8C
>004BBF32    je          004BBF59
 004BBF34    cmp         dword ptr [ebp-4],0
>004BBF38    je          004BBF4C
 004BBF3A    cmp         dword ptr [ebp-4],0
>004BBF3E    je          004BBF59
 004BBF40    mov         eax,dword ptr [ebp-4]
 004BBF43    cmp         byte ptr [eax+224],0;TCustomActionMenuBar.FDesignable:Boolean
>004BBF4A    je          004BBF59
 004BBF4C    mov         edx,dword ptr [ebp-4]
 004BBF4F    mov         eax,[0056CB8C];0x0 gvar_0056CB8C
 004BBF54    mov         ecx,dword ptr [eax]
 004BBF56    call        dword ptr [ecx+14]
 004BBF59    pop         ecx
 004BBF5A    pop         ebp
 004BBF5B    ret
*}
end;

//004BBF5C
constructor sub_004BBF5C;
begin
{*
 004BBF5C    push        ebp
 004BBF5D    mov         ebp,esp
 004BBF5F    add         esp,0FFFFFFE0
 004BBF62    push        ebx
 004BBF63    xor         ebx,ebx
 004BBF65    mov         dword ptr [ebp-1C],ebx
 004BBF68    mov         dword ptr [ebp-20],ebx
 004BBF6B    test        dl,dl
>004BBF6D    je          004BBF77
 004BBF6F    add         esp,0FFFFFFF0
 004BBF72    call        @ClassCreate
 004BBF77    mov         dword ptr [ebp-0C],ecx
 004BBF7A    mov         byte ptr [ebp-5],dl
 004BBF7D    mov         dword ptr [ebp-4],eax
 004BBF80    xor         eax,eax
 004BBF82    push        ebp
 004BBF83    push        4BC057
 004BBF88    push        dword ptr fs:[eax]
 004BBF8B    mov         dword ptr fs:[eax],esp
 004BBF8E    mov         ecx,dword ptr [ebp-0C]
 004BBF91    xor         edx,edx
 004BBF93    mov         eax,dword ptr [ebp-4]
 004BBF96    call        00493448
 004BBF9B    mov         eax,dword ptr [ebp-4]
 004BBF9E    and         byte ptr [eax+24],0FE;TCustomActionManager.FComponentStyle:TComponentStyle
 004BBFA2    mov         eax,dword ptr [ebp-4]
 004BBFA5    call        004BC19C
 004BBFAA    mov         edx,dword ptr [ebp-4]
 004BBFAD    mov         dword ptr [edx+6C],eax;TCustomActionManager.FActionBars:TActionBars
 004BBFB0    mov         dl,1
 004BBFB2    mov         eax,[0041DB24];TStringList
 004BBFB7    call        TObject.Create;TStringList.Create
 004BBFBC    mov         edx,dword ptr [ebp-4]
 004BBFBF    mov         dword ptr [edx+94],eax;TCustomActionManager.FPrioritySchedule:TStringList
 004BBFC5    mov         eax,dword ptr [ebp-4]
 004BBFC8    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 004BBFCE    mov         edx,dword ptr ds:[56CB88];^gvar_004BBD0C
 004BBFD4    mov         ecx,dword ptr [eax]
 004BBFD6    call        dword ptr [ecx+2C];TStringList.sub_0042291C
 004BBFD9    mov         eax,dword ptr [ebp-4]
 004BBFDC    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 004BBFE2    mov         edx,dword ptr [eax]
 004BBFE4    call        dword ptr [edx+14];TStringList.sub_00423008
 004BBFE7    dec         eax
 004BBFE8    test        eax,eax
>004BBFEA    jl          004BC03C
 004BBFEC    inc         eax
 004BBFED    mov         dword ptr [ebp-14],eax
 004BBFF0    mov         dword ptr [ebp-10],0
 004BBFF7    mov         eax,dword ptr [ebp-4]
 004BBFFA    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 004BC000    mov         dword ptr [ebp-18],eax
 004BC003    lea         ecx,[ebp-20]
 004BC006    mov         edx,dword ptr [ebp-10]
 004BC009    mov         eax,dword ptr [ebp-18]
 004BC00C    call        0042203C
 004BC011    mov         edx,dword ptr [ebp-20]
 004BC014    lea         ecx,[ebp-1C]
 004BC017    mov         eax,dword ptr [ebp-18]
 004BC01A    call        0042225C
 004BC01F    mov         eax,dword ptr [ebp-1C]
 004BC022    call        0040C468
 004BC027    mov         ecx,eax
 004BC029    mov         edx,dword ptr [ebp-10]
 004BC02C    mov         eax,dword ptr [ebp-18]
 004BC02F    mov         ebx,dword ptr [eax]
 004BC031    call        dword ptr [ebx+24];TStringList.sub_004232C0
 004BC034    inc         dword ptr [ebp-10]
 004BC037    dec         dword ptr [ebp-14]
>004BC03A    jne         004BBFF7
 004BC03C    xor         eax,eax
 004BC03E    pop         edx
 004BC03F    pop         ecx
 004BC040    pop         ecx
 004BC041    mov         dword ptr fs:[eax],edx
 004BC044    push        4BC05E
 004BC049    lea         eax,[ebp-20]
 004BC04C    mov         edx,2
 004BC051    call        @LStrArrayClr
 004BC056    ret
>004BC057    jmp         @HandleFinally
>004BC05C    jmp         004BC049
 004BC05E    mov         eax,dword ptr [ebp-4]
 004BC061    cmp         byte ptr [ebp-5],0
>004BC065    je          004BC076
 004BC067    call        @AfterConstruction
 004BC06C    pop         dword ptr fs:[0]
 004BC073    add         esp,0C
 004BC076    mov         eax,dword ptr [ebp-4]
 004BC079    pop         ebx
 004BC07A    mov         esp,ebp
 004BC07C    pop         ebp
 004BC07D    ret
*}
end;

//004BC080
destructor TCustomActionManager.Destroy;
begin
{*
 004BC080    push        ebp
 004BC081    mov         ebp,esp
 004BC083    add         esp,0FFFFFFF8
 004BC086    call        @BeforeDestruction
 004BC08B    mov         byte ptr [ebp-5],dl
 004BC08E    mov         dword ptr [ebp-4],eax
 004BC091    mov         eax,dword ptr [ebp-4]
 004BC094    mov         eax,dword ptr [eax+94]
 004BC09A    call        TObject.Free
 004BC09F    mov         eax,dword ptr [ebp-4]
 004BC0A2    mov         eax,dword ptr [eax+6C]
 004BC0A5    call        TObject.Free
 004BC0AA    mov         eax,dword ptr [ebp-4]
 004BC0AD    mov         eax,dword ptr [eax+88]
 004BC0B3    call        TObject.Free
 004BC0B8    mov         eax,dword ptr [ebp-4]
 004BC0BB    cmp         dword ptr [eax+84],0
>004BC0C2    je          004BC0D2
 004BC0C4    mov         eax,dword ptr [ebp-4]
 004BC0C7    mov         eax,dword ptr [eax+84]
 004BC0CD    call        TObject.Free
 004BC0D2    mov         dl,byte ptr [ebp-5]
 004BC0D5    and         dl,0FC
 004BC0D8    mov         eax,dword ptr [ebp-4]
 004BC0DB    call        TCustomActionList.Destroy
 004BC0E0    cmp         byte ptr [ebp-5],0
>004BC0E4    jle         004BC0EE
 004BC0E6    mov         eax,dword ptr [ebp-4]
 004BC0E9    call        @ClassDestroy
 004BC0EE    pop         ecx
 004BC0EF    pop         ecx
 004BC0F0    pop         ebp
 004BC0F1    ret
*}
end;

//004BC0F4
{*procedure sub_004BC0F4(?:?);
begin
 004BC0F4    push        ebp
 004BC0F5    mov         ebp,esp
 004BC0F7    add         esp,0FFFFFFF8
 004BC0FA    mov         dword ptr [ebp-8],edx
 004BC0FD    mov         dword ptr [ebp-4],eax
 004BC100    mov         edx,dword ptr [ebp-8]
 004BC103    mov         eax,dword ptr [ebp-4]
 004BC106    call        00420AD4
 004BC10B    mov         eax,dword ptr [ebp-8]
 004BC10E    mov         edx,dword ptr ds:[4BA3B0];TCustomActionManager
 004BC114    call        @IsClass
 004BC119    test        al,al
>004BC11B    je          004BC198
 004BC11D    mov         eax,dword ptr [ebp-8]
 004BC120    mov         edx,dword ptr [eax+6C]
 004BC123    mov         eax,dword ptr [ebp-4]
 004BC126    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BC129    mov         ecx,dword ptr [eax]
 004BC12B    call        dword ptr [ecx+8];TActionBars.sub_00421384
 004BC12E    mov         eax,dword ptr [ebp-4]
 004BC131    add         eax,8C;TCustomActionManager.FFileName:TFileName
 004BC136    mov         edx,dword ptr [ebp-8]
 004BC139    mov         edx,dword ptr [edx+8C]
 004BC13F    call        @LStrAsg
 004BC144    mov         eax,dword ptr [ebp-4]
 004BC147    cmp         dword ptr [eax+38],0;TCustomActionManager.FImages:TCustomImageList
>004BC14B    je          004BC15E
 004BC14D    mov         eax,dword ptr [ebp-8]
 004BC150    mov         edx,dword ptr [eax+38]
 004BC153    mov         eax,dword ptr [ebp-4]
 004BC156    mov         eax,dword ptr [eax+38];TCustomActionManager.FImages:TCustomImageList
 004BC159    mov         ecx,dword ptr [eax]
 004BC15B    call        dword ptr [ecx+8];TCustomImageList.sub_00495BDC
 004BC15E    mov         eax,dword ptr [ebp-8]
 004BC161    mov         edx,dword ptr [eax+94]
 004BC167    mov         eax,dword ptr [ebp-4]
 004BC16A    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 004BC170    mov         ecx,dword ptr [eax]
 004BC172    call        dword ptr [ecx+8];TStringList.sub_00421BB0
 004BC175    mov         eax,dword ptr [ebp-8]
 004BC178    cmp         dword ptr [eax+84],0
>004BC17F    je          004BC198
 004BC181    mov         eax,dword ptr [ebp-8]
 004BC184    call        TActionManager.GetLinkedActionLists
 004BC189    push        eax
 004BC18A    mov         eax,dword ptr [ebp-4]
 004BC18D    call        TActionManager.GetLinkedActionLists
 004BC192    pop         edx
 004BC193    mov         ecx,dword ptr [eax]
 004BC195    call        dword ptr [ecx+8]
 004BC198    pop         ecx
 004BC199    pop         ecx
 004BC19A    pop         ebp
 004BC19B    ret
end;*}

//004BC19C
{*function sub_004BC19C(?:TCustomActionManager):?;
begin
 004BC19C    push        ebp
 004BC19D    mov         ebp,esp
 004BC19F    add         esp,0FFFFFFF8
 004BC1A2    push        esi
 004BC1A3    mov         dword ptr [ebp-4],eax
 004BC1A6    mov         eax,dword ptr [ebp-4]
 004BC1A9    mov         si,0FFEE
 004BC1AD    call        @CallDynaInst;TCustomActionManager.sub_004BD1B0
 004BC1B2    push        eax
 004BC1B3    mov         eax,dword ptr [ebp-4]
 004BC1B6    mov         si,0FFEF
 004BC1BA    call        @CallDynaInst;TCustomActionManager.sub_004BD164
 004BC1BF    mov         ecx,dword ptr [ebp-4]
 004BC1C2    mov         dl,1
 004BC1C4    call        004BEECC
 004BC1C9    mov         dword ptr [ebp-8],eax
 004BC1CC    mov         eax,dword ptr [ebp-8]
 004BC1CF    pop         esi
 004BC1D0    pop         ecx
 004BC1D1    pop         ecx
 004BC1D2    pop         ebp
 004BC1D3    ret
end;*}

//004BC1D4
function StyleNameStored:Boolean;
begin
{*
 004BC1D4    push        ebp
 004BC1D5    mov         ebp,esp
 004BC1D7    push        ecx
 004BC1D8    mov         eax,dword ptr [ebp+8]
 004BC1DB    mov         eax,dword ptr [eax-4]
 004BC1DE    cmp         dword ptr [eax+20],0
>004BC1E2    je          004BC205
 004BC1E4    mov         eax,dword ptr [ebp+8]
 004BC1E7    mov         eax,dword ptr [eax-8]
 004BC1EA    mov         eax,dword ptr [eax+0C8]
 004BC1F0    mov         edx,dword ptr [ebp+8]
 004BC1F3    mov         edx,dword ptr [edx-4]
 004BC1F6    mov         edx,dword ptr [edx+20]
 004BC1F9    cmp         eax,dword ptr [edx+0C8]
 004BC1FF    setne       byte ptr [ebp-1]
>004BC203    jmp         004BC216
 004BC205    mov         eax,dword ptr [ebp+8]
 004BC208    mov         eax,dword ptr [eax-8]
 004BC20B    cmp         dword ptr [eax+0C8],0
 004BC212    setne       byte ptr [ebp-1]
 004BC216    mov         al,byte ptr [ebp-1]
 004BC219    pop         ecx
 004BC21A    pop         ebp
 004BC21B    ret
*}
end;

//004BC21C
procedure TCustomActionManager.DefineProperties(Filer:TFiler);
begin
{*
 004BC21C    push        ebp
 004BC21D    mov         ebp,esp
 004BC21F    add         esp,0FFFFFFF8
 004BC222    push        ebx
 004BC223    mov         dword ptr [ebp-4],edx
 004BC226    mov         dword ptr [ebp-8],eax
 004BC229    mov         edx,dword ptr [ebp-4]
 004BC22C    mov         eax,dword ptr [ebp-8]
 004BC22F    call        TComponent.DefineProperties
 004BC234    mov         eax,dword ptr [ebp-8]
 004BC237    push        eax
 004BC238    push        4BD2A0;TCustomActionManager.ReadStyleProp
 004BC23D    mov         eax,dword ptr [ebp-8]
 004BC240    push        eax
 004BC241    push        4BD384;TCustomActionManager.WriteStyleProp
 004BC246    push        ebp
 004BC247    call        StyleNameStored
 004BC24C    pop         ecx
 004BC24D    mov         ecx,eax
 004BC24F    mov         edx,4BC26C;'StyleName'
 004BC254    mov         eax,dword ptr [ebp-4]
 004BC257    mov         ebx,dword ptr [eax]
 004BC259    call        dword ptr [ebx+4]
 004BC25C    pop         ebx
 004BC25D    pop         ecx
 004BC25E    pop         ecx
 004BC25F    pop         ebp
 004BC260    ret
*}
end;

//004BC278
{*function sub_004BC278(?:TCustomActionManager; ?:?; ?:?):?;
begin
 004BC278    push        ebp
 004BC279    mov         ebp,esp
 004BC27B    add         esp,0FFFFFFE8
 004BC27E    mov         dword ptr [ebp-0C],ecx
 004BC281    mov         dword ptr [ebp-8],edx
 004BC284    mov         dword ptr [ebp-4],eax
 004BC287    xor         eax,eax
 004BC289    mov         dword ptr [ebp-10],eax
 004BC28C    cmp         dword ptr [ebp-0C],0
>004BC290    jne         004BC29B
 004BC292    mov         eax,dword ptr [ebp-4]
 004BC295    mov         eax,dword ptr [eax+6C]
 004BC298    mov         dword ptr [ebp-0C],eax
 004BC29B    mov         eax,dword ptr [ebp-0C]
 004BC29E    call        0042158C
 004BC2A3    dec         eax
 004BC2A4    test        eax,eax
>004BC2A6    jl          004BC33C
 004BC2AC    inc         eax
 004BC2AD    mov         dword ptr [ebp-18],eax
 004BC2B0    mov         dword ptr [ebp-14],0
 004BC2B7    mov         edx,dword ptr [ebp-14]
 004BC2BA    mov         eax,dword ptr [ebp-0C]
 004BC2BD    call        004BD7C8
 004BC2C2    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004BC2C8    call        @IsClass
 004BC2CD    test        al,al
>004BC2CF    je          004BC2F6
 004BC2D1    mov         edx,dword ptr [ebp-14]
 004BC2D4    mov         eax,dword ptr [ebp-0C]
 004BC2D7    call        004BD7C8
 004BC2DC    call        TActionClientItem.GetAction
 004BC2E1    cmp         eax,dword ptr [ebp-8]
>004BC2E4    jne         004BC2F6
 004BC2E6    mov         edx,dword ptr [ebp-14]
 004BC2E9    mov         eax,dword ptr [ebp-0C]
 004BC2EC    call        004BD7C8
 004BC2F1    mov         dword ptr [ebp-10],eax
>004BC2F4    jmp         004BC33C
 004BC2F6    mov         edx,dword ptr [ebp-14]
 004BC2F9    mov         eax,dword ptr [ebp-0C]
 004BC2FC    call        004BD7C8
 004BC301    call        004BE56C
 004BC306    test        al,al
>004BC308    je          004BC330
 004BC30A    mov         edx,dword ptr [ebp-14]
 004BC30D    mov         eax,dword ptr [ebp-0C]
 004BC310    call        004BD7C8
 004BC315    call        TActionClient.GetItems
 004BC31A    mov         ecx,eax
 004BC31C    mov         edx,dword ptr [ebp-8]
 004BC31F    mov         eax,dword ptr [ebp-4]
 004BC322    call        004BC278
 004BC327    mov         dword ptr [ebp-10],eax
 004BC32A    cmp         dword ptr [ebp-10],0
>004BC32E    jne         004BC33C
 004BC330    inc         dword ptr [ebp-14]
 004BC333    dec         dword ptr [ebp-18]
>004BC336    jne         004BC2B7
 004BC33C    mov         eax,dword ptr [ebp-10]
 004BC33F    mov         esp,ebp
 004BC341    pop         ebp
 004BC342    ret
end;*}

//004BC344
{*function sub_004BC344(?:TCustomActionManager; ?:?; ?:TActionBars):?;
begin
 004BC344    push        ebp
 004BC345    mov         ebp,esp
 004BC347    add         esp,0FFFFFFE8
 004BC34A    mov         dword ptr [ebp-0C],ecx
 004BC34D    mov         dword ptr [ebp-8],edx
 004BC350    mov         dword ptr [ebp-4],eax
 004BC353    xor         eax,eax
 004BC355    mov         dword ptr [ebp-10],eax
 004BC358    cmp         dword ptr [ebp-0C],0
>004BC35C    jne         004BC367
 004BC35E    mov         eax,dword ptr [ebp-4]
 004BC361    mov         eax,dword ptr [eax+6C]
 004BC364    mov         dword ptr [ebp-0C],eax
 004BC367    mov         eax,dword ptr [ebp-0C]
 004BC36A    call        0042158C
 004BC36F    dec         eax
 004BC370    test        eax,eax
>004BC372    jl          004BC3E4
 004BC374    inc         eax
 004BC375    mov         dword ptr [ebp-18],eax
 004BC378    mov         dword ptr [ebp-14],0
 004BC37F    mov         edx,dword ptr [ebp-14]
 004BC382    mov         eax,dword ptr [ebp-0C]
 004BC385    call        004BD7C8
 004BC38A    mov         eax,dword ptr [eax+0C]
 004BC38D    cmp         eax,dword ptr [ebp-8]
>004BC390    jne         004BC3A2
 004BC392    mov         edx,dword ptr [ebp-14]
 004BC395    mov         eax,dword ptr [ebp-0C]
 004BC398    call        004BD7C8
 004BC39D    mov         dword ptr [ebp-10],eax
>004BC3A0    jmp         004BC3E4
 004BC3A2    mov         edx,dword ptr [ebp-14]
 004BC3A5    mov         eax,dword ptr [ebp-0C]
 004BC3A8    call        004BD7C8
 004BC3AD    call        004BE56C
 004BC3B2    test        al,al
>004BC3B4    je          004BC3DC
 004BC3B6    mov         edx,dword ptr [ebp-14]
 004BC3B9    mov         eax,dword ptr [ebp-0C]
 004BC3BC    call        004BD7C8
 004BC3C1    call        TActionClient.GetItems
 004BC3C6    mov         ecx,eax
 004BC3C8    mov         edx,dword ptr [ebp-8]
 004BC3CB    mov         eax,dword ptr [ebp-4]
 004BC3CE    call        004BC344
 004BC3D3    mov         dword ptr [ebp-10],eax
 004BC3D6    cmp         dword ptr [ebp-10],0
>004BC3DA    jne         004BC3E4
 004BC3DC    inc         dword ptr [ebp-14]
 004BC3DF    dec         dword ptr [ebp-18]
>004BC3E2    jne         004BC37F
 004BC3E4    mov         eax,dword ptr [ebp-10]
 004BC3E7    mov         esp,ebp
 004BC3E9    pop         ebp
 004BC3EA    ret
end;*}

//004BC3EC
procedure sub_004BC3EC(?:TCustomActionManager; ?:TFileName);
begin
{*
 004BC3EC    push        ebp
 004BC3ED    mov         ebp,esp
 004BC3EF    add         esp,0FFFFFFE4
 004BC3F2    push        ebx
 004BC3F3    push        esi
 004BC3F4    push        edi
 004BC3F5    xor         ecx,ecx
 004BC3F7    mov         dword ptr [ebp-10],ecx
 004BC3FA    mov         dword ptr [ebp-14],ecx
 004BC3FD    mov         dword ptr [ebp-8],edx
 004BC400    mov         dword ptr [ebp-4],eax
 004BC403    xor         eax,eax
 004BC405    push        ebp
 004BC406    push        4BC4EA
 004BC40B    push        dword ptr fs:[eax]
 004BC40E    mov         dword ptr fs:[eax],esp
 004BC411    push        20
 004BC413    mov         ecx,dword ptr [ebp-8]
 004BC416    mov         dl,1
 004BC418    mov         eax,[0041DD24];TFileStream
 004BC41D    call        TFileStream.Create;TFileStream.Create
 004BC422    mov         dword ptr [ebp-0C],eax
 004BC425    xor         eax,eax
 004BC427    push        ebp
 004BC428    push        4BC4C8
 004BC42D    push        dword ptr fs:[eax]
 004BC430    mov         dword ptr fs:[eax],esp
 004BC433    xor         eax,eax
 004BC435    push        ebp
 004BC436    push        4BC456
 004BC43B    push        dword ptr fs:[eax]
 004BC43E    mov         dword ptr fs:[eax],esp
 004BC441    mov         edx,dword ptr [ebp-0C]
 004BC444    mov         eax,dword ptr [ebp-4]
 004BC447    call        004BC4FC
 004BC44C    xor         eax,eax
 004BC44E    pop         edx
 004BC44F    pop         ecx
 004BC450    pop         ecx
 004BC451    mov         dword ptr fs:[eax],edx
>004BC454    jmp         004BC4B2
>004BC456    jmp         @HandleAnyException
 004BC45B    lea         eax,[ebp-0C]
 004BC45E    call        FreeAndNil
 004BC463    push        0
 004BC465    lea         eax,[ebp-10]
 004BC468    push        eax
 004BC469    lea         edx,[ebp-14]
 004BC46C    mov         eax,[0056DFDC];^SResString3:TResStringRec
 004BC471    call        LoadResString
 004BC476    mov         eax,dword ptr [ebp-14]
 004BC479    push        eax
 004BC47A    mov         eax,dword ptr [ebp-8]
 004BC47D    mov         dword ptr [ebp-1C],eax
 004BC480    mov         byte ptr [ebp-18],0B
 004BC484    lea         edx,[ebp-1C]
 004BC487    xor         ecx,ecx
 004BC489    pop         eax
 004BC48A    call        0040D630
 004BC48F    mov         eax,dword ptr [ebp-10]
 004BC492    mov         cx,word ptr ds:[4BC4F8];0x3 gvar_004BC4F8
 004BC499    mov         dl,1
 004BC49B    call        0043F788
 004BC4A0    cmp         eax,6
>004BC4A3    jne         004BC4AD
 004BC4A5    mov         eax,dword ptr [ebp-8]
 004BC4A8    call        0040CAA4
 004BC4AD    call        @DoneExcept
 004BC4B2    xor         eax,eax
 004BC4B4    pop         edx
 004BC4B5    pop         ecx
 004BC4B6    pop         ecx
 004BC4B7    mov         dword ptr fs:[eax],edx
 004BC4BA    push        4BC4CF
 004BC4BF    lea         eax,[ebp-0C]
 004BC4C2    call        FreeAndNil
 004BC4C7    ret
>004BC4C8    jmp         @HandleFinally
>004BC4CD    jmp         004BC4BF
 004BC4CF    xor         eax,eax
 004BC4D1    pop         edx
 004BC4D2    pop         ecx
 004BC4D3    pop         ecx
 004BC4D4    mov         dword ptr fs:[eax],edx
 004BC4D7    push        4BC4F1
 004BC4DC    lea         eax,[ebp-14]
 004BC4DF    mov         edx,2
 004BC4E4    call        @LStrArrayClr
 004BC4E9    ret
>004BC4EA    jmp         @HandleFinally
>004BC4EF    jmp         004BC4DC
 004BC4F1    pop         edi
 004BC4F2    pop         esi
 004BC4F3    pop         ebx
 004BC4F4    mov         esp,ebp
 004BC4F6    pop         ebp
 004BC4F7    ret
*}
end;

//004BC4FC
{*procedure sub_004BC4FC(?:?; ?:TFileStream);
begin
 004BC4FC    push        ebp
 004BC4FD    mov         ebp,esp
 004BC4FF    add         esp,0FFFFFFF4
 004BC502    push        ebx
 004BC503    push        esi
 004BC504    push        edi
 004BC505    mov         dword ptr [ebp-8],edx
 004BC508    mov         dword ptr [ebp-4],eax
 004BC50B    mov         dl,1
 004BC50D    mov         eax,[0041DE14];TMemoryStream
 004BC512    call        TObject.Create;TMemoryStream.Create
 004BC517    mov         dword ptr [ebp-0C],eax
 004BC51A    mov         eax,dword ptr [ebp-4]
 004BC51D    mov         byte ptr [eax+90],1
 004BC524    xor         eax,eax
 004BC526    push        ebp
 004BC527    push        4BC5EA
 004BC52C    push        dword ptr fs:[eax]
 004BC52F    mov         dword ptr fs:[eax],esp
 004BC532    mov         eax,dword ptr [ebp-4]
 004BC535    call        004BC19C
 004BC53A    mov         edx,dword ptr [ebp-4]
 004BC53D    mov         dword ptr [edx+88],eax
 004BC543    mov         eax,dword ptr [ebp-4]
 004BC546    mov         edx,dword ptr [eax+6C]
 004BC549    mov         eax,dword ptr [ebp-4]
 004BC54C    mov         eax,dword ptr [eax+88]
 004BC552    mov         ecx,dword ptr [eax]
 004BC554    call        dword ptr [ecx+8]
 004BC557    xor         eax,eax
 004BC559    push        ebp
 004BC55A    push        4BC5A7
 004BC55F    push        dword ptr fs:[eax]
 004BC562    mov         dword ptr fs:[eax],esp
 004BC565    mov         edx,dword ptr [ebp-8]
 004BC568    mov         eax,dword ptr [ebp-0C]
 004BC56B    call        00423F44
 004BC570    push        0
 004BC572    push        0
 004BC574    mov         eax,dword ptr [ebp-0C]
 004BC577    call        TStream.SetPosition
 004BC57C    mov         edx,dword ptr [ebp-4]
 004BC57F    mov         eax,dword ptr [ebp-0C]
 004BC582    call        00423940
 004BC587    mov         eax,dword ptr [ebp-4]
 004BC58A    call        0042A86C
 004BC58F    mov         eax,dword ptr [ebp-4]
 004BC592    mov         edx,dword ptr [eax+6C]
 004BC595    mov         eax,dword ptr [ebp-4]
 004BC598    call        004BCAC4
 004BC59D    xor         eax,eax
 004BC59F    pop         edx
 004BC5A0    pop         ecx
 004BC5A1    pop         ecx
 004BC5A2    mov         dword ptr fs:[eax],edx
>004BC5A5    jmp         004BC5CA
>004BC5A7    jmp         @HandleAnyException
 004BC5AC    mov         eax,dword ptr [ebp-4]
 004BC5AF    mov         edx,dword ptr [eax+88]
 004BC5B5    mov         eax,dword ptr [ebp-4]
 004BC5B8    mov         eax,dword ptr [eax+6C]
 004BC5BB    mov         ecx,dword ptr [eax]
 004BC5BD    call        dword ptr [ecx+8]
 004BC5C0    call        @RaiseAgain
 004BC5C5    call        @DoneExcept
 004BC5CA    xor         eax,eax
 004BC5CC    pop         edx
 004BC5CD    pop         ecx
 004BC5CE    pop         ecx
 004BC5CF    mov         dword ptr fs:[eax],edx
 004BC5D2    push        4BC5F1
 004BC5D7    mov         eax,dword ptr [ebp-4]
 004BC5DA    mov         byte ptr [eax+90],0
 004BC5E1    mov         eax,dword ptr [ebp-0C]
 004BC5E4    call        TObject.Free
 004BC5E9    ret
>004BC5EA    jmp         @HandleFinally
>004BC5EF    jmp         004BC5D7
 004BC5F1    pop         edi
 004BC5F2    pop         esi
 004BC5F3    pop         ebx
 004BC5F4    mov         esp,ebp
 004BC5F6    pop         ebp
 004BC5F7    ret
end;*}

//004BC5F8
procedure sub_004BC5F8;
begin
{*
 004BC5F8    push        ebp
 004BC5F9    mov         ebp,esp
 004BC5FB    add         esp,0FFFFFFF4
 004BC5FE    push        ebx
 004BC5FF    mov         dword ptr [ebp-4],eax
 004BC602    mov         eax,dword ptr [ebp-4]
 004BC605    call        0042A86C
 004BC60A    mov         eax,dword ptr [ebp-4]
 004BC60D    cmp         byte ptr [eax+90],0;TCustomActionManager.FLoading:Boolean
>004BC614    jne         004BC6EB
 004BC61A    mov         eax,dword ptr [ebp-4]
 004BC61D    test        byte ptr [eax+1C],10;TCustomActionManager.FComponentState:TComponentState
>004BC621    jne         004BC648
 004BC623    mov         eax,dword ptr [ebp-4]
 004BC626    mov         eax,dword ptr [eax+8C];TCustomActionManager.FFileName:TFileName
 004BC62C    call        0040C94C
 004BC631    test        al,al
>004BC633    je          004BC648
 004BC635    mov         eax,dword ptr [ebp-4]
 004BC638    mov         edx,dword ptr [eax+8C];TCustomActionManager.FFileName:TFileName
 004BC63E    mov         eax,dword ptr [ebp-4]
 004BC641    call        004BC3EC
>004BC646    jmp         004BC656
 004BC648    mov         eax,dword ptr [ebp-4]
 004BC64B    mov         edx,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BC64E    mov         eax,dword ptr [ebp-4]
 004BC651    call        004BCAC4
 004BC656    mov         eax,dword ptr [ebp-4]
 004BC659    test        byte ptr [eax+1C],10;TCustomActionManager.FComponentState:TComponentState
>004BC65D    jne         004BC668
 004BC65F    mov         eax,dword ptr [ebp-4]
 004BC662    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BC665    inc         dword ptr [eax+28];TActionBars.SessionCount:Integer
 004BC668    mov         eax,dword ptr [ebp-4]
 004BC66B    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BC66E    call        0042158C
 004BC673    dec         eax
 004BC674    test        eax,eax
>004BC676    jl          004BC6EB
 004BC678    inc         eax
 004BC679    mov         dword ptr [ebp-0C],eax
 004BC67C    mov         dword ptr [ebp-8],0
 004BC683    mov         edx,dword ptr [ebp-8]
 004BC686    mov         eax,dword ptr [ebp-4]
 004BC689    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BC68C    call        004BEFA4
 004BC691    cmp         dword ptr [eax+0C],0
>004BC695    je          004BC6E3
 004BC697    mov         edx,dword ptr [ebp-8]
 004BC69A    mov         eax,dword ptr [ebp-4]
 004BC69D    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BC6A0    call        004BEFA4
 004BC6A5    mov         eax,dword ptr [eax+0C]
 004BC6A8    call        004C4A40
 004BC6AD    mov         ebx,eax
 004BC6AF    mov         edx,dword ptr [ebp-8]
 004BC6B2    mov         eax,dword ptr [ebp-4]
 004BC6B5    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BC6B8    call        004BEFA4
 004BC6BD    mov         eax,dword ptr [eax+0C]
 004BC6C0    cmp         ebx,dword ptr [eax+274]
>004BC6C6    jne         004BC6E3
 004BC6C8    mov         edx,dword ptr [ebp-8]
 004BC6CB    mov         eax,dword ptr [ebp-4]
 004BC6CE    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BC6D1    call        004BEFA4
 004BC6D6    mov         eax,dword ptr [eax+0C]
 004BC6D9    xor         edx,edx
 004BC6DB    mov         ecx,dword ptr [eax]
 004BC6DD    call        dword ptr [ecx+12C]
 004BC6E3    inc         dword ptr [ebp-8]
 004BC6E6    dec         dword ptr [ebp-0C]
>004BC6E9    jne         004BC683
 004BC6EB    pop         ebx
 004BC6EC    mov         esp,ebp
 004BC6EE    pop         ebp
 004BC6EF    ret
*}
end;

//004BC6F0
{*procedure sub_004BC6F0(?:?; ?:?);
begin
 004BC6F0    push        ebp
 004BC6F1    mov         ebp,esp
 004BC6F3    add         esp,0FFFFFFE0
 004BC6F6    mov         byte ptr [ebp-9],cl
 004BC6F9    mov         dword ptr [ebp-8],edx
 004BC6FC    mov         dword ptr [ebp-4],eax
 004BC6FF    mov         cl,byte ptr [ebp-9]
 004BC702    mov         edx,dword ptr [ebp-8]
 004BC705    mov         eax,dword ptr [ebp-4]
 004BC708    call        00493690
 004BC70D    mov         eax,[0056E3C0];^Application:TApplication
 004BC712    mov         eax,dword ptr [eax]
 004BC714    cmp         byte ptr [eax+9C],0;TApplication.FTerminate:Boolean
>004BC71B    je          004BC756
 004BC71D    mov         eax,dword ptr [ebp-4]
 004BC720    mov         eax,dword ptr [eax+8C];TCustomActionManager.FFileName:TFileName
 004BC726    call        @LStrLen
 004BC72B    test        eax,eax
>004BC72D    jle         004BC756
 004BC72F    mov         eax,dword ptr [ebp-4]
 004BC732    cmp         byte ptr [eax+98],0;TCustomActionManager.FSaved:Boolean
>004BC739    jne         004BC756
 004BC73B    mov         eax,dword ptr [ebp-4]
 004BC73E    mov         edx,dword ptr [eax+8C];TCustomActionManager.FFileName:TFileName
 004BC744    mov         eax,dword ptr [ebp-4]
 004BC747    call        004BC940
 004BC74C    mov         eax,dword ptr [ebp-4]
 004BC74F    mov         byte ptr [eax+98],1;TCustomActionManager.FSaved:Boolean
 004BC756    cmp         byte ptr [ebp-9],1
>004BC75A    jne         004BC93C
 004BC760    mov         eax,dword ptr [ebp-4]
 004BC763    test        byte ptr [eax+1C],8;TCustomActionManager.FComponentState:TComponentState
>004BC767    jne         004BC93C
 004BC76D    mov         eax,dword ptr [ebp-8]
 004BC770    mov         edx,dword ptr ds:[4926AC];TContainedAction
 004BC776    call        @IsClass
 004BC77B    test        al,al
>004BC77D    je          004BC877
 004BC783    xor         ecx,ecx
 004BC785    mov         edx,dword ptr [ebp-8]
 004BC788    mov         eax,dword ptr [ebp-4]
 004BC78B    call        004BC278
 004BC790    mov         dword ptr [ebp-10],eax
 004BC793    mov         dl,1
 004BC795    mov         eax,[0041D46C];TList
 004BC79A    call        TObject.Create;TList.Create
 004BC79F    mov         dword ptr [ebp-1C],eax
 004BC7A2    xor         eax,eax
 004BC7A4    push        ebp
 004BC7A5    push        4BC870
 004BC7AA    push        dword ptr fs:[eax]
 004BC7AD    mov         dword ptr fs:[eax],esp
 004BC7B0    cmp         dword ptr [ebp-10],0
>004BC7B4    je          004BC81D
 004BC7B6    mov         eax,dword ptr [ebp-10]
 004BC7B9    call        004C0134
 004BC7BE    mov         eax,dword ptr [eax+20]
 004BC7C1    cmp         dword ptr [eax+0C],0
>004BC7C5    je          004BC7F0
 004BC7C7    mov         eax,dword ptr [ebp-10]
 004BC7CA    call        004C0134
 004BC7CF    mov         eax,dword ptr [eax+20]
 004BC7D2    mov         eax,dword ptr [eax+0C]
 004BC7D5    call        TWinControl.DisableAlign
 004BC7DA    mov         eax,dword ptr [ebp-10]
 004BC7DD    call        004C0134
 004BC7E2    mov         eax,dword ptr [eax+20]
 004BC7E5    mov         edx,dword ptr [eax+0C]
 004BC7E8    mov         eax,dword ptr [ebp-1C]
 004BC7EB    call        TList.Add
 004BC7F0    mov         eax,dword ptr [ebp-10]
 004BC7F3    call        TCollectionItem.GetIndex
 004BC7F8    push        eax
 004BC7F9    mov         eax,dword ptr [ebp-10]
 004BC7FC    call        004C0134
 004BC801    pop         edx
 004BC802    call        00421924
 004BC807    xor         ecx,ecx
 004BC809    mov         edx,dword ptr [ebp-8]
 004BC80C    mov         eax,dword ptr [ebp-4]
 004BC80F    call        004BC278
 004BC814    mov         dword ptr [ebp-10],eax
 004BC817    cmp         dword ptr [ebp-10],0
>004BC81B    jne         004BC7B6
 004BC81D    xor         eax,eax
 004BC81F    pop         edx
 004BC820    pop         ecx
 004BC821    pop         ecx
 004BC822    mov         dword ptr fs:[eax],edx
 004BC825    push        4BC93C
 004BC82A    mov         eax,dword ptr [ebp-1C]
 004BC82D    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004BC830    dec         eax
 004BC831    test        eax,eax
>004BC833    jl          004BC867
 004BC835    inc         eax
 004BC836    mov         dword ptr [ebp-20],eax
 004BC839    mov         dword ptr [ebp-18],0
 004BC840    mov         edx,dword ptr [ebp-18]
 004BC843    mov         eax,dword ptr [ebp-1C]
 004BC846    call        TList.Get
 004BC84B    test        eax,eax
>004BC84D    je          004BC85F
 004BC84F    mov         edx,dword ptr [ebp-18]
 004BC852    mov         eax,dword ptr [ebp-1C]
 004BC855    call        TList.Get
 004BC85A    call        TWinControl.EnableAlign
 004BC85F    inc         dword ptr [ebp-18]
 004BC862    dec         dword ptr [ebp-20]
>004BC865    jne         004BC840
 004BC867    mov         eax,dword ptr [ebp-1C]
 004BC86A    call        TObject.Free
 004BC86F    ret
>004BC870    jmp         @HandleFinally
>004BC875    jmp         004BC82A
 004BC877    mov         eax,dword ptr [ebp-8]
 004BC87A    mov         edx,dword ptr ds:[4BB79C];TCustomActionBar
 004BC880    call        @IsClass
 004BC885    test        al,al
>004BC887    je          004BC8D2
 004BC889    mov         eax,dword ptr [ebp-4]
 004BC88C    mov         ecx,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BC88F    mov         edx,dword ptr [ebp-8]
 004BC892    mov         eax,dword ptr [ebp-4]
 004BC895    call        004BC344
 004BC89A    mov         dword ptr [ebp-14],eax
 004BC89D    cmp         dword ptr [ebp-14],0
>004BC8A1    je          004BC8AB
 004BC8A3    mov         eax,dword ptr [ebp-14]
 004BC8A6    xor         edx,edx
 004BC8A8    mov         dword ptr [eax+0C],edx
 004BC8AB    mov         eax,dword ptr [ebp-4]
 004BC8AE    mov         ecx,dword ptr [eax+88];TCustomActionManager.FDefaultActionBars:TActionBars
 004BC8B4    mov         edx,dword ptr [ebp-8]
 004BC8B7    mov         eax,dword ptr [ebp-4]
 004BC8BA    call        004BC344
 004BC8BF    mov         dword ptr [ebp-14],eax
 004BC8C2    cmp         dword ptr [ebp-14],0
>004BC8C6    je          004BC93C
 004BC8C8    mov         eax,dword ptr [ebp-14]
 004BC8CB    xor         edx,edx
 004BC8CD    mov         dword ptr [eax+0C],edx
>004BC8D0    jmp         004BC93C
 004BC8D2    mov         eax,dword ptr [ebp-8]
 004BC8D5    mov         edx,dword ptr ds:[492868];TCustomActionList
 004BC8DB    call        @IsClass
 004BC8E0    test        al,al
>004BC8E2    je          004BC93C
 004BC8E4    mov         eax,dword ptr [ebp-4]
 004BC8E7    cmp         dword ptr [eax+84],0;TCustomActionManager.FLinkedActionLists:TActionListCollection
>004BC8EE    je          004BC93C
 004BC8F0    mov         eax,dword ptr [ebp-4]
 004BC8F3    mov         eax,dword ptr [eax+84];TCustomActionManager.FLinkedActionLists:TActionListCollection
 004BC8F9    call        0042158C
 004BC8FE    dec         eax
 004BC8FF    cmp         eax,0
>004BC902    jl          004BC93C
 004BC904    mov         dword ptr [ebp-18],eax
 004BC907    mov         eax,dword ptr [ebp-4]
 004BC90A    mov         eax,dword ptr [eax+84];TCustomActionManager.FLinkedActionLists:TActionListCollection
 004BC910    mov         edx,dword ptr [ebp-18]
 004BC913    call        004BD7A4
 004BC918    mov         eax,dword ptr [eax+0C]
 004BC91B    cmp         eax,dword ptr [ebp-8]
>004BC91E    jne         004BC933
 004BC920    mov         eax,dword ptr [ebp-4]
 004BC923    mov         eax,dword ptr [eax+84];TCustomActionManager.FLinkedActionLists:TActionListCollection
 004BC929    mov         edx,dword ptr [ebp-18]
 004BC92C    call        00421924
>004BC931    jmp         004BC93C
 004BC933    dec         dword ptr [ebp-18]
 004BC936    cmp         dword ptr [ebp-18],0FFFFFFFF
>004BC93A    jne         004BC907
 004BC93C    mov         esp,ebp
 004BC93E    pop         ebp
 004BC93F    ret
end;*}

//004BC940
procedure sub_004BC940(?:TCustomActionManager; ?:TFileName);
begin
{*
 004BC940    push        ebp
 004BC941    mov         ebp,esp
 004BC943    add         esp,0FFFFFFEC
 004BC946    push        ebx
 004BC947    push        esi
 004BC948    push        edi
 004BC949    xor         ecx,ecx
 004BC94B    mov         dword ptr [ebp-14],ecx
 004BC94E    mov         dword ptr [ebp-10],ecx
 004BC951    mov         dword ptr [ebp-8],edx
 004BC954    mov         dword ptr [ebp-4],eax
 004BC957    xor         eax,eax
 004BC959    push        ebp
 004BC95A    push        4BCA3B
 004BC95F    push        dword ptr fs:[eax]
 004BC962    mov         dword ptr fs:[eax],esp
 004BC965    xor         edx,edx
 004BC967    mov         eax,dword ptr [ebp-4]
 004BC96A    call        TActionList.SetState
 004BC96F    xor         eax,eax
 004BC971    push        ebp
 004BC972    push        4BCA01
 004BC977    push        dword ptr fs:[eax]
 004BC97A    mov         dword ptr fs:[eax],esp
 004BC97D    push        0FFFF
 004BC982    lea         edx,[ebp-10]
 004BC985    mov         eax,dword ptr [ebp-8]
 004BC988    call        0040CD40
 004BC98D    mov         ecx,dword ptr [ebp-10]
 004BC990    mov         dl,1
 004BC992    mov         eax,[0041DD24];TFileStream
 004BC997    call        TFileStream.Create;TFileStream.Create
 004BC99C    mov         dword ptr [ebp-0C],eax
 004BC99F    xor         eax,eax
 004BC9A1    push        ebp
 004BC9A2    push        4BC9F0
 004BC9A7    push        dword ptr fs:[eax]
 004BC9AA    mov         dword ptr fs:[eax],esp
 004BC9AD    xor         eax,eax
 004BC9AF    push        ebp
 004BC9B0    push        4BC9D0
 004BC9B5    push        dword ptr fs:[eax]
 004BC9B8    mov         dword ptr fs:[eax],esp
 004BC9BB    mov         edx,dword ptr [ebp-0C]
 004BC9BE    mov         eax,dword ptr [ebp-4]
 004BC9C1    call        004BCA4C
 004BC9C6    xor         eax,eax
 004BC9C8    pop         edx
 004BC9C9    pop         ecx
 004BC9CA    pop         ecx
 004BC9CB    mov         dword ptr fs:[eax],edx
>004BC9CE    jmp         004BC9DA
>004BC9D0    jmp         @HandleAnyException
 004BC9D5    call        @DoneExcept
 004BC9DA    xor         eax,eax
 004BC9DC    pop         edx
 004BC9DD    pop         ecx
 004BC9DE    pop         ecx
 004BC9DF    mov         dword ptr fs:[eax],edx
 004BC9E2    push        4BC9F7
 004BC9E7    mov         eax,dword ptr [ebp-0C]
 004BC9EA    call        TObject.Free
 004BC9EF    ret
>004BC9F0    jmp         @HandleFinally
>004BC9F5    jmp         004BC9E7
 004BC9F7    xor         eax,eax
 004BC9F9    pop         edx
 004BC9FA    pop         ecx
 004BC9FB    pop         ecx
 004BC9FC    mov         dword ptr fs:[eax],edx
>004BC9FF    jmp         004BCA20
>004BCA01    jmp         @HandleAnyException
 004BCA06    lea         edx,[ebp-14]
 004BCA09    mov         eax,[0056E0B4];^SUnableToSaveSettings:TResStringRec
 004BCA0E    call        LoadResString
 004BCA13    mov         eax,dword ptr [ebp-14]
 004BCA16    call        0043F8B4
 004BCA1B    call        @DoneExcept
 004BCA20    xor         eax,eax
 004BCA22    pop         edx
 004BCA23    pop         ecx
 004BCA24    pop         ecx
 004BCA25    mov         dword ptr fs:[eax],edx
 004BCA28    push        4BCA42
 004BCA2D    lea         eax,[ebp-14]
 004BCA30    mov         edx,2
 004BCA35    call        @LStrArrayClr
 004BCA3A    ret
>004BCA3B    jmp         @HandleFinally
>004BCA40    jmp         004BCA2D
 004BCA42    pop         edi
 004BCA43    pop         esi
 004BCA44    pop         ebx
 004BCA45    mov         esp,ebp
 004BCA47    pop         ebp
 004BCA48    ret
*}
end;

//004BCA4C
procedure sub_004BCA4C(?:TCustomActionManager; ?:TFileStream);
begin
{*
 004BCA4C    push        ebp
 004BCA4D    mov         ebp,esp
 004BCA4F    add         esp,0FFFFFFF4
 004BCA52    mov         dword ptr [ebp-8],edx
 004BCA55    mov         dword ptr [ebp-4],eax
 004BCA58    mov         dl,1
 004BCA5A    mov         eax,[0041DE14];TMemoryStream
 004BCA5F    call        TObject.Create;TMemoryStream.Create
 004BCA64    mov         dword ptr [ebp-0C],eax
 004BCA67    xor         eax,eax
 004BCA69    push        ebp
 004BCA6A    push        4BCAB6
 004BCA6F    push        dword ptr fs:[eax]
 004BCA72    mov         dword ptr fs:[eax],esp
 004BCA75    mov         edx,dword ptr [ebp-4]
 004BCA78    mov         eax,dword ptr [ebp-0C]
 004BCA7B    call        004239A4
 004BCA80    push        0
 004BCA82    push        0
 004BCA84    mov         eax,dword ptr [ebp-0C]
 004BCA87    call        TStream.SetPosition
 004BCA8C    mov         eax,dword ptr [ebp-0C]
 004BCA8F    mov         edx,dword ptr [eax]
 004BCA91    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004BCA93    push        edx
 004BCA94    push        eax
 004BCA95    mov         edx,dword ptr [ebp-0C]
 004BCA98    mov         eax,dword ptr [ebp-8]
 004BCA9B    call        TStream.CopyFrom
 004BCAA0    xor         eax,eax
 004BCAA2    pop         edx
 004BCAA3    pop         ecx
 004BCAA4    pop         ecx
 004BCAA5    mov         dword ptr fs:[eax],edx
 004BCAA8    push        4BCABD
 004BCAAD    mov         eax,dword ptr [ebp-0C]
 004BCAB0    call        TObject.Free
 004BCAB5    ret
>004BCAB6    jmp         @HandleFinally
>004BCABB    jmp         004BCAAD
 004BCABD    mov         esp,ebp
 004BCABF    pop         ebp
 004BCAC0    ret
*}
end;

//004BCAC4
procedure sub_004BCAC4(?:TCustomActionManager; ?:TActionBars);
begin
{*
 004BCAC4    push        ebp
 004BCAC5    mov         ebp,esp
 004BCAC7    add         esp,0FFFFFFF0
 004BCACA    push        esi
 004BCACB    mov         dword ptr [ebp-8],edx
 004BCACE    mov         dword ptr [ebp-4],eax
 004BCAD1    mov         eax,dword ptr [ebp-8]
 004BCAD4    call        0042158C
 004BCAD9    test        eax,eax
>004BCADB    je          004BCB6D
 004BCAE1    mov         eax,dword ptr [ebp-8]
 004BCAE4    call        0042158C
 004BCAE9    dec         eax
 004BCAEA    test        eax,eax
>004BCAEC    jl          004BCB6D
 004BCAEE    inc         eax
 004BCAEF    mov         dword ptr [ebp-10],eax
 004BCAF2    mov         dword ptr [ebp-0C],0
 004BCAF9    mov         edx,dword ptr [ebp-0C]
 004BCAFC    mov         eax,dword ptr [ebp-8]
 004BCAFF    call        004BD7C8
 004BCB04    cmp         dword ptr [eax+0C],0
>004BCB08    je          004BCB65
 004BCB0A    mov         dl,1
 004BCB0C    mov         eax,dword ptr [ebp-8]
 004BCB0F    call        004BDA70
 004BCB14    mov         edx,dword ptr [ebp-0C]
 004BCB17    mov         eax,dword ptr [ebp-8]
 004BCB1A    call        004BD7C8
 004BCB1F    push        eax
 004BCB20    mov         edx,dword ptr [ebp-0C]
 004BCB23    mov         eax,dword ptr [ebp-8]
 004BCB26    call        004BD7C8
 004BCB2B    mov         eax,dword ptr [eax+0C]
 004BCB2E    pop         edx
 004BCB2F    mov         ecx,dword ptr [eax]
 004BCB31    call        dword ptr [ecx+124]
 004BCB37    mov         edx,dword ptr [ebp-0C]
 004BCB3A    mov         eax,dword ptr [ebp-8]
 004BCB3D    call        004BD7C8
 004BCB42    mov         eax,dword ptr [eax+0C]
 004BCB45    mov         si,0FFCF
 004BCB49    call        @CallDynaInst
 004BCB4E    mov         edx,dword ptr [ebp-0C]
 004BCB51    mov         eax,dword ptr [ebp-8]
 004BCB54    call        004BD7C8
 004BCB59    mov         eax,dword ptr [eax+0C]
 004BCB5C    mov         si,0FFD0
 004BCB60    call        @CallDynaInst
 004BCB65    inc         dword ptr [ebp-0C]
 004BCB68    dec         dword ptr [ebp-10]
>004BCB6B    jne         004BCAF9
 004BCB6D    pop         esi
 004BCB6E    mov         esp,ebp
 004BCB70    pop         ebp
 004BCB71    ret
*}
end;

//004BCB74
procedure TActionManager.SetActionBars(Value:TActionBars);
begin
{*
 004BCB74    push        ebp
 004BCB75    mov         ebp,esp
 004BCB77    add         esp,0FFFFFFF8
 004BCB7A    mov         dword ptr [ebp-8],edx
 004BCB7D    mov         dword ptr [ebp-4],eax
 004BCB80    mov         edx,dword ptr [ebp-8]
 004BCB83    mov         eax,dword ptr [ebp-4]
 004BCB86    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BCB89    mov         ecx,dword ptr [eax]
 004BCB8B    call        dword ptr [ecx+8];TActionBars.sub_00421384
 004BCB8E    pop         ecx
 004BCB8F    pop         ecx
 004BCB90    pop         ebp
 004BCB91    ret
*}
end;

//004BCB94
procedure TActionManager.SetImages(Value:TCustomImageList);
begin
{*
 004BCB94    push        ebp
 004BCB95    mov         ebp,esp
 004BCB97    add         esp,0FFFFFFE4
 004BCB9A    mov         dword ptr [ebp-8],edx
 004BCB9D    mov         dword ptr [ebp-4],eax
 004BCBA0    mov         eax,dword ptr [ebp-4]
 004BCBA3    mov         eax,dword ptr [eax+38];TActionManager.FImages:TCustomImageList
 004BCBA6    cmp         eax,dword ptr [ebp-8]
>004BCBA9    je          004BCBB4
 004BCBAB    mov         eax,dword ptr [ebp-4]
 004BCBAE    test        byte ptr [eax+1C],8;TActionManager.FComponentState:TComponentState
>004BCBB2    je          004BCBB8
 004BCBB4    xor         eax,eax
>004BCBB6    jmp         004BCBBA
 004BCBB8    mov         al,1
 004BCBBA    mov         byte ptr [ebp-11],al
 004BCBBD    mov         edx,dword ptr [ebp-8]
 004BCBC0    mov         eax,dword ptr [ebp-4]
 004BCBC3    call        TActionList.SetImages
 004BCBC8    cmp         byte ptr [ebp-11],0
>004BCBCC    je          004BCC70
 004BCBD2    mov         eax,dword ptr [ebp-4]
 004BCBD5    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BCBD8    call        0042158C
 004BCBDD    dec         eax
 004BCBDE    test        eax,eax
>004BCBE0    jl          004BCC70
 004BCBE6    inc         eax
 004BCBE7    mov         dword ptr [ebp-18],eax
 004BCBEA    mov         dword ptr [ebp-0C],0
 004BCBF1    mov         eax,dword ptr [ebp-4]
 004BCBF4    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BCBF7    mov         edx,dword ptr [ebp-0C]
 004BCBFA    call        004BEFA4
 004BCBFF    call        TActionClient.GetItems
 004BCC04    call        0042158C
 004BCC09    dec         eax
 004BCC0A    test        eax,eax
>004BCC0C    jl          004BCC68
 004BCC0E    inc         eax
 004BCC0F    mov         dword ptr [ebp-1C],eax
 004BCC12    mov         dword ptr [ebp-10],0
 004BCC19    mov         eax,dword ptr [ebp-4]
 004BCC1C    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BCC1F    mov         edx,dword ptr [ebp-0C]
 004BCC22    call        004BEFA4
 004BCC27    call        TActionClient.GetItems
 004BCC2C    mov         edx,dword ptr [ebp-10]
 004BCC2F    call        004BF258
 004BCC34    cmp         dword ptr [eax+40],0
>004BCC38    je          004BCC60
 004BCC3A    mov         eax,dword ptr [ebp-4]
 004BCC3D    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BCC40    mov         edx,dword ptr [ebp-0C]
 004BCC43    call        004BEFA4
 004BCC48    call        TActionClient.GetItems
 004BCC4D    mov         edx,dword ptr [ebp-10]
 004BCC50    call        004BF258
 004BCC55    mov         eax,dword ptr [eax+40]
 004BCC58    mov         edx,dword ptr [eax]
 004BCC5A    call        dword ptr [edx+0DC]
 004BCC60    inc         dword ptr [ebp-10]
 004BCC63    dec         dword ptr [ebp-1C]
>004BCC66    jne         004BCC19
 004BCC68    inc         dword ptr [ebp-0C]
 004BCC6B    dec         dword ptr [ebp-18]
>004BCC6E    jne         004BCBF1
 004BCC70    mov         esp,ebp
 004BCC72    pop         ebp
 004BCC73    ret
*}
end;

//004BCCF0
procedure TActionManager.SetPrioritySchedule(Value:TStringList);
begin
{*
 004BCCF0    push        ebp
 004BCCF1    mov         ebp,esp
 004BCCF3    mov         ecx,6
 004BCCF8    push        0
 004BCCFA    push        0
 004BCCFC    dec         ecx
>004BCCFD    jne         004BCCF8
 004BCCFF    push        ecx
 004BCD00    push        ebx
 004BCD01    mov         dword ptr [ebp-8],edx
 004BCD04    mov         dword ptr [ebp-4],eax
 004BCD07    xor         eax,eax
 004BCD09    push        ebp
 004BCD0A    push        4BCE63
 004BCD0F    push        dword ptr fs:[eax]
 004BCD12    mov         dword ptr fs:[eax],esp
 004BCD15    lea         edx,[ebp-1C]
 004BCD18    mov         eax,dword ptr [ebp-4]
 004BCD1B    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 004BCD21    mov         ecx,dword ptr [eax]
 004BCD23    call        dword ptr [ecx+1C];TStringList.sub_00422114
 004BCD26    mov         eax,dword ptr [ebp-1C]
 004BCD29    lea         edx,[ebp-18]
 004BCD2C    call        0040BFEC
 004BCD31    mov         eax,dword ptr [ebp-18]
 004BCD34    call        @LStrLen
 004BCD39    test        eax,eax
>004BCD3B    jne         004BCD86
 004BCD3D    push        0
 004BCD3F    lea         edx,[ebp-20]
 004BCD42    mov         eax,[0056E16C];^SRestoreDefaultSchedule:TResStringRec
 004BCD47    call        LoadResString
 004BCD4C    mov         eax,dword ptr [ebp-20]
 004BCD4F    mov         cx,word ptr ds:[4BCE70];0xC gvar_004BCE70
 004BCD56    mov         dl,3
 004BCD58    call        0043F788
 004BCD5D    dec         eax
>004BCD5E    jne         004BCD76
 004BCD60    mov         eax,dword ptr [ebp-4]
 004BCD63    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 004BCD69    mov         edx,dword ptr ds:[56CB88];^gvar_004BBD0C
 004BCD6F    mov         ecx,dword ptr [eax]
 004BCD71    call        dword ptr [ecx+2C];TStringList.sub_0042291C
>004BCD74    jmp         004BCDCF
 004BCD76    mov         eax,dword ptr [ebp-4]
 004BCD79    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 004BCD7F    mov         edx,dword ptr [eax]
 004BCD81    call        dword ptr [edx+44];TStringList.Clear
>004BCD84    jmp         004BCDCF
 004BCD86    lea         ecx,[ebp-24]
 004BCD89    xor         edx,edx
 004BCD8B    mov         eax,dword ptr [ebp-8]
 004BCD8E    call        0042203C
 004BCD93    mov         eax,dword ptr [ebp-24]
 004BCD96    call        0040C468
 004BCD9B    lea         ecx,[ebp-2C]
 004BCD9E    xor         edx,edx
 004BCDA0    mov         eax,dword ptr [ebp-8]
 004BCDA3    call        0042203C
 004BCDA8    mov         edx,dword ptr [ebp-2C]
 004BCDAB    lea         ecx,[ebp-28]
 004BCDAE    mov         eax,dword ptr [ebp-8]
 004BCDB1    call        0042225C
 004BCDB6    mov         eax,dword ptr [ebp-28]
 004BCDB9    call        0040C468
 004BCDBE    mov         eax,dword ptr [ebp-4]
 004BCDC1    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 004BCDC7    mov         edx,dword ptr [ebp-8]
 004BCDCA    mov         ecx,dword ptr [eax]
 004BCDCC    call        dword ptr [ecx+8];TStringList.sub_00421BB0
 004BCDCF    mov         edx,4BCC74
 004BCDD4    mov         eax,dword ptr [ebp-4]
 004BCDD7    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 004BCDDD    mov         ecx,dword ptr [eax]
 004BCDDF    call        dword ptr [ecx+94];TStringList.sub_004234CC
 004BCDE5    mov         eax,dword ptr [ebp-4]
 004BCDE8    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 004BCDEE    mov         edx,dword ptr [eax]
 004BCDF0    call        dword ptr [edx+14];TStringList.sub_00423008
 004BCDF3    dec         eax
 004BCDF4    test        eax,eax
>004BCDF6    jl          004BCE48
 004BCDF8    inc         eax
 004BCDF9    mov         dword ptr [ebp-10],eax
 004BCDFC    mov         dword ptr [ebp-0C],0
 004BCE03    mov         eax,dword ptr [ebp-4]
 004BCE06    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 004BCE0C    mov         dword ptr [ebp-14],eax
 004BCE0F    lea         ecx,[ebp-34]
 004BCE12    mov         edx,dword ptr [ebp-0C]
 004BCE15    mov         eax,dword ptr [ebp-14]
 004BCE18    call        0042203C
 004BCE1D    mov         edx,dword ptr [ebp-34]
 004BCE20    lea         ecx,[ebp-30]
 004BCE23    mov         eax,dword ptr [ebp-14]
 004BCE26    call        0042225C
 004BCE2B    mov         eax,dword ptr [ebp-30]
 004BCE2E    call        0040C468
 004BCE33    mov         ecx,eax
 004BCE35    mov         edx,dword ptr [ebp-0C]
 004BCE38    mov         eax,dword ptr [ebp-14]
 004BCE3B    mov         ebx,dword ptr [eax]
 004BCE3D    call        dword ptr [ebx+24];TStringList.sub_004232C0
 004BCE40    inc         dword ptr [ebp-0C]
 004BCE43    dec         dword ptr [ebp-10]
>004BCE46    jne         004BCE03
 004BCE48    xor         eax,eax
 004BCE4A    pop         edx
 004BCE4B    pop         ecx
 004BCE4C    pop         ecx
 004BCE4D    mov         dword ptr fs:[eax],edx
 004BCE50    push        4BCE6A
 004BCE55    lea         eax,[ebp-34]
 004BCE58    mov         edx,8
 004BCE5D    call        @LStrArrayClr
 004BCE62    ret
>004BCE63    jmp         @HandleFinally
>004BCE68    jmp         004BCE55
 004BCE6A    pop         ebx
 004BCE6B    mov         esp,ebp
 004BCE6D    pop         ebp
 004BCE6E    ret
*}
end;

//004BCE74
{*function sub_004BCE74(?:?):?;
begin
 004BCE74    push        ebp
 004BCE75    mov         ebp,esp
 004BCE77    add         esp,0FFFFFFE8
 004BCE7A    xor         ecx,ecx
 004BCE7C    mov         dword ptr [ebp-18],ecx
 004BCE7F    mov         dword ptr [ebp-8],edx
 004BCE82    mov         dword ptr [ebp-4],eax
 004BCE85    xor         eax,eax
 004BCE87    push        ebp
 004BCE88    push        4BCF58
 004BCE8D    push        dword ptr fs:[eax]
 004BCE90    mov         dword ptr fs:[eax],esp
 004BCE93    mov         eax,dword ptr [ebp-8]
 004BCE96    cmp         dword ptr [eax+44],0FFFFFFFF
>004BCE9A    je          004BCEB2
 004BCE9C    mov         eax,dword ptr [ebp-4]
 004BCE9F    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 004BCEA5    mov         edx,dword ptr [eax]
 004BCEA7    call        dword ptr [edx+14];TStringList.sub_00423008
 004BCEAA    test        eax,eax
>004BCEAC    je          004BCEB2
 004BCEAE    xor         eax,eax
>004BCEB0    jmp         004BCEB4
 004BCEB2    mov         al,1
 004BCEB4    mov         byte ptr [ebp-9],al
 004BCEB7    cmp         byte ptr [ebp-9],0
>004BCEBB    jne         004BCF42
 004BCEC1    mov         eax,dword ptr [ebp-4]
 004BCEC4    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BCEC7    mov         eax,dword ptr [eax+28];TActionBars.SessionCount:Integer
 004BCECA    mov         edx,dword ptr [ebp-8]
 004BCECD    sub         eax,dword ptr [edx+5C]
 004BCED0    mov         dword ptr [ebp-10],eax
 004BCED3    xor         eax,eax
 004BCED5    mov         dword ptr [ebp-14],eax
>004BCED8    jmp         004BCEDD
 004BCEDA    inc         dword ptr [ebp-14]
 004BCEDD    mov         eax,dword ptr [ebp-4]
 004BCEE0    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 004BCEE6    mov         edx,dword ptr [eax]
 004BCEE8    call        dword ptr [edx+14];TStringList.sub_00423008
 004BCEEB    cmp         eax,dword ptr [ebp-14]
>004BCEEE    jle         004BCF14
 004BCEF0    lea         ecx,[ebp-18]
 004BCEF3    mov         edx,dword ptr [ebp-14]
 004BCEF6    mov         eax,dword ptr [ebp-4]
 004BCEF9    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 004BCEFF    call        0042203C
 004BCF04    mov         eax,dword ptr [ebp-18]
 004BCF07    call        0040C468
 004BCF0C    mov         edx,dword ptr [ebp-8]
 004BCF0F    cmp         eax,dword ptr [edx+44]
>004BCF12    jl          004BCEDA
 004BCF14    mov         eax,dword ptr [ebp-4]
 004BCF17    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 004BCF1D    mov         edx,dword ptr [eax]
 004BCF1F    call        dword ptr [edx+14];TStringList.sub_00423008
 004BCF22    cmp         eax,dword ptr [ebp-14]
>004BCF25    jne         004BCF2A
 004BCF27    dec         dword ptr [ebp-14]
 004BCF2A    mov         edx,dword ptr [ebp-14]
 004BCF2D    mov         eax,dword ptr [ebp-4]
 004BCF30    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 004BCF36    mov         ecx,dword ptr [eax]
 004BCF38    call        dword ptr [ecx+18];TStringList.sub_00423024
 004BCF3B    cmp         eax,dword ptr [ebp-10]
 004BCF3E    setg        byte ptr [ebp-9]
 004BCF42    xor         eax,eax
 004BCF44    pop         edx
 004BCF45    pop         ecx
 004BCF46    pop         ecx
 004BCF47    mov         dword ptr fs:[eax],edx
 004BCF4A    push        4BCF5F
 004BCF4F    lea         eax,[ebp-18]
 004BCF52    call        @LStrClr
 004BCF57    ret
>004BCF58    jmp         @HandleFinally
>004BCF5D    jmp         004BCF4F
 004BCF5F    mov         al,byte ptr [ebp-9]
 004BCF62    mov         esp,ebp
 004BCF64    pop         ebp
 004BCF65    ret
end;*}

//004BCF68
function TActionManager.IsStoredPrioritySchedule(Value:TStringList):Boolean;
begin
{*
 004BCF68    push        ebp
 004BCF69    mov         ebp,esp
 004BCF6B    add         esp,0FFFFFFF4
 004BCF6E    xor         edx,edx
 004BCF70    mov         dword ptr [ebp-0C],edx
 004BCF73    mov         dword ptr [ebp-4],eax
 004BCF76    xor         eax,eax
 004BCF78    push        ebp
 004BCF79    push        4BCFBE
 004BCF7E    push        dword ptr fs:[eax]
 004BCF81    mov         dword ptr fs:[eax],esp
 004BCF84    lea         edx,[ebp-0C]
 004BCF87    mov         eax,dword ptr [ebp-4]
 004BCF8A    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 004BCF90    mov         ecx,dword ptr [eax]
 004BCF92    call        dword ptr [ecx+1C];TStringList.sub_00422114
 004BCF95    mov         edx,dword ptr [ebp-0C]
 004BCF98    mov         eax,[0056CB88];^gvar_004BBD0C
 004BCF9D    call        0040BF44
 004BCFA2    test        eax,eax
 004BCFA4    setne       byte ptr [ebp-5]
 004BCFA8    xor         eax,eax
 004BCFAA    pop         edx
 004BCFAB    pop         ecx
 004BCFAC    pop         ecx
 004BCFAD    mov         dword ptr fs:[eax],edx
 004BCFB0    push        4BCFC5
 004BCFB5    lea         eax,[ebp-0C]
 004BCFB8    call        @LStrClr
 004BCFBD    ret
>004BCFBE    jmp         @HandleFinally
>004BCFC3    jmp         004BCFB5
 004BCFC5    mov         al,byte ptr [ebp-5]
 004BCFC8    mov         esp,ebp
 004BCFCA    pop         ebp
 004BCFCB    ret
*}
end;

//004BCFCC
procedure TCustomActionManager.ResetActionBar(Index:Integer);
begin
{*
 004BCFCC    push        ebp
 004BCFCD    mov         ebp,esp
 004BCFCF    add         esp,0FFFFFFF4
 004BCFD2    mov         dword ptr [ebp-8],edx
 004BCFD5    mov         dword ptr [ebp-4],eax
 004BCFD8    mov         eax,dword ptr [ebp-4]
 004BCFDB    cmp         dword ptr [eax+88],0
>004BCFE2    je          004BD049
 004BCFE4    mov         edx,dword ptr [ebp-8]
 004BCFE7    mov         eax,dword ptr [ebp-4]
 004BCFEA    mov         eax,dword ptr [eax+6C]
 004BCFED    call        004BEFA4
 004BCFF2    mov         eax,dword ptr [eax+0C]
 004BCFF5    mov         dword ptr [ebp-0C],eax
 004BCFF8    mov         edx,dword ptr [ebp-8]
 004BCFFB    mov         eax,dword ptr [ebp-4]
 004BCFFE    mov         eax,dword ptr [eax+6C]
 004BD001    call        004BEFA4
 004BD006    xor         edx,edx
 004BD008    call        TActionBarItem.SetActionBar
 004BD00D    mov         edx,dword ptr [ebp-8]
 004BD010    mov         eax,dword ptr [ebp-4]
 004BD013    mov         eax,dword ptr [eax+88]
 004BD019    call        004215A8
 004BD01E    push        eax
 004BD01F    mov         edx,dword ptr [ebp-8]
 004BD022    mov         eax,dword ptr [ebp-4]
 004BD025    mov         eax,dword ptr [eax+6C]
 004BD028    call        004215A8
 004BD02D    pop         edx
 004BD02E    mov         ecx,dword ptr [eax]
 004BD030    call        dword ptr [ecx+8]
 004BD033    mov         edx,dword ptr [ebp-8]
 004BD036    mov         eax,dword ptr [ebp-4]
 004BD039    mov         eax,dword ptr [eax+6C]
 004BD03C    call        004BEFA4
 004BD041    mov         edx,dword ptr [ebp-0C]
 004BD044    call        TActionBarItem.SetActionBar
 004BD049    mov         esp,ebp
 004BD04B    pop         ebp
 004BD04C    ret
*}
end;

//004BD050
procedure TActionManager.SetLinkedActionLists(Value:TActionListCollection);
begin
{*
 004BD050    push        ebp
 004BD051    mov         ebp,esp
 004BD053    add         esp,0FFFFFFF8
 004BD056    mov         dword ptr [ebp-8],edx
 004BD059    mov         dword ptr [ebp-4],eax
 004BD05C    mov         eax,dword ptr [ebp-4]
 004BD05F    cmp         dword ptr [eax+84],0;TActionManager.FLinkedActionLists:TActionListCollection
>004BD066    jne         004BD086
 004BD068    mov         eax,[004BA7E0];TActionListItem
 004BD06D    push        eax
 004BD06E    mov         ecx,dword ptr [ebp-4]
 004BD071    mov         dl,1
 004BD073    mov         eax,[004BA8E0];TActionListCollection
 004BD078    call        TWorkAreas.Create;TActionListCollection.Create
 004BD07D    mov         edx,dword ptr [ebp-4]
 004BD080    mov         dword ptr [edx+84],eax;TActionManager.FLinkedActionLists:TActionListCollection
 004BD086    mov         edx,dword ptr [ebp-8]
 004BD089    mov         eax,dword ptr [ebp-4]
 004BD08C    mov         eax,dword ptr [eax+84];TActionManager.FLinkedActionLists:TActionListCollection
 004BD092    mov         ecx,dword ptr [eax]
 004BD094    call        dword ptr [ecx+8];TActionListCollection.sub_00421384
 004BD097    pop         ecx
 004BD098    pop         ecx
 004BD099    pop         ebp
 004BD09A    ret
*}
end;

//004BD09C
procedure sub_004BD09C;
begin
{*
 004BD09C    push        ebp
 004BD09D    mov         ebp,esp
 004BD09F    push        ecx
 004BD0A0    mov         dword ptr [ebp-4],eax
 004BD0A3    mov         eax,dword ptr [ebp-4]
 004BD0A6    call        0049374C
 004BD0AB    mov         eax,dword ptr [ebp-4]
 004BD0AE    cmp         dword ptr [eax+6C],0;TCustomActionManager.FActionBars:TActionBars
>004BD0B2    je          004BD0C9
 004BD0B4    push        0
 004BD0B6    push        0
 004BD0B8    mov         eax,dword ptr [ebp-4]
 004BD0BB    mov         edx,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BD0BE    mov         eax,dword ptr [ebp-4]
 004BD0C1    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004BD0C4    call        004BE03C
 004BD0C9    pop         ecx
 004BD0CA    pop         ebp
 004BD0CB    ret
*}
end;

//004BD0CC
procedure TCustomActionManager.sub_004BD0CC;
begin
{*
 004BD0CC    push        ebp
 004BD0CD    mov         ebp,esp
 004BD0CF    add         esp,0FFFFFFF8
 004BD0D2    push        ebx
 004BD0D3    mov         dword ptr [ebp-4],eax
 004BD0D6    mov         eax,[004BAFBC];TActionClients
 004BD0DB    mov         dword ptr [ebp-8],eax
 004BD0DE    mov         eax,dword ptr [ebp-4]
 004BD0E1    cmp         word ptr [eax+0BA],0;TCustomActionManager.?fBA:word
>004BD0E9    je          004BD100
 004BD0EB    lea         ecx,[ebp-8]
 004BD0EE    mov         ebx,dword ptr [ebp-4]
 004BD0F1    mov         edx,dword ptr [ebp-4]
 004BD0F4    mov         eax,dword ptr [ebx+0BC];TCustomActionManager.?fBC:dword
 004BD0FA    call        dword ptr [ebx+0B8];TCustomActionManager.FOnGetClientsClass
 004BD100    cmp         dword ptr [ebp-8],0
>004BD104    jne         004BD10E
 004BD106    mov         eax,[004BAFBC];TActionClients
 004BD10B    mov         dword ptr [ebp-8],eax
 004BD10E    mov         eax,dword ptr [ebp-8]
 004BD111    pop         ebx
 004BD112    pop         ecx
 004BD113    pop         ecx
 004BD114    pop         ebp
 004BD115    ret
*}
end;

//004BD118
procedure TCustomActionManager.sub_004BD118;
begin
{*
 004BD118    push        ebp
 004BD119    mov         ebp,esp
 004BD11B    add         esp,0FFFFFFF8
 004BD11E    push        ebx
 004BD11F    mov         dword ptr [ebp-4],eax
 004BD122    mov         eax,[004BB220];TActionClientItem
 004BD127    mov         dword ptr [ebp-8],eax
 004BD12A    mov         eax,dword ptr [ebp-4]
 004BD12D    cmp         word ptr [eax+0B2],0;TCustomActionManager.?fB2:word
>004BD135    je          004BD14C
 004BD137    lea         ecx,[ebp-8]
 004BD13A    mov         ebx,dword ptr [ebp-4]
 004BD13D    mov         edx,dword ptr [ebp-4]
 004BD140    mov         eax,dword ptr [ebx+0B4];TCustomActionManager.?fB4:dword
 004BD146    call        dword ptr [ebx+0B0];TCustomActionManager.FOnGetClientItemClass
 004BD14C    cmp         dword ptr [ebp-8],0
>004BD150    jne         004BD15A
 004BD152    mov         eax,[004BB220];TActionClientItem
 004BD157    mov         dword ptr [ebp-8],eax
 004BD15A    mov         eax,dword ptr [ebp-8]
 004BD15D    pop         ebx
 004BD15E    pop         ecx
 004BD15F    pop         ecx
 004BD160    pop         ebp
 004BD161    ret
*}
end;

//004BD164
procedure TCustomActionManager.sub_004BD164;
begin
{*
 004BD164    push        ebp
 004BD165    mov         ebp,esp
 004BD167    add         esp,0FFFFFFF8
 004BD16A    push        ebx
 004BD16B    mov         dword ptr [ebp-4],eax
 004BD16E    mov         eax,[004BAE38];TActionBars
 004BD173    mov         dword ptr [ebp-8],eax
 004BD176    mov         eax,dword ptr [ebp-4]
 004BD179    cmp         word ptr [eax+0AA],0;TCustomActionManager.?fAA:word
>004BD181    je          004BD198
 004BD183    mov         ebx,dword ptr [ebp-4]
 004BD186    mov         ecx,dword ptr [ebp-8]
 004BD189    mov         edx,dword ptr [ebp-4]
 004BD18C    mov         eax,dword ptr [ebx+0AC];TCustomActionManager.?fAC:dword
 004BD192    call        dword ptr [ebx+0A8];TCustomActionManager.FOnGetBarsClass
 004BD198    cmp         dword ptr [ebp-8],0
>004BD19C    jne         004BD1A6
 004BD19E    mov         eax,[004BAE38];TActionBars
 004BD1A3    mov         dword ptr [ebp-8],eax
 004BD1A6    mov         eax,dword ptr [ebp-8]
 004BD1A9    pop         ebx
 004BD1AA    pop         ecx
 004BD1AB    pop         ecx
 004BD1AC    pop         ebp
 004BD1AD    ret
*}
end;

//004BD1B0
procedure TCustomActionManager.sub_004BD1B0;
begin
{*
 004BD1B0    push        ebp
 004BD1B1    mov         ebp,esp
 004BD1B3    add         esp,0FFFFFFF8
 004BD1B6    push        ebx
 004BD1B7    mov         dword ptr [ebp-4],eax
 004BD1BA    mov         eax,[004BAD10];TActionBarItem
 004BD1BF    mov         dword ptr [ebp-8],eax
 004BD1C2    mov         eax,dword ptr [ebp-4]
 004BD1C5    cmp         word ptr [eax+0A2],0;TCustomActionManager.?fA2:word
>004BD1CD    je          004BD1E4
 004BD1CF    lea         ecx,[ebp-8]
 004BD1D2    mov         ebx,dword ptr [ebp-4]
 004BD1D5    mov         edx,dword ptr [ebp-4]
 004BD1D8    mov         eax,dword ptr [ebx+0A4];TCustomActionManager.?fA4:dword
 004BD1DE    call        dword ptr [ebx+0A0];TCustomActionManager.FOnGetBarItemClass
 004BD1E4    cmp         dword ptr [ebp-8],0
>004BD1E8    jne         004BD1F2
 004BD1EA    mov         eax,[004BAD10];TActionBarItem
 004BD1EF    mov         dword ptr [ebp-8],eax
 004BD1F2    mov         eax,dword ptr [ebp-8]
 004BD1F5    pop         ebx
 004BD1F6    pop         ecx
 004BD1F7    pop         ecx
 004BD1F8    pop         ebp
 004BD1F9    ret
*}
end;

//004BD1FC
function TActionManager.IsStoredLinkedActionLists(Value:TActionListCollection):Boolean;
begin
{*
 004BD1FC    push        ebp
 004BD1FD    mov         ebp,esp
 004BD1FF    add         esp,0FFFFFFF8
 004BD202    mov         dword ptr [ebp-4],eax
 004BD205    mov         eax,dword ptr [ebp-4]
 004BD208    cmp         dword ptr [eax+84],0;TActionManager.FLinkedActionLists:TActionListCollection
>004BD20F    je          004BD222
 004BD211    mov         eax,dword ptr [ebp-4]
 004BD214    call        TActionManager.GetLinkedActionLists
 004BD219    call        0042158C
 004BD21E    test        eax,eax
>004BD220    jg          004BD226
 004BD222    xor         eax,eax
>004BD224    jmp         004BD228
 004BD226    mov         al,1
 004BD228    mov         byte ptr [ebp-5],al
 004BD22B    mov         al,byte ptr [ebp-5]
 004BD22E    pop         ecx
 004BD22F    pop         ecx
 004BD230    pop         ebp
 004BD231    ret
*}
end;

//004BD234
function TActionManager.IsStoredActionBars(Value:TActionBars):Boolean;
begin
{*
 004BD234    push        ebp
 004BD235    mov         ebp,esp
 004BD237    add         esp,0FFFFFFF8
 004BD23A    mov         dword ptr [ebp-4],eax
 004BD23D    mov         eax,dword ptr [ebp-4]
 004BD240    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BD243    call        0042158C
 004BD248    test        eax,eax
 004BD24A    setg        byte ptr [ebp-5]
 004BD24E    mov         al,byte ptr [ebp-5]
 004BD251    pop         ecx
 004BD252    pop         ecx
 004BD253    pop         ebp
 004BD254    ret
*}
end;

//004BD258
{*function TActionManager.GetLinkedActionLists:?;
begin
 004BD258    push        ebp
 004BD259    mov         ebp,esp
 004BD25B    add         esp,0FFFFFFF8
 004BD25E    mov         dword ptr [ebp-4],eax
 004BD261    mov         eax,dword ptr [ebp-4]
 004BD264    cmp         dword ptr [eax+84],0;TActionManager.FLinkedActionLists:TActionListCollection
>004BD26B    jne         004BD28B
 004BD26D    mov         eax,[004BA7E0];TActionListItem
 004BD272    push        eax
 004BD273    mov         ecx,dword ptr [ebp-4]
 004BD276    mov         dl,1
 004BD278    mov         eax,[004BA8E0];TActionListCollection
 004BD27D    call        TWorkAreas.Create;TActionListCollection.Create
 004BD282    mov         edx,dword ptr [ebp-4]
 004BD285    mov         dword ptr [edx+84],eax;TActionManager.FLinkedActionLists:TActionListCollection
 004BD28B    mov         eax,dword ptr [ebp-4]
 004BD28E    mov         eax,dword ptr [eax+84];TActionManager.FLinkedActionLists:TActionListCollection
 004BD294    mov         dword ptr [ebp-8],eax
 004BD297    mov         eax,dword ptr [ebp-8]
 004BD29A    pop         ecx
 004BD29B    pop         ecx
 004BD29C    pop         ebp
 004BD29D    ret
end;*}

//004BD2A0
procedure TCustomActionManager.ReadStyleProp(Reader:TReader);
begin
{*
 004BD2A0    push        ebp
 004BD2A1    mov         ebp,esp
 004BD2A3    add         esp,0FFFFFFF4
 004BD2A6    push        ebx
 004BD2A7    push        esi
 004BD2A8    push        edi
 004BD2A9    xor         ecx,ecx
 004BD2AB    mov         dword ptr [ebp-0C],ecx
 004BD2AE    mov         dword ptr [ebp-8],edx
 004BD2B1    mov         dword ptr [ebp-4],eax
 004BD2B4    xor         eax,eax
 004BD2B6    push        ebp
 004BD2B7    push        4BD373
 004BD2BC    push        dword ptr fs:[eax]
 004BD2BF    mov         dword ptr fs:[eax],esp
 004BD2C2    lea         edx,[ebp-0C]
 004BD2C5    mov         eax,dword ptr [ebp-8]
 004BD2C8    call        TReader.ReadString
 004BD2CD    cmp         dword ptr [ebp-0C],0
>004BD2D1    je          004BD35D
 004BD2D7    xor         eax,eax
 004BD2D9    push        ebp
 004BD2DA    push        4BD312
 004BD2DF    push        dword ptr fs:[eax]
 004BD2E2    mov         dword ptr fs:[eax],esp
 004BD2E5    mov         edx,dword ptr [ebp-0C]
 004BD2E8    mov         eax,[00571E84];ActionBarStyles:TActionBarStyleList
 004BD2ED    mov         ecx,dword ptr [eax]
 004BD2EF    call        dword ptr [ecx+54]
 004BD2F2    mov         edx,eax
 004BD2F4    mov         eax,[00571E84];ActionBarStyles:TActionBarStyleList
 004BD2F9    call        004C7318
 004BD2FE    mov         edx,eax
 004BD300    mov         eax,dword ptr [ebp-4]
 004BD303    call        TActionManager.SetStyle
 004BD308    xor         eax,eax
 004BD30A    pop         edx
 004BD30B    pop         ecx
 004BD30C    pop         ecx
 004BD30D    mov         dword ptr fs:[eax],edx
>004BD310    jmp         004BD35D
>004BD312    jmp         @HandleAnyException
 004BD317    mov         eax,dword ptr [ebp-4]
 004BD31A    test        byte ptr [eax+1C],10
>004BD31E    je          004BD353
 004BD320    mov         eax,[0056E2EC];^gvar_0056BC98
 004BD325    cmp         word ptr [eax+2],0
>004BD32A    je          004BD340
 004BD32C    call        ExceptObject
 004BD331    mov         edx,eax
 004BD333    mov         ebx,dword ptr ds:[56E2EC];^gvar_0056BC98
 004BD339    mov         eax,dword ptr [ebx+4]
 004BD33C    call        dword ptr [ebx]
>004BD33E    jmp         004BD358
 004BD340    call        00402F04
 004BD345    push        eax
 004BD346    call        ExceptObject
 004BD34B    pop         edx
 004BD34C    call        004104C4
>004BD351    jmp         004BD358
 004BD353    call        @RaiseAgain
 004BD358    call        @DoneExcept
 004BD35D    xor         eax,eax
 004BD35F    pop         edx
 004BD360    pop         ecx
 004BD361    pop         ecx
 004BD362    mov         dword ptr fs:[eax],edx
 004BD365    push        4BD37A
 004BD36A    lea         eax,[ebp-0C]
 004BD36D    call        @LStrClr
 004BD372    ret
>004BD373    jmp         @HandleFinally
>004BD378    jmp         004BD36A
 004BD37A    pop         edi
 004BD37B    pop         esi
 004BD37C    pop         ebx
 004BD37D    mov         esp,ebp
 004BD37F    pop         ebp
 004BD380    ret
*}
end;

//004BD384
procedure TCustomActionManager.WriteStyleProp(Writer:TWriter);
begin
{*
 004BD384    push        ebp
 004BD385    mov         ebp,esp
 004BD387    add         esp,0FFFFFFF0
 004BD38A    xor         ecx,ecx
 004BD38C    mov         dword ptr [ebp-10],ecx
 004BD38F    mov         dword ptr [ebp-8],edx
 004BD392    mov         dword ptr [ebp-4],eax
 004BD395    xor         eax,eax
 004BD397    push        ebp
 004BD398    push        4BD3F8
 004BD39D    push        dword ptr fs:[eax]
 004BD3A0    mov         dword ptr fs:[eax],esp
 004BD3A3    mov         eax,dword ptr [ebp-4]
 004BD3A6    cmp         dword ptr [eax+0C8],0
>004BD3AD    je          004BD3BD
 004BD3AF    mov         eax,dword ptr [ebp-4]
 004BD3B2    mov         eax,dword ptr [eax+0C8]
 004BD3B8    mov         dword ptr [ebp-0C],eax
>004BD3BB    jmp         004BD3CC
 004BD3BD    xor         edx,edx
 004BD3BF    mov         eax,[00571E84];ActionBarStyles:TActionBarStyleList
 004BD3C4    call        004C7318
 004BD3C9    mov         dword ptr [ebp-0C],eax
 004BD3CC    lea         edx,[ebp-10]
 004BD3CF    mov         eax,dword ptr [ebp-0C]
 004BD3D2    mov         ecx,dword ptr [eax]
 004BD3D4    call        dword ptr [ecx+8]
 004BD3D7    mov         edx,dword ptr [ebp-10]
 004BD3DA    mov         eax,dword ptr [ebp-8]
 004BD3DD    call        00429D20
 004BD3E2    xor         eax,eax
 004BD3E4    pop         edx
 004BD3E5    pop         ecx
 004BD3E6    pop         ecx
 004BD3E7    mov         dword ptr fs:[eax],edx
 004BD3EA    push        4BD3FF
 004BD3EF    lea         eax,[ebp-10]
 004BD3F2    call        @LStrClr
 004BD3F7    ret
>004BD3F8    jmp         @HandleFinally
>004BD3FD    jmp         004BD3EF
 004BD3FF    mov         esp,ebp
 004BD401    pop         ebp
 004BD402    ret
*}
end;

//004BD404
procedure TCustomActionManager.AfterConstruction;
begin
{*
 004BD404    push        ebp
 004BD405    mov         ebp,esp
 004BD407    push        ecx
 004BD408    mov         dword ptr [ebp-4],eax;{TObject.AfterConstruction}
 004BD40B    mov         eax,dword ptr [ebp-4]
 004BD40E    call        TCustomVariantType.AfterConstruction
 004BD413    mov         eax,dword ptr [ebp-4]
 004BD416    test        byte ptr [eax+1C],10
>004BD41A    je          004BD44A
 004BD41C    mov         eax,dword ptr [ebp-4]
 004BD41F    test        byte ptr [eax+1C],1;{ActionBarStyles:TActionBarStyleList}
>004BD423    jne         004BD44A
 004BD425    mov         edx,dword ptr ds:[571E88];DefaultActnBarStyle:AnsiString
 004BD42B    mov         eax,[00571E84];ActionBarStyles:TActionBarStyleList{ActionBarStyles:TActionBarStyleList}
 004BD430    mov         ecx,dword ptr [eax]
 004BD432    call        dword ptr [ecx+54]
 004BD435    mov         edx,eax
 004BD437    mov         eax,[00571E84];ActionBarStyles:TActionBarStyleList
 004BD43C    call        004C7318
 004BD441    mov         edx,dword ptr [ebp-4]
 004BD444    mov         dword ptr [edx+0C8],eax
 004BD44A    pop         ecx
 004BD44B    pop         ebp
 004BD44C    ret
*}
end;

//004BD450
procedure TActionManager.SetStyle(Value:TActionBarStyle);
begin
{*
 004BD450    push        ebp
 004BD451    mov         ebp,esp
 004BD453    add         esp,0FFFFFFF0
 004BD456    push        ebx
 004BD457    mov         dword ptr [ebp-8],edx
 004BD45A    mov         dword ptr [ebp-4],eax
 004BD45D    mov         eax,dword ptr [ebp-4]
 004BD460    mov         eax,dword ptr [eax+0C8];TActionManager.FStyle:TActionBarStyle
 004BD466    cmp         eax,dword ptr [ebp-8]
>004BD469    je          004BD564
 004BD46F    mov         eax,dword ptr [ebp-8]
 004BD472    mov         edx,dword ptr [ebp-4]
 004BD475    mov         dword ptr [edx+0C8],eax;TActionManager.FStyle:TActionBarStyle
 004BD47B    mov         eax,dword ptr [ebp-4]
 004BD47E    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BD481    call        0042158C
 004BD486    dec         eax
 004BD487    test        eax,eax
>004BD489    jl          004BD535
 004BD48F    inc         eax
 004BD490    mov         dword ptr [ebp-10],eax
 004BD493    mov         dword ptr [ebp-0C],0
 004BD49A    mov         edx,dword ptr [ebp-0C]
 004BD49D    mov         eax,dword ptr [ebp-4]
 004BD4A0    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BD4A3    call        004BEFA4
 004BD4A8    cmp         dword ptr [eax+0C],0
>004BD4AC    je          004BD529
 004BD4AE    mov         edx,dword ptr [ebp-0C]
 004BD4B1    mov         eax,dword ptr [ebp-4]
 004BD4B4    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BD4B7    call        004BEFA4
 004BD4BC    mov         eax,dword ptr [eax+0C]
 004BD4BF    mov         edx,dword ptr [eax]
 004BD4C1    call        dword ptr [edx+144]
 004BD4C7    mov         edx,dword ptr [ebp-0C]
 004BD4CA    mov         eax,dword ptr [ebp-4]
 004BD4CD    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BD4D0    call        004BEFA4
 004BD4D5    mov         eax,dword ptr [eax+0C]
 004BD4D8    call        004C4A40
 004BD4DD    mov         ebx,eax
 004BD4DF    mov         edx,dword ptr [ebp-0C]
 004BD4E2    mov         eax,dword ptr [ebp-4]
 004BD4E5    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BD4E8    call        004BEFA4
 004BD4ED    mov         eax,dword ptr [eax+0C]
 004BD4F0    cmp         ebx,dword ptr [eax+274]
>004BD4F6    jne         004BD513
 004BD4F8    mov         edx,dword ptr [ebp-0C]
 004BD4FB    mov         eax,dword ptr [ebp-4]
 004BD4FE    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BD501    call        004BEFA4
 004BD506    mov         eax,dword ptr [eax+0C]
 004BD509    xor         edx,edx
 004BD50B    mov         ecx,dword ptr [eax]
 004BD50D    call        dword ptr [ecx+12C]
 004BD513    mov         edx,dword ptr [ebp-0C]
 004BD516    mov         eax,dword ptr [ebp-4]
 004BD519    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 004BD51C    call        004BEFA4
 004BD521    mov         eax,dword ptr [eax+0C]
 004BD524    mov         edx,dword ptr [eax]
 004BD526    call        dword ptr [edx+7C]
 004BD529    inc         dword ptr [ebp-0C]
 004BD52C    dec         dword ptr [ebp-10]
>004BD52F    jne         004BD49A
 004BD535    mov         eax,dword ptr [ebp-4]
 004BD538    cmp         word ptr [eax+0C2],0;TActionManager.?fC2:word
>004BD540    je          004BD554
 004BD542    mov         ebx,dword ptr [ebp-4]
 004BD545    mov         edx,dword ptr [ebp-4]
 004BD548    mov         eax,dword ptr [ebx+0C4];TActionManager.?fC4:dword
 004BD54E    call        dword ptr [ebx+0C0];TActionManager.FOnStyleChanged
 004BD554    mov         eax,dword ptr [ebp-4]
 004BD557    test        byte ptr [eax+1C],10;TActionManager.FComponentState:TComponentState
>004BD55B    je          004BD564
 004BD55D    xor         eax,eax
 004BD55F    call        004BBF24
 004BD564    pop         ebx
 004BD565    mov         esp,ebp
 004BD567    pop         ebp
 004BD568    ret
*}
end;

//004BD56C
{*procedure sub_004BD56C(?:?);
begin
 004BD56C    push        ebp
 004BD56D    mov         ebp,esp
 004BD56F    add         esp,0FFFFFFF4
 004BD572    xor         ecx,ecx
 004BD574    mov         dword ptr [ebp-0C],ecx
 004BD577    mov         dword ptr [ebp-8],edx
 004BD57A    mov         dword ptr [ebp-4],eax
 004BD57D    xor         eax,eax
 004BD57F    push        ebp
 004BD580    push        4BD630
 004BD585    push        dword ptr fs:[eax]
 004BD588    mov         dword ptr fs:[eax],esp
 004BD58B    mov         edx,dword ptr [ebp-8]
 004BD58E    mov         eax,dword ptr [ebp-4]
 004BD591    call        00420AD4
 004BD596    mov         eax,dword ptr [ebp-8]
 004BD599    mov         edx,dword ptr ds:[4BA7E0];TActionListItem
 004BD59F    call        @IsClass
 004BD5A4    test        al,al
>004BD5A6    je          004BD61A
 004BD5A8    mov         eax,dword ptr [ebp-4]
 004BD5AB    cmp         dword ptr [eax+4],0;TActionListItem.FCollection:TCollection
>004BD5AF    je          004BD5BC
 004BD5B1    mov         eax,dword ptr [ebp-4]
 004BD5B4    mov         eax,dword ptr [eax+4];TActionListItem.FCollection:TCollection
 004BD5B7    mov         edx,dword ptr [eax]
 004BD5B9    call        dword ptr [edx+20];TCollection.sub_00421428
 004BD5BC    xor         eax,eax
 004BD5BE    push        ebp
 004BD5BF    push        4BD613
 004BD5C4    push        dword ptr fs:[eax]
 004BD5C7    mov         dword ptr fs:[eax],esp
 004BD5CA    mov         eax,dword ptr [ebp-8]
 004BD5CD    mov         edx,dword ptr [eax+0C]
 004BD5D0    mov         eax,dword ptr [ebp-4]
 004BD5D3    call        TActionListItem.SetActionList
 004BD5D8    lea         edx,[ebp-0C]
 004BD5DB    mov         eax,dword ptr [ebp-8]
 004BD5DE    call        TActionListItem.GetCaption
 004BD5E3    mov         edx,dword ptr [ebp-0C]
 004BD5E6    mov         eax,dword ptr [ebp-4]
 004BD5E9    add         eax,10;TActionListItem.Caption:String
 004BD5EC    call        @LStrAsg
 004BD5F1    xor         eax,eax
 004BD5F3    pop         edx
 004BD5F4    pop         ecx
 004BD5F5    pop         ecx
 004BD5F6    mov         dword ptr fs:[eax],edx
 004BD5F9    push        4BD61A
 004BD5FE    mov         eax,dword ptr [ebp-4]
 004BD601    cmp         dword ptr [eax+4],0;TActionListItem.FCollection:TCollection
>004BD605    je          004BD612
 004BD607    mov         eax,dword ptr [ebp-4]
 004BD60A    mov         eax,dword ptr [eax+4];TActionListItem.FCollection:TCollection
 004BD60D    mov         edx,dword ptr [eax]
 004BD60F    call        dword ptr [edx+24];TCollection.sub_004214C0
 004BD612    ret
>004BD613    jmp         @HandleFinally
>004BD618    jmp         004BD5FE
 004BD61A    xor         eax,eax
 004BD61C    pop         edx
 004BD61D    pop         ecx
 004BD61E    pop         ecx
 004BD61F    mov         dword ptr fs:[eax],edx
 004BD622    push        4BD637
 004BD627    lea         eax,[ebp-0C]
 004BD62A    call        @LStrClr
 004BD62F    ret
>004BD630    jmp         @HandleFinally
>004BD635    jmp         004BD627
 004BD637    mov         esp,ebp
 004BD639    pop         ebp
 004BD63A    ret
end;*}

//004BD63C
{*procedure TActionListItem.GetCaption(?:?);
begin
 004BD63C    push        ebp
 004BD63D    mov         ebp,esp
 004BD63F    add         esp,0FFFFFFF8
 004BD642    mov         dword ptr [ebp-8],edx
 004BD645    mov         dword ptr [ebp-4],eax
 004BD648    mov         eax,dword ptr [ebp-8]
 004BD64B    mov         edx,dword ptr [ebp-4]
 004BD64E    mov         edx,dword ptr [edx+10];TActionListItem.Caption:String
 004BD651    call        @LStrAsg
 004BD656    mov         eax,dword ptr [ebp-8]
 004BD659    mov         eax,dword ptr [eax]
 004BD65B    call        @LStrLen
 004BD660    test        eax,eax
>004BD662    jne         004BD68D
 004BD664    mov         eax,dword ptr [ebp-4]
 004BD667    cmp         dword ptr [eax+0C],0;TActionListItem.ActionList:TCustomActionList
>004BD66B    je          004BD680
 004BD66D    mov         eax,dword ptr [ebp-8]
 004BD670    mov         edx,dword ptr [ebp-4]
 004BD673    mov         edx,dword ptr [edx+0C];TActionListItem.ActionList:TCustomActionList
 004BD676    mov         edx,dword ptr [edx+8];TCustomActionList.Name:TComponentName
 004BD679    call        @LStrAsg
>004BD67E    jmp         004BD68D
 004BD680    mov         edx,dword ptr [ebp-8]
 004BD683    mov         eax,[0056E364];^SNoName:TResStringRec
 004BD688    call        LoadResString
 004BD68D    pop         ecx
 004BD68E    pop         ecx
 004BD68F    pop         ebp
 004BD690    ret
end;*}

//004BD694
{*procedure sub_004BD694(?:?);
begin
 004BD694    push        ebp
 004BD695    mov         ebp,esp
 004BD697    add         esp,0FFFFFFF8
 004BD69A    mov         dword ptr [ebp-8],edx
 004BD69D    mov         dword ptr [ebp-4],eax
 004BD6A0    mov         eax,dword ptr [ebp-4]
 004BD6A3    cmp         dword ptr [eax+0C],0;TActionListItem.ActionList:TCustomActionList
>004BD6A7    je          004BD6B6
 004BD6A9    mov         edx,dword ptr [ebp-8]
 004BD6AC    mov         eax,dword ptr [ebp-4]
 004BD6AF    call        TActionListItem.GetCaption
>004BD6B4    jmp         004BD6C1
 004BD6B6    mov         edx,dword ptr [ebp-8]
 004BD6B9    mov         eax,dword ptr [ebp-4]
 004BD6BC    call        004210D8
 004BD6C1    pop         ecx
 004BD6C2    pop         ecx
 004BD6C3    pop         ebp
 004BD6C4    ret
end;*}

//004BD6C8
{*function sub_004BD6C8(?:TActionListItem):?;
begin
 004BD6C8    push        ebp
 004BD6C9    mov         ebp,esp
 004BD6CB    add         esp,0FFFFFFF8
 004BD6CE    mov         dword ptr [ebp-4],eax
 004BD6D1    mov         eax,dword ptr [ebp-4]
 004BD6D4    mov         eax,dword ptr [eax+4]
 004BD6D7    mov         dword ptr [ebp-8],eax
 004BD6DA    mov         eax,dword ptr [ebp-8]
 004BD6DD    pop         ecx
 004BD6DE    pop         ecx
 004BD6DF    pop         ebp
 004BD6E0    ret
end;*}

//004BD6E4
procedure TActionListItem.SetActionList(Value:TCustomActionList);
begin
{*
 004BD6E4    push        ebp
 004BD6E5    mov         ebp,esp
 004BD6E7    add         esp,0FFFFFFF4
 004BD6EA    xor         ecx,ecx
 004BD6EC    mov         dword ptr [ebp-0C],ecx
 004BD6EF    mov         dword ptr [ebp-8],edx
 004BD6F2    mov         dword ptr [ebp-4],eax
 004BD6F5    xor         eax,eax
 004BD6F7    push        ebp
 004BD6F8    push        4BD77A
 004BD6FD    push        dword ptr fs:[eax]
 004BD700    mov         dword ptr fs:[eax],esp
 004BD703    mov         eax,dword ptr [ebp-4]
 004BD706    call        004BD6C8
 004BD70B    call        004BD788
 004BD710    cmp         eax,dword ptr [ebp-8]
>004BD713    jne         004BD736
 004BD715    lea         edx,[ebp-0C]
 004BD718    mov         eax,[0056E430];^SCirularReferencesNotAllowed:TResStringRec
 004BD71D    call        LoadResString
 004BD722    mov         ecx,dword ptr [ebp-0C]
 004BD725    mov         dl,1
 004BD727    mov         eax,[0040B004];Exception
 004BD72C    call        Exception.Create;Exception.Create
 004BD731    call        @RaiseExcept
 004BD736    mov         eax,dword ptr [ebp-4]
 004BD739    mov         eax,dword ptr [eax+0C];TActionListItem.ActionList:TCustomActionList
 004BD73C    cmp         eax,dword ptr [ebp-8]
>004BD73F    je          004BD764
 004BD741    mov         eax,dword ptr [ebp-8]
 004BD744    mov         edx,dword ptr [ebp-4]
 004BD747    mov         dword ptr [edx+0C],eax;TActionListItem.ActionList:TCustomActionList
 004BD74A    mov         eax,dword ptr [ebp-4]
 004BD74D    call        004BD6C8
 004BD752    call        004BD788
 004BD757    mov         edx,eax
 004BD759    mov         eax,dword ptr [ebp-4]
 004BD75C    mov         eax,dword ptr [eax+0C];TActionListItem.ActionList:TCustomActionList
 004BD75F    call        0042A2CC
 004BD764    xor         eax,eax
 004BD766    pop         edx
 004BD767    pop         ecx
 004BD768    pop         ecx
 004BD769    mov         dword ptr fs:[eax],edx
 004BD76C    push        4BD781
 004BD771    lea         eax,[ebp-0C]
 004BD774    call        @LStrClr
 004BD779    ret
>004BD77A    jmp         @HandleFinally
>004BD77F    jmp         004BD771
 004BD781    mov         esp,ebp
 004BD783    pop         ebp
 004BD784    ret
*}
end;

//004BD788
{*function sub_004BD788(?:?):?;
begin
 004BD788    push        ebp
 004BD789    mov         ebp,esp
 004BD78B    add         esp,0FFFFFFF8
 004BD78E    mov         dword ptr [ebp-4],eax
 004BD791    mov         eax,dword ptr [ebp-4]
 004BD794    call        00421964
 004BD799    mov         dword ptr [ebp-8],eax
 004BD79C    mov         eax,dword ptr [ebp-8]
 004BD79F    pop         ecx
 004BD7A0    pop         ecx
 004BD7A1    pop         ebp
 004BD7A2    ret
end;*}

//004BD7A4
{*function sub_004BD7A4(?:TActionListCollection; ?:?):?;
begin
 004BD7A4    push        ebp
 004BD7A5    mov         ebp,esp
 004BD7A7    add         esp,0FFFFFFF4
 004BD7AA    mov         dword ptr [ebp-8],edx
 004BD7AD    mov         dword ptr [ebp-4],eax
 004BD7B0    mov         edx,dword ptr [ebp-8]
 004BD7B3    mov         eax,dword ptr [ebp-4]
 004BD7B6    call        004215A8
 004BD7BB    mov         dword ptr [ebp-0C],eax
 004BD7BE    mov         eax,dword ptr [ebp-0C]
 004BD7C1    mov         esp,ebp
 004BD7C3    pop         ebp
 004BD7C4    ret
end;*}

//004BD7C8
{*function sub_004BD7C8(?:TActionBars; ?:?):?;
begin
 004BD7C8    push        ebp
 004BD7C9    mov         ebp,esp
 004BD7CB    add         esp,0FFFFFFF4
 004BD7CE    mov         dword ptr [ebp-8],edx
 004BD7D1    mov         dword ptr [ebp-4],eax
 004BD7D4    mov         edx,dword ptr [ebp-8]
 004BD7D7    mov         eax,dword ptr [ebp-4]
 004BD7DA    call        004215A8
 004BD7DF    mov         dword ptr [ebp-0C],eax
 004BD7E2    mov         eax,dword ptr [ebp-0C]
 004BD7E5    mov         esp,ebp
 004BD7E7    pop         ebp
 004BD7E8    ret
end;*}

//004BD7EC
{*function sub_004BD7EC(?:TCollection):?;
begin
 004BD7EC    push        ebp
 004BD7ED    mov         ebp,esp
 004BD7EF    add         esp,0FFFFFFF8
 004BD7F2    mov         dword ptr [ebp-4],eax
 004BD7F5    mov         eax,dword ptr [ebp-4]
 004BD7F8    call        00421964
 004BD7FD    mov         edx,dword ptr ds:[4BA4B4];TActionManager
 004BD803    call        @AsClass
 004BD808    mov         dword ptr [ebp-8],eax
 004BD80B    mov         eax,dword ptr [ebp-8]
 004BD80E    pop         ecx
 004BD80F    pop         ecx
 004BD810    pop         ebp
 004BD811    ret
end;*}

//004BD814
{*function sub_004BD814(?:?; ?:?):?;
begin
 004BD814    push        ebp
 004BD815    mov         ebp,esp
 004BD817    add         esp,0FFFFFFF4
 004BD81A    mov         dword ptr [ebp-4],eax
 004BD81D    mov         eax,dword ptr [ebp+8]
 004BD820    mov         edx,dword ptr [eax-4]
 004BD823    mov         eax,dword ptr [ebp-4]
 004BD826    call        00411664
 004BD82B    mov         dword ptr [ebp-0C],eax
 004BD82E    cmp         dword ptr [ebp-0C],0
 004BD832    setne       byte ptr [ebp-5]
 004BD836    cmp         byte ptr [ebp-5],0
>004BD83A    je          004BD84F
 004BD83C    mov         eax,dword ptr [ebp+8]
 004BD83F    add         eax,0FFFFFFFC
 004BD842    mov         ecx,1
 004BD847    mov         edx,dword ptr [ebp-0C]
 004BD84A    call        @LStrDelete
 004BD84F    mov         al,byte ptr [ebp-5]
 004BD852    mov         esp,ebp
 004BD854    pop         ebp
 004BD855    ret
end;*}

//004BD858
{*procedure sub_004BD858(?:?);
begin
 004BD858    push        ebp
 004BD859    mov         ebp,esp
 004BD85B    add         esp,0FFFFFFF8
 004BD85E    push        ebx
 004BD85F    mov         eax,dword ptr [ebp+8]
 004BD862    mov         edx,dword ptr [eax-0C]
 004BD865    mov         eax,dword ptr [ebp+8]
 004BD868    mov         eax,dword ptr [eax-8]
 004BD86B    mov         ecx,dword ptr [eax]
 004BD86D    call        dword ptr [ecx+8]
 004BD870    mov         eax,dword ptr [ebp+8]
 004BD873    mov         eax,dword ptr [eax-0C]
 004BD876    mov         edx,dword ptr [eax]
 004BD878    call        dword ptr [edx+14]
 004BD87B    mov         edx,dword ptr [ebp+8]
 004BD87E    mov         dword ptr [edx-10],eax
 004BD881    mov         eax,dword ptr [ebp+8]
 004BD884    mov         eax,dword ptr [eax-14]
 004BD887    mov         edx,dword ptr [eax]
 004BD889    call        dword ptr [edx+14]
 004BD88C    dec         eax
 004BD88D    test        eax,eax
>004BD88F    jl          004BD8D0
 004BD891    inc         eax
 004BD892    mov         dword ptr [ebp-8],eax
 004BD895    mov         dword ptr [ebp-4],0
 004BD89C    mov         eax,dword ptr [ebp+8]
 004BD89F    mov         eax,dword ptr [eax-14]
 004BD8A2    mov         edx,dword ptr [ebp-4]
 004BD8A5    mov         ecx,dword ptr [eax]
 004BD8A7    call        dword ptr [ecx+18]
 004BD8AA    push        eax
 004BD8AB    mov         eax,dword ptr [ebp+8]
 004BD8AE    mov         eax,dword ptr [eax-14]
 004BD8B1    mov         edx,dword ptr [ebp-4]
 004BD8B4    mov         ecx,dword ptr [eax]
 004BD8B6    call        dword ptr [ecx+18]
 004BD8B9    mov         edx,dword ptr [eax+20]
 004BD8BC    mov         eax,dword ptr [ebp+8]
 004BD8BF    mov         eax,dword ptr [eax-8]
 004BD8C2    pop         ecx
 004BD8C3    mov         ebx,dword ptr [eax]
 004BD8C5    call        dword ptr [ebx+3C]
 004BD8C8    inc         dword ptr [ebp-4]
 004BD8CB    dec         dword ptr [ebp-8]
>004BD8CE    jne         004BD89C
 004BD8D0    mov         eax,dword ptr [ebp+8]
 004BD8D3    add         eax,0FFFFFFE8
 004BD8D6    mov         edx,dword ptr [ebp+8]
 004BD8D9    mov         edx,dword ptr [edx-4]
 004BD8DC    call        @LStrLAsg
 004BD8E1    pop         ebx
 004BD8E2    pop         ecx
 004BD8E3    pop         ecx
 004BD8E4    pop         ebp
 004BD8E5    ret
end;*}

//004BD8E8
{*procedure sub_004BD8E8(?:AnsiString; ?:?; ?:?);
begin
 004BD8E8    push        ebp
 004BD8E9    mov         ebp,esp
 004BD8EB    add         esp,0FFFFFFE0
 004BD8EE    push        ebx
 004BD8EF    xor         ebx,ebx
 004BD8F1    mov         dword ptr [ebp-20],ebx
 004BD8F4    mov         dword ptr [ebp-1C],ebx
 004BD8F7    mov         dword ptr [ebp-0C],ecx
 004BD8FA    mov         dword ptr [ebp-8],edx
 004BD8FD    mov         dword ptr [ebp-4],eax
 004BD900    xor         eax,eax
 004BD902    push        ebp
 004BD903    push        4BDA32
 004BD908    push        dword ptr fs:[eax]
 004BD90B    mov         dword ptr fs:[eax],esp
 004BD90E    mov         byte ptr [ebp-11],0
 004BD912    mov         eax,dword ptr [ebp-4]
 004BD915    mov         eax,dword ptr [eax]
 004BD917    call        @LStrLen
 004BD91C    test        eax,eax
>004BD91E    jle         004BD954
 004BD920    mov         dword ptr [ebp-18],eax
 004BD923    mov         dword ptr [ebp-10],1
 004BD92A    mov         eax,dword ptr [ebp-4]
 004BD92D    mov         eax,dword ptr [eax]
 004BD92F    mov         edx,dword ptr [ebp-10]
 004BD932    mov         al,byte ptr [eax+edx-1]
 004BD936    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004BD93C    and         eax,0FF
 004BD941    bt          dword ptr [edx],eax
>004BD944    jae         004BD94C
 004BD946    mov         byte ptr [ebp-11],1
>004BD94A    jmp         004BD954
 004BD94C    inc         dword ptr [ebp-10]
 004BD94F    dec         dword ptr [ebp-18]
>004BD952    jne         004BD92A
 004BD954    cmp         byte ptr [ebp-11],0
>004BD958    je          004BDA01
 004BD95E    lea         eax,[ebp-1C]
 004BD961    push        eax
 004BD962    mov         eax,dword ptr [ebp-4]
 004BD965    mov         eax,dword ptr [eax]
 004BD967    call        @LStrLen
 004BD96C    mov         edx,eax
 004BD96E    sub         edx,3
 004BD971    inc         edx
 004BD972    mov         eax,dword ptr [ebp-4]
 004BD975    mov         eax,dword ptr [eax]
 004BD977    mov         ecx,3
 004BD97C    call        @LStrCopy
 004BD981    mov         eax,dword ptr [ebp-1C]
 004BD984    mov         edx,4BDA48;'...'
 004BD989    call        @LStrCmp
>004BD98E    jne         004BD9DB
 004BD990    lea         eax,[ebp-20]
 004BD993    push        eax
 004BD994    mov         eax,dword ptr [ebp-4]
 004BD997    mov         eax,dword ptr [eax]
 004BD999    call        @LStrLen
 004BD99E    mov         ecx,eax
 004BD9A0    sub         ecx,3
 004BD9A3    mov         eax,dword ptr [ebp-4]
 004BD9A6    mov         eax,dword ptr [eax]
 004BD9A8    mov         edx,1
 004BD9AD    call        @LStrCopy
 004BD9B2    push        dword ptr [ebp-20]
 004BD9B5    push        4BDA54;'('
 004BD9BA    push        4BDA60;'&'
 004BD9BF    push        dword ptr [ebp-8]
 004BD9C2    push        4BDA6C;')'
 004BD9C7    push        4BDA48;'...'
 004BD9CC    mov         eax,dword ptr [ebp-4]
 004BD9CF    mov         edx,6
 004BD9D4    call        @LStrCatN
>004BD9D9    jmp         004BDA17
 004BD9DB    mov         eax,dword ptr [ebp-4]
 004BD9DE    push        dword ptr [eax]
 004BD9E0    push        4BDA54;'('
 004BD9E5    push        4BDA60;'&'
 004BD9EA    push        dword ptr [ebp-8]
 004BD9ED    push        4BDA6C;')'
 004BD9F2    mov         eax,dword ptr [ebp-4]
 004BD9F5    mov         edx,5
 004BD9FA    call        @LStrCatN
>004BD9FF    jmp         004BDA17
 004BDA01    cmp         dword ptr [ebp-0C],0
>004BDA05    je          004BDA17
 004BDA07    mov         edx,dword ptr [ebp-4]
 004BDA0A    mov         ecx,dword ptr [ebp-0C]
 004BDA0D    mov         eax,4BDA60;'&'
 004BDA12    call        @LStrInsert
 004BDA17    xor         eax,eax
 004BDA19    pop         edx
 004BDA1A    pop         ecx
 004BDA1B    pop         ecx
 004BDA1C    mov         dword ptr fs:[eax],edx
 004BDA1F    push        4BDA39
 004BDA24    lea         eax,[ebp-20]
 004BDA27    mov         edx,2
 004BDA2C    call        @LStrArrayClr
 004BDA31    ret
>004BDA32    jmp         @HandleFinally
>004BDA37    jmp         004BDA24
 004BDA39    pop         ebx
 004BDA3A    mov         esp,ebp
 004BDA3C    pop         ebp
 004BDA3D    ret
end;*}

//004BDA70
{*function sub_004BDA70(?:TActionClientsCollection; ?:?):?;
begin
 004BDA70    push        ebp
 004BDA71    mov         ebp,esp
 004BDA73    add         esp,0FFFFFFA8
 004BDA76    push        ebx
 004BDA77    xor         ecx,ecx
 004BDA79    mov         dword ptr [ebp-58],ecx
 004BDA7C    mov         dword ptr [ebp-54],ecx
 004BDA7F    mov         dword ptr [ebp-50],ecx
 004BDA82    mov         dword ptr [ebp-4C],ecx
 004BDA85    mov         dword ptr [ebp-38],ecx
 004BDA88    mov         dword ptr [ebp-3C],ecx
 004BDA8B    mov         dword ptr [ebp-40],ecx
 004BDA8E    mov         dword ptr [ebp-4],ecx
 004BDA91    mov         dword ptr [ebp-18],ecx
 004BDA94    mov         byte ptr [ebp-1D],dl
 004BDA97    mov         dword ptr [ebp-1C],eax
 004BDA9A    xor         eax,eax
 004BDA9C    push        ebp
 004BDA9D    push        4BDFA2
 004BDAA2    push        dword ptr fs:[eax]
 004BDAA5    mov         dword ptr fs:[eax],esp
 004BDAA8    mov         byte ptr [ebp-1E],0
 004BDAAC    mov         eax,dword ptr [ebp-1C]
 004BDAAF    cmp         byte ptr [eax+1C],0;TActionBars.FAutoHotKeys:Boolean
>004BDAB3    je          004BDF6A
 004BDAB9    cmp         byte ptr [ebp-1D],0
>004BDABD    je          004BDF10
 004BDAC3    lea         eax,[ebp-4]
 004BDAC6    mov         edx,dword ptr ds:[56E5C4];^^gvar_0049780C
 004BDACC    mov         edx,dword ptr [edx]
 004BDACE    call        @LStrLAsg
 004BDAD3    mov         dl,1
 004BDAD5    mov         eax,[0041DB24];TStringList
 004BDADA    call        TObject.Create;TStringList.Create
 004BDADF    mov         dword ptr [ebp-0C],eax
 004BDAE2    mov         dl,1
 004BDAE4    mov         eax,[0041DB24];TStringList
 004BDAE9    call        TObject.Create;TStringList.Create
 004BDAEE    mov         dword ptr [ebp-14],eax
 004BDAF1    mov         dl,1
 004BDAF3    mov         eax,[0041DB24];TStringList
 004BDAF8    call        TObject.Create;TStringList.Create
 004BDAFD    mov         dword ptr [ebp-24],eax
 004BDB00    mov         dl,1
 004BDB02    mov         eax,[0041DB24];TStringList
 004BDB07    call        TObject.Create;TStringList.Create
 004BDB0C    mov         dword ptr [ebp-8],eax
 004BDB0F    xor         eax,eax
 004BDB11    mov         dword ptr [ebp-10],eax
 004BDB14    xor         eax,eax
 004BDB16    push        ebp
 004BDB17    push        4BDF09
 004BDB1C    push        dword ptr fs:[eax]
 004BDB1F    mov         dword ptr fs:[eax],esp
 004BDB22    mov         eax,dword ptr [ebp-1C]
 004BDB25    call        0042158C
 004BDB2A    dec         eax
 004BDB2B    test        eax,eax
>004BDB2D    jl          004BDC53
 004BDB33    inc         eax
 004BDB34    mov         dword ptr [ebp-44],eax
 004BDB37    mov         dword ptr [ebp-28],0
 004BDB3E    mov         edx,dword ptr [ebp-28]
 004BDB41    mov         eax,dword ptr [ebp-1C]
 004BDB44    call        004BD7C8
 004BDB49    cmp         byte ptr [eax+30],0
>004BDB4D    je          004BDC47
 004BDB53    mov         edx,dword ptr [ebp-28]
 004BDB56    mov         eax,dword ptr [ebp-1C]
 004BDB59    call        004BD7C8
 004BDB5E    mov         eax,dword ptr [eax+20]
 004BDB61    mov         edx,4BDFBC;'-'
 004BDB66    call        @LStrCmp
>004BDB6B    je          004BDC47
 004BDB71    mov         edx,dword ptr [ebp-28]
 004BDB74    mov         eax,dword ptr [ebp-1C]
 004BDB77    call        004BD7C8
 004BDB7C    cmp         dword ptr [eax+20],0
>004BDB80    je          004BDC47
 004BDB86    mov         edx,dword ptr [ebp-28]
 004BDB89    mov         eax,dword ptr [ebp-1C]
 004BDB8C    call        004BD7C8
 004BDB91    mov         eax,dword ptr [eax+20]
 004BDB94    lea         edx,[ebp-4C]
 004BDB97    call        0049E0B8
 004BDB9C    mov         eax,dword ptr [ebp-4C]
 004BDB9F    lea         edx,[ebp-38]
 004BDBA2    call        0040BCC8
 004BDBA7    cmp         dword ptr [ebp-38],0
>004BDBAB    jne         004BDBD3
 004BDBAD    mov         edx,dword ptr [ebp-28]
 004BDBB0    mov         eax,dword ptr [ebp-1C]
 004BDBB3    call        004215A8
 004BDBB8    push        eax
 004BDBB9    mov         edx,dword ptr [ebp-28]
 004BDBBC    mov         eax,dword ptr [ebp-1C]
 004BDBBF    call        004BD7C8
 004BDBC4    mov         ecx,dword ptr [eax+20]
 004BDBC7    xor         edx,edx
 004BDBC9    mov         eax,dword ptr [ebp-24]
 004BDBCC    mov         ebx,dword ptr [eax]
 004BDBCE    call        dword ptr [ebx+64];TStringList.sub_00423138
>004BDBD1    jmp         004BDC47
 004BDBD3    mov         edx,dword ptr ds:[56E5C4];^^gvar_0049780C
 004BDBD9    mov         edx,dword ptr [edx]
 004BDBDB    mov         eax,dword ptr [ebp-38]
 004BDBDE    call        00411664
 004BDBE3    test        eax,eax
>004BDBE5    je          004BDC47
 004BDBE7    push        ebp
 004BDBE8    mov         eax,dword ptr [ebp-38]
 004BDBEB    call        004BD814
 004BDBF0    pop         ecx
 004BDBF1    test        al,al
>004BDBF3    jne         004BDC47
 004BDBF5    mov         edx,dword ptr [ebp-28]
 004BDBF8    mov         eax,dword ptr [ebp-1C]
 004BDBFB    call        004BD7C8
 004BDC00    add         eax,20
 004BDC03    push        eax
 004BDC04    mov         edx,dword ptr [ebp-28]
 004BDC07    mov         eax,dword ptr [ebp-1C]
 004BDC0A    call        004BD7C8
 004BDC0F    mov         eax,dword ptr [eax+20]
 004BDC12    lea         edx,[ebp-50]
 004BDC15    call        0049DFE4
 004BDC1A    mov         edx,dword ptr [ebp-50]
 004BDC1D    pop         eax
 004BDC1E    call        @LStrAsg
 004BDC23    mov         edx,dword ptr [ebp-28]
 004BDC26    mov         eax,dword ptr [ebp-1C]
 004BDC29    call        004215A8
 004BDC2E    push        eax
 004BDC2F    mov         edx,dword ptr [ebp-28]
 004BDC32    mov         eax,dword ptr [ebp-1C]
 004BDC35    call        004BD7C8
 004BDC3A    mov         ecx,dword ptr [eax+20]
 004BDC3D    xor         edx,edx
 004BDC3F    mov         eax,dword ptr [ebp-24]
 004BDC42    mov         ebx,dword ptr [eax]
 004BDC44    call        dword ptr [ebx+64];TStringList.sub_00423138
 004BDC47    inc         dword ptr [ebp-28]
 004BDC4A    dec         dword ptr [ebp-44]
>004BDC4D    jne         004BDB3E
 004BDC53    lea         eax,[ebp-40]
 004BDC56    mov         edx,dword ptr [ebp-4]
 004BDC59    call        @LStrLAsg
 004BDC5E    mov         eax,dword ptr [ebp-24]
 004BDC61    mov         edx,dword ptr [eax]
 004BDC63    call        dword ptr [edx+14];TStringList.sub_00423008
 004BDC66    dec         eax
 004BDC67    test        eax,eax
>004BDC69    jl          004BDE00
 004BDC6F    inc         eax
 004BDC70    mov         dword ptr [ebp-44],eax
 004BDC73    mov         dword ptr [ebp-2C],0
 004BDC7A    lea         eax,[ebp-4]
 004BDC7D    mov         edx,dword ptr [ebp-40]
 004BDC80    call        @LStrLAsg
 004BDC85    mov         edx,dword ptr [ebp-24]
 004BDC88    mov         eax,dword ptr [ebp-14]
 004BDC8B    mov         ecx,dword ptr [eax]
 004BDC8D    call        dword ptr [ecx+8];TStringList.sub_00421BB0
 004BDC90    mov         eax,dword ptr [ebp-0C]
 004BDC93    mov         edx,dword ptr [eax]
 004BDC95    call        dword ptr [edx+44];TStringList.Clear
 004BDC98    mov         eax,dword ptr [ebp-14]
 004BDC9B    mov         edx,dword ptr [eax]
 004BDC9D    call        dword ptr [edx+14];TStringList.sub_00423008
 004BDCA0    dec         eax
 004BDCA1    cmp         eax,0
>004BDCA4    jl          004BDD86
 004BDCAA    mov         dword ptr [ebp-28],eax
 004BDCAD    lea         ecx,[ebp-3C]
 004BDCB0    mov         edx,dword ptr [ebp-28]
 004BDCB3    mov         eax,dword ptr [ebp-14]
 004BDCB6    mov         ebx,dword ptr [eax]
 004BDCB8    call        dword ptr [ebx+0C];TStringList.sub_00422FA0
 004BDCBB    mov         dword ptr [ebp-30],1
>004BDCC2    jmp         004BDD68
 004BDCC7    mov         eax,dword ptr [ebp-3C]
 004BDCCA    mov         edx,dword ptr [ebp-30]
 004BDCCD    mov         al,byte ptr [eax+edx-1]
 004BDCD1    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004BDCD7    and         eax,0FF
 004BDCDC    bt          dword ptr [edx],eax
>004BDCDF    jae         004BDCE6
 004BDCE1    inc         dword ptr [ebp-30]
>004BDCE4    jmp         004BDD65
 004BDCE6    lea         eax,[ebp-54]
 004BDCE9    push        eax
 004BDCEA    mov         ecx,1
 004BDCEF    mov         edx,dword ptr [ebp-30]
 004BDCF2    mov         eax,dword ptr [ebp-3C]
 004BDCF5    call        @LStrCopy
 004BDCFA    mov         eax,dword ptr [ebp-54]
 004BDCFD    lea         edx,[ebp-38]
 004BDD00    call        0040BCC8
 004BDD05    push        ebp
 004BDD06    mov         eax,dword ptr [ebp-38]
 004BDD09    call        004BD814
 004BDD0E    pop         ecx
 004BDD0F    test        al,al
>004BDD11    je          004BDD65
 004BDD13    mov         eax,[0056E638];^gvar_0057196C:Integer
 004BDD18    cmp         byte ptr [eax+0C],0
>004BDD1C    je          004BDD30
 004BDD1E    push        ebp
 004BDD1F    lea         eax,[ebp-3C]
 004BDD22    mov         ecx,dword ptr [ebp-30]
 004BDD25    mov         edx,dword ptr [ebp-38]
 004BDD28    call        004BD8E8
 004BDD2D    pop         ecx
>004BDD2E    jmp         004BDD40
 004BDD30    lea         edx,[ebp-3C]
 004BDD33    mov         ecx,dword ptr [ebp-30]
 004BDD36    mov         eax,4BDFC8;'&'
 004BDD3B    call        @LStrInsert
 004BDD40    mov         edx,dword ptr [ebp-28]
 004BDD43    mov         eax,dword ptr [ebp-14]
 004BDD46    mov         ecx,dword ptr [eax]
 004BDD48    call        dword ptr [ecx+18];TStringList.sub_00423024
 004BDD4B    mov         ecx,eax
 004BDD4D    mov         edx,dword ptr [ebp-3C]
 004BDD50    mov         eax,dword ptr [ebp-0C]
 004BDD53    mov         ebx,dword ptr [eax]
 004BDD55    call        dword ptr [ebx+3C];TStringList.sub_00422C5C
 004BDD58    mov         edx,dword ptr [ebp-28]
 004BDD5B    mov         eax,dword ptr [ebp-14]
 004BDD5E    mov         ecx,dword ptr [eax]
 004BDD60    call        dword ptr [ecx+48];TStringList.sub_00422D80
>004BDD63    jmp         004BDD79
 004BDD65    inc         dword ptr [ebp-30]
 004BDD68    mov         eax,dword ptr [ebp-3C]
 004BDD6B    call        @LStrLen
 004BDD70    cmp         eax,dword ptr [ebp-30]
>004BDD73    jge         004BDCC7
 004BDD79    dec         dword ptr [ebp-28]
 004BDD7C    cmp         dword ptr [ebp-28],0FFFFFFFF
>004BDD80    jne         004BDCAD
 004BDD86    mov         eax,dword ptr [ebp-0C]
 004BDD89    mov         edx,dword ptr [eax]
 004BDD8B    call        dword ptr [edx+14];TStringList.sub_00423008
 004BDD8E    cmp         eax,dword ptr [ebp-10]
>004BDD91    jle         004BDD9A
 004BDD93    push        ebp
 004BDD94    call        004BD858
 004BDD99    pop         ecx
 004BDD9A    mov         eax,dword ptr [ebp-14]
 004BDD9D    mov         edx,dword ptr [eax]
 004BDD9F    call        dword ptr [edx+14];TStringList.sub_00423008
 004BDDA2    test        eax,eax
>004BDDA4    jle         004BDE00
 004BDDA6    mov         eax,dword ptr [ebp-14]
 004BDDA9    mov         edx,dword ptr [eax]
 004BDDAB    call        dword ptr [edx+14];TStringList.sub_00423008
 004BDDAE    dec         eax
 004BDDAF    test        eax,eax
>004BDDB1    jl          004BDDF4
 004BDDB3    inc         eax
 004BDDB4    mov         dword ptr [ebp-48],eax
 004BDDB7    mov         dword ptr [ebp-28],0
 004BDDBE    mov         edx,dword ptr [ebp-28]
 004BDDC1    mov         eax,dword ptr [ebp-14]
 004BDDC4    mov         ecx,dword ptr [eax]
 004BDDC6    call        dword ptr [ecx+18];TStringList.sub_00423024
 004BDDC9    mov         edx,eax
 004BDDCB    mov         eax,dword ptr [ebp-24]
 004BDDCE    mov         ecx,dword ptr [eax]
 004BDDD0    call        dword ptr [ecx+5C];TStringList.sub_00422458
 004BDDD3    mov         dword ptr [ebp-34],eax
 004BDDD6    mov         eax,dword ptr [ebp-24]
 004BDDD9    mov         edx,dword ptr [eax]
 004BDDDB    call        dword ptr [edx+14];TStringList.sub_00423008
 004BDDDE    mov         ecx,eax
 004BDDE0    dec         ecx
 004BDDE1    mov         edx,dword ptr [ebp-34]
 004BDDE4    mov         eax,dword ptr [ebp-24]
 004BDDE7    mov         ebx,dword ptr [eax]
 004BDDE9    call        dword ptr [ebx+70];TStringList.sub_004225E8
 004BDDEC    inc         dword ptr [ebp-28]
 004BDDEF    dec         dword ptr [ebp-48]
>004BDDF2    jne         004BDDBE
 004BDDF4    inc         dword ptr [ebp-2C]
 004BDDF7    dec         dword ptr [ebp-44]
>004BDDFA    jne         004BDC7A
 004BDE00    cmp         dword ptr [ebp-10],0
>004BDE04    jne         004BDE0D
 004BDE06    push        ebp
 004BDE07    call        004BD858
 004BDE0C    pop         ecx
 004BDE0D    mov         eax,dword ptr [ebp-8]
 004BDE10    mov         edx,dword ptr [eax]
 004BDE12    call        dword ptr [edx+14];TStringList.sub_00423008
 004BDE15    test        eax,eax
 004BDE17    setg        byte ptr [ebp-1E]
 004BDE1B    mov         eax,dword ptr [ebp-8]
 004BDE1E    mov         edx,dword ptr [eax]
 004BDE20    call        dword ptr [edx+14];TStringList.sub_00423008
 004BDE23    dec         eax
 004BDE24    test        eax,eax
>004BDE26    jl          004BDEDB
 004BDE2C    inc         eax
 004BDE2D    mov         dword ptr [ebp-44],eax
 004BDE30    mov         dword ptr [ebp-28],0
 004BDE37    lea         ecx,[ebp-3C]
 004BDE3A    mov         edx,dword ptr [ebp-28]
 004BDE3D    mov         eax,dword ptr [ebp-8]
 004BDE40    mov         ebx,dword ptr [eax]
 004BDE42    call        dword ptr [ebx+0C];TStringList.sub_00422FA0
 004BDE45    mov         eax,[0056E638];^gvar_0057196C:Integer
 004BDE4A    cmp         byte ptr [eax+0C],0
>004BDE4E    je          004BDEB9
 004BDE50    mov         edx,dword ptr [ebp-3C]
 004BDE53    mov         eax,4BDFC8;'&'
 004BDE58    call        00411664
 004BDE5D    test        eax,eax
>004BDE5F    jne         004BDEB9
 004BDE61    cmp         dword ptr [ebp-18],0
>004BDE65    je          004BDEB9
 004BDE67    mov         edx,dword ptr [ebp-3C]
 004BDE6A    mov         eax,4BDFC8;'&'
 004BDE6F    call        00411664
 004BDE74    test        eax,eax
>004BDE76    jne         004BDEB9
 004BDE78    push        ebp
 004BDE79    lea         eax,[ebp-58]
 004BDE7C    push        eax
 004BDE7D    mov         eax,dword ptr [ebp-18]
 004BDE80    call        @LStrLen
 004BDE85    mov         edx,eax
 004BDE87    mov         ecx,1
 004BDE8C    mov         eax,dword ptr [ebp-18]
 004BDE8F    call        @LStrCopy
 004BDE94    mov         edx,dword ptr [ebp-58]
 004BDE97    lea         eax,[ebp-3C]
 004BDE9A    xor         ecx,ecx
 004BDE9C    call        004BD8E8
 004BDEA1    pop         ecx
 004BDEA2    mov         eax,dword ptr [ebp-18]
 004BDEA5    call        @LStrLen
 004BDEAA    mov         edx,eax
 004BDEAC    lea         eax,[ebp-18]
 004BDEAF    mov         ecx,1
 004BDEB4    call        @LStrDelete
 004BDEB9    mov         edx,dword ptr [ebp-28]
 004BDEBC    mov         eax,dword ptr [ebp-8]
 004BDEBF    mov         ecx,dword ptr [eax]
 004BDEC1    call        dword ptr [ecx+18];TStringList.sub_00423024
 004BDEC4    add         eax,20
 004BDEC7    mov         edx,dword ptr [ebp-3C]
 004BDECA    call        @LStrAsg
 004BDECF    inc         dword ptr [ebp-28]
 004BDED2    dec         dword ptr [ebp-44]
>004BDED5    jne         004BDE37
 004BDEDB    xor         eax,eax
 004BDEDD    pop         edx
 004BDEDE    pop         ecx
 004BDEDF    pop         ecx
 004BDEE0    mov         dword ptr fs:[eax],edx
 004BDEE3    push        4BDF10
 004BDEE8    mov         eax,dword ptr [ebp-8]
 004BDEEB    call        TObject.Free
 004BDEF0    mov         eax,dword ptr [ebp-24]
 004BDEF3    call        TObject.Free
 004BDEF8    mov         eax,dword ptr [ebp-14]
 004BDEFB    call        TObject.Free
 004BDF00    mov         eax,dword ptr [ebp-0C]
 004BDF03    call        TObject.Free
 004BDF08    ret
>004BDF09    jmp         @HandleFinally
>004BDF0E    jmp         004BDEE8
 004BDF10    mov         eax,dword ptr [ebp-1C]
 004BDF13    call        0042158C
 004BDF18    dec         eax
 004BDF19    test        eax,eax
>004BDF1B    jl          004BDF6A
 004BDF1D    inc         eax
 004BDF1E    mov         dword ptr [ebp-44],eax
 004BDF21    mov         dword ptr [ebp-28],0
 004BDF28    mov         edx,dword ptr [ebp-28]
 004BDF2B    mov         eax,dword ptr [ebp-1C]
 004BDF2E    call        004BD7C8
 004BDF33    cmp         dword ptr [eax+2C],0
>004BDF37    je          004BDF62
 004BDF39    mov         edx,dword ptr [ebp-28]
 004BDF3C    mov         eax,dword ptr [ebp-1C]
 004BDF3F    call        004BD7C8
 004BDF44    mov         eax,dword ptr [eax+2C]
 004BDF47    cmp         byte ptr [eax+1C],0
>004BDF4B    je          004BDF62
 004BDF4D    mov         edx,dword ptr [ebp-28]
 004BDF50    mov         eax,dword ptr [ebp-1C]
 004BDF53    call        004BD7C8
 004BDF58    mov         eax,dword ptr [eax+2C]
 004BDF5B    mov         dl,1
 004BDF5D    call        004BDA70
 004BDF62    inc         dword ptr [ebp-28]
 004BDF65    dec         dword ptr [ebp-44]
>004BDF68    jne         004BDF28
 004BDF6A    xor         eax,eax
 004BDF6C    pop         edx
 004BDF6D    pop         ecx
 004BDF6E    pop         ecx
 004BDF6F    mov         dword ptr fs:[eax],edx
 004BDF72    push        4BDFA9
 004BDF77    lea         eax,[ebp-58]
 004BDF7A    mov         edx,4
 004BDF7F    call        @LStrArrayClr
 004BDF84    lea         eax,[ebp-40]
 004BDF87    mov         edx,3
 004BDF8C    call        @LStrArrayClr
 004BDF91    lea         eax,[ebp-18]
 004BDF94    call        @LStrClr
 004BDF99    lea         eax,[ebp-4]
 004BDF9C    call        @LStrClr
 004BDFA1    ret
>004BDFA2    jmp         @HandleFinally
>004BDFA7    jmp         004BDF77
 004BDFA9    mov         al,byte ptr [ebp-1E]
 004BDFAC    pop         ebx
 004BDFAD    mov         esp,ebp
 004BDFAF    pop         ebp
 004BDFB0    ret
end;*}

//004BDFCC
procedure TActionClientsCollection.AfterConstruction;
begin
{*
 004BDFCC    push        ebp
 004BDFCD    mov         ebp,esp
 004BDFCF    push        ecx
 004BDFD0    mov         dword ptr [ebp-4],eax;{TObject.AfterConstruction}
 004BDFD3    mov         eax,dword ptr [ebp-4]
 004BDFD6    call        TCustomVariantType.AfterConstruction
 004BDFDB    mov         eax,dword ptr [ebp-4]
 004BDFDE    mov         byte ptr [eax+24],1
 004BDFE2    pop         ecx
 004BDFE3    pop         ebp
 004BDFE4    ret
*}
end;

//004BDFE8
{*procedure sub_004BDFE8(?:?);
begin
 004BDFE8    push        ebp
 004BDFE9    mov         ebp,esp
 004BDFEB    add         esp,0FFFFFFF8
 004BDFEE    push        esi
 004BDFEF    mov         dword ptr [ebp-4],eax
 004BDFF2    mov         eax,dword ptr [ebp-4]
 004BDFF5    call        TActionClient.GetItems
 004BDFFA    call        0042158C
 004BDFFF    test        eax,eax
>004BE001    je          004BE035
 004BE003    mov         eax,dword ptr [ebp-4]
 004BE006    call        TActionClient.GetItems
 004BE00B    mov         dword ptr [ebp-8],eax
 004BE00E    mov         eax,dword ptr [ebp-8]
 004BE011    cmp         dword ptr [eax+20],0
>004BE015    je          004BE035
 004BE017    mov         eax,dword ptr [ebp-8]
 004BE01A    mov         eax,dword ptr [eax+20]
 004BE01D    cmp         dword ptr [eax+0C],0
>004BE021    je          004BE035
 004BE023    mov         eax,dword ptr [ebp-8]
 004BE026    mov         eax,dword ptr [eax+20]
 004BE029    mov         eax,dword ptr [eax+0C]
 004BE02C    mov         si,0FFCF
 004BE030    call        @CallDynaInst
 004BE035    pop         esi
 004BE036    pop         ecx
 004BE037    pop         ecx
 004BE038    pop         ebp
 004BE039    ret
end;*}

//004BE03C
{*procedure sub_004BE03C(?:TActionClientsCollection; ?:TActionClientsCollection; ?:?; ?:?; ?:?);
begin
 004BE03C    push        ebp
 004BE03D    mov         ebp,esp
 004BE03F    add         esp,0FFFFFFF0
 004BE042    mov         dword ptr [ebp-8],edx
 004BE045    mov         dword ptr [ebp-4],eax
 004BE048    cmp         dword ptr [ebp-8],0
>004BE04C    je          004BE180
 004BE052    mov         eax,dword ptr [ebp-8]
 004BE055    call        0042158C
 004BE05A    dec         eax
 004BE05B    test        eax,eax
>004BE05D    jl          004BE180
 004BE063    inc         eax
 004BE064    mov         dword ptr [ebp-10],eax
 004BE067    mov         dword ptr [ebp-0C],0
 004BE06E    mov         edx,dword ptr [ebp-0C]
 004BE071    mov         eax,dword ptr [ebp-8]
 004BE074    call        004BD7C8
 004BE079    call        004BE56C
 004BE07E    test        al,al
>004BE080    je          004BE0E5
 004BE082    cmp         word ptr [ebp+0A],0
>004BE087    je          004BE09E
 004BE089    mov         edx,dword ptr [ebp-0C]
 004BE08C    mov         eax,dword ptr [ebp-8]
 004BE08F    call        004BD7C8
 004BE094    mov         edx,eax
 004BE096    mov         eax,dword ptr [ebp+0C]
 004BE099    call        dword ptr [ebp+8]
>004BE09C    jmp         004BE0AE
 004BE09E    mov         edx,dword ptr [ebp-0C]
 004BE0A1    mov         eax,dword ptr [ebp-8]
 004BE0A4    call        004BD7C8
 004BE0A9    mov         edx,dword ptr [eax]
 004BE0AB    call        dword ptr [edx+30]
 004BE0AE    push        dword ptr [ebp+0C]
 004BE0B1    push        dword ptr [ebp+8]
 004BE0B4    mov         edx,dword ptr [ebp-0C]
 004BE0B7    mov         eax,dword ptr [ebp-8]
 004BE0BA    call        004BD7C8
 004BE0BF    call        TActionClient.GetItems
 004BE0C4    mov         edx,eax
 004BE0C6    mov         eax,dword ptr [ebp-4]
 004BE0C9    call        004BE03C
 004BE0CE    push        ebp
 004BE0CF    mov         edx,dword ptr [ebp-0C]
 004BE0D2    mov         eax,dword ptr [ebp-8]
 004BE0D5    call        004BD7C8
 004BE0DA    call        004BDFE8
 004BE0DF    pop         ecx
>004BE0E0    jmp         004BE174
 004BE0E5    mov         edx,dword ptr [ebp-0C]
 004BE0E8    mov         eax,dword ptr [ebp-8]
 004BE0EB    call        004BD7C8
 004BE0F0    cmp         dword ptr [eax+0C],0
>004BE0F4    je          004BE136
 004BE0F6    cmp         word ptr [ebp+0A],0
>004BE0FB    je          004BE112
 004BE0FD    mov         edx,dword ptr [ebp-0C]
 004BE100    mov         eax,dword ptr [ebp-8]
 004BE103    call        004BD7C8
 004BE108    mov         edx,eax
 004BE10A    mov         eax,dword ptr [ebp+0C]
 004BE10D    call        dword ptr [ebp+8]
>004BE110    jmp         004BE122
 004BE112    mov         edx,dword ptr [ebp-0C]
 004BE115    mov         eax,dword ptr [ebp-8]
 004BE118    call        004BD7C8
 004BE11D    mov         edx,dword ptr [eax]
 004BE11F    call        dword ptr [edx+30]
 004BE122    push        ebp
 004BE123    mov         edx,dword ptr [ebp-0C]
 004BE126    mov         eax,dword ptr [ebp-8]
 004BE129    call        004BD7C8
 004BE12E    call        004BDFE8
 004BE133    pop         ecx
>004BE134    jmp         004BE174
 004BE136    cmp         word ptr [ebp+0A],0
>004BE13B    je          004BE152
 004BE13D    mov         edx,dword ptr [ebp-0C]
 004BE140    mov         eax,dword ptr [ebp-8]
 004BE143    call        004BD7C8
 004BE148    mov         edx,eax
 004BE14A    mov         eax,dword ptr [ebp+0C]
 004BE14D    call        dword ptr [ebp+8]
>004BE150    jmp         004BE162
 004BE152    mov         edx,dword ptr [ebp-0C]
 004BE155    mov         eax,dword ptr [ebp-8]
 004BE158    call        004BD7C8
 004BE15D    mov         edx,dword ptr [eax]
 004BE15F    call        dword ptr [edx+30]
 004BE162    push        ebp
 004BE163    mov         edx,dword ptr [ebp-0C]
 004BE166    mov         eax,dword ptr [ebp-8]
 004BE169    call        004BD7C8
 004BE16E    call        004BDFE8
 004BE173    pop         ecx
 004BE174    inc         dword ptr [ebp-0C]
 004BE177    dec         dword ptr [ebp-10]
>004BE17A    jne         004BE06E
 004BE180    mov         esp,ebp
 004BE182    pop         ebp
 004BE183    ret         8
end;*}

//004BE188
procedure TActionClients.SetAutoHotKeys(Value:Boolean);
begin
{*
 004BE188    push        ebp
 004BE189    mov         ebp,esp
 004BE18B    add         esp,0FFFFFFF8
 004BE18E    mov         byte ptr [ebp-5],dl
 004BE191    mov         dword ptr [ebp-4],eax
 004BE194    mov         eax,dword ptr [ebp-4]
 004BE197    mov         al,byte ptr [eax+1C];TActionClients.FAutoHotKeys:Boolean
 004BE19A    cmp         al,byte ptr [ebp-5]
>004BE19D    je          004BE1B2
 004BE19F    mov         al,byte ptr [ebp-5]
 004BE1A2    mov         edx,dword ptr [ebp-4]
 004BE1A5    mov         byte ptr [edx+1C],al;TActionClients.FAutoHotKeys:Boolean
 004BE1A8    mov         dl,1
 004BE1AA    mov         eax,dword ptr [ebp-4]
 004BE1AD    call        004BDA70
 004BE1B2    pop         ecx
 004BE1B3    pop         ecx
 004BE1B4    pop         ebp
 004BE1B5    ret
*}
end;

//004BE1B8
constructor sub_004BE1B8;
begin
{*
 004BE1B8    push        ebp
 004BE1B9    mov         ebp,esp
 004BE1BB    add         esp,0FFFFFFF4
 004BE1BE    test        dl,dl
>004BE1C0    je          004BE1CA
 004BE1C2    add         esp,0FFFFFFF0
 004BE1C5    call        @ClassCreate
 004BE1CA    mov         dword ptr [ebp-0C],ecx
 004BE1CD    mov         byte ptr [ebp-5],dl
 004BE1D0    mov         dword ptr [ebp-4],eax
 004BE1D3    mov         ecx,dword ptr [ebp-0C]
 004BE1D6    xor         edx,edx
 004BE1D8    mov         eax,dword ptr [ebp-4]
 004BE1DB    call        00420FD4
 004BE1E0    mov         eax,dword ptr [ebp-4]
 004BE1E3    xor         edx,edx
 004BE1E5    mov         dword ptr [eax+34],edx;TActionClient.Tag:Integer
 004BE1E8    mov         eax,dword ptr [ebp-4]
 004BE1EB    mov         byte ptr [eax+14],0;TActionClient.BackgroundLayout:TBackgroundLayout
 004BE1EF    mov         eax,dword ptr [ebp-4]
 004BE1F2    mov         byte ptr [eax+30],1;TActionClient.Visible:Boolean
 004BE1F6    mov         eax,dword ptr [ebp-4]
 004BE1F9    mov         byte ptr [eax+28],1;TActionClient.FSmallIcons:Boolean
 004BE1FD    mov         eax,dword ptr [ebp-4]
 004BE200    mov         dword ptr [eax+24],20000000;TActionClient.Color:TColor
 004BE207    mov         eax,dword ptr [ebp-4]
 004BE20A    mov         byte ptr [eax+14],0;TActionClient.BackgroundLayout:TBackgroundLayout
 004BE20E    mov         eax,dword ptr [ebp-4]
 004BE211    mov         dl,byte ptr ds:[4BE23C];0x7 gvar_004BE23C
 004BE217    mov         byte ptr [eax+31],dl;TActionClient.ChangesAllowed:TChangesAllowedSet
 004BE21A    mov         eax,dword ptr [ebp-4]
 004BE21D    cmp         byte ptr [ebp-5],0
>004BE221    je          004BE232
 004BE223    call        @AfterConstruction
 004BE228    pop         dword ptr fs:[0]
 004BE22F    add         esp,0C
 004BE232    mov         eax,dword ptr [ebp-4]
 004BE235    mov         esp,ebp
 004BE237    pop         ebp
 004BE238    ret
*}
end;

//004BE240
destructor TActionClient.Destroy;
begin
{*
 004BE240    push        ebp
 004BE241    mov         ebp,esp
 004BE243    add         esp,0FFFFFFF8
 004BE246    call        @BeforeDestruction
 004BE24B    mov         byte ptr [ebp-5],dl
 004BE24E    mov         dword ptr [ebp-4],eax
 004BE251    mov         eax,dword ptr [ebp-4]
 004BE254    add         eax,1C
 004BE257    call        FreeAndNil
 004BE25C    mov         eax,dword ptr [ebp-4]
 004BE25F    cmp         dword ptr [eax+0C],0
>004BE263    je          004BE281
 004BE265    mov         eax,dword ptr [ebp-4]
 004BE268    mov         eax,dword ptr [eax+0C]
 004BE26B    test        byte ptr [eax+1C],8
>004BE26F    jne         004BE281
 004BE271    mov         eax,dword ptr [ebp-4]
 004BE274    mov         eax,dword ptr [eax+0C]
 004BE277    xor         edx,edx
 004BE279    mov         ecx,dword ptr [eax]
 004BE27B    call        dword ptr [ecx+124]
 004BE281    mov         eax,dword ptr [ebp-4]
 004BE284    call        004BE448
 004BE289    mov         eax,dword ptr [ebp-4]
 004BE28C    cmp         dword ptr [eax+10],0
>004BE290    je          004BE29D
 004BE292    mov         eax,dword ptr [ebp-4]
 004BE295    add         eax,10
 004BE298    call        FreeAndNil
 004BE29D    mov         eax,dword ptr [ebp-4]
 004BE2A0    call        004BE468
 004BE2A5    mov         dl,byte ptr [ebp-5]
 004BE2A8    and         dl,0FC
 004BE2AB    mov         eax,dword ptr [ebp-4]
 004BE2AE    call        TCollectionItem.Destroy
 004BE2B3    cmp         byte ptr [ebp-5],0
>004BE2B7    jle         004BE2C1
 004BE2B9    mov         eax,dword ptr [ebp-4]
 004BE2BC    call        @ClassDestroy
 004BE2C1    pop         ecx
 004BE2C2    pop         ecx
 004BE2C3    pop         ebp
 004BE2C4    ret
*}
end;

//004BE2C8
function TActionClient.IsStoredContextItems(Value:TActionClients):Boolean;
begin
{*
 004BE2C8    push        ebp
 004BE2C9    mov         ebp,esp
 004BE2CB    add         esp,0FFFFFFF8
 004BE2CE    mov         dword ptr [ebp-4],eax
 004BE2D1    mov         eax,dword ptr [ebp-4]
 004BE2D4    cmp         dword ptr [eax+1C],0;TActionClient.FContextItems:TActionClients
>004BE2D8    je          004BE325
 004BE2DA    mov         eax,dword ptr [ebp-4]
 004BE2DD    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 004BE2E0    call        0042158C
 004BE2E5    test        eax,eax
>004BE2E7    jg          004BE329
 004BE2E9    mov         eax,dword ptr [ebp-4]
 004BE2EC    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 004BE2EF    cmp         byte ptr [eax+1C],0;TActionClients.FAutoHotKeys:Boolean
>004BE2F3    je          004BE329
 004BE2F5    mov         eax,dword ptr [ebp-4]
 004BE2F8    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 004BE2FB    cmp         byte ptr [eax+28],1;TActionClients.CaptionOptions:TCaptionOptions
>004BE2FF    jne         004BE329
 004BE301    mov         eax,dword ptr [ebp-4]
 004BE304    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 004BE307    cmp         byte ptr [eax+24],0;TActionClients.FCustomizable:Boolean
>004BE30B    je          004BE329
 004BE30D    mov         eax,dword ptr [ebp-4]
 004BE310    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 004BE313    cmp         byte ptr [eax+2A],0;TActionClients.HideUnused:Boolean
>004BE317    je          004BE329
 004BE319    mov         eax,dword ptr [ebp-4]
 004BE31C    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 004BE31F    cmp         byte ptr [eax+29],0;TActionClients.SmallIcons:Boolean
>004BE323    je          004BE329
 004BE325    xor         eax,eax
>004BE327    jmp         004BE32B
 004BE329    mov         al,1
 004BE32B    mov         byte ptr [ebp-5],al
 004BE32E    mov         al,byte ptr [ebp-5]
 004BE331    pop         ecx
 004BE332    pop         ecx
 004BE333    pop         ebp
 004BE334    ret
*}
end;

//004BE338
{*procedure sub_004BE338(?:?);
begin
 004BE338    push        ebp
 004BE339    mov         ebp,esp
 004BE33B    add         esp,0FFFFFFF8
 004BE33E    mov         dword ptr [ebp-8],edx
 004BE341    mov         dword ptr [ebp-4],eax
 004BE344    mov         eax,dword ptr [ebp-8]
 004BE347    mov         edx,dword ptr ds:[4BAB28];TActionClient
 004BE34D    call        @IsClass
 004BE352    test        al,al
>004BE354    je          004BE438
 004BE35A    mov         eax,dword ptr [ebp-4]
 004BE35D    cmp         dword ptr [eax+4],0;TActionClient.FCollection:TCollection
>004BE361    je          004BE36E
 004BE363    mov         eax,dword ptr [ebp-4]
 004BE366    mov         eax,dword ptr [eax+4];TActionClient.FCollection:TCollection
 004BE369    mov         edx,dword ptr [eax]
 004BE36B    call        dword ptr [edx+20];TCollection.sub_00421428
 004BE36E    xor         eax,eax
 004BE370    push        ebp
 004BE371    push        4BE431
 004BE376    push        dword ptr fs:[eax]
 004BE379    mov         dword ptr fs:[eax],esp
 004BE37C    mov         eax,dword ptr [ebp-8]
 004BE37F    mov         edx,dword ptr [eax+24]
 004BE382    mov         eax,dword ptr [ebp-4]
 004BE385    mov         ecx,dword ptr [eax]
 004BE387    call        dword ptr [ecx+28];TActionClient.SetColor
 004BE38A    mov         eax,dword ptr [ebp-8]
 004BE38D    cmp         dword ptr [eax+1C],0
>004BE391    je          004BE3A6
 004BE393    mov         eax,dword ptr [ebp-4]
 004BE396    call        TActionClient.GetContextItems
 004BE39B    mov         edx,dword ptr [ebp-8]
 004BE39E    mov         edx,dword ptr [edx+1C]
 004BE3A1    mov         ecx,dword ptr [eax]
 004BE3A3    call        dword ptr [ecx+8]
 004BE3A6    mov         eax,dword ptr [ebp-8]
 004BE3A9    call        004BE6B4
 004BE3AE    test        al,al
>004BE3B0    je          004BE3C9
 004BE3B2    mov         eax,dword ptr [ebp-8]
 004BE3B5    call        TActionClient.GetBackground
 004BE3BA    push        eax
 004BE3BB    mov         eax,dword ptr [ebp-4]
 004BE3BE    call        TActionClient.GetBackground
 004BE3C3    pop         edx
 004BE3C4    mov         ecx,dword ptr [eax]
 004BE3C6    call        dword ptr [ecx+8]
 004BE3C9    mov         eax,dword ptr [ebp-8]
 004BE3CC    mov         dl,byte ptr [eax+14]
 004BE3CF    mov         eax,dword ptr [ebp-4]
 004BE3D2    call        TActionClient.SetBackgroundLayout
 004BE3D7    mov         eax,dword ptr [ebp-8]
 004BE3DA    mov         dl,byte ptr [eax+30]
 004BE3DD    mov         eax,dword ptr [ebp-4]
 004BE3E0    mov         ecx,dword ptr [eax]
 004BE3E2    call        dword ptr [ecx+2C];TActionClient.SetVisible
 004BE3E5    mov         eax,dword ptr [ebp-8]
 004BE3E8    cmp         dword ptr [eax+2C],0
>004BE3EC    je          004BE401
 004BE3EE    mov         eax,dword ptr [ebp-4]
 004BE3F1    call        TActionClient.GetItems
 004BE3F6    mov         edx,dword ptr [ebp-8]
 004BE3F9    mov         edx,dword ptr [edx+2C]
 004BE3FC    mov         ecx,dword ptr [eax]
 004BE3FE    call        dword ptr [ecx+8]
 004BE401    mov         eax,dword ptr [ebp-8]
 004BE404    mov         edx,dword ptr [eax+0C]
 004BE407    mov         eax,dword ptr [ebp-4]
 004BE40A    call        TActionBarItem.SetActionBar
 004BE40F    xor         eax,eax
 004BE411    pop         edx
 004BE412    pop         ecx
 004BE413    pop         ecx
 004BE414    mov         dword ptr fs:[eax],edx
 004BE417    push        4BE443
 004BE41C    mov         eax,dword ptr [ebp-4]
 004BE41F    cmp         dword ptr [eax+4],0;TActionClient.FCollection:TCollection
>004BE423    je          004BE430
 004BE425    mov         eax,dword ptr [ebp-4]
 004BE428    mov         eax,dword ptr [eax+4];TActionClient.FCollection:TCollection
 004BE42B    mov         edx,dword ptr [eax]
 004BE42D    call        dword ptr [edx+24];TCollection.sub_004214C0
 004BE430    ret
>004BE431    jmp         @HandleFinally
>004BE436    jmp         004BE41C
 004BE438    mov         edx,dword ptr [ebp-8]
 004BE43B    mov         eax,dword ptr [ebp-4]
 004BE43E    call        00420AD4
 004BE443    pop         ecx
 004BE444    pop         ecx
 004BE445    pop         ebp
 004BE446    ret
end;*}

//004BE448
procedure sub_004BE448(?:TActionClient);
begin
{*
 004BE448    push        ebp
 004BE449    mov         ebp,esp
 004BE44B    push        ecx
 004BE44C    mov         dword ptr [ebp-4],eax
 004BE44F    mov         eax,dword ptr [ebp-4]
 004BE452    xor         edx,edx
 004BE454    mov         dword ptr [eax+0C],edx
 004BE457    pop         ecx
 004BE458    pop         ebp
 004BE459    ret
*}
end;

//004BE45C
procedure sub_004BE45C;
begin
{*
 004BE45C    push        ebp
 004BE45D    mov         ebp,esp
 004BE45F    push        ecx
 004BE460    mov         dword ptr [ebp-4],eax
 004BE463    pop         ecx
 004BE464    pop         ebp
 004BE465    ret
*}
end;

//004BE468
{*procedure sub_004BE468(?:?);
begin
 004BE468    push        ebp
 004BE469    mov         ebp,esp
 004BE46B    add         esp,0FFFFFFF4
 004BE46E    mov         dword ptr [ebp-4],eax
 004BE471    mov         eax,dword ptr [ebp-4]
 004BE474    cmp         dword ptr [eax+2C],0
>004BE478    je          004BE4E6
 004BE47A    mov         eax,dword ptr [ebp-4]
 004BE47D    mov         eax,dword ptr [eax+2C]
 004BE480    call        0042158C
 004BE485    test        eax,eax
>004BE487    jle         004BE4D3
 004BE489    mov         eax,dword ptr [ebp-4]
 004BE48C    mov         eax,dword ptr [eax+2C]
 004BE48F    call        0042158C
 004BE494    dec         eax
 004BE495    test        eax,eax
>004BE497    jl          004BE4D3
 004BE499    inc         eax
 004BE49A    mov         dword ptr [ebp-0C],eax
 004BE49D    mov         dword ptr [ebp-8],0
 004BE4A4    mov         edx,dword ptr [ebp-8]
 004BE4A7    mov         eax,dword ptr [ebp-4]
 004BE4AA    mov         eax,dword ptr [eax+2C]
 004BE4AD    call        004BF258
 004BE4B2    cmp         dword ptr [eax+2C],0
>004BE4B6    je          004BE4CB
 004BE4B8    mov         edx,dword ptr [ebp-8]
 004BE4BB    mov         eax,dword ptr [ebp-4]
 004BE4BE    mov         eax,dword ptr [eax+2C]
 004BE4C1    call        004BF258
 004BE4C6    call        004BE468
 004BE4CB    inc         dword ptr [ebp-8]
 004BE4CE    dec         dword ptr [ebp-0C]
>004BE4D1    jne         004BE4A4
 004BE4D3    mov         eax,dword ptr [ebp-4]
 004BE4D6    mov         eax,dword ptr [eax+2C]
 004BE4D9    call        TObject.Free
 004BE4DE    mov         eax,dword ptr [ebp-4]
 004BE4E1    xor         edx,edx
 004BE4E3    mov         dword ptr [eax+2C],edx
 004BE4E6    mov         esp,ebp
 004BE4E8    pop         ebp
 004BE4E9    ret
end;*}

//004BE4EC
{*function TActionClient.GetBackground:?;
begin
 004BE4EC    push        ebp
 004BE4ED    mov         ebp,esp
 004BE4EF    add         esp,0FFFFFFF8
 004BE4F2    mov         dword ptr [ebp-4],eax
 004BE4F5    mov         eax,dword ptr [ebp-4]
 004BE4F8    cmp         dword ptr [eax+10],0;TActionClient.FBackground:TPicture
>004BE4FC    jne         004BE510
 004BE4FE    mov         dl,1
 004BE500    mov         eax,[0042CC9C];TPicture
 004BE505    call        TPicture.Create;TPicture.Create
 004BE50A    mov         edx,dword ptr [ebp-4]
 004BE50D    mov         dword ptr [edx+10],eax;TActionClient.FBackground:TPicture
 004BE510    mov         eax,dword ptr [ebp-4]
 004BE513    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 004BE516    mov         dword ptr [ebp-8],eax
 004BE519    mov         eax,dword ptr [ebp-8]
 004BE51C    pop         ecx
 004BE51D    pop         ecx
 004BE51E    pop         ebp
 004BE51F    ret
end;*}

//004BE520
{*function TActionClient.GetContextItems:?;
begin
 004BE520    push        ebp
 004BE521    mov         ebp,esp
 004BE523    add         esp,0FFFFFFF8
 004BE526    mov         dword ptr [ebp-4],eax
 004BE529    mov         eax,dword ptr [ebp-4]
 004BE52C    cmp         dword ptr [eax+1C],0;TActionClient.FContextItems:TActionClients
>004BE530    jne         004BE559
 004BE532    mov         eax,[004BB220];TActionClientItem
 004BE537    push        eax
 004BE538    mov         eax,dword ptr [ebp-4]
 004BE53B    call        004BE698
 004BE540    call        004BD7EC
 004BE545    mov         ecx,eax
 004BE547    mov         dl,1
 004BE549    mov         eax,[004BAFBC];TActionClients
 004BE54E    call        TActionClients.Create;TActionClients.Create
 004BE553    mov         edx,dword ptr [ebp-4]
 004BE556    mov         dword ptr [edx+1C],eax;TActionClient.FContextItems:TActionClients
 004BE559    mov         eax,dword ptr [ebp-4]
 004BE55C    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 004BE55F    mov         dword ptr [ebp-8],eax
 004BE562    mov         eax,dword ptr [ebp-8]
 004BE565    pop         ecx
 004BE566    pop         ecx
 004BE567    pop         ebp
 004BE568    ret
end;*}

//004BE56C
{*function sub_004BE56C(?:TActionClient):?;
begin
 004BE56C    push        ebp
 004BE56D    mov         ebp,esp
 004BE56F    add         esp,0FFFFFFF8
 004BE572    mov         dword ptr [ebp-4],eax
 004BE575    mov         eax,dword ptr [ebp-4]
 004BE578    cmp         dword ptr [eax+2C],0;TActionClientItem.FItems:TActionClients
>004BE57C    je          004BE58D
 004BE57E    mov         eax,dword ptr [ebp-4]
 004BE581    mov         eax,dword ptr [eax+2C];TActionClientItem.FItems:TActionClients
 004BE584    call        0042158C
 004BE589    test        eax,eax
>004BE58B    jg          004BE591
 004BE58D    xor         eax,eax
>004BE58F    jmp         004BE593
 004BE591    mov         al,1
 004BE593    mov         byte ptr [ebp-5],al
 004BE596    mov         al,byte ptr [ebp-5]
 004BE599    pop         ecx
 004BE59A    pop         ecx
 004BE59B    pop         ebp
 004BE59C    ret
end;*}

//004BE5A0
{*function sub_004BE5A0(?:TActionClientItem):?;
begin
 004BE5A0    push        ebp
 004BE5A1    mov         ebp,esp
 004BE5A3    add         esp,0FFFFFFF8
 004BE5A6    mov         dword ptr [ebp-4],eax
 004BE5A9    mov         eax,dword ptr [ebp-4]
 004BE5AC    call        004C0134
 004BE5B1    test        eax,eax
>004BE5B3    je          004BE5C5
 004BE5B5    mov         eax,dword ptr [ebp-4]
 004BE5B8    call        004C0134
 004BE5BD    mov         eax,dword ptr [eax+20]
 004BE5C0    mov         dword ptr [ebp-8],eax
>004BE5C3    jmp         004BE5CA
 004BE5C5    xor         eax,eax
 004BE5C7    mov         dword ptr [ebp-8],eax
 004BE5CA    mov         eax,dword ptr [ebp-8]
 004BE5CD    pop         ecx
 004BE5CE    pop         ecx
 004BE5CF    pop         ebp
 004BE5D0    ret
end;*}

//004BE5D4
{*function TActionClient.GetItems:?;
begin
 004BE5D4    push        ebp
 004BE5D5    mov         ebp,esp
 004BE5D7    add         esp,0FFFFFFF4
 004BE5DA    push        esi
 004BE5DB    mov         dword ptr [ebp-4],eax
 004BE5DE    mov         eax,dword ptr [ebp-4]
 004BE5E1    cmp         dword ptr [eax+2C],0;TActionClient.FItems:TActionClients
>004BE5E5    jne         004BE684
 004BE5EB    mov         eax,dword ptr [ebp-4]
 004BE5EE    call        004BE698
 004BE5F3    test        eax,eax
>004BE5F5    je          004BE651
 004BE5F7    mov         eax,dword ptr [ebp-4]
 004BE5FA    call        004BE698
 004BE5FF    call        004BD7EC
 004BE604    test        eax,eax
>004BE606    je          004BE651
 004BE608    mov         eax,dword ptr [ebp-4]
 004BE60B    call        004BE698
 004BE610    call        004BD7EC
 004BE615    mov         dword ptr [ebp-0C],eax
 004BE618    mov         eax,dword ptr [ebp-0C]
 004BE61B    mov         si,0FFEC
 004BE61F    call        @CallDynaInst
 004BE624    push        eax
 004BE625    mov         eax,dword ptr [ebp-0C]
 004BE628    mov         si,0FFED
 004BE62C    call        @CallDynaInst
 004BE631    push        eax
 004BE632    mov         eax,dword ptr [ebp-4]
 004BE635    call        004BE698
 004BE63A    call        004BD7EC
 004BE63F    mov         ecx,eax
 004BE641    mov         dl,1
 004BE643    pop         eax
 004BE644    call        TActionClients.Create
 004BE649    mov         edx,dword ptr [ebp-4]
 004BE64C    mov         dword ptr [edx+2C],eax;TActionClient.FItems:TActionClients
>004BE64F    jmp         004BE678
 004BE651    mov         eax,[004BB220];TActionClientItem
 004BE656    push        eax
 004BE657    mov         eax,dword ptr [ebp-4]
 004BE65A    call        004BE698
 004BE65F    call        004BD7EC
 004BE664    mov         ecx,eax
 004BE666    mov         dl,1
 004BE668    mov         eax,[004BAFBC];TActionClients
 004BE66D    call        TActionClients.Create;TActionClients.Create
 004BE672    mov         edx,dword ptr [ebp-4]
 004BE675    mov         dword ptr [edx+2C],eax;TActionClient.FItems:TActionClients
 004BE678    mov         eax,dword ptr [ebp-4]
 004BE67B    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 004BE67E    mov         edx,dword ptr [ebp-4]
 004BE681    mov         dword ptr [eax+20],edx;TActionClients.FParentItem:TActionClient
 004BE684    mov         eax,dword ptr [ebp-4]
 004BE687    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 004BE68A    mov         dword ptr [ebp-8],eax
 004BE68D    mov         eax,dword ptr [ebp-8]
 004BE690    pop         esi
 004BE691    mov         esp,ebp
 004BE693    pop         ebp
 004BE694    ret
end;*}

//004BE698
{*function sub_004BE698(?:TActionClient):?;
begin
 004BE698    push        ebp
 004BE699    mov         ebp,esp
 004BE69B    add         esp,0FFFFFFF8
 004BE69E    mov         dword ptr [ebp-4],eax
 004BE6A1    mov         eax,dword ptr [ebp-4]
 004BE6A4    mov         eax,dword ptr [eax+4];TActionClient.FCollection:TCollection
 004BE6A7    mov         dword ptr [ebp-8],eax
 004BE6AA    mov         eax,dword ptr [ebp-8]
 004BE6AD    pop         ecx
 004BE6AE    pop         ecx
 004BE6AF    pop         ebp
 004BE6B0    ret
end;*}

//004BE6B4
{*function sub_004BE6B4(?:TActionClient):?;
begin
 004BE6B4    push        ebp
 004BE6B5    mov         ebp,esp
 004BE6B7    add         esp,0FFFFFFF8
 004BE6BA    mov         dword ptr [ebp-4],eax
 004BE6BD    mov         eax,dword ptr [ebp-4]
 004BE6C0    cmp         dword ptr [eax+10],0;TActionClient.FBackground:TPicture
>004BE6C4    je          004BE6E4
 004BE6C6    mov         eax,dword ptr [ebp-4]
 004BE6C9    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 004BE6CC    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>004BE6D0    je          004BE6E4
 004BE6D2    mov         eax,dword ptr [ebp-4]
 004BE6D5    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 004BE6D8    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 004BE6DB    mov         edx,dword ptr [eax]
 004BE6DD    call        dword ptr [edx+1C];@AbstractError
 004BE6E0    test        al,al
>004BE6E2    je          004BE6E8
 004BE6E4    xor         eax,eax
>004BE6E6    jmp         004BE6EA
 004BE6E8    mov         al,1
 004BE6EA    mov         byte ptr [ebp-5],al
 004BE6ED    mov         al,byte ptr [ebp-5]
 004BE6F0    pop         ecx
 004BE6F1    pop         ecx
 004BE6F2    pop         ebp
 004BE6F3    ret
end;*}

//004BE6F4
{*function sub_004BE6F4(?:?):?;
begin
 004BE6F4    push        ebp
 004BE6F5    mov         ebp,esp
 004BE6F7    add         esp,0FFFFFFF0
 004BE6FA    mov         dword ptr [ebp-4],eax
 004BE6FD    mov         byte ptr [ebp-5],0
 004BE701    mov         eax,dword ptr [ebp-4]
 004BE704    call        TActionClient.GetItems
 004BE709    call        0042158C
 004BE70E    dec         eax
 004BE70F    test        eax,eax
>004BE711    jl          004BE778
 004BE713    inc         eax
 004BE714    mov         dword ptr [ebp-10],eax
 004BE717    mov         dword ptr [ebp-0C],0
 004BE71E    mov         eax,dword ptr [ebp-4]
 004BE721    call        TActionClient.GetItems
 004BE726    mov         edx,dword ptr [ebp-0C]
 004BE729    call        004BF258
 004BE72E    call        004C0C60
 004BE733    test        al,al
>004BE735    jne         004BE753
 004BE737    mov         eax,dword ptr [ebp-4]
 004BE73A    call        TActionClient.GetItems
 004BE73F    mov         edx,dword ptr [ebp-0C]
 004BE742    call        004BF258
 004BE747    cmp         byte ptr [eax+30],0
>004BE74B    je          004BE753
 004BE74D    mov         byte ptr [ebp-5],1
>004BE751    jmp         004BE770
 004BE753    mov         eax,dword ptr [ebp-4]
 004BE756    call        TActionClient.GetItems
 004BE75B    mov         edx,dword ptr [ebp-0C]
 004BE75E    call        004BF258
 004BE763    call        004BE6F4
 004BE768    test        al,al
>004BE76A    je          004BE770
 004BE76C    mov         byte ptr [ebp-5],1
 004BE770    inc         dword ptr [ebp-0C]
 004BE773    dec         dword ptr [ebp-10]
>004BE776    jne         004BE71E
 004BE778    mov         al,byte ptr [ebp-5]
 004BE77B    mov         esp,ebp
 004BE77D    pop         ebp
 004BE77E    ret
end;*}

//004BE780
function TActionClient.IsStoredBackground(Value:TPicture):Boolean;
begin
{*
 004BE780    push        ebp
 004BE781    mov         ebp,esp
 004BE783    add         esp,0FFFFFFF8
 004BE786    mov         dword ptr [ebp-4],eax
 004BE789    mov         eax,dword ptr [ebp-4]
 004BE78C    cmp         dword ptr [eax+10],0;TActionClient.FBackground:TPicture
>004BE790    je          004BE7B0
 004BE792    mov         eax,dword ptr [ebp-4]
 004BE795    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 004BE798    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>004BE79C    je          004BE7B0
 004BE79E    mov         eax,dword ptr [ebp-4]
 004BE7A1    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 004BE7A4    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 004BE7A7    mov         edx,dword ptr [eax]
 004BE7A9    call        dword ptr [edx+1C];@AbstractError
 004BE7AC    test        al,al
>004BE7AE    je          004BE7B4
 004BE7B0    xor         eax,eax
>004BE7B2    jmp         004BE7B6
 004BE7B4    mov         al,1
 004BE7B6    mov         byte ptr [ebp-5],al
 004BE7B9    mov         al,byte ptr [ebp-5]
 004BE7BC    pop         ecx
 004BE7BD    pop         ecx
 004BE7BE    pop         ebp
 004BE7BF    ret
*}
end;

//004BE7C0
{*function sub_004BE7C0(?:TActionClientItem; ?:TActionClientItem):?;
begin
 004BE7C0    push        ebp
 004BE7C1    mov         ebp,esp
 004BE7C3    add         esp,0FFFFFFF0
 004BE7C6    mov         dword ptr [ebp-8],edx
 004BE7C9    mov         dword ptr [ebp-4],eax
 004BE7CC    mov         byte ptr [ebp-9],0
 004BE7D0    cmp         dword ptr [ebp-8],0
>004BE7D4    je          004BE7EC
 004BE7D6    cmp         dword ptr [ebp-8],0
>004BE7DA    je          004BE7F2
 004BE7DC    mov         eax,dword ptr [ebp-8]
 004BE7DF    call        TActionClient.GetItems
 004BE7E4    mov         edx,dword ptr [ebp-4]
 004BE7E7    cmp         eax,dword ptr [edx+4]
>004BE7EA    jne         004BE7F2
 004BE7EC    mov         byte ptr [ebp-9],1
>004BE7F0    jmp         004BE830
 004BE7F2    mov         eax,dword ptr [ebp-4]
 004BE7F5    call        004BE698
 004BE7FA    mov         eax,dword ptr [eax+20]
 004BE7FD    mov         dword ptr [ebp-10],eax
 004BE800    cmp         dword ptr [ebp-10],0
>004BE804    je          004BE830
 004BE806    mov         eax,dword ptr [ebp-8]
 004BE809    call        TActionClient.GetItems
 004BE80E    mov         edx,dword ptr [ebp-10]
 004BE811    cmp         eax,dword ptr [edx+4]
>004BE814    jne         004BE81C
 004BE816    mov         byte ptr [ebp-9],1
>004BE81A    jmp         004BE830
 004BE81C    mov         eax,dword ptr [ebp-10]
 004BE81F    call        004BE698
 004BE824    mov         eax,dword ptr [eax+20]
 004BE827    mov         dword ptr [ebp-10],eax
 004BE82A    cmp         dword ptr [ebp-10],0
>004BE82E    jne         004BE806
 004BE830    mov         al,byte ptr [ebp-9]
 004BE833    mov         esp,ebp
 004BE835    pop         ebp
 004BE836    ret
end;*}

//004BE838
function TActionClient.IsStoredItems(Value:TActionClients):Boolean;
begin
{*
 004BE838    push        ebp
 004BE839    mov         ebp,esp
 004BE83B    add         esp,0FFFFFFF8
 004BE83E    mov         dword ptr [ebp-4],eax
 004BE841    mov         eax,dword ptr [ebp-4]
 004BE844    cmp         dword ptr [eax+2C],0;TActionClient.FItems:TActionClients
>004BE848    je          004BE895
 004BE84A    mov         eax,dword ptr [ebp-4]
 004BE84D    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 004BE850    call        0042158C
 004BE855    test        eax,eax
>004BE857    jg          004BE899
 004BE859    mov         eax,dword ptr [ebp-4]
 004BE85C    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 004BE85F    cmp         byte ptr [eax+1C],0;TActionClients.FAutoHotKeys:Boolean
>004BE863    je          004BE899
 004BE865    mov         eax,dword ptr [ebp-4]
 004BE868    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 004BE86B    cmp         byte ptr [eax+28],1;TActionClients.CaptionOptions:TCaptionOptions
>004BE86F    jne         004BE899
 004BE871    mov         eax,dword ptr [ebp-4]
 004BE874    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 004BE877    cmp         byte ptr [eax+24],0;TActionClients.FCustomizable:Boolean
>004BE87B    je          004BE899
 004BE87D    mov         eax,dword ptr [ebp-4]
 004BE880    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 004BE883    cmp         byte ptr [eax+2A],0;TActionClients.HideUnused:Boolean
>004BE887    je          004BE899
 004BE889    mov         eax,dword ptr [ebp-4]
 004BE88C    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 004BE88F    cmp         byte ptr [eax+29],0;TActionClients.SmallIcons:Boolean
>004BE893    je          004BE899
 004BE895    xor         eax,eax
>004BE897    jmp         004BE89B
 004BE899    mov         al,1
 004BE89B    mov         byte ptr [ebp-5],al
 004BE89E    mov         al,byte ptr [ebp-5]
 004BE8A1    pop         ecx
 004BE8A2    pop         ecx
 004BE8A3    pop         ebp
 004BE8A4    ret
*}
end;

//004BE8A8
procedure sub_004BE8A8;
begin
{*
 004BE8A8    push        ebp
 004BE8A9    mov         ebp,esp
 004BE8AB    push        ecx
 004BE8AC    mov         dword ptr [ebp-4],eax
 004BE8AF    pop         ecx
 004BE8B0    pop         ebp
 004BE8B1    ret
*}
end;

//004BE8B4
procedure TActionBarItem.SetActionBar(Value:TCustomActionBar);
begin
{*
 004BE8B4    push        ebp
 004BE8B5    mov         ebp,esp
 004BE8B7    add         esp,0FFFFFFF0
 004BE8BA    xor         ecx,ecx
 004BE8BC    mov         dword ptr [ebp-10],ecx
 004BE8BF    mov         dword ptr [ebp-8],edx
 004BE8C2    mov         dword ptr [ebp-4],eax
 004BE8C5    xor         eax,eax
 004BE8C7    push        ebp
 004BE8C8    push        4BE9C8
 004BE8CD    push        dword ptr fs:[eax]
 004BE8D0    mov         dword ptr fs:[eax],esp
 004BE8D3    mov         eax,dword ptr [ebp-4]
 004BE8D6    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BE8D9    cmp         eax,dword ptr [ebp-8]
>004BE8DC    je          004BE9B2
 004BE8E2    mov         eax,dword ptr [ebp-4]
 004BE8E5    call        004BE698
 004BE8EA    mov         dword ptr [ebp-0C],eax
 004BE8ED    cmp         dword ptr [ebp-0C],0
>004BE8F1    je          004BE946
 004BE8F3    mov         eax,dword ptr [ebp-0C]
 004BE8F6    cmp         dword ptr [eax+20],0
>004BE8FA    je          004BE93B
 004BE8FC    mov         eax,dword ptr [ebp-0C]
 004BE8FF    mov         eax,dword ptr [eax+20]
 004BE902    cmp         dword ptr [eax+0C],0
>004BE906    je          004BE92B
 004BE908    lea         edx,[ebp-10]
 004BE90B    mov         eax,[0056E0EC];^SAssignSubItemError:TResStringRec
 004BE910    call        LoadResString
 004BE915    mov         ecx,dword ptr [ebp-10]
 004BE918    mov         dl,1
 004BE91A    mov         eax,[0040B004];Exception
 004BE91F    call        Exception.Create;Exception.Create
 004BE924    call        @RaiseExcept
>004BE929    jmp         004BE940
 004BE92B    mov         eax,dword ptr [ebp-0C]
 004BE92E    mov         eax,dword ptr [eax+20]
 004BE931    call        004BE698
 004BE936    mov         dword ptr [ebp-0C],eax
>004BE939    jmp         004BE940
 004BE93B    xor         eax,eax
 004BE93D    mov         dword ptr [ebp-0C],eax
 004BE940    cmp         dword ptr [ebp-0C],0
>004BE944    jne         004BE8F3
 004BE946    mov         eax,dword ptr [ebp-4]
 004BE949    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>004BE94D    je          004BE96C
 004BE94F    mov         eax,dword ptr [ebp-4]
 004BE952    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BE955    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004BE95C    je          004BE96C
 004BE95E    mov         eax,dword ptr [ebp-4]
 004BE961    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BE964    mov         edx,dword ptr [eax]
 004BE966    call        dword ptr [edx+0D0];TCustomActionBar.sub_004C17C8
 004BE96C    cmp         dword ptr [ebp-8],0
>004BE970    je          004BE9A9
 004BE972    mov         eax,dword ptr [ebp-4]
 004BE975    call        004BE698
 004BE97A    call        004BD7EC
 004BE97F    test        byte ptr [eax+1C],1
>004BE983    jne         004BE9A9
 004BE985    mov         eax,dword ptr [ebp-4]
 004BE988    call        004BE698
 004BE98D    call        004BD7EC
 004BE992    cmp         byte ptr [eax+90],0
>004BE999    jne         004BE9A9
 004BE99B    mov         edx,dword ptr [ebp-4]
 004BE99E    mov         eax,dword ptr [ebp-8]
 004BE9A1    mov         ecx,dword ptr [eax]
 004BE9A3    call        dword ptr [ecx+124];TCustomActionBar.sub_004C319C
 004BE9A9    mov         eax,dword ptr [ebp-8]
 004BE9AC    mov         edx,dword ptr [ebp-4]
 004BE9AF    mov         dword ptr [edx+0C],eax;TActionBarItem.FActionBar:TCustomActionBar
 004BE9B2    xor         eax,eax
 004BE9B4    pop         edx
 004BE9B5    pop         ecx
 004BE9B6    pop         ecx
 004BE9B7    mov         dword ptr fs:[eax],edx
 004BE9BA    push        4BE9CF
 004BE9BF    lea         eax,[ebp-10]
 004BE9C2    call        @LStrClr
 004BE9C7    ret
>004BE9C8    jmp         @HandleFinally
>004BE9CD    jmp         004BE9BF
 004BE9CF    mov         esp,ebp
 004BE9D1    pop         ebp
 004BE9D2    ret
*}
end;

//004BE9D4
procedure TActionClient.SetItems(Value:TActionClients);
begin
{*
 004BE9D4    push        ebp
 004BE9D5    mov         ebp,esp
 004BE9D7    add         esp,0FFFFFFF8
 004BE9DA    mov         dword ptr [ebp-8],edx
 004BE9DD    mov         dword ptr [ebp-4],eax
 004BE9E0    cmp         dword ptr [ebp-8],0
>004BE9E4    jne         004BE9F3
 004BE9E6    mov         eax,dword ptr [ebp-4]
 004BE9E9    add         eax,2C;TActionClient.FItems:TActionClients
 004BE9EC    call        FreeAndNil
>004BE9F1    jmp         004BEA01
 004BE9F3    mov         edx,dword ptr [ebp-8]
 004BE9F6    mov         eax,dword ptr [ebp-4]
 004BE9F9    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 004BE9FC    mov         ecx,dword ptr [eax]
 004BE9FE    call        dword ptr [ecx+8];TActionClients.sub_004BF140
 004BEA01    pop         ecx
 004BEA02    pop         ecx
 004BEA03    pop         ebp
 004BEA04    ret
*}
end;

//004BEA08
procedure TActionClient.SetBackground(Value:TPicture);
begin
{*
 004BEA08    push        ebp
 004BEA09    mov         ebp,esp
 004BEA0B    add         esp,0FFFFFFF0
 004BEA0E    mov         dword ptr [ebp-8],edx
 004BEA11    mov         dword ptr [ebp-4],eax
 004BEA14    mov         edx,dword ptr [ebp-8]
 004BEA17    mov         eax,dword ptr [ebp-4]
 004BEA1A    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 004BEA1D    mov         ecx,dword ptr [eax]
 004BEA1F    call        dword ptr [ecx+8];TPicture.sub_00431E44
 004BEA22    cmp         dword ptr [ebp-8],0
>004BEA26    je          004BEAAC
 004BEA2C    mov         eax,dword ptr [ebp-4]
 004BEA2F    call        004BE56C
 004BEA34    test        al,al
>004BEA36    je          004BEAAC
 004BEA38    mov         eax,dword ptr [ebp-4]
 004BEA3B    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>004BEA3F    je          004BEAAC
 004BEA41    mov         eax,dword ptr [ebp-4]
 004BEA44    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BEA47    call        004C2EE8
 004BEA4C    call        0042158C
 004BEA51    dec         eax
 004BEA52    test        eax,eax
>004BEA54    jl          004BEA96
 004BEA56    inc         eax
 004BEA57    mov         dword ptr [ebp-10],eax
 004BEA5A    mov         dword ptr [ebp-0C],0
 004BEA61    mov         eax,dword ptr [ebp-4]
 004BEA64    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BEA67    call        004C2EE8
 004BEA6C    mov         edx,dword ptr [ebp-0C]
 004BEA6F    call        004BF258
 004BEA74    mov         eax,dword ptr [eax+40]
 004BEA77    mov         edx,dword ptr [ebp-4]
 004BEA7A    mov         dl,byte ptr [edx+14];TActionClient.BackgroundLayout:TBackgroundLayout
 004BEA7D    add         dl,0FD
 004BEA80    sub         dl,2
 004BEA83    setb        dl
 004BEA86    xor         dl,1
 004BEA89    call        004C5FF4
 004BEA8E    inc         dword ptr [ebp-0C]
 004BEA91    dec         dword ptr [ebp-10]
>004BEA94    jne         004BEA61
 004BEA96    mov         eax,dword ptr [ebp-4]
 004BEA99    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BEA9C    call        004878BC
 004BEAA1    mov         eax,dword ptr [ebp-4]
 004BEAA4    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BEAA7    mov         edx,dword ptr [eax]
 004BEAA9    call        dword ptr [edx+7C];TCustomActionBar.sub_0048BE68
 004BEAAC    mov         esp,ebp
 004BEAAE    pop         ebp
 004BEAAF    ret
*}
end;

//004BEAB0
procedure TActionClient.SetBackgroundLayout(Value:TBackgroundLayout);
begin
{*
 004BEAB0    push        ebp
 004BEAB1    mov         ebp,esp
 004BEAB3    add         esp,0FFFFFFF0
 004BEAB6    push        esi
 004BEAB7    mov         byte ptr [ebp-5],dl
 004BEABA    mov         dword ptr [ebp-4],eax
 004BEABD    mov         eax,dword ptr [ebp-4]
 004BEAC0    mov         al,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 004BEAC3    cmp         al,byte ptr [ebp-5]
>004BEAC6    je          004BEB72
 004BEACC    mov         al,byte ptr [ebp-5]
 004BEACF    mov         edx,dword ptr [ebp-4]
 004BEAD2    mov         byte ptr [edx+14],al;TActionClient.BackgroundLayout:TBackgroundLayout
 004BEAD5    mov         eax,dword ptr [ebp-4]
 004BEAD8    call        004BE6B4
 004BEADD    test        al,al
>004BEADF    je          004BEB4F
 004BEAE1    mov         eax,dword ptr [ebp-4]
 004BEAE4    call        004BE56C
 004BEAE9    test        al,al
>004BEAEB    je          004BEB4F
 004BEAED    mov         eax,dword ptr [ebp-4]
 004BEAF0    call        TActionClient.GetItems
 004BEAF5    call        0042158C
 004BEAFA    dec         eax
 004BEAFB    test        eax,eax
>004BEAFD    jl          004BEB4F
 004BEAFF    inc         eax
 004BEB00    mov         dword ptr [ebp-10],eax
 004BEB03    mov         dword ptr [ebp-0C],0
 004BEB0A    mov         eax,dword ptr [ebp-4]
 004BEB0D    call        TActionClient.GetItems
 004BEB12    mov         edx,dword ptr [ebp-0C]
 004BEB15    call        004BF258
 004BEB1A    cmp         dword ptr [eax+40],0
>004BEB1E    je          004BEB47
 004BEB20    mov         eax,dword ptr [ebp-4]
 004BEB23    call        TActionClient.GetItems
 004BEB28    mov         edx,dword ptr [ebp-0C]
 004BEB2B    call        004BF258
 004BEB30    mov         eax,dword ptr [eax+40]
 004BEB33    mov         dl,byte ptr [ebp-5]
 004BEB36    add         dl,0FD
 004BEB39    sub         dl,2
 004BEB3C    setb        dl
 004BEB3F    xor         dl,1
 004BEB42    call        004C5FF4
 004BEB47    inc         dword ptr [ebp-0C]
 004BEB4A    dec         dword ptr [ebp-10]
>004BEB4D    jne         004BEB0A
 004BEB4F    mov         eax,dword ptr [ebp-4]
 004BEB52    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>004BEB56    je          004BEB72
 004BEB58    mov         eax,dword ptr [ebp-4]
 004BEB5B    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BEB5E    mov         si,0FFD0
 004BEB62    call        @CallDynaInst;TControl.sub_004826F8
 004BEB67    mov         eax,dword ptr [ebp-4]
 004BEB6A    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BEB6D    mov         edx,dword ptr [eax]
 004BEB6F    call        dword ptr [edx+7C];TCustomActionBar.sub_0048BE68
 004BEB72    pop         esi
 004BEB73    mov         esp,ebp
 004BEB75    pop         ebp
 004BEB76    ret
*}
end;

//004BEB78
procedure TActionClient.SetChangesAllowed(Value:TChangesAllowedSet);
begin
{*
 004BEB78    push        ebp
 004BEB79    mov         ebp,esp
 004BEB7B    add         esp,0FFFFFFF8
 004BEB7E    mov         byte ptr [ebp-5],dl
 004BEB81    mov         dword ptr [ebp-4],eax
 004BEB84    mov         al,byte ptr [ebp-5]
 004BEB87    mov         edx,dword ptr [ebp-4]
 004BEB8A    cmp         al,byte ptr [edx+31];TActionClient.ChangesAllowed:TChangesAllowedSet
>004BEB8D    je          004BEB98
 004BEB8F    mov         al,byte ptr [ebp-5]
 004BEB92    mov         edx,dword ptr [ebp-4]
 004BEB95    mov         byte ptr [edx+31],al;TActionClient.ChangesAllowed:TChangesAllowedSet
 004BEB98    pop         ecx
 004BEB99    pop         ecx
 004BEB9A    pop         ebp
 004BEB9B    ret
*}
end;

//004BEB9C
procedure TActionClient.SetColor(Value:TColor);
begin
{*
 004BEB9C    push        ebp
 004BEB9D    mov         ebp,esp
 004BEB9F    add         esp,0FFFFFFF8
 004BEBA2    mov         dword ptr [ebp-8],edx
 004BEBA5    mov         dword ptr [ebp-4],eax
 004BEBA8    mov         eax,dword ptr [ebp-4]
 004BEBAB    mov         eax,dword ptr [eax+24];TActionClient.Color:TColor
 004BEBAE    cmp         eax,dword ptr [ebp-8]
>004BEBB1    je          004BEBC4
 004BEBB3    mov         eax,dword ptr [ebp-8]
 004BEBB6    mov         edx,dword ptr [ebp-4]
 004BEBB9    mov         dword ptr [edx+24],eax;TActionClient.Color:TColor
 004BEBBC    mov         eax,dword ptr [ebp-4]
 004BEBBF    mov         edx,dword ptr [eax]
 004BEBC1    call        dword ptr [edx+20];TActionClient.sub_004BE45C
 004BEBC4    pop         ecx
 004BEBC5    pop         ecx
 004BEBC6    pop         ebp
 004BEBC7    ret
*}
end;

//004BEBC8
procedure TActionClient.SetContextItems(Value:TActionClients);
begin
{*
 004BEBC8    push        ebp
 004BEBC9    mov         ebp,esp
 004BEBCB    add         esp,0FFFFFFF8
 004BEBCE    mov         dword ptr [ebp-8],edx
 004BEBD1    mov         dword ptr [ebp-4],eax
 004BEBD4    mov         eax,dword ptr [ebp-8]
 004BEBD7    mov         edx,dword ptr [ebp-4]
 004BEBDA    mov         dword ptr [edx+1C],eax;TActionClient.FContextItems:TActionClients
 004BEBDD    pop         ecx
 004BEBDE    pop         ecx
 004BEBDF    pop         ebp
 004BEBE0    ret
*}
end;

//004BEBE4
procedure TActionClient.SetVisible(Value:Boolean);
begin
{*
 004BEBE4    push        ebp
 004BEBE5    mov         ebp,esp
 004BEBE7    add         esp,0FFFFFFF8
 004BEBEA    mov         byte ptr [ebp-5],dl
 004BEBED    mov         dword ptr [ebp-4],eax
 004BEBF0    mov         eax,dword ptr [ebp-4]
 004BEBF3    mov         al,byte ptr [eax+30];TActionClient.Visible:Boolean
 004BEBF6    cmp         al,byte ptr [ebp-5]
>004BEBF9    je          004BEC0B
 004BEBFB    mov         al,byte ptr [ebp-5]
 004BEBFE    mov         edx,dword ptr [ebp-4]
 004BEC01    mov         byte ptr [edx+30],al;TActionClient.Visible:Boolean
 004BEC04    xor         eax,eax
 004BEC06    call        004BBF24
 004BEC0B    pop         ecx
 004BEC0C    pop         ecx
 004BEC0D    pop         ebp
 004BEC0E    ret
*}
end;

//004BEC10
procedure sub_004BEC10;
begin
{*
 004BEC10    push        ebp
 004BEC11    mov         ebp,esp
 004BEC13    push        ecx
 004BEC14    mov         dword ptr [ebp-4],eax
 004BEC17    mov         eax,dword ptr [ebp-4]
 004BEC1A    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>004BEC1E    je          004BEC4C
 004BEC20    mov         eax,dword ptr [ebp-4]
 004BEC23    cmp         dword ptr [eax+24],20000000;TActionBarItem.Color:TColor
>004BEC2A    jne         004BEC3B
 004BEC2C    mov         dl,1
 004BEC2E    mov         eax,dword ptr [ebp-4]
 004BEC31    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BEC34    call        TPanel.SetParentColor
>004BEC39    jmp         004BEC4C
 004BEC3B    mov         eax,dword ptr [ebp-4]
 004BEC3E    mov         edx,dword ptr [eax+24];TActionBarItem.Color:TColor
 004BEC41    mov         eax,dword ptr [ebp-4]
 004BEC44    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BEC47    call        TPanel.SetColor
 004BEC4C    pop         ecx
 004BEC4D    pop         ebp
 004BEC4E    ret
*}
end;

//004BEC50
constructor sub_004BEC50;
begin
{*
 004BEC50    push        ebp
 004BEC51    mov         ebp,esp
 004BEC53    add         esp,0FFFFFFF4
 004BEC56    test        dl,dl
>004BEC58    je          004BEC62
 004BEC5A    add         esp,0FFFFFFF0
 004BEC5D    call        @ClassCreate
 004BEC62    mov         dword ptr [ebp-0C],ecx
 004BEC65    mov         byte ptr [ebp-5],dl
 004BEC68    mov         dword ptr [ebp-4],eax
 004BEC6B    mov         ecx,dword ptr [ebp-0C]
 004BEC6E    xor         edx,edx
 004BEC70    mov         eax,dword ptr [ebp-4]
 004BEC73    call        004BE1B8
 004BEC78    mov         eax,dword ptr [ebp-4]
 004BEC7B    mov         byte ptr [eax+38],1;TActionBarItem.AutoSize:Boolean
 004BEC7F    mov         eax,dword ptr [ebp-4]
 004BEC82    cmp         byte ptr [ebp-5],0
>004BEC86    je          004BEC97
 004BEC88    call        @AfterConstruction
 004BEC8D    pop         dword ptr fs:[0]
 004BEC94    add         esp,0C
 004BEC97    mov         eax,dword ptr [ebp-4]
 004BEC9A    mov         esp,ebp
 004BEC9C    pop         ebp
 004BEC9D    ret
*}
end;

//004BECA0
{*procedure sub_004BECA0(?:?);
begin
 004BECA0    push        ebp
 004BECA1    mov         ebp,esp
 004BECA3    add         esp,0FFFFFFF8
 004BECA6    mov         dword ptr [ebp-8],edx
 004BECA9    mov         dword ptr [ebp-4],eax
 004BECAC    mov         eax,dword ptr [ebp-4]
 004BECAF    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>004BECB3    je          004BECCD
 004BECB5    mov         eax,dword ptr [ebp-4]
 004BECB8    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BECBB    mov         ecx,dword ptr [eax+8];TCustomActionBar.Name:TComponentName
 004BECBE    mov         eax,dword ptr [ebp-8]
 004BECC1    mov         edx,4BECE4;'ActionBar ->'
 004BECC6    call        @LStrCat3
>004BECCB    jmp         004BECD8
 004BECCD    mov         edx,dword ptr [ebp-8]
 004BECD0    mov         eax,dword ptr [ebp-4]
 004BECD3    call        004210D8
 004BECD8    pop         ecx
 004BECD9    pop         ecx
 004BECDA    pop         ebp
 004BECDB    ret
end;*}

//004BECF4
procedure sub_004BECF4;
begin
{*
 004BECF4    push        ebp
 004BECF5    mov         ebp,esp
 004BECF7    push        ecx
 004BECF8    push        esi
 004BECF9    mov         dword ptr [ebp-4],eax
 004BECFC    mov         eax,dword ptr [ebp-4]
 004BECFF    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>004BED03    je          004BED20
 004BED05    mov         eax,dword ptr [ebp-4]
 004BED08    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BED0B    test        byte ptr [eax+1C],1;TCustomActionBar.FComponentState:TComponentState
>004BED0F    jne         004BED20
 004BED11    mov         eax,dword ptr [ebp-4]
 004BED14    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BED17    mov         si,0FFD0
 004BED1B    call        @CallDynaInst;TControl.sub_004826F8
 004BED20    pop         esi
 004BED21    pop         ecx
 004BED22    pop         ebp
 004BED23    ret
*}
end;

//004BED24
procedure TActionBarItem.SetAutoSize(Value:Boolean);
begin
{*
 004BED24    push        ebp
 004BED25    mov         ebp,esp
 004BED27    add         esp,0FFFFFFF8
 004BED2A    mov         byte ptr [ebp-5],dl
 004BED2D    mov         dword ptr [ebp-4],eax
 004BED30    mov         eax,dword ptr [ebp-4]
 004BED33    mov         al,byte ptr [eax+38];TActionBarItem.AutoSize:Boolean
 004BED36    cmp         al,byte ptr [ebp-5]
>004BED39    je          004BED5B
 004BED3B    mov         al,byte ptr [ebp-5]
 004BED3E    mov         edx,dword ptr [ebp-4]
 004BED41    mov         byte ptr [edx+38],al;TActionBarItem.AutoSize:Boolean
 004BED44    mov         eax,dword ptr [ebp-4]
 004BED47    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>004BED4B    je          004BED5B
 004BED4D    mov         eax,dword ptr [ebp-4]
 004BED50    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BED53    mov         edx,dword ptr [eax]
 004BED55    call        dword ptr [edx+0CC];TCustomActionBar.sub_004C16A8
 004BED5B    pop         ecx
 004BED5C    pop         ecx
 004BED5D    pop         ebp
 004BED5E    ret
*}
end;

//004BED60
procedure TActionBarItem.SetGlyphLayout(Value:TButtonLayout);
begin
{*
 004BED60    push        ebp
 004BED61    mov         ebp,esp
 004BED63    add         esp,0FFFFFFF0
 004BED66    push        esi
 004BED67    mov         byte ptr [ebp-5],dl
 004BED6A    mov         dword ptr [ebp-4],eax
 004BED6D    mov         eax,dword ptr [ebp-4]
 004BED70    mov         al,byte ptr [eax+39];TActionBarItem.GlyphLayout:TButtonLayout
 004BED73    cmp         al,byte ptr [ebp-5]
>004BED76    je          004BEE8C
 004BED7C    mov         eax,dword ptr [ebp-4]
 004BED7F    mov         dl,byte ptr [ebp-5]
 004BED82    mov         byte ptr [eax+39],dl;TActionBarItem.GlyphLayout:TButtonLayout
 004BED85    mov         eax,dword ptr [ebp-4]
 004BED88    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>004BED8C    je          004BEE33
 004BED92    mov         eax,dword ptr [ebp-4]
 004BED95    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BED98    call        TWinControl.DisableAlign
 004BED9D    xor         eax,eax
 004BED9F    push        ebp
 004BEDA0    push        4BEE2C
 004BEDA5    push        dword ptr fs:[eax]
 004BEDA8    mov         dword ptr fs:[eax],esp
 004BEDAB    mov         eax,dword ptr [ebp-4]
 004BEDAE    call        TActionClient.GetItems
 004BEDB3    call        0042158C
 004BEDB8    dec         eax
 004BEDB9    test        eax,eax
>004BEDBB    jl          004BEE04
 004BEDBD    inc         eax
 004BEDBE    mov         dword ptr [ebp-10],eax
 004BEDC1    mov         dword ptr [ebp-0C],0
 004BEDC8    mov         eax,dword ptr [ebp-4]
 004BEDCB    call        TActionClient.GetItems
 004BEDD0    mov         edx,dword ptr [ebp-0C]
 004BEDD3    call        004BF258
 004BEDD8    cmp         dword ptr [eax+40],0
>004BEDDC    je          004BEDFC
 004BEDDE    mov         eax,dword ptr [ebp-4]
 004BEDE1    call        TActionClient.GetItems
 004BEDE6    mov         edx,dword ptr [ebp-0C]
 004BEDE9    call        004BF258
 004BEDEE    mov         eax,dword ptr [eax+40]
 004BEDF1    mov         dl,byte ptr [ebp-5]
 004BEDF4    mov         ecx,dword ptr [eax]
 004BEDF6    call        dword ptr [ecx+0D4]
 004BEDFC    inc         dword ptr [ebp-0C]
 004BEDFF    dec         dword ptr [ebp-10]
>004BEE02    jne         004BEDC8
 004BEE04    xor         eax,eax
 004BEE06    pop         edx
 004BEE07    pop         ecx
 004BEE08    pop         ecx
 004BEE09    mov         dword ptr fs:[eax],edx
 004BEE0C    push        4BEE8C
 004BEE11    mov         eax,dword ptr [ebp-4]
 004BEE14    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BEE17    call        TWinControl.EnableAlign
 004BEE1C    mov         eax,dword ptr [ebp-4]
 004BEE1F    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BEE22    mov         si,0FFCF
 004BEE26    call        @CallDynaInst;TControl.sub_0048271C
 004BEE2B    ret
>004BEE2C    jmp         @HandleFinally
>004BEE31    jmp         004BEE11
 004BEE33    mov         eax,dword ptr [ebp-4]
 004BEE36    call        TActionClient.GetItems
 004BEE3B    call        0042158C
 004BEE40    dec         eax
 004BEE41    test        eax,eax
>004BEE43    jl          004BEE8C
 004BEE45    inc         eax
 004BEE46    mov         dword ptr [ebp-10],eax
 004BEE49    mov         dword ptr [ebp-0C],0
 004BEE50    mov         eax,dword ptr [ebp-4]
 004BEE53    call        TActionClient.GetItems
 004BEE58    mov         edx,dword ptr [ebp-0C]
 004BEE5B    call        004BF258
 004BEE60    cmp         dword ptr [eax+40],0
>004BEE64    je          004BEE84
 004BEE66    mov         eax,dword ptr [ebp-4]
 004BEE69    call        TActionClient.GetItems
 004BEE6E    mov         edx,dword ptr [ebp-0C]
 004BEE71    call        004BF258
 004BEE76    mov         eax,dword ptr [eax+40]
 004BEE79    mov         dl,byte ptr [ebp-5]
 004BEE7C    mov         ecx,dword ptr [eax]
 004BEE7E    call        dword ptr [ecx+0D4]
 004BEE84    inc         dword ptr [ebp-0C]
 004BEE87    dec         dword ptr [ebp-10]
>004BEE8A    jne         004BEE50
 004BEE8C    pop         esi
 004BEE8D    mov         esp,ebp
 004BEE8F    pop         ebp
 004BEE90    ret
*}
end;

//004BEE94
{*procedure sub_004BEE94(?:?);
begin
 004BEE94    push        ebp
 004BEE95    mov         ebp,esp
 004BEE97    add         esp,0FFFFFFF8
 004BEE9A    mov         byte ptr [ebp-5],dl
 004BEE9D    mov         dword ptr [ebp-4],eax
 004BEEA0    mov         dl,byte ptr [ebp-5]
 004BEEA3    mov         eax,dword ptr [ebp-4]
 004BEEA6    call        TActionClient.SetVisible
 004BEEAB    mov         eax,dword ptr [ebp-4]
 004BEEAE    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>004BEEB2    je          004BEEC5
 004BEEB4    mov         eax,dword ptr [ebp-4]
 004BEEB7    mov         dl,byte ptr [eax+30];TActionBarItem.Visible:Boolean
 004BEEBA    mov         eax,dword ptr [ebp-4]
 004BEEBD    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BEEC0    call        TImage.SetVisible
 004BEEC5    pop         ecx
 004BEEC6    pop         ecx
 004BEEC7    pop         ebp
 004BEEC8    ret
end;*}

//004BEECC
{*constructor sub_004BEECC(?:?);
begin
 004BEECC    push        ebp
 004BEECD    mov         ebp,esp
 004BEECF    add         esp,0FFFFFFF4
 004BEED2    test        dl,dl
>004BEED4    je          004BEEDE
 004BEED6    add         esp,0FFFFFFF0
 004BEED9    call        @ClassCreate
 004BEEDE    mov         dword ptr [ebp-0C],ecx
 004BEEE1    mov         byte ptr [ebp-5],dl
 004BEEE4    mov         dword ptr [ebp-4],eax
 004BEEE7    mov         eax,dword ptr [ebp+8]
 004BEEEA    push        eax
 004BEEEB    mov         ecx,dword ptr [ebp-0C]
 004BEEEE    xor         edx,edx
 004BEEF0    mov         eax,dword ptr [ebp-4]
 004BEEF3    call        TWorkAreas.Create
 004BEEF8    mov         eax,dword ptr [ebp-4]
 004BEEFB    xor         edx,edx
 004BEEFD    mov         dword ptr [eax+28],edx
 004BEF00    mov         dl,1
 004BEF02    mov         eax,dword ptr [ebp-4]
 004BEF05    call        TActionBars.SetShowHints
 004BEF0A    mov         dl,1
 004BEF0C    mov         eax,dword ptr [ebp-4]
 004BEF0F    call        TActionBars.SetHintShortCuts
 004BEF14    mov         eax,dword ptr [ebp-4]
 004BEF17    cmp         byte ptr [ebp-5],0
>004BEF1B    je          004BEF2C
 004BEF1D    call        @AfterConstruction
 004BEF22    pop         dword ptr fs:[0]
 004BEF29    add         esp,0C
 004BEF2C    mov         eax,dword ptr [ebp-4]
 004BEF2F    mov         esp,ebp
 004BEF31    pop         ebp
 004BEF32    ret         4
end;*}

//004BEF38
{*function sub_004BEF38(?:TActionBars):?;
begin
 004BEF38    push        ebp
 004BEF39    mov         ebp,esp
 004BEF3B    add         esp,0FFFFFFF8
 004BEF3E    mov         dword ptr [ebp-4],eax
 004BEF41    mov         eax,dword ptr [ebp-4]
 004BEF44    call        00421358
 004BEF49    mov         dword ptr [ebp-8],eax
 004BEF4C    mov         eax,dword ptr [ebp-8]
 004BEF4F    pop         ecx
 004BEF50    pop         ecx
 004BEF51    pop         ebp
 004BEF52    ret
end;*}

//004BEFA4
{*function sub_004BEFA4(?:TActionBars; ?:?):?;
begin
 004BEFA4    push        ebp
 004BEFA5    mov         ebp,esp
 004BEFA7    add         esp,0FFFFFFF4
 004BEFAA    mov         dword ptr [ebp-8],edx
 004BEFAD    mov         dword ptr [ebp-4],eax
 004BEFB0    mov         edx,dword ptr [ebp-8]
 004BEFB3    mov         eax,dword ptr [ebp-4]
 004BEFB6    call        004215A8
 004BEFBB    mov         dword ptr [ebp-0C],eax
 004BEFBE    mov         eax,dword ptr [ebp-0C]
 004BEFC1    mov         esp,ebp
 004BEFC3    pop         ebp
 004BEFC4    ret
end;*}

//004BEFC8
{*function TActionBars.GetHintShortCuts:?;
begin
 004BEFC8    push        ebp
 004BEFC9    mov         ebp,esp
 004BEFCB    add         esp,0FFFFFFF8
 004BEFCE    mov         dword ptr [ebp-4],eax
 004BEFD1    mov         byte ptr [ebp-5],0
 004BEFD5    mov         eax,[0056E3C0];^Application:TApplication
 004BEFDA    cmp         dword ptr [eax],0
>004BEFDD    je          004BEFEC
 004BEFDF    mov         eax,[0056E3C0];^Application:TApplication
 004BEFE4    mov         eax,dword ptr [eax]
 004BEFE6    mov         al,byte ptr [eax+7C];TApplication.FHintShortCuts:Boolean
 004BEFE9    mov         byte ptr [ebp-5],al
 004BEFEC    mov         al,byte ptr [ebp-5]
 004BEFEF    pop         ecx
 004BEFF0    pop         ecx
 004BEFF1    pop         ebp
 004BEFF2    ret
end;*}

//004BEFF4
{*procedure sub_004BEFF4(?:?; ?:?);
begin
 004BEFF4    push        ebp
 004BEFF5    mov         ebp,esp
 004BEFF7    add         esp,0FFFFFFF0
 004BEFFA    mov         byte ptr [ebp-9],cl
 004BEFFD    mov         dword ptr [ebp-8],edx
 004BF000    mov         dword ptr [ebp-4],eax
 004BF003    mov         cl,byte ptr [ebp-9]
 004BF006    mov         edx,dword ptr [ebp-8]
 004BF009    mov         eax,dword ptr [ebp-4]
 004BF00C    call        004219A8
 004BF011    cmp         byte ptr [ebp-9],2
>004BF015    jne         004BF051
 004BF017    mov         eax,dword ptr [ebp-8]
 004BF01A    mov         edx,dword ptr ds:[4BAD10];TActionBarItem
 004BF020    call        @IsClass
 004BF025    test        al,al
>004BF027    je          004BF051
 004BF029    mov         eax,dword ptr [ebp-8]
 004BF02C    mov         edx,dword ptr ds:[4BAD10];TActionBarItem
 004BF032    call        @AsClass
 004BF037    mov         dword ptr [ebp-10],eax
 004BF03A    mov         eax,dword ptr [ebp-10]
 004BF03D    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>004BF041    je          004BF051
 004BF043    mov         eax,dword ptr [ebp-10]
 004BF046    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 004BF049    xor         edx,edx
 004BF04B    mov         dword ptr [eax+210],edx;TCustomActionBar.FActionClient:TActionClient
 004BF051    mov         esp,ebp
 004BF053    pop         ebp
 004BF054    ret
end;*}

//004BF058
procedure TActionBars.SetShowHints(Value:Boolean);
begin
{*
 004BF058    push        ebp
 004BF059    mov         ebp,esp
 004BF05B    add         esp,0FFFFFFF8
 004BF05E    mov         byte ptr [ebp-5],dl
 004BF061    mov         dword ptr [ebp-4],eax
 004BF064    mov         al,byte ptr [ebp-5]
 004BF067    mov         edx,dword ptr [ebp-4]
 004BF06A    cmp         al,byte ptr [edx+2C];TActionBars.ShowHints:Boolean
>004BF06D    je          004BF08C
 004BF06F    mov         al,byte ptr [ebp-5]
 004BF072    mov         edx,dword ptr [ebp-4]
 004BF075    mov         byte ptr [edx+2C],al;TActionBars.ShowHints:Boolean
 004BF078    mov         eax,dword ptr [ebp-4]
 004BF07B    push        eax
 004BF07C    push        4BEF54
 004BF081    mov         edx,dword ptr [ebp-4]
 004BF084    mov         eax,dword ptr [ebp-4]
 004BF087    call        004BE03C
 004BF08C    pop         ecx
 004BF08D    pop         ecx
 004BF08E    pop         ebp
 004BF08F    ret
*}
end;

//004BF090
procedure TActionBars.SetHintShortCuts(Value:Boolean);
begin
{*
 004BF090    push        ebp
 004BF091    mov         ebp,esp
 004BF093    add         esp,0FFFFFFF8
 004BF096    mov         byte ptr [ebp-5],dl
 004BF099    mov         dword ptr [ebp-4],eax
 004BF09C    mov         eax,[0056E3C0];^Application:TApplication
 004BF0A1    cmp         dword ptr [eax],0
>004BF0A4    je          004BF0B3
 004BF0A6    mov         eax,[0056E3C0];^Application:TApplication
 004BF0AB    mov         eax,dword ptr [eax]
 004BF0AD    mov         dl,byte ptr [ebp-5]
 004BF0B0    mov         byte ptr [eax+7C],dl;TApplication.FHintShortCuts:Boolean
 004BF0B3    pop         ecx
 004BF0B4    pop         ecx
 004BF0B5    pop         ebp
 004BF0B6    ret
*}
end;

//004BF0B8
{*constructor TActionClients.Create(?:?);
begin
 004BF0B8    push        ebp
 004BF0B9    mov         ebp,esp
 004BF0BB    add         esp,0FFFFFFF4
 004BF0BE    test        dl,dl
>004BF0C0    je          004BF0CA
 004BF0C2    add         esp,0FFFFFFF0
 004BF0C5    call        @ClassCreate
 004BF0CA    mov         dword ptr [ebp-0C],ecx
 004BF0CD    mov         byte ptr [ebp-5],dl
 004BF0D0    mov         dword ptr [ebp-4],eax
 004BF0D3    mov         eax,dword ptr [ebp+8]
 004BF0D6    push        eax
 004BF0D7    mov         ecx,dword ptr [ebp-0C]
 004BF0DA    xor         edx,edx
 004BF0DC    mov         eax,dword ptr [ebp-4]
 004BF0DF    call        TWorkAreas.Create
 004BF0E4    mov         eax,dword ptr [ebp-4]
 004BF0E7    mov         byte ptr [eax+28],1;TActionClients.CaptionOptions:TCaptionOptions
 004BF0EB    mov         eax,dword ptr [ebp-4]
 004BF0EE    mov         byte ptr [eax+29],1;TActionClients.SmallIcons:Boolean
 004BF0F2    mov         eax,dword ptr [ebp-4]
 004BF0F5    mov         byte ptr [eax+2A],1;TActionClients.HideUnused:Boolean
 004BF0F9    mov         eax,dword ptr [ebp-4]
 004BF0FC    mov         byte ptr [eax+1C],1;TActionClients.FAutoHotKeys:Boolean
 004BF100    mov         eax,dword ptr [ebp-4]
 004BF103    cmp         byte ptr [ebp-5],0
>004BF107    je          004BF118
 004BF109    call        @AfterConstruction
 004BF10E    pop         dword ptr fs:[0]
 004BF115    add         esp,0C
 004BF118    mov         eax,dword ptr [ebp-4]
 004BF11B    mov         esp,ebp
 004BF11D    pop         ebp
 004BF11E    ret         4
end;*}

//004BF124
{*function sub_004BF124(?:?):?;
begin
 004BF124    push        ebp
 004BF125    mov         ebp,esp
 004BF127    add         esp,0FFFFFFF8
 004BF12A    mov         dword ptr [ebp-4],eax
 004BF12D    mov         eax,dword ptr [ebp-4]
 004BF130    call        00421358
 004BF135    mov         dword ptr [ebp-8],eax
 004BF138    mov         eax,dword ptr [ebp-8]
 004BF13B    pop         ecx
 004BF13C    pop         ecx
 004BF13D    pop         ebp
 004BF13E    ret
end;*}

//004BF140
{*procedure sub_004BF140(?:?);
begin
 004BF140    push        ebp
 004BF141    mov         ebp,esp
 004BF143    add         esp,0FFFFFFF8
 004BF146    mov         dword ptr [ebp-8],edx
 004BF149    mov         dword ptr [ebp-4],eax
 004BF14C    mov         edx,dword ptr [ebp-8]
 004BF14F    mov         eax,dword ptr [ebp-4]
 004BF152    call        00421384
 004BF157    mov         eax,dword ptr [ebp-8]
 004BF15A    mov         edx,dword ptr ds:[4BAFBC];TActionClients
 004BF160    call        @IsClass
 004BF165    test        al,al
>004BF167    je          004BF1AD
 004BF169    mov         eax,dword ptr [ebp-8]
 004BF16C    mov         dl,byte ptr [eax+1C]
 004BF16F    mov         eax,dword ptr [ebp-4]
 004BF172    call        TActionClients.SetAutoHotKeys
 004BF177    mov         eax,dword ptr [ebp-8]
 004BF17A    mov         al,byte ptr [eax+24]
 004BF17D    mov         edx,dword ptr [ebp-4]
 004BF180    mov         byte ptr [edx+24],al;TActionClients.FCustomizable:Boolean
 004BF183    mov         eax,dword ptr [ebp-8]
 004BF186    mov         dl,byte ptr [eax+2A]
 004BF189    mov         eax,dword ptr [ebp-4]
 004BF18C    call        TActionClients.SetHideUnused
 004BF191    mov         eax,dword ptr [ebp-8]
 004BF194    mov         dl,byte ptr [eax+28]
 004BF197    mov         eax,dword ptr [ebp-4]
 004BF19A    call        TActionClients.SetCaptionOptions
 004BF19F    mov         eax,dword ptr [ebp-8]
 004BF1A2    mov         dl,byte ptr [eax+29]
 004BF1A5    mov         eax,dword ptr [ebp-4]
 004BF1A8    call        TActionClients.SetSmallIcons
 004BF1AD    pop         ecx
 004BF1AE    pop         ecx
 004BF1AF    pop         ebp
 004BF1B0    ret
end;*}

//004BF258
{*function sub_004BF258(?:TActionClients; ?:?):?;
begin
 004BF258    push        ebp
 004BF259    mov         ebp,esp
 004BF25B    add         esp,0FFFFFFF4
 004BF25E    mov         dword ptr [ebp-8],edx
 004BF261    mov         dword ptr [ebp-4],eax
 004BF264    mov         edx,dword ptr [ebp-8]
 004BF267    mov         eax,dword ptr [ebp-4]
 004BF26A    call        004215A8
 004BF26F    mov         dword ptr [ebp-0C],eax
 004BF272    mov         eax,dword ptr [ebp-0C]
 004BF275    mov         esp,ebp
 004BF277    pop         ebp
 004BF278    ret
end;*}

//004BF27C
{*procedure sub_004BF27C(?:?; ?:?);
begin
 004BF27C    push        ebp
 004BF27D    mov         ebp,esp
 004BF27F    add         esp,0FFFFFFE4
 004BF282    mov         byte ptr [ebp-9],cl
 004BF285    mov         dword ptr [ebp-8],edx
 004BF288    mov         dword ptr [ebp-4],eax
 004BF28B    mov         cl,byte ptr [ebp-9]
 004BF28E    mov         edx,dword ptr [ebp-8]
 004BF291    mov         eax,dword ptr [ebp-4]
 004BF294    call        004219A8
 004BF299    mov         al,byte ptr [ebp-9]
 004BF29C    sub         al,1
>004BF29E    jb          004BF2B3
>004BF2A0    je          004BF35D
 004BF2A6    dec         al
>004BF2A8    je          004BF3DC
>004BF2AE    jmp         004BF451
 004BF2B3    mov         eax,dword ptr [ebp-8]
 004BF2B6    mov         edx,dword ptr ds:[4BAB28];TActionClient
 004BF2BC    call        @AsClass
 004BF2C1    mov         dword ptr [ebp-14],eax
 004BF2C4    mov         eax,dword ptr [ebp-4]
 004BF2C7    cmp         dword ptr [eax+20],0;TActionClients.FParentItem:TActionClient
>004BF2CB    je          004BF451
 004BF2D1    mov         eax,dword ptr [ebp-4]
 004BF2D4    cmp         dword ptr [eax+20],0;TActionClients.FParentItem:TActionClient
>004BF2D8    je          004BF2EC
 004BF2DA    mov         eax,dword ptr [ebp-4]
 004BF2DD    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF2E0    call        004BE698
 004BF2E5    mov         dl,1
 004BF2E7    call        004BDA70
 004BF2EC    xor         eax,eax
 004BF2EE    mov         dword ptr [ebp-10],eax
 004BF2F1    mov         eax,dword ptr [ebp-4]
 004BF2F4    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF2F7    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>004BF2FB    je          004BF30B
 004BF2FD    mov         eax,dword ptr [ebp-4]
 004BF300    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF303    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BF306    mov         dword ptr [ebp-10],eax
>004BF309    jmp         004BF323
 004BF30B    mov         eax,dword ptr [ebp-4]
 004BF30E    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF311    cmp         dword ptr [eax+18],0;TActionClient.FChildActionBar:TCustomActionBar
>004BF315    je          004BF323
 004BF317    mov         eax,dword ptr [ebp-4]
 004BF31A    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF31D    mov         eax,dword ptr [eax+18];TActionClient.FChildActionBar:TCustomActionBar
 004BF320    mov         dword ptr [ebp-10],eax
 004BF323    mov         eax,dword ptr [ebp-4]
 004BF326    cmp         dword ptr [eax+0C],0;TActionClients.FUpdateCount:Integer
>004BF32A    jne         004BF451
 004BF330    cmp         dword ptr [ebp-10],0
>004BF334    je          004BF451
 004BF33A    mov         eax,dword ptr [ebp-10]
 004BF33D    call        TWinControl.HandleAllocated
 004BF342    test        al,al
>004BF344    je          004BF451
 004BF34A    mov         edx,dword ptr [ebp-8]
 004BF34D    mov         eax,dword ptr [ebp-10]
 004BF350    mov         ecx,dword ptr [eax]
 004BF352    call        dword ptr [ecx+0D4];TCustomActionBar.sub_004C1888
>004BF358    jmp         004BF451
 004BF35D    mov         eax,dword ptr [ebp-8]
 004BF360    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004BF366    call        @IsClass
 004BF36B    test        al,al
>004BF36D    je          004BF451
 004BF373    mov         eax,dword ptr [ebp-8]
 004BF376    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004BF37C    call        @AsClass
 004BF381    mov         dword ptr [ebp-18],eax
 004BF384    mov         eax,dword ptr [ebp-18]
 004BF387    call        004BE5A0
 004BF38C    test        eax,eax
>004BF38E    je          004BF451
 004BF394    mov         eax,dword ptr [ebp-18]
 004BF397    call        004BE5A0
 004BF39C    cmp         dword ptr [eax+18],0
>004BF3A0    je          004BF451
 004BF3A6    mov         eax,dword ptr [ebp-18]
 004BF3A9    call        004BE5A0
 004BF3AE    mov         eax,dword ptr [eax+18]
 004BF3B1    call        TWinControl.HandleAllocated
 004BF3B6    test        al,al
>004BF3B8    je          004BF451
 004BF3BE    push        0
 004BF3C0    push        0
 004BF3C2    push        5
 004BF3C4    mov         eax,dword ptr [ebp-18]
 004BF3C7    call        004BE5A0
 004BF3CC    mov         eax,dword ptr [eax+18]
 004BF3CF    call        TWinControl.GetHandle
 004BF3D4    push        eax
 004BF3D5    call        user32.PostMessageA
>004BF3DA    jmp         004BF451
 004BF3DC    mov         eax,dword ptr [ebp-8]
 004BF3DF    call        004BE468
 004BF3E4    mov         eax,dword ptr [ebp-8]
 004BF3E7    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004BF3ED    call        @IsClass
 004BF3F2    test        al,al
>004BF3F4    je          004BF451
 004BF3F6    mov         eax,dword ptr [ebp-8]
 004BF3F9    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004BF3FF    call        @AsClass
 004BF404    mov         dword ptr [ebp-1C],eax
 004BF407    mov         eax,dword ptr [ebp-1C]
 004BF40A    call        004BE5A0
 004BF40F    test        eax,eax
>004BF411    je          004BF451
 004BF413    mov         eax,dword ptr [ebp-1C]
 004BF416    call        004BE5A0
 004BF41B    cmp         dword ptr [eax+18],0
>004BF41F    je          004BF451
 004BF421    mov         eax,dword ptr [ebp-1C]
 004BF424    call        004BE5A0
 004BF429    mov         eax,dword ptr [eax+18]
 004BF42C    call        TWinControl.HandleAllocated
 004BF431    test        al,al
>004BF433    je          004BF451
 004BF435    push        0
 004BF437    push        0
 004BF439    push        5
 004BF43B    mov         eax,dword ptr [ebp-1C]
 004BF43E    call        004BE5A0
 004BF443    mov         eax,dword ptr [eax+18]
 004BF446    call        TWinControl.GetHandle
 004BF44B    push        eax
 004BF44C    call        user32.PostMessageA
 004BF451    mov         esp,ebp
 004BF453    pop         ebp
 004BF454    ret
end;*}

//004BF458
procedure TActionClients.SetCaptionOptions(Value:TCaptionOptions);
begin
{*
 004BF458    push        ebp
 004BF459    mov         ebp,esp
 004BF45B    add         esp,0FFFFFFF8
 004BF45E    mov         byte ptr [ebp-5],dl
 004BF461    mov         dword ptr [ebp-4],eax
 004BF464    mov         eax,dword ptr [ebp-4]
 004BF467    mov         al,byte ptr [eax+28];TActionClients.CaptionOptions:TCaptionOptions
 004BF46A    cmp         al,byte ptr [ebp-5]
>004BF46D    je          004BF4F8
 004BF473    mov         eax,dword ptr [ebp-4]
 004BF476    mov         dl,byte ptr [ebp-5]
 004BF479    mov         byte ptr [eax+28],dl;TActionClients.CaptionOptions:TCaptionOptions
 004BF47C    mov         eax,dword ptr [ebp-4]
 004BF47F    cmp         dword ptr [eax+20],0;TActionClients.FParentItem:TActionClient
>004BF483    je          004BF4E4
 004BF485    mov         eax,dword ptr [ebp-4]
 004BF488    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF48B    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>004BF48F    je          004BF4E4
 004BF491    mov         eax,dword ptr [ebp-4]
 004BF494    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF497    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BF49A    call        TWinControl.DisableAlign
 004BF49F    xor         eax,eax
 004BF4A1    push        ebp
 004BF4A2    push        4BF4DD
 004BF4A7    push        dword ptr fs:[eax]
 004BF4AA    mov         dword ptr fs:[eax],esp
 004BF4AD    mov         eax,dword ptr [ebp-4]
 004BF4B0    push        eax
 004BF4B1    push        4BF20C
 004BF4B6    mov         edx,dword ptr [ebp-4]
 004BF4B9    mov         eax,dword ptr [ebp-4]
 004BF4BC    call        004BE03C
 004BF4C1    xor         eax,eax
 004BF4C3    pop         edx
 004BF4C4    pop         ecx
 004BF4C5    pop         ecx
 004BF4C6    mov         dword ptr fs:[eax],edx
 004BF4C9    push        4BF4F8
 004BF4CE    mov         eax,dword ptr [ebp-4]
 004BF4D1    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF4D4    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BF4D7    call        TWinControl.EnableAlign
 004BF4DC    ret
>004BF4DD    jmp         @HandleFinally
>004BF4E2    jmp         004BF4CE
 004BF4E4    mov         eax,dword ptr [ebp-4]
 004BF4E7    push        eax
 004BF4E8    push        4BF20C
 004BF4ED    mov         edx,dword ptr [ebp-4]
 004BF4F0    mov         eax,dword ptr [ebp-4]
 004BF4F3    call        004BE03C
 004BF4F8    pop         ecx
 004BF4F9    pop         ecx
 004BF4FA    pop         ebp
 004BF4FB    ret
*}
end;

//004BF4FC
procedure TActionClients.SetHideUnused(Value:Boolean);
begin
{*
 004BF4FC    push        ebp
 004BF4FD    mov         ebp,esp
 004BF4FF    add         esp,0FFFFFFF8
 004BF502    mov         byte ptr [ebp-5],dl
 004BF505    mov         dword ptr [ebp-4],eax
 004BF508    mov         eax,dword ptr [ebp-4]
 004BF50B    mov         al,byte ptr [eax+2A];TActionClients.HideUnused:Boolean
 004BF50E    cmp         al,byte ptr [ebp-5]
>004BF511    je          004BF53E
 004BF513    mov         al,byte ptr [ebp-5]
 004BF516    mov         edx,dword ptr [ebp-4]
 004BF519    mov         byte ptr [edx+2A],al;TActionClients.HideUnused:Boolean
 004BF51C    mov         eax,dword ptr [ebp-4]
 004BF51F    call        004BD7EC
 004BF524    test        byte ptr [eax+1C],1
>004BF528    jne         004BF53E
 004BF52A    mov         eax,dword ptr [ebp-4]
 004BF52D    push        eax
 004BF52E    push        4BF1B4
 004BF533    mov         edx,dword ptr [ebp-4]
 004BF536    mov         eax,dword ptr [ebp-4]
 004BF539    call        004BE03C
 004BF53E    pop         ecx
 004BF53F    pop         ecx
 004BF540    pop         ebp
 004BF541    ret
*}
end;

//004BF544
procedure TActionClients.SetSmallIcons(Value:Boolean);
begin
{*
 004BF544    push        ebp
 004BF545    mov         ebp,esp
 004BF547    add         esp,0FFFFFFF8
 004BF54A    push        esi
 004BF54B    mov         byte ptr [ebp-5],dl
 004BF54E    mov         dword ptr [ebp-4],eax
 004BF551    mov         eax,dword ptr [ebp-4]
 004BF554    mov         al,byte ptr [eax+29];TActionClients.SmallIcons:Boolean
 004BF557    cmp         al,byte ptr [ebp-5]
>004BF55A    je          004BF5EB
 004BF560    mov         eax,dword ptr [ebp-4]
 004BF563    mov         dl,byte ptr [ebp-5]
 004BF566    mov         byte ptr [eax+29],dl;TActionClients.SmallIcons:Boolean
 004BF569    mov         eax,dword ptr [ebp-4]
 004BF56C    cmp         dword ptr [eax+20],0;TActionClients.FParentItem:TActionClient
>004BF570    je          004BF5DD
 004BF572    mov         eax,dword ptr [ebp-4]
 004BF575    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF578    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>004BF57C    je          004BF5DD
 004BF57E    mov         eax,dword ptr [ebp-4]
 004BF581    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF584    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BF587    call        TWinControl.DisableAlign
 004BF58C    xor         eax,eax
 004BF58E    push        ebp
 004BF58F    push        4BF5D6
 004BF594    push        dword ptr fs:[eax]
 004BF597    mov         dword ptr fs:[eax],esp
 004BF59A    mov         cl,byte ptr [ebp-5]
 004BF59D    mov         edx,dword ptr [ebp-4]
 004BF5A0    mov         eax,dword ptr [ebp-4]
 004BF5A3    call        004BF5F0
 004BF5A8    mov         eax,dword ptr [ebp-4]
 004BF5AB    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF5AE    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BF5B1    mov         si,0FFD0
 004BF5B5    call        @CallDynaInst;TControl.sub_004826F8
 004BF5BA    xor         eax,eax
 004BF5BC    pop         edx
 004BF5BD    pop         ecx
 004BF5BE    pop         ecx
 004BF5BF    mov         dword ptr fs:[eax],edx
 004BF5C2    push        4BF5EB
 004BF5C7    mov         eax,dword ptr [ebp-4]
 004BF5CA    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 004BF5CD    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 004BF5D0    call        TWinControl.EnableAlign
 004BF5D5    ret
>004BF5D6    jmp         @HandleFinally
>004BF5DB    jmp         004BF5C7
 004BF5DD    mov         cl,byte ptr [ebp-5]
 004BF5E0    mov         edx,dword ptr [ebp-4]
 004BF5E3    mov         eax,dword ptr [ebp-4]
 004BF5E6    call        004BF5F0
 004BF5EB    pop         esi
 004BF5EC    pop         ecx
 004BF5ED    pop         ecx
 004BF5EE    pop         ebp
 004BF5EF    ret
*}
end;

//004BF5F0
{*procedure sub_004BF5F0(?:TActionClients; ?:TActionClients; ?:?);
begin
 004BF5F0    push        ebp
 004BF5F1    mov         ebp,esp
 004BF5F3    add         esp,0FFFFFFEC
 004BF5F6    mov         byte ptr [ebp-9],cl
 004BF5F9    mov         dword ptr [ebp-8],edx
 004BF5FC    mov         dword ptr [ebp-4],eax
 004BF5FF    cmp         dword ptr [ebp-8],0
>004BF603    je          004BF69D
 004BF609    mov         eax,dword ptr [ebp-8]
 004BF60C    call        0042158C
 004BF611    dec         eax
 004BF612    test        eax,eax
>004BF614    jl          004BF69D
 004BF61A    inc         eax
 004BF61B    mov         dword ptr [ebp-14],eax
 004BF61E    mov         dword ptr [ebp-10],0
 004BF625    mov         edx,dword ptr [ebp-10]
 004BF628    mov         eax,dword ptr [ebp-8]
 004BF62B    call        004BF258
 004BF630    cmp         dword ptr [eax+40],0
>004BF634    je          004BF64C
 004BF636    mov         edx,dword ptr [ebp-10]
 004BF639    mov         eax,dword ptr [ebp-8]
 004BF63C    call        004BF258
 004BF641    mov         eax,dword ptr [eax+40]
 004BF644    mov         dl,byte ptr [ebp-9]
 004BF647    call        004C7184
 004BF64C    mov         edx,dword ptr [ebp-10]
 004BF64F    mov         eax,dword ptr [ebp-8]
 004BF652    call        004BF258
 004BF657    call        004BE56C
 004BF65C    test        al,al
>004BF65E    je          004BF695
 004BF660    mov         edx,dword ptr [ebp-10]
 004BF663    mov         eax,dword ptr [ebp-8]
 004BF666    call        004BF258
 004BF66B    call        TActionClient.GetItems
 004BF670    mov         dl,byte ptr [ebp-9]
 004BF673    call        TActionClients.SetSmallIcons
 004BF678    mov         edx,dword ptr [ebp-10]
 004BF67B    mov         eax,dword ptr [ebp-8]
 004BF67E    call        004BF258
 004BF683    call        TActionClient.GetItems
 004BF688    mov         edx,eax
 004BF68A    mov         cl,byte ptr [ebp-9]
 004BF68D    mov         eax,dword ptr [ebp-4]
 004BF690    call        004BF5F0
 004BF695    inc         dword ptr [ebp-10]
 004BF698    dec         dword ptr [ebp-14]
>004BF69B    jne         004BF625
 004BF69D    mov         esp,ebp
 004BF69F    pop         ebp
 004BF6A0    ret
end;*}

//004BF6A4
{*function sub_004BF6A4(?:?):?;
begin
 004BF6A4    push        ebp
 004BF6A5    mov         ebp,esp
 004BF6A7    add         esp,0FFFFFFF0
 004BF6AA    mov         dword ptr [ebp-4],eax
 004BF6AD    xor         eax,eax
 004BF6AF    mov         dword ptr [ebp-8],eax
 004BF6B2    mov         eax,dword ptr [ebp-4]
 004BF6B5    call        0042158C
 004BF6BA    dec         eax
 004BF6BB    test        eax,eax
>004BF6BD    jl          004BF6E6
 004BF6BF    inc         eax
 004BF6C0    mov         dword ptr [ebp-10],eax
 004BF6C3    mov         dword ptr [ebp-0C],0
 004BF6CA    mov         edx,dword ptr [ebp-0C]
 004BF6CD    mov         eax,dword ptr [ebp-4]
 004BF6D0    call        004BF258
 004BF6D5    cmp         byte ptr [eax+30],0
>004BF6D9    je          004BF6DE
 004BF6DB    inc         dword ptr [ebp-8]
 004BF6DE    inc         dword ptr [ebp-0C]
 004BF6E1    dec         dword ptr [ebp-10]
>004BF6E4    jne         004BF6CA
 004BF6E6    mov         eax,dword ptr [ebp-8]
 004BF6E9    mov         esp,ebp
 004BF6EB    pop         ebp
 004BF6EC    ret
end;*}

//004BF6F0
{*procedure sub_004BF6F0(?:?);
begin
 004BF6F0    push        ebp
 004BF6F1    mov         ebp,esp
 004BF6F3    add         esp,0FFFFFFF8
 004BF6F6    mov         dword ptr [ebp-8],edx
 004BF6F9    mov         dword ptr [ebp-4],eax
 004BF6FC    mov         eax,dword ptr [ebp-8]
 004BF6FF    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004BF705    call        @AsClass
 004BF70A    mov         edx,dword ptr [ebp-4]
 004BF70D    mov         dword ptr [edx+18],eax;TActionClientLink...........................FClient:TActionClient...
 004BF710    pop         ecx
 004BF711    pop         ecx
 004BF712    pop         ebp
 004BF713    ret
end;*}

//004BF714
{*function sub_004BF714(?:?):?;
begin
 004BF714    push        ebp
 004BF715    mov         ebp,esp
 004BF717    add         esp,0FFFFFFDC
 004BF71A    push        esi
 004BF71B    xor         ecx,ecx
 004BF71D    mov         dword ptr [ebp-10],ecx
 004BF720    mov         dword ptr [ebp-24],ecx
 004BF723    mov         dword ptr [ebp-8],edx
 004BF726    mov         dword ptr [ebp-4],eax
 004BF729    xor         eax,eax
 004BF72B    push        ebp
 004BF72C    push        4BF7F9
 004BF731    push        dword ptr fs:[eax]
 004BF734    mov         dword ptr fs:[eax],esp
 004BF737    mov         byte ptr [ebp-9],1
 004BF73B    mov         eax,dword ptr [ebp-4]
 004BF73E    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BF741    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BF747    call        @IsClass
 004BF74C    test        al,al
>004BF74E    je          004BF7DB
 004BF754    mov         edx,dword ptr [ebp-8]
 004BF757    mov         eax,dword ptr [ebp-4]
 004BF75A    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BF75D    mov         si,0FFEE
 004BF761    call        @CallDynaInst
 004BF766    test        al,al
>004BF768    je          004BF7DB
 004BF76A    mov         eax,[0056E3C0];^Application:TApplication
 004BF76F    mov         eax,dword ptr [eax]
 004BF771    cmp         byte ptr [eax+7C],0;TApplication.FHintShortCuts:Boolean
>004BF775    je          004BF7DB
 004BF777    mov         eax,dword ptr [ebp-4]
 004BF77A    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BF77D    cmp         word ptr [eax+84],0
>004BF785    je          004BF7DB
 004BF787    mov         eax,dword ptr [ebp-8]
 004BF78A    cmp         dword ptr [eax],0
>004BF78D    je          004BF7DB
 004BF78F    lea         eax,[ebp-10]
 004BF792    push        eax
 004BF793    mov         eax,dword ptr [ebp-8]
 004BF796    mov         eax,dword ptr [eax]
 004BF798    mov         dword ptr [ebp-20],eax
 004BF79B    mov         byte ptr [ebp-1C],0B
 004BF79F    lea         edx,[ebp-24]
 004BF7A2    mov         eax,dword ptr [ebp-4]
 004BF7A5    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BF7A8    mov         ax,word ptr [eax+84]
 004BF7AF    call        0049795C
 004BF7B4    mov         eax,dword ptr [ebp-24]
 004BF7B7    mov         dword ptr [ebp-18],eax
 004BF7BA    mov         byte ptr [ebp-14],0B
 004BF7BE    lea         edx,[ebp-20]
 004BF7C1    mov         ecx,1
 004BF7C6    mov         eax,4BF810;'%s (%s)'
 004BF7CB    call        0040D630
 004BF7D0    mov         edx,dword ptr [ebp-10]
 004BF7D3    mov         eax,dword ptr [ebp-8]
 004BF7D6    call        @LStrAsg
 004BF7DB    xor         eax,eax
 004BF7DD    pop         edx
 004BF7DE    pop         ecx
 004BF7DF    pop         ecx
 004BF7E0    mov         dword ptr fs:[eax],edx
 004BF7E3    push        4BF800
 004BF7E8    lea         eax,[ebp-24]
 004BF7EB    call        @LStrClr
 004BF7F0    lea         eax,[ebp-10]
 004BF7F3    call        @LStrClr
 004BF7F8    ret
>004BF7F9    jmp         @HandleFinally
>004BF7FE    jmp         004BF7E8
 004BF800    mov         al,byte ptr [ebp-9]
 004BF803    pop         esi
 004BF804    mov         esp,ebp
 004BF806    pop         ebp
 004BF807    ret
end;*}

//004BF818
{*function sub_004BF818:?;
begin
 004BF818    push        ebp
 004BF819    mov         ebp,esp
 004BF81B    xor         ecx,ecx
 004BF81D    push        ecx
 004BF81E    push        ecx
 004BF81F    push        ecx
 004BF820    push        ecx
 004BF821    push        ecx
 004BF822    mov         dword ptr [ebp-4],eax
 004BF825    xor         eax,eax
 004BF827    push        ebp
 004BF828    push        4BF8E1
 004BF82D    push        dword ptr fs:[eax]
 004BF830    mov         dword ptr fs:[eax],esp
 004BF833    mov         eax,dword ptr [ebp-4]
 004BF836    call        004939F8
 004BF83B    test        al,al
>004BF83D    je          004BF86D
 004BF83F    lea         edx,[ebp-0C]
 004BF842    mov         eax,dword ptr [ebp-4]
 004BF845    mov         eax,dword ptr [eax+18];TActionClientLink............................FClient:TActionClien...
 004BF848    call        TActionClientItem.GetCaption
 004BF84D    mov         eax,dword ptr [ebp-0C]
 004BF850    push        eax
 004BF851    mov         eax,dword ptr [ebp-4]
 004BF854    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BF857    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BF85D    call        @AsClass
 004BF862    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 004BF865    pop         eax
 004BF866    call        @LStrCmp
>004BF86B    je          004BF871
 004BF86D    xor         eax,eax
>004BF86F    jmp         004BF873
 004BF871    mov         al,1
 004BF873    mov         byte ptr [ebp-5],al
 004BF876    cmp         byte ptr [ebp-5],0
>004BF87A    jne         004BF8C6
 004BF87C    mov         eax,dword ptr [ebp-4]
 004BF87F    mov         eax,dword ptr [eax+18];TActionClientLink.............................FClient:TActionClie...
 004BF882    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 004BF885    cmp         byte ptr [eax+1C],0
>004BF889    je          004BF8C6
 004BF88B    lea         edx,[ebp-14]
 004BF88E    mov         eax,dword ptr [ebp-4]
 004BF891    mov         eax,dword ptr [eax+18];TActionClientLink..............................FClient:TActionCli...
 004BF894    call        TActionClientItem.GetCaption
 004BF899    mov         eax,dword ptr [ebp-14]
 004BF89C    lea         edx,[ebp-10]
 004BF89F    call        0049DFE4
 004BF8A4    mov         eax,dword ptr [ebp-10]
 004BF8A7    push        eax
 004BF8A8    mov         eax,dword ptr [ebp-4]
 004BF8AB    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BF8AE    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BF8B4    call        @AsClass
 004BF8B9    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 004BF8BC    pop         eax
 004BF8BD    call        @LStrCmp
 004BF8C2    sete        byte ptr [ebp-5]
 004BF8C6    xor         eax,eax
 004BF8C8    pop         edx
 004BF8C9    pop         ecx
 004BF8CA    pop         ecx
 004BF8CB    mov         dword ptr fs:[eax],edx
 004BF8CE    push        4BF8E8
 004BF8D3    lea         eax,[ebp-14]
 004BF8D6    mov         edx,3
 004BF8DB    call        @LStrArrayClr
 004BF8E0    ret
>004BF8E1    jmp         @HandleFinally
>004BF8E6    jmp         004BF8D3
 004BF8E8    mov         al,byte ptr [ebp-5]
 004BF8EB    mov         esp,ebp
 004BF8ED    pop         ebp
 004BF8EE    ret
end;*}

//004BF8F0
{*function sub_004BF8F0:?;
begin
 004BF8F0    push        ebp
 004BF8F1    mov         ebp,esp
 004BF8F3    add         esp,0FFFFFFF8
 004BF8F6    push        ebx
 004BF8F7    mov         dword ptr [ebp-4],eax
 004BF8FA    mov         eax,dword ptr [ebp-4]
 004BF8FD    call        00493A40
 004BF902    test        al,al
>004BF904    je          004BF938
 004BF906    mov         eax,dword ptr [ebp-4]
 004BF909    mov         eax,dword ptr [eax+18];TActionClientLink...............................FClient:TActionCl...
 004BF90C    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004BF910    je          004BF938
 004BF912    mov         eax,dword ptr [ebp-4]
 004BF915    mov         eax,dword ptr [eax+18];TActionClientLink................................FClient:TActionC...
 004BF918    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BF91B    mov         edx,dword ptr [eax]
 004BF91D    call        dword ptr [edx+50];TImage.GetEnabled
 004BF920    mov         ebx,eax
 004BF922    mov         eax,dword ptr [ebp-4]
 004BF925    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BF928    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BF92E    call        @AsClass
 004BF933    cmp         bl,byte ptr [eax+6A];TCustomAction.FEnabled:Boolean
>004BF936    je          004BF93C
 004BF938    xor         eax,eax
>004BF93A    jmp         004BF93E
 004BF93C    mov         al,1
 004BF93E    mov         byte ptr [ebp-5],al
 004BF941    mov         al,byte ptr [ebp-5]
 004BF944    pop         ebx
 004BF945    pop         ecx
 004BF946    pop         ecx
 004BF947    pop         ebp
 004BF948    ret
end;*}

//004BF94C
{*function sub_004BF94C:?;
begin
 004BF94C    push        ebp
 004BF94D    mov         ebp,esp
 004BF94F    add         esp,0FFFFFFF8
 004BF952    mov         dword ptr [ebp-4],eax
 004BF955    mov         eax,dword ptr [ebp-4]
 004BF958    call        00493A88
 004BF95D    test        al,al
>004BF95F    je          004BF980
 004BF961    mov         eax,dword ptr [ebp-4]
 004BF964    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BF967    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BF96D    call        @AsClass
 004BF972    mov         eax,dword ptr [eax+74];TCustomAction.FHelpContext:THelpContext
 004BF975    mov         edx,dword ptr [ebp-4]
 004BF978    mov         edx,dword ptr [edx+18];TActionClientLink.................................FClient:TAction...
 004BF97B    cmp         eax,dword ptr [edx+64];TActionClientItem.HelpContext:THelpContext
>004BF97E    je          004BF984
 004BF980    xor         eax,eax
>004BF982    jmp         004BF986
 004BF984    mov         al,1
 004BF986    mov         byte ptr [ebp-5],al
 004BF989    mov         al,byte ptr [ebp-5]
 004BF98C    pop         ecx
 004BF98D    pop         ecx
 004BF98E    pop         ebp
 004BF98F    ret
end;*}

//004BF990
{*function sub_004BF990:?;
begin
 004BF990    push        ebp
 004BF991    mov         ebp,esp
 004BF993    add         esp,0FFFFFFF8
 004BF996    mov         dword ptr [ebp-4],eax
 004BF999    mov         eax,dword ptr [ebp-4]
 004BF99C    call        00493AD0
 004BF9A1    test        al,al
>004BF9A3    je          004BF9DB
 004BF9A5    mov         eax,dword ptr [ebp-4]
 004BF9A8    mov         eax,dword ptr [eax+18];TActionClientLink..................................FClient:TActio...
 004BF9AB    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004BF9AF    je          004BF9DB
 004BF9B1    mov         eax,dword ptr [ebp-4]
 004BF9B4    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BF9B7    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BF9BD    call        @AsClass
 004BF9C2    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 004BF9C5    mov         eax,dword ptr [ebp-4]
 004BF9C8    mov         eax,dword ptr [eax+18];TActionClientLink...................................FClient:TActi...
 004BF9CB    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BF9CE    mov         eax,dword ptr [eax+80];TCustomActionControl.Hint:String
 004BF9D4    call        @LStrCmp
>004BF9D9    je          004BF9DF
 004BF9DB    xor         eax,eax
>004BF9DD    jmp         004BF9E1
 004BF9DF    mov         al,1
 004BF9E1    mov         byte ptr [ebp-5],al
 004BF9E4    mov         al,byte ptr [ebp-5]
 004BF9E7    pop         ecx
 004BF9E8    pop         ecx
 004BF9E9    pop         ebp
 004BF9EA    ret
end;*}

//004BF9EC
{*function sub_004BF9EC:?;
begin
 004BF9EC    push        ebp
 004BF9ED    mov         ebp,esp
 004BF9EF    add         esp,0FFFFFFF8
 004BF9F2    mov         dword ptr [ebp-4],eax
 004BF9F5    mov         eax,dword ptr [ebp-4]
 004BF9F8    call        00493AF4
 004BF9FD    test        al,al
>004BF9FF    je          004BFA37
 004BFA01    mov         eax,dword ptr [ebp-4]
 004BFA04    mov         eax,dword ptr [eax+18];TActionClientLink....................................FClient:TAct...
 004BFA07    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004BFA0B    je          004BFA37
 004BFA0D    mov         eax,dword ptr [ebp-4]
 004BFA10    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BFA13    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BFA19    call        @AsClass
 004BFA1E    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 004BFA21    mov         eax,dword ptr [ebp-4]
 004BFA24    mov         eax,dword ptr [eax+18];TActionClientLink.....................................FClient:TAc...
 004BFA27    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFA2A    mov         eax,dword ptr [eax+80];TCustomActionControl.Hint:String
 004BFA30    call        @LStrCmp
>004BFA35    je          004BFA3B
 004BFA37    xor         eax,eax
>004BFA39    jmp         004BFA3D
 004BFA3B    mov         al,1
 004BFA3D    mov         byte ptr [ebp-5],al
 004BFA40    mov         al,byte ptr [ebp-5]
 004BFA43    pop         ecx
 004BFA44    pop         ecx
 004BFA45    pop         ebp
 004BFA46    ret
end;*}

//004BFA48
{*function sub_004BFA48:?;
begin
 004BFA48    push        ebp
 004BFA49    mov         ebp,esp
 004BFA4B    add         esp,0FFFFFFF8
 004BFA4E    mov         dword ptr [ebp-4],eax
 004BFA51    mov         eax,dword ptr [ebp-4]
 004BFA54    call        0042AFA0
 004BFA59    test        al,al
>004BFA5B    je          004BFA83
 004BFA5D    mov         eax,dword ptr [ebp-4]
 004BFA60    mov         eax,dword ptr [eax+18];TActionClientLink......................................FClient:TA...
 004BFA63    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004BFA67    je          004BFA83
 004BFA69    mov         eax,dword ptr [ebp-4]
 004BFA6C    mov         eax,dword ptr [eax+18];TActionClientLink.......................................FClient:T...
 004BFA6F    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFA72    mov         eax,dword ptr [eax+120];TCustomActionControl.FOnClick:TNotifyEvent
 004BFA78    mov         edx,dword ptr [ebp-4]
 004BFA7B    mov         edx,dword ptr [edx+10];TActionClientLink.FAction:TBasicAction
 004BFA7E    cmp         eax,dword ptr [edx+40];TBasicAction.FOnExecute:TNotifyEvent
>004BFA81    je          004BFA87
 004BFA83    xor         eax,eax
>004BFA85    jmp         004BFA89
 004BFA87    mov         al,1
 004BFA89    mov         byte ptr [ebp-5],al
 004BFA8C    mov         al,byte ptr [ebp-5]
 004BFA8F    pop         ecx
 004BFA90    pop         ecx
 004BFA91    pop         ebp
 004BFA92    ret
end;*}

//004BFA94
{*function sub_004BFA94:?;
begin
 004BFA94    push        ebp
 004BFA95    mov         ebp,esp
 004BFA97    add         esp,0FFFFFFF8
 004BFA9A    mov         dword ptr [ebp-4],eax
 004BFA9D    mov         eax,dword ptr [ebp-4]
 004BFAA0    call        00493B18
 004BFAA5    test        al,al
>004BFAA7    je          004BFACD
 004BFAA9    mov         eax,dword ptr [ebp-4]
 004BFAAC    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BFAAF    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BFAB5    call        @AsClass
 004BFABA    mov         ax,word ptr [eax+84];TCustomAction.FShortCut:TShortCut
 004BFAC1    mov         edx,dword ptr [ebp-4]
 004BFAC4    mov         edx,dword ptr [edx+18];TActionClientLink........................................FClient:...
 004BFAC7    cmp         ax,word ptr [edx+48];TActionClientItem.ShortCut:TShortCut
>004BFACB    je          004BFAD1
 004BFACD    xor         eax,eax
>004BFACF    jmp         004BFAD3
 004BFAD1    mov         al,1
 004BFAD3    mov         byte ptr [ebp-5],al
 004BFAD6    mov         al,byte ptr [ebp-5]
 004BFAD9    pop         ecx
 004BFADA    pop         ecx
 004BFADB    pop         ebp
 004BFADC    ret
end;*}

//004BFAE0
{*function sub_004BFAE0:?;
begin
 004BFAE0    push        ebp
 004BFAE1    mov         ebp,esp
 004BFAE3    add         esp,0FFFFFFF8
 004BFAE6    mov         dword ptr [ebp-4],eax
 004BFAE9    mov         eax,dword ptr [ebp-4]
 004BFAEC    call        00493B3C
 004BFAF1    test        al,al
>004BFAF3    je          004BFB17
 004BFAF5    mov         eax,dword ptr [ebp-4]
 004BFAF8    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004BFAFB    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BFB01    call        @AsClass
 004BFB06    mov         al,byte ptr [eax+86];TCustomAction.FVisible:Boolean
 004BFB0C    mov         edx,dword ptr [ebp-4]
 004BFB0F    mov         edx,dword ptr [edx+18];TActionClientLink.........................................FClient...
 004BFB12    cmp         al,byte ptr [edx+30];TActionClientItem.Visible:Boolean
>004BFB15    je          004BFB1B
 004BFB17    xor         eax,eax
>004BFB19    jmp         004BFB1D
 004BFB1B    mov         al,1
 004BFB1D    mov         byte ptr [ebp-5],al
 004BFB20    mov         al,byte ptr [ebp-5]
 004BFB23    pop         ecx
 004BFB24    pop         ecx
 004BFB25    pop         ebp
 004BFB26    ret
end;*}

//004BFB28
{*procedure sub_004BFB28(?:?);
begin
 004BFB28    push        ebp
 004BFB29    mov         ebp,esp
 004BFB2B    add         esp,0FFFFFFF8
 004BFB2E    mov         dword ptr [ebp-8],edx
 004BFB31    mov         dword ptr [ebp-4],eax
 004BFB34    mov         eax,dword ptr [ebp-4]
 004BFB37    mov         edx,dword ptr [eax]
 004BFB39    call        dword ptr [edx+20];TActionClientLink.sub_004BF818
 004BFB3C    test        al,al
>004BFB3E    je          004BFB4E
 004BFB40    mov         edx,dword ptr [ebp-8]
 004BFB43    mov         eax,dword ptr [ebp-4]
 004BFB46    mov         eax,dword ptr [eax+18];TActionClientLink..........................................FClien...
 004BFB49    call        TActionClientItem.SetCaption
 004BFB4E    pop         ecx
 004BFB4F    pop         ecx
 004BFB50    pop         ebp
 004BFB51    ret
end;*}

//004BFB54
{*procedure sub_004BFB54(?:?);
begin
 004BFB54    push        ebp
 004BFB55    mov         ebp,esp
 004BFB57    add         esp,0FFFFFFF8
 004BFB5A    mov         byte ptr [ebp-5],dl
 004BFB5D    mov         dword ptr [ebp-4],eax
 004BFB60    mov         dl,byte ptr [ebp-5]
 004BFB63    mov         eax,dword ptr [ebp-4]
 004BFB66    call        00493B80
 004BFB6B    mov         eax,dword ptr [ebp-4]
 004BFB6E    mov         edx,dword ptr [eax]
 004BFB70    call        dword ptr [edx+24];TActionClientLink.sub_00493A1C
 004BFB73    test        al,al
>004BFB75    je          004BFB91
 004BFB77    mov         eax,dword ptr [ebp-4]
 004BFB7A    mov         eax,dword ptr [eax+18];TActionClientLink...........................................FClie...
 004BFB7D    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004BFB81    je          004BFB91
 004BFB83    mov         eax,dword ptr [ebp-4]
 004BFB86    mov         eax,dword ptr [eax+18];TActionClientLink............................................FCli...
 004BFB89    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFB8C    mov         edx,dword ptr [eax]
 004BFB8E    call        dword ptr [edx+7C];TCustomActionControl.sub_00483F08
 004BFB91    pop         ecx
 004BFB92    pop         ecx
 004BFB93    pop         ebp
 004BFB94    ret
end;*}

//004BFB98
{*procedure sub_004BFB98(?:?);
begin
 004BFB98    push        ebp
 004BFB99    mov         ebp,esp
 004BFB9B    add         esp,0FFFFFFF8
 004BFB9E    mov         byte ptr [ebp-5],dl
 004BFBA1    mov         dword ptr [ebp-4],eax
 004BFBA4    mov         eax,dword ptr [ebp-4]
 004BFBA7    mov         edx,dword ptr [eax]
 004BFBA9    call        dword ptr [edx+28];TActionClientLink.sub_004BF8F0
 004BFBAC    test        al,al
>004BFBAE    je          004BFBC1
 004BFBB0    mov         eax,dword ptr [ebp-4]
 004BFBB3    mov         eax,dword ptr [eax+18];TActionClientLink.............................................FCl...
 004BFBB6    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFBB9    mov         dl,byte ptr [ebp-5]
 004BFBBC    mov         ecx,dword ptr [eax]
 004BFBBE    call        dword ptr [ecx+64];TImage.SetEnabled
 004BFBC1    pop         ecx
 004BFBC2    pop         ecx
 004BFBC3    pop         ebp
 004BFBC4    ret
end;*}

//004BFBC8
{*procedure sub_004BFBC8(?:?);
begin
 004BFBC8    push        ebp
 004BFBC9    mov         ebp,esp
 004BFBCB    add         esp,0FFFFFFF8
 004BFBCE    mov         dword ptr [ebp-8],edx
 004BFBD1    mov         dword ptr [ebp-4],eax
 004BFBD4    mov         eax,dword ptr [ebp-4]
 004BFBD7    mov         edx,dword ptr [eax]
 004BFBD9    call        dword ptr [edx+30];TActionClientLink.sub_004BF94C
 004BFBDC    test        al,al
>004BFBDE    je          004BFBEC
 004BFBE0    mov         eax,dword ptr [ebp-4]
 004BFBE3    mov         eax,dword ptr [eax+18];TActionClientLink..............................................FC...
 004BFBE6    mov         edx,dword ptr [ebp-8]
 004BFBE9    mov         dword ptr [eax+64],edx;TActionClientItem.HelpContext:THelpContext
 004BFBEC    pop         ecx
 004BFBED    pop         ecx
 004BFBEE    pop         ebp
 004BFBEF    ret
end;*}

//004BFBF0
{*procedure sub_004BFBF0(?:?);
begin
 004BFBF0    push        ebp
 004BFBF1    mov         ebp,esp
 004BFBF3    add         esp,0FFFFFFF8
 004BFBF6    mov         dword ptr [ebp-8],edx
 004BFBF9    mov         dword ptr [ebp-4],eax
 004BFBFC    mov         eax,dword ptr [ebp-4]
 004BFBFF    mov         edx,dword ptr [eax]
 004BFC01    call        dword ptr [edx+38];TActionClientLink.sub_004BF990
 004BFC04    test        al,al
>004BFC06    je          004BFC1E
 004BFC08    mov         eax,dword ptr [ebp-4]
 004BFC0B    mov         eax,dword ptr [eax+18];TActionClientLink...............................................F...
 004BFC0E    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFC11    add         eax,80;TCustomActionControl.Hint:String
 004BFC16    mov         edx,dword ptr [ebp-8]
 004BFC19    call        @LStrAsg
 004BFC1E    pop         ecx
 004BFC1F    pop         ecx
 004BFC20    pop         ebp
 004BFC21    ret
end;*}

//004BFC24
{*procedure sub_004BFC24(?:?);
begin
 004BFC24    push        ebp
 004BFC25    mov         ebp,esp
 004BFC27    add         esp,0FFFFFFF8
 004BFC2A    mov         dword ptr [ebp-8],edx
 004BFC2D    mov         dword ptr [ebp-4],eax
 004BFC30    mov         eax,dword ptr [ebp-4]
 004BFC33    mov         edx,dword ptr [eax]
 004BFC35    call        dword ptr [edx+3C];TActionClientLink.sub_004BF9EC
 004BFC38    test        al,al
>004BFC3A    je          004BFC4A
 004BFC3C    mov         edx,dword ptr [ebp-8]
 004BFC3F    mov         eax,dword ptr [ebp-4]
 004BFC42    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 004BFC45    call        TActionClientItem.SetImageIndex
 004BFC4A    pop         ecx
 004BFC4B    pop         ecx
 004BFC4C    pop         ebp
 004BFC4D    ret
end;*}

//004BFC50
{*procedure sub_004BFC50(?:?; ?:?);
begin
 004BFC50    push        ebp
 004BFC51    mov         ebp,esp
 004BFC53    push        ecx
 004BFC54    mov         dword ptr [ebp-4],eax
 004BFC57    mov         eax,dword ptr [ebp-4]
 004BFC5A    mov         edx,dword ptr [eax]
 004BFC5C    call        dword ptr [edx+8];TActionClientLink.sub_004BFA48
 004BFC5F    test        al,al
>004BFC61    je          004BFC7E
 004BFC63    mov         eax,dword ptr [ebp-4]
 004BFC66    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 004BFC69    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFC6C    mov         edx,dword ptr [ebp+8]
 004BFC6F    mov         dword ptr [eax+120],edx;TCustomActionControl.FOnClick:TNotifyEvent
 004BFC75    mov         edx,dword ptr [ebp+0C]
 004BFC78    mov         dword ptr [eax+124],edx;TCustomActionControl.?f124:TMessageForm
 004BFC7E    pop         ecx
 004BFC7F    pop         ebp
 004BFC80    ret         8
end;*}

//004BFC84
{*procedure sub_004BFC84(?:?);
begin
 004BFC84    push        ebp
 004BFC85    mov         ebp,esp
 004BFC87    add         esp,0FFFFFFF8
 004BFC8A    mov         word ptr [ebp-6],dx
 004BFC8E    mov         dword ptr [ebp-4],eax
 004BFC91    mov         eax,dword ptr [ebp-4]
 004BFC94    mov         edx,dword ptr [eax]
 004BFC96    call        dword ptr [edx+40];TActionClientLink.sub_004BFA94
 004BFC99    test        al,al
>004BFC9B    je          004BFCAC
 004BFC9D    mov         dx,word ptr [ebp-6]
 004BFCA1    mov         eax,dword ptr [ebp-4]
 004BFCA4    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 004BFCA7    call        TActionClientItem.SetShortCut
 004BFCAC    pop         ecx
 004BFCAD    pop         ecx
 004BFCAE    pop         ebp
 004BFCAF    ret
end;*}

//004BFCB0
{*procedure sub_004BFCB0(?:?);
begin
 004BFCB0    push        ebp
 004BFCB1    mov         ebp,esp
 004BFCB3    add         esp,0FFFFFFF8
 004BFCB6    mov         byte ptr [ebp-5],dl
 004BFCB9    mov         dword ptr [ebp-4],eax
 004BFCBC    mov         eax,dword ptr [ebp-4]
 004BFCBF    mov         edx,dword ptr [eax]
 004BFCC1    call        dword ptr [edx+44];TActionClientLink.sub_004BFAE0
 004BFCC4    test        al,al
>004BFCC6    je          004BFCD6
 004BFCC8    mov         dl,byte ptr [ebp-5]
 004BFCCB    mov         eax,dword ptr [ebp-4]
 004BFCCE    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 004BFCD1    mov         ecx,dword ptr [eax]
 004BFCD3    call        dword ptr [ecx+2C];TActionClientItem.sub_004C0AA8
 004BFCD6    pop         ecx
 004BFCD7    pop         ecx
 004BFCD8    pop         ebp
 004BFCD9    ret
end;*}

//004BFCDC
constructor sub_004BFCDC;
begin
{*
 004BFCDC    push        ebp
 004BFCDD    mov         ebp,esp
 004BFCDF    add         esp,0FFFFFFF4
 004BFCE2    test        dl,dl
>004BFCE4    je          004BFCEE
 004BFCE6    add         esp,0FFFFFFF0
 004BFCE9    call        @ClassCreate
 004BFCEE    mov         dword ptr [ebp-0C],ecx
 004BFCF1    mov         byte ptr [ebp-5],dl
 004BFCF4    mov         dword ptr [ebp-4],eax
 004BFCF7    mov         eax,dword ptr [ebp-4]
 004BFCFA    mov         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
 004BFD01    mov         ecx,dword ptr [ebp-0C]
 004BFD04    xor         edx,edx
 004BFD06    mov         eax,dword ptr [ebp-4]
 004BFD09    call        004BE1B8
 004BFD0E    mov         eax,dword ptr [ebp-4]
 004BFD11    mov         dword ptr [eax+58],0FFFFFFFF;TActionClientItem.ImageIndex:TImageIndex
 004BFD18    mov         eax,dword ptr [ebp-4]
 004BFD1B    xor         edx,edx
 004BFD1D    mov         dword ptr [eax+4C],edx;TActionClientItem.MergeIndex:TMergeRange
 004BFD20    mov         eax,dword ptr [ebp-4]
 004BFD23    mov         byte ptr [eax+51],1;TActionClientItem.ShowCaption:Boolean
 004BFD27    mov         eax,dword ptr [ebp-4]
 004BFD2A    mov         byte ptr [eax+61],1;TActionClientItem.ShowGlyph:Boolean
 004BFD2E    mov         eax,dword ptr [ebp-4]
 004BFD31    mov         byte ptr [eax+52],1;TActionClientItem.ShowShortCut:Boolean
 004BFD35    mov         eax,dword ptr [ebp-4]
 004BFD38    mov         byte ptr [eax+3C],1;TActionClientItem.FCheckUnused:Boolean
 004BFD3C    mov         eax,dword ptr [ebp-4]
 004BFD3F    xor         edx,edx
 004BFD41    mov         dword ptr [eax+44],edx;TActionClientItem.UsageCount:Integer
 004BFD44    mov         eax,dword ptr [ebp-4]
 004BFD47    xor         edx,edx
 004BFD49    mov         dword ptr [eax+5C],edx;TActionClientItem.LastSession:Integer
 004BFD4C    mov         eax,dword ptr [ebp-4]
 004BFD4F    cmp         byte ptr [ebp-5],0
>004BFD53    je          004BFD64
 004BFD55    call        @AfterConstruction
 004BFD5A    pop         dword ptr fs:[0]
 004BFD61    add         esp,0C
 004BFD64    mov         eax,dword ptr [ebp-4]
 004BFD67    mov         esp,ebp
 004BFD69    pop         ebp
 004BFD6A    ret
*}
end;

//004BFD6C
destructor TActionClientItem.Destroy;
begin
{*
 004BFD6C    push        ebp
 004BFD6D    mov         ebp,esp
 004BFD6F    add         esp,0FFFFFFF8
 004BFD72    call        @BeforeDestruction
 004BFD77    mov         byte ptr [ebp-5],dl
 004BFD7A    mov         dword ptr [ebp-4],eax
 004BFD7D    mov         eax,dword ptr [ebp-4]
 004BFD80    add         eax,38
 004BFD83    call        FreeAndNil
 004BFD88    mov         eax,dword ptr [ebp-4]
 004BFD8B    add         eax,40
 004BFD8E    call        FreeAndNil
 004BFD93    mov         dl,byte ptr [ebp-5]
 004BFD96    and         dl,0FC
 004BFD99    mov         eax,dword ptr [ebp-4]
 004BFD9C    call        TActionClient.Destroy
 004BFDA1    cmp         byte ptr [ebp-5],0
>004BFDA5    jle         004BFDAF
 004BFDA7    mov         eax,dword ptr [ebp-4]
 004BFDAA    call        @ClassDestroy
 004BFDAF    pop         ecx
 004BFDB0    pop         ecx
 004BFDB1    pop         ebp
 004BFDB2    ret
*}
end;

//004BFDB4
{*procedure TActionClientItem.sub_004BFDB4(?:?; ?:?);
begin
 004BFDB4    push        ebp
 004BFDB5    mov         ebp,esp
 004BFDB7    add         esp,0FFFFFFF0
 004BFDBA    push        ebx
 004BFDBB    xor         ebx,ebx
 004BFDBD    mov         dword ptr [ebp-10],ebx
 004BFDC0    mov         byte ptr [ebp-9],cl
 004BFDC3    mov         dword ptr [ebp-8],edx
 004BFDC6    mov         dword ptr [ebp-4],eax
 004BFDC9    xor         eax,eax
 004BFDCB    push        ebp
 004BFDCC    push        4BFF34
 004BFDD1    push        dword ptr fs:[eax]
 004BFDD4    mov         dword ptr fs:[eax],esp
 004BFDD7    mov         eax,dword ptr [ebp-8]
 004BFDDA    mov         edx,dword ptr ds:[492C28];TCustomAction
 004BFDE0    call        @IsClass
 004BFDE5    test        al,al
>004BFDE7    je          004BFF1E
 004BFDED    mov         eax,dword ptr [ebp-4]
 004BFDF0    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004BFDF4    je          004BFE7C
 004BFDFA    cmp         byte ptr [ebp-9],0
>004BFDFE    je          004BFE0F
 004BFE00    mov         eax,dword ptr [ebp-4]
 004BFE03    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFE06    mov         edx,dword ptr [eax]
 004BFE08    call        dword ptr [edx+50];TImage.GetEnabled
 004BFE0B    cmp         al,1
>004BFE0D    jne         004BFE20
 004BFE0F    mov         eax,dword ptr [ebp-8]
 004BFE12    mov         dl,byte ptr [eax+6A]
 004BFE15    mov         eax,dword ptr [ebp-4]
 004BFE18    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFE1B    mov         ecx,dword ptr [eax]
 004BFE1D    call        dword ptr [ecx+64];TImage.SetEnabled
 004BFE20    cmp         byte ptr [ebp-9],0
>004BFE24    je          004BFE35
 004BFE26    mov         eax,dword ptr [ebp-4]
 004BFE29    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFE2C    cmp         dword ptr [eax+80],0;TCustomActionControl.Hint:String
>004BFE33    jne         004BFE4B
 004BFE35    mov         eax,dword ptr [ebp-4]
 004BFE38    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFE3B    add         eax,80;TCustomActionControl.Hint:String
 004BFE40    mov         edx,dword ptr [ebp-8]
 004BFE43    mov         edx,dword ptr [edx+7C]
 004BFE46    call        @LStrAsg
 004BFE4B    cmp         byte ptr [ebp-9],0
>004BFE4F    je          004BFE61
 004BFE51    mov         eax,dword ptr [ebp-4]
 004BFE54    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFE57    cmp         word ptr [eax+122],0;TCustomActionControl.?f122:word
>004BFE5F    jne         004BFE7C
 004BFE61    mov         eax,dword ptr [ebp-4]
 004BFE64    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004BFE67    mov         edx,dword ptr [ebp-8]
 004BFE6A    mov         ecx,dword ptr [edx+40]
 004BFE6D    mov         dword ptr [eax+120],ecx;TCustomActionControl.FOnClick:TNotifyEvent
 004BFE73    mov         ecx,dword ptr [edx+44]
 004BFE76    mov         dword ptr [eax+124],ecx;TCustomActionControl.?f124:TMessageForm
 004BFE7C    cmp         byte ptr [ebp-9],0
>004BFE80    je          004BFE93
 004BFE82    lea         edx,[ebp-10]
 004BFE85    mov         eax,dword ptr [ebp-4]
 004BFE88    call        TActionClientItem.GetCaption
 004BFE8D    cmp         dword ptr [ebp-10],0
>004BFE91    jne         004BFEA1
 004BFE93    mov         eax,dword ptr [ebp-8]
 004BFE96    mov         edx,dword ptr [eax+64]
 004BFE99    mov         eax,dword ptr [ebp-4]
 004BFE9C    call        TActionClientItem.SetCaption
 004BFEA1    cmp         byte ptr [ebp-9],0
>004BFEA5    je          004BFEB0
 004BFEA7    mov         eax,dword ptr [ebp-4]
 004BFEAA    cmp         dword ptr [eax+58],0;TActionClientItem.ImageIndex:TImageIndex
>004BFEAE    jne         004BFEC1
 004BFEB0    mov         eax,dword ptr [ebp-8]
 004BFEB3    mov         edx,dword ptr [eax+80]
 004BFEB9    mov         eax,dword ptr [ebp-4]
 004BFEBC    call        TActionClientItem.SetImageIndex
 004BFEC1    cmp         byte ptr [ebp-9],0
>004BFEC5    je          004BFED1
 004BFEC7    mov         eax,dword ptr [ebp-4]
 004BFECA    cmp         word ptr [eax+48],0;TActionClientItem.ShortCut:TShortCut
>004BFECF    jne         004BFEE3
 004BFED1    mov         eax,dword ptr [ebp-8]
 004BFED4    mov         dx,word ptr [eax+84]
 004BFEDB    mov         eax,dword ptr [ebp-4]
 004BFEDE    call        TActionClientItem.SetShortCut
 004BFEE3    cmp         byte ptr [ebp-9],0
>004BFEE7    je          004BFEF2
 004BFEE9    mov         eax,dword ptr [ebp-4]
 004BFEEC    cmp         byte ptr [eax+30],1;TActionClientItem.Visible:Boolean
>004BFEF0    jne         004BFF03
 004BFEF2    mov         eax,dword ptr [ebp-8]
 004BFEF5    mov         dl,byte ptr [eax+86]
 004BFEFB    mov         eax,dword ptr [ebp-4]
 004BFEFE    mov         ecx,dword ptr [eax]
 004BFF00    call        dword ptr [ecx+2C];TActionClientItem.sub_004C0AA8
 004BFF03    cmp         byte ptr [ebp-9],0
>004BFF07    je          004BFF12
 004BFF09    mov         eax,dword ptr [ebp-4]
 004BFF0C    cmp         dword ptr [eax+64],0;TActionClientItem.HelpContext:THelpContext
>004BFF10    jne         004BFF1E
 004BFF12    mov         eax,dword ptr [ebp-8]
 004BFF15    mov         eax,dword ptr [eax+74]
 004BFF18    mov         edx,dword ptr [ebp-4]
 004BFF1B    mov         dword ptr [edx+64],eax;TActionClientItem.HelpContext:THelpContext
 004BFF1E    xor         eax,eax
 004BFF20    pop         edx
 004BFF21    pop         ecx
 004BFF22    pop         ecx
 004BFF23    mov         dword ptr fs:[eax],edx
 004BFF26    push        4BFF3B
 004BFF2B    lea         eax,[ebp-10]
 004BFF2E    call        @LStrClr
 004BFF33    ret
>004BFF34    jmp         @HandleFinally
>004BFF39    jmp         004BFF2B
 004BFF3B    pop         ebx
 004BFF3C    mov         esp,ebp
 004BFF3E    pop         ebp
 004BFF3F    ret
end;*}

//004BFF40
{*procedure sub_004BFF40(?:?);
begin
 004BFF40    push        ebp
 004BFF41    mov         ebp,esp
 004BFF43    add         esp,0FFFFFFF4
 004BFF46    xor         ecx,ecx
 004BFF48    mov         dword ptr [ebp-0C],ecx
 004BFF4B    mov         dword ptr [ebp-8],edx
 004BFF4E    mov         dword ptr [ebp-4],eax
 004BFF51    xor         eax,eax
 004BFF53    push        ebp
 004BFF54    push        4C00A2
 004BFF59    push        dword ptr fs:[eax]
 004BFF5C    mov         dword ptr fs:[eax],esp
 004BFF5F    mov         edx,dword ptr [ebp-8]
 004BFF62    mov         eax,dword ptr [ebp-4]
 004BFF65    call        004BE338
 004BFF6A    mov         eax,dword ptr [ebp-8]
 004BFF6D    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004BFF73    call        @IsClass
 004BFF78    test        al,al
>004BFF7A    je          004BFF90
 004BFF7C    mov         eax,dword ptr [ebp-4]
 004BFF7F    cmp         dword ptr [eax+4],0;TActionClientItem.FCollection:TCollection
>004BFF83    je          004BFF90
 004BFF85    mov         eax,dword ptr [ebp-4]
 004BFF88    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 004BFF8B    mov         edx,dword ptr [eax]
 004BFF8D    call        dword ptr [edx+20];TCollection.sub_00421428
 004BFF90    xor         eax,eax
 004BFF92    push        ebp
 004BFF93    push        4C0085
 004BFF98    push        dword ptr fs:[eax]
 004BFF9B    mov         dword ptr fs:[eax],esp
 004BFF9E    mov         eax,dword ptr [ebp-8]
 004BFFA1    call        TActionClientItem.GetAction
 004BFFA6    mov         edx,eax
 004BFFA8    mov         eax,dword ptr [ebp-4]
 004BFFAB    call        TActionClientItem.SetAction
 004BFFB0    lea         edx,[ebp-0C]
 004BFFB3    mov         eax,dword ptr [ebp-8]
 004BFFB6    call        TActionClientItem.GetCaption
 004BFFBB    mov         edx,dword ptr [ebp-0C]
 004BFFBE    mov         eax,dword ptr [ebp-4]
 004BFFC1    call        TActionClientItem.SetCaption
 004BFFC6    mov         eax,dword ptr [ebp-8]
 004BFFC9    mov         eax,dword ptr [eax+64]
 004BFFCC    mov         edx,dword ptr [ebp-4]
 004BFFCF    mov         dword ptr [edx+64],eax;TActionClientItem.HelpContext:THelpContext
 004BFFD2    mov         eax,dword ptr [ebp-8]
 004BFFD5    mov         edx,dword ptr [eax+58]
 004BFFD8    mov         eax,dword ptr [ebp-4]
 004BFFDB    call        TActionClientItem.SetImageIndex
 004BFFE0    mov         eax,dword ptr [ebp-8]
 004BFFE3    mov         edx,dword ptr [eax+4C]
 004BFFE6    mov         eax,dword ptr [ebp-4]
 004BFFE9    call        TActionClientItem.SetMergeIndex
 004BFFEE    mov         eax,dword ptr [ebp-8]
 004BFFF1    mov         edx,dword ptr [eax+5C]
 004BFFF4    mov         eax,dword ptr [ebp-4]
 004BFFF7    call        TActionClientItem.SetLastSession
 004BFFFC    mov         eax,dword ptr [ebp-8]
 004BFFFF    mov         dl,byte ptr [eax+51]
 004C0002    mov         eax,dword ptr [ebp-4]
 004C0005    call        TActionClientItem.SetShowCaption
 004C000A    mov         eax,dword ptr [ebp-8]
 004C000D    mov         dl,byte ptr [eax+61]
 004C0010    mov         eax,dword ptr [ebp-4]
 004C0013    call        TActionClientItem.SetShowGlyph
 004C0018    mov         eax,dword ptr [ebp-8]
 004C001B    mov         dl,byte ptr [eax+52]
 004C001E    mov         eax,dword ptr [ebp-4]
 004C0021    call        TActionClientItem.SetShowShortCut
 004C0026    mov         eax,dword ptr [ebp-8]
 004C0029    mov         dx,word ptr [eax+48]
 004C002D    mov         eax,dword ptr [ebp-4]
 004C0030    call        TActionClientItem.SetShortCut
 004C0035    mov         eax,dword ptr [ebp-8]
 004C0038    mov         edx,dword ptr [eax+44]
 004C003B    mov         eax,dword ptr [ebp-4]
 004C003E    call        TActionClientItem.SetUsageCount
 004C0043    mov         eax,dword ptr [ebp-8]
 004C0046    cmp         dword ptr [eax+2C],0
>004C004A    je          004C0063
 004C004C    mov         eax,dword ptr [ebp-8]
 004C004F    call        TActionClient.GetItems
 004C0054    push        eax
 004C0055    mov         eax,dword ptr [ebp-4]
 004C0058    call        TActionClient.GetItems
 004C005D    pop         edx
 004C005E    mov         ecx,dword ptr [eax]
 004C0060    call        dword ptr [ecx+8]
 004C0063    xor         eax,eax
 004C0065    pop         edx
 004C0066    pop         ecx
 004C0067    pop         ecx
 004C0068    mov         dword ptr fs:[eax],edx
 004C006B    push        4C008C
 004C0070    mov         eax,dword ptr [ebp-4]
 004C0073    cmp         dword ptr [eax+4],0;TActionClientItem.FCollection:TCollection
>004C0077    je          004C0084
 004C0079    mov         eax,dword ptr [ebp-4]
 004C007C    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 004C007F    mov         edx,dword ptr [eax]
 004C0081    call        dword ptr [edx+24];TCollection.sub_004214C0
 004C0084    ret
>004C0085    jmp         @HandleFinally
>004C008A    jmp         004C0070
 004C008C    xor         eax,eax
 004C008E    pop         edx
 004C008F    pop         ecx
 004C0090    pop         ecx
 004C0091    mov         dword ptr fs:[eax],edx
 004C0094    push        4C00A9
 004C0099    lea         eax,[ebp-0C]
 004C009C    call        @LStrClr
 004C00A1    ret
>004C00A2    jmp         @HandleFinally
>004C00A7    jmp         004C0099
 004C00A9    mov         esp,ebp
 004C00AB    pop         ebp
 004C00AC    ret
end;*}

//004C00B0
procedure sub_004C00B0;
begin
{*
 004C00B0    push        ebp
 004C00B1    mov         ebp,esp
 004C00B3    push        ecx
 004C00B4    mov         dword ptr [ebp-4],eax
 004C00B7    mov         eax,dword ptr [ebp-4]
 004C00BA    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C00BE    je          004C00FF
 004C00C0    mov         eax,dword ptr [ebp-4]
 004C00C3    mov         eax,dword ptr [eax+24];TActionClientItem.Color:TColor
 004C00C6    sub         eax,1FFFFFFF
>004C00CB    je          004C00DF
 004C00CD    dec         eax
>004C00CE    jne         004C00EE
 004C00D0    mov         dl,1
 004C00D2    mov         eax,dword ptr [ebp-4]
 004C00D5    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C00D8    call        TPanel.SetParentColor
>004C00DD    jmp         004C00FF
 004C00DF    mov         dl,1
 004C00E1    mov         eax,dword ptr [ebp-4]
 004C00E4    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C00E7    call        004C5FF4
>004C00EC    jmp         004C00FF
 004C00EE    mov         eax,dword ptr [ebp-4]
 004C00F1    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 004C00F4    mov         eax,dword ptr [ebp-4]
 004C00F7    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C00FA    call        TPanel.SetColor
 004C00FF    pop         ecx
 004C0100    pop         ebp
 004C0101    ret
*}
end;

//004C0104
{*procedure sub_004C0104(?:?; ?:?);
begin
 004C0104    push        ebp
 004C0105    mov         ebp,esp
 004C0107    add         esp,0FFFFFFF8
 004C010A    push        esi
 004C010B    mov         dword ptr [ebp-8],edx
 004C010E    mov         dword ptr [ebp-4],eax
 004C0111    mov         eax,dword ptr [ebp-4]
 004C0114    call        TActionClientItem.GetAction
 004C0119    cmp         eax,dword ptr [ebp-8]
>004C011C    jne         004C012F
 004C011E    mov         cl,1
 004C0120    mov         edx,dword ptr [ebp-8]
 004C0123    mov         eax,dword ptr [ebp-4]
 004C0126    mov         si,0FFFD
 004C012A    call        @CallDynaInst
 004C012F    pop         esi
 004C0130    pop         ecx
 004C0131    pop         ecx
 004C0132    pop         ebp
 004C0133    ret
end;*}

//004C0134
{*function sub_004C0134(?:TActionClientItem):?;
begin
 004C0134    push        ebp
 004C0135    mov         ebp,esp
 004C0137    add         esp,0FFFFFFF8
 004C013A    mov         dword ptr [ebp-4],eax
 004C013D    mov         eax,dword ptr [ebp-4]
 004C0140    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 004C0143    mov         dword ptr [ebp-8],eax
 004C0146    mov         eax,dword ptr [ebp-8]
 004C0149    pop         ecx
 004C014A    pop         ecx
 004C014B    pop         ebp
 004C014C    ret
end;*}

//004C0150
procedure TActionClientItem.sub_004C0150;
begin
{*
 004C0150    push        ebp
 004C0151    mov         ebp,esp
 004C0153    add         esp,0FFFFFFF8
 004C0156    mov         dword ptr [ebp-4],eax
 004C0159    mov         eax,[004BB128];TActionClientLink
 004C015E    mov         dword ptr [ebp-8],eax
 004C0161    mov         eax,dword ptr [ebp-8]
 004C0164    pop         ecx
 004C0165    pop         ecx
 004C0166    pop         ebp
 004C0167    ret
*}
end;

//004C0168
{*function TActionClientItem.GetAction:?;
begin
 004C0168    push        ebp
 004C0169    mov         ebp,esp
 004C016B    add         esp,0FFFFFFF8
 004C016E    mov         dword ptr [ebp-4],eax
 004C0171    xor         eax,eax
 004C0173    mov         dword ptr [ebp-8],eax
 004C0176    mov         eax,dword ptr [ebp-4]
 004C0179    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>004C017D    je          004C018B
 004C017F    mov         eax,dword ptr [ebp-4]
 004C0182    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 004C0185    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 004C0188    mov         dword ptr [ebp-8],eax
 004C018B    mov         eax,dword ptr [ebp-8]
 004C018E    pop         ecx
 004C018F    pop         ecx
 004C0190    pop         ebp
 004C0191    ret
end;*}

//004C0194
{*procedure TActionClientItem.GetCaption(?:?);
begin
 004C0194    push        ebp
 004C0195    mov         ebp,esp
 004C0197    add         esp,0FFFFFFF0
 004C019A    mov         dword ptr [ebp-8],edx
 004C019D    mov         dword ptr [ebp-4],eax
 004C01A0    cmp         dword ptr ds:[56CB8C],0;gvar_0056CB8C
>004C01A7    je          004C01E8
 004C01A9    mov         eax,dword ptr [ebp-4]
 004C01AC    mov         eax,dword ptr [eax+20];TActionClientItem.FCaption:String
 004C01AF    call        @LStrLen
 004C01B4    test        eax,eax
>004C01B6    jne         004C01E8
 004C01B8    mov         eax,dword ptr [ebp-4]
 004C01BB    call        TActionClientItem.GetAction
 004C01C0    test        eax,eax
>004C01C2    jne         004C01E8
 004C01C4    mov         eax,dword ptr [ebp-8]
 004C01C7    push        eax
 004C01C8    mov         eax,dword ptr [ebp-4]
 004C01CB    call        TCollectionItem.GetIndex
 004C01D0    mov         dword ptr [ebp-10],eax
 004C01D3    mov         byte ptr [ebp-0C],0
 004C01D7    lea         edx,[ebp-10]
 004C01DA    xor         ecx,ecx
 004C01DC    mov         eax,4C0204;'ActionClientItem%d'
 004C01E1    call        0040D630
>004C01E6    jmp         004C01F6
 004C01E8    mov         eax,dword ptr [ebp-8]
 004C01EB    mov         edx,dword ptr [ebp-4]
 004C01EE    mov         edx,dword ptr [edx+20];TActionClientItem.FCaption:String
 004C01F1    call        @LStrAsg
 004C01F6    mov         esp,ebp
 004C01F8    pop         ebp
 004C01F9    ret
end;*}

//004C0218
{*procedure sub_004C0218(?:?);
begin
 004C0218    push        ebp
 004C0219    mov         ebp,esp
 004C021B    add         esp,0FFFFFFF0
 004C021E    xor         ecx,ecx
 004C0220    mov         dword ptr [ebp-10],ecx
 004C0223    mov         dword ptr [ebp-8],edx
 004C0226    mov         dword ptr [ebp-4],eax
 004C0229    xor         eax,eax
 004C022B    push        ebp
 004C022C    push        4C02C6
 004C0231    push        dword ptr fs:[eax]
 004C0234    mov         dword ptr fs:[eax],esp
 004C0237    mov         edx,dword ptr [ebp-8]
 004C023A    mov         eax,dword ptr [ebp-4]
 004C023D    call        004210D8
 004C0242    lea         edx,[ebp-10]
 004C0245    mov         eax,dword ptr [ebp-4]
 004C0248    call        TActionClientItem.GetCaption
 004C024D    mov         eax,dword ptr [ebp-10]
 004C0250    call        @LStrLen
 004C0255    test        eax,eax
>004C0257    jle         004C0266
 004C0259    mov         edx,dword ptr [ebp-8]
 004C025C    mov         eax,dword ptr [ebp-4]
 004C025F    call        TActionClientItem.GetCaption
>004C0264    jmp         004C02B0
 004C0266    mov         eax,dword ptr [ebp-4]
 004C0269    call        TActionClientItem.GetAction
 004C026E    mov         edx,dword ptr ds:[492C28];TCustomAction
 004C0274    call        @IsClass
 004C0279    test        al,al
>004C027B    je          004C02B0
 004C027D    mov         eax,dword ptr [ebp-4]
 004C0280    call        TActionClientItem.GetAction
 004C0285    mov         edx,dword ptr ds:[492C28];TCustomAction
 004C028B    call        @AsClass
 004C0290    mov         dword ptr [ebp-0C],eax
 004C0293    mov         eax,dword ptr [ebp-0C]
 004C0296    mov         eax,dword ptr [eax+64];TCustomAction.FCaption:String
 004C0299    call        @LStrLen
 004C029E    test        eax,eax
>004C02A0    jle         004C02B0
 004C02A2    mov         eax,dword ptr [ebp-8]
 004C02A5    mov         edx,dword ptr [ebp-0C]
 004C02A8    mov         edx,dword ptr [edx+64];TCustomAction.FCaption:String
 004C02AB    call        @LStrAsg
 004C02B0    xor         eax,eax
 004C02B2    pop         edx
 004C02B3    pop         ecx
 004C02B4    pop         ecx
 004C02B5    mov         dword ptr fs:[eax],edx
 004C02B8    push        4C02CD
 004C02BD    lea         eax,[ebp-10]
 004C02C0    call        @LStrClr
 004C02C5    ret
>004C02C6    jmp         @HandleFinally
>004C02CB    jmp         004C02BD
 004C02CD    mov         esp,ebp
 004C02CF    pop         ebp
 004C02D0    ret
end;*}

//004C02D4
{*function sub_004C02D4(?:?; ?:?):?;
begin
 004C02D4    push        ebp
 004C02D5    mov         ebp,esp
 004C02D7    add         esp,0FFFFFFF8
 004C02DA    mov         dword ptr [ebp-4],eax
 004C02DD    cmp         dword ptr [ebp-4],0
>004C02E1    je          004C030E
 004C02E3    mov         eax,dword ptr [ebp-4]
 004C02E6    cmp         dword ptr [eax+38],0
>004C02EA    je          004C030E
 004C02EC    mov         eax,dword ptr [ebp+8]
 004C02EF    mov         eax,dword ptr [eax-4]
 004C02F2    cmp         dword ptr [eax+58],0FFFFFFFF
>004C02F6    jle         004C030E
 004C02F8    mov         eax,dword ptr [ebp-4]
 004C02FB    mov         eax,dword ptr [eax+38]
 004C02FE    call        00495384
 004C0303    mov         edx,dword ptr [ebp+8]
 004C0306    mov         edx,dword ptr [edx-4]
 004C0309    cmp         eax,dword ptr [edx+58]
>004C030C    jg          004C0312
 004C030E    xor         eax,eax
>004C0310    jmp         004C0314
 004C0312    mov         al,1
 004C0314    mov         byte ptr [ebp-5],al
 004C0317    mov         al,byte ptr [ebp-5]
 004C031A    pop         ecx
 004C031B    pop         ecx
 004C031C    pop         ebp
 004C031D    ret
end;*}

//004C0320
{*function sub_004C0320(?:TActionClientItem):?;
begin
 004C0320    push        ebp
 004C0321    mov         ebp,esp
 004C0323    add         esp,0FFFFFFF8
 004C0326    mov         dword ptr [ebp-4],eax
 004C0329    mov         eax,dword ptr [ebp-4]
 004C032C    cmp         byte ptr [eax+61],0
>004C0330    je          004C0356
 004C0332    mov         eax,dword ptr [ebp-4]
 004C0335    call        004BE698
 004C033A    test        eax,eax
>004C033C    je          004C0356
 004C033E    push        ebp
 004C033F    mov         eax,dword ptr [ebp-4]
 004C0342    call        004BE698
 004C0347    call        004BD7EC
 004C034C    call        004C02D4
 004C0351    pop         ecx
 004C0352    test        al,al
>004C0354    jne         004C037C
 004C0356    mov         eax,dword ptr [ebp-4]
 004C0359    call        TActionClientItem.GetAction
 004C035E    test        eax,eax
>004C0360    je          004C0378
 004C0362    push        ebp
 004C0363    mov         eax,dword ptr [ebp-4]
 004C0366    call        TActionClientItem.GetAction
 004C036B    mov         eax,dword ptr [eax+5C]
 004C036E    call        004C02D4
 004C0373    pop         ecx
 004C0374    test        al,al
>004C0376    jne         004C037C
 004C0378    xor         eax,eax
>004C037A    jmp         004C037E
 004C037C    mov         al,1
 004C037E    mov         byte ptr [ebp-5],al
 004C0381    mov         al,byte ptr [ebp-5]
 004C0384    pop         ecx
 004C0385    pop         ecx
 004C0386    pop         ebp
 004C0387    ret
end;*}

//004C0388
procedure sub_004C0388;
begin
{*
 004C0388    push        ebp
 004C0389    mov         ebp,esp
 004C038B    push        ecx
 004C038C    mov         dword ptr [ebp-4],eax
 004C038F    mov         eax,dword ptr [ebp-4]
 004C0392    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>004C0396    je          004C03A3
 004C0398    mov         eax,dword ptr [ebp-4]
 004C039B    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 004C039E    mov         edx,dword ptr [eax]
 004C03A0    call        dword ptr [edx+1C];TActionClientLink.sub_0042AFC0
 004C03A3    pop         ecx
 004C03A4    pop         ebp
 004C03A5    ret
*}
end;

//004C03A8
function TActionClientItem.IsStoredCaption(Value:String):Boolean;
begin
{*
 004C03A8    push        ebp
 004C03A9    mov         ebp,esp
 004C03AB    add         esp,0FFFFFFF4
 004C03AE    xor         edx,edx
 004C03B0    mov         dword ptr [ebp-0C],edx
 004C03B3    mov         dword ptr [ebp-4],eax
 004C03B6    xor         eax,eax
 004C03B8    push        ebp
 004C03B9    push        4C0429
 004C03BE    push        dword ptr fs:[eax]
 004C03C1    mov         dword ptr fs:[eax],esp
 004C03C4    mov         eax,dword ptr [ebp-4]
 004C03C7    call        TActionClientItem.GetAction
 004C03CC    test        eax,eax
>004C03CE    je          004C040F
 004C03D0    mov         eax,dword ptr [ebp-4]
 004C03D3    call        TActionClientItem.GetAction
 004C03D8    mov         edx,dword ptr ds:[492C28];TCustomAction
 004C03DE    call        @IsClass
 004C03E3    test        al,al
>004C03E5    je          004C040F
 004C03E7    lea         edx,[ebp-0C]
 004C03EA    mov         eax,dword ptr [ebp-4]
 004C03ED    call        TActionClientItem.GetCaption
 004C03F2    mov         eax,dword ptr [ebp-0C]
 004C03F5    push        eax
 004C03F6    mov         eax,dword ptr [ebp-4]
 004C03F9    call        TActionClientItem.GetAction
 004C03FE    mov         edx,dword ptr [eax+64]
 004C0401    pop         eax
 004C0402    call        0040BF44
 004C0407    test        eax,eax
 004C0409    setne       byte ptr [ebp-5]
>004C040D    jmp         004C0413
 004C040F    mov         byte ptr [ebp-5],1
 004C0413    xor         eax,eax
 004C0415    pop         edx
 004C0416    pop         ecx
 004C0417    pop         ecx
 004C0418    mov         dword ptr fs:[eax],edx
 004C041B    push        4C0430
 004C0420    lea         eax,[ebp-0C]
 004C0423    call        @LStrClr
 004C0428    ret
>004C0429    jmp         @HandleFinally
>004C042E    jmp         004C0420
 004C0430    mov         al,byte ptr [ebp-5]
 004C0433    mov         esp,ebp
 004C0435    pop         ebp
 004C0436    ret
*}
end;

//004C0438
procedure sub_004C0438;
begin
{*
 004C0438    push        ebp
 004C0439    mov         ebp,esp
 004C043B    push        ecx
 004C043C    mov         dword ptr [ebp-4],eax
 004C043F    mov         eax,dword ptr [ebp-4]
 004C0442    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0446    je          004C0456
 004C0448    mov         eax,dword ptr [ebp-4]
 004C044B    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C044E    mov         edx,dword ptr [eax]
 004C0450    call        dword ptr [edx+0DC];TCustomActionControl.sub_004C6D68
 004C0456    pop         ecx
 004C0457    pop         ebp
 004C0458    ret
*}
end;

//004C045C
procedure sub_004C045C(?:TActionClientItem);
begin
{*
 004C045C    push        ebp
 004C045D    mov         ebp,esp
 004C045F    add         esp,0FFFFFFF4
 004C0462    mov         dword ptr [ebp-4],eax
 004C0465    mov         eax,dword ptr [ebp-4]
 004C0468    cmp         dword ptr [eax+44],0FFFFFFFF
>004C046C    je          004C047B
 004C046E    mov         eax,dword ptr [ebp-4]
 004C0471    inc         dword ptr [eax+44]
 004C0474    mov         eax,dword ptr [ebp-4]
 004C0477    mov         byte ptr [eax+3C],1
 004C047B    mov         eax,dword ptr [ebp-4]
 004C047E    call        004C0134
 004C0483    call        004BD7EC
 004C0488    mov         eax,dword ptr [eax+6C]
 004C048B    mov         eax,dword ptr [eax+28]
 004C048E    mov         edx,dword ptr [ebp-4]
 004C0491    mov         dword ptr [edx+5C],eax
 004C0494    mov         eax,dword ptr [ebp-4]
 004C0497    call        004C0134
 004C049C    mov         eax,dword ptr [eax+20]
 004C049F    mov         dword ptr [ebp-0C],eax
 004C04A2    cmp         dword ptr [ebp-0C],0
>004C04A6    je          004C0549
 004C04AC    mov         eax,dword ptr [ebp-4]
 004C04AF    call        004C0134
 004C04B4    mov         eax,dword ptr [eax+20]
 004C04B7    call        004BE698
 004C04BC    mov         dword ptr [ebp-8],eax
>004C04BF    jmp         004C04CF
 004C04C1    mov         eax,dword ptr [ebp-8]
 004C04C4    mov         eax,dword ptr [eax+20]
 004C04C7    call        004BE698
 004C04CC    mov         dword ptr [ebp-8],eax
 004C04CF    cmp         dword ptr [ebp-8],0
>004C04D3    je          004C04E7
 004C04D5    mov         eax,dword ptr [ebp-8]
 004C04D8    mov         edx,dword ptr ds:[4BAE38];TActionBars
 004C04DE    call        @IsClass
 004C04E3    test        al,al
>004C04E5    je          004C04C1
 004C04E7    cmp         dword ptr [ebp-8],0
>004C04EB    je          004C04F9
 004C04ED    mov         eax,dword ptr [ebp-8]
 004C04F0    mov         eax,dword ptr [eax+28]
 004C04F3    mov         edx,dword ptr [ebp-4]
 004C04F6    mov         dword ptr [edx+5C],eax
 004C04F9    cmp         dword ptr [ebp-0C],0
>004C04FD    je          004C0549
 004C04FF    mov         eax,dword ptr [ebp-0C]
 004C0502    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004C0508    call        @IsClass
 004C050D    test        al,al
>004C050F    je          004C0535
 004C0511    mov         eax,dword ptr [ebp-0C]
 004C0514    mov         byte ptr [eax+3C],1
 004C0518    mov         eax,dword ptr [ebp-0C]
 004C051B    cmp         dword ptr [eax+44],0FFFFFFFF
>004C051F    je          004C0527
 004C0521    mov         eax,dword ptr [ebp-0C]
 004C0524    inc         dword ptr [eax+44]
 004C0527    mov         eax,dword ptr [ebp-4]
 004C052A    mov         edx,dword ptr [eax+5C]
 004C052D    mov         eax,dword ptr [ebp-0C]
 004C0530    call        TActionClientItem.SetLastSession
 004C0535    mov         eax,dword ptr [ebp-0C]
 004C0538    call        004BE698
 004C053D    mov         eax,dword ptr [eax+20]
 004C0540    mov         dword ptr [ebp-0C],eax
 004C0543    cmp         dword ptr [ebp-0C],0
>004C0547    jne         004C04FF
 004C0549    mov         esp,ebp
 004C054B    pop         ebp
 004C054C    ret
*}
end;

//004C0550
procedure TActionClientItem.SetAction(Value:TContainedAction);
begin
{*
 004C0550    push        ebp
 004C0551    mov         ebp,esp
 004C0553    add         esp,0FFFFFFF8
 004C0556    push        esi
 004C0557    mov         dword ptr [ebp-8],edx
 004C055A    mov         dword ptr [ebp-4],eax
 004C055D    cmp         dword ptr [ebp-8],0
>004C0561    jne         004C057B
 004C0563    mov         eax,dword ptr [ebp-4]
 004C0566    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 004C0569    call        TObject.Free
 004C056E    mov         eax,dword ptr [ebp-4]
 004C0571    xor         edx,edx
 004C0573    mov         dword ptr [eax+38],edx;TActionClientItem.FActionLink:TActionClientLink
>004C0576    jmp         004C0691
 004C057B    mov         eax,dword ptr [ebp-4]
 004C057E    call        TActionClientItem.GetAction
 004C0583    cmp         eax,dword ptr [ebp-8]
>004C0586    je          004C0691
 004C058C    mov         eax,dword ptr [ebp-4]
 004C058F    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0593    je          004C05A0
 004C0595    mov         eax,dword ptr [ebp-4]
 004C0598    add         eax,40;TActionClientItem.FControl:TCustomActionControl
 004C059B    call        FreeAndNil
 004C05A0    mov         eax,dword ptr [ebp-4]
 004C05A3    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>004C05A7    jne         004C05C3
 004C05A9    mov         eax,dword ptr [ebp-4]
 004C05AC    mov         si,0FFFC
 004C05B0    call        @CallDynaInst;TActionClientItem.sub_004C0150
 004C05B5    mov         ecx,dword ptr [ebp-4]
 004C05B8    mov         dl,1
 004C05BA    call        dword ptr [eax+14]
 004C05BD    mov         edx,dword ptr [ebp-4]
 004C05C0    mov         dword ptr [edx+38],eax;TActionClientItem.FActionLink:TActionClientLink
 004C05C3    mov         edx,dword ptr [ebp-8]
 004C05C6    mov         eax,dword ptr [ebp-4]
 004C05C9    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 004C05CC    mov         ecx,dword ptr [eax]
 004C05CE    call        dword ptr [ecx+0C];TActionClientLink.sub_0042AF54
 004C05D1    mov         eax,dword ptr [ebp-4]
 004C05D4    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 004C05D7    mov         edx,dword ptr [ebp-4]
 004C05DA    mov         dword ptr [eax+0C],edx;TActionClientLink.?fC:TSpeedButton
 004C05DD    mov         dword ptr [eax+8],4C0104;TActionClientLink.FOnChange:TNotifyEvent sub_004C0104
 004C05E4    mov         eax,dword ptr [ebp-8]
 004C05E7    test        byte ptr [eax+1C],1;TContainedAction.FComponentState:TComponentState
>004C05EB    jne         004C0607
 004C05ED    mov         eax,dword ptr [ebp-4]
 004C05F0    call        004C0134
 004C05F5    call        004BD7EC
 004C05FA    cmp         byte ptr [eax+90],0
>004C0601    jne         004C0607
 004C0603    xor         ecx,ecx
>004C0605    jmp         004C0609
 004C0607    mov         cl,1
 004C0609    mov         edx,dword ptr [ebp-8]
 004C060C    mov         eax,dword ptr [ebp-4]
 004C060F    mov         si,0FFFD
 004C0613    call        @CallDynaInst;TActionClientItem.sub_004BFDB4
 004C0618    mov         eax,dword ptr [ebp-4]
 004C061B    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 004C061E    call        004BD7EC
 004C0623    mov         edx,eax
 004C0625    mov         eax,dword ptr [ebp-8]
 004C0628    call        0042A2CC
 004C062D    mov         eax,dword ptr [ebp-4]
 004C0630    call        004C0134
 004C0635    cmp         dword ptr [eax+20],0
>004C0639    je          004C0691
 004C063B    mov         eax,dword ptr [ebp-4]
 004C063E    call        004C0134
 004C0643    mov         eax,dword ptr [eax+20]
 004C0646    cmp         dword ptr [eax+0C],0
>004C064A    je          004C0667
 004C064C    mov         eax,dword ptr [ebp-4]
 004C064F    call        004C0134
 004C0654    mov         eax,dword ptr [eax+20]
 004C0657    mov         eax,dword ptr [eax+0C]
 004C065A    mov         edx,dword ptr [ebp-4]
 004C065D    mov         ecx,dword ptr [eax]
 004C065F    call        dword ptr [ecx+0D4]
>004C0665    jmp         004C0691
 004C0667    mov         eax,dword ptr [ebp-4]
 004C066A    call        004C0134
 004C066F    mov         eax,dword ptr [eax+20]
 004C0672    cmp         dword ptr [eax+18],0
>004C0676    je          004C0691
 004C0678    mov         eax,dword ptr [ebp-4]
 004C067B    call        004C0134
 004C0680    mov         eax,dword ptr [eax+20]
 004C0683    mov         eax,dword ptr [eax+18]
 004C0686    mov         edx,dword ptr [ebp-4]
 004C0689    mov         ecx,dword ptr [eax]
 004C068B    call        dword ptr [ecx+0D4]
 004C0691    pop         esi
 004C0692    pop         ecx
 004C0693    pop         ecx
 004C0694    pop         ebp
 004C0695    ret
*}
end;

//004C0698
procedure TActionClientItem.SetCaption(Value:AnsiString);
begin
{*
 004C0698    push        ebp
 004C0699    mov         ebp,esp
 004C069B    add         esp,0FFFFFFF8
 004C069E    mov         dword ptr [ebp-8],edx
 004C06A1    mov         dword ptr [ebp-4],eax
 004C06A4    mov         eax,dword ptr [ebp-4]
 004C06A7    mov         eax,dword ptr [eax+20];TActionClientItem.FCaption:String
 004C06AA    mov         edx,dword ptr [ebp-8]
 004C06AD    call        @LStrCmp
>004C06B2    je          004C072C
 004C06B4    mov         eax,dword ptr [ebp-4]
 004C06B7    add         eax,20;TActionClientItem.FCaption:String
 004C06BA    mov         edx,dword ptr [ebp-8]
 004C06BD    call        @LStrAsg
 004C06C2    mov         eax,dword ptr [ebp-4]
 004C06C5    call        TActionClientItem.GetAction
 004C06CA    test        eax,eax
>004C06CC    jne         004C06EC
 004C06CE    mov         eax,dword ptr [ebp-8]
 004C06D1    mov         edx,4C0738;'-'
 004C06D6    call        @LStrCmp
>004C06DB    je          004C06F0
 004C06DD    mov         eax,dword ptr [ebp-8]
 004C06E0    mov         edx,4C0744;'|'
 004C06E5    call        @LStrCmp
>004C06EA    je          004C06F0
 004C06EC    xor         eax,eax
>004C06EE    jmp         004C06F2
 004C06F0    mov         al,1
 004C06F2    mov         edx,dword ptr [ebp-4]
 004C06F5    mov         byte ptr [edx+50],al;TActionClientItem.FSeparator:Boolean
 004C06F8    mov         eax,dword ptr [ebp-4]
 004C06FB    cmp         byte ptr [eax+50],0;TActionClientItem.FSeparator:Boolean
>004C06FF    je          004C0715
 004C0701    xor         edx,edx
 004C0703    mov         eax,dword ptr [ebp-4]
 004C0706    call        TActionClientItem.SetAction
 004C070B    xor         edx,edx
 004C070D    mov         eax,dword ptr [ebp-4]
 004C0710    call        TActionClientItem.SetShortCut
 004C0715    mov         eax,dword ptr [ebp-4]
 004C0718    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C071C    je          004C072C
 004C071E    mov         edx,dword ptr [ebp-8]
 004C0721    mov         eax,dword ptr [ebp-4]
 004C0724    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0727    call        TPanel.SetCaption
 004C072C    pop         ecx
 004C072D    pop         ecx
 004C072E    pop         ebp
 004C072F    ret
*}
end;

//004C0748
{*procedure sub_004C0748(?:?; ?:?);
begin
 004C0748    push        ebp
 004C0749    mov         ebp,esp
 004C074B    add         esp,0FFFFFFF8
 004C074E    push        esi
 004C074F    mov         dword ptr [ebp-8],edx
 004C0752    mov         dword ptr [ebp-4],eax
 004C0755    mov         eax,dword ptr [ebp-4]
 004C0758    mov         eax,dword ptr [eax+40]
 004C075B    cmp         eax,dword ptr [ebp-8]
>004C075E    je          004C07A6
 004C0760    mov         eax,dword ptr [ebp-4]
 004C0763    add         eax,40
 004C0766    call        FreeAndNil
 004C076B    mov         eax,dword ptr [ebp-8]
 004C076E    mov         edx,dword ptr [ebp-4]
 004C0771    mov         dword ptr [edx+40],eax
 004C0774    mov         eax,dword ptr [ebp-4]
 004C0777    cmp         dword ptr [eax+40],0
>004C077B    je          004C07A6
 004C077D    mov         eax,dword ptr [ebp-4]
 004C0780    call        TActionClientItem.GetAction
 004C0785    mov         edx,eax
 004C0787    mov         cl,1
 004C0789    mov         eax,dword ptr [ebp-4]
 004C078C    mov         si,0FFFD
 004C0790    call        @CallDynaInst
 004C0795    mov         edx,dword ptr [ebp-4]
 004C0798    mov         eax,dword ptr [ebp-4]
 004C079B    mov         eax,dword ptr [eax+40]
 004C079E    mov         ecx,dword ptr [eax]
 004C07A0    call        dword ptr [ecx+0D0]
 004C07A6    pop         esi
 004C07A7    pop         ecx
 004C07A8    pop         ecx
 004C07A9    pop         ebp
 004C07AA    ret
end;*}

//004C07AC
procedure TActionClientItem.SetImageIndex(Value:TImageIndex);
begin
{*
 004C07AC    push        ebp
 004C07AD    mov         ebp,esp
 004C07AF    add         esp,0FFFFFFF8
 004C07B2    mov         dword ptr [ebp-8],edx
 004C07B5    mov         dword ptr [ebp-4],eax
 004C07B8    mov         eax,dword ptr [ebp-4]
 004C07BB    mov         eax,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 004C07BE    cmp         eax,dword ptr [ebp-8]
>004C07C1    je          004C07EE
 004C07C3    mov         eax,dword ptr [ebp-8]
 004C07C6    mov         edx,dword ptr [ebp-4]
 004C07C9    mov         dword ptr [edx+58],eax;TActionClientItem.ImageIndex:TImageIndex
 004C07CC    mov         eax,dword ptr [ebp-4]
 004C07CF    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C07D3    je          004C07EE
 004C07D5    mov         eax,dword ptr [ebp-4]
 004C07D8    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C07DB    mov         edx,dword ptr [eax]
 004C07DD    call        dword ptr [edx+0DC];TCustomActionControl.sub_004C6D68
 004C07E3    mov         eax,dword ptr [ebp-4]
 004C07E6    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C07E9    mov         edx,dword ptr [eax]
 004C07EB    call        dword ptr [edx+7C];TCustomActionControl.sub_00483F08
 004C07EE    pop         ecx
 004C07EF    pop         ecx
 004C07F0    pop         ebp
 004C07F1    ret
*}
end;

//004C07F4
{*procedure sub_004C07F4(?:?);
begin
 004C07F4    push        ebp
 004C07F5    mov         ebp,esp
 004C07F7    add         esp,0FFFFFFF8
 004C07FA    mov         dword ptr [ebp-8],edx
 004C07FD    mov         dword ptr [ebp-4],eax
 004C0800    mov         edx,dword ptr [ebp-8]
 004C0803    mov         eax,dword ptr [ebp-4]
 004C0806    call        00421248
 004C080B    mov         eax,dword ptr [ebp-4]
 004C080E    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0812    je          004C0822
 004C0814    mov         eax,dword ptr [ebp-4]
 004C0817    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C081A    mov         edx,dword ptr [eax]
 004C081C    call        dword ptr [edx+0CC];TCustomActionControl.sub_004C5FDC
 004C0822    mov         eax,dword ptr [ebp-4]
 004C0825    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 004C0828    call        004BBF24
 004C082D    pop         ecx
 004C082E    pop         ecx
 004C082F    pop         ebp
 004C0830    ret
end;*}

//004C0834
procedure TActionClientItem.SetLastSession(Value:Integer);
begin
{*
 004C0834    push        ebp
 004C0835    mov         ebp,esp
 004C0837    add         esp,0FFFFFFF8
 004C083A    mov         dword ptr [ebp-8],edx
 004C083D    mov         dword ptr [ebp-4],eax
 004C0840    mov         eax,dword ptr [ebp-4]
 004C0843    mov         eax,dword ptr [eax+5C];TActionClientItem.LastSession:Integer
 004C0846    cmp         eax,dword ptr [ebp-8]
>004C0849    je          004C085B
 004C084B    mov         eax,dword ptr [ebp-8]
 004C084E    mov         edx,dword ptr [ebp-4]
 004C0851    mov         dword ptr [edx+5C],eax;TActionClientItem.LastSession:Integer
 004C0854    mov         eax,dword ptr [ebp-4]
 004C0857    mov         byte ptr [eax+3C],1;TActionClientItem.FCheckUnused:Boolean
 004C085B    pop         ecx
 004C085C    pop         ecx
 004C085D    pop         ebp
 004C085E    ret
*}
end;

//004C0860
procedure TActionClientItem.SetMergeIndex(Value:TMergeRange);
begin
{*
 004C0860    push        ebp
 004C0861    mov         ebp,esp
 004C0863    add         esp,0FFFFFFEC
 004C0866    mov         dword ptr [ebp-8],edx
 004C0869    mov         dword ptr [ebp-4],eax
 004C086C    mov         eax,dword ptr [ebp-8]
 004C086F    mov         edx,dword ptr [ebp-4]
 004C0872    cmp         eax,dword ptr [edx+4C];TActionClientItem.MergeIndex:TMergeRange
>004C0875    ja          004C08A1
 004C0877    mov         eax,dword ptr [ebp-4]
 004C087A    call        TCollectionItem.GetIndex
 004C087F    test        eax,eax
>004C0881    je          004C08A1
 004C0883    mov         eax,dword ptr [ebp-4]
 004C0886    call        TCollectionItem.GetIndex
 004C088B    dec         eax
 004C088C    push        eax
 004C088D    mov         eax,dword ptr [ebp-4]
 004C0890    call        004C0134
 004C0895    pop         edx
 004C0896    call        004BF258
 004C089B    cmp         dword ptr [eax+4C],0
>004C089F    jne         004C091C
 004C08A1    mov         eax,dword ptr [ebp-4]
 004C08A4    call        TCollectionItem.GetIndex
 004C08A9    inc         eax
 004C08AA    push        eax
 004C08AB    mov         eax,dword ptr [ebp-4]
 004C08AE    call        004C0134
 004C08B3    call        0042158C
 004C08B8    dec         eax
 004C08B9    pop         edx
 004C08BA    sub         eax,edx
>004C08BC    jl          004C0913
 004C08BE    inc         eax
 004C08BF    mov         dword ptr [ebp-10],eax
 004C08C2    mov         dword ptr [ebp-0C],edx
 004C08C5    mov         eax,dword ptr [ebp-4]
 004C08C8    call        004C0134
 004C08CD    mov         edx,dword ptr [ebp-0C]
 004C08D0    call        004BF258
 004C08D5    mov         dword ptr [ebp-14],eax
 004C08D8    mov         eax,dword ptr [ebp-4]
 004C08DB    mov         eax,dword ptr [eax+4C];TActionClientItem.MergeIndex:TMergeRange
 004C08DE    mov         edx,dword ptr [ebp-14]
 004C08E1    cmp         eax,dword ptr [edx+4C]
>004C08E4    jne         004C08F1
 004C08E6    mov         eax,dword ptr [ebp-8]
 004C08E9    mov         edx,dword ptr [ebp-14]
 004C08EC    mov         dword ptr [edx+4C],eax
>004C08EF    jmp         004C090B
 004C08F1    mov         eax,dword ptr [ebp-4]
 004C08F4    mov         eax,dword ptr [eax+4C];TActionClientItem.MergeIndex:TMergeRange
 004C08F7    mov         edx,dword ptr [ebp-14]
 004C08FA    sub         eax,dword ptr [edx+4C]
 004C08FD    cdq
 004C08FE    xor         eax,edx
 004C0900    sub         eax,edx
 004C0902    add         eax,dword ptr [ebp-8]
 004C0905    mov         edx,dword ptr [ebp-14]
 004C0908    mov         dword ptr [edx+4C],eax
 004C090B    inc         dword ptr [ebp-0C]
 004C090E    dec         dword ptr [ebp-10]
>004C0911    jne         004C08C5
 004C0913    mov         eax,dword ptr [ebp-8]
 004C0916    mov         edx,dword ptr [ebp-4]
 004C0919    mov         dword ptr [edx+4C],eax;TActionClientItem.MergeIndex:TMergeRange
 004C091C    mov         esp,ebp
 004C091E    pop         ebp
 004C091F    ret
*}
end;

//004C0920
procedure TActionClientItem.SetShortCut(Value:TShortCut);
begin
{*
 004C0920    push        ebp
 004C0921    mov         ebp,esp
 004C0923    add         esp,0FFFFFFF4
 004C0926    xor         ecx,ecx
 004C0928    mov         dword ptr [ebp-0C],ecx
 004C092B    mov         word ptr [ebp-6],dx
 004C092F    mov         dword ptr [ebp-4],eax
 004C0932    xor         eax,eax
 004C0934    push        ebp
 004C0935    push        4C0990
 004C093A    push        dword ptr fs:[eax]
 004C093D    mov         dword ptr fs:[eax],esp
 004C0940    mov         eax,dword ptr [ebp-4]
 004C0943    mov         ax,word ptr [eax+48];TActionClientItem.ShortCut:TShortCut
 004C0947    cmp         ax,word ptr [ebp-6]
>004C094B    je          004C097A
 004C094D    mov         ax,word ptr [ebp-6]
 004C0951    mov         edx,dword ptr [ebp-4]
 004C0954    mov         word ptr [edx+48],ax;TActionClientItem.ShortCut:TShortCut
 004C0958    lea         edx,[ebp-0C]
 004C095B    mov         ax,word ptr [ebp-6]
 004C095F    call        0049795C
 004C0964    mov         edx,dword ptr [ebp-0C]
 004C0967    mov         eax,dword ptr [ebp-4]
 004C096A    add         eax,54;TActionClientItem.FShortCutText:String
 004C096D    call        @LStrAsg
 004C0972    mov         eax,dword ptr [ebp-4]
 004C0975    mov         edx,dword ptr [eax]
 004C0977    call        dword ptr [edx+30];TActionClientItem.sub_004C0438
 004C097A    xor         eax,eax
 004C097C    pop         edx
 004C097D    pop         ecx
 004C097E    pop         ecx
 004C097F    mov         dword ptr fs:[eax],edx
 004C0982    push        4C0997
 004C0987    lea         eax,[ebp-0C]
 004C098A    call        @LStrClr
 004C098F    ret
>004C0990    jmp         @HandleFinally
>004C0995    jmp         004C0987
 004C0997    mov         esp,ebp
 004C0999    pop         ebp
 004C099A    ret
*}
end;

//004C099C
procedure TActionClientItem.SetShowCaption(Value:Boolean);
begin
{*
 004C099C    push        ebp
 004C099D    mov         ebp,esp
 004C099F    add         esp,0FFFFFFF8
 004C09A2    mov         byte ptr [ebp-5],dl
 004C09A5    mov         dword ptr [ebp-4],eax
 004C09A8    mov         eax,dword ptr [ebp-4]
 004C09AB    mov         al,byte ptr [eax+51];TActionClientItem.ShowCaption:Boolean
 004C09AE    cmp         al,byte ptr [ebp-5]
>004C09B1    je          004C0A0F
 004C09B3    mov         eax,dword ptr [ebp-4]
 004C09B6    call        004C0134
 004C09BB    call        004BD7EC
 004C09C0    test        byte ptr [eax+1C],1
>004C09C4    jne         004C09FE
 004C09C6    mov         eax,dword ptr [ebp-4]
 004C09C9    call        004C0320
 004C09CE    test        al,al
>004C09D0    jne         004C09FE
 004C09D2    cmp         byte ptr [ebp-5],0
>004C09D6    jne         004C09F4
 004C09D8    mov         eax,dword ptr [ebp-4]
 004C09DB    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C09DF    je          004C09F0
 004C09E1    mov         eax,dword ptr [ebp-4]
 004C09E4    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C09E7    call        0042AB10
 004C09EC    test        eax,eax
>004C09EE    je          004C09F4
 004C09F0    xor         eax,eax
>004C09F2    jmp         004C09F6
 004C09F4    mov         al,1
 004C09F6    mov         edx,dword ptr [ebp-4]
 004C09F9    mov         byte ptr [edx+51],al;TActionClientItem.ShowCaption:Boolean
>004C09FC    jmp         004C0A07
 004C09FE    mov         al,byte ptr [ebp-5]
 004C0A01    mov         edx,dword ptr [ebp-4]
 004C0A04    mov         byte ptr [edx+51],al;TActionClientItem.ShowCaption:Boolean
 004C0A07    mov         eax,dword ptr [ebp-4]
 004C0A0A    mov         edx,dword ptr [eax]
 004C0A0C    call        dword ptr [edx+30];TActionClientItem.sub_004C0438
 004C0A0F    pop         ecx
 004C0A10    pop         ecx
 004C0A11    pop         ebp
 004C0A12    ret
*}
end;

//004C0A14
procedure TActionClientItem.SetShowShortCut(Value:Boolean);
begin
{*
 004C0A14    push        ebp
 004C0A15    mov         ebp,esp
 004C0A17    add         esp,0FFFFFFF8
 004C0A1A    mov         byte ptr [ebp-5],dl
 004C0A1D    mov         dword ptr [ebp-4],eax
 004C0A20    mov         eax,dword ptr [ebp-4]
 004C0A23    mov         al,byte ptr [eax+52];TActionClientItem.ShowShortCut:Boolean
 004C0A26    cmp         al,byte ptr [ebp-5]
>004C0A29    je          004C0A59
 004C0A2B    mov         al,byte ptr [ebp-5]
 004C0A2E    mov         edx,dword ptr [ebp-4]
 004C0A31    mov         byte ptr [edx+52],al;TActionClientItem.ShowShortCut:Boolean
 004C0A34    mov         eax,dword ptr [ebp-4]
 004C0A37    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0A3B    je          004C0A59
 004C0A3D    mov         eax,dword ptr [ebp-4]
 004C0A40    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0A43    mov         edx,dword ptr [eax]
 004C0A45    call        dword ptr [edx+0DC];TCustomActionControl.sub_004C6D68
 004C0A4B    mov         eax,dword ptr [ebp-4]
 004C0A4E    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0A51    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 004C0A54    call        004878BC
 004C0A59    pop         ecx
 004C0A5A    pop         ecx
 004C0A5B    pop         ebp
 004C0A5C    ret
*}
end;

//004C0A60
procedure TActionClientItem.SetUsageCount(Value:Integer);
begin
{*
 004C0A60    push        ebp
 004C0A61    mov         ebp,esp
 004C0A63    add         esp,0FFFFFFF8
 004C0A66    mov         dword ptr [ebp-8],edx
 004C0A69    mov         dword ptr [ebp-4],eax
 004C0A6C    cmp         dword ptr [ebp-8],7FFFFFFF
>004C0A73    jne         004C0A7F
 004C0A75    mov         eax,dword ptr [ebp-4]
 004C0A78    xor         edx,edx
 004C0A7A    mov         dword ptr [eax+44],edx;TActionClientItem.UsageCount:Integer
>004C0A7D    jmp         004C0A88
 004C0A7F    mov         eax,dword ptr [ebp-8]
 004C0A82    mov         edx,dword ptr [ebp-4]
 004C0A85    mov         dword ptr [edx+44],eax;TActionClientItem.UsageCount:Integer
 004C0A88    mov         eax,dword ptr [ebp-4]
 004C0A8B    mov         byte ptr [eax+3C],1;TActionClientItem.FCheckUnused:Boolean
 004C0A8F    mov         eax,dword ptr [ebp-4]
 004C0A92    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0A96    je          004C0AA3
 004C0A98    mov         eax,dword ptr [ebp-4]
 004C0A9B    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0A9E    mov         edx,dword ptr [eax]
 004C0AA0    call        dword ptr [edx+7C];TCustomActionControl.sub_00483F08
 004C0AA3    pop         ecx
 004C0AA4    pop         ecx
 004C0AA5    pop         ebp
 004C0AA6    ret
*}
end;

//004C0AA8
{*procedure sub_004C0AA8(?:?);
begin
 004C0AA8    push        ebp
 004C0AA9    mov         ebp,esp
 004C0AAB    add         esp,0FFFFFFF8
 004C0AAE    mov         byte ptr [ebp-5],dl
 004C0AB1    mov         dword ptr [ebp-4],eax
 004C0AB4    mov         eax,dword ptr [ebp-4]
 004C0AB7    mov         al,byte ptr [eax+30];TActionClientItem.Visible:Boolean
 004C0ABA    cmp         al,byte ptr [ebp-5]
>004C0ABD    jne         004C0ADE
 004C0ABF    mov         eax,dword ptr [ebp-4]
 004C0AC2    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0AC6    je          004C0B75
 004C0ACC    mov         eax,dword ptr [ebp-4]
 004C0ACF    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0AD2    mov         al,byte ptr [eax+57];TCustomActionControl.FVisible:Boolean
 004C0AD5    cmp         al,byte ptr [ebp-5]
>004C0AD8    je          004C0B75
 004C0ADE    mov         al,byte ptr [ebp-5]
 004C0AE1    mov         edx,dword ptr [ebp-4]
 004C0AE4    mov         byte ptr [edx+30],al;TActionClientItem.Visible:Boolean
 004C0AE7    mov         eax,dword ptr [ebp-4]
 004C0AEA    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0AEE    je          004C0B0F
 004C0AF0    mov         eax,dword ptr [ebp-4]
 004C0AF3    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0AF6    mov         al,byte ptr [eax+57];TCustomActionControl.FVisible:Boolean
 004C0AF9    cmp         al,byte ptr [ebp-5]
>004C0AFC    je          004C0B0F
 004C0AFE    mov         eax,dword ptr [ebp-4]
 004C0B01    mov         dl,byte ptr [eax+30];TActionClientItem.Visible:Boolean
 004C0B04    mov         eax,dword ptr [ebp-4]
 004C0B07    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0B0A    call        TImage.SetVisible
 004C0B0F    mov         eax,dword ptr [ebp-4]
 004C0B12    cmp         dword ptr [eax+0C],0;TActionClientItem.FActionBar:TCustomActionBar
>004C0B16    je          004C0B75
 004C0B18    mov         eax,dword ptr [ebp-4]
 004C0B1B    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 004C0B1E    mov         al,byte ptr [eax+57];TCustomActionBar.FVisible:Boolean
 004C0B21    cmp         al,byte ptr [ebp-5]
>004C0B24    je          004C0B61
 004C0B26    mov         eax,dword ptr [ebp-4]
 004C0B29    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 004C0B2C    mov         eax,dword ptr [eax+30];TCustomActionBar.FParent:TWinControl
 004C0B2F    mov         edx,dword ptr ds:[4BBB84];TXToolDockForm
 004C0B35    call        @IsClass
 004C0B3A    test        al,al
>004C0B3C    je          004C0B50
 004C0B3E    mov         eax,dword ptr [ebp-4]
 004C0B41    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 004C0B44    mov         eax,dword ptr [eax+30];TCustomActionBar.FParent:TWinControl
 004C0B47    xor         edx,edx
 004C0B49    call        TImage.SetVisible
>004C0B4E    jmp         004C0B61
 004C0B50    mov         eax,dword ptr [ebp-4]
 004C0B53    mov         dl,byte ptr [eax+30];TActionClientItem.Visible:Boolean
 004C0B56    mov         eax,dword ptr [ebp-4]
 004C0B59    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 004C0B5C    call        TImage.SetVisible
 004C0B61    mov         eax,dword ptr [ebp-4]
 004C0B64    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 004C0B67    test        byte ptr [eax+1C],10;TCustomActionBar.FComponentState:TComponentState
>004C0B6B    jne         004C0B75
 004C0B6D    mov         eax,dword ptr [ebp-4]
 004C0B70    mov         edx,dword ptr [eax]
 004C0B72    call        dword ptr [edx+30];TActionClientItem.sub_004C0438
 004C0B75    pop         ecx
 004C0B76    pop         ecx
 004C0B77    pop         ebp
 004C0B78    ret
end;*}

//004C0B7C
{*procedure sub_004C0B7C(?:?);
begin
 004C0B7C    push        ebp
 004C0B7D    mov         ebp,esp
 004C0B7F    add         esp,0FFFFFFF8
 004C0B82    mov         byte ptr [ebp-5],dl
 004C0B85    mov         dword ptr [ebp-4],eax
 004C0B88    mov         dl,byte ptr [ebp-5]
 004C0B8B    mov         eax,dword ptr [ebp-4]
 004C0B8E    call        TActionClient.SetChangesAllowed
 004C0B93    mov         eax,dword ptr [ebp-4]
 004C0B96    call        004BE5A0
 004C0B9B    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004C0BA1    call        @IsClass
 004C0BA6    test        al,al
>004C0BA8    je          004C0BD1
 004C0BAA    mov         eax,dword ptr [ebp-4]
 004C0BAD    call        004C0134
 004C0BB2    mov         eax,dword ptr [eax+20]
 004C0BB5    mov         al,byte ptr [eax+31]
 004C0BB8    mov         edx,dword ptr [ebp-4]
 004C0BBB    cmp         al,byte ptr [edx+31];TActionClientItem.ChangesAllowed:TChangesAllowedSet
>004C0BBE    jbe         004C0BD1
 004C0BC0    mov         eax,dword ptr [ebp-4]
 004C0BC3    call        004BE5A0
 004C0BC8    mov         edx,dword ptr [ebp-4]
 004C0BCB    mov         dl,byte ptr [edx+31];TActionClientItem.ChangesAllowed:TChangesAllowedSet
 004C0BCE    mov         byte ptr [eax+31],dl
 004C0BD1    pop         ecx
 004C0BD2    pop         ecx
 004C0BD3    pop         ebp
 004C0BD4    ret
end;*}

//004C0BD8
procedure TActionClientItem.SetShowGlyph(Value:Boolean);
begin
{*
 004C0BD8    push        ebp
 004C0BD9    mov         ebp,esp
 004C0BDB    add         esp,0FFFFFFF8
 004C0BDE    mov         byte ptr [ebp-5],dl
 004C0BE1    mov         dword ptr [ebp-4],eax
 004C0BE4    mov         eax,dword ptr [ebp-4]
 004C0BE7    mov         al,byte ptr [eax+61];TActionClientItem.ShowGlyph:Boolean
 004C0BEA    cmp         al,byte ptr [ebp-5]
>004C0BED    je          004C0C0F
 004C0BEF    mov         al,byte ptr [ebp-5]
 004C0BF2    mov         edx,dword ptr [ebp-4]
 004C0BF5    mov         byte ptr [edx+61],al;TActionClientItem.ShowGlyph:Boolean
 004C0BF8    mov         eax,dword ptr [ebp-4]
 004C0BFB    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0BFF    je          004C0C0F
 004C0C01    mov         eax,dword ptr [ebp-4]
 004C0C04    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0C07    mov         edx,dword ptr [eax]
 004C0C09    call        dword ptr [edx+0DC];TCustomActionControl.sub_004C6D68
 004C0C0F    pop         ecx
 004C0C10    pop         ecx
 004C0C11    pop         ebp
 004C0C12    ret
*}
end;

//004C0C14
{*procedure sub_004C0C14(?:?);
begin
 004C0C14    push        ebp
 004C0C15    mov         ebp,esp
 004C0C17    add         esp,0FFFFFFF8
 004C0C1A    push        esi
 004C0C1B    mov         dword ptr [ebp-8],edx
 004C0C1E    mov         dword ptr [ebp-4],eax
 004C0C21    mov         eax,dword ptr [ebp-4]
 004C0C24    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0C28    je          004C0C4D
 004C0C2A    mov         eax,dword ptr [ebp-4]
 004C0C2D    add         eax,40;TActionClientItem.FControl:TCustomActionControl
 004C0C30    call        FreeAndNil
 004C0C35    mov         eax,dword ptr [ebp-4]
 004C0C38    cmp         dword ptr [eax+0C],0;TActionClientItem.FActionBar:TCustomActionBar
>004C0C3C    je          004C0C4D
 004C0C3E    mov         eax,dword ptr [ebp-4]
 004C0C41    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 004C0C44    mov         si,0FFCF
 004C0C48    call        @CallDynaInst;TControl.sub_0048271C
 004C0C4D    mov         edx,dword ptr [ebp-8]
 004C0C50    mov         eax,dword ptr [ebp-4]
 004C0C53    call        004211E8
 004C0C58    pop         esi
 004C0C59    pop         ecx
 004C0C5A    pop         ecx
 004C0C5B    pop         ebp
 004C0C5C    ret
end;*}

//004C0C60
{*function sub_004C0C60(?:TActionClientItem):?;
begin
 004C0C60    push        ebp
 004C0C61    mov         ebp,esp
 004C0C63    add         esp,0FFFFFFEC
 004C0C66    push        ebx
 004C0C67    mov         dword ptr [ebp-4],eax
 004C0C6A    mov         eax,dword ptr [ebp-4]
 004C0C6D    mov         al,byte ptr [eax+60]
 004C0C70    mov         byte ptr [ebp-5],al
 004C0C73    mov         eax,dword ptr [ebp-4]
 004C0C76    cmp         byte ptr [eax+3C],0
>004C0C7A    je          004C0E01
 004C0C80    mov         eax,dword ptr [ebp-4]
 004C0C83    call        004C0134
 004C0C88    cmp         byte ptr [eax+2A],0
>004C0C8C    jne         004C0C97
 004C0C8E    mov         byte ptr [ebp-5],0
>004C0C92    jmp         004C0E01
 004C0C97    mov         eax,dword ptr [ebp-4]
 004C0C9A    call        004C0134
 004C0C9F    call        004BD7EC
 004C0CA4    mov         dword ptr [ebp-10],eax
 004C0CA7    mov         eax,dword ptr [ebp-4]
 004C0CAA    cmp         byte ptr [eax+50],0
>004C0CAE    je          004C0DBD
 004C0CB4    mov         eax,dword ptr [ebp-4]
 004C0CB7    call        TCollectionItem.GetIndex
 004C0CBC    dec         eax
 004C0CBD    cmp         eax,0
>004C0CC0    jl          004C0D25
 004C0CC2    mov         dword ptr [ebp-0C],eax
 004C0CC5    mov         eax,dword ptr [ebp-4]
 004C0CC8    call        TCollectionItem.GetIndex
 004C0CCD    test        eax,eax
>004C0CCF    jle         004C0D1C
 004C0CD1    mov         eax,dword ptr [ebp-4]
 004C0CD4    call        TCollectionItem.GetIndex
 004C0CD9    dec         eax
 004C0CDA    push        eax
 004C0CDB    mov         eax,dword ptr [ebp-4]
 004C0CDE    call        004C0134
 004C0CE3    pop         edx
 004C0CE4    call        004BF258
 004C0CE9    cmp         byte ptr [eax+50],0
>004C0CED    jne         004C0D25
 004C0CEF    mov         eax,dword ptr [ebp-4]
 004C0CF2    call        TCollectionItem.GetIndex
 004C0CF7    dec         eax
 004C0CF8    push        eax
 004C0CF9    mov         eax,dword ptr [ebp-4]
 004C0CFC    call        004C0134
 004C0D01    pop         edx
 004C0D02    call        004BF258
 004C0D07    mov         edx,eax
 004C0D09    mov         eax,dword ptr [ebp-10]
 004C0D0C    mov         ecx,dword ptr [eax]
 004C0D0E    call        dword ptr [ecx+38]
 004C0D11    xor         al,1
 004C0D13    mov         byte ptr [ebp-5],al
 004C0D16    cmp         byte ptr [ebp-5],0
>004C0D1A    jne         004C0D25
 004C0D1C    dec         dword ptr [ebp-0C]
 004C0D1F    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004C0D23    jne         004C0CC5
 004C0D25    cmp         byte ptr [ebp-5],0
>004C0D29    je          004C0DF8
 004C0D2F    mov         eax,dword ptr [ebp-4]
 004C0D32    mov         eax,dword ptr [eax+4]
 004C0D35    call        0042158C
 004C0D3A    dec         eax
 004C0D3B    test        eax,eax
>004C0D3D    jl          004C0DF8
 004C0D43    inc         eax
 004C0D44    mov         dword ptr [ebp-14],eax
 004C0D47    mov         dword ptr [ebp-0C],0
 004C0D4E    mov         eax,dword ptr [ebp-4]
 004C0D51    call        TCollectionItem.GetIndex
 004C0D56    mov         ebx,eax
 004C0D58    mov         eax,dword ptr [ebp-4]
 004C0D5B    mov         eax,dword ptr [eax+4]
 004C0D5E    call        0042158C
 004C0D63    dec         eax
 004C0D64    cmp         ebx,eax
>004C0D66    jge         004C0DB3
 004C0D68    mov         eax,dword ptr [ebp-4]
 004C0D6B    call        TCollectionItem.GetIndex
 004C0D70    inc         eax
 004C0D71    push        eax
 004C0D72    mov         eax,dword ptr [ebp-4]
 004C0D75    call        004C0134
 004C0D7A    pop         edx
 004C0D7B    call        004BF258
 004C0D80    cmp         byte ptr [eax+50],0
>004C0D84    jne         004C0DF8
 004C0D86    mov         eax,dword ptr [ebp-4]
 004C0D89    call        TCollectionItem.GetIndex
 004C0D8E    inc         eax
 004C0D8F    push        eax
 004C0D90    mov         eax,dword ptr [ebp-4]
 004C0D93    call        004C0134
 004C0D98    pop         edx
 004C0D99    call        004BF258
 004C0D9E    mov         edx,eax
 004C0DA0    mov         eax,dword ptr [ebp-10]
 004C0DA3    mov         ecx,dword ptr [eax]
 004C0DA5    call        dword ptr [ecx+38]
 004C0DA8    xor         al,1
 004C0DAA    mov         byte ptr [ebp-5],al
 004C0DAD    cmp         byte ptr [ebp-5],0
>004C0DB1    jne         004C0DF8
 004C0DB3    inc         dword ptr [ebp-0C]
 004C0DB6    dec         dword ptr [ebp-14]
>004C0DB9    jne         004C0D4E
>004C0DBB    jmp         004C0DF8
 004C0DBD    mov         edx,dword ptr [ebp-4]
 004C0DC0    mov         eax,dword ptr [ebp-10]
 004C0DC3    mov         ecx,dword ptr [eax]
 004C0DC5    call        dword ptr [ecx+38]
 004C0DC8    xor         al,1
 004C0DCA    mov         byte ptr [ebp-5],al
 004C0DCD    cmp         byte ptr [ebp-5],0
>004C0DD1    je          004C0DF1
 004C0DD3    mov         eax,dword ptr [ebp-4]
 004C0DD6    call        TActionClient.GetItems
 004C0DDB    call        0042158C
 004C0DE0    test        eax,eax
>004C0DE2    jle         004C0DF1
 004C0DE4    mov         eax,dword ptr [ebp-4]
 004C0DE7    call        004BE6F4
 004C0DEC    xor         al,1
 004C0DEE    mov         byte ptr [ebp-5],al
 004C0DF1    mov         eax,dword ptr [ebp-4]
 004C0DF4    mov         byte ptr [eax+3C],0
 004C0DF8    mov         al,byte ptr [ebp-5]
 004C0DFB    mov         edx,dword ptr [ebp-4]
 004C0DFE    mov         byte ptr [edx+60],al
 004C0E01    mov         al,byte ptr [ebp-5]
 004C0E04    pop         ebx
 004C0E05    mov         esp,ebp
 004C0E07    pop         ebp
 004C0E08    ret
end;*}

//004C0E0C
function TActionClientItem.IsStoredHelpContext(Value:THelpContext):Boolean;
begin
{*
 004C0E0C    push        ebp
 004C0E0D    mov         ebp,esp
 004C0E0F    add         esp,0FFFFFFF8
 004C0E12    mov         dword ptr [ebp-4],eax
 004C0E15    mov         eax,dword ptr [ebp-4]
 004C0E18    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>004C0E1C    je          004C0E31
 004C0E1E    mov         eax,dword ptr [ebp-4]
 004C0E21    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 004C0E24    mov         edx,dword ptr [eax]
 004C0E26    call        dword ptr [edx+30];TActionClientLink.sub_004BF94C
 004C0E29    test        al,al
>004C0E2B    je          004C0E31
 004C0E2D    xor         eax,eax
>004C0E2F    jmp         004C0E33
 004C0E31    mov         al,1
 004C0E33    mov         byte ptr [ebp-5],al
 004C0E36    mov         al,byte ptr [ebp-5]
 004C0E39    pop         ecx
 004C0E3A    pop         ecx
 004C0E3B    pop         ebp
 004C0E3C    ret
*}
end;

//004C0E40
destructor TActionDragObject.Destroy;
begin
{*
 004C0E40    push        ebp
 004C0E41    mov         ebp,esp
 004C0E43    add         esp,0FFFFFFF8
 004C0E46    call        @BeforeDestruction
 004C0E4B    mov         byte ptr [ebp-5],dl
 004C0E4E    mov         dword ptr [ebp-4],eax
 004C0E51    mov         eax,dword ptr [ebp-4]
 004C0E54    mov         eax,dword ptr [eax+40];TActionDragObject.FActions:TList
 004C0E57    call        TObject.Free
 004C0E5C    mov         dl,byte ptr [ebp-5]
 004C0E5F    and         dl,0FC
 004C0E62    mov         eax,dword ptr [ebp-4]
 004C0E65    call        TObject.Destroy
 004C0E6A    cmp         byte ptr [ebp-5],0
>004C0E6E    jle         004C0E78
 004C0E70    mov         eax,dword ptr [ebp-4]
 004C0E73    call        @ClassDestroy
 004C0E78    pop         ecx
 004C0E79    pop         ecx
 004C0E7A    pop         ebp
 004C0E7B    ret
*}
end;

//004C0E7C
{*function sub_004C0E7C(?:TActionDragObject; ?:?):?;
begin
 004C0E7C    push        ebp
 004C0E7D    mov         ebp,esp
 004C0E7F    add         esp,0FFFFFFF4
 004C0E82    mov         dword ptr [ebp-8],edx
 004C0E85    mov         dword ptr [ebp-4],eax
 004C0E88    mov         eax,dword ptr [ebp-4]
 004C0E8B    cmp         byte ptr [eax+44],0;TCategoryDragObject.FActionClasses:Boolean
>004C0E8F    je          004C0EB0
 004C0E91    mov         edx,dword ptr [ebp-8]
 004C0E94    mov         eax,dword ptr [ebp-4]
 004C0E97    mov         eax,dword ptr [eax+40];TCategoryDragObject.FActions:TList
 004C0E9A    call        TList.Get
 004C0E9F    mov         edx,eax
 004C0EA1    mov         eax,[0056CB8C];0x0 gvar_0056CB8C
 004C0EA6    mov         ecx,dword ptr [eax]
 004C0EA8    call        dword ptr [ecx+0C]
 004C0EAB    mov         dword ptr [ebp-0C],eax
>004C0EAE    jmp         004C0EC1
 004C0EB0    mov         edx,dword ptr [ebp-8]
 004C0EB3    mov         eax,dword ptr [ebp-4]
 004C0EB6    mov         eax,dword ptr [eax+40];TCategoryDragObject.FActions:TList
 004C0EB9    call        TList.Get
 004C0EBE    mov         dword ptr [ebp-0C],eax
 004C0EC1    mov         eax,dword ptr [ebp-0C]
 004C0EC4    mov         esp,ebp
 004C0EC6    pop         ebp
 004C0EC7    ret
end;*}

//004C0EC8
{*function sub_004C0EC8(?:TActionDragObject):?;
begin
 004C0EC8    push        ebp
 004C0EC9    mov         ebp,esp
 004C0ECB    add         esp,0FFFFFFF8
 004C0ECE    mov         dword ptr [ebp-4],eax
 004C0ED1    mov         eax,dword ptr [ebp-4]
 004C0ED4    mov         eax,dword ptr [eax+40];TCategoryDragObject.FActions:TList
 004C0ED7    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004C0EDA    mov         dword ptr [ebp-8],eax
 004C0EDD    mov         eax,dword ptr [ebp-8]
 004C0EE0    pop         ecx
 004C0EE1    pop         ecx
 004C0EE2    pop         ebp
 004C0EE3    ret
end;*}

//004C0EE4
{*procedure sub_004C0EE4(?:?; ?:?; ?:?; ?:?);
begin
 004C0EE4    push        ebp
 004C0EE5    mov         ebp,esp
 004C0EE7    add         esp,0FFFFFFD4
 004C0EEA    mov         dword ptr [ebp-0C],ecx
 004C0EED    mov         dword ptr [ebp-8],edx
 004C0EF0    mov         dword ptr [ebp-4],eax
 004C0EF3    mov         eax,dword ptr [ebp+0C]
 004C0EF6    push        eax
 004C0EF7    mov         al,byte ptr [ebp+8]
 004C0EFA    push        eax
 004C0EFB    mov         ecx,dword ptr [ebp-0C]
 004C0EFE    mov         edx,dword ptr [ebp-8]
 004C0F01    mov         eax,dword ptr [ebp-4]
 004C0F04    call        0047FEBC
 004C0F09    mov         eax,dword ptr [ebp-4]
 004C0F0C    mov         eax,dword ptr [eax+40];TActionItemDragObject.......................FClientItem:TActionCl...
 004C0F0F    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>004C0F13    je          004C0F8A
 004C0F15    mov         eax,dword ptr [ebp-4]
 004C0F18    mov         eax,dword ptr [eax+40];TActionItemDragObject........................FClientItem:TActionC...
 004C0F1B    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0F1E    cmp         eax,dword ptr [ebp-8]
>004C0F21    je          004C0F8A
 004C0F23    lea         ecx,[ebp-1C]
 004C0F26    mov         edx,dword ptr [ebp+0C]
 004C0F29    mov         eax,dword ptr [ebp-0C]
 004C0F2C    call        Point
 004C0F31    lea         edx,[ebp-1C]
 004C0F34    lea         ecx,[ebp-14]
 004C0F37    mov         eax,dword ptr [ebp-4]
 004C0F3A    mov         eax,dword ptr [eax+40];TActionItemDragObject.........................FClientItem:TAction...
 004C0F3D    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0F40    call        TControl.ScreenToClient
 004C0F45    mov         eax,dword ptr [ebp-4]
 004C0F48    cmp         byte ptr [eax+1C],0;TActionItemDragObject.FDropped:Boolean
>004C0F4C    je          004C0F83
 004C0F4E    cmp         byte ptr [ebp+8],0
>004C0F52    jne         004C0F83
 004C0F54    push        dword ptr [ebp-10]
 004C0F57    push        dword ptr [ebp-14]
 004C0F5A    lea         edx,[ebp-2C]
 004C0F5D    mov         eax,dword ptr [ebp-4]
 004C0F60    mov         eax,dword ptr [eax+40];TActionItemDragObject..........................FClientItem:TActio...
 004C0F63    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C0F66    mov         ecx,dword ptr [eax]
 004C0F68    call        dword ptr [ecx+44];TCustomActionControl.sub_00482F5C
 004C0F6B    lea         eax,[ebp-2C]
 004C0F6E    push        eax
 004C0F6F    call        user32.PtInRect
 004C0F74    test        eax,eax
>004C0F76    jne         004C0F83
 004C0F78    mov         eax,dword ptr [ebp-4]
 004C0F7B    mov         eax,dword ptr [eax+40];TActionItemDragObject...........................FClientItem:TActi...
 004C0F7E    call        TObject.Free
 004C0F83    xor         eax,eax
 004C0F85    call        004BBF24
 004C0F8A    mov         esp,ebp
 004C0F8C    pop         ebp
 004C0F8D    ret         8
end;*}

//004C0F90
{*procedure sub_004C0F90(?:?; ?:?);
begin
 004C0F90    push        ebp
 004C0F91    mov         ebp,esp
 004C0F93    add         esp,0FFFFFFF8
 004C0F96    mov         dword ptr [ebp-8],edx
 004C0F99    mov         dword ptr [ebp-4],eax
 004C0F9C    cmp         dword ptr [ebp-4],0
>004C0FA0    je          004C0FE6
 004C0FA2    mov         eax,dword ptr [ebp-4]
 004C0FA5    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004C0FAB    call        @IsClass
 004C0FB0    test        al,al
>004C0FB2    je          004C0FC4
 004C0FB4    mov         eax,dword ptr [ebp-8]
 004C0FB7    mov         edx,dword ptr [eax+74]
 004C0FBA    mov         eax,dword ptr [ebp-4]
 004C0FBD    call        TPanel.SetColor
>004C0FC2    jmp         004C0FD2
 004C0FC4    mov         eax,dword ptr [ebp-8]
 004C0FC7    mov         edx,dword ptr [eax+40]
 004C0FCA    mov         eax,dword ptr [ebp-4]
 004C0FCD    call        TPanel.SetColor
 004C0FD2    mov         eax,dword ptr [ebp-4]
 004C0FD5    call        TWinControl.HandleAllocated
 004C0FDA    test        al,al
>004C0FDC    je          004C0FE6
 004C0FDE    mov         eax,dword ptr [ebp-4]
 004C0FE1    mov         edx,dword ptr [eax]
 004C0FE3    call        dword ptr [edx+7C]
 004C0FE6    pop         ecx
 004C0FE7    pop         ecx
 004C0FE8    pop         ebp
 004C0FE9    ret
end;*}

//004C0FEC
{*procedure sub_004C0FEC(?:?; ?:?);
begin
 004C0FEC    push        ebp
 004C0FED    mov         ebp,esp
 004C0FEF    add         esp,0FFFFFFF8
 004C0FF2    mov         dword ptr [ebp-8],edx
 004C0FF5    mov         dword ptr [ebp-4],eax
 004C0FF8    cmp         dword ptr [ebp-4],0
>004C0FFC    je          004C1020
 004C0FFE    mov         eax,dword ptr [ebp-4]
 004C1001    mov         eax,dword ptr [eax+68]
 004C1004    mov         eax,dword ptr [eax+18]
 004C1007    mov         edx,dword ptr [ebp-8]
 004C100A    cmp         eax,dword ptr [edx+50]
>004C100D    je          004C1020
 004C100F    mov         eax,dword ptr [ebp-8]
 004C1012    mov         edx,dword ptr [eax+50]
 004C1015    mov         eax,dword ptr [ebp-4]
 004C1018    mov         eax,dword ptr [eax+68]
 004C101B    call        TFont.SetColor
 004C1020    pop         ecx
 004C1021    pop         ecx
 004C1022    pop         ebp
 004C1023    ret
end;*}

//004C1024
procedure sub_004C1024(?:TCustomActionBarColorMap; ?:TCustomActionBar);
begin
{*
 004C1024    push        ebp
 004C1025    mov         ebp,esp
 004C1027    add         esp,0FFFFFFF8
 004C102A    mov         dword ptr [ebp-8],edx
 004C102D    mov         dword ptr [ebp-4],eax
 004C1030    cmp         dword ptr [ebp-8],0
>004C1034    je          004C1076
 004C1036    mov         edx,dword ptr [ebp-8]
 004C1039    mov         eax,dword ptr [ebp-4]
 004C103C    mov         eax,dword ptr [eax+30]
 004C103F    call        004202BC
 004C1044    inc         eax
>004C1045    jne         004C1076
 004C1047    mov         edx,dword ptr [ebp-8]
 004C104A    mov         eax,dword ptr [ebp-4]
 004C104D    mov         eax,dword ptr [eax+30]
 004C1050    call        TList.Add
 004C1055    mov         edx,dword ptr [ebp-8]
 004C1058    mov         eax,dword ptr [ebp-4]
 004C105B    call        0042A2CC
 004C1060    mov         edx,dword ptr [ebp-4]
 004C1063    mov         eax,dword ptr [ebp-8]
 004C1066    call        004C0F90
 004C106B    mov         edx,dword ptr [ebp-4]
 004C106E    mov         eax,dword ptr [ebp-8]
 004C1071    call        004C0FEC
 004C1076    pop         ecx
 004C1077    pop         ecx
 004C1078    pop         ebp
 004C1079    ret
*}
end;

//004C107C
constructor sub_004C107C;
begin
{*
 004C107C    push        ebp
 004C107D    mov         ebp,esp
 004C107F    add         esp,0FFFFFFF4
 004C1082    test        dl,dl
>004C1084    je          004C108E
 004C1086    add         esp,0FFFFFFF0
 004C1089    call        @ClassCreate
 004C108E    mov         dword ptr [ebp-0C],ecx
 004C1091    mov         byte ptr [ebp-5],dl
 004C1094    mov         dword ptr [ebp-4],eax
 004C1097    mov         ecx,dword ptr [ebp-0C]
 004C109A    xor         edx,edx
 004C109C    mov         eax,dword ptr [ebp-4]
 004C109F    call        0042A1B0
 004C10A4    mov         dl,1
 004C10A6    mov         eax,[0041D46C];TList
 004C10AB    call        TObject.Create;TList.Create
 004C10B0    mov         edx,dword ptr [ebp-4]
 004C10B3    mov         dword ptr [edx+30],eax;TCustomActionBarColorMap.FActionBars:TList
 004C10B6    mov         eax,dword ptr [ebp-4]
 004C10B9    mov         edx,dword ptr [eax]
 004C10BB    call        dword ptr [edx+38];TCustomActionBarColorMap.sub_004C134C
 004C10BE    mov         eax,dword ptr [ebp-4]
 004C10C1    cmp         byte ptr [ebp-5],0
>004C10C5    je          004C10D6
 004C10C7    call        @AfterConstruction
 004C10CC    pop         dword ptr fs:[0]
 004C10D3    add         esp,0C
 004C10D6    mov         eax,dword ptr [ebp-4]
 004C10D9    mov         esp,ebp
 004C10DB    pop         ebp
 004C10DC    ret
*}
end;

//004C10E0
destructor TCustomActionBarColorMap.Destroy;
begin
{*
 004C10E0    push        ebp
 004C10E1    mov         ebp,esp
 004C10E3    add         esp,0FFFFFFF8
 004C10E6    call        @BeforeDestruction
 004C10EB    mov         byte ptr [ebp-5],dl
 004C10EE    mov         dword ptr [ebp-4],eax
 004C10F1    mov         eax,dword ptr [ebp-4]
 004C10F4    mov         eax,dword ptr [eax+30]
 004C10F7    call        TObject.Free
 004C10FC    mov         dl,byte ptr [ebp-5]
 004C10FF    and         dl,0FC
 004C1102    mov         eax,dword ptr [ebp-4]
 004C1105    call        TComponent.Destroy
 004C110A    cmp         byte ptr [ebp-5],0
>004C110E    jle         004C1118
 004C1110    mov         eax,dword ptr [ebp-4]
 004C1113    call        @ClassDestroy
 004C1118    pop         ecx
 004C1119    pop         ecx
 004C111A    pop         ebp
 004C111B    ret
*}
end;

//004C111C
{*function TXPColorMap.GetDisabledColor:?;
begin
 004C111C    push        ebp
 004C111D    mov         ebp,esp
 004C111F    add         esp,0FFFFFFF8
 004C1122    mov         dword ptr [ebp-4],eax
 004C1125    mov         eax,dword ptr [ebp-4]
 004C1128    mov         eax,dword ptr [eax+44];TXPColorMap.FDisabledColor:TColor
 004C112B    mov         dword ptr [ebp-8],eax
 004C112E    mov         eax,dword ptr [ebp-4]
 004C1131    test        byte ptr [eax+1C],10;TXPColorMap.FComponentState:TComponentState
>004C1135    jne         004C114C
 004C1137    mov         eax,dword ptr [ebp-4]
 004C113A    cmp         dword ptr [eax+44],1FFFFFFF;TXPColorMap.FDisabledColor:TColor
>004C1141    jne         004C114C
 004C1143    mov         eax,dword ptr [ebp-4]
 004C1146    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 004C1149    mov         dword ptr [ebp-8],eax
 004C114C    mov         eax,dword ptr [ebp-8]
 004C114F    pop         ecx
 004C1150    pop         ecx
 004C1151    pop         ebp
 004C1152    ret
end;*}

//004C1154
{*function TXPColorMap.GetUnusedColor:?;
begin
 004C1154    push        ebp
 004C1155    mov         ebp,esp
 004C1157    add         esp,0FFFFFFF8
 004C115A    mov         dword ptr [ebp-4],eax
 004C115D    mov         eax,dword ptr [ebp-4]
 004C1160    cmp         dword ptr [eax+60],20000000;TXPColorMap.FUnusedColor:TColor
>004C1167    jne         004C117E
 004C1169    mov         edx,13
 004C116E    mov         eax,dword ptr [ebp-4]
 004C1171    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 004C1174    call        004AD754
 004C1179    mov         dword ptr [ebp-8],eax
>004C117C    jmp         004C1187
 004C117E    mov         eax,dword ptr [ebp-4]
 004C1181    mov         eax,dword ptr [eax+60];TXPColorMap.FUnusedColor:TColor
 004C1184    mov         dword ptr [ebp-8],eax
 004C1187    mov         eax,dword ptr [ebp-8]
 004C118A    pop         ecx
 004C118B    pop         ecx
 004C118C    pop         ebp
 004C118D    ret
end;*}

//004C1190
{*procedure sub_004C1190(?:?; ?:?);
begin
 004C1190    push        ebp
 004C1191    mov         ebp,esp
 004C1193    add         esp,0FFFFFFF0
 004C1196    mov         byte ptr [ebp-9],cl
 004C1199    mov         dword ptr [ebp-8],edx
 004C119C    mov         dword ptr [ebp-4],eax
 004C119F    mov         cl,byte ptr [ebp-9]
 004C11A2    mov         edx,dword ptr [ebp-8]
 004C11A5    mov         eax,dword ptr [ebp-4]
 004C11A8    call        0042A644
 004C11AD    mov         al,byte ptr [ebp-9]
 004C11B0    dec         al
>004C11B2    jne         004C11EB
 004C11B4    mov         eax,dword ptr [ebp-8]
 004C11B7    mov         edx,dword ptr ds:[4BB79C];TCustomActionBar
 004C11BD    call        @IsClass
 004C11C2    test        al,al
>004C11C4    je          004C11EB
 004C11C6    mov         edx,dword ptr [ebp-8]
 004C11C9    mov         eax,dword ptr [ebp-4]
 004C11CC    mov         eax,dword ptr [eax+30];TCustomActionBarColorMap.FActionBars:TList
 004C11CF    call        004202BC
 004C11D4    mov         dword ptr [ebp-10],eax
 004C11D7    cmp         dword ptr [ebp-10],0FFFFFFFF
>004C11DB    je          004C11EB
 004C11DD    mov         edx,dword ptr [ebp-10]
 004C11E0    mov         eax,dword ptr [ebp-4]
 004C11E3    mov         eax,dword ptr [eax+30];TCustomActionBarColorMap.FActionBars:TList
 004C11E6    call        00420094
 004C11EB    mov         esp,ebp
 004C11ED    pop         ebp
 004C11EE    ret
end;*}

//004C11F0
procedure sub_004C11F0(?:TCustomActionBarColorMap; ?:TCustomActionBar);
begin
{*
 004C11F0    push        ebp
 004C11F1    mov         ebp,esp
 004C11F3    add         esp,0FFFFFFF4
 004C11F6    mov         dword ptr [ebp-8],edx
 004C11F9    mov         dword ptr [ebp-4],eax
 004C11FC    cmp         dword ptr [ebp-8],0
>004C1200    je          004C1232
 004C1202    mov         edx,dword ptr [ebp-8]
 004C1205    mov         eax,dword ptr [ebp-4]
 004C1208    mov         eax,dword ptr [eax+30]
 004C120B    call        004202BC
 004C1210    mov         dword ptr [ebp-0C],eax
 004C1213    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004C1217    je          004C1232
 004C1219    mov         edx,dword ptr [ebp-0C]
 004C121C    mov         eax,dword ptr [ebp-4]
 004C121F    mov         eax,dword ptr [eax+30]
 004C1222    call        00420094
 004C1227    mov         edx,dword ptr [ebp-8]
 004C122A    mov         eax,dword ptr [ebp-4]
 004C122D    call        0042A61C
 004C1232    mov         esp,ebp
 004C1234    pop         ebp
 004C1235    ret
*}
end;

//004C1238
procedure TXPColorMap.SetColor(Value:TColor);
begin
{*
 004C1238    push        ebp
 004C1239    mov         ebp,esp
 004C123B    add         esp,0FFFFFFF8
 004C123E    push        ebx
 004C123F    mov         dword ptr [ebp-8],edx
 004C1242    mov         dword ptr [ebp-4],eax
 004C1245    mov         eax,dword ptr [ebp-4]
 004C1248    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 004C124B    cmp         eax,dword ptr [ebp-8]
>004C124E    je          004C12CC
 004C1250    mov         eax,dword ptr [ebp-8]
 004C1253    mov         edx,dword ptr [ebp-4]
 004C1256    mov         dword ptr [edx+40],eax;TXPColorMap.FColor:TColor
 004C1259    mov         edx,4C0F90;sub_004C0F90
 004C125E    mov         ecx,dword ptr [ebp-8]
 004C1261    mov         eax,dword ptr [ebp-4]
 004C1264    call        004C1360
 004C1269    mov         eax,dword ptr [ebp-4]
 004C126C    cmp         dword ptr [eax+60],20000000;TXPColorMap.FUnusedColor:TColor
>004C1273    jne         004C128B
 004C1275    mov         edx,13
 004C127A    mov         eax,dword ptr [ebp-4]
 004C127D    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 004C1280    call        004AD754
 004C1285    mov         edx,dword ptr [ebp-4]
 004C1288    mov         dword ptr [edx+60],eax;TXPColorMap.FUnusedColor:TColor
 004C128B    mov         eax,dword ptr [ebp-4]
 004C128E    cmp         dword ptr [eax+48],20000000;TXPColorMap.FDisabledFontColor:TColor
>004C1295    jne         004C12AD
 004C1297    mov         edx,0FFFFFFCE
 004C129C    mov         eax,dword ptr [ebp-4]
 004C129F    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 004C12A2    call        004AD82C
 004C12A7    mov         edx,dword ptr [ebp-4]
 004C12AA    mov         dword ptr [edx+48],eax;TXPColorMap.FDisabledFontColor:TColor
 004C12AD    mov         eax,dword ptr [ebp-4]
 004C12B0    cmp         word ptr [eax+8A],0;TXPColorMap.?f8A:word
>004C12B8    je          004C12CC
 004C12BA    mov         ebx,dword ptr [ebp-4]
 004C12BD    mov         edx,dword ptr [ebp-4]
 004C12C0    mov         eax,dword ptr [ebx+8C];TXPColorMap.?f8C:dword
 004C12C6    call        dword ptr [ebx+88];TXPColorMap.FOnColorChange
 004C12CC    pop         ebx
 004C12CD    pop         ecx
 004C12CE    pop         ecx
 004C12CF    pop         ebp
 004C12D0    ret
*}
end;

//004C12D4
procedure TXPColorMap.SetFontColor(Value:TColor);
begin
{*
 004C12D4    push        ebp
 004C12D5    mov         ebp,esp
 004C12D7    add         esp,0FFFFFFF8
 004C12DA    mov         dword ptr [ebp-8],edx
 004C12DD    mov         dword ptr [ebp-4],eax
 004C12E0    mov         eax,dword ptr [ebp-4]
 004C12E3    mov         eax,dword ptr [eax+50];TXPColorMap.FFontColor:TColor
 004C12E6    cmp         eax,dword ptr [ebp-8]
>004C12E9    je          004C1348
 004C12EB    mov         eax,dword ptr [ebp-8]
 004C12EE    mov         edx,dword ptr [ebp-4]
 004C12F1    mov         dword ptr [edx+50],eax;TXPColorMap.FFontColor:TColor
 004C12F4    mov         eax,dword ptr [ebp-4]
 004C12F7    cmp         dword ptr [eax+48],20000000;TXPColorMap.FDisabledFontColor:TColor
>004C12FE    jne         004C1316
 004C1300    mov         edx,0FFFFFFCE
 004C1305    mov         eax,dword ptr [ebp-4]
 004C1308    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 004C130B    call        004AD82C
 004C1310    mov         edx,dword ptr [ebp-4]
 004C1313    mov         dword ptr [edx+48],eax;TXPColorMap.FDisabledFontColor:TColor
 004C1316    mov         eax,dword ptr [ebp-4]
 004C1319    cmp         dword ptr [eax+4C],20000000;TXPColorMap.FDisabledFontShadow:TColor
>004C1320    jne         004C1338
 004C1322    mov         edx,13
 004C1327    mov         eax,dword ptr [ebp-4]
 004C132A    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 004C132D    call        004AD754
 004C1332    mov         edx,dword ptr [ebp-4]
 004C1335    mov         dword ptr [edx+4C],eax;TXPColorMap.FDisabledFontShadow:TColor
 004C1338    mov         edx,4C0FEC;sub_004C0FEC
 004C133D    mov         ecx,dword ptr [ebp-8]
 004C1340    mov         eax,dword ptr [ebp-4]
 004C1343    call        004C1360
 004C1348    pop         ecx
 004C1349    pop         ecx
 004C134A    pop         ebp
 004C134B    ret
*}
end;

//004C134C
procedure sub_004C134C;
begin
{*
 004C134C    push        ebp
 004C134D    mov         ebp,esp
 004C134F    push        ecx
 004C1350    mov         dword ptr [ebp-4],eax
 004C1353    mov         eax,dword ptr [ebp-4]
 004C1356    xor         edx,edx
 004C1358    mov         dword ptr [eax+70],edx;TCustomActionBarColorMap.FDesignFocus:TColor
 004C135B    pop         ecx
 004C135C    pop         ebp
 004C135D    ret
*}
end;

//004C1360
{*procedure sub_004C1360(?:TXPColorMap; ?:?; ?:TColor);
begin
 004C1360    push        ebp
 004C1361    mov         ebp,esp
 004C1363    add         esp,0FFFFFFEC
 004C1366    mov         dword ptr [ebp-14],ecx
 004C1369    mov         dword ptr [ebp-8],edx
 004C136C    mov         dword ptr [ebp-4],eax
 004C136F    mov         eax,dword ptr [ebp-4]
 004C1372    mov         eax,dword ptr [eax+30];TXPColorMap.FActionBars:TList
 004C1375    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004C1378    dec         eax
 004C1379    test        eax,eax
>004C137B    jl          004C13A4
 004C137D    inc         eax
 004C137E    mov         dword ptr [ebp-10],eax
 004C1381    mov         dword ptr [ebp-0C],0
 004C1388    mov         edx,dword ptr [ebp-0C]
 004C138B    mov         eax,dword ptr [ebp-4]
 004C138E    mov         eax,dword ptr [eax+30];TXPColorMap.FActionBars:TList
 004C1391    call        TList.Get
 004C1396    mov         edx,dword ptr [ebp-4]
 004C1399    call        dword ptr [ebp-8]
 004C139C    inc         dword ptr [ebp-0C]
 004C139F    dec         dword ptr [ebp-10]
>004C13A2    jne         004C1388
 004C13A4    mov         esp,ebp
 004C13A6    pop         ebp
 004C13A7    ret
end;*}

//004C13A8
{*procedure sub_004C13A8(?:?);
begin
 004C13A8    push        ebp
 004C13A9    mov         ebp,esp
 004C13AB    add         esp,0FFFFFFF8
 004C13AE    mov         dword ptr [ebp-8],edx
 004C13B1    mov         dword ptr [ebp-4],eax
 004C13B4    mov         eax,dword ptr [ebp-8]
 004C13B7    mov         edx,dword ptr ds:[4BB6C4];TCustomActionBarColorMap
 004C13BD    call        @IsClass
 004C13C2    test        al,al
>004C13C4    je          004C14F8
 004C13CA    mov         eax,dword ptr [ebp-8]
 004C13CD    mov         eax,dword ptr [eax+34]
 004C13D0    mov         edx,dword ptr [ebp-4]
 004C13D3    mov         dword ptr [edx+34],eax;TCustomActionBarColorMap.FBtnSelectedColor:TColor
 004C13D6    mov         eax,dword ptr [ebp-8]
 004C13D9    mov         eax,dword ptr [eax+38]
 004C13DC    mov         edx,dword ptr [ebp-4]
 004C13DF    mov         dword ptr [edx+38],eax;TCustomActionBarColorMap.FBtnFrameColor:TColor
 004C13E2    mov         eax,dword ptr [ebp-8]
 004C13E5    mov         eax,dword ptr [eax+3C]
 004C13E8    mov         edx,dword ptr [ebp-4]
 004C13EB    mov         dword ptr [edx+3C],eax;TCustomActionBarColorMap.FBtnSelectedFont:TColor
 004C13EE    mov         eax,dword ptr [ebp-8]
 004C13F1    mov         edx,dword ptr [eax+40]
 004C13F4    mov         eax,dword ptr [ebp-4]
 004C13F7    mov         ecx,dword ptr [eax]
 004C13F9    call        dword ptr [ecx+30];TXPColorMap.SetColor
 004C13FC    mov         eax,dword ptr [ebp-8]
 004C13FF    mov         eax,dword ptr [eax+70]
 004C1402    mov         edx,dword ptr [ebp-4]
 004C1405    mov         dword ptr [edx+70],eax;TCustomActionBarColorMap.FDesignFocus:TColor
 004C1408    mov         eax,dword ptr [ebp-8]
 004C140B    call        TXPColorMap.GetDisabledColor
 004C1410    mov         edx,dword ptr [ebp-4]
 004C1413    mov         dword ptr [edx+44],eax;TCustomActionBarColorMap.FDisabledColor:TColor
 004C1416    mov         eax,dword ptr [ebp-8]
 004C1419    mov         eax,dword ptr [eax+48]
 004C141C    mov         edx,dword ptr [ebp-4]
 004C141F    mov         dword ptr [edx+48],eax;TCustomActionBarColorMap.FDisabledFontColor:TColor
 004C1422    mov         eax,dword ptr [ebp-8]
 004C1425    mov         eax,dword ptr [eax+4C]
 004C1428    mov         edx,dword ptr [ebp-4]
 004C142B    mov         dword ptr [edx+4C],eax;TCustomActionBarColorMap.FDisabledFontShadow:TColor
 004C142E    mov         eax,dword ptr [ebp-8]
 004C1431    mov         edx,dword ptr [eax+50]
 004C1434    mov         eax,dword ptr [ebp-4]
 004C1437    mov         ecx,dword ptr [eax]
 004C1439    call        dword ptr [ecx+34];TXPColorMap.SetFontColor
 004C143C    mov         eax,dword ptr [ebp-8]
 004C143F    mov         eax,dword ptr [eax+78]
 004C1442    mov         edx,dword ptr [ebp-4]
 004C1445    mov         dword ptr [edx+78],eax;TCustomActionBarColorMap.FFrameTopLeftInner:TColor
 004C1448    mov         eax,dword ptr [ebp-8]
 004C144B    mov         eax,dword ptr [eax+7C]
 004C144E    mov         edx,dword ptr [ebp-4]
 004C1451    mov         dword ptr [edx+7C],eax;TCustomActionBarColorMap.FFrameTopLeftOuter:TColor
 004C1454    mov         eax,dword ptr [ebp-8]
 004C1457    mov         eax,dword ptr [eax+80]
 004C145D    mov         edx,dword ptr [ebp-4]
 004C1460    mov         dword ptr [edx+80],eax;TCustomActionBarColorMap.FFrameBottomRightInner:TColor
 004C1466    mov         eax,dword ptr [ebp-8]
 004C1469    mov         eax,dword ptr [eax+84]
 004C146F    mov         edx,dword ptr [ebp-4]
 004C1472    mov         dword ptr [edx+84],eax;TCustomActionBarColorMap.FFrameBottomRightOuter:TColor
 004C1478    mov         eax,dword ptr [ebp-8]
 004C147B    mov         eax,dword ptr [eax+6C]
 004C147E    mov         edx,dword ptr [ebp-4]
 004C1481    mov         dword ptr [edx+6C],eax;TCustomActionBarColorMap.FHighlightColor:TColor
 004C1484    mov         eax,dword ptr [ebp-8]
 004C1487    mov         eax,dword ptr [eax+54]
 004C148A    mov         edx,dword ptr [ebp-4]
 004C148D    mov         dword ptr [edx+54],eax;TCustomActionBarColorMap.FHotColor:TColor
 004C1490    mov         eax,dword ptr [ebp-8]
 004C1493    mov         eax,dword ptr [eax+5C]
 004C1496    mov         edx,dword ptr [ebp-4]
 004C1499    mov         dword ptr [edx+5C],eax;TCustomActionBarColorMap.FHotFontColor:TColor
 004C149C    mov         eax,dword ptr [ebp-8]
 004C149F    mov         eax,dword ptr [eax+74]
 004C14A2    mov         edx,dword ptr [ebp-4]
 004C14A5    mov         dword ptr [edx+74],eax;TCustomActionBarColorMap.FMenuColor:TColor
 004C14A8    mov         eax,dword ptr [ebp-8]
 004C14AB    mov         eax,dword ptr [eax+68]
 004C14AE    mov         edx,dword ptr [ebp-4]
 004C14B1    mov         dword ptr [edx+68],eax;TCustomActionBarColorMap.FSelectedColor:TColor
 004C14B4    mov         eax,dword ptr [ebp-8]
 004C14B7    mov         eax,dword ptr [eax+64]
 004C14BA    mov         edx,dword ptr [ebp-4]
 004C14BD    mov         dword ptr [edx+64],eax;TCustomActionBarColorMap.FSelectedFontColor:TColor
 004C14C0    mov         eax,dword ptr [ebp-8]
 004C14C3    mov         eax,dword ptr [eax+58]
 004C14C6    mov         edx,dword ptr [ebp-4]
 004C14C9    mov         dword ptr [edx+58],eax;TCustomActionBarColorMap.FShadowColor:TColor
 004C14CC    mov         eax,dword ptr [ebp-8]
 004C14CF    call        TXPColorMap.GetUnusedColor
 004C14D4    mov         edx,dword ptr [ebp-4]
 004C14D7    mov         dword ptr [edx+60],eax;TCustomActionBarColorMap.FUnusedColor:TColor
 004C14DA    mov         eax,dword ptr [ebp-8]
 004C14DD    mov         edx,dword ptr [ebp-4]
 004C14E0    mov         ecx,dword ptr [eax+88]
 004C14E6    mov         dword ptr [edx+88],ecx;TCustomActionBarColorMap.FOnColorChange:TNotifyEvent
 004C14EC    mov         ecx,dword ptr [eax+8C]
 004C14F2    mov         dword ptr [edx+8C],ecx;TCustomActionBarColorMap.?f8C:dword
 004C14F8    pop         ecx
 004C14F9    pop         ecx
 004C14FA    pop         ebp
 004C14FB    ret
end;*}

//004C14FC
constructor sub_004C14FC;
begin
{*
 004C14FC    push        ebp
 004C14FD    mov         ebp,esp
 004C14FF    add         esp,0FFFFFFF4
 004C1502    test        dl,dl
>004C1504    je          004C150E
 004C1506    add         esp,0FFFFFFF0
 004C1509    call        @ClassCreate
 004C150E    mov         dword ptr [ebp-0C],ecx
 004C1511    mov         byte ptr [ebp-5],dl
 004C1514    mov         dword ptr [ebp-4],eax
 004C1517    mov         ecx,dword ptr [ebp-0C]
 004C151A    xor         edx,edx
 004C151C    mov         eax,dword ptr [ebp-4]
 004C151F    call        0043C51C
 004C1524    mov         eax,dword ptr [ebp-4]
 004C1527    mov         byte ptr [eax+224],1;TCustomActionBar.FDesignable:Boolean
 004C152E    mov         eax,dword ptr [ebp-4]
 004C1531    call        004C4260
 004C1536    mov         edx,eax
 004C1538    mov         eax,dword ptr [ebp-4]
 004C153B    mov         ecx,dword ptr [eax]
 004C153D    call        dword ptr [ecx+12C];TCustomActionBar.sub_004C4180
 004C1543    mov         eax,dword ptr [ebp-4]
 004C1546    xor         edx,edx
 004C1548    mov         dword ptr [eax+214],edx;TCustomActionBar.FActionManager:TCustomActionManager
 004C154E    mov         eax,dword ptr [ebp-4]
 004C1551    xor         edx,edx
 004C1553    mov         dword ptr [eax+210],edx;TCustomActionBar.FActionClient:TActionClient
 004C1559    mov         dl,1
 004C155B    mov         eax,[0047D3C4];TControlCanvas
 004C1560    call        TCanvas.Create;TControlCanvas.Create
 004C1565    mov         edx,dword ptr [ebp-4]
 004C1568    mov         dword ptr [edx+21C],eax;TCustomActionBar.FCanvas:TCanvas
 004C156E    mov         eax,dword ptr [ebp-4]
 004C1571    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C1577    mov         edx,dword ptr [ebp-4]
 004C157A    call        00481B3C
 004C157F    mov         eax,dword ptr [ebp-4]
 004C1582    mov         eax,dword ptr [eax+50];TCustomActionBar.FControlStyle:TControlStyle
 004C1585    or          eax,dword ptr ds:[4C15F8];0xE8 gvar_004C15F8
 004C158B    mov         edx,dword ptr [ebp-4]
 004C158E    mov         dword ptr [edx+50],eax;TCustomActionBar.FControlStyle:TControlStyle
 004C1591    mov         edx,32
 004C1596    mov         eax,dword ptr [ebp-4]
 004C1599    call        TToolButton.SetHeight
 004C159E    mov         edx,96
 004C15A3    mov         eax,dword ptr [ebp-4]
 004C15A6    call        TSplitter.SetWidth
 004C15AB    mov         eax,dword ptr [ebp-4]
 004C15AE    mov         byte ptr [eax+1F8],1;TCustomActionBar.FDoubleBuffered:Boolean
 004C15B5    mov         eax,dword ptr [ebp-4]
 004C15B8    mov         dword ptr [eax+254],1;TCustomActionBar.FVertMargin:Integer
 004C15C2    mov         eax,dword ptr [ebp-4]
 004C15C5    xor         edx,edx
 004C15C7    mov         dword ptr [eax+258],edx;TCustomActionBar.FHorzMargin:Integer
 004C15CD    mov         eax,dword ptr [ebp-4]
 004C15D0    mov         byte ptr [eax+218],1;TCustomActionBar.FAllowHiding:Boolean
 004C15D7    mov         eax,dword ptr [ebp-4]
 004C15DA    cmp         byte ptr [ebp-5],0
>004C15DE    je          004C15EF
 004C15E0    call        @AfterConstruction
 004C15E5    pop         dword ptr fs:[0]
 004C15EC    add         esp,0C
 004C15EF    mov         eax,dword ptr [ebp-4]
 004C15F2    mov         esp,ebp
 004C15F4    pop         ebp
 004C15F5    ret
*}
end;

//004C15FC
destructor TCustomActionBar.Destroy;
begin
{*
 004C15FC    push        ebp
 004C15FD    mov         ebp,esp
 004C15FF    add         esp,0FFFFFFF8
 004C1602    call        @BeforeDestruction
 004C1607    mov         byte ptr [ebp-5],dl
 004C160A    mov         dword ptr [ebp-4],eax
 004C160D    xor         edx,edx
 004C160F    mov         eax,dword ptr [ebp-4]
 004C1612    call        004C3608
 004C1617    mov         eax,dword ptr [ebp-4]
 004C161A    mov         eax,dword ptr [eax+21C]
 004C1620    call        TObject.Free
 004C1625    mov         eax,dword ptr [ebp-4]
 004C1628    add         eax,274
 004C162D    call        FreeAndNil
 004C1632    mov         dl,byte ptr [ebp-5]
 004C1635    and         dl,0FC
 004C1638    mov         eax,dword ptr [ebp-4]
 004C163B    call        TWinControl.Destroy
 004C1640    cmp         byte ptr [ebp-5],0
>004C1644    jle         004C164E
 004C1646    mov         eax,dword ptr [ebp-4]
 004C1649    call        @ClassDestroy
 004C164E    pop         ecx
 004C164F    pop         ecx
 004C1650    pop         ebp
 004C1651    ret
*}
end;

//004C1654
procedure TCustomActionBar.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 004C1654    push        ebp
 004C1655    mov         ebp,esp
 004C1657    add         esp,0FFFFFFF4
 004C165A    mov         dword ptr [ebp-0C],ecx
 004C165D    mov         dword ptr [ebp-8],edx
 004C1660    mov         dword ptr [ebp-4],eax
 004C1663    mov         eax,dword ptr [ebp-4]
 004C1666    mov         dword ptr [eax+24C],1;TCustomActionBar.FHRowCount:Integer
 004C1670    mov         eax,dword ptr [ebp-4]
 004C1673    mov         dword ptr [eax+250],1;TCustomActionBar.FVRowCount:Integer
 004C167D    mov         eax,dword ptr [ebp-4]
 004C1680    xor         edx,edx
 004C1682    mov         dword ptr [eax+26C],edx;TCustomActionBar.FWidest:Integer
 004C1688    mov         eax,dword ptr [ebp-4]
 004C168B    xor         edx,edx
 004C168D    mov         dword ptr [eax+268],edx;TCustomActionBar.FTallest:Integer
 004C1693    mov         ecx,dword ptr [ebp-0C]
 004C1696    mov         edx,dword ptr [ebp-8]
 004C1699    mov         eax,dword ptr [ebp-4]
 004C169C    call        TWinControl.AlignControls
 004C16A1    mov         esp,ebp
 004C16A3    pop         ebp
 004C16A4    ret
*}
end;

//004C16A8
procedure sub_004C16A8;
begin
{*
 004C16A8    push        ebp
 004C16A9    mov         ebp,esp
 004C16AB    push        ecx
 004C16AC    mov         dword ptr [ebp-4],eax
 004C16AF    pop         ecx
 004C16B0    pop         ebp
 004C16B1    ret
*}
end;

//004C16B4
{*function sub_004C16B4(?:TCustomActionBar; ?:?; ?:?; ?:?):?;
begin
 004C16B4    push        ebp
 004C16B5    mov         ebp,esp
 004C16B7    add         esp,0FFFFFFE0
 004C16BA    mov         dword ptr [ebp-0C],ecx
 004C16BD    mov         dword ptr [ebp-8],edx
 004C16C0    mov         dword ptr [ebp-4],eax
 004C16C3    cmp         dword ptr [ebp-8],0
>004C16C7    je          004C1799
 004C16CD    mov         eax,dword ptr [ebp-8]
 004C16D0    cmp         dword ptr [eax+16C],0
>004C16D7    je          004C1799
 004C16DD    mov         eax,dword ptr [ebp-8]
 004C16E0    mov         eax,dword ptr [eax+16C]
 004C16E6    call        TCollectionItem.GetIndex
 004C16EB    mov         dword ptr [ebp-10],eax
 004C16EE    mov         eax,dword ptr [ebp-0C]
 004C16F1    mov         edx,dword ptr [ebp-8]
 004C16F4    cmp         eax,dword ptr [edx+40]
>004C16F7    jge         004C1709
 004C16F9    mov         eax,dword ptr [ebp-4]
 004C16FC    mov         al,byte ptr [eax+227]
 004C1702    test        al,al
>004C1704    jne         004C1709
 004C1706    dec         dword ptr [ebp-10]
 004C1709    mov         eax,dword ptr [ebp+8]
 004C170C    mov         edx,dword ptr [ebp-8]
 004C170F    cmp         eax,dword ptr [edx+44]
>004C1712    jge         004C1724
 004C1714    mov         eax,dword ptr [ebp-4]
 004C1717    mov         al,byte ptr [eax+227]
 004C171D    sub         al,2
>004C171F    jne         004C1724
 004C1721    dec         dword ptr [ebp-10]
 004C1724    lea         edx,[ebp-20]
 004C1727    mov         eax,dword ptr [ebp-8]
 004C172A    call        00482ECC
 004C172F    mov         eax,dword ptr [ebp-18]
 004C1732    cmp         eax,dword ptr [ebp-0C]
>004C1735    jge         004C1747
 004C1737    mov         eax,dword ptr [ebp-4]
 004C173A    mov         al,byte ptr [eax+227]
 004C1740    test        al,al
>004C1742    jne         004C1747
 004C1744    inc         dword ptr [ebp-10]
 004C1747    lea         edx,[ebp-20]
 004C174A    mov         eax,dword ptr [ebp-8]
 004C174D    call        00482ECC
 004C1752    mov         eax,dword ptr [ebp-14]
 004C1755    cmp         eax,dword ptr [ebp+8]
>004C1758    jge         004C176A
 004C175A    mov         eax,dword ptr [ebp-4]
 004C175D    mov         al,byte ptr [eax+227]
 004C1763    sub         al,2
>004C1765    jne         004C176A
 004C1767    inc         dword ptr [ebp-10]
 004C176A    mov         eax,dword ptr [ebp-4]
 004C176D    call        004C2EE8
 004C1772    call        0042158C
 004C1777    cmp         eax,dword ptr [ebp-10]
>004C177A    jge         004C178C
 004C177C    mov         eax,dword ptr [ebp-4]
 004C177F    call        004C2EE8
 004C1784    call        0042158C
 004C1789    mov         dword ptr [ebp-10],eax
 004C178C    cmp         dword ptr [ebp-10],0
>004C1790    jge         004C17BC
 004C1792    xor         eax,eax
 004C1794    mov         dword ptr [ebp-10],eax
>004C1797    jmp         004C17BC
 004C1799    mov         eax,dword ptr [ebp-4]
 004C179C    call        004C2F3C
 004C17A1    test        al,al
>004C17A3    je          004C17B7
 004C17A5    mov         eax,dword ptr [ebp-4]
 004C17A8    call        004C2EE8
 004C17AD    call        0042158C
 004C17B2    mov         dword ptr [ebp-10],eax
>004C17B5    jmp         004C17BC
 004C17B7    xor         eax,eax
 004C17B9    mov         dword ptr [ebp-10],eax
 004C17BC    mov         eax,dword ptr [ebp-10]
 004C17BF    mov         esp,ebp
 004C17C1    pop         ebp
 004C17C2    ret         4
end;*}

//004C17C8
procedure sub_004C17C8;
begin
{*
 004C17C8    push        ebp
 004C17C9    mov         ebp,esp
 004C17CB    add         esp,0FFFFFFF8
 004C17CE    mov         dword ptr [ebp-4],eax
 004C17D1    mov         eax,dword ptr [ebp-4]
 004C17D4    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C17DB    je          004C1859
 004C17DD    mov         eax,dword ptr [ebp-4]
 004C17E0    call        TWinControl.DisableAlign
 004C17E5    xor         eax,eax
 004C17E7    push        ebp
 004C17E8    push        4C1852
 004C17ED    push        dword ptr fs:[eax]
 004C17F0    mov         dword ptr fs:[eax],esp
 004C17F3    mov         eax,dword ptr [ebp-4]
 004C17F6    mov         edx,dword ptr [eax]
 004C17F8    call        dword ptr [edx+114];TCustomActionBar.sub_004C2FA8
 004C17FE    dec         eax
 004C17FF    cmp         eax,0
>004C1802    jl          004C1823
 004C1804    mov         dword ptr [ebp-8],eax
 004C1807    mov         edx,dword ptr [ebp-8]
 004C180A    mov         eax,dword ptr [ebp-4]
 004C180D    mov         ecx,dword ptr [eax]
 004C180F    call        dword ptr [ecx+108];TCustomActionBar.sub_004C2DB0
 004C1815    call        TObject.Free
 004C181A    dec         dword ptr [ebp-8]
 004C181D    cmp         dword ptr [ebp-8],0FFFFFFFF
>004C1821    jne         004C1807
 004C1823    mov         eax,dword ptr [ebp-4]
 004C1826    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C182C    call        004BE448
 004C1831    mov         eax,dword ptr [ebp-4]
 004C1834    xor         edx,edx
 004C1836    mov         dword ptr [eax+210],edx;TCustomActionBar.FActionClient:TActionClient
 004C183C    xor         eax,eax
 004C183E    pop         edx
 004C183F    pop         ecx
 004C1840    pop         ecx
 004C1841    mov         dword ptr fs:[eax],edx
 004C1844    push        4C1859
 004C1849    mov         eax,dword ptr [ebp-4]
 004C184C    call        TWinControl.EnableAlign
 004C1851    ret
>004C1852    jmp         @HandleFinally
>004C1857    jmp         004C1849
 004C1859    pop         ecx
 004C185A    pop         ecx
 004C185B    pop         ebp
 004C185C    ret
*}
end;

//004C1860
{*procedure TCustomActionBar.CMEnabledChanged(?:?);
begin
 004C1860    push        ebp
 004C1861    mov         ebp,esp
 004C1863    add         esp,0FFFFFFF8
 004C1866    mov         dword ptr [ebp-8],edx
 004C1869    mov         dword ptr [ebp-4],eax
 004C186C    mov         edx,dword ptr [ebp-8]
 004C186F    mov         eax,dword ptr [ebp-4]
 004C1872    call        TWinControl.CMEnabledChanged
 004C1877    mov         edx,dword ptr [ebp-8]
 004C187A    mov         eax,dword ptr [ebp-4]
 004C187D    call        00487E84
 004C1882    pop         ecx
 004C1883    pop         ecx
 004C1884    pop         ebp
 004C1885    ret
end;*}

//004C1888
{*function sub_004C1888(?:?):?;
begin
 004C1888    push        ebp
 004C1889    mov         ebp,esp
 004C188B    add         esp,0FFFFFFF0
 004C188E    push        esi
 004C188F    mov         dword ptr [ebp-8],edx
 004C1892    mov         dword ptr [ebp-4],eax
 004C1895    mov         eax,dword ptr [ebp-8]
 004C1898    cmp         dword ptr [eax+40],0
>004C189C    je          004C18B3
 004C189E    mov         eax,dword ptr [ebp-8]
 004C18A1    mov         eax,dword ptr [eax+40]
 004C18A4    call        TObject.Free
 004C18A9    xor         edx,edx
 004C18AB    mov         eax,dword ptr [ebp-8]
 004C18AE    call        004C0748
 004C18B3    xor         eax,eax
 004C18B5    mov         dword ptr [ebp-0C],eax
 004C18B8    mov         edx,dword ptr [ebp-8]
 004C18BB    mov         eax,dword ptr [ebp-4]
 004C18BE    mov         si,0FFB3
 004C18C2    call        @CallDynaInst;TCustomActionBar.sub_004C25EC
 004C18C7    mov         dword ptr [ebp-10],eax
 004C18CA    cmp         dword ptr [ebp-10],0
>004C18CE    je          004C198B
 004C18D4    mov         eax,dword ptr [ebp-4]
 004C18D7    call        TWinControl.DisableAlign
 004C18DC    xor         eax,eax
 004C18DE    push        ebp
 004C18DF    push        4C1984
 004C18E4    push        dword ptr fs:[eax]
 004C18E7    mov         dword ptr fs:[eax],esp
 004C18EA    mov         ecx,dword ptr [ebp-4]
 004C18ED    mov         dl,1
 004C18EF    mov         eax,dword ptr [ebp-10]
 004C18F2    call        dword ptr [eax+2C]
 004C18F5    mov         dword ptr [ebp-0C],eax
 004C18F8    mov         eax,dword ptr [ebp-4]
 004C18FB    mov         edx,dword ptr [eax]
 004C18FD    call        dword ptr [edx+104];TCustomActionBar.sub_004C3B84
 004C1903    and         eax,7F
 004C1906    mov         dl,byte ptr [eax+56CB84]
 004C190C    mov         eax,dword ptr [ebp-0C]
 004C190F    mov         ecx,dword ptr [eax]
 004C1911    call        dword ptr [ecx+60]
 004C1914    mov         dl,6
 004C1916    mov         eax,dword ptr [ebp-0C]
 004C1919    call        TImage.SetAlign
 004C191E    mov         eax,dword ptr [ebp-0C]
 004C1921    mov         edx,dword ptr [ebp-4]
 004C1924    mov         dword ptr [eax+168],edx
 004C192A    mov         edx,dword ptr [ebp-4]
 004C192D    mov         eax,dword ptr [ebp-0C]
 004C1930    mov         ecx,dword ptr [eax]
 004C1932    call        dword ptr [ecx+68]
 004C1935    mov         eax,dword ptr [ebp-4]
 004C1938    mov         dl,byte ptr [eax+5F];TCustomActionBar.FBiDiMode:TBiDiMode
 004C193B    mov         eax,dword ptr [ebp-0C]
 004C193E    mov         ecx,dword ptr [eax]
 004C1940    call        dword ptr [ecx+70]
 004C1943    mov         edx,dword ptr [ebp-8]
 004C1946    mov         eax,dword ptr [ebp-0C]
 004C1949    mov         ecx,dword ptr [eax]
 004C194B    call        dword ptr [ecx+0D0]
 004C1951    mov         eax,dword ptr [ebp-0C]
 004C1954    mov         eax,dword ptr [eax+16C]
 004C195A    mov         edx,dword ptr [ebp-0C]
 004C195D    call        004C0748
 004C1962    mov         eax,dword ptr [ebp-0C]
 004C1965    mov         si,0FFD0
 004C1969    call        @CallDynaInst
 004C196E    xor         eax,eax
 004C1970    pop         edx
 004C1971    pop         ecx
 004C1972    pop         ecx
 004C1973    mov         dword ptr fs:[eax],edx
 004C1976    push        4C198B
 004C197B    mov         eax,dword ptr [ebp-4]
 004C197E    call        TWinControl.EnableAlign
 004C1983    ret
>004C1984    jmp         @HandleFinally
>004C1989    jmp         004C197B
 004C198B    mov         eax,dword ptr [ebp-0C]
 004C198E    pop         esi
 004C198F    mov         esp,ebp
 004C1991    pop         ebp
 004C1992    ret
end;*}

//004C1994
procedure sub_004C1994;
begin
{*
 004C1994    push        ebp
 004C1995    mov         ebp,esp
 004C1997    add         esp,0FFFFFFEC
 004C199A    mov         dword ptr [ebp-4],eax
 004C199D    mov         eax,dword ptr [ebp-4]
 004C19A0    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C19A7    je          004C1AA9
 004C19AD    mov         eax,dword ptr [ebp-4]
 004C19B0    call        TWinControl.DisableAlign
 004C19B5    xor         eax,eax
 004C19B7    push        ebp
 004C19B8    push        4C1AA2
 004C19BD    push        dword ptr fs:[eax]
 004C19C0    mov         dword ptr fs:[eax],esp
 004C19C3    mov         eax,dword ptr [ebp-4]
 004C19C6    cmp         byte ptr [eax+270],0;TCustomActionBar.FContextBar:Boolean
>004C19CD    je          004C19E2
 004C19CF    mov         eax,dword ptr [ebp-4]
 004C19D2    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C19D8    call        TActionClient.GetContextItems
 004C19DD    mov         dword ptr [ebp-10],eax
>004C19E0    jmp         004C19F3
 004C19E2    mov         eax,dword ptr [ebp-4]
 004C19E5    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C19EB    call        TActionClient.GetItems
 004C19F0    mov         dword ptr [ebp-10],eax
 004C19F3    mov         eax,dword ptr [ebp-10]
 004C19F6    call        0042158C
 004C19FB    not         eax
 004C19FD    test        eax,eax
>004C19FF    jne         004C1A0B
 004C1A01    call        @TryFinallyExit
>004C1A06    jmp         004C1AA9
 004C1A0B    mov         eax,dword ptr [ebp-10]
 004C1A0E    call        0042158C
 004C1A13    dec         eax
 004C1A14    test        eax,eax
>004C1A16    jl          004C1A8C
 004C1A18    inc         eax
 004C1A19    mov         dword ptr [ebp-14],eax
 004C1A1C    mov         dword ptr [ebp-8],0
 004C1A23    mov         edx,dword ptr [ebp-8]
 004C1A26    mov         eax,dword ptr [ebp-10]
 004C1A29    call        004BF258
 004C1A2E    mov         edx,eax
 004C1A30    mov         eax,dword ptr [ebp-4]
 004C1A33    mov         ecx,dword ptr [eax]
 004C1A35    call        dword ptr [ecx+0D4];TCustomActionBar.sub_004C1888
 004C1A3B    mov         dword ptr [ebp-0C],eax
 004C1A3E    cmp         dword ptr [ebp-0C],0
>004C1A42    je          004C1A84
 004C1A44    mov         eax,dword ptr [ebp-4]
 004C1A47    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C1A4D    call        004BE6B4
 004C1A52    test        al,al
>004C1A54    je          004C1A68
 004C1A56    mov         eax,dword ptr [ebp-4]
 004C1A59    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C1A5F    mov         al,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 004C1A62    add         al,0FD
 004C1A64    sub         al,2
>004C1A66    jae         004C1A6C
 004C1A68    xor         edx,edx
>004C1A6A    jmp         004C1A6E
 004C1A6C    mov         dl,1
 004C1A6E    mov         eax,dword ptr [ebp-0C]
 004C1A71    call        004C5FF4
 004C1A76    mov         edx,dword ptr [ebp-0C]
 004C1A79    mov         eax,dword ptr [ebp-4]
 004C1A7C    mov         ecx,dword ptr [eax]
 004C1A7E    call        dword ptr [ecx+0DC];TCustomActionBar.sub_004C263C
 004C1A84    inc         dword ptr [ebp-8]
 004C1A87    dec         dword ptr [ebp-14]
>004C1A8A    jne         004C1A23
 004C1A8C    xor         eax,eax
 004C1A8E    pop         edx
 004C1A8F    pop         ecx
 004C1A90    pop         ecx
 004C1A91    mov         dword ptr fs:[eax],edx
 004C1A94    push        4C1AA9
 004C1A99    mov         eax,dword ptr [ebp-4]
 004C1A9C    call        TWinControl.EnableAlign
 004C1AA1    ret
>004C1AA2    jmp         @HandleFinally
>004C1AA7    jmp         004C1A99
 004C1AA9    mov         esp,ebp
 004C1AAB    pop         ebp
 004C1AAC    ret
*}
end;

//004C1AB0
{*function sub_004C1AB0(?:?; ?:?):?;
begin
 004C1AB0    push        ebp
 004C1AB1    mov         ebp,esp
 004C1AB3    add         esp,0FFFFFFF0
 004C1AB6    push        ebx
 004C1AB7    mov         dword ptr [ebp-0C],ecx
 004C1ABA    mov         dword ptr [ebp-8],edx
 004C1ABD    mov         dword ptr [ebp-4],eax
 004C1AC0    mov         eax,dword ptr [ebp-8]
 004C1AC3    mov         edx,dword ptr ds:[4BB9B8];TCustomActionControl
 004C1AC9    call        @IsClass
 004C1ACE    test        al,al
>004C1AD0    je          004C1AE4
 004C1AD2    mov         eax,dword ptr [ebp-0C]
 004C1AD5    mov         edx,dword ptr ds:[4BB9B8];TCustomActionControl
 004C1ADB    call        @IsClass
 004C1AE0    test        al,al
>004C1AE2    jne         004C1AE8
 004C1AE4    xor         eax,eax
>004C1AE6    jmp         004C1AEA
 004C1AE8    mov         al,1
 004C1AEA    mov         byte ptr [ebp-0D],al
 004C1AED    cmp         byte ptr [ebp-0D],0
>004C1AF1    je          004C1C55
 004C1AF7    mov         eax,dword ptr [ebp-8]
 004C1AFA    cmp         dword ptr [eax+16C],0
>004C1B01    je          004C1B35
 004C1B03    mov         eax,dword ptr [ebp-0C]
 004C1B06    cmp         dword ptr [eax+16C],0
>004C1B0D    je          004C1B35
 004C1B0F    mov         eax,dword ptr [ebp-8]
 004C1B12    mov         eax,dword ptr [eax+16C]
 004C1B18    call        TCollectionItem.GetIndex
 004C1B1D    mov         ebx,eax
 004C1B1F    mov         eax,dword ptr [ebp-0C]
 004C1B22    mov         eax,dword ptr [eax+16C]
 004C1B28    call        TCollectionItem.GetIndex
 004C1B2D    cmp         ebx,eax
 004C1B2F    setl        byte ptr [ebp-0D]
>004C1B33    jmp         004C1B39
 004C1B35    mov         byte ptr [ebp-0D],0
 004C1B39    mov         eax,dword ptr [ebp-8]
 004C1B3C    cmp         byte ptr [eax+57],0
>004C1B40    je          004C1B62
 004C1B42    mov         eax,dword ptr [ebp-8]
 004C1B45    mov         eax,dword ptr [eax+4C]
 004C1B48    mov         edx,dword ptr [ebp-4]
 004C1B4B    cmp         eax,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
>004C1B51    jle         004C1B62
 004C1B53    mov         eax,dword ptr [ebp-8]
 004C1B56    mov         eax,dword ptr [eax+4C]
 004C1B59    mov         edx,dword ptr [ebp-4]
 004C1B5C    mov         dword ptr [edx+268],eax;TCustomActionBar.FTallest:Integer
 004C1B62    mov         eax,dword ptr [ebp-8]
 004C1B65    cmp         byte ptr [eax+57],0
>004C1B69    je          004C1B8B
 004C1B6B    mov         eax,dword ptr [ebp-8]
 004C1B6E    mov         eax,dword ptr [eax+48]
 004C1B71    mov         edx,dword ptr [ebp-4]
 004C1B74    cmp         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
>004C1B7A    jle         004C1B8B
 004C1B7C    mov         eax,dword ptr [ebp-8]
 004C1B7F    mov         eax,dword ptr [eax+48]
 004C1B82    mov         edx,dword ptr [ebp-4]
 004C1B85    mov         dword ptr [edx+26C],eax;TCustomActionBar.FWidest:Integer
 004C1B8B    mov         eax,dword ptr [ebp-0C]
 004C1B8E    cmp         byte ptr [eax+57],0
>004C1B92    je          004C1BB4
 004C1B94    mov         eax,dword ptr [ebp-0C]
 004C1B97    mov         eax,dword ptr [eax+4C]
 004C1B9A    mov         edx,dword ptr [ebp-4]
 004C1B9D    cmp         eax,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
>004C1BA3    jle         004C1BB4
 004C1BA5    mov         eax,dword ptr [ebp-0C]
 004C1BA8    mov         eax,dword ptr [eax+4C]
 004C1BAB    mov         edx,dword ptr [ebp-4]
 004C1BAE    mov         dword ptr [edx+268],eax;TCustomActionBar.FTallest:Integer
 004C1BB4    mov         eax,dword ptr [ebp-0C]
 004C1BB7    cmp         byte ptr [eax+57],0
>004C1BBB    je          004C1BDD
 004C1BBD    mov         eax,dword ptr [ebp-0C]
 004C1BC0    mov         eax,dword ptr [eax+48]
 004C1BC3    mov         edx,dword ptr [ebp-4]
 004C1BC6    cmp         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
>004C1BCC    jle         004C1BDD
 004C1BCE    mov         eax,dword ptr [ebp-0C]
 004C1BD1    mov         eax,dword ptr [eax+48]
 004C1BD4    mov         edx,dword ptr [ebp-4]
 004C1BD7    mov         dword ptr [edx+26C],eax;TCustomActionBar.FWidest:Integer
 004C1BDD    mov         eax,dword ptr [ebp-4]
 004C1BE0    mov         edx,dword ptr [eax]
 004C1BE2    call        dword ptr [edx+54];TCustomActionBar.sub_004866DC
 004C1BE5    test        al,al
>004C1BE7    je          004C1C55
 004C1BE9    mov         eax,dword ptr [ebp-4]
 004C1BEC    mov         al,byte ptr [eax+227];TCustomActionBar.FOrientation:TBarOrientation
 004C1BF2    sub         al,2
>004C1BF4    jb          004C1C20
 004C1BF6    sub         al,2
>004C1BF8    jae         004C1C55
 004C1BFA    mov         eax,dword ptr [ebp-4]
 004C1BFD    mov         ecx,dword ptr [eax+254];TCustomActionBar.FVertMargin:Integer
 004C1C03    add         ecx,ecx
 004C1C05    mov         eax,dword ptr [ebp-4]
 004C1C08    add         ecx,dword ptr [eax+268];TCustomActionBar.FTallest:Integer
 004C1C0E    mov         edx,2
 004C1C13    mov         eax,dword ptr [ebp-4]
 004C1C16    mov         eax,dword ptr [eax+74];TCustomActionBar.FConstraints:TSizeConstraints
 004C1C19    call        TSizeConstraints.SetMaxHeight
>004C1C1E    jmp         004C1C55
 004C1C20    mov         dl,2
 004C1C22    mov         eax,dword ptr [ebp-4]
 004C1C25    mov         ecx,dword ptr [eax]
 004C1C27    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C1C2D    mov         ecx,eax
 004C1C2F    mov         eax,dword ptr [ebp-4]
 004C1C32    mov         eax,dword ptr [eax+258];TCustomActionBar.FHorzMargin:Integer
 004C1C38    add         eax,eax
 004C1C3A    mov         edx,dword ptr [ebp-4]
 004C1C3D    add         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 004C1C43    add         ecx,eax
 004C1C45    mov         edx,3
 004C1C4A    mov         eax,dword ptr [ebp-4]
 004C1C4D    mov         eax,dword ptr [eax+74];TCustomActionBar.FConstraints:TSizeConstraints
 004C1C50    call        TSizeConstraints.SetMaxHeight
 004C1C55    mov         al,byte ptr [ebp-0D]
 004C1C58    pop         ebx
 004C1C59    mov         esp,ebp
 004C1C5B    pop         ebp
 004C1C5C    ret
end;*}

//004C1C60
{*procedure sub_004C1C60(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004C1C60    push        ebp
 004C1C61    mov         ebp,esp
 004C1C63    add         esp,0FFFFFFD0
 004C1C66    push        ebx
 004C1C67    push        esi
 004C1C68    push        edi
 004C1C69    mov         esi,dword ptr [ebp+8]
 004C1C6C    lea         edi,[ebp-20]
 004C1C6F    movs        dword ptr [edi],dword ptr [esi]
 004C1C70    movs        dword ptr [edi],dword ptr [esi]
 004C1C71    movs        dword ptr [edi],dword ptr [esi]
 004C1C72    movs        dword ptr [edi],dword ptr [esi]
 004C1C73    mov         dword ptr [ebp-0C],ecx
 004C1C76    mov         dword ptr [ebp-8],edx
 004C1C79    mov         dword ptr [ebp-4],eax
 004C1C7C    mov         eax,dword ptr [ebp-8]
 004C1C7F    mov         edx,dword ptr ds:[4BB9B8];TCustomActionControl
 004C1C85    call        @IsClass
 004C1C8A    test        al,al
>004C1C8C    je          004C2251
 004C1C92    mov         eax,dword ptr [ebp-8]
 004C1C95    mov         dword ptr [ebp-10],eax
 004C1C98    mov         eax,dword ptr [ebp-20]
 004C1C9B    cmp         dword ptr [eax+8],1
>004C1C9F    jne         004C1CBF
 004C1CA1    mov         eax,dword ptr [ebp-8]
 004C1CA4    mov         eax,dword ptr [eax+48]
 004C1CA7    mov         edx,dword ptr [ebp-4]
 004C1CAA    mov         dword ptr [edx+26C],eax;TCustomActionBar.FWidest:Integer
 004C1CB0    mov         eax,dword ptr [ebp-8]
 004C1CB3    mov         eax,dword ptr [eax+4C]
 004C1CB6    mov         edx,dword ptr [ebp-4]
 004C1CB9    mov         dword ptr [edx+268],eax;TCustomActionBar.FTallest:Integer
 004C1CBF    cmp         dword ptr [ebp-1C],0
>004C1CC3    jne         004C1D2F
 004C1CC5    mov         eax,dword ptr [ebp-4]
 004C1CC8    call        TControl.GetClientHeight
 004C1CCD    mov         edx,dword ptr [ebp-4]
 004C1CD0    sub         eax,dword ptr [edx+254]
 004C1CD6    push        eax
 004C1CD7    lea         eax,[ebp-30]
 004C1CDA    push        eax
 004C1CDB    mov         dl,1
 004C1CDD    mov         eax,dword ptr [ebp-4]
 004C1CE0    mov         ecx,dword ptr [eax]
 004C1CE2    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C1CE8    push        eax
 004C1CE9    mov         eax,dword ptr [ebp-4]
 004C1CEC    call        TControl.GetClientWidth
 004C1CF1    mov         edx,dword ptr [ebp-4]
 004C1CF4    sub         eax,dword ptr [edx+254]
 004C1CFA    pop         edx
 004C1CFB    sub         eax,edx
 004C1CFD    push        eax
 004C1CFE    xor         edx,edx
 004C1D00    mov         eax,dword ptr [ebp-4]
 004C1D03    mov         ecx,dword ptr [eax]
 004C1D05    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C1D0B    mov         edx,dword ptr [ebp-4]
 004C1D0E    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 004C1D14    mov         edx,dword ptr [ebp-4]
 004C1D17    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 004C1D1D    pop         ecx
 004C1D1E    call        0041E714
 004C1D23    mov         eax,dword ptr [ebp+0C]
 004C1D26    lea         esi,[ebp-30]
 004C1D29    mov         edi,eax
 004C1D2B    movs        dword ptr [edi],dword ptr [esi]
 004C1D2C    movs        dword ptr [edi],dword ptr [esi]
 004C1D2D    movs        dword ptr [edi],dword ptr [esi]
 004C1D2E    movs        dword ptr [edi],dword ptr [esi]
 004C1D2F    mov         eax,dword ptr [ebp-4]
 004C1D32    mov         al,byte ptr [eax+227];TCustomActionBar.FOrientation:TBarOrientation
 004C1D38    sub         al,1
>004C1D3A    jb          004C1D57
>004C1D3C    je          004C1E78
 004C1D42    dec         al
>004C1D44    je          004C1FF0
 004C1D4A    dec         al
>004C1D4C    je          004C2126
>004C1D52    jmp         004C2251
 004C1D57    mov         eax,dword ptr [ebp-4]
 004C1D5A    mov         edx,dword ptr [eax]
 004C1D5C    call        dword ptr [edx+54];TCustomActionBar.sub_004866DC
 004C1D5F    test        al,al
>004C1D61    jne         004C1D73
 004C1D63    mov         eax,dword ptr [ebp-4]
 004C1D66    call        004C3E24
 004C1D6B    test        al,al
>004C1D6D    je          004C1E3C
 004C1D73    cmp         dword ptr [ebp-1C],0
>004C1D77    je          004C1E3C
 004C1D7D    mov         eax,dword ptr [ebp+0C]
 004C1D80    mov         eax,dword ptr [eax+8]
 004C1D83    mov         edx,dword ptr [ebp+0C]
 004C1D86    sub         eax,dword ptr [edx]
 004C1D88    mov         edx,dword ptr [ebp-10]
 004C1D8B    mov         edx,dword ptr [edx+48]
 004C1D8E    mov         ecx,dword ptr [ebp-4]
 004C1D91    add         edx,dword ptr [ecx+258]
 004C1D97    cmp         eax,edx
>004C1D99    jge         004C1E3C
 004C1D9F    mov         eax,dword ptr [ebp-4]
 004C1DA2    call        TControl.GetClientHeight
 004C1DA7    mov         edx,dword ptr [ebp+0C]
 004C1DAA    sub         eax,dword ptr [edx+4]
 004C1DAD    mov         edx,dword ptr [ebp-4]
 004C1DB0    sub         eax,dword ptr [edx+254]
 004C1DB6    push        eax
 004C1DB7    lea         eax,[ebp-30]
 004C1DBA    push        eax
 004C1DBB    mov         dl,1
 004C1DBD    mov         eax,dword ptr [ebp-4]
 004C1DC0    mov         ecx,dword ptr [eax]
 004C1DC2    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C1DC8    push        eax
 004C1DC9    mov         eax,dword ptr [ebp-4]
 004C1DCC    call        TControl.GetClientWidth
 004C1DD1    mov         edx,dword ptr [ebp-4]
 004C1DD4    sub         eax,dword ptr [edx+258]
 004C1DDA    pop         edx
 004C1DDB    sub         eax,edx
 004C1DDD    push        eax
 004C1DDE    xor         edx,edx
 004C1DE0    mov         eax,dword ptr [ebp-4]
 004C1DE3    mov         ecx,dword ptr [eax]
 004C1DE5    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C1DEB    mov         edx,dword ptr [ebp-4]
 004C1DEE    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 004C1DF4    mov         edx,dword ptr [ebp-4]
 004C1DF7    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 004C1DFD    add         edx,edx
 004C1DFF    mov         ecx,dword ptr [ebp-4]
 004C1E02    movzx       ecx,byte ptr [ecx+25C]
 004C1E09    add         edx,dword ptr [ecx*4+56CB90]
 004C1E10    mov         ecx,dword ptr [ebp+0C]
 004C1E13    mov         ecx,dword ptr [ecx+4]
 004C1E16    mov         ebx,dword ptr [ebp-4]
 004C1E19    add         ecx,dword ptr [ebx+268];TCustomActionBar.FTallest:Integer
 004C1E1F    add         edx,ecx
 004C1E21    pop         ecx
 004C1E22    call        0041E714
 004C1E27    mov         eax,dword ptr [ebp+0C]
 004C1E2A    lea         esi,[ebp-30]
 004C1E2D    mov         edi,eax
 004C1E2F    movs        dword ptr [edi],dword ptr [esi]
 004C1E30    movs        dword ptr [edi],dword ptr [esi]
 004C1E31    movs        dword ptr [edi],dword ptr [esi]
 004C1E32    movs        dword ptr [edi],dword ptr [esi]
 004C1E33    mov         eax,dword ptr [ebp-4]
 004C1E36    inc         dword ptr [eax+250];TCustomActionBar.FVRowCount:Integer
 004C1E3C    mov         eax,dword ptr [ebp+0C]
 004C1E3F    mov         eax,dword ptr [eax+4]
 004C1E42    mov         edx,dword ptr [ebp+18]
 004C1E45    mov         dword ptr [edx],eax
 004C1E47    mov         eax,dword ptr [ebp+0C]
 004C1E4A    mov         eax,dword ptr [eax]
 004C1E4C    mov         edx,dword ptr [ebp-0C]
 004C1E4F    mov         dword ptr [edx],eax
 004C1E51    mov         eax,dword ptr [ebp+10]
 004C1E54    mov         edx,dword ptr [ebp-4]
 004C1E57    mov         edx,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
 004C1E5D    mov         dword ptr [eax],edx
 004C1E5F    mov         eax,dword ptr [ebp-10]
 004C1E62    mov         eax,dword ptr [eax+48]
 004C1E65    mov         edx,dword ptr [ebp-4]
 004C1E68    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 004C1E6E    mov         edx,dword ptr [ebp+0C]
 004C1E71    add         dword ptr [edx],eax
>004C1E73    jmp         004C2251
 004C1E78    mov         eax,dword ptr [ebp-4]
 004C1E7B    mov         edx,dword ptr [eax]
 004C1E7D    call        dword ptr [edx+54];TCustomActionBar.sub_004866DC
 004C1E80    test        al,al
>004C1E82    jne         004C1E94
 004C1E84    mov         eax,dword ptr [ebp-4]
 004C1E87    call        004C3E24
 004C1E8C    test        al,al
>004C1E8E    je          004C1F52
 004C1E94    cmp         dword ptr [ebp-1C],0
>004C1E98    je          004C1F52
 004C1E9E    mov         eax,dword ptr [ebp+0C]
 004C1EA1    mov         eax,dword ptr [eax+8]
 004C1EA4    mov         edx,dword ptr [ebp+0C]
 004C1EA7    sub         eax,dword ptr [edx]
 004C1EA9    mov         edx,dword ptr [ebp-10]
 004C1EAC    cmp         eax,dword ptr [edx+48]
>004C1EAF    jge         004C1F52
 004C1EB5    mov         eax,dword ptr [ebp-4]
 004C1EB8    call        TControl.GetClientHeight
 004C1EBD    mov         edx,dword ptr [ebp+0C]
 004C1EC0    sub         eax,dword ptr [edx+4]
 004C1EC3    mov         edx,dword ptr [ebp-4]
 004C1EC6    sub         eax,dword ptr [edx+254]
 004C1ECC    push        eax
 004C1ECD    lea         eax,[ebp-30]
 004C1ED0    push        eax
 004C1ED1    mov         dl,1
 004C1ED3    mov         eax,dword ptr [ebp-4]
 004C1ED6    mov         ecx,dword ptr [eax]
 004C1ED8    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C1EDE    push        eax
 004C1EDF    mov         eax,dword ptr [ebp-4]
 004C1EE2    call        TControl.GetClientWidth
 004C1EE7    mov         edx,dword ptr [ebp-4]
 004C1EEA    sub         eax,dword ptr [edx+258]
 004C1EF0    pop         edx
 004C1EF1    sub         eax,edx
 004C1EF3    push        eax
 004C1EF4    xor         edx,edx
 004C1EF6    mov         eax,dword ptr [ebp-4]
 004C1EF9    mov         ecx,dword ptr [eax]
 004C1EFB    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C1F01    mov         edx,dword ptr [ebp-4]
 004C1F04    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 004C1F0A    mov         edx,dword ptr [ebp-4]
 004C1F0D    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 004C1F13    add         edx,edx
 004C1F15    mov         ecx,dword ptr [ebp-4]
 004C1F18    movzx       ecx,byte ptr [ecx+25C]
 004C1F1F    add         edx,dword ptr [ecx*4+56CB90]
 004C1F26    mov         ecx,dword ptr [ebp+0C]
 004C1F29    mov         ecx,dword ptr [ecx+4]
 004C1F2C    mov         ebx,dword ptr [ebp-4]
 004C1F2F    add         ecx,dword ptr [ebx+268];TCustomActionBar.FTallest:Integer
 004C1F35    add         edx,ecx
 004C1F37    pop         ecx
 004C1F38    call        0041E714
 004C1F3D    mov         eax,dword ptr [ebp+0C]
 004C1F40    lea         esi,[ebp-30]
 004C1F43    mov         edi,eax
 004C1F45    movs        dword ptr [edi],dword ptr [esi]
 004C1F46    movs        dword ptr [edi],dword ptr [esi]
 004C1F47    movs        dword ptr [edi],dword ptr [esi]
 004C1F48    movs        dword ptr [edi],dword ptr [esi]
 004C1F49    mov         eax,dword ptr [ebp-4]
 004C1F4C    inc         dword ptr [eax+250];TCustomActionBar.FVRowCount:Integer
 004C1F52    mov         eax,dword ptr [ebp+0C]
 004C1F55    mov         eax,dword ptr [eax+4]
 004C1F58    mov         edx,dword ptr [ebp+18]
 004C1F5B    mov         dword ptr [edx],eax
 004C1F5D    cmp         dword ptr [ebp-1C],0
>004C1F61    jne         004C1F9D
 004C1F63    mov         eax,dword ptr [ebp+0C]
 004C1F66    mov         eax,dword ptr [eax+8]
 004C1F69    mov         edx,dword ptr [ebp-10]
 004C1F6C    sub         eax,dword ptr [edx+48]
 004C1F6F    mov         edx,dword ptr [ebp-4]
 004C1F72    sub         eax,dword ptr [edx+258]
 004C1F78    mov         edx,dword ptr [ebp-0C]
 004C1F7B    mov         dword ptr [edx],eax
 004C1F7D    mov         eax,dword ptr [ebp-10]
 004C1F80    mov         eax,dword ptr [eax+48]
 004C1F83    mov         edx,dword ptr [ebp-4]
 004C1F86    add         eax,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 004C1F8C    mov         edx,dword ptr [ebp-4]
 004C1F8F    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 004C1F95    mov         edx,dword ptr [ebp+0C]
 004C1F98    sub         dword ptr [edx+8],eax
>004C1F9B    jmp         004C1FDD
 004C1F9D    mov         eax,dword ptr [ebp+0C]
 004C1FA0    mov         eax,dword ptr [eax+8]
 004C1FA3    mov         edx,dword ptr [ebp-10]
 004C1FA6    sub         eax,dword ptr [edx+48]
 004C1FA9    mov         edx,dword ptr [ebp-0C]
 004C1FAC    mov         dword ptr [edx],eax
 004C1FAE    mov         eax,dword ptr [ebp-20]
 004C1FB1    mov         eax,dword ptr [eax+8]
 004C1FB4    dec         eax
 004C1FB5    cmp         eax,dword ptr [ebp-1C]
>004C1FB8    jne         004C1FC8
 004C1FBA    mov         eax,dword ptr [ebp-10]
 004C1FBD    mov         eax,dword ptr [eax+48]
 004C1FC0    mov         edx,dword ptr [ebp+0C]
 004C1FC3    sub         dword ptr [edx+8],eax
>004C1FC6    jmp         004C1FDD
 004C1FC8    mov         eax,dword ptr [ebp-10]
 004C1FCB    mov         eax,dword ptr [eax+48]
 004C1FCE    mov         edx,dword ptr [ebp-4]
 004C1FD1    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 004C1FD7    mov         edx,dword ptr [ebp+0C]
 004C1FDA    sub         dword ptr [edx+8],eax
 004C1FDD    mov         eax,dword ptr [ebp+10]
 004C1FE0    mov         edx,dword ptr [ebp-4]
 004C1FE3    mov         edx,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
 004C1FE9    mov         dword ptr [eax],edx
>004C1FEB    jmp         004C2251
 004C1FF0    mov         eax,dword ptr [ebp-4]
 004C1FF3    mov         edx,dword ptr [eax]
 004C1FF5    call        dword ptr [edx+54];TCustomActionBar.sub_004866DC
 004C1FF8    test        al,al
>004C1FFA    jne         004C200C
 004C1FFC    mov         eax,dword ptr [ebp-4]
 004C1FFF    call        004C3E24
 004C2004    test        al,al
>004C2006    je          004C20B7
 004C200C    cmp         dword ptr [ebp-1C],0
>004C2010    je          004C20B7
 004C2016    mov         eax,dword ptr [ebp+0C]
 004C2019    mov         eax,dword ptr [eax+0C]
 004C201C    mov         edx,dword ptr [ebp+0C]
 004C201F    sub         eax,dword ptr [edx+4]
 004C2022    mov         edx,dword ptr [ebp-10]
 004C2025    cmp         eax,dword ptr [edx+4C]
>004C2028    jge         004C20B7
 004C202E    mov         eax,dword ptr [ebp-4]
 004C2031    call        TControl.GetClientHeight
 004C2036    mov         edx,dword ptr [ebp-4]
 004C2039    sub         eax,dword ptr [edx+254]
 004C203F    push        eax
 004C2040    lea         eax,[ebp-30]
 004C2043    push        eax
 004C2044    mov         dl,1
 004C2046    mov         eax,dword ptr [ebp-4]
 004C2049    mov         ecx,dword ptr [eax]
 004C204B    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C2051    push        eax
 004C2052    mov         eax,dword ptr [ebp-4]
 004C2055    call        TControl.GetClientWidth
 004C205A    mov         ecx,eax
 004C205C    mov         eax,dword ptr [ebp-4]
 004C205F    sub         ecx,dword ptr [eax+258]
 004C2065    pop         eax
 004C2066    sub         ecx,eax
 004C2068    mov         eax,dword ptr [ebp+0C]
 004C206B    mov         eax,dword ptr [eax]
 004C206D    mov         edx,dword ptr [ebp-4]
 004C2070    add         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 004C2076    mov         edx,dword ptr [ebp-4]
 004C2079    mov         edx,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 004C207F    add         edx,edx
 004C2081    add         eax,edx
 004C2083    mov         edx,dword ptr [ebp-4]
 004C2086    movzx       edx,byte ptr [edx+25C];TCustomActionBar.FHorzSeparator:Boolean
 004C208D    add         eax,dword ptr [edx*4+56CB90]
 004C2094    mov         edx,dword ptr [ebp-4]
 004C2097    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 004C209D    call        0041E714
 004C20A2    mov         eax,dword ptr [ebp+0C]
 004C20A5    lea         esi,[ebp-30]
 004C20A8    mov         edi,eax
 004C20AA    movs        dword ptr [edi],dword ptr [esi]
 004C20AB    movs        dword ptr [edi],dword ptr [esi]
 004C20AC    movs        dword ptr [edi],dword ptr [esi]
 004C20AD    movs        dword ptr [edi],dword ptr [esi]
 004C20AE    mov         eax,dword ptr [ebp-4]
 004C20B1    inc         dword ptr [eax+24C];TCustomActionBar.FHRowCount:Integer
 004C20B7    cmp         dword ptr [ebp-1C],0
>004C20BB    jne         004C20CD
 004C20BD    mov         eax,dword ptr [ebp+18]
 004C20C0    mov         edx,dword ptr [ebp-4]
 004C20C3    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 004C20C9    mov         dword ptr [eax],edx
>004C20CB    jmp         004C20D8
 004C20CD    mov         eax,dword ptr [ebp+0C]
 004C20D0    mov         eax,dword ptr [eax+4]
 004C20D3    mov         edx,dword ptr [ebp+18]
 004C20D6    mov         dword ptr [edx],eax
 004C20D8    mov         dl,2
 004C20DA    mov         eax,dword ptr [ebp-4]
 004C20DD    mov         ecx,dword ptr [eax]
 004C20DF    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C20E5    mov         edx,dword ptr [ebp-4]
 004C20E8    add         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 004C20EE    mov         edx,dword ptr [ebp+0C]
 004C20F1    mov         dword ptr [edx+8],eax
 004C20F4    mov         eax,dword ptr [ebp+0C]
 004C20F7    mov         eax,dword ptr [eax]
 004C20F9    mov         edx,dword ptr [ebp-0C]
 004C20FC    mov         dword ptr [edx],eax
 004C20FE    mov         eax,dword ptr [ebp+14]
 004C2101    mov         edx,dword ptr [ebp-4]
 004C2104    mov         edx,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 004C210A    mov         dword ptr [eax],edx
 004C210C    mov         eax,dword ptr [ebp-10]
 004C210F    mov         eax,dword ptr [eax+4C]
 004C2112    mov         edx,dword ptr [ebp-4]
 004C2115    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 004C211B    mov         edx,dword ptr [ebp+0C]
 004C211E    add         dword ptr [edx+4],eax
>004C2121    jmp         004C2251
 004C2126    mov         eax,dword ptr [ebp-4]
 004C2129    mov         edx,dword ptr [eax]
 004C212B    call        dword ptr [edx+54];TCustomActionBar.sub_004866DC
 004C212E    test        al,al
>004C2130    jne         004C2142
 004C2132    mov         eax,dword ptr [ebp-4]
 004C2135    call        004C3E24
 004C213A    test        al,al
>004C213C    je          004C21DC
 004C2142    cmp         dword ptr [ebp-1C],0
>004C2146    je          004C21DC
 004C214C    mov         eax,dword ptr [ebp+0C]
 004C214F    mov         eax,dword ptr [eax+0C]
 004C2152    mov         edx,dword ptr [ebp+0C]
 004C2155    sub         eax,dword ptr [edx+4]
 004C2158    mov         edx,dword ptr [ebp-10]
 004C215B    cmp         eax,dword ptr [edx+4C]
>004C215E    jge         004C21DC
 004C2160    mov         eax,dword ptr [ebp-4]
 004C2163    call        TControl.GetClientHeight
 004C2168    mov         edx,dword ptr [ebp-4]
 004C216B    sub         eax,dword ptr [edx+254]
 004C2171    push        eax
 004C2172    lea         eax,[ebp-30]
 004C2175    push        eax
 004C2176    xor         edx,edx
 004C2178    mov         eax,dword ptr [ebp-4]
 004C217B    mov         ecx,dword ptr [eax]
 004C217D    call        dword ptr [ecx+0F8];TCustomActionBar.sub_004C2DF8
 004C2183    mov         edx,dword ptr [ebp-4]
 004C2186    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 004C218C    mov         ecx,dword ptr [ebp+0C]
 004C218F    mov         ecx,dword ptr [ecx+8]
 004C2192    mov         edx,dword ptr [ebp-4]
 004C2195    sub         ecx,dword ptr [edx+26C]
 004C219B    mov         edx,dword ptr [ebp-4]
 004C219E    mov         edx,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 004C21A4    add         edx,edx
 004C21A6    sub         ecx,edx
 004C21A8    mov         edx,dword ptr [ebp-4]
 004C21AB    movzx       edx,byte ptr [edx+25C];TCustomActionBar.FHorzSeparator:Boolean
 004C21B2    sub         ecx,dword ptr [edx*4+56CB90]
 004C21B9    mov         edx,dword ptr [ebp-4]
 004C21BC    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 004C21C2    call        0041E714
 004C21C7    mov         eax,dword ptr [ebp+0C]
 004C21CA    lea         esi,[ebp-30]
 004C21CD    mov         edi,eax
 004C21CF    movs        dword ptr [edi],dword ptr [esi]
 004C21D0    movs        dword ptr [edi],dword ptr [esi]
 004C21D1    movs        dword ptr [edi],dword ptr [esi]
 004C21D2    movs        dword ptr [edi],dword ptr [esi]
 004C21D3    mov         eax,dword ptr [ebp-4]
 004C21D6    inc         dword ptr [eax+24C];TCustomActionBar.FHRowCount:Integer
 004C21DC    cmp         dword ptr [ebp-1C],0
>004C21E0    jne         004C2200
 004C21E2    mov         eax,dword ptr [ebp-4]
 004C21E5    call        TControl.GetClientHeight
 004C21EA    mov         edx,dword ptr [ebp-8]
 004C21ED    sub         eax,dword ptr [edx+4C]
 004C21F0    mov         edx,dword ptr [ebp-4]
 004C21F3    sub         eax,dword ptr [edx+258]
 004C21F9    mov         edx,dword ptr [ebp+18]
 004C21FC    mov         dword ptr [edx],eax
>004C21FE    jmp         004C221A
 004C2200    mov         eax,dword ptr [ebp+0C]
 004C2203    mov         eax,dword ptr [eax+0C]
 004C2206    mov         edx,dword ptr [ebp-8]
 004C2209    sub         eax,dword ptr [edx+4C]
 004C220C    mov         edx,dword ptr [ebp-4]
 004C220F    sub         eax,dword ptr [edx+228]
 004C2215    mov         edx,dword ptr [ebp+18]
 004C2218    mov         dword ptr [edx],eax
 004C221A    mov         eax,dword ptr [ebp+0C]
 004C221D    mov         eax,dword ptr [eax+8]
 004C2220    mov         edx,dword ptr [ebp-4]
 004C2223    sub         eax,dword ptr [edx+26C]
 004C2229    mov         edx,dword ptr [ebp-0C]
 004C222C    mov         dword ptr [edx],eax
 004C222E    mov         eax,dword ptr [ebp+14]
 004C2231    mov         edx,dword ptr [ebp-4]
 004C2234    mov         edx,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 004C223A    mov         dword ptr [eax],edx
 004C223C    mov         eax,dword ptr [ebp-10]
 004C223F    mov         eax,dword ptr [eax+4C]
 004C2242    mov         edx,dword ptr [ebp-4]
 004C2245    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 004C224B    mov         edx,dword ptr [ebp+0C]
 004C224E    sub         dword ptr [edx+0C],eax
 004C2251    pop         edi
 004C2252    pop         esi
 004C2253    pop         ebx
 004C2254    mov         esp,ebp
 004C2256    pop         ebp
 004C2257    ret         14
end;*}

//004C225C
procedure sub_004C225C;
begin
{*
 004C225C    push        ebp
 004C225D    mov         ebp,esp
 004C225F    add         esp,0FFFFFFD4
 004C2262    mov         dword ptr [ebp-4],eax
 004C2265    mov         eax,dword ptr [ebp-4]
 004C2268    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C226F    je          004C2404
 004C2275    mov         eax,dword ptr [ebp-4]
 004C2278    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C227E    call        004BE6B4
 004C2283    test        al,al
>004C2285    je          004C2404
 004C228B    mov         eax,dword ptr [ebp-4]
 004C228E    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2294    movzx       eax,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 004C2298    cmp         eax,4
>004C229B    ja          004C2404
 004C22A1    jmp         dword ptr [eax*4+4C22A8]
 004C22A1    dd          004C2301
 004C22A1    dd          004C232A
 004C22A1    dd          004C235E
 004C22A1    dd          004C2301
 004C22A1    dd          004C22BC
 004C22BC    mov         eax,dword ptr [ebp-4]
 004C22BF    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C22C5    call        TActionClient.GetBackground
 004C22CA    mov         eax,dword ptr [eax+0C]
 004C22CD    push        eax
 004C22CE    mov         eax,dword ptr [ebp-4]
 004C22D1    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C22D7    call        TActionClient.GetBackground
 004C22DC    mov         eax,dword ptr [eax+0C]
 004C22DF    mov         edx,dword ptr [eax]
 004C22E1    call        dword ptr [edx+2C]
 004C22E4    mov         edx,dword ptr [ebp-4]
 004C22E7    mov         edx,dword ptr [edx+48];TCustomActionBar.Width:Integer
 004C22EA    sub         edx,eax
 004C22EC    xor         ecx,ecx
 004C22EE    mov         eax,dword ptr [ebp-4]
 004C22F1    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C22F7    call        0042EF28
>004C22FC    jmp         004C2404
 004C2301    mov         eax,dword ptr [ebp-4]
 004C2304    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C230A    call        TActionClient.GetBackground
 004C230F    mov         eax,dword ptr [eax+0C]
 004C2312    push        eax
 004C2313    xor         ecx,ecx
 004C2315    xor         edx,edx
 004C2317    mov         eax,dword ptr [ebp-4]
 004C231A    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C2320    call        0042EF28
>004C2325    jmp         004C2404
 004C232A    lea         edx,[ebp-2C]
 004C232D    mov         eax,dword ptr [ebp-4]
 004C2330    mov         ecx,dword ptr [eax]
 004C2332    call        dword ptr [ecx+44];TCustomActionBar.sub_0048C23C
 004C2335    lea         eax,[ebp-2C]
 004C2338    push        eax
 004C2339    mov         eax,dword ptr [ebp-4]
 004C233C    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2342    call        TActionClient.GetBackground
 004C2347    mov         ecx,dword ptr [eax+0C]
 004C234A    mov         eax,dword ptr [ebp-4]
 004C234D    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C2353    pop         edx
 004C2354    call        0042F2BC
>004C2359    jmp         004C2404
 004C235E    mov         eax,dword ptr [ebp-4]
 004C2361    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2367    call        TActionClient.GetBackground
 004C236C    mov         eax,dword ptr [eax+0C]
 004C236F    mov         edx,dword ptr [eax]
 004C2371    call        dword ptr [edx+2C]
 004C2374    mov         dword ptr [ebp-10],eax
 004C2377    mov         eax,dword ptr [ebp-4]
 004C237A    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2380    call        TActionClient.GetBackground
 004C2385    mov         eax,dword ptr [eax+0C]
 004C2388    mov         edx,dword ptr [eax]
 004C238A    call        dword ptr [edx+20]
 004C238D    mov         dword ptr [ebp-14],eax
 004C2390    mov         eax,dword ptr [ebp-4]
 004C2393    call        TControl.GetClientWidth
 004C2398    cdq
 004C2399    idiv        eax,dword ptr [ebp-10]
 004C239C    test        eax,eax
>004C239E    jl          004C2404
 004C23A0    inc         eax
 004C23A1    mov         dword ptr [ebp-18],eax
 004C23A4    mov         dword ptr [ebp-8],0
 004C23AB    mov         eax,dword ptr [ebp-4]
 004C23AE    call        TControl.GetClientHeight
 004C23B3    cdq
 004C23B4    idiv        eax,dword ptr [ebp-14]
 004C23B7    test        eax,eax
>004C23B9    jl          004C23FC
 004C23BB    inc         eax
 004C23BC    mov         dword ptr [ebp-1C],eax
 004C23BF    mov         dword ptr [ebp-0C],0
 004C23C6    mov         eax,dword ptr [ebp-4]
 004C23C9    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C23CF    call        TActionClient.GetBackground
 004C23D4    mov         eax,dword ptr [eax+0C]
 004C23D7    push        eax
 004C23D8    mov         ecx,dword ptr [ebp-14]
 004C23DB    imul        ecx,dword ptr [ebp-0C]
 004C23DF    mov         edx,dword ptr [ebp-10]
 004C23E2    imul        edx,dword ptr [ebp-8]
 004C23E6    mov         eax,dword ptr [ebp-4]
 004C23E9    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C23EF    call        0042EF28
 004C23F4    inc         dword ptr [ebp-0C]
 004C23F7    dec         dword ptr [ebp-1C]
>004C23FA    jne         004C23C6
 004C23FC    inc         dword ptr [ebp-8]
 004C23FF    dec         dword ptr [ebp-18]
>004C2402    jne         004C23AB
 004C2404    mov         esp,ebp
 004C2406    pop         ebp
 004C2407    ret
*}
end;

//004C2408
{*procedure TCustomActionBar.sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004C2408    push        ebp
 004C2409    mov         ebp,esp
 004C240B    add         esp,0FFFFFFF4
 004C240E    mov         dword ptr [ebp-0C],ecx
 004C2411    mov         dword ptr [ebp-8],edx
 004C2414    mov         dword ptr [ebp-4],eax
 004C2417    mov         eax,dword ptr [ebp+10]
 004C241A    push        eax
 004C241B    mov         al,byte ptr [ebp+0C]
 004C241E    push        eax
 004C241F    mov         eax,dword ptr [ebp+8]
 004C2422    push        eax
 004C2423    mov         ecx,dword ptr [ebp-0C]
 004C2426    mov         edx,dword ptr [ebp-8]
 004C2429    mov         eax,dword ptr [ebp-4]
 004C242C    call        TControl.sub_004842E0
 004C2431    mov         eax,dword ptr [ebp-4]
 004C2434    cmp         byte ptr [eax+224],0;TCustomActionBar.FDesignable:Boolean
>004C243B    je          004C2461
 004C243D    mov         eax,dword ptr [ebp-8]
 004C2440    mov         edx,dword ptr ds:[4BB520];TActionDragObject
 004C2446    call        @IsClass
 004C244B    test        al,al
>004C244D    jne         004C2465
 004C244F    mov         eax,dword ptr [ebp-8]
 004C2452    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004C2458    call        @IsClass
 004C245D    test        al,al
>004C245F    jne         004C2465
 004C2461    xor         eax,eax
>004C2463    jmp         004C2467
 004C2465    mov         al,1
 004C2467    mov         edx,dword ptr [ebp+8]
 004C246A    mov         byte ptr [edx],al
 004C246C    mov         esp,ebp
 004C246E    pop         ebp
 004C246F    ret         0C
end;*}

//004C2474
{*procedure TCustomActionBar.sub_00484338(?:?; ?:?; ?:?);
begin
 004C2474    push        ebp
 004C2475    mov         ebp,esp
 004C2477    add         esp,0FFFFFFF0
 004C247A    push        ebx
 004C247B    mov         dword ptr [ebp-0C],ecx
 004C247E    mov         dword ptr [ebp-8],edx
 004C2481    mov         dword ptr [ebp-4],eax
 004C2484    mov         eax,dword ptr [ebp+8]
 004C2487    push        eax
 004C2488    mov         ecx,dword ptr [ebp-0C]
 004C248B    mov         edx,dword ptr [ebp-8]
 004C248E    mov         eax,dword ptr [ebp-4]
 004C2491    call        TControl.sub_00484338
 004C2496    mov         eax,dword ptr [ebp-4]
 004C2499    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C24A0    jne         004C24E7
 004C24A2    mov         eax,dword ptr [ebp-8]
 004C24A5    mov         edx,dword ptr ds:[4BB498];TActionDragBaseClass
 004C24AB    call        @AsClass
 004C24B0    mov         dword ptr [ebp-10],eax
 004C24B3    mov         eax,dword ptr [ebp-10]
 004C24B6    mov         edx,dword ptr [eax+38];TActionDragBaseClass....FActionManager:TCustomActionManager
 004C24B9    mov         eax,dword ptr [ebp-4]
 004C24BC    call        004C3608
 004C24C1    mov         eax,dword ptr [ebp-10]
 004C24C4    mov         eax,dword ptr [eax+38];TActionDragBaseClass.....FActionManager:TCustomActionManager
 004C24C7    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 004C24CA    call        004BEF38
 004C24CF    mov         edx,dword ptr [ebp-4]
 004C24D2    mov         dword ptr [edx+210],eax;TCustomActionBar.FActionClient:TActionClient
 004C24D8    mov         eax,dword ptr [ebp-4]
 004C24DB    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C24E1    mov         edx,dword ptr [ebp-4]
 004C24E4    mov         dword ptr [eax+0C],edx;TActionClient.FActionBar:TCustomActionBar
 004C24E7    mov         eax,dword ptr [ebp-4]
 004C24EA    call        TWinControl.DisableAlign
 004C24EF    xor         eax,eax
 004C24F1    push        ebp
 004C24F2    push        4C25DE
 004C24F7    push        dword ptr fs:[eax]
 004C24FA    mov         dword ptr fs:[eax],esp
 004C24FD    mov         eax,dword ptr [ebp-8]
 004C2500    mov         edx,dword ptr ds:[4BB5A4];TCategoryDragObject
 004C2506    call        @IsClass
 004C250B    test        al,al
>004C250D    je          004C2533
 004C250F    mov         eax,dword ptr [ebp+8]
 004C2512    push        eax
 004C2513    mov         eax,dword ptr [ebp-8]
 004C2516    mov         edx,dword ptr ds:[4BB5A4];TCategoryDragObject
 004C251C    call        @AsClass
 004C2521    mov         edx,eax
 004C2523    mov         ecx,dword ptr [ebp-0C]
 004C2526    mov         eax,dword ptr [ebp-4]
 004C2529    mov         ebx,dword ptr [eax]
 004C252B    call        dword ptr [ebx+0E0];TCustomActionBar.sub_004C3768
>004C2531    jmp         004C259D
 004C2533    mov         eax,dword ptr [ebp-8]
 004C2536    mov         edx,dword ptr ds:[4BB520];TActionDragObject
 004C253C    call        @IsClass
 004C2541    test        al,al
>004C2543    je          004C2569
 004C2545    mov         eax,dword ptr [ebp+8]
 004C2548    push        eax
 004C2549    mov         eax,dword ptr [ebp-8]
 004C254C    mov         edx,dword ptr ds:[4BB520];TActionDragObject
 004C2552    call        @AsClass
 004C2557    mov         edx,eax
 004C2559    mov         ecx,dword ptr [ebp-0C]
 004C255C    mov         eax,dword ptr [ebp-4]
 004C255F    mov         ebx,dword ptr [eax]
 004C2561    call        dword ptr [ebx+0E4];TCustomActionBar.sub_004C36AC
>004C2567    jmp         004C259D
 004C2569    mov         eax,dword ptr [ebp-8]
 004C256C    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004C2572    call        @IsClass
 004C2577    test        al,al
>004C2579    je          004C259D
 004C257B    mov         eax,dword ptr [ebp+8]
 004C257E    push        eax
 004C257F    mov         eax,dword ptr [ebp-8]
 004C2582    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004C2588    call        @AsClass
 004C258D    mov         edx,eax
 004C258F    mov         ecx,dword ptr [ebp-0C]
 004C2592    mov         eax,dword ptr [ebp-4]
 004C2595    mov         ebx,dword ptr [eax]
 004C2597    call        dword ptr [ebx+0E8];TCustomActionBar.sub_004C3EAC
 004C259D    xor         eax,eax
 004C259F    pop         edx
 004C25A0    pop         ecx
 004C25A1    pop         ecx
 004C25A2    mov         dword ptr fs:[eax],edx
 004C25A5    push        4C25E5
 004C25AA    mov         eax,dword ptr [ebp-4]
 004C25AD    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C25B3    call        TActionClient.GetItems
 004C25B8    mov         dl,1
 004C25BA    call        004BDA70
 004C25BF    mov         eax,dword ptr [ebp-4]
 004C25C2    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C25C8    mov         edx,dword ptr [eax]
 004C25CA    call        dword ptr [edx+30];TActionClient.sub_004BE8A8
 004C25CD    mov         eax,dword ptr [ebp-4]
 004C25D0    call        TWinControl.EnableAlign
 004C25D5    mov         eax,dword ptr [ebp-4]
 004C25D8    call        004878BC
 004C25DD    ret
>004C25DE    jmp         @HandleFinally
>004C25E3    jmp         004C25AA
 004C25E5    pop         ebx
 004C25E6    mov         esp,ebp
 004C25E8    pop         ebp
 004C25E9    ret         4
end;*}

//004C25EC
{*procedure TCustomActionBar.sub_004C25EC(?:?);
begin
 004C25EC    push        ebp
 004C25ED    mov         ebp,esp
 004C25EF    add         esp,0FFFFFFF4
 004C25F2    push        ebx
 004C25F3    mov         dword ptr [ebp-8],edx
 004C25F6    mov         dword ptr [ebp-4],eax
 004C25F9    mov         eax,dword ptr [ebp-4]
 004C25FC    cmp         word ptr [eax+23A],0;TCustomActionBar.?f23A:word
>004C2604    je          004C2621
 004C2606    lea         eax,[ebp-0C]
 004C2609    push        eax
 004C260A    mov         ebx,dword ptr [ebp-4]
 004C260D    mov         ecx,dword ptr [ebp-8]
 004C2610    mov         edx,dword ptr [ebp-4]
 004C2613    mov         eax,dword ptr [ebx+23C];TCustomActionBar.?f23C:dword
 004C2619    call        dword ptr [ebx+238];TCustomActionBar.FOnGetControlClass
>004C261F    jmp         004C2632
 004C2621    mov         edx,dword ptr [ebp-8]
 004C2624    mov         eax,dword ptr [ebp-4]
 004C2627    mov         ecx,dword ptr [eax]
 004C2629    call        dword ptr [ecx+110];TCustomActionBar.sub_004C2EB8
 004C262F    mov         dword ptr [ebp-0C],eax
 004C2632    mov         eax,dword ptr [ebp-0C]
 004C2635    pop         ebx
 004C2636    mov         esp,ebp
 004C2638    pop         ebp
 004C2639    ret
end;*}

//004C263C
{*procedure sub_004C263C(?:?);
begin
 004C263C    push        ebp
 004C263D    mov         ebp,esp
 004C263F    add         esp,0FFFFFFF8
 004C2642    push        ebx
 004C2643    mov         dword ptr [ebp-8],edx
 004C2646    mov         dword ptr [ebp-4],eax
 004C2649    mov         eax,dword ptr [ebp-4]
 004C264C    cmp         word ptr [eax+232],0;TCustomActionBar.?f232:word
>004C2654    je          004C266B
 004C2656    lea         ecx,[ebp-8]
 004C2659    mov         ebx,dword ptr [ebp-4]
 004C265C    mov         edx,dword ptr [ebp-4]
 004C265F    mov         eax,dword ptr [ebx+234];TCustomActionBar.?f234:dword
 004C2665    call        dword ptr [ebx+230];TCustomActionBar.FOnControlCreated
 004C266B    pop         ebx
 004C266C    pop         ecx
 004C266D    pop         ecx
 004C266E    pop         ebp
 004C266F    ret
end;*}

//004C2670
{*function sub_004C2670(?:TCustomActionMainMenuBar; ?:?):?;
begin
 004C2670    push        ebp
 004C2671    mov         ebp,esp
 004C2673    add         esp,0FFFFFFE8
 004C2676    xor         ecx,ecx
 004C2678    mov         dword ptr [ebp-18],ecx
 004C267B    mov         word ptr [ebp-6],dx
 004C267F    mov         dword ptr [ebp-4],eax
 004C2682    xor         eax,eax
 004C2684    push        ebp
 004C2685    push        4C272E
 004C268A    push        dword ptr fs:[eax]
 004C268D    mov         dword ptr fs:[eax],esp
 004C2690    mov         eax,dword ptr [ebp-4]
 004C2693    mov         edx,dword ptr [eax]
 004C2695    call        dword ptr [edx+114];TCustomActionMainMenuBar.sub_004C2FA8
 004C269B    dec         eax
 004C269C    test        eax,eax
>004C269E    jl          004C2713
 004C26A0    inc         eax
 004C26A1    mov         dword ptr [ebp-14],eax
 004C26A4    mov         dword ptr [ebp-10],0
 004C26AB    mov         eax,dword ptr [ebp-4]
 004C26AE    call        004C2EE8
 004C26B3    mov         edx,dword ptr [ebp-10]
 004C26B6    call        004BF258
 004C26BB    mov         dword ptr [ebp-0C],eax
 004C26BE    mov         eax,dword ptr [ebp-4]
 004C26C1    call        004C2EE8
 004C26C6    cmp         byte ptr [eax+28],0
>004C26CA    je          004C270B
 004C26CC    mov         eax,dword ptr [ebp-0C]
 004C26CF    mov         eax,dword ptr [eax+40]
 004C26D2    mov         eax,dword ptr [eax+30]
 004C26D5    cmp         byte ptr [eax+1A6],0
>004C26DC    je          004C270B
 004C26DE    mov         eax,dword ptr [ebp-0C]
 004C26E1    cmp         byte ptr [eax+30],0
>004C26E5    je          004C270B
 004C26E7    mov         eax,dword ptr [ebp-0C]
 004C26EA    cmp         byte ptr [eax+51],0
>004C26EE    je          004C270B
 004C26F0    lea         edx,[ebp-18]
 004C26F3    mov         eax,dword ptr [ebp-0C]
 004C26F6    call        TActionClientItem.GetCaption
 004C26FB    mov         edx,dword ptr [ebp-18]
 004C26FE    mov         ax,word ptr [ebp-6]
 004C2702    call        004A06C8
 004C2707    test        al,al
>004C2709    jne         004C2718
 004C270B    inc         dword ptr [ebp-10]
 004C270E    dec         dword ptr [ebp-14]
>004C2711    jne         004C26AB
 004C2713    xor         eax,eax
 004C2715    mov         dword ptr [ebp-0C],eax
 004C2718    xor         eax,eax
 004C271A    pop         edx
 004C271B    pop         ecx
 004C271C    pop         ecx
 004C271D    mov         dword ptr fs:[eax],edx
 004C2720    push        4C2735
 004C2725    lea         eax,[ebp-18]
 004C2728    call        @LStrClr
 004C272D    ret
>004C272E    jmp         @HandleFinally
>004C2733    jmp         004C2725
 004C2735    mov         eax,dword ptr [ebp-0C]
 004C2738    mov         esp,ebp
 004C273A    pop         ebp
 004C273B    ret
end;*}

//004C273C
{*function sub_004C273C:?;
begin
 004C273C    push        ebp
 004C273D    mov         ebp,esp
 004C273F    add         esp,0FFFFFFF8
 004C2742    mov         dword ptr [ebp-4],eax
 004C2745    mov         eax,dword ptr [ebp-4]
 004C2748    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C274F    je          004C277D
 004C2751    mov         eax,dword ptr [ebp-4]
 004C2754    call        004C2F3C
 004C2759    test        al,al
>004C275B    je          004C277D
 004C275D    mov         eax,dword ptr [ebp-4]
 004C2760    call        00487E38
 004C2765    test        eax,eax
>004C2767    jle         004C277D
 004C2769    mov         eax,dword ptr [ebp-4]
 004C276C    call        004C2EE8
 004C2771    xor         edx,edx
 004C2773    call        004BF258
 004C2778    mov         dword ptr [ebp-8],eax
>004C277B    jmp         004C2782
 004C277D    xor         eax,eax
 004C277F    mov         dword ptr [ebp-8],eax
 004C2782    mov         eax,dword ptr [ebp-8]
 004C2785    pop         ecx
 004C2786    pop         ecx
 004C2787    pop         ebp
 004C2788    ret
end;*}

//004C278C
{*function sub_004C278C(?:?; ?:?):?;
begin
 004C278C    push        ebp
 004C278D    mov         ebp,esp
 004C278F    add         esp,0FFFFFFE8
 004C2792    xor         ecx,ecx
 004C2794    mov         dword ptr [ebp-18],ecx
 004C2797    mov         dword ptr [ebp-8],edx
 004C279A    mov         dword ptr [ebp-4],eax
 004C279D    xor         eax,eax
 004C279F    push        ebp
 004C27A0    push        4C2821
 004C27A5    push        dword ptr fs:[eax]
 004C27A8    mov         dword ptr fs:[eax],esp
 004C27AB    xor         eax,eax
 004C27AD    mov         dword ptr [ebp-0C],eax
 004C27B0    mov         eax,dword ptr [ebp-4]
 004C27B3    mov         edx,dword ptr [eax]
 004C27B5    call        dword ptr [edx+114]
 004C27BB    dec         eax
 004C27BC    test        eax,eax
>004C27BE    jl          004C280B
 004C27C0    inc         eax
 004C27C1    mov         dword ptr [ebp-14],eax
 004C27C4    mov         dword ptr [ebp-10],0
 004C27CB    mov         edx,dword ptr [ebp-10]
 004C27CE    mov         eax,dword ptr [ebp-4]
 004C27D1    mov         ecx,dword ptr [eax]
 004C27D3    call        dword ptr [ecx+108]
 004C27D9    lea         edx,[ebp-18]
 004C27DC    call        TPanel.GetCaption
 004C27E1    mov         eax,dword ptr [ebp-18]
 004C27E4    mov         edx,dword ptr [ebp-8]
 004C27E7    call        0040BF44
 004C27EC    test        eax,eax
>004C27EE    jne         004C2803
 004C27F0    mov         edx,dword ptr [ebp-10]
 004C27F3    mov         eax,dword ptr [ebp-4]
 004C27F6    mov         ecx,dword ptr [eax]
 004C27F8    call        dword ptr [ecx+108]
 004C27FE    mov         dword ptr [ebp-0C],eax
>004C2801    jmp         004C280B
 004C2803    inc         dword ptr [ebp-10]
 004C2806    dec         dword ptr [ebp-14]
>004C2809    jne         004C27CB
 004C280B    xor         eax,eax
 004C280D    pop         edx
 004C280E    pop         ecx
 004C280F    pop         ecx
 004C2810    mov         dword ptr fs:[eax],edx
 004C2813    push        4C2828
 004C2818    lea         eax,[ebp-18]
 004C281B    call        @LStrClr
 004C2820    ret
>004C2821    jmp         @HandleFinally
>004C2826    jmp         004C2818
 004C2828    mov         eax,dword ptr [ebp-0C]
 004C282B    mov         esp,ebp
 004C282D    pop         ebp
 004C282E    ret
end;*}

//004C2830
{*function sub_004C2830:?;
begin
 004C2830    push        ebp
 004C2831    mov         ebp,esp
 004C2833    add         esp,0FFFFFFF8
 004C2836    mov         dword ptr [ebp-4],eax
 004C2839    mov         eax,dword ptr [ebp-4]
 004C283C    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C2843    je          004C2873
 004C2845    mov         eax,dword ptr [ebp-4]
 004C2848    call        004C2F3C
 004C284D    test        al,al
>004C284F    je          004C2873
 004C2851    mov         eax,dword ptr [ebp-4]
 004C2854    call        004C2EE8
 004C2859    call        0042158C
 004C285E    dec         eax
 004C285F    push        eax
 004C2860    mov         eax,dword ptr [ebp-4]
 004C2863    call        004C2EE8
 004C2868    pop         edx
 004C2869    call        004BF258
 004C286E    mov         dword ptr [ebp-8],eax
>004C2871    jmp         004C2878
 004C2873    xor         eax,eax
 004C2875    mov         dword ptr [ebp-8],eax
 004C2878    mov         eax,dword ptr [ebp-8]
 004C287B    pop         ecx
 004C287C    pop         ecx
 004C287D    pop         ebp
 004C287E    ret
end;*}

//004C2880
{*function sub_004C2880(?:TCustomActionMenuBar):?;
begin
 004C2880    push        ebp
 004C2881    mov         ebp,esp
 004C2883    add         esp,0FFFFFFF8
 004C2886    push        ebx
 004C2887    mov         dword ptr [ebp-4],eax
 004C288A    mov         eax,dword ptr [ebp-4]
 004C288D    mov         edx,dword ptr [eax]
 004C288F    call        dword ptr [edx+0EC];TCustomActionMenuBar.sub_004C2830
 004C2895    mov         dword ptr [ebp-8],eax
>004C2898    jmp         004C28AD
 004C289A    xor         ecx,ecx
 004C289C    mov         edx,dword ptr [ebp-8]
 004C289F    mov         eax,dword ptr [ebp-4]
 004C28A2    mov         ebx,dword ptr [eax]
 004C28A4    call        dword ptr [ebx+0F4];TCustomActionMenuBar.sub_004C2D1C
 004C28AA    mov         dword ptr [ebp-8],eax
 004C28AD    cmp         dword ptr [ebp-8],0
>004C28B1    je          004C28D1
 004C28B3    mov         eax,dword ptr [ebp-8]
 004C28B6    cmp         dword ptr [eax+40],0
>004C28BA    je          004C289A
 004C28BC    mov         eax,dword ptr [ebp-8]
 004C28BF    cmp         dword ptr [eax+40],0
>004C28C3    je          004C28D1
 004C28C5    mov         eax,dword ptr [ebp-8]
 004C28C8    mov         eax,dword ptr [eax+40]
 004C28CB    cmp         byte ptr [eax+57],0
>004C28CF    je          004C289A
 004C28D1    mov         eax,dword ptr [ebp-8]
 004C28D4    pop         ebx
 004C28D5    pop         ecx
 004C28D6    pop         ecx
 004C28D7    pop         ebp
 004C28D8    ret
end;*}

//004C28DC
{*function sub_004C28DC(?:TCustomActionDockBar):?;
begin
 004C28DC    push        ebp
 004C28DD    mov         ebp,esp
 004C28DF    add         esp,0FFFFFFF8
 004C28E2    push        ebx
 004C28E3    mov         dword ptr [ebp-4],eax
 004C28E6    mov         eax,dword ptr [ebp-4]
 004C28E9    mov         edx,dword ptr [eax]
 004C28EB    call        dword ptr [edx+140];TCustomActionDockBar.sub_004C273C
 004C28F1    mov         dword ptr [ebp-8],eax
>004C28F4    jmp         004C2909
 004C28F6    xor         ecx,ecx
 004C28F8    mov         edx,dword ptr [ebp-8]
 004C28FB    mov         eax,dword ptr [ebp-4]
 004C28FE    mov         ebx,dword ptr [eax]
 004C2900    call        dword ptr [ebx+0F0];TCustomActionDockBar.sub_004C2C78
 004C2906    mov         dword ptr [ebp-8],eax
 004C2909    cmp         dword ptr [ebp-8],0
>004C290D    je          004C2924
 004C290F    mov         eax,dword ptr [ebp-8]
 004C2912    cmp         dword ptr [eax+40],0
>004C2916    je          004C2924
 004C2918    mov         eax,dword ptr [ebp-8]
 004C291B    mov         eax,dword ptr [eax+40]
 004C291E    cmp         byte ptr [eax+57],0
>004C2922    je          004C28F6
 004C2924    mov         eax,dword ptr [ebp-8]
 004C2927    pop         ebx
 004C2928    pop         ecx
 004C2929    pop         ecx
 004C292A    pop         ebp
 004C292B    ret
end;*}

//004C292C
{*function sub_004C292C(?:TPoint; ?:?):?;
begin
 004C292C    push        ebp
 004C292D    mov         ebp,esp
 004C292F    add         esp,0FFFFFFF0
 004C2932    push        esi
 004C2933    push        edi
 004C2934    mov         esi,eax
 004C2936    lea         edi,[ebp-8]
 004C2939    movs        dword ptr [edi],dword ptr [esi]
 004C293A    movs        dword ptr [edi],dword ptr [esi]
 004C293B    mov         dword ptr [ebp-0C],1
 004C2942    mov         eax,dword ptr [ebp+8]
 004C2945    mov         eax,dword ptr [eax-4]
 004C2948    cmp         dword ptr [eax+250],1
>004C294F    jle         004C2988
 004C2951    mov         eax,dword ptr [ebp+8]
 004C2954    mov         eax,dword ptr [eax-4]
 004C2957    mov         edx,dword ptr [eax]
 004C2959    call        dword ptr [edx+0FC]
 004C295F    mov         edx,dword ptr [ebp+8]
 004C2962    mov         edx,dword ptr [edx-4]
 004C2965    mov         ecx,dword ptr [edx+250]
 004C296B    cdq
 004C296C    idiv        eax,ecx
 004C296E    mov         dword ptr [ebp-10],eax
 004C2971    mov         dword ptr [ebp-0C],1
>004C2978    jmp         004C297D
 004C297A    inc         dword ptr [ebp-0C]
 004C297D    mov         eax,dword ptr [ebp-10]
 004C2980    imul        dword ptr [ebp-0C]
 004C2983    cmp         eax,dword ptr [ebp-4]
>004C2986    jl          004C297A
 004C2988    mov         eax,dword ptr [ebp+8]
 004C298B    mov         eax,dword ptr [eax-4]
 004C298E    cmp         dword ptr [eax+24C],1
>004C2995    jle         004C29CE
 004C2997    mov         eax,dword ptr [ebp+8]
 004C299A    mov         eax,dword ptr [eax-4]
 004C299D    mov         edx,dword ptr [eax]
 004C299F    call        dword ptr [edx+100]
 004C29A5    mov         edx,dword ptr [ebp+8]
 004C29A8    mov         edx,dword ptr [edx-4]
 004C29AB    mov         ecx,dword ptr [edx+24C]
 004C29B1    cdq
 004C29B2    idiv        eax,ecx
 004C29B4    mov         dword ptr [ebp-10],eax
 004C29B7    mov         dword ptr [ebp-0C],1
>004C29BE    jmp         004C29C3
 004C29C0    inc         dword ptr [ebp-0C]
 004C29C3    mov         eax,dword ptr [ebp-10]
 004C29C6    imul        dword ptr [ebp-0C]
 004C29C9    cmp         eax,dword ptr [ebp-8]
>004C29CC    jl          004C29C0
 004C29CE    mov         eax,dword ptr [ebp-0C]
 004C29D1    pop         edi
 004C29D2    pop         esi
 004C29D3    mov         esp,ebp
 004C29D5    pop         ebp
 004C29D6    ret
end;*}

//004C29D8
{*function sub_004C29D8(?:TCustomActionBar; ?:?):?;
begin
 004C29D8    push        ebp
 004C29D9    mov         ebp,esp
 004C29DB    add         esp,0FFFFFFC4
 004C29DE    mov         dword ptr [ebp-8],edx
 004C29E1    mov         dword ptr [ebp-4],eax
 004C29E4    push        0
 004C29E6    mov         edx,dword ptr [ebp-8]
 004C29E9    mov         cl,1
 004C29EB    mov         eax,dword ptr [ebp-4]
 004C29EE    call        00488D4C
 004C29F3    mov         dword ptr [ebp-28],eax
 004C29F6    mov         eax,dword ptr [ebp-28]
 004C29F9    mov         edx,dword ptr ds:[4BB9B8];TCustomActionControl
 004C29FF    call        @IsClass
 004C2A04    test        al,al
>004C2A06    je          004C2A13
 004C2A08    mov         eax,dword ptr [ebp-28]
 004C2A0B    mov         dword ptr [ebp-0C],eax
>004C2A0E    jmp         004C2C17
 004C2A13    xor         eax,eax
 004C2A15    mov         dword ptr [ebp-0C],eax
 004C2A18    mov         dword ptr [ebp-14],7FFFFFFF
 004C2A1F    push        ebp
 004C2A20    mov         eax,dword ptr [ebp-8]
 004C2A23    call        004C292C
 004C2A28    pop         ecx
 004C2A29    mov         dword ptr [ebp-24],eax
 004C2A2C    mov         eax,dword ptr [ebp-4]
 004C2A2F    mov         edx,dword ptr [eax]
 004C2A31    call        dword ptr [edx+114]
 004C2A37    dec         eax
 004C2A38    test        eax,eax
>004C2A3A    jl          004C2C17
 004C2A40    inc         eax
 004C2A41    mov         dword ptr [ebp-2C],eax
 004C2A44    mov         dword ptr [ebp-10],0
 004C2A4B    mov         eax,dword ptr [ebp-4]
 004C2A4E    call        004C2EE8
 004C2A53    mov         edx,dword ptr [ebp-10]
 004C2A56    call        004BF258
 004C2A5B    cmp         dword ptr [eax+40],0
>004C2A5F    je          004C2C0B
 004C2A65    mov         eax,dword ptr [ebp-4]
 004C2A68    call        004C2EE8
 004C2A6D    mov         edx,dword ptr [ebp-10]
 004C2A70    call        004BF258
 004C2A75    mov         eax,dword ptr [eax+40]
 004C2A78    cmp         byte ptr [eax+57],0
>004C2A7C    je          004C2C0B
 004C2A82    push        ebp
 004C2A83    mov         eax,dword ptr [ebp-4]
 004C2A86    call        004C2EE8
 004C2A8B    mov         edx,dword ptr [ebp-10]
 004C2A8E    call        004BF258
 004C2A93    mov         eax,dword ptr [eax+40]
 004C2A96    lea         edx,[ebp-3C]
 004C2A99    call        00482ECC
 004C2A9E    lea         eax,[ebp-3C]
 004C2AA1    call        004C292C
 004C2AA6    pop         ecx
 004C2AA7    cmp         eax,dword ptr [ebp-24]
>004C2AAA    jne         004C2C0B
 004C2AB0    mov         eax,dword ptr [ebp-8]
 004C2AB3    mov         eax,dword ptr [eax]
 004C2AB5    mov         dword ptr [ebp-1C],eax
 004C2AB8    mov         eax,dword ptr [ebp-8]
 004C2ABB    mov         eax,dword ptr [eax+4]
 004C2ABE    mov         dword ptr [ebp-20],eax
 004C2AC1    mov         eax,dword ptr [ebp-4]
 004C2AC4    call        004C2EE8
 004C2AC9    mov         edx,dword ptr [ebp-10]
 004C2ACC    call        004BF258
 004C2AD1    mov         eax,dword ptr [eax+40]
 004C2AD4    mov         eax,dword ptr [eax+40]
 004C2AD7    mov         edx,dword ptr [ebp-8]
 004C2ADA    cmp         eax,dword ptr [edx]
>004C2ADC    jle         004C2AF7
 004C2ADE    mov         eax,dword ptr [ebp-4]
 004C2AE1    call        004C2EE8
 004C2AE6    mov         edx,dword ptr [ebp-10]
 004C2AE9    call        004BF258
 004C2AEE    mov         eax,dword ptr [eax+40]
 004C2AF1    mov         eax,dword ptr [eax+40]
 004C2AF4    mov         dword ptr [ebp-1C],eax
 004C2AF7    mov         eax,dword ptr [ebp-4]
 004C2AFA    call        004C2EE8
 004C2AFF    mov         edx,dword ptr [ebp-10]
 004C2B02    call        004BF258
 004C2B07    mov         eax,dword ptr [eax+40]
 004C2B0A    mov         eax,dword ptr [eax+44]
 004C2B0D    mov         edx,dword ptr [ebp-8]
 004C2B10    cmp         eax,dword ptr [edx+4]
>004C2B13    jle         004C2B2E
 004C2B15    mov         eax,dword ptr [ebp-4]
 004C2B18    call        004C2EE8
 004C2B1D    mov         edx,dword ptr [ebp-10]
 004C2B20    call        004BF258
 004C2B25    mov         eax,dword ptr [eax+40]
 004C2B28    mov         eax,dword ptr [eax+44]
 004C2B2B    mov         dword ptr [ebp-20],eax
 004C2B2E    mov         eax,dword ptr [ebp-4]
 004C2B31    call        004C2EE8
 004C2B36    mov         edx,dword ptr [ebp-10]
 004C2B39    call        004BF258
 004C2B3E    mov         eax,dword ptr [eax+40]
 004C2B41    lea         edx,[ebp-3C]
 004C2B44    call        00482ECC
 004C2B49    mov         eax,dword ptr [ebp-34]
 004C2B4C    mov         edx,dword ptr [ebp-8]
 004C2B4F    cmp         eax,dword ptr [edx]
>004C2B51    jge         004C2B74
 004C2B53    mov         eax,dword ptr [ebp-4]
 004C2B56    call        004C2EE8
 004C2B5B    mov         edx,dword ptr [ebp-10]
 004C2B5E    call        004BF258
 004C2B63    mov         eax,dword ptr [eax+40]
 004C2B66    lea         edx,[ebp-3C]
 004C2B69    call        00482ECC
 004C2B6E    mov         eax,dword ptr [ebp-34]
 004C2B71    mov         dword ptr [ebp-1C],eax
 004C2B74    mov         eax,dword ptr [ebp-4]
 004C2B77    call        004C2EE8
 004C2B7C    mov         edx,dword ptr [ebp-10]
 004C2B7F    call        004BF258
 004C2B84    mov         eax,dword ptr [eax+40]
 004C2B87    lea         edx,[ebp-3C]
 004C2B8A    call        00482ECC
 004C2B8F    mov         eax,dword ptr [ebp-30]
 004C2B92    mov         edx,dword ptr [ebp-8]
 004C2B95    cmp         eax,dword ptr [edx+4]
>004C2B98    jge         004C2BBB
 004C2B9A    mov         eax,dword ptr [ebp-4]
 004C2B9D    call        004C2EE8
 004C2BA2    mov         edx,dword ptr [ebp-10]
 004C2BA5    call        004BF258
 004C2BAA    mov         eax,dword ptr [eax+40]
 004C2BAD    lea         edx,[ebp-3C]
 004C2BB0    call        00482ECC
 004C2BB5    mov         eax,dword ptr [ebp-30]
 004C2BB8    mov         dword ptr [ebp-20],eax
 004C2BBB    mov         eax,dword ptr [ebp-8]
 004C2BBE    mov         eax,dword ptr [eax]
 004C2BC0    sub         eax,dword ptr [ebp-1C]
 004C2BC3    mov         edx,dword ptr [ebp-8]
 004C2BC6    mov         edx,dword ptr [edx]
 004C2BC8    sub         edx,dword ptr [ebp-1C]
 004C2BCB    imul        edx
 004C2BCD    mov         edx,dword ptr [ebp-8]
 004C2BD0    mov         edx,dword ptr [edx+4]
 004C2BD3    sub         edx,dword ptr [ebp-20]
 004C2BD6    mov         ecx,dword ptr [ebp-8]
 004C2BD9    mov         ecx,dword ptr [ecx+4]
 004C2BDC    sub         ecx,dword ptr [ebp-20]
 004C2BDF    imul        edx,ecx
 004C2BE2    add         eax,edx
 004C2BE4    mov         dword ptr [ebp-18],eax
 004C2BE7    mov         eax,dword ptr [ebp-18]
 004C2BEA    cmp         eax,dword ptr [ebp-14]
>004C2BED    jge         004C2C0B
 004C2BEF    mov         eax,dword ptr [ebp-18]
 004C2BF2    mov         dword ptr [ebp-14],eax
 004C2BF5    mov         eax,dword ptr [ebp-4]
 004C2BF8    call        004C2EE8
 004C2BFD    mov         edx,dword ptr [ebp-10]
 004C2C00    call        004BF258
 004C2C05    mov         eax,dword ptr [eax+40]
 004C2C08    mov         dword ptr [ebp-0C],eax
 004C2C0B    inc         dword ptr [ebp-10]
 004C2C0E    dec         dword ptr [ebp-2C]
>004C2C11    jne         004C2A4B
 004C2C17    mov         eax,dword ptr [ebp-0C]
 004C2C1A    mov         esp,ebp
 004C2C1C    pop         ebp
 004C2C1D    ret
end;*}

//004C2C20
{*function sub_004C2C20(?:TCustomActionDockBar; ?:TActionClientItem):?;
begin
 004C2C20    push        ebp
 004C2C21    mov         ebp,esp
 004C2C23    add         esp,0FFFFFFF4
 004C2C26    push        ebx
 004C2C27    mov         dword ptr [ebp-8],edx
 004C2C2A    mov         dword ptr [ebp-4],eax
 004C2C2D    xor         ecx,ecx
 004C2C2F    mov         edx,dword ptr [ebp-8]
 004C2C32    mov         eax,dword ptr [ebp-4]
 004C2C35    mov         ebx,dword ptr [eax]
 004C2C37    call        dword ptr [ebx+0F0];TCustomActionDockBar.sub_004C2C78
 004C2C3D    mov         dword ptr [ebp-0C],eax
>004C2C40    jmp         004C2C55
 004C2C42    xor         ecx,ecx
 004C2C44    mov         edx,dword ptr [ebp-0C]
 004C2C47    mov         eax,dword ptr [ebp-4]
 004C2C4A    mov         ebx,dword ptr [eax]
 004C2C4C    call        dword ptr [ebx+0F0];TCustomActionDockBar.sub_004C2C78
 004C2C52    mov         dword ptr [ebp-0C],eax
 004C2C55    cmp         dword ptr [ebp-0C],0
>004C2C59    je          004C2C70
 004C2C5B    mov         eax,dword ptr [ebp-0C]
 004C2C5E    cmp         dword ptr [eax+40],0
>004C2C62    je          004C2C70
 004C2C64    mov         eax,dword ptr [ebp-0C]
 004C2C67    mov         eax,dword ptr [eax+40]
 004C2C6A    cmp         byte ptr [eax+57],0
>004C2C6E    je          004C2C42
 004C2C70    mov         eax,dword ptr [ebp-0C]
 004C2C73    pop         ebx
 004C2C74    mov         esp,ebp
 004C2C76    pop         ebp
 004C2C77    ret
end;*}

//004C2C78
{*function sub_004C2C78(?:?; ?:?):?;
begin
 004C2C78    push        ebp
 004C2C79    mov         ebp,esp
 004C2C7B    add         esp,0FFFFFFF0
 004C2C7E    push        ebx
 004C2C7F    mov         byte ptr [ebp-9],cl
 004C2C82    mov         dword ptr [ebp-8],edx
 004C2C85    mov         dword ptr [ebp-4],eax
 004C2C88    xor         eax,eax
 004C2C8A    mov         dword ptr [ebp-10],eax
 004C2C8D    cmp         dword ptr [ebp-8],0
>004C2C91    je          004C2D00
 004C2C93    mov         eax,dword ptr [ebp-4]
 004C2C96    call        004C2F3C
 004C2C9B    test        al,al
>004C2C9D    je          004C2CD8
 004C2C9F    mov         eax,dword ptr [ebp-8]
 004C2CA2    call        TCollectionItem.GetIndex
 004C2CA7    mov         ebx,eax
 004C2CA9    mov         eax,dword ptr [ebp-4]
 004C2CAC    call        004C2EE8
 004C2CB1    call        0042158C
 004C2CB6    dec         eax
 004C2CB7    cmp         ebx,eax
>004C2CB9    jge         004C2CD8
 004C2CBB    mov         eax,dword ptr [ebp-8]
 004C2CBE    call        TCollectionItem.GetIndex
 004C2CC3    inc         eax
 004C2CC4    push        eax
 004C2CC5    mov         eax,dword ptr [ebp-4]
 004C2CC8    call        004C2EE8
 004C2CCD    pop         edx
 004C2CCE    call        004BF258
 004C2CD3    mov         dword ptr [ebp-10],eax
>004C2CD6    jmp         004C2D14
 004C2CD8    cmp         byte ptr [ebp-9],0
>004C2CDC    je          004C2D14
 004C2CDE    mov         eax,dword ptr [ebp-4]
 004C2CE1    mov         edx,dword ptr [eax]
 004C2CE3    call        dword ptr [edx+114];TCustomActionBar.sub_004C2FA8
 004C2CE9    dec         eax
>004C2CEA    jle         004C2D14
 004C2CEC    mov         eax,dword ptr [ebp-4]
 004C2CEF    call        004C2EE8
 004C2CF4    xor         edx,edx
 004C2CF6    call        004BF258
 004C2CFB    mov         dword ptr [ebp-10],eax
>004C2CFE    jmp         004C2D14
 004C2D00    cmp         byte ptr [ebp-9],0
>004C2D04    je          004C2D14
 004C2D06    mov         eax,dword ptr [ebp-4]
 004C2D09    mov         edx,dword ptr [eax]
 004C2D0B    call        dword ptr [edx+140];TCustomActionBar.sub_004C273C
 004C2D11    mov         dword ptr [ebp-10],eax
 004C2D14    mov         eax,dword ptr [ebp-10]
 004C2D17    pop         ebx
 004C2D18    mov         esp,ebp
 004C2D1A    pop         ebp
 004C2D1B    ret
end;*}

//004C2D1C
{*function sub_004C2D1C(?:?; ?:?):?;
begin
 004C2D1C    push        ebp
 004C2D1D    mov         ebp,esp
 004C2D1F    add         esp,0FFFFFFF0
 004C2D22    mov         byte ptr [ebp-9],cl
 004C2D25    mov         dword ptr [ebp-8],edx
 004C2D28    mov         dword ptr [ebp-4],eax
 004C2D2B    xor         eax,eax
 004C2D2D    mov         dword ptr [ebp-10],eax
 004C2D30    cmp         dword ptr [ebp-8],0
>004C2D34    je          004C2D95
 004C2D36    mov         eax,dword ptr [ebp-8]
 004C2D39    call        TCollectionItem.GetIndex
 004C2D3E    test        eax,eax
>004C2D40    jle         004C2D5F
 004C2D42    mov         eax,dword ptr [ebp-8]
 004C2D45    call        TCollectionItem.GetIndex
 004C2D4A    dec         eax
 004C2D4B    push        eax
 004C2D4C    mov         eax,dword ptr [ebp-4]
 004C2D4F    call        004C2EE8
 004C2D54    pop         edx
 004C2D55    call        004BF258
 004C2D5A    mov         dword ptr [ebp-10],eax
>004C2D5D    jmp         004C2DA9
 004C2D5F    cmp         byte ptr [ebp-9],0
>004C2D63    je          004C2DA9
 004C2D65    mov         eax,dword ptr [ebp-4]
 004C2D68    mov         edx,dword ptr [eax]
 004C2D6A    call        dword ptr [edx+114];TCustomActionBar.sub_004C2FA8
 004C2D70    dec         eax
>004C2D71    jle         004C2DA9
 004C2D73    mov         eax,dword ptr [ebp-4]
 004C2D76    call        004C2EE8
 004C2D7B    call        0042158C
 004C2D80    dec         eax
 004C2D81    push        eax
 004C2D82    mov         eax,dword ptr [ebp-4]
 004C2D85    call        004C2EE8
 004C2D8A    pop         edx
 004C2D8B    call        004BF258
 004C2D90    mov         dword ptr [ebp-10],eax
>004C2D93    jmp         004C2DA9
 004C2D95    cmp         byte ptr [ebp-9],0
>004C2D99    je          004C2DA9
 004C2D9B    mov         eax,dword ptr [ebp-4]
 004C2D9E    mov         edx,dword ptr [eax]
 004C2DA0    call        dword ptr [edx+0EC];TCustomActionBar.sub_004C2830
 004C2DA6    mov         dword ptr [ebp-10],eax
 004C2DA9    mov         eax,dword ptr [ebp-10]
 004C2DAC    mov         esp,ebp
 004C2DAE    pop         ebp
 004C2DAF    ret
end;*}

//004C2DB0
{*function sub_004C2DB0(?:?):?;
begin
 004C2DB0    push        ebp
 004C2DB1    mov         ebp,esp
 004C2DB3    add         esp,0FFFFFFF4
 004C2DB6    mov         dword ptr [ebp-8],edx
 004C2DB9    mov         dword ptr [ebp-4],eax
 004C2DBC    cmp         dword ptr [ebp-8],0
>004C2DC0    jl          004C2DEA
 004C2DC2    mov         eax,dword ptr [ebp-4]
 004C2DC5    mov         edx,dword ptr [eax]
 004C2DC7    call        dword ptr [edx+114];TCustomActionBar.sub_004C2FA8
 004C2DCD    cmp         eax,dword ptr [ebp-8]
>004C2DD0    jle         004C2DEA
 004C2DD2    mov         eax,dword ptr [ebp-4]
 004C2DD5    call        004C2EE8
 004C2DDA    mov         edx,dword ptr [ebp-8]
 004C2DDD    call        004BF258
 004C2DE2    mov         eax,dword ptr [eax+40]
 004C2DE5    mov         dword ptr [ebp-0C],eax
>004C2DE8    jmp         004C2DEF
 004C2DEA    xor         eax,eax
 004C2DEC    mov         dword ptr [ebp-0C],eax
 004C2DEF    mov         eax,dword ptr [ebp-0C]
 004C2DF2    mov         esp,ebp
 004C2DF4    pop         ebp
 004C2DF5    ret
end;*}

//004C2DF8
{*function sub_004C2DF8(?:?):?;
begin
 004C2DF8    push        ebp
 004C2DF9    mov         ebp,esp
 004C2DFB    add         esp,0FFFFFFF4
 004C2DFE    mov         byte ptr [ebp-5],dl
 004C2E01    mov         dword ptr [ebp-4],eax
 004C2E04    xor         eax,eax
 004C2E06    mov         dword ptr [ebp-0C],eax
 004C2E09    mov         eax,dword ptr [ebp-4]
 004C2E0C    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C2E13    je          004C2EB0
 004C2E19    mov         al,byte ptr [ebp-5]
 004C2E1C    sub         al,1
>004C2E1E    jb          004C2E2B
>004C2E20    je          004C2E57
 004C2E22    dec         al
>004C2E24    je          004C2E83
>004C2E26    jmp         004C2EB0
 004C2E2B    mov         eax,dword ptr [ebp-4]
 004C2E2E    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2E34    cmp         byte ptr [eax+14],3;TActionClient.BackgroundLayout:TBackgroundLayout
>004C2E38    jne         004C2EB0
 004C2E3A    mov         eax,dword ptr [ebp-4]
 004C2E3D    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2E43    call        TActionClient.GetBackground
 004C2E48    call        00431BA8
 004C2E4D    mov         edx,dword ptr [eax]
 004C2E4F    call        dword ptr [edx+2C]
 004C2E52    mov         dword ptr [ebp-0C],eax
>004C2E55    jmp         004C2EB0
 004C2E57    mov         eax,dword ptr [ebp-4]
 004C2E5A    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2E60    cmp         byte ptr [eax+14],4;TActionClient.BackgroundLayout:TBackgroundLayout
>004C2E64    jne         004C2EB0
 004C2E66    mov         eax,dword ptr [ebp-4]
 004C2E69    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2E6F    call        TActionClient.GetBackground
 004C2E74    call        00431BA8
 004C2E79    mov         edx,dword ptr [eax]
 004C2E7B    call        dword ptr [edx+2C]
 004C2E7E    mov         dword ptr [ebp-0C],eax
>004C2E81    jmp         004C2EB0
 004C2E83    mov         eax,dword ptr [ebp-4]
 004C2E86    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2E8C    mov         al,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 004C2E8F    add         al,0FD
 004C2E91    sub         al,2
>004C2E93    jae         004C2EB0
 004C2E95    mov         eax,dword ptr [ebp-4]
 004C2E98    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2E9E    call        TActionClient.GetBackground
 004C2EA3    call        00431BA8
 004C2EA8    mov         edx,dword ptr [eax]
 004C2EAA    call        dword ptr [edx+2C]
 004C2EAD    mov         dword ptr [ebp-0C],eax
 004C2EB0    mov         eax,dword ptr [ebp-0C]
 004C2EB3    mov         esp,ebp
 004C2EB5    pop         ebp
 004C2EB6    ret
end;*}

//004C2EB8
{*function sub_004C2EB8(?:?):?;
begin
 004C2EB8    push        ebp
 004C2EB9    mov         ebp,esp
 004C2EBB    add         esp,0FFFFFFF4
 004C2EBE    push        ebx
 004C2EBF    mov         dword ptr [ebp-8],edx
 004C2EC2    mov         dword ptr [ebp-4],eax
 004C2EC5    mov         eax,dword ptr [ebp-4]
 004C2EC8    mov         edx,dword ptr [eax]
 004C2ECA    call        dword ptr [edx+148];TCustomActionBar.sub_004C4B1C
 004C2ED0    mov         ecx,dword ptr [ebp-8]
 004C2ED3    mov         edx,dword ptr [ebp-4]
 004C2ED6    mov         ebx,dword ptr [eax]
 004C2ED8    call        dword ptr [ebx]
 004C2EDA    mov         dword ptr [ebp-0C],eax
 004C2EDD    mov         eax,dword ptr [ebp-0C]
 004C2EE0    pop         ebx
 004C2EE1    mov         esp,ebp
 004C2EE3    pop         ebp
 004C2EE4    ret
end;*}

//004C2EE8
{*function sub_004C2EE8(?:TCustomActionBar):?;
begin
 004C2EE8    push        ebp
 004C2EE9    mov         ebp,esp
 004C2EEB    add         esp,0FFFFFFF8
 004C2EEE    mov         dword ptr [ebp-4],eax
 004C2EF1    xor         eax,eax
 004C2EF3    mov         dword ptr [ebp-8],eax
 004C2EF6    mov         eax,dword ptr [ebp-4]
 004C2EF9    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C2F00    je          004C2F32
 004C2F02    mov         eax,dword ptr [ebp-4]
 004C2F05    cmp         byte ptr [eax+270],0;TCustomActionBar.FContextBar:Boolean
>004C2F0C    je          004C2F21
 004C2F0E    mov         eax,dword ptr [ebp-4]
 004C2F11    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2F17    call        TActionClient.GetContextItems
 004C2F1C    mov         dword ptr [ebp-8],eax
>004C2F1F    jmp         004C2F32
 004C2F21    mov         eax,dword ptr [ebp-4]
 004C2F24    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2F2A    call        TActionClient.GetItems
 004C2F2F    mov         dword ptr [ebp-8],eax
 004C2F32    mov         eax,dword ptr [ebp-8]
 004C2F35    pop         ecx
 004C2F36    pop         ecx
 004C2F37    pop         ebp
 004C2F38    ret
end;*}

//004C2F3C
{*function sub_004C2F3C(?:TCustomActionBar):?;
begin
 004C2F3C    push        ebp
 004C2F3D    mov         ebp,esp
 004C2F3F    add         esp,0FFFFFFF8
 004C2F42    mov         dword ptr [ebp-4],eax
 004C2F45    mov         byte ptr [ebp-5],0
 004C2F49    mov         eax,dword ptr [ebp-4]
 004C2F4C    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C2F53    je          004C2FA1
 004C2F55    mov         eax,dword ptr [ebp-4]
 004C2F58    cmp         byte ptr [eax+270],0;TCustomActionBar.FContextBar:Boolean
>004C2F5F    je          004C2F90
 004C2F61    mov         eax,dword ptr [ebp-4]
 004C2F64    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2F6A    cmp         dword ptr [eax+1C],0;TActionClient.FContextItems:TActionClients
>004C2F6E    je          004C2F85
 004C2F70    mov         eax,dword ptr [ebp-4]
 004C2F73    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2F79    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 004C2F7C    call        0042158C
 004C2F81    test        eax,eax
>004C2F83    jg          004C2F89
 004C2F85    xor         eax,eax
>004C2F87    jmp         004C2F8B
 004C2F89    mov         al,1
 004C2F8B    mov         byte ptr [ebp-5],al
>004C2F8E    jmp         004C2FA1
 004C2F90    mov         eax,dword ptr [ebp-4]
 004C2F93    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C2F99    call        004BE56C
 004C2F9E    mov         byte ptr [ebp-5],al
 004C2FA1    mov         al,byte ptr [ebp-5]
 004C2FA4    pop         ecx
 004C2FA5    pop         ecx
 004C2FA6    pop         ebp
 004C2FA7    ret
end;*}

//004C2FA8
{*function sub_004C2FA8:?;
begin
 004C2FA8    push        ebp
 004C2FA9    mov         ebp,esp
 004C2FAB    add         esp,0FFFFFFF8
 004C2FAE    mov         dword ptr [ebp-4],eax
 004C2FB1    mov         eax,dword ptr [ebp-4]
 004C2FB4    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C2FBB    je          004C2FDB
 004C2FBD    mov         eax,dword ptr [ebp-4]
 004C2FC0    call        004C2F3C
 004C2FC5    test        al,al
>004C2FC7    je          004C2FDB
 004C2FC9    mov         eax,dword ptr [ebp-4]
 004C2FCC    call        004C2EE8
 004C2FD1    call        0042158C
 004C2FD6    mov         dword ptr [ebp-8],eax
>004C2FD9    jmp         004C2FE0
 004C2FDB    xor         eax,eax
 004C2FDD    mov         dword ptr [ebp-8],eax
 004C2FE0    mov         eax,dword ptr [ebp-8]
 004C2FE3    pop         ecx
 004C2FE4    pop         ecx
 004C2FE5    pop         ebp
 004C2FE6    ret
end;*}

//004C2FE8
procedure sub_004C2FE8;
begin
{*
 004C2FE8    push        ebp
 004C2FE9    mov         ebp,esp
 004C2FEB    add         esp,0FFFFFFF8
 004C2FEE    mov         dword ptr [ebp-4],eax
 004C2FF1    mov         eax,dword ptr [ebp-4]
 004C2FF4    call        004864B8
 004C2FF9    mov         eax,dword ptr [ebp-4]
 004C2FFC    cmp         dword ptr [eax+214],0;TCustomActionBar.FActionManager:TCustomActionManager
>004C3003    je          004C301C
 004C3005    mov         eax,dword ptr [ebp-4]
 004C3008    mov         eax,dword ptr [eax+214];TCustomActionBar.FActionManager:TCustomActionManager
 004C300E    mov         dword ptr [ebp-8],eax
 004C3011    mov         edx,dword ptr [ebp-8]
 004C3014    mov         eax,dword ptr [ebp-4]
 004C3017    call        004C3608
 004C301C    mov         eax,dword ptr [ebp-4]
 004C301F    cmp         dword ptr [eax+220],0;TCustomActionBar.FColorMap:TCustomActionBarColorMap
>004C3026    jne         004C303D
 004C3028    mov         eax,dword ptr [ebp-4]
 004C302B    call        004C4260
 004C3030    mov         edx,eax
 004C3032    mov         eax,dword ptr [ebp-4]
 004C3035    mov         ecx,dword ptr [eax]
 004C3037    call        dword ptr [ecx+12C];TCustomActionBar.sub_004C4180
 004C303D    pop         ecx
 004C303E    pop         ecx
 004C303F    pop         ebp
 004C3040    ret
*}
end;

//004C3044
{*procedure sub_004C3044(?:?; ?:?);
begin
 004C3044    push        ebp
 004C3045    mov         ebp,esp
 004C3047    add         esp,0FFFFFFF4
 004C304A    mov         byte ptr [ebp-9],cl
 004C304D    mov         dword ptr [ebp-8],edx
 004C3050    mov         dword ptr [ebp-4],eax
 004C3053    mov         cl,byte ptr [ebp-9]
 004C3056    mov         edx,dword ptr [ebp-8]
 004C3059    mov         eax,dword ptr [ebp-4]
 004C305C    call        004827F4
 004C3061    mov         al,byte ptr [ebp-9]
 004C3064    dec         al
>004C3066    jne         004C30B2
 004C3068    mov         eax,dword ptr [ebp-8]
 004C306B    mov         edx,dword ptr [ebp-4]
 004C306E    cmp         eax,dword ptr [edx+214];TCustomActionBar.FActionManager:TCustomActionManager
>004C3074    jne         004C308E
 004C3076    mov         eax,dword ptr [ebp-4]
 004C3079    mov         edx,dword ptr [eax]
 004C307B    call        dword ptr [edx+0D0];TCustomActionBar.sub_004C17C8
 004C3081    mov         eax,dword ptr [ebp-4]
 004C3084    xor         edx,edx
 004C3086    mov         dword ptr [eax+214],edx;TCustomActionBar.FActionManager:TCustomActionManager
>004C308C    jmp         004C30B2
 004C308E    mov         eax,dword ptr [ebp-8]
 004C3091    mov         edx,dword ptr [ebp-4]
 004C3094    cmp         eax,dword ptr [edx+220];TCustomActionBar.FColorMap:TCustomActionBarColorMap
>004C309A    jne         004C30B2
 004C309C    mov         eax,dword ptr [ebp-4]
 004C309F    test        byte ptr [eax+1C],8;TCustomActionBar.FComponentState:TComponentState
>004C30A3    jne         004C30B2
 004C30A5    xor         edx,edx
 004C30A7    mov         eax,dword ptr [ebp-4]
 004C30AA    mov         ecx,dword ptr [eax]
 004C30AC    call        dword ptr [ecx+12C];TCustomActionBar.sub_004C4180
 004C30B2    mov         esp,ebp
 004C30B4    pop         ebp
 004C30B5    ret
end;*}

//004C30B8
procedure sub_004C30B8;
begin
{*
 004C30B8    push        ebp
 004C30B9    mov         ebp,esp
 004C30BB    push        ecx
 004C30BC    push        ebx
 004C30BD    mov         dword ptr [ebp-4],eax
 004C30C0    mov         eax,dword ptr [ebp-4]
 004C30C3    mov         edx,dword ptr [eax]
 004C30C5    call        dword ptr [edx+118];TCustomActionBar.sub_004C225C
 004C30CB    mov         eax,dword ptr [ebp-4]
 004C30CE    cmp         word ptr [eax+242],0;TCustomActionBar.?f242:word
>004C30D6    je          004C30EA
 004C30D8    mov         ebx,dword ptr [ebp-4]
 004C30DB    mov         edx,dword ptr [ebp-4]
 004C30DE    mov         eax,dword ptr [ebx+244];TCustomActionBar.?f244:dword
 004C30E4    call        dword ptr [ebx+240];TCustomActionBar.FOnPaint
 004C30EA    pop         ebx
 004C30EB    pop         ecx
 004C30EC    pop         ebp
 004C30ED    ret
*}
end;

//004C30F0
{*procedure sub_004C30F0(?:?);
begin
 004C30F0    push        ebp
 004C30F1    mov         ebp,esp
 004C30F3    add         esp,0FFFFFFF8
 004C30F6    mov         dword ptr [ebp-8],edx
 004C30F9    mov         dword ptr [ebp-4],eax
 004C30FC    mov         eax,dword ptr [ebp-4]
 004C30FF    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C3105    call        TCanvas.Lock
 004C310A    xor         eax,eax
 004C310C    push        ebp
 004C310D    push        4C3191
 004C3112    push        dword ptr fs:[eax]
 004C3115    mov         dword ptr fs:[eax],esp
 004C3118    mov         eax,dword ptr [ebp-4]
 004C311B    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C3121    mov         edx,dword ptr [ebp-8]
 004C3124    call        TCanvas.SetHandle
 004C3129    xor         eax,eax
 004C312B    push        ebp
 004C312C    push        4C316E
 004C3131    push        dword ptr fs:[eax]
 004C3134    mov         dword ptr fs:[eax],esp
 004C3137    mov         eax,dword ptr [ebp-4]
 004C313A    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C3140    call        00481B68
 004C3145    mov         eax,dword ptr [ebp-4]
 004C3148    mov         edx,dword ptr [eax]
 004C314A    call        dword ptr [edx+11C];TCustomActionBar.sub_004C30B8
 004C3150    xor         eax,eax
 004C3152    pop         edx
 004C3153    pop         ecx
 004C3154    pop         ecx
 004C3155    mov         dword ptr fs:[eax],edx
 004C3158    push        4C3175
 004C315D    mov         eax,dword ptr [ebp-4]
 004C3160    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C3166    xor         edx,edx
 004C3168    call        TCanvas.SetHandle
 004C316D    ret
>004C316E    jmp         @HandleFinally
>004C3173    jmp         004C315D
 004C3175    xor         eax,eax
 004C3177    pop         edx
 004C3178    pop         ecx
 004C3179    pop         ecx
 004C317A    mov         dword ptr fs:[eax],edx
 004C317D    push        4C3198
 004C3182    mov         eax,dword ptr [ebp-4]
 004C3185    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C318B    call        TCanvas.Unlock
 004C3190    ret
>004C3191    jmp         @HandleFinally
>004C3196    jmp         004C3182
 004C3198    pop         ecx
 004C3199    pop         ecx
 004C319A    pop         ebp
 004C319B    ret
end;*}

//004C319C
{*procedure sub_004C319C(?:?);
begin
 004C319C    push        ebp
 004C319D    mov         ebp,esp
 004C319F    add         esp,0FFFFFFF8
 004C31A2    mov         dword ptr [ebp-8],edx
 004C31A5    mov         dword ptr [ebp-4],eax
 004C31A8    mov         eax,dword ptr [ebp-4]
 004C31AB    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C31B1    cmp         eax,dword ptr [ebp-8]
>004C31B4    je          004C3246
 004C31BA    mov         eax,dword ptr [ebp-4]
 004C31BD    mov         edx,dword ptr [eax]
 004C31BF    call        dword ptr [edx+0D0];TCustomActionBar.sub_004C17C8
 004C31C5    mov         eax,dword ptr [ebp-8]
 004C31C8    mov         edx,dword ptr [ebp-4]
 004C31CB    mov         dword ptr [edx+210],eax;TCustomActionBar.FActionClient:TActionClient
 004C31D1    mov         eax,dword ptr [ebp-4]
 004C31D4    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C31DB    jne         004C31E7
 004C31DD    mov         eax,dword ptr [ebp-4]
 004C31E0    mov         edx,dword ptr [eax]
 004C31E2    call        dword ptr [edx+7C];TCustomActionBar.sub_0048BE68
>004C31E5    jmp         004C3246
 004C31E7    mov         eax,dword ptr [ebp-4]
 004C31EA    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C31F0    cmp         dword ptr [eax+24],20000000;TActionClient.Color:TColor
>004C31F7    je          004C320D
 004C31F9    mov         eax,dword ptr [ebp-4]
 004C31FC    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3202    mov         edx,dword ptr [eax+24];TActionClient.Color:TColor
 004C3205    mov         eax,dword ptr [ebp-4]
 004C3208    call        TPanel.SetColor
 004C320D    mov         eax,dword ptr [ebp-8]
 004C3210    call        004BE698
 004C3215    call        004BD7EC
 004C321A    mov         edx,eax
 004C321C    mov         eax,dword ptr [ebp-4]
 004C321F    call        004C3608
 004C3224    mov         eax,dword ptr [ebp-8]
 004C3227    mov         edx,dword ptr [ebp-4]
 004C322A    mov         dword ptr [edx+210],eax;TCustomActionBar.FActionClient:TActionClient
 004C3230    mov         eax,dword ptr [ebp-4]
 004C3233    mov         edx,dword ptr [eax]
 004C3235    call        dword ptr [edx+0CC];TCustomActionBar.sub_004C16A8
 004C323B    mov         eax,dword ptr [ebp-4]
 004C323E    mov         edx,dword ptr [eax]
 004C3240    call        dword ptr [edx+0D8];TCustomActionBar.sub_004C1994
 004C3246    pop         ecx
 004C3247    pop         ecx
 004C3248    pop         ebp
 004C3249    ret
end;*}

//004C324C
{*procedure sub_004C324C(?:?);
begin
 004C324C    push        ebp
 004C324D    mov         ebp,esp
 004C324F    add         esp,0FFFFFFE4
 004C3252    mov         byte ptr [ebp-5],dl
 004C3255    mov         dword ptr [ebp-4],eax
 004C3258    mov         eax,dword ptr [ebp-4]
 004C325B    mov         al,byte ptr [eax+225];TCustomActionBar.FDesignMode:Boolean
 004C3261    cmp         al,byte ptr [ebp-5]
>004C3264    je          004C351E
 004C326A    mov         al,byte ptr [ebp-5]
 004C326D    mov         edx,dword ptr [ebp-4]
 004C3270    mov         byte ptr [edx+225],al;TCustomActionBar.FDesignMode:Boolean
 004C3276    mov         eax,dword ptr [ebp-4]
 004C3279    test        byte ptr [eax+1C],10;TCustomActionBar.FComponentState:TComponentState
>004C327D    jne         004C351E
 004C3283    mov         eax,dword ptr [ebp-4]
 004C3286    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C328D    je          004C329D
 004C328F    mov         eax,dword ptr [ebp-4]
 004C3292    call        004C2EE8
 004C3297    cmp         byte ptr [eax+24],0
>004C329B    je          004C32B1
 004C329D    mov         eax,dword ptr [ebp-4]
 004C32A0    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C32A6    mov         dl,byte ptr ds:[4C3524];0x0 gvar_004C3524
 004C32AC    cmp         dl,byte ptr [eax+31];TActionClient.ChangesAllowed:TChangesAllowedSet
>004C32AF    jne         004C32EB
 004C32B1    mov         eax,dword ptr [ebp-4]
 004C32B4    cmp         byte ptr [eax+225],0;TCustomActionBar.FDesignMode:Boolean
>004C32BB    je          004C32DA
 004C32BD    mov         eax,dword ptr [ebp-4]
 004C32C0    mov         edx,dword ptr [eax]
 004C32C2    call        dword ptr [edx+50];TImage.GetEnabled
 004C32C5    mov         edx,dword ptr [ebp-4]
 004C32C8    mov         byte ptr [edx+226],al;TCustomActionBar.FEnabledState:Boolean
 004C32CE    xor         edx,edx
 004C32D0    mov         eax,dword ptr [ebp-4]
 004C32D3    mov         ecx,dword ptr [eax]
 004C32D5    call        dword ptr [ecx+64];TImage.SetEnabled
>004C32D8    jmp         004C32EB
 004C32DA    mov         eax,dword ptr [ebp-4]
 004C32DD    mov         dl,byte ptr [eax+226];TCustomActionBar.FEnabledState:Boolean
 004C32E3    mov         eax,dword ptr [ebp-4]
 004C32E6    mov         ecx,dword ptr [eax]
 004C32E8    call        dword ptr [ecx+64];TImage.SetEnabled
 004C32EB    mov         eax,dword ptr [ebp-4]
 004C32EE    mov         edx,dword ptr [eax]
 004C32F0    call        dword ptr [edx+104];TCustomActionBar.sub_004C3B84
 004C32F6    test        al,al
>004C32F8    je          004C334D
 004C32FA    mov         eax,dword ptr [ebp-4]
 004C32FD    mov         edx,dword ptr [eax]
 004C32FF    call        dword ptr [edx+104];TCustomActionBar.sub_004C3B84
 004C3305    test        al,al
>004C3307    je          004C3315
 004C3309    mov         eax,dword ptr [ebp-4]
 004C330C    call        004C3E24
 004C3311    test        al,al
>004C3313    jne         004C3319
 004C3315    xor         eax,eax
>004C3317    jmp         004C331B
 004C3319    mov         al,1
 004C331B    mov         edx,dword ptr [ebp-4]
 004C331E    mov         byte ptr [edx+278],al;TCustomActionBar.FSavedWrapState:Boolean
 004C3324    lea         ecx,[ebp-1C]
 004C3327    mov         eax,dword ptr [ebp-4]
 004C332A    mov         edx,dword ptr [eax+4C];TCustomActionBar.Height:Integer
 004C332D    mov         eax,dword ptr [ebp-4]
 004C3330    mov         eax,dword ptr [eax+48];TCustomActionBar.Width:Integer
 004C3333    call        Point
 004C3338    mov         eax,dword ptr [ebp-4]
 004C333B    mov         edx,dword ptr [ebp-1C]
 004C333E    mov         dword ptr [eax+25D],edx;TCustomActionBar.FSavedSize:TPoint
 004C3344    mov         edx,dword ptr [ebp-18]
 004C3347    mov         dword ptr [eax+261],edx
 004C334D    mov         eax,dword ptr [ebp-4]
 004C3350    mov         edx,dword ptr [eax]
 004C3352    call        dword ptr [edx+104];TCustomActionBar.sub_004C3B84
 004C3358    test        al,al
>004C335A    jne         004C3368
 004C335C    mov         eax,dword ptr [ebp-4]
 004C335F    cmp         byte ptr [eax+278],0;TCustomActionBar.FSavedWrapState:Boolean
>004C3366    je          004C3377
 004C3368    mov         eax,dword ptr [ebp-4]
 004C336B    mov         edx,dword ptr [eax]
 004C336D    call        dword ptr [edx+114];TCustomActionBar.sub_004C2FA8
 004C3373    test        eax,eax
>004C3375    jg          004C337B
 004C3377    xor         edx,edx
>004C3379    jmp         004C337D
 004C337B    mov         dl,1
 004C337D    mov         eax,dword ptr [ebp-4]
 004C3380    mov         ecx,dword ptr [eax]
 004C3382    call        dword ptr [ecx+128];TCustomActionBar.sub_004C3E64
 004C3388    mov         eax,dword ptr [ebp-4]
 004C338B    mov         edx,dword ptr [eax]
 004C338D    call        dword ptr [edx+104];TCustomActionBar.sub_004C3B84
 004C3393    test        al,al
>004C3395    jne         004C33CE
 004C3397    mov         eax,dword ptr [ebp-4]
 004C339A    mov         al,byte ptr [eax+227];TCustomActionBar.FOrientation:TBarOrientation
 004C33A0    sub         al,2
>004C33A2    jb          004C33AA
 004C33A4    sub         al,2
>004C33A6    jb          004C33BD
>004C33A8    jmp         004C33CE
 004C33AA    mov         eax,dword ptr [ebp-4]
 004C33AD    mov         edx,dword ptr [eax+261]
 004C33B3    mov         eax,dword ptr [ebp-4]
 004C33B6    call        TToolButton.SetHeight
>004C33BB    jmp         004C33CE
 004C33BD    mov         eax,dword ptr [ebp-4]
 004C33C0    mov         edx,dword ptr [eax+25D];TCustomActionBar.FSavedSize:TPoint
 004C33C6    mov         eax,dword ptr [ebp-4]
 004C33C9    call        TSplitter.SetWidth
 004C33CE    mov         eax,dword ptr [ebp-4]
 004C33D1    call        004C2EE8
 004C33D6    call        0042158C
 004C33DB    dec         eax
 004C33DC    test        eax,eax
>004C33DE    jl          004C351E
 004C33E4    inc         eax
 004C33E5    mov         dword ptr [ebp-10],eax
 004C33E8    mov         dword ptr [ebp-0C],0
 004C33EF    mov         eax,dword ptr [ebp-4]
 004C33F2    call        004C2EE8
 004C33F7    mov         edx,dword ptr [ebp-0C]
 004C33FA    call        004BF258
 004C33FF    mov         dword ptr [ebp-14],eax
 004C3402    mov         eax,dword ptr [ebp-14]
 004C3405    cmp         dword ptr [eax+40],0
>004C3409    je          004C3512
 004C340F    mov         eax,dword ptr [ebp-4]
 004C3412    cmp         byte ptr [eax+225],0;TCustomActionBar.FDesignMode:Boolean
>004C3419    je          004C34B3
 004C341F    mov         eax,dword ptr [ebp-14]
 004C3422    mov         eax,dword ptr [eax+40]
 004C3425    cmp         byte ptr [eax+57],0
>004C3429    jne         004C3438
 004C342B    mov         dl,1
 004C342D    mov         eax,dword ptr [ebp-14]
 004C3430    mov         eax,dword ptr [eax+40]
 004C3433    call        TImage.SetVisible
 004C3438    mov         al,[004C3524];0x0 gvar_004C3524
 004C343D    mov         edx,dword ptr [ebp-14]
 004C3440    cmp         al,byte ptr [edx+31]
>004C3443    je          004C3459
 004C3445    mov         eax,dword ptr [ebp-4]
 004C3448    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C344E    mov         dl,byte ptr ds:[4C3524];0x0 gvar_004C3524
 004C3454    cmp         dl,byte ptr [eax+31];TActionClient.ChangesAllowed:TChangesAllowedSet
>004C3457    jne         004C345D
 004C3459    xor         edx,edx
>004C345B    jmp         004C345F
 004C345D    mov         dl,1
 004C345F    mov         eax,dword ptr [ebp-14]
 004C3462    mov         eax,dword ptr [eax+40]
 004C3465    mov         ecx,dword ptr [eax]
 004C3467    call        dword ptr [ecx+64]
 004C346A    mov         eax,dword ptr [ebp-4]
 004C346D    mov         edx,dword ptr [eax]
 004C346F    call        dword ptr [edx+104];TCustomActionBar.sub_004C3B84
 004C3475    test        al,al
>004C3477    je          004C3488
 004C3479    mov         eax,dword ptr [ebp-4]
 004C347C    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3482    test        byte ptr [eax+31],2;TActionClient.ChangesAllowed:TChangesAllowedSet
>004C3486    jne         004C349B
 004C3488    mov         eax,dword ptr [ebp-4]
 004C348B    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3491    test        byte ptr [eax+31],4;TActionClient.ChangesAllowed:TChangesAllowedSet
>004C3495    jne         004C349B
 004C3497    xor         eax,eax
>004C3499    jmp         004C349D
 004C349B    mov         al,1
 004C349D    and         eax,7F
 004C34A0    mov         dl,byte ptr [eax+56CB84]
 004C34A6    mov         eax,dword ptr [ebp-14]
 004C34A9    mov         eax,dword ptr [eax+40]
 004C34AC    mov         ecx,dword ptr [eax]
 004C34AE    call        dword ptr [ecx+60]
>004C34B1    jmp         004C3512
 004C34B3    xor         edx,edx
 004C34B5    mov         eax,dword ptr [ebp-14]
 004C34B8    mov         eax,dword ptr [eax+40]
 004C34BB    mov         ecx,dword ptr [eax]
 004C34BD    call        dword ptr [ecx+60]
 004C34C0    mov         eax,dword ptr [ebp-14]
 004C34C3    cmp         byte ptr [eax+30],0
>004C34C7    jne         004C34DA
 004C34C9    mov         eax,dword ptr [ebp-14]
 004C34CC    mov         dl,byte ptr [eax+30]
 004C34CF    mov         eax,dword ptr [ebp-14]
 004C34D2    mov         eax,dword ptr [eax+40]
 004C34D5    call        TImage.SetVisible
 004C34DA    mov         eax,dword ptr [ebp-14]
 004C34DD    call        TActionClientItem.GetAction
 004C34E2    test        eax,eax
>004C34E4    je          004C34F5
 004C34E6    mov         eax,dword ptr [ebp-14]
 004C34E9    call        TActionClientItem.GetAction
 004C34EE    mov         edx,dword ptr [eax]
 004C34F0    call        dword ptr [edx+44]
>004C34F3    jmp         004C3502
 004C34F5    mov         dl,1
 004C34F7    mov         eax,dword ptr [ebp-14]
 004C34FA    mov         eax,dword ptr [eax+40]
 004C34FD    mov         ecx,dword ptr [eax]
 004C34FF    call        dword ptr [ecx+64]
 004C3502    xor         edx,edx
 004C3504    mov         eax,dword ptr [ebp-14]
 004C3507    mov         eax,dword ptr [eax+40]
 004C350A    mov         ecx,dword ptr [eax]
 004C350C    call        dword ptr [ecx+0D8]
 004C3512    inc         dword ptr [ebp-0C]
 004C3515    dec         dword ptr [ebp-10]
>004C3518    jne         004C33EF
 004C351E    mov         esp,ebp
 004C3520    pop         ebp
 004C3521    ret
end;*}

//004C3528
{*procedure sub_004C3528(?:?);
begin
 004C3528    push        ebp
 004C3529    mov         ebp,esp
 004C352B    add         esp,0FFFFFFF0
 004C352E    mov         byte ptr [ebp-5],dl
 004C3531    mov         dword ptr [ebp-4],eax
 004C3534    mov         eax,dword ptr [ebp-4]
 004C3537    mov         al,byte ptr [eax+227];TCustomActionBar.FOrientation:TBarOrientation
 004C353D    cmp         al,byte ptr [ebp-5]
>004C3540    je          004C35CD
 004C3546    mov         eax,dword ptr [ebp-4]
 004C3549    mov         dl,byte ptr [ebp-5]
 004C354C    mov         byte ptr [eax+227],dl;TCustomActionBar.FOrientation:TBarOrientation
 004C3552    mov         eax,dword ptr [ebp-4]
 004C3555    mov         edx,dword ptr [eax]
 004C3557    call        dword ptr [edx+114];TCustomActionBar.sub_004C2FA8
 004C355D    test        eax,eax
>004C355F    jle         004C35CD
 004C3561    mov         eax,dword ptr [ebp-4]
 004C3564    call        TWinControl.DisableAlign
 004C3569    xor         eax,eax
 004C356B    push        ebp
 004C356C    push        4C35C6
 004C3571    push        dword ptr fs:[eax]
 004C3574    mov         dword ptr fs:[eax],esp
 004C3577    mov         eax,dword ptr [ebp-4]
 004C357A    mov         edx,dword ptr [eax]
 004C357C    call        dword ptr [edx+114];TCustomActionBar.sub_004C2FA8
 004C3582    dec         eax
 004C3583    test        eax,eax
>004C3585    jl          004C35B0
 004C3587    inc         eax
 004C3588    mov         dword ptr [ebp-10],eax
 004C358B    mov         dword ptr [ebp-0C],0
 004C3592    mov         edx,dword ptr [ebp-0C]
 004C3595    mov         eax,dword ptr [ebp-4]
 004C3598    mov         ecx,dword ptr [eax]
 004C359A    call        dword ptr [ecx+108];TCustomActionBar.sub_004C2DB0
 004C35A0    mov         edx,dword ptr [eax]
 004C35A2    call        dword ptr [edx+0DC]
 004C35A8    inc         dword ptr [ebp-0C]
 004C35AB    dec         dword ptr [ebp-10]
>004C35AE    jne         004C3592
 004C35B0    xor         eax,eax
 004C35B2    pop         edx
 004C35B3    pop         ecx
 004C35B4    pop         ecx
 004C35B5    mov         dword ptr fs:[eax],edx
 004C35B8    push        4C35CD
 004C35BD    mov         eax,dword ptr [ebp-4]
 004C35C0    call        TWinControl.EnableAlign
 004C35C5    ret
>004C35C6    jmp         @HandleFinally
>004C35CB    jmp         004C35BD
 004C35CD    mov         esp,ebp
 004C35CF    pop         ebp
 004C35D0    ret
end;*}

//004C35D4
{*procedure sub_004C35D4(?:?);
begin
 004C35D4    push        ebp
 004C35D5    mov         ebp,esp
 004C35D7    add         esp,0FFFFFFF8
 004C35DA    mov         dword ptr [ebp-8],edx
 004C35DD    mov         dword ptr [ebp-4],eax
 004C35E0    mov         eax,dword ptr [ebp-4]
 004C35E3    mov         eax,dword ptr [eax+228];TCustomActionBar.FSpacing:Integer
 004C35E9    cmp         eax,dword ptr [ebp-8]
>004C35EC    je          004C3602
 004C35EE    mov         eax,dword ptr [ebp-8]
 004C35F1    mov         edx,dword ptr [ebp-4]
 004C35F4    mov         dword ptr [edx+228],eax;TCustomActionBar.FSpacing:Integer
 004C35FA    mov         eax,dword ptr [ebp-4]
 004C35FD    call        004878BC
 004C3602    pop         ecx
 004C3603    pop         ecx
 004C3604    pop         ebp
 004C3605    ret
end;*}

//004C3608
procedure sub_004C3608(?:TCustomActionBar; ?:TCustomActionManager);
begin
{*
 004C3608    push        ebp
 004C3609    mov         ebp,esp
 004C360B    add         esp,0FFFFFFF8
 004C360E    mov         dword ptr [ebp-8],edx
 004C3611    mov         dword ptr [ebp-4],eax
 004C3614    mov         eax,dword ptr [ebp-4]
 004C3617    mov         eax,dword ptr [eax+214];TCustomActionBar.FActionManager:TCustomActionManager
 004C361D    cmp         eax,dword ptr [ebp-8]
>004C3620    je          004C3673
 004C3622    mov         eax,dword ptr [ebp-4]
 004C3625    cmp         dword ptr [eax+214],0;TCustomActionBar.FActionManager:TCustomActionManager
>004C362C    je          004C364A
 004C362E    mov         edx,dword ptr [ebp-4]
 004C3631    mov         eax,dword ptr [ebp-4]
 004C3634    mov         eax,dword ptr [eax+214];TCustomActionBar.FActionManager:TCustomActionManager
 004C363A    call        0042A61C
 004C363F    mov         eax,dword ptr [ebp-4]
 004C3642    mov         edx,dword ptr [eax]
 004C3644    call        dword ptr [edx+0D0];TCustomActionBar.sub_004C17C8
 004C364A    mov         eax,dword ptr [ebp-8]
 004C364D    mov         edx,dword ptr [ebp-4]
 004C3650    mov         dword ptr [edx+214],eax;TCustomActionBar.FActionManager:TCustomActionManager
 004C3656    mov         eax,dword ptr [ebp-4]
 004C3659    cmp         dword ptr [eax+214],0;TCustomActionBar.FActionManager:TCustomActionManager
>004C3660    je          004C3673
 004C3662    mov         edx,dword ptr [ebp-4]
 004C3665    mov         eax,dword ptr [ebp-4]
 004C3668    mov         eax,dword ptr [eax+214];TCustomActionBar.FActionManager:TCustomActionManager
 004C366E    call        0042A2CC
 004C3673    pop         ecx
 004C3674    pop         ecx
 004C3675    pop         ebp
 004C3676    ret
*}
end;

//004C3678
{*procedure sub_004C3678(?:?);
begin
 004C3678    push        ebp
 004C3679    mov         ebp,esp
 004C367B    add         esp,0FFFFFFF8
 004C367E    mov         byte ptr [ebp-5],dl
 004C3681    mov         dword ptr [ebp-4],eax
 004C3684    mov         eax,dword ptr [ebp-4]
 004C3687    mov         al,byte ptr [eax+248];TCustomActionBar.FPersistentHotKeys:Boolean
 004C368D    cmp         al,byte ptr [ebp-5]
>004C3690    je          004C36A6
 004C3692    mov         al,byte ptr [ebp-5]
 004C3695    mov         edx,dword ptr [ebp-4]
 004C3698    mov         byte ptr [edx+248],al;TCustomActionBar.FPersistentHotKeys:Boolean
 004C369E    mov         eax,dword ptr [ebp-4]
 004C36A1    call        00484000
 004C36A6    pop         ecx
 004C36A7    pop         ecx
 004C36A8    pop         ebp
 004C36A9    ret
end;*}

//004C36AC
{*procedure sub_004C36AC(?:?; ?:?; ?:?);
begin
 004C36AC    push        ebp
 004C36AD    mov         ebp,esp
 004C36AF    add         esp,0FFFFFFDC
 004C36B2    mov         dword ptr [ebp-0C],ecx
 004C36B5    mov         dword ptr [ebp-8],edx
 004C36B8    mov         dword ptr [ebp-4],eax
 004C36BB    mov         eax,dword ptr [ebp+8]
 004C36BE    push        eax
 004C36BF    lea         ecx,[ebp-24]
 004C36C2    mov         edx,dword ptr [ebp+8]
 004C36C5    mov         eax,dword ptr [ebp-0C]
 004C36C8    call        Point
 004C36CD    lea         edx,[ebp-24]
 004C36D0    mov         eax,dword ptr [ebp-4]
 004C36D3    call        004C29D8
 004C36D8    mov         edx,eax
 004C36DA    mov         ecx,dword ptr [ebp-0C]
 004C36DD    mov         eax,dword ptr [ebp-4]
 004C36E0    call        004C16B4
 004C36E5    mov         dword ptr [ebp-10],eax
 004C36E8    mov         eax,dword ptr [ebp-8]
 004C36EB    call        004C0EC8
 004C36F0    test        eax,eax
>004C36F2    je          004C3761
 004C36F4    mov         eax,dword ptr [ebp-8]
 004C36F7    call        004C0EC8
 004C36FC    dec         eax
 004C36FD    test        eax,eax
>004C36FF    jl          004C3761
 004C3701    inc         eax
 004C3702    mov         dword ptr [ebp-1C],eax
 004C3705    mov         dword ptr [ebp-14],0
 004C370C    mov         eax,dword ptr [ebp-4]
 004C370F    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3715    call        TActionClient.GetItems
 004C371A    mov         edx,dword ptr [ebp-10]
 004C371D    call        004217D8
 004C3722    mov         dword ptr [ebp-18],eax
 004C3725    mov         edx,dword ptr [ebp-14]
 004C3728    mov         eax,dword ptr [ebp-8]
 004C372B    call        004C0E7C
 004C3730    push        eax
 004C3731    mov         eax,dword ptr [ebp-4]
 004C3734    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C373A    call        TActionClient.GetItems
 004C373F    mov         edx,dword ptr [ebp-10]
 004C3742    call        004BF258
 004C3747    pop         edx
 004C3748    call        TActionClientItem.SetAction
 004C374D    mov         eax,dword ptr [ebp-18]
 004C3750    call        TCollectionItem.GetIndex
 004C3755    inc         eax
 004C3756    mov         dword ptr [ebp-10],eax
 004C3759    inc         dword ptr [ebp-14]
 004C375C    dec         dword ptr [ebp-1C]
>004C375F    jne         004C370C
 004C3761    mov         esp,ebp
 004C3763    pop         ebp
 004C3764    ret         4
end;*}

//004C3768
{*procedure sub_004C3768(?:?; ?:?; ?:?);
begin
 004C3768    push        ebp
 004C3769    mov         ebp,esp
 004C376B    add         esp,0FFFFFFDC
 004C376E    mov         dword ptr [ebp-0C],ecx
 004C3771    mov         dword ptr [ebp-8],edx
 004C3774    mov         dword ptr [ebp-4],eax
 004C3777    mov         eax,dword ptr [ebp+8]
 004C377A    push        eax
 004C377B    lea         ecx,[ebp-24]
 004C377E    mov         edx,dword ptr [ebp+8]
 004C3781    mov         eax,dword ptr [ebp-0C]
 004C3784    call        Point
 004C3789    lea         edx,[ebp-24]
 004C378C    mov         eax,dword ptr [ebp-4]
 004C378F    call        004C29D8
 004C3794    mov         edx,eax
 004C3796    mov         ecx,dword ptr [ebp-0C]
 004C3799    mov         eax,dword ptr [ebp-4]
 004C379C    call        004C16B4
 004C37A1    mov         dword ptr [ebp-10],eax
 004C37A4    mov         eax,dword ptr [ebp-4]
 004C37A7    call        004C2EE8
 004C37AC    mov         edx,dword ptr [ebp-10]
 004C37AF    call        004217D8
 004C37B4    mov         dword ptr [ebp-14],eax
 004C37B7    mov         eax,dword ptr [ebp-8]
 004C37BA    mov         edx,dword ptr [eax+48]
 004C37BD    mov         eax,dword ptr [ebp-14]
 004C37C0    call        TActionClientItem.SetCaption
 004C37C5    mov         eax,dword ptr [ebp-8]
 004C37C8    call        004C0EC8
 004C37CD    test        eax,eax
>004C37CF    je          004C38C4
 004C37D5    mov         eax,dword ptr [ebp-14]
 004C37D8    call        TCollectionItem.GetIndex
 004C37DD    push        eax
 004C37DE    mov         eax,dword ptr [ebp-4]
 004C37E1    call        004C2EE8
 004C37E6    pop         edx
 004C37E7    call        004BF258
 004C37EC    mov         edx,dword ptr [ebp-8]
 004C37EF    mov         edx,dword ptr [edx+48]
 004C37F2    call        TActionClientItem.SetCaption
 004C37F7    mov         eax,dword ptr [ebp-8]
 004C37FA    call        004C0EC8
 004C37FF    dec         eax
 004C3800    test        eax,eax
>004C3802    jl          004C3872
 004C3804    inc         eax
 004C3805    mov         dword ptr [ebp-18],eax
 004C3808    mov         dword ptr [ebp-10],0
 004C380F    mov         eax,dword ptr [ebp-14]
 004C3812    call        TCollectionItem.GetIndex
 004C3817    push        eax
 004C3818    mov         eax,dword ptr [ebp-4]
 004C381B    call        004C2EE8
 004C3820    pop         edx
 004C3821    call        004BF258
 004C3826    call        TActionClient.GetItems
 004C382B    mov         edx,dword ptr [ebp-10]
 004C382E    call        004217D8
 004C3833    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004C3839    call        @AsClass
 004C383E    mov         dword ptr [ebp-1C],eax
 004C3841    mov         edx,dword ptr [ebp-10]
 004C3844    mov         eax,dword ptr [ebp-8]
 004C3847    call        004C0E7C
 004C384C    mov         edx,eax
 004C384E    mov         eax,dword ptr [ebp-1C]
 004C3851    call        TActionClientItem.SetAction
 004C3856    mov         eax,dword ptr [ebp-8]
 004C3859    mov         eax,dword ptr [eax+38]
 004C385C    mov         eax,dword ptr [eax+6C]
 004C385F    mov         edx,dword ptr [eax+28]
 004C3862    mov         eax,dword ptr [ebp-1C]
 004C3865    call        TActionClientItem.SetLastSession
 004C386A    inc         dword ptr [ebp-10]
 004C386D    dec         dword ptr [ebp-18]
>004C3870    jne         004C380F
 004C3872    mov         eax,dword ptr [ebp-14]
 004C3875    mov         eax,dword ptr [eax+40]
 004C3878    mov         edx,dword ptr [eax]
 004C387A    call        dword ptr [edx+0DC]
 004C3880    mov         dl,1
 004C3882    mov         eax,dword ptr [ebp-14]
 004C3885    mov         ecx,dword ptr [eax]
 004C3887    call        dword ptr [ecx+2C]
 004C388A    mov         eax,dword ptr [ebp-14]
 004C388D    call        TActionClientItem.GetAction
 004C3892    test        eax,eax
>004C3894    jne         004C38B7
 004C3896    mov         eax,dword ptr [ebp-14]
 004C3899    call        004BE56C
 004C389E    test        al,al
>004C38A0    je          004C38B3
 004C38A2    mov         eax,dword ptr [ebp-14]
 004C38A5    call        TActionClient.GetItems
 004C38AA    call        004BF6A4
 004C38AF    test        eax,eax
>004C38B1    jg          004C38B7
 004C38B3    xor         edx,edx
>004C38B5    jmp         004C38B9
 004C38B7    mov         dl,1
 004C38B9    mov         eax,dword ptr [ebp-14]
 004C38BC    mov         eax,dword ptr [eax+40]
 004C38BF    mov         ecx,dword ptr [eax]
 004C38C1    call        dword ptr [ecx+64]
 004C38C4    mov         esp,ebp
 004C38C6    pop         ebp
 004C38C7    ret         4
end;*}

//004C38CC
{*function sub_004C38CC(?:TCustomActionPopupMenu; ?:TActionClientItem):?;
begin
 004C38CC    push        ebp
 004C38CD    mov         ebp,esp
 004C38CF    add         esp,0FFFFFFF4
 004C38D2    push        ebx
 004C38D3    mov         dword ptr [ebp-8],edx
 004C38D6    mov         dword ptr [ebp-4],eax
 004C38D9    xor         ecx,ecx
 004C38DB    mov         edx,dword ptr [ebp-8]
 004C38DE    mov         eax,dword ptr [ebp-4]
 004C38E1    mov         ebx,dword ptr [eax]
 004C38E3    call        dword ptr [ebx+0F4];TCustomActionPopupMenu.sub_004C2D1C
 004C38E9    mov         dword ptr [ebp-0C],eax
>004C38EC    jmp         004C3901
 004C38EE    xor         ecx,ecx
 004C38F0    mov         edx,dword ptr [ebp-0C]
 004C38F3    mov         eax,dword ptr [ebp-4]
 004C38F6    mov         ebx,dword ptr [eax]
 004C38F8    call        dword ptr [ebx+0F4];TCustomActionPopupMenu.sub_004C2D1C
 004C38FE    mov         dword ptr [ebp-0C],eax
 004C3901    cmp         dword ptr [ebp-0C],0
>004C3905    je          004C3910
 004C3907    mov         eax,dword ptr [ebp-0C]
 004C390A    cmp         byte ptr [eax+30],0
>004C390E    je          004C38EE
 004C3910    mov         eax,dword ptr [ebp-0C]
 004C3913    pop         ebx
 004C3914    mov         esp,ebp
 004C3916    pop         ebp
 004C3917    ret
end;*}

//004C3918
{*procedure sub_004C3918(?:?);
begin
 004C3918    push        ebp
 004C3919    mov         ebp,esp
 004C391B    add         esp,0FFFFFFF8
 004C391E    mov         byte ptr [ebp-5],dl
 004C3921    mov         dword ptr [ebp-4],eax
 004C3924    mov         dl,byte ptr [ebp-5]
 004C3927    mov         eax,dword ptr [ebp-4]
 004C392A    call        TPanel.SetBiDiMode
 004C392F    mov         eax,dword ptr [ebp-4]
 004C3932    mov         al,byte ptr [eax+227];TCustomActionBar.FOrientation:TBarOrientation
 004C3938    add         al,0FE
 004C393A    sub         al,2
>004C393C    jb          004C3967
 004C393E    mov         al,byte ptr [ebp-5]
 004C3941    sub         al,1
>004C3943    jb          004C394B
 004C3945    sub         al,3
>004C3947    jb          004C395A
>004C3949    jmp         004C3967
 004C394B    xor         edx,edx
 004C394D    mov         eax,dword ptr [ebp-4]
 004C3950    mov         ecx,dword ptr [eax]
 004C3952    call        dword ptr [ecx+134];TCustomActionBar.sub_004C3528
>004C3958    jmp         004C3967
 004C395A    mov         dl,1
 004C395C    mov         eax,dword ptr [ebp-4]
 004C395F    mov         ecx,dword ptr [eax]
 004C3961    call        dword ptr [ecx+134];TCustomActionBar.sub_004C3528
 004C3967    pop         ecx
 004C3968    pop         ecx
 004C3969    pop         ebp
 004C396A    ret
end;*}

//004C396C
{*function sub_004C396C:?;
begin
 004C396C    push        ebp
 004C396D    mov         ebp,esp
 004C396F    add         esp,0FFFFFFF8
 004C3972    mov         dword ptr [ebp-4],eax
 004C3975    mov         eax,dword ptr [ebp-4]
 004C3978    mov         eax,dword ptr [eax+4C];TCustomActionBar.Height:Integer
 004C397B    mov         dword ptr [ebp-8],eax
 004C397E    mov         eax,dword ptr [ebp-4]
 004C3981    mov         edx,dword ptr [eax]
 004C3983    call        dword ptr [edx+114];TCustomActionBar.sub_004C2FA8
 004C3989    test        eax,eax
>004C398B    je          004C3A65
 004C3991    mov         eax,dword ptr [ebp-4]
 004C3994    mov         al,byte ptr [eax+5B];TCustomActionBar.FAlign:TAlign
 004C3997    add         al,0FD
 004C3999    sub         al,3
>004C399B    jb          004C3A65
 004C39A1    mov         eax,dword ptr [ebp-4]
 004C39A4    mov         eax,dword ptr [eax+254];TCustomActionBar.FVertMargin:Integer
 004C39AA    add         eax,eax
 004C39AC    mov         edx,dword ptr [ebp-4]
 004C39AF    mov         edx,dword ptr [edx+250];TCustomActionBar.FVRowCount:Integer
 004C39B5    dec         edx
 004C39B6    imul        edx
 004C39B8    mov         edx,dword ptr [ebp-4]
 004C39BB    mov         edx,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
 004C39C1    mov         ecx,dword ptr [ebp-4]
 004C39C4    imul        edx,dword ptr [ecx+250]
 004C39CB    mov         ecx,dword ptr [ebp-4]
 004C39CE    add         edx,dword ptr [ecx+254]
 004C39D4    add         eax,edx
 004C39D6    mov         edx,dword ptr [ebp-4]
 004C39D9    add         eax,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 004C39DF    mov         dword ptr [ebp-8],eax
 004C39E2    mov         eax,dword ptr [ebp-4]
 004C39E5    cmp         byte ptr [eax+25C],0;TCustomActionBar.FHorzSeparator:Boolean
>004C39EC    je          004C3A09
 004C39EE    mov         eax,dword ptr [ebp-4]
 004C39F1    cmp         dword ptr [eax+250],1;TCustomActionBar.FVRowCount:Integer
>004C39F8    jle         004C3A09
 004C39FA    mov         eax,dword ptr [ebp-4]
 004C39FD    mov         eax,dword ptr [eax+250];TCustomActionBar.FVRowCount:Integer
 004C3A03    dec         eax
 004C3A04    add         eax,eax
 004C3A06    add         dword ptr [ebp-8],eax
 004C3A09    mov         eax,dword ptr [ebp-4]
 004C3A0C    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C3A13    je          004C3A37
 004C3A15    mov         eax,dword ptr [ebp-4]
 004C3A18    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C3A1E    dec         eax
 004C3A1F    sub         al,2
>004C3A21    jae         004C3A26
 004C3A23    inc         dword ptr [ebp-8]
 004C3A26    mov         eax,dword ptr [ebp-4]
 004C3A29    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C3A2F    dec         eax
 004C3A30    sub         al,2
>004C3A32    jae         004C3A37
 004C3A34    inc         dword ptr [ebp-8]
 004C3A37    mov         eax,dword ptr [ebp-4]
 004C3A3A    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C3A41    je          004C3A54
 004C3A43    mov         eax,dword ptr [ebp-4]
 004C3A46    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C3A4C    dec         eax
 004C3A4D    sub         al,2
>004C3A4F    jae         004C3A54
 004C3A51    inc         dword ptr [ebp-8]
 004C3A54    mov         eax,dword ptr [ebp-4]
 004C3A57    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C3A5D    dec         eax
 004C3A5E    sub         al,2
>004C3A60    jae         004C3A65
 004C3A62    inc         dword ptr [ebp-8]
 004C3A65    mov         eax,dword ptr [ebp-8]
 004C3A68    pop         ecx
 004C3A69    pop         ecx
 004C3A6A    pop         ebp
 004C3A6B    ret
end;*}

//004C3A6C
{*function sub_004C3A6C:?;
begin
 004C3A6C    push        ebp
 004C3A6D    mov         ebp,esp
 004C3A6F    add         esp,0FFFFFFF8
 004C3A72    mov         dword ptr [ebp-4],eax
 004C3A75    mov         eax,dword ptr [ebp-4]
 004C3A78    mov         eax,dword ptr [eax+48];TCustomActionBar.Width:Integer
 004C3A7B    mov         dword ptr [ebp-8],eax
 004C3A7E    mov         eax,dword ptr [ebp-4]
 004C3A81    mov         edx,dword ptr [eax]
 004C3A83    call        dword ptr [edx+114];TCustomActionBar.sub_004C2FA8
 004C3A89    test        eax,eax
>004C3A8B    je          004C3B7B
 004C3A91    mov         eax,dword ptr [ebp-4]
 004C3A94    call        004C3E24
 004C3A99    test        al,al
>004C3A9B    je          004C3B7B
 004C3AA1    mov         eax,dword ptr [ebp-4]
 004C3AA4    mov         al,byte ptr [eax+5B];TCustomActionBar.FAlign:TAlign
 004C3AA7    dec         eax
 004C3AA8    sub         al,2
>004C3AAA    jb          004C3B7B
 004C3AB0    sub         al,2
>004C3AB2    je          004C3B7B
 004C3AB8    mov         eax,dword ptr [ebp-4]
 004C3ABB    mov         eax,dword ptr [eax+258];TCustomActionBar.FHorzMargin:Integer
 004C3AC1    add         eax,eax
 004C3AC3    mov         edx,dword ptr [ebp-4]
 004C3AC6    mov         edx,dword ptr [edx+24C];TCustomActionBar.FHRowCount:Integer
 004C3ACC    dec         edx
 004C3ACD    imul        edx
 004C3ACF    mov         edx,dword ptr [ebp-4]
 004C3AD2    mov         edx,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 004C3AD8    mov         ecx,dword ptr [ebp-4]
 004C3ADB    imul        edx,dword ptr [ecx+24C]
 004C3AE2    mov         ecx,dword ptr [ebp-4]
 004C3AE5    add         edx,dword ptr [ecx+258]
 004C3AEB    add         eax,edx
 004C3AED    mov         edx,dword ptr [ebp-4]
 004C3AF0    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 004C3AF6    mov         dword ptr [ebp-8],eax
 004C3AF9    mov         eax,dword ptr [ebp-4]
 004C3AFC    cmp         byte ptr [eax+265],0;TCustomActionBar.FVertSeparator:Boolean
>004C3B03    je          004C3B1F
 004C3B05    mov         eax,dword ptr [ebp-4]
 004C3B08    cmp         dword ptr [eax+24C],1;TCustomActionBar.FHRowCount:Integer
>004C3B0F    jle         004C3B1F
 004C3B11    mov         eax,dword ptr [ebp-4]
 004C3B14    mov         eax,dword ptr [eax+24C];TCustomActionBar.FHRowCount:Integer
 004C3B1A    add         eax,eax
 004C3B1C    add         dword ptr [ebp-8],eax
 004C3B1F    mov         eax,dword ptr [ebp-4]
 004C3B22    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C3B29    je          004C3B4D
 004C3B2B    mov         eax,dword ptr [ebp-4]
 004C3B2E    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C3B34    dec         eax
 004C3B35    sub         al,2
>004C3B37    jae         004C3B3C
 004C3B39    inc         dword ptr [ebp-8]
 004C3B3C    mov         eax,dword ptr [ebp-4]
 004C3B3F    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C3B45    dec         eax
 004C3B46    sub         al,2
>004C3B48    jae         004C3B4D
 004C3B4A    inc         dword ptr [ebp-8]
 004C3B4D    mov         eax,dword ptr [ebp-4]
 004C3B50    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C3B57    je          004C3B6A
 004C3B59    mov         eax,dword ptr [ebp-4]
 004C3B5C    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C3B62    dec         eax
 004C3B63    sub         al,2
>004C3B65    jae         004C3B6A
 004C3B67    inc         dword ptr [ebp-8]
 004C3B6A    mov         eax,dword ptr [ebp-4]
 004C3B6D    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C3B73    dec         eax
 004C3B74    sub         al,2
>004C3B76    jae         004C3B7B
 004C3B78    inc         dword ptr [ebp-8]
 004C3B7B    mov         eax,dword ptr [ebp-8]
 004C3B7E    pop         ecx
 004C3B7F    pop         ecx
 004C3B80    pop         ebp
 004C3B81    ret
end;*}

//004C3B84
{*function sub_004C3B84:?;
begin
 004C3B84    push        ebp
 004C3B85    mov         ebp,esp
 004C3B87    add         esp,0FFFFFFF8
 004C3B8A    mov         dword ptr [ebp-4],eax
 004C3B8D    mov         eax,dword ptr [ebp-4]
 004C3B90    cmp         byte ptr [eax+224],0;TCustomActionBar.FDesignable:Boolean
>004C3B97    jne         004C3B9F
 004C3B99    mov         byte ptr [ebp-5],0
>004C3B9D    jmp         004C3BBD
 004C3B9F    mov         eax,dword ptr [ebp-4]
 004C3BA2    test        byte ptr [eax+1C],10;TCustomActionBar.FComponentState:TComponentState
>004C3BA6    jne         004C3BB8
 004C3BA8    mov         eax,dword ptr [ebp-4]
 004C3BAB    cmp         byte ptr [eax+225],0;TCustomActionBar.FDesignMode:Boolean
>004C3BB2    jne         004C3BB8
 004C3BB4    xor         eax,eax
>004C3BB6    jmp         004C3BBA
 004C3BB8    mov         al,1
 004C3BBA    mov         byte ptr [ebp-5],al
 004C3BBD    mov         al,byte ptr [ebp-5]
 004C3BC0    pop         ecx
 004C3BC1    pop         ecx
 004C3BC2    pop         ebp
 004C3BC3    ret
end;*}

//004C3BC4
{*procedure sub_004C3BC4(?:TCustomActionMenuBar; ?:?);
begin
 004C3BC4    push        ebp
 004C3BC5    mov         ebp,esp
 004C3BC7    add         esp,0FFFFFFF8
 004C3BCA    push        esi
 004C3BCB    mov         dword ptr [ebp-8],edx
 004C3BCE    mov         dword ptr [ebp-4],eax
 004C3BD1    mov         eax,dword ptr [ebp-4]
 004C3BD4    mov         eax,dword ptr [eax+258];TCustomActionMenuBar.FHorzMargin:Integer
 004C3BDA    cmp         eax,dword ptr [ebp-8]
>004C3BDD    je          004C3BFF
 004C3BDF    mov         eax,dword ptr [ebp-8]
 004C3BE2    mov         edx,dword ptr [ebp-4]
 004C3BE5    mov         dword ptr [edx+258],eax;TCustomActionMenuBar.FHorzMargin:Integer
 004C3BEB    mov         eax,dword ptr [ebp-4]
 004C3BEE    call        004878BC
 004C3BF3    mov         eax,dword ptr [ebp-4]
 004C3BF6    mov         si,0FFEE
 004C3BFA    call        @CallDynaInst;TWinControl.sub_0048673C
 004C3BFF    pop         esi
 004C3C00    pop         ecx
 004C3C01    pop         ecx
 004C3C02    pop         ebp
 004C3C03    ret
end;*}

//004C3C04
{*procedure sub_004C3C04(?:TCustomActionPopupMenu; ?:?);
begin
 004C3C04    push        ebp
 004C3C05    mov         ebp,esp
 004C3C07    add         esp,0FFFFFFF8
 004C3C0A    push        esi
 004C3C0B    mov         dword ptr [ebp-8],edx
 004C3C0E    mov         dword ptr [ebp-4],eax
 004C3C11    mov         eax,dword ptr [ebp-4]
 004C3C14    mov         eax,dword ptr [eax+254];TCustomActionPopupMenu.FVertMargin:Integer
 004C3C1A    cmp         eax,dword ptr [ebp-8]
>004C3C1D    je          004C3C3F
 004C3C1F    mov         eax,dword ptr [ebp-8]
 004C3C22    mov         edx,dword ptr [ebp-4]
 004C3C25    mov         dword ptr [edx+254],eax;TCustomActionPopupMenu.FVertMargin:Integer
 004C3C2B    mov         eax,dword ptr [ebp-4]
 004C3C2E    call        004878BC
 004C3C33    mov         eax,dword ptr [ebp-4]
 004C3C36    mov         si,0FFEE
 004C3C3A    call        @CallDynaInst;TWinControl.sub_0048673C
 004C3C3F    pop         esi
 004C3C40    pop         ecx
 004C3C41    pop         ecx
 004C3C42    pop         ebp
 004C3C43    ret
end;*}

//004C3C44
{*procedure TCustomActionBar.sub_004C3C44(?:?);
begin
 004C3C44    push        ebp
 004C3C45    mov         ebp,esp
 004C3C47    add         esp,0FFFFFFF8
 004C3C4A    mov         dword ptr [ebp-8],edx
 004C3C4D    mov         dword ptr [ebp-4],eax
 004C3C50    mov         eax,dword ptr [ebp-4]
 004C3C53    mov         edx,dword ptr [eax]
 004C3C55    call        dword ptr [edx+120];TCustomActionBar.Reset
 004C3C5B    pop         ecx
 004C3C5C    pop         ecx
 004C3C5D    pop         ebp
 004C3C5E    ret
end;*}

//004C3C60
procedure TCustomActionBar.Reset;
begin
{*
 004C3C60    push        ebp
 004C3C61    mov         ebp,esp
 004C3C63    add         esp,0FFFFFFF8
 004C3C66    mov         dword ptr [ebp-4],eax
 004C3C69    mov         eax,dword ptr [ebp-4]
 004C3C6C    cmp         dword ptr [eax+214],0
>004C3C73    je          004C3CDA
 004C3C75    mov         eax,dword ptr [ebp-4]
 004C3C78    call        TWinControl.DisableAlign
 004C3C7D    mov         eax,dword ptr [ebp-4]
 004C3C80    mov         eax,dword ptr [eax+210]
 004C3C86    mov         dword ptr [ebp-8],eax
 004C3C89    xor         eax,eax
 004C3C8B    push        ebp
 004C3C8C    push        4C3CD3
 004C3C91    push        dword ptr fs:[eax]
 004C3C94    mov         dword ptr fs:[eax],esp
 004C3C97    mov         eax,dword ptr [ebp-8]
 004C3C9A    call        TCollectionItem.GetIndex
 004C3C9F    mov         edx,eax
 004C3CA1    mov         eax,dword ptr [ebp-4]
 004C3CA4    mov         eax,dword ptr [eax+214]
 004C3CAA    call        TCustomActionManager.ResetActionBar
 004C3CAF    xor         eax,eax
 004C3CB1    pop         edx
 004C3CB2    pop         ecx
 004C3CB3    pop         ecx
 004C3CB4    mov         dword ptr fs:[eax],edx
 004C3CB7    push        4C3CDA
 004C3CBC    mov         edx,dword ptr [ebp-8]
 004C3CBF    mov         eax,dword ptr [ebp-4]
 004C3CC2    mov         ecx,dword ptr [eax]
 004C3CC4    call        dword ptr [ecx+124]
 004C3CCA    mov         eax,dword ptr [ebp-4]
 004C3CCD    call        TWinControl.EnableAlign
 004C3CD2    ret
>004C3CD3    jmp         @HandleFinally
>004C3CD8    jmp         004C3CBC
 004C3CDA    pop         ecx
 004C3CDB    pop         ecx
 004C3CDC    pop         ebp
 004C3CDD    ret
*}
end;

//004C3CE0
procedure TCustomActionBar.sub_0048513C;
begin
{*
 004C3CE0    push        ebp
 004C3CE1    mov         ebp,esp
 004C3CE3    add         esp,0FFFFFFF0
 004C3CE6    xor         edx,edx
 004C3CE8    mov         dword ptr [ebp-10],edx
 004C3CEB    mov         dword ptr [ebp-4],eax
 004C3CEE    xor         eax,eax
 004C3CF0    push        ebp
 004C3CF1    push        4C3D5A
 004C3CF6    push        dword ptr fs:[eax]
 004C3CF9    mov         dword ptr fs:[eax],esp
 004C3CFC    mov         eax,dword ptr [ebp-4]
 004C3CFF    call        TControl.sub_0048513C
 004C3D04    mov         eax,dword ptr [ebp-4]
 004C3D07    cmp         byte ptr [eax+218],0;TCustomActionBar.FAllowHiding:Boolean
>004C3D0E    jne         004C3D44
 004C3D10    mov         eax,dword ptr [ebp-4]
 004C3D13    mov         eax,dword ptr [eax+8];TCustomActionBar.Name:TComponentName
 004C3D16    mov         dword ptr [ebp-0C],eax
 004C3D19    mov         byte ptr [ebp-8],0B
 004C3D1D    lea         eax,[ebp-0C]
 004C3D20    push        eax
 004C3D21    push        0
 004C3D23    lea         edx,[ebp-10]
 004C3D26    mov         eax,[0056E0D4];^SCannotHideActionBand:TResStringRec
 004C3D2B    call        LoadResString
 004C3D30    mov         ecx,dword ptr [ebp-10]
 004C3D33    mov         dl,1
 004C3D35    mov         eax,[0040B004];Exception
 004C3D3A    call        Exception.CreateFmt;Exception.Create
 004C3D3F    call        @RaiseExcept
 004C3D44    xor         eax,eax
 004C3D46    pop         edx
 004C3D47    pop         ecx
 004C3D48    pop         ecx
 004C3D49    mov         dword ptr fs:[eax],edx
 004C3D4C    push        4C3D61
 004C3D51    lea         eax,[ebp-10]
 004C3D54    call        @LStrClr
 004C3D59    ret
>004C3D5A    jmp         @HandleFinally
>004C3D5F    jmp         004C3D51
 004C3D61    mov         esp,ebp
 004C3D63    pop         ebp
 004C3D64    ret
*}
end;

//004C3D68
{*procedure TCustomActionBar.WMContextMenu(?:?);
begin
 004C3D68    push        ebp
 004C3D69    mov         ebp,esp
 004C3D6B    add         esp,0FFFFFFF4
 004C3D6E    mov         dword ptr [ebp-8],edx
 004C3D71    mov         dword ptr [ebp-4],eax
 004C3D74    mov         edx,dword ptr [ebp-8]
 004C3D77    mov         eax,dword ptr [ebp-4]
 004C3D7A    call        TWinControl.WMContextMenu
 004C3D7F    mov         eax,dword ptr [ebp-4]
 004C3D82    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C3D89    je          004C3E20
 004C3D8F    mov         eax,dword ptr [ebp-4]
 004C3D92    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3D98    call        TActionClient.GetContextItems
 004C3D9D    call        0042158C
 004C3DA2    test        eax,eax
>004C3DA4    jle         004C3E20
 004C3DA6    mov         eax,dword ptr [ebp-4]
 004C3DA9    call        004C4A28
 004C3DAE    mov         edx,dword ptr [ebp-4]
 004C3DB1    mov         ecx,dword ptr [edx+4];TCustomActionBar.FOwner:TComponent
 004C3DB4    mov         dl,1
 004C3DB6    call        dword ptr [eax+2C]
 004C3DB9    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004C3DBF    call        @AsClass
 004C3DC4    mov         dword ptr [ebp-0C],eax
 004C3DC7    mov         eax,dword ptr [ebp-0C]
 004C3DCA    mov         byte ptr [eax+270],1;TCustomActionPopupMenu.FContextBar:Boolean
 004C3DD1    mov         eax,[0056E3C0];^Application:TApplication
 004C3DD6    mov         eax,dword ptr [eax]
 004C3DD8    mov         edx,dword ptr [eax+30];TApplication.FHandle:HWND
 004C3DDB    mov         eax,dword ptr [ebp-0C]
 004C3DDE    call        00488B38
 004C3DE3    mov         edx,dword ptr [ebp-4]
 004C3DE6    mov         eax,dword ptr [ebp-0C]
 004C3DE9    mov         ecx,dword ptr [eax]
 004C3DEB    call        dword ptr [ecx+68];TCustomActionPopupMenu.sub_004B4B9C
 004C3DEE    mov         eax,dword ptr [ebp-4]
 004C3DF1    mov         edx,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3DF7    mov         eax,dword ptr [ebp-0C]
 004C3DFA    mov         ecx,dword ptr [eax]
 004C3DFC    call        dword ptr [ecx+124];TCustomActionPopupMenu.sub_004C319C
 004C3E02    mov         ecx,dword ptr [ebp-8]
 004C3E05    movsx       ecx,word ptr [ecx+0A]
 004C3E09    mov         edx,dword ptr [ebp-8]
 004C3E0C    movsx       edx,word ptr [edx+8]
 004C3E10    mov         eax,dword ptr [ebp-0C]
 004C3E13    call        TCustomActionPopupMenu.Popup
 004C3E18    mov         eax,dword ptr [ebp-0C]
 004C3E1B    call        TObject.Free
 004C3E20    mov         esp,ebp
 004C3E22    pop         ebp
 004C3E23    ret
end;*}

//004C3E24
{*function sub_004C3E24(?:TCustomActionBar):?;
begin
 004C3E24    push        ebp
 004C3E25    mov         ebp,esp
 004C3E27    add         esp,0FFFFFFF8
 004C3E2A    mov         dword ptr [ebp-4],eax
 004C3E2D    mov         eax,dword ptr [ebp-4]
 004C3E30    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3E36    mov         edx,dword ptr ds:[4BAD10];TActionBarItem
 004C3E3C    call        @IsClass
 004C3E41    test        al,al
>004C3E43    je          004C3E54
 004C3E45    mov         eax,dword ptr [ebp-4]
 004C3E48    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3E4E    cmp         byte ptr [eax+38],0
>004C3E52    jne         004C3E58
 004C3E54    xor         eax,eax
>004C3E56    jmp         004C3E5A
 004C3E58    mov         al,1
 004C3E5A    mov         byte ptr [ebp-5],al
 004C3E5D    mov         al,byte ptr [ebp-5]
 004C3E60    pop         ecx
 004C3E61    pop         ecx
 004C3E62    pop         ebp
 004C3E63    ret
end;*}

//004C3E64
{*procedure sub_004C3E64(?:?);
begin
 004C3E64    push        ebp
 004C3E65    mov         ebp,esp
 004C3E67    add         esp,0FFFFFFF8
 004C3E6A    push        esi
 004C3E6B    mov         byte ptr [ebp-5],dl
 004C3E6E    mov         dword ptr [ebp-4],eax
 004C3E71    mov         eax,dword ptr [ebp-4]
 004C3E74    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3E7A    mov         edx,dword ptr ds:[4BAD10];TActionBarItem
 004C3E80    call        @IsClass
 004C3E85    test        al,al
>004C3E87    je          004C3E9A
 004C3E89    mov         dl,byte ptr [ebp-5]
 004C3E8C    mov         eax,dword ptr [ebp-4]
 004C3E8F    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C3E95    call        TActionBarItem.SetAutoSize
 004C3E9A    mov         eax,dword ptr [ebp-4]
 004C3E9D    mov         si,0FFEE
 004C3EA1    call        @CallDynaInst;TWinControl.sub_0048673C
 004C3EA6    pop         esi
 004C3EA7    pop         ecx
 004C3EA8    pop         ecx
 004C3EA9    pop         ebp
 004C3EAA    ret
end;*}

//004C3EAC
{*procedure sub_004C3EAC(?:?; ?:?; ?:?);
begin
 004C3EAC    push        ebp
 004C3EAD    mov         ebp,esp
 004C3EAF    add         esp,0FFFFFFC4
 004C3EB2    push        ebx
 004C3EB3    mov         dword ptr [ebp-0C],ecx
 004C3EB6    mov         dword ptr [ebp-8],edx
 004C3EB9    mov         dword ptr [ebp-4],eax
 004C3EBC    lea         ecx,[ebp-1C]
 004C3EBF    mov         edx,dword ptr [ebp+8]
 004C3EC2    mov         eax,dword ptr [ebp-0C]
 004C3EC5    call        Point
 004C3ECA    lea         edx,[ebp-1C]
 004C3ECD    mov         eax,dword ptr [ebp-4]
 004C3ED0    call        004C29D8
 004C3ED5    mov         dword ptr [ebp-10],eax
 004C3ED8    mov         eax,dword ptr [ebp-8]
 004C3EDB    mov         eax,dword ptr [eax+40]
 004C3EDE    cmp         dword ptr [eax+40],0
>004C3EE2    je          004C3EF6
 004C3EE4    mov         eax,dword ptr [ebp-8]
 004C3EE7    mov         eax,dword ptr [eax+40]
 004C3EEA    mov         eax,dword ptr [eax+40]
 004C3EED    cmp         eax,dword ptr [ebp-10]
>004C3EF0    je          004C3FDF
 004C3EF6    cmp         dword ptr [ebp-10],0
>004C3EFA    jne         004C3F16
 004C3EFC    mov         eax,dword ptr [ebp-4]
 004C3EFF    call        004C2EE8
 004C3F04    mov         edx,eax
 004C3F06    mov         eax,dword ptr [ebp-8]
 004C3F09    mov         eax,dword ptr [eax+40]
 004C3F0C    mov         ecx,dword ptr [eax]
 004C3F0E    call        dword ptr [ecx+10]
>004C3F11    jmp         004C3FCE
 004C3F16    xor         eax,eax
 004C3F18    mov         dword ptr [ebp-14],eax
 004C3F1B    lea         edx,[ebp-2C]
 004C3F1E    mov         eax,dword ptr [ebp-10]
 004C3F21    call        00482ECC
 004C3F26    mov         eax,dword ptr [ebp-24]
 004C3F29    cmp         eax,dword ptr [ebp-0C]
>004C3F2C    jl          004C3F41
 004C3F2E    lea         edx,[ebp-3C]
 004C3F31    mov         eax,dword ptr [ebp-10]
 004C3F34    call        00482ECC
 004C3F39    mov         eax,dword ptr [ebp-30]
 004C3F3C    cmp         eax,dword ptr [ebp+8]
>004C3F3F    jge         004C3F70
 004C3F41    mov         eax,dword ptr [ebp-10]
 004C3F44    mov         eax,dword ptr [eax+16C]
 004C3F4A    call        TCollectionItem.GetIndex
 004C3F4F    mov         ebx,eax
 004C3F51    mov         eax,dword ptr [ebp-10]
 004C3F54    mov         eax,dword ptr [eax+16C]
 004C3F5A    call        004C0134
 004C3F5F    call        0042158C
 004C3F64    dec         eax
 004C3F65    cmp         ebx,eax
>004C3F67    jge         004C3F70
 004C3F69    mov         dword ptr [ebp-14],1
 004C3F70    lea         edx,[ebp-2C]
 004C3F73    mov         eax,dword ptr [ebp-10]
 004C3F76    call        00482ECC
 004C3F7B    mov         eax,dword ptr [ebp-2C]
 004C3F7E    cmp         eax,dword ptr [ebp-0C]
>004C3F81    jg          004C3F96
 004C3F83    lea         edx,[ebp-3C]
 004C3F86    mov         eax,dword ptr [ebp-10]
 004C3F89    call        00482ECC
 004C3F8E    mov         eax,dword ptr [ebp-38]
 004C3F91    cmp         eax,dword ptr [ebp+8]
>004C3F94    jle         004C3F9B
 004C3F96    xor         eax,eax
 004C3F98    mov         dword ptr [ebp-14],eax
 004C3F9B    mov         eax,dword ptr [ebp-4]
 004C3F9E    call        004C2EE8
 004C3FA3    mov         edx,eax
 004C3FA5    mov         eax,dword ptr [ebp-8]
 004C3FA8    mov         eax,dword ptr [eax+40]
 004C3FAB    mov         ecx,dword ptr [eax]
 004C3FAD    call        dword ptr [ecx+10]
 004C3FB0    mov         eax,dword ptr [ebp-10]
 004C3FB3    mov         eax,dword ptr [eax+16C]
 004C3FB9    call        TCollectionItem.GetIndex
 004C3FBE    mov         edx,eax
 004C3FC0    add         edx,dword ptr [ebp-14]
 004C3FC3    mov         eax,dword ptr [ebp-8]
 004C3FC6    mov         eax,dword ptr [eax+40]
 004C3FC9    mov         ecx,dword ptr [eax]
 004C3FCB    call        dword ptr [ecx+14]
 004C3FCE    mov         eax,dword ptr [ebp-8]
 004C3FD1    mov         edx,dword ptr [eax+40]
 004C3FD4    mov         eax,dword ptr [ebp-4]
 004C3FD7    mov         ecx,dword ptr [eax]
 004C3FD9    call        dword ptr [ecx+0D4];TCustomActionBar.sub_004C1888
 004C3FDF    pop         ebx
 004C3FE0    mov         esp,ebp
 004C3FE2    pop         ebp
 004C3FE3    ret         4
end;*}

//004C3FE8
procedure sub_004C3FE8;
begin
{*
 004C3FE8    push        ebp
 004C3FE9    mov         ebp,esp
 004C3FEB    add         esp,0FFFFFFF4
 004C3FEE    mov         dword ptr [ebp-4],eax
 004C3FF1    mov         eax,dword ptr [ebp-4]
 004C3FF4    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>004C3FFB    je          004C4051
 004C3FFD    mov         eax,dword ptr [ebp-4]
 004C4000    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C4006    call        TActionClient.GetItems
 004C400B    call        0042158C
 004C4010    dec         eax
 004C4011    test        eax,eax
>004C4013    jl          004C4046
 004C4015    inc         eax
 004C4016    mov         dword ptr [ebp-0C],eax
 004C4019    mov         dword ptr [ebp-8],0
 004C4020    mov         eax,dword ptr [ebp-4]
 004C4023    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C4029    call        TActionClient.GetItems
 004C402E    mov         edx,dword ptr [ebp-8]
 004C4031    call        004BF258
 004C4036    add         eax,40
 004C4039    call        FreeAndNil
 004C403E    inc         dword ptr [ebp-8]
 004C4041    dec         dword ptr [ebp-0C]
>004C4044    jne         004C4020
 004C4046    mov         eax,dword ptr [ebp-4]
 004C4049    mov         edx,dword ptr [eax]
 004C404B    call        dword ptr [edx+0D8];TCustomActionBar.sub_004C1994
 004C4051    mov         esp,ebp
 004C4053    pop         ebp
 004C4054    ret
*}
end;

//004C4058
{*procedure sub_004C4058(?:?; ?:?; ?:?; ?:?);
begin
 004C4058    push        ebp
 004C4059    mov         ebp,esp
 004C405B    add         esp,0FFFFFFF0
 004C405E    mov         dword ptr [ebp-0C],ecx
 004C4061    mov         dword ptr [ebp-8],edx
 004C4064    mov         dword ptr [ebp-4],eax
 004C4067    mov         eax,dword ptr [ebp-4]
 004C406A    call        00486D08
 004C406F    test        al,al
>004C4071    jne         004C4115
 004C4077    mov         eax,dword ptr [ebp-4]
 004C407A    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 004C4080    mov         edx,dword ptr ds:[4BAD10];TActionBarItem
 004C4086    call        @IsClass
 004C408B    test        al,al
>004C408D    je          004C4115
 004C4093    mov         eax,dword ptr [ebp-4]
 004C4096    mov         al,byte ptr [eax+5B];TCustomActionBar.FAlign:TAlign
 004C4099    dec         eax
 004C409A    sub         al,2
>004C409C    jb          004C40B3
 004C409E    mov         eax,dword ptr [ebp-4]
 004C40A1    mov         edx,dword ptr [eax]
 004C40A3    call        dword ptr [edx+54];TCustomActionBar.sub_004866DC
 004C40A6    test        al,al
>004C40A8    je          004C40C1
 004C40AA    mov         eax,dword ptr [ebp-4]
 004C40AD    cmp         byte ptr [eax+5B],0;TCustomActionBar.FAlign:TAlign
>004C40B1    jne         004C40C1
 004C40B3    mov         eax,dword ptr [ebp-4]
 004C40B6    mov         edx,dword ptr [eax]
 004C40B8    call        dword ptr [edx+0FC];TCustomActionBar.sub_004C396C
 004C40BE    mov         dword ptr [ebp+8],eax
 004C40C1    mov         eax,dword ptr [ebp-4]
 004C40C4    mov         al,byte ptr [eax+5B];TCustomActionBar.FAlign:TAlign
 004C40C7    add         al,0FD
 004C40C9    sub         al,2
>004C40CB    jb          004C40E2
 004C40CD    mov         eax,dword ptr [ebp-4]
 004C40D0    mov         edx,dword ptr [eax]
 004C40D2    call        dword ptr [edx+54];TCustomActionBar.sub_004866DC
 004C40D5    test        al,al
>004C40D7    je          004C40F2
 004C40D9    mov         eax,dword ptr [ebp-4]
 004C40DC    cmp         byte ptr [eax+5B],0;TCustomActionBar.FAlign:TAlign
>004C40E0    jne         004C40F2
 004C40E2    mov         eax,dword ptr [ebp-4]
 004C40E5    mov         edx,dword ptr [eax]
 004C40E7    call        dword ptr [edx+100];TCustomActionBar.sub_004C3A6C
 004C40ED    mov         dword ptr [ebp-10],eax
>004C40F0    jmp         004C40F8
 004C40F2    mov         eax,dword ptr [ebp+0C]
 004C40F5    mov         dword ptr [ebp-10],eax
 004C40F8    mov         eax,dword ptr [ebp-4]
 004C40FB    mov         edx,dword ptr [eax]
 004C40FD    call        dword ptr [edx+54];TCustomActionBar.sub_004866DC
 004C4100    test        al,al
>004C4102    jne         004C4115
 004C4104    mov         eax,dword ptr [ebp-10]
 004C4107    mov         edx,dword ptr [ebp-4]
 004C410A    cmp         eax,dword ptr [edx+48];TCustomActionBar.Width:Integer
>004C410D    je          004C4115
 004C410F    mov         eax,dword ptr [ebp-10]
 004C4112    mov         dword ptr [ebp+0C],eax
 004C4115    mov         eax,dword ptr [ebp+0C]
 004C4118    push        eax
 004C4119    mov         eax,dword ptr [ebp+8]
 004C411C    push        eax
 004C411D    mov         ecx,dword ptr [ebp-0C]
 004C4120    mov         edx,dword ptr [ebp-8]
 004C4123    mov         eax,dword ptr [ebp-4]
 004C4126    call        0048B89C
 004C412B    mov         esp,ebp
 004C412D    pop         ebp
 004C412E    ret         8
end;*}

//004C4134
procedure TCustomActionBar.WMPaint(Message:TWMPaint);
begin
{*
 004C4134    push        ebp
 004C4135    mov         ebp,esp
 004C4137    add         esp,0FFFFFFF8
 004C413A    mov         dword ptr [ebp-8],edx
 004C413D    mov         dword ptr [ebp-4],eax
 004C4140    mov         ax,[004C417C];0x100 gvar_004C417C
 004C4146    mov         edx,dword ptr [ebp-4]
 004C4149    or          ax,word ptr [edx+54];TCustomActionBar.FControlState:TControlState
 004C414D    mov         edx,dword ptr [ebp-4]
 004C4150    mov         word ptr [edx+54],ax;TCustomActionBar.FControlState:TControlState
 004C4154    mov         edx,dword ptr [ebp-8]
 004C4157    mov         eax,dword ptr [ebp-4]
 004C415A    call        TWinControl.WMPaint
 004C415F    mov         ax,[004C417C];0x100 gvar_004C417C
 004C4165    mov         edx,dword ptr [ebp-4]
 004C4168    not         eax
 004C416A    and         ax,word ptr [edx+54];TCustomActionBar.FControlState:TControlState
 004C416E    mov         edx,dword ptr [ebp-4]
 004C4171    mov         word ptr [edx+54],ax;TCustomActionBar.FControlState:TControlState
 004C4175    pop         ecx
 004C4176    pop         ecx
 004C4177    pop         ebp
 004C4178    ret
*}
end;

//004C4180
{*procedure sub_004C4180(?:?);
begin
 004C4180    push        ebp
 004C4181    mov         ebp,esp
 004C4183    add         esp,0FFFFFFF8
 004C4186    mov         dword ptr [ebp-8],edx
 004C4189    mov         dword ptr [ebp-4],eax
 004C418C    mov         eax,dword ptr [ebp-4]
 004C418F    mov         eax,dword ptr [eax+220];TCustomActionBar.FColorMap:TCustomActionBarColorMap
 004C4195    cmp         eax,dword ptr [ebp-8]
>004C4198    je          004C4234
 004C419E    mov         eax,dword ptr [ebp-4]
 004C41A1    cmp         dword ptr [eax+220],0;TCustomActionBar.FColorMap:TCustomActionBarColorMap
>004C41A8    je          004C41BB
 004C41AA    mov         edx,dword ptr [ebp-4]
 004C41AD    mov         eax,dword ptr [ebp-4]
 004C41B0    mov         eax,dword ptr [eax+220];TCustomActionBar.FColorMap:TCustomActionBarColorMap
 004C41B6    call        004C11F0
 004C41BB    mov         eax,dword ptr [ebp-8]
 004C41BE    mov         edx,dword ptr [ebp-4]
 004C41C1    mov         dword ptr [edx+220],eax;TCustomActionBar.FColorMap:TCustomActionBarColorMap
 004C41C7    mov         eax,dword ptr [ebp-4]
 004C41CA    cmp         dword ptr [eax+220],0;TCustomActionBar.FColorMap:TCustomActionBarColorMap
>004C41D1    jne         004C41E4
 004C41D3    mov         eax,dword ptr [ebp-4]
 004C41D6    call        004C4260
 004C41DB    mov         edx,dword ptr [ebp-4]
 004C41DE    mov         dword ptr [edx+220],eax;TCustomActionBar.FColorMap:TCustomActionBarColorMap
 004C41E4    mov         edx,dword ptr [ebp-4]
 004C41E7    mov         eax,dword ptr [ebp-4]
 004C41EA    mov         eax,dword ptr [eax+220];TCustomActionBar.FColorMap:TCustomActionBarColorMap
 004C41F0    call        004C1024
 004C41F5    mov         eax,dword ptr [ebp-4]
 004C41F8    mov         eax,dword ptr [eax+220];TCustomActionBar.FColorMap:TCustomActionBarColorMap
 004C41FE    mov         edx,dword ptr [eax+40];TCustomActionBarColorMap.FColor:TColor
 004C4201    mov         eax,dword ptr [ebp-4]
 004C4204    call        TPanel.SetColor
 004C4209    mov         eax,dword ptr [ebp-4]
 004C420C    mov         edx,dword ptr [eax]
 004C420E    call        dword ptr [edx+7C];TCustomActionBar.sub_0048BE68
 004C4211    mov         eax,dword ptr [ebp-4]
 004C4214    call        TWinControl.HandleAllocated
 004C4219    test        al,al
>004C421B    je          004C4234
 004C421D    push        0
 004C421F    push        1
 004C4221    push        85
 004C4226    mov         eax,dword ptr [ebp-4]
 004C4229    call        TWinControl.GetHandle
 004C422E    push        eax
 004C422F    call        user32.SendMessageA
 004C4234    pop         ecx
 004C4235    pop         ecx
 004C4236    pop         ebp
 004C4237    ret
end;*}

//004C4238
{*function sub_004C4238:?;
begin
 004C4238    push        ebp
 004C4239    mov         ebp,esp
 004C423B    add         esp,0FFFFFFF8
 004C423E    mov         dword ptr [ebp-4],eax
 004C4241    mov         eax,dword ptr [ebp-4]
 004C4244    mov         edx,dword ptr [eax]
 004C4246    call        dword ptr [edx+148];TCustomActionBar.sub_004C4B1C
 004C424C    mov         edx,dword ptr [ebp-4]
 004C424F    mov         ecx,dword ptr [eax]
 004C4251    call        dword ptr [ecx+4]
 004C4254    mov         dword ptr [ebp-8],eax
 004C4257    mov         eax,dword ptr [ebp-8]
 004C425A    pop         ecx
 004C425B    pop         ecx
 004C425C    pop         ebp
 004C425D    ret
end;*}

//004C4260
{*function sub_004C4260(?:TCustomActionBar):?;
begin
 004C4260    push        ebp
 004C4261    mov         ebp,esp
 004C4263    add         esp,0FFFFFFF8
 004C4266    mov         dword ptr [ebp-4],eax
 004C4269    mov         eax,dword ptr [ebp-4]
 004C426C    add         eax,274;TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 004C4271    call        FreeAndNil
 004C4276    mov         eax,dword ptr [ebp-4]
 004C4279    mov         edx,dword ptr [eax]
 004C427B    call        dword ptr [edx+10C];TCustomActionBar.sub_004C4238
 004C4281    mov         ecx,dword ptr [ebp-4]
 004C4284    mov         dl,1
 004C4286    call        dword ptr [eax+2C]
 004C4289    mov         edx,dword ptr [ebp-4]
 004C428C    mov         dword ptr [edx+274],eax;TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 004C4292    mov         edx,4C42E4;'DefaultColorMap'
 004C4297    mov         eax,dword ptr [ebp-4]
 004C429A    mov         eax,dword ptr [eax+274];TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 004C42A0    mov         ecx,dword ptr [eax]
 004C42A2    call        dword ptr [ecx+18];TComponent.SetName
 004C42A5    mov         dl,1
 004C42A7    mov         eax,dword ptr [ebp-4]
 004C42AA    mov         eax,dword ptr [eax+274];TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 004C42B0    call        0042ACFC
 004C42B5    mov         edx,dword ptr [ebp-4]
 004C42B8    mov         eax,dword ptr [ebp-4]
 004C42BB    mov         eax,dword ptr [eax+274];TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 004C42C1    call        004C1024
 004C42C6    mov         eax,dword ptr [ebp-4]
 004C42C9    mov         eax,dword ptr [eax+274];TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 004C42CF    mov         dword ptr [ebp-8],eax
 004C42D2    mov         eax,dword ptr [ebp-8]
 004C42D5    pop         ecx
 004C42D6    pop         ecx
 004C42D7    pop         ebp
 004C42D8    ret
end;*}

//004C42F4
{*procedure sub_004C42F4(?:?);
begin
 004C42F4    push        ebp
 004C42F5    mov         ebp,esp
 004C42F7    add         esp,0FFFFFFC0
 004C42FA    mov         dword ptr [ebp-8],edx
 004C42FD    mov         dword ptr [ebp-4],eax
 004C4300    mov         eax,dword ptr [ebp-4]
 004C4303    mov         dl,byte ptr ds:[4C49FC];0x0 gvar_004C49FC
 004C4309    cmp         dl,byte ptr [eax+208];TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C430F    je          004C49F7
 004C4315    mov         eax,dword ptr [ebp-4]
 004C4318    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C431E    mov         edx,dword ptr [ebp-4]
 004C4321    add         al,byte ptr [edx+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C4327    mov         edx,dword ptr [ebp-4]
 004C432A    mov         dl,byte ptr [edx+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C4330    add         edx,edx
 004C4332    add         al,dl
 004C4334    mov         edx,dword ptr [ebp-4]
 004C4337    mov         dl,byte ptr [edx+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C433D    lea         edx,[edx+edx*2]
 004C4340    add         al,dl
 004C4342    sub         al,3
 004C4344    mov         byte ptr [ebp-1D],al
 004C4347    mov         eax,dword ptr [ebp-4]
 004C434A    call        004C4A40
 004C434F    mov         eax,dword ptr [eax+40]
 004C4352    mov         dword ptr [ebp-18],eax
 004C4355    mov         eax,dword ptr [ebp-4]
 004C4358    call        004C4A40
 004C435D    mov         eax,dword ptr [eax+40]
 004C4360    mov         dword ptr [ebp-1C],eax
 004C4363    xor         eax,eax
 004C4365    mov         al,byte ptr [ebp-1D]
 004C4368    cmp         eax,0B
>004C436B    ja          004C45AD
 004C4371    jmp         dword ptr [eax*4+4C4378]
 004C4371    dd          004C43A8
 004C4371    dd          004C43A8
 004C4371    dd          004C45AD
 004C4371    dd          004C43DD
 004C4371    dd          004C4412
 004C4371    dd          004C43DD
 004C4371    dd          004C45AD
 004C4371    dd          004C4481
 004C4371    dd          004C44E6
 004C4371    dd          004C45AD
 004C4371    dd          004C45AD
 004C4371    dd          004C454B
 004C43A8    mov         eax,dword ptr [ebp-4]
 004C43AB    call        004C4A40
 004C43B0    mov         eax,dword ptr [eax+40]
 004C43B3    mov         edx,13
 004C43B8    call        004AD754
 004C43BD    mov         dword ptr [ebp-10],eax
 004C43C0    mov         eax,dword ptr [ebp-4]
 004C43C3    call        004C4A40
 004C43C8    mov         eax,dword ptr [eax+40]
 004C43CB    mov         edx,0FFFFFFCE
 004C43D0    call        004AD82C
 004C43D5    mov         dword ptr [ebp-14],eax
>004C43D8    jmp         004C45E5
 004C43DD    mov         eax,dword ptr [ebp-4]
 004C43E0    call        004C4A40
 004C43E5    mov         eax,dword ptr [eax+40]
 004C43E8    mov         edx,0FFFFFFCE
 004C43ED    call        004AD82C
 004C43F2    mov         dword ptr [ebp-10],eax
 004C43F5    mov         eax,dword ptr [ebp-4]
 004C43F8    call        004C4A40
 004C43FD    mov         eax,dword ptr [eax+40]
 004C4400    mov         edx,13
 004C4405    call        004AD754
 004C440A    mov         dword ptr [ebp-14],eax
>004C440D    jmp         004C45E5
 004C4412    mov         eax,dword ptr [ebp-4]
 004C4415    call        004C4A40
 004C441A    mov         eax,dword ptr [eax+40]
 004C441D    mov         edx,13
 004C4422    call        004AD754
 004C4427    mov         edx,0FFFFFFE2
 004C442C    call        004AD82C
 004C4431    mov         dword ptr [ebp-18],eax
 004C4434    mov         eax,dword ptr [ebp-4]
 004C4437    call        004C4A40
 004C443C    mov         eax,dword ptr [eax+40]
 004C443F    mov         edx,0FFFFFFCE
 004C4444    call        004AD82C
 004C4449    mov         dword ptr [ebp-1C],eax
 004C444C    mov         eax,dword ptr [ebp-4]
 004C444F    call        004C4A40
 004C4454    mov         eax,dword ptr [eax+40]
 004C4457    mov         edx,13
 004C445C    call        004AD754
 004C4461    mov         dword ptr [ebp-10],eax
 004C4464    mov         eax,dword ptr [ebp-4]
 004C4467    call        004C4A40
 004C446C    mov         eax,dword ptr [eax+40]
 004C446F    mov         edx,0FFFFFFE7
 004C4474    call        004AD82C
 004C4479    mov         dword ptr [ebp-14],eax
>004C447C    jmp         004C45E5
 004C4481    mov         eax,dword ptr [ebp-4]
 004C4484    call        004C4A40
 004C4489    mov         eax,dword ptr [eax+40]
 004C448C    mov         edx,13
 004C4491    call        004AD754
 004C4496    mov         dword ptr [ebp-18],eax
 004C4499    mov         eax,dword ptr [ebp-4]
 004C449C    call        004C4A40
 004C44A1    mov         eax,dword ptr [eax+40]
 004C44A4    mov         edx,0FFFFFFCE
 004C44A9    call        004AD82C
 004C44AE    mov         dword ptr [ebp-1C],eax
 004C44B1    mov         eax,dword ptr [ebp-4]
 004C44B4    call        004C4A40
 004C44B9    mov         eax,dword ptr [eax+40]
 004C44BC    mov         edx,0FFFFFFCE
 004C44C1    call        004AD82C
 004C44C6    mov         dword ptr [ebp-10],eax
 004C44C9    mov         eax,dword ptr [ebp-4]
 004C44CC    call        004C4A40
 004C44D1    mov         eax,dword ptr [eax+40]
 004C44D4    mov         edx,13
 004C44D9    call        004AD754
 004C44DE    mov         dword ptr [ebp-14],eax
>004C44E1    jmp         004C45E5
 004C44E6    mov         eax,dword ptr [ebp-4]
 004C44E9    call        004C4A40
 004C44EE    mov         eax,dword ptr [eax+40]
 004C44F1    mov         edx,0FFFFFFCE
 004C44F6    call        004AD82C
 004C44FB    mov         dword ptr [ebp-18],eax
 004C44FE    mov         eax,dword ptr [ebp-4]
 004C4501    call        004C4A40
 004C4506    mov         eax,dword ptr [eax+40]
 004C4509    mov         edx,13
 004C450E    call        004AD754
 004C4513    mov         dword ptr [ebp-1C],eax
 004C4516    mov         eax,dword ptr [ebp-4]
 004C4519    call        004C4A40
 004C451E    mov         eax,dword ptr [eax+40]
 004C4521    mov         edx,13
 004C4526    call        004AD754
 004C452B    mov         dword ptr [ebp-10],eax
 004C452E    mov         eax,dword ptr [ebp-4]
 004C4531    call        004C4A40
 004C4536    mov         eax,dword ptr [eax+40]
 004C4539    mov         edx,0FFFFFFCE
 004C453E    call        004AD82C
 004C4543    mov         dword ptr [ebp-14],eax
>004C4546    jmp         004C45E5
 004C454B    mov         eax,dword ptr [ebp-4]
 004C454E    call        004C4A40
 004C4553    mov         eax,dword ptr [eax+40]
 004C4556    mov         edx,0FFFFFFCE
 004C455B    call        004AD82C
 004C4560    mov         dword ptr [ebp-18],eax
 004C4563    mov         eax,dword ptr [ebp-4]
 004C4566    call        004C4A40
 004C456B    mov         eax,dword ptr [eax+40]
 004C456E    mov         edx,13
 004C4573    call        004AD754
 004C4578    mov         dword ptr [ebp-1C],eax
 004C457B    mov         eax,dword ptr [ebp-4]
 004C457E    call        004C4A40
 004C4583    mov         eax,dword ptr [eax+40]
 004C4586    mov         edx,0FFFFFFCE
 004C458B    call        004AD82C
 004C4590    mov         dword ptr [ebp-10],eax
 004C4593    mov         eax,dword ptr [ebp-4]
 004C4596    call        004C4A40
 004C459B    mov         eax,dword ptr [eax+40]
 004C459E    mov         edx,13
 004C45A3    call        004AD754
 004C45A8    mov         dword ptr [ebp-14],eax
>004C45AB    jmp         004C45E5
 004C45AD    mov         eax,dword ptr [ebp-4]
 004C45B0    call        004C4A40
 004C45B5    mov         eax,dword ptr [eax+40]
 004C45B8    mov         dword ptr [ebp-10],eax
 004C45BB    mov         eax,dword ptr [ebp-4]
 004C45BE    call        004C4A40
 004C45C3    mov         eax,dword ptr [eax+40]
 004C45C6    mov         dword ptr [ebp-14],eax
 004C45C9    mov         eax,dword ptr [ebp-4]
 004C45CC    call        004C4A40
 004C45D1    mov         eax,dword ptr [eax+40]
 004C45D4    mov         dword ptr [ebp-18],eax
 004C45D7    mov         eax,dword ptr [ebp-4]
 004C45DA    call        004C4A40
 004C45DF    mov         eax,dword ptr [eax+40]
 004C45E2    mov         dword ptr [ebp-1C],eax
 004C45E5    lea         eax,[ebp-2D]
 004C45E8    push        eax
 004C45E9    mov         eax,dword ptr [ebp-4]
 004C45EC    call        TWinControl.GetHandle
 004C45F1    push        eax
 004C45F2    call        user32.GetClientRect
 004C45F7    lea         eax,[ebp-3D]
 004C45FA    push        eax
 004C45FB    mov         eax,dword ptr [ebp-4]
 004C45FE    call        TWinControl.GetHandle
 004C4603    push        eax
 004C4604    call        user32.GetWindowRect
 004C4609    push        2
 004C460B    lea         eax,[ebp-3D]
 004C460E    push        eax
 004C460F    mov         eax,dword ptr [ebp-4]
 004C4612    call        TWinControl.GetHandle
 004C4617    push        eax
 004C4618    push        0
 004C461A    call        user32.MapWindowPoints
 004C461F    mov         eax,dword ptr [ebp-39]
 004C4622    neg         eax
 004C4624    push        eax
 004C4625    mov         eax,dword ptr [ebp-3D]
 004C4628    neg         eax
 004C462A    push        eax
 004C462B    lea         eax,[ebp-2D]
 004C462E    push        eax
 004C462F    call        user32.OffsetRect
 004C4634    mov         eax,dword ptr [ebp-21]
 004C4637    push        eax
 004C4638    mov         eax,dword ptr [ebp-25]
 004C463B    push        eax
 004C463C    mov         eax,dword ptr [ebp-29]
 004C463F    push        eax
 004C4640    mov         eax,dword ptr [ebp-2D]
 004C4643    push        eax
 004C4644    mov         eax,dword ptr [ebp-8]
 004C4647    push        eax
 004C4648    call        gdi32.ExcludeClipRect
 004C464D    mov         eax,dword ptr [ebp-39]
 004C4650    neg         eax
 004C4652    push        eax
 004C4653    mov         eax,dword ptr [ebp-3D]
 004C4656    neg         eax
 004C4658    push        eax
 004C4659    lea         eax,[ebp-3D]
 004C465C    push        eax
 004C465D    call        user32.OffsetRect
 004C4662    mov         eax,dword ptr [ebp-4]
 004C4665    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C466B    call        0042F6A0
 004C4670    mov         dword ptr [ebp-0C],eax
 004C4673    xor         eax,eax
 004C4675    push        ebp
 004C4676    push        4C49F0
 004C467B    push        dword ptr fs:[eax]
 004C467E    mov         dword ptr fs:[eax],esp
 004C4681    mov         eax,dword ptr [ebp-4]
 004C4684    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C468A    mov         edx,dword ptr [ebp-8]
 004C468D    call        TCanvas.SetHandle
 004C4692    mov         eax,dword ptr [ebp-4]
 004C4695    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C469B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C469E    mov         edx,1
 004C46A3    call        TPen.SetWidth
 004C46A8    mov         eax,dword ptr [ebp-4]
 004C46AB    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C46B2    jne         004C46F0
 004C46B4    mov         eax,dword ptr [ebp-4]
 004C46B7    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C46BE    je          004C476D
 004C46C4    mov         eax,dword ptr [ebp-4]
 004C46C7    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C46CD    dec         eax
 004C46CE    sub         al,2
>004C46D0    jb          004C46F0
 004C46D2    mov         eax,dword ptr [ebp-4]
 004C46D5    cmp         byte ptr [eax+20A],0;TCustomActionBar.FEdgeOuter:TEdgeStyle
>004C46DC    jne         004C476D
 004C46E2    mov         eax,dword ptr [ebp-4]
 004C46E5    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C46EB    dec         eax
 004C46EC    sub         al,2
>004C46EE    jae         004C476D
 004C46F0    mov         eax,dword ptr [ebp-4]
 004C46F3    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C46F9    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C46FC    mov         edx,dword ptr [ebp-10]
 004C46FF    call        TPen.SetColor
 004C4704    mov         eax,dword ptr [ebp-4]
 004C4707    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C470E    je          004C4739
 004C4710    mov         eax,dword ptr [ebp-4]
 004C4713    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C4719    mov         ecx,dword ptr [ebp-39]
 004C471C    mov         edx,dword ptr [ebp-35]
 004C471F    call        0042F14C
 004C4724    mov         edx,dword ptr [ebp-3D]
 004C4727    dec         edx
 004C4728    mov         eax,dword ptr [ebp-4]
 004C472B    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C4731    mov         ecx,dword ptr [ebp-39]
 004C4734    call        0042F0D0
 004C4739    mov         eax,dword ptr [ebp-4]
 004C473C    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C4743    je          004C476D
 004C4745    mov         eax,dword ptr [ebp-4]
 004C4748    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C474E    mov         ecx,dword ptr [ebp-39]
 004C4751    mov         edx,dword ptr [ebp-3D]
 004C4754    call        0042F14C
 004C4759    mov         eax,dword ptr [ebp-4]
 004C475C    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C4762    mov         ecx,dword ptr [ebp-31]
 004C4765    mov         edx,dword ptr [ebp-3D]
 004C4768    call        0042F0D0
 004C476D    mov         eax,dword ptr [ebp-4]
 004C4770    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C4777    jne         004C47AD
 004C4779    mov         eax,dword ptr [ebp-4]
 004C477C    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C4783    je          004C4833
 004C4789    mov         eax,dword ptr [ebp-4]
 004C478C    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C4792    dec         eax
 004C4793    sub         al,2
>004C4795    jae         004C4833
 004C479B    mov         eax,dword ptr [ebp-4]
 004C479E    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C47A4    dec         eax
 004C47A5    sub         al,2
>004C47A7    jae         004C4833
 004C47AD    mov         eax,dword ptr [ebp-4]
 004C47B0    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C47B6    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C47B9    mov         edx,dword ptr [ebp-18]
 004C47BC    call        TPen.SetColor
 004C47C1    mov         eax,dword ptr [ebp-4]
 004C47C4    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C47CB    je          004C47F9
 004C47CD    mov         ecx,dword ptr [ebp-39]
 004C47D0    inc         ecx
 004C47D1    mov         edx,dword ptr [ebp-35]
 004C47D4    dec         edx
 004C47D5    mov         eax,dword ptr [ebp-4]
 004C47D8    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C47DE    call        0042F14C
 004C47E3    mov         ecx,dword ptr [ebp-39]
 004C47E6    inc         ecx
 004C47E7    mov         edx,dword ptr [ebp-3D]
 004C47EA    inc         edx
 004C47EB    mov         eax,dword ptr [ebp-4]
 004C47EE    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C47F4    call        0042F0D0
 004C47F9    mov         eax,dword ptr [ebp-4]
 004C47FC    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C4803    je          004C4833
 004C4805    mov         ecx,dword ptr [ebp-39]
 004C4808    inc         ecx
 004C4809    mov         edx,dword ptr [ebp-3D]
 004C480C    inc         edx
 004C480D    mov         eax,dword ptr [ebp-4]
 004C4810    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C4816    call        0042F14C
 004C481B    mov         ecx,dword ptr [ebp-31]
 004C481E    sub         ecx,2
 004C4821    mov         edx,dword ptr [ebp-3D]
 004C4824    inc         edx
 004C4825    mov         eax,dword ptr [ebp-4]
 004C4828    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C482E    call        0042F0D0
 004C4833    mov         eax,dword ptr [ebp-4]
 004C4836    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C483D    jne         004C487F
 004C483F    mov         eax,dword ptr [ebp-4]
 004C4842    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C4849    je          004C4902
 004C484F    mov         eax,dword ptr [ebp-4]
 004C4852    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C4858    dec         eax
 004C4859    sub         al,2
>004C485B    jb          004C487F
 004C485D    mov         eax,dword ptr [ebp-4]
 004C4860    cmp         byte ptr [eax+20A],0;TCustomActionBar.FEdgeOuter:TEdgeStyle
>004C4867    jne         004C4902
 004C486D    mov         eax,dword ptr [ebp-4]
 004C4870    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C4876    dec         eax
 004C4877    sub         al,2
>004C4879    jae         004C4902
 004C487F    mov         eax,dword ptr [ebp-4]
 004C4882    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C4888    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C488B    mov         edx,dword ptr [ebp-14]
 004C488E    call        TPen.SetColor
 004C4893    mov         eax,dword ptr [ebp-4]
 004C4896    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C489D    je          004C48CA
 004C489F    mov         edx,dword ptr [ebp-35]
 004C48A2    dec         edx
 004C48A3    mov         eax,dword ptr [ebp-4]
 004C48A6    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C48AC    mov         ecx,dword ptr [ebp-39]
 004C48AF    call        0042F14C
 004C48B4    mov         ecx,dword ptr [ebp-31]
 004C48B7    dec         ecx
 004C48B8    mov         edx,dword ptr [ebp-35]
 004C48BB    dec         edx
 004C48BC    mov         eax,dword ptr [ebp-4]
 004C48BF    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C48C5    call        0042F0D0
 004C48CA    mov         eax,dword ptr [ebp-4]
 004C48CD    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C48D4    je          004C4902
 004C48D6    mov         ecx,dword ptr [ebp-31]
 004C48D9    dec         ecx
 004C48DA    mov         edx,dword ptr [ebp-35]
 004C48DD    dec         edx
 004C48DE    mov         eax,dword ptr [ebp-4]
 004C48E1    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C48E7    call        0042F14C
 004C48EC    mov         ecx,dword ptr [ebp-31]
 004C48EF    dec         ecx
 004C48F0    mov         edx,dword ptr [ebp-3D]
 004C48F3    dec         edx
 004C48F4    mov         eax,dword ptr [ebp-4]
 004C48F7    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C48FD    call        0042F0D0
 004C4902    mov         eax,dword ptr [ebp-4]
 004C4905    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C490C    jne         004C4942
 004C490E    mov         eax,dword ptr [ebp-4]
 004C4911    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C4918    je          004C49D1
 004C491E    mov         eax,dword ptr [ebp-4]
 004C4921    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 004C4927    dec         eax
 004C4928    sub         al,2
>004C492A    jae         004C49D1
 004C4930    mov         eax,dword ptr [ebp-4]
 004C4933    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 004C4939    dec         eax
 004C493A    sub         al,2
>004C493C    jae         004C49D1
 004C4942    mov         eax,dword ptr [ebp-4]
 004C4945    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C494B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C494E    mov         edx,dword ptr [ebp-1C]
 004C4951    call        TPen.SetColor
 004C4956    mov         eax,dword ptr [ebp-4]
 004C4959    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C4960    je          004C4994
 004C4962    mov         ecx,dword ptr [ebp-39]
 004C4965    inc         ecx
 004C4966    mov         edx,dword ptr [ebp-35]
 004C4969    sub         edx,2
 004C496C    mov         eax,dword ptr [ebp-4]
 004C496F    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C4975    call        0042F14C
 004C497A    mov         ecx,dword ptr [ebp-31]
 004C497D    sub         ecx,2
 004C4980    mov         edx,dword ptr [ebp-35]
 004C4983    sub         edx,2
 004C4986    mov         eax,dword ptr [ebp-4]
 004C4989    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C498F    call        0042F0D0
 004C4994    mov         eax,dword ptr [ebp-4]
 004C4997    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>004C499E    je          004C49D1
 004C49A0    mov         ecx,dword ptr [ebp-31]
 004C49A3    sub         ecx,2
 004C49A6    mov         edx,dword ptr [ebp-35]
 004C49A9    sub         edx,2
 004C49AC    mov         eax,dword ptr [ebp-4]
 004C49AF    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C49B5    call        0042F14C
 004C49BA    mov         ecx,dword ptr [ebp-31]
 004C49BD    sub         ecx,2
 004C49C0    mov         eax,dword ptr [ebp-4]
 004C49C3    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C49C9    mov         edx,dword ptr [ebp-3D]
 004C49CC    call        0042F0D0
 004C49D1    xor         eax,eax
 004C49D3    pop         edx
 004C49D4    pop         ecx
 004C49D5    pop         ecx
 004C49D6    mov         dword ptr fs:[eax],edx
 004C49D9    push        4C49F7
 004C49DE    mov         eax,dword ptr [ebp-4]
 004C49E1    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 004C49E7    mov         edx,dword ptr [ebp-0C]
 004C49EA    call        TCanvas.SetHandle
 004C49EF    ret
>004C49F0    jmp         @HandleFinally
>004C49F5    jmp         004C49DE
 004C49F7    mov         esp,ebp
 004C49F9    pop         ebp
 004C49FA    ret
end;*}

//004C4A00
{*procedure TCustomActionBar.CMWinIniChange(?:?);
begin
 004C4A00    push        ebp
 004C4A01    mov         ebp,esp
 004C4A03    add         esp,0FFFFFFF8
 004C4A06    mov         dword ptr [ebp-8],edx
 004C4A09    mov         dword ptr [ebp-4],eax
 004C4A0C    mov         edx,dword ptr [ebp-8]
 004C4A0F    mov         eax,dword ptr [ebp-4]
 004C4A12    call        TWinControl.CMWinIniChange
 004C4A17    mov         eax,dword ptr [ebp-4]
 004C4A1A    call        004C4A40
 004C4A1F    mov         edx,dword ptr [eax]
 004C4A21    call        dword ptr [edx+38]
 004C4A24    pop         ecx
 004C4A25    pop         ecx
 004C4A26    pop         ebp
 004C4A27    ret
end;*}

//004C4A28
{*function sub_004C4A28(?:TCustomActionBar):?;
begin
 004C4A28    push        ebp
 004C4A29    mov         ebp,esp
 004C4A2B    add         esp,0FFFFFFF8
 004C4A2E    mov         dword ptr [ebp-4],eax
 004C4A31    mov         eax,[004B1A20];TCustomActionPopupMenu
 004C4A36    mov         dword ptr [ebp-8],eax
 004C4A39    mov         eax,dword ptr [ebp-8]
 004C4A3C    pop         ecx
 004C4A3D    pop         ecx
 004C4A3E    pop         ebp
 004C4A3F    ret
end;*}

//004C4A40
{*function sub_004C4A40(?:TCustomActionBar):?;
begin
 004C4A40    push        ebp
 004C4A41    mov         ebp,esp
 004C4A43    add         esp,0FFFFFFF8
 004C4A46    mov         dword ptr [ebp-4],eax
 004C4A49    mov         eax,dword ptr [ebp-4]
 004C4A4C    mov         eax,dword ptr [eax+220];TCustomActionBar.FColorMap:TCustomActionBarColorMap
 004C4A52    mov         dword ptr [ebp-8],eax
 004C4A55    mov         eax,dword ptr [ebp-4]
 004C4A58    mov         eax,dword ptr [eax+220];TCustomActionBar.FColorMap:TCustomActionBarColorMap
 004C4A5E    mov         edx,dword ptr [eax+40];TCustomActionBarColorMap.FColor:TColor
 004C4A61    mov         eax,dword ptr [ebp-4]
 004C4A64    call        TPanel.SetColor
 004C4A69    cmp         dword ptr [ebp-8],0
>004C4A6D    jne         004C4A83
 004C4A6F    mov         eax,dword ptr [ebp-4]
 004C4A72    call        004C4260
 004C4A77    mov         eax,dword ptr [ebp-4]
 004C4A7A    mov         eax,dword ptr [eax+274];TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 004C4A80    mov         dword ptr [ebp-8],eax
 004C4A83    mov         eax,dword ptr [ebp-8]
 004C4A86    pop         ecx
 004C4A87    pop         ecx
 004C4A88    pop         ebp
 004C4A89    ret
end;*}

//004C4A8C
{*procedure TCustomActionBar.CMMouseLeave(?:?);
begin
 004C4A8C    push        ebp
 004C4A8D    mov         ebp,esp
 004C4A8F    add         esp,0FFFFFFE8
 004C4A92    mov         dword ptr [ebp-8],edx
 004C4A95    mov         dword ptr [ebp-4],eax
 004C4A98    mov         edx,dword ptr [ebp-8]
 004C4A9B    mov         eax,dword ptr [ebp-4]
 004C4A9E    call        TControl.CMMouseLeave
 004C4AA3    mov         eax,dword ptr [ebp-4]
 004C4AA6    mov         edx,dword ptr [eax]
 004C4AA8    call        dword ptr [edx+104];TCustomActionBar.sub_004C3B84
 004C4AAE    test        al,al
>004C4AB0    je          004C4AD3
 004C4AB2    mov         dword ptr [ebp-18],0B411
 004C4AB9    xor         eax,eax
 004C4ABB    mov         dword ptr [ebp-14],eax
 004C4ABE    xor         eax,eax
 004C4AC0    mov         dword ptr [ebp-10],eax
 004C4AC3    xor         eax,eax
 004C4AC5    mov         dword ptr [ebp-0C],eax
 004C4AC8    lea         edx,[ebp-18]
 004C4ACB    mov         eax,dword ptr [ebp-4]
 004C4ACE    call        00487E84
 004C4AD3    mov         esp,ebp
 004C4AD5    pop         ebp
 004C4AD6    ret
end;*}

//004C4AD8
{*procedure TCustomActionBar.sub_00484E9C(?:?);
begin
 004C4AD8    push        ebp
 004C4AD9    mov         ebp,esp
 004C4ADB    add         esp,0FFFFFFF4
 004C4ADE    mov         dword ptr [ebp-8],edx
 004C4AE1    mov         dword ptr [ebp-4],eax
 004C4AE4    mov         byte ptr [ebp-9],0
 004C4AE8    mov         eax,dword ptr [ebp-8]
 004C4AEB    mov         eax,dword ptr [eax]
 004C4AED    sub         eax,0B014
>004C4AF2    jne         004C4B13
 004C4AF4    mov         eax,[0056E5B4];^Mouse:TMouse
 004C4AF9    mov         eax,dword ptr [eax]
 004C4AFB    call        00491DE4
 004C4B00    test        al,al
>004C4B02    je          004C4B13
 004C4B04    mov         edx,dword ptr [ebp-8]
 004C4B07    mov         eax,dword ptr [ebp-4]
 004C4B0A    mov         ecx,dword ptr [eax]
 004C4B0C    call        dword ptr [ecx-14];TObject.Dispatch
 004C4B0F    mov         byte ptr [ebp-9],1
 004C4B13    mov         al,byte ptr [ebp-9]
 004C4B16    mov         esp,ebp
 004C4B18    pop         ebp
 004C4B19    ret
end;*}

//004C4B1C
{*function sub_004C4B1C:?;
begin
 004C4B1C    push        ebp
 004C4B1D    mov         ebp,esp
 004C4B1F    add         esp,0FFFFFFF8
 004C4B22    mov         dword ptr [ebp-4],eax
 004C4B25    mov         eax,dword ptr [ebp-4]
 004C4B28    cmp         dword ptr [eax+214],0;TCustomActionBar.FActionManager:TCustomActionManager
>004C4B2F    je          004C4B57
 004C4B31    mov         eax,dword ptr [ebp-4]
 004C4B34    mov         eax,dword ptr [eax+214];TCustomActionBar.FActionManager:TCustomActionManager
 004C4B3A    cmp         dword ptr [eax+0C8],0;TCustomActionManager.FStyle:TActionBarStyle
>004C4B41    je          004C4B57
 004C4B43    mov         eax,dword ptr [ebp-4]
 004C4B46    mov         eax,dword ptr [eax+214];TCustomActionBar.FActionManager:TCustomActionManager
 004C4B4C    mov         eax,dword ptr [eax+0C8];TCustomActionManager.FStyle:TActionBarStyle
 004C4B52    mov         dword ptr [ebp-8],eax
>004C4B55    jmp         004C4B66
 004C4B57    xor         edx,edx
 004C4B59    mov         eax,[00571E84];0x0 ActionBarStyles:TActionBarStyleList
 004C4B5E    call        004C7318
 004C4B63    mov         dword ptr [ebp-8],eax
 004C4B66    mov         eax,dword ptr [ebp-8]
 004C4B69    pop         ecx
 004C4B6A    pop         ecx
 004C4B6B    pop         ebp
 004C4B6C    ret
end;*}

//004C4B70
constructor sub_004C4B70;
begin
{*
 004C4B70    push        ebp
 004C4B71    mov         ebp,esp
 004C4B73    add         esp,0FFFFFFE4
 004C4B76    push        esi
 004C4B77    push        edi
 004C4B78    test        dl,dl
>004C4B7A    je          004C4B84
 004C4B7C    add         esp,0FFFFFFF0
 004C4B7F    call        @ClassCreate
 004C4B84    mov         dword ptr [ebp-0C],ecx
 004C4B87    mov         byte ptr [ebp-5],dl
 004C4B8A    mov         dword ptr [ebp-4],eax
 004C4B8D    mov         ecx,dword ptr [ebp-0C]
 004C4B90    xor         edx,edx
 004C4B92    mov         eax,dword ptr [ebp-4]
 004C4B95    call        0048D848
 004C4B9A    mov         eax,dword ptr [ebp-4]
 004C4B9D    mov         eax,dword ptr [eax+50];TCustomActionControl.FControlStyle:TControlStyle
 004C4BA0    or          eax,dword ptr ds:[4C4C30];0x4 gvar_004C4C30
 004C4BA6    mov         edx,dword ptr [ebp-4]
 004C4BA9    mov         dword ptr [edx+50],eax;TCustomActionControl.FControlStyle:TControlStyle
 004C4BAC    mov         edx,16
 004C4BB1    mov         eax,dword ptr [ebp-4]
 004C4BB4    call        TToolButton.SetHeight
 004C4BB9    mov         edx,16
 004C4BBE    mov         eax,dword ptr [ebp-4]
 004C4BC1    call        TSplitter.SetWidth
 004C4BC6    mov         eax,dword ptr [ebp-4]
 004C4BC9    mov         byte ptr [eax+171],0;TCustomActionControl.FGlyphLayout:TButtonLayout
 004C4BD0    mov         dl,1
 004C4BD2    mov         eax,dword ptr [ebp-4]
 004C4BD5    call        TImage.SetParentShowHint
 004C4BDA    push        4
 004C4BDC    lea         eax,[ebp-1C]
 004C4BDF    push        eax
 004C4BE0    mov         ecx,4
 004C4BE5    mov         edx,4
 004C4BEA    mov         eax,4
 004C4BEF    call        0041E714
 004C4BF4    mov         eax,dword ptr [ebp-4]
 004C4BF7    lea         esi,[ebp-1C]
 004C4BFA    lea         edi,[eax+17A];TCustomActionControl.FMargins:TRect
 004C4C00    movs        dword ptr [edi],dword ptr [esi]
 004C4C01    movs        dword ptr [edi],dword ptr [esi]
 004C4C02    movs        dword ptr [edi],dword ptr [esi]
 004C4C03    movs        dword ptr [edi],dword ptr [esi]
 004C4C04    mov         eax,dword ptr [ebp-4]
 004C4C07    mov         byte ptr [eax+1A0],1;TCustomActionControl.FTransparent:Boolean
 004C4C0E    mov         eax,dword ptr [ebp-4]
 004C4C11    cmp         byte ptr [ebp-5],0
>004C4C15    je          004C4C26
 004C4C17    call        @AfterConstruction
 004C4C1C    pop         dword ptr fs:[0]
 004C4C23    add         esp,0C
 004C4C26    mov         eax,dword ptr [ebp-4]
 004C4C29    pop         edi
 004C4C2A    pop         esi
 004C4C2B    mov         esp,ebp
 004C4C2D    pop         ebp
 004C4C2E    ret
*}
end;

//004C4C34
destructor TCustomActionControl.Destroy;
begin
{*
 004C4C34    push        ebp
 004C4C35    mov         ebp,esp
 004C4C37    add         esp,0FFFFFFF8
 004C4C3A    call        @BeforeDestruction
 004C4C3F    mov         byte ptr [ebp-5],dl
 004C4C42    mov         dword ptr [ebp-4],eax
 004C4C45    mov         eax,dword ptr [ebp-4]
 004C4C48    cmp         dword ptr [eax+16C],0
>004C4C4F    je          004C4C70
 004C4C51    mov         eax,dword ptr [ebp-4]
 004C4C54    mov         eax,dword ptr [eax+16C]
 004C4C5A    mov         eax,dword ptr [eax+40]
 004C4C5D    cmp         eax,dword ptr [ebp-4]
>004C4C60    jne         004C4C70
 004C4C62    mov         eax,dword ptr [ebp-4]
 004C4C65    mov         eax,dword ptr [eax+16C]
 004C4C6B    xor         edx,edx
 004C4C6D    mov         dword ptr [eax+40],edx
 004C4C70    mov         dl,byte ptr [ebp-5]
 004C4C73    and         dl,0FC
 004C4C76    mov         eax,dword ptr [ebp-4]
 004C4C79    call        TGraphicControl.Destroy
 004C4C7E    cmp         byte ptr [ebp-5],0
>004C4C82    jle         004C4C8C
 004C4C84    mov         eax,dword ptr [ebp-4]
 004C4C87    call        @ClassDestroy
 004C4C8C    pop         ecx
 004C4C8D    pop         ecx
 004C4C8E    pop         ebp
 004C4C8F    ret
*}
end;

//004C4C90
procedure TCustomActionControl.sub_004841BC;
begin
{*
 004C4C90    push        ebp
 004C4C91    mov         ebp,esp
 004C4C93    push        ecx
 004C4C94    mov         dword ptr [ebp-4],eax
 004C4C97    mov         dl,1
 004C4C99    mov         eax,dword ptr [ebp-4]
 004C4C9C    mov         ecx,dword ptr [eax]
 004C4C9E    call        dword ptr [ecx+0D8];TCustomActionControl.sub_004C62B8
 004C4CA4    mov         eax,[0056E5B4];^Mouse:TMouse
 004C4CA9    mov         eax,dword ptr [eax]
 004C4CAB    mov         ecx,dword ptr [eax+8];TMouse.FDragThreshold:Integer
 004C4CAE    xor         edx,edx
 004C4CB0    mov         eax,dword ptr [ebp-4]
 004C4CB3    call        004841E0
 004C4CB8    pop         ecx
 004C4CB9    pop         ebp
 004C4CBA    ret
*}
end;

//004C4CBC
{*function sub_004C4CBC(?:TCustomActionControl):?;
begin
 004C4CBC    push        ebp
 004C4CBD    mov         ebp,esp
 004C4CBF    add         esp,0FFFFFFF8
 004C4CC2    mov         dword ptr [ebp-4],eax
 004C4CC5    mov         eax,dword ptr [ebp-4]
 004C4CC8    cmp         dword ptr [eax+16C],0
>004C4CCF    je          004C4CE0
 004C4CD1    mov         eax,dword ptr [ebp-4]
 004C4CD4    mov         edx,dword ptr [eax]
 004C4CD6    call        dword ptr [edx+98]
 004C4CDC    test        al,al
>004C4CDE    jne         004C4D00
 004C4CE0    mov         eax,dword ptr [ebp-4]
 004C4CE3    call        004C6A18
 004C4CE8    test        al,al
>004C4CEA    je          004C4D00
 004C4CEC    mov         eax,dword ptr [ebp-4]
 004C4CEF    mov         eax,dword ptr [eax+16C]
 004C4CF5    call        004C0134
 004C4CFA    cmp         byte ptr [eax+28],2
>004C4CFE    jne         004C4D17
 004C4D00    mov         eax,dword ptr [ebp-4]
 004C4D03    mov         eax,dword ptr [eax+198]
 004C4D09    mov         edx,dword ptr [ebp-4]
 004C4D0C    sub         eax,dword ptr [edx+190]
 004C4D12    mov         dword ptr [ebp-8],eax
>004C4D15    jmp         004C4D1C
 004C4D17    xor         eax,eax
 004C4D19    mov         dword ptr [ebp-8],eax
 004C4D1C    mov         eax,dword ptr [ebp-8]
 004C4D1F    pop         ecx
 004C4D20    pop         ecx
 004C4D21    pop         ebp
 004C4D22    ret
end;*}

//004C4D24
{*function sub_004C4D24(?:TCustomActionControl):?;
begin
 004C4D24    push        ebp
 004C4D25    mov         ebp,esp
 004C4D27    add         esp,0FFFFFFF8
 004C4D2A    mov         dword ptr [ebp-4],eax
 004C4D2D    mov         eax,dword ptr [ebp-4]
 004C4D30    cmp         dword ptr [eax+16C],0
>004C4D37    je          004C4D48
 004C4D39    mov         eax,dword ptr [ebp-4]
 004C4D3C    mov         edx,dword ptr [eax]
 004C4D3E    call        dword ptr [edx+98]
 004C4D44    test        al,al
>004C4D46    jne         004C4D68
 004C4D48    mov         eax,dword ptr [ebp-4]
 004C4D4B    call        004C6A18
 004C4D50    test        al,al
>004C4D52    je          004C4D68
 004C4D54    mov         eax,dword ptr [ebp-4]
 004C4D57    mov         eax,dword ptr [eax+16C]
 004C4D5D    call        004C0134
 004C4D62    cmp         byte ptr [eax+28],2
>004C4D66    jne         004C4D7F
 004C4D68    mov         eax,dword ptr [ebp-4]
 004C4D6B    mov         eax,dword ptr [eax+19C]
 004C4D71    mov         edx,dword ptr [ebp-4]
 004C4D74    sub         eax,dword ptr [edx+194]
 004C4D7A    mov         dword ptr [ebp-8],eax
>004C4D7D    jmp         004C4D84
 004C4D7F    xor         eax,eax
 004C4D81    mov         dword ptr [ebp-8],eax
 004C4D84    mov         eax,dword ptr [ebp-8]
 004C4D87    pop         ecx
 004C4D88    pop         ecx
 004C4D89    pop         ebp
 004C4D8A    ret
end;*}

//004C4D8C
{*function sub_004C4D8C(?:TCustomActionControl; ?:?):?;
begin
 004C4D8C    push        ebp
 004C4D8D    mov         ebp,esp
 004C4D8F    add         esp,0FFFFFFF0
 004C4D92    push        esi
 004C4D93    push        edi
 004C4D94    mov         esi,edx
 004C4D96    lea         edi,[ebp-0C]
 004C4D99    movs        dword ptr [edi],dword ptr [esi]
 004C4D9A    movs        dword ptr [edi],dword ptr [esi]
 004C4D9B    mov         dword ptr [ebp-4],eax
 004C4D9E    cmp         dword ptr [ebp-0C],0
>004C4DA2    je          004C4DB0
 004C4DA4    mov         eax,dword ptr [ebp-4]
 004C4DA7    call        004C4CBC
 004C4DAC    test        eax,eax
>004C4DAE    jne         004C4DB7
 004C4DB0    xor         eax,eax
 004C4DB2    mov         dword ptr [ebp-10],eax
>004C4DB5    jmp         004C4DC3
 004C4DB7    mov         eax,dword ptr [ebp-4]
 004C4DBA    mov         eax,dword ptr [eax+18C]
 004C4DC0    mov         dword ptr [ebp-10],eax
 004C4DC3    mov         eax,dword ptr [ebp-10]
 004C4DC6    pop         edi
 004C4DC7    pop         esi
 004C4DC8    mov         esp,ebp
 004C4DCA    pop         ebp
 004C4DCB    ret
end;*}

//004C4DCC
procedure sub_004C4DCC;
begin
{*
 004C4DCC    push        ebp
 004C4DCD    mov         ebp,esp
 004C4DCF    add         esp,0FFFFFFE4
 004C4DD2    push        ebx
 004C4DD3    mov         dword ptr [ebp-4],eax
 004C4DD6    mov         eax,dword ptr [ebp-4]
 004C4DD9    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C4DE0    je          004C50C3
 004C4DE6    lea         edx,[ebp-14]
 004C4DE9    mov         eax,dword ptr [ebp-4]
 004C4DEC    mov         ecx,dword ptr [eax]
 004C4DEE    call        dword ptr [ecx+0BC];TCustomActionControl.sub_004C6058
 004C4DF4    mov         eax,dword ptr [ebp-4]
 004C4DF7    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C4DFD    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C4E00    mov         edx,dword ptr [ebp-4]
 004C4E03    mov         edx,dword ptr [edx+68];TCustomActionControl.FFont:TFont
 004C4E06    mov         ecx,dword ptr [eax]
 004C4E08    call        dword ptr [ecx+8];TFont.sub_0042DF9C
 004C4E0B    mov         eax,dword ptr [ebp-4]
 004C4E0E    call        004C6C74
 004C4E13    mov         eax,dword ptr [ebp-4]
 004C4E16    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 004C4E19    mov         dword ptr [ebp-8],eax
 004C4E1C    mov         eax,dword ptr [ebp-4]
 004C4E1F    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 004C4E22    mov         dword ptr [ebp-0C],eax
 004C4E25    mov         eax,dword ptr [ebp-4]
 004C4E28    mov         al,byte ptr [eax+171];TCustomActionControl.FGlyphLayout:TButtonLayout
 004C4E2E    sub         al,2
>004C4E30    jb          004C4E3F
 004C4E32    sub         al,2
>004C4E34    jb          004C4F4F
>004C4E3A    jmp         004C50C3
 004C4E3F    mov         eax,dword ptr [ebp-4]
 004C4E42    cmp         byte ptr [eax+171],0;TCustomActionControl.FGlyphLayout:TButtonLayout
>004C4E49    jne         004C4ED4
 004C4E4F    mov         edx,dword ptr [ebp-0C]
 004C4E52    sar         edx,1
>004C4E54    jns         004C4E59
 004C4E56    adc         edx,0
 004C4E59    mov         eax,dword ptr [ebp-10]
 004C4E5C    sar         eax,1
>004C4E5E    jns         004C4E63
 004C4E60    adc         eax,0
 004C4E63    sub         edx,eax
 004C4E65    lea         ecx,[ebp-1C]
 004C4E68    mov         eax,dword ptr [ebp-4]
 004C4E6B    mov         eax,dword ptr [eax+17A];TCustomActionControl.FMargins:TRect
 004C4E71    call        Point
 004C4E76    mov         eax,dword ptr [ebp-4]
 004C4E79    mov         edx,dword ptr [ebp-1C]
 004C4E7C    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 004C4E82    mov         edx,dword ptr [ebp-18]
 004C4E85    mov         dword ptr [eax+176],edx
 004C4E8B    mov         eax,dword ptr [ebp-4]
 004C4E8E    call        004C4D24
 004C4E93    sar         eax,1
>004C4E95    jns         004C4E9A
 004C4E97    adc         eax,0
 004C4E9A    mov         edx,dword ptr [ebp-0C]
 004C4E9D    sar         edx,1
>004C4E9F    jns         004C4EA4
 004C4EA1    adc         edx,0
 004C4EA4    sub         edx,eax
 004C4EA6    push        edx
 004C4EA7    lea         edx,[ebp-14]
 004C4EAA    mov         eax,dword ptr [ebp-4]
 004C4EAD    call        004C4D8C
 004C4EB2    mov         edx,dword ptr [ebp-4]
 004C4EB5    mov         edx,dword ptr [edx+17A];TCustomActionControl.FMargins:TRect
 004C4EBB    add         edx,dword ptr [ebp-14]
 004C4EBE    add         eax,edx
 004C4EC0    push        eax
 004C4EC1    mov         eax,dword ptr [ebp-4]
 004C4EC4    add         eax,190;TCustomActionControl.FTextBounds:TRect
 004C4EC9    push        eax
 004C4ECA    call        user32.OffsetRect
>004C4ECF    jmp         004C50C3
 004C4ED4    mov         edx,dword ptr [ebp-0C]
 004C4ED7    sar         edx,1
>004C4ED9    jns         004C4EDE
 004C4EDB    adc         edx,0
 004C4EDE    mov         eax,dword ptr [ebp-10]
 004C4EE1    sar         eax,1
>004C4EE3    jns         004C4EE8
 004C4EE5    adc         eax,0
 004C4EE8    sub         edx,eax
 004C4EEA    lea         ecx,[ebp-1C]
 004C4EED    mov         eax,dword ptr [ebp-8]
 004C4EF0    mov         ebx,dword ptr [ebp-4]
 004C4EF3    sub         eax,dword ptr [ebx+182]
 004C4EF9    sub         eax,dword ptr [ebp-14]
 004C4EFC    call        Point
 004C4F01    mov         eax,dword ptr [ebp-4]
 004C4F04    mov         edx,dword ptr [ebp-1C]
 004C4F07    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 004C4F0D    mov         edx,dword ptr [ebp-18]
 004C4F10    mov         dword ptr [eax+176],edx
 004C4F16    mov         eax,dword ptr [ebp-4]
 004C4F19    call        004C4D24
 004C4F1E    sar         eax,1
>004C4F20    jns         004C4F25
 004C4F22    adc         eax,0
 004C4F25    mov         edx,dword ptr [ebp-0C]
 004C4F28    sar         edx,1
>004C4F2A    jns         004C4F2F
 004C4F2C    adc         edx,0
 004C4F2F    sub         edx,eax
 004C4F31    push        edx
 004C4F32    mov         eax,dword ptr [ebp-4]
 004C4F35    mov         eax,dword ptr [eax+17A];TCustomActionControl.FMargins:TRect
 004C4F3B    push        eax
 004C4F3C    mov         eax,dword ptr [ebp-4]
 004C4F3F    add         eax,190;TCustomActionControl.FTextBounds:TRect
 004C4F44    push        eax
 004C4F45    call        user32.OffsetRect
>004C4F4A    jmp         004C50C3
 004C4F4F    mov         eax,dword ptr [ebp-4]
 004C4F52    cmp         byte ptr [eax+171],2;TCustomActionControl.FGlyphLayout:TButtonLayout
>004C4F59    jne         004C503A
 004C4F5F    mov         eax,dword ptr [ebp-4]
 004C4F62    mov         edx,dword ptr [eax]
 004C4F64    call        dword ptr [edx+98];TCustomActionControl.sub_004C6AD0
 004C4F6A    test        al,al
>004C4F6C    je          004C4FAC
 004C4F6E    mov         eax,dword ptr [ebp-8]
 004C4F71    sar         eax,1
>004C4F73    jns         004C4F78
 004C4F75    adc         eax,0
 004C4F78    mov         edx,dword ptr [ebp-14]
 004C4F7B    sar         edx,1
>004C4F7D    jns         004C4F82
 004C4F7F    adc         edx,0
 004C4F82    sub         eax,edx
 004C4F84    lea         ecx,[ebp-1C]
 004C4F87    mov         edx,dword ptr [ebp-4]
 004C4F8A    mov         edx,dword ptr [edx+17E];TCustomActionControl.FMargins.Top:Longint
 004C4F90    call        Point
 004C4F95    mov         eax,dword ptr [ebp-4]
 004C4F98    mov         edx,dword ptr [ebp-1C]
 004C4F9B    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 004C4FA1    mov         edx,dword ptr [ebp-18]
 004C4FA4    mov         dword ptr [eax+176],edx
>004C4FAA    jmp         004C4FF5
 004C4FAC    mov         edx,dword ptr [ebp-0C]
 004C4FAF    sar         edx,1
>004C4FB1    jns         004C4FB6
 004C4FB3    adc         edx,0
 004C4FB6    mov         eax,dword ptr [ebp-10]
 004C4FB9    sar         eax,1
>004C4FBB    jns         004C4FC0
 004C4FBD    adc         eax,0
 004C4FC0    sub         edx,eax
 004C4FC2    mov         eax,dword ptr [ebp-8]
 004C4FC5    sar         eax,1
>004C4FC7    jns         004C4FCC
 004C4FC9    adc         eax,0
 004C4FCC    mov         ecx,dword ptr [ebp-14]
 004C4FCF    sar         ecx,1
>004C4FD1    jns         004C4FD6
 004C4FD3    adc         ecx,0
 004C4FD6    sub         eax,ecx
 004C4FD8    lea         ecx,[ebp-1C]
 004C4FDB    call        Point
 004C4FE0    mov         eax,dword ptr [ebp-4]
 004C4FE3    mov         edx,dword ptr [ebp-1C]
 004C4FE6    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 004C4FEC    mov         edx,dword ptr [ebp-18]
 004C4FEF    mov         dword ptr [eax+176],edx
 004C4FF5    mov         eax,dword ptr [ebp-4]
 004C4FF8    mov         eax,dword ptr [eax+176]
 004C4FFE    add         eax,dword ptr [ebp-10]
 004C5001    mov         edx,dword ptr [ebp-4]
 004C5004    add         eax,dword ptr [edx+18C];TCustomActionControl.FSpacing:Integer
 004C500A    push        eax
 004C500B    mov         eax,dword ptr [ebp-4]
 004C500E    call        004C4CBC
 004C5013    sar         eax,1
>004C5015    jns         004C501A
 004C5017    adc         eax,0
 004C501A    mov         edx,dword ptr [ebp-8]
 004C501D    sar         edx,1
>004C501F    jns         004C5024
 004C5021    adc         edx,0
 004C5024    sub         edx,eax
 004C5026    push        edx
 004C5027    mov         eax,dword ptr [ebp-4]
 004C502A    add         eax,190;TCustomActionControl.FTextBounds:TRect
 004C502F    push        eax
 004C5030    call        user32.OffsetRect
>004C5035    jmp         004C50C3
 004C503A    mov         eax,dword ptr [ebp-4]
 004C503D    mov         eax,dword ptr [eax+17E];TCustomActionControl.FMargins.Top:Longint
 004C5043    push        eax
 004C5044    mov         eax,dword ptr [ebp-4]
 004C5047    call        004C4CBC
 004C504C    sar         eax,1
>004C504E    jns         004C5053
 004C5050    adc         eax,0
 004C5053    mov         edx,dword ptr [ebp-8]
 004C5056    sar         edx,1
>004C5058    jns         004C505D
 004C505A    adc         edx,0
 004C505D    sub         edx,eax
 004C505F    push        edx
 004C5060    mov         eax,dword ptr [ebp-4]
 004C5063    add         eax,190;TCustomActionControl.FTextBounds:TRect
 004C5068    push        eax
 004C5069    call        user32.OffsetRect
 004C506E    lea         edx,[ebp-14]
 004C5071    mov         eax,dword ptr [ebp-4]
 004C5074    call        004C4D8C
 004C5079    mov         ebx,eax
 004C507B    mov         eax,dword ptr [ebp-4]
 004C507E    call        004C4D24
 004C5083    mov         edx,dword ptr [ebp-4]
 004C5086    add         eax,dword ptr [edx+194];TCustomActionControl.FTextBounds.Top:Longint
 004C508C    add         ebx,eax
 004C508E    mov         edx,ebx
 004C5090    mov         eax,dword ptr [ebp-8]
 004C5093    sar         eax,1
>004C5095    jns         004C509A
 004C5097    adc         eax,0
 004C509A    mov         ecx,dword ptr [ebp-14]
 004C509D    sar         ecx,1
>004C509F    jns         004C50A4
 004C50A1    adc         ecx,0
 004C50A4    sub         eax,ecx
 004C50A6    lea         ecx,[ebp-1C]
 004C50A9    call        Point
 004C50AE    mov         eax,dword ptr [ebp-4]
 004C50B1    mov         edx,dword ptr [ebp-1C]
 004C50B4    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 004C50BA    mov         edx,dword ptr [ebp-18]
 004C50BD    mov         dword ptr [eax+176],edx
 004C50C3    pop         ebx
 004C50C4    mov         esp,ebp
 004C50C6    pop         ebp
 004C50C7    ret
*}
end;

//004C50C8
{*procedure TCustomActionControl.CMFontChanged(?:?);
begin
 004C50C8    push        ebp
 004C50C9    mov         ebp,esp
 004C50CB    add         esp,0FFFFFFF8
 004C50CE    mov         dword ptr [ebp-8],edx
 004C50D1    mov         dword ptr [ebp-4],eax
 004C50D4    mov         edx,dword ptr [ebp-8]
 004C50D7    mov         eax,dword ptr [ebp-4]
 004C50DA    call        TControl.CMFontChanged
 004C50DF    mov         eax,dword ptr [ebp-4]
 004C50E2    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C50E9    je          004C50F6
 004C50EB    mov         eax,dword ptr [ebp-4]
 004C50EE    mov         edx,dword ptr [eax]
 004C50F0    call        dword ptr [edx+0DC];TCustomActionControl.sub_004C6D68
 004C50F6    pop         ecx
 004C50F7    pop         ecx
 004C50F8    pop         ebp
 004C50F9    ret
end;*}

//004C50FC
procedure TCustomActionControl.sub_004854CC;
begin
{*
 004C50FC    push        ebp
 004C50FD    mov         ebp,esp
 004C50FF    push        ecx
 004C5100    mov         dword ptr [ebp-4],eax
 004C5103    mov         eax,dword ptr [ebp-4]
 004C5106    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C510D    je          004C5162
 004C510F    mov         eax,dword ptr [ebp-4]
 004C5112    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C5118    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>004C511C    je          004C5162
 004C511E    mov         eax,dword ptr [ebp-4]
 004C5121    call        004C6C1C
 004C5126    mov         edx,dword ptr [eax]
 004C5128    call        dword ptr [edx+104]
 004C512E    test        al,al
>004C5130    jne         004C513A
 004C5132    mov         eax,dword ptr [ebp-4]
 004C5135    call        004C6594
 004C513A    mov         eax,dword ptr [ebp-4]
 004C513D    call        004C6C1C
 004C5142    mov         edx,dword ptr [eax]
 004C5144    call        dword ptr [edx+104]
 004C514A    test        al,al
>004C514C    jne         004C5162
 004C514E    mov         eax,dword ptr [ebp-4]
 004C5151    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C5157    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 004C515A    mov         edx,dword ptr [ebp-4]
 004C515D    mov         ecx,dword ptr [eax]
 004C515F    call        dword ptr [ecx+18];TActionClientLink.sub_0042AF1C
 004C5162    pop         ecx
 004C5163    pop         ebp
 004C5164    ret
*}
end;

//004C5168
{*procedure TCustomActionControl.sub_00484E9C(?:?);
begin
 004C5168    push        ebp
 004C5169    mov         ebp,esp
 004C516B    add         esp,0FFFFFFF4
 004C516E    mov         dword ptr [ebp-8],edx
 004C5171    mov         dword ptr [ebp-4],eax
 004C5174    mov         byte ptr [ebp-9],0
 004C5178    mov         eax,dword ptr [ebp-8]
 004C517B    mov         eax,dword ptr [eax]
 004C517D    cmp         eax,204
>004C5182    jge         004C519A
 004C5184    sub         eax,7B
>004C5187    je          004C51B5
 004C5189    add         eax,0FFFFFE7B
 004C518E    sub         eax,3
>004C5191    jb          004C51D6
>004C5193    je          004C51E7
>004C5195    jmp         004C5223
 004C519A    add         eax,0FFFFFDFC
 004C519F    sub         eax,2
>004C51A2    jb          004C51B5
 004C51A4    add         eax,0FFFF51F3
 004C51A9    sub         eax,2
>004C51AC    jb          004C51D6
 004C51AE    sub         eax,1A
>004C51B1    je          004C51D6
>004C51B3    jmp         004C5223
 004C51B5    mov         eax,dword ptr [ebp-4]
 004C51B8    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C51BF    je          004C5223
 004C51C1    mov         eax,dword ptr [ebp-4]
 004C51C4    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C51CA    cmp         dword ptr [eax+1C],0;TActionClientItem.FContextItems:TActionClients
>004C51CE    je          004C5223
 004C51D0    mov         byte ptr [ebp-9],1
>004C51D4    jmp         004C5223
 004C51D6    mov         edx,dword ptr [ebp-8]
 004C51D9    mov         eax,dword ptr [ebp-4]
 004C51DC    mov         ecx,dword ptr [eax]
 004C51DE    call        dword ptr [ecx-14];TObject.Dispatch
 004C51E1    mov         byte ptr [ebp-9],1
>004C51E5    jmp         004C5223
 004C51E7    mov         eax,dword ptr [ebp-4]
 004C51EA    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C51F1    je          004C521F
 004C51F3    mov         eax,dword ptr [ebp-4]
 004C51F6    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C51FC    call        TActionClientItem.GetAction
 004C5201    test        eax,eax
>004C5203    je          004C521F
 004C5205    mov         eax,dword ptr [ebp-4]
 004C5208    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C520E    call        TActionClientItem.GetAction
 004C5213    mov         edx,eax
 004C5215    mov         eax,[0056CB8C];0x0 gvar_0056CB8C
 004C521A    mov         ecx,dword ptr [eax]
 004C521C    call        dword ptr [ecx+10]
 004C521F    mov         byte ptr [ebp-9],1
 004C5223    mov         al,byte ptr [ebp-9]
 004C5226    mov         esp,ebp
 004C5228    pop         ebp
 004C5229    ret
end;*}

//004C522C
{*procedure sub_004C522C(?:?);
begin
 004C522C    push        ebp
 004C522D    mov         ebp,esp
 004C522F    add         esp,0FFFFFFE8
 004C5232    push        ebx
 004C5233    mov         dword ptr [ebp-8],edx
 004C5236    mov         dword ptr [ebp-4],eax
 004C5239    mov         eax,dword ptr [ebp-4]
 004C523C    call        004C6C1C
 004C5241    test        eax,eax
>004C5243    je          004C5345
 004C5249    mov         eax,dword ptr [ebp-4]
 004C524C    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C5253    je          004C5345
 004C5259    mov         eax,dword ptr [ebp-4]
 004C525C    call        004C6C1C
 004C5261    mov         eax,dword ptr [eax+210]
 004C5267    call        004BE6B4
 004C526C    test        al,al
>004C526E    je          004C52A6
 004C5270    mov         eax,dword ptr [ebp-4]
 004C5273    call        004C6C1C
 004C5278    mov         eax,dword ptr [eax+210]
 004C527E    call        004BE6B4
 004C5283    test        al,al
>004C5285    je          004C5345
 004C528B    mov         eax,dword ptr [ebp-4]
 004C528E    call        004C6C1C
 004C5293    mov         eax,dword ptr [eax+210]
 004C5299    mov         al,byte ptr [eax+14]
 004C529C    add         al,0FD
 004C529E    sub         al,2
>004C52A0    jae         004C5345
 004C52A6    call        0046BFC0
 004C52AB    call        0046C0EC
 004C52B0    test        al,al
>004C52B2    je          004C5345
 004C52B8    mov         eax,dword ptr [ebp-4]
 004C52BB    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C52C1    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C52C4    call        TBrush.GetColor
 004C52C9    mov         ebx,eax
 004C52CB    mov         eax,dword ptr [ebp-4]
 004C52CE    call        004C6C1C
 004C52D3    call        004C4A40
 004C52D8    cmp         ebx,dword ptr [eax+40]
>004C52DB    jne         004C5345
 004C52DD    lea         edx,[ebp-18]
 004C52E0    mov         eax,dword ptr [ebp-4]
 004C52E3    call        00482ECC
 004C52E8    push        0
 004C52EA    push        0
 004C52EC    lea         eax,[ebp-18]
 004C52EF    push        eax
 004C52F0    mov         eax,dword ptr [ebp-4]
 004C52F3    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C52F9    call        0042F6A0
 004C52FE    push        eax
 004C52FF    mov         eax,dword ptr [ebp-4]
 004C5302    call        004C6C1C
 004C5307    call        TWinControl.GetHandle
 004C530C    push        eax
 004C530D    call        0046BFC0
 004C5312    pop         edx
 004C5313    pop         ecx
 004C5314    call        0046C2E8
 004C5319    mov         eax,dword ptr [ebp-4]
 004C531C    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5322    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C5325    xor         edx,edx
 004C5327    call        0042E2DC
 004C532C    mov         eax,dword ptr [ebp-4]
 004C532F    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5335    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C5338    mov         edx,dword ptr [ebp-4]
 004C533B    mov         edx,dword ptr [edx+68];TCustomActionControl.FFont:TFont
 004C533E    mov         ecx,dword ptr [eax]
 004C5340    call        dword ptr [ecx+8];TFont.sub_0042DF9C
>004C5343    jmp         004C5356
 004C5345    mov         edx,dword ptr [ebp-8]
 004C5348    mov         eax,dword ptr [ebp-4]
 004C534B    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5351    call        0042F030
 004C5356    pop         ebx
 004C5357    mov         esp,ebp
 004C5359    pop         ebp
 004C535A    ret
end;*}

//004C535C
{*procedure sub_004C535C(?:?);
begin
 004C535C    push        ebp
 004C535D    mov         ebp,esp
 004C535F    add         esp,0FFFFFFF0
 004C5362    mov         dword ptr [ebp-8],edx
 004C5365    mov         dword ptr [ebp-4],eax
 004C5368    mov         eax,dword ptr [ebp-4]
 004C536B    call        004C6A18
 004C5370    test        al,al
>004C5372    je          004C541B
 004C5378    mov         eax,dword ptr [ebp-4]
 004C537B    mov         edx,dword ptr [eax]
 004C537D    call        dword ptr [edx+3C];TCustomActionControl.sub_004C6BC4
 004C5380    test        eax,eax
>004C5382    je          004C539D
 004C5384    mov         eax,dword ptr [ebp-4]
 004C5387    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C538D    call        TActionClientItem.GetAction
 004C5392    mov         eax,dword ptr [eax+5C]
 004C5395    mov         eax,dword ptr [eax+38]
 004C5398    mov         dword ptr [ebp-0C],eax
>004C539B    jmp         004C53B6
 004C539D    mov         eax,dword ptr [ebp-4]
 004C53A0    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C53A6    call        004BE698
 004C53AB    call        004BD7EC
 004C53B0    mov         eax,dword ptr [eax+38]
 004C53B3    mov         dword ptr [ebp-0C],eax
 004C53B6    cmp         dword ptr [ebp-0C],0
>004C53BA    je          004C541B
 004C53BC    mov         eax,dword ptr [ebp-4]
 004C53BF    mov         edx,dword ptr [eax]
 004C53C1    call        dword ptr [edx+50];TImage.GetEnabled
 004C53C4    test        al,al
>004C53C6    je          004C53D7
 004C53C8    mov         eax,dword ptr [ebp-4]
 004C53CB    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C53D1    cmp         dword ptr [eax+58],0FFFFFFFF;TActionClientItem.ImageIndex:TImageIndex
>004C53D5    jne         004C53E4
 004C53D7    mov         eax,dword ptr [ebp-4]
 004C53DA    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>004C53DE    jne         004C53E4
 004C53E0    xor         eax,eax
>004C53E2    jmp         004C53E6
 004C53E4    mov         al,1
 004C53E6    mov         byte ptr [ebp-0D],al
 004C53E9    mov         eax,dword ptr [ebp-8]
 004C53EC    mov         eax,dword ptr [eax+4]
 004C53EF    push        eax
 004C53F0    mov         eax,dword ptr [ebp-4]
 004C53F3    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C53F9    mov         eax,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 004C53FC    push        eax
 004C53FD    push        3
 004C53FF    push        0
 004C5401    mov         al,byte ptr [ebp-0D]
 004C5404    push        eax
 004C5405    mov         ecx,dword ptr [ebp-8]
 004C5408    mov         ecx,dword ptr [ecx]
 004C540A    mov         eax,dword ptr [ebp-4]
 004C540D    mov         edx,dword ptr [eax+160];TCustomActionControl...............................................
 004C5413    mov         eax,dword ptr [ebp-0C]
 004C5416    call        00495998
 004C541B    mov         esp,ebp
 004C541D    pop         ebp
 004C541E    ret
end;*}

//004C5420
{*procedure sub_004C5420(?:?);
begin
 004C5420    push        ebp
 004C5421    mov         ebp,esp
 004C5423    add         esp,0FFFFFFC0
 004C5426    push        esi
 004C5427    push        edi
 004C5428    mov         esi,edx
 004C542A    lea         edi,[ebp-0C]
 004C542D    movs        dword ptr [edi],dword ptr [esi]
 004C542E    movs        dword ptr [edi],dword ptr [esi]
 004C542F    mov         dword ptr [ebp-4],eax
 004C5432    mov         eax,dword ptr [ebp-4]
 004C5435    call        004C6A18
 004C543A    test        al,al
>004C543C    je          004C577C
 004C5442    mov         eax,dword ptr [ebp-4]
 004C5445    mov         edx,dword ptr [eax]
 004C5447    call        dword ptr [edx+3C];TCustomActionControl.sub_004C6BC4
 004C544A    mov         edx,dword ptr ds:[492C28];TCustomAction
 004C5450    call        @IsClass
 004C5455    test        al,al
>004C5457    je          004C577C
 004C545D    mov         eax,dword ptr [ebp-4]
 004C5460    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C5466    call        004BE698
 004C546B    call        004BD7EC
 004C5470    mov         eax,dword ptr [eax+38]
 004C5473    mov         dword ptr [ebp-20],eax
 004C5476    lea         ecx,[ebp-1C]
 004C5479    mov         edx,20
 004C547E    mov         eax,20
 004C5483    call        Point
 004C5488    mov         dl,1
 004C548A    mov         eax,[0042CF48];TBitmap
 004C548F    call        TBitmap.Create;TBitmap.Create
 004C5494    mov         dword ptr [ebp-14],eax
 004C5497    xor         eax,eax
 004C5499    push        ebp
 004C549A    push        4C5775
 004C549F    push        dword ptr fs:[eax]
 004C54A2    mov         dword ptr fs:[eax],esp
 004C54A5    mov         dl,1
 004C54A7    mov         eax,[0042CF48];TBitmap
 004C54AC    call        TBitmap.Create;TBitmap.Create
 004C54B1    mov         dword ptr [ebp-10],eax
 004C54B4    xor         eax,eax
 004C54B6    push        ebp
 004C54B7    push        4C5758
 004C54BC    push        dword ptr fs:[eax]
 004C54BF    mov         dword ptr fs:[eax],esp
 004C54C2    mov         eax,dword ptr [ebp-20]
 004C54C5    mov         edx,dword ptr [eax+34]
 004C54C8    mov         eax,dword ptr [ebp-14]
 004C54CB    mov         ecx,dword ptr [eax]
 004C54CD    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004C54D0    mov         eax,dword ptr [ebp-20]
 004C54D3    mov         edx,dword ptr [eax+30]
 004C54D6    mov         eax,dword ptr [ebp-14]
 004C54D9    mov         ecx,dword ptr [eax]
 004C54DB    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004C54DE    mov         eax,dword ptr [ebp-14]
 004C54E1    call        0043498C
 004C54E6    mov         eax,dword ptr [eax+14]
 004C54E9    mov         edx,0FFFFFF
 004C54EE    call        TBrush.SetColor
 004C54F3    mov         eax,dword ptr [ebp-4]
 004C54F6    mov         edx,dword ptr [eax]
 004C54F8    call        dword ptr [edx+50];TImage.GetEnabled
 004C54FB    test        al,al
>004C54FD    je          004C5550
 004C54FF    mov         eax,dword ptr [ebp-14]
 004C5502    call        0043498C
 004C5507    lea         edx,[ebp-30]
 004C550A    call        0042F66C
 004C550F    lea         eax,[ebp-30]
 004C5512    push        eax
 004C5513    mov         eax,dword ptr [ebp-14]
 004C5516    mov         edx,dword ptr [eax]
 004C5518    call        dword ptr [edx+20];TBitmap.sub_00434A8C
 004C551B    push        eax
 004C551C    lea         eax,[ebp-40]
 004C551F    push        eax
 004C5520    mov         eax,dword ptr [ebp-14]
 004C5523    mov         edx,dword ptr [eax]
 004C5525    call        dword ptr [edx+2C];TBitmap.sub_00434CF0
 004C5528    mov         ecx,eax
 004C552A    xor         edx,edx
 004C552C    xor         eax,eax
 004C552E    call        0041E714
 004C5533    lea         eax,[ebp-40]
 004C5536    push        eax
 004C5537    mov         eax,dword ptr [ebp-14]
 004C553A    call        0043498C
 004C553F    mov         edx,dword ptr [ebp-4]
 004C5542    mov         ecx,dword ptr [edx+160];TCustomActionControl...............................................
 004C5548    pop         edx
 004C5549    call        0042EE78
>004C554E    jmp         004C5572
 004C5550    mov         eax,dword ptr [ebp-10]
 004C5553    call        0043498C
 004C5558    lea         edx,[ebp-30]
 004C555B    call        0042F66C
 004C5560    lea         eax,[ebp-30]
 004C5563    push        eax
 004C5564    mov         eax,dword ptr [ebp-14]
 004C5567    call        0043498C
 004C556C    pop         edx
 004C556D    call        0042F030
 004C5572    push        1
 004C5574    push        0FF
 004C5576    push        0FF
 004C5578    push        0
 004C557A    push        0
 004C557C    push        0
 004C557E    push        0
 004C5580    mov         eax,dword ptr [ebp-14]
 004C5583    call        0043498C
 004C5588    call        0042F6A0
 004C558D    push        eax
 004C558E    mov         eax,dword ptr [ebp-4]
 004C5591    mov         edx,dword ptr [eax]
 004C5593    call        dword ptr [edx+3C];TCustomActionControl.sub_004C6BC4
 004C5596    mov         eax,dword ptr [eax+80]
 004C559C    push        eax
 004C559D    mov         eax,dword ptr [ebp-20]
 004C55A0    call        00494F78
 004C55A5    push        eax
 004C55A6    call        comctl32.ImageList_DrawEx
 004C55AB    mov         edx,dword ptr [ebp-1C]
 004C55AE    mov         eax,dword ptr [ebp-10]
 004C55B1    mov         ecx,dword ptr [eax]
 004C55B3    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004C55B6    mov         edx,dword ptr [ebp-18]
 004C55B9    mov         eax,dword ptr [ebp-10]
 004C55BC    mov         ecx,dword ptr [eax]
 004C55BE    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004C55C1    mov         eax,dword ptr [ebp-18]
 004C55C4    push        eax
 004C55C5    lea         eax,[ebp-30]
 004C55C8    push        eax
 004C55C9    mov         ecx,dword ptr [ebp-1C]
 004C55CC    xor         edx,edx
 004C55CE    xor         eax,eax
 004C55D0    call        0041E714
 004C55D5    lea         eax,[ebp-30]
 004C55D8    push        eax
 004C55D9    mov         eax,dword ptr [ebp-10]
 004C55DC    call        0043498C
 004C55E1    mov         ecx,dword ptr [ebp-14]
 004C55E4    pop         edx
 004C55E5    call        0042F2BC
 004C55EA    mov         edx,0FFFFFF
 004C55EF    mov         eax,dword ptr [ebp-10]
 004C55F2    call        00435F78
 004C55F7    mov         dl,1
 004C55F9    mov         eax,dword ptr [ebp-10]
 004C55FC    mov         ecx,dword ptr [eax]
 004C55FE    call        dword ptr [ecx+3C];TBitmap.sub_0043142C
 004C5601    mov         edx,dword ptr [ebp-1C]
 004C5604    mov         eax,dword ptr [ebp-14]
 004C5607    mov         ecx,dword ptr [eax]
 004C5609    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004C560C    mov         edx,dword ptr [ebp-18]
 004C560F    mov         eax,dword ptr [ebp-14]
 004C5612    mov         ecx,dword ptr [eax]
 004C5614    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004C5617    mov         eax,dword ptr [ebp-4]
 004C561A    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5620    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C5623    call        TBrush.GetColor
 004C5628    push        eax
 004C5629    mov         eax,dword ptr [ebp-14]
 004C562C    call        0043498C
 004C5631    mov         eax,dword ptr [eax+14]
 004C5634    pop         edx
 004C5635    call        TBrush.SetColor
 004C563A    mov         eax,dword ptr [ebp-14]
 004C563D    call        0043498C
 004C5642    lea         edx,[ebp-30]
 004C5645    call        0042F66C
 004C564A    lea         eax,[ebp-30]
 004C564D    push        eax
 004C564E    mov         eax,dword ptr [ebp-14]
 004C5651    call        0043498C
 004C5656    pop         edx
 004C5657    call        0042F030
 004C565C    mov         eax,dword ptr [ebp-10]
 004C565F    push        eax
 004C5660    mov         eax,dword ptr [ebp-14]
 004C5663    call        0043498C
 004C5668    xor         ecx,ecx
 004C566A    xor         edx,edx
 004C566C    call        0042EF28
 004C5671    mov         eax,dword ptr [ebp-4]
 004C5674    mov         edx,dword ptr [eax]
 004C5676    call        dword ptr [edx+50];TImage.GetEnabled
 004C5679    test        al,al
>004C567B    jne         004C5686
 004C567D    mov         eax,dword ptr [ebp-4]
 004C5680    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>004C5684    je          004C5701
 004C5686    mov         eax,dword ptr [ebp-4]
 004C5689    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C568F    call        004BE5A0
 004C5694    call        004BE6B4
 004C5699    test        al,al
>004C569B    je          004C56CF
 004C569D    mov         eax,dword ptr [ebp-8]
 004C56A0    add         eax,dword ptr [ebp-18]
 004C56A3    push        eax
 004C56A4    lea         eax,[ebp-30]
 004C56A7    push        eax
 004C56A8    mov         ecx,dword ptr [ebp-0C]
 004C56AB    add         ecx,dword ptr [ebp-1C]
 004C56AE    mov         edx,dword ptr [ebp-8]
 004C56B1    mov         eax,dword ptr [ebp-0C]
 004C56B4    call        0041E714
 004C56B9    lea         edx,[ebp-30]
 004C56BC    mov         eax,dword ptr [ebp-4]
 004C56BF    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C56C5    mov         ecx,dword ptr [ebp-10]
 004C56C8    call        0042F2BC
>004C56CD    jmp         004C5742
 004C56CF    mov         eax,dword ptr [ebp-8]
 004C56D2    add         eax,dword ptr [ebp-18]
 004C56D5    push        eax
 004C56D6    lea         eax,[ebp-30]
 004C56D9    push        eax
 004C56DA    mov         ecx,dword ptr [ebp-0C]
 004C56DD    add         ecx,dword ptr [ebp-1C]
 004C56E0    mov         edx,dword ptr [ebp-8]
 004C56E3    mov         eax,dword ptr [ebp-0C]
 004C56E6    call        0041E714
 004C56EB    lea         edx,[ebp-30]
 004C56EE    mov         eax,dword ptr [ebp-4]
 004C56F1    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C56F7    mov         ecx,dword ptr [ebp-14]
 004C56FA    call        0042F2BC
>004C56FF    jmp         004C5742
 004C5701    push        24
 004C5703    push        0
 004C5705    push        0
 004C5707    mov         eax,dword ptr [ebp-8]
 004C570A    push        eax
 004C570B    mov         eax,dword ptr [ebp-0C]
 004C570E    push        eax
 004C570F    push        0
 004C5711    mov         eax,dword ptr [ebp-10]
 004C5714    mov         edx,dword ptr [eax]
 004C5716    call        dword ptr [edx+64];TBitmap.sub_004349FC
 004C5719    push        eax
 004C571A    push        0
 004C571C    mov         eax,dword ptr [ebp-4]
 004C571F    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5725    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C5728    call        TBrush.GetHandle
 004C572D    push        eax
 004C572E    mov         eax,dword ptr [ebp-4]
 004C5731    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5737    call        0042F6A0
 004C573C    push        eax
 004C573D    call        user32.DrawStateA
 004C5742    xor         eax,eax
 004C5744    pop         edx
 004C5745    pop         ecx
 004C5746    pop         ecx
 004C5747    mov         dword ptr fs:[eax],edx
 004C574A    push        4C575F
 004C574F    mov         eax,dword ptr [ebp-10]
 004C5752    call        TObject.Free
 004C5757    ret
>004C5758    jmp         @HandleFinally
>004C575D    jmp         004C574F
 004C575F    xor         eax,eax
 004C5761    pop         edx
 004C5762    pop         ecx
 004C5763    pop         ecx
 004C5764    mov         dword ptr fs:[eax],edx
 004C5767    push        4C577C
 004C576C    mov         eax,dword ptr [ebp-14]
 004C576F    call        TObject.Free
 004C5774    ret
>004C5775    jmp         @HandleFinally
>004C577A    jmp         004C576C
 004C577C    pop         edi
 004C577D    pop         esi
 004C577E    mov         esp,ebp
 004C5780    pop         ebp
 004C5781    ret
end;*}

//004C5784
{*procedure sub_004C5784(?:?);
begin
 004C5784    push        ebp
 004C5785    mov         ebp,esp
 004C5787    add         esp,0FFFFFFD4
 004C578A    mov         dword ptr [ebp-8],edx
 004C578D    mov         dword ptr [ebp-4],eax
 004C5790    mov         eax,dword ptr [ebp-4]
 004C5793    call        004C6C1C
 004C5798    test        eax,eax
>004C579A    je          004C59FB
 004C57A0    mov         eax,dword ptr [ebp-4]
 004C57A3    call        004C6C1C
 004C57A8    mov         al,byte ptr [eax+227]
 004C57AE    sub         al,2
>004C57B0    jae         004C57F4
 004C57B2    mov         eax,dword ptr [ebp-4]
 004C57B5    call        TControl.GetClientWidth
 004C57BA    sar         eax,1
>004C57BC    jns         004C57C1
 004C57BE    adc         eax,0
 004C57C1    lea         ecx,[ebp-10]
 004C57C4    mov         edx,dword ptr [ebp-8]
 004C57C7    dec         edx
 004C57C8    call        Point
 004C57CD    mov         eax,dword ptr [ebp-4]
 004C57D0    call        TControl.GetClientHeight
 004C57D5    sub         eax,dword ptr [ebp-8]
 004C57D8    inc         eax
 004C57D9    push        eax
 004C57DA    mov         eax,dword ptr [ebp-4]
 004C57DD    call        TControl.GetClientWidth
 004C57E2    sar         eax,1
>004C57E4    jns         004C57E9
 004C57E6    adc         eax,0
 004C57E9    lea         ecx,[ebp-18]
 004C57EC    pop         edx
 004C57ED    call        Point
>004C57F2    jmp         004C5832
 004C57F4    mov         eax,dword ptr [ebp-4]
 004C57F7    call        TControl.GetClientHeight
 004C57FC    mov         edx,eax
 004C57FE    sar         edx,1
>004C5800    jns         004C5805
 004C5802    adc         edx,0
 004C5805    lea         ecx,[ebp-10]
 004C5808    mov         eax,dword ptr [ebp-8]
 004C580B    call        Point
 004C5810    mov         eax,dword ptr [ebp-4]
 004C5813    call        TControl.GetClientHeight
 004C5818    mov         edx,eax
 004C581A    sar         edx,1
>004C581C    jns         004C5821
 004C581E    adc         edx,0
 004C5821    lea         ecx,[ebp-18]
 004C5824    mov         eax,dword ptr [ebp-4]
 004C5827    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 004C582A    sub         eax,dword ptr [ebp-8]
 004C582D    call        Point
 004C5832    mov         eax,dword ptr [ebp-4]
 004C5835    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C583B    mov         dword ptr [ebp-1C],eax
 004C583E    mov         edx,1
 004C5843    mov         eax,dword ptr [ebp-1C]
 004C5846    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C5849    call        TPen.SetWidth
 004C584E    mov         eax,dword ptr [ebp-4]
 004C5851    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>004C5858    je          004C5879
 004C585A    mov         eax,dword ptr [ebp-4]
 004C585D    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>004C5861    je          004C5879
 004C5863    lea         edx,[ebp-2C]
 004C5866    mov         eax,dword ptr [ebp-4]
 004C5869    mov         ecx,dword ptr [eax]
 004C586B    call        dword ptr [ecx+44];TCustomActionControl.sub_00482F5C
 004C586E    lea         edx,[ebp-2C]
 004C5871    mov         eax,dword ptr [ebp-1C]
 004C5874    call        0042F030
 004C5879    mov         eax,dword ptr [ebp-4]
 004C587C    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C5883    je          004C58C0
 004C5885    mov         eax,dword ptr [ebp-4]
 004C5888    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C588E    call        004C0C60
 004C5893    test        al,al
>004C5895    je          004C58C0
 004C5897    mov         eax,dword ptr [ebp-4]
 004C589A    call        004C6C1C
 004C589F    call        004C4A40
 004C58A4    mov         eax,dword ptr [eax+6C]
 004C58A7    mov         edx,0FFFFFFCE
 004C58AC    call        004AD82C
 004C58B1    mov         edx,eax
 004C58B3    mov         eax,dword ptr [ebp-1C]
 004C58B6    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C58B9    call        TPen.SetColor
>004C58BE    jmp         004C58FB
 004C58C0    mov         eax,dword ptr [ebp-4]
 004C58C3    cmp         dword ptr [eax+70],0FF00000F;TCustomActionControl.FColor:TColor
>004C58CA    jne         004C58DE
 004C58CC    mov         edx,0FF000010
 004C58D1    mov         eax,dword ptr [ebp-1C]
 004C58D4    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C58D7    call        TPen.SetColor
>004C58DC    jmp         004C58FB
 004C58DE    mov         edx,0FFFFFFCE
 004C58E3    mov         eax,dword ptr [ebp-4]
 004C58E6    mov         eax,dword ptr [eax+70];TCustomActionControl.FColor:TColor
 004C58E9    call        004AD82C
 004C58EE    mov         edx,eax
 004C58F0    mov         eax,dword ptr [ebp-1C]
 004C58F3    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C58F6    call        TPen.SetColor
 004C58FB    mov         ecx,dword ptr [ebp-0C]
 004C58FE    mov         edx,dword ptr [ebp-10]
 004C5901    mov         eax,dword ptr [ebp-1C]
 004C5904    call        0042F14C
 004C5909    mov         ecx,dword ptr [ebp-14]
 004C590C    mov         edx,dword ptr [ebp-18]
 004C590F    mov         eax,dword ptr [ebp-1C]
 004C5912    call        0042F0D0
 004C5917    mov         eax,dword ptr [ebp-4]
 004C591A    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C5921    je          004C597C
 004C5923    mov         eax,dword ptr [ebp-4]
 004C5926    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C592C    call        004C0C60
 004C5931    test        al,al
>004C5933    je          004C597C
 004C5935    mov         eax,dword ptr [ebp-4]
 004C5938    cmp         dword ptr [eax+70],0FF00000F;TCustomActionControl.FColor:TColor
>004C593F    jne         004C5953
 004C5941    mov         edx,0FF000014
 004C5946    mov         eax,dword ptr [ebp-1C]
 004C5949    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C594C    call        TPen.SetColor
>004C5951    jmp         004C59B5
 004C5953    mov         eax,dword ptr [ebp-4]
 004C5956    call        004C6C1C
 004C595B    call        004C4A40
 004C5960    mov         eax,dword ptr [eax+6C]
 004C5963    mov         edx,13
 004C5968    call        004AD754
 004C596D    mov         edx,eax
 004C596F    mov         eax,dword ptr [ebp-1C]
 004C5972    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C5975    call        TPen.SetColor
>004C597A    jmp         004C59B5
 004C597C    mov         eax,dword ptr [ebp-4]
 004C597F    cmp         dword ptr [eax+70],0FF00000F;TCustomActionControl.FColor:TColor
>004C5986    jne         004C599A
 004C5988    mov         edx,0FF000014
 004C598D    mov         eax,dword ptr [ebp-1C]
 004C5990    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C5993    call        TPen.SetColor
>004C5998    jmp         004C59B5
 004C599A    mov         eax,dword ptr [ebp-4]
 004C599D    call        004C6C1C
 004C59A2    call        004C4A40
 004C59A7    mov         edx,dword ptr [eax+6C]
 004C59AA    mov         eax,dword ptr [ebp-1C]
 004C59AD    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C59B0    call        TPen.SetColor
 004C59B5    mov         eax,dword ptr [ebp-10]
 004C59B8    cmp         eax,dword ptr [ebp-18]
>004C59BB    jne         004C59DD
 004C59BD    mov         edx,dword ptr [ebp-10]
 004C59C0    inc         edx
 004C59C1    mov         ecx,dword ptr [ebp-0C]
 004C59C4    mov         eax,dword ptr [ebp-1C]
 004C59C7    call        0042F14C
 004C59CC    mov         edx,dword ptr [ebp-10]
 004C59CF    inc         edx
 004C59D0    mov         ecx,dword ptr [ebp-14]
 004C59D3    mov         eax,dword ptr [ebp-1C]
 004C59D6    call        0042F0D0
>004C59DB    jmp         004C59FB
 004C59DD    mov         ecx,dword ptr [ebp-0C]
 004C59E0    inc         ecx
 004C59E1    mov         edx,dword ptr [ebp-10]
 004C59E4    mov         eax,dword ptr [ebp-1C]
 004C59E7    call        0042F14C
 004C59EC    mov         ecx,dword ptr [ebp-14]
 004C59EF    inc         ecx
 004C59F0    mov         edx,dword ptr [ebp-18]
 004C59F3    mov         eax,dword ptr [ebp-1C]
 004C59F6    call        0042F0D0
 004C59FB    mov         esp,ebp
 004C59FD    pop         ebp
 004C59FE    ret
end;*}

//004C5A00
{*procedure sub_004C5A00(?:TRect; ?:?; ?:?);
begin
 004C5A00    push        ebp
 004C5A01    mov         ebp,esp
 004C5A03    add         esp,0FFFFFFF4
 004C5A06    mov         dword ptr [ebp-0C],ecx
 004C5A09    mov         dword ptr [ebp-8],edx
 004C5A0C    mov         dword ptr [ebp-4],eax
 004C5A0F    mov         eax,dword ptr [ebp+8]
 004C5A12    call        @LStrAddRef
 004C5A17    xor         eax,eax
 004C5A19    push        ebp
 004C5A1A    push        4C5A6B
 004C5A1F    push        dword ptr fs:[eax]
 004C5A22    mov         dword ptr fs:[eax],esp
 004C5A25    mov         eax,dword ptr [ebp-0C]
 004C5A28    mov         eax,dword ptr [eax]
 004C5A2A    push        eax
 004C5A2B    mov         eax,dword ptr [ebp-8]
 004C5A2E    push        eax
 004C5A2F    mov         eax,dword ptr [ebp+8]
 004C5A32    call        @LStrLen
 004C5A37    push        eax
 004C5A38    mov         eax,dword ptr [ebp+8]
 004C5A3B    call        @LStrToPChar
 004C5A40    push        eax
 004C5A41    mov         eax,dword ptr [ebp-4]
 004C5A44    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5A4A    call        0042F6A0
 004C5A4F    push        eax
 004C5A50    call        user32.DrawTextA
 004C5A55    xor         eax,eax
 004C5A57    pop         edx
 004C5A58    pop         ecx
 004C5A59    pop         ecx
 004C5A5A    mov         dword ptr fs:[eax],edx
 004C5A5D    push        4C5A72
 004C5A62    lea         eax,[ebp+8]
 004C5A65    call        @LStrClr
 004C5A6A    ret
>004C5A6B    jmp         @HandleFinally
>004C5A70    jmp         004C5A62
 004C5A72    mov         esp,ebp
 004C5A74    pop         ebp
 004C5A75    ret         4
end;*}

//004C5A78
{*procedure sub_004C5A78(?:TRect; ?:?; ?:?; ?:?; ?:?);
begin
 004C5A78    push        ebp
 004C5A79    mov         ebp,esp
 004C5A7B    add         esp,0FFFFFFE8
 004C5A7E    push        esi
 004C5A7F    push        edi
 004C5A80    mov         esi,edx
 004C5A82    lea         edi,[ebp-18]
 004C5A85    movs        dword ptr [edi],dword ptr [esi]
 004C5A86    movs        dword ptr [edi],dword ptr [esi]
 004C5A87    movs        dword ptr [edi],dword ptr [esi]
 004C5A88    movs        dword ptr [edi],dword ptr [esi]
 004C5A89    mov         dword ptr [ebp-8],ecx
 004C5A8C    mov         dword ptr [ebp-4],eax
 004C5A8F    mov         eax,dword ptr [ebp+10]
 004C5A92    call        @LStrAddRef
 004C5A97    xor         eax,eax
 004C5A99    push        ebp
 004C5A9A    push        4C5B59
 004C5A9F    push        dword ptr fs:[eax]
 004C5AA2    mov         dword ptr fs:[eax],esp
 004C5AA5    push        1
 004C5AA7    push        1
 004C5AA9    lea         eax,[ebp-18]
 004C5AAC    push        eax
 004C5AAD    call        user32.OffsetRect
 004C5AB2    mov         eax,dword ptr [ebp-4]
 004C5AB5    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5ABB    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C5ABE    mov         edx,dword ptr [ebp+8]
 004C5AC1    call        TFont.SetColor
 004C5AC6    mov         eax,dword ptr [ebp-8]
 004C5AC9    push        eax
 004C5ACA    lea         eax,[ebp-18]
 004C5ACD    push        eax
 004C5ACE    mov         eax,dword ptr [ebp+10]
 004C5AD1    call        @LStrLen
 004C5AD6    push        eax
 004C5AD7    mov         eax,dword ptr [ebp+10]
 004C5ADA    call        @LStrToPChar
 004C5ADF    push        eax
 004C5AE0    mov         eax,dword ptr [ebp-4]
 004C5AE3    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5AE9    call        0042F6A0
 004C5AEE    push        eax
 004C5AEF    call        user32.DrawTextA
 004C5AF4    push        0FF
 004C5AF6    push        0FF
 004C5AF8    lea         eax,[ebp-18]
 004C5AFB    push        eax
 004C5AFC    call        user32.OffsetRect
 004C5B01    mov         eax,dword ptr [ebp-4]
 004C5B04    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5B0A    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C5B0D    mov         edx,dword ptr [ebp+0C]
 004C5B10    call        TFont.SetColor
 004C5B15    mov         eax,dword ptr [ebp-8]
 004C5B18    push        eax
 004C5B19    lea         eax,[ebp-18]
 004C5B1C    push        eax
 004C5B1D    mov         eax,dword ptr [ebp+10]
 004C5B20    call        @LStrLen
 004C5B25    push        eax
 004C5B26    mov         eax,dword ptr [ebp+10]
 004C5B29    call        @LStrToPChar
 004C5B2E    push        eax
 004C5B2F    mov         eax,dword ptr [ebp-4]
 004C5B32    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5B38    call        0042F6A0
 004C5B3D    push        eax
 004C5B3E    call        user32.DrawTextA
 004C5B43    xor         eax,eax
 004C5B45    pop         edx
 004C5B46    pop         ecx
 004C5B47    pop         ecx
 004C5B48    mov         dword ptr fs:[eax],edx
 004C5B4B    push        4C5B60
 004C5B50    lea         eax,[ebp+10]
 004C5B53    call        @LStrClr
 004C5B58    ret
>004C5B59    jmp         @HandleFinally
>004C5B5E    jmp         004C5B50
 004C5B60    pop         edi
 004C5B61    pop         esi
 004C5B62    mov         esp,ebp
 004C5B64    pop         ebp
 004C5B65    ret         0C
end;*}

//004C5B68
{*function sub_004C5B68:?;
begin
 004C5B68    push        ebp
 004C5B69    mov         ebp,esp
 004C5B6B    add         esp,0FFFFFFF8
 004C5B6E    mov         dword ptr [ebp-4],eax
 004C5B71    mov         eax,dword ptr [ebp-4]
 004C5B74    mov         edx,dword ptr [eax]
 004C5B76    call        dword ptr [edx+3C];TCustomActionControl.sub_004C6BC4
 004C5B79    mov         edx,dword ptr ds:[492C28];TCustomAction
 004C5B7F    call        @IsClass
 004C5B84    test        al,al
>004C5B86    je          004C5B96
 004C5B88    mov         eax,dword ptr [ebp-4]
 004C5B8B    mov         edx,dword ptr [eax]
 004C5B8D    call        dword ptr [edx+3C];TCustomActionControl.sub_004C6BC4
 004C5B90    cmp         dword ptr [eax+6C],0
>004C5B94    jg          004C5B9A
 004C5B96    xor         eax,eax
>004C5B98    jmp         004C5B9C
 004C5B9A    mov         al,1
 004C5B9C    mov         byte ptr [ebp-5],al
 004C5B9F    mov         al,byte ptr [ebp-5]
 004C5BA2    pop         ecx
 004C5BA3    pop         ecx
 004C5BA4    pop         ebp
 004C5BA5    ret
end;*}

//004C5BA8
procedure sub_004C5BA8;
begin
{*
 004C5BA8    push        ebp
 004C5BA9    mov         ebp,esp
 004C5BAB    add         esp,0FFFFFFD0
 004C5BAE    push        ebx
 004C5BAF    push        esi
 004C5BB0    push        edi
 004C5BB1    xor         edx,edx
 004C5BB3    mov         dword ptr [ebp-30],edx
 004C5BB6    mov         dword ptr [ebp-2C],edx
 004C5BB9    mov         dword ptr [ebp-4],eax
 004C5BBC    xor         eax,eax
 004C5BBE    push        ebp
 004C5BBF    push        4C5FCC
 004C5BC4    push        dword ptr fs:[eax]
 004C5BC7    mov         dword ptr fs:[eax],esp
 004C5BCA    lea         edx,[ebp-18]
 004C5BCD    mov         eax,dword ptr [ebp-4]
 004C5BD0    mov         ecx,dword ptr [eax]
 004C5BD2    call        dword ptr [ecx+44];TCustomActionControl.sub_00482F5C
 004C5BD5    mov         eax,dword ptr [ebp-4]
 004C5BD8    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>004C5BDC    je          004C5C01
 004C5BDE    mov         eax,dword ptr [ebp-4]
 004C5BE1    movzx       eax,byte ptr [eax+1A0];TCustomActionControl.FTransparent:Boolean
 004C5BE8    mov         dl,byte ptr [eax+56CB98]
 004C5BEE    mov         eax,dword ptr [ebp-4]
 004C5BF1    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5BF7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C5BFA    call        TBrush.SetStyle
>004C5BFF    jmp         004C5C39
 004C5C01    mov         eax,dword ptr [ebp-4]
 004C5C04    cmp         byte ptr [eax+1A0],0;TCustomActionControl.FTransparent:Boolean
>004C5C0B    je          004C5C19
 004C5C0D    mov         eax,dword ptr [ebp-4]
 004C5C10    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>004C5C17    je          004C5C1D
 004C5C19    xor         eax,eax
>004C5C1B    jmp         004C5C1F
 004C5C1D    mov         al,1
 004C5C1F    and         eax,7F
 004C5C22    mov         dl,byte ptr [eax+56CB98]
 004C5C28    mov         eax,dword ptr [ebp-4]
 004C5C2B    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5C31    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C5C34    call        TBrush.SetStyle
 004C5C39    mov         eax,dword ptr [ebp-4]
 004C5C3C    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C5C43    je          004C5C76
 004C5C45    mov         eax,dword ptr [ebp-4]
 004C5C48    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C5C4E    cmp         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
>004C5C55    je          004C5C76
 004C5C57    mov         eax,dword ptr [ebp-4]
 004C5C5A    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C5C60    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 004C5C63    mov         eax,dword ptr [ebp-4]
 004C5C66    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5C6C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C5C6F    call        TBrush.SetColor
>004C5C74    jmp         004C5C97
 004C5C76    mov         eax,dword ptr [ebp-4]
 004C5C79    call        004C6C1C
 004C5C7E    call        004C4A40
 004C5C83    mov         edx,dword ptr [eax+40]
 004C5C86    mov         eax,dword ptr [ebp-4]
 004C5C89    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5C8F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C5C92    call        TBrush.SetColor
 004C5C97    lea         edx,[ebp-18]
 004C5C9A    mov         eax,dword ptr [ebp-4]
 004C5C9D    mov         ecx,dword ptr [eax]
 004C5C9F    call        dword ptr [ecx+0AC];TCustomActionControl.sub_004C522C
 004C5CA5    mov         eax,dword ptr [ebp-4]
 004C5CA8    mov         edx,dword ptr [eax]
 004C5CAA    call        dword ptr [edx+0C8];TCustomActionControl.sub_004C6AA0
 004C5CB0    test        al,al
>004C5CB2    je          004C5CC9
 004C5CB4    mov         edx,2
 004C5CB9    mov         eax,dword ptr [ebp-4]
 004C5CBC    mov         ecx,dword ptr [eax]
 004C5CBE    call        dword ptr [ecx+0B8];TCustomActionControl.sub_004C5784
>004C5CC4    jmp         004C5EDF
 004C5CC9    mov         eax,dword ptr [ebp-4]
 004C5CCC    call        004C6C1C
 004C5CD1    call        004C2F3C
 004C5CD6    test        al,al
>004C5CD8    je          004C5D17
 004C5CDA    mov         eax,dword ptr [ebp-4]
 004C5CDD    call        004C6C1C
 004C5CE2    call        004C2EE8
 004C5CE7    cmp         byte ptr [eax+29],0
>004C5CEB    je          004C5D03
 004C5CED    mov         eax,dword ptr [ebp-4]
 004C5CF0    lea         edx,[eax+172];TCustomActionControl.FGlyphPos:TPoint
 004C5CF6    mov         eax,dword ptr [ebp-4]
 004C5CF9    mov         ecx,dword ptr [eax]
 004C5CFB    call        dword ptr [ecx+0A4];TCustomActionControl.sub_004C535C
>004C5D01    jmp         004C5D17
 004C5D03    mov         eax,dword ptr [ebp-4]
 004C5D06    lea         edx,[eax+172];TCustomActionControl.FGlyphPos:TPoint
 004C5D0C    mov         eax,dword ptr [ebp-4]
 004C5D0F    mov         ecx,dword ptr [eax]
 004C5D11    call        dword ptr [ecx+0A8];TCustomActionControl.sub_004C5420
 004C5D17    mov         eax,dword ptr [ebp-4]
 004C5D1A    mov         edx,dword ptr [eax]
 004C5D1C    call        dword ptr [edx+98];TCustomActionControl.sub_004C6AD0
 004C5D22    test        al,al
>004C5D24    jne         004C5D36
 004C5D26    mov         eax,dword ptr [ebp-4]
 004C5D29    call        004C6A18
 004C5D2E    test        al,al
>004C5D30    jne         004C5EDF
 004C5D36    xor         edx,edx
 004C5D38    mov         eax,dword ptr [ebp-4]
 004C5D3B    call        00486778
 004C5D40    or          eax,100
 004C5D45    mov         dword ptr [ebp-8],eax
 004C5D48    mov         eax,dword ptr [ebp-4]
 004C5D4B    lea         esi,[eax+190];TCustomActionControl.FTextBounds:TRect
 004C5D51    lea         edi,[ebp-28]
 004C5D54    movs        dword ptr [edi],dword ptr [esi]
 004C5D55    movs        dword ptr [edi],dword ptr [esi]
 004C5D56    movs        dword ptr [edi],dword ptr [esi]
 004C5D57    movs        dword ptr [edi],dword ptr [esi]
 004C5D58    mov         eax,dword ptr [ebp-4]
 004C5D5B    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5D61    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C5D64    mov         dl,1
 004C5D66    call        TBrush.SetStyle
 004C5D6B    mov         eax,dword ptr [ebp-4]
 004C5D6E    call        004C6C1C
 004C5D73    call        004C4A40
 004C5D78    mov         edx,dword ptr [eax+50]
 004C5D7B    mov         eax,dword ptr [ebp-4]
 004C5D7E    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5D84    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C5D87    call        TFont.SetColor
 004C5D8C    call        0046BFC0
 004C5D91    call        0046C0EC
 004C5D96    test        al,al
>004C5D98    je          004C5DB1
 004C5D9A    mov         eax,dword ptr [ebp-4]
 004C5D9D    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5DA3    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C5DA6    mov         edx,dword ptr [ebp-4]
 004C5DA9    mov         edx,dword ptr [edx+68];TCustomActionControl.FFont:TFont
 004C5DAC    mov         ecx,dword ptr [eax]
 004C5DAE    call        dword ptr [ecx+8];TFont.sub_0042DF9C
 004C5DB1    mov         eax,dword ptr [ebp-4]
 004C5DB4    call        004C6C1C
 004C5DB9    mov         edx,dword ptr [eax]
 004C5DBB    call        dword ptr [edx+104]
 004C5DC1    test        al,al
>004C5DC3    jne         004C5E43
 004C5DC5    mov         eax,dword ptr [ebp-4]
 004C5DC8    mov         edx,dword ptr [eax]
 004C5DCA    call        dword ptr [edx+50];TImage.GetEnabled
 004C5DCD    test        al,al
>004C5DCF    jne         004C5DE9
 004C5DD1    mov         eax,dword ptr [ebp-4]
 004C5DD4    mov         edx,dword ptr [eax]
 004C5DD6    call        dword ptr [edx+50];TImage.GetEnabled
 004C5DD9    test        al,al
>004C5DDB    jne         004C5E43
 004C5DDD    mov         eax,dword ptr [ebp-4]
 004C5DE0    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>004C5DE7    je          004C5E43
 004C5DE9    mov         eax,dword ptr [ebp-4]
 004C5DEC    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>004C5DF3    je          004C5E16
 004C5DF5    mov         eax,dword ptr [ebp-4]
 004C5DF8    call        004C6C1C
 004C5DFD    call        004C4A40
 004C5E02    mov         edx,dword ptr [eax+64]
 004C5E05    mov         eax,dword ptr [ebp-4]
 004C5E08    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5E0E    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C5E11    call        TFont.SetColor
 004C5E16    mov         eax,dword ptr [ebp-4]
 004C5E19    mov         edx,dword ptr [eax]
 004C5E1B    call        dword ptr [edx+50];TImage.GetEnabled
 004C5E1E    test        al,al
>004C5E20    jne         004C5E43
 004C5E22    mov         eax,dword ptr [ebp-4]
 004C5E25    call        004C6C1C
 004C5E2A    call        004C4A40
 004C5E2F    mov         edx,dword ptr [eax+48]
 004C5E32    mov         eax,dword ptr [ebp-4]
 004C5E35    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5E3B    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C5E3E    call        TFont.SetColor
 004C5E43    mov         eax,dword ptr [ebp-4]
 004C5E46    call        004C6C1C
 004C5E4B    mov         edx,dword ptr [eax]
 004C5E4D    call        dword ptr [edx+104]
 004C5E53    test        al,al
>004C5E55    jne         004C5E7B
 004C5E57    mov         eax,dword ptr [ebp-4]
 004C5E5A    mov         edx,dword ptr [eax]
 004C5E5C    call        dword ptr [edx+50];TImage.GetEnabled
 004C5E5F    test        al,al
>004C5E61    jne         004C5E7B
 004C5E63    mov         eax,dword ptr [ebp-4]
 004C5E66    mov         edx,dword ptr [eax]
 004C5E68    call        dword ptr [edx+50];TImage.GetEnabled
 004C5E6B    test        al,al
>004C5E6D    jne         004C5E9D
 004C5E6F    mov         eax,dword ptr [ebp-4]
 004C5E72    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>004C5E79    je          004C5E9D
 004C5E7B    lea         edx,[ebp-2C]
 004C5E7E    mov         eax,dword ptr [ebp-4]
 004C5E81    call        TPanel.GetCaption
 004C5E86    mov         eax,dword ptr [ebp-2C]
 004C5E89    push        eax
 004C5E8A    lea         ecx,[ebp-8]
 004C5E8D    lea         edx,[ebp-28]
 004C5E90    mov         eax,dword ptr [ebp-4]
 004C5E93    mov         ebx,dword ptr [eax]
 004C5E95    call        dword ptr [ebx+0B0];TCustomActionControl.sub_004C5A00
>004C5E9B    jmp         004C5EDF
 004C5E9D    lea         edx,[ebp-30]
 004C5EA0    mov         eax,dword ptr [ebp-4]
 004C5EA3    call        TPanel.GetCaption
 004C5EA8    mov         eax,dword ptr [ebp-30]
 004C5EAB    push        eax
 004C5EAC    mov         eax,dword ptr [ebp-4]
 004C5EAF    call        004C6C1C
 004C5EB4    call        004C4A40
 004C5EB9    mov         eax,dword ptr [eax+48]
 004C5EBC    push        eax
 004C5EBD    mov         eax,dword ptr [ebp-4]
 004C5EC0    call        004C6C1C
 004C5EC5    call        004C4A40
 004C5ECA    mov         eax,dword ptr [eax+4C]
 004C5ECD    push        eax
 004C5ECE    mov         ecx,dword ptr [ebp-8]
 004C5ED1    lea         edx,[ebp-28]
 004C5ED4    mov         eax,dword ptr [ebp-4]
 004C5ED7    mov         ebx,dword ptr [eax]
 004C5ED9    call        dword ptr [ebx+0B4];TCustomActionControl.sub_004C5A78
 004C5EDF    mov         eax,dword ptr [ebp-4]
 004C5EE2    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>004C5EE9    je          004C5F9D
 004C5EEF    mov         eax,dword ptr [ebp-4]
 004C5EF2    call        004C6C1C
 004C5EF7    test        eax,eax
>004C5EF9    je          004C5F9D
 004C5EFF    mov         eax,dword ptr [ebp-4]
 004C5F02    call        004C6C1C
 004C5F07    mov         edx,dword ptr [eax]
 004C5F09    call        dword ptr [edx+104]
 004C5F0F    test        al,al
>004C5F11    je          004C5F9D
 004C5F17    lea         edx,[ebp-18]
 004C5F1A    mov         eax,dword ptr [ebp-4]
 004C5F1D    mov         ecx,dword ptr [eax]
 004C5F1F    call        dword ptr [ecx+44];TCustomActionControl.sub_00482F5C
 004C5F22    push        1
 004C5F24    push        1
 004C5F26    lea         eax,[ebp-18]
 004C5F29    push        eax
 004C5F2A    call        user32.OffsetRect
 004C5F2F    dec         dword ptr [ebp-10]
 004C5F32    dec         dword ptr [ebp-0C]
 004C5F35    mov         eax,dword ptr [ebp-4]
 004C5F38    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5F3E    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C5F41    mov         dl,1
 004C5F43    call        TBrush.SetStyle
 004C5F48    mov         eax,dword ptr [ebp-4]
 004C5F4B    call        004C6C1C
 004C5F50    call        004C4A40
 004C5F55    mov         edx,dword ptr [eax+70]
 004C5F58    mov         eax,dword ptr [ebp-4]
 004C5F5B    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5F61    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C5F64    call        TPen.SetColor
 004C5F69    mov         eax,dword ptr [ebp-4]
 004C5F6C    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C5F72    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C5F75    mov         edx,2
 004C5F7A    call        TPen.SetWidth
 004C5F7F    mov         eax,[0056E5B4];^Mouse:TMouse
 004C5F84    mov         eax,dword ptr [eax]
 004C5F86    call        00491DE4
 004C5F8B    test        al,al
>004C5F8D    jne         004C5F9D
 004C5F8F    lea         edx,[ebp-18]
 004C5F92    mov         eax,dword ptr [ebp-4]
 004C5F95    mov         ecx,dword ptr [eax]
 004C5F97    call        dword ptr [ecx+0A0];TCustomActionControl.sub_004C6570
 004C5F9D    mov         eax,dword ptr [ebp-4]
 004C5FA0    cmp         byte ptr [eax+170],0;TCustomActionControl.FDropPoint:Boolean
>004C5FA7    je          004C5FB1
 004C5FA9    mov         eax,dword ptr [ebp-4]
 004C5FAC    call        004C6868
 004C5FB1    xor         eax,eax
 004C5FB3    pop         edx
 004C5FB4    pop         ecx
 004C5FB5    pop         ecx
 004C5FB6    mov         dword ptr fs:[eax],edx
 004C5FB9    push        4C5FD3
 004C5FBE    lea         eax,[ebp-30]
 004C5FC1    mov         edx,2
 004C5FC6    call        @LStrArrayClr
 004C5FCB    ret
>004C5FCC    jmp         @HandleFinally
>004C5FD1    jmp         004C5FBE
 004C5FD3    pop         edi
 004C5FD4    pop         esi
 004C5FD5    pop         ebx
 004C5FD6    mov         esp,ebp
 004C5FD8    pop         ebp
 004C5FD9    ret
*}
end;

//004C5FDC
procedure sub_004C5FDC;
begin
{*
 004C5FDC    push        ebp
 004C5FDD    mov         ebp,esp
 004C5FDF    push        ecx
 004C5FE0    push        esi
 004C5FE1    mov         dword ptr [ebp-4],eax
 004C5FE4    mov         eax,dword ptr [ebp-4]
 004C5FE7    mov         si,0FFD0
 004C5FEB    call        @CallDynaInst;TControl.sub_004826F8
 004C5FF0    pop         esi
 004C5FF1    pop         ecx
 004C5FF2    pop         ebp
 004C5FF3    ret
*}
end;

//004C5FF4
{*procedure sub_004C5FF4(?:TCustomActionControl; ?:?);
begin
 004C5FF4    push        ebp
 004C5FF5    mov         ebp,esp
 004C5FF7    add         esp,0FFFFFFF8
 004C5FFA    mov         byte ptr [ebp-5],dl
 004C5FFD    mov         dword ptr [ebp-4],eax
 004C6000    mov         al,byte ptr [ebp-5]
 004C6003    mov         edx,dword ptr [ebp-4]
 004C6006    cmp         al,byte ptr [edx+1A0];TCustomActionControl.FTransparent:Boolean
>004C600C    je          004C604E
 004C600E    mov         al,byte ptr [ebp-5]
 004C6011    mov         edx,dword ptr [ebp-4]
 004C6014    mov         byte ptr [edx+1A0],al;TCustomActionControl.FTransparent:Boolean
 004C601A    cmp         byte ptr [ebp-5],0
>004C601E    je          004C6035
 004C6020    mov         eax,[004C6054];0x40 gvar_004C6054
 004C6025    mov         edx,dword ptr [ebp-4]
 004C6028    not         eax
 004C602A    and         eax,dword ptr [edx+50];TCustomActionControl.FControlStyle:TControlStyle
 004C602D    mov         edx,dword ptr [ebp-4]
 004C6030    mov         dword ptr [edx+50],eax;TCustomActionControl.FControlStyle:TControlStyle
>004C6033    jmp         004C6046
 004C6035    mov         eax,[004C6054];0x40 gvar_004C6054
 004C603A    mov         edx,dword ptr [ebp-4]
 004C603D    or          eax,dword ptr [edx+50];TCustomActionControl.FControlStyle:TControlStyle
 004C6040    mov         edx,dword ptr [ebp-4]
 004C6043    mov         dword ptr [edx+50],eax;TCustomActionControl.FControlStyle:TControlStyle
 004C6046    mov         eax,dword ptr [ebp-4]
 004C6049    mov         edx,dword ptr [eax]
 004C604B    call        dword ptr [edx+7C];TCustomActionControl.sub_00483F08
 004C604E    pop         ecx
 004C604F    pop         ecx
 004C6050    pop         ebp
 004C6051    ret
end;*}

//004C6058
{*procedure sub_004C6058(?:?);
begin
 004C6058    push        ebp
 004C6059    mov         ebp,esp
 004C605B    add         esp,0FFFFFFF0
 004C605E    mov         dword ptr [ebp-8],edx
 004C6061    mov         dword ptr [ebp-4],eax
 004C6064    mov         ecx,dword ptr [ebp-8]
 004C6067    xor         edx,edx
 004C6069    xor         eax,eax
 004C606B    call        Point
 004C6070    mov         eax,dword ptr [ebp-4]
 004C6073    call        004C6A18
 004C6078    test        al,al
>004C607A    je          004C6177
 004C6080    mov         eax,dword ptr [ebp-4]
 004C6083    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6089    cmp         byte ptr [eax+61],0;TActionClientItem.ShowGlyph:Boolean
>004C608D    je          004C6177
 004C6093    mov         eax,dword ptr [ebp-4]
 004C6096    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C609C    call        004C0134
 004C60A1    cmp         byte ptr [eax+29],0
>004C60A5    je          004C6165
 004C60AB    mov         eax,dword ptr [ebp-4]
 004C60AE    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C60B4    call        TActionClientItem.GetAction
 004C60B9    test        eax,eax
>004C60BB    je          004C611D
 004C60BD    mov         eax,dword ptr [ebp-4]
 004C60C0    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C60C6    call        TActionClientItem.GetAction
 004C60CB    cmp         dword ptr [eax+5C],0
>004C60CF    je          004C6177
 004C60D5    mov         eax,dword ptr [ebp-4]
 004C60D8    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C60DE    call        TActionClientItem.GetAction
 004C60E3    mov         eax,dword ptr [eax+5C]
 004C60E6    cmp         dword ptr [eax+38],0
>004C60EA    je          004C6177
 004C60F0    mov         eax,dword ptr [ebp-4]
 004C60F3    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C60F9    call        TActionClientItem.GetAction
 004C60FE    mov         eax,dword ptr [eax+5C]
 004C6101    mov         eax,dword ptr [eax+38]
 004C6104    mov         dword ptr [ebp-0C],eax
 004C6107    mov         ecx,dword ptr [ebp-8]
 004C610A    mov         eax,dword ptr [ebp-0C]
 004C610D    mov         edx,dword ptr [eax+30]
 004C6110    mov         eax,dword ptr [ebp-0C]
 004C6113    mov         eax,dword ptr [eax+34]
 004C6116    call        Point
>004C611B    jmp         004C6177
 004C611D    mov         eax,dword ptr [ebp-4]
 004C6120    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6126    call        004BE698
 004C612B    call        004BD7EC
 004C6130    cmp         dword ptr [eax+38],0
>004C6134    je          004C6177
 004C6136    mov         eax,dword ptr [ebp-4]
 004C6139    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C613F    call        004BE698
 004C6144    call        004BD7EC
 004C6149    mov         eax,dword ptr [eax+38]
 004C614C    mov         dword ptr [ebp-10],eax
 004C614F    mov         ecx,dword ptr [ebp-8]
 004C6152    mov         eax,dword ptr [ebp-10]
 004C6155    mov         edx,dword ptr [eax+30]
 004C6158    mov         eax,dword ptr [ebp-10]
 004C615B    mov         eax,dword ptr [eax+34]
 004C615E    call        Point
>004C6163    jmp         004C6177
 004C6165    mov         ecx,dword ptr [ebp-8]
 004C6168    mov         edx,20
 004C616D    mov         eax,20
 004C6172    call        Point
 004C6177    mov         esp,ebp
 004C6179    pop         ebp
 004C617A    ret
end;*}

//004C617C
{*procedure sub_004C617C(?:?);
begin
 004C617C    push        ebp
 004C617D    mov         ebp,esp
 004C617F    add         esp,0FFFFFFF4
 004C6182    xor         ecx,ecx
 004C6184    mov         dword ptr [ebp-0C],ecx
 004C6187    mov         dword ptr [ebp-8],edx
 004C618A    mov         dword ptr [ebp-4],eax
 004C618D    xor         eax,eax
 004C618F    push        ebp
 004C6190    push        4C62A8
 004C6195    push        dword ptr fs:[eax]
 004C6198    mov         dword ptr fs:[eax],esp
 004C619B    mov         eax,dword ptr [ebp-4]
 004C619E    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C61A4    cmp         eax,dword ptr [ebp-8]
>004C61A7    je          004C6292
 004C61AD    mov         eax,dword ptr [ebp-4]
 004C61B0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C61B7    je          004C61C9
 004C61B9    xor         edx,edx
 004C61BB    mov         eax,dword ptr [ebp-4]
 004C61BE    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C61C4    call        TActionBarItem.SetActionBar
 004C61C9    mov         eax,dword ptr [ebp-8]
 004C61CC    mov         edx,dword ptr [ebp-4]
 004C61CF    mov         dword ptr [edx+16C],eax;TCustomActionControl.FActionClient:TActionClientItem
 004C61D5    mov         eax,dword ptr [ebp-4]
 004C61D8    mov         edx,dword ptr [eax]
 004C61DA    call        dword ptr [edx+3C];TCustomActionControl.sub_004C6BC4
 004C61DD    test        eax,eax
>004C61DF    je          004C61F2
 004C61E1    mov         eax,[004C62B4];0x8000 gvar_004C62B4
 004C61E6    mov         edx,dword ptr [ebp-4]
 004C61E9    or          eax,dword ptr [edx+50];TCustomActionControl.FControlStyle:TControlStyle
 004C61EC    mov         edx,dword ptr [ebp-4]
 004C61EF    mov         dword ptr [edx+50],eax;TCustomActionControl.FControlStyle:TControlStyle
 004C61F2    cmp         dword ptr [ebp-8],0
>004C61F6    je          004C6292
 004C61FC    mov         eax,dword ptr [ebp-4]
 004C61FF    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6205    mov         eax,dword ptr [eax+24];TActionClientItem.Color:TColor
 004C6208    sub         eax,1FFFFFFF
>004C620D    je          004C6214
 004C620F    dec         eax
>004C6210    je          004C622A
>004C6212    jmp         004C6236
 004C6214    mov         eax,dword ptr [ebp-4]
 004C6217    mov         byte ptr [eax+1A0],1;TCustomActionControl.FTransparent:Boolean
 004C621E    mov         dl,1
 004C6220    mov         eax,dword ptr [ebp-4]
 004C6223    call        TPanel.SetParentColor
>004C6228    jmp         004C6268
 004C622A    mov         dl,1
 004C622C    mov         eax,dword ptr [ebp-4]
 004C622F    call        TPanel.SetParentColor
>004C6234    jmp         004C6268
 004C6236    mov         eax,dword ptr [ebp-4]
 004C6239    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C623F    cmp         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
>004C6246    jne         004C6254
 004C6248    mov         dl,1
 004C624A    mov         eax,dword ptr [ebp-4]
 004C624D    call        TPanel.SetParentColor
>004C6252    jmp         004C6268
 004C6254    mov         eax,dword ptr [ebp-4]
 004C6257    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C625D    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 004C6260    mov         eax,dword ptr [ebp-4]
 004C6263    call        TPanel.SetColor
 004C6268    mov         eax,dword ptr [ebp-8]
 004C626B    mov         dl,byte ptr [eax+30]
 004C626E    mov         eax,dword ptr [ebp-4]
 004C6271    call        TImage.SetVisible
 004C6276    lea         edx,[ebp-0C]
 004C6279    mov         eax,dword ptr [ebp-4]
 004C627C    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6282    call        TActionClientItem.GetCaption
 004C6287    mov         edx,dword ptr [ebp-0C]
 004C628A    mov         eax,dword ptr [ebp-4]
 004C628D    call        TPanel.SetCaption
 004C6292    xor         eax,eax
 004C6294    pop         edx
 004C6295    pop         ecx
 004C6296    pop         ecx
 004C6297    mov         dword ptr fs:[eax],edx
 004C629A    push        4C62AF
 004C629F    lea         eax,[ebp-0C]
 004C62A2    call        @LStrClr
 004C62A7    ret
>004C62A8    jmp         @HandleFinally
>004C62AD    jmp         004C629F
 004C62AF    mov         esp,ebp
 004C62B1    pop         ebp
 004C62B2    ret
end;*}

//004C62B8
{*procedure sub_004C62B8(?:?);
begin
 004C62B8    push        ebp
 004C62B9    mov         ebp,esp
 004C62BB    add         esp,0FFFFFFF8
 004C62BE    mov         byte ptr [ebp-5],dl
 004C62C1    mov         dword ptr [ebp-4],eax
 004C62C4    mov         al,byte ptr [ebp-5]
 004C62C7    mov         edx,dword ptr [ebp-4]
 004C62CA    cmp         al,byte ptr [edx+18A];TCustomActionControl.FSelected:Boolean
>004C62D0    je          004C62F4
 004C62D2    mov         al,byte ptr [ebp-5]
 004C62D5    mov         edx,dword ptr [ebp-4]
 004C62D8    mov         byte ptr [edx+18A],al;TCustomActionControl.FSelected:Boolean
 004C62DE    cmp         byte ptr [ebp-5],0
>004C62E2    je          004C62EC
 004C62E4    mov         eax,dword ptr [ebp-4]
 004C62E7    call        004C62F8
 004C62EC    mov         eax,dword ptr [ebp-4]
 004C62EF    mov         edx,dword ptr [eax]
 004C62F1    call        dword ptr [edx+7C];TCustomActionControl.sub_00483F08
 004C62F4    pop         ecx
 004C62F5    pop         ecx
 004C62F6    pop         ebp
 004C62F7    ret
end;*}

//004C62F8
procedure sub_004C62F8(?:TCustomActionControl);
begin
{*
 004C62F8    push        ebp
 004C62F9    mov         ebp,esp
 004C62FB    add         esp,0FFFFFFEC
 004C62FE    mov         dword ptr [ebp-4],eax
 004C6301    mov         eax,dword ptr [ebp-4]
 004C6304    cmp         dword ptr [eax+30],0;TCustomActionControl.FParent:TWinControl
>004C6308    je          004C632F
 004C630A    mov         dword ptr [ebp-14],0B402
 004C6311    xor         eax,eax
 004C6313    mov         dword ptr [ebp-10],eax
 004C6316    mov         eax,dword ptr [ebp-4]
 004C6319    mov         dword ptr [ebp-0C],eax
 004C631C    xor         eax,eax
 004C631E    mov         dword ptr [ebp-8],eax
 004C6321    lea         edx,[ebp-14]
 004C6324    mov         eax,dword ptr [ebp-4]
 004C6327    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 004C632A    call        00487E84
 004C632F    mov         esp,ebp
 004C6331    pop         ebp
 004C6332    ret
*}
end;

//004C6334
{*procedure TCustomActionControl.sub_004C6334(?:?);
begin
 004C6334    push        ebp
 004C6335    mov         ebp,esp
 004C6337    add         esp,0FFFFFFF8
 004C633A    mov         dword ptr [ebp-8],edx
 004C633D    mov         dword ptr [ebp-4],eax
 004C6340    mov         eax,dword ptr [ebp-8]
 004C6343    mov         eax,dword ptr [eax+8]
 004C6346    cmp         eax,dword ptr [ebp-4]
 004C6349    sete        dl
 004C634C    mov         eax,dword ptr [ebp-4]
 004C634F    mov         ecx,dword ptr [eax]
 004C6351    call        dword ptr [ecx+0D8];TCustomActionControl.sub_004C62B8
 004C6357    mov         eax,dword ptr [ebp-4]
 004C635A    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>004C6361    je          004C6390
 004C6363    mov         eax,dword ptr [ebp-4]
 004C6366    call        004C6C1C
 004C636B    cmp         byte ptr [eax+224],0
>004C6372    je          004C6390
 004C6374    cmp         dword ptr ds:[56CB8C],0;gvar_0056CB8C
>004C637B    je          004C6390
 004C637D    mov         eax,dword ptr [ebp-4]
 004C6380    mov         edx,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6386    mov         eax,[0056CB8C];0x0 gvar_0056CB8C
 004C638B    mov         ecx,dword ptr [eax]
 004C638D    call        dword ptr [ecx+20]
 004C6390    pop         ecx
 004C6391    pop         ecx
 004C6392    pop         ebp
 004C6393    ret
end;*}

//004C6394
{*procedure sub_004C6394(?:TCustomMenuItem; ?:?);
begin
 004C6394    push        ebp
 004C6395    mov         ebp,esp
 004C6397    add         esp,0FFFFFFEC
 004C639A    push        esi
 004C639B    push        edi
 004C639C    mov         esi,edx
 004C639E    lea         edi,[ebp-14]
 004C63A1    movs        dword ptr [edi],dword ptr [esi]
 004C63A2    movs        dword ptr [edi],dword ptr [esi]
 004C63A3    movs        dword ptr [edi],dword ptr [esi]
 004C63A4    movs        dword ptr [edi],dword ptr [esi]
 004C63A5    mov         dword ptr [ebp-4],eax
 004C63A8    mov         eax,dword ptr [ebp-14]
 004C63AB    mov         edx,dword ptr [ebp-4]
 004C63AE    cmp         eax,dword ptr [edx+17A];TCustomMenuItem.FMargins:TRect
>004C63B4    jne         004C63E0
 004C63B6    mov         eax,dword ptr [ebp-10]
 004C63B9    mov         edx,dword ptr [ebp-4]
 004C63BC    cmp         eax,dword ptr [edx+186]
>004C63C2    jne         004C63E0
 004C63C4    mov         eax,dword ptr [ebp-0C]
 004C63C7    mov         edx,dword ptr [ebp-4]
 004C63CA    cmp         eax,dword ptr [edx+182];TCustomMenuItem.FMargins.Right:Longint
>004C63D0    jne         004C63E0
 004C63D2    mov         eax,dword ptr [ebp-8]
 004C63D5    mov         edx,dword ptr [ebp-4]
 004C63D8    cmp         eax,dword ptr [edx+186]
>004C63DE    je          004C63FB
 004C63E0    mov         eax,dword ptr [ebp-4]
 004C63E3    lea         esi,[ebp-14]
 004C63E6    lea         edi,[eax+17A];TCustomMenuItem.FMargins:TRect
 004C63EC    movs        dword ptr [edi],dword ptr [esi]
 004C63ED    movs        dword ptr [edi],dword ptr [esi]
 004C63EE    movs        dword ptr [edi],dword ptr [esi]
 004C63EF    movs        dword ptr [edi],dword ptr [esi]
 004C63F0    mov         eax,dword ptr [ebp-4]
 004C63F3    mov         edx,dword ptr [eax]
 004C63F5    call        dword ptr [edx+0DC];TCustomMenuItem.sub_004B9168
 004C63FB    pop         edi
 004C63FC    pop         esi
 004C63FD    mov         esp,ebp
 004C63FF    pop         ebp
 004C6400    ret
end;*}

//004C6404
{*procedure sub_004C6404(?:TCustomActionControl; ?:?);
begin
 004C6404    push        ebp
 004C6405    mov         ebp,esp
 004C6407    add         esp,0FFFFFFF8
 004C640A    mov         dword ptr [ebp-8],edx
 004C640D    mov         dword ptr [ebp-4],eax
 004C6410    mov         eax,dword ptr [ebp-8]
 004C6413    mov         edx,dword ptr [ebp-4]
 004C6416    cmp         eax,dword ptr [edx+18C];TCustomActionControl.FSpacing:Integer
>004C641C    je          004C6452
 004C641E    mov         eax,dword ptr [ebp-8]
 004C6421    mov         edx,dword ptr [ebp-4]
 004C6424    mov         dword ptr [edx+18C],eax;TCustomActionControl.FSpacing:Integer
 004C642A    mov         eax,dword ptr [ebp-4]
 004C642D    call        004C6C1C
 004C6432    test        eax,eax
>004C6434    je          004C6452
 004C6436    mov         eax,dword ptr [ebp-4]
 004C6439    call        004C6C1C
 004C643E    call        00486D08
 004C6443    test        al,al
>004C6445    je          004C6452
 004C6447    mov         eax,dword ptr [ebp-4]
 004C644A    mov         edx,dword ptr [eax]
 004C644C    call        dword ptr [edx+0DC];TCustomActionControl.sub_004C6D68
 004C6452    pop         ecx
 004C6453    pop         ecx
 004C6454    pop         ebp
 004C6455    ret
end;*}

//004C6458
{*procedure sub_004C6458(?:?);
begin
 004C6458    push        ebp
 004C6459    mov         ebp,esp
 004C645B    add         esp,0FFFFFFE0
 004C645E    push        esi
 004C645F    mov         byte ptr [ebp-5],dl
 004C6462    mov         dword ptr [ebp-4],eax
 004C6465    mov         eax,dword ptr [ebp-4]
 004C6468    mov         al,byte ptr [eax+171];TCustomActionControl.FGlyphLayout:TButtonLayout
 004C646E    cmp         al,byte ptr [ebp-5]
>004C6471    je          004C64C2
 004C6473    mov         eax,dword ptr [ebp-4]
 004C6476    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 004C6479    push        eax
 004C647A    lea         eax,[ebp-1D]
 004C647D    push        eax
 004C647E    mov         eax,dword ptr [ebp-4]
 004C6481    mov         ecx,dword ptr [eax+48];TCustomActionControl.Width:Integer
 004C6484    xor         edx,edx
 004C6486    xor         eax,eax
 004C6488    call        0041E714
 004C648D    xor         eax,eax
 004C648F    mov         dword ptr [ebp-0D],eax
 004C6492    xor         eax,eax
 004C6494    mov         dword ptr [ebp-9],eax
 004C6497    mov         al,byte ptr [ebp-5]
 004C649A    mov         edx,dword ptr [ebp-4]
 004C649D    mov         byte ptr [edx+171],al;TCustomActionControl.FGlyphLayout:TButtonLayout
 004C64A3    mov         eax,dword ptr [ebp-4]
 004C64A6    mov         edx,dword ptr [eax]
 004C64A8    call        dword ptr [edx+0DC];TCustomActionControl.sub_004C6D68
 004C64AE    mov         eax,dword ptr [ebp-4]
 004C64B1    mov         si,0FFD0
 004C64B5    call        @CallDynaInst;TControl.sub_004826F8
 004C64BA    mov         eax,dword ptr [ebp-4]
 004C64BD    mov         edx,dword ptr [eax]
 004C64BF    call        dword ptr [edx+7C];TCustomActionControl.sub_00483F08
 004C64C2    pop         esi
 004C64C3    mov         esp,ebp
 004C64C5    pop         ebp
 004C64C6    ret
end;*}

//004C64C8
procedure sub_004C64C8;
begin
{*
 004C64C8    push        ebp
 004C64C9    mov         ebp,esp
 004C64CB    push        ecx
 004C64CC    mov         dword ptr [ebp-4],eax
 004C64CF    mov         eax,dword ptr [ebp-4]
 004C64D2    call        004C6594
 004C64D7    mov         eax,dword ptr [ebp-4]
 004C64DA    cmp         dword ptr [eax+30],0;TCustomActionControl.FParent:TWinControl
>004C64DE    je          004C64FC
 004C64E0    mov         eax,dword ptr [ebp-4]
 004C64E3    push        eax
 004C64E4    push        0
 004C64E6    push        0B404
 004C64EB    mov         eax,dword ptr [ebp-4]
 004C64EE    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 004C64F1    call        TWinControl.GetHandle
 004C64F6    push        eax
 004C64F7    call        user32.PostMessageA
 004C64FC    pop         ecx
 004C64FD    pop         ebp
 004C64FE    ret
*}
end;

//004C6500
{*procedure TCustomActionControl.CMDesignHitTest(?:?);
begin
 004C6500    push        ebp
 004C6501    mov         ebp,esp
 004C6503    add         esp,0FFFFFFF8
 004C6506    mov         dword ptr [ebp-8],edx
 004C6509    mov         dword ptr [ebp-4],eax
 004C650C    mov         eax,dword ptr [ebp-8]
 004C650F    mov         dword ptr [eax+0C],1
 004C6516    pop         ecx
 004C6517    pop         ecx
 004C6518    pop         ebp
 004C6519    ret
end;*}

//004C651C
{*procedure TCustomActionControl.CMHintShow(?:?);
begin
 004C651C    push        ebp
 004C651D    mov         ebp,esp
 004C651F    add         esp,0FFFFFFF8
 004C6522    mov         dword ptr [ebp-8],edx
 004C6525    mov         dword ptr [ebp-4],eax
 004C6528    mov         eax,dword ptr [ebp-4]
 004C652B    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6532    je          004C656B
 004C6534    mov         eax,dword ptr [ebp-4]
 004C6537    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C653D    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>004C6541    je          004C656B
 004C6543    mov         eax,dword ptr [ebp-8]
 004C6546    mov         eax,dword ptr [eax+8]
 004C6549    lea         edx,[eax+38]
 004C654C    mov         eax,dword ptr [ebp-4]
 004C654F    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6555    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 004C6558    mov         ecx,dword ptr [eax]
 004C655A    call        dword ptr [ecx+78];TActionClientLink.sub_004BF714
 004C655D    test        al,al
>004C655F    jne         004C656B
 004C6561    mov         eax,dword ptr [ebp-8]
 004C6564    mov         dword ptr [eax+0C],1
 004C656B    pop         ecx
 004C656C    pop         ecx
 004C656D    pop         ebp
 004C656E    ret
end;*}

//004C6570
{*procedure sub_004C6570(?:?);
begin
 004C6570    push        ebp
 004C6571    mov         ebp,esp
 004C6573    add         esp,0FFFFFFF8
 004C6576    mov         dword ptr [ebp-8],edx
 004C6579    mov         dword ptr [ebp-4],eax
 004C657C    mov         edx,dword ptr [ebp-8]
 004C657F    mov         eax,dword ptr [ebp-4]
 004C6582    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C6588    call        0042F274
 004C658D    pop         ecx
 004C658E    pop         ecx
 004C658F    pop         ebp
 004C6590    ret
end;*}

//004C6594
procedure sub_004C6594(?:TCustomActionControl);
begin
{*
 004C6594    push        ebp
 004C6595    mov         ebp,esp
 004C6597    push        ecx
 004C6598    mov         dword ptr [ebp-4],eax
 004C659B    mov         eax,dword ptr [ebp-4]
 004C659E    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>004C65A2    jne         004C6608
 004C65A4    mov         eax,dword ptr [ebp-4]
 004C65A7    call        004C6C1C
 004C65AC    test        eax,eax
>004C65AE    je          004C65C4
 004C65B0    mov         eax,dword ptr [ebp-4]
 004C65B3    call        004C6C1C
 004C65B8    mov         edx,dword ptr [eax]
 004C65BA    call        dword ptr [edx+104]
 004C65C0    test        al,al
>004C65C2    jne         004C6608
 004C65C4    mov         eax,dword ptr [ebp-4]
 004C65C7    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C65CE    je          004C6608
 004C65D0    mov         eax,dword ptr [ebp-4]
 004C65D3    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C65D9    call        004BE56C
 004C65DE    test        al,al
>004C65E0    jne         004C6608
 004C65E2    mov         eax,dword ptr [ebp-4]
 004C65E5    mov         edx,dword ptr [eax]
 004C65E7    call        dword ptr [edx+50];TImage.GetEnabled
 004C65EA    test        al,al
>004C65EC    je          004C6608
 004C65EE    mov         eax,dword ptr [ebp-4]
 004C65F1    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C65F8    je          004C6608
 004C65FA    mov         eax,dword ptr [ebp-4]
 004C65FD    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6603    call        004C045C
 004C6608    pop         ecx
 004C6609    pop         ebp
 004C660A    ret
*}
end;

//004C660C
{*procedure TCustomActionControl.sub_00484338(?:?; ?:?; ?:?);
begin
 004C660C    push        ebp
 004C660D    mov         ebp,esp
 004C660F    add         esp,0FFFFFFF4
 004C6612    push        ebx
 004C6613    mov         dword ptr [ebp-0C],ecx
 004C6616    mov         dword ptr [ebp-8],edx
 004C6619    mov         dword ptr [ebp-4],eax
 004C661C    mov         eax,dword ptr [ebp+8]
 004C661F    push        eax
 004C6620    mov         ecx,dword ptr [ebp-0C]
 004C6623    mov         edx,dword ptr [ebp-8]
 004C6626    mov         eax,dword ptr [ebp-4]
 004C6629    call        TControl.sub_00484338
 004C662E    mov         eax,dword ptr [ebp+8]
 004C6631    push        eax
 004C6632    mov         ecx,dword ptr [ebp-0C]
 004C6635    mov         edx,dword ptr [ebp-8]
 004C6638    mov         eax,dword ptr [ebp-4]
 004C663B    mov         ebx,dword ptr [eax]
 004C663D    call        dword ptr [ebx+94];TCustomActionControl.sub_004C6ED8
 004C6643    pop         ebx
 004C6644    mov         esp,ebp
 004C6646    pop         ebp
 004C6647    ret         4
end;*}

//004C664C
{*procedure TCustomActionControl.sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004C664C    push        ebp
 004C664D    mov         ebp,esp
 004C664F    add         esp,0FFFFFFEC
 004C6652    mov         dword ptr [ebp-0C],ecx
 004C6655    mov         dword ptr [ebp-8],edx
 004C6658    mov         dword ptr [ebp-4],eax
 004C665B    mov         eax,dword ptr [ebp+10]
 004C665E    push        eax
 004C665F    mov         al,byte ptr [ebp+0C]
 004C6662    push        eax
 004C6663    mov         eax,dword ptr [ebp+8]
 004C6666    push        eax
 004C6667    mov         ecx,dword ptr [ebp-0C]
 004C666A    mov         edx,dword ptr [ebp-8]
 004C666D    mov         eax,dword ptr [ebp-4]
 004C6670    call        TControl.sub_004842E0
 004C6675    mov         eax,dword ptr [ebp-4]
 004C6678    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C667F    je          004C66C8
 004C6681    mov         eax,dword ptr [ebp-4]
 004C6684    call        004C6C1C
 004C6689    cmp         byte ptr [eax+224],0
>004C6690    je          004C66C8
 004C6692    mov         eax,dword ptr [ebp-8]
 004C6695    mov         edx,dword ptr ds:[4BB520];TActionDragObject
 004C669B    call        @IsClass
 004C66A0    test        al,al
>004C66A2    jne         004C66CC
 004C66A4    mov         eax,dword ptr [ebp-8]
 004C66A7    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004C66AD    call        @IsClass
 004C66B2    test        al,al
>004C66B4    jne         004C66CC
 004C66B6    mov         eax,dword ptr [ebp-8]
 004C66B9    mov         edx,dword ptr ds:[4BB5A4];TCategoryDragObject
 004C66BF    call        @IsClass
 004C66C4    test        al,al
>004C66C6    jne         004C66CC
 004C66C8    xor         eax,eax
>004C66CA    jmp         004C66CE
 004C66CC    mov         al,1
 004C66CE    mov         edx,dword ptr [ebp+8]
 004C66D1    mov         byte ptr [edx],al
 004C66D3    mov         eax,dword ptr [ebp+8]
 004C66D6    cmp         byte ptr [eax],0
>004C66D9    je          004C6743
 004C66DB    mov         eax,dword ptr [ebp-8]
 004C66DE    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004C66E4    call        @IsClass
 004C66E9    test        al,al
>004C66EB    je          004C6743
 004C66ED    mov         eax,dword ptr [ebp-8]
 004C66F0    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004C66F6    call        @AsClass
 004C66FB    mov         dword ptr [ebp-14],eax
 004C66FE    mov         eax,dword ptr [ebp-14]
 004C6701    cmp         dword ptr [eax+40],0;TActionItemDragObject............................FClientItem:TActio...
 004C6705    setne       al
 004C6708    xor         al,1
 004C670A    mov         edx,dword ptr [ebp+8]
 004C670D    mov         byte ptr [edx],al
 004C670F    mov         eax,dword ptr [ebp+8]
 004C6712    cmp         byte ptr [eax],0
>004C6715    jne         004C6743
 004C6717    mov         eax,dword ptr [ebp-14]
 004C671A    mov         eax,dword ptr [eax+40];TActionItemDragObject.............................FClientItem:TAc...
 004C671D    mov         edx,dword ptr [ebp-4]
 004C6720    cmp         eax,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
>004C6726    je          004C6743
 004C6728    mov         eax,dword ptr [ebp-14]
 004C672B    mov         edx,dword ptr [eax+40];TActionItemDragObject..............................FClientItem:TA...
 004C672E    mov         eax,dword ptr [ebp-4]
 004C6731    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6737    call        004BE7C0
 004C673C    xor         al,1
 004C673E    mov         edx,dword ptr [ebp+8]
 004C6741    mov         byte ptr [edx],al
 004C6743    mov         eax,dword ptr [ebp+8]
 004C6746    cmp         byte ptr [eax],0
>004C6749    je          004C6860
 004C674F    mov         al,byte ptr [ebp+0C]
 004C6752    test        al,al
>004C6754    je          004C675E
 004C6756    sub         al,2
>004C6758    jne         004C6860
 004C675E    xor         eax,eax
 004C6760    mov         dword ptr [ebp-10],eax
 004C6763    mov         eax,dword ptr [ebp-4]
 004C6766    call        004C6C1C
 004C676B    mov         al,byte ptr [eax+227]
 004C6771    sub         al,1
>004C6773    jb          004C6788
>004C6775    je          004C67BC
 004C6777    dec         al
>004C6779    je          004C67E9
 004C677B    dec         al
>004C677D    je          004C6816
>004C6783    jmp         004C6841
 004C6788    mov         eax,dword ptr [ebp-4]
 004C678B    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 004C678E    sar         eax,1
>004C6790    jns         004C6795
 004C6792    adc         eax,0
 004C6795    cmp         eax,dword ptr [ebp-0C]
>004C6798    jge         004C6841
 004C679E    mov         eax,dword ptr [ebp-4]
 004C67A1    call        004C6C1C
 004C67A6    mov         edx,dword ptr [ebp-4]
 004C67A9    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C67AF    call        004C2C20
 004C67B4    mov         dword ptr [ebp-10],eax
>004C67B7    jmp         004C6841
 004C67BC    mov         eax,dword ptr [ebp-4]
 004C67BF    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 004C67C2    sar         eax,1
>004C67C4    jns         004C67C9
 004C67C6    adc         eax,0
 004C67C9    cmp         eax,dword ptr [ebp-0C]
>004C67CC    jle         004C6841
 004C67CE    mov         eax,dword ptr [ebp-4]
 004C67D1    call        004C6C1C
 004C67D6    mov         edx,dword ptr [ebp-4]
 004C67D9    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C67DF    call        004C38CC
 004C67E4    mov         dword ptr [ebp-10],eax
>004C67E7    jmp         004C6841
 004C67E9    mov         eax,dword ptr [ebp-4]
 004C67EC    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 004C67EF    sar         eax,1
>004C67F1    jns         004C67F6
 004C67F3    adc         eax,0
 004C67F6    cmp         eax,dword ptr [ebp+10]
>004C67F9    jge         004C6841
 004C67FB    mov         eax,dword ptr [ebp-4]
 004C67FE    call        004C6C1C
 004C6803    mov         edx,dword ptr [ebp-4]
 004C6806    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C680C    call        004C2C20
 004C6811    mov         dword ptr [ebp-10],eax
>004C6814    jmp         004C6841
 004C6816    mov         eax,dword ptr [ebp-4]
 004C6819    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 004C681C    sar         eax,1
>004C681E    jns         004C6823
 004C6820    adc         eax,0
 004C6823    cmp         eax,dword ptr [ebp+10]
>004C6826    jle         004C6841
 004C6828    mov         eax,dword ptr [ebp-4]
 004C682B    call        004C6C1C
 004C6830    mov         edx,dword ptr [ebp-4]
 004C6833    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6839    call        004C38CC
 004C683E    mov         dword ptr [ebp-10],eax
 004C6841    cmp         dword ptr [ebp-10],0
>004C6845    jne         004C6853
 004C6847    mov         eax,dword ptr [ebp-4]
 004C684A    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6850    mov         dword ptr [ebp-10],eax
 004C6853    mov         eax,dword ptr [ebp-10]
 004C6856    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 004C6859    mov         dl,1
 004C685B    call        004C727C
 004C6860    mov         esp,ebp
 004C6862    pop         ebp
 004C6863    ret         0C
end;*}

//004C6868
procedure sub_004C6868(?:TCustomActionControl);
begin
{*
 004C6868    push        ebp
 004C6869    mov         ebp,esp
 004C686B    push        ecx
 004C686C    mov         dword ptr [ebp-4],eax
 004C686F    mov         eax,dword ptr [ebp-4]
 004C6872    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C6878    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C687B    xor         edx,edx
 004C687D    call        TBrush.SetStyle
 004C6882    mov         eax,dword ptr [ebp-4]
 004C6885    call        004C6C1C
 004C688A    call        004C4A40
 004C688F    mov         edx,dword ptr [eax+70]
 004C6892    mov         eax,dword ptr [ebp-4]
 004C6895    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C689B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004C689E    call        TPen.SetColor
 004C68A3    mov         eax,dword ptr [ebp-4]
 004C68A6    call        004C6C1C
 004C68AB    mov         al,byte ptr [eax+227]
 004C68B1    sub         al,2
>004C68B3    jb          004C68C2
 004C68B5    sub         al,2
>004C68B7    jb          004C6943
>004C68BD    jmp         004C69BA
 004C68C2    push        5A0049
 004C68C7    push        2
 004C68C9    push        6
 004C68CB    push        0
 004C68CD    push        0
 004C68CF    mov         eax,dword ptr [ebp-4]
 004C68D2    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C68D8    call        0042F6A0
 004C68DD    push        eax
 004C68DE    call        gdi32.PatBlt
 004C68E3    push        5A0049
 004C68E8    mov         eax,dword ptr [ebp-4]
 004C68EB    call        TControl.GetClientHeight
 004C68F0    sub         eax,4
 004C68F3    push        eax
 004C68F4    push        2
 004C68F6    push        2
 004C68F8    push        2
 004C68FA    mov         eax,dword ptr [ebp-4]
 004C68FD    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C6903    call        0042F6A0
 004C6908    push        eax
 004C6909    call        gdi32.PatBlt
 004C690E    push        5A0049
 004C6913    mov         eax,dword ptr [ebp-4]
 004C6916    call        TControl.GetClientHeight
 004C691B    push        eax
 004C691C    push        6
 004C691E    mov         eax,dword ptr [ebp-4]
 004C6921    call        TControl.GetClientHeight
 004C6926    sub         eax,2
 004C6929    push        eax
 004C692A    push        0
 004C692C    mov         eax,dword ptr [ebp-4]
 004C692F    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C6935    call        0042F6A0
 004C693A    push        eax
 004C693B    call        gdi32.PatBlt
 004C6940    pop         ecx
 004C6941    pop         ebp
 004C6942    ret
 004C6943    push        5A0049
 004C6948    push        6
 004C694A    push        2
 004C694C    push        0
 004C694E    push        0
 004C6950    mov         eax,dword ptr [ebp-4]
 004C6953    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C6959    call        0042F6A0
 004C695E    push        eax
 004C695F    call        gdi32.PatBlt
 004C6964    push        5A0049
 004C6969    push        2
 004C696B    mov         eax,dword ptr [ebp-4]
 004C696E    call        TControl.GetClientWidth
 004C6973    sub         eax,6
 004C6976    push        eax
 004C6977    push        2
 004C6979    push        2
 004C697B    mov         eax,dword ptr [ebp-4]
 004C697E    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C6984    call        0042F6A0
 004C6989    push        eax
 004C698A    call        gdi32.PatBlt
 004C698F    push        5A0049
 004C6994    push        6
 004C6996    push        2
 004C6998    push        0
 004C699A    mov         eax,dword ptr [ebp-4]
 004C699D    call        TControl.GetClientWidth
 004C69A2    sub         eax,4
 004C69A5    push        eax
 004C69A6    mov         eax,dword ptr [ebp-4]
 004C69A9    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C69AF    call        0042F6A0
 004C69B4    push        eax
 004C69B5    call        gdi32.PatBlt
 004C69BA    pop         ecx
 004C69BB    pop         ebp
 004C69BC    ret
*}
end;

//004C69C0
{*procedure TCustomActionControl.sub_0048437C(?:?);
begin
 004C69C0    push        ebp
 004C69C1    mov         ebp,esp
 004C69C3    add         esp,0FFFFFFF8
 004C69C6    mov         dword ptr [ebp-8],edx
 004C69C9    mov         dword ptr [ebp-4],eax
 004C69CC    mov         dl,1
 004C69CE    mov         eax,[004BB63C];TActionItemDragObject
 004C69D3    call        TObject.Create;TActionItemDragObject.Create
 004C69D8    mov         edx,dword ptr [ebp-8]
 004C69DB    mov         dword ptr [edx],eax
 004C69DD    mov         eax,dword ptr [ebp-8]
 004C69E0    mov         eax,dword ptr [eax]
 004C69E2    mov         edx,dword ptr [ebp-4]
 004C69E5    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C69EB    mov         dword ptr [eax+40],edx
 004C69EE    mov         eax,dword ptr [ebp-4]
 004C69F1    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C69F7    call        004C0134
 004C69FC    call        004BD7EC
 004C6A01    mov         edx,dword ptr [ebp-8]
 004C6A04    mov         edx,dword ptr [edx]
 004C6A06    mov         dword ptr [edx+38],eax
 004C6A09    mov         edx,dword ptr [ebp-8]
 004C6A0C    mov         eax,dword ptr [ebp-4]
 004C6A0F    call        TControl.sub_0048437C
 004C6A14    pop         ecx
 004C6A15    pop         ecx
 004C6A16    pop         ebp
 004C6A17    ret
end;*}

//004C6A18
{*function sub_004C6A18(?:TCustomActionControl):?;
begin
 004C6A18    push        ebp
 004C6A19    mov         ebp,esp
 004C6A1B    add         esp,0FFFFFFF8
 004C6A1E    mov         dword ptr [ebp-4],eax
 004C6A21    mov         byte ptr [ebp-5],0
 004C6A25    mov         eax,dword ptr [ebp-4]
 004C6A28    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6A2F    je          004C6A5B
 004C6A31    mov         eax,dword ptr [ebp-4]
 004C6A34    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6A3A    call        004C0320
 004C6A3F    test        al,al
>004C6A41    je          004C6A52
 004C6A43    mov         eax,dword ptr [ebp-4]
 004C6A46    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6A4C    cmp         byte ptr [eax+61],0;TActionClientItem.ShowGlyph:Boolean
>004C6A50    jne         004C6A56
 004C6A52    xor         eax,eax
>004C6A54    jmp         004C6A58
 004C6A56    mov         al,1
 004C6A58    mov         byte ptr [ebp-5],al
 004C6A5B    mov         al,byte ptr [ebp-5]
 004C6A5E    pop         ecx
 004C6A5F    pop         ecx
 004C6A60    pop         ebp
 004C6A61    ret
end;*}

//004C6A64
{*procedure TCustomActionControl.WMSetText(?:?);
begin
 004C6A64    push        ebp
 004C6A65    mov         ebp,esp
 004C6A67    add         esp,0FFFFFFF8
 004C6A6A    push        esi
 004C6A6B    mov         dword ptr [ebp-8],edx
 004C6A6E    mov         dword ptr [ebp-4],eax
 004C6A71    mov         edx,dword ptr [ebp-8]
 004C6A74    mov         eax,dword ptr [ebp-4]
 004C6A77    mov         ecx,dword ptr [eax]
 004C6A79    call        dword ptr [ecx-10];TControl.DefaultHandler
 004C6A7C    mov         eax,dword ptr [ebp-4]
 004C6A7F    cmp         dword ptr [eax+168],0;TCustomActionControl.FActionBar:TCustomActionBar
>004C6A86    je          004C6A9A
 004C6A88    mov         eax,dword ptr [ebp-4]
 004C6A8B    mov         eax,dword ptr [eax+168];TCustomActionControl.FActionBar:TCustomActionBar
 004C6A91    mov         si,0FFCF
 004C6A95    call        @CallDynaInst;TControl.sub_0048271C
 004C6A9A    pop         esi
 004C6A9B    pop         ecx
 004C6A9C    pop         ecx
 004C6A9D    pop         ebp
 004C6A9E    ret
end;*}

//004C6AA0
{*function sub_004C6AA0:?;
begin
 004C6AA0    push        ebp
 004C6AA1    mov         ebp,esp
 004C6AA3    add         esp,0FFFFFFF8
 004C6AA6    mov         dword ptr [ebp-4],eax
 004C6AA9    mov         byte ptr [ebp-5],0
 004C6AAD    mov         eax,dword ptr [ebp-4]
 004C6AB0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6AB7    je          004C6AC8
 004C6AB9    mov         eax,dword ptr [ebp-4]
 004C6ABC    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6AC2    mov         al,byte ptr [eax+50];TActionClientItem.FSeparator:Boolean
 004C6AC5    mov         byte ptr [ebp-5],al
 004C6AC8    mov         al,byte ptr [ebp-5]
 004C6ACB    pop         ecx
 004C6ACC    pop         ecx
 004C6ACD    pop         ebp
 004C6ACE    ret
end;*}

//004C6AD0
{*function sub_004C6AD0:?;
begin
 004C6AD0    push        ebp
 004C6AD1    mov         ebp,esp
 004C6AD3    add         esp,0FFFFFFF8
 004C6AD6    mov         dword ptr [ebp-4],eax
 004C6AD9    mov         byte ptr [ebp-5],1
 004C6ADD    mov         eax,dword ptr [ebp-4]
 004C6AE0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6AE7    je          004C6B21
 004C6AE9    mov         eax,dword ptr [ebp-4]
 004C6AEC    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6AF2    call        004C0134
 004C6AF7    mov         al,byte ptr [eax+28]
 004C6AFA    sub         al,1
>004C6AFC    jb          004C6B06
>004C6AFE    je          004C6B0C
 004C6B00    dec         al
>004C6B02    je          004C6B1D
>004C6B04    jmp         004C6B21
 004C6B06    mov         byte ptr [ebp-5],0
>004C6B0A    jmp         004C6B21
 004C6B0C    mov         eax,dword ptr [ebp-4]
 004C6B0F    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6B15    mov         al,byte ptr [eax+51];TActionClientItem.ShowCaption:Boolean
 004C6B18    mov         byte ptr [ebp-5],al
>004C6B1B    jmp         004C6B21
 004C6B1D    mov         byte ptr [ebp-5],1
 004C6B21    mov         al,byte ptr [ebp-5]
 004C6B24    pop         ecx
 004C6B25    pop         ecx
 004C6B26    pop         ebp
 004C6B27    ret
end;*}

//004C6B28
{*function sub_004C6B28:?;
begin
 004C6B28    push        ebp
 004C6B29    mov         ebp,esp
 004C6B2B    add         esp,0FFFFFFF8
 004C6B2E    mov         dword ptr [ebp-4],eax
 004C6B31    mov         byte ptr [ebp-5],0
 004C6B35    mov         eax,dword ptr [ebp-4]
 004C6B38    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6B3F    je          004C6B69
 004C6B41    mov         eax,dword ptr [ebp-4]
 004C6B44    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6B4A    cmp         byte ptr [eax+52],0;TActionClientItem.ShowShortCut:Boolean
>004C6B4E    je          004C6B60
 004C6B50    mov         eax,dword ptr [ebp-4]
 004C6B53    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6B59    cmp         word ptr [eax+48],0;TActionClientItem.ShortCut:TShortCut
>004C6B5E    jne         004C6B64
 004C6B60    xor         eax,eax
>004C6B62    jmp         004C6B66
 004C6B64    mov         al,1
 004C6B66    mov         byte ptr [ebp-5],al
 004C6B69    mov         al,byte ptr [ebp-5]
 004C6B6C    pop         ecx
 004C6B6D    pop         ecx
 004C6B6E    pop         ebp
 004C6B6F    ret
end;*}

//004C6B70
{*function sub_004C6B70:?;
begin
 004C6B70    push        ebp
 004C6B71    mov         ebp,esp
 004C6B73    add         esp,0FFFFFFF8
 004C6B76    mov         dword ptr [ebp-4],eax
 004C6B79    mov         byte ptr [ebp-5],0
 004C6B7D    mov         eax,dword ptr [ebp-4]
 004C6B80    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6B87    je          004C6BBA
 004C6B89    mov         eax,dword ptr [ebp-4]
 004C6B8C    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6B92    call        TActionClientItem.GetAction
 004C6B97    mov         edx,dword ptr ds:[492C28];TCustomAction
 004C6B9D    call        @IsClass
 004C6BA2    test        al,al
>004C6BA4    je          004C6BBA
 004C6BA6    mov         eax,dword ptr [ebp-4]
 004C6BA9    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6BAF    call        TActionClientItem.GetAction
 004C6BB4    mov         al,byte ptr [eax+69]
 004C6BB7    mov         byte ptr [ebp-5],al
 004C6BBA    mov         al,byte ptr [ebp-5]
 004C6BBD    pop         ecx
 004C6BBE    pop         ecx
 004C6BBF    pop         ebp
 004C6BC0    ret
end;*}

//004C6BC4
{*function sub_004C6BC4:?;
begin
 004C6BC4    push        ebp
 004C6BC5    mov         ebp,esp
 004C6BC7    add         esp,0FFFFFFF8
 004C6BCA    mov         dword ptr [ebp-4],eax
 004C6BCD    mov         eax,dword ptr [ebp-4]
 004C6BD0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6BD7    je          004C6BEC
 004C6BD9    mov         eax,dword ptr [ebp-4]
 004C6BDC    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6BE2    call        TActionClientItem.GetAction
 004C6BE7    mov         dword ptr [ebp-8],eax
>004C6BEA    jmp         004C6BF1
 004C6BEC    xor         eax,eax
 004C6BEE    mov         dword ptr [ebp-8],eax
 004C6BF1    mov         eax,dword ptr [ebp-8]
 004C6BF4    pop         ecx
 004C6BF5    pop         ecx
 004C6BF6    pop         ebp
 004C6BF7    ret
end;*}

//004C6BF8
procedure sub_004C6BF8;
begin
{*
 004C6BF8    push        ebp
 004C6BF9    mov         ebp,esp
 004C6BFB    push        ecx
 004C6BFC    mov         dword ptr [ebp-4],eax
 004C6BFF    mov         eax,dword ptr [ebp-4]
 004C6C02    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6C09    je          004C6C19
 004C6C0B    mov         eax,dword ptr [ebp-4]
 004C6C0E    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6C14    mov         edx,dword ptr [eax]
 004C6C16    call        dword ptr [edx+34];TActionClientItem.sub_004C0388
 004C6C19    pop         ecx
 004C6C1A    pop         ebp
 004C6C1B    ret
*}
end;

//004C6C1C
{*function sub_004C6C1C(?:TCustomActionControl):?;
begin
 004C6C1C    push        ebp
 004C6C1D    mov         ebp,esp
 004C6C1F    add         esp,0FFFFFFF8
 004C6C22    mov         dword ptr [ebp-4],eax
 004C6C25    mov         eax,dword ptr [ebp-4]
 004C6C28    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 004C6C2B    mov         edx,dword ptr ds:[4BB79C];TCustomActionBar
 004C6C31    call        @AsClass
 004C6C36    mov         dword ptr [ebp-8],eax
 004C6C39    mov         eax,dword ptr [ebp-8]
 004C6C3C    pop         ecx
 004C6C3D    pop         ecx
 004C6C3E    pop         ebp
 004C6C3F    ret
end;*}

//004C6C40
{*procedure TCustomActionControl.CMTextChanged(?:?);
begin
 004C6C40    push        ebp
 004C6C41    mov         ebp,esp
 004C6C43    add         esp,0FFFFFFF8
 004C6C46    mov         dword ptr [ebp-8],edx
 004C6C49    mov         dword ptr [ebp-4],eax
 004C6C4C    mov         edx,dword ptr [ebp-8]
 004C6C4F    mov         eax,dword ptr [ebp-4]
 004C6C52    mov         ecx,dword ptr [eax]
 004C6C54    call        dword ptr [ecx-10];TControl.DefaultHandler
 004C6C57    mov         eax,dword ptr [ebp-4]
 004C6C5A    call        004C6C1C
 004C6C5F    test        eax,eax
>004C6C61    je          004C6C6E
 004C6C63    mov         eax,dword ptr [ebp-4]
 004C6C66    mov         edx,dword ptr [eax]
 004C6C68    call        dword ptr [edx+0DC];TCustomActionControl.sub_004C6D68
 004C6C6E    pop         ecx
 004C6C6F    pop         ecx
 004C6C70    pop         ebp
 004C6C71    ret
end;*}

//004C6C74
procedure sub_004C6C74(?:TCustomActionControl);
begin
{*
 004C6C74    push        ebp
 004C6C75    mov         ebp,esp
 004C6C77    add         esp,0FFFFFFE4
 004C6C7A    push        esi
 004C6C7B    push        edi
 004C6C7C    xor         edx,edx
 004C6C7E    mov         dword ptr [ebp-1C],edx
 004C6C81    mov         dword ptr [ebp-18],edx
 004C6C84    mov         dword ptr [ebp-4],eax
 004C6C87    xor         eax,eax
 004C6C89    push        ebp
 004C6C8A    push        4C6D58
 004C6C8F    push        dword ptr fs:[eax]
 004C6C92    mov         dword ptr fs:[eax],esp
 004C6C95    push        0
 004C6C97    lea         eax,[ebp-14]
 004C6C9A    push        eax
 004C6C9B    xor         ecx,ecx
 004C6C9D    xor         edx,edx
 004C6C9F    xor         eax,eax
 004C6CA1    call        0041E714
 004C6CA6    mov         eax,dword ptr [ebp-4]
 004C6CA9    lea         esi,[ebp-14]
 004C6CAC    lea         edi,[eax+190];TCustomActionControl.FTextBounds:TRect
 004C6CB2    movs        dword ptr [edi],dword ptr [esi]
 004C6CB3    movs        dword ptr [edi],dword ptr [esi]
 004C6CB4    movs        dword ptr [edi],dword ptr [esi]
 004C6CB5    movs        dword ptr [edi],dword ptr [esi]
 004C6CB6    mov         eax,dword ptr [ebp-4]
 004C6CB9    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6CC0    je          004C6D02
 004C6CC2    push        400
 004C6CC7    mov         eax,dword ptr [ebp-4]
 004C6CCA    add         eax,190;TCustomActionControl.FTextBounds:TRect
 004C6CCF    push        eax
 004C6CD0    push        0FF
 004C6CD2    lea         edx,[ebp-18]
 004C6CD5    mov         eax,dword ptr [ebp-4]
 004C6CD8    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6CDE    call        TActionClientItem.GetCaption
 004C6CE3    mov         eax,dword ptr [ebp-18]
 004C6CE6    call        @LStrToPChar
 004C6CEB    push        eax
 004C6CEC    mov         eax,dword ptr [ebp-4]
 004C6CEF    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C6CF5    call        0042F6A0
 004C6CFA    push        eax
 004C6CFB    call        user32.DrawTextA
>004C6D00    jmp         004C6D3A
 004C6D02    push        400
 004C6D07    mov         eax,dword ptr [ebp-4]
 004C6D0A    add         eax,190;TCustomActionControl.FTextBounds:TRect
 004C6D0F    push        eax
 004C6D10    push        0FF
 004C6D12    lea         edx,[ebp-1C]
 004C6D15    mov         eax,dword ptr [ebp-4]
 004C6D18    call        TPanel.GetCaption
 004C6D1D    mov         eax,dword ptr [ebp-1C]
 004C6D20    call        @LStrToPChar
 004C6D25    push        eax
 004C6D26    mov         eax,dword ptr [ebp-4]
 004C6D29    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C6D2F    call        0042F6A0
 004C6D34    push        eax
 004C6D35    call        user32.DrawTextA
 004C6D3A    xor         eax,eax
 004C6D3C    pop         edx
 004C6D3D    pop         ecx
 004C6D3E    pop         ecx
 004C6D3F    mov         dword ptr fs:[eax],edx
 004C6D42    push        4C6D5F
 004C6D47    lea         eax,[ebp-1C]
 004C6D4A    call        @LStrClr
 004C6D4F    lea         eax,[ebp-18]
 004C6D52    call        @LStrClr
 004C6D57    ret
>004C6D58    jmp         @HandleFinally
>004C6D5D    jmp         004C6D47
 004C6D5F    pop         edi
 004C6D60    pop         esi
 004C6D61    mov         esp,ebp
 004C6D63    pop         ebp
 004C6D64    ret
*}
end;

//004C6D68
procedure sub_004C6D68;
begin
{*
 004C6D68    push        ebp
 004C6D69    mov         ebp,esp
 004C6D6B    add         esp,0FFFFFFEC
 004C6D6E    push        ebx
 004C6D6F    push        esi
 004C6D70    mov         dword ptr [ebp-4],eax
 004C6D73    mov         eax,dword ptr [ebp-4]
 004C6D76    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6D7D    je          004C6ED1
 004C6D83    lea         edx,[ebp-14]
 004C6D86    mov         eax,dword ptr [ebp-4]
 004C6D89    mov         ecx,dword ptr [eax]
 004C6D8B    call        dword ptr [ecx+0BC];TCustomActionControl.sub_004C6058
 004C6D91    mov         eax,dword ptr [ebp-4]
 004C6D94    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 004C6D9A    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C6D9D    mov         edx,dword ptr [ebp-4]
 004C6DA0    mov         edx,dword ptr [edx+68];TCustomActionControl.FFont:TFont
 004C6DA3    mov         ecx,dword ptr [eax]
 004C6DA5    call        dword ptr [ecx+8];TFont.sub_0042DF9C
 004C6DA8    mov         eax,dword ptr [ebp-4]
 004C6DAB    call        004C6C74
 004C6DB0    mov         eax,dword ptr [ebp-4]
 004C6DB3    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 004C6DB6    mov         dword ptr [ebp-8],eax
 004C6DB9    mov         eax,dword ptr [ebp-4]
 004C6DBC    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 004C6DBF    mov         dword ptr [ebp-0C],eax
 004C6DC2    mov         eax,dword ptr [ebp-4]
 004C6DC5    mov         al,byte ptr [eax+171];TCustomActionControl.FGlyphLayout:TButtonLayout
 004C6DCB    sub         al,2
>004C6DCD    jb          004C6DD8
 004C6DCF    sub         al,2
>004C6DD1    jb          004C6E32
>004C6DD3    jmp         004C6E85
 004C6DD8    lea         edx,[ebp-14]
 004C6DDB    mov         eax,dword ptr [ebp-4]
 004C6DDE    call        004C4D8C
 004C6DE3    mov         ebx,eax
 004C6DE5    mov         eax,dword ptr [ebp-4]
 004C6DE8    mov         eax,dword ptr [eax+17A];TCustomActionControl.FMargins:TRect
 004C6DEE    add         eax,dword ptr [ebp-14]
 004C6DF1    add         ebx,eax
 004C6DF3    mov         eax,dword ptr [ebp-4]
 004C6DF6    call        004C4CBC
 004C6DFB    add         ebx,eax
 004C6DFD    mov         eax,dword ptr [ebp-4]
 004C6E00    add         ebx,dword ptr [eax+182];TCustomActionControl.FMargins.Right:Longint
 004C6E06    mov         dword ptr [ebp-8],ebx
 004C6E09    mov         eax,dword ptr [ebp-4]
 004C6E0C    call        004C4D24
 004C6E11    mov         edx,eax
 004C6E13    mov         eax,dword ptr [ebp-10]
 004C6E16    call        00437470
 004C6E1B    mov         edx,dword ptr [ebp-4]
 004C6E1E    add         eax,dword ptr [edx+17E];TCustomActionControl.FMargins.Top:Longint
 004C6E24    mov         edx,dword ptr [ebp-4]
 004C6E27    add         eax,dword ptr [edx+186]
 004C6E2D    mov         dword ptr [ebp-0C],eax
>004C6E30    jmp         004C6E85
 004C6E32    mov         eax,dword ptr [ebp-4]
 004C6E35    call        004C4CBC
 004C6E3A    mov         edx,dword ptr [ebp-4]
 004C6E3D    mov         edx,dword ptr [edx+17A];TCustomActionControl.FMargins:TRect
 004C6E43    add         edx,dword ptr [ebp-14]
 004C6E46    add         eax,edx
 004C6E48    mov         edx,dword ptr [ebp-4]
 004C6E4B    add         eax,dword ptr [edx+182];TCustomActionControl.FMargins.Right:Longint
 004C6E51    mov         dword ptr [ebp-8],eax
 004C6E54    lea         edx,[ebp-14]
 004C6E57    mov         eax,dword ptr [ebp-4]
 004C6E5A    call        004C4D8C
 004C6E5F    mov         ebx,eax
 004C6E61    mov         eax,dword ptr [ebp-4]
 004C6E64    mov         eax,dword ptr [eax+17E];TCustomActionControl.FMargins.Top:Longint
 004C6E6A    add         eax,dword ptr [ebp-10]
 004C6E6D    add         ebx,eax
 004C6E6F    mov         eax,dword ptr [ebp-4]
 004C6E72    call        004C4D24
 004C6E77    add         ebx,eax
 004C6E79    mov         eax,dword ptr [ebp-4]
 004C6E7C    add         ebx,dword ptr [eax+186]
 004C6E82    mov         dword ptr [ebp-0C],ebx
 004C6E85    mov         eax,dword ptr [ebp-8]
 004C6E88    mov         edx,dword ptr [ebp-4]
 004C6E8B    cmp         eax,dword ptr [edx+48];TCustomActionControl.Width:Integer
>004C6E8E    jne         004C6E9B
 004C6E90    mov         eax,dword ptr [ebp-0C]
 004C6E93    mov         edx,dword ptr [ebp-4]
 004C6E96    cmp         eax,dword ptr [edx+4C];TCustomActionControl.Height:Integer
>004C6E99    je          004C6ED1
 004C6E9B    mov         eax,dword ptr [ebp-8]
 004C6E9E    push        eax
 004C6E9F    mov         eax,dword ptr [ebp-0C]
 004C6EA2    push        eax
 004C6EA3    mov         eax,dword ptr [ebp-4]
 004C6EA6    mov         ecx,dword ptr [eax+44];TCustomActionControl.Top:Integer
 004C6EA9    mov         eax,dword ptr [ebp-4]
 004C6EAC    mov         edx,dword ptr [eax+40];TCustomActionControl.Left:Integer
 004C6EAF    mov         eax,dword ptr [ebp-4]
 004C6EB2    mov         ebx,dword ptr [eax]
 004C6EB4    call        dword ptr [ebx+84];TCustomActionControl.sub_00482930
 004C6EBA    mov         eax,dword ptr [ebp-4]
 004C6EBD    mov         edx,dword ptr [eax]
 004C6EBF    call        dword ptr [edx+90];TCustomActionControl.sub_004C4DCC
 004C6EC5    mov         eax,dword ptr [ebp-4]
 004C6EC8    mov         si,0FFD0
 004C6ECC    call        @CallDynaInst;TControl.sub_004826F8
 004C6ED1    pop         esi
 004C6ED2    pop         ebx
 004C6ED3    mov         esp,ebp
 004C6ED5    pop         ebp
 004C6ED6    ret
*}
end;

//004C6ED8
{*procedure sub_004C6ED8(?:?; ?:?);
begin
 004C6ED8    push        ebp
 004C6ED9    mov         ebp,esp
 004C6EDB    add         esp,0FFFFFFCC
 004C6EDE    push        ebx
 004C6EDF    mov         dword ptr [ebp-24],ecx
 004C6EE2    mov         dword ptr [ebp-8],edx
 004C6EE5    mov         dword ptr [ebp-4],eax
 004C6EE8    xor         eax,eax
 004C6EEA    mov         dword ptr [ebp-0C],eax
 004C6EED    mov         eax,dword ptr [ebp-4]
 004C6EF0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C6EF7    je          004C6F6A
 004C6EF9    mov         eax,dword ptr [ebp-4]
 004C6EFC    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6F02    call        004C0134
 004C6F07    call        0042158C
 004C6F0C    dec         eax
 004C6F0D    test        eax,eax
>004C6F0F    jl          004C6F6A
 004C6F11    inc         eax
 004C6F12    mov         dword ptr [ebp-18],eax
 004C6F15    mov         dword ptr [ebp-10],0
 004C6F1C    mov         eax,dword ptr [ebp-4]
 004C6F1F    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6F25    call        004C0134
 004C6F2A    mov         edx,dword ptr [ebp-10]
 004C6F2D    call        004BF258
 004C6F32    cmp         dword ptr [eax+40],0
>004C6F36    je          004C6F62
 004C6F38    mov         eax,dword ptr [ebp-4]
 004C6F3B    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C6F41    call        004C0134
 004C6F46    mov         edx,dword ptr [ebp-10]
 004C6F49    call        004BF258
 004C6F4E    mov         eax,dword ptr [eax+40]
 004C6F51    cmp         byte ptr [eax+170],0
>004C6F58    je          004C6F62
 004C6F5A    mov         eax,dword ptr [ebp-10]
 004C6F5D    mov         dword ptr [ebp-0C],eax
>004C6F60    jmp         004C6F6A
 004C6F62    inc         dword ptr [ebp-10]
 004C6F65    dec         dword ptr [ebp-18]
>004C6F68    jne         004C6F1C
 004C6F6A    mov         eax,dword ptr [ebp-8]
 004C6F6D    mov         edx,dword ptr ds:[4BB520];TActionDragObject
 004C6F73    call        @IsClass
 004C6F78    test        al,al
>004C6F7A    je          004C7066
 004C6F80    mov         eax,dword ptr [ebp-4]
 004C6F83    call        004C6C1C
 004C6F88    call        TWinControl.DisableAlign
 004C6F8D    mov         eax,dword ptr [ebp-4]
 004C6F90    call        004C6C1C
 004C6F95    call        004C2EE8
 004C6F9A    mov         edx,dword ptr [eax]
 004C6F9C    call        dword ptr [edx+20]
 004C6F9F    xor         eax,eax
 004C6FA1    push        ebp
 004C6FA2    push        4C705F
 004C6FA7    push        dword ptr fs:[eax]
 004C6FAA    mov         dword ptr fs:[eax],esp
 004C6FAD    mov         eax,dword ptr [ebp-8]
 004C6FB0    mov         edx,dword ptr ds:[4BB520];TActionDragObject
 004C6FB6    call        @AsClass
 004C6FBB    mov         dword ptr [ebp-1C],eax
 004C6FBE    mov         eax,dword ptr [ebp-1C]
 004C6FC1    call        004C0EC8
 004C6FC6    dec         eax
 004C6FC7    test        eax,eax
>004C6FC9    jl          004C7032
 004C6FCB    inc         eax
 004C6FCC    mov         dword ptr [ebp-18],eax
 004C6FCF    mov         dword ptr [ebp-10],0
 004C6FD6    mov         eax,dword ptr [ebp-4]
 004C6FD9    call        004C6C1C
 004C6FDE    call        004C2EE8
 004C6FE3    mov         edx,dword ptr [ebp-0C]
 004C6FE6    call        004217D8
 004C6FEB    mov         dword ptr [ebp-14],eax
 004C6FEE    mov         eax,dword ptr [ebp-4]
 004C6FF1    call        004C6C1C
 004C6FF6    mov         eax,dword ptr [eax+214]
 004C6FFC    mov         eax,dword ptr [eax+6C]
 004C6FFF    mov         edx,dword ptr [eax+28]
 004C7002    mov         eax,dword ptr [ebp-14]
 004C7005    call        TActionClientItem.SetLastSession
 004C700A    mov         edx,dword ptr [ebp-10]
 004C700D    mov         eax,dword ptr [ebp-1C]
 004C7010    call        004C0E7C
 004C7015    mov         edx,eax
 004C7017    mov         eax,dword ptr [ebp-14]
 004C701A    call        TActionClientItem.SetAction
 004C701F    mov         edx,dword ptr [ebp-0C]
 004C7022    mov         eax,dword ptr [ebp-14]
 004C7025    mov         ecx,dword ptr [eax]
 004C7027    call        dword ptr [ecx+14]
 004C702A    inc         dword ptr [ebp-10]
 004C702D    dec         dword ptr [ebp-18]
>004C7030    jne         004C6FD6
 004C7032    xor         eax,eax
 004C7034    pop         edx
 004C7035    pop         ecx
 004C7036    pop         ecx
 004C7037    mov         dword ptr fs:[eax],edx
 004C703A    push        4C714A
 004C703F    mov         eax,dword ptr [ebp-4]
 004C7042    call        004C6C1C
 004C7047    call        004C2EE8
 004C704C    mov         edx,dword ptr [eax]
 004C704E    call        dword ptr [edx+24]
 004C7051    mov         eax,dword ptr [ebp-4]
 004C7054    call        004C6C1C
 004C7059    call        TWinControl.EnableAlign
 004C705E    ret
>004C705F    jmp         @HandleFinally
>004C7064    jmp         004C703F
 004C7066    mov         eax,dword ptr [ebp-8]
 004C7069    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004C706F    call        @IsClass
 004C7074    test        al,al
>004C7076    je          004C714A
 004C707C    mov         eax,dword ptr [ebp-8]
 004C707F    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004C7085    call        @AsClass
 004C708A    mov         dword ptr [ebp-20],eax
 004C708D    mov         eax,dword ptr [ebp-4]
 004C7090    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C7096    call        004C0134
 004C709B    mov         edx,dword ptr [ebp-20]
 004C709E    mov         edx,dword ptr [edx+40];TActionItemDragObject...............................FClientItem:T...
 004C70A1    cmp         eax,dword ptr [edx+4];TActionClientItem.FCollection:TCollection
>004C70A4    je          004C70F0
 004C70A6    mov         eax,dword ptr [ebp-4]
 004C70A9    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C70AF    call        004C0134
 004C70B4    mov         edx,eax
 004C70B6    mov         eax,dword ptr [ebp-20]
 004C70B9    mov         eax,dword ptr [eax+40];TActionItemDragObject................................FClientItem:...
 004C70BC    mov         ecx,dword ptr [eax]
 004C70BE    call        dword ptr [ecx+10];TActionClientItem.sub_004C0C14
 004C70C1    mov         eax,dword ptr [ebp-20]
 004C70C4    mov         eax,dword ptr [eax+40];TActionItemDragObject.................................FClientItem...
 004C70C7    mov         edx,dword ptr [ebp-0C]
 004C70CA    mov         ecx,dword ptr [eax]
 004C70CC    call        dword ptr [ecx+14];TActionClientItem.sub_004C07F4
 004C70CF    mov         eax,dword ptr [ebp-4]
 004C70D2    call        004C6C1C
 004C70D7    mov         eax,dword ptr [eax+214]
 004C70DD    mov         eax,dword ptr [eax+6C]
 004C70E0    mov         edx,dword ptr [eax+28]
 004C70E3    mov         eax,dword ptr [ebp-20]
 004C70E6    mov         eax,dword ptr [eax+40];TActionItemDragObject..................................FClientIte...
 004C70E9    call        TActionClientItem.SetLastSession
>004C70EE    jmp         004C714A
 004C70F0    mov         eax,dword ptr [ebp-20]
 004C70F3    mov         eax,dword ptr [eax+40];TActionItemDragObject...................................FClientIt...
 004C70F6    call        TCollectionItem.GetIndex
 004C70FB    mov         ebx,eax
 004C70FD    mov         eax,dword ptr [ebp-4]
 004C7100    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C7106    call        TCollectionItem.GetIndex
 004C710B    cmp         ebx,eax
>004C710D    jge         004C7112
 004C710F    dec         dword ptr [ebp-0C]
 004C7112    mov         eax,dword ptr [ebp-20]
 004C7115    mov         eax,dword ptr [eax+40];TActionItemDragObject....................................FClientI...
 004C7118    mov         edx,dword ptr [ebp-0C]
 004C711B    mov         ecx,dword ptr [eax]
 004C711D    call        dword ptr [ecx+14];TActionClientItem.sub_004C07F4
 004C7120    mov         eax,dword ptr [ebp-4]
 004C7123    call        004C6C1C
 004C7128    cmp         byte ptr [eax+224],0
>004C712F    je          004C714A
 004C7131    cmp         dword ptr ds:[56CB8C],0;gvar_0056CB8C
>004C7138    je          004C714A
 004C713A    mov         eax,dword ptr [ebp-20]
 004C713D    mov         edx,dword ptr [eax+40];TActionItemDragObject.....................................FClient...
 004C7140    mov         eax,[0056CB8C];0x0 gvar_0056CB8C
 004C7145    mov         ecx,dword ptr [eax]
 004C7147    call        dword ptr [ecx+20]
 004C714A    mov         eax,dword ptr [ebp-4]
 004C714D    call        004C6C1C
 004C7152    call        004BBF24
 004C7157    mov         dword ptr [ebp-34],0B411
 004C715E    xor         eax,eax
 004C7160    mov         dword ptr [ebp-30],eax
 004C7163    xor         eax,eax
 004C7165    mov         dword ptr [ebp-2C],eax
 004C7168    xor         eax,eax
 004C716A    mov         dword ptr [ebp-28],eax
 004C716D    lea         edx,[ebp-34]
 004C7170    mov         eax,dword ptr [ebp-4]
 004C7173    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 004C7176    call        00487E84
 004C717B    pop         ebx
 004C717C    mov         esp,ebp
 004C717E    pop         ebp
 004C717F    ret         4
end;*}

//004C7184
{*procedure sub_004C7184(?:?; ?:?);
begin
 004C7184    push        ebp
 004C7185    mov         ebp,esp
 004C7187    add         esp,0FFFFFFF8
 004C718A    push        esi
 004C718B    mov         byte ptr [ebp-5],dl
 004C718E    mov         dword ptr [ebp-4],eax
 004C7191    mov         eax,dword ptr [ebp-4]
 004C7194    mov         al,byte ptr [eax+18B]
 004C719A    cmp         al,byte ptr [ebp-5]
>004C719D    je          004C71C2
 004C719F    mov         al,byte ptr [ebp-5]
 004C71A2    mov         edx,dword ptr [ebp-4]
 004C71A5    mov         byte ptr [edx+18B],al
 004C71AB    mov         eax,dword ptr [ebp-4]
 004C71AE    mov         edx,dword ptr [eax]
 004C71B0    call        dword ptr [edx+0DC]
 004C71B6    mov         eax,dword ptr [ebp-4]
 004C71B9    mov         si,0FFD0
 004C71BD    call        @CallDynaInst
 004C71C2    pop         esi
 004C71C3    pop         ecx
 004C71C4    pop         ecx
 004C71C5    pop         ebp
 004C71C6    ret
end;*}

//004C71C8
{*procedure TCustomActionControl.WMContextMenu(?:?);
begin
 004C71C8    push        ebp
 004C71C9    mov         ebp,esp
 004C71CB    add         esp,0FFFFFFF4
 004C71CE    mov         dword ptr [ebp-8],edx
 004C71D1    mov         dword ptr [ebp-4],eax
 004C71D4    mov         edx,dword ptr [ebp-8]
 004C71D7    mov         eax,dword ptr [ebp-4]
 004C71DA    call        TControl.WMContextMenu
 004C71DF    mov         eax,dword ptr [ebp-4]
 004C71E2    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>004C71E9    je          004C7276
 004C71EF    mov         eax,dword ptr [ebp-4]
 004C71F2    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C71F8    call        TActionClient.GetContextItems
 004C71FD    call        0042158C
 004C7202    test        eax,eax
>004C7204    jle         004C7276
 004C7206    mov         eax,dword ptr [ebp-4]
 004C7209    call        004C6C1C
 004C720E    call        004C4A28
 004C7213    mov         edx,dword ptr [ebp-4]
 004C7216    mov         ecx,dword ptr [edx+4];TCustomActionControl.FOwner:TComponent
 004C7219    mov         dl,1
 004C721B    call        dword ptr [eax+2C]
 004C721E    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004C7224    call        @AsClass
 004C7229    mov         dword ptr [ebp-0C],eax
 004C722C    mov         eax,dword ptr [ebp-0C]
 004C722F    mov         byte ptr [eax+270],1;TCustomActionPopupMenu.FContextBar:Boolean
 004C7236    mov         eax,dword ptr [ebp-4]
 004C7239    mov         edx,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 004C723C    mov         eax,dword ptr [ebp-0C]
 004C723F    mov         ecx,dword ptr [eax]
 004C7241    call        dword ptr [ecx+68];TCustomActionPopupMenu.sub_004B4B9C
 004C7244    mov         eax,dword ptr [ebp-4]
 004C7247    mov         edx,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004C724D    mov         eax,dword ptr [ebp-0C]
 004C7250    mov         ecx,dword ptr [eax]
 004C7252    call        dword ptr [ecx+124];TCustomActionPopupMenu.sub_004C319C
 004C7258    mov         ecx,dword ptr [ebp-8]
 004C725B    movsx       ecx,word ptr [ecx+0A]
 004C725F    mov         edx,dword ptr [ebp-8]
 004C7262    movsx       edx,word ptr [edx+8]
 004C7266    mov         eax,dword ptr [ebp-0C]
 004C7269    call        TCustomActionPopupMenu.Popup
 004C726E    mov         eax,dword ptr [ebp-0C]
 004C7271    call        TObject.Free
 004C7276    mov         esp,ebp
 004C7278    pop         ebp
 004C7279    ret
end;*}

//004C727C
{*procedure sub_004C727C(?:TCustomActionControl; ?:?);
begin
 004C727C    push        ebp
 004C727D    mov         ebp,esp
 004C727F    add         esp,0FFFFFFE8
 004C7282    mov         byte ptr [ebp-5],dl
 004C7285    mov         dword ptr [ebp-4],eax
 004C7288    mov         al,byte ptr [ebp-5]
 004C728B    mov         edx,dword ptr [ebp-4]
 004C728E    cmp         al,byte ptr [edx+170];TCustomActionControl.FDropPoint:Boolean
>004C7294    je          004C72DE
 004C7296    mov         al,byte ptr [ebp-5]
 004C7299    mov         edx,dword ptr [ebp-4]
 004C729C    mov         byte ptr [edx+170],al;TCustomActionControl.FDropPoint:Boolean
 004C72A2    cmp         byte ptr [ebp-5],0
>004C72A6    je          004C72D6
 004C72A8    mov         eax,dword ptr [ebp-4]
 004C72AB    cmp         dword ptr [eax+30],0;TCustomActionControl.FParent:TWinControl
>004C72AF    je          004C72D6
 004C72B1    mov         dword ptr [ebp-15],0B411
 004C72B8    xor         eax,eax
 004C72BA    mov         dword ptr [ebp-11],eax
 004C72BD    mov         eax,dword ptr [ebp-4]
 004C72C0    mov         dword ptr [ebp-0D],eax
 004C72C3    xor         eax,eax
 004C72C5    mov         dword ptr [ebp-9],eax
 004C72C8    lea         edx,[ebp-15]
 004C72CB    mov         eax,dword ptr [ebp-4]
 004C72CE    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 004C72D1    call        00487E84
 004C72D6    mov         eax,dword ptr [ebp-4]
 004C72D9    mov         edx,dword ptr [eax]
 004C72DB    call        dword ptr [edx+7C];TCustomActionControl.sub_00483F08
 004C72DE    mov         esp,ebp
 004C72E0    pop         ebp
 004C72E1    ret
end;*}

//004C72E4
{*procedure TCustomActionControl.sub_004C72E4(?:?);
begin
 004C72E4    push        ebp
 004C72E5    mov         ebp,esp
 004C72E7    add         esp,0FFFFFFF8
 004C72EA    mov         dword ptr [ebp-8],edx
 004C72ED    mov         dword ptr [ebp-4],eax
 004C72F0    mov         eax,dword ptr [ebp-8]
 004C72F3    mov         eax,dword ptr [eax+8]
 004C72F6    cmp         eax,dword ptr [ebp-4]
>004C72F9    je          004C7311
 004C72FB    mov         eax,dword ptr [ebp-4]
 004C72FE    cmp         byte ptr [eax+170],0;TCustomActionControl.FDropPoint:Boolean
>004C7305    je          004C7311
 004C7307    xor         edx,edx
 004C7309    mov         eax,dword ptr [ebp-4]
 004C730C    call        004C727C
 004C7311    pop         ecx
 004C7312    pop         ecx
 004C7313    pop         ebp
 004C7314    ret
end;*}

//004C7318
{*function sub_004C7318(?:TActionBarStyleList; ?:?):?;
begin
 004C7318    push        ebp
 004C7319    mov         ebp,esp
 004C731B    add         esp,0FFFFFFF0
 004C731E    xor         ecx,ecx
 004C7320    mov         dword ptr [ebp-10],ecx
 004C7323    mov         dword ptr [ebp-8],edx
 004C7326    mov         dword ptr [ebp-4],eax
 004C7329    xor         eax,eax
 004C732B    push        ebp
 004C732C    push        4C7392
 004C7331    push        dword ptr fs:[eax]
 004C7334    mov         dword ptr fs:[eax],esp
 004C7337    cmp         dword ptr ds:[571E84],0;ActionBarStyles:TActionBarStyleList
>004C733E    jne         004C7361
 004C7340    lea         edx,[ebp-10]
 004C7343    mov         eax,[0056E47C];^SResString4:TResStringRec
 004C7348    call        LoadResString
 004C734D    mov         ecx,dword ptr [ebp-10]
 004C7350    mov         dl,1
 004C7352    mov         eax,[0040B004];Exception
 004C7357    call        Exception.Create;Exception.Create
 004C735C    call        @RaiseExcept
 004C7361    mov         edx,dword ptr [ebp-8]
 004C7364    mov         eax,[00571E84];0x0 ActionBarStyles:TActionBarStyleList
 004C7369    mov         ecx,dword ptr [eax]
 004C736B    call        dword ptr [ecx+18];TActionBarStyleList.sub_00423024
 004C736E    mov         edx,dword ptr ds:[4BA31C];TActionBarStyle
 004C7374    call        @AsClass
 004C7379    mov         dword ptr [ebp-0C],eax
 004C737C    xor         eax,eax
 004C737E    pop         edx
 004C737F    pop         ecx
 004C7380    pop         ecx
 004C7381    mov         dword ptr fs:[eax],edx
 004C7384    push        4C7399
 004C7389    lea         eax,[ebp-10]
 004C738C    call        @LStrClr
 004C7391    ret
>004C7392    jmp         @HandleFinally
>004C7397    jmp         004C7389
 004C7399    mov         eax,dword ptr [ebp-0C]
 004C739C    mov         esp,ebp
 004C739E    pop         ebp
 004C739F    ret
end;*}

Initialization
//004C73F0
{*
 004C73F0    push        ebp
 004C73F1    mov         ebp,esp
 004C73F3    xor         eax,eax
 004C73F5    push        ebp
 004C73F6    push        4C742F
 004C73FB    push        dword ptr fs:[eax]
 004C73FE    mov         dword ptr fs:[eax],esp
 004C7401    sub         dword ptr ds:[571E8C],1
>004C7408    jae         004C7421
 004C740A    xor         eax,eax
 004C740C    mov         [00571E84],eax;ActionBarStyles:TActionBarStyleList
 004C7411    mov         edx,dword ptr ds:[47DF94];TControl
 004C7417    mov         eax,[004BB6C4];TCustomActionBarColorMap
 004C741C    call        GroupDescendentsWith
 004C7421    xor         eax,eax
 004C7423    pop         edx
 004C7424    pop         ecx
 004C7425    pop         ecx
 004C7426    mov         dword ptr fs:[eax],edx
 004C7429    push        4C7436
 004C742E    ret
>004C742F    jmp         @HandleFinally
>004C7434    jmp         004C742E
 004C7436    pop         ebp
 004C7437    ret
*}
Finalization
//004C73A0
{*
 004C73A0    push        ebp
 004C73A1    mov         ebp,esp
 004C73A3    xor         eax,eax
 004C73A5    push        ebp
 004C73A6    push        4C73E5
 004C73AB    push        dword ptr fs:[eax]
 004C73AE    mov         dword ptr fs:[eax],esp
 004C73B1    inc         dword ptr ds:[571E8C]
>004C73B7    jne         004C73D7
 004C73B9    mov         eax,571E88;DefaultActnBarStyle:AnsiString
 004C73BE    call        @LStrClr
 004C73C3    mov         eax,56CB8C;gvar_0056CB8C
 004C73C8    call        @IntfClear
 004C73CD    mov         eax,56CB88;^gvar_004BBD0C
 004C73D2    call        @LStrClr
 004C73D7    xor         eax,eax
 004C73D9    pop         edx
 004C73DA    pop         ecx
 004C73DB    pop         ecx
 004C73DC    mov         dword ptr fs:[eax],edx
 004C73DF    push        4C73EC
 004C73E4    ret
>004C73E5    jmp         @HandleFinally
>004C73EA    jmp         004C73E4
 004C73EC    pop         ebp
 004C73ED    ret
*}
end.