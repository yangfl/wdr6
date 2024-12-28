//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit TypInfo;

interface

uses
  SysUtils, Classes;

type
  EPropertyError = class(Exception)
  end;
  EPropertyConvertError = class(Exception)
  end;
    //procedure sub_0041AF58(?:?);//0041AF58
    //function sub_0041AF8C(?:?; ?:?; ?:?):?;//0041AF8C
    //function sub_0041AFB8(?:TClass; ?:?; ?:?):?;//0041AFB8
    //function sub_0041AFE4(?:?; ?:?):?;//0041AFE4
    //function sub_0041B020(?:TMPHexEditorEx; ?:AnsiString; ?:?):?;//0041B020
    //procedure sub_0041B054(?:?; ?:AnsiString; ?:?; ?:?);//0041B054
    function RangedValue(const AMin:Int64; const AMax:Int64):Int64;//0041B2F0
    procedure sub_0041B358(?:TMPHexEditorEx; ?:AnsiString; ?:TVarData);//0041B358
    function GetTypeData(TypeInfo:PTypeInfo):PTypeData;//0041B66C
    //procedure sub_0041B678(?:?; ?:Longint; ?:?);//0041B678
    function GetEnumNameValue(TypeInfo:PTypeInfo; const Name:AnsiString):Integer;//0041B780
    //function sub_0041B7CC(?:PPropInfo; ?:AnsiString):?;//0041B7CC
    function GetPropInfo(TypeInfo:PTypeInfo; const PropName:AnsiString):PPropInfo;//0041B854
    //function sub_0041B8C4(?:?; ?:?; ?:?):?;//0041B8C4
    procedure GetPropInfos(TypeInfo:PTypeInfo; PropList:PPropList);//0041B918
    procedure SortPropList(PropList:PPropList; PropCount:Integer);//0041B96C
    sub_0041B97D;//0041B97D
    sub_0041B9DA;//0041B9DA
    //function sub_0041BA14(?:?; ?:?; ?:Pointer; ?:?):?;//0041BA14
    //function sub_0041BAE4(?:?; ?:?):?;//0041BAE4
    //function sub_0041BB2C(?:?; ?:?):?;//0041BB2C
    function IsStoredProp(Instance:TObject; PropInfo:PPropInfo):Boolean;//0041BB54
    function GetOrdProp(Instance:TObject; PropInfo:PPropInfo):Longint;//0041BB84
    procedure SetOrdProp(Instance:TObject; PropInfo:PPropInfo; Value:Longint);//0041BBF8
    //procedure sub_0041BC54(?:?; ?:?; ?:?);//0041BC54
    //procedure sub_0041BC84(?:?; ?:?; ?:?);//0041BC84
    //procedure sub_0041BCE4(?:?; ?:?; ?:?; ?:?);//0041BCE4
    //procedure sub_0041BD18(?:?; ?:Longint; ?:?; ?:?);//0041BD18
    //procedure sub_0041BE18(?:PChar; ?:?);//0041BE18
    //function sub_0041BE84(?:?; ?:?):?;//0041BE84
    //procedure sub_0041BF9C(?:?; ?:?; ?:?);//0041BF9C
    //function sub_0041BFC8(?:?; ?:?; ?:?):?;//0041BFC8
    procedure GetShortStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:ShortString; const _Dv_:$0..-$1);//0041C00C
    procedure SetShortStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:ShortString);//0041C050
    //procedure sub_0041C0A4(?:?; ?:?; ?:?);//0041C0A4
    //procedure sub_0041C0E0(?:?; ?:?; ?:?);//0041C0E0
    //procedure sub_0041C11C(?:?; ?:?);//0041C11C
    procedure GetLongStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);//0041C138
    procedure SetLongStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);//0041C178
    //procedure sub_0041C1B8(?:?; ?:?; ?:?);//0041C1B8
    //procedure sub_0041C218(?:?; ?:?; ?:?);//0041C218
    //procedure sub_0041C278(?:?; ?:?; ?:?);//0041C278
    procedure sub_0041C2DC(?:Longint; ?:PPropInfo; ?:AnsiString);//0041C2DC
    function GetWideStrProp(Instance:TObject; PropInfo:PPropInfo):WideString;//0041C334
    procedure sub_0041C444(?:Longint; ?:PPropInfo; ?:WideString);//0041C444
    function GetFloatProp(Instance:TObject; const PropName:AnsiString):Extended;//0041C548
    //procedure sub_0041C694(?:Longint; ?:PPropInfo; ?:Extended; ?:?; ?:?);//0041C694
    procedure AssignVariant(var Dest:Variant; const Source:Variant);//0041C8E4
    function GetVariantProp(Instance:TObject; PropInfo:PPropInfo):Variant;//0041C900
    procedure SetVariantProp(Instance:TObject; PropInfo:PPropInfo; const Value:Variant);//0041C940
    function GetMethodProp(Instance:TObject; PropInfo:PPropInfo):TMethod;//0041C980
    procedure SetMethodProp(Instance:TObject; PropInfo:PPropInfo; const Value:TMethod);//0041C9C0
    function GetInt64Prop(Instance:TObject; PropInfo:PPropInfo):Int64;//0041C9F8
    procedure SetInt64Prop(Instance:TObject; PropInfo:PPropInfo; const Value:Int64);//0041CA20
    //procedure sub_0041CA5C(?:?; ?:?; ?:?);//0041CA5C
    procedure SetInterfaceProp(Instance:TObject; PropInfo:PPropInfo; const Value:IInterface);//0041CAF8

implementation

//0041AF58
{*procedure sub_0041AF58(?:?);
begin
 0041AF58    push        ebp
 0041AF59    mov         ebp,esp
 0041AF5B    add         esp,0FFFFFFF4
 0041AF5E    mov         dword ptr [ebp-4],eax
 0041AF61    mov         eax,dword ptr [ebp-4]
 0041AF64    mov         dword ptr [ebp-0C],eax
 0041AF67    mov         byte ptr [ebp-8],0B
 0041AF6B    lea         eax,[ebp-0C]
 0041AF6E    push        eax
 0041AF6F    push        0
 0041AF71    mov         ecx,dword ptr ds:[56E0C0];^SUnknownProperty:TResStringRec
 0041AF77    mov         dl,1
 0041AF79    mov         eax,[0041AE6C];EPropertyError
 0041AF7E    call        Exception.CreateResFmt;EPropertyError.Create
 0041AF83    call        @RaiseExcept
 0041AF88    mov         esp,ebp
 0041AF8A    pop         ebp
 0041AF8B    ret
end;*}

//0041AF8C
{*function sub_0041AF8C(?:?; ?:?; ?:?):?;
begin
 0041AF8C    push        ebp
 0041AF8D    mov         ebp,esp
 0041AF8F    add         esp,0FFFFFFF0
 0041AF92    mov         dword ptr [ebp-0C],ecx
 0041AF95    mov         dword ptr [ebp-8],edx
 0041AF98    mov         dword ptr [ebp-4],eax
 0041AF9B    mov         eax,dword ptr [ebp-4]
 0041AF9E    call        TObject.ClassType
 0041AFA3    mov         ecx,dword ptr [ebp-0C]
 0041AFA6    mov         edx,dword ptr [ebp-8]
 0041AFA9    call        0041AFB8
 0041AFAE    mov         dword ptr [ebp-10],eax
 0041AFB1    mov         eax,dword ptr [ebp-10]
 0041AFB4    mov         esp,ebp
 0041AFB6    pop         ebp
 0041AFB7    ret
end;*}

//0041AFB8
{*function sub_0041AFB8(?:TClass; ?:?; ?:?):?;
begin
 0041AFB8    push        ebp
 0041AFB9    mov         ebp,esp
 0041AFBB    add         esp,0FFFFFFF0
 0041AFBE    mov         dword ptr [ebp-0C],ecx
 0041AFC1    mov         dword ptr [ebp-8],edx
 0041AFC4    mov         dword ptr [ebp-4],eax
 0041AFC7    mov         eax,dword ptr [ebp-4]
 0041AFCA    call        004044E0
 0041AFCF    mov         ecx,dword ptr [ebp-0C]
 0041AFD2    mov         edx,dword ptr [ebp-8]
 0041AFD5    call        0041B8C4
 0041AFDA    mov         dword ptr [ebp-10],eax
 0041AFDD    mov         eax,dword ptr [ebp-10]
 0041AFE0    mov         esp,ebp
 0041AFE2    pop         ebp
 0041AFE3    ret
end;*}

//0041AFE4
{*function sub_0041AFE4(?:?; ?:?):?;
begin
 0041AFE4    push        ebp
 0041AFE5    mov         ebp,esp
 0041AFE7    add         esp,0FFFFFFF4
 0041AFEA    mov         dword ptr [ebp-8],edx
 0041AFED    mov         dword ptr [ebp-4],eax
 0041AFF0    mov         ecx,dword ptr ds:[41B01C];0x0 gvar_0041B01C
 0041AFF6    mov         edx,dword ptr [ebp-8]
 0041AFF9    mov         eax,dword ptr [ebp-4]
 0041AFFC    call        0041AF8C
 0041B001    mov         dword ptr [ebp-0C],eax
 0041B004    cmp         dword ptr [ebp-0C],0
>0041B008    jne         0041B012
 0041B00A    mov         eax,dword ptr [ebp-8]
 0041B00D    call        0041AF58
 0041B012    mov         eax,dword ptr [ebp-0C]
 0041B015    mov         esp,ebp
 0041B017    pop         ebp
 0041B018    ret
end;*}

//0041B020
{*function sub_0041B020(?:TMPHexEditorEx; ?:AnsiString; ?:?):?;
begin
 0041B020    push        ebp
 0041B021    mov         ebp,esp
 0041B023    add         esp,0FFFFFFF0
 0041B026    mov         dword ptr [ebp-0C],ecx
 0041B029    mov         dword ptr [ebp-8],edx
 0041B02C    mov         dword ptr [ebp-4],eax
 0041B02F    mov         edx,dword ptr [ebp-8]
 0041B032    mov         eax,dword ptr [ebp-4]
 0041B035    call        0041AFE4
 0041B03A    mov         edx,eax
 0041B03C    mov         ecx,dword ptr [ebp-0C]
 0041B03F    mov         eax,dword ptr [ebp-4]
 0041B042    call        0041BFC8
 0041B047    mov         dword ptr [ebp-10],eax
 0041B04A    mov         eax,dword ptr [ebp-10]
 0041B04D    mov         esp,ebp
 0041B04F    pop         ebp
 0041B050    ret
end;*}

//0041B054
{*procedure sub_0041B054(?:?; ?:AnsiString; ?:?; ?:?);
begin
 0041B054    push        ebp
 0041B055    mov         ebp,esp
 0041B057    add         esp,0FFFFFFD8
 0041B05A    push        ebx
 0041B05B    xor         ebx,ebx
 0041B05D    mov         dword ptr [ebp-20],ebx
 0041B060    mov         dword ptr [ebp-1C],ebx
 0041B063    mov         dword ptr [ebp-18],ebx
 0041B066    mov         dword ptr [ebp-14],ebx
 0041B069    mov         byte ptr [ebp-9],cl
 0041B06C    mov         dword ptr [ebp-8],edx
 0041B06F    mov         dword ptr [ebp-4],eax
 0041B072    xor         eax,eax
 0041B074    push        ebp
 0041B075    push        41B2DD
 0041B07A    push        dword ptr fs:[eax]
 0041B07D    mov         dword ptr fs:[eax],esp
 0041B080    mov         eax,dword ptr [ebp+8]
 0041B083    call        0041ABC0
 0041B088    mov         ecx,dword ptr ds:[41B2EC];0x0 gvar_0041B2EC
 0041B08E    mov         edx,dword ptr [ebp-8]
 0041B091    mov         eax,dword ptr [ebp-4]
 0041B094    call        0041AF8C
 0041B099    mov         dword ptr [ebp-10],eax
 0041B09C    cmp         dword ptr [ebp-10],0
>0041B0A0    jne         0041B0AF
 0041B0A2    mov         eax,dword ptr [ebp-8]
 0041B0A5    call        0041AF58
>0041B0AA    jmp         0041B2BA
 0041B0AF    mov         eax,dword ptr [ebp-10]
 0041B0B2    mov         eax,dword ptr [eax]
 0041B0B4    mov         eax,dword ptr [eax]
 0041B0B6    movzx       eax,byte ptr [eax]
 0041B0B9    cmp         eax,11
>0041B0BC    ja          0041B28E
 0041B0C2    jmp         dword ptr [eax*4+41B0C9]
 0041B0C2    dd          0041B28E
 0041B0C2    dd          0041B111
 0041B0C2    dd          0041B111
 0041B0C2    dd          0041B12D
 0041B0C2    dd          0041B1E3
 0041B0C2    dd          0041B210
 0041B0C2    dd          0041B1A0
 0041B0C2    dd          0041B111
 0041B0C2    dd          0041B1FB
 0041B0C2    dd          0041B111
 0041B0C2    dd          0041B210
 0041B0C2    dd          0041B22E
 0041B0C2    dd          0041B249
 0041B0C2    dd          0041B28E
 0041B0C2    dd          0041B28E
 0041B0C2    dd          0041B28E
 0041B0C2    dd          0041B259
 0041B0C2    dd          0041B270
 0041B111    mov         edx,dword ptr [ebp-10]
 0041B114    mov         eax,dword ptr [ebp-4]
 0041B117    call        GetOrdProp
 0041B11C    mov         edx,eax
 0041B11E    mov         eax,dword ptr [ebp+8]
 0041B121    mov         cl,0FC
 0041B123    call        @VarFromInt
>0041B128    jmp         0041B2BA
 0041B12D    cmp         byte ptr [ebp-9],0
>0041B131    je          0041B151
 0041B133    lea         ecx,[ebp-14]
 0041B136    mov         edx,dword ptr [ebp-10]
 0041B139    mov         eax,dword ptr [ebp-4]
 0041B13C    call        0041BC54
 0041B141    mov         edx,dword ptr [ebp-14]
 0041B144    mov         eax,dword ptr [ebp+8]
 0041B147    call        @VarFromLStr
>0041B14C    jmp         0041B2BA
 0041B151    mov         eax,dword ptr [ebp-10]
 0041B154    mov         eax,dword ptr [eax]
 0041B156    mov         eax,dword ptr [eax]
 0041B158    call        GetTypeData
 0041B15D    mov         eax,dword ptr [eax+9]
 0041B160    mov         eax,dword ptr [eax]
 0041B162    cmp         eax,dword ptr ds:[401000];Boolean
>0041B168    jne         0041B184
 0041B16A    mov         edx,dword ptr [ebp-10]
 0041B16D    mov         eax,dword ptr [ebp-4]
 0041B170    call        GetOrdProp
 0041B175    mov         edx,eax
 0041B177    mov         eax,dword ptr [ebp+8]
 0041B17A    call        @VarFromBool
>0041B17F    jmp         0041B2BA
 0041B184    mov         edx,dword ptr [ebp-10]
 0041B187    mov         eax,dword ptr [ebp-4]
 0041B18A    call        GetOrdProp
 0041B18F    mov         edx,eax
 0041B191    mov         eax,dword ptr [ebp+8]
 0041B194    mov         cl,0FC
 0041B196    call        @VarFromInt
>0041B19B    jmp         0041B2BA
 0041B1A0    cmp         byte ptr [ebp-9],0
>0041B1A4    je          0041B1C7
 0041B1A6    lea         eax,[ebp-18]
 0041B1A9    push        eax
 0041B1AA    xor         ecx,ecx
 0041B1AC    mov         edx,dword ptr [ebp-10]
 0041B1AF    mov         eax,dword ptr [ebp-4]
 0041B1B2    call        0041BCE4
 0041B1B7    mov         edx,dword ptr [ebp-18]
 0041B1BA    mov         eax,dword ptr [ebp+8]
 0041B1BD    call        @VarFromLStr
>0041B1C2    jmp         0041B2BA
 0041B1C7    mov         edx,dword ptr [ebp-10]
 0041B1CA    mov         eax,dword ptr [ebp-4]
 0041B1CD    call        GetOrdProp
 0041B1D2    mov         edx,eax
 0041B1D4    mov         eax,dword ptr [ebp+8]
 0041B1D7    mov         cl,0FC
 0041B1D9    call        @VarFromInt
>0041B1DE    jmp         0041B2BA
 0041B1E3    mov         edx,dword ptr [ebp-10]
 0041B1E6    mov         eax,dword ptr [ebp-4]
 0041B1E9    call        GetFloatProp
 0041B1EE    mov         eax,dword ptr [ebp+8]
 0041B1F1    call        @VarFromReal
>0041B1F6    jmp         0041B2BA
 0041B1FB    mov         eax,dword ptr [ebp+8]
 0041B1FE    mov         edx,dword ptr [ebp-10]
 0041B201    mov         edx,dword ptr [edx]
 0041B203    mov         edx,dword ptr [edx]
 0041B205    inc         edx
 0041B206    call        @VarFromPStr
>0041B20B    jmp         0041B2BA
 0041B210    lea         ecx,[ebp-1C]
 0041B213    mov         edx,dword ptr [ebp-10]
 0041B216    mov         eax,dword ptr [ebp-4]
 0041B219    call        0041C278
 0041B21E    mov         edx,dword ptr [ebp-1C]
 0041B221    mov         eax,dword ptr [ebp+8]
 0041B224    call        @VarFromLStr
>0041B229    jmp         0041B2BA
 0041B22E    lea         ecx,[ebp-20]
 0041B231    mov         edx,dword ptr [ebp-10]
 0041B234    mov         eax,dword ptr [ebp-4]
 0041B237    call        GetWideStrProp
 0041B23C    mov         edx,dword ptr [ebp-20]
 0041B23F    mov         eax,dword ptr [ebp+8]
 0041B242    call        @VarFromWStr
>0041B247    jmp         0041B2BA
 0041B249    mov         ecx,dword ptr [ebp+8]
 0041B24C    mov         edx,dword ptr [ebp-10]
 0041B24F    mov         eax,dword ptr [ebp-4]
 0041B252    call        GetVariantProp
>0041B257    jmp         0041B2BA
 0041B259    mov         edx,dword ptr [ebp-10]
 0041B25C    mov         eax,dword ptr [ebp-4]
 0041B25F    call        GetInt64Prop
 0041B264    push        edx
 0041B265    push        eax
 0041B266    mov         eax,dword ptr [ebp+8]
 0041B269    call        @VarFromInt64
>0041B26E    jmp         0041B2BA
 0041B270    mov         edx,dword ptr [ebp-10]
 0041B273    mov         eax,dword ptr [ebp-4]
 0041B276    call        GetOrdProp
 0041B27B    mov         edx,eax
 0041B27D    mov         eax,dword ptr [ebp-10]
 0041B280    mov         eax,dword ptr [eax]
 0041B282    mov         ecx,dword ptr [eax]
 0041B284    mov         eax,dword ptr [ebp+8]
 0041B287    call        0041A08C
>0041B28C    jmp         0041B2BA
 0041B28E    mov         eax,dword ptr [ebp-10]
 0041B291    mov         eax,dword ptr [eax]
 0041B293    mov         eax,dword ptr [eax]
 0041B295    inc         eax
 0041B296    mov         dword ptr [ebp-28],eax
 0041B299    mov         byte ptr [ebp-24],4
 0041B29D    lea         eax,[ebp-28]
 0041B2A0    push        eax
 0041B2A1    push        0
 0041B2A3    mov         ecx,dword ptr ds:[56E1B8];^SInvalidPropertyType:TResStringRec
 0041B2A9    mov         dl,1
 0041B2AB    mov         eax,[0041AEC8];EPropertyConvertError
 0041B2B0    call        Exception.CreateResFmt;EPropertyConvertError.Create
 0041B2B5    call        @RaiseExcept
 0041B2BA    xor         eax,eax
 0041B2BC    pop         edx
 0041B2BD    pop         ecx
 0041B2BE    pop         ecx
 0041B2BF    mov         dword ptr fs:[eax],edx
 0041B2C2    push        41B2E4
 0041B2C7    lea         eax,[ebp-20]
 0041B2CA    call        @WStrClr
 0041B2CF    lea         eax,[ebp-1C]
 0041B2D2    mov         edx,3
 0041B2D7    call        @LStrArrayClr
 0041B2DC    ret
>0041B2DD    jmp         @HandleFinally
>0041B2E2    jmp         0041B2C7
 0041B2E4    pop         ebx
 0041B2E5    mov         esp,ebp
 0041B2E7    pop         ebp
 0041B2E8    ret         4
end;*}

