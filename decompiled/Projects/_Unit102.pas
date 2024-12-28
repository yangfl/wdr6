//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit102;

interface

uses
  SysUtils, Classes;

type
  TPointerBucketItemArray = array of ?;
//elSize = 8;
  TPointerBucket = TPointerBucket = record//size=8
f4:TPointerBucketItemArray;//f4
end;;
  TPointerBucketArray = array [1..256] of TPointerBucket;
  TPointerMap = class(TObject)
  public
    f4:TPointerBucketArray;//f4
    f804:dword;//f804
    destructor Destroy; virtual;//00515044
    //function v0(?:?; ?:?):?; virtual;//v0//00515080
  end;
  TPointerMapIterator = class(TObject)
  public
    fC:dword;//fC
    constructor Create;//00515278
  end;
  TRectList = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
    ....:dword;//fC
    destructor Destroy; virtual;//00515384
    procedure v0; virtual;//v0//005154BC
    procedure v4; virtual;//v4//0051540C
  end;
  TClassList = class(TList)
  end;
    //procedure sub_00514CE4(?:TPersistent; ?:?; ?:?);//00514CE4
    //function sub_00514EA0(?:?; ?:?; ?:?):?;//00514EA0
    //function sub_00514ECC(?:?; ?:?; ?:?; ?:?):?;//00514ECC
    procedure sub_00514FC4(?:TMicroTilesMap);//00514FC4
    destructor Destroy;//00515044
    //function sub_00515080(?:?; ?:?):?;//00515080
    //function sub_0051511C(?:TMicroTilesMap; ?:?):?;//0051511C
    //function sub_00515160(?:?; ?:?; ?:?; ?:?):?;//00515160
    //function sub_005151D8(?:?; ?:?):?;//005151D8
    //function sub_005152DC(?:TPointerMapIterator):?;//005152DC
    destructor Destroy;//00515384
    //function sub_005153BC(?:?; ?:?):?;//005153BC
    procedure sub_0051540C;//0051540C
    //procedure sub_00515430(?:TRectList; ?:?);//00515430
    //function sub_00515480(?:TRectList; ?:?):?;//00515480
    procedure sub_005154BC;//005154BC
    //procedure sub_00515514(?:TRectList; ?:?);//00515514
    //procedure sub_0051554C(?:TRectList; ?:?);//0051554C
    //function sub_005155D4(?:TClassList; ?:?):?;//005155D4
    //function sub_005155F8(?:TClassList; ?:String):?;//005155F8

implementation

