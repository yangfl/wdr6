//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit variants;

interface

uses
  SysUtils, Classes;

type
  TCustomVariantType = class(TObject)
  public
    .FVarType:TVarType;//f4
    destructor Destroy; virtual;//0041A8F4
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; virtual; stdcall;//v0//0041A9F8
    function LeftPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean; virtual;//v4//0041A984
    function RightPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean; virtual;//v8//0041A9B8
    function OlePromotion(const V:TVarData; var RequiredVarType:TVarType):Boolean; virtual;//vC//0041A998
    procedure DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer); virtual;//v10//0041A9D4
    //function v14:?; virtual;//v14//0041A980
    procedure Cast(var Dest:TVarData; const Source:TVarData); virtual;//v18//0041A7F4
    procedure CastTo(var Dest:TVarData; const Source:TVarData; const AVarType:TVarType); virtual;//v1C//0041A82C
    procedure CastToOle(var Dest:TVarData; const Source:TVarData); virtual;//v20//0041A8B8
    procedure v24; virtual; abstract;//v24//00403328
    procedure v28; virtual; abstract;//v28//00403328
    procedure BinaryOp(var Left:TVarData; const Right:TVarData; const Operator:TVarOp); virtual;//v2C//0041A7E8
    procedure v30; virtual;//v30//0041A9CC
    function CompareOp(const Left:TVarData; const Right:TVarData; const Operator:TVarOp):Boolean; virtual;//v34//0041A880
    procedure Compare(const Left:TVarData; const Right:TVarData; var Relationship:TVarCompareResult); virtual;//v38//0041A874
    function _AddRef:Integer; stdcall;//0041A9E0
    function _Release:Integer; stdcall;//0041A9EC
  end;
  EVariantInvalidOpError = class(EVariantError)
  end;
  EVariantTypeCastError = class(EVariantError)
  end;
  EVariantOverflowError = class(EVariantError)
  end;
  EVariantInvalidArgError = class(EVariantError)
  end;
  EVariantBadVarTypeError = class(EVariantError)
  end;
  EVariantBadIndexError = class(EVariantError)
  end;
  EVariantArrayLockedError = class(EVariantError)
  end;
  EVariantArrayCreateError = class(EVariantError)
  end;
  EVariantNotImplError = class(EVariantError)
  end;
  EVariantOutOfMemoryError = class(EVariantError)
  end;
  EVariantUnexpectedError = class(EVariantError)
  end;
  EVariantDispatchError = class(EVariantError)
  end;
  EVariantInvalidNullOpError = class(EVariantInvalidOpError)
  end;
  _DynArr_12_02 = array of ?;
//elSize = 4;
    procedure VarCastError;//00413D78
    procedure VarCastError(const ASourceType:TVarType; const ADestType:TVarType);//00413DCC
    procedure VarInvalidOp;//00413E68
    procedure VarInvalidNullOp;//00413EBC
    procedure VarOverflowError(const ASourceType:TVarType; const ADestType:TVarType);//00413F10
    procedure VarArrayCreateError;//00413FAC
    procedure TranslateResult(AResult:HRESULT);//00414000
    procedure VarResultCheck(AResult:HRESULT);//00414254
    procedure VarResultCheck(AResult:HRESULT; ASourceType:TVarType; ADestType:TVarType);//00414260
    procedure HandleConversionException(const ASourceType:TVarType; const ADestType:TVarType);//00414294
    procedure @DispInvokeError;//00414318
    procedure @VarNull(var V:TVarData);//0041436C
    function InBounds(At:Integer):Boolean;//00414380
    function Increment(At:Integer):Boolean;//004143B0
    procedure VarArrayClear(var V:TVarData);//0041440C
    procedure VarClearDeep(var V:TVarData);//00414588
    procedure @VarClear(var V:TVarData);//00414604
    procedure @VarClr(var V:TVarData);//00414618
    function InBounds(At:Integer):Boolean;//00414620
    function Increment(At:Integer):Boolean;//00414650
    //procedure sub_004146AC(?:?; ?:?; ?:?);//004146AC
    procedure VarCopyCopyProc(var Dest:TVarData; const Src:TVarData);//0041488C
    procedure VarCopyDeep(var Dest:TVarData; const Source:TVarData);//00414894
    procedure @VarCopy(var Dest:TVarData; const Source:TVarData);//00414940
    procedure sub_004149AC;//004149AC
    procedure VarCastAsAny(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);//004149B4
    procedure VarCastAsOleStr(var Dest:TVarData; const Source:TVarData);//00414A20
    procedure VarCastAsString(var Dest:TVarData; const Source:TVarData);//00414A6C
    procedure VarCastAsDispatch(var Dest:TVarData; const Source:TVarData);//00414AB8
    procedure VarCastAsInterface(var Dest:TVarData; const Source:TVarData);//00414B04
    procedure VarCastViaOS(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);//00414B50
    procedure VarCastRare(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);//00414BD0
    procedure @VarCast(var Dest:TVarData; const Source:TVarData; AVarType:Integer);//00414C3C
    function VarToIntAsString(const V:TVarData):Integer;//00414E68
    function VarToIntViaOS(const V:TVarData):Integer;//00414F1C
    function VarToIntAny(const V:TVarData):Integer;//00414F58
    function VarToIntCustom(const V:TVarData; var AValue:Integer):Boolean;//00414FBC
    function @VarToInteger(const V:TVarData):Integer;//00415000
    function @VarToShortInt(const V:TVarData):Shortint;//00415450
    function @VarToByte(const V:TVarData):Byte;//00415500
    function @VarToSmallInt(const V:TVarData):Smallint;//004155A8
    function @VarToWord(const V:TVarData):Word;//004156A0
    function @VarToLongWord(const V:TVarData):LongWord;//00415778
    function VarToInt64ViaOS(const V:TVarData):Int64;//00415860
    function VarToInt64AsString(const V:TVarData):Int64;//0041590C
    function VarToInt64Any(const V:TVarData):Int64;//00415A0C
    function VarToInt64Custom(const V:TVarData; var AValue:Int64):Boolean;//00415A78
    function @VarToInt64(const V:TVarData):Int64;//00415AC4
    function VarToBoolAsString(const V:TVarData):Boolean;//00415F08
    function VarToBoolViaOS(const V:TVarData):Boolean;//00415FD0
    function VarToBoolAny(const V:TVarData):Boolean;//00416010
    function VarToBoolCustom(const V:TVarData; var AValue:Boolean):Boolean;//00416074
    function @VarToBoolean(const V:TVarData):Boolean;//004160C0
    function @VarToBool(const V:TVarData):LongBool;//00416408
    function VarToDoubleAsString(const V:TVarData):Double;//00416414
    function VarToDoubleViaOS(const V:TVarData):Double;//004164D8
    function VarToDateAny(const V:TVarData):TDateTime;//00416524
    function VarToDoubleCustom(const V:TVarData; var AValue:Double):Boolean;//00416588
    //function sub_004165D4(?:?):?;//004165D4
    function @VarToReal(const V:TVarData):Extended;//00416950
    function @VarToSingle(const V:TVarData):Single;//0041696C
    function VarToDateAsString(const V:TVarData):TDateTime;//00416AFC
    function VarToDateAsDouble(const V:TVarData; const Value:Double):TDateTime;//00416BE8
    function VarToDateViaOS(const V:TVarData):TDateTime;//00416C48
    function VarToDoubleAny(const V:TVarData):Double;//00416C94
    function VarToDateCustom(const V:TVarData; var AValue:TDateTime):Boolean;//00416CF8
    //function sub_00416D44(?:?):?;//00416D44
    function VarToCurrencyAsString(const V:TVarData):Currency;//00417094
    function VarToCurrencyAsDouble(const V:TVarData; const Value:Double):Currency;//00417150
    function VarToCurrencyViaOS(const V:TVarData):Currency;//004171B0
    function VarToCurrencyAny(const V:TVarData):Currency;//004171FC
    function VarToCurrencyCustom(const V:TVarData; var AValue:Currency):Boolean;//00417260
    function @VarToCurrency(const V:TVarData):Currency;//004172AC
    function CurrToWStrViaOS(const AValue:Currency):WideString;//00417678
    function DateToWStrViaOS(const AValue:TDateTime):WideString;//004176B0
    function BoolToWStrViaOS(const AValue:WordBool):WideString;//004176E8
    function VarToLStrViaOS(const V:TVarData):AnsiString;//004177AC
    function VarToLStrAny(const V:TVarData):AnsiString;//00417878
    function VarToLStrCustom(const V:TVarData; var AValue:AnsiString):Boolean;//004178DC
    //procedure sub_00417960(?:?; ?:TVarData);//00417960
    function VarToWStrViaOS(const V:TVarData):WideString;//00417E9C
    function VarToWStrAny(const V:TVarData):WideString;//00417F54
    function VarToWStrCustom(const V:TVarData; var AValue:WideString):Boolean;//00417FB8
    //procedure sub_00418080(?:?; ?:TVarData);//00418080
    procedure AnyToIntf(var Intf:IInterface; const V:TVarData);//004185D4
    procedure @VarToIntf(var Intf:IInterface; const V:TVarData);//0041864C
    procedure @VarToDisp(var Dispatch:IDispatch; const V:TVarData);//00418718
    procedure @VarFromInt(var V:TVarData; const Value:Integer; const Range:Shortint);//004187C4
    procedure @OleVarFromInt(var V:TVarData; const Value:Integer; const Range:Shortint);//00418800
    procedure @VarFromByte(var V:TVarData; const Value:Byte);//00418820
    procedure @VarFromWord(var V:TVarData; const Value:Word);//00418840
    procedure @VarFromLongWord(var V:TVarData; const Value:LongWord);//00418860
    procedure @VarFromShortInt(var V:TVarData; const Value:Shortint);//00418880
    procedure @VarFromSmallInt(var V:TVarData; const Value:Smallint);//004188A0
    procedure @VarFromInt64(var V:TVarData; const Value:Int64);//004188C0
    procedure @VarFromSingle(var Dest:TVarData; const Value:Single);//004188EC
    procedure @VarFromDouble(var Dest:TVarData; const Value:Double);//00418910
    procedure @VarFromCurrency(var Dest:TVarData; const Value:Currency);//0041893C
    procedure @VarFromDate(var Dest:TVarData; const Value:TDateTime);//00418968
    procedure @VarFromBool(var V:TVarData; const Value:Boolean);//00418994
    procedure @VarFromReal(var v:Variant);//004189BC
    procedure @VarFromTDateTime(var v:Variant);//004189D0
    procedure @VarFromCurr(var v:Variant);//004189E4
    procedure @VarFromLStr(var V:TVarData; const Value:AnsiString);//004189F8
    procedure @VarFromPStr(var V:TVarData; const Value:ShortString);//00418A24
    procedure @VarFromWStr(var V:TVarData; const Value:WideString);//00418A74
    procedure @VarFromIntf(var V:TVarData; const Value:IInterface);//00418AAC
    procedure @VarFromDisp(var V:TVarData; const Value:IDispatch);//00418AD8
    function CheckType(T:TVarType):TVarType;//00418B04
    function VarCompareAny(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//00418B28
    function EmptyCompare(L:TBaseType; R:TBaseType):TVarCompareResult;//00418BFC
    function NullCompare(L:TBaseType; R:TBaseType; OpCode:TVarOp):TVarCompareResult;//00418C10
    function IntCompare(A:Integer; B:Integer):TVarCompareResult;//00418CF8
    function Int64Compare(const A:Int64; const B:Int64):TVarCompareResult;//00418D0C
    function DateCompare(const A:TDateTime; const B:TDateTime):TVarCompareResult;//00418D48
    function RealCompare(const A:Double; const B:Double):TVarCompareResult;//00418D70
    function CurrCompare(const A:Currency; const B:Currency):TVarCompareResult;//00418D98
    function StringCompare(const L:TVarData; const R:TVarData):TVarCompareResult;//00418DC4
    //function sub_00418E30(?:?; ?:?; ?:?):?;//00418E30
    function VarCompareRare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//00418FBC
    function VarCompare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//004193DC
    function VarTypeAsText(const AType:TVarType):AnsiString;//004195C8
    //function sub_00419738(?:?):?;//00419738
    //function sub_0041973C(?:?):?;//0041973C
    function VarIsClear(const V:Variant):Boolean;//00419758
    function VarTypeIsCustom(const AVarType:TVarType):Boolean;//004197CC
    function VarIsNull(const V:Variant):Boolean;//004197D8
    function VarToStr(const V:Variant):AnsiString;//004197EC
    function VarToStrDef(const V:Variant; const ADefault:AnsiString):AnsiString;//00419804
    function VarToWideStr(const V:Variant):WideString;//00419830
    function VarToWideStrDef(const V:Variant; const ADefault:WideString):WideString;//00419888
    function VarSameValue(const A:Variant; const B:Variant):Boolean;//004198B4
    procedure SetVarAsError(var V:TVarData; AResult:HRESULT);//0041992C
    procedure SetClearVarToEmptyParam(var V:TVarData);//00419944
    function GetVarDataArrayInfo(const AVarData:TVarData; var AVarType:TVarType; var AVarArray:PVarArray):Boolean;//00419950
    //procedure sub_00419994(?:?; ?:?; ?:Integer; ?:?);//00419994
    function VarArrayAsPSafeArray(const A:Variant):PVarArray;//00419A44
    function VarArrayDimCount(const A:Variant):Integer;//00419A6C
    function VarArrayLowBound(const A:Variant; Dim:Integer):Integer;//00419A94
    function VarArrayHighBound(const A:Variant; Dim:Integer):Integer;//00419AB8
    function VarArrayLock(const A:Variant):Pointer;//00419ADC
    procedure VarArrayUnlock(const A:Variant);//00419AFC
    function VarIsArray(const A:Variant):Boolean;//00419B14
    function VarIsArray(const A:Variant; AResolveByRef:Boolean):Boolean;//00419B1C
    function VarTypeIsValidArrayType(const AVarType:TVarType):Boolean;//00419B44
    function VarTypeIsValidElementType(const AVarType:TVarType):Boolean;//00419B64
    function @VarArrayGet(var A:TVarData; IndexCount:Integer; const Indices:TVarArrayCoorArray):TVarData; cdecl;//00419BA0
    function VarArrayGet(const A:Variant; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1):Variant;//00419C6C
    procedure @VarArrayPut(var A:TVarData; const Value:TVarData; IndexCount:Integer; const Indices:TVarArrayCoorArray); cdecl;//00419C90
    procedure VarArrayPut(var A:Variant; const Value:Variant; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1);//00419DD8
    //function sub_00419E00(?:?; ?:?; ?:?; ?:?):?;//00419E00
    //function sub_00419E44(?:?):?;//00419E44
    //function sub_00419E68(?:?):?;//00419E68
    function DynArraySize(a:Pointer):Integer;//00419E90
    //function sub_00419E98(?:?; ?:?):?;//00419E98
    //procedure sub_00419F10(?:?; ?:?; ?:?);//00419F10
    function DecIndices(var Indices:TBoundArray; const Bounds:TBoundArray):Boolean;//00419F68
    //procedure sub_00419FD4(?:?; ?:?; ?:?);//00419FD4
    function DynArrayVarType(typeInfo:PDynArrayTypeInfo):Integer;//0041A044
    //procedure sub_0041A08C(?:?; ?:Longint; ?:?);//0041A08C
    //procedure sub_0041A410(?:?; ?:?; ?:?);//0041A410
    procedure ClearVariantTypeList;//0041A77C
    procedure BinaryOp(var Left:TVarData; const Right:TVarData; const Operator:TVarOp);//0041A7E8
    procedure Cast(var Dest:TVarData; const Source:TVarData);//0041A7F4
    procedure CastTo(var Dest:TVarData; const Source:TVarData; const AVarType:TVarType);//0041A82C
    procedure Compare(const Left:TVarData; const Right:TVarData; var Relationship:TVarCompareResult);//0041A874
    function CompareOp(const Left:TVarData; const Right:TVarData; const Operator:TVarOp):Boolean;//0041A880
    procedure CastToOle(var Dest:TVarData; const Source:TVarData);//0041A8B8
    destructor Destroy;//0041A8F4
    //function sub_0041A980:?;//0041A980
    function LeftPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;//0041A984
    function OlePromotion(const V:TVarData; var RequiredVarType:TVarType):Boolean;//0041A998
    procedure sub_0041A9A0;//0041A9A0
    procedure sub_0041A9A8;//0041A9A8
    procedure sub_0041A9B0;//0041A9B0
    function RightPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;//0041A9B8
    procedure sub_0041A9CC;//0041A9CC
    procedure DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer);//0041A9D4
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;//0041A9F8
    function FindCustomVariantType(const AVarType:TVarType; var CustomVariantType:TCustomVariantType):Boolean;//0041AA20
    function FindCustomVariantType(const TypeName:AnsiString; var CustomVariantType:TCustomVariantType):Boolean;//0041AAD8
    procedure sub_0041ABC0;//0041ABC0
    procedure @VarCmpEQ(const Left:TVarData; const Right:TVarData);//0041ABC8

implementation

//00413D78
procedure VarCastError;
begin
{*
 00413D78    push        ebp
 00413D79    mov         ebp,esp
 00413D7B    push        0
 00413D7D    xor         eax,eax
 00413D7F    push        ebp
 00413D80    push        413DC2
 00413D85    push        dword ptr fs:[eax]
 00413D88    mov         dword ptr fs:[eax],esp
 00413D8B    lea         edx,[ebp-4]
 00413D8E    mov         eax,[0056E324];^SInvalidVarCast:TResStringRec
 00413D93    call        LoadResString
 00413D98    mov         ecx,dword ptr [ebp-4]
 00413D9B    mov         dl,1
 00413D9D    mov         eax,[004138B8];EVariantTypeCastError
 00413DA2    call        Exception.Create
 00413DA7    call        @RaiseExcept
 00413DAC    xor         eax,eax
 00413DAE    pop         edx
 00413DAF    pop         ecx
 00413DB0    pop         ecx
 00413DB1    mov         dword ptr fs:[eax],edx
 00413DB4    push        413DC9
 00413DB9    lea         eax,[ebp-4]
 00413DBC    call        @LStrClr
 00413DC1    ret
>00413DC2    jmp         @HandleFinally
>00413DC7    jmp         00413DB9
 00413DC9    pop         ecx
 00413DCA    pop         ebp
 00413DCB    ret
*}
end;

//00413DCC
procedure VarCastError(const ASourceType:TVarType; const ADestType:TVarType);
begin
{*
 00413DCC    push        ebp
 00413DCD    mov         ebp,esp
 00413DCF    add         esp,0FFFFFFE4
 00413DD2    push        ebx
 00413DD3    push        esi
 00413DD4    xor         ecx,ecx
 00413DD6    mov         dword ptr [ebp-14],ecx
 00413DD9    mov         dword ptr [ebp-18],ecx
 00413DDC    mov         dword ptr [ebp-1C],ecx
 00413DDF    mov         esi,edx
 00413DE1    mov         ebx,eax
 00413DE3    xor         eax,eax
 00413DE5    push        ebp
 00413DE6    push        413E5B
 00413DEB    push        dword ptr fs:[eax]
 00413DEE    mov         dword ptr fs:[eax],esp
 00413DF1    lea         edx,[ebp-14]
 00413DF4    mov         eax,ebx
 00413DF6    call        VarTypeAsText
 00413DFB    mov         eax,dword ptr [ebp-14]
 00413DFE    mov         dword ptr [ebp-10],eax
 00413E01    mov         byte ptr [ebp-0C],0B
 00413E05    lea         edx,[ebp-18]
 00413E08    mov         eax,esi
 00413E0A    call        VarTypeAsText
 00413E0F    mov         eax,dword ptr [ebp-18]
 00413E12    mov         dword ptr [ebp-8],eax
 00413E15    mov         byte ptr [ebp-4],0B
 00413E19    lea         eax,[ebp-10]
 00413E1C    push        eax
 00413E1D    push        1
 00413E1F    lea         edx,[ebp-1C]
 00413E22    mov         eax,[0056DFA8];^SVarTypeCouldNotConvert:TResStringRec
 00413E27    call        LoadResString
 00413E2C    mov         ecx,dword ptr [ebp-1C]
 00413E2F    mov         dl,1
 00413E31    mov         eax,[004138B8];EVariantTypeCastError
 00413E36    call        Exception.CreateFmt
 00413E3B    call        @RaiseExcept
 00413E40    xor         eax,eax
 00413E42    pop         edx
 00413E43    pop         ecx
 00413E44    pop         ecx
 00413E45    mov         dword ptr fs:[eax],edx
 00413E48    push        413E62
 00413E4D    lea         eax,[ebp-1C]
 00413E50    mov         edx,3
 00413E55    call        @LStrArrayClr
 00413E5A    ret
>00413E5B    jmp         @HandleFinally
>00413E60    jmp         00413E4D
 00413E62    pop         esi
 00413E63    pop         ebx
 00413E64    mov         esp,ebp
 00413E66    pop         ebp
 00413E67    ret
*}
end;

//00413E68
procedure VarInvalidOp;
begin
{*
 00413E68    push        ebp
 00413E69    mov         ebp,esp
 00413E6B    push        0
 00413E6D    xor         eax,eax
 00413E6F    push        ebp
 00413E70    push        413EB2
 00413E75    push        dword ptr fs:[eax]
 00413E78    mov         dword ptr fs:[eax],esp
 00413E7B    lea         edx,[ebp-4]
 00413E7E    mov         eax,[0056E2A0];^SInvalidVarOp:TResStringRec
 00413E83    call        LoadResString
 00413E88    mov         ecx,dword ptr [ebp-4]
 00413E8B    mov         dl,1
 00413E8D    mov         eax,[00413854];EVariantInvalidOpError
 00413E92    call        Exception.Create
 00413E97    call        @RaiseExcept
 00413E9C    xor         eax,eax
 00413E9E    pop         edx
 00413E9F    pop         ecx
 00413EA0    pop         ecx
 00413EA1    mov         dword ptr fs:[eax],edx
 00413EA4    push        413EB9
 00413EA9    lea         eax,[ebp-4]
 00413EAC    call        @LStrClr
 00413EB1    ret
>00413EB2    jmp         @HandleFinally
>00413EB7    jmp         00413EA9
 00413EB9    pop         ecx
 00413EBA    pop         ebp
 00413EBB    ret
*}
end;

//00413EBC
procedure VarInvalidNullOp;
begin
{*
 00413EBC    push        ebp
 00413EBD    mov         ebp,esp
 00413EBF    push        0
 00413EC1    xor         eax,eax
 00413EC3    push        ebp
 00413EC4    push        413F06
 00413EC9    push        dword ptr fs:[eax]
 00413ECC    mov         dword ptr fs:[eax],esp
 00413ECF    lea         edx,[ebp-4]
 00413ED2    mov         eax,[0056E328];^SInvalidVarNullOp:TResStringRec
 00413ED7    call        LoadResString
 00413EDC    mov         ecx,dword ptr [ebp-4]
 00413EDF    mov         dl,1
 00413EE1    mov         eax,[00413D10];EVariantInvalidNullOpError
 00413EE6    call        Exception.Create
 00413EEB    call        @RaiseExcept
 00413EF0    xor         eax,eax
 00413EF2    pop         edx
 00413EF3    pop         ecx
 00413EF4    pop         ecx
 00413EF5    mov         dword ptr fs:[eax],edx
 00413EF8    push        413F0D
 00413EFD    lea         eax,[ebp-4]
 00413F00    call        @LStrClr
 00413F05    ret
>00413F06    jmp         @HandleFinally
>00413F0B    jmp         00413EFD
 00413F0D    pop         ecx
 00413F0E    pop         ebp
 00413F0F    ret
*}
end;

//00413F10
procedure VarOverflowError(const ASourceType:TVarType; const ADestType:TVarType);
begin
{*
 00413F10    push        ebp
 00413F11    mov         ebp,esp
 00413F13    add         esp,0FFFFFFE4
 00413F16    push        ebx
 00413F17    push        esi
 00413F18    xor         ecx,ecx
 00413F1A    mov         dword ptr [ebp-14],ecx
 00413F1D    mov         dword ptr [ebp-18],ecx
 00413F20    mov         dword ptr [ebp-1C],ecx
 00413F23    mov         esi,edx
 00413F25    mov         ebx,eax
 00413F27    xor         eax,eax
 00413F29    push        ebp
 00413F2A    push        413F9F
 00413F2F    push        dword ptr fs:[eax]
 00413F32    mov         dword ptr fs:[eax],esp
 00413F35    lea         edx,[ebp-14]
 00413F38    mov         eax,ebx
 00413F3A    call        VarTypeAsText
 00413F3F    mov         eax,dword ptr [ebp-14]
 00413F42    mov         dword ptr [ebp-10],eax
 00413F45    mov         byte ptr [ebp-0C],0B
 00413F49    lea         edx,[ebp-18]
 00413F4C    mov         eax,esi
 00413F4E    call        VarTypeAsText
 00413F53    mov         eax,dword ptr [ebp-18]
 00413F56    mov         dword ptr [ebp-8],eax
 00413F59    mov         byte ptr [ebp-4],0B
 00413F5D    lea         eax,[ebp-10]
 00413F60    push        eax
 00413F61    push        1
 00413F63    lea         edx,[ebp-1C]
 00413F66    mov         eax,[0056E3B4];^SVarTypeConvertOverflow:TResStringRec
 00413F6B    call        LoadResString
 00413F70    mov         ecx,dword ptr [ebp-1C]
 00413F73    mov         dl,1
 00413F75    mov         eax,[0041391C];EVariantOverflowError
 00413F7A    call        Exception.CreateFmt
 00413F7F    call        @RaiseExcept
 00413F84    xor         eax,eax
 00413F86    pop         edx
 00413F87    pop         ecx
 00413F88    pop         ecx
 00413F89    mov         dword ptr fs:[eax],edx
 00413F8C    push        413FA6
 00413F91    lea         eax,[ebp-1C]
 00413F94    mov         edx,3
 00413F99    call        @LStrArrayClr
 00413F9E    ret
>00413F9F    jmp         @HandleFinally
>00413FA4    jmp         00413F91
 00413FA6    pop         esi
 00413FA7    pop         ebx
 00413FA8    mov         esp,ebp
 00413FAA    pop         ebp
 00413FAB    ret
*}
end;

//00413FAC
procedure VarArrayCreateError;
begin
{*
 00413FAC    push        ebp
 00413FAD    mov         ebp,esp
 00413FAF    push        0
 00413FB1    xor         eax,eax
 00413FB3    push        ebp
 00413FB4    push        413FF6
 00413FB9    push        dword ptr fs:[eax]
 00413FBC    mov         dword ptr fs:[eax],esp
 00413FBF    lea         edx,[ebp-4]
 00413FC2    mov         eax,[0056E228];^SVarArrayCreate:TResStringRec
 00413FC7    call        LoadResString
 00413FCC    mov         ecx,dword ptr [ebp-4]
 00413FCF    mov         dl,1
 00413FD1    mov         eax,[00413B14];EVariantArrayCreateError
 00413FD6    call        Exception.Create
 00413FDB    call        @RaiseExcept
 00413FE0    xor         eax,eax
 00413FE2    pop         edx
 00413FE3    pop         ecx
 00413FE4    pop         ecx
 00413FE5    mov         dword ptr fs:[eax],edx
 00413FE8    push        413FFD
 00413FED    lea         eax,[ebp-4]
 00413FF0    call        @LStrClr
 00413FF5    ret
>00413FF6    jmp         @HandleFinally
>00413FFB    jmp         00413FED
 00413FFD    pop         ecx
 00413FFE    pop         ebp
 00413FFF    ret
*}
end;

//00414000
procedure TranslateResult(AResult:HRESULT);
begin
{*
 00414000    push        ebp
 00414001    mov         ebp,esp
 00414003    mov         ecx,8
 00414008    push        0
 0041400A    push        0
 0041400C    dec         ecx
>0041400D    jne         00414008
 0041400F    push        ebx
 00414010    mov         ebx,eax
 00414012    xor         eax,eax
 00414014    push        ebp
 00414015    push        414245
 0041401A    push        dword ptr fs:[eax]
 0041401D    mov         dword ptr fs:[eax],esp
 00414020    mov         eax,ebx
 00414022    cmp         eax,8002000A
>00414027    jg          00414062
>00414029    je          004140C9
 0041402F    cmp         eax,80020005
>00414034    jg          00414053
>00414036    je          0041408F
 00414038    sub         eax,80004001
>0041403D    je          0041413B
 00414043    sub         eax,0BFFE
>00414048    je          004141AA
>0041404E    jmp         004141CD
 00414053    sub         eax,80020008
>00414058    je          00414099
 0041405A    dec         eax
>0041405B    je          004140BF
>0041405D    jmp         004141CD
 00414062    sub         eax,8002000B
>00414067    je          004140EF
 0041406D    sub         eax,2
>00414070    je          00414115
 00414076    sub         eax,50001
>0041407B    je          00414161
 00414081    sub         eax,49
>00414084    je          00414187
>0041408A    jmp         004141CD
 0041408F    call        VarCastError
>00414094    jmp         0041421D
 00414099    lea         edx,[ebp-4]
 0041409C    mov         eax,[0056E570];^SVarBadType:TResStringRec
 004140A1    call        LoadResString
 004140A6    mov         ecx,dword ptr [ebp-4]
 004140A9    mov         dl,1
 004140AB    mov         eax,[004139E4];EVariantBadVarTypeError
 004140B0    call        Exception.Create
 004140B5    call        @RaiseExcept
>004140BA    jmp         0041421D
 004140BF    call        VarInvalidOp
>004140C4    jmp         0041421D
 004140C9    lea         edx,[ebp-8]
 004140CC    mov         eax,[0056E074];^SVarOverflow:TResStringRec
 004140D1    call        LoadResString
 004140D6    mov         ecx,dword ptr [ebp-8]
 004140D9    mov         dl,1
 004140DB    mov         eax,[0041391C];EVariantOverflowError
 004140E0    call        Exception.Create
 004140E5    call        @RaiseExcept
>004140EA    jmp         0041421D
 004140EF    lea         edx,[ebp-0C]
 004140F2    mov         eax,[0056E48C];^SVarArrayBounds:TResStringRec
 004140F7    call        LoadResString
 004140FC    mov         ecx,dword ptr [ebp-0C]
 004140FF    mov         dl,1
 00414101    mov         eax,[00413A48];EVariantBadIndexError
 00414106    call        Exception.Create
 0041410B    call        @RaiseExcept
>00414110    jmp         0041421D
 00414115    lea         edx,[ebp-10]
 00414118    mov         eax,[0056E610];^SVarArrayLocked:TResStringRec
 0041411D    call        LoadResString
 00414122    mov         ecx,dword ptr [ebp-10]
 00414125    mov         dl,1
 00414127    mov         eax,[00413AAC];EVariantArrayLockedError
 0041412C    call        Exception.Create
 00414131    call        @RaiseExcept
>00414136    jmp         0041421D
 0041413B    lea         edx,[ebp-14]
 0041413E    mov         eax,[0056E354];^SVarNotImplemented:TResStringRec
 00414143    call        LoadResString
 00414148    mov         ecx,dword ptr [ebp-14]
 0041414B    mov         dl,1
 0041414D    mov         eax,[00413B7C];EVariantNotImplError
 00414152    call        Exception.Create
 00414157    call        @RaiseExcept
>0041415C    jmp         0041421D
 00414161    lea         edx,[ebp-18]
 00414164    mov         eax,[0056E104];^SOutOfMemory:TResStringRec
 00414169    call        LoadResString
 0041416E    mov         ecx,dword ptr [ebp-18]
 00414171    mov         dl,1
 00414173    mov         eax,[00413BE0];EVariantOutOfMemoryError
 00414178    call        Exception.Create
 0041417D    call        @RaiseExcept
>00414182    jmp         0041421D
 00414187    lea         edx,[ebp-1C]
 0041418A    mov         eax,[0056E12C];^SVarInvalid:TResStringRec
 0041418F    call        LoadResString
 00414194    mov         ecx,dword ptr [ebp-1C]
 00414197    mov         dl,1
 00414199    mov         eax,[00413980];EVariantInvalidArgError
 0041419E    call        Exception.Create
 004141A3    call        @RaiseExcept
>004141A8    jmp         0041421D
 004141AA    lea         edx,[ebp-20]
 004141AD    mov         eax,[0056E070];^SVarUnexpected:TResStringRec
 004141B2    call        LoadResString
 004141B7    mov         ecx,dword ptr [ebp-20]
 004141BA    mov         dl,1
 004141BC    mov         eax,[00413C48];EVariantUnexpectedError
 004141C1    call        Exception.Create
 004141C6    call        @RaiseExcept
>004141CB    jmp         0041421D
 004141CD    mov         eax,[0056E580];^gvar_0056B840
 004141D2    mov         eax,dword ptr [eax]
 004141D4    mov         dword ptr [ebp-38],eax
 004141D7    mov         byte ptr [ebp-34],0B
 004141DB    mov         dword ptr [ebp-30],ebx
 004141DE    mov         byte ptr [ebp-2C],0
 004141E2    lea         edx,[ebp-3C]
 004141E5    mov         eax,ebx
 004141E7    call        SysErrorMessage
 004141EC    mov         eax,dword ptr [ebp-3C]
 004141EF    mov         dword ptr [ebp-28],eax
 004141F2    mov         byte ptr [ebp-24],0B
 004141F6    lea         eax,[ebp-38]
 004141F9    push        eax
 004141FA    push        2
 004141FC    lea         edx,[ebp-40]
 004141FF    mov         eax,[0056E22C];^SResString1:TResStringRec
 00414204    call        LoadResString
 00414209    mov         ecx,dword ptr [ebp-40]
 0041420C    mov         dl,1
 0041420E    mov         eax,[0040B7D0];EVariantError
 00414213    call        Exception.CreateFmt
 00414218    call        @RaiseExcept
 0041421D    xor         eax,eax
 0041421F    pop         edx
 00414220    pop         ecx
 00414221    pop         ecx
 00414222    mov         dword ptr fs:[eax],edx
 00414225    push        41424C
 0041422A    lea         eax,[ebp-40]
 0041422D    mov         edx,2
 00414232    call        @LStrArrayClr
 00414237    lea         eax,[ebp-20]
 0041423A    mov         edx,8
 0041423F    call        @LStrArrayClr
 00414244    ret
>00414245    jmp         @HandleFinally
>0041424A    jmp         0041422A
 0041424C    pop         ebx
 0041424D    mov         esp,ebp
 0041424F    pop         ebp
 00414250    ret
*}
end;

//00414254
procedure VarResultCheck(AResult:HRESULT);
begin
{*
 00414254    test        eax,eax
>00414256    je          0041425D
 00414258    call        TranslateResult
 0041425D    ret
*}
end;

//00414260
procedure VarResultCheck(AResult:HRESULT; ASourceType:TVarType; ADestType:TVarType);
begin
{*
 00414260    push        ebx
 00414261    test        eax,eax
>00414263    je          00414291
 00414265    mov         ebx,eax
 00414267    sub         ebx,80020005
>0041426D    je          00414276
 0041426F    sub         ebx,5
>00414272    je          00414281
>00414274    jmp         0041428C
 00414276    mov         eax,edx
 00414278    mov         edx,ecx
 0041427A    call        VarCastError
>0041427F    jmp         00414291
 00414281    mov         eax,edx
 00414283    mov         edx,ecx
 00414285    call        VarOverflowError
>0041428A    jmp         00414291
 0041428C    call        TranslateResult
 00414291    pop         ebx
 00414292    ret
*}
end;

//00414294
procedure HandleConversionException(const ASourceType:TVarType; const ADestType:TVarType);
begin
{*
 00414294    push        ebx
 00414295    push        esi
 00414296    mov         esi,edx
 00414298    mov         ebx,eax
 0041429A    call        ExceptObject
 0041429F    mov         edx,dword ptr ds:[40B2E4];ERangeError
 004142A5    call        @IsClass
 004142AA    test        al,al
>004142AC    je          004142BF
 004142AE    mov         ecx,esi
 004142B0    mov         edx,ebx
 004142B2    mov         eax,8002000A
 004142B7    call        VarResultCheck
 004142BC    pop         esi
 004142BD    pop         ebx
 004142BE    ret
 004142BF    call        ExceptObject
 004142C4    mov         edx,dword ptr ds:[40B4A0];EOverflow
 004142CA    call        @IsClass
 004142CF    test        al,al
>004142D1    je          004142E3
 004142D3    mov         ecx,esi
 004142D5    mov         edx,ebx
 004142D7    mov         eax,8002000A
 004142DC    call        VarResultCheck
>004142E1    jmp         00414315
 004142E3    call        ExceptObject
 004142E8    mov         edx,dword ptr ds:[40B608];EConvertError
 004142EE    call        @IsClass
 004142F3    test        al,al
>004142F5    je          00414307
 004142F7    mov         ecx,esi
 004142F9    mov         edx,ebx
 004142FB    mov         eax,80020005
 00414300    call        VarResultCheck
>00414305    jmp         00414315
 00414307    call        00402F30
 0041430C    mov         edx,eax
 0041430E    mov         eax,edx
 00414310    call        @RaiseExcept
 00414315    pop         esi
 00414316    pop         ebx
 00414317    ret
*}
end;

//00414318
procedure @DispInvokeError;
begin
{*
 00414318    push        ebp
 00414319    mov         ebp,esp
 0041431B    push        0
 0041431D    xor         eax,eax
 0041431F    push        ebp
 00414320    push        414362
 00414325    push        dword ptr fs:[eax]
 00414328    mov         dword ptr fs:[eax],esp
 0041432B    lea         edx,[ebp-4]
 0041432E    mov         eax,[0056DFA0];^SDispatchError:TResStringRec
 00414333    call        LoadResString
 00414338    mov         ecx,dword ptr [ebp-4]
 0041433B    mov         dl,1
 0041433D    mov         eax,[00413CAC];EVariantDispatchError
 00414342    call        Exception.Create
 00414347    call        @RaiseExcept
 0041434C    xor         eax,eax
 0041434E    pop         edx
 0041434F    pop         ecx
 00414350    pop         ecx
 00414351    mov         dword ptr fs:[eax],edx
 00414354    push        414369
 00414359    lea         eax,[ebp-4]
 0041435C    call        @LStrClr
 00414361    ret
>00414362    jmp         @HandleFinally
>00414367    jmp         00414359
 00414369    pop         ecx
 0041436A    pop         ebp
 0041436B    ret
*}
end;

//0041436C
procedure @VarNull(var V:TVarData);
begin
{*
 0041436C    push        ebx
 0041436D    mov         ebx,eax
 0041436F    mov         eax,ebx
 00414371    call        @VarClear
 00414376    mov         word ptr [ebx],1
 0041437B    pop         ebx
 0041437C    ret
*}
end;

//00414380
function InBounds(At:Integer):Boolean;
begin
{*
 00414380    push        ebp
 00414381    mov         ebp,esp
 00414383    push        ebx
 00414384    mov         ecx,dword ptr [ebp+8]
 00414387    add         ecx,0FFFFFD00
 0041438D    mov         edx,dword ptr [ecx+eax*8+4]
 00414391    add         edx,dword ptr [ecx+eax*8]
 00414394    mov         ebx,dword ptr [ebp+8]
 00414397    cmp         edx,dword ptr [ebx+eax*4-100]
 0041439E    setg        dl
 004143A1    dec         eax
 004143A2    test        dl,dl
>004143A4    je          004143AA
 004143A6    test        eax,eax
>004143A8    jge         0041438D
 004143AA    mov         eax,edx
 004143AC    pop         ebx
 004143AD    pop         ebp
 004143AE    ret
*}
end;

//004143B0
function Increment(At:Integer):Boolean;
begin
{*
 004143B0    push        ebp
 004143B1    mov         ebp,esp
 004143B3    push        ebx
 004143B4    push        esi
 004143B5    mov         dl,1
 004143B7    mov         ecx,dword ptr [ebp+8]
 004143BA    inc         dword ptr [ecx+eax*4-100]
 004143C1    mov         ecx,dword ptr [ebp+8]
 004143C4    mov         ecx,dword ptr [ecx+eax*8-2FC]
 004143CB    mov         ebx,ecx
 004143CD    mov         esi,dword ptr [ebp+8]
 004143D0    add         ebx,dword ptr [esi+eax*8-300]
 004143D7    mov         esi,dword ptr [ebp+8]
 004143DA    cmp         ebx,dword ptr [esi+eax*4-100]
>004143E1    jg          00414405
 004143E3    test        eax,eax
>004143E5    jne         004143EB
 004143E7    xor         edx,edx
>004143E9    jmp         00414405
 004143EB    mov         edx,dword ptr [ebp+8]
 004143EE    mov         edx,dword ptr [ebp+8]
 004143F1    mov         dword ptr [edx+eax*4-100],ecx
 004143F8    mov         edx,dword ptr [ebp+8]
 004143FB    push        edx
 004143FC    dec         eax
 004143FD    call        Increment
 00414402    pop         ecx
 00414403    mov         edx,eax
 00414405    mov         eax,edx
 00414407    pop         esi
 00414408    pop         ebx
 00414409    pop         ebp
 0041440A    ret
*}
end;

//0041440C
procedure VarArrayClear(var V:TVarData);
begin
{*
 0041440C    push        ebp
 0041440D    mov         ebp,esp
 0041440F    add         esp,0FFFFFCE8
 00414415    push        ebx
 00414416    push        esi
 00414417    push        edi
 00414418    mov         dword ptr [ebp-304],eax
 0041441E    mov         eax,dword ptr [ebp-304]
 00414424    test        byte ptr [eax+1],20
>00414428    jne         00414434
 0041442A    mov         eax,80070057
 0041442F    call        VarResultCheck
 00414434    mov         eax,dword ptr [ebp-304]
 0041443A    mov         ax,word ptr [eax]
 0041443D    mov         edx,eax
 0041443F    and         dx,0FFF
 00414444    cmp         dx,0C
>00414448    jne         00414570
 0041444E    mov         edx,dword ptr [ebp-304]
 00414454    test        ah,40
>00414457    je          0041446C
 00414459    mov         eax,dword ptr [ebp-304]
 0041445F    mov         eax,dword ptr [eax+8]
 00414462    mov         eax,dword ptr [eax]
 00414464    mov         dword ptr [ebp-308],eax
>0041446A    jmp         0041447B
 0041446C    mov         eax,dword ptr [ebp-304]
 00414472    mov         eax,dword ptr [eax+8]
 00414475    mov         dword ptr [ebp-308],eax
 0041447B    mov         eax,dword ptr [ebp-308]
 00414481    movzx       eax,word ptr [eax]
 00414484    mov         dword ptr [ebp-310],eax
 0041448A    mov         ebx,dword ptr [ebp-310]
 00414490    dec         ebx
 00414491    test        ebx,ebx
>00414493    jl          00414500
 00414495    inc         ebx
 00414496    xor         edi,edi
 00414498    lea         esi,[ebp-300]
 0041449E    mov         eax,esi
 004144A0    mov         dword ptr [ebp-318],eax
 004144A6    mov         eax,dword ptr [ebp-318]
 004144AC    add         eax,4
 004144AF    push        eax
 004144B0    lea         eax,[edi+1]
 004144B3    push        eax
 004144B4    mov         eax,dword ptr [ebp-308]
 004144BA    push        eax
 004144BB    call        oleaut32.SafeArrayGetLBound
 004144C0    call        VarResultCheck
 004144C5    lea         eax,[ebp-30C]
 004144CB    push        eax
 004144CC    lea         eax,[edi+1]
 004144CF    push        eax
 004144D0    mov         eax,dword ptr [ebp-308]
 004144D6    push        eax
 004144D7    call        oleaut32.SafeArrayGetUBound
 004144DC    call        VarResultCheck
 004144E1    mov         eax,dword ptr [ebp-318]
 004144E7    mov         edx,dword ptr [ebp-30C]
 004144ED    sub         edx,dword ptr [eax+4]
 004144F0    inc         edx
 004144F1    mov         eax,dword ptr [ebp-318]
 004144F7    mov         dword ptr [eax],edx
 004144F9    inc         edi
 004144FA    add         esi,8
 004144FD    dec         ebx
>004144FE    jne         0041449E
 00414500    mov         ebx,dword ptr [ebp-310]
 00414506    dec         ebx
 00414507    test        ebx,ebx
>00414509    jl          00414525
 0041450B    inc         ebx
 0041450C    lea         eax,[ebp-2FC]
 00414512    lea         edx,[ebp-100]
 00414518    mov         ecx,dword ptr [eax]
 0041451A    mov         dword ptr [edx],ecx
 0041451C    add         edx,4
 0041451F    add         eax,8
 00414522    dec         ebx
>00414523    jne         00414518
 00414525    push        ebp
 00414526    mov         ebx,dword ptr [ebp-310]
 0041452C    dec         ebx
 0041452D    mov         eax,ebx
 0041452F    call        InBounds
 00414534    pop         ecx
 00414535    test        al,al
>00414537    je          00414563
 00414539    lea         eax,[ebp-314]
 0041453F    push        eax
 00414540    lea         eax,[ebp-100]
 00414546    push        eax
 00414547    mov         eax,dword ptr [ebp-308]
 0041454D    push        eax
 0041454E    call        oleaut32.SafeArrayPtrOfIndex
 00414553    call        VarResultCheck
 00414558    mov         eax,dword ptr [ebp-314]
 0041455E    call        @VarClear
 00414563    push        ebp
 00414564    mov         eax,ebx
 00414566    call        Increment
 0041456B    pop         ecx
 0041456C    test        al,al
>0041456E    jne         00414525
 00414570    mov         eax,dword ptr [ebp-304]
 00414576    push        eax
 00414577    call        oleaut32.VariantClear
 0041457C    call        VarResultCheck
 00414581    pop         edi
 00414582    pop         esi
 00414583    pop         ebx
 00414584    mov         esp,ebp
 00414586    pop         ebp
 00414587    ret
*}
end;

//00414588
procedure VarClearDeep(var V:TVarData);
begin
{*
 00414588    push        ebx
 00414589    push        esi
 0041458A    push        ecx
 0041458B    mov         ebx,eax
 0041458D    mov         si,word ptr [ebx]
 00414590    cmp         si,14
>00414594    jae         004145A3
 00414596    push        ebx
 00414597    call        oleaut32.VariantClear
 0041459C    call        VarResultCheck
>004145A1    jmp         004145FE
 004145A3    cmp         si,100
>004145A8    jne         004145B9
 004145AA    mov         word ptr [ebx],0
 004145AF    lea         eax,[ebx+8]
 004145B2    call        @LStrClr
>004145B7    jmp         004145FE
 004145B9    cmp         si,101
>004145BE    jne         004145CA
 004145C0    mov         eax,ebx
 004145C2    call        dword ptr ds:[571A3C]
>004145C8    jmp         004145FE
 004145CA    test        si,2000
>004145CF    je          004145DA
 004145D1    mov         eax,ebx
 004145D3    call        VarArrayClear
>004145D8    jmp         004145FE
 004145DA    mov         edx,esp
 004145DC    mov         eax,esi
 004145DE    call        FindCustomVariantType
 004145E3    test        al,al
>004145E5    je          004145F3
 004145E7    mov         edx,ebx
 004145E9    mov         eax,dword ptr [esp]
 004145EC    mov         ecx,dword ptr [eax]
 004145EE    call        dword ptr [ecx+24]
>004145F1    jmp         004145FE
 004145F3    push        ebx
 004145F4    call        oleaut32.VariantClear
 004145F9    call        VarResultCheck
 004145FE    pop         edx
 004145FF    pop         esi
 00414600    pop         ebx
 00414601    ret
*}
end;

//00414604
procedure @VarClear(var V:TVarData);
begin
{*
 00414604    test        word ptr [eax],0BFE8
>00414609    jne         00414611
 0041460B    mov         word ptr [eax],0
 00414610    ret
 00414611    call        VarClearDeep
 00414616    ret
*}
end;

//00414618
procedure @VarClr(var V:TVarData);
begin
{*
 00414618    push        eax
 00414619    call        @VarClear
 0041461E    pop         eax
 0041461F    ret
*}
end;

//00414620
function InBounds(At:Integer):Boolean;
begin
{*
 00414620    push        ebp
 00414621    mov         ebp,esp
 00414623    push        ebx
 00414624    mov         ecx,dword ptr [ebp+8]
 00414627    add         ecx,0FFFFFD00
 0041462D    mov         edx,dword ptr [ecx+eax*8+4]
 00414631    add         edx,dword ptr [ecx+eax*8]
 00414634    mov         ebx,dword ptr [ebp+8]
 00414637    cmp         edx,dword ptr [ebx+eax*4-100]
 0041463E    setg        dl
 00414641    dec         eax
 00414642    test        dl,dl
>00414644    je          0041464A
 00414646    test        eax,eax
>00414648    jge         0041462D
 0041464A    mov         eax,edx
 0041464C    pop         ebx
 0041464D    pop         ebp
 0041464E    ret
*}
end;

//00414650
function Increment(At:Integer):Boolean;
begin
{*
 00414650    push        ebp
 00414651    mov         ebp,esp
 00414653    push        ebx
 00414654    push        esi
 00414655    mov         dl,1
 00414657    mov         ecx,dword ptr [ebp+8]
 0041465A    inc         dword ptr [ecx+eax*4-100]
 00414661    mov         ecx,dword ptr [ebp+8]
 00414664    mov         ecx,dword ptr [ecx+eax*8-2FC]
 0041466B    mov         ebx,ecx
 0041466D    mov         esi,dword ptr [ebp+8]
 00414670    add         ebx,dword ptr [esi+eax*8-300]
 00414677    mov         esi,dword ptr [ebp+8]
 0041467A    cmp         ebx,dword ptr [esi+eax*4-100]
>00414681    jg          004146A5
 00414683    test        eax,eax
>00414685    jne         0041468B
 00414687    xor         edx,edx
>00414689    jmp         004146A5
 0041468B    mov         edx,dword ptr [ebp+8]
 0041468E    mov         edx,dword ptr [ebp+8]
 00414691    mov         dword ptr [edx+eax*4-100],ecx
 00414698    mov         edx,dword ptr [ebp+8]
 0041469B    push        edx
 0041469C    dec         eax
 0041469D    call        Increment
 004146A2    pop         ecx
 004146A3    mov         edx,eax
 004146A5    mov         eax,edx
 004146A7    pop         esi
 004146A8    pop         ebx
 004146A9    pop         ebp
 004146AA    ret
*}
end;

//004146AC
{*procedure sub_004146AC(?:?; ?:?; ?:?);
begin
 004146AC    push        ebp
 004146AD    mov         ebp,esp
 004146AF    add         esp,0FFFFFCDC
 004146B5    push        ebx
 004146B6    push        esi
 004146B7    push        edi
 004146B8    mov         dword ptr [ebp-308],ecx
 004146BE    mov         ebx,edx
 004146C0    mov         dword ptr [ebp-304],eax
 004146C6    test        byte ptr [ebx+1],20
>004146CA    jne         004146D6
 004146CC    mov         eax,80070057
 004146D1    call        VarResultCheck
 004146D6    mov         ax,word ptr [ebx]
 004146D9    mov         edx,eax
 004146DB    and         dx,0FFF
 004146E0    cmp         dx,0C
>004146E4    jne         00414872
 004146EA    test        ah,40
>004146ED    je          004146FC
 004146EF    mov         eax,dword ptr [ebx+8]
 004146F2    mov         eax,dword ptr [eax]
 004146F4    mov         dword ptr [ebp-318],eax
>004146FA    jmp         00414705
 004146FC    mov         eax,dword ptr [ebx+8]
 004146FF    mov         dword ptr [ebp-318],eax
 00414705    mov         eax,dword ptr [ebp-318]
 0041470B    movzx       eax,word ptr [eax]
 0041470E    mov         dword ptr [ebp-310],eax
 00414714    mov         ebx,dword ptr [ebp-310]
 0041471A    dec         ebx
 0041471B    test        ebx,ebx
>0041471D    jl          0041478A
 0041471F    inc         ebx
 00414720    xor         edi,edi
 00414722    lea         esi,[ebp-300]
 00414728    mov         eax,esi
 0041472A    mov         dword ptr [ebp-324],eax
 00414730    mov         eax,dword ptr [ebp-324]
 00414736    add         eax,4
 00414739    push        eax
 0041473A    lea         eax,[edi+1]
 0041473D    push        eax
 0041473E    mov         eax,dword ptr [ebp-318]
 00414744    push        eax
 00414745    call        oleaut32.SafeArrayGetLBound
 0041474A    call        VarResultCheck
 0041474F    lea         eax,[ebp-30C]
 00414755    push        eax
 00414756    lea         eax,[edi+1]
 00414759    push        eax
 0041475A    mov         eax,dword ptr [ebp-318]
 00414760    push        eax
 00414761    call        oleaut32.SafeArrayGetUBound
 00414766    call        VarResultCheck
 0041476B    mov         eax,dword ptr [ebp-324]
 00414771    mov         edx,dword ptr [ebp-30C]
 00414777    sub         edx,dword ptr [eax+4]
 0041477A    inc         edx
 0041477B    mov         eax,dword ptr [ebp-324]
 00414781    mov         dword ptr [eax],edx
 00414783    inc         edi
 00414784    add         esi,8
 00414787    dec         ebx
>00414788    jne         00414728
 0041478A    lea         eax,[ebp-300]
 00414790    push        eax
 00414791    mov         eax,dword ptr [ebp-310]
 00414797    push        eax
 00414798    push        0C
 0041479A    call        oleaut32.SafeArrayCreate
 0041479F    mov         dword ptr [ebp-314],eax
 004147A5    cmp         dword ptr [ebp-314],0
>004147AC    jne         004147B3
 004147AE    call        VarArrayCreateError
 004147B3    mov         eax,dword ptr [ebp-304]
 004147B9    call        @VarClear
 004147BE    mov         eax,dword ptr [ebp-304]
 004147C4    mov         word ptr [eax],200C
 004147C9    mov         eax,dword ptr [ebp-304]
 004147CF    mov         edx,dword ptr [ebp-314]
 004147D5    mov         dword ptr [eax+8],edx
 004147D8    mov         ebx,dword ptr [ebp-310]
 004147DE    dec         ebx
 004147DF    test        ebx,ebx
>004147E1    jl          004147FD
 004147E3    inc         ebx
 004147E4    lea         eax,[ebp-2FC]
 004147EA    lea         edx,[ebp-100]
 004147F0    mov         ecx,dword ptr [eax]
 004147F2    mov         dword ptr [edx],ecx
 004147F4    add         edx,4
 004147F7    add         eax,8
 004147FA    dec         ebx
>004147FB    jne         004147F0
 004147FD    push        ebp
 004147FE    mov         ebx,dword ptr [ebp-310]
 00414804    dec         ebx
 00414805    mov         eax,ebx
 00414807    call        InBounds
 0041480C    pop         ecx
 0041480D    test        al,al
>0041480F    je          00414863
 00414811    lea         eax,[ebp-31C]
 00414817    push        eax
 00414818    lea         eax,[ebp-100]
 0041481E    push        eax
 0041481F    mov         eax,dword ptr [ebp-318]
 00414825    push        eax
 00414826    call        oleaut32.SafeArrayPtrOfIndex
 0041482B    call        VarResultCheck
 00414830    lea         eax,[ebp-320]
 00414836    push        eax
 00414837    lea         eax,[ebp-100]
 0041483D    push        eax
 0041483E    mov         eax,dword ptr [ebp-314]
 00414844    push        eax
 00414845    call        oleaut32.SafeArrayPtrOfIndex
 0041484A    call        VarResultCheck
 0041484F    mov         eax,dword ptr [ebp-31C]
 00414855    mov         edx,eax
 00414857    mov         eax,dword ptr [ebp-320]
 0041485D    call        dword ptr [ebp-308]
 00414863    push        ebp
 00414864    mov         eax,ebx
 00414866    call        Increment
 0041486B    pop         ecx
 0041486C    test        al,al
>0041486E    jne         004147FD
>00414870    jmp         00414884
 00414872    push        ebx
 00414873    mov         eax,dword ptr [ebp-304]
 00414879    push        eax
 0041487A    call        oleaut32.VariantCopy
 0041487F    call        VarResultCheck
 00414884    pop         edi
 00414885    pop         esi
 00414886    pop         ebx
 00414887    mov         esp,ebp
 00414889    pop         ebp
 0041488A    ret
end;*}

//0041488C
procedure VarCopyCopyProc(var Dest:TVarData; const Src:TVarData);
begin
{*
 0041488C    call        @VarCopy
 00414891    ret
*}
end;

//00414894
procedure VarCopyDeep(var Dest:TVarData; const Source:TVarData);
begin
{*
 00414894    push        ebx
 00414895    push        esi
 00414896    push        edi
 00414897    push        ecx
 00414898    mov         esi,edx
 0041489A    mov         ebx,eax
 0041489C    test        word ptr [ebx],0BFE8
>004148A1    je          004148AA
 004148A3    mov         eax,ebx
 004148A5    call        VarClearDeep
 004148AA    mov         di,word ptr [esi]
 004148AD    cmp         di,14
>004148B1    jae         004148C1
 004148B3    push        esi
 004148B4    push        ebx
 004148B5    call        oleaut32.VariantCopy
 004148BA    call        VarResultCheck
>004148BF    jmp         0041493A
 004148C1    cmp         di,100
>004148C6    jne         004148DF
 004148C8    mov         word ptr [ebx],100
 004148CD    xor         eax,eax
 004148CF    mov         dword ptr [ebx+8],eax
 004148D2    lea         eax,[ebx+8]
 004148D5    mov         edx,dword ptr [esi+8]
 004148D8    call        @LStrAsg
>004148DD    jmp         0041493A
 004148DF    cmp         di,101
>004148E4    jne         004148F9
 004148E6    mov         word ptr [ebx],di
 004148E9    mov         eax,dword ptr [esi+8]
 004148EC    mov         dword ptr [ebx+8],eax
 004148EF    mov         eax,ebx
 004148F1    call        dword ptr ds:[571A44]
>004148F7    jmp         0041493A
 004148F9    test        di,2000
>004148FE    je          00414910
 00414900    mov         ecx,41488C;VarCopyCopyProc
 00414905    mov         edx,esi
 00414907    mov         eax,ebx
 00414909    call        004146AC
>0041490E    jmp         0041493A
 00414910    mov         edx,esp
 00414912    mov         eax,edi
 00414914    call        FindCustomVariantType
 00414919    test        al,al
>0041491B    je          0041492E
 0041491D    push        0
 0041491F    mov         ecx,esi
 00414921    mov         edx,ebx
 00414923    mov         eax,dword ptr [esp+4]
 00414927    mov         ebx,dword ptr [eax]
 00414929    call        dword ptr [ebx+28]
>0041492C    jmp         0041493A
 0041492E    push        esi
 0041492F    push        ebx
 00414930    call        oleaut32.VariantCopy
 00414935    call        VarResultCheck
 0041493A    pop         edx
 0041493B    pop         edi
 0041493C    pop         esi
 0041493D    pop         ebx
 0041493E    ret
*}
end;

//00414940
procedure @VarCopy(var Dest:TVarData; const Source:TVarData);
begin
{*
 00414940    push        ebx
 00414941    push        esi
 00414942    mov         ebx,edx
 00414944    mov         esi,eax
 00414946    cmp         esi,ebx
>00414948    je          00414980
 0041494A    test        word ptr [ebx],0BFE8
>0041494F    jne         00414977
 00414951    test        word ptr [esi],0BFE8
>00414956    je          0041495F
 00414958    mov         eax,esi
 0041495A    call        VarClearDeep
 0041495F    mov         eax,dword ptr [ebx]
 00414961    mov         dword ptr [esi],eax
 00414963    mov         eax,dword ptr [ebx+4]
 00414966    mov         dword ptr [esi+4],eax
 00414969    mov         eax,dword ptr [ebx+8]
 0041496C    mov         dword ptr [esi+8],eax
 0041496F    mov         eax,dword ptr [ebx+0C]
 00414972    mov         dword ptr [esi+0C],eax
>00414975    jmp         00414980
 00414977    mov         edx,ebx
 00414979    mov         eax,esi
 0041497B    call        VarCopyDeep
 00414980    pop         esi
 00414981    pop         ebx
 00414982    ret
*}
end;

//004149AC
procedure sub_004149AC;
begin
{*
>004149AC    jmp         00414984
*}
end;

//004149B4
procedure VarCastAsAny(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);
begin
{*
 004149B4    push        ebp
 004149B5    mov         ebp,esp
 004149B7    add         esp,0FFFFFFF0
 004149BA    push        ebx
 004149BB    push        esi
 004149BC    push        edi
 004149BD    mov         edi,ecx
 004149BF    mov         esi,edx
 004149C1    mov         ebx,eax
 004149C3    lea         eax,[ebp-10]
 004149C6    push        eax
 004149C7    call        oleaut32.VariantInit
 004149CC    xor         eax,eax
 004149CE    push        ebp
 004149CF    push        414A10
 004149D4    push        dword ptr fs:[eax]
 004149D7    mov         dword ptr fs:[eax],esp
 004149DA    mov         edx,esi
 004149DC    lea         eax,[ebp-10]
 004149DF    call        @VarCopy
 004149E4    lea         eax,[ebp-10]
 004149E7    call        dword ptr ds:[571A40]
 004149ED    movzx       ecx,di
 004149F0    lea         edx,[ebp-10]
 004149F3    mov         eax,ebx
 004149F5    call        @VarCast
 004149FA    xor         eax,eax
 004149FC    pop         edx
 004149FD    pop         ecx
 004149FE    pop         ecx
 004149FF    mov         dword ptr fs:[eax],edx
 00414A02    push        414A17
 00414A07    lea         eax,[ebp-10]
 00414A0A    call        @VarClear
 00414A0F    ret
>00414A10    jmp         @HandleFinally
>00414A15    jmp         00414A07
 00414A17    pop         edi
 00414A18    pop         esi
 00414A19    pop         ebx
 00414A1A    mov         esp,ebp
 00414A1C    pop         ebp
 00414A1D    ret
*}
end;

//00414A20
procedure VarCastAsOleStr(var Dest:TVarData; const Source:TVarData);
begin
{*
 00414A20    push        ebp
 00414A21    mov         ebp,esp
 00414A23    push        0
 00414A25    push        ebx
 00414A26    mov         ebx,eax
 00414A28    xor         eax,eax
 00414A2A    push        ebp
 00414A2B    push        414A5E
 00414A30    push        dword ptr fs:[eax]
 00414A33    mov         dword ptr fs:[eax],esp
 00414A36    lea         eax,[ebp-4]
 00414A39    call        00418080
 00414A3E    mov         eax,ebx
 00414A40    mov         edx,dword ptr [ebp-4]
 00414A43    call        @VarFromWStr
 00414A48    xor         eax,eax
 00414A4A    pop         edx
 00414A4B    pop         ecx
 00414A4C    pop         ecx
 00414A4D    mov         dword ptr fs:[eax],edx
 00414A50    push        414A65
 00414A55    lea         eax,[ebp-4]
 00414A58    call        @WStrClr
 00414A5D    ret
>00414A5E    jmp         @HandleFinally
>00414A63    jmp         00414A55
 00414A65    pop         ebx
 00414A66    pop         ecx
 00414A67    pop         ebp
 00414A68    ret
*}
end;

//00414A6C
procedure VarCastAsString(var Dest:TVarData; const Source:TVarData);
begin
{*
 00414A6C    push        ebp
 00414A6D    mov         ebp,esp
 00414A6F    push        0
 00414A71    push        ebx
 00414A72    mov         ebx,eax
 00414A74    xor         eax,eax
 00414A76    push        ebp
 00414A77    push        414AAA
 00414A7C    push        dword ptr fs:[eax]
 00414A7F    mov         dword ptr fs:[eax],esp
 00414A82    lea         eax,[ebp-4]
 00414A85    call        00417960
 00414A8A    mov         eax,ebx
 00414A8C    mov         edx,dword ptr [ebp-4]
 00414A8F    call        @VarFromLStr
 00414A94    xor         eax,eax
 00414A96    pop         edx
 00414A97    pop         ecx
 00414A98    pop         ecx
 00414A99    mov         dword ptr fs:[eax],edx
 00414A9C    push        414AB1
 00414AA1    lea         eax,[ebp-4]
 00414AA4    call        @LStrClr
 00414AA9    ret
>00414AAA    jmp         @HandleFinally
>00414AAF    jmp         00414AA1
 00414AB1    pop         ebx
 00414AB2    pop         ecx
 00414AB3    pop         ebp
 00414AB4    ret
*}
end;

//00414AB8
procedure VarCastAsDispatch(var Dest:TVarData; const Source:TVarData);
begin
{*
 00414AB8    push        ebp
 00414AB9    mov         ebp,esp
 00414ABB    push        0
 00414ABD    push        ebx
 00414ABE    mov         ebx,eax
 00414AC0    xor         eax,eax
 00414AC2    push        ebp
 00414AC3    push        414AF6
 00414AC8    push        dword ptr fs:[eax]
 00414ACB    mov         dword ptr fs:[eax],esp
 00414ACE    lea         eax,[ebp-4]
 00414AD1    call        @VarToDisp
 00414AD6    mov         eax,ebx
 00414AD8    mov         edx,dword ptr [ebp-4]
 00414ADB    call        @VarFromDisp
 00414AE0    xor         eax,eax
 00414AE2    pop         edx
 00414AE3    pop         ecx
 00414AE4    pop         ecx
 00414AE5    mov         dword ptr fs:[eax],edx
 00414AE8    push        414AFD
 00414AED    lea         eax,[ebp-4]
 00414AF0    call        @IntfClear
 00414AF5    ret
>00414AF6    jmp         @HandleFinally
>00414AFB    jmp         00414AED
 00414AFD    pop         ebx
 00414AFE    pop         ecx
 00414AFF    pop         ebp
 00414B00    ret
*}
end;

//00414B04
procedure VarCastAsInterface(var Dest:TVarData; const Source:TVarData);
begin
{*
 00414B04    push        ebp
 00414B05    mov         ebp,esp
 00414B07    push        0
 00414B09    push        ebx
 00414B0A    mov         ebx,eax
 00414B0C    xor         eax,eax
 00414B0E    push        ebp
 00414B0F    push        414B42
 00414B14    push        dword ptr fs:[eax]
 00414B17    mov         dword ptr fs:[eax],esp
 00414B1A    lea         eax,[ebp-4]
 00414B1D    call        @VarToIntf
 00414B22    mov         eax,ebx
 00414B24    mov         edx,dword ptr [ebp-4]
 00414B27    call        @VarFromIntf
 00414B2C    xor         eax,eax
 00414B2E    pop         edx
 00414B2F    pop         ecx
 00414B30    pop         ecx
 00414B31    mov         dword ptr fs:[eax],edx
 00414B34    push        414B49
 00414B39    lea         eax,[ebp-4]
 00414B3C    call        @IntfClear
 00414B41    ret
>00414B42    jmp         @HandleFinally
>00414B47    jmp         00414B39
 00414B49    pop         ebx
 00414B4A    pop         ecx
 00414B4B    pop         ebp
 00414B4C    ret
*}
end;

//00414B50
procedure VarCastViaOS(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);
begin
{*
 00414B50    push        ebx
 00414B51    push        esi
 00414B52    push        edi
 00414B53    mov         esi,ecx
 00414B55    mov         ebx,edx
 00414B57    mov         edi,eax
 00414B59    mov         ax,word ptr [ebx]
 00414B5C    mov         edx,eax
 00414B5E    and         dx,0FFF
 00414B63    cmp         dx,14
>00414B67    jb          00414B96
 00414B69    mov         edx,ebx
 00414B6B    mov         eax,edi
 00414B6D    mov         ecx,8
 00414B72    call        @VarCast
 00414B77    push        esi
 00414B78    push        0
 00414B7A    push        400
 00414B7F    push        edi
 00414B80    push        edi
 00414B81    mov         eax,[0056E4D8];^gvar_005719CC
 00414B86    mov         eax,dword ptr [eax]
 00414B88    call        eax
 00414B8A    mov         dx,word ptr [ebx]
 00414B8D    mov         ecx,esi
 00414B8F    call        VarResultCheck
>00414B94    jmp         00414BC9
 00414B96    mov         edx,esi
 00414B98    and         dx,0FFF
 00414B9D    cmp         dx,14
>00414BA1    jae         00414BC2
 00414BA3    push        esi
 00414BA4    push        0
 00414BA6    push        400
 00414BAB    push        ebx
 00414BAC    push        edi
 00414BAD    mov         eax,[0056E4D8];^gvar_005719CC
 00414BB2    mov         eax,dword ptr [eax]
 00414BB4    call        eax
 00414BB6    mov         dx,word ptr [ebx]
 00414BB9    mov         ecx,esi
 00414BBB    call        VarResultCheck
>00414BC0    jmp         00414BC9
 00414BC2    mov         edx,esi
 00414BC4    call        VarCastError
 00414BC9    pop         edi
 00414BCA    pop         esi
 00414BCB    pop         ebx
 00414BCC    ret
*}
end;

//00414BD0
procedure VarCastRare(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);
begin
{*
 00414BD0    push        ebx
 00414BD1    push        esi
 00414BD2    push        edi
 00414BD3    push        ebp
 00414BD4    push        ecx
 00414BD5    mov         esi,ecx
 00414BD7    mov         ebx,edx
 00414BD9    mov         edi,eax
 00414BDB    mov         bp,word ptr [ebx]
 00414BDE    cmp         bp,101
>00414BE3    jne         00414BF2
 00414BE5    mov         edx,ebx
 00414BE7    mov         eax,edi
 00414BE9    mov         ecx,esi
 00414BEB    call        VarCastAsAny
>00414BF0    jmp         00414C35
 00414BF2    mov         edx,esp
 00414BF4    mov         eax,ebp
 00414BF6    call        FindCustomVariantType
 00414BFB    test        al,al
>00414BFD    je          00414C0F
 00414BFF    push        esi
 00414C00    mov         ecx,ebx
 00414C02    mov         edx,edi
 00414C04    mov         eax,dword ptr [esp+4]
 00414C08    mov         ebx,dword ptr [eax]
 00414C0A    call        dword ptr [ebx+1C]
>00414C0D    jmp         00414C35
 00414C0F    mov         edx,esp
 00414C11    mov         eax,esi
 00414C13    call        FindCustomVariantType
 00414C18    test        al,al
>00414C1A    je          00414C2A
 00414C1C    mov         ecx,ebx
 00414C1E    mov         edx,edi
 00414C20    mov         eax,dword ptr [esp]
 00414C23    mov         ebx,dword ptr [eax]
 00414C25    call        dword ptr [ebx+18]
>00414C28    jmp         00414C35
 00414C2A    mov         edx,ebx
 00414C2C    mov         eax,edi
 00414C2E    mov         ecx,esi
 00414C30    call        VarCastViaOS
 00414C35    pop         edx
 00414C36    pop         ebp
 00414C37    pop         edi
 00414C38    pop         esi
 00414C39    pop         ebx
 00414C3A    ret
*}
end;

//00414C3C
procedure @VarCast(var Dest:TVarData; const Source:TVarData; AVarType:Integer);
begin
{*
 00414C3C    push        ebx
 00414C3D    push        esi
 00414C3E    mov         ebx,edx
 00414C40    mov         esi,eax
 00414C42    mov         ax,word ptr [ebx]
 00414C45    movzx       edx,ax
 00414C48    cmp         ecx,edx
>00414C4A    jne         00414C58
 00414C4C    mov         edx,ebx
 00414C4E    mov         eax,esi
 00414C50    call        @VarCopy
 00414C55    pop         esi
 00414C56    pop         ebx
 00414C57    ret
 00414C58    cmp         ax,400C
>00414C5C    jne         00414C6F
 00414C5E    mov         eax,dword ptr [ebx+8]
 00414C61    mov         edx,eax
 00414C63    mov         eax,esi
 00414C65    call        @VarCast
>00414C6A    jmp         00414E62
 00414C6F    mov         edx,ecx
 00414C71    cmp         edx,14
>00414C74    ja          00414E34
 00414C7A    jmp         dword ptr [edx*4+414C81]
 00414C7A    dd          00414CD5
 00414C7A    dd          00414D00
 00414C7A    dd          00414D0C
 00414C7A    dd          00414D21
 00414C7A    dd          00414D36
 00414C7A    dd          00414D50
 00414C7A    dd          00414D6A
 00414C7A    dd          00414D84
 00414C7A    dd          00414D9E
 00414C7A    dd          00414E1E
 00414C7A    dd          00414E34
 00414C7A    dd          00414DAC
 00414C7A    dd          00414E34
 00414C7A    dd          00414E29
 00414C7A    dd          00414E34
 00414C7A    dd          00414E34
 00414C7A    dd          00414DC1
 00414C7A    dd          00414DD6
 00414C7A    dd          00414DE8
 00414C7A    dd          00414DFA
 00414C7A    dd          00414E0C
 00414CD5    cmp         word ptr [ebx],1
>00414CD9    jne         00414CF4
 00414CDB    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00414CE2    je          00414CF4
 00414CE4    xor         edx,edx
 00414CE6    mov         ax,1
 00414CEA    call        VarCastError
>00414CEF    jmp         00414E62
 00414CF4    mov         eax,esi
 00414CF6    call        @VarClear
>00414CFB    jmp         00414E62
 00414D00    mov         eax,esi
 00414D02    call        @VarNull
>00414D07    jmp         00414E62
 00414D0C    mov         eax,ebx
 00414D0E    call        @VarToSmallInt
 00414D13    mov         edx,eax
 00414D15    mov         eax,esi
 00414D17    call        @VarFromSmallInt
>00414D1C    jmp         00414E62
 00414D21    mov         eax,ebx
 00414D23    call        @VarToInteger
 00414D28    mov         edx,eax
 00414D2A    mov         eax,esi
 00414D2C    call        @OleVarFromInt
>00414D31    jmp         00414E62
 00414D36    mov         eax,ebx
 00414D38    call        @VarToSingle
 00414D3D    add         esp,0FFFFFFFC
 00414D40    fstp        dword ptr [esp]
 00414D43    wait
 00414D44    mov         eax,esi
 00414D46    call        @VarFromSingle
>00414D4B    jmp         00414E62
 00414D50    mov         eax,ebx
 00414D52    call        004165D4
 00414D57    add         esp,0FFFFFFF8
 00414D5A    fstp        qword ptr [esp]
 00414D5D    wait
 00414D5E    mov         eax,esi
 00414D60    call        @VarFromDouble
>00414D65    jmp         00414E62
 00414D6A    mov         eax,ebx
 00414D6C    call        @VarToCurrency
 00414D71    add         esp,0FFFFFFF8
 00414D74    fistp       qword ptr [esp]
 00414D77    wait
 00414D78    mov         eax,esi
 00414D7A    call        @VarFromCurrency
>00414D7F    jmp         00414E62
 00414D84    mov         eax,ebx
 00414D86    call        00416D44
 00414D8B    add         esp,0FFFFFFF8
 00414D8E    fstp        qword ptr [esp]
 00414D91    wait
 00414D92    mov         eax,esi
 00414D94    call        @VarFromDate
>00414D99    jmp         00414E62
 00414D9E    mov         edx,ebx
 00414DA0    mov         eax,esi
 00414DA2    call        VarCastAsOleStr
>00414DA7    jmp         00414E62
 00414DAC    mov         eax,ebx
 00414DAE    call        @VarToBoolean
 00414DB3    mov         edx,eax
 00414DB5    mov         eax,esi
 00414DB7    call        @VarFromBool
>00414DBC    jmp         00414E62
 00414DC1    mov         eax,ebx
 00414DC3    call        @VarToShortInt
 00414DC8    mov         edx,eax
 00414DCA    mov         eax,esi
 00414DCC    call        @VarFromShortInt
>00414DD1    jmp         00414E62
 00414DD6    mov         eax,ebx
 00414DD8    call        @VarToByte
 00414DDD    mov         edx,eax
 00414DDF    mov         eax,esi
 00414DE1    call        @VarFromByte
>00414DE6    jmp         00414E62
 00414DE8    mov         eax,ebx
 00414DEA    call        @VarToWord
 00414DEF    mov         edx,eax
 00414DF1    mov         eax,esi
 00414DF3    call        @VarFromWord
>00414DF8    jmp         00414E62
 00414DFA    mov         eax,ebx
 00414DFC    call        @VarToLongWord
 00414E01    mov         edx,eax
 00414E03    mov         eax,esi
 00414E05    call        @VarFromLongWord
>00414E0A    jmp         00414E62
 00414E0C    mov         eax,ebx
 00414E0E    call        @VarToInt64
 00414E13    push        edx
 00414E14    push        eax
 00414E15    mov         eax,esi
 00414E17    call        @VarFromInt64
>00414E1C    jmp         00414E62
 00414E1E    mov         edx,ebx
 00414E20    mov         eax,esi
 00414E22    call        VarCastAsDispatch
>00414E27    jmp         00414E62
 00414E29    mov         edx,ebx
 00414E2B    mov         eax,esi
 00414E2D    call        VarCastAsInterface
>00414E32    jmp         00414E62
 00414E34    mov         edx,ecx
 00414E36    sub         edx,100
>00414E3C    je          00414E43
 00414E3E    dec         edx
>00414E3F    je          00414E4E
>00414E41    jmp         00414E59
 00414E43    mov         edx,ebx
 00414E45    mov         eax,esi
 00414E47    call        VarCastAsString
>00414E4C    jmp         00414E62
 00414E4E    mov         dx,101
 00414E52    call        VarCastError
>00414E57    jmp         00414E62
 00414E59    mov         edx,ebx
 00414E5B    mov         eax,esi
 00414E5D    call        VarCastRare
 00414E62    pop         esi
 00414E63    pop         ebx
 00414E64    ret
*}
end;

//00414E68
function VarToIntAsString(const V:TVarData):Integer;
begin
{*
 00414E68    push        ebp
 00414E69    mov         ebp,esp
 00414E6B    push        0
 00414E6D    push        0
 00414E6F    push        0
 00414E71    push        ebx
 00414E72    mov         ebx,eax
 00414E74    xor         eax,eax
 00414E76    push        ebp
 00414E77    push        414F0B
 00414E7C    push        dword ptr fs:[eax]
 00414E7F    mov         dword ptr fs:[eax],esp
 00414E82    mov         edx,ebx
 00414E84    lea         eax,[ebp-8]
 00414E87    call        00418080
 00414E8C    lea         eax,[ebp-4]
 00414E8F    push        eax
 00414E90    push        0
 00414E92    push        400
 00414E97    mov         eax,dword ptr [ebp-8]
 00414E9A    push        eax
 00414E9B    mov         eax,[0056E5D0];^gvar_00571A00
 00414EA0    mov         eax,dword ptr [eax]
 00414EA2    call        eax
 00414EA4    mov         edx,eax
 00414EA6    sub         edx,80020005
>00414EAC    je          00414EB8
 00414EAE    sub         edx,7FFDFFFB
>00414EB4    jne         00414EE1
>00414EB6    jmp         00414EED
 00414EB8    lea         eax,[ebp-0C]
 00414EBB    mov         edx,dword ptr [ebp-8]
 00414EBE    call        @LStrFromWStr
 00414EC3    mov         eax,dword ptr [ebp-0C]
 00414EC6    lea         edx,[ebp-4]
 00414EC9    call        0040C4D8
 00414ECE    test        al,al
>00414ED0    jne         00414EED
 00414ED2    mov         eax,ebx
 00414ED4    call        @VarToBoolean
 00414ED9    and         eax,7F
 00414EDC    mov         dword ptr [ebp-4],eax
>00414EDF    jmp         00414EED
 00414EE1    mov         dx,word ptr [ebx]
 00414EE4    mov         cx,3
 00414EE8    call        VarResultCheck
 00414EED    xor         eax,eax
 00414EEF    pop         edx
 00414EF0    pop         ecx
 00414EF1    pop         ecx
 00414EF2    mov         dword ptr fs:[eax],edx
 00414EF5    push        414F12
 00414EFA    lea         eax,[ebp-0C]
 00414EFD    call        @LStrClr
 00414F02    lea         eax,[ebp-8]
 00414F05    call        @WStrClr
 00414F0A    ret
>00414F0B    jmp         @HandleFinally
>00414F10    jmp         00414EFA
 00414F12    mov         eax,dword ptr [ebp-4]
 00414F15    pop         ebx
 00414F16    mov         esp,ebp
 00414F18    pop         ebp
 00414F19    ret
*}
end;

//00414F1C
function VarToIntViaOS(const V:TVarData):Integer;
begin
{*
 00414F1C    push        ebx
 00414F1D    add         esp,0FFFFFFF0
 00414F20    mov         ebx,eax
 00414F22    push        esp
 00414F23    call        oleaut32.VariantInit
 00414F28    push        3
 00414F2A    push        0
 00414F2C    push        400
 00414F31    push        ebx
 00414F32    lea         eax,[esp+10]
 00414F36    push        eax
 00414F37    mov         eax,[0056E4D8];^gvar_005719CC
 00414F3C    mov         eax,dword ptr [eax]
 00414F3E    call        eax
 00414F40    mov         dx,word ptr [ebx]
 00414F43    mov         cx,3
 00414F47    call        VarResultCheck
 00414F4C    mov         eax,dword ptr [esp+8]
 00414F50    add         esp,10
 00414F53    pop         ebx
 00414F54    ret
*}
end;

//00414F58
function VarToIntAny(const V:TVarData):Integer;
begin
{*
 00414F58    push        ebp
 00414F59    mov         ebp,esp
 00414F5B    add         esp,0FFFFFFEC
 00414F5E    push        ebx
 00414F5F    mov         ebx,eax
 00414F61    lea         eax,[ebp-14]
 00414F64    push        eax
 00414F65    call        oleaut32.VariantInit
 00414F6A    xor         eax,eax
 00414F6C    push        ebp
 00414F6D    push        414FAC
 00414F72    push        dword ptr fs:[eax]
 00414F75    mov         dword ptr fs:[eax],esp
 00414F78    mov         edx,ebx
 00414F7A    lea         eax,[ebp-14]
 00414F7D    call        @VarCopy
 00414F82    lea         eax,[ebp-14]
 00414F85    call        dword ptr ds:[571A40]
 00414F8B    lea         eax,[ebp-14]
 00414F8E    call        @VarToInteger
 00414F93    mov         dword ptr [ebp-4],eax
 00414F96    xor         eax,eax
 00414F98    pop         edx
 00414F99    pop         ecx
 00414F9A    pop         ecx
 00414F9B    mov         dword ptr fs:[eax],edx
 00414F9E    push        414FB3
 00414FA3    lea         eax,[ebp-14]
 00414FA6    call        @VarClear
 00414FAB    ret
>00414FAC    jmp         @HandleFinally
>00414FB1    jmp         00414FA3
 00414FB3    mov         eax,dword ptr [ebp-4]
 00414FB6    pop         ebx
 00414FB7    mov         esp,ebp
 00414FB9    pop         ebp
 00414FBA    ret
*}
end;

//00414FBC
function VarToIntCustom(const V:TVarData; var AValue:Integer):Boolean;
begin
{*
 00414FBC    push        ebx
 00414FBD    push        esi
 00414FBE    push        edi
 00414FBF    add         esp,0FFFFFFEC
 00414FC2    mov         edi,edx
 00414FC4    mov         esi,eax
 00414FC6    mov         edx,esp
 00414FC8    mov         ax,word ptr [esi]
 00414FCB    call        FindCustomVariantType
 00414FD0    mov         ebx,eax
 00414FD2    test        bl,bl
>00414FD4    je          00414FF7
 00414FD6    lea         eax,[esp+4]
 00414FDA    push        eax
 00414FDB    call        oleaut32.VariantInit
 00414FE0    push        3
 00414FE2    mov         ecx,esi
 00414FE4    lea         edx,[esp+8]
 00414FE8    mov         eax,dword ptr [esp+4]
 00414FEC    mov         esi,dword ptr [eax]
 00414FEE    call        dword ptr [esi+1C]
 00414FF1    mov         eax,dword ptr [esp+0C]
 00414FF5    mov         dword ptr [edi],eax
 00414FF7    mov         eax,ebx
 00414FF9    add         esp,14
 00414FFC    pop         edi
 00414FFD    pop         esi
 00414FFE    pop         ebx
 00414FFF    ret
*}
end;

//00415000
function @VarToInteger(const V:TVarData):Integer;
begin
{*
 00415000    push        ebp
 00415001    mov         ebp,esp
 00415003    add         esp,0FFFFFFF8
 00415006    push        ebx
 00415007    push        esi
 00415008    push        edi
 00415009    mov         dword ptr [ebp-4],eax
 0041500C    xor         edx,edx
 0041500E    push        ebp
 0041500F    push        415421
 00415014    push        dword ptr fs:[edx]
 00415017    mov         dword ptr fs:[edx],esp
 0041501A    mov         eax,dword ptr [ebp-4]
 0041501D    mov         ax,word ptr [eax]
 00415020    movzx       edx,ax
 00415023    cmp         edx,14
>00415026    ja          004151FD
 0041502C    jmp         dword ptr [edx*4+415033]
 0041502C    dd          00415087
 0041502C    dd          00415091
 0041502C    dd          004150B1
 0041502C    dd          004150C0
 0041502C    dd          004150CE
 0041502C    dd          004150EF
 0041502C    dd          00415110
 0041502C    dd          00415137
 0041502C    dd          00415158
 0041502C    dd          004151ED
 0041502C    dd          004151FD
 0041502C    dd          00415168
 0041502C    dd          004151DA
 0041502C    dd          004151ED
 0041502C    dd          004151FD
 0041502C    dd          004151FD
 0041502C    dd          00415177
 0041502C    dd          00415186
 0041502C    dd          00415195
 0041502C    dd          004151A4
 0041502C    dd          004151BB
 00415087    xor         eax,eax
 00415089    mov         dword ptr [ebp-8],eax
>0041508C    jmp         00415417
 00415091    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00415098    je          004150A7
 0041509A    mov         dx,3
 0041509E    mov         ax,1
 004150A2    call        VarCastError
 004150A7    xor         eax,eax
 004150A9    mov         dword ptr [ebp-8],eax
>004150AC    jmp         00415417
 004150B1    mov         eax,dword ptr [ebp-4]
 004150B4    movsx       eax,word ptr [eax+8]
 004150B8    mov         dword ptr [ebp-8],eax
>004150BB    jmp         00415417
 004150C0    mov         eax,dword ptr [ebp-4]
 004150C3    mov         eax,dword ptr [eax+8]
 004150C6    mov         dword ptr [ebp-8],eax
>004150C9    jmp         00415417
 004150CE    mov         eax,dword ptr [ebp-4]
 004150D1    fld         dword ptr [eax+8]
 004150D4    call        @ROUND
 004150D9    push        eax
 004150DA    sar         eax,1F
 004150DD    cmp         eax,edx
 004150DF    pop         eax
>004150E0    je          004150E7
 004150E2    call        @BoundErr
 004150E7    mov         dword ptr [ebp-8],eax
>004150EA    jmp         00415417
 004150EF    mov         eax,dword ptr [ebp-4]
 004150F2    fld         qword ptr [eax+8]
 004150F5    call        @ROUND
 004150FA    push        eax
 004150FB    sar         eax,1F
 004150FE    cmp         eax,edx
 00415100    pop         eax
>00415101    je          00415108
 00415103    call        @BoundErr
 00415108    mov         dword ptr [ebp-8],eax
>0041510B    jmp         00415417
 00415110    mov         eax,dword ptr [ebp-4]
 00415113    fild        qword ptr [eax+8]
 00415116    fdiv        dword ptr ds:[41544C]
 0041511C    call        @ROUND
 00415121    push        eax
 00415122    sar         eax,1F
 00415125    cmp         eax,edx
 00415127    pop         eax
>00415128    je          0041512F
 0041512A    call        @BoundErr
 0041512F    mov         dword ptr [ebp-8],eax
>00415132    jmp         00415417
 00415137    mov         eax,dword ptr [ebp-4]
 0041513A    fld         qword ptr [eax+8]
 0041513D    call        @ROUND
 00415142    push        eax
 00415143    sar         eax,1F
 00415146    cmp         eax,edx
 00415148    pop         eax
>00415149    je          00415150
 0041514B    call        @BoundErr
 00415150    mov         dword ptr [ebp-8],eax
>00415153    jmp         00415417
 00415158    mov         eax,dword ptr [ebp-4]
 0041515B    call        VarToIntAsString
 00415160    mov         dword ptr [ebp-8],eax
>00415163    jmp         00415417
 00415168    mov         eax,dword ptr [ebp-4]
 0041516B    movsx       eax,word ptr [eax+8]
 0041516F    mov         dword ptr [ebp-8],eax
>00415172    jmp         00415417
 00415177    mov         eax,dword ptr [ebp-4]
 0041517A    movsx       eax,byte ptr [eax+8]
 0041517E    mov         dword ptr [ebp-8],eax
>00415181    jmp         00415417
 00415186    mov         eax,dword ptr [ebp-4]
 00415189    movzx       eax,byte ptr [eax+8]
 0041518D    mov         dword ptr [ebp-8],eax
>00415190    jmp         00415417
 00415195    mov         eax,dword ptr [ebp-4]
 00415198    movzx       eax,word ptr [eax+8]
 0041519C    mov         dword ptr [ebp-8],eax
>0041519F    jmp         00415417
 004151A4    mov         eax,dword ptr [ebp-4]
 004151A7    mov         eax,dword ptr [eax+8]
 004151AA    test        eax,eax
>004151AC    jns         004151B3
 004151AE    call        @BoundErr
 004151B3    mov         dword ptr [ebp-8],eax
>004151B6    jmp         00415417
 004151BB    mov         eax,dword ptr [ebp-4]
 004151BE    mov         edx,dword ptr [eax+0C]
 004151C1    mov         eax,dword ptr [eax+8]
 004151C4    push        eax
 004151C5    sar         eax,1F
 004151C8    cmp         eax,edx
 004151CA    pop         eax
>004151CB    je          004151D2
 004151CD    call        @BoundErr
 004151D2    mov         dword ptr [ebp-8],eax
>004151D5    jmp         00415417
 004151DA    mov         eax,dword ptr [ebp-4]
 004151DD    mov         eax,dword ptr [eax+8]
 004151E0    call        @VarToInteger
 004151E5    mov         dword ptr [ebp-8],eax
>004151E8    jmp         00415417
 004151ED    mov         eax,dword ptr [ebp-4]
 004151F0    call        VarToIntViaOS
 004151F5    mov         dword ptr [ebp-8],eax
>004151F8    jmp         00415417
 004151FD    mov         edx,dword ptr [ebp-4]
 00415200    mov         edx,eax
 00415202    sub         dx,100
>00415207    je          00415210
 00415209    dec         dx
>0041520C    je          00415220
>0041520E    jmp         00415230
 00415210    mov         eax,dword ptr [ebp-4]
 00415213    call        VarToIntAsString
 00415218    mov         dword ptr [ebp-8],eax
>0041521B    jmp         00415417
 00415220    mov         eax,dword ptr [ebp-4]
 00415223    call        VarToIntAny
 00415228    mov         dword ptr [ebp-8],eax
>0041522B    jmp         00415417
 00415230    mov         edx,dword ptr [ebp-4]
 00415233    test        ah,40
>00415236    je          004153FD
 0041523C    mov         edx,dword ptr [ebp-4]
 0041523F    movzx       eax,ax
 00415242    and         eax,0FFFFBFFF
 00415247    cmp         eax,14
>0041524A    ja          004153F0
 00415250    jmp         dword ptr [eax*4+415257]
 00415250    dd          004153F0
 00415250    dd          004153F0
 00415250    dd          004152AB
 00415250    dd          004152BC
 00415250    dd          004152CC
 00415250    dd          004152EF
 00415250    dd          00415312
 00415250    dd          0041533B
 00415250    dd          0041535E
 00415250    dd          004153F0
 00415250    dd          004153F0
 00415250    dd          0041536E
 00415250    dd          004153E0
 00415250    dd          004153F0
 00415250    dd          004153F0
 00415250    dd          004153F0
 00415250    dd          0041537F
 00415250    dd          00415390
 00415250    dd          0041539E
 00415250    dd          004153AC
 00415250    dd          004153C2
 004152AB    mov         eax,dword ptr [ebp-4]
 004152AE    mov         eax,dword ptr [eax+8]
 004152B1    movsx       eax,word ptr [eax]
 004152B4    mov         dword ptr [ebp-8],eax
>004152B7    jmp         00415417
 004152BC    mov         eax,dword ptr [ebp-4]
 004152BF    mov         eax,dword ptr [eax+8]
 004152C2    mov         eax,dword ptr [eax]
 004152C4    mov         dword ptr [ebp-8],eax
>004152C7    jmp         00415417
 004152CC    mov         eax,dword ptr [ebp-4]
 004152CF    mov         eax,dword ptr [eax+8]
 004152D2    fld         dword ptr [eax]
 004152D4    call        @ROUND
 004152D9    push        eax
 004152DA    sar         eax,1F
 004152DD    cmp         eax,edx
 004152DF    pop         eax
>004152E0    je          004152E7
 004152E2    call        @BoundErr
 004152E7    mov         dword ptr [ebp-8],eax
>004152EA    jmp         00415417
 004152EF    mov         eax,dword ptr [ebp-4]
 004152F2    mov         eax,dword ptr [eax+8]
 004152F5    fld         qword ptr [eax]
 004152F7    call        @ROUND
 004152FC    push        eax
 004152FD    sar         eax,1F
 00415300    cmp         eax,edx
 00415302    pop         eax
>00415303    je          0041530A
 00415305    call        @BoundErr
 0041530A    mov         dword ptr [ebp-8],eax
>0041530D    jmp         00415417
 00415312    mov         eax,dword ptr [ebp-4]
 00415315    mov         eax,dword ptr [eax+8]
 00415318    fild        qword ptr [eax]
 0041531A    fdiv        dword ptr ds:[41544C]
 00415320    call        @ROUND
 00415325    push        eax
 00415326    sar         eax,1F
 00415329    cmp         eax,edx
 0041532B    pop         eax
>0041532C    je          00415333
 0041532E    call        @BoundErr
 00415333    mov         dword ptr [ebp-8],eax
>00415336    jmp         00415417
 0041533B    mov         eax,dword ptr [ebp-4]
 0041533E    mov         eax,dword ptr [eax+8]
 00415341    fld         qword ptr [eax]
 00415343    call        @ROUND
 00415348    push        eax
 00415349    sar         eax,1F
 0041534C    cmp         eax,edx
 0041534E    pop         eax
>0041534F    je          00415356
 00415351    call        @BoundErr
 00415356    mov         dword ptr [ebp-8],eax
>00415359    jmp         00415417
 0041535E    mov         eax,dword ptr [ebp-4]
 00415361    call        VarToIntAsString
 00415366    mov         dword ptr [ebp-8],eax
>00415369    jmp         00415417
 0041536E    mov         eax,dword ptr [ebp-4]
 00415371    mov         eax,dword ptr [eax+8]
 00415374    movsx       eax,word ptr [eax]
 00415377    mov         dword ptr [ebp-8],eax
>0041537A    jmp         00415417
 0041537F    mov         eax,dword ptr [ebp-4]
 00415382    mov         eax,dword ptr [eax+8]
 00415385    movsx       eax,byte ptr [eax]
 00415388    mov         dword ptr [ebp-8],eax
>0041538B    jmp         00415417
 00415390    mov         eax,dword ptr [ebp-4]
 00415393    mov         eax,dword ptr [eax+8]
 00415396    movzx       eax,byte ptr [eax]
 00415399    mov         dword ptr [ebp-8],eax
>0041539C    jmp         00415417
 0041539E    mov         eax,dword ptr [ebp-4]
 004153A1    mov         eax,dword ptr [eax+8]
 004153A4    movzx       eax,word ptr [eax]
 004153A7    mov         dword ptr [ebp-8],eax
>004153AA    jmp         00415417
 004153AC    mov         eax,dword ptr [ebp-4]
 004153AF    mov         eax,dword ptr [eax+8]
 004153B2    mov         eax,dword ptr [eax]
 004153B4    test        eax,eax
>004153B6    jns         004153BD
 004153B8    call        @BoundErr
 004153BD    mov         dword ptr [ebp-8],eax
>004153C0    jmp         00415417
 004153C2    mov         eax,dword ptr [ebp-4]
 004153C5    mov         eax,dword ptr [eax+8]
 004153C8    mov         edx,dword ptr [eax+4]
 004153CB    mov         eax,dword ptr [eax]
 004153CD    push        eax
 004153CE    sar         eax,1F
 004153D1    cmp         eax,edx
 004153D3    pop         eax
>004153D4    je          004153DB
 004153D6    call        @BoundErr
 004153DB    mov         dword ptr [ebp-8],eax
>004153DE    jmp         00415417
 004153E0    mov         eax,dword ptr [ebp-4]
 004153E3    mov         eax,dword ptr [eax+8]
 004153E6    call        @VarToInteger
 004153EB    mov         dword ptr [ebp-8],eax
>004153EE    jmp         00415417
 004153F0    mov         eax,dword ptr [ebp-4]
 004153F3    call        VarToIntViaOS
 004153F8    mov         dword ptr [ebp-8],eax
>004153FB    jmp         00415417
 004153FD    lea         edx,[ebp-8]
 00415400    mov         eax,dword ptr [ebp-4]
 00415403    call        VarToIntCustom
 00415408    test        al,al
>0041540A    jne         00415417
 0041540C    mov         eax,dword ptr [ebp-4]
 0041540F    call        VarToIntViaOS
 00415414    mov         dword ptr [ebp-8],eax
 00415417    xor         eax,eax
 00415419    pop         edx
 0041541A    pop         ecx
 0041541B    pop         ecx
 0041541C    mov         dword ptr fs:[eax],edx
>0041541F    jmp         0041543F
>00415421    jmp         @HandleAnyException
 00415426    mov         eax,dword ptr [ebp-4]
 00415429    mov         ax,word ptr [eax]
 0041542C    mov         dx,3
 00415430    call        HandleConversionException
 00415435    xor         eax,eax
 00415437    mov         dword ptr [ebp-8],eax
 0041543A    call        @DoneExcept
 0041543F    mov         eax,dword ptr [ebp-8]
 00415442    pop         edi
 00415443    pop         esi
 00415444    pop         ebx
 00415445    pop         ecx
 00415446    pop         ecx
 00415447    pop         ebp
 00415448    ret
*}
end;

//00415450
function @VarToShortInt(const V:TVarData):Shortint;
begin
{*
 00415450    push        ebp
 00415451    mov         ebp,esp
 00415453    push        ecx
 00415454    push        ebx
 00415455    push        esi
 00415456    push        edi
 00415457    mov         dword ptr [ebp-4],eax
 0041545A    mov         eax,dword ptr [ebp-4]
 0041545D    mov         ax,word ptr [eax]
 00415460    sub         ax,1
>00415464    jb          00415476
>00415466    je          0041547A
 00415468    sub         ax,0A
>0041546C    je          00415494
 0041546E    sub         ax,5
>00415472    je          0041549C
>00415474    jmp         004154A4
 00415476    xor         ebx,ebx
>00415478    jmp         004154F7
 0041547A    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00415481    je          00415490
 00415483    mov         dx,10
 00415487    mov         ax,1
 0041548B    call        VarCastError
 00415490    xor         ebx,ebx
>00415492    jmp         004154F7
 00415494    mov         ebx,dword ptr [ebp-4]
 00415497    mov         bl,byte ptr [ebx+8]
>0041549A    jmp         004154F7
 0041549C    mov         ebx,dword ptr [ebp-4]
 0041549F    mov         bl,byte ptr [ebx+8]
>004154A2    jmp         004154F7
 004154A4    xor         eax,eax
 004154A6    push        ebp
 004154A7    push        4154DC
 004154AC    push        dword ptr fs:[eax]
 004154AF    mov         dword ptr fs:[eax],esp
 004154B2    mov         eax,dword ptr [ebp-4]
 004154B5    call        @VarToInteger
 004154BA    mov         ebx,eax
 004154BC    add         ebx,80
 004154C2    cmp         ebx,0FF
>004154C8    jbe         004154CF
 004154CA    call        @BoundErr
 004154CF    add         ebx,0FFFFFF80
 004154D2    xor         eax,eax
 004154D4    pop         edx
 004154D5    pop         ecx
 004154D6    pop         ecx
 004154D7    mov         dword ptr fs:[eax],edx
>004154DA    jmp         004154F7
>004154DC    jmp         @HandleAnyException
 004154E1    mov         eax,dword ptr [ebp-4]
 004154E4    mov         ax,word ptr [eax]
 004154E7    mov         dx,10
 004154EB    call        HandleConversionException
 004154F0    xor         ebx,ebx
 004154F2    call        @DoneExcept
 004154F7    mov         eax,ebx
 004154F9    pop         edi
 004154FA    pop         esi
 004154FB    pop         ebx
 004154FC    pop         ecx
 004154FD    pop         ebp
 004154FE    ret
*}
end;

//00415500
function @VarToByte(const V:TVarData):Byte;
begin
{*
 00415500    push        ebp
 00415501    mov         ebp,esp
 00415503    push        ecx
 00415504    push        ebx
 00415505    push        esi
 00415506    push        edi
 00415507    mov         dword ptr [ebp-4],eax
 0041550A    mov         eax,dword ptr [ebp-4]
 0041550D    mov         ax,word ptr [eax]
 00415510    sub         ax,1
>00415514    jb          00415526
>00415516    je          0041552A
 00415518    sub         ax,0A
>0041551C    je          00415544
 0041551E    sub         ax,6
>00415522    je          0041554C
>00415524    jmp         00415554
 00415526    xor         ebx,ebx
>00415528    jmp         0041559E
 0041552A    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00415531    je          00415540
 00415533    mov         dx,11
 00415537    mov         ax,1
 0041553B    call        VarCastError
 00415540    xor         ebx,ebx
>00415542    jmp         0041559E
 00415544    mov         ebx,dword ptr [ebp-4]
 00415547    mov         bl,byte ptr [ebx+8]
>0041554A    jmp         0041559E
 0041554C    mov         ebx,dword ptr [ebp-4]
 0041554F    mov         bl,byte ptr [ebx+8]
>00415552    jmp         0041559E
 00415554    xor         eax,eax
 00415556    push        ebp
 00415557    push        415583
 0041555C    push        dword ptr fs:[eax]
 0041555F    mov         dword ptr fs:[eax],esp
 00415562    mov         eax,dword ptr [ebp-4]
 00415565    call        @VarToInteger
 0041556A    mov         ebx,eax
 0041556C    cmp         ebx,0FF
>00415572    jbe         00415579
 00415574    call        @BoundErr
 00415579    xor         eax,eax
 0041557B    pop         edx
 0041557C    pop         ecx
 0041557D    pop         ecx
 0041557E    mov         dword ptr fs:[eax],edx
>00415581    jmp         0041559E
>00415583    jmp         @HandleAnyException
 00415588    mov         eax,dword ptr [ebp-4]
 0041558B    mov         ax,word ptr [eax]
 0041558E    mov         dx,11
 00415592    call        HandleConversionException
 00415597    xor         ebx,ebx
 00415599    call        @DoneExcept
 0041559E    mov         eax,ebx
 004155A0    pop         edi
 004155A1    pop         esi
 004155A2    pop         ebx
 004155A3    pop         ecx
 004155A4    pop         ebp
 004155A5    ret
*}
end;

//004155A8
function @VarToSmallInt(const V:TVarData):Smallint;
begin
{*
 004155A8    push        ebp
 004155A9    mov         ebp,esp
 004155AB    push        ecx
 004155AC    push        ebx
 004155AD    push        esi
 004155AE    push        edi
 004155AF    mov         dword ptr [ebp-4],eax
 004155B2    mov         eax,dword ptr [ebp-4]
 004155B5    movzx       eax,word ptr [eax]
 004155B8    cmp         eax,11
>004155BB    ja          00415641
 004155C1    mov         al,byte ptr [eax+4155CE]
 004155C7    jmp         dword ptr [eax*4+4155E0]
 004155C7    db          1
 004155C7    db          2
 004155C7    db          3
 004155C7    db          0
 004155C7    db          0
 004155C7    db          0
 004155C7    db          0
 004155C7    db          0
 004155C7    db          0
 004155C7    db          0
 004155C7    db          0
 004155C7    db          4
 004155C7    db          0
 004155C7    db          0
 004155C7    db          0
 004155C7    db          0
 004155C7    db          5
 004155C7    db          6
 004155C7    dd          00415641
 004155C7    dd          004155FC
 004155C7    dd          00415603
 004155C7    dd          0041561D
 004155C7    dd          00415626
 004155C7    dd          0041562F
 004155C7    dd          00415638
 004155FC    xor         ebx,ebx
>004155FE    jmp         00415697
 00415603    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>0041560A    je          00415619
 0041560C    mov         dx,2
 00415610    mov         ax,1
 00415614    call        VarCastError
 00415619    xor         ebx,ebx
>0041561B    jmp         00415697
 0041561D    mov         ebx,dword ptr [ebp-4]
 00415620    mov         bx,word ptr [ebx+8]
>00415624    jmp         00415697
 00415626    mov         ebx,dword ptr [ebp-4]
 00415629    mov         bx,word ptr [ebx+8]
>0041562D    jmp         00415697
 0041562F    mov         ebx,dword ptr [ebp-4]
 00415632    movsx       ebx,byte ptr [ebx+8]
>00415636    jmp         00415697
 00415638    mov         ebx,dword ptr [ebp-4]
 0041563B    movzx       ebx,byte ptr [ebx+8]
>0041563F    jmp         00415697
 00415641    xor         eax,eax
 00415643    push        ebp
 00415644    push        41567C
 00415649    push        dword ptr fs:[eax]
 0041564C    mov         dword ptr fs:[eax],esp
 0041564F    mov         eax,dword ptr [ebp-4]
 00415652    call        @VarToInteger
 00415657    mov         ebx,eax
 00415659    add         ebx,8000
 0041565F    cmp         ebx,0FFFF
>00415665    jbe         0041566C
 00415667    call        @BoundErr
 0041566C    add         ebx,0FFFF8000
 00415672    xor         eax,eax
 00415674    pop         edx
 00415675    pop         ecx
 00415676    pop         ecx
 00415677    mov         dword ptr fs:[eax],edx
>0041567A    jmp         00415697
>0041567C    jmp         @HandleAnyException
 00415681    mov         eax,dword ptr [ebp-4]
 00415684    mov         ax,word ptr [eax]
 00415687    mov         dx,2
 0041568B    call        HandleConversionException
 00415690    xor         ebx,ebx
 00415692    call        @DoneExcept
 00415697    mov         eax,ebx
 00415699    pop         edi
 0041569A    pop         esi
 0041569B    pop         ebx
 0041569C    pop         ecx
 0041569D    pop         ebp
 0041569E    ret
*}
end;

//004156A0
function @VarToWord(const V:TVarData):Word;
begin
{*
 004156A0    push        ebp
 004156A1    mov         ebp,esp
 004156A3    push        ecx
 004156A4    push        ebx
 004156A5    push        esi
 004156A6    push        edi
 004156A7    mov         dword ptr [ebp-4],eax
 004156AA    mov         eax,dword ptr [ebp-4]
 004156AD    movzx       eax,word ptr [eax]
 004156B0    cmp         eax,12
>004156B3    ja          00415726
 004156B5    mov         al,byte ptr [eax+4156C2]
 004156BB    jmp         dword ptr [eax*4+4156D5]
 004156BB    db          1
 004156BB    db          2
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          3
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          0
 004156BB    db          4
 004156BB    db          5
 004156BB    dd          00415726
 004156BB    dd          004156ED
 004156BB    dd          004156F1
 004156BB    dd          0041570B
 004156BB    dd          00415714
 004156BB    dd          0041571D
 004156ED    xor         ebx,ebx
>004156EF    jmp         00415770
 004156F1    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>004156F8    je          00415707
 004156FA    mov         dx,12
 004156FE    mov         ax,1
 00415702    call        VarCastError
 00415707    xor         ebx,ebx
>00415709    jmp         00415770
 0041570B    mov         ebx,dword ptr [ebp-4]
 0041570E    mov         bx,word ptr [ebx+8]
>00415712    jmp         00415770
 00415714    mov         ebx,dword ptr [ebp-4]
 00415717    movzx       ebx,byte ptr [ebx+8]
>0041571B    jmp         00415770
 0041571D    mov         ebx,dword ptr [ebp-4]
 00415720    mov         bx,word ptr [ebx+8]
>00415724    jmp         00415770
 00415726    xor         eax,eax
 00415728    push        ebp
 00415729    push        415755
 0041572E    push        dword ptr fs:[eax]
 00415731    mov         dword ptr fs:[eax],esp
 00415734    mov         eax,dword ptr [ebp-4]
 00415737    call        @VarToInteger
 0041573C    mov         ebx,eax
 0041573E    cmp         ebx,0FFFF
>00415744    jbe         0041574B
 00415746    call        @BoundErr
 0041574B    xor         eax,eax
 0041574D    pop         edx
 0041574E    pop         ecx
 0041574F    pop         ecx
 00415750    mov         dword ptr fs:[eax],edx
>00415753    jmp         00415770
>00415755    jmp         @HandleAnyException
 0041575A    mov         eax,dword ptr [ebp-4]
 0041575D    mov         ax,word ptr [eax]
 00415760    mov         dx,12
 00415764    call        HandleConversionException
 00415769    xor         ebx,ebx
 0041576B    call        @DoneExcept
 00415770    mov         eax,ebx
 00415772    pop         edi
 00415773    pop         esi
 00415774    pop         ebx
 00415775    pop         ecx
 00415776    pop         ebp
 00415777    ret
*}
end;

//00415778
function @VarToLongWord(const V:TVarData):LongWord;
begin
{*
 00415778    push        ebp
 00415779    mov         ebp,esp
 0041577B    push        ecx
 0041577C    push        ebx
 0041577D    push        esi
 0041577E    push        edi
 0041577F    mov         dword ptr [ebp-4],eax
 00415782    mov         eax,dword ptr [ebp-4]
 00415785    movzx       eax,word ptr [eax]
 00415788    cmp         eax,13
>0041578B    ja          00415812
 00415791    mov         al,byte ptr [eax+41579E]
 00415797    jmp         dword ptr [eax*4+4157B2]
 00415797    db          1
 00415797    db          2
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          3
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          0
 00415797    db          4
 00415797    db          5
 00415797    db          6
 00415797    dd          00415812
 00415797    dd          004157CE
 00415797    dd          004157D5
 00415797    dd          004157EF
 00415797    dd          004157F8
 00415797    dd          00415801
 00415797    dd          0041580A
 004157CE    xor         ebx,ebx
>004157D0    jmp         00415858
 004157D5    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>004157DC    je          004157EB
 004157DE    mov         dx,13
 004157E2    mov         ax,1
 004157E6    call        VarCastError
 004157EB    xor         ebx,ebx
>004157ED    jmp         00415858
 004157EF    mov         ebx,dword ptr [ebp-4]
 004157F2    movsx       ebx,word ptr [ebx+8]
>004157F6    jmp         00415858
 004157F8    mov         ebx,dword ptr [ebp-4]
 004157FB    movzx       ebx,byte ptr [ebx+8]
>004157FF    jmp         00415858
 00415801    mov         ebx,dword ptr [ebp-4]
 00415804    movzx       ebx,word ptr [ebx+8]
>00415808    jmp         00415858
 0041580A    mov         ebx,dword ptr [ebp-4]
 0041580D    mov         ebx,dword ptr [ebx+8]
>00415810    jmp         00415858
 00415812    xor         eax,eax
 00415814    push        ebp
 00415815    push        41583D
 0041581A    push        dword ptr fs:[eax]
 0041581D    mov         dword ptr fs:[eax],esp
 00415820    mov         eax,dword ptr [ebp-4]
 00415823    call        @VarToInt64
 00415828    test        edx,edx
>0041582A    je          00415831
 0041582C    call        @BoundErr
 00415831    mov         ebx,eax
 00415833    xor         eax,eax
 00415835    pop         edx
 00415836    pop         ecx
 00415837    pop         ecx
 00415838    mov         dword ptr fs:[eax],edx
>0041583B    jmp         00415858
>0041583D    jmp         @HandleAnyException
 00415842    mov         eax,dword ptr [ebp-4]
 00415845    mov         ax,word ptr [eax]
 00415848    mov         dx,13
 0041584C    call        HandleConversionException
 00415851    xor         ebx,ebx
 00415853    call        @DoneExcept
 00415858    mov         eax,ebx
 0041585A    pop         edi
 0041585B    pop         esi
 0041585C    pop         ebx
 0041585D    pop         ecx
 0041585E    pop         ebp
 0041585F    ret
*}
end;

//00415860
function VarToInt64ViaOS(const V:TVarData):Int64;
begin
{*
 00415860    push        ebx
 00415861    add         esp,0FFFFFFE8
 00415864    mov         ebx,eax
 00415866    lea         eax,[esp+8]
 0041586A    push        eax
 0041586B    call        oleaut32.VariantInit
 00415870    push        3
 00415872    push        0
 00415874    push        400
 00415879    push        ebx
 0041587A    lea         eax,[esp+18]
 0041587E    push        eax
 0041587F    mov         eax,[0056E4D8];^gvar_005719CC
 00415884    mov         eax,dword ptr [eax]
 00415886    call        eax
 00415888    test        eax,eax
>0041588A    jne         0041589A
 0041588C    mov         eax,dword ptr [esp+10]
 00415890    cdq
 00415891    mov         dword ptr [esp],eax
 00415894    mov         dword ptr [esp+4],edx
>00415898    jmp         004158FF
 0041589A    push        5
 0041589C    push        0
 0041589E    push        400
 004158A3    push        ebx
 004158A4    lea         eax,[esp+18]
 004158A8    push        eax
 004158A9    mov         eax,[0056E4D8];^gvar_005719CC
 004158AE    mov         eax,dword ptr [eax]
 004158B0    call        eax
 004158B2    test        eax,eax
>004158B4    jne         004158C8
 004158B6    fld         qword ptr [esp+10]
 004158BA    call        @ROUND
 004158BF    mov         dword ptr [esp],eax
 004158C2    mov         dword ptr [esp+4],edx
>004158C6    jmp         004158FF
 004158C8    cmp         eax,80020005
>004158CD    jne         004158E4
 004158CF    mov         eax,ebx
 004158D1    call        @VarToBoolean
 004158D6    and         eax,7F
 004158D9    xor         edx,edx
 004158DB    mov         dword ptr [esp],eax
 004158DE    mov         dword ptr [esp+4],edx
>004158E2    jmp         004158FF
 004158E4    mov         dx,word ptr [ebx]
 004158E7    mov         cx,14
 004158EB    call        VarResultCheck
 004158F0    mov         dword ptr [esp],0
 004158F7    mov         dword ptr [esp+4],0
 004158FF    mov         eax,dword ptr [esp]
 00415902    mov         edx,dword ptr [esp+4]
 00415906    add         esp,18
 00415909    pop         ebx
 0041590A    ret
*}
end;

//0041590C
function VarToInt64AsString(const V:TVarData):Int64;
begin
{*
 0041590C    push        ebp
 0041590D    mov         ebp,esp
 0041590F    add         esp,0FFFFFFE4
 00415912    push        ebx
 00415913    xor         edx,edx
 00415915    mov         dword ptr [ebp-1C],edx
 00415918    mov         dword ptr [ebp-0C],edx
 0041591B    mov         ebx,eax
 0041591D    xor         eax,eax
 0041591F    push        ebp
 00415920    push        4159FA
 00415925    push        dword ptr fs:[eax]
 00415928    mov         dword ptr fs:[eax],esp
 0041592B    mov         edx,ebx
 0041592D    lea         eax,[ebp-0C]
 00415930    call        00418080
 00415935    lea         eax,[ebp-1C]
 00415938    mov         edx,dword ptr [ebp-0C]
 0041593B    call        @LStrFromWStr
 00415940    mov         eax,dword ptr [ebp-1C]
 00415943    lea         edx,[ebp-8]
 00415946    call        0040C53C
 0041594B    test        al,al
>0041594D    jne         004159DC
 00415953    lea         eax,[ebp-10]
 00415956    push        eax
 00415957    push        0
 00415959    push        400
 0041595E    mov         eax,dword ptr [ebp-0C]
 00415961    push        eax
 00415962    mov         eax,[0056E5D0];^gvar_00571A00
 00415967    mov         eax,dword ptr [eax]
 00415969    call        eax
 0041596B    test        eax,eax
>0041596D    jne         0041597B
 0041596F    mov         eax,dword ptr [ebp-10]
 00415972    cdq
 00415973    mov         dword ptr [ebp-8],eax
 00415976    mov         dword ptr [ebp-4],edx
>00415979    jmp         004159DC
 0041597B    lea         eax,[ebp-18]
 0041597E    push        eax
 0041597F    push        0
 00415981    push        400
 00415986    mov         eax,dword ptr [ebp-0C]
 00415989    push        eax
 0041598A    mov         eax,[0056E350];^gvar_00571A08
 0041598F    mov         eax,dword ptr [eax]
 00415991    call        eax
 00415993    test        eax,eax
>00415995    jne         004159A7
 00415997    fld         qword ptr [ebp-18]
 0041599A    call        @ROUND
 0041599F    mov         dword ptr [ebp-8],eax
 004159A2    mov         dword ptr [ebp-4],edx
>004159A5    jmp         004159DC
 004159A7    cmp         eax,80020005
>004159AC    jne         004159C2
 004159AE    mov         eax,ebx
 004159B0    call        @VarToBoolean
 004159B5    and         eax,7F
 004159B8    xor         edx,edx
 004159BA    mov         dword ptr [ebp-8],eax
 004159BD    mov         dword ptr [ebp-4],edx
>004159C0    jmp         004159DC
 004159C2    mov         dx,word ptr [ebx]
 004159C5    mov         cx,14
 004159C9    call        VarResultCheck
 004159CE    mov         dword ptr [ebp-8],0
 004159D5    mov         dword ptr [ebp-4],0
 004159DC    xor         eax,eax
 004159DE    pop         edx
 004159DF    pop         ecx
 004159E0    pop         ecx
 004159E1    mov         dword ptr fs:[eax],edx
 004159E4    push        415A01
 004159E9    lea         eax,[ebp-1C]
 004159EC    call        @LStrClr
 004159F1    lea         eax,[ebp-0C]
 004159F4    call        @WStrClr
 004159F9    ret
>004159FA    jmp         @HandleFinally
>004159FF    jmp         004159E9
 00415A01    mov         eax,dword ptr [ebp-8]
 00415A04    mov         edx,dword ptr [ebp-4]
 00415A07    pop         ebx
 00415A08    mov         esp,ebp
 00415A0A    pop         ebp
 00415A0B    ret
*}
end;

//00415A0C
function VarToInt64Any(const V:TVarData):Int64;
begin
{*
 00415A0C    push        ebp
 00415A0D    mov         ebp,esp
 00415A0F    add         esp,0FFFFFFE8
 00415A12    push        ebx
 00415A13    mov         ebx,eax
 00415A15    lea         eax,[ebp-18]
 00415A18    push        eax
 00415A19    call        oleaut32.VariantInit
 00415A1E    xor         eax,eax
 00415A20    push        ebp
 00415A21    push        415A63
 00415A26    push        dword ptr fs:[eax]
 00415A29    mov         dword ptr fs:[eax],esp
 00415A2C    mov         edx,ebx
 00415A2E    lea         eax,[ebp-18]
 00415A31    call        @VarCopy
 00415A36    lea         eax,[ebp-18]
 00415A39    call        dword ptr ds:[571A40]
 00415A3F    lea         eax,[ebp-18]
 00415A42    call        @VarToInt64
 00415A47    mov         dword ptr [ebp-8],eax
 00415A4A    mov         dword ptr [ebp-4],edx
 00415A4D    xor         eax,eax
 00415A4F    pop         edx
 00415A50    pop         ecx
 00415A51    pop         ecx
 00415A52    mov         dword ptr fs:[eax],edx
 00415A55    push        415A6A
 00415A5A    lea         eax,[ebp-18]
 00415A5D    call        @VarClear
 00415A62    ret
>00415A63    jmp         @HandleFinally
>00415A68    jmp         00415A5A
 00415A6A    mov         eax,dword ptr [ebp-8]
 00415A6D    mov         edx,dword ptr [ebp-4]
 00415A70    pop         ebx
 00415A71    mov         esp,ebp
 00415A73    pop         ebp
 00415A74    ret
*}
end;

//00415A78
function VarToInt64Custom(const V:TVarData; var AValue:Int64):Boolean;
begin
{*
 00415A78    push        ebx
 00415A79    push        esi
 00415A7A    push        edi
 00415A7B    add         esp,0FFFFFFEC
 00415A7E    mov         edi,edx
 00415A80    mov         esi,eax
 00415A82    mov         edx,esp
 00415A84    mov         ax,word ptr [esi]
 00415A87    call        FindCustomVariantType
 00415A8C    mov         ebx,eax
 00415A8E    test        bl,bl
>00415A90    je          00415ABA
 00415A92    lea         eax,[esp+4]
 00415A96    push        eax
 00415A97    call        oleaut32.VariantInit
 00415A9C    push        14
 00415A9E    mov         ecx,esi
 00415AA0    lea         edx,[esp+8]
 00415AA4    mov         eax,dword ptr [esp+4]
 00415AA8    mov         esi,dword ptr [eax]
 00415AAA    call        dword ptr [esi+1C]
 00415AAD    mov         eax,dword ptr [esp+0C]
 00415AB1    mov         dword ptr [edi],eax
 00415AB3    mov         eax,dword ptr [esp+10]
 00415AB7    mov         dword ptr [edi+4],eax
 00415ABA    mov         eax,ebx
 00415ABC    add         esp,14
 00415ABF    pop         edi
 00415AC0    pop         esi
 00415AC1    pop         ebx
 00415AC2    ret
*}
end;

//00415AC4
function @VarToInt64(const V:TVarData):Int64;
begin
{*
 00415AC4    push        ebp
 00415AC5    mov         ebp,esp
 00415AC7    add         esp,0FFFFFFF0
 00415ACA    push        ebx
 00415ACB    push        esi
 00415ACC    push        edi
 00415ACD    mov         dword ptr [ebp-4],eax
 00415AD0    xor         edx,edx
 00415AD2    push        ebp
 00415AD3    push        415ED0
 00415AD8    push        dword ptr fs:[edx]
 00415ADB    mov         dword ptr fs:[edx],esp
 00415ADE    mov         eax,dword ptr [ebp-4]
 00415AE1    mov         ax,word ptr [eax]
 00415AE4    movzx       edx,ax
 00415AE7    cmp         edx,14
>00415AEA    ja          00415CBB
 00415AF0    jmp         dword ptr [edx*4+415AF7]
 00415AF0    dd          00415B4B
 00415AF0    dd          00415B5E
 00415AF0    dd          00415B87
 00415AF0    dd          00415B9A
 00415AF0    dd          00415BAC
 00415AF0    dd          00415BC2
 00415AF0    dd          00415BD8
 00415AF0    dd          00415BF4
 00415AF0    dd          00415C0A
 00415AF0    dd          00415CA8
 00415AF0    dd          00415CBB
 00415AF0    dd          00415C1D
 00415AF0    dd          00415C92
 00415AF0    dd          00415CA8
 00415AF0    dd          00415CBB
 00415AF0    dd          00415CBB
 00415AF0    dd          00415C30
 00415AF0    dd          00415C43
 00415AF0    dd          00415C57
 00415AF0    dd          00415C6B
 00415AF0    dd          00415C7E
 00415B4B    mov         dword ptr [ebp-10],0
 00415B52    mov         dword ptr [ebp-0C],0
>00415B59    jmp         00415EC6
 00415B5E    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00415B65    je          00415B74
 00415B67    mov         dx,14
 00415B6B    mov         ax,1
 00415B6F    call        VarCastError
 00415B74    mov         dword ptr [ebp-10],0
 00415B7B    mov         dword ptr [ebp-0C],0
>00415B82    jmp         00415EC6
 00415B87    mov         eax,dword ptr [ebp-4]
 00415B8A    movsx       eax,word ptr [eax+8]
 00415B8E    cdq
 00415B8F    mov         dword ptr [ebp-10],eax
 00415B92    mov         dword ptr [ebp-0C],edx
>00415B95    jmp         00415EC6
 00415B9A    mov         eax,dword ptr [ebp-4]
 00415B9D    mov         eax,dword ptr [eax+8]
 00415BA0    cdq
 00415BA1    mov         dword ptr [ebp-10],eax
 00415BA4    mov         dword ptr [ebp-0C],edx
>00415BA7    jmp         00415EC6
 00415BAC    mov         eax,dword ptr [ebp-4]
 00415BAF    fld         dword ptr [eax+8]
 00415BB2    call        @ROUND
 00415BB7    mov         dword ptr [ebp-10],eax
 00415BBA    mov         dword ptr [ebp-0C],edx
>00415BBD    jmp         00415EC6
 00415BC2    mov         eax,dword ptr [ebp-4]
 00415BC5    fld         qword ptr [eax+8]
 00415BC8    call        @ROUND
 00415BCD    mov         dword ptr [ebp-10],eax
 00415BD0    mov         dword ptr [ebp-0C],edx
>00415BD3    jmp         00415EC6
 00415BD8    mov         eax,dword ptr [ebp-4]
 00415BDB    fild        qword ptr [eax+8]
 00415BDE    fdiv        dword ptr ds:[415F04]
 00415BE4    call        @ROUND
 00415BE9    mov         dword ptr [ebp-10],eax
 00415BEC    mov         dword ptr [ebp-0C],edx
>00415BEF    jmp         00415EC6
 00415BF4    mov         eax,dword ptr [ebp-4]
 00415BF7    fld         qword ptr [eax+8]
 00415BFA    call        @ROUND
 00415BFF    mov         dword ptr [ebp-10],eax
 00415C02    mov         dword ptr [ebp-0C],edx
>00415C05    jmp         00415EC6
 00415C0A    mov         eax,dword ptr [ebp-4]
 00415C0D    call        VarToInt64AsString
 00415C12    mov         dword ptr [ebp-10],eax
 00415C15    mov         dword ptr [ebp-0C],edx
>00415C18    jmp         00415EC6
 00415C1D    mov         eax,dword ptr [ebp-4]
 00415C20    movsx       eax,word ptr [eax+8]
 00415C24    cdq
 00415C25    mov         dword ptr [ebp-10],eax
 00415C28    mov         dword ptr [ebp-0C],edx
>00415C2B    jmp         00415EC6
 00415C30    mov         eax,dword ptr [ebp-4]
 00415C33    movsx       eax,byte ptr [eax+8]
 00415C37    cdq
 00415C38    mov         dword ptr [ebp-10],eax
 00415C3B    mov         dword ptr [ebp-0C],edx
>00415C3E    jmp         00415EC6
 00415C43    mov         eax,dword ptr [ebp-4]
 00415C46    movzx       eax,byte ptr [eax+8]
 00415C4A    xor         edx,edx
 00415C4C    mov         dword ptr [ebp-10],eax
 00415C4F    mov         dword ptr [ebp-0C],edx
>00415C52    jmp         00415EC6
 00415C57    mov         eax,dword ptr [ebp-4]
 00415C5A    movzx       eax,word ptr [eax+8]
 00415C5E    xor         edx,edx
 00415C60    mov         dword ptr [ebp-10],eax
 00415C63    mov         dword ptr [ebp-0C],edx
>00415C66    jmp         00415EC6
 00415C6B    mov         eax,dword ptr [ebp-4]
 00415C6E    mov         eax,dword ptr [eax+8]
 00415C71    xor         edx,edx
 00415C73    mov         dword ptr [ebp-10],eax
 00415C76    mov         dword ptr [ebp-0C],edx
>00415C79    jmp         00415EC6
 00415C7E    mov         eax,dword ptr [ebp-4]
 00415C81    mov         edx,dword ptr [eax+8]
 00415C84    mov         dword ptr [ebp-10],edx
 00415C87    mov         edx,dword ptr [eax+0C]
 00415C8A    mov         dword ptr [ebp-0C],edx
>00415C8D    jmp         00415EC6
 00415C92    mov         eax,dword ptr [ebp-4]
 00415C95    mov         eax,dword ptr [eax+8]
 00415C98    call        @VarToInt64
 00415C9D    mov         dword ptr [ebp-10],eax
 00415CA0    mov         dword ptr [ebp-0C],edx
>00415CA3    jmp         00415EC6
 00415CA8    mov         eax,dword ptr [ebp-4]
 00415CAB    call        VarToInt64ViaOS
 00415CB0    mov         dword ptr [ebp-10],eax
 00415CB3    mov         dword ptr [ebp-0C],edx
>00415CB6    jmp         00415EC6
 00415CBB    mov         edx,dword ptr [ebp-4]
 00415CBE    mov         edx,eax
 00415CC0    sub         dx,100
>00415CC5    je          00415CCE
 00415CC7    dec         dx
>00415CCA    je          00415CE1
>00415CCC    jmp         00415CF4
 00415CCE    mov         eax,dword ptr [ebp-4]
 00415CD1    call        VarToInt64AsString
 00415CD6    mov         dword ptr [ebp-10],eax
 00415CD9    mov         dword ptr [ebp-0C],edx
>00415CDC    jmp         00415EC6
 00415CE1    mov         eax,dword ptr [ebp-4]
 00415CE4    call        VarToInt64Any
 00415CE9    mov         dword ptr [ebp-10],eax
 00415CEC    mov         dword ptr [ebp-0C],edx
>00415CEF    jmp         00415EC6
 00415CF4    mov         edx,dword ptr [ebp-4]
 00415CF7    test        ah,40
>00415CFA    je          00415EA9
 00415D00    mov         edx,dword ptr [ebp-4]
 00415D03    movzx       eax,ax
 00415D06    and         eax,0FFFFBFFF
 00415D0B    cmp         eax,14
>00415D0E    ja          00415E99
 00415D14    jmp         dword ptr [eax*4+415D1B]
 00415D14    dd          00415E99
 00415D14    dd          00415E99
 00415D14    dd          00415D6F
 00415D14    dd          00415D84
 00415D14    dd          00415D98
 00415D14    dd          00415DB0
 00415D14    dd          00415DC8
 00415D14    dd          00415DE6
 00415D14    dd          00415DFE
 00415D14    dd          00415E99
 00415D14    dd          00415E99
 00415D14    dd          00415E11
 00415D14    dd          00415E86
 00415D14    dd          00415E99
 00415D14    dd          00415E99
 00415D14    dd          00415E99
 00415D14    dd          00415E26
 00415D14    dd          00415E3B
 00415D14    dd          00415E4E
 00415D14    dd          00415E61
 00415D14    dd          00415E73
 00415D6F    mov         eax,dword ptr [ebp-4]
 00415D72    mov         eax,dword ptr [eax+8]
 00415D75    movsx       eax,word ptr [eax]
 00415D78    cdq
 00415D79    mov         dword ptr [ebp-10],eax
 00415D7C    mov         dword ptr [ebp-0C],edx
>00415D7F    jmp         00415EC6
 00415D84    mov         eax,dword ptr [ebp-4]
 00415D87    mov         eax,dword ptr [eax+8]
 00415D8A    mov         eax,dword ptr [eax]
 00415D8C    cdq
 00415D8D    mov         dword ptr [ebp-10],eax
 00415D90    mov         dword ptr [ebp-0C],edx
>00415D93    jmp         00415EC6
 00415D98    mov         eax,dword ptr [ebp-4]
 00415D9B    mov         eax,dword ptr [eax+8]
 00415D9E    fld         dword ptr [eax]
 00415DA0    call        @ROUND
 00415DA5    mov         dword ptr [ebp-10],eax
 00415DA8    mov         dword ptr [ebp-0C],edx
>00415DAB    jmp         00415EC6
 00415DB0    mov         eax,dword ptr [ebp-4]
 00415DB3    mov         eax,dword ptr [eax+8]
 00415DB6    fld         qword ptr [eax]
 00415DB8    call        @ROUND
 00415DBD    mov         dword ptr [ebp-10],eax
 00415DC0    mov         dword ptr [ebp-0C],edx
>00415DC3    jmp         00415EC6
 00415DC8    mov         eax,dword ptr [ebp-4]
 00415DCB    mov         eax,dword ptr [eax+8]
 00415DCE    fild        qword ptr [eax]
 00415DD0    fdiv        dword ptr ds:[415F04]
 00415DD6    call        @ROUND
 00415DDB    mov         dword ptr [ebp-10],eax
 00415DDE    mov         dword ptr [ebp-0C],edx
>00415DE1    jmp         00415EC6
 00415DE6    mov         eax,dword ptr [ebp-4]
 00415DE9    mov         eax,dword ptr [eax+8]
 00415DEC    fld         qword ptr [eax]
 00415DEE    call        @ROUND
 00415DF3    mov         dword ptr [ebp-10],eax
 00415DF6    mov         dword ptr [ebp-0C],edx
>00415DF9    jmp         00415EC6
 00415DFE    mov         eax,dword ptr [ebp-4]
 00415E01    call        VarToInt64AsString
 00415E06    mov         dword ptr [ebp-10],eax
 00415E09    mov         dword ptr [ebp-0C],edx
>00415E0C    jmp         00415EC6
 00415E11    mov         eax,dword ptr [ebp-4]
 00415E14    mov         eax,dword ptr [eax+8]
 00415E17    movsx       eax,word ptr [eax]
 00415E1A    cdq
 00415E1B    mov         dword ptr [ebp-10],eax
 00415E1E    mov         dword ptr [ebp-0C],edx
>00415E21    jmp         00415EC6
 00415E26    mov         eax,dword ptr [ebp-4]
 00415E29    mov         eax,dword ptr [eax+8]
 00415E2C    movsx       eax,byte ptr [eax]
 00415E2F    cdq
 00415E30    mov         dword ptr [ebp-10],eax
 00415E33    mov         dword ptr [ebp-0C],edx
>00415E36    jmp         00415EC6
 00415E3B    mov         eax,dword ptr [ebp-4]
 00415E3E    mov         eax,dword ptr [eax+8]
 00415E41    movzx       eax,byte ptr [eax]
 00415E44    xor         edx,edx
 00415E46    mov         dword ptr [ebp-10],eax
 00415E49    mov         dword ptr [ebp-0C],edx
>00415E4C    jmp         00415EC6
 00415E4E    mov         eax,dword ptr [ebp-4]
 00415E51    mov         eax,dword ptr [eax+8]
 00415E54    movzx       eax,word ptr [eax]
 00415E57    xor         edx,edx
 00415E59    mov         dword ptr [ebp-10],eax
 00415E5C    mov         dword ptr [ebp-0C],edx
>00415E5F    jmp         00415EC6
 00415E61    mov         eax,dword ptr [ebp-4]
 00415E64    mov         eax,dword ptr [eax+8]
 00415E67    mov         eax,dword ptr [eax]
 00415E69    xor         edx,edx
 00415E6B    mov         dword ptr [ebp-10],eax
 00415E6E    mov         dword ptr [ebp-0C],edx
>00415E71    jmp         00415EC6
 00415E73    mov         eax,dword ptr [ebp-4]
 00415E76    mov         eax,dword ptr [eax+8]
 00415E79    mov         edx,dword ptr [eax]
 00415E7B    mov         dword ptr [ebp-10],edx
 00415E7E    mov         edx,dword ptr [eax+4]
 00415E81    mov         dword ptr [ebp-0C],edx
>00415E84    jmp         00415EC6
 00415E86    mov         eax,dword ptr [ebp-4]
 00415E89    mov         eax,dword ptr [eax+8]
 00415E8C    call        @VarToInt64
 00415E91    mov         dword ptr [ebp-10],eax
 00415E94    mov         dword ptr [ebp-0C],edx
>00415E97    jmp         00415EC6
 00415E99    mov         eax,dword ptr [ebp-4]
 00415E9C    call        VarToInt64ViaOS
 00415EA1    mov         dword ptr [ebp-10],eax
 00415EA4    mov         dword ptr [ebp-0C],edx
>00415EA7    jmp         00415EC6
 00415EA9    lea         edx,[ebp-10]
 00415EAC    mov         eax,dword ptr [ebp-4]
 00415EAF    call        VarToInt64Custom
 00415EB4    test        al,al
>00415EB6    jne         00415EC6
 00415EB8    mov         eax,dword ptr [ebp-4]
 00415EBB    call        VarToInt64ViaOS
 00415EC0    mov         dword ptr [ebp-10],eax
 00415EC3    mov         dword ptr [ebp-0C],edx
 00415EC6    xor         eax,eax
 00415EC8    pop         edx
 00415EC9    pop         ecx
 00415ECA    pop         ecx
 00415ECB    mov         dword ptr fs:[eax],edx
>00415ECE    jmp         00415EF7
>00415ED0    jmp         @HandleAnyException
 00415ED5    mov         eax,dword ptr [ebp-4]
 00415ED8    mov         ax,word ptr [eax]
 00415EDB    mov         dx,14
 00415EDF    call        HandleConversionException
 00415EE4    mov         dword ptr [ebp-10],0
 00415EEB    mov         dword ptr [ebp-0C],0
 00415EF2    call        @DoneExcept
 00415EF7    mov         eax,dword ptr [ebp-10]
 00415EFA    mov         edx,dword ptr [ebp-0C]
 00415EFD    pop         edi
 00415EFE    pop         esi
 00415EFF    pop         ebx
 00415F00    mov         esp,ebp
 00415F02    pop         ebp
 00415F03    ret
*}
end;

//00415F08
function VarToBoolAsString(const V:TVarData):Boolean;
begin
{*
 00415F08    push        ebp
 00415F09    mov         ebp,esp
 00415F0B    add         esp,0FFFFFFF0
 00415F0E    push        ebx
 00415F0F    xor         edx,edx
 00415F11    mov         dword ptr [ebp-10],edx
 00415F14    mov         dword ptr [ebp-8],edx
 00415F17    mov         ebx,eax
 00415F19    xor         eax,eax
 00415F1B    push        ebp
 00415F1C    push        415FBF
 00415F21    push        dword ptr fs:[eax]
 00415F24    mov         dword ptr fs:[eax],esp
 00415F27    mov         edx,ebx
 00415F29    lea         eax,[ebp-8]
 00415F2C    call        00418080
 00415F31    lea         eax,[ebp-0A]
 00415F34    push        eax
 00415F35    push        0
 00415F37    push        400
 00415F3C    mov         eax,dword ptr [ebp-8]
 00415F3F    push        eax
 00415F40    mov         eax,[0056E2E8];^gvar_00571A14
 00415F45    mov         eax,dword ptr [eax]
 00415F47    call        eax
 00415F49    mov         edx,eax
 00415F4B    sub         edx,80020005
>00415F51    je          00415F68
 00415F53    sub         edx,7FFDFFFB
>00415F59    jne         00415F95
 00415F5B    cmp         word ptr [ebp-0A],1
 00415F60    sbb         eax,eax
 00415F62    inc         eax
 00415F63    mov         byte ptr [ebp-1],al
>00415F66    jmp         00415FA1
 00415F68    lea         eax,[ebp-10]
 00415F6B    mov         edx,dword ptr [ebp-8]
 00415F6E    call        @LStrFromWStr
 00415F73    mov         eax,dword ptr [ebp-10]
 00415F76    lea         edx,[ebp-1]
 00415F79    call        0040C650
 00415F7E    test        al,al
>00415F80    jne         00415FA1
 00415F82    mov         dx,word ptr [ebx]
 00415F85    mov         cx,0B
 00415F89    mov         eax,80020005
 00415F8E    call        VarResultCheck
>00415F93    jmp         00415FA1
 00415F95    mov         dx,word ptr [ebx]
 00415F98    mov         cx,0B
 00415F9C    call        VarResultCheck
 00415FA1    xor         eax,eax
 00415FA3    pop         edx
 00415FA4    pop         ecx
 00415FA5    pop         ecx
 00415FA6    mov         dword ptr fs:[eax],edx
 00415FA9    push        415FC6
 00415FAE    lea         eax,[ebp-10]
 00415FB1    call        @LStrClr
 00415FB6    lea         eax,[ebp-8]
 00415FB9    call        @WStrClr
 00415FBE    ret
>00415FBF    jmp         @HandleFinally
>00415FC4    jmp         00415FAE
 00415FC6    mov         al,byte ptr [ebp-1]
 00415FC9    pop         ebx
 00415FCA    mov         esp,ebp
 00415FCC    pop         ebp
 00415FCD    ret
*}
end;

//00415FD0
function VarToBoolViaOS(const V:TVarData):Boolean;
begin
{*
 00415FD0    push        ebx
 00415FD1    add         esp,0FFFFFFF0
 00415FD4    mov         ebx,eax
 00415FD6    push        esp
 00415FD7    call        oleaut32.VariantInit
 00415FDC    push        0B
 00415FDE    push        0
 00415FE0    push        400
 00415FE5    push        ebx
 00415FE6    lea         eax,[esp+10]
 00415FEA    push        eax
 00415FEB    mov         eax,[0056E4D8];^gvar_005719CC
 00415FF0    mov         eax,dword ptr [eax]
 00415FF2    call        eax
 00415FF4    mov         dx,word ptr [ebx]
 00415FF7    mov         cx,0B
 00415FFB    call        VarResultCheck
 00416000    cmp         word ptr [esp+8],1
 00416006    sbb         eax,eax
 00416008    inc         eax
 00416009    add         esp,10
 0041600C    pop         ebx
 0041600D    ret
*}
end;

//00416010
function VarToBoolAny(const V:TVarData):Boolean;
begin
{*
 00416010    push        ebp
 00416011    mov         ebp,esp
 00416013    add         esp,0FFFFFFEC
 00416016    push        ebx
 00416017    mov         ebx,eax
 00416019    lea         eax,[ebp-11]
 0041601C    push        eax
 0041601D    call        oleaut32.VariantInit
 00416022    xor         eax,eax
 00416024    push        ebp
 00416025    push        416064
 0041602A    push        dword ptr fs:[eax]
 0041602D    mov         dword ptr fs:[eax],esp
 00416030    mov         edx,ebx
 00416032    lea         eax,[ebp-11]
 00416035    call        @VarCopy
 0041603A    lea         eax,[ebp-11]
 0041603D    call        dword ptr ds:[571A40]
 00416043    lea         eax,[ebp-11]
 00416046    call        @VarToBoolean
 0041604B    mov         byte ptr [ebp-1],al
 0041604E    xor         eax,eax
 00416050    pop         edx
 00416051    pop         ecx
 00416052    pop         ecx
 00416053    mov         dword ptr fs:[eax],edx
 00416056    push        41606B
 0041605B    lea         eax,[ebp-11]
 0041605E    call        @VarClear
 00416063    ret
>00416064    jmp         @HandleFinally
>00416069    jmp         0041605B
 0041606B    mov         al,byte ptr [ebp-1]
 0041606E    pop         ebx
 0041606F    mov         esp,ebp
 00416071    pop         ebp
 00416072    ret
*}
end;

//00416074
function VarToBoolCustom(const V:TVarData; var AValue:Boolean):Boolean;
begin
{*
 00416074    push        ebx
 00416075    push        esi
 00416076    push        edi
 00416077    add         esp,0FFFFFFEC
 0041607A    mov         edi,edx
 0041607C    mov         esi,eax
 0041607E    mov         edx,esp
 00416080    mov         ax,word ptr [esi]
 00416083    call        FindCustomVariantType
 00416088    mov         ebx,eax
 0041608A    test        bl,bl
>0041608C    je          004160B4
 0041608E    lea         eax,[esp+4]
 00416092    push        eax
 00416093    call        oleaut32.VariantInit
 00416098    push        0B
 0041609A    mov         ecx,esi
 0041609C    lea         edx,[esp+8]
 004160A0    mov         eax,dword ptr [esp+4]
 004160A4    mov         esi,dword ptr [eax]
 004160A6    call        dword ptr [esi+1C]
 004160A9    cmp         word ptr [esp+0C],1
 004160AF    sbb         eax,eax
 004160B1    inc         eax
 004160B2    mov         byte ptr [edi],al
 004160B4    mov         eax,ebx
 004160B6    add         esp,14
 004160B9    pop         edi
 004160BA    pop         esi
 004160BB    pop         ebx
 004160BC    ret
*}
end;

//004160C0
function @VarToBoolean(const V:TVarData):Boolean;
begin
{*
 004160C0    push        ebx
 004160C1    push        ecx
 004160C2    mov         ebx,eax
 004160C4    mov         ax,word ptr [ebx]
 004160C7    movzx       edx,ax
 004160CA    cmp         edx,14
>004160CD    ja          0041624D
 004160D3    jmp         dword ptr [edx*4+4160DA]
 004160D3    dd          0041612E
 004160D3    dd          00416137
 004160D3    dd          00416156
 004160D3    dd          00416164
 004160D3    dd          00416171
 004160D3    dd          00416186
 004160D3    dd          0041619B
 004160D3    dd          004161B0
 004160D3    dd          004161C5
 004160D3    dd          0041623E
 004160D3    dd          0041624D
 004160D3    dd          004161D4
 004160D3    dd          0041622E
 004160D3    dd          0041623E
 004160D3    dd          0041624D
 004160D3    dd          0041624D
 004160D3    dd          004161E4
 004160D3    dd          004161F1
 004160D3    dd          004161FE
 004160D3    dd          0041620C
 004160D3    dd          00416219
 0041612E    mov         byte ptr [esp],0
>00416132    jmp         004163FE
 00416137    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>0041613E    je          0041614D
 00416140    mov         dx,0B
 00416144    mov         ax,1
 00416148    call        VarCastError
 0041614D    mov         byte ptr [esp],0
>00416151    jmp         004163FE
 00416156    cmp         word ptr [ebx+8],0
 0041615B    setne       byte ptr [esp]
>0041615F    jmp         004163FE
 00416164    cmp         dword ptr [ebx+8],0
 00416168    setne       byte ptr [esp]
>0041616C    jmp         004163FE
 00416171    fld         dword ptr [ebx+8]
 00416174    fcomp       dword ptr ds:[416404]
 0041617A    fnstsw      al
 0041617C    sahf
 0041617D    setne       byte ptr [esp]
>00416181    jmp         004163FE
 00416186    fld         qword ptr [ebx+8]
 00416189    fcomp       dword ptr ds:[416404]
 0041618F    fnstsw      al
 00416191    sahf
 00416192    setne       byte ptr [esp]
>00416196    jmp         004163FE
 0041619B    fild        qword ptr [ebx+8]
 0041619E    fcomp       dword ptr ds:[416404]
 004161A4    fnstsw      al
 004161A6    sahf
 004161A7    setne       byte ptr [esp]
>004161AB    jmp         004163FE
 004161B0    fld         qword ptr [ebx+8]
 004161B3    fcomp       dword ptr ds:[416404]
 004161B9    fnstsw      al
 004161BB    sahf
 004161BC    setne       byte ptr [esp]
>004161C0    jmp         004163FE
 004161C5    mov         eax,ebx
 004161C7    call        VarToBoolAsString
 004161CC    mov         byte ptr [esp],al
>004161CF    jmp         004163FE
 004161D4    cmp         word ptr [ebx+8],1
 004161D9    sbb         eax,eax
 004161DB    inc         eax
 004161DC    mov         byte ptr [esp],al
>004161DF    jmp         004163FE
 004161E4    cmp         byte ptr [ebx+8],0
 004161E8    setne       byte ptr [esp]
>004161EC    jmp         004163FE
 004161F1    cmp         byte ptr [ebx+8],0
 004161F5    setne       byte ptr [esp]
>004161F9    jmp         004163FE
 004161FE    cmp         word ptr [ebx+8],0
 00416203    setne       byte ptr [esp]
>00416207    jmp         004163FE
 0041620C    cmp         dword ptr [ebx+8],0
 00416210    setne       byte ptr [esp]
>00416214    jmp         004163FE
 00416219    cmp         dword ptr [ebx+0C],0
>0041621D    jne         00416223
 0041621F    cmp         dword ptr [ebx+8],0
 00416223    setne       al
 00416226    mov         byte ptr [esp],al
>00416229    jmp         004163FE
 0041622E    mov         eax,dword ptr [ebx+8]
 00416231    call        @VarToBoolean
 00416236    mov         byte ptr [esp],al
>00416239    jmp         004163FE
 0041623E    mov         eax,ebx
 00416240    call        VarToBoolViaOS
 00416245    mov         byte ptr [esp],al
>00416248    jmp         004163FE
 0041624D    mov         edx,eax
 0041624F    sub         dx,100
>00416254    je          0041625D
 00416256    dec         dx
>00416259    je          0041626C
>0041625B    jmp         0041627B
 0041625D    mov         eax,ebx
 0041625F    call        VarToBoolAsString
 00416264    mov         byte ptr [esp],al
>00416267    jmp         004163FE
 0041626C    mov         eax,ebx
 0041626E    call        VarToBoolAny
 00416273    mov         byte ptr [esp],al
>00416276    jmp         004163FE
 0041627B    test        ah,40
>0041627E    je          004163E7
 00416284    movzx       eax,ax
 00416287    and         eax,0FFFFBFFF
 0041628C    cmp         eax,14
>0041628F    ja          004163DB
 00416295    jmp         dword ptr [eax*4+41629C]
 00416295    dd          004163DB
 00416295    dd          004163DB
 00416295    dd          004162F0
 00416295    dd          00416300
 00416295    dd          0041630F
 00416295    dd          00416326
 00416295    dd          0041633D
 00416295    dd          00416354
 00416295    dd          0041636B
 00416295    dd          004163DB
 00416295    dd          004163DB
 00416295    dd          0041637A
 00416295    dd          004163CE
 00416295    dd          004163DB
 00416295    dd          004163DB
 00416295    dd          004163DB
 00416295    dd          00416389
 00416295    dd          00416395
 00416295    dd          004163A1
 00416295    dd          004163AE
 00416295    dd          004163BA
 004162F0    mov         eax,dword ptr [ebx+8]
 004162F3    cmp         word ptr [eax],0
 004162F7    setne       byte ptr [esp]
>004162FB    jmp         004163FE
 00416300    mov         eax,dword ptr [ebx+8]
 00416303    cmp         dword ptr [eax],0
 00416306    setne       byte ptr [esp]
>0041630A    jmp         004163FE
 0041630F    mov         eax,dword ptr [ebx+8]
 00416312    fld         dword ptr [eax]
 00416314    fcomp       dword ptr ds:[416404]
 0041631A    fnstsw      al
 0041631C    sahf
 0041631D    setne       byte ptr [esp]
>00416321    jmp         004163FE
 00416326    mov         eax,dword ptr [ebx+8]
 00416329    fld         qword ptr [eax]
 0041632B    fcomp       dword ptr ds:[416404]
 00416331    fnstsw      al
 00416333    sahf
 00416334    setne       byte ptr [esp]
>00416338    jmp         004163FE
 0041633D    mov         eax,dword ptr [ebx+8]
 00416340    fild        qword ptr [eax]
 00416342    fcomp       dword ptr ds:[416404]
 00416348    fnstsw      al
 0041634A    sahf
 0041634B    setne       byte ptr [esp]
>0041634F    jmp         004163FE
 00416354    mov         eax,dword ptr [ebx+8]
 00416357    fld         qword ptr [eax]
 00416359    fcomp       dword ptr ds:[416404]
 0041635F    fnstsw      al
 00416361    sahf
 00416362    setne       byte ptr [esp]
>00416366    jmp         004163FE
 0041636B    mov         eax,ebx
 0041636D    call        VarToBoolAsString
 00416372    mov         byte ptr [esp],al
>00416375    jmp         004163FE
 0041637A    mov         eax,dword ptr [ebx+8]
 0041637D    cmp         word ptr [eax],1
 00416381    sbb         eax,eax
 00416383    inc         eax
 00416384    mov         byte ptr [esp],al
>00416387    jmp         004163FE
 00416389    mov         eax,dword ptr [ebx+8]
 0041638C    cmp         byte ptr [eax],0
 0041638F    setne       byte ptr [esp]
>00416393    jmp         004163FE
 00416395    mov         eax,dword ptr [ebx+8]
 00416398    cmp         byte ptr [eax],0
 0041639B    setne       byte ptr [esp]
>0041639F    jmp         004163FE
 004163A1    mov         eax,dword ptr [ebx+8]
 004163A4    cmp         word ptr [eax],0
 004163A8    setne       byte ptr [esp]
>004163AC    jmp         004163FE
 004163AE    mov         eax,dword ptr [ebx+8]
 004163B1    cmp         dword ptr [eax],0
 004163B4    setne       byte ptr [esp]
>004163B8    jmp         004163FE
 004163BA    mov         eax,dword ptr [ebx+8]
 004163BD    cmp         dword ptr [eax+4],0
>004163C1    jne         004163C6
 004163C3    cmp         dword ptr [eax],0
 004163C6    setne       al
 004163C9    mov         byte ptr [esp],al
>004163CC    jmp         004163FE
 004163CE    mov         eax,dword ptr [ebx+8]
 004163D1    call        @VarToBoolean
 004163D6    mov         byte ptr [esp],al
>004163D9    jmp         004163FE
 004163DB    mov         eax,ebx
 004163DD    call        VarToBoolViaOS
 004163E2    mov         byte ptr [esp],al
>004163E5    jmp         004163FE
 004163E7    mov         edx,esp
 004163E9    mov         eax,ebx
 004163EB    call        VarToBoolCustom
 004163F0    test        al,al
>004163F2    jne         004163FE
 004163F4    mov         eax,ebx
 004163F6    call        VarToBoolViaOS
 004163FB    mov         byte ptr [esp],al
 004163FE    mov         al,byte ptr [esp]
 00416401    pop         edx
 00416402    pop         ebx
 00416403    ret
*}
end;

//00416408
function @VarToBool(const V:TVarData):LongBool;
begin
{*
 00416408    call        @VarToBoolean
 0041640D    neg         al
 0041640F    sbb         eax,eax
 00416411    neg         eax
 00416413    ret
*}
end;

//00416414
function VarToDoubleAsString(const V:TVarData):Double;
begin
{*
 00416414    push        ebp
 00416415    mov         ebp,esp
 00416417    add         esp,0FFFFFFE4
 0041641A    push        ebx
 0041641B    xor         edx,edx
 0041641D    mov         dword ptr [ebp-1C],edx
 00416420    mov         dword ptr [ebp-0C],edx
 00416423    mov         ebx,eax
 00416425    xor         eax,eax
 00416427    push        ebp
 00416428    push        4164C9
 0041642D    push        dword ptr fs:[eax]
 00416430    mov         dword ptr fs:[eax],esp
 00416433    mov         edx,ebx
 00416435    lea         eax,[ebp-0C]
 00416438    call        00418080
 0041643D    lea         eax,[ebp-8]
 00416440    push        eax
 00416441    push        0
 00416443    push        400
 00416448    mov         eax,dword ptr [ebp-0C]
 0041644B    push        eax
 0041644C    mov         eax,[0056E350];^gvar_00571A08
 00416451    mov         eax,dword ptr [eax]
 00416453    call        eax
 00416455    mov         edx,eax
 00416457    sub         edx,80020005
>0041645D    je          00416469
 0041645F    sub         edx,7FFDFFFB
>00416465    jne         0041649F
>00416467    jmp         004164AB
 00416469    lea         eax,[ebp-1C]
 0041646C    mov         edx,dword ptr [ebp-0C]
 0041646F    call        @LStrFromWStr
 00416474    mov         eax,dword ptr [ebp-1C]
 00416477    lea         edx,[ebp-18]
 0041647A    call        0040DE68
 0041647F    test        al,al
>00416481    je          0041648C
 00416483    fld         tbyte ptr [ebp-18]
 00416486    fstp        qword ptr [ebp-8]
 00416489    wait
>0041648A    jmp         004164AB
 0041648C    mov         dx,word ptr [ebx]
 0041648F    mov         cx,5
 00416493    mov         eax,80020005
 00416498    call        VarResultCheck
>0041649D    jmp         004164AB
 0041649F    mov         dx,word ptr [ebx]
 004164A2    mov         cx,5
 004164A6    call        VarResultCheck
 004164AB    xor         eax,eax
 004164AD    pop         edx
 004164AE    pop         ecx
 004164AF    pop         ecx
 004164B0    mov         dword ptr fs:[eax],edx
 004164B3    push        4164D0
 004164B8    lea         eax,[ebp-1C]
 004164BB    call        @LStrClr
 004164C0    lea         eax,[ebp-0C]
 004164C3    call        @WStrClr
 004164C8    ret
>004164C9    jmp         @HandleFinally
>004164CE    jmp         004164B8
 004164D0    fld         qword ptr [ebp-8]
 004164D3    pop         ebx
 004164D4    mov         esp,ebp
 004164D6    pop         ebp
 004164D7    ret
*}
end;

//004164D8
function VarToDoubleViaOS(const V:TVarData):Double;
begin
{*
 004164D8    push        ebx
 004164D9    add         esp,0FFFFFFE8
 004164DC    mov         ebx,eax
 004164DE    lea         eax,[esp+8]
 004164E2    push        eax
 004164E3    call        oleaut32.VariantInit
 004164E8    push        5
 004164EA    push        0
 004164EC    push        400
 004164F1    push        ebx
 004164F2    lea         eax,[esp+18]
 004164F6    push        eax
 004164F7    mov         eax,[0056E4D8];^gvar_005719CC
 004164FC    mov         eax,dword ptr [eax]
 004164FE    call        eax
 00416500    mov         dx,word ptr [ebx]
 00416503    mov         cx,5
 00416507    call        VarResultCheck
 0041650C    mov         eax,dword ptr [esp+10]
 00416510    mov         dword ptr [esp],eax
 00416513    mov         eax,dword ptr [esp+14]
 00416517    mov         dword ptr [esp+4],eax
 0041651B    fld         qword ptr [esp]
 0041651E    add         esp,18
 00416521    pop         ebx
 00416522    ret
*}
end;

//00416524
function VarToDateAny(const V:TVarData):TDateTime;
begin
{*
 00416524    push        ebp
 00416525    mov         ebp,esp
 00416527    add         esp,0FFFFFFE8
 0041652A    push        ebx
 0041652B    mov         ebx,eax
 0041652D    lea         eax,[ebp-18]
 00416530    push        eax
 00416531    call        oleaut32.VariantInit
 00416536    xor         eax,eax
 00416538    push        ebp
 00416539    push        416579
 0041653E    push        dword ptr fs:[eax]
 00416541    mov         dword ptr fs:[eax],esp
 00416544    mov         edx,ebx
 00416546    lea         eax,[ebp-18]
 00416549    call        @VarCopy
 0041654E    lea         eax,[ebp-18]
 00416551    call        dword ptr ds:[571A40]
 00416557    lea         eax,[ebp-18]
 0041655A    call        004165D4
 0041655F    fstp        qword ptr [ebp-8]
 00416562    wait
 00416563    xor         eax,eax
 00416565    pop         edx
 00416566    pop         ecx
 00416567    pop         ecx
 00416568    mov         dword ptr fs:[eax],edx
 0041656B    push        416580
 00416570    lea         eax,[ebp-18]
 00416573    call        @VarClear
 00416578    ret
>00416579    jmp         @HandleFinally
>0041657E    jmp         00416570
 00416580    fld         qword ptr [ebp-8]
 00416583    pop         ebx
 00416584    mov         esp,ebp
 00416586    pop         ebp
 00416587    ret
*}
end;

//00416588
function VarToDoubleCustom(const V:TVarData; var AValue:Double):Boolean;
begin
{*
 00416588    push        ebx
 00416589    push        esi
 0041658A    push        edi
 0041658B    add         esp,0FFFFFFEC
 0041658E    mov         edi,edx
 00416590    mov         esi,eax
 00416592    mov         edx,esp
 00416594    mov         ax,word ptr [esi]
 00416597    call        FindCustomVariantType
 0041659C    mov         ebx,eax
 0041659E    test        bl,bl
>004165A0    je          004165CA
 004165A2    lea         eax,[esp+4]
 004165A6    push        eax
 004165A7    call        oleaut32.VariantInit
 004165AC    push        5
 004165AE    mov         ecx,esi
 004165B0    lea         edx,[esp+8]
 004165B4    mov         eax,dword ptr [esp+4]
 004165B8    mov         esi,dword ptr [eax]
 004165BA    call        dword ptr [esi+1C]
 004165BD    mov         eax,dword ptr [esp+0C]
 004165C1    mov         dword ptr [edi],eax
 004165C3    mov         eax,dword ptr [esp+10]
 004165C7    mov         dword ptr [edi+4],eax
 004165CA    mov         eax,ebx
 004165CC    add         esp,14
 004165CF    pop         edi
 004165D0    pop         esi
 004165D1    pop         ebx
 004165D2    ret
*}
end;

//004165D4
{*function sub_004165D4(?:?):?;
begin
 004165D4    push        ebx
 004165D5    add         esp,0FFFFFFEC
 004165D8    mov         ebx,eax
 004165DA    mov         ax,word ptr [ebx]
 004165DD    movzx       edx,ax
 004165E0    cmp         edx,14
>004165E3    ja          0041677C
 004165E9    jmp         dword ptr [edx*4+4165F0]
 004165E9    dd          00416644
 004165E9    dd          00416652
 004165E9    dd          00416676
 004165E9    dd          00416682
 004165E9    dd          0041668E
 004165E9    dd          0041669A
 004165E9    dd          004166AC
 004165E9    dd          004166BE
 004165E9    dd          004166D0
 004165E9    dd          0041676C
 004165E9    dd          0041677C
 004165E9    dd          004166E0
 004165E9    dd          0041675B
 004165E9    dd          0041676C
 004165E9    dd          0041677C
 004165E9    dd          0041677C
 004165E9    dd          004166F5
 004165E9    dd          0041670A
 004165E9    dd          00416720
 004165E9    dd          00416735
 004165E9    dd          0041674F
 00416644    xor         eax,eax
 00416646    mov         dword ptr [esp],eax
 00416649    mov         dword ptr [esp+4],eax
>0041664D    jmp         00416941
 00416652    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00416659    je          00416668
 0041665B    mov         dx,5
 0041665F    mov         ax,1
 00416663    call        VarCastError
 00416668    xor         eax,eax
 0041666A    mov         dword ptr [esp],eax
 0041666D    mov         dword ptr [esp+4],eax
>00416671    jmp         00416941
 00416676    fild        word ptr [ebx+8]
 00416679    fstp        qword ptr [esp]
 0041667C    wait
>0041667D    jmp         00416941
 00416682    fild        dword ptr [ebx+8]
 00416685    fstp        qword ptr [esp]
 00416688    wait
>00416689    jmp         00416941
 0041668E    fld         dword ptr [ebx+8]
 00416691    fstp        qword ptr [esp]
 00416694    wait
>00416695    jmp         00416941
 0041669A    mov         eax,dword ptr [ebx+8]
 0041669D    mov         dword ptr [esp],eax
 004166A0    mov         eax,dword ptr [ebx+0C]
 004166A3    mov         dword ptr [esp+4],eax
>004166A7    jmp         00416941
 004166AC    fild        qword ptr [ebx+8]
 004166AF    fdiv        dword ptr ds:[41694C];10000:Single
 004166B5    fstp        qword ptr [esp]
 004166B8    wait
>004166B9    jmp         00416941
 004166BE    mov         eax,dword ptr [ebx+8]
 004166C1    mov         dword ptr [esp],eax
 004166C4    mov         eax,dword ptr [ebx+0C]
 004166C7    mov         dword ptr [esp+4],eax
>004166CB    jmp         00416941
 004166D0    mov         eax,ebx
 004166D2    call        VarToDoubleAsString
 004166D7    fstp        qword ptr [esp]
 004166DA    wait
>004166DB    jmp         00416941
 004166E0    movsx       eax,word ptr [ebx+8]
 004166E4    mov         dword ptr [esp+8],eax
 004166E8    fild        dword ptr [esp+8]
 004166EC    fstp        qword ptr [esp]
 004166EF    wait
>004166F0    jmp         00416941
 004166F5    movsx       eax,byte ptr [ebx+8]
 004166F9    mov         dword ptr [esp+8],eax
 004166FD    fild        dword ptr [esp+8]
 00416701    fstp        qword ptr [esp]
 00416704    wait
>00416705    jmp         00416941
 0041670A    xor         eax,eax
 0041670C    mov         al,byte ptr [ebx+8]
 0041670F    mov         dword ptr [esp+8],eax
 00416713    fild        dword ptr [esp+8]
 00416717    fstp        qword ptr [esp]
 0041671A    wait
>0041671B    jmp         00416941
 00416720    movzx       eax,word ptr [ebx+8]
 00416724    mov         dword ptr [esp+8],eax
 00416728    fild        dword ptr [esp+8]
 0041672C    fstp        qword ptr [esp]
 0041672F    wait
>00416730    jmp         00416941
 00416735    mov         eax,dword ptr [ebx+8]
 00416738    mov         dword ptr [esp+0C],eax
 0041673C    xor         eax,eax
 0041673E    mov         dword ptr [esp+10],eax
 00416742    fild        qword ptr [esp+0C]
 00416746    fstp        qword ptr [esp]
 00416749    wait
>0041674A    jmp         00416941
 0041674F    fild        qword ptr [ebx+8]
 00416752    fstp        qword ptr [esp]
 00416755    wait
>00416756    jmp         00416941
 0041675B    mov         eax,dword ptr [ebx+8]
 0041675E    call        004165D4
 00416763    fstp        qword ptr [esp]
 00416766    wait
>00416767    jmp         00416941
 0041676C    mov         eax,ebx
 0041676E    call        VarToDoubleViaOS
 00416773    fstp        qword ptr [esp]
 00416776    wait
>00416777    jmp         00416941
 0041677C    mov         edx,eax
 0041677E    sub         dx,100
>00416783    je          0041678C
 00416785    dec         dx
>00416788    je          0041679C
>0041678A    jmp         004167AC
 0041678C    mov         eax,ebx
 0041678E    call        VarToDoubleAsString
 00416793    fstp        qword ptr [esp]
 00416796    wait
>00416797    jmp         00416941
 0041679C    mov         eax,ebx
 0041679E    call        VarToDateAny
 004167A3    fstp        qword ptr [esp]
 004167A6    wait
>004167A7    jmp         00416941
 004167AC    test        ah,40
>004167AF    je          00416929
 004167B5    movzx       eax,ax
 004167B8    and         eax,0FFFFBFFF
 004167BD    cmp         eax,14
>004167C0    ja          0041691C
 004167C6    jmp         dword ptr [eax*4+4167CD]
 004167C6    dd          0041691C
 004167C6    dd          0041691C
 004167C6    dd          00416821
 004167C6    dd          0041682F
 004167C6    dd          0041683D
 004167C6    dd          0041684B
 004167C6    dd          0041685F
 004167C6    dd          00416873
 004167C6    dd          00416887
 004167C6    dd          0041691C
 004167C6    dd          0041691C
 004167C6    dd          00416897
 004167C6    dd          0041690E
 004167C6    dd          0041691C
 004167C6    dd          0041691C
 004167C6    dd          0041691C
 004167C6    dd          004168AE
 004167C6    dd          004168C2
 004167C6    dd          004168D6
 004167C6    dd          004168EA
 004167C6    dd          00416903
 00416821    mov         eax,dword ptr [ebx+8]
 00416824    fild        word ptr [eax]
 00416826    fstp        qword ptr [esp]
 00416829    wait
>0041682A    jmp         00416941
 0041682F    mov         eax,dword ptr [ebx+8]
 00416832    fild        dword ptr [eax]
 00416834    fstp        qword ptr [esp]
 00416837    wait
>00416838    jmp         00416941
 0041683D    mov         eax,dword ptr [ebx+8]
 00416840    fld         dword ptr [eax]
 00416842    fstp        qword ptr [esp]
 00416845    wait
>00416846    jmp         00416941
 0041684B    mov         eax,dword ptr [ebx+8]
 0041684E    mov         edx,dword ptr [eax]
 00416850    mov         dword ptr [esp],edx
 00416853    mov         edx,dword ptr [eax+4]
 00416856    mov         dword ptr [esp+4],edx
>0041685A    jmp         00416941
 0041685F    mov         eax,dword ptr [ebx+8]
 00416862    fild        qword ptr [eax]
 00416864    fdiv        dword ptr ds:[41694C];10000:Single
 0041686A    fstp        qword ptr [esp]
 0041686D    wait
>0041686E    jmp         00416941
 00416873    mov         eax,dword ptr [ebx+8]
 00416876    mov         edx,dword ptr [eax]
 00416878    mov         dword ptr [esp],edx
 0041687B    mov         edx,dword ptr [eax+4]
 0041687E    mov         dword ptr [esp+4],edx
>00416882    jmp         00416941
 00416887    mov         eax,ebx
 00416889    call        VarToDoubleAsString
 0041688E    fstp        qword ptr [esp]
 00416891    wait
>00416892    jmp         00416941
 00416897    mov         eax,dword ptr [ebx+8]
 0041689A    movsx       eax,word ptr [eax]
 0041689D    mov         dword ptr [esp+8],eax
 004168A1    fild        dword ptr [esp+8]
 004168A5    fstp        qword ptr [esp]
 004168A8    wait
>004168A9    jmp         00416941
 004168AE    mov         eax,dword ptr [ebx+8]
 004168B1    movsx       eax,byte ptr [eax]
 004168B4    mov         dword ptr [esp+8],eax
 004168B8    fild        dword ptr [esp+8]
 004168BC    fstp        qword ptr [esp]
 004168BF    wait
>004168C0    jmp         00416941
 004168C2    mov         eax,dword ptr [ebx+8]
 004168C5    movzx       eax,byte ptr [eax]
 004168C8    mov         dword ptr [esp+8],eax
 004168CC    fild        dword ptr [esp+8]
 004168D0    fstp        qword ptr [esp]
 004168D3    wait
>004168D4    jmp         00416941
 004168D6    mov         eax,dword ptr [ebx+8]
 004168D9    movzx       eax,word ptr [eax]
 004168DC    mov         dword ptr [esp+8],eax
 004168E0    fild        dword ptr [esp+8]
 004168E4    fstp        qword ptr [esp]
 004168E7    wait
>004168E8    jmp         00416941
 004168EA    mov         eax,dword ptr [ebx+8]
 004168ED    mov         eax,dword ptr [eax]
 004168EF    mov         dword ptr [esp+0C],eax
 004168F3    xor         eax,eax
 004168F5    mov         dword ptr [esp+10],eax
 004168F9    fild        qword ptr [esp+0C]
 004168FD    fstp        qword ptr [esp]
 00416900    wait
>00416901    jmp         00416941
 00416903    mov         eax,dword ptr [ebx+8]
 00416906    fild        qword ptr [eax]
 00416908    fstp        qword ptr [esp]
 0041690B    wait
>0041690C    jmp         00416941
 0041690E    mov         eax,dword ptr [ebx+8]
 00416911    call        004165D4
 00416916    fstp        qword ptr [esp]
 00416919    wait
>0041691A    jmp         00416941
 0041691C    mov         eax,ebx
 0041691E    call        VarToDoubleViaOS
 00416923    fstp        qword ptr [esp]
 00416926    wait
>00416927    jmp         00416941
 00416929    mov         edx,esp
 0041692B    mov         eax,ebx
 0041692D    call        VarToDoubleCustom
 00416932    test        al,al
>00416934    jne         00416941
 00416936    mov         eax,ebx
 00416938    call        VarToDoubleViaOS
 0041693D    fstp        qword ptr [esp]
 00416940    wait
 00416941    fld         qword ptr [esp]
 00416944    add         esp,14
 00416947    pop         ebx
 00416948    ret
end;*}

//00416950
function @VarToReal(const V:TVarData):Extended;
begin
{*
 00416950    push        ebx
 00416951    add         esp,0FFFFFFF4
 00416954    mov         ebx,eax
 00416956    mov         eax,ebx
 00416958    call        004165D4
 0041695D    fstp        tbyte ptr [esp]
 00416960    wait
 00416961    fld         tbyte ptr [esp]
 00416964    add         esp,0C
 00416967    pop         ebx
 00416968    ret
*}
end;

//0041696C
function @VarToSingle(const V:TVarData):Single;
begin
{*
 0041696C    push        ebp
 0041696D    mov         ebp,esp
 0041696F    add         esp,0FFFFFFEC
 00416972    push        ebx
 00416973    push        esi
 00416974    push        edi
 00416975    mov         dword ptr [ebp-4],eax
 00416978    mov         eax,dword ptr [ebp-4]
 0041697B    movzx       eax,word ptr [eax]
 0041697E    cmp         eax,14
>00416981    ja          00416AAD
 00416987    jmp         dword ptr [eax*4+41698E]
 00416987    dd          004169E2
 00416987    dd          004169EC
 00416987    dd          00416A0C
 00416987    dd          00416A1B
 00416987    dd          00416A2A
 00416987    dd          00416AAD
 00416987    dd          00416AAD
 00416987    dd          00416AAD
 00416987    dd          00416AAD
 00416987    dd          00416AAD
 00416987    dd          00416AAD
 00416987    dd          00416A38
 00416987    dd          00416AAD
 00416987    dd          00416AAD
 00416987    dd          00416AAD
 00416987    dd          00416AAD
 00416987    dd          00416A4E
 00416987    dd          00416A64
 00416987    dd          00416A77
 00416987    dd          00416A8A
 00416987    dd          00416AA1
 004169E2    xor         eax,eax
 004169E4    mov         dword ptr [ebp-8],eax
>004169E7    jmp         00416AEF
 004169EC    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>004169F3    je          00416A02
 004169F5    mov         dx,4
 004169F9    mov         ax,1
 004169FD    call        VarCastError
 00416A02    xor         eax,eax
 00416A04    mov         dword ptr [ebp-8],eax
>00416A07    jmp         00416AEF
 00416A0C    mov         eax,dword ptr [ebp-4]
 00416A0F    fild        word ptr [eax+8]
 00416A12    fstp        dword ptr [ebp-8]
 00416A15    wait
>00416A16    jmp         00416AEF
 00416A1B    mov         eax,dword ptr [ebp-4]
 00416A1E    fild        dword ptr [eax+8]
 00416A21    fstp        dword ptr [ebp-8]
 00416A24    wait
>00416A25    jmp         00416AEF
 00416A2A    mov         eax,dword ptr [ebp-4]
 00416A2D    mov         eax,dword ptr [eax+8]
 00416A30    mov         dword ptr [ebp-8],eax
>00416A33    jmp         00416AEF
 00416A38    mov         eax,dword ptr [ebp-4]
 00416A3B    movsx       eax,word ptr [eax+8]
 00416A3F    mov         dword ptr [ebp-0C],eax
 00416A42    fild        dword ptr [ebp-0C]
 00416A45    fstp        dword ptr [ebp-8]
 00416A48    wait
>00416A49    jmp         00416AEF
 00416A4E    mov         eax,dword ptr [ebp-4]
 00416A51    movsx       eax,byte ptr [eax+8]
 00416A55    mov         dword ptr [ebp-0C],eax
 00416A58    fild        dword ptr [ebp-0C]
 00416A5B    fstp        dword ptr [ebp-8]
 00416A5E    wait
>00416A5F    jmp         00416AEF
 00416A64    mov         eax,dword ptr [ebp-4]
 00416A67    movzx       eax,byte ptr [eax+8]
 00416A6B    mov         dword ptr [ebp-0C],eax
 00416A6E    fild        dword ptr [ebp-0C]
 00416A71    fstp        dword ptr [ebp-8]
 00416A74    wait
>00416A75    jmp         00416AEF
 00416A77    mov         eax,dword ptr [ebp-4]
 00416A7A    movzx       eax,word ptr [eax+8]
 00416A7E    mov         dword ptr [ebp-0C],eax
 00416A81    fild        dword ptr [ebp-0C]
 00416A84    fstp        dword ptr [ebp-8]
 00416A87    wait
>00416A88    jmp         00416AEF
 00416A8A    mov         eax,dword ptr [ebp-4]
 00416A8D    mov         eax,dword ptr [eax+8]
 00416A90    mov         dword ptr [ebp-14],eax
 00416A93    xor         eax,eax
 00416A95    mov         dword ptr [ebp-10],eax
 00416A98    fild        qword ptr [ebp-14]
 00416A9B    fstp        dword ptr [ebp-8]
 00416A9E    wait
>00416A9F    jmp         00416AEF
 00416AA1    mov         eax,dword ptr [ebp-4]
 00416AA4    fild        qword ptr [eax+8]
 00416AA7    fstp        dword ptr [ebp-8]
 00416AAA    wait
>00416AAB    jmp         00416AEF
 00416AAD    xor         eax,eax
 00416AAF    push        ebp
 00416AB0    push        416AD1
 00416AB5    push        dword ptr fs:[eax]
 00416AB8    mov         dword ptr fs:[eax],esp
 00416ABB    mov         eax,dword ptr [ebp-4]
 00416ABE    call        004165D4
 00416AC3    fstp        dword ptr [ebp-8]
 00416AC6    wait
 00416AC7    xor         eax,eax
 00416AC9    pop         edx
 00416ACA    pop         ecx
 00416ACB    pop         ecx
 00416ACC    mov         dword ptr fs:[eax],edx
>00416ACF    jmp         00416AEF
>00416AD1    jmp         @HandleAnyException
 00416AD6    mov         eax,dword ptr [ebp-4]
 00416AD9    mov         ax,word ptr [eax]
 00416ADC    mov         dx,4
 00416AE0    call        HandleConversionException
 00416AE5    xor         eax,eax
 00416AE7    mov         dword ptr [ebp-8],eax
 00416AEA    call        @DoneExcept
 00416AEF    fld         dword ptr [ebp-8]
 00416AF2    pop         edi
 00416AF3    pop         esi
 00416AF4    pop         ebx
 00416AF5    mov         esp,ebp
 00416AF7    pop         ebp
 00416AF8    ret
*}
end;

//00416AFC
function VarToDateAsString(const V:TVarData):TDateTime;
begin
{*
 00416AFC    push        ebp
 00416AFD    mov         ebp,esp
 00416AFF    add         esp,0FFFFFFE0
 00416B02    push        ebx
 00416B03    xor         edx,edx
 00416B05    mov         dword ptr [ebp-20],edx
 00416B08    mov         dword ptr [ebp-1C],edx
 00416B0B    mov         dword ptr [ebp-0C],edx
 00416B0E    mov         ebx,eax
 00416B10    xor         eax,eax
 00416B12    push        ebp
 00416B13    push        416BD8
 00416B18    push        dword ptr fs:[eax]
 00416B1B    mov         dword ptr fs:[eax],esp
 00416B1E    mov         edx,ebx
 00416B20    lea         eax,[ebp-0C]
 00416B23    call        00418080
 00416B28    lea         eax,[ebp-8]
 00416B2B    push        eax
 00416B2C    push        0
 00416B2E    push        400
 00416B33    mov         eax,dword ptr [ebp-0C]
 00416B36    push        eax
 00416B37    mov         eax,[0056E120];^gvar_00571A0C
 00416B3C    mov         eax,dword ptr [eax]
 00416B3E    call        eax
 00416B40    mov         edx,eax
 00416B42    sub         edx,80020005
>00416B48    je          00416B54
 00416B4A    sub         edx,7FFDFFFB
>00416B50    jne         00416BA9
>00416B52    jmp         00416BB5
 00416B54    lea         eax,[ebp-1C]
 00416B57    mov         edx,dword ptr [ebp-0C]
 00416B5A    call        @LStrFromWStr
 00416B5F    mov         eax,dword ptr [ebp-1C]
 00416B62    lea         edx,[ebp-8]
 00416B65    call        0040FABC
 00416B6A    test        al,al
>00416B6C    jne         00416BB5
 00416B6E    lea         eax,[ebp-20]
 00416B71    mov         edx,dword ptr [ebp-0C]
 00416B74    call        @LStrFromWStr
 00416B79    mov         eax,dword ptr [ebp-20]
 00416B7C    lea         edx,[ebp-18]
 00416B7F    call        0040DE90
 00416B84    test        al,al
>00416B86    je          00416B96
 00416B88    mov         eax,dword ptr [ebp-18]
 00416B8B    mov         dword ptr [ebp-8],eax
 00416B8E    mov         eax,dword ptr [ebp-14]
 00416B91    mov         dword ptr [ebp-4],eax
>00416B94    jmp         00416BB5
 00416B96    mov         dx,word ptr [ebx]
 00416B99    mov         cx,7
 00416B9D    mov         eax,80020005
 00416BA2    call        VarResultCheck
>00416BA7    jmp         00416BB5
 00416BA9    mov         dx,word ptr [ebx]
 00416BAC    mov         cx,7
 00416BB0    call        VarResultCheck
 00416BB5    xor         eax,eax
 00416BB7    pop         edx
 00416BB8    pop         ecx
 00416BB9    pop         ecx
 00416BBA    mov         dword ptr fs:[eax],edx
 00416BBD    push        416BDF
 00416BC2    lea         eax,[ebp-20]
 00416BC5    mov         edx,2
 00416BCA    call        @LStrArrayClr
 00416BCF    lea         eax,[ebp-0C]
 00416BD2    call        @WStrClr
 00416BD7    ret
>00416BD8    jmp         @HandleFinally
>00416BDD    jmp         00416BC2
 00416BDF    fld         qword ptr [ebp-8]
 00416BE2    pop         ebx
 00416BE3    mov         esp,ebp
 00416BE5    pop         ebp
 00416BE6    ret
*}
end;

//00416BE8
function VarToDateAsDouble(const V:TVarData; const Value:Double):TDateTime;
begin
{*
 00416BE8    push        ebp
 00416BE9    mov         ebp,esp
 00416BEB    add         esp,0FFFFFFE8
 00416BEE    push        ebx
 00416BEF    mov         ebx,eax
 00416BF1    lea         eax,[ebp-18]
 00416BF4    push        eax
 00416BF5    call        oleaut32.VariantInit
 00416BFA    mov         word ptr [ebp-18],5
 00416C00    mov         eax,dword ptr [ebp+8]
 00416C03    mov         dword ptr [ebp-10],eax
 00416C06    mov         eax,dword ptr [ebp+0C]
 00416C09    mov         dword ptr [ebp-0C],eax
 00416C0C    push        7
 00416C0E    push        0
 00416C10    push        400
 00416C15    lea         eax,[ebp-18]
 00416C18    push        eax
 00416C19    lea         eax,[ebp-18]
 00416C1C    push        eax
 00416C1D    mov         eax,[0056E4D8];^gvar_005719CC
 00416C22    mov         eax,dword ptr [eax]
 00416C24    call        eax
 00416C26    mov         dx,word ptr [ebx]
 00416C29    mov         cx,7
 00416C2D    call        VarResultCheck
 00416C32    mov         eax,dword ptr [ebp-10]
 00416C35    mov         dword ptr [ebp-8],eax
 00416C38    mov         eax,dword ptr [ebp-0C]
 00416C3B    mov         dword ptr [ebp-4],eax
 00416C3E    fld         qword ptr [ebp-8]
 00416C41    pop         ebx
 00416C42    mov         esp,ebp
 00416C44    pop         ebp
 00416C45    ret         8
*}
end;

//00416C48
function VarToDateViaOS(const V:TVarData):TDateTime;
begin
{*
 00416C48    push        ebx
 00416C49    add         esp,0FFFFFFE8
 00416C4C    mov         ebx,eax
 00416C4E    lea         eax,[esp+8]
 00416C52    push        eax
 00416C53    call        oleaut32.VariantInit
 00416C58    push        7
 00416C5A    push        0
 00416C5C    push        400
 00416C61    push        ebx
 00416C62    lea         eax,[esp+18]
 00416C66    push        eax
 00416C67    mov         eax,[0056E4D8];^gvar_005719CC
 00416C6C    mov         eax,dword ptr [eax]
 00416C6E    call        eax
 00416C70    mov         dx,word ptr [ebx]
 00416C73    mov         cx,7
 00416C77    call        VarResultCheck
 00416C7C    mov         eax,dword ptr [esp+10]
 00416C80    mov         dword ptr [esp],eax
 00416C83    mov         eax,dword ptr [esp+14]
 00416C87    mov         dword ptr [esp+4],eax
 00416C8B    fld         qword ptr [esp]
 00416C8E    add         esp,18
 00416C91    pop         ebx
 00416C92    ret
*}
end;

//00416C94
function VarToDoubleAny(const V:TVarData):Double;
begin
{*
 00416C94    push        ebp
 00416C95    mov         ebp,esp
 00416C97    add         esp,0FFFFFFE8
 00416C9A    push        ebx
 00416C9B    mov         ebx,eax
 00416C9D    lea         eax,[ebp-18]
 00416CA0    push        eax
 00416CA1    call        oleaut32.VariantInit
 00416CA6    xor         eax,eax
 00416CA8    push        ebp
 00416CA9    push        416CE9
 00416CAE    push        dword ptr fs:[eax]
 00416CB1    mov         dword ptr fs:[eax],esp
 00416CB4    mov         edx,ebx
 00416CB6    lea         eax,[ebp-18]
 00416CB9    call        @VarCopy
 00416CBE    lea         eax,[ebp-18]
 00416CC1    call        dword ptr ds:[571A40]
 00416CC7    lea         eax,[ebp-18]
 00416CCA    call        00416D44
 00416CCF    fstp        qword ptr [ebp-8]
 00416CD2    wait
 00416CD3    xor         eax,eax
 00416CD5    pop         edx
 00416CD6    pop         ecx
 00416CD7    pop         ecx
 00416CD8    mov         dword ptr fs:[eax],edx
 00416CDB    push        416CF0
 00416CE0    lea         eax,[ebp-18]
 00416CE3    call        @VarClear
 00416CE8    ret
>00416CE9    jmp         @HandleFinally
>00416CEE    jmp         00416CE0
 00416CF0    fld         qword ptr [ebp-8]
 00416CF3    pop         ebx
 00416CF4    mov         esp,ebp
 00416CF6    pop         ebp
 00416CF7    ret
*}
end;

//00416CF8
function VarToDateCustom(const V:TVarData; var AValue:TDateTime):Boolean;
begin
{*
 00416CF8    push        ebx
 00416CF9    push        esi
 00416CFA    push        edi
 00416CFB    add         esp,0FFFFFFEC
 00416CFE    mov         edi,edx
 00416D00    mov         esi,eax
 00416D02    mov         edx,esp
 00416D04    mov         ax,word ptr [esi]
 00416D07    call        FindCustomVariantType
 00416D0C    mov         ebx,eax
 00416D0E    test        bl,bl
>00416D10    je          00416D3A
 00416D12    lea         eax,[esp+4]
 00416D16    push        eax
 00416D17    call        oleaut32.VariantInit
 00416D1C    push        7
 00416D1E    mov         ecx,esi
 00416D20    lea         edx,[esp+8]
 00416D24    mov         eax,dword ptr [esp+4]
 00416D28    mov         esi,dword ptr [eax]
 00416D2A    call        dword ptr [esi+1C]
 00416D2D    mov         eax,dword ptr [esp+0C]
 00416D31    mov         dword ptr [edi],eax
 00416D33    mov         eax,dword ptr [esp+10]
 00416D37    mov         dword ptr [edi+4],eax
 00416D3A    mov         eax,ebx
 00416D3C    add         esp,14
 00416D3F    pop         edi
 00416D40    pop         esi
 00416D41    pop         ebx
 00416D42    ret
*}
end;

//00416D44
{*function sub_00416D44(?:?):?;
begin
 00416D44    push        ebx
 00416D45    add         esp,0FFFFFFEC
 00416D48    mov         ebx,eax
 00416D4A    mov         ax,word ptr [ebx]
 00416D4D    movzx       edx,ax
 00416D50    cmp         edx,14
>00416D53    ja          00416EDA
 00416D59    jmp         dword ptr [edx*4+416D60]
 00416D59    dd          00416DB4
 00416D59    dd          00416DC2
 00416D59    dd          00416DE6
 00416D59    dd          00416DF2
 00416D59    dd          00416DFE
 00416D59    dd          00416DFE
 00416D59    dd          00416DFE
 00416D59    dd          00416E0E
 00416D59    dd          00416E20
 00416D59    dd          00416ECA
 00416D59    dd          00416EDA
 00416D59    dd          00416E30
 00416D59    dd          00416EB9
 00416D59    dd          00416ECA
 00416D59    dd          00416EDA
 00416D59    dd          00416EDA
 00416D59    dd          00416E45
 00416D59    dd          00416E5A
 00416D59    dd          00416E70
 00416D59    dd          00416E85
 00416D59    dd          00416E9F
 00416DB4    xor         eax,eax
 00416DB6    mov         dword ptr [esp],eax
 00416DB9    mov         dword ptr [esp+4],eax
>00416DBD    jmp         0041708A
 00416DC2    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00416DC9    je          00416DD8
 00416DCB    mov         dx,7
 00416DCF    mov         ax,1
 00416DD3    call        VarCastError
 00416DD8    xor         eax,eax
 00416DDA    mov         dword ptr [esp],eax
 00416DDD    mov         dword ptr [esp+4],eax
>00416DE1    jmp         0041708A
 00416DE6    fild        word ptr [ebx+8]
 00416DE9    fstp        qword ptr [esp]
 00416DEC    wait
>00416DED    jmp         0041708A
 00416DF2    fild        dword ptr [ebx+8]
 00416DF5    fstp        qword ptr [esp]
 00416DF8    wait
>00416DF9    jmp         0041708A
 00416DFE    mov         eax,ebx
 00416E00    call        VarToDateViaOS
 00416E05    fstp        qword ptr [esp]
 00416E08    wait
>00416E09    jmp         0041708A
 00416E0E    mov         eax,dword ptr [ebx+8]
 00416E11    mov         dword ptr [esp],eax
 00416E14    mov         eax,dword ptr [ebx+0C]
 00416E17    mov         dword ptr [esp+4],eax
>00416E1B    jmp         0041708A
 00416E20    mov         eax,ebx
 00416E22    call        VarToDateAsString
 00416E27    fstp        qword ptr [esp]
 00416E2A    wait
>00416E2B    jmp         0041708A
 00416E30    movsx       eax,word ptr [ebx+8]
 00416E34    mov         dword ptr [esp+8],eax
 00416E38    fild        dword ptr [esp+8]
 00416E3C    fstp        qword ptr [esp]
 00416E3F    wait
>00416E40    jmp         0041708A
 00416E45    movsx       eax,byte ptr [ebx+8]
 00416E49    mov         dword ptr [esp+8],eax
 00416E4D    fild        dword ptr [esp+8]
 00416E51    fstp        qword ptr [esp]
 00416E54    wait
>00416E55    jmp         0041708A
 00416E5A    xor         eax,eax
 00416E5C    mov         al,byte ptr [ebx+8]
 00416E5F    mov         dword ptr [esp+8],eax
 00416E63    fild        dword ptr [esp+8]
 00416E67    fstp        qword ptr [esp]
 00416E6A    wait
>00416E6B    jmp         0041708A
 00416E70    movzx       eax,word ptr [ebx+8]
 00416E74    mov         dword ptr [esp+8],eax
 00416E78    fild        dword ptr [esp+8]
 00416E7C    fstp        qword ptr [esp]
 00416E7F    wait
>00416E80    jmp         0041708A
 00416E85    mov         eax,dword ptr [ebx+8]
 00416E88    mov         dword ptr [esp+0C],eax
 00416E8C    xor         eax,eax
 00416E8E    mov         dword ptr [esp+10],eax
 00416E92    fild        qword ptr [esp+0C]
 00416E96    fstp        qword ptr [esp]
 00416E99    wait
>00416E9A    jmp         0041708A
 00416E9F    fild        qword ptr [ebx+8]
 00416EA2    add         esp,0FFFFFFF8
 00416EA5    fstp        qword ptr [esp]
 00416EA8    wait
 00416EA9    mov         eax,ebx
 00416EAB    call        VarToDateAsDouble
 00416EB0    fstp        qword ptr [esp]
 00416EB3    wait
>00416EB4    jmp         0041708A
 00416EB9    mov         eax,dword ptr [ebx+8]
 00416EBC    call        00416D44
 00416EC1    fstp        qword ptr [esp]
 00416EC4    wait
>00416EC5    jmp         0041708A
 00416ECA    mov         eax,ebx
 00416ECC    call        VarToDateViaOS
 00416ED1    fstp        qword ptr [esp]
 00416ED4    wait
>00416ED5    jmp         0041708A
 00416EDA    mov         edx,eax
 00416EDC    sub         dx,100
>00416EE1    je          00416EEA
 00416EE3    dec         dx
>00416EE6    je          00416EFA
>00416EE8    jmp         00416F0A
 00416EEA    mov         eax,ebx
 00416EEC    call        VarToDateAsString
 00416EF1    fstp        qword ptr [esp]
 00416EF4    wait
>00416EF5    jmp         0041708A
 00416EFA    mov         eax,ebx
 00416EFC    call        VarToDoubleAny
 00416F01    fstp        qword ptr [esp]
 00416F04    wait
>00416F05    jmp         0041708A
 00416F0A    test        ah,40
>00416F0D    je          00417072
 00416F13    movzx       eax,ax
 00416F16    and         eax,0FFFFBFFF
 00416F1B    cmp         eax,14
>00416F1E    ja          00417065
 00416F24    jmp         dword ptr [eax*4+416F2B]
 00416F24    dd          00417065
 00416F24    dd          00417065
 00416F24    dd          00416F7F
 00416F24    dd          00416F8D
 00416F24    dd          00416F9B
 00416F24    dd          00416F9B
 00416F24    dd          00416F9B
 00416F24    dd          00416FAB
 00416F24    dd          00416FBF
 00416F24    dd          00417065
 00416F24    dd          00417065
 00416F24    dd          00416FCF
 00416F24    dd          00417057
 00416F24    dd          00417065
 00416F24    dd          00417065
 00416F24    dd          00417065
 00416F24    dd          00416FE6
 00416F24    dd          00416FFD
 00416F24    dd          00417011
 00416F24    dd          00417025
 00416F24    dd          0041703E
 00416F7F    mov         eax,dword ptr [ebx+8]
 00416F82    fild        word ptr [eax]
 00416F84    fstp        qword ptr [esp]
 00416F87    wait
>00416F88    jmp         0041708A
 00416F8D    mov         eax,dword ptr [ebx+8]
 00416F90    fild        dword ptr [eax]
 00416F92    fstp        qword ptr [esp]
 00416F95    wait
>00416F96    jmp         0041708A
 00416F9B    mov         eax,ebx
 00416F9D    call        VarToDateViaOS
 00416FA2    fstp        qword ptr [esp]
 00416FA5    wait
>00416FA6    jmp         0041708A
 00416FAB    mov         eax,dword ptr [ebx+8]
 00416FAE    mov         edx,dword ptr [eax]
 00416FB0    mov         dword ptr [esp],edx
 00416FB3    mov         edx,dword ptr [eax+4]
 00416FB6    mov         dword ptr [esp+4],edx
>00416FBA    jmp         0041708A
 00416FBF    mov         eax,ebx
 00416FC1    call        VarToDateAsString
 00416FC6    fstp        qword ptr [esp]
 00416FC9    wait
>00416FCA    jmp         0041708A
 00416FCF    mov         eax,dword ptr [ebx+8]
 00416FD2    movsx       eax,word ptr [eax]
 00416FD5    mov         dword ptr [esp+8],eax
 00416FD9    fild        dword ptr [esp+8]
 00416FDD    fstp        qword ptr [esp]
 00416FE0    wait
>00416FE1    jmp         0041708A
 00416FE6    mov         eax,dword ptr [ebx+8]
 00416FE9    movsx       eax,byte ptr [eax]
 00416FEC    mov         dword ptr [esp+8],eax
 00416FF0    fild        dword ptr [esp+8]
 00416FF4    fstp        qword ptr [esp]
 00416FF7    wait
>00416FF8    jmp         0041708A
 00416FFD    mov         eax,dword ptr [ebx+8]
 00417000    movzx       eax,byte ptr [eax]
 00417003    mov         dword ptr [esp+8],eax
 00417007    fild        dword ptr [esp+8]
 0041700B    fstp        qword ptr [esp]
 0041700E    wait
>0041700F    jmp         0041708A
 00417011    mov         eax,dword ptr [ebx+8]
 00417014    movzx       eax,word ptr [eax]
 00417017    mov         dword ptr [esp+8],eax
 0041701B    fild        dword ptr [esp+8]
 0041701F    fstp        qword ptr [esp]
 00417022    wait
>00417023    jmp         0041708A
 00417025    mov         eax,dword ptr [ebx+8]
 00417028    mov         eax,dword ptr [eax]
 0041702A    mov         dword ptr [esp+0C],eax
 0041702E    xor         eax,eax
 00417030    mov         dword ptr [esp+10],eax
 00417034    fild        qword ptr [esp+0C]
 00417038    fstp        qword ptr [esp]
 0041703B    wait
>0041703C    jmp         0041708A
 0041703E    mov         eax,dword ptr [ebx+8]
 00417041    fild        qword ptr [eax]
 00417043    add         esp,0FFFFFFF8
 00417046    fstp        qword ptr [esp]
 00417049    wait
 0041704A    mov         eax,ebx
 0041704C    call        VarToDateAsDouble
 00417051    fstp        qword ptr [esp]
 00417054    wait
>00417055    jmp         0041708A
 00417057    mov         eax,dword ptr [ebx+8]
 0041705A    call        00416D44
 0041705F    fstp        qword ptr [esp]
 00417062    wait
>00417063    jmp         0041708A
 00417065    mov         eax,ebx
 00417067    call        VarToDateViaOS
 0041706C    fstp        qword ptr [esp]
 0041706F    wait
>00417070    jmp         0041708A
 00417072    mov         edx,esp
 00417074    mov         eax,ebx
 00417076    call        VarToDateCustom
 0041707B    test        al,al
>0041707D    jne         0041708A
 0041707F    mov         eax,ebx
 00417081    call        VarToDateViaOS
 00417086    fstp        qword ptr [esp]
 00417089    wait
 0041708A    fld         qword ptr [esp]
 0041708D    add         esp,14
 00417090    pop         ebx
 00417091    ret
end;*}

//00417094
function VarToCurrencyAsString(const V:TVarData):Currency;
begin
{*
 00417094    push        ebp
 00417095    mov         ebp,esp
 00417097    add         esp,0FFFFFFF0
 0041709A    push        ebx
 0041709B    xor         edx,edx
 0041709D    mov         dword ptr [ebp-10],edx
 004170A0    mov         dword ptr [ebp-0C],edx
 004170A3    mov         ebx,eax
 004170A5    xor         eax,eax
 004170A7    push        ebp
 004170A8    push        417140
 004170AD    push        dword ptr fs:[eax]
 004170B0    mov         dword ptr fs:[eax],esp
 004170B3    mov         edx,ebx
 004170B5    lea         eax,[ebp-0C]
 004170B8    call        00418080
 004170BD    lea         eax,[ebp-8]
 004170C0    push        eax
 004170C1    push        0
 004170C3    push        400
 004170C8    mov         eax,dword ptr [ebp-0C]
 004170CB    push        eax
 004170CC    mov         eax,[0056E588];^gvar_00571A10
 004170D1    mov         eax,dword ptr [eax]
 004170D3    call        eax
 004170D5    mov         edx,eax
 004170D7    sub         edx,80020005
>004170DD    je          004170E9
 004170DF    sub         edx,7FFDFFFB
>004170E5    jne         00417116
>004170E7    jmp         00417122
 004170E9    lea         eax,[ebp-10]
 004170EC    mov         edx,dword ptr [ebp-0C]
 004170EF    call        @LStrFromWStr
 004170F4    mov         eax,dword ptr [ebp-10]
 004170F7    lea         edx,[ebp-8]
 004170FA    call        0040DF00
 004170FF    test        al,al
>00417101    jne         00417122
 00417103    mov         dx,word ptr [ebx]
 00417106    mov         cx,6
 0041710A    mov         eax,80020005
 0041710F    call        VarResultCheck
>00417114    jmp         00417122
 00417116    mov         dx,word ptr [ebx]
 00417119    mov         cx,6
 0041711D    call        VarResultCheck
 00417122    xor         eax,eax
 00417124    pop         edx
 00417125    pop         ecx
 00417126    pop         ecx
 00417127    mov         dword ptr fs:[eax],edx
 0041712A    push        417147
 0041712F    lea         eax,[ebp-10]
 00417132    call        @LStrClr
 00417137    lea         eax,[ebp-0C]
 0041713A    call        @WStrClr
 0041713F    ret
>00417140    jmp         @HandleFinally
>00417145    jmp         0041712F
 00417147    fild        qword ptr [ebp-8]
 0041714A    pop         ebx
 0041714B    mov         esp,ebp
 0041714D    pop         ebp
 0041714E    ret
*}
end;

//00417150
function VarToCurrencyAsDouble(const V:TVarData; const Value:Double):Currency;
begin
{*
 00417150    push        ebp
 00417151    mov         ebp,esp
 00417153    add         esp,0FFFFFFE8
 00417156    push        ebx
 00417157    mov         ebx,eax
 00417159    lea         eax,[ebp-18]
 0041715C    push        eax
 0041715D    call        oleaut32.VariantInit
 00417162    mov         word ptr [ebp-18],5
 00417168    mov         eax,dword ptr [ebp+8]
 0041716B    mov         dword ptr [ebp-10],eax
 0041716E    mov         eax,dword ptr [ebp+0C]
 00417171    mov         dword ptr [ebp-0C],eax
 00417174    push        6
 00417176    push        0
 00417178    push        400
 0041717D    lea         eax,[ebp-18]
 00417180    push        eax
 00417181    lea         eax,[ebp-18]
 00417184    push        eax
 00417185    mov         eax,[0056E4D8];^gvar_005719CC
 0041718A    mov         eax,dword ptr [eax]
 0041718C    call        eax
 0041718E    mov         dx,word ptr [ebx]
 00417191    mov         cx,6
 00417195    call        VarResultCheck
 0041719A    mov         eax,dword ptr [ebp-10]
 0041719D    mov         dword ptr [ebp-8],eax
 004171A0    mov         eax,dword ptr [ebp-0C]
 004171A3    mov         dword ptr [ebp-4],eax
 004171A6    fild        qword ptr [ebp-8]
 004171A9    pop         ebx
 004171AA    mov         esp,ebp
 004171AC    pop         ebp
 004171AD    ret         8
*}
end;

//004171B0
function VarToCurrencyViaOS(const V:TVarData):Currency;
begin
{*
 004171B0    push        ebx
 004171B1    add         esp,0FFFFFFE8
 004171B4    mov         ebx,eax
 004171B6    lea         eax,[esp+8]
 004171BA    push        eax
 004171BB    call        oleaut32.VariantInit
 004171C0    push        6
 004171C2    push        0
 004171C4    push        400
 004171C9    push        ebx
 004171CA    lea         eax,[esp+18]
 004171CE    push        eax
 004171CF    mov         eax,[0056E4D8];^gvar_005719CC
 004171D4    mov         eax,dword ptr [eax]
 004171D6    call        eax
 004171D8    mov         dx,word ptr [ebx]
 004171DB    mov         cx,6
 004171DF    call        VarResultCheck
 004171E4    mov         eax,dword ptr [esp+10]
 004171E8    mov         dword ptr [esp],eax
 004171EB    mov         eax,dword ptr [esp+14]
 004171EF    mov         dword ptr [esp+4],eax
 004171F3    fild        qword ptr [esp]
 004171F6    add         esp,18
 004171F9    pop         ebx
 004171FA    ret
*}
end;

//004171FC
function VarToCurrencyAny(const V:TVarData):Currency;
begin
{*
 004171FC    push        ebp
 004171FD    mov         ebp,esp
 004171FF    add         esp,0FFFFFFE8
 00417202    push        ebx
 00417203    mov         ebx,eax
 00417205    lea         eax,[ebp-18]
 00417208    push        eax
 00417209    call        oleaut32.VariantInit
 0041720E    xor         eax,eax
 00417210    push        ebp
 00417211    push        417251
 00417216    push        dword ptr fs:[eax]
 00417219    mov         dword ptr fs:[eax],esp
 0041721C    mov         edx,ebx
 0041721E    lea         eax,[ebp-18]
 00417221    call        @VarCopy
 00417226    lea         eax,[ebp-18]
 00417229    call        dword ptr ds:[571A40]
 0041722F    lea         eax,[ebp-18]
 00417232    call        @VarToCurrency
 00417237    fistp       qword ptr [ebp-8]
 0041723A    wait
 0041723B    xor         eax,eax
 0041723D    pop         edx
 0041723E    pop         ecx
 0041723F    pop         ecx
 00417240    mov         dword ptr fs:[eax],edx
 00417243    push        417258
 00417248    lea         eax,[ebp-18]
 0041724B    call        @VarClear
 00417250    ret
>00417251    jmp         @HandleFinally
>00417256    jmp         00417248
 00417258    fild        qword ptr [ebp-8]
 0041725B    pop         ebx
 0041725C    mov         esp,ebp
 0041725E    pop         ebp
 0041725F    ret
*}
end;

//00417260
function VarToCurrencyCustom(const V:TVarData; var AValue:Currency):Boolean;
begin
{*
 00417260    push        ebx
 00417261    push        esi
 00417262    push        edi
 00417263    add         esp,0FFFFFFEC
 00417266    mov         edi,edx
 00417268    mov         esi,eax
 0041726A    mov         edx,esp
 0041726C    mov         ax,word ptr [esi]
 0041726F    call        FindCustomVariantType
 00417274    mov         ebx,eax
 00417276    test        bl,bl
>00417278    je          004172A2
 0041727A    lea         eax,[esp+4]
 0041727E    push        eax
 0041727F    call        oleaut32.VariantInit
 00417284    push        6
 00417286    mov         ecx,esi
 00417288    lea         edx,[esp+8]
 0041728C    mov         eax,dword ptr [esp+4]
 00417290    mov         esi,dword ptr [eax]
 00417292    call        dword ptr [esi+1C]
 00417295    mov         eax,dword ptr [esp+0C]
 00417299    mov         dword ptr [edi],eax
 0041729B    mov         eax,dword ptr [esp+10]
 0041729F    mov         dword ptr [edi+4],eax
 004172A2    mov         eax,ebx
 004172A4    add         esp,14
 004172A7    pop         edi
 004172A8    pop         esi
 004172A9    pop         ebx
 004172AA    ret
*}
end;

//004172AC
function @VarToCurrency(const V:TVarData):Currency;
begin
{*
 004172AC    push        ebx
 004172AD    add         esp,0FFFFFFEC
 004172B0    mov         ebx,eax
 004172B2    mov         ax,word ptr [ebx]
 004172B5    movzx       edx,ax
 004172B8    cmp         edx,14
>004172BB    ja          0041747C
 004172C1    jmp         dword ptr [edx*4+4172C8]
 004172C1    dd          0041731C
 004172C1    dd          0041732A
 004172C1    dd          0041734E
 004172C1    dd          00417360
 004172C1    dd          00417372
 004172C1    dd          00417372
 004172C1    dd          00417382
 004172C1    dd          00417394
 004172C1    dd          004173A4
 004172C1    dd          0041746C
 004172C1    dd          0041747C
 004172C1    dd          004173B4
 004172C1    dd          0041745B
 004172C1    dd          0041746C
 004172C1    dd          0041747C
 004172C1    dd          0041747C
 004172C1    dd          004173CF
 004172C1    dd          004173EA
 004172C1    dd          00417406
 004172C1    dd          00417421
 004172C1    dd          00417441
 0041731C    xor         eax,eax
 0041731E    mov         dword ptr [esp],eax
 00417321    mov         dword ptr [esp+4],eax
>00417325    jmp         00417669
 0041732A    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00417331    je          00417340
 00417333    mov         dx,6
 00417337    mov         ax,1
 0041733B    call        VarCastError
 00417340    xor         eax,eax
 00417342    mov         dword ptr [esp],eax
 00417345    mov         dword ptr [esp+4],eax
>00417349    jmp         00417669
 0041734E    fild        word ptr [ebx+8]
 00417351    fmul        dword ptr ds:[417674]
 00417357    fistp       qword ptr [esp]
 0041735A    wait
>0041735B    jmp         00417669
 00417360    fild        dword ptr [ebx+8]
 00417363    fmul        dword ptr ds:[417674]
 00417369    fistp       qword ptr [esp]
 0041736C    wait
>0041736D    jmp         00417669
 00417372    mov         eax,ebx
 00417374    call        VarToCurrencyViaOS
 00417379    fistp       qword ptr [esp]
 0041737C    wait
>0041737D    jmp         00417669
 00417382    mov         eax,dword ptr [ebx+8]
 00417385    mov         dword ptr [esp],eax
 00417388    mov         eax,dword ptr [ebx+0C]
 0041738B    mov         dword ptr [esp+4],eax
>0041738F    jmp         00417669
 00417394    mov         eax,ebx
 00417396    call        VarToCurrencyViaOS
 0041739B    fistp       qword ptr [esp]
 0041739E    wait
>0041739F    jmp         00417669
 004173A4    mov         eax,ebx
 004173A6    call        VarToCurrencyAsString
 004173AB    fistp       qword ptr [esp]
 004173AE    wait
>004173AF    jmp         00417669
 004173B4    movsx       eax,word ptr [ebx+8]
 004173B8    mov         dword ptr [esp+8],eax
 004173BC    fild        dword ptr [esp+8]
 004173C0    fmul        dword ptr ds:[417674]
 004173C6    fistp       qword ptr [esp]
 004173C9    wait
>004173CA    jmp         00417669
 004173CF    movsx       eax,byte ptr [ebx+8]
 004173D3    mov         dword ptr [esp+8],eax
 004173D7    fild        dword ptr [esp+8]
 004173DB    fmul        dword ptr ds:[417674]
 004173E1    fistp       qword ptr [esp]
 004173E4    wait
>004173E5    jmp         00417669
 004173EA    xor         eax,eax
 004173EC    mov         al,byte ptr [ebx+8]
 004173EF    mov         dword ptr [esp+8],eax
 004173F3    fild        dword ptr [esp+8]
 004173F7    fmul        dword ptr ds:[417674]
 004173FD    fistp       qword ptr [esp]
 00417400    wait
>00417401    jmp         00417669
 00417406    movzx       eax,word ptr [ebx+8]
 0041740A    mov         dword ptr [esp+8],eax
 0041740E    fild        dword ptr [esp+8]
 00417412    fmul        dword ptr ds:[417674]
 00417418    fistp       qword ptr [esp]
 0041741B    wait
>0041741C    jmp         00417669
 00417421    mov         eax,dword ptr [ebx+8]
 00417424    mov         dword ptr [esp+0C],eax
 00417428    xor         eax,eax
 0041742A    mov         dword ptr [esp+10],eax
 0041742E    fild        qword ptr [esp+0C]
 00417432    fmul        dword ptr ds:[417674]
 00417438    fistp       qword ptr [esp]
 0041743B    wait
>0041743C    jmp         00417669
 00417441    fild        qword ptr [ebx+8]
 00417444    add         esp,0FFFFFFF8
 00417447    fstp        qword ptr [esp]
 0041744A    wait
 0041744B    mov         eax,ebx
 0041744D    call        VarToCurrencyAsDouble
 00417452    fistp       qword ptr [esp]
 00417455    wait
>00417456    jmp         00417669
 0041745B    mov         eax,dword ptr [ebx+8]
 0041745E    call        @VarToCurrency
 00417463    fistp       qword ptr [esp]
 00417466    wait
>00417467    jmp         00417669
 0041746C    mov         eax,ebx
 0041746E    call        VarToCurrencyViaOS
 00417473    fistp       qword ptr [esp]
 00417476    wait
>00417477    jmp         00417669
 0041747C    mov         edx,eax
 0041747E    sub         dx,100
>00417483    je          0041748C
 00417485    dec         dx
>00417488    je          0041749C
>0041748A    jmp         004174AC
 0041748C    mov         eax,ebx
 0041748E    call        VarToCurrencyAsString
 00417493    fistp       qword ptr [esp]
 00417496    wait
>00417497    jmp         00417669
 0041749C    mov         eax,ebx
 0041749E    call        VarToCurrencyAny
 004174A3    fistp       qword ptr [esp]
 004174A6    wait
>004174A7    jmp         00417669
 004174AC    test        ah,40
>004174AF    je          00417651
 004174B5    movzx       eax,ax
 004174B8    and         eax,0FFFFBFFF
 004174BD    cmp         eax,14
>004174C0    ja          00417644
 004174C6    jmp         dword ptr [eax*4+4174CD]
 004174C6    dd          00417644
 004174C6    dd          00417644
 004174C6    dd          00417521
 004174C6    dd          00417535
 004174C6    dd          00417549
 004174C6    dd          00417549
 004174C6    dd          00417559
 004174C6    dd          0041756D
 004174C6    dd          0041757D
 004174C6    dd          00417644
 004174C6    dd          00417644
 004174C6    dd          0041758D
 004174C6    dd          00417636
 004174C6    dd          00417644
 004174C6    dd          00417644
 004174C6    dd          00417644
 004174C6    dd          004175AA
 004174C6    dd          004175C7
 004174C6    dd          004175E4
 004174C6    dd          004175FE
 004174C6    dd          0041761D
 00417521    mov         eax,dword ptr [ebx+8]
 00417524    fild        word ptr [eax]
 00417526    fmul        dword ptr ds:[417674]
 0041752C    fistp       qword ptr [esp]
 0041752F    wait
>00417530    jmp         00417669
 00417535    mov         eax,dword ptr [ebx+8]
 00417538    fild        dword ptr [eax]
 0041753A    fmul        dword ptr ds:[417674]
 00417540    fistp       qword ptr [esp]
 00417543    wait
>00417544    jmp         00417669
 00417549    mov         eax,ebx
 0041754B    call        VarToCurrencyViaOS
 00417550    fistp       qword ptr [esp]
 00417553    wait
>00417554    jmp         00417669
 00417559    mov         eax,dword ptr [ebx+8]
 0041755C    mov         edx,dword ptr [eax]
 0041755E    mov         dword ptr [esp],edx
 00417561    mov         edx,dword ptr [eax+4]
 00417564    mov         dword ptr [esp+4],edx
>00417568    jmp         00417669
 0041756D    mov         eax,ebx
 0041756F    call        VarToCurrencyViaOS
 00417574    fistp       qword ptr [esp]
 00417577    wait
>00417578    jmp         00417669
 0041757D    mov         eax,ebx
 0041757F    call        VarToCurrencyAsString
 00417584    fistp       qword ptr [esp]
 00417587    wait
>00417588    jmp         00417669
 0041758D    mov         eax,dword ptr [ebx+8]
 00417590    movsx       eax,word ptr [eax]
 00417593    mov         dword ptr [esp+8],eax
 00417597    fild        dword ptr [esp+8]
 0041759B    fmul        dword ptr ds:[417674]
 004175A1    fistp       qword ptr [esp]
 004175A4    wait
>004175A5    jmp         00417669
 004175AA    mov         eax,dword ptr [ebx+8]
 004175AD    movsx       eax,byte ptr [eax]
 004175B0    mov         dword ptr [esp+8],eax
 004175B4    fild        dword ptr [esp+8]
 004175B8    fmul        dword ptr ds:[417674]
 004175BE    fistp       qword ptr [esp]
 004175C1    wait
>004175C2    jmp         00417669
 004175C7    mov         eax,dword ptr [ebx+8]
 004175CA    movzx       eax,byte ptr [eax]
 004175CD    mov         dword ptr [esp+8],eax
 004175D1    fild        dword ptr [esp+8]
 004175D5    fmul        dword ptr ds:[417674]
 004175DB    fistp       qword ptr [esp]
 004175DE    wait
>004175DF    jmp         00417669
 004175E4    mov         eax,dword ptr [ebx+8]
 004175E7    movzx       eax,word ptr [eax]
 004175EA    mov         dword ptr [esp+8],eax
 004175EE    fild        dword ptr [esp+8]
 004175F2    fmul        dword ptr ds:[417674]
 004175F8    fistp       qword ptr [esp]
 004175FB    wait
>004175FC    jmp         00417669
 004175FE    mov         eax,dword ptr [ebx+8]
 00417601    mov         eax,dword ptr [eax]
 00417603    mov         dword ptr [esp+0C],eax
 00417607    xor         eax,eax
 00417609    mov         dword ptr [esp+10],eax
 0041760D    fild        qword ptr [esp+0C]
 00417611    fmul        dword ptr ds:[417674]
 00417617    fistp       qword ptr [esp]
 0041761A    wait
>0041761B    jmp         00417669
 0041761D    mov         eax,dword ptr [ebx+8]
 00417620    fild        qword ptr [eax]
 00417622    add         esp,0FFFFFFF8
 00417625    fstp        qword ptr [esp]
 00417628    wait
 00417629    mov         eax,ebx
 0041762B    call        VarToCurrencyAsDouble
 00417630    fistp       qword ptr [esp]
 00417633    wait
>00417634    jmp         00417669
 00417636    mov         eax,dword ptr [ebx+8]
 00417639    call        @VarToCurrency
 0041763E    fistp       qword ptr [esp]
 00417641    wait
>00417642    jmp         00417669
 00417644    mov         eax,ebx
 00417646    call        VarToCurrencyViaOS
 0041764B    fistp       qword ptr [esp]
 0041764E    wait
>0041764F    jmp         00417669
 00417651    mov         edx,esp
 00417653    mov         eax,ebx
 00417655    call        VarToCurrencyCustom
 0041765A    test        al,al
>0041765C    jne         00417669
 0041765E    mov         eax,ebx
 00417660    call        VarToCurrencyViaOS
 00417665    fistp       qword ptr [esp]
 00417668    wait
 00417669    fild        qword ptr [esp]
 0041766C    add         esp,14
 0041766F    pop         ebx
 00417670    ret
*}
end;

//00417678
function CurrToWStrViaOS(const AValue:Currency):WideString;
begin
{*
 00417678    push        ebp
 00417679    mov         ebp,esp
 0041767B    push        ebx
 0041767C    mov         ebx,eax
 0041767E    mov         eax,ebx
 00417680    call        @WStrClr
 00417685    push        eax
 00417686    push        0
 00417688    push        400
 0041768D    push        dword ptr [ebp+0C]
 00417690    push        dword ptr [ebp+8]
 00417693    mov         eax,[0056E088];^gvar_00571A18
 00417698    mov         eax,dword ptr [eax]
 0041769A    call        eax
 0041769C    mov         cx,8
 004176A0    mov         dx,6
 004176A4    call        VarResultCheck
 004176A9    pop         ebx
 004176AA    pop         ebp
 004176AB    ret         8
*}
end;

//004176B0
function DateToWStrViaOS(const AValue:TDateTime):WideString;
begin
{*
 004176B0    push        ebp
 004176B1    mov         ebp,esp
 004176B3    push        ebx
 004176B4    mov         ebx,eax
 004176B6    mov         eax,ebx
 004176B8    call        @WStrClr
 004176BD    push        eax
 004176BE    push        0
 004176C0    push        400
 004176C5    push        dword ptr [ebp+0C]
 004176C8    push        dword ptr [ebp+8]
 004176CB    mov         eax,[0056E300];^gvar_00571A1C
 004176D0    mov         eax,dword ptr [eax]
 004176D2    call        eax
 004176D4    mov         cx,8
 004176D8    mov         dx,7
 004176DC    call        VarResultCheck
 004176E1    pop         ebx
 004176E2    pop         ebp
 004176E3    ret         8
*}
end;

//004176E8
function BoolToWStrViaOS(const AValue:WordBool):WideString;
begin
{*
 004176E8    push        ebp
 004176E9    mov         ebp,esp
 004176EB    xor         ecx,ecx
 004176ED    push        ecx
 004176EE    push        ecx
 004176EF    push        ecx
 004176F0    push        ecx
 004176F1    push        ebx
 004176F2    push        esi
 004176F3    mov         ebx,edx
 004176F5    mov         esi,eax
 004176F7    xor         eax,eax
 004176F9    push        ebp
 004176FA    push        41779E
 004176FF    push        dword ptr fs:[eax]
 00417702    mov         dword ptr fs:[eax],esp
 00417705    mov         eax,ebx
 00417707    call        @WStrClr
 0041770C    push        eax
 0041770D    push        0
 0041770F    push        400
 00417714    push        esi
 00417715    mov         eax,[0056E49C];^gvar_00571A20
 0041771A    mov         eax,dword ptr [eax]
 0041771C    call        eax
 0041771E    mov         cx,8
 00417722    mov         dx,0B
 00417726    call        VarResultCheck
 0041772B    mov         al,[0056BB48]
 00417730    sub         al,1
>00417732    jb          00417783
>00417734    je          0041773C
 00417736    dec         al
>00417738    je          0041775D
>0041773A    jmp         0041777E
 0041773C    lea         eax,[ebp-8]
 0041773F    mov         edx,dword ptr [ebx]
 00417741    call        @LStrFromWStr
 00417746    mov         eax,dword ptr [ebp-8]
 00417749    lea         edx,[ebp-4]
 0041774C    call        0040BD34
 00417751    mov         edx,dword ptr [ebp-4]
 00417754    mov         eax,ebx
 00417756    call        @WStrFromLStr
>0041775B    jmp         00417783
 0041775D    lea         eax,[ebp-10]
 00417760    mov         edx,dword ptr [ebx]
 00417762    call        @LStrFromWStr
 00417767    mov         eax,dword ptr [ebp-10]
 0041776A    lea         edx,[ebp-0C]
 0041776D    call        0040BCC8
 00417772    mov         edx,dword ptr [ebp-0C]
 00417775    mov         eax,ebx
 00417777    call        @WStrFromLStr
>0041777C    jmp         00417783
 0041777E    call        VarInvalidOp
 00417783    xor         eax,eax
 00417785    pop         edx
 00417786    pop         ecx
 00417787    pop         ecx
 00417788    mov         dword ptr fs:[eax],edx
 0041778B    push        4177A5
 00417790    lea         eax,[ebp-10]
 00417793    mov         edx,4
 00417798    call        @LStrArrayClr
 0041779D    ret
>0041779E    jmp         @HandleFinally
>004177A3    jmp         00417790
 004177A5    pop         esi
 004177A6    pop         ebx
 004177A7    mov         esp,ebp
 004177A9    pop         ebp
 004177AA    ret
*}
end;

//004177AC
function VarToLStrViaOS(const V:TVarData):AnsiString;
begin
{*
 004177AC    push        ebp
 004177AD    mov         ebp,esp
 004177AF    add         esp,0FFFFFFE8
 004177B2    push        ebx
 004177B3    push        esi
 004177B4    xor         ecx,ecx
 004177B6    mov         dword ptr [ebp-14],ecx
 004177B9    mov         dword ptr [ebp-18],ecx
 004177BC    mov         esi,edx
 004177BE    mov         ebx,eax
 004177C0    xor         eax,eax
 004177C2    push        ebp
 004177C3    push        41786B
 004177C8    push        dword ptr fs:[eax]
 004177CB    mov         dword ptr fs:[eax],esp
 004177CE    lea         eax,[ebp-10]
 004177D1    push        eax
 004177D2    call        oleaut32.VariantInit
 004177D7    xor         eax,eax
 004177D9    push        ebp
 004177DA    push        417849
 004177DF    push        dword ptr fs:[eax]
 004177E2    mov         dword ptr fs:[eax],esp
 004177E5    push        8
 004177E7    push        0
 004177E9    push        400
 004177EE    push        ebx
 004177EF    lea         eax,[ebp-10]
 004177F2    push        eax
 004177F3    mov         eax,[0056E4D8];^gvar_005719CC
 004177F8    mov         eax,dword ptr [eax]
 004177FA    call        eax
 004177FC    mov         dx,word ptr [ebx]
 004177FF    mov         cx,100
 00417803    call        VarResultCheck
 00417808    lea         eax,[ebp-14]
 0041780B    push        eax
 0041780C    lea         eax,[ebp-18]
 0041780F    mov         edx,dword ptr [ebp-8]
 00417812    call        @WStrFromPWChar
 00417817    mov         eax,dword ptr [ebp-18]
 0041781A    mov         ecx,7FFFFFFF
 0041781F    mov         edx,1
 00417824    call        @WStrCopy
 00417829    mov         edx,dword ptr [ebp-14]
 0041782C    mov         eax,esi
 0041782E    call        @LStrFromWStr
 00417833    xor         eax,eax
 00417835    pop         edx
 00417836    pop         ecx
 00417837    pop         ecx
 00417838    mov         dword ptr fs:[eax],edx
 0041783B    push        417850
 00417840    lea         eax,[ebp-10]
 00417843    call        @VarClear
 00417848    ret
>00417849    jmp         @HandleFinally
>0041784E    jmp         00417840
 00417850    xor         eax,eax
 00417852    pop         edx
 00417853    pop         ecx
 00417854    pop         ecx
 00417855    mov         dword ptr fs:[eax],edx
 00417858    push        417872
 0041785D    lea         eax,[ebp-18]
 00417860    mov         edx,2
 00417865    call        @WStrArrayClr
 0041786A    ret
>0041786B    jmp         @HandleFinally
>00417870    jmp         0041785D
 00417872    pop         esi
 00417873    pop         ebx
 00417874    mov         esp,ebp
 00417876    pop         ebp
 00417877    ret
*}
end;

//00417878
function VarToLStrAny(const V:TVarData):AnsiString;
begin
{*
 00417878    push        ebp
 00417879    mov         ebp,esp
 0041787B    add         esp,0FFFFFFF0
 0041787E    push        ebx
 0041787F    push        esi
 00417880    mov         esi,edx
 00417882    mov         ebx,eax
 00417884    lea         eax,[ebp-10]
 00417887    push        eax
 00417888    call        oleaut32.VariantInit
 0041788D    xor         eax,eax
 0041788F    push        ebp
 00417890    push        4178CE
 00417895    push        dword ptr fs:[eax]
 00417898    mov         dword ptr fs:[eax],esp
 0041789B    mov         edx,ebx
 0041789D    lea         eax,[ebp-10]
 004178A0    call        @VarCopy
 004178A5    lea         eax,[ebp-10]
 004178A8    call        dword ptr ds:[571A40]
 004178AE    lea         edx,[ebp-10]
 004178B1    mov         eax,esi
 004178B3    call        00417960
 004178B8    xor         eax,eax
 004178BA    pop         edx
 004178BB    pop         ecx
 004178BC    pop         ecx
 004178BD    mov         dword ptr fs:[eax],edx
 004178C0    push        4178D5
 004178C5    lea         eax,[ebp-10]
 004178C8    call        @VarClear
 004178CD    ret
>004178CE    jmp         @HandleFinally
>004178D3    jmp         004178C5
 004178D5    pop         esi
 004178D6    pop         ebx
 004178D7    mov         esp,ebp
 004178D9    pop         ebp
 004178DA    ret
*}
end;

//004178DC
function VarToLStrCustom(const V:TVarData; var AValue:AnsiString):Boolean;
begin
{*
 004178DC    push        ebp
 004178DD    mov         ebp,esp
 004178DF    add         esp,0FFFFFFE4
 004178E2    push        ebx
 004178E3    mov         dword ptr [ebp-4],edx
 004178E6    mov         ebx,eax
 004178E8    mov         eax,dword ptr [ebp-4]
 004178EB    test        eax,eax
>004178ED    je          004178F3
 004178EF    xor         edx,edx
 004178F1    mov         dword ptr [eax],edx
 004178F3    lea         edx,[ebp-0C]
 004178F6    mov         ax,word ptr [ebx]
 004178F9    call        FindCustomVariantType
 004178FE    mov         byte ptr [ebp-5],al
 00417901    cmp         byte ptr [ebp-5],0
>00417905    je          00417958
 00417907    lea         eax,[ebp-1C]
 0041790A    push        eax
 0041790B    call        oleaut32.VariantInit
 00417910    xor         eax,eax
 00417912    push        ebp
 00417913    push        417951
 00417918    push        dword ptr fs:[eax]
 0041791B    mov         dword ptr fs:[eax],esp
 0041791E    push        100
 00417923    mov         ecx,ebx
 00417925    lea         edx,[ebp-1C]
 00417928    mov         eax,dword ptr [ebp-0C]
 0041792B    mov         ebx,dword ptr [eax]
 0041792D    call        dword ptr [ebx+1C]
 00417930    mov         eax,dword ptr [ebp-4]
 00417933    mov         edx,dword ptr [ebp-14]
 00417936    call        @LStrAsg
 0041793B    xor         eax,eax
 0041793D    pop         edx
 0041793E    pop         ecx
 0041793F    pop         ecx
 00417940    mov         dword ptr fs:[eax],edx
 00417943    push        417958
 00417948    lea         eax,[ebp-1C]
 0041794B    call        @VarClear
 00417950    ret
>00417951    jmp         @HandleFinally
>00417956    jmp         00417948
 00417958    mov         al,byte ptr [ebp-5]
 0041795B    pop         ebx
 0041795C    mov         esp,ebp
 0041795E    pop         ebp
 0041795F    ret
*}
end;

//00417960
{*procedure sub_00417960(?:?; ?:TVarData);
begin
 00417960    push        ebp
 00417961    mov         ebp,esp
 00417963    mov         ecx,0E
 00417968    push        0
 0041796A    push        0
 0041796C    dec         ecx
>0041796D    jne         00417968
 0041796F    push        ecx
 00417970    push        ebx
 00417971    push        esi
 00417972    mov         ebx,edx
 00417974    mov         esi,eax
 00417976    xor         eax,eax
 00417978    push        ebp
 00417979    push        417E8D
 0041797E    push        dword ptr fs:[eax]
 00417981    mov         dword ptr fs:[eax],esp
 00417984    mov         ax,word ptr [ebx]
 00417987    movzx       edx,ax
 0041798A    cmp         edx,14
>0041798D    ja          00417BCA
 00417993    jmp         dword ptr [edx*4+41799A]
 00417993    dd          004179EE
 00417993    dd          004179FA
 00417993    dd          00417A22
 00417993    dd          00417A3D
 00417993    dd          00417A57
 00417993    dd          00417A78
 00417993    dd          00417A99
 00417993    dd          00417AB6
 00417993    dd          00417AD3
 00417993    dd          00417BB1
 00417993    dd          00417BCA
 00417993    dd          00417AF8
 00417993    dd          00417BA0
 00417993    dd          00417BB1
 00417993    dd          00417BCA
 00417993    dd          00417BCA
 00417993    dd          00417B13
 00417993    dd          00417B2E
 00417993    dd          00417B4A
 00417993    dd          00417B65
 00417993    dd          00417B83
 004179EE    mov         eax,esi
 004179F0    call        @LStrClr
>004179F5    jmp         00417E3E
 004179FA    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00417A01    je          00417A10
 00417A03    mov         dx,100
 00417A07    mov         ax,1
 00417A0B    call        VarCastError
 00417A10    mov         eax,esi
 00417A12    mov         edx,dword ptr ds:[56BB40];0x0 gvar_0056BB40
 00417A18    call        @LStrAsg
>00417A1D    jmp         00417E3E
 00417A22    lea         edx,[ebp-4]
 00417A25    movsx       eax,word ptr [ebx+8]
 00417A29    call        IntToStr
 00417A2E    mov         edx,dword ptr [ebp-4]
 00417A31    mov         eax,esi
 00417A33    call        @LStrAsg
>00417A38    jmp         00417E3E
 00417A3D    lea         edx,[ebp-8]
 00417A40    mov         eax,dword ptr [ebx+8]
 00417A43    call        IntToStr
 00417A48    mov         edx,dword ptr [ebp-8]
 00417A4B    mov         eax,esi
 00417A4D    call        @LStrAsg
>00417A52    jmp         00417E3E
 00417A57    fld         dword ptr [ebx+8]
 00417A5A    add         esp,0FFFFFFF4
 00417A5D    fstp        tbyte ptr [esp]
 00417A60    wait
 00417A61    lea         eax,[ebp-0C]
 00417A64    call        0040DD8C
 00417A69    mov         edx,dword ptr [ebp-0C]
 00417A6C    mov         eax,esi
 00417A6E    call        @LStrAsg
>00417A73    jmp         00417E3E
 00417A78    fld         qword ptr [ebx+8]
 00417A7B    add         esp,0FFFFFFF4
 00417A7E    fstp        tbyte ptr [esp]
 00417A81    wait
 00417A82    lea         eax,[ebp-10]
 00417A85    call        0040DD8C
 00417A8A    mov         edx,dword ptr [ebp-10]
 00417A8D    mov         eax,esi
 00417A8F    call        @LStrAsg
>00417A94    jmp         00417E3E
 00417A99    push        dword ptr [ebx+0C]
 00417A9C    push        dword ptr [ebx+8]
 00417A9F    lea         eax,[ebp-14]
 00417AA2    call        CurrToWStrViaOS
 00417AA7    mov         edx,dword ptr [ebp-14]
 00417AAA    mov         eax,esi
 00417AAC    call        @LStrFromWStr
>00417AB1    jmp         00417E3E
 00417AB6    push        dword ptr [ebx+0C]
 00417AB9    push        dword ptr [ebx+8]
 00417ABC    lea         eax,[ebp-18]
 00417ABF    call        DateToWStrViaOS
 00417AC4    mov         edx,dword ptr [ebp-18]
 00417AC7    mov         eax,esi
 00417AC9    call        @LStrFromWStr
>00417ACE    jmp         00417E3E
 00417AD3    lea         eax,[ebp-1C]
 00417AD6    push        eax
 00417AD7    mov         eax,dword ptr [ebx+8]
 00417ADA    mov         ecx,7FFFFFFF
 00417ADF    mov         edx,1
 00417AE4    call        @WStrCopy
 00417AE9    mov         edx,dword ptr [ebp-1C]
 00417AEC    mov         eax,esi
 00417AEE    call        @LStrFromWStr
>00417AF3    jmp         00417E3E
 00417AF8    lea         edx,[ebp-20]
 00417AFB    mov         ax,word ptr [ebx+8]
 00417AFF    call        BoolToWStrViaOS
 00417B04    mov         edx,dword ptr [ebp-20]
 00417B07    mov         eax,esi
 00417B09    call        @LStrFromWStr
>00417B0E    jmp         00417E3E
 00417B13    lea         edx,[ebp-24]
 00417B16    movsx       eax,byte ptr [ebx+8]
 00417B1A    call        IntToStr
 00417B1F    mov         edx,dword ptr [ebp-24]
 00417B22    mov         eax,esi
 00417B24    call        @LStrAsg
>00417B29    jmp         00417E3E
 00417B2E    lea         edx,[ebp-28]
 00417B31    xor         eax,eax
 00417B33    mov         al,byte ptr [ebx+8]
 00417B36    call        IntToStr
 00417B3B    mov         edx,dword ptr [ebp-28]
 00417B3E    mov         eax,esi
 00417B40    call        @LStrAsg
>00417B45    jmp         00417E3E
 00417B4A    lea         edx,[ebp-2C]
 00417B4D    movzx       eax,word ptr [ebx+8]
 00417B51    call        IntToStr
 00417B56    mov         edx,dword ptr [ebp-2C]
 00417B59    mov         eax,esi
 00417B5B    call        @LStrAsg
>00417B60    jmp         00417E3E
 00417B65    mov         eax,dword ptr [ebx+8]
 00417B68    xor         edx,edx
 00417B6A    push        edx
 00417B6B    push        eax
 00417B6C    lea         eax,[ebp-30]
 00417B6F    call        IntToStr
 00417B74    mov         edx,dword ptr [ebp-30]
 00417B77    mov         eax,esi
 00417B79    call        @LStrAsg
>00417B7E    jmp         00417E3E
 00417B83    push        dword ptr [ebx+0C]
 00417B86    push        dword ptr [ebx+8]
 00417B89    lea         eax,[ebp-34]
 00417B8C    call        IntToStr
 00417B91    mov         edx,dword ptr [ebp-34]
 00417B94    mov         eax,esi
 00417B96    call        @LStrAsg
>00417B9B    jmp         00417E3E
 00417BA0    mov         eax,dword ptr [ebx+8]
 00417BA3    mov         edx,eax
 00417BA5    mov         eax,esi
 00417BA7    call        00417960
>00417BAC    jmp         00417E3E
 00417BB1    lea         edx,[ebp-38]
 00417BB4    mov         eax,ebx
 00417BB6    call        VarToLStrViaOS
 00417BBB    mov         edx,dword ptr [ebp-38]
 00417BBE    mov         eax,esi
 00417BC0    call        @LStrAsg
>00417BC5    jmp         00417E3E
 00417BCA    mov         edx,eax
 00417BCC    sub         dx,100
>00417BD1    je          00417BDA
 00417BD3    dec         dx
>00417BD6    je          00417BE9
>00417BD8    jmp         00417C02
 00417BDA    mov         eax,esi
 00417BDC    mov         edx,dword ptr [ebx+8]
 00417BDF    call        @LStrAsg
>00417BE4    jmp         00417E3E
 00417BE9    lea         edx,[ebp-3C]
 00417BEC    mov         eax,ebx
 00417BEE    call        VarToLStrAny
 00417BF3    mov         edx,dword ptr [ebp-3C]
 00417BF6    mov         eax,esi
 00417BF8    call        @LStrAsg
>00417BFD    jmp         00417E3E
 00417C02    test        ah,40
>00417C05    je          00417E16
 00417C0B    movzx       eax,ax
 00417C0E    and         eax,0FFFFBFFF
 00417C13    cmp         eax,14
>00417C16    ja          00417E00
 00417C1C    jmp         dword ptr [eax*4+417C23]
 00417C1C    dd          00417E00
 00417C1C    dd          00417E00
 00417C1C    dd          00417C77
 00417C1C    dd          00417C94
 00417C1C    dd          00417CB0
 00417C1C    dd          00417CD3
 00417C1C    dd          00417CF6
 00417C1C    dd          00417D15
 00417C1C    dd          00417D34
 00417C1C    dd          00417E00
 00417C1C    dd          00417E00
 00417C1C    dd          00417D45
 00417C1C    dd          00417DF2
 00417C1C    dd          00417E00
 00417C1C    dd          00417E00
 00417C1C    dd          00417E00
 00417C1C    dd          00417D62
 00417C1C    dd          00417D7F
 00417C1C    dd          00417D9C
 00417C1C    dd          00417DB9
 00417C1C    dd          00417DD6
 00417C77    lea         edx,[ebp-40]
 00417C7A    mov         eax,dword ptr [ebx+8]
 00417C7D    movsx       eax,word ptr [eax]
 00417C80    call        IntToStr
 00417C85    mov         edx,dword ptr [ebp-40]
 00417C88    mov         eax,esi
 00417C8A    call        @LStrAsg
>00417C8F    jmp         00417E3E
 00417C94    lea         edx,[ebp-44]
 00417C97    mov         eax,dword ptr [ebx+8]
 00417C9A    mov         eax,dword ptr [eax]
 00417C9C    call        IntToStr
 00417CA1    mov         edx,dword ptr [ebp-44]
 00417CA4    mov         eax,esi
 00417CA6    call        @LStrAsg
>00417CAB    jmp         00417E3E
 00417CB0    mov         eax,dword ptr [ebx+8]
 00417CB3    fld         dword ptr [eax]
 00417CB5    add         esp,0FFFFFFF4
 00417CB8    fstp        tbyte ptr [esp]
 00417CBB    wait
 00417CBC    lea         eax,[ebp-48]
 00417CBF    call        0040DD8C
 00417CC4    mov         edx,dword ptr [ebp-48]
 00417CC7    mov         eax,esi
 00417CC9    call        @LStrAsg
>00417CCE    jmp         00417E3E
 00417CD3    mov         eax,dword ptr [ebx+8]
 00417CD6    fld         qword ptr [eax]
 00417CD8    add         esp,0FFFFFFF4
 00417CDB    fstp        tbyte ptr [esp]
 00417CDE    wait
 00417CDF    lea         eax,[ebp-4C]
 00417CE2    call        0040DD8C
 00417CE7    mov         edx,dword ptr [ebp-4C]
 00417CEA    mov         eax,esi
 00417CEC    call        @LStrAsg
>00417CF1    jmp         00417E3E
 00417CF6    mov         eax,dword ptr [ebx+8]
 00417CF9    push        dword ptr [eax+4]
 00417CFC    push        dword ptr [eax]
 00417CFE    lea         eax,[ebp-50]
 00417D01    call        CurrToWStrViaOS
 00417D06    mov         edx,dword ptr [ebp-50]
 00417D09    mov         eax,esi
 00417D0B    call        @LStrFromWStr
>00417D10    jmp         00417E3E
 00417D15    mov         eax,dword ptr [ebx+8]
 00417D18    push        dword ptr [eax+4]
 00417D1B    push        dword ptr [eax]
 00417D1D    lea         eax,[ebp-54]
 00417D20    call        DateToWStrViaOS
 00417D25    mov         edx,dword ptr [ebp-54]
 00417D28    mov         eax,esi
 00417D2A    call        @LStrFromWStr
>00417D2F    jmp         00417E3E
 00417D34    mov         eax,esi
 00417D36    mov         edx,dword ptr [ebx+8]
 00417D39    mov         edx,dword ptr [edx]
 00417D3B    call        @LStrFromPWChar
>00417D40    jmp         00417E3E
 00417D45    lea         edx,[ebp-58]
 00417D48    mov         eax,dword ptr [ebx+8]
 00417D4B    mov         ax,word ptr [eax]
 00417D4E    call        BoolToWStrViaOS
 00417D53    mov         edx,dword ptr [ebp-58]
 00417D56    mov         eax,esi
 00417D58    call        @LStrFromWStr
>00417D5D    jmp         00417E3E
 00417D62    lea         edx,[ebp-5C]
 00417D65    mov         eax,dword ptr [ebx+8]
 00417D68    movsx       eax,byte ptr [eax]
 00417D6B    call        IntToStr
 00417D70    mov         edx,dword ptr [ebp-5C]
 00417D73    mov         eax,esi
 00417D75    call        @LStrAsg
>00417D7A    jmp         00417E3E
 00417D7F    lea         edx,[ebp-60]
 00417D82    mov         eax,dword ptr [ebx+8]
 00417D85    movzx       eax,byte ptr [eax]
 00417D88    call        IntToStr
 00417D8D    mov         edx,dword ptr [ebp-60]
 00417D90    mov         eax,esi
 00417D92    call        @LStrAsg
>00417D97    jmp         00417E3E
 00417D9C    lea         edx,[ebp-64]
 00417D9F    mov         eax,dword ptr [ebx+8]
 00417DA2    movzx       eax,word ptr [eax]
 00417DA5    call        IntToStr
 00417DAA    mov         edx,dword ptr [ebp-64]
 00417DAD    mov         eax,esi
 00417DAF    call        @LStrAsg
>00417DB4    jmp         00417E3E
 00417DB9    mov         eax,dword ptr [ebx+8]
 00417DBC    mov         eax,dword ptr [eax]
 00417DBE    xor         edx,edx
 00417DC0    push        edx
 00417DC1    push        eax
 00417DC2    lea         eax,[ebp-68]
 00417DC5    call        IntToStr
 00417DCA    mov         edx,dword ptr [ebp-68]
 00417DCD    mov         eax,esi
 00417DCF    call        @LStrAsg
>00417DD4    jmp         00417E3E
 00417DD6    mov         eax,dword ptr [ebx+8]
 00417DD9    push        dword ptr [eax+4]
 00417DDC    push        dword ptr [eax]
 00417DDE    lea         eax,[ebp-6C]
 00417DE1    call        IntToStr
 00417DE6    mov         edx,dword ptr [ebp-6C]
 00417DE9    mov         eax,esi
 00417DEB    call        @LStrAsg
>00417DF0    jmp         00417E3E
 00417DF2    mov         eax,dword ptr [ebx+8]
 00417DF5    mov         edx,eax
 00417DF7    mov         eax,esi
 00417DF9    call        00417960
>00417DFE    jmp         00417E3E
 00417E00    lea         edx,[ebp-70]
 00417E03    mov         eax,ebx
 00417E05    call        VarToLStrViaOS
 00417E0A    mov         edx,dword ptr [ebp-70]
 00417E0D    mov         eax,esi
 00417E0F    call        @LStrAsg
>00417E14    jmp         00417E3E
 00417E16    mov         eax,esi
 00417E18    call        @LStrClr
 00417E1D    mov         edx,eax
 00417E1F    mov         eax,ebx
 00417E21    call        VarToLStrCustom
 00417E26    test        al,al
>00417E28    jne         00417E3E
 00417E2A    lea         edx,[ebp-74]
 00417E2D    mov         eax,ebx
 00417E2F    call        VarToLStrViaOS
 00417E34    mov         edx,dword ptr [ebp-74]
 00417E37    mov         eax,esi
 00417E39    call        @LStrAsg
 00417E3E    xor         eax,eax
 00417E40    pop         edx
 00417E41    pop         ecx
 00417E42    pop         ecx
 00417E43    mov         dword ptr fs:[eax],edx
 00417E46    push        417E94
 00417E4B    lea         eax,[ebp-74]
 00417E4E    mov         edx,7
 00417E53    call        @LStrArrayClr
 00417E58    lea         eax,[ebp-58]
 00417E5B    mov         edx,3
 00417E60    call        @WStrArrayClr
 00417E65    lea         eax,[ebp-4C]
 00417E68    mov         edx,0B
 00417E6D    call        @LStrArrayClr
 00417E72    lea         eax,[ebp-20]
 00417E75    mov         edx,4
 00417E7A    call        @WStrArrayClr
 00417E7F    lea         eax,[ebp-10]
 00417E82    mov         edx,4
 00417E87    call        @LStrArrayClr
 00417E8C    ret
>00417E8D    jmp         @HandleFinally
>00417E92    jmp         00417E4B
 00417E94    pop         esi
 00417E95    pop         ebx
 00417E96    mov         esp,ebp
 00417E98    pop         ebp
 00417E99    ret
end;*}

//00417E9C
function VarToWStrViaOS(const V:TVarData):WideString;
begin
{*
 00417E9C    push        ebp
 00417E9D    mov         ebp,esp
 00417E9F    add         esp,0FFFFFFEC
 00417EA2    push        ebx
 00417EA3    push        esi
 00417EA4    xor         ecx,ecx
 00417EA6    mov         dword ptr [ebp-14],ecx
 00417EA9    mov         esi,edx
 00417EAB    mov         ebx,eax
 00417EAD    xor         eax,eax
 00417EAF    push        ebp
 00417EB0    push        417F46
 00417EB5    push        dword ptr fs:[eax]
 00417EB8    mov         dword ptr fs:[eax],esp
 00417EBB    lea         eax,[ebp-10]
 00417EBE    push        eax
 00417EBF    call        oleaut32.VariantInit
 00417EC4    xor         eax,eax
 00417EC6    push        ebp
 00417EC7    push        417F29
 00417ECC    push        dword ptr fs:[eax]
 00417ECF    mov         dword ptr fs:[eax],esp
 00417ED2    push        8
 00417ED4    push        0
 00417ED6    push        400
 00417EDB    push        ebx
 00417EDC    lea         eax,[ebp-10]
 00417EDF    push        eax
 00417EE0    mov         eax,[0056E4D8];^gvar_005719CC
 00417EE5    mov         eax,dword ptr [eax]
 00417EE7    call        eax
 00417EE9    mov         dx,word ptr [ebx]
 00417EEC    mov         cx,8
 00417EF0    call        VarResultCheck
 00417EF5    push        esi
 00417EF6    lea         eax,[ebp-14]
 00417EF9    mov         edx,dword ptr [ebp-8]
 00417EFC    call        @WStrFromPWChar
 00417F01    mov         eax,dword ptr [ebp-14]
 00417F04    mov         ecx,7FFFFFFF
 00417F09    mov         edx,1
 00417F0E    call        @WStrCopy
 00417F13    xor         eax,eax
 00417F15    pop         edx
 00417F16    pop         ecx
 00417F17    pop         ecx
 00417F18    mov         dword ptr fs:[eax],edx
 00417F1B    push        417F30
 00417F20    lea         eax,[ebp-10]
 00417F23    call        @VarClear
 00417F28    ret
>00417F29    jmp         @HandleFinally
>00417F2E    jmp         00417F20
 00417F30    xor         eax,eax
 00417F32    pop         edx
 00417F33    pop         ecx
 00417F34    pop         ecx
 00417F35    mov         dword ptr fs:[eax],edx
 00417F38    push        417F4D
 00417F3D    lea         eax,[ebp-14]
 00417F40    call        @WStrClr
 00417F45    ret
>00417F46    jmp         @HandleFinally
>00417F4B    jmp         00417F3D
 00417F4D    pop         esi
 00417F4E    pop         ebx
 00417F4F    mov         esp,ebp
 00417F51    pop         ebp
 00417F52    ret
*}
end;

//00417F54
function VarToWStrAny(const V:TVarData):WideString;
begin
{*
 00417F54    push        ebp
 00417F55    mov         ebp,esp
 00417F57    add         esp,0FFFFFFF0
 00417F5A    push        ebx
 00417F5B    push        esi
 00417F5C    mov         esi,edx
 00417F5E    mov         ebx,eax
 00417F60    lea         eax,[ebp-10]
 00417F63    push        eax
 00417F64    call        oleaut32.VariantInit
 00417F69    xor         eax,eax
 00417F6B    push        ebp
 00417F6C    push        417FAA
 00417F71    push        dword ptr fs:[eax]
 00417F74    mov         dword ptr fs:[eax],esp
 00417F77    mov         edx,ebx
 00417F79    lea         eax,[ebp-10]
 00417F7C    call        @VarCopy
 00417F81    lea         eax,[ebp-10]
 00417F84    call        dword ptr ds:[571A40]
 00417F8A    lea         edx,[ebp-10]
 00417F8D    mov         eax,esi
 00417F8F    call        00418080
 00417F94    xor         eax,eax
 00417F96    pop         edx
 00417F97    pop         ecx
 00417F98    pop         ecx
 00417F99    mov         dword ptr fs:[eax],edx
 00417F9C    push        417FB1
 00417FA1    lea         eax,[ebp-10]
 00417FA4    call        @VarClear
 00417FA9    ret
>00417FAA    jmp         @HandleFinally
>00417FAF    jmp         00417FA1
 00417FB1    pop         esi
 00417FB2    pop         ebx
 00417FB3    mov         esp,ebp
 00417FB5    pop         ebp
 00417FB6    ret
*}
end;

//00417FB8
function VarToWStrCustom(const V:TVarData; var AValue:WideString):Boolean;
begin
{*
 00417FB8    push        ebp
 00417FB9    mov         ebp,esp
 00417FBB    add         esp,0FFFFFFE0
 00417FBE    push        ebx
 00417FBF    xor         ecx,ecx
 00417FC1    mov         dword ptr [ebp-20],ecx
 00417FC4    mov         dword ptr [ebp-4],edx
 00417FC7    mov         ebx,eax
 00417FC9    mov         eax,dword ptr [ebp-4]
 00417FCC    test        eax,eax
>00417FCE    je          00417FD4
 00417FD0    xor         edx,edx
 00417FD2    mov         dword ptr [eax],edx
 00417FD4    xor         eax,eax
 00417FD6    push        ebp
 00417FD7    push        418070
 00417FDC    push        dword ptr fs:[eax]
 00417FDF    mov         dword ptr fs:[eax],esp
 00417FE2    lea         edx,[ebp-0C]
 00417FE5    mov         ax,word ptr [ebx]
 00417FE8    call        FindCustomVariantType
 00417FED    mov         byte ptr [ebp-5],al
 00417FF0    cmp         byte ptr [ebp-5],0
>00417FF4    je          0041805A
 00417FF6    lea         eax,[ebp-1C]
 00417FF9    push        eax
 00417FFA    call        oleaut32.VariantInit
 00417FFF    xor         eax,eax
 00418001    push        ebp
 00418002    push        418053
 00418007    push        dword ptr fs:[eax]
 0041800A    mov         dword ptr fs:[eax],esp
 0041800D    push        8
 0041800F    mov         ecx,ebx
 00418011    lea         edx,[ebp-1C]
 00418014    mov         eax,dword ptr [ebp-0C]
 00418017    mov         ebx,dword ptr [eax]
 00418019    call        dword ptr [ebx+1C]
 0041801C    mov         eax,dword ptr [ebp-4]
 0041801F    push        eax
 00418020    lea         eax,[ebp-20]
 00418023    mov         edx,dword ptr [ebp-14]
 00418026    call        @WStrFromPWChar
 0041802B    mov         eax,dword ptr [ebp-20]
 0041802E    mov         ecx,7FFFFFFF
 00418033    mov         edx,1
 00418038    call        @WStrCopy
 0041803D    xor         eax,eax
 0041803F    pop         edx
 00418040    pop         ecx
 00418041    pop         ecx
 00418042    mov         dword ptr fs:[eax],edx
 00418045    push        41805A
 0041804A    lea         eax,[ebp-1C]
 0041804D    call        @VarClear
 00418052    ret
>00418053    jmp         @HandleFinally
>00418058    jmp         0041804A
 0041805A    xor         eax,eax
 0041805C    pop         edx
 0041805D    pop         ecx
 0041805E    pop         ecx
 0041805F    mov         dword ptr fs:[eax],edx
 00418062    push        418077
 00418067    lea         eax,[ebp-20]
 0041806A    call        @WStrClr
 0041806F    ret
>00418070    jmp         @HandleFinally
>00418075    jmp         00418067
 00418077    mov         al,byte ptr [ebp-5]
 0041807A    pop         ebx
 0041807B    mov         esp,ebp
 0041807D    pop         ebp
 0041807E    ret
*}
end;

//00418080
{*procedure sub_00418080(?:?; ?:TVarData);
begin
 00418080    push        ebp
 00418081    mov         ebp,esp
 00418083    mov         ecx,0E
 00418088    push        0
 0041808A    push        0
 0041808C    dec         ecx
>0041808D    jne         00418088
 0041808F    push        ebx
 00418090    push        esi
 00418091    mov         ebx,edx
 00418093    mov         esi,eax
 00418095    xor         eax,eax
 00418097    push        ebp
 00418098    push        4185C6
 0041809D    push        dword ptr fs:[eax]
 004180A0    mov         dword ptr fs:[eax],esp
 004180A3    mov         ax,word ptr [ebx]
 004180A6    movzx       edx,ax
 004180A9    cmp         edx,14
>004180AC    ja          004182DC
 004180B2    jmp         dword ptr [edx*4+4180B9]
 004180B2    dd          0041810D
 004180B2    dd          00418119
 004180B2    dd          00418141
 004180B2    dd          0041815C
 004180B2    dd          00418176
 004180B2    dd          00418197
 004180B2    dd          004181B8
 004180B2    dd          004181D5
 004180B2    dd          004181F2
 004180B2    dd          004182C3
 004180B2    dd          004182DC
 004180B2    dd          0041820A
 004180B2    dd          004182B2
 004180B2    dd          004182C3
 004180B2    dd          004182DC
 004180B2    dd          004182DC
 004180B2    dd          00418225
 004180B2    dd          00418240
 004180B2    dd          0041825C
 004180B2    dd          00418277
 004180B2    dd          00418295
 0041810D    mov         eax,esi
 0041810F    call        @WStrClr
>00418114    jmp         00418550
 00418119    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00418120    je          0041812F
 00418122    mov         dx,8
 00418126    mov         ax,1
 0041812A    call        VarCastError
 0041812F    mov         eax,esi
 00418131    mov         edx,dword ptr ds:[56BB40];0x0 gvar_0056BB40
 00418137    call        @WStrFromLStr
>0041813C    jmp         00418550
 00418141    lea         edx,[ebp-4]
 00418144    movsx       eax,word ptr [ebx+8]
 00418148    call        IntToStr
 0041814D    mov         edx,dword ptr [ebp-4]
 00418150    mov         eax,esi
 00418152    call        @WStrFromLStr
>00418157    jmp         00418550
 0041815C    lea         edx,[ebp-8]
 0041815F    mov         eax,dword ptr [ebx+8]
 00418162    call        IntToStr
 00418167    mov         edx,dword ptr [ebp-8]
 0041816A    mov         eax,esi
 0041816C    call        @WStrFromLStr
>00418171    jmp         00418550
 00418176    fld         dword ptr [ebx+8]
 00418179    add         esp,0FFFFFFF4
 0041817C    fstp        tbyte ptr [esp]
 0041817F    wait
 00418180    lea         eax,[ebp-0C]
 00418183    call        0040DD8C
 00418188    mov         edx,dword ptr [ebp-0C]
 0041818B    mov         eax,esi
 0041818D    call        @WStrFromLStr
>00418192    jmp         00418550
 00418197    fld         qword ptr [ebx+8]
 0041819A    add         esp,0FFFFFFF4
 0041819D    fstp        tbyte ptr [esp]
 004181A0    wait
 004181A1    lea         eax,[ebp-10]
 004181A4    call        0040DD8C
 004181A9    mov         edx,dword ptr [ebp-10]
 004181AC    mov         eax,esi
 004181AE    call        @WStrFromLStr
>004181B3    jmp         00418550
 004181B8    push        dword ptr [ebx+0C]
 004181BB    push        dword ptr [ebx+8]
 004181BE    lea         eax,[ebp-14]
 004181C1    call        CurrToWStrViaOS
 004181C6    mov         edx,dword ptr [ebp-14]
 004181C9    mov         eax,esi
 004181CB    call        @WStrAsg
>004181D0    jmp         00418550
 004181D5    push        dword ptr [ebx+0C]
 004181D8    push        dword ptr [ebx+8]
 004181DB    lea         eax,[ebp-18]
 004181DE    call        DateToWStrViaOS
 004181E3    mov         edx,dword ptr [ebp-18]
 004181E6    mov         eax,esi
 004181E8    call        @WStrAsg
>004181ED    jmp         00418550
 004181F2    push        esi
 004181F3    mov         eax,dword ptr [ebx+8]
 004181F6    mov         ecx,7FFFFFFF
 004181FB    mov         edx,1
 00418200    call        @WStrCopy
>00418205    jmp         00418550
 0041820A    lea         edx,[ebp-1C]
 0041820D    mov         ax,word ptr [ebx+8]
 00418211    call        BoolToWStrViaOS
 00418216    mov         edx,dword ptr [ebp-1C]
 00418219    mov         eax,esi
 0041821B    call        @WStrAsg
>00418220    jmp         00418550
 00418225    lea         edx,[ebp-20]
 00418228    movsx       eax,byte ptr [ebx+8]
 0041822C    call        IntToStr
 00418231    mov         edx,dword ptr [ebp-20]
 00418234    mov         eax,esi
 00418236    call        @WStrFromLStr
>0041823B    jmp         00418550
 00418240    lea         edx,[ebp-24]
 00418243    xor         eax,eax
 00418245    mov         al,byte ptr [ebx+8]
 00418248    call        IntToStr
 0041824D    mov         edx,dword ptr [ebp-24]
 00418250    mov         eax,esi
 00418252    call        @WStrFromLStr
>00418257    jmp         00418550
 0041825C    lea         edx,[ebp-28]
 0041825F    movzx       eax,word ptr [ebx+8]
 00418263    call        IntToStr
 00418268    mov         edx,dword ptr [ebp-28]
 0041826B    mov         eax,esi
 0041826D    call        @WStrFromLStr
>00418272    jmp         00418550
 00418277    mov         eax,dword ptr [ebx+8]
 0041827A    xor         edx,edx
 0041827C    push        edx
 0041827D    push        eax
 0041827E    lea         eax,[ebp-2C]
 00418281    call        IntToStr
 00418286    mov         edx,dword ptr [ebp-2C]
 00418289    mov         eax,esi
 0041828B    call        @WStrFromLStr
>00418290    jmp         00418550
 00418295    push        dword ptr [ebx+0C]
 00418298    push        dword ptr [ebx+8]
 0041829B    lea         eax,[ebp-30]
 0041829E    call        IntToStr
 004182A3    mov         edx,dword ptr [ebp-30]
 004182A6    mov         eax,esi
 004182A8    call        @WStrFromLStr
>004182AD    jmp         00418550
 004182B2    mov         eax,dword ptr [ebx+8]
 004182B5    mov         edx,eax
 004182B7    mov         eax,esi
 004182B9    call        00418080
>004182BE    jmp         00418550
 004182C3    lea         edx,[ebp-34]
 004182C6    mov         eax,ebx
 004182C8    call        VarToWStrViaOS
 004182CD    mov         edx,dword ptr [ebp-34]
 004182D0    mov         eax,esi
 004182D2    call        @WStrAsg
>004182D7    jmp         00418550
 004182DC    mov         edx,eax
 004182DE    sub         dx,100
>004182E3    je          004182EC
 004182E5    dec         dx
>004182E8    je          004182FB
>004182EA    jmp         00418314
 004182EC    mov         eax,esi
 004182EE    mov         edx,dword ptr [ebx+8]
 004182F1    call        @WStrFromLStr
>004182F6    jmp         00418550
 004182FB    lea         edx,[ebp-38]
 004182FE    mov         eax,ebx
 00418300    call        VarToWStrAny
 00418305    mov         edx,dword ptr [ebp-38]
 00418308    mov         eax,esi
 0041830A    call        @WStrAsg
>0041830F    jmp         00418550
 00418314    test        ah,40
>00418317    je          00418528
 0041831D    movzx       eax,ax
 00418320    and         eax,0FFFFBFFF
 00418325    cmp         eax,14
>00418328    ja          00418512
 0041832E    jmp         dword ptr [eax*4+418335]
 0041832E    dd          00418512
 0041832E    dd          00418512
 0041832E    dd          00418389
 0041832E    dd          004183A6
 0041832E    dd          004183C2
 0041832E    dd          004183E5
 0041832E    dd          00418408
 0041832E    dd          00418427
 0041832E    dd          00418446
 0041832E    dd          00418512
 0041832E    dd          00418512
 0041832E    dd          00418457
 0041832E    dd          00418504
 0041832E    dd          00418512
 0041832E    dd          00418512
 0041832E    dd          00418512
 0041832E    dd          00418474
 0041832E    dd          00418491
 0041832E    dd          004184AE
 0041832E    dd          004184CB
 0041832E    dd          004184E8
 00418389    lea         edx,[ebp-3C]
 0041838C    mov         eax,dword ptr [ebx+8]
 0041838F    movsx       eax,word ptr [eax]
 00418392    call        IntToStr
 00418397    mov         edx,dword ptr [ebp-3C]
 0041839A    mov         eax,esi
 0041839C    call        @WStrFromLStr
>004183A1    jmp         00418550
 004183A6    lea         edx,[ebp-40]
 004183A9    mov         eax,dword ptr [ebx+8]
 004183AC    mov         eax,dword ptr [eax]
 004183AE    call        IntToStr
 004183B3    mov         edx,dword ptr [ebp-40]
 004183B6    mov         eax,esi
 004183B8    call        @WStrFromLStr
>004183BD    jmp         00418550
 004183C2    mov         eax,dword ptr [ebx+8]
 004183C5    fld         dword ptr [eax]
 004183C7    add         esp,0FFFFFFF4
 004183CA    fstp        tbyte ptr [esp]
 004183CD    wait
 004183CE    lea         eax,[ebp-44]
 004183D1    call        0040DD8C
 004183D6    mov         edx,dword ptr [ebp-44]
 004183D9    mov         eax,esi
 004183DB    call        @WStrFromLStr
>004183E0    jmp         00418550
 004183E5    mov         eax,dword ptr [ebx+8]
 004183E8    fld         qword ptr [eax]
 004183EA    add         esp,0FFFFFFF4
 004183ED    fstp        tbyte ptr [esp]
 004183F0    wait
 004183F1    lea         eax,[ebp-48]
 004183F4    call        0040DD8C
 004183F9    mov         edx,dword ptr [ebp-48]
 004183FC    mov         eax,esi
 004183FE    call        @WStrFromLStr
>00418403    jmp         00418550
 00418408    mov         eax,dword ptr [ebx+8]
 0041840B    push        dword ptr [eax+4]
 0041840E    push        dword ptr [eax]
 00418410    lea         eax,[ebp-4C]
 00418413    call        CurrToWStrViaOS
 00418418    mov         edx,dword ptr [ebp-4C]
 0041841B    mov         eax,esi
 0041841D    call        @WStrAsg
>00418422    jmp         00418550
 00418427    mov         eax,dword ptr [ebx+8]
 0041842A    push        dword ptr [eax+4]
 0041842D    push        dword ptr [eax]
 0041842F    lea         eax,[ebp-50]
 00418432    call        DateToWStrViaOS
 00418437    mov         edx,dword ptr [ebp-50]
 0041843A    mov         eax,esi
 0041843C    call        @WStrAsg
>00418441    jmp         00418550
 00418446    mov         eax,esi
 00418448    mov         edx,dword ptr [ebx+8]
 0041844B    mov         edx,dword ptr [edx]
 0041844D    call        @WStrFromPWChar
>00418452    jmp         00418550
 00418457    lea         edx,[ebp-54]
 0041845A    mov         eax,dword ptr [ebx+8]
 0041845D    mov         ax,word ptr [eax]
 00418460    call        BoolToWStrViaOS
 00418465    mov         edx,dword ptr [ebp-54]
 00418468    mov         eax,esi
 0041846A    call        @WStrAsg
>0041846F    jmp         00418550
 00418474    lea         edx,[ebp-58]
 00418477    mov         eax,dword ptr [ebx+8]
 0041847A    movsx       eax,byte ptr [eax]
 0041847D    call        IntToStr
 00418482    mov         edx,dword ptr [ebp-58]
 00418485    mov         eax,esi
 00418487    call        @WStrFromLStr
>0041848C    jmp         00418550
 00418491    lea         edx,[ebp-5C]
 00418494    mov         eax,dword ptr [ebx+8]
 00418497    movzx       eax,byte ptr [eax]
 0041849A    call        IntToStr
 0041849F    mov         edx,dword ptr [ebp-5C]
 004184A2    mov         eax,esi
 004184A4    call        @WStrFromLStr
>004184A9    jmp         00418550
 004184AE    lea         edx,[ebp-60]
 004184B1    mov         eax,dword ptr [ebx+8]
 004184B4    movzx       eax,word ptr [eax]
 004184B7    call        IntToStr
 004184BC    mov         edx,dword ptr [ebp-60]
 004184BF    mov         eax,esi
 004184C1    call        @WStrFromLStr
>004184C6    jmp         00418550
 004184CB    mov         eax,dword ptr [ebx+8]
 004184CE    mov         eax,dword ptr [eax]
 004184D0    xor         edx,edx
 004184D2    push        edx
 004184D3    push        eax
 004184D4    lea         eax,[ebp-64]
 004184D7    call        IntToStr
 004184DC    mov         edx,dword ptr [ebp-64]
 004184DF    mov         eax,esi
 004184E1    call        @WStrFromLStr
>004184E6    jmp         00418550
 004184E8    mov         eax,dword ptr [ebx+8]
 004184EB    push        dword ptr [eax+4]
 004184EE    push        dword ptr [eax]
 004184F0    lea         eax,[ebp-68]
 004184F3    call        IntToStr
 004184F8    mov         edx,dword ptr [ebp-68]
 004184FB    mov         eax,esi
 004184FD    call        @WStrFromLStr
>00418502    jmp         00418550
 00418504    mov         eax,dword ptr [ebx+8]
 00418507    mov         edx,eax
 00418509    mov         eax,esi
 0041850B    call        00418080
>00418510    jmp         00418550
 00418512    lea         edx,[ebp-6C]
 00418515    mov         eax,ebx
 00418517    call        VarToWStrViaOS
 0041851C    mov         edx,dword ptr [ebp-6C]
 0041851F    mov         eax,esi
 00418521    call        @WStrAsg
>00418526    jmp         00418550
 00418528    mov         eax,esi
 0041852A    call        @WStrClr
 0041852F    mov         edx,eax
 00418531    mov         eax,ebx
 00418533    call        VarToWStrCustom
 00418538    test        al,al
>0041853A    jne         00418550
 0041853C    lea         edx,[ebp-70]
 0041853F    mov         eax,ebx
 00418541    call        VarToWStrViaOS
 00418546    mov         edx,dword ptr [ebp-70]
 00418549    mov         eax,esi
 0041854B    call        @WStrAsg
 00418550    xor         eax,eax
 00418552    pop         edx
 00418553    pop         ecx
 00418554    pop         ecx
 00418555    mov         dword ptr fs:[eax],edx
 00418558    push        4185CD
 0041855D    lea         eax,[ebp-70]
 00418560    mov         edx,2
 00418565    call        @WStrArrayClr
 0041856A    lea         eax,[ebp-68]
 0041856D    mov         edx,5
 00418572    call        @LStrArrayClr
 00418577    lea         eax,[ebp-54]
 0041857A    mov         edx,3
 0041857F    call        @WStrArrayClr
 00418584    lea         eax,[ebp-48]
 00418587    mov         edx,4
 0041858C    call        @LStrArrayClr
 00418591    lea         eax,[ebp-38]
 00418594    mov         edx,2
 00418599    call        @WStrArrayClr
 0041859E    lea         eax,[ebp-30]
 004185A1    mov         edx,5
 004185A6    call        @LStrArrayClr
 004185AB    lea         eax,[ebp-1C]
 004185AE    mov         edx,3
 004185B3    call        @WStrArrayClr
 004185B8    lea         eax,[ebp-10]
 004185BB    mov         edx,4
 004185C0    call        @LStrArrayClr
 004185C5    ret
>004185C6    jmp         @HandleFinally
>004185CB    jmp         0041855D
 004185CD    pop         esi
 004185CE    pop         ebx
 004185CF    mov         esp,ebp
 004185D1    pop         ebp
 004185D2    ret
end;*}

//004185D4
procedure AnyToIntf(var Intf:IInterface; const V:TVarData);
begin
{*
 004185D4    push        ebp
 004185D5    mov         ebp,esp
 004185D7    add         esp,0FFFFFFF0
 004185DA    push        ebx
 004185DB    push        esi
 004185DC    mov         esi,edx
 004185DE    mov         ebx,eax
 004185E0    lea         eax,[ebp-10]
 004185E3    push        eax
 004185E4    call        oleaut32.VariantInit
 004185E9    xor         eax,eax
 004185EB    push        ebp
 004185EC    push        41863E
 004185F1    push        dword ptr fs:[eax]
 004185F4    mov         dword ptr fs:[eax],esp
 004185F7    mov         edx,esi
 004185F9    lea         eax,[ebp-10]
 004185FC    call        @VarCopy
 00418601    lea         eax,[ebp-10]
 00418604    call        dword ptr ds:[571A40]
 0041860A    cmp         word ptr [ebp-10],0D
>0041860F    je          0041861E
 00418611    mov         dx,0D
 00418615    mov         ax,101
 00418619    call        VarCastError
 0041861E    mov         eax,ebx
 00418620    mov         edx,dword ptr [ebp-8]
 00418623    call        @IntfCopy
 00418628    xor         eax,eax
 0041862A    pop         edx
 0041862B    pop         ecx
 0041862C    pop         ecx
 0041862D    mov         dword ptr fs:[eax],edx
 00418630    push        418645
 00418635    lea         eax,[ebp-10]
 00418638    call        @VarClear
 0041863D    ret
>0041863E    jmp         @HandleFinally
>00418643    jmp         00418635
 00418645    pop         esi
 00418646    pop         ebx
 00418647    mov         esp,ebp
 00418649    pop         ebp
 0041864A    ret
*}
end;

//0041864C
procedure @VarToIntf(var Intf:IInterface; const V:TVarData);
begin
{*
 0041864C    push        ebx
 0041864D    push        esi
 0041864E    push        ecx
 0041864F    mov         ebx,edx
 00418651    mov         esi,eax
 00418653    movzx       eax,word ptr [ebx]
 00418656    cmp         eax,0D
>00418659    jg          0041866B
>0041865B    je          004186A8
 0041865D    sub         eax,1
>00418660    jb          00418680
>00418662    je          00418689
 00418664    sub         eax,8
>00418667    je          004186A8
>00418669    jmp         004186CD
 0041866B    sub         eax,101
>00418670    je          004186C2
 00418672    sub         eax,3F08
>00418677    je          004186B4
 00418679    sub         eax,4
>0041867C    je          004186B4
>0041867E    jmp         004186CD
 00418680    mov         eax,esi
 00418682    call        @IntfClear
>00418687    jmp         00418701
 00418689    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00418690    je          0041869F
 00418692    mov         dx,0D
 00418696    mov         ax,1
 0041869A    call        VarCastError
 0041869F    mov         eax,esi
 004186A1    call        @IntfClear
>004186A6    jmp         00418701
 004186A8    mov         eax,esi
 004186AA    mov         edx,dword ptr [ebx+8]
 004186AD    call        @IntfCopy
>004186B2    jmp         00418701
 004186B4    mov         eax,esi
 004186B6    mov         edx,dword ptr [ebx+8]
 004186B9    mov         edx,dword ptr [edx]
 004186BB    call        @IntfCopy
>004186C0    jmp         00418701
 004186C2    mov         edx,ebx
 004186C4    mov         eax,esi
 004186C6    call        AnyToIntf
>004186CB    jmp         00418701
 004186CD    mov         edx,esp
 004186CF    mov         ax,word ptr [ebx]
 004186D2    call        FindCustomVariantType
 004186D7    test        al,al
>004186D9    je          004186F5
 004186DB    mov         eax,esi
 004186DD    call        @IntfClear
 004186E2    mov         ecx,eax
 004186E4    mov         edx,418708
 004186E9    mov         eax,dword ptr [esp]
 004186EC    call        TObject.GetInterface
 004186F1    test        al,al
>004186F3    jne         00418701
 004186F5    mov         ax,word ptr [ebx]
 004186F8    mov         dx,0D
 004186FC    call        VarCastError
 00418701    pop         edx
 00418702    pop         esi
 00418703    pop         ebx
 00418704    ret
*}
end;

//00418718
procedure @VarToDisp(var Dispatch:IDispatch; const V:TVarData);
begin
{*
 00418718    push        ebx
 00418719    push        esi
 0041871A    push        ecx
 0041871B    mov         ebx,edx
 0041871D    mov         esi,eax
 0041871F    mov         ax,word ptr [ebx]
 00418722    sub         ax,1
>00418726    jb          00418738
>00418728    je          00418741
 0041872A    sub         ax,8
>0041872E    je          00418760
 00418730    sub         ax,4000
>00418734    je          0041876C
>00418736    jmp         0041877A
 00418738    mov         eax,esi
 0041873A    call        @IntfClear
>0041873F    jmp         004187AE
 00418741    cmp         byte ptr ds:[56BB3C],0;gvar_0056BB3C
>00418748    je          00418757
 0041874A    mov         dx,9
 0041874E    mov         ax,1
 00418752    call        VarCastError
 00418757    mov         eax,esi
 00418759    call        @IntfClear
>0041875E    jmp         004187AE
 00418760    mov         eax,esi
 00418762    mov         edx,dword ptr [ebx+8]
 00418765    call        @IntfCopy
>0041876A    jmp         004187AE
 0041876C    mov         eax,esi
 0041876E    mov         edx,dword ptr [ebx+8]
 00418771    mov         edx,dword ptr [edx]
 00418773    call        @IntfCopy
>00418778    jmp         004187AE
 0041877A    mov         edx,esp
 0041877C    mov         ax,word ptr [ebx]
 0041877F    call        FindCustomVariantType
 00418784    test        al,al
>00418786    je          004187A2
 00418788    mov         eax,esi
 0041878A    call        @IntfClear
 0041878F    mov         ecx,eax
 00418791    mov         edx,4187B4
 00418796    mov         eax,dword ptr [esp]
 00418799    call        TObject.GetInterface
 0041879E    test        al,al
>004187A0    jne         004187AE
 004187A2    mov         ax,word ptr [ebx]
 004187A5    mov         dx,9
 004187A9    call        VarCastError
 004187AE    pop         edx
 004187AF    pop         esi
 004187B0    pop         ebx
 004187B1    ret
*}
end;

//004187C4
procedure @VarFromInt(var V:TVarData; const Value:Integer; const Range:Shortint);
begin
{*
 004187C4    push        ebx
 004187C5    push        esi
 004187C6    push        edi
 004187C7    mov         ebx,ecx
 004187C9    mov         esi,edx
 004187CB    mov         edi,eax
 004187CD    test        word ptr [edi],0BFE8
>004187D2    je          004187DB
 004187D4    mov         eax,edi
 004187D6    call        VarClearDeep
 004187DB    cmp         byte ptr ds:[56BB44],0
>004187E2    je          004187F4
 004187E4    movsx       eax,bl
 004187E7    mov         ax,word ptr [eax*2+56BB70]
 004187EF    mov         word ptr [edi],ax
>004187F2    jmp         004187F9
 004187F4    mov         word ptr [edi],3
 004187F9    mov         dword ptr [edi+8],esi
 004187FC    pop         edi
 004187FD    pop         esi
 004187FE    pop         ebx
 004187FF    ret
*}
end;

//00418800
procedure @OleVarFromInt(var V:TVarData; const Value:Integer; const Range:Shortint);
begin
{*
 00418800    push        ebx
 00418801    push        esi
 00418802    mov         esi,edx
 00418804    mov         ebx,eax
 00418806    test        word ptr [ebx],0BFE8
>0041880B    je          00418814
 0041880D    mov         eax,ebx
 0041880F    call        VarClearDeep
 00418814    mov         word ptr [ebx],3
 00418819    mov         dword ptr [ebx+8],esi
 0041881C    pop         esi
 0041881D    pop         ebx
 0041881E    ret
*}
end;

//00418820
procedure @VarFromByte(var V:TVarData; const Value:Byte);
begin
{*
 00418820    push        ebx
 00418821    push        esi
 00418822    mov         ebx,edx
 00418824    mov         esi,eax
 00418826    test        word ptr [esi],0BFE8
>0041882B    je          00418834
 0041882D    mov         eax,esi
 0041882F    call        VarClearDeep
 00418834    mov         word ptr [esi],11
 00418839    mov         byte ptr [esi+8],bl
 0041883C    pop         esi
 0041883D    pop         ebx
 0041883E    ret
*}
end;

//00418840
procedure @VarFromWord(var V:TVarData; const Value:Word);
begin
{*
 00418840    push        ebx
 00418841    push        esi
 00418842    mov         esi,edx
 00418844    mov         ebx,eax
 00418846    test        word ptr [ebx],0BFE8
>0041884B    je          00418854
 0041884D    mov         eax,ebx
 0041884F    call        VarClearDeep
 00418854    mov         word ptr [ebx],12
 00418859    mov         word ptr [ebx+8],si
 0041885D    pop         esi
 0041885E    pop         ebx
 0041885F    ret
*}
end;

//00418860
procedure @VarFromLongWord(var V:TVarData; const Value:LongWord);
begin
{*
 00418860    push        ebx
 00418861    push        esi
 00418862    mov         esi,edx
 00418864    mov         ebx,eax
 00418866    test        word ptr [ebx],0BFE8
>0041886B    je          00418874
 0041886D    mov         eax,ebx
 0041886F    call        VarClearDeep
 00418874    mov         word ptr [ebx],13
 00418879    mov         dword ptr [ebx+8],esi
 0041887C    pop         esi
 0041887D    pop         ebx
 0041887E    ret
*}
end;

//00418880
procedure @VarFromShortInt(var V:TVarData; const Value:Shortint);
begin
{*
 00418880    push        ebx
 00418881    push        esi
 00418882    mov         ebx,edx
 00418884    mov         esi,eax
 00418886    test        word ptr [esi],0BFE8
>0041888B    je          00418894
 0041888D    mov         eax,esi
 0041888F    call        VarClearDeep
 00418894    mov         word ptr [esi],10
 00418899    mov         byte ptr [esi+8],bl
 0041889C    pop         esi
 0041889D    pop         ebx
 0041889E    ret
*}
end;

//004188A0
procedure @VarFromSmallInt(var V:TVarData; const Value:Smallint);
begin
{*
 004188A0    push        ebx
 004188A1    push        esi
 004188A2    mov         esi,edx
 004188A4    mov         ebx,eax
 004188A6    test        word ptr [ebx],0BFE8
>004188AB    je          004188B4
 004188AD    mov         eax,ebx
 004188AF    call        VarClearDeep
 004188B4    mov         word ptr [ebx],2
 004188B9    mov         word ptr [ebx+8],si
 004188BD    pop         esi
 004188BE    pop         ebx
 004188BF    ret
*}
end;

//004188C0
procedure @VarFromInt64(var V:TVarData; const Value:Int64);
begin
{*
 004188C0    push        ebp
 004188C1    mov         ebp,esp
 004188C3    push        ebx
 004188C4    mov         ebx,eax
 004188C6    test        word ptr [ebx],0BFE8
>004188CB    je          004188D4
 004188CD    mov         eax,ebx
 004188CF    call        VarClearDeep
 004188D4    mov         word ptr [ebx],14
 004188D9    mov         eax,dword ptr [ebp+8]
 004188DC    mov         dword ptr [ebx+8],eax
 004188DF    mov         eax,dword ptr [ebp+0C]
 004188E2    mov         dword ptr [ebx+0C],eax
 004188E5    pop         ebx
 004188E6    pop         ebp
 004188E7    ret         8
*}
end;

//004188EC
procedure @VarFromSingle(var Dest:TVarData; const Value:Single);
begin
{*
 004188EC    push        ebp
 004188ED    mov         ebp,esp
 004188EF    push        ebx
 004188F0    mov         ebx,eax
 004188F2    test        word ptr [ebx],0BFE8
>004188F7    je          00418900
 004188F9    mov         eax,ebx
 004188FB    call        VarClearDeep
 00418900    mov         eax,dword ptr [ebp+8]
 00418903    mov         dword ptr [ebx+8],eax
 00418906    mov         word ptr [ebx],4
 0041890B    pop         ebx
 0041890C    pop         ebp
 0041890D    ret         4
*}
end;

//00418910
procedure @VarFromDouble(var Dest:TVarData; const Value:Double);
begin
{*
 00418910    push        ebp
 00418911    mov         ebp,esp
 00418913    push        ebx
 00418914    mov         ebx,eax
 00418916    test        word ptr [ebx],0BFE8
>0041891B    je          00418924
 0041891D    mov         eax,ebx
 0041891F    call        VarClearDeep
 00418924    mov         eax,dword ptr [ebp+8]
 00418927    mov         dword ptr [ebx+8],eax
 0041892A    mov         eax,dword ptr [ebp+0C]
 0041892D    mov         dword ptr [ebx+0C],eax
 00418930    mov         word ptr [ebx],5
 00418935    pop         ebx
 00418936    pop         ebp
 00418937    ret         8
*}
end;

//0041893C
procedure @VarFromCurrency(var Dest:TVarData; const Value:Currency);
begin
{*
 0041893C    push        ebp
 0041893D    mov         ebp,esp
 0041893F    push        ebx
 00418940    mov         ebx,eax
 00418942    test        word ptr [ebx],0BFE8
>00418947    je          00418950
 00418949    mov         eax,ebx
 0041894B    call        VarClearDeep
 00418950    mov         eax,dword ptr [ebp+8]
 00418953    mov         dword ptr [ebx+8],eax
 00418956    mov         eax,dword ptr [ebp+0C]
 00418959    mov         dword ptr [ebx+0C],eax
 0041895C    mov         word ptr [ebx],6
 00418961    pop         ebx
 00418962    pop         ebp
 00418963    ret         8
*}
end;

//00418968
procedure @VarFromDate(var Dest:TVarData; const Value:TDateTime);
begin
{*
 00418968    push        ebp
 00418969    mov         ebp,esp
 0041896B    push        ebx
 0041896C    mov         ebx,eax
 0041896E    test        word ptr [ebx],0BFE8
>00418973    je          0041897C
 00418975    mov         eax,ebx
 00418977    call        VarClearDeep
 0041897C    mov         eax,dword ptr [ebp+8]
 0041897F    mov         dword ptr [ebx+8],eax
 00418982    mov         eax,dword ptr [ebp+0C]
 00418985    mov         dword ptr [ebx+0C],eax
 00418988    mov         word ptr [ebx],7
 0041898D    pop         ebx
 0041898E    pop         ebp
 0041898F    ret         8
*}
end;

//00418994
procedure @VarFromBool(var V:TVarData; const Value:Boolean);
begin
{*
 00418994    push        ebx
 00418995    push        esi
 00418996    mov         ebx,edx
 00418998    mov         esi,eax
 0041899A    test        word ptr [esi],0BFE8
>0041899F    je          004189A8
 004189A1    mov         eax,esi
 004189A3    call        VarClearDeep
 004189A8    mov         word ptr [esi],0B
 004189AD    cmp         bl,1
 004189B0    cmc
 004189B1    sbb         eax,eax
 004189B3    mov         word ptr [esi+8],ax
 004189B7    pop         esi
 004189B8    pop         ebx
 004189B9    ret
*}
end;

//004189BC
procedure @VarFromReal(var v:Variant);
begin
{*
 004189BC    push        eax
 004189BD    call        @VarClear
 004189C2    pop         eax
 004189C3    mov         word ptr [eax],5
 004189C8    fstp        qword ptr [eax+8]
 004189CB    wait
 004189CC    ret
*}
end;

//004189D0
procedure @VarFromTDateTime(var v:Variant);
begin
{*
 004189D0    push        eax
 004189D1    call        @VarClear
 004189D6    pop         eax
 004189D7    mov         word ptr [eax],7
 004189DC    fstp        qword ptr [eax+8]
 004189DF    wait
 004189E0    ret
*}
end;

//004189E4
procedure @VarFromCurr(var v:Variant);
begin
{*
 004189E4    push        eax
 004189E5    call        @VarClear
 004189EA    pop         eax
 004189EB    mov         word ptr [eax],6
 004189F0    fistp       qword ptr [eax+8]
 004189F3    wait
 004189F4    ret
*}
end;

//004189F8
procedure @VarFromLStr(var V:TVarData; const Value:AnsiString);
begin
{*
 004189F8    push        ebx
 004189F9    push        esi
 004189FA    mov         esi,edx
 004189FC    mov         ebx,eax
 004189FE    test        word ptr [ebx],0BFE8
>00418A03    je          00418A0C
 00418A05    mov         eax,ebx
 00418A07    call        VarClearDeep
 00418A0C    xor         eax,eax
 00418A0E    mov         dword ptr [ebx+8],eax
 00418A11    mov         word ptr [ebx],100
 00418A16    lea         eax,[ebx+8]
 00418A19    mov         edx,esi
 00418A1B    call        @LStrAsg
 00418A20    pop         esi
 00418A21    pop         ebx
 00418A22    ret
*}
end;

//00418A24
procedure @VarFromPStr(var V:TVarData; const Value:ShortString);
begin
{*
 00418A24    push        ebp
 00418A25    mov         ebp,esp
 00418A27    push        0
 00418A29    push        ebx
 00418A2A    push        esi
 00418A2B    mov         esi,edx
 00418A2D    mov         ebx,eax
 00418A2F    xor         eax,eax
 00418A31    push        ebp
 00418A32    push        418A67
 00418A37    push        dword ptr fs:[eax]
 00418A3A    mov         dword ptr fs:[eax],esp
 00418A3D    lea         eax,[ebp-4]
 00418A40    mov         edx,esi
 00418A42    call        @LStrFromString
 00418A47    mov         edx,dword ptr [ebp-4]
 00418A4A    mov         eax,ebx
 00418A4C    call        @VarFromLStr
 00418A51    xor         eax,eax
 00418A53    pop         edx
 00418A54    pop         ecx
 00418A55    pop         ecx
 00418A56    mov         dword ptr fs:[eax],edx
 00418A59    push        418A6E
 00418A5E    lea         eax,[ebp-4]
 00418A61    call        @LStrClr
 00418A66    ret
>00418A67    jmp         @HandleFinally
>00418A6C    jmp         00418A5E
 00418A6E    pop         esi
 00418A6F    pop         ebx
 00418A70    pop         ecx
 00418A71    pop         ebp
 00418A72    ret
*}
end;

//00418A74
procedure @VarFromWStr(var V:TVarData; const Value:WideString);
begin
{*
 00418A74    push        ebx
 00418A75    push        esi
 00418A76    mov         esi,edx
 00418A78    mov         ebx,eax
 00418A7A    test        word ptr [ebx],0BFE8
>00418A7F    je          00418A88
 00418A81    mov         eax,ebx
 00418A83    call        VarClearDeep
 00418A88    xor         eax,eax
 00418A8A    mov         dword ptr [ebx+8],eax
 00418A8D    mov         word ptr [ebx],8
 00418A92    lea         eax,[ebx+8]
 00418A95    push        eax
 00418A96    mov         ecx,7FFFFFFF
 00418A9B    mov         edx,1
 00418AA0    mov         eax,esi
 00418AA2    call        @WStrCopy
 00418AA7    pop         esi
 00418AA8    pop         ebx
 00418AA9    ret
*}
end;

//00418AAC
procedure @VarFromIntf(var V:TVarData; const Value:IInterface);
begin
{*
 00418AAC    push        ebx
 00418AAD    push        esi
 00418AAE    mov         esi,edx
 00418AB0    mov         ebx,eax
 00418AB2    test        word ptr [ebx],0BFE8
>00418AB7    je          00418AC0
 00418AB9    mov         eax,ebx
 00418ABB    call        VarClearDeep
 00418AC0    xor         eax,eax
 00418AC2    mov         dword ptr [ebx+8],eax
 00418AC5    mov         word ptr [ebx],0D
 00418ACA    lea         eax,[ebx+8]
 00418ACD    mov         edx,esi
 00418ACF    call        @IntfCopy
 00418AD4    pop         esi
 00418AD5    pop         ebx
 00418AD6    ret
*}
end;

//00418AD8
procedure @VarFromDisp(var V:TVarData; const Value:IDispatch);
begin
{*
 00418AD8    push        ebx
 00418AD9    push        esi
 00418ADA    mov         esi,edx
 00418ADC    mov         ebx,eax
 00418ADE    test        word ptr [ebx],0BFE8
>00418AE3    je          00418AEC
 00418AE5    mov         eax,ebx
 00418AE7    call        VarClearDeep
 00418AEC    xor         eax,eax
 00418AEE    mov         dword ptr [ebx+8],eax
 00418AF1    mov         word ptr [ebx],9
 00418AF6    lea         eax,[ebx+8]
 00418AF9    mov         edx,esi
 00418AFB    call        @IntfCopy
 00418B00    pop         esi
 00418B01    pop         ebx
 00418B02    ret
*}
end;

//00418B04
function CheckType(T:TVarType):TVarType;
begin
{*
 00418B04    push        ebx
 00418B05    mov         ebx,eax
 00418B07    and         bx,0FFF
 00418B0C    cmp         bx,14
>00418B10    jbe         00418B24
 00418B12    cmp         bx,100
>00418B17    jne         00418B1F
 00418B19    mov         bx,8
>00418B1D    jmp         00418B24
 00418B1F    call        VarInvalidOp
 00418B24    mov         eax,ebx
 00418B26    pop         ebx
 00418B27    ret
*}
end;

//00418B28
function VarCompareAny(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 00418B28    push        ebp
 00418B29    mov         ebp,esp
 00418B2B    add         esp,0FFFFFFDC
 00418B2E    push        ebx
 00418B2F    push        esi
 00418B30    push        edi
 00418B31    mov         edi,ecx
 00418B33    mov         ebx,edx
 00418B35    mov         esi,eax
 00418B37    lea         eax,[ebp-11]
 00418B3A    push        eax
 00418B3B    call        oleaut32.VariantInit
 00418B40    xor         eax,eax
 00418B42    push        ebp
 00418B43    push        418BEB
 00418B48    push        dword ptr fs:[eax]
 00418B4B    mov         dword ptr fs:[eax],esp
 00418B4E    mov         edx,esi
 00418B50    lea         eax,[ebp-11]
 00418B53    call        @VarCopy
 00418B58    cmp         word ptr [esi],101
>00418B5D    jne         00418B68
 00418B5F    lea         eax,[ebp-11]
 00418B62    call        dword ptr ds:[571A40]
 00418B68    cmp         word ptr [ebx],101
>00418B6D    jne         00418BC6
 00418B6F    lea         eax,[ebp-21]
 00418B72    push        eax
 00418B73    call        oleaut32.VariantInit
 00418B78    xor         eax,eax
 00418B7A    push        ebp
 00418B7B    push        418BBF
 00418B80    push        dword ptr fs:[eax]
 00418B83    mov         dword ptr fs:[eax],esp
 00418B86    mov         edx,ebx
 00418B88    lea         eax,[ebp-21]
 00418B8B    call        @VarCopy
 00418B90    lea         eax,[ebp-21]
 00418B93    call        dword ptr ds:[571A40]
 00418B99    lea         edx,[ebp-21]
 00418B9C    lea         eax,[ebp-11]
 00418B9F    mov         ecx,edi
 00418BA1    call        VarCompare
 00418BA6    mov         byte ptr [ebp-1],al
 00418BA9    xor         eax,eax
 00418BAB    pop         edx
 00418BAC    pop         ecx
 00418BAD    pop         ecx
 00418BAE    mov         dword ptr fs:[eax],edx
 00418BB1    push        418BD5
 00418BB6    lea         eax,[ebp-21]
 00418BB9    call        @VarClear
 00418BBE    ret
>00418BBF    jmp         @HandleFinally
>00418BC4    jmp         00418BB6
 00418BC6    mov         edx,ebx
 00418BC8    lea         eax,[ebp-11]
 00418BCB    mov         ecx,edi
 00418BCD    call        VarCompare
 00418BD2    mov         byte ptr [ebp-1],al
 00418BD5    xor         eax,eax
 00418BD7    pop         edx
 00418BD8    pop         ecx
 00418BD9    pop         ecx
 00418BDA    mov         dword ptr fs:[eax],edx
 00418BDD    push        418BF2
 00418BE2    lea         eax,[ebp-11]
 00418BE5    call        @VarClear
 00418BEA    ret
>00418BEB    jmp         @HandleFinally
>00418BF0    jmp         00418BE2
 00418BF2    mov         al,byte ptr [ebp-1]
 00418BF5    pop         edi
 00418BF6    pop         esi
 00418BF7    pop         ebx
 00418BF8    mov         esp,ebp
 00418BFA    pop         ebp
 00418BFB    ret
*}
end;

//00418BFC
function EmptyCompare(L:TBaseType; R:TBaseType):TVarCompareResult;
begin
{*
 00418BFC    cmp         al,1
>00418BFE    jne         00418C0C
 00418C00    cmp         dl,1
>00418C03    jne         00418C09
 00418C05    mov         al,1
>00418C07    jmp         00418C0E
 00418C09    xor         eax,eax
 00418C0B    ret
 00418C0C    mov         al,2
 00418C0E    ret
*}
end;

//00418C10
function NullCompare(L:TBaseType; R:TBaseType; OpCode:TVarOp):TVarCompareResult;
begin
{*
 00418C10    push        ebx
 00418C11    push        ecx
 00418C12    mov         byte ptr [esp],dl
 00418C15    mov         bl,1
 00418C17    mov         edx,ecx
 00418C19    sub         edx,0E
>00418C1C    je          00418C30
 00418C1E    dec         edx
>00418C1F    je          00418C76
 00418C21    dec         edx
 00418C22    sub         edx,4
>00418C25    jb          00418CB3
>00418C2B    jmp         00418CEC
 00418C30    mov         dl,byte ptr ds:[56BB34]
 00418C36    sub         dl,1
>00418C39    jb          00418C46
>00418C3B    je          00418C50
 00418C3D    dec         dl
>00418C3F    je          00418C5B
>00418C41    jmp         00418CF1
 00418C46    call        VarInvalidNullOp
>00418C4B    jmp         00418CF1
 00418C50    mov         bl,byte ptr ds:[56BB7C]
>00418C56    jmp         00418CF1
 00418C5B    cmp         al,2
>00418C5D    jne         00418C65
 00418C5F    cmp         byte ptr [esp],2
>00418C63    je          00418C69
 00418C65    xor         eax,eax
>00418C67    jmp         00418C6B
 00418C69    mov         al,1
 00418C6B    and         eax,7F
 00418C6E    mov         bl,byte ptr [eax+56BB7C]
>00418C74    jmp         00418CF1
 00418C76    mov         dl,byte ptr ds:[56BB34]
 00418C7C    sub         dl,1
>00418C7F    jb          00418C89
>00418C81    je          00418C90
 00418C83    dec         dl
>00418C85    je          00418C98
>00418C87    jmp         00418CF1
 00418C89    call        VarInvalidNullOp
>00418C8E    jmp         00418CF1
 00418C90    mov         bl,byte ptr ds:[56BB7E]
>00418C96    jmp         00418CF1
 00418C98    cmp         al,2
>00418C9A    jne         00418CA6
 00418C9C    cmp         byte ptr [esp],2
>00418CA0    jne         00418CA6
 00418CA2    xor         eax,eax
>00418CA4    jmp         00418CA8
 00418CA6    mov         al,1
 00418CA8    and         eax,7F
 00418CAB    mov         bl,byte ptr [eax+56BB7E]
>00418CB1    jmp         00418CF1
 00418CB3    mov         dl,byte ptr ds:[56BB38]
 00418CB9    sub         dl,1
>00418CBC    jb          00418CC6
>00418CBE    je          00418CCD
 00418CC0    dec         dl
>00418CC2    je          00418CD6
>00418CC4    jmp         00418CF1
 00418CC6    call        VarInvalidNullOp
>00418CCB    jmp         00418CF1
 00418CCD    mov         bl,byte ptr [ecx*2+56BB60]
>00418CD4    jmp         00418CF1
 00418CD6    cmp         al,2
>00418CD8    jne         00418CE8
 00418CDA    cmp         byte ptr [esp],2
>00418CDE    jne         00418CE4
 00418CE0    mov         bl,1
>00418CE2    jmp         00418CF1
 00418CE4    xor         ebx,ebx
>00418CE6    jmp         00418CF1
 00418CE8    mov         bl,2
>00418CEA    jmp         00418CF1
 00418CEC    call        VarInvalidOp
 00418CF1    mov         eax,ebx
 00418CF3    pop         edx
 00418CF4    pop         ebx
 00418CF5    ret
*}
end;

//00418CF8
function IntCompare(A:Integer; B:Integer):TVarCompareResult;
begin
{*
 00418CF8    cmp         edx,eax
>00418CFA    jle         00418CFF
 00418CFC    xor         eax,eax
 00418CFE    ret
 00418CFF    cmp         edx,eax
>00418D01    jge         00418D07
 00418D03    mov         al,2
>00418D05    jmp         00418D09
 00418D07    mov         al,1
 00418D09    ret
*}
end;

//00418D0C
function Int64Compare(const A:Int64; const B:Int64):TVarCompareResult;
begin
{*
 00418D0C    push        ebp
 00418D0D    mov         ebp,esp
 00418D0F    mov         eax,dword ptr [ebp+10]
 00418D12    mov         edx,dword ptr [ebp+14]
 00418D15    cmp         edx,dword ptr [ebp+0C]
>00418D18    jne         00418D21
 00418D1A    cmp         eax,dword ptr [ebp+8]
>00418D1D    jae         00418D27
>00418D1F    jmp         00418D23
>00418D21    jge         00418D27
 00418D23    xor         eax,eax
>00418D25    jmp         00418D41
 00418D27    mov         eax,dword ptr [ebp+10]
 00418D2A    mov         edx,dword ptr [ebp+14]
 00418D2D    cmp         edx,dword ptr [ebp+0C]
>00418D30    jne         00418D39
 00418D32    cmp         eax,dword ptr [ebp+8]
>00418D35    jbe         00418D3F
>00418D37    jmp         00418D3B
>00418D39    jle         00418D3F
 00418D3B    mov         al,2
>00418D3D    jmp         00418D41
 00418D3F    mov         al,1
 00418D41    pop         ebp
 00418D42    ret         10
*}
end;

//00418D48
function DateCompare(const A:TDateTime; const B:TDateTime):TVarCompareResult;
begin
{*
 00418D48    push        ebp
 00418D49    mov         ebp,esp
 00418D4B    fld         qword ptr [ebp+10]
 00418D4E    fcomp       qword ptr [ebp+8]
 00418D51    fnstsw      al
 00418D53    sahf
>00418D54    jae         00418D5A
 00418D56    xor         eax,eax
>00418D58    jmp         00418D6B
 00418D5A    fld         qword ptr [ebp+10]
 00418D5D    fcomp       qword ptr [ebp+8]
 00418D60    fnstsw      al
 00418D62    sahf
>00418D63    jbe         00418D69
 00418D65    mov         al,2
>00418D67    jmp         00418D6B
 00418D69    mov         al,1
 00418D6B    pop         ebp
 00418D6C    ret         10
*}
end;

//00418D70
function RealCompare(const A:Double; const B:Double):TVarCompareResult;
begin
{*
 00418D70    push        ebp
 00418D71    mov         ebp,esp
 00418D73    fld         qword ptr [ebp+10]
 00418D76    fcomp       qword ptr [ebp+8]
 00418D79    fnstsw      al
 00418D7B    sahf
>00418D7C    jae         00418D82
 00418D7E    xor         eax,eax
>00418D80    jmp         00418D93
 00418D82    fld         qword ptr [ebp+10]
 00418D85    fcomp       qword ptr [ebp+8]
 00418D88    fnstsw      al
 00418D8A    sahf
>00418D8B    jbe         00418D91
 00418D8D    mov         al,2
>00418D8F    jmp         00418D93
 00418D91    mov         al,1
 00418D93    pop         ebp
 00418D94    ret         10
*}
end;

//00418D98
function CurrCompare(const A:Currency; const B:Currency):TVarCompareResult;
begin
{*
 00418D98    push        ebp
 00418D99    mov         ebp,esp
 00418D9B    fild        qword ptr [ebp+10]
 00418D9E    fild        qword ptr [ebp+8]
 00418DA1    fcompp
 00418DA3    fnstsw      al
 00418DA5    sahf
>00418DA6    jbe         00418DAC
 00418DA8    xor         eax,eax
>00418DAA    jmp         00418DBF
 00418DAC    fild        qword ptr [ebp+10]
 00418DAF    fild        qword ptr [ebp+8]
 00418DB2    fcompp
 00418DB4    fnstsw      al
 00418DB6    sahf
>00418DB7    jae         00418DBD
 00418DB9    mov         al,2
>00418DBB    jmp         00418DBF
 00418DBD    mov         al,1
 00418DBF    pop         ebp
 00418DC0    ret         10
*}
end;

//00418DC4
function StringCompare(const L:TVarData; const R:TVarData):TVarCompareResult;
begin
{*
 00418DC4    push        ebp
 00418DC5    mov         ebp,esp
 00418DC7    push        0
 00418DC9    push        0
 00418DCB    push        ebx
 00418DCC    mov         ebx,edx
 00418DCE    xor         edx,edx
 00418DD0    push        ebp
 00418DD1    push        418E1F
 00418DD6    push        dword ptr fs:[edx]
 00418DD9    mov         dword ptr fs:[edx],esp
 00418DDC    mov         edx,eax
 00418DDE    lea         eax,[ebp-4]
 00418DE1    call        00417960
 00418DE6    mov         edx,ebx
 00418DE8    lea         eax,[ebp-8]
 00418DEB    call        00417960
 00418DF0    mov         edx,dword ptr [ebp-8]
 00418DF3    mov         eax,dword ptr [ebp-4]
 00418DF6    call        CompareStr
 00418DFB    xor         edx,edx
 00418DFD    call        IntCompare
 00418E02    mov         ebx,eax
 00418E04    xor         eax,eax
 00418E06    pop         edx
 00418E07    pop         ecx
 00418E08    pop         ecx
 00418E09    mov         dword ptr fs:[eax],edx
 00418E0C    push        418E26
 00418E11    lea         eax,[ebp-8]
 00418E14    mov         edx,2
 00418E19    call        @LStrArrayClr
 00418E1E    ret
>00418E1F    jmp         @HandleFinally
>00418E24    jmp         00418E11
 00418E26    mov         eax,ebx
 00418E28    pop         ebx
 00418E29    pop         ecx
 00418E2A    pop         ecx
 00418E2B    pop         ebp
 00418E2C    ret
*}
end;

//00418E30
{*function sub_00418E30(?:?; ?:?; ?:?):?;
begin
 00418E30    push        ebx
 00418E31    push        esi
 00418E32    push        edi
 00418E33    push        ebp
 00418E34    mov         ebp,ecx
 00418E36    mov         edi,edx
 00418E38    mov         esi,eax
 00418E3A    mov         ax,word ptr [esi]
 00418E3D    call        CheckType
 00418E42    movzx       eax,ax
 00418E45    mov         bl,byte ptr [eax+56BB4C]
 00418E4B    mov         ax,word ptr [edi]
 00418E4E    call        CheckType
 00418E53    movzx       eax,ax
 00418E56    mov         al,byte ptr [eax+56BB4C]
 00418E5C    xor         edx,edx
 00418E5E    mov         dl,al
 00418E60    xor         ecx,ecx
 00418E62    mov         cl,bl
 00418E64    imul        ecx,ecx,0B
 00418E67    add         ecx,56BB88
 00418E6D    movzx       edx,byte ptr [ecx+edx]
 00418E71    cmp         edx,0A
>00418E74    ja          00418FAE
 00418E7A    jmp         dword ptr [edx*4+418E81]
 00418E7A    dd          00418EAD
 00418E7A    dd          00418EB9
 00418E7A    dd          00418EC7
 00418E7A    dd          00418ED7
 00418E7A    dd          00418F0D
 00418E7A    dd          00418F56
 00418E7A    dd          00418F79
 00418E7A    dd          00418F84
 00418E7A    dd          00418F33
 00418E7A    dd          00418EF1
 00418E7A    dd          00418FA1
 00418EAD    call        VarInvalidOp
 00418EB2    mov         al,1
>00418EB4    jmp         00418FB5
 00418EB9    mov         edx,eax
 00418EBB    mov         eax,ebx
 00418EBD    call        EmptyCompare
>00418EC2    jmp         00418FB5
 00418EC7    mov         ecx,ebp
 00418EC9    mov         edx,eax
 00418ECB    mov         eax,ebx
 00418ECD    call        NullCompare
>00418ED2    jmp         00418FB5
 00418ED7    mov         eax,edi
 00418ED9    call        @VarToInteger
 00418EDE    push        eax
 00418EDF    mov         eax,esi
 00418EE1    call        @VarToInteger
 00418EE6    pop         edx
 00418EE7    call        IntCompare
>00418EEC    jmp         00418FB5
 00418EF1    mov         eax,esi
 00418EF3    call        @VarToInt64
 00418EF8    push        edx
 00418EF9    push        eax
 00418EFA    mov         eax,edi
 00418EFC    call        @VarToInt64
 00418F01    push        edx
 00418F02    push        eax
 00418F03    call        Int64Compare
>00418F08    jmp         00418FB5
 00418F0D    mov         eax,esi
 00418F0F    call        004165D4
 00418F14    add         esp,0FFFFFFF8
 00418F17    fstp        qword ptr [esp]
 00418F1A    wait
 00418F1B    mov         eax,edi
 00418F1D    call        004165D4
 00418F22    add         esp,0FFFFFFF8
 00418F25    fstp        qword ptr [esp]
 00418F28    wait
 00418F29    call        DateCompare
>00418F2E    jmp         00418FB5
 00418F33    mov         eax,esi
 00418F35    call        00416D44
 00418F3A    add         esp,0FFFFFFF8
 00418F3D    fstp        qword ptr [esp]
 00418F40    wait
 00418F41    mov         eax,edi
 00418F43    call        00416D44
 00418F48    add         esp,0FFFFFFF8
 00418F4B    fstp        qword ptr [esp]
 00418F4E    wait
 00418F4F    call        RealCompare
>00418F54    jmp         00418FB5
 00418F56    mov         eax,esi
 00418F58    call        @VarToCurrency
 00418F5D    add         esp,0FFFFFFF8
 00418F60    fistp       qword ptr [esp]
 00418F63    wait
 00418F64    mov         eax,edi
 00418F66    call        @VarToCurrency
 00418F6B    add         esp,0FFFFFFF8
 00418F6E    fistp       qword ptr [esp]
 00418F71    wait
 00418F72    call        CurrCompare
>00418F77    jmp         00418FB5
 00418F79    mov         edx,edi
 00418F7B    mov         eax,esi
 00418F7D    call        StringCompare
>00418F82    jmp         00418FB5
 00418F84    mov         eax,edi
 00418F86    call        @VarToBoolean
 00418F8B    and         eax,7F
 00418F8E    push        eax
 00418F8F    mov         eax,esi
 00418F91    call        @VarToBoolean
 00418F96    and         eax,7F
 00418F99    pop         edx
 00418F9A    call        IntCompare
>00418F9F    jmp         00418FB5
 00418FA1    mov         edx,edi
 00418FA3    mov         eax,esi
 00418FA5    mov         ecx,ebp
 00418FA7    call        VarCompareAny
>00418FAC    jmp         00418FB5
 00418FAE    call        VarInvalidOp
 00418FB3    mov         al,1
 00418FB5    pop         ebp
 00418FB6    pop         edi
 00418FB7    pop         esi
 00418FB8    pop         ebx
 00418FB9    ret
end;*}

//00418FBC
function VarCompareRare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 00418FBC    push        ebp
 00418FBD    mov         ebp,esp
 00418FBF    add         esp,0FFFFFFD8
 00418FC2    push        ebx
 00418FC3    push        esi
 00418FC4    mov         dword ptr [ebp-8],ecx
 00418FC7    mov         dword ptr [ebp-4],edx
 00418FCA    mov         ebx,eax
 00418FCC    mov         byte ptr [ebp-9],1
 00418FD0    mov         si,word ptr [ebx]
 00418FD3    mov         eax,esi
 00418FD5    and         ax,0FFF
 00418FD9    cmp         ax,10F
>00418FDD    jae         0041915C
 00418FE3    test        si,si
>00418FE6    jne         00418FF9
 00418FE8    xor         edx,edx
 00418FEA    mov         al,1
 00418FEC    call        EmptyCompare
 00418FF1    mov         byte ptr [ebp-9],al
>00418FF4    jmp         004193D0
 00418FF9    cmp         si,1
>00418FFD    jne         00419013
 00418FFF    mov         ecx,dword ptr [ebp-8]
 00419002    xor         edx,edx
 00419004    mov         al,2
 00419006    call        NullCompare
 0041900B    mov         byte ptr [ebp-9],al
>0041900E    jmp         004193D0
 00419013    lea         edx,[ebp-18]
 00419016    mov         eax,dword ptr [ebp-4]
 00419019    mov         ax,word ptr [eax]
 0041901C    call        FindCustomVariantType
 00419021    test        al,al
>00419023    jne         0041902F
 00419025    call        VarInvalidOp
>0041902A    jmp         004193D0
 0041902F    lea         eax,[ebp-0C]
 00419032    push        eax
 00419033    mov         edx,ebx
 00419035    mov         ecx,0B
 0041903A    mov         eax,dword ptr [ebp-18]
 0041903D    mov         esi,dword ptr [eax]
 0041903F    call        dword ptr [esi+4]
 00419042    test        al,al
>00419044    je          004190F8
 0041904A    mov         ax,word ptr [ebx]
 0041904D    cmp         ax,word ptr [ebp-0C]
>00419051    je          004190CE
 00419053    lea         eax,[ebp-28]
 00419056    push        eax
 00419057    call        oleaut32.VariantInit
 0041905C    xor         eax,eax
 0041905E    push        ebp
 0041905F    push        4190C7
 00419064    push        dword ptr fs:[eax]
 00419067    mov         dword ptr fs:[eax],esp
 0041906A    movzx       ecx,word ptr [ebp-0C]
 0041906E    mov         edx,ebx
 00419070    lea         eax,[ebp-28]
 00419073    call        @VarCast
 00419078    mov         ax,word ptr [ebp-28]
 0041907C    and         ax,0FFF
 00419080    cmp         ax,word ptr [ebp-0C]
>00419084    je          0041908B
 00419086    call        VarCastError
 0041908B    mov         eax,dword ptr [ebp-8]
 0041908E    push        eax
 0041908F    mov         ecx,dword ptr [ebp-4]
 00419092    lea         edx,[ebp-28]
 00419095    mov         eax,dword ptr [ebp-18]
 00419098    mov         ebx,dword ptr [eax]
 0041909A    call        dword ptr [ebx+34]
 0041909D    and         eax,7F
 004190A0    mov         edx,dword ptr [ebp-8]
 004190A3    lea         edx,[edx*2+56BB7C]
 004190AA    mov         al,byte ptr [edx+eax-1C]
 004190AE    mov         byte ptr [ebp-9],al
 004190B1    xor         eax,eax
 004190B3    pop         edx
 004190B4    pop         ecx
 004190B5    pop         ecx
 004190B6    mov         dword ptr fs:[eax],edx
 004190B9    push        4193D0
 004190BE    lea         eax,[ebp-28]
 004190C1    call        @VarClear
 004190C6    ret
>004190C7    jmp         @HandleFinally
>004190CC    jmp         004190BE
 004190CE    mov         eax,dword ptr [ebp-8]
 004190D1    push        eax
 004190D2    mov         ecx,dword ptr [ebp-4]
 004190D5    mov         edx,ebx
 004190D7    mov         eax,dword ptr [ebp-18]
 004190DA    mov         ebx,dword ptr [eax]
 004190DC    call        dword ptr [ebx+34]
 004190DF    and         eax,7F
 004190E2    mov         edx,dword ptr [ebp-8]
 004190E5    lea         edx,[edx*2+56BB7C]
 004190EC    mov         al,byte ptr [edx+eax-1C]
 004190F0    mov         byte ptr [ebp-9],al
>004190F3    jmp         004193D0
 004190F8    lea         eax,[ebp-28]
 004190FB    push        eax
 004190FC    call        oleaut32.VariantInit
 00419101    xor         eax,eax
 00419103    push        ebp
 00419104    push        419155
 00419109    push        dword ptr fs:[eax]
 0041910C    mov         dword ptr fs:[eax],esp
 0041910F    movzx       ecx,word ptr [ebx]
 00419112    mov         edx,dword ptr [ebp-4]
 00419115    lea         eax,[ebp-28]
 00419118    call        @VarCast
 0041911D    mov         ax,word ptr [ebp-28]
 00419121    and         ax,0FFF
 00419125    cmp         ax,word ptr [ebx]
>00419128    je          0041912F
 0041912A    call        VarCastError
 0041912F    lea         edx,[ebp-28]
 00419132    mov         eax,ebx
 00419134    mov         ecx,dword ptr [ebp-8]
 00419137    call        00418E30
 0041913C    mov         byte ptr [ebp-9],al
 0041913F    xor         eax,eax
 00419141    pop         edx
 00419142    pop         ecx
 00419143    pop         ecx
 00419144    mov         dword ptr fs:[eax],edx
 00419147    push        4193D0
 0041914C    lea         eax,[ebp-28]
 0041914F    call        @VarClear
 00419154    ret
>00419155    jmp         @HandleFinally
>0041915A    jmp         0041914C
 0041915C    mov         eax,dword ptr [ebp-4]
 0041915F    mov         ax,word ptr [eax]
 00419162    test        ax,ax
>00419165    jne         00419178
 00419167    mov         dl,1
 00419169    xor         eax,eax
 0041916B    call        EmptyCompare
 00419170    mov         byte ptr [ebp-9],al
>00419173    jmp         004193D0
 00419178    mov         edx,dword ptr [ebp-4]
 0041917B    cmp         ax,1
>0041917F    jne         00419195
 00419181    mov         ecx,dword ptr [ebp-8]
 00419184    mov         dl,2
 00419186    xor         eax,eax
 00419188    call        NullCompare
 0041918D    mov         byte ptr [ebp-9],al
>00419190    jmp         004193D0
 00419195    lea         edx,[ebp-14]
 00419198    mov         eax,esi
 0041919A    call        FindCustomVariantType
 0041919F    test        al,al
>004191A1    jne         004191AD
 004191A3    call        VarInvalidOp
>004191A8    jmp         004193D0
 004191AD    lea         eax,[ebp-0E]
 004191B0    push        eax
 004191B1    mov         edx,dword ptr [ebp-4]
 004191B4    mov         ecx,0B
 004191B9    mov         eax,dword ptr [ebp-14]
 004191BC    mov         esi,dword ptr [eax]
 004191BE    call        dword ptr [esi+8]
 004191C1    test        al,al
>004191C3    je          00419276
 004191C9    mov         eax,dword ptr [ebp-4]
 004191CC    mov         ax,word ptr [eax]
 004191CF    cmp         ax,word ptr [ebp-0E]
>004191D3    je          0041924C
 004191D5    lea         eax,[ebp-28]
 004191D8    push        eax
 004191D9    call        oleaut32.VariantInit
 004191DE    xor         eax,eax
 004191E0    push        ebp
 004191E1    push        419245
 004191E6    push        dword ptr fs:[eax]
 004191E9    mov         dword ptr fs:[eax],esp
 004191EC    movzx       ecx,word ptr [ebp-0E]
 004191F0    mov         edx,dword ptr [ebp-4]
 004191F3    lea         eax,[ebp-28]
 004191F6    call        @VarCast
 004191FB    mov         ax,word ptr [ebp-28]
 004191FF    cmp         ax,word ptr [ebp-0E]
>00419203    je          0041920A
 00419205    call        VarCastError
 0041920A    mov         eax,dword ptr [ebp-8]
 0041920D    push        eax
 0041920E    lea         ecx,[ebp-28]
 00419211    mov         edx,ebx
 00419213    mov         eax,dword ptr [ebp-14]
 00419216    mov         ebx,dword ptr [eax]
 00419218    call        dword ptr [ebx+34]
 0041921B    and         eax,7F
 0041921E    mov         edx,dword ptr [ebp-8]
 00419221    lea         edx,[edx*2+56BB7C]
 00419228    mov         al,byte ptr [edx+eax-1C]
 0041922C    mov         byte ptr [ebp-9],al
 0041922F    xor         eax,eax
 00419231    pop         edx
 00419232    pop         ecx
 00419233    pop         ecx
 00419234    mov         dword ptr fs:[eax],edx
 00419237    push        4193D0
 0041923C    lea         eax,[ebp-28]
 0041923F    call        @VarClear
 00419244    ret
>00419245    jmp         @HandleFinally
>0041924A    jmp         0041923C
 0041924C    mov         eax,dword ptr [ebp-8]
 0041924F    push        eax
 00419250    mov         ecx,dword ptr [ebp-4]
 00419253    mov         edx,ebx
 00419255    mov         eax,dword ptr [ebp-14]
 00419258    mov         ebx,dword ptr [eax]
 0041925A    call        dword ptr [ebx+34]
 0041925D    and         eax,7F
 00419260    mov         edx,dword ptr [ebp-8]
 00419263    lea         edx,[edx*2+56BB7C]
 0041926A    mov         al,byte ptr [edx+eax-1C]
 0041926E    mov         byte ptr [ebp-9],al
>00419271    jmp         004193D0
 00419276    mov         esi,dword ptr [ebp-4]
 00419279    mov         si,word ptr [esi]
 0041927C    mov         eax,esi
 0041927E    and         ax,0FFF
 00419282    cmp         ax,10F
>00419286    jae         004192EE
 00419288    lea         eax,[ebp-28]
 0041928B    push        eax
 0041928C    call        oleaut32.VariantInit
 00419291    xor         eax,eax
 00419293    push        ebp
 00419294    push        4192E7
 00419299    push        dword ptr fs:[eax]
 0041929C    mov         dword ptr fs:[eax],esp
 0041929F    mov         ecx,dword ptr [ebp-4]
 004192A2    movzx       ecx,word ptr [ecx]
 004192A5    mov         edx,ebx
 004192A7    lea         eax,[ebp-28]
 004192AA    call        @VarCast
 004192AF    mov         eax,dword ptr [ebp-4]
 004192B2    mov         ax,word ptr [eax]
 004192B5    cmp         ax,word ptr [ebp-28]
>004192B9    je          004192C0
 004192BB    call        VarCastError
 004192C0    mov         edx,dword ptr [ebp-4]
 004192C3    lea         eax,[ebp-28]
 004192C6    mov         ecx,dword ptr [ebp-8]
 004192C9    call        00418E30
 004192CE    mov         byte ptr [ebp-9],al
 004192D1    xor         eax,eax
 004192D3    pop         edx
 004192D4    pop         ecx
 004192D5    pop         ecx
 004192D6    mov         dword ptr fs:[eax],edx
 004192D9    push        4193D0
 004192DE    lea         eax,[ebp-28]
 004192E1    call        @VarClear
 004192E6    ret
>004192E7    jmp         @HandleFinally
>004192EC    jmp         004192DE
 004192EE    lea         edx,[ebp-18]
 004192F1    mov         eax,dword ptr [ebp-4]
 004192F4    mov         eax,esi
 004192F6    call        FindCustomVariantType
 004192FB    test        al,al
>004192FD    jne         00419309
 004192FF    call        VarInvalidOp
>00419304    jmp         004193D0
 00419309    lea         eax,[ebp-0C]
 0041930C    push        eax
 0041930D    mov         edx,ebx
 0041930F    mov         ecx,0B
 00419314    mov         eax,dword ptr [ebp-18]
 00419317    mov         esi,dword ptr [eax]
 00419319    call        dword ptr [esi+4]
 0041931C    test        al,al
>0041931E    je          004193CB
 00419324    mov         ax,word ptr [ebx]
 00419327    cmp         ax,word ptr [ebp-0C]
>0041932B    je          004193A4
 0041932D    lea         eax,[ebp-28]
 00419330    push        eax
 00419331    call        oleaut32.VariantInit
 00419336    xor         eax,eax
 00419338    push        ebp
 00419339    push        41939D
 0041933E    push        dword ptr fs:[eax]
 00419341    mov         dword ptr fs:[eax],esp
 00419344    movzx       ecx,word ptr [ebp-0C]
 00419348    mov         edx,ebx
 0041934A    lea         eax,[ebp-28]
 0041934D    call        @VarCast
 00419352    mov         ax,word ptr [ebp-28]
 00419356    cmp         ax,word ptr [ebp-0C]
>0041935A    je          00419361
 0041935C    call        VarCastError
 00419361    mov         eax,dword ptr [ebp-8]
 00419364    push        eax
 00419365    mov         ecx,dword ptr [ebp-4]
 00419368    lea         edx,[ebp-28]
 0041936B    mov         eax,dword ptr [ebp-18]
 0041936E    mov         ebx,dword ptr [eax]
 00419370    call        dword ptr [ebx+34]
 00419373    and         eax,7F
 00419376    mov         edx,dword ptr [ebp-8]
 00419379    lea         edx,[edx*2+56BB7C]
 00419380    mov         al,byte ptr [edx+eax-1C]
 00419384    mov         byte ptr [ebp-9],al
 00419387    xor         eax,eax
 00419389    pop         edx
 0041938A    pop         ecx
 0041938B    pop         ecx
 0041938C    mov         dword ptr fs:[eax],edx
 0041938F    push        4193D0
 00419394    lea         eax,[ebp-28]
 00419397    call        @VarClear
 0041939C    ret
>0041939D    jmp         @HandleFinally
>004193A2    jmp         00419394
 004193A4    mov         eax,dword ptr [ebp-8]
 004193A7    push        eax
 004193A8    mov         ecx,dword ptr [ebp-4]
 004193AB    mov         edx,ebx
 004193AD    mov         eax,dword ptr [ebp-18]
 004193B0    mov         ebx,dword ptr [eax]
 004193B2    call        dword ptr [ebx+34]
 004193B5    and         eax,7F
 004193B8    mov         edx,dword ptr [ebp-8]
 004193BB    lea         edx,[edx*2+56BB7C]
 004193C2    mov         al,byte ptr [edx+eax-1C]
 004193C6    mov         byte ptr [ebp-9],al
>004193C9    jmp         004193D0
 004193CB    call        VarInvalidOp
 004193D0    mov         al,byte ptr [ebp-9]
 004193D3    pop         esi
 004193D4    pop         ebx
 004193D5    mov         esp,ebp
 004193D7    pop         ebp
 004193D8    ret
*}
end;

//004193DC
function VarCompare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 004193DC    push        esi
 004193DD    push        edi
 004193DE    mov         si,word ptr [eax]
 004193E1    mov         di,word ptr [edx]
 004193E4    cmp         si,10F
>004193E9    jae         004193FA
 004193EB    cmp         di,10F
>004193F0    jae         004193FA
 004193F2    call        00418E30
 004193F7    pop         edi
 004193F8    pop         esi
 004193F9    ret
 004193FA    cmp         si,400C
>004193FF    jne         0041940B
 00419401    mov         eax,dword ptr [eax+8]
 00419404    call        VarCompare
>00419409    jmp         00419440
 0041940B    cmp         di,400C
>00419410    jne         0041941C
 00419412    mov         edx,dword ptr [edx+8]
 00419415    call        VarCompare
>0041941A    jmp         00419440
 0041941C    and         si,0FFF
 00419421    cmp         si,10F
>00419426    jae         0041943B
 00419428    and         di,0FFF
 0041942D    cmp         di,10F
>00419432    jae         0041943B
 00419434    call        00418E30
>00419439    jmp         00419440
 0041943B    call        VarCompareRare
 00419440    pop         edi
 00419441    pop         esi
 00419442    ret
*}
end;

//004195C8
function VarTypeAsText(const AType:TVarType):AnsiString;
begin
{*
 004195C8    push        ebp
 004195C9    mov         ebp,esp
 004195CB    add         esp,0FFFFFDF8
 004195D1    push        ebx
 004195D2    push        esi
 004195D3    push        edi
 004195D4    xor         ecx,ecx
 004195D6    mov         dword ptr [ebp-208],ecx
 004195DC    mov         esi,edx
 004195DE    mov         ebx,eax
 004195E0    xor         eax,eax
 004195E2    push        ebp
 004195E3    push        4196EE
 004195E8    push        dword ptr fs:[eax]
 004195EB    mov         dword ptr fs:[eax],esp
 004195EE    mov         edi,ebx
 004195F0    and         di,0FFF
 004195F5    cmp         di,14
>004195F9    ja          00419611
 004195FB    mov         eax,esi
 004195FD    movzx       edx,di
 00419600    mov         edx,dword ptr [edx*4+56BC04];^'Empty'
 00419607    call        @LStrAsg
>0041960C    jmp         004196AF
 00419611    cmp         bx,100
>00419616    jne         00419629
 00419618    mov         eax,esi
 0041961A    mov         edx,419704;'String'
 0041961F    call        @LStrAsg
>00419624    jmp         004196AF
 00419629    cmp         bx,101
>0041962E    jne         0041963E
 00419630    mov         eax,esi
 00419632    mov         edx,419714;'Any'
 00419637    call        @LStrAsg
>0041963C    jmp         004196AF
 0041963E    lea         edx,[ebp-4]
 00419641    mov         eax,ebx
 00419643    call        FindCustomVariantType
 00419648    test        al,al
>0041964A    je          00419687
 0041964C    lea         eax,[ebp-104]
 00419652    push        eax
 00419653    lea         edx,[ebp-204]
 00419659    mov         eax,dword ptr [ebp-4]
 0041965C    mov         eax,dword ptr [eax]
 0041965E    call        TObject.ClassName
 00419663    lea         eax,[ebp-204]
 00419669    mov         ecx,7FFFFFFF
 0041966E    mov         edx,2
 00419673    call        @Copy
 00419678    lea         edx,[ebp-104]
 0041967E    mov         eax,esi
 00419680    call        @LStrFromString
>00419685    jmp         004196AF
 00419687    lea         ecx,[ebp-208]
 0041968D    movzx       eax,di
 00419690    mov         edx,4
 00419695    call        IntToHex
 0041969A    mov         ecx,dword ptr [ebp-208]
 004196A0    mov         edx,dword ptr ds:[56E580];^gvar_0056B840
 004196A6    mov         edx,dword ptr [edx]
 004196A8    mov         eax,esi
 004196AA    call        @LStrCat3
 004196AF    test        bh,20
>004196B2    je          004196C2
 004196B4    mov         ecx,dword ptr [esi]
 004196B6    mov         eax,esi
 004196B8    mov         edx,419720;'Array '
 004196BD    call        @LStrCat3
 004196C2    test        bh,40
>004196C5    je          004196D5
 004196C7    mov         ecx,dword ptr [esi]
 004196C9    mov         eax,esi
 004196CB    mov         edx,419730;'ByRef '
 004196D0    call        @LStrCat3
 004196D5    xor         eax,eax
 004196D7    pop         edx
 004196D8    pop         ecx
 004196D9    pop         ecx
 004196DA    mov         dword ptr fs:[eax],edx
 004196DD    push        4196F5
 004196E2    lea         eax,[ebp-208]
 004196E8    call        @LStrClr
 004196ED    ret
>004196EE    jmp         @HandleFinally
>004196F3    jmp         004196E2
 004196F5    pop         edi
 004196F6    pop         esi
 004196F7    pop         ebx
 004196F8    mov         esp,ebp
 004196FA    pop         ebp
 004196FB    ret
*}
end;

//00419738
{*function sub_00419738(?:?):?;
begin
 00419738    mov         ax,word ptr [eax]
 0041973B    ret
end;*}

//0041973C
{*function sub_0041973C(?:?):?;
begin
 0041973C    push        ecx
 0041973D    mov         edx,esp
 0041973F    mov         dword ptr [edx],eax
>00419741    jmp         0041974A
 00419743    mov         eax,dword ptr [edx]
 00419745    mov         eax,dword ptr [eax+8]
 00419748    mov         dword ptr [edx],eax
 0041974A    mov         eax,dword ptr [edx]
 0041974C    cmp         word ptr [eax],400C
>00419751    je          00419743
 00419753    mov         eax,dword ptr [edx]
 00419755    pop         edx
 00419756    ret
end;*}

//00419758
function VarIsClear(const V:Variant):Boolean;
begin
{*
 00419758    push        ebx
 00419759    push        esi
 0041975A    push        edi
 0041975B    add         esp,0FFFFFFEC
 0041975E    mov         ebx,eax
 00419760    mov         eax,ebx
 00419762    call        0041973C
 00419767    mov         esi,eax
 00419769    lea         edi,[esp+4]
 0041976D    movs        dword ptr [edi],dword ptr [esi]
 0041976E    movs        dword ptr [edi],dword ptr [esi]
 0041976F    movs        dword ptr [edi],dword ptr [esi]
 00419770    movs        dword ptr [edi],dword ptr [esi]
 00419771    mov         bx,word ptr [esp+4]
 00419776    cmp         bx,10F
>0041977B    jae         004197A5
 0041977D    cmp         word ptr [esp+4],0
>00419783    je          004197A1
 00419785    mov         ax,word ptr [esp+4]
 0041978A    cmp         ax,9
>0041978E    je          00419796
 00419790    cmp         ax,0D
>00419794    jne         0041979D
 00419796    cmp         dword ptr [esp+0C],0
>0041979B    je          004197A1
 0041979D    xor         eax,eax
>0041979F    jmp         004197C2
 004197A1    mov         al,1
>004197A3    jmp         004197C2
 004197A5    mov         edx,esp
 004197A7    mov         eax,ebx
 004197A9    call        FindCustomVariantType
 004197AE    test        al,al
>004197B0    je          004197C0
 004197B2    lea         edx,[esp+4]
 004197B6    mov         eax,dword ptr [esp]
 004197B9    mov         ecx,dword ptr [eax]
 004197BB    call        dword ptr [ecx+14]
>004197BE    jmp         004197C2
 004197C0    xor         eax,eax
 004197C2    add         esp,14
 004197C5    pop         edi
 004197C6    pop         esi
 004197C7    pop         ebx
 004197C8    ret
*}
end;

//004197CC
function VarTypeIsCustom(const AVarType:TVarType):Boolean;
begin
{*
 004197CC    push        ecx
 004197CD    mov         edx,esp
 004197CF    call        FindCustomVariantType
 004197D4    pop         edx
 004197D5    ret
*}
end;

//004197D8
function VarIsNull(const V:Variant):Boolean;
begin
{*
 004197D8    push        ebx
 004197D9    mov         ebx,eax
 004197DB    mov         eax,ebx
 004197DD    call        0041973C
 004197E2    cmp         word ptr [eax],1
 004197E6    sete        al
 004197E9    pop         ebx
 004197EA    ret
*}
end;

//004197EC
function VarToStr(const V:Variant):AnsiString;
begin
{*
 004197EC    push        ebx
 004197ED    push        esi
 004197EE    mov         esi,edx
 004197F0    mov         ebx,eax
 004197F2    mov         ecx,esi
 004197F4    mov         eax,ebx
 004197F6    mov         edx,dword ptr ds:[56BB40];gvar_0056BB40
 004197FC    call        VarToStrDef
 00419801    pop         esi
 00419802    pop         ebx
 00419803    ret
*}
end;

//00419804
function VarToStrDef(const V:Variant; const ADefault:AnsiString):AnsiString;
begin
{*
 00419804    push        ebx
 00419805    push        esi
 00419806    push        edi
 00419807    mov         esi,ecx
 00419809    mov         edi,edx
 0041980B    mov         ebx,eax
 0041980D    mov         eax,ebx
 0041980F    call        VarIsNull
 00419814    test        al,al
>00419816    jne         00419823
 00419818    mov         eax,esi
 0041981A    mov         edx,ebx
 0041981C    call        00417960
>00419821    jmp         0041982C
 00419823    mov         eax,esi
 00419825    mov         edx,edi
 00419827    call        @LStrAsg
 0041982C    pop         edi
 0041982D    pop         esi
 0041982E    pop         ebx
 0041982F    ret
*}
end;

//00419830
function VarToWideStr(const V:Variant):WideString;
begin
{*
 00419830    push        ebp
 00419831    mov         ebp,esp
 00419833    push        0
 00419835    push        ebx
 00419836    push        esi
 00419837    mov         esi,edx
 00419839    mov         ebx,eax
 0041983B    xor         eax,eax
 0041983D    push        ebp
 0041983E    push        419879
 00419843    push        dword ptr fs:[eax]
 00419846    mov         dword ptr fs:[eax],esp
 00419849    lea         eax,[ebp-4]
 0041984C    mov         edx,dword ptr ds:[56BB40];gvar_0056BB40
 00419852    call        @WStrFromLStr
 00419857    mov         edx,dword ptr [ebp-4]
 0041985A    mov         ecx,esi
 0041985C    mov         eax,ebx
 0041985E    call        VarToWideStrDef
 00419863    xor         eax,eax
 00419865    pop         edx
 00419866    pop         ecx
 00419867    pop         ecx
 00419868    mov         dword ptr fs:[eax],edx
 0041986B    push        419880
 00419870    lea         eax,[ebp-4]
 00419873    call        @WStrClr
 00419878    ret
>00419879    jmp         @HandleFinally
>0041987E    jmp         00419870
 00419880    pop         esi
 00419881    pop         ebx
 00419882    pop         ecx
 00419883    pop         ebp
 00419884    ret
*}
end;

//00419888
function VarToWideStrDef(const V:Variant; const ADefault:WideString):WideString;
begin
{*
 00419888    push        ebx
 00419889    push        esi
 0041988A    push        edi
 0041988B    mov         esi,ecx
 0041988D    mov         edi,edx
 0041988F    mov         ebx,eax
 00419891    mov         eax,ebx
 00419893    call        VarIsNull
 00419898    test        al,al
>0041989A    jne         004198A7
 0041989C    mov         eax,esi
 0041989E    mov         edx,ebx
 004198A0    call        00418080
>004198A5    jmp         004198B0
 004198A7    mov         eax,esi
 004198A9    mov         edx,edi
 004198AB    call        @WStrAsg
 004198B0    pop         edi
 004198B1    pop         esi
 004198B2    pop         ebx
 004198B3    ret
*}
end;

//004198B4
function VarSameValue(const A:Variant; const B:Variant):Boolean;
begin
{*
 004198B4    push        ebx
 004198B5    push        esi
 004198B6    push        edi
 004198B7    add         esp,0FFFFFFE0
 004198BA    mov         esi,edx
 004198BC    mov         ebx,eax
 004198BE    mov         eax,ebx
 004198C0    call        0041973C
 004198C5    push        esi
 004198C6    mov         esi,eax
 004198C8    lea         edi,[esp+4]
 004198CC    movs        dword ptr [edi],dword ptr [esi]
 004198CD    movs        dword ptr [edi],dword ptr [esi]
 004198CE    movs        dword ptr [edi],dword ptr [esi]
 004198CF    movs        dword ptr [edi],dword ptr [esi]
 004198D0    pop         esi
 004198D1    mov         eax,esi
 004198D3    call        0041973C
 004198D8    push        esi
 004198D9    mov         esi,eax
 004198DB    lea         edi,[esp+14]
 004198DF    movs        dword ptr [edi],dword ptr [esi]
 004198E0    movs        dword ptr [edi],dword ptr [esi]
 004198E1    movs        dword ptr [edi],dword ptr [esi]
 004198E2    movs        dword ptr [edi],dword ptr [esi]
 004198E3    pop         esi
 004198E4    mov         ax,word ptr [esp]
 004198E8    test        ax,ax
>004198EB    jne         004198F8
 004198ED    cmp         word ptr [esp+10],0
 004198F3    sete        al
>004198F6    jmp         00419924
 004198F8    cmp         ax,1
>004198FC    jne         00419909
 004198FE    cmp         word ptr [esp+10],1
 00419904    sete        al
>00419907    jmp         00419924
 00419909    mov         ax,word ptr [esp+10]
 0041990E    sub         ax,2
>00419912    jae         00419918
 00419914    xor         eax,eax
>00419916    jmp         00419924
 00419918    mov         eax,ebx
 0041991A    mov         edx,esi
 0041991C    call        @VarCmpEQ
 00419921    sete        al
 00419924    add         esp,20
 00419927    pop         edi
 00419928    pop         esi
 00419929    pop         ebx
 0041992A    ret
*}
end;

//0041992C
procedure SetVarAsError(var V:TVarData; AResult:HRESULT);
begin
{*
 0041992C    push        ebx
 0041992D    push        esi
 0041992E    mov         esi,edx
 00419930    mov         ebx,eax
 00419932    mov         eax,ebx
 00419934    call        @VarClear
 00419939    mov         word ptr [ebx],0A
 0041993E    mov         dword ptr [ebx+8],esi
 00419941    pop         esi
 00419942    pop         ebx
 00419943    ret
*}
end;

//00419944
procedure SetClearVarToEmptyParam(var V:TVarData);
begin
{*
 00419944    mov         edx,80020004
 00419949    call        SetVarAsError
 0041994E    ret
*}
end;

//00419950
function GetVarDataArrayInfo(const AVarData:TVarData; var AVarType:TVarType; var AVarArray:PVarArray):Boolean;
begin
{*
 00419950    push        ebx
 00419951    mov         bx,word ptr [eax]
 00419954    cmp         bx,400C
>00419959    jne         00419967
 0041995B    mov         eax,dword ptr [eax+8]
 0041995E    call        GetVarDataArrayInfo
 00419963    mov         ebx,eax
>00419965    jmp         0041998F
 00419967    mov         word ptr [edx],bx
 0041996A    test        byte ptr [edx+1],20
 0041996E    setne       bl
 00419971    test        bl,bl
>00419973    je          0041998B
 00419975    test        byte ptr [edx+1],40
>00419979    je          00419984
 0041997B    mov         eax,dword ptr [eax+8]
 0041997E    mov         eax,dword ptr [eax]
 00419980    mov         dword ptr [ecx],eax
>00419982    jmp         0041998F
 00419984    mov         eax,dword ptr [eax+8]
 00419987    mov         dword ptr [ecx],eax
>00419989    jmp         0041998F
 0041998B    xor         eax,eax
 0041998D    mov         dword ptr [ecx],eax
 0041998F    mov         eax,ebx
 00419991    pop         ebx
 00419992    ret
*}
end;

//00419994
{*procedure sub_00419994(?:?; ?:?; ?:Integer; ?:?);
begin
 00419994    push        ebp
 00419995    mov         ebp,esp
 00419997    add         esp,0FFFFFDF4
 0041999D    push        ebx
 0041999E    push        esi
 0041999F    mov         word ptr [ebp-2],cx
 004199A3    mov         ebx,edx
 004199A5    mov         esi,eax
 004199A7    test        bl,1
>004199AA    je          004199BE
 004199AC    cmp         ebx,7F
>004199AF    jg          004199BE
 004199B1    mov         ax,word ptr [ebp-2]
 004199B5    call        VarTypeIsValidArrayType
 004199BA    test        al,al
>004199BC    jne         004199C3
 004199BE    call        VarArrayCreateError
 004199C3    inc         ebx
 004199C4    sar         ebx,1
>004199C6    jns         004199CB
 004199C8    adc         ebx,0
 004199CB    mov         dword ptr [ebp-8],ebx
 004199CE    mov         ebx,dword ptr [ebp-8]
 004199D1    dec         ebx
 004199D2    test        ebx,ebx
>004199D4    jl          004199F8
 004199D6    inc         ebx
 004199D7    lea         edx,[ebp-20C]
 004199DD    mov         eax,esi
 004199DF    mov         ecx,edx
 004199E1    mov         esi,dword ptr [eax]
 004199E3    mov         dword ptr [ecx+4],esi
 004199E6    mov         esi,dword ptr [eax+4]
 004199E9    sub         esi,dword ptr [ecx+4]
 004199EC    inc         esi
 004199ED    mov         dword ptr [ecx],esi
 004199EF    add         eax,8
 004199F2    add         edx,8
 004199F5    dec         ebx
>004199F6    jne         004199DF
 004199F8    lea         eax,[ebp-20C]
 004199FE    push        eax
 004199FF    mov         eax,dword ptr [ebp-8]
 00419A02    push        eax
 00419A03    movzx       eax,word ptr [ebp-2]
 00419A07    push        eax
 00419A08    call        oleaut32.SafeArrayCreate
 00419A0D    mov         dword ptr [ebp-0C],eax
 00419A10    cmp         dword ptr [ebp-0C],0
>00419A14    jne         00419A1B
 00419A16    call        VarArrayCreateError
 00419A1B    mov         eax,dword ptr [ebp+8]
 00419A1E    call        @VarClear
 00419A23    mov         ax,word ptr [ebp-2]
 00419A27    or          ax,2000
 00419A2B    mov         edx,dword ptr [ebp+8]
 00419A2E    mov         word ptr [edx],ax
 00419A31    mov         eax,dword ptr [ebp+8]
 00419A34    mov         edx,dword ptr [ebp-0C]
 00419A37    mov         dword ptr [eax+8],edx
 00419A3A    pop         esi
 00419A3B    pop         ebx
 00419A3C    mov         esp,ebp
 00419A3E    pop         ebp
 00419A3F    ret         4
end;*}

//00419A44
function VarArrayAsPSafeArray(const A:Variant):PVarArray;
begin
{*
 00419A44    push        ebx
 00419A45    add         esp,0FFFFFFF8
 00419A48    mov         ebx,eax
 00419A4A    mov         ecx,esp
 00419A4C    lea         edx,[esp+4]
 00419A50    mov         eax,ebx
 00419A52    call        GetVarDataArrayInfo
 00419A57    test        al,al
>00419A59    jne         00419A65
 00419A5B    mov         eax,80070057
 00419A60    call        VarResultCheck
 00419A65    mov         eax,dword ptr [esp]
 00419A68    pop         ecx
 00419A69    pop         edx
 00419A6A    pop         ebx
 00419A6B    ret
*}
end;

//00419A6C
function VarArrayDimCount(const A:Variant):Integer;
begin
{*
 00419A6C    push        ebx
 00419A6D    add         esp,0FFFFFFF8
 00419A70    mov         ebx,eax
 00419A72    lea         ecx,[esp+4]
 00419A76    mov         edx,esp
 00419A78    mov         eax,ebx
 00419A7A    call        GetVarDataArrayInfo
 00419A7F    test        al,al
>00419A81    je          00419A8C
 00419A83    mov         eax,dword ptr [esp+4]
 00419A87    movzx       eax,word ptr [eax]
>00419A8A    jmp         00419A8E
 00419A8C    xor         eax,eax
 00419A8E    pop         ecx
 00419A8F    pop         edx
 00419A90    pop         ebx
 00419A91    ret
*}
end;

//00419A94
function VarArrayLowBound(const A:Variant; Dim:Integer):Integer;
begin
{*
 00419A94    push        ebx
 00419A95    push        esi
 00419A96    push        ecx
 00419A97    mov         esi,edx
 00419A99    mov         ebx,eax
 00419A9B    push        esp
 00419A9C    push        esi
 00419A9D    mov         eax,ebx
 00419A9F    call        VarArrayAsPSafeArray
 00419AA4    push        eax
 00419AA5    call        oleaut32.SafeArrayGetLBound
 00419AAA    call        VarResultCheck
 00419AAF    mov         eax,dword ptr [esp]
 00419AB2    pop         edx
 00419AB3    pop         esi
 00419AB4    pop         ebx
 00419AB5    ret
*}
end;

//00419AB8
function VarArrayHighBound(const A:Variant; Dim:Integer):Integer;
begin
{*
 00419AB8    push        ebx
 00419AB9    push        esi
 00419ABA    push        ecx
 00419ABB    mov         esi,edx
 00419ABD    mov         ebx,eax
 00419ABF    push        esp
 00419AC0    push        esi
 00419AC1    mov         eax,ebx
 00419AC3    call        VarArrayAsPSafeArray
 00419AC8    push        eax
 00419AC9    call        oleaut32.SafeArrayGetUBound
 00419ACE    call        VarResultCheck
 00419AD3    mov         eax,dword ptr [esp]
 00419AD6    pop         edx
 00419AD7    pop         esi
 00419AD8    pop         ebx
 00419AD9    ret
*}
end;

//00419ADC
function VarArrayLock(const A:Variant):Pointer;
begin
{*
 00419ADC    push        ebx
 00419ADD    push        ecx
 00419ADE    mov         ebx,eax
 00419AE0    push        esp
 00419AE1    mov         eax,ebx
 00419AE3    call        VarArrayAsPSafeArray
 00419AE8    push        eax
 00419AE9    call        oleaut32.SafeArrayAccessData
 00419AEE    call        VarResultCheck
 00419AF3    mov         eax,dword ptr [esp]
 00419AF6    pop         edx
 00419AF7    pop         ebx
 00419AF8    ret
*}
end;

//00419AFC
procedure VarArrayUnlock(const A:Variant);
begin
{*
 00419AFC    push        ebx
 00419AFD    mov         ebx,eax
 00419AFF    mov         eax,ebx
 00419B01    call        VarArrayAsPSafeArray
 00419B06    push        eax
 00419B07    call        oleaut32.SafeArrayUnaccessData
 00419B0C    call        VarResultCheck
 00419B11    pop         ebx
 00419B12    ret
*}
end;

//00419B14
function VarIsArray(const A:Variant):Boolean;
begin
{*
 00419B14    mov         dl,1
 00419B16    call        VarIsArray
 00419B1B    ret
*}
end;

//00419B1C
function VarIsArray(const A:Variant; AResolveByRef:Boolean):Boolean;
begin
{*
 00419B1C    add         esp,0FFFFFFF8
 00419B1F    test        dl,dl
>00419B21    je          00419B31
 00419B23    lea         ecx,[esp+4]
 00419B27    mov         edx,esp
 00419B29    call        GetVarDataArrayInfo
 00419B2E    pop         ecx
 00419B2F    pop         edx
 00419B30    ret
 00419B31    mov         ax,word ptr [eax]
 00419B34    and         ax,2000
 00419B38    cmp         ax,2000
 00419B3C    sete        al
 00419B3F    pop         ecx
 00419B40    pop         edx
 00419B41    ret
*}
end;

//00419B44
function VarTypeIsValidArrayType(const AVarType:TVarType):Boolean;
begin
{*
 00419B44    mov         edx,eax
 00419B46    sub         dx,16
>00419B4A    jae         00419B5E
 00419B4C    movzx       eax,ax
 00419B4F    lea         eax,[eax+eax*2]
 00419B52    mov         edx,dword ptr ds:[56E424]
 00419B58    cmp         byte ptr [edx+eax*4],0
>00419B5C    jne         00419B61
 00419B5E    xor         eax,eax
 00419B60    ret
 00419B61    mov         al,1
 00419B63    ret
*}
end;

//00419B64
function VarTypeIsValidElementType(const AVarType:TVarType):Boolean;
begin
{*
 00419B64    push        ebx
 00419B65    push        esi
 00419B66    mov         ebx,eax
 00419B68    movzx       esi,bx
 00419B6B    and         esi,0FFFFBFFF
 00419B71    mov         eax,esi
 00419B73    sub         eax,16
>00419B76    jae         00419B88
 00419B78    lea         eax,[esi+esi*2]
 00419B7B    mov         edx,dword ptr ds:[56E424]
 00419B81    cmp         byte ptr [edx+eax*4+1],0
>00419B86    jne         00419B98
 00419B88    mov         eax,ebx
 00419B8A    call        VarTypeIsCustom
 00419B8F    test        al,al
>00419B91    jne         00419B98
 00419B93    xor         eax,eax
 00419B95    pop         esi
 00419B96    pop         ebx
 00419B97    ret
 00419B98    mov         al,1
 00419B9A    pop         esi
 00419B9B    pop         ebx
 00419B9C    ret
*}
end;

//00419BA0
function @VarArrayGet(var A:TVarData; IndexCount:Integer; const Indices:TVarArrayCoorArray):TVarData; cdecl;
begin
{*
 00419BA0    push        ebp
 00419BA1    mov         ebp,esp
 00419BA3    add         esp,0FFFFFFE4
 00419BA6    push        ebx
 00419BA7    lea         ecx,[ebp-18]
 00419BAA    lea         edx,[ebp-12]
 00419BAD    mov         eax,dword ptr [ebp+0C]
 00419BB0    call        GetVarDataArrayInfo
 00419BB5    test        al,al
>00419BB7    jne         00419BC3
 00419BB9    mov         eax,80070057
 00419BBE    call        VarResultCheck
 00419BC3    mov         eax,dword ptr [ebp-18]
 00419BC6    movzx       eax,word ptr [eax]
 00419BC9    cmp         eax,dword ptr [ebp+10]
>00419BCC    je          00419BD8
 00419BCE    mov         eax,8002000B
 00419BD3    call        VarResultCheck
 00419BD8    lea         eax,[ebp-10]
 00419BDB    push        eax
 00419BDC    call        oleaut32.VariantInit
 00419BE1    xor         eax,eax
 00419BE3    push        ebp
 00419BE4    push        419C60
 00419BE9    push        dword ptr fs:[eax]
 00419BEC    mov         dword ptr fs:[eax],esp
 00419BEF    mov         bx,word ptr [ebp-12]
 00419BF3    and         bx,0FFF
 00419BF8    movzx       ebx,bx
 00419BFB    cmp         ebx,0C
>00419BFE    jne         00419C25
 00419C00    lea         eax,[ebp-1C]
 00419C03    push        eax
 00419C04    lea         eax,[ebp+14]
 00419C07    push        eax
 00419C08    mov         eax,dword ptr [ebp-18]
 00419C0B    push        eax
 00419C0C    call        oleaut32.SafeArrayPtrOfIndex
 00419C11    call        VarResultCheck
 00419C16    mov         eax,dword ptr [ebp-1C]
 00419C19    mov         edx,eax
 00419C1B    lea         eax,[ebp-10]
 00419C1E    call        @VarCopy
>00419C23    jmp         00419C3F
 00419C25    lea         eax,[ebp-8]
 00419C28    push        eax
 00419C29    lea         eax,[ebp+14]
 00419C2C    push        eax
 00419C2D    mov         eax,dword ptr [ebp-18]
 00419C30    push        eax
 00419C31    call        oleaut32.SafeArrayGetElement
 00419C36    call        VarResultCheck
 00419C3B    mov         word ptr [ebp-10],bx
 00419C3F    lea         edx,[ebp-10]
 00419C42    mov         eax,dword ptr [ebp+8]
 00419C45    call        @VarCopy
 00419C4A    xor         eax,eax
 00419C4C    pop         edx
 00419C4D    pop         ecx
 00419C4E    pop         ecx
 00419C4F    mov         dword ptr fs:[eax],edx
 00419C52    push        419C67
 00419C57    lea         eax,[ebp-10]
 00419C5A    call        @VarClear
 00419C5F    ret
>00419C60    jmp         @HandleFinally
>00419C65    jmp         00419C57
 00419C67    pop         ebx
 00419C68    mov         esp,ebp
 00419C6A    pop         ebp
 00419C6B    ret
*}
end;

//00419C6C
function VarArrayGet(const A:Variant; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1):Variant;
begin
{*
 00419C6C    push        ebp
 00419C6D    mov         ebp,esp
 00419C6F    push        ebx
 00419C70    mov         ebx,ecx
 00419C72    inc         ebx
>00419C73    jle         00419C7B
 00419C75    push        dword ptr [edx+ecx*4]
 00419C78    dec         ecx
>00419C79    jns         00419C75
 00419C7B    push        ebx
 00419C7C    push        eax
 00419C7D    mov         eax,dword ptr [ebp+8]
 00419C80    push        eax
 00419C81    call        @VarArrayGet
 00419C86    lea         esp,[esp+ebx*4+0C]
 00419C8A    pop         ebx
 00419C8B    pop         ebp
 00419C8C    ret         4
*}
end;

//00419C90
procedure @VarArrayPut(var A:TVarData; const Value:TVarData; IndexCount:Integer; const Indices:TVarArrayCoorArray); cdecl;
begin
{*
 00419C90    push        ebp
 00419C91    mov         ebp,esp
 00419C93    add         esp,0FFFFFFDC
 00419C96    push        ebx
 00419C97    push        esi
 00419C98    mov         esi,dword ptr [ebp+0C]
 00419C9B    lea         ecx,[ebp-18]
 00419C9E    lea         edx,[ebp-12]
 00419CA1    mov         eax,dword ptr [ebp+8]
 00419CA4    call        GetVarDataArrayInfo
 00419CA9    test        al,al
>00419CAB    jne         00419CB7
 00419CAD    mov         eax,80070057
 00419CB2    call        VarResultCheck
 00419CB7    lea         ecx,[ebp-20]
 00419CBA    lea         edx,[ebp-1A]
 00419CBD    mov         eax,esi
 00419CBF    call        GetVarDataArrayInfo
 00419CC4    test        al,al
>00419CC6    jne         00419CE7
 00419CC8    mov         ax,word ptr [ebp-1A]
 00419CCC    call        VarTypeIsValidElementType
 00419CD1    test        al,al
>00419CD3    jne         00419CE7
 00419CD5    cmp         word ptr [ebp-1A],100
>00419CDB    je          00419CE7
 00419CDD    mov         eax,80020005
 00419CE2    call        VarResultCheck
 00419CE7    mov         eax,dword ptr [ebp-18]
 00419CEA    movzx       eax,word ptr [eax]
 00419CED    cmp         eax,dword ptr [ebp+10]
>00419CF0    je          00419CFC
 00419CF2    mov         eax,8002000B
 00419CF7    call        VarResultCheck
 00419CFC    mov         bx,word ptr [ebp-12]
 00419D00    and         bx,0FFF
 00419D05    movzx       ebx,bx
 00419D08    cmp         ebx,0C
>00419D0B    jne         00419D47
 00419D0D    cmp         word ptr [ebp-1A],100
>00419D13    jne         00419D22
 00419D15    mov         ax,word ptr [ebp-1A]
 00419D19    call        VarTypeIsCustom
 00419D1E    test        al,al
>00419D20    je          00419D47
 00419D22    lea         eax,[ebp-24]
 00419D25    push        eax
 00419D26    lea         eax,[ebp+14]
 00419D29    push        eax
 00419D2A    mov         eax,dword ptr [ebp-18]
 00419D2D    push        eax
 00419D2E    call        oleaut32.SafeArrayPtrOfIndex
 00419D33    call        VarResultCheck
 00419D38    mov         eax,dword ptr [ebp-24]
 00419D3B    mov         edx,esi
 00419D3D    call        @VarCopy
>00419D42    jmp         00419DCF
 00419D47    lea         eax,[ebp-10]
 00419D4A    push        eax
 00419D4B    call        oleaut32.VariantInit
 00419D50    xor         eax,eax
 00419D52    push        ebp
 00419D53    push        419DC8
 00419D58    push        dword ptr fs:[eax]
 00419D5B    mov         dword ptr fs:[eax],esp
 00419D5E    cmp         ebx,0C
>00419D61    jne         00419D75
 00419D63    mov         edx,esi
 00419D65    lea         eax,[ebp-10]
 00419D68    call        004149AC
 00419D6D    lea         eax,[ebp-10]
 00419D70    mov         dword ptr [ebp-24],eax
>00419D73    jmp         00419D9C
 00419D75    mov         edx,esi
 00419D77    lea         eax,[ebp-10]
 00419D7A    mov         ecx,ebx
 00419D7C    call        @VarCast
 00419D81    add         ebx,0FFFFFFF8
 00419D84    sub         ebx,2
>00419D87    jb          00419D8E
 00419D89    sub         ebx,3
>00419D8C    jne         00419D96
 00419D8E    mov         eax,dword ptr [ebp-8]
 00419D91    mov         dword ptr [ebp-24],eax
>00419D94    jmp         00419D9C
 00419D96    lea         eax,[ebp-8]
 00419D99    mov         dword ptr [ebp-24],eax
 00419D9C    mov         eax,dword ptr [ebp-24]
 00419D9F    push        eax
 00419DA0    lea         eax,[ebp+14]
 00419DA3    push        eax
 00419DA4    mov         eax,dword ptr [ebp-18]
 00419DA7    push        eax
 00419DA8    call        oleaut32.SafeArrayPutElement
 00419DAD    call        VarResultCheck
 00419DB2    xor         eax,eax
 00419DB4    pop         edx
 00419DB5    pop         ecx
 00419DB6    pop         ecx
 00419DB7    mov         dword ptr fs:[eax],edx
 00419DBA    push        419DCF
 00419DBF    lea         eax,[ebp-10]
 00419DC2    call        @VarClear
 00419DC7    ret
>00419DC8    jmp         @HandleFinally
>00419DCD    jmp         00419DBF
 00419DCF    pop         esi
 00419DD0    pop         ebx
 00419DD1    mov         esp,ebp
 00419DD3    pop         ebp
 00419DD4    ret
*}
end;

//00419DD8
procedure VarArrayPut(var A:Variant; const Value:Variant; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1);
begin
{*
 00419DD8    push        ebp
 00419DD9    mov         ebp,esp
 00419DDB    push        ebx
 00419DDC    mov         ebx,dword ptr [ebp+8]
 00419DDF    test        ebx,ebx
>00419DE1    js          00419DE9
 00419DE3    push        dword ptr [ecx+ebx*4]
 00419DE6    dec         ebx
>00419DE7    jns         00419DE3
 00419DE9    mov         ebx,dword ptr [ebp+8]
 00419DEC    inc         ebx
 00419DED    push        ebx
 00419DEE    push        edx
 00419DEF    push        eax
 00419DF0    call        @VarArrayPut
 00419DF5    lea         esp,[esp+ebx*4+0C]
 00419DF9    pop         ebx
 00419DFA    pop         ebp
 00419DFB    ret         4
*}
end;

//00419E00
{*function sub_00419E00(?:?; ?:?; ?:?; ?:?):?;
begin
 00419E00    push        ebp
 00419E01    mov         ebp,esp
 00419E03    push        ebx
 00419E04    push        esi
 00419E05    push        edi
 00419E06    push        ebp
 00419E07    mov         esi,edx
 00419E09    mov         edi,dword ptr [ebp+8]
 00419E0C    mov         ebp,eax
 00419E0E    xor         ebx,ebx
 00419E10    test        ecx,ecx
>00419E12    jge         00419E1B
 00419E14    test        ebp,ebp
>00419E16    je          00419E38
 00419E18    mov         ebp,dword ptr [ebp]
 00419E1B    xor         eax,eax
 00419E1D    mov         al,byte ptr [edi+1]
 00419E20    add         edi,eax
 00419E22    mov         eax,dword ptr [esi+ebx*4]
 00419E25    mul         eax,dword ptr [edi+2]
 00419E28    mov         edi,dword ptr [edi+6]
 00419E2B    test        edi,edi
>00419E2D    je          00419E31
 00419E2F    mov         edi,dword ptr [edi]
 00419E31    add         ebp,eax
 00419E33    inc         ebx
 00419E34    cmp         ebx,ecx
>00419E36    jle         00419E14
 00419E38    mov         eax,ebp
 00419E3A    pop         ebp
 00419E3B    pop         edi
 00419E3C    pop         esi
 00419E3D    pop         ebx
 00419E3E    pop         ebp
 00419E3F    ret         4
end;*}

//00419E44
{*function sub_00419E44(?:?):?;
begin
 00419E44    push        ecx
 00419E45    xor         edx,edx
 00419E47    mov         dword ptr [esp],edx
 00419E4A    test        eax,eax
>00419E4C    je          00419E61
 00419E4E    xor         edx,edx
 00419E50    mov         dl,byte ptr [eax+1]
 00419E53    add         eax,edx
 00419E55    mov         edx,dword ptr [eax+6]
 00419E58    test        edx,edx
>00419E5A    je          00419E61
 00419E5C    mov         eax,dword ptr [edx]
 00419E5E    mov         dword ptr [esp],eax
 00419E61    mov         eax,dword ptr [esp]
 00419E64    pop         edx
 00419E65    ret
end;*}

//00419E68
{*function sub_00419E68(?:?):?;
begin
 00419E68    push        ebx
 00419E69    push        esi
 00419E6A    push        ecx
 00419E6B    mov         dword ptr [esp],eax
 00419E6E    mov         esi,esp
 00419E70    xor         ebx,ebx
>00419E72    jmp         00419E7E
 00419E74    inc         ebx
 00419E75    mov         eax,dword ptr [esi]
 00419E77    call        00419E44
 00419E7C    mov         dword ptr [esi],eax
 00419E7E    cmp         dword ptr [esi],0
>00419E81    je          00419E8A
 00419E83    mov         eax,dword ptr [esi]
 00419E85    cmp         byte ptr [eax],11
>00419E88    je          00419E74
 00419E8A    mov         eax,ebx
 00419E8C    pop         edx
 00419E8D    pop         esi
 00419E8E    pop         ebx
 00419E8F    ret
end;*}

//00419E90
function DynArraySize(a:Pointer):Integer;
begin
{*
 00419E90    test        eax,eax
>00419E92    je          00419E97
 00419E94    mov         eax,dword ptr [eax-4]
 00419E97    ret
*}
end;

//00419E98
{*function sub_00419E98(?:?; ?:?):?;
begin
 00419E98    push        ebx
 00419E99    push        esi
 00419E9A    push        edi
 00419E9B    push        ebp
 00419E9C    add         esp,0FFFFFFF8
 00419E9F    mov         byte ptr [esp],1
 00419EA3    mov         dword ptr [esp+4],eax
 00419EA7    mov         eax,edx
 00419EA9    call        00419E68
 00419EAE    mov         ebp,eax
 00419EB0    dec         ebp
 00419EB1    test        ebp,ebp
>00419EB3    jle         00419F05
 00419EB5    cmp         dword ptr [esp+4],0
>00419EBA    je          00419F02
 00419EBC    mov         eax,dword ptr [esp+4]
 00419EC0    call        DynArraySize
 00419EC5    mov         ebx,eax
 00419EC7    mov         eax,dword ptr [esp+4]
 00419ECB    mov         eax,dword ptr [eax]
 00419ECD    call        DynArraySize
 00419ED2    mov         edi,eax
 00419ED4    dec         ebx
 00419ED5    test        ebx,ebx
>00419ED7    jle         00419EF8
 00419ED9    mov         esi,1
 00419EDE    mov         eax,dword ptr [esp+4]
 00419EE2    mov         eax,dword ptr [eax+esi*4]
 00419EE5    call        DynArraySize
 00419EEA    cmp         edi,eax
>00419EEC    je          00419EF4
 00419EEE    mov         byte ptr [esp],0
>00419EF2    jmp         00419F05
 00419EF4    inc         esi
 00419EF5    dec         ebx
>00419EF6    jne         00419EDE
 00419EF8    mov         eax,dword ptr [esp+4]
 00419EFC    mov         eax,dword ptr [eax]
 00419EFE    mov         dword ptr [esp+4],eax
 00419F02    dec         ebp
>00419F03    jne         00419EB5
 00419F05    mov         al,byte ptr [esp]
 00419F08    pop         ecx
 00419F09    pop         edx
 00419F0A    pop         ebp
 00419F0B    pop         edi
 00419F0C    pop         esi
 00419F0D    pop         ebx
 00419F0E    ret
end;*}

//00419F10
{*procedure sub_00419F10(?:?; ?:?; ?:?);
begin
 00419F10    push        ebx
 00419F11    push        esi
 00419F12    push        edi
 00419F13    push        ecx
 00419F14    mov         edi,ecx
 00419F16    mov         dword ptr [esp],eax
 00419F19    mov         eax,edx
 00419F1B    call        00419E68
 00419F20    mov         ebx,eax
 00419F22    push        ebx
 00419F23    mov         eax,edi
 00419F25    mov         ecx,1
 00419F2A    mov         edx,dword ptr ds:[401240];TBoundArray
 00419F30    call        @DynArraySetLength
 00419F35    add         esp,4
 00419F38    dec         ebx
 00419F39    test        ebx,ebx
>00419F3B    jl          00419F60
 00419F3D    inc         ebx
 00419F3E    xor         esi,esi
 00419F40    cmp         dword ptr [esp],0
>00419F44    je          00419F5C
 00419F46    mov         eax,dword ptr [esp]
 00419F49    call        DynArraySize
 00419F4E    dec         eax
 00419F4F    mov         edx,dword ptr [edi]
 00419F51    mov         dword ptr [edx+esi*4],eax
 00419F54    mov         eax,dword ptr [esp]
 00419F57    mov         eax,dword ptr [eax]
 00419F59    mov         dword ptr [esp],eax
 00419F5C    inc         esi
 00419F5D    dec         ebx
>00419F5E    jne         00419F40
 00419F60    pop         edx
 00419F61    pop         edi
 00419F62    pop         esi
 00419F63    pop         ebx
 00419F64    ret
end;*}

//00419F68
function DecIndices(var Indices:TBoundArray; const Bounds:TBoundArray):Boolean;
begin
{*
 00419F68    push        ebx
 00419F69    push        esi
 00419F6A    push        edi
 00419F6B    mov         esi,edx
 00419F6D    mov         edi,eax
 00419F6F    xor         ebx,ebx
 00419F71    mov         eax,dword ptr [edi]
 00419F73    call        004062EC
 00419F78    mov         edx,eax
 00419F7A    test        edx,edx
>00419F7C    jl          00419F91
 00419F7E    inc         edx
 00419F7F    xor         eax,eax
 00419F81    mov         ecx,dword ptr [edi]
 00419F83    cmp         dword ptr [ecx+eax*4],0
>00419F87    je          00419F8D
 00419F89    mov         bl,1
>00419F8B    jmp         00419F91
 00419F8D    inc         eax
 00419F8E    dec         edx
>00419F8F    jne         00419F81
 00419F91    test        bl,bl
>00419F93    je          00419FCE
 00419F95    mov         eax,dword ptr [edi]
 00419F97    call        004062EC
 00419F9C    cmp         eax,0
>00419F9F    jl          00419FCE
 00419FA1    mov         edx,dword ptr [edi]
 00419FA3    cmp         dword ptr [edx+eax*4],0
>00419FA7    je          00419FB9
 00419FA9    mov         edx,dword ptr [edi]
 00419FAB    dec         dword ptr [edx+eax*4]
>00419FAE    jmp         00419FCE
 00419FB0    mov         edx,dword ptr [esi+eax*4]
 00419FB3    mov         ecx,dword ptr [edi]
 00419FB5    mov         dword ptr [ecx+eax*4],edx
 00419FB8    dec         eax
 00419FB9    mov         edx,dword ptr [edi]
 00419FBB    cmp         dword ptr [edx+eax*4],0
>00419FBF    je          00419FB0
 00419FC1    mov         edx,dword ptr [edi]
 00419FC3    dec         dword ptr [edx+eax*4]
>00419FC6    jmp         00419FCE
 00419FC8    dec         eax
 00419FC9    cmp         eax,0FFFFFFFF
>00419FCC    jne         00419FA1
 00419FCE    mov         eax,ebx
 00419FD0    pop         edi
 00419FD1    pop         esi
 00419FD2    pop         ebx
 00419FD3    ret
*}
end;

//00419FD4
{*procedure sub_00419FD4(?:?; ?:?; ?:?);
begin
 00419FD4    push        ebx
 00419FD5    push        esi
 00419FD6    push        edi
 00419FD7    push        ecx
 00419FD8    mov         esi,ecx
 00419FDA    mov         dword ptr [esp],eax
 00419FDD    mov         eax,edx
 00419FDF    call        00419E68
 00419FE4    mov         edi,eax
 00419FE6    mov         eax,edi
 00419FE8    add         eax,eax
 00419FEA    push        eax
 00419FEB    mov         eax,esi
 00419FED    mov         ecx,1
 00419FF2    mov         edx,dword ptr ds:[401240];TBoundArray
 00419FF8    call        @DynArraySetLength
 00419FFD    add         esp,4
 0041A000    xor         ebx,ebx
>0041A002    jmp         0041A034
 0041A004    mov         eax,dword ptr [esi]
 0041A006    xor         edx,edx
 0041A008    mov         dword ptr [eax+ebx*4],edx
 0041A00B    inc         ebx
 0041A00C    cmp         dword ptr [esp],0
>0041A010    je          0041A02A
 0041A012    mov         eax,dword ptr [esp]
 0041A015    call        DynArraySize
 0041A01A    dec         eax
 0041A01B    mov         edx,dword ptr [esi]
 0041A01D    mov         dword ptr [edx+ebx*4],eax
 0041A020    mov         eax,dword ptr [esp]
 0041A023    mov         eax,dword ptr [eax]
 0041A025    mov         dword ptr [esp],eax
>0041A028    jmp         0041A033
 0041A02A    mov         eax,dword ptr [esi]
 0041A02C    mov         dword ptr [eax+ebx*4],0FFFFFFFF
 0041A033    inc         ebx
 0041A034    mov         eax,edi
 0041A036    add         eax,eax
 0041A038    cmp         ebx,eax
>0041A03A    jl          0041A004
 0041A03C    pop         edx
 0041A03D    pop         edi
 0041A03E    pop         esi
 0041A03F    pop         ebx
 0041A040    ret
end;*}

//0041A044
function DynArrayVarType(typeInfo:PDynArrayTypeInfo):Integer;
begin
{*
 0041A044    push        ebx
 0041A045    mov         ebx,1
 0041A04A    test        eax,eax
>0041A04C    je          0041A067
 0041A04E    cmp         byte ptr [eax],11
>0041A051    jne         0041A067
 0041A053    xor         edx,edx
 0041A055    mov         dl,byte ptr [eax+1]
 0041A058    add         eax,edx
 0041A05A    mov         ebx,dword ptr [eax+0A]
 0041A05D    cmp         ebx,48
>0041A060    jne         0041A067
 0041A062    mov         ebx,100
 0041A067    cmp         ebx,1
>0041A06A    jle         0041A083
 0041A06C    cmp         ebx,0E
>0041A06F    je          0041A083
 0041A071    cmp         ebx,0F
>0041A074    je          0041A083
 0041A076    cmp         ebx,14
>0041A079    jle         0041A088
 0041A07B    cmp         ebx,100
>0041A081    je          0041A088
 0041A083    call        VarCastError
 0041A088    mov         eax,ebx
 0041A08A    pop         ebx
 0041A08B    ret
*}
end;

//0041A08C
{*procedure sub_0041A08C(?:?; ?:Longint; ?:?);
begin
 0041A08C    push        ebp
 0041A08D    mov         ebp,esp
 0041A08F    push        ecx
 0041A090    mov         ecx,6
 0041A095    push        0
 0041A097    push        0
 0041A099    dec         ecx
>0041A09A    jne         0041A095
 0041A09C    push        ecx
 0041A09D    xchg        ecx,dword ptr [ebp-4]
 0041A0A0    push        ebx
 0041A0A1    push        esi
 0041A0A2    push        edi
 0041A0A3    mov         ebx,ecx
 0041A0A5    mov         esi,edx
 0041A0A7    mov         dword ptr [ebp-4],eax
 0041A0AA    xor         eax,eax
 0041A0AC    push        ebp
 0041A0AD    push        41A402
 0041A0B2    push        dword ptr fs:[eax]
 0041A0B5    mov         dword ptr fs:[eax],esp
 0041A0B8    lea         eax,[ebp-8]
 0041A0BB    mov         edx,dword ptr ds:[401240];TBoundArray
 0041A0C1    call        @DynArrayClear
 0041A0C6    lea         eax,[ebp-0C]
 0041A0C9    mov         edx,dword ptr ds:[401240];TBoundArray
 0041A0CF    call        @DynArrayClear
 0041A0D4    mov         eax,dword ptr [ebp-4]
 0041A0D7    call        @VarClear
 0041A0DC    mov         eax,ebx
 0041A0DE    call        DynArrayVarType
 0041A0E3    mov         edi,eax
 0041A0E5    cmp         edi,100
>0041A0EB    jne         0041A0F6
 0041A0ED    mov         dword ptr [ebp-14],8
>0041A0F4    jmp         0041A0F9
 0041A0F6    mov         dword ptr [ebp-14],edi
 0041A0F9    mov         eax,ebx
 0041A0FB    call        00419E68
 0041A100    dec         eax
>0041A101    jle         0041A114
 0041A103    mov         edx,ebx
 0041A105    mov         eax,esi
 0041A107    call        00419E98
 0041A10C    test        al,al
>0041A10E    je          0041A3CE
 0041A114    lea         ecx,[ebp-8]
 0041A117    mov         edx,ebx
 0041A119    mov         eax,esi
 0041A11B    call        00419FD4
 0041A120    lea         ecx,[ebp-0C]
 0041A123    mov         edx,ebx
 0041A125    mov         eax,esi
 0041A127    call        00419F10
 0041A12C    lea         ecx,[ebp-10]
 0041A12F    mov         edx,dword ptr ds:[401240];TBoundArray
 0041A135    mov         eax,dword ptr [ebp-0C]
 0041A138    call        @DynArrayCopy
 0041A13D    lea         eax,[ebp-38]
 0041A140    push        eax
 0041A141    mov         eax,dword ptr [ebp-8]
 0041A144    call        004062EC
 0041A149    mov         edx,eax
 0041A14B    mov         cx,word ptr [ebp-14]
 0041A14F    mov         eax,dword ptr [ebp-8]
 0041A152    call        00419994
 0041A157    lea         edx,[ebp-38]
 0041A15A    mov         eax,dword ptr [ebp-4]
 0041A15D    call        @VarCopy
 0041A162    mov         eax,dword ptr [ebp-4]
 0041A165    call        VarArrayLock
 0041A16A    xor         eax,eax
 0041A16C    push        ebp
 0041A16D    push        41A3C7
 0041A172    push        dword ptr fs:[eax]
 0041A175    mov         dword ptr fs:[eax],esp
 0041A178    push        ebx
 0041A179    mov         eax,dword ptr [ebp-10]
 0041A17C    call        004062EC
 0041A181    mov         ecx,eax
 0041A183    mov         edx,dword ptr [ebp-10]
 0041A186    mov         eax,esi
 0041A188    call        00419E00
 0041A18D    mov         dword ptr [ebp-18],eax
 0041A190    cmp         dword ptr [ebp-18],0
>0041A194    je          0041A39E
 0041A19A    mov         eax,edi
 0041A19C    cmp         eax,0B
>0041A19F    jg          0041A1E3
>0041A1A1    je          0041A2DC
 0041A1A7    cmp         eax,0A
>0041A1AA    ja          0041A37F
 0041A1B0    jmp         dword ptr [eax*4+41A1B7]
 0041A1B0    dd          0041A37F
 0041A1B0    dd          0041A37F
 0041A1B0    dd          0041A233
 0041A1B0    dd          0041A248
 0041A1B0    dd          0041A25C
 0041A1B0    dd          0041A26E
 0041A1B0    dd          0041A280
 0041A1B0    dd          0041A292
 0041A1B0    dd          0041A2A4
 0041A1B0    dd          0041A2B6
 0041A1B0    dd          0041A2C8
 0041A1E3    cmp         eax,12
>0041A1E6    jg          0041A213
>0041A1E8    je          0041A339
 0041A1EE    sub         eax,0C
>0041A1F1    je          0041A2F6
 0041A1F7    dec         eax
>0041A1F8    je          0041A306
 0041A1FE    sub         eax,3
>0041A201    je          0041A315
 0041A207    dec         eax
>0041A208    je          0041A327
>0041A20E    jmp         0041A37F
 0041A213    sub         eax,13
>0041A216    je          0041A34B
 0041A21C    dec         eax
>0041A21D    je          0041A35C
 0041A223    sub         eax,0EC
>0041A228    je          0041A370
>0041A22E    jmp         0041A37F
 0041A233    lea         eax,[ebp-28]
 0041A236    mov         edx,dword ptr [ebp-18]
 0041A239    movsx       edx,word ptr [edx]
 0041A23C    mov         cl,0FE
 0041A23E    call        @VarFromInt
>0041A243    jmp         0041A387
 0041A248    lea         eax,[ebp-28]
 0041A24B    mov         edx,dword ptr [ebp-18]
 0041A24E    mov         edx,dword ptr [edx]
 0041A250    mov         cl,0FC
 0041A252    call        @VarFromInt
>0041A257    jmp         0041A387
 0041A25C    mov         eax,dword ptr [ebp-18]
 0041A25F    fld         dword ptr [eax]
 0041A261    lea         eax,[ebp-28]
 0041A264    call        @VarFromReal
>0041A269    jmp         0041A387
 0041A26E    mov         eax,dword ptr [ebp-18]
 0041A271    fld         qword ptr [eax]
 0041A273    lea         eax,[ebp-28]
 0041A276    call        @VarFromReal
>0041A27B    jmp         0041A387
 0041A280    mov         eax,dword ptr [ebp-18]
 0041A283    fild        qword ptr [eax]
 0041A285    lea         eax,[ebp-28]
 0041A288    call        @VarFromCurr
>0041A28D    jmp         0041A387
 0041A292    mov         eax,dword ptr [ebp-18]
 0041A295    fld         qword ptr [eax]
 0041A297    lea         eax,[ebp-28]
 0041A29A    call        @VarFromReal
>0041A29F    jmp         0041A387
 0041A2A4    lea         eax,[ebp-28]
 0041A2A7    mov         edx,dword ptr [ebp-18]
 0041A2AA    mov         edx,dword ptr [edx]
 0041A2AC    call        @VarFromWStr
>0041A2B1    jmp         0041A387
 0041A2B6    lea         eax,[ebp-28]
 0041A2B9    mov         edx,dword ptr [ebp-18]
 0041A2BC    mov         edx,dword ptr [edx]
 0041A2BE    call        @VarFromDisp
>0041A2C3    jmp         0041A387
 0041A2C8    lea         eax,[ebp-28]
 0041A2CB    mov         edx,dword ptr [ebp-18]
 0041A2CE    mov         edx,dword ptr [edx]
 0041A2D0    mov         cl,0FC
 0041A2D2    call        @VarFromInt
>0041A2D7    jmp         0041A387
 0041A2DC    lea         eax,[ebp-28]
 0041A2DF    mov         edx,dword ptr [ebp-18]
 0041A2E2    mov         dx,word ptr [edx]
 0041A2E5    neg         dx
 0041A2E8    sbb         edx,edx
 0041A2EA    neg         edx
 0041A2EC    call        @VarFromBool
>0041A2F1    jmp         0041A387
 0041A2F6    lea         eax,[ebp-28]
 0041A2F9    mov         edx,dword ptr [ebp-18]
 0041A2FC    call        @VarCopy
>0041A301    jmp         0041A387
 0041A306    lea         eax,[ebp-28]
 0041A309    mov         edx,dword ptr [ebp-18]
 0041A30C    mov         edx,dword ptr [edx]
 0041A30E    call        @VarFromIntf
>0041A313    jmp         0041A387
 0041A315    lea         eax,[ebp-28]
 0041A318    mov         edx,dword ptr [ebp-18]
 0041A31B    movsx       edx,byte ptr [edx]
 0041A31E    mov         cl,0FF
 0041A320    call        @VarFromInt
>0041A325    jmp         0041A387
 0041A327    lea         eax,[ebp-28]
 0041A32A    mov         edx,dword ptr [ebp-18]
 0041A32D    movzx       edx,byte ptr [edx]
 0041A330    mov         cl,1
 0041A332    call        @VarFromInt
>0041A337    jmp         0041A387
 0041A339    lea         eax,[ebp-28]
 0041A33C    mov         edx,dword ptr [ebp-18]
 0041A33F    movzx       edx,word ptr [edx]
 0041A342    mov         cl,2
 0041A344    call        @VarFromInt
>0041A349    jmp         0041A387
 0041A34B    lea         eax,[ebp-28]
 0041A34E    mov         edx,dword ptr [ebp-18]
 0041A351    mov         edx,dword ptr [edx]
 0041A353    mov         cl,4
 0041A355    call        @VarFromInt
>0041A35A    jmp         0041A387
 0041A35C    mov         eax,dword ptr [ebp-18]
 0041A35F    mov         edx,dword ptr [eax+4]
 0041A362    mov         eax,dword ptr [eax]
 0041A364    push        edx
 0041A365    push        eax
 0041A366    lea         eax,[ebp-28]
 0041A369    call        @VarFromInt64
>0041A36E    jmp         0041A387
 0041A370    lea         eax,[ebp-28]
 0041A373    mov         edx,dword ptr [ebp-18]
 0041A376    mov         edx,dword ptr [edx]
 0041A378    call        @VarFromLStr
>0041A37D    jmp         0041A387
 0041A37F    lea         eax,[ebp-28]
 0041A382    call        @VarClear
 0041A387    mov         eax,dword ptr [ebp-10]
 0041A38A    call        004062EC
 0041A38F    push        eax
 0041A390    lea         edx,[ebp-28]
 0041A393    mov         eax,dword ptr [ebp-4]
 0041A396    mov         ecx,dword ptr [ebp-10]
 0041A399    call        VarArrayPut
 0041A39E    lea         eax,[ebp-10]
 0041A3A1    mov         edx,dword ptr [ebp-0C]
 0041A3A4    call        DecIndices
 0041A3A9    test        al,al
>0041A3AB    jne         0041A178
 0041A3B1    xor         eax,eax
 0041A3B3    pop         edx
 0041A3B4    pop         ecx
 0041A3B5    pop         ecx
 0041A3B6    mov         dword ptr fs:[eax],edx
 0041A3B9    push        41A3CE
 0041A3BE    mov         eax,dword ptr [ebp-4]
 0041A3C1    call        VarArrayUnlock
 0041A3C6    ret
>0041A3C7    jmp         @HandleFinally
>0041A3CC    jmp         0041A3BE
 0041A3CE    xor         eax,eax
 0041A3D0    pop         edx
 0041A3D1    pop         ecx
 0041A3D2    pop         ecx
 0041A3D3    mov         dword ptr fs:[eax],edx
 0041A3D6    push        41A409
 0041A3DB    lea         eax,[ebp-38]
 0041A3DE    mov         edx,dword ptr ds:[4010DC];Variant
 0041A3E4    mov         ecx,2
 0041A3E9    call        @FinalizeArray
 0041A3EE    lea         eax,[ebp-10]
 0041A3F1    mov         edx,dword ptr ds:[401240];TBoundArray
 0041A3F7    mov         ecx,3
 0041A3FC    call        @FinalizeArray
 0041A401    ret
>0041A402    jmp         @HandleFinally
>0041A407    jmp         0041A3DB
 0041A409    pop         edi
 0041A40A    pop         esi
 0041A40B    pop         ebx
 0041A40C    mov         esp,ebp
 0041A40E    pop         ebp
 0041A40F    ret
end;*}

//0041A410
{*procedure sub_0041A410(?:?; ?:?; ?:?);
begin
 0041A410    push        ebp
 0041A411    mov         ebp,esp
 0041A413    add         esp,0FFFFFFD0
 0041A416    push        ebx
 0041A417    push        esi
 0041A418    push        edi
 0041A419    xor         ebx,ebx
 0041A41B    mov         dword ptr [ebp-14],ebx
 0041A41E    mov         dword ptr [ebp-18],ebx
 0041A421    mov         dword ptr [ebp-30],ebx
 0041A424    mov         dword ptr [ebp-2C],ebx
 0041A427    mov         dword ptr [ebp-28],ebx
 0041A42A    mov         dword ptr [ebp-24],ebx
 0041A42D    mov         edi,ecx
 0041A42F    mov         dword ptr [ebp-8],edx
 0041A432    mov         dword ptr [ebp-4],eax
 0041A435    xor         eax,eax
 0041A437    push        ebp
 0041A438    push        41A74A
 0041A43D    push        dword ptr fs:[eax]
 0041A440    mov         dword ptr fs:[eax],esp
 0041A443    mov         eax,dword ptr [ebp-8]
 0041A446    call        VarArrayDimCount
 0041A44B    mov         dword ptr [ebp-0C],eax
 0041A44E    cmp         dword ptr [ebp-0C],0
>0041A452    jne         0041A45E
 0041A454    mov         eax,80070057
 0041A459    call        VarResultCheck
 0041A45E    mov         eax,dword ptr [ebp-8]
 0041A461    call        VarArrayLock
 0041A466    xor         edx,edx
 0041A468    push        ebp
 0041A469    push        41A71A
 0041A46E    push        dword ptr fs:[edx]
 0041A471    mov         dword ptr fs:[edx],esp
 0041A474    mov         eax,dword ptr [ebp-0C]
 0041A477    shl         eax,2
 0041A47A    call        @GetMem
 0041A47F    mov         dword ptr [ebp-10],eax
 0041A482    mov         esi,dword ptr [ebp-0C]
 0041A485    dec         esi
 0041A486    test        esi,esi
>0041A488    jl          0041A4B2
 0041A48A    inc         esi
 0041A48B    xor         ebx,ebx
 0041A48D    lea         edx,[ebx+1]
 0041A490    mov         eax,dword ptr [ebp-8]
 0041A493    call        VarArrayHighBound
 0041A498    push        eax
 0041A499    lea         edx,[ebx+1]
 0041A49C    mov         eax,dword ptr [ebp-8]
 0041A49F    call        VarArrayLowBound
 0041A4A4    pop         edx
 0041A4A5    sub         edx,eax
 0041A4A7    inc         edx
 0041A4A8    mov         eax,dword ptr [ebp-10]
 0041A4AB    mov         dword ptr [eax+ebx*4],edx
 0041A4AE    inc         ebx
 0041A4AF    dec         esi
>0041A4B0    jne         0041A48D
 0041A4B2    mov         eax,dword ptr [ebp-10]
 0041A4B5    push        eax
 0041A4B6    mov         eax,dword ptr [ebp-4]
 0041A4B9    mov         ecx,dword ptr [ebp-0C]
 0041A4BC    mov         ebx,edi
 0041A4BE    mov         edx,ebx
 0041A4C0    call        DynArraySetLength
 0041A4C5    mov         eax,ebx
 0041A4C7    call        00419E68
 0041A4CC    mov         eax,ebx
 0041A4CE    call        DynArrayVarType
 0041A4D3    mov         ebx,eax
 0041A4D5    lea         ecx,[ebp-14]
 0041A4D8    mov         eax,dword ptr [ebp-4]
 0041A4DB    mov         eax,dword ptr [eax]
 0041A4DD    mov         edx,edi
 0041A4DF    call        00419F10
 0041A4E4    lea         ecx,[ebp-18]
 0041A4E7    mov         edx,dword ptr ds:[401240];TBoundArray
 0041A4ED    mov         eax,dword ptr [ebp-14]
 0041A4F0    call        @DynArrayCopy
 0041A4F5    lea         eax,[ebp-30]
 0041A4F8    push        eax
 0041A4F9    mov         eax,dword ptr [ebp-18]
 0041A4FC    call        004062EC
 0041A501    mov         ecx,eax
 0041A503    mov         eax,dword ptr [ebp-8]
 0041A506    mov         edx,dword ptr [ebp-18]
 0041A509    call        VarArrayGet
 0041A50E    push        edi
 0041A50F    mov         eax,dword ptr [ebp-18]
 0041A512    call        004062EC
 0041A517    mov         ecx,eax
 0041A519    mov         eax,dword ptr [ebp-4]
 0041A51C    mov         eax,dword ptr [eax]
 0041A51E    mov         edx,dword ptr [ebp-18]
 0041A521    call        00419E00
 0041A526    mov         dword ptr [ebp-1C],eax
 0041A529    mov         eax,ebx
 0041A52B    cmp         eax,0B
>0041A52E    jg          0041A572
>0041A530    je          0041A665
 0041A536    cmp         eax,0A
>0041A539    ja          0041A6E9
 0041A53F    jmp         dword ptr [eax*4+41A546]
 0041A53F    dd          0041A6E9
 0041A53F    dd          0041A6E9
 0041A53F    dd          0041A5C2
 0041A53F    dd          0041A5D5
 0041A53F    dd          0041A5E7
 0041A53F    dd          0041A5FA
 0041A53F    dd          0041A60D
 0041A53F    dd          0041A620
 0041A53F    dd          0041A633
 0041A53F    dd          0041A643
 0041A53F    dd          0041A653
 0041A572    cmp         eax,12
>0041A575    jg          0041A5A2
>0041A577    je          0041A6AD
 0041A57D    sub         eax,0C
>0041A580    je          0041A675
 0041A586    dec         eax
>0041A587    je          0041A682
 0041A58D    sub         eax,3
>0041A590    je          0041A68F
 0041A596    dec         eax
>0041A597    je          0041A69E
>0041A59D    jmp         0041A6E9
 0041A5A2    sub         eax,13
>0041A5A5    je          0041A6BD
 0041A5AB    dec         eax
>0041A5AC    je          0041A6CC
 0041A5B2    sub         eax,0EC
>0041A5B7    je          0041A6DE
>0041A5BD    jmp         0041A6E9
 0041A5C2    lea         eax,[ebp-30]
 0041A5C5    call        @VarToInteger
 0041A5CA    mov         edx,dword ptr [ebp-1C]
 0041A5CD    mov         word ptr [edx],ax
>0041A5D0    jmp         0041A6E9
 0041A5D5    lea         eax,[ebp-30]
 0041A5D8    call        @VarToInteger
 0041A5DD    mov         edx,dword ptr [ebp-1C]
 0041A5E0    mov         dword ptr [edx],eax
>0041A5E2    jmp         0041A6E9
 0041A5E7    lea         eax,[ebp-30]
 0041A5EA    call        @VarToReal
 0041A5EF    mov         eax,dword ptr [ebp-1C]
 0041A5F2    fstp        dword ptr [eax]
 0041A5F4    wait
>0041A5F5    jmp         0041A6E9
 0041A5FA    lea         eax,[ebp-30]
 0041A5FD    call        @VarToReal
 0041A602    mov         eax,dword ptr [ebp-1C]
 0041A605    fstp        qword ptr [eax]
 0041A607    wait
>0041A608    jmp         0041A6E9
 0041A60D    lea         eax,[ebp-30]
 0041A610    call        @VarToCurrency
 0041A615    mov         eax,dword ptr [ebp-1C]
 0041A618    fistp       qword ptr [eax]
 0041A61A    wait
>0041A61B    jmp         0041A6E9
 0041A620    lea         eax,[ebp-30]
 0041A623    call        @VarToReal
 0041A628    mov         eax,dword ptr [ebp-1C]
 0041A62B    fstp        qword ptr [eax]
 0041A62D    wait
>0041A62E    jmp         0041A6E9
 0041A633    mov         eax,dword ptr [ebp-1C]
 0041A636    lea         edx,[ebp-30]
 0041A639    call        00418080
>0041A63E    jmp         0041A6E9
 0041A643    mov         eax,dword ptr [ebp-1C]
 0041A646    lea         edx,[ebp-30]
 0041A649    call        @VarToDisp
>0041A64E    jmp         0041A6E9
 0041A653    lea         eax,[ebp-30]
 0041A656    call        @VarToInt64
 0041A65B    mov         edx,dword ptr [ebp-1C]
 0041A65E    mov         dword ptr [edx],eax
>0041A660    jmp         0041A6E9
 0041A665    lea         eax,[ebp-30]
 0041A668    call        @VarToBool
 0041A66D    mov         edx,dword ptr [ebp-1C]
 0041A670    mov         word ptr [edx],ax
>0041A673    jmp         0041A6E9
 0041A675    mov         eax,dword ptr [ebp-1C]
 0041A678    lea         edx,[ebp-30]
 0041A67B    call        @VarCopy
>0041A680    jmp         0041A6E9
 0041A682    mov         eax,dword ptr [ebp-1C]
 0041A685    lea         edx,[ebp-30]
 0041A688    call        @VarToIntf
>0041A68D    jmp         0041A6E9
 0041A68F    lea         eax,[ebp-30]
 0041A692    call        @VarToInteger
 0041A697    mov         edx,dword ptr [ebp-1C]
 0041A69A    mov         byte ptr [edx],al
>0041A69C    jmp         0041A6E9
 0041A69E    lea         eax,[ebp-30]
 0041A6A1    call        @VarToInteger
 0041A6A6    mov         edx,dword ptr [ebp-1C]
 0041A6A9    mov         byte ptr [edx],al
>0041A6AB    jmp         0041A6E9
 0041A6AD    lea         eax,[ebp-30]
 0041A6B0    call        @VarToInteger
 0041A6B5    mov         edx,dword ptr [ebp-1C]
 0041A6B8    mov         word ptr [edx],ax
>0041A6BB    jmp         0041A6E9
 0041A6BD    lea         eax,[ebp-30]
 0041A6C0    call        @VarToInt64
 0041A6C5    mov         edx,dword ptr [ebp-1C]
 0041A6C8    mov         dword ptr [edx],eax
>0041A6CA    jmp         0041A6E9
 0041A6CC    lea         eax,[ebp-30]
 0041A6CF    call        @VarToInt64
 0041A6D4    mov         ecx,dword ptr [ebp-1C]
 0041A6D7    mov         dword ptr [ecx],eax
 0041A6D9    mov         dword ptr [ecx+4],edx
>0041A6DC    jmp         0041A6E9
 0041A6DE    mov         eax,dword ptr [ebp-1C]
 0041A6E1    lea         edx,[ebp-30]
 0041A6E4    call        00417960
 0041A6E9    lea         eax,[ebp-18]
 0041A6EC    mov         edx,dword ptr [ebp-14]
 0041A6EF    call        DecIndices
 0041A6F4    test        al,al
>0041A6F6    jne         0041A4F5
 0041A6FC    mov         eax,dword ptr [ebp-10]
 0041A6FF    call        @FreeMem
 0041A704    xor         eax,eax
 0041A706    pop         edx
 0041A707    pop         ecx
 0041A708    pop         ecx
 0041A709    mov         dword ptr fs:[eax],edx
 0041A70C    push        41A721
 0041A711    mov         eax,dword ptr [ebp-8]
 0041A714    call        VarArrayUnlock
 0041A719    ret
>0041A71A    jmp         @HandleFinally
>0041A71F    jmp         0041A711
 0041A721    xor         eax,eax
 0041A723    pop         edx
 0041A724    pop         ecx
 0041A725    pop         ecx
 0041A726    mov         dword ptr fs:[eax],edx
 0041A729    push        41A751
 0041A72E    lea         eax,[ebp-30]
 0041A731    call        @VarClr
 0041A736    lea         eax,[ebp-18]
 0041A739    mov         edx,dword ptr ds:[401240];TBoundArray
 0041A73F    mov         ecx,2
 0041A744    call        @FinalizeArray
 0041A749    ret
>0041A74A    jmp         @HandleFinally
>0041A74F    jmp         0041A72E
 0041A751    pop         edi
 0041A752    pop         esi
 0041A753    pop         ebx
 0041A754    mov         esp,ebp
 0041A756    pop         ebp
 0041A757    ret
end;*}

//0041A77C
procedure ClearVariantTypeList;
begin
{*
 0041A77C    push        ebp
 0041A77D    mov         ebp,esp
 0041A77F    push        ebx
 0041A780    push        esi
 0041A781    mov         esi,571A4C;LVarTypes:_DT_02
 0041A786    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041A78B    call        kernel32.EnterCriticalSection
 0041A790    xor         edx,edx
 0041A792    push        ebp
 0041A793    push        41A7DD
 0041A798    push        dword ptr fs:[edx]
 0041A79B    mov         dword ptr fs:[edx],esp
 0041A79E    mov         eax,dword ptr [esi]
 0041A7A0    call        @DynArrayLength
 0041A7A5    mov         ebx,eax
 0041A7A7    dec         ebx
 0041A7A8    cmp         ebx,0
>0041A7AB    jl          0041A7C5
 0041A7AD    mov         eax,dword ptr [esi]
 0041A7AF    mov         eax,dword ptr [eax+ebx*4]
 0041A7B2    cmp         eax,dword ptr ds:[56BB64]
>0041A7B8    je          0041A7BF
 0041A7BA    call        TObject.Free
 0041A7BF    dec         ebx
 0041A7C0    cmp         ebx,0FFFFFFFF
>0041A7C3    jne         0041A7AD
 0041A7C5    xor         eax,eax
 0041A7C7    pop         edx
 0041A7C8    pop         ecx
 0041A7C9    pop         ecx
 0041A7CA    mov         dword ptr fs:[eax],edx
 0041A7CD    push        41A7E4
 0041A7D2    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041A7D7    call        kernel32.LeaveCriticalSection
 0041A7DC    ret
>0041A7DD    jmp         @HandleFinally
>0041A7E2    jmp         0041A7D2
 0041A7E4    pop         esi
 0041A7E5    pop         ebx
 0041A7E6    pop         ebp
 0041A7E7    ret
*}
end;

//0041A7E8
procedure TCustomVariantType.BinaryOp(var Left:TVarData; const Right:TVarData; const Operator:TVarOp);
begin
{*
 0041A7E8    push        ebp
 0041A7E9    mov         ebp,esp
 0041A7EB    call        0041A9A8
 0041A7F0    pop         ebp
 0041A7F1    ret         4
*}
end;

//0041A7F4
procedure TCustomVariantType.Cast(var Dest:TVarData; const Source:TVarData);
begin
{*
 0041A7F4    push        ebx
 0041A7F5    push        esi
 0041A7F6    push        edi
 0041A7F7    push        ecx
 0041A7F8    mov         esi,ecx
 0041A7FA    mov         edi,edx
 0041A7FC    mov         ebx,eax
 0041A7FE    mov         edx,esp
 0041A800    mov         ax,word ptr [esi]
 0041A803    call        FindCustomVariantType
 0041A808    test        al,al
>0041A80A    je          0041A820
 0041A80C    mov         ax,word ptr [ebx+4]
 0041A810    push        eax
 0041A811    mov         ecx,esi
 0041A813    mov         edx,edi
 0041A815    mov         eax,dword ptr [esp+4]
 0041A819    mov         ebx,dword ptr [eax]
 0041A81B    call        dword ptr [ebx+1C]
>0041A81E    jmp         0041A827
 0041A820    mov         eax,ebx
 0041A822    call        0041A9A0
 0041A827    pop         edx
 0041A828    pop         edi
 0041A829    pop         esi
 0041A82A    pop         ebx
 0041A82B    ret
*}
end;

//0041A82C
procedure TCustomVariantType.CastTo(var Dest:TVarData; const Source:TVarData; const AVarType:TVarType);
begin
{*
 0041A82C    push        ebp
 0041A82D    mov         ebp,esp
 0041A82F    add         esp,0FFFFFFF8
 0041A832    push        ebx
 0041A833    push        esi
 0041A834    push        edi
 0041A835    mov         esi,ecx
 0041A837    mov         dword ptr [ebp-4],edx
 0041A83A    mov         ebx,eax
 0041A83C    mov         edi,dword ptr [ebp+8]
 0041A83F    cmp         di,word ptr [ebx+4]
>0041A843    je          0041A864
 0041A845    lea         edx,[ebp-8]
 0041A848    mov         ax,word ptr [esi]
 0041A84B    call        FindCustomVariantType
 0041A850    test        al,al
>0041A852    je          0041A864
 0041A854    push        edi
 0041A855    mov         ecx,esi
 0041A857    mov         edx,dword ptr [ebp-4]
 0041A85A    mov         eax,dword ptr [ebp-8]
 0041A85D    mov         ebx,dword ptr [eax]
 0041A85F    call        dword ptr [ebx+1C]
>0041A862    jmp         0041A86B
 0041A864    mov         eax,ebx
 0041A866    call        0041A9A0
 0041A86B    pop         edi
 0041A86C    pop         esi
 0041A86D    pop         ebx
 0041A86E    pop         ecx
 0041A86F    pop         ecx
 0041A870    pop         ebp
 0041A871    ret         4
*}
end;

//0041A874
procedure TCustomVariantType.Compare(const Left:TVarData; const Right:TVarData; var Relationship:TVarCompareResult);
begin
{*
 0041A874    push        ebp
 0041A875    mov         ebp,esp
 0041A877    call        0041A9A8
 0041A87C    pop         ebp
 0041A87D    ret         4
*}
end;

//0041A880
function TCustomVariantType.CompareOp(const Left:TVarData; const Right:TVarData; const Operator:TVarOp):Boolean;
begin
{*
 0041A880    push        ebp
 0041A881    mov         ebp,esp
 0041A883    push        ecx
 0041A884    push        ebx
 0041A885    push        esi
 0041A886    push        edi
 0041A887    mov         edi,edx
 0041A889    mov         esi,eax
 0041A88B    lea         eax,[ebp-1]
 0041A88E    push        eax
 0041A88F    mov         edx,edi
 0041A891    mov         eax,esi
 0041A893    mov         ebx,dword ptr [eax]
 0041A895    call        dword ptr [ebx+38]
 0041A898    xor         eax,eax
 0041A89A    mov         al,byte ptr [ebp-1]
 0041A89D    mov         edx,dword ptr [ebp+8]
 0041A8A0    lea         edx,[edx+edx*2]
 0041A8A3    add         edx,56BC58
 0041A8A9    mov         al,byte ptr [edx+eax-2A]
 0041A8AD    pop         edi
 0041A8AE    pop         esi
 0041A8AF    pop         ebx
 0041A8B0    pop         ecx
 0041A8B1    pop         ebp
 0041A8B2    ret         4
*}
end;

//0041A8B8
procedure TCustomVariantType.CastToOle(var Dest:TVarData; const Source:TVarData);
begin
{*
 0041A8B8    push        ebx
 0041A8B9    push        esi
 0041A8BA    push        edi
 0041A8BB    push        ebp
 0041A8BC    push        ecx
 0041A8BD    mov         esi,ecx
 0041A8BF    mov         edi,edx
 0041A8C1    mov         ebx,eax
 0041A8C3    mov         ecx,esp
 0041A8C5    mov         edx,esi
 0041A8C7    mov         eax,ebx
 0041A8C9    mov         ebp,dword ptr [eax]
 0041A8CB    call        dword ptr [ebp+0C]
 0041A8CE    test        al,al
>0041A8D0    je          0041A8E4
 0041A8D2    mov         ax,word ptr [esp]
 0041A8D6    push        eax
 0041A8D7    mov         ecx,esi
 0041A8D9    mov         edx,edi
 0041A8DB    mov         eax,ebx
 0041A8DD    mov         ebx,dword ptr [eax]
 0041A8DF    call        dword ptr [ebx+1C]
>0041A8E2    jmp         0041A8EB
 0041A8E4    mov         eax,ebx
 0041A8E6    call        0041A9A0
 0041A8EB    pop         edx
 0041A8EC    pop         ebp
 0041A8ED    pop         edi
 0041A8EE    pop         esi
 0041A8EF    pop         ebx
 0041A8F0    ret
*}
end;

//0041A8F4
destructor TCustomVariantType.Destroy;
begin
{*
 0041A8F4    push        ebp
 0041A8F5    mov         ebp,esp
 0041A8F7    add         esp,0FFFFFFF8
 0041A8FA    call        @BeforeDestruction
 0041A8FF    mov         byte ptr [ebp-5],dl
 0041A902    mov         dword ptr [ebp-4],eax
 0041A905    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041A90A    call        kernel32.EnterCriticalSection
 0041A90F    xor         edx,edx
 0041A911    push        ebp
 0041A912    push        41A957
 0041A917    push        dword ptr fs:[edx]
 0041A91A    mov         dword ptr fs:[edx],esp
 0041A91D    mov         eax,dword ptr [ebp-4]
 0041A920    mov         ax,word ptr [eax+4]
 0041A924    test        ax,ax
>0041A927    je          0041A93F
 0041A929    movzx       eax,ax
 0041A92C    mov         edx,dword ptr ds:[571A4C];LVarTypes:_DT_02
 0041A932    mov         ecx,dword ptr ds:[56BB64]
 0041A938    mov         dword ptr [edx+eax*4-400],ecx
 0041A93F    xor         eax,eax
 0041A941    pop         edx
 0041A942    pop         ecx
 0041A943    pop         ecx
 0041A944    mov         dword ptr fs:[eax],edx
 0041A947    push        41A95E
 0041A94C    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041A951    call        kernel32.LeaveCriticalSection
 0041A956    ret
>0041A957    jmp         @HandleFinally
>0041A95C    jmp         0041A94C
 0041A95E    mov         dl,byte ptr [ebp-5]
 0041A961    and         dl,0FC
 0041A964    mov         eax,dword ptr [ebp-4]
 0041A967    call        TObject.Destroy
 0041A96C    cmp         byte ptr [ebp-5],0
>0041A970    jle         0041A97A
 0041A972    mov         eax,dword ptr [ebp-4]
 0041A975    call        @ClassDestroy
 0041A97A    pop         ecx
 0041A97B    pop         ecx
 0041A97C    pop         ebp
 0041A97D    ret
*}
end;

//0041A980
{*function sub_0041A980:?;
begin
 0041A980    xor         eax,eax
 0041A982    ret
end;*}

//0041A984
function TCustomVariantType.LeftPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;
begin
{*
 0041A984    push        ebp
 0041A985    mov         ebp,esp
 0041A987    mov         edx,dword ptr [ebp+8]
 0041A98A    mov         ax,word ptr [eax+4]
 0041A98E    mov         word ptr [edx],ax
 0041A991    mov         al,1
 0041A993    pop         ebp
 0041A994    ret         4
*}
end;

//0041A998
function TCustomVariantType.OlePromotion(const V:TVarData; var RequiredVarType:TVarType):Boolean;
begin
{*
 0041A998    mov         word ptr [ecx],8
 0041A99D    mov         al,1
 0041A99F    ret
*}
end;

//0041A9A0
procedure sub_0041A9A0;
begin
{*
 0041A9A0    call        VarCastError
 0041A9A5    ret
*}
end;

//0041A9A8
procedure sub_0041A9A8;
begin
{*
 0041A9A8    call        VarInvalidOp
 0041A9AD    ret
*}
end;

//0041A9B0
procedure sub_0041A9B0;
begin
{*
 0041A9B0    call        @DispInvokeError
 0041A9B5    ret
*}
end;

//0041A9B8
function TCustomVariantType.RightPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;
begin
{*
 0041A9B8    push        ebp
 0041A9B9    mov         ebp,esp
 0041A9BB    mov         edx,dword ptr [ebp+8]
 0041A9BE    mov         ax,word ptr [eax+4]
 0041A9C2    mov         word ptr [edx],ax
 0041A9C5    mov         al,1
 0041A9C7    pop         ebp
 0041A9C8    ret         4
*}
end;

//0041A9CC
procedure sub_0041A9CC;
begin
{*
 0041A9CC    call        0041A9A8
 0041A9D1    ret
*}
end;

//0041A9D4
procedure TCustomVariantType.DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer);
begin
{*
 0041A9D4    push        ebp
 0041A9D5    mov         ebp,esp
 0041A9D7    call        0041A9B0
 0041A9DC    pop         ebp
 0041A9DD    ret         8
*}
end;

//0041A9E0
function TCustomVariantType._AddRef:Integer; stdcall;
begin
{*
 0041A9E0    push        ebp
 0041A9E1    mov         ebp,esp
 0041A9E3    or          eax,0FFFFFFFF
 0041A9E6    pop         ebp
 0041A9E7    ret         4
*}
end;

//0041A9EC
function TCustomVariantType._Release:Integer; stdcall;
begin
{*
 0041A9EC    push        ebp
 0041A9ED    mov         ebp,esp
 0041A9EF    or          eax,0FFFFFFFF
 0041A9F2    pop         ebp
 0041A9F3    ret         4
*}
end;

//0041A9F8
function TCustomVariantType.QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;
begin
{*
 0041A9F8    push        ebp
 0041A9F9    mov         ebp,esp
 0041A9FB    push        ebx
 0041A9FC    mov         ebx,dword ptr [ebp+8]
 0041A9FF    mov         ecx,dword ptr [ebp+10]
 0041AA02    mov         edx,dword ptr [ebp+0C]
 0041AA05    mov         eax,ebx
 0041AA07    call        TObject.GetInterface
 0041AA0C    test        al,al
>0041AA0E    je          0041AA14
 0041AA10    xor         eax,eax
>0041AA12    jmp         0041AA19
 0041AA14    mov         eax,80004002
 0041AA19    pop         ebx
 0041AA1A    pop         ebp
 0041AA1B    ret         0C
*}
end;

//0041AA20
function FindCustomVariantType(const AVarType:TVarType; var CustomVariantType:TCustomVariantType):Boolean;
begin
{*
 0041AA20    push        ebp
 0041AA21    mov         ebp,esp
 0041AA23    push        ecx
 0041AA24    push        ebx
 0041AA25    push        esi
 0041AA26    push        edi
 0041AA27    mov         esi,edx
 0041AA29    mov         ebx,eax
 0041AA2B    cmp         dword ptr ds:[571A4C],0;LVarTypes:_DT_02
>0041AA32    je          0041AA42
 0041AA34    cmp         bx,100
>0041AA39    jb          0041AA42
 0041AA3B    cmp         bx,7FF
>0041AA40    jbe         0041AA46
 0041AA42    xor         eax,eax
>0041AA44    jmp         0041AA48
 0041AA46    mov         al,1
 0041AA48    mov         byte ptr [ebp-1],al
 0041AA4B    cmp         byte ptr [ebp-1],0
>0041AA4F    je          0041AACF
 0041AA51    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041AA56    call        kernel32.EnterCriticalSection
 0041AA5B    xor         eax,eax
 0041AA5D    push        ebp
 0041AA5E    push        41AAC8
 0041AA63    push        dword ptr fs:[eax]
 0041AA66    mov         dword ptr fs:[eax],esp
 0041AA69    mov         eax,[00571A4C];LVarTypes:_DT_02
 0041AA6E    call        @DynArrayLength
 0041AA73    movzx       edi,bx
 0041AA76    mov         edx,edi
 0041AA78    sub         edx,100
 0041AA7E    cmp         eax,edx
 0041AA80    setg        byte ptr [ebp-1]
 0041AA84    cmp         byte ptr [ebp-1],0
>0041AA88    je          0041AAB0
 0041AA8A    mov         eax,[00571A4C];LVarTypes:_DT_02
 0041AA8F    mov         eax,dword ptr [eax+edi*4-400]
 0041AA96    mov         dword ptr [esi],eax
 0041AA98    cmp         dword ptr [esi],0
>0041AA9B    je          0041AAA7
 0041AA9D    mov         eax,dword ptr [esi]
 0041AA9F    cmp         eax,dword ptr ds:[56BB64]
>0041AAA5    jne         0041AAAB
 0041AAA7    xor         eax,eax
>0041AAA9    jmp         0041AAAD
 0041AAAB    mov         al,1
 0041AAAD    mov         byte ptr [ebp-1],al
 0041AAB0    xor         eax,eax
 0041AAB2    pop         edx
 0041AAB3    pop         ecx
 0041AAB4    pop         ecx
 0041AAB5    mov         dword ptr fs:[eax],edx
 0041AAB8    push        41AACF
 0041AABD    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041AAC2    call        kernel32.LeaveCriticalSection
 0041AAC7    ret
>0041AAC8    jmp         @HandleFinally
>0041AACD    jmp         0041AABD
 0041AACF    mov         al,byte ptr [ebp-1]
 0041AAD2    pop         edi
 0041AAD3    pop         esi
 0041AAD4    pop         ebx
 0041AAD5    pop         ecx
 0041AAD6    pop         ebp
 0041AAD7    ret
*}
end;

//0041AAD8
function FindCustomVariantType(const TypeName:AnsiString; var CustomVariantType:TCustomVariantType):Boolean;
begin
{*
 0041AAD8    push        ebp
 0041AAD9    mov         ebp,esp
 0041AADB    add         esp,0FFFFFEF0
 0041AAE1    push        ebx
 0041AAE2    push        esi
 0041AAE3    push        edi
 0041AAE4    xor         ecx,ecx
 0041AAE6    mov         dword ptr [ebp-10],ecx
 0041AAE9    mov         dword ptr [ebp-8],edx
 0041AAEC    mov         dword ptr [ebp-4],eax
 0041AAEF    xor         eax,eax
 0041AAF1    push        ebp
 0041AAF2    push        41ABAE
 0041AAF7    push        dword ptr fs:[eax]
 0041AAFA    mov         dword ptr fs:[eax],esp
 0041AAFD    mov         byte ptr [ebp-9],0
 0041AB01    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041AB06    call        kernel32.EnterCriticalSection
 0041AB0B    xor         eax,eax
 0041AB0D    push        ebp
 0041AB0E    push        41AB91
 0041AB13    push        dword ptr fs:[eax]
 0041AB16    mov         dword ptr fs:[eax],esp
 0041AB19    mov         eax,[00571A4C];LVarTypes:_DT_02
 0041AB1E    call        004062EC
 0041AB23    mov         esi,eax
 0041AB25    test        esi,esi
>0041AB27    jl          0041AB79
 0041AB29    inc         esi
 0041AB2A    xor         edi,edi
 0041AB2C    mov         eax,[00571A4C];LVarTypes:_DT_02
 0041AB31    mov         ebx,dword ptr [eax+edi*4]
 0041AB34    test        ebx,ebx
>0041AB36    je          0041AB75
 0041AB38    cmp         ebx,dword ptr ds:[56BB64]
>0041AB3E    je          0041AB75
 0041AB40    lea         edx,[ebp-110]
 0041AB46    mov         eax,dword ptr [ebx]
 0041AB48    call        TObject.ClassName
 0041AB4D    lea         edx,[ebp-110]
 0041AB53    lea         eax,[ebp-10]
 0041AB56    call        @LStrFromString
 0041AB5B    mov         eax,dword ptr [ebp-10]
 0041AB5E    mov         edx,dword ptr [ebp-4]
 0041AB61    call        SameText
 0041AB66    test        al,al
>0041AB68    je          0041AB75
 0041AB6A    mov         eax,dword ptr [ebp-8]
 0041AB6D    mov         dword ptr [eax],ebx
 0041AB6F    mov         byte ptr [ebp-9],1
>0041AB73    jmp         0041AB79
 0041AB75    inc         edi
 0041AB76    dec         esi
>0041AB77    jne         0041AB2C
 0041AB79    xor         eax,eax
 0041AB7B    pop         edx
 0041AB7C    pop         ecx
 0041AB7D    pop         ecx
 0041AB7E    mov         dword ptr fs:[eax],edx
 0041AB81    push        41AB98
 0041AB86    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041AB8B    call        kernel32.LeaveCriticalSection
 0041AB90    ret
>0041AB91    jmp         @HandleFinally
>0041AB96    jmp         0041AB86
 0041AB98    xor         eax,eax
 0041AB9A    pop         edx
 0041AB9B    pop         ecx
 0041AB9C    pop         ecx
 0041AB9D    mov         dword ptr fs:[eax],edx
 0041ABA0    push        41ABB5
 0041ABA5    lea         eax,[ebp-10]
 0041ABA8    call        @LStrClr
 0041ABAD    ret
>0041ABAE    jmp         @HandleFinally
>0041ABB3    jmp         0041ABA5
 0041ABB5    mov         al,byte ptr [ebp-9]
 0041ABB8    pop         edi
 0041ABB9    pop         esi
 0041ABBA    pop         ebx
 0041ABBB    mov         esp,ebp
 0041ABBD    pop         ebp
 0041ABBE    ret
*}
end;

//0041ABC0
procedure sub_0041ABC0;
begin
{*
 0041ABC0    call        @VarNull
 0041ABC5    ret
*}
end;

//0041ABC8
procedure @VarCmpEQ(const Left:TVarData; const Right:TVarData);
begin
{*
 0041ABC8    mov         ecx,0E
 0041ABCD    call        VarCompare
 0041ABD2    cmp         al,1
 0041ABD4    ret
*}
end;

Initialization
//0041AC50
{*
 0041AC50    push        ebp
 0041AC51    mov         ebp,esp
 0041AC53    xor         eax,eax
 0041AC55    push        ebp
 0041AC56    push        41ACF1
 0041AC5B    push        dword ptr fs:[eax]
 0041AC5E    mov         dword ptr fs:[eax],esp
 0041AC61    sub         dword ptr ds:[571A48],1
>0041AC68    jae         0041ACE3
 0041AC6A    mov         eax,571A28;gvar_00571A28:Variant
 0041AC6F    call        SetClearVarToEmptyParam
 0041AC74    mov         eax,414318;@DispInvokeError
 0041AC79    mov         [00571A38],eax;gvar_00571A38
 0041AC7E    mov         eax,413E68;VarInvalidOp
 0041AC83    mov         [00571A3C],eax;ClearAnyProc:TAnyProc
 0041AC88    mov         edx,413D78;VarCastError
 0041AC8D    mov         dword ptr ds:[571A40],edx;ChangeAnyProc:TAnyProc
 0041AC93    mov         [00571A44],eax;RefAnyProc:TAnyProc
 0041AC98    mov         eax,414618;@VarClr
 0041AC9D    mov         edx,dword ptr ds:[56E320];^gvar_0056B00C
 0041ACA3    mov         dword ptr [edx],eax
 0041ACA5    mov         eax,419444
 0041ACAA    mov         edx,dword ptr ds:[56E010];^gvar_0056B010
 0041ACB0    mov         dword ptr [edx],eax
 0041ACB2    mov         eax,414940;@VarCopy
 0041ACB7    mov         edx,dword ptr ds:[56E3C8];^gvar_0056B014
 0041ACBD    mov         dword ptr [edx],eax
 0041ACBF    mov         eax,417960;sub_00417960
 0041ACC4    mov         edx,dword ptr ds:[56E5D8];^gvar_0056B018
 0041ACCA    mov         dword ptr [edx],eax
 0041ACCC    mov         eax,418080;sub_00418080
 0041ACD1    mov         edx,dword ptr ds:[56E408];^gvar_0056B01C
 0041ACD7    mov         dword ptr [edx],eax
 0041ACD9    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041ACDE    call        kernel32.InitializeCriticalSection
 0041ACE3    xor         eax,eax
 0041ACE5    pop         edx
 0041ACE6    pop         ecx
 0041ACE7    pop         ecx
 0041ACE8    mov         dword ptr fs:[eax],edx
 0041ACEB    push        41ACF8
 0041ACF0    ret
>0041ACF1    jmp         @HandleFinally
>0041ACF6    jmp         0041ACF0
 0041ACF8    pop         ebp
 0041ACF9    ret
*}
Finalization
//0041ABD8
{*
 0041ABD8    push        ebp
 0041ABD9    mov         ebp,esp
 0041ABDB    xor         eax,eax
 0041ABDD    push        ebp
 0041ABDE    push        41AC47
 0041ABE3    push        dword ptr fs:[eax]
 0041ABE6    mov         dword ptr fs:[eax],esp
 0041ABE9    inc         dword ptr ds:[571A48]
>0041ABEF    jne         0041AC39
 0041ABF1    call        ClearVariantTypeList
 0041ABF6    push        571A50;LVarTypeSync:TRTLCriticalSection
 0041ABFB    call        kernel32.DeleteCriticalSection
 0041AC00    mov         eax,571A4C;LVarTypes:_DT_02
 0041AC05    mov         edx,dword ptr ds:[41A758];_DynArr_12_02
 0041AC0B    call        @DynArrayClear
 0041AC10    mov         eax,56BC04;^'Empty'
 0041AC15    mov         ecx,15
 0041AC1A    mov         edx,dword ptr ds:[4010C0];String
 0041AC20    call        @FinalizeArray
 0041AC25    mov         eax,56BB40;gvar_0056BB40
 0041AC2A    call        @LStrClr
 0041AC2F    mov         eax,571A28;gvar_00571A28:Variant
 0041AC34    call        @VarClr
 0041AC39    xor         eax,eax
 0041AC3B    pop         edx
 0041AC3C    pop         ecx
 0041AC3D    pop         ecx
 0041AC3E    mov         dword ptr fs:[eax],edx
 0041AC41    push        41AC4E
 0041AC46    ret
>0041AC47    jmp         @HandleFinally
>0041AC4C    jmp         0041AC46
 0041AC4E    pop         ebp
 0041AC4F    ret
*}
end.