//0041B2F0
function RangedValue(const AMin:Int64; const AMax:Int64):Int64;
begin
{*
 0041B2F0    push        ebp
 0041B2F1    mov         ebp,esp
 0041B2F3    add         esp,0FFFFFFF8
 0041B2F6    mov         eax,dword ptr [ebp+18]
 0041B2F9    mov         eax,dword ptr [eax-4]
 0041B2FC    call        @VarToReal
 0041B301    call        @TRUNC
 0041B306    mov         dword ptr [ebp-8],eax
 0041B309    mov         dword ptr [ebp-4],edx
 0041B30C    mov         eax,dword ptr [ebp-8]
 0041B30F    mov         edx,dword ptr [ebp-4]
 0041B312    cmp         edx,dword ptr [ebp+14]
>0041B315    jne         0041B31E
 0041B317    cmp         eax,dword ptr [ebp+10]
>0041B31A    jb          0041B334
>0041B31C    jmp         0041B320
>0041B31E    jl          0041B334
 0041B320    mov         eax,dword ptr [ebp-8]
 0041B323    mov         edx,dword ptr [ebp-4]
 0041B326    cmp         edx,dword ptr [ebp+0C]
>0041B329    jne         0041B332
 0041B32B    cmp         eax,dword ptr [ebp+8]
>0041B32E    jbe         0041B34B
>0041B330    jmp         0041B334
>0041B332    jle         0041B34B
 0041B334    mov         ecx,dword ptr ds:[56E55C];^SRangeError:TResStringRec
 0041B33A    mov         dl,1
 0041B33C    mov         eax,[0040B2E4];ERangeError
 0041B341    call        Exception.Create
 0041B346    call        @RaiseExcept
 0041B34B    mov         eax,dword ptr [ebp-8]
 0041B34E    mov         edx,dword ptr [ebp-4]
 0041B351    pop         ecx
 0041B352    pop         ecx
 0041B353    pop         ebp
 0041B354    ret         10
*}
end;

//0041B358
procedure sub_0041B358(?:TMPHexEditorEx; ?:AnsiString; ?:TVarData);
begin
{*
 0041B358    push        ebp
 0041B359    mov         ebp,esp
 0041B35B    add         esp,0FFFFFFD0
 0041B35E    push        ebx
 0041B35F    xor         ebx,ebx
 0041B361    mov         dword ptr [ebp-28],ebx
 0041B364    mov         dword ptr [ebp-24],ebx
 0041B367    mov         dword ptr [ebp-20],ebx
 0041B36A    mov         dword ptr [ebp-1C],ebx
 0041B36D    mov         dword ptr [ebp-4],ecx
 0041B370    mov         dword ptr [ebp-0C],edx
 0041B373    mov         dword ptr [ebp-8],eax
 0041B376    xor         eax,eax
 0041B378    push        ebp
 0041B379    push        41B65A
 0041B37E    push        dword ptr fs:[eax]
 0041B381    mov         dword ptr fs:[eax],esp
 0041B384    mov         ecx,dword ptr ds:[41B668];0x0 gvar_0041B668
 0041B38A    mov         edx,dword ptr [ebp-0C]
 0041B38D    mov         eax,dword ptr [ebp-8]
 0041B390    call        0041AF8C
 0041B395    mov         dword ptr [ebp-10],eax
 0041B398    cmp         dword ptr [ebp-10],0
>0041B39C    jne         0041B3AB
 0041B39E    mov         eax,dword ptr [ebp-0C]
 0041B3A1    call        0041AF58
>0041B3A6    jmp         0041B637
 0041B3AB    mov         eax,dword ptr [ebp-10]
 0041B3AE    mov         eax,dword ptr [eax]
 0041B3B0    mov         eax,dword ptr [eax]
 0041B3B2    call        GetTypeData
 0041B3B7    mov         dword ptr [ebp-14],eax
 0041B3BA    mov         eax,dword ptr [ebp-10]
 0041B3BD    mov         eax,dword ptr [eax]
 0041B3BF    mov         eax,dword ptr [eax]
 0041B3C1    movzx       eax,byte ptr [eax]
 0041B3C4    cmp         eax,11
>0041B3C7    ja          0041B60B
 0041B3CD    jmp         dword ptr [eax*4+41B3D4]
 0041B3CD    dd          0041B60B
 0041B3CD    dd          0041B41C
 0041B3CD    dd          0041B41C
 0041B3CD    dd          0041B482
 0041B3CD    dd          0041B557
 0041B3CD    dd          0041B576
 0041B3CD    dd          0041B511
 0041B3CD    dd          0041B60B
 0041B3CD    dd          0041B60B
 0041B3CD    dd          0041B41C
 0041B3CD    dd          0041B576
 0041B3CD    dd          0041B594
 0041B3CD    dd          0041B5B2
 0041B3CD    dd          0041B60B
 0041B3CD    dd          0041B60B
 0041B3CD    dd          0041B60B
 0041B3CD    dd          0041B5C2
 0041B3CD    dd          0041B5E9
 0041B41C    mov         eax,dword ptr [ebp-14]
 0041B41F    mov         eax,dword ptr [eax+1]
 0041B422    mov         edx,dword ptr [ebp-14]
 0041B425    cmp         eax,dword ptr [edx+5]
>0041B428    jge         0041B455
 0041B42A    push        ebp
 0041B42B    mov         eax,dword ptr [ebp-14]
 0041B42E    mov         eax,dword ptr [eax+1]
 0041B431    cdq
 0041B432    push        edx
 0041B433    push        eax
 0041B434    mov         eax,dword ptr [ebp-14]
 0041B437    mov         eax,dword ptr [eax+5]
 0041B43A    cdq
 0041B43B    push        edx
 0041B43C    push        eax
 0041B43D    call        RangedValue
 0041B442    pop         ecx
 0041B443    mov         ecx,eax
 0041B445    mov         edx,dword ptr [ebp-10]
 0041B448    mov         eax,dword ptr [ebp-8]
 0041B44B    call        SetOrdProp
>0041B450    jmp         0041B637
 0041B455    push        ebp
 0041B456    mov         eax,dword ptr [ebp-14]
 0041B459    mov         eax,dword ptr [eax+1]
 0041B45C    xor         edx,edx
 0041B45E    push        edx
 0041B45F    push        eax
 0041B460    mov         eax,dword ptr [ebp-14]
 0041B463    mov         eax,dword ptr [eax+5]
 0041B466    xor         edx,edx
 0041B468    push        edx
 0041B469    push        eax
 0041B46A    call        RangedValue
 0041B46F    pop         ecx
 0041B470    mov         ecx,eax
 0041B472    mov         edx,dword ptr [ebp-10]
 0041B475    mov         eax,dword ptr [ebp-8]
 0041B478    call        SetOrdProp
>0041B47D    jmp         0041B637
 0041B482    mov         eax,dword ptr [ebp-4]
 0041B485    call        00419738
 0041B48A    cmp         ax,100
>0041B48E    jne         0041B4AE
 0041B490    lea         edx,[ebp-1C]
 0041B493    mov         eax,dword ptr [ebp-4]
 0041B496    call        VarToStr
 0041B49B    mov         ecx,dword ptr [ebp-1C]
 0041B49E    mov         edx,dword ptr [ebp-10]
 0041B4A1    mov         eax,dword ptr [ebp-8]
 0041B4A4    call        0041BC84
>0041B4A9    jmp         0041B637
 0041B4AE    mov         eax,dword ptr [ebp-4]
 0041B4B1    call        00419738
 0041B4B6    cmp         ax,0B
>0041B4BA    jne         0041B4E6
 0041B4BC    mov         eax,dword ptr [ebp-4]
 0041B4BF    call        @VarToReal
 0041B4C4    call        @TRUNC
 0041B4C9    test        edx,edx
>0041B4CB    jge         0041B4D4
 0041B4CD    neg         eax
 0041B4CF    adc         edx,0
 0041B4D2    neg         edx
 0041B4D4    mov         ecx,eax
 0041B4D6    mov         edx,dword ptr [ebp-10]
 0041B4D9    mov         eax,dword ptr [ebp-8]
 0041B4DC    call        SetOrdProp
>0041B4E1    jmp         0041B637
 0041B4E6    push        ebp
 0041B4E7    mov         eax,dword ptr [ebp-14]
 0041B4EA    mov         eax,dword ptr [eax+1]
 0041B4ED    cdq
 0041B4EE    push        edx
 0041B4EF    push        eax
 0041B4F0    mov         eax,dword ptr [ebp-14]
 0041B4F3    mov         eax,dword ptr [eax+5]
 0041B4F6    cdq
 0041B4F7    push        edx
 0041B4F8    push        eax
 0041B4F9    call        RangedValue
 0041B4FE    pop         ecx
 0041B4FF    mov         ecx,eax
 0041B501    mov         edx,dword ptr [ebp-10]
 0041B504    mov         eax,dword ptr [ebp-8]
 0041B507    call        SetOrdProp
>0041B50C    jmp         0041B637
 0041B511    mov         eax,dword ptr [ebp-4]
 0041B514    call        00419738
 0041B519    cmp         ax,3
>0041B51D    jne         0041B539
 0041B51F    mov         eax,dword ptr [ebp-4]
 0041B522    call        @VarToInteger
 0041B527    mov         ecx,eax
 0041B529    mov         edx,dword ptr [ebp-10]
 0041B52C    mov         eax,dword ptr [ebp-8]
 0041B52F    call        SetOrdProp
>0041B534    jmp         0041B637
 0041B539    lea         edx,[ebp-20]
 0041B53C    mov         eax,dword ptr [ebp-4]
 0041B53F    call        VarToStr
 0041B544    mov         ecx,dword ptr [ebp-20]
 0041B547    mov         edx,dword ptr [ebp-10]
 0041B54A    mov         eax,dword ptr [ebp-8]
 0041B54D    call        0041BF9C
>0041B552    jmp         0041B637
 0041B557    mov         eax,dword ptr [ebp-4]
 0041B55A    call        @VarToReal
 0041B55F    add         esp,0FFFFFFF4
 0041B562    fstp        tbyte ptr [esp]
 0041B565    wait
 0041B566    mov         edx,dword ptr [ebp-10]
 0041B569    mov         eax,dword ptr [ebp-8]
 0041B56C    call        0041C694
>0041B571    jmp         0041B637
 0041B576    lea         edx,[ebp-24]
 0041B579    mov         eax,dword ptr [ebp-4]
 0041B57C    call        VarToStr
 0041B581    mov         ecx,dword ptr [ebp-24]
 0041B584    mov         edx,dword ptr [ebp-10]
 0041B587    mov         eax,dword ptr [ebp-8]
 0041B58A    call        0041C2DC
>0041B58F    jmp         0041B637
 0041B594    lea         edx,[ebp-28]
 0041B597    mov         eax,dword ptr [ebp-4]
 0041B59A    call        VarToWideStr
 0041B59F    mov         ecx,dword ptr [ebp-28]
 0041B5A2    mov         edx,dword ptr [ebp-10]
 0041B5A5    mov         eax,dword ptr [ebp-8]
 0041B5A8    call        0041C444
>0041B5AD    jmp         0041B637
 0041B5B2    mov         ecx,dword ptr [ebp-4]
 0041B5B5    mov         edx,dword ptr [ebp-10]
 0041B5B8    mov         eax,dword ptr [ebp-8]
 0041B5BB    call        SetVariantProp
>0041B5C0    jmp         0041B637
 0041B5C2    push        ebp
 0041B5C3    mov         eax,dword ptr [ebp-14]
 0041B5C6    push        dword ptr [eax+4]
 0041B5C9    push        dword ptr [eax]
 0041B5CB    mov         eax,dword ptr [ebp-14]
 0041B5CE    push        dword ptr [eax+0C]
 0041B5D1    push        dword ptr [eax+8]
 0041B5D4    call        RangedValue
 0041B5D9    pop         ecx
 0041B5DA    push        edx
 0041B5DB    push        eax
 0041B5DC    mov         edx,dword ptr [ebp-10]
 0041B5DF    mov         eax,dword ptr [ebp-8]
 0041B5E2    call        SetInt64Prop
>0041B5E7    jmp         0041B637
 0041B5E9    mov         eax,dword ptr [ebp-10]
 0041B5EC    mov         eax,dword ptr [eax]
 0041B5EE    mov         ecx,dword ptr [eax]
 0041B5F0    mov         edx,dword ptr [ebp-4]
 0041B5F3    lea         eax,[ebp-18]
 0041B5F6    call        0041A410
 0041B5FB    mov         ecx,dword ptr [ebp-18]
 0041B5FE    mov         edx,dword ptr [ebp-10]
 0041B601    mov         eax,dword ptr [ebp-8]
 0041B604    call        SetOrdProp
>0041B609    jmp         0041B637
 0041B60B    mov         eax,dword ptr [ebp-10]
 0041B60E    mov         eax,dword ptr [eax]
 0041B610    mov         eax,dword ptr [eax]
 0041B612    inc         eax
 0041B613    mov         dword ptr [ebp-30],eax
 0041B616    mov         byte ptr [ebp-2C],4
 0041B61A    lea         eax,[ebp-30]
 0041B61D    push        eax
 0041B61E    push        0
 0041B620    mov         ecx,dword ptr ds:[56E1B8];^SInvalidPropertyType:TResStringRec
 0041B626    mov         dl,1
 0041B628    mov         eax,[0041AEC8];EPropertyConvertError
 0041B62D    call        Exception.CreateResFmt;EPropertyConvertError.Create
 0041B632    call        @RaiseExcept
 0041B637    xor         eax,eax
 0041B639    pop         edx
 0041B63A    pop         ecx
 0041B63B    pop         ecx
 0041B63C    mov         dword ptr fs:[eax],edx
 0041B63F    push        41B661
 0041B644    lea         eax,[ebp-28]
 0041B647    call        @WStrClr
 0041B64C    lea         eax,[ebp-24]
 0041B64F    mov         edx,3
 0041B654    call        @LStrArrayClr
 0041B659    ret
>0041B65A    jmp         @HandleFinally
>0041B65F    jmp         0041B644
 0041B661    pop         ebx
 0041B662    mov         esp,ebp
 0041B664    pop         ebp
 0041B665    ret
*}
end;