//00514CE4
{*procedure sub_00514CE4(?:TPersistent; ?:?; ?:?);
begin
 00514CE4    push        ebp
 00514CE5    mov         ebp,esp
 00514CE7    add         esp,0FFFFFFB8
 00514CEA    push        ebx
 00514CEB    xor         ebx,ebx
 00514CED    mov         dword ptr [ebp-40],ebx
 00514CF0    mov         dword ptr [ebp-3C],ebx
 00514CF3    mov         dword ptr [ebp-38],ebx
 00514CF6    mov         dword ptr [ebp-34],ebx
 00514CF9    mov         dword ptr [ebp-48],ebx
 00514CFC    mov         dword ptr [ebp-44],ebx
 00514CFF    mov         dword ptr [ebp-30],ebx
 00514D02    mov         dword ptr [ebp-2C],ebx
 00514D05    mov         dword ptr [ebp-0C],ecx
 00514D08    mov         dword ptr [ebp-8],edx
 00514D0B    mov         dword ptr [ebp-4],eax
 00514D0E    xor         eax,eax
 00514D10    push        ebp
 00514D11    push        514E92
 00514D16    push        dword ptr fs:[eax]
 00514D19    mov         dword ptr fs:[eax],esp
 00514D1C    mov         eax,dword ptr [ebp-4]
 00514D1F    mov         eax,dword ptr [eax]
 00514D21    call        004044E0
 00514D26    call        GetTypeData
 00514D2B    movsx       eax,word ptr [eax+8]
 00514D2F    mov         dword ptr [ebp-10],eax
 00514D32    cmp         dword ptr [ebp-10],0
>00514D36    je          00514E62
 00514D3C    mov         eax,dword ptr [ebp-10]
 00514D3F    shl         eax,2
 00514D42    call        @GetMem
 00514D47    mov         dword ptr [ebp-18],eax
 00514D4A    xor         eax,eax
 00514D4C    push        ebp
 00514D4D    push        514E5B
 00514D52    push        dword ptr fs:[eax]
 00514D55    mov         dword ptr fs:[eax],esp
 00514D58    push        0
 00514D5A    mov         eax,dword ptr [ebp-4]
 00514D5D    mov         eax,dword ptr [eax]
 00514D5F    call        004044E0
 00514D64    mov         ecx,dword ptr [ebp-18]
 00514D67    mov         edx,dword ptr [ebp-0C]
 00514D6A    call        0041BA14
 00514D6F    mov         dword ptr [ebp-10],eax
 00514D72    mov         eax,dword ptr [ebp-10]
 00514D75    dec         eax
 00514D76    test        eax,eax
>00514D78    jl          00514E3F
 00514D7E    inc         eax
 00514D7F    mov         dword ptr [ebp-24],eax
 00514D82    mov         dword ptr [ebp-14],0
 00514D89    mov         eax,dword ptr [ebp-18]
 00514D8C    mov         edx,dword ptr [ebp-14]
 00514D8F    mov         eax,dword ptr [eax+edx*4]
 00514D92    mov         dword ptr [ebp-28],eax
 00514D95    mov         eax,dword ptr [ebp-28]
 00514D98    mov         eax,dword ptr [eax]
 00514D9A    mov         eax,dword ptr [eax]
 00514D9C    cmp         byte ptr [eax],7
>00514D9F    jne         00514DF6
 00514DA1    lea         eax,[ebp-2C]
 00514DA4    mov         edx,dword ptr [ebp-28]
 00514DA7    add         edx,1A
 00514DAA    call        @LStrFromString
 00514DAF    mov         edx,dword ptr [ebp-2C]
 00514DB2    xor         ecx,ecx
 00514DB4    mov         eax,dword ptr [ebp-8]
 00514DB7    call        0041B020
 00514DBC    mov         dword ptr [ebp-20],eax
 00514DBF    cmp         dword ptr [ebp-20],0
>00514DC3    je          00514E33
 00514DC5    lea         eax,[ebp-30]
 00514DC8    mov         edx,dword ptr [ebp-28]
 00514DCB    add         edx,1A
 00514DCE    call        @LStrFromString
 00514DD3    mov         edx,dword ptr [ebp-30]
 00514DD6    xor         ecx,ecx
 00514DD8    mov         eax,dword ptr [ebp-4]
 00514DDB    call        0041B020
 00514DE0    mov         dword ptr [ebp-1C],eax
 00514DE3    cmp         dword ptr [ebp-1C],0
>00514DE7    je          00514E33
 00514DE9    mov         edx,dword ptr [ebp-1C]
 00514DEC    mov         eax,dword ptr [ebp-20]
 00514DEF    mov         ecx,dword ptr [eax]
 00514DF1    call        dword ptr [ecx+8]
>00514DF4    jmp         00514E33
 00514DF6    lea         eax,[ebp-40]
 00514DF9    push        eax
 00514DFA    lea         eax,[ebp-44]
 00514DFD    mov         edx,dword ptr [ebp-28]
 00514E00    add         edx,1A
 00514E03    call        @LStrFromString
 00514E08    mov         edx,dword ptr [ebp-44]
 00514E0B    xor         ecx,ecx
 00514E0D    mov         eax,dword ptr [ebp-4]
 00514E10    call        0041B054
 00514E15    lea         eax,[ebp-40]
 00514E18    push        eax
 00514E19    lea         eax,[ebp-48]
 00514E1C    mov         edx,dword ptr [ebp-28]
 00514E1F    add         edx,1A
 00514E22    call        @LStrFromString
 00514E27    mov         edx,dword ptr [ebp-48]
 00514E2A    mov         eax,dword ptr [ebp-8]
 00514E2D    pop         ecx
 00514E2E    call        0041B358
 00514E33    inc         dword ptr [ebp-14]
 00514E36    dec         dword ptr [ebp-24]
>00514E39    jne         00514D89
 00514E3F    xor         eax,eax
 00514E41    pop         edx
 00514E42    pop         ecx
 00514E43    pop         ecx
 00514E44    mov         dword ptr fs:[eax],edx
 00514E47    push        514E62
 00514E4C    mov         edx,dword ptr [ebp-10]
 00514E4F    shl         edx,2
 00514E52    mov         eax,dword ptr [ebp-18]
 00514E55    call        @FreeMem
 00514E5A    ret
>00514E5B    jmp         @HandleFinally
>00514E60    jmp         00514E4C
 00514E62    xor         eax,eax
 00514E64    pop         edx
 00514E65    pop         ecx
 00514E66    pop         ecx
 00514E67    mov         dword ptr fs:[eax],edx
 00514E6A    push        514E99
 00514E6F    lea         eax,[ebp-48]
 00514E72    mov         edx,2
 00514E77    call        @LStrArrayClr
 00514E7C    lea         eax,[ebp-40]
 00514E7F    call        @VarClr
 00514E84    lea         eax,[ebp-30]
 00514E87    mov         edx,2
 00514E8C    call        @LStrArrayClr
 00514E91    ret
>00514E92    jmp         @HandleFinally
>00514E97    jmp         00514E6F
 00514E99    pop         ebx
 00514E9A    mov         esp,ebp
 00514E9C    pop         ebp
 00514E9D    ret
end;*}

//00514EA0
{*function sub_00514EA0(?:?; ?:?; ?:?):?;
begin
 00514EA0    push        ebp
 00514EA1    mov         ebp,esp
 00514EA3    add         esp,0FFFFFFF0
 00514EA6    mov         dword ptr [ebp-0C],ecx
 00514EA9    mov         dword ptr [ebp-8],edx
 00514EAC    mov         dword ptr [ebp-4],eax
 00514EAF    mov         eax,dword ptr [ebp-0C]
 00514EB2    push        eax
 00514EB3    xor         ecx,ecx
 00514EB5    mov         edx,dword ptr [ebp-8]
 00514EB8    mov         eax,dword ptr [ebp-4]
 00514EBB    call        00514ECC
 00514EC0    mov         dword ptr [ebp-10],eax
 00514EC3    mov         eax,dword ptr [ebp-10]
 00514EC6    mov         esp,ebp
 00514EC8    pop         ebp
 00514EC9    ret
end;*}

