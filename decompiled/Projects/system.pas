//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit system;

interface

uses
  SysUtils, Classes;

type
  Boolean = (False, True);
  TObject = class()
    function ClassType:TClass;//004041D8
    function ClassName:ShortString;//004041E4
    function ClassNameIs(const Name:AnsiString):Boolean;//004041F8
    function ClassParent:TClass;//00404220
    function InstanceSize:Integer;//0040425C
    constructor Create;//00404264
    procedure Free;//00404294
    function InitInstance(Instance:Pointer):TObject;//004042A0
    procedure CleanupInstance;//004042F8
    function GetInterface(const IID:TGUID; var Obj:void ):Boolean;//00404348
    function GetInterfaceEntry(const IID:TGUID):PInterfaceEntry;//004043E8
    function InheritsFrom(AClass:TClass):Boolean;//004044CC
    function MethodAddress(const Name:ShortString):Pointer;//0040452C
    function MethodName(Address:Pointer):ShortString;//0040457C
    function FieldAddress(const Name:ShortString):Pointer;//004045BC
  end;
  TInterfacedObject = class(TObject)
  public
    FRefCount:Integer;//f4
    function _AddRef:Integer; stdcall;//00406E14
    function _Release:Integer; stdcall;//00406E28
  end;
  TBoundArray = array of ?;
//elSize = 4
//varType equivalent: varInteger;
    function CloseHandle:Integer; stdcall;//00401268
    function CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;//00401270
    function GetFileType:DWORD; stdcall;//00401278
    function GetFileSize(x:Integer):Integer; stdcall;//00401280
    function GetStdHandle:Integer; stdcall;//00401288
    procedure RaiseException(dwExceptionFlags:DWORD; nNumberOfArguments:DWORD; lpArguments:PDWORD); stdcall;//00401290
    function ReadFile(var Buffer:void ; nNumberOfBytesToRead:Cardinal; var lpNumberOfBytesRead:Cardinal; lpOverlapped:Pointer):Integer; stdcall;//00401298
    procedure RtlUnwind;//004012A0
    function SetEndOfFile:LongBool; stdcall;//004012A8
    function SetFilePointer(Distance:Integer; DistanceHigh:Pointer; MoveMethod:Integer):Integer; stdcall;//004012B0
    function UnhandledExceptionFilter:Longint; stdcall;//004012B8
    function WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;//004012C0
    function CharNextA:PAnsiChar; stdcall;//004012C8
    procedure ExitProcess; stdcall;//004012D0
    function MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;//004012D8
    procedure FindClose;//004012E0
    function FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;//004012E8
    function FreeLibrary:LongBool; stdcall;//004012F0
    function GetCommandLineA:PAnsiChar;//004012F8
    function GetLastError:Integer;//00401300
    function GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;//00401308
    function GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;//00401310
    function GetModuleHandleA:HMODULE; stdcall;//00401318
    function GetProcAddress(lpProcName:PAnsiChar):Pointer; stdcall;//00401320
    procedure GetStartupInfoA; stdcall;//00401328
    function GetThreadLocale:Integer;//00401330
    function LoadLibraryExA(hFile:THandle; dwFlags:DWORD):HMODULE; stdcall;//00401338
    function LoadStringA(uID:LongWord; lpBuffer:PAnsiChar; nBufferMax:Integer):Integer; stdcall;//00401340
    function lstrcpyn(lpString2:PChar; iMaxLength:Integer):PChar; stdcall;//00401348
    function lstrlen:Integer; stdcall;//00401350
    function MultiByteToWideChar(Flags:Integer; MBStr:PAnsiChar; MBCount:Integer; WCStr:PWideChar; WCCount:Integer):Integer; stdcall;//00401358
    function RegCloseKey:Integer; stdcall;//00401360
    function RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;//00401368
    function RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;//00401370
    function WideCharToMultiByte(dwFlags:DWORD; lpWideCharStr:PWideChar; cchWideChar:Integer; lpMultiByteStr:PAnsiChar; cchMultiByte:Integer; lpDefaultChar:PAnsiChar; lpUsedDefaultChar:PBOOL):Integer; stdcall;//00401378
    function VirtualQuery(var lpBuffer:TMemInfo; dwLength:Integer):Integer; stdcall;//00401380
    function SysAllocStringLen(Len:Integer):PWideChar; stdcall;//00401388
    function SysReAllocStringLen(psz:PWideChar; len:Integer):Integer; stdcall;//00401390
    procedure SysFreeString; stdcall;//00401398
    function InterlockedIncrement:Integer; stdcall;//004013A0
    function InterlockedDecrement:Integer;//004013A8
    function GetCurrentThreadId:Cardinal;//004013B0
    function GetVersion:DWORD;//004013B8
    function GetCmdShow:Integer;//004013C0
    function LocalAlloc(size:Integer):Pointer; stdcall;//004013E4
    function LocalFree:Pointer; stdcall;//004013EC
    function VirtualAlloc(dwSize:DWORD; flAllocationType:DWORD; flProtect:DWORD):Pointer; stdcall;//004013F4
    function VirtualFree(dwSize:DWORD; dwFreeType:DWORD):LongBool; stdcall;//004013FC
    procedure InitializeCriticalSection; stdcall;//00401404
    procedure EnterCriticalSection; stdcall;//0040140C
    procedure LeaveCriticalSection; stdcall;//00401414
    procedure DeleteCriticalSection; stdcall;//0040141C
    //function sub_00401424:?;//00401424
    procedure sub_004014A8(?:TBlockDesc);//004014A8
    function AddBlockAfter(prev:PBlockDesc; const b:TBlock):Boolean;//004014B0
    //function sub_0040150C(?:?):?;//0040150C
    function MergeBlockAfter(prev:PBlockDesc; const b:TBlock):TBlock;//00401540
    //procedure sub_004015C8(?:PBlockDesc; ?:?);//004015C8
    function GetSpace(minSize:Integer):TBlock;//0040168C
    function GetSpaceAt(addr:PAnsiChar; minSize:Integer):TBlock;//004016F0
    //procedure sub_00401768(?:?; ?:?; ?:?);//00401768
    //procedure sub_00401830(?:?; ?:?; ?:?);//00401830
    //procedure sub_004018F0(?:?; ?:?; ?:?);//004018F0
    function GetCommitted(minSize:Integer):TBlock;//004019AC
    function GetCommittedAt(addr:PAnsiChar; minSize:Integer):TBlock;//00401A54
    //procedure sub_00401B98(?:?; ?:?; ?:?);//00401B98
    //function sub_00401C2C:?;//00401C2C
    procedure UninitAllocator;//00401D04
    //procedure sub_00401E04(?:?);//00401E04
    //function sub_00401E98(?:?):?;//00401E98
    procedure FillBeforeGap(a:PAnsiChar; size:Integer);//00401EDC
    procedure InternalFreeMem(a:PAnsiChar);//00401F18
    procedure FillAfterGap(a:PAnsiChar; size:Integer);//00401F3C
    function FillerSizeBeforeGap(a:PAnsiChar):Integer;//00401F64
    function FillerSizeAfterGap(a:PAnsiChar):Integer;//00401FDC
    //function sub_0040201C(?:?; ?:?):?;//0040201C
    //function sub_004020D8(?:?; ?:?):?;//004020D8
    procedure FreeCurAlloc;//004021D0
    function MergeCommit(b:TBlock):Boolean;//0040221C
    function NewCommit(minSize:Integer):Boolean;//004022A8
    function NewCommitAt(addr:Pointer; minSize:Integer):Boolean;//004022D4
    //function sub_00402308(?:?):?;//00402308
    //function sub_00402340(?:?):?;//00402340
    function SysGetMem(Size:Integer):Pointer;//00402488
    function SysFreeMem(P:Pointer):Integer;//00402634
    //function sub_0040280C(?:?; ?:?):?;//0040280C
    function SysReallocMem(P:Pointer; Size:Integer):Pointer;//00402A10
    //function sub_00402ADC(?:TBlockDesc):?;//00402ADC
    //procedure sub_00402B00(?:?);//00402B00
    function @GetMem(size:Integer):Pointer;//00402DDC
    function @FreeMem(p:Pointer):Integer;//00402E0C
    function @ReallocMem(var P:Pointer; NewSize:Integer):Pointer;//00402E2C
    procedure GetMemoryManager(var MemMgr:TMemoryManager);//00402E7C
    procedure SetMemoryManager(const MemMgr:TMemoryManager);//00402E98
    function IsMemoryManagerSet:Boolean;//00402EB4
    function ExceptObject:TObject;//00402EE4
    //function sub_00402F04:?;//00402F04
    //function sub_00402F30:?;//00402F30
    procedure RunErrorAt(ErrCode:Integer; ErrorAtAddr:Pointer);//00402F6C
    procedure ErrorAt(ErrorCode:Byte; ErrorAddr:Pointer);//00402F78
    procedure Error(errorCode:TRuntimeError);//00402FC4
    procedure @_IOTest;//00402FD0
    procedure SetInOutRes(NewValue:Integer);//00402FF0
    procedure InOutError;//00403000
    procedure @Copy(S:ShortString; Index:Integer; Count:Integer; Result:ShortString);//0040300C
    function IOResult:Integer;//00403050
    procedure Move(const Source:void ; var Dest:void ; Count:Integer);//00403070
    //function sub_004030B0(?:?; ?:?):?;//004030B0
    //procedure sub_00403214(?:?; ?:?);//00403214
    function UpCase(Ch:Char):Char;//00403278
    procedure Set8087CW(NewCW:Word);//00403284
    //function sub_00403294:?;//00403294
    procedure @COS;//0040329C
    procedure @EXP;//004032AC
    procedure @SIN;//004032C4
    procedure @FRAC;//004032D4
    procedure @ROUND;//004032F8
    function @TRUNC(X:Extended):Int64;//00403304
    procedure @AbstractError;//00403328
    function OpenText(var t:TTextRec; Mode:Word):Integer;//00403344
    function @RewritText(var T:TTextRec):Integer;//0040339C
    function TextIn(var t:TTextRec):Integer;//004033A8
    function FileNOPProc(var t:void ):Integer;//004033E4
    function TextOut(var t:TTextRec):Integer;//004033E8
    function InternalClose(Handle:Integer):Boolean;//00403424
    function TextClose(var t:TTextRec):Integer;//00403434
    function TextOpen(var t:TTextRec):Integer;//00403454
    function @Assign(var F:TFileRec; S:AnsiString):Integer;//00403600
    function InternalFlush(var t:TTextRec; Func:TTextIOFunc):Integer;//00403668
    function Flush(var t:Text):Integer;//004036B0
    procedure @Flush(var F:TFileRec);//004036BC
    function WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;//004036C8
    function BlockIO(var f:TFileRec; buffer:Pointer; recCnt:Cardinal; var recsDone:Integer; ModeMask:Integer; IOProc:TIOProc; ErrorNo:Integer):Cardinal;//004036D0
    //procedure sub_0040375C(?:?);//0040375C
    procedure @Close(var F:TFileRec);//0040377C
    procedure @PStrNCat(Dest:PShortString; Source:PShortString; MaxLen:Byte);//004037D4
    procedure @PStrCpy(Dest:PShortString; Source:PShortString);//00403804
    procedure @PStrNCpy(Dest:PShortString; Source:PShortString; MaxLen:Byte);//00403810
    procedure @PStrCmp(S1:PShortString; S2:PShortString);//0040382C
    procedure @AStrCmp(S1:PShortString; S2:PShortString; Bytes:Integer);//004038B0
    procedure @FillChar(var dst:Pointer; cnt:Integer; val:Char);//00403920
    function @CloseFile(var f:TFileRec):Integer;//00403940
    function OpenFile(var f:TFileRec; recSiz:Integer; mode:Integer):Integer;//00403968
    function @RewritFile(var F:TFileRec; RecSize:Longint):Integer;//00403A48
    procedure @StrLong(Val:Integer; Width:Integer; S:PShortString);//00403A54
    procedure @Str0Long(Val:Longint; S:PShortString);//00403AB4
    function @ValLong(s:AnsiString; var code:Integer):Longint;//00403AC0
    function TryOpenForOutput(var t:TTextRec):Boolean;//00403B94
    function @WriteBytes(var t:TTextRec; const b:void ; cnt:Integer):Pointer;//00403BD8
    function @WriteSpaces(var t:TTextRec; cnt:Integer):Pointer;//00403C2C
    //function sub_00403CA8(?:?):?;//00403CA8
    procedure @_CToPasStr(Dest:PShortString; const Source:PAnsiChar);//00403CFC
    procedure @_CLenToPasStr(Dest:PShortString; const Source:PAnsiChar; MaxLen:Integer);//00403D08
    procedure @SetElem(var Dest:SET; Elem:Byte; Size:Byte);//00403D2C
    procedure @SetRange;//00403D50
    procedure @SetEq;//00403DA8
    procedure @SetExpand;//00403DBC
    procedure FPower10;//00403DDC
    procedure @Pow10;//00403DE4
    function GetKeyboardType:Integer; stdcall;//004040C8
    function @isNECWindows:Boolean;//004040D0
    procedure @FpuMaskInit;//00404100
    procedure @FpuInit;//004041C4
    procedure @BoundErr;//004041D0
    function NewInstance:TObject;//0040422C
    procedure FreeInstance;//00404248
    destructor Destroy;//00404284
    function InvokeImplGetter(Self:TObject; ImplGetter:Cardinal):IInterface;//00404318
    function @IsClass(Child:TObject; Parent:TClass):Boolean;//0040442C
    function @AsClass(child:TObject; parent:TClass):TObject;//00404450
    procedure GetDynaMethod;//0040446C
    procedure @CallDynaInst;//0040449C
    procedure @FindDynaInst;//004044B4
    //function sub_004044E0(?:TClass):?;//004044E0
    //function SafeCallException:?;//004044F0
    procedure DefaultHandler;//004044F8
    procedure AfterConstruction;//004044FC
    procedure BeforeDestruction;//00404500
    procedure Dispatch(var Message:void );//00404504
    function @ClassCreate(AClass:TClass; Alloc:Boolean):TObject;//0040460C
    procedure @ClassDestroy(Instance:TObject);//0040465C
    function @AfterConstruction(Instance:TObject):TObject;//00404664
    function @BeforeDestruction(Instance:TObject; OuterMost:Shortint):TObject;//00404674
    procedure NotifyReRaise;//00404684
    procedure NotifyNonDelphiException;//004046A0
    procedure NotifyExcept;//004046C4
    procedure NotifyOnExcept;//004046DC
    procedure NotifyAnyExcept;//004046F0
    procedure CheckJmp;//00404704
    procedure NotifyExceptFinally;//00404724
    procedure NotifyTerminate;//0040474C
    procedure NotifyUnhandled;//00404768
    procedure @HandleAnyException;//00404788
    procedure @HandleOnException;//004048B4
    procedure @HandleFinally;//00404A3C
    procedure @RaiseExcept;//00404A74
    procedure @RaiseAgain;//00404A9C
    procedure @DoneExcept;//00404AF0
    procedure @TryFinallyExit;//00404B20
    procedure MapToRunError(P:PExceptionRecord); stdcall;//00404B38
    procedure @ExceptionHandler;//00404BD8
    procedure SetExceptionHandler;//00404C78
    procedure UnsetExceptionHandler;//00404C98
    procedure sub_00404CC0;//00404CC0
    procedure InitUnits;//00404D30
    procedure @StartExe(InitTable:PackageInfo; Module:PLibModule);//00404DA0
    procedure @InitResStrings;//00404DE0
    procedure @InitResStringImports;//00404E04
    procedure @InitImports;//00404E2C
    procedure MakeErrorMessage;//00404E50
    procedure ExitDll;//00404EAC
    procedure WriteErrorMessage;//00404EDC
    procedure @Halt0;//00404F68
    procedure @Halt(Code:Integer);//00405048
    procedure @RunError(errorCode:Byte);//00405054
    procedure @Assert(Message:AnsiString; Filename:AnsiString; LineNumber:Integer);//00405060
    procedure @LStrClr(var S:AnsiString);//00405080
    procedure @LStrArrayClr(var StrArray:Pointer; Count:Integer);//004050A4
    procedure @LStrAsg(var Dest:AnsiString; Source:AnsiString);//004050D4
    procedure @LStrLAsg(var Dest:AnsiString; const Source:AnsiString);//00405118
    function @NewAnsiString(length:Integer):Pointer;//00405144
    procedure @LStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);//00405170
    function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer):Integer;//004051A0
    function WCharFromChar(WCharDest:PWideChar; DestChars:Integer; const CharSource:PAnsiChar; SrcBytes:Integer):Integer;//004051C0
    procedure @LStrFromPWCharLen(var Dest:AnsiString; Source:PWideChar; Length:Integer);//004051DC
    procedure @LStrFromChar(var Dest:AnsiString; Source:AnsiChar);//00405268
    procedure @LStrFromPChar(var Dest:AnsiString; Source:PAnsiChar);//00405278
    procedure @LStrFromPWChar(var Dest:AnsiString; Source:PWideChar);//004052A8
    procedure @LStrFromString(var Dest:AnsiString; const Source:ShortString);//004052E4
    procedure @LStrFromArray(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);//004052F0
    procedure @LStrFromWStr(var Dest:AnsiString; const Source:WideString);//00405308
    procedure @LStrToString(var Dest:ShortString; const Source:AnsiString; MaxLen:Integer);//0040531C
    function @LStrLen(S:AnsiString):Integer;//00405340
    procedure @LStrCat(var Dest:AnsiString; Source:AnsiString);//00405348
    procedure @LStrCat3(var Dest:AnsiString; Source1:AnsiString; Source2:AnsiString);//0040538C
    procedure @LStrCatN(var Dest:AnsiString; ArgCnt:Integer);//00405400
    //function @LStrCmp(Left:AnsiString; Right:AnsiString):?;//0040548C
    function @LStrAddRef(var S:AnsiString):Pointer;//00405530
    function @LStrToPChar(S:AnsiString):PChar;//00405540
    function InternalUniqueString(var str:void ):Pointer;//0040554C
    procedure UniqueString(var str:AnsiString);//00405590
    //function sub_00405598:?;//00405598
    function @LStrCopy(const S:AnsiString; Index:Integer; Count:Integer):AnsiString;//004055A0
    procedure @LStrDelete(var S:AnsiString; Index:Integer; Count:Integer);//004055E0
    procedure @LStrInsert(const Source:AnsiString; var S:AnsiString; Index:Integer);//00405628
    function @LStrPos(const Substr:AnsiString; const S:AnsiString):Integer;//00405684
    procedure @LStrSetLength(var S:AnsiString; NewLen:Integer);//004056CC
    procedure @LStrOfChar(C:Char; Count:Integer; var Result:AnsiString);//00405730
    //function sub_0040575C(?:TFileRec; ?:AnsiString):?;//0040575C
    procedure @WriteLString(var T:TTextRec; S:AnsiString; Width:Longint);//00405778
    procedure WStrError;//00405798
    function @NewWideString(CharLength:Integer):Pointer;//004057A0
    procedure WStrSet(var S:WideString; P:PWideChar);//004057B8
    procedure @WStrClr(var S:WideString);//004057C8
    procedure @WStrArrayClr(var StrArray:Pointer; Count:Integer);//004057E0
    procedure @WStrAsg(var Dest:WideString; Source:WideString);//00405804
    procedure sub_00405828;//00405828
    procedure @WStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer);//00405830
    procedure @WStrFromPWCharLen(var Dest:WideString; Source:PWideChar; Length:Integer);//004058BC
    procedure @WStrFromChar(var Dest:WideString; Source:AnsiChar);//004058E0
    procedure @WStrFromWChar(var Dest:WideString; Source:WideChar);//004058F0
    procedure @WStrFromPWChar(var Dest:WideString; Source:PWideChar);//00405900
    procedure @WStrFromLStr(var Dest:WideString; const Source:AnsiString);//0040593C
    function @WStrToPWChar(S:WideString):PWideChar;//0040594C
    function @WStrLen(S:WideString):Integer;//0040595C
    //procedure sub_00405968(?:?; ?:?; ?:?);//00405968
    //function @WStrCmp(Left:WideString; Right:WideString):?;//004059D0
    function @WStrCopy(const S:WideString; Index:Integer; Count:Integer):WideString;//00405A54
    procedure @WStrSetLength(var S:WideString; NewLen:Integer);//00405AA0
    procedure @AddRefRecord;//00405AE8
    procedure @AddRefArray;//00405B18
    procedure @AddRef;//00405BAC
    procedure @FinalizeRecord(P:Pointer; typeInfo:Pointer);//00405BB8
    procedure @VarClr(var v:TVarData);//00405BEC
    procedure @FinalizeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);//00405C04
    procedure @Finalize(p:Pointer; typeInfo:Pointer);//00405CF0
    procedure @VarAddRef(var v:TVarData);//00405CFC
    procedure @CopyRecord(Dest:Pointer; Source:Pointer; TypeInfo:Pointer);//00405D14
    procedure @CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Cnt:Integer);//00405E30
    //function sub_00405F24:?;//00405F24
    procedure @Dispose(p:Pointer; typeInfo:Pointer);//00405F38
    procedure WideCharLenToStrVar(Source:PWideChar; SourceLen:Integer; var Dest:AnsiString);//00405F48
    procedure OleStrToStrVar(Source:PWideChar; var Dest:AnsiString);//00405F54
    function StringToOleStr(const Source:AnsiString):PWideChar;//00405F78
    procedure @DispCallByIDError;//00405F9C
    procedure @_llmul;//00405FA4
    procedure @_lldiv;//00405FC8
    procedure @_llmod;//00406044
    //function sub_004060C0(?:?; ?:?):?;//004060C0
    function @DynArrayLength(Arr:Pointer):Longint;//004062E4
    //function sub_004062EC:?;//004062EC
    procedure CopyArray(dest:Pointer; source:Pointer; typeInfo:Pointer; cnt:Integer);//004062F4
    procedure sub_00406304;//00406304
    procedure sub_0040630C;//0040630C
    procedure DynArraySetLength(var arr:Pointer; typeInfo:PDynArrayTypeInfo; dimCnt:Longint; lenVec:PLongint);//00406314
    procedure @DynArraySetLength(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo; DimCnt:Longint; LengthVec:Longint);//004064C0
    procedure @DynArrayCopy(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; var Result:Pointer);//004064CC
    procedure @DynArrayCopyRange(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; Index:Integer; Count:Integer; var Result:Pointer);//004064EC
    procedure @DynArrayClear(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo);//004065EC
    procedure @DynArrayAsg(var Dest:Pointer; Source:Pointer; TypeInfo:PDynArrayTypeInfo);//00406628
    function FindHInstance(Address:Pointer):Cardinal;//00406650
    procedure sub_00406678;//00406678
    function DelayLoadResourceModule(Module:PLibModule):Cardinal;//00406680
    //function sub_004066C8(?:LongWord):?;//004066C8
    //function sub_00406710(?:?):?;//00406710
    //function sub_0040673C(?:?; ?:?):?;//0040673C
    function LoadResourceModule(ModuleName:PAnsiChar; CheckOwner:Boolean):Cardinal;//00406914
    procedure AddModuleUnloadProc(Proc:TModuleUnloadProc);//00406B98
    procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProc);//00406BA0
    procedure AddModuleUnloadProc(Proc:TModuleUnloadProcLW);//00406BA8
    //procedure sub_00406BC8(?:?);//00406BC8
    procedure NotifyModuleUnload(HInstance:Cardinal);//00406C50
    procedure RegisterModule(LibModule:PLibModule);//00406CAC
    //procedure sub_00406CBC(?:?);//00406CBC
    function @IntfClear(var Dest:IInterface):Pointer;//00406D40
    procedure @IntfCopy(var Dest:IInterface; const Source:IInterface);//00406D58
    procedure @IntfCast(var Dest:IInterface; const Source:IInterface; const IID:TGUID);//00406D84
    procedure @IntfAddRef(const Dest:IInterface);//00406DB4
    procedure AfterConstruction;//00406DC0
    procedure BeforeDestruction;//00406DCC
    function NewInstance:TObject;//00406DDC
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;//00406DEC
    function UnicodeToUtf8(Dest:PAnsiChar; MaxDestBytes:Cardinal; Source:PWideChar; SourceChars:Cardinal):Cardinal;//00406E50
    function Utf8ToUnicode(Dest:PWideChar; MaxDestChars:Cardinal; Source:PAnsiChar; SourceBytes:Cardinal):Cardinal;//00406F2C
    function UTF8Encode(const WS:WideString):UTF8String;//00407064
    function UTF8Decode(const S:UTF8String):WideString;//00407110
    function AnsiToUtf8(const S:AnsiString):UTF8String;//004071B4
    function LoadResString(ResStringRec:PResStringRec):String;//00407204
    function LCIDToCodePage(ALcid:Cardinal):Integer;//0040725C

implementation

//00401268
function kernel32.CloseHandle:Integer; stdcall;
begin
{*
 00401268    jmp         dword ptr ds:[61C0A4]
*}
end;

//00401270
function kernel32.CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;
begin
{*
 00401270    jmp         dword ptr ds:[61C0A0]
*}
end;

//00401278
function kernel32.GetFileType:DWORD; stdcall;
begin
{*
 00401278    jmp         dword ptr ds:[61C09C]
*}
end;

//00401280
function kernel32.GetFileSize(x:Integer):Integer; stdcall;
begin
{*
 00401280    jmp         dword ptr ds:[61C098]
*}
end;

//00401288
function kernel32.GetStdHandle:Integer; stdcall;
begin
{*
 00401288    jmp         dword ptr ds:[61C094]
*}
end;

//00401290
procedure kernel32.RaiseException(dwExceptionFlags:DWORD; nNumberOfArguments:DWORD; lpArguments:PDWORD); stdcall;
begin
{*
 00401290    jmp         dword ptr ds:[61C090]
*}
end;

//00401298
function kernel32.ReadFile(var Buffer:void ; nNumberOfBytesToRead:Cardinal; var lpNumberOfBytesRead:Cardinal; lpOverlapped:Pointer):Integer; stdcall;
begin
{*
 00401298    jmp         dword ptr ds:[61C08C]
*}
end;

//004012A0
procedure kernel32.RtlUnwind;
begin
{*
 004012A0    jmp         dword ptr ds:[61C088]
*}
end;

//004012A8
function kernel32.SetEndOfFile:LongBool; stdcall;
begin
{*
 004012A8    jmp         dword ptr ds:[61C084]
*}
end;

//004012B0
function kernel32.SetFilePointer(Distance:Integer; DistanceHigh:Pointer; MoveMethod:Integer):Integer; stdcall;
begin
{*
 004012B0    jmp         dword ptr ds:[61C080]
*}
end;

//004012B8
function kernel32.UnhandledExceptionFilter:Longint; stdcall;
begin
{*
 004012B8    jmp         dword ptr ds:[61C07C]
*}
end;

//004012C0
function kernel32.WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;
begin
{*
 004012C0    jmp         dword ptr ds:[61C078]
*}
end;

//004012C8
function user32.CharNextA:PAnsiChar; stdcall;
begin
{*
 004012C8    jmp         dword ptr ds:[61C0B8]
*}
end;

//004012D0
procedure kernel32.ExitProcess; stdcall;
begin
{*
 004012D0    jmp         dword ptr ds:[61C074]
*}
end;

//004012D8
function user32.MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;
begin
{*
 004012D8    jmp         dword ptr ds:[61C0B4]
*}
end;

//004012E0
procedure kernel32.FindClose;
begin
{*
 004012E0    jmp         dword ptr ds:[61C070]
*}
end;

//004012E8
function kernel32.FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;
begin
{*
 004012E8    jmp         dword ptr ds:[61C06C]
*}
end;

//004012F0
function kernel32.FreeLibrary:LongBool; stdcall;
begin
{*
 004012F0    jmp         dword ptr ds:[61C068]
*}
end;

//004012F8
function kernel32.GetCommandLineA:PAnsiChar;
begin
{*
 004012F8    jmp         dword ptr ds:[61C064]
*}
end;

//00401300
function kernel32.GetLastError:Integer;
begin
{*
 00401300    jmp         dword ptr ds:[61C060]
*}
end;

//00401308
function kernel32.GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;
begin
{*
 00401308    jmp         dword ptr ds:[61C05C]
*}
end;

//00401310
function kernel32.GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 00401310    jmp         dword ptr ds:[61C058]
*}
end;

//00401318
function kernel32.GetModuleHandleA:HMODULE; stdcall;
begin
{*
 00401318    jmp         dword ptr ds:[61C054]
*}
end;

//00401320
function kernel32.GetProcAddress(lpProcName:PAnsiChar):Pointer; stdcall;
begin
{*
 00401320    jmp         dword ptr ds:[61C050]
*}
end;

//00401328
procedure kernel32.GetStartupInfoA; stdcall;
begin
{*
 00401328    jmp         dword ptr ds:[61C04C]
*}
end;

//00401330
function kernel32.GetThreadLocale:Integer;
begin
{*
 00401330    jmp         dword ptr ds:[61C048]
*}
end;

//00401338
function kernel32.LoadLibraryExA(hFile:THandle; dwFlags:DWORD):HMODULE; stdcall;
begin
{*
 00401338    jmp         dword ptr ds:[61C044]
*}
end;

//00401340
function user32.LoadStringA(uID:LongWord; lpBuffer:PAnsiChar; nBufferMax:Integer):Integer; stdcall;
begin
{*
 00401340    jmp         dword ptr ds:[61C0B0]
*}
end;

//00401348
function kernel32.lstrcpyn(lpString2:PChar; iMaxLength:Integer):PChar; stdcall;
begin
{*
 00401348    jmp         dword ptr ds:[61C040]
*}
end;

//00401350
function kernel32.lstrlen:Integer; stdcall;
begin
{*
 00401350    jmp         dword ptr ds:[61C03C]
*}
end;

//00401358
function kernel32.MultiByteToWideChar(Flags:Integer; MBStr:PAnsiChar; MBCount:Integer; WCStr:PWideChar; WCCount:Integer):Integer; stdcall;
begin
{*
 00401358    jmp         dword ptr ds:[61C038]
*}
end;

//00401360
function advapi32.RegCloseKey:Integer; stdcall;
begin
{*
 00401360    jmp         dword ptr ds:[61C0C8]
*}
end;

//00401368
function advapi32.RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;
begin
{*
 00401368    jmp         dword ptr ds:[61C0C4]
*}
end;

//00401370
function advapi32.RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;
begin
{*
 00401370    jmp         dword ptr ds:[61C0C0]
*}
end;

//00401378
function kernel32.WideCharToMultiByte(dwFlags:DWORD; lpWideCharStr:PWideChar; cchWideChar:Integer; lpMultiByteStr:PAnsiChar; cchMultiByte:Integer; lpDefaultChar:PAnsiChar; lpUsedDefaultChar:PBOOL):Integer; stdcall;
begin
{*
 00401378    jmp         dword ptr ds:[61C034]
*}
end;

//00401380
function kernel32.VirtualQuery(var lpBuffer:TMemInfo; dwLength:Integer):Integer; stdcall;
begin
{*
 00401380    jmp         dword ptr ds:[61C030]
*}
end;

//00401388
function oleaut32.SysAllocStringLen(Len:Integer):PWideChar; stdcall;
begin
{*
 00401388    jmp         dword ptr ds:[61C0D8]
*}
end;

//00401390
function oleaut32.SysReAllocStringLen(psz:PWideChar; len:Integer):Integer; stdcall;
begin
{*
 00401390    jmp         dword ptr ds:[61C0D4]
*}
end;

//00401398
procedure oleaut32.SysFreeString; stdcall;
begin
{*
 00401398    jmp         dword ptr ds:[61C0D0]
*}
end;

//004013A0
function kernel32.InterlockedIncrement:Integer; stdcall;
begin
{*
 004013A0    jmp         dword ptr ds:[61C02C]
*}
end;

//004013A8
function kernel32.InterlockedDecrement:Integer;
begin
{*
 004013A8    jmp         dword ptr ds:[61C028]
*}
end;

//004013B0
function kernel32.GetCurrentThreadId:Cardinal;
begin
{*
 004013B0    jmp         dword ptr ds:[61C024]
*}
end;

//004013B8
function kernel32.GetVersion:DWORD;
begin
{*
 004013B8    jmp         dword ptr ds:[61C020]
*}
end;

//004013C0
function GetCmdShow:Integer;
begin
{*
 004013C0    push        ebx
 004013C1    add         esp,0FFFFFFBC
 004013C4    mov         ebx,0A
 004013C9    push        esp
 004013CA    call        kernel32.GetStartupInfoA
 004013CF    test        byte ptr [esp+2C],1
>004013D4    je          004013DB
 004013D6    movzx       ebx,word ptr [esp+30]
 004013DB    mov         eax,ebx
 004013DD    add         esp,44
 004013E0    pop         ebx
 004013E1    ret
*}
end;

//004013E4
function kernel32.LocalAlloc(size:Integer):Pointer; stdcall;
begin
{*
 004013E4    jmp         dword ptr ds:[61C01C]
*}
end;

//004013EC
function kernel32.LocalFree:Pointer; stdcall;
begin
{*
 004013EC    jmp         dword ptr ds:[61C018]
*}
end;

//004013F4
function kernel32.VirtualAlloc(dwSize:DWORD; flAllocationType:DWORD; flProtect:DWORD):Pointer; stdcall;
begin
{*
 004013F4    jmp         dword ptr ds:[61C014]
*}
end;

//004013FC
function kernel32.VirtualFree(dwSize:DWORD; dwFreeType:DWORD):LongBool; stdcall;
begin
{*
 004013FC    jmp         dword ptr ds:[61C010]
*}
end;

//00401404
procedure kernel32.InitializeCriticalSection; stdcall;
begin
{*
 00401404    jmp         dword ptr ds:[61C00C]
*}
end;

//0040140C
procedure kernel32.EnterCriticalSection; stdcall;
begin
{*
 0040140C    jmp         dword ptr ds:[61C008]
*}
end;

//00401414
procedure kernel32.LeaveCriticalSection; stdcall;
begin
{*
 00401414    jmp         dword ptr ds:[61C004]
*}
end;

//0040141C
procedure kernel32.DeleteCriticalSection; stdcall;
begin
{*
 0040141C    jmp         dword ptr ds:[61C000]
*}
end;

//00401424
{*function sub_00401424:?;
begin
 00401424    push        ebx
 00401425    add         esp,0FFFFFFF4
 00401428    mov         ebx,56F5E8;gvar_0056F5E8
 0040142D    cmp         dword ptr [ebx],0
>00401430    jne         0040148B
 00401432    push        644
 00401437    push        0
 00401439    call        kernel32.LocalAlloc
 0040143E    mov         dword ptr [esp+8],eax
 00401442    cmp         dword ptr [esp+8],0
>00401447    jne         00401450
 00401449    xor         eax,eax
 0040144B    mov         dword ptr [esp],eax
>0040144E    jmp         004014A0
 00401450    mov         eax,dword ptr [esp+8]
 00401454    mov         edx,dword ptr ds:[56F5E4];0x0 gvar_0056F5E4
 0040145A    mov         dword ptr [eax],edx
 0040145C    mov         eax,dword ptr [esp+8]
 00401460    mov         [0056F5E4],eax;gvar_0056F5E4
 00401465    xor         eax,eax
 00401467    mov         edx,eax
 00401469    add         edx,edx
 0040146B    mov         ecx,dword ptr [esp+8]
 0040146F    lea         edx,[ecx+edx*8+4]
 00401473    mov         dword ptr [esp+4],edx
 00401477    mov         edx,dword ptr [esp+4]
 0040147B    mov         ecx,dword ptr [ebx]
 0040147D    mov         dword ptr [edx],ecx
 0040147F    mov         edx,dword ptr [esp+4]
 00401483    mov         dword ptr [ebx],edx
 00401485    inc         eax
 00401486    cmp         eax,64
>00401489    jne         00401467
 0040148B    mov         eax,dword ptr [ebx]
 0040148D    mov         dword ptr [esp+4],eax
 00401491    mov         eax,dword ptr [esp+4]
 00401495    mov         eax,dword ptr [eax]
 00401497    mov         dword ptr [ebx],eax
 00401499    mov         eax,dword ptr [esp+4]
 0040149D    mov         dword ptr [esp],eax
 004014A0    mov         eax,dword ptr [esp]
 004014A3    add         esp,0C
 004014A6    pop         ebx
 004014A7    ret
end;*}

//004014A8
procedure sub_004014A8(?:TBlockDesc);
begin
{*
 004014A8    mov         dword ptr [eax],eax
 004014AA    mov         dword ptr [eax+4],eax
 004014AD    ret
*}
end;

//004014B0
function AddBlockAfter(prev:PBlockDesc; const b:TBlock):Boolean;
begin
{*
 004014B0    push        ebx
 004014B1    push        esi
 004014B2    add         esp,0FFFFFFF8
 004014B5    mov         esi,edx
 004014B7    mov         ebx,eax
 004014B9    call        00401424
 004014BE    mov         dword ptr [esp+4],eax
 004014C2    cmp         dword ptr [esp+4],0
>004014C7    jne         004014CD
 004014C9    xor         eax,eax
>004014CB    jmp         00401507
 004014CD    mov         eax,dword ptr [esi]
 004014CF    mov         edx,dword ptr [esp+4]
 004014D3    mov         dword ptr [edx+8],eax
 004014D6    mov         eax,dword ptr [esi+4]
 004014D9    mov         edx,dword ptr [esp+4]
 004014DD    mov         dword ptr [edx+0C],eax
 004014E0    mov         eax,dword ptr [ebx]
 004014E2    mov         dword ptr [esp],eax
 004014E5    mov         eax,dword ptr [esp+4]
 004014E9    mov         edx,dword ptr [esp]
 004014EC    mov         dword ptr [eax],edx
 004014EE    mov         eax,dword ptr [esp+4]
 004014F2    mov         dword ptr [eax+4],ebx
 004014F5    mov         eax,dword ptr [esp]
 004014F8    mov         edx,dword ptr [esp+4]
 004014FC    mov         dword ptr [eax+4],edx
 004014FF    mov         eax,dword ptr [esp+4]
 00401503    mov         dword ptr [ebx],eax
 00401505    mov         al,1
 00401507    pop         ecx
 00401508    pop         edx
 00401509    pop         esi
 0040150A    pop         ebx
 0040150B    ret
*}
end;

//0040150C
{*function sub_0040150C(?:?):?;
begin
 0040150C    add         esp,0FFFFFFF8
 0040150F    mov         edx,dword ptr [eax+4]
 00401512    mov         dword ptr [esp],edx
 00401515    mov         edx,dword ptr [eax]
 00401517    mov         dword ptr [esp+4],edx
 0040151B    mov         edx,dword ptr [esp]
 0040151E    mov         ecx,dword ptr [esp+4]
 00401522    mov         dword ptr [edx],ecx
 00401524    mov         edx,dword ptr [esp+4]
 00401528    mov         ecx,dword ptr [esp]
 0040152B    mov         dword ptr [edx+4],ecx
 0040152E    mov         edx,dword ptr ds:[56F5E8];0x0 gvar_0056F5E8
 00401534    mov         dword ptr [eax],edx
 00401536    mov         [0056F5E8],eax;gvar_0056F5E8
 0040153B    pop         ecx
 0040153C    pop         edx
 0040153D    ret
end;*}

//00401540
function MergeBlockAfter(prev:PBlockDesc; const b:TBlock):TBlock;
begin
{*
 00401540    push        ebx
 00401541    push        esi
 00401542    push        edi
 00401543    push        ebp
 00401544    add         esp,0FFFFFFF8
 00401547    mov         ebx,ecx
 00401549    mov         esi,eax
 0040154B    mov         edi,esp
 0040154D    mov         eax,dword ptr [esi]
 0040154F    mov         dword ptr [edi],eax
 00401551    mov         eax,dword ptr [edx]
 00401553    mov         dword ptr [ebx],eax
 00401555    mov         eax,dword ptr [edx+4]
 00401558    mov         dword ptr [ebx+4],eax
 0040155B    mov         eax,dword ptr [edi]
 0040155D    mov         eax,dword ptr [eax]
 0040155F    mov         dword ptr [esp+4],eax
 00401563    mov         edx,dword ptr [edi]
 00401565    mov         edx,dword ptr [edx+8]
 00401568    mov         ecx,edx
 0040156A    mov         ebp,dword ptr [edi]
 0040156C    add         ecx,dword ptr [ebp+0C]
 0040156F    mov         eax,dword ptr [ebx]
 00401571    cmp         ecx,eax
>00401573    jne         0040158D
 00401575    mov         eax,dword ptr [edi]
 00401577    call        0040150C
 0040157C    mov         eax,dword ptr [edi]
 0040157E    mov         eax,dword ptr [eax+8]
 00401581    mov         dword ptr [ebx],eax
 00401583    mov         eax,dword ptr [edi]
 00401585    mov         eax,dword ptr [eax+0C]
 00401588    add         dword ptr [ebx+4],eax
>0040158B    jmp         004015A3
 0040158D    add         eax,dword ptr [ebx+4]
 00401590    cmp         edx,eax
>00401592    jne         004015A3
 00401594    mov         eax,dword ptr [edi]
 00401596    call        0040150C
 0040159B    mov         eax,dword ptr [edi]
 0040159D    mov         eax,dword ptr [eax+0C]
 004015A0    add         dword ptr [ebx+4],eax
 004015A3    mov         eax,dword ptr [esp+4]
 004015A7    mov         dword ptr [edi],eax
 004015A9    cmp         esi,dword ptr [edi]
>004015AB    jne         0040155B
 004015AD    mov         edx,ebx
 004015AF    mov         eax,esi
 004015B1    call        AddBlockAfter
 004015B6    test        al,al
>004015B8    jne         004015BE
 004015BA    xor         eax,eax
 004015BC    mov         dword ptr [ebx],eax
 004015BE    pop         ecx
 004015BF    pop         edx
 004015C0    pop         ebp
 004015C1    pop         edi
 004015C2    pop         esi
 004015C3    pop         ebx
 004015C4    ret
*}
end;

//004015C8
{*procedure sub_004015C8(?:PBlockDesc; ?:?);
begin
 004015C8    push        ebx
 004015C9    push        esi
 004015CA    push        edi
 004015CB    push        ebp
 004015CC    add         esp,0FFFFFFF0
 004015CF    mov         dword ptr [esp],eax
 004015D2    mov         esi,esp
 004015D4    mov         eax,dword ptr [esi]
 004015D6    mov         dword ptr [esp+0C],eax
 004015DA    mov         ecx,dword ptr [edx]
 004015DC    mov         eax,dword ptr [esi]
 004015DE    mov         eax,dword ptr [eax+8]
 004015E1    cmp         ecx,eax
>004015E3    jb          0040166F
 004015E9    mov         ebx,eax
 004015EB    mov         edi,dword ptr [esi]
 004015ED    add         ebx,dword ptr [edi+0C]
 004015F0    mov         edi,ecx
 004015F2    add         edi,dword ptr [edx+4]
 004015F5    cmp         ebx,edi
>004015F7    jb          0040166F
 004015F9    cmp         ecx,eax
>004015FB    jne         0040161E
 004015FD    mov         eax,dword ptr [edx+4]
 00401600    mov         ecx,dword ptr [esi]
 00401602    add         dword ptr [ecx+8],eax
 00401605    mov         eax,dword ptr [edx+4]
 00401608    mov         edx,dword ptr [esi]
 0040160A    sub         dword ptr [edx+0C],eax
 0040160D    mov         eax,dword ptr [esi]
 0040160F    cmp         dword ptr [eax+0C],0
>00401613    jne         0040166B
 00401615    mov         eax,dword ptr [esi]
 00401617    call        0040150C
>0040161C    jmp         0040166B
 0040161E    mov         ebx,eax
 00401620    mov         edi,dword ptr [esi]
 00401622    add         ebx,dword ptr [edi+0C]
 00401625    mov         edi,ecx
 00401627    add         edi,dword ptr [edx+4]
 0040162A    cmp         ebx,edi
>0040162C    jne         00401638
 0040162E    mov         eax,dword ptr [edx+4]
 00401631    mov         edx,dword ptr [esi]
 00401633    sub         dword ptr [edx+0C],eax
>00401636    jmp         0040166B
 00401638    mov         ebx,dword ptr [edx]
 0040163A    add         ebx,dword ptr [edx+4]
 0040163D    mov         dword ptr [esp+4],ebx
 00401641    mov         edi,dword ptr [esi]
 00401643    mov         edi,dword ptr [edi+8]
 00401646    mov         ebp,dword ptr [esi]
 00401648    add         edi,dword ptr [ebp+0C]
 0040164B    sub         edi,ebx
 0040164D    mov         dword ptr [esp+8],edi
 00401651    sub         ecx,eax
 00401653    mov         eax,dword ptr [esi]
 00401655    mov         dword ptr [eax+0C],ecx
 00401658    lea         edx,[esp+4]
 0040165C    mov         eax,dword ptr [esi]
 0040165E    call        AddBlockAfter
 00401663    test        al,al
>00401665    jne         0040166B
 00401667    xor         eax,eax
>00401669    jmp         00401683
 0040166B    mov         al,1
>0040166D    jmp         00401683
 0040166F    mov         eax,dword ptr [esi]
 00401671    mov         eax,dword ptr [eax]
 00401673    mov         dword ptr [esi],eax
 00401675    mov         eax,dword ptr [esi]
 00401677    cmp         eax,dword ptr [esp+0C]
>0040167B    jne         004015DA
 00401681    xor         eax,eax
 00401683    add         esp,10
 00401686    pop         ebp
 00401687    pop         edi
 00401688    pop         esi
 00401689    pop         ebx
 0040168A    ret
end;*}

//0040168C
function GetSpace(minSize:Integer):TBlock;
begin
{*
 0040168C    push        ebx
 0040168D    push        esi
 0040168E    push        edi
 0040168F    mov         ebx,edx
 00401691    mov         esi,eax
 00401693    cmp         esi,100000
>00401699    jge         004016A2
 0040169B    mov         esi,100000
>004016A0    jmp         004016AE
 004016A2    add         esi,0FFFF
 004016A8    and         esi,0FFFF0000
 004016AE    mov         dword ptr [ebx+4],esi
 004016B1    push        1
 004016B3    push        2000
 004016B8    push        esi
 004016B9    push        0
 004016BB    call        kernel32.VirtualAlloc
 004016C0    mov         edi,eax
 004016C2    mov         dword ptr [ebx],edi
 004016C4    test        edi,edi
>004016C6    je          004016EB
 004016C8    mov         edx,ebx
 004016CA    mov         eax,56F5EC;spaceRoot:TBlockDesc
 004016CF    call        AddBlockAfter
 004016D4    test        al,al
>004016D6    jne         004016EB
 004016D8    push        8000
 004016DD    push        0
 004016DF    mov         eax,dword ptr [ebx]
 004016E1    push        eax
 004016E2    call        kernel32.VirtualFree
 004016E7    xor         eax,eax
 004016E9    mov         dword ptr [ebx],eax
 004016EB    pop         edi
 004016EC    pop         esi
 004016ED    pop         ebx
 004016EE    ret
*}
end;

//004016F0
function GetSpaceAt(addr:PAnsiChar; minSize:Integer):TBlock;
begin
{*
 004016F0    push        ebx
 004016F1    push        esi
 004016F2    push        edi
 004016F3    push        ebp
 004016F4    mov         ebx,ecx
 004016F6    mov         esi,edx
 004016F8    mov         ebp,eax
 004016FA    mov         dword ptr [ebx+4],100000
 00401701    push        4
 00401703    push        2000
 00401708    push        100000
 0040170D    push        ebp
 0040170E    call        kernel32.VirtualAlloc
 00401713    mov         edi,eax
 00401715    mov         dword ptr [ebx],edi
 00401717    test        edi,edi
>00401719    jne         0040173A
 0040171B    add         esi,0FFFF
 00401721    and         esi,0FFFF0000
 00401727    mov         dword ptr [ebx+4],esi
 0040172A    push        4
 0040172C    push        2000
 00401731    push        esi
 00401732    push        ebp
 00401733    call        kernel32.VirtualAlloc
 00401738    mov         dword ptr [ebx],eax
 0040173A    cmp         dword ptr [ebx],0
>0040173D    je          00401762
 0040173F    mov         edx,ebx
 00401741    mov         eax,56F5EC;spaceRoot:TBlockDesc
 00401746    call        AddBlockAfter
 0040174B    test        al,al
>0040174D    jne         00401762
 0040174F    push        8000
 00401754    push        0
 00401756    mov         eax,dword ptr [ebx]
 00401758    push        eax
 00401759    call        kernel32.VirtualFree
 0040175E    xor         eax,eax
 00401760    mov         dword ptr [ebx],eax
 00401762    pop         ebp
 00401763    pop         edi
 00401764    pop         esi
 00401765    pop         ebx
 00401766    ret
*}
end;

//00401768
{*procedure sub_00401768(?:?; ?:?; ?:?);
begin
 00401768    push        ebx
 00401769    push        esi
 0040176A    push        edi
 0040176B    push        ebp
 0040176C    add         esp,0FFFFFFE8
 0040176F    mov         edi,ecx
 00401771    mov         esi,esp
 00401773    mov         dword ptr [esp+8],0FFFFFFFF
 0040177B    xor         ecx,ecx
 0040177D    mov         dword ptr [esp+0C],ecx
 00401781    mov         dword ptr [esp+10],eax
 00401785    add         edx,dword ptr [esp+10]
 00401789    mov         dword ptr [esp+14],edx
 0040178D    mov         eax,[0056F5EC];0x0 spaceRoot:TBlockDesc
 00401792    mov         dword ptr [esi],eax
>00401794    jmp         00401801
 00401796    mov         eax,dword ptr [esi]
 00401798    mov         eax,dword ptr [eax]
 0040179A    mov         dword ptr [esp+4],eax
 0040179E    mov         eax,dword ptr [esi]
 004017A0    mov         ebx,dword ptr [eax+8]
 004017A3    cmp         ebx,dword ptr [esp+10]
>004017A7    jb          004017FB
 004017A9    mov         eax,ebx
 004017AB    mov         edx,dword ptr [esi]
 004017AD    add         eax,dword ptr [edx+0C]
 004017B0    cmp         eax,dword ptr [esp+14]
>004017B4    ja          004017FB
 004017B6    cmp         ebx,dword ptr [esp+8]
>004017BA    jae         004017C0
 004017BC    mov         dword ptr [esp+8],ebx
 004017C0    mov         eax,dword ptr [esi]
 004017C2    mov         ebp,dword ptr [eax+8]
 004017C5    mov         eax,dword ptr [esi]
 004017C7    add         ebp,dword ptr [eax+0C]
 004017CA    cmp         ebp,dword ptr [esp+0C]
>004017CE    jbe         004017D4
 004017D0    mov         dword ptr [esp+0C],ebp
 004017D4    push        8000
 004017D9    push        0
 004017DB    mov         eax,dword ptr [esi]
 004017DD    mov         eax,dword ptr [eax+8]
 004017E0    push        eax
 004017E1    call        kernel32.VirtualFree
 004017E6    test        eax,eax
>004017E8    jne         004017F4
 004017EA    mov         dword ptr ds:[56F5C8],1;heapErrorCode:Integer
 004017F4    mov         eax,dword ptr [esi]
 004017F6    call        0040150C
 004017FB    mov         eax,dword ptr [esp+4]
 004017FF    mov         dword ptr [esi],eax
 00401801    mov         eax,56F5EC;spaceRoot:TBlockDesc
 00401806    cmp         eax,dword ptr [esi]
>00401808    jne         00401796
 0040180A    xor         eax,eax
 0040180C    mov         dword ptr [edi],eax
 0040180E    cmp         dword ptr [esp+0C],0
>00401813    je          00401826
 00401815    mov         eax,dword ptr [esp+8]
 00401819    mov         dword ptr [edi],eax
 0040181B    mov         eax,dword ptr [esp+0C]
 0040181F    sub         eax,dword ptr [esp+8]
 00401823    mov         dword ptr [edi+4],eax
 00401826    add         esp,18
 00401829    pop         ebp
 0040182A    pop         edi
 0040182B    pop         esi
 0040182C    pop         ebx
 0040182D    ret
end;*}

//00401830
{*procedure sub_00401830(?:?; ?:?; ?:?);
begin
 00401830    push        ebx
 00401831    push        esi
 00401832    push        edi
 00401833    push        ebp
 00401834    add         esp,0FFFFFFE8
 00401837    mov         ebx,ecx
 00401839    mov         dword ptr [esp],edx
 0040183C    lea         esi,[esp+8]
 00401840    lea         edi,[esp+4]
 00401844    lea         ebp,[esp+0C]
 00401848    mov         edx,eax
 0040184A    mov         ecx,edx
 0040184C    and         ecx,0FFFFF000
 00401852    mov         dword ptr [esp+10],ecx
 00401856    add         edx,dword ptr [esp]
 00401859    add         edx,0FFF
 0040185F    and         edx,0FFFFF000
 00401865    mov         dword ptr [esp+14],edx
 00401869    mov         eax,dword ptr [esp+10]
 0040186D    mov         dword ptr [ebx],eax
 0040186F    mov         eax,dword ptr [esp+14]
 00401873    sub         eax,dword ptr [esp+10]
 00401877    mov         dword ptr [ebx+4],eax
 0040187A    mov         eax,[0056F5EC];0x0 spaceRoot:TBlockDesc
 0040187F    mov         dword ptr [edi],eax
>00401881    jmp         004018DE
 00401883    mov         eax,dword ptr [edi]
 00401885    mov         eax,dword ptr [eax+8]
 00401888    mov         dword ptr [esi],eax
 0040188A    mov         eax,dword ptr [edi]
 0040188C    mov         eax,dword ptr [eax+0C]
 0040188F    add         eax,dword ptr [esi]
 00401891    mov         dword ptr [ebp],eax
 00401894    mov         eax,dword ptr [esi]
 00401896    cmp         eax,dword ptr [esp+10]
>0040189A    jae         004018A2
 0040189C    mov         eax,dword ptr [esp+10]
 004018A0    mov         dword ptr [esi],eax
 004018A2    mov         eax,dword ptr [ebp]
 004018A5    cmp         eax,dword ptr [esp+14]
>004018A9    jbe         004018B2
 004018AB    mov         eax,dword ptr [esp+14]
 004018AF    mov         dword ptr [ebp],eax
 004018B2    mov         eax,dword ptr [esi]
 004018B4    cmp         eax,dword ptr [ebp]
>004018B7    jae         004018D8
 004018B9    push        4
 004018BB    push        1000
 004018C0    mov         eax,dword ptr [ebp]
 004018C3    sub         eax,dword ptr [esi]
 004018C5    push        eax
 004018C6    mov         eax,dword ptr [esi]
 004018C8    push        eax
 004018C9    call        kernel32.VirtualAlloc
 004018CE    test        eax,eax
>004018D0    jne         004018D8
 004018D2    xor         eax,eax
 004018D4    mov         dword ptr [ebx],eax
>004018D6    jmp         004018E7
 004018D8    mov         eax,dword ptr [edi]
 004018DA    mov         eax,dword ptr [eax]
 004018DC    mov         dword ptr [edi],eax
 004018DE    mov         eax,56F5EC;spaceRoot:TBlockDesc
 004018E3    cmp         eax,dword ptr [edi]
>004018E5    jne         00401883
 004018E7    add         esp,18
 004018EA    pop         ebp
 004018EB    pop         edi
 004018EC    pop         esi
 004018ED    pop         ebx
 004018EE    ret
end;*}

//004018F0
{*procedure sub_004018F0(?:?; ?:?; ?:?);
begin
 004018F0    push        ebx
 004018F1    push        esi
 004018F2    push        edi
 004018F3    push        ebp
 004018F4    add         esp,0FFFFFFE8
 004018F7    mov         dword ptr [esp],edx
 004018FA    lea         esi,[esp+8]
 004018FE    lea         edi,[esp+4]
 00401902    lea         ebx,[esp+0C]
 00401906    mov         edx,eax
 00401908    mov         ebp,edx
 0040190A    add         ebp,0FFF
 00401910    and         ebp,0FFFFF000
 00401916    mov         dword ptr [esp+10],ebp
 0040191A    add         edx,dword ptr [esp]
 0040191D    and         edx,0FFFFF000
 00401923    mov         dword ptr [esp+14],edx
 00401927    mov         eax,dword ptr [esp+10]
 0040192B    mov         dword ptr [ecx],eax
 0040192D    mov         eax,dword ptr [esp+14]
 00401931    sub         eax,dword ptr [esp+10]
 00401935    mov         dword ptr [ecx+4],eax
 00401938    mov         eax,[0056F5EC];0x0 spaceRoot:TBlockDesc
 0040193D    mov         dword ptr [edi],eax
>0040193F    jmp         00401999
 00401941    mov         eax,dword ptr [edi]
 00401943    mov         eax,dword ptr [eax+8]
 00401946    mov         dword ptr [esi],eax
 00401948    mov         eax,dword ptr [edi]
 0040194A    mov         eax,dword ptr [eax+0C]
 0040194D    add         eax,dword ptr [esi]
 0040194F    mov         dword ptr [ebx],eax
 00401951    mov         eax,dword ptr [esi]
 00401953    cmp         eax,dword ptr [esp+10]
>00401957    jae         0040195F
 00401959    mov         eax,dword ptr [esp+10]
 0040195D    mov         dword ptr [esi],eax
 0040195F    mov         eax,dword ptr [ebx]
 00401961    cmp         eax,dword ptr [esp+14]
>00401965    jbe         0040196D
 00401967    mov         eax,dword ptr [esp+14]
 0040196B    mov         dword ptr [ebx],eax
 0040196D    mov         eax,dword ptr [esi]
 0040196F    cmp         eax,dword ptr [ebx]
>00401971    jae         00401993
 00401973    push        4000
 00401978    mov         eax,dword ptr [ebx]
 0040197A    sub         eax,dword ptr [esi]
 0040197C    push        eax
 0040197D    mov         eax,dword ptr [esi]
 0040197F    push        eax
 00401980    call        kernel32.VirtualFree
 00401985    test        eax,eax
>00401987    jne         00401993
 00401989    mov         dword ptr ds:[56F5C8],2;heapErrorCode:Integer
 00401993    mov         eax,dword ptr [edi]
 00401995    mov         eax,dword ptr [eax]
 00401997    mov         dword ptr [edi],eax
 00401999    mov         eax,56F5EC;spaceRoot:TBlockDesc
 0040199E    cmp         eax,dword ptr [edi]
>004019A0    jne         00401941
 004019A2    add         esp,18
 004019A5    pop         ebp
 004019A6    pop         edi
 004019A7    pop         esi
 004019A8    pop         ebx
 004019A9    ret
end;*}

//004019AC
function GetCommitted(minSize:Integer):TBlock;
begin
{*
 004019AC    push        ebx
 004019AD    push        esi
 004019AE    push        edi
 004019AF    push        ebp
 004019B0    add         esp,0FFFFFFF4
 004019B3    mov         ebx,edx
 004019B5    mov         esi,eax
 004019B7    mov         edi,esp
 004019B9    mov         ebp,56F5FC
 004019BE    add         esi,3FFF
 004019C4    and         esi,0FFFFC000
 004019CA    mov         eax,dword ptr [ebp]
 004019CD    mov         dword ptr [edi],eax
>004019CF    jmp         00401A12
 004019D1    mov         eax,dword ptr [edi]
 004019D3    cmp         esi,dword ptr [eax+0C]
>004019D6    jg          00401A0C
 004019D8    mov         ecx,ebx
 004019DA    mov         eax,dword ptr [edi]
 004019DC    mov         eax,dword ptr [eax+8]
 004019DF    mov         edx,esi
 004019E1    call        00401830
 004019E6    cmp         dword ptr [ebx],0
>004019E9    je          00401A4A
 004019EB    mov         eax,dword ptr [ebx+4]
 004019EE    mov         edx,dword ptr [edi]
 004019F0    add         dword ptr [edx+8],eax
 004019F3    mov         eax,dword ptr [ebx+4]
 004019F6    mov         edx,dword ptr [edi]
 004019F8    sub         dword ptr [edx+0C],eax
 004019FB    mov         eax,dword ptr [edi]
 004019FD    cmp         dword ptr [eax+0C],0
>00401A01    jne         00401A4A
 00401A03    mov         eax,dword ptr [edi]
 00401A05    call        0040150C
>00401A0A    jmp         00401A4A
 00401A0C    mov         eax,dword ptr [edi]
 00401A0E    mov         eax,dword ptr [eax]
 00401A10    mov         dword ptr [edi],eax
 00401A12    cmp         ebp,dword ptr [edi]
>00401A14    jne         004019D1
 00401A16    mov         edx,ebx
 00401A18    mov         eax,esi
 00401A1A    call        GetSpace
 00401A1F    cmp         dword ptr [ebx],0
>00401A22    je          00401A4A
 00401A24    lea         ecx,[esp+4]
 00401A28    mov         edx,ebx
 00401A2A    mov         eax,ebp
 00401A2C    call        MergeBlockAfter
 00401A31    cmp         dword ptr [esp+4],0
>00401A36    jne         004019CA
 00401A38    lea         ecx,[esp+4]
 00401A3C    mov         edx,dword ptr [ebx+4]
 00401A3F    mov         eax,dword ptr [ebx]
 00401A41    call        00401768
 00401A46    xor         eax,eax
 00401A48    mov         dword ptr [ebx],eax
 00401A4A    add         esp,0C
 00401A4D    pop         ebp
 00401A4E    pop         edi
 00401A4F    pop         esi
 00401A50    pop         ebx
 00401A51    ret
*}
end;

//00401A54
function GetCommittedAt(addr:PAnsiChar; minSize:Integer):TBlock;
begin
{*
 00401A54    push        ebx
 00401A55    push        esi
 00401A56    push        edi
 00401A57    push        ebp
 00401A58    add         esp,0FFFFFFE8
 00401A5B    mov         dword ptr [esp],ecx
 00401A5E    mov         edi,edx
 00401A60    mov         ebx,eax
 00401A62    lea         esi,[esp+4]
 00401A66    mov         ebp,56F5FC
 00401A6B    add         edi,3FFF
 00401A71    and         edi,0FFFFC000
 00401A77    mov         eax,dword ptr [ebp]
 00401A7A    mov         dword ptr [esi],eax
>00401A7C    jmp         00401A84
 00401A7E    mov         eax,dword ptr [esi]
 00401A80    mov         eax,dword ptr [eax]
 00401A82    mov         dword ptr [esi],eax
 00401A84    cmp         ebp,dword ptr [esi]
>00401A86    je          00401A8F
 00401A88    mov         eax,dword ptr [esi]
 00401A8A    cmp         ebx,dword ptr [eax+8]
>00401A8D    jne         00401A7E
 00401A8F    mov         eax,dword ptr [esi]
 00401A91    cmp         ebx,dword ptr [eax+8]
>00401A94    jne         00401AF5
 00401A96    mov         eax,dword ptr [esi]
 00401A98    cmp         edi,dword ptr [eax+0C]
>00401A9B    jle         00401B3D
 00401AA1    mov         eax,dword ptr [esi]
 00401AA3    mov         edx,edi
 00401AA5    sub         edx,dword ptr [eax+0C]
 00401AA8    mov         eax,dword ptr [esi]
 00401AAA    mov         eax,dword ptr [eax+8]
 00401AAD    mov         ecx,dword ptr [esi]
 00401AAF    add         eax,dword ptr [ecx+0C]
 00401AB2    lea         ecx,[esp+8]
 00401AB6    call        GetSpaceAt
 00401ABB    cmp         dword ptr [esp+8],0
>00401AC0    je          00401AF5
 00401AC2    lea         ecx,[esp+10]
 00401AC6    lea         edx,[esp+8]
 00401ACA    mov         eax,ebp
 00401ACC    call        MergeBlockAfter
 00401AD1    cmp         dword ptr [esp+10],0
>00401AD6    jne         00401A77
 00401AD8    lea         ecx,[esp+10]
 00401ADC    mov         edx,dword ptr [esp+0C]
 00401AE0    mov         eax,dword ptr [esp+8]
 00401AE4    call        00401768
 00401AE9    mov         eax,dword ptr [esp]
 00401AEC    xor         edx,edx
 00401AEE    mov         dword ptr [eax],edx
>00401AF0    jmp         00401B8F
 00401AF5    lea         ecx,[esp+8]
 00401AF9    mov         edx,edi
 00401AFB    mov         eax,ebx
 00401AFD    call        GetSpaceAt
 00401B02    cmp         dword ptr [esp+8],0
>00401B07    je          00401B3D
 00401B09    lea         ecx,[esp+10]
 00401B0D    lea         edx,[esp+8]
 00401B11    mov         eax,ebp
 00401B13    call        MergeBlockAfter
 00401B18    cmp         dword ptr [esp+10],0
>00401B1D    jne         00401A77
 00401B23    lea         ecx,[esp+10]
 00401B27    mov         edx,dword ptr [esp+0C]
 00401B2B    mov         eax,dword ptr [esp+8]
 00401B2F    call        00401768
 00401B34    mov         eax,dword ptr [esp]
 00401B37    xor         edx,edx
 00401B39    mov         dword ptr [eax],edx
>00401B3B    jmp         00401B8F
 00401B3D    mov         eax,dword ptr [esi]
 00401B3F    mov         ebp,dword ptr [eax+8]
 00401B42    cmp         ebx,ebp
>00401B44    jne         00401B88
 00401B46    mov         eax,dword ptr [esi]
 00401B48    cmp         edi,dword ptr [eax+0C]
>00401B4B    jg          00401B88
 00401B4D    mov         ecx,dword ptr [esp]
 00401B50    mov         eax,ebp
 00401B52    mov         edx,edi
 00401B54    call        00401830
 00401B59    mov         eax,dword ptr [esp]
 00401B5C    cmp         dword ptr [eax],0
>00401B5F    je          00401B8F
 00401B61    mov         eax,dword ptr [esp]
 00401B64    mov         eax,dword ptr [eax+4]
 00401B67    mov         edx,dword ptr [esi]
 00401B69    add         dword ptr [edx+8],eax
 00401B6C    mov         eax,dword ptr [esp]
 00401B6F    mov         eax,dword ptr [eax+4]
 00401B72    mov         edx,dword ptr [esi]
 00401B74    sub         dword ptr [edx+0C],eax
 00401B77    mov         eax,dword ptr [esi]
 00401B79    cmp         dword ptr [eax+0C],0
>00401B7D    jne         00401B8F
 00401B7F    mov         eax,dword ptr [esi]
 00401B81    call        0040150C
>00401B86    jmp         00401B8F
 00401B88    mov         eax,dword ptr [esp]
 00401B8B    xor         edx,edx
 00401B8D    mov         dword ptr [eax],edx
 00401B8F    add         esp,18
 00401B92    pop         ebp
 00401B93    pop         edi
 00401B94    pop         esi
 00401B95    pop         ebx
 00401B96    ret
*}
end;

//00401B98
{*procedure sub_00401B98(?:?; ?:?; ?:?);
begin
 00401B98    push        ebx
 00401B99    add         esp,0FFFFFFE8
 00401B9C    mov         ebx,ecx
 00401B9E    lea         ecx,[eax+3FFF]
 00401BA4    and         ecx,0FFFFC000
 00401BAA    mov         dword ptr [esp],ecx
 00401BAD    add         edx,eax
 00401BAF    and         edx,0FFFFC000
 00401BB5    mov         dword ptr [esp+4],edx
 00401BB9    mov         eax,dword ptr [esp+4]
 00401BBD    cmp         eax,dword ptr [esp]
>00401BC0    jbe         00401C21
 00401BC2    mov         ecx,ebx
 00401BC4    mov         edx,dword ptr [esp+4]
 00401BC8    sub         edx,dword ptr [esp]
 00401BCB    mov         eax,dword ptr [esp]
 00401BCE    call        004018F0
 00401BD3    lea         ecx,[esp+8]
 00401BD7    mov         edx,ebx
 00401BD9    mov         eax,56F5FC
 00401BDE    call        MergeBlockAfter
 00401BE3    mov         ebx,dword ptr [esp+8]
 00401BE7    test        ebx,ebx
>00401BE9    je          00401C0A
 00401BEB    lea         ecx,[esp+10]
 00401BEF    mov         edx,dword ptr [esp+0C]
 00401BF3    mov         eax,ebx
 00401BF5    call        00401768
 00401BFA    mov         eax,dword ptr [esp+10]
 00401BFE    mov         dword ptr [esp+8],eax
 00401C02    mov         eax,dword ptr [esp+14]
 00401C06    mov         dword ptr [esp+0C],eax
 00401C0A    cmp         dword ptr [esp+8],0
>00401C0F    je          00401C25
 00401C11    lea         edx,[esp+8]
 00401C15    mov         eax,56F5FC
 00401C1A    call        004015C8
>00401C1F    jmp         00401C25
 00401C21    xor         eax,eax
 00401C23    mov         dword ptr [ebx],eax
 00401C25    add         esp,18
 00401C28    pop         ebx
 00401C29    ret
end;*}

//00401C2C
{*function sub_00401C2C:?;
begin
 00401C2C    push        ebp
 00401C2D    mov         ebp,esp
 00401C2F    push        ecx
 00401C30    xor         edx,edx
 00401C32    push        ebp
 00401C33    push        401CF4
 00401C38    push        dword ptr fs:[edx]
 00401C3B    mov         dword ptr fs:[edx],esp
 00401C3E    push        56F5CC
 00401C43    call        kernel32.InitializeCriticalSection
 00401C48    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00401C4F    je          00401C5B
 00401C51    push        56F5CC
 00401C56    call        kernel32.EnterCriticalSection
 00401C5B    mov         eax,56F5EC;spaceRoot:TBlockDesc
 00401C60    call        004014A8
 00401C65    mov         eax,56F5FC
 00401C6A    call        004014A8
 00401C6F    mov         eax,56F628;committedRoot:TBlockDesc
 00401C74    call        004014A8
 00401C79    push        0FF8
 00401C7E    push        0
 00401C80    call        kernel32.LocalAlloc
 00401C85    mov         [0056F624],eax;gvar_0056F624:Pointer
 00401C8A    cmp         dword ptr ds:[56F624],0;gvar_0056F624:Pointer
>00401C91    je          00401CD3
 00401C93    mov         eax,3
 00401C98    mov         edx,dword ptr ds:[56F624];0x0 gvar_0056F624:Pointer
 00401C9E    xor         ecx,ecx
 00401CA0    mov         dword ptr [edx+eax*4-0C],ecx
 00401CA4    inc         eax
 00401CA5    cmp         eax,401
>00401CAA    jne         00401C98
 00401CAC    mov         dword ptr [ebp-4],56F60C
 00401CB3    mov         eax,dword ptr [ebp-4]
 00401CB6    mov         edx,dword ptr [ebp-4]
 00401CB9    mov         dword ptr [eax+4],edx
 00401CBC    mov         eax,dword ptr [ebp-4]
 00401CBF    mov         edx,dword ptr [ebp-4]
 00401CC2    mov         dword ptr [eax],edx
 00401CC4    mov         eax,dword ptr [ebp-4]
 00401CC7    mov         [0056F618],eax;gvar_0056F618
 00401CCC    mov         byte ptr ds:[56F5C4],1;gvar_0056F5C4
 00401CD3    xor         eax,eax
 00401CD5    pop         edx
 00401CD6    pop         ecx
 00401CD7    pop         ecx
 00401CD8    mov         dword ptr fs:[eax],edx
 00401CDB    push        401CFB
 00401CE0    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00401CE7    je          00401CF3
 00401CE9    push        56F5CC
 00401CEE    call        kernel32.LeaveCriticalSection
 00401CF3    ret
>00401CF4    jmp         @HandleFinally
>00401CF9    jmp         00401CE0
 00401CFB    mov         al,[0056F5C4];0x0 gvar_0056F5C4
 00401D00    pop         ecx
 00401D01    pop         ebp
 00401D02    ret
end;*}

//00401D04
procedure UninitAllocator;
begin
{*
 00401D04    push        ebp
 00401D05    mov         ebp,esp
 00401D07    add         esp,0FFFFFFF8
 00401D0A    cmp         byte ptr ds:[56F5C4],0;gvar_0056F5C4
>00401D11    je          00401DFF
 00401D17    xor         eax,eax
 00401D19    push        ebp
 00401D1A    push        401DF8
 00401D1F    push        dword ptr fs:[eax]
 00401D22    mov         dword ptr fs:[eax],esp
 00401D25    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00401D2C    je          00401D38
 00401D2E    push        56F5CC
 00401D33    call        kernel32.EnterCriticalSection
 00401D38    mov         byte ptr ds:[56F5C4],0;gvar_0056F5C4
 00401D3F    mov         eax,[0056F624];gvar_0056F624:Pointer
 00401D44    push        eax
 00401D45    call        kernel32.LocalFree
 00401D4A    xor         eax,eax
 00401D4C    mov         [0056F624],eax;gvar_0056F624:Pointer
 00401D51    mov         eax,[0056F5EC];spaceRoot:TBlockDesc
 00401D56    mov         dword ptr [ebp-8],eax
>00401D59    jmp         00401D76
 00401D5B    push        8000
 00401D60    push        0
 00401D62    mov         eax,dword ptr [ebp-8]
 00401D65    mov         eax,dword ptr [eax+8]
 00401D68    push        eax
 00401D69    call        kernel32.VirtualFree
 00401D6E    mov         eax,dword ptr [ebp-8]
 00401D71    mov         eax,dword ptr [eax]
 00401D73    mov         dword ptr [ebp-8],eax
 00401D76    mov         eax,56F5EC;spaceRoot:TBlockDesc
 00401D7B    cmp         eax,dword ptr [ebp-8]
>00401D7E    jne         00401D5B
 00401D80    mov         eax,56F5EC;spaceRoot:TBlockDesc
 00401D85    call        004014A8
 00401D8A    mov         eax,56F5FC
 00401D8F    call        004014A8
 00401D94    mov         eax,56F628;committedRoot:TBlockDesc
 00401D99    call        004014A8
 00401D9E    mov         eax,[0056F5E4];gvar_0056F5E4
 00401DA3    mov         dword ptr [ebp-4],eax
 00401DA6    cmp         dword ptr [ebp-4],0
>00401DAA    je          00401DCD
 00401DAC    mov         eax,dword ptr [ebp-4]
 00401DAF    mov         eax,dword ptr [eax]
 00401DB1    mov         [0056F5E4],eax;gvar_0056F5E4
 00401DB6    mov         eax,dword ptr [ebp-4]
 00401DB9    push        eax
 00401DBA    call        kernel32.LocalFree
 00401DBF    mov         eax,[0056F5E4];gvar_0056F5E4
 00401DC4    mov         dword ptr [ebp-4],eax
 00401DC7    cmp         dword ptr [ebp-4],0
>00401DCB    jne         00401DAC
 00401DCD    xor         eax,eax
 00401DCF    pop         edx
 00401DD0    pop         ecx
 00401DD1    pop         ecx
 00401DD2    mov         dword ptr fs:[eax],edx
 00401DD5    push        401DFF
 00401DDA    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00401DE1    je          00401DED
 00401DE3    push        56F5CC
 00401DE8    call        kernel32.LeaveCriticalSection
 00401DED    push        56F5CC
 00401DF2    call        kernel32.DeleteCriticalSection
 00401DF7    ret
>00401DF8    jmp         @HandleFinally
>00401DFD    jmp         00401DDA
 00401DFF    pop         ecx
 00401E00    pop         ecx
 00401E01    pop         ebp
 00401E02    ret
*}
end;

//00401E04
{*procedure sub_00401E04(?:?);
begin
 00401E04    push        ebx
 00401E05    add         esp,0FFFFFFF8
 00401E08    cmp         eax,dword ptr ds:[56F618];0x0 gvar_0056F618
>00401E0E    jne         00401E19
 00401E10    mov         edx,dword ptr [eax+4]
 00401E13    mov         dword ptr ds:[56F618],edx;gvar_0056F618
 00401E19    mov         edx,dword ptr [eax+4]
 00401E1C    mov         dword ptr [esp],edx
 00401E1F    mov         edx,dword ptr [eax+8]
 00401E22    cmp         edx,1000
>00401E28    jg          00401E78
 00401E2A    cmp         eax,dword ptr [esp]
>00401E2D    jne         00401E46
 00401E2F    test        edx,edx
>00401E31    jns         00401E36
 00401E33    add         edx,3
 00401E36    sar         edx,2
 00401E39    mov         eax,[0056F624];0x0 gvar_0056F624:Pointer
 00401E3E    xor         ecx,ecx
 00401E40    mov         dword ptr [eax+edx*4-0C],ecx
>00401E44    jmp         00401E91
 00401E46    test        edx,edx
>00401E48    jns         00401E4D
 00401E4A    add         edx,3
 00401E4D    sar         edx,2
 00401E50    mov         ecx,dword ptr ds:[56F624];0x0 gvar_0056F624:Pointer
 00401E56    mov         ebx,dword ptr [esp]
 00401E59    mov         dword ptr [ecx+edx*4-0C],ebx
 00401E5D    mov         eax,dword ptr [eax]
 00401E5F    mov         dword ptr [esp+4],eax
 00401E63    mov         eax,dword ptr [esp]
 00401E66    mov         edx,dword ptr [esp+4]
 00401E6A    mov         dword ptr [eax],edx
 00401E6C    mov         eax,dword ptr [esp+4]
 00401E70    mov         edx,dword ptr [esp]
 00401E73    mov         dword ptr [eax+4],edx
>00401E76    jmp         00401E91
 00401E78    mov         eax,dword ptr [eax]
 00401E7A    mov         dword ptr [esp+4],eax
 00401E7E    mov         eax,dword ptr [esp]
 00401E81    mov         edx,dword ptr [esp+4]
 00401E85    mov         dword ptr [eax],edx
 00401E87    mov         eax,dword ptr [esp+4]
 00401E8B    mov         edx,dword ptr [esp]
 00401E8E    mov         dword ptr [eax+4],edx
 00401E91    pop         ecx
 00401E92    pop         edx
 00401E93    pop         ebx
 00401E94    ret
end;*}

//00401E98
{*function sub_00401E98(?:?):?;
begin
 00401E98    push        ebx
 00401E99    push        ecx
 00401E9A    mov         ecx,esp
 00401E9C    mov         edx,dword ptr ds:[56F628];0x0 committedRoot:TBlockDesc
 00401EA2    mov         dword ptr [ecx],edx
>00401EA4    jmp         00401EBE
 00401EA6    mov         edx,dword ptr [ecx]
 00401EA8    mov         edx,dword ptr [edx+8]
 00401EAB    cmp         eax,edx
>00401EAD    jb          00401EB8
 00401EAF    mov         ebx,dword ptr [ecx]
 00401EB1    add         edx,dword ptr [ebx+0C]
 00401EB4    cmp         eax,edx
>00401EB6    jb          00401ED5
 00401EB8    mov         edx,dword ptr [ecx]
 00401EBA    mov         edx,dword ptr [edx]
 00401EBC    mov         dword ptr [ecx],edx
 00401EBE    mov         edx,56F628;committedRoot:TBlockDesc
 00401EC3    cmp         edx,dword ptr [ecx]
>00401EC5    jne         00401EA6
 00401EC7    mov         dword ptr ds:[56F5C8],3;heapErrorCode:Integer
 00401ED1    xor         eax,eax
 00401ED3    mov         dword ptr [ecx],eax
 00401ED5    mov         eax,dword ptr [ecx]
 00401ED7    pop         edx
 00401ED8    pop         ebx
 00401ED9    ret
end;*}

//00401EDC
procedure FillBeforeGap(a:PAnsiChar; size:Integer);
begin
{*
 00401EDC    push        ebx
 00401EDD    push        ecx
 00401EDE    mov         ecx,edx
 00401EE0    sub         ecx,4
 00401EE3    lea         ebx,[ecx+eax]
 00401EE6    mov         dword ptr [esp],ebx
 00401EE9    cmp         edx,10
>00401EEC    jl          00401F01
 00401EEE    mov         edx,dword ptr [esp]
 00401EF1    mov         dword ptr [edx],80000007
 00401EF7    mov         edx,ecx
 00401EF9    call        004020D8
 00401EFE    pop         edx
 00401EFF    pop         ebx
 00401F00    ret
 00401F01    cmp         edx,4
>00401F04    jl          00401F15
 00401F06    mov         ecx,edx
 00401F08    or          ecx,80000002
 00401F0E    mov         dword ptr [eax],ecx
 00401F10    mov         eax,dword ptr [esp]
 00401F13    mov         dword ptr [eax],ecx
 00401F15    pop         edx
 00401F16    pop         ebx
 00401F17    ret
*}
end;

//00401F18
procedure InternalFreeMem(a:PAnsiChar);
begin
{*
 00401F18    inc         dword ptr ds:[56F5B4];AllocMemCount:Integer
 00401F1E    mov         edx,eax
 00401F20    sub         edx,4
 00401F23    mov         edx,dword ptr [edx]
 00401F25    and         edx,7FFFFFFC
 00401F2B    sub         edx,4
 00401F2E    add         dword ptr ds:[56F5B8],edx;AllocMemSize:Integer
 00401F34    call        SysFreeMem
 00401F39    ret
*}
end;

//00401F3C
procedure FillAfterGap(a:PAnsiChar; size:Integer);
begin
{*
 00401F3C    cmp         edx,0C
>00401F3F    jl          00401F4F
 00401F41    or          edx,2
 00401F44    mov         dword ptr [eax],edx
 00401F46    add         eax,4
 00401F49    call        InternalFreeMem
 00401F4E    ret
 00401F4F    cmp         edx,4
>00401F52    jl          00401F5E
 00401F54    mov         ecx,edx
 00401F56    or          ecx,80000002
 00401F5C    mov         dword ptr [eax],ecx
 00401F5E    add         eax,edx
 00401F60    and         dword ptr [eax],0FFFFFFFE
 00401F63    ret
*}
end;

//00401F64
function FillerSizeBeforeGap(a:PAnsiChar):Integer;
begin
{*
 00401F64    push        ebx
 00401F65    push        esi
 00401F66    push        ecx
 00401F67    mov         edx,eax
 00401F69    sub         edx,4
 00401F6C    mov         edx,dword ptr [edx]
 00401F6E    mov         ecx,edx
 00401F70    and         ecx,80000002
 00401F76    cmp         ecx,80000002
>00401F7C    je          00401F88
 00401F7E    mov         dword ptr ds:[56F5C8],4;heapErrorCode:Integer
 00401F88    mov         ebx,edx
 00401F8A    and         ebx,7FFFFFFC
 00401F90    sub         eax,ebx
 00401F92    mov         ecx,eax
 00401F94    xor         edx,dword ptr [ecx]
 00401F96    test        edx,0FFFFFFFE
>00401F9C    je          00401FA8
 00401F9E    mov         dword ptr ds:[56F5C8],5;heapErrorCode:Integer
 00401FA8    test        byte ptr [ecx],1
>00401FAB    je          00401FD6
 00401FAD    mov         edx,eax
 00401FAF    sub         edx,0C
 00401FB2    mov         esi,dword ptr [edx+8]
 00401FB5    sub         eax,esi
 00401FB7    mov         dword ptr [esp],eax
 00401FBA    mov         eax,dword ptr [esp]
 00401FBD    cmp         esi,dword ptr [eax+8]
>00401FC0    je          00401FCC
 00401FC2    mov         dword ptr ds:[56F5C8],6;heapErrorCode:Integer
 00401FCC    mov         eax,dword ptr [esp]
 00401FCF    call        00401E04
 00401FD4    add         ebx,esi
 00401FD6    mov         eax,ebx
 00401FD8    pop         edx
 00401FD9    pop         esi
 00401FDA    pop         ebx
 00401FDB    ret
*}
end;

//00401FDC
function FillerSizeAfterGap(a:PAnsiChar):Integer;
begin
{*
 00401FDC    push        ebx
 00401FDD    push        esi
 00401FDE    push        ecx
 00401FDF    mov         ebx,eax
 00401FE1    xor         esi,esi
 00401FE3    mov         eax,dword ptr [ebx]
 00401FE5    test        eax,80000000
>00401FEA    je          00401FF7
 00401FEC    and         eax,7FFFFFFC
 00401FF1    add         esi,eax
 00401FF3    add         ebx,eax
 00401FF5    mov         eax,dword ptr [ebx]
 00401FF7    test        al,2
>00401FF9    jne         00402013
 00401FFB    mov         dword ptr [esp],ebx
 00401FFE    mov         eax,dword ptr [esp]
 00402001    call        00401E04
 00402006    mov         eax,dword ptr [esp]
 00402009    mov         eax,dword ptr [eax+8]
 0040200C    add         esi,eax
 0040200E    add         ebx,eax
 00402010    and         dword ptr [ebx],0FFFFFFFE
 00402013    mov         eax,esi
 00402015    pop         edx
 00402016    pop         esi
 00402017    pop         ebx
 00402018    ret
*}
end;

//0040201C
{*function sub_0040201C(?:?; ?:?):?;
begin
 0040201C    push        ebx
 0040201D    push        esi
 0040201E    push        edi
 0040201F    push        ebp
 00402020    add         esp,0FFFFFFF4
 00402023    mov         esi,edx
 00402025    mov         ebp,eax
 00402027    xor         ebx,ebx
 00402029    mov         eax,ebp
 0040202B    call        00401E98
 00402030    mov         dword ptr [esp+8],eax
 00402034    cmp         dword ptr [esp+8],0
>00402039    je          004020CE
 0040203F    mov         eax,dword ptr [esp+8]
 00402043    mov         edi,dword ptr [eax+8]
 00402046    mov         eax,edi
 00402048    mov         edx,dword ptr [esp+8]
 0040204C    add         eax,dword ptr [edx+0C]
 0040204F    mov         edx,eax
 00402051    lea         ecx,[esi+ebp]
 00402054    sub         edx,ecx
 00402056    cmp         edx,0C
>00402059    jg          0040205F
 0040205B    mov         esi,eax
 0040205D    sub         esi,ebp
 0040205F    mov         eax,ebp
 00402061    sub         eax,edi
 00402063    cmp         eax,0C
>00402066    jge         0040207E
 00402068    mov         eax,dword ptr [esp+8]
 0040206C    mov         edx,ebp
 0040206E    sub         edx,dword ptr [eax+8]
 00402071    add         edx,esi
 00402073    mov         ecx,esp
 00402075    mov         eax,edi
 00402077    call        00401B98
>0040207C    jmp         0040208D
 0040207E    mov         ecx,esp
 00402080    mov         edx,esi
 00402082    sub         edx,4
 00402085    lea         eax,[ebp+4]
 00402088    call        00401B98
 0040208D    mov         edi,dword ptr [esp]
 00402090    test        edi,edi
>00402092    je          004020CE
 00402094    mov         edx,edi
 00402096    sub         edx,ebp
 00402098    mov         eax,ebp
 0040209A    call        FillBeforeGap
 0040209F    mov         edx,dword ptr [esp+8]
 004020A3    mov         edx,dword ptr [edx+8]
 004020A6    mov         ecx,dword ptr [esp+8]
 004020AA    add         edx,dword ptr [ecx+0C]
 004020AD    mov         eax,edi
 004020AF    add         eax,dword ptr [esp+4]
 004020B3    cmp         edx,eax
>004020B5    jbe         004020C1
 004020B7    lea         edx,[esi+ebp]
 004020BA    sub         edx,eax
 004020BC    call        FillAfterGap
 004020C1    mov         edx,esp
 004020C3    mov         eax,dword ptr [esp+8]
 004020C7    call        004015C8
 004020CC    mov         bl,1
 004020CE    mov         eax,ebx
 004020D0    add         esp,0C
 004020D3    pop         ebp
 004020D4    pop         edi
 004020D5    pop         esi
 004020D6    pop         ebx
 004020D7    ret
end;*}

//004020D8
{*function sub_004020D8(?:?; ?:?):?;
begin
 004020D8    push        ebx
 004020D9    push        esi
 004020DA    add         esp,0FFFFFFF4
 004020DD    mov         ebx,edx
 004020DF    mov         esi,eax
 004020E1    mov         dword ptr [esp],esi
 004020E4    mov         eax,dword ptr [esp]
 004020E7    mov         dword ptr [eax+8],ebx
 004020EA    mov         eax,dword ptr [esp]
 004020ED    add         eax,ebx
 004020EF    sub         eax,0C
 004020F2    mov         dword ptr [eax+8],ebx
 004020F5    cmp         ebx,1000
>004020FB    jg          00402173
 004020FD    mov         eax,ebx
 004020FF    test        eax,eax
>00402101    jns         00402106
 00402103    add         eax,3
 00402106    sar         eax,2
 00402109    mov         edx,dword ptr ds:[56F624];0x0 gvar_0056F624:Pointer
 0040210F    mov         edx,dword ptr [edx+eax*4-0C]
 00402113    mov         dword ptr [esp+4],edx
 00402117    cmp         dword ptr [esp+4],0
>0040211C    jne         00402141
 0040211E    mov         edx,dword ptr ds:[56F624];0x0 gvar_0056F624:Pointer
 00402124    mov         ecx,dword ptr [esp]
 00402127    mov         dword ptr [edx+eax*4-0C],ecx
 0040212B    mov         eax,dword ptr [esp]
 0040212E    mov         edx,dword ptr [esp]
 00402131    mov         dword ptr [eax+4],edx
 00402134    mov         eax,dword ptr [esp]
 00402137    mov         edx,dword ptr [esp]
 0040213A    mov         dword ptr [eax],edx
>0040213C    jmp         004021C9
 00402141    mov         eax,dword ptr [esp+4]
 00402145    mov         eax,dword ptr [eax]
 00402147    mov         dword ptr [esp+8],eax
 0040214B    mov         eax,dword ptr [esp]
 0040214E    mov         edx,dword ptr [esp+4]
 00402152    mov         dword ptr [eax+4],edx
 00402155    mov         eax,dword ptr [esp]
 00402158    mov         edx,dword ptr [esp+8]
 0040215C    mov         dword ptr [eax],edx
 0040215E    mov         eax,dword ptr [esp+4]
 00402162    mov         edx,dword ptr [esp]
 00402165    mov         dword ptr [eax],edx
 00402167    mov         eax,dword ptr [esp+8]
 0040216B    mov         edx,dword ptr [esp]
 0040216E    mov         dword ptr [eax+4],edx
>00402171    jmp         004021C9
 00402173    cmp         ebx,3C00
>00402179    jl          00402188
 0040217B    mov         edx,ebx
 0040217D    mov         eax,esi
 0040217F    call        0040201C
 00402184    test        al,al
>00402186    jne         004021C9
 00402188    mov         eax,[0056F618];0x0 gvar_0056F618
 0040218D    mov         dword ptr [esp+4],eax
 00402191    mov         eax,dword ptr [esp]
 00402194    mov         [0056F618],eax;gvar_0056F618
 00402199    mov         eax,dword ptr [esp+4]
 0040219D    mov         eax,dword ptr [eax]
 0040219F    mov         dword ptr [esp+8],eax
 004021A3    mov         eax,dword ptr [esp]
 004021A6    mov         edx,dword ptr [esp+4]
 004021AA    mov         dword ptr [eax+4],edx
 004021AD    mov         eax,dword ptr [esp]
 004021B0    mov         edx,dword ptr [esp+8]
 004021B4    mov         dword ptr [eax],edx
 004021B6    mov         eax,dword ptr [esp+4]
 004021BA    mov         edx,dword ptr [esp]
 004021BD    mov         dword ptr [eax],edx
 004021BF    mov         eax,dword ptr [esp+8]
 004021C3    mov         edx,dword ptr [esp]
 004021C6    mov         dword ptr [eax+4],edx
 004021C9    add         esp,0C
 004021CC    pop         esi
 004021CD    pop         ebx
 004021CE    ret
end;*}

//004021D0
procedure FreeCurAlloc;
begin
{*
 004021D0    cmp         dword ptr ds:[56F61C],0;remBytes:Integer
>004021D7    jle         00402219
 004021D9    cmp         dword ptr ds:[56F61C],0C;remBytes:Integer
>004021E0    jge         004021EE
 004021E2    mov         dword ptr ds:[56F5C8],7;heapErrorCode:Integer
>004021EC    jmp         00402219
 004021EE    mov         eax,[0056F61C];remBytes:Integer
 004021F3    or          eax,2
 004021F6    mov         edx,dword ptr ds:[56F620];curAlloc:PAnsiChar
 004021FC    mov         dword ptr [edx],eax
 004021FE    mov         eax,[0056F620];curAlloc:PAnsiChar
 00402203    add         eax,4
 00402206    call        InternalFreeMem
 0040220B    xor         eax,eax
 0040220D    mov         [0056F620],eax;curAlloc:PAnsiChar
 00402212    xor         eax,eax
 00402214    mov         [0056F61C],eax;remBytes:Integer
 00402219    ret
*}
end;

//0040221C
function MergeCommit(b:TBlock):Boolean;
begin
{*
 0040221C    push        ebx
 0040221D    push        esi
 0040221E    push        edi
 0040221F    add         esp,0FFFFFFF0
 00402222    mov         esi,eax
 00402224    lea         edi,[esp]
 00402227    movs        dword ptr [edi],dword ptr [esi]
 00402228    movs        dword ptr [edi],dword ptr [esi]
 00402229    mov         edi,esp
 0040222B    call        FreeCurAlloc
 00402230    lea         ecx,[esp+8]
 00402234    mov         edx,edi
 00402236    mov         eax,56F628;committedRoot:TBlockDesc
 0040223B    call        MergeBlockAfter
 00402240    mov         ebx,dword ptr [esp+8]
 00402244    test        ebx,ebx
>00402246    jne         0040224C
 00402248    xor         eax,eax
>0040224A    jmp         0040229E
 0040224C    mov         eax,dword ptr [edi]
 0040224E    cmp         ebx,eax
>00402250    jae         0040225C
 00402252    call        FillerSizeBeforeGap
 00402257    sub         dword ptr [edi],eax
 00402259    add         dword ptr [edi+4],eax
 0040225C    mov         eax,dword ptr [edi]
 0040225E    add         eax,dword ptr [edi+4]
 00402261    mov         esi,ebx
 00402263    add         esi,dword ptr [esp+0C]
 00402267    cmp         eax,esi
>00402269    jae         00402273
 0040226B    call        FillerSizeAfterGap
 00402270    add         dword ptr [edi+4],eax
 00402273    mov         eax,dword ptr [edi]
 00402275    add         eax,dword ptr [edi+4]
 00402278    cmp         esi,eax
>0040227A    jne         0040228D
 0040227C    sub         eax,4
 0040227F    mov         edx,4
 00402284    call        FillBeforeGap
 00402289    sub         dword ptr [edi+4],4
 0040228D    mov         eax,dword ptr [edi]
 0040228F    mov         [0056F620],eax;curAlloc:PAnsiChar
 00402294    mov         eax,dword ptr [edi+4]
 00402297    mov         [0056F61C],eax;remBytes:Integer
 0040229C    mov         al,1
 0040229E    add         esp,10
 004022A1    pop         edi
 004022A2    pop         esi
 004022A3    pop         ebx
 004022A4    ret
*}
end;

//004022A8
function NewCommit(minSize:Integer):Boolean;
begin
{*
 004022A8    push        ebx
 004022A9    add         esp,0FFFFFFF8
 004022AC    mov         ebx,eax
 004022AE    mov         edx,esp
 004022B0    lea         eax,[ebx+4]
 004022B3    call        GetCommitted
 004022B8    cmp         dword ptr [esp],0
>004022BC    je          004022C9
 004022BE    mov         eax,esp
 004022C0    call        MergeCommit
 004022C5    test        al,al
>004022C7    jne         004022CD
 004022C9    xor         eax,eax
>004022CB    jmp         004022CF
 004022CD    mov         al,1
 004022CF    pop         ecx
 004022D0    pop         edx
 004022D1    pop         ebx
 004022D2    ret
*}
end;

//004022D4
function NewCommitAt(addr:Pointer; minSize:Integer):Boolean;
begin
{*
 004022D4    push        ebx
 004022D5    push        esi
 004022D6    add         esp,0FFFFFFF8
 004022D9    mov         esi,edx
 004022DB    mov         ebx,eax
 004022DD    mov         ecx,esp
 004022DF    lea         edx,[esi+4]
 004022E2    mov         eax,ebx
 004022E4    call        GetCommittedAt
 004022E9    cmp         dword ptr [esp],0
>004022ED    je          004022FA
 004022EF    mov         eax,esp
 004022F1    call        MergeCommit
 004022F6    test        al,al
>004022F8    jne         004022FE
 004022FA    xor         eax,eax
>004022FC    jmp         00402300
 004022FE    mov         al,1
 00402300    pop         ecx
 00402301    pop         edx
 00402302    pop         esi
 00402303    pop         ebx
 00402304    ret
*}
end;

//00402308
{*function sub_00402308(?:?):?;
begin
 00402308    push        ecx
 00402309    mov         edx,esp
 0040230B    xor         ecx,ecx
 0040230D    mov         dword ptr [edx],ecx
 0040230F    test        eax,eax
>00402311    jns         00402316
 00402313    add         eax,3
 00402316    sar         eax,2
 00402319    cmp         eax,400
>0040231E    jg          00402339
 00402320    mov         ecx,dword ptr ds:[56F624];0x0 gvar_0056F624:Pointer
 00402326    mov         ecx,dword ptr [ecx+eax*4-0C]
 0040232A    mov         dword ptr [edx],ecx
 0040232C    cmp         dword ptr [edx],0
>0040232F    jne         00402339
 00402331    inc         eax
 00402332    cmp         eax,401
>00402337    jne         00402320
 00402339    mov         eax,dword ptr [edx]
 0040233B    pop         edx
 0040233C    ret
end;*}

//00402340
{*function sub_00402340(?:?):?;
begin
 00402340    push        ebx
 00402341    push        esi
 00402342    push        edi
 00402343    push        ebp
 00402344    add         esp,0FFFFFFF4
 00402347    mov         ebx,eax
 00402349    lea         esi,[esp+8]
 0040234D    mov         edi,56F618;gvar_0056F618
 00402352    mov         ebp,56F61C;remBytes:Integer
 00402357    mov         eax,[0056F610];0x0 gvar_0056F610
 0040235C    mov         dword ptr [esi],eax
 0040235E    mov         eax,dword ptr [esi]
 00402360    cmp         ebx,dword ptr [eax+8]
>00402363    jle         00402414
 00402369    mov         eax,dword ptr [edi]
 0040236B    mov         dword ptr [esi],eax
 0040236D    mov         eax,dword ptr [esi]
 0040236F    mov         eax,dword ptr [eax+8]
 00402372    cmp         ebx,eax
>00402374    jle         00402414
 0040237A    mov         edx,dword ptr [esi]
 0040237C    mov         dword ptr [edx+8],ebx
 0040237F    mov         edx,dword ptr [esi]
 00402381    mov         edx,dword ptr [edx+4]
 00402384    mov         dword ptr [esi],edx
 00402386    mov         edx,dword ptr [esi]
 00402388    cmp         ebx,dword ptr [edx+8]
>0040238B    jg          0040237F
 0040238D    mov         edx,dword ptr [edi]
 0040238F    mov         dword ptr [edx+8],eax
 00402392    mov         eax,dword ptr [esi]
 00402394    cmp         eax,dword ptr [edi]
>00402396    je          0040239E
 00402398    mov         eax,dword ptr [esi]
 0040239A    mov         dword ptr [edi],eax
>0040239C    jmp         00402414
 0040239E    cmp         ebx,1000
>004023A4    jg          004023B4
 004023A6    mov         eax,ebx
 004023A8    call        00402308
 004023AD    mov         dword ptr [esi],eax
 004023AF    cmp         dword ptr [esi],0
>004023B2    jne         00402414
 004023B4    mov         eax,ebx
 004023B6    call        NewCommit
 004023BB    test        al,al
>004023BD    jne         004023C9
 004023BF    xor         eax,eax
 004023C1    mov         dword ptr [esp],eax
>004023C4    jmp         0040247D
 004023C9    cmp         ebx,dword ptr [ebp]
>004023CC    jg          00402357
 004023CE    sub         dword ptr [ebp],ebx
 004023D1    cmp         dword ptr [ebp],0C
>004023D5    jge         004023DF
 004023D7    add         ebx,dword ptr [ebp]
 004023DA    xor         eax,eax
 004023DC    mov         dword ptr [ebp],eax
 004023DF    mov         eax,[0056F620];0x0 curAlloc:PAnsiChar
 004023E4    mov         dword ptr [esp+4],eax
 004023E8    add         dword ptr ds:[56F620],ebx;curAlloc:PAnsiChar
 004023EE    mov         eax,ebx
 004023F0    or          eax,2
 004023F3    mov         edx,dword ptr [esp+4]
 004023F7    mov         dword ptr [edx],eax
 004023F9    mov         eax,dword ptr [esp+4]
 004023FD    add         eax,4
 00402400    mov         dword ptr [esp],eax
 00402403    inc         dword ptr ds:[56F5B4];AllocMemCount:Integer
 00402409    sub         ebx,4
 0040240C    add         dword ptr ds:[56F5B8],ebx;AllocMemSize:Integer
>00402412    jmp         0040247D
 00402414    mov         eax,dword ptr [esi]
 00402416    call        00401E04
 0040241B    mov         eax,dword ptr [esi]
 0040241D    mov         edx,dword ptr [eax+8]
 00402420    mov         eax,edx
 00402422    sub         eax,ebx
 00402424    cmp         eax,0C
>00402427    jl          00402435
 00402429    mov         edx,dword ptr [esi]
 0040242B    add         edx,ebx
 0040242D    xchg        eax,edx
 0040242E    call        004020D8
>00402433    jmp         00402453
 00402435    mov         ebx,edx
 00402437    mov         eax,dword ptr [esi]
 00402439    cmp         eax,dword ptr [edi]
>0040243B    jne         00402444
 0040243D    mov         eax,dword ptr [esi]
 0040243F    mov         eax,dword ptr [eax+4]
 00402442    mov         dword ptr [edi],eax
 00402444    mov         eax,dword ptr [esi]
 00402446    add         eax,ebx
 00402448    mov         dword ptr [esp+4],eax
 0040244C    mov         eax,dword ptr [esp+4]
 00402450    and         dword ptr [eax],0FFFFFFFE
 00402453    mov         eax,dword ptr [esi]
 00402455    mov         dword ptr [esp+4],eax
 00402459    mov         eax,ebx
 0040245B    or          eax,2
 0040245E    mov         edx,dword ptr [esp+4]
 00402462    mov         dword ptr [edx],eax
 00402464    mov         eax,dword ptr [esp+4]
 00402468    add         eax,4
 0040246B    mov         dword ptr [esp],eax
 0040246E    inc         dword ptr ds:[56F5B4];AllocMemCount:Integer
 00402474    sub         ebx,4
 00402477    add         dword ptr ds:[56F5B8],ebx;AllocMemSize:Integer
 0040247D    mov         eax,dword ptr [esp]
 00402480    add         esp,0C
 00402483    pop         ebp
 00402484    pop         edi
 00402485    pop         esi
 00402486    pop         ebx
 00402487    ret
end;*}

//00402488
function SysGetMem(Size:Integer):Pointer;
begin
{*
 00402488    push        ebp
 00402489    mov         ebp,esp
 0040248B    add         esp,0FFFFFFEC
 0040248E    push        ebx
 0040248F    mov         ebx,eax
 00402491    cmp         byte ptr ds:[56F5C4],0;gvar_0056F5C4
>00402498    jne         004024A3
 0040249A    call        00401C2C
 0040249F    test        al,al
>004024A1    je          004024AB
 004024A3    cmp         ebx,7FFFFFF8
>004024A9    jle         004024B5
 004024AB    xor         eax,eax
 004024AD    mov         dword ptr [ebp-4],eax
>004024B0    jmp         0040262B
 004024B5    xor         edx,edx
 004024B7    push        ebp
 004024B8    push        402624
 004024BD    push        dword ptr fs:[edx]
 004024C0    mov         dword ptr fs:[edx],esp
 004024C3    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>004024CA    je          004024D6
 004024CC    push        56F5CC
 004024D1    call        kernel32.EnterCriticalSection
 004024D6    add         ebx,7
 004024D9    and         ebx,0FFFFFFFC
 004024DC    cmp         ebx,0C
>004024DF    jge         004024E6
 004024E1    mov         ebx,0C
 004024E6    cmp         ebx,1000
>004024EC    jg          0040259E
 004024F2    mov         eax,ebx
 004024F4    test        eax,eax
>004024F6    jns         004024FB
 004024F8    add         eax,3
 004024FB    sar         eax,2
 004024FE    mov         edx,dword ptr ds:[56F624];gvar_0056F624:Pointer
 00402504    mov         edx,dword ptr [edx+eax*4-0C]
 00402508    mov         dword ptr [ebp-8],edx
 0040250B    cmp         dword ptr [ebp-8],0
>0040250F    je          0040259E
 00402515    mov         edx,dword ptr [ebp-8]
 00402518    add         edx,ebx
 0040251A    mov         dword ptr [ebp-14],edx
 0040251D    mov         edx,dword ptr [ebp-14]
 00402520    and         dword ptr [edx],0FFFFFFFE
 00402523    mov         edx,dword ptr [ebp-8]
 00402526    mov         edx,dword ptr [edx+4]
 00402529    mov         dword ptr [ebp-10],edx
 0040252C    mov         edx,dword ptr [ebp-10]
 0040252F    cmp         edx,dword ptr [ebp-8]
>00402532    jne         00402542
 00402534    mov         edx,dword ptr ds:[56F624];gvar_0056F624:Pointer
 0040253A    xor         ecx,ecx
 0040253C    mov         dword ptr [edx+eax*4-0C],ecx
>00402540    jmp         00402568
 00402542    mov         edx,dword ptr ds:[56F624];gvar_0056F624:Pointer
 00402548    mov         ecx,dword ptr [ebp-10]
 0040254B    mov         dword ptr [edx+eax*4-0C],ecx
 0040254F    mov         eax,dword ptr [ebp-8]
 00402552    mov         eax,dword ptr [eax]
 00402554    mov         dword ptr [ebp-0C],eax
 00402557    mov         eax,dword ptr [ebp-0C]
 0040255A    mov         edx,dword ptr [ebp-10]
 0040255D    mov         dword ptr [eax+4],edx
 00402560    mov         eax,dword ptr [ebp-10]
 00402563    mov         edx,dword ptr [ebp-0C]
 00402566    mov         dword ptr [eax],edx
 00402568    mov         eax,dword ptr [ebp-8]
 0040256B    mov         dword ptr [ebp-14],eax
 0040256E    mov         eax,dword ptr [ebp-8]
 00402571    mov         eax,dword ptr [eax+8]
 00402574    or          eax,2
 00402577    mov         edx,dword ptr [ebp-14]
 0040257A    mov         dword ptr [edx],eax
 0040257C    mov         eax,dword ptr [ebp-14]
 0040257F    add         eax,4
 00402582    mov         dword ptr [ebp-4],eax
 00402585    inc         dword ptr ds:[56F5B4];AllocMemCount:Integer
 0040258B    sub         ebx,4
 0040258E    add         dword ptr ds:[56F5B8],ebx;AllocMemSize:Integer
 00402594    call        @TryFinallyExit
>00402599    jmp         0040262B
 0040259E    cmp         ebx,dword ptr ds:[56F61C];remBytes:Integer
>004025A4    jg          004025F9
 004025A6    sub         dword ptr ds:[56F61C],ebx;remBytes:Integer
 004025AC    cmp         dword ptr ds:[56F61C],0C;remBytes:Integer
>004025B3    jge         004025C2
 004025B5    add         ebx,dword ptr ds:[56F61C];remBytes:Integer
 004025BB    xor         eax,eax
 004025BD    mov         [0056F61C],eax;remBytes:Integer
 004025C2    mov         eax,[0056F620];curAlloc:PAnsiChar
 004025C7    mov         dword ptr [ebp-14],eax
 004025CA    add         dword ptr ds:[56F620],ebx;curAlloc:PAnsiChar
 004025D0    mov         eax,ebx
 004025D2    or          eax,2
 004025D5    mov         edx,dword ptr [ebp-14]
 004025D8    mov         dword ptr [edx],eax
 004025DA    mov         eax,dword ptr [ebp-14]
 004025DD    add         eax,4
 004025E0    mov         dword ptr [ebp-4],eax
 004025E3    inc         dword ptr ds:[56F5B4];AllocMemCount:Integer
 004025E9    sub         ebx,4
 004025EC    add         dword ptr ds:[56F5B8],ebx;AllocMemSize:Integer
 004025F2    call        @TryFinallyExit
>004025F7    jmp         0040262B
 004025F9    mov         eax,ebx
 004025FB    call        00402340
 00402600    mov         dword ptr [ebp-4],eax
 00402603    xor         eax,eax
 00402605    pop         edx
 00402606    pop         ecx
 00402607    pop         ecx
 00402608    mov         dword ptr fs:[eax],edx
 0040260B    push        40262B
 00402610    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00402617    je          00402623
 00402619    push        56F5CC
 0040261E    call        kernel32.LeaveCriticalSection
 00402623    ret
>00402624    jmp         @HandleFinally
>00402629    jmp         00402610
 0040262B    mov         eax,dword ptr [ebp-4]
 0040262E    pop         ebx
 0040262F    mov         esp,ebp
 00402631    pop         ebp
 00402632    ret
*}
end;

//00402634
function SysFreeMem(P:Pointer):Integer;
begin
{*
 00402634    push        ebp
 00402635    mov         ebp,esp
 00402637    add         esp,0FFFFFFF0
 0040263A    push        ebx
 0040263B    mov         ebx,eax
 0040263D    xor         eax,eax
 0040263F    mov         [0056F5C8],eax;heapErrorCode:Integer
 00402644    cmp         byte ptr ds:[56F5C4],0;gvar_0056F5C4
>0040264B    jne         0040266C
 0040264D    call        00401C2C
 00402652    test        al,al
>00402654    jne         0040266C
 00402656    mov         dword ptr ds:[56F5C8],8;heapErrorCode:Integer
 00402660    mov         dword ptr [ebp-4],8
>00402667    jmp         00402802
 0040266C    xor         edx,edx
 0040266E    push        ebp
 0040266F    push        4027FB
 00402674    push        dword ptr fs:[edx]
 00402677    mov         dword ptr fs:[edx],esp
 0040267A    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00402681    je          0040268D
 00402683    push        56F5CC
 00402688    call        kernel32.EnterCriticalSection
 0040268D    mov         dword ptr [ebp-8],ebx
 00402690    mov         eax,dword ptr [ebp-8]
 00402693    sub         eax,4
 00402696    mov         dword ptr [ebp-8],eax
 00402699    mov         eax,dword ptr [ebp-8]
 0040269C    mov         ebx,dword ptr [eax]
 0040269E    test        bl,2
>004026A1    jne         004026B2
 004026A3    mov         dword ptr ds:[56F5C8],9;heapErrorCode:Integer
>004026AD    jmp         004027D2
 004026B2    dec         dword ptr ds:[56F5B4];AllocMemCount:Integer
 004026B8    mov         eax,ebx
 004026BA    and         eax,7FFFFFFC
 004026BF    sub         eax,4
 004026C2    sub         dword ptr ds:[56F5B8],eax;AllocMemSize:Integer
 004026C8    test        bl,1
>004026CB    je          00402720
 004026CD    mov         eax,dword ptr [ebp-8]
 004026D0    sub         eax,0C
 004026D3    mov         eax,dword ptr [eax+8]
 004026D6    cmp         eax,0C
>004026D9    jl          004026E2
 004026DB    test        eax,80000003
>004026E0    je          004026F1
 004026E2    mov         dword ptr ds:[56F5C8],0A;heapErrorCode:Integer
>004026EC    jmp         004027D2
 004026F1    mov         edx,dword ptr [ebp-8]
 004026F4    sub         edx,eax
 004026F6    mov         dword ptr [ebp-10],edx
 004026F9    mov         edx,dword ptr [ebp-10]
 004026FC    cmp         eax,dword ptr [edx+8]
>004026FF    je          00402710
 00402701    mov         dword ptr ds:[56F5C8],0A;heapErrorCode:Integer
>0040270B    jmp         004027D2
 00402710    add         ebx,eax
 00402712    mov         eax,dword ptr [ebp-10]
 00402715    mov         dword ptr [ebp-8],eax
 00402718    mov         eax,dword ptr [ebp-10]
 0040271B    call        00401E04
 00402720    and         ebx,7FFFFFFC
 00402726    mov         eax,dword ptr [ebp-8]
 00402729    add         eax,ebx
 0040272B    mov         dword ptr [ebp-0C],eax
 0040272E    mov         eax,dword ptr [ebp-0C]
 00402731    cmp         eax,dword ptr ds:[56F620];curAlloc:PAnsiChar
>00402737    jne         00402765
 00402739    sub         dword ptr ds:[56F620],ebx;curAlloc:PAnsiChar
 0040273F    add         dword ptr ds:[56F61C],ebx;remBytes:Integer
 00402745    cmp         dword ptr ds:[56F61C],3C00;remBytes:Integer
>0040274F    jle         00402756
 00402751    call        FreeCurAlloc
 00402756    xor         eax,eax
 00402758    mov         dword ptr [ebp-4],eax
 0040275B    call        @TryFinallyExit
>00402760    jmp         00402802
 00402765    mov         eax,dword ptr [ebp-0C]
 00402768    mov         eax,dword ptr [eax]
 0040276A    test        al,2
>0040276C    je          0040278C
 0040276E    and         eax,7FFFFFFC
 00402773    cmp         eax,4
>00402776    jge         00402784
 00402778    mov         dword ptr ds:[56F5C8],0B;heapErrorCode:Integer
>00402782    jmp         004027D2
 00402784    mov         eax,dword ptr [ebp-0C]
 00402787    or          dword ptr [eax],1
>0040278A    jmp         004027C8
 0040278C    mov         eax,dword ptr [ebp-0C]
 0040278F    mov         dword ptr [ebp-10],eax
 00402792    mov         eax,dword ptr [ebp-10]
 00402795    cmp         dword ptr [eax+4],0
>00402799    je          004027AC
 0040279B    mov         eax,dword ptr [ebp-10]
 0040279E    cmp         dword ptr [eax],0
>004027A1    je          004027AC
 004027A3    mov         eax,dword ptr [ebp-10]
 004027A6    cmp         dword ptr [eax+8],0C
>004027AA    jge         004027B8
 004027AC    mov         dword ptr ds:[56F5C8],0B;heapErrorCode:Integer
>004027B6    jmp         004027D2
 004027B8    mov         eax,dword ptr [ebp-10]
 004027BB    mov         eax,dword ptr [eax+8]
 004027BE    add         ebx,eax
 004027C0    mov         eax,dword ptr [ebp-10]
 004027C3    call        00401E04
 004027C8    mov         edx,ebx
 004027CA    mov         eax,dword ptr [ebp-8]
 004027CD    call        004020D8
 004027D2    mov         eax,[0056F5C8];heapErrorCode:Integer
 004027D7    mov         dword ptr [ebp-4],eax
 004027DA    xor         eax,eax
 004027DC    pop         edx
 004027DD    pop         ecx
 004027DE    pop         ecx
 004027DF    mov         dword ptr fs:[eax],edx
 004027E2    push        402802
 004027E7    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>004027EE    je          004027FA
 004027F0    push        56F5CC
 004027F5    call        kernel32.LeaveCriticalSection
 004027FA    ret
>004027FB    jmp         @HandleFinally
>00402800    jmp         004027E7
 00402802    mov         eax,dword ptr [ebp-4]
 00402805    pop         ebx
 00402806    mov         esp,ebp
 00402808    pop         ebp
 00402809    ret
*}
end;

//0040280C
{*function sub_0040280C(?:?; ?:?):?;
begin
 0040280C    push        ebx
 0040280D    push        esi
 0040280E    push        edi
 0040280F    push        ebp
 00402810    add         esp,0FFFFFFF4
 00402813    mov         ebx,edx
 00402815    add         ebx,7
 00402818    and         ebx,0FFFFFFFC
 0040281B    cmp         ebx,0C
>0040281E    jge         00402825
 00402820    mov         ebx,0C
 00402825    sub         eax,4
 00402828    mov         dword ptr [esp],eax
 0040282B    mov         eax,dword ptr [esp]
 0040282E    mov         esi,dword ptr [eax]
 00402830    and         esi,7FFFFFFC
 00402836    mov         eax,dword ptr [esp]
 00402839    add         eax,esi
 0040283B    mov         dword ptr [esp+4],eax
 0040283F    cmp         esi,ebx
>00402841    jne         0040284A
 00402843    mov         al,1
>00402845    jmp         00402A07
 0040284A    cmp         esi,ebx
>0040284C    jle         004028E2
 00402852    mov         ebp,esi
 00402854    sub         ebp,ebx
 00402856    mov         edx,dword ptr [esp+4]
 0040285A    cmp         edx,dword ptr ds:[56F620];0x0 curAlloc:PAnsiChar
>00402860    jne         0040288E
 00402862    sub         dword ptr ds:[56F620],ebp;curAlloc:PAnsiChar
 00402868    add         dword ptr ds:[56F61C],ebp;remBytes:Integer
 0040286E    cmp         dword ptr ds:[56F61C],0C;remBytes:Integer
>00402875    jge         004029EA
 0040287B    add         dword ptr ds:[56F620],ebp;curAlloc:PAnsiChar
 00402881    sub         dword ptr ds:[56F61C],ebp;remBytes:Integer
 00402887    mov         ebx,esi
>00402889    jmp         004029EA
 0040288E    mov         dword ptr [esp+4],eax
 00402892    mov         eax,dword ptr [esp+4]
 00402896    test        byte ptr [eax],2
>00402899    jne         004028B3
 0040289B    mov         eax,dword ptr [esp+4]
 0040289F    mov         dword ptr [esp+8],eax
 004028A3    mov         eax,dword ptr [esp+8]
 004028A7    add         ebp,dword ptr [eax+8]
 004028AA    mov         eax,dword ptr [esp+8]
 004028AE    call        00401E04
 004028B3    cmp         ebp,0C
>004028B6    jl          004028DB
 004028B8    mov         eax,dword ptr [esp]
 004028BB    add         eax,ebx
 004028BD    mov         dword ptr [esp+4],eax
 004028C1    or          ebp,2
 004028C4    mov         eax,dword ptr [esp+4]
 004028C8    mov         dword ptr [eax],ebp
 004028CA    mov         eax,dword ptr [esp+4]
 004028CE    add         eax,4
 004028D1    call        InternalFreeMem
>004028D6    jmp         004029EA
 004028DB    mov         ebx,esi
>004028DD    jmp         004029EA
 004028E2    mov         edi,ebx
 004028E4    sub         edi,esi
 004028E6    mov         eax,dword ptr [esp+4]
 004028EA    cmp         eax,dword ptr ds:[56F620];0x0 curAlloc:PAnsiChar
>004028F0    jne         00402957
 004028F2    cmp         edi,dword ptr ds:[56F61C];0x0 remBytes:Integer
>004028F8    jg          00402949
 004028FA    sub         dword ptr ds:[56F61C],edi;remBytes:Integer
 00402900    add         dword ptr ds:[56F620],edi;curAlloc:PAnsiChar
 00402906    cmp         dword ptr ds:[56F61C],0C;remBytes:Integer
>0040290D    jge         00402927
 0040290F    mov         eax,[0056F61C];0x0 remBytes:Integer
 00402914    add         dword ptr ds:[56F620],eax;curAlloc:PAnsiChar
 0040291A    add         ebx,dword ptr ds:[56F61C];0x0 remBytes:Integer
 00402920    xor         eax,eax
 00402922    mov         [0056F61C],eax;remBytes:Integer
 00402927    mov         eax,ebx
 00402929    sub         eax,esi
 0040292B    add         dword ptr ds:[56F5B8],eax;AllocMemSize:Integer
 00402931    mov         eax,dword ptr [esp]
 00402934    mov         eax,dword ptr [eax]
 00402936    and         eax,80000003
 0040293B    or          ebx,eax
 0040293D    mov         eax,dword ptr [esp]
 00402940    mov         dword ptr [eax],ebx
 00402942    mov         al,1
>00402944    jmp         00402A07
 00402949    call        FreeCurAlloc
 0040294E    mov         eax,dword ptr [esp]
 00402951    add         eax,esi
 00402953    mov         dword ptr [esp+4],eax
 00402957    mov         eax,dword ptr [esp+4]
 0040295B    test        byte ptr [eax],2
>0040295E    jne         004029AF
 00402960    mov         eax,dword ptr [esp+4]
 00402964    mov         dword ptr [esp+8],eax
 00402968    mov         edx,dword ptr [esp+8]
 0040296C    mov         ebp,dword ptr [edx+8]
 0040296F    cmp         edi,ebp
>00402971    jle         0040297D
 00402973    add         eax,ebp
 00402975    mov         dword ptr [esp+4],eax
 00402979    sub         edi,ebp
>0040297B    jmp         004029AF
 0040297D    mov         eax,dword ptr [esp+8]
 00402981    call        00401E04
 00402986    sub         ebp,edi
 00402988    cmp         ebp,0C
>0040298B    jl          0040299B
 0040298D    mov         eax,dword ptr [esp]
 00402990    add         eax,ebx
 00402992    mov         edx,ebp
 00402994    call        004020D8
>00402999    jmp         004029EA
 0040299B    add         ebx,ebp
 0040299D    mov         eax,dword ptr [esp]
 004029A0    add         eax,ebx
 004029A2    mov         dword ptr [esp+4],eax
 004029A6    mov         eax,dword ptr [esp+4]
 004029AA    and         dword ptr [eax],0FFFFFFFE
>004029AD    jmp         004029EA
 004029AF    mov         eax,dword ptr [esp+4]
 004029B3    mov         eax,dword ptr [eax]
 004029B5    test        eax,80000000
>004029BA    je          004029E6
 004029BC    and         eax,7FFFFFFC
 004029C1    add         eax,dword ptr [esp+4]
 004029C5    mov         dword ptr [esp+4],eax
 004029C9    mov         edx,edi
 004029CB    mov         eax,dword ptr [esp+4]
 004029CF    call        NewCommitAt
 004029D4    test        al,al
>004029D6    je          004029E6
 004029D8    mov         eax,dword ptr [esp]
 004029DB    add         eax,esi
 004029DD    mov         dword ptr [esp+4],eax
>004029E1    jmp         004028E2
 004029E6    xor         eax,eax
>004029E8    jmp         00402A07
 004029EA    mov         eax,ebx
 004029EC    sub         eax,esi
 004029EE    add         dword ptr ds:[56F5B8],eax;AllocMemSize:Integer
 004029F4    mov         eax,dword ptr [esp]
 004029F7    mov         eax,dword ptr [eax]
 004029F9    and         eax,80000003
 004029FE    or          ebx,eax
 00402A00    mov         eax,dword ptr [esp]
 00402A03    mov         dword ptr [eax],ebx
 00402A05    mov         al,1
 00402A07    add         esp,0C
 00402A0A    pop         ebp
 00402A0B    pop         edi
 00402A0C    pop         esi
 00402A0D    pop         ebx
 00402A0E    ret
end;*}

//00402A10
function SysReallocMem(P:Pointer; Size:Integer):Pointer;
begin
{*
 00402A10    push        ebp
 00402A11    mov         ebp,esp
 00402A13    add         esp,0FFFFFFF8
 00402A16    push        ebx
 00402A17    push        esi
 00402A18    mov         esi,edx
 00402A1A    mov         ebx,eax
 00402A1C    cmp         byte ptr ds:[56F5C4],0;gvar_0056F5C4
>00402A23    jne         00402A38
 00402A25    call        00401C2C
 00402A2A    test        al,al
>00402A2C    jne         00402A38
 00402A2E    xor         eax,eax
 00402A30    mov         dword ptr [ebp-4],eax
>00402A33    jmp         00402AD0
 00402A38    xor         edx,edx
 00402A3A    push        ebp
 00402A3B    push        402AC9
 00402A40    push        dword ptr fs:[edx]
 00402A43    mov         dword ptr fs:[edx],esp
 00402A46    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00402A4D    je          00402A59
 00402A4F    push        56F5CC
 00402A54    call        kernel32.EnterCriticalSection
 00402A59    mov         edx,esi
 00402A5B    mov         eax,ebx
 00402A5D    call        0040280C
 00402A62    test        al,al
>00402A64    je          00402A6B
 00402A66    mov         dword ptr [ebp-4],ebx
>00402A69    jmp         00402AA8
 00402A6B    mov         eax,esi
 00402A6D    call        SysGetMem
 00402A72    mov         dword ptr [ebp-8],eax
 00402A75    mov         eax,ebx
 00402A77    sub         eax,4
 00402A7A    mov         eax,dword ptr [eax]
 00402A7C    and         eax,7FFFFFFC
 00402A81    sub         eax,4
 00402A84    cmp         esi,eax
>00402A86    jge         00402A8A
 00402A88    mov         eax,esi
 00402A8A    cmp         dword ptr [ebp-8],0
>00402A8E    je          00402AA2
 00402A90    mov         edx,dword ptr [ebp-8]
 00402A93    mov         ecx,ebx
 00402A95    xchg        eax,ecx
 00402A96    call        Move
 00402A9B    mov         eax,ebx
 00402A9D    call        SysFreeMem
 00402AA2    mov         eax,dword ptr [ebp-8]
 00402AA5    mov         dword ptr [ebp-4],eax
 00402AA8    xor         eax,eax
 00402AAA    pop         edx
 00402AAB    pop         ecx
 00402AAC    pop         ecx
 00402AAD    mov         dword ptr fs:[eax],edx
 00402AB0    push        402AD0
 00402AB5    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00402ABC    je          00402AC8
 00402ABE    push        56F5CC
 00402AC3    call        kernel32.LeaveCriticalSection
 00402AC8    ret
>00402AC9    jmp         @HandleFinally
>00402ACE    jmp         00402AB5
 00402AD0    mov         eax,dword ptr [ebp-4]
 00402AD3    pop         esi
 00402AD4    pop         ebx
 00402AD5    pop         ecx
 00402AD6    pop         ecx
 00402AD7    pop         ebp
 00402AD8    ret
*}
end;

//00402ADC
{*function sub_00402ADC(?:TBlockDesc):?;
begin
 00402ADC    push        ebx
 00402ADD    push        ecx
 00402ADE    mov         ecx,esp
 00402AE0    xor         edx,edx
 00402AE2    mov         ebx,dword ptr [eax]
 00402AE4    mov         dword ptr [ecx],ebx
 00402AE6    cmp         eax,dword ptr [ecx]
>00402AE8    je          00402AF9
 00402AEA    mov         ebx,dword ptr [ecx]
 00402AEC    add         edx,dword ptr [ebx+0C]
 00402AEF    mov         ebx,dword ptr [ecx]
 00402AF1    mov         ebx,dword ptr [ebx]
 00402AF3    mov         dword ptr [ecx],ebx
 00402AF5    cmp         eax,dword ptr [ecx]
>00402AF7    jne         00402AEA
 00402AF9    mov         eax,edx
 00402AFB    pop         edx
 00402AFC    pop         ebx
 00402AFD    ret
end;*}

//00402B00
{*procedure sub_00402B00(?:?);
begin
 00402B00    push        ebp
 00402B01    mov         ebp,esp
 00402B03    add         esp,0FFFFFFE8
 00402B06    push        ebx
 00402B07    push        esi
 00402B08    mov         esi,eax
 00402B0A    lea         ebx,[ebp-0C]
 00402B0D    xor         eax,eax
 00402B0F    mov         dword ptr [esi],eax
 00402B11    xor         eax,eax
 00402B13    mov         dword ptr [esi+4],eax
 00402B16    xor         eax,eax
 00402B18    mov         dword ptr [esi+8],eax
 00402B1B    xor         eax,eax
 00402B1D    mov         dword ptr [esi+0C],eax
 00402B20    xor         eax,eax
 00402B22    mov         dword ptr [esi+10],eax
 00402B25    xor         eax,eax
 00402B27    mov         dword ptr [esi+14],eax
 00402B2A    xor         eax,eax
 00402B2C    mov         dword ptr [esi+18],eax
 00402B2F    xor         eax,eax
 00402B31    mov         dword ptr [esi+1C],eax
 00402B34    xor         eax,eax
 00402B36    mov         dword ptr [esi+20],eax
 00402B39    xor         eax,eax
 00402B3B    mov         dword ptr [esi+24],eax
 00402B3E    cmp         byte ptr ds:[56F5C4],0;gvar_0056F5C4
>00402B45    je          00402DD5
 00402B4B    xor         ecx,ecx
 00402B4D    push        ebp
 00402B4E    push        402DCE
 00402B53    push        dword ptr fs:[ecx]
 00402B56    mov         dword ptr fs:[ecx],esp
 00402B59    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00402B60    je          00402B6C
 00402B62    push        56F5CC
 00402B67    call        kernel32.EnterCriticalSection
 00402B6C    mov         eax,56F5EC;spaceRoot:TBlockDesc
 00402B71    call        00402ADC
 00402B76    mov         dword ptr [esi],eax
 00402B78    mov         eax,56F5FC
 00402B7D    call        00402ADC
 00402B82    mov         dword ptr [esi+4],eax
 00402B85    mov         eax,56F628;committedRoot:TBlockDesc
 00402B8A    call        00402ADC
 00402B8F    mov         dword ptr [esi+8],eax
 00402B92    xor         eax,eax
 00402B94    mov         edx,3
 00402B99    mov         ecx,dword ptr ds:[56F624];0x0 gvar_0056F624:Pointer
 00402B9F    mov         ecx,dword ptr [ecx+edx*4-0C]
 00402BA3    mov         dword ptr [ebx],ecx
 00402BA5    cmp         dword ptr [ebx],0
>00402BA8    je          00402BEE
 00402BAA    mov         ecx,dword ptr [ebx]
 00402BAC    add         eax,dword ptr [ecx+8]
 00402BAF    mov         ecx,dword ptr [ebx]
 00402BB1    mov         ecx,dword ptr [ecx]
 00402BB3    mov         ecx,dword ptr [ecx+4]
 00402BB6    cmp         ecx,dword ptr [ebx]
>00402BB8    jne         00402BCD
 00402BBA    mov         ecx,dword ptr [ebx]
 00402BBC    mov         ecx,dword ptr [ecx+4]
 00402BBF    mov         ecx,dword ptr [ecx]
 00402BC1    cmp         ecx,dword ptr [ebx]
>00402BC3    jne         00402BCD
 00402BC5    mov         ecx,dword ptr [ebx]
 00402BC7    cmp         dword ptr [ecx+8],0C
>00402BCB    jge         00402BD9
 00402BCD    mov         dword ptr ds:[56F5C8],0C;heapErrorCode:Integer
>00402BD7    jmp         00402BEE
 00402BD9    mov         ecx,dword ptr [ebx]
 00402BDB    mov         ecx,dword ptr [ecx+4]
 00402BDE    mov         dword ptr [ebx],ecx
 00402BE0    mov         ecx,dword ptr ds:[56F624];0x0 gvar_0056F624:Pointer
 00402BE6    mov         ecx,dword ptr [ecx+edx*4-0C]
 00402BEA    cmp         ecx,dword ptr [ebx]
>00402BEC    jne         00402BAA
 00402BEE    inc         edx
 00402BEF    cmp         edx,401
>00402BF5    jne         00402B99
 00402BF7    mov         dword ptr [esi+14],eax
 00402BFA    xor         eax,eax
 00402BFC    mov         edx,dword ptr ds:[56F610];0x0 gvar_0056F610
 00402C02    mov         dword ptr [ebx],edx
>00402C04    jmp         00402C3C
 00402C06    mov         edx,dword ptr [ebx]
 00402C08    mov         edx,dword ptr [edx]
 00402C0A    mov         edx,dword ptr [edx+4]
 00402C0D    cmp         edx,dword ptr [ebx]
>00402C0F    jne         00402C24
 00402C11    mov         edx,dword ptr [ebx]
 00402C13    mov         edx,dword ptr [edx+4]
 00402C16    mov         edx,dword ptr [edx]
 00402C18    cmp         edx,dword ptr [ebx]
>00402C1A    jne         00402C24
 00402C1C    mov         edx,dword ptr [ebx]
 00402C1E    cmp         dword ptr [edx+8],0C
>00402C22    jge         00402C30
 00402C24    mov         dword ptr ds:[56F5C8],0C;heapErrorCode:Integer
>00402C2E    jmp         00402C45
 00402C30    mov         edx,dword ptr [ebx]
 00402C32    add         eax,dword ptr [edx+8]
 00402C35    mov         edx,dword ptr [ebx]
 00402C37    mov         edx,dword ptr [edx+4]
 00402C3A    mov         dword ptr [ebx],edx
 00402C3C    mov         edx,56F60C
 00402C41    cmp         edx,dword ptr [ebx]
>00402C43    jne         00402C06
 00402C45    mov         dword ptr [esi+18],eax
 00402C48    mov         eax,[0056F61C];0x0 remBytes:Integer
 00402C4D    mov         dword ptr [esi+1C],eax
 00402C50    mov         edx,dword ptr [esi+14]
 00402C53    add         edx,dword ptr [esi+18]
 00402C56    add         edx,eax
 00402C58    mov         dword ptr [esi+10],edx
 00402C5B    xor         eax,eax
 00402C5D    mov         dword ptr [ebp-4],eax
 00402C60    xor         eax,eax
 00402C62    mov         dword ptr [ebp-8],eax
 00402C65    xor         eax,eax
 00402C67    mov         dword ptr [esi+20],eax
 00402C6A    mov         eax,[0056F628];0x0 committedRoot:TBlockDesc
 00402C6F    mov         dword ptr [ebp-18],eax
 00402C72    xor         edx,edx
>00402C74    jmp         00402D7F
 00402C79    mov         eax,dword ptr [ebp-18]
 00402C7C    mov         eax,dword ptr [eax+8];TBlockDesc.addr:PAnsiChar
 00402C7F    mov         dword ptr [ebp-10],eax
 00402C82    mov         eax,dword ptr [ebp-18]
 00402C85    mov         eax,dword ptr [eax+0C]
 00402C88    add         eax,dword ptr [ebp-10]
 00402C8B    mov         dword ptr [ebp-14],eax
 00402C8E    mov         eax,dword ptr [ebp-10]
 00402C91    cmp         eax,dword ptr [ebp-14]
>00402C94    jae         00402D77
 00402C9A    mov         eax,dword ptr [ebp-10]
 00402C9D    cmp         eax,dword ptr ds:[56F620];0x0 curAlloc:PAnsiChar
>00402CA3    jne         00402CCB
 00402CA5    cmp         dword ptr ds:[56F61C],0;remBytes:Integer
>00402CAC    jle         00402CCB
 00402CAE    mov         eax,[0056F61C];0x0 remBytes:Integer
 00402CB3    add         dword ptr [ebp-4],eax
 00402CB6    test        dl,dl
>00402CB8    je          00402CC4
 00402CBA    mov         dword ptr ds:[56F5C8],7;heapErrorCode:Integer
 00402CC4    xor         edx,edx
>00402CC6    jmp         00402D68
 00402CCB    mov         eax,dword ptr [ebp-10]
 00402CCE    test        byte ptr [eax],1
 00402CD1    setne       al
 00402CD4    cmp         dl,al
>00402CD6    je          00402CE2
 00402CD8    mov         dword ptr ds:[56F5C8],0B;heapErrorCode:Integer
 00402CE2    mov         eax,dword ptr [ebp-10]
 00402CE5    test        byte ptr [eax],2
>00402CE8    jne         00402D23
 00402CEA    mov         eax,dword ptr [ebp-10]
 00402CED    mov         dword ptr [ebx],eax
 00402CEF    mov         eax,dword ptr [ebx]
 00402CF1    mov         eax,dword ptr [eax]
 00402CF3    mov         eax,dword ptr [eax+4]
 00402CF6    cmp         eax,dword ptr [ebx]
>00402CF8    jne         00402D0D
 00402CFA    mov         eax,dword ptr [ebx]
 00402CFC    mov         eax,dword ptr [eax+4]
 00402CFF    mov         eax,dword ptr [eax]
 00402D01    cmp         eax,dword ptr [ebx]
>00402D03    jne         00402D0D
 00402D05    mov         eax,dword ptr [ebx]
 00402D07    cmp         dword ptr [eax+8],0C
>00402D0B    jge         00402D17
 00402D0D    mov         dword ptr ds:[56F5C8],0D;heapErrorCode:Integer
 00402D17    mov         eax,dword ptr [ebx]
 00402D19    mov         eax,dword ptr [eax+8]
 00402D1C    add         dword ptr [ebp-4],eax
 00402D1F    mov         dl,1
>00402D21    jmp         00402D68
 00402D23    mov         eax,dword ptr [ebp-10]
 00402D26    mov         eax,dword ptr [eax]
 00402D28    and         eax,7FFFFFFC
 00402D2D    mov         edx,dword ptr [ebp-10]
 00402D30    test        byte ptr [edx+3],80
>00402D34    je          00402D5A
 00402D36    add         dword ptr [esi+20],eax
 00402D39    mov         edx,dword ptr [ebp-18]
 00402D3C    mov         edx,dword ptr [edx+8];TBlockDesc.addr:PAnsiChar
 00402D3F    cmp         edx,dword ptr [ebp-10]
>00402D42    jae         00402D66
 00402D44    mov         edx,dword ptr [ebp-10]
 00402D47    add         edx,eax
 00402D49    cmp         edx,dword ptr [ebp-14]
>00402D4C    jae         00402D66
 00402D4E    mov         dword ptr ds:[56F5C8],9;heapErrorCode:Integer
>00402D58    jmp         00402D66
 00402D5A    mov         edx,eax
 00402D5C    sub         edx,4
 00402D5F    add         dword ptr [ebp-8],edx
 00402D62    add         dword ptr [esi+20],4
 00402D66    xor         edx,edx
 00402D68    add         dword ptr [ebp-10],eax
 00402D6B    mov         eax,dword ptr [ebp-10]
 00402D6E    cmp         eax,dword ptr [ebp-14]
>00402D71    jb          00402C9A
 00402D77    mov         eax,dword ptr [ebp-18]
 00402D7A    mov         eax,dword ptr [eax]
 00402D7C    mov         dword ptr [ebp-18],eax
 00402D7F    mov         eax,56F628;committedRoot:TBlockDesc
 00402D84    cmp         eax,dword ptr [ebp-18]
>00402D87    jne         00402C79
 00402D8D    mov         eax,dword ptr [esi+10]
 00402D90    cmp         eax,dword ptr [ebp-4]
>00402D93    je          00402D9F
 00402D95    mov         dword ptr ds:[56F5C8],0E;heapErrorCode:Integer
 00402D9F    mov         eax,dword ptr [ebp-8]
 00402DA2    mov         dword ptr [esi+0C],eax
 00402DA5    mov         eax,[0056F5C8];0x0 heapErrorCode:Integer
 00402DAA    mov         dword ptr [esi+24],eax
 00402DAD    xor         eax,eax
 00402DAF    pop         edx
 00402DB0    pop         ecx
 00402DB1    pop         ecx
 00402DB2    mov         dword ptr fs:[eax],edx
 00402DB5    push        402DD5
 00402DBA    cmp         byte ptr ds:[56F04D],0;gvar_0056F04D
>00402DC1    je          00402DCD
 00402DC3    push        56F5CC
 00402DC8    call        kernel32.LeaveCriticalSection
 00402DCD    ret
>00402DCE    jmp         @HandleFinally
>00402DD3    jmp         00402DBA
 00402DD5    pop         esi
 00402DD6    pop         ebx
 00402DD7    mov         esp,ebp
 00402DD9    pop         ebp
 00402DDA    ret
end;*}

//00402DDC
function @GetMem(size:Integer):Pointer;
begin
{*
 00402DDC    push        ebx
 00402DDD    push        ecx
 00402DDE    mov         ebx,eax
 00402DE0    test        ebx,ebx
>00402DE2    jle         00402DFE
 00402DE4    mov         eax,ebx
 00402DE6    call        dword ptr ds:[56B040]
 00402DEC    mov         dword ptr [esp],eax
 00402DEF    cmp         dword ptr [esp],0
>00402DF3    jne         00402E03
 00402DF5    mov         al,1
 00402DF7    call        Error
>00402DFC    jmp         00402E03
 00402DFE    xor         eax,eax
 00402E00    mov         dword ptr [esp],eax
 00402E03    mov         eax,dword ptr [esp]
 00402E06    pop         edx
 00402E07    pop         ebx
 00402E08    ret
*}
end;

//00402E0C
function @FreeMem(p:Pointer):Integer;
begin
{*
 00402E0C    push        ebx
 00402E0D    test        eax,eax
>00402E0F    je          00402E26
 00402E11    call        dword ptr ds:[56B044]
 00402E17    mov         ebx,eax
 00402E19    test        ebx,ebx
>00402E1B    je          00402E28
 00402E1D    mov         al,2
 00402E1F    call        Error
>00402E24    jmp         00402E28
 00402E26    xor         ebx,ebx
 00402E28    mov         eax,ebx
 00402E2A    pop         ebx
 00402E2B    ret
*}
end;

//00402E2C
function @ReallocMem(var P:Pointer; NewSize:Integer):Pointer;
begin
{*
 00402E2C    mov         ecx,dword ptr [eax]
 00402E2E    test        ecx,ecx
>00402E30    je          00402E64
 00402E32    test        edx,edx
>00402E34    je          00402E4E
 00402E36    push        eax
 00402E37    mov         eax,ecx
 00402E39    call        dword ptr ds:[56B048]
 00402E3F    pop         ecx
 00402E40    or          eax,eax
>00402E42    je          00402E5D
 00402E44    mov         dword ptr [ecx],eax
 00402E46    ret
 00402E47    mov         al,2
>00402E49    jmp         Error
 00402E4E    mov         dword ptr [eax],edx
 00402E50    mov         eax,ecx
 00402E52    call        dword ptr ds:[56B044]
 00402E58    or          eax,eax
>00402E5A    jne         00402E47
 00402E5C    ret
 00402E5D    mov         al,1
>00402E5F    jmp         Error
 00402E64    test        edx,edx
>00402E66    je          00402E78
 00402E68    push        eax
 00402E69    mov         eax,edx
 00402E6B    call        dword ptr ds:[56B040]
 00402E71    pop         ecx
 00402E72    or          eax,eax
>00402E74    je          00402E5D
 00402E76    mov         dword ptr [ecx],eax
 00402E78    ret
*}
end;

//00402E7C
procedure GetMemoryManager(var MemMgr:TMemoryManager);
begin
{*
 00402E7C    mov         edx,dword ptr ds:[56B040];^SysGetMem:Pointer
 00402E82    mov         dword ptr [eax],edx
 00402E84    mov         edx,dword ptr ds:[56B044];^SysFreeMem:Integer
 00402E8A    mov         dword ptr [eax+4],edx
 00402E8D    mov         edx,dword ptr ds:[56B048];^SysReallocMem:Pointer
 00402E93    mov         dword ptr [eax+8],edx
 00402E96    ret
*}
end;

//00402E98
procedure SetMemoryManager(const MemMgr:TMemoryManager);
begin
{*
 00402E98    mov         edx,dword ptr [eax]
 00402E9A    mov         dword ptr ds:[56B040],edx;^SysGetMem:Pointer
 00402EA0    mov         edx,dword ptr [eax+4]
 00402EA3    mov         dword ptr ds:[56B044],edx;^SysFreeMem:Integer
 00402EA9    mov         edx,dword ptr [eax+8]
 00402EAC    mov         dword ptr ds:[56B048],edx;^SysReallocMem:Pointer
 00402EB2    ret
*}
end;

//00402EB4
function IsMemoryManagerSet:Boolean;
begin
{*
 00402EB4    mov         eax,402488;SysGetMem:Pointer
 00402EB9    cmp         eax,dword ptr ds:[56B040];^SysGetMem:Pointer
>00402EBF    jne         00402EDE
 00402EC1    mov         eax,402634;SysFreeMem:Integer
 00402EC6    cmp         eax,dword ptr ds:[56B044];^SysFreeMem:Integer
>00402ECC    jne         00402EDE
 00402ECE    mov         eax,402A10;SysReallocMem:Pointer
 00402ED3    cmp         eax,dword ptr ds:[56B048];^SysReallocMem:Pointer
>00402ED9    jne         00402EDE
 00402EDB    xor         eax,eax
 00402EDD    ret
 00402EDE    mov         al,1
 00402EE0    ret
*}
end;

//00402EE4
function ExceptObject:TObject;
begin
{*
 00402EE4    call        @GetTls
 00402EE9    cmp         dword ptr [eax+0],0;{RaiseListPtr:Pointer}
>00402EF0    je          00402F01
 00402EF2    call        @GetTls
 00402EF7    mov         eax,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00402EFD    mov         eax,dword ptr [eax+8]
 00402F00    ret
 00402F01    xor         eax,eax
 00402F03    ret
*}
end;

//00402F04
{*function sub_00402F04:?;
begin
 00402F04    push        ecx
 00402F05    call        @GetTls
 00402F0A    cmp         dword ptr [eax+0],0;{threadvar_0}
>00402F11    je          00402F26
 00402F13    call        @GetTls
 00402F18    mov         eax,dword ptr [eax+0];{threadvar_0}
 00402F1E    mov         eax,dword ptr [eax+4]
 00402F21    mov         dword ptr [esp],eax
>00402F24    jmp         00402F2B
 00402F26    xor         eax,eax
 00402F28    mov         dword ptr [esp],eax
 00402F2B    mov         eax,dword ptr [esp]
 00402F2E    pop         edx
 00402F2F    ret
end;*}

//00402F30
{*function sub_00402F30:?;
begin
 00402F30    push        ecx
 00402F31    call        @GetTls
 00402F36    cmp         dword ptr [eax+0],0;{threadvar_0}
>00402F3D    je          00402F62
 00402F3F    call        @GetTls
 00402F44    mov         eax,dword ptr [eax+0];{threadvar_0}
 00402F4A    mov         eax,dword ptr [eax+8]
 00402F4D    mov         dword ptr [esp],eax
 00402F50    call        @GetTls
 00402F55    mov         eax,dword ptr [eax+0];{threadvar_0}
 00402F5B    xor         edx,edx
 00402F5D    mov         dword ptr [eax+8],edx
>00402F60    jmp         00402F67
 00402F62    xor         eax,eax
 00402F64    mov         dword ptr [esp],eax
 00402F67    mov         eax,dword ptr [esp]
 00402F6A    pop         edx
 00402F6B    ret
end;*}

//00402F6C
procedure RunErrorAt(ErrCode:Integer; ErrorAtAddr:Pointer);
begin
{*
 00402F6C    mov         dword ptr ds:[56B004],edx
 00402F72    call        @Halt
 00402F77    ret
*}
end;

//00402F78
procedure ErrorAt(ErrorCode:Byte; ErrorAddr:Pointer);
begin
{*
 00402F78    push        ebx
 00402F79    push        esi
 00402F7A    mov         esi,edx
 00402F7C    mov         ebx,eax
 00402F7E    and         bl,7F
 00402F81    cmp         dword ptr ds:[56F008],0;ErrorProc:procedure(val ErrorCode:Byte;val ErrorAddr:Pointer)
>00402F88    je          00402F94
 00402F8A    mov         edx,esi
 00402F8C    mov         eax,ebx
 00402F8E    call        dword ptr ds:[56F008]
 00402F94    test        bl,bl
>00402F96    jne         00402FA5
 00402F98    call        @GetTls
 00402F9D    mov         ebx,dword ptr [eax+4];{InOutRes:Integer}
>00402FA3    jmp         00402FB4
 00402FA5    cmp         bl,18
>00402FA8    ja          00402FB4
 00402FAA    xor         eax,eax
 00402FAC    mov         al,bl
 00402FAE    mov         bl,byte ptr [eax+56B04C]
 00402FB4    xor         eax,eax
 00402FB6    mov         al,bl
 00402FB8    mov         edx,esi
 00402FBA    call        RunErrorAt
 00402FBF    pop         esi
 00402FC0    pop         ebx
 00402FC1    ret
*}
end;

//00402FC4
procedure Error(errorCode:TRuntimeError);
begin
{*
 00402FC4    and         eax,7F
 00402FC7    mov         edx,dword ptr [esp]
>00402FCA    jmp         ErrorAt
 00402FCF    ret
*}
end;

//00402FD0
procedure @_IOTest;
begin
{*
 00402FD0    push        eax
 00402FD1    push        edx
 00402FD2    push        ecx
 00402FD3    call        @GetTls
 00402FD8    cmp         dword ptr [eax+4],0;{InOutRes:Integer}
 00402FDF    pop         ecx
 00402FE0    pop         edx
 00402FE1    pop         eax
>00402FE2    jne         00402FE5
 00402FE4    ret
 00402FE5    xor         eax,eax
>00402FE7    jmp         Error
 00402FEC    ret
*}
end;

//00402FF0
procedure SetInOutRes(NewValue:Integer);
begin
{*
 00402FF0    push        ebx
 00402FF1    mov         ebx,eax
 00402FF3    call        @GetTls
 00402FF8    mov         dword ptr [eax+4],ebx;{InOutRes:Integer}
 00402FFE    pop         ebx
 00402FFF    ret
*}
end;

//00403000
procedure InOutError;
begin
{*
 00403000    call        kernel32.GetLastError
 00403005    call        SetInOutRes
 0040300A    ret
*}
end;

//0040300C
procedure @Copy(S:ShortString; Index:Integer; Count:Integer; Result:ShortString);
begin
{*
 0040300C    push        esi
 0040300D    push        edi
 0040300E    mov         esi,eax
 00403010    mov         edi,dword ptr [esp+0C]
 00403014    xor         eax,eax
 00403016    or          al,byte ptr [esi]
>00403018    je          00403045
 0040301A    test        edx,edx
>0040301C    jle         00403036
 0040301E    cmp         edx,eax
>00403020    jg          0040303D
 00403022    sub         eax,edx
 00403024    inc         eax
 00403025    test        ecx,ecx
>00403027    jl          0040303D
 00403029    cmp         ecx,eax
>0040302B    jg          00403041
 0040302D    add         esi,edx
 0040302F    mov         byte ptr [edi],cl
 00403031    inc         edi
 00403032    rep movs    byte ptr [edi],byte ptr [esi]
>00403034    jmp         00403047
 00403036    mov         edx,1
>0040303B    jmp         00403022
 0040303D    xor         ecx,ecx
>0040303F    jmp         0040302D
 00403041    mov         ecx,eax
>00403043    jmp         0040302D
 00403045    mov         byte ptr [edi],al
 00403047    pop         edi
 00403048    pop         esi
 00403049    ret         4
*}
end;

//00403050
function IOResult:Integer;
begin
{*
 00403050    push        ebx
 00403051    call        @GetTls
 00403056    mov         ebx,dword ptr [eax+4];{InOutRes:Integer}
 0040305C    call        @GetTls
 00403061    xor         edx,edx
 00403063    mov         dword ptr [eax+4],edx;{InOutRes:Integer}
 00403069    mov         eax,ebx
 0040306B    pop         ebx
 0040306C    ret
*}
end;

//00403070
procedure Move(const Source:void ; var Dest:void ; Count:Integer);
begin
{*
 00403070    push        esi
 00403071    push        edi
 00403072    mov         esi,eax
 00403074    mov         edi,edx
 00403076    mov         eax,ecx
 00403078    cmp         edi,esi
>0040307A    ja          0040308F
>0040307C    je          004030AD
 0040307E    sar         ecx,2
>00403081    js          004030AD
 00403083    rep movs    dword ptr [edi],dword ptr [esi]
 00403085    mov         ecx,eax
 00403087    and         ecx,3
 0040308A    rep movs    byte ptr [edi],byte ptr [esi]
 0040308C    pop         edi
 0040308D    pop         esi
 0040308E    ret
 0040308F    lea         esi,[ecx+esi-4]
 00403093    lea         edi,[ecx+edi-4]
 00403097    sar         ecx,2
>0040309A    js          004030AD
 0040309C    std
 0040309D    rep movs    dword ptr [edi],dword ptr [esi]
 0040309F    mov         ecx,eax
 004030A1    and         ecx,3
 004030A4    add         esi,3
 004030A7    add         edi,3
 004030AA    rep movs    byte ptr [edi],byte ptr [esi]
 004030AC    cld
 004030AD    pop         edi
 004030AE    pop         esi
 004030AF    ret
*}
end;

//004030B0
{*function sub_004030B0(?:?; ?:?):?;
begin
 004030B0    push        ebx
 004030B1    push        esi
 004030B2    push        edi
 004030B3    push        ebp
 004030B4    add         esp,0FFFFFFE8
 004030B7    mov         dword ptr [esp+4],edx
 004030BB    mov         dword ptr [esp],eax
 004030BE    mov         esi,esp
 004030C0    lea         edi,[esp+14]
>004030C4    jmp         004030D0
 004030C6    mov         eax,dword ptr [esi]
 004030C8    push        eax
 004030C9    call        user32.CharNextA
 004030CE    mov         dword ptr [esi],eax
 004030D0    mov         eax,dword ptr [esi]
 004030D2    mov         bl,byte ptr [eax]
 004030D4    test        bl,bl
>004030D6    je          004030DD
 004030D8    cmp         bl,20
>004030DB    jbe         004030C6
 004030DD    mov         eax,dword ptr [esi]
 004030DF    cmp         byte ptr [eax],22
>004030E2    jne         004030F1
 004030E4    mov         eax,dword ptr [esi]
 004030E6    cmp         byte ptr [eax+1],22
>004030EA    jne         004030F1
 004030EC    add         dword ptr [esi],2
>004030EF    jmp         004030D0
 004030F1    xor         ebp,ebp
 004030F3    mov         eax,dword ptr [esi]
 004030F5    mov         dword ptr [esp+0C],eax
>004030F9    jmp         00403156
 004030FB    mov         eax,dword ptr [esi]
 004030FD    cmp         byte ptr [eax],22
>00403100    jne         00403142
 00403102    mov         eax,dword ptr [esi]
 00403104    push        eax
 00403105    call        user32.CharNextA
 0040310A    mov         dword ptr [esi],eax
>0040310C    jmp         00403122
 0040310E    mov         eax,dword ptr [esi]
 00403110    push        eax
 00403111    call        user32.CharNextA
 00403116    mov         dword ptr [edi],eax
 00403118    mov         eax,dword ptr [edi]
 0040311A    sub         eax,dword ptr [esi]
 0040311C    add         ebp,eax
 0040311E    mov         eax,dword ptr [edi]
 00403120    mov         dword ptr [esi],eax
 00403122    mov         eax,dword ptr [esi]
 00403124    mov         bl,byte ptr [eax]
 00403126    test        bl,bl
>00403128    je          0040312F
 0040312A    cmp         bl,22
>0040312D    jne         0040310E
 0040312F    mov         eax,dword ptr [esi]
 00403131    cmp         byte ptr [eax],0
>00403134    je          00403156
 00403136    mov         eax,dword ptr [esi]
 00403138    push        eax
 00403139    call        user32.CharNextA
 0040313E    mov         dword ptr [esi],eax
>00403140    jmp         00403156
 00403142    mov         eax,dword ptr [esi]
 00403144    push        eax
 00403145    call        user32.CharNextA
 0040314A    mov         dword ptr [edi],eax
 0040314C    mov         eax,dword ptr [edi]
 0040314E    sub         eax,dword ptr [esi]
 00403150    add         ebp,eax
 00403152    mov         eax,dword ptr [edi]
 00403154    mov         dword ptr [esi],eax
 00403156    mov         eax,dword ptr [esi]
 00403158    cmp         byte ptr [eax],20
>0040315B    ja          004030FB
 0040315D    mov         eax,dword ptr [esp+4]
 00403161    mov         edx,ebp
 00403163    call        @LStrSetLength
 00403168    mov         eax,dword ptr [esp+0C]
 0040316C    mov         dword ptr [esi],eax
 0040316E    mov         eax,dword ptr [esp+4]
 00403172    mov         eax,dword ptr [eax]
 00403174    mov         dword ptr [esp+10],eax
 00403178    xor         ebp,ebp
>0040317A    jmp         004031F7
 0040317C    mov         eax,dword ptr [esi]
 0040317E    cmp         byte ptr [eax],22
>00403181    jne         004031D3
 00403183    mov         eax,dword ptr [esi]
 00403185    push        eax
 00403186    call        user32.CharNextA
 0040318B    mov         dword ptr [esi],eax
>0040318D    jmp         004031B3
 0040318F    mov         eax,dword ptr [esi]
 00403191    push        eax
 00403192    call        user32.CharNextA
 00403197    mov         dword ptr [edi],eax
 00403199    mov         eax,dword ptr [esi]
 0040319B    cmp         eax,dword ptr [edi]
>0040319D    jae         004031B3
 0040319F    mov         eax,dword ptr [esi]
 004031A1    mov         al,byte ptr [eax]
 004031A3    mov         edx,dword ptr [esp+10]
 004031A7    mov         byte ptr [edx+ebp],al
 004031AA    inc         dword ptr [esi]
 004031AC    inc         ebp
 004031AD    mov         eax,dword ptr [esi]
 004031AF    cmp         eax,dword ptr [edi]
>004031B1    jb          0040319F
 004031B3    mov         eax,dword ptr [esi]
 004031B5    mov         bl,byte ptr [eax]
 004031B7    test        bl,bl
>004031B9    je          004031C0
 004031BB    cmp         bl,22
>004031BE    jne         0040318F
 004031C0    mov         eax,dword ptr [esi]
 004031C2    cmp         byte ptr [eax],0
>004031C5    je          004031F7
 004031C7    mov         eax,dword ptr [esi]
 004031C9    push        eax
 004031CA    call        user32.CharNextA
 004031CF    mov         dword ptr [esi],eax
>004031D1    jmp         004031F7
 004031D3    mov         eax,dword ptr [esi]
 004031D5    push        eax
 004031D6    call        user32.CharNextA
 004031DB    mov         dword ptr [edi],eax
 004031DD    mov         eax,dword ptr [esi]
 004031DF    cmp         eax,dword ptr [edi]
>004031E1    jae         004031F7
 004031E3    mov         eax,dword ptr [esi]
 004031E5    mov         al,byte ptr [eax]
 004031E7    mov         edx,dword ptr [esp+10]
 004031EB    mov         byte ptr [edx+ebp],al
 004031EE    inc         dword ptr [esi]
 004031F0    inc         ebp
 004031F1    mov         eax,dword ptr [esi]
 004031F3    cmp         eax,dword ptr [edi]
>004031F5    jb          004031E3
 004031F7    mov         eax,dword ptr [esi]
 004031F9    cmp         byte ptr [eax],20
>004031FC    ja          0040317C
 00403202    mov         eax,dword ptr [esi]
 00403204    mov         dword ptr [esp+8],eax
 00403208    mov         eax,dword ptr [esp+8]
 0040320C    add         esp,18
 0040320F    pop         ebp
 00403210    pop         edi
 00403211    pop         esi
 00403212    pop         ebx
 00403213    ret
end;*}

//00403214
{*procedure sub_00403214(?:?; ?:?);
begin
 00403214    push        ebx
 00403215    push        esi
 00403216    add         esp,0FFFFFEF4
 0040321C    mov         ebx,edx
 0040321E    mov         esi,eax
 00403220    mov         eax,ebx
 00403222    call        @LStrClr
 00403227    test        esi,esi
>00403229    jne         0040324B
 0040322B    push        105
 00403230    lea         eax,[esp+8]
 00403234    push        eax
 00403235    push        0
 00403237    call        kernel32.GetModuleFileNameA
 0040323C    mov         ecx,eax
 0040323E    lea         edx,[esp+4]
 00403242    mov         eax,ebx
 00403244    call        @LStrFromPCharLen
>00403249    jmp         0040326C
 0040324B    call        kernel32.GetCommandLineA
 00403250    mov         dword ptr [esp],eax
 00403253    mov         edx,ebx
 00403255    mov         eax,dword ptr [esp]
 00403258    call        004030B0
 0040325D    mov         dword ptr [esp],eax
 00403260    test        esi,esi
>00403262    je          0040326C
 00403264    cmp         dword ptr [ebx],0
>00403267    je          0040326C
 00403269    dec         esi
>0040326A    jmp         00403253
 0040326C    add         esp,10C
 00403272    pop         esi
 00403273    pop         ebx
 00403274    ret
end;*}

//00403278
function UpCase(Ch:Char):Char;
begin
{*
 00403278    cmp         al,61
>0040327A    jb          00403282
 0040327C    cmp         al,7A
>0040327E    ja          00403282
 00403280    sub         al,20
 00403282    ret
*}
end;

//00403284
procedure Set8087CW(NewCW:Word);
begin
{*
 00403284    mov         [0056B020],ax
 0040328A    fnclex
 0040328C    fldcw       word ptr ds:[56B020]
 00403292    ret
*}
end;

//00403294
{*function sub_00403294:?;
begin
 00403294    push        0
 00403296    fnstcw      word ptr [esp]
 00403299    pop         eax
 0040329A    ret
end;*}

//0040329C
procedure @COS;
begin
{*
 0040329C    fcos
 0040329E    fnstsw      al
 004032A0    sahf
>004032A1    jp          004032A4
 004032A3    ret
 004032A4    fstp        st(0)
 004032A6    fldz
 004032A8    ret
*}
end;

//004032AC
procedure @EXP;
begin
{*
 004032AC    fldl2e
 004032AE    fmulp       st(1),st
 004032B0    fld         st(0)
 004032B2    frndint
 004032B4    fsub        st(1),st
 004032B6    fxch        st(1)
 004032B8    f2xm1
 004032BA    fld1
 004032BC    faddp       st(1),st
 004032BE    fscale
 004032C0    fstp        st(1)
 004032C2    ret
*}
end;

//004032C4
procedure @SIN;
begin
{*
 004032C4    fsin
 004032C6    fnstsw      al
 004032C8    sahf
>004032C9    jp          004032CC
 004032CB    ret
 004032CC    fstp        st(0)
 004032CE    fldz
 004032D0    ret
*}
end;

//004032D4
procedure @FRAC;
begin
{*
 004032D4    fld         st(0)
 004032D6    sub         esp,4
 004032D9    fnstcw      word ptr [esp]
 004032DC    fnstcw      word ptr [esp+2]
 004032E0    wait
 004032E1    or          word ptr [esp+2],0F00
 004032E8    fldcw       word ptr [esp+2]
 004032EC    frndint
 004032EE    wait
 004032EF    fldcw       word ptr [esp]
 004032F2    add         esp,4
 004032F5    fsubp       st(1),st
 004032F7    ret
*}
end;

//004032F8
procedure @ROUND;
begin
{*
 004032F8    sub         esp,8
 004032FB    fistp       qword ptr [esp]
 004032FE    wait
 004032FF    pop         eax
 00403300    pop         edx
 00403301    ret
*}
end;

//00403304
function @TRUNC(X:Extended):Int64;
begin
{*
 00403304    sub         esp,0C
 00403307    fnstcw      word ptr [esp]
 0040330A    fnstcw      word ptr [esp+2]
 0040330E    wait
 0040330F    or          word ptr [esp+2],0F00
 00403316    fldcw       word ptr [esp+2]
 0040331A    fistp       qword ptr [esp+4]
 0040331E    wait
 0040331F    fldcw       word ptr [esp]
 00403322    pop         ecx
 00403323    pop         eax
 00403324    pop         edx
 00403325    ret
*}
end;

//00403328
procedure @AbstractError;
begin
{*
 00403328    cmp         dword ptr ds:[56F02C],0;AbstractErrorProc:procedure
>0040332F    je          00403337
 00403331    call        dword ptr ds:[56F02C]
 00403337    mov         eax,0D2
>0040333C    jmp         @RunError
 00403341    ret
*}
end;

//00403344
function OpenText(var t:TTextRec; Mode:Word):Integer;
begin
{*
 00403344    push        ebx
 00403345    push        esi
 00403346    mov         esi,edx
 00403348    mov         ebx,eax
 0040334A    mov         ax,word ptr [ebx+4]
 0040334E    cmp         ax,0D7B0
>00403352    jb          0040335A
 00403354    cmp         ax,0D7B3
>00403358    jbe         00403361
 0040335A    mov         ebx,66
>0040335F    jmp         0040338C
 00403361    cmp         ax,0D7B0
>00403365    je          0040336E
 00403367    mov         eax,ebx
 00403369    call        @Close
 0040336E    mov         word ptr [ebx+4],si
 00403372    cmp         byte ptr [ebx+48],0
>00403376    jne         00403385
 00403378    cmp         dword ptr [ebx+18],0
>0040337C    jne         00403385
 0040337E    mov         dword ptr [ebx+18],403454;TextOpen:Integer
 00403385    mov         eax,ebx
 00403387    call        dword ptr [ebx+18]
 0040338A    mov         ebx,eax
 0040338C    test        ebx,ebx
>0040338E    je          00403397
 00403390    mov         eax,ebx
 00403392    call        SetInOutRes
 00403397    mov         eax,ebx
 00403399    pop         esi
 0040339A    pop         ebx
 0040339B    ret
*}
end;

//0040339C
function @RewritText(var T:TTextRec):Integer;
begin
{*
 0040339C    mov         dx,0D7B2
 004033A0    call        OpenText
 004033A5    ret
*}
end;

//004033A8
function TextIn(var t:TTextRec):Integer;
begin
{*
 004033A8    push        ebx
 004033A9    mov         ebx,eax
 004033AB    xor         eax,eax
 004033AD    mov         dword ptr [ebx+10],eax
 004033B0    xor         eax,eax
 004033B2    mov         dword ptr [ebx+0C],eax
 004033B5    push        0
 004033B7    lea         eax,[ebx+10]
 004033BA    push        eax
 004033BB    mov         eax,dword ptr [ebx+8]
 004033BE    push        eax
 004033BF    mov         eax,dword ptr [ebx+14]
 004033C2    push        eax
 004033C3    mov         eax,dword ptr [ebx]
 004033C5    push        eax
 004033C6    call        kernel32.ReadFile
 004033CB    test        eax,eax
>004033CD    jne         004033DD
 004033CF    call        kernel32.GetLastError
 004033D4    cmp         eax,6D
>004033D7    jne         004033DF
 004033D9    xor         eax,eax
 004033DB    pop         ebx
 004033DC    ret
 004033DD    xor         eax,eax
 004033DF    pop         ebx
 004033E0    ret
*}
end;

//004033E4
function FileNOPProc(var t:void ):Integer;
begin
{*
 004033E4    xor         eax,eax
 004033E6    ret
*}
end;

//004033E8
function TextOut(var t:TTextRec):Integer;
begin
{*
 004033E8    push        ebx
 004033E9    push        esi
 004033EA    push        ecx
 004033EB    mov         ebx,eax
 004033ED    mov         esi,dword ptr [ebx+0C]
 004033F0    test        esi,esi
>004033F2    jne         004033F8
 004033F4    xor         eax,eax
>004033F6    jmp         0040341E
 004033F8    push        0
 004033FA    lea         eax,[esp+4]
 004033FE    push        eax
 004033FF    push        esi
 00403400    mov         eax,dword ptr [ebx+14]
 00403403    push        eax
 00403404    mov         eax,dword ptr [ebx]
 00403406    push        eax
 00403407    call        kernel32.WriteFile
 0040340C    test        eax,eax
>0040340E    jne         00403417
 00403410    call        kernel32.GetLastError
>00403415    jmp         00403419
 00403417    xor         eax,eax
 00403419    xor         edx,edx
 0040341B    mov         dword ptr [ebx+0C],edx
 0040341E    pop         edx
 0040341F    pop         esi
 00403420    pop         ebx
 00403421    ret
*}
end;

//00403424
function InternalClose(Handle:Integer):Boolean;
begin
{*
 00403424    push        ebx
 00403425    mov         ebx,eax
 00403427    push        ebx
 00403428    call        kernel32.CloseHandle
 0040342D    dec         eax
 0040342E    sete        al
 00403431    pop         ebx
 00403432    ret
*}
end;

//00403434
function TextClose(var t:TTextRec):Integer;
begin
{*
 00403434    push        ebx
 00403435    mov         ebx,eax
 00403437    mov         word ptr [ebx+4],0D7B0
 0040343D    mov         eax,dword ptr [ebx]
 0040343F    call        InternalClose
 00403444    test        al,al
>00403446    jne         0040344F
 00403448    call        kernel32.GetLastError
 0040344D    pop         ebx
 0040344E    ret
 0040344F    xor         eax,eax
 00403451    pop         ebx
 00403452    ret
*}
end;

//00403454
function TextOpen(var t:TTextRec):Integer;
begin
{*
 00403454    push        esi
 00403455    mov         esi,eax
 00403457    xor         eax,eax
 00403459    mov         dword ptr [esi+0C],eax
 0040345C    mov         dword ptr [esi+10],eax
 0040345F    mov         ax,word ptr [esi+4]
 00403463    sub         eax,0D7B1
>00403468    je          00403475
 0040346A    dec         eax
>0040346B    je          0040348D
 0040346D    dec         eax
>0040346E    je          0040349E
>00403470    jmp         004035DC
 00403475    mov         eax,80000000
 0040347A    mov         edx,1
 0040347F    mov         ecx,3
 00403484    mov         dword ptr [esi+1C],4033A8;TextIn:Integer
>0040348B    jmp         004034B4
 0040348D    mov         eax,40000000
 00403492    mov         edx,1
 00403497    mov         ecx,2
>0040349C    jmp         004034AD
 0040349E    mov         eax,0C0000000
 004034A3    mov         edx,1
 004034A8    mov         ecx,3
 004034AD    mov         dword ptr [esi+1C],4033E8;TextOut:Integer
 004034B4    mov         dword ptr [esi+24],403434;TextClose:Integer
 004034BB    mov         dword ptr [esi+20],4033E4;FileNOPProc:Integer
 004034C2    cmp         byte ptr [esi+48],0
>004034C6    je          0040357E
 004034CC    push        0
 004034CE    push        80
 004034D3    push        ecx
 004034D4    push        0
 004034D6    push        edx
 004034D7    push        eax
 004034D8    lea         eax,[esi+48]
 004034DB    push        eax
 004034DC    call        kernel32.CreateFileA
 004034E1    cmp         eax,0FFFFFFFF
>004034E4    je          004035F2
 004034EA    mov         dword ptr [esi],eax
 004034EC    cmp         word ptr [esi+4],0D7B3
>004034F2    jne         004035BB
 004034F8    dec         word ptr [esi+4]
 004034FC    push        0
 004034FE    push        dword ptr [esi]
 00403500    call        kernel32.GetFileSize
 00403505    inc         eax
>00403506    je          004035F2
 0040350C    sub         eax,81
>00403511    jae         00403515
 00403513    xor         eax,eax
 00403515    push        0
 00403517    push        0
 00403519    push        eax
 0040351A    push        dword ptr [esi]
 0040351C    call        kernel32.SetFilePointer
 00403521    inc         eax
>00403522    je          004035F2
 00403528    push        0
 0040352A    mov         edx,esp
 0040352C    push        0
 0040352E    push        edx
 0040352F    push        80
 00403534    lea         edx,[esi+14C]
 0040353A    push        edx
 0040353B    push        dword ptr [esi]
 0040353D    call        kernel32.ReadFile
 00403542    pop         edx
 00403543    dec         eax
>00403544    jne         004035F2
 0040354A    xor         eax,eax
 0040354C    cmp         eax,edx
>0040354E    jae         004035BB
 00403550    cmp         byte ptr [esi+eax+14C],0E
>00403558    je          0040355D
 0040355A    inc         eax
>0040355B    jmp         0040354C
 0040355D    push        2
 0040355F    push        0
 00403561    sub         eax,edx
 00403563    push        eax
 00403564    push        dword ptr [esi]
 00403566    call        kernel32.SetFilePointer
 0040356B    inc         eax
>0040356C    je          004035F2
 00403572    push        dword ptr [esi]
 00403574    call        kernel32.SetEndOfFile
 00403579    dec         eax
>0040357A    jne         004035F2
>0040357C    jmp         004035BB
 0040357E    lea         eax,[esi+14C]
 00403584    mov         dword ptr [esi+8],80
 0040358B    mov         dword ptr [esi+24],4033E4;FileNOPProc:Integer
 00403592    mov         dword ptr [esi+14],eax
 00403595    cmp         word ptr [esi+4],0D7B2
>0040359B    je          004035A1
 0040359D    push        0F6
>0040359F    jmp         004035AF
 004035A1    cmp         esi,56F3E8;ErrOutput:Text
>004035A7    jne         004035AD
 004035A9    push        0F4
>004035AB    jmp         004035AF
 004035AD    push        0F5
 004035AF    call        kernel32.GetStdHandle
 004035B4    cmp         eax,0FFFFFFFF
>004035B7    je          004035F2
 004035B9    mov         dword ptr [esi],eax
 004035BB    cmp         word ptr [esi+4],0D7B1
>004035C1    je          004035DA
 004035C3    push        dword ptr [esi]
 004035C5    call        kernel32.GetFileType
 004035CA    test        eax,eax
>004035CC    je          004035DE
 004035CE    cmp         eax,2
>004035D1    jne         004035DA
 004035D3    mov         dword ptr [esi+20],4033E8;TextOut:Integer
 004035DA    xor         eax,eax
 004035DC    pop         esi
 004035DD    ret
 004035DE    push        dword ptr [esi]
 004035E0    call        kernel32.CloseHandle
 004035E5    mov         word ptr [esi+4],0D7B0
 004035EB    mov         eax,69
>004035F0    jmp         004035DC
 004035F2    mov         word ptr [esi+4],0D7B0
 004035F8    call        kernel32.GetLastError
>004035FD    jmp         004035DC
 004035FF    ret
*}
end;

//00403600
function @Assign(var F:TFileRec; S:AnsiString):Integer;
begin
{*
 00403600    push        ebx
 00403601    push        esi
 00403602    mov         esi,edx
 00403604    mov         ebx,eax
 00403606    mov         eax,ebx
 00403608    xor         ecx,ecx
 0040360A    mov         edx,14C
 0040360F    call        @FillChar
 00403614    lea         eax,[ebx+14C]
 0040361A    mov         dword ptr [ebx+14],eax
 0040361D    mov         word ptr [ebx+4],0D7B0
 00403623    xor         eax,eax
 00403625    mov         al,[0056B034]
 0040362A    mov         word ptr [ebx+6],ax
 0040362E    mov         dword ptr [ebx+8],80
 00403635    mov         dword ptr [ebx+18],403454;TextOpen:Integer
 0040363C    mov         eax,esi
 0040363E    call        @LStrLen
 00403643    push        eax
 00403644    mov         eax,esi
 00403646    call        @LStrToPChar
 0040364B    lea         edx,[ebx+48]
 0040364E    pop         ecx
 0040364F    call        Move
 00403654    mov         eax,esi
 00403656    call        @LStrLen
 0040365B    mov         byte ptr [ebx+eax+48],0
 00403660    xor         eax,eax
 00403662    pop         esi
 00403663    pop         ebx
 00403664    ret
*}
end;

//00403668
function InternalFlush(var t:TTextRec; Func:TTextIOFunc):Integer;
begin
{*
 00403668    push        ebx
 00403669    mov         cx,word ptr [eax+4]
 0040366D    sub         cx,0D7B1
>00403672    je          00403683
 00403674    dec         ecx
 00403675    sub         cx,2
>00403679    jae         00403687
 0040367B    mov         ebx,edx
 0040367D    call        ebx
 0040367F    mov         ebx,eax
>00403681    jmp         0040369E
 00403683    xor         ebx,ebx
>00403685    jmp         0040369E
 00403687    cmp         eax,56F21C;Output:Text
>0040368C    je          00403695
 0040368E    cmp         eax,56F3E8;ErrOutput:Text
>00403693    jne         00403699
 00403695    xor         ebx,ebx
>00403697    jmp         0040369E
 00403699    mov         ebx,67
 0040369E    test        ebx,ebx
>004036A0    je          004036A9
 004036A2    mov         eax,ebx
 004036A4    call        SetInOutRes
 004036A9    mov         eax,ebx
 004036AB    pop         ebx
 004036AC    ret
*}
end;

//004036B0
function Flush(var t:Text):Integer;
begin
{*
 004036B0    mov         edx,dword ptr [eax+1C]
 004036B3    call        InternalFlush
 004036B8    ret
*}
end;

//004036BC
procedure @Flush(var F:TFileRec);
begin
{*
 004036BC    mov         edx,dword ptr [eax+20]
 004036BF    call        InternalFlush
 004036C4    ret
*}
end;

//004036C8
function kernel32.WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;
begin
{*
 004036C8    jmp         dword ptr ds:[61C078]
*}
end;

//004036D0
function BlockIO(var f:TFileRec; buffer:Pointer; recCnt:Cardinal; var recsDone:Integer; ModeMask:Integer; IOProc:TIOProc; ErrorNo:Integer):Cardinal;
begin
{*
 004036D0    push        ebp
 004036D1    mov         ebp,esp
 004036D3    push        ecx
 004036D4    push        ebx
 004036D5    push        esi
 004036D6    push        edi
 004036D7    mov         esi,ecx
 004036D9    mov         edi,edx
 004036DB    mov         ebx,eax
 004036DD    mov         eax,dword ptr [ebp+10]
 004036E0    movzx       edx,word ptr [ebx+4]
 004036E4    and         edx,eax
 004036E6    cmp         eax,edx
>004036E8    jne         00403742
 004036EA    push        0
 004036EC    lea         eax,[ebp-4]
 004036EF    push        eax
 004036F0    mov         eax,dword ptr [ebx+8]
 004036F3    imul        esi
 004036F5    push        eax
 004036F6    push        edi
 004036F7    mov         eax,dword ptr [ebx]
 004036F9    push        eax
 004036FA    call        dword ptr [ebp+0C]
 004036FD    test        eax,eax
>004036FF    jne         00403712
 00403701    call        kernel32.GetLastError
 00403706    call        SetInOutRes
 0040370B    xor         eax,eax
 0040370D    mov         dword ptr [ebp-4],eax
>00403710    jmp         00403751
 00403712    mov         eax,dword ptr [ebp-4]
 00403715    xor         edx,edx
 00403717    div         eax,dword ptr [ebx+8]
 0040371A    mov         dword ptr [ebp-4],eax
 0040371D    mov         eax,dword ptr [ebp+14]
 00403720    test        eax,eax
>00403722    je          0040372E
 00403724    mov         eax,dword ptr [ebp+14]
 00403727    mov         edx,dword ptr [ebp-4]
 0040372A    mov         dword ptr [eax],edx
>0040372C    jmp         00403751
 0040372E    cmp         esi,dword ptr [ebp-4]
>00403731    je          00403751
 00403733    mov         eax,dword ptr [ebp+8]
 00403736    call        SetInOutRes
 0040373B    xor         eax,eax
 0040373D    mov         dword ptr [ebp-4],eax
>00403740    jmp         00403751
 00403742    mov         eax,67
 00403747    call        SetInOutRes
 0040374C    xor         eax,eax
 0040374E    mov         dword ptr [ebp-4],eax
 00403751    mov         eax,dword ptr [ebp-4]
 00403754    pop         edi
 00403755    pop         esi
 00403756    pop         ebx
 00403757    pop         ecx
 00403758    pop         ebp
 00403759    ret         10
*}
end;

//0040375C
{*procedure sub_0040375C(?:?);
begin
 0040375C    push        ebp
 0040375D    mov         ebp,esp
 0040375F    push        ebx
 00403760    mov         ebx,dword ptr [ebp+8]
 00403763    push        ebx
 00403764    push        0D7B2
 00403769    push        4036C8;kernel32.WriteFile:Integer
 0040376E    push        65
 00403770    call        BlockIO
 00403775    pop         ebx
 00403776    pop         ebp
 00403777    ret         4
end;*}

//0040377C
procedure @Close(var F:TFileRec);
begin
{*
 0040377C    push        ebx
 0040377D    push        esi
 0040377E    mov         ebx,eax
 00403780    xor         esi,esi
 00403782    mov         ax,word ptr [ebx+4]
 00403786    cmp         ax,0D7B1
>0040378A    jb          004037BB
 0040378C    cmp         ax,0D7B3
>00403790    ja          004037BB
 00403792    and         ax,0D7B2
 00403796    cmp         ax,0D7B2
>0040379A    jne         004037A3
 0040379C    mov         eax,ebx
 0040379E    call        dword ptr [ebx+1C]
 004037A1    mov         esi,eax
 004037A3    test        esi,esi
>004037A5    jne         004037AE
 004037A7    mov         eax,ebx
 004037A9    call        dword ptr [ebx+24]
 004037AC    mov         esi,eax
 004037AE    test        esi,esi
>004037B0    je          004037CD
 004037B2    mov         eax,esi
 004037B4    call        SetInOutRes
>004037B9    jmp         004037CD
 004037BB    cmp         ebx,56F050;Input:Text
>004037C1    je          004037CD
 004037C3    mov         eax,67
 004037C8    call        SetInOutRes
 004037CD    mov         eax,esi
 004037CF    pop         esi
 004037D0    pop         ebx
 004037D1    ret
*}
end;

//004037D4
procedure @PStrNCat(Dest:PShortString; Source:PShortString; MaxLen:Byte);
begin
{*
 004037D4    push        esi
 004037D5    push        edi
 004037D6    mov         edi,eax
 004037D8    xor         eax,eax
 004037DA    mov         al,byte ptr [edi]
 004037DC    mov         esi,edx
 004037DE    xor         edx,edx
 004037E0    mov         dl,byte ptr [esi]
 004037E2    inc         esi
 004037E3    add         al,dl
>004037E5    jb          004037F9
 004037E7    cmp         al,cl
>004037E9    ja          004037F9
 004037EB    mov         ecx,edx
 004037ED    mov         dl,byte ptr [edi]
 004037EF    mov         byte ptr [edi],al
 004037F1    inc         edi
 004037F2    add         edi,edx
 004037F4    rep movs    byte ptr [edi],byte ptr [esi]
 004037F6    pop         edi
 004037F7    pop         esi
 004037F8    ret
 004037F9    mov         al,cl
 004037FB    sub         cl,byte ptr [edi]
>004037FD    jbe         004037F6
 004037FF    mov         dl,cl
>00403801    jmp         004037EB
 00403803    ret
*}
end;

//00403804
procedure @PStrCpy(Dest:PShortString; Source:PShortString);
begin
{*
 00403804    xor         ecx,ecx
 00403806    mov         cl,byte ptr [edx]
 00403808    inc         ecx
 00403809    xchg        eax,edx
 0040380A    call        Move
 0040380F    ret
*}
end;

//00403810
procedure @PStrNCpy(Dest:PShortString; Source:PShortString; MaxLen:Byte);
begin
{*
 00403810    push        ebx
 00403811    mov         bl,byte ptr [edx]
 00403813    cmp         cl,bl
>00403815    jbe         00403819
 00403817    mov         ecx,ebx
 00403819    mov         byte ptr [eax],cl
 0040381B    inc         edx
 0040381C    inc         eax
 0040381D    and         ecx,0FF
 00403823    xchg        eax,edx
 00403824    call        Move
 00403829    pop         ebx
 0040382A    ret
*}
end;

//0040382C
procedure @PStrCmp(S1:PShortString; S2:PShortString);
begin
{*
 0040382C    push        ebx
 0040382D    push        esi
 0040382E    push        edi
 0040382F    mov         esi,eax
 00403831    mov         edi,edx
 00403833    xor         eax,eax
 00403835    xor         edx,edx
 00403837    mov         al,byte ptr [esi]
 00403839    mov         dl,byte ptr [edi]
 0040383B    inc         esi
 0040383C    inc         edi
 0040383D    sub         eax,edx
>0040383F    ja          00403843
 00403841    add         edx,eax
 00403843    push        edx
 00403844    shr         edx,2
>00403847    je          0040386F
 00403849    mov         ecx,dword ptr [esi]
 0040384B    mov         ebx,dword ptr [edi]
 0040384D    cmp         ecx,ebx
>0040384F    jne         00403895
 00403851    dec         edx
>00403852    je          00403869
 00403854    mov         ecx,dword ptr [esi+4]
 00403857    mov         ebx,dword ptr [edi+4]
 0040385A    cmp         ecx,ebx
>0040385C    jne         00403895
 0040385E    add         esi,8
 00403861    add         edi,8
 00403864    dec         edx
>00403865    jne         00403849
>00403867    jmp         0040386F
 00403869    add         esi,4
 0040386C    add         edi,4
 0040386F    pop         edx
 00403870    and         edx,3
>00403873    je          00403891
 00403875    mov         cl,byte ptr [esi]
 00403877    cmp         cl,byte ptr [edi]
>00403879    jne         004038AA
 0040387B    dec         edx
>0040387C    je          00403891
 0040387E    mov         cl,byte ptr [esi+1]
 00403881    cmp         cl,byte ptr [edi+1]
>00403884    jne         004038AA
 00403886    dec         edx
>00403887    je          00403891
 00403889    mov         cl,byte ptr [esi+2]
 0040388C    cmp         cl,byte ptr [edi+2]
>0040388F    jne         004038AA
 00403891    add         eax,eax
>00403893    jmp         004038AA
 00403895    pop         edx
 00403896    cmp         cl,bl
>00403898    jne         004038AA
 0040389A    cmp         ch,bh
>0040389C    jne         004038AA
 0040389E    shr         ecx,10
 004038A1    shr         ebx,10
 004038A4    cmp         cl,bl
>004038A6    jne         004038AA
 004038A8    cmp         ch,bh
 004038AA    pop         edi
 004038AB    pop         esi
 004038AC    pop         ebx
 004038AD    ret
*}
end;

//004038B0
procedure @AStrCmp(S1:PShortString; S2:PShortString; Bytes:Integer);
begin
{*
 004038B0    push        ebx
 004038B1    push        esi
 004038B2    push        ecx
 004038B3    mov         esi,ecx
 004038B5    shr         esi,2
>004038B8    je          004038E0
 004038BA    mov         ecx,dword ptr [eax]
 004038BC    mov         ebx,dword ptr [edx]
 004038BE    cmp         ecx,ebx
>004038C0    jne         00403907
 004038C2    dec         esi
>004038C3    je          004038DA
 004038C5    mov         ecx,dword ptr [eax+4]
 004038C8    mov         ebx,dword ptr [edx+4]
 004038CB    cmp         ecx,ebx
>004038CD    jne         00403907
 004038CF    add         eax,8
 004038D2    add         edx,8
 004038D5    dec         esi
>004038D6    jne         004038BA
>004038D8    jmp         004038E0
 004038DA    add         eax,4
 004038DD    add         edx,4
 004038E0    pop         esi
 004038E1    and         esi,3
>004038E4    je          0040391C
 004038E6    mov         cl,byte ptr [eax]
 004038E8    cmp         cl,byte ptr [edx]
>004038EA    jne         0040391C
 004038EC    dec         esi
>004038ED    je          00403902
 004038EF    mov         cl,byte ptr [eax+1]
 004038F2    cmp         cl,byte ptr [edx+1]
>004038F5    jne         0040391C
 004038F7    dec         esi
>004038F8    je          00403902
 004038FA    mov         cl,byte ptr [eax+2]
 004038FD    cmp         cl,byte ptr [edx+2]
>00403900    jne         0040391C
 00403902    xor         eax,eax
 00403904    pop         esi
 00403905    pop         ebx
 00403906    ret
 00403907    pop         esi
 00403908    cmp         cl,bl
>0040390A    jne         0040391C
 0040390C    cmp         ch,bh
>0040390E    jne         0040391C
 00403910    shr         ecx,10
 00403913    shr         ebx,10
 00403916    cmp         cl,bl
>00403918    jne         0040391C
 0040391A    cmp         ch,bh
 0040391C    pop         esi
 0040391D    pop         ebx
 0040391E    ret
*}
end;

//00403920
procedure @FillChar(var dst:Pointer; cnt:Integer; val:Char);
begin
{*
 00403920    push        edi
 00403921    mov         edi,eax
 00403923    mov         ch,cl
 00403925    mov         eax,ecx
 00403927    shl         eax,10
 0040392A    mov         ax,cx
 0040392D    mov         ecx,edx
 0040392F    sar         ecx,2
>00403932    js          0040393D
 00403934    rep stos    dword ptr [edi]
 00403936    mov         ecx,edx
 00403938    and         ecx,3
 0040393B    rep stos    byte ptr [edi]
 0040393D    pop         edi
 0040393E    ret
*}
end;

//00403940
function @CloseFile(var f:TFileRec):Integer;
begin
{*
 00403940    push        ebx
 00403941    push        esi
 00403942    mov         ebx,eax
 00403944    mov         word ptr [ebx+4],0D7B0
 0040394A    xor         esi,esi
 0040394C    mov         eax,dword ptr [ebx]
 0040394E    call        InternalClose
 00403953    test        al,al
>00403955    jne         00403961
 00403957    call        InOutError
 0040395C    mov         esi,1
 00403961    mov         eax,esi
 00403963    pop         esi
 00403964    pop         ebx
 00403965    ret
*}
end;

//00403968
function OpenFile(var f:TFileRec; recSiz:Integer; mode:Integer):Integer;
begin
{*
 00403968    push        ebx
 00403969    push        esi
 0040396A    push        edi
 0040396B    mov         esi,edx
 0040396D    mov         edi,ecx
 0040396F    xor         edx,edx
 00403971    mov         ebx,eax
 00403973    mov         dx,word ptr [eax+4]
 00403977    sub         edx,0D7B0
>0040397D    je          00403994
 0040397F    cmp         edx,3
>00403982    ja          00403A2A
 00403988    call        dword ptr [ebx+24]
 0040398B    test        eax,eax
>0040398D    je          00403994
 0040398F    call        SetInOutRes
 00403994    mov         word ptr [ebx+4],0D7B3
 0040399A    mov         dword ptr [ebx+8],esi
 0040399D    mov         dword ptr [ebx+24],403940;@CloseFile:Integer
 004039A4    mov         dword ptr [ebx+1C],4033E4;FileNOPProc:Integer
 004039AB    cmp         byte ptr [ebx+48],0
>004039AF    je          00403A11
 004039B1    mov         eax,0C0000000
 004039B6    mov         dl,byte ptr ds:[56B008]
 004039BC    and         edx,70
 004039BF    shr         edx,2
 004039C2    mov         edx,dword ptr [edx+56B068]
 004039C8    mov         ecx,2
 004039CD    sub         edi,3
>004039D0    je          004039F3
 004039D2    mov         ecx,3
 004039D7    inc         edi
>004039D8    je          004039F3
 004039DA    mov         eax,40000000
 004039DF    inc         edi
 004039E0    mov         word ptr [ebx+4],0D7B2
>004039E6    je          004039F3
 004039E8    mov         eax,80000000
 004039ED    mov         word ptr [ebx+4],0D7B1
 004039F3    push        0
 004039F5    push        80
 004039FA    push        ecx
 004039FB    push        0
 004039FD    push        edx
 004039FE    push        eax
 004039FF    lea         eax,[ebx+48]
 00403A02    push        eax
 00403A03    call        kernel32.CreateFileA
 00403A08    cmp         eax,0FFFFFFFF
>00403A0B    je          00403A31
 00403A0D    mov         dword ptr [ebx],eax
>00403A0F    jmp         00403A41
 00403A11    mov         dword ptr [ebx+24],4033E4;FileNOPProc:Integer
 00403A18    cmp         edi,3
>00403A1B    je          00403A21
 00403A1D    push        0F6
>00403A1F    jmp         00403A23
 00403A21    push        0F5
 00403A23    call        kernel32.GetStdHandle
>00403A28    jmp         00403A08
 00403A2A    mov         eax,66
>00403A2F    jmp         00403A3C
 00403A31    mov         word ptr [ebx+4],0D7B0
 00403A37    call        kernel32.GetLastError
 00403A3C    call        SetInOutRes
 00403A41    pop         edi
 00403A42    pop         esi
 00403A43    pop         ebx
 00403A44    ret
*}
end;

//00403A48
function @RewritFile(var F:TFileRec; RecSize:Longint):Integer;
begin
{*
 00403A48    mov         ecx,3
 00403A4D    call        OpenFile
 00403A52    ret
*}
end;

//00403A54
procedure @StrLong(Val:Integer; Width:Integer; S:PShortString);
begin
{*
 00403A54    push        ebx
 00403A55    push        esi
 00403A56    push        edi
 00403A57    push        edx
 00403A58    sub         esp,14
 00403A5B    mov         edi,ecx
 00403A5D    mov         esi,eax
 00403A5F    cdq
 00403A60    xor         eax,edx
 00403A62    sub         eax,edx
 00403A64    mov         ecx,0A
 00403A69    xor         ebx,ebx
 00403A6B    xor         edx,edx
 00403A6D    div         eax,ecx
 00403A6F    add         edx,30
 00403A72    mov         byte ptr [esp+ebx],dl
 00403A75    inc         ebx
 00403A76    test        eax,eax
>00403A78    jne         00403A6B
 00403A7A    test        esi,esi
>00403A7C    jge         00403A83
 00403A7E    mov         byte ptr [esp+ebx],2D
 00403A82    inc         ebx
 00403A83    mov         byte ptr [edi],bl
 00403A85    inc         edi
 00403A86    mov         ecx,dword ptr [esp+14]
 00403A8A    cmp         ecx,0FF
>00403A90    jle         00403A97
 00403A92    mov         ecx,0FF
 00403A97    sub         ecx,ebx
>00403A99    jle         00403AA2
 00403A9B    add         byte ptr [edi-1],cl
 00403A9E    mov         al,20
 00403AA0    rep stos    byte ptr [edi]
 00403AA2    mov         al,byte ptr [esp+ebx-1]
 00403AA6    mov         byte ptr [edi],al
 00403AA8    inc         edi
 00403AA9    dec         ebx
>00403AAA    jne         00403AA2
 00403AAC    add         esp,18
 00403AAF    pop         edi
 00403AB0    pop         esi
 00403AB1    pop         ebx
 00403AB2    ret
*}
end;

//00403AB4
procedure @Str0Long(Val:Longint; S:PShortString);
begin
{*
 00403AB4    mov         ecx,edx
 00403AB6    xor         edx,edx
 00403AB8    call        @StrLong
 00403ABD    ret
*}
end;

//00403AC0
function @ValLong(s:AnsiString; var code:Integer):Longint;
begin
{*
 00403AC0    push        ebx
 00403AC1    push        esi
 00403AC2    push        edi
 00403AC3    mov         esi,eax
 00403AC5    push        eax
 00403AC6    test        eax,eax
>00403AC8    je          00403B36
 00403ACA    xor         eax,eax
 00403ACC    xor         ebx,ebx
 00403ACE    mov         edi,0CCCCCCC
 00403AD3    mov         bl,byte ptr [esi]
 00403AD5    inc         esi
 00403AD6    cmp         bl,20
>00403AD9    je          00403AD3
 00403ADB    mov         ch,0
 00403ADD    cmp         bl,2D
>00403AE0    je          00403B44
 00403AE2    cmp         bl,2B
>00403AE5    je          00403B46
 00403AE7    cmp         bl,24
>00403AEA    je          00403B4B
 00403AEC    cmp         bl,78
>00403AEF    je          00403B4B
 00403AF1    cmp         bl,58
>00403AF4    je          00403B4B
 00403AF6    cmp         bl,30
>00403AF9    jne         00403B0E
 00403AFB    mov         bl,byte ptr [esi]
 00403AFD    inc         esi
 00403AFE    cmp         bl,78
>00403B01    je          00403B4B
 00403B03    cmp         bl,58
>00403B06    je          00403B4B
 00403B08    test        bl,bl
>00403B0A    je          00403B2C
>00403B0C    jmp         00403B12
 00403B0E    test        bl,bl
>00403B10    je          00403B3F
 00403B12    sub         bl,30
 00403B15    cmp         bl,9
>00403B18    ja          00403B3F
 00403B1A    cmp         eax,edi
>00403B1C    ja          00403B3F
 00403B1E    lea         eax,[eax+eax*4]
 00403B21    add         eax,eax
 00403B23    add         eax,ebx
 00403B25    mov         bl,byte ptr [esi]
 00403B27    inc         esi
 00403B28    test        bl,bl
>00403B2A    jne         00403B12
 00403B2C    dec         ch
>00403B2E    je          00403B39
 00403B30    test        eax,eax
>00403B32    jge         00403B88
>00403B34    jmp         00403B3F
 00403B36    inc         esi
>00403B37    jmp         00403B3F
 00403B39    neg         eax
>00403B3B    jle         00403B88
>00403B3D    js          00403B88
 00403B3F    pop         ebx
 00403B40    sub         esi,ebx
>00403B42    jmp         00403B8B
 00403B44    inc         ch
 00403B46    mov         bl,byte ptr [esi]
 00403B48    inc         esi
>00403B49    jmp         00403AE7
 00403B4B    mov         edi,0FFFFFFF
 00403B50    mov         bl,byte ptr [esi]
 00403B52    inc         esi
 00403B53    test        bl,bl
>00403B55    je          00403B36
 00403B57    cmp         bl,61
>00403B5A    jb          00403B5F
 00403B5C    sub         bl,20
 00403B5F    sub         bl,30
 00403B62    cmp         bl,9
>00403B65    jbe         00403B72
 00403B67    sub         bl,11
 00403B6A    cmp         bl,5
>00403B6D    ja          00403B3F
 00403B6F    add         bl,0A
 00403B72    cmp         eax,edi
>00403B74    ja          00403B3F
 00403B76    shl         eax,4
 00403B79    add         eax,ebx
 00403B7B    mov         bl,byte ptr [esi]
 00403B7D    inc         esi
 00403B7E    test        bl,bl
>00403B80    jne         00403B57
 00403B82    dec         ch
>00403B84    jne         00403B88
 00403B86    neg         eax
 00403B88    pop         ecx
 00403B89    xor         esi,esi
 00403B8B    mov         dword ptr [edx],esi
 00403B8D    pop         edi
 00403B8E    pop         esi
 00403B8F    pop         ebx
 00403B90    ret
*}
end;

//00403B94
function TryOpenForOutput(var t:TTextRec):Boolean;
begin
{*
 00403B94    push        ebx
 00403B95    mov         ebx,eax
 00403B97    cmp         ebx,56F21C;Output:Text
>00403B9D    je          00403BA7
 00403B9F    cmp         ebx,56F3E8;ErrOutput:Text
>00403BA5    jne         00403BB9
 00403BA7    xor         eax,eax
 00403BA9    mov         al,[0056B034]
 00403BAE    mov         word ptr [ebx+6],ax
 00403BB2    mov         eax,ebx
 00403BB4    call        @RewritText
 00403BB9    cmp         word ptr [ebx+4],0D7B2
 00403BBF    sete        al
 00403BC2    mov         ebx,eax
 00403BC4    test        bl,bl
>00403BC6    jne         00403BD2
 00403BC8    mov         eax,69
 00403BCD    call        SetInOutRes
 00403BD2    mov         eax,ebx
 00403BD4    pop         ebx
 00403BD5    ret
*}
end;

//00403BD8
function @WriteBytes(var t:TTextRec; const b:void ; cnt:Integer):Pointer;
begin
{*
 00403BD8    push        esi
 00403BD9    push        edi
 00403BDA    mov         esi,edx
 00403BDC    cmp         word ptr [eax+4],0D7B2
>00403BE2    je          00403BF3
 00403BE4    push        eax
 00403BE5    push        edx
 00403BE6    push        ecx
 00403BE7    call        TryOpenForOutput
 00403BEC    test        al,al
 00403BEE    pop         ecx
 00403BEF    pop         edx
 00403BF0    pop         eax
>00403BF1    je          00403C28
 00403BF3    mov         edi,dword ptr [eax+14]
 00403BF6    add         edi,dword ptr [eax+0C]
 00403BF9    mov         edx,dword ptr [eax+8]
 00403BFC    sub         edx,dword ptr [eax+0C]
 00403BFF    cmp         edx,ecx
>00403C01    jg          00403C23
 00403C03    add         dword ptr [eax+0C],edx
 00403C06    sub         ecx,edx
 00403C08    push        eax
 00403C09    push        ecx
 00403C0A    mov         ecx,edx
 00403C0C    rep movs    byte ptr [edi],byte ptr [esi]
 00403C0E    call        dword ptr [eax+1C]
 00403C11    test        eax,eax
>00403C13    jne         00403C19
 00403C15    pop         ecx
 00403C16    pop         eax
>00403C17    jmp         00403BF3
 00403C19    call        SetInOutRes
 00403C1E    pop         ecx
 00403C1F    pop         eax
 00403C20    pop         edi
 00403C21    pop         esi
 00403C22    ret
 00403C23    add         dword ptr [eax+0C],ecx
 00403C26    rep movs    byte ptr [edi],byte ptr [esi]
 00403C28    pop         edi
 00403C29    pop         esi
 00403C2A    ret
*}
end;

//00403C2C
function @WriteSpaces(var t:TTextRec; cnt:Integer):Pointer;
begin
{*
 00403C2C    mov         ecx,edx
 00403C2E    mov         edx,403C5C
 00403C33    cmp         ecx,40
>00403C36    jle         00403C9C
 00403C38    sub         ecx,40
 00403C3B    push        eax
 00403C3C    push        ecx
 00403C3D    mov         ecx,40
 00403C42    call        @WriteBytes
 00403C47    call        @GetTls
 00403C4C    cmp         dword ptr [eax+4],0;{InOutRes:Integer}
>00403C53    jne         00403C59
 00403C55    pop         ecx
 00403C56    pop         eax
>00403C57    jmp         00403C2E
 00403C59    pop         ecx
 00403C5A    pop         eax
 00403C5B    ret
 00403C5C    and         byte ptr [eax],ah
 00403C5E    and         byte ptr [eax],ah
 00403C60    and         byte ptr [eax],ah
 00403C62    and         byte ptr [eax],ah
 00403C64    and         byte ptr [eax],ah
 00403C66    and         byte ptr [eax],ah
 00403C68    and         byte ptr [eax],ah
 00403C6A    and         byte ptr [eax],ah
 00403C6C    and         byte ptr [eax],ah
 00403C6E    and         byte ptr [eax],ah
 00403C70    and         byte ptr [eax],ah
 00403C72    and         byte ptr [eax],ah
 00403C74    and         byte ptr [eax],ah
 00403C76    and         byte ptr [eax],ah
 00403C78    and         byte ptr [eax],ah
 00403C7A    and         byte ptr [eax],ah
 00403C7C    and         byte ptr [eax],ah
 00403C7E    and         byte ptr [eax],ah
 00403C80    and         byte ptr [eax],ah
 00403C82    and         byte ptr [eax],ah
 00403C84    and         byte ptr [eax],ah
 00403C86    and         byte ptr [eax],ah
 00403C88    and         byte ptr [eax],ah
 00403C8A    and         byte ptr [eax],ah
 00403C8C    and         byte ptr [eax],ah
 00403C8E    and         byte ptr [eax],ah
 00403C90    and         byte ptr [eax],ah
 00403C92    and         byte ptr [eax],ah
 00403C94    and         byte ptr [eax],ah
 00403C96    and         byte ptr [eax],ah
 00403C98    and         byte ptr [eax],ah
 00403C9A    and         byte ptr [eax],ah
 00403C9C    test        ecx,ecx
>00403C9E    jg          00403BD8
 00403CA4    ret
*}
end;

//00403CA8
{*function sub_00403CA8(?:?):?;
begin
 00403CA8    push        ebx
 00403CA9    add         esp,0FFFFFFF8
 00403CAC    mov         ebx,eax
 00403CAE    test        byte ptr [ebx+6],1
>00403CB2    je          00403CD3
 00403CB4    mov         byte ptr [esp+4],0D
 00403CB9    mov         byte ptr [esp+5],0A
 00403CBE    lea         edx,[esp+4]
 00403CC2    mov         eax,ebx
 00403CC4    mov         ecx,2
 00403CC9    call        @WriteBytes
 00403CCE    mov         dword ptr [esp],eax
>00403CD1    jmp         00403CEB
 00403CD3    mov         byte ptr [esp+4],0A
 00403CD8    lea         edx,[esp+4]
 00403CDC    mov         eax,ebx
 00403CDE    mov         ecx,1
 00403CE3    call        @WriteBytes
 00403CE8    mov         dword ptr [esp],eax
 00403CEB    mov         eax,ebx
 00403CED    call        @Flush
 00403CF2    mov         eax,dword ptr [esp]
 00403CF5    pop         ecx
 00403CF6    pop         edx
 00403CF7    pop         ebx
 00403CF8    ret
end;*}

//00403CFC
procedure @_CToPasStr(Dest:PShortString; const Source:PAnsiChar);
begin
{*
 00403CFC    mov         ecx,0FF
 00403D01    call        @_CLenToPasStr
 00403D06    ret
*}
end;

//00403D08
procedure @_CLenToPasStr(Dest:PShortString; const Source:PAnsiChar; MaxLen:Integer);
begin
{*
 00403D08    push        ebx
 00403D09    push        eax
 00403D0A    cmp         ecx,0FF
>00403D10    jbe         00403D17
 00403D12    mov         ecx,0FF
 00403D17    mov         bl,byte ptr [edx]
 00403D19    inc         edx
 00403D1A    test        bl,bl
>00403D1C    je          00403D24
 00403D1E    inc         eax
 00403D1F    mov         byte ptr [eax],bl
 00403D21    dec         ecx
>00403D22    jne         00403D17
 00403D24    pop         edx
 00403D25    sub         eax,edx
 00403D27    mov         byte ptr [edx],al
 00403D29    pop         ebx
 00403D2A    ret
*}
end;

//00403D2C
procedure @SetElem(var Dest:SET; Elem:Byte; Size:Byte);
begin
{*
 00403D2C    push        ebx
 00403D2D    push        edi
 00403D2E    mov         edi,eax
 00403D30    xor         ebx,ebx
 00403D32    mov         bl,cl
 00403D34    mov         ecx,ebx
 00403D36    xor         eax,eax
 00403D38    rep stos    byte ptr [edi]
 00403D3A    sub         edi,ebx
 00403D3C    inc         eax
 00403D3D    mov         cl,dl
 00403D3F    rol         al,cl
 00403D41    shr         ecx,3
 00403D44    cmp         ecx,ebx
>00403D46    jae         00403D4B
 00403D48    or          byte ptr [ecx+edi],al
 00403D4B    pop         edi
 00403D4C    pop         ebx
 00403D4D    ret
*}
end;

//00403D50
procedure @SetRange;
begin
{*
 00403D50    push        ebx
 00403D51    push        esi
 00403D52    push        edi
 00403D53    xor         ebx,ebx
 00403D55    mov         bl,ah
 00403D57    movzx       esi,al
 00403D5A    movzx       edx,dl
 00403D5D    mov         edi,ecx
 00403D5F    mov         ecx,ebx
 00403D61    xor         eax,eax
 00403D63    rep stos    byte ptr [edi]
 00403D65    sub         edi,ebx
 00403D67    shl         ebx,3
 00403D6A    cmp         edx,ebx
>00403D6C    jb          00403D71
 00403D6E    lea         edx,[ebx-1]
 00403D71    cmp         esi,edx
>00403D73    ja          00403DA2
 00403D75    dec         eax
 00403D76    mov         ecx,esi
 00403D78    and         cl,7
 00403D7B    shl         al,cl
 00403D7D    shr         esi,3
 00403D80    mov         cl,dl
 00403D82    not         cl
 00403D84    and         cl,7
 00403D87    shr         ah,cl
 00403D89    shr         edx,3
 00403D8C    add         edi,esi
 00403D8E    mov         ecx,edx
 00403D90    sub         ecx,esi
>00403D92    jne         00403D9A
 00403D94    and         al,ah
 00403D96    mov         byte ptr [edi],al
>00403D98    jmp         00403DA2
 00403D9A    stos        byte ptr [edi]
 00403D9B    dec         ecx
 00403D9C    mov         al,0FF
 00403D9E    rep stos    byte ptr [edi]
 00403DA0    mov         byte ptr [edi],ah
 00403DA2    pop         edi
 00403DA3    pop         esi
 00403DA4    pop         ebx
 00403DA5    ret
*}
end;

//00403DA8
procedure @SetEq;
begin
{*
 00403DA8    push        esi
 00403DA9    push        edi
 00403DAA    mov         esi,eax
 00403DAC    mov         edi,edx
 00403DAE    and         ecx,0FF
 00403DB4    repe cmps   byte ptr [esi],byte ptr [edi]
 00403DB6    pop         edi
 00403DB7    pop         esi
 00403DB8    ret
*}
end;

//00403DBC
procedure @SetExpand;
begin
{*
 00403DBC    push        esi
 00403DBD    push        edi
 00403DBE    mov         esi,eax
 00403DC0    mov         edi,edx
 00403DC2    mov         edx,ecx
 00403DC4    xor         ecx,ecx
 00403DC6    xor         eax,eax
 00403DC8    mov         cl,dl
 00403DCA    rep stos    byte ptr [edi]
 00403DCC    mov         cl,dh
 00403DCE    sub         cl,dl
 00403DD0    rep movs    byte ptr [edi],byte ptr [esi]
 00403DD2    mov         cl,20
 00403DD4    sub         cl,dh
 00403DD6    rep stos    byte ptr [edi]
 00403DD8    pop         edi
 00403DD9    pop         esi
 00403DDA    ret
*}
end;

//00403DDC
procedure FPower10;
begin
{*
>00403DDC    jmp         @Pow10
 00403DE1    ret
*}
end;

//00403DE4
procedure @Pow10;
begin
{*
 00403DE4    push        ebx
 00403DE5    xor         ebx,ebx
 00403DE7    test        eax,eax
>00403DE9    jl          00403E38
>00403DEB    je          00403E8B
 00403DF1    cmp         eax,1400
>00403DF6    jge         00403E7D
 00403DFC    mov         edx,eax
 00403DFE    and         edx,1F
 00403E01    lea         edx,[edx+edx*4]
 00403E04    fld         tbyte ptr [ebx+edx*2+403E97]
 00403E0B    fmulp       st(1),st
 00403E0D    shr         eax,5
>00403E10    je          00403E8B
 00403E12    mov         edx,eax
 00403E14    and         edx,0F
>00403E17    je          00403E25
 00403E19    lea         edx,[edx+edx*4]
 00403E1C    fld         tbyte ptr [ebx+edx*2+403FCD]
 00403E23    fmulp       st(1),st
 00403E25    shr         eax,4
>00403E28    je          00403E8B
 00403E2A    lea         eax,[eax+eax*4]
 00403E2D    fld         tbyte ptr [ebx+eax*2+404063]
 00403E34    fmulp       st(1),st
>00403E36    jmp         00403E8B
 00403E38    neg         eax
 00403E3A    cmp         eax,1400
>00403E3F    jge         00403E87
 00403E41    mov         edx,eax
 00403E43    and         edx,1F
 00403E46    lea         edx,[edx+edx*4]
 00403E49    fld         tbyte ptr [ebx+edx*2+403E97]
 00403E50    fdivp       st(1),st
 00403E52    shr         eax,5
>00403E55    je          00403E8B
 00403E57    mov         edx,eax
 00403E59    and         edx,0F
>00403E5C    je          00403E6A
 00403E5E    lea         edx,[edx+edx*4]
 00403E61    fld         tbyte ptr [ebx+edx*2+403FCD]
 00403E68    fdivp       st(1),st
 00403E6A    shr         eax,4
>00403E6D    je          00403E8B
 00403E6F    lea         eax,[eax+eax*4]
 00403E72    fld         tbyte ptr [ebx+eax*2+404063]
 00403E79    fdivp       st(1),st
>00403E7B    jmp         00403E8B
 00403E7D    fstp        st(0)
 00403E7F    fld         tbyte ptr [ebx+403E8D]
>00403E85    jmp         00403E8B
 00403E87    fstp        st(0)
 00403E89    fldz
 00403E8B    pop         ebx
 00403E8C    ret
*}
end;

//004040C8
function user32.GetKeyboardType:Integer; stdcall;
begin
{*
 004040C8    jmp         dword ptr ds:[61C0AC]
*}
end;

//004040D0
function @isNECWindows:Boolean;
begin
{*
 004040D0    push        ebx
 004040D1    xor         ebx,ebx
 004040D3    push        0
 004040D5    call        user32.GetKeyboardType
 004040DA    cmp         eax,7
>004040DD    jne         004040FB
 004040DF    push        1
 004040E1    call        user32.GetKeyboardType
 004040E6    and         eax,0FF00
 004040EB    cmp         eax,0D00
>004040F0    je          004040F9
 004040F2    cmp         eax,400
>004040F7    jne         004040FB
 004040F9    mov         bl,1
 004040FB    mov         eax,ebx
 004040FD    pop         ebx
 004040FE    ret
*}
end;

//00404100
procedure @FpuMaskInit;
begin
{*
 00404100    push        ebp
 00404101    mov         ebp,esp
 00404103    add         esp,0FFFFFFF4
 00404106    movzx       eax,word ptr ds:[56B020]
 0040410D    mov         dword ptr [ebp-8],eax
 00404110    lea         eax,[ebp-4]
 00404113    push        eax
 00404114    push        1
 00404116    push        0
 00404118    push        404198
 0040411D    push        80000002
 00404122    call        advapi32.RegOpenKeyExA
 00404127    test        eax,eax
>00404129    jne         00404178
 0040412B    xor         eax,eax
 0040412D    push        ebp
 0040412E    push        404171
 00404133    push        dword ptr fs:[eax]
 00404136    mov         dword ptr fs:[eax],esp
 00404139    mov         dword ptr [ebp-0C],4
 00404140    lea         eax,[ebp-0C]
 00404143    push        eax
 00404144    lea         eax,[ebp-8]
 00404147    push        eax
 00404148    push        0
 0040414A    push        0
 0040414C    push        4041B4
 00404151    mov         eax,dword ptr [ebp-4]
 00404154    push        eax
 00404155    call        advapi32.RegQueryValueExA
 0040415A    xor         eax,eax
 0040415C    pop         edx
 0040415D    pop         ecx
 0040415E    pop         ecx
 0040415F    mov         dword ptr fs:[eax],edx
 00404162    push        404178
 00404167    mov         eax,dword ptr [ebp-4]
 0040416A    push        eax
 0040416B    call        advapi32.RegCloseKey
 00404170    ret
>00404171    jmp         @HandleFinally
>00404176    jmp         00404167
 00404178    mov         ax,[0056B020]
 0040417E    and         ax,0FFC0
 00404182    mov         dx,word ptr [ebp-8]
 00404186    and         dx,3F
 0040418A    or          ax,dx
 0040418D    mov         [0056B020],ax
 00404193    mov         esp,ebp
 00404195    pop         ebp
 00404196    ret
*}
end;

//004041C4
procedure @FpuInit;
begin
{*
 004041C4    fninit
 004041C6    wait
 004041C7    fldcw       word ptr ds:[56B020]
 004041CD    ret
*}
end;

//004041D0
procedure @BoundErr;
begin
{*
 004041D0    mov         al,4
>004041D2    jmp         Error
 004041D7    ret
*}
end;

//004041D8
function TObject.ClassType:TClass;
begin
{*
 004041D8    push        ecx
 004041D9    mov         eax,dword ptr [eax]
 004041DB    mov         dword ptr [esp],eax
 004041DE    mov         eax,dword ptr [esp]
 004041E1    pop         edx
 004041E2    ret
*}
end;

//004041E4
function TObject.ClassName:ShortString;
begin
{*
 004041E4    push        esi
 004041E5    push        edi
 004041E6    mov         edi,edx
 004041E8    mov         esi,dword ptr [eax-2C]
 004041EB    xor         ecx,ecx
 004041ED    mov         cl,byte ptr [esi]
 004041EF    inc         ecx
 004041F0    rep movs    byte ptr [edi],byte ptr [esi]
 004041F2    pop         edi
 004041F3    pop         esi
 004041F4    ret
*}
end;

//004041F8
function TObject.ClassNameIs(const Name:AnsiString):Boolean;
begin
{*
 004041F8    push        ebx
 004041F9    xor         ebx,ebx
 004041FB    or          edx,edx
>004041FD    je          0040421B
 004041FF    mov         eax,dword ptr [eax-2C]
 00404202    xor         ecx,ecx
 00404204    mov         cl,byte ptr [eax]
 00404206    cmp         ecx,dword ptr [edx-4]
>00404209    jne         0040421B
 0040420B    dec         edx
 0040420C    mov         bh,byte ptr [ecx+eax]
 0040420F    xor         bh,byte ptr [ecx+edx]
 00404212    and         bh,0DF
>00404215    jne         0040421B
 00404217    dec         ecx
>00404218    jne         0040420C
 0040421A    inc         ebx
 0040421B    mov         al,bl
 0040421D    pop         ebx
 0040421E    ret
*}
end;

//00404220
function TObject.ClassParent:TClass;
begin
{*
 00404220    mov         eax,dword ptr [eax-24]
 00404223    test        eax,eax
>00404225    je          00404229
 00404227    mov         eax,dword ptr [eax]
 00404229    ret
*}
end;

//0040422C
function TObject.NewInstance:TObject;
begin
{*
 0040422C    push        ebx
 0040422D    mov         ebx,eax
 0040422F    mov         eax,ebx
 00404231    call        TObject.InstanceSize
 00404236    call        @GetMem
 0040423B    mov         edx,eax
 0040423D    mov         eax,ebx
 0040423F    call        TObject.InitInstance
 00404244    pop         ebx
 00404245    ret
*}
end;

//00404248
procedure TObject.FreeInstance;
begin
{*
 00404248    push        ebx
 00404249    mov         ebx,eax
 0040424B    mov         eax,ebx
 0040424D    call        TObject.CleanupInstance
 00404252    mov         eax,ebx
 00404254    call        @FreeMem
 00404259    pop         ebx
 0040425A    ret
*}
end;

//0040425C
function TObject.InstanceSize:Integer;
begin
{*
 0040425C    add         eax,0FFFFFFD8
 0040425F    mov         eax,dword ptr [eax]
 00404261    ret
*}
end;

//00404264
constructor TObject.Create;
begin
{*
 00404264    test        dl,dl
>00404266    je          00404270
 00404268    add         esp,0FFFFFFF0
 0040426B    call        @ClassCreate
 00404270    test        dl,dl
>00404272    je          00404283
 00404274    call        @AfterConstruction
 00404279    pop         dword ptr fs:[0]
 00404280    add         esp,0C
 00404283    ret
*}
end;

//00404284
destructor TObject.Destroy;
begin
{*
 00404284    call        @BeforeDestruction
 00404289    test        dl,dl
>0040428B    jle         00404292
 0040428D    call        @ClassDestroy
 00404292    ret
*}
end;

//00404294
procedure TObject.Free;
begin
{*
 00404294    test        eax,eax
>00404296    je          0040429F
 00404298    mov         dl,1
 0040429A    mov         ecx,dword ptr [eax]
 0040429C    call        dword ptr [ecx-4]
 0040429F    ret
*}
end;

//004042A0
function TObject.InitInstance(Instance:Pointer):TObject;
begin
{*
 004042A0    push        ebx
 004042A1    push        esi
 004042A2    push        edi
 004042A3    mov         ebx,eax
 004042A5    mov         edi,edx
 004042A7    stos        dword ptr [edi]
 004042A8    mov         ecx,dword ptr [ebx-28]
 004042AB    xor         eax,eax
 004042AD    push        ecx
 004042AE    shr         ecx,2
 004042B1    dec         ecx
 004042B2    rep stos    dword ptr [edi]
 004042B4    pop         ecx
 004042B5    and         ecx,3
 004042B8    rep stos    byte ptr [edi]
 004042BA    mov         eax,edx
 004042BC    mov         edx,esp
 004042BE    mov         ecx,dword ptr [ebx-48]
 004042C1    test        ecx,ecx
>004042C3    je          004042C6
 004042C5    push        ecx
 004042C6    mov         ebx,dword ptr [ebx-24]
 004042C9    test        ebx,ebx
>004042CB    je          004042D1
 004042CD    mov         ebx,dword ptr [ebx]
>004042CF    jmp         004042BE
 004042D1    cmp         esp,edx
>004042D3    je          004042F2
 004042D5    pop         ebx
 004042D6    mov         ecx,dword ptr [ebx]
 004042D8    add         ebx,4
 004042DB    mov         esi,dword ptr [ebx+10]
 004042DE    test        esi,esi
>004042E0    je          004042E8
 004042E2    mov         edi,dword ptr [ebx+14]
 004042E5    mov         dword ptr [edi+eax],esi
 004042E8    add         ebx,1C
 004042EB    dec         ecx
>004042EC    jne         004042DB
 004042EE    cmp         esp,edx
>004042F0    jne         004042D5
 004042F2    pop         edi
 004042F3    pop         esi
 004042F4    pop         ebx
 004042F5    ret
*}
end;

//004042F8
procedure TObject.CleanupInstance;
begin
{*
 004042F8    push        ebx
 004042F9    push        esi
 004042FA    mov         ebx,eax
 004042FC    mov         esi,eax
 004042FE    mov         esi,dword ptr [esi]
 00404300    mov         edx,dword ptr [esi-40]
 00404303    mov         esi,dword ptr [esi-24]
 00404306    test        edx,edx
>00404308    je          00404311
 0040430A    call        @FinalizeRecord
 0040430F    mov         eax,ebx
 00404311    test        esi,esi
>00404313    jne         004042FE
 00404315    pop         esi
 00404316    pop         ebx
 00404317    ret
*}
end;

//00404318
function InvokeImplGetter(Self:TObject; ImplGetter:Cardinal):IInterface;
begin
{*
 00404318    xchg        edx,ecx
 0040431A    cmp         ecx,0FF000000
>00404320    jae         00404333
 00404322    cmp         ecx,0FE000000
>00404328    jb          00404331
 0040432A    movsx       ecx,cx
 0040432D    add         ecx,dword ptr [eax]
 0040432F    jmp         dword ptr [ecx]
 00404331    jmp         ecx
 00404333    and         ecx,0FFFFFF
 00404339    add         ecx,eax
 0040433B    mov         eax,edx
 0040433D    mov         edx,dword ptr [ecx]
>0040433F    jmp         @IntfCopy
 00404344    ret
*}
end;

//00404348
function TObject.GetInterface(const IID:TGUID; var Obj:void ):Boolean;
begin
{*
 00404348    push        ebp
 00404349    mov         ebp,esp
 0040434B    add         esp,0FFFFFFF8
 0040434E    push        ebx
 0040434F    push        esi
 00404350    push        edi
 00404351    xor         ebx,ebx
 00404353    mov         dword ptr [ebp-8],ebx
 00404356    mov         ebx,ecx
 00404358    mov         edi,edx
 0040435A    mov         esi,eax
 0040435C    xor         eax,eax
 0040435E    push        ebp
 0040435F    push        4043D6
 00404364    push        dword ptr fs:[eax]
 00404367    mov         dword ptr fs:[eax],esp
 0040436A    xor         eax,eax
 0040436C    mov         dword ptr [ebx],eax
 0040436E    mov         edx,edi
 00404370    mov         eax,dword ptr [esi]
 00404372    call        TObject.GetInterfaceEntry
 00404377    mov         dword ptr [ebp-4],eax
 0040437A    cmp         dword ptr [ebp-4],0
>0040437E    je          004043B8
 00404380    mov         eax,dword ptr [ebp-4]
 00404383    mov         eax,dword ptr [eax+14]
 00404386    test        eax,eax
>00404388    je          0040439E
 0040438A    mov         edx,eax
 0040438C    add         edx,esi
 0040438E    mov         dword ptr [ebx],edx
 00404390    test        edx,edx
>00404392    je          004043B8
 00404394    mov         eax,dword ptr [ebx]
 00404396    push        eax
 00404397    mov         eax,dword ptr [eax]
 00404399    call        dword ptr [eax+4]
>0040439C    jmp         004043B8
 0040439E    lea         ecx,[ebp-8]
 004043A1    mov         eax,dword ptr [ebp-4]
 004043A4    mov         edx,dword ptr [eax+18]
 004043A7    mov         eax,esi
 004043A9    call        InvokeImplGetter
 004043AE    mov         edx,dword ptr [ebp-8]
 004043B1    mov         eax,ebx
 004043B3    call        @IntfCopy
 004043B8    cmp         dword ptr [ebx],0
 004043BB    setne       al
 004043BE    mov         ebx,eax
 004043C0    xor         eax,eax
 004043C2    pop         edx
 004043C3    pop         ecx
 004043C4    pop         ecx
 004043C5    mov         dword ptr fs:[eax],edx
 004043C8    push        4043DD
 004043CD    lea         eax,[ebp-8]
 004043D0    call        @IntfClear
 004043D5    ret
>004043D6    jmp         @HandleFinally
>004043DB    jmp         004043CD
 004043DD    mov         eax,ebx
 004043DF    pop         edi
 004043E0    pop         esi
 004043E1    pop         ebx
 004043E2    pop         ecx
 004043E3    pop         ecx
 004043E4    pop         ebp
 004043E5    ret
*}
end;

//004043E8
function TObject.GetInterfaceEntry(const IID:TGUID):PInterfaceEntry;
begin
{*
 004043E8    push        ebx
 004043E9    push        esi
 004043EA    mov         ebx,eax
 004043EC    mov         eax,dword ptr [ebx-48]
 004043EF    test        eax,eax
>004043F1    je          0040441C
 004043F3    mov         ecx,dword ptr [eax]
 004043F5    add         eax,4
 004043F8    mov         esi,dword ptr [edx]
 004043FA    cmp         esi,dword ptr [eax]
>004043FC    jne         00404416
 004043FE    mov         esi,dword ptr [edx+4]
 00404401    cmp         esi,dword ptr [eax+4]
>00404404    jne         00404416
 00404406    mov         esi,dword ptr [edx+8]
 00404409    cmp         esi,dword ptr [eax+8]
>0040440C    jne         00404416
 0040440E    mov         esi,dword ptr [edx+0C]
 00404411    cmp         esi,dword ptr [eax+0C]
>00404414    je          00404429
 00404416    add         eax,1C
 00404419    dec         ecx
>0040441A    jne         004043F8
 0040441C    mov         ebx,dword ptr [ebx-24]
 0040441F    test        ebx,ebx
>00404421    je          00404427
 00404423    mov         ebx,dword ptr [ebx]
>00404425    jmp         004043EC
 00404427    xor         eax,eax
 00404429    pop         esi
 0040442A    pop         ebx
 0040442B    ret
*}
end;

//0040442C
function @IsClass(Child:TObject; Parent:TClass):Boolean;
begin
{*
 0040442C    push        ebx
 0040442D    push        esi
 0040442E    mov         esi,edx
 00404430    mov         ebx,eax
 00404432    test        ebx,ebx
>00404434    je          00404443
 00404436    mov         edx,esi
 00404438    mov         eax,dword ptr [ebx]
 0040443A    call        TObject.InheritsFrom
 0040443F    test        al,al
>00404441    jne         00404448
 00404443    xor         eax,eax
 00404445    pop         esi
 00404446    pop         ebx
 00404447    ret
 00404448    mov         al,1
 0040444A    pop         esi
 0040444B    pop         ebx
 0040444C    ret
*}
end;

//00404450
function @AsClass(child:TObject; parent:TClass):TObject;
begin
{*
 00404450    test        eax,eax
>00404452    je          0040446A
 00404454    mov         ecx,eax
 00404456    mov         ecx,dword ptr [ecx]
 00404458    cmp         ecx,edx
>0040445A    je          0040446A
 0040445C    mov         ecx,dword ptr [ecx-24]
 0040445F    test        ecx,ecx
>00404461    jne         00404456
 00404463    mov         al,0A
>00404465    jmp         Error
 0040446A    ret
*}
end;

//0040446C
procedure GetDynaMethod;
begin
{*
 0040446C    push        edi
 0040446D    xchg        eax,esi
>0040446E    jmp         00404472
 00404470    mov         esi,dword ptr [esi]
 00404472    mov         edi,dword ptr [esi-30]
 00404475    test        edi,edi
>00404477    je          00404486
 00404479    movzx       ecx,word ptr [edi]
 0040447C    push        ecx
 0040447D    add         edi,2
 00404480    repne scas  word ptr [edi]
>00404483    je          0040448F
 00404485    pop         ecx
 00404486    mov         esi,dword ptr [esi-24]
 00404489    test        esi,esi
>0040448B    jne         00404470
 0040448D    pop         edi
 0040448E    ret
 0040448F    pop         eax
 00404490    add         eax,eax
 00404492    sub         eax,ecx
 00404494    mov         esi,dword ptr [edi+eax*2-4]
 00404498    pop         edi
 00404499    ret
*}
end;

//0040449C
procedure @CallDynaInst;
begin
{*
 0040449C    push        eax
 0040449D    push        ecx
 0040449E    mov         eax,dword ptr [eax]
 004044A0    call        GetDynaMethod
 004044A5    pop         ecx
 004044A6    pop         eax
>004044A7    je          004044AB
 004044A9    jmp         esi
 004044AB    pop         ecx
>004044AC    jmp         @AbstractError
 004044B1    ret
*}
end;

//004044B4
procedure @FindDynaInst;
begin
{*
 004044B4    push        esi
 004044B5    mov         esi,edx
 004044B7    mov         eax,dword ptr [eax]
 004044B9    call        GetDynaMethod
 004044BE    mov         eax,esi
 004044C0    pop         esi
>004044C1    jne         004044C9
 004044C3    pop         ecx
>004044C4    jmp         @AbstractError
 004044C9    ret
*}
end;

//004044CC
function TObject.InheritsFrom(AClass:TClass):Boolean;
begin
{*
>004044CC    jmp         004044D0
 004044CE    mov         eax,dword ptr [eax]
 004044D0    cmp         eax,edx
>004044D2    je          004044DC
 004044D4    mov         eax,dword ptr [eax-24]
 004044D7    test        eax,eax
>004044D9    jne         004044CE
 004044DB    ret
 004044DC    mov         al,1
 004044DE    ret
*}
end;

//004044E0
{*function sub_004044E0(?:TClass):?;
begin
 004044E0    push        ecx
 004044E1    add         eax,0FFFFFFC4
 004044E4    mov         eax,dword ptr [eax]
 004044E6    mov         dword ptr [esp],eax
 004044E9    mov         eax,dword ptr [esp]
 004044EC    pop         edx
 004044ED    ret
end;*}

//004044F0
{*function TCustomVariantType.SafeCallException:?;
begin
 004044F0    mov         eax,8000FFFF
 004044F5    ret
end;*}

//004044F8
procedure TCustomVariantType.DefaultHandler;
begin
{*
 004044F8    ret
*}
end;

//004044FC
procedure TCustomVariantType.AfterConstruction;
begin
{*
 004044FC    ret
*}
end;

//00404500
procedure TCustomVariantType.BeforeDestruction;
begin
{*
 00404500    ret
*}
end;

//00404504
procedure TObject.Dispatch(var Message:void );
begin
{*
 00404504    push        esi
 00404505    mov         si,word ptr [edx]
 00404508    or          si,si
>0040450B    je          00404524
 0040450D    cmp         si,0C000
>00404512    jae         00404524
 00404514    push        eax
 00404515    mov         eax,dword ptr [eax]
 00404517    call        GetDynaMethod
 0040451C    pop         eax
>0040451D    je          00404524
 0040451F    mov         ecx,esi
 00404521    pop         esi
 00404522    jmp         ecx
 00404524    pop         esi
 00404525    mov         ecx,dword ptr [eax]
 00404527    jmp         dword ptr [ecx-10]
 0040452A    ret
*}
end;

//0040452C
function TObject.MethodAddress(const Name:ShortString):Pointer;
begin
{*
 0040452C    push        ebx
 0040452D    push        esi
 0040452E    push        edi
 0040452F    xor         ecx,ecx
 00404531    xor         edi,edi
 00404533    mov         bl,byte ptr [edx]
>00404535    jmp         00404539
 00404537    mov         eax,dword ptr [eax]
 00404539    mov         esi,dword ptr [eax-34]
 0040453C    test        esi,esi
>0040453E    je          00404555
 00404540    mov         di,word ptr [esi]
 00404543    add         esi,2
 00404546    mov         cl,byte ptr [esi+6]
 00404549    cmp         cl,bl
>0040454B    je          00404562
 0040454D    mov         cx,word ptr [esi]
 00404550    add         esi,ecx
 00404552    dec         edi
>00404553    jne         00404546
 00404555    mov         eax,dword ptr [eax-24]
 00404558    test        eax,eax
>0040455A    jne         00404537
>0040455C    jmp         00404576
 0040455E    mov         bl,byte ptr [edx]
>00404560    jmp         0040454D
 00404562    mov         ch,0
 00404564    mov         bl,byte ptr [ecx+esi+6]
 00404568    xor         bl,byte ptr [ecx+edx]
 0040456B    and         bl,0DF
>0040456E    jne         0040455E
 00404570    dec         ecx
>00404571    jne         00404564
 00404573    mov         eax,dword ptr [esi+2]
 00404576    pop         edi
 00404577    pop         esi
 00404578    pop         ebx
 00404579    ret
*}
end;

//0040457C
function TObject.MethodName(Address:Pointer):ShortString;
begin
{*
 0040457C    push        ebx
 0040457D    push        esi
 0040457E    push        edi
 0040457F    mov         edi,ecx
 00404581    xor         ebx,ebx
 00404583    xor         ecx,ecx
>00404585    jmp         00404589
 00404587    mov         eax,dword ptr [eax]
 00404589    mov         esi,dword ptr [eax-34]
 0040458C    test        esi,esi
>0040458E    je          004045A3
 00404590    mov         cx,word ptr [esi]
 00404593    add         esi,2
 00404596    cmp         edx,dword ptr [esi+2]
>00404599    je          004045AE
 0040459B    mov         bx,word ptr [esi]
 0040459E    add         esi,ebx
 004045A0    dec         ecx
>004045A1    jne         00404596
 004045A3    mov         eax,dword ptr [eax-24]
 004045A6    test        eax,eax
>004045A8    jne         00404587
 004045AA    mov         byte ptr [edi],al
>004045AC    jmp         004045B8
 004045AE    add         esi,6
 004045B1    xor         ecx,ecx
 004045B3    mov         cl,byte ptr [esi]
 004045B5    inc         ecx
 004045B6    rep movs    byte ptr [edi],byte ptr [esi]
 004045B8    pop         edi
 004045B9    pop         esi
 004045BA    pop         ebx
 004045BB    ret
*}
end;

//004045BC
function TObject.FieldAddress(const Name:ShortString):Pointer;
begin
{*
 004045BC    push        ebx
 004045BD    push        esi
 004045BE    push        edi
 004045BF    xor         ecx,ecx
 004045C1    xor         edi,edi
 004045C3    mov         bl,byte ptr [edx]
 004045C5    push        eax
 004045C6    mov         eax,dword ptr [eax]
 004045C8    mov         esi,dword ptr [eax-38]
 004045CB    test        esi,esi
>004045CD    je          004045E3
 004045CF    mov         di,word ptr [esi]
 004045D2    add         esi,6
 004045D5    mov         cl,byte ptr [esi+6]
 004045D8    cmp         cl,bl
>004045DA    je          004045F4
 004045DC    lea         esi,[ecx+esi+7]
 004045E0    dec         edi
>004045E1    jne         004045D5
 004045E3    mov         eax,dword ptr [eax-24]
 004045E6    test        eax,eax
>004045E8    jne         004045C6
 004045EA    pop         edx
>004045EB    jmp         00404608
 004045ED    mov         bl,byte ptr [edx]
 004045EF    mov         cl,byte ptr [esi+6]
>004045F2    jmp         004045DC
 004045F4    mov         bl,byte ptr [ecx+esi+6]
 004045F8    xor         bl,byte ptr [ecx+edx]
 004045FB    and         bl,0DF
>004045FE    jne         004045ED
 00404600    dec         ecx
>00404601    jne         004045F4
 00404603    mov         eax,dword ptr [esi]
 00404605    pop         edx
 00404606    add         eax,edx
 00404608    pop         edi
 00404609    pop         esi
 0040460A    pop         ebx
 0040460B    ret
*}
end;

//0040460C
function @ClassCreate(AClass:TClass; Alloc:Boolean):TObject;
begin
{*
 0040460C    push        edx
 0040460D    push        ecx
 0040460E    push        ebx
 0040460F    test        dl,dl
>00404611    jl          00404616
 00404613    call        dword ptr [eax-0C]
 00404616    xor         edx,edx
 00404618    lea         ecx,[esp+10]
 0040461C    mov         ebx,dword ptr fs:[edx]
 0040461F    mov         dword ptr [ecx],ebx
 00404621    mov         dword ptr [ecx+8],ebp
 00404624    mov         dword ptr [ecx+4],404635
 0040462B    mov         dword ptr [ecx+0C],eax
 0040462E    mov         dword ptr fs:[edx],ecx
 00404631    pop         ebx
 00404632    pop         ecx
 00404633    pop         edx
 00404634    ret
*}
end;

//0040465C
procedure @ClassDestroy(Instance:TObject);
begin
{*
 0040465C    mov         edx,dword ptr [eax]
 0040465E    call        dword ptr [edx-8]
 00404661    ret
*}
end;

//00404664
function @AfterConstruction(Instance:TObject):TObject;
begin
{*
 00404664    push        ebx
 00404665    mov         ebx,eax
 00404667    mov         eax,ebx
 00404669    mov         edx,dword ptr [eax]
 0040466B    call        dword ptr [edx-1C]
 0040466E    mov         eax,ebx
 00404670    pop         ebx
 00404671    ret
*}
end;

//00404674
function @BeforeDestruction(Instance:TObject; OuterMost:Shortint):TObject;
begin
{*
 00404674    test        dl,dl
>00404676    jg          00404679
 00404678    ret
 00404679    push        eax
 0040467A    push        edx
 0040467B    mov         edx,dword ptr [eax]
 0040467D    call        dword ptr [edx-18]
 00404680    pop         edx
 00404681    pop         eax
 00404682    ret
*}
end;

//00404684
procedure NotifyReRaise;
begin
{*
 00404684    cmp         byte ptr ds:[56B028],1;gvar_0056B028
>0040468B    jbe         0040469E
 0040468D    push        0
 0040468F    push        0
 00404691    push        0
 00404693    push        0EEDFADF
 00404698    call        dword ptr ds:[56F014]
 0040469E    ret
*}
end;

//004046A0
procedure NotifyNonDelphiException;
begin
{*
 004046A0    cmp         byte ptr ds:[56B028],0;gvar_0056B028
>004046A7    je          004046C0
 004046A9    push        eax
 004046AA    push        eax
 004046AB    push        edx
 004046AC    push        esp
 004046AD    push        2
 004046AF    push        0
 004046B1    push        0EEDFAE4
 004046B6    call        dword ptr ds:[56F014]
 004046BC    add         esp,8
 004046BF    pop         eax
 004046C0    ret
*}
end;

//004046C4
procedure NotifyExcept;
begin
{*
 004046C4    push        esp
 004046C5    push        1
 004046C7    push        0
 004046C9    push        0EEDFAE0
 004046CE    call        dword ptr ds:[56F014]
 004046D4    add         esp,4
 004046D7    pop         eax
 004046D8    ret
*}
end;

//004046DC
procedure NotifyOnExcept;
begin
{*
 004046DC    cmp         byte ptr ds:[56B028],1;gvar_0056B028
>004046E3    jbe         004046EE
 004046E5    push        eax
 004046E6    push        dword ptr [ebx+4]
>004046E9    jmp         NotifyExcept
 004046EE    ret
*}
end;

//004046F0
procedure NotifyAnyExcept;
begin
{*
 004046F0    cmp         byte ptr ds:[56B028],1;gvar_0056B028
>004046F7    jbe         00404700
 004046F9    push        eax
 004046FA    push        ebx
>004046FB    jmp         NotifyExcept
 00404700    ret
*}
end;

//00404704
procedure CheckJmp;
begin
{*
 00404704    test        ecx,ecx
>00404706    je          00404721
 00404708    mov         eax,dword ptr [ecx+1]
 0040470B    cmp         byte ptr [ecx],0E9
>0040470E    je          0040471C
 00404710    cmp         byte ptr [ecx],0EB
>00404713    jne         00404721
 00404715    movsx       eax,al
 00404718    inc         ecx
 00404719    inc         ecx
>0040471A    jmp         0040471F
 0040471C    add         ecx,5
 0040471F    add         ecx,eax
 00404721    ret
*}
end;

//00404724
procedure NotifyExceptFinally;
begin
{*
 00404724    cmp         byte ptr ds:[56B028],1;gvar_0056B028
>0040472B    jbe         0040474A
 0040472D    push        eax
 0040472E    push        edx
 0040472F    push        ecx
 00404730    call        CheckJmp
 00404735    push        ecx
 00404736    push        esp
 00404737    push        1
 00404739    push        0
 0040473B    push        0EEDFAE1
 00404740    call        dword ptr ds:[56F014]
 00404746    pop         ecx
 00404747    pop         ecx
 00404748    pop         edx
 00404749    pop         eax
 0040474A    ret
*}
end;

//0040474C
procedure NotifyTerminate;
begin
{*
 0040474C    cmp         byte ptr ds:[56B028],1;gvar_0056B028
>00404753    jbe         00404767
 00404755    push        edx
 00404756    push        esp
 00404757    push        1
 00404759    push        0
 0040475B    push        0EEDFAE2
 00404760    call        dword ptr ds:[56F014]
 00404766    pop         edx
 00404767    ret
*}
end;

//00404768
procedure NotifyUnhandled;
begin
{*
 00404768    push        eax
 00404769    push        edx
 0040476A    cmp         byte ptr ds:[56B028],1;gvar_0056B028
>00404771    jbe         00404783
 00404773    push        esp
 00404774    push        2
 00404776    push        0
 00404778    push        0EEDFAE3
 0040477D    call        dword ptr ds:[56F014]
 00404783    pop         edx
 00404784    pop         eax
 00404785    ret
*}
end;

//00404788
procedure @HandleAnyException;
begin
{*
 00404788    mov         eax,dword ptr [esp+4]
 0040478C    test        dword ptr [eax+4],6
>00404793    jne         004048AC
 00404799    cmp         dword ptr [eax],0EEDFADE
 0040479F    mov         edx,dword ptr [eax+18]
 004047A2    mov         ecx,dword ptr [eax+14]
>004047A5    je          00404815
 004047A7    cld
 004047A8    call        @FpuInit
 004047AD    mov         edx,dword ptr ds:[56F010];ExceptObjProc:Pointer
 004047B3    test        edx,edx
>004047B5    je          004048AC
 004047BB    call        edx
 004047BD    test        eax,eax
>004047BF    je          004048AC
 004047C5    mov         edx,dword ptr [esp+0C]
 004047C9    mov         ecx,dword ptr [esp+4]
 004047CD    cmp         dword ptr [ecx],0EEFFACE
>004047D3    je          0040480C
 004047D5    call        NotifyNonDelphiException
 004047DA    cmp         byte ptr ds:[56B02C],0
>004047E1    jbe         0040480C
 004047E3    cmp         byte ptr ds:[56B028],0;gvar_0056B028
>004047EA    ja          0040480C
 004047EC    lea         ecx,[esp+4]
 004047F0    push        eax
 004047F1    push        ecx
 004047F2    call        kernel32.UnhandledExceptionFilter
 004047F7    cmp         eax,0
 004047FA    pop         eax
>004047FB    je          004048AC
 00404801    mov         edx,eax
 00404803    mov         eax,dword ptr [esp+4]
 00404807    mov         ecx,dword ptr [eax+0C]
>0040480A    jmp         0040483C
 0040480C    mov         edx,eax
 0040480E    mov         eax,dword ptr [esp+4]
 00404812    mov         ecx,dword ptr [eax+0C]
 00404815    cmp         byte ptr ds:[56B02C],1
>0040481C    jbe         0040483C
 0040481E    cmp         byte ptr ds:[56B028],0;gvar_0056B028
>00404825    ja          0040483C
 00404827    push        eax
 00404828    lea         eax,[esp+8]
 0040482C    push        edx
 0040482D    push        ecx
 0040482E    push        eax
 0040482F    call        kernel32.UnhandledExceptionFilter
 00404834    cmp         eax,0
 00404837    pop         ecx
 00404838    pop         edx
 00404839    pop         eax
>0040483A    je          004048AC
 0040483C    or          dword ptr [eax+4],2
 00404840    push        ebx
 00404841    xor         ebx,ebx
 00404843    push        esi
 00404844    push        edi
 00404845    push        ebp
 00404846    mov         ebx,dword ptr fs:[ebx]
 00404849    push        ebx
 0040484A    push        eax
 0040484B    push        edx
 0040484C    push        ecx
 0040484D    mov         edx,dword ptr [esp+28]
 00404851    push        0
 00404853    push        eax
 00404854    push        404860
 00404859    push        edx
 0040485A    call        dword ptr ds:[56F018]
 00404860    mov         edi,dword ptr [esp+28]
 00404864    call        @GetTls
 00404869    push        dword ptr [eax+0];{RaiseListPtr:Pointer}
 0040486F    mov         dword ptr [eax+0],esp;{RaiseListPtr:Pointer}
 00404875    mov         ebp,dword ptr [edi+8]
 00404878    mov         ebx,dword ptr [edi+4]
 0040487B    mov         dword ptr [edi+4],40488C
 00404882    add         ebx,5
 00404885    call        NotifyAnyExcept
 0040488A    jmp         ebx
>0040488C    jmp         @HandleFinally
 00404891    call        @GetTls
 00404896    mov         ecx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 0040489C    mov         edx,dword ptr [ecx]
 0040489E    mov         dword ptr [eax+0],edx;{RaiseListPtr:Pointer}
 004048A4    mov         eax,dword ptr [ecx+8]
>004048A7    jmp         TObject.Free
 004048AC    mov         eax,1
 004048B1    ret
*}
end;

//004048B4
procedure @HandleOnException;
begin
{*
 004048B4    mov         eax,dword ptr [esp+4]
 004048B8    test        dword ptr [eax+4],6
>004048BF    jne         00404A34
 004048C5    cmp         dword ptr [eax],0EEDFADE
>004048CB    je          004048EC
 004048CD    cld
 004048CE    call        @FpuInit
 004048D3    mov         edx,dword ptr ds:[56F00C];ExceptClsProc:Pointer
 004048D9    test        edx,edx
>004048DB    je          00404A34
 004048E1    call        edx
 004048E3    test        eax,eax
>004048E5    jne         004048F1
>004048E7    jmp         00404A34
 004048EC    mov         eax,dword ptr [eax+18]
 004048EF    mov         eax,dword ptr [eax]
 004048F1    mov         edx,dword ptr [esp+8]
 004048F5    push        ebx
 004048F6    push        esi
 004048F7    push        edi
 004048F8    push        ebp
 004048F9    mov         ecx,dword ptr [edx+4]
 004048FC    mov         ebx,dword ptr [ecx+5]
 004048FF    lea         esi,[ecx+9]
 00404902    mov         ebp,eax
 00404904    mov         eax,dword ptr [esi]
 00404906    test        eax,eax
>00404908    je          0040494D
 0040490A    mov         edi,ebp
>0040490C    jmp         00404910
 0040490E    mov         edi,dword ptr [edi]
 00404910    mov         eax,dword ptr [eax]
 00404912    cmp         eax,edi
>00404914    je          0040494D
 00404916    mov         ecx,dword ptr [eax-28]
 00404919    cmp         ecx,dword ptr [edi-28]
>0040491C    jne         00404935
 0040491E    mov         eax,dword ptr [eax-2C]
 00404921    mov         edx,dword ptr [edi-2C]
 00404924    xor         ecx,ecx
 00404926    mov         cl,byte ptr [eax]
 00404928    cmp         cl,byte ptr [edx]
>0040492A    jne         00404935
 0040492C    inc         eax
 0040492D    inc         edx
 0040492E    call        @AStrCmp
>00404933    je          0040494D
 00404935    mov         edi,dword ptr [edi-24]
 00404938    mov         eax,dword ptr [esi]
 0040493A    test        edi,edi
>0040493C    jne         0040490E
 0040493E    add         esi,8
 00404941    dec         ebx
>00404942    jne         00404904
 00404944    pop         ebp
 00404945    pop         edi
 00404946    pop         esi
 00404947    pop         ebx
>00404948    jmp         00404A34
 0040494D    mov         eax,dword ptr [esp+14]
 00404951    cmp         dword ptr [eax],0EEDFADE
 00404957    mov         edx,dword ptr [eax+18]
 0040495A    mov         ecx,dword ptr [eax+14]
>0040495D    je          004049A0
 0040495F    call        dword ptr ds:[56F010]
 00404965    mov         edx,dword ptr [esp+1C]
 00404969    call        NotifyNonDelphiException
 0040496E    cmp         byte ptr ds:[56B02C],0
>00404975    jbe         00404995
 00404977    cmp         byte ptr ds:[56B028],0;gvar_0056B028
>0040497E    ja          00404995
 00404980    lea         ecx,[esp+4]
 00404984    push        eax
 00404985    push        ecx
 00404986    call        kernel32.UnhandledExceptionFilter
 0040498B    cmp         eax,0
 0040498E    pop         eax
>0040498F    je          00404A34
 00404995    mov         edx,eax
 00404997    mov         eax,dword ptr [esp+14]
 0040499B    mov         ecx,dword ptr [eax+0C]
>0040499E    jmp         004049C7
 004049A0    cmp         byte ptr ds:[56B02C],1
>004049A7    jbe         004049C7
 004049A9    cmp         byte ptr ds:[56B028],0;gvar_0056B028
>004049B0    ja          004049C7
 004049B2    push        eax
 004049B3    lea         eax,[esp+8]
 004049B7    push        edx
 004049B8    push        ecx
 004049B9    push        eax
 004049BA    call        kernel32.UnhandledExceptionFilter
 004049BF    cmp         eax,0
 004049C2    pop         ecx
 004049C3    pop         edx
 004049C4    pop         eax
>004049C5    je          00404A34
 004049C7    xor         ebx,ebx
 004049C9    mov         ebx,dword ptr fs:[ebx]
 004049CC    push        ebx
 004049CD    push        eax
 004049CE    push        edx
 004049CF    push        ecx
 004049D0    mov         edx,dword ptr [esp+28]
 004049D4    or          dword ptr [eax+4],2
 004049D8    push        esi
 004049D9    push        0
 004049DB    push        eax
 004049DC    push        4049E8
 004049E1    push        edx
 004049E2    call        dword ptr ds:[56F018]
 004049E8    pop         ebx
 004049E9    mov         edi,dword ptr [esp+28]
 004049ED    call        @GetTls
 004049F2    push        dword ptr [eax+0];{RaiseListPtr:Pointer}
 004049F8    mov         dword ptr [eax+0],esp;{RaiseListPtr:Pointer}
 004049FE    mov         ebp,dword ptr [edi+8]
 00404A01    mov         dword ptr [edi+4],404A14
 00404A08    mov         eax,dword ptr [esp+8]
 00404A0C    call        NotifyOnExcept
 00404A11    jmp         dword ptr [ebx+4]
>00404A14    jmp         @HandleFinally
 00404A19    call        @GetTls
 00404A1E    mov         ecx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00404A24    mov         edx,dword ptr [ecx]
 00404A26    mov         dword ptr [eax+0],edx;{RaiseListPtr:Pointer}
 00404A2C    mov         eax,dword ptr [ecx+8]
>00404A2F    jmp         TObject.Free
 00404A34    mov         eax,1
 00404A39    ret
*}
end;

//00404A3C
procedure @HandleFinally;
begin
{*
 00404A3C    mov         eax,dword ptr [esp+4]
 00404A40    mov         edx,dword ptr [esp+8]
 00404A44    test        dword ptr [eax+4],6
>00404A4B    je          00404A6C
 00404A4D    mov         ecx,dword ptr [edx+4]
 00404A50    mov         dword ptr [edx+4],404A6C
 00404A57    push        ebx
 00404A58    push        esi
 00404A59    push        edi
 00404A5A    push        ebp
 00404A5B    mov         ebp,dword ptr [edx+8]
 00404A5E    add         ecx,5
 00404A61    call        NotifyExceptFinally
 00404A66    call        ecx
 00404A68    pop         ebp
 00404A69    pop         edi
 00404A6A    pop         esi
 00404A6B    pop         ebx
 00404A6C    mov         eax,1
 00404A71    ret
*}
end;

//00404A74
procedure @RaiseExcept;
begin
{*
 00404A74    or          eax,eax
>00404A76    jne         00404A82
 00404A78    mov         eax,0D8
 00404A7D    call        @RunError
 00404A82    pop         edx
 00404A83    push        esp
 00404A84    push        ebp
 00404A85    push        edi
 00404A86    push        esi
 00404A87    push        ebx
 00404A88    push        eax
 00404A89    push        edx
 00404A8A    push        esp
 00404A8B    push        7
 00404A8D    push        1
 00404A8F    push        0EEDFADE
 00404A94    push        edx
 00404A95    jmp         dword ptr ds:[56F014]
 00404A9B    ret
*}
end;

//00404A9C
procedure @RaiseAgain;
begin
{*
 00404A9C    mov         eax,dword ptr [esp+30]
 00404AA0    mov         dword ptr [eax+4],404AE7
 00404AA7    call        @GetTls
 00404AAC    mov         edx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00404AB2    mov         ecx,dword ptr [edx]
 00404AB4    mov         dword ptr [eax+0],ecx;{RaiseListPtr:Pointer}
 00404ABA    mov         eax,dword ptr [edx+0C]
 00404ABD    and         dword ptr [eax+4],0FFFFFFFD
 00404AC1    cmp         dword ptr [eax],0EEDFADE
>00404AC7    je          00404AD6
 00404AC9    mov         eax,dword ptr [edx+8]
 00404ACC    call        TObject.Free
 00404AD1    call        NotifyReRaise
 00404AD6    xor         eax,eax
 00404AD8    add         esp,14
 00404ADB    mov         edx,dword ptr fs:[eax]
 00404ADE    pop         ecx
 00404ADF    mov         edx,dword ptr [edx]
 00404AE1    mov         dword ptr [ecx],edx
 00404AE3    pop         ebp
 00404AE4    pop         edi
 00404AE5    pop         esi
 00404AE6    pop         ebx
 00404AE7    mov         eax,1
 00404AEC    ret
*}
end;

//00404AF0
procedure @DoneExcept;
begin
{*
 00404AF0    call        @GetTls
 00404AF5    mov         edx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00404AFB    mov         ecx,dword ptr [edx]
 00404AFD    mov         dword ptr [eax+0],ecx;{RaiseListPtr:Pointer}
 00404B03    mov         eax,dword ptr [edx+8]
 00404B06    call        TObject.Free
 00404B0B    pop         edx
 00404B0C    mov         esp,dword ptr [esp+2C]
 00404B10    xor         eax,eax
 00404B12    pop         ecx
 00404B13    mov         dword ptr fs:[eax],ecx
 00404B16    pop         eax
 00404B17    pop         ebp
 00404B18    call        NotifyTerminate
 00404B1D    jmp         edx
 00404B1F    ret
*}
end;

//00404B20
procedure @TryFinallyExit;
begin
{*
 00404B20    xor         edx,edx
 00404B22    mov         ecx,dword ptr [esp+8]
 00404B26    mov         eax,dword ptr [esp+4]
 00404B2A    add         ecx,5
 00404B2D    mov         dword ptr fs:[edx],eax
 00404B30    call        ecx
 00404B32    ret         0C
*}
end;

//00404B38
procedure MapToRunError(P:PExceptionRecord); stdcall;
begin
{*
 00404B38    push        ebp
 00404B39    mov         ebp,esp
 00404B3B    mov         edx,dword ptr [ebp+8]
 00404B3E    mov         eax,dword ptr [edx]
 00404B40    cmp         eax,0C0000092
>00404B45    jg          00404B73
>00404B47    je          00404BA5
 00404B49    cmp         eax,0C000008E
>00404B4E    jg          00404B65
>00404B50    je          00404BA9
 00404B52    sub         eax,0C0000005
>00404B57    je          00404BB5
 00404B59    sub         eax,87
>00404B5E    je          00404B9D
 00404B60    dec         eax
>00404B61    je          00404BB1
>00404B63    jmp         00404BC5
 00404B65    add         eax,3FFFFF71
 00404B6A    sub         eax,2
>00404B6D    jb          00404BA5
>00404B6F    je          00404BA1
>00404B71    jmp         00404BC5
 00404B73    cmp         eax,0C0000096
>00404B78    jg          00404B8B
>00404B7A    je          00404BB9
 00404B7C    sub         eax,0C0000093
>00404B81    je          00404BB1
 00404B83    dec         eax
>00404B84    je          00404B99
 00404B86    dec         eax
>00404B87    je          00404BAD
>00404B89    jmp         00404BC5
 00404B8B    sub         eax,0C00000FD
>00404B90    je          00404BC1
 00404B92    sub         eax,3D
>00404B95    je          00404BBD
>00404B97    jmp         00404BC5
 00404B99    mov         al,0C8
>00404B9B    jmp         00404BC7
 00404B9D    mov         al,0C9
>00404B9F    jmp         00404BC7
 00404BA1    mov         al,0CD
>00404BA3    jmp         00404BC7
 00404BA5    mov         al,0CF
>00404BA7    jmp         00404BC7
 00404BA9    mov         al,0C8
>00404BAB    jmp         00404BC7
 00404BAD    mov         al,0D7
>00404BAF    jmp         00404BC7
 00404BB1    mov         al,0CE
>00404BB3    jmp         00404BC7
 00404BB5    mov         al,0D8
>00404BB7    jmp         00404BC7
 00404BB9    mov         al,0DA
>00404BBB    jmp         00404BC7
 00404BBD    mov         al,0D9
>00404BBF    jmp         00404BC7
 00404BC1    mov         al,0CA
>00404BC3    jmp         00404BC7
 00404BC5    mov         al,0FF
 00404BC7    and         eax,0FF
 00404BCC    mov         edx,dword ptr [edx+0C]
 00404BCF    call        RunErrorAt
 00404BD4    pop         ebp
 00404BD5    ret         4
*}
end;

//00404BD8
procedure @ExceptionHandler;
begin
{*
 00404BD8    mov         eax,dword ptr [esp+4]
 00404BDC    test        dword ptr [eax+4],6
>00404BE3    jne         00404C72
 00404BE9    cmp         byte ptr ds:[56B028],0;gvar_0056B028
>00404BF0    ja          00404C01
 00404BF2    lea         eax,[esp+4]
 00404BF6    push        eax
 00404BF7    call        kernel32.UnhandledExceptionFilter
 00404BFC    cmp         eax,0
>00404BFF    je          00404C72
 00404C01    mov         eax,dword ptr [esp+4]
 00404C05    cld
 00404C06    call        @FpuInit
 00404C0B    mov         edx,dword ptr [esp+8]
 00404C0F    push        0
 00404C11    push        eax
 00404C12    push        404C1E
 00404C17    push        edx
 00404C18    call        dword ptr ds:[56F018]
 00404C1E    mov         ebx,dword ptr [esp+4]
 00404C22    cmp         dword ptr [ebx],0EEDFADE
 00404C28    mov         edx,dword ptr [ebx+14]
 00404C2B    mov         eax,dword ptr [ebx+18]
>00404C2E    je          00404C4D
 00404C30    mov         edx,dword ptr ds:[56F010];ExceptObjProc:Pointer
 00404C36    test        edx,edx
>00404C38    je          00404B38
 00404C3E    mov         eax,ebx
 00404C40    call        edx
 00404C42    test        eax,eax
>00404C44    je          00404B38
 00404C4A    mov         edx,dword ptr [ebx+0C]
 00404C4D    call        NotifyUnhandled
 00404C52    mov         ecx,dword ptr ds:[56F004];ExceptProc:Pointer
 00404C58    test        ecx,ecx
>00404C5A    je          00404C5E
 00404C5C    call        ecx
 00404C5E    mov         ecx,dword ptr [esp+4]
 00404C62    mov         eax,0D9
 00404C67    mov         edx,dword ptr [ecx+14]
 00404C6A    mov         dword ptr [esp],edx
>00404C6D    jmp         @RunError
 00404C72    xor         eax,eax
 00404C74    ret
*}
end;

//00404C78
procedure SetExceptionHandler;
begin
{*
 00404C78    xor         edx,edx
 00404C7A    lea         eax,[ebp-0C]
 00404C7D    mov         ecx,dword ptr fs:[edx]
 00404C80    mov         dword ptr fs:[edx],eax
 00404C83    mov         dword ptr [eax],ecx
 00404C85    mov         dword ptr [eax+4],404BD8;@ExceptionHandler
 00404C8C    mov         dword ptr [eax+8],ebp
 00404C8F    mov         [0056F63C],eax
 00404C94    ret
*}
end;

//00404C98
procedure UnsetExceptionHandler;
begin
{*
 00404C98    xor         edx,edx
 00404C9A    mov         eax,[0056F63C]
 00404C9F    test        eax,eax
>00404CA1    je          00404CBF
 00404CA3    mov         ecx,dword ptr fs:[edx]
 00404CA6    cmp         eax,ecx
>00404CA8    jne         00404CB2
 00404CAA    mov         eax,dword ptr [eax]
 00404CAC    mov         dword ptr fs:[edx],eax
 00404CAF    ret
 00404CB0    mov         ecx,dword ptr [ecx]
 00404CB2    cmp         ecx,0FFFFFFFF
>00404CB5    je          00404CBF
 00404CB7    cmp         dword ptr [ecx],eax
>00404CB9    jne         00404CB0
 00404CBB    mov         eax,dword ptr [eax]
 00404CBD    mov         dword ptr [ecx],eax
 00404CBF    ret
*}
end;

//00404CC0
procedure sub_00404CC0;
begin
{*
 00404CC0    push        ebp
 00404CC1    mov         ebp,esp
 00404CC3    add         esp,0FFFFFFF8
 00404CC6    push        ebx
 00404CC7    push        esi
 00404CC8    push        edi
 00404CC9    mov         esi,56F638;InitContext:TInitContext
 00404CCE    mov         eax,dword ptr [esi+8];TInitContext.InitTable:PackageInfo
 00404CD1    test        eax,eax
>00404CD3    je          00404D29
 00404CD5    mov         ebx,dword ptr [esi+0C];TInitContext.InitCount:Integer
 00404CD8    mov         eax,dword ptr [eax+4]
 00404CDB    mov         dword ptr [ebp-4],eax
 00404CDE    xor         eax,eax
 00404CE0    push        ebp
 00404CE1    push        404D15
 00404CE6    push        dword ptr fs:[eax]
 00404CE9    mov         dword ptr fs:[eax],esp
 00404CEC    test        ebx,ebx
>00404CEE    jle         00404D0B
 00404CF0    dec         ebx
 00404CF1    mov         dword ptr [esi+0C],ebx;TInitContext.InitCount:Integer
 00404CF4    mov         eax,dword ptr [ebp-4]
 00404CF7    mov         eax,dword ptr [eax+ebx*8+4]
 00404CFB    mov         dword ptr [ebp-8],eax
 00404CFE    cmp         dword ptr [ebp-8],0
>00404D02    je          00404D07
 00404D04    call        dword ptr [ebp-8]
 00404D07    test        ebx,ebx
>00404D09    jg          00404CF0
 00404D0B    xor         eax,eax
 00404D0D    pop         edx
 00404D0E    pop         ecx
 00404D0F    pop         ecx
 00404D10    mov         dword ptr fs:[eax],edx
>00404D13    jmp         00404D29
>00404D15    jmp         @HandleAnyException
 00404D1A    call        00404CC0
 00404D1F    call        @RaiseAgain
 00404D24    call        @DoneExcept
 00404D29    pop         edi
 00404D2A    pop         esi
 00404D2B    pop         ebx
 00404D2C    pop         ecx
 00404D2D    pop         ecx
 00404D2E    pop         ebp
 00404D2F    ret
*}
end;

//00404D30
procedure InitUnits;
begin
{*
 00404D30    push        ebp
 00404D31    mov         ebp,esp
 00404D33    add         esp,0FFFFFFF8
 00404D36    push        ebx
 00404D37    push        esi
 00404D38    push        edi
 00404D39    mov         edi,56F638;InitContext:TInitContext
 00404D3E    mov         eax,dword ptr [edi+8]
 00404D41    test        eax,eax
>00404D43    je          00404D99
 00404D45    mov         esi,dword ptr [eax]
 00404D47    xor         ebx,ebx
 00404D49    mov         eax,dword ptr [eax+4]
 00404D4C    mov         dword ptr [ebp-4],eax
 00404D4F    xor         eax,eax
 00404D51    push        ebp
 00404D52    push        404D85
 00404D57    push        dword ptr fs:[eax]
 00404D5A    mov         dword ptr fs:[eax],esp
 00404D5D    cmp         esi,ebx
>00404D5F    jle         00404D7B
 00404D61    mov         eax,dword ptr [ebp-4]
 00404D64    mov         eax,dword ptr [eax+ebx*8]
 00404D67    mov         dword ptr [ebp-8],eax
 00404D6A    inc         ebx
 00404D6B    mov         dword ptr [edi+0C],ebx
 00404D6E    cmp         dword ptr [ebp-8],0
>00404D72    je          00404D77
 00404D74    call        dword ptr [ebp-8]
 00404D77    cmp         esi,ebx
>00404D79    jg          00404D61
 00404D7B    xor         eax,eax
 00404D7D    pop         edx
 00404D7E    pop         ecx
 00404D7F    pop         ecx
 00404D80    mov         dword ptr fs:[eax],edx
>00404D83    jmp         00404D99
>00404D85    jmp         @HandleAnyException
 00404D8A    call        00404CC0
 00404D8F    call        @RaiseAgain
 00404D94    call        @DoneExcept
 00404D99    pop         edi
 00404D9A    pop         esi
 00404D9B    pop         ebx
 00404D9C    pop         ecx
 00404D9D    pop         ecx
 00404D9E    pop         ebp
 00404D9F    ret
*}
end;

//00404DA0
procedure @StartExe(InitTable:PackageInfo; Module:PLibModule);
begin
{*
 00404DA0    mov         dword ptr ds:[56F014],401290
 00404DAA    mov         dword ptr ds:[56F018],4012A0
 00404DB4    mov         [0056F640],eax
 00404DB9    xor         eax,eax
 00404DBB    mov         [0056F644],eax
 00404DC0    mov         dword ptr ds:[56F648],edx
 00404DC6    mov         eax,dword ptr [edx+4]
 00404DC9    mov         [0056F030],eax;MainInstance:Cardinal
 00404DCE    call        SetExceptionHandler
 00404DD3    mov         byte ptr ds:[56F038],0;IsLibrary:Boolean
 00404DDA    call        InitUnits
 00404DDF    ret
*}
end;

//00404DE0
procedure @InitResStrings;
begin
{*
 00404DE0    push        ebx
 00404DE1    xor         ebx,ebx
 00404DE3    push        edi
 00404DE4    push        esi
 00404DE5    mov         edi,dword ptr [eax+ebx]
 00404DE8    lea         esi,[eax+ebx+4]
 00404DEC    mov         eax,dword ptr [esi+4]
 00404DEF    mov         edx,dword ptr [esi]
 00404DF1    add         eax,ebx
 00404DF3    add         edx,ebx
 00404DF5    call        LoadResString
 00404DFA    add         esi,8
 00404DFD    dec         edi
>00404DFE    jne         00404DEC
 00404E00    pop         esi
 00404E01    pop         edi
 00404E02    pop         ebx
 00404E03    ret
*}
end;

//00404E04
procedure @InitResStringImports;
begin
{*
 00404E04    push        ebx
 00404E05    xor         ebx,ebx
 00404E07    push        edi
 00404E08    push        esi
 00404E09    mov         edi,dword ptr [eax+ebx]
 00404E0C    lea         esi,[eax+ebx+4]
 00404E10    mov         eax,dword ptr [esi+4]
 00404E13    mov         edx,dword ptr [esi]
 00404E15    mov         eax,dword ptr [eax+ebx]
 00404E18    add         edx,ebx
 00404E1A    call        LoadResString
 00404E1F    add         esi,8
 00404E22    dec         edi
>00404E23    jne         00404E10
 00404E25    pop         esi
 00404E26    pop         edi
 00404E27    pop         ebx
 00404E28    ret
*}
end;

//00404E2C
procedure @InitImports;
begin
{*
 00404E2C    push        ebx
 00404E2D    xor         ebx,ebx
 00404E2F    push        edi
 00404E30    push        esi
 00404E31    mov         edi,dword ptr [eax+ebx]
 00404E34    lea         esi,[eax+ebx+4]
 00404E38    mov         eax,dword ptr [esi+4]
 00404E3B    mov         edx,dword ptr [esi]
 00404E3D    mov         eax,dword ptr [eax+ebx]
 00404E40    add         eax,dword ptr [esi+8]
 00404E43    mov         dword ptr [edx+ebx],eax
 00404E46    add         esi,0C
 00404E49    dec         edi
>00404E4A    jne         00404E38
 00404E4C    pop         esi
 00404E4D    pop         edi
 00404E4E    pop         ebx
 00404E4F    ret
*}
end;

//00404E50
procedure MakeErrorMessage;
begin
{*
 00404E50    push        ebx
 00404E51    push        esi
 00404E52    push        edi
 00404E53    mov         esi,56B090
 00404E58    mov         cl,10
 00404E5A    mov         ebx,dword ptr ds:[56B000]
 00404E60    mov         eax,ebx
 00404E62    mov         edi,0A
 00404E67    cdq
 00404E68    idiv        eax,edi
 00404E6A    add         dl,30
 00404E6D    xor         eax,eax
 00404E6F    mov         al,cl
 00404E71    mov         byte ptr [esi+eax],dl
 00404E74    mov         eax,ebx
 00404E76    mov         ebx,0A
 00404E7B    cdq
 00404E7C    idiv        eax,ebx
 00404E7E    mov         ebx,eax
 00404E80    dec         ecx
 00404E81    test        ebx,ebx
>00404E83    jne         00404E60
 00404E85    mov         cl,1C
 00404E87    mov         eax,[0056B004]
 00404E8C    mov         edx,eax
 00404E8E    and         edx,0F
 00404E91    mov         dl,byte ptr [edx+56B0B0]
 00404E97    xor         ebx,ebx
 00404E99    mov         bl,cl
 00404E9B    mov         byte ptr [esi+ebx],dl
 00404E9E    shr         eax,4
 00404EA1    dec         ecx
 00404EA2    test        eax,eax
>00404EA4    jne         00404E8C
 00404EA6    pop         edi
 00404EA7    pop         esi
 00404EA8    pop         ebx
 00404EA9    ret
*}
end;

//00404EAC
procedure ExitDll;
begin
{*
 00404EAC    xor         eax,eax
 00404EAE    xchg        eax,dword ptr ds:[56B000]
 00404EB4    neg         eax
 00404EB6    sbb         eax,eax
 00404EB8    inc         eax
 00404EB9    mov         edi,56F638;InitContext:TInitContext
 00404EBE    mov         ebx,dword ptr [edi+18]
 00404EC1    mov         ebp,dword ptr [edi+14]
 00404EC4    push        dword ptr [edi+1C]
 00404EC7    push        dword ptr [edi+20]
 00404ECA    mov         esi,dword ptr [edi]
 00404ECC    mov         ecx,0B
 00404ED1    rep movs    dword ptr [edi],dword ptr [esi]
 00404ED3    pop         edi
 00404ED4    pop         esi
 00404ED5    leave
 00404ED6    ret         0C
*}
end;

//00404EDC
procedure WriteErrorMessage;
begin
{*
 00404EDC    push        ecx
 00404EDD    cmp         byte ptr ds:[56F04C],0;IsConsole:Boolean
>00404EE4    je          00404F3D
 00404EE6    cmp         word ptr ds:[56F220],0D7B2
>00404EEF    jne         00404F05
 00404EF1    cmp         dword ptr ds:[56F228],0
>00404EF8    jbe         00404F05
 00404EFA    mov         eax,56F21C;Output:Text
 00404EFF    call        dword ptr ds:[56F238]
 00404F05    push        0
 00404F07    lea         eax,[esp+4]
 00404F0B    push        eax
 00404F0C    push        1E
 00404F0E    push        56B090
 00404F13    push        0F5
 00404F15    call        kernel32.GetStdHandle
 00404F1A    push        eax
 00404F1B    call        kernel32.WriteFile
 00404F20    push        0
 00404F22    lea         eax,[esp+4]
 00404F26    push        eax
 00404F27    push        2
 00404F29    push        404F64;#13+#10
 00404F2E    push        0F5
 00404F30    call        kernel32.GetStdHandle
 00404F35    push        eax
 00404F36    call        kernel32.WriteFile
 00404F3B    pop         edx
 00404F3C    ret
 00404F3D    cmp         byte ptr ds:[56B030],0
>00404F44    jne         00404F59
 00404F46    push        0
 00404F48    push        56B088
 00404F4D    push        56B090
 00404F52    push        0
 00404F54    call        user32.MessageBoxA
 00404F59    pop         edx
 00404F5A    ret
*}
end;

//00404F68
procedure @Halt0;
begin
{*
 00404F68    push        ebx
 00404F69    push        esi
 00404F6A    push        edi
 00404F6B    push        ebp
 00404F6C    push        ecx
 00404F6D    mov         ebx,56F638;InitContext:TInitContext
 00404F72    mov         esi,56F048;gvar_0056F048
 00404F77    cmp         byte ptr [ebx+28],0
>00404F7B    jne         00404F93
 00404F7D    cmp         dword ptr [esi],0
>00404F80    je          00404F93
 00404F82    mov         eax,dword ptr [esi]
 00404F84    mov         dword ptr [esp],eax
 00404F87    xor         eax,eax
 00404F89    mov         dword ptr [esi],eax
 00404F8B    call        dword ptr [esp]
 00404F8E    cmp         dword ptr [esi],0
>00404F91    jne         00404F82
 00404F93    cmp         dword ptr ds:[56B004],0
>00404F9A    je          00404FAD
 00404F9C    call        MakeErrorMessage
 00404FA1    call        WriteErrorMessage
 00404FA6    xor         eax,eax
 00404FA8    mov         [0056B004],eax
 00404FAD    cmp         byte ptr [ebx+28],2
>00404FB1    jne         00404FC1
 00404FB3    cmp         dword ptr ds:[56B000],0
>00404FBA    jne         00404FC1
 00404FBC    xor         eax,eax
 00404FBE    mov         dword ptr [ebx+0C],eax
 00404FC1    call        00404CC0
 00404FC6    cmp         byte ptr [ebx+28],1
>00404FCA    jbe         00404FD5
 00404FCC    cmp         dword ptr ds:[56B000],0
>00404FD3    je          00404FF8
 00404FD5    mov         edi,dword ptr [ebx+10]
 00404FD8    test        edi,edi
>00404FDA    je          00404FF8
 00404FDC    mov         eax,edi
 00404FDE    call        00406CBC
 00404FE3    mov         ebp,dword ptr [ebx+10]
 00404FE6    mov         esi,dword ptr [ebp+10]
 00404FE9    cmp         esi,dword ptr [ebp+4]
>00404FEC    je          00404FF8
 00404FEE    test        esi,esi
>00404FF0    je          00404FF8
 00404FF2    push        esi
 00404FF3    call        kernel32.FreeLibrary
 00404FF8    call        UnsetExceptionHandler
 00404FFD    cmp         byte ptr [ebx+28],1
>00405001    jne         00405006
 00405003    call        dword ptr [ebx+24]
 00405006    cmp         byte ptr [ebx+28],0
>0040500A    je          00405011
 0040500C    call        ExitDll
 00405011    cmp         dword ptr [ebx],0
>00405014    jne         00405030
 00405016    cmp         dword ptr ds:[56F028],0
>0040501D    je          00405025
 0040501F    call        dword ptr ds:[56F028]
 00405025    mov         eax,[0056B000]
 0040502A    push        eax
 0040502B    call        kernel32.ExitProcess
 00405030    mov         eax,dword ptr [ebx]
 00405032    mov         esi,eax
 00405034    mov         edi,ebx
 00405036    mov         ecx,0B
 0040503B    rep movs    dword ptr [edi],dword ptr [esi]
>0040503D    jmp         00404FAD
 00405042    pop         edx
 00405043    pop         ebp
 00405044    pop         edi
 00405045    pop         esi
 00405046    pop         ebx
 00405047    ret
*}
end;

//00405048
procedure @Halt(Code:Integer);
begin
{*
 00405048    mov         [0056B000],eax
 0040504D    call        @Halt0
 00405052    ret
*}
end;

//00405054
procedure @RunError(errorCode:Byte);
begin
{*
 00405054    pop         dword ptr ds:[56B004]
>0040505A    jmp         @Halt
 0040505F    ret
*}
end;

//00405060
procedure @Assert(Message:AnsiString; Filename:AnsiString; LineNumber:Integer);
begin
{*
 00405060    push        ebx
 00405061    cmp         dword ptr ds:[56F024],0;AssertErrorProc:TAssertErrorProc
>00405068    jne         00405073
 0040506A    mov         al,15
 0040506C    call        Error
 00405071    pop         ebx
 00405072    ret
 00405073    push        dword ptr [esp+4]
 00405077    call        dword ptr ds:[56F024]
 0040507D    pop         ebx
 0040507E    ret
*}
end;

//00405080
procedure @LStrClr(var S:AnsiString);
begin
{*
 00405080    mov         edx,dword ptr [eax]
 00405082    test        edx,edx
>00405084    je          004050A2
 00405086    mov         dword ptr [eax],0
 0040508C    mov         ecx,dword ptr [edx-8]
 0040508F    dec         ecx
>00405090    jl          004050A2
 00405092    lock dec    dword ptr [edx-8]
>00405096    jne         004050A2
 00405098    push        eax
 00405099    lea         eax,[edx-8]
 0040509C    call        @FreeMem
 004050A1    pop         eax
 004050A2    ret
*}
end;

//004050A4
procedure @LStrArrayClr(var StrArray:Pointer; Count:Integer);
begin
{*
 004050A4    push        ebx
 004050A5    push        esi
 004050A6    mov         ebx,eax
 004050A8    mov         esi,edx
 004050AA    mov         edx,dword ptr [ebx]
 004050AC    test        edx,edx
>004050AE    je          004050CA
 004050B0    mov         dword ptr [ebx],0
 004050B6    mov         ecx,dword ptr [edx-8]
 004050B9    dec         ecx
>004050BA    jl          004050CA
 004050BC    lock dec    dword ptr [edx-8]
>004050C0    jne         004050CA
 004050C2    lea         eax,[edx-8]
 004050C5    call        @FreeMem
 004050CA    add         ebx,4
 004050CD    dec         esi
>004050CE    jne         004050AA
 004050D0    pop         esi
 004050D1    pop         ebx
 004050D2    ret
*}
end;

//004050D4
procedure @LStrAsg(var Dest:AnsiString; Source:AnsiString);
begin
{*
 004050D4    test        edx,edx
>004050D6    je          004050FC
 004050D8    mov         ecx,dword ptr [edx-8]
 004050DB    inc         ecx
>004050DC    jg          004050F8
 004050DE    push        eax
 004050DF    push        edx
 004050E0    mov         eax,dword ptr [edx-4]
 004050E3    call        @NewAnsiString
 004050E8    mov         edx,eax
 004050EA    pop         eax
 004050EB    push        edx
 004050EC    mov         ecx,dword ptr [eax-4]
 004050EF    call        Move
 004050F4    pop         edx
 004050F5    pop         eax
>004050F6    jmp         004050FC
 004050F8    lock inc    dword ptr [edx-8]
 004050FC    xchg        edx,dword ptr [eax]
 004050FE    test        edx,edx
>00405100    je          00405116
 00405102    mov         ecx,dword ptr [edx-8]
 00405105    dec         ecx
>00405106    jl          00405116
 00405108    lock dec    dword ptr [edx-8]
>0040510C    jne         00405116
 0040510E    lea         eax,[edx-8]
 00405111    call        @FreeMem
 00405116    ret
*}
end;

//00405118
procedure @LStrLAsg(var Dest:AnsiString; const Source:AnsiString);
begin
{*
 00405118    test        edx,edx
>0040511A    je          00405126
 0040511C    mov         ecx,dword ptr [edx-8]
 0040511F    inc         ecx
>00405120    jle         00405126
 00405122    lock inc    dword ptr [edx-8]
 00405126    xchg        edx,dword ptr [eax]
 00405128    test        edx,edx
>0040512A    je          00405140
 0040512C    mov         ecx,dword ptr [edx-8]
 0040512F    dec         ecx
>00405130    jl          00405140
 00405132    lock dec    dword ptr [edx-8]
>00405136    jne         00405140
 00405138    lea         eax,[edx-8]
 0040513B    call        @FreeMem
 00405140    ret
*}
end;

//00405144
function @NewAnsiString(length:Integer):Pointer;
begin
{*
 00405144    test        eax,eax
>00405146    jle         0040516C
 00405148    push        eax
 00405149    add         eax,0A
 0040514C    and         eax,0FFFFFFFE
 0040514F    push        eax
 00405150    call        @GetMem
 00405155    pop         edx
 00405156    mov         word ptr [edx+eax-2],0
 0040515D    add         eax,8
 00405160    pop         edx
 00405161    mov         dword ptr [eax-4],edx
 00405164    mov         dword ptr [eax-8],1
 0040516B    ret
 0040516C    xor         eax,eax
 0040516E    ret
*}
end;

//00405170
procedure @LStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);
begin
{*
 00405170    push        ebx
 00405171    push        esi
 00405172    push        edi
 00405173    mov         ebx,eax
 00405175    mov         esi,edx
 00405177    mov         edi,ecx
 00405179    mov         eax,edi
 0040517B    call        @NewAnsiString
 00405180    mov         ecx,edi
 00405182    mov         edi,eax
 00405184    test        esi,esi
>00405186    je          00405191
 00405188    mov         edx,eax
 0040518A    mov         eax,esi
 0040518C    call        Move
 00405191    mov         eax,ebx
 00405193    call        @LStrClr
 00405198    mov         dword ptr [ebx],edi
 0040519A    pop         edi
 0040519B    pop         esi
 0040519C    pop         ebx
 0040519D    ret
*}
end;

//004051A0
function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer):Integer;
begin
{*
 004051A0    push        ebp
 004051A1    mov         ebp,esp
 004051A3    push        0
 004051A5    push        0
 004051A7    push        edx
 004051A8    push        eax
 004051A9    mov         eax,dword ptr [ebp+8]
 004051AC    push        eax
 004051AD    push        ecx
 004051AE    push        0
 004051B0    mov         eax,[0056F5C0];DefaultUserCodePage:Integer
 004051B5    push        eax
 004051B6    call        kernel32.WideCharToMultiByte
 004051BB    pop         ebp
 004051BC    ret         4
*}
end;

//004051C0
function WCharFromChar(WCharDest:PWideChar; DestChars:Integer; const CharSource:PAnsiChar; SrcBytes:Integer):Integer;
begin
{*
 004051C0    push        ebp
 004051C1    mov         ebp,esp
 004051C3    push        edx
 004051C4    push        eax
 004051C5    mov         eax,dword ptr [ebp+8]
 004051C8    push        eax
 004051C9    push        ecx
 004051CA    push        0
 004051CC    mov         eax,[0056F5C0];DefaultUserCodePage:Integer
 004051D1    push        eax
 004051D2    call        kernel32.MultiByteToWideChar
 004051D7    pop         ebp
 004051D8    ret         4
*}
end;

//004051DC
procedure @LStrFromPWCharLen(var Dest:AnsiString; Source:PWideChar; Length:Integer);
begin
{*
 004051DC    push        ebx
 004051DD    push        esi
 004051DE    push        edi
 004051DF    push        ebp
 004051E0    add         esp,0FFFFF004
 004051E6    push        eax
 004051E7    add         esp,0FFFFFFFC
 004051EA    mov         esi,ecx
 004051EC    mov         dword ptr [esp],edx
 004051EF    mov         edi,eax
 004051F1    test        esi,esi
>004051F3    jg          004051FE
 004051F5    mov         eax,edi
 004051F7    call        @LStrClr
>004051FC    jmp         0040525D
 004051FE    lea         ebp,[esi+1]
 00405201    cmp         ebp,7FF
>00405207    jge         00405231
 00405209    push        esi
 0040520A    lea         eax,[esp+8]
 0040520E    mov         ecx,dword ptr [esp+4]
 00405212    mov         edx,0FFF
 00405217    call        CharFromWChar
 0040521C    mov         ebx,eax
 0040521E    test        ebx,ebx
>00405220    jl          00405231
 00405222    lea         edx,[esp+4]
 00405226    mov         eax,edi
 00405228    mov         ecx,ebx
 0040522A    call        @LStrFromPCharLen
>0040522F    jmp         0040525D
 00405231    mov         ebx,ebp
 00405233    add         ebx,ebx
 00405235    mov         eax,edi
 00405237    mov         edx,ebx
 00405239    call        @LStrSetLength
 0040523E    push        esi
 0040523F    mov         eax,dword ptr [edi]
 00405241    mov         ecx,dword ptr [esp+4]
 00405245    mov         edx,ebx
 00405247    call        CharFromWChar
 0040524C    mov         ebx,eax
 0040524E    test        ebx,ebx
>00405250    jge         00405254
 00405252    xor         ebx,ebx
 00405254    mov         eax,edi
 00405256    mov         edx,ebx
 00405258    call        @LStrSetLength
 0040525D    add         esp,1004
 00405263    pop         ebp
 00405264    pop         edi
 00405265    pop         esi
 00405266    pop         ebx
 00405267    ret
*}
end;

//00405268
procedure @LStrFromChar(var Dest:AnsiString; Source:AnsiChar);
begin
{*
 00405268    push        edx
 00405269    mov         edx,esp
 0040526B    mov         ecx,1
 00405270    call        @LStrFromPCharLen
 00405275    pop         edx
 00405276    ret
*}
end;

//00405278
procedure @LStrFromPChar(var Dest:AnsiString; Source:PAnsiChar);
begin
{*
 00405278    xor         ecx,ecx
 0040527A    test        edx,edx
>0040527C    je          0040529F
 0040527E    push        edx
 0040527F    cmp         cl,byte ptr [edx]
>00405281    je          0040529A
 00405283    cmp         cl,byte ptr [edx+1]
>00405286    je          00405299
 00405288    cmp         cl,byte ptr [edx+2]
>0040528B    je          00405298
 0040528D    cmp         cl,byte ptr [edx+3]
>00405290    je          00405297
 00405292    add         edx,4
>00405295    jmp         0040527F
 00405297    inc         edx
 00405298    inc         edx
 00405299    inc         edx
 0040529A    mov         ecx,edx
 0040529C    pop         edx
 0040529D    sub         ecx,edx
>0040529F    jmp         @LStrFromPCharLen
 004052A4    ret
*}
end;

//004052A8
procedure @LStrFromPWChar(var Dest:AnsiString; Source:PWideChar);
begin
{*
 004052A8    xor         ecx,ecx
 004052AA    test        edx,edx
>004052AC    je          004052DB
 004052AE    push        edx
 004052AF    cmp         cx,word ptr [edx]
>004052B2    je          004052D4
 004052B4    cmp         cx,word ptr [edx+2]
>004052B8    je          004052D1
 004052BA    cmp         cx,word ptr [edx+4]
>004052BE    je          004052CE
 004052C0    cmp         cx,word ptr [edx+6]
>004052C4    je          004052CB
 004052C6    add         edx,8
>004052C9    jmp         004052AF
 004052CB    add         edx,2
 004052CE    add         edx,2
 004052D1    add         edx,2
 004052D4    mov         ecx,edx
 004052D6    pop         edx
 004052D7    sub         ecx,edx
 004052D9    shr         ecx,1
>004052DB    jmp         @LStrFromPWCharLen
 004052E0    ret
*}
end;

//004052E4
procedure @LStrFromString(var Dest:AnsiString; const Source:ShortString);
begin
{*
 004052E4    xor         ecx,ecx
 004052E6    mov         cl,byte ptr [edx]
 004052E8    inc         edx
>004052E9    jmp         @LStrFromPCharLen
 004052EE    ret
*}
end;

//004052F0
procedure @LStrFromArray(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);
begin
{*
 004052F0    push        edi
 004052F1    push        eax
 004052F2    push        ecx
 004052F3    mov         edi,edx
 004052F5    xor         eax,eax
 004052F7    repne scas  byte ptr [edi]
>004052F9    jne         004052FD
 004052FB    not         ecx
 004052FD    pop         eax
 004052FE    add         ecx,eax
 00405300    pop         eax
 00405301    pop         edi
>00405302    jmp         @LStrFromPCharLen
 00405307    ret
*}
end;

//00405308
procedure @LStrFromWStr(var Dest:AnsiString; const Source:WideString);
begin
{*
 00405308    xor         ecx,ecx
 0040530A    test        edx,edx
>0040530C    je          00405313
 0040530E    mov         ecx,dword ptr [edx-4]
 00405311    shr         ecx,1
>00405313    jmp         @LStrFromPWCharLen
 00405318    ret
*}
end;

//0040531C
procedure @LStrToString(var Dest:ShortString; const Source:AnsiString; MaxLen:Integer);
begin
{*
 0040531C    push        ebx
 0040531D    test        edx,edx
>0040531F    je          00405339
 00405321    mov         ebx,dword ptr [edx-4]
 00405324    test        ebx,ebx
>00405326    je          00405339
 00405328    cmp         ecx,ebx
>0040532A    jl          0040532E
 0040532C    mov         ecx,ebx
 0040532E    mov         byte ptr [eax],cl
 00405330    inc         eax
 00405331    xchg        eax,edx
 00405332    call        Move
 00405337    pop         ebx
 00405338    ret
 00405339    mov         byte ptr [eax],0
 0040533C    pop         ebx
 0040533D    ret
*}
end;

//00405340
function @LStrLen(S:AnsiString):Integer;
begin
{*
 00405340    test        eax,eax
>00405342    je          00405347
 00405344    mov         eax,dword ptr [eax-4]
 00405347    ret
*}
end;

//00405348
procedure @LStrCat(var Dest:AnsiString; Source:AnsiString);
begin
{*
 00405348    test        edx,edx
>0040534A    je          0040538B
 0040534C    mov         ecx,dword ptr [eax]
 0040534E    test        ecx,ecx
>00405350    je          004050D4
 00405356    push        ebx
 00405357    push        esi
 00405358    push        edi
 00405359    mov         ebx,eax
 0040535B    mov         esi,edx
 0040535D    mov         edi,dword ptr [ecx-4]
 00405360    mov         edx,dword ptr [esi-4]
 00405363    add         edx,edi
 00405365    cmp         esi,ecx
>00405367    je          00405380
 00405369    call        @LStrSetLength
 0040536E    mov         eax,esi
 00405370    mov         ecx,dword ptr [esi-4]
 00405373    mov         edx,dword ptr [ebx]
 00405375    add         edx,edi
 00405377    call        Move
 0040537C    pop         edi
 0040537D    pop         esi
 0040537E    pop         ebx
 0040537F    ret
 00405380    call        @LStrSetLength
 00405385    mov         eax,dword ptr [ebx]
 00405387    mov         ecx,edi
>00405389    jmp         00405373
 0040538B    ret
*}
end;

//0040538C
procedure @LStrCat3(var Dest:AnsiString; Source1:AnsiString; Source2:AnsiString);
begin
{*
 0040538C    test        edx,edx
>0040538E    je          004053F1
 00405390    test        ecx,ecx
>00405392    je          004050D4
 00405398    cmp         edx,dword ptr [eax]
>0040539A    je          004053F8
 0040539C    cmp         ecx,dword ptr [eax]
>0040539E    je          004053AE
 004053A0    push        eax
 004053A1    push        ecx
 004053A2    call        @LStrAsg
 004053A7    pop         edx
 004053A8    pop         eax
>004053A9    jmp         @LStrCat
 004053AE    push        ebx
 004053AF    push        esi
 004053B0    push        edi
 004053B1    mov         ebx,edx
 004053B3    mov         esi,ecx
 004053B5    push        eax
 004053B6    mov         eax,dword ptr [ebx-4]
 004053B9    add         eax,dword ptr [esi-4]
 004053BC    call        @NewAnsiString
 004053C1    mov         edi,eax
 004053C3    mov         edx,eax
 004053C5    mov         eax,ebx
 004053C7    mov         ecx,dword ptr [ebx-4]
 004053CA    call        Move
 004053CF    mov         edx,edi
 004053D1    mov         eax,esi
 004053D3    mov         ecx,dword ptr [esi-4]
 004053D6    add         edx,dword ptr [ebx-4]
 004053D9    call        Move
 004053DE    pop         eax
 004053DF    mov         edx,edi
 004053E1    test        edi,edi
>004053E3    je          004053E8
 004053E5    dec         dword ptr [edi-8]
 004053E8    call        @LStrAsg
 004053ED    pop         edi
 004053EE    pop         esi
 004053EF    pop         ebx
 004053F0    ret
 004053F1    mov         edx,ecx
>004053F3    jmp         @LStrAsg
 004053F8    mov         edx,ecx
>004053FA    jmp         @LStrCat
 004053FF    ret
*}
end;

//00405400
procedure @LStrCatN(var Dest:AnsiString; ArgCnt:Integer);
begin
{*
 00405400    push        ebx
 00405401    push        esi
 00405402    push        edi
 00405403    push        edx
 00405404    push        eax
 00405405    mov         ebx,edx
 00405407    xor         edi,edi
 00405409    mov         ecx,dword ptr [esp+edx*4+14]
 0040540D    test        ecx,ecx
>0040540F    je          0040541D
 00405411    cmp         dword ptr [eax],ecx
>00405413    jne         0040541D
 00405415    mov         edi,ecx
 00405417    mov         eax,dword ptr [ecx-4]
 0040541A    dec         edx
>0040541B    jmp         0040541F
 0040541D    xor         eax,eax
 0040541F    mov         ecx,dword ptr [esp+edx*4+14]
 00405423    test        ecx,ecx
>00405425    je          00405430
 00405427    add         eax,dword ptr [ecx-4]
 0040542A    cmp         edi,ecx
>0040542C    jne         00405430
 0040542E    xor         edi,edi
 00405430    dec         edx
>00405431    jne         0040541F
 00405433    test        edi,edi
>00405435    je          0040544E
 00405437    mov         edx,eax
 00405439    mov         eax,dword ptr [esp]
 0040543C    mov         esi,dword ptr [edi-4]
 0040543F    call        @LStrSetLength
 00405444    mov         edi,dword ptr [esp]
 00405447    push        dword ptr [edi]
 00405449    add         esi,dword ptr [edi]
 0040544B    dec         ebx
>0040544C    jmp         00405456
 0040544E    call        @NewAnsiString
 00405453    push        eax
 00405454    mov         esi,eax
 00405456    mov         eax,dword ptr [esp+ebx*4+18]
 0040545A    mov         edx,esi
 0040545C    test        eax,eax
>0040545E    je          0040546A
 00405460    mov         ecx,dword ptr [eax-4]
 00405463    add         esi,ecx
 00405465    call        Move
 0040546A    dec         ebx
>0040546B    jne         00405456
 0040546D    pop         edx
 0040546E    pop         eax
 0040546F    test        edi,edi
>00405471    jne         0040547F
 00405473    test        edx,edx
>00405475    je          0040547A
 00405477    dec         dword ptr [edx-8]
 0040547A    call        @LStrAsg
 0040547F    pop         edx
 00405480    pop         edi
 00405481    pop         esi
 00405482    pop         ebx
 00405483    pop         eax
 00405484    lea         esp,[esp+edx*4]
 00405487    jmp         eax
 00405489    ret
*}
end;

//0040548C
{*function @LStrCmp(Left:AnsiString; Right:AnsiString):?;
begin
 0040548C    push        ebx
 0040548D    push        esi
 0040548E    push        edi
 0040548F    mov         esi,eax
 00405491    mov         edi,edx
 00405493    cmp         eax,edx
>00405495    je          0040552A
 0040549B    test        esi,esi
>0040549D    je          00405507
 0040549F    test        edi,edi
>004054A1    je          0040550E
 004054A3    mov         eax,dword ptr [esi-4]
 004054A6    mov         edx,dword ptr [edi-4]
 004054A9    sub         eax,edx
>004054AB    ja          004054AF
 004054AD    add         edx,eax
 004054AF    push        edx
 004054B0    shr         edx,2
>004054B3    je          004054DB
 004054B5    mov         ecx,dword ptr [esi]
 004054B7    mov         ebx,dword ptr [edi]
 004054B9    cmp         ecx,ebx
>004054BB    jne         00405515
 004054BD    dec         edx
>004054BE    je          004054D5
 004054C0    mov         ecx,dword ptr [esi+4]
 004054C3    mov         ebx,dword ptr [edi+4]
 004054C6    cmp         ecx,ebx
>004054C8    jne         00405515
 004054CA    add         esi,8
 004054CD    add         edi,8
 004054D0    dec         edx
>004054D1    jne         004054B5
>004054D3    jmp         004054DB
 004054D5    add         esi,4
 004054D8    add         edi,4
 004054DB    pop         edx
 004054DC    and         edx,3
>004054DF    je          00405503
 004054E1    mov         ecx,dword ptr [esi]
 004054E3    mov         ebx,dword ptr [edi]
 004054E5    cmp         cl,bl
>004054E7    jne         0040552A
 004054E9    dec         edx
>004054EA    je          00405503
 004054EC    cmp         ch,bh
>004054EE    jne         0040552A
 004054F0    dec         edx
>004054F1    je          00405503
 004054F3    and         ebx,0FF0000
 004054F9    and         ecx,0FF0000
 004054FF    cmp         ecx,ebx
>00405501    jne         0040552A
 00405503    add         eax,eax
>00405505    jmp         0040552A
 00405507    mov         edx,dword ptr [edi-4]
 0040550A    sub         eax,edx
>0040550C    jmp         0040552A
 0040550E    mov         eax,dword ptr [esi-4]
 00405511    sub         eax,edx
>00405513    jmp         0040552A
 00405515    pop         edx
 00405516    cmp         cl,bl
>00405518    jne         0040552A
 0040551A    cmp         ch,bh
>0040551C    jne         0040552A
 0040551E    shr         ecx,10
 00405521    shr         ebx,10
 00405524    cmp         cl,bl
>00405526    jne         0040552A
 00405528    cmp         ch,bh
 0040552A    pop         edi
 0040552B    pop         esi
 0040552C    pop         ebx
 0040552D    ret
end;*}

//00405530
function @LStrAddRef(var S:AnsiString):Pointer;
begin
{*
 00405530    test        eax,eax
>00405532    je          0040553E
 00405534    mov         edx,dword ptr [eax-8]
 00405537    inc         edx
>00405538    jle         0040553E
 0040553A    lock inc    dword ptr [eax-8]
 0040553E    ret
*}
end;

//00405540
function @LStrToPChar(S:AnsiString):PChar;
begin
{*
 00405540    test        eax,eax
>00405542    je          00405546
 00405544    ret
 00405545    add         byte ptr [eax+405545],bh
 0040554B    ret
*}
end;

//0040554C
function InternalUniqueString(var str:void ):Pointer;
begin
{*
 0040554C    mov         edx,dword ptr [eax]
 0040554E    test        edx,edx
>00405550    je          0040558A
 00405552    mov         ecx,dword ptr [edx-8]
 00405555    dec         ecx
>00405556    je          0040558A
 00405558    push        ebx
 00405559    mov         ebx,eax
 0040555B    mov         eax,dword ptr [edx-4]
 0040555E    call        @NewAnsiString
 00405563    mov         edx,eax
 00405565    mov         eax,dword ptr [ebx]
 00405567    mov         dword ptr [ebx],edx
 00405569    push        eax
 0040556A    mov         ecx,dword ptr [eax-4]
 0040556D    call        Move
 00405572    pop         eax
 00405573    mov         ecx,dword ptr [eax-8]
 00405576    dec         ecx
>00405577    jl          00405587
 00405579    lock dec    dword ptr [eax-8]
>0040557D    jne         00405587
 0040557F    lea         eax,[eax-8]
 00405582    call        @FreeMem
 00405587    mov         edx,dword ptr [ebx]
 00405589    pop         ebx
 0040558A    mov         eax,edx
 0040558C    ret
*}
end;

//00405590
procedure UniqueString(var str:AnsiString);
begin
{*
>00405590    jmp         InternalUniqueString
 00405595    ret
*}
end;

//00405598
{*function sub_00405598:?;
begin
>00405598    jmp         InternalUniqueString
end;*}

//004055A0
function @LStrCopy(const S:AnsiString; Index:Integer; Count:Integer):AnsiString;
begin
{*
 004055A0    push        ebx
 004055A1    test        eax,eax
>004055A3    je          004055D2
 004055A5    mov         ebx,dword ptr [eax-4]
 004055A8    test        ebx,ebx
>004055AA    je          004055D2
 004055AC    dec         edx
>004055AD    jl          004055CA
 004055AF    cmp         edx,ebx
>004055B1    jge         004055D2
 004055B3    sub         ebx,edx
 004055B5    test        ecx,ecx
>004055B7    jl          004055D2
 004055B9    cmp         ecx,ebx
>004055BB    jg          004055CE
 004055BD    add         edx,eax
 004055BF    mov         eax,dword ptr [esp+8]
 004055C3    call        @LStrFromPCharLen
>004055C8    jmp         004055DB
 004055CA    xor         edx,edx
>004055CC    jmp         004055B3
 004055CE    mov         ecx,ebx
>004055D0    jmp         004055BD
 004055D2    mov         eax,dword ptr [esp+8]
 004055D6    call        @LStrClr
 004055DB    pop         ebx
 004055DC    ret         4
*}
end;

//004055E0
procedure @LStrDelete(var S:AnsiString; Index:Integer; Count:Integer);
begin
{*
 004055E0    push        ebx
 004055E1    push        esi
 004055E2    push        edi
 004055E3    mov         ebx,eax
 004055E5    mov         esi,edx
 004055E7    mov         edi,ecx
 004055E9    call        UniqueString
 004055EE    mov         edx,dword ptr [ebx]
 004055F0    test        edx,edx
>004055F2    je          00405624
 004055F4    mov         ecx,dword ptr [edx-4]
 004055F7    dec         esi
>004055F8    jl          00405624
 004055FA    cmp         esi,ecx
>004055FC    jge         00405624
 004055FE    test        edi,edi
>00405600    jle         00405624
 00405602    sub         ecx,esi
 00405604    cmp         edi,ecx
>00405606    jle         0040560A
 00405608    mov         edi,ecx
 0040560A    sub         ecx,edi
 0040560C    add         edx,esi
 0040560E    lea         eax,[edi+edx]
 00405611    call        Move
 00405616    mov         edx,dword ptr [ebx]
 00405618    mov         eax,ebx
 0040561A    mov         edx,dword ptr [edx-4]
 0040561D    sub         edx,edi
 0040561F    call        @LStrSetLength
 00405624    pop         edi
 00405625    pop         esi
 00405626    pop         ebx
 00405627    ret
*}
end;

//00405628
procedure @LStrInsert(const Source:AnsiString; var S:AnsiString; Index:Integer);
begin
{*
 00405628    test        eax,eax
>0040562A    je          00405682
 0040562C    push        ebx
 0040562D    push        esi
 0040562E    push        edi
 0040562F    push        ebp
 00405630    mov         ebx,eax
 00405632    mov         esi,edx
 00405634    mov         edi,ecx
 00405636    mov         edx,dword ptr [edx]
 00405638    push        edx
 00405639    test        edx,edx
>0040563B    je          00405640
 0040563D    mov         edx,dword ptr [edx-4]
 00405640    dec         edi
>00405641    jge         00405645
 00405643    xor         edi,edi
 00405645    cmp         edi,edx
>00405647    jle         0040564B
 00405649    mov         edi,edx
 0040564B    mov         ebp,dword ptr [ebx-4]
 0040564E    mov         eax,esi
 00405650    add         edx,ebp
 00405652    call        @LStrSetLength
 00405657    pop         eax
 00405658    cmp         eax,ebx
>0040565A    jne         0040565E
 0040565C    mov         ebx,dword ptr [esi]
 0040565E    mov         eax,dword ptr [esi]
 00405660    lea         edx,[edi+ebp]
 00405663    mov         ecx,dword ptr [eax-4]
 00405666    sub         ecx,edx
 00405668    add         edx,eax
 0040566A    add         eax,edi
 0040566C    call        Move
 00405671    mov         eax,ebx
 00405673    mov         edx,dword ptr [esi]
 00405675    mov         ecx,ebp
 00405677    add         edx,edi
 00405679    call        Move
 0040567E    pop         ebp
 0040567F    pop         edi
 00405680    pop         esi
 00405681    pop         ebx
 00405682    ret
*}
end;

//00405684
function @LStrPos(const Substr:AnsiString; const S:AnsiString):Integer;
begin
{*
 00405684    test        eax,eax
>00405686    je          004056C8
 00405688    test        edx,edx
>0040568A    je          004056BD
 0040568C    push        ebx
 0040568D    push        esi
 0040568E    push        edi
 0040568F    mov         esi,eax
 00405691    mov         edi,edx
 00405693    mov         ecx,dword ptr [edi-4]
 00405696    push        edi
 00405697    mov         edx,dword ptr [esi-4]
 0040569A    dec         edx
>0040569B    js          004056B8
 0040569D    mov         al,byte ptr [esi]
 0040569F    inc         esi
 004056A0    sub         ecx,edx
>004056A2    jle         004056B8
 004056A4    repne scas  byte ptr [edi]
>004056A6    jne         004056B8
 004056A8    mov         ebx,ecx
 004056AA    push        esi
 004056AB    push        edi
 004056AC    mov         ecx,edx
 004056AE    repe cmps   byte ptr [esi],byte ptr [edi]
 004056B0    pop         edi
 004056B1    pop         esi
>004056B2    je          004056C0
 004056B4    mov         ecx,ebx
>004056B6    jmp         004056A4
 004056B8    pop         edx
 004056B9    xor         eax,eax
>004056BB    jmp         004056C5
 004056BD    xor         eax,eax
 004056BF    ret
 004056C0    pop         edx
 004056C1    mov         eax,edi
 004056C3    sub         eax,edx
 004056C5    pop         edi
 004056C6    pop         esi
 004056C7    pop         ebx
 004056C8    ret
*}
end;

//004056CC
procedure @LStrSetLength(var S:AnsiString; NewLen:Integer);
begin
{*
 004056CC    push        ebx
 004056CD    push        esi
 004056CE    push        edi
 004056CF    mov         ebx,eax
 004056D1    mov         esi,edx
 004056D3    xor         edi,edi
 004056D5    test        edx,edx
>004056D7    jle         00405721
 004056D9    mov         eax,dword ptr [ebx]
 004056DB    test        eax,eax
>004056DD    je          00405702
 004056DF    cmp         dword ptr [eax-8],1
>004056E3    jne         00405702
 004056E5    sub         eax,8
 004056E8    add         edx,9
 004056EB    push        eax
 004056EC    mov         eax,esp
 004056EE    call        @ReallocMem
 004056F3    pop         eax
 004056F4    add         eax,8
 004056F7    mov         dword ptr [ebx],eax
 004056F9    mov         dword ptr [eax-4],esi
 004056FC    mov         byte ptr [esi+eax],0
>00405700    jmp         0040572A
 00405702    mov         eax,edx
 00405704    call        @NewAnsiString
 00405709    mov         edi,eax
 0040570B    mov         eax,dword ptr [ebx]
 0040570D    test        eax,eax
>0040570F    je          00405721
 00405711    mov         edx,edi
 00405713    mov         ecx,dword ptr [eax-4]
 00405716    cmp         ecx,esi
>00405718    jl          0040571C
 0040571A    mov         ecx,esi
 0040571C    call        Move
 00405721    mov         eax,ebx
 00405723    call        @LStrClr
 00405728    mov         dword ptr [ebx],edi
 0040572A    pop         edi
 0040572B    pop         esi
 0040572C    pop         ebx
 0040572D    ret
*}
end;

//00405730
procedure @LStrOfChar(C:Char; Count:Integer; var Result:AnsiString);
begin
{*
 00405730    push        ebx
 00405731    push        esi
 00405732    push        edi
 00405733    mov         ebx,eax
 00405735    mov         esi,edx
 00405737    mov         edi,ecx
 00405739    mov         eax,ecx
 0040573B    call        @LStrClr
 00405740    test        esi,esi
>00405742    jle         00405756
 00405744    mov         eax,esi
 00405746    call        @NewAnsiString
 0040574B    mov         dword ptr [edi],eax
 0040574D    mov         edx,esi
 0040574F    mov         cl,bl
 00405751    call        @FillChar
 00405756    pop         edi
 00405757    pop         esi
 00405758    pop         ebx
 00405759    ret
*}
end;

//0040575C
{*function sub_0040575C(?:TFileRec; ?:AnsiString):?;
begin
 0040575C    push        ebx
 0040575D    push        esi
 0040575E    push        ecx
 0040575F    mov         esi,edx
 00405761    mov         ebx,eax
 00405763    mov         eax,ebx
 00405765    xor         ecx,ecx
 00405767    mov         edx,esi
 00405769    call        @WriteLString
 0040576E    mov         dword ptr [esp],eax
 00405771    mov         eax,dword ptr [esp]
 00405774    pop         edx
 00405775    pop         esi
 00405776    pop         ebx
 00405777    ret
end;*}

//00405778
procedure @WriteLString(var T:TTextRec; S:AnsiString; Width:Longint);
begin
{*
 00405778    push        ebx
 00405779    mov         ebx,edx
 0040577B    mov         edx,ecx
 0040577D    xor         ecx,ecx
 0040577F    test        ebx,ebx
>00405781    je          00405788
 00405783    mov         ecx,dword ptr [ebx-4]
 00405786    sub         edx,ecx
 00405788    push        ecx
 00405789    call        @WriteSpaces
 0040578E    pop         ecx
 0040578F    mov         edx,ebx
 00405791    pop         ebx
>00405792    jmp         @WriteBytes
 00405797    ret
*}
end;

//00405798
procedure WStrError;
begin
{*
 00405798    mov         al,1
>0040579A    jmp         Error
 0040579F    ret
*}
end;

//004057A0
function @NewWideString(CharLength:Integer):Pointer;
begin
{*
 004057A0    test        eax,eax
>004057A2    je          004057B4
 004057A4    push        eax
 004057A5    push        0
 004057A7    call        oleaut32.SysAllocStringLen
 004057AC    test        eax,eax
>004057AE    je          00405798
 004057B4    ret
*}
end;

//004057B8
procedure WStrSet(var S:WideString; P:PWideChar);
begin
{*
 004057B8    xchg        edx,dword ptr [eax]
 004057BA    test        edx,edx
>004057BC    je          004057C4
 004057BE    push        edx
 004057BF    call        oleaut32.SysFreeString
 004057C4    ret
*}
end;

//004057C8
procedure @WStrClr(var S:WideString);
begin
{*
 004057C8    mov         edx,dword ptr [eax]
 004057CA    test        edx,edx
>004057CC    je          004057DC
 004057CE    mov         dword ptr [eax],0
 004057D4    push        eax
 004057D5    push        edx
 004057D6    call        oleaut32.SysFreeString
 004057DB    pop         eax
 004057DC    ret
*}
end;

//004057E0
procedure @WStrArrayClr(var StrArray:Pointer; Count:Integer);
begin
{*
 004057E0    push        ebx
 004057E1    push        esi
 004057E2    mov         ebx,eax
 004057E4    mov         esi,edx
 004057E6    mov         eax,dword ptr [ebx]
 004057E8    test        eax,eax
>004057EA    je          004057F8
 004057EC    mov         dword ptr [ebx],0
 004057F2    push        eax
 004057F3    call        oleaut32.SysFreeString
 004057F8    add         ebx,4
 004057FB    dec         esi
>004057FC    jne         004057E6
 004057FE    pop         esi
 004057FF    pop         ebx
 00405800    ret
*}
end;

//00405804
procedure @WStrAsg(var Dest:WideString; Source:WideString);
begin
{*
 00405804    test        edx,edx
>00405806    je          004057C8
 0040580C    mov         ecx,dword ptr [edx-4]
 0040580F    shr         ecx,1
>00405811    je          004057C8
 00405817    push        ecx
 00405818    push        edx
 00405819    push        eax
 0040581A    call        oleaut32.SysReAllocStringLen
 0040581F    test        eax,eax
>00405821    je          00405798
 00405827    ret
*}
end;

//00405828
procedure sub_00405828;
begin
{*
>00405828    jmp         @WStrAsg
*}
end;

//00405830
procedure @WStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer);
begin
{*
 00405830    push        ebx
 00405831    push        esi
 00405832    push        edi
 00405833    push        ebp
 00405834    add         esp,0FFFFF004
 0040583A    push        eax
 0040583B    add         esp,0FFFFFFFC
 0040583E    mov         esi,ecx
 00405840    mov         dword ptr [esp],edx
 00405843    mov         edi,eax
 00405845    test        esi,esi
>00405847    jg          00405852
 00405849    mov         eax,edi
 0040584B    call        @WStrClr
>00405850    jmp         004058AF
 00405852    lea         ebp,[esi+1]
 00405855    cmp         ebp,7FF
>0040585B    jge         00405885
 0040585D    push        esi
 0040585E    lea         eax,[esp+8]
 00405862    mov         ecx,dword ptr [esp+4]
 00405866    mov         edx,7FF
 0040586B    call        WCharFromChar
 00405870    mov         ebx,eax
 00405872    test        ebx,ebx
>00405874    jle         00405885
 00405876    lea         edx,[esp+4]
 0040587A    mov         eax,edi
 0040587C    mov         ecx,ebx
 0040587E    call        @WStrFromPWCharLen
>00405883    jmp         004058AF
 00405885    mov         ebx,ebp
 00405887    mov         eax,edi
 00405889    mov         edx,ebx
 0040588B    call        @WStrSetLength
 00405890    push        esi
 00405891    mov         eax,dword ptr [edi]
 00405893    mov         ecx,dword ptr [esp+4]
 00405897    mov         edx,ebx
 00405899    call        WCharFromChar
 0040589E    mov         ebx,eax
 004058A0    test        ebx,ebx
>004058A2    jge         004058A6
 004058A4    xor         ebx,ebx
 004058A6    mov         eax,edi
 004058A8    mov         edx,ebx
 004058AA    call        @WStrSetLength
 004058AF    add         esp,1004
 004058B5    pop         ebp
 004058B6    pop         edi
 004058B7    pop         esi
 004058B8    pop         ebx
 004058B9    ret
*}
end;

//004058BC
procedure @WStrFromPWCharLen(var Dest:WideString; Source:PWideChar; Length:Integer);
begin
{*
 004058BC    test        ecx,ecx
>004058BE    je          004057C8
 004058C4    push        eax
 004058C5    push        ecx
 004058C6    push        edx
 004058C7    call        oleaut32.SysAllocStringLen
 004058CC    test        eax,eax
>004058CE    je          00405798
 004058D4    pop         edx
 004058D5    push        dword ptr [edx]
 004058D7    mov         dword ptr [edx],eax
 004058D9    call        oleaut32.SysFreeString
 004058DE    ret
*}
end;

//004058E0
procedure @WStrFromChar(var Dest:WideString; Source:AnsiChar);
begin
{*
 004058E0    push        edx
 004058E1    mov         edx,esp
 004058E3    mov         ecx,1
 004058E8    call        @WStrFromPCharLen
 004058ED    pop         edx
 004058EE    ret
*}
end;

//004058F0
procedure @WStrFromWChar(var Dest:WideString; Source:WideChar);
begin
{*
 004058F0    push        edx
 004058F1    mov         edx,esp
 004058F3    mov         ecx,1
 004058F8    call        @WStrFromPWCharLen
 004058FD    pop         edx
 004058FE    ret
*}
end;

//00405900
procedure @WStrFromPWChar(var Dest:WideString; Source:PWideChar);
begin
{*
 00405900    xor         ecx,ecx
 00405902    test        edx,edx
>00405904    je          00405933
 00405906    push        edx
 00405907    cmp         cx,word ptr [edx]
>0040590A    je          0040592C
 0040590C    cmp         cx,word ptr [edx+2]
>00405910    je          00405929
 00405912    cmp         cx,word ptr [edx+4]
>00405916    je          00405926
 00405918    cmp         cx,word ptr [edx+6]
>0040591C    je          00405923
 0040591E    add         edx,8
>00405921    jmp         00405907
 00405923    add         edx,2
 00405926    add         edx,2
 00405929    add         edx,2
 0040592C    mov         ecx,edx
 0040592E    pop         edx
 0040592F    sub         ecx,edx
 00405931    shr         ecx,1
>00405933    jmp         @WStrFromPWCharLen
 00405938    ret
*}
end;

//0040593C
procedure @WStrFromLStr(var Dest:WideString; const Source:AnsiString);
begin
{*
 0040593C    xor         ecx,ecx
 0040593E    test        edx,edx
>00405940    je          00405945
 00405942    mov         ecx,dword ptr [edx-4]
>00405945    jmp         @WStrFromPCharLen
 0040594A    ret
*}
end;

//0040594C
function @WStrToPWChar(S:WideString):PWideChar;
begin
{*
 0040594C    test        eax,eax
>0040594E    je          00405954
 00405950    ret
 00405951    nop
 00405952    add         byte ptr [eax],al
 00405954    mov         eax,405952
 00405959    ret
*}
end;

//0040595C
function @WStrLen(S:WideString):Integer;
begin
{*
 0040595C    test        eax,eax
>0040595E    je          00405965
 00405960    mov         eax,dword ptr [eax-4]
 00405963    shr         eax,1
 00405965    ret
*}
end;

//00405968
{*procedure sub_00405968(?:?; ?:?; ?:?);
begin
 00405968    push        ebx
 00405969    push        esi
 0040596A    push        edi
 0040596B    push        ebp
 0040596C    add         esp,0FFFFFFF8
 0040596F    mov         ebp,ecx
 00405971    mov         edi,edx
 00405973    mov         dword ptr [esp],eax
 00405976    mov         eax,edi
 00405978    call        @WStrLen
 0040597D    mov         ebx,eax
 0040597F    mov         eax,ebp
 00405981    call        @WStrLen
 00405986    mov         esi,eax
 00405988    test        ebx,ebx
>0040598A    jne         00405990
 0040598C    test        esi,esi
>0040598E    je          004059C9
 00405990    lea         eax,[esi+ebx]
 00405993    call        @NewWideString
 00405998    mov         dword ptr [esp+4],eax
 0040599C    mov         ecx,ebx
 0040599E    add         ecx,ecx
 004059A0    mov         edx,dword ptr [esp+4]
 004059A4    mov         eax,edi
 004059A6    call        Move
 004059AB    mov         ecx,esi
 004059AD    add         ecx,ecx
 004059AF    mov         eax,dword ptr [esp+4]
 004059B3    lea         edx,[eax+ebx*2]
 004059B6    mov         eax,ebp
 004059B8    call        Move
 004059BD    mov         eax,dword ptr [esp]
 004059C0    mov         edx,dword ptr [esp+4]
 004059C4    call        WStrSet
 004059C9    pop         ecx
 004059CA    pop         edx
 004059CB    pop         ebp
 004059CC    pop         edi
 004059CD    pop         esi
 004059CE    pop         ebx
 004059CF    ret
end;*}

//004059D0
{*function @WStrCmp(Left:WideString; Right:WideString):?;
begin
 004059D0    push        ebx
 004059D1    push        esi
 004059D2    push        edi
 004059D3    mov         esi,eax
 004059D5    mov         edi,edx
 004059D7    cmp         eax,edx
>004059D9    je          00405A4D
 004059DB    test        esi,esi
>004059DD    je          00405A30
 004059DF    test        edi,edi
>004059E1    je          00405A37
 004059E3    mov         eax,dword ptr [esi-4]
 004059E6    mov         edx,dword ptr [edi-4]
 004059E9    sub         eax,edx
>004059EB    ja          004059EF
 004059ED    add         edx,eax
 004059EF    push        edx
 004059F0    shr         edx,2
>004059F3    je          00405A1B
 004059F5    mov         ecx,dword ptr [esi]
 004059F7    mov         ebx,dword ptr [edi]
 004059F9    cmp         ecx,ebx
>004059FB    jne         00405A3E
 004059FD    dec         edx
>004059FE    je          00405A15
 00405A00    mov         ecx,dword ptr [esi+4]
 00405A03    mov         ebx,dword ptr [edi+4]
 00405A06    cmp         ecx,ebx
>00405A08    jne         00405A3E
 00405A0A    add         esi,8
 00405A0D    add         edi,8
 00405A10    dec         edx
>00405A11    jne         004059F5
>00405A13    jmp         00405A1B
 00405A15    add         esi,4
 00405A18    add         edi,4
 00405A1B    pop         edx
 00405A1C    and         edx,2
>00405A1F    je          00405A2C
 00405A21    mov         cx,word ptr [esi]
 00405A24    mov         bx,word ptr [edi]
 00405A27    cmp         cx,bx
>00405A2A    jne         00405A4D
 00405A2C    add         eax,eax
>00405A2E    jmp         00405A4D
 00405A30    mov         edx,dword ptr [edi-4]
 00405A33    sub         eax,edx
>00405A35    jmp         00405A4D
 00405A37    mov         eax,dword ptr [esi-4]
 00405A3A    sub         eax,edx
>00405A3C    jmp         00405A4D
 00405A3E    pop         edx
 00405A3F    cmp         cx,bx
>00405A42    jne         00405A4D
 00405A44    shr         ecx,10
 00405A47    shr         ebx,10
 00405A4A    cmp         cx,bx
 00405A4D    pop         edi
 00405A4E    pop         esi
 00405A4F    pop         ebx
 00405A50    ret
end;*}

//00405A54
function @WStrCopy(const S:WideString; Index:Integer; Count:Integer):WideString;
begin
{*
 00405A54    push        ebp
 00405A55    mov         ebp,esp
 00405A57    push        ebx
 00405A58    push        esi
 00405A59    push        edi
 00405A5A    mov         edi,ecx
 00405A5C    mov         ebx,edx
 00405A5E    mov         esi,eax
 00405A60    mov         eax,esi
 00405A62    call        @WStrLen
 00405A67    cmp         ebx,1
>00405A6A    jge         00405A70
 00405A6C    xor         ebx,ebx
>00405A6E    jmp         00405A77
 00405A70    dec         ebx
 00405A71    cmp         eax,ebx
>00405A73    jge         00405A77
 00405A75    mov         ebx,eax
 00405A77    test        edi,edi
>00405A79    jge         00405A7F
 00405A7B    xor         eax,eax
>00405A7D    jmp         00405A87
 00405A7F    sub         eax,ebx
 00405A81    cmp         edi,eax
>00405A83    jge         00405A87
 00405A85    mov         eax,edi
 00405A87    mov         edx,ebx
 00405A89    add         edx,edx
 00405A8B    add         edx,esi
 00405A8D    mov         ecx,dword ptr [ebp+8]
 00405A90    xchg        eax,ecx
 00405A91    call        @WStrFromPWCharLen
 00405A96    pop         edi
 00405A97    pop         esi
 00405A98    pop         ebx
 00405A99    pop         ebp
 00405A9A    ret         4
*}
end;

//00405AA0
procedure @WStrSetLength(var S:WideString; NewLen:Integer);
begin
{*
 00405AA0    push        ebx
 00405AA1    push        esi
 00405AA2    push        ecx
 00405AA3    mov         ebx,edx
 00405AA5    mov         esi,eax
 00405AA7    xor         eax,eax
 00405AA9    mov         dword ptr [esp],eax
 00405AAC    test        ebx,ebx
>00405AAE    jle         00405AD9
 00405AB0    mov         eax,ebx
 00405AB2    call        @NewWideString
 00405AB7    mov         dword ptr [esp],eax
 00405ABA    mov         eax,dword ptr [esi]
 00405ABC    call        @WStrLen
 00405AC1    test        eax,eax
>00405AC3    jle         00405AD9
 00405AC5    cmp         ebx,eax
>00405AC7    jge         00405ACB
 00405AC9    mov         eax,ebx
 00405ACB    mov         ecx,eax
 00405ACD    add         ecx,ecx
 00405ACF    mov         edx,dword ptr [esp]
 00405AD2    mov         eax,dword ptr [esi]
 00405AD4    call        Move
 00405AD9    mov         eax,esi
 00405ADB    mov         edx,dword ptr [esp]
 00405ADE    call        WStrSet
 00405AE3    pop         edx
 00405AE4    pop         esi
 00405AE5    pop         ebx
 00405AE6    ret
*}
end;

//00405AE8
procedure @AddRefRecord;
begin
{*
 00405AE8    xor         ecx,ecx
 00405AEA    push        ebx
 00405AEB    mov         cl,byte ptr [edx+1]
 00405AEE    push        esi
 00405AEF    push        edi
 00405AF0    mov         ebx,eax
 00405AF2    lea         esi,[ecx+edx+0A]
 00405AF6    mov         edi,dword ptr [ecx+edx+6]
 00405AFA    mov         edx,dword ptr [esi]
 00405AFC    mov         eax,dword ptr [esi+4]
 00405AFF    add         eax,ebx
 00405B01    mov         edx,dword ptr [edx]
 00405B03    mov         ecx,1
 00405B08    call        @AddRefArray
 00405B0D    add         esi,8
 00405B10    dec         edi
>00405B11    jg          00405AFA
 00405B13    pop         edi
 00405B14    pop         esi
 00405B15    pop         ebx
 00405B16    ret
*}
end;

//00405B18
procedure @AddRefArray;
begin
{*
 00405B18    test        ecx,ecx
>00405B1A    je          00405BAA
 00405B20    push        ebx
 00405B21    push        esi
 00405B22    push        edi
 00405B23    mov         ebx,eax
 00405B25    mov         esi,edx
 00405B27    mov         edi,ecx
 00405B29    xor         edx,edx
 00405B2B    mov         al,byte ptr [esi]
 00405B2D    mov         dl,byte ptr [esi+1]
 00405B30    xor         ecx,ecx
 00405B32    cmp         al,0A
>00405B34    je          00405B58
 00405B36    cmp         al,0B
>00405B38    je          00405B58
 00405B3A    cmp         al,0C
>00405B3C    je          00405B62
 00405B3E    cmp         al,0D
>00405B40    je          00405B75
 00405B42    cmp         al,0E
>00405B44    je          00405B93
 00405B46    cmp         al,0F
>00405B48    je          00405B58
 00405B4A    cmp         al,11
>00405B4C    je          00405B58
 00405B4E    mov         al,2
 00405B50    pop         edi
 00405B51    pop         esi
 00405B52    pop         ebx
>00405B53    jmp         Error
 00405B58    mov         dword ptr [ebx],ecx
 00405B5A    add         ebx,4
 00405B5D    dec         edi
>00405B5E    jg          00405B58
>00405B60    jmp         00405BA7
 00405B62    mov         dword ptr [ebx],ecx
 00405B64    mov         dword ptr [ebx+4],ecx
 00405B67    mov         dword ptr [ebx+8],ecx
 00405B6A    mov         dword ptr [ebx+0C],ecx
 00405B6D    add         ebx,10
 00405B70    dec         edi
>00405B71    jg          00405B62
>00405B73    jmp         00405BA7
 00405B75    push        ebp
 00405B76    mov         ebp,edx
 00405B78    mov         edx,dword ptr [esi+ebp+0A]
 00405B7C    mov         eax,ebx
 00405B7E    add         ebx,dword ptr [esi+ebp+2]
 00405B82    mov         ecx,dword ptr [esi+ebp+6]
 00405B86    mov         edx,dword ptr [edx]
 00405B88    call        @AddRefArray
 00405B8D    dec         edi
>00405B8E    jg          00405B78
 00405B90    pop         ebp
>00405B91    jmp         00405BA7
 00405B93    push        ebp
 00405B94    mov         ebp,edx
 00405B96    mov         eax,ebx
 00405B98    add         ebx,dword ptr [esi+ebp+2]
 00405B9C    mov         edx,esi
 00405B9E    call        @AddRefRecord
 00405BA3    dec         edi
>00405BA4    jg          00405B96
 00405BA6    pop         ebp
 00405BA7    pop         edi
 00405BA8    pop         esi
 00405BA9    pop         ebx
 00405BAA    ret
*}
end;

//00405BAC
procedure @AddRef;
begin
{*
 00405BAC    mov         ecx,1
>00405BB1    jmp         @AddRefArray
 00405BB6    ret
*}
end;

//00405BB8
procedure @FinalizeRecord(P:Pointer; typeInfo:Pointer);
begin
{*
 00405BB8    xor         ecx,ecx
 00405BBA    push        ebx
 00405BBB    mov         cl,byte ptr [edx+1]
 00405BBE    push        esi
 00405BBF    push        edi
 00405BC0    mov         ebx,eax
 00405BC2    lea         esi,[ecx+edx+0A]
 00405BC6    mov         edi,dword ptr [ecx+edx+6]
 00405BCA    mov         edx,dword ptr [esi]
 00405BCC    mov         eax,dword ptr [esi+4]
 00405BCF    add         eax,ebx
 00405BD1    mov         edx,dword ptr [edx]
 00405BD3    mov         ecx,1
 00405BD8    call        @FinalizeArray
 00405BDD    add         esi,8
 00405BE0    dec         edi
>00405BE1    jg          00405BCA
 00405BE3    mov         eax,ebx
 00405BE5    pop         edi
 00405BE6    pop         esi
 00405BE7    pop         ebx
 00405BE8    ret
*}
end;

//00405BEC
procedure @VarClr(var v:TVarData);
begin
{*
 00405BEC    cmp         dword ptr ds:[56B00C],0;gvar_0056B00C
>00405BF3    je          00405BFC
 00405BF5    call        dword ptr ds:[56B00C]
 00405BFB    ret
 00405BFC    mov         al,10
 00405BFE    call        Error
 00405C03    ret
*}
end;

//00405C04
procedure @FinalizeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);
begin
{*
 00405C04    cmp         ecx,0
>00405C07    je          00405CED
 00405C0D    push        eax
 00405C0E    push        ebx
 00405C0F    push        esi
 00405C10    push        edi
 00405C11    mov         ebx,eax
 00405C13    mov         esi,edx
 00405C15    mov         edi,ecx
 00405C17    xor         edx,edx
 00405C19    mov         al,byte ptr [esi]
 00405C1B    mov         dl,byte ptr [esi+1]
 00405C1E    cmp         al,0A
>00405C20    je          00405C47
 00405C22    cmp         al,0B
>00405C24    je          00405C64
 00405C26    cmp         al,0C
>00405C28    je          00405C7B
 00405C2A    cmp         al,0D
>00405C2C    je          00405C8A
 00405C2E    cmp         al,0E
>00405C30    je          00405CA8
 00405C32    cmp         al,0F
>00405C34    je          00405CBE
 00405C3A    cmp         al,11
>00405C3C    je          00405CCD
>00405C42    jmp         00405CDE
 00405C47    cmp         ecx,1
 00405C4A    mov         eax,ebx
>00405C4C    jg          00405C58
 00405C4E    call        @LStrClr
>00405C53    jmp         00405CE9
 00405C58    mov         edx,ecx
 00405C5A    call        @LStrArrayClr
>00405C5F    jmp         00405CE9
 00405C64    cmp         ecx,1
 00405C67    mov         eax,ebx
>00405C69    jg          00405C72
 00405C6B    call        @WStrClr
>00405C70    jmp         00405CE9
 00405C72    mov         edx,ecx
 00405C74    call        @WStrArrayClr
>00405C79    jmp         00405CE9
 00405C7B    mov         eax,ebx
 00405C7D    add         ebx,10
 00405C80    call        @VarClr
 00405C85    dec         edi
>00405C86    jg          00405C7B
>00405C88    jmp         00405CE9
 00405C8A    push        ebp
 00405C8B    mov         ebp,edx
 00405C8D    mov         edx,dword ptr [esi+ebp+0A]
 00405C91    mov         eax,ebx
 00405C93    add         ebx,dword ptr [esi+ebp+2]
 00405C97    mov         ecx,dword ptr [esi+ebp+6]
 00405C9B    mov         edx,dword ptr [edx]
 00405C9D    call        @FinalizeArray
 00405CA2    dec         edi
>00405CA3    jg          00405C8D
 00405CA5    pop         ebp
>00405CA6    jmp         00405CE9
 00405CA8    push        ebp
 00405CA9    mov         ebp,edx
 00405CAB    mov         eax,ebx
 00405CAD    add         ebx,dword ptr [esi+ebp+2]
 00405CB1    mov         edx,esi
 00405CB3    call        @FinalizeRecord
 00405CB8    dec         edi
>00405CB9    jg          00405CAB
 00405CBB    pop         ebp
>00405CBC    jmp         00405CE9
 00405CBE    mov         eax,ebx
 00405CC0    add         ebx,4
 00405CC3    call        @IntfClear
 00405CC8    dec         edi
>00405CC9    jg          00405CBE
>00405CCB    jmp         00405CE9
 00405CCD    mov         eax,ebx
 00405CCF    mov         edx,esi
 00405CD1    add         ebx,4
 00405CD4    call        @DynArrayClear
 00405CD9    dec         edi
>00405CDA    jg          00405CCD
>00405CDC    jmp         00405CE9
 00405CDE    pop         edi
 00405CDF    pop         esi
 00405CE0    pop         ebx
 00405CE1    pop         eax
 00405CE2    mov         al,2
>00405CE4    jmp         Error
 00405CE9    pop         edi
 00405CEA    pop         esi
 00405CEB    pop         ebx
 00405CEC    pop         eax
 00405CED    ret
*}
end;

//00405CF0
procedure @Finalize(p:Pointer; typeInfo:Pointer);
begin
{*
 00405CF0    mov         ecx,1
>00405CF5    jmp         @FinalizeArray
 00405CFA    ret
*}
end;

//00405CFC
procedure @VarAddRef(var v:TVarData);
begin
{*
 00405CFC    cmp         dword ptr ds:[56B014],0;gvar_0056B014
>00405D03    je          00405D0C
 00405D05    call        dword ptr ds:[56B014]
 00405D0B    ret
 00405D0C    mov         al,10
 00405D0E    call        Error
 00405D13    ret
*}
end;

//00405D14
procedure @CopyRecord(Dest:Pointer; Source:Pointer; TypeInfo:Pointer);
begin
{*
 00405D14    push        ebx
 00405D15    push        esi
 00405D16    push        edi
 00405D17    push        ebp
 00405D18    mov         ebx,eax
 00405D1A    mov         esi,edx
 00405D1C    xor         eax,eax
 00405D1E    mov         al,byte ptr [ecx+1]
 00405D21    lea         edi,[eax+ecx+0A]
 00405D25    mov         ebp,dword ptr [edi-4]
 00405D28    xor         eax,eax
 00405D2A    mov         ecx,dword ptr [edi-8]
 00405D2D    push        ecx
 00405D2E    mov         ecx,dword ptr [edi+4]
 00405D31    sub         ecx,eax
>00405D33    jle         00405D40
 00405D35    mov         edx,eax
 00405D37    add         eax,esi
 00405D39    add         edx,ebx
 00405D3B    call        Move
 00405D40    mov         eax,dword ptr [edi+4]
 00405D43    mov         edx,dword ptr [edi]
 00405D45    mov         edx,dword ptr [edx]
 00405D47    mov         cl,byte ptr [edx]
 00405D49    cmp         cl,0A
>00405D4C    je          00405D7F
 00405D4E    cmp         cl,0B
>00405D51    je          00405D90
 00405D53    cmp         cl,0C
>00405D56    je          00405DA1
 00405D58    cmp         cl,0D
>00405D5B    je          00405DB2
 00405D5D    cmp         cl,0E
>00405D60    je          00405DD2
 00405D62    cmp         cl,0F
>00405D65    je          00405DEB
 00405D6B    cmp         cl,11
>00405D6E    je          00405DFC
 00405D74    mov         al,2
 00405D76    pop         ebp
 00405D77    pop         edi
 00405D78    pop         esi
 00405D79    pop         ebx
>00405D7A    jmp         Error
 00405D7F    mov         edx,dword ptr [eax+esi]
 00405D82    add         eax,ebx
 00405D84    call        @LStrAsg
 00405D89    mov         eax,4
>00405D8E    jmp         00405E0D
 00405D90    mov         edx,dword ptr [eax+esi]
 00405D93    add         eax,ebx
 00405D95    call        @WStrAsg
 00405D9A    mov         eax,4
>00405D9F    jmp         00405E0D
 00405DA1    lea         edx,[eax+esi]
 00405DA4    add         eax,ebx
 00405DA6    call        @VarAddRef
 00405DAB    mov         eax,10
>00405DB0    jmp         00405E0D
 00405DB2    xor         ecx,ecx
 00405DB4    mov         cl,byte ptr [edx+1]
 00405DB7    push        dword ptr [ecx+edx+2]
 00405DBB    push        dword ptr [ecx+edx+6]
 00405DBF    mov         ecx,dword ptr [ecx+edx+0A]
 00405DC3    mov         ecx,dword ptr [ecx]
 00405DC5    lea         edx,[eax+esi]
 00405DC8    add         eax,ebx
 00405DCA    call        @CopyArray
 00405DCF    pop         eax
>00405DD0    jmp         00405E0D
 00405DD2    xor         ecx,ecx
 00405DD4    mov         cl,byte ptr [edx+1]
 00405DD7    mov         ecx,dword ptr [ecx+edx+2]
 00405DDB    push        ecx
 00405DDC    mov         ecx,edx
 00405DDE    lea         edx,[eax+esi]
 00405DE1    add         eax,ebx
 00405DE3    call        @CopyRecord
 00405DE8    pop         eax
>00405DE9    jmp         00405E0D
 00405DEB    mov         edx,dword ptr [eax+esi]
 00405DEE    add         eax,ebx
 00405DF0    call        @IntfCopy
 00405DF5    mov         eax,4
>00405DFA    jmp         00405E0D
 00405DFC    mov         ecx,edx
 00405DFE    mov         edx,dword ptr [eax+esi]
 00405E01    add         eax,ebx
 00405E03    call        @DynArrayAsg
 00405E08    mov         eax,4
 00405E0D    add         eax,dword ptr [edi+4]
 00405E10    add         edi,8
 00405E13    dec         ebp
>00405E14    jne         00405D2E
 00405E1A    pop         ecx
 00405E1B    sub         ecx,eax
>00405E1D    jle         00405E29
 00405E1F    lea         edx,[eax+ebx]
 00405E22    add         eax,esi
 00405E24    call        Move
 00405E29    pop         ebp
 00405E2A    pop         edi
 00405E2B    pop         esi
 00405E2C    pop         ebx
 00405E2D    ret
*}
end;

//00405E30
procedure @CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Cnt:Integer);
begin
{*
 00405E30    push        ebx
 00405E31    push        esi
 00405E32    push        edi
 00405E33    push        ebp
 00405E34    mov         ebx,eax
 00405E36    mov         esi,edx
 00405E38    mov         edi,ecx
 00405E3A    mov         ebp,dword ptr [esp+14]
 00405E3E    mov         cl,byte ptr [edi]
 00405E40    cmp         cl,0A
>00405E43    je          00405E76
 00405E45    cmp         cl,0B
>00405E48    je          00405E8D
 00405E4A    cmp         cl,0C
>00405E4D    je          00405EA1
 00405E4F    cmp         cl,0D
>00405E52    je          00405EB5
 00405E54    cmp         cl,0E
>00405E57    je          00405ED6
 00405E59    cmp         cl,0F
>00405E5C    je          00405EF3
 00405E62    cmp         cl,11
>00405E65    je          00405F07
 00405E6B    mov         al,2
 00405E6D    pop         ebp
 00405E6E    pop         edi
 00405E6F    pop         esi
 00405E70    pop         ebx
>00405E71    jmp         Error
 00405E76    mov         eax,ebx
 00405E78    mov         edx,dword ptr [esi]
 00405E7A    call        @LStrAsg
 00405E7F    add         ebx,4
 00405E82    add         esi,4
 00405E85    dec         ebp
>00405E86    jne         00405E76
>00405E88    jmp         00405F1B
 00405E8D    mov         eax,ebx
 00405E8F    mov         edx,dword ptr [esi]
 00405E91    call        @WStrAsg
 00405E96    add         ebx,4
 00405E99    add         esi,4
 00405E9C    dec         ebp
>00405E9D    jne         00405E8D
>00405E9F    jmp         00405F1B
 00405EA1    mov         eax,ebx
 00405EA3    mov         edx,esi
 00405EA5    call        @VarAddRef
 00405EAA    add         ebx,10
 00405EAD    add         esi,10
 00405EB0    dec         ebp
>00405EB1    jne         00405EA1
>00405EB3    jmp         00405F1B
 00405EB5    xor         ecx,ecx
 00405EB7    mov         cl,byte ptr [edi+1]
 00405EBA    lea         edi,[ecx+edi+2]
 00405EBE    mov         eax,ebx
 00405EC0    mov         edx,esi
 00405EC2    mov         ecx,dword ptr [edi+8]
 00405EC5    push        dword ptr [edi+4]
 00405EC8    call        @CopyArray
 00405ECD    add         ebx,dword ptr [edi]
 00405ECF    add         esi,dword ptr [edi]
 00405ED1    dec         ebp
>00405ED2    jne         00405EBE
>00405ED4    jmp         00405F1B
 00405ED6    mov         eax,ebx
 00405ED8    mov         edx,esi
 00405EDA    mov         ecx,edi
 00405EDC    call        @CopyRecord
 00405EE1    xor         eax,eax
 00405EE3    mov         al,byte ptr [edi+1]
 00405EE6    add         ebx,dword ptr [eax+edi+2]
 00405EEA    add         esi,dword ptr [eax+edi+2]
 00405EEE    dec         ebp
>00405EEF    jne         00405ED6
>00405EF1    jmp         00405F1B
 00405EF3    mov         eax,ebx
 00405EF5    mov         edx,dword ptr [esi]
 00405EF7    call        @IntfCopy
 00405EFC    add         ebx,4
 00405EFF    add         esi,4
 00405F02    dec         ebp
>00405F03    jne         00405EF3
>00405F05    jmp         00405F1B
 00405F07    mov         eax,ebx
 00405F09    mov         edx,dword ptr [esi]
 00405F0B    mov         ecx,edi
 00405F0D    call        @DynArrayAsg
 00405F12    add         ebx,4
 00405F15    add         esi,4
 00405F18    dec         ebp
>00405F19    jne         00405F07
 00405F1B    pop         ebp
 00405F1C    pop         edi
 00405F1D    pop         esi
 00405F1E    pop         ebx
 00405F1F    ret         4
*}
end;

//00405F24
{*function sub_00405F24:?;
begin
 00405F24    push        edx
 00405F25    call        @GetMem
 00405F2A    pop         edx
 00405F2B    test        eax,eax
>00405F2D    je          00405F36
 00405F2F    push        eax
 00405F30    call        @AddRef
 00405F35    pop         eax
 00405F36    ret
end;*}

//00405F38
procedure @Dispose(p:Pointer; typeInfo:Pointer);
begin
{*
 00405F38    push        eax
 00405F39    call        @Finalize
 00405F3E    pop         eax
 00405F3F    call        @FreeMem
 00405F44    ret
*}
end;

//00405F48
procedure WideCharLenToStrVar(Source:PWideChar; SourceLen:Integer; var Dest:AnsiString);
begin
{*
 00405F48    xchg        eax,ecx
 00405F49    xchg        ecx,edx
 00405F4B    call        @LStrFromPWCharLen
 00405F50    ret
*}
end;

//00405F54
procedure OleStrToStrVar(Source:PWideChar; var Dest:AnsiString);
begin
{*
 00405F54    push        ebx
 00405F55    push        esi
 00405F56    push        ecx
 00405F57    mov         esi,edx
 00405F59    mov         ebx,eax
 00405F5B    mov         dword ptr [esp],ebx
 00405F5E    mov         eax,dword ptr [esp]
 00405F61    call        @WStrLen
 00405F66    mov         edx,eax
 00405F68    mov         ecx,esi
 00405F6A    mov         eax,ebx
 00405F6C    call        WideCharLenToStrVar
 00405F71    pop         edx
 00405F72    pop         esi
 00405F73    pop         ebx
 00405F74    ret
*}
end;

//00405F78
function StringToOleStr(const Source:AnsiString):PWideChar;
begin
{*
 00405F78    push        ebx
 00405F79    push        ecx
 00405F7A    mov         ebx,eax
 00405F7C    xor         eax,eax
 00405F7E    mov         dword ptr [esp],eax
 00405F81    mov         eax,ebx
 00405F83    call        @LStrLen
 00405F88    mov         ecx,eax
 00405F8A    mov         eax,esp
 00405F8C    mov         edx,ebx
 00405F8E    call        @WStrFromPCharLen
 00405F93    mov         eax,dword ptr [esp]
 00405F96    pop         edx
 00405F97    pop         ebx
 00405F98    ret
*}
end;

//00405F9C
procedure @DispCallByIDError;
begin
{*
 00405F9C    mov         al,11
>00405F9E    jmp         Error
 00405FA3    ret
*}
end;

//00405FA4
procedure @_llmul;
begin
{*
 00405FA4    push        edx
 00405FA5    push        eax
 00405FA6    mov         eax,dword ptr [esp+10]
 00405FAA    mul         eax,dword ptr [esp]
 00405FAD    mov         ecx,eax
 00405FAF    mov         eax,dword ptr [esp+4]
 00405FB3    mul         eax,dword ptr [esp+0C]
 00405FB7    add         ecx,eax
 00405FB9    mov         eax,dword ptr [esp]
 00405FBC    mul         eax,dword ptr [esp+0C]
 00405FC0    add         edx,ecx
 00405FC2    pop         ecx
 00405FC3    pop         ecx
 00405FC4    ret         8
*}
end;

//00405FC8
procedure @_lldiv;
begin
{*
 00405FC8    push        ebp
 00405FC9    push        ebx
 00405FCA    push        esi
 00405FCB    push        edi
 00405FCC    xor         edi,edi
 00405FCE    mov         ebx,dword ptr [esp+14]
 00405FD2    mov         ecx,dword ptr [esp+18]
 00405FD6    or          ecx,ecx
>00405FD8    jne         00405FE2
 00405FDA    or          edx,edx
>00405FDC    je          0040603A
 00405FDE    or          ebx,ebx
>00405FE0    je          0040603A
 00405FE2    or          edx,edx
>00405FE4    jns         00405FF0
 00405FE6    neg         edx
 00405FE8    neg         eax
 00405FEA    sbb         edx,0
 00405FED    or          edi,1
 00405FF0    or          ecx,ecx
>00405FF2    jns         00405FFE
 00405FF4    neg         ecx
 00405FF6    neg         ebx
 00405FF8    sbb         ecx,0
 00405FFB    xor         edi,1
 00405FFE    mov         ebp,ecx
 00406000    mov         ecx,40
 00406005    push        edi
 00406006    xor         edi,edi
 00406008    xor         esi,esi
 0040600A    shl         eax,1
 0040600C    rcl         edx,1
 0040600E    rcl         esi,1
 00406010    rcl         edi,1
 00406012    cmp         edi,ebp
>00406014    jb          00406021
>00406016    ja          0040601C
 00406018    cmp         esi,ebx
>0040601A    jb          00406021
 0040601C    sub         esi,ebx
 0040601E    sbb         edi,ebp
 00406020    inc         eax
 00406021    loop        0040600A
 00406023    pop         ebx
 00406024    test        ebx,1
>0040602A    je          00406033
 0040602C    neg         edx
 0040602E    neg         eax
 00406030    sbb         edx,0
 00406033    pop         edi
 00406034    pop         esi
 00406035    pop         ebx
 00406036    pop         ebp
 00406037    ret         8
 0040603A    div         eax,ebx
 0040603C    xor         edx,edx
>0040603E    jmp         00406033
 00406040    ret
*}
end;

//00406044
procedure @_llmod;
begin
{*
 00406044    push        ebp
 00406045    push        ebx
 00406046    push        esi
 00406047    push        edi
 00406048    xor         edi,edi
 0040604A    mov         ebx,dword ptr [esp+14]
 0040604E    mov         ecx,dword ptr [esp+18]
 00406052    or          ecx,ecx
>00406054    jne         0040605E
 00406056    or          edx,edx
>00406058    je          004060B7
 0040605A    or          ebx,ebx
>0040605C    je          004060B7
 0040605E    or          edx,edx
>00406060    jns         0040606C
 00406062    neg         edx
 00406064    neg         eax
 00406066    sbb         edx,0
 00406069    or          edi,1
 0040606C    or          ecx,ecx
>0040606E    jns         00406077
 00406070    neg         ecx
 00406072    neg         ebx
 00406074    sbb         ecx,0
 00406077    mov         ebp,ecx
 00406079    mov         ecx,40
 0040607E    push        edi
 0040607F    xor         edi,edi
 00406081    xor         esi,esi
 00406083    shl         eax,1
 00406085    rcl         edx,1
 00406087    rcl         esi,1
 00406089    rcl         edi,1
 0040608B    cmp         edi,ebp
>0040608D    jb          0040609A
>0040608F    ja          00406095
 00406091    cmp         esi,ebx
>00406093    jb          0040609A
 00406095    sub         esi,ebx
 00406097    sbb         edi,ebp
 00406099    inc         eax
 0040609A    loop        00406083
 0040609C    mov         eax,esi
 0040609E    mov         edx,edi
 004060A0    pop         ebx
 004060A1    test        ebx,1
>004060A7    je          004060B0
 004060A9    neg         edx
 004060AB    neg         eax
 004060AD    sbb         edx,0
 004060B0    pop         edi
 004060B1    pop         esi
 004060B2    pop         ebx
 004060B3    pop         ebp
 004060B4    ret         8
 004060B7    div         eax,ebx
 004060B9    xchg        eax,edx
 004060BA    xor         edx,edx
>004060BC    jmp         004060B0
 004060BE    ret
*}
end;

//004060C0
{*function sub_004060C0(?:?; ?:?):?;
begin
 004060C0    push        ebx
 004060C1    push        esi
 004060C2    push        edi
 004060C3    push        ebp
 004060C4    add         esp,0FFFFFFEC
 004060C7    mov         dword ptr [esp],edx
 004060CA    mov         esi,eax
 004060CC    mov         ebp,1
 004060D1    xor         edi,edi
 004060D3    mov         dword ptr [esp+8],0
 004060DB    mov         dword ptr [esp+0C],0
 004060E3    test        esi,esi
>004060E5    jne         004060F2
 004060E7    mov         eax,dword ptr [esp]
 004060EA    mov         dword ptr [eax],ebp
>004060EC    jmp         004062D2
 004060F1    inc         ebp
 004060F2    cmp         byte ptr [esi+ebp-1],20
>004060F7    je          004060F1
 004060F9    mov         byte ptr [esp+10],0
 004060FE    mov         al,byte ptr [esi+ebp-1]
 00406102    cmp         al,2D
>00406104    jne         0040610E
 00406106    mov         byte ptr [esp+10],1
 0040610B    inc         ebp
>0040610C    jmp         00406113
 0040610E    cmp         al,2B
>00406110    jne         00406113
 00406112    inc         ebp
 00406113    mov         bl,1
 00406115    cmp         byte ptr [esi+ebp-1],24
>0040611A    je          00406144
 0040611C    mov         al,byte ptr [esi+ebp-1]
 00406120    call        UpCase
 00406125    cmp         al,58
>00406127    je          00406144
 00406129    cmp         byte ptr [esi+ebp-1],30
>0040612E    jne         00406208
 00406134    mov         al,byte ptr [esi+ebp]
 00406137    call        UpCase
 0040613C    cmp         al,58
>0040613E    jne         00406208
 00406144    cmp         byte ptr [esi+ebp-1],30
>00406149    jne         0040614C
 0040614B    inc         ebp
 0040614C    inc         ebp
 0040614D    mov         cl,byte ptr [esi+ebp-1]
 00406151    mov         eax,ecx
 00406153    add         al,0D0
 00406155    sub         al,0A
>00406157    jb          00406167
 00406159    add         al,0F9
 0040615B    sub         al,6
>0040615D    jb          00406174
 0040615F    add         al,0E6
 00406161    sub         al,6
>00406163    jb          00406181
>00406165    jmp         004061E1
 00406167    mov         edi,ecx
 00406169    and         edi,0FF
 0040616F    sub         edi,30
>00406172    jmp         0040618C
 00406174    mov         edi,ecx
 00406176    and         edi,0FF
 0040617C    sub         edi,37
>0040617F    jmp         0040618C
 00406181    mov         edi,ecx
 00406183    and         edi,0FF
 00406189    sub         edi,57
 0040618C    cmp         dword ptr [esp+0C],0
>00406191    jne         0040619C
 00406193    cmp         dword ptr [esp+8],0
>00406198    jb          004061E1
>0040619A    jmp         0040619E
>0040619C    jl          004061E1
 0040619E    cmp         dword ptr [esp+0C],0FFFFFFF
>004061A6    jne         004061B1
 004061A8    cmp         dword ptr [esp+8],0FFFFFFFF
>004061AD    jbe         004061B3
>004061AF    jmp         004061E1
>004061B1    jg          004061E1
 004061B3    mov         eax,edi
 004061B5    cdq
 004061B6    push        edx
 004061B7    push        eax
 004061B8    mov         eax,dword ptr [esp+10]
 004061BC    mov         edx,dword ptr [esp+14]
 004061C0    shld        edx,eax,4
 004061C4    shl         eax,4
 004061C7    add         eax,dword ptr [esp]
 004061CA    adc         edx,dword ptr [esp+4]
 004061CE    add         esp,8
 004061D1    mov         dword ptr [esp+8],eax
 004061D5    mov         dword ptr [esp+0C],edx
 004061D9    inc         ebp
 004061DA    xor         ebx,ebx
>004061DC    jmp         0040614D
 004061E1    cmp         byte ptr [esp+10],0
>004061E6    je          004062B8
 004061EC    mov         eax,dword ptr [esp+8]
 004061F0    mov         edx,dword ptr [esp+0C]
 004061F4    neg         eax
 004061F6    adc         edx,0
 004061F9    neg         edx
 004061FB    mov         dword ptr [esp+8],eax
 004061FF    mov         dword ptr [esp+0C],edx
>00406203    jmp         004062B8
 00406208    mov         al,byte ptr [esi+ebp-1]
 0040620C    add         al,0D0
 0040620E    sub         al,0A
>00406210    jae         00406271
 00406212    movzx       edi,byte ptr [esi+ebp-1]
 00406217    sub         edi,30
 0040621A    cmp         dword ptr [esp+0C],0
>0040621F    jne         0040622A
 00406221    cmp         dword ptr [esp+8],0
>00406226    jb          00406271
>00406228    jmp         0040622C
>0040622A    jl          00406271
 0040622C    cmp         dword ptr [esp+0C],0CCCCCCC
>00406234    jne         00406242
 00406236    cmp         dword ptr [esp+8],0CCCCCCCC
>0040623E    jbe         00406244
>00406240    jmp         00406271
>00406242    jg          00406271
 00406244    push        0
 00406246    push        0A
 00406248    mov         eax,dword ptr [esp+10]
 0040624C    mov         edx,dword ptr [esp+14]
 00406250    call        @_llmul
 00406255    push        edx
 00406256    push        eax
 00406257    mov         eax,edi
 00406259    cdq
 0040625A    add         eax,dword ptr [esp]
 0040625D    adc         edx,dword ptr [esp+4]
 00406261    add         esp,8
 00406264    mov         dword ptr [esp+8],eax
 00406268    mov         dword ptr [esp+0C],edx
 0040626C    inc         ebp
 0040626D    xor         ebx,ebx
>0040626F    jmp         00406208
 00406271    cmp         byte ptr [esp+10],0
>00406276    je          0040628F
 00406278    mov         eax,dword ptr [esp+8]
 0040627C    mov         edx,dword ptr [esp+0C]
 00406280    neg         eax
 00406282    adc         edx,0
 00406285    neg         edx
 00406287    mov         dword ptr [esp+8],eax
 0040628B    mov         dword ptr [esp+0C],edx
 0040628F    cmp         dword ptr [esp+0C],0
>00406294    jne         0040629B
 00406296    cmp         dword ptr [esp+8],0
>0040629B    je          004062B8
 0040629D    cmp         dword ptr [esp+0C],0
>004062A2    jne         004062AE
 004062A4    cmp         dword ptr [esp+8],0
 004062A9    setb        al
>004062AC    jmp         004062B1
 004062AE    setl        al
 004062B1    cmp         al,byte ptr [esp+10]
>004062B5    je          004062B8
 004062B7    dec         ebp
 004062B8    cmp         byte ptr [esi+ebp-1],0
 004062BD    setne       al
 004062C0    or          bl,al
>004062C2    je          004062CB
 004062C4    mov         eax,dword ptr [esp]
 004062C7    mov         dword ptr [eax],ebp
>004062C9    jmp         004062D2
 004062CB    mov         eax,dword ptr [esp]
 004062CE    xor         edx,edx
 004062D0    mov         dword ptr [eax],edx
 004062D2    mov         eax,dword ptr [esp+8]
 004062D6    mov         edx,dword ptr [esp+0C]
 004062DA    add         esp,14
 004062DD    pop         ebp
 004062DE    pop         edi
 004062DF    pop         esi
 004062E0    pop         ebx
 004062E1    ret
end;*}

//004062E4
function @DynArrayLength(Arr:Pointer):Longint;
begin
{*
 004062E4    test        eax,eax
>004062E6    je          004062EB
 004062E8    mov         eax,dword ptr [eax-4]
 004062EB    ret
*}
end;

//004062EC
{*function sub_004062EC:?;
begin
 004062EC    call        @DynArrayLength
 004062F1    dec         eax
 004062F2    ret
end;*}

//004062F4
procedure CopyArray(dest:Pointer; source:Pointer; typeInfo:Pointer; cnt:Integer);
begin
{*
 004062F4    push        ebp
 004062F5    mov         ebp,esp
 004062F7    push        dword ptr [ebp+8]
 004062FA    call        @CopyArray
 004062FF    pop         ebp
 00406300    ret         4
*}
end;

//00406304
procedure sub_00406304;
begin
{*
>00406304    jmp         @FinalizeArray
*}
end;

//0040630C
procedure sub_0040630C;
begin
{*
 0040630C    call        @DynArrayClear
 00406311    ret
*}
end;

//00406314
procedure DynArraySetLength(var arr:Pointer; typeInfo:PDynArrayTypeInfo; dimCnt:Longint; lenVec:PLongint);
begin
{*
 00406314    push        ebp
 00406315    mov         ebp,esp
 00406317    add         esp,0FFFFFFE4
 0040631A    push        ebx
 0040631B    push        esi
 0040631C    push        edi
 0040631D    mov         dword ptr [ebp-0C],ecx
 00406320    mov         dword ptr [ebp-8],edx
 00406323    mov         dword ptr [ebp-4],eax
 00406326    mov         eax,dword ptr [ebp-4]
 00406329    mov         eax,dword ptr [eax]
 0040632B    mov         dword ptr [ebp-18],eax
 0040632E    mov         eax,dword ptr [ebp+8]
 00406331    mov         ebx,dword ptr [eax]
 00406333    test        ebx,ebx
>00406335    jg          00406352
 00406337    test        ebx,ebx
>00406339    jge         00406342
 0040633B    mov         al,4
 0040633D    call        Error
 00406342    mov         eax,dword ptr [ebp-4]
 00406345    mov         edx,dword ptr [ebp-8]
 00406348    call        0040630C
>0040634D    jmp         004064B5
 00406352    xor         edi,edi
 00406354    cmp         dword ptr [ebp-18],0
>00406358    je          00406367
 0040635A    sub         dword ptr [ebp-18],4
 0040635E    mov         eax,dword ptr [ebp-18]
 00406361    mov         edi,dword ptr [eax]
 00406363    sub         dword ptr [ebp-18],4
 00406367    mov         eax,dword ptr [ebp-8]
 0040636A    movzx       eax,byte ptr [eax+1]
 0040636E    add         dword ptr [ebp-8],eax
 00406371    mov         eax,dword ptr [ebp-8]
 00406374    mov         esi,dword ptr [eax+2]
 00406377    mov         edx,dword ptr [eax+6]
 0040637A    test        edx,edx
>0040637C    je          00406385
 0040637E    mov         eax,dword ptr [edx]
 00406380    mov         dword ptr [ebp-8],eax
>00406383    jmp         0040638A
 00406385    xor         eax,eax
 00406387    mov         dword ptr [ebp-8],eax
 0040638A    mov         eax,ebx
 0040638C    imul        esi
 0040638E    mov         dword ptr [ebp-14],eax
 00406391    mov         eax,dword ptr [ebp-14]
 00406394    cdq
 00406395    idiv        eax,ebx
 00406397    cmp         esi,eax
>00406399    je          004063A2
 0040639B    mov         al,4
 0040639D    call        Error
 004063A2    add         dword ptr [ebp-14],8
 004063A6    cmp         dword ptr [ebp-18],0
>004063AA    je          004063B4
 004063AC    mov         eax,dword ptr [ebp-18]
 004063AF    cmp         dword ptr [eax],1
>004063B2    jne         004063F0
 004063B4    mov         eax,dword ptr [ebp-18]
 004063B7    mov         dword ptr [ebp-1C],eax
 004063BA    cmp         edi,ebx
>004063BC    jle         004063DD
 004063BE    cmp         dword ptr [ebp-8],0
>004063C2    je          004063DD
 004063C4    mov         eax,dword ptr [ebp-18]
 004063C7    add         eax,8
 004063CA    mov         edx,ebx
 004063CC    imul        edx,esi
 004063CF    add         eax,edx
 004063D1    mov         ecx,edi
 004063D3    sub         ecx,ebx
 004063D5    mov         edx,dword ptr [ebp-8]
 004063D8    call        00406304
 004063DD    lea         eax,[ebp-1C]
 004063E0    mov         edx,dword ptr [ebp-14]
 004063E3    call        @ReallocMem
 004063E8    mov         eax,dword ptr [ebp-1C]
 004063EB    mov         dword ptr [ebp-18],eax
>004063EE    jmp         00406453
 004063F0    mov         eax,dword ptr [ebp-18]
 004063F3    dec         dword ptr [eax]
 004063F5    mov         eax,dword ptr [ebp-14]
 004063F8    call        @GetMem
 004063FD    mov         dword ptr [ebp-18],eax
 00406400    mov         dword ptr [ebp-10],edi
 00406403    cmp         ebx,dword ptr [ebp-10]
>00406406    jge         0040640B
 00406408    mov         dword ptr [ebp-10],ebx
 0040640B    cmp         dword ptr [ebp-8],0
>0040640F    je          0040643D
 00406411    mov         edx,dword ptr [ebp-10]
 00406414    imul        edx,esi
 00406417    mov         eax,dword ptr [ebp-18]
 0040641A    add         eax,8
 0040641D    xor         ecx,ecx
 0040641F    call        @FillChar
 00406424    mov         eax,dword ptr [ebp-10]
 00406427    push        eax
 00406428    mov         edx,dword ptr [ebp-4]
 0040642B    mov         edx,dword ptr [edx]
 0040642D    mov         eax,dword ptr [ebp-18]
 00406430    add         eax,8
 00406433    mov         ecx,dword ptr [ebp-8]
 00406436    call        CopyArray
>0040643B    jmp         00406453
 0040643D    mov         ecx,dword ptr [ebp-10]
 00406440    imul        ecx,esi
 00406443    mov         edx,dword ptr [ebp-18]
 00406446    add         edx,8
 00406449    mov         eax,dword ptr [ebp-4]
 0040644C    mov         eax,dword ptr [eax]
 0040644E    call        Move
 00406453    mov         eax,dword ptr [ebp-18]
 00406456    mov         dword ptr [eax],1
 0040645C    add         dword ptr [ebp-18],4
 00406460    mov         eax,dword ptr [ebp-18]
 00406463    mov         dword ptr [eax],ebx
 00406465    add         dword ptr [ebp-18],4
 00406469    mov         edx,ebx
 0040646B    sub         edx,edi
 0040646D    imul        edx,esi
 00406470    mov         eax,esi
 00406472    imul        eax,edi
 00406475    add         eax,dword ptr [ebp-18]
 00406478    xor         ecx,ecx
 0040647A    call        @FillChar
 0040647F    cmp         dword ptr [ebp-0C],1
>00406483    jle         004064AD
 00406485    add         dword ptr [ebp+8],4
 00406489    dec         dword ptr [ebp-0C]
 0040648C    dec         ebx
 0040648D    test        ebx,ebx
>0040648F    jl          004064AD
 00406491    inc         ebx
 00406492    xor         esi,esi
 00406494    mov         eax,dword ptr [ebp+8]
 00406497    push        eax
 00406498    mov         eax,dword ptr [ebp-18]
 0040649B    lea         eax,[eax+esi*4]
 0040649E    mov         ecx,dword ptr [ebp-0C]
 004064A1    mov         edx,dword ptr [ebp-8]
 004064A4    call        DynArraySetLength
 004064A9    inc         esi
 004064AA    dec         ebx
>004064AB    jne         00406494
 004064AD    mov         eax,dword ptr [ebp-4]
 004064B0    mov         edx,dword ptr [ebp-18]
 004064B3    mov         dword ptr [eax],edx
 004064B5    pop         edi
 004064B6    pop         esi
 004064B7    pop         ebx
 004064B8    mov         esp,ebp
 004064BA    pop         ebp
 004064BB    ret         4
*}
end;

//004064C0
procedure @DynArraySetLength(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo; DimCnt:Longint; LengthVec:Longint);
begin
{*
 004064C0    push        esp
 004064C1    add         dword ptr [esp],4
 004064C5    call        DynArraySetLength
 004064CA    ret
*}
end;

//004064CC
procedure @DynArrayCopy(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; var Result:Pointer);
begin
{*
 004064CC    push        ebx
 004064CD    test        eax,eax
>004064CF    je          004064E3
 004064D1    mov         ebx,eax
 004064D3    sub         ebx,4
 004064D6    mov         ebx,dword ptr [ebx]
 004064D8    push        ebx
 004064D9    push        ecx
 004064DA    xor         ecx,ecx
 004064DC    call        @DynArrayCopyRange
 004064E1    pop         ebx
 004064E2    ret
 004064E3    mov         eax,ecx
 004064E5    call        @DynArrayClear
 004064EA    pop         ebx
 004064EB    ret
*}
end;

//004064EC
procedure @DynArrayCopyRange(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; Index:Integer; Count:Integer; var Result:Pointer);
begin
{*
 004064EC    push        ebp
 004064ED    mov         ebp,esp
 004064EF    add         esp,0FFFFFFF0
 004064F2    push        ebx
 004064F3    push        esi
 004064F4    push        edi
 004064F5    mov         esi,ecx
 004064F7    mov         dword ptr [ebp-8],edx
 004064FA    mov         dword ptr [ebp-4],eax
 004064FD    mov         ebx,dword ptr [ebp+0C]
 00406500    xor         eax,eax
 00406502    mov         dword ptr [ebp-10],eax
 00406505    cmp         dword ptr [ebp-4],0
>00406509    je          004065CE
 0040650F    mov         eax,dword ptr [ebp-8]
 00406512    mov         dword ptr [ebp-0C],eax
 00406515    test        esi,esi
>00406517    jge         0040651D
 00406519    add         ebx,esi
 0040651B    xor         esi,esi
 0040651D    mov         eax,dword ptr [ebp-4]
 00406520    sub         eax,4
 00406523    mov         eax,dword ptr [eax]
 00406525    cmp         eax,esi
>00406527    jge         0040652B
 00406529    mov         esi,eax
 0040652B    mov         edx,eax
 0040652D    sub         edx,esi
 0040652F    cmp         ebx,edx
>00406531    jle         00406535
 00406533    mov         ebx,edx
 00406535    test        ebx,ebx
>00406537    jge         0040653B
 00406539    xor         ebx,ebx
 0040653B    test        ebx,ebx
>0040653D    jle         004065CE
 00406543    mov         eax,dword ptr [ebp-0C]
 00406546    movzx       eax,byte ptr [eax+1]
 0040654A    add         dword ptr [ebp-0C],eax
 0040654D    mov         eax,dword ptr [ebp-0C]
 00406550    mov         edi,dword ptr [eax+2]
 00406553    mov         eax,dword ptr [ebp-0C]
 00406556    mov         eax,dword ptr [eax+6]
 00406559    test        eax,eax
>0040655B    je          00406564
 0040655D    mov         eax,dword ptr [eax]
 0040655F    mov         dword ptr [ebp-0C],eax
>00406562    jmp         00406569
 00406564    xor         eax,eax
 00406566    mov         dword ptr [ebp-0C],eax
 00406569    mov         eax,ebx
 0040656B    imul        edi
 0040656D    add         eax,8
 00406570    call        @GetMem
 00406575    mov         dword ptr [ebp-10],eax
 00406578    mov         eax,dword ptr [ebp-10]
 0040657B    mov         dword ptr [eax],1
 00406581    add         dword ptr [ebp-10],4
 00406585    mov         eax,dword ptr [ebp-10]
 00406588    mov         dword ptr [eax],ebx
 0040658A    add         dword ptr [ebp-10],4
 0040658E    imul        esi,edi
 00406591    add         dword ptr [ebp-4],esi
 00406594    test        ebx,ebx
>00406596    jle         004065CE
 00406598    cmp         dword ptr [ebp-0C],0
>0040659C    je          004065BE
 0040659E    mov         edx,ebx
 004065A0    imul        edx,edi
 004065A3    mov         eax,dword ptr [ebp-10]
 004065A6    xor         ecx,ecx
 004065A8    call        @FillChar
 004065AD    push        ebx
 004065AE    mov         ecx,dword ptr [ebp-0C]
 004065B1    mov         edx,dword ptr [ebp-4]
 004065B4    mov         eax,dword ptr [ebp-10]
 004065B7    call        CopyArray
>004065BC    jmp         004065CE
 004065BE    mov         ecx,ebx
 004065C0    imul        ecx,edi
 004065C3    mov         edx,dword ptr [ebp-10]
 004065C6    mov         eax,dword ptr [ebp-4]
 004065C9    call        Move
 004065CE    mov         eax,dword ptr [ebp+8]
 004065D1    mov         edx,dword ptr [ebp-8]
 004065D4    call        0040630C
 004065D9    mov         eax,dword ptr [ebp+8]
 004065DC    mov         edx,dword ptr [ebp-10]
 004065DF    mov         dword ptr [eax],edx
 004065E1    pop         edi
 004065E2    pop         esi
 004065E3    pop         ebx
 004065E4    mov         esp,ebp
 004065E6    pop         ebp
 004065E7    ret         8
*}
end;

//004065EC
procedure @DynArrayClear(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo);
begin
{*
 004065EC    mov         ecx,dword ptr [eax]
 004065EE    test        ecx,ecx
>004065F0    je          00406625
 004065F2    mov         dword ptr [eax],0
 004065F8    lock dec    dword ptr [ecx-8]
>004065FC    jne         00406625
 004065FE    push        eax
 004065FF    mov         eax,ecx
 00406601    xor         ecx,ecx
 00406603    mov         cl,byte ptr [edx+1]
 00406606    mov         edx,dword ptr [ecx+edx+6]
 0040660A    test        edx,edx
>0040660C    je          0040661C
 0040660E    mov         ecx,dword ptr [eax-4]
 00406611    test        ecx,ecx
>00406613    je          0040661C
 00406615    mov         edx,dword ptr [edx]
 00406617    call        @FinalizeArray
 0040661C    sub         eax,8
 0040661F    call        @FreeMem
 00406624    pop         eax
 00406625    ret
*}
end;

//00406628
procedure @DynArrayAsg(var Dest:Pointer; Source:Pointer; TypeInfo:PDynArrayTypeInfo);
begin
{*
 00406628    push        ebx
 00406629    mov         ebx,dword ptr [eax]
 0040662B    test        edx,edx
>0040662D    je          00406633
 0040662F    lock inc    dword ptr [edx-8]
 00406633    test        ebx,ebx
>00406635    je          0040664B
 00406637    lock dec    dword ptr [ebx-8]
>0040663B    jne         0040664B
 0040663D    push        eax
 0040663E    push        edx
 0040663F    mov         edx,ecx
 00406641    inc         dword ptr [ebx-8]
 00406644    call        @DynArrayClear
 00406649    pop         edx
 0040664A    pop         eax
 0040664B    mov         dword ptr [eax],edx
 0040664D    pop         ebx
 0040664E    ret
*}
end;

//00406650
function FindHInstance(Address:Pointer):Cardinal;
begin
{*
 00406650    add         esp,0FFFFFFE4
 00406653    push        1C
 00406655    lea         edx,[esp+4]
 00406659    push        edx
 0040665A    push        eax
 0040665B    call        kernel32.VirtualQuery
 00406660    cmp         dword ptr [esp+10],1000
>00406668    jne         00406670
 0040666A    mov         eax,dword ptr [esp+4]
>0040666E    jmp         00406672
 00406670    xor         eax,eax
 00406672    add         esp,1C
 00406675    ret
*}
end;

//00406678
procedure sub_00406678;
begin
{*
 00406678    call        FindHInstance
 0040667D    ret
*}
end;

//00406680
function DelayLoadResourceModule(Module:PLibModule):Cardinal;
begin
{*
 00406680    push        ebx
 00406681    push        esi
 00406682    add         esp,0FFFFFEF8
 00406688    mov         ebx,eax
 0040668A    cmp         dword ptr [ebx+10],0
>0040668E    jne         004066BB
 00406690    push        105
 00406695    lea         eax,[esp+4]
 00406699    push        eax
 0040669A    mov         eax,dword ptr [ebx+4]
 0040669D    push        eax
 0040669E    call        kernel32.GetModuleFileNameA
 004066A3    mov         eax,esp
 004066A5    mov         dl,1
 004066A7    call        LoadResourceModule
 004066AC    mov         esi,eax
 004066AE    mov         dword ptr [ebx+10],esi
 004066B1    test        esi,esi
>004066B3    jne         004066BB
 004066B5    mov         eax,dword ptr [ebx+4]
 004066B8    mov         dword ptr [ebx+10],eax
 004066BB    mov         eax,dword ptr [ebx+10]
 004066BE    add         esp,108
 004066C4    pop         esi
 004066C5    pop         ebx
 004066C6    ret
*}
end;

//004066C8
{*function sub_004066C8(?:LongWord):?;
begin
 004066C8    push        ebx
 004066C9    push        esi
 004066CA    push        edi
 004066CB    push        ecx
 004066CC    mov         ebx,eax
 004066CE    mov         esi,esp
 004066D0    mov         eax,[0056B038];0x0 gvar_0056B038
 004066D5    mov         dword ptr [esi],eax
 004066D7    cmp         dword ptr [esi],0
>004066DA    je          00406707
 004066DC    mov         eax,dword ptr [esi]
 004066DE    cmp         ebx,dword ptr [eax+4]
>004066E1    je          004066F1
 004066E3    mov         eax,dword ptr [esi]
 004066E5    cmp         ebx,dword ptr [eax+8]
>004066E8    je          004066F1
 004066EA    mov         eax,dword ptr [esi]
 004066EC    cmp         ebx,dword ptr [eax+0C]
>004066EF    jne         004066FC
 004066F1    mov         eax,dword ptr [esi]
 004066F3    call        DelayLoadResourceModule
 004066F8    mov         edi,eax
>004066FA    jmp         00406709
 004066FC    mov         eax,dword ptr [esi]
 004066FE    mov         eax,dword ptr [eax]
 00406700    mov         dword ptr [esi],eax
 00406702    cmp         dword ptr [esi],0
>00406705    jne         004066DC
 00406707    mov         edi,ebx
 00406709    mov         eax,edi
 0040670B    pop         edx
 0040670C    pop         edi
 0040670D    pop         esi
 0040670E    pop         ebx
 0040670F    ret
end;*}

//00406710
{*function sub_00406710(?:?):?;
begin
 00406710    push        ebp
 00406711    mov         ebp,esp
 00406713    push        ecx
 00406714    push        ebx
 00406715    push        esi
 00406716    lea         esi,[ebp-4]
 00406719    mov         dword ptr [esi],eax
>0040671B    jmp         00406727
 0040671D    mov         eax,dword ptr [esi]
 0040671F    push        eax
 00406720    call        user32.CharNextA
 00406725    mov         dword ptr [esi],eax
 00406727    mov         eax,dword ptr [esi]
 00406729    mov         bl,byte ptr [eax]
 0040672B    test        bl,bl
>0040672D    je          00406734
 0040672F    cmp         bl,5C
>00406732    jne         0040671D
 00406734    mov         eax,dword ptr [esi]
 00406736    pop         esi
 00406737    pop         ebx
 00406738    pop         ecx
 00406739    pop         ebp
 0040673A    ret
end;*}

//0040673C
{*function sub_0040673C(?:?; ?:?):?;
begin
 0040673C    push        ebp
 0040673D    mov         ebp,esp
 0040673F    add         esp,0FFFFFDA4
 00406745    push        ebx
 00406746    push        esi
 00406747    push        edi
 00406748    mov         dword ptr [ebp-8],edx
 0040674B    mov         dword ptr [ebp-4],eax
 0040674E    mov         eax,dword ptr [ebp-4]
 00406751    mov         dword ptr [ebp-0C],eax
 00406754    push        4068F0;'kernel32.dll'
 00406759    call        kernel32.GetModuleHandleA
 0040675E    mov         esi,eax
 00406760    test        esi,esi
>00406762    je          004067A8
 00406764    push        406900;'GetLongPathNameA'
 00406769    push        esi
 0040676A    call        kernel32.GetProcAddress
 0040676F    mov         dword ptr [ebp-18],eax
 00406772    cmp         dword ptr [ebp-18],0
>00406776    je          004067A8
 00406778    push        105
 0040677D    lea         eax,[ebp-25B]
 00406783    push        eax
 00406784    mov         eax,dword ptr [ebp-4]
 00406787    push        eax
 00406788    call        dword ptr [ebp-18]
 0040678B    test        eax,eax
>0040678D    je          004067A8
 0040678F    mov         eax,dword ptr [ebp-8]
 00406792    push        eax
 00406793    lea         eax,[ebp-25B]
 00406799    push        eax
 0040679A    mov         eax,dword ptr [ebp-4]
 0040679D    push        eax
 0040679E    call        kernel32.lstrcpyn
>004067A3    jmp         004068E4
 004067A8    mov         eax,dword ptr [ebp-4]
 004067AB    cmp         byte ptr [eax],5C
>004067AE    jne         004067F1
 004067B0    mov         eax,dword ptr [ebp-4]
 004067B3    cmp         byte ptr [eax+1],5C
>004067B7    jne         004068E4
 004067BD    mov         eax,dword ptr [ebp-4]
 004067C0    add         eax,2
 004067C3    call        00406710
 004067C8    mov         dword ptr [ebp-10],eax
 004067CB    mov         eax,dword ptr [ebp-10]
 004067CE    cmp         byte ptr [eax],0
>004067D1    je          004068E4
 004067D7    mov         eax,dword ptr [ebp-10]
 004067DA    inc         eax
 004067DB    call        00406710
 004067E0    mov         dword ptr [ebp-10],eax
 004067E3    mov         eax,dword ptr [ebp-10]
 004067E6    cmp         byte ptr [eax],0
>004067E9    je          004068E4
>004067EF    jmp         004067FA
 004067F1    mov         eax,dword ptr [ebp-4]
 004067F4    add         eax,2
 004067F7    mov         dword ptr [ebp-10],eax
 004067FA    mov         ebx,dword ptr [ebp-10]
 004067FD    sub         ebx,dword ptr [ebp-4]
 00406800    lea         eax,[ebx+1]
 00406803    push        eax
 00406804    mov         eax,dword ptr [ebp-4]
 00406807    push        eax
 00406808    lea         eax,[ebp-25B]
 0040680E    push        eax
 0040680F    call        kernel32.lstrcpyn
>00406814    jmp         004068C4
 00406819    mov         eax,dword ptr [ebp-10]
 0040681C    inc         eax
 0040681D    call        00406710
 00406822    mov         dword ptr [ebp-14],eax
 00406825    mov         edi,dword ptr [ebp-14]
 00406828    sub         edi,dword ptr [ebp-10]
 0040682B    mov         eax,edi
 0040682D    add         eax,ebx
 0040682F    inc         eax
 00406830    cmp         eax,105
>00406835    jg          004068E4
 0040683B    inc         edi
 0040683C    push        edi
 0040683D    mov         eax,dword ptr [ebp-10]
 00406840    push        eax
 00406841    lea         eax,[ebp-25B]
 00406847    add         eax,ebx
 00406849    push        eax
 0040684A    call        kernel32.lstrcpyn
 0040684F    lea         eax,[ebp-156]
 00406855    push        eax
 00406856    lea         eax,[ebp-25B]
 0040685C    push        eax
 0040685D    call        kernel32.FindFirstFileA
 00406862    mov         esi,eax
 00406864    cmp         esi,0FFFFFFFF
>00406867    je          004068E4
 00406869    push        esi
 0040686A    call        kernel32.FindClose
 0040686F    lea         eax,[ebp-12A]
 00406875    push        eax
 00406876    call        kernel32.lstrlen
 0040687B    lea         edx,[ebx+1]
 0040687E    add         eax,edx
 00406880    inc         eax
 00406881    cmp         eax,105
>00406886    jg          004068E4
 00406888    mov         byte ptr [ebp+ebx-25B],5C
 00406890    mov         eax,105
 00406895    sub         eax,ebx
 00406897    dec         eax
 00406898    push        eax
 00406899    lea         eax,[ebp-12A]
 0040689F    push        eax
 004068A0    lea         eax,[ebp-25B]
 004068A6    add         eax,ebx
 004068A8    inc         eax
 004068A9    push        eax
 004068AA    call        kernel32.lstrcpyn
 004068AF    lea         eax,[ebp-12A]
 004068B5    push        eax
 004068B6    call        kernel32.lstrlen
 004068BB    inc         eax
 004068BC    add         ebx,eax
 004068BE    mov         eax,dword ptr [ebp-14]
 004068C1    mov         dword ptr [ebp-10],eax
 004068C4    mov         eax,dword ptr [ebp-10]
 004068C7    cmp         byte ptr [eax],0
>004068CA    jne         00406819
 004068D0    mov         eax,dword ptr [ebp-8]
 004068D3    push        eax
 004068D4    lea         eax,[ebp-25B]
 004068DA    push        eax
 004068DB    mov         eax,dword ptr [ebp-4]
 004068DE    push        eax
 004068DF    call        kernel32.lstrcpyn
 004068E4    mov         eax,dword ptr [ebp-0C]
 004068E7    pop         edi
 004068E8    pop         esi
 004068E9    pop         ebx
 004068EA    mov         esp,ebp
 004068EC    pop         ebp
 004068ED    ret
end;*}

//00406914
function LoadResourceModule(ModuleName:PAnsiChar; CheckOwner:Boolean):Cardinal;
begin
{*
 00406914    push        ebp
 00406915    mov         ebp,esp
 00406917    add         esp,0FFFFFEDC
 0040691D    push        ebx
 0040691E    mov         dword ptr [ebp-4],eax
 00406921    push        105
 00406926    lea         eax,[ebp-121]
 0040692C    push        eax
 0040692D    push        0
 0040692F    call        kernel32.GetModuleFileNameA
 00406934    mov         byte ptr [ebp-12],0
 00406938    lea         eax,[ebp-8]
 0040693B    push        eax
 0040693C    push        0F0019
 00406941    push        0
 00406943    push        406B58
 00406948    push        80000001
 0040694D    call        advapi32.RegOpenKeyExA
 00406952    test        eax,eax
>00406954    je          00406996
 00406956    lea         eax,[ebp-8]
 00406959    push        eax
 0040695A    push        0F0019
 0040695F    push        0
 00406961    push        406B58
 00406966    push        80000002
 0040696B    call        advapi32.RegOpenKeyExA
 00406970    test        eax,eax
>00406972    je          00406996
 00406974    lea         eax,[ebp-8]
 00406977    push        eax
 00406978    push        0F0019
 0040697D    push        0
 0040697F    push        406B74
 00406984    push        80000001
 00406989    call        advapi32.RegOpenKeyExA
 0040698E    test        eax,eax
>00406990    jne         00406A1F
 00406996    xor         eax,eax
 00406998    push        ebp
 00406999    push        406A18
 0040699E    push        dword ptr fs:[eax]
 004069A1    mov         dword ptr fs:[eax],esp
 004069A4    mov         dword ptr [ebp-18],5
 004069AB    lea         eax,[ebp-121]
 004069B1    mov         edx,105
 004069B6    call        0040673C
 004069BB    lea         eax,[ebp-18]
 004069BE    push        eax
 004069BF    lea         eax,[ebp-12]
 004069C2    push        eax
 004069C3    push        0
 004069C5    push        0
 004069C7    lea         eax,[ebp-121]
 004069CD    push        eax
 004069CE    mov         eax,dword ptr [ebp-8]
 004069D1    push        eax
 004069D2    call        advapi32.RegQueryValueExA
 004069D7    test        eax,eax
>004069D9    je          004069FD
 004069DB    lea         eax,[ebp-18]
 004069DE    push        eax
 004069DF    lea         eax,[ebp-12]
 004069E2    push        eax
 004069E3    push        0
 004069E5    push        0
 004069E7    push        406B94
 004069EC    mov         eax,dword ptr [ebp-8]
 004069EF    push        eax
 004069F0    call        advapi32.RegQueryValueExA
 004069F5    test        eax,eax
>004069F7    je          004069FD
 004069F9    mov         byte ptr [ebp-12],0
 004069FD    mov         byte ptr [ebp-0E],0
 00406A01    xor         eax,eax
 00406A03    pop         edx
 00406A04    pop         ecx
 00406A05    pop         ecx
 00406A06    mov         dword ptr fs:[eax],edx
 00406A09    push        406A1F
 00406A0E    mov         eax,dword ptr [ebp-8]
 00406A11    push        eax
 00406A12    call        advapi32.RegCloseKey
 00406A17    ret
>00406A18    jmp         @HandleFinally
>00406A1D    jmp         00406A0E
 00406A1F    push        105
 00406A24    mov         eax,dword ptr [ebp-4]
 00406A27    push        eax
 00406A28    lea         eax,[ebp-121]
 00406A2E    push        eax
 00406A2F    call        kernel32.lstrcpyn
 00406A34    push        5
 00406A36    lea         eax,[ebp-0D]
 00406A39    push        eax
 00406A3A    push        3
 00406A3C    call        kernel32.GetThreadLocale
 00406A41    push        eax
 00406A42    call        kernel32.GetLocaleInfoA
 00406A47    xor         ebx,ebx
 00406A49    cmp         byte ptr [ebp-121],0
>00406A50    je          00406B4F
 00406A56    cmp         byte ptr [ebp-0D],0
>00406A5A    jne         00406A66
 00406A5C    cmp         byte ptr [ebp-12],0
>00406A60    je          00406B4F
 00406A66    lea         eax,[ebp-121]
 00406A6C    push        eax
 00406A6D    call        kernel32.lstrlen
 00406A72    lea         edx,[ebp-121]
 00406A78    add         eax,edx
 00406A7A    mov         dword ptr [ebp-1C],eax
>00406A7D    jmp         00406A82
 00406A7F    dec         dword ptr [ebp-1C]
 00406A82    mov         eax,dword ptr [ebp-1C]
 00406A85    cmp         byte ptr [eax],2E
>00406A88    je          00406A95
 00406A8A    lea         eax,[ebp-121]
 00406A90    cmp         eax,dword ptr [ebp-1C]
>00406A93    jne         00406A7F
 00406A95    lea         eax,[ebp-121]
 00406A9B    cmp         eax,dword ptr [ebp-1C]
>00406A9E    je          00406B4F
 00406AA4    inc         dword ptr [ebp-1C]
 00406AA7    cmp         byte ptr [ebp-12],0
>00406AAB    je          00406AD9
 00406AAD    mov         edx,dword ptr [ebp-1C]
 00406AB0    sub         edx,eax
 00406AB2    mov         eax,105
 00406AB7    sub         eax,edx
 00406AB9    push        eax
 00406ABA    lea         eax,[ebp-12]
 00406ABD    push        eax
 00406ABE    mov         eax,dword ptr [ebp-1C]
 00406AC1    push        eax
 00406AC2    call        kernel32.lstrcpyn
 00406AC7    push        2
 00406AC9    push        0
 00406ACB    lea         eax,[ebp-121]
 00406AD1    push        eax
 00406AD2    call        kernel32.LoadLibraryExA
 00406AD7    mov         ebx,eax
 00406AD9    test        ebx,ebx
>00406ADB    jne         00406B4F
 00406ADD    cmp         byte ptr [ebp-0D],0
>00406AE1    je          00406B4F
 00406AE3    lea         eax,[ebp-121]
 00406AE9    mov         edx,dword ptr [ebp-1C]
 00406AEC    sub         edx,eax
 00406AEE    mov         eax,105
 00406AF3    sub         eax,edx
 00406AF5    push        eax
 00406AF6    lea         eax,[ebp-0D]
 00406AF9    push        eax
 00406AFA    mov         eax,dword ptr [ebp-1C]
 00406AFD    push        eax
 00406AFE    call        kernel32.lstrcpyn
 00406B03    push        2
 00406B05    push        0
 00406B07    lea         eax,[ebp-121]
 00406B0D    push        eax
 00406B0E    call        kernel32.LoadLibraryExA
 00406B13    mov         ebx,eax
 00406B15    test        ebx,ebx
>00406B17    jne         00406B4F
 00406B19    mov         byte ptr [ebp-0B],0
 00406B1D    lea         eax,[ebp-121]
 00406B23    mov         edx,dword ptr [ebp-1C]
 00406B26    sub         edx,eax
 00406B28    mov         eax,105
 00406B2D    sub         eax,edx
 00406B2F    push        eax
 00406B30    lea         eax,[ebp-0D]
 00406B33    push        eax
 00406B34    mov         eax,dword ptr [ebp-1C]
 00406B37    push        eax
 00406B38    call        kernel32.lstrcpyn
 00406B3D    push        2
 00406B3F    push        0
 00406B41    lea         eax,[ebp-121]
 00406B47    push        eax
 00406B48    call        kernel32.LoadLibraryExA
 00406B4D    mov         ebx,eax
 00406B4F    mov         eax,ebx
 00406B51    pop         ebx
 00406B52    mov         esp,ebp
 00406B54    pop         ebp
 00406B55    ret
*}
end;

//00406B98
procedure AddModuleUnloadProc(Proc:TModuleUnloadProc);
begin
{*
 00406B98    call        AddModuleUnloadProc
 00406B9D    ret
*}
end;

//00406BA0
procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProc);
begin
{*
 00406BA0    call        00406BC8
 00406BA5    ret
*}
end;

//00406BA8
procedure AddModuleUnloadProc(Proc:TModuleUnloadProcLW);
begin
{*
 00406BA8    push        ebx
 00406BA9    mov         ebx,eax
 00406BAB    mov         eax,8
 00406BB0    call        @GetMem
 00406BB5    mov         edx,dword ptr ds:[56B03C];gvar_0056B03C
 00406BBB    mov         dword ptr [eax],edx
 00406BBD    mov         dword ptr [eax+4],ebx
 00406BC0    mov         [0056B03C],eax;gvar_0056B03C
 00406BC5    pop         ebx
 00406BC6    ret
*}
end;

//00406BC8
{*procedure sub_00406BC8(?:?);
begin
 00406BC8    push        ebx
 00406BC9    push        esi
 00406BCA    push        edi
 00406BCB    add         esp,0FFFFFFF8
 00406BCE    mov         esi,eax
 00406BD0    lea         edi,[esp+4]
 00406BD4    mov         eax,[0056B03C];0x0 gvar_0056B03C
 00406BD9    mov         dword ptr [esp],eax
 00406BDC    cmp         dword ptr [esp],0
>00406BE0    je          00406C07
 00406BE2    mov         eax,dword ptr [esp]
 00406BE5    mov         eax,dword ptr [eax+4]
 00406BE8    cmp         eax,esi
>00406BEA    jne         00406C07
 00406BEC    mov         eax,[0056B03C];0x0 gvar_0056B03C
 00406BF1    mov         eax,dword ptr [eax]
 00406BF3    mov         [0056B03C],eax;gvar_0056B03C
 00406BF8    mov         edx,8
 00406BFD    mov         eax,dword ptr [esp]
 00406C00    call        @FreeMem
>00406C05    jmp         00406C47
 00406C07    mov         eax,dword ptr [esp]
 00406C0A    mov         dword ptr [edi],eax
 00406C0C    cmp         dword ptr [edi],0
>00406C0F    je          00406C47
 00406C11    mov         eax,dword ptr [edi]
 00406C13    mov         ebx,dword ptr [eax]
 00406C15    test        ebx,ebx
>00406C17    je          00406C3C
 00406C19    mov         eax,dword ptr [ebx+4]
 00406C1C    cmp         eax,esi
>00406C1E    jne         00406C3C
 00406C20    mov         dword ptr [esp],ebx
 00406C23    mov         eax,dword ptr [edi]
 00406C25    mov         eax,dword ptr [eax]
 00406C27    mov         eax,dword ptr [eax]
 00406C29    mov         edx,dword ptr [edi]
 00406C2B    mov         dword ptr [edx],eax
 00406C2D    mov         edx,8
 00406C32    mov         eax,dword ptr [esp]
 00406C35    call        @FreeMem
>00406C3A    jmp         00406C47
 00406C3C    mov         eax,dword ptr [edi]
 00406C3E    mov         eax,dword ptr [eax]
 00406C40    mov         dword ptr [edi],eax
 00406C42    cmp         dword ptr [edi],0
>00406C45    jne         00406C11
 00406C47    pop         ecx
 00406C48    pop         edx
 00406C49    pop         edi
 00406C4A    pop         esi
 00406C4B    pop         ebx
 00406C4C    ret
end;*}

//00406C50
procedure NotifyModuleUnload(HInstance:Cardinal);
begin
{*
 00406C50    push        ebp
 00406C51    mov         ebp,esp
 00406C53    add         esp,0FFFFFFF8
 00406C56    push        ebx
 00406C57    push        esi
 00406C58    push        edi
 00406C59    mov         dword ptr [ebp-4],eax
 00406C5C    mov         eax,[0056B03C];gvar_0056B03C
 00406C61    mov         dword ptr [ebp-8],eax
 00406C64    cmp         dword ptr [ebp-8],0
>00406C68    je          00406CA3
 00406C6A    xor         eax,eax
 00406C6C    push        ebp
 00406C6D    push        406C8B
 00406C72    push        dword ptr fs:[eax]
 00406C75    mov         dword ptr fs:[eax],esp
 00406C78    mov         ebx,dword ptr [ebp-8]
 00406C7B    mov         eax,dword ptr [ebp-4]
 00406C7E    call        dword ptr [ebx+4]
 00406C81    xor         eax,eax
 00406C83    pop         edx
 00406C84    pop         ecx
 00406C85    pop         ecx
 00406C86    mov         dword ptr fs:[eax],edx
>00406C89    jmp         00406C95
>00406C8B    jmp         @HandleAnyException
 00406C90    call        @DoneExcept
 00406C95    mov         eax,dword ptr [ebp-8]
 00406C98    mov         eax,dword ptr [eax]
 00406C9A    mov         dword ptr [ebp-8],eax
 00406C9D    cmp         dword ptr [ebp-8],0
>00406CA1    jne         00406C6A
 00406CA3    pop         edi
 00406CA4    pop         esi
 00406CA5    pop         ebx
 00406CA6    pop         ecx
 00406CA7    pop         ecx
 00406CA8    pop         ebp
 00406CA9    ret
*}
end;

//00406CAC
procedure RegisterModule(LibModule:PLibModule);
begin
{*
 00406CAC    mov         edx,dword ptr ds:[56B038];gvar_0056B038
 00406CB2    mov         dword ptr [eax],edx
 00406CB4    mov         [0056B038],eax;gvar_0056B038
 00406CB9    ret
*}
end;

//00406CBC
{*procedure sub_00406CBC(?:?);
begin
 00406CBC    push        ebp
 00406CBD    mov         ebp,esp
 00406CBF    add         esp,0FFFFFFF8
 00406CC2    mov         dword ptr [ebp-4],eax
 00406CC5    xor         eax,eax
 00406CC7    push        ebp
 00406CC8    push        406D35
 00406CCD    push        dword ptr fs:[eax]
 00406CD0    mov         dword ptr fs:[eax],esp
 00406CD3    mov         eax,dword ptr [ebp-4]
 00406CD6    mov         eax,dword ptr [eax+4]
 00406CD9    call        NotifyModuleUnload
 00406CDE    xor         eax,eax
 00406CE0    pop         edx
 00406CE1    pop         ecx
 00406CE2    pop         ecx
 00406CE3    mov         dword ptr fs:[eax],edx
 00406CE6    push        406D3C
 00406CEB    mov         eax,dword ptr [ebp-4]
 00406CEE    cmp         eax,dword ptr ds:[56B038];0x0 gvar_0056B038
>00406CF4    jne         00406D02
 00406CF6    mov         eax,dword ptr [ebp-4]
 00406CF9    mov         eax,dword ptr [eax]
 00406CFB    mov         [0056B038],eax;gvar_0056B038
>00406D00    jmp         00406D34
 00406D02    mov         eax,[0056B038];0x0 gvar_0056B038
 00406D07    mov         dword ptr [ebp-8],eax
 00406D0A    cmp         dword ptr [ebp-8],0
>00406D0E    je          00406D34
 00406D10    mov         eax,dword ptr [ebp-8]
 00406D13    mov         eax,dword ptr [eax]
 00406D15    cmp         eax,dword ptr [ebp-4]
>00406D18    jne         00406D26
 00406D1A    mov         eax,dword ptr [ebp-4]
 00406D1D    mov         eax,dword ptr [eax]
 00406D1F    mov         edx,dword ptr [ebp-8]
 00406D22    mov         dword ptr [edx],eax
>00406D24    jmp         00406D34
 00406D26    mov         eax,dword ptr [ebp-8]
 00406D29    mov         eax,dword ptr [eax]
 00406D2B    mov         dword ptr [ebp-8],eax
 00406D2E    cmp         dword ptr [ebp-8],0
>00406D32    jne         00406D10
 00406D34    ret
>00406D35    jmp         @HandleFinally
>00406D3A    jmp         00406CEB
 00406D3C    pop         ecx
 00406D3D    pop         ecx
 00406D3E    pop         ebp
 00406D3F    ret
end;*}

//00406D40
function @IntfClear(var Dest:IInterface):Pointer;
begin
{*
 00406D40    mov         edx,dword ptr [eax]
 00406D42    test        edx,edx
>00406D44    je          00406D54
 00406D46    mov         dword ptr [eax],0
 00406D4C    push        eax
 00406D4D    push        edx
 00406D4E    mov         eax,dword ptr [edx]
 00406D50    call        dword ptr [eax+8]
 00406D53    pop         eax
 00406D54    ret
*}
end;

//00406D58
procedure @IntfCopy(var Dest:IInterface; const Source:IInterface);
begin
{*
 00406D58    test        edx,edx
>00406D5A    je          00406D75
 00406D5C    push        edx
 00406D5D    push        eax
 00406D5E    mov         eax,dword ptr [edx]
 00406D60    push        edx
 00406D61    call        dword ptr [eax+4]
 00406D64    pop         eax
 00406D65    mov         ecx,dword ptr [eax]
 00406D67    pop         dword ptr [eax]
 00406D69    test        ecx,ecx
>00406D6B    jne         00406D6E
 00406D6D    ret
 00406D6E    mov         eax,dword ptr [ecx]
 00406D70    push        ecx
 00406D71    call        dword ptr [eax+8]
 00406D74    ret
 00406D75    mov         ecx,dword ptr [eax]
 00406D77    test        ecx,ecx
 00406D79    mov         dword ptr [eax],edx
>00406D7B    je          00406D83
 00406D7D    mov         eax,dword ptr [ecx]
 00406D7F    push        ecx
 00406D80    call        dword ptr [eax+8]
 00406D83    ret
*}
end;

//00406D84
procedure @IntfCast(var Dest:IInterface; const Source:IInterface; const IID:TGUID);
begin
{*
 00406D84    test        edx,edx
>00406D86    je          00406D40
 00406D8C    push        edi
 00406D8D    mov         edi,eax
 00406D8F    push        0
 00406D91    push        esp
 00406D92    push        ecx
 00406D93    push        edx
 00406D94    mov         eax,dword ptr [edx]
 00406D96    call        dword ptr [eax]
 00406D98    test        eax,eax
>00406D9A    je          00406DA3
 00406D9C    mov         al,17
>00406D9E    jmp         Error
 00406DA3    mov         eax,dword ptr [edi]
 00406DA5    test        eax,eax
>00406DA7    je          00406DAF
 00406DA9    push        eax
 00406DAA    mov         eax,dword ptr [eax]
 00406DAC    call        dword ptr [eax+8]
 00406DAF    pop         eax
 00406DB0    mov         dword ptr [edi],eax
 00406DB2    pop         edi
 00406DB3    ret
*}
end;

//00406DB4
procedure @IntfAddRef(const Dest:IInterface);
begin
{*
 00406DB4    test        eax,eax
>00406DB6    je          00406DBE
 00406DB8    push        eax
 00406DB9    mov         eax,dword ptr [eax]
 00406DBB    call        dword ptr [eax+4]
 00406DBE    ret
*}
end;

//00406DC0
procedure TInterfacedObject.AfterConstruction;
begin
{*
 00406DC0    add         eax,4
 00406DC3    push        eax
 00406DC4    call        kernel32.InterlockedDecrement
 00406DC9    ret
*}
end;

//00406DCC
procedure TInterfacedObject.BeforeDestruction;
begin
{*
 00406DCC    cmp         dword ptr [eax+4],0
>00406DD0    je          00406DD9
 00406DD2    mov         al,2
 00406DD4    call        Error
 00406DD9    ret
*}
end;

//00406DDC
function TInterfacedObject.NewInstance:TObject;
begin
{*
 00406DDC    call        TObject.NewInstance
 00406DE1    mov         dword ptr [eax+4],1
 00406DE8    ret
*}
end;

//00406DEC
function TContainedObject.QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;
begin
{*
 00406DEC    push        ebp
 00406DED    mov         ebp,esp
 00406DEF    push        ebx
 00406DF0    mov         ebx,dword ptr [ebp+8]
 00406DF3    mov         ecx,dword ptr [ebp+10]
 00406DF6    mov         edx,dword ptr [ebp+0C]
 00406DF9    mov         eax,ebx
 00406DFB    call        TObject.GetInterface
 00406E00    test        al,al
>00406E02    je          00406E08
 00406E04    xor         eax,eax
>00406E06    jmp         00406E0D
 00406E08    mov         eax,80004002
 00406E0D    pop         ebx
 00406E0E    pop         ebp
 00406E0F    ret         0C
*}
end;

//00406E14
function TInterfacedObject._AddRef:Integer; stdcall;
begin
{*
 00406E14    push        ebp
 00406E15    mov         ebp,esp
 00406E17    mov         eax,dword ptr [ebp+8]
 00406E1A    add         eax,4
 00406E1D    push        eax
 00406E1E    call        kernel32.InterlockedIncrement
 00406E23    pop         ebp
 00406E24    ret         4
*}
end;

//00406E28
function TInterfacedObject._Release:Integer; stdcall;
begin
{*
 00406E28    push        ebp
 00406E29    mov         ebp,esp
 00406E2B    push        ebx
 00406E2C    push        esi
 00406E2D    mov         ebx,dword ptr [ebp+8]
 00406E30    lea         eax,[ebx+4]
 00406E33    push        eax
 00406E34    call        kernel32.InterlockedDecrement
 00406E39    mov         esi,eax
 00406E3B    test        esi,esi
>00406E3D    jne         00406E48
 00406E3F    mov         dl,1
 00406E41    mov         eax,ebx
 00406E43    mov         ecx,dword ptr [eax]
 00406E45    call        dword ptr [ecx-4]
 00406E48    mov         eax,esi
 00406E4A    pop         esi
 00406E4B    pop         ebx
 00406E4C    pop         ebp
 00406E4D    ret         4
*}
end;

//00406E50
function UnicodeToUtf8(Dest:PAnsiChar; MaxDestBytes:Cardinal; Source:PWideChar; SourceChars:Cardinal):Cardinal;
begin
{*
 00406E50    push        ebp
 00406E51    mov         ebp,esp
 00406E53    add         esp,0FFFFFFF8
 00406E56    push        ebx
 00406E57    push        esi
 00406E58    mov         dword ptr [ebp-8],ecx
 00406E5B    mov         dword ptr [ebp-4],edx
 00406E5E    xor         edx,edx
 00406E60    cmp         dword ptr [ebp-8],0
>00406E64    je          00406F22
 00406E6A    xor         esi,esi
 00406E6C    xor         ecx,ecx
 00406E6E    test        eax,eax
>00406E70    je          00406EFD
>00406E76    jmp         00406EE4
 00406E78    mov         edx,dword ptr [ebp-8]
 00406E7B    movzx       edx,word ptr [edx+ecx*2]
 00406E7F    inc         ecx
 00406E80    cmp         edx,7F
>00406E83    ja          00406E8B
 00406E85    mov         byte ptr [eax+esi],dl
 00406E88    inc         esi
>00406E89    jmp         00406EE4
 00406E8B    cmp         edx,7FF
>00406E91    jbe         00406EC4
 00406E93    lea         ebx,[esi+3]
 00406E96    cmp         ebx,dword ptr [ebp-4]
>00406E99    ja          00406EEE
 00406E9B    mov         ebx,edx
 00406E9D    shr         ebx,0C
 00406EA0    or          bl,0E0
 00406EA3    mov         byte ptr [eax+esi],bl
 00406EA6    mov         ebx,edx
 00406EA8    shr         ebx,6
 00406EAB    and         bl,3F
 00406EAE    or          bl,80
 00406EB1    mov         byte ptr [eax+esi+1],bl
 00406EB5    and         dl,3F
 00406EB8    or          dl,80
 00406EBB    mov         byte ptr [eax+esi+2],dl
 00406EBF    add         esi,3
>00406EC2    jmp         00406EE4
 00406EC4    lea         ebx,[esi+2]
 00406EC7    cmp         ebx,dword ptr [ebp-4]
>00406ECA    ja          00406EEE
 00406ECC    mov         ebx,edx
 00406ECE    shr         ebx,6
 00406ED1    or          bl,0C0
 00406ED4    mov         byte ptr [eax+esi],bl
 00406ED7    and         dl,3F
 00406EDA    or          dl,80
 00406EDD    mov         byte ptr [eax+esi+1],dl
 00406EE1    add         esi,2
 00406EE4    cmp         ecx,dword ptr [ebp+8]
>00406EE7    jae         00406EEE
 00406EE9    cmp         esi,dword ptr [ebp-4]
>00406EEC    jb          00406E78
 00406EEE    cmp         esi,dword ptr [ebp-4]
>00406EF1    jb          00406EF7
 00406EF3    mov         esi,dword ptr [ebp-4]
 00406EF6    dec         esi
 00406EF7    mov         byte ptr [eax+esi],0
>00406EFB    jmp         00406F1F
 00406EFD    cmp         ecx,dword ptr [ebp+8]
>00406F00    jae         00406F1F
 00406F02    mov         eax,dword ptr [ebp-8]
 00406F05    movzx       edx,word ptr [eax+ecx*2]
 00406F09    inc         ecx
 00406F0A    cmp         edx,7F
>00406F0D    jbe         00406F19
 00406F0F    cmp         edx,7FF
>00406F15    jbe         00406F18
 00406F17    inc         esi
 00406F18    inc         esi
 00406F19    inc         esi
 00406F1A    cmp         ecx,dword ptr [ebp+8]
>00406F1D    jb          00406F02
 00406F1F    lea         edx,[esi+1]
 00406F22    mov         eax,edx
 00406F24    pop         esi
 00406F25    pop         ebx
 00406F26    pop         ecx
 00406F27    pop         ecx
 00406F28    pop         ebp
 00406F29    ret         4
*}
end;

//00406F2C
function Utf8ToUnicode(Dest:PWideChar; MaxDestChars:Cardinal; Source:PAnsiChar; SourceBytes:Cardinal):Cardinal;
begin
{*
 00406F2C    push        ebp
 00406F2D    mov         ebp,esp
 00406F2F    add         esp,0FFFFFFF0
 00406F32    push        ebx
 00406F33    push        esi
 00406F34    mov         dword ptr [ebp-0C],ecx
 00406F37    mov         dword ptr [ebp-8],edx
 00406F3A    mov         dword ptr [ebp-4],eax
 00406F3D    cmp         dword ptr [ebp-0C],0
>00406F41    jne         00406F4D
 00406F43    xor         eax,eax
 00406F45    mov         dword ptr [ebp-10],eax
>00406F48    jmp         00407056
 00406F4D    mov         dword ptr [ebp-10],0FFFFFFFF
 00406F54    xor         eax,eax
 00406F56    xor         esi,esi
 00406F58    cmp         dword ptr [ebp-4],0
>00406F5C    je          0040700B
>00406F62    jmp         00406FE9
 00406F67    mov         edx,dword ptr [ebp-0C]
 00406F6A    xor         ecx,ecx
 00406F6C    mov         cl,byte ptr [edx+esi]
 00406F6F    inc         esi
 00406F70    test        cl,80
>00406F73    je          00406FE1
 00406F75    cmp         esi,dword ptr [ebp+8]
>00406F78    jae         00407056
 00406F7E    and         ecx,3F
 00406F81    test        cl,20
>00406F84    je          00406FB4
 00406F86    mov         edx,dword ptr [ebp-0C]
 00406F89    mov         dl,byte ptr [edx+esi]
 00406F8C    inc         esi
 00406F8D    mov         ebx,edx
 00406F8F    and         bl,0C0
 00406F92    cmp         bl,80
>00406F95    jne         00407056
 00406F9B    cmp         esi,dword ptr [ebp+8]
>00406F9E    jae         00407056
 00406FA4    and         dl,3F
 00406FA7    and         edx,0FF
 00406FAD    shl         ecx,6
 00406FB0    or          edx,ecx
 00406FB2    mov         ecx,edx
 00406FB4    mov         edx,dword ptr [ebp-0C]
 00406FB7    mov         dl,byte ptr [edx+esi]
 00406FBA    inc         esi
 00406FBB    mov         ebx,edx
 00406FBD    and         bl,0C0
 00406FC0    cmp         bl,80
>00406FC3    jne         00407056
 00406FC9    and         dl,3F
 00406FCC    and         edx,0FF
 00406FD2    shl         ecx,6
 00406FD5    or          dx,cx
 00406FD8    mov         ecx,dword ptr [ebp-4]
 00406FDB    mov         word ptr [ecx+eax*2],dx
>00406FDF    jmp         00406FE8
 00406FE1    mov         edx,dword ptr [ebp-4]
 00406FE4    mov         word ptr [edx+eax*2],cx
 00406FE8    inc         eax
 00406FE9    cmp         esi,dword ptr [ebp+8]
>00406FEC    jae         00406FF7
 00406FEE    cmp         eax,dword ptr [ebp-8]
>00406FF1    jb          00406F67
 00406FF7    cmp         eax,dword ptr [ebp-8]
>00406FFA    jb          00407000
 00406FFC    mov         eax,dword ptr [ebp-8]
 00406FFF    dec         eax
 00407000    mov         edx,dword ptr [ebp-4]
 00407003    mov         word ptr [edx+eax*2],0
>00407009    jmp         00407052
 0040700B    cmp         esi,dword ptr [ebp+8]
>0040700E    jae         00407052
 00407010    mov         edx,dword ptr [ebp-0C]
 00407013    mov         dl,byte ptr [edx+esi]
 00407016    inc         esi
 00407017    test        dl,80
>0040701A    je          0040704C
 0040701C    cmp         esi,dword ptr [ebp+8]
>0040701F    jae         00407056
 00407021    and         dl,3F
 00407024    test        dl,20
>00407027    je          0040703D
 00407029    mov         edx,dword ptr [ebp-0C]
 0040702C    mov         dl,byte ptr [edx+esi]
 0040702F    inc         esi
 00407030    and         dl,0C0
 00407033    cmp         dl,80
>00407036    jne         00407056
 00407038    cmp         esi,dword ptr [ebp+8]
>0040703B    jae         00407056
 0040703D    mov         edx,dword ptr [ebp-0C]
 00407040    mov         dl,byte ptr [edx+esi]
 00407043    inc         esi
 00407044    and         dl,0C0
 00407047    cmp         dl,80
>0040704A    jne         00407056
 0040704C    inc         eax
 0040704D    cmp         esi,dword ptr [ebp+8]
>00407050    jb          00407010
 00407052    inc         eax
 00407053    mov         dword ptr [ebp-10],eax
 00407056    mov         eax,dword ptr [ebp-10]
 00407059    pop         esi
 0040705A    pop         ebx
 0040705B    mov         esp,ebp
 0040705D    pop         ebp
 0040705E    ret         4
*}
end;

//00407064
function UTF8Encode(const WS:WideString):UTF8String;
begin
{*
 00407064    push        ebp
 00407065    mov         ebp,esp
 00407067    push        0
 00407069    push        ebx
 0040706A    push        esi
 0040706B    mov         esi,edx
 0040706D    mov         ebx,eax
 0040706F    xor         eax,eax
 00407071    push        ebp
 00407072    push        407103
 00407077    push        dword ptr fs:[eax]
 0040707A    mov         dword ptr fs:[eax],esp
 0040707D    mov         eax,esi
 0040707F    call        @LStrClr
 00407084    mov         eax,ebx
 00407086    xor         edx,edx
 00407088    call        @WStrCmp
>0040708D    je          004070ED
 0040708F    mov         eax,ebx
 00407091    call        @WStrLen
 00407096    lea         edx,[eax+eax*2]
 00407099    lea         eax,[ebp-4]
 0040709C    call        @LStrSetLength
 004070A1    mov         eax,ebx
 004070A3    call        @WStrLen
 004070A8    push        eax
 004070A9    mov         eax,dword ptr [ebp-4]
 004070AC    call        @LStrLen
 004070B1    inc         eax
 004070B2    push        eax
 004070B3    mov         eax,ebx
 004070B5    call        @WStrToPWChar
 004070BA    push        eax
 004070BB    mov         eax,dword ptr [ebp-4]
 004070BE    call        @LStrToPChar
 004070C3    pop         ecx
 004070C4    pop         edx
 004070C5    call        UnicodeToUtf8
 004070CA    test        eax,eax
>004070CC    jle         004070DB
 004070CE    mov         edx,eax
 004070D0    dec         edx
 004070D1    lea         eax,[ebp-4]
 004070D4    call        @LStrSetLength
>004070D9    jmp         004070E3
 004070DB    lea         eax,[ebp-4]
 004070DE    call        @LStrClr
 004070E3    mov         eax,esi
 004070E5    mov         edx,dword ptr [ebp-4]
 004070E8    call        @LStrAsg
 004070ED    xor         eax,eax
 004070EF    pop         edx
 004070F0    pop         ecx
 004070F1    pop         ecx
 004070F2    mov         dword ptr fs:[eax],edx
 004070F5    push        40710A
 004070FA    lea         eax,[ebp-4]
 004070FD    call        @LStrClr
 00407102    ret
>00407103    jmp         @HandleFinally
>00407108    jmp         004070FA
 0040710A    pop         esi
 0040710B    pop         ebx
 0040710C    pop         ecx
 0040710D    pop         ebp
 0040710E    ret
*}
end;

//00407110
function UTF8Decode(const S:UTF8String):WideString;
begin
{*
 00407110    push        ebp
 00407111    mov         ebp,esp
 00407113    push        0
 00407115    push        ebx
 00407116    push        esi
 00407117    mov         esi,edx
 00407119    mov         ebx,eax
 0040711B    xor         eax,eax
 0040711D    push        ebp
 0040711E    push        4071A7
 00407123    push        dword ptr fs:[eax]
 00407126    mov         dword ptr fs:[eax],esp
 00407129    mov         eax,esi
 0040712B    call        @WStrClr
 00407130    test        ebx,ebx
>00407132    je          00407191
 00407134    mov         eax,ebx
 00407136    call        @LStrLen
 0040713B    mov         edx,eax
 0040713D    lea         eax,[ebp-4]
 00407140    call        @WStrSetLength
 00407145    mov         eax,ebx
 00407147    call        @LStrLen
 0040714C    push        eax
 0040714D    mov         eax,dword ptr [ebp-4]
 00407150    call        @WStrLen
 00407155    inc         eax
 00407156    push        eax
 00407157    mov         eax,ebx
 00407159    call        @LStrToPChar
 0040715E    push        eax
 0040715F    mov         eax,dword ptr [ebp-4]
 00407162    call        @WStrToPWChar
 00407167    pop         ecx
 00407168    pop         edx
 00407169    call        Utf8ToUnicode
 0040716E    test        eax,eax
>00407170    jle         0040717F
 00407172    mov         edx,eax
 00407174    dec         edx
 00407175    lea         eax,[ebp-4]
 00407178    call        @WStrSetLength
>0040717D    jmp         00407187
 0040717F    lea         eax,[ebp-4]
 00407182    call        @WStrClr
 00407187    mov         eax,esi
 00407189    mov         edx,dword ptr [ebp-4]
 0040718C    call        @WStrAsg
 00407191    xor         eax,eax
 00407193    pop         edx
 00407194    pop         ecx
 00407195    pop         ecx
 00407196    mov         dword ptr fs:[eax],edx
 00407199    push        4071AE
 0040719E    lea         eax,[ebp-4]
 004071A1    call        @WStrClr
 004071A6    ret
>004071A7    jmp         @HandleFinally
>004071AC    jmp         0040719E
 004071AE    pop         esi
 004071AF    pop         ebx
 004071B0    pop         ecx
 004071B1    pop         ebp
 004071B2    ret
*}
end;

//004071B4
function AnsiToUtf8(const S:AnsiString):UTF8String;
begin
{*
 004071B4    push        ebp
 004071B5    mov         ebp,esp
 004071B7    push        0
 004071B9    push        ebx
 004071BA    push        esi
 004071BB    mov         esi,edx
 004071BD    mov         ebx,eax
 004071BF    xor         eax,eax
 004071C1    push        ebp
 004071C2    push        4071F7
 004071C7    push        dword ptr fs:[eax]
 004071CA    mov         dword ptr fs:[eax],esp
 004071CD    lea         eax,[ebp-4]
 004071D0    mov         edx,ebx
 004071D2    call        @WStrFromLStr
 004071D7    mov         eax,dword ptr [ebp-4]
 004071DA    mov         edx,esi
 004071DC    call        UTF8Encode
 004071E1    xor         eax,eax
 004071E3    pop         edx
 004071E4    pop         ecx
 004071E5    pop         ecx
 004071E6    mov         dword ptr fs:[eax],edx
 004071E9    push        4071FE
 004071EE    lea         eax,[ebp-4]
 004071F1    call        @WStrClr
 004071F6    ret
>004071F7    jmp         @HandleFinally
>004071FC    jmp         004071EE
 004071FE    pop         esi
 004071FF    pop         ebx
 00407200    pop         ecx
 00407201    pop         ebp
 00407202    ret
*}
end;

//00407204
function LoadResString(ResStringRec:PResStringRec):String;
begin
{*
 00407204    push        ebx
 00407205    push        esi
 00407206    add         esp,0FFFFF004
 0040720C    push        eax
 0040720D    mov         esi,edx
 0040720F    mov         ebx,eax
 00407211    test        ebx,ebx
>00407213    je          00407252
 00407215    cmp         dword ptr [ebx+4],10000
>0040721C    jge         00407248
 0040721E    push        1000
 00407223    lea         eax,[esp+4]
 00407227    push        eax
 00407228    mov         eax,dword ptr [ebx+4]
 0040722B    push        eax
 0040722C    mov         eax,dword ptr [ebx]
 0040722E    mov         eax,dword ptr [eax]
 00407230    call        004066C8
 00407235    push        eax
 00407236    call        user32.LoadStringA
 0040723B    mov         ecx,eax
 0040723D    mov         edx,esp
 0040723F    mov         eax,esi
 00407241    call        @LStrFromPCharLen
>00407246    jmp         00407252
 00407248    mov         eax,esi
 0040724A    mov         edx,dword ptr [ebx+4]
 0040724D    call        @LStrFromPChar
 00407252    add         esp,1000
 00407258    pop         esi
 00407259    pop         ebx
 0040725A    ret
*}
end;

//0040725C
function LCIDToCodePage(ALcid:Cardinal):Integer;
begin
{*
 0040725C    push        ebp
 0040725D    mov         ebp,esp
 0040725F    add         esp,0FFFFFFF0
 00407262    push        ebx
 00407263    xor         edx,edx
 00407265    mov         dword ptr [ebp-10],edx
 00407268    xor         edx,edx
 0040726A    push        ebp
 0040726B    push        4072C2
 00407270    push        dword ptr fs:[edx]
 00407273    mov         dword ptr fs:[edx],esp
 00407276    push        7
 00407278    lea         edx,[ebp-0B]
 0040727B    push        edx
 0040727C    push        1004
 00407281    push        eax
 00407282    call        kernel32.GetLocaleInfoA
 00407287    lea         eax,[ebp-10]
 0040728A    lea         edx,[ebp-0B]
 0040728D    mov         ecx,7
 00407292    call        @LStrFromArray
 00407297    mov         eax,dword ptr [ebp-10]
 0040729A    lea         edx,[ebp-4]
 0040729D    call        @ValLong
 004072A2    mov         ebx,eax
 004072A4    cmp         dword ptr [ebp-4],0
>004072A8    je          004072AC
 004072AA    xor         ebx,ebx
 004072AC    xor         eax,eax
 004072AE    pop         edx
 004072AF    pop         ecx
 004072B0    pop         ecx
 004072B1    mov         dword ptr fs:[eax],edx
 004072B4    push        4072C9
 004072B9    lea         eax,[ebp-10]
 004072BC    call        @LStrClr
 004072C1    ret
>004072C2    jmp         @HandleFinally
>004072C7    jmp         004072B9
 004072C9    mov         eax,ebx
 004072CB    pop         ebx
 004072CC    mov         esp,ebp
 004072CE    pop         ebp
 004072CF    ret
*}
end;

Initialization
//00407324
{*
 00407324    sub         dword ptr ds:[56F5BC],1
>0040732B    jae         004073F6
 00407331    mov         byte ptr ds:[56B008],2
 00407338    mov         dword ptr ds:[56F014],401290
 00407342    mov         dword ptr ds:[56F018],4012A0
 0040734C    mov         byte ptr ds:[56F04E],2;Test8086:Byte
 00407353    mov         dword ptr ds:[56F000],405F9C
 0040735D    call        @isNECWindows
 00407362    test        al,al
>00407364    je          0040736B
 00407366    call        @FpuMaskInit
 0040736B    call        @FpuInit
 00407370    mov         word ptr ds:[56F054],0D7B0
 00407379    mov         word ptr ds:[56F220],0D7B0
 00407382    mov         word ptr ds:[56F3EC],0D7B0
 0040738B    call        kernel32.GetCommandLineA
 00407390    mov         [0056F040],eax;CmdLine:PAnsiChar
 00407395    call        GetCmdShow
 0040739A    mov         [0056F03C],eax;CmdShow:Integer
 0040739F    call        kernel32.GetVersion
 004073A4    and         eax,80000000
 004073A9    cmp         eax,80000000
>004073AE    je          004073DD
 004073B0    call        kernel32.GetVersion
 004073B5    and         eax,0FF
 004073BA    cmp         ax,4
>004073BE    jbe         004073CC
 004073C0    mov         dword ptr ds:[56F5C0],3;DefaultUserCodePage:Integer
>004073CA    jmp         004073EC
 004073CC    call        kernel32.GetThreadLocale
 004073D1    call        LCIDToCodePage
 004073D6    mov         [0056F5C0],eax;DefaultUserCodePage:Integer
>004073DB    jmp         004073EC
 004073DD    call        kernel32.GetThreadLocale
 004073E2    call        LCIDToCodePage
 004073E7    mov         [0056F5C0],eax;DefaultUserCodePage:Integer
 004073EC    call        kernel32.GetCurrentThreadId
 004073F1    mov         [0056F034],eax;MainThreadID:Cardinal
 004073F6    ret
*}
Finalization
//004072D0
{*
 004072D0    push        ebp
 004072D1    mov         ebp,esp
 004072D3    xor         eax,eax
 004072D5    push        ebp
 004072D6    push        40731A
 004072DB    push        dword ptr fs:[eax]
 004072DE    mov         dword ptr fs:[eax],esp
 004072E1    inc         dword ptr ds:[56F5BC]
>004072E7    jne         0040730C
 004072E9    mov         eax,56F050;Input:Text
 004072EE    call        @Close
 004072F3    mov         eax,56F21C;Output:Text
 004072F8    call        @Close
 004072FD    mov         eax,56F3E8;ErrOutput:Text
 00407302    call        @Close
 00407307    call        UninitAllocator
 0040730C    xor         eax,eax
 0040730E    pop         edx
 0040730F    pop         ecx
 00407310    pop         ecx
 00407311    mov         dword ptr fs:[eax],edx
 00407314    push        407321
 00407319    ret
>0040731A    jmp         @HandleFinally
>0040731F    jmp         00407319
 00407321    pop         ebp
 00407322    ret
*}
end.