//0041B66C
function GetTypeData(TypeInfo:PTypeInfo):PTypeData;
begin
{*
 0041B66C    xor         edx,edx
 0041B66E    mov         dl,byte ptr [eax+1]
 0041B671    lea         eax,[eax+edx+2]
 0041B675    ret
*}
end;

//0041B678
{*procedure sub_0041B678(?:?; ?:Longint; ?:?);
begin
 0041B678    push        ebp
 0041B679    mov         ebp,esp
 0041B67B    add         esp,0FFFFFFE8
 0041B67E    push        ebx
 0041B67F    xor         ebx,ebx
 0041B681    mov         dword ptr [ebp-18],ebx
 0041B684    mov         dword ptr [ebp-0C],ecx
 0041B687    mov         dword ptr [ebp-8],edx
 0041B68A    mov         dword ptr [ebp-4],eax
 0041B68D    xor         eax,eax
 0041B68F    push        ebp
 0041B690    push        41B767
 0041B695    push        dword ptr fs:[eax]
 0041B698    mov         dword ptr fs:[eax],esp
 0041B69B    mov         eax,dword ptr [ebp-4]
 0041B69E    cmp         byte ptr [eax],1
>0041B6A1    jne         0041B6B3
 0041B6A3    mov         edx,dword ptr [ebp-0C]
 0041B6A6    mov         eax,dword ptr [ebp-8]
 0041B6A9    call        IntToStr
>0041B6AE    jmp         0041B751
 0041B6B3    mov         eax,dword ptr [ebp-4]
 0041B6B6    call        GetTypeData
 0041B6BB    mov         eax,dword ptr [eax+9]
 0041B6BE    mov         eax,dword ptr [eax]
 0041B6C0    call        GetTypeData
 0041B6C5    mov         dword ptr [ebp-14],eax
 0041B6C8    mov         eax,dword ptr [ebp-4]
 0041B6CB    cmp         eax,dword ptr ds:[401000];Boolean
>0041B6D1    je          0041B6DC
 0041B6D3    mov         eax,dword ptr [ebp-14]
 0041B6D6    cmp         dword ptr [eax+1],0
>0041B6DA    jge         0041B724
 0041B6DC    mov         eax,dword ptr [ebp-0C]
 0041B6DF    cmp         dword ptr [ebp-8],0
 0041B6E3    setne       dl
 0041B6E6    and         edx,7F
 0041B6E9    mov         edx,dword ptr [edx*4+56BC6C];^'False'
 0041B6F0    call        @LStrAsg
 0041B6F5    mov         eax,[0056E580];^gvar_0056B840
 0041B6FA    mov         eax,dword ptr [eax]
 0041B6FC    mov         edx,41B77C;'0x'
 0041B701    call        SameText
 0041B706    test        al,al
>0041B708    je          0041B751
 0041B70A    lea         edx,[ebp-18]
 0041B70D    mov         eax,dword ptr [ebp-0C]
 0041B710    mov         eax,dword ptr [eax]
 0041B712    call        0040BD34
 0041B717    mov         edx,dword ptr [ebp-18]
 0041B71A    mov         eax,dword ptr [ebp-0C]
 0041B71D    call        @LStrAsg
>0041B722    jmp         0041B751
 0041B724    mov         eax,dword ptr [ebp-14]
 0041B727    add         eax,0D
 0041B72A    mov         dword ptr [ebp-10],eax
 0041B72D    cmp         dword ptr [ebp-8],0
>0041B731    je          0041B746
 0041B733    mov         eax,dword ptr [ebp-10]
 0041B736    movzx       eax,byte ptr [eax]
 0041B739    inc         eax
 0041B73A    add         dword ptr [ebp-10],eax
 0041B73D    dec         dword ptr [ebp-8]
 0041B740    cmp         dword ptr [ebp-8],0
>0041B744    jne         0041B733
 0041B746    mov         eax,dword ptr [ebp-0C]
 0041B749    mov         edx,dword ptr [ebp-10]
 0041B74C    call        @LStrFromString
 0041B751    xor         eax,eax
 0041B753    pop         edx
 0041B754    pop         ecx
 0041B755    pop         ecx
 0041B756    mov         dword ptr fs:[eax],edx
 0041B759    push        41B76E
 0041B75E    lea         eax,[ebp-18]
 0041B761    call        @LStrClr
 0041B766    ret
>0041B767    jmp         @HandleFinally
>0041B76C    jmp         0041B75E
 0041B76E    pop         ebx
 0041B76F    mov         esp,ebp
 0041B771    pop         ebp
 0041B772    ret
end;*}

//0041B780
function GetEnumNameValue(TypeInfo:PTypeInfo; const Name:AnsiString):Integer;
begin
{*
 0041B780    push        ebx
 0041B781    push        esi
 0041B782    push        edi
 0041B783    test        edx,edx
>0041B785    je          0041B7C2
 0041B787    xor         ecx,ecx
 0041B789    mov         cl,byte ptr [eax+1]
 0041B78C    mov         eax,dword ptr [eax+ecx+0B]
 0041B790    mov         eax,dword ptr [eax]
 0041B792    mov         cl,byte ptr [eax+1]
 0041B795    lea         esi,[eax+ecx+0F]
 0041B799    mov         edi,dword ptr [eax+ecx+7]
 0041B79D    xor         eax,eax
 0041B79F    mov         cl,byte ptr [esi]
 0041B7A1    cmp         ecx,dword ptr [edx-4]
>0041B7A4    jne         0041B7B9
 0041B7A6    mov         bl,byte ptr [ecx+edx-1]
 0041B7AA    xor         bl,byte ptr [ecx+esi]
 0041B7AD    test        bl,0DF
>0041B7B0    jne         0041B7B7
 0041B7B2    dec         ecx
>0041B7B3    jne         0041B7A6
>0041B7B5    jmp         0041B7C5
 0041B7B7    mov         cl,byte ptr [esi]
 0041B7B9    inc         eax
 0041B7BA    lea         esi,[ecx+esi+1]
 0041B7BE    cmp         eax,edi
>0041B7C0    jle         0041B79F
 0041B7C2    or          eax,0FFFFFFFF
 0041B7C5    pop         edi
 0041B7C6    pop         esi
 0041B7C7    pop         ebx
 0041B7C8    ret
*}
end;

//0041B7CC
{*function sub_0041B7CC(?:PPropInfo; ?:AnsiString):?;
begin
 0041B7CC    push        ebp
 0041B7CD    mov         ebp,esp
 0041B7CF    add         esp,0FFFFFFF4
 0041B7D2    mov         dword ptr [ebp-8],edx
 0041B7D5    mov         dword ptr [ebp-4],eax
 0041B7D8    mov         eax,dword ptr [ebp-4]
 0041B7DB    cmp         byte ptr [eax],1
>0041B7DE    jne         0041B7ED
 0041B7E0    mov         eax,dword ptr [ebp-8]
 0041B7E3    call        0040C468
 0041B7E8    mov         dword ptr [ebp-0C],eax
>0041B7EB    jmp         0041B84A
 0041B7ED    mov         eax,dword ptr [ebp-4]
 0041B7F0    call        GetTypeData
 0041B7F5    cmp         dword ptr [eax+1],0
>0041B7F9    jge         0041B83C
 0041B7FB    mov         edx,dword ptr ds:[56BC6C];^'False'
 0041B801    mov         eax,dword ptr [ebp-8]
 0041B804    call        SameText
 0041B809    test        al,al
>0041B80B    je          0041B814
 0041B80D    xor         eax,eax
 0041B80F    mov         dword ptr [ebp-0C],eax
>0041B812    jmp         0041B84A
 0041B814    mov         edx,dword ptr ds:[56BC70];^'True'
 0041B81A    mov         eax,dword ptr [ebp-8]
 0041B81D    call        SameText
 0041B822    test        al,al
>0041B824    je          0041B82F
 0041B826    mov         dword ptr [ebp-0C],0FFFFFFFF
>0041B82D    jmp         0041B84A
 0041B82F    mov         eax,dword ptr [ebp-8]
 0041B832    call        0040C468
 0041B837    mov         dword ptr [ebp-0C],eax
>0041B83A    jmp         0041B84A
 0041B83C    mov         edx,dword ptr [ebp-8]
 0041B83F    mov         eax,dword ptr [ebp-4]
 0041B842    call        GetEnumNameValue
 0041B847    mov         dword ptr [ebp-0C],eax
 0041B84A    mov         eax,dword ptr [ebp-0C]
 0041B84D    mov         esp,ebp
 0041B84F    pop         ebp
 0041B850    ret
end;*}

//0041B854
function GetPropInfo(TypeInfo:PTypeInfo; const PropName:AnsiString):PPropInfo;
begin
{*
 0041B854    push        ebx
 0041B855    push        esi
 0041B856    push        edi
 0041B857    test        eax,eax
>0041B859    je          0041B8C0
 0041B85B    mov         ecx,edx
 0041B85D    or          edx,edx
>0041B85F    je          0041B86C
 0041B861    mov         cl,byte ptr [edx-4]
 0041B864    mov         ch,byte ptr [edx]
 0041B866    and         ecx,0DFFF
 0041B86C    xor         ebx,ebx
 0041B86E    mov         bl,byte ptr [eax+1]
 0041B871    lea         esi,[eax+ebx+2]
 0041B875    mov         bl,byte ptr [esi+0A]
 0041B878    movzx       edi,word ptr [esi+ebx+0B]
 0041B87D    test        edi,edi
>0041B87F    je          0041B899
 0041B881    lea         eax,[esi+ebx+0D]
 0041B885    mov         bx,word ptr [eax+1A]
 0041B889    and         bh,0DF
 0041B88C    cmp         ebx,ecx
>0041B88E    je          0041B8AE
 0041B890    mov         bh,0
 0041B892    dec         edi
 0041B893    lea         eax,[eax+ebx+1B]
>0041B897    jne         0041B885
 0041B899    mov         eax,dword ptr [esi+4]
 0041B89C    test        eax,eax
>0041B89E    je          0041B8C0
 0041B8A0    mov         eax,dword ptr [eax]
>0041B8A2    jmp         0041B86C
 0041B8A4    mov         ch,byte ptr [edx]
 0041B8A6    and         ch,0DF
 0041B8A9    mov         bl,byte ptr [eax+1A]
>0041B8AC    jmp         0041B890
 0041B8AE    mov         bh,0
 0041B8B0    mov         ch,byte ptr [ebx+edx-1]
 0041B8B4    xor         ch,byte ptr [eax+ebx+1A]
 0041B8B8    test        ch,0DF
>0041B8BB    jne         0041B8A4
 0041B8BD    dec         ebx
>0041B8BE    jne         0041B8B0
 0041B8C0    pop         edi
 0041B8C1    pop         esi
 0041B8C2    pop         ebx
 0041B8C3    ret
*}
end;

//0041B8C4
{*function sub_0041B8C4(?:?; ?:?; ?:?):?;
begin
 0041B8C4    push        ebp
 0041B8C5    mov         ebp,esp
 0041B8C7    add         esp,0FFFFFFF0
 0041B8CA    mov         dword ptr [ebp-0C],ecx
 0041B8CD    mov         dword ptr [ebp-8],edx
 0041B8D0    mov         dword ptr [ebp-4],eax
 0041B8D3    mov         edx,dword ptr [ebp-8]
 0041B8D6    mov         eax,dword ptr [ebp-4]
 0041B8D9    call        GetPropInfo
 0041B8DE    mov         dword ptr [ebp-10],eax
 0041B8E1    cmp         dword ptr [ebp-10],0
>0041B8E5    je          0041B90C
 0041B8E7    mov         eax,[0041B914];0x0 gvar_0041B914
 0041B8EC    cmp         eax,dword ptr [ebp-0C]
>0041B8EF    je          0041B90C
 0041B8F1    mov         eax,dword ptr [ebp-10]
 0041B8F4    mov         eax,dword ptr [eax]
 0041B8F6    mov         eax,dword ptr [eax]
 0041B8F8    mov         al,byte ptr [eax]
 0041B8FA    cmp         al,1F
>0041B8FC    ja          0041B905
 0041B8FE    and         eax,7F
 0041B901    bt          dword ptr [ebp-0C],eax
>0041B905    jb          0041B90C
 0041B907    xor         eax,eax
 0041B909    mov         dword ptr [ebp-10],eax
 0041B90C    mov         eax,dword ptr [ebp-10]
 0041B90F    mov         esp,ebp
 0041B911    pop         ebp
 0041B912    ret
end;*}

//0041B918
procedure GetPropInfos(TypeInfo:PTypeInfo; PropList:PPropList);
begin
{*
 0041B918    push        ebx
 0041B919    push        esi
 0041B91A    push        edi
 0041B91B    xor         ecx,ecx
 0041B91D    mov         esi,eax
 0041B91F    mov         cl,byte ptr [eax+1]
 0041B922    mov         edi,edx
 0041B924    xor         eax,eax
 0041B926    movzx       ecx,word ptr [esi+ecx+0A]
 0041B92B    rep stos    dword ptr [edi]
 0041B92D    mov         cl,byte ptr [esi+1]
 0041B930    lea         esi,[esi+ecx+2]
 0041B934    mov         cl,byte ptr [esi+0A]
 0041B937    movzx       eax,word ptr [esi+ecx+0B]
 0041B93C    test        eax,eax
>0041B93E    je          0041B95B
 0041B940    lea         edi,[esi+ecx+0D]
 0041B944    movzx       ebx,word ptr [edi+18]
 0041B948    mov         cl,byte ptr [edi+1A]
 0041B94B    cmp         dword ptr [edx+ebx*4],0
>0041B94F    jne         0041B954
 0041B951    mov         dword ptr [edx+ebx*4],edi
 0041B954    lea         edi,[edi+ecx+1B]
 0041B958    dec         eax
>0041B959    jne         0041B944
 0041B95B    mov         esi,dword ptr [esi+4]
 0041B95E    xor         ecx,ecx
 0041B960    test        esi,esi
>0041B962    je          0041B968
 0041B964    mov         esi,dword ptr [esi]
>0041B966    jmp         0041B92D
 0041B968    pop         edi
 0041B969    pop         esi
 0041B96A    pop         ebx
 0041B96B    ret
*}
end;

//0041B96C
procedure SortPropList(PropList:PPropList; PropCount:Integer);
begin
{*
 0041B96C    push        ebx
 0041B96D    push        esi
 0041B96E    push        edi
 0041B96F    mov         ecx,eax
 0041B971    xor         eax,eax
 0041B973    dec         edx
 0041B974    call        0041B97D
 0041B979    pop         edi
 0041B97A    pop         esi
 0041B97B    pop         ebx
 0041B97C    ret
*}
end;