//00514ECC
{*function sub_00514ECC(?:?; ?:?; ?:?; ?:?):?;
begin
 00514ECC    push        ebp
 00514ECD    mov         ebp,esp
 00514ECF    add         esp,0FFFFFFDC
 00514ED2    mov         dword ptr [ebp-0C],ecx
 00514ED5    mov         dword ptr [ebp-8],edx
 00514ED8    mov         dword ptr [ebp-4],eax
 00514EDB    lea         eax,[ebp-18]
 00514EDE    push        eax
 00514EDF    lea         ecx,[ebp-14]
 00514EE2    mov         edx,dword ptr [ebp-8]
 00514EE5    mov         eax,dword ptr [ebp-4]
 00514EE8    call        00515160
 00514EED    test        al,al
>00514EEF    je          00514F10
 00514EF1    mov         eax,dword ptr [ebp+8]
 00514EF4    mov         byte ptr [eax],0
 00514EF7    mov         eax,dword ptr [ebp-14]
 00514EFA    mov         edx,dword ptr [ebp-4]
 00514EFD    mov         eax,dword ptr [edx+eax*8+8]
 00514F01    mov         edx,dword ptr [ebp-18]
 00514F04    lea         eax,[eax+edx*8+4]
 00514F08    mov         dword ptr [ebp-10],eax
>00514F0B    jmp         00514FB9
 00514F10    mov         eax,dword ptr [ebp-14]
 00514F13    mov         edx,dword ptr [ebp-4]
 00514F16    lea         eax,[edx+eax*8+4]
 00514F1A    mov         dword ptr [ebp-20],eax
 00514F1D    mov         eax,dword ptr [ebp-20]
 00514F20    mov         eax,dword ptr [eax+4]
 00514F23    call        @DynArrayLength
 00514F28    mov         dword ptr [ebp-1C],eax
 00514F2B    mov         eax,dword ptr [ebp-20]
 00514F2E    mov         eax,dword ptr [eax]
 00514F30    cmp         eax,dword ptr [ebp-1C]
>00514F33    jne         00514F7A
 00514F35    cmp         dword ptr [ebp-1C],40
>00514F39    jle         00514F4D
 00514F3B    mov         eax,dword ptr [ebp-1C]
 00514F3E    test        eax,eax
>00514F40    jns         00514F45
 00514F42    add         eax,3
 00514F45    sar         eax,2
 00514F48    add         dword ptr [ebp-1C],eax
>00514F4B    jmp         00514F5D
 00514F4D    cmp         dword ptr [ebp-1C],8
>00514F51    jle         00514F59
 00514F53    add         dword ptr [ebp-1C],10
>00514F57    jmp         00514F5D
 00514F59    add         dword ptr [ebp-1C],4
 00514F5D    mov         eax,dword ptr [ebp-1C]
 00514F60    push        eax
 00514F61    mov         eax,dword ptr [ebp-20]
 00514F64    add         eax,4
 00514F67    mov         ecx,1
 00514F6C    mov         edx,dword ptr ds:[514AC0];TPointerBucketItemArray
 00514F72    call        @DynArraySetLength
 00514F77    add         esp,4
 00514F7A    mov         eax,dword ptr [ebp-20]
 00514F7D    mov         eax,dword ptr [eax+4]
 00514F80    mov         edx,dword ptr [ebp-20]
 00514F83    mov         edx,dword ptr [edx]
 00514F85    lea         eax,[eax+edx*8]
 00514F88    mov         dword ptr [ebp-24],eax
 00514F8B    mov         eax,dword ptr [ebp-24]
 00514F8E    mov         edx,dword ptr [ebp-8]
 00514F91    mov         dword ptr [eax],edx
 00514F93    mov         eax,dword ptr [ebp-24]
 00514F96    mov         edx,dword ptr [ebp-0C]
 00514F99    mov         dword ptr [eax+4],edx
 00514F9C    mov         eax,dword ptr [ebp-24]
 00514F9F    add         eax,4
 00514FA2    mov         dword ptr [ebp-10],eax
 00514FA5    mov         eax,dword ptr [ebp-20]
 00514FA8    inc         dword ptr [eax]
 00514FAA    mov         eax,dword ptr [ebp+8]
 00514FAD    mov         byte ptr [eax],1
 00514FB0    mov         eax,dword ptr [ebp-4]
 00514FB3    inc         dword ptr [eax+804]
 00514FB9    mov         eax,dword ptr [ebp-10]
 00514FBC    mov         esp,ebp
 00514FBE    pop         ebp
 00514FBF    ret         4
end;*}

//00514FC4
procedure sub_00514FC4(?:TMicroTilesMap);
begin
{*
 00514FC4    push        ebp
 00514FC5    mov         ebp,esp
 00514FC7    add         esp,0FFFFFFF0
 00514FCA    push        ebx
 00514FCB    mov         dword ptr [ebp-4],eax
 00514FCE    mov         eax,dword ptr [ebp-4]
 00514FD1    xor         edx,edx
 00514FD3    mov         dword ptr [eax+804],edx
 00514FD9    xor         eax,eax
 00514FDB    mov         dword ptr [ebp-8],eax
 00514FDE    mov         eax,dword ptr [ebp-4]
 00514FE1    mov         edx,dword ptr [ebp-8]
 00514FE4    lea         eax,[eax+edx*8+4]
 00514FE8    mov         dword ptr [ebp-10],eax
 00514FEB    mov         eax,dword ptr [ebp-10]
 00514FEE    mov         eax,dword ptr [eax]
 00514FF0    dec         eax
 00514FF1    cmp         eax,0
>00514FF4    jl          0051500F
 00514FF6    mov         dword ptr [ebp-0C],eax
 00514FF9    mov         ecx,dword ptr [ebp-0C]
 00514FFC    mov         edx,dword ptr [ebp-8]
 00514FFF    mov         eax,dword ptr [ebp-4]
 00515002    mov         ebx,dword ptr [eax]
 00515004    call        dword ptr [ebx]
 00515006    dec         dword ptr [ebp-0C]
 00515009    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0051500D    jne         00514FF9
 0051500F    mov         eax,dword ptr [ebp-10]
 00515012    xor         edx,edx
 00515014    mov         dword ptr [eax],edx
 00515016    push        0
 00515018    mov         eax,dword ptr [ebp-10]
 0051501B    add         eax,4
 0051501E    mov         ecx,1
 00515023    mov         edx,dword ptr ds:[514AC0];TPointerBucketItemArray
 00515029    call        @DynArraySetLength
 0051502E    add         esp,4
 00515031    inc         dword ptr [ebp-8]
 00515034    cmp         dword ptr [ebp-8],100
>0051503B    jne         00514FDE
 0051503D    pop         ebx
 0051503E    mov         esp,ebp
 00515040    pop         ebp
 00515041    ret
*}
end;

