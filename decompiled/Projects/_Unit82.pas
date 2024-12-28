//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit82;

interface

uses
  SysUtils, Classes;

type
  EOleError = class(Exception)
  end;
  EOleSysError = class(EOleError)
    //constructor Create(?:?; ?:?);//004EC788
  end;
  EOleException = class(EOleSysError)
  public
    f10:String;//f10
    f14:String;//f14
    //constructor Create(?:?; ?:?; ?:?; ?:?);//004EC864
  end;
    //procedure sub_004EC71C(?:?; ?:?);//004EC71C
    //procedure sub_004EC910(?:?);//004EC910
    procedure sub_004EC934(?:HRESULT);//004EC934
    procedure sub_004EC954;//004EC954
    //procedure sub_004ECB74(?:?; ?:?; ?:?; ?:?; ?:?);//004ECB74
    //procedure sub_004ECF30(?:?);//004ECF30
    //procedure sub_004ECF64(?:?; ?:Integer; ?:?; ?:?);//004ECF64
    procedure sub_004ED068;//004ED068
    //procedure sub_004ED084(?:?; ?:?; ?:?; ?:?);//004ED084
    //procedure sub_004ED130(?:?; ?:?; ?:?; ?:?);//004ED130
    //procedure sub_004ED228(?:?; ?:?);//004ED228
    //procedure sub_004ED24C(?:?);//004ED24C
    //procedure sub_004ED268(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004ED268
    //procedure sub_004ED34C(?:?; ?:?; ?:?; ?:?);//004ED34C
    procedure sub_004ED428;//004ED428

implementation

//004EC71C
{*procedure sub_004EC71C(?:?; ?:?);
begin
 004EC71C    push        ebp
 004EC71D    mov         ebp,esp
 004EC71F    add         esp,0FFFFFFF4
 004EC722    mov         dword ptr [ebp-8],edx
 004EC725    mov         dword ptr [ebp-4],eax
 004EC728    mov         eax,dword ptr [ebp-8]
 004EC72B    mov         edx,dword ptr [ebp-4]
 004EC72E    call        @LStrAsg
 004EC733    mov         eax,dword ptr [ebp-8]
 004EC736    mov         eax,dword ptr [eax]
 004EC738    call        0040CB00
 004EC73D    mov         dword ptr [ebp-0C],eax
>004EC740    jmp         004EC766
 004EC742    mov         eax,dword ptr [ebp-8]
 004EC745    mov         eax,dword ptr [eax]
 004EC747    call        @LStrToPChar
 004EC74C    mov         edx,dword ptr [ebp-0C]
 004EC74F    sub         edx,eax
 004EC751    mov         eax,dword ptr [ebp-8]
 004EC754    call        @LStrSetLength
 004EC759    mov         eax,dword ptr [ebp-8]
 004EC75C    mov         eax,dword ptr [eax]
 004EC75E    call        0040CB00
 004EC763    mov         dword ptr [ebp-0C],eax
 004EC766    mov         eax,dword ptr [ebp-8]
 004EC769    mov         eax,dword ptr [eax]
 004EC76B    call        @LStrLen
 004EC770    test        eax,eax
>004EC772    jle         004EC781
 004EC774    mov         eax,dword ptr [ebp-0C]
 004EC777    mov         al,byte ptr [eax]
 004EC779    sub         al,21
>004EC77B    jb          004EC742
 004EC77D    sub         al,0D
>004EC77F    je          004EC742
 004EC781    mov         esp,ebp
 004EC783    pop         ebp
 004EC784    ret
end;*}

//004EC788
{*constructor EOleSysError.Create(?:?; ?:?);
begin
 004EC788    push        ebp
 004EC789    mov         ebp,esp
 004EC78B    add         esp,0FFFFFFE4
 004EC78E    push        ebx
 004EC78F    xor         ebx,ebx
 004EC791    mov         dword ptr [ebp-14],ebx
 004EC794    mov         dword ptr [ebp-10],ebx
 004EC797    test        dl,dl
>004EC799    je          004EC7A3
 004EC79B    add         esp,0FFFFFFF0
 004EC79E    call        @ClassCreate
 004EC7A3    mov         dword ptr [ebp-0C],ecx
 004EC7A6    mov         byte ptr [ebp-5],dl
 004EC7A9    mov         dword ptr [ebp-4],eax
 004EC7AC    xor         eax,eax
 004EC7AE    push        ebp
 004EC7AF    push        4EC838
 004EC7B4    push        dword ptr fs:[eax]
 004EC7B7    mov         dword ptr fs:[eax],esp
 004EC7BA    lea         eax,[ebp-10]
 004EC7BD    mov         edx,dword ptr [ebp-0C]
 004EC7C0    call        @LStrLAsg
 004EC7C5    cmp         dword ptr [ebp-10],0
>004EC7C9    jne         004EC803
 004EC7CB    lea         edx,[ebp-10]
 004EC7CE    mov         eax,dword ptr [ebp+0C]
 004EC7D1    call        SysErrorMessage
 004EC7D6    cmp         dword ptr [ebp-10],0
>004EC7DA    jne         004EC803
 004EC7DC    push        0
 004EC7DE    lea         edx,[ebp-14]
 004EC7E1    mov         eax,[0056E098];^SOleError:TResStringRec
 004EC7E6    call        LoadResString
 004EC7EB    mov         edx,dword ptr [ebp-14]
 004EC7EE    mov         eax,dword ptr [ebp+0C]
 004EC7F1    mov         dword ptr [ebp-1C],eax
 004EC7F4    mov         byte ptr [ebp-18],0
 004EC7F8    lea         ecx,[ebp-1C]
 004EC7FB    lea         eax,[ebp-10]
 004EC7FE    call        0040D658
 004EC803    mov         eax,dword ptr [ebp+8]
 004EC806    push        eax
 004EC807    mov         ecx,dword ptr [ebp-10]
 004EC80A    xor         edx,edx
 004EC80C    mov         eax,dword ptr [ebp-4]
 004EC80F    call        00410764
 004EC814    mov         eax,dword ptr [ebp-4]
 004EC817    mov         edx,dword ptr [ebp+0C]
 004EC81A    mov         dword ptr [eax+0C],edx
 004EC81D    xor         eax,eax
 004EC81F    pop         edx
 004EC820    pop         ecx
 004EC821    pop         ecx
 004EC822    mov         dword ptr fs:[eax],edx
 004EC825    push        4EC83F
 004EC82A    lea         eax,[ebp-14]
 004EC82D    mov         edx,2
 004EC832    call        @LStrArrayClr
 004EC837    ret
>004EC838    jmp         @HandleFinally
>004EC83D    jmp         004EC82A
 004EC83F    mov         eax,dword ptr [ebp-4]
 004EC842    cmp         byte ptr [ebp-5],0
>004EC846    je          004EC857
 004EC848    call        @AfterConstruction
 004EC84D    pop         dword ptr fs:[0]
 004EC854    add         esp,0C
 004EC857    mov         eax,dword ptr [ebp-4]
 004EC85A    pop         ebx
 004EC85B    mov         esp,ebp
 004EC85D    pop         ebp
 004EC85E    ret         8
end;*}