//0041BA14
{*function sub_0041BA14(?:?; ?:?; ?:Pointer; ?:?):?;
begin
 0041BA14    push        ebp
 0041BA15    mov         ebp,esp
 0041BA17    add         esp,0FFFFFFDC
 0041BA1A    mov         dword ptr [ebp-0C],ecx
 0041BA1D    mov         dword ptr [ebp-8],edx
 0041BA20    mov         dword ptr [ebp-4],eax
 0041BA23    xor         eax,eax
 0041BA25    mov         dword ptr [ebp-10],eax
 0041BA28    lea         edx,[ebp-20]
 0041BA2B    mov         eax,dword ptr [ebp-4]
 0041BA2E    call        0041BAE4
 0041BA33    mov         dword ptr [ebp-18],eax
 0041BA36    cmp         dword ptr [ebp-18],0
>0041BA3A    jle         0041BADA
 0041BA40    xor         eax,eax
 0041BA42    push        ebp
 0041BA43    push        41BAD3
 0041BA48    push        dword ptr fs:[eax]
 0041BA4B    mov         dword ptr fs:[eax],esp
 0041BA4E    mov         eax,dword ptr [ebp-18]
 0041BA51    dec         eax
 0041BA52    test        eax,eax
>0041BA54    jl          0041BAA0
 0041BA56    inc         eax
 0041BA57    mov         dword ptr [ebp-24],eax
 0041BA5A    mov         dword ptr [ebp-14],0
 0041BA61    mov         eax,dword ptr [ebp-20]
 0041BA64    mov         edx,dword ptr [ebp-14]
 0041BA67    mov         eax,dword ptr [eax+edx*4]
 0041BA6A    mov         dword ptr [ebp-1C],eax
 0041BA6D    mov         eax,dword ptr [ebp-1C]
 0041BA70    mov         eax,dword ptr [eax]
 0041BA72    mov         eax,dword ptr [eax]
 0041BA74    mov         al,byte ptr [eax]
 0041BA76    cmp         al,1F
>0041BA78    ja          0041BA81
 0041BA7A    and         eax,7F
 0041BA7D    bt          dword ptr [ebp-8],eax
>0041BA81    jae         0041BA98
 0041BA83    cmp         dword ptr [ebp-0C],0
>0041BA87    je          0041BA95
 0041BA89    mov         eax,dword ptr [ebp-0C]
 0041BA8C    mov         edx,dword ptr [ebp-10]
 0041BA8F    mov         ecx,dword ptr [ebp-1C]
 0041BA92    mov         dword ptr [eax+edx*4],ecx
 0041BA95    inc         dword ptr [ebp-10]
 0041BA98    inc         dword ptr [ebp-14]
 0041BA9B    dec         dword ptr [ebp-24]
>0041BA9E    jne         0041BA61
 0041BAA0    cmp         byte ptr [ebp+8],0
>0041BAA4    je          0041BABD
 0041BAA6    cmp         dword ptr [ebp-0C],0
>0041BAAA    je          0041BABD
 0041BAAC    cmp         dword ptr [ebp-10],1
>0041BAB0    jle         0041BABD
 0041BAB2    mov         edx,dword ptr [ebp-10]
 0041BAB5    mov         eax,dword ptr [ebp-0C]
 0041BAB8    call        SortPropList
 0041BABD    xor         eax,eax
 0041BABF    pop         edx
 0041BAC0    pop         ecx
 0041BAC1    pop         ecx
 0041BAC2    mov         dword ptr fs:[eax],edx
 0041BAC5    push        41BADA
 0041BACA    mov         eax,dword ptr [ebp-20]
 0041BACD    call        @FreeMem
 0041BAD2    ret
>0041BAD3    jmp         @HandleFinally
>0041BAD8    jmp         0041BACA
 0041BADA    mov         eax,dword ptr [ebp-10]
 0041BADD    mov         esp,ebp
 0041BADF    pop         ebp
 0041BAE0    ret         4
end;*}

//0041BAE4
{*function sub_0041BAE4(?:?; ?:?):?;
begin
 0041BAE4    push        ebp
 0041BAE5    mov         ebp,esp
 0041BAE7    add         esp,0FFFFFFF4
 0041BAEA    mov         dword ptr [ebp-8],edx
 0041BAED    mov         dword ptr [ebp-4],eax
 0041BAF0    mov         eax,dword ptr [ebp-4]
 0041BAF3    call        GetTypeData
 0041BAF8    movsx       eax,word ptr [eax+8]
 0041BAFC    mov         dword ptr [ebp-0C],eax
 0041BAFF    cmp         dword ptr [ebp-0C],0
>0041BB03    jle         0041BB22
 0041BB05    mov         eax,dword ptr [ebp-0C]
 0041BB08    shl         eax,2
 0041BB0B    call        @GetMem
 0041BB10    mov         edx,dword ptr [ebp-8]
 0041BB13    mov         dword ptr [edx],eax
 0041BB15    mov         edx,dword ptr [ebp-8]
 0041BB18    mov         edx,dword ptr [edx]
 0041BB1A    mov         eax,dword ptr [ebp-4]
 0041BB1D    call        GetPropInfos
 0041BB22    mov         eax,dword ptr [ebp-0C]
 0041BB25    mov         esp,ebp
 0041BB27    pop         ebp
 0041BB28    ret
end;*}

//0041BB2C
{*function sub_0041BB2C(?:?; ?:?):?;
begin
 0041BB2C    push        ebp
 0041BB2D    mov         ebp,esp
 0041BB2F    add         esp,0FFFFFFF4
 0041BB32    mov         dword ptr [ebp-8],edx
 0041BB35    mov         dword ptr [ebp-4],eax
 0041BB38    mov         eax,dword ptr [ebp-4]
 0041BB3B    mov         eax,dword ptr [eax]
 0041BB3D    call        004044E0
 0041BB42    mov         edx,dword ptr [ebp-8]
 0041BB45    call        0041BAE4
 0041BB4A    mov         dword ptr [ebp-0C],eax
 0041BB4D    mov         eax,dword ptr [ebp-0C]
 0041BB50    mov         esp,ebp
 0041BB52    pop         ebp
 0041BB53    ret
end;*}

//0041BB54
function IsStoredProp(Instance:TObject; PropInfo:PPropInfo):Boolean;
begin
{*
 0041BB54    mov         ecx,dword ptr [edx+0C]
 0041BB57    test        ecx,0FFFFFF00
>0041BB5D    je          0041BB7E
 0041BB5F    cmp         byte ptr [edx+0F],0FE
 0041BB63    mov         edx,dword ptr [edx+10]
>0041BB66    jb          0041BB72
>0041BB68    ja          0041BB75
 0041BB6A    movsx       ecx,cx
 0041BB6D    add         ecx,dword ptr [eax]
 0041BB6F    call        dword ptr [ecx]
 0041BB71    ret
 0041BB72    call        ecx
 0041BB74    ret
 0041BB75    and         ecx,0FFFFFF
 0041BB7B    mov         cl,byte ptr [ecx+eax]
 0041BB7E    mov         al,cl
 0041BB80    ret
*}
end;

//0041BB84
function GetOrdProp(Instance:TObject; PropInfo:PPropInfo):Longint;
begin
{*
 0041BB84    push        ebx
 0041BB85    push        edi
 0041BB86    mov         edi,dword ptr [edx]
 0041BB88    mov         edi,dword ptr [edi]
 0041BB8A    mov         bl,4
 0041BB8C    cmp         byte ptr [edi],7
>0041BB8F    je          0041BB9A
 0041BB91    xor         ecx,ecx
 0041BB93    mov         cl,byte ptr [edi+1]
 0041BB96    mov         bl,byte ptr [edi+ecx+2]
 0041BB9A    mov         ecx,dword ptr [edx+4]
 0041BB9D    cmp         byte ptr [edx+7],0FE
 0041BBA1    mov         edx,dword ptr [edx+10]
>0041BBA4    jb          0041BBB1
>0041BBA6    ja          0041BBB5
 0041BBA8    movsx       ecx,cx
 0041BBAB    add         ecx,dword ptr [eax]
 0041BBAD    call        dword ptr [ecx]
>0041BBAF    jmp         0041BBCE
 0041BBB1    call        ecx
>0041BBB3    jmp         0041BBCE
 0041BBB5    and         ecx,0FFFFFF
 0041BBBB    add         ecx,eax
 0041BBBD    mov         al,byte ptr [ecx]
 0041BBBF    cmp         bl,2
>0041BBC2    jb          0041BBCE
 0041BBC4    mov         ax,word ptr [ecx]
 0041BBC7    cmp         bl,4
>0041BBCA    jb          0041BBCE
 0041BBCC    mov         eax,dword ptr [ecx]
 0041BBCE    cmp         bl,4
>0041BBD1    jae         0041BBF2
 0041BBD3    cmp         bl,2
>0041BBD6    jae         0041BBE8
 0041BBD8    cmp         bl,0
 0041BBDB    movsx       eax,al
>0041BBDE    je          0041BBF2
 0041BBE0    and         eax,0FF
 0041BBE5    pop         edi
 0041BBE6    pop         ebx
 0041BBE7    ret
 0041BBE8    movsx       eax,ax
>0041BBEB    je          0041BBF2
 0041BBED    and         eax,0FFFF
 0041BBF2    pop         edi
 0041BBF3    pop         ebx
 0041BBF4    ret
*}
end;

//0041BBF8
procedure SetOrdProp(Instance:TObject; PropInfo:PPropInfo; Value:Longint);
begin
{*
 0041BBF8    push        ebx
 0041BBF9    push        esi
 0041BBFA    push        edi
 0041BBFB    mov         edi,edx
 0041BBFD    mov         esi,dword ptr [edi]
 0041BBFF    mov         esi,dword ptr [esi]
 0041BC01    mov         bl,4
 0041BC03    cmp         byte ptr [esi],7
>0041BC06    je          0041BC11
 0041BC08    xor         ebx,ebx
 0041BC0A    mov         bl,byte ptr [esi+1]
 0041BC0D    mov         bl,byte ptr [esi+ebx+2]
 0041BC11    mov         edx,dword ptr [edi+10]
 0041BC14    cmp         edx,80000000
>0041BC1A    jne         0041BC1E
 0041BC1C    mov         edx,ecx
 0041BC1E    mov         esi,dword ptr [edi+8]
 0041BC21    cmp         byte ptr [edi+0B],0FE
>0041BC25    ja          0041BC36
>0041BC27    jb          0041BC32
 0041BC29    movsx       esi,si
 0041BC2C    add         esi,dword ptr [eax]
 0041BC2E    call        dword ptr [esi]
>0041BC30    jmp         0041BC4F
 0041BC32    call        esi
>0041BC34    jmp         0041BC4F
 0041BC36    and         esi,0FFFFFF
 0041BC3C    add         eax,esi
 0041BC3E    mov         byte ptr [eax],cl
 0041BC40    cmp         bl,2
>0041BC43    jb          0041BC4F
 0041BC45    mov         word ptr [eax],cx
 0041BC48    cmp         bl,4
>0041BC4B    jb          0041BC4F
 0041BC4D    mov         dword ptr [eax],ecx
 0041BC4F    pop         edi
 0041BC50    pop         esi
 0041BC51    pop         ebx
 0041BC52    ret
*}
end;

//0041BC54
{*procedure sub_0041BC54(?:?; ?:?; ?:?);
begin
 0041BC54    push        ebp
 0041BC55    mov         ebp,esp
 0041BC57    add         esp,0FFFFFFF4
 0041BC5A    mov         dword ptr [ebp-0C],ecx
 0041BC5D    mov         dword ptr [ebp-8],edx
 0041BC60    mov         dword ptr [ebp-4],eax
 0041BC63    mov         edx,dword ptr [ebp-8]
 0041BC66    mov         eax,dword ptr [ebp-4]
 0041BC69    call        GetOrdProp
 0041BC6E    mov         edx,eax
 0041BC70    mov         ecx,dword ptr [ebp-0C]
 0041BC73    mov         eax,dword ptr [ebp-8]
 0041BC76    mov         eax,dword ptr [eax]
 0041BC78    mov         eax,dword ptr [eax]
 0041BC7A    call        0041B678
 0041BC7F    mov         esp,ebp
 0041BC81    pop         ebp
 0041BC82    ret
end;*}

//0041BC84
{*procedure sub_0041BC84(?:?; ?:?; ?:?);
begin
 0041BC84    push        ebp
 0041BC85    mov         ebp,esp
 0041BC87    add         esp,0FFFFFFE8
 0041BC8A    mov         dword ptr [ebp-0C],ecx
 0041BC8D    mov         dword ptr [ebp-8],edx
 0041BC90    mov         dword ptr [ebp-4],eax
 0041BC93    mov         eax,dword ptr [ebp-8]
 0041BC96    mov         eax,dword ptr [eax]
 0041BC98    mov         eax,dword ptr [eax]
 0041BC9A    mov         edx,dword ptr [ebp-0C]
 0041BC9D    call        0041B7CC
 0041BCA2    mov         dword ptr [ebp-10],eax
 0041BCA5    cmp         dword ptr [ebp-10],0
>0041BCA9    jge         0041BCD2
 0041BCAB    mov         eax,dword ptr [ebp-0C]
 0041BCAE    mov         dword ptr [ebp-18],eax
 0041BCB1    mov         byte ptr [ebp-14],0B
 0041BCB5    lea         eax,[ebp-18]
 0041BCB8    push        eax
 0041BCB9    push        0
 0041BCBB    mov         ecx,dword ptr ds:[56E158];^SInvalidPropertyElement:TResStringRec
 0041BCC1    mov         dl,1
 0041BCC3    mov         eax,[0041AEC8];EPropertyConvertError
 0041BCC8    call        Exception.CreateResFmt;EPropertyConvertError.Create
 0041BCCD    call        @RaiseExcept
 0041BCD2    mov         ecx,dword ptr [ebp-10]
 0041BCD5    mov         edx,dword ptr [ebp-8]
 0041BCD8    mov         eax,dword ptr [ebp-4]
 0041BCDB    call        SetOrdProp
 0041BCE0    mov         esp,ebp
 0041BCE2    pop         ebp
 0041BCE3    ret
end;*}

//0041BCE4
{*procedure sub_0041BCE4(?:?; ?:?; ?:?; ?:?);
begin
 0041BCE4    push        ebp
 0041BCE5    mov         ebp,esp
 0041BCE7    add         esp,0FFFFFFF4
 0041BCEA    mov         byte ptr [ebp-9],cl
 0041BCED    mov         dword ptr [ebp-8],edx
 0041BCF0    mov         dword ptr [ebp-4],eax
 0041BCF3    mov         eax,dword ptr [ebp+8]
 0041BCF6    push        eax
 0041BCF7    mov         edx,dword ptr [ebp-8]
 0041BCFA    mov         eax,dword ptr [ebp-4]
 0041BCFD    call        GetOrdProp
 0041BD02    mov         edx,eax
 0041BD04    mov         cl,byte ptr [ebp-9]
 0041BD07    mov         eax,dword ptr [ebp-8]
 0041BD0A    call        0041BD18
 0041BD0F    mov         esp,ebp
 0041BD11    pop         ebp
 0041BD12    ret         4
end;*}

//0041BD18
{*procedure sub_0041BD18(?:?; ?:Longint; ?:?; ?:?);
begin
 0041BD18    push        ebp
 0041BD19    mov         ebp,esp
 0041BD1B    add         esp,0FFFFFFE4
 0041BD1E    push        ebx
 0041BD1F    xor         ebx,ebx
 0041BD21    mov         dword ptr [ebp-1C],ebx
 0041BD24    mov         byte ptr [ebp-9],cl
 0041BD27    mov         dword ptr [ebp-8],edx
 0041BD2A    mov         dword ptr [ebp-4],eax
 0041BD2D    xor         eax,eax
 0041BD2F    push        ebp
 0041BD30    push        41BDE5
 0041BD35    push        dword ptr fs:[eax]
 0041BD38    mov         dword ptr fs:[eax],esp
 0041BD3B    mov         eax,dword ptr [ebp+8]
 0041BD3E    call        @LStrClr
 0041BD43    mov         eax,dword ptr [ebp-8]
 0041BD46    mov         dword ptr [ebp-10],eax
 0041BD49    mov         eax,dword ptr [ebp-4]
 0041BD4C    mov         eax,dword ptr [eax]
 0041BD4E    mov         eax,dword ptr [eax]
 0041BD50    call        GetTypeData
 0041BD55    mov         eax,dword ptr [eax+1]
 0041BD58    mov         eax,dword ptr [eax]
 0041BD5A    mov         dword ptr [ebp-14],eax
 0041BD5D    xor         eax,eax
 0041BD5F    mov         dword ptr [ebp-18],eax
 0041BD62    mov         eax,dword ptr [ebp-18]
 0041BD65    cmp         eax,1F
>0041BD68    ja          0041BD6E
 0041BD6A    bt          dword ptr [ebp-10],eax
>0041BD6E    jae         0041BDA4
 0041BD70    mov         eax,dword ptr [ebp+8]
 0041BD73    cmp         dword ptr [eax],0
>0041BD76    je          0041BD88
 0041BD78    mov         eax,dword ptr [ebp+8]
 0041BD7B    mov         edx,41BDFC;','
 0041BD80    call        @LStrCat
 0041BD85    mov         eax,dword ptr [ebp+8]
 0041BD88    lea         ecx,[ebp-1C]
 0041BD8B    mov         edx,dword ptr [ebp-18]
 0041BD8E    mov         eax,dword ptr [ebp-14]
 0041BD91    call        0041B678
 0041BD96    mov         edx,dword ptr [ebp-1C]
 0041BD99    mov         eax,dword ptr [ebp+8]
 0041BD9C    call        @LStrCat
 0041BDA1    mov         eax,dword ptr [ebp+8]
 0041BDA4    inc         dword ptr [ebp-18]
 0041BDA7    cmp         dword ptr [ebp-18],20
>0041BDAB    jne         0041BD62
 0041BDAD    cmp         byte ptr [ebp-9],0
>0041BDB1    je          0041BDCF
 0041BDB3    push        41BE08;'['
 0041BDB8    mov         eax,dword ptr [ebp+8]
 0041BDBB    push        dword ptr [eax]
 0041BDBD    push        41BE14;']'
 0041BDC2    mov         eax,dword ptr [ebp+8]
 0041BDC5    mov         edx,3
 0041BDCA    call        @LStrCatN
 0041BDCF    xor         eax,eax
 0041BDD1    pop         edx
 0041BDD2    pop         ecx
 0041BDD3    pop         ecx
 0041BDD4    mov         dword ptr fs:[eax],edx
 0041BDD7    push        41BDEC
 0041BDDC    lea         eax,[ebp-1C]
 0041BDDF    call        @LStrClr
 0041BDE4    ret
>0041BDE5    jmp         @HandleFinally
>0041BDEA    jmp         0041BDDC
 0041BDEC    pop         ebx
 0041BDED    mov         esp,ebp
 0041BDEF    pop         ebp
 0041BDF0    ret         4
end;*}