//00515044
destructor TPointerMap.Destroy;
begin
{*
 00515044    push        ebp
 00515045    mov         ebp,esp
 00515047    add         esp,0FFFFFFF8
 0051504A    call        @BeforeDestruction
 0051504F    mov         byte ptr [ebp-5],dl
 00515052    mov         dword ptr [ebp-4],eax
 00515055    mov         eax,dword ptr [ebp-4]
 00515058    call        00514FC4
 0051505D    mov         dl,byte ptr [ebp-5]
 00515060    and         dl,0FC
 00515063    mov         eax,dword ptr [ebp-4]
 00515066    call        TObject.Destroy
 0051506B    cmp         byte ptr [ebp-5],0
>0051506F    jle         00515079
 00515071    mov         eax,dword ptr [ebp-4]
 00515074    call        @ClassDestroy
 00515079    pop         ecx
 0051507A    pop         ecx
 0051507B    pop         ebp
 0051507C    ret
*}
end;

//00515080
{*function sub_00515080(?:?; ?:?):?;
begin
 00515080    push        ebp
 00515081    mov         ebp,esp
 00515083    add         esp,0FFFFFFEC
 00515086    mov         dword ptr [ebp-0C],ecx
 00515089    mov         dword ptr [ebp-8],edx
 0051508C    mov         dword ptr [ebp-4],eax
 0051508F    mov         eax,dword ptr [ebp-8]
 00515092    mov         edx,dword ptr [ebp-4]
 00515095    lea         eax,[edx+eax*8+4]
 00515099    mov         dword ptr [ebp-14],eax
 0051509C    mov         eax,dword ptr [ebp-14]
 0051509F    mov         eax,dword ptr [eax+4]
 005150A2    mov         edx,dword ptr [ebp-0C]
 005150A5    mov         eax,dword ptr [eax+edx*8+4]
 005150A9    mov         dword ptr [ebp-10],eax
 005150AC    mov         eax,dword ptr [ebp-4]
 005150AF    cmp         dword ptr [eax+804],0;TPointerMap.?f804:dword
>005150B6    je          00515114
 005150B8    mov         eax,dword ptr [ebp-14]
 005150BB    cmp         dword ptr [eax],1
>005150BE    jne         005150DD
 005150C0    push        0
 005150C2    mov         eax,dword ptr [ebp-14]
 005150C5    add         eax,4
 005150C8    mov         ecx,1
 005150CD    mov         edx,dword ptr ds:[514AC0];TPointerBucketItemArray
 005150D3    call        @DynArraySetLength
 005150D8    add         esp,4
>005150DB    jmp         00515106
 005150DD    mov         eax,dword ptr [ebp-14]
 005150E0    mov         eax,dword ptr [eax+4]
 005150E3    mov         edx,dword ptr [ebp-0C]
 005150E6    lea         edx,[eax+edx*8]
 005150E9    mov         eax,dword ptr [ebp-14]
 005150EC    mov         eax,dword ptr [eax+4]
 005150EF    mov         ecx,dword ptr [ebp-0C]
 005150F2    lea         eax,[eax+ecx*8+8]
 005150F6    mov         ecx,dword ptr [ebp-14]
 005150F9    mov         ecx,dword ptr [ecx]
 005150FB    sub         ecx,dword ptr [ebp-0C]
 005150FE    shl         ecx,3
 00515101    call        Move
 00515106    mov         eax,dword ptr [ebp-14]
 00515109    dec         dword ptr [eax]
 0051510B    mov         eax,dword ptr [ebp-4]
 0051510E    dec         dword ptr [eax+804];TPointerMap.?f804:dword
 00515114    mov         eax,dword ptr [ebp-10]
 00515117    mov         esp,ebp
 00515119    pop         ebp
 0051511A    ret
end;*}

//0051511C
{*function sub_0051511C(?:TMicroTilesMap; ?:?):?;
begin
 0051511C    push        ebp
 0051511D    mov         ebp,esp
 0051511F    add         esp,0FFFFFFEC
 00515122    push        ebx
 00515123    mov         dword ptr [ebp-8],edx
 00515126    mov         dword ptr [ebp-4],eax
 00515129    lea         eax,[ebp-14]
 0051512C    push        eax
 0051512D    lea         ecx,[ebp-10]
 00515130    mov         edx,dword ptr [ebp-8]
 00515133    mov         eax,dword ptr [ebp-4]
 00515136    call        00515160
 0051513B    test        al,al
>0051513D    je          00515151
 0051513F    mov         ecx,dword ptr [ebp-14]
 00515142    mov         edx,dword ptr [ebp-10]
 00515145    mov         eax,dword ptr [ebp-4]
 00515148    mov         ebx,dword ptr [eax]
 0051514A    call        dword ptr [ebx]
 0051514C    mov         dword ptr [ebp-0C],eax
>0051514F    jmp         00515156
 00515151    xor         eax,eax
 00515153    mov         dword ptr [ebp-0C],eax
 00515156    mov         eax,dword ptr [ebp-0C]
 00515159    pop         ebx
 0051515A    mov         esp,ebp
 0051515C    pop         ebp
 0051515D    ret
end;*}

//00515160
{*function sub_00515160(?:?; ?:?; ?:?; ?:?):?;
begin
 00515160    push        ebp
 00515161    mov         ebp,esp
 00515163    add         esp,0FFFFFFE4
 00515166    mov         dword ptr [ebp-0C],ecx
 00515169    mov         dword ptr [ebp-8],edx
 0051516C    mov         dword ptr [ebp-4],eax
 0051516F    mov         eax,dword ptr [ebp-8]
 00515172    shr         eax,8
 00515175    and         eax,0FF
 0051517A    mov         edx,dword ptr [ebp-0C]
 0051517D    mov         dword ptr [edx],eax
 0051517F    mov         byte ptr [ebp-0D],0
 00515183    mov         eax,dword ptr [ebp-0C]
 00515186    mov         eax,dword ptr [eax]
 00515188    mov         edx,dword ptr [ebp-4]
 0051518B    lea         eax,[edx+eax*8+4]
 0051518F    mov         dword ptr [ebp-18],eax
 00515192    mov         eax,dword ptr [ebp-18]
 00515195    mov         eax,dword ptr [eax]
 00515197    dec         eax
 00515198    test        eax,eax
>0051519A    jl          005151CE
 0051519C    inc         eax
 0051519D    mov         dword ptr [ebp-1C],eax
 005151A0    mov         dword ptr [ebp-14],0
 005151A7    mov         eax,dword ptr [ebp-18]
 005151AA    mov         eax,dword ptr [eax+4]
 005151AD    mov         edx,dword ptr [ebp-14]
 005151B0    mov         eax,dword ptr [eax+edx*8]
 005151B3    cmp         eax,dword ptr [ebp-8]
>005151B6    jne         005151C6
 005151B8    mov         eax,dword ptr [ebp+8]
 005151BB    mov         edx,dword ptr [ebp-14]
 005151BE    mov         dword ptr [eax],edx
 005151C0    mov         byte ptr [ebp-0D],1
>005151C4    jmp         005151CE
 005151C6    inc         dword ptr [ebp-14]
 005151C9    dec         dword ptr [ebp-1C]
>005151CC    jne         005151A7
 005151CE    mov         al,byte ptr [ebp-0D]
 005151D1    mov         esp,ebp
 005151D3    pop         ebp
 005151D4    ret         4
end;*}