//004EC864
{*constructor EOleException.Create(?:?; ?:?; ?:?; ?:?);
begin
 004EC864    push        ebp
 004EC865    mov         ebp,esp
 004EC867    add         esp,0FFFFFFF0
 004EC86A    push        ebx
 004EC86B    xor         ebx,ebx
 004EC86D    mov         dword ptr [ebp-10],ebx
 004EC870    test        dl,dl
>004EC872    je          004EC87C
 004EC874    add         esp,0FFFFFFF0
 004EC877    call        @ClassCreate
 004EC87C    mov         dword ptr [ebp-0C],ecx
 004EC87F    mov         byte ptr [ebp-5],dl
 004EC882    mov         dword ptr [ebp-4],eax
 004EC885    xor         eax,eax
 004EC887    push        ebp
 004EC888    push        4EC8E5
 004EC88D    push        dword ptr fs:[eax]
 004EC890    mov         dword ptr fs:[eax],esp
 004EC893    mov         eax,dword ptr [ebp+14]
 004EC896    push        eax
 004EC897    mov         eax,dword ptr [ebp+8]
 004EC89A    push        eax
 004EC89B    lea         edx,[ebp-10]
 004EC89E    mov         eax,dword ptr [ebp-0C]
 004EC8A1    call        004EC71C
 004EC8A6    mov         ecx,dword ptr [ebp-10]
 004EC8A9    xor         edx,edx
 004EC8AB    mov         eax,dword ptr [ebp-4]
 004EC8AE    call        EOleSysError.Create
 004EC8B3    mov         eax,dword ptr [ebp-4]
 004EC8B6    add         eax,10
 004EC8B9    mov         edx,dword ptr [ebp+10]
 004EC8BC    call        @LStrAsg
 004EC8C1    mov         eax,dword ptr [ebp-4]
 004EC8C4    add         eax,14
 004EC8C7    mov         edx,dword ptr [ebp+0C]
 004EC8CA    call        @LStrAsg
 004EC8CF    xor         eax,eax
 004EC8D1    pop         edx
 004EC8D2    pop         ecx
 004EC8D3    pop         ecx
 004EC8D4    mov         dword ptr fs:[eax],edx
 004EC8D7    push        4EC8EC
 004EC8DC    lea         eax,[ebp-10]
 004EC8DF    call        @LStrClr
 004EC8E4    ret
>004EC8E5    jmp         @HandleFinally
>004EC8EA    jmp         004EC8DC
 004EC8EC    mov         eax,dword ptr [ebp-4]
 004EC8EF    cmp         byte ptr [ebp-5],0
>004EC8F3    je          004EC904
 004EC8F5    call        @AfterConstruction
 004EC8FA    pop         dword ptr fs:[0]
 004EC901    add         esp,0C
 004EC904    mov         eax,dword ptr [ebp-4]
 004EC907    pop         ebx
 004EC908    mov         esp,ebp
 004EC90A    pop         ebp
 004EC90B    ret         10
end;*}

//004EC910
{*procedure sub_004EC910(?:?);
begin
 004EC910    push        ebp
 004EC911    mov         ebp,esp
 004EC913    push        ecx
 004EC914    mov         dword ptr [ebp-4],eax
 004EC917    mov         eax,dword ptr [ebp-4]
 004EC91A    push        eax
 004EC91B    push        0
 004EC91D    xor         ecx,ecx
 004EC91F    mov         dl,1
 004EC921    mov         eax,[004EC608];EOleSysError
 004EC926    call        EOleSysError.Create;EOleSysError.Create
 004EC92B    call        @RaiseExcept
 004EC930    pop         ecx
 004EC931    pop         ebp
 004EC932    ret
end;*}

//004EC934
procedure sub_004EC934(?:HRESULT);
begin
{*
 004EC934    push        ebp
 004EC935    mov         ebp,esp
 004EC937    push        ecx
 004EC938    mov         dword ptr [ebp-4],eax
 004EC93B    mov         eax,dword ptr [ebp-4]
 004EC93E    call        0041CCDC
 004EC943    test        al,al
>004EC945    jne         004EC94F
 004EC947    mov         eax,dword ptr [ebp-4]
 004EC94A    call        004EC910
 004EC94F    pop         ecx
 004EC950    pop         ebp
 004EC951    ret
*}
end;

//004EC954
procedure sub_004EC954;
begin
{*
 004EC954    push        ebp
 004EC955    mov         ebp,esp
 004EC957    push        ecx
 004EC958    push        4EC9E0;'ole32.dll'
 004EC95D    call        kernel32.GetModuleHandleA
 004EC962    mov         dword ptr [ebp-4],eax
 004EC965    cmp         dword ptr [ebp-4],0
>004EC969    je          004EC9DD
 004EC96B    push        4EC9EC;'CoCreateInstanceEx'
 004EC970    mov         eax,dword ptr [ebp-4]
 004EC973    push        eax
 004EC974    call        kernel32.GetProcAddress
 004EC979    mov         [0056D0B4],eax;gvar_0056D0B4:Pointer
 004EC97E    push        4ECA00;'CoInitializeEx'
 004EC983    mov         eax,dword ptr [ebp-4]
 004EC986    push        eax
 004EC987    call        kernel32.GetProcAddress
 004EC98C    mov         [0056D0B8],eax;gvar_0056D0B8:Pointer
 004EC991    push        4ECA10;'CoAddRefServerProcess'
 004EC996    mov         eax,dword ptr [ebp-4]
 004EC999    push        eax
 004EC99A    call        kernel32.GetProcAddress
 004EC99F    mov         [0056D0BC],eax;gvar_0056D0BC:Pointer
 004EC9A4    push        4ECA28;'CoReleaseServerProcess'
 004EC9A9    mov         eax,dword ptr [ebp-4]
 004EC9AC    push        eax
 004EC9AD    call        kernel32.GetProcAddress
 004EC9B2    mov         [0056D0C0],eax;gvar_0056D0C0:Pointer
 004EC9B7    push        4ECA40;'CoResumeClassObjects'
 004EC9BC    mov         eax,dword ptr [ebp-4]
 004EC9BF    push        eax
 004EC9C0    call        kernel32.GetProcAddress
 004EC9C5    mov         [0056D0C4],eax;gvar_0056D0C4:Pointer
 004EC9CA    push        4ECA58;'CoSuspendClassObjects'
 004EC9CF    mov         eax,dword ptr [ebp-4]
 004EC9D2    push        eax
 004EC9D3    call        kernel32.GetProcAddress
 004EC9D8    mov         [0056D0C8],eax;gvar_0056D0C8:Pointer
 004EC9DD    pop         ecx
 004EC9DE    pop         ebp
 004EC9DF    ret
*}
end;