//0041BE18
{*procedure sub_0041BE18(?:PChar; ?:?);
begin
 0041BE18    push        ebp
 0041BE19    mov         ebp,esp
 0041BE1B    add         esp,0FFFFFFF4
 0041BE1E    mov         dword ptr [ebp-8],edx
 0041BE21    mov         dword ptr [ebp-4],eax
 0041BE24    xor         eax,eax
 0041BE26    mov         dword ptr [ebp-0C],eax
>0041BE29    jmp         0041BE2E
 0041BE2B    inc         dword ptr [ebp-0C]
 0041BE2E    mov         eax,dword ptr [ebp-4]
 0041BE31    mov         eax,dword ptr [eax]
 0041BE33    mov         edx,dword ptr [ebp-0C]
 0041BE36    mov         al,byte ptr [eax+edx]
 0041BE39    test        al,al
>0041BE3B    je          0041BE49
 0041BE3D    sub         al,20
>0041BE3F    je          0041BE49
 0041BE41    sub         al,0C
>0041BE43    je          0041BE49
 0041BE45    sub         al,31
>0041BE47    jne         0041BE2B
 0041BE49    mov         edx,dword ptr [ebp-4]
 0041BE4C    mov         edx,dword ptr [edx]
 0041BE4E    mov         eax,dword ptr [ebp-8]
 0041BE51    mov         ecx,dword ptr [ebp-0C]
 0041BE54    call        @LStrFromPCharLen
>0041BE59    jmp         0041BE5E
 0041BE5B    inc         dword ptr [ebp-0C]
 0041BE5E    mov         eax,dword ptr [ebp-4]
 0041BE61    mov         eax,dword ptr [eax]
 0041BE63    mov         edx,dword ptr [ebp-0C]
 0041BE66    mov         al,byte ptr [eax+edx]
 0041BE69    sub         al,20
>0041BE6B    je          0041BE5B
 0041BE6D    sub         al,0C
>0041BE6F    je          0041BE5B
 0041BE71    sub         al,31
>0041BE73    je          0041BE5B
 0041BE75    mov         eax,dword ptr [ebp-4]
 0041BE78    mov         edx,dword ptr [ebp-0C]
 0041BE7B    add         dword ptr [eax],edx
 0041BE7D    mov         esp,ebp
 0041BE7F    pop         ebp
 0041BE80    ret
end;*}

//0041BE84
{*function sub_0041BE84(?:?; ?:?):?;
begin
 0041BE84    push        ebp
 0041BE85    mov         ebp,esp
 0041BE87    add         esp,0FFFFFFD4
 0041BE8A    xor         ecx,ecx
 0041BE8C    mov         dword ptr [ebp-2C],ecx
 0041BE8F    mov         dword ptr [ebp-20],ecx
 0041BE92    mov         dword ptr [ebp-14],ecx
 0041BE95    mov         dword ptr [ebp-8],edx
 0041BE98    mov         dword ptr [ebp-4],eax
 0041BE9B    xor         eax,eax
 0041BE9D    push        ebp
 0041BE9E    push        41BF8E
 0041BEA3    push        dword ptr fs:[eax]
 0041BEA6    mov         dword ptr fs:[eax],esp
 0041BEA9    xor         eax,eax
 0041BEAB    mov         dword ptr [ebp-0C],eax
 0041BEAE    cmp         dword ptr [ebp-8],0
>0041BEB2    je          0041BF68
 0041BEB8    mov         eax,dword ptr [ebp-8]
 0041BEBB    call        @LStrToPChar
 0041BEC0    mov         dword ptr [ebp-10],eax
>0041BEC3    jmp         0041BEC8
 0041BEC5    inc         dword ptr [ebp-10]
 0041BEC8    mov         eax,dword ptr [ebp-10]
 0041BECB    mov         al,byte ptr [eax]
 0041BECD    sub         al,20
>0041BECF    je          0041BEC5
 0041BED1    sub         al,3B
>0041BED3    je          0041BEC5
 0041BED5    mov         eax,dword ptr [ebp-4]
 0041BED8    mov         eax,dword ptr [eax]
 0041BEDA    mov         eax,dword ptr [eax]
 0041BEDC    call        GetTypeData
 0041BEE1    mov         eax,dword ptr [eax+1]
 0041BEE4    mov         eax,dword ptr [eax]
 0041BEE6    mov         dword ptr [ebp-1C],eax
 0041BEE9    push        ebp
 0041BEEA    lea         edx,[ebp-20]
 0041BEED    lea         eax,[ebp-10]
 0041BEF0    call        0041BE18
 0041BEF5    pop         ecx
 0041BEF6    mov         edx,dword ptr [ebp-20]
 0041BEF9    lea         eax,[ebp-14]
 0041BEFC    call        @LStrLAsg
>0041BF01    jmp         0041BF62
 0041BF03    mov         edx,dword ptr [ebp-14]
 0041BF06    mov         eax,dword ptr [ebp-1C]
 0041BF09    call        0041B7CC
 0041BF0E    mov         dword ptr [ebp-18],eax
 0041BF11    cmp         dword ptr [ebp-18],0
>0041BF15    jge         0041BF3E
 0041BF17    mov         eax,dword ptr [ebp-14]
 0041BF1A    mov         dword ptr [ebp-28],eax
 0041BF1D    mov         byte ptr [ebp-24],0B
 0041BF21    lea         eax,[ebp-28]
 0041BF24    push        eax
 0041BF25    push        0
 0041BF27    mov         ecx,dword ptr ds:[56E158];^SInvalidPropertyElement:TResStringRec
 0041BF2D    mov         dl,1
 0041BF2F    mov         eax,[0041AEC8];EPropertyConvertError
 0041BF34    call        Exception.CreateResFmt;EPropertyConvertError.Create
 0041BF39    call        @RaiseExcept
 0041BF3E    mov         eax,dword ptr [ebp-18]
 0041BF41    cmp         eax,1F
>0041BF44    ja          0041BF4A
 0041BF46    bts         dword ptr [ebp-0C],eax
 0041BF4A    push        ebp
 0041BF4B    lea         edx,[ebp-2C]
 0041BF4E    lea         eax,[ebp-10]
 0041BF51    call        0041BE18
 0041BF56    pop         ecx
 0041BF57    mov         edx,dword ptr [ebp-2C]
 0041BF5A    lea         eax,[ebp-14]
 0041BF5D    call        @LStrLAsg
 0041BF62    cmp         dword ptr [ebp-14],0
>0041BF66    jne         0041BF03
 0041BF68    xor         eax,eax
 0041BF6A    pop         edx
 0041BF6B    pop         ecx
 0041BF6C    pop         ecx
 0041BF6D    mov         dword ptr fs:[eax],edx
 0041BF70    push        41BF95
 0041BF75    lea         eax,[ebp-2C]
 0041BF78    call        @LStrClr
 0041BF7D    lea         eax,[ebp-20]
 0041BF80    call        @LStrClr
 0041BF85    lea         eax,[ebp-14]
 0041BF88    call        @LStrClr
 0041BF8D    ret
>0041BF8E    jmp         @HandleFinally
>0041BF93    jmp         0041BF75
 0041BF95    mov         eax,dword ptr [ebp-0C]
 0041BF98    mov         esp,ebp
 0041BF9A    pop         ebp
 0041BF9B    ret
end;*}

//0041BF9C
{*procedure sub_0041BF9C(?:?; ?:?; ?:?);
begin
 0041BF9C    push        ebp
 0041BF9D    mov         ebp,esp
 0041BF9F    add         esp,0FFFFFFF4
 0041BFA2    mov         dword ptr [ebp-0C],ecx
 0041BFA5    mov         dword ptr [ebp-8],edx
 0041BFA8    mov         dword ptr [ebp-4],eax
 0041BFAB    mov         edx,dword ptr [ebp-0C]
 0041BFAE    mov         eax,dword ptr [ebp-8]
 0041BFB1    call        0041BE84
 0041BFB6    mov         ecx,eax
 0041BFB8    mov         edx,dword ptr [ebp-8]
 0041BFBB    mov         eax,dword ptr [ebp-4]
 0041BFBE    call        SetOrdProp
 0041BFC3    mov         esp,ebp
 0041BFC5    pop         ebp
 0041BFC6    ret
end;*}

//0041BFC8
{*function sub_0041BFC8(?:?; ?:?; ?:?):?;
begin
 0041BFC8    push        ebp
 0041BFC9    mov         ebp,esp
 0041BFCB    add         esp,0FFFFFFF0
 0041BFCE    mov         dword ptr [ebp-0C],ecx
 0041BFD1    mov         dword ptr [ebp-8],edx
 0041BFD4    mov         dword ptr [ebp-4],eax
 0041BFD7    mov         edx,dword ptr [ebp-8]
 0041BFDA    mov         eax,dword ptr [ebp-4]
 0041BFDD    call        GetOrdProp
 0041BFE2    mov         dword ptr [ebp-10],eax
 0041BFE5    cmp         dword ptr [ebp-10],0
>0041BFE9    je          0041C005
 0041BFEB    cmp         dword ptr [ebp-0C],0
>0041BFEF    je          0041C005
 0041BFF1    mov         eax,dword ptr [ebp-10]
 0041BFF4    mov         edx,dword ptr [ebp-0C]
 0041BFF7    call        @IsClass
 0041BFFC    test        al,al
>0041BFFE    jne         0041C005
 0041C000    xor         eax,eax
 0041C002    mov         dword ptr [ebp-10],eax
 0041C005    mov         eax,dword ptr [ebp-10]
 0041C008    mov         esp,ebp
 0041C00A    pop         ebp
 0041C00B    ret
end;*}

//0041C00C
procedure GetShortStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:ShortString; const _Dv_:$0..-$1);
begin
{*
 0041C00C    push        ebp
 0041C00D    mov         ebp,esp
 0041C00F    push        esi
 0041C010    push        edi
 0041C011    mov         edi,edx
 0041C013    mov         edx,dword ptr [edi+10]
 0041C016    cmp         edx,80000000
>0041C01C    jne         0041C020
 0041C01E    mov         edx,ecx
 0041C020    mov         esi,dword ptr [edi+4]
 0041C023    cmp         byte ptr [edi+7],0FE
>0041C027    ja          0041C038
>0041C029    jb          0041C034
 0041C02B    movsx       esi,si
 0041C02E    add         esi,dword ptr [eax]
 0041C030    call        dword ptr [esi]
>0041C032    jmp         0041C049
 0041C034    call        esi
>0041C036    jmp         0041C049
 0041C038    and         esi,0FFFFFF
 0041C03E    add         esi,eax
 0041C040    mov         edi,ecx
 0041C042    xor         ecx,ecx
 0041C044    mov         cl,byte ptr [esi]
 0041C046    inc         ecx
 0041C047    rep movs    byte ptr [edi],byte ptr [esi]
 0041C049    pop         edi
 0041C04A    pop         esi
 0041C04B    pop         ebp
 0041C04C    ret         4
*}
end;

//0041C050
procedure SetShortStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:ShortString);
begin
{*
 0041C050    push        esi
 0041C051    push        edi
 0041C052    mov         esi,edx
 0041C054    mov         edx,dword ptr [esi+10]
 0041C057    cmp         edx,80000000
>0041C05D    jne         0041C061
 0041C05F    mov         edx,ecx
 0041C061    mov         edi,dword ptr [esi+8]
 0041C064    cmp         byte ptr [esi+0B],0FE
>0041C068    ja          0041C07B
>0041C06A    jb          0041C076
 0041C06C    movsx       edi,di
 0041C06F    add         edi,dword ptr [eax]
 0041C071    call        dword ptr [edi]
 0041C073    pop         edi
 0041C074    pop         esi
 0041C075    ret
 0041C076    call        edi
 0041C078    pop         edi
 0041C079    pop         esi
 0041C07A    ret
 0041C07B    and         edi,0FFFFFF
 0041C081    add         edi,eax
 0041C083    mov         eax,dword ptr [esi]
 0041C085    mov         eax,dword ptr [eax]
 0041C087    mov         esi,ecx
 0041C089    xor         ecx,ecx
 0041C08B    mov         cl,byte ptr [eax+1]
 0041C08E    mov         cl,byte ptr [eax+ecx+2]
 0041C092    lods        byte ptr [esi]
 0041C093    cmp         al,cl
>0041C095    jb          0041C099
 0041C097    mov         al,cl
 0041C099    stos        byte ptr [edi]
 0041C09A    mov         cl,al
 0041C09C    rep movs    byte ptr [edi],byte ptr [esi]
 0041C09E    pop         edi
 0041C09F    pop         esi
 0041C0A0    ret
*}
end;

//0041C0A4
{*procedure sub_0041C0A4(?:?; ?:?; ?:?);
begin
 0041C0A4    push        ebp
 0041C0A5    mov         ebp,esp
 0041C0A7    add         esp,0FFFFFEF4
 0041C0AD    mov         dword ptr [ebp-0C],ecx
 0041C0B0    mov         dword ptr [ebp-8],edx
 0041C0B3    mov         dword ptr [ebp-4],eax
 0041C0B6    push        0FF
 0041C0BB    lea         ecx,[ebp-10C]
 0041C0C1    mov         edx,dword ptr [ebp-8]
 0041C0C4    mov         eax,dword ptr [ebp-4]
 0041C0C7    call        GetShortStrProp
 0041C0CC    mov         eax,dword ptr [ebp-0C]
 0041C0CF    lea         edx,[ebp-10C]
 0041C0D5    call        @LStrFromString
 0041C0DA    mov         esp,ebp
 0041C0DC    pop         ebp
 0041C0DD    ret
end;*}

//0041C0E0
{*procedure sub_0041C0E0(?:?; ?:?; ?:?);
begin
 0041C0E0    push        ebp
 0041C0E1    mov         ebp,esp
 0041C0E3    add         esp,0FFFFFEF4
 0041C0E9    mov         dword ptr [ebp-0C],ecx
 0041C0EC    mov         dword ptr [ebp-8],edx
 0041C0EF    mov         dword ptr [ebp-4],eax
 0041C0F2    lea         eax,[ebp-10C]
 0041C0F8    mov         edx,dword ptr [ebp-0C]
 0041C0FB    mov         ecx,0FF
 0041C100    call        @LStrToString
 0041C105    lea         ecx,[ebp-10C]
 0041C10B    mov         edx,dword ptr [ebp-8]
 0041C10E    mov         eax,dword ptr [ebp-4]
 0041C111    call        SetShortStrProp
 0041C116    mov         esp,ebp
 0041C118    pop         ebp
 0041C119    ret
end;*}