//005151D8
{*function sub_005151D8(?:?; ?:?):?;
begin
 005151D8    push        ebp
 005151D9    mov         ebp,esp
 005151DB    add         esp,0FFFFFFE0
 005151DE    xor         ecx,ecx
 005151E0    mov         dword ptr [ebp-20],ecx
 005151E3    mov         dword ptr [ebp-8],edx
 005151E6    mov         dword ptr [ebp-4],eax
 005151E9    xor         eax,eax
 005151EB    push        ebp
 005151EC    push        51526A
 005151F1    push        dword ptr fs:[eax]
 005151F4    mov         dword ptr fs:[eax],esp
 005151F7    lea         eax,[ebp-14]
 005151FA    push        eax
 005151FB    lea         ecx,[ebp-10]
 005151FE    mov         edx,dword ptr [ebp-8]
 00515201    mov         eax,dword ptr [ebp-4]
 00515204    call        00515160
 00515209    test        al,al
>0051520B    jne         00515240
 0051520D    mov         eax,dword ptr [ebp-8]
 00515210    mov         dword ptr [ebp-1C],eax
 00515213    mov         byte ptr [ebp-18],0
 00515217    lea         eax,[ebp-1C]
 0051521A    push        eax
 0051521B    push        0
 0051521D    lea         edx,[ebp-20]
 00515220    mov         eax,[0056E35C];^SItemNotFound:TResStringRec
 00515225    call        LoadResString
 0051522A    mov         ecx,dword ptr [ebp-20]
 0051522D    mov         dl,1
 0051522F    mov         eax,[0041D244];EListError
 00515234    call        Exception.CreateFmt;EListError.Create
 00515239    call        @RaiseExcept
>0051523E    jmp         00515254
 00515240    mov         eax,dword ptr [ebp-10]
 00515243    mov         edx,dword ptr [ebp-4]
 00515246    mov         eax,dword ptr [edx+eax*8+8]
 0051524A    mov         edx,dword ptr [ebp-14]
 0051524D    mov         eax,dword ptr [eax+edx*8+4]
 00515251    mov         dword ptr [ebp-0C],eax
 00515254    xor         eax,eax
 00515256    pop         edx
 00515257    pop         ecx
 00515258    pop         ecx
 00515259    mov         dword ptr fs:[eax],edx
 0051525C    push        515271
 00515261    lea         eax,[ebp-20]
 00515264    call        @LStrClr
 00515269    ret
>0051526A    jmp         @HandleFinally
>0051526F    jmp         00515261
 00515271    mov         eax,dword ptr [ebp-0C]
 00515274    mov         esp,ebp
 00515276    pop         ebp
 00515277    ret
end;*}

//00515278
constructor TPointerMapIterator.Create;
begin
{*
 00515278    push        ebp
 00515279    mov         ebp,esp
 0051527B    add         esp,0FFFFFFF4
 0051527E    test        dl,dl
>00515280    je          0051528A
 00515282    add         esp,0FFFFFFF0
 00515285    call        @ClassCreate
 0051528A    mov         dword ptr [ebp-0C],ecx
 0051528D    mov         byte ptr [ebp-5],dl
 00515290    mov         dword ptr [ebp-4],eax
 00515293    xor         edx,edx
 00515295    mov         eax,dword ptr [ebp-4]
 00515298    call        TObject.Create
 0051529D    mov         eax,dword ptr [ebp-4]
 005152A0    mov         edx,dword ptr [ebp-0C]
 005152A3    mov         dword ptr [eax+4],edx
 005152A6    mov         eax,dword ptr [ebp-4]
 005152A9    mov         dword ptr [eax+10],0FFFFFFFF
 005152B0    mov         eax,dword ptr [ebp-4]
 005152B3    mov         dword ptr [eax+14],0FFFFFFFF
 005152BA    mov         eax,dword ptr [ebp-4]
 005152BD    cmp         byte ptr [ebp-5],0
>005152C1    je          005152D2
 005152C3    call        @AfterConstruction
 005152C8    pop         dword ptr fs:[0]
 005152CF    add         esp,0C
 005152D2    mov         eax,dword ptr [ebp-4]
 005152D5    mov         esp,ebp
 005152D7    pop         ebp
 005152D8    ret
*}
end;

