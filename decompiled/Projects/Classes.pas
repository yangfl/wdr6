//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Classes;

interface

uses
  SysUtils, Classes, Buttons;

type
  TAlignment = (taLeftJustify, taRightJustify, taCenter);
  TLeftRight = (taLeftJustify, taRightJustify);
  TBiDiMode = (bdLeftToRight, bdRightToLeft, bdRightToLeftNoAlign, bdRightToLeftReadingOnly);
  _Enum_15_1 = (ssShift, ssAlt, ssCtrl, ssLeft, ssRight, ssMiddle, ssDouble);
  TShiftState = set of _Enum_15_1;
  THelpType = (htKeyword, htContext);
  TNotifyEvent = procedure(Sender:TObject) of object;;
  EStreamError = class(Exception)
  end;
  EFileStreamError = class(EStreamError)
  end;
  EFCreateError = class(EFileStreamError)
  end;
  EFOpenError = class(EFileStreamError)
  end;
  EFilerError = class(EStreamError)
  end;
  EReadError = class(EFilerError)
  end;
  EWriteError = class(EFilerError)
  end;
  EClassNotFound = class(EFilerError)
  end;
  EResNotFound = class(Exception)
  end;
  EListError = class(Exception)
  end;
  EBitsError = class(Exception)
  end;
  EStringListError = class(Exception)
  end;
  EComponentError = class(Exception)
  end;
  EOutOfResources = class(EOutOfMemory)
  end;
  EInvalidOperation = class(Exception)
  end;
  TList = class(TObject)
  public
    FList:PPointerList;//f4
    FCount:Integer;//f8
    FCapacity:Integer;//fC
    destructor Destroy; virtual;//0041FFF0
    procedure v0; virtual;//v0//00420264
    //procedure v4(?:?; ?:?); virtual;//v4//00420628
    procedure v8; virtual;//v8//00420074
    procedure vC; virtual;//vC//00420130
    function Add(Item:Pointer):Integer;//0042001C
    function Get(Index:Integer):Pointer;//0042021C
  end;
  TThreadList = class(TObject)
  public
    FList:TList;//f4
    FLock:TRTLCriticalSection;//f8
    FDuplicates:TDuplicates;//f20
    constructor Create;//0042063C
    destructor Destroy;//004206A4
    function LockList:TList;//004207AC
    procedure UnlockList;//00420828
  end;
  TBits = class(TObject)
  public
    FSize:Integer;//f4
    FBits:Pointer;//f8
    procedure Error;//0042087C
    procedure SetSize(Value:Integer);//004208C8
    procedure SetBit(Index:Integer; Value:Boolean);//0042099C
    function GetBit(Index:Integer):Boolean;//004209C8
  end;
  TPersistent = class(TObject)
  public
    destructor Destroy; virtual;//00420A98
    //procedure v0(?:?); virtual;//v0//00420BD8
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00420BF4
    //procedure v8(?:?); virtual;//v8//00420AD4
    //procedure sub_00420C04(?:?); dynamic;//00420C04
    procedure sub_00420CBC; dynamic;//00420CBC
  end;
  TInterfacedPersistent = class(TPersistent)
  public
    FOwnerInterface:IInterface;//f4
    procedure AfterConstruction; virtual;//00420CD4
    //function vC(?:?; ?:?):?; virtual;//vC//00420D90
  end;
  TRecall = class(TObject)
  public
    FStorage:TPersistent;//f4
    FReference:TPersistent;//f8
  end;
  TCollectionItem = class(TPersistent)
  public
    FCollection:TCollection;//f4
    FID:Integer;//f8
    destructor Destroy; virtual;//0042101C
    //procedure vC(?:?); virtual;//vC//004210D8
    //procedure v10(?:?); virtual;//v10//004211E8
    //procedure v14(?:?); virtual;//v14//00421248
    //procedure v18(?:?); virtual;//v18//0042122C
    constructor v1C; virtual;//v1C//00420FD4
    //procedure sub_00420C04(?:?); dynamic;//0042110C
    procedure sub_00420CBC; dynamic;//004211CC
    function GetIndex:Integer;//004210A0
  end;
  TCollection = class(TPersistent)
  public
    FItemClass:TCollectionItemClass;//f4
    FItems:TList;//f8
    FUpdateCount:Integer;//fC
    FNextID:Integer;//f10
    FPropName:String;//f14
    destructor Destroy; virtual;//004212F4
    //procedure v8(?:?); virtual;//v8//00421384
    //procedure vC(?:?); virtual;//vC//00421988
    //procedure v10(?:?); virtual;//v10//00421998
    //procedure v14(?:?; ?:?); virtual;//v14//004219A8
    //procedure v18(?:?); virtual;//v18//00421904
    //procedure v1C(?:?); virtual;//v1C//00421914
    procedure v20; virtual;//v20//00421428
    procedure v24; virtual;//v24//004214C0
    //procedure sub_00421564(?:?; ?:?; ?:?); dynamic;//00421564
    //procedure sub_00421548(?:?; ?:?); dynamic;//00421548
    procedure sub_00421530; dynamic;//00421530
    //procedure sub_00420C04(?:?); dynamic;//004215CC
    constructor Create;//00421290
    procedure Clear;//00421458
  end;
  TOwnedCollection = class(TCollection)
  public
    .FOwner:TPersistent;//f18
    procedure sub_00420CBC; dynamic;//00421A34
  end;
  TStrings = class(TPersistent)
  public
    FDefined:TStringsDefined;//f4
    FDelimiter:Char;//f5
    FQuoteChar:Char;//f6
    FNameValueSeparator:Char;//f7
    FUpdateCount:Integer;//f8
    FAdapter:IStringsAdapter;//fC
    destructor Destroy; virtual;//00421A50
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00421CD8
    //procedure v8(?:?); virtual;//v8//00421BB0
    procedure vC; virtual; abstract;//vC//00403328
    //function v10:?; virtual;//v10//00422020
    procedure v14; virtual; abstract;//v14//00403328
    //function v18(?:?):?; virtual;//v18//004220A0
    //procedure v1C(?:?); virtual;//v1C//00422114
    //procedure v20(?:?; ?:?); virtual;//v20//004226A4
    //procedure v24(?:?; ?:?); virtual;//v24//004226E4
    //procedure v28(?:?); virtual;//v28//00422868
    //procedure v2C(?:?); virtual;//v2C//0042291C
    //procedure v30(?:?); virtual;//v30//004229FC
    //function v34(?:?; ?:?):?; virtual;//v34//00422A98
    //function v38(?:?):?; virtual;//v38//00421A8C
    //function v3C(?:?; ?:?):?; virtual;//v3C//00421ABC
    //procedure v40(?:?); virtual;//v40//00421AF0
    procedure Clear; virtual; abstract;//v44//00403328
    procedure v48; virtual; abstract;//v48//00403328
    //procedure v4C(?:?; ?:?); virtual;//v4C//00421EA4
    //function v50:?; virtual;//v50//004220B8
    //function v54(?:?):?; virtual;//v54//004222F0
    //function v58(?:?):?; virtual;//v58//0042237C
    //function v5C(?:?):?; virtual;//v5C//00422458
    procedure v60; virtual; abstract;//v60//00403328
    //procedure v64(?:?; ?:?; ?:?); virtual;//v64//004224A4
    //procedure v68(?:?); virtual;//v68//004224D8
    //procedure v6C(?:?); virtual;//v6C//00422534
    //procedure v70(?:?; ?:?); virtual;//v70//004225E8
    //procedure v74(?:?); virtual;//v74//004227A8
    //procedure v78(?:?); virtual;//v78//00422808
    //procedure v7C(?:?); virtual;//v7C//004228C4
    procedure BeginUpdate;//00421C54
    procedure EndUpdate;//00421D24
    procedure ReadData(Reader:TReader);//004226F8
    procedure WriteData(Writer:TWriter);//00422A0C
  end;
  TStringItem = TStringItem = record//size=8
f0:String;//f0
end;;
  TStringList = class(TStrings)
  public
    FList:PStringItemList;//f10
    FCount:Integer;//f14
    FCapacity:Integer;//f18
    FSorted:Boolean;//f1C
    FDuplicates:TDuplicates;//f1D
    FCaseSensitive:Boolean;//f1E
    FOnChange:TNotifyEvent;//f20
    f22:word;//f22
    f24:dword;//f24
    FOnChanging:TNotifyEvent;//f28
    f2A:word;//f2A
    f2C:dword;//f2C
    destructor Destroy; virtual;//00422BB8
    //procedure vC(?:?; ?:?); virtual;//vC//00422FA0
    //function v10:?; virtual;//v10//00422FEC
    //function v14:?; virtual;//v14//00423008
    //function v18(?:?):?; virtual;//v18//00423024
    //procedure v20(?:?; ?:?); virtual;//v20//00423248
    //procedure v24(?:?; ?:?); virtual;//v24//004232C0
    //procedure v28(?:?); virtual;//v28//004233E0
    //procedure v30(?:?); virtual;//v30//00423444
    //function v34(?:?; ?:?):?; virtual;//v34//0042351C
    //function v38(?:?):?; virtual;//v38//00422C34
    //function v3C(?:?; ?:?):?; virtual;//v3C//00422C5C
    procedure Clear; virtual;//v44//00422D2C
    //procedure v48(?:?); virtual;//v48//00422D80
    //procedure v4C(?:?; ?:?); virtual;//v4C//00422E20
    //function v54(?:?):?; virtual;//v54//004230C4
    //procedure v60(?:?; ?:?); virtual;//v60//00423110
    //procedure v64(?:?; ?:?; ?:?); virtual;//v64//00423138
    procedure v80; virtual;//v80//00422CD4
    procedure v84; virtual;//v84//00422D00
    //procedure v88(?:?; ?:?; ?:?); virtual;//v88//004231A0
    //function v8C(?:?; ?:?):?; virtual;//v8C//00422F08
    procedure v90; virtual;//v90//004234B0
    //procedure v94(?:?); virtual;//v94//004234CC
  end;
  TStream = class(TObject)
  public
    procedure v0; virtual;//v0//004235A0
    //procedure v4(?:?); virtual;//v4//004235EC
    //procedure v8(?:?; ?:?); virtual;//v8//00423618
    procedure vC; virtual; abstract;//vC//00403328
    procedure v10; virtual; abstract;//v10//00403328
    //function v14(?:?; ?:?):?; virtual;//v14//004236BC
    //procedure v18(?:?; ?:?; ?:?); virtual;//v18//00423748
    function GetPosition:Int64;//0042355C
    procedure SetPosition(const Pos:Int64);//00423584
    procedure ReadBuffer(var Buffer:void ; Count:Longint);//004237B8
    procedure WriteBuffer(const Buffer:void ; Count:Longint);//00423800
    function CopyFrom(Source:TStream; Count:Int64):Int64;//00423848
  end;
  THandleStream = class(TStream)
  public
    ......FHandle:Integer;//f4
    //procedure v4(?:?); virtual;//v4//00423B1C
    //procedure v8(?:?; ?:?); virtual;//v8//00423B3C
    //function vC(?:?; ?:?):?; virtual;//vC//00423A78
    //function v10(?:?; ?:?):?; virtual;//v10//00423AB0
    //procedure v18(?:?; ?:?; ?:?); virtual;//v18//00423AE8
  end;
  TFileStream = class(THandleStream)
  public
    destructor Destroy; virtual;//00423D1C
    //constructor Create(?:?);//00423B6C
  end;
  TCustomMemoryStream = class(TStream)
  public
    FMemory:Pointer;//f4
    FSize:Longint;//f8
    FPosition:Longint;//fC
    //function vC(?:?; ?:?):?; virtual;//vC//00423D8C
    //function v14(?:?; ?:?):?; virtual;//v14//00423DFC
  end;
  TMemoryStream = class(TCustomMemoryStream)
  public
    ....FCapacity:Longint;//f10
    destructor Destroy; virtual;//00423EE4
    //procedure v4(?:?); virtual;//v4//0042401C
    //function v10(?:?; ?:?):?; virtual;//v10//0042412C
    //function v1C(?:?):?; virtual;//v1C//00424064
  end;
  TResourceStream = class(TCustomMemoryStream)
  public
    HResInfo:THandle;//f10
    HGlobal:THandle;//f14
    destructor Destroy; virtual;//00424318
    //function v10(?:?; ?:?):?; virtual;//v10//00424360
    //constructor Create(?:?; ?:?);//004241BC
  end;
  TStreamAdapter = class(TInterfacedObject)
  public
    FStream:TStream;//fC
    FOwnership:TStreamOwnership;//f10
    destructor Destroy; virtual;//0042B35C
    //function v0(?:?; ?:?; ?:?):?; virtual;//v0//0042B3AC
    //function v4(?:?; ?:?; ?:?):?; virtual;//v4//0042B428
    //function v8(?:?; ?:?; ?:?):?; virtual;//v8//0042B4A4
    //function vC(?:?; ?:?):?; virtual;//vC//0042B534
    //function v10(?:?; ?:?; ?:?; ?:?; ?:?):?; virtual;//v10//0042B5A4
    //function v14:?; virtual;//v14//0042B7C8
    //function v18:?; virtual;//v18//0042B7DC
    //function v1C:?; virtual;//v1C//0042B7F0
    //function v20:?; virtual;//v20//0042B804
    //function v24(?:?):?; virtual;//v24//0042B818
    //function v28:?; virtual;//v28//0042B8B8
    //constructor Create(?:?);//0042B304
  end;
  TClassFinder = class(TObject)
  public
    FGroups:TList;//f4
    //constructor Create(?:?);//0041F270
  end;
  TFiler = class(TObject)
  public
    FStream:TStream;//f4
    FBuffer:Pointer;//f8
    FBufSize:Integer;//fC
    FBufPos:Integer;//f10
    FBufEnd:Integer;//f14
    FRoot:TComponent;//f18
    FLookupRoot:TComponent;//f1C
    FAncestor:TPersistent;//f20
    FIgnoreChildren:Boolean;//f24
    destructor Destroy; virtual;//004243EC
    //procedure v0(?:?); virtual;//v0//0042442C
    procedure v4; virtual; abstract;//v4//00403328
    procedure v8; virtual; abstract;//v8//00403328
    procedure vC; virtual; abstract;//vC//00403328
    constructor Create(Stream:TStream; BufSize:Integer);//00424390
  end;
  TReader = class(TFiler)
  public
    FOwner:TComponent;//f28
    FParent:TComponent;//f2C
    FFixups:TList;//f30
    FLoaded:TList;//f34
    FOnFindMethod:TFindMethodEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    FOnSetName:TSetNameEvent;//f40
    f42:word;//f42
    f44:dword;//f44
    FOnReferenceName:TReferenceNameEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnAncestorNotFound:TAncestorNotFoundEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    FOnError:TReaderError;//f58
    f5A:word;//f5A
    f5C:dword;//f5C
    FOnFindComponentClass:TFindComponentClassEvent;//f60
    FOnCreateComponent:TCreateComponentEvent;//f68
    FPropName:String;//f70
    FFinder:TClassFinder;//f74
    FCanHandleExcepts:Boolean;//f78
    destructor Destroy; virtual;//00424C18
    //procedure v4(?:?; ?:?; ?:?; ?:?); virtual;//v4//00424C98
    //procedure v8(?:?; ?:?; ?:?; ?:?); virtual;//v8//00424CDC
    procedure vC; virtual;//vC//00425060
    //function v10(?:?):?; virtual;//v10//00424DE0
    //function v14(?:?; ?:?):?; virtual;//v14//004271D8
    //function v18(?:?; ?:?):?; virtual;//v18//00424E18
    //procedure v1C(?:?; ?:?); virtual;//v1C//004272CC
    //procedure v20(?:?); virtual;//v20//004272A0
    //procedure v24(?:?; ?:?); virtual;//v24//00425F04
    function EndOfList:Boolean;//00424DBC
    function NextValue:TValueType;//004251CC
    procedure Read(var Buf:void ; Count:Longint);//00425210
    procedure ReadBuffer;//0042525C
    procedure ReadCollection(Collection:TCollection);//00425334
    function ReadIdent:AnsiString;//00425D18
    procedure ReadListBegin;//00425EDC
    procedure ReadListEnd;//00425EF0
    function ReadStr:AnsiString;//00426BF0
    function ReadString:AnsiString;//00426C38
    function ReadValue:TValueType;//00426DF4
    procedure SkipSetBody;//00426E14
    procedure SkipValue;//00426F38
    procedure SkipBytes(Count:Integer);//004273A4
    function ReadVariant:Variant;//004275CC
  end;
  TWriter = class(TFiler)
  public
    FRootAncestor:TComponent;//f28
    FPropPath:String;//f2C
    FAncestorList:TList;//f30
    FAncestorPos:Integer;//f34
    FChildPos:Integer;//f38
    FOnFindAncestor:TFindAncestorEvent;//f40
    FUseQualifiedNames:Boolean;//f48
    destructor Destroy; virtual;//004277E0
    //procedure v0(?:?); virtual;//v0//00427944
    //procedure v4(?:?; ?:?; ?:?; ?:?); virtual;//v4//0042783C
    //procedure v8(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v8//00427874
    procedure vC; virtual;//vC//004278D4
    //procedure v10(?:?); virtual;//v10//00427D68
    procedure Write(const Buf:void ; Count:Longint);//00427968
    procedure WriteBuffer;//00427A3C
    procedure WriteFloat(const Value:Extended);//004281C8
    procedure WriteIdent(const Ident:AnsiString);//00428268
    procedure WriteInteger(Value:Longint);//004283C0
    procedure WriteProperties(Instance:TPersistent);//00428490
    procedure WriteProperty(Instance:TPersistent; PropInfo:PPropInfo);//00429650
    procedure WriteVariant(const Value:Variant);//0042979C
    procedure WritePropName(const PropName:AnsiString);//00429BA8
    procedure WriteWideString(const Value:WideString);//00429D7C
    procedure WriteValue(Value:TValueType);//00429E3C
    procedure GetLookupInfo(var Ancestor:TPersistent; var Root:TComponent; var LookupRoot:TComponent; var RootAncestor:TComponent);//00429E5C
  end;
  EThread = class(Exception)
  end;
  TComponent = class(TPersistent)
  public
    FOwner:TComponent;//f4
    Name:TComponentName;//f8
    Tag:Integer;//fC
    FComponents:TList;//f10
    FFreeNotifies:TList;//f14
    FDesignInfo:Longint;//f18
    FComponentState:TComponentState;//f1C
    f1D:byte;//f1D
    FVCLComObject:Pointer;//f20
    FComponentStyle:TComponentStyle;//f24
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT; virtual;//0042AD24
    procedure BeforeDestruction; virtual;//0042A2B0
    destructor Destroy; virtual;//0042A20C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0042A6CC
    procedure vC; virtual;//vC//0042A86C
    //procedure v10(?:?; ?:?); virtual;//v10//0042A644
    //procedure v14(?:?); virtual;//v14//0042A88C
    procedure SetName(Value:TComponentName); virtual;//v18//0042A9F8
    //procedure v1C(?:?; ?:?); virtual;//v1C//0042AD6C
    //procedure v20(?:?; ?:?; ?:?); virtual;//v20//0042A8C4
    //procedure v24(?:?); virtual;//v24//0042A8A8
    //function v28(?:?; ?:?):?; virtual;//v28//0042AD84
    constructor v2C; virtual;//v2C//0042A1B0
    //procedure sub_0042ACC8(?:?); dynamic;//0042ACC8
    procedure sub_0042A774; dynamic;//0042A774
    procedure sub_0042A81C; dynamic;//0042A81C
    //procedure sub_0042AC94(?:?); dynamic;//0042AC94
    //procedure sub_0042A97C(?:?); dynamic;//0042A97C
    //procedure sub_0042A958(?:?); dynamic;//0042A958
    procedure sub_0042A858; dynamic;//0042A858
    procedure sub_0042A844; dynamic;//0042A844
    //procedure sub_0042A834(?:?); dynamic;//0042A834
    //procedure sub_0042A808(?:?; ?:?); dynamic;//0042A808
    procedure sub_0042A880; dynamic;//0042A880
    procedure sub_0042A7B4; dynamic;//0042A7B4
    procedure sub_0042A79C; dynamic;//0042A79C
    //procedure sub_0042A788(?:?); dynamic;//0042A788
    //procedure sub_00420C04(?:?); dynamic;//0042A7CC
    procedure sub_00420CBC; dynamic;//0042A7EC
  end;
  TBasicActionLink = class(TObject)
  public
    FOnChange:TNotifyEvent;//f8
    fA:word;//fA
    fC:TSpeedButton;//fC
    FAction:TBasicAction;//f10
    destructor Destroy; virtual;//0042AEAC
    //procedure v0(?:?); virtual;//v0//0042AE9C
    procedure v4; virtual;//v4//0042AEF4
    //function v8:?; virtual;//v8//0042AFA0
    //procedure vC(?:?); virtual;//vC//0042AF54
    procedure v10; virtual;//v10//0042AFB4
    constructor v14; virtual;//v14//0042AE4C
    //function v18(?:?):?; virtual;//v18//0042AF1C
    //function v1C:?; virtual;//v1C//0042AFC0
  end;
  TBasicAction = class(TComponent)
  public
    FActionComponent:TComponent;//f30
    FOnChange:TNotifyEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    FOnExecute:TNotifyEvent;//f40
    f42:word;//f42
    f44:dword;//f44
    FOnUpdate:TNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FClients:TList;//f50
    destructor Destroy; virtual;//0042B03C
    //procedure v10(?:?; ?:?); virtual;//v10//0042B0DC
    constructor v2C; virtual;//v2C//0042AFE0
    procedure v30; virtual;//v30//0042B208
    //procedure SetOnExecute(Value:TNotifyEvent; ?:?; ?:?); virtual;//v34//0042B190
    //function v38(?:?):?; virtual;//v38//0042B0B4
    //procedure v3C(?:?); virtual;//v3C//0042B118
    //procedure v40(?:?); virtual;//v40//0042B0CC
    //function v44:?; virtual;//v44//0042B15C
    procedure sub_0042B128; dynamic;//0042B128
  end;
  TIdentMapEntry = TIdentMapEntry = record//size=8
f4:String;//f4
end;;
  TRegGroup = class(TObject)
  public
    FClassList:TList;//f4
    FAliasList:TStringList;//f8
    FGroupClasses:TList;//fC
    FActive:Boolean;//f10
    constructor Create;//0041E998
  end;
  TRegGroups = class(TObject)
  public
    FGroups:TList;//f4
    FLock:TRTLCriticalSection;//f8
    FActiveClass:TPersistentClass;//f20
    constructor Create;//0041ED98
  end;
  TIntConst = class(TObject)
  public
    IntegerType:PTypeInfo;//f4
    IdentToInt:TIdentToInt;//f8
    IntToIdent:TIntToIdent;//fC
  end;
  TPropFixup = class(TObject)
  public
    FInstance:TPersistent;//f4
    FInstanceRoot:TComponent;//f8
    FPropInfo:PPropInfo;//fC
    FRootName:String;//f10
    FName:String;//f14
    //procedure v0(?:?); virtual;//v0//00424600
    constructor Create(Instance:TPersistent; InstanceRoot:TComponent; PropInfo:PPropInfo; const RootName:AnsiString; const Name:AnsiString);//00424520
  end;
  TPropIntfFixup = class(TPropFixup)
  public
    //procedure v0(?:?); virtual;//v0//00424624
  end;
  _DynArr_15_06 = array of ?;
//elSize = 4;
    function Point(AX:Integer; AY:Integer):TPoint;//0041E690
    //function sub_0041E6B4(?:?; ?:?):?;//0041E6B4
    //function sub_0041E6DC(?:?; ?:?):?;//0041E6DC
    //procedure sub_0041E714(?:Integer; ?:Integer; ?:Integer; ?:?; ?:?);//0041E714
    //procedure sub_0041E740(?:TPoint; ?:Integer; ?:?; ?:?; ?:?);//0041E740
    //function sub_0041E76C(?:TPoint):?;//0041E76C
    //function sub_0041E798(?:?):?;//0041E798
    //procedure sub_0041E870(?:?; ?:?);//0041E870
    //function sub_0041E890(?:?; ?:?):?;//0041E890
    //function sub_0041E904(?:TRegGroup; ?:Pointer; ?:?; ?:?):?;//0041E904
    //function sub_0041EA74(?:Pointer; ?:AnsiString):?;//0041EA74
    //function sub_0041EAF8(?:Pointer; ?:TPersistentClass):?;//0041EAF8
    //procedure sub_0041EB50(?:?; ?:?);//0041EB50
    //function sub_0041EBFC(?:Pointer; ?:?):?;//0041EBFC
    //function sub_0041EC24(?:Pointer; ?:?):?;//0041EC24
    //procedure sub_0041EC54(?:Pointer; ?:?);//0041EC54
    //procedure sub_0041ED30(?:?; ?:?);//0041ED30
    //function sub_0041EEA0(?:?; ?:Pointer):?;//0041EEA0
    //function sub_0041EF04(?:TRegGroups; ?:?):?;//0041EF04
    procedure Error;//0041EF6C
    //procedure sub_0041EFFC(?:?; ?:?; ?:?);//0041EFFC
    procedure sub_0041F0E0(?:TRegGroups);//0041F0E0
    //procedure sub_0041F0F8(?:?; ?:?);//0041F0F8
    //function sub_0041F128(?:?; ?:?):?;//0041F128
    //procedure sub_0041F180(?:?; ?:?);//0041F180
    procedure sub_0041F1EC(?:TRegGroups);//0041F1EC
    //procedure sub_0041F204(?:?; ?:?);//0041F204
    //function sub_0041F3F4(?:?; ?:?):?;//0041F3F4
    function GetFieldClassTable(AClass:TClass):PFieldClassTable;//0041F490
    //procedure sub_0041F49C(?:?);//0041F49C
    //function sub_0041F50C(?:?):?;//0041F50C
    //function sub_0041F564(?:?):?;//0041F564
    procedure RegisterClass(AClass:TPersistentClass);//0041F590
    procedure UnRegisterModuleClasses(Module:HMODULE);//0041F608
    procedure StartClassGroup(AClass:TPersistentClass);//0041F658
    procedure GroupDescendentsWith(AClass:TPersistentClass; AClassGroup:TPersistentClass);//0041F6A8
    function ActivateClassGroup(AClass:TPersistentClass):TPersistentClass;//0041F700
    //constructor sub_0041F7B8(?:?; ?:?);//0041F7B8
    procedure RegisterIntegerConsts(AIntegerType:Pointer; AIdentToInt:TIdentToInt; AIntToIdent:TIntToIdent);//0041F810
    //function sub_0041F848(?:?):?;//0041F848
    //function sub_0041F8D8(?:?):?;//0041F8D8
    //function sub_0041F968(?:?; ?:?; ?:?; ?:?):?;//0041F968
    //function sub_0041F9C8(?:?; ?:?; ?:?; ?:?):?;//0041F9C8
    procedure sub_0041FA24(?:TComponent);//0041FA24
    procedure UnregisterFindGlobalComponentProc(AFindGlobalComponent:TFindGlobalComponent);//0041FA68
    //function sub_0041FA88(?:?):?;//0041FA88
    //function sub_0041FAE0(?:?):?;//0041FAE0
    //function sub_0041FB18(?:?; ?:?; ?:?):?;//0041FB18
    procedure BeginGlobalLoading;//0041FBBC
    procedure NotifyGlobalLoading;//0041FC24
    procedure EndGlobalLoading;//0041FC6C
    function InitComponent(ClassType:TClass):Boolean;//0041FCD8
    function InitInheritedComponent(Instance:TComponent; RootAncestor:TClass):Boolean;//0041FD8C
    //procedure sub_0041FE50(?:?; ?:?; ?:?);//0041FE50
    function CollectionsEqual(C1:TCollection; C2:TCollection; Owner1:TComponent; Owner2:TComponent):Boolean;//0041FEC4
    destructor Destroy;//0041FFF0
    procedure sub_00420074;//00420074
    procedure sub_00420094(?:TList; ?:Integer);//00420094
    //function sub_00420128(?:?):?;//00420128
    procedure sub_00420130;//00420130
    //procedure sub_00420170(?:TList; ?:TResStringRec; ?:?);//00420170
    //function sub_004201D0(?:TList):?;//004201D0
    //function sub_004201FC(?:TList):?;//004201FC
    procedure sub_00420264;//00420264
    //function sub_004202BC(?:TList; ?:TComponent):?;//004202BC
    //procedure sub_00420308(?:TList; ?:?; ?:Pointer);//00420308
    //function sub_004203B8(?:TList):?;//004203B8
    //procedure sub_004203DC(?:TList; ?:Integer; ?:?);//004203DC
    //procedure sub_00420460(?:TList; ?:?; ?:Pointer);//00420460
    //function sub_004204F0(?:TList; ?:TPersistent):?;//004204F0
    //procedure sub_00420524(?:TList; ?:?);//00420524
    //procedure sub_00420580(?:TList; ?:?);//00420580
    //procedure sub_00420628(?:?; ?:?);//00420628
    procedure sub_00420720(?:TThreadList; ?:Pointer);//00420720
    //procedure sub_004207D4(?:TThreadList; ?:?);//004207D4
    //function sub_004208A0(?:?; ?:?):?;//004208A0
    //function sub_004209E0(?:TBits):?;//004209E0
    destructor Destroy;//00420A98
    //procedure sub_00420AD4(?:?);//00420AD4
    procedure sub_00420B00(?:TPersistent; ?:TPersistent);//00420B00
    //procedure sub_00420BD8(?:?);//00420BD8
    procedure DefineProperties(Filer:TFiler);//00420BF4
    //procedure sub_00420C04(?:?);//00420C04
    procedure sub_00420CBC;//00420CBC
    procedure AfterConstruction;//00420CD4
    //function sub_00420D30(?:?):?;//00420D30
    //function sub_00420D60(?:?):?;//00420D60
    //function sub_00420D90(?:?; ?:?):?;//00420D90
    //procedure sub_00420DBC(?:?; ?:?);//00420DBC
    //procedure sub_00420E70(?:TCollection; ?:TCollectionItem; ?:?);//00420E70
    //constructor sub_00420EDC(?:?);//00420EDC
    //procedure sub_00420FB0(?:?);//00420FB0
    constructor sub_00420FD4;//00420FD4
    destructor Destroy;//0042101C
    //procedure sub_00421058(?:TCollectionItem; ?:?);//00421058
    //procedure sub_004210D8(?:?);//004210D8
    //procedure sub_00420C04(?:?);//0042110C
    procedure sub_00420CBC;//004211CC
    //procedure sub_004211E8(?:?);//004211E8
    //procedure sub_0042122C(?:?);//0042122C
    //procedure sub_00421248(?:?);//00421248
    destructor Destroy;//004212F4
    //function sub_00421358(?:TCollection):?;//00421358
    //procedure sub_00421384(?:?);//00421384
    procedure sub_00421428;//00421428
    procedure sub_00421438(?:TCollection);//00421438
    procedure sub_004214C0;//004214C0
    //function sub_004214D8(?:?; ?:Integer):?;//004214D8
    procedure sub_00421530;//00421530
    //procedure sub_00421548(?:?; ?:?);//00421548
    //procedure sub_00421564(?:?; ?:?; ?:?);//00421564
    //function sub_0042158C(?:TCollection):?;//0042158C
    //function sub_004215A8(?:TCollection; ?:?):?;//004215A8
    //procedure sub_00420C04(?:?);//004215CC
    //procedure sub_0042169C(?:TCollection; ?:?);//0042169C
    //function sub_004217D8(?:?; ?:Integer):?;//004217D8
    //procedure sub_00421804(?:?; ?:TCollectionItem);//00421804
    procedure sub_00421890(?:TCollection; ?:TCollectionItem);//00421890
    //procedure sub_00421904(?:?);//00421904
    //procedure sub_00421914(?:?);//00421914
    procedure sub_00421924(?:TOwnedCollection; ?:Integer);//00421924
    //function sub_00421964(?:TComboExItems):?;//00421964
    //procedure sub_00421988(?:?);//00421988
    //procedure sub_00421998(?:?);//00421998
    //procedure sub_004219A8(?:?; ?:?);//004219A8
    //constructor Create(?:?);//004219E0
    procedure sub_00420CBC;//00421A34
    destructor Destroy;//00421A50
    //function sub_00421A8C(?:?):?;//00421A8C
    //function sub_00421ABC(?:?; ?:?):?;//00421ABC
    //procedure sub_00421AF0(?:?);//00421AF0
    //procedure sub_00421BB0(?:?);//00421BB0
    function DoWrite:Boolean;//00421C78
    procedure DefineProperties(Filer:TFiler);//00421CD8
    //function sub_00421D48(?:?; ?:?):?;//00421D48
    //function sub_00421DFC(?:?):?;//00421DFC
    procedure sub_00421E04;//00421E04
    //procedure sub_00421E44(?:TStringList; ?:TResStringRec; ?:?);//00421E44
    //procedure sub_00421EA4(?:?; ?:?);//00421EA4
    //procedure sub_00421F90(?:?; ?:?; ?:?);//00421F90
    //function sub_00422020:?;//00422020
    //procedure sub_0042203C(?:TStringList; ?:?; ?:?);//0042203C
    //function sub_004220A0(?:?):?;//004220A0
    //function sub_004220B8:?;//004220B8
    //procedure sub_00422114(?:?);//00422114
    //procedure sub_0042225C(?:TStringList; ?:?; ?:?);//0042225C
    //function sub_004222F0(?:?):?;//004222F0
    //function sub_0042237C(?:?):?;//0042237C
    //function sub_00422458(?:?):?;//00422458
    //procedure sub_004224A4(?:?; ?:?; ?:?);//004224A4
    //procedure sub_004224D8(?:?);//004224D8
    //procedure sub_00422534(?:?);//00422534
    //procedure sub_004225E8(?:?; ?:?);//004225E8
    //procedure sub_004226A4(?:?; ?:?);//004226A4
    //procedure sub_004226E4(?:?; ?:?);//004226E4
    //procedure sub_004227A8(?:?);//004227A8
    //procedure sub_00422808(?:?);//00422808
    //procedure sub_00422868(?:?);//00422868
    //procedure sub_00422878(?:?; ?:?);//00422878
    //procedure sub_004228C4(?:?);//004228C4
    //procedure sub_0042291C(?:?);//0042291C
    //procedure sub_004229FC(?:?);//004229FC
    //function sub_00422A98(?:?; ?:?):?;//00422A98
    //function sub_00422ABC(?:TStrings):?;//00422ABC
    //procedure sub_00422AE8(?:TStrings; ?:?);//00422AE8
    //procedure sub_00422B1C(?:TStringList; ?:?; ?:?);//00422B1C
    destructor Destroy;//00422BB8
    //function sub_00422C34(?:?):?;//00422C34
    //function sub_00422C5C(?:?; ?:?):?;//00422C5C
    procedure sub_00422CD4;//00422CD4
    procedure sub_00422D00;//00422D00
    procedure Clear;//00422D2C
    //procedure sub_00422D80(?:?);//00422D80
    //procedure sub_00422E20(?:?; ?:?);//00422E20
    //procedure sub_00422E9C(?:TStringList; ?:?; ?:?);//00422E9C
    //function sub_00422F08(?:?; ?:?):?;//00422F08
    //procedure sub_00422FA0(?:?; ?:?);//00422FA0
    //function sub_00422FEC:?;//00422FEC
    //function sub_00423008:?;//00423008
    //function sub_00423024(?:?):?;//00423024
    procedure sub_0042306C(?:TStringList);//0042306C
    //function sub_004230C4(?:?):?;//004230C4
    //procedure sub_00423110(?:?; ?:?);//00423110
    //procedure sub_00423138(?:?; ?:?; ?:?);//00423138
    //procedure sub_004231A0(?:?; ?:?; ?:?);//004231A0
    //procedure sub_00423248(?:?; ?:?);//00423248
    //procedure sub_004232C0(?:?; ?:?);//004232C0
    //procedure sub_0042331C(?:TStringList; ?:?; ?:?; ?:?);//0042331C
    //procedure sub_004233E0(?:?);//004233E0
    //procedure sub_0042340C(?:TStrings; ?:?);//0042340C
    //procedure sub_00423444(?:?);//00423444
    //function sub_00423474(?:?; ?:?; ?:?):?;//00423474
    procedure sub_004234B0;//004234B0
    //procedure sub_004234CC(?:?);//004234CC
    //function sub_0042351C(?:?; ?:?):?;//0042351C
    procedure sub_004235A0;//004235A0
    //procedure sub_004235EC(?:?);//004235EC
    //procedure sub_004235FC(?:TMemoryStream; ?:?; ?:?);//004235FC
    //procedure sub_00423618(?:?; ?:?);//00423618
    procedure RaiseException;//00423670
    //function sub_004236BC(?:?; ?:?):?;//004236BC
    //procedure sub_00423748(?:?; ?:?; ?:?);//00423748
    //function sub_00423940(?:TCustomMemoryStream; ?:TCustomListView):?;//00423940
    procedure sub_004239A4(?:TMemoryStream; ?:TComponent);//004239A4
    //procedure sub_004239C4(?:?; ?:?; ?:?);//004239C4
    constructor sub_00423A28;//00423A28
    //function sub_00423A78(?:?; ?:?):?;//00423A78
    //function sub_00423AB0(?:?; ?:?):?;//00423AB0
    //procedure sub_00423AE8(?:?; ?:?; ?:?);//00423AE8
    //procedure sub_00423B1C(?:?);//00423B1C
    //procedure sub_00423B3C(?:?; ?:?);//00423B3C
    //constructor sub_00423BBC(?:?; ?:?);//00423BBC
    destructor Destroy;//00423D1C
    procedure sub_00423D64(?:TCustomMemoryStream; ?:Pointer; ?:Longint);//00423D64
    //function sub_00423D8C(?:?; ?:?):?;//00423D8C
    //function sub_00423DFC(?:?; ?:?):?;//00423DFC
    procedure sub_00423E54(?:TResourceStream; ?:TStream);//00423E54
    procedure sub_00423E84(?:TCustomMemoryStream; ?:AnsiString);//00423E84
    destructor Destroy;//00423EE4
    procedure sub_00423F20(?:TMemoryStream);//00423F20
    procedure sub_00423F44(?:TMemoryStream; ?:TFileStream);//00423F44
    procedure sub_00423F8C(?:TMemoryStream; ?:AnsiString);//00423F8C
    //procedure sub_00423FE8(?:TMemoryStream; ?:?);//00423FE8
    //procedure sub_0042401C(?:?);//0042401C
    //function sub_00424064(?:?):?;//00424064
    //function sub_0042412C(?:?; ?:?):?;//0042412C
    procedure Error;//0042421C
    //procedure sub_0042428C(?:TResourceStream; ?:?; ?:PChar; ?:?);//0042428C
    destructor Destroy;//00424318
    //function sub_00424360(?:?; ?:?):?;//00424360
    destructor Destroy;//004243EC
    //procedure sub_0042442C(?:?);//0042442C
    //function sub_00424594(?:Pointer):?;//00424594
    //procedure sub_00424600(?:?);//00424600
    //procedure sub_00424624(?:?);//00424624
    //function sub_004246B8(?:?; ?:AnsiString):?;//004246B8
    //procedure sub_004247C0(?:?; ?:?);//004247C0
    //procedure sub_004247FC(?:?; ?:?);//004247FC
    procedure sub_00424850;//00424850
    procedure RemoveFixupReferences(Root:TComponent; const RootName:AnsiString);//00424A38
    //procedure sub_00424AF4(?:?);//00424AF4
    procedure ReadError(Ident:PResStringRec);//00424B88
    procedure sub_00424BA8;//00424BA8
    //procedure sub_00424BB8(?:?);//00424BB8
    //function sub_00424BEC(?:?; ?:?):?;//00424BEC
    destructor Destroy;//00424C18
    //procedure sub_00424C68(?:?; ?:?);//00424C68
    //procedure sub_00424C98(?:?; ?:?; ?:?; ?:?);//00424C98
    //procedure sub_00424CDC(?:?; ?:?; ?:?; ?:?);//00424CDC
    //function sub_00424DE0(?:?):?;//00424DE0
    //function sub_00424E18(?:?; ?:?):?;//00424E18
    procedure sub_00424E90(?:Pointer);//00424E90
    //procedure sub_00424F2C(?:?);//00424F2C
    procedure sub_00425060;//00425060
    //procedure sub_00425090(?:?);//00425090
    //function sub_004250F0(?:?; ?:?; ?:?):?;//004250F0
    //function sub_004251A0(?:TReader):?;//004251A0
    //procedure sub_004251F0(?:?; ?:?);//004251F0
    //function sub_004252B0(?:?):?;//004252B0
    //function sub_004252D0(?:?):?;//004252D0
    //procedure sub_00425410(?:?; ?:?);//00425410
    //procedure sub_0042545C(?:?; ?:?);//0042545C
    //procedure sub_004254E4(?:?; ?:?; ?:?);//004254E4
    //function sub_0042556C(?:?):?;//0042556C
    function Recover(var Component:TComponent):Boolean;//00425594
    //procedure sub_00425600(?:?);//00425600
    procedure SetCompName;//00425714
    //procedure sub_004257B4(?:?);//004257B4
    //function sub_0042585C(?:?; ?:?):?;//0042585C
    //procedure sub_00425A98(?:?; ?:TComponent);//00425A98
    //procedure sub_00425B0C(?:?; ?:?);//00425B0C
    //procedure sub_00425BE0(?:?);//00425BE0
    //procedure sub_00425C2C(?:?);//00425C2C
    //procedure sub_00425C78(?:?);//00425C78
    //procedure sub_00425CCC(?:?);//00425CCC
    //function sub_00425E24(?:TReader):?;//00425E24
    //function sub_00425E94(?:?):?;//00425E94
    //procedure sub_00425F04(?:?; ?:?);//00425F04
    //procedure sub_00425F60(?:Exception; ?:?);//00425F60
    procedure PropPathError;//00426060
    //procedure sub_0042607C(?:?; ?:?);//0042607C
    //procedure sub_00426288(?:Longint; ?:PPropInfo; ?:?);//00426288
    //procedure sub_004262D4(?:Longint; ?:PPropInfo; ?:?; ?:?);//004262D4
    procedure SetVariantReference;//0042631C
    procedure SetInterfaceReference;//00426378
    //procedure sub_00426438(?:?; ?:Longint; ?:PPropInfo);//00426438
    //procedure sub_00426750(?:?; ?:?);//00426750
    //function sub_004267C0(?:TReader; ?:?):?;//004267C0
    //function sub_00426AF4(?:?; ?:PPropInfo):?;//00426AF4
    procedure sub_00426BBC(?:TReader);//00426BBC
    //procedure sub_00426CFC(?:?; ?:?);//00426CFC
    procedure SkipList;//00426E64
    procedure SkipBinary(BytesPerUnit:Integer);//00426E90
    procedure SkipCollection;//00426EC4
    //procedure sub_004270D4(?:?);//004270D4
    //procedure sub_00427124(?:?; ?:?);//00427124
    //function sub_004271D8(?:?; ?:?):?;//004271D8
    //procedure sub_004272A0(?:?);//004272A0
    //procedure sub_004272CC(?:?; ?:?);//004272CC
    //function sub_0042730C(?:?; ?:?):?;//0042730C
    //procedure sub_00427400(?:?; ?:?);//00427400
    destructor Destroy;//004277E0
    //procedure sub_0042783C(?:?; ?:?; ?:?; ?:?);//0042783C
    //procedure sub_00427874(?:?; ?:?; ?:?; ?:?; ?:?);//00427874
    //function sub_004278B0(?:TWriter):?;//004278B0
    procedure sub_004278D4;//004278D4
    //procedure sub_004278E8(?:TWriter; ?:?);//004278E8
    //procedure sub_00427944(?:?);//00427944
    //procedure sub_004279B4(?:TWriter; ?:?);//004279B4
    //procedure sub_00427A68(?:?; ?:?);//00427A68
    //procedure sub_00427A94(?:?; ?:?);//00427A94
    //procedure sub_00427AEC(?:TWriter; ?:?);//00427AEC
    //function sub_00427B98(?:?; ?:?):?;//00427B98
    //procedure sub_00427BF8(?:TWriter; ?:?);//00427BF8
    //procedure sub_00427D68(?:?);//00427D68
    //procedure sub_0042817C(?:TWriter; ?:?; ?:?);//0042817C
    //procedure sub_004281F0(?:?; ?:?);//004281F0
    //procedure sub_00428218(?:?; ?:?);//00428218
    //procedure sub_00428240(?:?; ?:?);//00428240
    procedure sub_00428340(?:TWriter; ?:Integer);//00428340
    procedure sub_0042841C(?:TWriter);//0042841C
    procedure sub_00428430(?:TWriter);//00428430
    //procedure sub_00428444(?:TWriter; ?:?; ?:Integer);//00428444
    function AncestorIsValid(Ancestor:TPersistent; Root:TComponent; RootAncestor:TComponent):Boolean;//00428568
    //function sub_004285AC(?:?):?;//004285AC
    //function sub_00428618(?:?):?;//00428618
    //function sub_00428678(?:?):?;//00428678
    //function sub_004286D8(?:?):?;//004286D8
    //function sub_00428768(?:Longint; ?:?; ?:?):?;//00428768
    //function sub_004287C4(?:?):?;//004287C4
    //function sub_0042882C(?:?):?;//0042882C
    //function sub_004288B4(?:?):?;//004288B4
    //function sub_00428984(?:?):?;//00428984
    //function sub_00428A68(?:?):?;//00428A68
    //function sub_00428AEC(?:?):?;//00428AEC
    function IsDefaultPropertyValue(Instance:TObject; PropInfo:PPropInfo; OnGetLookupInfo:TGetLookupInfoEvent):Boolean;//00428B84
    procedure WritePropPath;//00428CF8
    //procedure sub_00428D4C(?:?; ?:?);//00428D4C
    //procedure sub_00428DF0(?:?; ?:?; ?:?);//00428DF0
    procedure WriteCollectionProp(Collection:TCollection);//00428E6C
    procedure WriteOrdProp;//00428F14
    procedure WriteFloatProp;//00428FE0
    procedure WriteInt64Prop;//00429020
    procedure WriteStrProp;//0042905C
    //function sub_004290BC(?:?; ?:?):?;//004290BC
    function GetComponentValue(Component:TComponent):AnsiString;//004290F4
    procedure WriteObjectProp;//0042925C
    procedure WriteInterfaceProp;//00429468
    procedure WriteMethodProp;//00429544
    procedure WriteVariantProp;//004295EC
    procedure sub_00429C04(?:TWriter);//00429C04
    procedure sub_00429C20(?:TWriter; ?:AnsiString);//00429C20
    //procedure sub_00429C70(?:?; ?:AnsiString; ?:?);//00429C70
    //procedure sub_00429D20(?:?; ?:AnsiString);//00429D20
    procedure BinToHex(Buffer:PChar; Text:PChar; BufSize:Integer);//00429EA0
    //function sub_00429F08(?:PChar; ?:?; ?:?):?;//00429F08
    procedure InitThreadSynchronization;//00429F84
    procedure DoneThreadSynchronization;//00429FBC
    procedure sub_00429FD8;//00429FD8
    //procedure sub_00429FE8(?:?);//00429FE8
    //function sub_0042A00C(?:?):?;//0042A00C
    constructor sub_0042A1B0;//0042A1B0
    destructor Destroy;//0042A20C
    procedure BeforeDestruction;//0042A2B0
    procedure sub_0042A2CC(?:TComponent; ?:TComponent);//0042A2CC
    //procedure sub_0042A3C4(?:?; ?:TComponent);//0042A3C4
    //procedure sub_0042A408(?:?; ?:?);//0042A408
    //procedure sub_0042A450(?:?; ?:TComponent);//0042A450
    //procedure sub_0042A4C0(?:?; ?:?);//0042A4C0
    //procedure sub_0042A508(?:?);//0042A508
    procedure sub_0042A578(?:Pointer);//0042A578
    //procedure sub_0042A5D4(?:?; ?:?);//0042A5D4
    procedure sub_0042A61C(?:TComponent; ?:TComponent);//0042A61C
    //procedure sub_0042A644(?:?; ?:?);//0042A644
    procedure DefineProperties(Filer:TFiler);//0042A6CC
    procedure sub_0042A774;//0042A774
    //procedure sub_0042A788(?:?);//0042A788
    procedure sub_0042A79C;//0042A79C
    procedure sub_0042A7B4;//0042A7B4
    //procedure sub_00420C04(?:?);//0042A7CC
    procedure sub_00420CBC;//0042A7EC
    //procedure sub_0042A808(?:?; ?:?);//0042A808
    procedure sub_0042A81C;//0042A81C
    //procedure sub_0042A834(?:?);//0042A834
    procedure sub_0042A844;//0042A844
    procedure sub_0042A858;//0042A858
    procedure sub_0042A86C;//0042A86C
    procedure sub_0042A880;//0042A880
    //procedure sub_0042A88C(?:?);//0042A88C
    //procedure sub_0042A8A8(?:?);//0042A8A8
    //procedure sub_0042A8C4(?:?; ?:?; ?:?);//0042A8C4
    //procedure sub_0042A958(?:?);//0042A958
    //procedure sub_0042A97C(?:?);//0042A97C
    //function sub_0042A98C(?:TComponent; ?:AnsiString):?;//0042A98C
    procedure SetName(Value:TComponentName);//0042A9F8
    procedure sub_0042AAB0(?:TComponent; ?:TComponentName);//0042AAB0
    //function sub_0042AAD0(?:TComponent; ?:?):?;//0042AAD0
    //function sub_0042AB10(?:TComponent):?;//0042AB10
    //procedure sub_0042AB3C(?:?; ?:?);//0042AB3C
    //procedure sub_0042ABC8(?:TComponent; ?:?; ?:?);//0042ABC8
    //procedure sub_0042AC30(?:TComponent; ?:?);//0042AC30
    //procedure sub_0042AC94(?:?);//0042AC94
    //procedure sub_0042ACC8(?:?);//0042ACC8
    //procedure sub_0042ACFC(?:TComponent; ?:?);//0042ACFC
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;//0042AD24
    //procedure sub_0042AD6C(?:?; ?:?);//0042AD6C
    //function sub_0042AD84(?:?; ?:?):?;//0042AD84
    //function sub_0042ADD4(?:?):?;//0042ADD4
    //function sub_0042AE04(?:?):?;//0042AE04
    //function sub_0042AE34(?:?):?;//0042AE34
    constructor sub_0042AE4C;//0042AE4C
    //procedure sub_0042AE9C(?:?);//0042AE9C
    destructor Destroy;//0042AEAC
    procedure sub_0042AEF4;//0042AEF4
    //function sub_0042AF1C(?:?):?;//0042AF1C
    //procedure sub_0042AF54(?:?);//0042AF54
    //function sub_0042AFA0:?;//0042AFA0
    procedure sub_0042AFB4;//0042AFB4
    //function sub_0042AFC0:?;//0042AFC0
    constructor sub_0042AFE0;//0042AFE0
    destructor Destroy;//0042B03C
    //function sub_0042B0B4(?:?):?;//0042B0B4
    //procedure sub_0042B0CC(?:?);//0042B0CC
    //procedure sub_0042B0DC(?:?; ?:?);//0042B0DC
    //procedure sub_0042B118(?:?);//0042B118
    procedure sub_0042B128;//0042B128
    //function sub_0042B15C:?;//0042B15C
    //procedure SetOnExecute(Value:TNotifyEvent; ?:?; ?:?);//0042B190
    procedure sub_0042B208;//0042B208
    //procedure sub_0042B22C(?:?; ?:TBasicActionLink);//0042B22C
    procedure sub_0042B254(?:TBasicAction; ?:TBasicActionLink);//0042B254
    //procedure sub_0042B2B0(?:TBasicAction; ?:?);//0042B2B0
    destructor Destroy;//0042B35C
    //function sub_0042B3AC(?:?; ?:?; ?:?):?;//0042B3AC
    //function sub_0042B428(?:?; ?:?; ?:?):?;//0042B428
    //function sub_0042B4A4(?:?; ?:?; ?:?):?;//0042B4A4
    //function sub_0042B534(?:?; ?:?):?;//0042B534
    //function sub_0042B5A4(?:?; ?:?; ?:?; ?:?; ?:?):?;//0042B5A4
    //function sub_0042B7C8:?;//0042B7C8
    //function sub_0042B7DC:?;//0042B7DC
    //function sub_0042B7F0:?;//0042B7F0
    //function sub_0042B804:?;//0042B804
    //function sub_0042B818(?:?):?;//0042B818
    //function sub_0042B8B8:?;//0042B8B8
    procedure FreeIntConstList;//0042B8D8
    procedure ModuleUnload(Instance:Longint);//0042B954
    function StdWndProc(Window:HWND; Message:Longint; WParam:Longint; LParam:Longint):Longint; stdcall;//0042B968
    //function sub_0042B988(?:?; ?:Longint):?;//0042B988
    //function sub_0042B9AC(?:?; ?:?):?;//0042B9AC
    procedure sub_0042BA8C(?:Longint);//0042BA8C
    procedure _NF__E7C;//0042BAB0
    //function sub_0042BAC0(?:?; ?:?; ?:?):?;//0042BAC0
    procedure sub_0042BB7C(?:HWND);//0042BB7C

implementation

//0041E690
function Point(AX:Integer; AY:Integer):TPoint;
begin
{*
 0041E690    push        ebp
 0041E691    mov         ebp,esp
 0041E693    add         esp,0FFFFFFF4
 0041E696    mov         dword ptr [ebp-0C],ecx
 0041E699    mov         dword ptr [ebp-8],edx
 0041E69C    mov         dword ptr [ebp-4],eax
 0041E69F    mov         ecx,dword ptr [ebp-0C]
 0041E6A2    mov         edx,dword ptr [ebp-8]
 0041E6A5    mov         eax,dword ptr [ebp-4]
 0041E6A8    call        00407570
 0041E6AD    mov         esp,ebp
 0041E6AF    pop         ebp
 0041E6B0    ret
*}
end;

//0041E6B4
{*function sub_0041E6B4(?:?; ?:?):?;
begin
 0041E6B4    push        ebp
 0041E6B5    mov         ebp,esp
 0041E6B7    add         esp,0FFFFFFF8
 0041E6BA    mov         word ptr [ebp-4],dx
 0041E6BE    mov         word ptr [ebp-2],ax
 0041E6C2    mov         ax,word ptr [ebp-2]
 0041E6C6    mov         word ptr [ebp-8],ax
 0041E6CA    mov         ax,word ptr [ebp-4]
 0041E6CE    mov         word ptr [ebp-6],ax
 0041E6D2    mov         eax,dword ptr [ebp-8]
 0041E6D5    pop         ecx
 0041E6D6    pop         ecx
 0041E6D7    pop         ebp
 0041E6D8    ret
end;*}

//0041E6DC
{*function sub_0041E6DC(?:?; ?:?):?;
begin
 0041E6DC    push        ebp
 0041E6DD    mov         ebp,esp
 0041E6DF    add         esp,0FFFFFFF4
 0041E6E2    mov         dword ptr [ebp-8],edx
 0041E6E5    mov         dword ptr [ebp-4],eax
 0041E6E8    mov         eax,dword ptr [ebp-4]
 0041E6EB    mov         eax,dword ptr [eax]
 0041E6ED    mov         edx,dword ptr [ebp-8]
 0041E6F0    cmp         eax,dword ptr [edx]
>0041E6F2    jne         0041E702
 0041E6F4    mov         eax,dword ptr [ebp-4]
 0041E6F7    mov         eax,dword ptr [eax+4]
 0041E6FA    mov         edx,dword ptr [ebp-8]
 0041E6FD    cmp         eax,dword ptr [edx+4]
>0041E700    je          0041E706
 0041E702    xor         eax,eax
>0041E704    jmp         0041E708
 0041E706    mov         al,1
 0041E708    mov         byte ptr [ebp-9],al
 0041E70B    mov         al,byte ptr [ebp-9]
 0041E70E    mov         esp,ebp
 0041E710    pop         ebp
 0041E711    ret
end;*}

//0041E714
{*procedure sub_0041E714(?:Integer; ?:Integer; ?:Integer; ?:?; ?:?);
begin
 0041E714    push        ebp
 0041E715    mov         ebp,esp
 0041E717    add         esp,0FFFFFFF4
 0041E71A    mov         dword ptr [ebp-0C],ecx
 0041E71D    mov         dword ptr [ebp-8],edx
 0041E720    mov         dword ptr [ebp-4],eax
 0041E723    mov         eax,dword ptr [ebp+0C]
 0041E726    push        eax
 0041E727    mov         eax,dword ptr [ebp+8]
 0041E72A    push        eax
 0041E72B    mov         ecx,dword ptr [ebp-0C]
 0041E72E    mov         edx,dword ptr [ebp-8]
 0041E731    mov         eax,dword ptr [ebp-4]
 0041E734    call        00407538
 0041E739    mov         esp,ebp
 0041E73B    pop         ebp
 0041E73C    ret         8
end;*}

//0041E740
{*procedure sub_0041E740(?:TPoint; ?:Integer; ?:?; ?:?; ?:?);
begin
 0041E740    push        ebp
 0041E741    mov         ebp,esp
 0041E743    add         esp,0FFFFFFF4
 0041E746    mov         dword ptr [ebp-0C],ecx
 0041E749    mov         dword ptr [ebp-8],edx
 0041E74C    mov         dword ptr [ebp-4],eax
 0041E74F    mov         eax,dword ptr [ebp+0C]
 0041E752    push        eax
 0041E753    mov         eax,dword ptr [ebp+8]
 0041E756    push        eax
 0041E757    mov         ecx,dword ptr [ebp-0C]
 0041E75A    mov         edx,dword ptr [ebp-8]
 0041E75D    mov         eax,dword ptr [ebp-4]
 0041E760    call        004076C4
 0041E765    mov         esp,ebp
 0041E767    pop         ebp
 0041E768    ret         8
end;*}

//0041E76C
{*function sub_0041E76C(?:TPoint):?;
begin
 0041E76C    push        ebp
 0041E76D    mov         ebp,esp
 0041E76F    add         esp,0FFFFFFF8
 0041E772    mov         dword ptr [ebp-4],eax
 0041E775    mov         eax,dword ptr [ebp-4]
 0041E778    cmp         dword ptr [eax],0FFFFFFFF
>0041E77B    jne         0041E786
 0041E77D    mov         eax,dword ptr [ebp-4]
 0041E780    cmp         dword ptr [eax+4],0FFFFFFFF
>0041E784    je          0041E78A
 0041E786    xor         eax,eax
>0041E788    jmp         0041E78C
 0041E78A    mov         al,1
 0041E78C    mov         byte ptr [ebp-5],al
 0041E78F    mov         al,byte ptr [ebp-5]
 0041E792    pop         ecx
 0041E793    pop         ecx
 0041E794    pop         ebp
 0041E795    ret
end;*}

//0041E798
{*function sub_0041E798(?:?):?;
begin
 0041E798    push        ebp
 0041E799    mov         ebp,esp
 0041E79B    add         esp,0FFFFFFF8
 0041E79E    mov         dword ptr [ebp-4],eax
 0041E7A1    cmp         word ptr [ebp-4],0FFFFFFFF
>0041E7A6    jne         0041E7AF
 0041E7A8    cmp         word ptr [ebp-2],0FFFFFFFF
>0041E7AD    je          0041E7B3
 0041E7AF    xor         eax,eax
>0041E7B1    jmp         0041E7B5
 0041E7B3    mov         al,1
 0041E7B5    mov         byte ptr [ebp-5],al
 0041E7B8    mov         al,byte ptr [ebp-5]
 0041E7BB    pop         ecx
 0041E7BC    pop         ecx
 0041E7BD    pop         ebp
 0041E7BE    ret
end;*}

//0041E870
{*procedure sub_0041E870(?:?; ?:?);
begin
 0041E870    push        ebp
 0041E871    mov         ebp,esp
 0041E873    add         esp,0FFFFFFF8
 0041E876    mov         dword ptr [ebp-8],edx
 0041E879    mov         dword ptr [ebp-4],eax
 0041E87C    mov         edx,dword ptr [ebp-8]
 0041E87F    mov         eax,dword ptr [ebp-4]
 0041E882    mov         eax,dword ptr [eax+0C]
 0041E885    call        TList.Add
 0041E88A    pop         ecx
 0041E88B    pop         ecx
 0041E88C    pop         ebp
 0041E88D    ret
end;*}

//0041E890
{*function sub_0041E890(?:?; ?:?):?;
begin
 0041E890    push        ebp
 0041E891    mov         ebp,esp
 0041E893    add         esp,0FFFFFFE8
 0041E896    mov         dword ptr [ebp-8],edx
 0041E899    mov         dword ptr [ebp-4],eax
 0041E89C    xor         eax,eax
 0041E89E    mov         dword ptr [ebp-0C],eax
 0041E8A1    mov         eax,dword ptr [ebp-4]
 0041E8A4    mov         eax,dword ptr [eax+0C]
 0041E8A7    mov         eax,dword ptr [eax+8]
 0041E8AA    dec         eax
 0041E8AB    test        eax,eax
>0041E8AD    jl          0041E8FD
 0041E8AF    inc         eax
 0041E8B0    mov         dword ptr [ebp-18],eax
 0041E8B3    mov         dword ptr [ebp-10],0
 0041E8BA    mov         eax,dword ptr [ebp-4]
 0041E8BD    mov         eax,dword ptr [eax+0C]
 0041E8C0    mov         edx,dword ptr [ebp-10]
 0041E8C3    call        TList.Get
 0041E8C8    mov         dword ptr [ebp-14],eax
 0041E8CB    mov         edx,dword ptr [ebp-14]
 0041E8CE    mov         eax,dword ptr [ebp-8]
 0041E8D1    call        TObject.InheritsFrom
 0041E8D6    test        al,al
>0041E8D8    je          0041E8F5
 0041E8DA    cmp         dword ptr [ebp-0C],0
>0041E8DE    je          0041E8EF
 0041E8E0    mov         edx,dword ptr [ebp-0C]
 0041E8E3    mov         eax,dword ptr [ebp-14]
 0041E8E6    call        TObject.InheritsFrom
 0041E8EB    test        al,al
>0041E8ED    je          0041E8F5
 0041E8EF    mov         eax,dword ptr [ebp-14]
 0041E8F2    mov         dword ptr [ebp-0C],eax
 0041E8F5    inc         dword ptr [ebp-10]
 0041E8F8    dec         dword ptr [ebp-18]
>0041E8FB    jne         0041E8BA
 0041E8FD    mov         eax,dword ptr [ebp-0C]
 0041E900    mov         esp,ebp
 0041E902    pop         ebp
 0041E903    ret
end;*}

//0041E904
{*function sub_0041E904(?:TRegGroup; ?:Pointer; ?:?; ?:?):?;
begin
 0041E904    push        ebp
 0041E905    mov         ebp,esp
 0041E907    add         esp,0FFFFFFE8
 0041E90A    mov         dword ptr [ebp-0C],ecx
 0041E90D    mov         dword ptr [ebp-8],edx
 0041E910    mov         dword ptr [ebp-4],eax
 0041E913    cmp         dword ptr [ebp-8],0
>0041E917    je          0041E929
 0041E919    mov         edx,dword ptr [ebp+8]
 0041E91C    mov         eax,dword ptr [ebp-8]
 0041E91F    call        0041E890
 0041E924    mov         dword ptr [ebp-14],eax
>0041E927    jmp         0041E92E
 0041E929    xor         eax,eax
 0041E92B    mov         dword ptr [ebp-14],eax
 0041E92E    cmp         dword ptr [ebp-0C],0
>0041E932    je          0041E944
 0041E934    mov         edx,dword ptr [ebp+8]
 0041E937    mov         eax,dword ptr [ebp-0C]
 0041E93A    call        0041E890
 0041E93F    mov         dword ptr [ebp-18],eax
>0041E942    jmp         0041E949
 0041E944    xor         eax,eax
 0041E946    mov         dword ptr [ebp-18],eax
 0041E949    cmp         dword ptr [ebp-14],0
>0041E94D    jne         0041E964
 0041E94F    cmp         dword ptr [ebp-18],0
>0041E953    jne         0041E95C
 0041E955    xor         eax,eax
 0041E957    mov         dword ptr [ebp-10],eax
>0041E95A    jmp         0041E98F
 0041E95C    mov         eax,dword ptr [ebp-0C]
 0041E95F    mov         dword ptr [ebp-10],eax
>0041E962    jmp         0041E98F
 0041E964    cmp         dword ptr [ebp-18],0
>0041E968    jne         0041E972
 0041E96A    mov         eax,dword ptr [ebp-8]
 0041E96D    mov         dword ptr [ebp-10],eax
>0041E970    jmp         0041E98F
 0041E972    mov         edx,dword ptr [ebp-18]
 0041E975    mov         eax,dword ptr [ebp-14]
 0041E978    call        TObject.InheritsFrom
 0041E97D    test        al,al
>0041E97F    je          0041E989
 0041E981    mov         eax,dword ptr [ebp-8]
 0041E984    mov         dword ptr [ebp-10],eax
>0041E987    jmp         0041E98F
 0041E989    mov         eax,dword ptr [ebp-0C]
 0041E98C    mov         dword ptr [ebp-10],eax
 0041E98F    mov         eax,dword ptr [ebp-10]
 0041E992    mov         esp,ebp
 0041E994    pop         ebp
 0041E995    ret         4
end;*}

//0041E998
constructor TRegGroup.Create;
begin
{*
 0041E998    push        ebp
 0041E999    mov         ebp,esp
 0041E99B    add         esp,0FFFFFFF4
 0041E99E    test        dl,dl
>0041E9A0    je          0041E9AA
 0041E9A2    add         esp,0FFFFFFF0
 0041E9A5    call        @ClassCreate
 0041E9AA    mov         dword ptr [ebp-0C],ecx
 0041E9AD    mov         byte ptr [ebp-5],dl
 0041E9B0    mov         dword ptr [ebp-4],eax
 0041E9B3    xor         edx,edx
 0041E9B5    mov         eax,dword ptr [ebp-4]
 0041E9B8    call        TObject.Create
 0041E9BD    mov         dl,1
 0041E9BF    mov         eax,[0041D46C];TList
 0041E9C4    call        TObject.Create;TList.Create
 0041E9C9    mov         edx,dword ptr [ebp-4]
 0041E9CC    mov         dword ptr [edx+4],eax
 0041E9CF    mov         dl,1
 0041E9D1    mov         eax,[0041DB24];TStringList
 0041E9D6    call        TObject.Create;TStringList.Create
 0041E9DB    mov         edx,dword ptr [ebp-4]
 0041E9DE    mov         dword ptr [edx+8],eax
 0041E9E1    mov         dl,1
 0041E9E3    mov         eax,[0041D46C];TList
 0041E9E8    call        TObject.Create;TList.Create
 0041E9ED    mov         edx,dword ptr [ebp-4]
 0041E9F0    mov         dword ptr [edx+0C],eax
 0041E9F3    mov         eax,dword ptr [ebp-4]
 0041E9F6    mov         eax,dword ptr [eax+0C]
 0041E9F9    mov         edx,dword ptr [ebp-0C]
 0041E9FC    call        TList.Add
 0041EA01    mov         eax,dword ptr [ebp-4]
 0041EA04    cmp         byte ptr [ebp-5],0
>0041EA08    je          0041EA19
 0041EA0A    call        @AfterConstruction
 0041EA0F    pop         dword ptr fs:[0]
 0041EA16    add         esp,0C
 0041EA19    mov         eax,dword ptr [ebp-4]
 0041EA1C    mov         esp,ebp
 0041EA1E    pop         ebp
 0041EA1F    ret
*}
end;

//0041EA74
{*function sub_0041EA74(?:Pointer; ?:AnsiString):?;
begin
 0041EA74    push        ebp
 0041EA75    mov         ebp,esp
 0041EA77    add         esp,0FFFFFFEC
 0041EA7A    mov         dword ptr [ebp-8],edx
 0041EA7D    mov         dword ptr [ebp-4],eax
 0041EA80    mov         eax,dword ptr [ebp-4]
 0041EA83    mov         eax,dword ptr [eax+4]
 0041EA86    mov         eax,dword ptr [eax+8]
 0041EA89    dec         eax
 0041EA8A    test        eax,eax
>0041EA8C    jl          0041EAC1
 0041EA8E    inc         eax
 0041EA8F    mov         dword ptr [ebp-14],eax
 0041EA92    mov         dword ptr [ebp-10],0
 0041EA99    mov         eax,dword ptr [ebp-4]
 0041EA9C    mov         eax,dword ptr [eax+4]
 0041EA9F    mov         edx,dword ptr [ebp-10]
 0041EAA2    call        TList.Get
 0041EAA7    mov         dword ptr [ebp-0C],eax
 0041EAAA    mov         edx,dword ptr [ebp-8]
 0041EAAD    mov         eax,dword ptr [ebp-0C]
 0041EAB0    call        TObject.ClassNameIs
 0041EAB5    test        al,al
>0041EAB7    jne         0041EAF0
 0041EAB9    inc         dword ptr [ebp-10]
 0041EABC    dec         dword ptr [ebp-14]
>0041EABF    jne         0041EA99
 0041EAC1    mov         eax,dword ptr [ebp-4]
 0041EAC4    mov         eax,dword ptr [eax+8]
 0041EAC7    mov         edx,dword ptr [ebp-8]
 0041EACA    mov         ecx,dword ptr [eax]
 0041EACC    call        dword ptr [ecx+54]
 0041EACF    mov         dword ptr [ebp-10],eax
 0041EAD2    cmp         dword ptr [ebp-10],0
>0041EAD6    jl          0041EAEB
 0041EAD8    mov         eax,dword ptr [ebp-4]
 0041EADB    mov         eax,dword ptr [eax+8]
 0041EADE    mov         edx,dword ptr [ebp-10]
 0041EAE1    mov         ecx,dword ptr [eax]
 0041EAE3    call        dword ptr [ecx+18]
 0041EAE6    mov         dword ptr [ebp-0C],eax
>0041EAE9    jmp         0041EAF0
 0041EAEB    xor         eax,eax
 0041EAED    mov         dword ptr [ebp-0C],eax
 0041EAF0    mov         eax,dword ptr [ebp-0C]
 0041EAF3    mov         esp,ebp
 0041EAF5    pop         ebp
 0041EAF6    ret
end;*}

//0041EAF8
{*function sub_0041EAF8(?:Pointer; ?:TPersistentClass):?;
begin
 0041EAF8    push        ebp
 0041EAF9    mov         ebp,esp
 0041EAFB    add         esp,0FFFFFFEC
 0041EAFE    mov         dword ptr [ebp-8],edx
 0041EB01    mov         dword ptr [ebp-4],eax
 0041EB04    mov         byte ptr [ebp-9],1
 0041EB08    mov         eax,dword ptr [ebp-4]
 0041EB0B    mov         eax,dword ptr [eax+0C]
 0041EB0E    mov         eax,dword ptr [eax+8]
 0041EB11    dec         eax
 0041EB12    test        eax,eax
>0041EB14    jl          0041EB45
 0041EB16    inc         eax
 0041EB17    mov         dword ptr [ebp-14],eax
 0041EB1A    mov         dword ptr [ebp-10],0
 0041EB21    mov         eax,dword ptr [ebp-4]
 0041EB24    mov         eax,dword ptr [eax+0C]
 0041EB27    mov         edx,dword ptr [ebp-10]
 0041EB2A    call        TList.Get
 0041EB2F    mov         edx,eax
 0041EB31    mov         eax,dword ptr [ebp-8]
 0041EB34    call        TObject.InheritsFrom
 0041EB39    test        al,al
>0041EB3B    jne         0041EB49
 0041EB3D    inc         dword ptr [ebp-10]
 0041EB40    dec         dword ptr [ebp-14]
>0041EB43    jne         0041EB21
 0041EB45    mov         byte ptr [ebp-9],0
 0041EB49    mov         al,byte ptr [ebp-9]
 0041EB4C    mov         esp,ebp
 0041EB4E    pop         ebp
 0041EB4F    ret
end;*}

//0041EB50
{*procedure sub_0041EB50(?:?; ?:?);
begin
 0041EB50    push        ebp
 0041EB51    mov         ebp,esp
 0041EB53    add         esp,0FFFFFEEC
 0041EB59    xor         ecx,ecx
 0041EB5B    mov         dword ptr [ebp-0C],ecx
 0041EB5E    mov         dword ptr [ebp-8],edx
 0041EB61    mov         dword ptr [ebp-4],eax
 0041EB64    xor         eax,eax
 0041EB66    push        ebp
 0041EB67    push        41EBF1
 0041EB6C    push        dword ptr fs:[eax]
 0041EB6F    mov         dword ptr fs:[eax],esp
 0041EB72    lea         edx,[ebp-10C]
 0041EB78    mov         eax,dword ptr [ebp-8]
 0041EB7B    call        TObject.ClassName
 0041EB80    lea         edx,[ebp-10C]
 0041EB86    lea         eax,[ebp-0C]
 0041EB89    call        @LStrFromString
 0041EB8E    mov         edx,dword ptr [ebp-0C]
 0041EB91    mov         eax,dword ptr [ebp-4]
 0041EB94    call        0041EA74
 0041EB99    test        eax,eax
>0041EB9B    je          0041EBCD
 0041EB9D    mov         eax,dword ptr [ebp-0C]
 0041EBA0    mov         dword ptr [ebp-114],eax
 0041EBA6    mov         byte ptr [ebp-110],0B
 0041EBAD    lea         eax,[ebp-114]
 0041EBB3    push        eax
 0041EBB4    push        0
 0041EBB6    mov         ecx,dword ptr ds:[56E3FC];^SDuplicateClass:TResStringRec
 0041EBBC    mov         dl,1
 0041EBBE    mov         eax,[0041D084];EFilerError
 0041EBC3    call        Exception.CreateResFmt;EFilerError.Create
 0041EBC8    call        @RaiseExcept
 0041EBCD    mov         edx,dword ptr [ebp-8]
 0041EBD0    mov         eax,dword ptr [ebp-4]
 0041EBD3    mov         eax,dword ptr [eax+4]
 0041EBD6    call        TList.Add
 0041EBDB    xor         eax,eax
 0041EBDD    pop         edx
 0041EBDE    pop         ecx
 0041EBDF    pop         ecx
 0041EBE0    mov         dword ptr fs:[eax],edx
 0041EBE3    push        41EBF8
 0041EBE8    lea         eax,[ebp-0C]
 0041EBEB    call        @LStrClr
 0041EBF0    ret
>0041EBF1    jmp         @HandleFinally
>0041EBF6    jmp         0041EBE8
 0041EBF8    mov         esp,ebp
 0041EBFA    pop         ebp
 0041EBFB    ret
end;*}

//0041EBFC
{*function sub_0041EBFC(?:Pointer; ?:?):?;
begin
 0041EBFC    push        ebp
 0041EBFD    mov         ebp,esp
 0041EBFF    add         esp,0FFFFFFF4
 0041EC02    mov         dword ptr [ebp-8],edx
 0041EC05    mov         dword ptr [ebp-4],eax
 0041EC08    mov         edx,dword ptr [ebp-8]
 0041EC0B    mov         eax,dword ptr [ebp-4]
 0041EC0E    mov         eax,dword ptr [eax+4]
 0041EC11    call        004202BC
 0041EC16    test        eax,eax
 0041EC18    setge       byte ptr [ebp-9]
 0041EC1C    mov         al,byte ptr [ebp-9]
 0041EC1F    mov         esp,ebp
 0041EC21    pop         ebp
 0041EC22    ret
end;*}

//0041EC24
{*function sub_0041EC24(?:Pointer; ?:?):?;
begin
 0041EC24    push        ebp
 0041EC25    mov         ebp,esp
 0041EC27    add         esp,0FFFFFFF4
 0041EC2A    mov         dword ptr [ebp-8],edx
 0041EC2D    mov         dword ptr [ebp-4],eax
 0041EC30    cmp         dword ptr [ebp-8],0
>0041EC34    je          0041EC47
 0041EC36    mov         eax,dword ptr [ebp-4]
 0041EC39    call        FindHInstance
 0041EC3E    cmp         eax,dword ptr [ebp-8]
>0041EC41    je          0041EC47
 0041EC43    xor         eax,eax
>0041EC45    jmp         0041EC49
 0041EC47    mov         al,1
 0041EC49    mov         byte ptr [ebp-9],al
 0041EC4C    mov         al,byte ptr [ebp-9]
 0041EC4F    mov         esp,ebp
 0041EC51    pop         ebp
 0041EC52    ret
end;*}

//0041EC54
{*procedure sub_0041EC54(?:Pointer; ?:?);
begin
 0041EC54    push        ebp
 0041EC55    mov         ebp,esp
 0041EC57    add         esp,0FFFFFFF4
 0041EC5A    mov         dword ptr [ebp-8],edx
 0041EC5D    mov         dword ptr [ebp-4],eax
 0041EC60    mov         eax,dword ptr [ebp-4]
 0041EC63    mov         eax,dword ptr [eax+0C]
 0041EC66    mov         eax,dword ptr [eax+8]
 0041EC69    dec         eax
 0041EC6A    cmp         eax,0
>0041EC6D    jl          0041ECA3
 0041EC6F    mov         dword ptr [ebp-0C],eax
 0041EC72    mov         edx,dword ptr [ebp-0C]
 0041EC75    mov         eax,dword ptr [ebp-4]
 0041EC78    mov         eax,dword ptr [eax+0C]
 0041EC7B    call        TList.Get
 0041EC80    mov         edx,dword ptr [ebp-8]
 0041EC83    call        0041EC24
 0041EC88    test        al,al
>0041EC8A    je          0041EC9A
 0041EC8C    mov         edx,dword ptr [ebp-0C]
 0041EC8F    mov         eax,dword ptr [ebp-4]
 0041EC92    mov         eax,dword ptr [eax+0C]
 0041EC95    call        00420094
 0041EC9A    dec         dword ptr [ebp-0C]
 0041EC9D    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0041ECA1    jne         0041EC72
 0041ECA3    mov         eax,dword ptr [ebp-4]
 0041ECA6    mov         eax,dword ptr [eax+4]
 0041ECA9    mov         eax,dword ptr [eax+8]
 0041ECAC    dec         eax
 0041ECAD    cmp         eax,0
>0041ECB0    jl          0041ECE6
 0041ECB2    mov         dword ptr [ebp-0C],eax
 0041ECB5    mov         edx,dword ptr [ebp-0C]
 0041ECB8    mov         eax,dword ptr [ebp-4]
 0041ECBB    mov         eax,dword ptr [eax+4]
 0041ECBE    call        TList.Get
 0041ECC3    mov         edx,dword ptr [ebp-8]
 0041ECC6    call        0041EC24
 0041ECCB    test        al,al
>0041ECCD    je          0041ECDD
 0041ECCF    mov         edx,dword ptr [ebp-0C]
 0041ECD2    mov         eax,dword ptr [ebp-4]
 0041ECD5    mov         eax,dword ptr [eax+4]
 0041ECD8    call        00420094
 0041ECDD    dec         dword ptr [ebp-0C]
 0041ECE0    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0041ECE4    jne         0041ECB5
 0041ECE6    mov         eax,dword ptr [ebp-4]
 0041ECE9    mov         eax,dword ptr [eax+8]
 0041ECEC    mov         edx,dword ptr [eax]
 0041ECEE    call        dword ptr [edx+14]
 0041ECF1    dec         eax
 0041ECF2    cmp         eax,0
>0041ECF5    jl          0041ED2B
 0041ECF7    mov         dword ptr [ebp-0C],eax
 0041ECFA    mov         edx,dword ptr [ebp-0C]
 0041ECFD    mov         eax,dword ptr [ebp-4]
 0041ED00    mov         eax,dword ptr [eax+8]
 0041ED03    mov         ecx,dword ptr [eax]
 0041ED05    call        dword ptr [ecx+18]
 0041ED08    mov         edx,dword ptr [ebp-8]
 0041ED0B    call        0041EC24
 0041ED10    test        al,al
>0041ED12    je          0041ED22
 0041ED14    mov         edx,dword ptr [ebp-0C]
 0041ED17    mov         eax,dword ptr [ebp-4]
 0041ED1A    mov         eax,dword ptr [eax+8]
 0041ED1D    mov         ecx,dword ptr [eax]
 0041ED1F    call        dword ptr [ecx+48]
 0041ED22    dec         dword ptr [ebp-0C]
 0041ED25    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0041ED29    jne         0041ECFA
 0041ED2B    mov         esp,ebp
 0041ED2D    pop         ebp
 0041ED2E    ret
end;*}

//0041ED30
{*procedure sub_0041ED30(?:?; ?:?);
begin
 0041ED30    push        ebp
 0041ED31    mov         ebp,esp
 0041ED33    add         esp,0FFFFFFEC
 0041ED36    mov         dword ptr [ebp-8],edx
 0041ED39    mov         dword ptr [ebp-4],eax
 0041ED3C    mov         eax,dword ptr [ebp-4]
 0041ED3F    mov         eax,dword ptr [eax+20]
 0041ED42    cmp         eax,dword ptr [ebp-8]
>0041ED45    je          0041ED93
 0041ED47    mov         eax,dword ptr [ebp-4]
 0041ED4A    mov         edx,dword ptr [ebp-8]
 0041ED4D    mov         dword ptr [eax+20],edx
 0041ED50    mov         eax,dword ptr [ebp-4]
 0041ED53    mov         eax,dword ptr [eax+4]
 0041ED56    mov         eax,dword ptr [eax+8]
 0041ED59    dec         eax
 0041ED5A    test        eax,eax
>0041ED5C    jl          0041ED93
 0041ED5E    inc         eax
 0041ED5F    mov         dword ptr [ebp-10],eax
 0041ED62    mov         dword ptr [ebp-0C],0
 0041ED69    mov         eax,dword ptr [ebp-4]
 0041ED6C    mov         eax,dword ptr [eax+4]
 0041ED6F    mov         edx,dword ptr [ebp-0C]
 0041ED72    call        TList.Get
 0041ED77    mov         dword ptr [ebp-14],eax
 0041ED7A    mov         edx,dword ptr [ebp-8]
 0041ED7D    mov         eax,dword ptr [ebp-14]
 0041ED80    call        0041EAF8
 0041ED85    mov         edx,dword ptr [ebp-14]
 0041ED88    mov         byte ptr [edx+10],al
 0041ED8B    inc         dword ptr [ebp-0C]
 0041ED8E    dec         dword ptr [ebp-10]
>0041ED91    jne         0041ED69
 0041ED93    mov         esp,ebp
 0041ED95    pop         ebp
 0041ED96    ret
end;*}

//0041ED98
constructor TRegGroups.Create;
begin
{*
 0041ED98    push        ebp
 0041ED99    mov         ebp,esp
 0041ED9B    add         esp,0FFFFFFF4
 0041ED9E    test        dl,dl
>0041EDA0    je          0041EDAA
 0041EDA2    add         esp,0FFFFFFF0
 0041EDA5    call        @ClassCreate
 0041EDAA    mov         byte ptr [ebp-5],dl
 0041EDAD    mov         dword ptr [ebp-4],eax
 0041EDB0    xor         edx,edx
 0041EDB2    mov         eax,dword ptr [ebp-4]
 0041EDB5    call        TObject.Create
 0041EDBA    mov         dl,1
 0041EDBC    mov         eax,[0041D46C];TList
 0041EDC1    call        TObject.Create
 0041EDC6    mov         edx,dword ptr [ebp-4]
 0041EDC9    mov         dword ptr [edx+4],eax
 0041EDCC    mov         eax,dword ptr [ebp-4]
 0041EDCF    add         eax,8
 0041EDD2    push        eax
 0041EDD3    call        kernel32.InitializeCriticalSection
 0041EDD8    mov         ecx,dword ptr ds:[41D57C];TPersistent
 0041EDDE    mov         dl,1
 0041EDE0    mov         eax,[0041E7C0];TRegGroup
 0041EDE5    call        TRegGroup.Create
 0041EDEA    mov         dword ptr [ebp-0C],eax
 0041EDED    mov         eax,dword ptr [ebp-4]
 0041EDF0    mov         eax,dword ptr [eax+4]
 0041EDF3    mov         edx,dword ptr [ebp-0C]
 0041EDF6    call        TList.Add
 0041EDFB    mov         eax,dword ptr [ebp-0C]
 0041EDFE    mov         byte ptr [eax+10],1
 0041EE02    mov         eax,dword ptr [ebp-4]
 0041EE05    cmp         byte ptr [ebp-5],0
>0041EE09    je          0041EE1A
 0041EE0B    call        @AfterConstruction
 0041EE10    pop         dword ptr fs:[0]
 0041EE17    add         esp,0C
 0041EE1A    mov         eax,dword ptr [ebp-4]
 0041EE1D    mov         esp,ebp
 0041EE1F    pop         ebp
 0041EE20    ret
*}
end;

//0041EEA0
{*function sub_0041EEA0(?:?; ?:Pointer):?;
begin
 0041EEA0    push        ebp
 0041EEA1    mov         ebp,esp
 0041EEA3    add         esp,0FFFFFFE8
 0041EEA6    mov         dword ptr [ebp-8],edx
 0041EEA9    mov         dword ptr [ebp-4],eax
 0041EEAC    xor         eax,eax
 0041EEAE    mov         dword ptr [ebp-0C],eax
 0041EEB1    mov         eax,dword ptr [ebp-4]
 0041EEB4    mov         eax,dword ptr [eax+4]
 0041EEB7    mov         eax,dword ptr [eax+8]
 0041EEBA    dec         eax
 0041EEBB    test        eax,eax
>0041EEBD    jl          0041EEFA
 0041EEBF    inc         eax
 0041EEC0    mov         dword ptr [ebp-18],eax
 0041EEC3    mov         dword ptr [ebp-10],0
 0041EECA    mov         eax,dword ptr [ebp-4]
 0041EECD    mov         eax,dword ptr [eax+4]
 0041EED0    mov         edx,dword ptr [ebp-10]
 0041EED3    call        TList.Get
 0041EED8    mov         dword ptr [ebp-14],eax
 0041EEDB    mov         eax,dword ptr [ebp-8]
 0041EEDE    push        eax
 0041EEDF    mov         ecx,dword ptr [ebp-0C]
 0041EEE2    mov         edx,dword ptr [ebp-14]
 0041EEE5    mov         eax,[0041E7C0];TRegGroup
 0041EEEA    call        0041E904
 0041EEEF    mov         dword ptr [ebp-0C],eax
 0041EEF2    inc         dword ptr [ebp-10]
 0041EEF5    dec         dword ptr [ebp-18]
>0041EEF8    jne         0041EECA
 0041EEFA    mov         eax,dword ptr [ebp-0C]
 0041EEFD    mov         esp,ebp
 0041EEFF    pop         ebp
 0041EF00    ret
end;*}

//0041EF04
{*function sub_0041EF04(?:TRegGroups; ?:?):?;
begin
 0041EF04    push        ebp
 0041EF05    mov         ebp,esp
 0041EF07    add         esp,0FFFFFFE8
 0041EF0A    mov         dword ptr [ebp-8],edx
 0041EF0D    mov         dword ptr [ebp-4],eax
 0041EF10    xor         eax,eax
 0041EF12    mov         dword ptr [ebp-0C],eax
 0041EF15    mov         eax,dword ptr [ebp-4]
 0041EF18    mov         eax,dword ptr [eax+4]
 0041EF1B    mov         eax,dword ptr [eax+8]
 0041EF1E    dec         eax
 0041EF1F    test        eax,eax
>0041EF21    jl          0041EF64
 0041EF23    inc         eax
 0041EF24    mov         dword ptr [ebp-14],eax
 0041EF27    mov         dword ptr [ebp-10],0
 0041EF2E    mov         eax,dword ptr [ebp-4]
 0041EF31    mov         eax,dword ptr [eax+4]
 0041EF34    mov         edx,dword ptr [ebp-10]
 0041EF37    call        TList.Get
 0041EF3C    mov         dword ptr [ebp-18],eax
 0041EF3F    mov         eax,dword ptr [ebp-18]
 0041EF42    cmp         byte ptr [eax+10],0
>0041EF46    je          0041EF56
 0041EF48    mov         edx,dword ptr [ebp-8]
 0041EF4B    mov         eax,dword ptr [ebp-18]
 0041EF4E    call        0041EA74
 0041EF53    mov         dword ptr [ebp-0C],eax
 0041EF56    cmp         dword ptr [ebp-0C],0
>0041EF5A    jne         0041EF64
 0041EF5C    inc         dword ptr [ebp-10]
 0041EF5F    dec         dword ptr [ebp-14]
>0041EF62    jne         0041EF2E
 0041EF64    mov         eax,dword ptr [ebp-0C]
 0041EF67    mov         esp,ebp
 0041EF69    pop         ebp
 0041EF6A    ret
end;*}

//0041EF6C
procedure Error;
begin
{*
 0041EF6C    push        ebp
 0041EF6D    mov         ebp,esp
 0041EF6F    add         esp,0FFFFFEF4
 0041EF75    xor         eax,eax
 0041EF77    mov         dword ptr [ebp-10C],eax
 0041EF7D    xor         eax,eax
 0041EF7F    push        ebp
 0041EF80    push        41EFEF
 0041EF85    push        dword ptr fs:[eax]
 0041EF88    mov         dword ptr fs:[eax],esp
 0041EF8B    lea         edx,[ebp-108]
 0041EF91    mov         eax,dword ptr [ebp+8]
 0041EF94    mov         eax,dword ptr [eax-4]
 0041EF97    call        TObject.ClassName
 0041EF9C    lea         eax,[ebp-108]
 0041EFA2    mov         dword ptr [ebp-8],eax
 0041EFA5    mov         byte ptr [ebp-4],4
 0041EFA9    lea         eax,[ebp-8]
 0041EFAC    push        eax
 0041EFAD    push        0
 0041EFAF    lea         edx,[ebp-10C]
 0041EFB5    mov         eax,[0056E594];^SUnknownGroup:TResStringRec
 0041EFBA    call        LoadResString
 0041EFBF    mov         ecx,dword ptr [ebp-10C]
 0041EFC5    mov         dl,1
 0041EFC7    mov         eax,[0041D084];EFilerError
 0041EFCC    call        Exception.CreateFmt
 0041EFD1    call        @RaiseExcept
 0041EFD6    xor         eax,eax
 0041EFD8    pop         edx
 0041EFD9    pop         ecx
 0041EFDA    pop         ecx
 0041EFDB    mov         dword ptr fs:[eax],edx
 0041EFDE    push        41EFF6
 0041EFE3    lea         eax,[ebp-10C]
 0041EFE9    call        @LStrClr
 0041EFEE    ret
>0041EFEF    jmp         @HandleFinally
>0041EFF4    jmp         0041EFE3
 0041EFF6    mov         esp,ebp
 0041EFF8    pop         ebp
 0041EFF9    ret
*}
end;

//0041EFFC
{*procedure sub_0041EFFC(?:?; ?:?; ?:?);
begin
 0041EFFC    push        ebp
 0041EFFD    mov         ebp,esp
 0041EFFF    add         esp,0FFFFFFDC
 0041F002    mov         dword ptr [ebp-4],ecx
 0041F005    mov         dword ptr [ebp-0C],edx
 0041F008    mov         dword ptr [ebp-8],eax
 0041F00B    mov         edx,dword ptr [ebp-4]
 0041F00E    mov         eax,dword ptr [ebp-8]
 0041F011    call        0041EEA0
 0041F016    mov         dword ptr [ebp-10],eax
 0041F019    cmp         dword ptr [ebp-10],0
>0041F01D    jne         0041F026
 0041F01F    push        ebp
 0041F020    call        Error
 0041F025    pop         ecx
 0041F026    mov         edx,dword ptr [ebp-0C]
 0041F029    mov         eax,dword ptr [ebp-10]
 0041F02C    call        0041E870
 0041F031    mov         eax,dword ptr [ebp-8]
 0041F034    mov         eax,dword ptr [eax+4]
 0041F037    mov         eax,dword ptr [eax+8]
 0041F03A    dec         eax
 0041F03B    test        eax,eax
>0041F03D    jl          0041F0DA
 0041F043    inc         eax
 0041F044    mov         dword ptr [ebp-24],eax
 0041F047    mov         dword ptr [ebp-1C],0
 0041F04E    mov         eax,dword ptr [ebp-8]
 0041F051    mov         eax,dword ptr [eax+4]
 0041F054    mov         edx,dword ptr [ebp-1C]
 0041F057    call        TList.Get
 0041F05C    mov         dword ptr [ebp-14],eax
 0041F05F    mov         eax,dword ptr [ebp-14]
 0041F062    cmp         eax,dword ptr [ebp-10]
>0041F065    je          0041F0CE
 0041F067    mov         eax,dword ptr [ebp-14]
 0041F06A    mov         eax,dword ptr [eax+4]
 0041F06D    mov         eax,dword ptr [eax+8]
 0041F070    dec         eax
 0041F071    cmp         eax,0
>0041F074    jl          0041F0CE
 0041F076    mov         dword ptr [ebp-20],eax
 0041F079    mov         eax,dword ptr [ebp-14]
 0041F07C    mov         eax,dword ptr [eax+4]
 0041F07F    mov         edx,dword ptr [ebp-20]
 0041F082    call        TList.Get
 0041F087    mov         dword ptr [ebp-18],eax
 0041F08A    mov         edx,dword ptr [ebp-0C]
 0041F08D    mov         eax,dword ptr [ebp-18]
 0041F090    call        TObject.InheritsFrom
 0041F095    test        al,al
>0041F097    je          0041F0C5
 0041F099    mov         edx,dword ptr [ebp-18]
 0041F09C    mov         eax,dword ptr [ebp-8]
 0041F09F    call        0041EEA0
 0041F0A4    cmp         eax,dword ptr [ebp-10]
>0041F0A7    jne         0041F0C5
 0041F0A9    mov         eax,dword ptr [ebp-14]
 0041F0AC    mov         eax,dword ptr [eax+4]
 0041F0AF    mov         edx,dword ptr [ebp-20]
 0041F0B2    call        00420094
 0041F0B7    mov         eax,dword ptr [ebp-10]
 0041F0BA    mov         eax,dword ptr [eax+4]
 0041F0BD    mov         edx,dword ptr [ebp-18]
 0041F0C0    call        TList.Add
 0041F0C5    dec         dword ptr [ebp-20]
 0041F0C8    cmp         dword ptr [ebp-20],0FFFFFFFF
>0041F0CC    jne         0041F079
 0041F0CE    inc         dword ptr [ebp-1C]
 0041F0D1    dec         dword ptr [ebp-24]
>0041F0D4    jne         0041F04E
 0041F0DA    mov         esp,ebp
 0041F0DC    pop         ebp
 0041F0DD    ret
end;*}

//0041F0E0
procedure sub_0041F0E0(?:TRegGroups);
begin
{*
 0041F0E0    push        ebp
 0041F0E1    mov         ebp,esp
 0041F0E3    push        ecx
 0041F0E4    mov         dword ptr [ebp-4],eax
 0041F0E7    mov         eax,dword ptr [ebp-4]
 0041F0EA    add         eax,8
 0041F0ED    push        eax
 0041F0EE    call        kernel32.EnterCriticalSection
 0041F0F3    pop         ecx
 0041F0F4    pop         ebp
 0041F0F5    ret
*}
end;

//0041F0F8
{*procedure sub_0041F0F8(?:?; ?:?);
begin
 0041F0F8    push        ebp
 0041F0F9    mov         ebp,esp
 0041F0FB    add         esp,0FFFFFFF4
 0041F0FE    mov         dword ptr [ebp-8],edx
 0041F101    mov         dword ptr [ebp-4],eax
 0041F104    mov         edx,dword ptr [ebp-8]
 0041F107    mov         eax,dword ptr [ebp-4]
 0041F10A    call        0041EEA0
 0041F10F    mov         dword ptr [ebp-0C],eax
 0041F112    cmp         dword ptr [ebp-0C],0
>0041F116    je          0041F123
 0041F118    mov         edx,dword ptr [ebp-8]
 0041F11B    mov         eax,dword ptr [ebp-0C]
 0041F11E    call        0041EB50
 0041F123    mov         esp,ebp
 0041F125    pop         ebp
 0041F126    ret
end;*}

//0041F128
{*function sub_0041F128(?:?; ?:?):?;
begin
 0041F128    push        ebp
 0041F129    mov         ebp,esp
 0041F12B    add         esp,0FFFFFFEC
 0041F12E    mov         dword ptr [ebp-8],edx
 0041F131    mov         dword ptr [ebp-4],eax
 0041F134    mov         byte ptr [ebp-9],1
 0041F138    mov         eax,dword ptr [ebp-4]
 0041F13B    mov         eax,dword ptr [eax+4]
 0041F13E    mov         eax,dword ptr [eax+8]
 0041F141    dec         eax
 0041F142    test        eax,eax
>0041F144    jl          0041F173
 0041F146    inc         eax
 0041F147    mov         dword ptr [ebp-14],eax
 0041F14A    mov         dword ptr [ebp-10],0
 0041F151    mov         eax,dword ptr [ebp-4]
 0041F154    mov         eax,dword ptr [eax+4]
 0041F157    mov         edx,dword ptr [ebp-10]
 0041F15A    call        TList.Get
 0041F15F    mov         edx,dword ptr [ebp-8]
 0041F162    call        0041EBFC
 0041F167    test        al,al
>0041F169    jne         0041F177
 0041F16B    inc         dword ptr [ebp-10]
 0041F16E    dec         dword ptr [ebp-14]
>0041F171    jne         0041F151
 0041F173    mov         byte ptr [ebp-9],0
 0041F177    mov         al,byte ptr [ebp-9]
 0041F17A    mov         esp,ebp
 0041F17C    pop         ebp
 0041F17D    ret
end;*}

//0041F180
{*procedure sub_0041F180(?:?; ?:?);
begin
 0041F180    push        ebp
 0041F181    mov         ebp,esp
 0041F183    add         esp,0FFFFFFF0
 0041F186    mov         dword ptr [ebp-8],edx
 0041F189    mov         dword ptr [ebp-4],eax
 0041F18C    mov         eax,dword ptr [ebp-4]
 0041F18F    mov         eax,dword ptr [eax+4]
 0041F192    mov         eax,dword ptr [eax+8]
 0041F195    dec         eax
 0041F196    test        eax,eax
>0041F198    jl          0041F1CA
 0041F19A    inc         eax
 0041F19B    mov         dword ptr [ebp-10],eax
 0041F19E    mov         dword ptr [ebp-0C],0
 0041F1A5    mov         eax,dword ptr [ebp-4]
 0041F1A8    mov         eax,dword ptr [eax+4]
 0041F1AB    mov         edx,dword ptr [ebp-0C]
 0041F1AE    call        TList.Get
 0041F1B3    mov         eax,dword ptr [eax+0C]
 0041F1B6    mov         edx,dword ptr [ebp-8]
 0041F1B9    call        004202BC
 0041F1BE    test        eax,eax
>0041F1C0    jge         0041F1E6
 0041F1C2    inc         dword ptr [ebp-0C]
 0041F1C5    dec         dword ptr [ebp-10]
>0041F1C8    jne         0041F1A5
 0041F1CA    mov         ecx,dword ptr [ebp-8]
 0041F1CD    mov         dl,1
 0041F1CF    mov         eax,[0041E7C0];TRegGroup
 0041F1D4    call        TRegGroup.Create;TRegGroup.Create
 0041F1D9    mov         edx,eax
 0041F1DB    mov         eax,dword ptr [ebp-4]
 0041F1DE    mov         eax,dword ptr [eax+4]
 0041F1E1    call        TList.Add
 0041F1E6    mov         esp,ebp
 0041F1E8    pop         ebp
 0041F1E9    ret
end;*}

//0041F1EC
procedure sub_0041F1EC(?:TRegGroups);
begin
{*
 0041F1EC    push        ebp
 0041F1ED    mov         ebp,esp
 0041F1EF    push        ecx
 0041F1F0    mov         dword ptr [ebp-4],eax
 0041F1F3    mov         eax,dword ptr [ebp-4]
 0041F1F6    add         eax,8
 0041F1F9    push        eax
 0041F1FA    call        kernel32.LeaveCriticalSection
 0041F1FF    pop         ecx
 0041F200    pop         ebp
 0041F201    ret
*}
end;

//0041F204
{*procedure sub_0041F204(?:?; ?:?);
begin
 0041F204    push        ebp
 0041F205    mov         ebp,esp
 0041F207    add         esp,0FFFFFFF0
 0041F20A    mov         dword ptr [ebp-8],edx
 0041F20D    mov         dword ptr [ebp-4],eax
 0041F210    mov         eax,dword ptr [ebp-4]
 0041F213    mov         eax,dword ptr [eax+4]
 0041F216    mov         eax,dword ptr [eax+8]
 0041F219    dec         eax
 0041F21A    cmp         eax,0
>0041F21D    jl          0041F269
 0041F21F    mov         dword ptr [ebp-0C],eax
 0041F222    mov         eax,dword ptr [ebp-4]
 0041F225    mov         eax,dword ptr [eax+4]
 0041F228    mov         edx,dword ptr [ebp-0C]
 0041F22B    call        TList.Get
 0041F230    mov         dword ptr [ebp-10],eax
 0041F233    mov         edx,dword ptr [ebp-8]
 0041F236    mov         eax,dword ptr [ebp-10]
 0041F239    call        0041EC54
 0041F23E    mov         eax,dword ptr [ebp-10]
 0041F241    mov         eax,dword ptr [eax+0C]
 0041F244    cmp         dword ptr [eax+8],0
>0041F248    jne         0041F260
 0041F24A    mov         eax,dword ptr [ebp-10]
 0041F24D    call        TObject.Free
 0041F252    mov         eax,dword ptr [ebp-4]
 0041F255    mov         eax,dword ptr [eax+4]
 0041F258    mov         edx,dword ptr [ebp-0C]
 0041F25B    call        00420094
 0041F260    dec         dword ptr [ebp-0C]
 0041F263    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0041F267    jne         0041F222
 0041F269    mov         esp,ebp
 0041F26B    pop         ebp
 0041F26C    ret
end;*}

//0041F270
{*constructor TClassFinder.Create(?:?);
begin
 0041F270    push        ebp
 0041F271    mov         ebp,esp
 0041F273    add         esp,0FFFFFFE8
 0041F276    test        dl,dl
>0041F278    je          0041F282
 0041F27A    add         esp,0FFFFFFF0
 0041F27D    call        @ClassCreate
 0041F282    mov         dword ptr [ebp-0C],ecx
 0041F285    mov         byte ptr [ebp-5],dl
 0041F288    mov         dword ptr [ebp-4],eax
 0041F28B    xor         edx,edx
 0041F28D    mov         eax,dword ptr [ebp-4]
 0041F290    call        TObject.Create
 0041F295    mov         dl,1
 0041F297    mov         eax,[0041D46C];TList
 0041F29C    call        TObject.Create;TList.Create
 0041F2A1    mov         edx,dword ptr [ebp-4]
 0041F2A4    mov         dword ptr [edx+4],eax
 0041F2A7    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F2AC    call        0041F0E0
 0041F2B1    xor         eax,eax
 0041F2B3    push        ebp
 0041F2B4    push        41F38E
 0041F2B9    push        dword ptr fs:[eax]
 0041F2BC    mov         dword ptr fs:[eax],esp
 0041F2BF    cmp         dword ptr [ebp-0C],0
>0041F2C3    jne         0041F2D0
 0041F2C5    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F2CA    mov         eax,dword ptr [eax+20];TRegGroups.FActiveClass:TPersistentClass
 0041F2CD    mov         dword ptr [ebp-0C],eax
 0041F2D0    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F2D5    mov         eax,dword ptr [eax+4];TRegGroups.FGroups:TList
 0041F2D8    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0041F2DB    dec         eax
 0041F2DC    test        eax,eax
>0041F2DE    jl          0041F323
 0041F2E0    inc         eax
 0041F2E1    mov         dword ptr [ebp-18],eax
 0041F2E4    mov         dword ptr [ebp-10],0
 0041F2EB    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F2F0    mov         eax,dword ptr [eax+4];TRegGroups.FGroups:TList
 0041F2F3    mov         edx,dword ptr [ebp-10]
 0041F2F6    call        TList.Get
 0041F2FB    mov         dword ptr [ebp-14],eax
 0041F2FE    mov         edx,dword ptr [ebp-0C]
 0041F301    mov         eax,dword ptr [ebp-14]
 0041F304    call        0041EAF8
 0041F309    test        al,al
>0041F30B    je          0041F31B
 0041F30D    mov         eax,dword ptr [ebp-4]
 0041F310    mov         eax,dword ptr [eax+4]
 0041F313    mov         edx,dword ptr [ebp-14]
 0041F316    call        TList.Add
 0041F31B    inc         dword ptr [ebp-10]
 0041F31E    dec         dword ptr [ebp-18]
>0041F321    jne         0041F2EB
 0041F323    cmp         byte ptr [ebp+8],0
>0041F327    je          0041F376
 0041F329    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F32E    mov         eax,dword ptr [eax+4];TRegGroups.FGroups:TList
 0041F331    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0041F334    dec         eax
 0041F335    test        eax,eax
>0041F337    jl          0041F376
 0041F339    inc         eax
 0041F33A    mov         dword ptr [ebp-18],eax
 0041F33D    mov         dword ptr [ebp-10],0
 0041F344    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F349    mov         eax,dword ptr [eax+4];TRegGroups.FGroups:TList
 0041F34C    mov         edx,dword ptr [ebp-10]
 0041F34F    call        TList.Get
 0041F354    mov         dword ptr [ebp-14],eax
 0041F357    mov         eax,dword ptr [ebp-14]
 0041F35A    cmp         byte ptr [eax+10],0
>0041F35E    je          0041F36E
 0041F360    mov         eax,dword ptr [ebp-4]
 0041F363    mov         eax,dword ptr [eax+4]
 0041F366    mov         edx,dword ptr [ebp-14]
 0041F369    call        TList.Add
 0041F36E    inc         dword ptr [ebp-10]
 0041F371    dec         dword ptr [ebp-18]
>0041F374    jne         0041F344
 0041F376    xor         eax,eax
 0041F378    pop         edx
 0041F379    pop         ecx
 0041F37A    pop         ecx
 0041F37B    mov         dword ptr fs:[eax],edx
 0041F37E    push        41F395
 0041F383    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F388    call        0041F1EC
 0041F38D    ret
>0041F38E    jmp         @HandleFinally
>0041F393    jmp         0041F383
 0041F395    mov         eax,dword ptr [ebp-4]
 0041F398    cmp         byte ptr [ebp-5],0
>0041F39C    je          0041F3AD
 0041F39E    call        @AfterConstruction
 0041F3A3    pop         dword ptr fs:[0]
 0041F3AA    add         esp,0C
 0041F3AD    mov         eax,dword ptr [ebp-4]
 0041F3B0    mov         esp,ebp
 0041F3B2    pop         ebp
 0041F3B3    ret         4
end;*}

//0041F3F4
{*function sub_0041F3F4(?:?; ?:?):?;
begin
 0041F3F4    push        ebp
 0041F3F5    mov         ebp,esp
 0041F3F7    add         esp,0FFFFFFE8
 0041F3FA    mov         dword ptr [ebp-8],edx
 0041F3FD    mov         dword ptr [ebp-4],eax
 0041F400    xor         eax,eax
 0041F402    mov         dword ptr [ebp-0C],eax
 0041F405    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F40A    call        0041F0E0
 0041F40F    xor         eax,eax
 0041F411    push        ebp
 0041F412    push        41F482
 0041F417    push        dword ptr fs:[eax]
 0041F41A    mov         dword ptr fs:[eax],esp
 0041F41D    mov         eax,dword ptr [ebp-4]
 0041F420    mov         eax,dword ptr [eax+4]
 0041F423    mov         eax,dword ptr [eax+8]
 0041F426    dec         eax
 0041F427    test        eax,eax
>0041F429    jl          0041F46A
 0041F42B    inc         eax
 0041F42C    mov         dword ptr [ebp-14],eax
 0041F42F    mov         dword ptr [ebp-10],0
 0041F436    mov         eax,dword ptr [ebp-4]
 0041F439    mov         eax,dword ptr [eax+4]
 0041F43C    mov         edx,dword ptr [ebp-10]
 0041F43F    call        TList.Get
 0041F444    mov         dword ptr [ebp-18],eax
 0041F447    mov         edx,dword ptr [ebp-8]
 0041F44A    mov         eax,dword ptr [ebp-18]
 0041F44D    call        0041EA74
 0041F452    mov         dword ptr [ebp-0C],eax
 0041F455    cmp         dword ptr [ebp-0C],0
>0041F459    je          0041F462
 0041F45B    call        @TryFinallyExit
>0041F460    jmp         0041F489
 0041F462    inc         dword ptr [ebp-10]
 0041F465    dec         dword ptr [ebp-14]
>0041F468    jne         0041F436
 0041F46A    xor         eax,eax
 0041F46C    pop         edx
 0041F46D    pop         ecx
 0041F46E    pop         ecx
 0041F46F    mov         dword ptr fs:[eax],edx
 0041F472    push        41F489
 0041F477    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F47C    call        0041F1EC
 0041F481    ret
>0041F482    jmp         @HandleFinally
>0041F487    jmp         0041F477
 0041F489    mov         eax,dword ptr [ebp-0C]
 0041F48C    mov         esp,ebp
 0041F48E    pop         ebp
 0041F48F    ret
end;*}

//0041F490
function GetFieldClassTable(AClass:TClass):PFieldClassTable;
begin
{*
 0041F490    mov         eax,dword ptr [eax-38]
 0041F493    or          eax,eax
>0041F495    je          0041F49A
 0041F497    mov         eax,dword ptr [eax+2]
 0041F49A    ret
*}
end;

//0041F49C
{*procedure sub_0041F49C(?:?);
begin
 0041F49C    push        ebp
 0041F49D    mov         ebp,esp
 0041F49F    add         esp,0FFFFFFF0
 0041F4A2    xor         edx,edx
 0041F4A4    mov         dword ptr [ebp-10],edx
 0041F4A7    mov         dword ptr [ebp-4],eax
 0041F4AA    xor         eax,eax
 0041F4AC    push        ebp
 0041F4AD    push        41F4FF
 0041F4B2    push        dword ptr fs:[eax]
 0041F4B5    mov         dword ptr fs:[eax],esp
 0041F4B8    mov         eax,dword ptr [ebp-4]
 0041F4BB    mov         dword ptr [ebp-0C],eax
 0041F4BE    mov         byte ptr [ebp-8],0B
 0041F4C2    lea         eax,[ebp-0C]
 0041F4C5    push        eax
 0041F4C6    push        0
 0041F4C8    lea         edx,[ebp-10]
 0041F4CB    mov         eax,[0056E534];^SClassNotFound:TResStringRec
 0041F4D0    call        LoadResString
 0041F4D5    mov         ecx,dword ptr [ebp-10]
 0041F4D8    mov         dl,1
 0041F4DA    mov         eax,[0041D18C];EClassNotFound
 0041F4DF    call        Exception.CreateFmt;EClassNotFound.Create
 0041F4E4    call        @RaiseExcept
 0041F4E9    xor         eax,eax
 0041F4EB    pop         edx
 0041F4EC    pop         ecx
 0041F4ED    pop         ecx
 0041F4EE    mov         dword ptr fs:[eax],edx
 0041F4F1    push        41F506
 0041F4F6    lea         eax,[ebp-10]
 0041F4F9    call        @LStrClr
 0041F4FE    ret
>0041F4FF    jmp         @HandleFinally
>0041F504    jmp         0041F4F6
 0041F506    mov         esp,ebp
 0041F508    pop         ebp
 0041F509    ret
end;*}

//0041F50C
{*function sub_0041F50C(?:?):?;
begin
 0041F50C    push        ebp
 0041F50D    mov         ebp,esp
 0041F50F    add         esp,0FFFFFFF8
 0041F512    mov         dword ptr [ebp-4],eax
 0041F515    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F51A    call        0041F0E0
 0041F51F    xor         eax,eax
 0041F521    push        ebp
 0041F522    push        41F555
 0041F527    push        dword ptr fs:[eax]
 0041F52A    mov         dword ptr fs:[eax],esp
 0041F52D    mov         edx,dword ptr [ebp-4]
 0041F530    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F535    call        0041EF04
 0041F53A    mov         dword ptr [ebp-8],eax
 0041F53D    xor         eax,eax
 0041F53F    pop         edx
 0041F540    pop         ecx
 0041F541    pop         ecx
 0041F542    mov         dword ptr fs:[eax],edx
 0041F545    push        41F55C
 0041F54A    mov         eax,[00571A88];0x0 RegGroups:TRegGroups
 0041F54F    call        0041F1EC
 0041F554    ret
>0041F555    jmp         @HandleFinally
>0041F55A    jmp         0041F54A
 0041F55C    mov         eax,dword ptr [ebp-8]
 0041F55F    pop         ecx
 0041F560    pop         ecx
 0041F561    pop         ebp
 0041F562    ret
end;*}

//0041F564
{*function sub_0041F564(?:?):?;
begin
 0041F564    push        ebp
 0041F565    mov         ebp,esp
 0041F567    add         esp,0FFFFFFF8
 0041F56A    mov         dword ptr [ebp-4],eax
 0041F56D    mov         eax,dword ptr [ebp-4]
 0041F570    call        0041F50C
 0041F575    mov         dword ptr [ebp-8],eax
 0041F578    cmp         dword ptr [ebp-8],0
>0041F57C    jne         0041F586
 0041F57E    mov         eax,dword ptr [ebp-4]
 0041F581    call        0041F49C
 0041F586    mov         eax,dword ptr [ebp-8]
 0041F589    pop         ecx
 0041F58A    pop         ecx
 0041F58B    pop         ebp
 0041F58C    ret
end;*}

//0041F590
procedure RegisterClass(AClass:TPersistentClass);
begin
{*
 0041F590    push        ebp
 0041F591    mov         ebp,esp
 0041F593    push        ecx
 0041F594    mov         dword ptr [ebp-4],eax
 0041F597    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F59C    call        0041F0E0
 0041F5A1    xor         eax,eax
 0041F5A3    push        ebp
 0041F5A4    push        41F5FD
 0041F5A9    push        dword ptr fs:[eax]
 0041F5AC    mov         dword ptr fs:[eax],esp
>0041F5AF    jmp         0041F5D4
 0041F5B1    mov         edx,dword ptr [ebp-4]
 0041F5B4    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F5B9    call        0041F0F8
 0041F5BE    mov         eax,dword ptr [ebp-4]
 0041F5C1    cmp         eax,dword ptr ds:[41D57C];TPersistent
>0041F5C7    je          0041F5E5
 0041F5C9    mov         eax,dword ptr [ebp-4]
 0041F5CC    call        TObject.ClassParent
 0041F5D1    mov         dword ptr [ebp-4],eax
 0041F5D4    mov         edx,dword ptr [ebp-4]
 0041F5D7    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F5DC    call        0041F128
 0041F5E1    test        al,al
>0041F5E3    je          0041F5B1
 0041F5E5    xor         eax,eax
 0041F5E7    pop         edx
 0041F5E8    pop         ecx
 0041F5E9    pop         ecx
 0041F5EA    mov         dword ptr fs:[eax],edx
 0041F5ED    push        41F604
 0041F5F2    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F5F7    call        0041F1EC
 0041F5FC    ret
>0041F5FD    jmp         @HandleFinally
>0041F602    jmp         0041F5F2
 0041F604    pop         ecx
 0041F605    pop         ebp
 0041F606    ret
*}
end;

//0041F608
procedure UnRegisterModuleClasses(Module:HMODULE);
begin
{*
 0041F608    push        ebp
 0041F609    mov         ebp,esp
 0041F60B    push        ecx
 0041F60C    mov         dword ptr [ebp-4],eax
 0041F60F    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F614    call        0041F0E0
 0041F619    xor         eax,eax
 0041F61B    push        ebp
 0041F61C    push        41F64C
 0041F621    push        dword ptr fs:[eax]
 0041F624    mov         dword ptr fs:[eax],esp
 0041F627    mov         edx,dword ptr [ebp-4]
 0041F62A    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F62F    call        0041F204
 0041F634    xor         eax,eax
 0041F636    pop         edx
 0041F637    pop         ecx
 0041F638    pop         ecx
 0041F639    mov         dword ptr fs:[eax],edx
 0041F63C    push        41F653
 0041F641    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F646    call        0041F1EC
 0041F64B    ret
>0041F64C    jmp         @HandleFinally
>0041F651    jmp         0041F641
 0041F653    pop         ecx
 0041F654    pop         ebp
 0041F655    ret
*}
end;

//0041F658
procedure StartClassGroup(AClass:TPersistentClass);
begin
{*
 0041F658    push        ebp
 0041F659    mov         ebp,esp
 0041F65B    push        ecx
 0041F65C    mov         dword ptr [ebp-4],eax
 0041F65F    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F664    call        0041F0E0
 0041F669    xor         eax,eax
 0041F66B    push        ebp
 0041F66C    push        41F69C
 0041F671    push        dword ptr fs:[eax]
 0041F674    mov         dword ptr fs:[eax],esp
 0041F677    mov         edx,dword ptr [ebp-4]
 0041F67A    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F67F    call        0041F180
 0041F684    xor         eax,eax
 0041F686    pop         edx
 0041F687    pop         ecx
 0041F688    pop         ecx
 0041F689    mov         dword ptr fs:[eax],edx
 0041F68C    push        41F6A3
 0041F691    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F696    call        0041F1EC
 0041F69B    ret
>0041F69C    jmp         @HandleFinally
>0041F6A1    jmp         0041F691
 0041F6A3    pop         ecx
 0041F6A4    pop         ebp
 0041F6A5    ret
*}
end;

//0041F6A8
procedure GroupDescendentsWith(AClass:TPersistentClass; AClassGroup:TPersistentClass);
begin
{*
 0041F6A8    push        ebp
 0041F6A9    mov         ebp,esp
 0041F6AB    add         esp,0FFFFFFF8
 0041F6AE    mov         dword ptr [ebp-8],edx
 0041F6B1    mov         dword ptr [ebp-4],eax
 0041F6B4    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F6B9    call        0041F0E0
 0041F6BE    xor         eax,eax
 0041F6C0    push        ebp
 0041F6C1    push        41F6F4
 0041F6C6    push        dword ptr fs:[eax]
 0041F6C9    mov         dword ptr fs:[eax],esp
 0041F6CC    mov         ecx,dword ptr [ebp-8]
 0041F6CF    mov         edx,dword ptr [ebp-4]
 0041F6D2    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F6D7    call        0041EFFC
 0041F6DC    xor         eax,eax
 0041F6DE    pop         edx
 0041F6DF    pop         ecx
 0041F6E0    pop         ecx
 0041F6E1    mov         dword ptr fs:[eax],edx
 0041F6E4    push        41F6FB
 0041F6E9    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F6EE    call        0041F1EC
 0041F6F3    ret
>0041F6F4    jmp         @HandleFinally
>0041F6F9    jmp         0041F6E9
 0041F6FB    pop         ecx
 0041F6FC    pop         ecx
 0041F6FD    pop         ebp
 0041F6FE    ret
*}
end;

//0041F700
function ActivateClassGroup(AClass:TPersistentClass):TPersistentClass;
begin
{*
 0041F700    push        ebp
 0041F701    mov         ebp,esp
 0041F703    add         esp,0FFFFFFF8
 0041F706    mov         dword ptr [ebp-4],eax
 0041F709    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F70E    call        0041F0E0
 0041F713    xor         eax,eax
 0041F715    push        ebp
 0041F716    push        41F751
 0041F71B    push        dword ptr fs:[eax]
 0041F71E    mov         dword ptr fs:[eax],esp
 0041F721    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F726    mov         eax,dword ptr [eax+20]
 0041F729    mov         dword ptr [ebp-8],eax
 0041F72C    mov         edx,dword ptr [ebp-4]
 0041F72F    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F734    call        0041ED30
 0041F739    xor         eax,eax
 0041F73B    pop         edx
 0041F73C    pop         ecx
 0041F73D    pop         ecx
 0041F73E    mov         dword ptr fs:[eax],edx
 0041F741    push        41F758
 0041F746    mov         eax,[00571A88];RegGroups:TRegGroups
 0041F74B    call        0041F1EC
 0041F750    ret
>0041F751    jmp         @HandleFinally
>0041F756    jmp         0041F746
 0041F758    mov         eax,dword ptr [ebp-8]
 0041F75B    pop         ecx
 0041F75C    pop         ecx
 0041F75D    pop         ebp
 0041F75E    ret
*}
end;

//0041F7B8
{*constructor sub_0041F7B8(?:?; ?:?);
begin
 0041F7B8    push        ebp
 0041F7B9    mov         ebp,esp
 0041F7BB    add         esp,0FFFFFFF4
 0041F7BE    test        dl,dl
>0041F7C0    je          0041F7CA
 0041F7C2    add         esp,0FFFFFFF0
 0041F7C5    call        @ClassCreate
 0041F7CA    mov         dword ptr [ebp-0C],ecx
 0041F7CD    mov         byte ptr [ebp-5],dl
 0041F7D0    mov         dword ptr [ebp-4],eax
 0041F7D3    mov         eax,dword ptr [ebp-4]
 0041F7D6    mov         edx,dword ptr [ebp-0C]
 0041F7D9    mov         dword ptr [eax+4],edx
 0041F7DC    mov         eax,dword ptr [ebp-4]
 0041F7DF    mov         edx,dword ptr [ebp+0C]
 0041F7E2    mov         dword ptr [eax+8],edx
 0041F7E5    mov         eax,dword ptr [ebp-4]
 0041F7E8    mov         edx,dword ptr [ebp+8]
 0041F7EB    mov         dword ptr [eax+0C],edx
 0041F7EE    mov         eax,dword ptr [ebp-4]
 0041F7F1    cmp         byte ptr [ebp-5],0
>0041F7F5    je          0041F806
 0041F7F7    call        @AfterConstruction
 0041F7FC    pop         dword ptr fs:[0]
 0041F803    add         esp,0C
 0041F806    mov         eax,dword ptr [ebp-4]
 0041F809    mov         esp,ebp
 0041F80B    pop         ebp
 0041F80C    ret         8
end;*}

//0041F810
procedure RegisterIntegerConsts(AIntegerType:Pointer; AIdentToInt:TIdentToInt; AIntToIdent:TIntToIdent);
begin
{*
 0041F810    push        ebp
 0041F811    mov         ebp,esp
 0041F813    add         esp,0FFFFFFF4
 0041F816    mov         dword ptr [ebp-0C],ecx
 0041F819    mov         dword ptr [ebp-8],edx
 0041F81C    mov         dword ptr [ebp-4],eax
 0041F81F    mov         eax,dword ptr [ebp-8]
 0041F822    push        eax
 0041F823    mov         eax,dword ptr [ebp-0C]
 0041F826    push        eax
 0041F827    mov         ecx,dword ptr [ebp-4]
 0041F82A    mov         dl,1
 0041F82C    mov         eax,[0041F760];TIntConst
 0041F831    call        0041F7B8
 0041F836    mov         edx,eax
 0041F838    mov         eax,[00571A84];IntConstList:TThreadList
 0041F83D    call        00420720
 0041F842    mov         esp,ebp
 0041F844    pop         ebp
 0041F845    ret
*}
end;

//0041F848
{*function sub_0041F848(?:?):?;
begin
 0041F848    push        ebp
 0041F849    mov         ebp,esp
 0041F84B    add         esp,0FFFFFFEC
 0041F84E    mov         dword ptr [ebp-4],eax
 0041F851    xor         eax,eax
 0041F853    mov         dword ptr [ebp-8],eax
 0041F856    mov         eax,[00571A84];0x0 IntConstList:TThreadList
 0041F85B    call        TThreadList.LockList
 0041F860    mov         dword ptr [ebp-10],eax
 0041F863    xor         eax,eax
 0041F865    push        ebp
 0041F866    push        41F8CA
 0041F86B    push        dword ptr fs:[eax]
 0041F86E    mov         dword ptr fs:[eax],esp
 0041F871    mov         eax,dword ptr [ebp-10]
 0041F874    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0041F877    dec         eax
 0041F878    cmp         eax,0
>0041F87B    jl          0041F8B2
 0041F87D    mov         dword ptr [ebp-0C],eax
 0041F880    mov         edx,dword ptr [ebp-0C]
 0041F883    mov         eax,dword ptr [ebp-10]
 0041F886    call        TList.Get
 0041F88B    mov         dword ptr [ebp-14],eax
 0041F88E    mov         eax,dword ptr [ebp-14]
 0041F891    mov         eax,dword ptr [eax+4]
 0041F894    cmp         eax,dword ptr [ebp-4]
>0041F897    jne         0041F8A9
 0041F899    mov         eax,dword ptr [ebp-14]
 0041F89C    mov         eax,dword ptr [eax+0C]
 0041F89F    mov         dword ptr [ebp-8],eax
 0041F8A2    call        @TryFinallyExit
>0041F8A7    jmp         0041F8D1
 0041F8A9    dec         dword ptr [ebp-0C]
 0041F8AC    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0041F8B0    jne         0041F880
 0041F8B2    xor         eax,eax
 0041F8B4    pop         edx
 0041F8B5    pop         ecx
 0041F8B6    pop         ecx
 0041F8B7    mov         dword ptr fs:[eax],edx
 0041F8BA    push        41F8D1
 0041F8BF    mov         eax,[00571A84];0x0 IntConstList:TThreadList
 0041F8C4    call        TThreadList.UnlockList
 0041F8C9    ret
>0041F8CA    jmp         @HandleFinally
>0041F8CF    jmp         0041F8BF
 0041F8D1    mov         eax,dword ptr [ebp-8]
 0041F8D4    mov         esp,ebp
 0041F8D6    pop         ebp
 0041F8D7    ret
end;*}

//0041F8D8
{*function sub_0041F8D8(?:?):?;
begin
 0041F8D8    push        ebp
 0041F8D9    mov         ebp,esp
 0041F8DB    add         esp,0FFFFFFEC
 0041F8DE    mov         dword ptr [ebp-4],eax
 0041F8E1    xor         eax,eax
 0041F8E3    mov         dword ptr [ebp-8],eax
 0041F8E6    mov         eax,[00571A84];0x0 IntConstList:TThreadList
 0041F8EB    call        TThreadList.LockList
 0041F8F0    mov         dword ptr [ebp-10],eax
 0041F8F3    xor         eax,eax
 0041F8F5    push        ebp
 0041F8F6    push        41F95A
 0041F8FB    push        dword ptr fs:[eax]
 0041F8FE    mov         dword ptr fs:[eax],esp
 0041F901    mov         eax,dword ptr [ebp-10]
 0041F904    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0041F907    dec         eax
 0041F908    cmp         eax,0
>0041F90B    jl          0041F942
 0041F90D    mov         dword ptr [ebp-0C],eax
 0041F910    mov         edx,dword ptr [ebp-0C]
 0041F913    mov         eax,dword ptr [ebp-10]
 0041F916    call        TList.Get
 0041F91B    mov         dword ptr [ebp-14],eax
 0041F91E    mov         eax,dword ptr [ebp-14]
 0041F921    mov         eax,dword ptr [eax+4]
 0041F924    cmp         eax,dword ptr [ebp-4]
>0041F927    jne         0041F939
 0041F929    mov         eax,dword ptr [ebp-14]
 0041F92C    mov         eax,dword ptr [eax+8]
 0041F92F    mov         dword ptr [ebp-8],eax
 0041F932    call        @TryFinallyExit
>0041F937    jmp         0041F961
 0041F939    dec         dword ptr [ebp-0C]
 0041F93C    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0041F940    jne         0041F910
 0041F942    xor         eax,eax
 0041F944    pop         edx
 0041F945    pop         ecx
 0041F946    pop         ecx
 0041F947    mov         dword ptr fs:[eax],edx
 0041F94A    push        41F961
 0041F94F    mov         eax,[00571A84];0x0 IntConstList:TThreadList
 0041F954    call        TThreadList.UnlockList
 0041F959    ret
>0041F95A    jmp         @HandleFinally
>0041F95F    jmp         0041F94F
 0041F961    mov         eax,dword ptr [ebp-8]
 0041F964    mov         esp,ebp
 0041F966    pop         ebp
 0041F967    ret
end;*}

//0041F968
{*function sub_0041F968(?:?; ?:?; ?:?; ?:?):?;
begin
 0041F968    push        ebp
 0041F969    mov         ebp,esp
 0041F96B    add         esp,0FFFFFFE8
 0041F96E    mov         dword ptr [ebp-0C],ecx
 0041F971    mov         dword ptr [ebp-8],edx
 0041F974    mov         dword ptr [ebp-4],eax
 0041F977    mov         eax,dword ptr [ebp+8]
 0041F97A    test        eax,eax
>0041F97C    jl          0041F9BB
 0041F97E    inc         eax
 0041F97F    mov         dword ptr [ebp-18],eax
 0041F982    mov         dword ptr [ebp-14],0
 0041F989    mov         eax,dword ptr [ebp-0C]
 0041F98C    mov         edx,dword ptr [ebp-14]
 0041F98F    mov         eax,dword ptr [eax+edx*8+4]
 0041F993    mov         edx,dword ptr [ebp-4]
 0041F996    call        SameText
 0041F99B    test        al,al
>0041F99D    je          0041F9B3
 0041F99F    mov         byte ptr [ebp-0D],1
 0041F9A3    mov         eax,dword ptr [ebp-0C]
 0041F9A6    mov         edx,dword ptr [ebp-14]
 0041F9A9    mov         eax,dword ptr [eax+edx*8]
 0041F9AC    mov         edx,dword ptr [ebp-8]
 0041F9AF    mov         dword ptr [edx],eax
>0041F9B1    jmp         0041F9BF
 0041F9B3    inc         dword ptr [ebp-14]
 0041F9B6    dec         dword ptr [ebp-18]
>0041F9B9    jne         0041F989
 0041F9BB    mov         byte ptr [ebp-0D],0
 0041F9BF    mov         al,byte ptr [ebp-0D]
 0041F9C2    mov         esp,ebp
 0041F9C4    pop         ebp
 0041F9C5    ret         4
end;*}

//0041F9C8
{*function sub_0041F9C8(?:?; ?:?; ?:?; ?:?):?;
begin
 0041F9C8    push        ebp
 0041F9C9    mov         ebp,esp
 0041F9CB    add         esp,0FFFFFFE8
 0041F9CE    mov         dword ptr [ebp-0C],ecx
 0041F9D1    mov         dword ptr [ebp-8],edx
 0041F9D4    mov         dword ptr [ebp-4],eax
 0041F9D7    mov         eax,dword ptr [ebp+8]
 0041F9DA    test        eax,eax
>0041F9DC    jl          0041FA17
 0041F9DE    inc         eax
 0041F9DF    mov         dword ptr [ebp-18],eax
 0041F9E2    mov         dword ptr [ebp-14],0
 0041F9E9    mov         eax,dword ptr [ebp-0C]
 0041F9EC    mov         edx,dword ptr [ebp-14]
 0041F9EF    mov         eax,dword ptr [eax+edx*8]
 0041F9F2    cmp         eax,dword ptr [ebp-4]
>0041F9F5    jne         0041FA0F
 0041F9F7    mov         byte ptr [ebp-0D],1
 0041F9FB    mov         eax,dword ptr [ebp-8]
 0041F9FE    mov         edx,dword ptr [ebp-0C]
 0041FA01    mov         ecx,dword ptr [ebp-14]
 0041FA04    mov         edx,dword ptr [edx+ecx*8+4]
 0041FA08    call        @LStrAsg
>0041FA0D    jmp         0041FA1B
 0041FA0F    inc         dword ptr [ebp-14]
 0041FA12    dec         dword ptr [ebp-18]
>0041FA15    jne         0041F9E9
 0041FA17    mov         byte ptr [ebp-0D],0
 0041FA1B    mov         al,byte ptr [ebp-0D]
 0041FA1E    mov         esp,ebp
 0041FA20    pop         ebp
 0041FA21    ret         4
end;*}

//0041FA24
procedure sub_0041FA24(?:TComponent);
begin
{*
 0041FA24    push        ebp
 0041FA25    mov         ebp,esp
 0041FA27    push        ecx
 0041FA28    mov         dword ptr [ebp-4],eax
 0041FA2B    cmp         dword ptr ds:[571A8C],0;FindGlobalComponentProcs:TList
>0041FA32    jne         0041FA45
 0041FA34    mov         dl,1
 0041FA36    mov         eax,[0041D46C];TList
 0041FA3B    call        TObject.Create;TList.Create
 0041FA40    mov         [00571A8C],eax;FindGlobalComponentProcs:TList
 0041FA45    mov         edx,dword ptr [ebp-4]
 0041FA48    mov         eax,[00571A8C];0x0 FindGlobalComponentProcs:TList
 0041FA4D    call        004202BC
 0041FA52    test        eax,eax
>0041FA54    jge         0041FA63
 0041FA56    mov         edx,dword ptr [ebp-4]
 0041FA59    mov         eax,[00571A8C];0x0 FindGlobalComponentProcs:TList
 0041FA5E    call        TList.Add
 0041FA63    pop         ecx
 0041FA64    pop         ebp
 0041FA65    ret
*}
end;

//0041FA68
procedure UnregisterFindGlobalComponentProc(AFindGlobalComponent:TFindGlobalComponent);
begin
{*
 0041FA68    push        ebp
 0041FA69    mov         ebp,esp
 0041FA6B    push        ecx
 0041FA6C    mov         dword ptr [ebp-4],eax
 0041FA6F    cmp         dword ptr ds:[571A8C],0;FindGlobalComponentProcs:TList
>0041FA76    je          0041FA85
 0041FA78    mov         edx,dword ptr [ebp-4]
 0041FA7B    mov         eax,[00571A8C];FindGlobalComponentProcs:TList
 0041FA80    call        004204F0
 0041FA85    pop         ecx
 0041FA86    pop         ebp
 0041FA87    ret
*}
end;

//0041FA88
{*function sub_0041FA88(?:?):?;
begin
 0041FA88    push        ebp
 0041FA89    mov         ebp,esp
 0041FA8B    add         esp,0FFFFFFF4
 0041FA8E    push        ebx
 0041FA8F    mov         dword ptr [ebp-4],eax
 0041FA92    xor         eax,eax
 0041FA94    mov         dword ptr [ebp-8],eax
 0041FA97    cmp         dword ptr ds:[571A8C],0;FindGlobalComponentProcs:TList
>0041FA9E    je          0041FAD7
 0041FAA0    mov         eax,[00571A8C];0x0 FindGlobalComponentProcs:TList
 0041FAA5    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0041FAA8    dec         eax
 0041FAA9    cmp         eax,0
>0041FAAC    jl          0041FAD7
 0041FAAE    mov         dword ptr [ebp-0C],eax
 0041FAB1    mov         edx,dword ptr [ebp-0C]
 0041FAB4    mov         eax,[00571A8C];0x0 FindGlobalComponentProcs:TList
 0041FAB9    call        TList.Get
 0041FABE    mov         ebx,eax
 0041FAC0    mov         eax,dword ptr [ebp-4]
 0041FAC3    call        ebx
 0041FAC5    mov         dword ptr [ebp-8],eax
 0041FAC8    cmp         dword ptr [ebp-8],0
>0041FACC    jne         0041FAD7
 0041FACE    dec         dword ptr [ebp-0C]
 0041FAD1    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0041FAD5    jne         0041FAB1
 0041FAD7    mov         eax,dword ptr [ebp-8]
 0041FADA    pop         ebx
 0041FADB    mov         esp,ebp
 0041FADD    pop         ebp
 0041FADE    ret
end;*}

//0041FAE0
{*function sub_0041FAE0(?:?):?;
begin
 0041FAE0    push        ebp
 0041FAE1    mov         ebp,esp
 0041FAE3    add         esp,0FFFFFFF8
 0041FAE6    mov         dword ptr [ebp-4],eax
 0041FAE9    cmp         dword ptr ds:[571A78],0;gvar_00571A78
>0041FAF0    je          0041FB00
 0041FAF2    mov         eax,dword ptr [ebp-4]
 0041FAF5    call        dword ptr ds:[571A78]
 0041FAFB    mov         byte ptr [ebp-5],al
>0041FAFE    jmp         0041FB0E
 0041FB00    mov         eax,dword ptr [ebp-4]
 0041FB03    call        0041FA88
 0041FB08    test        eax,eax
 0041FB0A    sete        byte ptr [ebp-5]
 0041FB0E    mov         al,byte ptr [ebp-5]
 0041FB11    pop         ecx
 0041FB12    pop         ecx
 0041FB13    pop         ebp
 0041FB14    ret
end;*}

//0041FB18
{*function sub_0041FB18(?:?; ?:?; ?:?):?;
begin
 0041FB18    push        ebp
 0041FB19    mov         ebp,esp
 0041FB1B    add         esp,0FFFFFFE8
 0041FB1E    mov         dword ptr [ebp-0C],ecx
 0041FB21    mov         dword ptr [ebp-8],edx
 0041FB24    mov         dword ptr [ebp-4],eax
 0041FB27    cmp         dword ptr [ebp-8],0
>0041FB2B    jne         0041FB35
 0041FB2D    mov         eax,[0056F668];0x0 HInstance:LongWord
 0041FB32    mov         dword ptr [ebp-8],eax
 0041FB35    push        0A
 0041FB37    mov         eax,dword ptr [ebp-4]
 0041FB3A    call        @LStrToPChar
 0041FB3F    push        eax
 0041FB40    mov         eax,dword ptr [ebp-8]
 0041FB43    push        eax
 0041FB44    call        kernel32.FindResourceA
 0041FB49    mov         dword ptr [ebp-14],eax
 0041FB4C    cmp         dword ptr [ebp-14],0
 0041FB50    setne       byte ptr [ebp-0D]
 0041FB54    cmp         byte ptr [ebp-0D],0
>0041FB58    je          0041FBB3
 0041FB5A    mov         eax,dword ptr [ebp-4]
 0041FB5D    push        eax
 0041FB5E    push        0A
 0041FB60    mov         ecx,dword ptr [ebp-8]
 0041FB63    mov         dl,1
 0041FB65    mov         eax,[0041DE90];TResourceStream
 0041FB6A    call        TResourceStream.Create;TResourceStream.Create
 0041FB6F    mov         dword ptr [ebp-18],eax
 0041FB72    xor         eax,eax
 0041FB74    push        ebp
 0041FB75    push        41FBA8
 0041FB7A    push        dword ptr fs:[eax]
 0041FB7D    mov         dword ptr fs:[eax],esp
 0041FB80    mov         edx,dword ptr [ebp-0C]
 0041FB83    mov         edx,dword ptr [edx]
 0041FB85    mov         eax,dword ptr [ebp-18]
 0041FB88    call        00423940
 0041FB8D    mov         edx,dword ptr [ebp-0C]
 0041FB90    mov         dword ptr [edx],eax
 0041FB92    xor         eax,eax
 0041FB94    pop         edx
 0041FB95    pop         ecx
 0041FB96    pop         ecx
 0041FB97    mov         dword ptr fs:[eax],edx
 0041FB9A    push        41FBAF
 0041FB9F    mov         eax,dword ptr [ebp-18]
 0041FBA2    call        TObject.Free
 0041FBA7    ret
>0041FBA8    jmp         @HandleFinally
>0041FBAD    jmp         0041FB9F
 0041FBAF    mov         byte ptr [ebp-0D],1
 0041FBB3    mov         al,byte ptr [ebp-0D]
 0041FBB6    mov         esp,ebp
 0041FBB8    pop         ebp
 0041FBB9    ret
end;*}

//0041FBBC
procedure BeginGlobalLoading;
begin
{*
 0041FBBC    push        ebp
 0041FBBD    mov         ebp,esp
 0041FBBF    push        ecx
 0041FBC0    push        ebx
 0041FBC1    call        @GetTls
 0041FBC6    mov         eax,dword ptr [eax+0C]
 0041FBCC    mov         dword ptr [ebp-4],eax
 0041FBCF    cmp         dword ptr [ebp-4],0
>0041FBD3    jne         0041FBF2
 0041FBD5    mov         dl,1
 0041FBD7    mov         eax,[0041D46C];TList
 0041FBDC    call        TObject.Create
 0041FBE1    mov         dword ptr [ebp-4],eax
 0041FBE4    call        @GetTls
 0041FBE9    mov         edx,dword ptr [ebp-4]
 0041FBEC    mov         dword ptr [eax+0C],edx
 0041FBF2    call        @GetTls
 0041FBF7    mov         edx,dword ptr [eax+8]
 0041FBFD    mov         eax,dword ptr [ebp-4]
 0041FC00    call        TList.Add
 0041FC05    mov         dl,1
 0041FC07    mov         eax,[0041D46C];TList
 0041FC0C    call        TObject.Create
 0041FC11    mov         ebx,eax
 0041FC13    call        @GetTls
 0041FC18    mov         dword ptr [eax+8],ebx
 0041FC1E    pop         ebx
 0041FC1F    pop         ecx
 0041FC20    pop         ebp
 0041FC21    ret
*}
end;

//0041FC24
procedure NotifyGlobalLoading;
begin
{*
 0041FC24    push        ebp
 0041FC25    mov         ebp,esp
 0041FC27    add         esp,0FFFFFFF4
 0041FC2A    call        @GetTls
 0041FC2F    mov         eax,dword ptr [eax+8]
 0041FC35    mov         dword ptr [ebp-8],eax
 0041FC38    mov         eax,dword ptr [ebp-8]
 0041FC3B    mov         eax,dword ptr [eax+8]
 0041FC3E    dec         eax
 0041FC3F    test        eax,eax
>0041FC41    jl          0041FC66
 0041FC43    inc         eax
 0041FC44    mov         dword ptr [ebp-0C],eax
 0041FC47    mov         dword ptr [ebp-4],0
 0041FC4E    mov         edx,dword ptr [ebp-4]
 0041FC51    mov         eax,dword ptr [ebp-8]
 0041FC54    call        TList.Get
 0041FC59    mov         edx,dword ptr [eax]
 0041FC5B    call        dword ptr [edx+0C]
 0041FC5E    inc         dword ptr [ebp-4]
 0041FC61    dec         dword ptr [ebp-0C]
>0041FC64    jne         0041FC4E
 0041FC66    mov         esp,ebp
 0041FC68    pop         ebp
 0041FC69    ret
*}
end;

//0041FC6C
procedure EndGlobalLoading;
begin
{*
 0041FC6C    push        ebp
 0041FC6D    mov         ebp,esp
 0041FC6F    push        ecx
 0041FC70    push        ebx
 0041FC71    call        @GetTls
 0041FC76    mov         eax,dword ptr [eax+8]
 0041FC7C    call        TObject.Free
 0041FC81    call        @GetTls
 0041FC86    mov         eax,dword ptr [eax+0C]
 0041FC8C    mov         dword ptr [ebp-4],eax
 0041FC8F    mov         eax,dword ptr [ebp-4]
 0041FC92    call        004203B8
 0041FC97    mov         ebx,eax
 0041FC99    call        @GetTls
 0041FC9E    mov         dword ptr [eax+8],ebx
 0041FCA4    mov         eax,dword ptr [ebp-4]
 0041FCA7    mov         edx,dword ptr [eax+8]
 0041FCAA    dec         edx
 0041FCAB    mov         eax,dword ptr [ebp-4]
 0041FCAE    call        00420094
 0041FCB3    mov         eax,dword ptr [ebp-4]
 0041FCB6    cmp         dword ptr [eax+8],0
>0041FCBA    jne         0041FCD1
 0041FCBC    call        @GetTls
 0041FCC1    xor         edx,edx
 0041FCC3    mov         dword ptr [eax+0C],edx
 0041FCC9    mov         eax,dword ptr [ebp-4]
 0041FCCC    call        TObject.Free
 0041FCD1    pop         ebx
 0041FCD2    pop         ecx
 0041FCD3    pop         ebp
 0041FCD4    ret
*}
end;

//0041FCD8
function InitComponent(ClassType:TClass):Boolean;
begin
{*
 0041FCD8    push        ebp
 0041FCD9    mov         ebp,esp
 0041FCDB    add         esp,0FFFFFEF4
 0041FCE1    xor         edx,edx
 0041FCE3    mov         dword ptr [ebp-0C],edx
 0041FCE6    mov         dword ptr [ebp-4],eax
 0041FCE9    xor         eax,eax
 0041FCEB    push        ebp
 0041FCEC    push        41FD7D
 0041FCF1    push        dword ptr fs:[eax]
 0041FCF4    mov         dword ptr fs:[eax],esp
 0041FCF7    mov         byte ptr [ebp-5],0
 0041FCFB    mov         eax,dword ptr [ebp-4]
 0041FCFE    cmp         eax,dword ptr ds:[41E3B8];TComponent
>0041FD04    je          0041FD67
 0041FD06    mov         eax,dword ptr [ebp+8]
 0041FD09    mov         eax,dword ptr [eax-8]
 0041FD0C    cmp         eax,dword ptr [ebp-4]
>0041FD0F    je          0041FD67
 0041FD11    mov         eax,dword ptr [ebp+8]
 0041FD14    push        eax
 0041FD15    mov         eax,dword ptr [ebp-4]
 0041FD18    call        TObject.ClassParent
 0041FD1D    call        InitComponent
 0041FD22    pop         ecx
 0041FD23    mov         byte ptr [ebp-5],al
 0041FD26    lea         edx,[ebp-10C]
 0041FD2C    mov         eax,dword ptr [ebp-4]
 0041FD2F    call        TObject.ClassName
 0041FD34    lea         edx,[ebp-10C]
 0041FD3A    lea         eax,[ebp-0C]
 0041FD3D    call        @LStrFromString
 0041FD42    mov         eax,dword ptr [ebp-0C]
 0041FD45    push        eax
 0041FD46    mov         eax,dword ptr [ebp-4]
 0041FD49    call        00406678
 0041FD4E    call        004066C8
 0041FD53    mov         edx,eax
 0041FD55    mov         eax,dword ptr [ebp+8]
 0041FD58    lea         ecx,[eax-4]
 0041FD5B    pop         eax
 0041FD5C    call        0041FB18
 0041FD61    or          al,byte ptr [ebp-5]
 0041FD64    mov         byte ptr [ebp-5],al
 0041FD67    xor         eax,eax
 0041FD69    pop         edx
 0041FD6A    pop         ecx
 0041FD6B    pop         ecx
 0041FD6C    mov         dword ptr fs:[eax],edx
 0041FD6F    push        41FD84
 0041FD74    lea         eax,[ebp-0C]
 0041FD77    call        @LStrClr
 0041FD7C    ret
>0041FD7D    jmp         @HandleFinally
>0041FD82    jmp         0041FD74
 0041FD84    mov         al,byte ptr [ebp-5]
 0041FD87    mov         esp,ebp
 0041FD89    pop         ebp
 0041FD8A    ret
*}
end;

//0041FD8C
function InitInheritedComponent(Instance:TComponent; RootAncestor:TClass):Boolean;
begin
{*
 0041FD8C    push        ebp
 0041FD8D    mov         ebp,esp
 0041FD8F    add         esp,0FFFFFFF4
 0041FD92    mov         dword ptr [ebp-8],edx
 0041FD95    mov         dword ptr [ebp-4],eax
 0041FD98    mov         eax,[00571A74];GlobalNameSpace:IReadWriteSync
 0041FD9D    mov         edx,dword ptr [eax]
 0041FD9F    call        dword ptr [edx+14]
 0041FDA2    xor         eax,eax
 0041FDA4    push        ebp
 0041FDA5    push        41FE3A
 0041FDAA    push        dword ptr fs:[eax]
 0041FDAD    mov         dword ptr fs:[eax],esp
 0041FDB0    mov         eax,dword ptr [ebp-4]
 0041FDB3    mov         ax,word ptr [eax+1C]
 0041FDB7    and         ax,word ptr ds:[41FE48]
 0041FDBE    mov         dx,word ptr ds:[41FE4C]
 0041FDC5    cmp         dx,ax
 0041FDC8    sete        byte ptr [ebp-0A]
 0041FDCC    cmp         byte ptr [ebp-0A],0
>0041FDD0    je          0041FDD7
 0041FDD2    call        BeginGlobalLoading
 0041FDD7    xor         eax,eax
 0041FDD9    push        ebp
 0041FDDA    push        41FE1B
 0041FDDF    push        dword ptr fs:[eax]
 0041FDE2    mov         dword ptr fs:[eax],esp
 0041FDE5    push        ebp
 0041FDE6    mov         eax,dword ptr [ebp-4]
 0041FDE9    call        TObject.ClassType
 0041FDEE    call        InitComponent
 0041FDF3    pop         ecx
 0041FDF4    mov         byte ptr [ebp-9],al
 0041FDF7    cmp         byte ptr [ebp-0A],0
>0041FDFB    je          0041FE02
 0041FDFD    call        NotifyGlobalLoading
 0041FE02    xor         eax,eax
 0041FE04    pop         edx
 0041FE05    pop         ecx
 0041FE06    pop         ecx
 0041FE07    mov         dword ptr fs:[eax],edx
 0041FE0A    push        41FE22
 0041FE0F    cmp         byte ptr [ebp-0A],0
>0041FE13    je          0041FE1A
 0041FE15    call        EndGlobalLoading
 0041FE1A    ret
>0041FE1B    jmp         @HandleFinally
>0041FE20    jmp         0041FE0F
 0041FE22    xor         eax,eax
 0041FE24    pop         edx
 0041FE25    pop         ecx
 0041FE26    pop         ecx
 0041FE27    mov         dword ptr fs:[eax],edx
 0041FE2A    push        41FE41
 0041FE2F    mov         eax,[00571A74];GlobalNameSpace:IReadWriteSync
 0041FE34    mov         edx,dword ptr [eax]
 0041FE36    call        dword ptr [edx+18]
 0041FE39    ret
>0041FE3A    jmp         @HandleFinally
>0041FE3F    jmp         0041FE2F
 0041FE41    mov         al,byte ptr [ebp-9]
 0041FE44    mov         esp,ebp
 0041FE46    pop         ebp
 0041FE47    ret
*}
end;

//0041FE50
{*procedure sub_0041FE50(?:?; ?:?; ?:?);
begin
 0041FE50    push        ebp
 0041FE51    mov         ebp,esp
 0041FE53    add         esp,0FFFFFFF0
 0041FE56    mov         dword ptr [ebp-0C],ecx
 0041FE59    mov         dword ptr [ebp-8],edx
 0041FE5C    mov         dword ptr [ebp-4],eax
 0041FE5F    push        400
 0041FE64    mov         ecx,dword ptr [ebp-4]
 0041FE67    mov         dl,1
 0041FE69    mov         eax,[0041E1F4];TWriter
 0041FE6E    call        TFiler.Create;TWriter.Create
 0041FE73    mov         dword ptr [ebp-10],eax
 0041FE76    mov         edx,dword ptr [ebp-0C]
 0041FE79    mov         eax,dword ptr [ebp-10]
 0041FE7C    mov         ecx,dword ptr [eax]
 0041FE7E    call        dword ptr [ecx];TWriter.sub_00427944
 0041FE80    mov         eax,dword ptr [ebp-10]
 0041FE83    mov         edx,dword ptr [ebp-0C]
 0041FE86    mov         dword ptr [eax+1C],edx;TWriter.FLookupRoot:TComponent
 0041FE89    xor         eax,eax
 0041FE8B    push        ebp
 0041FE8C    push        41FEB8
 0041FE91    push        dword ptr fs:[eax]
 0041FE94    mov         dword ptr fs:[eax],esp
 0041FE97    mov         edx,dword ptr [ebp-8]
 0041FE9A    mov         eax,dword ptr [ebp-10]
 0041FE9D    call        00427AEC
 0041FEA2    xor         eax,eax
 0041FEA4    pop         edx
 0041FEA5    pop         ecx
 0041FEA6    pop         ecx
 0041FEA7    mov         dword ptr fs:[eax],edx
 0041FEAA    push        41FEBF
 0041FEAF    mov         eax,dword ptr [ebp-10]
 0041FEB2    call        TObject.Free
 0041FEB7    ret
>0041FEB8    jmp         @HandleFinally
>0041FEBD    jmp         0041FEAF
 0041FEBF    mov         esp,ebp
 0041FEC1    pop         ebp
 0041FEC2    ret
end;*}

//0041FEC4
function CollectionsEqual(C1:TCollection; C2:TCollection; Owner1:TComponent; Owner2:TComponent):Boolean;
begin
{*
 0041FEC4    push        ebp
 0041FEC5    mov         ebp,esp
 0041FEC7    add         esp,0FFFFFFE8
 0041FECA    push        ebx
 0041FECB    mov         dword ptr [ebp-0C],ecx
 0041FECE    mov         dword ptr [ebp-8],edx
 0041FED1    mov         dword ptr [ebp-4],eax
 0041FED4    mov         byte ptr [ebp-0D],0
 0041FED8    mov         eax,dword ptr [ebp-4]
 0041FEDB    call        TObject.ClassType
 0041FEE0    mov         ebx,eax
 0041FEE2    mov         eax,dword ptr [ebp-8]
 0041FEE5    call        TObject.ClassType
 0041FEEA    cmp         ebx,eax
>0041FEEC    jne         0041FFE4
 0041FEF2    mov         eax,dword ptr [ebp-4]
 0041FEF5    call        0042158C
 0041FEFA    mov         ebx,eax
 0041FEFC    mov         eax,dword ptr [ebp-8]
 0041FEFF    call        0042158C
 0041FF04    cmp         ebx,eax
>0041FF06    jne         0041FFE4
 0041FF0C    mov         dl,1
 0041FF0E    mov         eax,[0041DE14];TMemoryStream
 0041FF13    call        TObject.Create
 0041FF18    mov         dword ptr [ebp-14],eax
 0041FF1B    xor         eax,eax
 0041FF1D    push        ebp
 0041FF1E    push        41FFDD
 0041FF23    push        dword ptr fs:[eax]
 0041FF26    mov         dword ptr fs:[eax],esp
 0041FF29    push        ebp
 0041FF2A    mov         ecx,dword ptr [ebp-0C]
 0041FF2D    mov         edx,dword ptr [ebp-4]
 0041FF30    mov         eax,dword ptr [ebp-14]
 0041FF33    call        0041FE50
 0041FF38    pop         ecx
 0041FF39    mov         dl,1
 0041FF3B    mov         eax,[0041DE14];TMemoryStream
 0041FF40    call        TObject.Create
 0041FF45    mov         dword ptr [ebp-18],eax
 0041FF48    xor         eax,eax
 0041FF4A    push        ebp
 0041FF4B    push        41FFC0
 0041FF50    push        dword ptr fs:[eax]
 0041FF53    mov         dword ptr fs:[eax],esp
 0041FF56    push        ebp
 0041FF57    mov         ecx,dword ptr [ebp+8]
 0041FF5A    mov         edx,dword ptr [ebp-8]
 0041FF5D    mov         eax,dword ptr [ebp-18]
 0041FF60    call        0041FE50
 0041FF65    pop         ecx
 0041FF66    mov         eax,dword ptr [ebp-14]
 0041FF69    mov         edx,dword ptr [eax]
 0041FF6B    call        dword ptr [edx]
 0041FF6D    push        edx
 0041FF6E    push        eax
 0041FF6F    mov         eax,dword ptr [ebp-18]
 0041FF72    mov         edx,dword ptr [eax]
 0041FF74    call        dword ptr [edx]
 0041FF76    cmp         edx,dword ptr [esp+4]
>0041FF7A    jne         0041FF7F
 0041FF7C    cmp         eax,dword ptr [esp]
 0041FF7F    pop         edx
 0041FF80    pop         eax
>0041FF81    jne         0041FFA1
 0041FF83    mov         eax,dword ptr [ebp-14]
 0041FF86    mov         edx,dword ptr [eax]
 0041FF88    call        dword ptr [edx]
 0041FF8A    mov         ecx,eax
 0041FF8C    mov         eax,dword ptr [ebp-18]
 0041FF8F    mov         edx,dword ptr [eax+4]
 0041FF92    mov         eax,dword ptr [ebp-14]
 0041FF95    mov         eax,dword ptr [eax+4]
 0041FF98    call        CompareMem
 0041FF9D    test        al,al
>0041FF9F    jne         0041FFA5
 0041FFA1    xor         eax,eax
>0041FFA3    jmp         0041FFA7
 0041FFA5    mov         al,1
 0041FFA7    mov         byte ptr [ebp-0D],al
 0041FFAA    xor         eax,eax
 0041FFAC    pop         edx
 0041FFAD    pop         ecx
 0041FFAE    pop         ecx
 0041FFAF    mov         dword ptr fs:[eax],edx
 0041FFB2    push        41FFC7
 0041FFB7    mov         eax,dword ptr [ebp-18]
 0041FFBA    call        TObject.Free
 0041FFBF    ret
>0041FFC0    jmp         @HandleFinally
>0041FFC5    jmp         0041FFB7
 0041FFC7    xor         eax,eax
 0041FFC9    pop         edx
 0041FFCA    pop         ecx
 0041FFCB    pop         ecx
 0041FFCC    mov         dword ptr fs:[eax],edx
 0041FFCF    push        41FFE4
 0041FFD4    mov         eax,dword ptr [ebp-14]
 0041FFD7    call        TObject.Free
 0041FFDC    ret
>0041FFDD    jmp         @HandleFinally
>0041FFE2    jmp         0041FFD4
 0041FFE4    mov         al,byte ptr [ebp-0D]
 0041FFE7    pop         ebx
 0041FFE8    mov         esp,ebp
 0041FFEA    pop         ebp
 0041FFEB    ret         4
*}
end;

//0041FFF0
destructor TList.Destroy;
begin
{*
 0041FFF0    push        ebp
 0041FFF1    mov         ebp,esp
 0041FFF3    add         esp,0FFFFFFF8
 0041FFF6    call        @BeforeDestruction
 0041FFFB    mov         byte ptr [ebp-5],dl
 0041FFFE    mov         dword ptr [ebp-4],eax
 00420001    mov         eax,dword ptr [ebp-4]
 00420004    mov         edx,dword ptr [eax]
 00420006    call        dword ptr [edx+8]
 00420009    cmp         byte ptr [ebp-5],0
>0042000D    jle         00420017
 0042000F    mov         eax,dword ptr [ebp-4]
 00420012    call        @ClassDestroy
 00420017    pop         ecx
 00420018    pop         ecx
 00420019    pop         ebp
 0042001A    ret
*}
end;

//0042001C
function TList.Add(Item:Pointer):Integer;
begin
{*
 0042001C    push        ebp
 0042001D    mov         ebp,esp
 0042001F    add         esp,0FFFFFFF4
 00420022    push        ebx
 00420023    mov         dword ptr [ebp-8],edx
 00420026    mov         dword ptr [ebp-4],eax
 00420029    mov         eax,dword ptr [ebp-4]
 0042002C    mov         eax,dword ptr [eax+8]
 0042002F    mov         dword ptr [ebp-0C],eax
 00420032    mov         eax,dword ptr [ebp-0C]
 00420035    mov         edx,dword ptr [ebp-4]
 00420038    cmp         eax,dword ptr [edx+0C]
>0042003B    jne         00420044
 0042003D    mov         eax,dword ptr [ebp-4]
 00420040    mov         edx,dword ptr [eax]
 00420042    call        dword ptr [edx]
 00420044    mov         eax,dword ptr [ebp-4]
 00420047    mov         eax,dword ptr [eax+4]
 0042004A    mov         edx,dword ptr [ebp-0C]
 0042004D    mov         ecx,dword ptr [ebp-8]
 00420050    mov         dword ptr [eax+edx*4],ecx
 00420053    mov         eax,dword ptr [ebp-4]
 00420056    inc         dword ptr [eax+8]
 00420059    cmp         dword ptr [ebp-8],0
>0042005D    je          0042006C
 0042005F    xor         ecx,ecx
 00420061    mov         edx,dword ptr [ebp-8]
 00420064    mov         eax,dword ptr [ebp-4]
 00420067    mov         ebx,dword ptr [eax]
 00420069    call        dword ptr [ebx+4]
 0042006C    mov         eax,dword ptr [ebp-0C]
 0042006F    pop         ebx
 00420070    mov         esp,ebp
 00420072    pop         ebp
 00420073    ret
*}
end;

//00420074
procedure sub_00420074;
begin
{*
 00420074    push        ebp
 00420075    mov         ebp,esp
 00420077    push        ecx
 00420078    mov         dword ptr [ebp-4],eax
 0042007B    xor         edx,edx
 0042007D    mov         eax,dword ptr [ebp-4]
 00420080    call        00420580
 00420085    xor         edx,edx
 00420087    mov         eax,dword ptr [ebp-4]
 0042008A    call        00420524
 0042008F    pop         ecx
 00420090    pop         ebp
 00420091    ret
*}
end;

//00420094
procedure sub_00420094(?:TList; ?:Integer);
begin
{*
 00420094    push        ebp
 00420095    mov         ebp,esp
 00420097    add         esp,0FFFFFFF4
 0042009A    push        ebx
 0042009B    mov         dword ptr [ebp-8],edx
 0042009E    mov         dword ptr [ebp-4],eax
 004200A1    cmp         dword ptr [ebp-8],0
>004200A5    jl          004200B2
 004200A7    mov         eax,dword ptr [ebp-8]
 004200AA    mov         edx,dword ptr [ebp-4]
 004200AD    cmp         eax,dword ptr [edx+8]
>004200B0    jl          004200C5
 004200B2    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 004200B8    mov         ecx,dword ptr [ebp-8]
 004200BB    mov         eax,dword ptr [ebp-4]
 004200BE    mov         eax,dword ptr [eax]
 004200C0    call        00420170
 004200C5    mov         edx,dword ptr [ebp-8]
 004200C8    mov         eax,dword ptr [ebp-4]
 004200CB    call        TList.Get
 004200D0    mov         dword ptr [ebp-0C],eax
 004200D3    mov         eax,dword ptr [ebp-4]
 004200D6    dec         dword ptr [eax+8]
 004200D9    mov         eax,dword ptr [ebp-8]
 004200DC    mov         edx,dword ptr [ebp-4]
 004200DF    cmp         eax,dword ptr [edx+8]
>004200E2    jge         00420110
 004200E4    mov         eax,dword ptr [ebp-4]
 004200E7    mov         eax,dword ptr [eax+8]
 004200EA    sub         eax,dword ptr [ebp-8]
 004200ED    mov         ecx,eax
 004200EF    shl         ecx,2
 004200F2    mov         eax,dword ptr [ebp-4]
 004200F5    mov         eax,dword ptr [eax+4]
 004200F8    mov         edx,dword ptr [ebp-8]
 004200FB    lea         edx,[eax+edx*4]
 004200FE    mov         eax,dword ptr [ebp-4]
 00420101    mov         eax,dword ptr [eax+4]
 00420104    mov         ebx,dword ptr [ebp-8]
 00420107    lea         eax,[eax+ebx*4+4]
 0042010B    call        Move
 00420110    cmp         dword ptr [ebp-0C],0
>00420114    je          00420123
 00420116    mov         cl,2
 00420118    mov         edx,dword ptr [ebp-0C]
 0042011B    mov         eax,dword ptr [ebp-4]
 0042011E    mov         ebx,dword ptr [eax]
 00420120    call        dword ptr [ebx+4]
 00420123    pop         ebx
 00420124    mov         esp,ebp
 00420126    pop         ebp
 00420127    ret
*}
end;

//00420128
{*function sub_00420128(?:?):?;
begin
 00420128    push        ebp
 00420129    mov         ebp,esp
 0042012B    mov         eax,dword ptr [ebp+4]
 0042012E    pop         ebp
 0042012F    ret
end;*}

//00420130
procedure sub_00420130;
begin
{*
 00420130    push        ebp
 00420131    mov         ebp,esp
 00420133    add         esp,0FFFFFFEC
 00420136    mov         dword ptr [ebp-0C],ecx
 00420139    mov         dword ptr [ebp-8],edx
 0042013C    mov         dword ptr [ebp-4],eax
 0042013F    push        ebp
 00420140    call        00420128
 00420145    pop         ecx
 00420146    push        eax
 00420147    mov         eax,dword ptr [ebp-0C]
 0042014A    mov         dword ptr [ebp-14],eax
 0042014D    mov         byte ptr [ebp-10],0
 00420151    lea         eax,[ebp-14]
 00420154    push        eax
 00420155    push        0
 00420157    mov         ecx,dword ptr [ebp-8]
 0042015A    mov         dl,1
 0042015C    mov         eax,[0041D244];EListError
 00420161    call        Exception.CreateFmt;EListError.Create
>00420166    jmp         @RaiseExcept
*}
end;

//00420170
{*procedure sub_00420170(?:TList; ?:TResStringRec; ?:?);
begin
 00420170    push        ebp
 00420171    mov         ebp,esp
 00420173    add         esp,0FFFFFFF0
 00420176    push        ebx
 00420177    xor         ebx,ebx
 00420179    mov         dword ptr [ebp-10],ebx
 0042017C    mov         dword ptr [ebp-0C],ecx
 0042017F    mov         dword ptr [ebp-8],edx
 00420182    mov         dword ptr [ebp-4],eax
 00420185    xor         eax,eax
 00420187    push        ebp
 00420188    push        4201C4
 0042018D    push        dword ptr fs:[eax]
 00420190    mov         dword ptr fs:[eax],esp
 00420193    lea         edx,[ebp-10]
 00420196    mov         eax,dword ptr [ebp-8]
 00420199    call        LoadResString;'I/O error %d'
 0042019E    mov         edx,dword ptr [ebp-10]
 004201A1    mov         ecx,dword ptr [ebp-0C]
 004201A4    mov         eax,[0041D46C];TList
 004201A9    call        00420130
 004201AE    xor         eax,eax
 004201B0    pop         edx
 004201B1    pop         ecx
 004201B2    pop         ecx
 004201B3    mov         dword ptr fs:[eax],edx
 004201B6    push        4201CB
 004201BB    lea         eax,[ebp-10]
 004201BE    call        @LStrClr
 004201C3    ret
>004201C4    jmp         @HandleFinally
>004201C9    jmp         004201BB
 004201CB    pop         ebx
 004201CC    mov         esp,ebp
 004201CE    pop         ebp
 004201CF    ret
end;*}

//004201D0
{*function sub_004201D0(?:TList):?;
begin
 004201D0    push        ebp
 004201D1    mov         ebp,esp
 004201D3    add         esp,0FFFFFFF8
 004201D6    mov         dword ptr [ebp-4],eax
 004201D9    mov         eax,dword ptr [ebp-4]
 004201DC    mov         eax,dword ptr [eax+8]
 004201DF    mov         edx,dword ptr [ebp-4]
 004201E2    cmp         eax,dword ptr [edx+0C]
>004201E5    jne         004201EE
 004201E7    mov         eax,dword ptr [ebp-4]
 004201EA    mov         edx,dword ptr [eax]
 004201EC    call        dword ptr [edx]
 004201EE    mov         eax,dword ptr [ebp-4]
 004201F1    mov         dword ptr [ebp-8],eax
 004201F4    mov         eax,dword ptr [ebp-8]
 004201F7    pop         ecx
 004201F8    pop         ecx
 004201F9    pop         ebp
 004201FA    ret
end;*}

//004201FC
{*function sub_004201FC(?:TList):?;
begin
 004201FC    push        ebp
 004201FD    mov         ebp,esp
 004201FF    add         esp,0FFFFFFF8
 00420202    mov         dword ptr [ebp-4],eax
 00420205    xor         edx,edx
 00420207    mov         eax,dword ptr [ebp-4]
 0042020A    call        TList.Get
 0042020F    mov         dword ptr [ebp-8],eax
 00420212    mov         eax,dword ptr [ebp-8]
 00420215    pop         ecx
 00420216    pop         ecx
 00420217    pop         ebp
 00420218    ret
end;*}

//0042021C
function TList.Get(Index:Integer):Pointer;
begin
{*
 0042021C    push        ebp
 0042021D    mov         ebp,esp
 0042021F    add         esp,0FFFFFFF4
 00420222    mov         dword ptr [ebp-8],edx
 00420225    mov         dword ptr [ebp-4],eax
 00420228    cmp         dword ptr [ebp-8],0
>0042022C    jl          00420239
 0042022E    mov         eax,dword ptr [ebp-8]
 00420231    mov         edx,dword ptr [ebp-4]
 00420234    cmp         eax,dword ptr [edx+8]
>00420237    jl          0042024C
 00420239    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 0042023F    mov         ecx,dword ptr [ebp-8]
 00420242    mov         eax,dword ptr [ebp-4]
 00420245    mov         eax,dword ptr [eax]
 00420247    call        00420170
 0042024C    mov         eax,dword ptr [ebp-4]
 0042024F    mov         eax,dword ptr [eax+4]
 00420252    mov         edx,dword ptr [ebp-8]
 00420255    mov         eax,dword ptr [eax+edx*4]
 00420258    mov         dword ptr [ebp-0C],eax
 0042025B    mov         eax,dword ptr [ebp-0C]
 0042025E    mov         esp,ebp
 00420260    pop         ebp
 00420261    ret
*}
end;

//00420264
procedure sub_00420264;
begin
{*
 00420264    push        ebp
 00420265    mov         ebp,esp
 00420267    add         esp,0FFFFFFF8
 0042026A    mov         dword ptr [ebp-4],eax
 0042026D    mov         eax,dword ptr [ebp-4]
 00420270    cmp         dword ptr [eax+0C],40;TList.FCapacity:Integer
>00420274    jle         0042028B
 00420276    mov         eax,dword ptr [ebp-4]
 00420279    mov         eax,dword ptr [eax+0C];TList.FCapacity:Integer
 0042027C    test        eax,eax
>0042027E    jns         00420283
 00420280    add         eax,3
 00420283    sar         eax,2
 00420286    mov         dword ptr [ebp-8],eax
>00420289    jmp         004202A4
 0042028B    mov         eax,dword ptr [ebp-4]
 0042028E    cmp         dword ptr [eax+0C],8;TList.FCapacity:Integer
>00420292    jle         0042029D
 00420294    mov         dword ptr [ebp-8],10
>0042029B    jmp         004202A4
 0042029D    mov         dword ptr [ebp-8],4
 004202A4    mov         eax,dword ptr [ebp-4]
 004202A7    mov         edx,dword ptr [eax+0C];TList.FCapacity:Integer
 004202AA    add         edx,dword ptr [ebp-8]
 004202AD    mov         eax,dword ptr [ebp-4]
 004202B0    call        00420524
 004202B5    pop         ecx
 004202B6    pop         ecx
 004202B7    pop         ebp
 004202B8    ret
*}
end;

//004202BC
{*function sub_004202BC(?:TList; ?:TComponent):?;
begin
 004202BC    push        ebp
 004202BD    mov         ebp,esp
 004202BF    add         esp,0FFFFFFF4
 004202C2    mov         dword ptr [ebp-8],edx
 004202C5    mov         dword ptr [ebp-4],eax
 004202C8    xor         eax,eax
 004202CA    mov         dword ptr [ebp-0C],eax
>004202CD    jmp         004202D2
 004202CF    inc         dword ptr [ebp-0C]
 004202D2    mov         eax,dword ptr [ebp-0C]
 004202D5    mov         edx,dword ptr [ebp-4]
 004202D8    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>004202DB    jge         004202EE
 004202DD    mov         eax,dword ptr [ebp-4]
 004202E0    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004202E3    mov         edx,dword ptr [ebp-0C]
 004202E6    mov         eax,dword ptr [eax+edx*4]
 004202E9    cmp         eax,dword ptr [ebp-8]
>004202EC    jne         004202CF
 004202EE    mov         eax,dword ptr [ebp-0C]
 004202F1    mov         edx,dword ptr [ebp-4]
 004202F4    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>004202F7    jne         00420300
 004202F9    mov         dword ptr [ebp-0C],0FFFFFFFF
 00420300    mov         eax,dword ptr [ebp-0C]
 00420303    mov         esp,ebp
 00420305    pop         ebp
 00420306    ret
end;*}

//00420308
{*procedure sub_00420308(?:TList; ?:?; ?:Pointer);
begin
 00420308    push        ebp
 00420309    mov         ebp,esp
 0042030B    add         esp,0FFFFFFF4
 0042030E    push        ebx
 0042030F    mov         dword ptr [ebp-0C],ecx
 00420312    mov         dword ptr [ebp-8],edx
 00420315    mov         dword ptr [ebp-4],eax
 00420318    cmp         dword ptr [ebp-8],0
>0042031C    jl          00420329
 0042031E    mov         eax,dword ptr [ebp-8]
 00420321    mov         edx,dword ptr [ebp-4]
 00420324    cmp         eax,dword ptr [edx+8]
>00420327    jle         0042033C
 00420329    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 0042032F    mov         ecx,dword ptr [ebp-8]
 00420332    mov         eax,dword ptr [ebp-4]
 00420335    mov         eax,dword ptr [eax]
 00420337    call        00420170
 0042033C    mov         eax,dword ptr [ebp-4]
 0042033F    mov         eax,dword ptr [eax+8]
 00420342    mov         edx,dword ptr [ebp-4]
 00420345    cmp         eax,dword ptr [edx+0C]
>00420348    jne         00420351
 0042034A    mov         eax,dword ptr [ebp-4]
 0042034D    mov         edx,dword ptr [eax]
 0042034F    call        dword ptr [edx]
 00420351    mov         eax,dword ptr [ebp-8]
 00420354    mov         edx,dword ptr [ebp-4]
 00420357    cmp         eax,dword ptr [edx+8]
>0042035A    jge         00420388
 0042035C    mov         eax,dword ptr [ebp-4]
 0042035F    mov         eax,dword ptr [eax+8]
 00420362    sub         eax,dword ptr [ebp-8]
 00420365    mov         ecx,eax
 00420367    shl         ecx,2
 0042036A    mov         eax,dword ptr [ebp-4]
 0042036D    mov         eax,dword ptr [eax+4]
 00420370    mov         edx,dword ptr [ebp-8]
 00420373    lea         edx,[eax+edx*4+4]
 00420377    mov         eax,dword ptr [ebp-4]
 0042037A    mov         eax,dword ptr [eax+4]
 0042037D    mov         ebx,dword ptr [ebp-8]
 00420380    lea         eax,[eax+ebx*4]
 00420383    call        Move
 00420388    mov         eax,dword ptr [ebp-4]
 0042038B    mov         eax,dword ptr [eax+4]
 0042038E    mov         edx,dword ptr [ebp-8]
 00420391    mov         ecx,dword ptr [ebp-0C]
 00420394    mov         dword ptr [eax+edx*4],ecx
 00420397    mov         eax,dword ptr [ebp-4]
 0042039A    inc         dword ptr [eax+8]
 0042039D    cmp         dword ptr [ebp-0C],0
>004203A1    je          004203B0
 004203A3    xor         ecx,ecx
 004203A5    mov         edx,dword ptr [ebp-0C]
 004203A8    mov         eax,dword ptr [ebp-4]
 004203AB    mov         ebx,dword ptr [eax]
 004203AD    call        dword ptr [ebx+4]
 004203B0    pop         ebx
 004203B1    mov         esp,ebp
 004203B3    pop         ebp
 004203B4    ret
end;*}

//004203B8
{*function sub_004203B8(?:TList):?;
begin
 004203B8    push        ebp
 004203B9    mov         ebp,esp
 004203BB    add         esp,0FFFFFFF8
 004203BE    mov         dword ptr [ebp-4],eax
 004203C1    mov         eax,dword ptr [ebp-4]
 004203C4    mov         edx,dword ptr [eax+8]
 004203C7    dec         edx
 004203C8    mov         eax,dword ptr [ebp-4]
 004203CB    call        TList.Get
 004203D0    mov         dword ptr [ebp-8],eax
 004203D3    mov         eax,dword ptr [ebp-8]
 004203D6    pop         ecx
 004203D7    pop         ecx
 004203D8    pop         ebp
 004203D9    ret
end;*}

//004203DC
{*procedure sub_004203DC(?:TList; ?:Integer; ?:?);
begin
 004203DC    push        ebp
 004203DD    mov         ebp,esp
 004203DF    add         esp,0FFFFFFF0
 004203E2    mov         dword ptr [ebp-0C],ecx
 004203E5    mov         dword ptr [ebp-8],edx
 004203E8    mov         dword ptr [ebp-4],eax
 004203EB    mov         eax,dword ptr [ebp-8]
 004203EE    cmp         eax,dword ptr [ebp-0C]
>004203F1    je          0042045A
 004203F3    cmp         dword ptr [ebp-0C],0
>004203F7    jl          00420404
 004203F9    mov         eax,dword ptr [ebp-0C]
 004203FC    mov         edx,dword ptr [ebp-4]
 004203FF    cmp         eax,dword ptr [edx+8]
>00420402    jl          00420417
 00420404    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 0042040A    mov         ecx,dword ptr [ebp-0C]
 0042040D    mov         eax,dword ptr [ebp-4]
 00420410    mov         eax,dword ptr [eax]
 00420412    call        00420170
 00420417    mov         edx,dword ptr [ebp-8]
 0042041A    mov         eax,dword ptr [ebp-4]
 0042041D    call        TList.Get
 00420422    mov         dword ptr [ebp-10],eax
 00420425    mov         eax,dword ptr [ebp-4]
 00420428    mov         eax,dword ptr [eax+4]
 0042042B    mov         edx,dword ptr [ebp-8]
 0042042E    xor         ecx,ecx
 00420430    mov         dword ptr [eax+edx*4],ecx
 00420433    mov         edx,dword ptr [ebp-8]
 00420436    mov         eax,dword ptr [ebp-4]
 00420439    call        00420094
 0042043E    xor         ecx,ecx
 00420440    mov         edx,dword ptr [ebp-0C]
 00420443    mov         eax,dword ptr [ebp-4]
 00420446    call        00420308
 0042044B    mov         eax,dword ptr [ebp-4]
 0042044E    mov         eax,dword ptr [eax+4]
 00420451    mov         edx,dword ptr [ebp-0C]
 00420454    mov         ecx,dword ptr [ebp-10]
 00420457    mov         dword ptr [eax+edx*4],ecx
 0042045A    mov         esp,ebp
 0042045C    pop         ebp
 0042045D    ret
end;*}

//00420460
{*procedure sub_00420460(?:TList; ?:?; ?:Pointer);
begin
 00420460    push        ebp
 00420461    mov         ebp,esp
 00420463    add         esp,0FFFFFFF0
 00420466    push        ebx
 00420467    mov         dword ptr [ebp-0C],ecx
 0042046A    mov         dword ptr [ebp-8],edx
 0042046D    mov         dword ptr [ebp-4],eax
 00420470    cmp         dword ptr [ebp-8],0
>00420474    jl          00420481
 00420476    mov         eax,dword ptr [ebp-8]
 00420479    mov         edx,dword ptr [ebp-4]
 0042047C    cmp         eax,dword ptr [edx+8]
>0042047F    jl          00420494
 00420481    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00420487    mov         ecx,dword ptr [ebp-8]
 0042048A    mov         eax,dword ptr [ebp-4]
 0042048D    mov         eax,dword ptr [eax]
 0042048F    call        00420170
 00420494    mov         eax,dword ptr [ebp-4]
 00420497    mov         eax,dword ptr [eax+4]
 0042049A    mov         edx,dword ptr [ebp-8]
 0042049D    mov         eax,dword ptr [eax+edx*4]
 004204A0    cmp         eax,dword ptr [ebp-0C]
>004204A3    je          004204E9
 004204A5    mov         eax,dword ptr [ebp-4]
 004204A8    mov         eax,dword ptr [eax+4]
 004204AB    mov         edx,dword ptr [ebp-8]
 004204AE    mov         eax,dword ptr [eax+edx*4]
 004204B1    mov         dword ptr [ebp-10],eax
 004204B4    mov         eax,dword ptr [ebp-4]
 004204B7    mov         eax,dword ptr [eax+4]
 004204BA    mov         edx,dword ptr [ebp-8]
 004204BD    mov         ecx,dword ptr [ebp-0C]
 004204C0    mov         dword ptr [eax+edx*4],ecx
 004204C3    cmp         dword ptr [ebp-10],0
>004204C7    je          004204D6
 004204C9    mov         cl,2
 004204CB    mov         edx,dword ptr [ebp-10]
 004204CE    mov         eax,dword ptr [ebp-4]
 004204D1    mov         ebx,dword ptr [eax]
 004204D3    call        dword ptr [ebx+4]
 004204D6    cmp         dword ptr [ebp-0C],0
>004204DA    je          004204E9
 004204DC    xor         ecx,ecx
 004204DE    mov         edx,dword ptr [ebp-0C]
 004204E1    mov         eax,dword ptr [ebp-4]
 004204E4    mov         ebx,dword ptr [eax]
 004204E6    call        dword ptr [ebx+4]
 004204E9    pop         ebx
 004204EA    mov         esp,ebp
 004204EC    pop         ebp
 004204ED    ret
end;*}

//004204F0
{*function sub_004204F0(?:TList; ?:TPersistent):?;
begin
 004204F0    push        ebp
 004204F1    mov         ebp,esp
 004204F3    add         esp,0FFFFFFF4
 004204F6    mov         dword ptr [ebp-8],edx
 004204F9    mov         dword ptr [ebp-4],eax
 004204FC    mov         edx,dword ptr [ebp-8]
 004204FF    mov         eax,dword ptr [ebp-4]
 00420502    call        004202BC
 00420507    mov         dword ptr [ebp-0C],eax
 0042050A    cmp         dword ptr [ebp-0C],0
>0042050E    jl          0042051B
 00420510    mov         edx,dword ptr [ebp-0C]
 00420513    mov         eax,dword ptr [ebp-4]
 00420516    call        00420094
 0042051B    mov         eax,dword ptr [ebp-0C]
 0042051E    mov         esp,ebp
 00420520    pop         ebp
 00420521    ret
end;*}

//00420524
{*procedure sub_00420524(?:TList; ?:?);
begin
 00420524    push        ebp
 00420525    mov         ebp,esp
 00420527    add         esp,0FFFFFFF8
 0042052A    mov         dword ptr [ebp-8],edx
 0042052D    mov         dword ptr [ebp-4],eax
 00420530    mov         eax,dword ptr [ebp-8]
 00420533    mov         edx,dword ptr [ebp-4]
 00420536    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>00420539    jl          00420544
 0042053B    cmp         dword ptr [ebp-8],7FFFFFF
>00420542    jle         00420557
 00420544    mov         edx,dword ptr ds:[56E33C];^SListCapacityError:TResStringRec
 0042054A    mov         ecx,dword ptr [ebp-8]
 0042054D    mov         eax,dword ptr [ebp-4]
 00420550    mov         eax,dword ptr [eax]
 00420552    call        00420170
 00420557    mov         eax,dword ptr [ebp-8]
 0042055A    mov         edx,dword ptr [ebp-4]
 0042055D    cmp         eax,dword ptr [edx+0C];TList.FCapacity:Integer
>00420560    je          0042057C
 00420562    mov         edx,dword ptr [ebp-8]
 00420565    shl         edx,2
 00420568    mov         eax,dword ptr [ebp-4]
 0042056B    add         eax,4;TList.FList:PPointerList
 0042056E    call        @ReallocMem
 00420573    mov         eax,dword ptr [ebp-8]
 00420576    mov         edx,dword ptr [ebp-4]
 00420579    mov         dword ptr [edx+0C],eax;TList.FCapacity:Integer
 0042057C    pop         ecx
 0042057D    pop         ecx
 0042057E    pop         ebp
 0042057F    ret
end;*}

//00420580
{*procedure sub_00420580(?:TList; ?:?);
begin
 00420580    push        ebp
 00420581    mov         ebp,esp
 00420583    add         esp,0FFFFFFF0
 00420586    mov         dword ptr [ebp-8],edx
 00420589    mov         dword ptr [ebp-4],eax
 0042058C    cmp         dword ptr [ebp-8],0
>00420590    jl          0042059B
 00420592    cmp         dword ptr [ebp-8],7FFFFFF
>00420599    jle         004205AE
 0042059B    mov         edx,dword ptr ds:[56E248];^SListCountError:TResStringRec
 004205A1    mov         ecx,dword ptr [ebp-8]
 004205A4    mov         eax,dword ptr [ebp-4]
 004205A7    mov         eax,dword ptr [eax]
 004205A9    call        00420170
 004205AE    mov         eax,dword ptr [ebp-8]
 004205B1    mov         edx,dword ptr [ebp-4]
 004205B4    cmp         eax,dword ptr [edx+0C];TList.FCapacity:Integer
>004205B7    jle         004205C4
 004205B9    mov         edx,dword ptr [ebp-8]
 004205BC    mov         eax,dword ptr [ebp-4]
 004205BF    call        00420524
 004205C4    mov         eax,dword ptr [ebp-8]
 004205C7    mov         edx,dword ptr [ebp-4]
 004205CA    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>004205CD    jle         004205F3
 004205CF    mov         eax,dword ptr [ebp-4]
 004205D2    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004205D5    mov         edx,dword ptr [ebp-4]
 004205D8    mov         edx,dword ptr [edx+8];TList.FCount:Integer
 004205DB    lea         eax,[eax+edx*4]
 004205DE    mov         edx,dword ptr [ebp-8]
 004205E1    mov         ecx,dword ptr [ebp-4]
 004205E4    sub         edx,dword ptr [ecx+8]
 004205E7    shl         edx,2
 004205EA    xor         ecx,ecx
 004205EC    call        @FillChar
>004205F1    jmp         0042061B
 004205F3    mov         eax,dword ptr [ebp-4]
 004205F6    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004205F9    dec         eax
 004205FA    mov         edx,dword ptr [ebp-8]
 004205FD    sub         edx,eax
>004205FF    jg          0042061B
 00420601    dec         edx
 00420602    mov         dword ptr [ebp-10],edx
 00420605    mov         dword ptr [ebp-0C],eax
 00420608    mov         edx,dword ptr [ebp-0C]
 0042060B    mov         eax,dword ptr [ebp-4]
 0042060E    call        00420094
 00420613    dec         dword ptr [ebp-0C]
 00420616    inc         dword ptr [ebp-10]
>00420619    jne         00420608
 0042061B    mov         eax,dword ptr [ebp-8]
 0042061E    mov         edx,dword ptr [ebp-4]
 00420621    mov         dword ptr [edx+8],eax;TList.FCount:Integer
 00420624    mov         esp,ebp
 00420626    pop         ebp
 00420627    ret
end;*}

//00420628
{*procedure sub_00420628(?:?; ?:?);
begin
 00420628    push        ebp
 00420629    mov         ebp,esp
 0042062B    add         esp,0FFFFFFF4
 0042062E    mov         byte ptr [ebp-9],cl
 00420631    mov         dword ptr [ebp-8],edx
 00420634    mov         dword ptr [ebp-4],eax
 00420637    mov         esp,ebp
 00420639    pop         ebp
 0042063A    ret
end;*}

//0042063C
constructor TThreadList.Create;
begin
{*
 0042063C    push        ebp
 0042063D    mov         ebp,esp
 0042063F    add         esp,0FFFFFFF8
 00420642    test        dl,dl
>00420644    je          0042064E
 00420646    add         esp,0FFFFFFF0
 00420649    call        @ClassCreate
 0042064E    mov         byte ptr [ebp-5],dl
 00420651    mov         dword ptr [ebp-4],eax
 00420654    xor         edx,edx
 00420656    mov         eax,dword ptr [ebp-4]
 00420659    call        TObject.Create
 0042065E    mov         eax,dword ptr [ebp-4]
 00420661    add         eax,8
 00420664    push        eax
 00420665    call        kernel32.InitializeCriticalSection
 0042066A    mov         dl,1
 0042066C    mov         eax,[0041D46C];TList
 00420671    call        TObject.Create
 00420676    mov         edx,dword ptr [ebp-4]
 00420679    mov         dword ptr [edx+4],eax
 0042067C    mov         eax,dword ptr [ebp-4]
 0042067F    mov         byte ptr [eax+20],0
 00420683    mov         eax,dword ptr [ebp-4]
 00420686    cmp         byte ptr [ebp-5],0
>0042068A    je          0042069B
 0042068C    call        @AfterConstruction
 00420691    pop         dword ptr fs:[0]
 00420698    add         esp,0C
 0042069B    mov         eax,dword ptr [ebp-4]
 0042069E    pop         ecx
 0042069F    pop         ecx
 004206A0    pop         ebp
 004206A1    ret
*}
end;

//004206A4
destructor TThreadList.Destroy;
begin
{*
 004206A4    push        ebp
 004206A5    mov         ebp,esp
 004206A7    add         esp,0FFFFFFF8
 004206AA    call        @BeforeDestruction
 004206AF    mov         byte ptr [ebp-5],dl
 004206B2    mov         dword ptr [ebp-4],eax
 004206B5    mov         eax,dword ptr [ebp-4]
 004206B8    call        TThreadList.LockList
 004206BD    xor         eax,eax
 004206BF    push        ebp
 004206C0    push        420706
 004206C5    push        dword ptr fs:[eax]
 004206C8    mov         dword ptr fs:[eax],esp
 004206CB    mov         eax,dword ptr [ebp-4]
 004206CE    mov         eax,dword ptr [eax+4]
 004206D1    call        TObject.Free
 004206D6    mov         dl,byte ptr [ebp-5]
 004206D9    and         dl,0FC
 004206DC    mov         eax,dword ptr [ebp-4]
 004206DF    call        TObject.Destroy
 004206E4    xor         eax,eax
 004206E6    pop         edx
 004206E7    pop         ecx
 004206E8    pop         ecx
 004206E9    mov         dword ptr fs:[eax],edx
 004206EC    push        42070D
 004206F1    mov         eax,dword ptr [ebp-4]
 004206F4    call        TThreadList.UnlockList
 004206F9    mov         eax,dword ptr [ebp-4]
 004206FC    add         eax,8
 004206FF    push        eax
 00420700    call        kernel32.DeleteCriticalSection
 00420705    ret
>00420706    jmp         @HandleFinally
>0042070B    jmp         004206F1
 0042070D    cmp         byte ptr [ebp-5],0
>00420711    jle         0042071B
 00420713    mov         eax,dword ptr [ebp-4]
 00420716    call        @ClassDestroy
 0042071B    pop         ecx
 0042071C    pop         ecx
 0042071D    pop         ebp
 0042071E    ret
*}
end;

//00420720
procedure sub_00420720(?:TThreadList; ?:Pointer);
begin
{*
 00420720    push        ebp
 00420721    mov         ebp,esp
 00420723    add         esp,0FFFFFFF8
 00420726    mov         dword ptr [ebp-8],edx
 00420729    mov         dword ptr [ebp-4],eax
 0042072C    mov         eax,dword ptr [ebp-4]
 0042072F    call        TThreadList.LockList
 00420734    xor         eax,eax
 00420736    push        ebp
 00420737    push        4207A1
 0042073C    push        dword ptr fs:[eax]
 0042073F    mov         dword ptr fs:[eax],esp
 00420742    mov         eax,dword ptr [ebp-4]
 00420745    cmp         byte ptr [eax+20],1
>00420749    je          0042075C
 0042074B    mov         eax,dword ptr [ebp-4]
 0042074E    mov         eax,dword ptr [eax+4]
 00420751    mov         edx,dword ptr [ebp-8]
 00420754    call        004202BC
 00420759    inc         eax
>0042075A    jne         0042076C
 0042075C    mov         eax,dword ptr [ebp-4]
 0042075F    mov         eax,dword ptr [eax+4]
 00420762    mov         edx,dword ptr [ebp-8]
 00420765    call        TList.Add
>0042076A    jmp         0042078B
 0042076C    mov         eax,dword ptr [ebp-4]
 0042076F    cmp         byte ptr [eax+20],2
>00420773    jne         0042078B
 00420775    mov         edx,dword ptr ds:[56E224];^SDuplicateItem:TResStringRec
 0042077B    mov         eax,dword ptr [ebp-4]
 0042077E    mov         eax,dword ptr [eax+4]
 00420781    mov         eax,dword ptr [eax]
 00420783    mov         ecx,dword ptr [ebp-8]
 00420786    call        00420170
 0042078B    xor         eax,eax
 0042078D    pop         edx
 0042078E    pop         ecx
 0042078F    pop         ecx
 00420790    mov         dword ptr fs:[eax],edx
 00420793    push        4207A8
 00420798    mov         eax,dword ptr [ebp-4]
 0042079B    call        TThreadList.UnlockList
 004207A0    ret
>004207A1    jmp         @HandleFinally
>004207A6    jmp         00420798
 004207A8    pop         ecx
 004207A9    pop         ecx
 004207AA    pop         ebp
 004207AB    ret
*}
end;

//004207AC
function TThreadList.LockList:TList;
begin
{*
 004207AC    push        ebp
 004207AD    mov         ebp,esp
 004207AF    add         esp,0FFFFFFF8
 004207B2    mov         dword ptr [ebp-4],eax
 004207B5    mov         eax,dword ptr [ebp-4]
 004207B8    add         eax,8
 004207BB    push        eax
 004207BC    call        kernel32.EnterCriticalSection
 004207C1    mov         eax,dword ptr [ebp-4]
 004207C4    mov         eax,dword ptr [eax+4]
 004207C7    mov         dword ptr [ebp-8],eax
 004207CA    mov         eax,dword ptr [ebp-8]
 004207CD    pop         ecx
 004207CE    pop         ecx
 004207CF    pop         ebp
 004207D0    ret
*}
end;

//004207D4
{*procedure sub_004207D4(?:TThreadList; ?:?);
begin
 004207D4    push        ebp
 004207D5    mov         ebp,esp
 004207D7    add         esp,0FFFFFFF8
 004207DA    mov         dword ptr [ebp-8],edx
 004207DD    mov         dword ptr [ebp-4],eax
 004207E0    mov         eax,dword ptr [ebp-4]
 004207E3    call        TThreadList.LockList
 004207E8    xor         eax,eax
 004207EA    push        ebp
 004207EB    push        42081A
 004207F0    push        dword ptr fs:[eax]
 004207F3    mov         dword ptr fs:[eax],esp
 004207F6    mov         eax,dword ptr [ebp-4]
 004207F9    mov         eax,dword ptr [eax+4]
 004207FC    mov         edx,dword ptr [ebp-8]
 004207FF    call        004204F0
 00420804    xor         eax,eax
 00420806    pop         edx
 00420807    pop         ecx
 00420808    pop         ecx
 00420809    mov         dword ptr fs:[eax],edx
 0042080C    push        420821
 00420811    mov         eax,dword ptr [ebp-4]
 00420814    call        TThreadList.UnlockList
 00420819    ret
>0042081A    jmp         @HandleFinally
>0042081F    jmp         00420811
 00420821    pop         ecx
 00420822    pop         ecx
 00420823    pop         ebp
 00420824    ret
end;*}

//00420828
procedure TThreadList.UnlockList;
begin
{*
 00420828    push        ebp
 00420829    mov         ebp,esp
 0042082B    push        ecx
 0042082C    mov         dword ptr [ebp-4],eax
 0042082F    mov         eax,dword ptr [ebp-4]
 00420832    add         eax,8
 00420835    push        eax
 00420836    call        kernel32.LeaveCriticalSection
 0042083B    pop         ecx
 0042083C    pop         ebp
 0042083D    ret
*}
end;

//0042087C
procedure TBits.Error;
begin
{*
 0042087C    push        ebp
 0042087D    mov         ebp,esp
 0042087F    push        ecx
 00420880    mov         dword ptr [ebp-4],eax
 00420883    mov         ecx,dword ptr ds:[56E50C];^SBitsIndexError:TResStringRec
 00420889    mov         dl,1
 0042088B    mov         eax,[0041D29C];EBitsError
 00420890    call        Exception.Create
 00420895    call        @RaiseExcept
 0042089A    pop         ecx
 0042089B    pop         ebp
 0042089C    ret
*}
end;

//004208A0
{*function sub_004208A0(?:?; ?:?):?;
begin
 004208A0    push        ebp
 004208A1    mov         ebp,esp
 004208A3    add         esp,0FFFFFFF4
 004208A6    mov         dword ptr [ebp-8],edx
 004208A9    mov         dword ptr [ebp-4],eax
 004208AC    mov         eax,dword ptr [ebp-4]
 004208AF    mov         dword ptr [ebp-0C],eax
 004208B2    mov         eax,dword ptr [ebp-4]
 004208B5    cmp         eax,dword ptr [ebp-8]
>004208B8    jle         004208C0
 004208BA    mov         eax,dword ptr [ebp-8]
 004208BD    mov         dword ptr [ebp-0C],eax
 004208C0    mov         eax,dword ptr [ebp-0C]
 004208C3    mov         esp,ebp
 004208C5    pop         ebp
 004208C6    ret
end;*}

//004208C8
procedure TBits.SetSize(Value:Integer);
begin
{*
 004208C8    push        ebp
 004208C9    mov         ebp,esp
 004208CB    add         esp,0FFFFFFEC
 004208CE    mov         dword ptr [ebp-8],edx
 004208D1    mov         dword ptr [ebp-4],eax
 004208D4    mov         eax,dword ptr [ebp-8]
 004208D7    mov         edx,dword ptr [ebp-4]
 004208DA    cmp         eax,dword ptr [edx+4]
>004208DD    je          00420996
 004208E3    cmp         dword ptr [ebp-8],0
>004208E7    jge         004208F1
 004208E9    mov         eax,dword ptr [ebp-4]
 004208EC    call        TBits.Error
 004208F1    mov         eax,dword ptr [ebp-8]
 004208F4    add         eax,20
 004208F7    dec         eax
 004208F8    test        eax,eax
>004208FA    jns         004208FF
 004208FC    add         eax,1F
 004208FF    sar         eax,5
 00420902    shl         eax,2
 00420905    mov         dword ptr [ebp-10],eax
 00420908    mov         eax,dword ptr [ebp-4]
 0042090B    mov         eax,dword ptr [eax+4]
 0042090E    add         eax,20
 00420911    dec         eax
 00420912    test        eax,eax
>00420914    jns         00420919
 00420916    add         eax,1F
 00420919    sar         eax,5
 0042091C    shl         eax,2
 0042091F    mov         dword ptr [ebp-14],eax
 00420922    mov         eax,dword ptr [ebp-10]
 00420925    cmp         eax,dword ptr [ebp-14]
>00420928    je          0042098D
 0042092A    xor         eax,eax
 0042092C    mov         dword ptr [ebp-0C],eax
 0042092F    cmp         dword ptr [ebp-10],0
>00420933    je          0042094D
 00420935    mov         eax,dword ptr [ebp-10]
 00420938    call        @GetMem
 0042093D    mov         dword ptr [ebp-0C],eax
 00420940    mov         eax,dword ptr [ebp-0C]
 00420943    xor         ecx,ecx
 00420945    mov         edx,dword ptr [ebp-10]
 00420948    call        @FillChar
 0042094D    cmp         dword ptr [ebp-14],0
>00420951    je          00420984
 00420953    cmp         dword ptr [ebp-0C],0
>00420957    je          00420976
 00420959    push        ebp
 0042095A    mov         edx,dword ptr [ebp-10]
 0042095D    mov         eax,dword ptr [ebp-14]
 00420960    call        004208A0
 00420965    pop         ecx
 00420966    mov         ecx,eax
 00420968    mov         edx,dword ptr [ebp-0C]
 0042096B    mov         eax,dword ptr [ebp-4]
 0042096E    mov         eax,dword ptr [eax+8]
 00420971    call        Move
 00420976    mov         edx,dword ptr [ebp-14]
 00420979    mov         eax,dword ptr [ebp-4]
 0042097C    mov         eax,dword ptr [eax+8]
 0042097F    call        @FreeMem
 00420984    mov         eax,dword ptr [ebp-0C]
 00420987    mov         edx,dword ptr [ebp-4]
 0042098A    mov         dword ptr [edx+8],eax
 0042098D    mov         eax,dword ptr [ebp-8]
 00420990    mov         edx,dword ptr [ebp-4]
 00420993    mov         dword ptr [edx+4],eax
 00420996    mov         esp,ebp
 00420998    pop         ebp
 00420999    ret
*}
end;

//0042099C
procedure TBits.SetBit(Index:Integer; Value:Boolean);
begin
{*
 0042099C    cmp         edx,dword ptr [eax+4]
>0042099F    jae         004209B0
 004209A1    mov         eax,dword ptr [eax+8]
 004209A4    or          cl,cl
>004209A6    je          004209AC
 004209A8    bts         dword ptr [eax],edx
 004209AB    ret
 004209AC    btr         dword ptr [eax],edx
 004209AF    ret
 004209B0    cmp         edx,0
>004209B3    jl          0042087C
 004209B9    push        eax
 004209BA    push        edx
 004209BB    push        ecx
 004209BC    inc         edx
 004209BD    call        TBits.SetSize
 004209C2    pop         ecx
 004209C3    pop         edx
 004209C4    pop         eax
>004209C5    jmp         004209A1
 004209C7    ret
*}
end;

//004209C8
function TBits.GetBit(Index:Integer):Boolean;
begin
{*
 004209C8    cmp         edx,dword ptr [eax+4]
>004209CB    jae         0042087C
 004209D1    mov         eax,dword ptr [eax+8]
 004209D4    bt          dword ptr [eax],edx
 004209D7    sbb         eax,eax
 004209D9    and         eax,1
 004209DC    ret
*}
end;

//004209E0
{*function sub_004209E0(?:TBits):?;
begin
 004209E0    push        ebp
 004209E1    mov         ebp,esp
 004209E3    add         esp,0FFFFFFE4
 004209E6    mov         dword ptr [ebp-4],eax
 004209E9    mov         eax,dword ptr [ebp-4]
 004209EC    mov         eax,dword ptr [eax+4]
 004209EF    add         eax,20
 004209F2    dec         eax
 004209F3    test        eax,eax
>004209F5    jns         004209FA
 004209F7    add         eax,1F
 004209FA    sar         eax,5
 004209FD    dec         eax
 004209FE    mov         dword ptr [ebp-18],eax
 00420A01    mov         eax,dword ptr [ebp-18]
 00420A04    test        eax,eax
>00420A06    jl          00420A81
 00420A08    inc         eax
 00420A09    mov         dword ptr [ebp-1C],eax
 00420A0C    mov         dword ptr [ebp-0C],0
 00420A13    mov         eax,dword ptr [ebp-4]
 00420A16    mov         eax,dword ptr [eax+8]
 00420A19    mov         edx,dword ptr [ebp-0C]
 00420A1C    mov         ecx,dword ptr ds:[420A94];0xFFFFFFFF gvar_00420A94
 00420A22    cmp         ecx,dword ptr [eax+edx*4]
>00420A25    je          00420A79
 00420A27    mov         eax,dword ptr [ebp-4]
 00420A2A    mov         eax,dword ptr [eax+8]
 00420A2D    mov         edx,dword ptr [ebp-0C]
 00420A30    mov         eax,dword ptr [eax+edx*4]
 00420A33    mov         dword ptr [ebp-10],eax
 00420A36    mov         byte ptr [ebp-11],0
 00420A3A    mov         al,byte ptr [ebp-11]
 00420A3D    cmp         al,1F
>00420A3F    ja          00420A48
 00420A41    and         eax,7F
 00420A44    bt          dword ptr [ebp-10],eax
>00420A48    jb          00420A70
 00420A4A    mov         eax,dword ptr [ebp-0C]
 00420A4D    shl         eax,5
 00420A50    xor         edx,edx
 00420A52    mov         dl,byte ptr [ebp-11]
 00420A55    add         eax,edx
 00420A57    mov         dword ptr [ebp-8],eax
 00420A5A    mov         eax,dword ptr [ebp-8]
 00420A5D    mov         edx,dword ptr [ebp-4]
 00420A60    cmp         eax,dword ptr [edx+4]
>00420A63    jl          00420A8A
 00420A65    mov         eax,dword ptr [ebp-4]
 00420A68    mov         eax,dword ptr [eax+4]
 00420A6B    mov         dword ptr [ebp-8],eax
>00420A6E    jmp         00420A8A
 00420A70    inc         byte ptr [ebp-11]
 00420A73    cmp         byte ptr [ebp-11],20
>00420A77    jne         00420A3A
 00420A79    inc         dword ptr [ebp-0C]
 00420A7C    dec         dword ptr [ebp-1C]
>00420A7F    jne         00420A13
 00420A81    mov         eax,dword ptr [ebp-4]
 00420A84    mov         eax,dword ptr [eax+4]
 00420A87    mov         dword ptr [ebp-8],eax
 00420A8A    mov         eax,dword ptr [ebp-8]
 00420A8D    mov         esp,ebp
 00420A8F    pop         ebp
 00420A90    ret
end;*}

//00420A98
destructor TPersistent.Destroy;
begin
{*
 00420A98    push        ebp
 00420A99    mov         ebp,esp
 00420A9B    add         esp,0FFFFFFF8
 00420A9E    call        @BeforeDestruction
 00420AA3    mov         byte ptr [ebp-5],dl
 00420AA6    mov         dword ptr [ebp-4],eax
 00420AA9    mov         eax,dword ptr [ebp-4]
 00420AAC    call        00424AF4
 00420AB1    mov         dl,byte ptr [ebp-5]
 00420AB4    and         dl,0FC
 00420AB7    mov         eax,dword ptr [ebp-4]
 00420ABA    call        TObject.Destroy
 00420ABF    cmp         byte ptr [ebp-5],0
>00420AC3    jle         00420ACD
 00420AC5    mov         eax,dword ptr [ebp-4]
 00420AC8    call        @ClassDestroy
 00420ACD    pop         ecx
 00420ACE    pop         ecx
 00420ACF    pop         ebp
 00420AD0    ret
*}
end;

//00420AD4
{*procedure sub_00420AD4(?:?);
begin
 00420AD4    push        ebp
 00420AD5    mov         ebp,esp
 00420AD7    add         esp,0FFFFFFF8
 00420ADA    mov         dword ptr [ebp-8],edx
 00420ADD    mov         dword ptr [ebp-4],eax
 00420AE0    cmp         dword ptr [ebp-8],0
>00420AE4    je          00420AF2
 00420AE6    mov         edx,dword ptr [ebp-4]
 00420AE9    mov         eax,dword ptr [ebp-8]
 00420AEC    mov         ecx,dword ptr [eax]
 00420AEE    call        dword ptr [ecx]
>00420AF0    jmp         00420AFC
 00420AF2    xor         edx,edx
 00420AF4    mov         eax,dword ptr [ebp-4]
 00420AF7    call        00420B00
 00420AFC    pop         ecx
 00420AFD    pop         ecx
 00420AFE    pop         ebp
 00420AFF    ret
end;*}

//00420B00
procedure sub_00420B00(?:TPersistent; ?:TPersistent);
begin
{*
 00420B00    push        ebp
 00420B01    mov         ebp,esp
 00420B03    add         esp,0FFFFFEE4
 00420B09    xor         ecx,ecx
 00420B0B    mov         dword ptr [ebp-0C],ecx
 00420B0E    mov         dword ptr [ebp-8],edx
 00420B11    mov         dword ptr [ebp-4],eax
 00420B14    xor         eax,eax
 00420B16    push        ebp
 00420B17    push        420BBE
 00420B1C    push        dword ptr fs:[eax]
 00420B1F    mov         dword ptr fs:[eax],esp
 00420B22    cmp         dword ptr [ebp-8],0
>00420B26    je          00420B48
 00420B28    lea         edx,[ebp-10C]
 00420B2E    mov         eax,dword ptr [ebp-8]
 00420B31    mov         eax,dword ptr [eax]
 00420B33    call        TObject.ClassName
 00420B38    lea         edx,[ebp-10C]
 00420B3E    lea         eax,[ebp-0C]
 00420B41    call        @LStrFromString
>00420B46    jmp         00420B55
 00420B48    lea         eax,[ebp-0C]
 00420B4B    mov         edx,420BD4;'nil'
 00420B50    call        @LStrLAsg
 00420B55    mov         eax,dword ptr [ebp-0C]
 00420B58    mov         dword ptr [ebp-11C],eax
 00420B5E    mov         byte ptr [ebp-118],0B
 00420B65    lea         edx,[ebp-10C]
 00420B6B    mov         eax,dword ptr [ebp-4]
 00420B6E    mov         eax,dword ptr [eax]
 00420B70    call        TObject.ClassName
 00420B75    lea         eax,[ebp-10C]
 00420B7B    mov         dword ptr [ebp-114],eax
 00420B81    mov         byte ptr [ebp-110],4
 00420B88    lea         eax,[ebp-11C]
 00420B8E    push        eax
 00420B8F    push        1
 00420B91    mov         ecx,dword ptr ds:[56E268];^SAssignError:TResStringRec
 00420B97    mov         dl,1
 00420B99    mov         eax,[0040B608];EConvertError
 00420B9E    call        Exception.CreateResFmt;EConvertError.Create
 00420BA3    call        @RaiseExcept
 00420BA8    xor         eax,eax
 00420BAA    pop         edx
 00420BAB    pop         ecx
 00420BAC    pop         ecx
 00420BAD    mov         dword ptr fs:[eax],edx
 00420BB0    push        420BC5
 00420BB5    lea         eax,[ebp-0C]
 00420BB8    call        @LStrClr
 00420BBD    ret
>00420BBE    jmp         @HandleFinally
>00420BC3    jmp         00420BB5
 00420BC5    mov         esp,ebp
 00420BC7    pop         ebp
 00420BC8    ret
*}
end;

//00420BD8
{*procedure sub_00420BD8(?:?);
begin
 00420BD8    push        ebp
 00420BD9    mov         ebp,esp
 00420BDB    add         esp,0FFFFFFF8
 00420BDE    mov         dword ptr [ebp-8],edx
 00420BE1    mov         dword ptr [ebp-4],eax
 00420BE4    mov         edx,dword ptr [ebp-4]
 00420BE7    mov         eax,dword ptr [ebp-8]
 00420BEA    call        00420B00
 00420BEF    pop         ecx
 00420BF0    pop         ecx
 00420BF1    pop         ebp
 00420BF2    ret
end;*}

//00420BF4
procedure TPersistent.DefineProperties(Filer:TFiler);
begin
{*
 00420BF4    push        ebp
 00420BF5    mov         ebp,esp
 00420BF7    add         esp,0FFFFFFF8
 00420BFA    mov         dword ptr [ebp-8],edx
 00420BFD    mov         dword ptr [ebp-4],eax
 00420C00    pop         ecx
 00420C01    pop         ecx
 00420C02    pop         ebp
 00420C03    ret
*}
end;

//00420C04
{*procedure TPersistent.sub_00420C04(?:?);
begin
 00420C04    push        ebp
 00420C05    mov         ebp,esp
 00420C07    add         esp,0FFFFFEF4
 00420C0D    push        esi
 00420C0E    xor         ecx,ecx
 00420C10    mov         dword ptr [ebp-0C],ecx
 00420C13    mov         dword ptr [ebp-8],edx
 00420C16    mov         dword ptr [ebp-4],eax
 00420C19    xor         eax,eax
 00420C1B    push        ebp
 00420C1C    push        420CA3
 00420C21    push        dword ptr fs:[eax]
 00420C24    mov         dword ptr fs:[eax],esp
 00420C27    lea         edx,[ebp-10C]
 00420C2D    mov         eax,dword ptr [ebp-4]
 00420C30    mov         eax,dword ptr [eax]
 00420C32    call        TObject.ClassName
 00420C37    lea         edx,[ebp-10C]
 00420C3D    mov         eax,dword ptr [ebp-8]
 00420C40    call        @LStrFromString
 00420C45    mov         eax,dword ptr [ebp-4]
 00420C48    mov         si,0FFFF
 00420C4C    call        @CallDynaInst;TPersistent.sub_00420CBC
 00420C51    test        eax,eax
>00420C53    je          00420C8D
 00420C55    mov         eax,dword ptr [ebp-4]
 00420C58    mov         si,0FFFF
 00420C5C    call        @CallDynaInst;TPersistent.sub_00420CBC
 00420C61    lea         edx,[ebp-0C]
 00420C64    mov         si,0FFFE
 00420C68    call        @CallDynaInst
 00420C6D    cmp         dword ptr [ebp-0C],0
>00420C71    je          00420C8D
 00420C73    push        dword ptr [ebp-0C]
 00420C76    push        420CB8;'.'
 00420C7B    mov         eax,dword ptr [ebp-8]
 00420C7E    push        dword ptr [eax]
 00420C80    mov         eax,dword ptr [ebp-8]
 00420C83    mov         edx,3
 00420C88    call        @LStrCatN
 00420C8D    xor         eax,eax
 00420C8F    pop         edx
 00420C90    pop         ecx
 00420C91    pop         ecx
 00420C92    mov         dword ptr fs:[eax],edx
 00420C95    push        420CAA
 00420C9A    lea         eax,[ebp-0C]
 00420C9D    call        @LStrClr
 00420CA2    ret
>00420CA3    jmp         @HandleFinally
>00420CA8    jmp         00420C9A
 00420CAA    pop         esi
 00420CAB    mov         esp,ebp
 00420CAD    pop         ebp
 00420CAE    ret
end;*}

//00420CBC
procedure TPersistent.sub_00420CBC;
begin
{*
 00420CBC    push        ebp
 00420CBD    mov         ebp,esp
 00420CBF    add         esp,0FFFFFFF8
 00420CC2    mov         dword ptr [ebp-4],eax
 00420CC5    xor         eax,eax
 00420CC7    mov         dword ptr [ebp-8],eax
 00420CCA    mov         eax,dword ptr [ebp-8]
 00420CCD    pop         ecx
 00420CCE    pop         ecx
 00420CCF    pop         ebp
 00420CD0    ret
*}
end;

//00420CD4
procedure TInterfacedPersistent.AfterConstruction;
begin
{*
 00420CD4    push        ebp
 00420CD5    mov         ebp,esp
 00420CD7    push        ecx
 00420CD8    push        esi
 00420CD9    mov         dword ptr [ebp-4],eax;{TObject.AfterConstruction}
 00420CDC    mov         eax,dword ptr [ebp-4]
 00420CDF    call        TCustomVariantType.AfterConstruction
 00420CE4    mov         eax,dword ptr [ebp-4];{@CallDynaInst}
 00420CE7    mov         si,0FFFF
 00420CEB    call        @CallDynaInst
 00420CF0    test        eax,eax
>00420CF2    je          00420D19
 00420CF4    mov         eax,dword ptr [ebp-4];{@CallDynaInst}
 00420CF7    mov         si,0FFFF
 00420CFB    call        @CallDynaInst
 00420D00    push        eax
 00420D01    mov         eax,dword ptr [ebp-4]
 00420D04    add         eax,4
 00420D07    call        @IntfClear
 00420D0C    mov         ecx,eax
 00420D0E    mov         edx,420D20
 00420D13    pop         eax
 00420D14    call        TObject.GetInterface
 00420D19    pop         esi
 00420D1A    pop         ecx
 00420D1B    pop         ebp
 00420D1C    ret
*}
end;

//00420D30
{*function sub_00420D30(?:?):?;
begin
 00420D30    push        ebp
 00420D31    mov         ebp,esp
 00420D33    push        ecx
 00420D34    mov         eax,dword ptr [ebp+8]
 00420D37    cmp         dword ptr [eax+4],0
>00420D3B    je          00420D4E
 00420D3D    mov         eax,dword ptr [ebp+8]
 00420D40    mov         eax,dword ptr [eax+4]
 00420D43    push        eax
 00420D44    mov         eax,dword ptr [eax]
 00420D46    call        dword ptr [eax+4]
 00420D49    mov         dword ptr [ebp-4],eax
>00420D4C    jmp         00420D55
 00420D4E    mov         dword ptr [ebp-4],0FFFFFFFF
 00420D55    mov         eax,dword ptr [ebp-4]
 00420D58    pop         ecx
 00420D59    pop         ebp
 00420D5A    ret         4
end;*}

//00420D60
{*function sub_00420D60(?:?):?;
begin
 00420D60    push        ebp
 00420D61    mov         ebp,esp
 00420D63    push        ecx
 00420D64    mov         eax,dword ptr [ebp+8]
 00420D67    cmp         dword ptr [eax+4],0
>00420D6B    je          00420D7E
 00420D6D    mov         eax,dword ptr [ebp+8]
 00420D70    mov         eax,dword ptr [eax+4]
 00420D73    push        eax
 00420D74    mov         eax,dword ptr [eax]
 00420D76    call        dword ptr [eax+8]
 00420D79    mov         dword ptr [ebp-4],eax
>00420D7C    jmp         00420D85
 00420D7E    mov         dword ptr [ebp-4],0FFFFFFFF
 00420D85    mov         eax,dword ptr [ebp-4]
 00420D88    pop         ecx
 00420D89    pop         ebp
 00420D8A    ret         4
end;*}

//00420D90
{*function sub_00420D90(?:?; ?:?):?;
begin
 00420D90    push        ebp
 00420D91    mov         ebp,esp
 00420D93    push        ecx
 00420D94    mov         ecx,dword ptr [ebp+10]
 00420D97    mov         edx,dword ptr [ebp+0C]
 00420D9A    mov         eax,dword ptr [ebp+8]
 00420D9D    call        TObject.GetInterface
 00420DA2    test        al,al
>00420DA4    je          00420DAD
 00420DA6    xor         eax,eax
 00420DA8    mov         dword ptr [ebp-4],eax
>00420DAB    jmp         00420DB4
 00420DAD    mov         dword ptr [ebp-4],80004002
 00420DB4    mov         eax,dword ptr [ebp-4]
 00420DB7    pop         ecx
 00420DB8    pop         ebp
 00420DB9    ret         0C
end;*}

//00420DBC
{*procedure sub_00420DBC(?:?; ?:?);
begin
 00420DBC    push        ebp
 00420DBD    mov         ebp,esp
 00420DBF    add         esp,0FFFFFFF4
 00420DC2    push        esi
 00420DC3    mov         dword ptr [ebp-8],edx
 00420DC6    mov         dword ptr [ebp-4],eax
 00420DC9    mov         eax,dword ptr [ebp-8]
 00420DCC    test        eax,eax
>00420DCE    je          00420DD4
 00420DD0    xor         edx,edx
 00420DD2    mov         dword ptr [eax],edx
 00420DD4    mov         eax,dword ptr [ebp-8]
 00420DD7    call        @IntfClear
 00420DDC    cmp         dword ptr [ebp-4],0
>00420DE0    je          00420E58
 00420DE2    mov         eax,dword ptr [ebp-4]
 00420DE5    mov         si,0FFFF
 00420DE9    call        @CallDynaInst
 00420DEE    mov         dword ptr [ebp-0C],eax
 00420DF1    cmp         dword ptr [ebp-0C],0
>00420DF5    jne         00420E2B
 00420DF7    mov         eax,dword ptr [ebp-4]
 00420DFA    mov         edx,dword ptr ds:[41E3B8];TComponent
 00420E00    call        @IsClass
 00420E05    test        al,al
>00420E07    je          00420E58
 00420E09    mov         eax,dword ptr [ebp-4]
 00420E0C    test        byte ptr [eax+1C],10
>00420E10    je          00420E58
 00420E12    mov         eax,dword ptr [ebp-8]
 00420E15    call        @IntfClear
 00420E1A    push        eax
 00420E1B    push        420E60
 00420E20    mov         eax,dword ptr [ebp-4]
 00420E23    push        eax
 00420E24    mov         eax,dword ptr [eax]
 00420E26    call        dword ptr [eax+28]
>00420E29    jmp         00420E58
 00420E2B    mov         eax,dword ptr [ebp-4]
 00420E2E    mov         edx,dword ptr ds:[41E3B8];TComponent
 00420E34    call        @IsClass
 00420E39    test        al,al
>00420E3B    je          00420E46
 00420E3D    mov         eax,dword ptr [ebp-4]
 00420E40    test        byte ptr [eax+1C],10
>00420E44    je          00420E58
 00420E46    mov         eax,dword ptr [ebp-8]
 00420E49    call        @IntfClear
 00420E4E    mov         edx,eax
 00420E50    mov         eax,dword ptr [ebp-0C]
 00420E53    call        00420DBC
 00420E58    pop         esi
 00420E59    mov         esp,ebp
 00420E5B    pop         ebp
 00420E5C    ret
end;*}

//00420E70
{*procedure sub_00420E70(?:TCollection; ?:TCollectionItem; ?:?);
begin
 00420E70    push        ebp
 00420E71    mov         ebp,esp
 00420E73    add         esp,0FFFFFFF0
 00420E76    push        ebx
 00420E77    xor         ebx,ebx
 00420E79    mov         dword ptr [ebp-10],ebx
 00420E7C    mov         byte ptr [ebp-9],cl
 00420E7F    mov         dword ptr [ebp-8],edx
 00420E82    mov         dword ptr [ebp-4],eax
 00420E85    xor         eax,eax
 00420E87    push        ebp
 00420E88    push        420ECF
 00420E8D    push        dword ptr fs:[eax]
 00420E90    mov         dword ptr fs:[eax],esp
 00420E93    lea         eax,[ebp-10]
 00420E96    call        @IntfClear
 00420E9B    mov         edx,eax
 00420E9D    mov         eax,dword ptr [ebp-4]
 00420EA0    call        00420DBC
 00420EA5    cmp         dword ptr [ebp-10],0
>00420EA9    je          00420EB9
 00420EAB    mov         cl,byte ptr [ebp-9]
 00420EAE    mov         edx,dword ptr [ebp-8]
 00420EB1    mov         eax,dword ptr [ebp-10]
 00420EB4    mov         ebx,dword ptr [eax]
 00420EB6    call        dword ptr [ebx+10]
 00420EB9    xor         eax,eax
 00420EBB    pop         edx
 00420EBC    pop         ecx
 00420EBD    pop         ecx
 00420EBE    mov         dword ptr fs:[eax],edx
 00420EC1    push        420ED6
 00420EC6    lea         eax,[ebp-10]
 00420EC9    call        @IntfClear
 00420ECE    ret
>00420ECF    jmp         @HandleFinally
>00420ED4    jmp         00420EC6
 00420ED6    pop         ebx
 00420ED7    mov         esp,ebp
 00420ED9    pop         ebp
 00420EDA    ret
end;*}

//00420EDC
{*constructor sub_00420EDC(?:?);
begin
 00420EDC    push        ebp
 00420EDD    mov         ebp,esp
 00420EDF    add         esp,0FFFFFFF4
 00420EE2    test        dl,dl
>00420EE4    je          00420EEE
 00420EE6    add         esp,0FFFFFFF0
 00420EE9    call        @ClassCreate
 00420EEE    mov         dword ptr [ebp-0C],ecx
 00420EF1    mov         byte ptr [ebp-5],dl
 00420EF4    mov         dword ptr [ebp-4],eax
 00420EF7    xor         edx,edx
 00420EF9    mov         eax,dword ptr [ebp-4]
 00420EFC    call        TObject.Create
 00420F01    mov         eax,dword ptr [ebp-4]
 00420F04    mov         edx,dword ptr [ebp-0C]
 00420F07    mov         dword ptr [eax+4],edx
 00420F0A    mov         eax,dword ptr [ebp-4]
 00420F0D    mov         edx,dword ptr [ebp+8]
 00420F10    mov         dword ptr [eax+8],edx
 00420F13    mov         eax,dword ptr [ebp-4]
 00420F16    call        00420FB0
 00420F1B    mov         eax,dword ptr [ebp-4]
 00420F1E    cmp         byte ptr [ebp-5],0
>00420F22    je          00420F33
 00420F24    call        @AfterConstruction
 00420F29    pop         dword ptr fs:[0]
 00420F30    add         esp,0C
 00420F33    mov         eax,dword ptr [ebp-4]
 00420F36    mov         esp,ebp
 00420F38    pop         ebp
 00420F39    ret         4
end;*}

//00420FB0
{*procedure sub_00420FB0(?:?);
begin
 00420FB0    push        ebp
 00420FB1    mov         ebp,esp
 00420FB3    push        ecx
 00420FB4    mov         dword ptr [ebp-4],eax
 00420FB7    mov         eax,dword ptr [ebp-4]
 00420FBA    cmp         dword ptr [eax+8],0
>00420FBE    je          00420FD1
 00420FC0    mov         eax,dword ptr [ebp-4]
 00420FC3    mov         edx,dword ptr [eax+8]
 00420FC6    mov         eax,dword ptr [ebp-4]
 00420FC9    mov         eax,dword ptr [eax+4]
 00420FCC    mov         ecx,dword ptr [eax]
 00420FCE    call        dword ptr [ecx+8]
 00420FD1    pop         ecx
 00420FD2    pop         ebp
 00420FD3    ret
end;*}

//00420FD4
constructor sub_00420FD4;
begin
{*
 00420FD4    push        ebp
 00420FD5    mov         ebp,esp
 00420FD7    add         esp,0FFFFFFF4
 00420FDA    test        dl,dl
>00420FDC    je          00420FE6
 00420FDE    add         esp,0FFFFFFF0
 00420FE1    call        @ClassCreate
 00420FE6    mov         dword ptr [ebp-0C],ecx
 00420FE9    mov         byte ptr [ebp-5],dl
 00420FEC    mov         dword ptr [ebp-4],eax
 00420FEF    mov         edx,dword ptr [ebp-0C]
 00420FF2    mov         eax,dword ptr [ebp-4]
 00420FF5    mov         ecx,dword ptr [eax]
 00420FF7    call        dword ptr [ecx+10];TCollectionItem.sub_004211E8
 00420FFA    mov         eax,dword ptr [ebp-4]
 00420FFD    cmp         byte ptr [ebp-5],0
>00421001    je          00421012
 00421003    call        @AfterConstruction
 00421008    pop         dword ptr fs:[0]
 0042100F    add         esp,0C
 00421012    mov         eax,dword ptr [ebp-4]
 00421015    mov         esp,ebp
 00421017    pop         ebp
 00421018    ret
*}
end;

//0042101C
destructor TCollectionItem.Destroy;
begin
{*
 0042101C    push        ebp
 0042101D    mov         ebp,esp
 0042101F    add         esp,0FFFFFFF8
 00421022    call        @BeforeDestruction
 00421027    mov         byte ptr [ebp-5],dl
 0042102A    mov         dword ptr [ebp-4],eax
 0042102D    xor         edx,edx
 0042102F    mov         eax,dword ptr [ebp-4]
 00421032    mov         ecx,dword ptr [eax]
 00421034    call        dword ptr [ecx+10]
 00421037    mov         dl,byte ptr [ebp-5]
 0042103A    and         dl,0FC
 0042103D    mov         eax,dword ptr [ebp-4]
 00421040    call        TPersistent.Destroy
 00421045    cmp         byte ptr [ebp-5],0
>00421049    jle         00421053
 0042104B    mov         eax,dword ptr [ebp-4]
 0042104E    call        @ClassDestroy
 00421053    pop         ecx
 00421054    pop         ecx
 00421055    pop         ebp
 00421056    ret
*}
end;

//00421058
{*procedure sub_00421058(?:TCollectionItem; ?:?);
begin
 00421058    push        ebp
 00421059    mov         ebp,esp
 0042105B    add         esp,0FFFFFFF4
 0042105E    mov         byte ptr [ebp-5],dl
 00421061    mov         dword ptr [ebp-4],eax
 00421064    mov         eax,dword ptr [ebp-4]
 00421067    cmp         dword ptr [eax+4],0
>0042106B    je          0042109A
 0042106D    mov         eax,dword ptr [ebp-4]
 00421070    mov         eax,dword ptr [eax+4]
 00421073    cmp         dword ptr [eax+0C],0
>00421077    jne         0042109A
 00421079    cmp         byte ptr [ebp-5],0
>0042107D    je          00421086
 0042107F    xor         eax,eax
 00421081    mov         dword ptr [ebp-0C],eax
>00421084    jmp         0042108C
 00421086    mov         eax,dword ptr [ebp-4]
 00421089    mov         dword ptr [ebp-0C],eax
 0042108C    mov         edx,dword ptr [ebp-0C]
 0042108F    mov         eax,dword ptr [ebp-4]
 00421092    mov         eax,dword ptr [eax+4]
 00421095    mov         ecx,dword ptr [eax]
 00421097    call        dword ptr [ecx+1C]
 0042109A    mov         esp,ebp
 0042109C    pop         ebp
 0042109D    ret
end;*}

//004210A0
function TCollectionItem.GetIndex:Integer;
begin
{*
 004210A0    push        ebp
 004210A1    mov         ebp,esp
 004210A3    add         esp,0FFFFFFF8
 004210A6    mov         dword ptr [ebp-4],eax
 004210A9    mov         eax,dword ptr [ebp-4]
 004210AC    cmp         dword ptr [eax+4],0
>004210B0    je          004210C8
 004210B2    mov         eax,dword ptr [ebp-4]
 004210B5    mov         eax,dword ptr [eax+4]
 004210B8    mov         eax,dword ptr [eax+8]
 004210BB    mov         edx,dword ptr [ebp-4]
 004210BE    call        004202BC
 004210C3    mov         dword ptr [ebp-8],eax
>004210C6    jmp         004210CF
 004210C8    mov         dword ptr [ebp-8],0FFFFFFFF
 004210CF    mov         eax,dword ptr [ebp-8]
 004210D2    pop         ecx
 004210D3    pop         ecx
 004210D4    pop         ebp
 004210D5    ret
*}
end;

//004210D8
{*procedure sub_004210D8(?:?);
begin
 004210D8    push        ebp
 004210D9    mov         ebp,esp
 004210DB    add         esp,0FFFFFEF8
 004210E1    mov         dword ptr [ebp-8],edx
 004210E4    mov         dword ptr [ebp-4],eax
 004210E7    lea         edx,[ebp-108]
 004210ED    mov         eax,dword ptr [ebp-4]
 004210F0    mov         eax,dword ptr [eax]
 004210F2    call        TObject.ClassName
 004210F7    lea         edx,[ebp-108]
 004210FD    mov         eax,dword ptr [ebp-8]
 00421100    call        @LStrFromString
 00421105    mov         esp,ebp
 00421107    pop         ebp
 00421108    ret
end;*}

//0042110C
{*procedure TCollectionItem.sub_00420C04(?:?);
begin
 0042110C    push        ebp
 0042110D    mov         ebp,esp
 0042110F    add         esp,0FFFFFEE4
 00421115    push        esi
 00421116    xor         ecx,ecx
 00421118    mov         dword ptr [ebp-1C],ecx
 0042111B    mov         dword ptr [ebp-8],edx
 0042111E    mov         dword ptr [ebp-4],eax
 00421121    xor         eax,eax
 00421123    push        ebp
 00421124    push        4211AF
 00421129    push        dword ptr fs:[eax]
 0042112C    mov         dword ptr fs:[eax],esp
 0042112F    mov         eax,dword ptr [ebp-4]
 00421132    cmp         dword ptr [eax+4],0;TCollectionItem.FCollection:TCollection
>00421136    je          0042117B
 00421138    mov         eax,dword ptr [ebp-8]
 0042113B    push        eax
 0042113C    lea         edx,[ebp-1C]
 0042113F    mov         eax,dword ptr [ebp-4]
 00421142    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 00421145    mov         si,0FFFE
 00421149    call        @CallDynaInst;TCollection.sub_00420C04
 0042114E    mov         eax,dword ptr [ebp-1C]
 00421151    mov         dword ptr [ebp-18],eax
 00421154    mov         byte ptr [ebp-14],0B
 00421158    mov         eax,dword ptr [ebp-4]
 0042115B    call        TCollectionItem.GetIndex
 00421160    mov         dword ptr [ebp-10],eax
 00421163    mov         byte ptr [ebp-0C],0
 00421167    lea         edx,[ebp-18]
 0042116A    mov         ecx,1
 0042116F    mov         eax,4211C4;'%s[%d]'
 00421174    call        0040D630
>00421179    jmp         00421199
 0042117B    lea         edx,[ebp-11C]
 00421181    mov         eax,dword ptr [ebp-4]
 00421184    mov         eax,dword ptr [eax]
 00421186    call        TObject.ClassName
 0042118B    lea         edx,[ebp-11C]
 00421191    mov         eax,dword ptr [ebp-8]
 00421194    call        @LStrFromString
 00421199    xor         eax,eax
 0042119B    pop         edx
 0042119C    pop         ecx
 0042119D    pop         ecx
 0042119E    mov         dword ptr fs:[eax],edx
 004211A1    push        4211B6
 004211A6    lea         eax,[ebp-1C]
 004211A9    call        @LStrClr
 004211AE    ret
>004211AF    jmp         @HandleFinally
>004211B4    jmp         004211A6
 004211B6    pop         esi
 004211B7    mov         esp,ebp
 004211B9    pop         ebp
 004211BA    ret
end;*}

//004211CC
procedure TCollectionItem.sub_00420CBC;
begin
{*
 004211CC    push        ebp
 004211CD    mov         ebp,esp
 004211CF    add         esp,0FFFFFFF8
 004211D2    mov         dword ptr [ebp-4],eax
 004211D5    mov         eax,dword ptr [ebp-4]
 004211D8    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 004211DB    mov         dword ptr [ebp-8],eax
 004211DE    mov         eax,dword ptr [ebp-8]
 004211E1    pop         ecx
 004211E2    pop         ecx
 004211E3    pop         ebp
 004211E4    ret
*}
end;

//004211E8
{*procedure sub_004211E8(?:?);
begin
 004211E8    push        ebp
 004211E9    mov         ebp,esp
 004211EB    add         esp,0FFFFFFF8
 004211EE    mov         dword ptr [ebp-8],edx
 004211F1    mov         dword ptr [ebp-4],eax
 004211F4    mov         eax,dword ptr [ebp-4]
 004211F7    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 004211FA    cmp         eax,dword ptr [ebp-8]
>004211FD    je          00421227
 004211FF    mov         eax,dword ptr [ebp-4]
 00421202    cmp         dword ptr [eax+4],0;TCollectionItem.FCollection:TCollection
>00421206    je          00421216
 00421208    mov         edx,dword ptr [ebp-4]
 0042120B    mov         eax,dword ptr [ebp-4]
 0042120E    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 00421211    call        00421890
 00421216    cmp         dword ptr [ebp-8],0
>0042121A    je          00421227
 0042121C    mov         edx,dword ptr [ebp-4]
 0042121F    mov         eax,dword ptr [ebp-8]
 00421222    call        00421804
 00421227    pop         ecx
 00421228    pop         ecx
 00421229    pop         ebp
 0042122A    ret
end;*}

//0042122C
{*procedure sub_0042122C(?:?);
begin
 0042122C    push        ebp
 0042122D    mov         ebp,esp
 0042122F    add         esp,0FFFFFFF8
 00421232    mov         dword ptr [ebp-8],edx
 00421235    mov         dword ptr [ebp-4],eax
 00421238    xor         edx,edx
 0042123A    mov         eax,dword ptr [ebp-4]
 0042123D    call        00421058
 00421242    pop         ecx
 00421243    pop         ecx
 00421244    pop         ebp
 00421245    ret
end;*}

//00421248
{*procedure sub_00421248(?:?);
begin
 00421248    push        ebp
 00421249    mov         ebp,esp
 0042124B    add         esp,0FFFFFFF4
 0042124E    mov         dword ptr [ebp-8],edx
 00421251    mov         dword ptr [ebp-4],eax
 00421254    mov         eax,dword ptr [ebp-4]
 00421257    call        TCollectionItem.GetIndex
 0042125C    mov         dword ptr [ebp-0C],eax
 0042125F    cmp         dword ptr [ebp-0C],0
>00421263    jl          0042128B
 00421265    mov         eax,dword ptr [ebp-0C]
 00421268    cmp         eax,dword ptr [ebp-8]
>0042126B    je          0042128B
 0042126D    mov         eax,dword ptr [ebp-4]
 00421270    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 00421273    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00421276    mov         ecx,dword ptr [ebp-8]
 00421279    mov         edx,dword ptr [ebp-0C]
 0042127C    call        004203DC
 00421281    mov         dl,1
 00421283    mov         eax,dword ptr [ebp-4]
 00421286    call        00421058
 0042128B    mov         esp,ebp
 0042128D    pop         ebp
 0042128E    ret
end;*}

//00421290
constructor TCollection.Create;
begin
{*
 00421290    push        ebp
 00421291    mov         ebp,esp
 00421293    add         esp,0FFFFFFF4
 00421296    test        dl,dl
>00421298    je          004212A2
 0042129A    add         esp,0FFFFFFF0
 0042129D    call        @ClassCreate
 004212A2    mov         dword ptr [ebp-0C],ecx
 004212A5    mov         byte ptr [ebp-5],dl
 004212A8    mov         dword ptr [ebp-4],eax
 004212AB    mov         eax,dword ptr [ebp-4]
 004212AE    mov         edx,dword ptr [ebp-0C]
 004212B1    mov         dword ptr [eax+4],edx
 004212B4    mov         dl,1
 004212B6    mov         eax,[0041D46C];TList
 004212BB    call        TObject.Create;TList.Create
 004212C0    mov         edx,dword ptr [ebp-4]
 004212C3    mov         dword ptr [edx+8],eax
 004212C6    xor         ecx,ecx
 004212C8    mov         edx,dword ptr [ebp-4]
 004212CB    mov         eax,dword ptr [ebp-4]
 004212CE    call        00420E70
 004212D3    mov         eax,dword ptr [ebp-4]
 004212D6    cmp         byte ptr [ebp-5],0
>004212DA    je          004212EB
 004212DC    call        @AfterConstruction
 004212E1    pop         dword ptr fs:[0]
 004212E8    add         esp,0C
 004212EB    mov         eax,dword ptr [ebp-4]
 004212EE    mov         esp,ebp
 004212F0    pop         ebp
 004212F1    ret
*}
end;

//004212F4
destructor TCollection.Destroy;
begin
{*
 004212F4    push        ebp
 004212F5    mov         ebp,esp
 004212F7    add         esp,0FFFFFFF8
 004212FA    call        @BeforeDestruction
 004212FF    mov         byte ptr [ebp-5],dl
 00421302    mov         dword ptr [ebp-4],eax
 00421305    mov         eax,dword ptr [ebp-4]
 00421308    mov         dword ptr [eax+0C],1
 0042130F    mov         eax,dword ptr [ebp-4]
 00421312    cmp         dword ptr [eax+8],0
>00421316    je          00421320
 00421318    mov         eax,dword ptr [ebp-4]
 0042131B    call        TCollection.Clear
 00421320    mov         cl,1
 00421322    mov         edx,dword ptr [ebp-4]
 00421325    mov         eax,dword ptr [ebp-4]
 00421328    call        00420E70
 0042132D    mov         eax,dword ptr [ebp-4]
 00421330    mov         eax,dword ptr [eax+8]
 00421333    call        TObject.Free
 00421338    mov         dl,byte ptr [ebp-5]
 0042133B    and         dl,0FC
 0042133E    mov         eax,dword ptr [ebp-4]
 00421341    call        TPersistent.Destroy
 00421346    cmp         byte ptr [ebp-5],0
>0042134A    jle         00421354
 0042134C    mov         eax,dword ptr [ebp-4]
 0042134F    call        @ClassDestroy
 00421354    pop         ecx
 00421355    pop         ecx
 00421356    pop         ebp
 00421357    ret
*}
end;

//00421358
{*function sub_00421358(?:TCollection):?;
begin
 00421358    push        ebp
 00421359    mov         ebp,esp
 0042135B    add         esp,0FFFFFFF8
 0042135E    mov         dword ptr [ebp-4],eax
 00421361    mov         ecx,dword ptr [ebp-4]
 00421364    mov         dl,1
 00421366    mov         eax,dword ptr [ebp-4]
 00421369    mov         eax,dword ptr [eax+4]
 0042136C    call        dword ptr [eax+1C]
 0042136F    mov         dword ptr [ebp-8],eax
 00421372    lea         edx,[ebp-8]
 00421375    mov         eax,dword ptr [ebp-4]
 00421378    mov         ecx,dword ptr [eax]
 0042137A    call        dword ptr [ecx+0C]
 0042137D    mov         eax,dword ptr [ebp-8]
 00421380    pop         ecx
 00421381    pop         ecx
 00421382    pop         ebp
 00421383    ret
end;*}

//00421384
{*procedure sub_00421384(?:?);
begin
 00421384    push        ebp
 00421385    mov         ebp,esp
 00421387    add         esp,0FFFFFFF0
 0042138A    mov         dword ptr [ebp-8],edx
 0042138D    mov         dword ptr [ebp-4],eax
 00421390    mov         eax,dword ptr [ebp-8]
 00421393    mov         edx,dword ptr ds:[41D82C];TCollection
 00421399    call        @IsClass
 0042139E    test        al,al
>004213A0    je          00421417
 004213A2    mov         eax,dword ptr [ebp-4]
 004213A5    mov         edx,dword ptr [eax]
 004213A7    call        dword ptr [edx+20];TCollection.sub_00421428
 004213AA    xor         eax,eax
 004213AC    push        ebp
 004213AD    push        421410
 004213B2    push        dword ptr fs:[eax]
 004213B5    mov         dword ptr fs:[eax],esp
 004213B8    mov         eax,dword ptr [ebp-4]
 004213BB    call        TCollection.Clear
 004213C0    mov         eax,dword ptr [ebp-8]
 004213C3    call        0042158C
 004213C8    dec         eax
 004213C9    test        eax,eax
>004213CB    jl          004213FA
 004213CD    inc         eax
 004213CE    mov         dword ptr [ebp-10],eax
 004213D1    mov         dword ptr [ebp-0C],0
 004213D8    mov         edx,dword ptr [ebp-0C]
 004213DB    mov         eax,dword ptr [ebp-8]
 004213DE    call        004215A8
 004213E3    push        eax
 004213E4    mov         eax,dword ptr [ebp-4]
 004213E7    call        00421358
 004213EC    pop         edx
 004213ED    mov         ecx,dword ptr [eax]
 004213EF    call        dword ptr [ecx+8]
 004213F2    inc         dword ptr [ebp-0C]
 004213F5    dec         dword ptr [ebp-10]
>004213F8    jne         004213D8
 004213FA    xor         eax,eax
 004213FC    pop         edx
 004213FD    pop         ecx
 004213FE    pop         ecx
 004213FF    mov         dword ptr fs:[eax],edx
 00421402    push        421422
 00421407    mov         eax,dword ptr [ebp-4]
 0042140A    mov         edx,dword ptr [eax]
 0042140C    call        dword ptr [edx+24];TCollection.sub_004214C0
 0042140F    ret
>00421410    jmp         @HandleFinally
>00421415    jmp         00421407
 00421417    mov         edx,dword ptr [ebp-8]
 0042141A    mov         eax,dword ptr [ebp-4]
 0042141D    call        00420AD4
 00421422    mov         esp,ebp
 00421424    pop         ebp
 00421425    ret
end;*}

//00421428
procedure sub_00421428;
begin
{*
 00421428    push        ebp
 00421429    mov         ebp,esp
 0042142B    push        ecx
 0042142C    mov         dword ptr [ebp-4],eax
 0042142F    mov         eax,dword ptr [ebp-4]
 00421432    inc         dword ptr [eax+0C];TCollection.FUpdateCount:Integer
 00421435    pop         ecx
 00421436    pop         ebp
 00421437    ret
*}
end;

//00421438
procedure sub_00421438(?:TCollection);
begin
{*
 00421438    push        ebp
 00421439    mov         ebp,esp
 0042143B    push        ecx
 0042143C    mov         dword ptr [ebp-4],eax
 0042143F    mov         eax,dword ptr [ebp-4]
 00421442    cmp         dword ptr [eax+0C],0
>00421446    jne         00421452
 00421448    xor         edx,edx
 0042144A    mov         eax,dword ptr [ebp-4]
 0042144D    mov         ecx,dword ptr [eax]
 0042144F    call        dword ptr [ecx+1C]
 00421452    pop         ecx
 00421453    pop         ebp
 00421454    ret
*}
end;

//00421458
procedure TCollection.Clear;
begin
{*
 00421458    push        ebp
 00421459    mov         ebp,esp
 0042145B    push        ecx
 0042145C    mov         dword ptr [ebp-4],eax
 0042145F    mov         eax,dword ptr [ebp-4]
 00421462    mov         eax,dword ptr [eax+8]
 00421465    cmp         dword ptr [eax+8],0
>00421469    jle         004214BC
 0042146B    mov         eax,dword ptr [ebp-4]
 0042146E    mov         edx,dword ptr [eax]
 00421470    call        dword ptr [edx+20]
 00421473    xor         eax,eax
 00421475    push        ebp
 00421476    push        4214B5
 0042147B    push        dword ptr fs:[eax]
 0042147E    mov         dword ptr fs:[eax],esp
>00421481    jmp         00421493
 00421483    mov         eax,dword ptr [ebp-4]
 00421486    mov         eax,dword ptr [eax+8]
 00421489    call        004203B8
 0042148E    call        TObject.Free
 00421493    mov         eax,dword ptr [ebp-4]
 00421496    mov         eax,dword ptr [eax+8]
 00421499    cmp         dword ptr [eax+8],0
>0042149D    jg          00421483
 0042149F    xor         eax,eax
 004214A1    pop         edx
 004214A2    pop         ecx
 004214A3    pop         ecx
 004214A4    mov         dword ptr fs:[eax],edx
 004214A7    push        4214BC
 004214AC    mov         eax,dword ptr [ebp-4]
 004214AF    mov         edx,dword ptr [eax]
 004214B1    call        dword ptr [edx+24]
 004214B4    ret
>004214B5    jmp         @HandleFinally
>004214BA    jmp         004214AC
 004214BC    pop         ecx
 004214BD    pop         ebp
 004214BE    ret
*}
end;

//004214C0
procedure sub_004214C0;
begin
{*
 004214C0    push        ebp
 004214C1    mov         ebp,esp
 004214C3    push        ecx
 004214C4    mov         dword ptr [ebp-4],eax
 004214C7    mov         eax,dword ptr [ebp-4]
 004214CA    dec         dword ptr [eax+0C];TCollection.FUpdateCount:Integer
 004214CD    mov         eax,dword ptr [ebp-4]
 004214D0    call        00421438
 004214D5    pop         ecx
 004214D6    pop         ebp
 004214D7    ret
*}
end;

//004214D8
{*function sub_004214D8(?:?; ?:Integer):?;
begin
 004214D8    push        ebp
 004214D9    mov         ebp,esp
 004214DB    add         esp,0FFFFFFEC
 004214DE    mov         dword ptr [ebp-8],edx
 004214E1    mov         dword ptr [ebp-4],eax
 004214E4    mov         eax,dword ptr [ebp-4]
 004214E7    mov         eax,dword ptr [eax+8]
 004214EA    mov         eax,dword ptr [eax+8]
 004214ED    dec         eax
 004214EE    test        eax,eax
>004214F0    jl          00421521
 004214F2    inc         eax
 004214F3    mov         dword ptr [ebp-14],eax
 004214F6    mov         dword ptr [ebp-10],0
 004214FD    mov         eax,dword ptr [ebp-4]
 00421500    mov         eax,dword ptr [eax+8]
 00421503    mov         edx,dword ptr [ebp-10]
 00421506    call        TList.Get
 0042150B    mov         dword ptr [ebp-0C],eax
 0042150E    mov         eax,dword ptr [ebp-0C]
 00421511    mov         eax,dword ptr [eax+8]
 00421514    cmp         eax,dword ptr [ebp-8]
>00421517    je          00421526
 00421519    inc         dword ptr [ebp-10]
 0042151C    dec         dword ptr [ebp-14]
>0042151F    jne         004214FD
 00421521    xor         eax,eax
 00421523    mov         dword ptr [ebp-0C],eax
 00421526    mov         eax,dword ptr [ebp-0C]
 00421529    mov         esp,ebp
 0042152B    pop         ebp
 0042152C    ret
end;*}

//00421530
procedure TCollection.sub_00421530;
begin
{*
 00421530    push        ebp
 00421531    mov         ebp,esp
 00421533    add         esp,0FFFFFFF8
 00421536    mov         dword ptr [ebp-4],eax
 00421539    xor         eax,eax
 0042153B    mov         dword ptr [ebp-8],eax
 0042153E    mov         eax,dword ptr [ebp-8]
 00421541    pop         ecx
 00421542    pop         ecx
 00421543    pop         ebp
 00421544    ret
*}
end;

//00421548
{*procedure TCollection.sub_00421548(?:?; ?:?);
begin
 00421548    push        ebp
 00421549    mov         ebp,esp
 0042154B    add         esp,0FFFFFFF4
 0042154E    mov         dword ptr [ebp-8],ecx
 00421551    mov         dword ptr [ebp-0C],edx
 00421554    mov         dword ptr [ebp-4],eax
 00421557    mov         eax,dword ptr [ebp-8]
 0042155A    call        @LStrClr
 0042155F    mov         esp,ebp
 00421561    pop         ebp
 00421562    ret
end;*}

//00421564
{*procedure TCollection.sub_00421564(?:?; ?:?; ?:?);
begin
 00421564    push        ebp
 00421565    mov         ebp,esp
 00421567    add         esp,0FFFFFFF4
 0042156A    mov         dword ptr [ebp-8],ecx
 0042156D    mov         dword ptr [ebp-0C],edx
 00421570    mov         dword ptr [ebp-4],eax
 00421573    mov         edx,dword ptr [ebp-8]
 00421576    mov         eax,dword ptr [ebp-4]
 00421579    call        004215A8
 0042157E    mov         edx,dword ptr [ebp+8]
 00421581    mov         ecx,dword ptr [eax]
 00421583    call        dword ptr [ecx+0C]
 00421586    mov         esp,ebp
 00421588    pop         ebp
 00421589    ret         4
end;*}

//0042158C
{*function sub_0042158C(?:TCollection):?;
begin
 0042158C    push        ebp
 0042158D    mov         ebp,esp
 0042158F    add         esp,0FFFFFFF8
 00421592    mov         dword ptr [ebp-4],eax
 00421595    mov         eax,dword ptr [ebp-4]
 00421598    mov         eax,dword ptr [eax+8]
 0042159B    mov         eax,dword ptr [eax+8]
 0042159E    mov         dword ptr [ebp-8],eax
 004215A1    mov         eax,dword ptr [ebp-8]
 004215A4    pop         ecx
 004215A5    pop         ecx
 004215A6    pop         ebp
 004215A7    ret
end;*}

//004215A8
{*function sub_004215A8(?:TCollection; ?:?):?;
begin
 004215A8    push        ebp
 004215A9    mov         ebp,esp
 004215AB    add         esp,0FFFFFFF4
 004215AE    mov         dword ptr [ebp-8],edx
 004215B1    mov         dword ptr [ebp-4],eax
 004215B4    mov         edx,dword ptr [ebp-8]
 004215B7    mov         eax,dword ptr [ebp-4]
 004215BA    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 004215BD    call        TList.Get
 004215C2    mov         dword ptr [ebp-0C],eax
 004215C5    mov         eax,dword ptr [ebp-0C]
 004215C8    mov         esp,ebp
 004215CA    pop         ebp
 004215CB    ret
end;*}

//004215CC
{*procedure TCollection.sub_00420C04(?:?);
begin
 004215CC    push        ebp
 004215CD    mov         ebp,esp
 004215CF    add         esp,0FFFFFEF0
 004215D5    push        esi
 004215D6    xor         ecx,ecx
 004215D8    mov         dword ptr [ebp-0C],ecx
 004215DB    mov         dword ptr [ebp-10],ecx
 004215DE    mov         dword ptr [ebp-8],edx
 004215E1    mov         dword ptr [ebp-4],eax
 004215E4    xor         eax,eax
 004215E6    push        ebp
 004215E7    push        421682
 004215EC    push        dword ptr fs:[eax]
 004215EF    mov         dword ptr fs:[eax],esp
 004215F2    lea         edx,[ebp-110]
 004215F8    mov         eax,dword ptr [ebp-4]
 004215FB    mov         eax,dword ptr [eax]
 004215FD    call        TObject.ClassName
 00421602    lea         edx,[ebp-110]
 00421608    mov         eax,dword ptr [ebp-8]
 0042160B    call        @LStrFromString
 00421610    mov         eax,dword ptr [ebp-4]
 00421613    mov         si,0FFFF
 00421617    call        @CallDynaInst;TPersistent.sub_00420CBC
 0042161C    test        eax,eax
>0042161E    je          00421667
 00421620    mov         eax,dword ptr [ebp-4]
 00421623    mov         si,0FFFF
 00421627    call        @CallDynaInst;TPersistent.sub_00420CBC
 0042162C    lea         edx,[ebp-0C]
 0042162F    mov         si,0FFFE
 00421633    call        @CallDynaInst
 00421638    cmp         dword ptr [ebp-0C],0
>0042163C    je          00421667
 0042163E    lea         edx,[ebp-10]
 00421641    mov         eax,dword ptr [ebp-4]
 00421644    call        0042169C
 00421649    cmp         dword ptr [ebp-10],0
>0042164D    je          00421667
 0042164F    push        dword ptr [ebp-0C]
 00421652    push        421698;'.'
 00421657    push        dword ptr [ebp-10]
 0042165A    mov         eax,dword ptr [ebp-8]
 0042165D    mov         edx,3
 00421662    call        @LStrCatN
 00421667    xor         eax,eax
 00421669    pop         edx
 0042166A    pop         ecx
 0042166B    pop         ecx
 0042166C    mov         dword ptr fs:[eax],edx
 0042166F    push        421689
 00421674    lea         eax,[ebp-10]
 00421677    mov         edx,2
 0042167C    call        @LStrArrayClr
 00421681    ret
>00421682    jmp         @HandleFinally
>00421687    jmp         00421674
 00421689    pop         esi
 0042168A    mov         esp,ebp
 0042168C    pop         ebp
 0042168D    ret
end;*}

//0042169C
{*procedure sub_0042169C(?:TCollection; ?:?);
begin
 0042169C    push        ebp
 0042169D    mov         ebp,esp
 0042169F    add         esp,0FFFFFFE0
 004216A2    push        esi
 004216A3    mov         dword ptr [ebp-8],edx
 004216A6    mov         dword ptr [ebp-4],eax
 004216A9    mov         eax,dword ptr [ebp-8]
 004216AC    mov         edx,dword ptr [ebp-4]
 004216AF    mov         edx,dword ptr [edx+14];TCollection.FPropName:String
 004216B2    call        @LStrAsg
 004216B7    mov         eax,dword ptr [ebp-4]
 004216BA    mov         si,0FFFF
 004216BE    call        @CallDynaInst;TPersistent.sub_00420CBC
 004216C3    mov         dword ptr [ebp-18],eax
 004216C6    mov         eax,dword ptr [ebp-8]
 004216C9    cmp         dword ptr [eax],0
>004216CC    jne         004217D3
 004216D2    cmp         dword ptr [ebp-18],0
>004216D6    je          004217D3
 004216DC    mov         eax,dword ptr [ebp-18]
 004216DF    mov         eax,dword ptr [eax]
 004216E1    call        004044E0
 004216E6    test        eax,eax
>004216E8    je          004217D3
 004216EE    mov         eax,dword ptr [ebp-18]
 004216F1    mov         eax,dword ptr [eax]
 004216F3    call        004044E0
 004216F8    call        GetTypeData
 004216FD    mov         dword ptr [ebp-14],eax
 00421700    cmp         dword ptr [ebp-14],0
>00421704    je          004217D3
 0042170A    mov         eax,dword ptr [ebp-14]
 0042170D    cmp         word ptr [eax+8],0
>00421712    je          004217D3
 00421718    mov         eax,dword ptr [ebp-14]
 0042171B    movsx       eax,word ptr [eax+8]
 0042171F    shl         eax,2
 00421722    call        @GetMem
 00421727    mov         dword ptr [ebp-10],eax
 0042172A    xor         eax,eax
 0042172C    push        ebp
 0042172D    push        4217BE
 00421732    push        dword ptr fs:[eax]
 00421735    mov         dword ptr fs:[eax],esp
 00421738    mov         eax,dword ptr [ebp-18]
 0042173B    mov         eax,dword ptr [eax]
 0042173D    call        004044E0
 00421742    mov         edx,dword ptr [ebp-10]
 00421745    call        GetPropInfos
 0042174A    mov         eax,dword ptr [ebp-14]
 0042174D    movsx       eax,word ptr [eax+8]
 00421751    dec         eax
 00421752    test        eax,eax
>00421754    jl          004217A8
 00421756    inc         eax
 00421757    mov         dword ptr [ebp-1C],eax
 0042175A    mov         dword ptr [ebp-0C],0
 00421761    mov         eax,dword ptr [ebp-10]
 00421764    mov         edx,dword ptr [ebp-0C]
 00421767    mov         eax,dword ptr [eax+edx*4]
 0042176A    mov         dword ptr [ebp-20],eax
 0042176D    mov         eax,dword ptr [ebp-20]
 00421770    mov         eax,dword ptr [eax]
 00421772    mov         eax,dword ptr [eax]
 00421774    cmp         byte ptr [eax],7
>00421777    jne         004217A0
 00421779    mov         eax,dword ptr [ebp-10]
 0042177C    mov         edx,dword ptr [ebp-0C]
 0042177F    mov         edx,dword ptr [eax+edx*4]
 00421782    mov         eax,dword ptr [ebp-18]
 00421785    call        GetOrdProp
 0042178A    cmp         eax,dword ptr [ebp-4]
>0042178D    jne         004217A0
 0042178F    mov         eax,dword ptr [ebp-4]
 00421792    add         eax,14;TCollection.FPropName:String
 00421795    mov         edx,dword ptr [ebp-20]
 00421798    add         edx,1A
 0042179B    call        @LStrFromString
 004217A0    inc         dword ptr [ebp-0C]
 004217A3    dec         dword ptr [ebp-1C]
>004217A6    jne         00421761
 004217A8    xor         eax,eax
 004217AA    pop         edx
 004217AB    pop         ecx
 004217AC    pop         ecx
 004217AD    mov         dword ptr fs:[eax],edx
 004217B0    push        4217C5
 004217B5    mov         eax,dword ptr [ebp-10]
 004217B8    call        @FreeMem
 004217BD    ret
>004217BE    jmp         @HandleFinally
>004217C3    jmp         004217B5
 004217C5    mov         eax,dword ptr [ebp-8]
 004217C8    mov         edx,dword ptr [ebp-4]
 004217CB    mov         edx,dword ptr [edx+14];TCollection.FPropName:String
 004217CE    call        @LStrAsg
 004217D3    pop         esi
 004217D4    mov         esp,ebp
 004217D6    pop         ebp
 004217D7    ret
end;*}

//004217D8
{*function sub_004217D8(?:?; ?:Integer):?;
begin
 004217D8    push        ebp
 004217D9    mov         ebp,esp
 004217DB    add         esp,0FFFFFFF4
 004217DE    mov         dword ptr [ebp-8],edx
 004217E1    mov         dword ptr [ebp-4],eax
 004217E4    mov         eax,dword ptr [ebp-4]
 004217E7    call        00421358
 004217EC    mov         dword ptr [ebp-0C],eax
 004217EF    mov         edx,dword ptr [ebp-8]
 004217F2    mov         eax,dword ptr [ebp-0C]
 004217F5    mov         ecx,dword ptr [eax]
 004217F7    call        dword ptr [ecx+14]
 004217FA    mov         eax,dword ptr [ebp-0C]
 004217FD    mov         esp,ebp
 004217FF    pop         ebp
 00421800    ret
end;*}

//00421804
{*procedure sub_00421804(?:?; ?:TCollectionItem);
begin
 00421804    push        ebp
 00421805    mov         ebp,esp
 00421807    add         esp,0FFFFFFF8
 0042180A    push        ebx
 0042180B    mov         dword ptr [ebp-8],edx
 0042180E    mov         dword ptr [ebp-4],eax
 00421811    mov         eax,dword ptr [ebp-8]
 00421814    mov         edx,dword ptr [ebp-4]
 00421817    mov         edx,dword ptr [edx+4]
 0042181A    call        @IsClass
 0042181F    test        al,al
>00421821    jne         00421835
 00421823    mov         edx,dword ptr ds:[56E380];^SInvalidProperty:TResStringRec
 00421829    xor         ecx,ecx
 0042182B    mov         eax,[0041D46C];TList
 00421830    call        00420170
 00421835    mov         edx,dword ptr [ebp-8]
 00421838    mov         eax,dword ptr [ebp-4]
 0042183B    mov         eax,dword ptr [eax+8]
 0042183E    call        TList.Add
 00421843    mov         eax,dword ptr [ebp-4]
 00421846    mov         edx,dword ptr [ebp-8]
 00421849    mov         dword ptr [edx+4],eax;TCollectionItem.FCollection:TCollection
 0042184C    mov         eax,dword ptr [ebp-4]
 0042184F    mov         eax,dword ptr [eax+10]
 00421852    mov         edx,dword ptr [ebp-8]
 00421855    mov         dword ptr [edx+8],eax;TCollectionItem.FID:Integer
 00421858    mov         eax,dword ptr [ebp-4]
 0042185B    inc         dword ptr [eax+10]
 0042185E    mov         edx,dword ptr [ebp-8]
 00421861    mov         eax,dword ptr [ebp-4]
 00421864    mov         ecx,dword ptr [eax]
 00421866    call        dword ptr [ecx+18]
 00421869    xor         ecx,ecx
 0042186B    mov         edx,dword ptr [ebp-8]
 0042186E    mov         eax,dword ptr [ebp-4]
 00421871    mov         ebx,dword ptr [eax]
 00421873    call        dword ptr [ebx+14]
 00421876    mov         eax,dword ptr [ebp-4]
 00421879    call        00421438
 0042187E    xor         ecx,ecx
 00421880    mov         edx,dword ptr [ebp-8]
 00421883    mov         eax,dword ptr [ebp-4]
 00421886    call        00420E70
 0042188B    pop         ebx
 0042188C    pop         ecx
 0042188D    pop         ecx
 0042188E    pop         ebp
 0042188F    ret
end;*}

//00421890
procedure sub_00421890(?:TCollection; ?:TCollectionItem);
begin
{*
 00421890    push        ebp
 00421891    mov         ebp,esp
 00421893    add         esp,0FFFFFFF8
 00421896    push        ebx
 00421897    mov         dword ptr [ebp-8],edx
 0042189A    mov         dword ptr [ebp-4],eax
 0042189D    mov         cl,1
 0042189F    mov         edx,dword ptr [ebp-8]
 004218A2    mov         eax,dword ptr [ebp-4]
 004218A5    mov         ebx,dword ptr [eax]
 004218A7    call        dword ptr [ebx+14];TCollection.sub_004219A8
 004218AA    mov         eax,dword ptr [ebp-4]
 004218AD    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 004218B0    call        004203B8
 004218B5    cmp         eax,dword ptr [ebp-8]
>004218B8    jne         004218D1
 004218BA    mov         eax,dword ptr [ebp-4]
 004218BD    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 004218C0    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 004218C3    dec         edx
 004218C4    mov         eax,dword ptr [ebp-4]
 004218C7    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 004218CA    call        00420094
>004218CF    jmp         004218DF
 004218D1    mov         edx,dword ptr [ebp-8]
 004218D4    mov         eax,dword ptr [ebp-4]
 004218D7    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 004218DA    call        004204F0
 004218DF    mov         eax,dword ptr [ebp-8]
 004218E2    xor         edx,edx
 004218E4    mov         dword ptr [eax+4],edx;TCollectionItem.FCollection:TCollection
 004218E7    mov         cl,1
 004218E9    mov         edx,dword ptr [ebp-8]
 004218EC    mov         eax,dword ptr [ebp-4]
 004218EF    call        00420E70
 004218F4    mov         eax,dword ptr [ebp-4]
 004218F7    call        00421438
 004218FC    pop         ebx
 004218FD    pop         ecx
 004218FE    pop         ecx
 004218FF    pop         ebp
 00421900    ret
*}
end;

//00421904
{*procedure sub_00421904(?:?);
begin
 00421904    push        ebp
 00421905    mov         ebp,esp
 00421907    add         esp,0FFFFFFF8
 0042190A    mov         dword ptr [ebp-8],edx
 0042190D    mov         dword ptr [ebp-4],eax
 00421910    pop         ecx
 00421911    pop         ecx
 00421912    pop         ebp
 00421913    ret
end;*}

//00421914
{*procedure sub_00421914(?:?);
begin
 00421914    push        ebp
 00421915    mov         ebp,esp
 00421917    add         esp,0FFFFFFF8
 0042191A    mov         dword ptr [ebp-8],edx
 0042191D    mov         dword ptr [ebp-4],eax
 00421920    pop         ecx
 00421921    pop         ecx
 00421922    pop         ebp
 00421923    ret
end;*}

//00421924
procedure sub_00421924(?:TOwnedCollection; ?:Integer);
begin
{*
 00421924    push        ebp
 00421925    mov         ebp,esp
 00421927    add         esp,0FFFFFFF8
 0042192A    push        ebx
 0042192B    mov         dword ptr [ebp-8],edx
 0042192E    mov         dword ptr [ebp-4],eax
 00421931    mov         edx,dword ptr [ebp-8]
 00421934    mov         eax,dword ptr [ebp-4]
 00421937    mov         eax,dword ptr [eax+8]
 0042193A    call        TList.Get
 0042193F    mov         edx,eax
 00421941    mov         cl,2
 00421943    mov         eax,dword ptr [ebp-4]
 00421946    mov         ebx,dword ptr [eax]
 00421948    call        dword ptr [ebx+14]
 0042194B    mov         edx,dword ptr [ebp-8]
 0042194E    mov         eax,dword ptr [ebp-4]
 00421951    mov         eax,dword ptr [eax+8]
 00421954    call        TList.Get
 00421959    call        TObject.Free
 0042195E    pop         ebx
 0042195F    pop         ecx
 00421960    pop         ecx
 00421961    pop         ebp
 00421962    ret
*}
end;

//00421964
{*function sub_00421964(?:TComboExItems):?;
begin
 00421964    push        ebp
 00421965    mov         ebp,esp
 00421967    add         esp,0FFFFFFF8
 0042196A    push        esi
 0042196B    mov         dword ptr [ebp-4],eax
 0042196E    mov         eax,dword ptr [ebp-4]
 00421971    mov         si,0FFFF
 00421975    call        @CallDynaInst
 0042197A    mov         dword ptr [ebp-8],eax
 0042197D    mov         eax,dword ptr [ebp-8]
 00421980    pop         esi
 00421981    pop         ecx
 00421982    pop         ecx
 00421983    pop         ebp
 00421984    ret
end;*}

//00421988
{*procedure sub_00421988(?:?);
begin
 00421988    push        ebp
 00421989    mov         ebp,esp
 0042198B    add         esp,0FFFFFFF8
 0042198E    mov         dword ptr [ebp-8],edx
 00421991    mov         dword ptr [ebp-4],eax
 00421994    pop         ecx
 00421995    pop         ecx
 00421996    pop         ebp
 00421997    ret
end;*}

//00421998
{*procedure sub_00421998(?:?);
begin
 00421998    push        ebp
 00421999    mov         ebp,esp
 0042199B    add         esp,0FFFFFFF8
 0042199E    mov         dword ptr [ebp-8],edx
 004219A1    mov         dword ptr [ebp-4],eax
 004219A4    pop         ecx
 004219A5    pop         ecx
 004219A6    pop         ebp
 004219A7    ret
end;*}

//004219A8
{*procedure sub_004219A8(?:?; ?:?);
begin
 004219A8    push        ebp
 004219A9    mov         ebp,esp
 004219AB    add         esp,0FFFFFFF4
 004219AE    mov         byte ptr [ebp-9],cl
 004219B1    mov         dword ptr [ebp-8],edx
 004219B4    mov         dword ptr [ebp-4],eax
 004219B7    mov         al,byte ptr [ebp-9]
 004219BA    sub         al,1
>004219BC    jb          004219C4
 004219BE    dec         al
>004219C0    je          004219D1
>004219C2    jmp         004219DC
 004219C4    lea         edx,[ebp-8]
 004219C7    mov         eax,dword ptr [ebp-4]
 004219CA    mov         ecx,dword ptr [eax]
 004219CC    call        dword ptr [ecx+0C];TCollection.sub_00421988
>004219CF    jmp         004219DC
 004219D1    mov         edx,dword ptr [ebp-8]
 004219D4    mov         eax,dword ptr [ebp-4]
 004219D7    mov         ecx,dword ptr [eax]
 004219D9    call        dword ptr [ecx+10];TCollection.sub_00421998
 004219DC    mov         esp,ebp
 004219DE    pop         ebp
 004219DF    ret
end;*}

//004219E0
{*constructor TWorkAreas.Create(?:?);
begin
 004219E0    push        ebp
 004219E1    mov         ebp,esp
 004219E3    add         esp,0FFFFFFF4
 004219E6    test        dl,dl
>004219E8    je          004219F2
 004219EA    add         esp,0FFFFFFF0
 004219ED    call        @ClassCreate
 004219F2    mov         dword ptr [ebp-0C],ecx
 004219F5    mov         byte ptr [ebp-5],dl
 004219F8    mov         dword ptr [ebp-4],eax
 004219FB    mov         eax,dword ptr [ebp-4]
 004219FE    mov         edx,dword ptr [ebp-0C]
 00421A01    mov         dword ptr [eax+18],edx
 00421A04    mov         ecx,dword ptr [ebp+8]
 00421A07    xor         edx,edx
 00421A09    mov         eax,dword ptr [ebp-4]
 00421A0C    call        TCollection.Create
 00421A11    mov         eax,dword ptr [ebp-4]
 00421A14    cmp         byte ptr [ebp-5],0
>00421A18    je          00421A29
 00421A1A    call        @AfterConstruction
 00421A1F    pop         dword ptr fs:[0]
 00421A26    add         esp,0C
 00421A29    mov         eax,dword ptr [ebp-4]
 00421A2C    mov         esp,ebp
 00421A2E    pop         ebp
 00421A2F    ret         4
end;*}

//00421A34
procedure TOwnedCollection.sub_00420CBC;
begin
{*
 00421A34    push        ebp
 00421A35    mov         ebp,esp
 00421A37    add         esp,0FFFFFFF8
 00421A3A    mov         dword ptr [ebp-4],eax
 00421A3D    mov         eax,dword ptr [ebp-4]
 00421A40    mov         eax,dword ptr [eax+18];TOwnedCollection...FOwner:TPersistent
 00421A43    mov         dword ptr [ebp-8],eax
 00421A46    mov         eax,dword ptr [ebp-8]
 00421A49    pop         ecx
 00421A4A    pop         ecx
 00421A4B    pop         ebp
 00421A4C    ret
*}
end;

//00421A50
destructor TStrings.Destroy;
begin
{*
 00421A50    push        ebp
 00421A51    mov         ebp,esp
 00421A53    add         esp,0FFFFFFF8
 00421A56    call        @BeforeDestruction
 00421A5B    mov         byte ptr [ebp-5],dl
 00421A5E    mov         dword ptr [ebp-4],eax
 00421A61    xor         edx,edx
 00421A63    mov         eax,dword ptr [ebp-4]
 00421A66    call        00422878
 00421A6B    mov         dl,byte ptr [ebp-5]
 00421A6E    and         dl,0FC
 00421A71    mov         eax,dword ptr [ebp-4]
 00421A74    call        TPersistent.Destroy
 00421A79    cmp         byte ptr [ebp-5],0
>00421A7D    jle         00421A87
 00421A7F    mov         eax,dword ptr [ebp-4]
 00421A82    call        @ClassDestroy
 00421A87    pop         ecx
 00421A88    pop         ecx
 00421A89    pop         ebp
 00421A8A    ret
*}
end;

//00421A8C
{*function sub_00421A8C(?:?):?;
begin
 00421A8C    push        ebp
 00421A8D    mov         ebp,esp
 00421A8F    add         esp,0FFFFFFF4
 00421A92    push        ebx
 00421A93    mov         dword ptr [ebp-8],edx
 00421A96    mov         dword ptr [ebp-4],eax
 00421A99    mov         eax,dword ptr [ebp-4]
 00421A9C    mov         edx,dword ptr [eax]
 00421A9E    call        dword ptr [edx+14];@AbstractError
 00421AA1    mov         dword ptr [ebp-0C],eax
 00421AA4    mov         ecx,dword ptr [ebp-8]
 00421AA7    mov         edx,dword ptr [ebp-0C]
 00421AAA    mov         eax,dword ptr [ebp-4]
 00421AAD    mov         ebx,dword ptr [eax]
 00421AAF    call        dword ptr [ebx+60];@AbstractError
 00421AB2    mov         eax,dword ptr [ebp-0C]
 00421AB5    pop         ebx
 00421AB6    mov         esp,ebp
 00421AB8    pop         ebp
 00421AB9    ret
end;*}

//00421ABC
{*function sub_00421ABC(?:?; ?:?):?;
begin
 00421ABC    push        ebp
 00421ABD    mov         ebp,esp
 00421ABF    add         esp,0FFFFFFF0
 00421AC2    push        ebx
 00421AC3    mov         dword ptr [ebp-0C],ecx
 00421AC6    mov         dword ptr [ebp-8],edx
 00421AC9    mov         dword ptr [ebp-4],eax
 00421ACC    mov         edx,dword ptr [ebp-8]
 00421ACF    mov         eax,dword ptr [ebp-4]
 00421AD2    mov         ecx,dword ptr [eax]
 00421AD4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00421AD7    mov         dword ptr [ebp-10],eax
 00421ADA    mov         ecx,dword ptr [ebp-0C]
 00421ADD    mov         edx,dword ptr [ebp-10]
 00421AE0    mov         eax,dword ptr [ebp-4]
 00421AE3    mov         ebx,dword ptr [eax]
 00421AE5    call        dword ptr [ebx+24];TStrings.sub_004226E4
 00421AE8    mov         eax,dword ptr [ebp-10]
 00421AEB    pop         ebx
 00421AEC    mov         esp,ebp
 00421AEE    pop         ebp
 00421AEF    ret
end;*}

//00421AF0
{*procedure sub_00421AF0(?:?);
begin
 00421AF0    push        ebp
 00421AF1    mov         ebp,esp
 00421AF3    add         esp,0FFFFFFEC
 00421AF6    push        ebx
 00421AF7    xor         ecx,ecx
 00421AF9    mov         dword ptr [ebp-14],ecx
 00421AFC    mov         dword ptr [ebp-8],edx
 00421AFF    mov         dword ptr [ebp-4],eax
 00421B02    xor         eax,eax
 00421B04    push        ebp
 00421B05    push        421BA1
 00421B0A    push        dword ptr fs:[eax]
 00421B0D    mov         dword ptr fs:[eax],esp
 00421B10    mov         eax,dword ptr [ebp-4]
 00421B13    call        TStrings.BeginUpdate
 00421B18    xor         eax,eax
 00421B1A    push        ebp
 00421B1B    push        421B84
 00421B20    push        dword ptr fs:[eax]
 00421B23    mov         dword ptr fs:[eax],esp
 00421B26    mov         eax,dword ptr [ebp-8]
 00421B29    mov         edx,dword ptr [eax]
 00421B2B    call        dword ptr [edx+14]
 00421B2E    dec         eax
 00421B2F    test        eax,eax
>00421B31    jl          00421B6E
 00421B33    inc         eax
 00421B34    mov         dword ptr [ebp-10],eax
 00421B37    mov         dword ptr [ebp-0C],0
 00421B3E    lea         ecx,[ebp-14]
 00421B41    mov         edx,dword ptr [ebp-0C]
 00421B44    mov         eax,dword ptr [ebp-8]
 00421B47    mov         ebx,dword ptr [eax]
 00421B49    call        dword ptr [ebx+0C]
 00421B4C    mov         eax,dword ptr [ebp-14]
 00421B4F    push        eax
 00421B50    mov         edx,dword ptr [ebp-0C]
 00421B53    mov         eax,dword ptr [ebp-8]
 00421B56    mov         ecx,dword ptr [eax]
 00421B58    call        dword ptr [ecx+18]
 00421B5B    mov         ecx,eax
 00421B5D    mov         eax,dword ptr [ebp-4]
 00421B60    pop         edx
 00421B61    mov         ebx,dword ptr [eax]
 00421B63    call        dword ptr [ebx+3C];TStrings.sub_00421ABC
 00421B66    inc         dword ptr [ebp-0C]
 00421B69    dec         dword ptr [ebp-10]
>00421B6C    jne         00421B3E
 00421B6E    xor         eax,eax
 00421B70    pop         edx
 00421B71    pop         ecx
 00421B72    pop         ecx
 00421B73    mov         dword ptr fs:[eax],edx
 00421B76    push        421B8B
 00421B7B    mov         eax,dword ptr [ebp-4]
 00421B7E    call        TStrings.EndUpdate
 00421B83    ret
>00421B84    jmp         @HandleFinally
>00421B89    jmp         00421B7B
 00421B8B    xor         eax,eax
 00421B8D    pop         edx
 00421B8E    pop         ecx
 00421B8F    pop         ecx
 00421B90    mov         dword ptr fs:[eax],edx
 00421B93    push        421BA8
 00421B98    lea         eax,[ebp-14]
 00421B9B    call        @LStrClr
 00421BA0    ret
>00421BA1    jmp         @HandleFinally
>00421BA6    jmp         00421B98
 00421BA8    pop         ebx
 00421BA9    mov         esp,ebp
 00421BAB    pop         ebp
 00421BAC    ret
end;*}

//00421BB0
{*procedure sub_00421BB0(?:?);
begin
 00421BB0    push        ebp
 00421BB1    mov         ebp,esp
 00421BB3    add         esp,0FFFFFFF8
 00421BB6    mov         dword ptr [ebp-8],edx
 00421BB9    mov         dword ptr [ebp-4],eax
 00421BBC    mov         eax,dword ptr [ebp-8]
 00421BBF    mov         edx,dword ptr ds:[41D9F4];TStrings
 00421BC5    call        @IsClass
 00421BCA    test        al,al
>00421BCC    je          00421C44
 00421BCE    mov         eax,dword ptr [ebp-4]
 00421BD1    call        TStrings.BeginUpdate
 00421BD6    xor         eax,eax
 00421BD8    push        ebp
 00421BD9    push        421C3D
 00421BDE    push        dword ptr fs:[eax]
 00421BE1    mov         dword ptr fs:[eax],esp
 00421BE4    mov         eax,dword ptr [ebp-4]
 00421BE7    mov         edx,dword ptr [eax]
 00421BE9    call        dword ptr [edx+44];TStrings.Clear
 00421BEC    mov         eax,dword ptr [ebp-8]
 00421BEF    mov         al,byte ptr [eax+4]
 00421BF2    mov         edx,dword ptr [ebp-4]
 00421BF5    mov         byte ptr [edx+4],al;TStrings.FDefined:TStringsDefined
 00421BF8    mov         eax,dword ptr [ebp-8]
 00421BFB    mov         al,byte ptr [eax+7]
 00421BFE    mov         edx,dword ptr [ebp-4]
 00421C01    mov         byte ptr [edx+7],al;TStrings.FNameValueSeparator:Char
 00421C04    mov         eax,dword ptr [ebp-8]
 00421C07    mov         al,byte ptr [eax+6]
 00421C0A    mov         edx,dword ptr [ebp-4]
 00421C0D    mov         byte ptr [edx+6],al;TStrings.FQuoteChar:Char
 00421C10    mov         eax,dword ptr [ebp-8]
 00421C13    mov         al,byte ptr [eax+5]
 00421C16    mov         edx,dword ptr [ebp-4]
 00421C19    mov         byte ptr [edx+5],al;TStrings.FDelimiter:Char
 00421C1C    mov         edx,dword ptr [ebp-8]
 00421C1F    mov         eax,dword ptr [ebp-4]
 00421C22    mov         ecx,dword ptr [eax]
 00421C24    call        dword ptr [ecx+40];TStrings.sub_00421AF0
 00421C27    xor         eax,eax
 00421C29    pop         edx
 00421C2A    pop         ecx
 00421C2B    pop         ecx
 00421C2C    mov         dword ptr fs:[eax],edx
 00421C2F    push        421C4F
 00421C34    mov         eax,dword ptr [ebp-4]
 00421C37    call        TStrings.EndUpdate
 00421C3C    ret
>00421C3D    jmp         @HandleFinally
>00421C42    jmp         00421C34
 00421C44    mov         edx,dword ptr [ebp-8]
 00421C47    mov         eax,dword ptr [ebp-4]
 00421C4A    call        00420AD4
 00421C4F    pop         ecx
 00421C50    pop         ecx
 00421C51    pop         ebp
 00421C52    ret
end;*}

//00421C54
procedure TStrings.BeginUpdate;
begin
{*
 00421C54    push        ebp
 00421C55    mov         ebp,esp
 00421C57    push        ecx
 00421C58    mov         dword ptr [ebp-4],eax
 00421C5B    mov         eax,dword ptr [ebp-4]
 00421C5E    cmp         dword ptr [eax+8],0
>00421C62    jne         00421C6E
 00421C64    mov         dl,1
 00421C66    mov         eax,dword ptr [ebp-4]
 00421C69    mov         ecx,dword ptr [eax]
 00421C6B    call        dword ptr [ecx+30]
 00421C6E    mov         eax,dword ptr [ebp-4]
 00421C71    inc         dword ptr [eax+8]
 00421C74    pop         ecx
 00421C75    pop         ebp
 00421C76    ret
*}
end;

//00421C78
function DoWrite:Boolean;
begin
{*
 00421C78    push        ebp
 00421C79    mov         ebp,esp
 00421C7B    push        ecx
 00421C7C    mov         eax,dword ptr [ebp+8]
 00421C7F    mov         eax,dword ptr [eax-4]
 00421C82    cmp         dword ptr [eax+20],0
>00421C86    je          00421CBF
 00421C88    mov         byte ptr [ebp-1],1
 00421C8C    mov         eax,dword ptr [ebp+8]
 00421C8F    mov         eax,dword ptr [eax-4]
 00421C92    mov         eax,dword ptr [eax+20]
 00421C95    mov         edx,dword ptr ds:[41D9F4];TStrings
 00421C9B    call        @IsClass
 00421CA0    test        al,al
>00421CA2    je          00421CD0
 00421CA4    mov         eax,dword ptr [ebp+8]
 00421CA7    mov         eax,dword ptr [eax-4]
 00421CAA    mov         edx,dword ptr [eax+20]
 00421CAD    mov         eax,dword ptr [ebp+8]
 00421CB0    mov         eax,dword ptr [eax-8]
 00421CB3    call        00421D48
 00421CB8    xor         al,1
 00421CBA    mov         byte ptr [ebp-1],al
>00421CBD    jmp         00421CD0
 00421CBF    mov         eax,dword ptr [ebp+8]
 00421CC2    mov         eax,dword ptr [eax-8]
 00421CC5    mov         edx,dword ptr [eax]
 00421CC7    call        dword ptr [edx+14]
 00421CCA    test        eax,eax
 00421CCC    setg        byte ptr [ebp-1]
 00421CD0    mov         al,byte ptr [ebp-1]
 00421CD3    pop         ecx
 00421CD4    pop         ebp
 00421CD5    ret
*}
end;

//00421CD8
procedure TStrings.DefineProperties(Filer:TFiler);
begin
{*
 00421CD8    push        ebp
 00421CD9    mov         ebp,esp
 00421CDB    add         esp,0FFFFFFF8
 00421CDE    push        ebx
 00421CDF    mov         dword ptr [ebp-4],edx
 00421CE2    mov         dword ptr [ebp-8],eax
 00421CE5    mov         eax,dword ptr [ebp-8]
 00421CE8    push        eax
 00421CE9    push        4226F8;TStrings.ReadData
 00421CEE    mov         eax,dword ptr [ebp-8]
 00421CF1    push        eax
 00421CF2    push        422A0C;TStrings.WriteData
 00421CF7    push        ebp
 00421CF8    call        DoWrite
 00421CFD    pop         ecx
 00421CFE    mov         ecx,eax
 00421D00    mov         edx,421D1C;'Strings'
 00421D05    mov         eax,dword ptr [ebp-4]
 00421D08    mov         ebx,dword ptr [eax]
 00421D0A    call        dword ptr [ebx+4]
 00421D0D    pop         ebx
 00421D0E    pop         ecx
 00421D0F    pop         ecx
 00421D10    pop         ebp
 00421D11    ret
*}
end;

//00421D24
procedure TStrings.EndUpdate;
begin
{*
 00421D24    push        ebp
 00421D25    mov         ebp,esp
 00421D27    push        ecx
 00421D28    mov         dword ptr [ebp-4],eax
 00421D2B    mov         eax,dword ptr [ebp-4]
 00421D2E    dec         dword ptr [eax+8]
 00421D31    mov         eax,dword ptr [ebp-4]
 00421D34    cmp         dword ptr [eax+8],0
>00421D38    jne         00421D44
 00421D3A    xor         edx,edx
 00421D3C    mov         eax,dword ptr [ebp-4]
 00421D3F    mov         ecx,dword ptr [eax]
 00421D41    call        dword ptr [ecx+30]
 00421D44    pop         ecx
 00421D45    pop         ebp
 00421D46    ret
*}
end;

//00421D48
{*function sub_00421D48(?:?; ?:?):?;
begin
 00421D48    push        ebp
 00421D49    mov         ebp,esp
 00421D4B    add         esp,0FFFFFFE0
 00421D4E    push        ebx
 00421D4F    xor         ecx,ecx
 00421D51    mov         dword ptr [ebp-1C],ecx
 00421D54    mov         dword ptr [ebp-20],ecx
 00421D57    mov         dword ptr [ebp-8],edx
 00421D5A    mov         dword ptr [ebp-4],eax
 00421D5D    xor         eax,eax
 00421D5F    push        ebp
 00421D60    push        421DEC
 00421D65    push        dword ptr fs:[eax]
 00421D68    mov         dword ptr fs:[eax],esp
 00421D6B    mov         byte ptr [ebp-9],0
 00421D6F    mov         eax,dword ptr [ebp-4]
 00421D72    mov         edx,dword ptr [eax]
 00421D74    call        dword ptr [edx+14]
 00421D77    mov         dword ptr [ebp-14],eax
 00421D7A    mov         eax,dword ptr [ebp-8]
 00421D7D    mov         edx,dword ptr [eax]
 00421D7F    call        dword ptr [edx+14]
 00421D82    cmp         eax,dword ptr [ebp-14]
>00421D85    jne         00421DD1
 00421D87    mov         eax,dword ptr [ebp-14]
 00421D8A    dec         eax
 00421D8B    test        eax,eax
>00421D8D    jl          00421DCD
 00421D8F    inc         eax
 00421D90    mov         dword ptr [ebp-18],eax
 00421D93    mov         dword ptr [ebp-10],0
 00421D9A    lea         ecx,[ebp-1C]
 00421D9D    mov         edx,dword ptr [ebp-10]
 00421DA0    mov         eax,dword ptr [ebp-4]
 00421DA3    mov         ebx,dword ptr [eax]
 00421DA5    call        dword ptr [ebx+0C]
 00421DA8    mov         eax,dword ptr [ebp-1C]
 00421DAB    push        eax
 00421DAC    lea         ecx,[ebp-20]
 00421DAF    mov         edx,dword ptr [ebp-10]
 00421DB2    mov         eax,dword ptr [ebp-8]
 00421DB5    mov         ebx,dword ptr [eax]
 00421DB7    call        dword ptr [ebx+0C]
 00421DBA    mov         edx,dword ptr [ebp-20]
 00421DBD    pop         eax
 00421DBE    call        @LStrCmp
>00421DC3    jne         00421DD1
 00421DC5    inc         dword ptr [ebp-10]
 00421DC8    dec         dword ptr [ebp-18]
>00421DCB    jne         00421D9A
 00421DCD    mov         byte ptr [ebp-9],1
 00421DD1    xor         eax,eax
 00421DD3    pop         edx
 00421DD4    pop         ecx
 00421DD5    pop         ecx
 00421DD6    mov         dword ptr fs:[eax],edx
 00421DD9    push        421DF3
 00421DDE    lea         eax,[ebp-20]
 00421DE1    mov         edx,2
 00421DE6    call        @LStrArrayClr
 00421DEB    ret
>00421DEC    jmp         @HandleFinally
>00421DF1    jmp         00421DDE
 00421DF3    mov         al,byte ptr [ebp-9]
 00421DF6    pop         ebx
 00421DF7    mov         esp,ebp
 00421DF9    pop         ebp
 00421DFA    ret
end;*}

//00421DFC
{*function sub_00421DFC(?:?):?;
begin
 00421DFC    push        ebp
 00421DFD    mov         ebp,esp
 00421DFF    mov         eax,dword ptr [ebp+4]
 00421E02    pop         ebp
 00421E03    ret
end;*}

//00421E04
procedure sub_00421E04;
begin
{*
 00421E04    push        ebp
 00421E05    mov         ebp,esp
 00421E07    add         esp,0FFFFFFEC
 00421E0A    mov         dword ptr [ebp-0C],ecx
 00421E0D    mov         dword ptr [ebp-8],edx
 00421E10    mov         dword ptr [ebp-4],eax
 00421E13    push        ebp
 00421E14    call        00421DFC
 00421E19    pop         ecx
 00421E1A    push        eax
 00421E1B    mov         eax,dword ptr [ebp-0C]
 00421E1E    mov         dword ptr [ebp-14],eax
 00421E21    mov         byte ptr [ebp-10],0
 00421E25    lea         eax,[ebp-14]
 00421E28    push        eax
 00421E29    push        0
 00421E2B    mov         ecx,dword ptr [ebp-8]
 00421E2E    mov         dl,1
 00421E30    mov         eax,[0041D2F4];EStringListError
 00421E35    call        Exception.CreateFmt;EStringListError.Create
>00421E3A    jmp         @RaiseExcept
*}
end;

//00421E44
{*procedure sub_00421E44(?:TStringList; ?:TResStringRec; ?:?);
begin
 00421E44    push        ebp
 00421E45    mov         ebp,esp
 00421E47    add         esp,0FFFFFFF0
 00421E4A    push        ebx
 00421E4B    xor         ebx,ebx
 00421E4D    mov         dword ptr [ebp-10],ebx
 00421E50    mov         dword ptr [ebp-0C],ecx
 00421E53    mov         dword ptr [ebp-8],edx
 00421E56    mov         dword ptr [ebp-4],eax
 00421E59    xor         eax,eax
 00421E5B    push        ebp
 00421E5C    push        421E96
 00421E61    push        dword ptr fs:[eax]
 00421E64    mov         dword ptr fs:[eax],esp
 00421E67    lea         edx,[ebp-10]
 00421E6A    mov         eax,dword ptr [ebp-8]
 00421E6D    call        LoadResString;'I/O error %d'
 00421E72    mov         edx,dword ptr [ebp-10]
 00421E75    mov         ecx,dword ptr [ebp-0C]
 00421E78    mov         eax,dword ptr [ebp-4]
 00421E7B    call        00421E04
 00421E80    xor         eax,eax
 00421E82    pop         edx
 00421E83    pop         ecx
 00421E84    pop         ecx
 00421E85    mov         dword ptr fs:[eax],edx
 00421E88    push        421E9D
 00421E8D    lea         eax,[ebp-10]
 00421E90    call        @LStrClr
 00421E95    ret
>00421E96    jmp         @HandleFinally
>00421E9B    jmp         00421E8D
 00421E9D    pop         ebx
 00421E9E    mov         esp,ebp
 00421EA0    pop         ebp
 00421EA1    ret
end;*}

//00421EA4
{*procedure sub_00421EA4(?:?; ?:?);
begin
 00421EA4    push        ebp
 00421EA5    mov         ebp,esp
 00421EA7    add         esp,0FFFFFFE8
 00421EAA    push        ebx
 00421EAB    xor         ebx,ebx
 00421EAD    mov         dword ptr [ebp-18],ebx
 00421EB0    mov         dword ptr [ebp-14],ebx
 00421EB3    mov         dword ptr [ebp-0C],ecx
 00421EB6    mov         dword ptr [ebp-8],edx
 00421EB9    mov         dword ptr [ebp-4],eax
 00421EBC    xor         eax,eax
 00421EBE    push        ebp
 00421EBF    push        421F84
 00421EC4    push        dword ptr fs:[eax]
 00421EC7    mov         dword ptr fs:[eax],esp
 00421ECA    mov         eax,dword ptr [ebp-4]
 00421ECD    call        TStrings.BeginUpdate
 00421ED2    xor         eax,eax
 00421ED4    push        ebp
 00421ED5    push        421F62
 00421EDA    push        dword ptr fs:[eax]
 00421EDD    mov         dword ptr fs:[eax],esp
 00421EE0    lea         ecx,[ebp-14]
 00421EE3    mov         edx,dword ptr [ebp-8]
 00421EE6    mov         eax,dword ptr [ebp-4]
 00421EE9    mov         ebx,dword ptr [eax]
 00421EEB    call        dword ptr [ebx+0C];@AbstractError
 00421EEE    mov         edx,dword ptr [ebp-8]
 00421EF1    mov         eax,dword ptr [ebp-4]
 00421EF4    mov         ecx,dword ptr [eax]
 00421EF6    call        dword ptr [ecx+18];TStrings.sub_004220A0
 00421EF9    mov         dword ptr [ebp-10],eax
 00421EFC    lea         ecx,[ebp-18]
 00421EFF    mov         edx,dword ptr [ebp-0C]
 00421F02    mov         eax,dword ptr [ebp-4]
 00421F05    mov         ebx,dword ptr [eax]
 00421F07    call        dword ptr [ebx+0C];@AbstractError
 00421F0A    mov         ecx,dword ptr [ebp-18]
 00421F0D    mov         edx,dword ptr [ebp-8]
 00421F10    mov         eax,dword ptr [ebp-4]
 00421F13    mov         ebx,dword ptr [eax]
 00421F15    call        dword ptr [ebx+20];TStrings.sub_004226A4
 00421F18    mov         edx,dword ptr [ebp-0C]
 00421F1B    mov         eax,dword ptr [ebp-4]
 00421F1E    mov         ecx,dword ptr [eax]
 00421F20    call        dword ptr [ecx+18];TStrings.sub_004220A0
 00421F23    mov         ecx,eax
 00421F25    mov         edx,dword ptr [ebp-8]
 00421F28    mov         eax,dword ptr [ebp-4]
 00421F2B    mov         ebx,dword ptr [eax]
 00421F2D    call        dword ptr [ebx+24];TStrings.sub_004226E4
 00421F30    mov         ecx,dword ptr [ebp-14]
 00421F33    mov         edx,dword ptr [ebp-0C]
 00421F36    mov         eax,dword ptr [ebp-4]
 00421F39    mov         ebx,dword ptr [eax]
 00421F3B    call        dword ptr [ebx+20];TStrings.sub_004226A4
 00421F3E    mov         ecx,dword ptr [ebp-10]
 00421F41    mov         edx,dword ptr [ebp-0C]
 00421F44    mov         eax,dword ptr [ebp-4]
 00421F47    mov         ebx,dword ptr [eax]
 00421F49    call        dword ptr [ebx+24];TStrings.sub_004226E4
 00421F4C    xor         eax,eax
 00421F4E    pop         edx
 00421F4F    pop         ecx
 00421F50    pop         ecx
 00421F51    mov         dword ptr fs:[eax],edx
 00421F54    push        421F69
 00421F59    mov         eax,dword ptr [ebp-4]
 00421F5C    call        TStrings.EndUpdate
 00421F61    ret
>00421F62    jmp         @HandleFinally
>00421F67    jmp         00421F59
 00421F69    xor         eax,eax
 00421F6B    pop         edx
 00421F6C    pop         ecx
 00421F6D    pop         ecx
 00421F6E    mov         dword ptr fs:[eax],edx
 00421F71    push        421F8B
 00421F76    lea         eax,[ebp-18]
 00421F79    mov         edx,2
 00421F7E    call        @LStrArrayClr
 00421F83    ret
>00421F84    jmp         @HandleFinally
>00421F89    jmp         00421F76
 00421F8B    pop         ebx
 00421F8C    mov         esp,ebp
 00421F8E    pop         ebp
 00421F8F    ret
end;*}

//00421F90
{*procedure sub_00421F90(?:?; ?:?; ?:?);
begin
 00421F90    push        ebp
 00421F91    mov         ebp,esp
 00421F93    add         esp,0FFFFFFEC
 00421F96    push        ebx
 00421F97    xor         ebx,ebx
 00421F99    mov         dword ptr [ebp-14],ebx
 00421F9C    mov         dword ptr [ebp-0C],ecx
 00421F9F    mov         dword ptr [ebp-8],edx
 00421FA2    mov         dword ptr [ebp-4],eax
 00421FA5    xor         eax,eax
 00421FA7    push        ebp
 00421FA8    push        422014
 00421FAD    push        dword ptr fs:[eax]
 00421FB0    mov         dword ptr fs:[eax],esp
 00421FB3    mov         eax,dword ptr [ebp-0C]
 00421FB6    mov         edx,dword ptr [ebp-8]
 00421FB9    call        @LStrAsg
 00421FBE    mov         eax,dword ptr [ebp-4]
 00421FC1    call        00422ABC
 00421FC6    mov         edx,eax
 00421FC8    lea         eax,[ebp-14]
 00421FCB    call        @LStrFromChar
 00421FD0    mov         eax,dword ptr [ebp-14]
 00421FD3    mov         edx,dword ptr [ebp-0C]
 00421FD6    mov         edx,dword ptr [edx]
 00421FD8    call        00411664
 00421FDD    mov         dword ptr [ebp-10],eax
 00421FE0    cmp         dword ptr [ebp-10],0
>00421FE4    je          00421FF4
 00421FE6    mov         edx,dword ptr [ebp-10]
 00421FE9    dec         edx
 00421FEA    mov         eax,dword ptr [ebp-0C]
 00421FED    call        @LStrSetLength
>00421FF2    jmp         00421FFE
 00421FF4    mov         eax,dword ptr [ebp-0C]
 00421FF7    xor         edx,edx
 00421FF9    call        @LStrSetLength
 00421FFE    xor         eax,eax
 00422000    pop         edx
 00422001    pop         ecx
 00422002    pop         ecx
 00422003    mov         dword ptr fs:[eax],edx
 00422006    push        42201B
 0042200B    lea         eax,[ebp-14]
 0042200E    call        @LStrClr
 00422013    ret
>00422014    jmp         @HandleFinally
>00422019    jmp         0042200B
 0042201B    pop         ebx
 0042201C    mov         esp,ebp
 0042201E    pop         ebp
 0042201F    ret
end;*}

//00422020
{*function sub_00422020:?;
begin
 00422020    push        ebp
 00422021    mov         ebp,esp
 00422023    add         esp,0FFFFFFF8
 00422026    mov         dword ptr [ebp-4],eax
 00422029    mov         eax,dword ptr [ebp-4]
 0042202C    mov         edx,dword ptr [eax]
 0042202E    call        dword ptr [edx+14];@AbstractError
 00422031    mov         dword ptr [ebp-8],eax
 00422034    mov         eax,dword ptr [ebp-8]
 00422037    pop         ecx
 00422038    pop         ecx
 00422039    pop         ebp
 0042203A    ret
end;*}

//0042203C
{*procedure sub_0042203C(?:TStringList; ?:?; ?:?);
begin
 0042203C    push        ebp
 0042203D    mov         ebp,esp
 0042203F    add         esp,0FFFFFFF0
 00422042    push        ebx
 00422043    xor         ebx,ebx
 00422045    mov         dword ptr [ebp-10],ebx
 00422048    mov         dword ptr [ebp-0C],ecx
 0042204B    mov         dword ptr [ebp-8],edx
 0042204E    mov         dword ptr [ebp-4],eax
 00422051    xor         eax,eax
 00422053    push        ebp
 00422054    push        422091
 00422059    push        dword ptr fs:[eax]
 0042205C    mov         dword ptr fs:[eax],esp
 0042205F    lea         ecx,[ebp-10]
 00422062    mov         edx,dword ptr [ebp-8]
 00422065    mov         eax,dword ptr [ebp-4]
 00422068    mov         ebx,dword ptr [eax]
 0042206A    call        dword ptr [ebx+0C]
 0042206D    mov         edx,dword ptr [ebp-10]
 00422070    mov         ecx,dword ptr [ebp-0C]
 00422073    mov         eax,dword ptr [ebp-4]
 00422076    call        00421F90
 0042207B    xor         eax,eax
 0042207D    pop         edx
 0042207E    pop         ecx
 0042207F    pop         ecx
 00422080    mov         dword ptr fs:[eax],edx
 00422083    push        422098
 00422088    lea         eax,[ebp-10]
 0042208B    call        @LStrClr
 00422090    ret
>00422091    jmp         @HandleFinally
>00422096    jmp         00422088
 00422098    pop         ebx
 00422099    mov         esp,ebp
 0042209B    pop         ebp
 0042209C    ret
end;*}

//004220A0
{*function sub_004220A0(?:?):?;
begin
 004220A0    push        ebp
 004220A1    mov         ebp,esp
 004220A3    add         esp,0FFFFFFF4
 004220A6    mov         dword ptr [ebp-0C],edx
 004220A9    mov         dword ptr [ebp-4],eax
 004220AC    xor         eax,eax
 004220AE    mov         dword ptr [ebp-8],eax
 004220B1    mov         eax,dword ptr [ebp-8]
 004220B4    mov         esp,ebp
 004220B6    pop         ebp
 004220B7    ret
end;*}

//004220B8
{*function sub_004220B8:?;
begin
 004220B8    push        ebp
 004220B9    mov         ebp,esp
 004220BB    add         esp,0FFFFFFF4
 004220BE    xor         edx,edx
 004220C0    mov         dword ptr [ebp-0C],edx
 004220C3    mov         dword ptr [ebp-4],eax
 004220C6    xor         eax,eax
 004220C8    push        ebp
 004220C9    push        422105
 004220CE    push        dword ptr fs:[eax]
 004220D1    mov         dword ptr fs:[eax],esp
 004220D4    lea         edx,[ebp-0C]
 004220D7    mov         eax,dword ptr [ebp-4]
 004220DA    mov         ecx,dword ptr [eax]
 004220DC    call        dword ptr [ecx+1C];TStrings.sub_00422114
 004220DF    mov         eax,dword ptr [ebp-0C]
 004220E2    call        @LStrToPChar
 004220E7    call        0040D0EC
 004220EC    mov         dword ptr [ebp-8],eax
 004220EF    xor         eax,eax
 004220F1    pop         edx
 004220F2    pop         ecx
 004220F3    pop         ecx
 004220F4    mov         dword ptr fs:[eax],edx
 004220F7    push        42210C
 004220FC    lea         eax,[ebp-0C]
 004220FF    call        @LStrClr
 00422104    ret
>00422105    jmp         @HandleFinally
>0042210A    jmp         004220FC
 0042210C    mov         eax,dword ptr [ebp-8]
 0042210F    mov         esp,ebp
 00422111    pop         ebp
 00422112    ret
end;*}

//00422114
{*procedure sub_00422114(?:?);
begin
 00422114    push        ebp
 00422115    mov         ebp,esp
 00422117    add         esp,0FFFFFFD4
 0042211A    push        ebx
 0042211B    xor         ecx,ecx
 0042211D    mov         dword ptr [ebp-2C],ecx
 00422120    mov         dword ptr [ebp-20],ecx
 00422123    mov         dword ptr [ebp-24],ecx
 00422126    mov         dword ptr [ebp-8],edx
 00422129    mov         dword ptr [ebp-4],eax
 0042212C    xor         eax,eax
 0042212E    push        ebp
 0042212F    push        422242
 00422134    push        dword ptr fs:[eax]
 00422137    mov         dword ptr fs:[eax],esp
 0042213A    mov         eax,dword ptr [ebp-4]
 0042213D    mov         edx,dword ptr [eax]
 0042213F    call        dword ptr [edx+14];@AbstractError
 00422142    mov         dword ptr [ebp-18],eax
 00422145    xor         eax,eax
 00422147    mov         dword ptr [ebp-14],eax
 0042214A    lea         eax,[ebp-24]
 0042214D    mov         edx,422258;#13+#10
 00422152    call        @LStrLAsg
 00422157    mov         eax,dword ptr [ebp-18]
 0042215A    dec         eax
 0042215B    test        eax,eax
>0042215D    jl          00422197
 0042215F    inc         eax
 00422160    mov         dword ptr [ebp-28],eax
 00422163    mov         dword ptr [ebp-0C],0
 0042216A    lea         ecx,[ebp-2C]
 0042216D    mov         edx,dword ptr [ebp-0C]
 00422170    mov         eax,dword ptr [ebp-4]
 00422173    mov         ebx,dword ptr [eax]
 00422175    call        dword ptr [ebx+0C];@AbstractError
 00422178    mov         eax,dword ptr [ebp-2C]
 0042217B    call        @LStrLen
 00422180    mov         ebx,eax
 00422182    mov         eax,dword ptr [ebp-24]
 00422185    call        @LStrLen
 0042218A    add         ebx,eax
 0042218C    add         dword ptr [ebp-14],ebx
 0042218F    inc         dword ptr [ebp-0C]
 00422192    dec         dword ptr [ebp-28]
>00422195    jne         0042216A
 00422197    mov         eax,dword ptr [ebp-8]
 0042219A    mov         ecx,dword ptr [ebp-14]
 0042219D    xor         edx,edx
 0042219F    call        @LStrFromPCharLen
 004221A4    mov         eax,dword ptr [ebp-8]
 004221A7    mov         eax,dword ptr [eax]
 004221A9    mov         dword ptr [ebp-1C],eax
 004221AC    mov         eax,dword ptr [ebp-18]
 004221AF    dec         eax
 004221B0    test        eax,eax
>004221B2    jl          0042221F
 004221B4    inc         eax
 004221B5    mov         dword ptr [ebp-28],eax
 004221B8    mov         dword ptr [ebp-0C],0
 004221BF    lea         ecx,[ebp-20]
 004221C2    mov         edx,dword ptr [ebp-0C]
 004221C5    mov         eax,dword ptr [ebp-4]
 004221C8    mov         ebx,dword ptr [eax]
 004221CA    call        dword ptr [ebx+0C];@AbstractError
 004221CD    mov         eax,dword ptr [ebp-20]
 004221D0    call        @LStrLen
 004221D5    mov         dword ptr [ebp-10],eax
 004221D8    cmp         dword ptr [ebp-10],0
>004221DC    je          004221F2
 004221DE    mov         edx,dword ptr [ebp-1C]
 004221E1    mov         eax,dword ptr [ebp-20]
 004221E4    mov         ecx,dword ptr [ebp-10]
 004221E7    call        Move
 004221EC    mov         eax,dword ptr [ebp-10]
 004221EF    add         dword ptr [ebp-1C],eax
 004221F2    mov         eax,dword ptr [ebp-24]
 004221F5    call        @LStrLen
 004221FA    mov         dword ptr [ebp-10],eax
 004221FD    cmp         dword ptr [ebp-10],0
>00422201    je          00422217
 00422203    mov         edx,dword ptr [ebp-1C]
 00422206    mov         eax,dword ptr [ebp-24]
 00422209    mov         ecx,dword ptr [ebp-10]
 0042220C    call        Move
 00422211    mov         eax,dword ptr [ebp-10]
 00422214    add         dword ptr [ebp-1C],eax
 00422217    inc         dword ptr [ebp-0C]
 0042221A    dec         dword ptr [ebp-28]
>0042221D    jne         004221BF
 0042221F    xor         eax,eax
 00422221    pop         edx
 00422222    pop         ecx
 00422223    pop         ecx
 00422224    mov         dword ptr fs:[eax],edx
 00422227    push        422249
 0042222C    lea         eax,[ebp-2C]
 0042222F    call        @LStrClr
 00422234    lea         eax,[ebp-24]
 00422237    mov         edx,2
 0042223C    call        @LStrArrayClr
 00422241    ret
>00422242    jmp         @HandleFinally
>00422247    jmp         0042222C
 00422249    pop         ebx
 0042224A    mov         esp,ebp
 0042224C    pop         ebp
 0042224D    ret
end;*}

//0042225C
{*procedure sub_0042225C(?:TStringList; ?:?; ?:?);
begin
 0042225C    push        ebp
 0042225D    mov         ebp,esp
 0042225F    add         esp,0FFFFFFEC
 00422262    push        ebx
 00422263    xor         ebx,ebx
 00422265    mov         dword ptr [ebp-14],ebx
 00422268    mov         dword ptr [ebp-0C],ecx
 0042226B    mov         dword ptr [ebp-8],edx
 0042226E    mov         dword ptr [ebp-4],eax
 00422271    xor         eax,eax
 00422273    push        ebp
 00422274    push        4222E1
 00422279    push        dword ptr fs:[eax]
 0042227C    mov         dword ptr fs:[eax],esp
 0042227F    mov         edx,dword ptr [ebp-8]
 00422282    mov         eax,dword ptr [ebp-4]
 00422285    mov         ecx,dword ptr [eax]
 00422287    call        dword ptr [ecx+58]
 0042228A    mov         dword ptr [ebp-10],eax
 0042228D    cmp         dword ptr [ebp-10],0
>00422291    jl          004222C3
 00422293    mov         eax,dword ptr [ebp-0C]
 00422296    push        eax
 00422297    lea         ecx,[ebp-14]
 0042229A    mov         edx,dword ptr [ebp-10]
 0042229D    mov         eax,dword ptr [ebp-4]
 004222A0    mov         ebx,dword ptr [eax]
 004222A2    call        dword ptr [ebx+0C]
 004222A5    mov         eax,dword ptr [ebp-14]
 004222A8    push        eax
 004222A9    mov         eax,dword ptr [ebp-8]
 004222AC    call        @LStrLen
 004222B1    mov         edx,eax
 004222B3    add         edx,2
 004222B6    mov         ecx,7FFFFFFF
 004222BB    pop         eax
 004222BC    call        @LStrCopy
>004222C1    jmp         004222CB
 004222C3    mov         eax,dword ptr [ebp-0C]
 004222C6    call        @LStrClr
 004222CB    xor         eax,eax
 004222CD    pop         edx
 004222CE    pop         ecx
 004222CF    pop         ecx
 004222D0    mov         dword ptr fs:[eax],edx
 004222D3    push        4222E8
 004222D8    lea         eax,[ebp-14]
 004222DB    call        @LStrClr
 004222E0    ret
>004222E1    jmp         @HandleFinally
>004222E6    jmp         004222D8
 004222E8    pop         ebx
 004222E9    mov         esp,ebp
 004222EB    pop         ebp
 004222EC    ret
end;*}

//004222F0
{*function sub_004222F0(?:?):?;
begin
 004222F0    push        ebp
 004222F1    mov         ebp,esp
 004222F3    add         esp,0FFFFFFEC
 004222F6    push        ebx
 004222F7    xor         ecx,ecx
 004222F9    mov         dword ptr [ebp-14],ecx
 004222FC    mov         dword ptr [ebp-8],edx
 004222FF    mov         dword ptr [ebp-4],eax
 00422302    xor         eax,eax
 00422304    push        ebp
 00422305    push        42236D
 0042230A    push        dword ptr fs:[eax]
 0042230D    mov         dword ptr fs:[eax],esp
 00422310    mov         eax,dword ptr [ebp-4]
 00422313    mov         edx,dword ptr [eax]
 00422315    call        dword ptr [edx+14];@AbstractError
 00422318    dec         eax
 00422319    test        eax,eax
>0042231B    jl          00422350
 0042231D    inc         eax
 0042231E    mov         dword ptr [ebp-10],eax
 00422321    mov         dword ptr [ebp-0C],0
 00422328    lea         ecx,[ebp-14]
 0042232B    mov         edx,dword ptr [ebp-0C]
 0042232E    mov         eax,dword ptr [ebp-4]
 00422331    mov         ebx,dword ptr [eax]
 00422333    call        dword ptr [ebx+0C];@AbstractError
 00422336    mov         edx,dword ptr [ebp-14]
 00422339    mov         ecx,dword ptr [ebp-8]
 0042233C    mov         eax,dword ptr [ebp-4]
 0042233F    mov         ebx,dword ptr [eax]
 00422341    call        dword ptr [ebx+34];TStrings.sub_00422A98
 00422344    test        eax,eax
>00422346    je          00422357
 00422348    inc         dword ptr [ebp-0C]
 0042234B    dec         dword ptr [ebp-10]
>0042234E    jne         00422328
 00422350    mov         dword ptr [ebp-0C],0FFFFFFFF
 00422357    xor         eax,eax
 00422359    pop         edx
 0042235A    pop         ecx
 0042235B    pop         ecx
 0042235C    mov         dword ptr fs:[eax],edx
 0042235F    push        422374
 00422364    lea         eax,[ebp-14]
 00422367    call        @LStrClr
 0042236C    ret
>0042236D    jmp         @HandleFinally
>00422372    jmp         00422364
 00422374    mov         eax,dword ptr [ebp-0C]
 00422377    pop         ebx
 00422378    mov         esp,ebp
 0042237A    pop         ebp
 0042237B    ret
end;*}

//0042237C
{*function sub_0042237C(?:?):?;
begin
 0042237C    push        ebp
 0042237D    mov         ebp,esp
 0042237F    add         esp,0FFFFFFE0
 00422382    push        ebx
 00422383    xor         ecx,ecx
 00422385    mov         dword ptr [ebp-20],ecx
 00422388    mov         dword ptr [ebp-1C],ecx
 0042238B    mov         dword ptr [ebp-14],ecx
 0042238E    mov         dword ptr [ebp-8],edx
 00422391    mov         dword ptr [ebp-4],eax
 00422394    xor         eax,eax
 00422396    push        ebp
 00422397    push        422447
 0042239C    push        dword ptr fs:[eax]
 0042239F    mov         dword ptr fs:[eax],esp
 004223A2    mov         eax,dword ptr [ebp-4]
 004223A5    mov         edx,dword ptr [eax]
 004223A7    call        dword ptr [edx+14];@AbstractError
 004223AA    dec         eax
 004223AB    test        eax,eax
>004223AD    jl          0042241D
 004223AF    inc         eax
 004223B0    mov         dword ptr [ebp-18],eax
 004223B3    mov         dword ptr [ebp-0C],0
 004223BA    lea         ecx,[ebp-14]
 004223BD    mov         edx,dword ptr [ebp-0C]
 004223C0    mov         eax,dword ptr [ebp-4]
 004223C3    mov         ebx,dword ptr [eax]
 004223C5    call        dword ptr [ebx+0C];@AbstractError
 004223C8    mov         eax,dword ptr [ebp-4]
 004223CB    call        00422ABC
 004223D0    mov         edx,eax
 004223D2    lea         eax,[ebp-1C]
 004223D5    call        @LStrFromChar
 004223DA    mov         eax,dword ptr [ebp-1C]
 004223DD    mov         edx,dword ptr [ebp-14]
 004223E0    call        00411664
 004223E5    mov         dword ptr [ebp-10],eax
 004223E8    cmp         dword ptr [ebp-10],0
>004223EC    je          00422415
 004223EE    lea         eax,[ebp-20]
 004223F1    push        eax
 004223F2    mov         ecx,dword ptr [ebp-10]
 004223F5    dec         ecx
 004223F6    mov         edx,1
 004223FB    mov         eax,dword ptr [ebp-14]
 004223FE    call        @LStrCopy
 00422403    mov         edx,dword ptr [ebp-20]
 00422406    mov         ecx,dword ptr [ebp-8]
 00422409    mov         eax,dword ptr [ebp-4]
 0042240C    mov         ebx,dword ptr [eax]
 0042240E    call        dword ptr [ebx+34];TStrings.sub_00422A98
 00422411    test        eax,eax
>00422413    je          00422424
 00422415    inc         dword ptr [ebp-0C]
 00422418    dec         dword ptr [ebp-18]
>0042241B    jne         004223BA
 0042241D    mov         dword ptr [ebp-0C],0FFFFFFFF
 00422424    xor         eax,eax
 00422426    pop         edx
 00422427    pop         ecx
 00422428    pop         ecx
 00422429    mov         dword ptr fs:[eax],edx
 0042242C    push        42244E
 00422431    lea         eax,[ebp-20]
 00422434    mov         edx,2
 00422439    call        @LStrArrayClr
 0042243E    lea         eax,[ebp-14]
 00422441    call        @LStrClr
 00422446    ret
>00422447    jmp         @HandleFinally
>0042244C    jmp         00422431
 0042244E    mov         eax,dword ptr [ebp-0C]
 00422451    pop         ebx
 00422452    mov         esp,ebp
 00422454    pop         ebp
 00422455    ret
end;*}

//00422458
{*function sub_00422458(?:?):?;
begin
 00422458    push        ebp
 00422459    mov         ebp,esp
 0042245B    add         esp,0FFFFFFF0
 0042245E    mov         dword ptr [ebp-8],edx
 00422461    mov         dword ptr [ebp-4],eax
 00422464    mov         eax,dword ptr [ebp-4]
 00422467    mov         edx,dword ptr [eax]
 00422469    call        dword ptr [edx+14];@AbstractError
 0042246C    dec         eax
 0042246D    test        eax,eax
>0042246F    jl          00422494
 00422471    inc         eax
 00422472    mov         dword ptr [ebp-10],eax
 00422475    mov         dword ptr [ebp-0C],0
 0042247C    mov         edx,dword ptr [ebp-0C]
 0042247F    mov         eax,dword ptr [ebp-4]
 00422482    mov         ecx,dword ptr [eax]
 00422484    call        dword ptr [ecx+18];TStrings.sub_004220A0
 00422487    cmp         eax,dword ptr [ebp-8]
>0042248A    je          0042249B
 0042248C    inc         dword ptr [ebp-0C]
 0042248F    dec         dword ptr [ebp-10]
>00422492    jne         0042247C
 00422494    mov         dword ptr [ebp-0C],0FFFFFFFF
 0042249B    mov         eax,dword ptr [ebp-0C]
 0042249E    mov         esp,ebp
 004224A0    pop         ebp
 004224A1    ret
end;*}

//004224A4
{*procedure sub_004224A4(?:?; ?:?; ?:?);
begin
 004224A4    push        ebp
 004224A5    mov         ebp,esp
 004224A7    add         esp,0FFFFFFF4
 004224AA    push        ebx
 004224AB    mov         dword ptr [ebp-0C],ecx
 004224AE    mov         dword ptr [ebp-8],edx
 004224B1    mov         dword ptr [ebp-4],eax
 004224B4    mov         ecx,dword ptr [ebp-0C]
 004224B7    mov         edx,dword ptr [ebp-8]
 004224BA    mov         eax,dword ptr [ebp-4]
 004224BD    mov         ebx,dword ptr [eax]
 004224BF    call        dword ptr [ebx+60];@AbstractError
 004224C2    mov         ecx,dword ptr [ebp+8]
 004224C5    mov         edx,dword ptr [ebp-8]
 004224C8    mov         eax,dword ptr [ebp-4]
 004224CB    mov         ebx,dword ptr [eax]
 004224CD    call        dword ptr [ebx+24];TStrings.sub_004226E4
 004224D0    pop         ebx
 004224D1    mov         esp,ebp
 004224D3    pop         ebp
 004224D4    ret         4
end;*}

//004224D8
{*procedure sub_004224D8(?:?);
begin
 004224D8    push        ebp
 004224D9    mov         ebp,esp
 004224DB    add         esp,0FFFFFFF4
 004224DE    mov         dword ptr [ebp-8],edx
 004224E1    mov         dword ptr [ebp-4],eax
 004224E4    push        20
 004224E6    mov         ecx,dword ptr [ebp-8]
 004224E9    mov         dl,1
 004224EB    mov         eax,[0041DD24];TFileStream
 004224F0    call        TFileStream.Create;TFileStream.Create
 004224F5    mov         dword ptr [ebp-0C],eax
 004224F8    xor         eax,eax
 004224FA    push        ebp
 004224FB    push        422527
 00422500    push        dword ptr fs:[eax]
 00422503    mov         dword ptr fs:[eax],esp
 00422506    mov         edx,dword ptr [ebp-0C]
 00422509    mov         eax,dword ptr [ebp-4]
 0042250C    mov         ecx,dword ptr [eax]
 0042250E    call        dword ptr [ecx+6C];TStrings.sub_00422534
 00422511    xor         eax,eax
 00422513    pop         edx
 00422514    pop         ecx
 00422515    pop         ecx
 00422516    mov         dword ptr fs:[eax],edx
 00422519    push        42252E
 0042251E    mov         eax,dword ptr [ebp-0C]
 00422521    call        TObject.Free
 00422526    ret
>00422527    jmp         @HandleFinally
>0042252C    jmp         0042251E
 0042252E    mov         esp,ebp
 00422530    pop         ebp
 00422531    ret
end;*}

//00422534
{*procedure sub_00422534(?:?);
begin
 00422534    push        ebp
 00422535    mov         ebp,esp
 00422537    add         esp,0FFFFFFF0
 0042253A    push        ebx
 0042253B    xor         ecx,ecx
 0042253D    mov         dword ptr [ebp-10],ecx
 00422540    mov         dword ptr [ebp-8],edx
 00422543    mov         dword ptr [ebp-4],eax
 00422546    xor         eax,eax
 00422548    push        ebp
 00422549    push        4225D9
 0042254E    push        dword ptr fs:[eax]
 00422551    mov         dword ptr fs:[eax],esp
 00422554    mov         eax,dword ptr [ebp-4]
 00422557    call        TStrings.BeginUpdate
 0042255C    xor         eax,eax
 0042255E    push        ebp
 0042255F    push        4225BC
 00422564    push        dword ptr fs:[eax]
 00422567    mov         dword ptr fs:[eax],esp
 0042256A    mov         eax,dword ptr [ebp-8]
 0042256D    mov         edx,dword ptr [eax]
 0042256F    call        dword ptr [edx]
 00422571    mov         ebx,eax
 00422573    mov         eax,dword ptr [ebp-8]
 00422576    call        TStream.GetPosition
 0042257B    sub         ebx,eax
 0042257D    mov         dword ptr [ebp-0C],ebx
 00422580    lea         eax,[ebp-10]
 00422583    mov         ecx,dword ptr [ebp-0C]
 00422586    xor         edx,edx
 00422588    call        @LStrFromPCharLen
 0042258D    mov         edx,dword ptr [ebp-10]
 00422590    mov         ecx,dword ptr [ebp-0C]
 00422593    mov         eax,dword ptr [ebp-8]
 00422596    mov         ebx,dword ptr [eax]
 00422598    call        dword ptr [ebx+0C]
 0042259B    mov         edx,dword ptr [ebp-10]
 0042259E    mov         eax,dword ptr [ebp-4]
 004225A1    mov         ecx,dword ptr [eax]
 004225A3    call        dword ptr [ecx+2C];TStrings.sub_0042291C
 004225A6    xor         eax,eax
 004225A8    pop         edx
 004225A9    pop         ecx
 004225AA    pop         ecx
 004225AB    mov         dword ptr fs:[eax],edx
 004225AE    push        4225C3
 004225B3    mov         eax,dword ptr [ebp-4]
 004225B6    call        TStrings.EndUpdate
 004225BB    ret
>004225BC    jmp         @HandleFinally
>004225C1    jmp         004225B3
 004225C3    xor         eax,eax
 004225C5    pop         edx
 004225C6    pop         ecx
 004225C7    pop         ecx
 004225C8    mov         dword ptr fs:[eax],edx
 004225CB    push        4225E0
 004225D0    lea         eax,[ebp-10]
 004225D3    call        @LStrClr
 004225D8    ret
>004225D9    jmp         @HandleFinally
>004225DE    jmp         004225D0
 004225E0    pop         ebx
 004225E1    mov         esp,ebp
 004225E3    pop         ebp
 004225E4    ret
end;*}

//004225E8
{*procedure sub_004225E8(?:?; ?:?);
begin
 004225E8    push        ebp
 004225E9    mov         ebp,esp
 004225EB    add         esp,0FFFFFFEC
 004225EE    push        ebx
 004225EF    xor         ebx,ebx
 004225F1    mov         dword ptr [ebp-14],ebx
 004225F4    mov         dword ptr [ebp-0C],ecx
 004225F7    mov         dword ptr [ebp-8],edx
 004225FA    mov         dword ptr [ebp-4],eax
 004225FD    xor         eax,eax
 004225FF    push        ebp
 00422600    push        422695
 00422605    push        dword ptr fs:[eax]
 00422608    mov         dword ptr fs:[eax],esp
 0042260B    mov         eax,dword ptr [ebp-8]
 0042260E    cmp         eax,dword ptr [ebp-0C]
>00422611    je          0042267F
 00422613    mov         eax,dword ptr [ebp-4]
 00422616    call        TStrings.BeginUpdate
 0042261B    xor         eax,eax
 0042261D    push        ebp
 0042261E    push        422678
 00422623    push        dword ptr fs:[eax]
 00422626    mov         dword ptr fs:[eax],esp
 00422629    lea         ecx,[ebp-14]
 0042262C    mov         edx,dword ptr [ebp-8]
 0042262F    mov         eax,dword ptr [ebp-4]
 00422632    mov         ebx,dword ptr [eax]
 00422634    call        dword ptr [ebx+0C];@AbstractError
 00422637    mov         edx,dword ptr [ebp-8]
 0042263A    mov         eax,dword ptr [ebp-4]
 0042263D    mov         ecx,dword ptr [eax]
 0042263F    call        dword ptr [ecx+18];TStrings.sub_004220A0
 00422642    mov         dword ptr [ebp-10],eax
 00422645    mov         edx,dword ptr [ebp-8]
 00422648    mov         eax,dword ptr [ebp-4]
 0042264B    mov         ecx,dword ptr [eax]
 0042264D    call        dword ptr [ecx+48];@AbstractError
 00422650    mov         eax,dword ptr [ebp-10]
 00422653    push        eax
 00422654    mov         ecx,dword ptr [ebp-14]
 00422657    mov         edx,dword ptr [ebp-0C]
 0042265A    mov         eax,dword ptr [ebp-4]
 0042265D    mov         ebx,dword ptr [eax]
 0042265F    call        dword ptr [ebx+64];TStrings.sub_004224A4
 00422662    xor         eax,eax
 00422664    pop         edx
 00422665    pop         ecx
 00422666    pop         ecx
 00422667    mov         dword ptr fs:[eax],edx
 0042266A    push        42267F
 0042266F    mov         eax,dword ptr [ebp-4]
 00422672    call        TStrings.EndUpdate
 00422677    ret
>00422678    jmp         @HandleFinally
>0042267D    jmp         0042266F
 0042267F    xor         eax,eax
 00422681    pop         edx
 00422682    pop         ecx
 00422683    pop         ecx
 00422684    mov         dword ptr fs:[eax],edx
 00422687    push        42269C
 0042268C    lea         eax,[ebp-14]
 0042268F    call        @LStrClr
 00422694    ret
>00422695    jmp         @HandleFinally
>0042269A    jmp         0042268C
 0042269C    pop         ebx
 0042269D    mov         esp,ebp
 0042269F    pop         ebp
 004226A0    ret
end;*}

//004226A4
{*procedure sub_004226A4(?:?; ?:?);
begin
 004226A4    push        ebp
 004226A5    mov         ebp,esp
 004226A7    add         esp,0FFFFFFF0
 004226AA    push        ebx
 004226AB    mov         dword ptr [ebp-0C],ecx
 004226AE    mov         dword ptr [ebp-8],edx
 004226B1    mov         dword ptr [ebp-4],eax
 004226B4    mov         edx,dword ptr [ebp-8]
 004226B7    mov         eax,dword ptr [ebp-4]
 004226BA    mov         ecx,dword ptr [eax]
 004226BC    call        dword ptr [ecx+18];TStrings.sub_004220A0
 004226BF    mov         dword ptr [ebp-10],eax
 004226C2    mov         edx,dword ptr [ebp-8]
 004226C5    mov         eax,dword ptr [ebp-4]
 004226C8    mov         ecx,dword ptr [eax]
 004226CA    call        dword ptr [ecx+48];@AbstractError
 004226CD    mov         eax,dword ptr [ebp-10]
 004226D0    push        eax
 004226D1    mov         ecx,dword ptr [ebp-0C]
 004226D4    mov         edx,dword ptr [ebp-8]
 004226D7    mov         eax,dword ptr [ebp-4]
 004226DA    mov         ebx,dword ptr [eax]
 004226DC    call        dword ptr [ebx+64];TStrings.sub_004224A4
 004226DF    pop         ebx
 004226E0    mov         esp,ebp
 004226E2    pop         ebp
 004226E3    ret
end;*}

//004226E4
{*procedure sub_004226E4(?:?; ?:?);
begin
 004226E4    push        ebp
 004226E5    mov         ebp,esp
 004226E7    add         esp,0FFFFFFF4
 004226EA    mov         dword ptr [ebp-0C],ecx
 004226ED    mov         dword ptr [ebp-8],edx
 004226F0    mov         dword ptr [ebp-4],eax
 004226F3    mov         esp,ebp
 004226F5    pop         ebp
 004226F6    ret
end;*}

//004226F8
procedure TStrings.ReadData(Reader:TReader);
begin
{*
 004226F8    push        ebp
 004226F9    mov         ebp,esp
 004226FB    add         esp,0FFFFFFF4
 004226FE    xor         ecx,ecx
 00422700    mov         dword ptr [ebp-0C],ecx
 00422703    mov         dword ptr [ebp-8],edx
 00422706    mov         dword ptr [ebp-4],eax
 00422709    xor         eax,eax
 0042270B    push        ebp
 0042270C    push        42279C
 00422711    push        dword ptr fs:[eax]
 00422714    mov         dword ptr fs:[eax],esp
 00422717    mov         eax,dword ptr [ebp-8]
 0042271A    call        TReader.ReadListBegin
 0042271F    mov         eax,dword ptr [ebp-4]
 00422722    call        TStrings.BeginUpdate
 00422727    xor         eax,eax
 00422729    push        ebp
 0042272A    push        422777
 0042272F    push        dword ptr fs:[eax]
 00422732    mov         dword ptr fs:[eax],esp
 00422735    mov         eax,dword ptr [ebp-4]
 00422738    mov         edx,dword ptr [eax]
 0042273A    call        dword ptr [edx+44]
>0042273D    jmp         00422755
 0042273F    lea         edx,[ebp-0C]
 00422742    mov         eax,dword ptr [ebp-8]
 00422745    call        TReader.ReadString
 0042274A    mov         edx,dword ptr [ebp-0C]
 0042274D    mov         eax,dword ptr [ebp-4]
 00422750    mov         ecx,dword ptr [eax]
 00422752    call        dword ptr [ecx+38]
 00422755    mov         eax,dword ptr [ebp-8]
 00422758    call        TReader.EndOfList
 0042275D    test        al,al
>0042275F    je          0042273F
 00422761    xor         eax,eax
 00422763    pop         edx
 00422764    pop         ecx
 00422765    pop         ecx
 00422766    mov         dword ptr fs:[eax],edx
 00422769    push        42277E
 0042276E    mov         eax,dword ptr [ebp-4]
 00422771    call        TStrings.EndUpdate
 00422776    ret
>00422777    jmp         @HandleFinally
>0042277C    jmp         0042276E
 0042277E    mov         eax,dword ptr [ebp-8]
 00422781    call        TReader.ReadListEnd
 00422786    xor         eax,eax
 00422788    pop         edx
 00422789    pop         ecx
 0042278A    pop         ecx
 0042278B    mov         dword ptr fs:[eax],edx
 0042278E    push        4227A3
 00422793    lea         eax,[ebp-0C]
 00422796    call        @LStrClr
 0042279B    ret
>0042279C    jmp         @HandleFinally
>004227A1    jmp         00422793
 004227A3    mov         esp,ebp
 004227A5    pop         ebp
 004227A6    ret
*}
end;

//004227A8
{*procedure sub_004227A8(?:?);
begin
 004227A8    push        ebp
 004227A9    mov         ebp,esp
 004227AB    add         esp,0FFFFFFF4
 004227AE    mov         dword ptr [ebp-8],edx
 004227B1    mov         dword ptr [ebp-4],eax
 004227B4    push        0FFFF
 004227B9    mov         ecx,dword ptr [ebp-8]
 004227BC    mov         dl,1
 004227BE    mov         eax,[0041DD24];TFileStream
 004227C3    call        TFileStream.Create;TFileStream.Create
 004227C8    mov         dword ptr [ebp-0C],eax
 004227CB    xor         eax,eax
 004227CD    push        ebp
 004227CE    push        4227FA
 004227D3    push        dword ptr fs:[eax]
 004227D6    mov         dword ptr fs:[eax],esp
 004227D9    mov         edx,dword ptr [ebp-0C]
 004227DC    mov         eax,dword ptr [ebp-4]
 004227DF    mov         ecx,dword ptr [eax]
 004227E1    call        dword ptr [ecx+78];TStrings.sub_00422808
 004227E4    xor         eax,eax
 004227E6    pop         edx
 004227E7    pop         ecx
 004227E8    pop         ecx
 004227E9    mov         dword ptr fs:[eax],edx
 004227EC    push        422801
 004227F1    mov         eax,dword ptr [ebp-0C]
 004227F4    call        TObject.Free
 004227F9    ret
>004227FA    jmp         @HandleFinally
>004227FF    jmp         004227F1
 00422801    mov         esp,ebp
 00422803    pop         ebp
 00422804    ret
end;*}

//00422808
{*procedure sub_00422808(?:?);
begin
 00422808    push        ebp
 00422809    mov         ebp,esp
 0042280B    add         esp,0FFFFFFF4
 0042280E    xor         ecx,ecx
 00422810    mov         dword ptr [ebp-0C],ecx
 00422813    mov         dword ptr [ebp-8],edx
 00422816    mov         dword ptr [ebp-4],eax
 00422819    xor         eax,eax
 0042281B    push        ebp
 0042281C    push        42285D
 00422821    push        dword ptr fs:[eax]
 00422824    mov         dword ptr fs:[eax],esp
 00422827    lea         edx,[ebp-0C]
 0042282A    mov         eax,dword ptr [ebp-4]
 0042282D    mov         ecx,dword ptr [eax]
 0042282F    call        dword ptr [ecx+1C];TStrings.sub_00422114
 00422832    mov         eax,dword ptr [ebp-0C]
 00422835    call        @LStrLen
 0042283A    mov         ecx,eax
 0042283C    mov         edx,dword ptr [ebp-0C]
 0042283F    mov         eax,dword ptr [ebp-8]
 00422842    call        TStream.WriteBuffer
 00422847    xor         eax,eax
 00422849    pop         edx
 0042284A    pop         ecx
 0042284B    pop         ecx
 0042284C    mov         dword ptr fs:[eax],edx
 0042284F    push        422864
 00422854    lea         eax,[ebp-0C]
 00422857    call        @LStrClr
 0042285C    ret
>0042285D    jmp         @HandleFinally
>00422862    jmp         00422854
 00422864    mov         esp,ebp
 00422866    pop         ebp
 00422867    ret
end;*}

//00422868
{*procedure sub_00422868(?:?);
begin
 00422868    push        ebp
 00422869    mov         ebp,esp
 0042286B    add         esp,0FFFFFFF8
 0042286E    mov         dword ptr [ebp-8],edx
 00422871    mov         dword ptr [ebp-4],eax
 00422874    pop         ecx
 00422875    pop         ecx
 00422876    pop         ebp
 00422877    ret
end;*}

//00422878
{*procedure sub_00422878(?:?; ?:?);
begin
 00422878    push        ebp
 00422879    mov         ebp,esp
 0042287B    add         esp,0FFFFFFF8
 0042287E    mov         dword ptr [ebp-8],edx
 00422881    mov         dword ptr [ebp-4],eax
 00422884    mov         eax,dword ptr [ebp-4]
 00422887    cmp         dword ptr [eax+0C],0
>0042288B    je          00422898
 0042288D    mov         eax,dword ptr [ebp-4]
 00422890    mov         eax,dword ptr [eax+0C]
 00422893    mov         edx,dword ptr [eax]
 00422895    call        dword ptr [edx+10]
 00422898    mov         eax,dword ptr [ebp-4]
 0042289B    add         eax,0C
 0042289E    mov         edx,dword ptr [ebp-8]
 004228A1    call        @IntfCopy
 004228A6    mov         eax,dword ptr [ebp-4]
 004228A9    cmp         dword ptr [eax+0C],0
>004228AD    je          004228BD
 004228AF    mov         edx,dword ptr [ebp-4]
 004228B2    mov         eax,dword ptr [ebp-4]
 004228B5    mov         eax,dword ptr [eax+0C]
 004228B8    mov         ecx,dword ptr [eax]
 004228BA    call        dword ptr [ecx+0C]
 004228BD    pop         ecx
 004228BE    pop         ecx
 004228BF    pop         ebp
 004228C0    ret
end;*}

//004228C4
{*procedure sub_004228C4(?:?);
begin
 004228C4    push        ebp
 004228C5    mov         ebp,esp
 004228C7    add         esp,0FFFFFFF4
 004228CA    xor         ecx,ecx
 004228CC    mov         dword ptr [ebp-0C],ecx
 004228CF    mov         dword ptr [ebp-8],edx
 004228D2    mov         dword ptr [ebp-4],eax
 004228D5    xor         eax,eax
 004228D7    push        ebp
 004228D8    push        42290F
 004228DD    push        dword ptr fs:[eax]
 004228E0    mov         dword ptr fs:[eax],esp
 004228E3    lea         eax,[ebp-0C]
 004228E6    mov         edx,dword ptr [ebp-8]
 004228E9    call        @LStrFromPChar
 004228EE    mov         edx,dword ptr [ebp-0C]
 004228F1    mov         eax,dword ptr [ebp-4]
 004228F4    mov         ecx,dword ptr [eax]
 004228F6    call        dword ptr [ecx+2C];TStrings.sub_0042291C
 004228F9    xor         eax,eax
 004228FB    pop         edx
 004228FC    pop         ecx
 004228FD    pop         ecx
 004228FE    mov         dword ptr fs:[eax],edx
 00422901    push        422916
 00422906    lea         eax,[ebp-0C]
 00422909    call        @LStrClr
 0042290E    ret
>0042290F    jmp         @HandleFinally
>00422914    jmp         00422906
 00422916    mov         esp,ebp
 00422918    pop         ebp
 00422919    ret
end;*}

//0042291C
{*procedure sub_0042291C(?:?);
begin
 0042291C    push        ebp
 0042291D    mov         ebp,esp
 0042291F    add         esp,0FFFFFFEC
 00422922    xor         ecx,ecx
 00422924    mov         dword ptr [ebp-14],ecx
 00422927    mov         dword ptr [ebp-8],edx
 0042292A    mov         dword ptr [ebp-4],eax
 0042292D    xor         eax,eax
 0042292F    push        ebp
 00422930    push        4229F0
 00422935    push        dword ptr fs:[eax]
 00422938    mov         dword ptr fs:[eax],esp
 0042293B    mov         eax,dword ptr [ebp-4]
 0042293E    call        TStrings.BeginUpdate
 00422943    xor         eax,eax
 00422945    push        ebp
 00422946    push        4229D3
 0042294B    push        dword ptr fs:[eax]
 0042294E    mov         dword ptr fs:[eax],esp
 00422951    mov         eax,dword ptr [ebp-4]
 00422954    mov         edx,dword ptr [eax]
 00422956    call        dword ptr [edx+44];TStrings.Clear
 00422959    mov         eax,dword ptr [ebp-8]
 0042295C    mov         dword ptr [ebp-0C],eax
 0042295F    cmp         dword ptr [ebp-0C],0
>00422963    je          004229BD
>00422965    jmp         004229B5
 00422967    mov         eax,dword ptr [ebp-0C]
 0042296A    mov         dword ptr [ebp-10],eax
>0042296D    jmp         00422972
 0042296F    inc         dword ptr [ebp-0C]
 00422972    mov         eax,dword ptr [ebp-0C]
 00422975    mov         al,byte ptr [eax]
 00422977    test        al,al
>00422979    je          00422983
 0042297B    sub         al,0A
>0042297D    je          00422983
 0042297F    sub         al,3
>00422981    jne         0042296F
 00422983    mov         ecx,dword ptr [ebp-0C]
 00422986    sub         ecx,dword ptr [ebp-10]
 00422989    lea         eax,[ebp-14]
 0042298C    mov         edx,dword ptr [ebp-10]
 0042298F    call        @LStrFromPCharLen
 00422994    mov         edx,dword ptr [ebp-14]
 00422997    mov         eax,dword ptr [ebp-4]
 0042299A    mov         ecx,dword ptr [eax]
 0042299C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0042299F    mov         eax,dword ptr [ebp-0C]
 004229A2    cmp         byte ptr [eax],0D
>004229A5    jne         004229AA
 004229A7    inc         dword ptr [ebp-0C]
 004229AA    mov         eax,dword ptr [ebp-0C]
 004229AD    cmp         byte ptr [eax],0A
>004229B0    jne         004229B5
 004229B2    inc         dword ptr [ebp-0C]
 004229B5    mov         eax,dword ptr [ebp-0C]
 004229B8    cmp         byte ptr [eax],0
>004229BB    jne         00422967
 004229BD    xor         eax,eax
 004229BF    pop         edx
 004229C0    pop         ecx
 004229C1    pop         ecx
 004229C2    mov         dword ptr fs:[eax],edx
 004229C5    push        4229DA
 004229CA    mov         eax,dword ptr [ebp-4]
 004229CD    call        TStrings.EndUpdate
 004229D2    ret
>004229D3    jmp         @HandleFinally
>004229D8    jmp         004229CA
 004229DA    xor         eax,eax
 004229DC    pop         edx
 004229DD    pop         ecx
 004229DE    pop         ecx
 004229DF    mov         dword ptr fs:[eax],edx
 004229E2    push        4229F7
 004229E7    lea         eax,[ebp-14]
 004229EA    call        @LStrClr
 004229EF    ret
>004229F0    jmp         @HandleFinally
>004229F5    jmp         004229E7
 004229F7    mov         esp,ebp
 004229F9    pop         ebp
 004229FA    ret
end;*}

//004229FC
{*procedure sub_004229FC(?:?);
begin
 004229FC    push        ebp
 004229FD    mov         ebp,esp
 004229FF    add         esp,0FFFFFFF8
 00422A02    mov         byte ptr [ebp-5],dl
 00422A05    mov         dword ptr [ebp-4],eax
 00422A08    pop         ecx
 00422A09    pop         ecx
 00422A0A    pop         ebp
 00422A0B    ret
end;*}

//00422A0C
procedure TStrings.WriteData(Writer:TWriter);
begin
{*
 00422A0C    push        ebp
 00422A0D    mov         ebp,esp
 00422A0F    add         esp,0FFFFFFEC
 00422A12    push        ebx
 00422A13    xor         ecx,ecx
 00422A15    mov         dword ptr [ebp-14],ecx
 00422A18    mov         dword ptr [ebp-8],edx
 00422A1B    mov         dword ptr [ebp-4],eax
 00422A1E    xor         eax,eax
 00422A20    push        ebp
 00422A21    push        422A8B
 00422A26    push        dword ptr fs:[eax]
 00422A29    mov         dword ptr fs:[eax],esp
 00422A2C    mov         eax,dword ptr [ebp-8]
 00422A2F    call        0042841C
 00422A34    mov         eax,dword ptr [ebp-4]
 00422A37    mov         edx,dword ptr [eax]
 00422A39    call        dword ptr [edx+14]
 00422A3C    dec         eax
 00422A3D    test        eax,eax
>00422A3F    jl          00422A6D
 00422A41    inc         eax
 00422A42    mov         dword ptr [ebp-10],eax
 00422A45    mov         dword ptr [ebp-0C],0
 00422A4C    lea         ecx,[ebp-14]
 00422A4F    mov         edx,dword ptr [ebp-0C]
 00422A52    mov         eax,dword ptr [ebp-4]
 00422A55    mov         ebx,dword ptr [eax]
 00422A57    call        dword ptr [ebx+0C]
 00422A5A    mov         edx,dword ptr [ebp-14]
 00422A5D    mov         eax,dword ptr [ebp-8]
 00422A60    call        00429D20
 00422A65    inc         dword ptr [ebp-0C]
 00422A68    dec         dword ptr [ebp-10]
>00422A6B    jne         00422A4C
 00422A6D    mov         eax,dword ptr [ebp-8]
 00422A70    call        00428430
 00422A75    xor         eax,eax
 00422A77    pop         edx
 00422A78    pop         ecx
 00422A79    pop         ecx
 00422A7A    mov         dword ptr fs:[eax],edx
 00422A7D    push        422A92
 00422A82    lea         eax,[ebp-14]
 00422A85    call        @LStrClr
 00422A8A    ret
>00422A8B    jmp         @HandleFinally
>00422A90    jmp         00422A82
 00422A92    pop         ebx
 00422A93    mov         esp,ebp
 00422A95    pop         ebp
 00422A96    ret
*}
end;

//00422A98
{*function sub_00422A98(?:?; ?:?):?;
begin
 00422A98    push        ebp
 00422A99    mov         ebp,esp
 00422A9B    add         esp,0FFFFFFF0
 00422A9E    mov         dword ptr [ebp-0C],ecx
 00422AA1    mov         dword ptr [ebp-8],edx
 00422AA4    mov         dword ptr [ebp-4],eax
 00422AA7    mov         edx,dword ptr [ebp-0C]
 00422AAA    mov         eax,dword ptr [ebp-8]
 00422AAD    call        0040BF44
 00422AB2    mov         dword ptr [ebp-10],eax
 00422AB5    mov         eax,dword ptr [ebp-10]
 00422AB8    mov         esp,ebp
 00422ABA    pop         ebp
 00422ABB    ret
end;*}

//00422ABC
{*function sub_00422ABC(?:TStrings):?;
begin
 00422ABC    push        ebp
 00422ABD    mov         ebp,esp
 00422ABF    add         esp,0FFFFFFF8
 00422AC2    mov         dword ptr [ebp-4],eax
 00422AC5    mov         eax,dword ptr [ebp-4]
 00422AC8    test        byte ptr [eax+4],4;TStrings.FDefined:TStringsDefined
>00422ACC    jne         00422AD8
 00422ACE    mov         dl,3D
 00422AD0    mov         eax,dword ptr [ebp-4]
 00422AD3    call        00422AE8
 00422AD8    mov         eax,dword ptr [ebp-4]
 00422ADB    mov         al,byte ptr [eax+7];TStrings.FNameValueSeparator:Char
 00422ADE    mov         byte ptr [ebp-5],al
 00422AE1    mov         al,byte ptr [ebp-5]
 00422AE4    pop         ecx
 00422AE5    pop         ecx
 00422AE6    pop         ebp
 00422AE7    ret
end;*}

//00422AE8
{*procedure sub_00422AE8(?:TStrings; ?:?);
begin
 00422AE8    push        ebp
 00422AE9    mov         ebp,esp
 00422AEB    add         esp,0FFFFFFF8
 00422AEE    mov         byte ptr [ebp-5],dl
 00422AF1    mov         dword ptr [ebp-4],eax
 00422AF4    mov         eax,dword ptr [ebp-4]
 00422AF7    mov         al,byte ptr [eax+7];TStrings.FNameValueSeparator:Char
 00422AFA    cmp         al,byte ptr [ebp-5]
>00422AFD    jne         00422B08
 00422AFF    mov         eax,dword ptr [ebp-4]
 00422B02    test        byte ptr [eax+4],4;TStrings.FDefined:TStringsDefined
>00422B06    jne         00422B18
 00422B08    mov         eax,dword ptr [ebp-4]
 00422B0B    or          byte ptr [eax+4],4;TStrings.FDefined:TStringsDefined
 00422B0F    mov         al,byte ptr [ebp-5]
 00422B12    mov         edx,dword ptr [ebp-4]
 00422B15    mov         byte ptr [edx+7],al;TStrings.FNameValueSeparator:Char
 00422B18    pop         ecx
 00422B19    pop         ecx
 00422B1A    pop         ebp
 00422B1B    ret
end;*}

//00422B1C
{*procedure sub_00422B1C(?:TStringList; ?:?; ?:?);
begin
 00422B1C    push        ebp
 00422B1D    mov         ebp,esp
 00422B1F    add         esp,0FFFFFFEC
 00422B22    push        ebx
 00422B23    xor         ebx,ebx
 00422B25    mov         dword ptr [ebp-10],ebx
 00422B28    mov         dword ptr [ebp-14],ebx
 00422B2B    mov         dword ptr [ebp-0C],ecx
 00422B2E    mov         dword ptr [ebp-8],edx
 00422B31    mov         dword ptr [ebp-4],eax
 00422B34    xor         eax,eax
 00422B36    push        ebp
 00422B37    push        422BA9
 00422B3C    push        dword ptr fs:[eax]
 00422B3F    mov         dword ptr fs:[eax],esp
 00422B42    cmp         dword ptr [ebp-8],0
>00422B46    jl          00422B86
 00422B48    mov         eax,dword ptr [ebp-0C]
 00422B4B    push        eax
 00422B4C    lea         ecx,[ebp-10]
 00422B4F    mov         edx,dword ptr [ebp-8]
 00422B52    mov         eax,dword ptr [ebp-4]
 00422B55    mov         ebx,dword ptr [eax]
 00422B57    call        dword ptr [ebx+0C]
 00422B5A    mov         eax,dword ptr [ebp-10]
 00422B5D    push        eax
 00422B5E    lea         ecx,[ebp-14]
 00422B61    mov         edx,dword ptr [ebp-8]
 00422B64    mov         eax,dword ptr [ebp-4]
 00422B67    call        0042203C
 00422B6C    mov         eax,dword ptr [ebp-14]
 00422B6F    call        @LStrLen
 00422B74    mov         edx,eax
 00422B76    add         edx,2
 00422B79    mov         ecx,7FFFFFFF
 00422B7E    pop         eax
 00422B7F    call        @LStrCopy
>00422B84    jmp         00422B8E
 00422B86    mov         eax,dword ptr [ebp-0C]
 00422B89    call        @LStrClr
 00422B8E    xor         eax,eax
 00422B90    pop         edx
 00422B91    pop         ecx
 00422B92    pop         ecx
 00422B93    mov         dword ptr fs:[eax],edx
 00422B96    push        422BB0
 00422B9B    lea         eax,[ebp-14]
 00422B9E    mov         edx,2
 00422BA3    call        @LStrArrayClr
 00422BA8    ret
>00422BA9    jmp         @HandleFinally
>00422BAE    jmp         00422B9B
 00422BB0    pop         ebx
 00422BB1    mov         esp,ebp
 00422BB3    pop         ebp
 00422BB4    ret
end;*}

//00422BB8
destructor TStringList.Destroy;
begin
{*
 00422BB8    push        ebp
 00422BB9    mov         ebp,esp
 00422BBB    add         esp,0FFFFFFF8
 00422BBE    call        @BeforeDestruction
 00422BC3    mov         byte ptr [ebp-5],dl
 00422BC6    mov         dword ptr [ebp-4],eax
 00422BC9    mov         eax,dword ptr [ebp-4]
 00422BCC    xor         edx,edx
 00422BCE    mov         dword ptr [eax+20],edx
 00422BD1    mov         dword ptr [eax+24],edx
 00422BD4    mov         eax,dword ptr [ebp-4]
 00422BD7    xor         edx,edx
 00422BD9    mov         dword ptr [eax+28],edx
 00422BDC    mov         dword ptr [eax+2C],edx
 00422BDF    mov         dl,byte ptr [ebp-5]
 00422BE2    and         dl,0FC
 00422BE5    mov         eax,dword ptr [ebp-4]
 00422BE8    call        TStrings.Destroy
 00422BED    mov         eax,dword ptr [ebp-4]
 00422BF0    cmp         dword ptr [eax+14],0
>00422BF4    je          00422C0D
 00422BF6    mov         eax,dword ptr [ebp-4]
 00422BF9    mov         ecx,dword ptr [eax+14]
 00422BFC    mov         eax,dword ptr [ebp-4]
 00422BFF    mov         eax,dword ptr [eax+10]
 00422C02    mov         edx,dword ptr ds:[41DB00];TStringItem
 00422C08    call        @FinalizeArray
 00422C0D    mov         eax,dword ptr [ebp-4]
 00422C10    xor         edx,edx
 00422C12    mov         dword ptr [eax+14],edx
 00422C15    xor         edx,edx
 00422C17    mov         eax,dword ptr [ebp-4]
 00422C1A    mov         ecx,dword ptr [eax]
 00422C1C    call        dword ptr [ecx+28]
 00422C1F    cmp         byte ptr [ebp-5],0
>00422C23    jle         00422C2D
 00422C25    mov         eax,dword ptr [ebp-4]
 00422C28    call        @ClassDestroy
 00422C2D    pop         ecx
 00422C2E    pop         ecx
 00422C2F    pop         ebp
 00422C30    ret
*}
end;

//00422C34
{*function sub_00422C34(?:?):?;
begin
 00422C34    push        ebp
 00422C35    mov         ebp,esp
 00422C37    add         esp,0FFFFFFF4
 00422C3A    push        ebx
 00422C3B    mov         dword ptr [ebp-8],edx
 00422C3E    mov         dword ptr [ebp-4],eax
 00422C41    xor         ecx,ecx
 00422C43    mov         edx,dword ptr [ebp-8]
 00422C46    mov         eax,dword ptr [ebp-4]
 00422C49    mov         ebx,dword ptr [eax]
 00422C4B    call        dword ptr [ebx+3C];TStringList.sub_00422C5C
 00422C4E    mov         dword ptr [ebp-0C],eax
 00422C51    mov         eax,dword ptr [ebp-0C]
 00422C54    pop         ebx
 00422C55    mov         esp,ebp
 00422C57    pop         ebp
 00422C58    ret
end;*}

//00422C5C
{*function sub_00422C5C(?:?; ?:?):?;
begin
 00422C5C    push        ebp
 00422C5D    mov         ebp,esp
 00422C5F    add         esp,0FFFFFFF0
 00422C62    push        ebx
 00422C63    mov         dword ptr [ebp-0C],ecx
 00422C66    mov         dword ptr [ebp-8],edx
 00422C69    mov         dword ptr [ebp-4],eax
 00422C6C    mov         eax,dword ptr [ebp-4]
 00422C6F    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>00422C73    jne         00422C80
 00422C75    mov         eax,dword ptr [ebp-4]
 00422C78    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 00422C7B    mov         dword ptr [ebp-10],eax
>00422C7E    jmp         00422CB5
 00422C80    lea         ecx,[ebp-10]
 00422C83    mov         edx,dword ptr [ebp-8]
 00422C86    mov         eax,dword ptr [ebp-4]
 00422C89    mov         ebx,dword ptr [eax]
 00422C8B    call        dword ptr [ebx+8C];TStringList.sub_00422F08
 00422C91    test        al,al
>00422C93    je          00422CB5
 00422C95    mov         eax,dword ptr [ebp-4]
 00422C98    mov         al,byte ptr [eax+1D];TStringList.FDuplicates:TDuplicates
 00422C9B    sub         al,1
>00422C9D    jb          00422CCA
 00422C9F    dec         al
>00422CA1    je          00422CA5
>00422CA3    jmp         00422CB5
 00422CA5    mov         edx,dword ptr ds:[56E13C];^SDuplicateString:TResStringRec
 00422CAB    xor         ecx,ecx
 00422CAD    mov         eax,dword ptr [ebp-4]
 00422CB0    call        00421E44
 00422CB5    mov         eax,dword ptr [ebp-0C]
 00422CB8    push        eax
 00422CB9    mov         ecx,dword ptr [ebp-8]
 00422CBC    mov         edx,dword ptr [ebp-10]
 00422CBF    mov         eax,dword ptr [ebp-4]
 00422CC2    mov         ebx,dword ptr [eax]
 00422CC4    call        dword ptr [ebx+88];TStringList.sub_004231A0
 00422CCA    mov         eax,dword ptr [ebp-10]
 00422CCD    pop         ebx
 00422CCE    mov         esp,ebp
 00422CD0    pop         ebp
 00422CD1    ret
end;*}

//00422CD4
procedure sub_00422CD4;
begin
{*
 00422CD4    push        ebp
 00422CD5    mov         ebp,esp
 00422CD7    push        ecx
 00422CD8    push        ebx
 00422CD9    mov         dword ptr [ebp-4],eax
 00422CDC    mov         eax,dword ptr [ebp-4]
 00422CDF    cmp         dword ptr [eax+8],0;TStringList.FUpdateCount:Integer
>00422CE3    jne         00422CFB
 00422CE5    mov         eax,dword ptr [ebp-4]
 00422CE8    cmp         word ptr [eax+22],0;TStringList.?f22:word
>00422CED    je          00422CFB
 00422CEF    mov         ebx,dword ptr [ebp-4]
 00422CF2    mov         edx,dword ptr [ebp-4]
 00422CF5    mov         eax,dword ptr [ebx+24];TStringList.?f24:dword
 00422CF8    call        dword ptr [ebx+20];TStringList.FOnChange
 00422CFB    pop         ebx
 00422CFC    pop         ecx
 00422CFD    pop         ebp
 00422CFE    ret
*}
end;

//00422D00
procedure sub_00422D00;
begin
{*
 00422D00    push        ebp
 00422D01    mov         ebp,esp
 00422D03    push        ecx
 00422D04    push        ebx
 00422D05    mov         dword ptr [ebp-4],eax
 00422D08    mov         eax,dword ptr [ebp-4]
 00422D0B    cmp         dword ptr [eax+8],0;TStringList.FUpdateCount:Integer
>00422D0F    jne         00422D27
 00422D11    mov         eax,dword ptr [ebp-4]
 00422D14    cmp         word ptr [eax+2A],0;TStringList.?f2A:word
>00422D19    je          00422D27
 00422D1B    mov         ebx,dword ptr [ebp-4]
 00422D1E    mov         edx,dword ptr [ebp-4]
 00422D21    mov         eax,dword ptr [ebx+2C];TStringList.?f2C:dword
 00422D24    call        dword ptr [ebx+28];TStringList.FOnChanging
 00422D27    pop         ebx
 00422D28    pop         ecx
 00422D29    pop         ebp
 00422D2A    ret
*}
end;

//00422D2C
procedure TStringList.Clear;
begin
{*
 00422D2C    push        ebp
 00422D2D    mov         ebp,esp
 00422D2F    push        ecx
 00422D30    mov         dword ptr [ebp-4],eax
 00422D33    mov         eax,dword ptr [ebp-4]
 00422D36    cmp         dword ptr [eax+14],0;TStringList.FCount:Integer
>00422D3A    je          00422D7B
 00422D3C    mov         eax,dword ptr [ebp-4]
 00422D3F    mov         edx,dword ptr [eax]
 00422D41    call        dword ptr [edx+84];TStringList.sub_00422D00
 00422D47    mov         eax,dword ptr [ebp-4]
 00422D4A    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00422D4D    mov         edx,dword ptr [ebp-4]
 00422D50    mov         ecx,dword ptr [edx+14];TStringList.FCount:Integer
 00422D53    mov         edx,dword ptr ds:[41DB00];TStringItem
 00422D59    call        @FinalizeArray
 00422D5E    mov         eax,dword ptr [ebp-4]
 00422D61    xor         edx,edx
 00422D63    mov         dword ptr [eax+14],edx;TStringList.FCount:Integer
 00422D66    xor         edx,edx
 00422D68    mov         eax,dword ptr [ebp-4]
 00422D6B    mov         ecx,dword ptr [eax]
 00422D6D    call        dword ptr [ecx+28];TStringList.sub_004233E0
 00422D70    mov         eax,dword ptr [ebp-4]
 00422D73    mov         edx,dword ptr [eax]
 00422D75    call        dword ptr [edx+80];TStringList.sub_00422CD4
 00422D7B    pop         ecx
 00422D7C    pop         ebp
 00422D7D    ret
*}
end;

//00422D80
{*procedure sub_00422D80(?:?);
begin
 00422D80    push        ebp
 00422D81    mov         ebp,esp
 00422D83    add         esp,0FFFFFFF8
 00422D86    push        ebx
 00422D87    mov         dword ptr [ebp-8],edx
 00422D8A    mov         dword ptr [ebp-4],eax
 00422D8D    cmp         dword ptr [ebp-8],0
>00422D91    jl          00422D9E
 00422D93    mov         eax,dword ptr [ebp-8]
 00422D96    mov         edx,dword ptr [ebp-4]
 00422D99    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00422D9C    jl          00422DAF
 00422D9E    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00422DA4    mov         ecx,dword ptr [ebp-8]
 00422DA7    mov         eax,dword ptr [ebp-4]
 00422DAA    call        00421E44
 00422DAF    mov         eax,dword ptr [ebp-4]
 00422DB2    mov         edx,dword ptr [eax]
 00422DB4    call        dword ptr [edx+84];TStringList.sub_00422D00
 00422DBA    mov         eax,dword ptr [ebp-4]
 00422DBD    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00422DC0    mov         edx,dword ptr [ebp-8]
 00422DC3    lea         eax,[eax+edx*8]
 00422DC6    mov         edx,dword ptr ds:[41DB00];TStringItem
 00422DCC    call        @Finalize
 00422DD1    mov         eax,dword ptr [ebp-4]
 00422DD4    dec         dword ptr [eax+14];TStringList.FCount:Integer
 00422DD7    mov         eax,dword ptr [ebp-8]
 00422DDA    mov         edx,dword ptr [ebp-4]
 00422DDD    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00422DE0    jge         00422E0E
 00422DE2    mov         eax,dword ptr [ebp-4]
 00422DE5    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 00422DE8    sub         eax,dword ptr [ebp-8]
 00422DEB    mov         ecx,eax
 00422DED    shl         ecx,3
 00422DF0    mov         eax,dword ptr [ebp-4]
 00422DF3    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00422DF6    mov         edx,dword ptr [ebp-8]
 00422DF9    lea         edx,[eax+edx*8]
 00422DFC    mov         eax,dword ptr [ebp-4]
 00422DFF    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00422E02    mov         ebx,dword ptr [ebp-8]
 00422E05    lea         eax,[eax+ebx*8+8]
 00422E09    call        Move
 00422E0E    mov         eax,dword ptr [ebp-4]
 00422E11    mov         edx,dword ptr [eax]
 00422E13    call        dword ptr [edx+80];TStringList.sub_00422CD4
 00422E19    pop         ebx
 00422E1A    pop         ecx
 00422E1B    pop         ecx
 00422E1C    pop         ebp
 00422E1D    ret
end;*}

//00422E20
{*procedure sub_00422E20(?:?; ?:?);
begin
 00422E20    push        ebp
 00422E21    mov         ebp,esp
 00422E23    add         esp,0FFFFFFF4
 00422E26    mov         dword ptr [ebp-0C],ecx
 00422E29    mov         dword ptr [ebp-8],edx
 00422E2C    mov         dword ptr [ebp-4],eax
 00422E2F    cmp         dword ptr [ebp-8],0
>00422E33    jl          00422E40
 00422E35    mov         eax,dword ptr [ebp-8]
 00422E38    mov         edx,dword ptr [ebp-4]
 00422E3B    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00422E3E    jl          00422E51
 00422E40    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00422E46    mov         ecx,dword ptr [ebp-8]
 00422E49    mov         eax,dword ptr [ebp-4]
 00422E4C    call        00421E44
 00422E51    cmp         dword ptr [ebp-0C],0
>00422E55    jl          00422E62
 00422E57    mov         eax,dword ptr [ebp-0C]
 00422E5A    mov         edx,dword ptr [ebp-4]
 00422E5D    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00422E60    jl          00422E73
 00422E62    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00422E68    mov         ecx,dword ptr [ebp-0C]
 00422E6B    mov         eax,dword ptr [ebp-4]
 00422E6E    call        00421E44
 00422E73    mov         eax,dword ptr [ebp-4]
 00422E76    mov         edx,dword ptr [eax]
 00422E78    call        dword ptr [edx+84];TStringList.sub_00422D00
 00422E7E    mov         ecx,dword ptr [ebp-0C]
 00422E81    mov         edx,dword ptr [ebp-8]
 00422E84    mov         eax,dword ptr [ebp-4]
 00422E87    call        00422E9C
 00422E8C    mov         eax,dword ptr [ebp-4]
 00422E8F    mov         edx,dword ptr [eax]
 00422E91    call        dword ptr [edx+80];TStringList.sub_00422CD4
 00422E97    mov         esp,ebp
 00422E99    pop         ebp
 00422E9A    ret
end;*}

//00422E9C
{*procedure sub_00422E9C(?:TStringList; ?:?; ?:?);
begin
 00422E9C    push        ebp
 00422E9D    mov         ebp,esp
 00422E9F    add         esp,0FFFFFFE8
 00422EA2    mov         dword ptr [ebp-0C],ecx
 00422EA5    mov         dword ptr [ebp-8],edx
 00422EA8    mov         dword ptr [ebp-4],eax
 00422EAB    mov         eax,dword ptr [ebp-4]
 00422EAE    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00422EB1    mov         edx,dword ptr [ebp-8]
 00422EB4    lea         eax,[eax+edx*8]
 00422EB7    mov         dword ptr [ebp-14],eax
 00422EBA    mov         eax,dword ptr [ebp-4]
 00422EBD    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00422EC0    mov         edx,dword ptr [ebp-0C]
 00422EC3    lea         eax,[eax+edx*8]
 00422EC6    mov         dword ptr [ebp-18],eax
 00422EC9    mov         eax,dword ptr [ebp-14]
 00422ECC    mov         eax,dword ptr [eax]
 00422ECE    mov         dword ptr [ebp-10],eax
 00422ED1    mov         eax,dword ptr [ebp-18]
 00422ED4    mov         eax,dword ptr [eax]
 00422ED6    mov         edx,dword ptr [ebp-14]
 00422ED9    mov         dword ptr [edx],eax
 00422EDB    mov         eax,dword ptr [ebp-10]
 00422EDE    mov         edx,dword ptr [ebp-18]
 00422EE1    mov         dword ptr [edx],eax
 00422EE3    mov         eax,dword ptr [ebp-14]
 00422EE6    mov         eax,dword ptr [eax+4]
 00422EE9    mov         dword ptr [ebp-10],eax
 00422EEC    mov         eax,dword ptr [ebp-18]
 00422EEF    mov         eax,dword ptr [eax+4]
 00422EF2    mov         edx,dword ptr [ebp-14]
 00422EF5    mov         dword ptr [edx+4],eax
 00422EF8    mov         eax,dword ptr [ebp-10]
 00422EFB    mov         edx,dword ptr [ebp-18]
 00422EFE    mov         dword ptr [edx+4],eax
 00422F01    mov         esp,ebp
 00422F03    pop         ebp
 00422F04    ret
end;*}

//00422F08
{*function sub_00422F08(?:?; ?:?):?;
begin
 00422F08    push        ebp
 00422F09    mov         ebp,esp
 00422F0B    add         esp,0FFFFFFE0
 00422F0E    push        ebx
 00422F0F    mov         dword ptr [ebp-0C],ecx
 00422F12    mov         dword ptr [ebp-8],edx
 00422F15    mov         dword ptr [ebp-4],eax
 00422F18    mov         byte ptr [ebp-0D],0
 00422F1C    xor         eax,eax
 00422F1E    mov         dword ptr [ebp-14],eax
 00422F21    mov         eax,dword ptr [ebp-4]
 00422F24    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 00422F27    dec         eax
 00422F28    mov         dword ptr [ebp-18],eax
 00422F2B    mov         eax,dword ptr [ebp-14]
 00422F2E    cmp         eax,dword ptr [ebp-18]
>00422F31    jg          00422F8F
 00422F33    mov         eax,dword ptr [ebp-14]
 00422F36    add         eax,dword ptr [ebp-18]
 00422F39    shr         eax,1
 00422F3B    mov         dword ptr [ebp-1C],eax
 00422F3E    mov         eax,dword ptr [ebp-4]
 00422F41    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00422F44    mov         edx,dword ptr [ebp-1C]
 00422F47    mov         edx,dword ptr [eax+edx*8]
 00422F4A    mov         ecx,dword ptr [ebp-8]
 00422F4D    mov         eax,dword ptr [ebp-4]
 00422F50    mov         ebx,dword ptr [eax]
 00422F52    call        dword ptr [ebx+34];TStringList.sub_0042351C
 00422F55    mov         dword ptr [ebp-20],eax
 00422F58    cmp         dword ptr [ebp-20],0
>00422F5C    jge         00422F67
 00422F5E    mov         eax,dword ptr [ebp-1C]
 00422F61    inc         eax
 00422F62    mov         dword ptr [ebp-14],eax
>00422F65    jmp         00422F87
 00422F67    mov         eax,dword ptr [ebp-1C]
 00422F6A    dec         eax
 00422F6B    mov         dword ptr [ebp-18],eax
 00422F6E    cmp         dword ptr [ebp-20],0
>00422F72    jne         00422F87
 00422F74    mov         byte ptr [ebp-0D],1
 00422F78    mov         eax,dword ptr [ebp-4]
 00422F7B    cmp         byte ptr [eax+1D],1;TStringList.FDuplicates:TDuplicates
>00422F7F    je          00422F87
 00422F81    mov         eax,dword ptr [ebp-1C]
 00422F84    mov         dword ptr [ebp-14],eax
 00422F87    mov         eax,dword ptr [ebp-14]
 00422F8A    cmp         eax,dword ptr [ebp-18]
>00422F8D    jle         00422F33
 00422F8F    mov         eax,dword ptr [ebp-0C]
 00422F92    mov         edx,dword ptr [ebp-14]
 00422F95    mov         dword ptr [eax],edx
 00422F97    mov         al,byte ptr [ebp-0D]
 00422F9A    pop         ebx
 00422F9B    mov         esp,ebp
 00422F9D    pop         ebp
 00422F9E    ret
end;*}

//00422FA0
{*procedure sub_00422FA0(?:?; ?:?);
begin
 00422FA0    push        ebp
 00422FA1    mov         ebp,esp
 00422FA3    add         esp,0FFFFFFF4
 00422FA6    mov         dword ptr [ebp-0C],ecx
 00422FA9    mov         dword ptr [ebp-8],edx
 00422FAC    mov         dword ptr [ebp-4],eax
 00422FAF    cmp         dword ptr [ebp-8],0
>00422FB3    jl          00422FC0
 00422FB5    mov         eax,dword ptr [ebp-8]
 00422FB8    mov         edx,dword ptr [ebp-4]
 00422FBB    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00422FBE    jl          00422FD1
 00422FC0    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00422FC6    mov         ecx,dword ptr [ebp-8]
 00422FC9    mov         eax,dword ptr [ebp-4]
 00422FCC    call        00421E44
 00422FD1    mov         eax,dword ptr [ebp-0C]
 00422FD4    mov         edx,dword ptr [ebp-4]
 00422FD7    mov         edx,dword ptr [edx+10];TStringList.FList:PStringItemList
 00422FDA    mov         ecx,dword ptr [ebp-8]
 00422FDD    mov         edx,dword ptr [edx+ecx*8]
 00422FE0    call        @LStrAsg
 00422FE5    mov         esp,ebp
 00422FE7    pop         ebp
 00422FE8    ret
end;*}

//00422FEC
{*function sub_00422FEC:?;
begin
 00422FEC    push        ebp
 00422FED    mov         ebp,esp
 00422FEF    add         esp,0FFFFFFF8
 00422FF2    mov         dword ptr [ebp-4],eax
 00422FF5    mov         eax,dword ptr [ebp-4]
 00422FF8    mov         eax,dword ptr [eax+18];TStringList.FCapacity:Integer
 00422FFB    mov         dword ptr [ebp-8],eax
 00422FFE    mov         eax,dword ptr [ebp-8]
 00423001    pop         ecx
 00423002    pop         ecx
 00423003    pop         ebp
 00423004    ret
end;*}

//00423008
{*function sub_00423008:?;
begin
 00423008    push        ebp
 00423009    mov         ebp,esp
 0042300B    add         esp,0FFFFFFF8
 0042300E    mov         dword ptr [ebp-4],eax
 00423011    mov         eax,dword ptr [ebp-4]
 00423014    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 00423017    mov         dword ptr [ebp-8],eax
 0042301A    mov         eax,dword ptr [ebp-8]
 0042301D    pop         ecx
 0042301E    pop         ecx
 0042301F    pop         ebp
 00423020    ret
end;*}

//00423024
{*function sub_00423024(?:?):?;
begin
 00423024    push        ebp
 00423025    mov         ebp,esp
 00423027    add         esp,0FFFFFFF4
 0042302A    mov         dword ptr [ebp-8],edx
 0042302D    mov         dword ptr [ebp-4],eax
 00423030    cmp         dword ptr [ebp-8],0
>00423034    jl          00423041
 00423036    mov         eax,dword ptr [ebp-8]
 00423039    mov         edx,dword ptr [ebp-4]
 0042303C    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0042303F    jl          00423052
 00423041    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00423047    mov         ecx,dword ptr [ebp-8]
 0042304A    mov         eax,dword ptr [ebp-4]
 0042304D    call        00421E44
 00423052    mov         eax,dword ptr [ebp-4]
 00423055    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00423058    mov         edx,dword ptr [ebp-8]
 0042305B    mov         eax,dword ptr [eax+edx*8+4]
 0042305F    mov         dword ptr [ebp-0C],eax
 00423062    mov         eax,dword ptr [ebp-0C]
 00423065    mov         esp,ebp
 00423067    pop         ebp
 00423068    ret
end;*}

//0042306C
procedure sub_0042306C(?:TStringList);
begin
{*
 0042306C    push        ebp
 0042306D    mov         ebp,esp
 0042306F    add         esp,0FFFFFFF8
 00423072    mov         dword ptr [ebp-4],eax
 00423075    mov         eax,dword ptr [ebp-4]
 00423078    cmp         dword ptr [eax+18],40
>0042307C    jle         00423093
 0042307E    mov         eax,dword ptr [ebp-4]
 00423081    mov         eax,dword ptr [eax+18]
 00423084    test        eax,eax
>00423086    jns         0042308B
 00423088    add         eax,3
 0042308B    sar         eax,2
 0042308E    mov         dword ptr [ebp-8],eax
>00423091    jmp         004230AC
 00423093    mov         eax,dword ptr [ebp-4]
 00423096    cmp         dword ptr [eax+18],8
>0042309A    jle         004230A5
 0042309C    mov         dword ptr [ebp-8],10
>004230A3    jmp         004230AC
 004230A5    mov         dword ptr [ebp-8],4
 004230AC    mov         eax,dword ptr [ebp-4]
 004230AF    mov         edx,dword ptr [eax+18]
 004230B2    add         edx,dword ptr [ebp-8]
 004230B5    mov         eax,dword ptr [ebp-4]
 004230B8    mov         ecx,dword ptr [eax]
 004230BA    call        dword ptr [ecx+28]
 004230BD    pop         ecx
 004230BE    pop         ecx
 004230BF    pop         ebp
 004230C0    ret
*}
end;

//004230C4
{*function sub_004230C4(?:?):?;
begin
 004230C4    push        ebp
 004230C5    mov         ebp,esp
 004230C7    add         esp,0FFFFFFF4
 004230CA    push        ebx
 004230CB    mov         dword ptr [ebp-8],edx
 004230CE    mov         dword ptr [ebp-4],eax
 004230D1    mov         eax,dword ptr [ebp-4]
 004230D4    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>004230D8    jne         004230EA
 004230DA    mov         edx,dword ptr [ebp-8]
 004230DD    mov         eax,dword ptr [ebp-4]
 004230E0    call        004222F0
 004230E5    mov         dword ptr [ebp-0C],eax
>004230E8    jmp         00423106
 004230EA    lea         ecx,[ebp-0C]
 004230ED    mov         edx,dword ptr [ebp-8]
 004230F0    mov         eax,dword ptr [ebp-4]
 004230F3    mov         ebx,dword ptr [eax]
 004230F5    call        dword ptr [ebx+8C];TStringList.sub_00422F08
 004230FB    test        al,al
>004230FD    jne         00423106
 004230FF    mov         dword ptr [ebp-0C],0FFFFFFFF
 00423106    mov         eax,dword ptr [ebp-0C]
 00423109    pop         ebx
 0042310A    mov         esp,ebp
 0042310C    pop         ebp
 0042310D    ret
end;*}

//00423110
{*procedure sub_00423110(?:?; ?:?);
begin
 00423110    push        ebp
 00423111    mov         ebp,esp
 00423113    add         esp,0FFFFFFF4
 00423116    push        ebx
 00423117    mov         dword ptr [ebp-0C],ecx
 0042311A    mov         dword ptr [ebp-8],edx
 0042311D    mov         dword ptr [ebp-4],eax
 00423120    push        0
 00423122    mov         ecx,dword ptr [ebp-0C]
 00423125    mov         edx,dword ptr [ebp-8]
 00423128    mov         eax,dword ptr [ebp-4]
 0042312B    mov         ebx,dword ptr [eax]
 0042312D    call        dword ptr [ebx+64];TStringList.sub_00423138
 00423130    pop         ebx
 00423131    mov         esp,ebp
 00423133    pop         ebp
 00423134    ret
end;*}

//00423138
{*procedure sub_00423138(?:?; ?:?; ?:?);
begin
 00423138    push        ebp
 00423139    mov         ebp,esp
 0042313B    add         esp,0FFFFFFF4
 0042313E    push        ebx
 0042313F    mov         dword ptr [ebp-0C],ecx
 00423142    mov         dword ptr [ebp-8],edx
 00423145    mov         dword ptr [ebp-4],eax
 00423148    mov         eax,dword ptr [ebp-4]
 0042314B    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>0042314F    je          00423161
 00423151    mov         edx,dword ptr ds:[56E244];^SSortedListError:TResStringRec
 00423157    xor         ecx,ecx
 00423159    mov         eax,dword ptr [ebp-4]
 0042315C    call        00421E44
 00423161    cmp         dword ptr [ebp-8],0
>00423165    jl          00423172
 00423167    mov         eax,dword ptr [ebp-8]
 0042316A    mov         edx,dword ptr [ebp-4]
 0042316D    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00423170    jle         00423183
 00423172    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00423178    mov         ecx,dword ptr [ebp-8]
 0042317B    mov         eax,dword ptr [ebp-4]
 0042317E    call        00421E44
 00423183    mov         eax,dword ptr [ebp+8]
 00423186    push        eax
 00423187    mov         ecx,dword ptr [ebp-0C]
 0042318A    mov         edx,dword ptr [ebp-8]
 0042318D    mov         eax,dword ptr [ebp-4]
 00423190    mov         ebx,dword ptr [eax]
 00423192    call        dword ptr [ebx+88];TStringList.sub_004231A0
 00423198    pop         ebx
 00423199    mov         esp,ebp
 0042319B    pop         ebp
 0042319C    ret         4
end;*}

//004231A0
{*procedure sub_004231A0(?:?; ?:?; ?:?);
begin
 004231A0    push        ebp
 004231A1    mov         ebp,esp
 004231A3    add         esp,0FFFFFFF0
 004231A6    mov         dword ptr [ebp-0C],ecx
 004231A9    mov         dword ptr [ebp-8],edx
 004231AC    mov         dword ptr [ebp-4],eax
 004231AF    mov         eax,dword ptr [ebp-4]
 004231B2    mov         edx,dword ptr [eax]
 004231B4    call        dword ptr [edx+84];TStringList.sub_00422D00
 004231BA    mov         eax,dword ptr [ebp-4]
 004231BD    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 004231C0    mov         edx,dword ptr [ebp-4]
 004231C3    cmp         eax,dword ptr [edx+18];TStringList.FCapacity:Integer
>004231C6    jne         004231D0
 004231C8    mov         eax,dword ptr [ebp-4]
 004231CB    call        0042306C
 004231D0    mov         eax,dword ptr [ebp-8]
 004231D3    mov         edx,dword ptr [ebp-4]
 004231D6    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>004231D9    jge         00423205
 004231DB    mov         eax,dword ptr [ebp-4]
 004231DE    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 004231E1    mov         edx,dword ptr [ebp-8]
 004231E4    lea         edx,[eax+edx*8+8]
 004231E8    mov         eax,dword ptr [ebp-4]
 004231EB    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 004231EE    mov         ecx,dword ptr [ebp-8]
 004231F1    lea         eax,[eax+ecx*8]
 004231F4    mov         ecx,dword ptr [ebp-4]
 004231F7    mov         ecx,dword ptr [ecx+14]
 004231FA    sub         ecx,dword ptr [ebp-8]
 004231FD    shl         ecx,3
 00423200    call        Move
 00423205    mov         eax,dword ptr [ebp-4]
 00423208    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0042320B    mov         edx,dword ptr [ebp-8]
 0042320E    lea         eax,[eax+edx*8]
 00423211    mov         dword ptr [ebp-10],eax
 00423214    mov         eax,dword ptr [ebp-10]
 00423217    xor         edx,edx
 00423219    mov         dword ptr [eax],edx
 0042321B    mov         eax,dword ptr [ebp+8]
 0042321E    mov         edx,dword ptr [ebp-10]
 00423221    mov         dword ptr [edx+4],eax
 00423224    mov         eax,dword ptr [ebp-10]
 00423227    mov         edx,dword ptr [ebp-0C]
 0042322A    call        @LStrAsg
 0042322F    mov         eax,dword ptr [ebp-4]
 00423232    inc         dword ptr [eax+14];TStringList.FCount:Integer
 00423235    mov         eax,dword ptr [ebp-4]
 00423238    mov         edx,dword ptr [eax]
 0042323A    call        dword ptr [edx+80];TStringList.sub_00422CD4
 00423240    mov         esp,ebp
 00423242    pop         ebp
 00423243    ret         4
end;*}

//00423248
{*procedure sub_00423248(?:?; ?:?);
begin
 00423248    push        ebp
 00423249    mov         ebp,esp
 0042324B    add         esp,0FFFFFFF4
 0042324E    mov         dword ptr [ebp-0C],ecx
 00423251    mov         dword ptr [ebp-8],edx
 00423254    mov         dword ptr [ebp-4],eax
 00423257    mov         eax,dword ptr [ebp-4]
 0042325A    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>0042325E    je          00423270
 00423260    mov         edx,dword ptr ds:[56E244];^SSortedListError:TResStringRec
 00423266    xor         ecx,ecx
 00423268    mov         eax,dword ptr [ebp-4]
 0042326B    call        00421E44
 00423270    cmp         dword ptr [ebp-8],0
>00423274    jl          00423281
 00423276    mov         eax,dword ptr [ebp-8]
 00423279    mov         edx,dword ptr [ebp-4]
 0042327C    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0042327F    jl          00423292
 00423281    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00423287    mov         ecx,dword ptr [ebp-8]
 0042328A    mov         eax,dword ptr [ebp-4]
 0042328D    call        00421E44
 00423292    mov         eax,dword ptr [ebp-4]
 00423295    mov         edx,dword ptr [eax]
 00423297    call        dword ptr [edx+84];TStringList.sub_00422D00
 0042329D    mov         eax,dword ptr [ebp-4]
 004232A0    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 004232A3    mov         edx,dword ptr [ebp-8]
 004232A6    lea         eax,[eax+edx*8]
 004232A9    mov         edx,dword ptr [ebp-0C]
 004232AC    call        @LStrAsg
 004232B1    mov         eax,dword ptr [ebp-4]
 004232B4    mov         edx,dword ptr [eax]
 004232B6    call        dword ptr [edx+80];TStringList.sub_00422CD4
 004232BC    mov         esp,ebp
 004232BE    pop         ebp
 004232BF    ret
end;*}

//004232C0
{*procedure sub_004232C0(?:?; ?:?);
begin
 004232C0    push        ebp
 004232C1    mov         ebp,esp
 004232C3    add         esp,0FFFFFFF4
 004232C6    mov         dword ptr [ebp-0C],ecx
 004232C9    mov         dword ptr [ebp-8],edx
 004232CC    mov         dword ptr [ebp-4],eax
 004232CF    cmp         dword ptr [ebp-8],0
>004232D3    jl          004232E0
 004232D5    mov         eax,dword ptr [ebp-8]
 004232D8    mov         edx,dword ptr [ebp-4]
 004232DB    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>004232DE    jl          004232F1
 004232E0    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 004232E6    mov         ecx,dword ptr [ebp-8]
 004232E9    mov         eax,dword ptr [ebp-4]
 004232EC    call        00421E44
 004232F1    mov         eax,dword ptr [ebp-4]
 004232F4    mov         edx,dword ptr [eax]
 004232F6    call        dword ptr [edx+84];TStringList.sub_00422D00
 004232FC    mov         eax,dword ptr [ebp-4]
 004232FF    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00423302    mov         edx,dword ptr [ebp-8]
 00423305    mov         ecx,dword ptr [ebp-0C]
 00423308    mov         dword ptr [eax+edx*8+4],ecx
 0042330C    mov         eax,dword ptr [ebp-4]
 0042330F    mov         edx,dword ptr [eax]
 00423311    call        dword ptr [edx+80];TStringList.sub_00422CD4
 00423317    mov         esp,ebp
 00423319    pop         ebp
 0042331A    ret
end;*}

//0042331C
{*procedure sub_0042331C(?:TStringList; ?:?; ?:?; ?:?);
begin
 0042331C    push        ebp
 0042331D    mov         ebp,esp
 0042331F    add         esp,0FFFFFFE8
 00423322    mov         dword ptr [ebp-0C],ecx
 00423325    mov         dword ptr [ebp-8],edx
 00423328    mov         dword ptr [ebp-4],eax
 0042332B    mov         eax,dword ptr [ebp-8]
 0042332E    mov         dword ptr [ebp-10],eax
 00423331    mov         eax,dword ptr [ebp-0C]
 00423334    mov         dword ptr [ebp-14],eax
 00423337    mov         eax,dword ptr [ebp-8]
 0042333A    add         eax,dword ptr [ebp-0C]
 0042333D    shr         eax,1
 0042333F    mov         dword ptr [ebp-18],eax
>00423342    jmp         00423347
 00423344    inc         dword ptr [ebp-10]
 00423347    mov         ecx,dword ptr [ebp-18]
 0042334A    mov         edx,dword ptr [ebp-10]
 0042334D    mov         eax,dword ptr [ebp-4]
 00423350    call        dword ptr [ebp+8]
 00423353    test        eax,eax
>00423355    jl          00423344
>00423357    jmp         0042335C
 00423359    dec         dword ptr [ebp-14]
 0042335C    mov         ecx,dword ptr [ebp-18]
 0042335F    mov         edx,dword ptr [ebp-14]
 00423362    mov         eax,dword ptr [ebp-4]
 00423365    call        dword ptr [ebp+8]
 00423368    test        eax,eax
>0042336A    jg          00423359
 0042336C    mov         eax,dword ptr [ebp-10]
 0042336F    cmp         eax,dword ptr [ebp-14]
>00423372    jg          004233A6
 00423374    mov         ecx,dword ptr [ebp-14]
 00423377    mov         edx,dword ptr [ebp-10]
 0042337A    mov         eax,dword ptr [ebp-4]
 0042337D    call        00422E9C
 00423382    mov         eax,dword ptr [ebp-18]
 00423385    cmp         eax,dword ptr [ebp-10]
>00423388    jne         00423392
 0042338A    mov         eax,dword ptr [ebp-14]
 0042338D    mov         dword ptr [ebp-18],eax
>00423390    jmp         004233A0
 00423392    mov         eax,dword ptr [ebp-18]
 00423395    cmp         eax,dword ptr [ebp-14]
>00423398    jne         004233A0
 0042339A    mov         eax,dword ptr [ebp-10]
 0042339D    mov         dword ptr [ebp-18],eax
 004233A0    inc         dword ptr [ebp-10]
 004233A3    dec         dword ptr [ebp-14]
 004233A6    mov         eax,dword ptr [ebp-10]
 004233A9    cmp         eax,dword ptr [ebp-14]
>004233AC    jle         00423347
 004233AE    mov         eax,dword ptr [ebp-8]
 004233B1    cmp         eax,dword ptr [ebp-14]
>004233B4    jge         004233C8
 004233B6    mov         eax,dword ptr [ebp+8]
 004233B9    push        eax
 004233BA    mov         ecx,dword ptr [ebp-14]
 004233BD    mov         edx,dword ptr [ebp-8]
 004233C0    mov         eax,dword ptr [ebp-4]
 004233C3    call        0042331C
 004233C8    mov         eax,dword ptr [ebp-10]
 004233CB    mov         dword ptr [ebp-8],eax
 004233CE    mov         eax,dword ptr [ebp-10]
 004233D1    cmp         eax,dword ptr [ebp-0C]
>004233D4    jl          0042332B
 004233DA    mov         esp,ebp
 004233DC    pop         ebp
 004233DD    ret         4
end;*}

//004233E0
{*procedure sub_004233E0(?:?);
begin
 004233E0    push        ebp
 004233E1    mov         ebp,esp
 004233E3    add         esp,0FFFFFFF8
 004233E6    mov         dword ptr [ebp-8],edx
 004233E9    mov         dword ptr [ebp-4],eax
 004233EC    mov         edx,dword ptr [ebp-8]
 004233EF    shl         edx,3
 004233F2    mov         eax,dword ptr [ebp-4]
 004233F5    add         eax,10;TStringList.FList:PStringItemList
 004233F8    call        @ReallocMem
 004233FD    mov         eax,dword ptr [ebp-8]
 00423400    mov         edx,dword ptr [ebp-4]
 00423403    mov         dword ptr [edx+18],eax;TStringList.FCapacity:Integer
 00423406    pop         ecx
 00423407    pop         ecx
 00423408    pop         ebp
 00423409    ret
end;*}

//0042340C
{*procedure sub_0042340C(?:TStrings; ?:?);
begin
 0042340C    push        ebp
 0042340D    mov         ebp,esp
 0042340F    add         esp,0FFFFFFF8
 00423412    mov         byte ptr [ebp-5],dl
 00423415    mov         dword ptr [ebp-4],eax
 00423418    mov         eax,dword ptr [ebp-4]
 0042341B    mov         al,byte ptr [eax+1C]
 0042341E    cmp         al,byte ptr [ebp-5]
>00423421    je          0042343D
 00423423    cmp         byte ptr [ebp-5],0
>00423427    je          00423434
 00423429    mov         eax,dword ptr [ebp-4]
 0042342C    mov         edx,dword ptr [eax]
 0042342E    call        dword ptr [edx+90]
 00423434    mov         al,byte ptr [ebp-5]
 00423437    mov         edx,dword ptr [ebp-4]
 0042343A    mov         byte ptr [edx+1C],al
 0042343D    pop         ecx
 0042343E    pop         ecx
 0042343F    pop         ebp
 00423440    ret
end;*}

//00423444
{*procedure sub_00423444(?:?);
begin
 00423444    push        ebp
 00423445    mov         ebp,esp
 00423447    add         esp,0FFFFFFF8
 0042344A    mov         byte ptr [ebp-5],dl
 0042344D    mov         dword ptr [ebp-4],eax
 00423450    cmp         byte ptr [ebp-5],0
>00423454    je          00423463
 00423456    mov         eax,dword ptr [ebp-4]
 00423459    mov         edx,dword ptr [eax]
 0042345B    call        dword ptr [edx+84];TStringList.sub_00422D00
>00423461    jmp         0042346E
 00423463    mov         eax,dword ptr [ebp-4]
 00423466    mov         edx,dword ptr [eax]
 00423468    call        dword ptr [edx+80];TStringList.sub_00422CD4
 0042346E    pop         ecx
 0042346F    pop         ecx
 00423470    pop         ebp
 00423471    ret
end;*}

//00423474
{*function sub_00423474(?:?; ?:?; ?:?):?;
begin
 00423474    push        ebp
 00423475    mov         ebp,esp
 00423477    add         esp,0FFFFFFF0
 0042347A    push        ebx
 0042347B    mov         dword ptr [ebp-0C],ecx
 0042347E    mov         dword ptr [ebp-8],edx
 00423481    mov         dword ptr [ebp-4],eax
 00423484    mov         eax,dword ptr [ebp-4]
 00423487    mov         eax,dword ptr [eax+10]
 0042348A    mov         edx,dword ptr [ebp-0C]
 0042348D    mov         ecx,dword ptr [eax+edx*8]
 00423490    mov         eax,dword ptr [ebp-4]
 00423493    mov         eax,dword ptr [eax+10]
 00423496    mov         edx,dword ptr [ebp-8]
 00423499    mov         edx,dword ptr [eax+edx*8]
 0042349C    mov         eax,dword ptr [ebp-4]
 0042349F    mov         ebx,dword ptr [eax]
 004234A1    call        dword ptr [ebx+34]
 004234A4    mov         dword ptr [ebp-10],eax
 004234A7    mov         eax,dword ptr [ebp-10]
 004234AA    pop         ebx
 004234AB    mov         esp,ebp
 004234AD    pop         ebp
 004234AE    ret
end;*}

//004234B0
procedure sub_004234B0;
begin
{*
 004234B0    push        ebp
 004234B1    mov         ebp,esp
 004234B3    push        ecx
 004234B4    mov         dword ptr [ebp-4],eax
 004234B7    mov         edx,423474;sub_00423474
 004234BC    mov         eax,dword ptr [ebp-4]
 004234BF    mov         ecx,dword ptr [eax]
 004234C1    call        dword ptr [ecx+94];TStringList.sub_004234CC
 004234C7    pop         ecx
 004234C8    pop         ebp
 004234C9    ret
*}
end;

//004234CC
{*procedure sub_004234CC(?:?);
begin
 004234CC    push        ebp
 004234CD    mov         ebp,esp
 004234CF    add         esp,0FFFFFFF8
 004234D2    mov         dword ptr [ebp-8],edx
 004234D5    mov         dword ptr [ebp-4],eax
 004234D8    mov         eax,dword ptr [ebp-4]
 004234DB    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>004234DF    jne         00423515
 004234E1    mov         eax,dword ptr [ebp-4]
 004234E4    cmp         dword ptr [eax+14],1;TStringList.FCount:Integer
>004234E8    jle         00423515
 004234EA    mov         eax,dword ptr [ebp-4]
 004234ED    mov         edx,dword ptr [eax]
 004234EF    call        dword ptr [edx+84];TStringList.sub_00422D00
 004234F5    mov         eax,dword ptr [ebp-8]
 004234F8    push        eax
 004234F9    mov         eax,dword ptr [ebp-4]
 004234FC    mov         ecx,dword ptr [eax+14];TStringList.FCount:Integer
 004234FF    dec         ecx
 00423500    xor         edx,edx
 00423502    mov         eax,dword ptr [ebp-4]
 00423505    call        0042331C
 0042350A    mov         eax,dword ptr [ebp-4]
 0042350D    mov         edx,dword ptr [eax]
 0042350F    call        dword ptr [edx+80];TStringList.sub_00422CD4
 00423515    pop         ecx
 00423516    pop         ecx
 00423517    pop         ebp
 00423518    ret
end;*}

//0042351C
{*function sub_0042351C(?:?; ?:?):?;
begin
 0042351C    push        ebp
 0042351D    mov         ebp,esp
 0042351F    add         esp,0FFFFFFF0
 00423522    mov         dword ptr [ebp-0C],ecx
 00423525    mov         dword ptr [ebp-8],edx
 00423528    mov         dword ptr [ebp-4],eax
 0042352B    mov         eax,dword ptr [ebp-4]
 0042352E    cmp         byte ptr [eax+1E],0;TStringList.FCaseSensitive:Boolean
>00423532    je          00423544
 00423534    mov         edx,dword ptr [ebp-0C]
 00423537    mov         eax,dword ptr [ebp-8]
 0042353A    call        0040BEF8
 0042353F    mov         dword ptr [ebp-10],eax
>00423542    jmp         00423552
 00423544    mov         edx,dword ptr [ebp-0C]
 00423547    mov         eax,dword ptr [ebp-8]
 0042354A    call        0040BF44
 0042354F    mov         dword ptr [ebp-10],eax
 00423552    mov         eax,dword ptr [ebp-10]
 00423555    mov         esp,ebp
 00423557    pop         ebp
 00423558    ret
end;*}

//0042355C
function TStream.GetPosition:Int64;
begin
{*
 0042355C    push        ebp
 0042355D    mov         ebp,esp
 0042355F    add         esp,0FFFFFFF0
 00423562    mov         dword ptr [ebp-4],eax
 00423565    push        0
 00423567    push        0
 00423569    mov         dl,1
 0042356B    mov         eax,dword ptr [ebp-4]
 0042356E    mov         ecx,dword ptr [eax]
 00423570    call        dword ptr [ecx+18]
 00423573    mov         dword ptr [ebp-10],eax
 00423576    mov         dword ptr [ebp-0C],edx
 00423579    mov         eax,dword ptr [ebp-10]
 0042357C    mov         edx,dword ptr [ebp-0C]
 0042357F    mov         esp,ebp
 00423581    pop         ebp
 00423582    ret
*}
end;

//00423584
procedure TStream.SetPosition(const Pos:Int64);
begin
{*
 00423584    push        ebp
 00423585    mov         ebp,esp
 00423587    push        ecx
 00423588    mov         dword ptr [ebp-4],eax
 0042358B    push        dword ptr [ebp+0C]
 0042358E    push        dword ptr [ebp+8]
 00423591    xor         edx,edx
 00423593    mov         eax,dword ptr [ebp-4]
 00423596    mov         ecx,dword ptr [eax]
 00423598    call        dword ptr [ecx+18]
 0042359B    pop         ecx
 0042359C    pop         ebp
 0042359D    ret         8
*}
end;

//004235A0
procedure sub_004235A0;
begin
{*
 004235A0    push        ebp
 004235A1    mov         ebp,esp
 004235A3    add         esp,0FFFFFFE8
 004235A6    mov         dword ptr [ebp-4],eax
 004235A9    push        0
 004235AB    push        0
 004235AD    mov         dl,1
 004235AF    mov         eax,dword ptr [ebp-4]
 004235B2    mov         ecx,dword ptr [eax]
 004235B4    call        dword ptr [ecx+18];TStream.sub_00423748
 004235B7    mov         dword ptr [ebp-18],eax
 004235BA    mov         dword ptr [ebp-14],edx
 004235BD    push        0
 004235BF    push        0
 004235C1    mov         dl,2
 004235C3    mov         eax,dword ptr [ebp-4]
 004235C6    mov         ecx,dword ptr [eax]
 004235C8    call        dword ptr [ecx+18];TStream.sub_00423748
 004235CB    mov         dword ptr [ebp-10],eax
 004235CE    mov         dword ptr [ebp-0C],edx
 004235D1    push        dword ptr [ebp-14]
 004235D4    push        dword ptr [ebp-18]
 004235D7    xor         edx,edx
 004235D9    mov         eax,dword ptr [ebp-4]
 004235DC    mov         ecx,dword ptr [eax]
 004235DE    call        dword ptr [ecx+18];TStream.sub_00423748
 004235E1    mov         eax,dword ptr [ebp-10]
 004235E4    mov         edx,dword ptr [ebp-0C]
 004235E7    mov         esp,ebp
 004235E9    pop         ebp
 004235EA    ret
*}
end;

//004235EC
{*procedure sub_004235EC(?:?);
begin
 004235EC    push        ebp
 004235ED    mov         ebp,esp
 004235EF    add         esp,0FFFFFFF8
 004235F2    mov         dword ptr [ebp-8],edx
 004235F5    mov         dword ptr [ebp-4],eax
 004235F8    pop         ecx
 004235F9    pop         ecx
 004235FA    pop         ebp
 004235FB    ret
end;*}

//004235FC
{*procedure sub_004235FC(?:TMemoryStream; ?:?; ?:?);
begin
 004235FC    push        ebp
 004235FD    mov         ebp,esp
 004235FF    push        ecx
 00423600    mov         dword ptr [ebp-4],eax
 00423603    push        dword ptr [ebp+0C]
 00423606    push        dword ptr [ebp+8]
 00423609    mov         eax,dword ptr [ebp-4]
 0042360C    mov         edx,dword ptr [eax]
 0042360E    call        dword ptr [edx+8]
 00423611    pop         ecx
 00423612    pop         ebp
 00423613    ret         8
end;*}

//00423618
{*procedure sub_00423618(?:?; ?:?);
begin
 00423618    push        ebp
 00423619    mov         ebp,esp
 0042361B    push        ecx
 0042361C    mov         dword ptr [ebp-4],eax
 0042361F    cmp         dword ptr [ebp+0C],0FFFFFFFF
>00423623    jne         00423630
 00423625    cmp         dword ptr [ebp+8],80000000
>0042362C    jb          00423645
>0042362E    jmp         00423632
>00423630    jl          00423645
 00423632    cmp         dword ptr [ebp+0C],0
>00423636    jne         00423643
 00423638    cmp         dword ptr [ebp+8],7FFFFFFF
>0042363F    jbe         0042365C
>00423641    jmp         00423645
>00423643    jle         0042365C
 00423645    mov         ecx,dword ptr ds:[56E55C];^SRangeError:TResStringRec
 0042364B    mov         dl,1
 0042364D    mov         eax,[0040B2E4];ERangeError
 00423652    call        Exception.Create;ERangeError.Create
 00423657    call        @RaiseExcept
 0042365C    mov         eax,dword ptr [ebp+8]
 0042365F    mov         edx,eax
 00423661    mov         eax,dword ptr [ebp-4]
 00423664    mov         ecx,dword ptr [eax]
 00423666    call        dword ptr [ecx+4];TStream.sub_004235EC
 00423669    pop         ecx
 0042366A    pop         ebp
 0042366B    ret         8
end;*}

//00423670
procedure RaiseException;
begin
{*
 00423670    push        ebp
 00423671    mov         ebp,esp
 00423673    add         esp,0FFFFFEF8
 00423679    lea         edx,[ebp-108]
 0042367F    mov         eax,dword ptr [ebp+8]
 00423682    mov         eax,dword ptr [eax-4]
 00423685    mov         eax,dword ptr [eax]
 00423687    call        TObject.ClassName
 0042368C    lea         eax,[ebp-108]
 00423692    mov         dword ptr [ebp-8],eax
 00423695    mov         byte ptr [ebp-4],4
 00423699    lea         eax,[ebp-8]
 0042369C    push        eax
 0042369D    push        0
 0042369F    mov         ecx,dword ptr ds:[56E5B8];^SSeekNotImplemented:TResStringRec
 004236A5    mov         dl,1
 004236A7    mov         eax,[0041CF14];EStreamError
 004236AC    call        Exception.CreateResFmt
 004236B1    call        @RaiseExcept
 004236B6    mov         esp,ebp
 004236B8    pop         ebp
 004236B9    ret
*}
end;

//004236BC
{*function sub_004236BC(?:?; ?:?):?;
begin
 004236BC    push        ebp
 004236BD    mov         ebp,esp
 004236BF    add         esp,0FFFFFFD8
 004236C2    mov         word ptr [ebp-1E],cx
 004236C6    mov         dword ptr [ebp-1C],edx
 004236C9    mov         dword ptr [ebp-4],eax
 004236CC    mov         eax,dword ptr [ebp-4]
 004236CF    mov         dword ptr [ebp-0C],eax
 004236D2    mov         eax,dword ptr [eax]
 004236D4    mov         eax,dword ptr [eax+18]
 004236D7    mov         dword ptr [ebp-10],eax
 004236DA    mov         eax,dword ptr [ebp-4]
 004236DD    call        TObject.ClassType
 004236E2    mov         dword ptr [ebp-28],eax
>004236E5    jmp         004236F2
 004236E7    mov         eax,dword ptr [ebp-28]
 004236EA    call        TObject.ClassParent
 004236EF    mov         dword ptr [ebp-28],eax
 004236F2    cmp         dword ptr [ebp-28],0
>004236F6    je          00423703
 004236F8    mov         eax,dword ptr [ebp-28]
 004236FB    cmp         eax,dword ptr ds:[41DC3C];TStream
>00423701    jne         004236E7
 00423703    cmp         dword ptr [ebp-28],0
>00423707    jne         00423710
 00423709    push        ebp
 0042370A    call        RaiseException
 0042370F    pop         ecx
 00423710    lea         eax,[ebp-28]
 00423713    mov         dword ptr [ebp-14],eax
 00423716    mov         eax,dword ptr [eax]
 00423718    mov         eax,dword ptr [eax+18]
 0042371B    mov         dword ptr [ebp-18],eax
 0042371E    mov         eax,dword ptr [ebp-10]
 00423721    cmp         eax,dword ptr [ebp-18]
>00423724    jne         0042372D
 00423726    push        ebp
 00423727    call        RaiseException
 0042372C    pop         ecx
 0042372D    mov         eax,dword ptr [ebp-1C]
 00423730    cdq
 00423731    push        edx
 00423732    push        eax
 00423733    mov         dl,byte ptr [ebp-1E]
 00423736    mov         eax,dword ptr [ebp-4]
 00423739    mov         ecx,dword ptr [eax]
 0042373B    call        dword ptr [ecx+18];TStream.sub_00423748
 0042373E    mov         dword ptr [ebp-24],eax
 00423741    mov         eax,dword ptr [ebp-24]
 00423744    mov         esp,ebp
 00423746    pop         ebp
 00423747    ret
end;*}

//00423748
{*procedure sub_00423748(?:?; ?:?; ?:?);
begin
 00423748    push        ebp
 00423749    mov         ebp,esp
 0042374B    add         esp,0FFFFFFF0
 0042374E    push        ebx
 0042374F    mov         byte ptr [ebp-5],dl
 00423752    mov         dword ptr [ebp-4],eax
 00423755    cmp         dword ptr [ebp+0C],0FFFFFFFF
>00423759    jne         00423766
 0042375B    cmp         dword ptr [ebp+8],80000000
>00423762    jb          0042377B
>00423764    jmp         00423768
>00423766    jl          0042377B
 00423768    cmp         dword ptr [ebp+0C],0
>0042376C    jne         00423779
 0042376E    cmp         dword ptr [ebp+8],7FFFFFFF
>00423775    jbe         00423792
>00423777    jmp         0042377B
>00423779    jle         00423792
 0042377B    mov         ecx,dword ptr ds:[56E55C];^SRangeError:TResStringRec
 00423781    mov         dl,1
 00423783    mov         eax,[0040B2E4];ERangeError
 00423788    call        Exception.Create;ERangeError.Create
 0042378D    call        @RaiseExcept
 00423792    mov         eax,dword ptr [ebp+8]
 00423795    mov         edx,eax
 00423797    xor         ecx,ecx
 00423799    mov         cl,byte ptr [ebp-5]
 0042379C    mov         eax,dword ptr [ebp-4]
 0042379F    mov         ebx,dword ptr [eax]
 004237A1    call        dword ptr [ebx+14];TStream.sub_004236BC
 004237A4    cdq
 004237A5    mov         dword ptr [ebp-10],eax
 004237A8    mov         dword ptr [ebp-0C],edx
 004237AB    mov         eax,dword ptr [ebp-10]
 004237AE    mov         edx,dword ptr [ebp-0C]
 004237B1    pop         ebx
 004237B2    mov         esp,ebp
 004237B4    pop         ebp
 004237B5    ret         8
end;*}

//004237B8
procedure TStream.ReadBuffer(var Buffer:void ; Count:Longint);
begin
{*
 004237B8    push        ebp
 004237B9    mov         ebp,esp
 004237BB    add         esp,0FFFFFFF4
 004237BE    push        ebx
 004237BF    mov         dword ptr [ebp-0C],ecx
 004237C2    mov         dword ptr [ebp-8],edx
 004237C5    mov         dword ptr [ebp-4],eax
 004237C8    cmp         dword ptr [ebp-0C],0
>004237CC    je          004237F8
 004237CE    mov         edx,dword ptr [ebp-8]
 004237D1    mov         ecx,dword ptr [ebp-0C]
 004237D4    mov         eax,dword ptr [ebp-4]
 004237D7    mov         ebx,dword ptr [eax]
 004237D9    call        dword ptr [ebx+0C]
 004237DC    cmp         eax,dword ptr [ebp-0C]
>004237DF    je          004237F8
 004237E1    mov         ecx,dword ptr ds:[56E548];^SReadError:TResStringRec
 004237E7    mov         dl,1
 004237E9    mov         eax,[0041D0DC];EReadError
 004237EE    call        Exception.Create
 004237F3    call        @RaiseExcept
 004237F8    pop         ebx
 004237F9    mov         esp,ebp
 004237FB    pop         ebp
 004237FC    ret
*}
end;

//00423800
procedure TStream.WriteBuffer(const Buffer:void ; Count:Longint);
begin
{*
 00423800    push        ebp
 00423801    mov         ebp,esp
 00423803    add         esp,0FFFFFFF4
 00423806    push        ebx
 00423807    mov         dword ptr [ebp-0C],ecx
 0042380A    mov         dword ptr [ebp-8],edx
 0042380D    mov         dword ptr [ebp-4],eax
 00423810    cmp         dword ptr [ebp-0C],0
>00423814    je          00423840
 00423816    mov         edx,dword ptr [ebp-8]
 00423819    mov         ecx,dword ptr [ebp-0C]
 0042381C    mov         eax,dword ptr [ebp-4]
 0042381F    mov         ebx,dword ptr [eax]
 00423821    call        dword ptr [ebx+10]
 00423824    cmp         eax,dword ptr [ebp-0C]
>00423827    je          00423840
 00423829    mov         ecx,dword ptr ds:[56E308];^SWriteError:TResStringRec
 0042382F    mov         dl,1
 00423831    mov         eax,[0041D134];EWriteError
 00423836    call        Exception.Create
 0042383B    call        @RaiseExcept
 00423840    pop         ebx
 00423841    mov         esp,ebp
 00423843    pop         ebp
 00423844    ret
*}
end;

//00423848
function TStream.CopyFrom(Source:TStream; Count:Int64):Int64;
begin
{*
 00423848    push        ebp
 00423849    mov         ebp,esp
 0042384B    add         esp,0FFFFFFE4
 0042384E    mov         dword ptr [ebp-8],edx
 00423851    mov         dword ptr [ebp-4],eax
 00423854    cmp         dword ptr [ebp+0C],0
>00423858    jne         00423879
 0042385A    cmp         dword ptr [ebp+8],0
>0042385E    jne         00423879
 00423860    push        0
 00423862    push        0
 00423864    mov         eax,dword ptr [ebp-8]
 00423867    call        TStream.SetPosition
 0042386C    mov         eax,dword ptr [ebp-8]
 0042386F    mov         edx,dword ptr [eax]
 00423871    call        dword ptr [edx]
 00423873    mov         dword ptr [ebp+8],eax
 00423876    mov         dword ptr [ebp+0C],edx
 00423879    mov         eax,dword ptr [ebp+8]
 0042387C    mov         dword ptr [ebp-10],eax
 0042387F    mov         eax,dword ptr [ebp+0C]
 00423882    mov         dword ptr [ebp-0C],eax
 00423885    cmp         dword ptr [ebp+0C],0
>00423889    jne         00423896
 0042388B    cmp         dword ptr [ebp+8],0F000
>00423892    jbe         004238A1
>00423894    jmp         00423898
>00423896    jle         004238A1
 00423898    mov         dword ptr [ebp-14],0F000
>0042389F    jmp         004238A7
 004238A1    mov         eax,dword ptr [ebp+8]
 004238A4    mov         dword ptr [ebp-14],eax
 004238A7    mov         eax,dword ptr [ebp-14]
 004238AA    call        @GetMem
 004238AF    mov         dword ptr [ebp-1C],eax
 004238B2    xor         eax,eax
 004238B4    push        ebp
 004238B5    push        42392D
 004238BA    push        dword ptr fs:[eax]
 004238BD    mov         dword ptr fs:[eax],esp
>004238C0    jmp         00423908
 004238C2    mov         eax,dword ptr [ebp-14]
 004238C5    cdq
 004238C6    cmp         edx,dword ptr [ebp+0C]
>004238C9    jne         004238D2
 004238CB    cmp         eax,dword ptr [ebp+8]
>004238CE    jae         004238DC
>004238D0    jmp         004238D4
>004238D2    jge         004238DC
 004238D4    mov         eax,dword ptr [ebp-14]
 004238D7    mov         dword ptr [ebp-18],eax
>004238DA    jmp         004238E2
 004238DC    mov         eax,dword ptr [ebp+8]
 004238DF    mov         dword ptr [ebp-18],eax
 004238E2    mov         edx,dword ptr [ebp-1C]
 004238E5    mov         ecx,dword ptr [ebp-18]
 004238E8    mov         eax,dword ptr [ebp-8]
 004238EB    call        TStream.ReadBuffer
 004238F0    mov         edx,dword ptr [ebp-1C]
 004238F3    mov         ecx,dword ptr [ebp-18]
 004238F6    mov         eax,dword ptr [ebp-4]
 004238F9    call        TStream.WriteBuffer
 004238FE    mov         eax,dword ptr [ebp-18]
 00423901    cdq
 00423902    sub         dword ptr [ebp+8],eax
 00423905    sbb         dword ptr [ebp+0C],edx
 00423908    cmp         dword ptr [ebp+0C],0
>0042390C    jne         004238C2
 0042390E    cmp         dword ptr [ebp+8],0
>00423912    jne         004238C2
 00423914    xor         eax,eax
 00423916    pop         edx
 00423917    pop         ecx
 00423918    pop         ecx
 00423919    mov         dword ptr fs:[eax],edx
 0042391C    push        423934
 00423921    mov         edx,dword ptr [ebp-14]
 00423924    mov         eax,dword ptr [ebp-1C]
 00423927    call        @FreeMem
 0042392C    ret
>0042392D    jmp         @HandleFinally
>00423932    jmp         00423921
 00423934    mov         eax,dword ptr [ebp-10]
 00423937    mov         edx,dword ptr [ebp-0C]
 0042393A    mov         esp,ebp
 0042393C    pop         ebp
 0042393D    ret         8
*}
end;

//00423940
{*function sub_00423940(?:TCustomMemoryStream; ?:TCustomListView):?;
begin
 00423940    push        ebp
 00423941    mov         ebp,esp
 00423943    add         esp,0FFFFFFF0
 00423946    mov         dword ptr [ebp-8],edx
 00423949    mov         dword ptr [ebp-4],eax
 0042394C    push        1000
 00423951    mov         ecx,dword ptr [ebp-4]
 00423954    mov         dl,1
 00423956    mov         eax,[0041E164];TReader
 0042395B    call        TFiler.Create;TReader.Create
 00423960    mov         dword ptr [ebp-10],eax
 00423963    xor         eax,eax
 00423965    push        ebp
 00423966    push        423995
 0042396B    push        dword ptr fs:[eax]
 0042396E    mov         dword ptr fs:[eax],esp
 00423971    mov         edx,dword ptr [ebp-8]
 00423974    mov         eax,dword ptr [ebp-10]
 00423977    call        004267C0
 0042397C    mov         dword ptr [ebp-0C],eax
 0042397F    xor         eax,eax
 00423981    pop         edx
 00423982    pop         ecx
 00423983    pop         ecx
 00423984    mov         dword ptr fs:[eax],edx
 00423987    push        42399C
 0042398C    mov         eax,dword ptr [ebp-10]
 0042398F    call        TObject.Free
 00423994    ret
>00423995    jmp         @HandleFinally
>0042399A    jmp         0042398C
 0042399C    mov         eax,dword ptr [ebp-0C]
 0042399F    mov         esp,ebp
 004239A1    pop         ebp
 004239A2    ret
end;*}

//004239A4
procedure sub_004239A4(?:TMemoryStream; ?:TComponent);
begin
{*
 004239A4    push        ebp
 004239A5    mov         ebp,esp
 004239A7    add         esp,0FFFFFFF8
 004239AA    mov         dword ptr [ebp-8],edx
 004239AD    mov         dword ptr [ebp-4],eax
 004239B0    xor         ecx,ecx
 004239B2    mov         edx,dword ptr [ebp-8]
 004239B5    mov         eax,dword ptr [ebp-4]
 004239B8    call        004239C4
 004239BD    pop         ecx
 004239BE    pop         ecx
 004239BF    pop         ebp
 004239C0    ret
*}
end;

//004239C4
{*procedure sub_004239C4(?:?; ?:?; ?:?);
begin
 004239C4    push        ebp
 004239C5    mov         ebp,esp
 004239C7    add         esp,0FFFFFFF0
 004239CA    mov         dword ptr [ebp-0C],ecx
 004239CD    mov         dword ptr [ebp-8],edx
 004239D0    mov         dword ptr [ebp-4],eax
 004239D3    push        1000
 004239D8    mov         ecx,dword ptr [ebp-4]
 004239DB    mov         dl,1
 004239DD    mov         eax,[0041E1F4];TWriter
 004239E2    call        TFiler.Create;TWriter.Create
 004239E7    mov         dword ptr [ebp-10],eax
 004239EA    xor         eax,eax
 004239EC    push        ebp
 004239ED    push        423A1C
 004239F2    push        dword ptr fs:[eax]
 004239F5    mov         dword ptr fs:[eax],esp
 004239F8    mov         ecx,dword ptr [ebp-0C]
 004239FB    mov         edx,dword ptr [ebp-8]
 004239FE    mov         eax,dword ptr [ebp-10]
 00423A01    call        0042817C
 00423A06    xor         eax,eax
 00423A08    pop         edx
 00423A09    pop         ecx
 00423A0A    pop         ecx
 00423A0B    mov         dword ptr fs:[eax],edx
 00423A0E    push        423A23
 00423A13    mov         eax,dword ptr [ebp-10]
 00423A16    call        TObject.Free
 00423A1B    ret
>00423A1C    jmp         @HandleFinally
>00423A21    jmp         00423A13
 00423A23    mov         esp,ebp
 00423A25    pop         ebp
 00423A26    ret
end;*}

//00423A28
constructor sub_00423A28;
begin
{*
 00423A28    push        ebp
 00423A29    mov         ebp,esp
 00423A2B    add         esp,0FFFFFFF4
 00423A2E    test        dl,dl
>00423A30    je          00423A3A
 00423A32    add         esp,0FFFFFFF0
 00423A35    call        @ClassCreate
 00423A3A    mov         dword ptr [ebp-0C],ecx
 00423A3D    mov         byte ptr [ebp-5],dl
 00423A40    mov         dword ptr [ebp-4],eax
 00423A43    xor         edx,edx
 00423A45    mov         eax,dword ptr [ebp-4]
 00423A48    call        TObject.Create
 00423A4D    mov         eax,dword ptr [ebp-4]
 00423A50    mov         edx,dword ptr [ebp-0C]
 00423A53    mov         dword ptr [eax+4],edx
 00423A56    mov         eax,dword ptr [ebp-4]
 00423A59    cmp         byte ptr [ebp-5],0
>00423A5D    je          00423A6E
 00423A5F    call        @AfterConstruction
 00423A64    pop         dword ptr fs:[0]
 00423A6B    add         esp,0C
 00423A6E    mov         eax,dword ptr [ebp-4]
 00423A71    mov         esp,ebp
 00423A73    pop         ebp
 00423A74    ret
*}
end;

//00423A78
{*function sub_00423A78(?:?; ?:?):?;
begin
 00423A78    push        ebp
 00423A79    mov         ebp,esp
 00423A7B    add         esp,0FFFFFFF0
 00423A7E    mov         dword ptr [ebp-0C],ecx
 00423A81    mov         dword ptr [ebp-8],edx
 00423A84    mov         dword ptr [ebp-4],eax
 00423A87    mov         edx,dword ptr [ebp-8]
 00423A8A    mov         ecx,dword ptr [ebp-0C]
 00423A8D    mov         eax,dword ptr [ebp-4]
 00423A90    mov         eax,dword ptr [eax+4];THandleStream........FHandle:Integer
 00423A93    call        0040C81C
 00423A98    mov         dword ptr [ebp-10],eax
 00423A9B    cmp         dword ptr [ebp-10],0FFFFFFFF
>00423A9F    jne         00423AA6
 00423AA1    xor         eax,eax
 00423AA3    mov         dword ptr [ebp-10],eax
 00423AA6    mov         eax,dword ptr [ebp-10]
 00423AA9    mov         esp,ebp
 00423AAB    pop         ebp
 00423AAC    ret
end;*}

//00423AB0
{*function sub_00423AB0(?:?; ?:?):?;
begin
 00423AB0    push        ebp
 00423AB1    mov         ebp,esp
 00423AB3    add         esp,0FFFFFFF0
 00423AB6    mov         dword ptr [ebp-0C],ecx
 00423AB9    mov         dword ptr [ebp-8],edx
 00423ABC    mov         dword ptr [ebp-4],eax
 00423ABF    mov         edx,dword ptr [ebp-8]
 00423AC2    mov         ecx,dword ptr [ebp-0C]
 00423AC5    mov         eax,dword ptr [ebp-4]
 00423AC8    mov         eax,dword ptr [eax+4];THandleStream.........FHandle:Integer
 00423ACB    call        0040C854
 00423AD0    mov         dword ptr [ebp-10],eax
 00423AD3    cmp         dword ptr [ebp-10],0FFFFFFFF
>00423AD7    jne         00423ADE
 00423AD9    xor         eax,eax
 00423ADB    mov         dword ptr [ebp-10],eax
 00423ADE    mov         eax,dword ptr [ebp-10]
 00423AE1    mov         esp,ebp
 00423AE3    pop         ebp
 00423AE4    ret
end;*}

//00423AE8
{*procedure sub_00423AE8(?:?; ?:?; ?:?);
begin
 00423AE8    push        ebp
 00423AE9    mov         ebp,esp
 00423AEB    add         esp,0FFFFFFF0
 00423AEE    mov         byte ptr [ebp-5],dl
 00423AF1    mov         dword ptr [ebp-4],eax
 00423AF4    push        dword ptr [ebp+0C]
 00423AF7    push        dword ptr [ebp+8]
 00423AFA    xor         edx,edx
 00423AFC    mov         dl,byte ptr [ebp-5]
 00423AFF    mov         eax,dword ptr [ebp-4]
 00423B02    mov         eax,dword ptr [eax+4];THandleStream..........FHandle:Integer
 00423B05    call        0040C88C
 00423B0A    mov         dword ptr [ebp-10],eax
 00423B0D    mov         dword ptr [ebp-0C],edx
 00423B10    mov         eax,dword ptr [ebp-10]
 00423B13    mov         edx,dword ptr [ebp-0C]
 00423B16    mov         esp,ebp
 00423B18    pop         ebp
 00423B19    ret         8
end;*}

//00423B1C
{*procedure sub_00423B1C(?:?);
begin
 00423B1C    push        ebp
 00423B1D    mov         ebp,esp
 00423B1F    add         esp,0FFFFFFF8
 00423B22    mov         dword ptr [ebp-8],edx
 00423B25    mov         dword ptr [ebp-4],eax
 00423B28    mov         eax,dword ptr [ebp-8]
 00423B2B    cdq
 00423B2C    push        edx
 00423B2D    push        eax
 00423B2E    mov         eax,dword ptr [ebp-4]
 00423B31    mov         edx,dword ptr [eax]
 00423B33    call        dword ptr [edx+8];THandleStream.sub_00423B3C
 00423B36    pop         ecx
 00423B37    pop         ecx
 00423B38    pop         ebp
 00423B39    ret
end;*}

//00423B3C
{*procedure sub_00423B3C(?:?; ?:?);
begin
 00423B3C    push        ebp
 00423B3D    mov         ebp,esp
 00423B3F    push        ecx
 00423B40    mov         dword ptr [ebp-4],eax
 00423B43    push        dword ptr [ebp+0C]
 00423B46    push        dword ptr [ebp+8]
 00423B49    xor         edx,edx
 00423B4B    mov         eax,dword ptr [ebp-4]
 00423B4E    mov         ecx,dword ptr [eax]
 00423B50    call        dword ptr [ecx+18];THandleStream.sub_00423AE8
 00423B53    mov         eax,dword ptr [ebp-4]
 00423B56    mov         eax,dword ptr [eax+4];THandleStream...........FHandle:Integer
 00423B59    push        eax
 00423B5A    call        kernel32.SetEndOfFile
 00423B5F    call        00412170
 00423B64    pop         ecx
 00423B65    pop         ebp
 00423B66    ret         8
end;*}

//00423B6C
{*constructor TFileStream.Create(?:?);
begin
 00423B6C    push        ebp
 00423B6D    mov         ebp,esp
 00423B6F    add         esp,0FFFFFFF4
 00423B72    test        dl,dl
>00423B74    je          00423B7E
 00423B76    add         esp,0FFFFFFF0
 00423B79    call        @ClassCreate
 00423B7E    mov         dword ptr [ebp-0C],ecx
 00423B81    mov         byte ptr [ebp-5],dl
 00423B84    mov         dword ptr [ebp-4],eax
 00423B87    mov         ax,word ptr [ebp+8]
 00423B8B    push        eax
 00423B8C    push        0
 00423B8E    mov         ecx,dword ptr [ebp-0C]
 00423B91    xor         edx,edx
 00423B93    mov         eax,dword ptr [ebp-4]
 00423B96    call        00423BBC
 00423B9B    mov         eax,dword ptr [ebp-4]
 00423B9E    cmp         byte ptr [ebp-5],0
>00423BA2    je          00423BB3
 00423BA4    call        @AfterConstruction
 00423BA9    pop         dword ptr fs:[0]
 00423BB0    add         esp,0C
 00423BB3    mov         eax,dword ptr [ebp-4]
 00423BB6    mov         esp,ebp
 00423BB8    pop         ebp
 00423BB9    ret         4
end;*}

//00423BBC
{*constructor sub_00423BBC(?:?; ?:?);
begin
 00423BBC    push        ebp
 00423BBD    mov         ebp,esp
 00423BBF    add         esp,0FFFFFFD4
 00423BC2    push        ebx
 00423BC3    xor         ebx,ebx
 00423BC5    mov         dword ptr [ebp-28],ebx
 00423BC8    mov         dword ptr [ebp-2C],ebx
 00423BCB    mov         dword ptr [ebp-20],ebx
 00423BCE    mov         dword ptr [ebp-24],ebx
 00423BD1    test        dl,dl
>00423BD3    je          00423BDD
 00423BD5    add         esp,0FFFFFFF0
 00423BD8    call        @ClassCreate
 00423BDD    mov         dword ptr [ebp-0C],ecx
 00423BE0    mov         byte ptr [ebp-5],dl
 00423BE3    mov         dword ptr [ebp-4],eax
 00423BE6    xor         eax,eax
 00423BE8    push        ebp
 00423BE9    push        423CF0
 00423BEE    push        dword ptr fs:[eax]
 00423BF1    mov         dword ptr fs:[eax],esp
 00423BF4    cmp         word ptr [ebp+0C],0FFFF
>00423BFA    jne         00423C6B
 00423BFC    mov         edx,dword ptr [ebp+8]
 00423BFF    mov         eax,dword ptr [ebp-0C]
 00423C02    call        0040C7FC
 00423C07    mov         ecx,eax
 00423C09    xor         edx,edx
 00423C0B    mov         eax,dword ptr [ebp-4]
 00423C0E    call        00423A28
 00423C13    mov         eax,dword ptr [ebp-4]
 00423C16    cmp         dword ptr [eax+4],0
>00423C1A    jge         00423CD5
 00423C20    lea         edx,[ebp-20]
 00423C23    mov         eax,dword ptr [ebp-0C]
 00423C26    call        0040CD40
 00423C2B    mov         eax,dword ptr [ebp-20]
 00423C2E    mov         dword ptr [ebp-1C],eax
 00423C31    mov         byte ptr [ebp-18],0B
 00423C35    call        kernel32.GetLastError
 00423C3A    lea         edx,[ebp-24]
 00423C3D    call        SysErrorMessage
 00423C42    mov         eax,dword ptr [ebp-24]
 00423C45    mov         dword ptr [ebp-14],eax
 00423C48    mov         byte ptr [ebp-10],0B
 00423C4C    lea         eax,[ebp-1C]
 00423C4F    push        eax
 00423C50    push        1
 00423C52    mov         ecx,dword ptr ds:[56E62C];^SFCreateErrorEx:TResStringRec
 00423C58    mov         dl,1
 00423C5A    mov         eax,[0041CFD0];EFCreateError
 00423C5F    call        Exception.CreateResFmt;EFCreateError.Create
 00423C64    call        @RaiseExcept
>00423C69    jmp         00423CD5
 00423C6B    movzx       edx,word ptr [ebp+0C]
 00423C6F    mov         eax,dword ptr [ebp-0C]
 00423C72    call        0040C758
 00423C77    mov         ecx,eax
 00423C79    xor         edx,edx
 00423C7B    mov         eax,dword ptr [ebp-4]
 00423C7E    call        00423A28
 00423C83    mov         eax,dword ptr [ebp-4]
 00423C86    cmp         dword ptr [eax+4],0
>00423C8A    jge         00423CD5
 00423C8C    lea         edx,[ebp-28]
 00423C8F    mov         eax,dword ptr [ebp-0C]
 00423C92    call        0040CD40
 00423C97    mov         eax,dword ptr [ebp-28]
 00423C9A    mov         dword ptr [ebp-1C],eax
 00423C9D    mov         byte ptr [ebp-18],0B
 00423CA1    call        kernel32.GetLastError
 00423CA6    lea         edx,[ebp-2C]
 00423CA9    call        SysErrorMessage
 00423CAE    mov         eax,dword ptr [ebp-2C]
 00423CB1    mov         dword ptr [ebp-14],eax
 00423CB4    mov         byte ptr [ebp-10],0B
 00423CB8    lea         eax,[ebp-1C]
 00423CBB    push        eax
 00423CBC    push        1
 00423CBE    mov         ecx,dword ptr ds:[56DFA4];^SFOpenErrorEx:TResStringRec
 00423CC4    mov         dl,1
 00423CC6    mov         eax,[0041D02C];EFOpenError
 00423CCB    call        Exception.CreateResFmt;EFOpenError.Create
 00423CD0    call        @RaiseExcept
 00423CD5    xor         eax,eax
 00423CD7    pop         edx
 00423CD8    pop         ecx
 00423CD9    pop         ecx
 00423CDA    mov         dword ptr fs:[eax],edx
 00423CDD    push        423CF7
 00423CE2    lea         eax,[ebp-2C]
 00423CE5    mov         edx,4
 00423CEA    call        @LStrArrayClr
 00423CEF    ret
>00423CF0    jmp         @HandleFinally
>00423CF5    jmp         00423CE2
 00423CF7    mov         eax,dword ptr [ebp-4]
 00423CFA    cmp         byte ptr [ebp-5],0
>00423CFE    je          00423D0F
 00423D00    call        @AfterConstruction
 00423D05    pop         dword ptr fs:[0]
 00423D0C    add         esp,0C
 00423D0F    mov         eax,dword ptr [ebp-4]
 00423D12    pop         ebx
 00423D13    mov         esp,ebp
 00423D15    pop         ebp
 00423D16    ret         8
end;*}

//00423D1C
destructor TFileStream.Destroy;
begin
{*
 00423D1C    push        ebp
 00423D1D    mov         ebp,esp
 00423D1F    add         esp,0FFFFFFF8
 00423D22    call        @BeforeDestruction
 00423D27    mov         byte ptr [ebp-5],dl
 00423D2A    mov         dword ptr [ebp-4],eax
 00423D2D    mov         eax,dword ptr [ebp-4]
 00423D30    cmp         dword ptr [eax+4],0;TFileStream............FHandle:Integer
>00423D34    jl          00423D41
 00423D36    mov         eax,dword ptr [ebp-4]
 00423D39    mov         eax,dword ptr [eax+4];TFileStream.............FHandle:Integer
 00423D3C    call        0040C8C8
 00423D41    mov         dl,byte ptr [ebp-5]
 00423D44    and         dl,0FC
 00423D47    mov         eax,dword ptr [ebp-4]
 00423D4A    call        TObject.Destroy
 00423D4F    cmp         byte ptr [ebp-5],0
>00423D53    jle         00423D5D
 00423D55    mov         eax,dword ptr [ebp-4]
 00423D58    call        @ClassDestroy
 00423D5D    pop         ecx
 00423D5E    pop         ecx
 00423D5F    pop         ebp
 00423D60    ret
*}
end;

//00423D64
procedure sub_00423D64(?:TCustomMemoryStream; ?:Pointer; ?:Longint);
begin
{*
 00423D64    push        ebp
 00423D65    mov         ebp,esp
 00423D67    add         esp,0FFFFFFF4
 00423D6A    mov         dword ptr [ebp-0C],ecx
 00423D6D    mov         dword ptr [ebp-8],edx
 00423D70    mov         dword ptr [ebp-4],eax
 00423D73    mov         eax,dword ptr [ebp-8]
 00423D76    mov         edx,dword ptr [ebp-4]
 00423D79    mov         dword ptr [edx+4],eax
 00423D7C    mov         eax,dword ptr [ebp-0C]
 00423D7F    mov         edx,dword ptr [ebp-4]
 00423D82    mov         dword ptr [edx+8],eax
 00423D85    mov         esp,ebp
 00423D87    pop         ebp
 00423D88    ret
*}
end;

//00423D8C
{*function sub_00423D8C(?:?; ?:?):?;
begin
 00423D8C    push        ebp
 00423D8D    mov         ebp,esp
 00423D8F    add         esp,0FFFFFFF0
 00423D92    mov         dword ptr [ebp-0C],ecx
 00423D95    mov         dword ptr [ebp-8],edx
 00423D98    mov         dword ptr [ebp-4],eax
 00423D9B    mov         eax,dword ptr [ebp-4]
 00423D9E    cmp         dword ptr [eax+0C],0;TCustomMemoryStream.FPosition:Longint
>00423DA2    jl          00423DEF
 00423DA4    cmp         dword ptr [ebp-0C],0
>00423DA8    jl          00423DEF
 00423DAA    mov         eax,dword ptr [ebp-4]
 00423DAD    mov         eax,dword ptr [eax+8];TCustomMemoryStream.FSize:Longint
 00423DB0    mov         edx,dword ptr [ebp-4]
 00423DB3    sub         eax,dword ptr [edx+0C]
 00423DB6    mov         dword ptr [ebp-10],eax
 00423DB9    cmp         dword ptr [ebp-10],0
>00423DBD    jle         00423DEF
 00423DBF    mov         eax,dword ptr [ebp-10]
 00423DC2    cmp         eax,dword ptr [ebp-0C]
>00423DC5    jle         00423DCD
 00423DC7    mov         eax,dword ptr [ebp-0C]
 00423DCA    mov         dword ptr [ebp-10],eax
 00423DCD    mov         edx,dword ptr [ebp-8]
 00423DD0    mov         eax,dword ptr [ebp-4]
 00423DD3    mov         eax,dword ptr [eax+4];TCustomMemoryStream.FMemory:Pointer
 00423DD6    mov         ecx,dword ptr [ebp-4]
 00423DD9    add         eax,dword ptr [ecx+0C]
 00423DDC    mov         ecx,dword ptr [ebp-10]
 00423DDF    call        Move
 00423DE4    mov         eax,dword ptr [ebp-10]
 00423DE7    mov         edx,dword ptr [ebp-4]
 00423DEA    add         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
>00423DED    jmp         00423DF4
 00423DEF    xor         eax,eax
 00423DF1    mov         dword ptr [ebp-10],eax
 00423DF4    mov         eax,dword ptr [ebp-10]
 00423DF7    mov         esp,ebp
 00423DF9    pop         ebp
 00423DFA    ret
end;*}

//00423DFC
{*function sub_00423DFC(?:?; ?:?):?;
begin
 00423DFC    push        ebp
 00423DFD    mov         ebp,esp
 00423DFF    add         esp,0FFFFFFF0
 00423E02    mov         word ptr [ebp-0A],cx
 00423E06    mov         dword ptr [ebp-8],edx
 00423E09    mov         dword ptr [ebp-4],eax
 00423E0C    mov         ax,word ptr [ebp-0A]
 00423E10    sub         ax,1
>00423E14    jb          00423E1F
>00423E16    je          00423E2A
 00423E18    dec         ax
>00423E1B    je          00423E35
>00423E1D    jmp         00423E44
 00423E1F    mov         eax,dword ptr [ebp-8]
 00423E22    mov         edx,dword ptr [ebp-4]
 00423E25    mov         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
>00423E28    jmp         00423E44
 00423E2A    mov         eax,dword ptr [ebp-8]
 00423E2D    mov         edx,dword ptr [ebp-4]
 00423E30    add         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
>00423E33    jmp         00423E44
 00423E35    mov         eax,dword ptr [ebp-4]
 00423E38    mov         eax,dword ptr [eax+8];TCustomMemoryStream.FSize:Longint
 00423E3B    add         eax,dword ptr [ebp-8]
 00423E3E    mov         edx,dword ptr [ebp-4]
 00423E41    mov         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
 00423E44    mov         eax,dword ptr [ebp-4]
 00423E47    mov         eax,dword ptr [eax+0C];TCustomMemoryStream.FPosition:Longint
 00423E4A    mov         dword ptr [ebp-10],eax
 00423E4D    mov         eax,dword ptr [ebp-10]
 00423E50    mov         esp,ebp
 00423E52    pop         ebp
 00423E53    ret
end;*}

//00423E54
procedure sub_00423E54(?:TResourceStream; ?:TStream);
begin
{*
 00423E54    push        ebp
 00423E55    mov         ebp,esp
 00423E57    add         esp,0FFFFFFF8
 00423E5A    mov         dword ptr [ebp-8],edx
 00423E5D    mov         dword ptr [ebp-4],eax
 00423E60    mov         eax,dword ptr [ebp-4]
 00423E63    cmp         dword ptr [eax+8],0
>00423E67    je          00423E7D
 00423E69    mov         eax,dword ptr [ebp-4]
 00423E6C    mov         edx,dword ptr [eax+4]
 00423E6F    mov         eax,dword ptr [ebp-4]
 00423E72    mov         ecx,dword ptr [eax+8]
 00423E75    mov         eax,dword ptr [ebp-8]
 00423E78    call        TStream.WriteBuffer
 00423E7D    pop         ecx
 00423E7E    pop         ecx
 00423E7F    pop         ebp
 00423E80    ret
*}
end;

//00423E84
procedure sub_00423E84(?:TCustomMemoryStream; ?:AnsiString);
begin
{*
 00423E84    push        ebp
 00423E85    mov         ebp,esp
 00423E87    add         esp,0FFFFFFF4
 00423E8A    mov         dword ptr [ebp-8],edx
 00423E8D    mov         dword ptr [ebp-4],eax
 00423E90    push        0FFFF
 00423E95    mov         ecx,dword ptr [ebp-8]
 00423E98    mov         dl,1
 00423E9A    mov         eax,[0041DD24];TFileStream
 00423E9F    call        TFileStream.Create;TFileStream.Create
 00423EA4    mov         dword ptr [ebp-0C],eax
 00423EA7    xor         eax,eax
 00423EA9    push        ebp
 00423EAA    push        423ED6
 00423EAF    push        dword ptr fs:[eax]
 00423EB2    mov         dword ptr fs:[eax],esp
 00423EB5    mov         edx,dword ptr [ebp-0C]
 00423EB8    mov         eax,dword ptr [ebp-4]
 00423EBB    call        00423E54
 00423EC0    xor         eax,eax
 00423EC2    pop         edx
 00423EC3    pop         ecx
 00423EC4    pop         ecx
 00423EC5    mov         dword ptr fs:[eax],edx
 00423EC8    push        423EDD
 00423ECD    mov         eax,dword ptr [ebp-0C]
 00423ED0    call        TObject.Free
 00423ED5    ret
>00423ED6    jmp         @HandleFinally
>00423EDB    jmp         00423ECD
 00423EDD    mov         esp,ebp
 00423EDF    pop         ebp
 00423EE0    ret
*}
end;

//00423EE4
destructor TMemoryStream.Destroy;
begin
{*
 00423EE4    push        ebp
 00423EE5    mov         ebp,esp
 00423EE7    add         esp,0FFFFFFF8
 00423EEA    call        @BeforeDestruction
 00423EEF    mov         byte ptr [ebp-5],dl
 00423EF2    mov         dword ptr [ebp-4],eax
 00423EF5    mov         eax,dword ptr [ebp-4]
 00423EF8    call        00423F20
 00423EFD    mov         dl,byte ptr [ebp-5]
 00423F00    and         dl,0FC
 00423F03    mov         eax,dword ptr [ebp-4]
 00423F06    call        TObject.Destroy
 00423F0B    cmp         byte ptr [ebp-5],0
>00423F0F    jle         00423F19
 00423F11    mov         eax,dword ptr [ebp-4]
 00423F14    call        @ClassDestroy
 00423F19    pop         ecx
 00423F1A    pop         ecx
 00423F1B    pop         ebp
 00423F1C    ret
*}
end;

//00423F20
procedure sub_00423F20(?:TMemoryStream);
begin
{*
 00423F20    push        ebp
 00423F21    mov         ebp,esp
 00423F23    push        ecx
 00423F24    mov         dword ptr [ebp-4],eax
 00423F27    xor         edx,edx
 00423F29    mov         eax,dword ptr [ebp-4]
 00423F2C    call        00423FE8
 00423F31    mov         eax,dword ptr [ebp-4]
 00423F34    xor         edx,edx
 00423F36    mov         dword ptr [eax+8],edx;TMemoryStream.FSize:Longint
 00423F39    mov         eax,dword ptr [ebp-4]
 00423F3C    xor         edx,edx
 00423F3E    mov         dword ptr [eax+0C],edx;TMemoryStream.FPosition:Longint
 00423F41    pop         ecx
 00423F42    pop         ebp
 00423F43    ret
*}
end;

//00423F44
procedure sub_00423F44(?:TMemoryStream; ?:TFileStream);
begin
{*
 00423F44    push        ebp
 00423F45    mov         ebp,esp
 00423F47    add         esp,0FFFFFFF4
 00423F4A    mov         dword ptr [ebp-8],edx
 00423F4D    mov         dword ptr [ebp-4],eax
 00423F50    push        0
 00423F52    push        0
 00423F54    mov         eax,dword ptr [ebp-8]
 00423F57    call        TStream.SetPosition
 00423F5C    mov         eax,dword ptr [ebp-8]
 00423F5F    mov         edx,dword ptr [eax]
 00423F61    call        dword ptr [edx]
 00423F63    mov         dword ptr [ebp-0C],eax
 00423F66    mov         edx,dword ptr [ebp-0C]
 00423F69    mov         eax,dword ptr [ebp-4]
 00423F6C    mov         ecx,dword ptr [eax]
 00423F6E    call        dword ptr [ecx+4]
 00423F71    cmp         dword ptr [ebp-0C],0
>00423F75    je          00423F88
 00423F77    mov         eax,dword ptr [ebp-4]
 00423F7A    mov         edx,dword ptr [eax+4]
 00423F7D    mov         ecx,dword ptr [ebp-0C]
 00423F80    mov         eax,dword ptr [ebp-8]
 00423F83    call        TStream.ReadBuffer
 00423F88    mov         esp,ebp
 00423F8A    pop         ebp
 00423F8B    ret
*}
end;

//00423F8C
procedure sub_00423F8C(?:TMemoryStream; ?:AnsiString);
begin
{*
 00423F8C    push        ebp
 00423F8D    mov         ebp,esp
 00423F8F    add         esp,0FFFFFFF4
 00423F92    mov         dword ptr [ebp-8],edx
 00423F95    mov         dword ptr [ebp-4],eax
 00423F98    push        20
 00423F9A    mov         ecx,dword ptr [ebp-8]
 00423F9D    mov         dl,1
 00423F9F    mov         eax,[0041DD24];TFileStream
 00423FA4    call        TFileStream.Create;TFileStream.Create
 00423FA9    mov         dword ptr [ebp-0C],eax
 00423FAC    xor         eax,eax
 00423FAE    push        ebp
 00423FAF    push        423FDB
 00423FB4    push        dword ptr fs:[eax]
 00423FB7    mov         dword ptr fs:[eax],esp
 00423FBA    mov         edx,dword ptr [ebp-0C]
 00423FBD    mov         eax,dword ptr [ebp-4]
 00423FC0    call        00423F44
 00423FC5    xor         eax,eax
 00423FC7    pop         edx
 00423FC8    pop         ecx
 00423FC9    pop         ecx
 00423FCA    mov         dword ptr fs:[eax],edx
 00423FCD    push        423FE2
 00423FD2    mov         eax,dword ptr [ebp-0C]
 00423FD5    call        TObject.Free
 00423FDA    ret
>00423FDB    jmp         @HandleFinally
>00423FE0    jmp         00423FD2
 00423FE2    mov         esp,ebp
 00423FE4    pop         ebp
 00423FE5    ret
*}
end;

//00423FE8
{*procedure sub_00423FE8(?:TMemoryStream; ?:?);
begin
 00423FE8    push        ebp
 00423FE9    mov         ebp,esp
 00423FEB    add         esp,0FFFFFFF8
 00423FEE    mov         dword ptr [ebp-8],edx
 00423FF1    mov         dword ptr [ebp-4],eax
 00423FF4    lea         edx,[ebp-8]
 00423FF7    mov         eax,dword ptr [ebp-4]
 00423FFA    mov         ecx,dword ptr [eax]
 00423FFC    call        dword ptr [ecx+1C];TMemoryStream.sub_00424064
 00423FFF    mov         edx,eax
 00424001    mov         eax,dword ptr [ebp-4]
 00424004    mov         ecx,dword ptr [eax+8];TMemoryStream.FSize:Longint
 00424007    mov         eax,dword ptr [ebp-4]
 0042400A    call        00423D64
 0042400F    mov         eax,dword ptr [ebp-8]
 00424012    mov         edx,dword ptr [ebp-4]
 00424015    mov         dword ptr [edx+10],eax;TMemoryStream......FCapacity:Longint
 00424018    pop         ecx
 00424019    pop         ecx
 0042401A    pop         ebp
 0042401B    ret
end;*}

//0042401C
{*procedure sub_0042401C(?:?);
begin
 0042401C    push        ebp
 0042401D    mov         ebp,esp
 0042401F    add         esp,0FFFFFFF4
 00424022    push        ebx
 00424023    mov         dword ptr [ebp-8],edx
 00424026    mov         dword ptr [ebp-4],eax
 00424029    mov         eax,dword ptr [ebp-4]
 0042402C    mov         eax,dword ptr [eax+0C];TMemoryStream.FPosition:Longint
 0042402F    mov         dword ptr [ebp-0C],eax
 00424032    mov         edx,dword ptr [ebp-8]
 00424035    mov         eax,dword ptr [ebp-4]
 00424038    call        00423FE8
 0042403D    mov         eax,dword ptr [ebp-8]
 00424040    mov         edx,dword ptr [ebp-4]
 00424043    mov         dword ptr [edx+8],eax;TMemoryStream.FSize:Longint
 00424046    mov         eax,dword ptr [ebp-0C]
 00424049    cmp         eax,dword ptr [ebp-8]
>0042404C    jle         0042405C
 0042404E    mov         cx,2
 00424052    xor         edx,edx
 00424054    mov         eax,dword ptr [ebp-4]
 00424057    mov         ebx,dword ptr [eax]
 00424059    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0042405C    pop         ebx
 0042405D    mov         esp,ebp
 0042405F    pop         ebp
 00424060    ret
end;*}

//00424064
{*function sub_00424064(?:?):?;
begin
 00424064    push        ebp
 00424065    mov         ebp,esp
 00424067    add         esp,0FFFFFFF4
 0042406A    mov         dword ptr [ebp-8],edx
 0042406D    mov         dword ptr [ebp-4],eax
 00424070    mov         eax,dword ptr [ebp-8]
 00424073    cmp         dword ptr [eax],0
>00424076    jle         00424099
 00424078    mov         eax,dword ptr [ebp-8]
 0042407B    mov         eax,dword ptr [eax]
 0042407D    mov         edx,dword ptr [ebp-4]
 00424080    cmp         eax,dword ptr [edx+8];TMemoryStream.FSize:Longint
>00424083    je          00424099
 00424085    mov         eax,dword ptr [ebp-8]
 00424088    mov         eax,dword ptr [eax]
 0042408A    add         eax,1FFF
 0042408F    and         eax,0FFFFE000
 00424094    mov         edx,dword ptr [ebp-8]
 00424097    mov         dword ptr [edx],eax
 00424099    mov         eax,dword ptr [ebp-4]
 0042409C    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0042409F    mov         dword ptr [ebp-0C],eax
 004240A2    mov         eax,dword ptr [ebp-8]
 004240A5    mov         eax,dword ptr [eax]
 004240A7    mov         edx,dword ptr [ebp-4]
 004240AA    cmp         eax,dword ptr [edx+10];TMemoryStream.......FCapacity:Longint
>004240AD    je          00424122
 004240AF    mov         eax,dword ptr [ebp-8]
 004240B2    cmp         dword ptr [eax],0
>004240B5    jne         004240C9
 004240B7    mov         eax,dword ptr [ebp-4]
 004240BA    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 004240BD    call        00408558
 004240C2    xor         eax,eax
 004240C4    mov         dword ptr [ebp-0C],eax
>004240C7    jmp         00424122
 004240C9    mov         eax,dword ptr [ebp-4]
 004240CC    cmp         dword ptr [eax+10],0;TMemoryStream........FCapacity:Longint
>004240D0    jne         004240E9
 004240D2    mov         edx,dword ptr [ebp-8]
 004240D5    mov         edx,dword ptr [edx]
 004240D7    mov         eax,[0056E4CC];^gvar_0056B024
 004240DC    movzx       eax,word ptr [eax]
 004240DF    call        0040852C
 004240E4    mov         dword ptr [ebp-0C],eax
>004240E7    jmp         00424105
 004240E9    mov         ecx,dword ptr ds:[56E4CC];^gvar_0056B024
 004240EF    movzx       ecx,word ptr [ecx]
 004240F2    mov         edx,dword ptr [ebp-8]
 004240F5    mov         edx,dword ptr [edx]
 004240F7    mov         eax,dword ptr [ebp-4]
 004240FA    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 004240FD    call        0040853C
 00424102    mov         dword ptr [ebp-0C],eax
 00424105    cmp         dword ptr [ebp-0C],0
>00424109    jne         00424122
 0042410B    mov         ecx,dword ptr ds:[56E598];^SMemoryStreamError:TResStringRec
 00424111    mov         dl,1
 00424113    mov         eax,[0041CF14];EStreamError
 00424118    call        Exception.Create;EStreamError.Create
 0042411D    call        @RaiseExcept
 00424122    mov         eax,dword ptr [ebp-0C]
 00424125    mov         esp,ebp
 00424127    pop         ebp
 00424128    ret
end;*}

//0042412C
{*function sub_0042412C(?:?; ?:?):?;
begin
 0042412C    push        ebp
 0042412D    mov         ebp,esp
 0042412F    add         esp,0FFFFFFEC
 00424132    mov         dword ptr [ebp-0C],ecx
 00424135    mov         dword ptr [ebp-8],edx
 00424138    mov         dword ptr [ebp-4],eax
 0042413B    mov         eax,dword ptr [ebp-4]
 0042413E    cmp         dword ptr [eax+0C],0;TMemoryStream.FPosition:Longint
>00424142    jl          004241AE
 00424144    cmp         dword ptr [ebp-0C],0
>00424148    jl          004241AE
 0042414A    mov         eax,dword ptr [ebp-4]
 0042414D    mov         eax,dword ptr [eax+0C];TMemoryStream.FPosition:Longint
 00424150    add         eax,dword ptr [ebp-0C]
 00424153    mov         dword ptr [ebp-14],eax
 00424156    cmp         dword ptr [ebp-14],0
>0042415A    jle         004241AE
 0042415C    mov         eax,dword ptr [ebp-14]
 0042415F    mov         edx,dword ptr [ebp-4]
 00424162    cmp         eax,dword ptr [edx+8];TMemoryStream.FSize:Longint
>00424165    jle         00424186
 00424167    mov         eax,dword ptr [ebp-14]
 0042416A    mov         edx,dword ptr [ebp-4]
 0042416D    cmp         eax,dword ptr [edx+10];TMemoryStream.........FCapacity:Longint
>00424170    jle         0042417D
 00424172    mov         edx,dword ptr [ebp-14]
 00424175    mov         eax,dword ptr [ebp-4]
 00424178    call        00423FE8
 0042417D    mov         eax,dword ptr [ebp-14]
 00424180    mov         edx,dword ptr [ebp-4]
 00424183    mov         dword ptr [edx+8],eax;TMemoryStream.FSize:Longint
 00424186    mov         eax,dword ptr [ebp-4]
 00424189    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0042418C    mov         eax,dword ptr [ebp-4]
 0042418F    add         edx,dword ptr [eax+0C];TMemoryStream.FPosition:Longint
 00424192    mov         eax,dword ptr [ebp-8]
 00424195    mov         ecx,dword ptr [ebp-0C]
 00424198    call        Move
 0042419D    mov         eax,dword ptr [ebp-14]
 004241A0    mov         edx,dword ptr [ebp-4]
 004241A3    mov         dword ptr [edx+0C],eax;TMemoryStream.FPosition:Longint
 004241A6    mov         eax,dword ptr [ebp-0C]
 004241A9    mov         dword ptr [ebp-10],eax
>004241AC    jmp         004241B3
 004241AE    xor         eax,eax
 004241B0    mov         dword ptr [ebp-10],eax
 004241B3    mov         eax,dword ptr [ebp-10]
 004241B6    mov         esp,ebp
 004241B8    pop         ebp
 004241B9    ret
end;*}

//004241BC
{*constructor TResourceStream.Create(?:?; ?:?);
begin
 004241BC    push        ebp
 004241BD    mov         ebp,esp
 004241BF    add         esp,0FFFFFFF4
 004241C2    test        dl,dl
>004241C4    je          004241CE
 004241C6    add         esp,0FFFFFFF0
 004241C9    call        @ClassCreate
 004241CE    mov         dword ptr [ebp-0C],ecx
 004241D1    mov         byte ptr [ebp-5],dl
 004241D4    mov         dword ptr [ebp-4],eax
 004241D7    xor         edx,edx
 004241D9    mov         eax,dword ptr [ebp-4]
 004241DC    call        TObject.Create
 004241E1    mov         eax,dword ptr [ebp+8]
 004241E4    push        eax
 004241E5    mov         eax,dword ptr [ebp+0C]
 004241E8    call        @LStrToPChar
 004241ED    mov         ecx,eax
 004241EF    mov         edx,dword ptr [ebp-0C]
 004241F2    mov         eax,dword ptr [ebp-4]
 004241F5    call        0042428C
 004241FA    mov         eax,dword ptr [ebp-4]
 004241FD    cmp         byte ptr [ebp-5],0
>00424201    je          00424212
 00424203    call        @AfterConstruction
 00424208    pop         dword ptr fs:[0]
 0042420F    add         esp,0C
 00424212    mov         eax,dword ptr [ebp-4]
 00424215    mov         esp,ebp
 00424217    pop         ebp
 00424218    ret         8
end;*}

//0042421C
procedure Error;
begin
{*
 0042421C    push        ebp
 0042421D    mov         ebp,esp
 0042421F    add         esp,0FFFFFFF4
 00424222    xor         eax,eax
 00424224    mov         dword ptr [ebp-0C],eax
 00424227    xor         eax,eax
 00424229    push        ebp
 0042422A    push        42427F
 0042422F    push        dword ptr fs:[eax]
 00424232    mov         dword ptr fs:[eax],esp
 00424235    mov         eax,dword ptr [ebp+8]
 00424238    mov         eax,dword ptr [eax-4]
 0042423B    mov         dword ptr [ebp-8],eax
 0042423E    mov         byte ptr [ebp-4],6
 00424242    lea         eax,[ebp-8]
 00424245    push        eax
 00424246    push        0
 00424248    lea         edx,[ebp-0C]
 0042424B    mov         eax,[0056E294];^SResNotFound:TResStringRec
 00424250    call        LoadResString
 00424255    mov         ecx,dword ptr [ebp-0C]
 00424258    mov         dl,1
 0042425A    mov         eax,[0041D1E8];EResNotFound
 0042425F    call        Exception.CreateFmt
 00424264    call        @RaiseExcept
 00424269    xor         eax,eax
 0042426B    pop         edx
 0042426C    pop         ecx
 0042426D    pop         ecx
 0042426E    mov         dword ptr fs:[eax],edx
 00424271    push        424286
 00424276    lea         eax,[ebp-0C]
 00424279    call        @LStrClr
 0042427E    ret
>0042427F    jmp         @HandleFinally
>00424284    jmp         00424276
 00424286    mov         esp,ebp
 00424288    pop         ebp
 00424289    ret
*}
end;

//0042428C
{*procedure sub_0042428C(?:TResourceStream; ?:?; ?:PChar; ?:?);
begin
 0042428C    push        ebp
 0042428D    mov         ebp,esp
 0042428F    add         esp,0FFFFFFF4
 00424292    mov         dword ptr [ebp-4],ecx
 00424295    mov         dword ptr [ebp-0C],edx
 00424298    mov         dword ptr [ebp-8],eax
 0042429B    mov         eax,dword ptr [ebp+8]
 0042429E    push        eax
 0042429F    mov         eax,dword ptr [ebp-4]
 004242A2    push        eax
 004242A3    mov         eax,dword ptr [ebp-0C]
 004242A6    push        eax
 004242A7    call        kernel32.FindResourceA
 004242AC    mov         edx,dword ptr [ebp-8]
 004242AF    mov         dword ptr [edx+10],eax;TResourceStream.HResInfo:THandle
 004242B2    mov         eax,dword ptr [ebp-8]
 004242B5    cmp         dword ptr [eax+10],0;TResourceStream.HResInfo:THandle
>004242B9    jne         004242C2
 004242BB    push        ebp
 004242BC    call        Error
 004242C1    pop         ecx
 004242C2    mov         eax,dword ptr [ebp-8]
 004242C5    mov         eax,dword ptr [eax+10];TResourceStream.HResInfo:THandle
 004242C8    push        eax
 004242C9    mov         eax,dword ptr [ebp-0C]
 004242CC    push        eax
 004242CD    call        kernel32.LoadResource
 004242D2    mov         edx,dword ptr [ebp-8]
 004242D5    mov         dword ptr [edx+14],eax;TResourceStream.HGlobal:THandle
 004242D8    mov         eax,dword ptr [ebp-8]
 004242DB    cmp         dword ptr [eax+14],0;TResourceStream.HGlobal:THandle
>004242DF    jne         004242E8
 004242E1    push        ebp
 004242E2    call        Error
 004242E7    pop         ecx
 004242E8    mov         eax,dword ptr [ebp-8]
 004242EB    mov         eax,dword ptr [eax+10];TResourceStream.HResInfo:THandle
 004242EE    push        eax
 004242EF    mov         eax,dword ptr [ebp-0C]
 004242F2    push        eax
 004242F3    call        kernel32.SizeofResource
 004242F8    push        eax
 004242F9    mov         eax,dword ptr [ebp-8]
 004242FC    mov         eax,dword ptr [eax+14];TResourceStream.HGlobal:THandle
 004242FF    push        eax
 00424300    call        kernel32.LockResource
 00424305    mov         edx,eax
 00424307    mov         eax,dword ptr [ebp-8]
 0042430A    pop         ecx
 0042430B    call        00423D64
 00424310    mov         esp,ebp
 00424312    pop         ebp
 00424313    ret         4
end;*}

//00424318
destructor TResourceStream.Destroy;
begin
{*
 00424318    push        ebp
 00424319    mov         ebp,esp
 0042431B    add         esp,0FFFFFFF8
 0042431E    call        @BeforeDestruction
 00424323    mov         byte ptr [ebp-5],dl
 00424326    mov         dword ptr [ebp-4],eax
 00424329    mov         eax,dword ptr [ebp-4]
 0042432C    mov         eax,dword ptr [eax+14];TResourceStream.HGlobal:THandle
 0042432F    call        00408514
 00424334    mov         eax,dword ptr [ebp-4]
 00424337    mov         eax,dword ptr [eax+14];TResourceStream.HGlobal:THandle
 0042433A    push        eax
 0042433B    call        kernel32.FreeResource
 00424340    mov         dl,byte ptr [ebp-5]
 00424343    and         dl,0FC
 00424346    mov         eax,dword ptr [ebp-4]
 00424349    call        TObject.Destroy
 0042434E    cmp         byte ptr [ebp-5],0
>00424352    jle         0042435C
 00424354    mov         eax,dword ptr [ebp-4]
 00424357    call        @ClassDestroy
 0042435C    pop         ecx
 0042435D    pop         ecx
 0042435E    pop         ebp
 0042435F    ret
*}
end;

//00424360
{*function sub_00424360(?:?; ?:?):?;
begin
 00424360    push        ebp
 00424361    mov         ebp,esp
 00424363    add         esp,0FFFFFFF0
 00424366    mov         dword ptr [ebp-10],ecx
 00424369    mov         dword ptr [ebp-0C],edx
 0042436C    mov         dword ptr [ebp-4],eax
 0042436F    mov         ecx,dword ptr ds:[56E2C4];^SCantWriteResourceStreamError:TResStringRec
 00424375    mov         dl,1
 00424377    mov         eax,[0041CF14];EStreamError
 0042437C    call        Exception.Create;EStreamError.Create
 00424381    call        @RaiseExcept
 00424386    mov         eax,dword ptr [ebp-8]
 00424389    mov         esp,ebp
 0042438B    pop         ebp
 0042438C    ret
end;*}

//00424390
constructor TFiler.Create(Stream:TStream; BufSize:Integer);
begin
{*
 00424390    push        ebp
 00424391    mov         ebp,esp
 00424393    add         esp,0FFFFFFF4
 00424396    test        dl,dl
>00424398    je          004243A2
 0042439A    add         esp,0FFFFFFF0
 0042439D    call        @ClassCreate
 004243A2    mov         dword ptr [ebp-0C],ecx
 004243A5    mov         byte ptr [ebp-5],dl
 004243A8    mov         dword ptr [ebp-4],eax
 004243AB    mov         eax,dword ptr [ebp-4]
 004243AE    mov         edx,dword ptr [ebp-0C]
 004243B1    mov         dword ptr [eax+4],edx
 004243B4    mov         eax,dword ptr [ebp+8]
 004243B7    call        @GetMem
 004243BC    mov         edx,dword ptr [ebp-4]
 004243BF    mov         dword ptr [edx+8],eax
 004243C2    mov         eax,dword ptr [ebp-4]
 004243C5    mov         edx,dword ptr [ebp+8]
 004243C8    mov         dword ptr [eax+0C],edx
 004243CB    mov         eax,dword ptr [ebp-4]
 004243CE    cmp         byte ptr [ebp-5],0
>004243D2    je          004243E3
 004243D4    call        @AfterConstruction
 004243D9    pop         dword ptr fs:[0]
 004243E0    add         esp,0C
 004243E3    mov         eax,dword ptr [ebp-4]
 004243E6    mov         esp,ebp
 004243E8    pop         ebp
 004243E9    ret         4
*}
end;

//004243EC
destructor TFiler.Destroy;
begin
{*
 004243EC    push        ebp
 004243ED    mov         ebp,esp
 004243EF    add         esp,0FFFFFFF8
 004243F2    call        @BeforeDestruction
 004243F7    mov         byte ptr [ebp-5],dl
 004243FA    mov         dword ptr [ebp-4],eax
 004243FD    mov         eax,dword ptr [ebp-4]
 00424400    cmp         dword ptr [eax+8],0
>00424404    je          00424417
 00424406    mov         eax,dword ptr [ebp-4]
 00424409    mov         edx,dword ptr [eax+0C]
 0042440C    mov         eax,dword ptr [ebp-4]
 0042440F    mov         eax,dword ptr [eax+8]
 00424412    call        @FreeMem
 00424417    cmp         byte ptr [ebp-5],0
>0042441B    jle         00424425
 0042441D    mov         eax,dword ptr [ebp-4]
 00424420    call        @ClassDestroy
 00424425    pop         ecx
 00424426    pop         ecx
 00424427    pop         ebp
 00424428    ret
*}
end;

//0042442C
{*procedure sub_0042442C(?:?);
begin
 0042442C    push        ebp
 0042442D    mov         ebp,esp
 0042442F    add         esp,0FFFFFFF8
 00424432    mov         dword ptr [ebp-8],edx
 00424435    mov         dword ptr [ebp-4],eax
 00424438    mov         eax,dword ptr [ebp-8]
 0042443B    mov         edx,dword ptr [ebp-4]
 0042443E    mov         dword ptr [edx+18],eax;TFiler.FRoot:TComponent
 00424441    pop         ecx
 00424442    pop         ecx
 00424443    pop         ebp
 00424444    ret
end;*}

//00424520
constructor TPropFixup.Create(Instance:TPersistent; InstanceRoot:TComponent; PropInfo:PPropInfo; const RootName:AnsiString; const Name:AnsiString);
begin
{*
 00424520    push        ebp
 00424521    mov         ebp,esp
 00424523    add         esp,0FFFFFFF4
 00424526    test        dl,dl
>00424528    je          00424532
 0042452A    add         esp,0FFFFFFF0
 0042452D    call        @ClassCreate
 00424532    mov         dword ptr [ebp-0C],ecx
 00424535    mov         byte ptr [ebp-5],dl
 00424538    mov         dword ptr [ebp-4],eax
 0042453B    mov         eax,dword ptr [ebp-4]
 0042453E    mov         edx,dword ptr [ebp-0C]
 00424541    mov         dword ptr [eax+4],edx
 00424544    mov         eax,dword ptr [ebp-4]
 00424547    mov         edx,dword ptr [ebp+14]
 0042454A    mov         dword ptr [eax+8],edx
 0042454D    mov         eax,dword ptr [ebp-4]
 00424550    mov         edx,dword ptr [ebp+10]
 00424553    mov         dword ptr [eax+0C],edx
 00424556    mov         eax,dword ptr [ebp-4]
 00424559    add         eax,10
 0042455C    mov         edx,dword ptr [ebp+0C]
 0042455F    call        @LStrAsg
 00424564    mov         eax,dword ptr [ebp-4]
 00424567    add         eax,14
 0042456A    mov         edx,dword ptr [ebp+8]
 0042456D    call        @LStrAsg
 00424572    mov         eax,dword ptr [ebp-4]
 00424575    cmp         byte ptr [ebp-5],0
>00424579    je          0042458A
 0042457B    call        @AfterConstruction
 00424580    pop         dword ptr fs:[0]
 00424587    add         esp,0C
 0042458A    mov         eax,dword ptr [ebp-4]
 0042458D    mov         esp,ebp
 0042458F    pop         ebp
 00424590    ret         10
*}
end;

//00424594
{*function sub_00424594(?:Pointer):?;
begin
 00424594    push        ebp
 00424595    mov         ebp,esp
 00424597    add         esp,0FFFFFFF0
 0042459A    mov         dword ptr [ebp-4],eax
 0042459D    mov         byte ptr [ebp-5],0
 004245A1    mov         eax,dword ptr [ebp-4]
 004245A4    mov         eax,dword ptr [eax+14]
 004245A7    mov         dword ptr [ebp-0C],eax
 004245AA    mov         eax,dword ptr [ebp-0C]
 004245AD    mov         dword ptr [ebp-10],eax
>004245B0    jmp         004245B5
 004245B2    inc         dword ptr [ebp-10]
 004245B5    mov         eax,dword ptr [ebp-10]
 004245B8    mov         al,byte ptr [eax]
 004245BA    test        al,al
>004245BC    je          004245C2
 004245BE    sub         al,2E
>004245C0    jne         004245B2
 004245C2    mov         eax,dword ptr [ebp-10]
 004245C5    cmp         byte ptr [eax],0
>004245C8    je          004245F9
 004245CA    mov         ecx,dword ptr [ebp-10]
 004245CD    sub         ecx,dword ptr [ebp-0C]
 004245D0    mov         eax,dword ptr [ebp-4]
 004245D3    add         eax,10
 004245D6    mov         edx,dword ptr [ebp-0C]
 004245D9    call        @LStrFromPCharLen
 004245DE    mov         ecx,dword ptr [ebp-10]
 004245E1    sub         ecx,dword ptr [ebp-0C]
 004245E4    inc         ecx
 004245E5    mov         eax,dword ptr [ebp-4]
 004245E8    add         eax,14
 004245EB    mov         edx,1
 004245F0    call        @LStrDelete
 004245F5    mov         byte ptr [ebp-5],1
 004245F9    mov         al,byte ptr [ebp-5]
 004245FC    mov         esp,ebp
 004245FE    pop         ebp
 004245FF    ret
end;*}

//00424600
{*procedure sub_00424600(?:?);
begin
 00424600    push        ebp
 00424601    mov         ebp,esp
 00424603    add         esp,0FFFFFFF8
 00424606    mov         dword ptr [ebp-8],edx
 00424609    mov         dword ptr [ebp-4],eax
 0042460C    mov         ecx,dword ptr [ebp-8]
 0042460F    mov         eax,dword ptr [ebp-4]
 00424612    mov         edx,dword ptr [eax+0C];TPropFixup.FPropInfo:PPropInfo
 00424615    mov         eax,dword ptr [ebp-4]
 00424618    mov         eax,dword ptr [eax+4];TPropFixup.FInstance:TPersistent
 0042461B    call        SetOrdProp
 00424620    pop         ecx
 00424621    pop         ecx
 00424622    pop         ebp
 00424623    ret
end;*}

//00424624
{*procedure sub_00424624(?:?);
begin
 00424624    push        ebp
 00424625    mov         ebp,esp
 00424627    add         esp,0FFFFFFF4
 0042462A    xor         ecx,ecx
 0042462C    mov         dword ptr [ebp-0C],ecx
 0042462F    mov         dword ptr [ebp-8],edx
 00424632    mov         dword ptr [ebp-4],eax
 00424635    xor         eax,eax
 00424637    push        ebp
 00424638    push        4246AD
 0042463D    push        dword ptr fs:[eax]
 00424640    mov         dword ptr fs:[eax],esp
 00424643    lea         eax,[ebp-0C]
 00424646    call        @IntfClear
 0042464B    cmp         dword ptr [ebp-8],0
>0042464F    je          00424683
 00424651    mov         eax,dword ptr [ebp-4]
 00424654    mov         eax,dword ptr [eax+0C];TPropIntfFixup.FPropInfo:PPropInfo
 00424657    mov         eax,dword ptr [eax]
 00424659    mov         eax,dword ptr [eax]
 0042465B    call        GetTypeData
 00424660    add         eax,5
 00424663    push        eax
 00424664    lea         eax,[ebp-0C]
 00424667    call        @IntfClear
 0042466C    mov         ecx,eax
 0042466E    mov         eax,dword ptr [ebp-8]
 00424671    pop         edx
 00424672    call        00412890
 00424677    test        al,al
>00424679    jne         00424683
 0042467B    lea         eax,[ebp-0C]
 0042467E    call        @IntfClear
 00424683    mov         ecx,dword ptr [ebp-0C]
 00424686    mov         eax,dword ptr [ebp-4]
 00424689    mov         edx,dword ptr [eax+0C];TPropIntfFixup.FPropInfo:PPropInfo
 0042468C    mov         eax,dword ptr [ebp-4]
 0042468F    mov         eax,dword ptr [eax+4];TPropIntfFixup.FInstance:TPersistent
 00424692    call        SetInterfaceProp
 00424697    xor         eax,eax
 00424699    pop         edx
 0042469A    pop         ecx
 0042469B    pop         ecx
 0042469C    mov         dword ptr fs:[eax],edx
 0042469F    push        4246B4
 004246A4    lea         eax,[ebp-0C]
 004246A7    call        @IntfClear
 004246AC    ret
>004246AD    jmp         @HandleFinally
>004246B2    jmp         004246A4
 004246B4    mov         esp,ebp
 004246B6    pop         ebp
 004246B7    ret
end;*}

//004246B8
{*function sub_004246B8(?:?; ?:AnsiString):?;
begin
 004246B8    push        ebp
 004246B9    mov         ebp,esp
 004246BB    add         esp,0FFFFFFE0
 004246BE    xor         ecx,ecx
 004246C0    mov         dword ptr [ebp-20],ecx
 004246C3    mov         dword ptr [ebp-8],edx
 004246C6    mov         dword ptr [ebp-4],eax
 004246C9    xor         eax,eax
 004246CB    push        ebp
 004246CC    push        4247A2
 004246D1    push        dword ptr fs:[eax]
 004246D4    mov         dword ptr fs:[eax],esp
 004246D7    xor         eax,eax
 004246D9    mov         dword ptr [ebp-0C],eax
 004246DC    cmp         dword ptr [ebp-8],0
>004246E0    je          0042478C
 004246E6    mov         eax,dword ptr [ebp-4]
 004246E9    mov         dword ptr [ebp-10],eax
 004246EC    mov         eax,dword ptr [ebp-8]
 004246EF    mov         dword ptr [ebp-1C],eax
>004246F2    jmp         0042477A
 004246F7    mov         eax,dword ptr [ebp-1C]
 004246FA    mov         dword ptr [ebp-18],eax
>004246FD    jmp         00424702
 004246FF    inc         dword ptr [ebp-1C]
 00424702    mov         eax,dword ptr [ebp-1C]
 00424705    mov         al,byte ptr [eax]
 00424707    test        al,al
>00424709    je          00424711
 0042470B    add         al,0D3
 0042470D    sub         al,2
>0042470F    jae         004246FF
 00424711    mov         ecx,dword ptr [ebp-1C]
 00424714    sub         ecx,dword ptr [ebp-18]
 00424717    lea         eax,[ebp-20]
 0042471A    mov         edx,dword ptr [ebp-18]
 0042471D    call        @LStrFromPCharLen
 00424722    mov         edx,dword ptr [ebp-20]
 00424725    mov         eax,dword ptr [ebp-10]
 00424728    call        0042A98C
 0042472D    mov         dword ptr [ebp-14],eax
 00424730    cmp         dword ptr [ebp-14],0
>00424734    jne         0042474D
 00424736    mov         edx,4247B8;'Owner'
 0042473B    mov         eax,dword ptr [ebp-20]
 0042473E    call        SameText
 00424743    test        al,al
>00424745    je          0042474D
 00424747    mov         eax,dword ptr [ebp-10]
 0042474A    mov         dword ptr [ebp-14],eax
 0042474D    cmp         dword ptr [ebp-14],0
>00424751    je          0042478C
 00424753    mov         eax,dword ptr [ebp-1C]
 00424756    cmp         byte ptr [eax],2E
>00424759    jne         0042475E
 0042475B    inc         dword ptr [ebp-1C]
 0042475E    mov         eax,dword ptr [ebp-1C]
 00424761    cmp         byte ptr [eax],2D
>00424764    jne         00424769
 00424766    inc         dword ptr [ebp-1C]
 00424769    mov         eax,dword ptr [ebp-1C]
 0042476C    cmp         byte ptr [eax],3E
>0042476F    jne         00424774
 00424771    inc         dword ptr [ebp-1C]
 00424774    mov         eax,dword ptr [ebp-14]
 00424777    mov         dword ptr [ebp-10],eax
 0042477A    mov         eax,dword ptr [ebp-1C]
 0042477D    cmp         byte ptr [eax],0
>00424780    jne         004246F7
 00424786    mov         eax,dword ptr [ebp-10]
 00424789    mov         dword ptr [ebp-0C],eax
 0042478C    xor         eax,eax
 0042478E    pop         edx
 0042478F    pop         ecx
 00424790    pop         ecx
 00424791    mov         dword ptr fs:[eax],edx
 00424794    push        4247A9
 00424799    lea         eax,[ebp-20]
 0042479C    call        @LStrClr
 004247A1    ret
>004247A2    jmp         @HandleFinally
>004247A7    jmp         00424799
 004247A9    mov         eax,dword ptr [ebp-0C]
 004247AC    mov         esp,ebp
 004247AE    pop         ebp
 004247AF    ret
end;*}

//004247C0
{*procedure sub_004247C0(?:?; ?:?);
begin
 004247C0    push        ebp
 004247C1    mov         ebp,esp
 004247C3    push        ecx
 004247C4    mov         dword ptr [ebp-4],eax
 004247C7    mov         eax,dword ptr [ebp+8]
 004247CA    mov         eax,dword ptr [eax-4]
 004247CD    mov         edx,dword ptr [ebp-4]
 004247D0    call        004202BC
 004247D5    test        eax,eax
>004247D7    jge         004247F9
 004247D9    mov         eax,dword ptr [ebp+8]
 004247DC    mov         eax,dword ptr [eax-8]
 004247DF    mov         edx,dword ptr [ebp-4]
 004247E2    call        004202BC
 004247E7    test        eax,eax
>004247E9    jl          004247F9
 004247EB    mov         eax,dword ptr [ebp+8]
 004247EE    mov         eax,dword ptr [eax-4]
 004247F1    mov         edx,dword ptr [ebp-4]
 004247F4    call        TList.Add
 004247F9    pop         ecx
 004247FA    pop         ebp
 004247FB    ret
end;*}

//004247FC
{*procedure sub_004247FC(?:?; ?:?);
begin
 004247FC    push        ebp
 004247FD    mov         ebp,esp
 004247FF    add         esp,0FFFFFFF8
 00424802    mov         dword ptr [ebp-4],eax
 00424805    mov         eax,dword ptr [ebp+8]
 00424808    mov         eax,dword ptr [eax-4]
 0042480B    mov         edx,dword ptr [ebp-4]
 0042480E    call        004202BC
 00424813    mov         dword ptr [ebp-8],eax
 00424816    cmp         dword ptr [ebp-8],0FFFFFFFF
>0042481A    je          0042482A
 0042481C    mov         eax,dword ptr [ebp+8]
 0042481F    mov         eax,dword ptr [eax-4]
 00424822    mov         edx,dword ptr [ebp-8]
 00424825    call        00420094
 0042482A    mov         eax,dword ptr [ebp+8]
 0042482D    mov         eax,dword ptr [eax-8]
 00424830    mov         edx,dword ptr [ebp-4]
 00424833    call        004202BC
 00424838    test        eax,eax
>0042483A    jge         0042484A
 0042483C    mov         eax,dword ptr [ebp+8]
 0042483F    mov         eax,dword ptr [eax-8]
 00424842    mov         edx,dword ptr [ebp-4]
 00424845    call        TList.Add
 0042484A    pop         ecx
 0042484B    pop         ecx
 0042484C    pop         ebp
 0042484D    ret
end;*}

//00424850
procedure sub_00424850;
begin
{*
 00424850    push        ebp
 00424851    mov         ebp,esp
 00424853    add         esp,0FFFFFFDC
 00424856    mov         eax,[00571A74];0x0 GlobalNameSpace:IReadWriteSync
 0042485B    mov         edx,dword ptr [eax]
 0042485D    call        dword ptr [edx+14]
 00424860    xor         eax,eax
 00424862    push        ebp
 00424863    push        424A2B
 00424868    push        dword ptr fs:[eax]
 0042486B    mov         dword ptr fs:[eax],esp
 0042486E    mov         eax,[00571A90];0x0 GlobalFixupList:TThreadList
 00424873    call        TThreadList.LockList
 00424878    mov         dword ptr [ebp-0C],eax
 0042487B    xor         eax,eax
 0042487D    push        ebp
 0042487E    push        424A0C
 00424883    push        dword ptr fs:[eax]
 00424886    mov         dword ptr fs:[eax],esp
 00424889    mov         eax,dword ptr [ebp-0C]
 0042488C    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>00424890    jle         004249F4
 00424896    mov         dl,1
 00424898    mov         eax,[0041D46C];TList
 0042489D    call        TObject.Create;TList.Create
 004248A2    mov         dword ptr [ebp-4],eax
 004248A5    xor         eax,eax
 004248A7    push        ebp
 004248A8    push        4249ED
 004248AD    push        dword ptr fs:[eax]
 004248B0    mov         dword ptr fs:[eax],esp
 004248B3    mov         dl,1
 004248B5    mov         eax,[0041D46C];TList
 004248BA    call        TObject.Create;TList.Create
 004248BF    mov         dword ptr [ebp-8],eax
 004248C2    xor         eax,eax
 004248C4    push        ebp
 004248C5    push        424989
 004248CA    push        dword ptr fs:[eax]
 004248CD    mov         dword ptr fs:[eax],esp
 004248D0    xor         eax,eax
 004248D2    mov         dword ptr [ebp-10],eax
>004248D5    jmp         00424964
 004248DA    mov         edx,dword ptr [ebp-10]
 004248DD    mov         eax,dword ptr [ebp-0C]
 004248E0    call        TList.Get
 004248E5    mov         dword ptr [ebp-20],eax
 004248E8    mov         eax,dword ptr [ebp-20]
 004248EB    mov         eax,dword ptr [eax+10]
 004248EE    call        0041FA88
 004248F3    mov         dword ptr [ebp-14],eax
 004248F6    cmp         dword ptr [ebp-14],0
>004248FA    jne         00424911
 004248FC    mov         eax,dword ptr [ebp-20]
 004248FF    mov         edx,dword ptr [eax+0C]
 00424902    mov         eax,dword ptr [ebp-20]
 00424905    mov         eax,dword ptr [eax+4]
 00424908    call        GetOrdProp
 0042490D    test        eax,eax
>0042490F    je          00424954
 00424911    cmp         dword ptr [ebp-14],0
>00424915    je          00424932
 00424917    mov         eax,dword ptr [ebp-20]
 0042491A    mov         edx,dword ptr [eax+14]
 0042491D    mov         eax,dword ptr [ebp-14]
 00424920    call        004246B8
 00424925    mov         dword ptr [ebp-1C],eax
 00424928    mov         edx,dword ptr [ebp-1C]
 0042492B    mov         eax,dword ptr [ebp-20]
 0042492E    mov         ecx,dword ptr [eax]
 00424930    call        dword ptr [ecx]
 00424932    push        ebp
 00424933    mov         eax,dword ptr [ebp-20]
 00424936    mov         eax,dword ptr [eax+4]
 00424939    call        004247C0
 0042493E    pop         ecx
 0042493F    mov         edx,dword ptr [ebp-10]
 00424942    mov         eax,dword ptr [ebp-0C]
 00424945    call        00420094
 0042494A    mov         eax,dword ptr [ebp-20]
 0042494D    call        TObject.Free
>00424952    jmp         00424964
 00424954    push        ebp
 00424955    mov         eax,dword ptr [ebp-20]
 00424958    mov         eax,dword ptr [eax+4]
 0042495B    call        004247FC
 00424960    pop         ecx
 00424961    inc         dword ptr [ebp-10]
 00424964    mov         eax,dword ptr [ebp-0C]
 00424967    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0042496A    cmp         eax,dword ptr [ebp-10]
>0042496D    jg          004248DA
 00424973    xor         eax,eax
 00424975    pop         edx
 00424976    pop         ecx
 00424977    pop         ecx
 00424978    mov         dword ptr fs:[eax],edx
 0042497B    push        424990
 00424980    mov         eax,dword ptr [ebp-8]
 00424983    call        TObject.Free
 00424988    ret
>00424989    jmp         @HandleFinally
>0042498E    jmp         00424980
 00424990    mov         eax,dword ptr [ebp-4]
 00424993    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00424996    dec         eax
 00424997    test        eax,eax
>00424999    jl          004249D7
 0042499B    inc         eax
 0042499C    mov         dword ptr [ebp-24],eax
 0042499F    mov         dword ptr [ebp-10],0
 004249A6    mov         edx,dword ptr [ebp-10]
 004249A9    mov         eax,dword ptr [ebp-4]
 004249AC    call        TList.Get
 004249B1    mov         dword ptr [ebp-18],eax
 004249B4    mov         eax,dword ptr [ebp-18]
 004249B7    mov         edx,dword ptr ds:[41E3B8];TComponent
 004249BD    call        @IsClass
 004249C2    test        al,al
>004249C4    je          004249CF
 004249C6    mov         eax,dword ptr [ebp-18]
 004249C9    and         word ptr [eax+1C],0FF7F
 004249CF    inc         dword ptr [ebp-10]
 004249D2    dec         dword ptr [ebp-24]
>004249D5    jne         004249A6
 004249D7    xor         eax,eax
 004249D9    pop         edx
 004249DA    pop         ecx
 004249DB    pop         ecx
 004249DC    mov         dword ptr fs:[eax],edx
 004249DF    push        4249F4
 004249E4    mov         eax,dword ptr [ebp-4]
 004249E7    call        TObject.Free
 004249EC    ret
>004249ED    jmp         @HandleFinally
>004249F2    jmp         004249E4
 004249F4    xor         eax,eax
 004249F6    pop         edx
 004249F7    pop         ecx
 004249F8    pop         ecx
 004249F9    mov         dword ptr fs:[eax],edx
 004249FC    push        424A13
 00424A01    mov         eax,[00571A90];0x0 GlobalFixupList:TThreadList
 00424A06    call        TThreadList.UnlockList
 00424A0B    ret
>00424A0C    jmp         @HandleFinally
>00424A11    jmp         00424A01
 00424A13    xor         eax,eax
 00424A15    pop         edx
 00424A16    pop         ecx
 00424A17    pop         ecx
 00424A18    mov         dword ptr fs:[eax],edx
 00424A1B    push        424A32
 00424A20    mov         eax,[00571A74];0x0 GlobalNameSpace:IReadWriteSync
 00424A25    mov         edx,dword ptr [eax]
 00424A27    call        dword ptr [edx+18]
 00424A2A    ret
>00424A2B    jmp         @HandleFinally
>00424A30    jmp         00424A20
 00424A32    mov         esp,ebp
 00424A34    pop         ebp
 00424A35    ret
*}
end;

//00424A38
procedure RemoveFixupReferences(Root:TComponent; const RootName:AnsiString);
begin
{*
 00424A38    push        ebp
 00424A39    mov         ebp,esp
 00424A3B    add         esp,0FFFFFFEC
 00424A3E    mov         dword ptr [ebp-8],edx
 00424A41    mov         dword ptr [ebp-4],eax
 00424A44    cmp         dword ptr ds:[571A90],0;GlobalFixupList:TThreadList
>00424A4B    je          00424AED
 00424A51    mov         eax,[00571A90];GlobalFixupList:TThreadList
 00424A56    call        TThreadList.LockList
 00424A5B    mov         dword ptr [ebp-14],eax
 00424A5E    xor         eax,eax
 00424A60    push        ebp
 00424A61    push        424AE6
 00424A66    push        dword ptr fs:[eax]
 00424A69    mov         dword ptr fs:[eax],esp
 00424A6C    mov         eax,dword ptr [ebp-14]
 00424A6F    mov         eax,dword ptr [eax+8]
 00424A72    dec         eax
 00424A73    cmp         eax,0
>00424A76    jl          00424ACE
 00424A78    mov         dword ptr [ebp-0C],eax
 00424A7B    mov         edx,dword ptr [ebp-0C]
 00424A7E    mov         eax,dword ptr [ebp-14]
 00424A81    call        TList.Get
 00424A86    mov         dword ptr [ebp-10],eax
 00424A89    cmp         dword ptr [ebp-4],0
>00424A8D    je          00424A9A
 00424A8F    mov         eax,dword ptr [ebp-10]
 00424A92    mov         eax,dword ptr [eax+8]
 00424A95    cmp         eax,dword ptr [ebp-4]
>00424A98    jne         00424AC5
 00424A9A    cmp         dword ptr [ebp-8],0
>00424A9E    je          00424AB2
 00424AA0    mov         eax,dword ptr [ebp-10]
 00424AA3    mov         edx,dword ptr [eax+10]
 00424AA6    mov         eax,dword ptr [ebp-8]
 00424AA9    call        SameText
 00424AAE    test        al,al
>00424AB0    je          00424AC5
 00424AB2    mov         edx,dword ptr [ebp-0C]
 00424AB5    mov         eax,dword ptr [ebp-14]
 00424AB8    call        00420094
 00424ABD    mov         eax,dword ptr [ebp-10]
 00424AC0    call        TObject.Free
 00424AC5    dec         dword ptr [ebp-0C]
 00424AC8    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00424ACC    jne         00424A7B
 00424ACE    xor         eax,eax
 00424AD0    pop         edx
 00424AD1    pop         ecx
 00424AD2    pop         ecx
 00424AD3    mov         dword ptr fs:[eax],edx
 00424AD6    push        424AED
 00424ADB    mov         eax,[00571A90];GlobalFixupList:TThreadList
 00424AE0    call        TThreadList.UnlockList
 00424AE5    ret
>00424AE6    jmp         @HandleFinally
>00424AEB    jmp         00424ADB
 00424AED    mov         esp,ebp
 00424AEF    pop         ebp
 00424AF0    ret
*}
end;

//00424AF4
{*procedure sub_00424AF4(?:?);
begin
 00424AF4    push        ebp
 00424AF5    mov         ebp,esp
 00424AF7    add         esp,0FFFFFFF0
 00424AFA    mov         dword ptr [ebp-4],eax
 00424AFD    cmp         dword ptr ds:[571A90],0;GlobalFixupList:TThreadList
>00424B04    je          00424B84
 00424B06    mov         eax,[00571A90];0x0 GlobalFixupList:TThreadList
 00424B0B    call        TThreadList.LockList
 00424B10    mov         dword ptr [ebp-10],eax
 00424B13    xor         eax,eax
 00424B15    push        ebp
 00424B16    push        424B7D
 00424B1B    push        dword ptr fs:[eax]
 00424B1E    mov         dword ptr fs:[eax],esp
 00424B21    mov         eax,dword ptr [ebp-10]
 00424B24    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00424B27    dec         eax
 00424B28    cmp         eax,0
>00424B2B    jl          00424B65
 00424B2D    mov         dword ptr [ebp-8],eax
 00424B30    mov         edx,dword ptr [ebp-8]
 00424B33    mov         eax,dword ptr [ebp-10]
 00424B36    call        TList.Get
 00424B3B    mov         dword ptr [ebp-0C],eax
 00424B3E    mov         eax,dword ptr [ebp-0C]
 00424B41    mov         eax,dword ptr [eax+4]
 00424B44    cmp         eax,dword ptr [ebp-4]
>00424B47    jne         00424B5C
 00424B49    mov         edx,dword ptr [ebp-8]
 00424B4C    mov         eax,dword ptr [ebp-10]
 00424B4F    call        00420094
 00424B54    mov         eax,dword ptr [ebp-0C]
 00424B57    call        TObject.Free
 00424B5C    dec         dword ptr [ebp-8]
 00424B5F    cmp         dword ptr [ebp-8],0FFFFFFFF
>00424B63    jne         00424B30
 00424B65    xor         eax,eax
 00424B67    pop         edx
 00424B68    pop         ecx
 00424B69    pop         ecx
 00424B6A    mov         dword ptr fs:[eax],edx
 00424B6D    push        424B84
 00424B72    mov         eax,[00571A90];0x0 GlobalFixupList:TThreadList
 00424B77    call        TThreadList.UnlockList
 00424B7C    ret
>00424B7D    jmp         @HandleFinally
>00424B82    jmp         00424B72
 00424B84    mov         esp,ebp
 00424B86    pop         ebp
 00424B87    ret
end;*}

//00424B88
procedure ReadError(Ident:PResStringRec);
begin
{*
 00424B88    push        ebp
 00424B89    mov         ebp,esp
 00424B8B    push        ecx
 00424B8C    mov         dword ptr [ebp-4],eax
 00424B8F    mov         ecx,dword ptr [ebp-4]
 00424B92    mov         dl,1
 00424B94    mov         eax,[0041D0DC];EReadError
 00424B99    call        Exception.Create
 00424B9E    call        @RaiseExcept
 00424BA3    pop         ecx
 00424BA4    pop         ebp
 00424BA5    ret
*}
end;

//00424BA8
procedure sub_00424BA8;
begin
{*
 00424BA8    push        ebp
 00424BA9    mov         ebp,esp
 00424BAB    mov         eax,[0056E390];^SInvalidProperty:TResStringRec
 00424BB0    call        ReadError
 00424BB5    pop         ebp
 00424BB6    ret
*}
end;

//00424BB8
{*procedure sub_00424BB8(?:?);
begin
 00424BB8    push        ebp
 00424BB9    mov         ebp,esp
 00424BBB    add         esp,0FFFFFFF4
 00424BBE    mov         dword ptr [ebp-4],eax
 00424BC1    mov         eax,dword ptr [ebp-4]
 00424BC4    mov         dword ptr [ebp-0C],eax
 00424BC7    mov         byte ptr [ebp-8],0B
 00424BCB    lea         eax,[ebp-0C]
 00424BCE    push        eax
 00424BCF    push        0
 00424BD1    mov         ecx,dword ptr ds:[56E0C0];^SUnknownProperty:TResStringRec
 00424BD7    mov         dl,1
 00424BD9    mov         eax,[0041D0DC];EReadError
 00424BDE    call        Exception.CreateResFmt;EReadError.Create
 00424BE3    call        @RaiseExcept
 00424BE8    mov         esp,ebp
 00424BEA    pop         ebp
 00424BEB    ret
end;*}

//00424BEC
{*function sub_00424BEC(?:?; ?:?):?;
begin
 00424BEC    push        ebp
 00424BED    mov         ebp,esp
 00424BEF    add         esp,0FFFFFFF4
 00424BF2    mov         dword ptr [ebp-8],edx
 00424BF5    mov         dword ptr [ebp-4],eax
 00424BF8    mov         edx,dword ptr [ebp-8]
 00424BFB    mov         eax,dword ptr [ebp-4]
 00424BFE    call        0041B7CC
 00424C03    mov         dword ptr [ebp-0C],eax
 00424C06    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00424C0A    jne         00424C11
 00424C0C    call        00424BA8
 00424C11    mov         eax,dword ptr [ebp-0C]
 00424C14    mov         esp,ebp
 00424C16    pop         ebp
 00424C17    ret
end;*}

//00424C18
destructor TReader.Destroy;
begin
{*
 00424C18    push        ebp
 00424C19    mov         ebp,esp
 00424C1B    add         esp,0FFFFFFF8
 00424C1E    push        ebx
 00424C1F    call        @BeforeDestruction
 00424C24    mov         byte ptr [ebp-5],dl
 00424C27    mov         dword ptr [ebp-4],eax
 00424C2A    mov         eax,dword ptr [ebp-4]
 00424C2D    mov         edx,dword ptr [eax+10]
 00424C30    mov         eax,dword ptr [ebp-4]
 00424C33    sub         edx,dword ptr [eax+14]
 00424C36    mov         eax,dword ptr [ebp-4]
 00424C39    mov         eax,dword ptr [eax+4]
 00424C3C    mov         cx,1
 00424C40    mov         ebx,dword ptr [eax]
 00424C42    call        dword ptr [ebx+14]
 00424C45    mov         dl,byte ptr [ebp-5]
 00424C48    and         dl,0FC
 00424C4B    mov         eax,dword ptr [ebp-4]
 00424C4E    call        TFiler.Destroy
 00424C53    cmp         byte ptr [ebp-5],0
>00424C57    jle         00424C61
 00424C59    mov         eax,dword ptr [ebp-4]
 00424C5C    call        @ClassDestroy
 00424C61    pop         ebx
 00424C62    pop         ecx
 00424C63    pop         ecx
 00424C64    pop         ebp
 00424C65    ret
*}
end;

//00424C68
{*procedure sub_00424C68(?:?; ?:?);
begin
 00424C68    push        ebp
 00424C69    mov         ebp,esp
 00424C6B    add         esp,0FFFFFFF8
 00424C6E    mov         byte ptr [ebp-5],dl
 00424C71    mov         dword ptr [ebp-4],eax
 00424C74    mov         eax,dword ptr [ebp-4]
 00424C77    call        TReader.ReadValue
 00424C7C    cmp         al,byte ptr [ebp-5]
>00424C7F    je          00424C94
 00424C81    mov         eax,dword ptr [ebp-4]
 00424C84    dec         dword ptr [eax+10]
 00424C87    mov         eax,dword ptr [ebp-4]
 00424C8A    call        TReader.SkipValue
 00424C8F    call        00424BA8
 00424C94    pop         ecx
 00424C95    pop         ecx
 00424C96    pop         ebp
 00424C97    ret
end;*}

//00424C98
{*procedure sub_00424C98(?:?; ?:?; ?:?; ?:?);
begin
 00424C98    push        ebp
 00424C99    mov         ebp,esp
 00424C9B    add         esp,0FFFFFFF4
 00424C9E    mov         byte ptr [ebp-9],cl
 00424CA1    mov         dword ptr [ebp-8],edx
 00424CA4    mov         dword ptr [ebp-4],eax
 00424CA7    mov         eax,dword ptr [ebp-4]
 00424CAA    mov         edx,dword ptr [eax+70];TReader.FPropName:String
 00424CAD    mov         eax,dword ptr [ebp-8]
 00424CB0    call        SameText
 00424CB5    test        al,al
>00424CB7    je          00424CD4
 00424CB9    cmp         word ptr [ebp+12],0
>00424CBE    je          00424CD4
 00424CC0    mov         edx,dword ptr [ebp-4]
 00424CC3    mov         eax,dword ptr [ebp+14]
 00424CC6    call        dword ptr [ebp+10]
 00424CC9    mov         eax,dword ptr [ebp-4]
 00424CCC    add         eax,70;TReader.FPropName:String
 00424CCF    call        @LStrClr
 00424CD4    mov         esp,ebp
 00424CD6    pop         ebp
 00424CD7    ret         10
end;*}

//00424CDC
{*procedure sub_00424CDC(?:?; ?:?; ?:?; ?:?);
begin
 00424CDC    push        ebp
 00424CDD    mov         ebp,esp
 00424CDF    add         esp,0FFFFFFEC
 00424CE2    mov         byte ptr [ebp-11],cl
 00424CE5    mov         dword ptr [ebp-8],edx
 00424CE8    mov         dword ptr [ebp-4],eax
 00424CEB    mov         eax,dword ptr [ebp-4]
 00424CEE    mov         edx,dword ptr [eax+70];TReader.FPropName:String
 00424CF1    mov         eax,dword ptr [ebp-8]
 00424CF4    call        SameText
 00424CF9    test        al,al
>00424CFB    je          00424DB3
 00424D01    cmp         word ptr [ebp+12],0
>00424D06    je          00424DB3
 00424D0C    mov         eax,dword ptr [ebp-4]
 00424D0F    call        TReader.ReadValue
 00424D14    cmp         al,0A
>00424D16    je          00424D32
 00424D18    mov         eax,dword ptr [ebp-4]
 00424D1B    dec         dword ptr [eax+10];TReader.FBufPos:Integer
 00424D1E    mov         eax,dword ptr [ebp-4]
 00424D21    call        TReader.SkipValue
 00424D26    mov         eax,dword ptr [ebp-4]
 00424D29    mov         byte ptr [eax+78],1;TReader.FCanHandleExcepts:Boolean
 00424D2D    call        00424BA8
 00424D32    mov         dl,1
 00424D34    mov         eax,[0041DE14];TMemoryStream
 00424D39    call        TObject.Create;TMemoryStream.Create
 00424D3E    mov         dword ptr [ebp-0C],eax
 00424D41    xor         eax,eax
 00424D43    push        ebp
 00424D44    push        424DA1
 00424D49    push        dword ptr fs:[eax]
 00424D4C    mov         dword ptr fs:[eax],esp
 00424D4F    lea         edx,[ebp-10]
 00424D52    mov         ecx,4
 00424D57    mov         eax,dword ptr [ebp-4]
 00424D5A    call        TReader.Read
 00424D5F    mov         edx,dword ptr [ebp-10]
 00424D62    mov         eax,dword ptr [ebp-0C]
 00424D65    mov         ecx,dword ptr [eax]
 00424D67    call        dword ptr [ecx+4];TMemoryStream.sub_0042401C
 00424D6A    mov         eax,dword ptr [ebp-0C]
 00424D6D    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00424D70    mov         ecx,dword ptr [ebp-10]
 00424D73    mov         eax,dword ptr [ebp-4]
 00424D76    call        TReader.Read
 00424D7B    mov         eax,dword ptr [ebp-4]
 00424D7E    mov         byte ptr [eax+78],1;TReader.FCanHandleExcepts:Boolean
 00424D82    mov         edx,dword ptr [ebp-0C]
 00424D85    mov         eax,dword ptr [ebp+14]
 00424D88    call        dword ptr [ebp+10]
 00424D8B    xor         eax,eax
 00424D8D    pop         edx
 00424D8E    pop         ecx
 00424D8F    pop         ecx
 00424D90    mov         dword ptr fs:[eax],edx
 00424D93    push        424DA8
 00424D98    mov         eax,dword ptr [ebp-0C]
 00424D9B    call        TObject.Free
 00424DA0    ret
>00424DA1    jmp         @HandleFinally
>00424DA6    jmp         00424D98
 00424DA8    mov         eax,dword ptr [ebp-4]
 00424DAB    add         eax,70;TReader.FPropName:String
 00424DAE    call        @LStrClr
 00424DB3    mov         esp,ebp
 00424DB5    pop         ebp
 00424DB6    ret         10
end;*}

//00424DBC
function TReader.EndOfList:Boolean;
begin
{*
 00424DBC    push        ebp
 00424DBD    mov         ebp,esp
 00424DBF    add         esp,0FFFFFFF8
 00424DC2    mov         dword ptr [ebp-4],eax
 00424DC5    mov         eax,dword ptr [ebp-4]
 00424DC8    call        TReader.ReadValue
 00424DCD    test        al,al
 00424DCF    sete        byte ptr [ebp-5]
 00424DD3    mov         eax,dword ptr [ebp-4]
 00424DD6    dec         dword ptr [eax+10]
 00424DD9    mov         al,byte ptr [ebp-5]
 00424DDC    pop         ecx
 00424DDD    pop         ecx
 00424DDE    pop         ebp
 00424DDF    ret
*}
end;

//00424DE0
{*function sub_00424DE0(?:?):?;
begin
 00424DE0    push        ebp
 00424DE1    mov         ebp,esp
 00424DE3    add         esp,0FFFFFFF4
 00424DE6    push        ebx
 00424DE7    mov         dword ptr [ebp-8],edx
 00424DEA    mov         dword ptr [ebp-4],eax
 00424DED    mov         byte ptr [ebp-9],0
 00424DF1    mov         eax,dword ptr [ebp-4]
 00424DF4    cmp         word ptr [eax+5A],0;TReader.?f5A:word
>00424DF9    je          00424E0E
 00424DFB    lea         eax,[ebp-9]
 00424DFE    push        eax
 00424DFF    mov         ebx,dword ptr [ebp-4]
 00424E02    mov         ecx,dword ptr [ebp-8]
 00424E05    mov         edx,dword ptr [ebp-4]
 00424E08    mov         eax,dword ptr [ebx+5C];TReader.?f5C:dword
 00424E0B    call        dword ptr [ebx+58];TReader.FOnError
 00424E0E    mov         al,byte ptr [ebp-9]
 00424E11    pop         ebx
 00424E12    mov         esp,ebp
 00424E14    pop         ebp
 00424E15    ret
end;*}

//00424E18
{*function sub_00424E18(?:?; ?:?):?;
begin
 00424E18    push        ebp
 00424E19    mov         ebp,esp
 00424E1B    add         esp,0FFFFFEEC
 00424E21    push        ebx
 00424E22    mov         dword ptr [ebp-0C],ecx
 00424E25    mov         dword ptr [ebp-8],edx
 00424E28    mov         dword ptr [ebp-4],eax
 00424E2B    lea         eax,[ebp-114]
 00424E31    mov         edx,dword ptr [ebp-0C]
 00424E34    mov         ecx,0FF
 00424E39    call        @LStrToString
 00424E3E    lea         edx,[ebp-114]
 00424E44    mov         eax,dword ptr [ebp-8]
 00424E47    mov         eax,dword ptr [eax]
 00424E49    call        TObject.MethodAddress
 00424E4E    mov         dword ptr [ebp-10],eax
 00424E51    cmp         dword ptr [ebp-10],0
 00424E55    sete        byte ptr [ebp-11]
 00424E59    mov         eax,dword ptr [ebp-4]
 00424E5C    cmp         word ptr [eax+3A],0;TReader.?f3A:word
>00424E61    je          00424E7A
 00424E63    lea         eax,[ebp-10]
 00424E66    push        eax
 00424E67    lea         eax,[ebp-11]
 00424E6A    push        eax
 00424E6B    mov         ebx,dword ptr [ebp-4]
 00424E6E    mov         ecx,dword ptr [ebp-0C]
 00424E71    mov         edx,dword ptr [ebp-4]
 00424E74    mov         eax,dword ptr [ebx+3C];TReader.?f3C:dword
 00424E77    call        dword ptr [ebx+38];TReader.FOnFindMethod
 00424E7A    cmp         byte ptr [ebp-11],0
>00424E7E    je          00424E85
 00424E80    call        00424BA8
 00424E85    mov         eax,dword ptr [ebp-10]
 00424E88    pop         ebx
 00424E89    mov         esp,ebp
 00424E8B    pop         ebp
 00424E8C    ret
end;*}

//00424E90
procedure sub_00424E90(?:Pointer);
begin
{*
 00424E90    push        ebp
 00424E91    mov         ebp,esp
 00424E93    add         esp,0FFFFFFF0
 00424E96    mov         dword ptr [ebp-4],eax
 00424E99    mov         eax,[00571A90];0x0 GlobalFixupList:TThreadList
 00424E9E    call        TThreadList.LockList
 00424EA3    mov         dword ptr [ebp-0C],eax
 00424EA6    xor         eax,eax
 00424EA8    push        ebp
 00424EA9    push        424F21
 00424EAE    push        dword ptr fs:[eax]
 00424EB1    mov         dword ptr fs:[eax],esp
 00424EB4    mov         eax,dword ptr [ebp-0C]
 00424EB7    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00424EBA    dec         eax
 00424EBB    cmp         eax,0
>00424EBE    jl          00424F09
 00424EC0    mov         dword ptr [ebp-8],eax
 00424EC3    mov         edx,dword ptr [ebp-8]
 00424EC6    mov         eax,dword ptr [ebp-0C]
 00424EC9    call        TList.Get
 00424ECE    mov         dword ptr [ebp-10],eax
 00424ED1    mov         eax,dword ptr [ebp-10]
 00424ED4    mov         eax,dword ptr [eax+4]
 00424ED7    mov         edx,dword ptr [ebp-4]
 00424EDA    cmp         eax,dword ptr [edx+4]
>00424EDD    jne         00424F00
 00424EDF    mov         eax,dword ptr [ebp-10]
 00424EE2    mov         eax,dword ptr [eax+0C]
 00424EE5    mov         edx,dword ptr [ebp-4]
 00424EE8    cmp         eax,dword ptr [edx+0C]
>00424EEB    jne         00424F00
 00424EED    mov         eax,dword ptr [ebp-10]
 00424EF0    call        TObject.Free
 00424EF5    mov         edx,dword ptr [ebp-8]
 00424EF8    mov         eax,dword ptr [ebp-0C]
 00424EFB    call        00420094
 00424F00    dec         dword ptr [ebp-8]
 00424F03    cmp         dword ptr [ebp-8],0FFFFFFFF
>00424F07    jne         00424EC3
 00424F09    xor         eax,eax
 00424F0B    pop         edx
 00424F0C    pop         ecx
 00424F0D    pop         ecx
 00424F0E    mov         dword ptr fs:[eax],edx
 00424F11    push        424F28
 00424F16    mov         eax,[00571A90];0x0 GlobalFixupList:TThreadList
 00424F1B    call        TThreadList.UnlockList
 00424F20    ret
>00424F21    jmp         @HandleFinally
>00424F26    jmp         00424F16
 00424F28    mov         esp,ebp
 00424F2A    pop         ebp
 00424F2B    ret
*}
end;

//00424F2C
{*procedure sub_00424F2C(?:?);
begin
 00424F2C    push        ebp
 00424F2D    mov         ebp,esp
 00424F2F    add         esp,0FFFFFFE8
 00424F32    xor         edx,edx
 00424F34    mov         dword ptr [ebp-0C],edx
 00424F37    mov         dword ptr [ebp-4],eax
 00424F3A    xor         eax,eax
 00424F3C    push        ebp
 00424F3D    push        425055
 00424F42    push        dword ptr fs:[eax]
 00424F45    mov         dword ptr fs:[eax],esp
 00424F48    mov         eax,dword ptr [ebp-4]
 00424F4B    cmp         dword ptr [eax+30],0
>00424F4F    je          0042503F
 00424F55    xor         eax,eax
 00424F57    push        ebp
 00424F58    push        425038
 00424F5D    push        dword ptr fs:[eax]
 00424F60    mov         dword ptr fs:[eax],esp
 00424F63    mov         eax,dword ptr [ebp-4]
 00424F66    mov         eax,dword ptr [eax+30]
 00424F69    mov         eax,dword ptr [eax+8]
 00424F6C    dec         eax
 00424F6D    test        eax,eax
>00424F6F    jl          00425022
 00424F75    inc         eax
 00424F76    mov         dword ptr [ebp-14],eax
 00424F79    mov         dword ptr [ebp-8],0
 00424F80    mov         eax,dword ptr [ebp-4]
 00424F83    mov         eax,dword ptr [eax+30]
 00424F86    mov         edx,dword ptr [ebp-8]
 00424F89    call        TList.Get
 00424F8E    mov         dword ptr [ebp-18],eax
 00424F91    lea         eax,[ebp-0C]
 00424F94    mov         edx,dword ptr [ebp-18]
 00424F97    mov         edx,dword ptr [edx+14]
 00424F9A    call        @LStrLAsg
 00424F9F    lea         edx,[ebp-0C]
 00424FA2    mov         eax,dword ptr [ebp-4]
 00424FA5    mov         ecx,dword ptr [eax]
 00424FA7    call        dword ptr [ecx+20]
 00424FAA    mov         eax,dword ptr [ebp-18]
 00424FAD    mov         eax,dword ptr [eax+8]
 00424FB0    mov         edx,dword ptr [ebp-0C]
 00424FB3    call        004246B8
 00424FB8    mov         dword ptr [ebp-10],eax
 00424FBB    mov         eax,dword ptr [ebp-4]
 00424FBE    mov         eax,dword ptr [eax+30]
 00424FC1    mov         edx,dword ptr [ebp-8]
 00424FC4    call        TList.Get
 00424FC9    call        00424E90
 00424FCE    cmp         dword ptr [ebp-10],0
>00424FD2    jne         0042500C
 00424FD4    mov         eax,dword ptr [ebp-18]
 00424FD7    call        00424594
 00424FDC    test        al,al
>00424FDE    je          0042500C
 00424FE0    mov         eax,dword ptr [ebp-4]
 00424FE3    mov         eax,dword ptr [eax+30]
 00424FE6    mov         edx,dword ptr [ebp-8]
 00424FE9    call        TList.Get
 00424FEE    mov         edx,eax
 00424FF0    mov         eax,[00571A90];0x0 GlobalFixupList:TThreadList
 00424FF5    call        00420720
 00424FFA    mov         eax,dword ptr [ebp-4]
 00424FFD    mov         eax,dword ptr [eax+30]
 00425000    xor         ecx,ecx
 00425002    mov         edx,dword ptr [ebp-8]
 00425005    call        00420460
>0042500A    jmp         00425016
 0042500C    mov         edx,dword ptr [ebp-10]
 0042500F    mov         eax,dword ptr [ebp-18]
 00425012    mov         ecx,dword ptr [eax]
 00425014    call        dword ptr [ecx]
 00425016    inc         dword ptr [ebp-8]
 00425019    dec         dword ptr [ebp-14]
>0042501C    jne         00424F80
 00425022    xor         eax,eax
 00425024    pop         edx
 00425025    pop         ecx
 00425026    pop         ecx
 00425027    mov         dword ptr fs:[eax],edx
 0042502A    push        42503F
 0042502F    mov         eax,dword ptr [ebp-4]
 00425032    call        00425090
 00425037    ret
>00425038    jmp         @HandleFinally
>0042503D    jmp         0042502F
 0042503F    xor         eax,eax
 00425041    pop         edx
 00425042    pop         ecx
 00425043    pop         ecx
 00425044    mov         dword ptr fs:[eax],edx
 00425047    push        42505C
 0042504C    lea         eax,[ebp-0C]
 0042504F    call        @LStrClr
 00425054    ret
>00425055    jmp         @HandleFinally
>0042505A    jmp         0042504C
 0042505C    mov         esp,ebp
 0042505E    pop         ebp
 0042505F    ret
end;*}

//00425060
procedure sub_00425060;
begin
{*
 00425060    push        ebp
 00425061    mov         ebp,esp
 00425063    push        ecx
 00425064    mov         dword ptr [ebp-4],eax
 00425067    mov         eax,dword ptr [ebp-4]
 0042506A    call        004251A0
 0042506F    cdq
 00425070    push        edx
 00425071    push        eax
 00425072    mov         eax,dword ptr [ebp-4]
 00425075    mov         eax,dword ptr [eax+4];TReader.FStream:TStream
 00425078    call        TStream.SetPosition
 0042507D    mov         eax,dword ptr [ebp-4]
 00425080    xor         edx,edx
 00425082    mov         dword ptr [eax+10],edx;TReader.FBufPos:Integer
 00425085    mov         eax,dword ptr [ebp-4]
 00425088    xor         edx,edx
 0042508A    mov         dword ptr [eax+14],edx;TReader.FBufEnd:Integer
 0042508D    pop         ecx
 0042508E    pop         ebp
 0042508F    ret
*}
end;

//00425090
{*procedure sub_00425090(?:?);
begin
 00425090    push        ebp
 00425091    mov         ebp,esp
 00425093    add         esp,0FFFFFFF4
 00425096    mov         dword ptr [ebp-4],eax
 00425099    mov         eax,dword ptr [ebp-4]
 0042509C    cmp         dword ptr [eax+30],0
>004250A0    je          004250E9
 004250A2    mov         eax,dword ptr [ebp-4]
 004250A5    mov         eax,dword ptr [eax+30]
 004250A8    mov         eax,dword ptr [eax+8]
 004250AB    dec         eax
 004250AC    test        eax,eax
>004250AE    jl          004250D6
 004250B0    inc         eax
 004250B1    mov         dword ptr [ebp-0C],eax
 004250B4    mov         dword ptr [ebp-8],0
 004250BB    mov         edx,dword ptr [ebp-8]
 004250BE    mov         eax,dword ptr [ebp-4]
 004250C1    mov         eax,dword ptr [eax+30]
 004250C4    call        TList.Get
 004250C9    call        TObject.Free
 004250CE    inc         dword ptr [ebp-8]
 004250D1    dec         dword ptr [ebp-0C]
>004250D4    jne         004250BB
 004250D6    mov         eax,dword ptr [ebp-4]
 004250D9    mov         eax,dword ptr [eax+30]
 004250DC    call        TObject.Free
 004250E1    mov         eax,dword ptr [ebp-4]
 004250E4    xor         edx,edx
 004250E6    mov         dword ptr [eax+30],edx
 004250E9    mov         esp,ebp
 004250EB    pop         ebp
 004250EC    ret
end;*}

//004250F0
{*function sub_004250F0(?:?; ?:?; ?:?):?;
begin
 004250F0    push        ebp
 004250F1    mov         ebp,esp
 004250F3    add         esp,0FFFFFFE0
 004250F6    mov         dword ptr [ebp-0C],ecx
 004250F9    mov         dword ptr [ebp-8],edx
 004250FC    mov         dword ptr [ebp-4],eax
 004250FF    mov         eax,dword ptr [ebp-8]
 00425102    call        TObject.ClassType
 00425107    mov         dword ptr [ebp-1C],eax
>0042510A    jmp         00425164
 0042510C    mov         eax,dword ptr [ebp-1C]
 0042510F    call        GetFieldClassTable
 00425114    mov         dword ptr [ebp-18],eax
 00425117    cmp         dword ptr [ebp-18],0
>0042511B    je          00425159
 0042511D    mov         eax,dword ptr [ebp-18]
 00425120    movsx       eax,word ptr [eax]
 00425123    dec         eax
 00425124    test        eax,eax
>00425126    jl          00425159
 00425128    inc         eax
 00425129    mov         dword ptr [ebp-20],eax
 0042512C    mov         dword ptr [ebp-14],0
 00425133    mov         eax,dword ptr [ebp-14]
 00425136    mov         edx,dword ptr [ebp-18]
 00425139    mov         eax,dword ptr [edx+eax*4+2]
 0042513D    mov         eax,dword ptr [eax]
 0042513F    mov         dword ptr [ebp-10],eax
 00425142    mov         edx,dword ptr [ebp-0C]
 00425145    mov         eax,dword ptr [ebp-10]
 00425148    call        TObject.ClassNameIs
 0042514D    test        al,al
>0042514F    jne         00425196
 00425151    inc         dword ptr [ebp-14]
 00425154    dec         dword ptr [ebp-20]
>00425157    jne         00425133
 00425159    mov         eax,dword ptr [ebp-1C]
 0042515C    call        TObject.ClassParent
 00425161    mov         dword ptr [ebp-1C],eax
 00425164    mov         eax,dword ptr [ebp-1C]
 00425167    cmp         eax,dword ptr ds:[41D57C];TPersistent
>0042516D    jne         0042510C
 0042516F    mov         eax,dword ptr [ebp-4]
 00425172    cmp         dword ptr [eax+74],0
>00425176    je          0042518B
 00425178    mov         eax,dword ptr [ebp-4]
 0042517B    mov         eax,dword ptr [eax+74]
 0042517E    mov         edx,dword ptr [ebp-0C]
 00425181    call        0041F3F4
 00425186    mov         dword ptr [ebp-10],eax
>00425189    jmp         00425196
 0042518B    mov         eax,dword ptr [ebp-0C]
 0042518E    call        0041F50C
 00425193    mov         dword ptr [ebp-10],eax
 00425196    mov         eax,dword ptr [ebp-10]
 00425199    mov         esp,ebp
 0042519B    pop         ebp
 0042519C    ret
end;*}

//004251A0
{*function sub_004251A0(?:TReader):?;
begin
 004251A0    push        ebp
 004251A1    mov         ebp,esp
 004251A3    add         esp,0FFFFFFF8
 004251A6    mov         dword ptr [ebp-4],eax
 004251A9    mov         eax,dword ptr [ebp-4]
 004251AC    mov         eax,dword ptr [eax+4];TReader.FStream:TStream
 004251AF    call        TStream.GetPosition
 004251B4    mov         edx,dword ptr [ebp-4]
 004251B7    mov         edx,dword ptr [edx+14];TReader.FBufEnd:Integer
 004251BA    mov         ecx,dword ptr [ebp-4]
 004251BD    sub         edx,dword ptr [ecx+10]
 004251C0    sub         eax,edx
 004251C2    mov         dword ptr [ebp-8],eax
 004251C5    mov         eax,dword ptr [ebp-8]
 004251C8    pop         ecx
 004251C9    pop         ecx
 004251CA    pop         ebp
 004251CB    ret
end;*}

//004251CC
function TReader.NextValue:TValueType;
begin
{*
 004251CC    push        ebp
 004251CD    mov         ebp,esp
 004251CF    add         esp,0FFFFFFF8
 004251D2    mov         dword ptr [ebp-4],eax
 004251D5    mov         eax,dword ptr [ebp-4]
 004251D8    call        TReader.ReadValue
 004251DD    mov         byte ptr [ebp-5],al
 004251E0    mov         eax,dword ptr [ebp-4]
 004251E3    dec         dword ptr [eax+10]
 004251E6    mov         al,byte ptr [ebp-5]
 004251E9    pop         ecx
 004251EA    pop         ecx
 004251EB    pop         ebp
 004251EC    ret
*}
end;

//004251F0
{*procedure sub_004251F0(?:?; ?:?);
begin
 004251F0    push        ebp
 004251F1    mov         ebp,esp
 004251F3    add         esp,0FFFFFFF8
 004251F6    mov         dword ptr [ebp-8],edx
 004251F9    mov         dword ptr [ebp-4],eax
 004251FC    mov         eax,dword ptr [ebp-4]
 004251FF    call        TReader.SkipValue
 00425204    mov         eax,dword ptr [ebp-8]
 00425207    call        00424BB8
 0042520C    pop         ecx
 0042520D    pop         ecx
 0042520E    pop         ebp
 0042520F    ret
end;*}

//00425210
procedure TReader.Read(var Buf:void ; Count:Longint);
begin
{*
 00425210    push        esi
 00425211    push        edi
 00425212    push        ebx
 00425213    mov         edi,edx
 00425215    mov         ebx,ecx
 00425217    mov         esi,eax
>00425219    jmp         00425251
 0042521B    mov         ecx,dword ptr [esi+14]
 0042521E    sub         ecx,dword ptr [esi+10]
>00425221    ja          0042522D
 00425223    mov         eax,esi
 00425225    call        TReader.ReadBuffer
 0042522A    mov         ecx,dword ptr [esi+14]
 0042522D    cmp         ecx,ebx
>0042522F    jb          00425233
 00425231    mov         ecx,ebx
 00425233    push        esi
 00425234    sub         ebx,ecx
 00425236    mov         eax,dword ptr [esi+8]
 00425239    add         eax,dword ptr [esi+10]
 0042523C    add         dword ptr [esi+10],ecx
 0042523F    mov         esi,eax
 00425241    mov         edx,ecx
 00425243    shr         ecx,2
 00425246    cld
 00425247    rep movs    dword ptr [edi],dword ptr [esi]
 00425249    mov         ecx,edx
 0042524B    and         ecx,3
 0042524E    rep movs    byte ptr [edi],byte ptr [esi]
 00425250    pop         esi
 00425251    or          ebx,ebx
>00425253    jne         0042521B
 00425255    pop         ebx
 00425256    pop         edi
 00425257    pop         esi
 00425258    ret
*}
end;

//0042525C
procedure TReader.ReadBuffer;
begin
{*
 0042525C    push        ebp
 0042525D    mov         ebp,esp
 0042525F    push        ecx
 00425260    push        ebx
 00425261    mov         dword ptr [ebp-4],eax
 00425264    mov         eax,dword ptr [ebp-4]
 00425267    mov         edx,dword ptr [eax+8]
 0042526A    mov         eax,dword ptr [ebp-4]
 0042526D    mov         ecx,dword ptr [eax+0C]
 00425270    mov         eax,dword ptr [ebp-4]
 00425273    mov         eax,dword ptr [eax+4]
 00425276    mov         ebx,dword ptr [eax]
 00425278    call        dword ptr [ebx+0C]
 0042527B    mov         edx,dword ptr [ebp-4]
 0042527E    mov         dword ptr [edx+14],eax
 00425281    mov         eax,dword ptr [ebp-4]
 00425284    cmp         dword ptr [eax+14],0
>00425288    jne         004252A1
 0042528A    mov         ecx,dword ptr ds:[56E548];^SReadError:TResStringRec
 00425290    mov         dl,1
 00425292    mov         eax,[0041D0DC];EReadError
 00425297    call        Exception.Create
 0042529C    call        @RaiseExcept
 004252A1    mov         eax,dword ptr [ebp-4]
 004252A4    xor         edx,edx
 004252A6    mov         dword ptr [eax+10],edx
 004252A9    pop         ebx
 004252AA    pop         ecx
 004252AB    pop         ebp
 004252AC    ret
*}
end;

//004252B0
{*function sub_004252B0(?:?):?;
begin
 004252B0    push        ebp
 004252B1    mov         ebp,esp
 004252B3    add         esp,0FFFFFFF8
 004252B6    mov         dword ptr [ebp-4],eax
 004252B9    mov         eax,dword ptr [ebp-4]
 004252BC    call        TReader.ReadValue
 004252C1    cmp         al,9
 004252C3    sete        byte ptr [ebp-5]
 004252C7    mov         al,byte ptr [ebp-5]
 004252CA    pop         ecx
 004252CB    pop         ecx
 004252CC    pop         ebp
 004252CD    ret
end;*}

//004252D0
{*function sub_004252D0(?:?):?;
begin
 004252D0    push        ebp
 004252D1    mov         ebp,esp
 004252D3    add         esp,0FFFFFFF4
 004252D6    xor         edx,edx
 004252D8    mov         dword ptr [ebp-0C],edx
 004252DB    mov         dword ptr [ebp-4],eax
 004252DE    xor         eax,eax
 004252E0    push        ebp
 004252E1    push        425325
 004252E6    push        dword ptr fs:[eax]
 004252E9    mov         dword ptr fs:[eax],esp
 004252EC    lea         edx,[ebp-0C]
 004252EF    mov         eax,dword ptr [ebp-4]
 004252F2    call        TReader.ReadString
 004252F7    mov         eax,dword ptr [ebp-0C]
 004252FA    call        @LStrLen
 004252FF    dec         eax
>00425300    jle         00425307
 00425302    call        00424BA8
 00425307    mov         eax,dword ptr [ebp-0C]
 0042530A    mov         al,byte ptr [eax]
 0042530C    mov         byte ptr [ebp-5],al
 0042530F    xor         eax,eax
 00425311    pop         edx
 00425312    pop         ecx
 00425313    pop         ecx
 00425314    mov         dword ptr fs:[eax],edx
 00425317    push        42532C
 0042531C    lea         eax,[ebp-0C]
 0042531F    call        @LStrClr
 00425324    ret
>00425325    jmp         @HandleFinally
>0042532A    jmp         0042531C
 0042532C    mov         al,byte ptr [ebp-5]
 0042532F    mov         esp,ebp
 00425331    pop         ebp
 00425332    ret
end;*}

//00425334
procedure TReader.ReadCollection(Collection:TCollection);
begin
{*
 00425334    push        ebp
 00425335    mov         ebp,esp
 00425337    add         esp,0FFFFFFF4
 0042533A    mov         dword ptr [ebp-8],edx
 0042533D    mov         dword ptr [ebp-4],eax
 00425340    mov         eax,dword ptr [ebp-8]
 00425343    mov         edx,dword ptr [eax]
 00425345    call        dword ptr [edx+20]
 00425348    xor         eax,eax
 0042534A    push        ebp
 0042534B    push        4253E0
 00425350    push        dword ptr fs:[eax]
 00425353    mov         dword ptr fs:[eax],esp
 00425356    mov         eax,dword ptr [ebp-4]
 00425359    call        TReader.EndOfList
 0042535E    test        al,al
>00425360    jne         004253B6
 00425362    mov         eax,dword ptr [ebp-8]
 00425365    call        TCollection.Clear
>0042536A    jmp         004253B6
 0042536C    mov         eax,dword ptr [ebp-4]
 0042536F    call        TReader.NextValue
 00425374    add         al,0FE
 00425376    sub         al,3
>00425378    jae         00425382
 0042537A    mov         eax,dword ptr [ebp-4]
 0042537D    call        00425E24
 00425382    mov         eax,dword ptr [ebp-8]
 00425385    call        00421358
 0042538A    mov         dword ptr [ebp-0C],eax
 0042538D    mov         eax,dword ptr [ebp-4]
 00425390    call        TReader.ReadListBegin
>00425395    jmp         004253A2
 00425397    mov         edx,dword ptr [ebp-0C]
 0042539A    mov         eax,dword ptr [ebp-4]
 0042539D    call        0042607C
 004253A2    mov         eax,dword ptr [ebp-4]
 004253A5    call        TReader.EndOfList
 004253AA    test        al,al
>004253AC    je          00425397
 004253AE    mov         eax,dword ptr [ebp-4]
 004253B1    call        TReader.ReadListEnd
 004253B6    mov         eax,dword ptr [ebp-4]
 004253B9    call        TReader.EndOfList
 004253BE    test        al,al
>004253C0    je          0042536C
 004253C2    mov         eax,dword ptr [ebp-4]
 004253C5    call        TReader.ReadListEnd
 004253CA    xor         eax,eax
 004253CC    pop         edx
 004253CD    pop         ecx
 004253CE    pop         ecx
 004253CF    mov         dword ptr fs:[eax],edx
 004253D2    push        4253E7
 004253D7    mov         eax,dword ptr [ebp-8]
 004253DA    mov         edx,dword ptr [eax]
 004253DC    call        dword ptr [edx+24]
 004253DF    ret
>004253E0    jmp         @HandleFinally
>004253E5    jmp         004253D7
 004253E7    mov         esp,ebp
 004253E9    pop         ebp
 004253EA    ret
*}
end;

//00425410
{*procedure sub_00425410(?:?; ?:?);
begin
 00425410    push        ebp
 00425411    mov         ebp,esp
 00425413    add         esp,0FFFFFFF4
 00425416    mov         dword ptr [ebp-0C],eax
 00425419    mov         eax,dword ptr [ebp+8]
 0042541C    mov         eax,dword ptr [eax-4]
 0042541F    call        @DynArrayLength
 00425424    dec         eax
 00425425    test        eax,eax
>00425427    jl          00425456
 00425429    inc         eax
 0042542A    mov         dword ptr [ebp-8],eax
 0042542D    mov         dword ptr [ebp-4],0
 00425434    mov         eax,dword ptr [ebp+8]
 00425437    mov         eax,dword ptr [eax-4]
 0042543A    mov         edx,dword ptr [ebp-4]
 0042543D    mov         edx,dword ptr [eax+edx*4]
 00425440    mov         eax,dword ptr [ebp+8]
 00425443    mov         eax,dword ptr [eax-8]
 00425446    mov         eax,dword ptr [eax+34]
 00425449    call        TList.Add
 0042544E    inc         dword ptr [ebp-4]
 00425451    dec         dword ptr [ebp-8]
>00425454    jne         00425434
 00425456    mov         esp,ebp
 00425458    pop         ebp
 00425459    ret
end;*}

//0042545C
{*procedure sub_0042545C(?:?; ?:?);
begin
 0042545C    push        ebp
 0042545D    mov         ebp,esp
 0042545F    add         esp,0FFFFFFF4
 00425462    push        ebx
 00425463    mov         dword ptr [ebp-4],eax
 00425466    mov         eax,dword ptr [ebp-4]
 00425469    call        0042AB10
 0042546E    dec         eax
 0042546F    test        eax,eax
>00425471    jl          004254DF
 00425473    inc         eax
 00425474    mov         dword ptr [ebp-0C],eax
 00425477    mov         dword ptr [ebp-8],0
 0042547E    mov         edx,dword ptr [ebp-8]
 00425481    mov         eax,dword ptr [ebp-4]
 00425484    call        0042AAD0
 00425489    test        byte ptr [eax+24],4
>0042548D    je          004254D7
 0042548F    mov         eax,dword ptr [ebp+8]
 00425492    mov         eax,dword ptr [eax-4]
 00425495    call        @DynArrayLength
 0042549A    inc         eax
 0042549B    push        eax
 0042549C    mov         eax,dword ptr [ebp+8]
 0042549F    add         eax,0FFFFFFFC
 004254A2    mov         ecx,1
 004254A7    mov         edx,dword ptr ds:[4253EC];_DynArr_15_06
 004254AD    call        @DynArraySetLength
 004254B2    add         esp,4
 004254B5    mov         edx,dword ptr [ebp-8]
 004254B8    mov         eax,dword ptr [ebp-4]
 004254BB    call        0042AAD0
 004254C0    mov         ebx,eax
 004254C2    mov         eax,dword ptr [ebp+8]
 004254C5    mov         eax,dword ptr [eax-4]
 004254C8    call        @DynArrayLength
 004254CD    mov         edx,dword ptr [ebp+8]
 004254D0    mov         edx,dword ptr [edx-4]
 004254D3    mov         dword ptr [edx+eax*4-4],ebx
 004254D7    inc         dword ptr [ebp-8]
 004254DA    dec         dword ptr [ebp-0C]
>004254DD    jne         0042547E
 004254DF    pop         ebx
 004254E0    mov         esp,ebp
 004254E2    pop         ebp
 004254E3    ret
end;*}

//004254E4
{*procedure sub_004254E4(?:?; ?:?; ?:?);
begin
 004254E4    push        ebp
 004254E5    mov         ebp,esp
 004254E7    add         esp,0FFFFFFF4
 004254EA    mov         byte ptr [ebp-3],dl
 004254ED    mov         word ptr [ebp-2],ax
 004254F1    mov         eax,dword ptr [ebp+8]
 004254F4    mov         eax,dword ptr [eax-4]
 004254F7    call        @DynArrayLength
 004254FC    dec         eax
 004254FD    test        eax,eax
>004254FF    jl          00425566
 00425501    inc         eax
 00425502    mov         dword ptr [ebp-0C],eax
 00425505    mov         dword ptr [ebp-8],0
 0042550C    cmp         byte ptr [ebp-3],0
>00425510    je          00425538
 00425512    mov         eax,dword ptr [ebp+8]
 00425515    mov         eax,dword ptr [eax-4]
 00425518    mov         edx,dword ptr [ebp-8]
 0042551B    mov         eax,dword ptr [eax+edx*4]
 0042551E    mov         ax,word ptr [eax+1C]
 00425522    or          ax,word ptr [ebp-2]
 00425526    mov         edx,dword ptr [ebp+8]
 00425529    mov         edx,dword ptr [edx-4]
 0042552C    mov         ecx,dword ptr [ebp-8]
 0042552F    mov         edx,dword ptr [edx+ecx*4]
 00425532    mov         word ptr [edx+1C],ax
>00425536    jmp         0042555E
 00425538    mov         eax,dword ptr [ebp+8]
 0042553B    mov         eax,dword ptr [eax-4]
 0042553E    mov         edx,dword ptr [ebp-8]
 00425541    mov         eax,dword ptr [eax+edx*4]
 00425544    mov         dx,word ptr [ebp-2]
 00425548    not         edx
 0042554A    and         dx,word ptr [eax+1C]
 0042554E    mov         eax,dword ptr [ebp+8]
 00425551    mov         eax,dword ptr [eax-4]
 00425554    mov         ecx,dword ptr [ebp-8]
 00425557    mov         eax,dword ptr [eax+ecx*4]
 0042555A    mov         word ptr [eax+1C],dx
 0042555E    inc         dword ptr [ebp-8]
 00425561    dec         dword ptr [ebp-0C]
>00425564    jne         0042550C
 00425566    mov         esp,ebp
 00425568    pop         ebp
 00425569    ret
end;*}

//0042556C
{*function sub_0042556C(?:?):?;
begin
 0042556C    push        ebp
 0042556D    mov         ebp,esp
 0042556F    push        ecx
 00425570    mov         eax,dword ptr [ebp+8]
 00425573    test        byte ptr [eax-9],1
>00425577    jne         00425582
 00425579    mov         eax,dword ptr [ebp+8]
 0042557C    cmp         dword ptr [eax-10],0
>00425580    je          00425586
 00425582    xor         eax,eax
>00425584    jmp         00425588
 00425586    mov         al,1
 00425588    mov         byte ptr [ebp-1],al
 0042558B    mov         al,byte ptr [ebp-1]
 0042558E    pop         ecx
 0042558F    pop         ebp
 00425590    ret
end;*}

//00425594
function Recover(var Component:TComponent):Boolean;
begin
{*
 00425594    push        ebp
 00425595    mov         ebp,esp
 00425597    add         esp,0FFFFFFF8
 0042559A    mov         dword ptr [ebp-4],eax
 0042559D    mov         byte ptr [ebp-5],0
 004255A1    call        ExceptObject
 004255A6    mov         edx,dword ptr ds:[40B004];Exception
 004255AC    call        @IsClass
 004255B1    test        al,al
>004255B3    je          004255F7
 004255B5    mov         eax,dword ptr [ebp+8]
 004255B8    push        eax
 004255B9    call        0042556C
 004255BE    pop         ecx
 004255BF    test        al,al
>004255C1    je          004255CD
 004255C3    mov         eax,dword ptr [ebp-4]
 004255C6    mov         eax,dword ptr [eax]
 004255C8    call        TObject.Free
 004255CD    mov         eax,dword ptr [ebp-4]
 004255D0    xor         edx,edx
 004255D2    mov         dword ptr [eax],edx
 004255D4    mov         eax,dword ptr [ebp+8]
 004255D7    mov         eax,dword ptr [eax-8]
 004255DA    xor         edx,edx
 004255DC    call        00427124
 004255E1    call        ExceptObject
 004255E6    mov         edx,dword ptr [eax+4]
 004255E9    mov         eax,dword ptr [ebp+8]
 004255EC    mov         eax,dword ptr [eax-8]
 004255EF    mov         ecx,dword ptr [eax]
 004255F1    call        dword ptr [ecx+10]
 004255F4    mov         byte ptr [ebp-5],al
 004255F7    mov         al,byte ptr [ebp-5]
 004255FA    pop         ecx
 004255FB    pop         ecx
 004255FC    pop         ebp
 004255FD    ret
*}
end;

//00425600
{*procedure sub_00425600(?:?);
begin
 00425600    push        ebp
 00425601    mov         ebp,esp
 00425603    push        ecx
 00425604    push        ebx
 00425605    push        esi
 00425606    push        edi
 00425607    xor         eax,eax
 00425609    push        ebp
 0042560A    push        4256EA
 0042560F    push        dword ptr fs:[eax]
 00425612    mov         dword ptr fs:[eax],esp
 00425615    mov         eax,dword ptr [ebp+8]
 00425618    mov         edx,dword ptr [eax-18]
 0042561B    mov         eax,dword ptr [ebp+8]
 0042561E    mov         eax,dword ptr [eax-8]
 00425621    call        0042730C
 00425626    mov         dword ptr [ebp-4],eax
 00425629    mov         eax,dword ptr [ebp+8]
 0042562C    xor         edx,edx
 0042562E    mov         dword ptr [eax-14],edx
 00425631    mov         eax,dword ptr [ebp+8]
 00425634    mov         eax,dword ptr [eax-8]
 00425637    cmp         word ptr [eax+6A],0
>0042563C    je          0042565A
 0042563E    mov         eax,dword ptr [ebp+8]
 00425641    add         eax,0FFFFFFEC
 00425644    push        eax
 00425645    mov         eax,dword ptr [ebp+8]
 00425648    mov         ebx,dword ptr [eax-8]
 0042564B    mov         eax,dword ptr [ebp+8]
 0042564E    mov         edx,dword ptr [eax-8]
 00425651    mov         ecx,dword ptr [ebp-4]
 00425654    mov         eax,dword ptr [ebx+6C]
 00425657    call        dword ptr [ebx+68]
 0042565A    mov         eax,dword ptr [ebp+8]
 0042565D    cmp         dword ptr [eax-14],0
>00425661    jne         004256D5
 00425663    mov         eax,dword ptr [ebp-4]
 00425666    call        dword ptr [eax-0C]
 00425669    mov         edx,dword ptr [ebp+8]
 0042566C    mov         dword ptr [edx-14],eax
 0042566F    mov         eax,dword ptr [ebp+8]
 00425672    test        byte ptr [eax-9],4
>00425676    je          0042568F
 00425678    mov         eax,dword ptr [ebp+8]
 0042567B    mov         eax,dword ptr [eax-14]
 0042567E    or          word ptr [eax+1C],1
 00425683    mov         eax,dword ptr [ebp+8]
 00425686    mov         eax,dword ptr [eax-14]
 00425689    or          word ptr [eax+1C],200
 0042568F    xor         eax,eax
 00425691    push        ebp
 00425692    push        4256BE
 00425697    push        dword ptr fs:[eax]
 0042569A    mov         dword ptr fs:[eax],esp
 0042569D    mov         eax,dword ptr [ebp+8]
 004256A0    mov         eax,dword ptr [eax-8]
 004256A3    mov         ecx,dword ptr [eax+28]
 004256A6    mov         eax,dword ptr [ebp+8]
 004256A9    mov         eax,dword ptr [eax-14]
 004256AC    or          edx,0FFFFFFFF
 004256AF    mov         ebx,dword ptr [eax]
 004256B1    call        dword ptr [ebx+2C]
 004256B4    xor         eax,eax
 004256B6    pop         edx
 004256B7    pop         ecx
 004256B8    pop         ecx
 004256B9    mov         dword ptr fs:[eax],edx
>004256BC    jmp         004256D5
>004256BE    jmp         @HandleAnyException
 004256C3    mov         eax,dword ptr [ebp+8]
 004256C6    xor         edx,edx
 004256C8    mov         dword ptr [eax-14],edx
 004256CB    call        @RaiseAgain
 004256D0    call        @DoneExcept
 004256D5    mov         eax,dword ptr [ebp+8]
 004256D8    mov         eax,dword ptr [eax-14]
 004256DB    or          word ptr [eax+1C],1
 004256E0    xor         eax,eax
 004256E2    pop         edx
 004256E3    pop         ecx
 004256E4    pop         ecx
 004256E5    mov         dword ptr fs:[eax],edx
>004256E8    jmp         0042570D
>004256EA    jmp         @HandleAnyException
 004256EF    mov         eax,dword ptr [ebp+8]
 004256F2    push        eax
 004256F3    mov         eax,dword ptr [ebp+8]
 004256F6    add         eax,0FFFFFFEC
 004256F9    call        Recover
 004256FE    pop         ecx
 004256FF    test        al,al
>00425701    jne         00425708
 00425703    call        @RaiseAgain
 00425708    call        @DoneExcept
 0042570D    pop         edi
 0042570E    pop         esi
 0042570F    pop         ebx
 00425710    pop         ecx
 00425711    pop         ebp
 00425712    ret
end;*}

//00425714
procedure SetCompName;
begin
{*
 00425714    push        ebp
 00425715    mov         ebp,esp
 00425717    push        ebx
 00425718    push        esi
 00425719    push        edi
 0042571A    xor         eax,eax
 0042571C    push        ebp
 0042571D    push        42578C
 00425722    push        dword ptr fs:[eax]
 00425725    mov         dword ptr fs:[eax],esp
 00425728    mov         eax,dword ptr [ebp+8]
 0042572B    mov         eax,dword ptr [eax-8]
 0042572E    mov         edx,dword ptr [eax+2C]
 00425731    mov         eax,dword ptr [ebp+8]
 00425734    mov         eax,dword ptr [eax-14]
 00425737    mov         si,0FFF8
 0042573B    call        @CallDynaInst
 00425740    mov         eax,dword ptr [ebp+8]
 00425743    lea         ecx,[eax-1C]
 00425746    mov         eax,dword ptr [ebp+8]
 00425749    mov         edx,dword ptr [eax-14]
 0042574C    mov         eax,dword ptr [ebp+8]
 0042574F    mov         eax,dword ptr [eax-8]
 00425752    mov         ebx,dword ptr [eax]
 00425754    call        dword ptr [ebx+1C]
 00425757    mov         eax,dword ptr [ebp+8]
 0042575A    mov         eax,dword ptr [eax-14]
 0042575D    test        byte ptr [eax+1C],10
>00425761    je          00425782
 00425763    mov         eax,dword ptr [ebp+8]
 00425766    mov         eax,dword ptr [eax-1C]
 00425769    call        0041FA88
 0042576E    mov         edx,dword ptr [ebp+8]
 00425771    cmp         eax,dword ptr [edx-14]
>00425774    jne         00425782
 00425776    mov         eax,dword ptr [ebp+8]
 00425779    mov         eax,dword ptr [eax-14]
 0042577C    or          word ptr [eax+1C],200
 00425782    xor         eax,eax
 00425784    pop         edx
 00425785    pop         ecx
 00425786    pop         ecx
 00425787    mov         dword ptr fs:[eax],edx
>0042578A    jmp         004257AF
>0042578C    jmp         @HandleAnyException
 00425791    mov         eax,dword ptr [ebp+8]
 00425794    push        eax
 00425795    mov         eax,dword ptr [ebp+8]
 00425798    add         eax,0FFFFFFEC
 0042579B    call        Recover
 004257A0    pop         ecx
 004257A1    test        al,al
>004257A3    jne         004257AA
 004257A5    call        @RaiseAgain
 004257AA    call        @DoneExcept
 004257AF    pop         edi
 004257B0    pop         esi
 004257B1    pop         ebx
 004257B2    pop         ebp
 004257B3    ret
*}
end;

//004257B4
{*procedure sub_004257B4(?:?);
begin
 004257B4    push        ebp
 004257B5    mov         ebp,esp
 004257B7    push        ebx
 004257B8    push        esi
 004257B9    push        edi
 004257BA    xor         eax,eax
 004257BC    push        ebp
 004257BD    push        425832
 004257C2    push        dword ptr fs:[eax]
 004257C5    mov         dword ptr fs:[eax],esp
 004257C8    mov         eax,dword ptr [ebp+8]
 004257CB    mov         edx,dword ptr [eax-18]
 004257CE    mov         eax,dword ptr [ebp+8]
 004257D1    mov         eax,dword ptr [eax-8]
 004257D4    call        0042730C
 004257D9    mov         ecx,eax
 004257DB    mov         eax,dword ptr [ebp+8]
 004257DE    mov         edx,dword ptr [eax-1C]
 004257E1    mov         eax,dword ptr [ebp+8]
 004257E4    mov         eax,dword ptr [eax-8]
 004257E7    mov         ebx,dword ptr [eax]
 004257E9    call        dword ptr [ebx+14]
 004257EC    mov         edx,dword ptr [ebp+8]
 004257EF    mov         dword ptr [edx-14],eax
 004257F2    mov         eax,dword ptr [ebp+8]
 004257F5    mov         eax,dword ptr [eax-14]
 004257F8    mov         si,0FFF2
 004257FC    call        @CallDynaInst
 00425801    mov         edx,dword ptr [ebp+8]
 00425804    mov         edx,dword ptr [edx-8]
 00425807    mov         dword ptr [edx+2C],eax
 0042580A    mov         eax,dword ptr [ebp+8]
 0042580D    mov         eax,dword ptr [eax-8]
 00425810    cmp         dword ptr [eax+2C],0
>00425814    jne         00425828
 00425816    mov         eax,dword ptr [ebp+8]
 00425819    mov         eax,dword ptr [eax-8]
 0042581C    mov         eax,dword ptr [eax+18]
 0042581F    mov         edx,dword ptr [ebp+8]
 00425822    mov         edx,dword ptr [edx-8]
 00425825    mov         dword ptr [edx+2C],eax
 00425828    xor         eax,eax
 0042582A    pop         edx
 0042582B    pop         ecx
 0042582C    pop         ecx
 0042582D    mov         dword ptr fs:[eax],edx
>00425830    jmp         00425855
>00425832    jmp         @HandleAnyException
 00425837    mov         eax,dword ptr [ebp+8]
 0042583A    push        eax
 0042583B    mov         eax,dword ptr [ebp+8]
 0042583E    add         eax,0FFFFFFEC
 00425841    call        Recover
 00425846    pop         ecx
 00425847    test        al,al
>00425849    jne         00425850
 0042584B    call        @RaiseAgain
 00425850    call        @DoneExcept
 00425855    pop         edi
 00425856    pop         esi
 00425857    pop         ebx
 00425858    pop         ebp
 00425859    ret
end;*}

//0042585C
{*function sub_0042585C(?:?; ?:?):?;
begin
 0042585C    push        ebp
 0042585D    mov         ebp,esp
 0042585F    add         esp,0FFFFFFD4
 00425862    push        ebx
 00425863    push        esi
 00425864    push        edi
 00425865    xor         ecx,ecx
 00425867    mov         dword ptr [ebp-18],ecx
 0042586A    mov         dword ptr [ebp-1C],ecx
 0042586D    mov         dword ptr [ebp-4],ecx
 00425870    mov         dword ptr [ebp-10],edx
 00425873    mov         dword ptr [ebp-8],eax
 00425876    xor         eax,eax
 00425878    push        ebp
 00425879    push        425A7D
 0042587E    push        dword ptr fs:[eax]
 00425881    mov         dword ptr fs:[eax],esp
 00425884    lea         ecx,[ebp-20]
 00425887    lea         edx,[ebp-9]
 0042588A    mov         eax,dword ptr [ebp-8]
 0042588D    mov         ebx,dword ptr [eax]
 0042588F    call        dword ptr [ebx+24]
 00425892    lea         edx,[ebp-18]
 00425895    mov         eax,dword ptr [ebp-8]
 00425898    call        TReader.ReadStr
 0042589D    lea         edx,[ebp-1C]
 004258A0    mov         eax,dword ptr [ebp-8]
 004258A3    call        TReader.ReadStr
 004258A8    mov         eax,dword ptr [ebp-8]
 004258AB    mov         eax,dword ptr [eax+2C]
 004258AE    mov         dword ptr [ebp-24],eax
 004258B1    mov         eax,dword ptr [ebp-8]
 004258B4    mov         eax,dword ptr [eax+1C]
 004258B7    mov         dword ptr [ebp-28],eax
 004258BA    xor         eax,eax
 004258BC    push        ebp
 004258BD    push        425A4D
 004258C2    push        dword ptr fs:[eax]
 004258C5    mov         dword ptr fs:[eax],esp
 004258C8    mov         eax,dword ptr [ebp-10]
 004258CB    mov         dword ptr [ebp-14],eax
 004258CE    cmp         dword ptr [ebp-14],0
>004258D2    jne         004258EA
 004258D4    test        byte ptr [ebp-9],1
>004258D8    je          004258E3
 004258DA    push        ebp
 004258DB    call        004257B4
 004258E0    pop         ecx
>004258E1    jmp         004258EA
 004258E3    push        ebp
 004258E4    call        00425600
 004258E9    pop         ecx
 004258EA    cmp         dword ptr [ebp-14],0
>004258EE    je          00425A2D
 004258F4    xor         eax,eax
 004258F6    push        ebp
 004258F7    push        425A0B
 004258FC    push        dword ptr fs:[eax]
 004258FF    mov         dword ptr fs:[eax],esp
 00425902    push        ebp
 00425903    mov         eax,dword ptr [ebp-14]
 00425906    call        0042545C
 0042590B    pop         ecx
 0042590C    mov         eax,dword ptr [ebp-14]
 0042590F    or          word ptr [eax+1C],1
 00425914    push        ebp
 00425915    mov         dl,1
 00425917    mov         ax,[00425A90];0x1 gvar_00425A90
 0042591D    call        004254E4
 00425922    pop         ecx
 00425923    test        byte ptr [ebp-9],1
>00425927    jne         00425930
 00425929    push        ebp
 0042592A    call        SetCompName
 0042592F    pop         ecx
 00425930    cmp         dword ptr [ebp-14],0
>00425934    jne         00425948
 00425936    xor         eax,eax
 00425938    pop         edx
 00425939    pop         ecx
 0042593A    pop         ecx
 0042593B    mov         dword ptr fs:[eax],edx
 0042593E    call        @TryFinallyExit
>00425943    jmp         00425A54
 00425948    mov         eax,dword ptr [ebp-14]
 0042594B    test        byte ptr [eax+1D],2
>0042594F    je          0042595A
 00425951    mov         eax,dword ptr [ebp-8]
 00425954    mov         edx,dword ptr [ebp-14]
 00425957    mov         dword ptr [eax+1C],edx
 0042595A    mov         eax,dword ptr [ebp-14]
 0042595D    or          word ptr [eax+1C],2
 00425962    push        ebp
 00425963    mov         dl,1
 00425965    mov         ax,[00425A94];0x2 gvar_00425A94
 0042596B    call        004254E4
 00425970    pop         ecx
 00425971    mov         edx,dword ptr [ebp-8]
 00425974    mov         eax,dword ptr [ebp-14]
 00425977    mov         ecx,dword ptr [eax]
 00425979    call        dword ptr [ecx+14]
 0042597C    mov         eax,dword ptr [ebp-14]
 0042597F    and         word ptr [eax+1C],0FFFFFFFD
 00425984    push        ebp
 00425985    xor         edx,edx
 00425987    mov         ax,[00425A94];0x2 gvar_00425A94
 0042598D    call        004254E4
 00425992    pop         ecx
 00425993    test        byte ptr [ebp-9],2
>00425997    je          004259AE
 00425999    mov         eax,dword ptr [ebp-8]
 0042599C    mov         eax,dword ptr [eax+2C]
 0042599F    mov         ecx,dword ptr [ebp-20]
 004259A2    mov         edx,dword ptr [ebp-14]
 004259A5    mov         si,0FFF9
 004259A9    call        @CallDynaInst
 004259AE    test        byte ptr [ebp-9],1
>004259B2    jne         004259BD
 004259B4    mov         eax,dword ptr [ebp-14]
 004259B7    test        byte ptr [eax+1D],2
>004259BB    je          004259E9
 004259BD    mov         eax,dword ptr [ebp-8]
 004259C0    mov         eax,dword ptr [eax+34]
 004259C3    mov         edx,dword ptr [ebp-14]
 004259C6    call        004202BC
 004259CB    test        eax,eax
>004259CD    jge         00425A01
 004259CF    push        ebp
 004259D0    mov         eax,dword ptr [ebp-14]
 004259D3    call        00425410
 004259D8    pop         ecx
 004259D9    mov         eax,dword ptr [ebp-8]
 004259DC    mov         eax,dword ptr [eax+34]
 004259DF    mov         edx,dword ptr [ebp-14]
 004259E2    call        TList.Add
>004259E7    jmp         00425A01
 004259E9    push        ebp
 004259EA    mov         eax,dword ptr [ebp-14]
 004259ED    call        00425410
 004259F2    pop         ecx
 004259F3    mov         eax,dword ptr [ebp-8]
 004259F6    mov         eax,dword ptr [eax+34]
 004259F9    mov         edx,dword ptr [ebp-14]
 004259FC    call        TList.Add
 00425A01    xor         eax,eax
 00425A03    pop         edx
 00425A04    pop         ecx
 00425A05    pop         ecx
 00425A06    mov         dword ptr fs:[eax],edx
>00425A09    jmp         00425A2D
>00425A0B    jmp         @HandleAnyException
 00425A10    push        ebp
 00425A11    call        0042556C
 00425A16    pop         ecx
 00425A17    test        al,al
>00425A19    je          00425A23
 00425A1B    mov         eax,dword ptr [ebp-14]
 00425A1E    call        TObject.Free
 00425A23    call        @RaiseAgain
 00425A28    call        @DoneExcept
 00425A2D    xor         eax,eax
 00425A2F    pop         edx
 00425A30    pop         ecx
 00425A31    pop         ecx
 00425A32    mov         dword ptr fs:[eax],edx
 00425A35    push        425A54
 00425A3A    mov         eax,dword ptr [ebp-8]
 00425A3D    mov         edx,dword ptr [ebp-24]
 00425A40    mov         dword ptr [eax+2C],edx
 00425A43    mov         eax,dword ptr [ebp-8]
 00425A46    mov         edx,dword ptr [ebp-28]
 00425A49    mov         dword ptr [eax+1C],edx
 00425A4C    ret
>00425A4D    jmp         @HandleFinally
>00425A52    jmp         00425A3A
 00425A54    xor         eax,eax
 00425A56    pop         edx
 00425A57    pop         ecx
 00425A58    pop         ecx
 00425A59    mov         dword ptr fs:[eax],edx
 00425A5C    push        425A84
 00425A61    lea         eax,[ebp-1C]
 00425A64    mov         edx,2
 00425A69    call        @LStrArrayClr
 00425A6E    lea         eax,[ebp-4]
 00425A71    mov         edx,dword ptr ds:[4253EC];_DynArr_15_06
 00425A77    call        @DynArrayClear
 00425A7C    ret
>00425A7D    jmp         @HandleFinally
>00425A82    jmp         00425A61
 00425A84    mov         eax,dword ptr [ebp-14]
 00425A87    pop         edi
 00425A88    pop         esi
 00425A89    pop         ebx
 00425A8A    mov         esp,ebp
 00425A8C    pop         ebp
 00425A8D    ret
end;*}

//00425A98
{*procedure sub_00425A98(?:?; ?:TComponent);
begin
 00425A98    push        ebp
 00425A99    mov         ebp,esp
 00425A9B    add         esp,0FFFFFFF8
 00425A9E    mov         dword ptr [ebp-8],edx
 00425AA1    mov         dword ptr [ebp-4],eax
 00425AA4    mov         eax,dword ptr [ebp-4]
 00425AA7    cmp         dword ptr [eax+30],0
>00425AAB    jne         00425AFD
 00425AAD    mov         dl,1
 00425AAF    mov         eax,[0041D46C];TList
 00425AB4    call        TObject.Create;TList.Create
 00425AB9    mov         edx,dword ptr [ebp-4]
 00425ABC    mov         dword ptr [edx+30],eax
 00425ABF    xor         eax,eax
 00425AC1    push        ebp
 00425AC2    push        425AF6
 00425AC7    push        dword ptr fs:[eax]
 00425ACA    mov         dword ptr fs:[eax],esp
 00425ACD    mov         edx,dword ptr [ebp-8]
 00425AD0    mov         eax,dword ptr [ebp-4]
 00425AD3    call        00425B0C
 00425AD8    mov         eax,dword ptr [ebp-4]
 00425ADB    call        00424F2C
 00425AE0    xor         eax,eax
 00425AE2    pop         edx
 00425AE3    pop         ecx
 00425AE4    pop         ecx
 00425AE5    mov         dword ptr fs:[eax],edx
 00425AE8    push        425B08
 00425AED    mov         eax,dword ptr [ebp-4]
 00425AF0    call        00425090
 00425AF5    ret
>00425AF6    jmp         @HandleFinally
>00425AFB    jmp         00425AED
 00425AFD    mov         edx,dword ptr [ebp-8]
 00425B00    mov         eax,dword ptr [ebp-4]
 00425B03    call        00425B0C
 00425B08    pop         ecx
 00425B09    pop         ecx
 00425B0A    pop         ebp
 00425B0B    ret
end;*}

//00425B0C
{*procedure sub_00425B0C(?:?; ?:?);
begin
 00425B0C    push        ebp
 00425B0D    mov         ebp,esp
 00425B0F    add         esp,0FFFFFFF0
 00425B12    push        esi
 00425B13    mov         dword ptr [ebp-8],edx
 00425B16    mov         dword ptr [ebp-4],eax
>00425B19    jmp         00425B26
 00425B1B    mov         edx,dword ptr [ebp-8]
 00425B1E    mov         eax,dword ptr [ebp-4]
 00425B21    call        0042607C
 00425B26    mov         eax,dword ptr [ebp-4]
 00425B29    call        TReader.EndOfList
 00425B2E    test        al,al
>00425B30    je          00425B1B
 00425B32    mov         eax,dword ptr [ebp-4]
 00425B35    call        TReader.ReadListEnd
 00425B3A    mov         eax,dword ptr [ebp-4]
 00425B3D    mov         eax,dword ptr [eax+2C]
 00425B40    mov         dword ptr [ebp-0C],eax
 00425B43    mov         eax,dword ptr [ebp-4]
 00425B46    mov         eax,dword ptr [eax+28]
 00425B49    mov         dword ptr [ebp-10],eax
 00425B4C    mov         eax,dword ptr [ebp-8]
 00425B4F    mov         si,0FFFB
 00425B53    call        @CallDynaInst
 00425B58    mov         edx,dword ptr [ebp-4]
 00425B5B    mov         dword ptr [edx+2C],eax
 00425B5E    xor         eax,eax
 00425B60    push        ebp
 00425B61    push        425BD3
 00425B66    push        dword ptr fs:[eax]
 00425B69    mov         dword ptr fs:[eax],esp
 00425B6C    mov         eax,dword ptr [ebp-8]
 00425B6F    mov         si,0FFFC
 00425B73    call        @CallDynaInst
 00425B78    mov         edx,dword ptr [ebp-4]
 00425B7B    mov         dword ptr [edx+28],eax
 00425B7E    mov         eax,dword ptr [ebp-4]
 00425B81    cmp         dword ptr [eax+28],0
>00425B85    jne         00425B9F
 00425B87    mov         eax,dword ptr [ebp-4]
 00425B8A    mov         eax,dword ptr [eax+18]
 00425B8D    mov         edx,dword ptr [ebp-4]
 00425B90    mov         dword ptr [edx+28],eax
>00425B93    jmp         00425B9F
 00425B95    xor         edx,edx
 00425B97    mov         eax,dword ptr [ebp-4]
 00425B9A    call        0042585C
 00425B9F    mov         eax,dword ptr [ebp-4]
 00425BA2    call        TReader.EndOfList
 00425BA7    test        al,al
>00425BA9    je          00425B95
 00425BAB    mov         eax,dword ptr [ebp-4]
 00425BAE    call        TReader.ReadListEnd
 00425BB3    xor         eax,eax
 00425BB5    pop         edx
 00425BB6    pop         ecx
 00425BB7    pop         ecx
 00425BB8    mov         dword ptr fs:[eax],edx
 00425BBB    push        425BDA
 00425BC0    mov         eax,dword ptr [ebp-4]
 00425BC3    mov         edx,dword ptr [ebp-0C]
 00425BC6    mov         dword ptr [eax+2C],edx
 00425BC9    mov         eax,dword ptr [ebp-4]
 00425BCC    mov         edx,dword ptr [ebp-10]
 00425BCF    mov         dword ptr [eax+28],edx
 00425BD2    ret
>00425BD3    jmp         @HandleFinally
>00425BD8    jmp         00425BC0
 00425BDA    pop         esi
 00425BDB    mov         esp,ebp
 00425BDD    pop         ebp
 00425BDE    ret
end;*}

//00425BE0
{*procedure sub_00425BE0(?:?);
begin
 00425BE0    push        ebp
 00425BE1    mov         ebp,esp
 00425BE3    add         esp,0FFFFFFE8
 00425BE6    mov         dword ptr [ebp-4],eax
 00425BE9    mov         eax,dword ptr [ebp-4]
 00425BEC    call        TReader.ReadValue
 00425BF1    cmp         al,5
>00425BF3    jne         00425C07
 00425BF5    lea         edx,[ebp-10]
 00425BF8    mov         ecx,0A
 00425BFD    mov         eax,dword ptr [ebp-4]
 00425C00    call        TReader.Read
>00425C05    jmp         00425C22
 00425C07    mov         eax,dword ptr [ebp-4]
 00425C0A    dec         dword ptr [eax+10]
 00425C0D    mov         eax,dword ptr [ebp-4]
 00425C10    call        00425E94
 00425C15    mov         dword ptr [ebp-18],eax
 00425C18    mov         dword ptr [ebp-14],edx
 00425C1B    fild        qword ptr [ebp-18]
 00425C1E    fstp        tbyte ptr [ebp-10]
 00425C21    wait
 00425C22    fld         tbyte ptr [ebp-10]
 00425C25    mov         esp,ebp
 00425C27    pop         ebp
 00425C28    ret
end;*}

//00425C2C
{*procedure sub_00425C2C(?:?);
begin
 00425C2C    push        ebp
 00425C2D    mov         ebp,esp
 00425C2F    add         esp,0FFFFFFF0
 00425C32    mov         dword ptr [ebp-4],eax
 00425C35    mov         eax,dword ptr [ebp-4]
 00425C38    call        TReader.ReadValue
 00425C3D    cmp         al,0F
>00425C3F    jne         00425C53
 00425C41    lea         edx,[ebp-8]
 00425C44    mov         ecx,4
 00425C49    mov         eax,dword ptr [ebp-4]
 00425C4C    call        TReader.Read
>00425C51    jmp         00425C6E
 00425C53    mov         eax,dword ptr [ebp-4]
 00425C56    dec         dword ptr [eax+10]
 00425C59    mov         eax,dword ptr [ebp-4]
 00425C5C    call        00425E94
 00425C61    mov         dword ptr [ebp-10],eax
 00425C64    mov         dword ptr [ebp-0C],edx
 00425C67    fild        qword ptr [ebp-10]
 00425C6A    fstp        dword ptr [ebp-8]
 00425C6D    wait
 00425C6E    fld         dword ptr [ebp-8]
 00425C71    mov         esp,ebp
 00425C73    pop         ebp
 00425C74    ret
end;*}

//00425C78
{*procedure sub_00425C78(?:?);
begin
 00425C78    push        ebp
 00425C79    mov         ebp,esp
 00425C7B    add         esp,0FFFFFFE8
 00425C7E    mov         dword ptr [ebp-4],eax
 00425C81    mov         eax,dword ptr [ebp-4]
 00425C84    call        TReader.ReadValue
 00425C89    cmp         al,10
>00425C8B    jne         00425C9F
 00425C8D    lea         edx,[ebp-10]
 00425C90    mov         ecx,8
 00425C95    mov         eax,dword ptr [ebp-4]
 00425C98    call        TReader.Read
>00425C9D    jmp         00425CC0
 00425C9F    mov         eax,dword ptr [ebp-4]
 00425CA2    dec         dword ptr [eax+10]
 00425CA5    mov         eax,dword ptr [ebp-4]
 00425CA8    call        00425E94
 00425CAD    mov         dword ptr [ebp-18],eax
 00425CB0    mov         dword ptr [ebp-14],edx
 00425CB3    fild        qword ptr [ebp-18]
 00425CB6    fmul        dword ptr ds:[425CC8];10000:Single
 00425CBC    fistp       qword ptr [ebp-10]
 00425CBF    wait
 00425CC0    fild        qword ptr [ebp-10]
 00425CC3    mov         esp,ebp
 00425CC5    pop         ebp
 00425CC6    ret
end;*}

//00425CCC
{*procedure sub_00425CCC(?:?);
begin
 00425CCC    push        ebp
 00425CCD    mov         ebp,esp
 00425CCF    add         esp,0FFFFFFE8
 00425CD2    mov         dword ptr [ebp-4],eax
 00425CD5    mov         eax,dword ptr [ebp-4]
 00425CD8    call        TReader.ReadValue
 00425CDD    cmp         al,11
>00425CDF    jne         00425CF3
 00425CE1    lea         edx,[ebp-10]
 00425CE4    mov         ecx,8
 00425CE9    mov         eax,dword ptr [ebp-4]
 00425CEC    call        TReader.Read
>00425CF1    jmp         00425D0E
 00425CF3    mov         eax,dword ptr [ebp-4]
 00425CF6    dec         dword ptr [eax+10]
 00425CF9    mov         eax,dword ptr [ebp-4]
 00425CFC    call        00425E94
 00425D01    mov         dword ptr [ebp-18],eax
 00425D04    mov         dword ptr [ebp-14],edx
 00425D07    fild        qword ptr [ebp-18]
 00425D0A    fstp        qword ptr [ebp-10]
 00425D0D    wait
 00425D0E    fld         qword ptr [ebp-10]
 00425D11    mov         esp,ebp
 00425D13    pop         ebp
 00425D14    ret
end;*}

//00425D18
function TReader.ReadIdent:AnsiString;
begin
{*
 00425D18    push        ebp
 00425D19    mov         ebp,esp
 00425D1B    add         esp,0FFFFFFF4
 00425D1E    mov         dword ptr [ebp-8],edx
 00425D21    mov         dword ptr [ebp-4],eax
 00425D24    mov         eax,dword ptr [ebp-4]
 00425D27    call        TReader.ReadValue
 00425D2C    and         eax,7F
 00425D2F    cmp         eax,0D
>00425D32    ja          00425DDF
 00425D38    mov         al,byte ptr [eax+425D45]
 00425D3E    jmp         dword ptr [eax*4+425D53]
 00425D3E    db          5
 00425D3E    db          0
 00425D3E    db          0
 00425D3E    db          0
 00425D3E    db          0
 00425D3E    db          0
 00425D3E    db          0
 00425D3E    db          1
 00425D3E    db          2
 00425D3E    db          3
 00425D3E    db          0
 00425D3E    db          0
 00425D3E    db          0
 00425D3E    db          4
 00425D3E    dd          00425DDF
 00425D3E    dd          00425D6B
 00425D3E    dd          00425DA3
 00425D3E    dd          00425DB2
 00425D3E    dd          00425DC1
 00425D3E    dd          00425DD0
 00425D6B    lea         edx,[ebp-9]
 00425D6E    mov         ecx,1
 00425D73    mov         eax,dword ptr [ebp-4]
 00425D76    call        TReader.Read
 00425D7B    xor         ecx,ecx
 00425D7D    mov         cl,byte ptr [ebp-9]
 00425D80    mov         eax,dword ptr [ebp-8]
 00425D83    xor         edx,edx
 00425D85    call        @LStrFromPCharLen
 00425D8A    mov         eax,dword ptr [ebp-8]
 00425D8D    call        00405598
 00425D92    mov         edx,eax
 00425D94    xor         ecx,ecx
 00425D96    mov         cl,byte ptr [ebp-9]
 00425D99    mov         eax,dword ptr [ebp-4]
 00425D9C    call        TReader.Read
>00425DA1    jmp         00425DE4
 00425DA3    mov         eax,dword ptr [ebp-8]
 00425DA6    mov         edx,425DF0;'False'
 00425DAB    call        @LStrAsg
>00425DB0    jmp         00425DE4
 00425DB2    mov         eax,dword ptr [ebp-8]
 00425DB5    mov         edx,425E00;'True'
 00425DBA    call        @LStrAsg
>00425DBF    jmp         00425DE4
 00425DC1    mov         eax,dword ptr [ebp-8]
 00425DC4    mov         edx,425E10;'nil'
 00425DC9    call        @LStrAsg
>00425DCE    jmp         00425DE4
 00425DD0    mov         eax,dword ptr [ebp-8]
 00425DD3    mov         edx,425E1C;'Null'
 00425DD8    call        @LStrAsg
>00425DDD    jmp         00425DE4
 00425DDF    call        00424BA8
 00425DE4    mov         esp,ebp
 00425DE6    pop         ebp
 00425DE7    ret
*}
end;

//00425E24
{*function sub_00425E24(?:TReader):?;
begin
 00425E24    push        ebp
 00425E25    mov         ebp,esp
 00425E27    add         esp,0FFFFFFF4
 00425E2A    mov         dword ptr [ebp-4],eax
 00425E2D    mov         eax,dword ptr [ebp-4]
 00425E30    call        TReader.ReadValue
 00425E35    sub         al,2
>00425E37    je          00425E43
 00425E39    dec         al
>00425E3B    je          00425E5C
 00425E3D    dec         al
>00425E3F    je          00425E75
>00425E41    jmp         00425E87
 00425E43    lea         edx,[ebp-9]
 00425E46    mov         ecx,1
 00425E4B    mov         eax,dword ptr [ebp-4]
 00425E4E    call        TReader.Read
 00425E53    movsx       eax,byte ptr [ebp-9]
 00425E57    mov         dword ptr [ebp-8],eax
>00425E5A    jmp         00425E8C
 00425E5C    lea         edx,[ebp-0C]
 00425E5F    mov         ecx,2
 00425E64    mov         eax,dword ptr [ebp-4]
 00425E67    call        TReader.Read
 00425E6C    movsx       eax,word ptr [ebp-0C]
 00425E70    mov         dword ptr [ebp-8],eax
>00425E73    jmp         00425E8C
 00425E75    lea         edx,[ebp-8]
 00425E78    mov         ecx,4
 00425E7D    mov         eax,dword ptr [ebp-4]
 00425E80    call        TReader.Read
>00425E85    jmp         00425E8C
 00425E87    call        00424BA8
 00425E8C    mov         eax,dword ptr [ebp-8]
 00425E8F    mov         esp,ebp
 00425E91    pop         ebp
 00425E92    ret
end;*}

//00425E94
{*function sub_00425E94(?:?):?;
begin
 00425E94    push        ebp
 00425E95    mov         ebp,esp
 00425E97    add         esp,0FFFFFFF0
 00425E9A    mov         dword ptr [ebp-4],eax
 00425E9D    mov         eax,dword ptr [ebp-4]
 00425EA0    call        TReader.NextValue
 00425EA5    cmp         al,13
>00425EA7    jne         00425EC3
 00425EA9    mov         eax,dword ptr [ebp-4]
 00425EAC    call        TReader.ReadValue
 00425EB1    lea         edx,[ebp-10]
 00425EB4    mov         ecx,8
 00425EB9    mov         eax,dword ptr [ebp-4]
 00425EBC    call        TReader.Read
>00425EC1    jmp         00425ED2
 00425EC3    mov         eax,dword ptr [ebp-4]
 00425EC6    call        00425E24
 00425ECB    cdq
 00425ECC    mov         dword ptr [ebp-10],eax
 00425ECF    mov         dword ptr [ebp-0C],edx
 00425ED2    mov         eax,dword ptr [ebp-10]
 00425ED5    mov         edx,dword ptr [ebp-0C]
 00425ED8    mov         esp,ebp
 00425EDA    pop         ebp
 00425EDB    ret
end;*}

//00425EDC
procedure TReader.ReadListBegin;
begin
{*
 00425EDC    push        ebp
 00425EDD    mov         ebp,esp
 00425EDF    push        ecx
 00425EE0    mov         dword ptr [ebp-4],eax
 00425EE3    mov         dl,1
 00425EE5    mov         eax,dword ptr [ebp-4]
 00425EE8    call        00424C68
 00425EED    pop         ecx
 00425EEE    pop         ebp
 00425EEF    ret
*}
end;

//00425EF0
procedure TReader.ReadListEnd;
begin
{*
 00425EF0    push        ebp
 00425EF1    mov         ebp,esp
 00425EF3    push        ecx
 00425EF4    mov         dword ptr [ebp-4],eax
 00425EF7    xor         edx,edx
 00425EF9    mov         eax,dword ptr [ebp-4]
 00425EFC    call        00424C68
 00425F01    pop         ecx
 00425F02    pop         ebp
 00425F03    ret
*}
end;

//00425F04
{*procedure sub_00425F04(?:?; ?:?);
begin
 00425F04    push        ebp
 00425F05    mov         ebp,esp
 00425F07    add         esp,0FFFFFFF0
 00425F0A    mov         dword ptr [ebp-0C],ecx
 00425F0D    mov         dword ptr [ebp-8],edx
 00425F10    mov         dword ptr [ebp-4],eax
 00425F13    mov         eax,dword ptr [ebp-8]
 00425F16    mov         dl,byte ptr ds:[425F5C];0x0 gvar_00425F5C
 00425F1C    mov         byte ptr [eax],dl
 00425F1E    mov         eax,dword ptr [ebp-4]
 00425F21    call        TReader.NextValue
 00425F26    and         al,0F0
 00425F28    cmp         al,0F0
>00425F2A    jne         00425F56
 00425F2C    mov         eax,dword ptr [ebp-4]
 00425F2F    call        TReader.ReadValue
 00425F34    mov         byte ptr [ebp-0D],al
 00425F37    mov         al,byte ptr [ebp-0D]
 00425F3A    and         al,0F
 00425F3C    mov         edx,dword ptr [ebp-8]
 00425F3F    mov         byte ptr [edx],al
 00425F41    mov         eax,dword ptr [ebp-8]
 00425F44    test        byte ptr [eax],2
>00425F47    je          00425F56
 00425F49    mov         eax,dword ptr [ebp-4]
 00425F4C    call        00425E24
 00425F51    mov         edx,dword ptr [ebp-0C]
 00425F54    mov         dword ptr [edx],eax
 00425F56    mov         esp,ebp
 00425F58    pop         ebp
 00425F59    ret
end;*}

//00425F60
{*procedure sub_00425F60(?:Exception; ?:?);
begin
 00425F60    push        ebp
 00425F61    mov         ebp,esp
 00425F63    add         esp,0FFFFFED8
 00425F69    xor         edx,edx
 00425F6B    mov         dword ptr [ebp-8],edx
 00425F6E    mov         dword ptr [ebp-4],eax
 00425F71    xor         eax,eax
 00425F73    push        ebp
 00425F74    push        426054
 00425F79    push        dword ptr fs:[eax]
 00425F7C    mov         dword ptr fs:[eax],esp
 00425F7F    lea         eax,[ebp-8]
 00425F82    call        @LStrClr
 00425F87    mov         eax,dword ptr [ebp+8]
 00425F8A    mov         eax,dword ptr [eax-4]
 00425F8D    mov         edx,dword ptr ds:[41E3B8];TComponent
 00425F93    call        @IsClass
 00425F98    test        al,al
>00425F9A    je          00425FAD
 00425F9C    lea         eax,[ebp-8]
 00425F9F    mov         edx,dword ptr [ebp+8]
 00425FA2    mov         edx,dword ptr [edx-4]
 00425FA5    mov         edx,dword ptr [edx+8]
 00425FA8    call        @LStrLAsg
 00425FAD    cmp         dword ptr [ebp-8],0
>00425FB1    jne         00425FD4
 00425FB3    lea         edx,[ebp-108]
 00425FB9    mov         eax,dword ptr [ebp+8]
 00425FBC    mov         eax,dword ptr [eax-4]
 00425FBF    mov         eax,dword ptr [eax]
 00425FC1    call        TObject.ClassName
 00425FC6    lea         edx,[ebp-108]
 00425FCC    lea         eax,[ebp-8]
 00425FCF    call        @LStrFromString
 00425FD4    mov         eax,dword ptr [ebp-8]
 00425FD7    mov         dword ptr [ebp-128],eax
 00425FDD    mov         byte ptr [ebp-124],0B
 00425FE4    mov         eax,[0056E1E4];^gvar_0056BC74
 00425FE9    mov         eax,dword ptr [eax]
 00425FEB    mov         dword ptr [ebp-120],eax
 00425FF1    mov         byte ptr [ebp-11C],0B
 00425FF8    mov         eax,dword ptr [ebp+8]
 00425FFB    mov         eax,dword ptr [eax-8]
 00425FFE    mov         dword ptr [ebp-118],eax
 00426004    mov         byte ptr [ebp-114],0B
 0042600B    mov         eax,dword ptr [ebp-4]
 0042600E    mov         eax,dword ptr [eax+4]
 00426011    mov         dword ptr [ebp-110],eax
 00426017    mov         byte ptr [ebp-10C],0B
 0042601E    lea         eax,[ebp-128]
 00426024    push        eax
 00426025    push        3
 00426027    mov         ecx,dword ptr ds:[56E558];^SPropertyException:TResStringRec
 0042602D    mov         dl,1
 0042602F    mov         eax,[0041D0DC];EReadError
 00426034    call        Exception.CreateResFmt;EReadError.Create
 00426039    call        @RaiseExcept
 0042603E    xor         eax,eax
 00426040    pop         edx
 00426041    pop         ecx
 00426042    pop         ecx
 00426043    mov         dword ptr fs:[eax],edx
 00426046    push        42605B
 0042604B    lea         eax,[ebp-8]
 0042604E    call        @LStrClr
 00426053    ret
>00426054    jmp         @HandleFinally
>00426059    jmp         0042604B
 0042605B    mov         esp,ebp
 0042605D    pop         ebp
 0042605E    ret
end;*}

//00426060
procedure PropPathError;
begin
{*
 00426060    push        ebp
 00426061    mov         ebp,esp
 00426063    mov         eax,dword ptr [ebp+8]
 00426066    mov         eax,dword ptr [eax-0C]
 00426069    call        TReader.SkipValue
 0042606E    mov         eax,[0056E514];^SInvalidPropertyPath:TResStringRec
 00426073    call        ReadError
 00426078    pop         ebp
 00426079    ret
*}
end;

//0042607C
{*procedure sub_0042607C(?:?; ?:?);
begin
 0042607C    push        ebp
 0042607D    mov         ebp,esp
 0042607F    add         esp,0FFFFFFD4
 00426082    push        ebx
 00426083    push        esi
 00426084    push        edi
 00426085    xor         ecx,ecx
 00426087    mov         dword ptr [ebp-8],ecx
 0042608A    mov         dword ptr [ebp-4],edx
 0042608D    mov         dword ptr [ebp-0C],eax
 00426090    xor         eax,eax
 00426092    push        ebp
 00426093    push        42627A
 00426098    push        dword ptr fs:[eax]
 0042609B    mov         dword ptr fs:[eax],esp
 0042609E    xor         eax,eax
 004260A0    push        ebp
 004260A1    push        42622B
 004260A6    push        dword ptr fs:[eax]
 004260A9    mov         dword ptr fs:[eax],esp
 004260AC    lea         edx,[ebp-8]
 004260AF    mov         eax,dword ptr [ebp-0C]
 004260B2    call        TReader.ReadStr
 004260B7    xor         eax,eax
 004260B9    push        ebp
 004260BA    push        4261FE
 004260BF    push        dword ptr fs:[eax]
 004260C2    mov         dword ptr fs:[eax],esp
 004260C5    mov         dword ptr [ebp-10],1
 004260CC    mov         eax,dword ptr [ebp-8]
 004260CF    call        @LStrLen
 004260D4    mov         dword ptr [ebp-18],eax
 004260D7    mov         eax,dword ptr [ebp-4]
 004260DA    mov         dword ptr [ebp-1C],eax
 004260DD    mov         eax,dword ptr [ebp-0C]
 004260E0    mov         byte ptr [eax+78],1
 004260E4    mov         eax,dword ptr [ebp-10]
 004260E7    mov         dword ptr [ebp-14],eax
>004260EA    jmp         004260EF
 004260EC    inc         dword ptr [ebp-10]
 004260EF    mov         eax,dword ptr [ebp-10]
 004260F2    cmp         eax,dword ptr [ebp-18]
>004260F5    jg          00426104
 004260F7    mov         eax,dword ptr [ebp-8]
 004260FA    mov         edx,dword ptr [ebp-10]
 004260FD    cmp         byte ptr [eax+edx-1],2E
>00426102    jne         004260EC
 00426104    mov         eax,dword ptr [ebp-0C]
 00426107    add         eax,70
 0042610A    push        eax
 0042610B    mov         ecx,dword ptr [ebp-10]
 0042610E    sub         ecx,dword ptr [ebp-14]
 00426111    mov         edx,dword ptr [ebp-14]
 00426114    mov         eax,dword ptr [ebp-8]
 00426117    call        @LStrCopy
 0042611C    mov         eax,dword ptr [ebp-10]
 0042611F    cmp         eax,dword ptr [ebp-18]
>00426122    jg          00426196
 00426124    mov         eax,dword ptr [ebp-1C]
 00426127    mov         eax,dword ptr [eax]
 00426129    call        004044E0
 0042612E    mov         edx,dword ptr [ebp-0C]
 00426131    mov         edx,dword ptr [edx+70]
 00426134    call        GetPropInfo
 00426139    mov         dword ptr [ebp-20],eax
 0042613C    cmp         dword ptr [ebp-20],0
>00426140    jne         00426150
 00426142    mov         eax,dword ptr [ebp-0C]
 00426145    mov         edx,dword ptr [eax+70]
 00426148    mov         eax,dword ptr [ebp-0C]
 0042614B    call        004251F0
 00426150    xor         eax,eax
 00426152    mov         dword ptr [ebp-24],eax
 00426155    mov         eax,dword ptr [ebp-20]
 00426158    mov         eax,dword ptr [eax]
 0042615A    mov         eax,dword ptr [eax]
 0042615C    cmp         byte ptr [eax],7
>0042615F    jne         0042616F
 00426161    mov         edx,dword ptr [ebp-20]
 00426164    mov         eax,dword ptr [ebp-1C]
 00426167    call        GetOrdProp
 0042616C    mov         dword ptr [ebp-24],eax
 0042616F    mov         eax,dword ptr [ebp-24]
 00426172    mov         edx,dword ptr ds:[41D57C];TPersistent
 00426178    call        @IsClass
 0042617D    test        al,al
>0042617F    jne         00426188
 00426181    push        ebp
 00426182    call        PropPathError
 00426187    pop         ecx
 00426188    mov         eax,dword ptr [ebp-24]
 0042618B    mov         dword ptr [ebp-1C],eax
 0042618E    inc         dword ptr [ebp-10]
>00426191    jmp         004260E4
 00426196    mov         eax,dword ptr [ebp-1C]
 00426199    mov         eax,dword ptr [eax]
 0042619B    call        004044E0
 004261A0    mov         edx,dword ptr [ebp-0C]
 004261A3    mov         edx,dword ptr [edx+70]
 004261A6    call        GetPropInfo
 004261AB    mov         dword ptr [ebp-20],eax
 004261AE    cmp         dword ptr [ebp-20],0
>004261B2    je          004261C4
 004261B4    mov         ecx,dword ptr [ebp-20]
 004261B7    mov         edx,dword ptr [ebp-1C]
 004261BA    mov         eax,dword ptr [ebp-0C]
 004261BD    call        00426438
>004261C2    jmp         004261F4
 004261C4    mov         eax,dword ptr [ebp-0C]
 004261C7    mov         byte ptr [eax+78],0
 004261CB    mov         edx,dword ptr [ebp-0C]
 004261CE    mov         eax,dword ptr [ebp-1C]
 004261D1    mov         ecx,dword ptr [eax]
 004261D3    call        dword ptr [ecx+4]
 004261D6    mov         eax,dword ptr [ebp-0C]
 004261D9    mov         byte ptr [eax+78],1
 004261DD    mov         eax,dword ptr [ebp-0C]
 004261E0    cmp         dword ptr [eax+70],0
>004261E4    je          004261F4
 004261E6    mov         eax,dword ptr [ebp-0C]
 004261E9    mov         edx,dword ptr [eax+70]
 004261EC    mov         eax,dword ptr [ebp-0C]
 004261EF    call        004251F0
 004261F4    xor         eax,eax
 004261F6    pop         edx
 004261F7    pop         ecx
 004261F8    pop         ecx
 004261F9    mov         dword ptr fs:[eax],edx
>004261FC    jmp         00426221
>004261FE    jmp         @HandleOnException
 00426203    dd          1
 00426207    dd          0040B004;Exception
 0042620B    dd          0042620F
 0042620F    mov         dword ptr [ebp-28],eax
 00426212    push        ebp
 00426213    mov         eax,dword ptr [ebp-28]
 00426216    call        00425F60
 0042621B    pop         ecx
 0042621C    call        @DoneExcept
 00426221    xor         eax,eax
 00426223    pop         edx
 00426224    pop         ecx
 00426225    pop         ecx
 00426226    mov         dword ptr fs:[eax],edx
>00426229    jmp         00426264
>0042622B    jmp         @HandleOnException
 00426230    dd          1
 00426234    dd          0040B004;Exception
 00426238    dd          0042623C
 0042623C    mov         dword ptr [ebp-2C],eax
 0042623F    mov         eax,dword ptr [ebp-0C]
 00426242    cmp         byte ptr [eax+78],0
>00426246    je          0042625A
 00426248    mov         eax,dword ptr [ebp-2C]
 0042624B    mov         edx,dword ptr [eax+4];Exception.FMessage:String
 0042624E    mov         eax,dword ptr [ebp-0C]
 00426251    mov         ecx,dword ptr [eax]
 00426253    call        dword ptr [ecx+10]
 00426256    test        al,al
>00426258    jne         0042625F
 0042625A    call        @RaiseAgain
 0042625F    call        @DoneExcept
 00426264    xor         eax,eax
 00426266    pop         edx
 00426267    pop         ecx
 00426268    pop         ecx
 00426269    mov         dword ptr fs:[eax],edx
 0042626C    push        426281
 00426271    lea         eax,[ebp-8]
 00426274    call        @LStrClr
 00426279    ret
>0042627A    jmp         @HandleFinally
>0042627F    jmp         00426271
 00426281    pop         edi
 00426282    pop         esi
 00426283    pop         ebx
 00426284    mov         esp,ebp
 00426286    pop         ebp
 00426287    ret
end;*}

//00426288
{*procedure sub_00426288(?:Longint; ?:PPropInfo; ?:?);
begin
 00426288    push        ebp
 00426289    mov         ebp,esp
 0042628B    add         esp,0FFFFFFEC
 0042628E    mov         dword ptr [ebp-0C],ecx
 00426291    mov         dword ptr [ebp-8],edx
 00426294    mov         dword ptr [ebp-4],eax
 00426297    mov         eax,dword ptr [ebp-8]
 0042629A    mov         eax,dword ptr [eax]
 0042629C    mov         eax,dword ptr [eax]
 0042629E    call        0041F8D8
 004262A3    mov         dword ptr [ebp-14],eax
 004262A6    cmp         dword ptr [ebp-14],0
>004262AA    je          004262C9
 004262AC    lea         edx,[ebp-10]
 004262AF    mov         eax,dword ptr [ebp-0C]
 004262B2    call        dword ptr [ebp-14]
 004262B5    test        al,al
>004262B7    je          004262C9
 004262B9    mov         ecx,dword ptr [ebp-10]
 004262BC    mov         edx,dword ptr [ebp-8]
 004262BF    mov         eax,dword ptr [ebp-4]
 004262C2    call        SetOrdProp
>004262C7    jmp         004262CE
 004262C9    call        00424BA8
 004262CE    mov         esp,ebp
 004262D0    pop         ebp
 004262D1    ret
end;*}

//004262D4
{*procedure sub_004262D4(?:Longint; ?:PPropInfo; ?:?; ?:?);
begin
 004262D4    push        ebp
 004262D5    mov         ebp,esp
 004262D7    add         esp,0FFFFFFF4
 004262DA    mov         dword ptr [ebp-0C],ecx
 004262DD    mov         dword ptr [ebp-8],edx
 004262E0    mov         dword ptr [ebp-4],eax
 004262E3    mov         eax,dword ptr [ebp+8]
 004262E6    mov         eax,dword ptr [eax-4]
 004262E9    mov         eax,dword ptr [eax+18]
 004262EC    push        eax
 004262ED    mov         eax,dword ptr [ebp-8]
 004262F0    push        eax
 004262F1    push        0
 004262F3    mov         eax,dword ptr [ebp-0C]
 004262F6    push        eax
 004262F7    mov         ecx,dword ptr [ebp-4]
 004262FA    mov         dl,1
 004262FC    mov         eax,[00424448];TPropFixup
 00426301    call        TPropFixup.Create;TPropFixup.Create
 00426306    mov         edx,eax
 00426308    mov         eax,dword ptr [ebp+8]
 0042630B    mov         eax,dword ptr [eax-4]
 0042630E    mov         eax,dword ptr [eax+30]
 00426311    call        TList.Add
 00426316    mov         esp,ebp
 00426318    pop         ebp
 00426319    ret
end;*}

//0042631C
procedure SetVariantReference;
begin
{*
 0042631C    push        ebp
 0042631D    mov         ebp,esp
 0042631F    xor         ecx,ecx
 00426321    push        ecx
 00426322    push        ecx
 00426323    push        ecx
 00426324    push        ecx
 00426325    xor         eax,eax
 00426327    push        ebp
 00426328    push        42636B
 0042632D    push        dword ptr fs:[eax]
 00426330    mov         dword ptr fs:[eax],esp
 00426333    lea         edx,[ebp-10]
 00426336    mov         eax,dword ptr [ebp+8]
 00426339    mov         eax,dword ptr [eax-4]
 0042633C    call        TReader.ReadVariant
 00426341    lea         ecx,[ebp-10]
 00426344    mov         eax,dword ptr [ebp+8]
 00426347    mov         edx,dword ptr [eax-0C]
 0042634A    mov         eax,dword ptr [ebp+8]
 0042634D    mov         eax,dword ptr [eax-8]
 00426350    call        SetVariantProp
 00426355    xor         eax,eax
 00426357    pop         edx
 00426358    pop         ecx
 00426359    pop         ecx
 0042635A    mov         dword ptr fs:[eax],edx
 0042635D    push        426372
 00426362    lea         eax,[ebp-10]
 00426365    call        @VarClr
 0042636A    ret
>0042636B    jmp         @HandleFinally
>00426370    jmp         00426362
 00426372    mov         esp,ebp
 00426374    pop         ebp
 00426375    ret
*}
end;

//00426378
procedure SetInterfaceReference;
begin
{*
 00426378    push        ebp
 00426379    mov         ebp,esp
 0042637B    push        0
 0042637D    push        0
 0042637F    xor         eax,eax
 00426381    push        ebp
 00426382    push        42642A
 00426387    push        dword ptr fs:[eax]
 0042638A    mov         dword ptr fs:[eax],esp
 0042638D    mov         eax,dword ptr [ebp+8]
 00426390    mov         eax,dword ptr [eax-4]
 00426393    call        TReader.NextValue
 00426398    cmp         al,0D
>0042639A    jne         004263C5
 0042639C    mov         eax,dword ptr [ebp+8]
 0042639F    mov         eax,dword ptr [eax-4]
 004263A2    call        TReader.ReadValue
 004263A7    lea         eax,[ebp-4]
 004263AA    call        @IntfClear
 004263AF    mov         eax,dword ptr [ebp+8]
 004263B2    mov         edx,dword ptr [eax-0C]
 004263B5    mov         eax,dword ptr [ebp+8]
 004263B8    mov         eax,dword ptr [eax-8]
 004263BB    mov         ecx,dword ptr [ebp-4]
 004263BE    call        SetInterfaceProp
>004263C3    jmp         0042640C
 004263C5    mov         eax,dword ptr [ebp+8]
 004263C8    mov         eax,dword ptr [eax-4]
 004263CB    mov         eax,dword ptr [eax+18]
 004263CE    push        eax
 004263CF    mov         eax,dword ptr [ebp+8]
 004263D2    mov         eax,dword ptr [eax-0C]
 004263D5    push        eax
 004263D6    push        0
 004263D8    lea         edx,[ebp-8]
 004263DB    mov         eax,dword ptr [ebp+8]
 004263DE    mov         eax,dword ptr [eax-4]
 004263E1    call        TReader.ReadIdent
 004263E6    mov         eax,dword ptr [ebp-8]
 004263E9    push        eax
 004263EA    mov         eax,dword ptr [ebp+8]
 004263ED    mov         ecx,dword ptr [eax-8]
 004263F0    mov         dl,1
 004263F2    mov         eax,[004244C0];TPropIntfFixup
 004263F7    call        TPropFixup.Create
 004263FC    mov         edx,eax
 004263FE    mov         eax,dword ptr [ebp+8]
 00426401    mov         eax,dword ptr [eax-4]
 00426404    mov         eax,dword ptr [eax+30]
 00426407    call        TList.Add
 0042640C    xor         eax,eax
 0042640E    pop         edx
 0042640F    pop         ecx
 00426410    pop         ecx
 00426411    mov         dword ptr fs:[eax],edx
 00426414    push        426431
 00426419    lea         eax,[ebp-8]
 0042641C    call        @LStrClr
 00426421    lea         eax,[ebp-4]
 00426424    call        @IntfClear
 00426429    ret
>0042642A    jmp         @HandleFinally
>0042642F    jmp         00426419
 00426431    pop         ecx
 00426432    pop         ecx
 00426433    pop         ebp
 00426434    ret
*}
end;

//00426438
{*procedure sub_00426438(?:?; ?:Longint; ?:PPropInfo);
begin
 00426438    push        ebp
 00426439    mov         ebp,esp
 0042643B    add         esp,0FFFFFFD0
 0042643E    push        ebx
 0042643F    xor         ebx,ebx
 00426441    mov         dword ptr [ebp-30],ebx
 00426444    mov         dword ptr [ebp-2C],ebx
 00426447    mov         dword ptr [ebp-28],ebx
 0042644A    mov         dword ptr [ebp-24],ebx
 0042644D    mov         dword ptr [ebp-20],ebx
 00426450    mov         dword ptr [ebp-1C],ebx
 00426453    mov         dword ptr [ebp-0C],ecx
 00426456    mov         dword ptr [ebp-8],edx
 00426459    mov         dword ptr [ebp-4],eax
 0042645C    xor         eax,eax
 0042645E    push        ebp
 0042645F    push        426743
 00426464    push        dword ptr fs:[eax]
 00426467    mov         dword ptr fs:[eax],esp
 0042646A    mov         eax,dword ptr [ebp-0C]
 0042646D    cmp         dword ptr [eax+8],0
>00426471    jne         004264B4
 00426473    mov         eax,dword ptr [ebp-0C]
 00426476    mov         eax,dword ptr [eax]
 00426478    mov         eax,dword ptr [eax]
 0042647A    cmp         byte ptr [eax],7
>0042647D    jne         004264AA
 0042647F    mov         edx,dword ptr [ebp-0C]
 00426482    mov         eax,dword ptr [ebp-8]
 00426485    call        GetOrdProp
 0042648A    mov         edx,dword ptr ds:[41E3B8];TComponent
 00426490    call        @IsClass
 00426495    test        al,al
>00426497    je          004264AA
 00426499    mov         edx,dword ptr [ebp-0C]
 0042649C    mov         eax,dword ptr [ebp-8]
 0042649F    call        GetOrdProp
 004264A4    test        byte ptr [eax+24],4
>004264A8    jne         004264B4
 004264AA    mov         eax,[0056E444];^SReadOnlyProperty:TResStringRec
 004264AF    call        ReadError
 004264B4    mov         eax,dword ptr [ebp-0C]
 004264B7    mov         eax,dword ptr [eax]
 004264B9    mov         eax,dword ptr [eax]
 004264BB    mov         dword ptr [ebp-10],eax
 004264BE    mov         eax,dword ptr [ebp-10]
 004264C1    movzx       eax,byte ptr [eax]
 004264C4    cmp         eax,10
>004264C7    ja          00426713
 004264CD    jmp         dword ptr [eax*4+4264D4]
 004264CD    dd          00426713
 004264CD    dd          00426518
 004264CD    dd          0042655E
 004264CD    dd          0042657A
 004264CD    dd          004265A2
 004264CD    dd          004265C1
 004264CD    dd          004265FD
 004264CD    dd          0042661A
 004264CD    dd          00426688
 004264CD    dd          00426713
 004264CD    dd          004265C1
 004264CD    dd          004265DF
 004264CD    dd          004266EC
 004264CD    dd          00426713
 004264CD    dd          00426713
 004264CD    dd          0042670C
 004264CD    dd          004266F5
 00426518    mov         eax,dword ptr [ebp-4]
 0042651B    call        TReader.NextValue
 00426520    cmp         al,7
>00426522    jne         00426544
 00426524    push        ebp
 00426525    lea         edx,[ebp-1C]
 00426528    mov         eax,dword ptr [ebp-4]
 0042652B    call        TReader.ReadIdent
 00426530    mov         ecx,dword ptr [ebp-1C]
 00426533    mov         edx,dword ptr [ebp-0C]
 00426536    mov         eax,dword ptr [ebp-8]
 00426539    call        00426288
 0042653E    pop         ecx
>0042653F    jmp         00426713
 00426544    mov         eax,dword ptr [ebp-4]
 00426547    call        00425E24
 0042654C    mov         ecx,eax
 0042654E    mov         edx,dword ptr [ebp-0C]
 00426551    mov         eax,dword ptr [ebp-8]
 00426554    call        SetOrdProp
>00426559    jmp         00426713
 0042655E    mov         eax,dword ptr [ebp-4]
 00426561    call        004252D0
 00426566    xor         ecx,ecx
 00426568    mov         cl,al
 0042656A    mov         edx,dword ptr [ebp-0C]
 0042656D    mov         eax,dword ptr [ebp-8]
 00426570    call        SetOrdProp
>00426575    jmp         00426713
 0042657A    lea         edx,[ebp-20]
 0042657D    mov         eax,dword ptr [ebp-4]
 00426580    call        TReader.ReadIdent
 00426585    mov         edx,dword ptr [ebp-20]
 00426588    mov         eax,dword ptr [ebp-10]
 0042658B    call        0041B7CC
 00426590    mov         ecx,eax
 00426592    mov         edx,dword ptr [ebp-0C]
 00426595    mov         eax,dword ptr [ebp-8]
 00426598    call        SetOrdProp
>0042659D    jmp         00426713
 004265A2    mov         eax,dword ptr [ebp-4]
 004265A5    call        00425BE0
 004265AA    add         esp,0FFFFFFF4
 004265AD    fstp        tbyte ptr [esp]
 004265B0    wait
 004265B1    mov         edx,dword ptr [ebp-0C]
 004265B4    mov         eax,dword ptr [ebp-8]
 004265B7    call        0041C694
>004265BC    jmp         00426713
 004265C1    lea         edx,[ebp-24]
 004265C4    mov         eax,dword ptr [ebp-4]
 004265C7    call        TReader.ReadString
 004265CC    mov         ecx,dword ptr [ebp-24]
 004265CF    mov         edx,dword ptr [ebp-0C]
 004265D2    mov         eax,dword ptr [ebp-8]
 004265D5    call        0041C2DC
>004265DA    jmp         00426713
 004265DF    lea         edx,[ebp-28]
 004265E2    mov         eax,dword ptr [ebp-4]
 004265E5    call        00426CFC
 004265EA    mov         ecx,dword ptr [ebp-28]
 004265ED    mov         edx,dword ptr [ebp-0C]
 004265F0    mov         eax,dword ptr [ebp-8]
 004265F3    call        0041C444
>004265F8    jmp         00426713
 004265FD    mov         edx,dword ptr [ebp-10]
 00426600    mov         eax,dword ptr [ebp-4]
 00426603    call        00426AF4
 00426608    mov         ecx,eax
 0042660A    mov         edx,dword ptr [ebp-0C]
 0042660D    mov         eax,dword ptr [ebp-8]
 00426610    call        SetOrdProp
>00426615    jmp         00426713
 0042661A    mov         eax,dword ptr [ebp-4]
 0042661D    call        TReader.NextValue
 00426622    sub         al,0D
>00426624    je          0042662C
 00426626    dec         al
>00426628    je          00426646
>0042662A    jmp         00426668
 0042662C    mov         eax,dword ptr [ebp-4]
 0042662F    call        TReader.ReadValue
 00426634    xor         ecx,ecx
 00426636    mov         edx,dword ptr [ebp-0C]
 00426639    mov         eax,dword ptr [ebp-8]
 0042663C    call        SetOrdProp
>00426641    jmp         00426713
 00426646    mov         eax,dword ptr [ebp-4]
 00426649    call        TReader.ReadValue
 0042664E    mov         edx,dword ptr [ebp-0C]
 00426651    mov         eax,dword ptr [ebp-8]
 00426654    call        GetOrdProp
 00426659    mov         edx,eax
 0042665B    mov         eax,dword ptr [ebp-4]
 0042665E    call        TReader.ReadCollection
>00426663    jmp         00426713
 00426668    push        ebp
 00426669    lea         edx,[ebp-2C]
 0042666C    mov         eax,dword ptr [ebp-4]
 0042666F    call        TReader.ReadIdent
 00426674    mov         ecx,dword ptr [ebp-2C]
 00426677    mov         edx,dword ptr [ebp-0C]
 0042667A    mov         eax,dword ptr [ebp-8]
 0042667D    call        004262D4
 00426682    pop         ecx
>00426683    jmp         00426713
 00426688    mov         eax,dword ptr [ebp-4]
 0042668B    call        TReader.NextValue
 00426690    cmp         al,0D
>00426692    jne         004266AE
 00426694    mov         eax,dword ptr [ebp-4]
 00426697    call        TReader.ReadValue
 0042669C    mov         ecx,56BCB4
 004266A1    mov         edx,dword ptr [ebp-0C]
 004266A4    mov         eax,dword ptr [ebp-8]
 004266A7    call        SetMethodProp
>004266AC    jmp         00426713
 004266AE    lea         edx,[ebp-30]
 004266B1    mov         eax,dword ptr [ebp-4]
 004266B4    call        TReader.ReadIdent
 004266B9    mov         ecx,dword ptr [ebp-30]
 004266BC    mov         eax,dword ptr [ebp-4]
 004266BF    mov         edx,dword ptr [eax+18]
 004266C2    mov         eax,dword ptr [ebp-4]
 004266C5    mov         ebx,dword ptr [eax]
 004266C7    call        dword ptr [ebx+18]
 004266CA    mov         dword ptr [ebp-18],eax
 004266CD    mov         eax,dword ptr [ebp-4]
 004266D0    mov         eax,dword ptr [eax+18]
 004266D3    mov         dword ptr [ebp-14],eax
 004266D6    cmp         dword ptr [ebp-18],0
>004266DA    je          00426713
 004266DC    lea         ecx,[ebp-18]
 004266DF    mov         edx,dword ptr [ebp-0C]
 004266E2    mov         eax,dword ptr [ebp-8]
 004266E5    call        SetMethodProp
>004266EA    jmp         00426713
 004266EC    push        ebp
 004266ED    call        SetVariantReference
 004266F2    pop         ecx
>004266F3    jmp         00426713
 004266F5    mov         eax,dword ptr [ebp-4]
 004266F8    call        00425E94
 004266FD    push        edx
 004266FE    push        eax
 004266FF    mov         edx,dword ptr [ebp-0C]
 00426702    mov         eax,dword ptr [ebp-8]
 00426705    call        SetInt64Prop
>0042670A    jmp         00426713
 0042670C    push        ebp
 0042670D    call        SetInterfaceReference
 00426712    pop         ecx
 00426713    xor         eax,eax
 00426715    pop         edx
 00426716    pop         ecx
 00426717    pop         ecx
 00426718    mov         dword ptr fs:[eax],edx
 0042671B    push        42674A
 00426720    lea         eax,[ebp-30]
 00426723    mov         edx,2
 00426728    call        @LStrArrayClr
 0042672D    lea         eax,[ebp-28]
 00426730    call        @WStrClr
 00426735    lea         eax,[ebp-24]
 00426738    mov         edx,3
 0042673D    call        @LStrArrayClr
 00426742    ret
>00426743    jmp         @HandleFinally
>00426748    jmp         00426720
 0042674A    pop         ebx
 0042674B    mov         esp,ebp
 0042674D    pop         ebp
 0042674E    ret
end;*}

//00426750
{*procedure sub_00426750(?:?; ?:?);
begin
 00426750    push        ebp
 00426751    mov         ebp,esp
 00426753    add         esp,0FFFFFFE4
 00426756    mov         dword ptr [ebp-8],edx
 00426759    mov         dword ptr [ebp-4],eax
 0042675C    xor         eax,eax
 0042675E    mov         dword ptr [ebp-0C],eax
 00426761    mov         eax,dword ptr [ebp-8]
 00426764    mov         edx,dword ptr [ebp-4]
 00426767    call        @LStrAsg
>0042676C    jmp         0042679B
 0042676E    inc         dword ptr [ebp-0C]
 00426771    mov         eax,dword ptr [ebp-8]
 00426774    push        eax
 00426775    mov         eax,dword ptr [ebp-4]
 00426778    mov         dword ptr [ebp-1C],eax
 0042677B    mov         byte ptr [ebp-18],0B
 0042677F    mov         eax,dword ptr [ebp-0C]
 00426782    mov         dword ptr [ebp-14],eax
 00426785    mov         byte ptr [ebp-10],0
 00426789    lea         edx,[ebp-1C]
 0042678C    mov         ecx,1
 00426791    mov         eax,4267B8;'%s_%d'
 00426796    call        0040D630
 0042679B    mov         eax,dword ptr [ebp-8]
 0042679E    mov         eax,dword ptr [eax]
 004267A0    call        0041FAE0
 004267A5    test        al,al
>004267A7    je          0042676E
 004267A9    mov         esp,ebp
 004267AB    pop         ebp
 004267AC    ret
end;*}

//004267C0
{*function sub_004267C0(?:TReader; ?:?):?;
begin
 004267C0    push        ebp
 004267C1    mov         ebp,esp
 004267C3    add         esp,0FFFFFFCC
 004267C6    push        ebx
 004267C7    push        esi
 004267C8    push        edi
 004267C9    xor         ecx,ecx
 004267CB    mov         dword ptr [ebp-30],ecx
 004267CE    mov         dword ptr [ebp-34],ecx
 004267D1    mov         dword ptr [ebp-2C],ecx
 004267D4    mov         dword ptr [ebp-28],ecx
 004267D7    mov         dword ptr [ebp-24],ecx
 004267DA    mov         dword ptr [ebp-20],ecx
 004267DD    mov         dword ptr [ebp-8],edx
 004267E0    mov         dword ptr [ebp-4],eax
 004267E3    xor         eax,eax
 004267E5    push        ebp
 004267E6    push        426AE2
 004267EB    push        dword ptr fs:[eax]
 004267EE    mov         dword ptr fs:[eax],esp
 004267F1    mov         eax,dword ptr [ebp-4]
 004267F4    call        00426BBC
 004267F9    xor         eax,eax
 004267FB    mov         dword ptr [ebp-0C],eax
 004267FE    mov         eax,[00571A74];0x0 GlobalNameSpace:IReadWriteSync
 00426803    mov         edx,dword ptr [eax]
 00426805    call        dword ptr [edx+14]
 00426808    xor         eax,eax
 0042680A    push        ebp
 0042680B    push        426AC0
 00426810    push        dword ptr fs:[eax]
 00426813    mov         dword ptr fs:[eax],esp
 00426816    xor         eax,eax
 00426818    push        ebp
 00426819    push        426A81
 0042681E    push        dword ptr fs:[eax]
 00426821    mov         dword ptr fs:[eax],esp
 00426824    lea         ecx,[ebp-10]
 00426827    lea         edx,[ebp-11]
 0042682A    mov         eax,dword ptr [ebp-4]
 0042682D    mov         ebx,dword ptr [eax]
 0042682F    call        dword ptr [ebx+24];TReader.sub_00425F04
 00426832    cmp         dword ptr [ebp-8],0
>00426836    jne         0042686D
 00426838    lea         edx,[ebp-20]
 0042683B    mov         eax,dword ptr [ebp-4]
 0042683E    call        TReader.ReadStr
 00426843    mov         eax,dword ptr [ebp-20]
 00426846    call        0041F564
 0042684B    xor         ecx,ecx
 0042684D    mov         dl,1
 0042684F    call        dword ptr [eax+2C]
 00426852    mov         dword ptr [ebp-0C],eax
 00426855    lea         edx,[ebp-24]
 00426858    mov         eax,dword ptr [ebp-4]
 0042685B    call        TReader.ReadStr
 00426860    mov         edx,dword ptr [ebp-24]
 00426863    mov         eax,dword ptr [ebp-0C]
 00426866    mov         ecx,dword ptr [eax]
 00426868    call        dword ptr [ecx+18]
>0042686B    jmp         004268C7
 0042686D    mov         eax,dword ptr [ebp-8]
 00426870    mov         dword ptr [ebp-0C],eax
 00426873    lea         edx,[ebp-28]
 00426876    mov         eax,dword ptr [ebp-4]
 00426879    call        TReader.ReadStr
 0042687E    mov         eax,dword ptr [ebp-0C]
 00426881    test        byte ptr [eax+1C],10
>00426885    je          00426894
 00426887    lea         edx,[ebp-2C]
 0042688A    mov         eax,dword ptr [ebp-4]
 0042688D    call        TReader.ReadStr
>00426892    jmp         004268C7
 00426894    mov         eax,dword ptr [ebp-0C]
 00426897    or          word ptr [eax+1C],1
 0042689C    mov         eax,dword ptr [ebp-0C]
 0042689F    or          word ptr [eax+1C],2
 004268A4    push        ebp
 004268A5    lea         edx,[ebp-34]
 004268A8    mov         eax,dword ptr [ebp-4]
 004268AB    call        TReader.ReadStr
 004268B0    mov         eax,dword ptr [ebp-34]
 004268B3    lea         edx,[ebp-30]
 004268B6    call        00426750
 004268BB    pop         ecx
 004268BC    mov         edx,dword ptr [ebp-30]
 004268BF    mov         eax,dword ptr [ebp-0C]
 004268C2    mov         ecx,dword ptr [eax]
 004268C4    call        dword ptr [ecx+18]
 004268C7    mov         eax,dword ptr [ebp-4]
 004268CA    mov         edx,dword ptr [ebp-0C]
 004268CD    mov         dword ptr [eax+18],edx;TReader.FRoot:TComponent
 004268D0    push        1
 004268D2    mov         eax,dword ptr [ebp-0C]
 004268D5    call        TObject.ClassType
 004268DA    mov         ecx,eax
 004268DC    mov         dl,1
 004268DE    mov         eax,[0041E0A4];TClassFinder
 004268E3    call        TClassFinder.Create;TClassFinder.Create
 004268E8    mov         edx,dword ptr [ebp-4]
 004268EB    mov         dword ptr [edx+74],eax;TReader.FFinder:TClassFinder
 004268EE    xor         eax,eax
 004268F0    push        ebp
 004268F1    push        426A26
 004268F6    push        dword ptr fs:[eax]
 004268F9    mov         dword ptr fs:[eax],esp
 004268FC    mov         eax,dword ptr [ebp-4]
 004268FF    mov         edx,dword ptr [ebp-0C]
 00426902    mov         dword ptr [eax+1C],edx;TReader.FLookupRoot:TComponent
 00426905    call        @GetTls
 0042690A    mov         eax,dword ptr [eax+8];{threadvar_8}
 00426910    mov         dword ptr [ebp-18],eax
 00426913    cmp         dword ptr [ebp-18],0
>00426917    je          00426924
 00426919    mov         eax,dword ptr [ebp-4]
 0042691C    mov         edx,dword ptr [ebp-18]
 0042691F    mov         dword ptr [eax+34],edx;TReader.FLoaded:TList
>00426922    jmp         00426936
 00426924    mov         dl,1
 00426926    mov         eax,[0041D46C];TList
 0042692B    call        TObject.Create;TList.Create
 00426930    mov         edx,dword ptr [ebp-4]
 00426933    mov         dword ptr [edx+34],eax;TReader.FLoaded:TList
 00426936    xor         eax,eax
 00426938    push        ebp
 00426939    push        426A06
 0042693E    push        dword ptr fs:[eax]
 00426941    mov         dword ptr fs:[eax],esp
 00426944    mov         eax,dword ptr [ebp-4]
 00426947    mov         edx,dword ptr [eax+18];TReader.FRoot:TComponent
 0042694A    mov         eax,dword ptr [ebp-4]
 0042694D    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 00426950    call        004202BC
 00426955    test        eax,eax
>00426957    jge         0042696A
 00426959    mov         eax,dword ptr [ebp-4]
 0042695C    mov         edx,dword ptr [eax+18];TReader.FRoot:TComponent
 0042695F    mov         eax,dword ptr [ebp-4]
 00426962    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 00426965    call        TList.Add
 0042696A    mov         eax,dword ptr [ebp-4]
 0042696D    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 00426970    mov         edx,dword ptr [ebp-4]
 00426973    mov         dword ptr [edx+28],eax;TReader.FOwner:TComponent
 00426976    mov         eax,dword ptr [ebp-4]
 00426979    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0042697C    or          word ptr [eax+1C],1;TComponent.FComponentState:TComponentState
 00426981    mov         eax,dword ptr [ebp-4]
 00426984    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 00426987    or          word ptr [eax+1C],2;TComponent.FComponentState:TComponentState
 0042698C    mov         eax,dword ptr [ebp-4]
 0042698F    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 00426992    mov         edx,dword ptr [ebp-4]
 00426995    mov         ecx,dword ptr [eax]
 00426997    call        dword ptr [ecx+14];TComponent.sub_0042A88C
 0042699A    mov         eax,dword ptr [ebp-4]
 0042699D    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 004269A0    and         word ptr [eax+1C],0FFFFFFFD;TComponent.FComponentState:TComponentState
 004269A5    cmp         dword ptr [ebp-18],0
>004269A9    jne         004269DF
 004269AB    mov         eax,dword ptr [ebp-4]
 004269AE    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 004269B1    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004269B4    dec         eax
 004269B5    test        eax,eax
>004269B7    jl          004269DF
 004269B9    inc         eax
 004269BA    mov         dword ptr [ebp-1C],eax
 004269BD    mov         dword ptr [ebp-10],0
 004269C4    mov         eax,dword ptr [ebp-4]
 004269C7    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 004269CA    mov         edx,dword ptr [ebp-10]
 004269CD    call        TList.Get
 004269D2    mov         edx,dword ptr [eax]
 004269D4    call        dword ptr [edx+0C]
 004269D7    inc         dword ptr [ebp-10]
 004269DA    dec         dword ptr [ebp-1C]
>004269DD    jne         004269C4
 004269DF    xor         eax,eax
 004269E1    pop         edx
 004269E2    pop         ecx
 004269E3    pop         ecx
 004269E4    mov         dword ptr fs:[eax],edx
 004269E7    push        426A0D
 004269EC    cmp         dword ptr [ebp-18],0
>004269F0    jne         004269FD
 004269F2    mov         eax,dword ptr [ebp-4]
 004269F5    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 004269F8    call        TObject.Free
 004269FD    mov         eax,dword ptr [ebp-4]
 00426A00    xor         edx,edx
 00426A02    mov         dword ptr [eax+34],edx;TReader.FLoaded:TList
 00426A05    ret
>00426A06    jmp         @HandleFinally
>00426A0B    jmp         004269EC
 00426A0D    xor         eax,eax
 00426A0F    pop         edx
 00426A10    pop         ecx
 00426A11    pop         ecx
 00426A12    mov         dword ptr fs:[eax],edx
 00426A15    push        426A2D
 00426A1A    mov         eax,dword ptr [ebp-4]
 00426A1D    mov         eax,dword ptr [eax+74];TReader.FFinder:TClassFinder
 00426A20    call        TObject.Free
 00426A25    ret
>00426A26    jmp         @HandleFinally
>00426A2B    jmp         00426A1A
 00426A2D    xor         eax,eax
 00426A2F    push        ebp
 00426A30    push        426A52
 00426A35    push        dword ptr fs:[eax]
 00426A38    mov         dword ptr fs:[eax],esp
 00426A3B    call        00424850
 00426A40    xor         eax,eax
 00426A42    pop         edx
 00426A43    pop         ecx
 00426A44    pop         ecx
 00426A45    mov         dword ptr fs:[eax],edx
>00426A48    jmp         00426A77
 00426A4A    xor         eax,eax
 00426A4C    pop         edx
 00426A4D    pop         ecx
 00426A4E    pop         ecx
 00426A4F    mov         dword ptr fs:[eax],edx
>00426A52    jmp         @HandleAnyException
 00426A57    call        ExceptObject
 00426A5C    mov         edx,dword ptr [eax+4]
 00426A5F    mov         eax,dword ptr [ebp-4]
 00426A62    mov         ecx,dword ptr [eax]
 00426A64    call        dword ptr [ecx+10];TReader.sub_00424DE0
 00426A67    test        al,al
>00426A69    jne         00426A70
 00426A6B    call        @RaiseAgain
 00426A70    call        @DoneExcept
>00426A75    jmp         00426A2D
 00426A77    xor         eax,eax
 00426A79    pop         edx
 00426A7A    pop         ecx
 00426A7B    pop         ecx
 00426A7C    mov         dword ptr fs:[eax],edx
>00426A7F    jmp         00426AA8
>00426A81    jmp         @HandleAnyException
 00426A86    xor         edx,edx
 00426A88    mov         eax,dword ptr [ebp-8]
 00426A8B    call        RemoveFixupReferences
 00426A90    cmp         dword ptr [ebp-8],0
>00426A94    jne         00426A9E
 00426A96    mov         eax,dword ptr [ebp-0C]
 00426A99    call        TObject.Free
 00426A9E    call        @RaiseAgain
 00426AA3    call        @DoneExcept
 00426AA8    xor         eax,eax
 00426AAA    pop         edx
 00426AAB    pop         ecx
 00426AAC    pop         ecx
 00426AAD    mov         dword ptr fs:[eax],edx
 00426AB0    push        426AC7
 00426AB5    mov         eax,[00571A74];0x0 GlobalNameSpace:IReadWriteSync
 00426ABA    mov         edx,dword ptr [eax]
 00426ABC    call        dword ptr [edx+18]
 00426ABF    ret
>00426AC0    jmp         @HandleFinally
>00426AC5    jmp         00426AB5
 00426AC7    xor         eax,eax
 00426AC9    pop         edx
 00426ACA    pop         ecx
 00426ACB    pop         ecx
 00426ACC    mov         dword ptr fs:[eax],edx
 00426ACF    push        426AE9
 00426AD4    lea         eax,[ebp-34]
 00426AD7    mov         edx,6
 00426ADC    call        @LStrArrayClr
 00426AE1    ret
>00426AE2    jmp         @HandleFinally
>00426AE7    jmp         00426AD4
 00426AE9    mov         eax,dword ptr [ebp-0C]
 00426AEC    pop         edi
 00426AED    pop         esi
 00426AEE    pop         ebx
 00426AEF    mov         esp,ebp
 00426AF1    pop         ebp
 00426AF2    ret
end;*}

//00426AF4
{*function sub_00426AF4(?:?; ?:PPropInfo):?;
begin
 00426AF4    push        ebp
 00426AF5    mov         ebp,esp
 00426AF7    add         esp,0FFFFFFEC
 00426AFA    push        ebx
 00426AFB    push        esi
 00426AFC    push        edi
 00426AFD    xor         ecx,ecx
 00426AFF    mov         dword ptr [ebp-14],ecx
 00426B02    mov         dword ptr [ebp-8],edx
 00426B05    mov         dword ptr [ebp-4],eax
 00426B08    xor         eax,eax
 00426B0A    push        ebp
 00426B0B    push        426BA8
 00426B10    push        dword ptr fs:[eax]
 00426B13    mov         dword ptr fs:[eax],esp
 00426B16    xor         eax,eax
 00426B18    push        ebp
 00426B19    push        426B7B
 00426B1E    push        dword ptr fs:[eax]
 00426B21    mov         dword ptr fs:[eax],esp
 00426B24    mov         eax,dword ptr [ebp-4]
 00426B27    call        TReader.ReadValue
 00426B2C    cmp         al,0B
>00426B2E    je          00426B35
 00426B30    call        00424BA8
 00426B35    mov         eax,dword ptr [ebp-8]
 00426B38    call        GetTypeData
 00426B3D    mov         eax,dword ptr [eax+1]
 00426B40    mov         eax,dword ptr [eax]
 00426B42    mov         dword ptr [ebp-10],eax
 00426B45    xor         eax,eax
 00426B47    mov         dword ptr [ebp-0C],eax
 00426B4A    lea         edx,[ebp-14]
 00426B4D    mov         eax,dword ptr [ebp-4]
 00426B50    call        TReader.ReadStr
 00426B55    cmp         dword ptr [ebp-14],0
>00426B59    je          00426B71
 00426B5B    mov         edx,dword ptr [ebp-14]
 00426B5E    mov         eax,dword ptr [ebp-10]
 00426B61    call        00424BEC
 00426B66    cmp         eax,1F
>00426B69    ja          00426B4A
 00426B6B    bts         dword ptr [ebp-0C],eax
>00426B6F    jmp         00426B4A
 00426B71    xor         eax,eax
 00426B73    pop         edx
 00426B74    pop         ecx
 00426B75    pop         ecx
 00426B76    mov         dword ptr fs:[eax],edx
>00426B79    jmp         00426B92
>00426B7B    jmp         @HandleAnyException
 00426B80    mov         eax,dword ptr [ebp-4]
 00426B83    call        TReader.SkipSetBody
 00426B88    call        @RaiseAgain
 00426B8D    call        @DoneExcept
 00426B92    xor         eax,eax
 00426B94    pop         edx
 00426B95    pop         ecx
 00426B96    pop         ecx
 00426B97    mov         dword ptr fs:[eax],edx
 00426B9A    push        426BAF
 00426B9F    lea         eax,[ebp-14]
 00426BA2    call        @LStrClr
 00426BA7    ret
>00426BA8    jmp         @HandleFinally
>00426BAD    jmp         00426B9F
 00426BAF    mov         eax,dword ptr [ebp-0C]
 00426BB2    pop         edi
 00426BB3    pop         esi
 00426BB4    pop         ebx
 00426BB5    mov         esp,ebp
 00426BB7    pop         ebp
 00426BB8    ret
end;*}

//00426BBC
procedure sub_00426BBC(?:TReader);
begin
{*
 00426BBC    push        ebp
 00426BBD    mov         ebp,esp
 00426BBF    add         esp,0FFFFFFF8
 00426BC2    mov         dword ptr [ebp-4],eax
 00426BC5    lea         edx,[ebp-8]
 00426BC8    mov         ecx,4
 00426BCD    mov         eax,dword ptr [ebp-4]
 00426BD0    call        TReader.Read
 00426BD5    mov         eax,dword ptr [ebp-8]
 00426BD8    cmp         eax,dword ptr ds:[56BCB0];0x30465054 gvar_0056BCB0
>00426BDE    je          00426BEA
 00426BE0    mov         eax,[0056E258];^SInvalidImage:TResStringRec
 00426BE5    call        ReadError
 00426BEA    pop         ecx
 00426BEB    pop         ecx
 00426BEC    pop         ebp
 00426BED    ret
*}
end;

//00426BF0
function TReader.ReadStr:AnsiString;
begin
{*
 00426BF0    push        ebp
 00426BF1    mov         ebp,esp
 00426BF3    add         esp,0FFFFFFF4
 00426BF6    mov         dword ptr [ebp-8],edx
 00426BF9    mov         dword ptr [ebp-4],eax
 00426BFC    lea         edx,[ebp-9]
 00426BFF    mov         ecx,1
 00426C04    mov         eax,dword ptr [ebp-4]
 00426C07    call        TReader.Read
 00426C0C    xor         ecx,ecx
 00426C0E    mov         cl,byte ptr [ebp-9]
 00426C11    mov         eax,dword ptr [ebp-8]
 00426C14    xor         edx,edx
 00426C16    call        @LStrFromPCharLen
 00426C1B    mov         eax,dword ptr [ebp-8]
 00426C1E    call        00405598
 00426C23    mov         edx,eax
 00426C25    xor         ecx,ecx
 00426C27    mov         cl,byte ptr [ebp-9]
 00426C2A    mov         eax,dword ptr [ebp-4]
 00426C2D    call        TReader.Read
 00426C32    mov         esp,ebp
 00426C34    pop         ebp
 00426C35    ret
*}
end;

//00426C38
function TReader.ReadString:AnsiString;
begin
{*
 00426C38    push        ebp
 00426C39    mov         ebp,esp
 00426C3B    add         esp,0FFFFFFF0
 00426C3E    xor         ecx,ecx
 00426C40    mov         dword ptr [ebp-10],ecx
 00426C43    mov         dword ptr [ebp-8],edx
 00426C46    mov         dword ptr [ebp-4],eax
 00426C49    xor         eax,eax
 00426C4B    push        ebp
 00426C4C    push        426CF0
 00426C51    push        dword ptr fs:[eax]
 00426C54    mov         dword ptr fs:[eax],esp
 00426C57    mov         eax,dword ptr [ebp-4]
 00426C5A    call        TReader.NextValue
 00426C5F    sub         al,12
>00426C61    je          00426C67
 00426C63    sub         al,2
>00426C65    jne         00426C7F
 00426C67    lea         edx,[ebp-10]
 00426C6A    mov         eax,dword ptr [ebp-4]
 00426C6D    call        00426CFC
 00426C72    mov         edx,dword ptr [ebp-10]
 00426C75    mov         eax,dword ptr [ebp-8]
 00426C78    call        @LStrFromWStr
>00426C7D    jmp         00426CDA
 00426C7F    xor         eax,eax
 00426C81    mov         dword ptr [ebp-0C],eax
 00426C84    mov         eax,dword ptr [ebp-4]
 00426C87    call        TReader.ReadValue
 00426C8C    sub         al,6
>00426C8E    je          00426C96
 00426C90    sub         al,6
>00426C92    je          00426CA8
>00426C94    jmp         00426CBA
 00426C96    lea         edx,[ebp-0C]
 00426C99    mov         ecx,1
 00426C9E    mov         eax,dword ptr [ebp-4]
 00426CA1    call        TReader.Read
>00426CA6    jmp         00426CBF
 00426CA8    lea         edx,[ebp-0C]
 00426CAB    mov         ecx,4
 00426CB0    mov         eax,dword ptr [ebp-4]
 00426CB3    call        TReader.Read
>00426CB8    jmp         00426CBF
 00426CBA    call        00424BA8
 00426CBF    mov         eax,dword ptr [ebp-8]
 00426CC2    mov         edx,dword ptr [ebp-0C]
 00426CC5    call        @LStrSetLength
 00426CCA    mov         edx,dword ptr [ebp-8]
 00426CCD    mov         edx,dword ptr [edx]
 00426CCF    mov         ecx,dword ptr [ebp-0C]
 00426CD2    mov         eax,dword ptr [ebp-4]
 00426CD5    call        TReader.Read
 00426CDA    xor         eax,eax
 00426CDC    pop         edx
 00426CDD    pop         ecx
 00426CDE    pop         ecx
 00426CDF    mov         dword ptr fs:[eax],edx
 00426CE2    push        426CF7
 00426CE7    lea         eax,[ebp-10]
 00426CEA    call        @WStrClr
 00426CEF    ret
>00426CF0    jmp         @HandleFinally
>00426CF5    jmp         00426CE7
 00426CF7    mov         esp,ebp
 00426CF9    pop         ebp
 00426CFA    ret
*}
end;

//00426CFC
{*procedure sub_00426CFC(?:?; ?:?);
begin
 00426CFC    push        ebp
 00426CFD    mov         ebp,esp
 00426CFF    add         esp,0FFFFFFEC
 00426D02    xor         ecx,ecx
 00426D04    mov         dword ptr [ebp-14],ecx
 00426D07    mov         dword ptr [ebp-10],ecx
 00426D0A    mov         dword ptr [ebp-8],edx
 00426D0D    mov         dword ptr [ebp-4],eax
 00426D10    xor         eax,eax
 00426D12    push        ebp
 00426D13    push        426DE8
 00426D18    push        dword ptr fs:[eax]
 00426D1B    mov         dword ptr fs:[eax],esp
 00426D1E    mov         eax,dword ptr [ebp-4]
 00426D21    call        TReader.NextValue
 00426D26    sub         al,6
>00426D28    je          00426D2E
 00426D2A    sub         al,6
>00426D2C    jne         00426D49
 00426D2E    lea         edx,[ebp-14]
 00426D31    mov         eax,dword ptr [ebp-4]
 00426D34    call        TReader.ReadString
 00426D39    mov         edx,dword ptr [ebp-14]
 00426D3C    mov         eax,dword ptr [ebp-8]
 00426D3F    call        @WStrFromLStr
>00426D44    jmp         00426DCA
 00426D49    xor         eax,eax
 00426D4B    mov         dword ptr [ebp-0C],eax
 00426D4E    mov         eax,dword ptr [ebp-4]
 00426D51    call        TReader.ReadValue
 00426D56    sub         al,12
>00426D58    je          00426D60
 00426D5A    sub         al,2
>00426D5C    je          00426D8F
>00426D5E    jmp         00426DC5
 00426D60    lea         edx,[ebp-0C]
 00426D63    mov         ecx,4
 00426D68    mov         eax,dword ptr [ebp-4]
 00426D6B    call        TReader.Read
 00426D70    mov         eax,dword ptr [ebp-8]
 00426D73    mov         edx,dword ptr [ebp-0C]
 00426D76    call        @WStrSetLength
 00426D7B    mov         ecx,dword ptr [ebp-0C]
 00426D7E    add         ecx,ecx
 00426D80    mov         edx,dword ptr [ebp-8]
 00426D83    mov         edx,dword ptr [edx]
 00426D85    mov         eax,dword ptr [ebp-4]
 00426D88    call        TReader.Read
>00426D8D    jmp         00426DCA
 00426D8F    lea         edx,[ebp-0C]
 00426D92    mov         ecx,4
 00426D97    mov         eax,dword ptr [ebp-4]
 00426D9A    call        TReader.Read
 00426D9F    lea         eax,[ebp-10]
 00426DA2    mov         edx,dword ptr [ebp-0C]
 00426DA5    call        @LStrSetLength
 00426DAA    mov         edx,dword ptr [ebp-10]
 00426DAD    mov         ecx,dword ptr [ebp-0C]
 00426DB0    mov         eax,dword ptr [ebp-4]
 00426DB3    call        TReader.Read
 00426DB8    mov         edx,dword ptr [ebp-8]
 00426DBB    mov         eax,dword ptr [ebp-10]
 00426DBE    call        UTF8Decode
>00426DC3    jmp         00426DCA
 00426DC5    call        00424BA8
 00426DCA    xor         eax,eax
 00426DCC    pop         edx
 00426DCD    pop         ecx
 00426DCE    pop         ecx
 00426DCF    mov         dword ptr fs:[eax],edx
 00426DD2    push        426DEF
 00426DD7    lea         eax,[ebp-14]
 00426DDA    call        @LStrClr
 00426DDF    lea         eax,[ebp-10]
 00426DE2    call        @LStrClr
 00426DE7    ret
>00426DE8    jmp         @HandleFinally
>00426DED    jmp         00426DD7
 00426DEF    mov         esp,ebp
 00426DF1    pop         ebp
 00426DF2    ret
end;*}

//00426DF4
function TReader.ReadValue:TValueType;
begin
{*
 00426DF4    push        ebp
 00426DF5    mov         ebp,esp
 00426DF7    add         esp,0FFFFFFF8
 00426DFA    mov         dword ptr [ebp-4],eax
 00426DFD    lea         edx,[ebp-5]
 00426E00    mov         ecx,1
 00426E05    mov         eax,dword ptr [ebp-4]
 00426E08    call        TReader.Read
 00426E0D    mov         al,byte ptr [ebp-5]
 00426E10    pop         ecx
 00426E11    pop         ecx
 00426E12    pop         ebp
 00426E13    ret
*}
end;

//00426E14
procedure TReader.SkipSetBody;
begin
{*
 00426E14    push        ebp
 00426E15    mov         ebp,esp
 00426E17    add         esp,0FFFFFFF8
 00426E1A    xor         edx,edx
 00426E1C    mov         dword ptr [ebp-8],edx
 00426E1F    mov         dword ptr [ebp-4],eax
 00426E22    xor         eax,eax
 00426E24    push        ebp
 00426E25    push        426E57
 00426E2A    push        dword ptr fs:[eax]
 00426E2D    mov         dword ptr fs:[eax],esp
 00426E30    lea         edx,[ebp-8]
 00426E33    mov         eax,dword ptr [ebp-4]
 00426E36    call        TReader.ReadStr
 00426E3B    cmp         dword ptr [ebp-8],0
>00426E3F    jne         00426E30
 00426E41    xor         eax,eax
 00426E43    pop         edx
 00426E44    pop         ecx
 00426E45    pop         ecx
 00426E46    mov         dword ptr fs:[eax],edx
 00426E49    push        426E5E
 00426E4E    lea         eax,[ebp-8]
 00426E51    call        @LStrClr
 00426E56    ret
>00426E57    jmp         @HandleFinally
>00426E5C    jmp         00426E4E
 00426E5E    pop         ecx
 00426E5F    pop         ecx
 00426E60    pop         ebp
 00426E61    ret
*}
end;

//00426E64
procedure SkipList;
begin
{*
 00426E64    push        ebp
 00426E65    mov         ebp,esp
>00426E67    jmp         00426E74
 00426E69    mov         eax,dword ptr [ebp+8]
 00426E6C    mov         eax,dword ptr [eax-4]
 00426E6F    call        TReader.SkipValue
 00426E74    mov         eax,dword ptr [ebp+8]
 00426E77    mov         eax,dword ptr [eax-4]
 00426E7A    call        TReader.EndOfList
 00426E7F    test        al,al
>00426E81    je          00426E69
 00426E83    mov         eax,dword ptr [ebp+8]
 00426E86    mov         eax,dword ptr [eax-4]
 00426E89    call        TReader.ReadListEnd
 00426E8E    pop         ebp
 00426E8F    ret
*}
end;

//00426E90
procedure SkipBinary(BytesPerUnit:Integer);
begin
{*
 00426E90    push        ebp
 00426E91    mov         ebp,esp
 00426E93    add         esp,0FFFFFFF8
 00426E96    mov         dword ptr [ebp-4],eax
 00426E99    lea         edx,[ebp-8]
 00426E9C    mov         eax,dword ptr [ebp+8]
 00426E9F    mov         eax,dword ptr [eax-4]
 00426EA2    mov         ecx,4
 00426EA7    call        TReader.Read
 00426EAC    mov         edx,dword ptr [ebp-8]
 00426EAF    imul        edx,dword ptr [ebp-4]
 00426EB3    mov         eax,dword ptr [ebp+8]
 00426EB6    mov         eax,dword ptr [eax-4]
 00426EB9    call        TReader.SkipBytes
 00426EBE    pop         ecx
 00426EBF    pop         ecx
 00426EC0    pop         ebp
 00426EC1    ret
*}
end;

//00426EC4
procedure SkipCollection;
begin
{*
 00426EC4    push        ebp
 00426EC5    mov         ebp,esp
>00426EC7    jmp         00426F1C
 00426EC9    mov         eax,dword ptr [ebp+8]
 00426ECC    mov         eax,dword ptr [eax-4]
 00426ECF    call        TReader.NextValue
 00426ED4    add         al,0FE
 00426ED6    sub         al,3
>00426ED8    jae         00426EE5
 00426EDA    mov         eax,dword ptr [ebp+8]
 00426EDD    mov         eax,dword ptr [eax-4]
 00426EE0    call        TReader.SkipValue
 00426EE5    mov         eax,dword ptr [ebp+8]
 00426EE8    mov         eax,dword ptr [eax-4]
 00426EEB    mov         edx,1
 00426EF0    call        TReader.SkipBytes
>00426EF5    jmp         00426F02
 00426EF7    mov         eax,dword ptr [ebp+8]
 00426EFA    mov         eax,dword ptr [eax-4]
 00426EFD    call        004270D4
 00426F02    mov         eax,dword ptr [ebp+8]
 00426F05    mov         eax,dword ptr [eax-4]
 00426F08    call        TReader.EndOfList
 00426F0D    test        al,al
>00426F0F    je          00426EF7
 00426F11    mov         eax,dword ptr [ebp+8]
 00426F14    mov         eax,dword ptr [eax-4]
 00426F17    call        TReader.ReadListEnd
 00426F1C    mov         eax,dword ptr [ebp+8]
 00426F1F    mov         eax,dword ptr [eax-4]
 00426F22    call        TReader.EndOfList
 00426F27    test        al,al
>00426F29    je          00426EC9
 00426F2B    mov         eax,dword ptr [ebp+8]
 00426F2E    mov         eax,dword ptr [eax-4]
 00426F31    call        TReader.ReadListEnd
 00426F36    pop         ebp
 00426F37    ret
*}
end;

//00426F38
procedure TReader.SkipValue;
begin
{*
 00426F38    push        ebp
 00426F39    mov         ebp,esp
 00426F3B    add         esp,0FFFFFFF8
 00426F3E    xor         edx,edx
 00426F40    mov         dword ptr [ebp-8],edx
 00426F43    mov         dword ptr [ebp-4],eax
 00426F46    xor         eax,eax
 00426F48    push        ebp
 00426F49    push        4270C7
 00426F4E    push        dword ptr fs:[eax]
 00426F51    mov         dword ptr fs:[eax],esp
 00426F54    mov         eax,dword ptr [ebp-4]
 00426F57    call        TReader.ReadValue
 00426F5C    and         eax,7F
 00426F5F    cmp         eax,14
>00426F62    ja          004270B1
 00426F68    jmp         dword ptr [eax*4+426F6F]
 00426F68    dd          004270B1
 00426F68    dd          00426FC8
 00426F68    dd          00426FD4
 00426F68    dd          00426FE6
 00426F68    dd          00426FF8
 00426F68    dd          0042700A
 00426F68    dd          0042701C
 00426F68    dd          0042701C
 00426F68    dd          004270B1
 00426F68    dd          004270B1
 00426F68    dd          0042702C
 00426F68    dd          0042703A
 00426F68    dd          00427044
 00426F68    dd          004270B1
 00426F68    dd          00427052
 00426F68    dd          0042705B
 00426F68    dd          0042706A
 00426F68    dd          00427079
 00426F68    dd          00427088
 00426F68    dd          00427096
 00426F68    dd          004270A5
>00426FC3    jmp         004270B1
 00426FC8    push        ebp
 00426FC9    call        SkipList
 00426FCE    pop         ecx
>00426FCF    jmp         004270B1
 00426FD4    mov         edx,1
 00426FD9    mov         eax,dword ptr [ebp-4]
 00426FDC    call        TReader.SkipBytes
>00426FE1    jmp         004270B1
 00426FE6    mov         edx,2
 00426FEB    mov         eax,dword ptr [ebp-4]
 00426FEE    call        TReader.SkipBytes
>00426FF3    jmp         004270B1
 00426FF8    mov         edx,4
 00426FFD    mov         eax,dword ptr [ebp-4]
 00427000    call        TReader.SkipBytes
>00427005    jmp         004270B1
 0042700A    mov         edx,0A
 0042700F    mov         eax,dword ptr [ebp-4]
 00427012    call        TReader.SkipBytes
>00427017    jmp         004270B1
 0042701C    lea         edx,[ebp-8]
 0042701F    mov         eax,dword ptr [ebp-4]
 00427022    call        TReader.ReadStr
>00427027    jmp         004270B1
 0042702C    push        ebp
 0042702D    mov         eax,1
 00427032    call        SkipBinary
 00427037    pop         ecx
>00427038    jmp         004270B1
 0042703A    mov         eax,dword ptr [ebp-4]
 0042703D    call        TReader.SkipSetBody
>00427042    jmp         004270B1
 00427044    push        ebp
 00427045    mov         eax,1
 0042704A    call        SkipBinary
 0042704F    pop         ecx
>00427050    jmp         004270B1
 00427052    push        ebp
 00427053    call        SkipCollection
 00427058    pop         ecx
>00427059    jmp         004270B1
 0042705B    mov         edx,4
 00427060    mov         eax,dword ptr [ebp-4]
 00427063    call        TReader.SkipBytes
>00427068    jmp         004270B1
 0042706A    mov         edx,8
 0042706F    mov         eax,dword ptr [ebp-4]
 00427072    call        TReader.SkipBytes
>00427077    jmp         004270B1
 00427079    mov         edx,8
 0042707E    mov         eax,dword ptr [ebp-4]
 00427081    call        TReader.SkipBytes
>00427086    jmp         004270B1
 00427088    push        ebp
 00427089    mov         eax,2
 0042708E    call        SkipBinary
 00427093    pop         ecx
>00427094    jmp         004270B1
 00427096    mov         edx,8
 0042709B    mov         eax,dword ptr [ebp-4]
 0042709E    call        TReader.SkipBytes
>004270A3    jmp         004270B1
 004270A5    push        ebp
 004270A6    mov         eax,1
 004270AB    call        SkipBinary
 004270B0    pop         ecx
 004270B1    xor         eax,eax
 004270B3    pop         edx
 004270B4    pop         ecx
 004270B5    pop         ecx
 004270B6    mov         dword ptr fs:[eax],edx
 004270B9    push        4270CE
 004270BE    lea         eax,[ebp-8]
 004270C1    call        @LStrClr
 004270C6    ret
>004270C7    jmp         @HandleFinally
>004270CC    jmp         004270BE
 004270CE    pop         ecx
 004270CF    pop         ecx
 004270D0    pop         ebp
 004270D1    ret
*}
end;

//004270D4
{*procedure sub_004270D4(?:?);
begin
 004270D4    push        ebp
 004270D5    mov         ebp,esp
 004270D7    add         esp,0FFFFFFF8
 004270DA    xor         edx,edx
 004270DC    mov         dword ptr [ebp-8],edx
 004270DF    mov         dword ptr [ebp-4],eax
 004270E2    xor         eax,eax
 004270E4    push        ebp
 004270E5    push        427119
 004270EA    push        dword ptr fs:[eax]
 004270ED    mov         dword ptr fs:[eax],esp
 004270F0    lea         edx,[ebp-8]
 004270F3    mov         eax,dword ptr [ebp-4]
 004270F6    call        TReader.ReadStr
 004270FB    mov         eax,dword ptr [ebp-4]
 004270FE    call        TReader.SkipValue
 00427103    xor         eax,eax
 00427105    pop         edx
 00427106    pop         ecx
 00427107    pop         ecx
 00427108    mov         dword ptr fs:[eax],edx
 0042710B    push        427120
 00427110    lea         eax,[ebp-8]
 00427113    call        @LStrClr
 00427118    ret
>00427119    jmp         @HandleFinally
>0042711E    jmp         00427110
 00427120    pop         ecx
 00427121    pop         ecx
 00427122    pop         ebp
 00427123    ret
end;*}

//00427124
{*procedure sub_00427124(?:?; ?:?);
begin
 00427124    push        ebp
 00427125    mov         ebp,esp
 00427127    add         esp,0FFFFFFEC
 0042712A    push        ebx
 0042712B    xor         ecx,ecx
 0042712D    mov         dword ptr [ebp-14],ecx
 00427130    mov         dword ptr [ebp-10],ecx
 00427133    mov         byte ptr [ebp-5],dl
 00427136    mov         dword ptr [ebp-4],eax
 00427139    xor         eax,eax
 0042713B    push        ebp
 0042713C    push        4271CA
 00427141    push        dword ptr fs:[eax]
 00427144    mov         dword ptr fs:[eax],esp
 00427147    cmp         byte ptr [ebp-5],0
>0042714B    je          0042717B
 0042714D    lea         ecx,[ebp-0C]
 00427150    lea         edx,[ebp-6]
 00427153    mov         eax,dword ptr [ebp-4]
 00427156    mov         ebx,dword ptr [eax]
 00427158    call        dword ptr [ebx+24]
 0042715B    lea         edx,[ebp-10]
 0042715E    mov         eax,dword ptr [ebp-4]
 00427161    call        TReader.ReadStr
 00427166    lea         edx,[ebp-14]
 00427169    mov         eax,dword ptr [ebp-4]
 0042716C    call        TReader.ReadStr
>00427171    jmp         0042717B
 00427173    mov         eax,dword ptr [ebp-4]
 00427176    call        004270D4
 0042717B    mov         eax,dword ptr [ebp-4]
 0042717E    call        TReader.EndOfList
 00427183    test        al,al
>00427185    je          00427173
 00427187    mov         eax,dword ptr [ebp-4]
 0042718A    call        TReader.ReadListEnd
>0042718F    jmp         0042719B
 00427191    mov         dl,1
 00427193    mov         eax,dword ptr [ebp-4]
 00427196    call        00427124
 0042719B    mov         eax,dword ptr [ebp-4]
 0042719E    call        TReader.EndOfList
 004271A3    test        al,al
>004271A5    je          00427191
 004271A7    mov         eax,dword ptr [ebp-4]
 004271AA    call        TReader.ReadListEnd
 004271AF    xor         eax,eax
 004271B1    pop         edx
 004271B2    pop         ecx
 004271B3    pop         ecx
 004271B4    mov         dword ptr fs:[eax],edx
 004271B7    push        4271D1
 004271BC    lea         eax,[ebp-14]
 004271BF    mov         edx,2
 004271C4    call        @LStrArrayClr
 004271C9    ret
>004271CA    jmp         @HandleFinally
>004271CF    jmp         004271BC
 004271D1    pop         ebx
 004271D2    mov         esp,ebp
 004271D4    pop         ebp
 004271D5    ret
end;*}

//004271D8
{*function sub_004271D8(?:?; ?:?):?;
begin
 004271D8    push        ebp
 004271D9    mov         ebp,esp
 004271DB    add         esp,0FFFFFFE4
 004271DE    push        ebx
 004271DF    xor         ebx,ebx
 004271E1    mov         dword ptr [ebp-14],ebx
 004271E4    mov         dword ptr [ebp-0C],ecx
 004271E7    mov         dword ptr [ebp-8],edx
 004271EA    mov         dword ptr [ebp-4],eax
 004271ED    xor         eax,eax
 004271EF    push        ebp
 004271F0    push        42728F
 004271F5    push        dword ptr fs:[eax]
 004271F8    mov         dword ptr fs:[eax],esp
 004271FB    lea         eax,[ebp-14]
 004271FE    mov         edx,dword ptr [ebp-8]
 00427201    call        @LStrLAsg
 00427206    xor         eax,eax
 00427208    mov         dword ptr [ebp-10],eax
 0042720B    mov         eax,dword ptr [ebp-4]
 0042720E    cmp         dword ptr [eax+1C],0;TReader.FLookupRoot:TComponent
>00427212    je          00427225
 00427214    mov         edx,dword ptr [ebp-14]
 00427217    mov         eax,dword ptr [ebp-4]
 0042721A    mov         eax,dword ptr [eax+1C];TReader.FLookupRoot:TComponent
 0042721D    call        0042A98C
 00427222    mov         dword ptr [ebp-10],eax
 00427225    cmp         dword ptr [ebp-10],0
>00427229    jne         00427279
 0042722B    mov         eax,dword ptr [ebp-4]
 0042722E    cmp         word ptr [eax+52],0;TReader.?f52:word
>00427233    je          0042724C
 00427235    mov         eax,dword ptr [ebp-0C]
 00427238    push        eax
 00427239    lea         eax,[ebp-10]
 0042723C    push        eax
 0042723D    mov         ebx,dword ptr [ebp-4]
 00427240    mov         ecx,dword ptr [ebp-14]
 00427243    mov         edx,dword ptr [ebp-4]
 00427246    mov         eax,dword ptr [ebx+54];TReader.?f54:dword
 00427249    call        dword ptr [ebx+50];TReader.FOnAncestorNotFound
 0042724C    cmp         dword ptr [ebp-10],0
>00427250    jne         00427279
 00427252    mov         eax,dword ptr [ebp-14]
 00427255    mov         dword ptr [ebp-1C],eax
 00427258    mov         byte ptr [ebp-18],0B
 0042725C    lea         eax,[ebp-1C]
 0042725F    push        eax
 00427260    push        0
 00427262    mov         ecx,dword ptr ds:[56E1A8];^SAncestorNotFound:TResStringRec
 00427268    mov         dl,1
 0042726A    mov         eax,[0041D0DC];EReadError
 0042726F    call        Exception.CreateResFmt;EReadError.Create
 00427274    call        @RaiseExcept
 00427279    xor         eax,eax
 0042727B    pop         edx
 0042727C    pop         ecx
 0042727D    pop         ecx
 0042727E    mov         dword ptr fs:[eax],edx
 00427281    push        427296
 00427286    lea         eax,[ebp-14]
 00427289    call        @LStrClr
 0042728E    ret
>0042728F    jmp         @HandleFinally
>00427294    jmp         00427286
 00427296    mov         eax,dword ptr [ebp-10]
 00427299    pop         ebx
 0042729A    mov         esp,ebp
 0042729C    pop         ebp
 0042729D    ret
end;*}

//004272A0
{*procedure sub_004272A0(?:?);
begin
 004272A0    push        ebp
 004272A1    mov         ebp,esp
 004272A3    add         esp,0FFFFFFF8
 004272A6    push        ebx
 004272A7    mov         dword ptr [ebp-8],edx
 004272AA    mov         dword ptr [ebp-4],eax
 004272AD    mov         eax,dword ptr [ebp-4]
 004272B0    cmp         word ptr [eax+4A],0;TReader.?f4A:word
>004272B5    je          004272C6
 004272B7    mov         ecx,dword ptr [ebp-8]
 004272BA    mov         ebx,dword ptr [ebp-4]
 004272BD    mov         edx,dword ptr [ebp-4]
 004272C0    mov         eax,dword ptr [ebx+4C];TReader.?f4C:dword
 004272C3    call        dword ptr [ebx+48];TReader.FOnReferenceName
 004272C6    pop         ebx
 004272C7    pop         ecx
 004272C8    pop         ecx
 004272C9    pop         ebp
 004272CA    ret
end;*}

//004272CC
{*procedure sub_004272CC(?:?; ?:?);
begin
 004272CC    push        ebp
 004272CD    mov         ebp,esp
 004272CF    add         esp,0FFFFFFF4
 004272D2    push        ebx
 004272D3    mov         dword ptr [ebp-0C],ecx
 004272D6    mov         dword ptr [ebp-8],edx
 004272D9    mov         dword ptr [ebp-4],eax
 004272DC    mov         eax,dword ptr [ebp-4]
 004272DF    cmp         word ptr [eax+42],0;TReader.?f42:word
>004272E4    je          004272F9
 004272E6    mov         eax,dword ptr [ebp-0C]
 004272E9    push        eax
 004272EA    mov         ebx,dword ptr [ebp-4]
 004272ED    mov         ecx,dword ptr [ebp-8]
 004272F0    mov         edx,dword ptr [ebp-4]
 004272F3    mov         eax,dword ptr [ebx+44];TReader.?f44:dword
 004272F6    call        dword ptr [ebx+40];TReader.FOnSetName
 004272F9    mov         edx,dword ptr [ebp-0C]
 004272FC    mov         edx,dword ptr [edx]
 004272FE    mov         eax,dword ptr [ebp-8]
 00427301    mov         ecx,dword ptr [eax]
 00427303    call        dword ptr [ecx+18]
 00427306    pop         ebx
 00427307    mov         esp,ebp
 00427309    pop         ebp
 0042730A    ret
end;*}

//0042730C
{*function sub_0042730C(?:?; ?:?):?;
begin
 0042730C    push        ebp
 0042730D    mov         ebp,esp
 0042730F    add         esp,0FFFFFFF4
 00427312    push        ebx
 00427313    mov         dword ptr [ebp-8],edx
 00427316    mov         dword ptr [ebp-4],eax
 00427319    mov         ecx,dword ptr [ebp-8]
 0042731C    mov         eax,dword ptr [ebp-4]
 0042731F    mov         edx,dword ptr [eax+18]
 00427322    mov         eax,dword ptr [ebp-4]
 00427325    call        004250F0
 0042732A    mov         dword ptr [ebp-0C],eax
 0042732D    cmp         dword ptr [ebp-0C],0
>00427331    jne         0042735E
 00427333    mov         eax,dword ptr [ebp-4]
 00427336    cmp         dword ptr [eax+1C],0
>0042733A    je          0042735E
 0042733C    mov         eax,dword ptr [ebp-4]
 0042733F    mov         eax,dword ptr [eax+1C]
 00427342    mov         edx,dword ptr [ebp-4]
 00427345    cmp         eax,dword ptr [edx+18]
>00427348    je          0042735E
 0042734A    mov         ecx,dword ptr [ebp-8]
 0042734D    mov         eax,dword ptr [ebp-4]
 00427350    mov         edx,dword ptr [eax+1C]
 00427353    mov         eax,dword ptr [ebp-4]
 00427356    call        004250F0
 0042735B    mov         dword ptr [ebp-0C],eax
 0042735E    mov         eax,dword ptr [ebp-4]
 00427361    cmp         word ptr [eax+62],0
>00427366    je          0042737B
 00427368    lea         eax,[ebp-0C]
 0042736B    push        eax
 0042736C    mov         ebx,dword ptr [ebp-4]
 0042736F    mov         ecx,dword ptr [ebp-8]
 00427372    mov         edx,dword ptr [ebp-4]
 00427375    mov         eax,dword ptr [ebx+64]
 00427378    call        dword ptr [ebx+60]
 0042737B    cmp         dword ptr [ebp-0C],0
>0042737F    je          00427393
 00427381    mov         edx,dword ptr ds:[41E3B8];TComponent
 00427387    mov         eax,dword ptr [ebp-0C]
 0042738A    call        TObject.InheritsFrom
 0042738F    test        al,al
>00427391    jne         0042739B
 00427393    mov         eax,dword ptr [ebp-8]
 00427396    call        0041F49C
 0042739B    mov         eax,dword ptr [ebp-0C]
 0042739E    pop         ebx
 0042739F    mov         esp,ebp
 004273A1    pop         ebp
 004273A2    ret
end;*}

//004273A4
procedure TReader.SkipBytes(Count:Integer);
begin
{*
 004273A4    push        ebp
 004273A5    mov         ebp,esp
 004273A7    add         esp,0FFFFFEF8
 004273AD    mov         dword ptr [ebp-8],edx
 004273B0    mov         dword ptr [ebp-4],eax
 004273B3    cmp         dword ptr [ebp-8],0
>004273B7    jle         004273FA
 004273B9    cmp         dword ptr [ebp-8],100
>004273C0    jle         004273DE
 004273C2    lea         edx,[ebp-108]
 004273C8    mov         ecx,100
 004273CD    mov         eax,dword ptr [ebp-4]
 004273D0    call        TReader.Read
 004273D5    sub         dword ptr [ebp-8],100
>004273DC    jmp         004273F4
 004273DE    lea         edx,[ebp-108]
 004273E4    mov         ecx,dword ptr [ebp-8]
 004273E7    mov         eax,dword ptr [ebp-4]
 004273EA    call        TReader.Read
 004273EF    xor         eax,eax
 004273F1    mov         dword ptr [ebp-8],eax
 004273F4    cmp         dword ptr [ebp-8],0
>004273F8    jg          004273B9
 004273FA    mov         esp,ebp
 004273FC    pop         ebp
 004273FD    ret
*}
end;

//00427400
{*procedure sub_00427400(?:?; ?:?);
begin
 00427400    push        ebp
 00427401    mov         ebp,esp
 00427403    add         esp,0FFFFFFE0
 00427406    push        ebx
 00427407    xor         edx,edx
 00427409    mov         dword ptr [ebp-1C],edx
 0042740C    mov         dword ptr [ebp-20],edx
 0042740F    mov         dword ptr [ebp-4],eax
 00427412    xor         eax,eax
 00427414    push        ebp
 00427415    push        4275AE
 0042741A    push        dword ptr fs:[eax]
 0042741D    mov         dword ptr fs:[eax],esp
 00427420    mov         eax,dword ptr [ebp+8]
 00427423    mov         eax,dword ptr [eax-4]
 00427426    mov         dl,0A
 00427428    call        00424C68
 0042742D    xor         eax,eax
 0042742F    mov         dword ptr [ebp-0C],eax
 00427432    mov         dl,1
 00427434    mov         eax,[0041DE14];TMemoryStream
 00427439    call        TObject.Create;TMemoryStream.Create
 0042743E    mov         dword ptr [ebp-8],eax
 00427441    xor         eax,eax
 00427443    push        ebp
 00427444    push        427589
 00427449    push        dword ptr fs:[eax]
 0042744C    mov         dword ptr fs:[eax],esp
 0042744F    mov         dl,1
 00427451    mov         eax,[0041DE14];TMemoryStream
 00427456    call        TObject.Create;TMemoryStream.Create
 0042745B    mov         dword ptr [ebp-0C],eax
 0042745E    lea         edx,[ebp-14]
 00427461    mov         eax,dword ptr [ebp+8]
 00427464    mov         eax,dword ptr [eax-4]
 00427467    mov         ecx,4
 0042746C    call        TReader.Read
 00427471    mov         eax,dword ptr [ebp-14]
 00427474    cdq
 00427475    push        edx
 00427476    push        eax
 00427477    mov         eax,dword ptr [ebp-8]
 0042747A    call        004235FC
 0042747F    mov         eax,dword ptr [ebp-8]
 00427482    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00427485    mov         eax,dword ptr [ebp+8]
 00427488    mov         eax,dword ptr [eax-4]
 0042748B    mov         ecx,dword ptr [ebp-14]
 0042748E    call        TReader.Read
 00427493    push        400
 00427498    mov         ecx,dword ptr [ebp-8]
 0042749B    mov         dl,1
 0042749D    mov         eax,[0041E164];TReader
 004274A2    call        TFiler.Create;TReader.Create
 004274A7    mov         dword ptr [ebp-10],eax
 004274AA    xor         eax,eax
 004274AC    push        ebp
 004274AD    push        427564
 004274B2    push        dword ptr fs:[eax]
 004274B5    mov         dword ptr fs:[eax],esp
 004274B8    lea         edx,[ebp-1C]
 004274BB    mov         eax,dword ptr [ebp-10]
 004274BE    call        TReader.ReadString
 004274C3    lea         edx,[ebp-14]
 004274C6    mov         ecx,4
 004274CB    mov         eax,dword ptr [ebp-10]
 004274CE    call        TReader.Read
 004274D3    mov         eax,dword ptr [ebp-14]
 004274D6    cdq
 004274D7    push        edx
 004274D8    push        eax
 004274D9    mov         eax,dword ptr [ebp-0C]
 004274DC    call        004235FC
 004274E1    mov         eax,dword ptr [ebp-0C]
 004274E4    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 004274E7    mov         ecx,dword ptr [ebp-14]
 004274EA    mov         eax,dword ptr [ebp-10]
 004274ED    call        TReader.Read
 004274F2    lea         edx,[ebp-18]
 004274F5    mov         eax,dword ptr [ebp-1C]
 004274F8    call        FindCustomVariantType
 004274FD    test        al,al
>004274FF    je          0042751C
 00427501    lea         eax,[ebp-20]
 00427504    call        @IntfClear
 00427509    mov         ecx,eax
 0042750B    mov         edx,4275BC
 00427510    mov         eax,dword ptr [ebp-18]
 00427513    call        00412890
 00427518    test        al,al
>0042751A    jne         00427533
 0042751C    mov         ecx,dword ptr ds:[56E548];^SReadError:TResStringRec
 00427522    mov         dl,1
 00427524    mov         eax,[0041D0DC];EReadError
 00427529    call        Exception.Create;EReadError.Create
 0042752E    call        @RaiseExcept
 00427533    mov         eax,dword ptr [ebp-18]
 00427536    mov         ax,word ptr [eax+4];TCustomVariantType...FVarType:TVarType
 0042753A    mov         edx,dword ptr [ebp-4]
 0042753D    mov         word ptr [edx],ax
 00427540    mov         edx,dword ptr [ebp-4]
 00427543    mov         ecx,dword ptr [ebp-0C]
 00427546    mov         eax,dword ptr [ebp-20]
 00427549    mov         ebx,dword ptr [eax]
 0042754B    call        dword ptr [ebx+0C]
 0042754E    xor         eax,eax
 00427550    pop         edx
 00427551    pop         ecx
 00427552    pop         ecx
 00427553    mov         dword ptr fs:[eax],edx
 00427556    push        42756B
 0042755B    mov         eax,dword ptr [ebp-10]
 0042755E    call        TObject.Free
 00427563    ret
>00427564    jmp         @HandleFinally
>00427569    jmp         0042755B
 0042756B    xor         eax,eax
 0042756D    pop         edx
 0042756E    pop         ecx
 0042756F    pop         ecx
 00427570    mov         dword ptr fs:[eax],edx
 00427573    push        427590
 00427578    mov         eax,dword ptr [ebp-0C]
 0042757B    call        TObject.Free
 00427580    mov         eax,dword ptr [ebp-8]
 00427583    call        TObject.Free
 00427588    ret
>00427589    jmp         @HandleFinally
>0042758E    jmp         00427578
 00427590    xor         eax,eax
 00427592    pop         edx
 00427593    pop         ecx
 00427594    pop         ecx
 00427595    mov         dword ptr fs:[eax],edx
 00427598    push        4275B5
 0042759D    lea         eax,[ebp-20]
 004275A0    call        @IntfClear
 004275A5    lea         eax,[ebp-1C]
 004275A8    call        @LStrClr
 004275AD    ret
>004275AE    jmp         @HandleFinally
>004275B3    jmp         0042759D
 004275B5    pop         ebx
 004275B6    mov         esp,ebp
 004275B8    pop         ebp
 004275B9    ret
end;*}

//004275CC
function TReader.ReadVariant:Variant;
begin
{*
 004275CC    push        ebp
 004275CD    mov         ebp,esp
 004275CF    xor         ecx,ecx
 004275D1    push        ecx
 004275D2    push        ecx
 004275D3    push        ecx
 004275D4    push        ecx
 004275D5    push        ecx
 004275D6    push        ecx
 004275D7    push        ecx
 004275D8    push        ecx
 004275D9    mov         dword ptr [ebp-8],edx
 004275DC    mov         dword ptr [ebp-4],eax
 004275DF    xor         eax,eax
 004275E1    push        ebp
 004275E2    push        4277D5
 004275E7    push        dword ptr fs:[eax]
 004275EA    mov         dword ptr fs:[eax],esp
 004275ED    mov         eax,dword ptr [ebp-8]
 004275F0    call        @VarClear
 004275F5    mov         eax,dword ptr [ebp-4]
 004275F8    call        TReader.NextValue
 004275FD    and         eax,7F
 00427600    cmp         eax,14
>00427603    ja          00427798
 00427609    jmp         dword ptr [eax*4+427610]
 00427609    dd          00427664
 00427609    dd          00427798
 00427609    dd          00427681
 00427609    dd          0042769D
 00427609    dd          004276B9
 00427609    dd          004276D2
 00427609    dd          00427726
 00427609    dd          00427798
 00427609    dd          00427756
 00427609    dd          00427756
 00427609    dd          0042776D
 00427609    dd          00427798
 00427609    dd          00427726
 00427609    dd          00427664
 00427609    dd          00427798
 00427609    dd          004276E7
 00427609    dd          004276FC
 00427609    dd          00427711
 00427609    dd          0042773E
 00427609    dd          00427784
 00427609    dd          0042773E
 00427664    mov         eax,dword ptr [ebp-4]
 00427667    call        TReader.ReadValue
 0042766C    cmp         al,0D
>0042766E    je          004277AF
 00427674    mov         eax,dword ptr [ebp-8]
 00427677    call        0041ABC0
>0042767C    jmp         004277AF
 00427681    mov         eax,dword ptr [ebp-4]
 00427684    call        00425E24
 00427689    mov         edx,eax
 0042768B    movsx       edx,dl
 0042768E    mov         eax,dword ptr [ebp-8]
 00427691    mov         cl,0FF
 00427693    call        @VarFromInt
>00427698    jmp         004277AF
 0042769D    mov         eax,dword ptr [ebp-4]
 004276A0    call        00425E24
 004276A5    mov         edx,eax
 004276A7    movsx       edx,dx
 004276AA    mov         eax,dword ptr [ebp-8]
 004276AD    mov         cl,0FE
 004276AF    call        @VarFromInt
>004276B4    jmp         004277AF
 004276B9    mov         eax,dword ptr [ebp-4]
 004276BC    call        00425E24
 004276C1    mov         edx,eax
 004276C3    mov         eax,dword ptr [ebp-8]
 004276C6    mov         cl,0FC
 004276C8    call        @VarFromInt
>004276CD    jmp         004277AF
 004276D2    mov         eax,dword ptr [ebp-4]
 004276D5    call        00425BE0
 004276DA    mov         eax,dword ptr [ebp-8]
 004276DD    call        @VarFromReal
>004276E2    jmp         004277AF
 004276E7    mov         eax,dword ptr [ebp-4]
 004276EA    call        00425C2C
 004276EF    mov         eax,dword ptr [ebp-8]
 004276F2    call        @VarFromReal
>004276F7    jmp         004277AF
 004276FC    mov         eax,dword ptr [ebp-4]
 004276FF    call        00425C78
 00427704    mov         eax,dword ptr [ebp-8]
 00427707    call        @VarFromCurr
>0042770C    jmp         004277AF
 00427711    mov         eax,dword ptr [ebp-4]
 00427714    call        00425CCC
 00427719    mov         eax,dword ptr [ebp-8]
 0042771C    call        @VarFromTDateTime
>00427721    jmp         004277AF
 00427726    lea         edx,[ebp-0C]
 00427729    mov         eax,dword ptr [ebp-4]
 0042772C    call        TReader.ReadString
 00427731    mov         edx,dword ptr [ebp-0C]
 00427734    mov         eax,dword ptr [ebp-8]
 00427737    call        @VarFromLStr
>0042773C    jmp         004277AF
 0042773E    lea         edx,[ebp-10]
 00427741    mov         eax,dword ptr [ebp-4]
 00427744    call        00426CFC
 00427749    mov         edx,dword ptr [ebp-10]
 0042774C    mov         eax,dword ptr [ebp-8]
 0042774F    call        @VarFromWStr
>00427754    jmp         004277AF
 00427756    mov         eax,dword ptr [ebp-4]
 00427759    call        TReader.ReadValue
 0042775E    cmp         al,9
 00427760    sete        dl
 00427763    mov         eax,dword ptr [ebp-8]
 00427766    call        @VarFromBool
>0042776B    jmp         004277AF
 0042776D    push        ebp
 0042776E    lea         eax,[ebp-20]
 00427771    call        00427400
 00427776    pop         ecx
 00427777    lea         edx,[ebp-20]
 0042777A    mov         eax,dword ptr [ebp-8]
 0042777D    call        @VarCopy
>00427782    jmp         004277AF
 00427784    mov         eax,dword ptr [ebp-4]
 00427787    call        00425E94
 0042778C    push        edx
 0042778D    push        eax
 0042778E    mov         eax,dword ptr [ebp-8]
 00427791    call        @VarFromInt64
>00427796    jmp         004277AF
 00427798    mov         ecx,dword ptr ds:[56E548];^SReadError:TResStringRec
 0042779E    mov         dl,1
 004277A0    mov         eax,[0041D0DC];EReadError
 004277A5    call        Exception.Create
 004277AA    call        @RaiseExcept
 004277AF    xor         eax,eax
 004277B1    pop         edx
 004277B2    pop         ecx
 004277B3    pop         ecx
 004277B4    mov         dword ptr fs:[eax],edx
 004277B7    push        4277DC
 004277BC    lea         eax,[ebp-20]
 004277BF    call        @VarClr
 004277C4    lea         eax,[ebp-10]
 004277C7    call        @WStrClr
 004277CC    lea         eax,[ebp-0C]
 004277CF    call        @LStrClr
 004277D4    ret
>004277D5    jmp         @HandleFinally
>004277DA    jmp         004277BC
 004277DC    mov         esp,ebp
 004277DE    pop         ebp
 004277DF    ret
*}
end;

//004277E0
destructor TWriter.Destroy;
begin
{*
 004277E0    push        ebp
 004277E1    mov         ebp,esp
 004277E3    add         esp,0FFFFFFF8
 004277E6    call        @BeforeDestruction
 004277EB    mov         byte ptr [ebp-5],dl
 004277EE    mov         dword ptr [ebp-4],eax
 004277F1    mov         eax,dword ptr [ebp-4]
 004277F4    call        TWriter.WriteBuffer
 004277F9    mov         dl,byte ptr [ebp-5]
 004277FC    and         dl,0FC
 004277FF    mov         eax,dword ptr [ebp-4]
 00427802    call        TFiler.Destroy
 00427807    cmp         byte ptr [ebp-5],0
>0042780B    jle         00427815
 0042780D    mov         eax,dword ptr [ebp-4]
 00427810    call        @ClassDestroy
 00427815    pop         ecx
 00427816    pop         ecx
 00427817    pop         ebp
 00427818    ret
*}
end;

//0042783C
{*procedure sub_0042783C(?:?; ?:?; ?:?; ?:?);
begin
 0042783C    push        ebp
 0042783D    mov         ebp,esp
 0042783F    add         esp,0FFFFFFF4
 00427842    mov         byte ptr [ebp-9],cl
 00427845    mov         dword ptr [ebp-8],edx
 00427848    mov         dword ptr [ebp-4],eax
 0042784B    cmp         byte ptr [ebp-9],0
>0042784F    je          0042786C
 00427851    cmp         word ptr [ebp+0A],0
>00427856    je          0042786C
 00427858    mov         edx,dword ptr [ebp-8]
 0042785B    mov         eax,dword ptr [ebp-4]
 0042785E    call        TWriter.WritePropName
 00427863    mov         edx,dword ptr [ebp-4]
 00427866    mov         eax,dword ptr [ebp+0C]
 00427869    call        dword ptr [ebp+8]
 0042786C    mov         esp,ebp
 0042786E    pop         ebp
 0042786F    ret         10
end;*}

//00427874
{*procedure sub_00427874(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00427874    push        ebp
 00427875    mov         ebp,esp
 00427877    add         esp,0FFFFFFF4
 0042787A    mov         byte ptr [ebp-9],cl
 0042787D    mov         dword ptr [ebp-8],edx
 00427880    mov         dword ptr [ebp-4],eax
 00427883    cmp         byte ptr [ebp-9],0
>00427887    je          004278A9
 00427889    cmp         word ptr [ebp+0A],0
>0042788E    je          004278A9
 00427890    mov         edx,dword ptr [ebp-8]
 00427893    mov         eax,dword ptr [ebp-4]
 00427896    call        TWriter.WritePropName
 0042789B    push        dword ptr [ebp+0C]
 0042789E    push        dword ptr [ebp+8]
 004278A1    mov         eax,dword ptr [ebp-4]
 004278A4    call        004279B4
 004278A9    mov         esp,ebp
 004278AB    pop         ebp
 004278AC    ret         10
end;*}

//004278B0
{*function sub_004278B0(?:TWriter):?;
begin
 004278B0    push        ebp
 004278B1    mov         ebp,esp
 004278B3    add         esp,0FFFFFFF8
 004278B6    mov         dword ptr [ebp-4],eax
 004278B9    mov         eax,dword ptr [ebp-4]
 004278BC    mov         eax,dword ptr [eax+4]
 004278BF    call        TStream.GetPosition
 004278C4    mov         edx,dword ptr [ebp-4]
 004278C7    add         eax,dword ptr [edx+10]
 004278CA    mov         dword ptr [ebp-8],eax
 004278CD    mov         eax,dword ptr [ebp-8]
 004278D0    pop         ecx
 004278D1    pop         ecx
 004278D2    pop         ebp
 004278D3    ret
end;*}

//004278D4
procedure sub_004278D4;
begin
{*
 004278D4    push        ebp
 004278D5    mov         ebp,esp
 004278D7    push        ecx
 004278D8    mov         dword ptr [ebp-4],eax
 004278DB    mov         eax,dword ptr [ebp-4]
 004278DE    call        TWriter.WriteBuffer
 004278E3    pop         ecx
 004278E4    pop         ebp
 004278E5    ret
*}
end;

//004278E8
{*procedure sub_004278E8(?:TWriter; ?:?);
begin
 004278E8    push        ebp
 004278E9    mov         ebp,esp
 004278EB    add         esp,0FFFFFFF4
 004278EE    mov         dword ptr [ebp-8],edx
 004278F1    mov         dword ptr [ebp-4],eax
 004278F4    mov         eax,dword ptr [ebp-4]
 004278F7    mov         eax,dword ptr [eax+4]
 004278FA    call        TStream.GetPosition
 004278FF    mov         dword ptr [ebp-0C],eax
 00427902    mov         eax,dword ptr [ebp-8]
 00427905    cmp         eax,dword ptr [ebp-0C]
>00427908    jl          00427918
 0042790A    mov         eax,dword ptr [ebp-0C]
 0042790D    mov         edx,dword ptr [ebp-4]
 00427910    add         eax,dword ptr [edx+10]
 00427913    cmp         eax,dword ptr [ebp-8]
>00427916    jge         00427933
 00427918    mov         eax,dword ptr [ebp-4]
 0042791B    call        TWriter.WriteBuffer
 00427920    mov         eax,dword ptr [ebp-8]
 00427923    cdq
 00427924    push        edx
 00427925    push        eax
 00427926    mov         eax,dword ptr [ebp-4]
 00427929    mov         eax,dword ptr [eax+4]
 0042792C    call        TStream.SetPosition
>00427931    jmp         0042793F
 00427933    mov         eax,dword ptr [ebp-8]
 00427936    sub         eax,dword ptr [ebp-0C]
 00427939    mov         edx,dword ptr [ebp-4]
 0042793C    mov         dword ptr [edx+10],eax
 0042793F    mov         esp,ebp
 00427941    pop         ebp
 00427942    ret
end;*}

//00427944
{*procedure sub_00427944(?:?);
begin
 00427944    push        ebp
 00427945    mov         ebp,esp
 00427947    add         esp,0FFFFFFF8
 0042794A    mov         dword ptr [ebp-8],edx
 0042794D    mov         dword ptr [ebp-4],eax
 00427950    mov         edx,dword ptr [ebp-8]
 00427953    mov         eax,dword ptr [ebp-4]
 00427956    call        0042442C
 0042795B    mov         eax,dword ptr [ebp-8]
 0042795E    mov         edx,dword ptr [ebp-4]
 00427961    mov         dword ptr [edx+1C],eax;TWriter.FLookupRoot:TComponent
 00427964    pop         ecx
 00427965    pop         ecx
 00427966    pop         ebp
 00427967    ret
end;*}

//00427968
procedure TWriter.Write(const Buf:void ; Count:Longint);
begin
{*
 00427968    push        esi
 00427969    push        edi
 0042796A    push        ebx
 0042796B    mov         esi,edx
 0042796D    mov         ebx,ecx
 0042796F    mov         edi,eax
>00427971    jmp         004279A9
 00427973    mov         ecx,dword ptr [edi+0C]
 00427976    sub         ecx,dword ptr [edi+10]
>00427979    ja          00427985
 0042797B    mov         eax,edi
 0042797D    call        TWriter.WriteBuffer
 00427982    mov         ecx,dword ptr [edi+0C]
 00427985    cmp         ecx,ebx
>00427987    jb          0042798B
 00427989    mov         ecx,ebx
 0042798B    sub         ebx,ecx
 0042798D    push        edi
 0042798E    mov         eax,dword ptr [edi+8]
 00427991    add         eax,dword ptr [edi+10]
 00427994    add         dword ptr [edi+10],ecx
 00427997    mov         edi,eax
 00427999    mov         edx,ecx
 0042799B    shr         ecx,2
 0042799E    cld
 0042799F    rep movs    dword ptr [edi],dword ptr [esi]
 004279A1    mov         ecx,edx
 004279A3    and         ecx,3
 004279A6    rep movs    byte ptr [edi],byte ptr [esi]
 004279A8    pop         edi
 004279A9    or          ebx,ebx
>004279AB    jne         00427973
 004279AD    pop         ebx
 004279AE    pop         edi
 004279AF    pop         esi
 004279B0    ret
*}
end;

//004279B4
{*procedure sub_004279B4(?:TWriter; ?:?);
begin
 004279B4    push        ebp
 004279B5    mov         ebp,esp
 004279B7    add         esp,0FFFFFFF4
 004279BA    mov         dword ptr [ebp-4],eax
 004279BD    mov         dl,1
 004279BF    mov         eax,[0041DE14];TMemoryStream
 004279C4    call        TObject.Create;TMemoryStream.Create
 004279C9    mov         dword ptr [ebp-8],eax
 004279CC    xor         eax,eax
 004279CE    push        ebp
 004279CF    push        427A2E
 004279D4    push        dword ptr fs:[eax]
 004279D7    mov         dword ptr fs:[eax],esp
 004279DA    mov         edx,dword ptr [ebp-8]
 004279DD    mov         eax,dword ptr [ebp+0C]
 004279E0    call        dword ptr [ebp+8]
 004279E3    mov         dl,0A
 004279E5    mov         eax,dword ptr [ebp-4]
 004279E8    call        TWriter.WriteValue
 004279ED    mov         eax,dword ptr [ebp-8]
 004279F0    mov         edx,dword ptr [eax]
 004279F2    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004279F4    mov         dword ptr [ebp-0C],eax
 004279F7    lea         edx,[ebp-0C]
 004279FA    mov         ecx,4
 004279FF    mov         eax,dword ptr [ebp-4]
 00427A02    call        TWriter.Write
 00427A07    mov         eax,dword ptr [ebp-8]
 00427A0A    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00427A0D    mov         ecx,dword ptr [ebp-0C]
 00427A10    mov         eax,dword ptr [ebp-4]
 00427A13    call        TWriter.Write
 00427A18    xor         eax,eax
 00427A1A    pop         edx
 00427A1B    pop         ecx
 00427A1C    pop         ecx
 00427A1D    mov         dword ptr fs:[eax],edx
 00427A20    push        427A35
 00427A25    mov         eax,dword ptr [ebp-8]
 00427A28    call        TObject.Free
 00427A2D    ret
>00427A2E    jmp         @HandleFinally
>00427A33    jmp         00427A25
 00427A35    mov         esp,ebp
 00427A37    pop         ebp
 00427A38    ret         8
end;*}

//00427A3C
procedure TWriter.WriteBuffer;
begin
{*
 00427A3C    push        ebp
 00427A3D    mov         ebp,esp
 00427A3F    push        ecx
 00427A40    mov         dword ptr [ebp-4],eax
 00427A43    mov         eax,dword ptr [ebp-4]
 00427A46    mov         edx,dword ptr [eax+8]
 00427A49    mov         eax,dword ptr [ebp-4]
 00427A4C    mov         ecx,dword ptr [eax+10]
 00427A4F    mov         eax,dword ptr [ebp-4]
 00427A52    mov         eax,dword ptr [eax+4]
 00427A55    call        TStream.WriteBuffer
 00427A5A    mov         eax,dword ptr [ebp-4]
 00427A5D    xor         edx,edx
 00427A5F    mov         dword ptr [eax+10],edx
 00427A62    pop         ecx
 00427A63    pop         ebp
 00427A64    ret
*}
end;

//00427A68
{*procedure sub_00427A68(?:?; ?:?);
begin
 00427A68    push        ebp
 00427A69    mov         ebp,esp
 00427A6B    add         esp,0FFFFFFF8
 00427A6E    mov         byte ptr [ebp-5],dl
 00427A71    mov         dword ptr [ebp-4],eax
 00427A74    cmp         byte ptr [ebp-5],0
>00427A78    je          00427A86
 00427A7A    mov         dl,9
 00427A7C    mov         eax,dword ptr [ebp-4]
 00427A7F    call        TWriter.WriteValue
>00427A84    jmp         00427A90
 00427A86    mov         dl,8
 00427A88    mov         eax,dword ptr [ebp-4]
 00427A8B    call        TWriter.WriteValue
 00427A90    pop         ecx
 00427A91    pop         ecx
 00427A92    pop         ebp
 00427A93    ret
end;*}

//00427A94
{*procedure sub_00427A94(?:?; ?:?);
begin
 00427A94    push        ebp
 00427A95    mov         ebp,esp
 00427A97    add         esp,0FFFFFFF4
 00427A9A    xor         ecx,ecx
 00427A9C    mov         dword ptr [ebp-0C],ecx
 00427A9F    mov         byte ptr [ebp-5],dl
 00427AA2    mov         dword ptr [ebp-4],eax
 00427AA5    xor         eax,eax
 00427AA7    push        ebp
 00427AA8    push        427ADF
 00427AAD    push        dword ptr fs:[eax]
 00427AB0    mov         dword ptr fs:[eax],esp
 00427AB3    lea         eax,[ebp-0C]
 00427AB6    mov         dl,byte ptr [ebp-5]
 00427AB9    call        @LStrFromChar
 00427ABE    mov         edx,dword ptr [ebp-0C]
 00427AC1    mov         eax,dword ptr [ebp-4]
 00427AC4    call        00429D20
 00427AC9    xor         eax,eax
 00427ACB    pop         edx
 00427ACC    pop         ecx
 00427ACD    pop         ecx
 00427ACE    mov         dword ptr fs:[eax],edx
 00427AD1    push        427AE6
 00427AD6    lea         eax,[ebp-0C]
 00427AD9    call        @LStrClr
 00427ADE    ret
>00427ADF    jmp         @HandleFinally
>00427AE4    jmp         00427AD6
 00427AE6    mov         esp,ebp
 00427AE8    pop         ebp
 00427AE9    ret
end;*}

//00427AEC
{*procedure sub_00427AEC(?:TWriter; ?:?);
begin
 00427AEC    push        ebp
 00427AED    mov         ebp,esp
 00427AEF    add         esp,0FFFFFFEC
 00427AF2    mov         dword ptr [ebp-8],edx
 00427AF5    mov         dword ptr [ebp-4],eax
 00427AF8    mov         eax,dword ptr [ebp-4]
 00427AFB    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 00427AFE    mov         dword ptr [ebp-10],eax
 00427B01    mov         eax,dword ptr [ebp-4]
 00427B04    xor         edx,edx
 00427B06    mov         dword ptr [eax+20],edx;TWriter.FAncestor:TPersistent
 00427B09    xor         eax,eax
 00427B0B    push        ebp
 00427B0C    push        427B8B
 00427B11    push        dword ptr fs:[eax]
 00427B14    mov         dword ptr fs:[eax],esp
 00427B17    mov         dl,0E
 00427B19    mov         eax,dword ptr [ebp-4]
 00427B1C    call        TWriter.WriteValue
 00427B21    cmp         dword ptr [ebp-8],0
>00427B25    je          00427B6C
 00427B27    mov         eax,dword ptr [ebp-8]
 00427B2A    call        0042158C
 00427B2F    dec         eax
 00427B30    test        eax,eax
>00427B32    jl          00427B6C
 00427B34    inc         eax
 00427B35    mov         dword ptr [ebp-14],eax
 00427B38    mov         dword ptr [ebp-0C],0
 00427B3F    mov         eax,dword ptr [ebp-4]
 00427B42    call        0042841C
 00427B47    mov         edx,dword ptr [ebp-0C]
 00427B4A    mov         eax,dword ptr [ebp-8]
 00427B4D    call        004215A8
 00427B52    mov         edx,eax
 00427B54    mov         eax,dword ptr [ebp-4]
 00427B57    call        TWriter.WriteProperties
 00427B5C    mov         eax,dword ptr [ebp-4]
 00427B5F    call        00428430
 00427B64    inc         dword ptr [ebp-0C]
 00427B67    dec         dword ptr [ebp-14]
>00427B6A    jne         00427B3F
 00427B6C    mov         eax,dword ptr [ebp-4]
 00427B6F    call        00428430
 00427B74    xor         eax,eax
 00427B76    pop         edx
 00427B77    pop         ecx
 00427B78    pop         ecx
 00427B79    mov         dword ptr fs:[eax],edx
 00427B7C    push        427B92
 00427B81    mov         eax,dword ptr [ebp-4]
 00427B84    mov         edx,dword ptr [ebp-10]
 00427B87    mov         dword ptr [eax+20],edx;TWriter.FAncestor:TPersistent
 00427B8A    ret
>00427B8B    jmp         @HandleFinally
>00427B90    jmp         00427B81
 00427B92    mov         esp,ebp
 00427B94    pop         ebp
 00427B95    ret
end;*}

//00427B98
{*function sub_00427B98(?:?; ?:?):?;
begin
 00427B98    push        ebp
 00427B99    mov         ebp,esp
 00427B9B    add         esp,0FFFFFFF0
 00427B9E    mov         dword ptr [ebp-4],eax
 00427BA1    mov         eax,dword ptr [ebp+8]
 00427BA4    mov         eax,dword ptr [eax-4]
 00427BA7    mov         eax,dword ptr [eax+30]
 00427BAA    mov         eax,dword ptr [eax+8]
 00427BAD    dec         eax
 00427BAE    test        eax,eax
>00427BB0    jl          00427BEB
 00427BB2    inc         eax
 00427BB3    mov         dword ptr [ebp-10],eax
 00427BB6    mov         dword ptr [ebp-0C],0
 00427BBD    mov         eax,dword ptr [ebp+8]
 00427BC0    mov         eax,dword ptr [eax-4]
 00427BC3    mov         eax,dword ptr [eax+30]
 00427BC6    mov         edx,dword ptr [ebp-0C]
 00427BC9    call        TList.Get
 00427BCE    mov         dword ptr [ebp-8],eax
 00427BD1    mov         eax,dword ptr [ebp-8]
 00427BD4    mov         eax,dword ptr [eax+8]
 00427BD7    mov         edx,dword ptr [ebp-4]
 00427BDA    call        SameText
 00427BDF    test        al,al
>00427BE1    jne         00427BF0
 00427BE3    inc         dword ptr [ebp-0C]
 00427BE6    dec         dword ptr [ebp-10]
>00427BE9    jne         00427BBD
 00427BEB    xor         eax,eax
 00427BED    mov         dword ptr [ebp-8],eax
 00427BF0    mov         eax,dword ptr [ebp-8]
 00427BF3    mov         esp,ebp
 00427BF5    pop         ebp
 00427BF6    ret
end;*}

//00427BF8
{*procedure sub_00427BF8(?:TWriter; ?:?);
begin
 00427BF8    push        ebp
 00427BF9    mov         ebp,esp
 00427BFB    add         esp,0FFFFFFE4
 00427BFE    push        ebx
 00427BFF    mov         dword ptr [ebp-8],edx
 00427C02    mov         dword ptr [ebp-4],eax
 00427C05    mov         eax,dword ptr [ebp-4]
 00427C08    mov         eax,dword ptr [eax+20]
 00427C0B    mov         dword ptr [ebp-0C],eax
 00427C0E    mov         eax,dword ptr [ebp-4]
 00427C11    mov         eax,dword ptr [eax+28]
 00427C14    mov         dword ptr [ebp-10],eax
 00427C17    xor         eax,eax
 00427C19    push        ebp
 00427C1A    push        427D59
 00427C1F    push        dword ptr fs:[eax]
 00427C22    mov         dword ptr fs:[eax],esp
 00427C25    mov         eax,dword ptr [ebp-8]
 00427C28    or          word ptr [eax+1C],4
 00427C2D    mov         eax,dword ptr [ebp-8]
 00427C30    call        0042AB10
 00427C35    dec         eax
 00427C36    test        eax,eax
>00427C38    jl          00427C6E
 00427C3A    inc         eax
 00427C3B    mov         dword ptr [ebp-1C],eax
 00427C3E    mov         dword ptr [ebp-18],0
 00427C45    mov         edx,dword ptr [ebp-18]
 00427C48    mov         eax,dword ptr [ebp-8]
 00427C4B    call        0042AAD0
 00427C50    test        byte ptr [eax+24],4
>00427C54    je          00427C66
 00427C56    mov         edx,dword ptr [ebp-18]
 00427C59    mov         eax,dword ptr [ebp-8]
 00427C5C    call        0042AAD0
 00427C61    or          word ptr [eax+1C],4
 00427C66    inc         dword ptr [ebp-18]
 00427C69    dec         dword ptr [ebp-1C]
>00427C6C    jne         00427C45
 00427C6E    mov         eax,dword ptr [ebp-4]
 00427C71    cmp         dword ptr [eax+30],0
>00427C75    je          00427C8A
 00427C77    push        ebp
 00427C78    mov         eax,dword ptr [ebp-8]
 00427C7B    mov         eax,dword ptr [eax+8]
 00427C7E    call        00427B98
 00427C83    pop         ecx
 00427C84    mov         edx,dword ptr [ebp-4]
 00427C87    mov         dword ptr [edx+20],eax
 00427C8A    mov         eax,dword ptr [ebp-4]
 00427C8D    cmp         word ptr [eax+42],0
>00427C92    je          00427CE5
 00427C94    mov         eax,dword ptr [ebp-4]
 00427C97    cmp         dword ptr [eax+20],0
>00427C9B    je          00427CB2
 00427C9D    mov         eax,dword ptr [ebp-4]
 00427CA0    mov         eax,dword ptr [eax+20]
 00427CA3    mov         edx,dword ptr ds:[41E3B8];TComponent
 00427CA9    call        @IsClass
 00427CAE    test        al,al
>00427CB0    je          00427CE5
 00427CB2    mov         eax,dword ptr [ebp-4]
 00427CB5    mov         eax,dword ptr [eax+20]
 00427CB8    mov         dword ptr [ebp-14],eax
 00427CBB    mov         eax,dword ptr [ebp-8]
 00427CBE    mov         eax,dword ptr [eax+8]
 00427CC1    push        eax
 00427CC2    lea         eax,[ebp-14]
 00427CC5    push        eax
 00427CC6    mov         eax,dword ptr [ebp-4]
 00427CC9    add         eax,28
 00427CCC    push        eax
 00427CCD    mov         ebx,dword ptr [ebp-4]
 00427CD0    mov         ecx,dword ptr [ebp-8]
 00427CD3    mov         edx,dword ptr [ebp-4]
 00427CD6    mov         eax,dword ptr [ebx+44]
 00427CD9    call        dword ptr [ebx+40]
 00427CDC    mov         eax,dword ptr [ebp-4]
 00427CDF    mov         edx,dword ptr [ebp-14]
 00427CE2    mov         dword ptr [eax+20],edx
 00427CE5    mov         edx,dword ptr [ebp-4]
 00427CE8    mov         eax,dword ptr [ebp-8]
 00427CEB    mov         ecx,dword ptr [eax]
 00427CED    call        dword ptr [ecx+24]
 00427CF0    mov         eax,dword ptr [ebp-8]
 00427CF3    and         word ptr [eax+1C],0FFFFFFFB
 00427CF8    mov         eax,dword ptr [ebp-8]
 00427CFB    call        0042AB10
 00427D00    dec         eax
 00427D01    test        eax,eax
>00427D03    jl          00427D39
 00427D05    inc         eax
 00427D06    mov         dword ptr [ebp-1C],eax
 00427D09    mov         dword ptr [ebp-18],0
 00427D10    mov         edx,dword ptr [ebp-18]
 00427D13    mov         eax,dword ptr [ebp-8]
 00427D16    call        0042AAD0
 00427D1B    test        byte ptr [eax+24],4
>00427D1F    je          00427D31
 00427D21    mov         edx,dword ptr [ebp-18]
 00427D24    mov         eax,dword ptr [ebp-8]
 00427D27    call        0042AAD0
 00427D2C    and         word ptr [eax+1C],0FFFFFFFB
 00427D31    inc         dword ptr [ebp-18]
 00427D34    dec         dword ptr [ebp-1C]
>00427D37    jne         00427D10
 00427D39    xor         eax,eax
 00427D3B    pop         edx
 00427D3C    pop         ecx
 00427D3D    pop         ecx
 00427D3E    mov         dword ptr fs:[eax],edx
 00427D41    push        427D60
 00427D46    mov         eax,dword ptr [ebp-4]
 00427D49    mov         edx,dword ptr [ebp-0C]
 00427D4C    mov         dword ptr [eax+20],edx
 00427D4F    mov         eax,dword ptr [ebp-4]
 00427D52    mov         edx,dword ptr [ebp-10]
 00427D55    mov         dword ptr [eax+28],edx
 00427D58    ret
>00427D59    jmp         @HandleFinally
>00427D5E    jmp         00427D46
 00427D60    pop         ebx
 00427D61    mov         esp,ebp
 00427D63    pop         ebp
 00427D64    ret
end;*}

//00427D68
{*procedure sub_00427D68(?:?);
begin
 00427D68    push        ebp
 00427D69    mov         ebp,esp
 00427D6B    add         esp,0FFFFFEC8
 00427D71    push        ebx
 00427D72    push        esi
 00427D73    xor         ecx,ecx
 00427D75    mov         dword ptr [ebp-138],ecx
 00427D7B    mov         dword ptr [ebp-12C],ecx
 00427D81    mov         dword ptr [ebp-130],ecx
 00427D87    mov         dword ptr [ebp-134],ecx
 00427D8D    mov         dword ptr [ebp-8],edx
 00427D90    mov         dword ptr [ebp-4],eax
 00427D93    xor         eax,eax
 00427D95    push        ebp
 00427D96    push        42815B
 00427D9B    push        dword ptr fs:[eax]
 00427D9E    mov         dword ptr fs:[eax],esp
 00427DA1    lea         edx,[ebp-128]
 00427DA7    mov         eax,dword ptr [ebp-8]
 00427DAA    mov         eax,dword ptr [eax]
 00427DAC    call        TObject.ClassName
 00427DB1    xor         ebx,ebx
 00427DB3    mov         bl,byte ptr [ebp-128]
 00427DB9    mov         eax,dword ptr [ebp-8]
 00427DBC    mov         eax,dword ptr [eax+8]
 00427DBF    call        @LStrLen
 00427DC4    add         ebx,eax
 00427DC6    inc         ebx
 00427DC7    add         ebx,5
 00427DCA    add         ebx,3
 00427DCD    mov         eax,dword ptr [ebp-4]
 00427DD0    mov         eax,dword ptr [eax+0C];TWriter.FBufSize:Integer
 00427DD3    mov         edx,dword ptr [ebp-4]
 00427DD6    sub         eax,dword ptr [edx+10]
 00427DD9    cmp         ebx,eax
>00427DDB    jle         00427DE5
 00427DDD    mov         eax,dword ptr [ebp-4]
 00427DE0    call        TWriter.WriteBuffer
 00427DE5    mov         eax,dword ptr [ebp-4]
 00427DE8    call        004278B0
 00427DED    mov         dword ptr [ebp-0C],eax
 00427DF0    mov         al,[00428168];0x0 gvar_00428168
 00427DF5    mov         byte ptr [ebp-25],al
 00427DF8    mov         eax,dword ptr [ebp-8]
 00427DFB    test        byte ptr [eax+1D],2
>00427DFF    je          00427E28
 00427E01    mov         eax,dword ptr [ebp-4]
 00427E04    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>00427E08    je          00427E22
 00427E0A    mov         eax,dword ptr [ebp-8]
 00427E0D    test        byte ptr [eax+1C],20
>00427E11    je          00427E22
 00427E13    mov         eax,dword ptr [ebp-4]
 00427E16    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList
>00427E1A    je          00427E22
 00427E1C    or          byte ptr [ebp-25],1
>00427E20    jmp         00427E35
 00427E22    or          byte ptr [ebp-25],4
>00427E26    jmp         00427E35
 00427E28    mov         eax,dword ptr [ebp-4]
 00427E2B    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>00427E2F    je          00427E35
 00427E31    or          byte ptr [ebp-25],1
 00427E35    mov         eax,dword ptr [ebp-4]
 00427E38    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList
>00427E3C    je          00427E75
 00427E3E    mov         eax,dword ptr [ebp-4]
 00427E41    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00427E44    mov         edx,dword ptr [ebp-4]
 00427E47    mov         edx,dword ptr [edx+30];TWriter.FAncestorList:TList
 00427E4A    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>00427E4D    jge         00427E75
 00427E4F    mov         eax,dword ptr [ebp-4]
 00427E52    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>00427E56    je          00427E71
 00427E58    mov         eax,dword ptr [ebp-4]
 00427E5B    mov         edx,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00427E5E    mov         eax,dword ptr [ebp-4]
 00427E61    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList
 00427E64    call        TList.Get
 00427E69    mov         edx,dword ptr [ebp-4]
 00427E6C    cmp         eax,dword ptr [edx+20];TWriter.FAncestor:TPersistent
>00427E6F    je          00427E75
 00427E71    or          byte ptr [ebp-25],2
 00427E75    mov         eax,dword ptr [ebp-4]
 00427E78    mov         ecx,dword ptr [eax+38];TWriter.FChildPos:Integer
 00427E7B    mov         dl,byte ptr [ebp-25]
 00427E7E    mov         eax,dword ptr [ebp-4]
 00427E81    call        00428444
 00427E86    mov         eax,dword ptr [ebp-4]
 00427E89    cmp         byte ptr [eax+48],0;TWriter.FUseQualifiedNames:Boolean
>00427E8D    je          00427F01
 00427E8F    mov         eax,dword ptr [ebp-8]
 00427E92    call        TObject.ClassType
 00427E97    call        004044E0
 00427E9C    call        GetTypeData
 00427EA1    lea         edx,[eax+0A]
 00427EA4    lea         eax,[ebp-130]
 00427EAA    call        @LStrFromString
 00427EAF    push        dword ptr [ebp-130]
 00427EB5    push        428174;'.'
 00427EBA    lea         edx,[ebp-128]
 00427EC0    mov         eax,dword ptr [ebp-8]
 00427EC3    mov         eax,dword ptr [eax]
 00427EC5    call        TObject.ClassName
 00427ECA    lea         edx,[ebp-128]
 00427ED0    lea         eax,[ebp-134]
 00427ED6    call        @LStrFromString
 00427EDB    push        dword ptr [ebp-134]
 00427EE1    lea         eax,[ebp-12C]
 00427EE7    mov         edx,3
 00427EEC    call        @LStrCatN
 00427EF1    mov         edx,dword ptr [ebp-12C]
 00427EF7    mov         eax,dword ptr [ebp-4]
 00427EFA    call        00429C20
>00427EFF    jmp         00427F30
 00427F01    lea         edx,[ebp-128]
 00427F07    mov         eax,dword ptr [ebp-8]
 00427F0A    mov         eax,dword ptr [eax]
 00427F0C    call        TObject.ClassName
 00427F11    lea         edx,[ebp-128]
 00427F17    lea         eax,[ebp-138]
 00427F1D    call        @LStrFromString
 00427F22    mov         edx,dword ptr [ebp-138]
 00427F28    mov         eax,dword ptr [ebp-4]
 00427F2B    call        00429C20
 00427F30    mov         eax,dword ptr [ebp-8]
 00427F33    mov         edx,dword ptr [eax+8]
 00427F36    mov         eax,dword ptr [ebp-4]
 00427F39    call        00429C20
 00427F3E    mov         eax,dword ptr [ebp-4]
 00427F41    call        004278B0
 00427F46    mov         dword ptr [ebp-10],eax
 00427F49    mov         eax,dword ptr [ebp-4]
 00427F4C    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList
>00427F50    je          00427F78
 00427F52    mov         eax,dword ptr [ebp-4]
 00427F55    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00427F58    mov         edx,dword ptr [ebp-4]
 00427F5B    mov         edx,dword ptr [edx+30];TWriter.FAncestorList:TList
 00427F5E    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>00427F61    jge         00427F78
 00427F63    mov         eax,dword ptr [ebp-4]
 00427F66    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>00427F6A    je          00427F72
 00427F6C    mov         eax,dword ptr [ebp-4]
 00427F6F    inc         dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00427F72    mov         eax,dword ptr [ebp-4]
 00427F75    inc         dword ptr [eax+38];TWriter.FChildPos:Integer
 00427F78    mov         edx,dword ptr [ebp-8]
 00427F7B    mov         eax,dword ptr [ebp-4]
 00427F7E    call        TWriter.WriteProperties
 00427F83    mov         eax,dword ptr [ebp-4]
 00427F86    call        00428430
 00427F8B    mov         eax,dword ptr [ebp-4]
 00427F8E    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList
 00427F91    mov         dword ptr [ebp-14],eax
 00427F94    mov         eax,dword ptr [ebp-4]
 00427F97    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00427F9A    mov         dword ptr [ebp-18],eax
 00427F9D    mov         eax,dword ptr [ebp-4]
 00427FA0    mov         eax,dword ptr [eax+38];TWriter.FChildPos:Integer
 00427FA3    mov         dword ptr [ebp-1C],eax
 00427FA6    mov         eax,dword ptr [ebp-4]
 00427FA9    mov         eax,dword ptr [eax+18];TWriter.FRoot:TComponent
 00427FAC    mov         dword ptr [ebp-20],eax
 00427FAF    mov         eax,dword ptr [ebp-4]
 00427FB2    mov         eax,dword ptr [eax+28];TWriter.FRootAncestor:TComponent
 00427FB5    mov         dword ptr [ebp-24],eax
 00427FB8    xor         eax,eax
 00427FBA    push        ebp
 00427FBB    push        4280FC
 00427FC0    push        dword ptr fs:[eax]
 00427FC3    mov         dword ptr fs:[eax],esp
 00427FC6    mov         eax,dword ptr [ebp-4]
 00427FC9    xor         edx,edx
 00427FCB    mov         dword ptr [eax+30],edx;TWriter.FAncestorList:TList
 00427FCE    mov         eax,dword ptr [ebp-4]
 00427FD1    xor         edx,edx
 00427FD3    mov         dword ptr [eax+34],edx;TWriter.FAncestorPos:Integer
 00427FD6    mov         eax,dword ptr [ebp-4]
 00427FD9    xor         edx,edx
 00427FDB    mov         dword ptr [eax+38],edx;TWriter.FChildPos:Integer
 00427FDE    mov         eax,dword ptr [ebp-4]
 00427FE1    cmp         byte ptr [eax+24],0;TWriter.FIgnoreChildren:Boolean
>00427FE5    jne         004280C1
 00427FEB    xor         eax,eax
 00427FED    push        ebp
 00427FEE    push        4280BA
 00427FF3    push        dword ptr fs:[eax]
 00427FF6    mov         dword ptr fs:[eax],esp
 00427FF9    mov         eax,dword ptr [ebp-4]
 00427FFC    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>00428000    je          00428074
 00428002    mov         eax,dword ptr [ebp-4]
 00428005    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 00428008    mov         edx,dword ptr ds:[41E3B8];TComponent
 0042800E    call        @IsClass
 00428013    test        al,al
>00428015    je          00428074
 00428017    mov         eax,dword ptr [ebp-4]
 0042801A    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0042801D    mov         edx,dword ptr ds:[41E3B8];TComponent
 00428023    call        @IsClass
 00428028    test        al,al
>0042802A    je          00428044
 0042802C    mov         eax,dword ptr [ebp-4]
 0042802F    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 00428032    test        byte ptr [eax+1D],2
>00428036    je          00428044
 00428038    mov         eax,dword ptr [ebp-4]
 0042803B    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0042803E    mov         edx,dword ptr [ebp-4]
 00428041    mov         dword ptr [edx+28],eax;TWriter.FRootAncestor:TComponent
 00428044    mov         dl,1
 00428046    mov         eax,[0041D46C];TList
 0042804B    call        TObject.Create;TList.Create
 00428050    mov         edx,dword ptr [ebp-4]
 00428053    mov         dword ptr [edx+30],eax;TWriter.FAncestorList:TList
 00428056    mov         eax,dword ptr [ebp-4]
 00428059    push        eax
 0042805A    push        42781C
 0042805F    mov         eax,dword ptr [ebp-4]
 00428062    mov         edx,dword ptr [eax+28];TWriter.FRootAncestor:TComponent
 00428065    mov         eax,dword ptr [ebp-4]
 00428068    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0042806B    mov         si,0FFFD
 0042806F    call        @CallDynaInst
 00428074    mov         eax,dword ptr [ebp-8]
 00428077    test        byte ptr [eax+1D],2
>0042807B    je          00428086
 0042807D    mov         eax,dword ptr [ebp-4]
 00428080    mov         edx,dword ptr [ebp-8]
 00428083    mov         dword ptr [eax+18],edx;TWriter.FRoot:TComponent
 00428086    mov         eax,dword ptr [ebp-4]
 00428089    push        eax
 0042808A    push        427BF8;sub_00427BF8
 0042808F    mov         eax,dword ptr [ebp-4]
 00428092    mov         edx,dword ptr [eax+18];TWriter.FRoot:TComponent
 00428095    mov         eax,dword ptr [ebp-8]
 00428098    mov         si,0FFFD
 0042809C    call        @CallDynaInst
 004280A1    xor         eax,eax
 004280A3    pop         edx
 004280A4    pop         ecx
 004280A5    pop         ecx
 004280A6    mov         dword ptr fs:[eax],edx
 004280A9    push        4280C1
 004280AE    mov         eax,dword ptr [ebp-4]
 004280B1    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList
 004280B4    call        TObject.Free
 004280B9    ret
>004280BA    jmp         @HandleFinally
>004280BF    jmp         004280AE
 004280C1    xor         eax,eax
 004280C3    pop         edx
 004280C4    pop         ecx
 004280C5    pop         ecx
 004280C6    mov         dword ptr fs:[eax],edx
 004280C9    push        428103
 004280CE    mov         eax,dword ptr [ebp-4]
 004280D1    mov         edx,dword ptr [ebp-14]
 004280D4    mov         dword ptr [eax+30],edx;TWriter.FAncestorList:TList
 004280D7    mov         eax,dword ptr [ebp-4]
 004280DA    mov         edx,dword ptr [ebp-18]
 004280DD    mov         dword ptr [eax+34],edx;TWriter.FAncestorPos:Integer
 004280E0    mov         eax,dword ptr [ebp-4]
 004280E3    mov         edx,dword ptr [ebp-1C]
 004280E6    mov         dword ptr [eax+38],edx;TWriter.FChildPos:Integer
 004280E9    mov         eax,dword ptr [ebp-4]
 004280EC    mov         edx,dword ptr [ebp-20]
 004280EF    mov         dword ptr [eax+18],edx;TWriter.FRoot:TComponent
 004280F2    mov         eax,dword ptr [ebp-4]
 004280F5    mov         edx,dword ptr [ebp-24]
 004280F8    mov         dword ptr [eax+28],edx;TWriter.FRootAncestor:TComponent
 004280FB    ret
>004280FC    jmp         @HandleFinally
>00428101    jmp         004280CE
 00428103    mov         eax,dword ptr [ebp-4]
 00428106    call        00428430
 0042810B    mov         eax,dword ptr [ebp-4]
 0042810E    mov         eax,dword ptr [eax+18];TWriter.FRoot:TComponent
 00428111    cmp         eax,dword ptr [ebp-8]
>00428114    je          0042813D
 00428116    mov         al,[00428178];0x1 gvar_00428178
 0042811B    cmp         al,byte ptr [ebp-25]
>0042811E    jne         0042813D
 00428120    mov         eax,dword ptr [ebp-4]
 00428123    call        004278B0
 00428128    mov         edx,dword ptr [ebp-10]
 0042812B    add         edx,2
 0042812E    cmp         eax,edx
>00428130    jne         0042813D
 00428132    mov         edx,dword ptr [ebp-0C]
 00428135    mov         eax,dword ptr [ebp-4]
 00428138    call        004278E8
 0042813D    xor         eax,eax
 0042813F    pop         edx
 00428140    pop         ecx
 00428141    pop         ecx
 00428142    mov         dword ptr fs:[eax],edx
 00428145    push        428162
 0042814A    lea         eax,[ebp-138]
 00428150    mov         edx,4
 00428155    call        @LStrArrayClr
 0042815A    ret
>0042815B    jmp         @HandleFinally
>00428160    jmp         0042814A
 00428162    pop         esi
 00428163    pop         ebx
 00428164    mov         esp,ebp
 00428166    pop         ebp
 00428167    ret
end;*}

//0042817C
{*procedure sub_0042817C(?:TWriter; ?:?; ?:?);
begin
 0042817C    push        ebp
 0042817D    mov         ebp,esp
 0042817F    add         esp,0FFFFFFF4
 00428182    mov         dword ptr [ebp-0C],ecx
 00428185    mov         dword ptr [ebp-8],edx
 00428188    mov         dword ptr [ebp-4],eax
 0042818B    mov         eax,dword ptr [ebp-0C]
 0042818E    mov         edx,dword ptr [ebp-4]
 00428191    mov         dword ptr [edx+28],eax;TWriter.FRootAncestor:TComponent
 00428194    mov         eax,dword ptr [ebp-0C]
 00428197    mov         edx,dword ptr [ebp-4]
 0042819A    mov         dword ptr [edx+20],eax;TWriter.FAncestor:TPersistent
 0042819D    mov         eax,dword ptr [ebp-8]
 004281A0    mov         edx,dword ptr [ebp-4]
 004281A3    mov         dword ptr [edx+18],eax;TWriter.FRoot:TComponent
 004281A6    mov         eax,dword ptr [ebp-8]
 004281A9    mov         edx,dword ptr [ebp-4]
 004281AC    mov         dword ptr [edx+1C],eax;TWriter.FLookupRoot:TComponent
 004281AF    mov         eax,dword ptr [ebp-4]
 004281B2    call        00429C04
 004281B7    mov         edx,dword ptr [ebp-8]
 004281BA    mov         eax,dword ptr [ebp-4]
 004281BD    call        00427BF8
 004281C2    mov         esp,ebp
 004281C4    pop         ebp
 004281C5    ret
end;*}

//004281C8
procedure TWriter.WriteFloat(const Value:Extended);
begin
{*
 004281C8    push        ebp
 004281C9    mov         ebp,esp
 004281CB    push        ecx
 004281CC    mov         dword ptr [ebp-4],eax
 004281CF    mov         dl,5
 004281D1    mov         eax,dword ptr [ebp-4]
 004281D4    call        TWriter.WriteValue
 004281D9    lea         edx,[ebp+8]
 004281DC    mov         ecx,0A
 004281E1    mov         eax,dword ptr [ebp-4]
 004281E4    call        TWriter.Write
 004281E9    pop         ecx
 004281EA    pop         ebp
 004281EB    ret         0C
*}
end;

//004281F0
{*procedure sub_004281F0(?:?; ?:?);
begin
 004281F0    push        ebp
 004281F1    mov         ebp,esp
 004281F3    push        ecx
 004281F4    mov         dword ptr [ebp-4],eax
 004281F7    mov         dl,0F
 004281F9    mov         eax,dword ptr [ebp-4]
 004281FC    call        TWriter.WriteValue
 00428201    lea         edx,[ebp+8]
 00428204    mov         ecx,4
 00428209    mov         eax,dword ptr [ebp-4]
 0042820C    call        TWriter.Write
 00428211    pop         ecx
 00428212    pop         ebp
 00428213    ret         4
end;*}

//00428218
{*procedure sub_00428218(?:?; ?:?);
begin
 00428218    push        ebp
 00428219    mov         ebp,esp
 0042821B    push        ecx
 0042821C    mov         dword ptr [ebp-4],eax
 0042821F    mov         dl,10
 00428221    mov         eax,dword ptr [ebp-4]
 00428224    call        TWriter.WriteValue
 00428229    lea         edx,[ebp+8]
 0042822C    mov         ecx,8
 00428231    mov         eax,dword ptr [ebp-4]
 00428234    call        TWriter.Write
 00428239    pop         ecx
 0042823A    pop         ebp
 0042823B    ret         8
end;*}

//00428240
{*procedure sub_00428240(?:?; ?:?);
begin
 00428240    push        ebp
 00428241    mov         ebp,esp
 00428243    push        ecx
 00428244    mov         dword ptr [ebp-4],eax
 00428247    mov         dl,11
 00428249    mov         eax,dword ptr [ebp-4]
 0042824C    call        TWriter.WriteValue
 00428251    lea         edx,[ebp+8]
 00428254    mov         ecx,8
 00428259    mov         eax,dword ptr [ebp-4]
 0042825C    call        TWriter.Write
 00428261    pop         ecx
 00428262    pop         ebp
 00428263    ret         8
end;*}

//00428268
procedure TWriter.WriteIdent(const Ident:AnsiString);
begin
{*
 00428268    push        ebp
 00428269    mov         ebp,esp
 0042826B    add         esp,0FFFFFFF8
 0042826E    mov         dword ptr [ebp-8],edx
 00428271    mov         dword ptr [ebp-4],eax
 00428274    mov         edx,42830C;'False'
 00428279    mov         eax,dword ptr [ebp-8]
 0042827C    call        SameText
 00428281    test        al,al
>00428283    je          00428291
 00428285    mov         dl,8
 00428287    mov         eax,dword ptr [ebp-4]
 0042828A    call        TWriter.WriteValue
>0042828F    jmp         004282FD
 00428291    mov         edx,42831C;'True'
 00428296    mov         eax,dword ptr [ebp-8]
 00428299    call        SameText
 0042829E    test        al,al
>004282A0    je          004282AE
 004282A2    mov         dl,9
 004282A4    mov         eax,dword ptr [ebp-4]
 004282A7    call        TWriter.WriteValue
>004282AC    jmp         004282FD
 004282AE    mov         edx,42832C;'Null'
 004282B3    mov         eax,dword ptr [ebp-8]
 004282B6    call        SameText
 004282BB    test        al,al
>004282BD    je          004282CB
 004282BF    xor         edx,edx
 004282C1    mov         eax,dword ptr [ebp-4]
 004282C4    call        TWriter.WriteValue
>004282C9    jmp         004282FD
 004282CB    mov         edx,42833C;'nil'
 004282D0    mov         eax,dword ptr [ebp-8]
 004282D3    call        SameText
 004282D8    test        al,al
>004282DA    je          004282E8
 004282DC    mov         dl,0D
 004282DE    mov         eax,dword ptr [ebp-4]
 004282E1    call        TWriter.WriteValue
>004282E6    jmp         004282FD
 004282E8    mov         dl,7
 004282EA    mov         eax,dword ptr [ebp-4]
 004282ED    call        TWriter.WriteValue
 004282F2    mov         edx,dword ptr [ebp-8]
 004282F5    mov         eax,dword ptr [ebp-4]
 004282F8    call        00429C20
 004282FD    pop         ecx
 004282FE    pop         ecx
 004282FF    pop         ebp
 00428300    ret
*}
end;

//00428340
procedure sub_00428340(?:TWriter; ?:Integer);
begin
{*
 00428340    push        ebp
 00428341    mov         ebp,esp
 00428343    add         esp,0FFFFFFF8
 00428346    mov         dword ptr [ebp-8],edx
 00428349    mov         dword ptr [ebp-4],eax
 0042834C    cmp         dword ptr [ebp-8],0FFFFFF80
>00428350    jl          00428374
 00428352    cmp         dword ptr [ebp-8],7F
>00428356    jg          00428374
 00428358    mov         dl,2
 0042835A    mov         eax,dword ptr [ebp-4]
 0042835D    call        TWriter.WriteValue
 00428362    lea         edx,[ebp-8]
 00428365    mov         ecx,1
 0042836A    mov         eax,dword ptr [ebp-4]
 0042836D    call        TWriter.Write
>00428372    jmp         004283BC
 00428374    cmp         dword ptr [ebp-8],0FFFF8000
>0042837B    jl          004283A2
 0042837D    cmp         dword ptr [ebp-8],7FFF
>00428384    jg          004283A2
 00428386    mov         dl,3
 00428388    mov         eax,dword ptr [ebp-4]
 0042838B    call        TWriter.WriteValue
 00428390    lea         edx,[ebp-8]
 00428393    mov         ecx,2
 00428398    mov         eax,dword ptr [ebp-4]
 0042839B    call        TWriter.Write
>004283A0    jmp         004283BC
 004283A2    mov         dl,4
 004283A4    mov         eax,dword ptr [ebp-4]
 004283A7    call        TWriter.WriteValue
 004283AC    lea         edx,[ebp-8]
 004283AF    mov         ecx,4
 004283B4    mov         eax,dword ptr [ebp-4]
 004283B7    call        TWriter.Write
 004283BC    pop         ecx
 004283BD    pop         ecx
 004283BE    pop         ebp
 004283BF    ret
*}
end;

//004283C0
procedure TWriter.WriteInteger(Value:Longint);
begin
{*
 004283C0    push        ebp
 004283C1    mov         ebp,esp
 004283C3    push        ecx
 004283C4    mov         dword ptr [ebp-4],eax
 004283C7    cmp         dword ptr [ebp+0C],0FFFFFFFF
>004283CB    jne         004283D8
 004283CD    cmp         dword ptr [ebp+8],80000000
>004283D4    jb          004283FC
>004283D6    jmp         004283DA
>004283D8    jl          004283FC
 004283DA    cmp         dword ptr [ebp+0C],0
>004283DE    jne         004283EB
 004283E0    cmp         dword ptr [ebp+8],7FFFFFFF
>004283E7    ja          004283FC
>004283E9    jmp         004283ED
>004283EB    jg          004283FC
 004283ED    mov         eax,dword ptr [ebp+8]
 004283F0    mov         edx,eax
 004283F2    mov         eax,dword ptr [ebp-4]
 004283F5    call        00428340
>004283FA    jmp         00428416
 004283FC    mov         dl,13
 004283FE    mov         eax,dword ptr [ebp-4]
 00428401    call        TWriter.WriteValue
 00428406    lea         edx,[ebp+8]
 00428409    mov         ecx,8
 0042840E    mov         eax,dword ptr [ebp-4]
 00428411    call        TWriter.Write
 00428416    pop         ecx
 00428417    pop         ebp
 00428418    ret         8
*}
end;

//0042841C
procedure sub_0042841C(?:TWriter);
begin
{*
 0042841C    push        ebp
 0042841D    mov         ebp,esp
 0042841F    push        ecx
 00428420    mov         dword ptr [ebp-4],eax
 00428423    mov         dl,1
 00428425    mov         eax,dword ptr [ebp-4]
 00428428    call        TWriter.WriteValue
 0042842D    pop         ecx
 0042842E    pop         ebp
 0042842F    ret
*}
end;

//00428430
procedure sub_00428430(?:TWriter);
begin
{*
 00428430    push        ebp
 00428431    mov         ebp,esp
 00428433    push        ecx
 00428434    mov         dword ptr [ebp-4],eax
 00428437    xor         edx,edx
 00428439    mov         eax,dword ptr [ebp-4]
 0042843C    call        TWriter.WriteValue
 00428441    pop         ecx
 00428442    pop         ebp
 00428443    ret
*}
end;

//00428444
{*procedure sub_00428444(?:TWriter; ?:?; ?:Integer);
begin
 00428444    push        ebp
 00428445    mov         ebp,esp
 00428447    add         esp,0FFFFFFF0
 0042844A    mov         dword ptr [ebp-0C],ecx
 0042844D    mov         byte ptr [ebp-5],dl
 00428450    mov         dword ptr [ebp-4],eax
 00428453    mov         al,[0042848C];0x0 gvar_0042848C
 00428458    cmp         al,byte ptr [ebp-5]
>0042845B    je          00428486
 0042845D    mov         al,byte ptr [ebp-5]
 00428460    or          al,0F0
 00428462    mov         byte ptr [ebp-0D],al
 00428465    lea         edx,[ebp-0D]
 00428468    mov         ecx,1
 0042846D    mov         eax,dword ptr [ebp-4]
 00428470    call        TWriter.Write
 00428475    test        byte ptr [ebp-5],2
>00428479    je          00428486
 0042847B    mov         edx,dword ptr [ebp-0C]
 0042847E    mov         eax,dword ptr [ebp-4]
 00428481    call        00428340
 00428486    mov         esp,ebp
 00428488    pop         ebp
 00428489    ret
end;*}

//00428490
procedure TWriter.WriteProperties(Instance:TPersistent);
begin
{*
 00428490    push        ebp
 00428491    mov         ebp,esp
 00428493    add         esp,0FFFFFFE4
 00428496    mov         dword ptr [ebp-8],edx
 00428499    mov         dword ptr [ebp-4],eax
 0042849C    mov         eax,dword ptr [ebp-8]
 0042849F    mov         eax,dword ptr [eax]
 004284A1    call        004044E0
 004284A6    call        GetTypeData
 004284AB    movsx       eax,word ptr [eax+8]
 004284AF    mov         dword ptr [ebp-10],eax
 004284B2    cmp         dword ptr [ebp-10],0
>004284B6    jle         00428557
 004284BC    mov         eax,dword ptr [ebp-10]
 004284BF    shl         eax,2
 004284C2    call        @GetMem
 004284C7    mov         dword ptr [ebp-18],eax
 004284CA    xor         eax,eax
 004284CC    push        ebp
 004284CD    push        428550
 004284D2    push        dword ptr fs:[eax]
 004284D5    mov         dword ptr fs:[eax],esp
 004284D8    mov         eax,dword ptr [ebp-8]
 004284DB    mov         eax,dword ptr [eax]
 004284DD    call        004044E0
 004284E2    mov         edx,dword ptr [ebp-18]
 004284E5    call        GetPropInfos
 004284EA    mov         eax,dword ptr [ebp-10]
 004284ED    dec         eax
 004284EE    test        eax,eax
>004284F0    jl          00428534
 004284F2    inc         eax
 004284F3    mov         dword ptr [ebp-1C],eax
 004284F6    mov         dword ptr [ebp-0C],0
 004284FD    mov         eax,dword ptr [ebp-18]
 00428500    mov         edx,dword ptr [ebp-0C]
 00428503    mov         eax,dword ptr [eax+edx*4]
 00428506    mov         dword ptr [ebp-14],eax
 00428509    cmp         dword ptr [ebp-14],0
>0042850D    je          00428534
 0042850F    mov         edx,dword ptr [ebp-14]
 00428512    mov         eax,dword ptr [ebp-8]
 00428515    call        IsStoredProp
 0042851A    test        al,al
>0042851C    je          0042852C
 0042851E    mov         ecx,dword ptr [ebp-14]
 00428521    mov         edx,dword ptr [ebp-8]
 00428524    mov         eax,dword ptr [ebp-4]
 00428527    call        TWriter.WriteProperty
 0042852C    inc         dword ptr [ebp-0C]
 0042852F    dec         dword ptr [ebp-1C]
>00428532    jne         004284FD
 00428534    xor         eax,eax
 00428536    pop         edx
 00428537    pop         ecx
 00428538    pop         ecx
 00428539    mov         dword ptr fs:[eax],edx
 0042853C    push        428557
 00428541    mov         edx,dword ptr [ebp-10]
 00428544    shl         edx,2
 00428547    mov         eax,dword ptr [ebp-18]
 0042854A    call        @FreeMem
 0042854F    ret
>00428550    jmp         @HandleFinally
>00428555    jmp         00428541
 00428557    mov         edx,dword ptr [ebp-4]
 0042855A    mov         eax,dword ptr [ebp-8]
 0042855D    mov         ecx,dword ptr [eax]
 0042855F    call        dword ptr [ecx+4]
 00428562    mov         esp,ebp
 00428564    pop         ebp
 00428565    ret
*}
end;

//00428568
function AncestorIsValid(Ancestor:TPersistent; Root:TComponent; RootAncestor:TComponent):Boolean;
begin
{*
 00428568    push        ebp
 00428569    mov         ebp,esp
 0042856B    add         esp,0FFFFFFF0
 0042856E    mov         dword ptr [ebp-0C],ecx
 00428571    mov         dword ptr [ebp-8],edx
 00428574    mov         dword ptr [ebp-4],eax
 00428577    cmp         dword ptr [ebp-4],0
>0042857B    je          0042859B
 0042857D    cmp         dword ptr [ebp-0C],0
>00428581    je          0042859B
 00428583    mov         eax,dword ptr [ebp-0C]
 00428586    call        TObject.ClassType
 0042858B    mov         edx,eax
 0042858D    mov         eax,dword ptr [ebp-8]
 00428590    mov         eax,dword ptr [eax]
 00428592    call        TObject.InheritsFrom
 00428597    test        al,al
>00428599    jne         0042859F
 0042859B    xor         eax,eax
>0042859D    jmp         004285A1
 0042859F    mov         al,1
 004285A1    mov         byte ptr [ebp-0D],al
 004285A4    mov         al,byte ptr [ebp-0D]
 004285A7    mov         esp,ebp
 004285A9    pop         ebp
 004285AA    ret
*}
end;

//004285AC
{*function sub_004285AC(?:?):?;
begin
 004285AC    push        ebp
 004285AD    mov         ebp,esp
 004285AF    add         esp,0FFFFFFF4
 004285B2    mov         eax,dword ptr [ebp+8]
 004285B5    mov         edx,dword ptr [eax-8]
 004285B8    mov         eax,dword ptr [ebp+8]
 004285BB    mov         eax,dword ptr [eax-4]
 004285BE    call        GetOrdProp
 004285C3    mov         dword ptr [ebp-8],eax
 004285C6    mov         eax,dword ptr [ebp+8]
 004285C9    cmp         byte ptr [eax-9],0
>004285CD    je          004285E9
 004285CF    mov         eax,dword ptr [ebp+8]
 004285D2    mov         edx,dword ptr [eax-8]
 004285D5    mov         eax,dword ptr [ebp+8]
 004285D8    mov         eax,dword ptr [eax-10]
 004285DB    call        GetOrdProp
 004285E0    cmp         eax,dword ptr [ebp-8]
 004285E3    sete        byte ptr [ebp-1]
>004285E7    jmp         0042860F
 004285E9    mov         eax,dword ptr [ebp+8]
 004285EC    mov         eax,dword ptr [eax-8]
 004285EF    mov         eax,dword ptr [eax+14]
 004285F2    mov         dword ptr [ebp-0C],eax
 004285F5    cmp         dword ptr [ebp-0C],80000000
>004285FC    je          00428606
 004285FE    mov         eax,dword ptr [ebp-8]
 00428601    cmp         eax,dword ptr [ebp-0C]
>00428604    je          0042860A
 00428606    xor         eax,eax
>00428608    jmp         0042860C
 0042860A    mov         al,1
 0042860C    mov         byte ptr [ebp-1],al
 0042860F    mov         al,byte ptr [ebp-1]
 00428612    mov         esp,ebp
 00428614    pop         ebp
 00428615    ret
end;*}

//00428618
{*function sub_00428618(?:?):?;
begin
 00428618    push        ebp
 00428619    mov         ebp,esp
 0042861B    add         esp,0FFFFFFF0
 0042861E    mov         eax,dword ptr [ebp+8]
 00428621    mov         edx,dword ptr [eax-8]
 00428624    mov         eax,dword ptr [ebp+8]
 00428627    mov         eax,dword ptr [eax-4]
 0042862A    call        GetFloatProp
 0042862F    fstp        tbyte ptr [ebp-10]
 00428632    wait
 00428633    mov         eax,dword ptr [ebp+8]
 00428636    cmp         byte ptr [eax-9],0
>0042863A    je          0042865B
 0042863C    mov         eax,dword ptr [ebp+8]
 0042863F    mov         edx,dword ptr [eax-8]
 00428642    mov         eax,dword ptr [ebp+8]
 00428645    mov         eax,dword ptr [eax-10]
 00428648    call        GetFloatProp
 0042864D    fld         tbyte ptr [ebp-10]
 00428650    fcompp
 00428652    fnstsw      al
 00428654    sahf
 00428655    sete        byte ptr [ebp-1]
>00428659    jmp         0042866B
 0042865B    fld         tbyte ptr [ebp-10]
 0042865E    fcomp       dword ptr ds:[428674];0:Single
 00428664    fnstsw      al
 00428666    sahf
 00428667    sete        byte ptr [ebp-1]
 0042866B    mov         al,byte ptr [ebp-1]
 0042866E    mov         esp,ebp
 00428670    pop         ebp
 00428671    ret
end;*}

//00428678
{*function sub_00428678(?:?):?;
begin
 00428678    push        ebp
 00428679    mov         ebp,esp
 0042867B    add         esp,0FFFFFFF0
 0042867E    mov         eax,dword ptr [ebp+8]
 00428681    mov         edx,dword ptr [eax-8]
 00428684    mov         eax,dword ptr [ebp+8]
 00428687    mov         eax,dword ptr [eax-4]
 0042868A    call        GetInt64Prop
 0042868F    mov         dword ptr [ebp-10],eax
 00428692    mov         dword ptr [ebp-0C],edx
 00428695    mov         eax,dword ptr [ebp+8]
 00428698    cmp         byte ptr [eax-9],0
>0042869C    je          004286BF
 0042869E    mov         eax,dword ptr [ebp+8]
 004286A1    mov         edx,dword ptr [eax-8]
 004286A4    mov         eax,dword ptr [ebp+8]
 004286A7    mov         eax,dword ptr [eax-10]
 004286AA    call        GetInt64Prop
 004286AF    cmp         edx,dword ptr [ebp-0C]
>004286B2    jne         004286B7
 004286B4    cmp         eax,dword ptr [ebp-10]
 004286B7    sete        al
 004286BA    mov         byte ptr [ebp-1],al
>004286BD    jmp         004286CF
 004286BF    cmp         dword ptr [ebp-0C],0
>004286C3    jne         004286C9
 004286C5    cmp         dword ptr [ebp-10],0
 004286C9    sete        al
 004286CC    mov         byte ptr [ebp-1],al
 004286CF    mov         al,byte ptr [ebp-1]
 004286D2    mov         esp,ebp
 004286D4    pop         ebp
 004286D5    ret
end;*}

//004286D8
{*function sub_004286D8(?:?):?;
begin
 004286D8    push        ebp
 004286D9    mov         ebp,esp
 004286DB    push        0
 004286DD    push        0
 004286DF    push        0
 004286E1    xor         eax,eax
 004286E3    push        ebp
 004286E4    push        42875A
 004286E9    push        dword ptr fs:[eax]
 004286EC    mov         dword ptr fs:[eax],esp
 004286EF    lea         ecx,[ebp-8]
 004286F2    mov         eax,dword ptr [ebp+8]
 004286F5    mov         edx,dword ptr [eax-8]
 004286F8    mov         eax,dword ptr [ebp+8]
 004286FB    mov         eax,dword ptr [eax-4]
 004286FE    call        GetWideStrProp
 00428703    mov         eax,dword ptr [ebp+8]
 00428706    cmp         byte ptr [eax-9],0
>0042870A    je          00428731
 0042870C    lea         ecx,[ebp-0C]
 0042870F    mov         eax,dword ptr [ebp+8]
 00428712    mov         edx,dword ptr [eax-8]
 00428715    mov         eax,dword ptr [ebp+8]
 00428718    mov         eax,dword ptr [eax-10]
 0042871B    call        GetWideStrProp
 00428720    mov         edx,dword ptr [ebp-0C]
 00428723    mov         eax,dword ptr [ebp-8]
 00428726    call        @WStrCmp
 0042872B    sete        byte ptr [ebp-1]
>0042872F    jmp         0042873F
 00428731    mov         eax,dword ptr [ebp-8]
 00428734    xor         edx,edx
 00428736    call        @WStrCmp
 0042873B    sete        byte ptr [ebp-1]
 0042873F    xor         eax,eax
 00428741    pop         edx
 00428742    pop         ecx
 00428743    pop         ecx
 00428744    mov         dword ptr fs:[eax],edx
 00428747    push        428761
 0042874C    lea         eax,[ebp-0C]
 0042874F    mov         edx,2
 00428754    call        @WStrArrayClr
 00428759    ret
>0042875A    jmp         @HandleFinally
>0042875F    jmp         0042874C
 00428761    mov         al,byte ptr [ebp-1]
 00428764    mov         esp,ebp
 00428766    pop         ebp
 00428767    ret
end;*}

//00428768
{*function sub_00428768(?:Longint; ?:?; ?:?):?;
begin
 00428768    push        ebp
 00428769    mov         ebp,esp
 0042876B    add         esp,0FFFFFFF4
 0042876E    mov         dword ptr [ebp-8],edx
 00428771    mov         dword ptr [ebp-4],eax
 00428774    cmp         dword ptr [ebp-4],0
>00428778    je          004287B1
 0042877A    mov         eax,dword ptr [ebp+8]
 0042877D    mov         eax,dword ptr [eax-14]
 00428780    mov         edx,dword ptr [ebp-4]
 00428783    cmp         eax,dword ptr [edx+4]
>00428786    jne         004287B1
 00428788    cmp         dword ptr [ebp-8],0
>0042878C    je          004287B1
 0042878E    mov         eax,dword ptr [ebp+8]
 00428791    mov         eax,dword ptr [eax-18]
 00428794    mov         edx,dword ptr [ebp-8]
 00428797    cmp         eax,dword ptr [edx+4]
>0042879A    jne         004287B1
 0042879C    mov         eax,dword ptr [ebp-8]
 0042879F    mov         edx,dword ptr [eax+8]
 004287A2    mov         eax,dword ptr [ebp-4]
 004287A5    mov         eax,dword ptr [eax+8]
 004287A8    call        SameText
 004287AD    test        al,al
>004287AF    jne         004287B5
 004287B1    xor         eax,eax
>004287B3    jmp         004287B7
 004287B5    mov         al,1
 004287B7    mov         byte ptr [ebp-9],al
 004287BA    mov         al,byte ptr [ebp-9]
 004287BD    mov         esp,ebp
 004287BF    pop         ebp
 004287C0    ret
end;*}

//004287C4
{*function sub_004287C4(?:?):?;
begin
 004287C4    push        ebp
 004287C5    mov         ebp,esp
 004287C7    add         esp,0FFFFFFF8
 004287CA    xor         eax,eax
 004287CC    mov         dword ptr [ebp-8],eax
 004287CF    mov         eax,dword ptr [ebp+8]
 004287D2    mov         eax,dword ptr [eax+8]
 004287D5    cmp         byte ptr [eax-9],0
>004287D9    je          00428818
 004287DB    mov         eax,dword ptr [ebp+8]
 004287DE    mov         eax,dword ptr [eax+8]
 004287E1    mov         edx,dword ptr [eax-8]
 004287E4    mov         eax,dword ptr [ebp+8]
 004287E7    mov         eax,dword ptr [eax+8]
 004287EA    mov         eax,dword ptr [eax-10]
 004287ED    call        GetOrdProp
 004287F2    mov         dword ptr [ebp-8],eax
 004287F5    mov         eax,dword ptr [ebp+8]
 004287F8    mov         eax,dword ptr [eax+8]
 004287FB    push        eax
 004287FC    mov         eax,dword ptr [ebp+8]
 004287FF    mov         edx,dword ptr [eax-4]
 00428802    mov         eax,dword ptr [ebp-8]
 00428805    call        00428768
 0042880A    pop         ecx
 0042880B    test        al,al
>0042880D    je          00428818
 0042880F    mov         eax,dword ptr [ebp+8]
 00428812    mov         eax,dword ptr [eax-4]
 00428815    mov         dword ptr [ebp-8],eax
 00428818    mov         eax,dword ptr [ebp+8]
 0042881B    mov         eax,dword ptr [eax-4]
 0042881E    cmp         eax,dword ptr [ebp-8]
 00428821    sete        byte ptr [ebp-1]
 00428825    mov         al,byte ptr [ebp-1]
 00428828    pop         ecx
 00428829    pop         ecx
 0042882A    pop         ebp
 0042882B    ret
end;*}

//0042882C
{*function sub_0042882C(?:?):?;
begin
 0042882C    push        ebp
 0042882D    mov         ebp,esp
 0042882F    add         esp,0FFFFFFF8
 00428832    mov         byte ptr [ebp-5],1
 00428836    mov         eax,dword ptr [ebp+8]
 00428839    mov         edx,dword ptr [eax-8]
 0042883C    mov         eax,dword ptr [ebp+8]
 0042883F    mov         eax,dword ptr [eax-4]
 00428842    call        GetOrdProp
 00428847    mov         dword ptr [ebp-4],eax
 0042884A    cmp         dword ptr [ebp-4],0
>0042884E    jne         00428861
 00428850    push        ebp
 00428851    call        004287C4
 00428856    pop         ecx
 00428857    test        al,al
>00428859    jne         00428861
 0042885B    mov         byte ptr [ebp-5],0
>0042885F    jmp         004288AC
 00428861    mov         eax,dword ptr [ebp-4]
 00428864    mov         edx,dword ptr ds:[41D57C];TPersistent
 0042886A    call        @IsClass
 0042886F    test        al,al
>00428871    je          004288AC
 00428873    mov         eax,dword ptr [ebp-4]
 00428876    mov         edx,dword ptr ds:[41E3B8];TComponent
 0042887C    call        @IsClass
 00428881    test        al,al
>00428883    je          004288A8
 00428885    mov         eax,dword ptr [ebp-4]
 00428888    test        byte ptr [eax+24],4
>0042888C    jne         004288A8
 0042888E    push        ebp
 0042888F    call        004287C4
 00428894    pop         ecx
 00428895    test        al,al
>00428897    jne         004288AC
 00428899    mov         eax,dword ptr [ebp-4]
 0042889C    cmp         dword ptr [eax+8],0
>004288A0    je          004288AC
 004288A2    mov         byte ptr [ebp-5],0
>004288A6    jmp         004288AC
 004288A8    mov         byte ptr [ebp-5],0
 004288AC    mov         al,byte ptr [ebp-5]
 004288AF    pop         ecx
 004288B0    pop         ecx
 004288B1    pop         ebp
 004288B2    ret
end;*}

//004288B4
{*function sub_004288B4(?:?):?;
begin
 004288B4    push        ebp
 004288B5    mov         ebp,esp
 004288B7    push        0
 004288B9    push        0
 004288BB    push        0
 004288BD    xor         eax,eax
 004288BF    push        ebp
 004288C0    push        428966
 004288C5    push        dword ptr fs:[eax]
 004288C8    mov         dword ptr fs:[eax],esp
 004288CB    mov         eax,dword ptr [ebp+8]
 004288CE    cmp         dword ptr [eax-4],0
 004288D2    sete        byte ptr [ebp-1]
 004288D6    mov         eax,dword ptr [ebp+8]
 004288D9    mov         eax,dword ptr [eax+8]
 004288DC    cmp         byte ptr [eax-9],0
>004288E0    je          00428948
 004288E2    lea         ecx,[ebp-8]
 004288E5    mov         eax,dword ptr [ebp+8]
 004288E8    mov         eax,dword ptr [eax+8]
 004288EB    mov         edx,dword ptr [eax-8]
 004288EE    mov         eax,dword ptr [ebp+8]
 004288F1    mov         eax,dword ptr [eax+8]
 004288F4    mov         eax,dword ptr [eax-10]
 004288F7    call        0041CA5C
 004288FC    mov         eax,dword ptr [ebp+8]
 004288FF    mov         eax,dword ptr [eax-4]
 00428902    cmp         eax,dword ptr [ebp-8]
 00428905    sete        byte ptr [ebp-1]
 00428909    cmp         byte ptr [ebp-1],0
>0042890D    jne         00428948
 0042890F    lea         eax,[ebp-0C]
 00428912    call        @IntfClear
 00428917    mov         ecx,eax
 00428919    mov         edx,428974
 0042891E    mov         eax,dword ptr [ebp-8]
 00428921    call        00412854
 00428926    test        al,al
>00428928    je          00428948
 0042892A    mov         eax,dword ptr [ebp+8]
 0042892D    mov         eax,dword ptr [eax+8]
 00428930    push        eax
 00428931    mov         eax,dword ptr [ebp-0C]
 00428934    mov         edx,dword ptr [eax]
 00428936    call        dword ptr [edx+0C]
 00428939    mov         edx,dword ptr [ebp+8]
 0042893C    mov         edx,dword ptr [edx-8]
 0042893F    call        00428768
 00428944    pop         ecx
 00428945    mov         byte ptr [ebp-1],al
 00428948    xor         eax,eax
 0042894A    pop         edx
 0042894B    pop         ecx
 0042894C    pop         ecx
 0042894D    mov         dword ptr fs:[eax],edx
 00428950    push        42896D
 00428955    lea         eax,[ebp-0C]
 00428958    call        @IntfClear
 0042895D    lea         eax,[ebp-8]
 00428960    call        @IntfClear
 00428965    ret
>00428966    jmp         @HandleFinally
>0042896B    jmp         00428955
 0042896D    mov         al,byte ptr [ebp-1]
 00428970    mov         esp,ebp
 00428972    pop         ebp
 00428973    ret
end;*}

//00428984
{*function sub_00428984(?:?):?;
begin
 00428984    push        ebp
 00428985    mov         ebp,esp
 00428987    xor         ecx,ecx
 00428989    push        ecx
 0042898A    push        ecx
 0042898B    push        ecx
 0042898C    push        ecx
 0042898D    push        ecx
 0042898E    xor         eax,eax
 00428990    push        ebp
 00428991    push        428A47
 00428996    push        dword ptr fs:[eax]
 00428999    mov         dword ptr fs:[eax],esp
 0042899C    mov         byte ptr [ebp-9],1
 004289A0    lea         ecx,[ebp-4]
 004289A3    mov         eax,dword ptr [ebp+8]
 004289A6    mov         edx,dword ptr [eax-8]
 004289A9    mov         eax,dword ptr [ebp+8]
 004289AC    mov         eax,dword ptr [eax-4]
 004289AF    call        0041CA5C
 004289B4    cmp         dword ptr [ebp-4],0
>004289B8    je          004289D5
 004289BA    lea         eax,[ebp-10]
 004289BD    call        @IntfClear
 004289C2    mov         ecx,eax
 004289C4    mov         edx,428A58
 004289C9    mov         eax,dword ptr [ebp-4]
 004289CC    call        00412854
 004289D1    test        al,al
>004289D3    jne         004289FE
 004289D5    mov         eax,dword ptr [ebp+8]
 004289D8    cmp         byte ptr [eax-9],0
>004289DC    je          00428A21
 004289DE    lea         ecx,[ebp-14]
 004289E1    mov         eax,dword ptr [ebp+8]
 004289E4    mov         edx,dword ptr [eax-8]
 004289E7    mov         eax,dword ptr [ebp+8]
 004289EA    mov         eax,dword ptr [eax-10]
 004289ED    call        0041CA5C
 004289F2    cmp         dword ptr [ebp-14],0
>004289F6    je          00428A21
 004289F8    mov         byte ptr [ebp-9],0
>004289FC    jmp         00428A21
 004289FE    mov         eax,dword ptr [ebp-10]
 00428A01    mov         edx,dword ptr [eax]
 00428A03    call        dword ptr [edx+0C]
 00428A06    mov         dword ptr [ebp-8],eax
 00428A09    push        ebp
 00428A0A    call        004288B4
 00428A0F    pop         ecx
 00428A10    test        al,al
>00428A12    jne         00428A21
 00428A14    mov         eax,dword ptr [ebp-8]
 00428A17    cmp         dword ptr [eax+8],0
>00428A1B    je          00428A21
 00428A1D    mov         byte ptr [ebp-9],0
 00428A21    xor         eax,eax
 00428A23    pop         edx
 00428A24    pop         ecx
 00428A25    pop         ecx
 00428A26    mov         dword ptr fs:[eax],edx
 00428A29    push        428A4E
 00428A2E    lea         eax,[ebp-14]
 00428A31    call        @IntfClear
 00428A36    lea         eax,[ebp-10]
 00428A39    call        @IntfClear
 00428A3E    lea         eax,[ebp-4]
 00428A41    call        @IntfClear
 00428A46    ret
>00428A47    jmp         @HandleFinally
>00428A4C    jmp         00428A2E
 00428A4E    mov         al,byte ptr [ebp-9]
 00428A51    mov         esp,ebp
 00428A53    pop         ebp
 00428A54    ret
end;*}

//00428A68
{*function sub_00428A68(?:?):?;
begin
 00428A68    push        ebp
 00428A69    mov         ebp,esp
 00428A6B    add         esp,0FFFFFEE8
 00428A71    lea         ecx,[ebp-0C]
 00428A74    mov         eax,dword ptr [ebp+8]
 00428A77    mov         edx,dword ptr [eax-8]
 00428A7A    mov         eax,dword ptr [ebp+8]
 00428A7D    mov         eax,dword ptr [eax-4]
 00428A80    call        GetMethodProp
 00428A85    xor         eax,eax
 00428A87    mov         dword ptr [ebp-10],eax
 00428A8A    mov         eax,dword ptr [ebp+8]
 00428A8D    cmp         byte ptr [eax-9],0
>00428A91    je          00428AAD
 00428A93    lea         ecx,[ebp-18]
 00428A96    mov         eax,dword ptr [ebp+8]
 00428A99    mov         edx,dword ptr [eax-8]
 00428A9C    mov         eax,dword ptr [ebp+8]
 00428A9F    mov         eax,dword ptr [eax-10]
 00428AA2    call        GetMethodProp
 00428AA7    mov         eax,dword ptr [ebp-18]
 00428AAA    mov         dword ptr [ebp-10],eax
 00428AAD    mov         eax,dword ptr [ebp-0C]
 00428AB0    cmp         eax,dword ptr [ebp-10]
>00428AB3    je          00428ADE
 00428AB5    cmp         dword ptr [ebp-0C],0
>00428AB9    je          00428ADA
 00428ABB    lea         ecx,[ebp-118]
 00428AC1    mov         eax,dword ptr [ebp+8]
 00428AC4    mov         eax,dword ptr [eax-1C]
 00428AC7    mov         eax,dword ptr [eax]
 00428AC9    mov         edx,dword ptr [ebp-0C]
 00428ACC    call        TObject.MethodName
 00428AD1    cmp         byte ptr [ebp-118],0
>00428AD8    je          00428ADE
 00428ADA    xor         eax,eax
>00428ADC    jmp         00428AE0
 00428ADE    mov         al,1
 00428AE0    mov         byte ptr [ebp-1],al
 00428AE3    mov         al,byte ptr [ebp-1]
 00428AE6    mov         esp,ebp
 00428AE8    pop         ebp
 00428AE9    ret
end;*}

//00428AEC
{*function sub_00428AEC(?:?):?;
begin
 00428AEC    push        ebp
 00428AED    mov         ebp,esp
 00428AEF    mov         ecx,5
 00428AF4    push        0
 00428AF6    push        0
 00428AF8    dec         ecx
>00428AF9    jne         00428AF4
 00428AFB    xor         eax,eax
 00428AFD    push        ebp
 00428AFE    push        428B76
 00428B03    push        dword ptr fs:[eax]
 00428B06    mov         dword ptr fs:[eax],esp
 00428B09    lea         ecx,[ebp-18]
 00428B0C    mov         eax,dword ptr [ebp+8]
 00428B0F    mov         edx,dword ptr [eax-8]
 00428B12    mov         eax,dword ptr [ebp+8]
 00428B15    mov         eax,dword ptr [eax-4]
 00428B18    call        GetVariantProp
 00428B1D    mov         eax,dword ptr [ebp+8]
 00428B20    cmp         byte ptr [eax-9],0
>00428B24    je          00428B4A
 00428B26    lea         ecx,[ebp-28]
 00428B29    mov         eax,dword ptr [ebp+8]
 00428B2C    mov         edx,dword ptr [eax-8]
 00428B2F    mov         eax,dword ptr [ebp+8]
 00428B32    mov         eax,dword ptr [eax-10]
 00428B35    call        GetVariantProp
 00428B3A    lea         edx,[ebp-28]
 00428B3D    lea         eax,[ebp-18]
 00428B40    call        VarSameValue
 00428B45    mov         byte ptr [ebp-1],al
>00428B48    jmp         00428B55
 00428B4A    lea         eax,[ebp-18]
 00428B4D    call        VarIsClear
 00428B52    mov         byte ptr [ebp-1],al
 00428B55    xor         eax,eax
 00428B57    pop         edx
 00428B58    pop         ecx
 00428B59    pop         ecx
 00428B5A    mov         dword ptr fs:[eax],edx
 00428B5D    push        428B7D
 00428B62    lea         eax,[ebp-28]
 00428B65    mov         edx,dword ptr ds:[4010DC];Variant
 00428B6B    mov         ecx,2
 00428B70    call        @FinalizeArray
 00428B75    ret
>00428B76    jmp         @HandleFinally
>00428B7B    jmp         00428B62
 00428B7D    mov         al,byte ptr [ebp-1]
 00428B80    mov         esp,ebp
 00428B82    pop         ebp
 00428B83    ret
end;*}

//00428B84
function IsDefaultPropertyValue(Instance:TObject; PropInfo:PPropInfo; OnGetLookupInfo:TGetLookupInfoEvent):Boolean;
begin
{*
 00428B84    push        ebp
 00428B85    mov         ebp,esp
 00428B87    add         esp,0FFFFFFDC
 00428B8A    mov         dword ptr [ebp-8],edx
 00428B8D    mov         dword ptr [ebp-4],eax
 00428B90    xor         eax,eax
 00428B92    mov         dword ptr [ebp-10],eax
 00428B95    xor         eax,eax
 00428B97    mov         dword ptr [ebp-18],eax
 00428B9A    xor         eax,eax
 00428B9C    mov         dword ptr [ebp-1C],eax
 00428B9F    xor         eax,eax
 00428BA1    mov         dword ptr [ebp-14],eax
 00428BA4    cmp         word ptr [ebp+0A],0
>00428BA9    je          00428BBF
 00428BAB    lea         eax,[ebp-1C]
 00428BAE    push        eax
 00428BAF    lea         eax,[ebp-14]
 00428BB2    push        eax
 00428BB3    lea         ecx,[ebp-18]
 00428BB6    lea         edx,[ebp-10]
 00428BB9    mov         eax,dword ptr [ebp+0C]
 00428BBC    call        dword ptr [ebp+8]
 00428BBF    mov         ecx,dword ptr [ebp-14]
 00428BC2    mov         edx,dword ptr [ebp-18]
 00428BC5    mov         eax,dword ptr [ebp-10]
 00428BC8    call        AncestorIsValid
 00428BCD    mov         byte ptr [ebp-9],al
 00428BD0    mov         byte ptr [ebp-1D],1
 00428BD4    mov         eax,dword ptr [ebp-8]
 00428BD7    cmp         dword ptr [eax+4],0
>00428BDB    je          00428CEF
 00428BE1    mov         eax,dword ptr [ebp-8]
 00428BE4    cmp         dword ptr [eax+8],0
>00428BE8    jne         00428C2D
 00428BEA    mov         eax,dword ptr [ebp-8]
 00428BED    mov         eax,dword ptr [eax]
 00428BEF    mov         eax,dword ptr [eax]
 00428BF1    cmp         byte ptr [eax],7
>00428BF4    jne         00428CEF
 00428BFA    mov         edx,dword ptr [ebp-8]
 00428BFD    mov         eax,dword ptr [ebp-4]
 00428C00    call        GetOrdProp
 00428C05    mov         edx,dword ptr ds:[41E3B8];TComponent
 00428C0B    call        @IsClass
 00428C10    test        al,al
>00428C12    je          00428CEF
 00428C18    mov         edx,dword ptr [ebp-8]
 00428C1B    mov         eax,dword ptr [ebp-4]
 00428C1E    call        GetOrdProp
 00428C23    test        byte ptr [eax+24],4
>00428C27    je          00428CEF
 00428C2D    mov         eax,dword ptr [ebp-8]
 00428C30    mov         eax,dword ptr [eax]
 00428C32    mov         eax,dword ptr [eax]
 00428C34    mov         dword ptr [ebp-24],eax
 00428C37    mov         eax,dword ptr [ebp-24]
 00428C3A    movzx       eax,byte ptr [eax]
 00428C3D    cmp         eax,10
>00428C40    ja          00428CEF
 00428C46    jmp         dword ptr [eax*4+428C4D]
 00428C46    dd          00428CEF
 00428C46    dd          00428C91
 00428C46    dd          00428C91
 00428C46    dd          00428C91
 00428C46    dd          00428C9D
 00428C46    dd          00428CA9
 00428C46    dd          00428C91
 00428C46    dd          00428CB5
 00428C46    dd          00428CC1
 00428C46    dd          00428CEF
 00428C46    dd          00428CA9
 00428C46    dd          00428CA9
 00428C46    dd          00428CCD
 00428C46    dd          00428CEF
 00428C46    dd          00428CEF
 00428C46    dd          00428CE5
 00428C46    dd          00428CD9
 00428C91    push        ebp
 00428C92    call        004285AC
 00428C97    pop         ecx
 00428C98    mov         byte ptr [ebp-1D],al
>00428C9B    jmp         00428CEF
 00428C9D    push        ebp
 00428C9E    call        00428618
 00428CA3    pop         ecx
 00428CA4    mov         byte ptr [ebp-1D],al
>00428CA7    jmp         00428CEF
 00428CA9    push        ebp
 00428CAA    call        004286D8
 00428CAF    pop         ecx
 00428CB0    mov         byte ptr [ebp-1D],al
>00428CB3    jmp         00428CEF
 00428CB5    push        ebp
 00428CB6    call        0042882C
 00428CBB    pop         ecx
 00428CBC    mov         byte ptr [ebp-1D],al
>00428CBF    jmp         00428CEF
 00428CC1    push        ebp
 00428CC2    call        00428A68
 00428CC7    pop         ecx
 00428CC8    mov         byte ptr [ebp-1D],al
>00428CCB    jmp         00428CEF
 00428CCD    push        ebp
 00428CCE    call        00428AEC
 00428CD3    pop         ecx
 00428CD4    mov         byte ptr [ebp-1D],al
>00428CD7    jmp         00428CEF
 00428CD9    push        ebp
 00428CDA    call        00428678
 00428CDF    pop         ecx
 00428CE0    mov         byte ptr [ebp-1D],al
>00428CE3    jmp         00428CEF
 00428CE5    push        ebp
 00428CE6    call        00428984
 00428CEB    pop         ecx
 00428CEC    mov         byte ptr [ebp-1D],al
 00428CEF    mov         al,byte ptr [ebp-1D]
 00428CF2    mov         esp,ebp
 00428CF4    pop         ebp
 00428CF5    ret         8
*}
end;

//00428CF8
procedure WritePropPath;
begin
{*
 00428CF8    push        ebp
 00428CF9    mov         ebp,esp
 00428CFB    push        0
 00428CFD    xor         eax,eax
 00428CFF    push        ebp
 00428D00    push        428D40
 00428D05    push        dword ptr fs:[eax]
 00428D08    mov         dword ptr fs:[eax],esp
 00428D0B    lea         eax,[ebp-4]
 00428D0E    mov         edx,dword ptr [ebp+8]
 00428D11    mov         edx,dword ptr [edx-8]
 00428D14    add         edx,1A
 00428D17    call        @LStrFromString
 00428D1C    mov         edx,dword ptr [ebp-4]
 00428D1F    mov         eax,dword ptr [ebp+8]
 00428D22    mov         eax,dword ptr [eax-4]
 00428D25    call        TWriter.WritePropName
 00428D2A    xor         eax,eax
 00428D2C    pop         edx
 00428D2D    pop         ecx
 00428D2E    pop         ecx
 00428D2F    mov         dword ptr fs:[eax],edx
 00428D32    push        428D47
 00428D37    lea         eax,[ebp-4]
 00428D3A    call        @LStrClr
 00428D3F    ret
>00428D40    jmp         @HandleFinally
>00428D45    jmp         00428D37
 00428D47    pop         ecx
 00428D48    pop         ebp
 00428D49    ret
*}
end;

//00428D4C
{*procedure sub_00428D4C(?:?; ?:?);
begin
 00428D4C    push        ebp
 00428D4D    mov         ebp,esp
 00428D4F    add         esp,0FFFFFFF0
 00428D52    xor         edx,edx
 00428D54    mov         dword ptr [ebp-10],edx
 00428D57    mov         dword ptr [ebp-4],eax
 00428D5A    xor         eax,eax
 00428D5C    push        ebp
 00428D5D    push        428DE3
 00428D62    push        dword ptr fs:[eax]
 00428D65    mov         dword ptr fs:[eax],esp
 00428D68    mov         eax,dword ptr [ebp+8]
 00428D6B    mov         eax,dword ptr [eax-0C]
 00428D6E    call        GetTypeData
 00428D73    mov         eax,dword ptr [eax+1]
 00428D76    mov         eax,dword ptr [eax]
 00428D78    mov         dword ptr [ebp-0C],eax
 00428D7B    mov         eax,dword ptr [ebp+8]
 00428D7E    mov         eax,dword ptr [eax-4]
 00428D81    mov         dl,0B
 00428D83    call        TWriter.WriteValue
 00428D88    xor         eax,eax
 00428D8A    mov         dword ptr [ebp-8],eax
 00428D8D    mov         eax,dword ptr [ebp-8]
 00428D90    cmp         eax,1F
>00428D93    ja          00428D99
 00428D95    bt          dword ptr [ebp-4],eax
>00428D99    jae         00428DB7
 00428D9B    lea         ecx,[ebp-10]
 00428D9E    mov         edx,dword ptr [ebp-8]
 00428DA1    mov         eax,dword ptr [ebp-0C]
 00428DA4    call        0041B678
 00428DA9    mov         edx,dword ptr [ebp-10]
 00428DAC    mov         eax,dword ptr [ebp+8]
 00428DAF    mov         eax,dword ptr [eax-4]
 00428DB2    call        00429C20
 00428DB7    inc         dword ptr [ebp-8]
 00428DBA    cmp         dword ptr [ebp-8],20
>00428DBE    jne         00428D8D
 00428DC0    mov         eax,dword ptr [ebp+8]
 00428DC3    mov         eax,dword ptr [eax-4]
 00428DC6    xor         edx,edx
 00428DC8    call        00429C20
 00428DCD    xor         eax,eax
 00428DCF    pop         edx
 00428DD0    pop         ecx
 00428DD1    pop         ecx
 00428DD2    mov         dword ptr fs:[eax],edx
 00428DD5    push        428DEA
 00428DDA    lea         eax,[ebp-10]
 00428DDD    call        @LStrClr
 00428DE2    ret
>00428DE3    jmp         @HandleFinally
>00428DE8    jmp         00428DDA
 00428DEA    mov         esp,ebp
 00428DEC    pop         ebp
 00428DED    ret
end;*}

//00428DF0
{*procedure sub_00428DF0(?:?; ?:?; ?:?);
begin
 00428DF0    push        ebp
 00428DF1    mov         ebp,esp
 00428DF3    add         esp,0FFFFFFF0
 00428DF6    xor         ecx,ecx
 00428DF8    mov         dword ptr [ebp-0C],ecx
 00428DFB    mov         dword ptr [ebp-8],edx
 00428DFE    mov         dword ptr [ebp-4],eax
 00428E01    xor         eax,eax
 00428E03    push        ebp
 00428E04    push        428E61
 00428E09    push        dword ptr fs:[eax]
 00428E0C    mov         dword ptr fs:[eax],esp
 00428E0F    mov         eax,dword ptr [ebp-4]
 00428E12    call        0041F848
 00428E17    mov         dword ptr [ebp-10],eax
 00428E1A    cmp         dword ptr [ebp-10],0
>00428E1E    je          00428E3D
 00428E20    lea         edx,[ebp-0C]
 00428E23    mov         eax,dword ptr [ebp-8]
 00428E26    call        dword ptr [ebp-10]
 00428E29    test        al,al
>00428E2B    je          00428E3D
 00428E2D    mov         eax,dword ptr [ebp+8]
 00428E30    mov         eax,dword ptr [eax-4]
 00428E33    mov         edx,dword ptr [ebp-0C]
 00428E36    call        TWriter.WriteIdent
>00428E3B    jmp         00428E4B
 00428E3D    mov         eax,dword ptr [ebp+8]
 00428E40    mov         eax,dword ptr [eax-4]
 00428E43    mov         edx,dword ptr [ebp-8]
 00428E46    call        00428340
 00428E4B    xor         eax,eax
 00428E4D    pop         edx
 00428E4E    pop         ecx
 00428E4F    pop         ecx
 00428E50    mov         dword ptr fs:[eax],edx
 00428E53    push        428E68
 00428E58    lea         eax,[ebp-0C]
 00428E5B    call        @LStrClr
 00428E60    ret
>00428E61    jmp         @HandleFinally
>00428E66    jmp         00428E58
 00428E68    mov         esp,ebp
 00428E6A    pop         ebp
 00428E6B    ret
end;*}

//00428E6C
procedure WriteCollectionProp(Collection:TCollection);
begin
{*
 00428E6C    push        ebp
 00428E6D    mov         ebp,esp
 00428E6F    add         esp,0FFFFFFF8
 00428E72    xor         edx,edx
 00428E74    mov         dword ptr [ebp-8],edx
 00428E77    mov         dword ptr [ebp-4],eax
 00428E7A    xor         eax,eax
 00428E7C    push        ebp
 00428E7D    push        428F09
 00428E82    push        dword ptr fs:[eax]
 00428E85    mov         dword ptr fs:[eax],esp
 00428E88    mov         eax,dword ptr [ebp+8]
 00428E8B    push        eax
 00428E8C    call        WritePropPath
 00428E91    pop         ecx
 00428E92    lea         eax,[ebp-8]
 00428E95    mov         edx,dword ptr [ebp+8]
 00428E98    mov         edx,dword ptr [edx-4]
 00428E9B    mov         edx,dword ptr [edx+2C]
 00428E9E    call        @LStrLAsg
 00428EA3    xor         eax,eax
 00428EA5    push        ebp
 00428EA6    push        428EEC
 00428EAB    push        dword ptr fs:[eax]
 00428EAE    mov         dword ptr fs:[eax],esp
 00428EB1    mov         eax,dword ptr [ebp+8]
 00428EB4    mov         eax,dword ptr [eax-4]
 00428EB7    add         eax,2C
 00428EBA    call        @LStrClr
 00428EBF    mov         eax,dword ptr [ebp+8]
 00428EC2    mov         eax,dword ptr [eax-4]
 00428EC5    mov         edx,dword ptr [ebp-4]
 00428EC8    call        00427AEC
 00428ECD    xor         eax,eax
 00428ECF    pop         edx
 00428ED0    pop         ecx
 00428ED1    pop         ecx
 00428ED2    mov         dword ptr fs:[eax],edx
 00428ED5    push        428EF3
 00428EDA    mov         eax,dword ptr [ebp+8]
 00428EDD    mov         eax,dword ptr [eax-4]
 00428EE0    add         eax,2C
 00428EE3    mov         edx,dword ptr [ebp-8]
 00428EE6    call        @LStrAsg
 00428EEB    ret
>00428EEC    jmp         @HandleFinally
>00428EF1    jmp         00428EDA
 00428EF3    xor         eax,eax
 00428EF5    pop         edx
 00428EF6    pop         ecx
 00428EF7    pop         ecx
 00428EF8    mov         dword ptr fs:[eax],edx
 00428EFB    push        428F10
 00428F00    lea         eax,[ebp-8]
 00428F03    call        @LStrClr
 00428F08    ret
>00428F09    jmp         @HandleFinally
>00428F0E    jmp         00428F00
 00428F10    pop         ecx
 00428F11    pop         ecx
 00428F12    pop         ebp
 00428F13    ret
*}
end;

//00428F14
procedure WriteOrdProp;
begin
{*
 00428F14    push        ebp
 00428F15    mov         ebp,esp
 00428F17    add         esp,0FFFFFFF8
 00428F1A    xor         eax,eax
 00428F1C    mov         dword ptr [ebp-8],eax
 00428F1F    xor         eax,eax
 00428F21    push        ebp
 00428F22    push        428FD2
 00428F27    push        dword ptr fs:[eax]
 00428F2A    mov         dword ptr fs:[eax],esp
 00428F2D    mov         eax,dword ptr [ebp+8]
 00428F30    mov         edx,dword ptr [eax-8]
 00428F33    mov         eax,dword ptr [ebp+8]
 00428F36    mov         eax,dword ptr [eax-10]
 00428F39    call        GetOrdProp
 00428F3E    mov         dword ptr [ebp-4],eax
 00428F41    mov         eax,dword ptr [ebp+8]
 00428F44    push        eax
 00428F45    call        WritePropPath
 00428F4A    pop         ecx
 00428F4B    mov         eax,dword ptr [ebp+8]
 00428F4E    mov         eax,dword ptr [eax-0C]
 00428F51    mov         al,byte ptr [eax]
 00428F53    dec         al
>00428F55    je          00428F65
 00428F57    dec         al
>00428F59    je          00428F7E
 00428F5B    dec         al
>00428F5D    je          00428F9D
 00428F5F    sub         al,3
>00428F61    je          00428F8E
>00428F63    jmp         00428FBC
 00428F65    mov         eax,dword ptr [ebp+8]
 00428F68    push        eax
 00428F69    mov         eax,dword ptr [ebp+8]
 00428F6C    mov         eax,dword ptr [eax-8]
 00428F6F    mov         eax,dword ptr [eax]
 00428F71    mov         eax,dword ptr [eax]
 00428F73    mov         edx,dword ptr [ebp-4]
 00428F76    call        00428DF0
 00428F7B    pop         ecx
>00428F7C    jmp         00428FBC
 00428F7E    mov         edx,dword ptr [ebp-4]
 00428F81    mov         eax,dword ptr [ebp+8]
 00428F84    mov         eax,dword ptr [eax-4]
 00428F87    call        00427A94
>00428F8C    jmp         00428FBC
 00428F8E    mov         eax,dword ptr [ebp+8]
 00428F91    push        eax
 00428F92    mov         eax,dword ptr [ebp-4]
 00428F95    call        00428D4C
 00428F9A    pop         ecx
>00428F9B    jmp         00428FBC
 00428F9D    lea         ecx,[ebp-8]
 00428FA0    mov         eax,dword ptr [ebp+8]
 00428FA3    mov         eax,dword ptr [eax-0C]
 00428FA6    mov         edx,dword ptr [ebp-4]
 00428FA9    call        0041B678
 00428FAE    mov         edx,dword ptr [ebp-8]
 00428FB1    mov         eax,dword ptr [ebp+8]
 00428FB4    mov         eax,dword ptr [eax-4]
 00428FB7    call        TWriter.WriteIdent
 00428FBC    xor         eax,eax
 00428FBE    pop         edx
 00428FBF    pop         ecx
 00428FC0    pop         ecx
 00428FC1    mov         dword ptr fs:[eax],edx
 00428FC4    push        428FD9
 00428FC9    lea         eax,[ebp-8]
 00428FCC    call        @LStrClr
 00428FD1    ret
>00428FD2    jmp         @HandleFinally
>00428FD7    jmp         00428FC9
 00428FD9    pop         ecx
 00428FDA    pop         ecx
 00428FDB    pop         ebp
 00428FDC    ret
*}
end;

//00428FE0
procedure WriteFloatProp;
begin
{*
 00428FE0    push        ebp
 00428FE1    mov         ebp,esp
 00428FE3    add         esp,0FFFFFFF0
 00428FE6    mov         eax,dword ptr [ebp+8]
 00428FE9    mov         edx,dword ptr [eax-8]
 00428FEC    mov         eax,dword ptr [ebp+8]
 00428FEF    mov         eax,dword ptr [eax-10]
 00428FF2    call        GetFloatProp
 00428FF7    fstp        tbyte ptr [ebp-10]
 00428FFA    wait
 00428FFB    mov         eax,dword ptr [ebp+8]
 00428FFE    push        eax
 00428FFF    call        WritePropPath
 00429004    pop         ecx
 00429005    mov         ax,word ptr [ebp-8]
 00429009    push        eax
 0042900A    push        dword ptr [ebp-0C]
 0042900D    push        dword ptr [ebp-10]
 00429010    mov         eax,dword ptr [ebp+8]
 00429013    mov         eax,dword ptr [eax-4]
 00429016    call        TWriter.WriteFloat
 0042901B    mov         esp,ebp
 0042901D    pop         ebp
 0042901E    ret
*}
end;

//00429020
procedure WriteInt64Prop;
begin
{*
 00429020    push        ebp
 00429021    mov         ebp,esp
 00429023    add         esp,0FFFFFFF8
 00429026    mov         eax,dword ptr [ebp+8]
 00429029    mov         edx,dword ptr [eax-8]
 0042902C    mov         eax,dword ptr [ebp+8]
 0042902F    mov         eax,dword ptr [eax-10]
 00429032    call        GetInt64Prop
 00429037    mov         dword ptr [ebp-8],eax
 0042903A    mov         dword ptr [ebp-4],edx
 0042903D    mov         eax,dword ptr [ebp+8]
 00429040    push        eax
 00429041    call        WritePropPath
 00429046    pop         ecx
 00429047    push        dword ptr [ebp-4]
 0042904A    push        dword ptr [ebp-8]
 0042904D    mov         eax,dword ptr [ebp+8]
 00429050    mov         eax,dword ptr [eax-4]
 00429053    call        TWriter.WriteInteger
 00429058    pop         ecx
 00429059    pop         ecx
 0042905A    pop         ebp
 0042905B    ret
*}
end;

//0042905C
procedure WriteStrProp;
begin
{*
 0042905C    push        ebp
 0042905D    mov         ebp,esp
 0042905F    push        0
 00429061    xor         eax,eax
 00429063    push        ebp
 00429064    push        4290B1
 00429069    push        dword ptr fs:[eax]
 0042906C    mov         dword ptr fs:[eax],esp
 0042906F    lea         ecx,[ebp-4]
 00429072    mov         eax,dword ptr [ebp+8]
 00429075    mov         edx,dword ptr [eax-8]
 00429078    mov         eax,dword ptr [ebp+8]
 0042907B    mov         eax,dword ptr [eax-10]
 0042907E    call        GetWideStrProp
 00429083    mov         eax,dword ptr [ebp+8]
 00429086    push        eax
 00429087    call        WritePropPath
 0042908C    pop         ecx
 0042908D    mov         eax,dword ptr [ebp+8]
 00429090    mov         eax,dword ptr [eax-4]
 00429093    mov         edx,dword ptr [ebp-4]
 00429096    call        TWriter.WriteWideString
 0042909B    xor         eax,eax
 0042909D    pop         edx
 0042909E    pop         ecx
 0042909F    pop         ecx
 004290A0    mov         dword ptr fs:[eax],edx
 004290A3    push        4290B8
 004290A8    lea         eax,[ebp-4]
 004290AB    call        @WStrClr
 004290B0    ret
>004290B1    jmp         @HandleFinally
>004290B6    jmp         004290A8
 004290B8    pop         ecx
 004290B9    pop         ebp
 004290BA    ret
*}
end;

//004290BC
{*function sub_004290BC(?:?; ?:?):?;
begin
 004290BC    push        ebp
 004290BD    mov         ebp,esp
 004290BF    add         esp,0FFFFFFF4
 004290C2    mov         dword ptr [ebp-8],edx
 004290C5    mov         dword ptr [ebp-4],eax
 004290C8    mov         byte ptr [ebp-9],1
 004290CC    cmp         dword ptr [ebp-4],0
>004290D0    je          004290E9
 004290D2    mov         eax,dword ptr [ebp-4]
 004290D5    cmp         eax,dword ptr [ebp-8]
>004290D8    je          004290ED
 004290DA    mov         eax,dword ptr [ebp-4]
 004290DD    mov         eax,dword ptr [eax+4]
 004290E0    mov         dword ptr [ebp-4],eax
 004290E3    cmp         dword ptr [ebp-4],0
>004290E7    jne         004290D2
 004290E9    mov         byte ptr [ebp-9],0
 004290ED    mov         al,byte ptr [ebp-9]
 004290F0    mov         esp,ebp
 004290F2    pop         ebp
 004290F3    ret
end;*}

//004290F4
function GetComponentValue(Component:TComponent):AnsiString;
begin
{*
 004290F4    push        ebp
 004290F5    mov         ebp,esp
 004290F7    add         esp,0FFFFFFF4
 004290FA    xor         ecx,ecx
 004290FC    mov         dword ptr [ebp-0C],ecx
 004290FF    mov         dword ptr [ebp-8],edx
 00429102    mov         dword ptr [ebp-4],eax
 00429105    xor         eax,eax
 00429107    push        ebp
 00429108    push        429225
 0042910D    push        dword ptr fs:[eax]
 00429110    mov         dword ptr fs:[eax],esp
 00429113    mov         eax,dword ptr [ebp+8]
 00429116    mov         eax,dword ptr [eax-4]
 00429119    mov         eax,dword ptr [eax+1C]
 0042911C    mov         edx,dword ptr [ebp-4]
 0042911F    cmp         eax,dword ptr [edx+4]
>00429122    jne         00429137
 00429124    mov         eax,dword ptr [ebp-8]
 00429127    mov         edx,dword ptr [ebp-4]
 0042912A    mov         edx,dword ptr [edx+8]
 0042912D    call        @LStrAsg
>00429132    jmp         0042920F
 00429137    mov         eax,dword ptr [ebp+8]
 0042913A    mov         eax,dword ptr [eax-4]
 0042913D    mov         eax,dword ptr [eax+1C]
 00429140    cmp         eax,dword ptr [ebp-4]
>00429143    jne         00429157
 00429145    mov         eax,dword ptr [ebp-8]
 00429148    mov         edx,429238;'Owner'
 0042914D    call        @LStrAsg
>00429152    jmp         0042920F
 00429157    mov         eax,dword ptr [ebp-4]
 0042915A    cmp         dword ptr [eax+4],0
>0042915E    je          004291E9
 00429164    mov         eax,dword ptr [ebp-4]
 00429167    mov         eax,dword ptr [eax+4]
 0042916A    cmp         dword ptr [eax+8],0
>0042916E    je          004291E9
 00429170    mov         eax,dword ptr [ebp-4]
 00429173    cmp         dword ptr [eax+8],0
>00429177    je          004291E9
 00429179    mov         eax,dword ptr [ebp+8]
 0042917C    push        eax
 0042917D    mov         eax,dword ptr [ebp+8]
 00429180    mov         eax,dword ptr [eax-4]
 00429183    mov         edx,dword ptr [eax+1C]
 00429186    mov         eax,dword ptr [ebp-4]
 00429189    mov         eax,dword ptr [eax+4]
 0042918C    call        004290BC
 00429191    pop         ecx
 00429192    test        al,al
>00429194    je          004291C6
 00429196    mov         eax,dword ptr [ebp+8]
 00429199    push        eax
 0042919A    lea         edx,[ebp-0C]
 0042919D    mov         eax,dword ptr [ebp-4]
 004291A0    mov         eax,dword ptr [eax+4]
 004291A3    call        GetComponentValue
 004291A8    pop         ecx
 004291A9    push        dword ptr [ebp-0C]
 004291AC    push        429248;'.'
 004291B1    mov         eax,dword ptr [ebp-4]
 004291B4    push        dword ptr [eax+8]
 004291B7    mov         eax,dword ptr [ebp-8]
 004291BA    mov         edx,3
 004291BF    call        @LStrCatN
>004291C4    jmp         0042920F
 004291C6    mov         eax,dword ptr [ebp-4]
 004291C9    mov         eax,dword ptr [eax+4]
 004291CC    push        dword ptr [eax+8]
 004291CF    push        429248;'.'
 004291D4    mov         eax,dword ptr [ebp-4]
 004291D7    push        dword ptr [eax+8]
 004291DA    mov         eax,dword ptr [ebp-8]
 004291DD    mov         edx,3
 004291E2    call        @LStrCatN
>004291E7    jmp         0042920F
 004291E9    mov         eax,dword ptr [ebp-4]
 004291EC    cmp         dword ptr [eax+8],0
>004291F0    je          00429207
 004291F2    mov         eax,dword ptr [ebp-8]
 004291F5    mov         ecx,429254;'.Owner'
 004291FA    mov         edx,dword ptr [ebp-4]
 004291FD    mov         edx,dword ptr [edx+8]
 00429200    call        @LStrCat3
>00429205    jmp         0042920F
 00429207    mov         eax,dword ptr [ebp-8]
 0042920A    call        @LStrClr
 0042920F    xor         eax,eax
 00429211    pop         edx
 00429212    pop         ecx
 00429213    pop         ecx
 00429214    mov         dword ptr fs:[eax],edx
 00429217    push        42922C
 0042921C    lea         eax,[ebp-0C]
 0042921F    call        @LStrClr
 00429224    ret
>00429225    jmp         @HandleFinally
>0042922A    jmp         0042921C
 0042922C    mov         esp,ebp
 0042922E    pop         ebp
 0042922F    ret
*}
end;

//0042925C
procedure WriteObjectProp;
begin
{*
 0042925C    push        ebp
 0042925D    mov         ebp,esp
 0042925F    xor         ecx,ecx
 00429261    push        ecx
 00429262    push        ecx
 00429263    push        ecx
 00429264    push        ecx
 00429265    push        ecx
 00429266    xor         eax,eax
 00429268    push        ebp
 00429269    push        429450
 0042926E    push        dword ptr fs:[eax]
 00429271    mov         dword ptr fs:[eax],esp
 00429274    mov         eax,dword ptr [ebp+8]
 00429277    mov         edx,dword ptr [eax-8]
 0042927A    mov         eax,dword ptr [ebp+8]
 0042927D    mov         eax,dword ptr [eax-10]
 00429280    call        GetOrdProp
 00429285    mov         dword ptr [ebp-4],eax
 00429288    cmp         dword ptr [ebp-4],0
>0042928C    jne         004292AA
 0042928E    mov         eax,dword ptr [ebp+8]
 00429291    push        eax
 00429292    call        WritePropPath
 00429297    pop         ecx
 00429298    mov         eax,dword ptr [ebp+8]
 0042929B    mov         eax,dword ptr [eax-4]
 0042929E    mov         dl,0D
 004292A0    call        TWriter.WriteValue
>004292A5    jmp         00429435
 004292AA    mov         eax,dword ptr [ebp-4]
 004292AD    mov         edx,dword ptr ds:[41D57C];TPersistent
 004292B3    call        @IsClass
 004292B8    test        al,al
>004292BA    je          00429435
 004292C0    mov         eax,dword ptr [ebp-4]
 004292C3    mov         edx,dword ptr ds:[41E3B8];TComponent
 004292C9    call        @IsClass
 004292CE    test        al,al
>004292D0    je          00429312
 004292D2    mov         eax,dword ptr [ebp-4]
 004292D5    test        byte ptr [eax+24],4
>004292D9    jne         00429312
 004292DB    mov         eax,dword ptr [ebp+8]
 004292DE    push        eax
 004292DF    lea         edx,[ebp-10]
 004292E2    mov         eax,dword ptr [ebp-4]
 004292E5    call        GetComponentValue
 004292EA    pop         ecx
 004292EB    cmp         dword ptr [ebp-10],0
>004292EF    je          00429435
 004292F5    mov         eax,dword ptr [ebp+8]
 004292F8    push        eax
 004292F9    call        WritePropPath
 004292FE    pop         ecx
 004292FF    mov         eax,dword ptr [ebp+8]
 00429302    mov         eax,dword ptr [eax-4]
 00429305    mov         edx,dword ptr [ebp-10]
 00429308    call        TWriter.WriteIdent
>0042930D    jmp         00429435
 00429312    mov         eax,dword ptr [ebp+8]
 00429315    mov         eax,dword ptr [eax-4]
 00429318    mov         eax,dword ptr [eax+20]
 0042931B    mov         dword ptr [ebp-8],eax
 0042931E    lea         eax,[ebp-0C]
 00429321    mov         edx,dword ptr [ebp+8]
 00429324    mov         edx,dword ptr [edx-4]
 00429327    mov         edx,dword ptr [edx+2C]
 0042932A    call        @LStrLAsg
 0042932F    xor         eax,eax
 00429331    push        ebp
 00429332    push        4293D1
 00429337    push        dword ptr fs:[eax]
 0042933A    mov         dword ptr fs:[eax],esp
 0042933D    mov         eax,dword ptr [ebp+8]
 00429340    mov         eax,dword ptr [eax-4]
 00429343    push        dword ptr [eax+2C]
 00429346    lea         eax,[ebp-14]
 00429349    mov         edx,dword ptr [ebp+8]
 0042934C    mov         edx,dword ptr [edx-8]
 0042934F    add         edx,1A
 00429352    call        @LStrFromString
 00429357    push        dword ptr [ebp-14]
 0042935A    push        429464;'.'
 0042935F    mov         eax,dword ptr [ebp+8]
 00429362    mov         eax,dword ptr [eax-4]
 00429365    add         eax,2C
 00429368    mov         edx,3
 0042936D    call        @LStrCatN
 00429372    mov         eax,dword ptr [ebp+8]
 00429375    cmp         byte ptr [eax-11],0
>00429379    je          00429398
 0042937B    mov         eax,dword ptr [ebp+8]
 0042937E    mov         edx,dword ptr [eax-8]
 00429381    mov         eax,dword ptr [ebp+8]
 00429384    mov         eax,dword ptr [eax-4]
 00429387    mov         eax,dword ptr [eax+20]
 0042938A    call        GetOrdProp
 0042938F    mov         edx,dword ptr [ebp+8]
 00429392    mov         edx,dword ptr [edx-4]
 00429395    mov         dword ptr [edx+20],eax
 00429398    mov         eax,dword ptr [ebp+8]
 0042939B    mov         eax,dword ptr [eax-4]
 0042939E    mov         edx,dword ptr [ebp-4]
 004293A1    call        TWriter.WriteProperties
 004293A6    xor         eax,eax
 004293A8    pop         edx
 004293A9    pop         ecx
 004293AA    pop         ecx
 004293AB    mov         dword ptr fs:[eax],edx
 004293AE    push        4293D8
 004293B3    mov         eax,dword ptr [ebp+8]
 004293B6    mov         eax,dword ptr [eax-4]
 004293B9    mov         edx,dword ptr [ebp-8]
 004293BC    mov         dword ptr [eax+20],edx
 004293BF    mov         eax,dword ptr [ebp+8]
 004293C2    mov         eax,dword ptr [eax-4]
 004293C5    add         eax,2C
 004293C8    mov         edx,dword ptr [ebp-0C]
 004293CB    call        @LStrAsg
 004293D0    ret
>004293D1    jmp         @HandleFinally
>004293D6    jmp         004293B3
 004293D8    mov         eax,dword ptr [ebp-4]
 004293DB    mov         edx,dword ptr ds:[41D82C];TCollection
 004293E1    call        @IsClass
 004293E6    test        al,al
>004293E8    je          00429435
 004293EA    mov         eax,dword ptr [ebp+8]
 004293ED    cmp         byte ptr [eax-11],0
>004293F1    je          00429428
 004293F3    mov         eax,dword ptr [ebp+8]
 004293F6    mov         eax,dword ptr [eax-4]
 004293F9    mov         eax,dword ptr [eax+28]
 004293FC    push        eax
 004293FD    mov         eax,dword ptr [ebp+8]
 00429400    mov         edx,dword ptr [eax-8]
 00429403    mov         eax,dword ptr [ebp+8]
 00429406    mov         eax,dword ptr [eax-4]
 00429409    mov         eax,dword ptr [eax+20]
 0042940C    call        GetOrdProp
 00429411    mov         edx,eax
 00429413    mov         eax,dword ptr [ebp+8]
 00429416    mov         eax,dword ptr [eax-4]
 00429419    mov         ecx,dword ptr [eax+1C]
 0042941C    mov         eax,dword ptr [ebp-4]
 0042941F    call        CollectionsEqual
 00429424    test        al,al
>00429426    jne         00429435
 00429428    mov         eax,dword ptr [ebp+8]
 0042942B    push        eax
 0042942C    mov         eax,dword ptr [ebp-4]
 0042942F    call        WriteCollectionProp
 00429434    pop         ecx
 00429435    xor         eax,eax
 00429437    pop         edx
 00429438    pop         ecx
 00429439    pop         ecx
 0042943A    mov         dword ptr fs:[eax],edx
 0042943D    push        429457
 00429442    lea         eax,[ebp-14]
 00429445    mov         edx,3
 0042944A    call        @LStrArrayClr
 0042944F    ret
>00429450    jmp         @HandleFinally
>00429455    jmp         00429442
 00429457    mov         esp,ebp
 00429459    pop         ebp
 0042945A    ret
*}
end;

//00429468
procedure WriteInterfaceProp;
begin
{*
 00429468    push        ebp
 00429469    mov         ebp,esp
 0042946B    xor         ecx,ecx
 0042946D    push        ecx
 0042946E    push        ecx
 0042946F    push        ecx
 00429470    push        ecx
 00429471    xor         eax,eax
 00429473    push        ebp
 00429474    push        429526
 00429479    push        dword ptr fs:[eax]
 0042947C    mov         dword ptr fs:[eax],esp
 0042947F    lea         ecx,[ebp-4]
 00429482    mov         eax,dword ptr [ebp+8]
 00429485    mov         edx,dword ptr [eax-8]
 00429488    mov         eax,dword ptr [ebp+8]
 0042948B    mov         eax,dword ptr [eax-10]
 0042948E    call        0041CA5C
 00429493    cmp         dword ptr [ebp-4],0
>00429497    jne         004294B2
 00429499    mov         eax,dword ptr [ebp+8]
 0042949C    push        eax
 0042949D    call        WritePropPath
 004294A2    pop         ecx
 004294A3    mov         eax,dword ptr [ebp+8]
 004294A6    mov         eax,dword ptr [eax-4]
 004294A9    mov         dl,0D
 004294AB    call        TWriter.WriteValue
>004294B0    jmp         00429500
 004294B2    lea         eax,[ebp-0C]
 004294B5    call        @IntfClear
 004294BA    mov         ecx,eax
 004294BC    mov         edx,429534
 004294C1    mov         eax,dword ptr [ebp-4]
 004294C4    call        00412854
 004294C9    test        al,al
>004294CB    je          00429500
 004294CD    mov         eax,dword ptr [ebp-0C]
 004294D0    mov         edx,dword ptr [eax]
 004294D2    call        dword ptr [edx+0C]
 004294D5    mov         dword ptr [ebp-8],eax
 004294D8    mov         eax,dword ptr [ebp+8]
 004294DB    push        eax
 004294DC    lea         edx,[ebp-10]
 004294DF    mov         eax,dword ptr [ebp-8]
 004294E2    call        GetComponentValue
 004294E7    pop         ecx
 004294E8    mov         eax,dword ptr [ebp+8]
 004294EB    push        eax
 004294EC    call        WritePropPath
 004294F1    pop         ecx
 004294F2    mov         eax,dword ptr [ebp+8]
 004294F5    mov         eax,dword ptr [eax-4]
 004294F8    mov         edx,dword ptr [ebp-10]
 004294FB    call        TWriter.WriteIdent
 00429500    xor         eax,eax
 00429502    pop         edx
 00429503    pop         ecx
 00429504    pop         ecx
 00429505    mov         dword ptr fs:[eax],edx
 00429508    push        42952D
 0042950D    lea         eax,[ebp-10]
 00429510    call        @LStrClr
 00429515    lea         eax,[ebp-0C]
 00429518    call        @IntfClear
 0042951D    lea         eax,[ebp-4]
 00429520    call        @IntfClear
 00429525    ret
>00429526    jmp         @HandleFinally
>0042952B    jmp         0042950D
 0042952D    mov         esp,ebp
 0042952F    pop         ebp
 00429530    ret
*}
end;

//00429544
procedure WriteMethodProp;
begin
{*
 00429544    push        ebp
 00429545    mov         ebp,esp
 00429547    add         esp,0FFFFFEF4
 0042954D    xor         eax,eax
 0042954F    mov         dword ptr [ebp-0C],eax
 00429552    xor         eax,eax
 00429554    push        ebp
 00429555    push        4295DE
 0042955A    push        dword ptr fs:[eax]
 0042955D    mov         dword ptr fs:[eax],esp
 00429560    lea         ecx,[ebp-8]
 00429563    mov         eax,dword ptr [ebp+8]
 00429566    mov         edx,dword ptr [eax-8]
 00429569    mov         eax,dword ptr [ebp+8]
 0042956C    mov         eax,dword ptr [eax-10]
 0042956F    call        GetMethodProp
 00429574    mov         eax,dword ptr [ebp+8]
 00429577    push        eax
 00429578    call        WritePropPath
 0042957D    pop         ecx
 0042957E    cmp         dword ptr [ebp-8],0
>00429582    jne         00429593
 00429584    mov         eax,dword ptr [ebp+8]
 00429587    mov         eax,dword ptr [eax-4]
 0042958A    mov         dl,0D
 0042958C    call        TWriter.WriteValue
>00429591    jmp         004295C8
 00429593    lea         ecx,[ebp-10C]
 00429599    mov         eax,dword ptr [ebp+8]
 0042959C    mov         eax,dword ptr [eax-4]
 0042959F    mov         eax,dword ptr [eax+1C]
 004295A2    mov         eax,dword ptr [eax]
 004295A4    mov         edx,dword ptr [ebp-8]
 004295A7    call        TObject.MethodName
 004295AC    lea         edx,[ebp-10C]
 004295B2    lea         eax,[ebp-0C]
 004295B5    call        @LStrFromString
 004295BA    mov         edx,dword ptr [ebp-0C]
 004295BD    mov         eax,dword ptr [ebp+8]
 004295C0    mov         eax,dword ptr [eax-4]
 004295C3    call        TWriter.WriteIdent
 004295C8    xor         eax,eax
 004295CA    pop         edx
 004295CB    pop         ecx
 004295CC    pop         ecx
 004295CD    mov         dword ptr fs:[eax],edx
 004295D0    push        4295E5
 004295D5    lea         eax,[ebp-0C]
 004295D8    call        @LStrClr
 004295DD    ret
>004295DE    jmp         @HandleFinally
>004295E3    jmp         004295D5
 004295E5    mov         esp,ebp
 004295E7    pop         ebp
 004295E8    ret
*}
end;

//004295EC
procedure WriteVariantProp;
begin
{*
 004295EC    push        ebp
 004295ED    mov         ebp,esp
 004295EF    xor         ecx,ecx
 004295F1    push        ecx
 004295F2    push        ecx
 004295F3    push        ecx
 004295F4    push        ecx
 004295F5    xor         eax,eax
 004295F7    push        ebp
 004295F8    push        429645
 004295FD    push        dword ptr fs:[eax]
 00429600    mov         dword ptr fs:[eax],esp
 00429603    lea         ecx,[ebp-10]
 00429606    mov         eax,dword ptr [ebp+8]
 00429609    mov         edx,dword ptr [eax-8]
 0042960C    mov         eax,dword ptr [ebp+8]
 0042960F    mov         eax,dword ptr [eax-10]
 00429612    call        GetVariantProp
 00429617    mov         eax,dword ptr [ebp+8]
 0042961A    push        eax
 0042961B    call        WritePropPath
 00429620    pop         ecx
 00429621    lea         edx,[ebp-10]
 00429624    mov         eax,dword ptr [ebp+8]
 00429627    mov         eax,dword ptr [eax-4]
 0042962A    call        TWriter.WriteVariant
 0042962F    xor         eax,eax
 00429631    pop         edx
 00429632    pop         ecx
 00429633    pop         ecx
 00429634    mov         dword ptr fs:[eax],edx
 00429637    push        42964C
 0042963C    lea         eax,[ebp-10]
 0042963F    call        @VarClr
 00429644    ret
>00429645    jmp         @HandleFinally
>0042964A    jmp         0042963C
 0042964C    mov         esp,ebp
 0042964E    pop         ebp
 0042964F    ret
*}
end;

//00429650
procedure TWriter.WriteProperty(Instance:TPersistent; PropInfo:PPropInfo);
begin
{*
 00429650    push        ebp
 00429651    mov         ebp,esp
 00429653    add         esp,0FFFFFFEC
 00429656    mov         dword ptr [ebp-8],ecx
 00429659    mov         dword ptr [ebp-10],edx
 0042965C    mov         dword ptr [ebp-4],eax
 0042965F    mov         eax,dword ptr [ebp-8]
 00429662    cmp         dword ptr [eax+4],0
>00429666    je          00429798
 0042966C    mov         eax,dword ptr [ebp-8]
 0042966F    cmp         dword ptr [eax+8],0
>00429673    jne         004296B8
 00429675    mov         eax,dword ptr [ebp-8]
 00429678    mov         eax,dword ptr [eax]
 0042967A    mov         eax,dword ptr [eax]
 0042967C    cmp         byte ptr [eax],7
>0042967F    jne         00429798
 00429685    mov         edx,dword ptr [ebp-8]
 00429688    mov         eax,dword ptr [ebp-10]
 0042968B    call        GetOrdProp
 00429690    mov         edx,dword ptr ds:[41E3B8];TComponent
 00429696    call        @IsClass
 0042969B    test        al,al
>0042969D    je          00429798
 004296A3    mov         edx,dword ptr [ebp-8]
 004296A6    mov         eax,dword ptr [ebp-10]
 004296A9    call        GetOrdProp
 004296AE    test        byte ptr [eax+24],4
>004296B2    je          00429798
 004296B8    mov         eax,dword ptr [ebp-4]
 004296BB    push        eax
 004296BC    push        429E5C;TWriter.GetLookupInfo
 004296C1    mov         edx,dword ptr [ebp-8]
 004296C4    mov         eax,dword ptr [ebp-10]
 004296C7    call        IsDefaultPropertyValue
 004296CC    test        al,al
>004296CE    jne         00429798
 004296D4    mov         eax,dword ptr [ebp-4]
 004296D7    mov         ecx,dword ptr [eax+28]
 004296DA    mov         eax,dword ptr [ebp-4]
 004296DD    mov         edx,dword ptr [eax+18]
 004296E0    mov         eax,dword ptr [ebp-4]
 004296E3    mov         eax,dword ptr [eax+20]
 004296E6    call        AncestorIsValid
 004296EB    mov         byte ptr [ebp-11],al
 004296EE    mov         eax,dword ptr [ebp-8]
 004296F1    mov         eax,dword ptr [eax]
 004296F3    mov         eax,dword ptr [eax]
 004296F5    mov         dword ptr [ebp-0C],eax
 004296F8    mov         eax,dword ptr [ebp-0C]
 004296FB    movzx       eax,byte ptr [eax]
 004296FE    cmp         eax,10
>00429701    ja          00429798
 00429707    jmp         dword ptr [eax*4+42970E]
 00429707    dd          00429798
 00429707    dd          00429752
 00429707    dd          00429752
 00429707    dd          00429752
 00429707    dd          0042975B
 00429707    dd          00429764
 00429707    dd          00429752
 00429707    dd          0042976D
 00429707    dd          00429776
 00429707    dd          00429798
 00429707    dd          00429764
 00429707    dd          00429764
 00429707    dd          0042977F
 00429707    dd          00429798
 00429707    dd          00429798
 00429707    dd          00429791
 00429707    dd          00429788
 00429752    push        ebp
 00429753    call        WriteOrdProp
 00429758    pop         ecx
>00429759    jmp         00429798
 0042975B    push        ebp
 0042975C    call        WriteFloatProp
 00429761    pop         ecx
>00429762    jmp         00429798
 00429764    push        ebp
 00429765    call        WriteStrProp
 0042976A    pop         ecx
>0042976B    jmp         00429798
 0042976D    push        ebp
 0042976E    call        WriteObjectProp
 00429773    pop         ecx
>00429774    jmp         00429798
 00429776    push        ebp
 00429777    call        WriteMethodProp
 0042977C    pop         ecx
>0042977D    jmp         00429798
 0042977F    push        ebp
 00429780    call        WriteVariantProp
 00429785    pop         ecx
>00429786    jmp         00429798
 00429788    push        ebp
 00429789    call        WriteInt64Prop
 0042978E    pop         ecx
>0042978F    jmp         00429798
 00429791    push        ebp
 00429792    call        WriteInterfaceProp
 00429797    pop         ecx
 00429798    mov         esp,ebp
 0042979A    pop         ebp
 0042979B    ret
*}
end;

//0042979C
procedure TWriter.WriteVariant(const Value:Variant);
begin
{*
 0042979C    push        ebp
 0042979D    mov         ebp,esp
 0042979F    add         esp,0FFFFFEC4
 004297A5    push        ebx
 004297A6    push        esi
 004297A7    push        edi
 004297A8    xor         ecx,ecx
 004297AA    mov         dword ptr [ebp-3C],ecx
 004297AD    mov         dword ptr [ebp-38],ecx
 004297B0    mov         dword ptr [ebp-34],ecx
 004297B3    mov         dword ptr [ebp-30],ecx
 004297B6    mov         dword ptr [ebp-2C],ecx
 004297B9    mov         dword ptr [ebp-20],ecx
 004297BC    mov         dword ptr [ebp-8],edx
 004297BF    mov         dword ptr [ebp-4],eax
 004297C2    xor         eax,eax
 004297C4    push        ebp
 004297C5    push        429B8A
 004297CA    push        dword ptr fs:[eax]
 004297CD    mov         dword ptr fs:[eax],esp
 004297D0    mov         eax,dword ptr [ebp-8]
 004297D3    call        VarIsArray
 004297D8    test        al,al
>004297DA    je          004297F3
 004297DC    mov         ecx,dword ptr ds:[56E308];^SWriteError:TResStringRec
 004297E2    mov         dl,1
 004297E4    mov         eax,[0041D134];EWriteError
 004297E9    call        Exception.Create
 004297EE    call        @RaiseExcept
 004297F3    mov         eax,dword ptr [ebp-8]
 004297F6    call        00419738
 004297FB    and         ax,0FFF
 004297FF    movzx       eax,ax
 00429802    cmp         eax,7
>00429805    jg          00429839
>00429807    je          0042992D
 0042980D    cmp         eax,6
>00429810    ja          00429994
 00429816    jmp         dword ptr [eax*4+42981D]
 00429816    dd          0042986E
 00429816    dd          0042987D
 00429816    dd          004298C2
 00429816    dd          004298C2
 00429816    dd          004298D9
 00429816    dd          004298F5
 00429816    dd          00429911
 00429839    cmp         eax,10
>0042983C    jge         00429851
 0042983E    sub         eax,8
>00429841    je          0042988C
 00429843    sub         eax,3
>00429846    je          00429949
>0042984C    jmp         00429994
 00429851    add         eax,0FFFFFFF0
 00429854    sub         eax,3
>00429857    jb          004298C2
 00429859    sub         eax,2
>0042985C    jb          00429973
 00429862    sub         eax,0EB
>00429867    je          004298A7
>00429869    jmp         00429994
 0042986E    mov         dl,0D
 00429870    mov         eax,dword ptr [ebp-4]
 00429873    call        TWriter.WriteValue
>00429878    jmp         00429B4F
 0042987D    xor         edx,edx
 0042987F    mov         eax,dword ptr [ebp-4]
 00429882    call        TWriter.WriteValue
>00429887    jmp         00429B4F
 0042988C    lea         eax,[ebp-2C]
 0042988F    mov         edx,dword ptr [ebp-8]
 00429892    call        00418080
 00429897    mov         edx,dword ptr [ebp-2C]
 0042989A    mov         eax,dword ptr [ebp-4]
 0042989D    call        TWriter.WriteWideString
>004298A2    jmp         00429B4F
 004298A7    lea         eax,[ebp-30]
 004298AA    mov         edx,dword ptr [ebp-8]
 004298AD    call        00417960
 004298B2    mov         edx,dword ptr [ebp-30]
 004298B5    mov         eax,dword ptr [ebp-4]
 004298B8    call        00429D20
>004298BD    jmp         00429B4F
 004298C2    mov         eax,dword ptr [ebp-8]
 004298C5    call        @VarToInteger
 004298CA    mov         edx,eax
 004298CC    mov         eax,dword ptr [ebp-4]
 004298CF    call        00428340
>004298D4    jmp         00429B4F
 004298D9    mov         eax,dword ptr [ebp-8]
 004298DC    call        @VarToReal
 004298E1    add         esp,0FFFFFFFC
 004298E4    fstp        dword ptr [esp]
 004298E7    wait
 004298E8    mov         eax,dword ptr [ebp-4]
 004298EB    call        004281F0
>004298F0    jmp         00429B4F
 004298F5    mov         eax,dword ptr [ebp-8]
 004298F8    call        @VarToReal
 004298FD    add         esp,0FFFFFFF4
 00429900    fstp        tbyte ptr [esp]
 00429903    wait
 00429904    mov         eax,dword ptr [ebp-4]
 00429907    call        TWriter.WriteFloat
>0042990C    jmp         00429B4F
 00429911    mov         eax,dword ptr [ebp-8]
 00429914    call        @VarToCurrency
 00429919    add         esp,0FFFFFFF8
 0042991C    fistp       qword ptr [esp]
 0042991F    wait
 00429920    mov         eax,dword ptr [ebp-4]
 00429923    call        00428218
>00429928    jmp         00429B4F
 0042992D    mov         eax,dword ptr [ebp-8]
 00429930    call        @VarToReal
 00429935    add         esp,0FFFFFFF8
 00429938    fstp        qword ptr [esp]
 0042993B    wait
 0042993C    mov         eax,dword ptr [ebp-4]
 0042993F    call        00428240
>00429944    jmp         00429B4F
 00429949    mov         eax,dword ptr [ebp-8]
 0042994C    call        @VarToBool
 00429951    test        al,al
>00429953    je          00429964
 00429955    mov         dl,9
 00429957    mov         eax,dword ptr [ebp-4]
 0042995A    call        TWriter.WriteValue
>0042995F    jmp         00429B4F
 00429964    mov         dl,8
 00429966    mov         eax,dword ptr [ebp-4]
 00429969    call        TWriter.WriteValue
>0042996E    jmp         00429B4F
 00429973    mov         eax,dword ptr [ebp-8]
 00429976    call        @VarToInt64
 0042997B    mov         dword ptr [ebp-28],eax
 0042997E    mov         dword ptr [ebp-24],edx
 00429981    push        dword ptr [ebp-24]
 00429984    push        dword ptr [ebp-28]
 00429987    mov         eax,dword ptr [ebp-4]
 0042998A    call        TWriter.WriteInteger
>0042998F    jmp         00429B4F
 00429994    xor         eax,eax
 00429996    push        ebp
 00429997    push        429B2E
 0042999C    push        dword ptr fs:[eax]
 0042999F    mov         dword ptr fs:[eax],esp
 004299A2    lea         edx,[ebp-0C]
 004299A5    mov         eax,dword ptr [ebp-8]
 004299A8    mov         ax,word ptr [eax]
 004299AB    call        FindCustomVariantType
 004299B0    test        al,al
>004299B2    je          004299DA
 004299B4    lea         eax,[ebp-20]
 004299B7    call        @IntfClear
 004299BC    push        eax
 004299BD    lea         eax,[ebp-34]
 004299C0    mov         edx,dword ptr [ebp-8]
 004299C3    call        @VarToIntf
 004299C8    mov         eax,dword ptr [ebp-34]
 004299CB    mov         edx,429B98
 004299D0    pop         ecx
 004299D1    call        00412854
 004299D6    test        al,al
>004299D8    jne         004299F5
 004299DA    lea         eax,[ebp-38]
 004299DD    mov         edx,dword ptr [ebp-8]
 004299E0    call        00417960
 004299E5    mov         edx,dword ptr [ebp-38]
 004299E8    mov         eax,dword ptr [ebp-4]
 004299EB    call        00429D20
>004299F0    jmp         00429B24
 004299F5    xor         eax,eax
 004299F7    mov         dword ptr [ebp-14],eax
 004299FA    mov         dl,1
 004299FC    mov         eax,[0041DE14];TMemoryStream
 00429A01    call        TObject.Create
 00429A06    mov         dword ptr [ebp-10],eax
 00429A09    xor         eax,eax
 00429A0B    push        ebp
 00429A0C    push        429B1D
 00429A11    push        dword ptr fs:[eax]
 00429A14    mov         dword ptr fs:[eax],esp
 00429A17    mov         dl,1
 00429A19    mov         eax,[0041DE14];TMemoryStream
 00429A1E    call        TObject.Create
 00429A23    mov         dword ptr [ebp-14],eax
 00429A26    push        400
 00429A2B    mov         ecx,dword ptr [ebp-10]
 00429A2E    mov         dl,1
 00429A30    mov         eax,[0041E1F4];TWriter
 00429A35    call        TFiler.Create
 00429A3A    mov         dword ptr [ebp-18],eax
 00429A3D    xor         eax,eax
 00429A3F    push        ebp
 00429A40    push        429AC3
 00429A45    push        dword ptr fs:[eax]
 00429A48    mov         dword ptr fs:[eax],esp
 00429A4B    mov         edx,dword ptr [ebp-8]
 00429A4E    mov         ecx,dword ptr [ebp-14]
 00429A51    mov         eax,dword ptr [ebp-20]
 00429A54    mov         ebx,dword ptr [eax]
 00429A56    call        dword ptr [ebx+10]
 00429A59    mov         eax,dword ptr [ebp-14]
 00429A5C    mov         edx,dword ptr [eax]
 00429A5E    call        dword ptr [edx]
 00429A60    mov         dword ptr [ebp-1C],eax
 00429A63    lea         edx,[ebp-13C]
 00429A69    mov         eax,dword ptr [ebp-0C]
 00429A6C    mov         eax,dword ptr [eax]
 00429A6E    call        TObject.ClassName
 00429A73    lea         edx,[ebp-13C]
 00429A79    lea         eax,[ebp-3C]
 00429A7C    call        @LStrFromString
 00429A81    mov         edx,dword ptr [ebp-3C]
 00429A84    mov         eax,dword ptr [ebp-18]
 00429A87    call        00429D20
 00429A8C    lea         edx,[ebp-1C]
 00429A8F    mov         ecx,4
 00429A94    mov         eax,dword ptr [ebp-18]
 00429A97    call        TWriter.Write
 00429A9C    mov         eax,dword ptr [ebp-14]
 00429A9F    mov         edx,dword ptr [eax+4]
 00429AA2    mov         ecx,dword ptr [ebp-1C]
 00429AA5    mov         eax,dword ptr [ebp-18]
 00429AA8    call        TWriter.Write
 00429AAD    xor         eax,eax
 00429AAF    pop         edx
 00429AB0    pop         ecx
 00429AB1    pop         ecx
 00429AB2    mov         dword ptr fs:[eax],edx
 00429AB5    push        429ACA
 00429ABA    mov         eax,dword ptr [ebp-18]
 00429ABD    call        TObject.Free
 00429AC2    ret
>00429AC3    jmp         @HandleFinally
>00429AC8    jmp         00429ABA
 00429ACA    mov         eax,dword ptr [ebp-10]
 00429ACD    mov         edx,dword ptr [eax]
 00429ACF    call        dword ptr [edx]
 00429AD1    mov         dword ptr [ebp-1C],eax
 00429AD4    mov         dl,0A
 00429AD6    mov         eax,dword ptr [ebp-4]
 00429AD9    call        TWriter.WriteValue
 00429ADE    lea         edx,[ebp-1C]
 00429AE1    mov         ecx,4
 00429AE6    mov         eax,dword ptr [ebp-4]
 00429AE9    call        TWriter.Write
 00429AEE    mov         eax,dword ptr [ebp-10]
 00429AF1    mov         edx,dword ptr [eax+4]
 00429AF4    mov         ecx,dword ptr [ebp-1C]
 00429AF7    mov         eax,dword ptr [ebp-4]
 00429AFA    call        TWriter.Write
 00429AFF    xor         eax,eax
 00429B01    pop         edx
 00429B02    pop         ecx
 00429B03    pop         ecx
 00429B04    mov         dword ptr fs:[eax],edx
 00429B07    push        429B24
 00429B0C    mov         eax,dword ptr [ebp-14]
 00429B0F    call        TObject.Free
 00429B14    mov         eax,dword ptr [ebp-10]
 00429B17    call        TObject.Free
 00429B1C    ret
>00429B1D    jmp         @HandleFinally
>00429B22    jmp         00429B0C
 00429B24    xor         eax,eax
 00429B26    pop         edx
 00429B27    pop         ecx
 00429B28    pop         ecx
 00429B29    mov         dword ptr fs:[eax],edx
>00429B2C    jmp         00429B4F
>00429B2E    jmp         @HandleAnyException
 00429B33    mov         ecx,dword ptr ds:[56E308];^SWriteError:TResStringRec
 00429B39    mov         dl,1
 00429B3B    mov         eax,[0041D134];EWriteError
 00429B40    call        Exception.Create
 00429B45    call        @RaiseExcept
 00429B4A    call        @DoneExcept
 00429B4F    xor         eax,eax
 00429B51    pop         edx
 00429B52    pop         ecx
 00429B53    pop         ecx
 00429B54    mov         dword ptr fs:[eax],edx
 00429B57    push        429B91
 00429B5C    lea         eax,[ebp-3C]
 00429B5F    mov         edx,2
 00429B64    call        @LStrArrayClr
 00429B69    lea         eax,[ebp-34]
 00429B6C    call        @IntfClear
 00429B71    lea         eax,[ebp-30]
 00429B74    call        @LStrClr
 00429B79    lea         eax,[ebp-2C]
 00429B7C    call        @WStrClr
 00429B81    lea         eax,[ebp-20]
 00429B84    call        @IntfClear
 00429B89    ret
>00429B8A    jmp         @HandleFinally
>00429B8F    jmp         00429B5C
 00429B91    pop         edi
 00429B92    pop         esi
 00429B93    pop         ebx
 00429B94    mov         esp,ebp
 00429B96    pop         ebp
 00429B97    ret
*}
end;

//00429BA8
procedure TWriter.WritePropName(const PropName:AnsiString);
begin
{*
 00429BA8    push        ebp
 00429BA9    mov         ebp,esp
 00429BAB    add         esp,0FFFFFFF4
 00429BAE    xor         ecx,ecx
 00429BB0    mov         dword ptr [ebp-0C],ecx
 00429BB3    mov         dword ptr [ebp-8],edx
 00429BB6    mov         dword ptr [ebp-4],eax
 00429BB9    xor         eax,eax
 00429BBB    push        ebp
 00429BBC    push        429BF9
 00429BC1    push        dword ptr fs:[eax]
 00429BC4    mov         dword ptr fs:[eax],esp
 00429BC7    lea         eax,[ebp-0C]
 00429BCA    mov         ecx,dword ptr [ebp-8]
 00429BCD    mov         edx,dword ptr [ebp-4]
 00429BD0    mov         edx,dword ptr [edx+2C]
 00429BD3    call        @LStrCat3
 00429BD8    mov         edx,dword ptr [ebp-0C]
 00429BDB    mov         eax,dword ptr [ebp-4]
 00429BDE    call        00429C20
 00429BE3    xor         eax,eax
 00429BE5    pop         edx
 00429BE6    pop         ecx
 00429BE7    pop         ecx
 00429BE8    mov         dword ptr fs:[eax],edx
 00429BEB    push        429C00
 00429BF0    lea         eax,[ebp-0C]
 00429BF3    call        @LStrClr
 00429BF8    ret
>00429BF9    jmp         @HandleFinally
>00429BFE    jmp         00429BF0
 00429C00    mov         esp,ebp
 00429C02    pop         ebp
 00429C03    ret
*}
end;

//00429C04
procedure sub_00429C04(?:TWriter);
begin
{*
 00429C04    push        ebp
 00429C05    mov         ebp,esp
 00429C07    push        ecx
 00429C08    mov         dword ptr [ebp-4],eax
 00429C0B    mov         edx,56BCB0;gvar_0056BCB0
 00429C10    mov         ecx,4
 00429C15    mov         eax,dword ptr [ebp-4]
 00429C18    call        TWriter.Write
 00429C1D    pop         ecx
 00429C1E    pop         ebp
 00429C1F    ret
*}
end;

//00429C20
procedure sub_00429C20(?:TWriter; ?:AnsiString);
begin
{*
 00429C20    push        ebp
 00429C21    mov         ebp,esp
 00429C23    add         esp,0FFFFFFF4
 00429C26    mov         dword ptr [ebp-8],edx
 00429C29    mov         dword ptr [ebp-4],eax
 00429C2C    mov         eax,dword ptr [ebp-8]
 00429C2F    call        @LStrLen
 00429C34    mov         dword ptr [ebp-0C],eax
 00429C37    cmp         dword ptr [ebp-0C],0FF
>00429C3E    jle         00429C47
 00429C40    mov         dword ptr [ebp-0C],0FF
 00429C47    lea         edx,[ebp-0C]
 00429C4A    mov         ecx,1
 00429C4F    mov         eax,dword ptr [ebp-4]
 00429C52    call        TWriter.Write
 00429C57    mov         eax,dword ptr [ebp-8]
 00429C5A    call        @LStrToPChar
 00429C5F    mov         edx,eax
 00429C61    mov         ecx,dword ptr [ebp-0C]
 00429C64    mov         eax,dword ptr [ebp-4]
 00429C67    call        TWriter.Write
 00429C6C    mov         esp,ebp
 00429C6E    pop         ebp
 00429C6F    ret
*}
end;

//00429C70
{*procedure sub_00429C70(?:?; ?:AnsiString; ?:?);
begin
 00429C70    push        ebp
 00429C71    mov         ebp,esp
 00429C73    add         esp,0FFFFFFF0
 00429C76    mov         dword ptr [ebp-0C],ecx
 00429C79    mov         dword ptr [ebp-8],edx
 00429C7C    mov         dword ptr [ebp-4],eax
 00429C7F    mov         eax,dword ptr [ebp-8]
 00429C82    mov         edx,dword ptr [ebp-0C]
 00429C85    call        @LStrCmp
>00429C8A    je          00429CC1
 00429C8C    mov         eax,dword ptr [ebp-0C]
 00429C8F    call        @LStrLen
 00429C94    mov         dword ptr [ebp-10],eax
 00429C97    mov         dl,14
 00429C99    mov         eax,dword ptr [ebp-4]
 00429C9C    call        TWriter.WriteValue
 00429CA1    lea         edx,[ebp-10]
 00429CA4    mov         ecx,4
 00429CA9    mov         eax,dword ptr [ebp-4]
 00429CAC    call        TWriter.Write
 00429CB1    mov         edx,dword ptr [ebp-0C]
 00429CB4    mov         ecx,dword ptr [ebp-10]
 00429CB7    mov         eax,dword ptr [ebp-4]
 00429CBA    call        TWriter.Write
>00429CBF    jmp         00429D19
 00429CC1    mov         eax,dword ptr [ebp-8]
 00429CC4    call        @LStrLen
 00429CC9    mov         dword ptr [ebp-10],eax
 00429CCC    cmp         dword ptr [ebp-10],0FF
>00429CD3    jg          00429CF1
 00429CD5    mov         dl,6
 00429CD7    mov         eax,dword ptr [ebp-4]
 00429CDA    call        TWriter.WriteValue
 00429CDF    lea         edx,[ebp-10]
 00429CE2    mov         ecx,1
 00429CE7    mov         eax,dword ptr [ebp-4]
 00429CEA    call        TWriter.Write
>00429CEF    jmp         00429D0B
 00429CF1    mov         dl,0C
 00429CF3    mov         eax,dword ptr [ebp-4]
 00429CF6    call        TWriter.WriteValue
 00429CFB    lea         edx,[ebp-10]
 00429CFE    mov         ecx,4
 00429D03    mov         eax,dword ptr [ebp-4]
 00429D06    call        TWriter.Write
 00429D0B    mov         edx,dword ptr [ebp-8]
 00429D0E    mov         ecx,dword ptr [ebp-10]
 00429D11    mov         eax,dword ptr [ebp-4]
 00429D14    call        TWriter.Write
 00429D19    mov         esp,ebp
 00429D1B    pop         ebp
 00429D1C    ret
end;*}

//00429D20
{*procedure sub_00429D20(?:?; ?:AnsiString);
begin
 00429D20    push        ebp
 00429D21    mov         ebp,esp
 00429D23    add         esp,0FFFFFFF4
 00429D26    xor         ecx,ecx
 00429D28    mov         dword ptr [ebp-0C],ecx
 00429D2B    mov         dword ptr [ebp-8],edx
 00429D2E    mov         dword ptr [ebp-4],eax
 00429D31    xor         eax,eax
 00429D33    push        ebp
 00429D34    push        429D6E
 00429D39    push        dword ptr fs:[eax]
 00429D3C    mov         dword ptr fs:[eax],esp
 00429D3F    lea         edx,[ebp-0C]
 00429D42    mov         eax,dword ptr [ebp-8]
 00429D45    call        AnsiToUtf8
 00429D4A    mov         ecx,dword ptr [ebp-0C]
 00429D4D    mov         edx,dword ptr [ebp-8]
 00429D50    mov         eax,dword ptr [ebp-4]
 00429D53    call        00429C70
 00429D58    xor         eax,eax
 00429D5A    pop         edx
 00429D5B    pop         ecx
 00429D5C    pop         ecx
 00429D5D    mov         dword ptr fs:[eax],edx
 00429D60    push        429D75
 00429D65    lea         eax,[ebp-0C]
 00429D68    call        @LStrClr
 00429D6D    ret
>00429D6E    jmp         @HandleFinally
>00429D73    jmp         00429D65
 00429D75    mov         esp,ebp
 00429D77    pop         ebp
 00429D78    ret
end;*}

//00429D7C
procedure TWriter.WriteWideString(const Value:WideString);
begin
{*
 00429D7C    push        ebp
 00429D7D    mov         ebp,esp
 00429D7F    add         esp,0FFFFFFEC
 00429D82    push        ebx
 00429D83    xor         ecx,ecx
 00429D85    mov         dword ptr [ebp-14],ecx
 00429D88    mov         dword ptr [ebp-10],ecx
 00429D8B    mov         dword ptr [ebp-8],edx
 00429D8E    mov         dword ptr [ebp-4],eax
 00429D91    xor         eax,eax
 00429D93    push        ebp
 00429D94    push        429E30
 00429D99    push        dword ptr fs:[eax]
 00429D9C    mov         dword ptr fs:[eax],esp
 00429D9F    lea         edx,[ebp-10]
 00429DA2    mov         eax,dword ptr [ebp-8]
 00429DA5    call        UTF8Encode
 00429DAA    mov         eax,dword ptr [ebp-10]
 00429DAD    call        @LStrLen
 00429DB2    mov         ebx,eax
 00429DB4    mov         eax,dword ptr [ebp-8]
 00429DB7    call        @WStrLen
 00429DBC    add         eax,eax
 00429DBE    cmp         ebx,eax
>00429DC0    jge         00429DDD
 00429DC2    lea         eax,[ebp-14]
 00429DC5    mov         edx,dword ptr [ebp-8]
 00429DC8    call        @LStrFromWStr
 00429DCD    mov         edx,dword ptr [ebp-14]
 00429DD0    mov         ecx,dword ptr [ebp-10]
 00429DD3    mov         eax,dword ptr [ebp-4]
 00429DD6    call        00429C70
>00429DDB    jmp         00429E12
 00429DDD    mov         dl,12
 00429DDF    mov         eax,dword ptr [ebp-4]
 00429DE2    call        TWriter.WriteValue
 00429DE7    mov         eax,dword ptr [ebp-8]
 00429DEA    call        @WStrLen
 00429DEF    mov         dword ptr [ebp-0C],eax
 00429DF2    lea         edx,[ebp-0C]
 00429DF5    mov         ecx,4
 00429DFA    mov         eax,dword ptr [ebp-4]
 00429DFD    call        TWriter.Write
 00429E02    mov         ecx,dword ptr [ebp-0C]
 00429E05    add         ecx,ecx
 00429E07    mov         edx,dword ptr [ebp-8]
 00429E0A    mov         eax,dword ptr [ebp-4]
 00429E0D    call        TWriter.Write
 00429E12    xor         eax,eax
 00429E14    pop         edx
 00429E15    pop         ecx
 00429E16    pop         ecx
 00429E17    mov         dword ptr fs:[eax],edx
 00429E1A    push        429E37
 00429E1F    lea         eax,[ebp-14]
 00429E22    call        @LStrClr
 00429E27    lea         eax,[ebp-10]
 00429E2A    call        @LStrClr
 00429E2F    ret
>00429E30    jmp         @HandleFinally
>00429E35    jmp         00429E1F
 00429E37    pop         ebx
 00429E38    mov         esp,ebp
 00429E3A    pop         ebp
 00429E3B    ret
*}
end;

//00429E3C
procedure TWriter.WriteValue(Value:TValueType);
begin
{*
 00429E3C    push        ebp
 00429E3D    mov         ebp,esp
 00429E3F    add         esp,0FFFFFFF8
 00429E42    mov         byte ptr [ebp-5],dl
 00429E45    mov         dword ptr [ebp-4],eax
 00429E48    lea         edx,[ebp-5]
 00429E4B    mov         ecx,1
 00429E50    mov         eax,dword ptr [ebp-4]
 00429E53    call        TWriter.Write
 00429E58    pop         ecx
 00429E59    pop         ecx
 00429E5A    pop         ebp
 00429E5B    ret
*}
end;

//00429E5C
procedure TWriter.GetLookupInfo(var Ancestor:TPersistent; var Root:TComponent; var LookupRoot:TComponent; var RootAncestor:TComponent);
begin
{*
 00429E5C    push        ebp
 00429E5D    mov         ebp,esp
 00429E5F    add         esp,0FFFFFFF4
 00429E62    mov         dword ptr [ebp-0C],ecx
 00429E65    mov         dword ptr [ebp-8],edx
 00429E68    mov         dword ptr [ebp-4],eax
 00429E6B    mov         eax,dword ptr [ebp-8]
 00429E6E    mov         edx,dword ptr [ebp-4]
 00429E71    mov         edx,dword ptr [edx+20]
 00429E74    mov         dword ptr [eax],edx
 00429E76    mov         eax,dword ptr [ebp-0C]
 00429E79    mov         edx,dword ptr [ebp-4]
 00429E7C    mov         edx,dword ptr [edx+18]
 00429E7F    mov         dword ptr [eax],edx
 00429E81    mov         eax,dword ptr [ebp+0C]
 00429E84    mov         edx,dword ptr [ebp-4]
 00429E87    mov         edx,dword ptr [edx+1C]
 00429E8A    mov         dword ptr [eax],edx
 00429E8C    mov         eax,dword ptr [ebp+8]
 00429E8F    mov         edx,dword ptr [ebp-4]
 00429E92    mov         edx,dword ptr [edx+28]
 00429E95    mov         dword ptr [eax],edx
 00429E97    mov         esp,ebp
 00429E99    pop         ebp
 00429E9A    ret         8
*}
end;

//00429EA0
procedure BinToHex(Buffer:PChar; Text:PChar; BufSize:Integer);
begin
{*
 00429EA0    push        ebp
 00429EA1    mov         ebp,esp
 00429EA3    add         esp,0FFFFFFEC
 00429EA6    mov         dword ptr [ebp-0C],ecx
 00429EA9    mov         dword ptr [ebp-8],edx
 00429EAC    mov         dword ptr [ebp-4],eax
 00429EAF    mov         eax,dword ptr [ebp-0C]
 00429EB2    dec         eax
 00429EB3    test        eax,eax
>00429EB5    jl          00429F02
 00429EB7    inc         eax
 00429EB8    mov         dword ptr [ebp-14],eax
 00429EBB    mov         dword ptr [ebp-10],0
 00429EC2    mov         eax,dword ptr [ebp-4]
 00429EC5    mov         edx,dword ptr [ebp-10]
 00429EC8    movzx       eax,byte ptr [eax+edx]
 00429ECC    shr         eax,4
 00429ECF    mov         al,byte ptr [eax+56BCBC]
 00429ED5    mov         edx,dword ptr [ebp-8]
 00429ED8    mov         byte ptr [edx],al
 00429EDA    mov         eax,dword ptr [ebp-4]
 00429EDD    mov         edx,dword ptr [ebp-10]
 00429EE0    mov         al,byte ptr [eax+edx]
 00429EE3    and         al,0F
 00429EE5    and         eax,0FF
 00429EEA    mov         al,byte ptr [eax+56BCBC]
 00429EF0    mov         edx,dword ptr [ebp-8]
 00429EF3    mov         byte ptr [edx+1],al
 00429EF6    add         dword ptr [ebp-8],2
 00429EFA    inc         dword ptr [ebp-10]
 00429EFD    dec         dword ptr [ebp-14]
>00429F00    jne         00429EC2
 00429F02    mov         esp,ebp
 00429F04    pop         ebp
 00429F05    ret
*}
end;

//00429F08
{*function sub_00429F08(?:PChar; ?:?; ?:?):?;
begin
 00429F08    push        ebp
 00429F09    mov         ebp,esp
 00429F0B    add         esp,0FFFFFFEC
 00429F0E    mov         dword ptr [ebp-0C],ecx
 00429F11    mov         dword ptr [ebp-8],edx
 00429F14    mov         dword ptr [ebp-4],eax
 00429F17    mov         eax,dword ptr [ebp-0C]
 00429F1A    mov         dword ptr [ebp-14],eax
 00429F1D    cmp         dword ptr [ebp-14],0
>00429F21    jle         00429F71
 00429F23    mov         eax,dword ptr [ebp-4]
 00429F26    mov         al,byte ptr [eax]
 00429F28    add         al,0D0
 00429F2A    sub         al,37
>00429F2C    jae         00429F71
 00429F2E    mov         eax,dword ptr [ebp-4]
 00429F31    mov         al,byte ptr [eax+1]
 00429F34    add         al,0D0
 00429F36    sub         al,37
>00429F38    jae         00429F71
 00429F3A    mov         eax,dword ptr [ebp-4]
 00429F3D    movzx       eax,byte ptr [eax]
 00429F40    mov         ax,word ptr [eax*2+56BC6C];^'False'
 00429F48    shl         eax,4
 00429F4B    mov         edx,dword ptr [ebp-4]
 00429F4E    movzx       edx,byte ptr [edx+1]
 00429F52    mov         dx,word ptr [edx*2+56BC6C];^'False'
 00429F5A    add         al,dl
 00429F5C    mov         edx,dword ptr [ebp-8]
 00429F5F    mov         byte ptr [edx],al
 00429F61    inc         dword ptr [ebp-8]
 00429F64    add         dword ptr [ebp-4],2
 00429F68    dec         dword ptr [ebp-14]
 00429F6B    cmp         dword ptr [ebp-14],0
>00429F6F    jg          00429F23
 00429F71    mov         eax,dword ptr [ebp-0C]
 00429F74    sub         eax,dword ptr [ebp-14]
 00429F77    mov         dword ptr [ebp-10],eax
 00429F7A    mov         eax,dword ptr [ebp-10]
 00429F7D    mov         esp,ebp
 00429F7F    pop         ebp
 00429F80    ret
end;*}

//00429F84
procedure InitThreadSynchronization;
begin
{*
 00429F84    push        ebp
 00429F85    mov         ebp,esp
 00429F87    push        571A94
 00429F8C    call        kernel32.InitializeCriticalSection
 00429F91    push        429FB8
 00429F96    push        0
 00429F98    push        0FF
 00429F9A    push        0
 00429F9C    call        kernel32.CreateEventA
 00429FA1    mov         [00571A7C],eax;gvar_00571A7C
 00429FA6    cmp         dword ptr ds:[571A7C],0;gvar_00571A7C
>00429FAD    jne         00429FB4
 00429FAF    call        RaiseLastOSError
 00429FB4    pop         ebp
 00429FB5    ret
*}
end;

//00429FBC
procedure DoneThreadSynchronization;
begin
{*
 00429FBC    push        ebp
 00429FBD    mov         ebp,esp
 00429FBF    push        571A94
 00429FC4    call        kernel32.DeleteCriticalSection
 00429FC9    mov         eax,[00571A7C];gvar_00571A7C
 00429FCE    push        eax
 00429FCF    call        kernel32.CloseHandle
 00429FD4    pop         ebp
 00429FD5    ret
*}
end;

//00429FD8
procedure sub_00429FD8;
begin
{*
 00429FD8    push        ebp
 00429FD9    mov         ebp,esp
 00429FDB    mov         eax,[00571A7C];0x0 gvar_00571A7C
 00429FE0    push        eax
 00429FE1    call        kernel32.ResetEvent
 00429FE6    pop         ebp
 00429FE7    ret
*}
end;

//00429FE8
{*procedure sub_00429FE8(?:?);
begin
 00429FE8    push        ebp
 00429FE9    mov         ebp,esp
 00429FEB    push        ecx
 00429FEC    mov         dword ptr [ebp-4],eax
 00429FEF    mov         eax,dword ptr [ebp-4]
 00429FF2    push        eax
 00429FF3    mov         eax,[00571A7C];0x0 gvar_00571A7C
 00429FF8    push        eax
 00429FF9    call        kernel32.WaitForSingleObject
 00429FFE    test        eax,eax
>0042A000    jne         0042A007
 0042A002    call        00429FD8
 0042A007    pop         ecx
 0042A008    pop         ebp
 0042A009    ret
end;*}

//0042A00C
{*function sub_0042A00C(?:?):?;
begin
 0042A00C    push        ebp
 0042A00D    mov         ebp,esp
 0042A00F    add         esp,0FFFFFFE8
 0042A012    push        ebx
 0042A013    push        esi
 0042A014    push        edi
 0042A015    mov         dword ptr [ebp-4],eax
 0042A018    call        kernel32.GetCurrentThreadId
 0042A01D    mov         edx,dword ptr ds:[56E634];^MainThreadID:Cardinal
 0042A023    cmp         eax,dword ptr [edx]
>0042A025    je          0042A050
 0042A027    call        kernel32.GetCurrentThreadId
 0042A02C    mov         dword ptr [ebp-18],eax
 0042A02F    mov         byte ptr [ebp-14],0
 0042A033    lea         eax,[ebp-18]
 0042A036    push        eax
 0042A037    push        0
 0042A039    mov         ecx,dword ptr ds:[56E3BC];^SCheckSynchronizeError:TResStringRec
 0042A03F    mov         dl,1
 0042A041    mov         eax,[0041E270];EThread
 0042A046    call        Exception.CreateResFmt;EThread.Create
 0042A04B    call        @RaiseExcept
 0042A050    cmp         dword ptr [ebp-4],0
>0042A054    jle         0042A060
 0042A056    mov         eax,dword ptr [ebp-4]
 0042A059    call        00429FE8
>0042A05E    jmp         0042A065
 0042A060    call        00429FD8
 0042A065    xor         eax,eax
 0042A067    mov         dword ptr [ebp-10],eax
 0042A06A    push        571A94
 0042A06F    call        kernel32.EnterCriticalSection
 0042A074    xor         eax,eax
 0042A076    push        ebp
 0042A077    push        42A19E
 0042A07C    push        dword ptr fs:[eax]
 0042A07F    mov         dword ptr fs:[eax],esp
 0042A082    mov         eax,dword ptr [ebp-10]
 0042A085    push        eax
 0042A086    push        56BD3C
 0042A08B    call        kernel32.InterlockedExchange
 0042A090    mov         dword ptr [ebp-10],eax
 0042A093    xor         eax,eax
 0042A095    push        ebp
 0042A096    push        42A17F
 0042A09B    push        dword ptr fs:[eax]
 0042A09E    mov         dword ptr fs:[eax],esp
 0042A0A1    cmp         dword ptr [ebp-10],0
>0042A0A5    je          0042A0B0
 0042A0A7    mov         eax,dword ptr [ebp-10]
 0042A0AA    cmp         dword ptr [eax+8],0
>0042A0AE    jg          0042A0B4
 0042A0B0    xor         eax,eax
>0042A0B2    jmp         0042A0B6
 0042A0B4    mov         al,1
 0042A0B6    mov         byte ptr [ebp-5],al
 0042A0B9    cmp         byte ptr [ebp-5],0
>0042A0BD    je          0042A169
>0042A0C3    jmp         0042A15C
 0042A0C8    xor         edx,edx
 0042A0CA    mov         eax,dword ptr [ebp-10]
 0042A0CD    call        TList.Get
 0042A0D2    mov         dword ptr [ebp-0C],eax
 0042A0D5    xor         edx,edx
 0042A0D7    mov         eax,dword ptr [ebp-10]
 0042A0DA    call        00420094
 0042A0DF    push        571A94
 0042A0E4    call        kernel32.LeaveCriticalSection
 0042A0E9    xor         eax,eax
 0042A0EB    push        ebp
 0042A0EC    push        42A149
 0042A0F1    push        dword ptr fs:[eax]
 0042A0F4    mov         dword ptr fs:[eax],esp
 0042A0F7    xor         eax,eax
 0042A0F9    push        ebp
 0042A0FA    push        42A11A
 0042A0FF    push        dword ptr fs:[eax]
 0042A102    mov         dword ptr fs:[eax],esp
 0042A105    mov         eax,dword ptr [ebp-0C]
 0042A108    mov         ebx,dword ptr [eax]
 0042A10A    mov         eax,dword ptr [ebx+0C]
 0042A10D    call        dword ptr [ebx+8]
 0042A110    xor         eax,eax
 0042A112    pop         edx
 0042A113    pop         ecx
 0042A114    pop         ecx
 0042A115    mov         dword ptr fs:[eax],edx
>0042A118    jmp         0042A131
>0042A11A    jmp         @HandleAnyException
 0042A11F    call        00402F30
 0042A124    mov         edx,dword ptr [ebp-0C]
 0042A127    mov         edx,dword ptr [edx]
 0042A129    mov         dword ptr [edx+10],eax
 0042A12C    call        @DoneExcept
 0042A131    xor         eax,eax
 0042A133    pop         edx
 0042A134    pop         ecx
 0042A135    pop         ecx
 0042A136    mov         dword ptr fs:[eax],edx
 0042A139    push        42A150
 0042A13E    push        571A94
 0042A143    call        kernel32.EnterCriticalSection
 0042A148    ret
>0042A149    jmp         @HandleFinally
>0042A14E    jmp         0042A13E
 0042A150    mov         eax,dword ptr [ebp-0C]
 0042A153    mov         eax,dword ptr [eax+4]
 0042A156    push        eax
 0042A157    call        kernel32.SetEvent
 0042A15C    mov         eax,dword ptr [ebp-10]
 0042A15F    cmp         dword ptr [eax+8],0
>0042A163    jg          0042A0C8
 0042A169    xor         eax,eax
 0042A16B    pop         edx
 0042A16C    pop         ecx
 0042A16D    pop         ecx
 0042A16E    mov         dword ptr fs:[eax],edx
 0042A171    push        42A186
 0042A176    mov         eax,dword ptr [ebp-10]
 0042A179    call        TObject.Free
 0042A17E    ret
>0042A17F    jmp         @HandleFinally
>0042A184    jmp         0042A176
 0042A186    xor         eax,eax
 0042A188    pop         edx
 0042A189    pop         ecx
 0042A18A    pop         ecx
 0042A18B    mov         dword ptr fs:[eax],edx
 0042A18E    push        42A1A5
 0042A193    push        571A94
 0042A198    call        kernel32.LeaveCriticalSection
 0042A19D    ret
>0042A19E    jmp         @HandleFinally
>0042A1A3    jmp         0042A193
 0042A1A5    mov         al,byte ptr [ebp-5]
 0042A1A8    pop         edi
 0042A1A9    pop         esi
 0042A1AA    pop         ebx
 0042A1AB    mov         esp,ebp
 0042A1AD    pop         ebp
 0042A1AE    ret
end;*}

//0042A1B0
constructor sub_0042A1B0;
begin
{*
 0042A1B0    push        ebp
 0042A1B1    mov         ebp,esp
 0042A1B3    add         esp,0FFFFFFF4
 0042A1B6    test        dl,dl
>0042A1B8    je          0042A1C2
 0042A1BA    add         esp,0FFFFFFF0
 0042A1BD    call        @ClassCreate
 0042A1C2    mov         dword ptr [ebp-0C],ecx
 0042A1C5    mov         byte ptr [ebp-5],dl
 0042A1C8    mov         dword ptr [ebp-4],eax
 0042A1CB    mov         eax,dword ptr [ebp-4]
 0042A1CE    mov         dl,byte ptr ds:[42A208];0x1 gvar_0042A208
 0042A1D4    mov         byte ptr [eax+24],dl;TComponent.FComponentStyle:TComponentStyle
 0042A1D7    cmp         dword ptr [ebp-0C],0
>0042A1DB    je          0042A1E8
 0042A1DD    mov         edx,dword ptr [ebp-4]
 0042A1E0    mov         eax,dword ptr [ebp-0C]
 0042A1E3    call        0042A450
 0042A1E8    mov         eax,dword ptr [ebp-4]
 0042A1EB    cmp         byte ptr [ebp-5],0
>0042A1EF    je          0042A200
 0042A1F1    call        @AfterConstruction
 0042A1F6    pop         dword ptr fs:[0]
 0042A1FD    add         esp,0C
 0042A200    mov         eax,dword ptr [ebp-4]
 0042A203    mov         esp,ebp
 0042A205    pop         ebp
 0042A206    ret
*}
end;

//0042A20C
destructor TComponent.Destroy;
begin
{*
 0042A20C    push        ebp
 0042A20D    mov         ebp,esp
 0042A20F    add         esp,0FFFFFFF8
 0042A212    push        ebx
 0042A213    call        @BeforeDestruction
 0042A218    mov         byte ptr [ebp-5],dl
 0042A21B    mov         dword ptr [ebp-4],eax
 0042A21E    mov         eax,dword ptr [ebp-4]
 0042A221    call        0042A578
 0042A226    mov         eax,dword ptr [ebp-4]
 0042A229    cmp         dword ptr [eax+14],0
>0042A22D    je          0042A270
>0042A22F    jmp         0042A250
 0042A231    mov         eax,dword ptr [ebp-4]
 0042A234    mov         eax,dword ptr [eax+14]
 0042A237    mov         edx,dword ptr [eax+8]
 0042A23A    dec         edx
 0042A23B    mov         eax,dword ptr [ebp-4]
 0042A23E    mov         eax,dword ptr [eax+14]
 0042A241    call        TList.Get
 0042A246    mov         cl,1
 0042A248    mov         edx,dword ptr [ebp-4]
 0042A24B    mov         ebx,dword ptr [eax]
 0042A24D    call        dword ptr [ebx+10]
 0042A250    mov         eax,dword ptr [ebp-4]
 0042A253    cmp         dword ptr [eax+14],0
>0042A257    je          0042A265
 0042A259    mov         eax,dword ptr [ebp-4]
 0042A25C    mov         eax,dword ptr [eax+14]
 0042A25F    cmp         dword ptr [eax+8],0
>0042A263    jg          0042A231
 0042A265    mov         eax,dword ptr [ebp-4]
 0042A268    add         eax,14
 0042A26B    call        FreeAndNil
 0042A270    mov         eax,dword ptr [ebp-4]
 0042A273    call        0042A508
 0042A278    mov         eax,dword ptr [ebp-4]
 0042A27B    cmp         dword ptr [eax+4],0
>0042A27F    je          0042A28F
 0042A281    mov         eax,dword ptr [ebp-4]
 0042A284    mov         eax,dword ptr [eax+4]
 0042A287    mov         edx,dword ptr [ebp-4]
 0042A28A    call        0042A4C0
 0042A28F    mov         dl,byte ptr [ebp-5]
 0042A292    and         dl,0FC
 0042A295    mov         eax,dword ptr [ebp-4]
 0042A298    call        TPersistent.Destroy
 0042A29D    cmp         byte ptr [ebp-5],0
>0042A2A1    jle         0042A2AB
 0042A2A3    mov         eax,dword ptr [ebp-4]
 0042A2A6    call        @ClassDestroy
 0042A2AB    pop         ebx
 0042A2AC    pop         ecx
 0042A2AD    pop         ecx
 0042A2AE    pop         ebp
 0042A2AF    ret
*}
end;

//0042A2B0
procedure TComponent.BeforeDestruction;
begin
{*
 0042A2B0    push        ebp
 0042A2B1    mov         ebp,esp
 0042A2B3    push        ecx
 0042A2B4    mov         dword ptr [ebp-4],eax
 0042A2B7    mov         eax,dword ptr [ebp-4]
 0042A2BA    test        byte ptr [eax+1C],8
>0042A2BE    jne         0042A2C8
 0042A2C0    mov         eax,dword ptr [ebp-4]
 0042A2C3    call        0042A578
 0042A2C8    pop         ecx
 0042A2C9    pop         ebp
 0042A2CA    ret
*}
end;

//0042A2CC
procedure sub_0042A2CC(?:TComponent; ?:TComponent);
begin
{*
 0042A2CC    push        ebp
 0042A2CD    mov         ebp,esp
 0042A2CF    add         esp,0FFFFFFF8
 0042A2D2    mov         dword ptr [ebp-8],edx
 0042A2D5    mov         dword ptr [ebp-4],eax
 0042A2D8    mov         eax,dword ptr [ebp-4]
 0042A2DB    cmp         dword ptr [eax+4],0
>0042A2DF    je          0042A2EF
 0042A2E1    mov         eax,dword ptr [ebp-8]
 0042A2E4    mov         eax,dword ptr [eax+4]
 0042A2E7    mov         edx,dword ptr [ebp-4]
 0042A2EA    cmp         eax,dword ptr [edx+4]
>0042A2ED    je          0042A335
 0042A2EF    mov         eax,dword ptr [ebp-4]
 0042A2F2    cmp         dword ptr [eax+14],0
>0042A2F6    jne         0042A30A
 0042A2F8    mov         dl,1
 0042A2FA    mov         eax,[0041D46C];TList
 0042A2FF    call        TObject.Create;TList.Create
 0042A304    mov         edx,dword ptr [ebp-4]
 0042A307    mov         dword ptr [edx+14],eax
 0042A30A    mov         edx,dword ptr [ebp-8]
 0042A30D    mov         eax,dword ptr [ebp-4]
 0042A310    mov         eax,dword ptr [eax+14]
 0042A313    call        004202BC
 0042A318    test        eax,eax
>0042A31A    jge         0042A335
 0042A31C    mov         edx,dword ptr [ebp-8]
 0042A31F    mov         eax,dword ptr [ebp-4]
 0042A322    mov         eax,dword ptr [eax+14]
 0042A325    call        TList.Add
 0042A32A    mov         edx,dword ptr [ebp-4]
 0042A32D    mov         eax,dword ptr [ebp-8]
 0042A330    call        0042A2CC
 0042A335    mov         eax,dword ptr [ebp-4]
 0042A338    or          word ptr [eax+1C],100
 0042A33E    pop         ecx
 0042A33F    pop         ecx
 0042A340    pop         ebp
 0042A341    ret
*}
end;

//0042A3C4
{*procedure sub_0042A3C4(?:?; ?:TComponent);
begin
 0042A3C4    push        ebp
 0042A3C5    mov         ebp,esp
 0042A3C7    add         esp,0FFFFFFF8
 0042A3CA    mov         dword ptr [ebp-8],edx
 0042A3CD    mov         dword ptr [ebp-4],eax
 0042A3D0    mov         eax,dword ptr [ebp-4]
 0042A3D3    cmp         dword ptr [eax+10],0
>0042A3D7    jne         0042A3EB
 0042A3D9    mov         dl,1
 0042A3DB    mov         eax,[0041D46C];TList
 0042A3E0    call        TObject.Create;TList.Create
 0042A3E5    mov         edx,dword ptr [ebp-4]
 0042A3E8    mov         dword ptr [edx+10],eax
 0042A3EB    mov         edx,dword ptr [ebp-8]
 0042A3EE    mov         eax,dword ptr [ebp-4]
 0042A3F1    mov         eax,dword ptr [eax+10]
 0042A3F4    call        TList.Add
 0042A3F9    mov         eax,dword ptr [ebp-4]
 0042A3FC    mov         edx,dword ptr [ebp-8]
 0042A3FF    mov         dword ptr [edx+4],eax
 0042A402    pop         ecx
 0042A403    pop         ecx
 0042A404    pop         ebp
 0042A405    ret
end;*}

//0042A408
{*procedure sub_0042A408(?:?; ?:?);
begin
 0042A408    push        ebp
 0042A409    mov         ebp,esp
 0042A40B    add         esp,0FFFFFFF8
 0042A40E    mov         dword ptr [ebp-8],edx
 0042A411    mov         dword ptr [ebp-4],eax
 0042A414    mov         eax,dword ptr [ebp-8]
 0042A417    xor         edx,edx
 0042A419    mov         dword ptr [eax+4],edx
 0042A41C    mov         edx,dword ptr [ebp-8]
 0042A41F    mov         eax,dword ptr [ebp-4]
 0042A422    mov         eax,dword ptr [eax+10]
 0042A425    call        004204F0
 0042A42A    mov         eax,dword ptr [ebp-4]
 0042A42D    mov         eax,dword ptr [eax+10]
 0042A430    cmp         dword ptr [eax+8],0
>0042A434    jne         0042A449
 0042A436    mov         eax,dword ptr [ebp-4]
 0042A439    mov         eax,dword ptr [eax+10]
 0042A43C    call        TObject.Free
 0042A441    mov         eax,dword ptr [ebp-4]
 0042A444    xor         edx,edx
 0042A446    mov         dword ptr [eax+10],edx
 0042A449    pop         ecx
 0042A44A    pop         ecx
 0042A44B    pop         ebp
 0042A44C    ret
end;*}

//0042A450
{*procedure sub_0042A450(?:?; ?:TComponent);
begin
 0042A450    push        ebp
 0042A451    mov         ebp,esp
 0042A453    add         esp,0FFFFFFF8
 0042A456    push        ebx
 0042A457    push        esi
 0042A458    mov         dword ptr [ebp-8],edx
 0042A45B    mov         dword ptr [ebp-4],eax
 0042A45E    mov         edx,dword ptr [ebp-4]
 0042A461    mov         eax,dword ptr [ebp-8]
 0042A464    mov         si,0FFF5
 0042A468    call        @CallDynaInst;TComponent.sub_0042A958
 0042A46D    mov         eax,dword ptr [ebp-8]
 0042A470    mov         eax,dword ptr [eax+8];TComponent.Name:TComponentName
 0042A473    push        eax
 0042A474    xor         ecx,ecx
 0042A476    mov         edx,dword ptr [ebp-8]
 0042A479    mov         eax,dword ptr [ebp-4]
 0042A47C    mov         ebx,dword ptr [eax]
 0042A47E    call        dword ptr [ebx+20]
 0042A481    mov         edx,dword ptr [ebp-8]
 0042A484    mov         eax,dword ptr [ebp-4]
 0042A487    call        0042A3C4
 0042A48C    mov         dl,1
 0042A48E    mov         eax,dword ptr [ebp-8]
 0042A491    call        0042AC30
 0042A496    mov         eax,dword ptr [ebp-4]
 0042A499    test        byte ptr [eax+1C],10
>0042A49D    je          0042A4AB
 0042A49F    mov         cl,1
 0042A4A1    mov         dl,1
 0042A4A3    mov         eax,dword ptr [ebp-8]
 0042A4A6    call        0042ABC8
 0042A4AB    xor         ecx,ecx
 0042A4AD    mov         edx,dword ptr [ebp-8]
 0042A4B0    mov         eax,dword ptr [ebp-4]
 0042A4B3    mov         ebx,dword ptr [eax]
 0042A4B5    call        dword ptr [ebx+10]
 0042A4B8    pop         esi
 0042A4B9    pop         ebx
 0042A4BA    pop         ecx
 0042A4BB    pop         ecx
 0042A4BC    pop         ebp
 0042A4BD    ret
end;*}

//0042A4C0
{*procedure sub_0042A4C0(?:?; ?:?);
begin
 0042A4C0    push        ebp
 0042A4C1    mov         ebp,esp
 0042A4C3    add         esp,0FFFFFFF8
 0042A4C6    push        ebx
 0042A4C7    mov         dword ptr [ebp-8],edx
 0042A4CA    mov         dword ptr [ebp-4],eax
 0042A4CD    push        0
 0042A4CF    mov         eax,dword ptr [ebp-8]
 0042A4D2    mov         ecx,dword ptr [eax+8]
 0042A4D5    mov         edx,dword ptr [ebp-8]
 0042A4D8    mov         eax,dword ptr [ebp-4]
 0042A4DB    mov         ebx,dword ptr [eax]
 0042A4DD    call        dword ptr [ebx+20]
 0042A4E0    mov         cl,1
 0042A4E2    mov         edx,dword ptr [ebp-8]
 0042A4E5    mov         eax,dword ptr [ebp-4]
 0042A4E8    mov         ebx,dword ptr [eax]
 0042A4EA    call        dword ptr [ebx+10]
 0042A4ED    xor         edx,edx
 0042A4EF    mov         eax,dword ptr [ebp-8]
 0042A4F2    call        0042AC30
 0042A4F7    mov         edx,dword ptr [ebp-8]
 0042A4FA    mov         eax,dword ptr [ebp-4]
 0042A4FD    call        0042A408
 0042A502    pop         ebx
 0042A503    pop         ecx
 0042A504    pop         ecx
 0042A505    pop         ebp
 0042A506    ret
end;*}

//0042A508
{*procedure sub_0042A508(?:?);
begin
 0042A508    push        ebp
 0042A509    mov         ebp,esp
 0042A50B    add         esp,0FFFFFFF8
 0042A50E    mov         dword ptr [ebp-4],eax
>0042A511    jmp         0042A565
 0042A513    mov         eax,dword ptr [ebp-4]
 0042A516    mov         eax,dword ptr [eax+10]
 0042A519    call        004203B8
 0042A51E    mov         dword ptr [ebp-8],eax
 0042A521    mov         eax,dword ptr [ebp-8]
 0042A524    test        byte ptr [eax+1D],1
>0042A528    jne         0042A543
 0042A52A    mov         ax,[0042A574];0x210 gvar_0042A574
 0042A530    mov         edx,dword ptr [ebp-4]
 0042A533    and         ax,word ptr [edx+1C]
 0042A537    mov         dx,word ptr ds:[42A574];0x210 gvar_0042A574
 0042A53E    cmp         dx,ax
>0042A541    jne         0042A550
 0042A543    mov         edx,dword ptr [ebp-8]
 0042A546    mov         eax,dword ptr [ebp-4]
 0042A549    call        0042A4C0
>0042A54E    jmp         0042A55B
 0042A550    mov         edx,dword ptr [ebp-8]
 0042A553    mov         eax,dword ptr [ebp-4]
 0042A556    call        0042A408
 0042A55B    mov         dl,1
 0042A55D    mov         eax,dword ptr [ebp-8]
 0042A560    mov         ecx,dword ptr [eax]
 0042A562    call        dword ptr [ecx-4]
 0042A565    mov         eax,dword ptr [ebp-4]
 0042A568    cmp         dword ptr [eax+10],0
>0042A56C    jne         0042A513
 0042A56E    pop         ecx
 0042A56F    pop         ecx
 0042A570    pop         ebp
 0042A571    ret
end;*}

//0042A578
procedure sub_0042A578(?:Pointer);
begin
{*
 0042A578    push        ebp
 0042A579    mov         ebp,esp
 0042A57B    add         esp,0FFFFFFF4
 0042A57E    mov         dword ptr [ebp-4],eax
 0042A581    mov         eax,dword ptr [ebp-4]
 0042A584    test        byte ptr [eax+1C],8
>0042A588    jne         0042A5CF
 0042A58A    mov         eax,dword ptr [ebp-4]
 0042A58D    or          word ptr [eax+1C],8
 0042A592    mov         eax,dword ptr [ebp-4]
 0042A595    cmp         dword ptr [eax+10],0
>0042A599    je          0042A5CF
 0042A59B    mov         eax,dword ptr [ebp-4]
 0042A59E    mov         eax,dword ptr [eax+10]
 0042A5A1    mov         eax,dword ptr [eax+8]
 0042A5A4    dec         eax
 0042A5A5    test        eax,eax
>0042A5A7    jl          0042A5CF
 0042A5A9    inc         eax
 0042A5AA    mov         dword ptr [ebp-0C],eax
 0042A5AD    mov         dword ptr [ebp-8],0
 0042A5B4    mov         edx,dword ptr [ebp-8]
 0042A5B7    mov         eax,dword ptr [ebp-4]
 0042A5BA    mov         eax,dword ptr [eax+10]
 0042A5BD    call        TList.Get
 0042A5C2    call        0042A578
 0042A5C7    inc         dword ptr [ebp-8]
 0042A5CA    dec         dword ptr [ebp-0C]
>0042A5CD    jne         0042A5B4
 0042A5CF    mov         esp,ebp
 0042A5D1    pop         ebp
 0042A5D2    ret
*}
end;

//0042A5D4
{*procedure sub_0042A5D4(?:?; ?:?);
begin
 0042A5D4    push        ebp
 0042A5D5    mov         ebp,esp
 0042A5D7    add         esp,0FFFFFFF8
 0042A5DA    mov         dword ptr [ebp-8],edx
 0042A5DD    mov         dword ptr [ebp-4],eax
 0042A5E0    mov         eax,dword ptr [ebp-4]
 0042A5E3    cmp         dword ptr [eax+14],0
>0042A5E7    je          0042A616
 0042A5E9    mov         edx,dword ptr [ebp-8]
 0042A5EC    mov         eax,dword ptr [ebp-4]
 0042A5EF    mov         eax,dword ptr [eax+14]
 0042A5F2    call        004204F0
 0042A5F7    mov         eax,dword ptr [ebp-4]
 0042A5FA    mov         eax,dword ptr [eax+14]
 0042A5FD    cmp         dword ptr [eax+8],0
>0042A601    jne         0042A616
 0042A603    mov         eax,dword ptr [ebp-4]
 0042A606    mov         eax,dword ptr [eax+14]
 0042A609    call        TObject.Free
 0042A60E    mov         eax,dword ptr [ebp-4]
 0042A611    xor         edx,edx
 0042A613    mov         dword ptr [eax+14],edx
 0042A616    pop         ecx
 0042A617    pop         ecx
 0042A618    pop         ebp
 0042A619    ret
end;*}

//0042A61C
procedure sub_0042A61C(?:TComponent; ?:TComponent);
begin
{*
 0042A61C    push        ebp
 0042A61D    mov         ebp,esp
 0042A61F    add         esp,0FFFFFFF8
 0042A622    mov         dword ptr [ebp-8],edx
 0042A625    mov         dword ptr [ebp-4],eax
 0042A628    mov         edx,dword ptr [ebp-8]
 0042A62B    mov         eax,dword ptr [ebp-4]
 0042A62E    call        0042A5D4
 0042A633    mov         edx,dword ptr [ebp-4]
 0042A636    mov         eax,dword ptr [ebp-8]
 0042A639    call        0042A5D4
 0042A63E    pop         ecx
 0042A63F    pop         ecx
 0042A640    pop         ebp
 0042A641    ret
*}
end;

//0042A644
{*procedure sub_0042A644(?:?; ?:?);
begin
 0042A644    push        ebp
 0042A645    mov         ebp,esp
 0042A647    add         esp,0FFFFFFF0
 0042A64A    push        ebx
 0042A64B    mov         byte ptr [ebp-9],cl
 0042A64E    mov         dword ptr [ebp-8],edx
 0042A651    mov         dword ptr [ebp-4],eax
 0042A654    cmp         byte ptr [ebp-9],1
>0042A658    jne         0042A66B
 0042A65A    cmp         dword ptr [ebp-8],0
>0042A65E    je          0042A66B
 0042A660    mov         edx,dword ptr [ebp-8]
 0042A663    mov         eax,dword ptr [ebp-4]
 0042A666    call        0042A61C
 0042A66B    mov         eax,dword ptr [ebp-4]
 0042A66E    cmp         dword ptr [eax+10],0;TComponent.FComponents:TList
>0042A672    je          0042A6C4
 0042A674    mov         eax,dword ptr [ebp-4]
 0042A677    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 0042A67A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0042A67D    dec         eax
 0042A67E    mov         dword ptr [ebp-10],eax
 0042A681    cmp         dword ptr [ebp-10],0
>0042A685    jl          0042A6C4
 0042A687    mov         edx,dword ptr [ebp-10]
 0042A68A    mov         eax,dword ptr [ebp-4]
 0042A68D    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 0042A690    call        TList.Get
 0042A695    mov         cl,byte ptr [ebp-9]
 0042A698    mov         edx,dword ptr [ebp-8]
 0042A69B    mov         ebx,dword ptr [eax]
 0042A69D    call        dword ptr [ebx+10]
 0042A6A0    dec         dword ptr [ebp-10]
 0042A6A3    mov         eax,dword ptr [ebp-4]
 0042A6A6    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 0042A6A9    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0042A6AC    cmp         eax,dword ptr [ebp-10]
>0042A6AF    jg          0042A6BE
 0042A6B1    mov         eax,dword ptr [ebp-4]
 0042A6B4    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 0042A6B7    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0042A6BA    dec         eax
 0042A6BB    mov         dword ptr [ebp-10],eax
 0042A6BE    cmp         dword ptr [ebp-10],0
>0042A6C2    jge         0042A687
 0042A6C4    pop         ebx
 0042A6C5    mov         esp,ebp
 0042A6C7    pop         ebp
 0042A6C8    ret
end;*}

//0042A6CC
procedure TComponent.DefineProperties(Filer:TFiler);
begin
{*
 0042A6CC    push        ebp
 0042A6CD    mov         ebp,esp
 0042A6CF    add         esp,0FFFFFFF0
 0042A6D2    push        ebx
 0042A6D3    mov         dword ptr [ebp-0C],edx
 0042A6D6    mov         dword ptr [ebp-8],eax
 0042A6D9    xor         eax,eax
 0042A6DB    mov         dword ptr [ebp-4],eax
 0042A6DE    mov         eax,dword ptr [ebp-0C]
 0042A6E1    mov         eax,dword ptr [eax+20]
 0042A6E4    mov         dword ptr [ebp-10],eax
 0042A6E7    cmp         dword ptr [ebp-10],0
>0042A6EB    je          0042A6F6
 0042A6ED    mov         eax,dword ptr [ebp-10]
 0042A6F0    mov         eax,dword ptr [eax+18]
 0042A6F3    mov         dword ptr [ebp-4],eax
 0042A6F6    mov         eax,dword ptr [ebp-8]
 0042A6F9    push        eax
 0042A6FA    push        42A344
 0042A6FF    mov         eax,dword ptr [ebp-8]
 0042A702    push        eax
 0042A703    push        42A384
 0042A708    mov         eax,dword ptr [ebp-8]
 0042A70B    mov         ax,word ptr [eax+18]
 0042A70F    cmp         ax,word ptr [ebp-4]
 0042A713    setne       cl
 0042A716    mov         edx,42A760;'Left'
 0042A71B    mov         eax,dword ptr [ebp-0C]
 0042A71E    mov         ebx,dword ptr [eax]
 0042A720    call        dword ptr [ebx+4]
 0042A723    mov         eax,dword ptr [ebp-8]
 0042A726    push        eax
 0042A727    push        42A364
 0042A72C    mov         eax,dword ptr [ebp-8]
 0042A72F    push        eax
 0042A730    push        42A3A4
 0042A735    mov         ax,word ptr [ebp-2]
 0042A739    mov         edx,dword ptr [ebp-8]
 0042A73C    cmp         ax,word ptr [edx+1A]
 0042A740    setne       cl
 0042A743    mov         edx,42A770;'Top'
 0042A748    mov         eax,dword ptr [ebp-0C]
 0042A74B    mov         ebx,dword ptr [eax]
 0042A74D    call        dword ptr [ebx+4]
 0042A750    pop         ebx
 0042A751    mov         esp,ebp
 0042A753    pop         ebp
 0042A754    ret
*}
end;

//0042A774
procedure TComponent.sub_0042A774;
begin
{*
 0042A774    push        ebp
 0042A775    mov         ebp,esp
 0042A777    add         esp,0FFFFFFF8
 0042A77A    mov         dword ptr [ebp-4],eax
 0042A77D    mov         byte ptr [ebp-5],0
 0042A781    mov         al,byte ptr [ebp-5]
 0042A784    pop         ecx
 0042A785    pop         ecx
 0042A786    pop         ebp
 0042A787    ret
*}
end;

//0042A788
{*procedure TComponent.sub_0042A788(?:?);
begin
 0042A788    push        ebp
 0042A789    mov         ebp,esp
 0042A78B    add         esp,0FFFFFFF8
 0042A78E    mov         dword ptr [ebp-8],edx
 0042A791    mov         dword ptr [ebp-4],eax
 0042A794    pop         ecx
 0042A795    pop         ecx
 0042A796    pop         ebp
 0042A797    ret         8
end;*}

//0042A79C
procedure TComponent.sub_0042A79C;
begin
{*
 0042A79C    push        ebp
 0042A79D    mov         ebp,esp
 0042A79F    add         esp,0FFFFFFF8
 0042A7A2    mov         dword ptr [ebp-4],eax
 0042A7A5    xor         eax,eax
 0042A7A7    mov         dword ptr [ebp-8],eax
 0042A7AA    mov         eax,dword ptr [ebp-8]
 0042A7AD    pop         ecx
 0042A7AE    pop         ecx
 0042A7AF    pop         ebp
 0042A7B0    ret
*}
end;

//0042A7B4
procedure TComponent.sub_0042A7B4;
begin
{*
 0042A7B4    push        ebp
 0042A7B5    mov         ebp,esp
 0042A7B7    add         esp,0FFFFFFF8
 0042A7BA    mov         dword ptr [ebp-4],eax
 0042A7BD    mov         eax,dword ptr [ebp-4]
 0042A7C0    mov         dword ptr [ebp-8],eax
 0042A7C3    mov         eax,dword ptr [ebp-8]
 0042A7C6    pop         ecx
 0042A7C7    pop         ecx
 0042A7C8    pop         ebp
 0042A7C9    ret
*}
end;

//0042A7CC
{*procedure TComponent.sub_00420C04(?:?);
begin
 0042A7CC    push        ebp
 0042A7CD    mov         ebp,esp
 0042A7CF    add         esp,0FFFFFFF8
 0042A7D2    mov         dword ptr [ebp-8],edx
 0042A7D5    mov         dword ptr [ebp-4],eax
 0042A7D8    mov         eax,dword ptr [ebp-8]
 0042A7DB    mov         edx,dword ptr [ebp-4]
 0042A7DE    mov         edx,dword ptr [edx+8];TComponent.Name:TComponentName
 0042A7E1    call        @LStrAsg
 0042A7E6    pop         ecx
 0042A7E7    pop         ecx
 0042A7E8    pop         ebp
 0042A7E9    ret
end;*}

//0042A7EC
procedure TComponent.sub_00420CBC;
begin
{*
 0042A7EC    push        ebp
 0042A7ED    mov         ebp,esp
 0042A7EF    add         esp,0FFFFFFF8
 0042A7F2    mov         dword ptr [ebp-4],eax
 0042A7F5    mov         eax,dword ptr [ebp-4]
 0042A7F8    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 0042A7FB    mov         dword ptr [ebp-8],eax
 0042A7FE    mov         eax,dword ptr [ebp-8]
 0042A801    pop         ecx
 0042A802    pop         ecx
 0042A803    pop         ebp
 0042A804    ret
*}
end;

//0042A808
{*procedure TComponent.sub_0042A808(?:?; ?:?);
begin
 0042A808    push        ebp
 0042A809    mov         ebp,esp
 0042A80B    add         esp,0FFFFFFF4
 0042A80E    mov         dword ptr [ebp-0C],ecx
 0042A811    mov         dword ptr [ebp-8],edx
 0042A814    mov         dword ptr [ebp-4],eax
 0042A817    mov         esp,ebp
 0042A819    pop         ebp
 0042A81A    ret
end;*}

//0042A81C
procedure TComponent.sub_0042A81C;
begin
{*
 0042A81C    push        ebp
 0042A81D    mov         ebp,esp
 0042A81F    add         esp,0FFFFFFF8
 0042A822    mov         dword ptr [ebp-4],eax
 0042A825    xor         eax,eax
 0042A827    mov         dword ptr [ebp-8],eax
 0042A82A    mov         eax,dword ptr [ebp-8]
 0042A82D    pop         ecx
 0042A82E    pop         ecx
 0042A82F    pop         ebp
 0042A830    ret
*}
end;

//0042A834
{*procedure TComponent.sub_0042A834(?:?);
begin
 0042A834    push        ebp
 0042A835    mov         ebp,esp
 0042A837    add         esp,0FFFFFFF8
 0042A83A    mov         dword ptr [ebp-8],edx
 0042A83D    mov         dword ptr [ebp-4],eax
 0042A840    pop         ecx
 0042A841    pop         ecx
 0042A842    pop         ebp
 0042A843    ret
end;*}

//0042A844
procedure TComponent.sub_0042A844;
begin
{*
 0042A844    push        ebp
 0042A845    mov         ebp,esp
 0042A847    push        ecx
 0042A848    mov         dword ptr [ebp-4],eax
 0042A84B    mov         eax,dword ptr [ebp-4]
 0042A84E    or          word ptr [eax+1C],40;TComponent.FComponentState:TComponentState
 0042A853    pop         ecx
 0042A854    pop         ebp
 0042A855    ret
*}
end;

//0042A858
procedure TComponent.sub_0042A858;
begin
{*
 0042A858    push        ebp
 0042A859    mov         ebp,esp
 0042A85B    push        ecx
 0042A85C    mov         dword ptr [ebp-4],eax
 0042A85F    mov         eax,dword ptr [ebp-4]
 0042A862    and         word ptr [eax+1C],0FFFFFFBF;TComponent.FComponentState:TComponentState
 0042A867    pop         ecx
 0042A868    pop         ebp
 0042A869    ret
*}
end;

//0042A86C
procedure sub_0042A86C;
begin
{*
 0042A86C    push        ebp
 0042A86D    mov         ebp,esp
 0042A86F    push        ecx
 0042A870    mov         dword ptr [ebp-4],eax
 0042A873    mov         eax,dword ptr [ebp-4]
 0042A876    and         word ptr [eax+1C],0FFFFFFFE;TComponent.FComponentState:TComponentState
 0042A87B    pop         ecx
 0042A87C    pop         ebp
 0042A87D    ret
*}
end;

//0042A880
procedure TComponent.sub_0042A880;
begin
{*
 0042A880    push        ebp
 0042A881    mov         ebp,esp
 0042A883    push        ecx
 0042A884    mov         dword ptr [ebp-4],eax
 0042A887    pop         ecx
 0042A888    pop         ebp
 0042A889    ret
*}
end;

//0042A88C
{*procedure sub_0042A88C(?:?);
begin
 0042A88C    push        ebp
 0042A88D    mov         ebp,esp
 0042A88F    add         esp,0FFFFFFF8
 0042A892    mov         dword ptr [ebp-8],edx
 0042A895    mov         dword ptr [ebp-4],eax
 0042A898    mov         edx,dword ptr [ebp-4]
 0042A89B    mov         eax,dword ptr [ebp-8]
 0042A89E    call        00425A98
 0042A8A3    pop         ecx
 0042A8A4    pop         ecx
 0042A8A5    pop         ebp
 0042A8A6    ret
end;*}

//0042A8A8
{*procedure sub_0042A8A8(?:?);
begin
 0042A8A8    push        ebp
 0042A8A9    mov         ebp,esp
 0042A8AB    add         esp,0FFFFFFF8
 0042A8AE    mov         dword ptr [ebp-8],edx
 0042A8B1    mov         dword ptr [ebp-4],eax
 0042A8B4    mov         edx,dword ptr [ebp-4]
 0042A8B7    mov         eax,dword ptr [ebp-8]
 0042A8BA    mov         ecx,dword ptr [eax]
 0042A8BC    call        dword ptr [ecx+10]
 0042A8BF    pop         ecx
 0042A8C0    pop         ecx
 0042A8C1    pop         ebp
 0042A8C2    ret
end;*}

//0042A8C4
{*procedure sub_0042A8C4(?:?; ?:?; ?:?);
begin
 0042A8C4    push        ebp
 0042A8C5    mov         ebp,esp
 0042A8C7    add         esp,0FFFFFFEC
 0042A8CA    push        ebx
 0042A8CB    mov         dword ptr [ebp-0C],ecx
 0042A8CE    mov         dword ptr [ebp-8],edx
 0042A8D1    mov         dword ptr [ebp-4],eax
 0042A8D4    cmp         dword ptr [ebp-8],0
>0042A8D8    je          0042A92A
 0042A8DA    mov         edx,dword ptr [ebp+8]
 0042A8DD    mov         eax,dword ptr [ebp-0C]
 0042A8E0    call        SameText
 0042A8E5    test        al,al
>0042A8E7    jne         0042A92A
 0042A8E9    mov         eax,dword ptr [ebp-8]
 0042A8EC    mov         eax,dword ptr [eax+4]
 0042A8EF    cmp         eax,dword ptr [ebp-4]
>0042A8F2    jne         0042A92A
 0042A8F4    mov         edx,dword ptr [ebp+8]
 0042A8F7    mov         eax,dword ptr [ebp-4]
 0042A8FA    call        0042A98C
 0042A8FF    test        eax,eax
>0042A901    je          0042A92A
 0042A903    mov         eax,dword ptr [ebp+8]
 0042A906    mov         dword ptr [ebp-14],eax
 0042A909    mov         byte ptr [ebp-10],0B
 0042A90D    lea         eax,[ebp-14]
 0042A910    push        eax
 0042A911    push        0
 0042A913    mov         ecx,dword ptr ds:[56E370];^SDuplicateName:TResStringRec
 0042A919    mov         dl,1
 0042A91B    mov         eax,[0041D354];EComponentError
 0042A920    call        Exception.CreateResFmt;EComponentError.Create
 0042A925    call        @RaiseExcept
 0042A92A    mov         eax,dword ptr [ebp-4]
 0042A92D    test        byte ptr [eax+1C],10;TComponent.FComponentState:TComponentState
>0042A931    je          0042A951
 0042A933    mov         eax,dword ptr [ebp-4]
 0042A936    cmp         dword ptr [eax+4],0;TComponent.FOwner:TComponent
>0042A93A    je          0042A951
 0042A93C    mov         eax,dword ptr [ebp+8]
 0042A93F    push        eax
 0042A940    mov         ecx,dword ptr [ebp-0C]
 0042A943    mov         edx,dword ptr [ebp-8]
 0042A946    mov         eax,dword ptr [ebp-4]
 0042A949    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 0042A94C    mov         ebx,dword ptr [eax]
 0042A94E    call        dword ptr [ebx+20];TComponent.sub_0042A8C4
 0042A951    pop         ebx
 0042A952    mov         esp,ebp
 0042A954    pop         ebp
 0042A955    ret         4
end;*}

//0042A958
{*procedure TComponent.sub_0042A958(?:?);
begin
 0042A958    push        ebp
 0042A959    mov         ebp,esp
 0042A95B    add         esp,0FFFFFFF8
 0042A95E    push        esi
 0042A95F    mov         dword ptr [ebp-8],edx
 0042A962    mov         dword ptr [ebp-4],eax
 0042A965    mov         edx,dword ptr [ebp-4]
 0042A968    mov         eax,dword ptr [ebp-8]
 0042A96B    mov         si,0FFF4
 0042A96F    call        @CallDynaInst
 0042A974    pop         esi
 0042A975    pop         ecx
 0042A976    pop         ecx
 0042A977    pop         ebp
 0042A978    ret
end;*}

//0042A97C
{*procedure TComponent.sub_0042A97C(?:?);
begin
 0042A97C    push        ebp
 0042A97D    mov         ebp,esp
 0042A97F    add         esp,0FFFFFFF8
 0042A982    mov         dword ptr [ebp-8],edx
 0042A985    mov         dword ptr [ebp-4],eax
 0042A988    pop         ecx
 0042A989    pop         ecx
 0042A98A    pop         ebp
 0042A98B    ret
end;*}

//0042A98C
{*function sub_0042A98C(?:TComponent; ?:AnsiString):?;
begin
 0042A98C    push        ebp
 0042A98D    mov         ebp,esp
 0042A98F    add         esp,0FFFFFFEC
 0042A992    mov         dword ptr [ebp-8],edx
 0042A995    mov         dword ptr [ebp-4],eax
 0042A998    cmp         dword ptr [ebp-8],0
>0042A99C    je          0042A9EB
 0042A99E    mov         eax,dword ptr [ebp-4]
 0042A9A1    cmp         dword ptr [eax+10],0;TComponent.FComponents:TList
>0042A9A5    je          0042A9EB
 0042A9A7    mov         eax,dword ptr [ebp-4]
 0042A9AA    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 0042A9AD    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0042A9B0    dec         eax
 0042A9B1    test        eax,eax
>0042A9B3    jl          0042A9EB
 0042A9B5    inc         eax
 0042A9B6    mov         dword ptr [ebp-14],eax
 0042A9B9    mov         dword ptr [ebp-10],0
 0042A9C0    mov         eax,dword ptr [ebp-4]
 0042A9C3    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 0042A9C6    mov         edx,dword ptr [ebp-10]
 0042A9C9    call        TList.Get
 0042A9CE    mov         dword ptr [ebp-0C],eax
 0042A9D1    mov         eax,dword ptr [ebp-0C]
 0042A9D4    mov         eax,dword ptr [eax+8]
 0042A9D7    mov         edx,dword ptr [ebp-8]
 0042A9DA    call        SameText
 0042A9DF    test        al,al
>0042A9E1    jne         0042A9F0
 0042A9E3    inc         dword ptr [ebp-10]
 0042A9E6    dec         dword ptr [ebp-14]
>0042A9E9    jne         0042A9C0
 0042A9EB    xor         eax,eax
 0042A9ED    mov         dword ptr [ebp-0C],eax
 0042A9F0    mov         eax,dword ptr [ebp-0C]
 0042A9F3    mov         esp,ebp
 0042A9F5    pop         ebp
 0042A9F6    ret
end;*}

//0042A9F8
procedure TComponent.SetName(Value:TComponentName);
begin
{*
 0042A9F8    push        ebp
 0042A9F9    mov         ebp,esp
 0042A9FB    add         esp,0FFFFFFF0
 0042A9FE    push        ebx
 0042A9FF    mov         dword ptr [ebp-8],edx
 0042AA02    mov         dword ptr [ebp-4],eax
 0042AA05    mov         eax,dword ptr [ebp-4]
 0042AA08    mov         eax,dword ptr [eax+8];TComponent.Name:TComponentName
 0042AA0B    mov         edx,dword ptr [ebp-8]
 0042AA0E    call        @LStrCmp
>0042AA13    je          0042AAA8
 0042AA19    cmp         dword ptr [ebp-8],0
>0042AA1D    je          0042AA52
 0042AA1F    mov         eax,dword ptr [ebp-8]
 0042AA22    call        0040C234
 0042AA27    test        al,al
>0042AA29    jne         0042AA52
 0042AA2B    mov         eax,dword ptr [ebp-8]
 0042AA2E    mov         dword ptr [ebp-10],eax
 0042AA31    mov         byte ptr [ebp-0C],0B
 0042AA35    lea         eax,[ebp-10]
 0042AA38    push        eax
 0042AA39    push        0
 0042AA3B    mov         ecx,dword ptr ds:[56E2AC];^SInvalidName:TResStringRec
 0042AA41    mov         dl,1
 0042AA43    mov         eax,[0041D354];EComponentError
 0042AA48    call        Exception.CreateResFmt;EComponentError.Create
 0042AA4D    call        @RaiseExcept
 0042AA52    mov         eax,dword ptr [ebp-4]
 0042AA55    cmp         dword ptr [eax+4],0;TComponent.FOwner:TComponent
>0042AA59    je          0042AA75
 0042AA5B    mov         eax,dword ptr [ebp-8]
 0042AA5E    push        eax
 0042AA5F    mov         eax,dword ptr [ebp-4]
 0042AA62    mov         ecx,dword ptr [eax+8];TComponent.Name:TComponentName
 0042AA65    mov         edx,dword ptr [ebp-4]
 0042AA68    mov         eax,dword ptr [ebp-4]
 0042AA6B    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 0042AA6E    mov         ebx,dword ptr [eax]
 0042AA70    call        dword ptr [ebx+20];TComponent.sub_0042A8C4
>0042AA73    jmp         0042AA89
 0042AA75    mov         eax,dword ptr [ebp-8]
 0042AA78    push        eax
 0042AA79    mov         eax,dword ptr [ebp-4]
 0042AA7C    mov         ecx,dword ptr [eax+8];TComponent.Name:TComponentName
 0042AA7F    xor         edx,edx
 0042AA81    mov         eax,dword ptr [ebp-4]
 0042AA84    mov         ebx,dword ptr [eax]
 0042AA86    call        dword ptr [ebx+20];TComponent.sub_0042A8C4
 0042AA89    xor         edx,edx
 0042AA8B    mov         eax,dword ptr [ebp-4]
 0042AA8E    call        0042AC30
 0042AA93    mov         edx,dword ptr [ebp-8]
 0042AA96    mov         eax,dword ptr [ebp-4]
 0042AA99    call        0042AAB0
 0042AA9E    mov         dl,1
 0042AAA0    mov         eax,dword ptr [ebp-4]
 0042AAA3    call        0042AC30
 0042AAA8    pop         ebx
 0042AAA9    mov         esp,ebp
 0042AAAB    pop         ebp
 0042AAAC    ret
*}
end;

//0042AAB0
procedure sub_0042AAB0(?:TComponent; ?:TComponentName);
begin
{*
 0042AAB0    push        ebp
 0042AAB1    mov         ebp,esp
 0042AAB3    add         esp,0FFFFFFF8
 0042AAB6    mov         dword ptr [ebp-8],edx
 0042AAB9    mov         dword ptr [ebp-4],eax
 0042AABC    mov         eax,dword ptr [ebp-4]
 0042AABF    add         eax,8;TComponent.Name:TComponentName
 0042AAC2    mov         edx,dword ptr [ebp-8]
 0042AAC5    call        @LStrAsg
 0042AACA    pop         ecx
 0042AACB    pop         ecx
 0042AACC    pop         ebp
 0042AACD    ret
*}
end;

//0042AAD0
{*function sub_0042AAD0(?:TComponent; ?:?):?;
begin
 0042AAD0    push        ebp
 0042AAD1    mov         ebp,esp
 0042AAD3    add         esp,0FFFFFFF4
 0042AAD6    mov         dword ptr [ebp-8],edx
 0042AAD9    mov         dword ptr [ebp-4],eax
 0042AADC    mov         eax,dword ptr [ebp-4]
 0042AADF    cmp         dword ptr [eax+10],0
>0042AAE3    jne         0042AAF8
 0042AAE5    mov         edx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 0042AAEB    mov         ecx,dword ptr [ebp-8]
 0042AAEE    mov         eax,[0041D46C];TList
 0042AAF3    call        00420170
 0042AAF8    mov         edx,dword ptr [ebp-8]
 0042AAFB    mov         eax,dword ptr [ebp-4]
 0042AAFE    mov         eax,dword ptr [eax+10]
 0042AB01    call        TList.Get
 0042AB06    mov         dword ptr [ebp-0C],eax
 0042AB09    mov         eax,dword ptr [ebp-0C]
 0042AB0C    mov         esp,ebp
 0042AB0E    pop         ebp
 0042AB0F    ret
end;*}

//0042AB10
{*function sub_0042AB10(?:TComponent):?;
begin
 0042AB10    push        ebp
 0042AB11    mov         ebp,esp
 0042AB13    add         esp,0FFFFFFF8
 0042AB16    mov         dword ptr [ebp-4],eax
 0042AB19    mov         eax,dword ptr [ebp-4]
 0042AB1C    cmp         dword ptr [eax+10],0
>0042AB20    je          0042AB30
 0042AB22    mov         eax,dword ptr [ebp-4]
 0042AB25    mov         eax,dword ptr [eax+10]
 0042AB28    mov         eax,dword ptr [eax+8]
 0042AB2B    mov         dword ptr [ebp-8],eax
>0042AB2E    jmp         0042AB35
 0042AB30    xor         eax,eax
 0042AB32    mov         dword ptr [ebp-8],eax
 0042AB35    mov         eax,dword ptr [ebp-8]
 0042AB38    pop         ecx
 0042AB39    pop         ecx
 0042AB3A    pop         ebp
 0042AB3B    ret
end;*}

//0042AB3C
{*procedure sub_0042AB3C(?:?; ?:?);
begin
 0042AB3C    push        ebp
 0042AB3D    mov         ebp,esp
 0042AB3F    add         esp,0FFFFFFF0
 0042AB42    mov         dword ptr [ebp-8],edx
 0042AB45    mov         dword ptr [ebp-4],eax
 0042AB48    mov         eax,dword ptr [ebp-4]
 0042AB4B    cmp         dword ptr [eax+4],0
>0042AB4F    je          0042ABC1
 0042AB51    mov         eax,dword ptr [ebp-4]
 0042AB54    mov         eax,dword ptr [eax+4]
 0042AB57    mov         eax,dword ptr [eax+10]
 0042AB5A    mov         edx,dword ptr [ebp-4]
 0042AB5D    call        004202BC
 0042AB62    mov         dword ptr [ebp-0C],eax
 0042AB65    cmp         dword ptr [ebp-0C],0
>0042AB69    jl          0042ABC1
 0042AB6B    mov         eax,dword ptr [ebp-4]
 0042AB6E    mov         eax,dword ptr [eax+4]
 0042AB71    mov         eax,dword ptr [eax+10]
 0042AB74    mov         eax,dword ptr [eax+8]
 0042AB77    mov         dword ptr [ebp-10],eax
 0042AB7A    cmp         dword ptr [ebp-8],0
>0042AB7E    jge         0042AB85
 0042AB80    xor         eax,eax
 0042AB82    mov         dword ptr [ebp-8],eax
 0042AB85    mov         eax,dword ptr [ebp-8]
 0042AB88    cmp         eax,dword ptr [ebp-10]
>0042AB8B    jl          0042AB94
 0042AB8D    mov         eax,dword ptr [ebp-10]
 0042AB90    dec         eax
 0042AB91    mov         dword ptr [ebp-8],eax
 0042AB94    mov         eax,dword ptr [ebp-8]
 0042AB97    cmp         eax,dword ptr [ebp-0C]
>0042AB9A    je          0042ABC1
 0042AB9C    mov         eax,dword ptr [ebp-4]
 0042AB9F    mov         eax,dword ptr [eax+4]
 0042ABA2    mov         eax,dword ptr [eax+10]
 0042ABA5    mov         edx,dword ptr [ebp-0C]
 0042ABA8    call        00420094
 0042ABAD    mov         eax,dword ptr [ebp-4]
 0042ABB0    mov         eax,dword ptr [eax+4]
 0042ABB3    mov         eax,dword ptr [eax+10]
 0042ABB6    mov         ecx,dword ptr [ebp-4]
 0042ABB9    mov         edx,dword ptr [ebp-8]
 0042ABBC    call        00420308
 0042ABC1    mov         esp,ebp
 0042ABC3    pop         ebp
 0042ABC4    ret
end;*}

//0042ABC8
{*procedure sub_0042ABC8(?:TComponent; ?:?; ?:?);
begin
 0042ABC8    push        ebp
 0042ABC9    mov         ebp,esp
 0042ABCB    add         esp,0FFFFFFF0
 0042ABCE    mov         byte ptr [ebp-6],cl
 0042ABD1    mov         byte ptr [ebp-5],dl
 0042ABD4    mov         dword ptr [ebp-4],eax
 0042ABD7    cmp         byte ptr [ebp-5],0
>0042ABDB    je          0042ABE7
 0042ABDD    mov         eax,dword ptr [ebp-4]
 0042ABE0    or          word ptr [eax+1C],10;TComponent.FComponentState:TComponentState
>0042ABE5    jmp         0042ABEF
 0042ABE7    mov         eax,dword ptr [ebp-4]
 0042ABEA    and         word ptr [eax+1C],0FFFFFFEF;TComponent.FComponentState:TComponentState
 0042ABEF    cmp         byte ptr [ebp-6],0
>0042ABF3    je          0042AC2A
 0042ABF5    mov         eax,dword ptr [ebp-4]
 0042ABF8    call        0042AB10
 0042ABFD    dec         eax
 0042ABFE    test        eax,eax
>0042AC00    jl          0042AC2A
 0042AC02    inc         eax
 0042AC03    mov         dword ptr [ebp-10],eax
 0042AC06    mov         dword ptr [ebp-0C],0
 0042AC0D    mov         edx,dword ptr [ebp-0C]
 0042AC10    mov         eax,dword ptr [ebp-4]
 0042AC13    call        0042AAD0
 0042AC18    mov         cl,1
 0042AC1A    mov         dl,byte ptr [ebp-5]
 0042AC1D    call        0042ABC8
 0042AC22    inc         dword ptr [ebp-0C]
 0042AC25    dec         dword ptr [ebp-10]
>0042AC28    jne         0042AC0D
 0042AC2A    mov         esp,ebp
 0042AC2C    pop         ebp
 0042AC2D    ret
end;*}

//0042AC30
{*procedure sub_0042AC30(?:TComponent; ?:?);
begin
 0042AC30    push        ebp
 0042AC31    mov         ebp,esp
 0042AC33    add         esp,0FFFFFEF4
 0042AC39    mov         byte ptr [ebp-5],dl
 0042AC3C    mov         dword ptr [ebp-4],eax
 0042AC3F    mov         eax,dword ptr [ebp-4]
 0042AC42    cmp         dword ptr [eax+4],0;TComponent.FOwner:TComponent
>0042AC46    je          0042AC8F
 0042AC48    lea         eax,[ebp-10C]
 0042AC4E    mov         edx,dword ptr [ebp-4]
 0042AC51    mov         edx,dword ptr [edx+8];TComponent.Name:TComponentName
 0042AC54    mov         ecx,0FF
 0042AC59    call        @LStrToString
 0042AC5E    lea         edx,[ebp-10C]
 0042AC64    mov         eax,dword ptr [ebp-4]
 0042AC67    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 0042AC6A    call        TObject.FieldAddress
 0042AC6F    mov         dword ptr [ebp-0C],eax
 0042AC72    cmp         dword ptr [ebp-0C],0
>0042AC76    je          0042AC8F
 0042AC78    cmp         byte ptr [ebp-5],0
>0042AC7C    je          0042AC88
 0042AC7E    mov         eax,dword ptr [ebp-4]
 0042AC81    mov         edx,dword ptr [ebp-0C]
 0042AC84    mov         dword ptr [edx],eax
>0042AC86    jmp         0042AC8F
 0042AC88    mov         eax,dword ptr [ebp-0C]
 0042AC8B    xor         edx,edx
 0042AC8D    mov         dword ptr [eax],edx
 0042AC8F    mov         esp,ebp
 0042AC91    pop         ebp
 0042AC92    ret
end;*}

//0042AC94
{*procedure TComponent.sub_0042AC94(?:?);
begin
 0042AC94    push        ebp
 0042AC95    mov         ebp,esp
 0042AC97    add         esp,0FFFFFFF4
 0042AC9A    mov         dword ptr [ebp-8],edx
 0042AC9D    mov         dword ptr [ebp-4],eax
 0042ACA0    mov         edx,dword ptr [ebp-4]
 0042ACA3    mov         eax,dword ptr [ebp-8]
 0042ACA6    mov         ecx,dword ptr [eax]
 0042ACA8    call        dword ptr [ecx+38]
 0042ACAB    mov         byte ptr [ebp-9],al
 0042ACAE    cmp         byte ptr [ebp-9],0
>0042ACB2    je          0042ACBF
 0042ACB4    mov         edx,dword ptr [ebp-4]
 0042ACB7    mov         eax,dword ptr [ebp-8]
 0042ACBA    mov         ecx,dword ptr [eax]
 0042ACBC    call        dword ptr [ecx+40]
 0042ACBF    mov         al,byte ptr [ebp-9]
 0042ACC2    mov         esp,ebp
 0042ACC4    pop         ebp
 0042ACC5    ret
end;*}

//0042ACC8
{*procedure TComponent.sub_0042ACC8(?:?);
begin
 0042ACC8    push        ebp
 0042ACC9    mov         ebp,esp
 0042ACCB    add         esp,0FFFFFFF4
 0042ACCE    mov         dword ptr [ebp-8],edx
 0042ACD1    mov         dword ptr [ebp-4],eax
 0042ACD4    mov         edx,dword ptr [ebp-4]
 0042ACD7    mov         eax,dword ptr [ebp-8]
 0042ACDA    mov         ecx,dword ptr [eax]
 0042ACDC    call        dword ptr [ecx+38]
 0042ACDF    mov         byte ptr [ebp-9],al
 0042ACE2    cmp         byte ptr [ebp-9],0
>0042ACE6    je          0042ACF3
 0042ACE8    mov         edx,dword ptr [ebp-4]
 0042ACEB    mov         eax,dword ptr [ebp-8]
 0042ACEE    mov         ecx,dword ptr [eax]
 0042ACF0    call        dword ptr [ecx+3C]
 0042ACF3    mov         al,byte ptr [ebp-9]
 0042ACF6    mov         esp,ebp
 0042ACF8    pop         ebp
 0042ACF9    ret
end;*}

//0042ACFC
{*procedure sub_0042ACFC(?:TComponent; ?:?);
begin
 0042ACFC    push        ebp
 0042ACFD    mov         ebp,esp
 0042ACFF    add         esp,0FFFFFFF8
 0042AD02    mov         byte ptr [ebp-5],dl
 0042AD05    mov         dword ptr [ebp-4],eax
 0042AD08    cmp         byte ptr [ebp-5],0
>0042AD0C    je          0042AD17
 0042AD0E    mov         eax,dword ptr [ebp-4]
 0042AD11    or          byte ptr [eax+24],4
>0042AD15    jmp         0042AD1E
 0042AD17    mov         eax,dword ptr [ebp-4]
 0042AD1A    and         byte ptr [eax+24],0FB
 0042AD1E    pop         ecx
 0042AD1F    pop         ecx
 0042AD20    pop         ebp
 0042AD21    ret
end;*}

//0042AD24
function TComponent.SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;
begin
{*
 0042AD24    push        ebp
 0042AD25    mov         ebp,esp
 0042AD27    add         esp,0FFFFFFF0
 0042AD2A    push        ebx
 0042AD2B    mov         dword ptr [ebp-0C],ecx
 0042AD2E    mov         dword ptr [ebp-8],edx
 0042AD31    mov         dword ptr [ebp-4],eax
 0042AD34    mov         eax,dword ptr [ebp-4];{TObject.SafeCallException}
 0042AD37    cmp         dword ptr [eax+20],0
>0042AD3B    je          0042AD53
 0042AD3D    mov         ecx,dword ptr [ebp-0C]
 0042AD40    mov         edx,dword ptr [ebp-8]
 0042AD43    mov         eax,dword ptr [ebp-4]
 0042AD46    mov         eax,dword ptr [eax+20]
 0042AD49    mov         ebx,dword ptr [eax]
 0042AD4B    call        dword ptr [ebx+1C]
 0042AD4E    mov         dword ptr [ebp-10],eax
>0042AD51    jmp         0042AD64
 0042AD53    mov         ecx,dword ptr [ebp-0C]
 0042AD56    mov         edx,dword ptr [ebp-8]
 0042AD59    mov         eax,dword ptr [ebp-4]
 0042AD5C    call        TCustomVariantType.SafeCallException
 0042AD61    mov         dword ptr [ebp-10],eax
 0042AD64    mov         eax,dword ptr [ebp-10]
 0042AD67    pop         ebx
 0042AD68    mov         esp,ebp
 0042AD6A    pop         ebp
 0042AD6B    ret
*}
end;

//0042AD6C
{*procedure sub_0042AD6C(?:?; ?:?);
begin
 0042AD6C    push        ebp
 0042AD6D    mov         ebp,esp
 0042AD6F    add         esp,0FFFFFFF4
 0042AD72    mov         dword ptr [ebp-0C],ecx
 0042AD75    mov         byte ptr [ebp-5],dl
 0042AD78    mov         dword ptr [ebp-4],eax
 0042AD7B    mov         esp,ebp
 0042AD7D    pop         ebp
 0042AD7E    ret         4
end;*}

//0042AD84
{*function sub_0042AD84(?:?; ?:?):?;
begin
 0042AD84    push        ebp
 0042AD85    mov         ebp,esp
 0042AD87    push        ecx
 0042AD88    mov         eax,dword ptr [ebp+8]
 0042AD8B    cmp         dword ptr [eax+20],0
>0042AD8F    jne         0042ADB3
 0042AD91    mov         ecx,dword ptr [ebp+10]
 0042AD94    mov         edx,dword ptr [ebp+0C]
 0042AD97    mov         eax,dword ptr [ebp+8]
 0042AD9A    call        TObject.GetInterface
 0042AD9F    test        al,al
>0042ADA1    je          0042ADAA
 0042ADA3    xor         eax,eax
 0042ADA5    mov         dword ptr [ebp-4],eax
>0042ADA8    jmp         0042ADC9
 0042ADAA    mov         dword ptr [ebp-4],80004002
>0042ADB1    jmp         0042ADC9
 0042ADB3    mov         eax,dword ptr [ebp+10]
 0042ADB6    push        eax
 0042ADB7    mov         eax,dword ptr [ebp+0C]
 0042ADBA    push        eax
 0042ADBB    mov         eax,dword ptr [ebp+8]
 0042ADBE    mov         eax,dword ptr [eax+20]
 0042ADC1    push        eax
 0042ADC2    mov         eax,dword ptr [eax]
 0042ADC4    call        dword ptr [eax]
 0042ADC6    mov         dword ptr [ebp-4],eax
 0042ADC9    mov         eax,dword ptr [ebp-4]
 0042ADCC    pop         ecx
 0042ADCD    pop         ebp
 0042ADCE    ret         0C
end;*}

//0042ADD4
{*function sub_0042ADD4(?:?):?;
begin
 0042ADD4    push        ebp
 0042ADD5    mov         ebp,esp
 0042ADD7    push        ecx
 0042ADD8    mov         eax,dword ptr [ebp+8]
 0042ADDB    cmp         dword ptr [eax+20],0
>0042ADDF    jne         0042ADEA
 0042ADE1    mov         dword ptr [ebp-4],0FFFFFFFF
>0042ADE8    jmp         0042ADF9
 0042ADEA    mov         eax,dword ptr [ebp+8]
 0042ADED    mov         eax,dword ptr [eax+20]
 0042ADF0    push        eax
 0042ADF1    mov         eax,dword ptr [eax]
 0042ADF3    call        dword ptr [eax+4]
 0042ADF6    mov         dword ptr [ebp-4],eax
 0042ADF9    mov         eax,dword ptr [ebp-4]
 0042ADFC    pop         ecx
 0042ADFD    pop         ebp
 0042ADFE    ret         4
end;*}

//0042AE04
{*function sub_0042AE04(?:?):?;
begin
 0042AE04    push        ebp
 0042AE05    mov         ebp,esp
 0042AE07    push        ecx
 0042AE08    mov         eax,dword ptr [ebp+8]
 0042AE0B    cmp         dword ptr [eax+20],0
>0042AE0F    jne         0042AE1A
 0042AE11    mov         dword ptr [ebp-4],0FFFFFFFF
>0042AE18    jmp         0042AE29
 0042AE1A    mov         eax,dword ptr [ebp+8]
 0042AE1D    mov         eax,dword ptr [eax+20]
 0042AE20    push        eax
 0042AE21    mov         eax,dword ptr [eax]
 0042AE23    call        dword ptr [eax+8]
 0042AE26    mov         dword ptr [ebp-4],eax
 0042AE29    mov         eax,dword ptr [ebp-4]
 0042AE2C    pop         ecx
 0042AE2D    pop         ebp
 0042AE2E    ret         4
end;*}

//0042AE34
{*function sub_0042AE34(?:?):?;
begin
 0042AE34    push        ebp
 0042AE35    mov         ebp,esp
 0042AE37    add         esp,0FFFFFFF8
 0042AE3A    mov         dword ptr [ebp-4],eax
 0042AE3D    mov         eax,dword ptr [ebp-4]
 0042AE40    mov         dword ptr [ebp-8],eax
 0042AE43    mov         eax,dword ptr [ebp-8]
 0042AE46    pop         ecx
 0042AE47    pop         ecx
 0042AE48    pop         ebp
 0042AE49    ret
end;*}

//0042AE4C
constructor sub_0042AE4C;
begin
{*
 0042AE4C    push        ebp
 0042AE4D    mov         ebp,esp
 0042AE4F    add         esp,0FFFFFFF4
 0042AE52    test        dl,dl
>0042AE54    je          0042AE5E
 0042AE56    add         esp,0FFFFFFF0
 0042AE59    call        @ClassCreate
 0042AE5E    mov         dword ptr [ebp-0C],ecx
 0042AE61    mov         byte ptr [ebp-5],dl
 0042AE64    mov         dword ptr [ebp-4],eax
 0042AE67    xor         edx,edx
 0042AE69    mov         eax,dword ptr [ebp-4]
 0042AE6C    call        TObject.Create
 0042AE71    mov         edx,dword ptr [ebp-0C]
 0042AE74    mov         eax,dword ptr [ebp-4]
 0042AE77    mov         ecx,dword ptr [eax]
 0042AE79    call        dword ptr [ecx];TBasicActionLink.sub_0042AE9C
 0042AE7B    mov         eax,dword ptr [ebp-4]
 0042AE7E    cmp         byte ptr [ebp-5],0
>0042AE82    je          0042AE93
 0042AE84    call        @AfterConstruction
 0042AE89    pop         dword ptr fs:[0]
 0042AE90    add         esp,0C
 0042AE93    mov         eax,dword ptr [ebp-4]
 0042AE96    mov         esp,ebp
 0042AE98    pop         ebp
 0042AE99    ret
*}
end;

//0042AE9C
{*procedure sub_0042AE9C(?:?);
begin
 0042AE9C    push        ebp
 0042AE9D    mov         ebp,esp
 0042AE9F    add         esp,0FFFFFFF8
 0042AEA2    mov         dword ptr [ebp-8],edx
 0042AEA5    mov         dword ptr [ebp-4],eax
 0042AEA8    pop         ecx
 0042AEA9    pop         ecx
 0042AEAA    pop         ebp
 0042AEAB    ret
end;*}

//0042AEAC
destructor TBasicActionLink.Destroy;
begin
{*
 0042AEAC    push        ebp
 0042AEAD    mov         ebp,esp
 0042AEAF    add         esp,0FFFFFFF8
 0042AEB2    call        @BeforeDestruction
 0042AEB7    mov         byte ptr [ebp-5],dl
 0042AEBA    mov         dword ptr [ebp-4],eax
 0042AEBD    mov         eax,dword ptr [ebp-4]
 0042AEC0    cmp         dword ptr [eax+10],0
>0042AEC4    je          0042AED4
 0042AEC6    mov         eax,dword ptr [ebp-4]
 0042AEC9    mov         eax,dword ptr [eax+10]
 0042AECC    mov         edx,dword ptr [ebp-4]
 0042AECF    call        0042B254
 0042AED4    mov         dl,byte ptr [ebp-5]
 0042AED7    and         dl,0FC
 0042AEDA    mov         eax,dword ptr [ebp-4]
 0042AEDD    call        TObject.Destroy
 0042AEE2    cmp         byte ptr [ebp-5],0
>0042AEE6    jle         0042AEF0
 0042AEE8    mov         eax,dword ptr [ebp-4]
 0042AEEB    call        @ClassDestroy
 0042AEF0    pop         ecx
 0042AEF1    pop         ecx
 0042AEF2    pop         ebp
 0042AEF3    ret
*}
end;

//0042AEF4
procedure sub_0042AEF4;
begin
{*
 0042AEF4    push        ebp
 0042AEF5    mov         ebp,esp
 0042AEF7    push        ecx
 0042AEF8    push        ebx
 0042AEF9    mov         dword ptr [ebp-4],eax
 0042AEFC    mov         eax,dword ptr [ebp-4]
 0042AEFF    cmp         word ptr [eax+0A],0;TBasicActionLink.?fA:word
>0042AF04    je          0042AF15
 0042AF06    mov         ebx,dword ptr [ebp-4]
 0042AF09    mov         eax,dword ptr [ebp-4]
 0042AF0C    mov         edx,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 0042AF0F    mov         eax,dword ptr [ebx+0C];TBasicActionLink.?fC:TSpeedButton
 0042AF12    call        dword ptr [ebx+8];TBasicActionLink.FOnChange
 0042AF15    pop         ebx
 0042AF16    pop         ecx
 0042AF17    pop         ebp
 0042AF18    ret
*}
end;

//0042AF1C
{*function sub_0042AF1C(?:?):?;
begin
 0042AF1C    push        ebp
 0042AF1D    mov         ebp,esp
 0042AF1F    add         esp,0FFFFFFF4
 0042AF22    push        esi
 0042AF23    mov         dword ptr [ebp-8],edx
 0042AF26    mov         dword ptr [ebp-4],eax
 0042AF29    mov         edx,dword ptr [ebp-8]
 0042AF2C    mov         eax,dword ptr [ebp-4]
 0042AF2F    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 0042AF32    call        0042B2B0
 0042AF37    mov         eax,dword ptr [ebp-4]
 0042AF3A    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 0042AF3D    mov         si,0FFEF
 0042AF41    call        @CallDynaInst;TBasicAction.sub_0042B128
 0042AF46    mov         byte ptr [ebp-9],al
 0042AF49    mov         al,byte ptr [ebp-9]
 0042AF4C    pop         esi
 0042AF4D    mov         esp,ebp
 0042AF4F    pop         ebp
 0042AF50    ret
end;*}

//0042AF54
{*procedure sub_0042AF54(?:?);
begin
 0042AF54    push        ebp
 0042AF55    mov         ebp,esp
 0042AF57    add         esp,0FFFFFFF8
 0042AF5A    mov         dword ptr [ebp-8],edx
 0042AF5D    mov         dword ptr [ebp-4],eax
 0042AF60    mov         eax,dword ptr [ebp-8]
 0042AF63    mov         edx,dword ptr [ebp-4]
 0042AF66    cmp         eax,dword ptr [edx+10];TBasicActionLink.FAction:TBasicAction
>0042AF69    je          0042AF9C
 0042AF6B    mov         eax,dword ptr [ebp-4]
 0042AF6E    cmp         dword ptr [eax+10],0;TBasicActionLink.FAction:TBasicAction
>0042AF72    je          0042AF82
 0042AF74    mov         edx,dword ptr [ebp-4]
 0042AF77    mov         eax,dword ptr [ebp-4]
 0042AF7A    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 0042AF7D    call        0042B254
 0042AF82    mov         eax,dword ptr [ebp-8]
 0042AF85    mov         edx,dword ptr [ebp-4]
 0042AF88    mov         dword ptr [edx+10],eax;TBasicActionLink.FAction:TBasicAction
 0042AF8B    cmp         dword ptr [ebp-8],0
>0042AF8F    je          0042AF9C
 0042AF91    mov         edx,dword ptr [ebp-4]
 0042AF94    mov         eax,dword ptr [ebp-8]
 0042AF97    call        0042B22C
 0042AF9C    pop         ecx
 0042AF9D    pop         ecx
 0042AF9E    pop         ebp
 0042AF9F    ret
end;*}

//0042AFA0
{*function sub_0042AFA0:?;
begin
 0042AFA0    push        ebp
 0042AFA1    mov         ebp,esp
 0042AFA3    add         esp,0FFFFFFF8
 0042AFA6    mov         dword ptr [ebp-4],eax
 0042AFA9    mov         byte ptr [ebp-5],1
 0042AFAD    mov         al,byte ptr [ebp-5]
 0042AFB0    pop         ecx
 0042AFB1    pop         ecx
 0042AFB2    pop         ebp
 0042AFB3    ret
end;*}

//0042AFB4
procedure sub_0042AFB4;
begin
{*
 0042AFB4    push        ebp
 0042AFB5    mov         ebp,esp
 0042AFB7    push        ecx
 0042AFB8    mov         dword ptr [ebp-4],eax
 0042AFBB    pop         ecx
 0042AFBC    pop         ebp
 0042AFBD    ret         8
*}
end;

//0042AFC0
{*function sub_0042AFC0:?;
begin
 0042AFC0    push        ebp
 0042AFC1    mov         ebp,esp
 0042AFC3    add         esp,0FFFFFFF8
 0042AFC6    mov         dword ptr [ebp-4],eax
 0042AFC9    mov         eax,dword ptr [ebp-4]
 0042AFCC    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 0042AFCF    mov         edx,dword ptr [eax]
 0042AFD1    call        dword ptr [edx+44];TBasicAction.sub_0042B15C
 0042AFD4    mov         byte ptr [ebp-5],al
 0042AFD7    mov         al,byte ptr [ebp-5]
 0042AFDA    pop         ecx
 0042AFDB    pop         ecx
 0042AFDC    pop         ebp
 0042AFDD    ret
end;*}

//0042AFE0
constructor sub_0042AFE0;
begin
{*
 0042AFE0    push        ebp
 0042AFE1    mov         ebp,esp
 0042AFE3    add         esp,0FFFFFFF4
 0042AFE6    test        dl,dl
>0042AFE8    je          0042AFF2
 0042AFEA    add         esp,0FFFFFFF0
 0042AFED    call        @ClassCreate
 0042AFF2    mov         dword ptr [ebp-0C],ecx
 0042AFF5    mov         byte ptr [ebp-5],dl
 0042AFF8    mov         dword ptr [ebp-4],eax
 0042AFFB    mov         ecx,dword ptr [ebp-0C]
 0042AFFE    xor         edx,edx
 0042B000    mov         eax,dword ptr [ebp-4]
 0042B003    call        0042A1B0
 0042B008    mov         dl,1
 0042B00A    mov         eax,[0041D46C];TList
 0042B00F    call        TObject.Create;TList.Create
 0042B014    mov         edx,dword ptr [ebp-4]
 0042B017    mov         dword ptr [edx+50],eax;TBasicAction.FClients:TList
 0042B01A    mov         eax,dword ptr [ebp-4]
 0042B01D    cmp         byte ptr [ebp-5],0
>0042B021    je          0042B032
 0042B023    call        @AfterConstruction
 0042B028    pop         dword ptr fs:[0]
 0042B02F    add         esp,0C
 0042B032    mov         eax,dword ptr [ebp-4]
 0042B035    mov         esp,ebp
 0042B037    pop         ebp
 0042B038    ret
*}
end;

//0042B03C
destructor TBasicAction.Destroy;
begin
{*
 0042B03C    push        ebp
 0042B03D    mov         ebp,esp
 0042B03F    add         esp,0FFFFFFF8
 0042B042    call        @BeforeDestruction
 0042B047    mov         byte ptr [ebp-5],dl
 0042B04A    mov         dword ptr [ebp-4],eax
 0042B04D    mov         dl,byte ptr [ebp-5]
 0042B050    and         dl,0FC
 0042B053    mov         eax,dword ptr [ebp-4]
 0042B056    call        TComponent.Destroy
 0042B05B    mov         eax,dword ptr [ebp-4]
 0042B05E    cmp         dword ptr [eax+30],0
>0042B062    je          0042B089
 0042B064    mov         eax,dword ptr [ebp-4]
 0042B067    mov         eax,dword ptr [eax+30]
 0042B06A    mov         edx,dword ptr [ebp-4]
 0042B06D    call        0042A61C
>0042B072    jmp         0042B089
 0042B074    mov         eax,dword ptr [ebp-4]
 0042B077    mov         eax,dword ptr [eax+50]
 0042B07A    call        004203B8
 0042B07F    mov         edx,eax
 0042B081    mov         eax,dword ptr [ebp-4]
 0042B084    call        0042B254
 0042B089    mov         eax,dword ptr [ebp-4]
 0042B08C    mov         eax,dword ptr [eax+50]
 0042B08F    cmp         dword ptr [eax+8],0
>0042B093    jg          0042B074
 0042B095    mov         eax,dword ptr [ebp-4]
 0042B098    add         eax,50
 0042B09B    call        FreeAndNil
 0042B0A0    cmp         byte ptr [ebp-5],0
>0042B0A4    jle         0042B0AE
 0042B0A6    mov         eax,dword ptr [ebp-4]
 0042B0A9    call        @ClassDestroy
 0042B0AE    pop         ecx
 0042B0AF    pop         ecx
 0042B0B0    pop         ebp
 0042B0B1    ret
*}
end;

//0042B0B4
{*function sub_0042B0B4(?:?):?;
begin
 0042B0B4    push        ebp
 0042B0B5    mov         ebp,esp
 0042B0B7    add         esp,0FFFFFFF4
 0042B0BA    mov         dword ptr [ebp-0C],edx
 0042B0BD    mov         dword ptr [ebp-4],eax
 0042B0C0    mov         byte ptr [ebp-5],0
 0042B0C4    mov         al,byte ptr [ebp-5]
 0042B0C7    mov         esp,ebp
 0042B0C9    pop         ebp
 0042B0CA    ret
end;*}

//0042B0CC
{*procedure sub_0042B0CC(?:?);
begin
 0042B0CC    push        ebp
 0042B0CD    mov         ebp,esp
 0042B0CF    add         esp,0FFFFFFF8
 0042B0D2    mov         dword ptr [ebp-8],edx
 0042B0D5    mov         dword ptr [ebp-4],eax
 0042B0D8    pop         ecx
 0042B0D9    pop         ecx
 0042B0DA    pop         ebp
 0042B0DB    ret
end;*}

//0042B0DC
{*procedure sub_0042B0DC(?:?; ?:?);
begin
 0042B0DC    push        ebp
 0042B0DD    mov         ebp,esp
 0042B0DF    add         esp,0FFFFFFF4
 0042B0E2    mov         byte ptr [ebp-9],cl
 0042B0E5    mov         dword ptr [ebp-8],edx
 0042B0E8    mov         dword ptr [ebp-4],eax
 0042B0EB    mov         cl,byte ptr [ebp-9]
 0042B0EE    mov         edx,dword ptr [ebp-8]
 0042B0F1    mov         eax,dword ptr [ebp-4]
 0042B0F4    call        0042A644
 0042B0F9    cmp         byte ptr [ebp-9],1
>0042B0FD    jne         0042B112
 0042B0FF    mov         eax,dword ptr [ebp-8]
 0042B102    mov         edx,dword ptr [ebp-4]
 0042B105    cmp         eax,dword ptr [edx+30];TBasicAction.FActionComponent:TComponent
>0042B108    jne         0042B112
 0042B10A    mov         eax,dword ptr [ebp-4]
 0042B10D    xor         edx,edx
 0042B10F    mov         dword ptr [eax+30],edx;TBasicAction.FActionComponent:TComponent
 0042B112    mov         esp,ebp
 0042B114    pop         ebp
 0042B115    ret
end;*}

//0042B118
{*procedure sub_0042B118(?:?);
begin
 0042B118    push        ebp
 0042B119    mov         ebp,esp
 0042B11B    add         esp,0FFFFFFF8
 0042B11E    mov         dword ptr [ebp-8],edx
 0042B121    mov         dword ptr [ebp-4],eax
 0042B124    pop         ecx
 0042B125    pop         ecx
 0042B126    pop         ebp
 0042B127    ret
end;*}

//0042B128
procedure TBasicAction.sub_0042B128;
begin
{*
 0042B128    push        ebp
 0042B129    mov         ebp,esp
 0042B12B    add         esp,0FFFFFFF8
 0042B12E    push        ebx
 0042B12F    mov         dword ptr [ebp-4],eax
 0042B132    mov         eax,dword ptr [ebp-4]
 0042B135    cmp         word ptr [eax+42],0;TBasicAction.?f42:word
>0042B13A    je          0042B14E
 0042B13C    mov         ebx,dword ptr [ebp-4]
 0042B13F    mov         edx,dword ptr [ebp-4]
 0042B142    mov         eax,dword ptr [ebx+44];TBasicAction.?f44:dword
 0042B145    call        dword ptr [ebx+40];TBasicAction.FOnExecute
 0042B148    mov         byte ptr [ebp-5],1
>0042B14C    jmp         0042B152
 0042B14E    mov         byte ptr [ebp-5],0
 0042B152    mov         al,byte ptr [ebp-5]
 0042B155    pop         ebx
 0042B156    pop         ecx
 0042B157    pop         ecx
 0042B158    pop         ebp
 0042B159    ret
*}
end;

//0042B15C
{*function sub_0042B15C:?;
begin
 0042B15C    push        ebp
 0042B15D    mov         ebp,esp
 0042B15F    add         esp,0FFFFFFF8
 0042B162    push        ebx
 0042B163    mov         dword ptr [ebp-4],eax
 0042B166    mov         eax,dword ptr [ebp-4]
 0042B169    cmp         word ptr [eax+4A],0;TBasicAction.?f4A:word
>0042B16E    je          0042B182
 0042B170    mov         ebx,dword ptr [ebp-4]
 0042B173    mov         edx,dword ptr [ebp-4]
 0042B176    mov         eax,dword ptr [ebx+4C];TBasicAction.?f4C:dword
 0042B179    call        dword ptr [ebx+48];TBasicAction.FOnUpdate
 0042B17C    mov         byte ptr [ebp-5],1
>0042B180    jmp         0042B186
 0042B182    mov         byte ptr [ebp-5],0
 0042B186    mov         al,byte ptr [ebp-5]
 0042B189    pop         ebx
 0042B18A    pop         ecx
 0042B18B    pop         ecx
 0042B18C    pop         ebp
 0042B18D    ret
end;*}

//0042B190
{*procedure TAction.SetOnExecute(Value:TNotifyEvent; ?:?; ?:?);
begin
 0042B190    push        ebp
 0042B191    mov         ebp,esp
 0042B193    add         esp,0FFFFFFF4
 0042B196    mov         dword ptr [ebp-4],eax
 0042B199    mov         eax,dword ptr [ebp+8]
 0042B19C    mov         edx,dword ptr [ebp-4]
 0042B19F    cmp         eax,dword ptr [edx+40];TAction.FOnExecute:TNotifyEvent
>0042B1A2    jne         0042B1AF
 0042B1A4    mov         eax,dword ptr [ebp+0C]
 0042B1A7    mov         edx,dword ptr [ebp-4]
 0042B1AA    cmp         eax,dword ptr [edx+44];TAction.?f44:dword
>0042B1AD    je          0042B200
 0042B1AF    mov         eax,dword ptr [ebp-4]
 0042B1B2    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0042B1B5    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0042B1B8    dec         eax
 0042B1B9    test        eax,eax
>0042B1BB    jl          0042B1E9
 0042B1BD    inc         eax
 0042B1BE    mov         dword ptr [ebp-0C],eax
 0042B1C1    mov         dword ptr [ebp-8],0
 0042B1C8    push        dword ptr [ebp+0C]
 0042B1CB    push        dword ptr [ebp+8]
 0042B1CE    mov         edx,dword ptr [ebp-8]
 0042B1D1    mov         eax,dword ptr [ebp-4]
 0042B1D4    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0042B1D7    call        TList.Get
 0042B1DC    mov         edx,dword ptr [eax]
 0042B1DE    call        dword ptr [edx+10]
 0042B1E1    inc         dword ptr [ebp-8]
 0042B1E4    dec         dword ptr [ebp-0C]
>0042B1E7    jne         0042B1C8
 0042B1E9    mov         eax,dword ptr [ebp-4]
 0042B1EC    mov         edx,dword ptr [ebp+8]
 0042B1EF    mov         dword ptr [eax+40],edx;TAction.FOnExecute:TNotifyEvent
 0042B1F2    mov         edx,dword ptr [ebp+0C]
 0042B1F5    mov         dword ptr [eax+44],edx;TAction.?f44:dword
 0042B1F8    mov         eax,dword ptr [ebp-4]
 0042B1FB    mov         edx,dword ptr [eax]
 0042B1FD    call        dword ptr [edx+30];TAction.sub_0042B208
 0042B200    mov         esp,ebp
 0042B202    pop         ebp
 0042B203    ret         8
end;*}

//0042B208
procedure sub_0042B208;
begin
{*
 0042B208    push        ebp
 0042B209    mov         ebp,esp
 0042B20B    push        ecx
 0042B20C    push        ebx
 0042B20D    mov         dword ptr [ebp-4],eax
 0042B210    mov         eax,dword ptr [ebp-4]
 0042B213    cmp         word ptr [eax+3A],0;TBasicAction.?f3A:word
>0042B218    je          0042B226
 0042B21A    mov         ebx,dword ptr [ebp-4]
 0042B21D    mov         edx,dword ptr [ebp-4]
 0042B220    mov         eax,dword ptr [ebx+3C];TBasicAction.?f3C:dword
 0042B223    call        dword ptr [ebx+38];TBasicAction.FOnChange
 0042B226    pop         ebx
 0042B227    pop         ecx
 0042B228    pop         ebp
 0042B229    ret
*}
end;

//0042B22C
{*procedure sub_0042B22C(?:?; ?:TBasicActionLink);
begin
 0042B22C    push        ebp
 0042B22D    mov         ebp,esp
 0042B22F    add         esp,0FFFFFFF8
 0042B232    mov         dword ptr [ebp-8],edx
 0042B235    mov         dword ptr [ebp-4],eax
 0042B238    mov         eax,dword ptr [ebp-4]
 0042B23B    mov         edx,dword ptr [ebp-8]
 0042B23E    mov         dword ptr [edx+10],eax;TBasicActionLink.FAction:TBasicAction
 0042B241    mov         edx,dword ptr [ebp-8]
 0042B244    mov         eax,dword ptr [ebp-4]
 0042B247    mov         eax,dword ptr [eax+50]
 0042B24A    call        TList.Add
 0042B24F    pop         ecx
 0042B250    pop         ecx
 0042B251    pop         ebp
 0042B252    ret
end;*}

//0042B254
procedure sub_0042B254(?:TBasicAction; ?:TBasicActionLink);
begin
{*
 0042B254    push        ebp
 0042B255    mov         ebp,esp
 0042B257    add         esp,0FFFFFFF0
 0042B25A    mov         dword ptr [ebp-8],edx
 0042B25D    mov         dword ptr [ebp-4],eax
 0042B260    mov         eax,dword ptr [ebp-4]
 0042B263    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 0042B266    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0042B269    dec         eax
 0042B26A    test        eax,eax
>0042B26C    jl          0042B2AC
 0042B26E    inc         eax
 0042B26F    mov         dword ptr [ebp-10],eax
 0042B272    mov         dword ptr [ebp-0C],0
 0042B279    mov         eax,dword ptr [ebp-4]
 0042B27C    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 0042B27F    mov         edx,dword ptr [ebp-0C]
 0042B282    call        TList.Get
 0042B287    cmp         eax,dword ptr [ebp-8]
>0042B28A    jne         0042B2A4
 0042B28C    mov         eax,dword ptr [ebp-8]
 0042B28F    xor         edx,edx
 0042B291    mov         dword ptr [eax+10],edx;TBasicActionLink.FAction:TBasicAction
 0042B294    mov         eax,dword ptr [ebp-4]
 0042B297    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 0042B29A    mov         edx,dword ptr [ebp-0C]
 0042B29D    call        00420094
>0042B2A2    jmp         0042B2AC
 0042B2A4    inc         dword ptr [ebp-0C]
 0042B2A7    dec         dword ptr [ebp-10]
>0042B2AA    jne         0042B279
 0042B2AC    mov         esp,ebp
 0042B2AE    pop         ebp
 0042B2AF    ret
*}
end;

//0042B2B0
{*procedure sub_0042B2B0(?:TBasicAction; ?:?);
begin
 0042B2B0    push        ebp
 0042B2B1    mov         ebp,esp
 0042B2B3    add         esp,0FFFFFFF8
 0042B2B6    mov         dword ptr [ebp-8],edx
 0042B2B9    mov         dword ptr [ebp-4],eax
 0042B2BC    mov         eax,dword ptr [ebp-4]
 0042B2BF    mov         eax,dword ptr [eax+30];TBasicAction.FActionComponent:TComponent
 0042B2C2    cmp         eax,dword ptr [ebp-8]
>0042B2C5    je          0042B2FE
 0042B2C7    mov         eax,dword ptr [ebp-4]
 0042B2CA    cmp         dword ptr [eax+30],0;TBasicAction.FActionComponent:TComponent
>0042B2CE    je          0042B2DE
 0042B2D0    mov         edx,dword ptr [ebp-4]
 0042B2D3    mov         eax,dword ptr [ebp-4]
 0042B2D6    mov         eax,dword ptr [eax+30];TBasicAction.FActionComponent:TComponent
 0042B2D9    call        0042A61C
 0042B2DE    mov         eax,dword ptr [ebp-8]
 0042B2E1    mov         edx,dword ptr [ebp-4]
 0042B2E4    mov         dword ptr [edx+30],eax;TBasicAction.FActionComponent:TComponent
 0042B2E7    mov         eax,dword ptr [ebp-4]
 0042B2EA    cmp         dword ptr [eax+30],0;TBasicAction.FActionComponent:TComponent
>0042B2EE    je          0042B2FE
 0042B2F0    mov         edx,dword ptr [ebp-4]
 0042B2F3    mov         eax,dword ptr [ebp-4]
 0042B2F6    mov         eax,dword ptr [eax+30];TBasicAction.FActionComponent:TComponent
 0042B2F9    call        0042A2CC
 0042B2FE    pop         ecx
 0042B2FF    pop         ecx
 0042B300    pop         ebp
 0042B301    ret
end;*}

//0042B304
{*constructor TStreamAdapter.Create(?:?);
begin
 0042B304    push        ebp
 0042B305    mov         ebp,esp
 0042B307    add         esp,0FFFFFFF4
 0042B30A    test        dl,dl
>0042B30C    je          0042B316
 0042B30E    add         esp,0FFFFFFF0
 0042B311    call        @ClassCreate
 0042B316    mov         dword ptr [ebp-0C],ecx
 0042B319    mov         byte ptr [ebp-5],dl
 0042B31C    mov         dword ptr [ebp-4],eax
 0042B31F    xor         edx,edx
 0042B321    mov         eax,dword ptr [ebp-4]
 0042B324    call        TObject.Create
 0042B329    mov         eax,dword ptr [ebp-4]
 0042B32C    mov         edx,dword ptr [ebp-0C]
 0042B32F    mov         dword ptr [eax+0C],edx
 0042B332    mov         eax,dword ptr [ebp-4]
 0042B335    mov         dl,byte ptr [ebp+8]
 0042B338    mov         byte ptr [eax+10],dl
 0042B33B    mov         eax,dword ptr [ebp-4]
 0042B33E    cmp         byte ptr [ebp-5],0
>0042B342    je          0042B353
 0042B344    call        @AfterConstruction
 0042B349    pop         dword ptr fs:[0]
 0042B350    add         esp,0C
 0042B353    mov         eax,dword ptr [ebp-4]
 0042B356    mov         esp,ebp
 0042B358    pop         ebp
 0042B359    ret         4
end;*}

//0042B35C
destructor TStreamAdapter.Destroy;
begin
{*
 0042B35C    push        ebp
 0042B35D    mov         ebp,esp
 0042B35F    add         esp,0FFFFFFF8
 0042B362    call        @BeforeDestruction
 0042B367    mov         byte ptr [ebp-5],dl
 0042B36A    mov         dword ptr [ebp-4],eax
 0042B36D    mov         eax,dword ptr [ebp-4]
 0042B370    cmp         byte ptr [eax+10],1
>0042B374    jne         0042B389
 0042B376    mov         eax,dword ptr [ebp-4]
 0042B379    mov         eax,dword ptr [eax+0C]
 0042B37C    call        TObject.Free
 0042B381    mov         eax,dword ptr [ebp-4]
 0042B384    xor         edx,edx
 0042B386    mov         dword ptr [eax+0C],edx
 0042B389    mov         dl,byte ptr [ebp-5]
 0042B38C    and         dl,0FC
 0042B38F    mov         eax,dword ptr [ebp-4]
 0042B392    call        TObject.Destroy
 0042B397    cmp         byte ptr [ebp-5],0
>0042B39B    jle         0042B3A5
 0042B39D    mov         eax,dword ptr [ebp-4]
 0042B3A0    call        @ClassDestroy
 0042B3A5    pop         ecx
 0042B3A6    pop         ecx
 0042B3A7    pop         ebp
 0042B3A8    ret
*}
end;

//0042B3AC
{*function sub_0042B3AC(?:?; ?:?; ?:?):?;
begin
 0042B3AC    push        ebp
 0042B3AD    mov         ebp,esp
 0042B3AF    add         esp,0FFFFFFF8
 0042B3B2    push        ebx
 0042B3B3    push        esi
 0042B3B4    push        edi
 0042B3B5    xor         eax,eax
 0042B3B7    push        ebp
 0042B3B8    push        42B40B
 0042B3BD    push        dword ptr fs:[eax]
 0042B3C0    mov         dword ptr fs:[eax],esp
 0042B3C3    cmp         dword ptr [ebp+0C],0
>0042B3C7    jne         0042B3DA
 0042B3C9    mov         dword ptr [ebp-4],80030009
 0042B3D0    xor         eax,eax
 0042B3D2    pop         edx
 0042B3D3    pop         ecx
 0042B3D4    pop         ecx
 0042B3D5    mov         dword ptr fs:[eax],edx
>0042B3D8    jmp         0042B41C
 0042B3DA    mov         edx,dword ptr [ebp+0C]
 0042B3DD    mov         eax,dword ptr [ebp+8]
 0042B3E0    mov         eax,dword ptr [eax+0C]
 0042B3E3    mov         ecx,dword ptr [ebp+10]
 0042B3E6    mov         ebx,dword ptr [eax]
 0042B3E8    call        dword ptr [ebx+0C]
 0042B3EB    mov         dword ptr [ebp-8],eax
 0042B3EE    cmp         dword ptr [ebp+14],0
>0042B3F2    je          0042B3FC
 0042B3F4    mov         eax,dword ptr [ebp+14]
 0042B3F7    mov         edx,dword ptr [ebp-8]
 0042B3FA    mov         dword ptr [eax],edx
 0042B3FC    xor         eax,eax
 0042B3FE    mov         dword ptr [ebp-4],eax
 0042B401    xor         eax,eax
 0042B403    pop         edx
 0042B404    pop         ecx
 0042B405    pop         ecx
 0042B406    mov         dword ptr fs:[eax],edx
>0042B409    jmp         0042B41C
>0042B40B    jmp         @HandleAnyException
 0042B410    mov         dword ptr [ebp-4],1
 0042B417    call        @DoneExcept
 0042B41C    mov         eax,dword ptr [ebp-4]
 0042B41F    pop         edi
 0042B420    pop         esi
 0042B421    pop         ebx
 0042B422    pop         ecx
 0042B423    pop         ecx
 0042B424    pop         ebp
 0042B425    ret         10
end;*}

//0042B428
{*function sub_0042B428(?:?; ?:?; ?:?):?;
begin
 0042B428    push        ebp
 0042B429    mov         ebp,esp
 0042B42B    add         esp,0FFFFFFF8
 0042B42E    push        ebx
 0042B42F    push        esi
 0042B430    push        edi
 0042B431    xor         eax,eax
 0042B433    push        ebp
 0042B434    push        42B487
 0042B439    push        dword ptr fs:[eax]
 0042B43C    mov         dword ptr fs:[eax],esp
 0042B43F    cmp         dword ptr [ebp+0C],0
>0042B443    jne         0042B456
 0042B445    mov         dword ptr [ebp-4],80030009
 0042B44C    xor         eax,eax
 0042B44E    pop         edx
 0042B44F    pop         ecx
 0042B450    pop         ecx
 0042B451    mov         dword ptr fs:[eax],edx
>0042B454    jmp         0042B498
 0042B456    mov         edx,dword ptr [ebp+0C]
 0042B459    mov         eax,dword ptr [ebp+8]
 0042B45C    mov         eax,dword ptr [eax+0C]
 0042B45F    mov         ecx,dword ptr [ebp+10]
 0042B462    mov         ebx,dword ptr [eax]
 0042B464    call        dword ptr [ebx+10]
 0042B467    mov         dword ptr [ebp-8],eax
 0042B46A    cmp         dword ptr [ebp+14],0
>0042B46E    je          0042B478
 0042B470    mov         eax,dword ptr [ebp+14]
 0042B473    mov         edx,dword ptr [ebp-8]
 0042B476    mov         dword ptr [eax],edx
 0042B478    xor         eax,eax
 0042B47A    mov         dword ptr [ebp-4],eax
 0042B47D    xor         eax,eax
 0042B47F    pop         edx
 0042B480    pop         ecx
 0042B481    pop         ecx
 0042B482    mov         dword ptr fs:[eax],edx
>0042B485    jmp         0042B498
>0042B487    jmp         @HandleAnyException
 0042B48C    mov         dword ptr [ebp-4],80030103
 0042B493    call        @DoneExcept
 0042B498    mov         eax,dword ptr [ebp-4]
 0042B49B    pop         edi
 0042B49C    pop         esi
 0042B49D    pop         ebx
 0042B49E    pop         ecx
 0042B49F    pop         ecx
 0042B4A0    pop         ebp
 0042B4A1    ret         10
end;*}

//0042B4A4
{*function sub_0042B4A4(?:?; ?:?; ?:?):?;
begin
 0042B4A4    push        ebp
 0042B4A5    mov         ebp,esp
 0042B4A7    add         esp,0FFFFFFF0
 0042B4AA    push        ebx
 0042B4AB    push        esi
 0042B4AC    push        edi
 0042B4AD    xor         eax,eax
 0042B4AF    push        ebp
 0042B4B0    push        42B515
 0042B4B5    push        dword ptr fs:[eax]
 0042B4B8    mov         dword ptr fs:[eax],esp
 0042B4BB    cmp         dword ptr [ebp+14],0
>0042B4BF    jl          0042B4C7
 0042B4C1    cmp         dword ptr [ebp+14],2
>0042B4C5    jle         0042B4D8
 0042B4C7    mov         dword ptr [ebp-4],80030001
 0042B4CE    xor         eax,eax
 0042B4D0    pop         edx
 0042B4D1    pop         ecx
 0042B4D2    pop         ecx
 0042B4D3    mov         dword ptr fs:[eax],edx
>0042B4D6    jmp         0042B526
 0042B4D8    mov         eax,dword ptr [ebp+8]
 0042B4DB    mov         eax,dword ptr [eax+0C]
 0042B4DE    mov         cx,word ptr [ebp+14]
 0042B4E2    mov         edx,dword ptr [ebp+0C]
 0042B4E5    mov         ebx,dword ptr [eax]
 0042B4E7    call        dword ptr [ebx+14]
 0042B4EA    cdq
 0042B4EB    mov         dword ptr [ebp-10],eax
 0042B4EE    mov         dword ptr [ebp-0C],edx
 0042B4F1    mov         eax,dword ptr [ebp+18]
 0042B4F4    test        eax,eax
>0042B4F6    je          0042B506
 0042B4F8    mov         eax,dword ptr [ebp+18]
 0042B4FB    mov         edx,dword ptr [ebp-10]
 0042B4FE    mov         dword ptr [eax],edx
 0042B500    mov         edx,dword ptr [ebp-0C]
 0042B503    mov         dword ptr [eax+4],edx
 0042B506    xor         eax,eax
 0042B508    mov         dword ptr [ebp-4],eax
 0042B50B    xor         eax,eax
 0042B50D    pop         edx
 0042B50E    pop         ecx
 0042B50F    pop         ecx
 0042B510    mov         dword ptr fs:[eax],edx
>0042B513    jmp         0042B526
>0042B515    jmp         @HandleAnyException
 0042B51A    mov         dword ptr [ebp-4],80030009
 0042B521    call        @DoneExcept
 0042B526    mov         eax,dword ptr [ebp-4]
 0042B529    pop         edi
 0042B52A    pop         esi
 0042B52B    pop         ebx
 0042B52C    mov         esp,ebp
 0042B52E    pop         ebp
 0042B52F    ret         14
end;*}

//0042B534
{*function sub_0042B534(?:?; ?:?):?;
begin
 0042B534    push        ebp
 0042B535    mov         ebp,esp
 0042B537    push        ecx
 0042B538    push        ebx
 0042B539    push        esi
 0042B53A    push        edi
 0042B53B    xor         eax,eax
 0042B53D    push        ebp
 0042B53E    push        42B586
 0042B543    push        dword ptr fs:[eax]
 0042B546    mov         dword ptr fs:[eax],esp
 0042B549    push        dword ptr [ebp+10]
 0042B54C    push        dword ptr [ebp+0C]
 0042B54F    mov         eax,dword ptr [ebp+8]
 0042B552    mov         eax,dword ptr [eax+0C]
 0042B555    call        004235FC
 0042B55A    mov         eax,dword ptr [ebp+8]
 0042B55D    mov         eax,dword ptr [eax+0C]
 0042B560    mov         edx,dword ptr [eax]
 0042B562    call        dword ptr [edx]
 0042B564    cmp         edx,dword ptr [ebp+10]
>0042B567    jne         0042B56C
 0042B569    cmp         eax,dword ptr [ebp+0C]
>0042B56C    je          0042B577
 0042B56E    mov         dword ptr [ebp-4],80004005
>0042B575    jmp         0042B57C
 0042B577    xor         eax,eax
 0042B579    mov         dword ptr [ebp-4],eax
 0042B57C    xor         eax,eax
 0042B57E    pop         edx
 0042B57F    pop         ecx
 0042B580    pop         ecx
 0042B581    mov         dword ptr fs:[eax],edx
>0042B584    jmp         0042B597
>0042B586    jmp         @HandleAnyException
 0042B58B    mov         dword ptr [ebp-4],8000FFFF
 0042B592    call        @DoneExcept
 0042B597    mov         eax,dword ptr [ebp-4]
 0042B59A    pop         edi
 0042B59B    pop         esi
 0042B59C    pop         ebx
 0042B59D    pop         ecx
 0042B59E    pop         ebp
 0042B59F    ret         0C
end;*}

//0042B5A4
{*function sub_0042B5A4(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0042B5A4    push        ebp
 0042B5A5    mov         ebp,esp
 0042B5A7    add         esp,0FFFFFFD0
 0042B5AA    push        ebx
 0042B5AB    push        esi
 0042B5AC    push        edi
 0042B5AD    mov         eax,dword ptr [ebp+0C]
 0042B5B0    call        @IntfAddRef
 0042B5B5    xor         eax,eax
 0042B5B7    push        ebp
 0042B5B8    push        42B7B3
 0042B5BD    push        dword ptr fs:[eax]
 0042B5C0    mov         dword ptr fs:[eax],esp
 0042B5C3    xor         eax,eax
 0042B5C5    mov         dword ptr [ebp-4],eax
 0042B5C8    mov         dword ptr [ebp-20],0
 0042B5CF    mov         dword ptr [ebp-1C],0
 0042B5D6    mov         dword ptr [ebp-28],0
 0042B5DD    mov         dword ptr [ebp-24],0
 0042B5E4    xor         eax,eax
 0042B5E6    push        ebp
 0042B5E7    push        42B78C
 0042B5EC    push        dword ptr fs:[eax]
 0042B5EF    mov         dword ptr fs:[eax],esp
 0042B5F2    cmp         dword ptr [ebp+14],0
>0042B5F6    jne         0042B603
 0042B5F8    cmp         dword ptr [ebp+10],100000
>0042B5FF    jbe         0042B60E
>0042B601    jmp         0042B605
>0042B603    jle         0042B60E
 0042B605    mov         dword ptr [ebp-0C],100000
>0042B60C    jmp         0042B614
 0042B60E    mov         eax,dword ptr [ebp+10]
 0042B611    mov         dword ptr [ebp-0C],eax
 0042B614    mov         eax,dword ptr [ebp-0C]
 0042B617    call        @GetMem
 0042B61C    mov         dword ptr [ebp-8],eax
 0042B61F    xor         eax,eax
 0042B621    push        ebp
 0042B622    push        42B77B
 0042B627    push        dword ptr fs:[eax]
 0042B62A    mov         dword ptr fs:[eax],esp
>0042B62D    jmp         0042B723
 0042B632    cmp         dword ptr [ebp+14],0
>0042B636    jne         0042B643
 0042B638    cmp         dword ptr [ebp+10],7FFFFFFF
>0042B63F    jbe         0042B64E
>0042B641    jmp         0042B645
>0042B643    jle         0042B64E
 0042B645    mov         dword ptr [ebp-14],7FFFFFFF
>0042B64C    jmp         0042B654
 0042B64E    mov         eax,dword ptr [ebp+10]
 0042B651    mov         dword ptr [ebp-14],eax
 0042B654    cmp         dword ptr [ebp-14],0
>0042B658    jle         0042B723
 0042B65E    mov         eax,dword ptr [ebp-14]
 0042B661    cmp         eax,dword ptr [ebp-0C]
>0042B664    jle         0042B66E
 0042B666    mov         eax,dword ptr [ebp-0C]
 0042B669    mov         dword ptr [ebp-10],eax
>0042B66C    jmp         0042B674
 0042B66E    mov         eax,dword ptr [ebp-14]
 0042B671    mov         dword ptr [ebp-10],eax
 0042B674    mov         edx,dword ptr [ebp-8]
 0042B677    mov         eax,dword ptr [ebp+8]
 0042B67A    mov         eax,dword ptr [eax+0C]
 0042B67D    mov         ecx,dword ptr [ebp-10]
 0042B680    mov         ebx,dword ptr [eax]
 0042B682    call        dword ptr [ebx+0C]
 0042B685    mov         dword ptr [ebp-18],eax
 0042B688    cmp         dword ptr [ebp-18],0
>0042B68C    jne         0042B6A0
 0042B68E    call        @TryFinallyExit
 0042B693    xor         eax,eax
 0042B695    pop         edx
 0042B696    pop         ecx
 0042B697    pop         ecx
 0042B698    mov         dword ptr fs:[eax],edx
>0042B69B    jmp         0042B79D
 0042B6A0    mov         eax,dword ptr [ebp-18]
 0042B6A3    cdq
 0042B6A4    add         dword ptr [ebp-20],eax
 0042B6A7    adc         dword ptr [ebp-1C],edx
 0042B6AA    mov         dword ptr [ebp-30],0
 0042B6B1    mov         dword ptr [ebp-2C],0
 0042B6B8    lea         eax,[ebp-30]
 0042B6BB    push        eax
 0042B6BC    mov         eax,dword ptr [ebp-18]
 0042B6BF    push        eax
 0042B6C0    mov         eax,dword ptr [ebp-8]
 0042B6C3    push        eax
 0042B6C4    mov         eax,dword ptr [ebp+0C]
 0042B6C7    push        eax
 0042B6C8    mov         eax,dword ptr [eax]
 0042B6CA    call        dword ptr [eax+10]
 0042B6CD    mov         dword ptr [ebp-4],eax
 0042B6D0    mov         eax,dword ptr [ebp-30]
 0042B6D3    mov         edx,dword ptr [ebp-2C]
 0042B6D6    add         dword ptr [ebp-28],eax
 0042B6D9    adc         dword ptr [ebp-24],edx
 0042B6DC    cmp         dword ptr [ebp-4],0
>0042B6E0    jne         0042B6F1
 0042B6E2    mov         eax,dword ptr [ebp-30]
 0042B6E5    cmp         eax,dword ptr [ebp-18]
>0042B6E8    je          0042B6F1
 0042B6EA    mov         dword ptr [ebp-4],80004005
 0042B6F1    cmp         dword ptr [ebp-4],0
>0042B6F5    je          0042B709
 0042B6F7    call        @TryFinallyExit
 0042B6FC    xor         eax,eax
 0042B6FE    pop         edx
 0042B6FF    pop         ecx
 0042B700    pop         ecx
 0042B701    mov         dword ptr fs:[eax],edx
>0042B704    jmp         0042B79D
 0042B709    mov         eax,dword ptr [ebp-18]
 0042B70C    sub         dword ptr [ebp-14],eax
 0042B70F    mov         eax,dword ptr [ebp-18]
 0042B712    cdq
 0042B713    sub         dword ptr [ebp+10],eax
 0042B716    sbb         dword ptr [ebp+14],edx
 0042B719    cmp         dword ptr [ebp-14],0
>0042B71D    jg          0042B65E
 0042B723    cmp         dword ptr [ebp+14],0
>0042B727    jne         0042B735
 0042B729    cmp         dword ptr [ebp+10],0
>0042B72D    ja          0042B632
>0042B733    jmp         0042B73B
>0042B735    jg          0042B632
 0042B73B    xor         eax,eax
 0042B73D    pop         edx
 0042B73E    pop         ecx
 0042B73F    pop         ecx
 0042B740    mov         dword ptr fs:[eax],edx
 0042B743    push        42B782
 0042B748    mov         eax,dword ptr [ebp-8]
 0042B74B    call        @FreeMem
 0042B750    mov         eax,dword ptr [ebp+1C]
 0042B753    test        eax,eax
>0042B755    je          0042B765
 0042B757    mov         eax,dword ptr [ebp+1C]
 0042B75A    mov         edx,dword ptr [ebp-28]
 0042B75D    mov         dword ptr [eax],edx
 0042B75F    mov         edx,dword ptr [ebp-24]
 0042B762    mov         dword ptr [eax+4],edx
 0042B765    mov         eax,dword ptr [ebp+18]
 0042B768    test        eax,eax
>0042B76A    je          0042B77A
 0042B76C    mov         eax,dword ptr [ebp+18]
 0042B76F    mov         edx,dword ptr [ebp-20]
 0042B772    mov         dword ptr [eax],edx
 0042B774    mov         edx,dword ptr [ebp-1C]
 0042B777    mov         dword ptr [eax+4],edx
 0042B77A    ret
>0042B77B    jmp         @HandleFinally
>0042B780    jmp         0042B748
 0042B782    xor         eax,eax
 0042B784    pop         edx
 0042B785    pop         ecx
 0042B786    pop         ecx
 0042B787    mov         dword ptr fs:[eax],edx
>0042B78A    jmp         0042B79D
>0042B78C    jmp         @HandleAnyException
 0042B791    mov         dword ptr [ebp-4],8000FFFF
 0042B798    call        @DoneExcept
 0042B79D    xor         eax,eax
 0042B79F    pop         edx
 0042B7A0    pop         ecx
 0042B7A1    pop         ecx
 0042B7A2    mov         dword ptr fs:[eax],edx
 0042B7A5    push        42B7BA
 0042B7AA    lea         eax,[ebp+0C]
 0042B7AD    call        @IntfClear
 0042B7B2    ret
>0042B7B3    jmp         @HandleFinally
>0042B7B8    jmp         0042B7AA
 0042B7BA    mov         eax,dword ptr [ebp-4]
 0042B7BD    pop         edi
 0042B7BE    pop         esi
 0042B7BF    pop         ebx
 0042B7C0    mov         esp,ebp
 0042B7C2    pop         ebp
 0042B7C3    ret         18
end;*}

//0042B7C8
{*function sub_0042B7C8:?;
begin
 0042B7C8    push        ebp
 0042B7C9    mov         ebp,esp
 0042B7CB    push        ecx
 0042B7CC    xor         eax,eax
 0042B7CE    mov         dword ptr [ebp-4],eax
 0042B7D1    mov         eax,dword ptr [ebp-4]
 0042B7D4    pop         ecx
 0042B7D5    pop         ebp
 0042B7D6    ret         8
end;*}

//0042B7DC
{*function sub_0042B7DC:?;
begin
 0042B7DC    push        ebp
 0042B7DD    mov         ebp,esp
 0042B7DF    push        ecx
 0042B7E0    mov         dword ptr [ebp-4],80030102
 0042B7E7    mov         eax,dword ptr [ebp-4]
 0042B7EA    pop         ecx
 0042B7EB    pop         ebp
 0042B7EC    ret         4
end;*}

//0042B7F0
{*function sub_0042B7F0:?;
begin
 0042B7F0    push        ebp
 0042B7F1    mov         ebp,esp
 0042B7F3    push        ecx
 0042B7F4    mov         dword ptr [ebp-4],80030001
 0042B7FB    mov         eax,dword ptr [ebp-4]
 0042B7FE    pop         ecx
 0042B7FF    pop         ebp
 0042B800    ret         18
end;*}

//0042B804
{*function sub_0042B804:?;
begin
 0042B804    push        ebp
 0042B805    mov         ebp,esp
 0042B807    push        ecx
 0042B808    mov         dword ptr [ebp-4],80030001
 0042B80F    mov         eax,dword ptr [ebp-4]
 0042B812    pop         ecx
 0042B813    pop         ebp
 0042B814    ret         18
end;*}

//0042B818
{*function sub_0042B818(?:?):?;
begin
 0042B818    push        ebp
 0042B819    mov         ebp,esp
 0042B81B    push        ecx
 0042B81C    push        ebx
 0042B81D    push        esi
 0042B81E    push        edi
 0042B81F    xor         eax,eax
 0042B821    mov         dword ptr [ebp-4],eax
 0042B824    xor         eax,eax
 0042B826    push        ebp
 0042B827    push        42B89A
 0042B82C    push        dword ptr fs:[eax]
 0042B82F    mov         dword ptr fs:[eax],esp
 0042B832    mov         eax,dword ptr [ebp+0C]
 0042B835    test        eax,eax
>0042B837    je          0042B890
 0042B839    mov         eax,dword ptr [ebp+0C]
 0042B83C    mov         dword ptr [eax+4],2
 0042B843    mov         eax,dword ptr [ebp+8]
 0042B846    mov         eax,dword ptr [eax+0C]
 0042B849    mov         edx,dword ptr [eax]
 0042B84B    call        dword ptr [edx]
 0042B84D    mov         ecx,dword ptr [ebp+0C]
 0042B850    mov         dword ptr [ecx+8],eax
 0042B853    mov         dword ptr [ecx+0C],edx
 0042B856    mov         eax,dword ptr [ebp+0C]
 0042B859    xor         edx,edx
 0042B85B    mov         dword ptr [eax+10],edx
 0042B85E    mov         eax,dword ptr [ebp+0C]
 0042B861    xor         edx,edx
 0042B863    mov         dword ptr [eax+14],edx
 0042B866    mov         eax,dword ptr [ebp+0C]
 0042B869    xor         edx,edx
 0042B86B    mov         dword ptr [eax+18],edx
 0042B86E    mov         eax,dword ptr [ebp+0C]
 0042B871    xor         edx,edx
 0042B873    mov         dword ptr [eax+1C],edx
 0042B876    mov         eax,dword ptr [ebp+0C]
 0042B879    xor         edx,edx
 0042B87B    mov         dword ptr [eax+20],edx
 0042B87E    mov         eax,dword ptr [ebp+0C]
 0042B881    xor         edx,edx
 0042B883    mov         dword ptr [eax+24],edx
 0042B886    mov         eax,dword ptr [ebp+0C]
 0042B889    mov         dword ptr [eax+2C],1
 0042B890    xor         eax,eax
 0042B892    pop         edx
 0042B893    pop         ecx
 0042B894    pop         ecx
 0042B895    mov         dword ptr fs:[eax],edx
>0042B898    jmp         0042B8AB
>0042B89A    jmp         @HandleAnyException
 0042B89F    mov         dword ptr [ebp-4],8000FFFF
 0042B8A6    call        @DoneExcept
 0042B8AB    mov         eax,dword ptr [ebp-4]
 0042B8AE    pop         edi
 0042B8AF    pop         esi
 0042B8B0    pop         ebx
 0042B8B1    pop         ecx
 0042B8B2    pop         ebp
 0042B8B3    ret         0C
end;*}

//0042B8B8
{*function sub_0042B8B8:?;
begin
 0042B8B8    push        ebp
 0042B8B9    mov         ebp,esp
 0042B8BB    push        ecx
 0042B8BC    mov         eax,dword ptr [ebp+0C]
 0042B8BF    test        eax,eax
>0042B8C1    je          0042B8C7
 0042B8C3    xor         edx,edx
 0042B8C5    mov         dword ptr [eax],edx
 0042B8C7    mov         dword ptr [ebp-4],80004001
 0042B8CE    mov         eax,dword ptr [ebp-4]
 0042B8D1    pop         ecx
 0042B8D2    pop         ebp
 0042B8D3    ret         8
end;*}

//0042B8D8
procedure FreeIntConstList;
begin
{*
 0042B8D8    push        ebp
 0042B8D9    mov         ebp,esp
 0042B8DB    add         esp,0FFFFFFF4
 0042B8DE    mov         eax,[00571A84];IntConstList:TThreadList
 0042B8E3    call        TThreadList.LockList
 0042B8E8    mov         dword ptr [ebp-8],eax
 0042B8EB    xor         eax,eax
 0042B8ED    push        ebp
 0042B8EE    push        42B93F
 0042B8F3    push        dword ptr fs:[eax]
 0042B8F6    mov         dword ptr fs:[eax],esp
 0042B8F9    mov         eax,dword ptr [ebp-8]
 0042B8FC    mov         eax,dword ptr [eax+8]
 0042B8FF    dec         eax
 0042B900    test        eax,eax
>0042B902    jl          0042B927
 0042B904    inc         eax
 0042B905    mov         dword ptr [ebp-0C],eax
 0042B908    mov         dword ptr [ebp-4],0
 0042B90F    mov         edx,dword ptr [ebp-4]
 0042B912    mov         eax,dword ptr [ebp-8]
 0042B915    call        TList.Get
 0042B91A    call        TObject.Free
 0042B91F    inc         dword ptr [ebp-4]
 0042B922    dec         dword ptr [ebp-0C]
>0042B925    jne         0042B90F
 0042B927    xor         eax,eax
 0042B929    pop         edx
 0042B92A    pop         ecx
 0042B92B    pop         ecx
 0042B92C    mov         dword ptr fs:[eax],edx
 0042B92F    push        42B946
 0042B934    mov         eax,[00571A84];IntConstList:TThreadList
 0042B939    call        TThreadList.UnlockList
 0042B93E    ret
>0042B93F    jmp         @HandleFinally
>0042B944    jmp         0042B934
 0042B946    mov         eax,[00571A84];IntConstList:TThreadList
 0042B94B    call        TObject.Free
 0042B950    mov         esp,ebp
 0042B952    pop         ebp
 0042B953    ret
*}
end;

//0042B954
procedure ModuleUnload(Instance:Longint);
begin
{*
 0042B954    push        ebp
 0042B955    mov         ebp,esp
 0042B957    push        ecx
 0042B958    mov         dword ptr [ebp-4],eax
 0042B95B    mov         eax,dword ptr [ebp-4]
 0042B95E    call        UnRegisterModuleClasses
 0042B963    pop         ecx
 0042B964    pop         ebp
 0042B965    ret
*}
end;

//0042B968
function StdWndProc(Window:HWND; Message:Longint; WParam:Longint; LParam:Longint):Longint; stdcall;
begin
{*
 0042B968    push        ebp
 0042B969    mov         ebp,esp
 0042B96B    xor         eax,eax
 0042B96D    push        eax
 0042B96E    push        dword ptr [ebp+14]
 0042B971    push        dword ptr [ebp+10]
 0042B974    push        dword ptr [ebp+0C]
 0042B977    mov         edx,esp
 0042B979    mov         eax,dword ptr [ecx+4]
 0042B97C    call        dword ptr [ecx]
 0042B97E    add         esp,0C
 0042B981    pop         eax
 0042B982    pop         ebp
 0042B983    ret         10
*}
end;

//0042B988
{*function sub_0042B988(?:?; ?:Longint):?;
begin
 0042B988    push        ebp
 0042B989    mov         ebp,esp
 0042B98B    add         esp,0FFFFFFF4
 0042B98E    mov         dword ptr [ebp-8],edx
 0042B991    mov         dword ptr [ebp-4],eax
 0042B994    mov         eax,dword ptr [ebp-4]
 0042B997    add         eax,5
 0042B99A    mov         edx,dword ptr [ebp-8]
 0042B99D    sub         edx,eax
 0042B99F    mov         dword ptr [ebp-0C],edx
 0042B9A2    mov         eax,dword ptr [ebp-0C]
 0042B9A5    mov         esp,ebp
 0042B9A7    pop         ebp
 0042B9A8    ret
end;*}

//0042B9AC
{*function sub_0042B9AC(?:?; ?:?):?;
begin
 0042B9AC    push        ebp
 0042B9AD    mov         ebp,esp
 0042B9AF    add         esp,0FFFFFFF4
 0042B9B2    cmp         dword ptr ds:[571AB0],0;gvar_00571AB0
>0042B9B9    jne         0042BA59
 0042B9BF    push        40
 0042B9C1    push        1000
 0042B9C6    push        1000
 0042B9CB    push        0
 0042B9CD    call        kernel32.VirtualAlloc
 0042B9D2    mov         dword ptr [ebp-8],eax
 0042B9D5    mov         eax,[00571AAC];0x0 gvar_00571AAC:Pointer
 0042B9DA    mov         edx,dword ptr [ebp-8]
 0042B9DD    mov         dword ptr [edx],eax
 0042B9DF    mov         eax,dword ptr [ebp-8]
 0042B9E2    lea         edx,[eax+4]
 0042B9E5    mov         eax,56BD40
 0042B9EA    mov         ecx,2
 0042B9EF    call        Move
 0042B9F4    mov         edx,42B968;StdWndProc:Longint
 0042B9F9    mov         eax,dword ptr [ebp-8]
 0042B9FC    add         eax,5
 0042B9FF    call        0042B988
 0042BA04    mov         edx,dword ptr [ebp-8]
 0042BA07    mov         dword ptr [edx+6],eax
 0042BA0A    mov         eax,dword ptr [ebp-8]
 0042BA0D    add         eax,0A
 0042BA10    mov         dword ptr [ebp-0C],eax
 0042BA13    mov         eax,dword ptr [ebp-0C]
 0042BA16    mov         byte ptr [eax],0E8
 0042BA19    mov         eax,dword ptr [ebp-8]
 0042BA1C    lea         edx,[eax+4]
 0042BA1F    mov         eax,dword ptr [ebp-0C]
 0042BA22    call        0042B988
 0042BA27    mov         edx,dword ptr [ebp-0C]
 0042BA2A    mov         dword ptr [edx+1],eax
 0042BA2D    mov         eax,[00571AB0];0x0 gvar_00571AB0
 0042BA32    mov         edx,dword ptr [ebp-0C]
 0042BA35    mov         dword ptr [edx+5],eax
 0042BA38    mov         eax,dword ptr [ebp-0C]
 0042BA3B    mov         [00571AB0],eax;gvar_00571AB0
 0042BA40    add         dword ptr [ebp-0C],0D
 0042BA44    mov         eax,dword ptr [ebp-0C]
 0042BA47    sub         eax,dword ptr [ebp-8]
 0042BA4A    cmp         eax,0FFC
>0042BA4F    jl          0042BA13
 0042BA51    mov         eax,dword ptr [ebp-8]
 0042BA54    mov         [00571AAC],eax;gvar_00571AAC:Pointer
 0042BA59    mov         eax,[00571AB0];0x0 gvar_00571AB0
 0042BA5E    mov         dword ptr [ebp-4],eax
 0042BA61    mov         eax,[00571AB0];0x0 gvar_00571AB0
 0042BA66    mov         dword ptr [ebp-0C],eax
 0042BA69    mov         eax,dword ptr [ebp-0C]
 0042BA6C    mov         eax,dword ptr [eax+5]
 0042BA6F    mov         [00571AB0],eax;gvar_00571AB0
 0042BA74    mov         eax,dword ptr [ebp-0C]
 0042BA77    mov         edx,dword ptr [ebp+8]
 0042BA7A    mov         dword ptr [eax+5],edx
 0042BA7D    mov         edx,dword ptr [ebp+0C]
 0042BA80    mov         dword ptr [eax+9],edx
 0042BA83    mov         eax,dword ptr [ebp-4]
 0042BA86    mov         esp,ebp
 0042BA88    pop         ebp
 0042BA89    ret         8
end;*}

//0042BA8C
procedure sub_0042BA8C(?:Longint);
begin
{*
 0042BA8C    push        ebp
 0042BA8D    mov         ebp,esp
 0042BA8F    push        ecx
 0042BA90    mov         dword ptr [ebp-4],eax
 0042BA93    cmp         dword ptr [ebp-4],0
>0042BA97    je          0042BAAD
 0042BA99    mov         eax,dword ptr [ebp-4]
 0042BA9C    mov         edx,dword ptr ds:[571AB0];0x0 gvar_00571AB0
 0042BAA2    mov         dword ptr [eax+5],edx
 0042BAA5    mov         eax,dword ptr [ebp-4]
 0042BAA8    mov         [00571AB0],eax;gvar_00571AB0
 0042BAAD    pop         ecx
 0042BAAE    pop         ebp
 0042BAAF    ret
*}
end;

//0042BAB0
procedure _NF__E7C;
begin
{*
 0042BAB0    push        esp
 0042BAB1    push        eax
 0042BAB2    push        ebp
>0042BAB3    je          0042BB1E
 0042BAB5    ins         byte ptr [edi],dl
 0042BAB6    push        edi
 0042BAB7    imul        ebp,dword ptr [esi+64],776F
 0042BABE    add         byte ptr [eax],al
 0042BAC0    push        ebp
 0042BAC1    mov         ebp,esp
 0042BAC3    add         esp,0FFFFFFD0
 0042BAC6    mov         eax,[0056F668];0x0 HInstance:LongWord
 0042BACB    mov         [0056BD54],eax;gvar_0056BD54:LongWord
 0042BAD0    lea         eax,[ebp-2D]
 0042BAD3    push        eax
 0042BAD4    mov         eax,[0056BD68];^_NF__E7C
 0042BAD9    push        eax
 0042BADA    mov         eax,[0056F668];0x0 HInstance:LongWord
 0042BADF    push        eax
 0042BAE0    call        user32.GetClassInfoA
 0042BAE5    cmp         eax,1
 0042BAE8    sbb         eax,eax
 0042BAEA    inc         eax
 0042BAEB    mov         byte ptr [ebp-5],al
 0042BAEE    cmp         byte ptr [ebp-5],0
>0042BAF2    je          0042BAFE
 0042BAF4    mov         eax,407EFC;user32.DefWindowProcA:Longint
 0042BAF9    cmp         eax,dword ptr [ebp-29]
>0042BAFC    je          0042BB1F
 0042BAFE    cmp         byte ptr [ebp-5],0
>0042BB02    je          0042BB15
 0042BB04    mov         eax,[0056F668];0x0 HInstance:LongWord
 0042BB09    push        eax
 0042BB0A    mov         eax,[0056BD68];^_NF__E7C
 0042BB0F    push        eax
 0042BB10    call        user32.UnregisterClassA
 0042BB15    push        56BD44
 0042BB1A    call        user32.RegisterClassA
 0042BB1F    push        80000000
 0042BB24    push        0
 0042BB26    push        0
 0042BB28    push        0
 0042BB2A    push        0
 0042BB2C    push        0
 0042BB2E    push        0
 0042BB30    mov         eax,[0056F668];0x0 HInstance:LongWord
 0042BB35    push        eax
 0042BB36    push        0
 0042BB38    mov         ecx,42BB78
 0042BB3D    mov         edx,dword ptr ds:[56BD68];^_NF__E7C
 0042BB43    mov         eax,80
 0042BB48    call        004086E4
 0042BB4D    mov         dword ptr [ebp-4],eax
 0042BB50    cmp         word ptr [ebp+0A],0
>0042BB55    je          0042BB6E
 0042BB57    push        dword ptr [ebp+0C]
 0042BB5A    push        dword ptr [ebp+8]
 0042BB5D    call        0042B9AC
 0042BB62    push        eax
 0042BB63    push        0FC
 0042BB65    mov         eax,dword ptr [ebp-4]
 0042BB68    push        eax
 0042BB69    call        user32.SetWindowLongA
 0042BB6E    mov         eax,dword ptr [ebp-4]
 0042BB71    mov         esp,ebp
 0042BB73    pop         ebp
 0042BB74    ret         8
*}
end;

//0042BAC0
{*function sub_0042BAC0(?:?; ?:?; ?:?):?;
begin
 0042BAC0    push        ebp
 0042BAC1    mov         ebp,esp
 0042BAC3    add         esp,0FFFFFFD0
 0042BAC6    mov         eax,[0056F668];0x0 HInstance:LongWord
 0042BACB    mov         [0056BD54],eax;gvar_0056BD54:LongWord
 0042BAD0    lea         eax,[ebp-2D]
 0042BAD3    push        eax
 0042BAD4    mov         eax,[0056BD68];^_NF__E7C
 0042BAD9    push        eax
 0042BADA    mov         eax,[0056F668];0x0 HInstance:LongWord
 0042BADF    push        eax
 0042BAE0    call        user32.GetClassInfoA
 0042BAE5    cmp         eax,1
 0042BAE8    sbb         eax,eax
 0042BAEA    inc         eax
 0042BAEB    mov         byte ptr [ebp-5],al
 0042BAEE    cmp         byte ptr [ebp-5],0
>0042BAF2    je          0042BAFE
 0042BAF4    mov         eax,407EFC;user32.DefWindowProcA:Longint
 0042BAF9    cmp         eax,dword ptr [ebp-29]
>0042BAFC    je          0042BB1F
 0042BAFE    cmp         byte ptr [ebp-5],0
>0042BB02    je          0042BB15
 0042BB04    mov         eax,[0056F668];0x0 HInstance:LongWord
 0042BB09    push        eax
 0042BB0A    mov         eax,[0056BD68];^_NF__E7C
 0042BB0F    push        eax
 0042BB10    call        user32.UnregisterClassA
 0042BB15    push        56BD44
 0042BB1A    call        user32.RegisterClassA
 0042BB1F    push        80000000
 0042BB24    push        0
 0042BB26    push        0
 0042BB28    push        0
 0042BB2A    push        0
 0042BB2C    push        0
 0042BB2E    push        0
 0042BB30    mov         eax,[0056F668];0x0 HInstance:LongWord
 0042BB35    push        eax
 0042BB36    push        0
 0042BB38    mov         ecx,42BB78
 0042BB3D    mov         edx,dword ptr ds:[56BD68];^_NF__E7C
 0042BB43    mov         eax,80
 0042BB48    call        004086E4
 0042BB4D    mov         dword ptr [ebp-4],eax
 0042BB50    cmp         word ptr [ebp+0A],0
>0042BB55    je          0042BB6E
 0042BB57    push        dword ptr [ebp+0C]
 0042BB5A    push        dword ptr [ebp+8]
 0042BB5D    call        0042B9AC
 0042BB62    push        eax
 0042BB63    push        0FC
 0042BB65    mov         eax,dword ptr [ebp-4]
 0042BB68    push        eax
 0042BB69    call        user32.SetWindowLongA
 0042BB6E    mov         eax,dword ptr [ebp-4]
 0042BB71    mov         esp,ebp
 0042BB73    pop         ebp
 0042BB74    ret         8
end;*}

//0042BB7C
procedure sub_0042BB7C(?:HWND);
begin
{*
 0042BB7C    push        ebp
 0042BB7D    mov         ebp,esp
 0042BB7F    add         esp,0FFFFFFF8
 0042BB82    mov         dword ptr [ebp-4],eax
 0042BB85    push        0FC
 0042BB87    mov         eax,dword ptr [ebp-4]
 0042BB8A    push        eax
 0042BB8B    call        user32.GetWindowLongA
 0042BB90    mov         dword ptr [ebp-8],eax
 0042BB93    mov         eax,dword ptr [ebp-4]
 0042BB96    push        eax
 0042BB97    call        user32.DestroyWindow
 0042BB9C    mov         eax,407EFC;user32.DefWindowProcA:Longint
 0042BBA1    cmp         eax,dword ptr [ebp-8]
>0042BBA4    je          0042BBAE
 0042BBA6    mov         eax,dword ptr [ebp-8]
 0042BBA9    call        0042BA8C
 0042BBAE    pop         ecx
 0042BBAF    pop         ecx
 0042BBB0    pop         ebp
 0042BBB1    ret
*}
end;

Initialization
//0042BC64
{*
 0042BC64    push        ebp
 0042BC65    mov         ebp,esp
 0042BC67    xor         eax,eax
 0042BC69    push        ebp
 0042BC6A    push        42BCED
 0042BC6F    push        dword ptr fs:[eax]
 0042BC72    mov         dword ptr fs:[eax],esp
 0042BC75    sub         dword ptr ds:[571A80],1
>0042BC7C    jae         0042BCDF
 0042BC7E    call        InitThreadSynchronization
 0042BC83    mov         eax,42B954;ModuleUnload
 0042BC88    call        AddModuleUnloadProc
 0042BC8D    mov         dl,1
 0042BC8F    mov         eax,[0040BB2C];TMultiReadExclusiveWriteSynchronizer
 0042BC94    call        TMultiReadExclusiveWriteSynchronizer.Create
 0042BC99    mov         edx,eax
 0042BC9B    test        edx,edx
>0042BC9D    je          0042BCA2
 0042BC9F    sub         edx,0FFFFFFD4
 0042BCA2    mov         eax,571A74;GlobalNameSpace:IReadWriteSync
 0042BCA7    call        @IntfCopy
 0042BCAC    mov         dl,1
 0042BCAE    mov         eax,[0041E818];TRegGroups
 0042BCB3    call        TRegGroups.Create
 0042BCB8    mov         [00571A88],eax;RegGroups:TRegGroups
 0042BCBD    mov         dl,1
 0042BCBF    mov         eax,[0041D4D0];TThreadList
 0042BCC4    call        TThreadList.Create
 0042BCC9    mov         [00571A84],eax;IntConstList:TThreadList
 0042BCCE    mov         dl,1
 0042BCD0    mov         eax,[0041D4D0];TThreadList
 0042BCD5    call        TThreadList.Create
 0042BCDA    mov         [00571A90],eax;GlobalFixupList:TThreadList
 0042BCDF    xor         eax,eax
 0042BCE1    pop         edx
 0042BCE2    pop         ecx
 0042BCE3    pop         ecx
 0042BCE4    mov         dword ptr fs:[eax],edx
 0042BCE7    push        42BCF4
 0042BCEC    ret
>0042BCED    jmp         @HandleFinally
>0042BCF2    jmp         0042BCEC
 0042BCF4    pop         ebp
 0042BCF5    ret
*}
Finalization
//0042BBB4
{*
 0042BBB4    push        ebp
 0042BBB5    mov         ebp,esp
 0042BBB7    xor         eax,eax
 0042BBB9    push        ebp
 0042BBBA    push        42BC58
 0042BBBF    push        dword ptr fs:[eax]
 0042BBC2    mov         dword ptr fs:[eax],esp
 0042BBC5    inc         dword ptr ds:[571A80]
>0042BBCB    jne         0042BC4A
 0042BBCD    mov         eax,[0056F668];HInstance:LongWord
 0042BBD2    call        UnRegisterModuleClasses
 0042BBD7    mov         eax,[00571A74];GlobalNameSpace:IReadWriteSync
 0042BBDC    mov         edx,dword ptr [eax]
 0042BBDE    call        dword ptr [edx+14]
 0042BBE1    call        FreeIntConstList
 0042BBE6    xor         edx,edx
 0042BBE8    xor         eax,eax
 0042BBEA    call        RemoveFixupReferences
 0042BBEF    mov         eax,571A90;GlobalFixupList:TThreadList
 0042BBF4    call        FreeAndNil
 0042BBF9    call        @GetTls
 0042BBFE    lea         eax,[eax+0C];{GlobalLists:TList}
 0042BC04    call        FreeAndNil
 0042BC09    mov         eax,571A88;RegGroups:TRegGroups
 0042BC0E    call        FreeAndNil
 0042BC13    mov         eax,571A74;GlobalNameSpace:IReadWriteSync
 0042BC18    call        @IntfClear
 0042BC1D    mov         eax,42B954;ModuleUnload
 0042BC22    call        RemoveModuleUnloadProc
 0042BC27    mov         eax,56BD3C
 0042BC2C    call        FreeAndNil
 0042BC31    call        DoneThreadSynchronization
 0042BC36    mov         eax,571A8C;FindGlobalComponentProcs:TList
 0042BC3B    call        FreeAndNil
 0042BC40    mov         eax,571A74;GlobalNameSpace:IReadWriteSync
 0042BC45    call        @IntfClear
 0042BC4A    xor         eax,eax
 0042BC4C    pop         edx
 0042BC4D    pop         ecx
 0042BC4E    pop         ecx
 0042BC4F    mov         dword ptr fs:[eax],edx
 0042BC52    push        42BC5F
 0042BC57    ret
>0042BC58    jmp         @HandleFinally
>0042BC5D    jmp         0042BC57
 0042BC5F    pop         ebp
 0042BC60    ret
*}
end.