//0041C11C
{*procedure sub_0041C11C(?:?; ?:?);
begin
 0041C11C    push        ebp
 0041C11D    mov         ebp,esp
 0041C11F    add         esp,0FFFFFFF8
 0041C122    mov         dword ptr [ebp-8],edx
 0041C125    mov         dword ptr [ebp-4],eax
 0041C128    mov         eax,dword ptr [ebp-4]
 0041C12B    mov         edx,dword ptr [ebp-8]
 0041C12E    call        @LStrAsg
 0041C133    pop         ecx
 0041C134    pop         ecx
 0041C135    pop         ebp
 0041C136    ret
end;*}

//0041C138
procedure GetLongStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);
begin
{*
 0041C138    push        esi
 0041C139    push        edi
 0041C13A    mov         edi,edx
 0041C13C    mov         edx,dword ptr [edi+10]
 0041C13F    cmp         edx,80000000
>0041C145    jne         0041C149
 0041C147    mov         edx,ecx
 0041C149    mov         esi,dword ptr [edi+4]
 0041C14C    cmp         byte ptr [edi+7],0FE
>0041C150    ja          0041C163
>0041C152    jb          0041C15E
 0041C154    movsx       esi,si
 0041C157    add         esi,dword ptr [eax]
 0041C159    call        dword ptr [esi]
 0041C15B    pop         edi
 0041C15C    pop         esi
 0041C15D    ret
 0041C15E    call        esi
 0041C160    pop         edi
 0041C161    pop         esi
 0041C162    ret
 0041C163    and         esi,0FFFFFF
 0041C169    mov         edx,dword ptr [esi+eax]
 0041C16C    mov         eax,ecx
 0041C16E    call        0041C11C
 0041C173    pop         edi
 0041C174    pop         esi
 0041C175    ret
*}
end;

//0041C178
procedure SetLongStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);
begin
{*
 0041C178    push        esi
 0041C179    push        edi
 0041C17A    mov         esi,edx
 0041C17C    mov         edx,dword ptr [esi+10]
 0041C17F    cmp         edx,80000000
>0041C185    jne         0041C189
 0041C187    mov         edx,ecx
 0041C189    mov         edi,dword ptr [esi+8]
 0041C18C    cmp         byte ptr [esi+0B],0FE
>0041C190    ja          0041C1A3
>0041C192    jb          0041C19E
 0041C194    movsx       edi,di
 0041C197    add         edi,dword ptr [eax]
 0041C199    call        dword ptr [edi]
 0041C19B    pop         edi
 0041C19C    pop         esi
 0041C19D    ret
 0041C19E    call        edi
 0041C1A0    pop         edi
 0041C1A1    pop         esi
 0041C1A2    ret
 0041C1A3    and         edi,0FFFFFF
 0041C1A9    add         eax,edi
 0041C1AB    mov         edx,ecx
 0041C1AD    call        0041C11C
 0041C1B2    pop         edi
 0041C1B3    pop         esi
 0041C1B4    ret
*}
end;

//0041C1B8
{*procedure sub_0041C1B8(?:?; ?:?; ?:?);
begin
 0041C1B8    push        ebp
 0041C1B9    mov         ebp,esp
 0041C1BB    add         esp,0FFFFFFF0
 0041C1BE    push        ebx
 0041C1BF    xor         ebx,ebx
 0041C1C1    mov         dword ptr [ebp-10],ebx
 0041C1C4    mov         dword ptr [ebp-0C],ecx
 0041C1C7    mov         dword ptr [ebp-8],edx
 0041C1CA    mov         dword ptr [ebp-4],eax
 0041C1CD    xor         eax,eax
 0041C1CF    push        ebp
 0041C1D0    push        41C20A
 0041C1D5    push        dword ptr fs:[eax]
 0041C1D8    mov         dword ptr fs:[eax],esp
 0041C1DB    lea         ecx,[ebp-10]
 0041C1DE    mov         edx,dword ptr [ebp-8]
 0041C1E1    mov         eax,dword ptr [ebp-4]
 0041C1E4    call        GetWideStrProp
 0041C1E9    mov         edx,dword ptr [ebp-10]
 0041C1EC    mov         eax,dword ptr [ebp-0C]
 0041C1EF    call        @LStrFromWStr
 0041C1F4    xor         eax,eax
 0041C1F6    pop         edx
 0041C1F7    pop         ecx
 0041C1F8    pop         ecx
 0041C1F9    mov         dword ptr fs:[eax],edx
 0041C1FC    push        41C211
 0041C201    lea         eax,[ebp-10]
 0041C204    call        @WStrClr
 0041C209    ret
>0041C20A    jmp         @HandleFinally
>0041C20F    jmp         0041C201
 0041C211    pop         ebx
 0041C212    mov         esp,ebp
 0041C214    pop         ebp
 0041C215    ret
end;*}

//0041C218
{*procedure sub_0041C218(?:?; ?:?; ?:?);
begin
 0041C218    push        ebp
 0041C219    mov         ebp,esp
 0041C21B    add         esp,0FFFFFFF0
 0041C21E    push        ebx
 0041C21F    xor         ebx,ebx
 0041C221    mov         dword ptr [ebp-10],ebx
 0041C224    mov         dword ptr [ebp-0C],ecx
 0041C227    mov         dword ptr [ebp-8],edx
 0041C22A    mov         dword ptr [ebp-4],eax
 0041C22D    xor         eax,eax
 0041C22F    push        ebp
 0041C230    push        41C26A
 0041C235    push        dword ptr fs:[eax]
 0041C238    mov         dword ptr fs:[eax],esp
 0041C23B    lea         eax,[ebp-10]
 0041C23E    mov         edx,dword ptr [ebp-0C]
 0041C241    call        @WStrFromLStr
 0041C246    mov         ecx,dword ptr [ebp-10]
 0041C249    mov         edx,dword ptr [ebp-8]
 0041C24C    mov         eax,dword ptr [ebp-4]
 0041C24F    call        0041C444
 0041C254    xor         eax,eax
 0041C256    pop         edx
 0041C257    pop         ecx
 0041C258    pop         ecx
 0041C259    mov         dword ptr fs:[eax],edx
 0041C25C    push        41C271
 0041C261    lea         eax,[ebp-10]
 0041C264    call        @WStrClr
 0041C269    ret
>0041C26A    jmp         @HandleFinally
>0041C26F    jmp         0041C261
 0041C271    pop         ebx
 0041C272    mov         esp,ebp
 0041C274    pop         ebp
 0041C275    ret
end;*}

//0041C278
{*procedure sub_0041C278(?:?; ?:?; ?:?);
begin
 0041C278    push        ebp
 0041C279    mov         ebp,esp
 0041C27B    add         esp,0FFFFFFF4
 0041C27E    mov         dword ptr [ebp-0C],ecx
 0041C281    mov         dword ptr [ebp-8],edx
 0041C284    mov         dword ptr [ebp-4],eax
 0041C287    mov         eax,dword ptr [ebp-8]
 0041C28A    mov         eax,dword ptr [eax]
 0041C28C    mov         eax,dword ptr [eax]
 0041C28E    mov         al,byte ptr [eax]
 0041C290    sub         al,5
>0041C292    je          0041C29E
 0041C294    sub         al,5
>0041C296    je          0041C2AE
 0041C298    dec         al
>0041C29A    je          0041C2BE
>0041C29C    jmp         0041C2CE
 0041C29E    mov         ecx,dword ptr [ebp-0C]
 0041C2A1    mov         edx,dword ptr [ebp-8]
 0041C2A4    mov         eax,dword ptr [ebp-4]
 0041C2A7    call        0041C0A4
>0041C2AC    jmp         0041C2D6
 0041C2AE    mov         ecx,dword ptr [ebp-0C]
 0041C2B1    mov         edx,dword ptr [ebp-8]
 0041C2B4    mov         eax,dword ptr [ebp-4]
 0041C2B7    call        GetLongStrProp
>0041C2BC    jmp         0041C2D6
 0041C2BE    mov         ecx,dword ptr [ebp-0C]
 0041C2C1    mov         edx,dword ptr [ebp-8]
 0041C2C4    mov         eax,dword ptr [ebp-4]
 0041C2C7    call        0041C1B8
>0041C2CC    jmp         0041C2D6
 0041C2CE    mov         eax,dword ptr [ebp-0C]
 0041C2D1    call        @LStrClr
 0041C2D6    mov         esp,ebp
 0041C2D8    pop         ebp
 0041C2D9    ret
end;*}

//0041C2DC
procedure sub_0041C2DC(?:Longint; ?:PPropInfo; ?:AnsiString);
begin
{*
 0041C2DC    push        ebp
 0041C2DD    mov         ebp,esp
 0041C2DF    add         esp,0FFFFFFF4
 0041C2E2    mov         dword ptr [ebp-0C],ecx
 0041C2E5    mov         dword ptr [ebp-8],edx
 0041C2E8    mov         dword ptr [ebp-4],eax
 0041C2EB    mov         eax,dword ptr [ebp-8]
 0041C2EE    mov         eax,dword ptr [eax]
 0041C2F0    mov         eax,dword ptr [eax]
 0041C2F2    mov         al,byte ptr [eax]
 0041C2F4    sub         al,5
>0041C2F6    je          0041C302
 0041C2F8    sub         al,5
>0041C2FA    je          0041C312
 0041C2FC    dec         al
>0041C2FE    je          0041C322
>0041C300    jmp         0041C330
 0041C302    mov         ecx,dword ptr [ebp-0C]
 0041C305    mov         edx,dword ptr [ebp-8]
 0041C308    mov         eax,dword ptr [ebp-4]
 0041C30B    call        0041C0E0
>0041C310    jmp         0041C330
 0041C312    mov         ecx,dword ptr [ebp-0C]
 0041C315    mov         edx,dword ptr [ebp-8]
 0041C318    mov         eax,dword ptr [ebp-4]
 0041C31B    call        SetLongStrProp
>0041C320    jmp         0041C330
 0041C322    mov         ecx,dword ptr [ebp-0C]
 0041C325    mov         edx,dword ptr [ebp-8]
 0041C328    mov         eax,dword ptr [ebp-4]
 0041C32B    call        0041C218
 0041C330    mov         esp,ebp
 0041C332    pop         ebp
 0041C333    ret
*}
end;

//0041C334
function GetWideStrProp(Instance:TObject; PropInfo:PPropInfo):WideString;
begin
{*
 0041C334    push        ebp
 0041C335    mov         ebp,esp
 0041C337    add         esp,0FFFFFFE0
 0041C33A    push        ebx
 0041C33B    xor         ebx,ebx
 0041C33D    mov         dword ptr [ebp-20],ebx
 0041C340    mov         dword ptr [ebp-0C],ecx
 0041C343    mov         dword ptr [ebp-8],edx
 0041C346    mov         dword ptr [ebp-4],eax
 0041C349    xor         eax,eax
 0041C34B    push        ebp
 0041C34C    push        41C437
 0041C351    push        dword ptr fs:[eax]
 0041C354    mov         dword ptr fs:[eax],esp
 0041C357    mov         eax,dword ptr [ebp-8]
 0041C35A    mov         eax,dword ptr [eax]
 0041C35C    mov         eax,dword ptr [eax]
 0041C35E    mov         al,byte ptr [eax]
 0041C360    sub         al,5
>0041C362    je          0041C371
 0041C364    sub         al,5
>0041C366    je          0041C371
 0041C368    dec         al
>0041C36A    je          0041C38F
>0041C36C    jmp         0041C419
 0041C371    lea         ecx,[ebp-20]
 0041C374    mov         edx,dword ptr [ebp-8]
 0041C377    mov         eax,dword ptr [ebp-4]
 0041C37A    call        0041C278
 0041C37F    mov         edx,dword ptr [ebp-20]
 0041C382    mov         eax,dword ptr [ebp-0C]
 0041C385    call        @WStrFromLStr
>0041C38A    jmp         0041C421
 0041C38F    mov         eax,dword ptr [ebp-8]
 0041C392    mov         eax,dword ptr [eax+4]
 0041C395    mov         dword ptr [ebp-1C],eax
 0041C398    mov         eax,dword ptr [ebp-1C]
 0041C39B    and         eax,0FF000000
 0041C3A0    cmp         eax,0FF000000
>0041C3A5    jne         0041C3C4
 0041C3A7    mov         eax,dword ptr [ebp-1C]
 0041C3AA    and         eax,0FFFFFF
 0041C3AF    add         eax,dword ptr [ebp-4]
 0041C3B2    mov         dword ptr [ebp-10],eax
 0041C3B5    mov         eax,dword ptr [ebp-0C]
 0041C3B8    mov         edx,dword ptr [ebp-10]
 0041C3BB    mov         edx,dword ptr [edx]
 0041C3BD    call        @WStrAsg
>0041C3C2    jmp         0041C421
 0041C3C4    mov         eax,dword ptr [ebp-1C]
 0041C3C7    and         eax,0FF000000
 0041C3CC    cmp         eax,0FE000000
>0041C3D1    jne         0041C3E5
 0041C3D3    mov         eax,dword ptr [ebp-4]
 0041C3D6    mov         eax,dword ptr [eax]
 0041C3D8    movsx       edx,word ptr [ebp-1C]
 0041C3DC    add         eax,edx
 0041C3DE    mov         eax,dword ptr [eax]
 0041C3E0    mov         dword ptr [ebp-18],eax
>0041C3E3    jmp         0041C3EB
 0041C3E5    mov         eax,dword ptr [ebp-1C]
 0041C3E8    mov         dword ptr [ebp-18],eax
 0041C3EB    mov         eax,dword ptr [ebp-4]
 0041C3EE    mov         dword ptr [ebp-14],eax
 0041C3F1    mov         eax,dword ptr [ebp-8]
 0041C3F4    cmp         dword ptr [eax+10],80000000
>0041C3FB    jne         0041C408
 0041C3FD    mov         edx,dword ptr [ebp-0C]
 0041C400    mov         eax,dword ptr [ebp-14]
 0041C403    call        dword ptr [ebp-18]
>0041C406    jmp         0041C421
 0041C408    mov         ecx,dword ptr [ebp-0C]
 0041C40B    mov         eax,dword ptr [ebp-8]
 0041C40E    mov         edx,dword ptr [eax+10]
 0041C411    mov         eax,dword ptr [ebp-14]
 0041C414    call        dword ptr [ebp-18]
>0041C417    jmp         0041C421
 0041C419    mov         eax,dword ptr [ebp-0C]
 0041C41C    call        @WStrClr
 0041C421    xor         eax,eax
 0041C423    pop         edx
 0041C424    pop         ecx
 0041C425    pop         ecx
 0041C426    mov         dword ptr fs:[eax],edx
 0041C429    push        41C43E
 0041C42E    lea         eax,[ebp-20]
 0041C431    call        @LStrClr
 0041C436    ret
>0041C437    jmp         @HandleFinally
>0041C43C    jmp         0041C42E
 0041C43E    pop         ebx
 0041C43F    mov         esp,ebp
 0041C441    pop         ebp
 0041C442    ret
*}
end;