//005152DC
{*function sub_005152DC(?:TPointerMapIterator):?;
begin
 005152DC    push        ebp
 005152DD    mov         ebp,esp
 005152DF    add         esp,0FFFFFFF4
 005152E2    mov         dword ptr [ebp-4],eax
 005152E5    mov         eax,dword ptr [ebp-4]
 005152E8    cmp         dword ptr [eax+14],0
>005152EC    jle         005152F6
 005152EE    mov         eax,dword ptr [ebp-4]
 005152F1    dec         dword ptr [eax+14]
>005152F4    jmp         00515346
 005152F6    mov         eax,dword ptr [ebp-4]
 005152F9    mov         dword ptr [eax+14],0FFFFFFFF
>00515300    jmp         0051531F
 00515302    mov         eax,dword ptr [ebp-4]
 00515305    inc         dword ptr [eax+10]
 00515308    mov         eax,dword ptr [ebp-4]
 0051530B    mov         eax,dword ptr [eax+4]
 0051530E    mov         edx,dword ptr [ebp-4]
 00515311    mov         edx,dword ptr [edx+10]
 00515314    mov         eax,dword ptr [eax+edx*8+4]
 00515318    dec         eax
 00515319    mov         edx,dword ptr [ebp-4]
 0051531C    mov         dword ptr [edx+14],eax
 0051531F    mov         eax,dword ptr [ebp-4]
 00515322    cmp         dword ptr [eax+10],0FF
>00515329    jge         00515334
 0051532B    mov         eax,dword ptr [ebp-4]
 0051532E    cmp         dword ptr [eax+14],0FFFFFFFF
>00515332    je          00515302
 00515334    mov         eax,dword ptr [ebp-4]
 00515337    cmp         dword ptr [eax+10],0FF
>0051533E    jne         00515346
 00515340    mov         byte ptr [ebp-5],0
>00515344    jmp         0051537D
 00515346    mov         byte ptr [ebp-5],1
 0051534A    mov         eax,dword ptr [ebp-4]
 0051534D    mov         eax,dword ptr [eax+4]
 00515350    mov         edx,dword ptr [ebp-4]
 00515353    mov         edx,dword ptr [edx+10]
 00515356    mov         eax,dword ptr [eax+edx*8+8]
 0051535A    mov         edx,dword ptr [ebp-4]
 0051535D    mov         edx,dword ptr [edx+14]
 00515360    lea         eax,[eax+edx*8]
 00515363    mov         dword ptr [ebp-0C],eax
 00515366    mov         eax,dword ptr [ebp-0C]
 00515369    mov         eax,dword ptr [eax]
 0051536B    mov         edx,dword ptr [ebp-4]
 0051536E    mov         dword ptr [edx+8],eax
 00515371    mov         eax,dword ptr [ebp-0C]
 00515374    mov         eax,dword ptr [eax+4]
 00515377    mov         edx,dword ptr [ebp-4]
 0051537A    mov         dword ptr [edx+0C],eax
 0051537D    mov         al,byte ptr [ebp-5]
 00515380    mov         esp,ebp
 00515382    pop         ebp
 00515383    ret
end;*}

//00515384
destructor TRectList.Destroy;
begin
{*
 00515384    push        ebp
 00515385    mov         ebp,esp
 00515387    add         esp,0FFFFFFF8
 0051538A    call        @BeforeDestruction
 0051538F    mov         byte ptr [ebp-5],dl
 00515392    mov         dword ptr [ebp-4],eax
 00515395    xor         edx,edx
 00515397    mov         eax,dword ptr [ebp-4]
 0051539A    call        0051554C
 0051539F    xor         edx,edx
 005153A1    mov         eax,dword ptr [ebp-4]
 005153A4    call        00515514
 005153A9    cmp         byte ptr [ebp-5],0
>005153AD    jle         005153B7
 005153AF    mov         eax,dword ptr [ebp-4]
 005153B2    call        @ClassDestroy
 005153B7    pop         ecx
 005153B8    pop         ecx
 005153B9    pop         ebp
 005153BA    ret
*}
end;

//005153BC
{*function sub_005153BC(?:?; ?:?):?;
begin
 005153BC    push        ebp
 005153BD    mov         ebp,esp
 005153BF    add         esp,0FFFFFFF4
 005153C2    push        esi
 005153C3    push        edi
 005153C4    mov         dword ptr [ebp-8],edx
 005153C7    mov         dword ptr [ebp-4],eax
 005153CA    mov         eax,dword ptr [ebp-4]
 005153CD    mov         eax,dword ptr [eax+8]
 005153D0    mov         dword ptr [ebp-0C],eax
 005153D3    mov         eax,dword ptr [ebp-0C]
 005153D6    mov         edx,dword ptr [ebp-4]
 005153D9    cmp         eax,dword ptr [edx+0C]
>005153DC    jne         005153E5
 005153DE    mov         eax,dword ptr [ebp-4]
 005153E1    mov         edx,dword ptr [eax]
 005153E3    call        dword ptr [edx]
 005153E5    mov         eax,dword ptr [ebp-0C]
 005153E8    add         eax,eax
 005153EA    mov         edx,dword ptr [ebp-4]
 005153ED    mov         edx,dword ptr [edx+4]
 005153F0    mov         ecx,dword ptr [ebp-8]
 005153F3    lea         edi,[edx+eax*8]
 005153F6    mov         esi,ecx
 005153F8    movs        dword ptr [edi],dword ptr [esi]
 005153F9    movs        dword ptr [edi],dword ptr [esi]
 005153FA    movs        dword ptr [edi],dword ptr [esi]
 005153FB    movs        dword ptr [edi],dword ptr [esi]
 005153FC    mov         eax,dword ptr [ebp-4]
 005153FF    inc         dword ptr [eax+8]
 00515402    mov         eax,dword ptr [ebp-0C]
 00515405    pop         edi
 00515406    pop         esi
 00515407    mov         esp,ebp
 00515409    pop         ebp
 0051540A    ret
end;*}

//0051540C
procedure sub_0051540C;
begin
{*
 0051540C    push        ebp
 0051540D    mov         ebp,esp
 0051540F    push        ecx
 00515410    mov         dword ptr [ebp-4],eax
 00515413    xor         edx,edx
 00515415    mov         eax,dword ptr [ebp-4]
 00515418    call        0051554C
 0051541D    mov         edx,0A
 00515422    mov         eax,dword ptr [ebp-4]
 00515425    call        00515514
 0051542A    pop         ecx
 0051542B    pop         ebp
 0051542C    ret
*}
end;

