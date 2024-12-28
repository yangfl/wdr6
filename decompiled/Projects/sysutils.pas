//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit sysutils;

interface

uses
  SysUtils, Classes;

type
  Exception = class(TObject)
  public
    FMessage:String;//f4
    FHelpContext:Integer;//f8
    constructor Create(const Msg:AnsiString);//004105A0
    constructor CreateFmt(const Msg:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//004105E8
    constructor Create;//00410678
    constructor CreateResFmt(Ident:Integer; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//004106C0
  end;
  EHeapException = class(Exception)
  public
    ..AllowFree:Boolean;//fC
  end;
  EOutOfMemory = class(EHeapException)
  end;
  EInOutError = class(Exception)
  public
    ..ErrorCode:Integer;//fC
  end;
  EExternal = class(Exception)
  public
    ExceptionRecord:PExceptionRecord;//fC
  end;
  EExternalException = class(EExternal)
  end;
  EIntError = class(EExternal)
  end;
  EDivByZero = class(EIntError)
  end;
  ERangeError = class(EIntError)
  end;
  EIntOverflow = class(EIntError)
  end;
  EMathError = class(EExternal)
  end;
  EInvalidOp = class(EMathError)
  end;
  EZeroDivide = class(EMathError)
  end;
  EOverflow = class(EMathError)
  end;
  EUnderflow = class(EMathError)
  end;
  EInvalidPointer = class(EHeapException)
  end;
  EInvalidCast = class(Exception)
  end;
  EConvertError = class(Exception)
  end;
  EAccessViolation = class(EExternal)
  end;
  EPrivilege = class(EExternal)
  end;
  EStackOverflow = class(EExternal)
  end;
  EControlC = class(EExternal)
  end;
  EVariantError = class(Exception)
  end;
  EAssertionFailed = class(Exception)
  end;
  EAbstractError = class(Exception)
  end;
  EIntfCastError = class(Exception)
  end;
  EOSError = class(Exception)
  public
    ErrorCode:DWORD;//fC
  end;
  ESafecallException = class(Exception)
  end;
  _DynArr_10_74 = array of String;
//elSize = 4
//varType equivalent: varStrArg;
  _DynArr_10_84 = array of String;
//elSize = 4
//varType equivalent: varStrArg;
  TThreadLocalCounter = class(TObject)
  public
    FHashTable:array[$0..$F] of PThreadInfo;//f4
  end;
  TMultiReadExclusiveWriteSynchronizer = class(TInterfacedObject)
  public
    FSentinel:Integer;//fC
    FReadSignal:THandle;//f10
    FWriteSignal:THandle;//f14
    FWaitRecycle:Cardinal;//f18
    FWriteRecursionCount:Cardinal;//f1C
    tls:TThreadLocalCounter;//f20
    FWriterID:Cardinal;//f24
    FRevisionLevel:Cardinal;//f28
    constructor Create;//00412468
  end;
  TErrorRec = TErrorRec = record//size=8
f4:String;//f4
end;;
  TExceptRec = TExceptRec = record//size=8
f4:String;//f4
end;;
    procedure DivMod(Dividend:Integer; Divisor:Word; var Result:Word; var Remainder:Word);//0040BBA0
    procedure sub_0040BBBC(?:TResStringRec);//0040BBBC
    //procedure sub_0040BBDC(?:TResStringRec; ?:?; ?:?);//0040BBDC
    //function sub_0040BC0C(?:?):?;//0040BC0C
    procedure sub_0040BC34;//0040BC34
    //procedure sub_0040BC78(?:?);//0040BC78
    //procedure sub_0040BCC8(?:String; ?:?);//0040BCC8
    //procedure sub_0040BD34(?:String; ?:?);//0040BD34
    function CompareStr(const S1:AnsiString; const S2:AnsiString):Integer;//0040BDA0
    function CompareMem(P1:Pointer; P2:Pointer; Length:Integer):Boolean;//0040BDD0
    function CompareText(const S1:AnsiString; const S2:AnsiString):Integer;//0040BDF0
    function SameText(const S1:AnsiString; const S2:AnsiString):Boolean;//0040BE44
    //procedure sub_0040BE68(?:AnsiString; ?:?);//0040BE68
    //procedure sub_0040BEB0(?:AnsiString; ?:?);//0040BEB0
    //function sub_0040BEF8(?:?; ?:?):?;//0040BEF8
    //function sub_0040BF44(?:AnsiString; ?:AnsiString):?;//0040BF44
    //function sub_0040BF90(?:?; ?:AnsiString):?;//0040BF90
    //function sub_0040BFB4(?:PChar; ?:?; ?:?):?;//0040BFB4
    //procedure sub_0040BFEC(?:AnsiString; ?:?);//0040BFEC
    //procedure sub_0040C060(?:?; ?:?; ?:?);//0040C060
    //function sub_0040C234(?:TComponentName):?;//0040C234
    procedure CvtInt;//0040C2B0
    function IntToStr(Value:Integer):AnsiString;//0040C2FC
    procedure CvtInt64;//0040C31C
    function IntToStr(Value:Int64):AnsiString;//0040C3E8
    function IntToHex(Value:Integer; Digits:Integer):AnsiString;//0040C410
    function IntToHex(Digits:Integer; Value:Int64):AnsiString;//0040C438
    //function sub_0040C468(?:AnsiString):?;//0040C468
    //function sub_0040C4A8(?:AnsiString; ?:LongWord):?;//0040C4A8
    //function sub_0040C4D8(?:?; ?:?):?;//0040C4D8
    //function sub_0040C504(?:AnsiString; ?:?; ?:?):?;//0040C504
    //function sub_0040C53C(?:?; ?:?):?;//0040C53C
    procedure sub_0040C56C;//0040C56C
    //function sub_0040C600(?:?; ?:?; ?:?):?;//0040C600
    //function sub_0040C650(?:?; ?:?):?;//0040C650
    //function sub_0040C758(?:?; ?:?):?;//0040C758
    //function sub_0040C7C8(?:?):?;//0040C7C8
    //function sub_0040C7FC(?:?; ?:?):?;//0040C7FC
    //function sub_0040C81C(?:Integer; ?:?; ?:?):?;//0040C81C
    //function sub_0040C854(?:Integer; ?:?; ?:?):?;//0040C854
    //function sub_0040C88C(?:Integer; ?:?; ?:?; ?:?):?;//0040C88C
    procedure sub_0040C8C8(?:Integer);//0040C8C8
    //function sub_0040C8DC(?:?):?;//0040C8DC
    //function sub_0040C94C(?:TFileName):?;//0040C94C
    //function sub_0040C96C(?:AnsiString):?;//0040C96C
    //function sub_0040C9A4(?:AnsiString):?;//0040C9A4
    //function sub_0040CAA4(?:AnsiString):?;//0040CAA4
    //function sub_0040CACC(?:?; ?:?):?;//0040CACC
    //function sub_0040CB00(?:AnsiString):?;//0040CB00
    //function sub_0040CB4C(?:AnsiString; ?:AnsiString):?;//0040CB4C
    //procedure sub_0040CBBC(?:?; ?:AnsiString; ?:?);//0040CBBC
    //procedure sub_0040CC5C(?:AnsiString; ?:?);//0040CC5C
    //procedure sub_0040CC9C(?:AnsiString; ?:?);//0040CC9C
    procedure sub_0040CCE0(?:AnsiString; ?:AnsiString);//0040CCE0
    //procedure sub_0040CD40(?:TFileName; ?:?);//0040CD40
    //function sub_0040CD84(?:?; ?:?; ?:?):?;//0040CD84
    //function sub_0040CE04(?:AnsiString):?;//0040CE04
    function StrLen(const Str:PChar):Cardinal;//0040CE30
    function StrEnd(const Str:PChar):PChar;//0040CE48
    //function sub_0040CE5C(?:?; ?:?; ?:?):?;//0040CE5C
    function StrCopy(Dest:PChar; const Source:PChar):PChar;//0040CE88
    function StrLCopy(Dest:PChar; const Source:PChar; MaxLen:Cardinal):PChar;//0040CEB0
    //function sub_0040CEE4(?:?; ?:AnsiString):?;//0040CEE4
    //function sub_0040CF18(?:?; ?:?; ?:Integer):?;//0040CF18
    function StrComp(const Str1:PChar; const Str2:PChar):Integer;//0040CF48
    function StrIComp(const Str1:PChar; const Str2:PChar):Integer;//0040CF6C
    function StrLIComp(const Str1:PChar; const Str2:PChar; MaxLen:Cardinal):Integer;//0040CFAC
    //function sub_0040CFF0(?:PChar; ?:?):?;//0040CFF0
    function StrPos(const Str1:PChar; const Str2:PChar):PChar;//0040D028
    //procedure sub_0040D07C(?:?; ?:AnsiString);//0040D07C
    //function sub_0040D098(?:?):?;//0040D098
    //function sub_0040D0C4(?:PChar):?;//0040D0C4
    //function sub_0040D0EC(?:PChar):?;//0040D0EC
    //procedure sub_0040D12C(?:?);//0040D12C
    procedure FormatError(ErrorCode:Integer; Format:PChar; FmtLen:Cardinal);//0040D150
    procedure FormatVarToStr(var S:AnsiString; const V:TVarData);//0040D1B8
    procedure FormatClearStr(var S:AnsiString);//0040D1F0
    function FormatBuf(var Buffer:void ; BufLen:Cardinal; const Format:void ; FmtLen:Cardinal; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):Cardinal;//0040D204
    //function sub_0040D57C(?:?; ?:?; ?:LongWord; ?:?):?;//0040D57C
    //function sub_0040D5D8(?:?; ?:?; ?:?; ?:?; ?:?):?;//0040D5D8
    //procedure sub_0040D630(?:AnsiString; ?:Pointer; ?:?; ?:?);//0040D630
    //procedure sub_0040D658(?:AnsiString; ?:?; ?:?; ?:?);//0040D658
    procedure PutExponent;//0040D734
    function FloatToText(BufferArg:PChar; const Value:void ; ValueType:TFloatValue; Format:TFloatFormat; Precision:Integer; Digits:Integer):Integer;//0040D778
    procedure FloatToDecimal(var Result:TFloatRec; const Value:void ; ValueType:TFloatValue; Precision:Integer; Decimals:Integer);//0040DA4C
    function TextToFloat(Buffer:PChar; var Value:void ; ValueType:TFloatValue):Boolean;//0040DC78
    //procedure sub_0040DD8C(?:?; ?:?);//0040DD8C
    //procedure sub_0040DDEC(?:?; ?:?; ?:?; ?:?; ?:?);//0040DDEC
    //function sub_0040DE28(?:?):?;//0040DE28
    //function sub_0040DE68(?:?; ?:?):?;//0040DE68
    //function sub_0040DE90(?:?; ?:?):?;//0040DE90
    //function sub_0040DF00(?:?; ?:?):?;//0040DF00
    function DateTimeToTimeStamp(DateTime:TDateTime):TTimeStamp;//0040DF28
    //function sub_0040DF6C(?:?; ?:?; ?:?; ?:?; ?:?):?;//0040DF6C
    //function sub_0040DFEC(?:?; ?:?; ?:?; ?:?):?;//0040DFEC
    procedure DecodeTime(var Hour:Word; var Min:Word; var Sec:Word; const DateTime:TDateTime; var MSec:Word);//0040E030
    //function sub_0040E090(?:Word):?;//0040E090
    //function sub_0040E0D4(?:Integer; ?:?; ?:?; ?:?):?;//0040E0D4
    //function sub_0040E1D8(?:?; ?:?; ?:?):?;//0040E1D8
    //function sub_0040E214(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0040E214
    procedure DecodeDate(var Year:Word; var Month:Word; var Day:Word; const DateTime:TDateTime);//0040E390
    //function sub_0040E3C0(?:?; ?:?):?;//0040E3C0
    procedure sub_0040E3F0;//0040E3F0
    //function sub_0040E41C:?;//0040E41C
    //function sub_0040E44C:?;//0040E44C
    //procedure sub_0040E46C(?:void ; ?:Integer; ?:?);//0040E46C
    //procedure sub_0040E4CC(?:?; ?:?);//0040E4CC
    //procedure sub_0040E4F0(?:?; ?:?; ?:?);//0040E4F0
    //procedure sub_0040E540(?:?);//0040E540
    procedure GetDate;//0040E578
    procedure GetTime;//0040E5B0
    //procedure sub_0040E5F0(?:?; ?:?; ?:?);//0040E5F0
    //procedure sub_0040E774(?:?; ?:?; ?:?);//0040E774
    //procedure sub_0040E88C(?:?; ?:?);//0040E88C
    //procedure sub_0040F094(?:?; ?:?);//0040F094
    //procedure sub_0040F100(?:?; ?:?; ?:?);//0040F100
    //procedure sub_0040F120(?:?; ?:?; ?:?);//0040F120
    //procedure sub_0040F140(?:?; ?:?; ?:?);//0040F140
    //procedure sub_0040F15C(?:?; ?:?);//0040F15C
    //function sub_0040F19C(?:?; ?:?; ?:?; ?:?):?;//0040F19C
    //function sub_0040F250(?:?; ?:?; ?:AnsiString):?;//0040F250
    //function sub_0040F2E8(?:?; ?:?; ?:?):?;//0040F2E8
    //function sub_0040F338(?:?):?;//0040F338
    //procedure sub_0040F3A0(?:?; ?:?);//0040F3A0
    //function sub_0040F408(?:?):?;//0040F408
    //function sub_0040F46C(?:?; ?:?):?;//0040F46C
    //function sub_0040F4D4(?:?; ?:?; ?:?):?;//0040F4D4
    //function sub_0040F868(?:?; ?:?; ?:?):?;//0040F868
    //function sub_0040FA84(?:?):?;//0040FA84
    //function sub_0040FABC(?:?; ?:?):?;//0040FABC
    //function sub_0040FB00(?:?):?;//0040FB00
    //function sub_0040FB38(?:?; ?:?):?;//0040FB38
    //function sub_0040FB7C(?:?):?;//0040FB7C
    //function sub_0040FBB4(?:?; ?:?):?;//0040FBB4
    function SysErrorMessage(ErrorCode:Integer):AnsiString;//0040FC48
    //procedure sub_0040FCAC(?:Integer; ?:?; ?:AnsiString; ?:?);//0040FCAC
    //function sub_0040FD08(?:Integer; ?:?; ?:?):?;//0040FD08
    //procedure sub_0040FD44(?:?; ?:?; ?:?; ?:?; ?:?);//0040FD44
    procedure sub_0040FD88;//0040FD88
    procedure sub_0040FF94;//0040FF94
    //procedure sub_00410058(?:?; ?:?);//00410058
    //function sub_004102FC(?:?):?;//004102FC
    //function sub_0041030C(?:?; ?:?; ?:?; ?:?):?;//0041030C
    //procedure sub_004104C4(?:TObject; ?:?);//004104C4
    //constructor sub_00410764(?:?);//00410764
    //function sub_004107F4:?;//004107F4
    procedure sub_00410898;//00410898
    //function sub_00410908(?:?; ?:?; ?:?):?;//00410908
    procedure RaiseAssertException(const E:Exception; const ErrorAddr:Pointer; const ErrorStack:Pointer);//004109C0
    //procedure sub_004109D0(?:?; ?:?; ?:?; ?:?);//004109D0
    procedure sub_00410A08;//00410A08
    //function sub_00410A24(?:?):?;//00410A24
    //function sub_00410AD8(?:?):?;//00410AD8
    //procedure sub_00410DC8(?:?; ?:?);//00410DC8
    procedure sub_00410DF0;//00410DF0
    procedure sub_00410E78;//00410E78
    procedure sub_00410EFC;//00410EFC
    //function sub_00410F7C(?:?; ?:?):?;//00410F7C
    //function sub_00410FB8(?:AnsiString):?;//00410FB8
    procedure sub_004110A8;//004110A8
    //function sub_004110B4(?:PChar; ?:?):?;//004110B4
    //function sub_00411160(?:AnsiString; ?:Integer):?;//00411160
    //function sub_00411194(?:PChar; ?:?):?;//00411194
    //function sub_004111C4(?:?; ?:Integer):?;//004111C4
    //function sub_00411200(?:?; ?:Integer):?;//00411200
    //procedure sub_00411284(?:AnsiString; ?:Integer; ?:?; ?:?);//00411284
    //function sub_0041133C(?:?; ?:?):?;//0041133C
    //function sub_004113B4(?:AnsiString; ?:?):?;//004113B4
    //function sub_00411428(?:?):?;//00411428
    //function sub_0041145C(?:?):?;//0041145C
    //function sub_00411478(?:?; ?:?):?;//00411478
    //function sub_004114C8(?:?; ?:?):?;//004114C8
    //function sub_0041151C(?:String; ?:Integer):?;//0041151C
    //function sub_00411568(?:AnsiString; ?:String; ?:?):?;//00411568
    //function sub_004115C4(?:AnsiString; ?:?):?;//004115C4
    //procedure sub_00411618(?:?; ?:?);//00411618
    //function sub_00411664(?:AnsiString; ?:AnsiString):?;//00411664
    //procedure sub_004116B0(?:AnsiString; ?:?);//004116B0
    //function sub_00411784(?:PChar; ?:?):?;//00411784
    //function sub_0041185C(?:?; ?:?):?;//0041185C
    //function sub_004118AC(?:PChar; ?:?):?;//004118AC
    //function sub_00411904(?:?):?;//00411904
    //procedure sub_0041197C(?:?);//0041197C
    //function sub_004119FC:?;//004119FC
    procedure sub_00411A20;//00411A20
    procedure sub_00411BCC;//00411BCC
    procedure Sleep; stdcall;//004120BC
    procedure RaiseLastOSError;//004120C4
    //function sub_00412170(?:LongBool):?;//00412170
    //function sub_00412194:?;//00412194
    procedure sub_004121D0;//004121D0
    procedure sub_00412204;//00412204
    function InterlockedIncrement(var I:Integer):Integer;//00412268
    function InterlockedDecrement(var I:Integer):Integer;//00412274
    //function sub_00412280(?:Integer; ?:?):?;//00412280
    //function sub_00412288(?:?; ?:?):?;//00412288
    //function sub_0041230C(?:?):?;//0041230C
    //procedure sub_00412330(?:?; ?:?);//00412330
    //procedure sub_004123E0(?:?; ?:?);//004123E0
    //function sub_00412404(?:?):?;//00412404
    //procedure sub_00412554(?:?);//00412554
    //procedure sub_0041256C(?:?);//0041256C
    //procedure sub_00412584(?:?);//00412584
    //procedure sub_0041259C(?:?);//0041259C
    //procedure sub_004125BC(?:?);//004125BC
    //function sub_004125DC(?:?):?;//004125DC
    //procedure sub_004126B8(?:?);//004126B8
    //procedure sub_00412724(?:?);//00412724
    //procedure sub_004127AC(?:?);//004127AC
    procedure FreeAndNil(var Obj:void );//00412830
    //function sub_00412854(?:IAutoComplete; ?:?; ?:?):?;//00412854
    //function sub_00412890(?:TCustomVariantType; ?:?; ?:?):?;//00412890
    //function sub_00412938(?:AnsiString; ?:?):?;//00412938
    procedure _NF__C58;//004129C0
    procedure _NF__C59;//00412AAC

implementation

//0040BBA0
procedure DivMod(Dividend:Integer; Divisor:Word; var Result:Word; var Remainder:Word);
begin
{*
 0040BBA0    push        ebp
 0040BBA1    mov         ebp,esp
 0040BBA3    push        ebx
 0040BBA4    mov         ebx,edx
 0040BBA6    mov         edx,eax
 0040BBA8    shr         edx,10
 0040BBAB    div         ax,bx
 0040BBAE    mov         ebx,dword ptr [ebp+8]
 0040BBB1    mov         word ptr [ecx],ax
 0040BBB4    mov         word ptr [ebx],dx
 0040BBB7    pop         ebx
 0040BBB8    pop         ebp
 0040BBB9    ret         4
*}
end;

//0040BBBC
procedure sub_0040BBBC(?:TResStringRec);
begin
{*
 0040BBBC    push        ebp
 0040BBBD    mov         ebp,esp
 0040BBBF    push        ecx
 0040BBC0    mov         dword ptr [ebp-4],eax
 0040BBC3    mov         ecx,dword ptr [ebp-4]
 0040BBC6    mov         dl,1
 0040BBC8    mov         eax,[0040B608];EConvertError
 0040BBCD    call        Exception.Create;EConvertError.Create
 0040BBD2    call        @RaiseExcept
 0040BBD7    pop         ecx
 0040BBD8    pop         ebp
 0040BBD9    ret
*}
end;

//0040BBDC
{*procedure sub_0040BBDC(?:TResStringRec; ?:?; ?:?);
begin
 0040BBDC    push        ebp
 0040BBDD    mov         ebp,esp
 0040BBDF    add         esp,0FFFFFFF4
 0040BBE2    mov         dword ptr [ebp-0C],ecx
 0040BBE5    mov         dword ptr [ebp-8],edx
 0040BBE8    mov         dword ptr [ebp-4],eax
 0040BBEB    mov         eax,dword ptr [ebp-8]
 0040BBEE    push        eax
 0040BBEF    mov         eax,dword ptr [ebp-0C]
 0040BBF2    push        eax
 0040BBF3    mov         ecx,dword ptr [ebp-4]
 0040BBF6    mov         dl,1
 0040BBF8    mov         eax,[0040B608];EConvertError
 0040BBFD    call        Exception.CreateResFmt;EConvertError.Create
 0040BC02    call        @RaiseExcept
 0040BC07    mov         esp,ebp
 0040BC09    pop         ebp
 0040BC0A    ret
end;*}

//0040BC0C
{*function sub_0040BC0C(?:?):?;
begin
 0040BC0C    push        ebp
 0040BC0D    mov         ebp,esp
 0040BC0F    add         esp,0FFFFFFF8
 0040BC12    mov         dword ptr [ebp-4],eax
 0040BC15    mov         eax,dword ptr [ebp-4]
 0040BC18    call        @GetMem
 0040BC1D    mov         dword ptr [ebp-8],eax
 0040BC20    mov         eax,dword ptr [ebp-8]
 0040BC23    xor         ecx,ecx
 0040BC25    mov         edx,dword ptr [ebp-4]
 0040BC28    call        @FillChar
 0040BC2D    mov         eax,dword ptr [ebp-8]
 0040BC30    pop         ecx
 0040BC31    pop         ecx
 0040BC32    pop         ebp
 0040BC33    ret
end;*}

//0040BC34
procedure sub_0040BC34;
begin
{*
 0040BC34    push        ebp
 0040BC35    mov         ebp,esp
 0040BC37    add         esp,0FFFFFFF8
 0040BC3A    mov         eax,[0056B848];0x0 gvar_0056B848:Pointer
 0040BC3F    mov         dword ptr [ebp-4],eax
 0040BC42    mov         eax,dword ptr [ebp-4]
 0040BC45    mov         eax,dword ptr [eax]
 0040BC47    mov         [0056B848],eax;gvar_0056B848:Pointer
 0040BC4C    mov         eax,dword ptr [ebp-4]
 0040BC4F    mov         eax,dword ptr [eax+4]
 0040BC52    mov         edx,dword ptr ds:[56E018];^gvar_0056F048
 0040BC58    mov         dword ptr [edx],eax
 0040BC5A    mov         eax,dword ptr [ebp-4]
 0040BC5D    mov         eax,dword ptr [eax+8]
 0040BC60    mov         dword ptr [ebp-8],eax
 0040BC63    mov         edx,0C
 0040BC68    mov         eax,dword ptr [ebp-4]
 0040BC6B    call        @FreeMem
 0040BC70    call        dword ptr [ebp-8]
 0040BC73    pop         ecx
 0040BC74    pop         ecx
 0040BC75    pop         ebp
 0040BC76    ret
*}
end;

//0040BC78
{*procedure sub_0040BC78(?:?);
begin
 0040BC78    push        ebp
 0040BC79    mov         ebp,esp
 0040BC7B    add         esp,0FFFFFFF8
 0040BC7E    mov         dword ptr [ebp-4],eax
 0040BC81    mov         eax,0C
 0040BC86    call        @GetMem
 0040BC8B    mov         dword ptr [ebp-8],eax
 0040BC8E    mov         eax,[0056B848];0x0 gvar_0056B848:Pointer
 0040BC93    mov         edx,dword ptr [ebp-8]
 0040BC96    mov         dword ptr [edx],eax
 0040BC98    mov         eax,[0056E018];^gvar_0056F048
 0040BC9D    mov         eax,dword ptr [eax]
 0040BC9F    mov         edx,dword ptr [ebp-8]
 0040BCA2    mov         dword ptr [edx+4],eax
 0040BCA5    mov         eax,dword ptr [ebp-4]
 0040BCA8    mov         edx,dword ptr [ebp-8]
 0040BCAB    mov         dword ptr [edx+8],eax
 0040BCAE    mov         eax,dword ptr [ebp-8]
 0040BCB1    mov         [0056B848],eax;gvar_0056B848:Pointer
 0040BCB6    mov         eax,[0056E018];^gvar_0056F048
 0040BCBB    mov         dword ptr [eax],40BC34;sub_0040BC34
 0040BCC1    pop         ecx
 0040BCC2    pop         ecx
 0040BCC3    pop         ebp
 0040BCC4    ret
end;*}

//0040BCC8
{*procedure sub_0040BCC8(?:String; ?:?);
begin
 0040BCC8    push        ebp
 0040BCC9    mov         ebp,esp
 0040BCCB    add         esp,0FFFFFFE8
 0040BCCE    mov         dword ptr [ebp-8],edx
 0040BCD1    mov         dword ptr [ebp-4],eax
 0040BCD4    mov         eax,dword ptr [ebp-4]
 0040BCD7    call        @LStrLen
 0040BCDC    mov         dword ptr [ebp-10],eax
 0040BCDF    mov         eax,dword ptr [ebp-8]
 0040BCE2    mov         edx,dword ptr [ebp-10]
 0040BCE5    call        @LStrSetLength
 0040BCEA    mov         eax,dword ptr [ebp-4]
 0040BCED    mov         dword ptr [ebp-14],eax
 0040BCF0    mov         eax,dword ptr [ebp-8]
 0040BCF3    mov         eax,dword ptr [eax]
 0040BCF5    mov         dword ptr [ebp-18],eax
 0040BCF8    cmp         dword ptr [ebp-10],0
>0040BCFC    je          0040BD2D
 0040BCFE    mov         eax,dword ptr [ebp-14]
 0040BD01    mov         al,byte ptr [eax]
 0040BD03    mov         byte ptr [ebp-9],al
 0040BD06    cmp         byte ptr [ebp-9],61
>0040BD0A    jb          0040BD16
 0040BD0C    cmp         byte ptr [ebp-9],7A
>0040BD10    ja          0040BD16
 0040BD12    sub         byte ptr [ebp-9],20
 0040BD16    mov         eax,dword ptr [ebp-18]
 0040BD19    mov         dl,byte ptr [ebp-9]
 0040BD1C    mov         byte ptr [eax],dl
 0040BD1E    inc         dword ptr [ebp-14]
 0040BD21    inc         dword ptr [ebp-18]
 0040BD24    dec         dword ptr [ebp-10]
 0040BD27    cmp         dword ptr [ebp-10],0
>0040BD2B    jne         0040BCFE
 0040BD2D    mov         esp,ebp
 0040BD2F    pop         ebp
 0040BD30    ret
end;*}

//0040BD34
{*procedure sub_0040BD34(?:String; ?:?);
begin
 0040BD34    push        ebp
 0040BD35    mov         ebp,esp
 0040BD37    add         esp,0FFFFFFE8
 0040BD3A    mov         dword ptr [ebp-8],edx
 0040BD3D    mov         dword ptr [ebp-4],eax
 0040BD40    mov         eax,dword ptr [ebp-4]
 0040BD43    call        @LStrLen
 0040BD48    mov         dword ptr [ebp-10],eax
 0040BD4B    mov         eax,dword ptr [ebp-8]
 0040BD4E    mov         edx,dword ptr [ebp-10]
 0040BD51    call        @LStrSetLength
 0040BD56    mov         eax,dword ptr [ebp-4]
 0040BD59    mov         dword ptr [ebp-14],eax
 0040BD5C    mov         eax,dword ptr [ebp-8]
 0040BD5F    mov         eax,dword ptr [eax]
 0040BD61    mov         dword ptr [ebp-18],eax
 0040BD64    cmp         dword ptr [ebp-10],0
>0040BD68    je          0040BD99
 0040BD6A    mov         eax,dword ptr [ebp-14]
 0040BD6D    mov         al,byte ptr [eax]
 0040BD6F    mov         byte ptr [ebp-9],al
 0040BD72    cmp         byte ptr [ebp-9],41
>0040BD76    jb          0040BD82
 0040BD78    cmp         byte ptr [ebp-9],5A
>0040BD7C    ja          0040BD82
 0040BD7E    add         byte ptr [ebp-9],20
 0040BD82    mov         eax,dword ptr [ebp-18]
 0040BD85    mov         dl,byte ptr [ebp-9]
 0040BD88    mov         byte ptr [eax],dl
 0040BD8A    inc         dword ptr [ebp-14]
 0040BD8D    inc         dword ptr [ebp-18]
 0040BD90    dec         dword ptr [ebp-10]
 0040BD93    cmp         dword ptr [ebp-10],0
>0040BD97    jne         0040BD6A
 0040BD99    mov         esp,ebp
 0040BD9B    pop         ebp
 0040BD9C    ret
end;*}

//0040BDA0
function CompareStr(const S1:AnsiString; const S2:AnsiString):Integer;
begin
{*
 0040BDA0    push        esi
 0040BDA1    push        edi
 0040BDA2    mov         esi,eax
 0040BDA4    mov         edi,edx
 0040BDA6    or          eax,eax
>0040BDA8    je          0040BDAD
 0040BDAA    mov         eax,dword ptr [eax-4]
 0040BDAD    or          edx,edx
>0040BDAF    je          0040BDB4
 0040BDB1    mov         edx,dword ptr [edx-4]
 0040BDB4    mov         ecx,eax
 0040BDB6    cmp         ecx,edx
>0040BDB8    jbe         0040BDBC
 0040BDBA    mov         ecx,edx
 0040BDBC    cmp         ecx,ecx
 0040BDBE    repe cmps   byte ptr [esi],byte ptr [edi]
>0040BDC0    je          0040BDCA
 0040BDC2    movzx       eax,byte ptr [esi-1]
 0040BDC6    movzx       edx,byte ptr [edi-1]
 0040BDCA    sub         eax,edx
 0040BDCC    pop         edi
 0040BDCD    pop         esi
 0040BDCE    ret
*}
end;

//0040BDD0
function CompareMem(P1:Pointer; P2:Pointer; Length:Integer):Boolean;
begin
{*
 0040BDD0    push        esi
 0040BDD1    push        edi
 0040BDD2    mov         esi,eax
 0040BDD4    mov         edi,edx
 0040BDD6    mov         edx,ecx
 0040BDD8    xor         eax,eax
 0040BDDA    and         edx,3
 0040BDDD    sar         ecx,2
>0040BDE0    js          0040BDEC
 0040BDE2    repe cmps   dword ptr [esi],dword ptr [edi]
>0040BDE4    jne         0040BDED
 0040BDE6    mov         ecx,edx
 0040BDE8    repe cmps   byte ptr [esi],byte ptr [edi]
>0040BDEA    jne         0040BDED
 0040BDEC    inc         eax
 0040BDED    pop         edi
 0040BDEE    pop         esi
 0040BDEF    ret
*}
end;

//0040BDF0
function CompareText(const S1:AnsiString; const S2:AnsiString):Integer;
begin
{*
 0040BDF0    push        esi
 0040BDF1    push        edi
 0040BDF2    push        ebx
 0040BDF3    mov         esi,eax
 0040BDF5    mov         edi,edx
 0040BDF7    or          eax,eax
>0040BDF9    je          0040BDFE
 0040BDFB    mov         eax,dword ptr [eax-4]
 0040BDFE    or          edx,edx
>0040BE00    je          0040BE05
 0040BE02    mov         edx,dword ptr [edx-4]
 0040BE05    mov         ecx,eax
 0040BE07    cmp         ecx,edx
>0040BE09    jbe         0040BE0D
 0040BE0B    mov         ecx,edx
 0040BE0D    cmp         ecx,ecx
 0040BE0F    repe cmps   byte ptr [esi],byte ptr [edi]
>0040BE11    je          0040BE3D
 0040BE13    mov         bl,byte ptr [esi-1]
 0040BE16    cmp         bl,61
>0040BE19    jb          0040BE23
 0040BE1B    cmp         bl,7A
>0040BE1E    ja          0040BE23
 0040BE20    sub         bl,20
 0040BE23    mov         bh,byte ptr [edi-1]
 0040BE26    cmp         bh,61
>0040BE29    jb          0040BE33
 0040BE2B    cmp         bh,7A
>0040BE2E    ja          0040BE33
 0040BE30    sub         bh,20
 0040BE33    cmp         bl,bh
>0040BE35    je          0040BE0F
 0040BE37    movzx       eax,bl
 0040BE3A    movzx       edx,bh
 0040BE3D    sub         eax,edx
 0040BE3F    pop         ebx
 0040BE40    pop         edi
 0040BE41    pop         esi
 0040BE42    ret
*}
end;

//0040BE44
function SameText(const S1:AnsiString; const S2:AnsiString):Boolean;
begin
{*
 0040BE44    cmp         eax,edx
>0040BE46    je          0040BE61
 0040BE48    or          eax,eax
>0040BE4A    je          0040BE63
 0040BE4C    or          edx,edx
>0040BE4E    je          0040BE64
 0040BE50    mov         ecx,dword ptr [eax-4]
 0040BE53    cmp         ecx,dword ptr [edx-4]
>0040BE56    jne         0040BE64
 0040BE58    call        CompareText
 0040BE5D    test        eax,eax
>0040BE5F    jne         0040BE64
 0040BE61    mov         al,1
 0040BE63    ret
 0040BE64    xor         eax,eax
 0040BE66    ret
*}
end;

//0040BE68
{*procedure sub_0040BE68(?:AnsiString; ?:?);
begin
 0040BE68    push        ebp
 0040BE69    mov         ebp,esp
 0040BE6B    add         esp,0FFFFFFF4
 0040BE6E    mov         dword ptr [ebp-8],edx
 0040BE71    mov         dword ptr [ebp-4],eax
 0040BE74    mov         eax,dword ptr [ebp-4]
 0040BE77    call        @LStrLen
 0040BE7C    mov         dword ptr [ebp-0C],eax
 0040BE7F    mov         eax,dword ptr [ebp-4]
 0040BE82    call        @LStrToPChar
 0040BE87    mov         edx,eax
 0040BE89    mov         eax,dword ptr [ebp-8]
 0040BE8C    mov         ecx,dword ptr [ebp-0C]
 0040BE8F    call        @LStrFromPCharLen
 0040BE94    cmp         dword ptr [ebp-0C],0
>0040BE98    jle         0040BEA9
 0040BE9A    mov         eax,dword ptr [ebp-0C]
 0040BE9D    push        eax
 0040BE9E    mov         eax,dword ptr [ebp-8]
 0040BEA1    mov         eax,dword ptr [eax]
 0040BEA3    push        eax
 0040BEA4    call        user32.CharUpperBuffA
 0040BEA9    mov         esp,ebp
 0040BEAB    pop         ebp
 0040BEAC    ret
end;*}

//0040BEB0
{*procedure sub_0040BEB0(?:AnsiString; ?:?);
begin
 0040BEB0    push        ebp
 0040BEB1    mov         ebp,esp
 0040BEB3    add         esp,0FFFFFFF4
 0040BEB6    mov         dword ptr [ebp-8],edx
 0040BEB9    mov         dword ptr [ebp-4],eax
 0040BEBC    mov         eax,dword ptr [ebp-4]
 0040BEBF    call        @LStrLen
 0040BEC4    mov         dword ptr [ebp-0C],eax
 0040BEC7    mov         eax,dword ptr [ebp-4]
 0040BECA    call        @LStrToPChar
 0040BECF    mov         edx,eax
 0040BED1    mov         eax,dword ptr [ebp-8]
 0040BED4    mov         ecx,dword ptr [ebp-0C]
 0040BED7    call        @LStrFromPCharLen
 0040BEDC    cmp         dword ptr [ebp-0C],0
>0040BEE0    jle         0040BEF1
 0040BEE2    mov         eax,dword ptr [ebp-0C]
 0040BEE5    push        eax
 0040BEE6    mov         eax,dword ptr [ebp-8]
 0040BEE9    mov         eax,dword ptr [eax]
 0040BEEB    push        eax
 0040BEEC    call        user32.CharLowerBuffA
 0040BEF1    mov         esp,ebp
 0040BEF3    pop         ebp
 0040BEF4    ret
end;*}

//0040BEF8
{*function sub_0040BEF8(?:?; ?:?):?;
begin
 0040BEF8    push        ebp
 0040BEF9    mov         ebp,esp
 0040BEFB    add         esp,0FFFFFFF4
 0040BEFE    mov         dword ptr [ebp-8],edx
 0040BF01    mov         dword ptr [ebp-4],eax
 0040BF04    mov         eax,dword ptr [ebp-8]
 0040BF07    call        @LStrLen
 0040BF0C    push        eax
 0040BF0D    mov         eax,dword ptr [ebp-8]
 0040BF10    call        @LStrToPChar
 0040BF15    push        eax
 0040BF16    mov         eax,dword ptr [ebp-4]
 0040BF19    call        @LStrLen
 0040BF1E    push        eax
 0040BF1F    mov         eax,dword ptr [ebp-4]
 0040BF22    call        @LStrToPChar
 0040BF27    push        eax
 0040BF28    push        0
 0040BF2A    push        400
 0040BF2F    call        kernel32.CompareStringA
 0040BF34    sub         eax,2
 0040BF37    mov         dword ptr [ebp-0C],eax
 0040BF3A    mov         eax,dword ptr [ebp-0C]
 0040BF3D    mov         esp,ebp
 0040BF3F    pop         ebp
 0040BF40    ret
end;*}

//0040BF44
{*function sub_0040BF44(?:AnsiString; ?:AnsiString):?;
begin
 0040BF44    push        ebp
 0040BF45    mov         ebp,esp
 0040BF47    add         esp,0FFFFFFF4
 0040BF4A    mov         dword ptr [ebp-8],edx
 0040BF4D    mov         dword ptr [ebp-4],eax
 0040BF50    mov         eax,dword ptr [ebp-8]
 0040BF53    call        @LStrLen
 0040BF58    push        eax
 0040BF59    mov         eax,dword ptr [ebp-8]
 0040BF5C    call        @LStrToPChar
 0040BF61    push        eax
 0040BF62    mov         eax,dword ptr [ebp-4]
 0040BF65    call        @LStrLen
 0040BF6A    push        eax
 0040BF6B    mov         eax,dword ptr [ebp-4]
 0040BF6E    call        @LStrToPChar
 0040BF73    push        eax
 0040BF74    push        1
 0040BF76    push        400
 0040BF7B    call        kernel32.CompareStringA
 0040BF80    sub         eax,2
 0040BF83    mov         dword ptr [ebp-0C],eax
 0040BF86    mov         eax,dword ptr [ebp-0C]
 0040BF89    mov         esp,ebp
 0040BF8B    pop         ebp
 0040BF8C    ret
end;*}

//0040BF90
{*function sub_0040BF90(?:?; ?:AnsiString):?;
begin
 0040BF90    push        ebp
 0040BF91    mov         ebp,esp
 0040BF93    add         esp,0FFFFFFF4
 0040BF96    mov         dword ptr [ebp-8],edx
 0040BF99    mov         dword ptr [ebp-4],eax
 0040BF9C    mov         edx,dword ptr [ebp-8]
 0040BF9F    mov         eax,dword ptr [ebp-4]
 0040BFA2    call        0040BF44
 0040BFA7    test        eax,eax
 0040BFA9    sete        byte ptr [ebp-9]
 0040BFAD    mov         al,byte ptr [ebp-9]
 0040BFB0    mov         esp,ebp
 0040BFB2    pop         ebp
 0040BFB3    ret
end;*}

//0040BFB4
{*function sub_0040BFB4(?:PChar; ?:?; ?:?):?;
begin
 0040BFB4    push        ebp
 0040BFB5    mov         ebp,esp
 0040BFB7    add         esp,0FFFFFFF0
 0040BFBA    mov         dword ptr [ebp-0C],ecx
 0040BFBD    mov         dword ptr [ebp-8],edx
 0040BFC0    mov         dword ptr [ebp-4],eax
 0040BFC3    mov         eax,dword ptr [ebp-0C]
 0040BFC6    push        eax
 0040BFC7    mov         eax,dword ptr [ebp-8]
 0040BFCA    push        eax
 0040BFCB    mov         eax,dword ptr [ebp-0C]
 0040BFCE    push        eax
 0040BFCF    mov         eax,dword ptr [ebp-4]
 0040BFD2    push        eax
 0040BFD3    push        1
 0040BFD5    push        400
 0040BFDA    call        kernel32.CompareStringA
 0040BFDF    sub         eax,2
 0040BFE2    mov         dword ptr [ebp-10],eax
 0040BFE5    mov         eax,dword ptr [ebp-10]
 0040BFE8    mov         esp,ebp
 0040BFEA    pop         ebp
 0040BFEB    ret
end;*}

//0040BFEC
{*procedure sub_0040BFEC(?:AnsiString; ?:?);
begin
 0040BFEC    push        ebp
 0040BFED    mov         ebp,esp
 0040BFEF    add         esp,0FFFFFFF0
 0040BFF2    mov         dword ptr [ebp-8],edx
 0040BFF5    mov         dword ptr [ebp-4],eax
 0040BFF8    mov         eax,dword ptr [ebp-4]
 0040BFFB    call        @LStrLen
 0040C000    mov         dword ptr [ebp-10],eax
 0040C003    mov         dword ptr [ebp-0C],1
>0040C00A    jmp         0040C00F
 0040C00C    inc         dword ptr [ebp-0C]
 0040C00F    mov         eax,dword ptr [ebp-0C]
 0040C012    cmp         eax,dword ptr [ebp-10]
>0040C015    jg          0040C024
 0040C017    mov         eax,dword ptr [ebp-4]
 0040C01A    mov         edx,dword ptr [ebp-0C]
 0040C01D    cmp         byte ptr [eax+edx-1],20
>0040C022    jbe         0040C00C
 0040C024    mov         eax,dword ptr [ebp-0C]
 0040C027    cmp         eax,dword ptr [ebp-10]
>0040C02A    jle         0040C039
 0040C02C    mov         eax,dword ptr [ebp-8]
 0040C02F    call        @LStrClr
>0040C034    jmp         0040C05C
 0040C036    dec         dword ptr [ebp-10]
 0040C039    mov         eax,dword ptr [ebp-4]
 0040C03C    mov         edx,dword ptr [ebp-10]
 0040C03F    cmp         byte ptr [eax+edx-1],20
>0040C044    jbe         0040C036
 0040C046    mov         eax,dword ptr [ebp-8]
 0040C049    push        eax
 0040C04A    mov         ecx,dword ptr [ebp-10]
 0040C04D    sub         ecx,dword ptr [ebp-0C]
 0040C050    inc         ecx
 0040C051    mov         edx,dword ptr [ebp-0C]
 0040C054    mov         eax,dword ptr [ebp-4]
 0040C057    call        @LStrCopy
 0040C05C    mov         esp,ebp
 0040C05E    pop         ebp
 0040C05F    ret
end;*}

//0040C060
{*procedure sub_0040C060(?:?; ?:?; ?:?);
begin
 0040C060    push        ebp
 0040C061    mov         ebp,esp
 0040C063    add         esp,0FFFFFFDC
 0040C066    push        ebx
 0040C067    xor         ebx,ebx
 0040C069    mov         dword ptr [ebp-24],ebx
 0040C06C    mov         dword ptr [ebp-0C],ecx
 0040C06F    mov         byte ptr [ebp-5],dl
 0040C072    mov         dword ptr [ebp-4],eax
 0040C075    xor         eax,eax
 0040C077    push        ebp
 0040C078    push        40C225
 0040C07D    push        dword ptr fs:[eax]
 0040C080    mov         dword ptr fs:[eax],esp
 0040C083    mov         eax,dword ptr [ebp-4]
 0040C086    mov         dword ptr [ebp-10],eax
 0040C089    mov         eax,dword ptr [ebp-4]
 0040C08C    call        @LStrLen
 0040C091    add         eax,dword ptr [ebp-10]
 0040C094    mov         dword ptr [ebp-14],eax
 0040C097    mov         eax,dword ptr [ebp-4]
 0040C09A    call        @LStrLen
 0040C09F    mov         dword ptr [ebp-1C],eax
 0040C0A2    mov         eax,dword ptr [ebp-10]
 0040C0A5    cmp         eax,dword ptr [ebp-14]
>0040C0A8    jae         0040C116
 0040C0AA    mov         eax,dword ptr [ebp-10]
 0040C0AD    mov         al,byte ptr [eax]
 0040C0AF    sub         al,0A
>0040C0B1    je          0040C0B9
 0040C0B3    sub         al,3
>0040C0B5    je          0040C0C4
>0040C0B7    jmp         0040C0EB
 0040C0B9    cmp         byte ptr [ebp-5],1
>0040C0BD    jne         0040C10B
 0040C0BF    inc         dword ptr [ebp-1C]
>0040C0C2    jmp         0040C10B
 0040C0C4    cmp         byte ptr [ebp-5],1
>0040C0C8    jne         0040C0DD
 0040C0CA    mov         eax,dword ptr [ebp-10]
 0040C0CD    cmp         byte ptr [eax+1],0A
>0040C0D1    jne         0040C0D8
 0040C0D3    inc         dword ptr [ebp-10]
>0040C0D6    jmp         0040C10B
 0040C0D8    inc         dword ptr [ebp-1C]
>0040C0DB    jmp         0040C10B
 0040C0DD    mov         eax,dword ptr [ebp-10]
 0040C0E0    cmp         byte ptr [eax+1],0A
>0040C0E4    jne         0040C10B
 0040C0E6    dec         dword ptr [ebp-1C]
>0040C0E9    jmp         0040C10B
 0040C0EB    mov         eax,dword ptr [ebp-10]
 0040C0EE    mov         al,byte ptr [eax]
 0040C0F0    and         eax,0FF
 0040C0F5    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>0040C0FC    jae         0040C10B
 0040C0FE    mov         eax,dword ptr [ebp-10]
 0040C101    call        0041145C
 0040C106    mov         dword ptr [ebp-10],eax
>0040C109    jmp         0040C10E
 0040C10B    inc         dword ptr [ebp-10]
 0040C10E    mov         eax,dword ptr [ebp-10]
 0040C111    cmp         eax,dword ptr [ebp-14]
>0040C114    jb          0040C0AA
 0040C116    lea         eax,[ebp-24]
 0040C119    mov         edx,dword ptr [ebp-10]
 0040C11C    call        @LStrFromPChar
 0040C121    mov         eax,dword ptr [ebp-24]
 0040C124    call        @LStrLen
 0040C129    cmp         eax,dword ptr [ebp-1C]
>0040C12C    jne         0040C13E
 0040C12E    mov         eax,dword ptr [ebp-0C]
 0040C131    mov         edx,dword ptr [ebp-4]
 0040C134    call        @LStrAsg
>0040C139    jmp         0040C20F
 0040C13E    mov         eax,dword ptr [ebp-4]
 0040C141    mov         dword ptr [ebp-10],eax
 0040C144    mov         eax,dword ptr [ebp-0C]
 0040C147    mov         ecx,dword ptr [ebp-1C]
 0040C14A    xor         edx,edx
 0040C14C    call        @LStrFromPCharLen
 0040C151    mov         eax,dword ptr [ebp-0C]
 0040C154    mov         eax,dword ptr [eax]
 0040C156    mov         dword ptr [ebp-18],eax
 0040C159    mov         eax,dword ptr [ebp-10]
 0040C15C    cmp         eax,dword ptr [ebp-14]
>0040C15F    jae         0040C20F
 0040C165    mov         eax,dword ptr [ebp-10]
 0040C168    mov         al,byte ptr [eax]
 0040C16A    sub         al,0A
>0040C16C    je          0040C174
 0040C16E    sub         al,3
>0040C170    je          0040C191
>0040C172    jmp         0040C1B9
 0040C174    cmp         byte ptr [ebp-5],1
>0040C178    jne         0040C183
 0040C17A    mov         eax,dword ptr [ebp-18]
 0040C17D    mov         byte ptr [eax],0D
 0040C180    inc         dword ptr [ebp-18]
 0040C183    mov         eax,dword ptr [ebp-18]
 0040C186    mov         byte ptr [eax],0A
 0040C189    inc         dword ptr [ebp-18]
 0040C18C    inc         dword ptr [ebp-10]
>0040C18F    jmp         0040C203
 0040C191    cmp         byte ptr [ebp-5],1
>0040C195    jne         0040C1A0
 0040C197    mov         eax,dword ptr [ebp-18]
 0040C19A    mov         byte ptr [eax],0D
 0040C19D    inc         dword ptr [ebp-18]
 0040C1A0    mov         eax,dword ptr [ebp-18]
 0040C1A3    mov         byte ptr [eax],0A
 0040C1A6    inc         dword ptr [ebp-18]
 0040C1A9    inc         dword ptr [ebp-10]
 0040C1AC    mov         eax,dword ptr [ebp-10]
 0040C1AF    cmp         byte ptr [eax],0A
>0040C1B2    jne         0040C203
 0040C1B4    inc         dword ptr [ebp-10]
>0040C1B7    jmp         0040C203
 0040C1B9    mov         eax,dword ptr [ebp-10]
 0040C1BC    mov         al,byte ptr [eax]
 0040C1BE    and         eax,0FF
 0040C1C3    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>0040C1CA    jae         0040C1F3
 0040C1CC    mov         eax,dword ptr [ebp-10]
 0040C1CF    call        00411428
 0040C1D4    mov         dword ptr [ebp-20],eax
 0040C1D7    mov         edx,dword ptr [ebp-18]
 0040C1DA    mov         eax,dword ptr [ebp-10]
 0040C1DD    mov         ecx,dword ptr [ebp-20]
 0040C1E0    call        Move
 0040C1E5    mov         eax,dword ptr [ebp-20]
 0040C1E8    add         dword ptr [ebp-18],eax
 0040C1EB    mov         eax,dword ptr [ebp-20]
 0040C1EE    add         dword ptr [ebp-10],eax
>0040C1F1    jmp         0040C203
 0040C1F3    mov         eax,dword ptr [ebp-10]
 0040C1F6    mov         al,byte ptr [eax]
 0040C1F8    mov         edx,dword ptr [ebp-18]
 0040C1FB    mov         byte ptr [edx],al
 0040C1FD    inc         dword ptr [ebp-18]
 0040C200    inc         dword ptr [ebp-10]
 0040C203    mov         eax,dword ptr [ebp-10]
 0040C206    cmp         eax,dword ptr [ebp-14]
>0040C209    jb          0040C165
 0040C20F    xor         eax,eax
 0040C211    pop         edx
 0040C212    pop         ecx
 0040C213    pop         ecx
 0040C214    mov         dword ptr fs:[eax],edx
 0040C217    push        40C22C
 0040C21C    lea         eax,[ebp-24]
 0040C21F    call        @LStrClr
 0040C224    ret
>0040C225    jmp         @HandleFinally
>0040C22A    jmp         0040C21C
 0040C22C    pop         ebx
 0040C22D    mov         esp,ebp
 0040C22F    pop         ebp
 0040C230    ret
end;*}

//0040C234
{*function sub_0040C234(?:TComponentName):?;
begin
 0040C234    push        ebp
 0040C235    mov         ebp,esp
 0040C237    add         esp,0FFFFFFF0
 0040C23A    mov         dword ptr [ebp-4],eax
 0040C23D    mov         byte ptr [ebp-5],0
 0040C241    mov         eax,dword ptr [ebp-4]
 0040C244    call        @LStrLen
 0040C249    test        eax,eax
>0040C24B    je          0040C2A6
 0040C24D    mov         eax,dword ptr [ebp-4]
 0040C250    mov         al,byte ptr [eax]
 0040C252    add         al,0BF
 0040C254    sub         al,1A
>0040C256    jb          0040C262
 0040C258    sub         al,4
>0040C25A    je          0040C262
 0040C25C    add         al,0FE
 0040C25E    sub         al,1A
>0040C260    jae         0040C2A6
 0040C262    mov         eax,dword ptr [ebp-4]
 0040C265    call        @LStrLen
 0040C26A    sub         eax,2
>0040C26D    jl          0040C2A2
 0040C26F    inc         eax
 0040C270    mov         dword ptr [ebp-10],eax
 0040C273    mov         dword ptr [ebp-0C],2
 0040C27A    mov         eax,dword ptr [ebp-4]
 0040C27D    mov         edx,dword ptr [ebp-0C]
 0040C280    mov         al,byte ptr [eax+edx-1]
 0040C284    add         al,0D0
 0040C286    sub         al,0A
>0040C288    jb          0040C29A
 0040C28A    add         al,0F9
 0040C28C    sub         al,1A
>0040C28E    jb          0040C29A
 0040C290    sub         al,4
>0040C292    je          0040C29A
 0040C294    add         al,0FE
 0040C296    sub         al,1A
>0040C298    jae         0040C2A6
 0040C29A    inc         dword ptr [ebp-0C]
 0040C29D    dec         dword ptr [ebp-10]
>0040C2A0    jne         0040C27A
 0040C2A2    mov         byte ptr [ebp-5],1
 0040C2A6    mov         al,byte ptr [ebp-5]
 0040C2A9    mov         esp,ebp
 0040C2AB    pop         ebp
 0040C2AC    ret
end;*}

//0040C2B0
procedure CvtInt;
begin
{*
 0040C2B0    or          cl,cl
>0040C2B2    jne         0040C2CB
 0040C2B4    or          eax,eax
>0040C2B6    jns         0040C2C6
 0040C2B8    neg         eax
 0040C2BA    call        0040C2C6
 0040C2BF    mov         al,2D
 0040C2C1    inc         ecx
 0040C2C2    dec         esi
 0040C2C3    mov         byte ptr [esi],al
 0040C2C5    ret
 0040C2C6    mov         ecx,0A
 0040C2CB    push        edx
 0040C2CC    push        esi
 0040C2CD    xor         edx,edx
 0040C2CF    div         eax,ecx
 0040C2D1    dec         esi
 0040C2D2    add         dl,30
 0040C2D5    cmp         dl,3A
>0040C2D8    jb          0040C2DD
 0040C2DA    add         dl,7
 0040C2DD    mov         byte ptr [esi],dl
 0040C2DF    or          eax,eax
>0040C2E1    jne         0040C2CD
 0040C2E3    pop         ecx
 0040C2E4    pop         edx
 0040C2E5    sub         ecx,esi
 0040C2E7    sub         edx,ecx
>0040C2E9    jbe         0040C2FB
 0040C2EB    add         ecx,edx
 0040C2ED    mov         al,30
 0040C2EF    sub         esi,edx
>0040C2F1    jmp         0040C2F6
 0040C2F3    mov         byte ptr [edx+esi],al
 0040C2F6    dec         edx
>0040C2F7    jne         0040C2F3
 0040C2F9    mov         byte ptr [esi],al
 0040C2FB    ret
*}
end;

//0040C2FC
function IntToStr(Value:Integer):AnsiString;
begin
{*
 0040C2FC    push        esi
 0040C2FD    mov         esi,esp
 0040C2FF    sub         esp,10
 0040C302    xor         ecx,ecx
 0040C304    push        edx
 0040C305    xor         edx,edx
 0040C307    call        CvtInt
 0040C30C    mov         edx,esi
 0040C30E    pop         eax
 0040C30F    call        @LStrFromPCharLen
 0040C314    add         esp,10
 0040C317    pop         esi
 0040C318    ret
*}
end;

//0040C31C
procedure CvtInt64;
begin
{*
 0040C31C    or          cl,cl
>0040C31E    jne         0040C350
 0040C320    mov         ecx,0A
 0040C325    test        dword ptr [eax+4],80000000
>0040C32C    je          0040C350
 0040C32E    push        dword ptr [eax+4]
 0040C331    push        dword ptr [eax]
 0040C333    mov         eax,esp
 0040C335    neg         dword ptr [esp]
 0040C338    adc         dword ptr [esp+4],0
 0040C33D    neg         dword ptr [esp+4]
 0040C341    call        0040C350
 0040C346    mov         byte ptr [esi-1],2D
 0040C34A    dec         esi
 0040C34B    inc         ecx
 0040C34C    add         esp,8
 0040C34F    ret
*}
end;

//0040C3E8
function IntToStr(Value:Int64):AnsiString;
begin
{*
 0040C3E8    push        ebp
 0040C3E9    mov         ebp,esp
 0040C3EB    push        esi
 0040C3EC    mov         esi,esp
 0040C3EE    sub         esp,20
 0040C3F1    xor         ecx,ecx
 0040C3F3    push        eax
 0040C3F4    xor         edx,edx
 0040C3F6    lea         eax,[ebp+8]
 0040C3F9    call        CvtInt64
 0040C3FE    mov         edx,esi
 0040C400    pop         eax
 0040C401    call        @LStrFromPCharLen
 0040C406    add         esp,20
 0040C409    pop         esi
 0040C40A    pop         ebp
 0040C40B    ret         8
*}
end;

//0040C410
function IntToHex(Value:Integer; Digits:Integer):AnsiString;
begin
{*
 0040C410    cmp         edx,20
>0040C413    jbe         0040C417
 0040C415    xor         edx,edx
 0040C417    push        esi
 0040C418    mov         esi,esp
 0040C41A    sub         esp,20
 0040C41D    push        ecx
 0040C41E    mov         ecx,10
 0040C423    call        CvtInt
 0040C428    mov         edx,esi
 0040C42A    pop         eax
 0040C42B    call        @LStrFromPCharLen
 0040C430    add         esp,20
 0040C433    pop         esi
 0040C434    ret
*}
end;

//0040C438
function IntToHex(Digits:Integer; Value:Int64):AnsiString;
begin
{*
 0040C438    push        ebp
 0040C439    mov         ebp,esp
 0040C43B    cmp         eax,20
>0040C43E    jle         0040C442
 0040C440    xor         eax,eax
 0040C442    push        esi
 0040C443    mov         esi,esp
 0040C445    sub         esp,20
 0040C448    mov         ecx,10
 0040C44D    push        edx
 0040C44E    mov         edx,eax
 0040C450    lea         eax,[ebp+8]
 0040C453    call        CvtInt64
 0040C458    mov         edx,esi
 0040C45A    pop         eax
 0040C45B    call        @LStrFromPCharLen
 0040C460    add         esp,20
 0040C463    pop         esi
 0040C464    pop         ebp
 0040C465    ret         8
*}
end;

//0040C468
{*function sub_0040C468(?:AnsiString):?;
begin
 0040C468    push        ebp
 0040C469    mov         ebp,esp
 0040C46B    add         esp,0FFFFFFEC
 0040C46E    mov         dword ptr [ebp-4],eax
 0040C471    lea         edx,[ebp-0C]
 0040C474    mov         eax,dword ptr [ebp-4]
 0040C477    call        @ValLong
 0040C47C    mov         dword ptr [ebp-8],eax
 0040C47F    cmp         dword ptr [ebp-0C],0
>0040C483    je          0040C49E
 0040C485    mov         eax,dword ptr [ebp-4]
 0040C488    mov         dword ptr [ebp-14],eax
 0040C48B    mov         byte ptr [ebp-10],0B
 0040C48F    lea         edx,[ebp-14]
 0040C492    mov         eax,[0056E1E8];^SInvalidInteger:TResStringRec
 0040C497    xor         ecx,ecx
 0040C499    call        0040BBDC
 0040C49E    mov         eax,dword ptr [ebp-8]
 0040C4A1    mov         esp,ebp
 0040C4A3    pop         ebp
 0040C4A4    ret
end;*}

//0040C4A8
{*function sub_0040C4A8(?:AnsiString; ?:LongWord):?;
begin
 0040C4A8    push        ebp
 0040C4A9    mov         ebp,esp
 0040C4AB    add         esp,0FFFFFFF0
 0040C4AE    mov         dword ptr [ebp-8],edx
 0040C4B1    mov         dword ptr [ebp-4],eax
 0040C4B4    lea         edx,[ebp-10]
 0040C4B7    mov         eax,dword ptr [ebp-4]
 0040C4BA    call        @ValLong
 0040C4BF    mov         dword ptr [ebp-0C],eax
 0040C4C2    cmp         dword ptr [ebp-10],0
>0040C4C6    je          0040C4CE
 0040C4C8    mov         eax,dword ptr [ebp-8]
 0040C4CB    mov         dword ptr [ebp-0C],eax
 0040C4CE    mov         eax,dword ptr [ebp-0C]
 0040C4D1    mov         esp,ebp
 0040C4D3    pop         ebp
 0040C4D4    ret
end;*}

//0040C4D8
{*function sub_0040C4D8(?:?; ?:?):?;
begin
 0040C4D8    push        ebp
 0040C4D9    mov         ebp,esp
 0040C4DB    add         esp,0FFFFFFF0
 0040C4DE    mov         dword ptr [ebp-8],edx
 0040C4E1    mov         dword ptr [ebp-4],eax
 0040C4E4    lea         edx,[ebp-10]
 0040C4E7    mov         eax,dword ptr [ebp-4]
 0040C4EA    call        @ValLong
 0040C4EF    mov         edx,dword ptr [ebp-8]
 0040C4F2    mov         dword ptr [edx],eax
 0040C4F4    cmp         dword ptr [ebp-10],0
 0040C4F8    sete        byte ptr [ebp-9]
 0040C4FC    mov         al,byte ptr [ebp-9]
 0040C4FF    mov         esp,ebp
 0040C501    pop         ebp
 0040C502    ret
end;*}

//0040C504
{*function sub_0040C504(?:AnsiString; ?:?; ?:?):?;
begin
 0040C504    push        ebp
 0040C505    mov         ebp,esp
 0040C507    add         esp,0FFFFFFEC
 0040C50A    mov         dword ptr [ebp-4],eax
 0040C50D    lea         edx,[ebp-14]
 0040C510    mov         eax,dword ptr [ebp-4]
 0040C513    call        004060C0
 0040C518    mov         dword ptr [ebp-10],eax
 0040C51B    mov         dword ptr [ebp-0C],edx
 0040C51E    cmp         dword ptr [ebp-14],0
>0040C522    je          0040C530
 0040C524    mov         eax,dword ptr [ebp+8]
 0040C527    mov         dword ptr [ebp-10],eax
 0040C52A    mov         eax,dword ptr [ebp+0C]
 0040C52D    mov         dword ptr [ebp-0C],eax
 0040C530    mov         eax,dword ptr [ebp-10]
 0040C533    mov         edx,dword ptr [ebp-0C]
 0040C536    mov         esp,ebp
 0040C538    pop         ebp
 0040C539    ret         8
end;*}

//0040C53C
{*function sub_0040C53C(?:?; ?:?):?;
begin
 0040C53C    push        ebp
 0040C53D    mov         ebp,esp
 0040C53F    add         esp,0FFFFFFF0
 0040C542    mov         dword ptr [ebp-8],edx
 0040C545    mov         dword ptr [ebp-4],eax
 0040C548    lea         edx,[ebp-10]
 0040C54B    mov         eax,dword ptr [ebp-4]
 0040C54E    call        004060C0
 0040C553    mov         ecx,dword ptr [ebp-8]
 0040C556    mov         dword ptr [ecx],eax
 0040C558    mov         dword ptr [ecx+4],edx
 0040C55B    cmp         dword ptr [ebp-10],0
 0040C55F    sete        byte ptr [ebp-9]
 0040C563    mov         al,byte ptr [ebp-9]
 0040C566    mov         esp,ebp
 0040C568    pop         ebp
 0040C569    ret
end;*}

//0040C56C
procedure sub_0040C56C;
begin
{*
 0040C56C    push        ebp
 0040C56D    mov         ebp,esp
 0040C56F    mov         eax,[005719B4];0x0 gvar_005719B4:?
 0040C574    call        @DynArrayLength
 0040C579    test        eax,eax
>0040C57B    jne         0040C5A6
 0040C57D    push        1
 0040C57F    mov         eax,5719B4;gvar_005719B4:?
 0040C584    mov         ecx,1
 0040C589    mov         edx,dword ptr ds:[40B9FC];_DynArr_10_74
 0040C58F    call        @DynArraySetLength
 0040C594    add         esp,4
 0040C597    mov         eax,[005719B4];0x0 gvar_005719B4:?
 0040C59C    mov         edx,40C5E8;'True'
 0040C5A1    call        @LStrAsg
 0040C5A6    mov         eax,[005719B8];0x0 gvar_005719B8:?
 0040C5AB    call        @DynArrayLength
 0040C5B0    test        eax,eax
>0040C5B2    jne         0040C5DD
 0040C5B4    push        1
 0040C5B6    mov         eax,5719B8;gvar_005719B8:?
 0040C5BB    mov         ecx,1
 0040C5C0    mov         edx,dword ptr ds:[40BA20];_DynArr_10_84
 0040C5C6    call        @DynArraySetLength
 0040C5CB    add         esp,4
 0040C5CE    mov         eax,[005719B8];0x0 gvar_005719B8:?
 0040C5D3    mov         edx,40C5F8;'False'
 0040C5D8    call        @LStrAsg
 0040C5DD    pop         ebp
 0040C5DE    ret
*}
end;

//0040C600
{*function sub_0040C600(?:?; ?:?; ?:?):?;
begin
 0040C600    push        ebp
 0040C601    mov         ebp,esp
 0040C603    add         esp,0FFFFFFEC
 0040C606    mov         dword ptr [ebp-8],edx
 0040C609    mov         dword ptr [ebp-4],eax
 0040C60C    mov         byte ptr [ebp-9],0
 0040C610    mov         eax,dword ptr [ebp-8]
 0040C613    test        eax,eax
>0040C615    jl          0040C648
 0040C617    inc         eax
 0040C618    mov         dword ptr [ebp-14],eax
 0040C61B    mov         dword ptr [ebp-10],0
 0040C622    mov         eax,dword ptr [ebp-4]
 0040C625    mov         edx,dword ptr [ebp-10]
 0040C628    mov         edx,dword ptr [eax+edx*4]
 0040C62B    mov         eax,dword ptr [ebp+8]
 0040C62E    mov         eax,dword ptr [eax-4]
 0040C631    call        0040BF90
 0040C636    test        al,al
>0040C638    je          0040C640
 0040C63A    mov         byte ptr [ebp-9],1
>0040C63E    jmp         0040C648
 0040C640    inc         dword ptr [ebp-10]
 0040C643    dec         dword ptr [ebp-14]
>0040C646    jne         0040C622
 0040C648    mov         al,byte ptr [ebp-9]
 0040C64B    mov         esp,ebp
 0040C64D    pop         ebp
 0040C64E    ret
end;*}

//0040C650
{*function sub_0040C650(?:?; ?:?):?;
begin
 0040C650    push        ebp
 0040C651    mov         ebp,esp
 0040C653    add         esp,0FFFFFFE8
 0040C656    mov         dword ptr [ebp-8],edx
 0040C659    mov         dword ptr [ebp-4],eax
 0040C65C    lea         edx,[ebp-18]
 0040C65F    mov         eax,dword ptr [ebp-4]
 0040C662    call        0040DE68
 0040C667    mov         byte ptr [ebp-9],al
 0040C66A    cmp         byte ptr [ebp-9],0
>0040C66E    je          0040C684
 0040C670    fld         tbyte ptr [ebp-18]
 0040C673    fcomp       dword ptr ds:[40C6E0];0:Single
 0040C679    fnstsw      al
 0040C67B    sahf
 0040C67C    mov         eax,dword ptr [ebp-8]
 0040C67F    setne       byte ptr [eax]
>0040C682    jmp         0040C6D9
 0040C684    call        0040C56C
 0040C689    push        ebp
 0040C68A    mov         eax,[005719B4];0x0 gvar_005719B4:?
 0040C68F    call        004062EC
 0040C694    mov         edx,eax
 0040C696    mov         eax,[005719B4];0x0 gvar_005719B4:?
 0040C69B    call        0040C600
 0040C6A0    pop         ecx
 0040C6A1    mov         byte ptr [ebp-9],al
 0040C6A4    cmp         byte ptr [ebp-9],0
>0040C6A8    je          0040C6B2
 0040C6AA    mov         eax,dword ptr [ebp-8]
 0040C6AD    mov         byte ptr [eax],1
>0040C6B0    jmp         0040C6D9
 0040C6B2    push        ebp
 0040C6B3    mov         eax,[005719B8];0x0 gvar_005719B8:?
 0040C6B8    call        004062EC
 0040C6BD    mov         edx,eax
 0040C6BF    mov         eax,[005719B8];0x0 gvar_005719B8:?
 0040C6C4    call        0040C600
 0040C6C9    pop         ecx
 0040C6CA    mov         byte ptr [ebp-9],al
 0040C6CD    cmp         byte ptr [ebp-9],0
>0040C6D1    je          0040C6D9
 0040C6D3    mov         eax,dword ptr [ebp-8]
 0040C6D6    mov         byte ptr [eax],0
 0040C6D9    mov         al,byte ptr [ebp-9]
 0040C6DC    mov         esp,ebp
 0040C6DE    pop         ebp
 0040C6DF    ret
end;*}

//0040C758
{*function sub_0040C758(?:?; ?:?):?;
begin
 0040C758    push        ebp
 0040C759    mov         ebp,esp
 0040C75B    add         esp,0FFFFFFF4
 0040C75E    mov         dword ptr [ebp-8],edx
 0040C761    mov         dword ptr [ebp-4],eax
 0040C764    mov         dword ptr [ebp-0C],0FFFFFFFF
 0040C76B    mov         eax,dword ptr [ebp-8]
 0040C76E    and         eax,3
 0040C771    cmp         eax,2
>0040C774    ja          0040C7C0
 0040C776    mov         eax,dword ptr [ebp-8]
 0040C779    and         eax,0F0
 0040C77E    cmp         eax,40
>0040C781    ja          0040C7C0
 0040C783    push        0
 0040C785    push        80
 0040C78A    push        3
 0040C78C    push        0
 0040C78E    mov         eax,dword ptr [ebp-8]
 0040C791    and         eax,0F0
 0040C796    shr         eax,4
 0040C799    mov         eax,dword ptr [eax*4+56B860]
 0040C7A0    push        eax
 0040C7A1    mov         eax,dword ptr [ebp-8]
 0040C7A4    and         eax,3
 0040C7A7    mov         eax,dword ptr [eax*4+56B854]
 0040C7AE    push        eax
 0040C7AF    mov         eax,dword ptr [ebp-4]
 0040C7B2    call        @LStrToPChar
 0040C7B7    push        eax
 0040C7B8    call        kernel32.CreateFileA
 0040C7BD    mov         dword ptr [ebp-0C],eax
 0040C7C0    mov         eax,dword ptr [ebp-0C]
 0040C7C3    mov         esp,ebp
 0040C7C5    pop         ebp
 0040C7C6    ret
end;*}

//0040C7C8
{*function sub_0040C7C8(?:?):?;
begin
 0040C7C8    push        ebp
 0040C7C9    mov         ebp,esp
 0040C7CB    add         esp,0FFFFFFF8
 0040C7CE    mov         dword ptr [ebp-4],eax
 0040C7D1    push        0
 0040C7D3    push        80
 0040C7D8    push        2
 0040C7DA    push        0
 0040C7DC    push        0
 0040C7DE    push        0C0000000
 0040C7E3    mov         eax,dword ptr [ebp-4]
 0040C7E6    call        @LStrToPChar
 0040C7EB    push        eax
 0040C7EC    call        kernel32.CreateFileA
 0040C7F1    mov         dword ptr [ebp-8],eax
 0040C7F4    mov         eax,dword ptr [ebp-8]
 0040C7F7    pop         ecx
 0040C7F8    pop         ecx
 0040C7F9    pop         ebp
 0040C7FA    ret
end;*}

//0040C7FC
{*function sub_0040C7FC(?:?; ?:?):?;
begin
 0040C7FC    push        ebp
 0040C7FD    mov         ebp,esp
 0040C7FF    add         esp,0FFFFFFF4
 0040C802    mov         dword ptr [ebp-0C],edx
 0040C805    mov         dword ptr [ebp-4],eax
 0040C808    mov         eax,dword ptr [ebp-4]
 0040C80B    call        0040C7C8
 0040C810    mov         dword ptr [ebp-8],eax
 0040C813    mov         eax,dword ptr [ebp-8]
 0040C816    mov         esp,ebp
 0040C818    pop         ebp
 0040C819    ret
end;*}

//0040C81C
{*function sub_0040C81C(?:Integer; ?:?; ?:?):?;
begin
 0040C81C    push        ebp
 0040C81D    mov         ebp,esp
 0040C81F    add         esp,0FFFFFFF0
 0040C822    mov         dword ptr [ebp-0C],ecx
 0040C825    mov         dword ptr [ebp-8],edx
 0040C828    mov         dword ptr [ebp-4],eax
 0040C82B    push        0
 0040C82D    lea         eax,[ebp-10]
 0040C830    push        eax
 0040C831    mov         eax,dword ptr [ebp-0C]
 0040C834    push        eax
 0040C835    mov         eax,dword ptr [ebp-8]
 0040C838    push        eax
 0040C839    mov         eax,dword ptr [ebp-4]
 0040C83C    push        eax
 0040C83D    call        kernel32.ReadFile
 0040C842    test        eax,eax
>0040C844    jne         0040C84D
 0040C846    mov         dword ptr [ebp-10],0FFFFFFFF
 0040C84D    mov         eax,dword ptr [ebp-10]
 0040C850    mov         esp,ebp
 0040C852    pop         ebp
 0040C853    ret
end;*}

//0040C854
{*function sub_0040C854(?:Integer; ?:?; ?:?):?;
begin
 0040C854    push        ebp
 0040C855    mov         ebp,esp
 0040C857    add         esp,0FFFFFFF0
 0040C85A    mov         dword ptr [ebp-0C],ecx
 0040C85D    mov         dword ptr [ebp-8],edx
 0040C860    mov         dword ptr [ebp-4],eax
 0040C863    push        0
 0040C865    lea         eax,[ebp-10]
 0040C868    push        eax
 0040C869    mov         eax,dword ptr [ebp-0C]
 0040C86C    push        eax
 0040C86D    mov         eax,dword ptr [ebp-8]
 0040C870    push        eax
 0040C871    mov         eax,dword ptr [ebp-4]
 0040C874    push        eax
 0040C875    call        kernel32.WriteFile
 0040C87A    test        eax,eax
>0040C87C    jne         0040C885
 0040C87E    mov         dword ptr [ebp-10],0FFFFFFFF
 0040C885    mov         eax,dword ptr [ebp-10]
 0040C888    mov         esp,ebp
 0040C88A    pop         ebp
 0040C88B    ret
end;*}

//0040C88C
{*function sub_0040C88C(?:Integer; ?:?; ?:?; ?:?):?;
begin
 0040C88C    push        ebp
 0040C88D    mov         ebp,esp
 0040C88F    add         esp,0FFFFFFF0
 0040C892    mov         dword ptr [ebp-10],edx
 0040C895    mov         dword ptr [ebp-0C],eax
 0040C898    mov         eax,dword ptr [ebp+8]
 0040C89B    mov         dword ptr [ebp-8],eax
 0040C89E    mov         eax,dword ptr [ebp+0C]
 0040C8A1    mov         dword ptr [ebp-4],eax
 0040C8A4    mov         eax,dword ptr [ebp-10]
 0040C8A7    push        eax
 0040C8A8    lea         eax,[ebp-4]
 0040C8AB    push        eax
 0040C8AC    mov         eax,dword ptr [ebp-8]
 0040C8AF    push        eax
 0040C8B0    mov         eax,dword ptr [ebp-0C]
 0040C8B3    push        eax
 0040C8B4    call        kernel32.SetFilePointer
 0040C8B9    mov         dword ptr [ebp-8],eax
 0040C8BC    mov         eax,dword ptr [ebp-8]
 0040C8BF    mov         edx,dword ptr [ebp-4]
 0040C8C2    mov         esp,ebp
 0040C8C4    pop         ebp
 0040C8C5    ret         8
end;*}

//0040C8C8
procedure sub_0040C8C8(?:Integer);
begin
{*
 0040C8C8    push        ebp
 0040C8C9    mov         ebp,esp
 0040C8CB    push        ecx
 0040C8CC    mov         dword ptr [ebp-4],eax
 0040C8CF    mov         eax,dword ptr [ebp-4]
 0040C8D2    push        eax
 0040C8D3    call        kernel32.CloseHandle
 0040C8D8    pop         ecx
 0040C8D9    pop         ebp
 0040C8DA    ret
*}
end;

//0040C8DC
{*function sub_0040C8DC(?:?):?;
begin
 0040C8DC    push        ebp
 0040C8DD    mov         ebp,esp
 0040C8DF    add         esp,0FFFFFEAC
 0040C8E5    mov         dword ptr [ebp-8],eax
 0040C8E8    lea         eax,[ebp-154]
 0040C8EE    push        eax
 0040C8EF    mov         eax,dword ptr [ebp-8]
 0040C8F2    call        @LStrToPChar
 0040C8F7    push        eax
 0040C8F8    call        kernel32.FindFirstFileA
 0040C8FD    mov         dword ptr [ebp-0C],eax
 0040C900    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0040C904    je          0040C93D
 0040C906    mov         eax,dword ptr [ebp-0C]
 0040C909    push        eax
 0040C90A    call        kernel32.FindClose
 0040C90F    test        byte ptr [ebp-154],10
>0040C916    jne         0040C93D
 0040C918    lea         eax,[ebp-14]
 0040C91B    push        eax
 0040C91C    lea         eax,[ebp-140]
 0040C922    push        eax
 0040C923    call        kernel32.FileTimeToLocalFileTime
 0040C928    lea         eax,[ebp-4]
 0040C92B    push        eax
 0040C92C    lea         eax,[ebp-2]
 0040C92F    push        eax
 0040C930    lea         eax,[ebp-14]
 0040C933    push        eax
 0040C934    call        kernel32.FileTimeToDosDateTime
 0040C939    test        eax,eax
>0040C93B    jne         0040C944
 0040C93D    mov         dword ptr [ebp-4],0FFFFFFFF
 0040C944    mov         eax,dword ptr [ebp-4]
 0040C947    mov         esp,ebp
 0040C949    pop         ebp
 0040C94A    ret
end;*}

//0040C94C
{*function sub_0040C94C(?:TFileName):?;
begin
 0040C94C    push        ebp
 0040C94D    mov         ebp,esp
 0040C94F    add         esp,0FFFFFFF8
 0040C952    mov         dword ptr [ebp-4],eax
 0040C955    mov         eax,dword ptr [ebp-4]
 0040C958    call        0040C8DC
 0040C95D    inc         eax
 0040C95E    setne       byte ptr [ebp-5]
 0040C962    mov         al,byte ptr [ebp-5]
 0040C965    pop         ecx
 0040C966    pop         ecx
 0040C967    pop         ebp
 0040C968    ret
end;*}

//0040C96C
{*function sub_0040C96C(?:AnsiString):?;
begin
 0040C96C    push        ebp
 0040C96D    mov         ebp,esp
 0040C96F    add         esp,0FFFFFFF4
 0040C972    mov         dword ptr [ebp-4],eax
 0040C975    mov         eax,dword ptr [ebp-4]
 0040C978    call        @LStrToPChar
 0040C97D    push        eax
 0040C97E    call        kernel32.GetFileAttributesA
 0040C983    mov         dword ptr [ebp-0C],eax
 0040C986    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0040C98A    je          0040C992
 0040C98C    test        byte ptr [ebp-0C],10
>0040C990    jne         0040C996
 0040C992    xor         eax,eax
>0040C994    jmp         0040C998
 0040C996    mov         al,1
 0040C998    mov         byte ptr [ebp-5],al
 0040C99B    mov         al,byte ptr [ebp-5]
 0040C99E    mov         esp,ebp
 0040C9A0    pop         ebp
 0040C9A1    ret
end;*}

//0040C9A4
{*function sub_0040C9A4(?:AnsiString):?;
begin
 0040C9A4    push        ebp
 0040C9A5    mov         ebp,esp
 0040C9A7    add         esp,0FFFFFFE8
 0040C9AA    xor         edx,edx
 0040C9AC    mov         dword ptr [ebp-18],edx
 0040C9AF    mov         dword ptr [ebp-14],edx
 0040C9B2    mov         dword ptr [ebp-10],edx
 0040C9B5    mov         dword ptr [ebp-4],eax
 0040C9B8    mov         eax,dword ptr [ebp-4]
 0040C9BB    call        @LStrAddRef
 0040C9C0    xor         eax,eax
 0040C9C2    push        ebp
 0040C9C3    push        40CA95
 0040C9C8    push        dword ptr fs:[eax]
 0040C9CB    mov         dword ptr fs:[eax],esp
 0040C9CE    mov         byte ptr [ebp-5],1
 0040C9D2    cmp         dword ptr [ebp-4],0
>0040C9D6    jne         0040C9FF
 0040C9D8    mov         ecx,dword ptr ds:[56E5E8];^SCannotCreateDir:TResStringRec
 0040C9DE    mov         dl,1
 0040C9E0    mov         eax,[0040B124];EInOutError
 0040C9E5    call        Exception.Create;EInOutError.Create
 0040C9EA    mov         dword ptr [ebp-0C],eax
 0040C9ED    mov         eax,dword ptr [ebp-0C]
 0040C9F0    mov         dword ptr [eax+0C],3;EInOutError....ErrorCode:Integer
 0040C9F7    mov         eax,dword ptr [ebp-0C]
 0040C9FA    call        @RaiseExcept
 0040C9FF    lea         edx,[ebp-10]
 0040CA02    mov         eax,dword ptr [ebp-4]
 0040CA05    call        00411618
 0040CA0A    mov         edx,dword ptr [ebp-10]
 0040CA0D    lea         eax,[ebp-4]
 0040CA10    call        @LStrLAsg
 0040CA15    mov         eax,dword ptr [ebp-4]
 0040CA18    call        @LStrLen
 0040CA1D    cmp         eax,3
>0040CA20    jl          0040CA72
 0040CA22    mov         eax,dword ptr [ebp-4]
 0040CA25    call        0040C96C
 0040CA2A    test        al,al
>0040CA2C    jne         0040CA72
 0040CA2E    lea         edx,[ebp-14]
 0040CA31    mov         eax,dword ptr [ebp-4]
 0040CA34    call        0040CC5C
 0040CA39    mov         eax,dword ptr [ebp-14]
 0040CA3C    mov         edx,dword ptr [ebp-4]
 0040CA3F    call        @LStrCmp
>0040CA44    je          0040CA72
 0040CA46    lea         edx,[ebp-18]
 0040CA49    mov         eax,dword ptr [ebp-4]
 0040CA4C    call        0040CC5C
 0040CA51    mov         eax,dword ptr [ebp-18]
 0040CA54    call        0040C9A4
 0040CA59    test        al,al
>0040CA5B    je          0040CA69
 0040CA5D    mov         eax,dword ptr [ebp-4]
 0040CA60    call        0040CE04
 0040CA65    test        al,al
>0040CA67    jne         0040CA6D
 0040CA69    xor         eax,eax
>0040CA6B    jmp         0040CA6F
 0040CA6D    mov         al,1
 0040CA6F    mov         byte ptr [ebp-5],al
 0040CA72    xor         eax,eax
 0040CA74    pop         edx
 0040CA75    pop         ecx
 0040CA76    pop         ecx
 0040CA77    mov         dword ptr fs:[eax],edx
 0040CA7A    push        40CA9C
 0040CA7F    lea         eax,[ebp-18]
 0040CA82    mov         edx,3
 0040CA87    call        @LStrArrayClr
 0040CA8C    lea         eax,[ebp-4]
 0040CA8F    call        @LStrClr
 0040CA94    ret
>0040CA95    jmp         @HandleFinally
>0040CA9A    jmp         0040CA7F
 0040CA9C    mov         al,byte ptr [ebp-5]
 0040CA9F    mov         esp,ebp
 0040CAA1    pop         ebp
 0040CAA2    ret
end;*}

//0040CAA4
{*function sub_0040CAA4(?:AnsiString):?;
begin
 0040CAA4    push        ebp
 0040CAA5    mov         ebp,esp
 0040CAA7    add         esp,0FFFFFFF8
 0040CAAA    mov         dword ptr [ebp-4],eax
 0040CAAD    mov         eax,dword ptr [ebp-4]
 0040CAB0    call        @LStrToPChar
 0040CAB5    push        eax
 0040CAB6    call        kernel32.DeleteFileA
 0040CABB    cmp         eax,1
 0040CABE    sbb         eax,eax
 0040CAC0    inc         eax
 0040CAC1    mov         byte ptr [ebp-5],al
 0040CAC4    mov         al,byte ptr [ebp-5]
 0040CAC7    pop         ecx
 0040CAC8    pop         ecx
 0040CAC9    pop         ebp
 0040CACA    ret
end;*}

//0040CACC
{*function sub_0040CACC(?:?; ?:?):?;
begin
 0040CACC    push        ebp
 0040CACD    mov         ebp,esp
 0040CACF    add         esp,0FFFFFFF4
 0040CAD2    mov         dword ptr [ebp-8],edx
 0040CAD5    mov         dword ptr [ebp-4],eax
 0040CAD8    mov         eax,dword ptr [ebp-8]
 0040CADB    call        @LStrToPChar
 0040CAE0    push        eax
 0040CAE1    mov         eax,dword ptr [ebp-4]
 0040CAE4    call        @LStrToPChar
 0040CAE9    push        eax
 0040CAEA    call        kernel32.MoveFileA
 0040CAEF    cmp         eax,1
 0040CAF2    sbb         eax,eax
 0040CAF4    inc         eax
 0040CAF5    mov         byte ptr [ebp-9],al
 0040CAF8    mov         al,byte ptr [ebp-9]
 0040CAFB    mov         esp,ebp
 0040CAFD    pop         ebp
 0040CAFE    ret
end;*}

//0040CB00
{*function sub_0040CB00(?:AnsiString):?;
begin
 0040CB00    push        ebp
 0040CB01    mov         ebp,esp
 0040CB03    add         esp,0FFFFFFF4
 0040CB06    mov         dword ptr [ebp-4],eax
 0040CB09    mov         eax,dword ptr [ebp-4]
 0040CB0C    call        @LStrLen
 0040CB11    mov         dword ptr [ebp-0C],eax
 0040CB14    cmp         dword ptr [ebp-0C],0
>0040CB18    je          0040CB3D
>0040CB1A    jmp         0040CB1F
 0040CB1C    dec         dword ptr [ebp-0C]
 0040CB1F    mov         edx,dword ptr [ebp-0C]
 0040CB22    mov         eax,dword ptr [ebp-4]
 0040CB25    call        00411160
 0040CB2A    cmp         al,2
>0040CB2C    je          0040CB1C
 0040CB2E    mov         eax,dword ptr [ebp-0C]
 0040CB31    mov         edx,dword ptr [ebp-4]
 0040CB34    lea         eax,[edx+eax-1]
 0040CB38    mov         dword ptr [ebp-8],eax
>0040CB3B    jmp         0040CB42
 0040CB3D    xor         eax,eax
 0040CB3F    mov         dword ptr [ebp-8],eax
 0040CB42    mov         eax,dword ptr [ebp-8]
 0040CB45    mov         esp,ebp
 0040CB47    pop         ebp
 0040CB48    ret
end;*}

//0040CB4C
{*function sub_0040CB4C(?:AnsiString; ?:AnsiString):?;
begin
 0040CB4C    push        ebp
 0040CB4D    mov         ebp,esp
 0040CB4F    add         esp,0FFFFFFF0
 0040CB52    mov         dword ptr [ebp-8],edx
 0040CB55    mov         dword ptr [ebp-4],eax
 0040CB58    mov         eax,dword ptr [ebp-8]
 0040CB5B    call        @LStrLen
 0040CB60    mov         dword ptr [ebp-0C],eax
 0040CB63    mov         eax,dword ptr [ebp-4]
 0040CB66    call        @LStrToPChar
 0040CB6B    mov         dword ptr [ebp-10],eax
 0040CB6E    cmp         dword ptr [ebp-0C],0
>0040CB72    jle         0040CBB2
 0040CB74    mov         eax,dword ptr [ebp-0C]
 0040CB77    mov         edx,dword ptr [ebp-8]
 0040CB7A    cmp         byte ptr [edx+eax-1],0
>0040CB7F    je          0040CBA9
 0040CB81    mov         eax,dword ptr [ebp-0C]
 0040CB84    mov         edx,dword ptr [ebp-8]
 0040CB87    mov         dl,byte ptr [edx+eax-1]
 0040CB8B    mov         eax,dword ptr [ebp-10]
 0040CB8E    call        0040CFF0
 0040CB93    test        eax,eax
>0040CB95    je          0040CBA9
 0040CB97    mov         edx,dword ptr [ebp-0C]
 0040CB9A    mov         eax,dword ptr [ebp-8]
 0040CB9D    call        00411160
 0040CBA2    cmp         al,2
>0040CBA4    jne         0040CBB2
 0040CBA6    dec         dword ptr [ebp-0C]
 0040CBA9    dec         dword ptr [ebp-0C]
 0040CBAC    cmp         dword ptr [ebp-0C],0
>0040CBB0    jg          0040CB74
 0040CBB2    mov         eax,dword ptr [ebp-0C]
 0040CBB5    mov         esp,ebp
 0040CBB7    pop         ebp
 0040CBB8    ret
end;*}

//0040CBBC
{*procedure sub_0040CBBC(?:?; ?:AnsiString; ?:?);
begin
 0040CBBC    push        ebp
 0040CBBD    mov         ebp,esp
 0040CBBF    add         esp,0FFFFFFEC
 0040CBC2    push        ebx
 0040CBC3    xor         ebx,ebx
 0040CBC5    mov         dword ptr [ebp-14],ebx
 0040CBC8    mov         dword ptr [ebp-0C],ecx
 0040CBCB    mov         dword ptr [ebp-8],edx
 0040CBCE    mov         dword ptr [ebp-4],eax
 0040CBD1    xor         eax,eax
 0040CBD3    push        ebp
 0040CBD4    push        40CC42
 0040CBD9    push        dword ptr fs:[eax]
 0040CBDC    mov         dword ptr fs:[eax],esp
 0040CBDF    mov         edx,dword ptr [ebp-4]
 0040CBE2    mov         eax,40CC58;'.\:'
 0040CBE7    call        0040CB4C
 0040CBEC    mov         dword ptr [ebp-10],eax
 0040CBEF    cmp         dword ptr [ebp-10],0
>0040CBF3    je          0040CC02
 0040CBF5    mov         eax,dword ptr [ebp-10]
 0040CBF8    mov         edx,dword ptr [ebp-4]
 0040CBFB    cmp         byte ptr [edx+eax-1],2E
>0040CC00    je          0040CC09
 0040CC02    mov         dword ptr [ebp-10],7FFFFFFF
 0040CC09    lea         eax,[ebp-14]
 0040CC0C    push        eax
 0040CC0D    mov         ecx,dword ptr [ebp-10]
 0040CC10    dec         ecx
 0040CC11    mov         edx,1
 0040CC16    mov         eax,dword ptr [ebp-4]
 0040CC19    call        @LStrCopy
 0040CC1E    mov         edx,dword ptr [ebp-14]
 0040CC21    mov         eax,dword ptr [ebp-0C]
 0040CC24    mov         ecx,dword ptr [ebp-8]
 0040CC27    call        @LStrCat3
 0040CC2C    xor         eax,eax
 0040CC2E    pop         edx
 0040CC2F    pop         ecx
 0040CC30    pop         ecx
 0040CC31    mov         dword ptr fs:[eax],edx
 0040CC34    push        40CC49
 0040CC39    lea         eax,[ebp-14]
 0040CC3C    call        @LStrClr
 0040CC41    ret
>0040CC42    jmp         @HandleFinally
>0040CC47    jmp         0040CC39
 0040CC49    pop         ebx
 0040CC4A    mov         esp,ebp
 0040CC4C    pop         ebp
 0040CC4D    ret
end;*}

//0040CC5C
{*procedure sub_0040CC5C(?:AnsiString; ?:?);
begin
 0040CC5C    push        ebp
 0040CC5D    mov         ebp,esp
 0040CC5F    add         esp,0FFFFFFF4
 0040CC62    mov         dword ptr [ebp-8],edx
 0040CC65    mov         dword ptr [ebp-4],eax
 0040CC68    mov         edx,dword ptr [ebp-4]
 0040CC6B    mov         eax,40CC98;'\:'
 0040CC70    call        0040CB4C
 0040CC75    mov         dword ptr [ebp-0C],eax
 0040CC78    mov         eax,dword ptr [ebp-8]
 0040CC7B    push        eax
 0040CC7C    mov         ecx,dword ptr [ebp-0C]
 0040CC7F    mov         edx,1
 0040CC84    mov         eax,dword ptr [ebp-4]
 0040CC87    call        @LStrCopy
 0040CC8C    mov         esp,ebp
 0040CC8E    pop         ebp
 0040CC8F    ret
end;*}

//0040CC9C
{*procedure sub_0040CC9C(?:AnsiString; ?:?);
begin
 0040CC9C    push        ebp
 0040CC9D    mov         ebp,esp
 0040CC9F    add         esp,0FFFFFFF4
 0040CCA2    mov         dword ptr [ebp-8],edx
 0040CCA5    mov         dword ptr [ebp-4],eax
 0040CCA8    mov         edx,dword ptr [ebp-4]
 0040CCAB    mov         eax,40CCDC;'\:'
 0040CCB0    call        0040CB4C
 0040CCB5    mov         dword ptr [ebp-0C],eax
 0040CCB8    mov         eax,dword ptr [ebp-8]
 0040CCBB    push        eax
 0040CCBC    mov         edx,dword ptr [ebp-0C]
 0040CCBF    inc         edx
 0040CCC0    mov         ecx,7FFFFFFF
 0040CCC5    mov         eax,dword ptr [ebp-4]
 0040CCC8    call        @LStrCopy
 0040CCCD    mov         esp,ebp
 0040CCCF    pop         ebp
 0040CCD0    ret
end;*}

//0040CCE0
procedure sub_0040CCE0(?:AnsiString; ?:AnsiString);
begin
{*
 0040CCE0    push        ebp
 0040CCE1    mov         ebp,esp
 0040CCE3    add         esp,0FFFFFFF4
 0040CCE6    mov         dword ptr [ebp-8],edx
 0040CCE9    mov         dword ptr [ebp-4],eax
 0040CCEC    mov         edx,dword ptr [ebp-4]
 0040CCEF    mov         eax,40CD3C;'.\:'
 0040CCF4    call        0040CB4C
 0040CCF9    mov         dword ptr [ebp-0C],eax
 0040CCFC    cmp         dword ptr [ebp-0C],0
>0040CD00    jle         0040CD25
 0040CD02    mov         eax,dword ptr [ebp-0C]
 0040CD05    mov         edx,dword ptr [ebp-4]
 0040CD08    cmp         byte ptr [edx+eax-1],2E
>0040CD0D    jne         0040CD25
 0040CD0F    mov         eax,dword ptr [ebp-8]
 0040CD12    push        eax
 0040CD13    mov         ecx,7FFFFFFF
 0040CD18    mov         edx,dword ptr [ebp-0C]
 0040CD1B    mov         eax,dword ptr [ebp-4]
 0040CD1E    call        @LStrCopy
>0040CD23    jmp         0040CD2D
 0040CD25    mov         eax,dword ptr [ebp-8]
 0040CD28    call        @LStrClr
 0040CD2D    mov         esp,ebp
 0040CD2F    pop         ebp
 0040CD30    ret
*}
end;

//0040CD40
{*procedure sub_0040CD40(?:TFileName; ?:?);
begin
 0040CD40    push        ebp
 0040CD41    mov         ebp,esp
 0040CD43    add         esp,0FFFFFEF0
 0040CD49    mov         dword ptr [ebp-8],edx
 0040CD4C    mov         dword ptr [ebp-4],eax
 0040CD4F    lea         eax,[ebp-0C]
 0040CD52    push        eax
 0040CD53    lea         eax,[ebp-110]
 0040CD59    push        eax
 0040CD5A    push        104
 0040CD5F    mov         eax,dword ptr [ebp-4]
 0040CD62    call        @LStrToPChar
 0040CD67    push        eax
 0040CD68    call        kernel32.GetFullPathNameA
 0040CD6D    mov         ecx,eax
 0040CD6F    lea         edx,[ebp-110]
 0040CD75    mov         eax,dword ptr [ebp-8]
 0040CD78    call        @LStrFromPCharLen
 0040CD7D    mov         esp,ebp
 0040CD7F    pop         ebp
 0040CD80    ret
end;*}

//0040CD84
{*function sub_0040CD84(?:?; ?:?; ?:?):?;
begin
 0040CD84    push        ebp
 0040CD85    mov         ebp,esp
 0040CD87    add         esp,0FFFFFFDC
 0040CD8A    cmp         dword ptr [ebp+8],0
>0040CD8E    je          0040CD98
 0040CD90    mov         eax,dword ptr [ebp+8]
 0040CD93    mov         dword ptr [ebp-24],eax
>0040CD96    jmp         0040CD9D
 0040CD98    xor         eax,eax
 0040CD9A    mov         dword ptr [ebp-24],eax
 0040CD9D    lea         eax,[ebp-14]
 0040CDA0    push        eax
 0040CDA1    lea         eax,[ebp-10]
 0040CDA4    push        eax
 0040CDA5    lea         eax,[ebp-0C]
 0040CDA8    push        eax
 0040CDA9    lea         eax,[ebp-8]
 0040CDAC    push        eax
 0040CDAD    mov         eax,dword ptr [ebp-24]
 0040CDB0    push        eax
 0040CDB1    call        kernel32.GetDiskFreeSpaceA
 0040CDB6    mov         dword ptr [ebp-4],eax
 0040CDB9    mov         eax,dword ptr [ebp-8]
 0040CDBC    imul        dword ptr [ebp-0C]
 0040CDBF    xor         edx,edx
 0040CDC1    mov         dword ptr [ebp-20],eax
 0040CDC4    mov         dword ptr [ebp-1C],edx
 0040CDC7    mov         eax,dword ptr [ebp-10]
 0040CDCA    xor         edx,edx
 0040CDCC    push        edx
 0040CDCD    push        eax
 0040CDCE    mov         eax,dword ptr [ebp-20]
 0040CDD1    mov         edx,dword ptr [ebp-1C]
 0040CDD4    call        @_llmul
 0040CDD9    mov         ecx,dword ptr [ebp+0C]
 0040CDDC    mov         dword ptr [ecx],eax
 0040CDDE    mov         dword ptr [ecx+4],edx
 0040CDE1    mov         eax,dword ptr [ebp-14]
 0040CDE4    xor         edx,edx
 0040CDE6    push        edx
 0040CDE7    push        eax
 0040CDE8    mov         eax,dword ptr [ebp-20]
 0040CDEB    mov         edx,dword ptr [ebp-1C]
 0040CDEE    call        @_llmul
 0040CDF3    mov         ecx,dword ptr [ebp+10]
 0040CDF6    mov         dword ptr [ecx],eax
 0040CDF8    mov         dword ptr [ecx+4],edx
 0040CDFB    mov         eax,dword ptr [ebp-4]
 0040CDFE    mov         esp,ebp
 0040CE00    pop         ebp
 0040CE01    ret         10
end;*}

//0040CE04
{*function sub_0040CE04(?:AnsiString):?;
begin
 0040CE04    push        ebp
 0040CE05    mov         ebp,esp
 0040CE07    add         esp,0FFFFFFF8
 0040CE0A    mov         dword ptr [ebp-4],eax
 0040CE0D    push        0
 0040CE0F    mov         eax,dword ptr [ebp-4]
 0040CE12    call        @LStrToPChar
 0040CE17    push        eax
 0040CE18    call        kernel32.CreateDirectoryA
 0040CE1D    cmp         eax,1
 0040CE20    sbb         eax,eax
 0040CE22    inc         eax
 0040CE23    mov         byte ptr [ebp-5],al
 0040CE26    mov         al,byte ptr [ebp-5]
 0040CE29    pop         ecx
 0040CE2A    pop         ecx
 0040CE2B    pop         ebp
 0040CE2C    ret
end;*}

//0040CE30
function StrLen(const Str:PChar):Cardinal;
begin
{*
 0040CE30    mov         edx,edi
 0040CE32    mov         edi,eax
 0040CE34    mov         ecx,0FFFFFFFF
 0040CE39    xor         al,al
 0040CE3B    repne scas  byte ptr [edi]
 0040CE3D    mov         eax,0FFFFFFFE
 0040CE42    sub         eax,ecx
 0040CE44    mov         edi,edx
 0040CE46    ret
*}
end;

//0040CE48
function StrEnd(const Str:PChar):PChar;
begin
{*
 0040CE48    mov         edx,edi
 0040CE4A    mov         edi,eax
 0040CE4C    mov         ecx,0FFFFFFFF
 0040CE51    xor         al,al
 0040CE53    repne scas  byte ptr [edi]
 0040CE55    lea         eax,[edi-1]
 0040CE58    mov         edi,edx
 0040CE5A    ret
*}
end;

//0040CE5C
{*function sub_0040CE5C(?:?; ?:?; ?:?):?;
begin
 0040CE5C    push        ebp
 0040CE5D    mov         ebp,esp
 0040CE5F    add         esp,0FFFFFFF0
 0040CE62    mov         dword ptr [ebp-0C],ecx
 0040CE65    mov         dword ptr [ebp-8],edx
 0040CE68    mov         dword ptr [ebp-4],eax
 0040CE6B    mov         eax,dword ptr [ebp-4]
 0040CE6E    mov         dword ptr [ebp-10],eax
 0040CE71    mov         edx,dword ptr [ebp-4]
 0040CE74    mov         eax,dword ptr [ebp-8]
 0040CE77    mov         ecx,dword ptr [ebp-0C]
 0040CE7A    call        Move
 0040CE7F    mov         eax,dword ptr [ebp-10]
 0040CE82    mov         esp,ebp
 0040CE84    pop         ebp
 0040CE85    ret
end;*}

//0040CE88
function StrCopy(Dest:PChar; const Source:PChar):PChar;
begin
{*
 0040CE88    push        edi
 0040CE89    push        esi
 0040CE8A    mov         esi,eax
 0040CE8C    mov         edi,edx
 0040CE8E    mov         ecx,0FFFFFFFF
 0040CE93    xor         al,al
 0040CE95    repne scas  byte ptr [edi]
 0040CE97    not         ecx
 0040CE99    mov         edi,esi
 0040CE9B    mov         esi,edx
 0040CE9D    mov         edx,ecx
 0040CE9F    mov         eax,edi
 0040CEA1    shr         ecx,2
 0040CEA4    rep movs    dword ptr [edi],dword ptr [esi]
 0040CEA6    mov         ecx,edx
 0040CEA8    and         ecx,3
 0040CEAB    rep movs    byte ptr [edi],byte ptr [esi]
 0040CEAD    pop         esi
 0040CEAE    pop         edi
 0040CEAF    ret
*}
end;

//0040CEB0
function StrLCopy(Dest:PChar; const Source:PChar; MaxLen:Cardinal):PChar;
begin
{*
 0040CEB0    push        edi
 0040CEB1    push        esi
 0040CEB2    push        ebx
 0040CEB3    mov         esi,eax
 0040CEB5    mov         edi,edx
 0040CEB7    mov         ebx,ecx
 0040CEB9    xor         al,al
 0040CEBB    test        ecx,ecx
>0040CEBD    je          0040CEC4
 0040CEBF    repne scas  byte ptr [edi]
>0040CEC1    jne         0040CEC4
 0040CEC3    inc         ecx
 0040CEC4    sub         ebx,ecx
 0040CEC6    mov         edi,esi
 0040CEC8    mov         esi,edx
 0040CECA    mov         edx,edi
 0040CECC    mov         ecx,ebx
 0040CECE    shr         ecx,2
 0040CED1    rep movs    dword ptr [edi],dword ptr [esi]
 0040CED3    mov         ecx,ebx
 0040CED5    and         ecx,3
 0040CED8    rep movs    byte ptr [edi],byte ptr [esi]
 0040CEDA    stos        byte ptr [edi]
 0040CEDB    mov         eax,edx
 0040CEDD    pop         ebx
 0040CEDE    pop         esi
 0040CEDF    pop         edi
 0040CEE0    ret
*}
end;

//0040CEE4
{*function sub_0040CEE4(?:?; ?:AnsiString):?;
begin
 0040CEE4    push        ebp
 0040CEE5    mov         ebp,esp
 0040CEE7    add         esp,0FFFFFFF4
 0040CEEA    mov         dword ptr [ebp-8],edx
 0040CEED    mov         dword ptr [ebp-4],eax
 0040CEF0    mov         eax,dword ptr [ebp-8]
 0040CEF3    call        @LStrLen
 0040CEF8    push        eax
 0040CEF9    mov         eax,dword ptr [ebp-8]
 0040CEFC    call        @LStrToPChar
 0040CF01    mov         edx,eax
 0040CF03    mov         eax,dword ptr [ebp-4]
 0040CF06    pop         ecx
 0040CF07    call        StrLCopy
 0040CF0C    mov         dword ptr [ebp-0C],eax
 0040CF0F    mov         eax,dword ptr [ebp-0C]
 0040CF12    mov         esp,ebp
 0040CF14    pop         ebp
 0040CF15    ret
end;*}

//0040CF18
{*function sub_0040CF18(?:?; ?:?; ?:Integer):?;
begin
 0040CF18    push        ebp
 0040CF19    mov         ebp,esp
 0040CF1B    add         esp,0FFFFFFF0
 0040CF1E    mov         dword ptr [ebp-0C],ecx
 0040CF21    mov         dword ptr [ebp-8],edx
 0040CF24    mov         dword ptr [ebp-4],eax
 0040CF27    mov         eax,dword ptr [ebp-8]
 0040CF2A    call        @LStrToPChar
 0040CF2F    mov         edx,eax
 0040CF31    mov         ecx,dword ptr [ebp-0C]
 0040CF34    mov         eax,dword ptr [ebp-4]
 0040CF37    call        StrLCopy
 0040CF3C    mov         dword ptr [ebp-10],eax
 0040CF3F    mov         eax,dword ptr [ebp-10]
 0040CF42    mov         esp,ebp
 0040CF44    pop         ebp
 0040CF45    ret
end;*}

//0040CF48
function StrComp(const Str1:PChar; const Str2:PChar):Integer;
begin
{*
 0040CF48    push        edi
 0040CF49    push        esi
 0040CF4A    mov         edi,edx
 0040CF4C    mov         esi,eax
 0040CF4E    mov         ecx,0FFFFFFFF
 0040CF53    xor         eax,eax
 0040CF55    repne scas  byte ptr [edi]
 0040CF57    not         ecx
 0040CF59    mov         edi,edx
 0040CF5B    xor         edx,edx
 0040CF5D    repe cmps   byte ptr [esi],byte ptr [edi]
 0040CF5F    mov         al,byte ptr [esi-1]
 0040CF62    mov         dl,byte ptr [edi-1]
 0040CF65    sub         eax,edx
 0040CF67    pop         esi
 0040CF68    pop         edi
 0040CF69    ret
*}
end;

//0040CF6C
function StrIComp(const Str1:PChar; const Str2:PChar):Integer;
begin
{*
 0040CF6C    push        edi
 0040CF6D    push        esi
 0040CF6E    mov         edi,edx
 0040CF70    mov         esi,eax
 0040CF72    mov         ecx,0FFFFFFFF
 0040CF77    xor         eax,eax
 0040CF79    repne scas  byte ptr [edi]
 0040CF7B    not         ecx
 0040CF7D    mov         edi,edx
 0040CF7F    xor         edx,edx
 0040CF81    repe cmps   byte ptr [esi],byte ptr [edi]
>0040CF83    je          0040CFA6
 0040CF85    mov         al,byte ptr [esi-1]
 0040CF88    cmp         al,61
>0040CF8A    jb          0040CF92
 0040CF8C    cmp         al,7A
>0040CF8E    ja          0040CF92
 0040CF90    sub         al,20
 0040CF92    mov         dl,byte ptr [edi-1]
 0040CF95    cmp         dl,61
>0040CF98    jb          0040CFA2
 0040CF9A    cmp         dl,7A
>0040CF9D    ja          0040CFA2
 0040CF9F    sub         dl,20
 0040CFA2    sub         eax,edx
>0040CFA4    je          0040CF81
 0040CFA6    pop         esi
 0040CFA7    pop         edi
 0040CFA8    ret
*}
end;

//0040CFAC
function StrLIComp(const Str1:PChar; const Str2:PChar; MaxLen:Cardinal):Integer;
begin
{*
 0040CFAC    push        edi
 0040CFAD    push        esi
 0040CFAE    push        ebx
 0040CFAF    mov         edi,edx
 0040CFB1    mov         esi,eax
 0040CFB3    mov         ebx,ecx
 0040CFB5    xor         eax,eax
 0040CFB7    or          ecx,ecx
>0040CFB9    je          0040CFEA
 0040CFBB    repne scas  byte ptr [edi]
 0040CFBD    sub         ebx,ecx
 0040CFBF    mov         ecx,ebx
 0040CFC1    mov         edi,edx
 0040CFC3    xor         edx,edx
 0040CFC5    repe cmps   byte ptr [esi],byte ptr [edi]
>0040CFC7    je          0040CFEA
 0040CFC9    mov         al,byte ptr [esi-1]
 0040CFCC    cmp         al,61
>0040CFCE    jb          0040CFD6
 0040CFD0    cmp         al,7A
>0040CFD2    ja          0040CFD6
 0040CFD4    sub         al,20
 0040CFD6    mov         dl,byte ptr [edi-1]
 0040CFD9    cmp         dl,61
>0040CFDC    jb          0040CFE6
 0040CFDE    cmp         dl,7A
>0040CFE1    ja          0040CFE6
 0040CFE3    sub         dl,20
 0040CFE6    sub         eax,edx
>0040CFE8    je          0040CFC5
 0040CFEA    pop         ebx
 0040CFEB    pop         esi
 0040CFEC    pop         edi
 0040CFED    ret
*}
end;

//0040CFF0
{*function sub_0040CFF0(?:PChar; ?:?):?;
begin
 0040CFF0    push        ebp
 0040CFF1    mov         ebp,esp
 0040CFF3    add         esp,0FFFFFFF4
 0040CFF6    mov         byte ptr [ebp-5],dl
 0040CFF9    mov         dword ptr [ebp-4],eax
 0040CFFC    mov         eax,dword ptr [ebp-4]
 0040CFFF    mov         dword ptr [ebp-0C],eax
>0040D002    jmp         0040D016
 0040D004    mov         eax,dword ptr [ebp-0C]
 0040D007    cmp         byte ptr [eax],0
>0040D00A    jne         0040D013
 0040D00C    xor         eax,eax
 0040D00E    mov         dword ptr [ebp-0C],eax
>0040D011    jmp         0040D020
 0040D013    inc         dword ptr [ebp-0C]
 0040D016    mov         eax,dword ptr [ebp-0C]
 0040D019    mov         al,byte ptr [eax]
 0040D01B    cmp         al,byte ptr [ebp-5]
>0040D01E    jne         0040D004
 0040D020    mov         eax,dword ptr [ebp-0C]
 0040D023    mov         esp,ebp
 0040D025    pop         ebp
 0040D026    ret
end;*}

//0040D028
function StrPos(const Str1:PChar; const Str2:PChar):PChar;
begin
{*
 0040D028    push        edi
 0040D029    push        esi
 0040D02A    push        ebx
 0040D02B    or          eax,eax
>0040D02D    je          0040D073
 0040D02F    or          edx,edx
>0040D031    je          0040D073
 0040D033    mov         ebx,eax
 0040D035    mov         edi,edx
 0040D037    xor         al,al
 0040D039    mov         ecx,0FFFFFFFF
 0040D03E    repne scas  byte ptr [edi]
 0040D040    not         ecx
 0040D042    dec         ecx
>0040D043    je          0040D073
 0040D045    mov         esi,ecx
 0040D047    mov         edi,ebx
 0040D049    mov         ecx,0FFFFFFFF
 0040D04E    repne scas  byte ptr [edi]
 0040D050    not         ecx
 0040D052    sub         ecx,esi
>0040D054    jbe         0040D073
 0040D056    mov         edi,ebx
 0040D058    lea         ebx,[esi-1]
 0040D05B    mov         esi,edx
 0040D05D    lods        byte ptr [esi]
 0040D05E    repne scas  byte ptr [edi]
>0040D060    jne         0040D073
 0040D062    mov         eax,ecx
 0040D064    push        edi
 0040D065    mov         ecx,ebx
 0040D067    repe cmps   byte ptr [esi],byte ptr [edi]
 0040D069    pop         edi
 0040D06A    mov         ecx,eax
>0040D06C    jne         0040D05B
 0040D06E    lea         eax,[edi-1]
>0040D071    jmp         0040D075
 0040D073    xor         eax,eax
 0040D075    pop         ebx
 0040D076    pop         esi
 0040D077    pop         edi
 0040D078    ret
*}
end;

//0040D07C
{*procedure sub_0040D07C(?:?; ?:AnsiString);
begin
 0040D07C    push        ebp
 0040D07D    mov         ebp,esp
 0040D07F    add         esp,0FFFFFFF8
 0040D082    mov         dword ptr [ebp-8],edx
 0040D085    mov         dword ptr [ebp-4],eax
 0040D088    mov         eax,dword ptr [ebp-8]
 0040D08B    mov         edx,dword ptr [ebp-4]
 0040D08E    call        @LStrFromPChar
 0040D093    pop         ecx
 0040D094    pop         ecx
 0040D095    pop         ebp
 0040D096    ret
end;*}

//0040D098
{*function sub_0040D098(?:?):?;
begin
 0040D098    push        ebp
 0040D099    mov         ebp,esp
 0040D09B    add         esp,0FFFFFFF8
 0040D09E    mov         dword ptr [ebp-4],eax
 0040D0A1    add         dword ptr [ebp-4],4
 0040D0A5    mov         eax,dword ptr [ebp-4]
 0040D0A8    call        @GetMem
 0040D0AD    mov         dword ptr [ebp-8],eax
 0040D0B0    mov         eax,dword ptr [ebp-8]
 0040D0B3    mov         edx,dword ptr [ebp-4]
 0040D0B6    mov         dword ptr [eax],edx
 0040D0B8    add         dword ptr [ebp-8],4
 0040D0BC    mov         eax,dword ptr [ebp-8]
 0040D0BF    pop         ecx
 0040D0C0    pop         ecx
 0040D0C1    pop         ebp
 0040D0C2    ret
end;*}

//0040D0C4
{*function sub_0040D0C4(?:PChar):?;
begin
 0040D0C4    push        ebp
 0040D0C5    mov         ebp,esp
 0040D0C7    add         esp,0FFFFFFF4
 0040D0CA    mov         dword ptr [ebp-4],eax
 0040D0CD    mov         eax,dword ptr [ebp-4]
 0040D0D0    mov         dword ptr [ebp-0C],eax
 0040D0D3    sub         dword ptr [ebp-0C],4
 0040D0D7    mov         eax,dword ptr [ebp-0C]
 0040D0DA    mov         eax,dword ptr [eax]
 0040D0DC    sub         eax,4
 0040D0DF    mov         dword ptr [ebp-8],eax
 0040D0E2    mov         eax,dword ptr [ebp-8]
 0040D0E5    mov         esp,ebp
 0040D0E7    pop         ebp
 0040D0E8    ret
end;*}

//0040D0EC
{*function sub_0040D0EC(?:PChar):?;
begin
 0040D0EC    push        ebp
 0040D0ED    mov         ebp,esp
 0040D0EF    add         esp,0FFFFFFF4
 0040D0F2    mov         dword ptr [ebp-4],eax
 0040D0F5    cmp         dword ptr [ebp-4],0
>0040D0F9    jne         0040D102
 0040D0FB    xor         eax,eax
 0040D0FD    mov         dword ptr [ebp-8],eax
>0040D100    jmp         0040D124
 0040D102    mov         eax,dword ptr [ebp-4]
 0040D105    call        StrLen
 0040D10A    inc         eax
 0040D10B    mov         dword ptr [ebp-0C],eax
 0040D10E    mov         eax,dword ptr [ebp-0C]
 0040D111    call        0040D098
 0040D116    mov         ecx,dword ptr [ebp-0C]
 0040D119    mov         edx,dword ptr [ebp-4]
 0040D11C    call        0040CE5C
 0040D121    mov         dword ptr [ebp-8],eax
 0040D124    mov         eax,dword ptr [ebp-8]
 0040D127    mov         esp,ebp
 0040D129    pop         ebp
 0040D12A    ret
end;*}

//0040D12C
{*procedure sub_0040D12C(?:?);
begin
 0040D12C    push        ebp
 0040D12D    mov         ebp,esp
 0040D12F    push        ecx
 0040D130    mov         dword ptr [ebp-4],eax
 0040D133    cmp         dword ptr [ebp-4],0
>0040D137    je          0040D14A
 0040D139    sub         dword ptr [ebp-4],4
 0040D13D    mov         eax,dword ptr [ebp-4]
 0040D140    mov         edx,dword ptr [eax]
 0040D142    mov         eax,dword ptr [ebp-4]
 0040D145    call        @FreeMem
 0040D14A    pop         ecx
 0040D14B    pop         ebp
 0040D14C    ret
end;*}

//0040D150
procedure FormatError(ErrorCode:Integer; Format:PChar; FmtLen:Cardinal);
begin
{*
 0040D150    push        ebp
 0040D151    mov         ebp,esp
 0040D153    add         esp,0FFFFFFCC
 0040D156    mov         dword ptr [ebp-0C],ecx
 0040D159    mov         dword ptr [ebp-8],edx
 0040D15C    mov         dword ptr [ebp-4],eax
 0040D15F    cmp         dword ptr [ebp-0C],1F
>0040D163    jbe         0040D16C
 0040D165    mov         dword ptr [ebp-0C],1F
 0040D16C    mov         edx,dword ptr [ebp-0C]
 0040D16F    dec         edx
 0040D170    mov         eax,dword ptr [ebp-8]
 0040D173    call        00411194
 0040D178    cmp         al,1
>0040D17A    jne         0040D17F
 0040D17C    dec         dword ptr [ebp-0C]
 0040D17F    lea         eax,[ebp-2C]
 0040D182    mov         ecx,dword ptr [ebp-0C]
 0040D185    mov         edx,dword ptr [ebp-8]
 0040D188    call        0040CE5C
 0040D18D    mov         eax,dword ptr [ebp-0C]
 0040D190    mov         byte ptr [ebp+eax-2C],0
 0040D195    lea         eax,[ebp-2C]
 0040D198    mov         dword ptr [ebp-34],eax
 0040D19B    mov         byte ptr [ebp-30],6
 0040D19F    lea         edx,[ebp-34]
 0040D1A2    mov         eax,dword ptr [ebp-4]
 0040D1A5    mov         eax,dword ptr [eax*4+56B874];^SInvalidFormat:TResStringRec
 0040D1AC    xor         ecx,ecx
 0040D1AE    call        0040BBDC
 0040D1B3    mov         esp,ebp
 0040D1B5    pop         ebp
 0040D1B6    ret
*}
end;

//0040D1B8
procedure FormatVarToStr(var S:AnsiString; const V:TVarData);
begin
{*
 0040D1B8    push        ebp
 0040D1B9    mov         ebp,esp
 0040D1BB    add         esp,0FFFFFFF8
 0040D1BE    push        ebx
 0040D1BF    mov         dword ptr [ebp-8],edx
 0040D1C2    mov         dword ptr [ebp-4],eax
 0040D1C5    mov         eax,[0056E5D8];^gvar_0056B018
 0040D1CA    cmp         dword ptr [eax],0
>0040D1CD    je          0040D1E1
 0040D1CF    mov         ebx,dword ptr ds:[56E5D8];^gvar_0056B018
 0040D1D5    mov         ebx,dword ptr [ebx]
 0040D1D7    mov         edx,dword ptr [ebp-8]
 0040D1DA    mov         eax,dword ptr [ebp-4]
 0040D1DD    call        ebx
>0040D1DF    jmp         0040D1E8
 0040D1E1    mov         al,10
 0040D1E3    call        Error
 0040D1E8    pop         ebx
 0040D1E9    pop         ecx
 0040D1EA    pop         ecx
 0040D1EB    pop         ebp
 0040D1EC    ret
*}
end;

//0040D1F0
procedure FormatClearStr(var S:AnsiString);
begin
{*
 0040D1F0    push        ebp
 0040D1F1    mov         ebp,esp
 0040D1F3    push        ecx
 0040D1F4    mov         dword ptr [ebp-4],eax
 0040D1F7    mov         eax,dword ptr [ebp-4]
 0040D1FA    call        @LStrClr
 0040D1FF    pop         ecx
 0040D200    pop         ebp
 0040D201    ret
*}
end;

//0040D204
function FormatBuf(var Buffer:void ; BufLen:Cardinal; const Format:void ; FmtLen:Cardinal; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):Cardinal;
begin
{*
 0040D204    push        ebp
 0040D205    mov         ebp,esp
 0040D207    add         esp,0FFFFFF94
 0040D20A    push        ebx
 0040D20B    xor         ebx,ebx
 0040D20D    mov         dword ptr [ebp-14],ebx
 0040D210    push        ebx
 0040D211    push        esi
 0040D212    push        edi
 0040D213    mov         edi,eax
 0040D215    mov         esi,ecx
 0040D217    xor         eax,eax
 0040D219    mov         dword ptr [ebp-4],eax
 0040D21C    add         ecx,dword ptr [ebp+10]
 0040D21F    mov         dword ptr [ebp-8],edi
 0040D222    xor         eax,eax
 0040D224    mov         dword ptr [ebp-0C],eax
 0040D227    mov         dword ptr [ebp-10],eax
 0040D22A    mov         dword ptr [ebp-14],eax
 0040D22D    or          edx,edx
>0040D22F    je          0040D23E
 0040D231    cmp         esi,ecx
>0040D233    je          0040D23E
 0040D235    lods        byte ptr [esi]
 0040D236    cmp         al,25
>0040D238    je          0040D248
 0040D23A    stos        byte ptr [edi]
 0040D23B    dec         edx
>0040D23C    jne         0040D231
 0040D23E    mov         eax,edi
 0040D240    sub         eax,dword ptr [ebp-8]
>0040D243    jmp         0040D56B
 0040D248    cmp         esi,ecx
>0040D24A    je          0040D23E
 0040D24C    lods        byte ptr [esi]
 0040D24D    cmp         al,25
>0040D24F    je          0040D23A
 0040D251    lea         ebx,[esi-2]
 0040D254    mov         dword ptr [ebp-18],ebx
 0040D257    mov         byte ptr [ebp-19],al
 0040D25A    cmp         al,2D
>0040D25C    jne         0040D263
 0040D25E    cmp         esi,ecx
>0040D260    je          0040D23E
 0040D262    lods        byte ptr [esi]
 0040D263    call        0040D2E6
 0040D268    cmp         al,3A
>0040D26A    jne         0040D276
 0040D26C    mov         dword ptr [ebp-0C],ebx
 0040D26F    cmp         esi,ecx
>0040D271    je          0040D23E
 0040D273    lods        byte ptr [esi]
>0040D274    jmp         0040D257
 0040D276    mov         dword ptr [ebp-20],ebx
 0040D279    mov         ebx,0FFFFFFFF
 0040D27E    cmp         al,2E
>0040D280    jne         0040D28C
 0040D282    cmp         esi,ecx
>0040D284    je          0040D23E
 0040D286    lods        byte ptr [esi]
 0040D287    call        0040D2E6
 0040D28C    mov         dword ptr [ebp-24],ebx
 0040D28F    mov         dword ptr [ebp-28],esi
 0040D292    push        ecx
 0040D293    push        edx
 0040D294    call        0040D32E
 0040D299    pop         edx
 0040D29A    mov         ebx,dword ptr [ebp-20]
 0040D29D    sub         ebx,ecx
>0040D29F    jae         0040D2A3
 0040D2A1    xor         ebx,ebx
 0040D2A3    cmp         byte ptr [ebp-19],2D
>0040D2A7    jne         0040D2B3
 0040D2A9    sub         edx,ecx
>0040D2AB    jae         0040D2B1
 0040D2AD    add         ecx,edx
 0040D2AF    xor         edx,edx
 0040D2B1    rep movs    byte ptr [edi],byte ptr [esi]
 0040D2B3    xchg        ebx,ecx
 0040D2B5    sub         edx,ecx
>0040D2B7    jae         0040D2BD
 0040D2B9    add         ecx,edx
 0040D2BB    xor         edx,edx
 0040D2BD    mov         al,20
 0040D2BF    rep stos    byte ptr [edi]
 0040D2C1    xchg        ebx,ecx
 0040D2C3    sub         edx,ecx
>0040D2C5    jae         0040D2CB
 0040D2C7    add         ecx,edx
 0040D2C9    xor         edx,edx
 0040D2CB    rep movs    byte ptr [edi],byte ptr [esi]
 0040D2CD    cmp         dword ptr [ebp-10],0
>0040D2D1    je          0040D2DD
 0040D2D3    push        edx
 0040D2D4    lea         eax,[ebp-10]
 0040D2D7    call        FormatClearStr
 0040D2DC    pop         edx
 0040D2DD    pop         ecx
 0040D2DE    mov         esi,dword ptr [ebp-28]
>0040D2E1    jmp         0040D22D
 0040D2E6    xor         ebx,ebx
 0040D2E8    cmp         al,2A
>0040D2EA    je          0040D30E
 0040D2EC    cmp         al,30
>0040D2EE    jb          0040D32D
 0040D2F0    cmp         al,39
>0040D2F2    ja          0040D32D
 0040D2F4    imul        ebx,ebx,0A
 0040D2FA    sub         al,30
 0040D2FC    movzx       eax,al
 0040D2FF    add         ebx,eax
 0040D301    cmp         esi,ecx
>0040D303    je          0040D308
 0040D305    lods        byte ptr [esi]
>0040D306    jmp         0040D2EC
 0040D308    pop         eax
>0040D309    jmp         0040D23E
 0040D30E    mov         eax,dword ptr [ebp-0C]
 0040D311    cmp         eax,dword ptr [ebp+8]
>0040D314    jg          0040D328
 0040D316    inc         dword ptr [ebp-0C]
 0040D319    mov         ebx,dword ptr [ebp+0C]
 0040D31C    cmp         byte ptr [ebx+eax*8+4],0
 0040D321    mov         ebx,dword ptr [ebx+eax*8]
>0040D324    je          0040D328
 0040D326    xor         ebx,ebx
 0040D328    cmp         esi,ecx
>0040D32A    je          0040D308
 0040D32C    lods        byte ptr [esi]
 0040D32D    ret
*}
end;

//0040D57C
{*function sub_0040D57C(?:?; ?:?; ?:LongWord; ?:?):?;
begin
 0040D57C    push        ebp
 0040D57D    mov         ebp,esp
 0040D57F    add         esp,0FFFFFFF0
 0040D582    mov         dword ptr [ebp-0C],ecx
 0040D585    mov         dword ptr [ebp-8],edx
 0040D588    mov         dword ptr [ebp-4],eax
 0040D58B    cmp         dword ptr [ebp-4],0
>0040D58F    je          0040D5C7
 0040D591    cmp         dword ptr [ebp-8],0
>0040D595    je          0040D5C7
 0040D597    mov         eax,dword ptr [ebp-8]
 0040D59A    call        StrLen
 0040D59F    push        eax
 0040D5A0    mov         eax,dword ptr [ebp-0C]
 0040D5A3    push        eax
 0040D5A4    mov         eax,dword ptr [ebp+8]
 0040D5A7    push        eax
 0040D5A8    mov         ecx,dword ptr [ebp-8]
 0040D5AB    mov         eax,dword ptr [ebp-4]
 0040D5AE    mov         edx,7FFFFFFF
 0040D5B3    call        FormatBuf
 0040D5B8    mov         edx,dword ptr [ebp-4]
 0040D5BB    mov         byte ptr [edx+eax],0
 0040D5BF    mov         eax,dword ptr [ebp-4]
 0040D5C2    mov         dword ptr [ebp-10],eax
>0040D5C5    jmp         0040D5CC
 0040D5C7    xor         eax,eax
 0040D5C9    mov         dword ptr [ebp-10],eax
 0040D5CC    mov         eax,dword ptr [ebp-10]
 0040D5CF    mov         esp,ebp
 0040D5D1    pop         ebp
 0040D5D2    ret         4
end;*}

//0040D5D8
{*function sub_0040D5D8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0040D5D8    push        ebp
 0040D5D9    mov         ebp,esp
 0040D5DB    add         esp,0FFFFFFF0
 0040D5DE    mov         dword ptr [ebp-0C],ecx
 0040D5E1    mov         dword ptr [ebp-8],edx
 0040D5E4    mov         dword ptr [ebp-4],eax
 0040D5E7    cmp         dword ptr [ebp-4],0
>0040D5EB    je          0040D621
 0040D5ED    cmp         dword ptr [ebp-0C],0
>0040D5F1    je          0040D621
 0040D5F3    mov         eax,dword ptr [ebp-0C]
 0040D5F6    call        StrLen
 0040D5FB    push        eax
 0040D5FC    mov         eax,dword ptr [ebp+0C]
 0040D5FF    push        eax
 0040D600    mov         eax,dword ptr [ebp+8]
 0040D603    push        eax
 0040D604    mov         ecx,dword ptr [ebp-0C]
 0040D607    mov         eax,dword ptr [ebp-4]
 0040D60A    mov         edx,dword ptr [ebp-8]
 0040D60D    call        FormatBuf
 0040D612    mov         edx,dword ptr [ebp-4]
 0040D615    mov         byte ptr [edx+eax],0
 0040D619    mov         eax,dword ptr [ebp-4]
 0040D61C    mov         dword ptr [ebp-10],eax
>0040D61F    jmp         0040D626
 0040D621    xor         eax,eax
 0040D623    mov         dword ptr [ebp-10],eax
 0040D626    mov         eax,dword ptr [ebp-10]
 0040D629    mov         esp,ebp
 0040D62B    pop         ebp
 0040D62C    ret         8
end;*}

//0040D630
{*procedure sub_0040D630(?:AnsiString; ?:Pointer; ?:?; ?:?);
begin
 0040D630    push        ebp
 0040D631    mov         ebp,esp
 0040D633    add         esp,0FFFFFFF4
 0040D636    mov         dword ptr [ebp-0C],ecx
 0040D639    mov         dword ptr [ebp-8],edx
 0040D63C    mov         dword ptr [ebp-4],eax
 0040D63F    mov         eax,dword ptr [ebp-0C]
 0040D642    push        eax
 0040D643    mov         ecx,dword ptr [ebp-8]
 0040D646    mov         eax,dword ptr [ebp+8]
 0040D649    mov         edx,dword ptr [ebp-4]
 0040D64C    call        0040D658
 0040D651    mov         esp,ebp
 0040D653    pop         ebp
 0040D654    ret         4
end;*}

//0040D658
{*procedure sub_0040D658(?:AnsiString; ?:?; ?:?; ?:?);
begin
 0040D658    push        ebp
 0040D659    mov         ebp,esp
 0040D65B    add         esp,0FFFFF004
 0040D661    push        eax
 0040D662    add         esp,0FFFFFFEC
 0040D665    mov         dword ptr [ebp-0C],ecx
 0040D668    mov         dword ptr [ebp-8],edx
 0040D66B    mov         dword ptr [ebp-4],eax
 0040D66E    mov         dword ptr [ebp-14],1000
 0040D675    mov         eax,dword ptr [ebp-8]
 0040D678    call        @LStrLen
 0040D67D    cmp         eax,0C00
>0040D682    jge         0040D6AD
 0040D684    mov         eax,dword ptr [ebp-8]
 0040D687    call        @LStrLen
 0040D68C    push        eax
 0040D68D    mov         eax,dword ptr [ebp-0C]
 0040D690    push        eax
 0040D691    mov         eax,dword ptr [ebp+8]
 0040D694    push        eax
 0040D695    mov         ecx,dword ptr [ebp-8]
 0040D698    lea         eax,[ebp-1014]
 0040D69E    mov         edx,0FFF
 0040D6A3    call        FormatBuf
 0040D6A8    mov         dword ptr [ebp-10],eax
>0040D6AB    jmp         0040D6BE
 0040D6AD    mov         eax,dword ptr [ebp-8]
 0040D6B0    call        @LStrLen
 0040D6B5    mov         dword ptr [ebp-14],eax
 0040D6B8    mov         eax,dword ptr [ebp-14]
 0040D6BB    mov         dword ptr [ebp-10],eax
 0040D6BE    mov         eax,dword ptr [ebp-14]
 0040D6C1    dec         eax
 0040D6C2    cmp         eax,dword ptr [ebp-10]
>0040D6C5    jg          0040D71D
>0040D6C7    jmp         0040D707
 0040D6C9    mov         eax,dword ptr [ebp-14]
 0040D6CC    add         dword ptr [ebp-14],eax
 0040D6CF    mov         eax,dword ptr [ebp-4]
 0040D6D2    call        @LStrClr
 0040D6D7    mov         eax,dword ptr [ebp-4]
 0040D6DA    mov         edx,dword ptr [ebp-14]
 0040D6DD    call        @LStrSetLength
 0040D6E2    mov         eax,dword ptr [ebp-8]
 0040D6E5    call        @LStrLen
 0040D6EA    push        eax
 0040D6EB    mov         eax,dword ptr [ebp-0C]
 0040D6EE    push        eax
 0040D6EF    mov         eax,dword ptr [ebp+8]
 0040D6F2    push        eax
 0040D6F3    mov         ecx,dword ptr [ebp-8]
 0040D6F6    mov         edx,dword ptr [ebp-14]
 0040D6F9    dec         edx
 0040D6FA    mov         eax,dword ptr [ebp-4]
 0040D6FD    mov         eax,dword ptr [eax]
 0040D6FF    call        FormatBuf
 0040D704    mov         dword ptr [ebp-10],eax
 0040D707    mov         eax,dword ptr [ebp-14]
 0040D70A    dec         eax
 0040D70B    cmp         eax,dword ptr [ebp-10]
>0040D70E    jle         0040D6C9
 0040D710    mov         eax,dword ptr [ebp-4]
 0040D713    mov         edx,dword ptr [ebp-10]
 0040D716    call        @LStrSetLength
>0040D71B    jmp         0040D72E
 0040D71D    lea         edx,[ebp-1014]
 0040D723    mov         eax,dword ptr [ebp-4]
 0040D726    mov         ecx,dword ptr [ebp-10]
 0040D729    call        @LStrFromPCharLen
 0040D72E    mov         esp,ebp
 0040D730    pop         ebp
 0040D731    ret         4
end;*}

//0040D734
procedure PutExponent;
begin
{*
 0040D734    push        esi
 0040D735    xor         esi,esi
 0040D737    stos        byte ptr [edi]
 0040D738    or          bl,bl
>0040D73A    jne         0040D740
 0040D73C    xor         edx,edx
>0040D73E    jmp         0040D74A
 0040D740    or          edx,edx
>0040D742    jge         0040D74A
 0040D744    mov         al,2D
 0040D746    neg         edx
>0040D748    jmp         0040D750
 0040D74A    or          ah,ah
>0040D74C    je          0040D751
 0040D74E    mov         al,ah
 0040D750    stos        byte ptr [edi]
 0040D751    xchg        eax,edx
 0040D752    push        eax
 0040D753    mov         ebx,esp
 0040D755    xor         edx,edx
 0040D757    div         eax,dword ptr [esi+56B888]
 0040D75D    add         dl,30
 0040D760    mov         byte ptr [ebx],dl
 0040D762    inc         ebx
 0040D763    dec         ecx
 0040D764    or          eax,eax
>0040D766    jne         0040D755
 0040D768    or          ecx,ecx
>0040D76A    jg          0040D755
 0040D76C    dec         ebx
 0040D76D    mov         al,byte ptr [ebx]
 0040D76F    stos        byte ptr [edi]
 0040D770    cmp         ebx,esp
>0040D772    jne         0040D76C
 0040D774    pop         eax
 0040D775    pop         esi
 0040D776    ret
*}
end;

//0040D778
function FloatToText(BufferArg:PChar; const Value:void ; ValueType:TFloatValue; Format:TFloatFormat; Precision:Integer; Digits:Integer):Integer;
begin
{*
 0040D778    push        ebp
 0040D779    mov         ebp,esp
 0040D77B    add         esp,0FFFFFFD4
 0040D77E    push        edi
 0040D77F    push        esi
 0040D780    push        ebx
 0040D781    mov         dword ptr [ebp-4],eax
 0040D784    mov         al,[005718B3];DecimalSeparator:Char
 0040D789    mov         byte ptr [ebp-5],al
 0040D78C    mov         al,[005718B2];ThousandSeparator:Char
 0040D791    mov         byte ptr [ebp-6],al
 0040D794    mov         eax,[005718AC];CurrencyString:AnsiString
 0040D799    mov         dword ptr [ebp-0C],eax
 0040D79C    mov         al,[005718B0];CurrencyFormat:Byte
 0040D7A1    mov         byte ptr [ebp-0D],al
 0040D7A4    mov         al,[005718B1];NegCurrFormat:Byte
 0040D7A9    mov         byte ptr [ebp-0E],al
 0040D7AC    mov         dword ptr [ebp-14],0
 0040D7B3    mov         eax,13
 0040D7B8    cmp         cl,0
>0040D7BB    jne         0040D7D4
 0040D7BD    mov         eax,dword ptr [ebp+0C]
 0040D7C0    cmp         eax,2
>0040D7C3    jge         0040D7CA
 0040D7C5    mov         eax,2
 0040D7CA    cmp         eax,12
>0040D7CD    jle         0040D7D4
 0040D7CF    mov         eax,12
 0040D7D4    mov         dword ptr [ebp+0C],eax
 0040D7D7    push        eax
 0040D7D8    mov         eax,270F
 0040D7DD    cmp         byte ptr [ebp+10],2
>0040D7E1    jb          0040D7E6
 0040D7E3    mov         eax,dword ptr [ebp+8]
 0040D7E6    push        eax
 0040D7E7    lea         eax,[ebp-2C]
 0040D7EA    call        FloatToDecimal
 0040D7EF    mov         edi,dword ptr [ebp-4]
 0040D7F2    movzx       eax,word ptr [ebp-2C]
 0040D7F6    sub         eax,7FFF
 0040D7FB    cmp         eax,2
>0040D7FE    jae         0040D81A
 0040D800    mov         ecx,eax
 0040D802    call        0040D877
 0040D807    lea         esi,[ecx+ecx*2+40D868]
 0040D80E    add         esi,dword ptr [ebp-14]
 0040D811    mov         ecx,3
 0040D816    rep movs    byte ptr [edi],byte ptr [esi]
>0040D818    jmp         0040D847
 0040D81A    lea         esi,[ebp-29]
 0040D81D    movzx       ebx,byte ptr [ebp+10]
 0040D821    cmp         bl,1
>0040D824    je          0040D836
 0040D826    cmp         bl,4
>0040D829    ja          0040D834
 0040D82B    movsx       eax,word ptr [ebp-2C]
 0040D82F    cmp         eax,dword ptr [ebp+0C]
>0040D832    jle         0040D836
 0040D834    mov         bl,0
 0040D836    lea         ebx,[ebx*4+40D854]
 0040D83D    add         ebx,dword ptr [ebp-14]
 0040D840    mov         ebx,dword ptr [ebx]
 0040D842    add         ebx,dword ptr [ebp-14]
 0040D845    call        ebx
 0040D847    mov         eax,edi
 0040D849    sub         eax,dword ptr [ebp-4]
 0040D84C    pop         ebx
 0040D84D    pop         esi
 0040D84E    pop         edi
>0040D84F    jmp         0040DA45
 0040D854    sbb         eax,0D8DD0040
 0040D85A    inc         eax
 0040D85B    add         byte ptr [ecx+ebx*8],dl
 0040D85E    inc         eax
 0040D85F    add         byte ptr [ecx+ebx*8],dl
 0040D862    inc         eax
 0040D863    add         byte ptr [esi-27],bh
 0040D866    inc         eax
 0040D867    add         byte ptr [ecx+4E],cl
 0040D86A    inc         esi
 0040D86B    dec         esi
 0040D86C    inc         ecx
 0040D86D    dec         esi
 0040D86E    lods        byte ptr [esi]
 0040D86F    or          al,al
>0040D871    jne         0040D876
 0040D873    mov         al,30
 0040D875    dec         esi
 0040D876    ret
*}
end;

//0040DA4C
procedure FloatToDecimal(var Result:TFloatRec; const Value:void ; ValueType:TFloatValue; Precision:Integer; Decimals:Integer);
begin
{*
 0040DA4C    push        ebp
 0040DA4D    mov         ebp,esp
 0040DA4F    add         esp,0FFFFFFE0
 0040DA52    push        edi
 0040DA53    push        esi
 0040DA54    push        ebx
 0040DA55    mov         ebx,eax
 0040DA57    mov         esi,edx
 0040DA59    mov         dword ptr [ebp-4],0
 0040DA60    cmp         cl,0
>0040DA63    je          0040DA6F
 0040DA65    call        0040DB9B
>0040DA6A    jmp         0040DC6F
 0040DA6F    call        0040DA79
>0040DA74    jmp         0040DC6F
 0040DA79    mov         ax,word ptr [esi+8]
 0040DA7D    mov         edx,eax
 0040DA7F    and         eax,7FFF
>0040DA84    je          0040DAA4
 0040DA86    cmp         eax,7FFF
>0040DA8B    jne         0040DAAF
 0040DA8D    test        word ptr [esi+6],8000
>0040DA93    je          0040DAA6
 0040DA95    cmp         dword ptr [esi],0
>0040DA98    jne         0040DAA3
 0040DA9A    cmp         dword ptr [esi+4],80000000
>0040DAA1    je          0040DAA6
 0040DAA3    inc         eax
 0040DAA4    xor         edx,edx
 0040DAA6    mov         byte ptr [ebx+3],0
>0040DAAA    jmp         0040DB7C
 0040DAAF    fld         tbyte ptr [esi]
 0040DAB1    sub         eax,3FFF
 0040DAB6    imul        eax,eax,4D10
 0040DABC    sar         eax,10
 0040DABF    inc         eax
 0040DAC0    mov         dword ptr [ebp-8],eax
 0040DAC3    mov         eax,12
 0040DAC8    sub         eax,dword ptr [ebp-8]
 0040DACB    fabs
 0040DACD    push        ebx
 0040DACE    mov         ebx,dword ptr [ebp-4]
 0040DAD1    call        FPower10
 0040DAD6    pop         ebx
 0040DAD7    frndint
 0040DAD9    mov         edi,dword ptr [ebp-4]
 0040DADC    fld         tbyte ptr [edi+56B87C]
 0040DAE2    fcomp       st(1)
 0040DAE4    wait
 0040DAE5    fnstsw      word ptr [ebp-0A]
 0040DAE8    wait
 0040DAE9    test        word ptr [ebp-0A],4100
>0040DAEF    je          0040DAFA
 0040DAF1    fidiv       dword ptr [edi+56B888]
 0040DAF7    inc         dword ptr [ebp-8]
 0040DAFA    fbstp       tbyte ptr [ebp-18]
 0040DAFD    lea         edi,[ebx+3]
 0040DB00    mov         edx,9
 0040DB05    wait
 0040DB06    mov         al,byte ptr [edx+ebp-19]
 0040DB0A    mov         ah,al
 0040DB0C    shr         al,4
 0040DB0F    and         ah,0F
 0040DB12    add         ax,3030
 0040DB16    stos        word ptr [edi]
 0040DB18    dec         edx
>0040DB19    jne         0040DB06
 0040DB1B    xor         al,al
 0040DB1D    stos        byte ptr [edi]
 0040DB1E    mov         edi,dword ptr [ebp-8]
 0040DB21    add         edi,dword ptr [ebp+8]
>0040DB24    jns         0040DB2D
 0040DB26    xor         eax,eax
>0040DB28    jmp         0040DAA4
 0040DB2D    cmp         edi,dword ptr [ebp+0C]
>0040DB30    jb          0040DB35
 0040DB32    mov         edi,dword ptr [ebp+0C]
 0040DB35    cmp         edi,12
>0040DB38    jae         0040DB61
 0040DB3A    cmp         byte ptr [ebx+edi+3],35
>0040DB3F    jb          0040DB66
 0040DB41    mov         byte ptr [ebx+edi+3],0
 0040DB46    dec         edi
>0040DB47    js          0040DB56
 0040DB49    inc         byte ptr [ebx+edi+3]
 0040DB4D    cmp         byte ptr [ebx+edi+3],39
>0040DB52    ja          0040DB41
>0040DB54    jmp         0040DB75
 0040DB56    mov         word ptr [ebx+3],31
 0040DB5C    inc         dword ptr [ebp-8]
>0040DB5F    jmp         0040DB75
 0040DB61    mov         edi,12
 0040DB66    mov         byte ptr [ebx+edi+3],0
 0040DB6B    dec         edi
>0040DB6C    js          0040DB87
 0040DB6E    cmp         byte ptr [ebx+edi+3],30
>0040DB73    je          0040DB66
 0040DB75    mov         dx,word ptr [esi+8]
 0040DB79    mov         eax,dword ptr [ebp-8]
 0040DB7C    shr         dx,0F
 0040DB80    mov         word ptr [ebx],ax
 0040DB83    mov         byte ptr [ebx+2],dl
 0040DB86    ret
 0040DB87    xor         edx,edx
>0040DB89    jmp         0040DB79
 0040DB8B    or          al,byte ptr [eax]
 0040DB8D    add         byte ptr [eax],al
 0040DB8F    add         byte ptr fs:[eax],al
 0040DB92    add         al,ch
 0040DB94    add         eax,dword ptr [eax]
 0040DB96    add         byte ptr [eax],dl
 0040DB98    daa
 0040DB99    add         byte ptr [eax],al
 0040DB9B    mov         eax,dword ptr [esi]
 0040DB9D    mov         edx,dword ptr [esi+4]
 0040DBA0    mov         ecx,eax
 0040DBA2    or          ecx,edx
>0040DBA4    je          0040DC61
 0040DBAA    or          edx,edx
>0040DBAC    jns         0040DBB5
 0040DBAE    neg         edx
 0040DBB0    neg         eax
 0040DBB2    sbb         edx,0
 0040DBB5    xor         ecx,ecx
 0040DBB7    mov         edi,dword ptr [ebp+8]
 0040DBBA    or          edi,edi
>0040DBBC    jge         0040DBC0
 0040DBBE    xor         edi,edi
 0040DBC0    cmp         edi,4
>0040DBC3    jl          0040DBE4
 0040DBC5    mov         edi,4
 0040DBCA    inc         ecx
 0040DBCB    sub         eax,0A7640000
 0040DBD0    sbb         edx,0DE0B6B3
>0040DBD6    jae         0040DBCA
 0040DBD8    dec         ecx
 0040DBD9    add         eax,0A7640000
 0040DBDE    adc         edx,0DE0B6B3
 0040DBE4    mov         dword ptr [ebp-20],eax
 0040DBE7    mov         dword ptr [ebp-1C],edx
 0040DBEA    fild        qword ptr [ebp-20]
 0040DBED    mov         edx,edi
 0040DBEF    mov         eax,4
 0040DBF4    sub         eax,edx
>0040DBF6    je          0040DC02
 0040DBF8    mov         edi,dword ptr [ebp-4]
 0040DBFB    fidiv       dword ptr [edi+eax*4+40DB87]
 0040DC02    fbstp       tbyte ptr [ebp-18]
 0040DC05    lea         edi,[ebx+3]
 0040DC08    wait
 0040DC09    or          ecx,ecx
>0040DC0B    jne         0040DC28
 0040DC0D    mov         ecx,9
 0040DC12    mov         al,byte ptr [ecx+ebp-19]
 0040DC16    mov         ah,al
 0040DC18    shr         al,4
>0040DC1B    jne         0040DC3B
 0040DC1D    mov         al,ah
 0040DC1F    and         al,0F
>0040DC21    jne         0040DC42
 0040DC23    dec         ecx
>0040DC24    jne         0040DC12
>0040DC26    jmp         0040DC61
 0040DC28    mov         al,cl
 0040DC2A    add         al,30
 0040DC2C    stos        byte ptr [edi]
 0040DC2D    mov         ecx,9
 0040DC32    mov         al,byte ptr [ecx+ebp-19]
 0040DC36    mov         ah,al
 0040DC38    shr         al,4
 0040DC3B    add         al,30
 0040DC3D    stos        byte ptr [edi]
 0040DC3E    mov         al,ah
 0040DC40    and         al,0F
 0040DC42    add         al,30
 0040DC44    stos        byte ptr [edi]
 0040DC45    dec         ecx
>0040DC46    jne         0040DC32
 0040DC48    mov         eax,edi
 0040DC4A    lea         ecx,[ebx+edx+3]
 0040DC4E    sub         eax,ecx
 0040DC50    mov         byte ptr [edi],0
 0040DC53    dec         edi
 0040DC54    cmp         byte ptr [edi],30
>0040DC57    je          0040DC50
 0040DC59    mov         edx,dword ptr [esi+4]
 0040DC5C    shr         edx,1F
>0040DC5F    jmp         0040DC68
 0040DC61    xor         eax,eax
 0040DC63    xor         edx,edx
 0040DC65    mov         byte ptr [ebx+3],al
 0040DC68    mov         word ptr [ebx],ax
 0040DC6B    mov         byte ptr [ebx+2],dl
 0040DC6E    ret
*}
end;

//0040DC78
function TextToFloat(Buffer:PChar; var Value:void ; ValueType:TFloatValue):Boolean;
begin
{*
 0040DC78    push        ebp
 0040DC79    mov         ebp,esp
 0040DC7B    add         esp,0FFFFFFF4
 0040DC7E    push        edi
 0040DC7F    push        esi
 0040DC80    push        ebx
 0040DC81    mov         esi,eax
 0040DC83    mov         edi,edx
 0040DC85    mov         dword ptr [ebp-4],0
 0040DC8C    mov         al,[005718B3];DecimalSeparator:Char
 0040DC91    mov         byte ptr [ebp-5],al
 0040DC94    mov         ebx,ecx
 0040DC96    wait
 0040DC97    fnstcw      word ptr [ebp-8]
 0040DC9A    wait
 0040DC9B    fnclex
 0040DC9D    fldcw       word ptr ds:[56B88C]
 0040DCA3    fldz
 0040DCA5    call        0040DD2F
 0040DCAA    mov         bh,byte ptr [esi]
 0040DCAC    cmp         bh,2B
>0040DCAF    je          0040DCB6
 0040DCB1    cmp         bh,2D
>0040DCB4    jne         0040DCB7
 0040DCB6    inc         esi
 0040DCB7    mov         ecx,esi
 0040DCB9    call        0040DD3A
 0040DCBE    xor         edx,edx
 0040DCC0    mov         al,byte ptr [esi]
 0040DCC2    cmp         al,byte ptr [ebp-5]
>0040DCC5    jne         0040DCCF
 0040DCC7    inc         esi
 0040DCC8    call        0040DD3A
 0040DCCD    neg         edx
 0040DCCF    cmp         ecx,esi
>0040DCD1    je          0040DD22
 0040DCD3    mov         al,byte ptr [esi]
 0040DCD5    and         al,0DF
 0040DCD7    cmp         al,45
>0040DCD9    jne         0040DCE5
 0040DCDB    inc         esi
 0040DCDC    push        edx
 0040DCDD    call        0040DD56
 0040DCE2    pop         eax
 0040DCE3    add         edx,eax
 0040DCE5    call        0040DD2F
 0040DCEA    cmp         byte ptr [esi],0
>0040DCED    jne         0040DD22
 0040DCEF    mov         eax,edx
 0040DCF1    cmp         bl,1
>0040DCF4    jne         0040DCF9
 0040DCF6    add         eax,4
 0040DCF9    push        ebx
 0040DCFA    mov         ebx,dword ptr [ebp-4]
 0040DCFD    call        FPower10
 0040DD02    pop         ebx
 0040DD03    cmp         bh,2D
>0040DD06    jne         0040DD0A
 0040DD08    fchs
 0040DD0A    cmp         bl,0
>0040DD0D    je          0040DD13
 0040DD0F    fistp       qword ptr [edi]
>0040DD11    jmp         0040DD15
 0040DD13    fstp        tbyte ptr [edi]
 0040DD15    wait
 0040DD16    fnstsw      al
 0040DD18    test        ax,9
>0040DD1C    jne         0040DD24
 0040DD1E    mov         al,1
>0040DD20    jmp         0040DD26
 0040DD22    fstp        st(0)
 0040DD24    xor         eax,eax
 0040DD26    wait
 0040DD27    fnclex
 0040DD29    fldcw       word ptr [ebp-8]
 0040DD2C    wait
>0040DD2D    jmp         0040DD85
 0040DD2F    lods        byte ptr [esi]
 0040DD30    or          al,al
>0040DD32    je          0040DD38
 0040DD34    cmp         al,20
>0040DD36    je          0040DD2F
 0040DD38    dec         esi
 0040DD39    ret
 0040DD3A    xor         eax,eax
 0040DD3C    xor         edx,edx
 0040DD3E    lods        byte ptr [esi]
 0040DD3F    sub         al,3A
 0040DD41    add         al,0A
>0040DD43    jae         0040DD54
 0040DD45    fimul       dword ptr ds:[56B888]
 0040DD4B    mov         dword ptr [ebp-0C],eax
 0040DD4E    fiadd       dword ptr [ebp-0C]
 0040DD51    inc         edx
>0040DD52    jmp         0040DD3E
 0040DD54    dec         esi
 0040DD55    ret
 0040DD56    xor         eax,eax
 0040DD58    xor         edx,edx
 0040DD5A    mov         cl,byte ptr [esi]
 0040DD5C    cmp         cl,2B
>0040DD5F    je          0040DD66
 0040DD61    cmp         cl,2D
>0040DD64    jne         0040DD67
 0040DD66    inc         esi
 0040DD67    mov         al,byte ptr [esi]
 0040DD69    sub         al,3A
 0040DD6B    add         al,0A
>0040DD6D    jae         0040DD7D
 0040DD6F    inc         esi
 0040DD70    imul        edx,edx,0A
 0040DD73    add         edx,eax
 0040DD75    cmp         edx,1F4
>0040DD7B    jb          0040DD67
 0040DD7D    cmp         cl,2D
>0040DD80    jne         0040DD84
 0040DD82    neg         edx
 0040DD84    ret
 0040DD85    pop         ebx
 0040DD86    pop         esi
 0040DD87    pop         edi
 0040DD88    mov         esp,ebp
 0040DD8A    pop         ebp
 0040DD8B    ret
*}
end;

//0040DD8C
{*procedure sub_0040DD8C(?:?; ?:?);
begin
 0040DD8C    push        ebp
 0040DD8D    mov         ebp,esp
 0040DD8F    add         esp,0FFFFFFBC
 0040DD92    mov         dword ptr [ebp-4],eax
 0040DD95    push        0
 0040DD97    push        0F
 0040DD99    push        0
 0040DD9B    lea         edx,[ebp+8]
 0040DD9E    lea         eax,[ebp-44]
 0040DDA1    xor         ecx,ecx
 0040DDA3    call        FloatToText
 0040DDA8    mov         ecx,eax
 0040DDAA    lea         edx,[ebp-44]
 0040DDAD    mov         eax,dword ptr [ebp-4]
 0040DDB0    call        @LStrFromPCharLen
 0040DDB5    mov         esp,ebp
 0040DDB7    pop         ebp
 0040DDB8    ret         0C
end;*}

//0040DDEC
{*procedure sub_0040DDEC(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0040DDEC    push        ebp
 0040DDED    mov         ebp,esp
 0040DDEF    add         esp,0FFFFFFB4
 0040DDF2    mov         dword ptr [ebp-0C],ecx
 0040DDF5    mov         dword ptr [ebp-8],edx
 0040DDF8    mov         byte ptr [ebp-1],al
 0040DDFB    mov         al,byte ptr [ebp-1]
 0040DDFE    push        eax
 0040DDFF    mov         eax,dword ptr [ebp-8]
 0040DE02    push        eax
 0040DE03    mov         eax,dword ptr [ebp-0C]
 0040DE06    push        eax
 0040DE07    lea         edx,[ebp+0C]
 0040DE0A    lea         eax,[ebp-4C]
 0040DE0D    xor         ecx,ecx
 0040DE0F    call        FloatToText
 0040DE14    mov         ecx,eax
 0040DE16    lea         edx,[ebp-4C]
 0040DE19    mov         eax,dword ptr [ebp+8]
 0040DE1C    call        @LStrFromPCharLen
 0040DE21    mov         esp,ebp
 0040DE23    pop         ebp
 0040DE24    ret         10
end;*}

//0040DE28
{*function sub_0040DE28(?:?):?;
begin
 0040DE28    push        ebp
 0040DE29    mov         ebp,esp
 0040DE2B    add         esp,0FFFFFFE8
 0040DE2E    mov         dword ptr [ebp-4],eax
 0040DE31    mov         eax,dword ptr [ebp-4]
 0040DE34    call        @LStrToPChar
 0040DE39    lea         edx,[ebp-10]
 0040DE3C    xor         ecx,ecx
 0040DE3E    call        TextToFloat
 0040DE43    test        al,al
>0040DE45    jne         0040DE60
 0040DE47    mov         eax,dword ptr [ebp-4]
 0040DE4A    mov         dword ptr [ebp-18],eax
 0040DE4D    mov         byte ptr [ebp-14],0B
 0040DE51    lea         edx,[ebp-18]
 0040DE54    mov         eax,[0056E0B8];^SInvalidFloat:TResStringRec
 0040DE59    xor         ecx,ecx
 0040DE5B    call        0040BBDC
 0040DE60    fld         tbyte ptr [ebp-10]
 0040DE63    mov         esp,ebp
 0040DE65    pop         ebp
 0040DE66    ret
end;*}

//0040DE68
{*function sub_0040DE68(?:?; ?:?):?;
begin
 0040DE68    push        ebp
 0040DE69    mov         ebp,esp
 0040DE6B    add         esp,0FFFFFFF4
 0040DE6E    mov         dword ptr [ebp-8],edx
 0040DE71    mov         dword ptr [ebp-4],eax
 0040DE74    mov         eax,dword ptr [ebp-4]
 0040DE77    call        @LStrToPChar
 0040DE7C    mov         edx,dword ptr [ebp-8]
 0040DE7F    xor         ecx,ecx
 0040DE81    call        TextToFloat
 0040DE86    mov         byte ptr [ebp-9],al
 0040DE89    mov         al,byte ptr [ebp-9]
 0040DE8C    mov         esp,ebp
 0040DE8E    pop         ebp
 0040DE8F    ret
end;*}

//0040DE90
{*function sub_0040DE90(?:?; ?:?):?;
begin
 0040DE90    push        ebp
 0040DE91    mov         ebp,esp
 0040DE93    add         esp,0FFFFFFE8
 0040DE96    mov         dword ptr [ebp-8],edx
 0040DE99    mov         dword ptr [ebp-4],eax
 0040DE9C    mov         eax,dword ptr [ebp-4]
 0040DE9F    call        @LStrToPChar
 0040DEA4    lea         edx,[ebp-18]
 0040DEA7    xor         ecx,ecx
 0040DEA9    call        TextToFloat
 0040DEAE    mov         byte ptr [ebp-9],al
 0040DEB1    cmp         byte ptr [ebp-9],0
>0040DEB5    je          0040DEC0
 0040DEB7    fld         tbyte ptr [ebp-18]
 0040DEBA    mov         eax,dword ptr [ebp-8]
 0040DEBD    fstp        qword ptr [eax]
 0040DEBF    wait
 0040DEC0    mov         al,byte ptr [ebp-9]
 0040DEC3    mov         esp,ebp
 0040DEC5    pop         ebp
 0040DEC6    ret
end;*}

//0040DF00
{*function sub_0040DF00(?:?; ?:?):?;
begin
 0040DF00    push        ebp
 0040DF01    mov         ebp,esp
 0040DF03    add         esp,0FFFFFFF4
 0040DF06    mov         dword ptr [ebp-8],edx
 0040DF09    mov         dword ptr [ebp-4],eax
 0040DF0C    mov         eax,dword ptr [ebp-4]
 0040DF0F    call        @LStrToPChar
 0040DF14    mov         edx,dword ptr [ebp-8]
 0040DF17    mov         cl,1
 0040DF19    call        TextToFloat
 0040DF1E    mov         byte ptr [ebp-9],al
 0040DF21    mov         al,byte ptr [ebp-9]
 0040DF24    mov         esp,ebp
 0040DF26    pop         ebp
 0040DF27    ret
end;*}

//0040DF28
function DateTimeToTimeStamp(DateTime:TDateTime):TTimeStamp;
begin
{*
 0040DF28    push        ebp
 0040DF29    mov         ebp,esp
 0040DF2B    push        ebx
 0040DF2C    xor         ebx,ebx
 0040DF2E    mov         ecx,eax
 0040DF30    fld         qword ptr [ebp+8]
 0040DF33    fmul        dword ptr [ebx+56B890]
 0040DF39    sub         esp,8
 0040DF3C    fistp       qword ptr [esp]
 0040DF3F    wait
 0040DF40    pop         eax
 0040DF41    pop         edx
 0040DF42    or          edx,edx
>0040DF44    jns         0040DF57
 0040DF46    neg         edx
 0040DF48    neg         eax
 0040DF4A    sbb         edx,0
 0040DF4D    div         eax,dword ptr [ebx+56B894]
 0040DF53    neg         eax
>0040DF55    jmp         0040DF5D
 0040DF57    div         eax,dword ptr [ebx+56B894]
 0040DF5D    add         eax,0A955A
 0040DF62    mov         dword ptr [ecx],edx
 0040DF64    mov         dword ptr [ecx+4],eax
 0040DF67    pop         ebx
 0040DF68    pop         ebp
 0040DF69    ret         8
*}
end;

//0040DF6C
{*function sub_0040DF6C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0040DF6C    push        ebp
 0040DF6D    mov         ebp,esp
 0040DF6F    add         esp,0FFFFFFF4
 0040DF72    mov         word ptr [ebp-6],cx
 0040DF76    mov         word ptr [ebp-4],dx
 0040DF7A    mov         word ptr [ebp-2],ax
 0040DF7E    mov         byte ptr [ebp-7],0
 0040DF82    cmp         word ptr [ebp-2],18
>0040DF87    jae         0040DFDD
 0040DF89    cmp         word ptr [ebp-4],3C
>0040DF8E    jae         0040DFDD
 0040DF90    cmp         word ptr [ebp-6],3C
>0040DF95    jae         0040DFDD
 0040DF97    cmp         word ptr [ebp+0C],3E8
>0040DF9D    jae         0040DFDD
 0040DF9F    movzx       eax,word ptr [ebp-2]
 0040DFA3    imul        eax,eax,36EE80
 0040DFA9    movzx       edx,word ptr [ebp-4]
 0040DFAD    imul        edx,edx,0EA60
 0040DFB3    add         eax,edx
 0040DFB5    movzx       edx,word ptr [ebp-6]
 0040DFB9    imul        edx,edx,3E8
 0040DFBF    add         eax,edx
 0040DFC1    movzx       edx,word ptr [ebp+0C]
 0040DFC5    add         eax,edx
 0040DFC7    mov         dword ptr [ebp-0C],eax
 0040DFCA    fild        dword ptr [ebp-0C]
 0040DFCD    fdiv        dword ptr ds:[40DFE8];86400000:Single
 0040DFD3    mov         eax,dword ptr [ebp+8]
 0040DFD6    fstp        qword ptr [eax]
 0040DFD8    wait
 0040DFD9    mov         byte ptr [ebp-7],1
 0040DFDD    mov         al,byte ptr [ebp-7]
 0040DFE0    mov         esp,ebp
 0040DFE2    pop         ebp
 0040DFE3    ret         8
end;*}

//0040DFEC
{*function sub_0040DFEC(?:?; ?:?; ?:?; ?:?):?;
begin
 0040DFEC    push        ebp
 0040DFED    mov         ebp,esp
 0040DFEF    add         esp,0FFFFFFF0
 0040DFF2    mov         word ptr [ebp-6],cx
 0040DFF6    mov         word ptr [ebp-4],dx
 0040DFFA    mov         word ptr [ebp-2],ax
 0040DFFE    mov         ax,word ptr [ebp+8]
 0040E002    push        eax
 0040E003    lea         eax,[ebp-10]
 0040E006    push        eax
 0040E007    mov         cx,word ptr [ebp-6]
 0040E00B    mov         dx,word ptr [ebp-4]
 0040E00F    mov         ax,word ptr [ebp-2]
 0040E013    call        0040DF6C
 0040E018    test        al,al
>0040E01A    jne         0040E026
 0040E01C    mov         eax,[0056E2A4];^STimeEncodeError:TResStringRec
 0040E021    call        0040BBBC
 0040E026    fld         qword ptr [ebp-10]
 0040E029    mov         esp,ebp
 0040E02B    pop         ebp
 0040E02C    ret         4
end;*}

//0040E030
procedure DecodeTime(var Hour:Word; var Min:Word; var Sec:Word; const DateTime:TDateTime; var MSec:Word);
begin
{*
 0040E030    push        ebp
 0040E031    mov         ebp,esp
 0040E033    add         esp,0FFFFFFE8
 0040E036    mov         dword ptr [ebp-0C],ecx
 0040E039    mov         dword ptr [ebp-8],edx
 0040E03C    mov         dword ptr [ebp-4],eax
 0040E03F    lea         eax,[ebp-10]
 0040E042    push        eax
 0040E043    push        dword ptr [ebp+10]
 0040E046    push        dword ptr [ebp+0C]
 0040E049    lea         eax,[ebp-18]
 0040E04C    call        DateTimeToTimeStamp
 0040E051    mov         eax,dword ptr [ebp-18]
 0040E054    lea         ecx,[ebp-0E]
 0040E057    mov         dx,0EA60
 0040E05B    call        DivMod
 0040E060    mov         eax,dword ptr [ebp-8]
 0040E063    push        eax
 0040E064    mov         ecx,dword ptr [ebp-4]
 0040E067    movzx       eax,word ptr [ebp-0E]
 0040E06B    mov         dx,3C
 0040E06F    call        DivMod
 0040E074    mov         eax,dword ptr [ebp+8]
 0040E077    push        eax
 0040E078    mov         ecx,dword ptr [ebp-0C]
 0040E07B    movzx       eax,word ptr [ebp-10]
 0040E07F    mov         dx,3E8
 0040E083    call        DivMod
 0040E088    mov         esp,ebp
 0040E08A    pop         ebp
 0040E08B    ret         0C
*}
end;

//0040E090
{*function sub_0040E090(?:Word):?;
begin
 0040E090    push        ebp
 0040E091    mov         ebp,esp
 0040E093    push        ecx
 0040E094    mov         word ptr [ebp-2],ax
 0040E098    movzx       eax,word ptr [ebp-2]
 0040E09C    and         eax,3
 0040E09F    test        eax,eax
>0040E0A1    jne         0040E0C5
 0040E0A3    movzx       eax,word ptr [ebp-2]
 0040E0A7    mov         ecx,64
 0040E0AC    xor         edx,edx
 0040E0AE    div         eax,ecx
 0040E0B0    test        edx,edx
>0040E0B2    jne         0040E0C9
 0040E0B4    movzx       eax,word ptr [ebp-2]
 0040E0B8    mov         ecx,190
 0040E0BD    xor         edx,edx
 0040E0BF    div         eax,ecx
 0040E0C1    test        edx,edx
>0040E0C3    je          0040E0C9
 0040E0C5    xor         eax,eax
>0040E0C7    jmp         0040E0CB
 0040E0C9    mov         al,1
 0040E0CB    mov         byte ptr [ebp-3],al
 0040E0CE    mov         al,byte ptr [ebp-3]
 0040E0D1    pop         ecx
 0040E0D2    pop         ebp
 0040E0D3    ret
end;*}

//0040E0D4
{*function sub_0040E0D4(?:Integer; ?:?; ?:?; ?:?):?;
begin
 0040E0D4    push        ebp
 0040E0D5    mov         ebp,esp
 0040E0D7    add         esp,0FFFFFFE8
 0040E0DA    push        ebx
 0040E0DB    mov         word ptr [ebp-6],cx
 0040E0DF    mov         word ptr [ebp-4],dx
 0040E0E3    mov         word ptr [ebp-2],ax
 0040E0E7    mov         byte ptr [ebp-7],0
 0040E0EB    mov         ax,word ptr [ebp-2]
 0040E0EF    call        0040E090
 0040E0F4    and         eax,7F
 0040E0F7    lea         eax,[eax+eax*2]
 0040E0FA    lea         eax,[eax*8+56B7F0]
 0040E101    mov         dword ptr [ebp-10],eax
 0040E104    cmp         word ptr [ebp-2],1
>0040E109    jb          0040E1CC
 0040E10F    cmp         word ptr [ebp-2],270F
>0040E115    ja          0040E1CC
 0040E11B    cmp         word ptr [ebp-4],1
>0040E120    jb          0040E1CC
 0040E126    cmp         word ptr [ebp-4],0C
>0040E12B    ja          0040E1CC
 0040E131    cmp         word ptr [ebp-6],1
>0040E136    jb          0040E1CC
 0040E13C    movzx       eax,word ptr [ebp-4]
 0040E140    mov         edx,dword ptr [ebp-10]
 0040E143    mov         ax,word ptr [edx+eax*2-2]
 0040E148    cmp         ax,word ptr [ebp-6]
>0040E14C    jb          0040E1CC
 0040E14E    movzx       eax,word ptr [ebp-4]
 0040E152    dec         eax
 0040E153    test        eax,eax
>0040E155    jle         0040E178
 0040E157    mov         dword ptr [ebp-14],eax
 0040E15A    mov         dword ptr [ebp-0C],1
 0040E161    mov         eax,dword ptr [ebp-10]
 0040E164    mov         edx,dword ptr [ebp-0C]
 0040E167    mov         ax,word ptr [eax+edx*2-2]
 0040E16C    add         word ptr [ebp-6],ax
 0040E170    inc         dword ptr [ebp-0C]
 0040E173    dec         dword ptr [ebp-14]
>0040E176    jne         0040E161
 0040E178    movzx       eax,word ptr [ebp-2]
 0040E17C    dec         eax
 0040E17D    mov         dword ptr [ebp-0C],eax
 0040E180    mov         eax,dword ptr [ebp-0C]
 0040E183    mov         ecx,64
 0040E188    cdq
 0040E189    idiv        eax,ecx
 0040E18B    imul        ecx,dword ptr [ebp-0C],16D
 0040E192    mov         edx,dword ptr [ebp-0C]
 0040E195    test        edx,edx
>0040E197    jns         0040E19C
 0040E199    add         edx,3
 0040E19C    sar         edx,2
 0040E19F    add         ecx,edx
 0040E1A1    sub         ecx,eax
 0040E1A3    mov         eax,dword ptr [ebp-0C]
 0040E1A6    mov         ebx,190
 0040E1AB    cdq
 0040E1AC    idiv        eax,ebx
 0040E1AE    add         ecx,eax
 0040E1B0    movzx       eax,word ptr [ebp-6]
 0040E1B4    add         ecx,eax
 0040E1B6    sub         ecx,0A955A
 0040E1BC    mov         dword ptr [ebp-18],ecx
 0040E1BF    fild        dword ptr [ebp-18]
 0040E1C2    mov         eax,dword ptr [ebp+8]
 0040E1C5    fstp        qword ptr [eax]
 0040E1C7    wait
 0040E1C8    mov         byte ptr [ebp-7],1
 0040E1CC    mov         al,byte ptr [ebp-7]
 0040E1CF    pop         ebx
 0040E1D0    mov         esp,ebp
 0040E1D2    pop         ebp
 0040E1D3    ret         4
end;*}

//0040E1D8
{*function sub_0040E1D8(?:?; ?:?; ?:?):?;
begin
 0040E1D8    push        ebp
 0040E1D9    mov         ebp,esp
 0040E1DB    add         esp,0FFFFFFF0
 0040E1DE    mov         word ptr [ebp-6],cx
 0040E1E2    mov         word ptr [ebp-4],dx
 0040E1E6    mov         word ptr [ebp-2],ax
 0040E1EA    lea         eax,[ebp-10]
 0040E1ED    push        eax
 0040E1EE    mov         cx,word ptr [ebp-6]
 0040E1F2    mov         dx,word ptr [ebp-4]
 0040E1F6    mov         ax,word ptr [ebp-2]
 0040E1FA    call        0040E0D4
 0040E1FF    test        al,al
>0040E201    jne         0040E20D
 0040E203    mov         eax,[0056E41C];^SDateEncodeError:TResStringRec
 0040E208    call        0040BBBC
 0040E20D    fld         qword ptr [ebp-10]
 0040E210    mov         esp,ebp
 0040E212    pop         ebp
 0040E213    ret
end;*}

//0040E214
{*function sub_0040E214(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0040E214    push        ebp
 0040E215    mov         ebp,esp
 0040E217    add         esp,0FFFFFFD8
 0040E21A    mov         dword ptr [ebp-0C],ecx
 0040E21D    mov         dword ptr [ebp-8],edx
 0040E220    mov         dword ptr [ebp-4],eax
 0040E223    push        dword ptr [ebp+10]
 0040E226    push        dword ptr [ebp+0C]
 0040E229    lea         eax,[ebp-28]
 0040E22C    call        DateTimeToTimeStamp
 0040E231    mov         eax,dword ptr [ebp-24]
 0040E234    mov         dword ptr [ebp-1C],eax
 0040E237    cmp         dword ptr [ebp-1C],0
>0040E23B    jg          0040E266
 0040E23D    mov         eax,dword ptr [ebp-4]
 0040E240    mov         word ptr [eax],0
 0040E245    mov         eax,dword ptr [ebp-8]
 0040E248    mov         word ptr [eax],0
 0040E24D    mov         eax,dword ptr [ebp-0C]
 0040E250    mov         word ptr [eax],0
 0040E255    mov         eax,dword ptr [ebp+8]
 0040E258    mov         word ptr [eax],0
 0040E25D    mov         byte ptr [ebp-0D],0
>0040E261    jmp         0040E384
 0040E266    mov         eax,dword ptr [ebp-1C]
 0040E269    mov         ecx,7
 0040E26E    cdq
 0040E26F    idiv        eax,ecx
 0040E271    inc         edx
 0040E272    mov         eax,dword ptr [ebp+8]
 0040E275    mov         word ptr [eax],dx
 0040E278    dec         dword ptr [ebp-1C]
 0040E27B    mov         word ptr [ebp-10],1
 0040E281    cmp         dword ptr [ebp-1C],23AB1
>0040E288    jl          0040E2A0
 0040E28A    sub         dword ptr [ebp-1C],23AB1
 0040E291    add         word ptr [ebp-10],190
 0040E297    cmp         dword ptr [ebp-1C],23AB1
>0040E29E    jge         0040E28A
 0040E2A0    lea         eax,[ebp-14]
 0040E2A3    push        eax
 0040E2A4    lea         ecx,[ebp-16]
 0040E2A7    mov         dx,8EAC
 0040E2AB    mov         eax,dword ptr [ebp-1C]
 0040E2AE    call        DivMod
 0040E2B3    cmp         word ptr [ebp-16],4
>0040E2B8    jne         0040E2C4
 0040E2BA    dec         word ptr [ebp-16]
 0040E2BE    add         word ptr [ebp-14],8EAC
 0040E2C4    imul        ax,word ptr [ebp-16],64
 0040E2C9    add         word ptr [ebp-10],ax
 0040E2CD    lea         eax,[ebp-14]
 0040E2D0    push        eax
 0040E2D1    lea         ecx,[ebp-16]
 0040E2D4    movzx       eax,word ptr [ebp-14]
 0040E2D8    mov         dx,5B5
 0040E2DC    call        DivMod
 0040E2E1    mov         ax,word ptr [ebp-16]
 0040E2E5    shl         eax,2
 0040E2E8    add         word ptr [ebp-10],ax
 0040E2EC    lea         eax,[ebp-14]
 0040E2EF    push        eax
 0040E2F0    lea         ecx,[ebp-16]
 0040E2F3    movzx       eax,word ptr [ebp-14]
 0040E2F7    mov         dx,16D
 0040E2FB    call        DivMod
 0040E300    cmp         word ptr [ebp-16],4
>0040E305    jne         0040E311
 0040E307    dec         word ptr [ebp-16]
 0040E30B    add         word ptr [ebp-14],16D
 0040E311    mov         ax,word ptr [ebp-16]
 0040E315    add         word ptr [ebp-10],ax
 0040E319    mov         ax,word ptr [ebp-10]
 0040E31D    call        0040E090
 0040E322    mov         byte ptr [ebp-0D],al
 0040E325    xor         eax,eax
 0040E327    mov         al,byte ptr [ebp-0D]
 0040E32A    lea         eax,[eax+eax*2]
 0040E32D    lea         eax,[eax*8+56B7F0]
 0040E334    mov         dword ptr [ebp-20],eax
 0040E337    mov         word ptr [ebp-12],1
 0040E33D    movzx       eax,word ptr [ebp-12]
 0040E341    mov         edx,dword ptr [ebp-20]
 0040E344    mov         ax,word ptr [edx+eax*2-2]
 0040E349    mov         word ptr [ebp-16],ax
 0040E34D    mov         ax,word ptr [ebp-14]
 0040E351    cmp         ax,word ptr [ebp-16]
>0040E355    jb          0040E365
 0040E357    mov         ax,word ptr [ebp-16]
 0040E35B    sub         word ptr [ebp-14],ax
 0040E35F    inc         word ptr [ebp-12]
>0040E363    jmp         0040E33D
 0040E365    mov         eax,dword ptr [ebp-4]
 0040E368    mov         dx,word ptr [ebp-10]
 0040E36C    mov         word ptr [eax],dx
 0040E36F    mov         eax,dword ptr [ebp-8]
 0040E372    mov         dx,word ptr [ebp-12]
 0040E376    mov         word ptr [eax],dx
 0040E379    mov         ax,word ptr [ebp-14]
 0040E37D    inc         eax
 0040E37E    mov         edx,dword ptr [ebp-0C]
 0040E381    mov         word ptr [edx],ax
 0040E384    mov         al,byte ptr [ebp-0D]
 0040E387    mov         esp,ebp
 0040E389    pop         ebp
 0040E38A    ret         0C
end;*}

//0040E390
procedure DecodeDate(var Year:Word; var Month:Word; var Day:Word; const DateTime:TDateTime);
begin
{*
 0040E390    push        ebp
 0040E391    mov         ebp,esp
 0040E393    add         esp,0FFFFFFF0
 0040E396    mov         dword ptr [ebp-0C],ecx
 0040E399    mov         dword ptr [ebp-8],edx
 0040E39C    mov         dword ptr [ebp-4],eax
 0040E39F    push        dword ptr [ebp+0C]
 0040E3A2    push        dword ptr [ebp+8]
 0040E3A5    lea         eax,[ebp-0E]
 0040E3A8    push        eax
 0040E3A9    mov         ecx,dword ptr [ebp-0C]
 0040E3AC    mov         edx,dword ptr [ebp-8]
 0040E3AF    mov         eax,dword ptr [ebp-4]
 0040E3B2    call        0040E214
 0040E3B7    mov         esp,ebp
 0040E3B9    pop         ebp
 0040E3BA    ret         8
*}
end;

//0040E3C0
{*function sub_0040E3C0(?:?; ?:?):?;
begin
 0040E3C0    push        ebp
 0040E3C1    mov         ebp,esp
 0040E3C3    add         esp,0FFFFFFF4
 0040E3C6    push        dword ptr [ebp+0C]
 0040E3C9    push        dword ptr [ebp+8]
 0040E3CC    lea         eax,[ebp-0C]
 0040E3CF    call        DateTimeToTimeStamp
 0040E3D4    mov         eax,dword ptr [ebp-8]
 0040E3D7    mov         ecx,7
 0040E3DC    cdq
 0040E3DD    idiv        eax,ecx
 0040E3DF    inc         edx
 0040E3E0    mov         word ptr [ebp-2],dx
 0040E3E4    mov         ax,word ptr [ebp-2]
 0040E3E8    mov         esp,ebp
 0040E3EA    pop         ebp
 0040E3EB    ret         8
end;*}

//0040E3F0
procedure sub_0040E3F0;
begin
{*
 0040E3F0    push        ebp
 0040E3F1    mov         ebp,esp
 0040E3F3    add         esp,0FFFFFFE8
 0040E3F6    lea         eax,[ebp-18]
 0040E3F9    push        eax
 0040E3FA    call        kernel32.GetLocalTime
 0040E3FF    mov         cx,word ptr [ebp-12]
 0040E403    mov         dx,word ptr [ebp-16]
 0040E407    mov         ax,word ptr [ebp-18]
 0040E40B    call        0040E1D8
 0040E410    fstp        qword ptr [ebp-8]
 0040E413    wait
 0040E414    fld         qword ptr [ebp-8]
 0040E417    mov         esp,ebp
 0040E419    pop         ebp
 0040E41A    ret
*}
end;

//0040E41C
{*function sub_0040E41C:?;
begin
 0040E41C    push        ebp
 0040E41D    mov         ebp,esp
 0040E41F    add         esp,0FFFFFFE8
 0040E422    lea         eax,[ebp-18]
 0040E425    push        eax
 0040E426    call        kernel32.GetLocalTime
 0040E42B    mov         ax,word ptr [ebp-0A]
 0040E42F    push        eax
 0040E430    mov         cx,word ptr [ebp-0C]
 0040E434    mov         dx,word ptr [ebp-0E]
 0040E438    mov         ax,word ptr [ebp-10]
 0040E43C    call        0040DFEC
 0040E441    fstp        qword ptr [ebp-8]
 0040E444    wait
 0040E445    fld         qword ptr [ebp-8]
 0040E448    mov         esp,ebp
 0040E44A    pop         ebp
 0040E44B    ret
end;*}

//0040E44C
{*function sub_0040E44C:?;
begin
 0040E44C    push        ebp
 0040E44D    mov         ebp,esp
 0040E44F    add         esp,0FFFFFFEC
 0040E452    lea         eax,[ebp-12]
 0040E455    push        eax
 0040E456    call        kernel32.GetLocalTime
 0040E45B    mov         ax,word ptr [ebp-12]
 0040E45F    mov         word ptr [ebp-2],ax
 0040E463    mov         ax,word ptr [ebp-2]
 0040E467    mov         esp,ebp
 0040E469    pop         ebp
 0040E46A    ret
end;*}

//0040E46C
{*procedure sub_0040E46C(?:void ; ?:Integer; ?:?);
begin
 0040E46C    push        ebp
 0040E46D    mov         ebp,esp
 0040E46F    add         esp,0FFFFFFF4
 0040E472    mov         dword ptr [ebp-8],edx
 0040E475    mov         dword ptr [ebp-4],eax
 0040E478    mov         eax,dword ptr [ebp+8]
 0040E47B    mov         edx,100
 0040E480    sub         edx,dword ptr [eax-104]
 0040E486    mov         dword ptr [ebp-0C],edx
 0040E489    mov         eax,dword ptr [ebp-0C]
 0040E48C    cmp         eax,dword ptr [ebp-8]
>0040E48F    jle         0040E497
 0040E491    mov         eax,dword ptr [ebp-8]
 0040E494    mov         dword ptr [ebp-0C],eax
 0040E497    cmp         dword ptr [ebp-0C],0
>0040E49B    je          0040E4BB
 0040E49D    mov         eax,dword ptr [ebp+8]
 0040E4A0    mov         eax,dword ptr [eax-104]
 0040E4A6    mov         edx,dword ptr [ebp+8]
 0040E4A9    lea         edx,[edx+eax-100]
 0040E4B0    mov         eax,dword ptr [ebp-4]
 0040E4B3    mov         ecx,dword ptr [ebp-0C]
 0040E4B6    call        Move
 0040E4BB    mov         eax,dword ptr [ebp+8]
 0040E4BE    mov         edx,dword ptr [ebp-0C]
 0040E4C1    add         dword ptr [eax-104],edx
 0040E4C7    mov         esp,ebp
 0040E4C9    pop         ebp
 0040E4CA    ret
end;*}

//0040E4CC
{*procedure sub_0040E4CC(?:?; ?:?);
begin
 0040E4CC    push        ebp
 0040E4CD    mov         ebp,esp
 0040E4CF    push        ecx
 0040E4D0    mov         dword ptr [ebp-4],eax
 0040E4D3    mov         eax,dword ptr [ebp+8]
 0040E4D6    push        eax
 0040E4D7    mov         eax,dword ptr [ebp-4]
 0040E4DA    call        @LStrLen
 0040E4DF    mov         edx,eax
 0040E4E1    mov         eax,dword ptr [ebp-4]
 0040E4E4    call        0040E46C
 0040E4E9    pop         ecx
 0040E4EA    pop         ecx
 0040E4EB    pop         ebp
 0040E4EC    ret
end;*}

//0040E4F0
{*procedure sub_0040E4F0(?:?; ?:?; ?:?);
begin
 0040E4F0    push        ebp
 0040E4F1    mov         ebp,esp
 0040E4F3    add         esp,0FFFFFFD8
 0040E4F6    mov         dword ptr [ebp-8],edx
 0040E4F9    mov         dword ptr [ebp-4],eax
 0040E4FC    mov         eax,dword ptr [ebp+8]
 0040E4FF    push        eax
 0040E500    push        4
 0040E502    mov         eax,dword ptr [ebp-8]
 0040E505    mov         dword ptr [ebp-28],eax
 0040E508    mov         byte ptr [ebp-24],0
 0040E50C    mov         eax,dword ptr [ebp-4]
 0040E50F    mov         dword ptr [ebp-20],eax
 0040E512    mov         byte ptr [ebp-1C],0
 0040E516    lea         eax,[ebp-28]
 0040E519    push        eax
 0040E51A    push        1
 0040E51C    mov         ecx,56B898
 0040E521    lea         eax,[ebp-18]
 0040E524    mov         edx,10
 0040E529    call        FormatBuf
 0040E52E    mov         edx,eax
 0040E530    lea         eax,[ebp-18]
 0040E533    call        0040E46C
 0040E538    pop         ecx
 0040E539    mov         esp,ebp
 0040E53B    pop         ebp
 0040E53C    ret
end;*}

//0040E540
{*procedure sub_0040E540(?:?);
begin
 0040E540    push        ebp
 0040E541    mov         ebp,esp
 0040E543    push        ecx
 0040E544    mov         eax,dword ptr [ebp+8]
 0040E547    mov         eax,dword ptr [eax-4]
 0040E54A    mov         dword ptr [ebp-4],eax
>0040E54D    jmp         0040E555
 0040E54F    mov         eax,dword ptr [ebp+8]
 0040E552    inc         dword ptr [eax-4]
 0040E555    mov         eax,dword ptr [ebp+8]
 0040E558    mov         eax,dword ptr [eax-4]
 0040E55B    mov         al,byte ptr [eax]
 0040E55D    mov         edx,dword ptr [ebp+8]
 0040E560    cmp         al,byte ptr [edx-5]
>0040E563    je          0040E54F
 0040E565    mov         eax,dword ptr [ebp+8]
 0040E568    mov         eax,dword ptr [eax-4]
 0040E56B    sub         eax,dword ptr [ebp-4]
 0040E56E    inc         eax
 0040E56F    mov         edx,dword ptr [ebp+8]
 0040E572    mov         dword ptr [edx-0C],eax
 0040E575    pop         ecx
 0040E576    pop         ebp
 0040E577    ret
end;*}

//0040E578
procedure GetDate;
begin
{*
 0040E578    push        ebp
 0040E579    mov         ebp,esp
 0040E57B    mov         eax,dword ptr [ebp+8]
 0040E57E    cmp         byte ptr [eax-13],0
>0040E582    jne         0040E5AE
 0040E584    mov         eax,dword ptr [ebp+8]
 0040E587    mov         eax,dword ptr [eax+8]
 0040E58A    push        dword ptr [eax+0C]
 0040E58D    push        dword ptr [eax+8]
 0040E590    mov         eax,dword ptr [ebp+8]
 0040E593    lea         ecx,[eax-12]
 0040E596    mov         eax,dword ptr [ebp+8]
 0040E599    lea         edx,[eax-10]
 0040E59C    mov         eax,dword ptr [ebp+8]
 0040E59F    add         eax,0FFFFFFF2
 0040E5A2    call        DecodeDate
 0040E5A7    mov         eax,dword ptr [ebp+8]
 0040E5AA    mov         byte ptr [eax-13],1
 0040E5AE    pop         ebp
 0040E5AF    ret
*}
end;

//0040E5B0
procedure GetTime;
begin
{*
 0040E5B0    push        ebp
 0040E5B1    mov         ebp,esp
 0040E5B3    mov         eax,dword ptr [ebp+8]
 0040E5B6    cmp         byte ptr [eax-1D],0
>0040E5BA    jne         0040E5ED
 0040E5BC    mov         eax,dword ptr [ebp+8]
 0040E5BF    mov         eax,dword ptr [eax+8]
 0040E5C2    push        dword ptr [eax+0C]
 0040E5C5    push        dword ptr [eax+8]
 0040E5C8    mov         eax,dword ptr [ebp+8]
 0040E5CB    add         eax,0FFFFFFE4
 0040E5CE    push        eax
 0040E5CF    mov         eax,dword ptr [ebp+8]
 0040E5D2    lea         ecx,[eax-1A]
 0040E5D5    mov         eax,dword ptr [ebp+8]
 0040E5D8    lea         edx,[eax-18]
 0040E5DB    mov         eax,dword ptr [ebp+8]
 0040E5DE    add         eax,0FFFFFFEA
 0040E5E1    call        DecodeTime
 0040E5E6    mov         eax,dword ptr [ebp+8]
 0040E5E9    mov         byte ptr [eax-1D],1
 0040E5ED    pop         ebp
 0040E5EE    ret
*}
end;

//0040E5F0
{*procedure sub_0040E5F0(?:?; ?:?; ?:?);
begin
 0040E5F0    push        ebp
 0040E5F1    mov         ebp,esp
 0040E5F3    add         esp,0FFFFFEDC
 0040E5F9    xor         ecx,ecx
 0040E5FB    mov         dword ptr [ebp-124],ecx
 0040E601    mov         dword ptr [ebp-0C],ecx
 0040E604    mov         dword ptr [ebp-8],edx
 0040E607    mov         dword ptr [ebp-4],eax
 0040E60A    xor         eax,eax
 0040E60C    push        ebp
 0040E60D    push        40E75D
 0040E612    push        dword ptr fs:[eax]
 0040E615    mov         dword ptr fs:[eax],esp
 0040E618    mov         eax,dword ptr [ebp-8]
 0040E61B    call        @LStrClr
 0040E620    mov         eax,dword ptr [ebp+8]
 0040E623    mov         ax,word ptr [eax-0E]
 0040E627    mov         word ptr [ebp-20],ax
 0040E62B    mov         eax,dword ptr [ebp+8]
 0040E62E    mov         ax,word ptr [eax-10]
 0040E632    mov         word ptr [ebp-1E],ax
 0040E636    mov         eax,dword ptr [ebp+8]
 0040E639    mov         ax,word ptr [eax-12]
 0040E63D    mov         word ptr [ebp-1A],ax
 0040E641    lea         eax,[ebp-0C]
 0040E644    mov         edx,40E770;'gg'
 0040E649    call        @LStrLAsg
 0040E64E    push        100
 0040E653    lea         eax,[ebp-120]
 0040E659    push        eax
 0040E65A    mov         eax,dword ptr [ebp-0C]
 0040E65D    call        @LStrToPChar
 0040E662    push        eax
 0040E663    lea         eax,[ebp-20]
 0040E666    push        eax
 0040E667    push        4
 0040E669    call        kernel32.GetThreadLocale
 0040E66E    push        eax
 0040E66F    call        kernel32.GetDateFormatA
 0040E674    test        eax,eax
>0040E676    je          0040E73C
 0040E67C    mov         eax,dword ptr [ebp-8]
 0040E67F    lea         edx,[ebp-120]
 0040E685    mov         ecx,100
 0040E68A    call        @LStrFromArray
 0040E68F    cmp         dword ptr [ebp-4],1
>0040E693    jne         0040E73C
 0040E699    mov         eax,[00571970];0x0 gvar_00571970
 0040E69E    sub         eax,4
>0040E6A1    je          0040E6D2
 0040E6A3    sub         eax,0D
>0040E6A6    jne         0040E73C
 0040E6AC    mov         eax,dword ptr [ebp-8]
 0040E6AF    push        eax
 0040E6B0    mov         eax,dword ptr [ebp-8]
 0040E6B3    mov         eax,dword ptr [eax]
 0040E6B5    mov         edx,1
 0040E6BA    call        004113B4
 0040E6BF    mov         ecx,eax
 0040E6C1    mov         eax,dword ptr [ebp-8]
 0040E6C4    mov         eax,dword ptr [eax]
 0040E6C6    mov         edx,1
 0040E6CB    call        @LStrCopy
>0040E6D0    jmp         0040E73C
 0040E6D2    cmp         dword ptr ds:[571974],1;gvar_00571974
>0040E6D9    jne         0040E73C
 0040E6DB    mov         eax,dword ptr [ebp-8]
 0040E6DE    mov         eax,dword ptr [eax]
 0040E6E0    call        @LStrLen
 0040E6E5    mov         edx,eax
 0040E6E7    mov         eax,dword ptr [ebp-8]
 0040E6EA    mov         eax,dword ptr [eax]
 0040E6EC    call        004111C4
 0040E6F1    cmp         eax,4
>0040E6F4    jne         0040E73C
 0040E6F6    mov         eax,dword ptr [ebp-8]
 0040E6F9    mov         eax,dword ptr [eax]
 0040E6FB    mov         edx,3
 0040E700    call        0041133C
 0040E705    lea         edx,[ebp-120]
 0040E70B    add         eax,edx
 0040E70D    dec         eax
 0040E70E    mov         dword ptr [ebp-10],eax
 0040E711    lea         eax,[ebp-124]
 0040E717    mov         edx,dword ptr [ebp-10]
 0040E71A    call        @LStrFromPChar
 0040E71F    mov         eax,dword ptr [ebp-124]
 0040E725    mov         edx,2
 0040E72A    call        004113B4
 0040E72F    mov         ecx,eax
 0040E731    mov         eax,dword ptr [ebp-8]
 0040E734    mov         edx,dword ptr [ebp-10]
 0040E737    call        @LStrFromPCharLen
 0040E73C    xor         eax,eax
 0040E73E    pop         edx
 0040E73F    pop         ecx
 0040E740    pop         ecx
 0040E741    mov         dword ptr fs:[eax],edx
 0040E744    push        40E764
 0040E749    lea         eax,[ebp-124]
 0040E74F    call        @LStrClr
 0040E754    lea         eax,[ebp-0C]
 0040E757    call        @LStrClr
 0040E75C    ret
>0040E75D    jmp         @HandleFinally
>0040E762    jmp         0040E749
 0040E764    mov         esp,ebp
 0040E766    pop         ebp
 0040E767    ret
end;*}

//0040E774
{*procedure sub_0040E774(?:?; ?:?; ?:?);
begin
 0040E774    push        ebp
 0040E775    mov         ebp,esp
 0040E777    add         esp,0FFFFFEE4
 0040E77D    xor         ecx,ecx
 0040E77F    mov         dword ptr [ebp-0C],ecx
 0040E782    mov         dword ptr [ebp-8],edx
 0040E785    mov         dword ptr [ebp-4],eax
 0040E788    xor         eax,eax
 0040E78A    push        ebp
 0040E78B    push        40E864
 0040E790    push        dword ptr fs:[eax]
 0040E793    mov         dword ptr fs:[eax],esp
 0040E796    mov         eax,dword ptr [ebp-8]
 0040E799    call        @LStrClr
 0040E79E    mov         eax,dword ptr [ebp+8]
 0040E7A1    mov         ax,word ptr [eax-0E]
 0040E7A5    mov         word ptr [ebp-1C],ax
 0040E7A9    mov         eax,dword ptr [ebp+8]
 0040E7AC    mov         ax,word ptr [eax-10]
 0040E7B0    mov         word ptr [ebp-1A],ax
 0040E7B4    mov         eax,dword ptr [ebp+8]
 0040E7B7    mov         ax,word ptr [eax-12]
 0040E7BB    mov         word ptr [ebp-16],ax
 0040E7BF    cmp         dword ptr [ebp-4],2
>0040E7C3    jg          0040E7D4
 0040E7C5    lea         eax,[ebp-0C]
 0040E7C8    mov         edx,40E878;'yy'
 0040E7CD    call        @LStrLAsg
>0040E7D2    jmp         0040E7E1
 0040E7D4    lea         eax,[ebp-0C]
 0040E7D7    mov         edx,40E884;'yyyy'
 0040E7DC    call        @LStrLAsg
 0040E7E1    push        100
 0040E7E6    lea         eax,[ebp-11C]
 0040E7EC    push        eax
 0040E7ED    mov         eax,dword ptr [ebp-0C]
 0040E7F0    call        @LStrToPChar
 0040E7F5    push        eax
 0040E7F6    lea         eax,[ebp-1C]
 0040E7F9    push        eax
 0040E7FA    push        4
 0040E7FC    call        kernel32.GetThreadLocale
 0040E801    push        eax
 0040E802    call        kernel32.GetDateFormatA
 0040E807    test        eax,eax
>0040E809    je          0040E84E
 0040E80B    mov         eax,dword ptr [ebp-8]
 0040E80E    lea         edx,[ebp-11C]
 0040E814    mov         ecx,100
 0040E819    call        @LStrFromArray
 0040E81E    cmp         dword ptr [ebp-4],1
>0040E822    jne         0040E84E
 0040E824    mov         eax,dword ptr [ebp-8]
 0040E827    mov         eax,dword ptr [eax]
 0040E829    cmp         byte ptr [eax],30
>0040E82C    jne         0040E84E
 0040E82E    mov         eax,dword ptr [ebp-8]
 0040E831    push        eax
 0040E832    mov         eax,dword ptr [ebp-8]
 0040E835    mov         eax,dword ptr [eax]
 0040E837    call        @LStrLen
 0040E83C    mov         ecx,eax
 0040E83E    dec         ecx
 0040E83F    mov         eax,dword ptr [ebp-8]
 0040E842    mov         eax,dword ptr [eax]
 0040E844    mov         edx,2
 0040E849    call        @LStrCopy
 0040E84E    xor         eax,eax
 0040E850    pop         edx
 0040E851    pop         ecx
 0040E852    pop         ecx
 0040E853    mov         dword ptr fs:[eax],edx
 0040E856    push        40E86B
 0040E85B    lea         eax,[ebp-0C]
 0040E85E    call        @LStrClr
 0040E863    ret
>0040E864    jmp         @HandleFinally
>0040E869    jmp         0040E85B
 0040E86B    mov         esp,ebp
 0040E86D    pop         ebp
 0040E86E    ret
end;*}

//0040E88C
{*procedure sub_0040E88C(?:?; ?:?);
begin
 0040E88C    push        ebp
 0040E88D    mov         ebp,esp
 0040E88F    add         esp,0FFFFFFCC
 0040E892    xor         edx,edx
 0040E894    mov         dword ptr [ebp-34],edx
 0040E897    mov         dword ptr [ebp-30],edx
 0040E89A    mov         dword ptr [ebp-4],eax
 0040E89D    xor         eax,eax
 0040E89F    push        ebp
 0040E8A0    push        40F062
 0040E8A5    push        dword ptr fs:[eax]
 0040E8A8    mov         dword ptr fs:[eax],esp
 0040E8AB    cmp         dword ptr [ebp-4],0
>0040E8AF    je          0040F047
 0040E8B5    mov         eax,dword ptr [ebp+8]
 0040E8B8    cmp         dword ptr [eax-108],2
>0040E8BF    jge         0040F047
 0040E8C5    mov         eax,dword ptr [ebp+8]
 0040E8C8    inc         dword ptr [eax-108]
 0040E8CE    mov         byte ptr [ebp-1F],20
 0040E8D2    mov         byte ptr [ebp-13],0
 0040E8D6    mov         byte ptr [ebp-1D],0
 0040E8DA    mov         byte ptr [ebp-20],0
>0040E8DE    jmp         0040F032
 0040E8E3    mov         eax,dword ptr [ebp-4]
 0040E8E6    mov         al,byte ptr [eax]
 0040E8E8    mov         byte ptr [ebp-5],al
 0040E8EB    mov         al,byte ptr [ebp-5]
 0040E8EE    and         eax,0FF
 0040E8F3    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>0040E8FA    jae         0040E927
 0040E8FC    mov         eax,dword ptr [ebp+8]
 0040E8FF    push        eax
 0040E900    mov         eax,dword ptr [ebp-4]
 0040E903    call        00411428
 0040E908    mov         edx,eax
 0040E90A    mov         eax,dword ptr [ebp-4]
 0040E90D    call        0040E46C
 0040E912    pop         ecx
 0040E913    mov         eax,dword ptr [ebp-4]
 0040E916    call        0041145C
 0040E91B    mov         dword ptr [ebp-4],eax
 0040E91E    mov         byte ptr [ebp-1F],20
>0040E922    jmp         0040F032
 0040E927    mov         eax,dword ptr [ebp-4]
 0040E92A    call        0041145C
 0040E92F    mov         dword ptr [ebp-4],eax
 0040E932    mov         al,byte ptr [ebp-5]
 0040E935    mov         byte ptr [ebp-1E],al
 0040E938    mov         al,byte ptr [ebp-1E]
 0040E93B    add         al,9F
 0040E93D    sub         al,1A
>0040E93F    jae         0040E945
 0040E941    sub         byte ptr [ebp-1E],20
 0040E945    mov         al,byte ptr [ebp-1E]
 0040E948    add         al,0BF
 0040E94A    sub         al,1A
>0040E94C    jae         0040E964
 0040E94E    cmp         byte ptr [ebp-1E],4D
>0040E952    jne         0040E95E
 0040E954    cmp         byte ptr [ebp-1F],48
>0040E958    jne         0040E95E
 0040E95A    mov         byte ptr [ebp-1E],4E
 0040E95E    mov         al,byte ptr [ebp-1E]
 0040E961    mov         byte ptr [ebp-1F],al
 0040E964    xor         eax,eax
 0040E966    mov         al,byte ptr [ebp-1E]
 0040E969    add         eax,0FFFFFFDE
 0040E96C    cmp         eax,38
>0040E96F    ja          0040F020
 0040E975    mov         al,byte ptr [eax+40E982]
 0040E97B    jmp         dword ptr [eax*4+40E9BB]
 0040E97B    db          15
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          15
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          13
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          14
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          11
 0040E97B    db          0
 0040E97B    db          12
 0040E97B    db          5
 0040E97B    db          3
 0040E97B    db          0
 0040E97B    db          2
 0040E97B    db          6
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          4
 0040E97B    db          7
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          8
 0040E97B    db          9
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          0
 0040E97B    db          1
 0040E97B    db          10
 0040E97B    dd          0040F020
 0040E97B    dd          0040E9FB
 0040E97B    dd          0040EA4A
 0040E97B    dd          0040EA77
 0040E97B    dd          0040EAA4
 0040E97B    dd          0040EB09
 0040E97B    dd          0040EBB6
 0040E97B    dd          0040ECD5
 0040E97B    dd          0040ED06
 0040E97B    dd          0040ED37
 0040E97B    dd          0040ED6C
 0040E97B    dd          0040ED9D
 0040E97B    dd          0040EF1C
 0040E97B    dd          0040EF7A
 0040E97B    dd          0040EFA0
 0040E97B    dd          0040EFC3
 0040E9FB    push        ebp
 0040E9FC    call        0040E540
 0040EA01    pop         ecx
 0040EA02    push        ebp
 0040EA03    call        GetDate
 0040EA08    pop         ecx
 0040EA09    cmp         dword ptr [ebp-0C],2
>0040EA0D    jg          0040EA32
 0040EA0F    mov         eax,dword ptr [ebp+8]
 0040EA12    push        eax
 0040EA13    movzx       eax,word ptr [ebp-0E]
 0040EA17    mov         ecx,64
 0040EA1C    xor         edx,edx
 0040EA1E    div         eax,ecx
 0040EA20    mov         eax,edx
 0040EA22    mov         edx,2
 0040EA27    call        0040E4F0
 0040EA2C    pop         ecx
>0040EA2D    jmp         0040F032
 0040EA32    mov         eax,dword ptr [ebp+8]
 0040EA35    push        eax
 0040EA36    movzx       eax,word ptr [ebp-0E]
 0040EA3A    mov         edx,4
 0040EA3F    call        0040E4F0
 0040EA44    pop         ecx
>0040EA45    jmp         0040F032
 0040EA4A    push        ebp
 0040EA4B    call        0040E540
 0040EA50    pop         ecx
 0040EA51    push        ebp
 0040EA52    call        GetDate
 0040EA57    pop         ecx
 0040EA58    mov         eax,dword ptr [ebp+8]
 0040EA5B    push        eax
 0040EA5C    push        ebp
 0040EA5D    lea         edx,[ebp-30]
 0040EA60    mov         eax,dword ptr [ebp-0C]
 0040EA63    call        0040E5F0
 0040EA68    pop         ecx
 0040EA69    mov         eax,dword ptr [ebp-30]
 0040EA6C    call        0040E4CC
 0040EA71    pop         ecx
>0040EA72    jmp         0040F032
 0040EA77    push        ebp
 0040EA78    call        0040E540
 0040EA7D    pop         ecx
 0040EA7E    push        ebp
 0040EA7F    call        GetDate
 0040EA84    pop         ecx
 0040EA85    mov         eax,dword ptr [ebp+8]
 0040EA88    push        eax
 0040EA89    push        ebp
 0040EA8A    lea         edx,[ebp-34]
 0040EA8D    mov         eax,dword ptr [ebp-0C]
 0040EA90    call        0040E774
 0040EA95    pop         ecx
 0040EA96    mov         eax,dword ptr [ebp-34]
 0040EA99    call        0040E4CC
 0040EA9E    pop         ecx
>0040EA9F    jmp         0040F032
 0040EAA4    push        ebp
 0040EAA5    call        0040E540
 0040EAAA    pop         ecx
 0040EAAB    push        ebp
 0040EAAC    call        GetDate
 0040EAB1    pop         ecx
 0040EAB2    mov         eax,dword ptr [ebp-0C]
 0040EAB5    dec         eax
 0040EAB6    sub         eax,2
>0040EAB9    jb          0040EABF
>0040EABB    je          0040EAD5
>0040EABD    jmp         0040EAEF
 0040EABF    mov         eax,dword ptr [ebp+8]
 0040EAC2    push        eax
 0040EAC3    movzx       eax,word ptr [ebp-10]
 0040EAC7    mov         edx,dword ptr [ebp-0C]
 0040EACA    call        0040E4F0
 0040EACF    pop         ecx
>0040EAD0    jmp         0040F032
 0040EAD5    mov         eax,dword ptr [ebp+8]
 0040EAD8    push        eax
 0040EAD9    movzx       eax,word ptr [ebp-10]
 0040EADD    mov         eax,dword ptr [eax*4+5718D0];gvar_005718D0
 0040EAE4    call        0040E4CC
 0040EAE9    pop         ecx
>0040EAEA    jmp         0040F032
 0040EAEF    mov         eax,dword ptr [ebp+8]
 0040EAF2    push        eax
 0040EAF3    movzx       eax,word ptr [ebp-10]
 0040EAF7    mov         eax,dword ptr [eax*4+571900]
 0040EAFE    call        0040E4CC
 0040EB03    pop         ecx
>0040EB04    jmp         0040F032
 0040EB09    push        ebp
 0040EB0A    call        0040E540
 0040EB0F    pop         ecx
 0040EB10    mov         eax,dword ptr [ebp-0C]
 0040EB13    dec         eax
 0040EB14    sub         eax,2
>0040EB17    jb          0040EB23
>0040EB19    je          0040EB40
 0040EB1B    dec         eax
>0040EB1C    je          0040EB67
 0040EB1E    dec         eax
>0040EB1F    je          0040EB8E
>0040EB21    jmp         0040EBA2
 0040EB23    push        ebp
 0040EB24    call        GetDate
 0040EB29    pop         ecx
 0040EB2A    mov         eax,dword ptr [ebp+8]
 0040EB2D    push        eax
 0040EB2E    movzx       eax,word ptr [ebp-12]
 0040EB32    mov         edx,dword ptr [ebp-0C]
 0040EB35    call        0040E4F0
 0040EB3A    pop         ecx
>0040EB3B    jmp         0040F032
 0040EB40    mov         eax,dword ptr [ebp+8]
 0040EB43    push        eax
 0040EB44    mov         eax,dword ptr [ebp+8]
 0040EB47    push        dword ptr [eax+0C]
 0040EB4A    push        dword ptr [eax+8]
 0040EB4D    call        0040E3C0
 0040EB52    movzx       eax,ax
 0040EB55    mov         eax,dword ptr [eax*4+571930]
 0040EB5C    call        0040E4CC
 0040EB61    pop         ecx
>0040EB62    jmp         0040F032
 0040EB67    mov         eax,dword ptr [ebp+8]
 0040EB6A    push        eax
 0040EB6B    mov         eax,dword ptr [ebp+8]
 0040EB6E    push        dword ptr [eax+0C]
 0040EB71    push        dword ptr [eax+8]
 0040EB74    call        0040E3C0
 0040EB79    movzx       eax,ax
 0040EB7C    mov         eax,dword ptr [eax*4+57194C]
 0040EB83    call        0040E4CC
 0040EB88    pop         ecx
>0040EB89    jmp         0040F032
 0040EB8E    mov         eax,dword ptr [ebp+8]
 0040EB91    push        eax
 0040EB92    mov         eax,[005718B8];0x0 gvar_005718B8
 0040EB97    call        0040E88C
 0040EB9C    pop         ecx
>0040EB9D    jmp         0040F032
 0040EBA2    mov         eax,dword ptr [ebp+8]
 0040EBA5    push        eax
 0040EBA6    mov         eax,[005718BC];0x0 gvar_005718BC
 0040EBAB    call        0040E88C
 0040EBB0    pop         ecx
>0040EBB1    jmp         0040F032
 0040EBB6    push        ebp
 0040EBB7    call        0040E540
 0040EBBC    pop         ecx
 0040EBBD    push        ebp
 0040EBBE    call        GetTime
 0040EBC3    pop         ecx
 0040EBC4    mov         byte ptr [ebp-21],0
 0040EBC8    mov         eax,dword ptr [ebp-4]
 0040EBCB    mov         dword ptr [ebp-28],eax
>0040EBCE    jmp         0040EC7D
 0040EBD3    mov         eax,dword ptr [ebp-28]
 0040EBD6    mov         al,byte ptr [eax]
 0040EBD8    and         eax,0FF
 0040EBDD    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>0040EBE4    jae         0040EBF6
 0040EBE6    mov         eax,dword ptr [ebp-28]
 0040EBE9    call        0041145C
 0040EBEE    mov         dword ptr [ebp-28],eax
>0040EBF1    jmp         0040EC7D
 0040EBF6    mov         eax,dword ptr [ebp-28]
 0040EBF9    movzx       eax,byte ptr [eax]
 0040EBFC    cmp         eax,48
>0040EBFF    jg          0040EC18
>0040EC01    je          0040EC89
 0040EC07    sub         eax,22
>0040EC0A    je          0040EC72
 0040EC0C    sub         eax,5
>0040EC0F    je          0040EC72
 0040EC11    sub         eax,1A
>0040EC14    je          0040EC24
>0040EC16    jmp         0040EC7A
 0040EC18    sub         eax,61
>0040EC1B    je          0040EC24
 0040EC1D    sub         eax,7
>0040EC20    je          0040EC89
>0040EC22    jmp         0040EC7A
 0040EC24    cmp         byte ptr [ebp-21],0
>0040EC28    jne         0040EC7A
 0040EC2A    mov         edx,40F070
 0040EC2F    mov         ecx,5
 0040EC34    mov         eax,dword ptr [ebp-28]
 0040EC37    call        StrLIComp
 0040EC3C    test        eax,eax
>0040EC3E    je          0040EC6C
 0040EC40    mov         edx,40F078
 0040EC45    mov         ecx,3
 0040EC4A    mov         eax,dword ptr [ebp-28]
 0040EC4D    call        StrLIComp
 0040EC52    test        eax,eax
>0040EC54    je          0040EC6C
 0040EC56    mov         edx,40F07C
 0040EC5B    mov         ecx,4
 0040EC60    mov         eax,dword ptr [ebp-28]
 0040EC63    call        StrLIComp
 0040EC68    test        eax,eax
>0040EC6A    jne         0040EC89
 0040EC6C    mov         byte ptr [ebp-20],1
>0040EC70    jmp         0040EC89
 0040EC72    mov         al,byte ptr [ebp-21]
 0040EC75    xor         al,1
 0040EC77    mov         byte ptr [ebp-21],al
 0040EC7A    inc         dword ptr [ebp-28]
 0040EC7D    mov         eax,dword ptr [ebp-28]
 0040EC80    cmp         byte ptr [eax],0
>0040EC83    jne         0040EBD3
 0040EC89    mov         ax,word ptr [ebp-16]
 0040EC8D    mov         word ptr [ebp-2A],ax
 0040EC91    cmp         byte ptr [ebp-20],0
>0040EC95    je          0040ECB2
 0040EC97    cmp         word ptr [ebp-2A],0
>0040EC9C    jne         0040ECA6
 0040EC9E    mov         word ptr [ebp-2A],0C
>0040ECA4    jmp         0040ECB2
 0040ECA6    cmp         word ptr [ebp-2A],0C
>0040ECAB    jbe         0040ECB2
 0040ECAD    sub         word ptr [ebp-2A],0C
 0040ECB2    cmp         dword ptr [ebp-0C],2
>0040ECB6    jle         0040ECBF
 0040ECB8    mov         dword ptr [ebp-0C],2
 0040ECBF    mov         eax,dword ptr [ebp+8]
 0040ECC2    push        eax
 0040ECC3    movzx       eax,word ptr [ebp-2A]
 0040ECC7    mov         edx,dword ptr [ebp-0C]
 0040ECCA    call        0040E4F0
 0040ECCF    pop         ecx
>0040ECD0    jmp         0040F032
 0040ECD5    push        ebp
 0040ECD6    call        0040E540
 0040ECDB    pop         ecx
 0040ECDC    push        ebp
 0040ECDD    call        GetTime
 0040ECE2    pop         ecx
 0040ECE3    cmp         dword ptr [ebp-0C],2
>0040ECE7    jle         0040ECF0
 0040ECE9    mov         dword ptr [ebp-0C],2
 0040ECF0    mov         eax,dword ptr [ebp+8]
 0040ECF3    push        eax
 0040ECF4    movzx       eax,word ptr [ebp-18]
 0040ECF8    mov         edx,dword ptr [ebp-0C]
 0040ECFB    call        0040E4F0
 0040ED00    pop         ecx
>0040ED01    jmp         0040F032
 0040ED06    push        ebp
 0040ED07    call        0040E540
 0040ED0C    pop         ecx
 0040ED0D    push        ebp
 0040ED0E    call        GetTime
 0040ED13    pop         ecx
 0040ED14    cmp         dword ptr [ebp-0C],2
>0040ED18    jle         0040ED21
 0040ED1A    mov         dword ptr [ebp-0C],2
 0040ED21    mov         eax,dword ptr [ebp+8]
 0040ED24    push        eax
 0040ED25    movzx       eax,word ptr [ebp-1A]
 0040ED29    mov         edx,dword ptr [ebp-0C]
 0040ED2C    call        0040E4F0
 0040ED31    pop         ecx
>0040ED32    jmp         0040F032
 0040ED37    push        ebp
 0040ED38    call        0040E540
 0040ED3D    pop         ecx
 0040ED3E    cmp         dword ptr [ebp-0C],1
>0040ED42    jne         0040ED58
 0040ED44    mov         eax,dword ptr [ebp+8]
 0040ED47    push        eax
 0040ED48    mov         eax,[005718CC];0x0 gvar_005718CC
 0040ED4D    call        0040E88C
 0040ED52    pop         ecx
>0040ED53    jmp         0040F032
 0040ED58    mov         eax,dword ptr [ebp+8]
 0040ED5B    push        eax
 0040ED5C    mov         eax,[005718D0];0x0 gvar_005718D0
 0040ED61    call        0040E88C
 0040ED66    pop         ecx
>0040ED67    jmp         0040F032
 0040ED6C    push        ebp
 0040ED6D    call        0040E540
 0040ED72    pop         ecx
 0040ED73    push        ebp
 0040ED74    call        GetTime
 0040ED79    pop         ecx
 0040ED7A    cmp         dword ptr [ebp-0C],3
>0040ED7E    jle         0040ED87
 0040ED80    mov         dword ptr [ebp-0C],3
 0040ED87    mov         eax,dword ptr [ebp+8]
 0040ED8A    push        eax
 0040ED8B    movzx       eax,word ptr [ebp-1C]
 0040ED8F    mov         edx,dword ptr [ebp-0C]
 0040ED92    call        0040E4F0
 0040ED97    pop         ecx
>0040ED98    jmp         0040F032
 0040ED9D    push        ebp
 0040ED9E    call        GetTime
 0040EDA3    pop         ecx
 0040EDA4    mov         eax,dword ptr [ebp-4]
 0040EDA7    dec         eax
 0040EDA8    mov         dword ptr [ebp-28],eax
 0040EDAB    mov         edx,40F070
 0040EDB0    mov         ecx,5
 0040EDB5    mov         eax,dword ptr [ebp-28]
 0040EDB8    call        StrLIComp
 0040EDBD    test        eax,eax
>0040EDBF    jne         0040EDEB
 0040EDC1    cmp         word ptr [ebp-16],0C
>0040EDC6    jb          0040EDCC
 0040EDC8    add         dword ptr [ebp-28],3
 0040EDCC    mov         eax,dword ptr [ebp+8]
 0040EDCF    push        eax
 0040EDD0    mov         edx,2
 0040EDD5    mov         eax,dword ptr [ebp-28]
 0040EDD8    call        0040E46C
 0040EDDD    pop         ecx
 0040EDDE    add         dword ptr [ebp-4],4
 0040EDE2    mov         byte ptr [ebp-20],1
>0040EDE6    jmp         0040F032
 0040EDEB    mov         edx,40F078
 0040EDF0    mov         ecx,3
 0040EDF5    mov         eax,dword ptr [ebp-28]
 0040EDF8    call        StrLIComp
 0040EDFD    test        eax,eax
>0040EDFF    jne         0040EE2B
 0040EE01    cmp         word ptr [ebp-16],0C
>0040EE06    jb          0040EE0C
 0040EE08    add         dword ptr [ebp-28],2
 0040EE0C    mov         eax,dword ptr [ebp+8]
 0040EE0F    push        eax
 0040EE10    mov         edx,1
 0040EE15    mov         eax,dword ptr [ebp-28]
 0040EE18    call        0040E46C
 0040EE1D    pop         ecx
 0040EE1E    add         dword ptr [ebp-4],2
 0040EE22    mov         byte ptr [ebp-20],1
>0040EE26    jmp         0040F032
 0040EE2B    mov         edx,40F07C
 0040EE30    mov         ecx,4
 0040EE35    mov         eax,dword ptr [ebp-28]
 0040EE38    call        StrLIComp
 0040EE3D    test        eax,eax
>0040EE3F    jne         0040EE75
 0040EE41    cmp         word ptr [ebp-16],0C
>0040EE46    jae         0040EE59
 0040EE48    mov         eax,dword ptr [ebp+8]
 0040EE4B    push        eax
 0040EE4C    mov         eax,[005718C4];0x0 gvar_005718C4
 0040EE51    call        0040E4CC
 0040EE56    pop         ecx
>0040EE57    jmp         0040EE68
 0040EE59    mov         eax,dword ptr [ebp+8]
 0040EE5C    push        eax
 0040EE5D    mov         eax,[005718C8];0x0 gvar_005718C8
 0040EE62    call        0040E4CC
 0040EE67    pop         ecx
 0040EE68    add         dword ptr [ebp-4],3
 0040EE6C    mov         byte ptr [ebp-20],1
>0040EE70    jmp         0040F032
 0040EE75    mov         edx,40F084
 0040EE7A    mov         ecx,4
 0040EE7F    mov         eax,dword ptr [ebp-28]
 0040EE82    call        StrLIComp
 0040EE87    test        eax,eax
>0040EE89    jne         0040EEBD
 0040EE8B    push        ebp
 0040EE8C    call        GetDate
 0040EE91    pop         ecx
 0040EE92    mov         eax,dword ptr [ebp+8]
 0040EE95    push        eax
 0040EE96    mov         eax,dword ptr [ebp+8]
 0040EE99    push        dword ptr [eax+0C]
 0040EE9C    push        dword ptr [eax+8]
 0040EE9F    call        0040E3C0
 0040EEA4    movzx       eax,ax
 0040EEA7    mov         eax,dword ptr [eax*4+57194C]
 0040EEAE    call        0040E4CC
 0040EEB3    pop         ecx
 0040EEB4    add         dword ptr [ebp-4],3
>0040EEB8    jmp         0040F032
 0040EEBD    mov         edx,40F08C
 0040EEC2    mov         ecx,3
 0040EEC7    mov         eax,dword ptr [ebp-28]
 0040EECA    call        StrLIComp
 0040EECF    test        eax,eax
>0040EED1    jne         0040EF05
 0040EED3    push        ebp
 0040EED4    call        GetDate
 0040EED9    pop         ecx
 0040EEDA    mov         eax,dword ptr [ebp+8]
 0040EEDD    push        eax
 0040EEDE    mov         eax,dword ptr [ebp+8]
 0040EEE1    push        dword ptr [eax+0C]
 0040EEE4    push        dword ptr [eax+8]
 0040EEE7    call        0040E3C0
 0040EEEC    movzx       eax,ax
 0040EEEF    mov         eax,dword ptr [eax*4+571930]
 0040EEF6    call        0040E4CC
 0040EEFB    pop         ecx
 0040EEFC    add         dword ptr [ebp-4],2
>0040EF00    jmp         0040F032
 0040EF05    mov         eax,dword ptr [ebp+8]
 0040EF08    push        eax
 0040EF09    lea         eax,[ebp-5]
 0040EF0C    mov         edx,1
 0040EF11    call        0040E46C
 0040EF16    pop         ecx
>0040EF17    jmp         0040F032
 0040EF1C    push        ebp
 0040EF1D    call        0040E540
 0040EF22    pop         ecx
 0040EF23    mov         eax,dword ptr [ebp+8]
 0040EF26    push        eax
 0040EF27    mov         eax,[005718B8];0x0 gvar_005718B8
 0040EF2C    call        0040E88C
 0040EF31    pop         ecx
 0040EF32    push        ebp
 0040EF33    call        GetTime
 0040EF38    pop         ecx
 0040EF39    cmp         word ptr [ebp-16],0
>0040EF3E    jne         0040EF52
 0040EF40    cmp         word ptr [ebp-18],0
>0040EF45    jne         0040EF52
 0040EF47    cmp         word ptr [ebp-1A],0
>0040EF4C    je          0040F032
 0040EF52    mov         eax,dword ptr [ebp+8]
 0040EF55    push        eax
 0040EF56    mov         eax,40F090
 0040EF5B    mov         edx,1
 0040EF60    call        0040E46C
 0040EF65    pop         ecx
 0040EF66    mov         eax,dword ptr [ebp+8]
 0040EF69    push        eax
 0040EF6A    mov         eax,[005718D0];0x0 gvar_005718D0
 0040EF6F    call        0040E88C
 0040EF74    pop         ecx
>0040EF75    jmp         0040F032
 0040EF7A    cmp         byte ptr ds:[5718B5],0;gvar_005718B5
>0040EF81    je          0040F032
 0040EF87    mov         eax,dword ptr [ebp+8]
 0040EF8A    push        eax
 0040EF8B    mov         eax,5718B5;gvar_005718B5
 0040EF90    mov         edx,1
 0040EF95    call        0040E46C
 0040EF9A    pop         ecx
>0040EF9B    jmp         0040F032
 0040EFA0    cmp         byte ptr ds:[5718C0],0;gvar_005718C0
>0040EFA7    je          0040F032
 0040EFAD    mov         eax,dword ptr [ebp+8]
 0040EFB0    push        eax
 0040EFB1    mov         eax,5718C0;gvar_005718C0
 0040EFB6    mov         edx,1
 0040EFBB    call        0040E46C
 0040EFC0    pop         ecx
>0040EFC1    jmp         0040F032
 0040EFC3    mov         eax,dword ptr [ebp-4]
 0040EFC6    mov         dword ptr [ebp-28],eax
>0040EFC9    jmp         0040EFEE
 0040EFCB    mov         eax,dword ptr [ebp-4]
 0040EFCE    mov         al,byte ptr [eax]
 0040EFD0    and         eax,0FF
 0040EFD5    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>0040EFDC    jae         0040EFEB
 0040EFDE    mov         eax,dword ptr [ebp-4]
 0040EFE1    call        0041145C
 0040EFE6    mov         dword ptr [ebp-4],eax
>0040EFE9    jmp         0040EFEE
 0040EFEB    inc         dword ptr [ebp-4]
 0040EFEE    mov         eax,dword ptr [ebp-4]
 0040EFF1    cmp         byte ptr [eax],0
>0040EFF4    je          0040F000
 0040EFF6    mov         eax,dword ptr [ebp-4]
 0040EFF9    mov         al,byte ptr [eax]
 0040EFFB    cmp         al,byte ptr [ebp-5]
>0040EFFE    jne         0040EFCB
 0040F000    mov         eax,dword ptr [ebp+8]
 0040F003    push        eax
 0040F004    mov         edx,dword ptr [ebp-4]
 0040F007    sub         edx,dword ptr [ebp-28]
 0040F00A    mov         eax,dword ptr [ebp-28]
 0040F00D    call        0040E46C
 0040F012    pop         ecx
 0040F013    mov         eax,dword ptr [ebp-4]
 0040F016    cmp         byte ptr [eax],0
>0040F019    je          0040F032
 0040F01B    inc         dword ptr [ebp-4]
>0040F01E    jmp         0040F032
 0040F020    mov         eax,dword ptr [ebp+8]
 0040F023    push        eax
 0040F024    lea         eax,[ebp-5]
 0040F027    mov         edx,1
 0040F02C    call        0040E46C
 0040F031    pop         ecx
 0040F032    mov         eax,dword ptr [ebp-4]
 0040F035    cmp         byte ptr [eax],0
>0040F038    jne         0040E8E3
 0040F03E    mov         eax,dword ptr [ebp+8]
 0040F041    dec         dword ptr [eax-108]
 0040F047    xor         eax,eax
 0040F049    pop         edx
 0040F04A    pop         ecx
 0040F04B    pop         ecx
 0040F04C    mov         dword ptr fs:[eax],edx
 0040F04F    push        40F069
 0040F054    lea         eax,[ebp-34]
 0040F057    mov         edx,2
 0040F05C    call        @LStrArrayClr
 0040F061    ret
>0040F062    jmp         @HandleFinally
>0040F067    jmp         0040F054
 0040F069    mov         esp,ebp
 0040F06B    pop         ebp
 0040F06C    ret
end;*}

//0040F094
{*procedure sub_0040F094(?:?; ?:?);
begin
 0040F094    push        ebp
 0040F095    mov         ebp,esp
 0040F097    add         esp,0FFFFFEF0
 0040F09D    mov         dword ptr [ebp-110],edx
 0040F0A3    mov         dword ptr [ebp-10C],eax
 0040F0A9    xor         eax,eax
 0040F0AB    mov         dword ptr [ebp-104],eax
 0040F0B1    xor         eax,eax
 0040F0B3    mov         dword ptr [ebp-108],eax
 0040F0B9    cmp         dword ptr [ebp-110],0
>0040F0C0    je          0040F0D1
 0040F0C2    push        ebp
 0040F0C3    mov         eax,dword ptr [ebp-110]
 0040F0C9    call        0040E88C
 0040F0CE    pop         ecx
>0040F0CF    jmp         0040F0DD
 0040F0D1    push        ebp
 0040F0D2    mov         eax,40F0FC
 0040F0D7    call        0040E88C
 0040F0DC    pop         ecx
 0040F0DD    lea         edx,[ebp-100]
 0040F0E3    mov         eax,dword ptr [ebp-10C]
 0040F0E9    mov         ecx,dword ptr [ebp-104]
 0040F0EF    call        @LStrFromPCharLen
 0040F0F4    mov         esp,ebp
 0040F0F6    pop         ebp
 0040F0F7    ret         8
end;*}

//0040F100
{*procedure sub_0040F100(?:?; ?:?; ?:?);
begin
 0040F100    push        ebp
 0040F101    mov         ebp,esp
 0040F103    push        ecx
 0040F104    mov         dword ptr [ebp-4],eax
 0040F107    push        dword ptr [ebp+0C]
 0040F10A    push        dword ptr [ebp+8]
 0040F10D    mov         eax,dword ptr [ebp-4]
 0040F110    mov         edx,dword ptr ds:[5718B8];0x0 gvar_005718B8
 0040F116    call        0040F094
 0040F11B    pop         ecx
 0040F11C    pop         ebp
 0040F11D    ret         8
end;*}

//0040F120
{*procedure sub_0040F120(?:?; ?:?; ?:?);
begin
 0040F120    push        ebp
 0040F121    mov         ebp,esp
 0040F123    push        ecx
 0040F124    mov         dword ptr [ebp-4],eax
 0040F127    push        dword ptr [ebp+0C]
 0040F12A    push        dword ptr [ebp+8]
 0040F12D    mov         eax,dword ptr [ebp-4]
 0040F130    mov         edx,dword ptr ds:[5718D0];0x0 gvar_005718D0
 0040F136    call        0040F094
 0040F13B    pop         ecx
 0040F13C    pop         ebp
 0040F13D    ret         8
end;*}

//0040F140
{*procedure sub_0040F140(?:?; ?:?; ?:?);
begin
 0040F140    push        ebp
 0040F141    mov         ebp,esp
 0040F143    push        ecx
 0040F144    mov         dword ptr [ebp-4],eax
 0040F147    push        dword ptr [ebp+0C]
 0040F14A    push        dword ptr [ebp+8]
 0040F14D    mov         eax,dword ptr [ebp-4]
 0040F150    xor         edx,edx
 0040F152    call        0040F094
 0040F157    pop         ecx
 0040F158    pop         ebp
 0040F159    ret         8
end;*}

//0040F15C
{*procedure sub_0040F15C(?:?; ?:?);
begin
 0040F15C    push        ebp
 0040F15D    mov         ebp,esp
 0040F15F    add         esp,0FFFFFFF4
 0040F162    mov         dword ptr [ebp-8],edx
 0040F165    mov         dword ptr [ebp-4],eax
 0040F168    mov         eax,dword ptr [ebp-8]
 0040F16B    mov         eax,dword ptr [eax]
 0040F16D    mov         dword ptr [ebp-0C],eax
>0040F170    jmp         0040F175
 0040F172    inc         dword ptr [ebp-0C]
 0040F175    mov         eax,dword ptr [ebp-4]
 0040F178    call        @LStrLen
 0040F17D    cmp         eax,dword ptr [ebp-0C]
>0040F180    jl          0040F18F
 0040F182    mov         eax,dword ptr [ebp-0C]
 0040F185    mov         edx,dword ptr [ebp-4]
 0040F188    cmp         byte ptr [edx+eax-1],20
>0040F18D    je          0040F172
 0040F18F    mov         eax,dword ptr [ebp-8]
 0040F192    mov         edx,dword ptr [ebp-0C]
 0040F195    mov         dword ptr [eax],edx
 0040F197    mov         esp,ebp
 0040F199    pop         ebp
 0040F19A    ret
end;*}

//0040F19C
{*function sub_0040F19C(?:?; ?:?; ?:?; ?:?):?;
begin
 0040F19C    push        ebp
 0040F19D    mov         ebp,esp
 0040F19F    add         esp,0FFFFFFE8
 0040F1A2    mov         dword ptr [ebp-0C],ecx
 0040F1A5    mov         dword ptr [ebp-8],edx
 0040F1A8    mov         dword ptr [ebp-4],eax
 0040F1AB    mov         byte ptr [ebp-0D],0
 0040F1AF    mov         eax,dword ptr [ebp+8]
 0040F1B2    mov         byte ptr [eax],0
 0040F1B5    mov         edx,dword ptr [ebp-8]
 0040F1B8    mov         eax,dword ptr [ebp-4]
 0040F1BB    call        0040F15C
 0040F1C0    mov         eax,dword ptr [ebp-8]
 0040F1C3    mov         eax,dword ptr [eax]
 0040F1C5    mov         dword ptr [ebp-14],eax
 0040F1C8    mov         word ptr [ebp-16],0
>0040F1CE    jmp         0040F1F2
 0040F1D0    mov         ax,word ptr [ebp-16]
 0040F1D4    add         eax,eax
 0040F1D6    lea         eax,[eax+eax*4]
 0040F1D9    mov         edx,dword ptr [ebp-4]
 0040F1DC    mov         ecx,dword ptr [ebp-14]
 0040F1DF    movzx       edx,byte ptr [edx+ecx-1]
 0040F1E4    sub         dx,30
 0040F1E8    add         ax,dx
 0040F1EB    mov         word ptr [ebp-16],ax
 0040F1EF    inc         dword ptr [ebp-14]
 0040F1F2    mov         eax,dword ptr [ebp-4]
 0040F1F5    call        @LStrLen
 0040F1FA    cmp         eax,dword ptr [ebp-14]
>0040F1FD    jl          0040F217
 0040F1FF    mov         eax,dword ptr [ebp-4]
 0040F202    mov         edx,dword ptr [ebp-14]
 0040F205    mov         al,byte ptr [eax+edx-1]
 0040F209    add         al,0D0
 0040F20B    sub         al,0A
>0040F20D    jae         0040F217
 0040F20F    cmp         word ptr [ebp-16],3E8
>0040F215    jb          0040F1D0
 0040F217    mov         eax,dword ptr [ebp-8]
 0040F21A    mov         eax,dword ptr [eax]
 0040F21C    cmp         eax,dword ptr [ebp-14]
>0040F21F    jge         0040F246
 0040F221    mov         al,byte ptr [ebp-14]
 0040F224    mov         edx,dword ptr [ebp-8]
 0040F227    mov         edx,dword ptr [edx]
 0040F229    sub         al,dl
 0040F22B    mov         edx,dword ptr [ebp+8]
 0040F22E    mov         byte ptr [edx],al
 0040F230    mov         eax,dword ptr [ebp-8]
 0040F233    mov         edx,dword ptr [ebp-14]
 0040F236    mov         dword ptr [eax],edx
 0040F238    mov         eax,dword ptr [ebp-0C]
 0040F23B    mov         dx,word ptr [ebp-16]
 0040F23F    mov         word ptr [eax],dx
 0040F242    mov         byte ptr [ebp-0D],1
 0040F246    mov         al,byte ptr [ebp-0D]
 0040F249    mov         esp,ebp
 0040F24B    pop         ebp
 0040F24C    ret         4
end;*}

//0040F250
{*function sub_0040F250(?:?; ?:?; ?:AnsiString):?;
begin
 0040F250    push        ebp
 0040F251    mov         ebp,esp
 0040F253    add         esp,0FFFFFFEC
 0040F256    push        ebx
 0040F257    xor         ebx,ebx
 0040F259    mov         dword ptr [ebp-14],ebx
 0040F25C    mov         dword ptr [ebp-0C],ecx
 0040F25F    mov         dword ptr [ebp-8],edx
 0040F262    mov         dword ptr [ebp-4],eax
 0040F265    xor         eax,eax
 0040F267    push        ebp
 0040F268    push        40F2D9
 0040F26D    push        dword ptr fs:[eax]
 0040F270    mov         dword ptr fs:[eax],esp
 0040F273    mov         byte ptr [ebp-0D],0
 0040F277    cmp         dword ptr [ebp-0C],0
>0040F27B    je          0040F2C3
 0040F27D    mov         edx,dword ptr [ebp-8]
 0040F280    mov         eax,dword ptr [ebp-4]
 0040F283    call        0040F15C
 0040F288    lea         eax,[ebp-14]
 0040F28B    push        eax
 0040F28C    mov         eax,dword ptr [ebp-0C]
 0040F28F    call        @LStrLen
 0040F294    mov         ecx,eax
 0040F296    mov         edx,dword ptr [ebp-8]
 0040F299    mov         edx,dword ptr [edx]
 0040F29B    mov         eax,dword ptr [ebp-4]
 0040F29E    call        @LStrCopy
 0040F2A3    mov         edx,dword ptr [ebp-14]
 0040F2A6    mov         eax,dword ptr [ebp-0C]
 0040F2A9    call        0040BF44
 0040F2AE    test        eax,eax
>0040F2B0    jne         0040F2C3
 0040F2B2    mov         eax,dword ptr [ebp-0C]
 0040F2B5    call        @LStrLen
 0040F2BA    mov         edx,dword ptr [ebp-8]
 0040F2BD    add         dword ptr [edx],eax
 0040F2BF    mov         byte ptr [ebp-0D],1
 0040F2C3    xor         eax,eax
 0040F2C5    pop         edx
 0040F2C6    pop         ecx
 0040F2C7    pop         ecx
 0040F2C8    mov         dword ptr fs:[eax],edx
 0040F2CB    push        40F2E0
 0040F2D0    lea         eax,[ebp-14]
 0040F2D3    call        @LStrClr
 0040F2D8    ret
>0040F2D9    jmp         @HandleFinally
>0040F2DE    jmp         0040F2D0
 0040F2E0    mov         al,byte ptr [ebp-0D]
 0040F2E3    pop         ebx
 0040F2E4    mov         esp,ebp
 0040F2E6    pop         ebp
 0040F2E7    ret
end;*}

//0040F2E8
{*function sub_0040F2E8(?:?; ?:?; ?:?):?;
begin
 0040F2E8    push        ebp
 0040F2E9    mov         ebp,esp
 0040F2EB    add         esp,0FFFFFFF4
 0040F2EE    mov         byte ptr [ebp-9],cl
 0040F2F1    mov         dword ptr [ebp-8],edx
 0040F2F4    mov         dword ptr [ebp-4],eax
 0040F2F7    mov         byte ptr [ebp-0A],0
 0040F2FB    mov         edx,dword ptr [ebp-8]
 0040F2FE    mov         eax,dword ptr [ebp-4]
 0040F301    call        0040F15C
 0040F306    mov         eax,dword ptr [ebp-4]
 0040F309    call        @LStrLen
 0040F30E    mov         edx,dword ptr [ebp-8]
 0040F311    cmp         eax,dword ptr [edx]
>0040F313    jl          0040F32F
 0040F315    mov         eax,dword ptr [ebp-8]
 0040F318    mov         eax,dword ptr [eax]
 0040F31A    mov         edx,dword ptr [ebp-4]
 0040F31D    mov         al,byte ptr [edx+eax-1]
 0040F321    cmp         al,byte ptr [ebp-9]
>0040F324    jne         0040F32F
 0040F326    mov         eax,dword ptr [ebp-8]
 0040F329    inc         dword ptr [eax]
 0040F32B    mov         byte ptr [ebp-0A],1
 0040F32F    mov         al,byte ptr [ebp-0A]
 0040F332    mov         esp,ebp
 0040F334    pop         ebp
 0040F335    ret
end;*}

//0040F338
{*function sub_0040F338(?:?):?;
begin
 0040F338    push        ebp
 0040F339    mov         ebp,esp
 0040F33B    add         esp,0FFFFFFF4
 0040F33E    mov         dword ptr [ebp-4],eax
 0040F341    mov         byte ptr [ebp-5],0
 0040F345    mov         dword ptr [ebp-0C],1
>0040F34C    jmp         0040F387
 0040F34E    mov         eax,dword ptr [ebp-0C]
 0040F351    mov         edx,dword ptr [ebp-4]
 0040F354    mov         al,byte ptr [edx+eax-1]
 0040F358    and         al,0DF
 0040F35A    sub         al,44
>0040F35C    je          0040F37E
 0040F35E    dec         al
>0040F360    je          0040F36C
 0040F362    sub         al,8
>0040F364    je          0040F378
 0040F366    sub         al,0C
>0040F368    je          0040F372
>0040F36A    jmp         0040F384
 0040F36C    mov         byte ptr [ebp-5],2
>0040F370    jmp         0040F398
 0040F372    mov         byte ptr [ebp-5],2
>0040F376    jmp         0040F398
 0040F378    mov         byte ptr [ebp-5],0
>0040F37C    jmp         0040F398
 0040F37E    mov         byte ptr [ebp-5],1
>0040F382    jmp         0040F398
 0040F384    inc         dword ptr [ebp-0C]
 0040F387    mov         eax,dword ptr [ebp-4]
 0040F38A    call        @LStrLen
 0040F38F    cmp         eax,dword ptr [ebp-0C]
>0040F392    jge         0040F34E
 0040F394    mov         byte ptr [ebp-5],0
 0040F398    mov         al,byte ptr [ebp-5]
 0040F39B    mov         esp,ebp
 0040F39D    pop         ebp
 0040F39E    ret
end;*}

//0040F3A0
{*procedure sub_0040F3A0(?:?; ?:?);
begin
 0040F3A0    push        ebp
 0040F3A1    mov         ebp,esp
 0040F3A3    add         esp,0FFFFFFF8
 0040F3A6    mov         dword ptr [ebp-8],edx
 0040F3A9    mov         dword ptr [ebp-4],eax
>0040F3AC    jmp         0040F3E1
 0040F3AE    mov         eax,dword ptr [ebp-8]
 0040F3B1    mov         eax,dword ptr [eax]
 0040F3B3    mov         edx,dword ptr [ebp-4]
 0040F3B6    mov         al,byte ptr [edx+eax-1]
 0040F3BA    and         eax,0FF
 0040F3BF    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>0040F3C6    jae         0040F3DC
 0040F3C8    mov         edx,dword ptr [ebp-8]
 0040F3CB    mov         edx,dword ptr [edx]
 0040F3CD    mov         eax,dword ptr [ebp-4]
 0040F3D0    call        004114C8
 0040F3D5    mov         edx,dword ptr [ebp-8]
 0040F3D8    mov         dword ptr [edx],eax
>0040F3DA    jmp         0040F3E1
 0040F3DC    mov         eax,dword ptr [ebp-8]
 0040F3DF    inc         dword ptr [eax]
 0040F3E1    mov         eax,dword ptr [ebp-4]
 0040F3E4    call        @LStrLen
 0040F3E9    mov         edx,dword ptr [ebp-8]
 0040F3EC    cmp         eax,dword ptr [edx]
>0040F3EE    jl          0040F402
 0040F3F0    mov         eax,dword ptr [ebp-8]
 0040F3F3    mov         eax,dword ptr [eax]
 0040F3F5    mov         edx,dword ptr [ebp-4]
 0040F3F8    mov         al,byte ptr [edx+eax-1]
 0040F3FC    add         al,0D0
 0040F3FE    sub         al,0A
>0040F400    jae         0040F3AE
 0040F402    pop         ecx
 0040F403    pop         ecx
 0040F404    pop         ebp
 0040F405    ret
end;*}

//0040F408
{*function sub_0040F408(?:?):?;
begin
 0040F408    push        ebp
 0040F409    mov         ebp,esp
 0040F40B    add         esp,0FFFFFFF4
 0040F40E    mov         dword ptr [ebp-4],eax
 0040F411    xor         eax,eax
 0040F413    mov         dword ptr [ebp-8],eax
 0040F416    mov         dword ptr [ebp-0C],1
 0040F41D    mov         eax,dword ptr [ebp-0C]
 0040F420    cmp         dword ptr [eax*4+571978],0;gvar_00571978
>0040F428    je          0040F464
 0040F42A    mov         eax,dword ptr [ebp-4]
 0040F42D    call        @LStrToPChar
 0040F432    push        eax
 0040F433    mov         eax,dword ptr [ebp-0C]
 0040F436    mov         eax,dword ptr [eax*4+571978];gvar_00571978
 0040F43D    call        @LStrToPChar
 0040F442    pop         edx
 0040F443    call        00411784
 0040F448    test        eax,eax
>0040F44A    je          0040F45B
 0040F44C    mov         eax,dword ptr [ebp-0C]
 0040F44F    mov         eax,dword ptr [eax*4+571994]
 0040F456    mov         dword ptr [ebp-8],eax
>0040F459    jmp         0040F464
 0040F45B    inc         dword ptr [ebp-0C]
 0040F45E    cmp         dword ptr [ebp-0C],8
>0040F462    jne         0040F41D
 0040F464    mov         eax,dword ptr [ebp-8]
 0040F467    mov         esp,ebp
 0040F469    pop         ebp
 0040F46A    ret
end;*}

//0040F46C
{*function sub_0040F46C(?:?; ?:?):?;
begin
 0040F46C    push        ebp
 0040F46D    mov         ebp,esp
 0040F46F    add         esp,0FFFFFFF8
 0040F472    mov         dword ptr [ebp-4],eax
 0040F475    cmp         dword ptr ds:[571970],12;gvar_00571970
>0040F47C    jne         0040F4BA
 0040F47E    cmp         dword ptr [ebp-4],63
>0040F482    jg          0040F4A9
 0040F484    call        0040E44C
 0040F489    movzx       ecx,ax
 0040F48C    mov         eax,dword ptr [ebp+8]
 0040F48F    mov         eax,dword ptr [eax-4]
 0040F492    cdq
 0040F493    xor         eax,edx
 0040F495    sub         eax,edx
 0040F497    add         ecx,eax
 0040F499    mov         eax,ecx
 0040F49B    mov         ecx,64
 0040F4A0    cdq
 0040F4A1    idiv        eax,ecx
 0040F4A3    imul        eax,eax,64
 0040F4A6    add         dword ptr [ebp-4],eax
 0040F4A9    mov         eax,dword ptr [ebp+8]
 0040F4AC    cmp         dword ptr [eax-4],0
>0040F4B0    jle         0040F4C0
 0040F4B2    mov         eax,dword ptr [ebp+8]
 0040F4B5    neg         dword ptr [eax-4]
>0040F4B8    jmp         0040F4C0
 0040F4BA    mov         eax,dword ptr [ebp+8]
 0040F4BD    dec         dword ptr [eax-4]
 0040F4C0    mov         eax,dword ptr [ebp+8]
 0040F4C3    mov         eax,dword ptr [eax-4]
 0040F4C6    add         eax,dword ptr [ebp-4]
 0040F4C9    mov         dword ptr [ebp-8],eax
 0040F4CC    mov         eax,dword ptr [ebp-8]
 0040F4CF    pop         ecx
 0040F4D0    pop         ecx
 0040F4D1    pop         ebp
 0040F4D2    ret
end;*}

//0040F4D4
{*function sub_0040F4D4(?:?; ?:?; ?:?):?;
begin
 0040F4D4    push        ebp
 0040F4D5    mov         ebp,esp
 0040F4D7    add         esp,0FFFFFFC8
 0040F4DA    push        ebx
 0040F4DB    xor         ebx,ebx
 0040F4DD    mov         dword ptr [ebp-38],ebx
 0040F4E0    mov         dword ptr [ebp-34],ebx
 0040F4E3    mov         dword ptr [ebp-30],ebx
 0040F4E6    mov         dword ptr [ebp-2C],ebx
 0040F4E9    mov         dword ptr [ebp-10],ecx
 0040F4EC    mov         dword ptr [ebp-0C],edx
 0040F4EF    mov         dword ptr [ebp-8],eax
 0040F4F2    xor         eax,eax
 0040F4F4    push        ebp
 0040F4F5    push        40F841
 0040F4FA    push        dword ptr fs:[eax]
 0040F4FD    mov         dword ptr fs:[eax],esp
 0040F500    mov         word ptr [ebp-1A],0
 0040F506    mov         word ptr [ebp-1C],0
 0040F50C    mov         word ptr [ebp-1E],0
 0040F512    mov         byte ptr [ebp-22],0
 0040F516    mov         byte ptr [ebp-11],0
 0040F51A    mov         eax,[005718B8];0x0 gvar_005718B8
 0040F51F    call        0040F338
 0040F524    mov         byte ptr [ebp-12],al
 0040F527    xor         eax,eax
 0040F529    mov         dword ptr [ebp-4],eax
 0040F52C    cmp         dword ptr ds:[5718B8],0;gvar_005718B8
>0040F533    je          0040F579
 0040F535    mov         eax,[005718B8];0x0 gvar_005718B8
 0040F53A    cmp         byte ptr [eax],67
>0040F53D    jne         0040F579
 0040F53F    mov         edx,dword ptr [ebp-0C]
 0040F542    mov         eax,dword ptr [ebp-8]
 0040F545    call        0040F3A0
 0040F54A    lea         eax,[ebp-30]
 0040F54D    push        eax
 0040F54E    mov         ecx,dword ptr [ebp-0C]
 0040F551    mov         ecx,dword ptr [ecx]
 0040F553    dec         ecx
 0040F554    mov         edx,1
 0040F559    mov         eax,dword ptr [ebp-8]
 0040F55C    call        @LStrCopy
 0040F561    mov         eax,dword ptr [ebp-30]
 0040F564    lea         edx,[ebp-2C]
 0040F567    call        0040BFEC
 0040F56C    mov         eax,dword ptr [ebp-2C]
 0040F56F    call        0040F408
 0040F574    mov         dword ptr [ebp-4],eax
>0040F577    jmp         0040F595
 0040F579    mov         edx,dword ptr ds:[5718B8];0x0 gvar_005718B8
 0040F57F    mov         eax,40F858;'e'
 0040F584    call        00411664
 0040F589    test        eax,eax
>0040F58B    jle         0040F595
 0040F58D    mov         eax,[00571998];0x0 gvar_00571998
 0040F592    mov         dword ptr [ebp-4],eax
 0040F595    lea         eax,[ebp-1F]
 0040F598    push        eax
 0040F599    lea         ecx,[ebp-14]
 0040F59C    mov         edx,dword ptr [ebp-0C]
 0040F59F    mov         eax,dword ptr [ebp-8]
 0040F5A2    call        0040F19C
 0040F5A7    test        al,al
>0040F5A9    je          0040F826
 0040F5AF    mov         edx,dword ptr [ebp-0C]
 0040F5B2    mov         cl,byte ptr ds:[5718B5];0x0 gvar_005718B5
 0040F5B8    mov         eax,dword ptr [ebp-8]
 0040F5BB    call        0040F2E8
 0040F5C0    test        al,al
>0040F5C2    je          0040F826
 0040F5C8    lea         eax,[ebp-20]
 0040F5CB    push        eax
 0040F5CC    lea         ecx,[ebp-16]
 0040F5CF    mov         edx,dword ptr [ebp-0C]
 0040F5D2    mov         eax,dword ptr [ebp-8]
 0040F5D5    call        0040F19C
 0040F5DA    test        al,al
>0040F5DC    je          0040F826
 0040F5E2    mov         edx,dword ptr [ebp-0C]
 0040F5E5    mov         cl,byte ptr ds:[5718B5];0x0 gvar_005718B5
 0040F5EB    mov         eax,dword ptr [ebp-8]
 0040F5EE    call        0040F2E8
 0040F5F3    test        al,al
>0040F5F5    je          0040F6E0
 0040F5FB    lea         eax,[ebp-21]
 0040F5FE    push        eax
 0040F5FF    lea         ecx,[ebp-18]
 0040F602    mov         edx,dword ptr [ebp-0C]
 0040F605    mov         eax,dword ptr [ebp-8]
 0040F608    call        0040F19C
 0040F60D    test        al,al
>0040F60F    je          0040F826
 0040F615    mov         al,byte ptr [ebp-12]
 0040F618    sub         al,1
>0040F61A    jb          0040F624
>0040F61C    je          0040F644
 0040F61E    dec         al
>0040F620    je          0040F664
>0040F622    jmp         0040F682
 0040F624    mov         ax,word ptr [ebp-18]
 0040F628    mov         word ptr [ebp-1A],ax
 0040F62C    mov         al,byte ptr [ebp-21]
 0040F62F    mov         byte ptr [ebp-22],al
 0040F632    mov         ax,word ptr [ebp-14]
 0040F636    mov         word ptr [ebp-1C],ax
 0040F63A    mov         ax,word ptr [ebp-16]
 0040F63E    mov         word ptr [ebp-1E],ax
>0040F642    jmp         0040F682
 0040F644    mov         ax,word ptr [ebp-18]
 0040F648    mov         word ptr [ebp-1A],ax
 0040F64C    mov         al,byte ptr [ebp-21]
 0040F64F    mov         byte ptr [ebp-22],al
 0040F652    mov         ax,word ptr [ebp-16]
 0040F656    mov         word ptr [ebp-1C],ax
 0040F65A    mov         ax,word ptr [ebp-14]
 0040F65E    mov         word ptr [ebp-1E],ax
>0040F662    jmp         0040F682
 0040F664    mov         ax,word ptr [ebp-14]
 0040F668    mov         word ptr [ebp-1A],ax
 0040F66C    mov         al,byte ptr [ebp-1F]
 0040F66F    mov         byte ptr [ebp-22],al
 0040F672    mov         ax,word ptr [ebp-16]
 0040F676    mov         word ptr [ebp-1C],ax
 0040F67A    mov         ax,word ptr [ebp-18]
 0040F67E    mov         word ptr [ebp-1E],ax
 0040F682    cmp         dword ptr [ebp-4],0
>0040F686    jle         0040F699
 0040F688    push        ebp
 0040F689    movzx       eax,word ptr [ebp-1A]
 0040F68D    call        0040F46C
 0040F692    pop         ecx
 0040F693    mov         word ptr [ebp-1A],ax
>0040F697    jmp         0040F711
 0040F699    cmp         byte ptr [ebp-22],2
>0040F69D    ja          0040F711
 0040F69F    call        0040E44C
 0040F6A4    movzx       eax,ax
 0040F6A7    movzx       edx,word ptr ds:[56B7EC];0xC08B0032 gvar_0056B7EC
 0040F6AE    sub         eax,edx
 0040F6B0    mov         dword ptr [ebp-28],eax
 0040F6B3    mov         eax,dword ptr [ebp-28]
 0040F6B6    mov         ecx,64
 0040F6BB    cdq
 0040F6BC    idiv        eax,ecx
 0040F6BE    imul        ax,ax,64
 0040F6C2    add         word ptr [ebp-1A],ax
 0040F6C6    cmp         word ptr ds:[56B7EC],0;gvar_0056B7EC
>0040F6CE    jbe         0040F711
 0040F6D0    movzx       eax,word ptr [ebp-1A]
 0040F6D4    cmp         eax,dword ptr [ebp-28]
>0040F6D7    jge         0040F711
 0040F6D9    add         word ptr [ebp-1A],64
>0040F6DE    jmp         0040F711
 0040F6E0    call        0040E44C
 0040F6E5    mov         word ptr [ebp-1A],ax
 0040F6E9    cmp         byte ptr [ebp-12],1
>0040F6ED    jne         0040F701
 0040F6EF    mov         ax,word ptr [ebp-14]
 0040F6F3    mov         word ptr [ebp-1E],ax
 0040F6F7    mov         ax,word ptr [ebp-16]
 0040F6FB    mov         word ptr [ebp-1C],ax
>0040F6FF    jmp         0040F711
 0040F701    mov         ax,word ptr [ebp-14]
 0040F705    mov         word ptr [ebp-1C],ax
 0040F709    mov         ax,word ptr [ebp-16]
 0040F70D    mov         word ptr [ebp-1E],ax
 0040F711    mov         edx,dword ptr [ebp-0C]
 0040F714    mov         cl,byte ptr ds:[5718B5];0x0 gvar_005718B5
 0040F71A    mov         eax,dword ptr [ebp-8]
 0040F71D    call        0040F2E8
 0040F722    mov         edx,dword ptr [ebp-0C]
 0040F725    mov         eax,dword ptr [ebp-8]
 0040F728    call        0040F15C
 0040F72D    cmp         byte ptr ds:[571978],0;gvar_00571978
>0040F734    je          0040F80E
 0040F73A    mov         edx,dword ptr ds:[5718B8];0x0 gvar_005718B8
 0040F740    mov         eax,40F864;'ddd'
 0040F745    call        @LStrPos
 0040F74A    test        eax,eax
>0040F74C    je          0040F80E
 0040F752    mov         eax,[005718CC];0x0 gvar_005718CC
 0040F757    mov         al,byte ptr [eax]
 0040F759    add         al,0D0
 0040F75B    sub         al,0A
>0040F75D    jae         0040F776
 0040F75F    mov         edx,dword ptr [ebp-0C]
 0040F762    mov         eax,dword ptr [ebp-8]
 0040F765    call        0040F3A0
>0040F76A    jmp         0040F80E
>0040F76F    jmp         0040F776
 0040F771    mov         eax,dword ptr [ebp-0C]
 0040F774    inc         dword ptr [eax]
 0040F776    mov         eax,dword ptr [ebp-8]
 0040F779    call        @LStrLen
 0040F77E    mov         edx,dword ptr [ebp-0C]
 0040F781    cmp         eax,dword ptr [edx]
>0040F783    jl          0040F794
 0040F785    mov         eax,dword ptr [ebp-0C]
 0040F788    mov         eax,dword ptr [eax]
 0040F78A    mov         edx,dword ptr [ebp-8]
 0040F78D    cmp         byte ptr [edx+eax-1],20
>0040F792    jne         0040F771
 0040F794    mov         edx,dword ptr [ebp-0C]
 0040F797    mov         eax,dword ptr [ebp-8]
 0040F79A    call        0040F15C
 0040F79F    mov         eax,dword ptr [ebp-8]
 0040F7A2    call        @LStrLen
 0040F7A7    mov         edx,dword ptr [ebp-0C]
 0040F7AA    cmp         eax,dword ptr [edx]
>0040F7AC    jl          0040F80E
 0040F7AE    lea         eax,[ebp-34]
 0040F7B1    push        eax
 0040F7B2    mov         eax,[005718C4];0x0 gvar_005718C4
 0040F7B7    call        @LStrLen
 0040F7BC    mov         ecx,eax
 0040F7BE    mov         edx,dword ptr [ebp-0C]
 0040F7C1    mov         edx,dword ptr [edx]
 0040F7C3    mov         eax,dword ptr [ebp-8]
 0040F7C6    call        @LStrCopy
 0040F7CB    mov         edx,dword ptr [ebp-34]
 0040F7CE    mov         eax,[005718C4];0x0 gvar_005718C4
 0040F7D3    call        0040BF44
 0040F7D8    test        eax,eax
>0040F7DA    je          0040F80E
 0040F7DC    lea         eax,[ebp-38]
 0040F7DF    push        eax
 0040F7E0    mov         eax,[005718C8];0x0 gvar_005718C8
 0040F7E5    call        @LStrLen
 0040F7EA    mov         ecx,eax
 0040F7EC    mov         edx,dword ptr [ebp-0C]
 0040F7EF    mov         edx,dword ptr [edx]
 0040F7F1    mov         eax,dword ptr [ebp-8]
 0040F7F4    call        @LStrCopy
 0040F7F9    mov         edx,dword ptr [ebp-38]
 0040F7FC    mov         eax,[005718C8];0x0 gvar_005718C8
 0040F801    call        0040BF44
 0040F806    test        eax,eax
>0040F808    jne         0040F776
 0040F80E    mov         eax,dword ptr [ebp-10]
 0040F811    push        eax
 0040F812    mov         cx,word ptr [ebp-1E]
 0040F816    mov         dx,word ptr [ebp-1C]
 0040F81A    mov         ax,word ptr [ebp-1A]
 0040F81E    call        0040E0D4
 0040F823    mov         byte ptr [ebp-11],al
 0040F826    xor         eax,eax
 0040F828    pop         edx
 0040F829    pop         ecx
 0040F82A    pop         ecx
 0040F82B    mov         dword ptr fs:[eax],edx
 0040F82E    push        40F848
 0040F833    lea         eax,[ebp-38]
 0040F836    mov         edx,4
 0040F83B    call        @LStrArrayClr
 0040F840    ret
>0040F841    jmp         @HandleFinally
>0040F846    jmp         0040F833
 0040F848    mov         al,byte ptr [ebp-11]
 0040F84B    pop         ebx
 0040F84C    mov         esp,ebp
 0040F84E    pop         ebp
 0040F84F    ret
end;*}

//0040F868
{*function sub_0040F868(?:?; ?:?; ?:?):?;
begin
 0040F868    push        ebp
 0040F869    mov         ebp,esp
 0040F86B    add         esp,0FFFFFFE0
 0040F86E    mov         dword ptr [ebp-0C],ecx
 0040F871    mov         dword ptr [ebp-8],edx
 0040F874    mov         dword ptr [ebp-4],eax
 0040F877    mov         byte ptr [ebp-0D],0
 0040F87B    mov         dword ptr [ebp-14],0FFFFFFFF
 0040F882    mov         edx,dword ptr [ebp-8]
 0040F885    mov         ecx,dword ptr ds:[5718C4];0x0 gvar_005718C4
 0040F88B    mov         eax,dword ptr [ebp-4]
 0040F88E    call        0040F250
 0040F893    test        al,al
>0040F895    jne         0040F8AB
 0040F897    mov         edx,dword ptr [ebp-8]
 0040F89A    mov         ecx,40FA74;'AM'
 0040F89F    mov         eax,dword ptr [ebp-4]
 0040F8A2    call        0040F250
 0040F8A7    test        al,al
>0040F8A9    je          0040F8B2
 0040F8AB    xor         eax,eax
 0040F8AD    mov         dword ptr [ebp-14],eax
>0040F8B0    jmp         0040F8E2
 0040F8B2    mov         edx,dword ptr [ebp-8]
 0040F8B5    mov         ecx,dword ptr ds:[5718C8];0x0 gvar_005718C8
 0040F8BB    mov         eax,dword ptr [ebp-4]
 0040F8BE    call        0040F250
 0040F8C3    test        al,al
>0040F8C5    jne         0040F8DB
 0040F8C7    mov         edx,dword ptr [ebp-8]
 0040F8CA    mov         ecx,40FA80;'PM'
 0040F8CF    mov         eax,dword ptr [ebp-4]
 0040F8D2    call        0040F250
 0040F8D7    test        al,al
>0040F8D9    je          0040F8E2
 0040F8DB    mov         dword ptr [ebp-14],0C
 0040F8E2    cmp         dword ptr [ebp-14],0
>0040F8E6    jl          0040F8F3
 0040F8E8    mov         edx,dword ptr [ebp-8]
 0040F8EB    mov         eax,dword ptr [ebp-4]
 0040F8EE    call        0040F15C
 0040F8F3    lea         eax,[ebp-1D]
 0040F8F6    push        eax
 0040F8F7    lea         ecx,[ebp-16]
 0040F8FA    mov         edx,dword ptr [ebp-8]
 0040F8FD    mov         eax,dword ptr [ebp-4]
 0040F900    call        0040F19C
 0040F905    test        al,al
>0040F907    je          0040FA63
 0040F90D    mov         word ptr [ebp-18],0
 0040F913    mov         word ptr [ebp-1A],0
 0040F919    mov         word ptr [ebp-1C],0
 0040F91F    mov         edx,dword ptr [ebp-8]
 0040F922    mov         cl,byte ptr ds:[5718C0];0x0 gvar_005718C0
 0040F928    mov         eax,dword ptr [ebp-4]
 0040F92B    call        0040F2E8
 0040F930    test        al,al
>0040F932    je          0040F9AC
 0040F934    lea         eax,[ebp-1D]
 0040F937    push        eax
 0040F938    lea         ecx,[ebp-18]
 0040F93B    mov         edx,dword ptr [ebp-8]
 0040F93E    mov         eax,dword ptr [ebp-4]
 0040F941    call        0040F19C
 0040F946    test        al,al
>0040F948    je          0040FA63
 0040F94E    mov         edx,dword ptr [ebp-8]
 0040F951    mov         cl,byte ptr ds:[5718C0];0x0 gvar_005718C0
 0040F957    mov         eax,dword ptr [ebp-4]
 0040F95A    call        0040F2E8
 0040F95F    test        al,al
>0040F961    je          0040F9AC
 0040F963    lea         eax,[ebp-1D]
 0040F966    push        eax
 0040F967    lea         ecx,[ebp-1A]
 0040F96A    mov         edx,dword ptr [ebp-8]
 0040F96D    mov         eax,dword ptr [ebp-4]
 0040F970    call        0040F19C
 0040F975    test        al,al
>0040F977    je          0040FA63
 0040F97D    mov         edx,dword ptr [ebp-8]
 0040F980    mov         cl,byte ptr ds:[5718B3];0x0 DecimalSeparator:Char
 0040F986    mov         eax,dword ptr [ebp-4]
 0040F989    call        0040F2E8
 0040F98E    test        al,al
>0040F990    je          0040F9AC
 0040F992    lea         eax,[ebp-1D]
 0040F995    push        eax
 0040F996    lea         ecx,[ebp-1C]
 0040F999    mov         edx,dword ptr [ebp-8]
 0040F99C    mov         eax,dword ptr [ebp-4]
 0040F99F    call        0040F19C
 0040F9A4    test        al,al
>0040F9A6    je          0040FA63
 0040F9AC    cmp         dword ptr [ebp-14],0
>0040F9B0    jge         0040FA12
 0040F9B2    mov         edx,dword ptr [ebp-8]
 0040F9B5    mov         ecx,dword ptr ds:[5718C4];0x0 gvar_005718C4
 0040F9BB    mov         eax,dword ptr [ebp-4]
 0040F9BE    call        0040F250
 0040F9C3    test        al,al
>0040F9C5    jne         0040F9DB
 0040F9C7    mov         edx,dword ptr [ebp-8]
 0040F9CA    mov         ecx,40FA74;'AM'
 0040F9CF    mov         eax,dword ptr [ebp-4]
 0040F9D2    call        0040F250
 0040F9D7    test        al,al
>0040F9D9    je          0040F9E2
 0040F9DB    xor         eax,eax
 0040F9DD    mov         dword ptr [ebp-14],eax
>0040F9E0    jmp         0040FA12
 0040F9E2    mov         edx,dword ptr [ebp-8]
 0040F9E5    mov         ecx,dword ptr ds:[5718C8];0x0 gvar_005718C8
 0040F9EB    mov         eax,dword ptr [ebp-4]
 0040F9EE    call        0040F250
 0040F9F3    test        al,al
>0040F9F5    jne         0040FA0B
 0040F9F7    mov         edx,dword ptr [ebp-8]
 0040F9FA    mov         ecx,40FA80;'PM'
 0040F9FF    mov         eax,dword ptr [ebp-4]
 0040FA02    call        0040F250
 0040FA07    test        al,al
>0040FA09    je          0040FA12
 0040FA0B    mov         dword ptr [ebp-14],0C
 0040FA12    cmp         dword ptr [ebp-14],0
>0040FA16    jl          0040FA3B
 0040FA18    cmp         word ptr [ebp-16],0
>0040FA1D    je          0040FA63
 0040FA1F    cmp         word ptr [ebp-16],0C
>0040FA24    ja          0040FA63
 0040FA26    cmp         word ptr [ebp-16],0C
>0040FA2B    jne         0040FA33
 0040FA2D    mov         word ptr [ebp-16],0
 0040FA33    mov         ax,word ptr [ebp-14]
 0040FA37    add         word ptr [ebp-16],ax
 0040FA3B    mov         edx,dword ptr [ebp-8]
 0040FA3E    mov         eax,dword ptr [ebp-4]
 0040FA41    call        0040F15C
 0040FA46    mov         ax,word ptr [ebp-1C]
 0040FA4A    push        eax
 0040FA4B    mov         eax,dword ptr [ebp-0C]
 0040FA4E    push        eax
 0040FA4F    mov         cx,word ptr [ebp-1A]
 0040FA53    mov         dx,word ptr [ebp-18]
 0040FA57    mov         ax,word ptr [ebp-16]
 0040FA5B    call        0040DF6C
 0040FA60    mov         byte ptr [ebp-0D],al
 0040FA63    mov         al,byte ptr [ebp-0D]
 0040FA66    mov         esp,ebp
 0040FA68    pop         ebp
 0040FA69    ret
end;*}

//0040FA84
{*function sub_0040FA84(?:?):?;
begin
 0040FA84    push        ebp
 0040FA85    mov         ebp,esp
 0040FA87    add         esp,0FFFFFFE8
 0040FA8A    mov         dword ptr [ebp-4],eax
 0040FA8D    lea         edx,[ebp-10]
 0040FA90    mov         eax,dword ptr [ebp-4]
 0040FA93    call        0040FABC
 0040FA98    test        al,al
>0040FA9A    jne         0040FAB5
 0040FA9C    mov         eax,dword ptr [ebp-4]
 0040FA9F    mov         dword ptr [ebp-18],eax
 0040FAA2    mov         byte ptr [ebp-14],0B
 0040FAA6    lea         edx,[ebp-18]
 0040FAA9    mov         eax,[0056E2C0];^SInvalidDate:TResStringRec
 0040FAAE    xor         ecx,ecx
 0040FAB0    call        0040BBDC
 0040FAB5    fld         qword ptr [ebp-10]
 0040FAB8    mov         esp,ebp
 0040FABA    pop         ebp
 0040FABB    ret
end;*}

//0040FABC
{*function sub_0040FABC(?:?; ?:?):?;
begin
 0040FABC    push        ebp
 0040FABD    mov         ebp,esp
 0040FABF    add         esp,0FFFFFFF0
 0040FAC2    mov         dword ptr [ebp-8],edx
 0040FAC5    mov         dword ptr [ebp-4],eax
 0040FAC8    mov         dword ptr [ebp-10],1
 0040FACF    mov         ecx,dword ptr [ebp-8]
 0040FAD2    lea         edx,[ebp-10]
 0040FAD5    mov         eax,dword ptr [ebp-4]
 0040FAD8    call        0040F4D4
 0040FADD    test        al,al
>0040FADF    je          0040FAEE
 0040FAE1    mov         eax,dword ptr [ebp-4]
 0040FAE4    call        @LStrLen
 0040FAE9    cmp         eax,dword ptr [ebp-10]
>0040FAEC    jl          0040FAF2
 0040FAEE    xor         eax,eax
>0040FAF0    jmp         0040FAF4
 0040FAF2    mov         al,1
 0040FAF4    mov         byte ptr [ebp-9],al
 0040FAF7    mov         al,byte ptr [ebp-9]
 0040FAFA    mov         esp,ebp
 0040FAFC    pop         ebp
 0040FAFD    ret
end;*}

//0040FB00
{*function sub_0040FB00(?:?):?;
begin
 0040FB00    push        ebp
 0040FB01    mov         ebp,esp
 0040FB03    add         esp,0FFFFFFE8
 0040FB06    mov         dword ptr [ebp-4],eax
 0040FB09    lea         edx,[ebp-10]
 0040FB0C    mov         eax,dword ptr [ebp-4]
 0040FB0F    call        0040FB38
 0040FB14    test        al,al
>0040FB16    jne         0040FB31
 0040FB18    mov         eax,dword ptr [ebp-4]
 0040FB1B    mov         dword ptr [ebp-18],eax
 0040FB1E    mov         byte ptr [ebp-14],0B
 0040FB22    lea         edx,[ebp-18]
 0040FB25    mov         eax,[0056E14C];^SInvalidTime:TResStringRec
 0040FB2A    xor         ecx,ecx
 0040FB2C    call        0040BBDC
 0040FB31    fld         qword ptr [ebp-10]
 0040FB34    mov         esp,ebp
 0040FB36    pop         ebp
 0040FB37    ret
end;*}

//0040FB38
{*function sub_0040FB38(?:?; ?:?):?;
begin
 0040FB38    push        ebp
 0040FB39    mov         ebp,esp
 0040FB3B    add         esp,0FFFFFFF0
 0040FB3E    mov         dword ptr [ebp-8],edx
 0040FB41    mov         dword ptr [ebp-4],eax
 0040FB44    mov         dword ptr [ebp-10],1
 0040FB4B    mov         ecx,dword ptr [ebp-8]
 0040FB4E    lea         edx,[ebp-10]
 0040FB51    mov         eax,dword ptr [ebp-4]
 0040FB54    call        0040F868
 0040FB59    test        al,al
>0040FB5B    je          0040FB6A
 0040FB5D    mov         eax,dword ptr [ebp-4]
 0040FB60    call        @LStrLen
 0040FB65    cmp         eax,dword ptr [ebp-10]
>0040FB68    jl          0040FB6E
 0040FB6A    xor         eax,eax
>0040FB6C    jmp         0040FB70
 0040FB6E    mov         al,1
 0040FB70    mov         byte ptr [ebp-9],al
 0040FB73    mov         al,byte ptr [ebp-9]
 0040FB76    mov         esp,ebp
 0040FB78    pop         ebp
 0040FB79    ret
end;*}

//0040FB7C
{*function sub_0040FB7C(?:?):?;
begin
 0040FB7C    push        ebp
 0040FB7D    mov         ebp,esp
 0040FB7F    add         esp,0FFFFFFE8
 0040FB82    mov         dword ptr [ebp-4],eax
 0040FB85    lea         edx,[ebp-10]
 0040FB88    mov         eax,dword ptr [ebp-4]
 0040FB8B    call        0040FBB4
 0040FB90    test        al,al
>0040FB92    jne         0040FBAD
 0040FB94    mov         eax,dword ptr [ebp-4]
 0040FB97    mov         dword ptr [ebp-18],eax
 0040FB9A    mov         byte ptr [ebp-14],0B
 0040FB9E    lea         edx,[ebp-18]
 0040FBA1    mov         eax,[0056E024];^SInvalidDateTime:TResStringRec
 0040FBA6    xor         ecx,ecx
 0040FBA8    call        0040BBDC
 0040FBAD    fld         qword ptr [ebp-10]
 0040FBB0    mov         esp,ebp
 0040FBB2    pop         ebp
 0040FBB3    ret
end;*}

//0040FBB4
{*function sub_0040FBB4(?:?; ?:?):?;
begin
 0040FBB4    push        ebp
 0040FBB5    mov         ebp,esp
 0040FBB7    add         esp,0FFFFFFE0
 0040FBBA    mov         dword ptr [ebp-8],edx
 0040FBBD    mov         dword ptr [ebp-4],eax
 0040FBC0    mov         byte ptr [ebp-9],1
 0040FBC4    mov         dword ptr [ebp-10],1
 0040FBCB    xor         eax,eax
 0040FBCD    mov         dword ptr [ebp-20],eax
 0040FBD0    mov         dword ptr [ebp-1C],eax
 0040FBD3    lea         ecx,[ebp-18]
 0040FBD6    lea         edx,[ebp-10]
 0040FBD9    mov         eax,dword ptr [ebp-4]
 0040FBDC    call        0040F4D4
 0040FBE1    test        al,al
>0040FBE3    je          0040FC04
 0040FBE5    mov         eax,dword ptr [ebp-4]
 0040FBE8    call        @LStrLen
 0040FBED    cmp         eax,dword ptr [ebp-10]
>0040FBF0    jl          0040FC14
 0040FBF2    lea         ecx,[ebp-20]
 0040FBF5    lea         edx,[ebp-10]
 0040FBF8    mov         eax,dword ptr [ebp-4]
 0040FBFB    call        0040F868
 0040FC00    test        al,al
>0040FC02    jne         0040FC14
 0040FC04    mov         edx,dword ptr [ebp-8]
 0040FC07    mov         eax,dword ptr [ebp-4]
 0040FC0A    call        0040FB38
 0040FC0F    mov         byte ptr [ebp-9],al
>0040FC12    jmp         0040FC3C
 0040FC14    fld         qword ptr [ebp-18]
 0040FC17    fcomp       dword ptr ds:[40FC44];0:Single
 0040FC1D    fnstsw      al
 0040FC1F    sahf
>0040FC20    jb          0040FC30
 0040FC22    fld         qword ptr [ebp-18]
 0040FC25    fadd        qword ptr [ebp-20]
 0040FC28    mov         eax,dword ptr [ebp-8]
 0040FC2B    fstp        qword ptr [eax]
 0040FC2D    wait
>0040FC2E    jmp         0040FC3C
 0040FC30    fld         qword ptr [ebp-18]
 0040FC33    fsub        qword ptr [ebp-20]
 0040FC36    mov         eax,dword ptr [ebp-8]
 0040FC39    fstp        qword ptr [eax]
 0040FC3B    wait
 0040FC3C    mov         al,byte ptr [ebp-9]
 0040FC3F    mov         esp,ebp
 0040FC41    pop         ebp
 0040FC42    ret
end;*}

//0040FC48
function SysErrorMessage(ErrorCode:Integer):AnsiString;
begin
{*
 0040FC48    push        ebp
 0040FC49    mov         ebp,esp
 0040FC4B    add         esp,0FFFFFEF4
 0040FC51    mov         dword ptr [ebp-8],edx
 0040FC54    mov         dword ptr [ebp-4],eax
 0040FC57    push        0
 0040FC59    push        100
 0040FC5E    lea         eax,[ebp-10C]
 0040FC64    push        eax
 0040FC65    push        0
 0040FC67    mov         eax,dword ptr [ebp-4]
 0040FC6A    push        eax
 0040FC6B    push        0
 0040FC6D    push        3200
 0040FC72    call        kernel32.FormatMessageA
 0040FC77    mov         dword ptr [ebp-0C],eax
>0040FC7A    jmp         0040FC7F
 0040FC7C    dec         dword ptr [ebp-0C]
 0040FC7F    cmp         dword ptr [ebp-0C],0
>0040FC83    jle         0040FC97
 0040FC85    mov         eax,dword ptr [ebp-0C]
 0040FC88    mov         al,byte ptr [ebp+eax-10D]
 0040FC8F    sub         al,21
>0040FC91    jb          0040FC7C
 0040FC93    sub         al,0D
>0040FC95    je          0040FC7C
 0040FC97    lea         edx,[ebp-10C]
 0040FC9D    mov         eax,dword ptr [ebp-8]
 0040FCA0    mov         ecx,dword ptr [ebp-0C]
 0040FCA3    call        @LStrFromPCharLen
 0040FCA8    mov         esp,ebp
 0040FCAA    pop         ebp
 0040FCAB    ret
*}
end;

//0040FCAC
{*procedure sub_0040FCAC(?:Integer; ?:?; ?:AnsiString; ?:?);
begin
 0040FCAC    push        ebp
 0040FCAD    mov         ebp,esp
 0040FCAF    add         esp,0FFFFFEF0
 0040FCB5    mov         dword ptr [ebp-0C],ecx
 0040FCB8    mov         dword ptr [ebp-8],edx
 0040FCBB    mov         dword ptr [ebp-4],eax
 0040FCBE    push        100
 0040FCC3    lea         eax,[ebp-110]
 0040FCC9    push        eax
 0040FCCA    mov         eax,dword ptr [ebp-8]
 0040FCCD    push        eax
 0040FCCE    mov         eax,dword ptr [ebp-4]
 0040FCD1    push        eax
 0040FCD2    call        kernel32.GetLocaleInfoA
 0040FCD7    mov         dword ptr [ebp-10],eax
 0040FCDA    cmp         dword ptr [ebp-10],0
>0040FCDE    jle         0040FCF4
 0040FCE0    mov         ecx,dword ptr [ebp-10]
 0040FCE3    dec         ecx
 0040FCE4    lea         edx,[ebp-110]
 0040FCEA    mov         eax,dword ptr [ebp+8]
 0040FCED    call        @LStrFromPCharLen
>0040FCF2    jmp         0040FCFF
 0040FCF4    mov         eax,dword ptr [ebp+8]
 0040FCF7    mov         edx,dword ptr [ebp-0C]
 0040FCFA    call        @LStrAsg
 0040FCFF    mov         esp,ebp
 0040FD01    pop         ebp
 0040FD02    ret         4
end;*}

//0040FD08
{*function sub_0040FD08(?:Integer; ?:?; ?:?):?;
begin
 0040FD08    push        ebp
 0040FD09    mov         ebp,esp
 0040FD0B    add         esp,0FFFFFFF4
 0040FD0E    mov         byte ptr [ebp-9],cl
 0040FD11    mov         dword ptr [ebp-8],edx
 0040FD14    mov         dword ptr [ebp-4],eax
 0040FD17    push        2
 0040FD19    lea         eax,[ebp-0C]
 0040FD1C    push        eax
 0040FD1D    mov         eax,dword ptr [ebp-8]
 0040FD20    push        eax
 0040FD21    mov         eax,dword ptr [ebp-4]
 0040FD24    push        eax
 0040FD25    call        kernel32.GetLocaleInfoA
 0040FD2A    test        eax,eax
>0040FD2C    jle         0040FD36
 0040FD2E    mov         al,byte ptr [ebp-0C]
 0040FD31    mov         byte ptr [ebp-0A],al
>0040FD34    jmp         0040FD3C
 0040FD36    mov         al,byte ptr [ebp-9]
 0040FD39    mov         byte ptr [ebp-0A],al
 0040FD3C    mov         al,byte ptr [ebp-0A]
 0040FD3F    mov         esp,ebp
 0040FD41    pop         ebp
 0040FD42    ret
end;*}

//0040FD44
{*procedure sub_0040FD44(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0040FD44    push        ebp
 0040FD45    mov         ebp,esp
 0040FD47    add         esp,0FFFFFFF4
 0040FD4A    mov         dword ptr [ebp-0C],ecx
 0040FD4D    mov         dword ptr [ebp-8],edx
 0040FD50    mov         dword ptr [ebp-4],eax
 0040FD53    mov         eax,dword ptr [ebp+8]
 0040FD56    push        eax
 0040FD57    mov         eax,dword ptr [ebp+10]
 0040FD5A    mov         eax,dword ptr [eax-4]
 0040FD5D    xor         ecx,ecx
 0040FD5F    mov         edx,dword ptr [ebp-4]
 0040FD62    call        0040FCAC
 0040FD67    mov         eax,dword ptr [ebp+8]
 0040FD6A    cmp         dword ptr [eax],0
>0040FD6D    jne         0040FD80
 0040FD6F    mov         eax,dword ptr [ebp-0C]
 0040FD72    mov         edx,dword ptr [ebp-8]
 0040FD75    mov         eax,dword ptr [eax+edx*4]
 0040FD78    mov         edx,dword ptr [ebp+8]
 0040FD7B    call        LoadResString
 0040FD80    mov         esp,ebp
 0040FD82    pop         ebp
 0040FD83    ret         8
end;*}

//0040FD88
procedure sub_0040FD88;
begin
{*
 0040FD88    push        ebp
 0040FD89    mov         ebp,esp
 0040FD8B    xor         ecx,ecx
 0040FD8D    push        ecx
 0040FD8E    push        ecx
 0040FD8F    push        ecx
 0040FD90    push        ecx
 0040FD91    push        ecx
 0040FD92    push        ecx
 0040FD93    push        ecx
 0040FD94    xor         eax,eax
 0040FD96    push        ebp
 0040FD97    push        40FEB0
 0040FD9C    push        dword ptr fs:[eax]
 0040FD9F    mov         dword ptr fs:[eax],esp
 0040FDA2    call        kernel32.GetThreadLocale
 0040FDA7    mov         dword ptr [ebp-4],eax
 0040FDAA    mov         dword ptr [ebp-8],1
 0040FDB1    push        ebp
 0040FDB2    push        0B
 0040FDB4    lea         eax,[ebp-10]
 0040FDB7    push        eax
 0040FDB8    mov         ecx,56B89C;^SShortMonthNameJan:TResStringRec
 0040FDBD    mov         edx,dword ptr [ebp-8]
 0040FDC0    dec         edx
 0040FDC1    mov         eax,dword ptr [ebp-8]
 0040FDC4    add         eax,44
 0040FDC7    dec         eax
 0040FDC8    call        0040FD44
 0040FDCD    pop         ecx
 0040FDCE    mov         edx,dword ptr [ebp-10]
 0040FDD1    mov         eax,dword ptr [ebp-8]
 0040FDD4    lea         eax,[eax*4+5718D0];gvar_005718D0
 0040FDDB    call        @LStrAsg
 0040FDE0    push        ebp
 0040FDE1    push        0B
 0040FDE3    lea         eax,[ebp-14]
 0040FDE6    push        eax
 0040FDE7    mov         ecx,56B8CC;^SLongMonthNameJan:TResStringRec
 0040FDEC    mov         edx,dword ptr [ebp-8]
 0040FDEF    dec         edx
 0040FDF0    mov         eax,dword ptr [ebp-8]
 0040FDF3    add         eax,38
 0040FDF6    dec         eax
 0040FDF7    call        0040FD44
 0040FDFC    pop         ecx
 0040FDFD    mov         edx,dword ptr [ebp-14]
 0040FE00    mov         eax,dword ptr [ebp-8]
 0040FE03    lea         eax,[eax*4+571900]
 0040FE0A    call        @LStrAsg
 0040FE0F    inc         dword ptr [ebp-8]
 0040FE12    cmp         dword ptr [ebp-8],0D
>0040FE16    jne         0040FDB1
 0040FE18    mov         dword ptr [ebp-8],1
 0040FE1F    mov         eax,dword ptr [ebp-8]
 0040FE22    add         eax,5
 0040FE25    mov         ecx,7
 0040FE2A    cdq
 0040FE2B    idiv        eax,ecx
 0040FE2D    mov         dword ptr [ebp-0C],edx
 0040FE30    push        ebp
 0040FE31    push        6
 0040FE33    lea         eax,[ebp-18]
 0040FE36    push        eax
 0040FE37    mov         ecx,56B8FC;^SShortDayNameSun:TResStringRec
 0040FE3C    mov         edx,dword ptr [ebp-8]
 0040FE3F    dec         edx
 0040FE40    mov         eax,dword ptr [ebp-0C]
 0040FE43    add         eax,31
 0040FE46    call        0040FD44
 0040FE4B    pop         ecx
 0040FE4C    mov         edx,dword ptr [ebp-18]
 0040FE4F    mov         eax,dword ptr [ebp-8]
 0040FE52    lea         eax,[eax*4+571930]
 0040FE59    call        @LStrAsg
 0040FE5E    push        ebp
 0040FE5F    push        6
 0040FE61    lea         eax,[ebp-1C]
 0040FE64    push        eax
 0040FE65    mov         ecx,56B918;^SLongDayNameSun:TResStringRec
 0040FE6A    mov         edx,dword ptr [ebp-8]
 0040FE6D    dec         edx
 0040FE6E    mov         eax,dword ptr [ebp-0C]
 0040FE71    add         eax,2A
 0040FE74    call        0040FD44
 0040FE79    pop         ecx
 0040FE7A    mov         edx,dword ptr [ebp-1C]
 0040FE7D    mov         eax,dword ptr [ebp-8]
 0040FE80    lea         eax,[eax*4+57194C]
 0040FE87    call        @LStrAsg
 0040FE8C    inc         dword ptr [ebp-8]
 0040FE8F    cmp         dword ptr [ebp-8],8
>0040FE93    jne         0040FE1F
 0040FE95    xor         eax,eax
 0040FE97    pop         edx
 0040FE98    pop         ecx
 0040FE99    pop         ecx
 0040FE9A    mov         dword ptr fs:[eax],edx
 0040FE9D    push        40FEB7
 0040FEA2    lea         eax,[ebp-1C]
 0040FEA5    mov         edx,4
 0040FEAA    call        @LStrArrayClr
 0040FEAF    ret
>0040FEB0    jmp         @HandleFinally
>0040FEB5    jmp         0040FEA2
 0040FEB7    mov         esp,ebp
 0040FEB9    pop         ebp
 0040FEBA    ret
*}
end;

//0040FF94
procedure sub_0040FF94;
begin
{*
 0040FF94    push        ebp
 0040FF95    mov         ebp,esp
 0040FF97    add         esp,0FFFFFFF4
 0040FF9A    xor         eax,eax
 0040FF9C    mov         dword ptr [ebp-0C],eax
 0040FF9F    xor         eax,eax
 0040FFA1    push        ebp
 0040FFA2    push        410040
 0040FFA7    push        dword ptr fs:[eax]
 0040FFAA    mov         dword ptr fs:[eax],esp
 0040FFAD    lea         eax,[ebp-0C]
 0040FFB0    push        eax
 0040FFB1    call        kernel32.GetThreadLocale
 0040FFB6    mov         ecx,410054;'1'
 0040FFBB    mov         edx,100B
 0040FFC0    call        0040FCAC
 0040FFC5    mov         eax,dword ptr [ebp-0C]
 0040FFC8    mov         edx,1
 0040FFCD    call        0040C4A8
 0040FFD2    mov         dword ptr [ebp-8],eax
 0040FFD5    mov         eax,dword ptr [ebp-8]
 0040FFD8    add         eax,0FFFFFFFD
 0040FFDB    sub         eax,3
>0040FFDE    jae         0041002A
 0040FFE0    push        4
 0040FFE2    mov         eax,dword ptr [ebp-8]
 0040FFE5    push        eax
 0040FFE6    call        kernel32.GetThreadLocale
 0040FFEB    push        eax
 0040FFEC    push        40FEBC
 0040FFF1    call        kernel32.EnumCalendarInfoA
 0040FFF6    mov         dword ptr [ebp-4],1
 0040FFFD    mov         eax,dword ptr [ebp-4]
 00410000    mov         dword ptr [eax*4+571994],0FFFFFFFF
 0041000B    inc         dword ptr [ebp-4]
 0041000E    cmp         dword ptr [ebp-4],8
>00410012    jne         0040FFFD
 00410014    push        3
 00410016    mov         eax,dword ptr [ebp-8]
 00410019    push        eax
 0041001A    call        kernel32.GetThreadLocale
 0041001F    push        eax
 00410020    push        40FF08
 00410025    call        kernel32.EnumCalendarInfoA
 0041002A    xor         eax,eax
 0041002C    pop         edx
 0041002D    pop         ecx
 0041002E    pop         ecx
 0041002F    mov         dword ptr fs:[eax],edx
 00410032    push        410047
 00410037    lea         eax,[ebp-0C]
 0041003A    call        @LStrClr
 0041003F    ret
>00410040    jmp         @HandleFinally
>00410045    jmp         00410037
 00410047    mov         esp,ebp
 00410049    pop         ebp
 0041004A    ret
*}
end;

//00410058
{*procedure sub_00410058(?:?; ?:?);
begin
 00410058    push        ebp
 00410059    mov         ebp,esp
 0041005B    add         esp,0FFFFFFD8
 0041005E    xor         ecx,ecx
 00410060    mov         dword ptr [ebp-28],ecx
 00410063    mov         dword ptr [ebp-24],ecx
 00410066    mov         dword ptr [ebp-20],ecx
 00410069    mov         dword ptr [ebp-1C],ecx
 0041006C    mov         dword ptr [ebp-8],edx
 0041006F    mov         dword ptr [ebp-4],eax
 00410072    xor         eax,eax
 00410074    push        ebp
 00410075    push        41029E
 0041007A    push        dword ptr fs:[eax]
 0041007D    mov         dword ptr fs:[eax],esp
 00410080    mov         dword ptr [ebp-0C],1
 00410087    mov         eax,dword ptr [ebp-8]
 0041008A    call        @LStrClr
 0041008F    lea         eax,[ebp-1C]
 00410092    push        eax
 00410093    call        kernel32.GetThreadLocale
 00410098    mov         ecx,4102B4;'1'
 0041009D    mov         edx,1009
 004100A2    call        0040FCAC
 004100A7    mov         eax,dword ptr [ebp-1C]
 004100AA    mov         edx,1
 004100AF    call        0040C4A8
 004100B4    mov         dword ptr [ebp-14],eax
 004100B7    mov         eax,dword ptr [ebp-14]
 004100BA    add         eax,0FFFFFFFD
 004100BD    sub         eax,3
>004100C0    jb          00410272
 004100C6    mov         eax,[00571970];0x0 gvar_00571970
 004100CB    sub         eax,4
>004100CE    je          004100DC
 004100D0    add         eax,0FFFFFFF3
 004100D3    sub         eax,2
>004100D6    jb          004100DC
 004100D8    xor         eax,eax
>004100DA    jmp         004100DE
 004100DC    mov         al,1
 004100DE    mov         byte ptr [ebp-15],al
 004100E1    cmp         byte ptr [ebp-15],0
>004100E5    je          00410130
>004100E7    jmp         0041011E
 004100E9    mov         eax,dword ptr [ebp-0C]
 004100EC    mov         edx,dword ptr [ebp-4]
 004100EF    mov         al,byte ptr [edx+eax-1]
 004100F3    sub         al,47
>004100F5    je          0041011B
 004100F7    sub         al,20
>004100F9    je          0041011B
 004100FB    lea         eax,[ebp-20]
 004100FE    mov         edx,dword ptr [ebp-0C]
 00410101    mov         ecx,dword ptr [ebp-4]
 00410104    mov         dl,byte ptr [ecx+edx-1]
 00410108    call        @LStrFromChar
 0041010D    mov         edx,dword ptr [ebp-20]
 00410110    mov         eax,dword ptr [ebp-8]
 00410113    call        @LStrCat
 00410118    mov         eax,dword ptr [ebp-8]
 0041011B    inc         dword ptr [ebp-0C]
 0041011E    mov         eax,dword ptr [ebp-4]
 00410121    call        @LStrLen
 00410126    cmp         eax,dword ptr [ebp-0C]
>00410129    jge         004100E9
>0041012B    jmp         00410283
 00410130    mov         eax,dword ptr [ebp-8]
 00410133    mov         edx,dword ptr [ebp-4]
 00410136    call        @LStrAsg
>0041013B    jmp         00410283
 00410140    mov         eax,dword ptr [ebp-0C]
 00410143    mov         edx,dword ptr [ebp-4]
 00410146    mov         al,byte ptr [edx+eax-1]
 0041014A    and         eax,0FF
 0041014F    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>00410156    jae         00410191
 00410158    mov         edx,dword ptr [ebp-0C]
 0041015B    mov         eax,dword ptr [ebp-4]
 0041015E    call        00411478
 00410163    mov         dword ptr [ebp-10],eax
 00410166    lea         eax,[ebp-24]
 00410169    push        eax
 0041016A    mov         ecx,dword ptr [ebp-10]
 0041016D    mov         edx,dword ptr [ebp-0C]
 00410170    mov         eax,dword ptr [ebp-4]
 00410173    call        @LStrCopy
 00410178    mov         edx,dword ptr [ebp-24]
 0041017B    mov         eax,dword ptr [ebp-8]
 0041017E    call        @LStrCat
 00410183    mov         eax,dword ptr [ebp-8]
 00410186    mov         eax,dword ptr [ebp-10]
 00410189    add         dword ptr [ebp-0C],eax
>0041018C    jmp         00410272
 00410191    mov         edx,4102B8
 00410196    mov         eax,dword ptr [ebp-0C]
 00410199    mov         ecx,dword ptr [ebp-4]
 0041019C    lea         eax,[ecx+eax-1]
 004101A0    mov         ecx,2
 004101A5    call        StrLIComp
 004101AA    test        eax,eax
>004101AC    jne         004101C6
 004101AE    mov         eax,dword ptr [ebp-8]
 004101B1    mov         edx,4102C4;'ggg'
 004101B6    call        @LStrCat
 004101BB    mov         eax,dword ptr [ebp-8]
 004101BE    inc         dword ptr [ebp-0C]
>004101C1    jmp         0041026F
 004101C6    mov         edx,4102C8
 004101CB    mov         eax,dword ptr [ebp-0C]
 004101CE    mov         ecx,dword ptr [ebp-4]
 004101D1    lea         eax,[ecx+eax-1]
 004101D5    mov         ecx,4
 004101DA    call        StrLIComp
 004101DF    test        eax,eax
>004101E1    jne         004101F9
 004101E3    mov         eax,dword ptr [ebp-8]
 004101E6    mov         edx,4102D8;'eeee'
 004101EB    call        @LStrCat
 004101F0    mov         eax,dword ptr [ebp-8]
 004101F3    add         dword ptr [ebp-0C],3
>004101F7    jmp         0041026F
 004101F9    mov         edx,4102E0
 004101FE    mov         eax,dword ptr [ebp-0C]
 00410201    mov         ecx,dword ptr [ebp-4]
 00410204    lea         eax,[ecx+eax-1]
 00410208    mov         ecx,2
 0041020D    call        StrLIComp
 00410212    test        eax,eax
>00410214    jne         0041022B
 00410216    mov         eax,dword ptr [ebp-8]
 00410219    mov         edx,4102EC;'ee'
 0041021E    call        @LStrCat
 00410223    mov         eax,dword ptr [ebp-8]
 00410226    inc         dword ptr [ebp-0C]
>00410229    jmp         0041026F
 0041022B    mov         eax,dword ptr [ebp-0C]
 0041022E    mov         edx,dword ptr [ebp-4]
 00410231    mov         al,byte ptr [edx+eax-1]
 00410235    sub         al,59
>00410237    je          0041023D
 00410239    sub         al,20
>0041023B    jne         0041024F
 0041023D    mov         eax,dword ptr [ebp-8]
 00410240    mov         edx,4102F8;'e'
 00410245    call        @LStrCat
 0041024A    mov         eax,dword ptr [ebp-8]
>0041024D    jmp         0041026F
 0041024F    lea         eax,[ebp-28]
 00410252    mov         edx,dword ptr [ebp-0C]
 00410255    mov         ecx,dword ptr [ebp-4]
 00410258    mov         dl,byte ptr [ecx+edx-1]
 0041025C    call        @LStrFromChar
 00410261    mov         edx,dword ptr [ebp-28]
 00410264    mov         eax,dword ptr [ebp-8]
 00410267    call        @LStrCat
 0041026C    mov         eax,dword ptr [ebp-8]
 0041026F    inc         dword ptr [ebp-0C]
 00410272    mov         eax,dword ptr [ebp-4]
 00410275    call        @LStrLen
 0041027A    cmp         eax,dword ptr [ebp-0C]
>0041027D    jge         00410140
 00410283    xor         eax,eax
 00410285    pop         edx
 00410286    pop         ecx
 00410287    pop         ecx
 00410288    mov         dword ptr fs:[eax],edx
 0041028B    push        4102A5
 00410290    lea         eax,[ebp-28]
 00410293    mov         edx,4
 00410298    call        @LStrArrayClr
 0041029D    ret
>0041029E    jmp         @HandleFinally
>004102A3    jmp         00410290
 004102A5    mov         esp,ebp
 004102A7    pop         ebp
 004102A8    ret
end;*}

//004102FC
{*function sub_004102FC(?:?):?;
begin
 004102FC    push        ebp
 004102FD    mov         ebp,esp
 004102FF    test        eax,eax
>00410301    je          00410308
 00410303    sub         eax,1000
 00410308    pop         ebp
 00410309    ret
end;*}

//0041030C
{*function sub_0041030C(?:?; ?:?; ?:?; ?:?):?;
begin
 0041030C    push        ebp
 0041030D    mov         ebp,esp
 0041030F    add         esp,0FFFFFB90
 00410315    mov         dword ptr [ebp-0C],ecx
 00410318    mov         dword ptr [ebp-8],edx
 0041031B    mov         dword ptr [ebp-4],eax
 0041031E    push        1C
 00410320    lea         eax,[ebp-348]
 00410326    push        eax
 00410327    mov         eax,dword ptr [ebp-8]
 0041032A    push        eax
 0041032B    call        kernel32.VirtualQuery
 00410330    cmp         dword ptr [ebp-338],1000
>0041033A    jne         00410358
 0041033C    push        105
 00410341    lea         eax,[ebp-22A]
 00410347    push        eax
 00410348    mov         eax,dword ptr [ebp-344]
 0041034E    push        eax
 0041034F    call        kernel32.GetModuleFileNameA
 00410354    test        eax,eax
>00410356    jne         0041037E
 00410358    push        105
 0041035D    lea         eax,[ebp-22A]
 00410363    push        eax
 00410364    mov         eax,[0056F668];0x0 HInstance:LongWord
 00410369    push        eax
 0041036A    call        kernel32.GetModuleFileNameA
 0041036F    push        ebp
 00410370    mov         eax,dword ptr [ebp-8]
 00410373    call        004102FC
 00410378    pop         ecx
 00410379    mov         dword ptr [ebp-20],eax
>0041037C    jmp         0041038A
 0041037E    mov         eax,dword ptr [ebp-8]
 00410381    sub         eax,dword ptr [ebp-344]
 00410387    mov         dword ptr [ebp-20],eax
 0041038A    lea         eax,[ebp-22A]
 00410390    mov         dl,5C
 00410392    call        0041185C
 00410397    mov         edx,eax
 00410399    inc         edx
 0041039A    lea         eax,[ebp-125]
 004103A0    mov         ecx,104
 004103A5    call        StrLCopy
 004103AA    mov         eax,4104BC
 004103AF    mov         dword ptr [ebp-14],eax
 004103B2    mov         eax,4104BC
 004103B7    mov         dword ptr [ebp-18],eax
 004103BA    mov         eax,dword ptr [ebp-4]
 004103BD    mov         edx,dword ptr ds:[40B004];Exception
 004103C3    call        @IsClass
 004103C8    test        al,al
>004103CA    je          00410400
 004103CC    mov         eax,dword ptr [ebp-4]
 004103CF    mov         eax,dword ptr [eax+4]
 004103D2    call        @LStrToPChar
 004103D7    mov         dword ptr [ebp-14],eax
 004103DA    mov         eax,dword ptr [ebp-14]
 004103DD    call        StrLen
 004103E2    mov         dword ptr [ebp-1C],eax
 004103E5    cmp         dword ptr [ebp-1C],0
>004103E9    je          00410400
 004103EB    mov         eax,dword ptr [ebp-14]
 004103EE    mov         edx,dword ptr [ebp-1C]
 004103F1    cmp         byte ptr [eax+edx-1],2E
>004103F6    je          00410400
 004103F8    mov         eax,4104C0
 004103FD    mov         dword ptr [ebp-18],eax
 00410400    push        100
 00410405    lea         eax,[ebp-32A]
 0041040B    push        eax
 0041040C    mov         eax,[0056E5E4];^SResString0:TResStringRec
 00410411    mov         eax,dword ptr [eax+4]
 00410414    push        eax
 00410415    mov         eax,[0056F668];0x0 HInstance:LongWord
 0041041A    call        004066C8
 0041041F    push        eax
 00410420    call        user32.LoadStringA
 00410425    lea         edx,[ebp-470]
 0041042B    mov         eax,dword ptr [ebp-4]
 0041042E    mov         eax,dword ptr [eax]
 00410430    call        TObject.ClassName
 00410435    lea         eax,[ebp-470]
 0041043B    mov         dword ptr [ebp-370],eax
 00410441    mov         byte ptr [ebp-36C],4
 00410448    lea         eax,[ebp-125]
 0041044E    mov         dword ptr [ebp-368],eax
 00410454    mov         byte ptr [ebp-364],6
 0041045B    mov         eax,dword ptr [ebp-20]
 0041045E    mov         dword ptr [ebp-360],eax
 00410464    mov         byte ptr [ebp-35C],5
 0041046B    mov         eax,dword ptr [ebp-14]
 0041046E    mov         dword ptr [ebp-358],eax
 00410474    mov         byte ptr [ebp-354],6
 0041047B    mov         eax,dword ptr [ebp-18]
 0041047E    mov         dword ptr [ebp-350],eax
 00410484    mov         byte ptr [ebp-34C],6
 0041048B    lea         eax,[ebp-370]
 00410491    push        eax
 00410492    push        4
 00410494    lea         ecx,[ebp-32A]
 0041049A    mov         edx,dword ptr [ebp+8]
 0041049D    mov         eax,dword ptr [ebp-0C]
 004104A0    call        0040D5D8
 004104A5    mov         eax,dword ptr [ebp-0C]
 004104A8    call        StrLen
 004104AD    mov         dword ptr [ebp-10],eax
 004104B0    mov         eax,dword ptr [ebp-10]
 004104B3    mov         esp,ebp
 004104B5    pop         ebp
 004104B6    ret         4
end;*}

//004104C4
{*procedure sub_004104C4(?:TObject; ?:?);
begin
 004104C4    push        ebp
 004104C5    mov         ebp,esp
 004104C7    add         esp,0FFFFFBB4
 004104CD    mov         dword ptr [ebp-8],edx
 004104D0    mov         dword ptr [ebp-4],eax
 004104D3    push        400
 004104D8    lea         ecx,[ebp-44C]
 004104DE    mov         edx,dword ptr [ebp-8]
 004104E1    mov         eax,dword ptr [ebp-4]
 004104E4    call        0041030C
 004104E9    mov         eax,[0056E480];^IsConsole:Boolean
 004104EE    cmp         byte ptr [eax],0
>004104F1    je          00410557
 004104F3    mov         eax,[0056E178];^Output:Text
 004104F8    call        Flush
 004104FD    call        @_IOTest
 00410502    lea         eax,[ebp-44C]
 00410508    push        eax
 00410509    lea         eax,[ebp-44C]
 0041050F    push        eax
 00410510    call        user32.CharToOemA
 00410515    push        0
 00410517    lea         eax,[ebp-0C]
 0041051A    push        eax
 0041051B    lea         eax,[ebp-44C]
 00410521    call        StrLen
 00410526    push        eax
 00410527    lea         eax,[ebp-44C]
 0041052D    push        eax
 0041052E    push        0F4
 00410530    call        kernel32.GetStdHandle
 00410535    push        eax
 00410536    call        kernel32.WriteFile
 0041053B    push        0
 0041053D    lea         eax,[ebp-0C]
 00410540    push        eax
 00410541    push        2
 00410543    push        41059C;#13+#10
 00410548    push        0F4
 0041054A    call        kernel32.GetStdHandle
 0041054F    push        eax
 00410550    call        kernel32.WriteFile
>00410555    jmp         0041058D
 00410557    push        40
 00410559    lea         eax,[ebp-4C]
 0041055C    push        eax
 0041055D    mov         eax,[0056E0FC];^SExceptTitle:TResStringRec
 00410562    mov         eax,dword ptr [eax+4]
 00410565    push        eax
 00410566    mov         eax,[0056F668];0x0 HInstance:LongWord
 0041056B    call        004066C8
 00410570    push        eax
 00410571    call        user32.LoadStringA
 00410576    push        2010
 0041057B    lea         eax,[ebp-4C]
 0041057E    push        eax
 0041057F    lea         eax,[ebp-44C]
 00410585    push        eax
 00410586    push        0
 00410588    call        user32.MessageBoxA
 0041058D    mov         esp,ebp
 0041058F    pop         ebp
 00410590    ret
end;*}

//004105A0
constructor Exception.Create(const Msg:AnsiString);
begin
{*
 004105A0    push        ebp
 004105A1    mov         ebp,esp
 004105A3    add         esp,0FFFFFFF4
 004105A6    test        dl,dl
>004105A8    je          004105B2
 004105AA    add         esp,0FFFFFFF0
 004105AD    call        @ClassCreate
 004105B2    mov         dword ptr [ebp-0C],ecx
 004105B5    mov         byte ptr [ebp-5],dl
 004105B8    mov         dword ptr [ebp-4],eax
 004105BB    mov         eax,dword ptr [ebp-4]
 004105BE    add         eax,4
 004105C1    mov         edx,dword ptr [ebp-0C]
 004105C4    call        @LStrAsg
 004105C9    mov         eax,dword ptr [ebp-4]
 004105CC    cmp         byte ptr [ebp-5],0
>004105D0    je          004105E1
 004105D2    call        @AfterConstruction
 004105D7    pop         dword ptr fs:[0]
 004105DE    add         esp,0C
 004105E1    mov         eax,dword ptr [ebp-4]
 004105E4    mov         esp,ebp
 004105E6    pop         ebp
 004105E7    ret
*}
end;

//004105E8
constructor Exception.CreateFmt(const Msg:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 004105E8    push        ebp
 004105E9    mov         ebp,esp
 004105EB    add         esp,0FFFFFFF0
 004105EE    push        ebx
 004105EF    xor         ebx,ebx
 004105F1    mov         dword ptr [ebp-10],ebx
 004105F4    test        dl,dl
>004105F6    je          00410600
 004105F8    add         esp,0FFFFFFF0
 004105FB    call        @ClassCreate
 00410600    mov         dword ptr [ebp-0C],ecx
 00410603    mov         byte ptr [ebp-5],dl
 00410606    mov         dword ptr [ebp-4],eax
 00410609    xor         eax,eax
 0041060B    push        ebp
 0041060C    push        41064D
 00410611    push        dword ptr fs:[eax]
 00410614    mov         dword ptr fs:[eax],esp
 00410617    lea         eax,[ebp-10]
 0041061A    push        eax
 0041061B    mov         edx,dword ptr [ebp+0C]
 0041061E    mov         ecx,dword ptr [ebp+8]
 00410621    mov         eax,dword ptr [ebp-0C]
 00410624    call        0040D630
 00410629    mov         edx,dword ptr [ebp-10]
 0041062C    mov         eax,dword ptr [ebp-4]
 0041062F    add         eax,4
 00410632    call        @LStrAsg
 00410637    xor         eax,eax
 00410639    pop         edx
 0041063A    pop         ecx
 0041063B    pop         ecx
 0041063C    mov         dword ptr fs:[eax],edx
 0041063F    push        410654
 00410644    lea         eax,[ebp-10]
 00410647    call        @LStrClr
 0041064C    ret
>0041064D    jmp         @HandleFinally
>00410652    jmp         00410644
 00410654    mov         eax,dword ptr [ebp-4]
 00410657    cmp         byte ptr [ebp-5],0
>0041065B    je          0041066C
 0041065D    call        @AfterConstruction
 00410662    pop         dword ptr fs:[0]
 00410669    add         esp,0C
 0041066C    mov         eax,dword ptr [ebp-4]
 0041066F    pop         ebx
 00410670    mov         esp,ebp
 00410672    pop         ebp
 00410673    ret         8
*}
end;

//00410678
constructor Exception.Create;
begin
{*
 00410678    push        ebp
 00410679    mov         ebp,esp
 0041067B    add         esp,0FFFFFFF4
 0041067E    test        dl,dl
>00410680    je          0041068A
 00410682    add         esp,0FFFFFFF0
 00410685    call        @ClassCreate
 0041068A    mov         dword ptr [ebp-0C],ecx
 0041068D    mov         byte ptr [ebp-5],dl
 00410690    mov         dword ptr [ebp-4],eax
 00410693    mov         eax,dword ptr [ebp-4]
 00410696    lea         edx,[eax+4];Exception.FMessage:String
 00410699    mov         eax,dword ptr [ebp-0C]
 0041069C    call        LoadResString;''%s' is not a valid date and time'
 004106A1    mov         eax,dword ptr [ebp-4]
 004106A4    cmp         byte ptr [ebp-5],0
>004106A8    je          004106B9
 004106AA    call        @AfterConstruction
 004106AF    pop         dword ptr fs:[0]
 004106B6    add         esp,0C
 004106B9    mov         eax,dword ptr [ebp-4]
 004106BC    mov         esp,ebp
 004106BE    pop         ebp
 004106BF    ret
*}
end;

//004106C0
constructor Exception.CreateResFmt(Ident:Integer; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 004106C0    push        ebp
 004106C1    mov         ebp,esp
 004106C3    add         esp,0FFFFFFEC
 004106C6    push        ebx
 004106C7    xor         ebx,ebx
 004106C9    mov         dword ptr [ebp-10],ebx
 004106CC    mov         dword ptr [ebp-14],ebx
 004106CF    test        dl,dl
>004106D1    je          004106DB
 004106D3    add         esp,0FFFFFFF0
 004106D6    call        @ClassCreate
 004106DB    mov         dword ptr [ebp-0C],ecx
 004106DE    mov         byte ptr [ebp-5],dl
 004106E1    mov         dword ptr [ebp-4],eax
 004106E4    xor         eax,eax
 004106E6    push        ebp
 004106E7    push        410738
 004106EC    push        dword ptr fs:[eax]
 004106EF    mov         dword ptr fs:[eax],esp
 004106F2    lea         eax,[ebp-10]
 004106F5    push        eax
 004106F6    lea         edx,[ebp-14]
 004106F9    mov         eax,dword ptr [ebp-0C]
 004106FC    call        LoadResString
 00410701    mov         eax,dword ptr [ebp-14]
 00410704    mov         edx,dword ptr [ebp+0C]
 00410707    mov         ecx,dword ptr [ebp+8]
 0041070A    call        0040D630
 0041070F    mov         edx,dword ptr [ebp-10]
 00410712    mov         eax,dword ptr [ebp-4]
 00410715    add         eax,4
 00410718    call        @LStrAsg
 0041071D    xor         eax,eax
 0041071F    pop         edx
 00410720    pop         ecx
 00410721    pop         ecx
 00410722    mov         dword ptr fs:[eax],edx
 00410725    push        41073F
 0041072A    lea         eax,[ebp-14]
 0041072D    mov         edx,2
 00410732    call        @LStrArrayClr
 00410737    ret
>00410738    jmp         @HandleFinally
>0041073D    jmp         0041072A
 0041073F    mov         eax,dword ptr [ebp-4]
 00410742    cmp         byte ptr [ebp-5],0
>00410746    je          00410757
 00410748    call        @AfterConstruction
 0041074D    pop         dword ptr fs:[0]
 00410754    add         esp,0C
 00410757    mov         eax,dword ptr [ebp-4]
 0041075A    pop         ebx
 0041075B    mov         esp,ebp
 0041075D    pop         ebp
 0041075E    ret         8
*}
end;

//00410764
{*constructor sub_00410764(?:?);
begin
 00410764    push        ebp
 00410765    mov         ebp,esp
 00410767    add         esp,0FFFFFFF4
 0041076A    test        dl,dl
>0041076C    je          00410776
 0041076E    add         esp,0FFFFFFF0
 00410771    call        @ClassCreate
 00410776    mov         dword ptr [ebp-0C],ecx
 00410779    mov         byte ptr [ebp-5],dl
 0041077C    mov         dword ptr [ebp-4],eax
 0041077F    mov         eax,dword ptr [ebp-4]
 00410782    add         eax,4
 00410785    mov         edx,dword ptr [ebp-0C]
 00410788    call        @LStrAsg
 0041078D    mov         eax,dword ptr [ebp-4]
 00410790    mov         edx,dword ptr [ebp+8]
 00410793    mov         dword ptr [eax+8],edx
 00410796    mov         eax,dword ptr [ebp-4]
 00410799    cmp         byte ptr [ebp-5],0
>0041079D    je          004107AE
 0041079F    call        @AfterConstruction
 004107A4    pop         dword ptr fs:[0]
 004107AB    add         esp,0C
 004107AE    mov         eax,dword ptr [ebp-4]
 004107B1    mov         esp,ebp
 004107B3    pop         ebp
 004107B4    ret         4
end;*}

//004107F4
{*function sub_004107F4:?;
begin
 004107F4    push        ebp
 004107F5    mov         ebp,esp
 004107F7    add         esp,0FFFFFFEC
 004107FA    xor         eax,eax
 004107FC    mov         dword ptr [ebp-8],eax
 004107FF    call        IOResult
 00410804    mov         dword ptr [ebp-0C],eax
>00410807    jmp         0041080C
 00410809    inc         dword ptr [ebp-8]
 0041080C    cmp         dword ptr [ebp-8],6
>00410810    jg          00410821
 00410812    mov         eax,dword ptr [ebp-8]
 00410815    mov         eax,dword ptr [eax*8+56B934];gvar_0056B934:array[7] of ?
 0041081C    cmp         eax,dword ptr [ebp-0C]
>0041081F    jne         00410809
 00410821    cmp         dword ptr [ebp-8],6
>00410825    jg          00410842
 00410827    mov         eax,dword ptr [ebp-8]
 0041082A    mov         ecx,dword ptr [eax*8+56B938]
 00410831    mov         dl,1
 00410833    mov         eax,[0040B124];EInOutError
 00410838    call        Exception.Create;EInOutError.Create
 0041083D    mov         dword ptr [ebp-4],eax
>00410840    jmp         00410867
 00410842    mov         eax,dword ptr [ebp-0C]
 00410845    mov         dword ptr [ebp-14],eax
 00410848    mov         byte ptr [ebp-10],0
 0041084C    lea         eax,[ebp-14]
 0041084F    push        eax
 00410850    push        0
 00410852    mov         ecx,dword ptr ds:[56E0F0];^SInOutError:TResStringRec
 00410858    mov         dl,1
 0041085A    mov         eax,[0040B124];EInOutError
 0041085F    call        Exception.CreateResFmt;EInOutError.Create
 00410864    mov         dword ptr [ebp-4],eax
 00410867    mov         eax,dword ptr [ebp-4]
 0041086A    mov         edx,dword ptr [ebp-0C]
 0041086D    mov         dword ptr [eax+0C],edx;EInOutError.....ErrorCode:Integer
 00410870    mov         eax,dword ptr [ebp-4]
 00410873    mov         esp,ebp
 00410875    pop         ebp
 00410876    ret
end;*}

//00410898
procedure sub_00410898;
begin
{*
 00410898    push        ebp
 00410899    mov         ebp,esp
 0041089B    add         esp,0FFFFFFF0
 0041089E    mov         dword ptr [ebp-8],edx
 004108A1    mov         byte ptr [ebp-1],al
 004108A4    mov         al,byte ptr [ebp-1]
 004108A7    dec         al
>004108A9    je          004108B6
 004108AB    dec         al
>004108AD    je          004108C0
 004108AF    dec         eax
 004108B0    sub         al,16
>004108B2    jb          004108CA
>004108B4    jmp         004108F0
 004108B6    mov         eax,[005719C0];0x0 gvar_005719C0:EOutOfMemory
 004108BB    mov         dword ptr [ebp-0C],eax
>004108BE    jmp         004108F8
 004108C0    mov         eax,[005719C4];0x0 gvar_005719C4:EInvalidPointer
 004108C5    mov         dword ptr [ebp-0C],eax
>004108C8    jmp         004108F8
 004108CA    xor         eax,eax
 004108CC    mov         al,byte ptr [ebp-1]
 004108CF    lea         eax,[eax*8+56B954]
 004108D6    mov         dword ptr [ebp-10],eax
 004108D9    mov         eax,dword ptr [ebp-10]
 004108DC    mov         ecx,dword ptr [eax+4]
 004108DF    mov         eax,dword ptr [ebp-10]
 004108E2    mov         eax,dword ptr [eax]
 004108E4    mov         dl,1
 004108E6    call        Exception.Create
 004108EB    mov         dword ptr [ebp-0C],eax
>004108EE    jmp         004108F8
 004108F0    call        004107F4
 004108F5    mov         dword ptr [ebp-0C],eax
 004108F8    push        dword ptr [ebp-8]
 004108FB    mov         eax,dword ptr [ebp-0C]
>004108FE    jmp         @RaiseExcept
*}
end;

//00410908
{*function sub_00410908(?:?; ?:?; ?:?):?;
begin
 00410908    push        ebp
 00410909    mov         ebp,esp
 0041090B    add         esp,0FFFFFFD0
 0041090E    push        ebx
 0041090F    xor         ebx,ebx
 00410911    mov         dword ptr [ebp-30],ebx
 00410914    mov         dword ptr [ebp-14],ebx
 00410917    mov         dword ptr [ebp-0C],ecx
 0041091A    mov         dword ptr [ebp-8],edx
 0041091D    mov         dword ptr [ebp-4],eax
 00410920    xor         eax,eax
 00410922    push        ebp
 00410923    push        4109AF
 00410928    push        dword ptr fs:[eax]
 0041092B    mov         dword ptr fs:[eax],esp
 0041092E    cmp         dword ptr [ebp-4],0
>00410932    je          00410941
 00410934    lea         eax,[ebp-14]
 00410937    mov         edx,dword ptr [ebp-4]
 0041093A    call        @LStrLAsg
>0041093F    jmp         0041094E
 00410941    lea         edx,[ebp-14]
 00410944    mov         eax,[0056E438];^SAssertionFailed:TResStringRec
 00410949    call        LoadResString
 0041094E    mov         eax,dword ptr [ebp-14]
 00410951    mov         dword ptr [ebp-2C],eax
 00410954    mov         byte ptr [ebp-28],0B
 00410958    mov         eax,dword ptr [ebp-8]
 0041095B    mov         dword ptr [ebp-24],eax
 0041095E    mov         byte ptr [ebp-20],0B
 00410962    mov         eax,dword ptr [ebp-0C]
 00410965    mov         dword ptr [ebp-1C],eax
 00410968    mov         byte ptr [ebp-18],0
 0041096C    lea         eax,[ebp-2C]
 0041096F    push        eax
 00410970    push        2
 00410972    lea         edx,[ebp-30]
 00410975    mov         eax,[0056E4F8];^SAssertError:TResStringRec
 0041097A    call        LoadResString
 0041097F    mov         ecx,dword ptr [ebp-30]
 00410982    mov         dl,1
 00410984    mov         eax,[0040B82C];EAssertionFailed
 00410989    call        Exception.CreateFmt;EAssertionFailed.Create
 0041098E    mov         dword ptr [ebp-10],eax
 00410991    xor         eax,eax
 00410993    pop         edx
 00410994    pop         ecx
 00410995    pop         ecx
 00410996    mov         dword ptr fs:[eax],edx
 00410999    push        4109B6
 0041099E    lea         eax,[ebp-30]
 004109A1    call        @LStrClr
 004109A6    lea         eax,[ebp-14]
 004109A9    call        @LStrClr
 004109AE    ret
>004109AF    jmp         @HandleFinally
>004109B4    jmp         0041099E
 004109B6    mov         eax,dword ptr [ebp-10]
 004109B9    pop         ebx
 004109BA    mov         esp,ebp
 004109BC    pop         ebp
 004109BD    ret
end;*}

//004109C0
procedure RaiseAssertException(const E:Exception; const ErrorAddr:Pointer; const ErrorStack:Pointer);
begin
{*
 004109C0    mov         esp,ecx
 004109C2    mov         dword ptr [esp],edx
 004109C5    mov         ebp,dword ptr [ebp]
>004109C8    jmp         @RaiseExcept
 004109CD    ret
*}
end;

//004109D0
{*procedure sub_004109D0(?:?; ?:?; ?:?; ?:?);
begin
 004109D0    push        ebp
 004109D1    mov         ebp,esp
 004109D3    add         esp,0FFFFFFF0
 004109D6    mov         dword ptr [ebp-0C],ecx
 004109D9    mov         dword ptr [ebp-8],edx
 004109DC    mov         dword ptr [ebp-4],eax
 004109DF    mov         ecx,dword ptr [ebp-0C]
 004109E2    mov         edx,dword ptr [ebp-8]
 004109E5    mov         eax,dword ptr [ebp-4]
 004109E8    call        00410908
 004109ED    mov         dword ptr [ebp-10],eax
 004109F0    lea         ecx,[ebp+8]
 004109F3    add         ecx,4
 004109F6    mov         edx,dword ptr [ebp+8]
 004109F9    mov         eax,dword ptr [ebp-10]
 004109FC    call        RaiseAssertException
 00410A01    mov         esp,ebp
 00410A03    pop         ebp
 00410A04    ret         4
end;*}

//00410A08
procedure sub_00410A08;
begin
{*
 00410A08    push        ebp
 00410A09    mov         ebp,esp
 00410A0B    mov         ecx,dword ptr ds:[56E128];^SAbstractError:TResStringRec
 00410A11    mov         dl,1
 00410A13    mov         eax,[0040B88C];EAbstractError
 00410A18    call        Exception.Create;EAbstractError.Create
 00410A1D    call        @RaiseExcept
 00410A22    pop         ebp
 00410A23    ret
*}
end;

//00410A24
{*function sub_00410A24(?:?):?;
begin
 00410A24    push        ebp
 00410A25    mov         ebp,esp
 00410A27    add         esp,0FFFFFFF8
 00410A2A    mov         dword ptr [ebp-4],eax
 00410A2D    mov         eax,dword ptr [ebp-4]
 00410A30    mov         eax,dword ptr [eax]
 00410A32    cmp         eax,0C0000092
>00410A37    jg          00410A65
>00410A39    je          00410A9D
 00410A3B    cmp         eax,0C000008E
>00410A40    jg          00410A57
>00410A42    je          00410AA3
 00410A44    sub         eax,0C0000005
>00410A49    je          00410AB5
 00410A4B    sub         eax,87
>00410A50    je          00410A91
 00410A52    dec         eax
>00410A53    je          00410AAF
>00410A55    jmp         00410ACD
 00410A57    add         eax,3FFFFF71
 00410A5C    sub         eax,2
>00410A5F    jb          00410A9D
>00410A61    je          00410AA9
>00410A63    jmp         00410ACD
 00410A65    cmp         eax,0C0000096
>00410A6A    jg          00410A7D
>00410A6C    je          00410ABB
 00410A6E    sub         eax,0C0000093
>00410A73    je          00410AAF
 00410A75    dec         eax
>00410A76    je          00410A8B
 00410A78    dec         eax
>00410A79    je          00410A97
>00410A7B    jmp         00410ACD
 00410A7D    sub         eax,0C00000FD
>00410A82    je          00410AC7
 00410A84    sub         eax,3D
>00410A87    je          00410AC1
>00410A89    jmp         00410ACD
 00410A8B    mov         byte ptr [ebp-5],3
>00410A8F    jmp         00410AD1
 00410A91    mov         byte ptr [ebp-5],4
>00410A95    jmp         00410AD1
 00410A97    mov         byte ptr [ebp-5],5
>00410A9B    jmp         00410AD1
 00410A9D    mov         byte ptr [ebp-5],6
>00410AA1    jmp         00410AD1
 00410AA3    mov         byte ptr [ebp-5],7
>00410AA7    jmp         00410AD1
 00410AA9    mov         byte ptr [ebp-5],8
>00410AAD    jmp         00410AD1
 00410AAF    mov         byte ptr [ebp-5],9
>00410AB3    jmp         00410AD1
 00410AB5    mov         byte ptr [ebp-5],0B
>00410AB9    jmp         00410AD1
 00410ABB    mov         byte ptr [ebp-5],0C
>00410ABF    jmp         00410AD1
 00410AC1    mov         byte ptr [ebp-5],0D
>00410AC5    jmp         00410AD1
 00410AC7    mov         byte ptr [ebp-5],0E
>00410ACB    jmp         00410AD1
 00410ACD    mov         byte ptr [ebp-5],16
 00410AD1    mov         al,byte ptr [ebp-5]
 00410AD4    pop         ecx
 00410AD5    pop         ecx
 00410AD6    pop         ebp
 00410AD7    ret
end;*}

//00410AD8
{*function sub_00410AD8(?:?):?;
begin
 00410AD8    push        ebp
 00410AD9    mov         ebp,esp
 00410ADB    add         esp,0FFFFFFF4
 00410ADE    mov         dword ptr [ebp-4],eax
 00410AE1    mov         eax,dword ptr [ebp-4]
 00410AE4    call        00410A24
 00410AE9    mov         byte ptr [ebp-9],al
 00410AEC    xor         eax,eax
 00410AEE    mov         al,byte ptr [ebp-9]
 00410AF1    mov         eax,dword ptr [eax*8+56B954]
 00410AF8    mov         dword ptr [ebp-8],eax
 00410AFB    mov         eax,dword ptr [ebp-8]
 00410AFE    mov         esp,ebp
 00410B00    pop         ebp
 00410B01    ret
end;*}

//00410DC8
{*procedure sub_00410DC8(?:?; ?:?);
begin
 00410DC8    push        ebp
 00410DC9    mov         ebp,esp
 00410DCB    add         esp,0FFFFFFF8
 00410DCE    mov         dword ptr [ebp-8],edx
 00410DD1    mov         dword ptr [ebp-4],eax
 00410DD4    mov         edx,dword ptr [ebp-8]
 00410DD7    mov         eax,dword ptr [ebp-4]
 00410DDA    call        004104C4
 00410DDF    mov         eax,1
 00410DE4    call        @Halt
 00410DE9    pop         ecx
 00410DEA    pop         ecx
 00410DEB    pop         ebp
 00410DEC    ret
end;*}

//00410DF0
procedure sub_00410DF0;
begin
{*
 00410DF0    push        ebp
 00410DF1    mov         ebp,esp
 00410DF3    mov         ecx,dword ptr ds:[56E104];^SOutOfMemory:TResStringRec
 00410DF9    mov         dl,1
 00410DFB    mov         eax,[0040B0C8];EOutOfMemory
 00410E00    call        Exception.Create;EOutOfMemory.Create
 00410E05    mov         [005719C0],eax;gvar_005719C0:EOutOfMemory
 00410E0A    mov         ecx,dword ptr ds:[56E374];^SInvalidPointer:TResStringRec
 00410E10    mov         dl,1
 00410E12    mov         eax,[0040B550];EInvalidPointer
 00410E17    call        Exception.Create;EInvalidPointer.Create
 00410E1C    mov         [005719C4],eax;gvar_005719C4:EInvalidPointer
 00410E21    mov         eax,[0056E020];^ErrorProc:procedure(val ErrorCode:Byte;val ErrorAddr:Pointer)
 00410E26    mov         dword ptr [eax],410898;sub_00410898
 00410E2C    mov         eax,[0056E1BC];^ExceptProc:Pointer
 00410E31    mov         dword ptr [eax],410DC8;sub_00410DC8
 00410E37    mov         eax,[0056E0D8];^gvar_0056F01C:Exception
 00410E3C    mov         edx,dword ptr ds:[40B004];Exception
 00410E42    mov         dword ptr [eax],edx
 00410E44    mov         eax,[0056E198];^ExceptClsProc:Pointer
 00410E49    mov         dword ptr [eax],410AD8;sub_00410AD8
 00410E4F    mov         eax,[0056E1CC];^ExceptObjProc:Pointer
 00410E54    mov         dword ptr [eax],410CE8
 00410E5A    mov         eax,4109D0;sub_004109D0
 00410E5F    mov         edx,dword ptr ds:[56E3AC];^AssertErrorProc:TAssertErrorProc
 00410E65    mov         dword ptr [edx],eax
 00410E67    mov         eax,410A08;sub_00410A08
 00410E6C    mov         edx,dword ptr ds:[56DFF8];^AbstractErrorProc:procedure
 00410E72    mov         dword ptr [edx],eax
 00410E74    pop         ebp
 00410E75    ret
*}
end;

//00410E78
procedure sub_00410E78;
begin
{*
 00410E78    push        ebp
 00410E79    mov         ebp,esp
 00410E7B    cmp         dword ptr ds:[5719C0],0;gvar_005719C0:EOutOfMemory
>00410E82    je          00410E9E
 00410E84    mov         eax,[005719C0];0x0 gvar_005719C0:EOutOfMemory
 00410E89    mov         byte ptr [eax+0C],1;EOutOfMemory....AllowFree:Boolean
 00410E8D    mov         eax,[005719C0];0x0 gvar_005719C0:EOutOfMemory
 00410E92    mov         edx,dword ptr [eax]
 00410E94    call        dword ptr [edx-8]
 00410E97    xor         eax,eax
 00410E99    mov         [005719C0],eax;gvar_005719C0:EOutOfMemory
 00410E9E    cmp         dword ptr ds:[5719C4],0;gvar_005719C4:EInvalidPointer
>00410EA5    je          00410EC1
 00410EA7    mov         eax,[005719C4];0x0 gvar_005719C4:EInvalidPointer
 00410EAC    mov         byte ptr [eax+0C],1;EInvalidPointer.....AllowFree:Boolean
 00410EB0    mov         eax,[005719C4];0x0 gvar_005719C4:EInvalidPointer
 00410EB5    call        TObject.Free
 00410EBA    xor         eax,eax
 00410EBC    mov         [005719C4],eax;gvar_005719C4:EInvalidPointer
 00410EC1    mov         eax,[0056E020];^ErrorProc:procedure(val ErrorCode:Byte;val ErrorAddr:Pointer)
 00410EC6    xor         edx,edx
 00410EC8    mov         dword ptr [eax],edx
 00410ECA    mov         eax,[0056E1BC];^ExceptProc:Pointer
 00410ECF    xor         edx,edx
 00410ED1    mov         dword ptr [eax],edx
 00410ED3    mov         eax,[0056E0D8];^gvar_0056F01C:Exception
 00410ED8    xor         edx,edx
 00410EDA    mov         dword ptr [eax],edx
 00410EDC    mov         eax,[0056E198];^ExceptClsProc:Pointer
 00410EE1    xor         edx,edx
 00410EE3    mov         dword ptr [eax],edx
 00410EE5    mov         eax,[0056E1CC];^ExceptObjProc:Pointer
 00410EEA    xor         edx,edx
 00410EEC    mov         dword ptr [eax],edx
 00410EEE    mov         eax,[0056E3AC];^AssertErrorProc:TAssertErrorProc
 00410EF3    xor         edx,edx
 00410EF5    mov         dword ptr [eax],edx
 00410EF7    pop         ebp
 00410EF8    ret
*}
end;

//00410EFC
procedure sub_00410EFC;
begin
{*
 00410EFC    push        ebp
 00410EFD    mov         ebp,esp
 00410EFF    add         esp,0FFFFFF6C
 00410F05    mov         dword ptr [ebp-94],94
 00410F0F    lea         eax,[ebp-94]
 00410F15    push        eax
 00410F16    call        kernel32.GetVersionExA
 00410F1B    test        eax,eax
>00410F1D    je          00410F78
 00410F1F    mov         eax,dword ptr [ebp-84]
 00410F25    mov         [0056B7D8],eax;gvar_0056B7D8
 00410F2A    mov         eax,dword ptr [ebp-90]
 00410F30    mov         [0056B7DC],eax;gvar_0056B7DC
 00410F35    mov         eax,dword ptr [ebp-8C]
 00410F3B    mov         [0056B7E0],eax;gvar_0056B7E0
 00410F40    cmp         dword ptr ds:[56B7D8],1;gvar_0056B7D8
>00410F47    jne         00410F5B
 00410F49    mov         eax,dword ptr [ebp-88]
 00410F4F    and         eax,0FFFF
 00410F54    mov         [0056B7E4],eax;gvar_0056B7E4
>00410F59    jmp         00410F66
 00410F5B    mov         eax,dword ptr [ebp-88]
 00410F61    mov         [0056B7E4],eax;gvar_0056B7E4
 00410F66    mov         eax,56B7E8
 00410F6B    lea         edx,[ebp-80]
 00410F6E    mov         ecx,80
 00410F73    call        @LStrFromArray
 00410F78    mov         esp,ebp
 00410F7A    pop         ebp
 00410F7B    ret
*}
end;

//00410F7C
{*function sub_00410F7C(?:?; ?:?):?;
begin
 00410F7C    push        ebp
 00410F7D    mov         ebp,esp
 00410F7F    add         esp,0FFFFFFF4
 00410F82    mov         dword ptr [ebp-8],edx
 00410F85    mov         dword ptr [ebp-4],eax
 00410F88    mov         eax,[0056B7DC];0x0 gvar_0056B7DC
 00410F8D    cmp         eax,dword ptr [ebp-4]
>00410F90    jg          00410FAA
 00410F92    mov         eax,[0056B7DC];0x0 gvar_0056B7DC
 00410F97    cmp         eax,dword ptr [ebp-4]
>00410F9A    jne         00410FA6
 00410F9C    mov         eax,[0056B7E0];0x0 gvar_0056B7E0
 00410FA1    cmp         eax,dword ptr [ebp-8]
>00410FA4    jge         00410FAA
 00410FA6    xor         eax,eax
>00410FA8    jmp         00410FAC
 00410FAA    mov         al,1
 00410FAC    mov         byte ptr [ebp-9],al
 00410FAF    mov         al,byte ptr [ebp-9]
 00410FB2    mov         esp,ebp
 00410FB4    pop         ebp
 00410FB5    ret
end;*}

//00410FB8
{*function sub_00410FB8(?:AnsiString):?;
begin
 00410FB8    push        ebp
 00410FB9    mov         ebp,esp
 00410FBB    add         esp,0FFFFFFE0
 00410FBE    xor         edx,edx
 00410FC0    mov         dword ptr [ebp-0C],edx
 00410FC3    mov         dword ptr [ebp-4],eax
 00410FC6    xor         eax,eax
 00410FC8    push        ebp
 00410FC9    push        411096
 00410FCE    push        dword ptr fs:[eax]
 00410FD1    mov         dword ptr fs:[eax],esp
 00410FD4    mov         dword ptr [ebp-8],0FFFFFFFF
 00410FDB    lea         eax,[ebp-0C]
 00410FDE    mov         edx,dword ptr [ebp-4]
 00410FE1    call        @LStrLAsg
 00410FE6    lea         eax,[ebp-0C]
 00410FE9    call        UniqueString
 00410FEE    lea         eax,[ebp-14]
 00410FF1    push        eax
 00410FF2    mov         eax,dword ptr [ebp-0C]
 00410FF5    call        @LStrToPChar
 00410FFA    push        eax
 00410FFB    call        version.GetFileVersionInfoSizeA
 00411000    mov         dword ptr [ebp-10],eax
 00411003    cmp         dword ptr [ebp-10],0
>00411007    je          00411080
 00411009    mov         eax,dword ptr [ebp-10]
 0041100C    call        @GetMem
 00411011    mov         dword ptr [ebp-18],eax
 00411014    xor         eax,eax
 00411016    push        ebp
 00411017    push        411079
 0041101C    push        dword ptr fs:[eax]
 0041101F    mov         dword ptr fs:[eax],esp
 00411022    mov         eax,dword ptr [ebp-18]
 00411025    push        eax
 00411026    mov         eax,dword ptr [ebp-10]
 00411029    push        eax
 0041102A    mov         eax,dword ptr [ebp-14]
 0041102D    push        eax
 0041102E    mov         eax,dword ptr [ebp-0C]
 00411031    call        @LStrToPChar
 00411036    push        eax
 00411037    call        version.GetFileVersionInfoA
 0041103C    test        eax,eax
>0041103E    je          00411063
 00411040    lea         eax,[ebp-20]
 00411043    push        eax
 00411044    lea         eax,[ebp-1C]
 00411047    push        eax
 00411048    push        4110A4;'\'
 0041104D    mov         eax,dword ptr [ebp-18]
 00411050    push        eax
 00411051    call        version.VerQueryValueA
 00411056    test        eax,eax
>00411058    je          00411063
 0041105A    mov         eax,dword ptr [ebp-1C]
 0041105D    mov         eax,dword ptr [eax+8]
 00411060    mov         dword ptr [ebp-8],eax
 00411063    xor         eax,eax
 00411065    pop         edx
 00411066    pop         ecx
 00411067    pop         ecx
 00411068    mov         dword ptr fs:[eax],edx
 0041106B    push        411080
 00411070    mov         eax,dword ptr [ebp-18]
 00411073    call        @FreeMem
 00411078    ret
>00411079    jmp         @HandleFinally
>0041107E    jmp         00411070
 00411080    xor         eax,eax
 00411082    pop         edx
 00411083    pop         ecx
 00411084    pop         ecx
 00411085    mov         dword ptr fs:[eax],edx
 00411088    push        41109D
 0041108D    lea         eax,[ebp-0C]
 00411090    call        @LStrClr
 00411095    ret
>00411096    jmp         @HandleFinally
>0041109B    jmp         0041108D
 0041109D    mov         eax,dword ptr [ebp-8]
 004110A0    mov         esp,ebp
 004110A2    pop         ebp
 004110A3    ret
end;*}

//004110A8
procedure sub_004110A8;
begin
{*
 004110A8    push        ebp
 004110A9    mov         ebp,esp
 004110AB    push        0
 004110AD    call        user32.MessageBeep
 004110B2    pop         ebp
 004110B3    ret
*}
end;

//004110B4
{*function sub_004110B4(?:PChar; ?:?):?;
begin
 004110B4    push        ebp
 004110B5    mov         ebp,esp
 004110B7    add         esp,0FFFFFFF0
 004110BA    mov         dword ptr [ebp-8],edx
 004110BD    mov         dword ptr [ebp-4],eax
 004110C0    mov         byte ptr [ebp-9],0
 004110C4    cmp         dword ptr [ebp-4],0
>004110C8    je          00411159
 004110CE    mov         eax,dword ptr [ebp-8]
 004110D1    mov         edx,dword ptr [ebp-4]
 004110D4    cmp         byte ptr [edx+eax],0
>004110D8    je          00411159
 004110DA    cmp         dword ptr [ebp-8],0
>004110DE    jne         004110F9
 004110E0    mov         eax,dword ptr [ebp-4]
 004110E3    mov         al,byte ptr [eax]
 004110E5    and         eax,0FF
 004110EA    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>004110F1    jae         00411159
 004110F3    mov         byte ptr [ebp-9],1
>004110F7    jmp         00411159
 004110F9    mov         eax,dword ptr [ebp-8]
 004110FC    dec         eax
 004110FD    mov         dword ptr [ebp-10],eax
>00411100    jmp         00411105
 00411102    dec         dword ptr [ebp-10]
 00411105    cmp         dword ptr [ebp-10],0
>00411109    jl          00411122
 0041110B    mov         eax,dword ptr [ebp-10]
 0041110E    mov         edx,dword ptr [ebp-4]
 00411111    mov         al,byte ptr [edx+eax]
 00411114    and         eax,0FF
 00411119    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>00411120    jb          00411102
 00411122    mov         eax,dword ptr [ebp-8]
 00411125    sub         eax,dword ptr [ebp-10]
 00411128    and         eax,80000001
>0041112D    jns         00411134
 0041112F    dec         eax
 00411130    or          eax,0FFFFFFFE
 00411133    inc         eax
 00411134    test        eax,eax
>00411136    jne         0041113E
 00411138    mov         byte ptr [ebp-9],2
>0041113C    jmp         00411159
 0041113E    mov         eax,dword ptr [ebp-8]
 00411141    mov         edx,dword ptr [ebp-4]
 00411144    mov         al,byte ptr [edx+eax]
 00411147    and         eax,0FF
 0041114C    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>00411153    jae         00411159
 00411155    mov         byte ptr [ebp-9],1
 00411159    mov         al,byte ptr [ebp-9]
 0041115C    mov         esp,ebp
 0041115E    pop         ebp
 0041115F    ret
end;*}

//00411160
{*function sub_00411160(?:AnsiString; ?:Integer):?;
begin
 00411160    push        ebp
 00411161    mov         ebp,esp
 00411163    add         esp,0FFFFFFF4
 00411166    mov         dword ptr [ebp-8],edx
 00411169    mov         dword ptr [ebp-4],eax
 0041116C    mov         byte ptr [ebp-9],0
 00411170    cmp         byte ptr ds:[571978],0;gvar_00571978
>00411177    je          0041118D
 00411179    mov         eax,dword ptr [ebp-4]
 0041117C    call        @LStrToPChar
 00411181    mov         edx,dword ptr [ebp-8]
 00411184    dec         edx
 00411185    call        004110B4
 0041118A    mov         byte ptr [ebp-9],al
 0041118D    mov         al,byte ptr [ebp-9]
 00411190    mov         esp,ebp
 00411192    pop         ebp
 00411193    ret
end;*}

//00411194
{*function sub_00411194(?:PChar; ?:?):?;
begin
 00411194    push        ebp
 00411195    mov         ebp,esp
 00411197    add         esp,0FFFFFFF4
 0041119A    mov         dword ptr [ebp-8],edx
 0041119D    mov         dword ptr [ebp-4],eax
 004111A0    mov         byte ptr [ebp-9],0
 004111A4    cmp         byte ptr ds:[571978],0;gvar_00571978
>004111AB    je          004111BB
 004111AD    mov         edx,dword ptr [ebp-8]
 004111B0    mov         eax,dword ptr [ebp-4]
 004111B3    call        004110B4
 004111B8    mov         byte ptr [ebp-9],al
 004111BB    mov         al,byte ptr [ebp-9]
 004111BE    mov         esp,ebp
 004111C0    pop         ebp
 004111C1    ret
end;*}

//004111C4
{*function sub_004111C4(?:?; ?:Integer):?;
begin
 004111C4    push        ebp
 004111C5    mov         ebp,esp
 004111C7    add         esp,0FFFFFFF4
 004111CA    mov         dword ptr [ebp-8],edx
 004111CD    mov         dword ptr [ebp-4],eax
 004111D0    mov         eax,dword ptr [ebp-4]
 004111D3    call        @LStrLen
 004111D8    cmp         eax,dword ptr [ebp-8]
>004111DB    jge         004111E8
 004111DD    mov         eax,dword ptr [ebp-4]
 004111E0    call        @LStrLen
 004111E5    mov         dword ptr [ebp-8],eax
 004111E8    mov         edx,dword ptr [ebp-8]
 004111EB    mov         eax,dword ptr [ebp-4]
 004111EE    call        00411200
 004111F3    mov         dword ptr [ebp-0C],eax
 004111F6    mov         eax,dword ptr [ebp-0C]
 004111F9    mov         esp,ebp
 004111FB    pop         ebp
 004111FC    ret
end;*}

//00411200
{*function sub_00411200(?:?; ?:Integer):?;
begin
 00411200    push        ebp
 00411201    mov         ebp,esp
 00411203    add         esp,0FFFFFFF0
 00411206    mov         dword ptr [ebp-8],edx
 00411209    mov         dword ptr [ebp-4],eax
 0041120C    xor         eax,eax
 0041120E    mov         dword ptr [ebp-0C],eax
 00411211    cmp         dword ptr [ebp-8],0
>00411215    jle         0041127D
 00411217    mov         eax,dword ptr [ebp-4]
 0041121A    call        @LStrLen
 0041121F    cmp         eax,dword ptr [ebp-8]
>00411222    jl          0041127D
 00411224    mov         eax,dword ptr [ebp-8]
 00411227    mov         dword ptr [ebp-0C],eax
 0041122A    cmp         byte ptr ds:[571978],0;gvar_00571978
>00411231    je          0041127D
 00411233    mov         dword ptr [ebp-10],1
 0041123A    xor         eax,eax
 0041123C    mov         dword ptr [ebp-0C],eax
 0041123F    mov         eax,dword ptr [ebp-10]
 00411242    cmp         eax,dword ptr [ebp-8]
>00411245    jg          0041127D
 00411247    mov         eax,dword ptr [ebp-10]
 0041124A    mov         edx,dword ptr [ebp-4]
 0041124D    mov         al,byte ptr [edx+eax-1]
 00411251    and         eax,0FF
 00411256    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>0041125D    jae         0041126F
 0041125F    mov         edx,dword ptr [ebp-10]
 00411262    mov         eax,dword ptr [ebp-4]
 00411265    call        004114C8
 0041126A    mov         dword ptr [ebp-10],eax
>0041126D    jmp         00411272
 0041126F    inc         dword ptr [ebp-10]
 00411272    inc         dword ptr [ebp-0C]
 00411275    mov         eax,dword ptr [ebp-10]
 00411278    cmp         eax,dword ptr [ebp-8]
>0041127B    jle         00411247
 0041127D    mov         eax,dword ptr [ebp-0C]
 00411280    mov         esp,ebp
 00411282    pop         ebp
 00411283    ret
end;*}

//00411284
{*procedure sub_00411284(?:AnsiString; ?:Integer; ?:?; ?:?);
begin
 00411284    push        ebp
 00411285    mov         ebp,esp
 00411287    add         esp,0FFFFFFE8
 0041128A    mov         dword ptr [ebp-0C],ecx
 0041128D    mov         dword ptr [ebp-8],edx
 00411290    mov         dword ptr [ebp-4],eax
 00411293    mov         eax,dword ptr [ebp-4]
 00411296    call        @LStrLen
 0041129B    mov         dword ptr [ebp-14],eax
 0041129E    mov         dword ptr [ebp-10],1
 004112A5    mov         dword ptr [ebp-18],1
>004112AC    jmp         004112DC
 004112AE    inc         dword ptr [ebp-10]
 004112B1    mov         eax,dword ptr [ebp-4]
 004112B4    mov         edx,dword ptr [ebp-18]
 004112B7    mov         al,byte ptr [eax+edx-1]
 004112BB    and         eax,0FF
 004112C0    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>004112C7    jae         004112D9
 004112C9    mov         edx,dword ptr [ebp-18]
 004112CC    mov         eax,dword ptr [ebp-4]
 004112CF    call        004114C8
 004112D4    mov         dword ptr [ebp-18],eax
>004112D7    jmp         004112DC
 004112D9    inc         dword ptr [ebp-18]
 004112DC    mov         eax,dword ptr [ebp-18]
 004112DF    cmp         eax,dword ptr [ebp-14]
>004112E2    jge         004112EC
 004112E4    mov         eax,dword ptr [ebp-10]
 004112E7    cmp         eax,dword ptr [ebp-8]
>004112EA    jl          004112AE
 004112EC    mov         eax,dword ptr [ebp-10]
 004112EF    cmp         eax,dword ptr [ebp-8]
>004112F2    jne         00411323
 004112F4    mov         eax,dword ptr [ebp-18]
 004112F7    cmp         eax,dword ptr [ebp-14]
>004112FA    jge         00411323
 004112FC    mov         eax,dword ptr [ebp-4]
 004112FF    mov         edx,dword ptr [ebp-18]
 00411302    mov         al,byte ptr [eax+edx-1]
 00411306    and         eax,0FF
 0041130B    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>00411312    jae         00411323
 00411314    mov         edx,dword ptr [ebp-18]
 00411317    mov         eax,dword ptr [ebp-4]
 0041131A    call        004114C8
 0041131F    dec         eax
 00411320    mov         dword ptr [ebp-18],eax
 00411323    mov         eax,dword ptr [ebp-0C]
 00411326    mov         edx,dword ptr [ebp-10]
 00411329    mov         dword ptr [eax],edx
 0041132B    mov         eax,dword ptr [ebp+8]
 0041132E    mov         edx,dword ptr [ebp-18]
 00411331    mov         dword ptr [eax],edx
 00411333    mov         esp,ebp
 00411335    pop         ebp
 00411336    ret         4
end;*}

//0041133C
{*function sub_0041133C(?:?; ?:?):?;
begin
 0041133C    push        ebp
 0041133D    mov         ebp,esp
 0041133F    add         esp,0FFFFFFF0
 00411342    mov         dword ptr [ebp-8],edx
 00411345    mov         dword ptr [ebp-4],eax
 00411348    xor         eax,eax
 0041134A    mov         dword ptr [ebp-0C],eax
 0041134D    cmp         dword ptr [ebp-8],0
>00411351    jle         004113AA
 00411353    mov         eax,dword ptr [ebp-4]
 00411356    call        @LStrLen
 0041135B    cmp         eax,dword ptr [ebp-8]
>0041135E    jl          004113AA
 00411360    cmp         dword ptr [ebp-8],1
>00411364    jle         004113A4
 00411366    cmp         byte ptr ds:[571978],0;gvar_00571978
>0041136D    je          004113A4
 0041136F    lea         eax,[ebp-0C]
 00411372    push        eax
 00411373    lea         ecx,[ebp-10]
 00411376    mov         edx,dword ptr [ebp-8]
 00411379    dec         edx
 0041137A    mov         eax,dword ptr [ebp-4]
 0041137D    call        00411284
 00411382    mov         eax,dword ptr [ebp-8]
 00411385    dec         eax
 00411386    cmp         eax,dword ptr [ebp-10]
>00411389    jg          00411398
 0041138B    mov         eax,dword ptr [ebp-4]
 0041138E    call        @LStrLen
 00411393    cmp         eax,dword ptr [ebp-0C]
>00411396    jg          0041139F
 00411398    xor         eax,eax
 0041139A    mov         dword ptr [ebp-0C],eax
>0041139D    jmp         004113AA
 0041139F    inc         dword ptr [ebp-0C]
>004113A2    jmp         004113AA
 004113A4    mov         eax,dword ptr [ebp-8]
 004113A7    mov         dword ptr [ebp-0C],eax
 004113AA    mov         eax,dword ptr [ebp-0C]
 004113AD    mov         esp,ebp
 004113AF    pop         ebp
 004113B0    ret
end;*}

//004113B4
{*function sub_004113B4(?:AnsiString; ?:?):?;
begin
 004113B4    push        ebp
 004113B5    mov         ebp,esp
 004113B7    add         esp,0FFFFFFF0
 004113BA    mov         dword ptr [ebp-8],edx
 004113BD    mov         dword ptr [ebp-4],eax
 004113C0    xor         eax,eax
 004113C2    mov         dword ptr [ebp-0C],eax
 004113C5    cmp         dword ptr [ebp-8],0
>004113C9    jle         0041141E
 004113CB    mov         eax,dword ptr [ebp-4]
 004113CE    call        @LStrLen
 004113D3    cmp         eax,dword ptr [ebp-8]
>004113D6    jge         004113E3
 004113D8    mov         eax,dword ptr [ebp-4]
 004113DB    call        @LStrLen
 004113E0    mov         dword ptr [ebp-8],eax
 004113E3    cmp         byte ptr ds:[571978],0;gvar_00571978
>004113EA    je          00411418
 004113EC    lea         eax,[ebp-0C]
 004113EF    push        eax
 004113F0    lea         ecx,[ebp-10]
 004113F3    mov         edx,dword ptr [ebp-8]
 004113F6    mov         eax,dword ptr [ebp-4]
 004113F9    call        00411284
 004113FE    mov         eax,dword ptr [ebp-4]
 00411401    call        @LStrLen
 00411406    cmp         eax,dword ptr [ebp-0C]
>00411409    jge         0041141E
 0041140B    mov         eax,dword ptr [ebp-4]
 0041140E    call        @LStrLen
 00411413    mov         dword ptr [ebp-0C],eax
>00411416    jmp         0041141E
 00411418    mov         eax,dword ptr [ebp-8]
 0041141B    mov         dword ptr [ebp-0C],eax
 0041141E    mov         eax,dword ptr [ebp-0C]
 00411421    mov         esp,ebp
 00411423    pop         ebp
 00411424    ret
end;*}

//00411428
{*function sub_00411428(?:?):?;
begin
 00411428    push        ebp
 00411429    mov         ebp,esp
 0041142B    add         esp,0FFFFFFF8
 0041142E    mov         dword ptr [ebp-4],eax
 00411431    cmp         byte ptr ds:[571978],0;gvar_00571978
>00411438    je          0041144B
 0041143A    mov         eax,dword ptr [ebp-4]
 0041143D    push        eax
 0041143E    call        user32.CharNextA
 00411443    sub         eax,dword ptr [ebp-4]
 00411446    mov         dword ptr [ebp-8],eax
>00411449    jmp         00411452
 0041144B    mov         dword ptr [ebp-8],1
 00411452    mov         eax,dword ptr [ebp-8]
 00411455    pop         ecx
 00411456    pop         ecx
 00411457    pop         ebp
 00411458    ret
end;*}

//0041145C
{*function sub_0041145C(?:?):?;
begin
 0041145C    push        ebp
 0041145D    mov         ebp,esp
 0041145F    add         esp,0FFFFFFF8
 00411462    mov         dword ptr [ebp-4],eax
 00411465    mov         eax,dword ptr [ebp-4]
 00411468    push        eax
 00411469    call        user32.CharNextA
 0041146E    mov         dword ptr [ebp-8],eax
 00411471    mov         eax,dword ptr [ebp-8]
 00411474    pop         ecx
 00411475    pop         ecx
 00411476    pop         ebp
 00411477    ret
end;*}

//00411478
{*function sub_00411478(?:?; ?:?):?;
begin
 00411478    push        ebp
 00411479    mov         ebp,esp
 0041147B    add         esp,0FFFFFFF4
 0041147E    mov         dword ptr [ebp-8],edx
 00411481    mov         dword ptr [ebp-4],eax
 00411484    mov         dword ptr [ebp-0C],1
 0041148B    cmp         byte ptr ds:[571978],0;gvar_00571978
>00411492    je          004114C0
 00411494    mov         eax,dword ptr [ebp-8]
 00411497    mov         edx,dword ptr [ebp-4]
 0041149A    mov         al,byte ptr [edx+eax-1]
 0041149E    and         eax,0FF
 004114A3    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>004114AA    jae         004114C0
 004114AC    mov         eax,dword ptr [ebp-4]
 004114AF    call        @LStrToPChar
 004114B4    add         eax,dword ptr [ebp-8]
 004114B7    dec         eax
 004114B8    call        00411428
 004114BD    mov         dword ptr [ebp-0C],eax
 004114C0    mov         eax,dword ptr [ebp-0C]
 004114C3    mov         esp,ebp
 004114C5    pop         ebp
 004114C6    ret
end;*}

//004114C8
{*function sub_004114C8(?:?; ?:?):?;
begin
 004114C8    push        ebp
 004114C9    mov         ebp,esp
 004114CB    add         esp,0FFFFFFF4
 004114CE    mov         dword ptr [ebp-8],edx
 004114D1    mov         dword ptr [ebp-4],eax
 004114D4    mov         eax,dword ptr [ebp-8]
 004114D7    inc         eax
 004114D8    mov         dword ptr [ebp-0C],eax
 004114DB    cmp         byte ptr ds:[571978],0;gvar_00571978
>004114E2    je          00411513
 004114E4    mov         eax,dword ptr [ebp-8]
 004114E7    mov         edx,dword ptr [ebp-4]
 004114EA    mov         al,byte ptr [edx+eax-1]
 004114EE    and         eax,0FF
 004114F3    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>004114FA    jae         00411513
 004114FC    mov         eax,dword ptr [ebp-4]
 004114FF    call        @LStrToPChar
 00411504    add         eax,dword ptr [ebp-8]
 00411507    dec         eax
 00411508    call        00411428
 0041150D    add         eax,dword ptr [ebp-8]
 00411510    mov         dword ptr [ebp-0C],eax
 00411513    mov         eax,dword ptr [ebp-0C]
 00411516    mov         esp,ebp
 00411518    pop         ebp
 00411519    ret
end;*}

//0041151C
{*function sub_0041151C(?:String; ?:Integer):?;
begin
 0041151C    push        ebp
 0041151D    mov         ebp,esp
 0041151F    add         esp,0FFFFFFF4
 00411522    mov         dword ptr [ebp-8],edx
 00411525    mov         dword ptr [ebp-4],eax
 00411528    cmp         dword ptr [ebp-8],0
>0041152C    jle         00411557
 0041152E    mov         eax,dword ptr [ebp-4]
 00411531    call        @LStrLen
 00411536    cmp         eax,dword ptr [ebp-8]
>00411539    jl          00411557
 0041153B    mov         eax,dword ptr [ebp-8]
 0041153E    mov         edx,dword ptr [ebp-4]
 00411541    cmp         byte ptr [edx+eax-1],5C
>00411546    jne         00411557
 00411548    mov         edx,dword ptr [ebp-8]
 0041154B    mov         eax,dword ptr [ebp-4]
 0041154E    call        00411160
 00411553    test        al,al
>00411555    je          0041155B
 00411557    xor         eax,eax
>00411559    jmp         0041155D
 0041155B    mov         al,1
 0041155D    mov         byte ptr [ebp-9],al
 00411560    mov         al,byte ptr [ebp-9]
 00411563    mov         esp,ebp
 00411565    pop         ebp
 00411566    ret
end;*}

//00411568
{*function sub_00411568(?:AnsiString; ?:String; ?:?):?;
begin
 00411568    push        ebp
 00411569    mov         ebp,esp
 0041156B    add         esp,0FFFFFFF0
 0041156E    mov         dword ptr [ebp-0C],ecx
 00411571    mov         dword ptr [ebp-8],edx
 00411574    mov         dword ptr [ebp-4],eax
 00411577    mov         byte ptr [ebp-0D],0
 0041157B    cmp         dword ptr [ebp-0C],0
>0041157F    jle         004115BA
 00411581    mov         eax,dword ptr [ebp-8]
 00411584    call        @LStrLen
 00411589    cmp         eax,dword ptr [ebp-0C]
>0041158C    jl          004115BA
 0041158E    mov         edx,dword ptr [ebp-0C]
 00411591    mov         eax,dword ptr [ebp-8]
 00411594    call        00411160
 00411599    test        al,al
>0041159B    jne         004115BA
 0041159D    mov         eax,dword ptr [ebp-4]
 004115A0    call        @LStrToPChar
 004115A5    mov         edx,dword ptr [ebp-0C]
 004115A8    mov         ecx,dword ptr [ebp-8]
 004115AB    mov         dl,byte ptr [ecx+edx-1]
 004115AF    call        0040CFF0
 004115B4    test        eax,eax
 004115B6    setne       byte ptr [ebp-0D]
 004115BA    mov         al,byte ptr [ebp-0D]
 004115BD    mov         esp,ebp
 004115BF    pop         ebp
 004115C0    ret
end;*}

//004115C4
{*function sub_004115C4(?:AnsiString; ?:?):?;
begin
 004115C4    push        ebp
 004115C5    mov         ebp,esp
 004115C7    add         esp,0FFFFFFF8
 004115CA    mov         dword ptr [ebp-8],edx
 004115CD    mov         dword ptr [ebp-4],eax
 004115D0    mov         eax,dword ptr [ebp-8]
 004115D3    mov         edx,dword ptr [ebp-4]
 004115D6    call        @LStrAsg
 004115DB    mov         eax,dword ptr [ebp-8]
 004115DE    mov         eax,dword ptr [eax]
 004115E0    call        @LStrLen
 004115E5    mov         edx,eax
 004115E7    mov         eax,dword ptr [ebp-8]
 004115EA    mov         eax,dword ptr [eax]
 004115EC    call        0041151C
 004115F1    test        al,al
>004115F3    jne         00411605
 004115F5    mov         eax,dword ptr [ebp-8]
 004115F8    mov         edx,411614;'\'
 004115FD    call        @LStrCat
 00411602    mov         eax,dword ptr [ebp-8]
 00411605    pop         ecx
 00411606    pop         ecx
 00411607    pop         ebp
 00411608    ret
end;*}

//00411618
{*procedure sub_00411618(?:?; ?:?);
begin
 00411618    push        ebp
 00411619    mov         ebp,esp
 0041161B    add         esp,0FFFFFFF8
 0041161E    mov         dword ptr [ebp-8],edx
 00411621    mov         dword ptr [ebp-4],eax
 00411624    mov         eax,dword ptr [ebp-8]
 00411627    mov         edx,dword ptr [ebp-4]
 0041162A    call        @LStrAsg
 0041162F    mov         eax,dword ptr [ebp-8]
 00411632    mov         eax,dword ptr [eax]
 00411634    call        @LStrLen
 00411639    mov         edx,eax
 0041163B    mov         eax,dword ptr [ebp-8]
 0041163E    mov         eax,dword ptr [eax]
 00411640    call        0041151C
 00411645    test        al,al
>00411647    je          0041165E
 00411649    mov         eax,dword ptr [ebp-8]
 0041164C    mov         eax,dword ptr [eax]
 0041164E    call        @LStrLen
 00411653    mov         edx,eax
 00411655    dec         edx
 00411656    mov         eax,dword ptr [ebp-8]
 00411659    call        @LStrSetLength
 0041165E    pop         ecx
 0041165F    pop         ecx
 00411660    pop         ebp
 00411661    ret
end;*}

//00411664
{*function sub_00411664(?:AnsiString; ?:AnsiString):?;
begin
 00411664    push        ebp
 00411665    mov         ebp,esp
 00411667    add         esp,0FFFFFFF0
 0041166A    mov         dword ptr [ebp-8],edx
 0041166D    mov         dword ptr [ebp-4],eax
 00411670    xor         eax,eax
 00411672    mov         dword ptr [ebp-0C],eax
 00411675    mov         eax,dword ptr [ebp-4]
 00411678    call        @LStrToPChar
 0041167D    push        eax
 0041167E    mov         eax,dword ptr [ebp-8]
 00411681    call        @LStrToPChar
 00411686    pop         edx
 00411687    call        00411784
 0041168C    mov         dword ptr [ebp-10],eax
 0041168F    cmp         dword ptr [ebp-10],0
>00411693    je          004116A6
 00411695    mov         eax,dword ptr [ebp-8]
 00411698    call        @LStrToPChar
 0041169D    mov         edx,dword ptr [ebp-10]
 004116A0    sub         edx,eax
 004116A2    inc         edx
 004116A3    mov         dword ptr [ebp-0C],edx
 004116A6    mov         eax,dword ptr [ebp-0C]
 004116A9    mov         esp,ebp
 004116AB    pop         ebp
 004116AC    ret
end;*}

//004116B0
{*procedure sub_004116B0(?:AnsiString; ?:?);
begin
 004116B0    push        ebp
 004116B1    mov         ebp,esp
 004116B3    add         esp,0FFFFFFF0
 004116B6    push        ebx
 004116B7    mov         dword ptr [ebp-8],edx
 004116BA    mov         dword ptr [ebp-4],eax
 004116BD    cmp         byte ptr ds:[571978],0;gvar_00571978
>004116C4    je          00411771
 004116CA    mov         eax,dword ptr [ebp-4]
 004116CD    call        @LStrLen
 004116D2    mov         dword ptr [ebp-10],eax
 004116D5    mov         eax,dword ptr [ebp-8]
 004116D8    mov         edx,dword ptr [ebp-10]
 004116DB    call        @LStrSetLength
 004116E0    mov         dword ptr [ebp-0C],1
 004116E7    mov         eax,dword ptr [ebp-0C]
 004116EA    cmp         eax,dword ptr [ebp-10]
>004116ED    jg          0041177C
 004116F3    mov         eax,dword ptr [ebp-8]
 004116F6    call        00405598
 004116FB    mov         edx,dword ptr [ebp-0C]
 004116FE    mov         ecx,dword ptr [ebp-0C]
 00411701    mov         ebx,dword ptr [ebp-4]
 00411704    mov         cl,byte ptr [ebx+ecx-1]
 00411708    mov         byte ptr [eax+edx-1],cl
 0041170C    mov         eax,dword ptr [ebp-0C]
 0041170F    mov         edx,dword ptr [ebp-4]
 00411712    mov         al,byte ptr [edx+eax-1]
 00411716    and         eax,0FF
 0041171B    bt          dword ptr ds:[56B820],eax;gvar_0056B820
>00411722    jae         00411742
 00411724    inc         dword ptr [ebp-0C]
 00411727    mov         eax,dword ptr [ebp-8]
 0041172A    call        00405598
 0041172F    mov         edx,dword ptr [ebp-0C]
 00411732    mov         ecx,dword ptr [ebp-0C]
 00411735    mov         ebx,dword ptr [ebp-4]
 00411738    mov         cl,byte ptr [ebx+ecx-1]
 0041173C    mov         byte ptr [eax+edx-1],cl
>00411740    jmp         00411764
 00411742    mov         eax,dword ptr [ebp-8]
 00411745    mov         eax,dword ptr [eax]
 00411747    mov         edx,dword ptr [ebp-0C]
 0041174A    mov         al,byte ptr [eax+edx-1]
 0041174E    add         al,0BF
 00411750    sub         al,1A
>00411752    jae         00411764
 00411754    mov         eax,dword ptr [ebp-8]
 00411757    call        00405598
 0041175C    mov         edx,dword ptr [ebp-0C]
 0041175F    add         byte ptr [eax+edx-1],20
 00411764    inc         dword ptr [ebp-0C]
 00411767    mov         eax,dword ptr [ebp-0C]
 0041176A    cmp         eax,dword ptr [ebp-10]
>0041176D    jle         004116F3
>0041176F    jmp         0041177C
 00411771    mov         edx,dword ptr [ebp-8]
 00411774    mov         eax,dword ptr [ebp-4]
 00411777    call        0040BEB0
 0041177C    pop         ebx
 0041177D    mov         esp,ebp
 0041177F    pop         ebp
 00411780    ret
end;*}

//00411784
{*function sub_00411784(?:PChar; ?:?):?;
begin
 00411784    push        ebp
 00411785    mov         ebp,esp
 00411787    add         esp,0FFFFFFE8
 0041178A    mov         dword ptr [ebp-8],edx
 0041178D    mov         dword ptr [ebp-4],eax
 00411790    xor         eax,eax
 00411792    mov         dword ptr [ebp-0C],eax
 00411795    cmp         dword ptr [ebp-4],0
>00411799    je          00411854
 0041179F    mov         eax,dword ptr [ebp-4]
 004117A2    cmp         byte ptr [eax],0
>004117A5    je          00411854
 004117AB    cmp         dword ptr [ebp-8],0
>004117AF    je          00411854
 004117B5    mov         eax,dword ptr [ebp-8]
 004117B8    cmp         byte ptr [eax],0
>004117BB    je          00411854
 004117C1    mov         eax,dword ptr [ebp-4]
 004117C4    call        StrLen
 004117C9    mov         dword ptr [ebp-10],eax
 004117CC    mov         eax,dword ptr [ebp-8]
 004117CF    call        StrLen
 004117D4    mov         dword ptr [ebp-14],eax
 004117D7    mov         edx,dword ptr [ebp-8]
 004117DA    mov         eax,dword ptr [ebp-4]
 004117DD    call        StrPos
 004117E2    mov         dword ptr [ebp-0C],eax
>004117E5    jmp         00411839
 004117E7    mov         edx,dword ptr [ebp-0C]
 004117EA    sub         edx,dword ptr [ebp-4]
 004117ED    mov         eax,dword ptr [ebp-4]
 004117F0    call        00411194
 004117F5    mov         byte ptr [ebp-15],al
 004117F8    cmp         byte ptr [ebp-15],2
>004117FC    je          0041181F
 004117FE    mov         eax,dword ptr [ebp-14]
 00411801    push        eax
 00411802    mov         eax,dword ptr [ebp-8]
 00411805    push        eax
 00411806    mov         eax,dword ptr [ebp-14]
 00411809    push        eax
 0041180A    mov         eax,dword ptr [ebp-0C]
 0041180D    push        eax
 0041180E    push        0
 00411810    push        400
 00411815    call        kernel32.CompareStringA
 0041181A    cmp         eax,2
>0041181D    je          00411854
 0041181F    cmp         byte ptr [ebp-15],1
>00411823    jne         00411828
 00411825    inc         dword ptr [ebp-0C]
 00411828    inc         dword ptr [ebp-0C]
 0041182B    mov         edx,dword ptr [ebp-8]
 0041182E    mov         eax,dword ptr [ebp-0C]
 00411831    call        StrPos
 00411836    mov         dword ptr [ebp-0C],eax
 00411839    cmp         dword ptr [ebp-0C],0
>0041183D    je          0041184F
 0041183F    mov         eax,dword ptr [ebp-0C]
 00411842    sub         eax,dword ptr [ebp-4]
 00411845    mov         edx,dword ptr [ebp-10]
 00411848    sub         edx,eax
 0041184A    cmp         edx,dword ptr [ebp-14]
>0041184D    jae         004117E7
 0041184F    xor         eax,eax
 00411851    mov         dword ptr [ebp-0C],eax
 00411854    mov         eax,dword ptr [ebp-0C]
 00411857    mov         esp,ebp
 00411859    pop         ebp
 0041185A    ret
end;*}

//0041185C
{*function sub_0041185C(?:?; ?:?):?;
begin
 0041185C    push        ebp
 0041185D    mov         ebp,esp
 0041185F    add         esp,0FFFFFFF4
 00411862    mov         byte ptr [ebp-5],dl
 00411865    mov         dword ptr [ebp-4],eax
 00411868    mov         dl,byte ptr [ebp-5]
 0041186B    mov         eax,dword ptr [ebp-4]
 0041186E    call        004118AC
 00411873    mov         dword ptr [ebp-4],eax
 00411876    mov         eax,dword ptr [ebp-4]
 00411879    mov         dword ptr [ebp-0C],eax
 0041187C    cmp         byte ptr [ebp-5],0
>00411880    je          004118A5
 00411882    cmp         dword ptr [ebp-4],0
>00411886    je          004118A5
 00411888    mov         eax,dword ptr [ebp-4]
 0041188B    mov         dword ptr [ebp-0C],eax
 0041188E    inc         dword ptr [ebp-4]
 00411891    mov         dl,byte ptr [ebp-5]
 00411894    mov         eax,dword ptr [ebp-4]
 00411897    call        004118AC
 0041189C    mov         dword ptr [ebp-4],eax
 0041189F    cmp         dword ptr [ebp-4],0
>004118A3    jne         00411888
 004118A5    mov         eax,dword ptr [ebp-0C]
 004118A8    mov         esp,ebp
 004118AA    pop         ebp
 004118AB    ret
end;*}

//004118AC
{*function sub_004118AC(?:PChar; ?:?):?;
begin
 004118AC    push        ebp
 004118AD    mov         ebp,esp
 004118AF    add         esp,0FFFFFFF4
 004118B2    mov         byte ptr [ebp-5],dl
 004118B5    mov         dword ptr [ebp-4],eax
 004118B8    mov         dl,byte ptr [ebp-5]
 004118BB    mov         eax,dword ptr [ebp-4]
 004118BE    call        0040CFF0
 004118C3    mov         dword ptr [ebp-0C],eax
 004118C6    cmp         dword ptr [ebp-0C],0
>004118CA    je          004118FC
 004118CC    mov         edx,dword ptr [ebp-0C]
 004118CF    sub         edx,dword ptr [ebp-4]
 004118D2    mov         eax,dword ptr [ebp-4]
 004118D5    call        00411194
 004118DA    sub         al,1
>004118DC    jb          004118FC
>004118DE    je          004118E2
>004118E0    jmp         004118E5
 004118E2    inc         dword ptr [ebp-0C]
 004118E5    inc         dword ptr [ebp-0C]
 004118E8    mov         dl,byte ptr [ebp-5]
 004118EB    mov         eax,dword ptr [ebp-0C]
 004118EE    call        0040CFF0
 004118F3    mov         dword ptr [ebp-0C],eax
 004118F6    cmp         dword ptr [ebp-0C],0
>004118FA    jne         004118CC
 004118FC    mov         eax,dword ptr [ebp-0C]
 004118FF    mov         esp,ebp
 00411901    pop         ebp
 00411902    ret
end;*}

//00411904
{*function sub_00411904(?:?):?;
begin
 00411904    push        ebp
 00411905    mov         ebp,esp
 00411907    add         esp,0FFFFFFEC
 0041190A    xor         edx,edx
 0041190C    mov         dword ptr [ebp-14],edx
 0041190F    mov         dword ptr [ebp-4],eax
 00411912    xor         eax,eax
 00411914    push        ebp
 00411915    push        41196E
 0041191A    push        dword ptr fs:[eax]
 0041191D    mov         dword ptr fs:[eax],esp
 00411920    push        7
 00411922    lea         eax,[ebp-0F]
 00411925    push        eax
 00411926    push        1004
 0041192B    mov         eax,dword ptr [ebp-4]
 0041192E    push        eax
 0041192F    call        kernel32.GetLocaleInfoA
 00411934    lea         eax,[ebp-14]
 00411937    lea         edx,[ebp-0F]
 0041193A    mov         ecx,7
 0041193F    call        @LStrFromArray
 00411944    mov         eax,dword ptr [ebp-14]
 00411947    push        eax
 00411948    call        kernel32.GetACP
 0041194D    mov         edx,eax
 0041194F    pop         eax
 00411950    call        0040C4A8
 00411955    mov         dword ptr [ebp-8],eax
 00411958    xor         eax,eax
 0041195A    pop         edx
 0041195B    pop         ecx
 0041195C    pop         ecx
 0041195D    mov         dword ptr fs:[eax],edx
 00411960    push        411975
 00411965    lea         eax,[ebp-14]
 00411968    call        @LStrClr
 0041196D    ret
>0041196E    jmp         @HandleFinally
>00411973    jmp         00411965
 00411975    mov         eax,dword ptr [ebp-8]
 00411978    mov         esp,ebp
 0041197A    pop         ebp
 0041197B    ret
end;*}

//0041197C
{*procedure sub_0041197C(?:?);
begin
 0041197C    push        ebp
 0041197D    mov         ebp,esp
 0041197F    add         esp,0FFFFFFF8
 00411982    mov         eax,dword ptr [ebp+8]
 00411985    add         eax,0FFFFFFEC
 00411988    push        eax
 00411989    mov         eax,[0057196C];0x0 gvar_0057196C:Integer
 0041198E    call        00411904
 00411993    push        eax
 00411994    call        kernel32.GetCPInfo
 00411999    xor         eax,eax
 0041199B    mov         dword ptr [ebp-4],eax
>0041199E    jmp         004119DA
 004119A0    mov         eax,dword ptr [ebp+8]
 004119A3    mov         edx,dword ptr [ebp-4]
 004119A6    mov         al,byte ptr [eax+edx-0E]
 004119AA    mov         edx,dword ptr [ebp+8]
 004119AD    mov         ecx,dword ptr [ebp-4]
 004119B0    mov         dl,byte ptr [edx+ecx-0D]
 004119B4    sub         dl,al
>004119B6    jb          004119D6
 004119B8    inc         edx
 004119B9    mov         byte ptr [ebp-6],dl
 004119BC    mov         byte ptr [ebp-5],al
 004119BF    mov         al,byte ptr [ebp-5]
 004119C2    and         eax,0FF
 004119C7    bts         dword ptr ds:[56B820],eax;gvar_0056B820
 004119CE    inc         byte ptr [ebp-5]
 004119D1    dec         byte ptr [ebp-6]
>004119D4    jne         004119BF
 004119D6    add         dword ptr [ebp-4],2
 004119DA    cmp         dword ptr [ebp-4],0C
>004119DE    jge         004119F6
 004119E0    mov         eax,dword ptr [ebp+8]
 004119E3    mov         edx,dword ptr [ebp-4]
 004119E6    mov         al,byte ptr [eax+edx-0E]
 004119EA    mov         edx,dword ptr [ebp+8]
 004119ED    mov         ecx,dword ptr [ebp-4]
 004119F0    or          al,byte ptr [edx+ecx-0D]
>004119F4    jne         004119A0
 004119F6    pop         ecx
 004119F7    pop         ecx
 004119F8    pop         ebp
 004119F9    ret
end;*}

//004119FC
{*function sub_004119FC:?;
begin
 004119FC    push        ebp
 004119FD    mov         ebp,esp
 004119FF    push        ecx
 00411A00    mov         eax,[00571970];0x0 gvar_00571970
 00411A05    cmp         eax,1F
>00411A08    ja          00411A11
 00411A0A    bt          dword ptr ds:[56BA1C],eax;gvar_0056BA1C
 00411A11    setb        al
 00411A14    mov         byte ptr [ebp-1],al
 00411A17    mov         al,byte ptr [ebp-1]
 00411A1A    pop         ecx
 00411A1B    pop         ebp
 00411A1C    ret
end;*}

//00411A20
procedure sub_00411A20;
begin
{*
 00411A20    push        ebp
 00411A21    mov         ebp,esp
 00411A23    add         esp,0FFFFFE58
 00411A29    push        esi
 00411A2A    push        edi
 00411A2B    mov         dword ptr ds:[57196C],409;gvar_0057196C:Integer
 00411A35    mov         dword ptr ds:[571970],9;gvar_00571970
 00411A3F    mov         dword ptr ds:[571974],1;gvar_00571974
 00411A49    call        kernel32.GetThreadLocale
 00411A4E    mov         dword ptr [ebp-18],eax
 00411A51    cmp         dword ptr [ebp-18],0
>00411A55    je          00411A5F
 00411A57    mov         eax,dword ptr [ebp-18]
 00411A5A    mov         [0057196C],eax;gvar_0057196C:Integer
 00411A5F    mov         ax,word ptr [ebp-18]
 00411A63    mov         word ptr [ebp-1A],ax
 00411A67    cmp         word ptr [ebp-1A],0
>00411A6C    je          00411A8A
 00411A6E    mov         ax,word ptr [ebp-1A]
 00411A72    and         ax,3FF
 00411A76    movzx       eax,ax
 00411A79    mov         [00571970],eax;gvar_00571970
 00411A7E    movzx       eax,word ptr [ebp-1A]
 00411A82    shr         eax,0A
 00411A85    mov         [00571974],eax;gvar_00571974
 00411A8A    mov         esi,411BAC
 00411A8F    mov         edi,56B820;gvar_0056B820
 00411A94    mov         ecx,8
 00411A99    rep movs    dword ptr [edi],dword ptr [esi]
 00411A9B    cmp         dword ptr ds:[56B7D8],2;gvar_0056B7D8
>00411AA2    jne         00411B73
 00411AA8    push        ebp
 00411AA9    call        004119FC
 00411AAE    pop         ecx
 00411AAF    test        al,al
>00411AB1    je          00411AC6
 00411AB3    mov         byte ptr ds:[571979],0;gvar_00571979
 00411ABA    mov         byte ptr ds:[571978],0;gvar_00571978
>00411AC1    jmp         00411BA5
 00411AC6    push        ebp
 00411AC7    call        0041197C
 00411ACC    pop         ecx
 00411ACD    mov         eax,56B820;gvar_0056B820
 00411AD2    mov         edx,411BAC
 00411AD7    mov         cl,20
 00411AD9    call        @SetEq
 00411ADE    setne       al
 00411AE1    mov         [00571978],al;gvar_00571978
 00411AE6    cmp         byte ptr ds:[571978],0;gvar_00571978
>00411AED    je          00411AFB
 00411AEF    mov         byte ptr ds:[571979],0;gvar_00571979
>00411AF6    jmp         00411BA5
 00411AFB    mov         dword ptr [ebp-20],80
 00411B02    mov         al,byte ptr [ebp-20]
 00411B05    mov         edx,dword ptr [ebp-20]
 00411B08    mov         byte ptr [ebp+edx-124],al
 00411B0F    inc         dword ptr [ebp-20]
 00411B12    cmp         dword ptr [ebp-20],100
>00411B19    jne         00411B02
 00411B1B    lea         eax,[ebp-0A4]
 00411B21    mov         dword ptr [ebp-24],eax
 00411B24    lea         eax,[ebp-1A6]
 00411B2A    push        eax
 00411B2B    push        80
 00411B30    mov         eax,dword ptr [ebp-24]
 00411B33    push        eax
 00411B34    push        2
 00411B36    mov         eax,[0057196C];0x0 gvar_0057196C:Integer
 00411B3B    push        eax
 00411B3C    call        kernel32.GetStringTypeExA
 00411B41    mov         dword ptr [ebp-20],80
 00411B48    mov         eax,dword ptr [ebp-20]
 00411B4B    cmp         word ptr [ebp+eax*2-2A6],2
 00411B54    sete        al
 00411B57    mov         [00571979],al;gvar_00571979
 00411B5C    cmp         byte ptr ds:[571979],0;gvar_00571979
>00411B63    jne         00411BA5
 00411B65    inc         dword ptr [ebp-20]
 00411B68    cmp         dword ptr [ebp-20],100
>00411B6F    jne         00411B48
>00411B71    jmp         00411BA5
 00411B73    push        4A
 00411B75    call        user32.GetSystemMetrics
 00411B7A    test        eax,eax
 00411B7C    setne       al
 00411B7F    mov         [00571979],al;gvar_00571979
 00411B84    push        2A
 00411B86    call        user32.GetSystemMetrics
 00411B8B    test        eax,eax
 00411B8D    setne       al
 00411B90    mov         [00571978],al;gvar_00571978
 00411B95    cmp         byte ptr ds:[571978],0;gvar_00571978
>00411B9C    je          00411BA5
 00411B9E    push        ebp
 00411B9F    call        0041197C
 00411BA4    pop         ecx
 00411BA5    pop         edi
 00411BA6    pop         esi
 00411BA7    mov         esp,ebp
 00411BA9    pop         ebp
 00411BAA    ret
*}
end;

//00411BCC
procedure sub_00411BCC;
begin
{*
 00411BCC    push        ebp
 00411BCD    mov         ebp,esp
 00411BCF    mov         ecx,8
 00411BD4    push        0
 00411BD6    push        0
 00411BD8    dec         ecx
>00411BD9    jne         00411BD4
 00411BDB    push        ecx
 00411BDC    xor         eax,eax
 00411BDE    push        ebp
 00411BDF    push        411EB5
 00411BE4    push        dword ptr fs:[eax]
 00411BE7    mov         dword ptr fs:[eax],esp
 00411BEA    call        00411A20
 00411BEF    call        0040FD88
 00411BF4    cmp         byte ptr ds:[571978],0;gvar_00571978
>00411BFB    je          00411C02
 00411BFD    call        0040FF94
 00411C02    call        kernel32.GetThreadLocale
 00411C07    mov         dword ptr [ebp-10],eax
 00411C0A    lea         eax,[ebp-14]
 00411C0D    push        eax
 00411C0E    xor         ecx,ecx
 00411C10    mov         edx,14
 00411C15    mov         eax,dword ptr [ebp-10]
 00411C18    call        0040FCAC
 00411C1D    mov         edx,dword ptr [ebp-14]
 00411C20    mov         eax,5718AC;CurrencyString:AnsiString
 00411C25    call        @LStrAsg
 00411C2A    lea         eax,[ebp-18]
 00411C2D    push        eax
 00411C2E    mov         ecx,411EC8;'0'
 00411C33    mov         edx,1B
 00411C38    mov         eax,dword ptr [ebp-10]
 00411C3B    call        0040FCAC
 00411C40    mov         eax,dword ptr [ebp-18]
 00411C43    xor         edx,edx
 00411C45    call        0040C4A8
 00411C4A    mov         [005718B0],al;CurrencyFormat:Byte
 00411C4F    lea         eax,[ebp-1C]
 00411C52    push        eax
 00411C53    mov         ecx,411EC8;'0'
 00411C58    mov         edx,1C
 00411C5D    mov         eax,dword ptr [ebp-10]
 00411C60    call        0040FCAC
 00411C65    mov         eax,dword ptr [ebp-1C]
 00411C68    xor         edx,edx
 00411C6A    call        0040C4A8
 00411C6F    mov         [005718B1],al;NegCurrFormat:Byte
 00411C74    mov         cl,2C
 00411C76    mov         edx,0F
 00411C7B    mov         eax,dword ptr [ebp-10]
 00411C7E    call        0040FD08
 00411C83    mov         [005718B2],al;ThousandSeparator:Char
 00411C88    mov         cl,2E
 00411C8A    mov         edx,0E
 00411C8F    mov         eax,dword ptr [ebp-10]
 00411C92    call        0040FD08
 00411C97    mov         [005718B3],al;DecimalSeparator:Char
 00411C9C    lea         eax,[ebp-20]
 00411C9F    push        eax
 00411CA0    mov         ecx,411EC8;'0'
 00411CA5    mov         edx,19
 00411CAA    mov         eax,dword ptr [ebp-10]
 00411CAD    call        0040FCAC
 00411CB2    mov         eax,dword ptr [ebp-20]
 00411CB5    xor         edx,edx
 00411CB7    call        0040C4A8
 00411CBC    mov         [005718B4],al;CurrencyDecimals:Byte
 00411CC1    mov         cl,2F
 00411CC3    mov         edx,1D
 00411CC8    mov         eax,dword ptr [ebp-10]
 00411CCB    call        0040FD08
 00411CD0    mov         [005718B5],al;gvar_005718B5
 00411CD5    lea         eax,[ebp-28]
 00411CD8    push        eax
 00411CD9    mov         ecx,411ED4;'m/d/yy'
 00411CDE    mov         edx,1F
 00411CE3    mov         eax,dword ptr [ebp-10]
 00411CE6    call        0040FCAC
 00411CEB    mov         eax,dword ptr [ebp-28]
 00411CEE    lea         edx,[ebp-24]
 00411CF1    call        00410058
 00411CF6    mov         edx,dword ptr [ebp-24]
 00411CF9    mov         eax,5718B8;gvar_005718B8
 00411CFE    call        @LStrAsg
 00411D03    lea         eax,[ebp-30]
 00411D06    push        eax
 00411D07    mov         ecx,411EE4;'mmmm d, yyyy'
 00411D0C    mov         edx,20
 00411D11    mov         eax,dword ptr [ebp-10]
 00411D14    call        0040FCAC
 00411D19    mov         eax,dword ptr [ebp-30]
 00411D1C    lea         edx,[ebp-2C]
 00411D1F    call        00410058
 00411D24    mov         edx,dword ptr [ebp-2C]
 00411D27    mov         eax,5718BC;gvar_005718BC
 00411D2C    call        @LStrAsg
 00411D31    mov         cl,3A
 00411D33    mov         edx,1E
 00411D38    mov         eax,dword ptr [ebp-10]
 00411D3B    call        0040FD08
 00411D40    mov         [005718C0],al;gvar_005718C0
 00411D45    lea         eax,[ebp-34]
 00411D48    push        eax
 00411D49    mov         ecx,411EFC;'am'
 00411D4E    mov         edx,28
 00411D53    mov         eax,dword ptr [ebp-10]
 00411D56    call        0040FCAC
 00411D5B    mov         edx,dword ptr [ebp-34]
 00411D5E    mov         eax,5718C4;gvar_005718C4
 00411D63    call        @LStrAsg
 00411D68    lea         eax,[ebp-38]
 00411D6B    push        eax
 00411D6C    mov         ecx,411F08;'pm'
 00411D71    mov         edx,29
 00411D76    mov         eax,dword ptr [ebp-10]
 00411D79    call        0040FCAC
 00411D7E    mov         edx,dword ptr [ebp-38]
 00411D81    mov         eax,5718C8;gvar_005718C8
 00411D86    call        @LStrAsg
 00411D8B    lea         eax,[ebp-8]
 00411D8E    call        @LStrClr
 00411D93    lea         eax,[ebp-0C]
 00411D96    call        @LStrClr
 00411D9B    lea         eax,[ebp-3C]
 00411D9E    push        eax
 00411D9F    mov         ecx,411EC8;'0'
 00411DA4    mov         edx,25
 00411DA9    mov         eax,dword ptr [ebp-10]
 00411DAC    call        0040FCAC
 00411DB1    mov         eax,dword ptr [ebp-3C]
 00411DB4    xor         edx,edx
 00411DB6    call        0040C4A8
 00411DBB    test        eax,eax
>00411DBD    jne         00411DCE
 00411DBF    lea         eax,[ebp-4]
 00411DC2    mov         edx,411F14;'h'
 00411DC7    call        @LStrLAsg
>00411DCC    jmp         00411DDB
 00411DCE    lea         eax,[ebp-4]
 00411DD1    mov         edx,411F20;'hh'
 00411DD6    call        @LStrLAsg
 00411DDB    lea         eax,[ebp-40]
 00411DDE    push        eax
 00411DDF    mov         ecx,411EC8;'0'
 00411DE4    mov         edx,23
 00411DE9    mov         eax,dword ptr [ebp-10]
 00411DEC    call        0040FCAC
 00411DF1    mov         eax,dword ptr [ebp-40]
 00411DF4    xor         edx,edx
 00411DF6    call        0040C4A8
 00411DFB    test        eax,eax
>00411DFD    jne         00411E3F
 00411DFF    lea         eax,[ebp-44]
 00411E02    push        eax
 00411E03    mov         ecx,411EC8;'0'
 00411E08    mov         edx,1005
 00411E0D    mov         eax,dword ptr [ebp-10]
 00411E10    call        0040FCAC
 00411E15    mov         eax,dword ptr [ebp-44]
 00411E18    xor         edx,edx
 00411E1A    call        0040C4A8
 00411E1F    test        eax,eax
>00411E21    jne         00411E32
 00411E23    lea         eax,[ebp-0C]
 00411E26    mov         edx,411F2C;' AMPM'
 00411E2B    call        @LStrLAsg
>00411E30    jmp         00411E3F
 00411E32    lea         eax,[ebp-8]
 00411E35    mov         edx,411F3C;'AMPM '
 00411E3A    call        @LStrLAsg
 00411E3F    push        dword ptr [ebp-8]
 00411E42    push        dword ptr [ebp-4]
 00411E45    push        411F4C;':mm'
 00411E4A    push        dword ptr [ebp-0C]
 00411E4D    mov         eax,5718CC;gvar_005718CC
 00411E52    mov         edx,4
 00411E57    call        @LStrCatN
 00411E5C    push        dword ptr [ebp-8]
 00411E5F    push        dword ptr [ebp-4]
 00411E62    push        411F58;':mm:ss'
 00411E67    push        dword ptr [ebp-0C]
 00411E6A    mov         eax,5718D0;gvar_005718D0
 00411E6F    mov         edx,4
 00411E74    call        @LStrCatN
 00411E79    mov         cl,2C
 00411E7B    mov         edx,0C
 00411E80    mov         eax,dword ptr [ebp-10]
 00411E83    call        0040FD08
 00411E88    mov         [0057197A],al;gvar_0057197A
 00411E8D    xor         eax,eax
 00411E8F    pop         edx
 00411E90    pop         ecx
 00411E91    pop         ecx
 00411E92    mov         dword ptr fs:[eax],edx
 00411E95    push        411EBC
 00411E9A    lea         eax,[ebp-44]
 00411E9D    mov         edx,0D
 00411EA2    call        @LStrArrayClr
 00411EA7    lea         eax,[ebp-0C]
 00411EAA    mov         edx,3
 00411EAF    call        @LStrArrayClr
 00411EB4    ret
>00411EB5    jmp         @HandleFinally
>00411EBA    jmp         00411E9A
 00411EBC    mov         esp,ebp
 00411EBE    pop         ebp
 00411EBF    ret
*}
end;

//004120BC
procedure kernel32.Sleep; stdcall;
begin
{*
 004120BC    jmp         dword ptr ds:[61C6F8]
*}
end;

//004120C4
procedure RaiseLastOSError;
begin
{*
 004120C4    push        ebp
 004120C5    mov         ebp,esp
 004120C7    add         esp,0FFFFFFE4
 004120CA    xor         eax,eax
 004120CC    mov         dword ptr [ebp-1C],eax
 004120CF    xor         eax,eax
 004120D1    push        ebp
 004120D2    push        412163
 004120D7    push        dword ptr fs:[eax]
 004120DA    mov         dword ptr fs:[eax],esp
 004120DD    call        kernel32.GetLastError
 004120E2    mov         dword ptr [ebp-4],eax
 004120E5    cmp         dword ptr [ebp-4],0
>004120E9    je          00412127
 004120EB    mov         eax,dword ptr [ebp-4]
 004120EE    mov         dword ptr [ebp-18],eax
 004120F1    mov         byte ptr [ebp-14],0
 004120F5    lea         edx,[ebp-1C]
 004120F8    mov         eax,dword ptr [ebp-4]
 004120FB    call        SysErrorMessage
 00412100    mov         eax,dword ptr [ebp-1C]
 00412103    mov         dword ptr [ebp-10],eax
 00412106    mov         byte ptr [ebp-0C],0B
 0041210A    lea         eax,[ebp-18]
 0041210D    push        eax
 0041210E    push        1
 00412110    mov         ecx,dword ptr ds:[56E418];^SResString2:TResStringRec
 00412116    mov         dl,1
 00412118    mov         eax,[0040B944];EOSError
 0041211D    call        Exception.CreateResFmt
 00412122    mov         dword ptr [ebp-8],eax
>00412125    jmp         0041213C
 00412127    mov         ecx,dword ptr ds:[56E59C];^SUnkOSError:TResStringRec
 0041212D    mov         dl,1
 0041212F    mov         eax,[0040B944];EOSError
 00412134    call        Exception.Create
 00412139    mov         dword ptr [ebp-8],eax
 0041213C    mov         eax,dword ptr [ebp-4]
 0041213F    mov         edx,dword ptr [ebp-8]
 00412142    mov         dword ptr [edx+0C],eax
 00412145    mov         eax,dword ptr [ebp-8]
 00412148    call        @RaiseExcept
 0041214D    xor         eax,eax
 0041214F    pop         edx
 00412150    pop         ecx
 00412151    pop         ecx
 00412152    mov         dword ptr fs:[eax],edx
 00412155    push        41216A
 0041215A    lea         eax,[ebp-1C]
 0041215D    call        @LStrClr
 00412162    ret
>00412163    jmp         @HandleFinally
>00412168    jmp         0041215A
 0041216A    mov         esp,ebp
 0041216C    pop         ebp
 0041216D    ret
*}
end;

//00412170
{*function sub_00412170(?:LongBool):?;
begin
 00412170    push        ebp
 00412171    mov         ebp,esp
 00412173    add         esp,0FFFFFFF8
 00412176    mov         dword ptr [ebp-4],eax
 00412179    cmp         dword ptr [ebp-4],0
>0041217D    jne         00412184
 0041217F    call        RaiseLastOSError
 00412184    mov         eax,dword ptr [ebp-4]
 00412187    mov         dword ptr [ebp-8],eax
 0041218A    mov         eax,dword ptr [ebp-8]
 0041218D    pop         ecx
 0041218E    pop         ecx
 0041218F    pop         ebp
 00412190    ret
end;*}

//00412194
{*function sub_00412194:?;
begin
 00412194    push        ebp
 00412195    mov         ebp,esp
 00412197    add         esp,0FFFFFFF8
 0041219A    push        ebx
 0041219B    mov         byte ptr [ebp-1],1
 0041219F    mov         eax,[0056BA20];0x0 gvar_0056BA20
 004121A4    mov         dword ptr [ebp-8],eax
>004121A7    jmp         004121BA
 004121A9    mov         ebx,dword ptr [ebp-8]
 004121AC    call        dword ptr [ebx+4]
 004121AF    mov         byte ptr [ebp-1],al
 004121B2    mov         eax,dword ptr [ebp-8]
 004121B5    mov         eax,dword ptr [eax]
 004121B7    mov         dword ptr [ebp-8],eax
 004121BA    cmp         byte ptr [ebp-1],0
>004121BE    je          004121C6
 004121C0    cmp         dword ptr [ebp-8],0
>004121C4    jne         004121A9
 004121C6    mov         al,byte ptr [ebp-1]
 004121C9    pop         ebx
 004121CA    pop         ecx
 004121CB    pop         ecx
 004121CC    pop         ebp
 004121CD    ret
end;*}

//004121D0
procedure sub_004121D0;
begin
{*
 004121D0    push        ebp
 004121D1    mov         ebp,esp
 004121D3    push        ecx
>004121D4    jmp         004121F5
 004121D6    mov         eax,[0056BA20];0x0 gvar_0056BA20
 004121DB    mov         dword ptr [ebp-4],eax
 004121DE    mov         eax,dword ptr [ebp-4]
 004121E1    mov         eax,dword ptr [eax]
 004121E3    mov         [0056BA20],eax;gvar_0056BA20
 004121E8    mov         edx,8
 004121ED    mov         eax,dword ptr [ebp-4]
 004121F0    call        @FreeMem
 004121F5    cmp         dword ptr ds:[56BA20],0;gvar_0056BA20
>004121FC    jne         004121D6
 004121FE    pop         ecx
 004121FF    pop         ebp
 00412200    ret
*}
end;

//00412204
procedure sub_00412204;
begin
{*
 00412204    push        ebp
 00412205    mov         ebp,esp
 00412207    push        ecx
 00412208    push        412244;'kernel32.dll'
 0041220D    call        kernel32.GetModuleHandleA
 00412212    mov         dword ptr [ebp-4],eax
 00412215    cmp         dword ptr [ebp-4],0
>00412219    je          0041222E
 0041221B    push        412254;'GetDiskFreeSpaceExA'
 00412220    mov         eax,dword ptr [ebp-4]
 00412223    push        eax
 00412224    call        kernel32.GetProcAddress
 00412229    mov         [0056B844],eax;gvar_0056B844:Pointer
 0041222E    cmp         dword ptr ds:[56B844],0;gvar_0056B844:Pointer
>00412235    jne         00412241
 00412237    mov         eax,40CD84;sub_0040CD84
 0041223C    mov         [0056B844],eax;gvar_0056B844:Pointer
 00412241    pop         ecx
 00412242    pop         ebp
 00412243    ret
*}
end;

//00412268
function InterlockedIncrement(var I:Integer):Integer;
begin
{*
 00412268    mov         edx,1
 0041226D    xchg        eax,edx
 0041226E    lock xadd   dword ptr [edx],eax
 00412272    inc         eax
 00412273    ret
*}
end;

//00412274
function InterlockedDecrement(var I:Integer):Integer;
begin
{*
 00412274    mov         edx,0FFFFFFFF
 00412279    xchg        eax,edx
 0041227A    lock xadd   dword ptr [edx],eax
 0041227E    dec         eax
 0041227F    ret
*}
end;

//00412280
{*function sub_00412280(?:Integer; ?:?):?;
begin
 00412280    xchg        edx,dword ptr [eax]
 00412282    mov         eax,edx
 00412284    ret
end;*}

//00412288
{*function sub_00412288(?:?; ?:?):?;
begin
 00412288    xchg        eax,edx
 00412289    lock xadd   dword ptr [edx],eax
 0041228D    ret
end;*}

//0041230C
{*function sub_0041230C(?:?):?;
begin
 0041230C    push        ebp
 0041230D    mov         ebp,esp
 0041230F    add         esp,0FFFFFFF4
 00412312    mov         dword ptr [ebp-8],eax
 00412315    call        kernel32.GetCurrentThreadId
 0041231A    mov         word ptr [ebp-2],ax
 0041231E    mov         al,byte ptr [ebp-2]
 00412321    xor         al,byte ptr [ebp-1]
 00412324    and         al,0F
 00412326    mov         byte ptr [ebp-9],al
 00412329    mov         al,byte ptr [ebp-9]
 0041232C    mov         esp,ebp
 0041232E    pop         ebp
 0041232F    ret
end;*}

//00412330
{*procedure sub_00412330(?:?; ?:?);
begin
 00412330    push        ebp
 00412331    mov         ebp,esp
 00412333    add         esp,0FFFFFFEC
 00412336    mov         dword ptr [ebp-8],edx
 00412339    mov         dword ptr [ebp-4],eax
 0041233C    mov         eax,dword ptr [ebp-4]
 0041233F    call        0041230C
 00412344    mov         byte ptr [ebp-11],al
 00412347    call        kernel32.GetCurrentThreadId
 0041234C    mov         dword ptr [ebp-10],eax
 0041234F    xor         eax,eax
 00412351    mov         al,byte ptr [ebp-11]
 00412354    mov         edx,dword ptr [ebp-4]
 00412357    mov         eax,dword ptr [edx+eax*4+4]
 0041235B    mov         dword ptr [ebp-0C],eax
>0041235E    jmp         00412368
 00412360    mov         eax,dword ptr [ebp-0C]
 00412363    mov         eax,dword ptr [eax]
 00412365    mov         dword ptr [ebp-0C],eax
 00412368    cmp         dword ptr [ebp-0C],0
>0041236C    je          00412379
 0041236E    mov         eax,dword ptr [ebp-0C]
 00412371    mov         eax,dword ptr [eax+4]
 00412374    cmp         eax,dword ptr [ebp-10]
>00412377    jne         00412360
 00412379    cmp         dword ptr [ebp-0C],0
>0041237D    jne         004123D1
 0041237F    mov         eax,dword ptr [ebp-4]
 00412382    call        00412404
 00412387    mov         dword ptr [ebp-0C],eax
 0041238A    cmp         dword ptr [ebp-0C],0
>0041238E    jne         004123D1
 00412390    mov         eax,10
 00412395    call        0040BC0C
 0041239A    mov         dword ptr [ebp-0C],eax
 0041239D    mov         eax,dword ptr [ebp-0C]
 004123A0    mov         edx,dword ptr [ebp-10]
 004123A3    mov         dword ptr [eax+4],edx
 004123A6    mov         eax,dword ptr [ebp-0C]
 004123A9    mov         dword ptr [eax+8],7FFFFFFF
 004123B0    mov         eax,dword ptr [ebp-0C]
 004123B3    mov         edx,dword ptr [ebp-0C]
 004123B6    mov         dword ptr [eax],edx
 004123B8    xor         eax,eax
 004123BA    mov         al,byte ptr [ebp-11]
 004123BD    mov         edx,dword ptr [ebp-4]
 004123C0    lea         eax,[edx+eax*4+4]
 004123C4    mov         edx,dword ptr [ebp-0C]
 004123C7    call        00412280
 004123CC    mov         edx,dword ptr [ebp-0C]
 004123CF    mov         dword ptr [edx],eax
 004123D1    mov         eax,dword ptr [ebp-8]
 004123D4    mov         edx,dword ptr [ebp-0C]
 004123D7    mov         dword ptr [eax],edx
 004123D9    mov         esp,ebp
 004123DB    pop         ebp
 004123DC    ret
end;*}

//004123E0
{*procedure sub_004123E0(?:?; ?:?);
begin
 004123E0    push        ebp
 004123E1    mov         ebp,esp
 004123E3    add         esp,0FFFFFFF8
 004123E6    mov         dword ptr [ebp-8],edx
 004123E9    mov         dword ptr [ebp-4],eax
 004123EC    mov         eax,dword ptr [ebp-8]
 004123EF    mov         eax,dword ptr [eax]
 004123F1    xor         edx,edx
 004123F3    mov         dword ptr [eax+4],edx
 004123F6    mov         eax,dword ptr [ebp-8]
 004123F9    mov         eax,dword ptr [eax]
 004123FB    xor         edx,edx
 004123FD    mov         dword ptr [eax+8],edx
 00412400    pop         ecx
 00412401    pop         ecx
 00412402    pop         ebp
 00412403    ret
end;*}

//00412404
{*function sub_00412404(?:?):?;
begin
 00412404    push        ebp
 00412405    mov         ebp,esp
 00412407    add         esp,0FFFFFFF4
 0041240A    mov         dword ptr [ebp-4],eax
 0041240D    mov         eax,dword ptr [ebp-4]
 00412410    call        0041230C
 00412415    and         eax,0FF
 0041241A    mov         edx,dword ptr [ebp-4]
 0041241D    mov         eax,dword ptr [edx+eax*4+4]
 00412421    mov         dword ptr [ebp-8],eax
 00412424    cmp         dword ptr [ebp-8],0
>00412428    je          00412461
 0041242A    mov         eax,dword ptr [ebp-8]
 0041242D    add         eax,8
 00412430    mov         edx,7FFFFFFF
 00412435    call        00412280
 0041243A    mov         dword ptr [ebp-0C],eax
 0041243D    cmp         dword ptr [ebp-0C],7FFFFFFF
>00412444    je          00412453
 00412446    call        kernel32.GetCurrentThreadId
 0041244B    mov         edx,dword ptr [ebp-8]
 0041244E    mov         dword ptr [edx+4],eax
>00412451    jmp         00412461
 00412453    mov         eax,dword ptr [ebp-8]
 00412456    mov         eax,dword ptr [eax]
 00412458    mov         dword ptr [ebp-8],eax
 0041245B    cmp         dword ptr [ebp-8],0
>0041245F    jne         0041242A
 00412461    mov         eax,dword ptr [ebp-8]
 00412464    mov         esp,ebp
 00412466    pop         ebp
 00412467    ret
end;*}

//00412468
constructor TMultiReadExclusiveWriteSynchronizer.Create;
begin
{*
 00412468    push        ebp
 00412469    mov         ebp,esp
 0041246B    add         esp,0FFFFFFF8
 0041246E    test        dl,dl
>00412470    je          0041247A
 00412472    add         esp,0FFFFFFF0
 00412475    call        @ClassCreate
 0041247A    mov         byte ptr [ebp-5],dl
 0041247D    mov         dword ptr [ebp-4],eax
 00412480    xor         edx,edx
 00412482    mov         eax,dword ptr [ebp-4]
 00412485    call        TObject.Create
 0041248A    mov         eax,dword ptr [ebp-4]
 0041248D    mov         dword ptr [eax+0C],0FFFF
 00412494    push        0
 00412496    push        0FF
 00412498    push        0FF
 0041249A    push        0
 0041249C    call        kernel32.CreateEventA
 004124A1    mov         edx,dword ptr [ebp-4]
 004124A4    mov         dword ptr [edx+10],eax
 004124A7    push        0
 004124A9    push        0
 004124AB    push        0
 004124AD    push        0
 004124AF    call        kernel32.CreateEventA
 004124B4    mov         edx,dword ptr [ebp-4]
 004124B7    mov         dword ptr [edx+14],eax
 004124BA    mov         eax,dword ptr [ebp-4]
 004124BD    mov         dword ptr [eax+18],0FFFFFFFF
 004124C4    mov         dl,1
 004124C6    mov         eax,[0040BA50];TThreadLocalCounter
 004124CB    call        TObject.Create
 004124D0    mov         edx,dword ptr [ebp-4]
 004124D3    mov         dword ptr [edx+20],eax
 004124D6    mov         eax,dword ptr [ebp-4]
 004124D9    cmp         byte ptr [ebp-5],0
>004124DD    je          004124EE
 004124DF    call        @AfterConstruction
 004124E4    pop         dword ptr fs:[0]
 004124EB    add         esp,0C
 004124EE    mov         eax,dword ptr [ebp-4]
 004124F1    pop         ecx
 004124F2    pop         ecx
 004124F3    pop         ebp
 004124F4    ret
*}
end;

//00412554
{*procedure sub_00412554(?:?);
begin
 00412554    push        ebp
 00412555    mov         ebp,esp
 00412557    push        ecx
 00412558    mov         dword ptr [ebp-4],eax
 0041255B    mov         eax,dword ptr [ebp-4]
 0041255E    mov         eax,dword ptr [eax+10]
 00412561    push        eax
 00412562    call        kernel32.ResetEvent
 00412567    pop         ecx
 00412568    pop         ebp
 00412569    ret
end;*}

//0041256C
{*procedure sub_0041256C(?:?);
begin
 0041256C    push        ebp
 0041256D    mov         ebp,esp
 0041256F    push        ecx
 00412570    mov         dword ptr [ebp-4],eax
 00412573    mov         eax,dword ptr [ebp-4]
 00412576    mov         eax,dword ptr [eax+10]
 00412579    push        eax
 0041257A    call        kernel32.SetEvent
 0041257F    pop         ecx
 00412580    pop         ebp
 00412581    ret
end;*}

//00412584
{*procedure sub_00412584(?:?);
begin
 00412584    push        ebp
 00412585    mov         ebp,esp
 00412587    push        ecx
 00412588    mov         dword ptr [ebp-4],eax
 0041258B    mov         eax,dword ptr [ebp-4]
 0041258E    mov         eax,dword ptr [eax+14]
 00412591    push        eax
 00412592    call        kernel32.SetEvent
 00412597    pop         ecx
 00412598    pop         ebp
 00412599    ret
end;*}

//0041259C
{*procedure sub_0041259C(?:?);
begin
 0041259C    push        ebp
 0041259D    mov         ebp,esp
 0041259F    push        ecx
 004125A0    mov         dword ptr [ebp-4],eax
 004125A3    mov         eax,dword ptr [ebp-4]
 004125A6    mov         eax,dword ptr [eax+18]
 004125A9    push        eax
 004125AA    mov         eax,dword ptr [ebp-4]
 004125AD    mov         eax,dword ptr [eax+10]
 004125B0    push        eax
 004125B1    call        kernel32.WaitForSingleObject
 004125B6    pop         ecx
 004125B7    pop         ebp
 004125B8    ret
end;*}

//004125BC
{*procedure sub_004125BC(?:?);
begin
 004125BC    push        ebp
 004125BD    mov         ebp,esp
 004125BF    push        ecx
 004125C0    mov         dword ptr [ebp-4],eax
 004125C3    mov         eax,dword ptr [ebp-4]
 004125C6    mov         eax,dword ptr [eax+18]
 004125C9    push        eax
 004125CA    mov         eax,dword ptr [ebp-4]
 004125CD    mov         eax,dword ptr [eax+14]
 004125D0    push        eax
 004125D1    call        kernel32.WaitForSingleObject
 004125D6    pop         ecx
 004125D7    pop         ebp
 004125D8    ret
end;*}

//004125DC
{*function sub_004125DC(?:?):?;
begin
 004125DC    push        ebp
 004125DD    mov         ebp,esp
 004125DF    add         esp,0FFFFFFE4
 004125E2    mov         dword ptr [ebp-4],eax
 004125E5    mov         byte ptr [ebp-5],1
 004125E9    call        kernel32.GetCurrentThreadId
 004125EE    mov         dword ptr [ebp-14],eax
 004125F1    mov         eax,dword ptr [ebp-4]
 004125F4    mov         eax,dword ptr [eax+24]
 004125F7    cmp         eax,dword ptr [ebp-14]
>004125FA    je          004126AA
 00412600    mov         eax,dword ptr [ebp-4]
 00412603    call        00412554
 00412608    mov         eax,dword ptr [ebp-4]
 0041260B    mov         eax,dword ptr [eax+28]
 0041260E    mov         dword ptr [ebp-1C],eax
 00412611    lea         edx,[ebp-0C]
 00412614    mov         eax,dword ptr [ebp-4]
 00412617    mov         eax,dword ptr [eax+20]
 0041261A    call        00412330
 0041261F    mov         eax,dword ptr [ebp-0C]
 00412622    cmp         dword ptr [eax+0C],0
 00412626    seta        byte ptr [ebp-0D]
 0041262A    cmp         byte ptr [ebp-0D],0
>0041262E    je          0041265E
 00412630    mov         eax,dword ptr [ebp-4]
 00412633    add         eax,0C
 00412636    call        InterlockedIncrement
>0041263B    jmp         0041265E
 0041263D    mov         eax,dword ptr [ebp-4]
 00412640    add         eax,0C
 00412643    mov         edx,0FFFF
 00412648    call        00412288
 0041264D    mov         dword ptr [ebp-18],eax
 00412650    cmp         dword ptr [ebp-18],0
>00412654    je          0041265E
 00412656    mov         eax,dword ptr [ebp-4]
 00412659    call        004125BC
 0041265E    mov         eax,dword ptr [ebp-4]
 00412661    add         eax,0C
 00412664    mov         edx,0FFFF0001
 00412669    call        00412288
 0041266E    cmp         eax,0FFFF
>00412673    jne         0041263D
 00412675    mov         eax,dword ptr [ebp-4]
 00412678    call        00412554
 0041267D    cmp         byte ptr [ebp-0D],0
>00412681    je          0041268E
 00412683    mov         eax,dword ptr [ebp-4]
 00412686    add         eax,0C
 00412689    call        InterlockedDecrement
 0041268E    mov         eax,dword ptr [ebp-14]
 00412691    mov         edx,dword ptr [ebp-4]
 00412694    mov         dword ptr [edx+24],eax
 00412697    mov         eax,dword ptr [ebp-4]
 0041269A    add         eax,28
 0041269D    call        InterlockedIncrement
 004126A2    dec         eax
 004126A3    cmp         eax,dword ptr [ebp-1C]
 004126A6    sete        byte ptr [ebp-5]
 004126AA    mov         eax,dword ptr [ebp-4]
 004126AD    inc         dword ptr [eax+1C]
 004126B0    mov         al,byte ptr [ebp-5]
 004126B3    mov         esp,ebp
 004126B5    pop         ebp
 004126B6    ret
end;*}

//004126B8
{*procedure sub_004126B8(?:?);
begin
 004126B8    push        ebp
 004126B9    mov         ebp,esp
 004126BB    add         esp,0FFFFFFF8
 004126BE    mov         dword ptr [ebp-4],eax
 004126C1    lea         edx,[ebp-8]
 004126C4    mov         eax,dword ptr [ebp-4]
 004126C7    mov         eax,dword ptr [eax+20]
 004126CA    call        00412330
 004126CF    mov         eax,dword ptr [ebp-4]
 004126D2    dec         dword ptr [eax+1C]
 004126D5    mov         eax,dword ptr [ebp-4]
 004126D8    cmp         dword ptr [eax+1C],0
>004126DC    jne         00412706
 004126DE    mov         eax,dword ptr [ebp-4]
 004126E1    xor         edx,edx
 004126E3    mov         dword ptr [eax+24],edx
 004126E6    mov         eax,dword ptr [ebp-4]
 004126E9    add         eax,0C
 004126EC    mov         edx,0FFFF
 004126F1    call        00412288
 004126F6    mov         eax,dword ptr [ebp-4]
 004126F9    call        00412584
 004126FE    mov         eax,dword ptr [ebp-4]
 00412701    call        0041256C
 00412706    mov         eax,dword ptr [ebp-8]
 00412709    cmp         dword ptr [eax+0C],0
>0041270D    jne         0041271D
 0041270F    lea         edx,[ebp-8]
 00412712    mov         eax,dword ptr [ebp-4]
 00412715    mov         eax,dword ptr [eax+20]
 00412718    call        004123E0
 0041271D    pop         ecx
 0041271E    pop         ecx
 0041271F    pop         ebp
 00412720    ret
end;*}

//00412724
{*procedure sub_00412724(?:?);
begin
 00412724    push        ebp
 00412725    mov         ebp,esp
 00412727    add         esp,0FFFFFFF0
 0041272A    mov         dword ptr [ebp-4],eax
 0041272D    lea         edx,[ebp-8]
 00412730    mov         eax,dword ptr [ebp-4]
 00412733    mov         eax,dword ptr [eax+20]
 00412736    call        00412330
 0041273B    mov         eax,dword ptr [ebp-8]
 0041273E    inc         dword ptr [eax+0C]
 00412741    mov         eax,dword ptr [ebp-8]
 00412744    cmp         dword ptr [eax+0C],1
 00412748    seta        byte ptr [ebp-9]
 0041274C    call        kernel32.GetCurrentThreadId
 00412751    mov         edx,dword ptr [ebp-4]
 00412754    cmp         eax,dword ptr [edx+24]
>00412757    je          004127A6
 00412759    cmp         byte ptr [ebp-9],0
>0041275D    jne         004127A6
 0041275F    mov         eax,dword ptr [ebp-4]
 00412762    call        0041259C
>00412767    jmp         00412797
 00412769    mov         eax,dword ptr [ebp-4]
 0041276C    add         eax,0C
 0041276F    call        InterlockedIncrement
 00412774    mov         dword ptr [ebp-10],eax
 00412777    cmp         dword ptr [ebp-10],0FFFF
>0041277E    jne         00412788
 00412780    mov         eax,dword ptr [ebp-4]
 00412783    call        00412584
 00412788    push        0
 0041278A    call        kernel32.Sleep
 0041278F    mov         eax,dword ptr [ebp-4]
 00412792    call        0041259C
 00412797    mov         eax,dword ptr [ebp-4]
 0041279A    add         eax,0C
 0041279D    call        InterlockedDecrement
 004127A2    test        eax,eax
>004127A4    jle         00412769
 004127A6    mov         esp,ebp
 004127A8    pop         ebp
 004127A9    ret
end;*}

//004127AC
{*procedure sub_004127AC(?:?);
begin
 004127AC    push        ebp
 004127AD    mov         ebp,esp
 004127AF    add         esp,0FFFFFFF4
 004127B2    mov         dword ptr [ebp-4],eax
 004127B5    lea         edx,[ebp-8]
 004127B8    mov         eax,dword ptr [ebp-4]
 004127BB    mov         eax,dword ptr [eax+20]
 004127BE    call        00412330
 004127C3    mov         eax,dword ptr [ebp-8]
 004127C6    dec         dword ptr [eax+0C]
 004127C9    mov         eax,dword ptr [ebp-8]
 004127CC    cmp         dword ptr [eax+0C],0
>004127D0    jne         0041282B
 004127D2    lea         edx,[ebp-8]
 004127D5    mov         eax,dword ptr [ebp-4]
 004127D8    mov         eax,dword ptr [eax+20]
 004127DB    call        004123E0
 004127E0    call        kernel32.GetCurrentThreadId
 004127E5    mov         edx,dword ptr [ebp-4]
 004127E8    cmp         eax,dword ptr [edx+24]
>004127EB    je          0041282B
 004127ED    mov         eax,dword ptr [ebp-4]
 004127F0    add         eax,0C
 004127F3    call        InterlockedIncrement
 004127F8    mov         dword ptr [ebp-0C],eax
 004127FB    cmp         dword ptr [ebp-0C],0FFFF
>00412802    jne         0041280E
 00412804    mov         eax,dword ptr [ebp-4]
 00412807    call        00412584
>0041280C    jmp         0041282B
 0041280E    cmp         dword ptr [ebp-0C],0
>00412812    jg          0041282B
 00412814    mov         eax,dword ptr [ebp-0C]
 00412817    mov         ecx,0FFFF
 0041281C    cdq
 0041281D    idiv        eax,ecx
 0041281F    test        edx,edx
>00412821    jne         0041282B
 00412823    mov         eax,dword ptr [ebp-4]
 00412826    call        00412584
 0041282B    mov         esp,ebp
 0041282D    pop         ebp
 0041282E    ret
end;*}

//00412830
procedure FreeAndNil(var Obj:void );
begin
{*
 00412830    push        ebp
 00412831    mov         ebp,esp
 00412833    add         esp,0FFFFFFF8
 00412836    mov         dword ptr [ebp-4],eax
 00412839    mov         eax,dword ptr [ebp-4]
 0041283C    mov         eax,dword ptr [eax]
 0041283E    mov         dword ptr [ebp-8],eax
 00412841    mov         eax,dword ptr [ebp-4]
 00412844    xor         edx,edx
 00412846    mov         dword ptr [eax],edx
 00412848    mov         eax,dword ptr [ebp-8]
 0041284B    call        TObject.Free
 00412850    pop         ecx
 00412851    pop         ecx
 00412852    pop         ebp
 00412853    ret
*}
end;

//00412854
{*function sub_00412854(?:IAutoComplete; ?:?; ?:?):?;
begin
 00412854    push        ebp
 00412855    mov         ebp,esp
 00412857    add         esp,0FFFFFFF0
 0041285A    mov         dword ptr [ebp-0C],ecx
 0041285D    mov         dword ptr [ebp-8],edx
 00412860    mov         dword ptr [ebp-4],eax
 00412863    cmp         dword ptr [ebp-4],0
>00412867    je          0041287D
 00412869    mov         eax,dword ptr [ebp-0C]
 0041286C    push        eax
 0041286D    mov         eax,dword ptr [ebp-8]
 00412870    push        eax
 00412871    mov         eax,dword ptr [ebp-4]
 00412874    push        eax
 00412875    mov         eax,dword ptr [eax]
 00412877    call        dword ptr [eax]
 00412879    test        eax,eax
>0041287B    je          00412881
 0041287D    xor         eax,eax
>0041287F    jmp         00412883
 00412881    mov         al,1
 00412883    mov         byte ptr [ebp-0D],al
 00412886    mov         al,byte ptr [ebp-0D]
 00412889    mov         esp,ebp
 0041288B    pop         ebp
 0041288C    ret
end;*}

//00412890
{*function sub_00412890(?:TCustomVariantType; ?:?; ?:?):?;
begin
 00412890    push        ebp
 00412891    mov         ebp,esp
 00412893    add         esp,0FFFFFFEC
 00412896    push        ebx
 00412897    xor         ebx,ebx
 00412899    mov         dword ptr [ebp-14],ebx
 0041289C    mov         dword ptr [ebp-0C],ecx
 0041289F    mov         dword ptr [ebp-8],edx
 004128A2    mov         dword ptr [ebp-4],eax
 004128A5    xor         eax,eax
 004128A7    push        ebp
 004128A8    push        412917
 004128AD    push        dword ptr fs:[eax]
 004128B0    mov         dword ptr fs:[eax],esp
 004128B3    cmp         dword ptr [ebp-4],0
>004128B7    je          004128F8
 004128B9    lea         eax,[ebp-14]
 004128BC    call        @IntfClear
 004128C1    mov         ecx,eax
 004128C3    mov         edx,412928;['{00000000-0000-0000-C000-000000000046}']
 004128C8    mov         eax,dword ptr [ebp-4]
 004128CB    call        TObject.GetInterface
 004128D0    test        al,al
>004128D2    je          004128E6
 004128D4    mov         ecx,dword ptr [ebp-0C]
 004128D7    mov         edx,dword ptr [ebp-8]
 004128DA    mov         eax,dword ptr [ebp-14]
 004128DD    call        00412854
 004128E2    test        al,al
>004128E4    jne         004128FC
 004128E6    mov         ecx,dword ptr [ebp-0C]
 004128E9    mov         edx,dword ptr [ebp-8]
 004128EC    mov         eax,dword ptr [ebp-4]
 004128EF    call        TObject.GetInterface
 004128F4    test        al,al
>004128F6    jne         004128FC
 004128F8    xor         eax,eax
>004128FA    jmp         004128FE
 004128FC    mov         al,1
 004128FE    mov         byte ptr [ebp-0D],al
 00412901    xor         eax,eax
 00412903    pop         edx
 00412904    pop         ecx
 00412905    pop         ecx
 00412906    mov         dword ptr fs:[eax],edx
 00412909    push        41291E
 0041290E    lea         eax,[ebp-14]
 00412911    call        @IntfClear
 00412916    ret
>00412917    jmp         @HandleFinally
>0041291C    jmp         0041290E
 0041291E    mov         al,byte ptr [ebp-0D]
 00412921    pop         ebx
 00412922    mov         esp,ebp
 00412924    pop         ebp
 00412925    ret
end;*}

//00412938
{*function sub_00412938(?:AnsiString; ?:?):?;
begin
 00412938    push        ebp
 00412939    mov         ebp,esp
 0041293B    add         esp,0FFFFFFEC
 0041293E    mov         dword ptr [ebp-0C],edx
 00412941    mov         dword ptr [ebp-8],eax
 00412944    mov         eax,dword ptr [ebp-0C]
 00412947    push        eax
 00412948    call        kernel32.SetErrorMode
 0041294D    mov         dword ptr [ebp-14],eax
 00412950    xor         eax,eax
 00412952    push        ebp
 00412953    push        4129B1
 00412958    push        dword ptr fs:[eax]
 0041295B    mov         dword ptr fs:[eax],esp
 0041295E    fnstcw      word ptr [ebp-2]
 00412961    xor         eax,eax
 00412963    push        ebp
 00412964    push        412993
 00412969    push        dword ptr fs:[eax]
 0041296C    mov         dword ptr fs:[eax],esp
 0041296F    mov         eax,dword ptr [ebp-8]
 00412972    call        @LStrToPChar
 00412977    push        eax
 00412978    call        kernel32.LoadLibraryA
 0041297D    mov         dword ptr [ebp-10],eax
 00412980    xor         eax,eax
 00412982    pop         edx
 00412983    pop         ecx
 00412984    pop         ecx
 00412985    mov         dword ptr fs:[eax],edx
 00412988    push        41299A
 0041298D    fnclex
 0041298F    fldcw       word ptr [ebp-2]
 00412992    ret
>00412993    jmp         @HandleFinally
>00412998    jmp         0041298D
 0041299A    xor         eax,eax
 0041299C    pop         edx
 0041299D    pop         ecx
 0041299E    pop         ecx
 0041299F    mov         dword ptr fs:[eax],edx
 004129A2    push        4129B8
 004129A7    mov         eax,dword ptr [ebp-14]
 004129AA    push        eax
 004129AB    call        kernel32.SetErrorMode
 004129B0    ret
>004129B1    jmp         @HandleFinally
>004129B6    jmp         004129A7
 004129B8    mov         eax,dword ptr [ebp-10]
 004129BB    mov         esp,ebp
 004129BD    pop         ebp
 004129BE    ret
end;*}

//004129C0
procedure _NF__C58;
begin
{*
 004129C0    sbb         eax,18000000
 004129C5    mov         edx,0E3B00056
 004129CA    push        esi
 004129CB    add         byte ptr [eax],dl
 004129CD    mov         edx,0E24C0056
 004129D2    push        esi
 004129D3    add         byte ptr [eax],cl
 004129D5    mov         edx,0E0000056
 004129DA    push        esi
 004129DB    add         byte ptr [eax],al
 004129DD    mov         edx,0E4380056
 004129E2    push        esi
 004129E3    add         al,bh
 004129E5    mov         ecx,0E48C0056
 004129EA    push        esi
 004129EB    add         al,dh
 004129ED    mov         ecx,0E12C0056
 004129F2    push        esi
 004129F3    add         al,ch
 004129F5    mov         ecx,0E2280056
 004129FA    push        esi
 004129FB    add         al,ah
 004129FD    mov         ecx,0DFA00056
 00412A02    push        esi
 00412A03    add         al,bl
 00412A05    mov         ecx,0E2A00056
 00412A0A    push        esi
 00412A0B    add         al,dl
 00412A0D    mov         ecx,0E3240056
 00412A12    push        esi
 00412A13    add         al,cl
 00412A15    mov         ecx,0E1F80056
 00412A1A    push        esi
 00412A1B    add         al,al
 00412A1D    mov         ecx,0E2000056
 00412A22    push        esi
 00412A23    add         byte ptr [eax+500056B9],bh
 00412A29    in          eax,56
 00412A2B    add         byte ptr [eax-3FFA947],dh
 00412A31    loope       00412A89
 00412A33    add         byte ptr [eax-7FFA947],ch
 00412A39    in          eax,56
 00412A3B    add         byte ptr [eax+7C0056B9],ah
 00412A41    jecxz       00412A99
 00412A43    add         byte ptr [eax+480056B9],bl
 00412A49    jecxz       00412AA1
 00412A4B    add         byte ptr [eax+140056B9],dl
 00412A51    out         56,al
 00412A53    add         byte ptr [eax-5FFFA947],cl
 00412A59    in          eax,56
 00412A5B    add         byte ptr [eax+100056B9],al
 00412A61    loop        00412AB9
 00412A63    add         byte ptr [eax-47],bh
 00412A66    push        esi
 00412A67    add         byte ptr [ebp+56],bl
 00412A6B    add         byte ptr [eax-47],dh
 00412A6E    push        esi
 00412A6F    add         byte ptr [ebp+56],dh
 00412A73    add         byte ptr [eax-47],ch
 00412A76    push        esi
 00412A77    add         byte ptr [eax],dl
 00412A79    loope       00412AD1
 00412A7B    add         byte ptr [eax-47],ah
 00412A7E    push        esi
 00412A7F    add         byte ptr [eax-46A7FFAA],ah
 00412A86    push        esi
 00412A87    add         byte ptr [eax-1D],al
 00412A8A    push        esi
 00412A8B    add         byte ptr [eax-47],dl
 00412A8E    push        esi
 00412A8F    add         byte ptr [esp],ch
 00412A92    push        esi
 00412A93    add         byte ptr [eax-47],cl
 00412A96    push        esi
 00412A97    add         byte ptr [edi+ebx*8-46BFFFAA],ch
 00412A9E    push        esi
 00412A9F    add         byte ptr [ebp+56],cl
 00412AA3    add         byte ptr [eax],bh
 00412AA5    mov         ecx,0E20C0056
 00412AAA    push        esi
 00412AAB    add         byte ptr [eax],ch;{_NF__C59}
*}
end;

//00412AAC
procedure _NF__C59;
begin
{*
 00412AAC    sub         byte ptr [eax],al
 00412AAE    add         byte ptr [eax],al
 00412AB0    xor         byte ptr [ecx-1ADFFFAA],bh
 00412AB6    push        esi
 00412AB7    add         byte ptr [eax],al
 00412AB9    add         byte ptr [eax],al
 00412ABB    add         byte ptr [ecx+edi*4],ch
 00412ABE    push        esi
 00412ABF    add         byte ptr [eax],dl
 00412AC2    push        esi
 00412AC3    add         byte ptr [eax],al
 00412AC5    add         byte ptr [eax],al
 00412AC7    add         byte ptr [eax],ch
 00412AC9    mov         ecx,0E40C0056
 00412ACE    push        esi
 00412ACF    add         byte ptr [eax],al
 00412AD1    add         byte ptr [eax],al
 00412AD3    add         byte ptr [ecx+edi*4],ah
 00412AD6    push        esi
 00412AD7    add         byte ptr [eax+56DF],bh
 00412ADD    add         byte ptr [eax],al
 00412ADF    add         byte ptr [eax],ah
 00412AE1    mov         ecx,0E0CC0056
 00412AE6    push        esi
 00412AE7    add         byte ptr [eax],al
 00412AE9    add         byte ptr [eax],al
 00412AEB    add         byte ptr [ecx+edi*4],bl
 00412AEE    push        esi
 00412AEF    add         ah,al
 00412AF1    loopne      00412B49
 00412AF3    add         byte ptr [eax],al
 00412AF5    add         byte ptr [eax],al
 00412AF7    add         byte ptr [eax],bl
 00412AF9    mov         ecx,0E0340056
 00412AFE    push        esi
 00412AFF    add         byte ptr [eax],al
 00412B01    add         byte ptr [eax],al
 00412B03    add         byte ptr [ecx+edi*4],dl
 00412B06    push        esi
 00412B07    add         byte ptr [eax],cl
 00412B09    loop        00412B61
 00412B0B    add         byte ptr [eax],al
 00412B0D    add         byte ptr [eax],al
 00412B0F    add         byte ptr [eax],dl
 00412B11    mov         ecx,0E3780056
 00412B16    push        esi
 00412B17    add         byte ptr [eax],al
 00412B19    add         byte ptr [eax],al
 00412B1B    add         byte ptr [ecx+edi*4],cl
 00412B1E    push        esi
 00412B1F    add         al,cl
 00412B21    loopne      00412B79
 00412B23    add         byte ptr [eax],al
 00412B25    add         byte ptr [eax],al
 00412B27    add         byte ptr [eax],cl
 00412B29    mov         ecx,0E3380056
 00412B2E    push        esi
 00412B2F    add         byte ptr [eax],al
 00412B31    add         byte ptr [eax],al
 00412B33    add         byte ptr [ecx+edi*4],al
 00412B36    push        esi
 00412B37    add         byte ptr [esp+56],al
 00412B3E    add         byte ptr [eax],al
 00412B40    add         byte ptr [ecx-1B9BFFAA],bh
 00412B46    push        esi
 00412B47    add         byte ptr [eax],al
 00412B49    add         byte ptr [eax],al
 00412B4B    add         ah,bh
 00412B4D    mov         eax,0E3980056
 00412B52    push        esi
 00412B53    add         byte ptr [eax],al
 00412B55    add         byte ptr [eax],al
 00412B57    add         al,bh
 00412B59    mov         eax,0E1F40056
 00412B5E    push        esi
 00412B5F    add         byte ptr [eax],al
 00412B61    add         byte ptr [eax],al
 00412B63    add         ah,dh
 00412B65    mov         eax,0E1800056
 00412B6A    push        esi
 00412B6B    add         byte ptr [eax],al
 00412B6D    add         byte ptr [eax],al
 00412B6F    add         al,dh
 00412B71    mov         eax,0DFB40056
 00412B76    push        esi
 00412B77    add         byte ptr [eax],al
 00412B79    add         byte ptr [eax],al
 00412B7B    add         ah,ch
 00412B7D    mov         eax,0E4600056
 00412B82    push        esi
 00412B83    add         byte ptr [eax],al
 00412B85    add         byte ptr [eax],al
 00412B87    add         al,ch
 00412B89    mov         eax,0E2F00056
 00412B8E    push        esi
 00412B8F    add         byte ptr [eax],al
 00412B91    add         byte ptr [eax],al
 00412B93    add         ah,ah
 00412B95    mov         eax,0E1640056
 00412B9A    push        esi
 00412B9B    add         byte ptr [eax],al
 00412B9D    add         byte ptr [eax],al
 00412B9F    add         al,ah
 00412BA1    mov         eax,0E29C0056
 00412BA6    push        esi
 00412BA7    add         byte ptr [eax],al
 00412BA9    add         byte ptr [eax],al
 00412BAB    add         ah,bl
 00412BAD    mov         eax,0E3580056
 00412BB2    push        esi
 00412BB3    add         byte ptr [eax],al
 00412BB5    add         byte ptr [eax],al
 00412BB7    add         al,bl
 00412BB9    mov         eax,0E2BC0056
 00412BBE    push        esi
 00412BBF    add         byte ptr [eax],al
 00412BC1    add         byte ptr [eax],al
 00412BC3    add         ah,dl
 00412BC5    mov         eax,0E1B00056
 00412BCA    push        esi
 00412BCB    add         byte ptr [eax],al
 00412BCD    add         byte ptr [eax],al
 00412BCF    add         al,dl
 00412BD1    mov         eax,0DFB00056
 00412BD6    push        esi
 00412BD7    add         byte ptr [eax],al
 00412BD9    add         byte ptr [eax],al
 00412BDB    add         ah,cl
 00412BDD    mov         eax,0E2380056
 00412BE2    push        esi
 00412BE3    add         byte ptr [eax],al
 00412BE5    add         byte ptr [eax],al
 00412BE7    add         al,cl
 00412BE9    mov         eax,0E57C0056
 00412BEE    push        esi
 00412BEF    add         byte ptr [eax],al
 00412BF1    add         byte ptr [eax],al
 00412BF3    add         ah,al
 00412BF5    mov         eax,0E4FC0056
 00412BFA    push        esi
 00412BFB    add         byte ptr [eax],al
 00412BFD    add         byte ptr [eax],al
 00412BFF    add         al,al
 00412C01    mov         eax,0E3340056
 00412C06    push        esi
 00412C07    add         byte ptr [eax],al
 00412C09    add         byte ptr [eax],al
 00412C0B    add         byte ptr [eax+edi*4-1EF3FFAA],bh
 00412C12    push        esi
 00412C13    add         byte ptr [eax],al
 00412C15    add         byte ptr [eax],al
 00412C17    add         byte ptr [eax-33FFA948],bh
 00412C1D    fist        word ptr [esi]
 00412C20    add         byte ptr [eax],al
 00412C22    add         byte ptr [eax],al
 00412C24    mov         ah,0B8
 00412C26    push        esi
 00412C27    add         al,ah
 00412C29    in          al,56
 00412C2B    add         byte ptr [eax],al
 00412C2D    add         byte ptr [eax],al
 00412C2F    add         byte ptr [eax+400056B8],dh
 00412C35    out         56,al
 00412C37    add         byte ptr [eax],al
 00412C39    add         byte ptr [eax],al
 00412C3B    add         byte ptr [eax+edi*4-1FB7FFAA],ch
 00412C42    push        esi
 00412C43    add         byte ptr [eax],al
 00412C45    add         byte ptr [eax],al
 00412C47    add         byte ptr [eax-63FFA948],ch
 00412C4D    fist        word ptr [esi]
 00412C50    add         byte ptr [eax],al
 00412C52    add         byte ptr [eax],al
 00412C54    movs        byte ptr [edi],byte ptr [esi]
 00412C55    mov         eax,0E53C0056
 00412C5A    push        esi
 00412C5B    add         byte ptr [eax],al
 00412C5D    add         byte ptr [eax],al
 00412C5F    add         byte ptr [eax+300056B8],ah
 00412C65    jecxz       00412CBD
 00412C67    add         byte ptr [eax],al
 00412C69    add         byte ptr [eax],al
 00412C6B    add         byte ptr [eax+edi*4-1A37FFAA],bl
 00412C72    push        esi
 00412C73    add         byte ptr [eax],al
 00412C75    add         byte ptr [eax],al
 00412C77    add         byte ptr [eax-48],bh
 00412C7A    push        esi
 00412C7B    add         byte ptr [edx],bl
 00412C7E    push        esi
 00412C7F    add         byte ptr [eax],al
 00412C81    add         byte ptr [eax],al
 00412C83    add         byte ptr [eax+edi*4+56],dh
 00412C87    add         byte ptr [ecx],bl
 00412C8A    push        esi
 00412C8B    add         byte ptr [eax],al
 00412C8D    add         byte ptr [eax],al
 00412C8F    add         byte ptr [ebp-75],dl
*}
end;

Initialization
//00412E10
{*
 00412E10    push        ebp
 00412E11    mov         ebp,esp
 00412E13    xor         eax,eax
 00412E15    push        ebp
 00412E16    push        412E78
 00412E1B    push        dword ptr fs:[eax]
 00412E1E    mov         dword ptr fs:[eax],esp
 00412E21    sub         dword ptr ds:[5719BC],1
>00412E28    jae         00412E6A
 00412E2A    mov         eax,4129C0;_NF__C58
 00412E2F    call        @InitResStringImports
 00412E34    mov         eax,412AAC;_NF__C59
 00412E39    call        @InitImports
 00412E3E    cmp         byte ptr ds:[56F665],0;gvar_0056F665
>00412E45    je          00412E56
 00412E47    mov         eax,56B840;gvar_0056B840
 00412E4C    mov         edx,412E8C;'0x'
 00412E51    call        @LStrAsg
 00412E56    call        00410DF0
 00412E5B    call        00410EFC
 00412E60    call        00412204
 00412E65    call        00411BCC
 00412E6A    xor         eax,eax
 00412E6C    pop         edx
 00412E6D    pop         ecx
 00412E6E    pop         ecx
 00412E6F    mov         dword ptr fs:[eax],edx
 00412E72    push        412E7F
 00412E77    ret
>00412E78    jmp         @HandleFinally
>00412E7D    jmp         00412E77
 00412E7F    pop         ebp
 00412E80    ret
*}
Finalization
//00412C90
{*
 00412C90    push        ebp
 00412C91    mov         ebp,esp
 00412C93    xor         eax,eax
 00412C95    push        ebp
 00412C96    push        412E05
 00412C9B    push        dword ptr fs:[eax]
 00412C9E    mov         dword ptr fs:[eax],esp
 00412CA1    inc         dword ptr ds:[5719BC]
>00412CA7    jne         00412DF7
 00412CAD    mov         eax,5719C8
 00412CB2    call        FreeAndNil
 00412CB7    call        004121D0
 00412CBC    call        00410E78
 00412CC1    mov         eax,56B96C;gvar_0056B96C:array[22] of ?
 00412CC6    mov         ecx,16
 00412CCB    mov         edx,dword ptr ds:[410878];TExceptRec
 00412CD1    call        @FinalizeArray
 00412CD6    mov         eax,56B934;gvar_0056B934:array[7] of ?
 00412CDB    mov         ecx,7
 00412CE0    mov         edx,dword ptr ds:[4107D4];TErrorRec
 00412CE6    call        @FinalizeArray
 00412CEB    mov         eax,56B84C;gvar_0056B84C:array[2] of ?
 00412CF0    mov         ecx,2
 00412CF5    mov         edx,dword ptr ds:[4010C0];String
 00412CFB    call        @FinalizeArray
 00412D00    mov         eax,56B840;gvar_0056B840
 00412D05    call        @LStrClr
 00412D0A    mov         eax,5719B8;gvar_005719B8:?
 00412D0F    mov         edx,dword ptr ds:[40BA20];_DynArr_10_84
 00412D15    call        @DynArrayClear
 00412D1A    mov         eax,5719B4;gvar_005719B4:?
 00412D1F    mov         edx,dword ptr ds:[40B9FC];_DynArr_10_74
 00412D25    call        @DynArrayClear
 00412D2A    mov         eax,57197C;gvar_0057197C:array[7] of ?
 00412D2F    mov         ecx,7
 00412D34    mov         edx,dword ptr ds:[4010C0];String
 00412D3A    call        @FinalizeArray
 00412D3F    mov         eax,571950;gvar_00571950:array[7] of ?
 00412D44    mov         ecx,7
 00412D49    mov         edx,dword ptr ds:[4010C0];String
 00412D4F    call        @FinalizeArray
 00412D54    mov         eax,571934;gvar_00571934:array[7] of ?
 00412D59    mov         ecx,7
 00412D5E    mov         edx,dword ptr ds:[4010C0];String
 00412D64    call        @FinalizeArray
 00412D69    mov         eax,571904;gvar_00571904:array[12] of ?
 00412D6E    mov         ecx,0C
 00412D73    mov         edx,dword ptr ds:[4010C0];String
 00412D79    call        @FinalizeArray
 00412D7E    mov         eax,5718D4;gvar_005718D4:array[12] of ?
 00412D83    mov         ecx,0C
 00412D88    mov         edx,dword ptr ds:[4010C0];String
 00412D8E    call        @FinalizeArray
 00412D93    mov         eax,5718D0;gvar_005718D0
 00412D98    call        @LStrClr
 00412D9D    mov         eax,5718CC;gvar_005718CC
 00412DA2    call        @LStrClr
 00412DA7    mov         eax,5718C8;gvar_005718C8
 00412DAC    call        @LStrClr
 00412DB1    mov         eax,5718C4;gvar_005718C4
 00412DB6    call        @LStrClr
 00412DBB    mov         eax,5718BC;gvar_005718BC
 00412DC0    call        @LStrClr
 00412DC5    mov         eax,5718B8;gvar_005718B8
 00412DCA    call        @LStrClr
 00412DCF    mov         eax,5718AC;CurrencyString:AnsiString
 00412DD4    call        @LStrClr
 00412DD9    mov         eax,56B7E8
 00412DDE    call        @LStrClr
 00412DE3    mov         eax,56B7D4
 00412DE8    call        @WStrClr
 00412DED    mov         eax,56B7D0
 00412DF2    call        @LStrClr
 00412DF7    xor         eax,eax
 00412DF9    pop         edx
 00412DFA    pop         ecx
 00412DFB    pop         ecx
 00412DFC    mov         dword ptr fs:[eax],edx
 00412DFF    push        412E0C
 00412E04    ret
>00412E05    jmp         @HandleFinally
>00412E0A    jmp         00412E04
 00412E0C    pop         ebp
 00412E0D    ret
*}
end.