//0041C444
procedure sub_0041C444(?:Longint; ?:PPropInfo; ?:WideString);
begin
{*
 0041C444    push        ebp
 0041C445    mov         ebp,esp
 0041C447    add         esp,0FFFFFFE0
 0041C44A    push        ebx
 0041C44B    xor         ebx,ebx
 0041C44D    mov         dword ptr [ebp-20],ebx
 0041C450    mov         dword ptr [ebp-0C],ecx
 0041C453    mov         dword ptr [ebp-8],edx
 0041C456    mov         dword ptr [ebp-4],eax
 0041C459    xor         eax,eax
 0041C45B    push        ebp
 0041C45C    push        41C53B
 0041C461    push        dword ptr fs:[eax]
 0041C464    mov         dword ptr fs:[eax],esp
 0041C467    mov         eax,dword ptr [ebp-8]
 0041C46A    mov         eax,dword ptr [eax]
 0041C46C    mov         eax,dword ptr [eax]
 0041C46E    mov         al,byte ptr [eax]
 0041C470    sub         al,5
>0041C472    je          0041C481
 0041C474    sub         al,5
>0041C476    je          0041C481
 0041C478    dec         al
>0041C47A    je          0041C49F
>0041C47C    jmp         0041C525
 0041C481    lea         eax,[ebp-20]
 0041C484    mov         edx,dword ptr [ebp-0C]
 0041C487    call        @LStrFromWStr
 0041C48C    mov         ecx,dword ptr [ebp-20]
 0041C48F    mov         edx,dword ptr [ebp-8]
 0041C492    mov         eax,dword ptr [ebp-4]
 0041C495    call        0041C2DC
>0041C49A    jmp         0041C525
 0041C49F    mov         eax,dword ptr [ebp-8]
 0041C4A2    mov         eax,dword ptr [eax+8]
 0041C4A5    mov         dword ptr [ebp-1C],eax
 0041C4A8    mov         eax,dword ptr [ebp-1C]
 0041C4AB    and         eax,0FF000000
 0041C4B0    cmp         eax,0FF000000
>0041C4B5    jne         0041C4D2
 0041C4B7    mov         eax,dword ptr [ebp-1C]
 0041C4BA    and         eax,0FFFFFF
 0041C4BF    add         eax,dword ptr [ebp-4]
 0041C4C2    mov         dword ptr [ebp-10],eax
 0041C4C5    mov         eax,dword ptr [ebp-10]
 0041C4C8    mov         edx,dword ptr [ebp-0C]
 0041C4CB    call        @WStrAsg
>0041C4D0    jmp         0041C525
 0041C4D2    mov         eax,dword ptr [ebp-1C]
 0041C4D5    and         eax,0FF000000
 0041C4DA    cmp         eax,0FE000000
>0041C4DF    jne         0041C4F3
 0041C4E1    mov         eax,dword ptr [ebp-4]
 0041C4E4    mov         eax,dword ptr [eax]
 0041C4E6    movsx       edx,word ptr [ebp-1C]
 0041C4EA    add         eax,edx
 0041C4EC    mov         eax,dword ptr [eax]
 0041C4EE    mov         dword ptr [ebp-18],eax
>0041C4F1    jmp         0041C4F9
 0041C4F3    mov         eax,dword ptr [ebp-1C]
 0041C4F6    mov         dword ptr [ebp-18],eax
 0041C4F9    mov         eax,dword ptr [ebp-4]
 0041C4FC    mov         dword ptr [ebp-14],eax
 0041C4FF    mov         eax,dword ptr [ebp-8]
 0041C502    cmp         dword ptr [eax+10],80000000
>0041C509    jne         0041C516
 0041C50B    mov         edx,dword ptr [ebp-0C]
 0041C50E    mov         eax,dword ptr [ebp-14]
 0041C511    call        dword ptr [ebp-18]
>0041C514    jmp         0041C525
 0041C516    mov         ecx,dword ptr [ebp-0C]
 0041C519    mov         eax,dword ptr [ebp-8]
 0041C51C    mov         edx,dword ptr [eax+10]
 0041C51F    mov         eax,dword ptr [ebp-14]
 0041C522    call        dword ptr [ebp-18]
 0041C525    xor         eax,eax
 0041C527    pop         edx
 0041C528    pop         ecx
 0041C529    pop         ecx
 0041C52A    mov         dword ptr fs:[eax],edx
 0041C52D    push        41C542
 0041C532    lea         eax,[ebp-20]
 0041C535    call        @LStrClr
 0041C53A    ret
>0041C53B    jmp         @HandleFinally
>0041C540    jmp         0041C532
 0041C542    pop         ebx
 0041C543    mov         esp,ebp
 0041C545    pop         ebp
 0041C546    ret
*}
end;

//0041C548
function GetFloatProp(Instance:TObject; const PropName:AnsiString):Extended;
begin
{*
 0041C548    push        ebp
 0041C549    mov         ebp,esp
 0041C54B    add         esp,0FFFFFFD8
 0041C54E    mov         dword ptr [ebp-8],edx
 0041C551    mov         dword ptr [ebp-4],eax
 0041C554    mov         eax,dword ptr [ebp-8]
 0041C557    mov         eax,dword ptr [eax+4]
 0041C55A    mov         dword ptr [ebp-28],eax
 0041C55D    mov         eax,dword ptr [ebp-28]
 0041C560    and         eax,0FF000000
 0041C565    cmp         eax,0FF000000
>0041C56A    jne         0041C614
 0041C570    mov         eax,dword ptr [ebp-28]
 0041C573    and         eax,0FFFFFF
 0041C578    add         eax,dword ptr [ebp-4]
 0041C57B    mov         dword ptr [ebp-1C],eax
 0041C57E    mov         eax,dword ptr [ebp-8]
 0041C581    mov         eax,dword ptr [eax]
 0041C583    mov         eax,dword ptr [eax]
 0041C585    call        GetTypeData
 0041C58A    movzx       eax,byte ptr [eax]
 0041C58D    cmp         eax,4
>0041C590    ja          0041C606
 0041C592    jmp         dword ptr [eax*4+41C599]
 0041C592    dd          0041C5AD
 0041C592    dd          0041C5BB
 0041C592    dd          0041C5C9
 0041C592    dd          0041C5E4
 0041C592    dd          0041C5F2
 0041C5AD    mov         eax,dword ptr [ebp-1C]
 0041C5B0    fld         dword ptr [eax]
 0041C5B2    fstp        tbyte ptr [ebp-18]
 0041C5B5    wait
>0041C5B6    jmp         0041C687
 0041C5BB    mov         eax,dword ptr [ebp-1C]
 0041C5BE    fld         qword ptr [eax]
 0041C5C0    fstp        tbyte ptr [ebp-18]
 0041C5C3    wait
>0041C5C4    jmp         0041C687
 0041C5C9    mov         eax,dword ptr [ebp-1C]
 0041C5CC    mov         edx,dword ptr [eax]
 0041C5CE    mov         dword ptr [ebp-18],edx
 0041C5D1    mov         edx,dword ptr [eax+4]
 0041C5D4    mov         dword ptr [ebp-14],edx
 0041C5D7    mov         dx,word ptr [eax+8]
 0041C5DB    mov         word ptr [ebp-10],dx
>0041C5DF    jmp         0041C687
 0041C5E4    mov         eax,dword ptr [ebp-1C]
 0041C5E7    fild        qword ptr [eax]
 0041C5E9    fstp        tbyte ptr [ebp-18]
 0041C5EC    wait
>0041C5ED    jmp         0041C687
 0041C5F2    mov         eax,dword ptr [ebp-1C]
 0041C5F5    fild        qword ptr [eax]
 0041C5F7    fdiv        dword ptr ds:[41C690]
 0041C5FD    fstp        tbyte ptr [ebp-18]
 0041C600    wait
>0041C601    jmp         0041C687
 0041C606    xor         eax,eax
 0041C608    mov         dword ptr [ebp-18],eax
 0041C60B    mov         dword ptr [ebp-14],eax
 0041C60E    mov         word ptr [ebp-10],ax
>0041C612    jmp         0041C687
 0041C614    mov         eax,dword ptr [ebp-28]
 0041C617    and         eax,0FF000000
 0041C61C    cmp         eax,0FE000000
>0041C621    jne         0041C635
 0041C623    mov         eax,dword ptr [ebp-4]
 0041C626    mov         eax,dword ptr [eax]
 0041C628    movsx       edx,word ptr [ebp-28]
 0041C62C    add         eax,edx
 0041C62E    mov         eax,dword ptr [eax]
 0041C630    mov         dword ptr [ebp-24],eax
>0041C633    jmp         0041C63B
 0041C635    mov         eax,dword ptr [ebp-28]
 0041C638    mov         dword ptr [ebp-24],eax
 0041C63B    mov         eax,dword ptr [ebp-4]
 0041C63E    mov         dword ptr [ebp-20],eax
 0041C641    mov         eax,dword ptr [ebp-8]
 0041C644    cmp         dword ptr [eax+10],80000000
>0041C64B    jne         0041C659
 0041C64D    mov         eax,dword ptr [ebp-20]
 0041C650    call        dword ptr [ebp-24]
 0041C653    fstp        tbyte ptr [ebp-18]
 0041C656    wait
>0041C657    jmp         0041C669
 0041C659    mov         eax,dword ptr [ebp-8]
 0041C65C    mov         edx,dword ptr [eax+10]
 0041C65F    mov         eax,dword ptr [ebp-20]
 0041C662    call        dword ptr [ebp-24]
 0041C665    fstp        tbyte ptr [ebp-18]
 0041C668    wait
 0041C669    mov         eax,dword ptr [ebp-8]
 0041C66C    mov         eax,dword ptr [eax]
 0041C66E    mov         eax,dword ptr [eax]
 0041C670    call        GetTypeData
 0041C675    cmp         byte ptr [eax],4
>0041C678    jne         0041C687
 0041C67A    fld         tbyte ptr [ebp-18]
 0041C67D    fdiv        dword ptr ds:[41C690]
 0041C683    fstp        tbyte ptr [ebp-18]
 0041C686    wait
 0041C687    fld         tbyte ptr [ebp-18]
 0041C68A    mov         esp,ebp
 0041C68C    pop         ebp
 0041C68D    ret
*}
end;

//0041C694
{*procedure sub_0041C694(?:Longint; ?:PPropInfo; ?:Extended; ?:?; ?:?);
begin
 0041C694    push        ebp
 0041C695    mov         ebp,esp
 0041C697    add         esp,0FFFFFFE4
 0041C69A    mov         dword ptr [ebp-8],edx
 0041C69D    mov         dword ptr [ebp-4],eax
 0041C6A0    mov         eax,dword ptr [ebp-8]
 0041C6A3    mov         eax,dword ptr [eax+8]
 0041C6A6    mov         dword ptr [ebp-18],eax
 0041C6A9    mov         eax,dword ptr [ebp-8]
 0041C6AC    mov         eax,dword ptr [eax]
 0041C6AE    mov         eax,dword ptr [eax]
 0041C6B0    call        GetTypeData
 0041C6B5    mov         al,byte ptr [eax]
 0041C6B7    mov         byte ptr [ebp-19],al
 0041C6BA    mov         eax,dword ptr [ebp-18]
 0041C6BD    and         eax,0FF000000
 0041C6C2    cmp         eax,0FF000000
>0041C6C7    jne         0041C75D
 0041C6CD    mov         eax,dword ptr [ebp-18]
 0041C6D0    and         eax,0FFFFFF
 0041C6D5    add         eax,dword ptr [ebp-4]
 0041C6D8    mov         dword ptr [ebp-0C],eax
 0041C6DB    xor         eax,eax
 0041C6DD    mov         al,byte ptr [ebp-19]
 0041C6E0    cmp         eax,4
>0041C6E3    ja          0041C8D9
 0041C6E9    jmp         dword ptr [eax*4+41C6F0]
 0041C6E9    dd          0041C704
 0041C6E9    dd          0041C712
 0041C6E9    dd          0041C720
 0041C6E9    dd          0041C73B
 0041C6E9    dd          0041C749
 0041C704    fld         tbyte ptr [ebp+8]
 0041C707    mov         eax,dword ptr [ebp-0C]
 0041C70A    fstp        dword ptr [eax]
 0041C70C    wait
>0041C70D    jmp         0041C8D9
 0041C712    fld         tbyte ptr [ebp+8]
 0041C715    mov         eax,dword ptr [ebp-0C]
 0041C718    fstp        qword ptr [eax]
 0041C71A    wait
>0041C71B    jmp         0041C8D9
 0041C720    mov         eax,dword ptr [ebp-0C]
 0041C723    mov         edx,dword ptr [ebp+8]
 0041C726    mov         dword ptr [eax],edx
 0041C728    mov         edx,dword ptr [ebp+0C]
 0041C72B    mov         dword ptr [eax+4],edx
 0041C72E    mov         dx,word ptr [ebp+10]
 0041C732    mov         word ptr [eax+8],dx
>0041C736    jmp         0041C8D9
 0041C73B    fld         tbyte ptr [ebp+8]
 0041C73E    mov         eax,dword ptr [ebp-0C]
 0041C741    fistp       qword ptr [eax]
 0041C743    wait
>0041C744    jmp         0041C8D9
 0041C749    fld         tbyte ptr [ebp+8]
 0041C74C    fmul        dword ptr ds:[41C8E0];10000:Single
 0041C752    mov         eax,dword ptr [ebp-0C]
 0041C755    fistp       qword ptr [eax]
 0041C757    wait
>0041C758    jmp         0041C8D9
 0041C75D    mov         eax,dword ptr [ebp-18]
 0041C760    and         eax,0FF000000
 0041C765    cmp         eax,0FE000000
>0041C76A    jne         0041C77E
 0041C76C    mov         eax,dword ptr [ebp-4]
 0041C76F    mov         eax,dword ptr [eax]
 0041C771    movsx       edx,word ptr [ebp-18]
 0041C775    add         eax,edx
 0041C777    mov         eax,dword ptr [eax]
 0041C779    mov         dword ptr [ebp-14],eax
>0041C77C    jmp         0041C784
 0041C77E    mov         eax,dword ptr [ebp-18]
 0041C781    mov         dword ptr [ebp-14],eax
 0041C784    mov         eax,dword ptr [ebp-4]
 0041C787    mov         dword ptr [ebp-10],eax
 0041C78A    mov         eax,dword ptr [ebp-8]
 0041C78D    cmp         dword ptr [eax+10],80000000
>0041C794    jne         0041C833
 0041C79A    xor         eax,eax
 0041C79C    mov         al,byte ptr [ebp-19]
 0041C79F    cmp         eax,4
>0041C7A2    ja          0041C8D9
 0041C7A8    jmp         dword ptr [eax*4+41C7AF]
 0041C7A8    dd          0041C7C3
 0041C7A8    dd          0041C7D8
 0041C7A8    dd          0041C7ED
 0041C7A8    dd          0041C803
 0041C7A8    dd          0041C818
 0041C7C3    fld         tbyte ptr [ebp+8]
 0041C7C6    add         esp,0FFFFFFFC
 0041C7C9    fstp        dword ptr [esp]
 0041C7CC    wait
 0041C7CD    mov         eax,dword ptr [ebp-10]
 0041C7D0    call        dword ptr [ebp-14]
>0041C7D3    jmp         0041C8D9
 0041C7D8    fld         tbyte ptr [ebp+8]
 0041C7DB    add         esp,0FFFFFFF8
 0041C7DE    fstp        qword ptr [esp]
 0041C7E1    wait
 0041C7E2    mov         eax,dword ptr [ebp-10]
 0041C7E5    call        dword ptr [ebp-14]
>0041C7E8    jmp         0041C8D9
 0041C7ED    mov         ax,word ptr [ebp+10]
 0041C7F1    push        eax
 0041C7F2    push        dword ptr [ebp+0C]
 0041C7F5    push        dword ptr [ebp+8]
 0041C7F8    mov         eax,dword ptr [ebp-10]
 0041C7FB    call        dword ptr [ebp-14]
>0041C7FE    jmp         0041C8D9
 0041C803    fld         tbyte ptr [ebp+8]
 0041C806    add         esp,0FFFFFFF8
 0041C809    fistp       qword ptr [esp]
 0041C80C    wait
 0041C80D    mov         eax,dword ptr [ebp-10]
 0041C810    call        dword ptr [ebp-14]
>0041C813    jmp         0041C8D9
 0041C818    fld         tbyte ptr [ebp+8]
 0041C81B    fmul        dword ptr ds:[41C8E0];10000:Single
 0041C821    add         esp,0FFFFFFF8
 0041C824    fistp       qword ptr [esp]
 0041C827    wait
 0041C828    mov         eax,dword ptr [ebp-10]
 0041C82B    call        dword ptr [ebp-14]
>0041C82E    jmp         0041C8D9
 0041C833    xor         eax,eax
 0041C835    mov         al,byte ptr [ebp-19]
 0041C838    cmp         eax,4
>0041C83B    ja          0041C8D9
 0041C841    jmp         dword ptr [eax*4+41C848]
 0041C841    dd          0041C85C
 0041C841    dd          0041C874
 0041C841    dd          0041C88C
 0041C841    dd          0041C8A5
 0041C841    dd          0041C8BD
 0041C85C    fld         tbyte ptr [ebp+8]
 0041C85F    add         esp,0FFFFFFFC
 0041C862    fstp        dword ptr [esp]
 0041C865    wait
 0041C866    mov         eax,dword ptr [ebp-8]
 0041C869    mov         edx,dword ptr [eax+10]
 0041C86C    mov         eax,dword ptr [ebp-10]
 0041C86F    call        dword ptr [ebp-14]
>0041C872    jmp         0041C8D9
 0041C874    fld         tbyte ptr [ebp+8]
 0041C877    add         esp,0FFFFFFF8
 0041C87A    fstp        qword ptr [esp]
 0041C87D    wait
 0041C87E    mov         eax,dword ptr [ebp-8]
 0041C881    mov         edx,dword ptr [eax+10]
 0041C884    mov         eax,dword ptr [ebp-10]
 0041C887    call        dword ptr [ebp-14]
>0041C88A    jmp         0041C8D9
 0041C88C    mov         ax,word ptr [ebp+10]
 0041C890    push        eax
 0041C891    push        dword ptr [ebp+0C]
 0041C894    push        dword ptr [ebp+8]
 0041C897    mov         eax,dword ptr [ebp-8]
 0041C89A    mov         edx,dword ptr [eax+10]
 0041C89D    mov         eax,dword ptr [ebp-10]
 0041C8A0    call        dword ptr [ebp-14]
>0041C8A3    jmp         0041C8D9
 0041C8A5    fld         tbyte ptr [ebp+8]
 0041C8A8    add         esp,0FFFFFFF8
 0041C8AB    fistp       qword ptr [esp]
 0041C8AE    wait
 0041C8AF    mov         eax,dword ptr [ebp-8]
 0041C8B2    mov         edx,dword ptr [eax+10]
 0041C8B5    mov         eax,dword ptr [ebp-10]
 0041C8B8    call        dword ptr [ebp-14]
>0041C8BB    jmp         0041C8D9
 0041C8BD    fld         tbyte ptr [ebp+8]
 0041C8C0    fmul        dword ptr ds:[41C8E0];10000:Single
 0041C8C6    add         esp,0FFFFFFF8
 0041C8C9    fistp       qword ptr [esp]
 0041C8CC    wait
 0041C8CD    mov         eax,dword ptr [ebp-8]
 0041C8D0    mov         edx,dword ptr [eax+10]
 0041C8D3    mov         eax,dword ptr [ebp-10]
 0041C8D6    call        dword ptr [ebp-14]
 0041C8D9    mov         esp,ebp
 0041C8DB    pop         ebp
 0041C8DC    ret         0C
end;*}