//00515430
{*procedure sub_00515430(?:TRectList; ?:?);
begin
 00515430    push        ebp
 00515431    mov         ebp,esp
 00515433    add         esp,0FFFFFFF8
 00515436    mov         dword ptr [ebp-8],edx
 00515439    mov         dword ptr [ebp-4],eax
 0051543C    mov         eax,dword ptr [ebp-4]
 0051543F    dec         dword ptr [eax+8]
 00515442    mov         eax,dword ptr [ebp-8]
 00515445    mov         edx,dword ptr [ebp-4]
 00515448    cmp         eax,dword ptr [edx+8]
>0051544B    jge         0051547B
 0051544D    mov         eax,dword ptr [ebp-8]
 00515450    add         eax,eax
 00515452    mov         edx,dword ptr [ebp-4]
 00515455    mov         edx,dword ptr [edx+4]
 00515458    lea         edx,[edx+eax*8]
 0051545B    mov         eax,dword ptr [ebp-8]
 0051545E    add         eax,eax
 00515460    mov         ecx,dword ptr [ebp-4]
 00515463    mov         ecx,dword ptr [ecx+4]
 00515466    lea         eax,[ecx+eax*8+10]
 0051546A    mov         ecx,dword ptr [ebp-4]
 0051546D    mov         ecx,dword ptr [ecx+8]
 00515470    sub         ecx,dword ptr [ebp-8]
 00515473    shl         ecx,4
 00515476    call        Move
 0051547B    pop         ecx
 0051547C    pop         ecx
 0051547D    pop         ebp
 0051547E    ret
end;*}

//00515480
{*function sub_00515480(?:TRectList; ?:?):?;
begin
 00515480    push        ebp
 00515481    mov         ebp,esp
 00515483    add         esp,0FFFFFFF4
 00515486    mov         dword ptr [ebp-8],edx
 00515489    mov         dword ptr [ebp-4],eax
 0051548C    cmp         dword ptr [ebp-8],0
>00515490    jl          0051549D
 00515492    mov         eax,dword ptr [ebp-8]
 00515495    mov         edx,dword ptr [ebp-4]
 00515498    cmp         eax,dword ptr [edx+8]
>0051549B    jl          005154A4
 0051549D    xor         eax,eax
 0051549F    mov         dword ptr [ebp-0C],eax
>005154A2    jmp         005154B5
 005154A4    mov         eax,dword ptr [ebp-8]
 005154A7    add         eax,eax
 005154A9    mov         edx,dword ptr [ebp-4]
 005154AC    mov         edx,dword ptr [edx+4]
 005154AF    lea         eax,[edx+eax*8]
 005154B2    mov         dword ptr [ebp-0C],eax
 005154B5    mov         eax,dword ptr [ebp-0C]
 005154B8    mov         esp,ebp
 005154BA    pop         ebp
 005154BB    ret
end;*}

//005154BC
procedure sub_005154BC;
begin
{*
 005154BC    push        ebp
 005154BD    mov         ebp,esp
 005154BF    add         esp,0FFFFFFF8
 005154C2    mov         dword ptr [ebp-4],eax
 005154C5    mov         eax,dword ptr [ebp-4]
 005154C8    cmp         dword ptr [eax+0C],80;TRectList.....:dword
>005154CF    jle         005154E6
 005154D1    mov         eax,dword ptr [ebp-4]
 005154D4    mov         eax,dword ptr [eax+0C];TRectList.....:dword
 005154D7    test        eax,eax
>005154D9    jns         005154DE
 005154DB    add         eax,3
 005154DE    sar         eax,2
 005154E1    mov         dword ptr [ebp-8],eax
>005154E4    jmp         005154FF
 005154E6    mov         eax,dword ptr [ebp-4]
 005154E9    cmp         dword ptr [eax+0C],8;TRectList.....:dword
>005154ED    jle         005154F8
 005154EF    mov         dword ptr [ebp-8],20
>005154F6    jmp         005154FF
 005154F8    mov         dword ptr [ebp-8],8
 005154FF    mov         eax,dword ptr [ebp-4]
 00515502    mov         edx,dword ptr [eax+0C];TRectList.....:dword
 00515505    add         edx,dword ptr [ebp-8]
 00515508    mov         eax,dword ptr [ebp-4]
 0051550B    call        00515514
 00515510    pop         ecx
 00515511    pop         ecx
 00515512    pop         ebp
 00515513    ret
*}
end;

//00515514
{*procedure sub_00515514(?:TRectList; ?:?);
begin
 00515514    push        ebp
 00515515    mov         ebp,esp
 00515517    add         esp,0FFFFFFF8
 0051551A    mov         dword ptr [ebp-8],edx
 0051551D    mov         dword ptr [ebp-4],eax
 00515520    mov         eax,dword ptr [ebp-8]
 00515523    mov         edx,dword ptr [ebp-4]
 00515526    cmp         eax,dword ptr [edx+0C];TRectList.....:dword
>00515529    je          00515545
 0051552B    mov         edx,dword ptr [ebp-8]
 0051552E    shl         edx,4
 00515531    mov         eax,dword ptr [ebp-4]
 00515534    add         eax,4;TRectList.?f4:dword
 00515537    call        @ReallocMem
 0051553C    mov         eax,dword ptr [ebp-8]
 0051553F    mov         edx,dword ptr [ebp-4]
 00515542    mov         dword ptr [edx+0C],eax;TRectList.....:dword
 00515545    pop         ecx
 00515546    pop         ecx
 00515547    pop         ebp
 00515548    ret
end;*}