//004ECB74
{*procedure sub_004ECB74(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004ECB74    push        ebp
 004ECB75    mov         ebp,esp
 004ECB77    add         esp,0FFFFF984
 004ECB7D    mov         dword ptr [ebp-0C],ecx
 004ECB80    mov         dword ptr [ebp-8],edx
 004ECB83    mov         dword ptr [ebp-4],eax
 004ECB86    lea         eax,[ebp-7C]
 004ECB89    mov         edx,dword ptr ds:[41CC20];tagEXCEPINFO
 004ECB8F    call        @AddRefRecord
 004ECB94    xor         eax,eax
 004ECB96    push        ebp
 004ECB97    push        4ECF23
 004ECB9C    push        dword ptr fs:[eax]
 004ECB9F    mov         dword ptr fs:[eax],esp
 004ECBA2    xor         eax,eax
 004ECBA4    mov         dword ptr [ebp-24],eax
 004ECBA7    xor         eax,eax
 004ECBA9    push        ebp
 004ECBAA    push        4ECF00
 004ECBAF    push        dword ptr fs:[eax]
 004ECBB2    mov         dword ptr fs:[eax],esp
 004ECBB5    mov         eax,dword ptr [ebp-8]
 004ECBB8    movzx       eax,byte ptr [eax+1]
 004ECBBC    mov         dword ptr [ebp-20],eax
 004ECBBF    cmp         dword ptr [ebp-20],40
>004ECBC3    jle         004ECBDC
 004ECBC5    mov         ecx,dword ptr ds:[56E1D8];^STooManyParams:TResStringRec
 004ECBCB    mov         dl,1
 004ECBCD    mov         eax,[004EC664];EOleException
 004ECBD2    call        Exception.Create;EOleException.Create
 004ECBD7    call        @RaiseExcept
 004ECBDC    cmp         dword ptr [ebp-20],0
>004ECBE0    je          004ECDD9
 004ECBE6    mov         eax,dword ptr [ebp+0C]
 004ECBE9    mov         dword ptr [ebp-38],eax
 004ECBEC    mov         eax,dword ptr [ebp-20]
 004ECBEF    add         eax,eax
 004ECBF1    lea         eax,[ebp+eax*8-67C]
 004ECBF8    mov         dword ptr [ebp-3C],eax
 004ECBFB    xor         eax,eax
 004ECBFD    mov         dword ptr [ebp-10],eax
 004ECC00    sub         dword ptr [ebp-3C],10
 004ECC04    mov         eax,dword ptr [ebp-8]
 004ECC07    mov         edx,dword ptr [ebp-10]
 004ECC0A    mov         al,byte ptr [eax+edx+3]
 004ECC0E    and         al,7F
 004ECC10    and         eax,0FF
 004ECC15    mov         dword ptr [ebp-1C],eax
 004ECC18    mov         eax,dword ptr [ebp-8]
 004ECC1B    mov         edx,dword ptr [ebp-10]
 004ECC1E    mov         al,byte ptr [eax+edx+3]
 004ECC22    and         al,80
 004ECC24    mov         byte ptr [ebp-31],al
 004ECC27    cmp         dword ptr [ebp-1C],0A
>004ECC2B    jne         004ECC45
 004ECC2D    mov         eax,dword ptr [ebp-3C]
 004ECC30    mov         dword ptr [eax],0A
 004ECC36    mov         eax,dword ptr [ebp-3C]
 004ECC39    mov         dword ptr [eax+8],80020004
>004ECC40    jmp         004ECDCA
 004ECC45    cmp         dword ptr [ebp-1C],48
>004ECC49    jne         004ECCC1
 004ECC4B    mov         eax,dword ptr [ebp-24]
 004ECC4E    lea         eax,[ebp+eax*8-27C]
 004ECC55    mov         dword ptr [ebp-44],eax
 004ECC58    cmp         byte ptr [ebp-31],0
>004ECC5C    je          004ECC8E
 004ECC5E    mov         eax,dword ptr [ebp-38]
 004ECC61    mov         eax,dword ptr [eax]
 004ECC63    mov         eax,dword ptr [eax]
 004ECC65    call        StringToOleStr
 004ECC6A    mov         edx,dword ptr [ebp-44]
 004ECC6D    mov         dword ptr [edx],eax
 004ECC6F    mov         eax,dword ptr [ebp-38]
 004ECC72    mov         eax,dword ptr [eax]
 004ECC74    mov         edx,dword ptr [ebp-44]
 004ECC77    mov         dword ptr [edx+4],eax
 004ECC7A    mov         eax,dword ptr [ebp-3C]
 004ECC7D    mov         dword ptr [eax],4008
 004ECC83    mov         eax,dword ptr [ebp-44]
 004ECC86    mov         edx,dword ptr [ebp-3C]
 004ECC89    mov         dword ptr [edx+8],eax
>004ECC8C    jmp         004ECCB9
 004ECC8E    mov         eax,dword ptr [ebp-38]
 004ECC91    mov         eax,dword ptr [eax]
 004ECC93    call        StringToOleStr
 004ECC98    mov         edx,dword ptr [ebp-44]
 004ECC9B    mov         dword ptr [edx],eax
 004ECC9D    mov         eax,dword ptr [ebp-44]
 004ECCA0    xor         edx,edx
 004ECCA2    mov         dword ptr [eax+4],edx
 004ECCA5    mov         eax,dword ptr [ebp-3C]
 004ECCA8    mov         dword ptr [eax],8
 004ECCAE    mov         eax,dword ptr [ebp-44]
 004ECCB1    mov         eax,dword ptr [eax]
 004ECCB3    mov         edx,dword ptr [ebp-3C]
 004ECCB6    mov         dword ptr [edx+8],eax
 004ECCB9    inc         dword ptr [ebp-24]
>004ECCBC    jmp         004ECDC6
 004ECCC1    cmp         byte ptr [ebp-31],0
>004ECCC5    je          004ECD0C
 004ECCC7    cmp         dword ptr [ebp-1C],0C
>004ECCCB    jne         004ECCEF
 004ECCCD    mov         eax,dword ptr [ebp-38]
 004ECCD0    mov         eax,dword ptr [eax]
 004ECCD2    cmp         word ptr [eax],100
>004ECCD7    jne         004ECCEF
 004ECCD9    mov         eax,dword ptr [ebp-38]
 004ECCDC    mov         eax,dword ptr [eax]
 004ECCDE    mov         edx,eax
 004ECCE0    mov         eax,dword ptr [ebp-38]
 004ECCE3    mov         eax,dword ptr [eax]
 004ECCE5    mov         ecx,8
 004ECCEA    call        @VarCast
 004ECCEF    mov         eax,dword ptr [ebp-1C]
 004ECCF2    or          eax,4000
 004ECCF7    mov         edx,dword ptr [ebp-3C]
 004ECCFA    mov         dword ptr [edx],eax
 004ECCFC    mov         eax,dword ptr [ebp-38]
 004ECCFF    mov         eax,dword ptr [eax]
 004ECD01    mov         edx,dword ptr [ebp-3C]
 004ECD04    mov         dword ptr [edx+8],eax
>004ECD07    jmp         004ECDC6
 004ECD0C    cmp         dword ptr [ebp-1C],0C
>004ECD10    jne         004ECD98
 004ECD16    mov         eax,dword ptr [ebp-38]
 004ECD19    cmp         word ptr [eax],100
>004ECD1E    jne         004ECD5E
 004ECD20    mov         eax,dword ptr [ebp-24]
 004ECD23    lea         eax,[ebp+eax*8-27C]
 004ECD2A    mov         dword ptr [ebp-48],eax
 004ECD2D    mov         eax,dword ptr [ebp-38]
 004ECD30    mov         eax,dword ptr [eax+8]
 004ECD33    call        StringToOleStr
 004ECD38    mov         edx,dword ptr [ebp-48]
 004ECD3B    mov         dword ptr [edx],eax
 004ECD3D    mov         eax,dword ptr [ebp-48]
 004ECD40    xor         edx,edx
 004ECD42    mov         dword ptr [eax+4],edx
 004ECD45    mov         eax,dword ptr [ebp-3C]
 004ECD48    mov         dword ptr [eax],8
 004ECD4E    mov         eax,dword ptr [ebp-48]
 004ECD51    mov         eax,dword ptr [eax]
 004ECD53    mov         edx,dword ptr [ebp-3C]
 004ECD56    mov         dword ptr [edx+8],eax
 004ECD59    inc         dword ptr [ebp-24]
>004ECD5C    jmp         004ECDC6
 004ECD5E    mov         eax,dword ptr [ebp-38]
 004ECD61    mov         dword ptr [ebp-40],eax
 004ECD64    mov         eax,dword ptr [ebp-40]
 004ECD67    mov         eax,dword ptr [eax]
 004ECD69    mov         edx,dword ptr [ebp-3C]
 004ECD6C    mov         dword ptr [edx],eax
 004ECD6E    mov         eax,dword ptr [ebp-40]
 004ECD71    mov         eax,dword ptr [eax+4]
 004ECD74    mov         edx,dword ptr [ebp-3C]
 004ECD77    mov         dword ptr [edx+4],eax
 004ECD7A    mov         eax,dword ptr [ebp-40]
 004ECD7D    mov         eax,dword ptr [eax+8]
 004ECD80    mov         edx,dword ptr [ebp-3C]
 004ECD83    mov         dword ptr [edx+8],eax
 004ECD86    mov         eax,dword ptr [ebp-40]
 004ECD89    mov         eax,dword ptr [eax+0C]
 004ECD8C    mov         edx,dword ptr [ebp-3C]
 004ECD8F    mov         dword ptr [edx+0C],eax
 004ECD92    add         dword ptr [ebp-38],0C
>004ECD96    jmp         004ECDC6
 004ECD98    mov         eax,dword ptr [ebp-3C]
 004ECD9B    mov         edx,dword ptr [ebp-1C]
 004ECD9E    mov         dword ptr [eax],edx
 004ECDA0    mov         eax,dword ptr [ebp-38]
 004ECDA3    mov         eax,dword ptr [eax]
 004ECDA5    mov         edx,dword ptr [ebp-3C]
 004ECDA8    mov         dword ptr [edx+8],eax
 004ECDAB    cmp         dword ptr [ebp-1C],5
>004ECDAF    jl          004ECDC6
 004ECDB1    cmp         dword ptr [ebp-1C],7
>004ECDB5    jg          004ECDC6
 004ECDB7    add         dword ptr [ebp-38],4
 004ECDBB    mov         eax,dword ptr [ebp-38]
 004ECDBE    mov         eax,dword ptr [eax]
 004ECDC0    mov         edx,dword ptr [ebp-3C]
 004ECDC3    mov         dword ptr [edx+0C],eax
 004ECDC6    add         dword ptr [ebp-38],4
 004ECDCA    inc         dword ptr [ebp-10]
 004ECDCD    mov         eax,dword ptr [ebp-10]
 004ECDD0    cmp         eax,dword ptr [ebp-20]
>004ECDD3    jne         004ECC00
 004ECDD9    lea         eax,[ebp-67C]
 004ECDDF    mov         dword ptr [ebp-5C],eax
 004ECDE2    mov         eax,dword ptr [ebp-0C]
 004ECDE5    add         eax,4
 004ECDE8    mov         dword ptr [ebp-58],eax
 004ECDEB    mov         eax,dword ptr [ebp-20]
 004ECDEE    mov         dword ptr [ebp-54],eax
 004ECDF1    mov         eax,dword ptr [ebp-8]
 004ECDF4    movzx       eax,byte ptr [eax+2]
 004ECDF8    mov         dword ptr [ebp-50],eax
 004ECDFB    mov         eax,dword ptr [ebp-0C]
 004ECDFE    mov         eax,dword ptr [eax]
 004ECE00    mov         dword ptr [ebp-28],eax
 004ECE03    mov         eax,dword ptr [ebp-8]
 004ECE06    movzx       eax,byte ptr [eax]
 004ECE09    mov         dword ptr [ebp-2C],eax
 004ECE0C    cmp         dword ptr [ebp-2C],4
>004ECE10    jne         004ECE3B
 004ECE12    mov         eax,dword ptr [ebp-67C]
 004ECE18    and         eax,0FFF
 004ECE1D    cmp         eax,9
>004ECE20    jne         004ECE29
 004ECE22    mov         dword ptr [ebp-2C],8
 004ECE29    mov         eax,dword ptr [ebp-0C]
 004ECE2C    mov         dword ptr [eax],0FFFFFFFD
 004ECE32    sub         dword ptr [ebp-58],4
 004ECE36    inc         dword ptr [ebp-50]
>004ECE39    jmp         004ECE54
 004ECE3B    cmp         dword ptr [ebp-2C],1
>004ECE3F    jne         004ECE54
 004ECE41    cmp         dword ptr [ebp-20],0
>004ECE45    jne         004ECE54
 004ECE47    cmp         dword ptr [ebp+8],0
>004ECE4B    je          004ECE54
 004ECE4D    mov         dword ptr [ebp-2C],3
 004ECE54    push        0
 004ECE56    lea         eax,[ebp-7C]
 004ECE59    push        eax
 004ECE5A    mov         eax,dword ptr [ebp+8]
 004ECE5D    push        eax
 004ECE5E    lea         eax,[ebp-5C]
 004ECE61    push        eax
 004ECE62    mov         ax,word ptr [ebp-2C]
 004ECE66    push        eax
 004ECE67    push        0
 004ECE69    mov         eax,[0056E03C];^gvar_0056BC78
 004ECE6E    push        eax
 004ECE6F    mov         eax,dword ptr [ebp-28]
 004ECE72    push        eax
 004ECE73    mov         eax,dword ptr [ebp-4]
 004ECE76    push        eax
 004ECE77    mov         eax,dword ptr [eax]
 004ECE79    call        dword ptr [eax+18]
 004ECE7C    mov         dword ptr [ebp-30],eax
 004ECE7F    cmp         dword ptr [ebp-30],0
>004ECE83    je          004ECE90
 004ECE85    lea         edx,[ebp-7C]
 004ECE88    mov         eax,dword ptr [ebp-30]
 004ECE8B    call        004ED228
 004ECE90    mov         eax,dword ptr [ebp-24]
 004ECE93    mov         dword ptr [ebp-14],eax
 004ECE96    cmp         dword ptr [ebp-14],0
>004ECE9A    je          004ECECD
 004ECE9C    dec         dword ptr [ebp-14]
 004ECE9F    mov         eax,dword ptr [ebp-14]
 004ECEA2    lea         eax,[ebp+eax*8-27C]
 004ECEA9    mov         dword ptr [ebp-4C],eax
 004ECEAC    mov         eax,dword ptr [ebp-4C]
 004ECEAF    cmp         dword ptr [eax+4],0
>004ECEB3    je          004ECEC7
 004ECEB5    mov         eax,dword ptr [ebp-4C]
 004ECEB8    mov         eax,dword ptr [eax+4]
 004ECEBB    mov         edx,eax
 004ECEBD    mov         eax,dword ptr [ebp-4C]
 004ECEC0    mov         eax,dword ptr [eax]
 004ECEC2    call        OleStrToStrVar
 004ECEC7    cmp         dword ptr [ebp-14],0
>004ECECB    jne         004ECE9C
 004ECECD    xor         eax,eax
 004ECECF    pop         edx
 004ECED0    pop         ecx
 004ECED1    pop         ecx
 004ECED2    mov         dword ptr fs:[eax],edx
 004ECED5    push        4ECF07
 004ECEDA    mov         eax,dword ptr [ebp-24]
 004ECEDD    mov         dword ptr [ebp-18],eax
 004ECEE0    cmp         dword ptr [ebp-18],0
>004ECEE4    je          004ECEFF
 004ECEE6    dec         dword ptr [ebp-18]
 004ECEE9    mov         eax,dword ptr [ebp-18]
 004ECEEC    mov         eax,dword ptr [ebp+eax*8-27C]
 004ECEF3    push        eax
 004ECEF4    call        oleaut32.SysFreeString
 004ECEF9    cmp         dword ptr [ebp-18],0
>004ECEFD    jne         004ECEE6
 004ECEFF    ret
>004ECF00    jmp         @HandleFinally
>004ECF05    jmp         004ECEDA
 004ECF07    xor         eax,eax
 004ECF09    pop         edx
 004ECF0A    pop         ecx
 004ECF0B    pop         ecx
 004ECF0C    mov         dword ptr fs:[eax],edx
 004ECF0F    push        4ECF2A
 004ECF14    lea         eax,[ebp-7C]
 004ECF17    mov         edx,dword ptr ds:[41CC20];tagEXCEPINFO
 004ECF1D    call        @FinalizeRecord
 004ECF22    ret
>004ECF23    jmp         @HandleFinally
>004ECF28    jmp         004ECF14
 004ECF2A    mov         esp,ebp
 004ECF2C    pop         ebp
 004ECF2D    ret         8
end;*}

//004ECF30
{*procedure sub_004ECF30(?:?);
begin
 004ECF30    push        ebp
 004ECF31    mov         ebp,esp
 004ECF33    add         esp,0FFFFFFF8
 004ECF36    mov         eax,dword ptr [ebp+8]
 004ECF39    mov         eax,dword ptr [eax-4]
 004ECF3C    mov         dword ptr [ebp-8],eax
 004ECF3F    mov         byte ptr [ebp-4],6
 004ECF43    lea         eax,[ebp-8]
 004ECF46    push        eax
 004ECF47    push        0
 004ECF49    mov         ecx,dword ptr ds:[56E478];^SNoMethod:TResStringRec
 004ECF4F    mov         dl,1
 004ECF51    mov         eax,[004EC5B0];EOleError
 004ECF56    call        Exception.CreateResFmt;EOleError.Create
 004ECF5B    call        @RaiseExcept
 004ECF60    pop         ecx
 004ECF61    pop         ecx
 004ECF62    pop         ebp
 004ECF63    ret
end;*}

//004ECF64
{*procedure sub_004ECF64(?:?; ?:Integer; ?:?; ?:?);
begin
 004ECF64    push        ebp
 004ECF65    mov         ebp,esp
 004ECF67    add         esp,0FFFFFFD4
 004ECF6A    mov         dword ptr [ebp-0C],ecx
 004ECF6D    mov         dword ptr [ebp-4],edx
 004ECF70    mov         dword ptr [ebp-1C],eax
 004ECF73    mov         eax,dword ptr [ebp-4]
 004ECF76    mov         dword ptr [ebp-28],eax
 004ECF79    xor         eax,eax
 004ECF7B    mov         dword ptr [ebp-20],eax
 004ECF7E    mov         dword ptr [ebp-8],esp
 004ECF81    mov         eax,dword ptr [ebp-0C]
 004ECF84    inc         eax
 004ECF85    shl         eax,2
 004ECF88    sub         esp,eax
 004ECF8A    lea         eax,[ebp-10]
 004ECF8D    mov         dword ptr [eax],esp
 004ECF8F    mov         eax,dword ptr [ebp-28]
 004ECF92    call        StrLen
 004ECF97    mov         dword ptr [ebp-24],eax
 004ECF9A    push        0
 004ECF9C    push        0
 004ECF9E    mov         eax,dword ptr [ebp-24]
 004ECFA1    push        eax
 004ECFA2    mov         eax,dword ptr [ebp-28]
 004ECFA5    push        eax
 004ECFA6    push        0
 004ECFA8    push        0
 004ECFAA    call        kernel32.MultiByteToWideChar
 004ECFAF    inc         eax
 004ECFB0    mov         dword ptr [ebp-14],eax
 004ECFB3    mov         eax,dword ptr [ebp-14]
 004ECFB6    add         eax,eax
 004ECFB8    add         eax,3
 004ECFBB    and         eax,0FFFFFFFC
 004ECFBE    sub         esp,eax
 004ECFC0    lea         eax,[ebp-18]
 004ECFC3    mov         dword ptr [eax],esp
 004ECFC5    cmp         dword ptr [ebp-20],0
>004ECFC9    jne         004ECFD5
 004ECFCB    mov         eax,dword ptr [ebp-10]
 004ECFCE    mov         edx,dword ptr [ebp-18]
 004ECFD1    mov         dword ptr [eax],edx
>004ECFD3    jmp         004ECFE4
 004ECFD5    mov         eax,dword ptr [ebp-0C]
 004ECFD8    sub         eax,dword ptr [ebp-20]
 004ECFDB    mov         edx,dword ptr [ebp-10]
 004ECFDE    mov         ecx,dword ptr [ebp-18]
 004ECFE1    mov         dword ptr [edx+eax*4],ecx
 004ECFE4    mov         eax,dword ptr [ebp-14]
 004ECFE7    push        eax
 004ECFE8    mov         eax,dword ptr [ebp-18]
 004ECFEB    push        eax
 004ECFEC    mov         eax,dword ptr [ebp-24]
 004ECFEF    push        eax
 004ECFF0    mov         eax,dword ptr [ebp-28]
 004ECFF3    push        eax
 004ECFF4    push        0
 004ECFF6    push        0
 004ECFF8    call        kernel32.MultiByteToWideChar
 004ECFFD    mov         eax,dword ptr [ebp-18]
 004ED000    mov         edx,dword ptr [ebp-14]
 004ED003    mov         word ptr [eax+edx*2-2],0
 004ED00A    mov         eax,dword ptr [ebp-24]
 004ED00D    inc         eax
 004ED00E    add         dword ptr [ebp-28],eax
 004ED011    inc         dword ptr [ebp-20]
 004ED014    mov         eax,dword ptr [ebp-20]
 004ED017    cmp         eax,dword ptr [ebp-0C]
>004ED01A    jne         004ECF8F
 004ED020    mov         eax,dword ptr [ebp+8]
 004ED023    push        eax
 004ED024    call        kernel32.GetThreadLocale
 004ED029    push        eax
 004ED02A    mov         eax,dword ptr [ebp-0C]
 004ED02D    push        eax
 004ED02E    mov         eax,dword ptr [ebp-10]
 004ED031    push        eax
 004ED032    mov         eax,[0056E03C];^gvar_0056BC78
 004ED037    push        eax
 004ED038    mov         eax,dword ptr [ebp-1C]
 004ED03B    push        eax
 004ED03C    mov         eax,dword ptr [eax]
 004ED03E    call        dword ptr [eax+14]
 004ED041    mov         dword ptr [ebp-2C],eax
 004ED044    cmp         dword ptr [ebp-2C],80020006
>004ED04B    jne         004ED056
 004ED04D    push        ebp
 004ED04E    call        004ECF30
 004ED053    pop         ecx
>004ED054    jmp         004ED05E
 004ED056    mov         eax,dword ptr [ebp-2C]
 004ED059    call        004EC934
 004ED05E    mov         esp,dword ptr [ebp-8]
 004ED061    mov         esp,ebp
 004ED063    pop         ebp
 004ED064    ret         4
end;*}

//004ED068
procedure sub_004ED068;
begin
{*
 004ED068    push        ebp
 004ED069    mov         ebp,esp
 004ED06B    mov         ecx,dword ptr ds:[56E52C];^SVarNotObject:TResStringRec
 004ED071    mov         dl,1
 004ED073    mov         eax,[004EC5B0];EOleError
 004ED078    call        Exception.Create;EOleError.Create
 004ED07D    call        @RaiseExcept
 004ED082    pop         ebp
 004ED083    ret
*}
end;

//004ED084
{*procedure sub_004ED084(?:?; ?:?; ?:?; ?:?);
begin
 004ED084    push        ebp
 004ED085    mov         ebp,esp
 004ED087    add         esp,0FFFFFEFC
 004ED08D    mov         eax,dword ptr [ebp+10]
 004ED090    cmp         byte ptr [eax+1],40
>004ED094    jbe         004ED0AD
 004ED096    mov         ecx,dword ptr ds:[56E1D8];^STooManyParams:TResStringRec
 004ED09C    mov         dl,1
 004ED09E    mov         eax,[004EC5B0];EOleError
 004ED0A3    call        Exception.Create;EOleError.Create
 004ED0A8    call        @RaiseExcept
 004ED0AD    mov         eax,dword ptr [ebp+0C]
 004ED0B0    cmp         word ptr [eax],9
>004ED0B4    jne         004ED0C1
 004ED0B6    mov         eax,dword ptr [ebp+0C]
 004ED0B9    mov         eax,dword ptr [eax+8]
 004ED0BC    mov         dword ptr [ebp-4],eax
>004ED0BF    jmp         004ED0DF
 004ED0C1    mov         eax,dword ptr [ebp+0C]
 004ED0C4    cmp         word ptr [eax],4009
>004ED0C9    jne         004ED0D8
 004ED0CB    mov         eax,dword ptr [ebp+0C]
 004ED0CE    mov         eax,dword ptr [eax+8]
 004ED0D1    mov         eax,dword ptr [eax]
 004ED0D3    mov         dword ptr [ebp-4],eax
>004ED0D6    jmp         004ED0DF
 004ED0D8    push        ebp
 004ED0D9    call        004ED068
 004ED0DE    pop         ecx
 004ED0DF    lea         eax,[ebp-104]
 004ED0E5    push        eax
 004ED0E6    mov         eax,dword ptr [ebp+10]
 004ED0E9    xor         ecx,ecx
 004ED0EB    mov         cl,byte ptr [eax+2]
 004ED0EE    inc         ecx
 004ED0EF    mov         eax,dword ptr [ebp+10]
 004ED0F2    movzx       eax,byte ptr [eax+1]
 004ED0F6    mov         edx,dword ptr [ebp+10]
 004ED0F9    lea         edx,[edx+eax+3]
 004ED0FD    mov         eax,dword ptr [ebp-4]
 004ED100    call        004ECF64
 004ED105    cmp         dword ptr [ebp+8],0
>004ED109    je          004ED113
 004ED10B    mov         eax,dword ptr [ebp+8]
 004ED10E    call        @VarClear
 004ED113    mov         eax,dword ptr [ebp+14]
 004ED116    push        eax
 004ED117    mov         eax,dword ptr [ebp+8]
 004ED11A    push        eax
 004ED11B    lea         ecx,[ebp-104]
 004ED121    mov         edx,dword ptr [ebp+10]
 004ED124    mov         eax,dword ptr [ebp-4]
 004ED127    call        004ECB74
 004ED12C    mov         esp,ebp
 004ED12E    pop         ebp
 004ED12F    ret
end;*}

//004ED130
{*procedure sub_004ED130(?:?; ?:?; ?:?; ?:?);
begin
 004ED130    push        ebp
 004ED131    mov         ebp,esp
 004ED133    add         esp,0FFFFFFE4
 004ED136    push        ebx
 004ED137    xor         ebx,ebx
 004ED139    mov         dword ptr [ebp-14],ebx
 004ED13C    mov         dword ptr [ebp-18],ebx
 004ED13F    mov         dword ptr [ebp-1C],ebx
 004ED142    mov         dword ptr [ebp-0C],ecx
 004ED145    mov         dword ptr [ebp-8],edx
 004ED148    mov         dword ptr [ebp-4],eax
 004ED14B    xor         eax,eax
 004ED14D    push        ebp
 004ED14E    push        4ED217
 004ED153    push        dword ptr fs:[eax]
 004ED156    mov         dword ptr fs:[eax],esp
 004ED159    cmp         dword ptr [ebp-4],80020009
>004ED160    jne         004ED1CA
 004ED162    mov         eax,dword ptr [ebp-8]
 004ED165    mov         eax,dword ptr [eax+1C]
 004ED168    push        eax
 004ED169    lea         eax,[ebp-14]
 004ED16C    mov         edx,dword ptr [ebp-8]
 004ED16F    mov         edx,dword ptr [edx+4]
 004ED172    call        @LStrFromWStr
 004ED177    mov         eax,dword ptr [ebp-14]
 004ED17A    push        eax
 004ED17B    lea         eax,[ebp-18]
 004ED17E    mov         edx,dword ptr [ebp-8]
 004ED181    mov         edx,dword ptr [edx+0C]
 004ED184    call        @LStrFromWStr
 004ED189    mov         eax,dword ptr [ebp-18]
 004ED18C    push        eax
 004ED18D    mov         eax,dword ptr [ebp-8]
 004ED190    mov         eax,dword ptr [eax+10]
 004ED193    push        eax
 004ED194    lea         eax,[ebp-1C]
 004ED197    mov         edx,dword ptr [ebp-8]
 004ED19A    mov         edx,dword ptr [edx+8]
 004ED19D    call        @LStrFromWStr
 004ED1A2    mov         ecx,dword ptr [ebp-1C]
 004ED1A5    mov         dl,1
 004ED1A7    mov         eax,[004EC664];EOleException
 004ED1AC    call        EOleException.Create;EOleException.Create
 004ED1B1    mov         dword ptr [ebp-10],eax
 004ED1B4    cmp         byte ptr [ebp+8],0
>004ED1B8    je          004ED1E1
 004ED1BA    mov         eax,dword ptr [ebp-8]
 004ED1BD    mov         edx,dword ptr ds:[41CC20];tagEXCEPINFO
 004ED1C3    call        @Finalize
>004ED1C8    jmp         004ED1E1
 004ED1CA    mov         eax,dword ptr [ebp-4]
 004ED1CD    push        eax
 004ED1CE    push        0
 004ED1D0    xor         ecx,ecx
 004ED1D2    mov         dl,1
 004ED1D4    mov         eax,[004EC608];EOleSysError
 004ED1D9    call        EOleSysError.Create;EOleSysError.Create
 004ED1DE    mov         dword ptr [ebp-10],eax
 004ED1E1    cmp         dword ptr [ebp-0C],0
>004ED1E5    je          004ED1F4
 004ED1E7    push        dword ptr [ebp-0C]
 004ED1EA    mov         eax,dword ptr [ebp-10]
>004ED1ED    jmp         @RaiseExcept
>004ED1F2    jmp         004ED1FC
 004ED1F4    mov         eax,dword ptr [ebp-10]
 004ED1F7    call        @RaiseExcept
 004ED1FC    xor         eax,eax
 004ED1FE    pop         edx
 004ED1FF    pop         ecx
 004ED200    pop         ecx
 004ED201    mov         dword ptr fs:[eax],edx
 004ED204    push        4ED21E
 004ED209    lea         eax,[ebp-1C]
 004ED20C    mov         edx,3
 004ED211    call        @LStrArrayClr
 004ED216    ret
>004ED217    jmp         @HandleFinally
>004ED21C    jmp         004ED209
 004ED21E    pop         ebx
 004ED21F    mov         esp,ebp
 004ED221    pop         ebp
 004ED222    ret         4
end;*}

//004ED228
{*procedure sub_004ED228(?:?; ?:?);
begin
 004ED228    push        ebp
 004ED229    mov         ebp,esp
 004ED22B    add         esp,0FFFFFFF8
 004ED22E    mov         dword ptr [ebp-8],edx
 004ED231    mov         dword ptr [ebp-4],eax
 004ED234    push        0
 004ED236    mov         eax,dword ptr [ebp-8]
 004ED239    mov         edx,eax
 004ED23B    xor         ecx,ecx
 004ED23D    mov         eax,dword ptr [ebp-4]
 004ED240    call        004ED130
 004ED245    pop         ecx
 004ED246    pop         ecx
 004ED247    pop         ebp
 004ED248    ret
end;*}

//004ED24C
{*procedure sub_004ED24C(?:?);
begin
 004ED24C    push        ebp
 004ED24D    mov         ebp,esp
 004ED24F    push        ecx
 004ED250    mov         dword ptr [ebp-4],eax
 004ED253    mov         eax,dword ptr [ebp-4]
 004ED256    xor         ecx,ecx
 004ED258    mov         edx,20
 004ED25D    call        @FillChar
 004ED262    pop         ecx
 004ED263    pop         ebp
 004ED264    ret
end;*}

//004ED268
{*procedure sub_004ED268(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004ED268    push        ebp
 004ED269    mov         ebp,esp
 004ED26B    add         esp,0FFFFFFD0
 004ED26E    push        ebx
 004ED26F    push        esi
 004ED270    push        edi
 004ED271    mov         ebx,dword ptr [ebp+0C]
 004ED274    xor         edx,edx
 004ED276    mov         edi,esp
 004ED278    movzx       ecx,byte ptr [ebx+1]
 004ED27C    mov         dword ptr [ebp-8],ecx
 004ED27F    test        ecx,ecx
>004ED281    je          004ED2CE
 004ED283    add         ebx,3
 004ED286    mov         esi,dword ptr [ebp+18]
 004ED289    movzx       eax,byte ptr [ebx]
 004ED28C    test        al,80
>004ED28E    jne         004ED2B8
 004ED290    cmp         al,0C
>004ED292    je          004ED2A8
 004ED294    cmp         al,5
>004ED296    jb          004ED2BF
 004ED298    cmp         al,7
>004ED29A    ja          004ED2BF
 004ED29C    push        dword ptr [esi+4]
 004ED29F    push        dword ptr [esi]
 004ED2A1    push        edx
 004ED2A2    push        eax
 004ED2A3    add         esi,8
>004ED2A6    jmp         004ED2C7
 004ED2A8    push        dword ptr [esi+0C]
 004ED2AB    push        dword ptr [esi+8]
 004ED2AE    push        dword ptr [esi+4]
 004ED2B1    push        dword ptr [esi]
 004ED2B3    add         esi,10
>004ED2B6    jmp         004ED2C7
 004ED2B8    and         al,7F
 004ED2BA    or          eax,4000
 004ED2BF    push        edx
 004ED2C0    push        dword ptr [esi]
 004ED2C2    push        edx
 004ED2C3    push        eax
 004ED2C4    add         esi,4
 004ED2C7    inc         ebx
 004ED2C8    dec         ecx
>004ED2C9    jne         004ED289
 004ED2CB    mov         ebx,dword ptr [ebp+0C]
 004ED2CE    mov         dword ptr [ebp-10],esp
 004ED2D1    movzx       eax,byte ptr [ebx+2]
 004ED2D5    mov         dword ptr [ebp-4],eax
 004ED2D8    test        eax,eax
>004ED2DA    je          004ED2E6
 004ED2DC    mov         esi,dword ptr [ebp+14]
 004ED2DF    push        dword ptr [esi+eax*4-4]
 004ED2E3    dec         eax
>004ED2E4    jne         004ED2DF
 004ED2E6    movzx       ecx,byte ptr [ebx]
 004ED2E9    cmp         ecx,4
>004ED2EC    jne         004ED304
 004ED2EE    push        0FD
 004ED2F0    inc         dword ptr [ebp-4]
 004ED2F3    cmp         byte ptr [ebx+3],9
>004ED2F7    je          004ED2FF
 004ED2F9    cmp         byte ptr [ebx+3],0D
>004ED2FD    jne         004ED304
 004ED2FF    mov         ecx,8
 004ED304    mov         dword ptr [ebp-0C],esp
 004ED307    push        edx
 004ED308    lea         eax,[ebp-30]
 004ED30B    push        eax
 004ED30C    push        ecx
 004ED30D    push        edx
 004ED30E    call        004ED24C
 004ED313    pop         edx
 004ED314    pop         ecx
 004ED315    push        dword ptr [ebp+1C]
 004ED318    lea         eax,[ebp-10]
 004ED31B    push        eax
 004ED31C    push        ecx
 004ED31D    push        edx
 004ED31E    push        56BC78;gvar_0056BC78
 004ED323    push        dword ptr [ebp+10]
 004ED326    mov         eax,dword ptr [ebp+8]
 004ED329    push        eax
 004ED32A    mov         eax,dword ptr [eax]
 004ED32C    call        dword ptr [eax+18]
 004ED32F    test        eax,eax
>004ED331    je          004ED341
 004ED333    lea         edx,[ebp-30]
 004ED336    mov         cl,1
 004ED338    push        ecx
 004ED339    mov         ecx,dword ptr [ebp+4]
>004ED33C    jmp         004ED130
 004ED341    mov         esp,edi
 004ED343    pop         edi
 004ED344    pop         esi
 004ED345    pop         ebx
 004ED346    mov         esp,ebp
 004ED348    pop         ebp
 004ED349    ret         18
end;*}

//004ED34C
{*procedure sub_004ED34C(?:?; ?:?; ?:?; ?:?);
begin
 004ED34C    push        ebp
 004ED34D    mov         ebp,esp
 004ED34F    push        ebx
 004ED350    mov         ebx,dword ptr [ebp+10]
 004ED353    xor         eax,eax
 004ED355    push        eax
 004ED356    push        eax
 004ED357    push        eax
 004ED358    push        eax
 004ED359    mov         eax,esp
 004ED35B    push        eax
 004ED35C    lea         eax,[ebp+14]
 004ED35F    push        eax
 004ED360    push        eax
 004ED361    push        dword ptr [ebx]
 004ED363    lea         eax,[ebx+5]
 004ED366    push        eax
 004ED367    push        dword ptr [ebp+0C]
 004ED36A    call        004ED268
 004ED36F    movzx       eax,byte ptr [ebx+4]
 004ED373    mov         ebx,dword ptr [ebp+8]
 004ED376    jmp         dword ptr [eax*4+4ED37D]
 004ED376    dd          004ED422
 004ED376    dd          004ED422
 004ED376    dd          004ED41E
 004ED376    dd          004ED41E
 004ED376    dd          004ED3C1
 004ED376    dd          004ED3C7
 004ED376    dd          004ED3CD
 004ED376    dd          004ED3C7
 004ED376    dd          004ED3D3
 004ED376    dd          004ED3E7
 004ED376    dd          004ED422
 004ED376    dd          004ED41E
 004ED376    dd          004ED3FB
 004ED376    dd          004ED3E7
 004ED376    dd          004ED422
 004ED376    dd          004ED422
 004ED376    dd          004ED41E
 004ED3C1    fld         dword ptr [esp+8]
>004ED3C5    jmp         004ED422
 004ED3C7    fld         qword ptr [esp+8]
>004ED3CB    jmp         004ED422
 004ED3CD    fild        qword ptr [esp+8]
>004ED3D1    jmp         004ED422
 004ED3D3    mov         eax,dword ptr [ebx]
 004ED3D5    test        eax,eax
>004ED3D7    je          004ED3DF
 004ED3D9    push        eax
 004ED3DA    call        oleaut32.SysFreeString
 004ED3DF    mov         eax,dword ptr [esp+8]
 004ED3E3    mov         dword ptr [ebx],eax
>004ED3E5    jmp         004ED422
 004ED3E7    mov         eax,dword ptr [ebx]
 004ED3E9    test        eax,eax
>004ED3EB    je          004ED3F3
 004ED3ED    push        eax
 004ED3EE    mov         eax,dword ptr [eax]
 004ED3F0    call        dword ptr [eax+8]
 004ED3F3    mov         eax,dword ptr [esp+8]
 004ED3F7    mov         dword ptr [ebx],eax
>004ED3F9    jmp         004ED422
 004ED3FB    mov         eax,ebx
 004ED3FD    call        @VarClear
 004ED402    mov         eax,dword ptr [esp]
 004ED405    mov         dword ptr [ebx],eax
 004ED407    mov         eax,dword ptr [esp+4]
 004ED40B    mov         dword ptr [ebx+4],eax
 004ED40E    mov         eax,dword ptr [esp+8]
 004ED412    mov         dword ptr [ebx+8],eax
 004ED415    mov         eax,dword ptr [esp+0C]
 004ED419    mov         dword ptr [ebx+0C],eax
>004ED41C    jmp         004ED422
 004ED41E    mov         eax,dword ptr [esp+8]
 004ED422    add         esp,10
 004ED425    pop         ebx
 004ED426    pop         ebp
 004ED427    ret
end;*}

//004ED428
procedure sub_004ED428;
begin
{*
 004ED428    push        ebp
 004ED429    mov         ebp,esp
 004ED42B    cmp         dword ptr ds:[572420],0;gvar_00572420
>004ED432    je          004ED43A
 004ED434    call        dword ptr ds:[572420]
 004ED43A    cmp         dword ptr ds:[56D0CC],0FFFFFFFF;gvar_0056D0CC
>004ED441    je          004ED490
 004ED443    cmp         dword ptr ds:[56D0B8],0;gvar_0056D0B8:Pointer
>004ED44A    je          004ED490
 004ED44C    mov         eax,[0056D0CC];0xFFFFFFFF gvar_0056D0CC
 004ED451    push        eax
 004ED452    push        0
 004ED454    call        dword ptr ds:[56D0B8]
 004ED45A    call        0041CCDC
 004ED45F    mov         [00572424],al;gvar_00572424
 004ED464    mov         eax,[0056E0F4];^gvar_0056F04D
 004ED469    cmp         byte ptr [eax],0
>004ED46C    jne         004ED484
 004ED46E    test        byte ptr ds:[56D0CC],2;gvar_0056D0CC
>004ED475    jne         004ED484
 004ED477    cmp         dword ptr ds:[56D0CC],0;gvar_0056D0CC
>004ED47E    je          004ED484
 004ED480    xor         eax,eax
>004ED482    jmp         004ED486
 004ED484    mov         al,1
 004ED486    mov         edx,dword ptr ds:[56E0F4];^gvar_0056F04D
 004ED48C    mov         byte ptr [edx],al
 004ED48E    pop         ebp
 004ED48F    ret
 004ED490    push        0
 004ED492    call        ole32.CoInitialize
 004ED497    call        0041CCDC
 004ED49C    mov         [00572424],al;gvar_00572424
 004ED4A1    pop         ebp
 004ED4A2    ret
*}
end;

Initialization
//004ED524
{*
 004ED524    push        ebp
 004ED525    mov         ebp,esp
 004ED527    sub         dword ptr ds:[572414],1
>004ED52E    jae         004ED57B
 004ED530    call        004EC954
 004ED535    mov         eax,4ED084;sub_004ED084
 004ED53A    mov         edx,dword ptr ds:[56E414];^gvar_00571A38
 004ED540    mov         dword ptr [edx],eax
 004ED542    mov         eax,[0056E064];^DispCallByIDProc:Pointer
 004ED547    mov         dword ptr [eax],4ED34C;sub_004ED34C
 004ED54D    mov         eax,4ECA70
 004ED552    mov         edx,dword ptr ds:[56E490];^gvar_0056F020
 004ED558    mov         dword ptr [edx],eax
 004ED55A    mov         eax,[0056DFD0];^IsLibrary:Boolean
 004ED55F    cmp         byte ptr [eax],0
>004ED562    jne         004ED57B
 004ED564    mov         eax,[0056E2B8];^gvar_0056F044
 004ED569    mov         eax,dword ptr [eax]
 004ED56B    mov         [00572420],eax;gvar_00572420
 004ED570    mov         eax,[0056E2B8];^gvar_0056F044
 004ED575    mov         dword ptr [eax],4ED428;sub_004ED428
 004ED57B    pop         ebp
 004ED57C    ret
*}
Finalization
//004ED4A4
{*
 004ED4A4    push        ebp
 004ED4A5    mov         ebp,esp
 004ED4A7    xor         eax,eax
 004ED4A9    push        ebp
 004ED4AA    push        4ED51A
 004ED4AF    push        dword ptr fs:[eax]
 004ED4B2    mov         dword ptr fs:[eax],esp
 004ED4B5    inc         dword ptr ds:[572414]
>004ED4BB    jne         004ED50C
 004ED4BD    mov         byte ptr ds:[572418],1;gvar_00572418
 004ED4C4    mov         eax,[0057241C];0x0 gvar_0057241C
 004ED4C9    call        TObject.Free
 004ED4CE    mov         eax,[0056E490];^gvar_0056F020
 004ED4D3    xor         edx,edx
 004ED4D5    mov         dword ptr [eax],edx
 004ED4D7    mov         eax,[0056E064];^DispCallByIDProc:Pointer
 004ED4DC    xor         edx,edx
 004ED4DE    mov         dword ptr [eax],edx
 004ED4E0    mov         eax,[0056E414];^gvar_00571A38
 004ED4E5    xor         edx,edx
 004ED4E7    mov         dword ptr [eax],edx
 004ED4E9    cmp         byte ptr ds:[572424],0;gvar_00572424
>004ED4F0    je          004ED4F7
 004ED4F2    call        ole32.CoUninitialize
 004ED4F7    mov         eax,56D0D0;gvar_0056D0D0:array[5] of ?
 004ED4FC    mov         ecx,5
 004ED501    mov         edx,dword ptr ds:[4010C0];String
 004ED507    call        @FinalizeArray
 004ED50C    xor         eax,eax
 004ED50E    pop         edx
 004ED50F    pop         ecx
 004ED510    pop         ecx
 004ED511    mov         dword ptr fs:[eax],edx
 004ED514    push        4ED521
 004ED519    ret
>004ED51A    jmp         @HandleFinally
>004ED51F    jmp         004ED519
 004ED521    pop         ebp
 004ED522    ret
*}
end.