//0041C8E4
procedure AssignVariant(var Dest:Variant; const Source:Variant);
begin
{*
 0041C8E4    push        ebp
 0041C8E5    mov         ebp,esp
 0041C8E7    add         esp,0FFFFFFF8
 0041C8EA    mov         dword ptr [ebp-8],edx
 0041C8ED    mov         dword ptr [ebp-4],eax
 0041C8F0    mov         eax,dword ptr [ebp-4]
 0041C8F3    mov         edx,dword ptr [ebp-8]
 0041C8F6    call        @VarCopy
 0041C8FB    pop         ecx
 0041C8FC    pop         ecx
 0041C8FD    pop         ebp
 0041C8FE    ret
*}
end;

//0041C900
function GetVariantProp(Instance:TObject; PropInfo:PPropInfo):Variant;
begin
{*
 0041C900    push        esi
 0041C901    push        edi
 0041C902    mov         edi,edx
 0041C904    mov         edx,dword ptr [edi+10]
 0041C907    cmp         edx,80000000
>0041C90D    jne         0041C911
 0041C90F    mov         edx,ecx
 0041C911    mov         esi,dword ptr [edi+4]
 0041C914    cmp         byte ptr [edi+7],0FE
>0041C918    ja          0041C92B
>0041C91A    jb          0041C926
 0041C91C    movsx       esi,si
 0041C91F    add         esi,dword ptr [eax]
 0041C921    call        dword ptr [esi]
 0041C923    pop         edi
 0041C924    pop         esi
 0041C925    ret
 0041C926    call        esi
 0041C928    pop         edi
 0041C929    pop         esi
 0041C92A    ret
 0041C92B    and         esi,0FFFFFF
 0041C931    lea         edx,[esi+eax]
 0041C934    mov         eax,ecx
 0041C936    call        AssignVariant
 0041C93B    pop         edi
 0041C93C    pop         esi
 0041C93D    ret
*}
end;

//0041C940
procedure SetVariantProp(Instance:TObject; PropInfo:PPropInfo; const Value:Variant);
begin
{*
 0041C940    push        esi
 0041C941    push        edi
 0041C942    mov         esi,edx
 0041C944    mov         edx,dword ptr [esi+10]
 0041C947    cmp         edx,80000000
>0041C94D    jne         0041C951
 0041C94F    mov         edx,ecx
 0041C951    mov         edi,dword ptr [esi+8]
 0041C954    cmp         byte ptr [esi+0B],0FE
>0041C958    ja          0041C96B
>0041C95A    jb          0041C966
 0041C95C    movsx       edi,di
 0041C95F    add         edi,dword ptr [eax]
 0041C961    call        dword ptr [edi]
 0041C963    pop         edi
 0041C964    pop         esi
 0041C965    ret
 0041C966    call        edi
 0041C968    pop         edi
 0041C969    pop         esi
 0041C96A    ret
 0041C96B    and         edi,0FFFFFF
 0041C971    add         eax,edi
 0041C973    mov         edx,ecx
 0041C975    call        AssignVariant
 0041C97A    pop         edi
 0041C97B    pop         esi
 0041C97C    ret
*}
end;

//0041C980
function GetMethodProp(Instance:TObject; PropInfo:PPropInfo):TMethod;
begin
{*
 0041C980    push        ebx
 0041C981    push        esi
 0041C982    mov         esi,edx
 0041C984    mov         edx,dword ptr [esi+10]
 0041C987    cmp         edx,80000000
>0041C98D    jne         0041C991
 0041C98F    mov         edx,ecx
 0041C991    mov         ebx,dword ptr [esi+4]
 0041C994    cmp         byte ptr [esi+7],0FE
>0041C998    ja          0041C9AB
>0041C99A    jb          0041C9A6
 0041C99C    movsx       ebx,bx
 0041C99F    add         ebx,dword ptr [eax]
 0041C9A1    call        dword ptr [ebx]
 0041C9A3    pop         esi
 0041C9A4    pop         ebx
 0041C9A5    ret
 0041C9A6    call        ebx
 0041C9A8    pop         esi
 0041C9A9    pop         ebx
 0041C9AA    ret
 0041C9AB    and         ebx,0FFFFFF
 0041C9B1    add         eax,ebx
 0041C9B3    mov         edx,dword ptr [eax]
 0041C9B5    mov         ebx,dword ptr [eax+4]
 0041C9B8    mov         dword ptr [ecx],edx
 0041C9BA    mov         dword ptr [ecx+4],ebx
 0041C9BD    pop         esi
 0041C9BE    pop         ebx
 0041C9BF    ret
*}
end;

//0041C9C0
procedure SetMethodProp(Instance:TObject; PropInfo:PPropInfo; const Value:TMethod);
begin
{*
 0041C9C0    push        ebx
 0041C9C1    mov         ebx,dword ptr [edx+8]
 0041C9C4    cmp         byte ptr [edx+0B],0FE
>0041C9C8    ja          0041C9E1
 0041C9CA    mov         edx,dword ptr [edx+10]
 0041C9CD    push        dword ptr [ecx+4]
 0041C9D0    push        dword ptr [ecx]
>0041C9D2    jb          0041C9DD
 0041C9D4    movsx       ebx,bx
 0041C9D7    add         ebx,dword ptr [eax]
 0041C9D9    call        dword ptr [ebx]
 0041C9DB    pop         ebx
 0041C9DC    ret
 0041C9DD    call        ebx
 0041C9DF    pop         ebx
 0041C9E0    ret
 0041C9E1    and         ebx,0FFFFFF
 0041C9E7    add         eax,ebx
 0041C9E9    mov         edx,dword ptr [ecx]
 0041C9EB    mov         ebx,dword ptr [ecx+4]
 0041C9EE    mov         dword ptr [eax],edx
 0041C9F0    mov         dword ptr [eax+4],ebx
 0041C9F3    pop         ebx
 0041C9F4    ret
*}
end;

//0041C9F8
function GetInt64Prop(Instance:TObject; PropInfo:PPropInfo):Int64;
begin
{*
 0041C9F8    cmp         byte ptr [edx+7],0FE
 0041C9FC    mov         ecx,dword ptr [edx+4]
 0041C9FF    mov         edx,dword ptr [edx+10]
>0041CA02    ja          0041CA11
>0041CA04    jb          0041CA0E
 0041CA06    movsx       ecx,cx
 0041CA09    add         ecx,dword ptr [eax]
 0041CA0B    call        dword ptr [ecx]
 0041CA0D    ret
 0041CA0E    call        ecx
 0041CA10    ret
 0041CA11    and         ecx,0FFFFFF
 0041CA17    add         eax,ecx
 0041CA19    mov         edx,dword ptr [eax+4]
 0041CA1C    mov         eax,dword ptr [eax]
 0041CA1E    ret
*}
end;

//0041CA20
procedure SetInt64Prop(Instance:TObject; PropInfo:PPropInfo; const Value:Int64);
begin
{*
 0041CA20    push        ebp
 0041CA21    mov         ebp,esp
 0041CA23    cmp         byte ptr [edx+0B],0FE
 0041CA27    mov         ecx,dword ptr [edx+8]
>0041CA2A    ja          0041CA44
 0041CA2C    mov         edx,dword ptr [edx+10]
 0041CA2F    push        dword ptr [ebp+0C]
 0041CA32    push        dword ptr [ebp+8]
>0041CA35    jb          0041CA40
 0041CA37    movsx       ecx,cx
 0041CA3A    add         ecx,dword ptr [eax]
 0041CA3C    call        dword ptr [ecx]
>0041CA3E    jmp         0041CA57
 0041CA40    call        ecx
>0041CA42    jmp         0041CA57
 0041CA44    and         ecx,0FFFFFF
 0041CA4A    add         eax,ecx
 0041CA4C    mov         edx,dword ptr [ebp+8]
 0041CA4F    mov         ecx,dword ptr [ebp+0C]
 0041CA52    mov         dword ptr [eax],edx
 0041CA54    mov         dword ptr [eax+4],ecx
 0041CA57    pop         ebp
 0041CA58    ret         8
*}
end;

//0041CA5C
{*procedure sub_0041CA5C(?:?; ?:?; ?:?);
begin
 0041CA5C    push        ebp
 0041CA5D    mov         ebp,esp
 0041CA5F    add         esp,0FFFFFFE4
 0041CA62    mov         dword ptr [ebp-0C],ecx
 0041CA65    mov         dword ptr [ebp-8],edx
 0041CA68    mov         dword ptr [ebp-4],eax
 0041CA6B    mov         eax,dword ptr [ebp-8]
 0041CA6E    mov         eax,dword ptr [eax+4]
 0041CA71    mov         dword ptr [ebp-1C],eax
 0041CA74    mov         eax,dword ptr [ebp-1C]
 0041CA77    and         eax,0FF000000
 0041CA7C    cmp         eax,0FF000000
>0041CA81    jne         0041CAA0
 0041CA83    mov         eax,dword ptr [ebp-1C]
 0041CA86    and         eax,0FFFFFF
 0041CA8B    add         eax,dword ptr [ebp-4]
 0041CA8E    mov         dword ptr [ebp-10],eax
 0041CA91    mov         eax,dword ptr [ebp-0C]
 0041CA94    mov         edx,dword ptr [ebp-10]
 0041CA97    mov         edx,dword ptr [edx]
 0041CA99    call        @IntfCopy
>0041CA9E    jmp         0041CAF3
 0041CAA0    mov         eax,dword ptr [ebp-1C]
 0041CAA3    and         eax,0FF000000
 0041CAA8    cmp         eax,0FE000000
>0041CAAD    jne         0041CAC1
 0041CAAF    mov         eax,dword ptr [ebp-4]
 0041CAB2    mov         eax,dword ptr [eax]
 0041CAB4    movsx       edx,word ptr [ebp-1C]
 0041CAB8    add         eax,edx
 0041CABA    mov         eax,dword ptr [eax]
 0041CABC    mov         dword ptr [ebp-18],eax
>0041CABF    jmp         0041CAC7
 0041CAC1    mov         eax,dword ptr [ebp-1C]
 0041CAC4    mov         dword ptr [ebp-18],eax
 0041CAC7    mov         eax,dword ptr [ebp-4]
 0041CACA    mov         dword ptr [ebp-14],eax
 0041CACD    mov         eax,dword ptr [ebp-8]
 0041CAD0    cmp         dword ptr [eax+10],80000000
>0041CAD7    jne         0041CAE4
 0041CAD9    mov         edx,dword ptr [ebp-0C]
 0041CADC    mov         eax,dword ptr [ebp-14]
 0041CADF    call        dword ptr [ebp-18]
>0041CAE2    jmp         0041CAF3
 0041CAE4    mov         ecx,dword ptr [ebp-0C]
 0041CAE7    mov         eax,dword ptr [ebp-8]
 0041CAEA    mov         edx,dword ptr [eax+10]
 0041CAED    mov         eax,dword ptr [ebp-14]
 0041CAF0    call        dword ptr [ebp-18]
 0041CAF3    mov         esp,ebp
 0041CAF5    pop         ebp
 0041CAF6    ret
end;*}

//0041CAF8
procedure SetInterfaceProp(Instance:TObject; PropInfo:PPropInfo; const Value:IInterface);
begin
{*
 0041CAF8    push        ebp
 0041CAF9    mov         ebp,esp
 0041CAFB    add         esp,0FFFFFFE4
 0041CAFE    mov         dword ptr [ebp-0C],ecx
 0041CB01    mov         dword ptr [ebp-8],edx
 0041CB04    mov         dword ptr [ebp-4],eax
 0041CB07    mov         eax,dword ptr [ebp-8]
 0041CB0A    mov         eax,dword ptr [eax+8]
 0041CB0D    mov         dword ptr [ebp-1C],eax
 0041CB10    mov         eax,dword ptr [ebp-1C]
 0041CB13    and         eax,0FF000000
 0041CB18    cmp         eax,0FF000000
>0041CB1D    jne         0041CB3A
 0041CB1F    mov         eax,dword ptr [ebp-1C]
 0041CB22    and         eax,0FFFFFF
 0041CB27    add         eax,dword ptr [ebp-4]
 0041CB2A    mov         dword ptr [ebp-10],eax
 0041CB2D    mov         eax,dword ptr [ebp-10]
 0041CB30    mov         edx,dword ptr [ebp-0C]
 0041CB33    call        @IntfCopy
>0041CB38    jmp         0041CB8D
 0041CB3A    mov         eax,dword ptr [ebp-1C]
 0041CB3D    and         eax,0FF000000
 0041CB42    cmp         eax,0FE000000
>0041CB47    jne         0041CB5B
 0041CB49    mov         eax,dword ptr [ebp-4]
 0041CB4C    mov         eax,dword ptr [eax]
 0041CB4E    movsx       edx,word ptr [ebp-1C]
 0041CB52    add         eax,edx
 0041CB54    mov         eax,dword ptr [eax]
 0041CB56    mov         dword ptr [ebp-18],eax
>0041CB59    jmp         0041CB61
 0041CB5B    mov         eax,dword ptr [ebp-1C]
 0041CB5E    mov         dword ptr [ebp-18],eax
 0041CB61    mov         eax,dword ptr [ebp-4]
 0041CB64    mov         dword ptr [ebp-14],eax
 0041CB67    mov         eax,dword ptr [ebp-8]
 0041CB6A    cmp         dword ptr [eax+10],80000000
>0041CB71    jne         0041CB7E
 0041CB73    mov         edx,dword ptr [ebp-0C]
 0041CB76    mov         eax,dword ptr [ebp-14]
 0041CB79    call        dword ptr [ebp-18]
>0041CB7C    jmp         0041CB8D
 0041CB7E    mov         ecx,dword ptr [ebp-0C]
 0041CB81    mov         eax,dword ptr [ebp-8]
 0041CB84    mov         edx,dword ptr [eax+10]
 0041CB87    mov         eax,dword ptr [ebp-14]
 0041CB8A    call        dword ptr [ebp-18]
 0041CB8D    mov         esp,ebp
 0041CB8F    pop         ebp
 0041CB90    ret
*}
end;

Initialization
Finalization
//0041CB94
{*
 0041CB94    push        ebp
 0041CB95    mov         ebp,esp
 0041CB97    xor         eax,eax
 0041CB99    push        ebp
 0041CB9A    push        41CBDA
 0041CB9F    push        dword ptr fs:[eax]
 0041CBA2    mov         dword ptr fs:[eax],esp
 0041CBA5    inc         dword ptr ds:[571A6C]
>0041CBAB    jne         0041CBCC
 0041CBAD    mov         eax,56BC74;^'.'
 0041CBB2    call        @LStrClr
 0041CBB7    mov         eax,56BC6C;^'False'
 0041CBBC    mov         ecx,2
 0041CBC1    mov         edx,dword ptr ds:[4010C0];String
 0041CBC7    call        @FinalizeArray
 0041CBCC    xor         eax,eax
 0041CBCE    pop         edx
 0041CBCF    pop         ecx
 0041CBD0    pop         ecx
 0041CBD1    mov         dword ptr fs:[eax],edx
 0041CBD4    push        41CBE1
 0041CBD9    ret
>0041CBDA    jmp         @HandleFinally
>0041CBDF    jmp         0041CBD9
 0041CBE1    pop         ebp
 0041CBE2    ret
*}
end.