//0051554C
{*procedure sub_0051554C(?:TRectList; ?:?);
begin
 0051554C    push        ebp
 0051554D    mov         ebp,esp
 0051554F    add         esp,0FFFFFFF0
 00515552    mov         dword ptr [ebp-8],edx
 00515555    mov         dword ptr [ebp-4],eax
 00515558    mov         eax,dword ptr [ebp-8]
 0051555B    mov         edx,dword ptr [ebp-4]
 0051555E    cmp         eax,dword ptr [edx+0C];TRectList.....:dword
>00515561    jle         0051556E
 00515563    mov         edx,dword ptr [ebp-8]
 00515566    mov         eax,dword ptr [ebp-4]
 00515569    call        00515514
 0051556E    mov         eax,dword ptr [ebp-8]
 00515571    mov         edx,dword ptr [ebp-4]
 00515574    cmp         eax,dword ptr [edx+8];TRectList.?f8:dword
>00515577    jle         0051559F
 00515579    mov         eax,dword ptr [ebp-4]
 0051557C    mov         eax,dword ptr [eax+8];TRectList.?f8:dword
 0051557F    add         eax,eax
 00515581    mov         edx,dword ptr [ebp-4]
 00515584    mov         edx,dword ptr [edx+4];TRectList.?f4:dword
 00515587    lea         eax,[edx+eax*8]
 0051558A    mov         edx,dword ptr [ebp-8]
 0051558D    mov         ecx,dword ptr [ebp-4]
 00515590    sub         edx,dword ptr [ecx+8]
 00515593    shl         edx,4
 00515596    xor         ecx,ecx
 00515598    call        @FillChar
>0051559D    jmp         005155C7
 0051559F    mov         eax,dword ptr [ebp-4]
 005155A2    mov         eax,dword ptr [eax+8];TRectList.?f8:dword
 005155A5    dec         eax
 005155A6    mov         edx,dword ptr [ebp-8]
 005155A9    sub         edx,eax
>005155AB    jg          005155C7
 005155AD    dec         edx
 005155AE    mov         dword ptr [ebp-10],edx
 005155B1    mov         dword ptr [ebp-0C],eax
 005155B4    mov         edx,dword ptr [ebp-0C]
 005155B7    mov         eax,dword ptr [ebp-4]
 005155BA    call        00515430
 005155BF    dec         dword ptr [ebp-0C]
 005155C2    inc         dword ptr [ebp-10]
>005155C5    jne         005155B4
 005155C7    mov         eax,dword ptr [ebp-8]
 005155CA    mov         edx,dword ptr [ebp-4]
 005155CD    mov         dword ptr [edx+8],eax;TRectList.?f8:dword
 005155D0    mov         esp,ebp
 005155D2    pop         ebp
 005155D3    ret
end;*}

//005155D4
{*function sub_005155D4(?:TClassList; ?:?):?;
begin
 005155D4    push        ebp
 005155D5    mov         ebp,esp
 005155D7    add         esp,0FFFFFFF4
 005155DA    mov         dword ptr [ebp-8],edx
 005155DD    mov         dword ptr [ebp-4],eax
 005155E0    mov         edx,dword ptr [ebp-8]
 005155E3    mov         eax,dword ptr [ebp-4]
 005155E6    call        TList.Add
 005155EB    mov         dword ptr [ebp-0C],eax
 005155EE    mov         eax,dword ptr [ebp-0C]
 005155F1    mov         esp,ebp
 005155F3    pop         ebp
 005155F4    ret
end;*}

//005155F8
{*function sub_005155F8(?:TClassList; ?:String):?;
begin
 005155F8    push        ebp
 005155F9    mov         ebp,esp
 005155FB    add         esp,0FFFFFEE8
 00515601    xor         ecx,ecx
 00515603    mov         dword ptr [ebp-18],ecx
 00515606    mov         dword ptr [ebp-8],edx
 00515609    mov         dword ptr [ebp-4],eax
 0051560C    mov         eax,dword ptr [ebp-8]
 0051560F    call        @LStrAddRef
 00515614    xor         eax,eax
 00515616    push        ebp
 00515617    push        5156A6
 0051561C    push        dword ptr fs:[eax]
 0051561F    mov         dword ptr fs:[eax],esp
 00515622    xor         eax,eax
 00515624    mov         dword ptr [ebp-0C],eax
 00515627    mov         eax,dword ptr [ebp-4]
 0051562A    mov         eax,dword ptr [eax+8]
 0051562D    dec         eax
 0051562E    test        eax,eax
>00515630    jl          00515688
 00515632    inc         eax
 00515633    mov         dword ptr [ebp-14],eax
 00515636    mov         dword ptr [ebp-10],0
 0051563D    lea         edx,[ebp-118]
 00515643    mov         eax,dword ptr [ebp-4]
 00515646    mov         eax,dword ptr [eax+4]
 00515649    mov         ecx,dword ptr [ebp-10]
 0051564C    mov         eax,dword ptr [eax+ecx*4]
 0051564F    call        TObject.ClassName
 00515654    lea         edx,[ebp-118]
 0051565A    lea         eax,[ebp-18]
 0051565D    call        @LStrFromString
 00515662    mov         eax,dword ptr [ebp-18]
 00515665    mov         edx,dword ptr [ebp-8]
 00515668    call        @LStrCmp
>0051566D    jne         00515680
 0051566F    mov         eax,dword ptr [ebp-4]
 00515672    mov         eax,dword ptr [eax+4]
 00515675    mov         edx,dword ptr [ebp-10]
 00515678    mov         eax,dword ptr [eax+edx*4]
 0051567B    mov         dword ptr [ebp-0C],eax
>0051567E    jmp         00515688
 00515680    inc         dword ptr [ebp-10]
 00515683    dec         dword ptr [ebp-14]
>00515686    jne         0051563D
 00515688    xor         eax,eax
 0051568A    pop         edx
 0051568B    pop         ecx
 0051568C    pop         ecx
 0051568D    mov         dword ptr fs:[eax],edx
 00515690    push        5156AD
 00515695    lea         eax,[ebp-18]
 00515698    call        @LStrClr
 0051569D    lea         eax,[ebp-8]
 005156A0    call        @LStrClr
 005156A5    ret
>005156A6    jmp         @HandleFinally
>005156AB    jmp         00515695
 005156AD    mov         eax,dword ptr [ebp-0C]
 005156B0    mov         esp,ebp
 005156B2    pop         ebp
 005156B3    ret
end;*}

end.