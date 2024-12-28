//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit GR32_Resamplers;

interface

uses
  SysUtils, Classes, GR32_Resamplers, GR32_OrdinalMaps, GR32, GR32_Transforms;

type
  EBitmapException = class(Exception)
  end;
  ESrcInvalidException = class(Exception)
  end;
  ENestedException = class(Exception)
  end;
  TCustomKernel = class(TPersistent)
  public
    //procedure v0(?:?); virtual;//v0//00519840
    //function vC:?; virtual;//vC//005198DC
    constructor Create; virtual;//v10//005198A4
    procedure v14; virtual; abstract;//v14//00403328
    procedure v18; virtual; abstract;//v18//00403328
  end;
  TBoxKernel = class(TCustomKernel)
  public
    //procedure v14(?:?); virtual;//v14//005198F0
    procedure v18; virtual;//v18//00519934
  end;
  TLinearKernel = class(TCustomKernel)
  public
    //procedure v14(?:?); virtual;//v14//0051994C
    procedure v18; virtual;//v18//005199C0
  end;
  TCosineKernel = class(TCustomKernel)
  public
    //procedure v14(?:?); virtual;//v14//005199D8
    procedure v18; virtual;//v18//00519A34
  end;
  TSplineKernel = class(TCustomKernel)
  public
    //function vC:?; virtual;//vC//00519AF8
    //procedure v14(?:?); virtual;//v14//00519A4C
    procedure v18; virtual;//v18//00519B0C
  end;
  TMitchellKernel = class(TCustomKernel)
  public
    //function vC:?; virtual;//vC//00519D8C
    //procedure v14(?:?); virtual;//v14//00519CA0
    procedure v18; virtual;//v18//00519DA0
  end;
  TCubicKernel = class(TCustomKernel)
  public
    ......Coeff:Single;//f8
    //function vC:?; virtual;//vC//00519EB8
    constructor v10; virtual;//v10//00519DB8
    //procedure v14(?:?); virtual;//v14//00519DFC
    procedure v18; virtual;//v18//00519ECC
    //procedure SetCoeff(Value:Single; ?:?);//00519FAC
  end;
  THermiteKernel = class(TCustomKernel)
  public
    Bias:Single;//f8
    Tension:Single;//fC
    //function vC:?; virtual;//vC//0051A40C
    constructor v10; virtual;//v10//0051A26C
    //procedure v14(?:?); virtual;//v14//0051A2B4
    procedure v18; virtual;//v18//0051A3F4
    //procedure SetBias(Value:Single; ?:?);//0051A420
    //procedure SetTension(Value:Single; ?:?);//0051A44C
  end;
  TWindowedSincKernel = class(TCustomKernel)
  public
    .........Width:Single;//f8
    //function vC:?; virtual;//vC//00519C08
    constructor v10; virtual;//v10//00519B74
    //procedure v14(?:?); virtual;//v14//00519BB8
    procedure v18; virtual;//v18//00519C58
    //procedure SetWidth(Value:Single; ?:?);//00519C1C
  end;
  TLanczosKernel = class(TWindowedSincKernel)
  public
    //procedure v1C(?:?); virtual;//v1C//00519C74
  end;
  TGaussianKernel = class(TWindowedSincKernel)
  public
    .....Sigma:Single;//fC
    constructor v10; virtual;//v10//00519EE4
    //procedure v1C(?:?); virtual;//v1C//00519F70
    //procedure SetSigma(Value:Single; ?:?);//00519F30
  end;
  TBlackmanKernel = class(TWindowedSincKernel)
  public
    //procedure v1C(?:?); virtual;//v1C//00519FD8
  end;
  THannKernel = class(TWindowedSincKernel)
  public
    //procedure v1C(?:?); virtual;//v1C//0051A064
  end;
  THammingKernel = class(TWindowedSincKernel)
  public
    //procedure v1C(?:?); virtual;//v1C//0051A0AC
  end;
  TSinshKernel = class(TCustomKernel)
  public
    f8:Single;//f8
    Coeff:Single;//fC
    //function vC:?; virtual;//vC//0051A1D0
    constructor v10; virtual;//v10//0051A10C
    //procedure v14(?:?); virtual;//v14//0051A158
    procedure GetWidth; virtual;//v18//0051A210
    //procedure SetWidth(Value:Single; ?:?);//0051A1E4
    //procedure SetCoeff(Value:Single; ?:?);//0051A22C
  end;
  TPixelAccessMode = (pamUnsafe, pamSafe, pamWrap, pamTransparentEdge);
  TBitmap32Resampler = class(TCustomResampler)
  public
    f10:dword;//f10
    f14:dword;//f14
    f18:dword;//f18
    f1C:dword;//f1C
    f20:dword;//f20
    f24:TTransformer;//f24
    PixelAccessMode:TPixelAccessMode;//f28
    //procedure v0(?:?); virtual;//v0//0051A478
    procedure vC; virtual;//vC//0051A4BC
    procedure v24; virtual;//v24//0051A5E8
    //function v2C:?; virtual;//v2C//0051A5D4
    //procedure v30(?:?); virtual;//v30//0051A590
    constructor v3C; virtual;//v3C//0051A4DC
    constructor Create; virtual;//v40//0051A530
    procedure SetPixelAccessMode(Value:TPixelAccessMode);//0051A60C
  end;
  TNearestResampler = class(TBitmap32Resampler)
  public
    //f30:?;//f30
    f34:TNearestResampler;//f34
    //function v18(?:?; ?:?):?; virtual;//v18//0051B4F4
    //function v1C(?:?; ?:?):?; virtual;//v1C//0051B520
    //function v20(?:?; ?:?):?; virtual;//v20//0051B558
    procedure v24; virtual;//v24//0051B628
    procedure v34; virtual;//v34//0051B58C
    //procedure v38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v38//0051B6A4
    constructor v3C; virtual;//v3C//0051B4A4
  end;
  TLinearResampler = class(TBitmap32Resampler)
  public
    f30:TLinearKernel;//f30
    //f38:?;//f38
    f3C:TLinearResampler;//f3C
    destructor Destroy; virtual;//0051B74C
    //function v1C(?:?; ?:?):?; virtual;//v1C//0051B788
    //function v20(?:?; ?:?):?; virtual;//v20//0051B7B4
    procedure v24; virtual;//v24//0051BA48
    procedure v34; virtual;//v34//0051BAC4
    //procedure v38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v38//0051BADC
    constructor v3C; virtual;//v3C//0051B6F8
  end;
  TDraftResampler = class(TLinearResampler)
  public
    //procedure v38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v38//0051BBC0
  end;
  TKernelMode = (kmDynamic, kmTableNearest, kmTableLinear);
  TKernelResampler = class(TBitmap32Resampler)
  public
    Kernel:TCustomKernel;//f30
    KernelMode:TKernelMode;//f34
    f38:TIntegerMap;//f38
    TableSize:Integer;//f3C
    f40:dword;//f40
    f41:byte;//f41
    f42:byte;//f42
    f43:byte;//f43
    destructor Destroy; virtual;//0051A69C
    //function v20(?:?; ?:?):?; virtual;//v20//0051A870
    procedure v24; virtual;//v24//0051B36C
    procedure v28; virtual;//v28//0051B344
    procedure v34; virtual;//v34//0051B2BC
    //procedure v38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v38//0051A814
    constructor v3C; virtual;//v3C//0051A638
    //procedure GetKernelClassName(?:?);//0051A6D8
    procedure SetKernelClassName(Value:String);//0051A70C
    procedure SetKernel(Value:TCustomKernel);//0051A7D4
    procedure SetKernelMode(Value:TKernelMode);//0051B2DC
    procedure SetTableSize(Value:Integer);//0051B308
  end;
  TNestedSampler = class(TCustomSampler)
  public
    Sampler:TCustomSampler;//f10
    f18:dword;//f18
    f1C:TCustomSampler;//f1C
    f20:dword;//f20
    f24:TCustomSampler;//f24
    f28:dword;//f28
    f2C:TCustomSampler;//f2C
    //procedure v0(?:?); virtual;//v0//0051BF1C
    procedure v24; virtual;//v24//0051C0C8
    procedure v28; virtual;//v28//0051BFB0
    //function v2C:?; virtual;//v2C//0051C068
    //procedure v30(?:?); virtual;//v30//0051C008
    constructor v34; virtual;//v34//0051BF60
    procedure SetSampler(Value:TCustomSampler);//0051C120
  end;
  TTransformer = class(TNestedSampler)
  public
    Transformation:TTransformation;//f30
    f38:dword;//f38
    f3C:TTransformation;//f3C
    f40:dword;//f40
    f44:TTransformation;//f44
    f48:dword;//f48
    f4C:TTransformation;//f4C
    //function v18(?:?; ?:?):?; virtual;//v18//0051BC1C
    //function v1C(?:?; ?:?):?; virtual;//v1C//0051BC64
    //function v20(?:?; ?:?):?; virtual;//v20//0051BCA8
    procedure v24; virtual;//v24//0051BD3C
    //function v2C:?; virtual;//v2C//0051BDA8
    //procedure v30(?:?); virtual;//v30//0051BD6C
    procedure SetTransformation(Value:TTransformation);//0051BCE4
  end;
  TNearestTransformer = class(TTransformer)
  public
    //function v18(?:?; ?:?):?; virtual;//v18//0051BDDC
    //function v1C(?:?; ?:?):?; virtual;//v1C//0051BE20
    //function v20(?:?; ?:?):?; virtual;//v20//0051BE68
  end;
  TCluster = array of ?;
//elSize = 8;
  TMappingTable = array of TCluster;
//elSize = 4;
  _DynArr_105_54 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  _DynArr_105_64 = array of ?;
//elSize = 8;
  _DynArr_105_74 = array of ?;
//elSize = 10;
    //procedure sub_00516D84(?:?; ?:?);//00516D84
    //function sub_00516E10(?:?; ?:?):?;//00516E10
    //procedure sub_00516EA0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00516EA0
    //procedure sub_00517118(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00517118
    //procedure sub_005172E8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005172E8
    //procedure sub_00517A98(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00517A98
    //procedure sub_005181D8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005181D8
    //procedure sub_005187D4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005187D4
    //procedure sub_00518E3C(?:?; ?:?; ?:?; ?:?);//00518E3C
    //procedure sub_00518ED8(?:?; ?:?; ?:?; ?:?);//00518ED8
    //function sub_00518F7C(?:?; ?:?; ?:?; ?:?):?;//00518F7C
    //procedure sub_00519070(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00519070
    //procedure sub_0051955C(?:?; ?:?; ?:?; ?:?);//0051955C
    //function sub_005195D0(?:?; ?:?; ?:?; ?:?):?;//005195D0
    //procedure sub_00519668(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00519668
    //procedure sub_00519840(?:?);//00519840
    procedure sub_00519884(?:TCustomKernel);//00519884
    constructor Create;//005198A4
    //function sub_005198DC:?;//005198DC
    //procedure sub_005198F0(?:?);//005198F0
    procedure sub_00519934;//00519934
    //procedure sub_0051994C(?:?);//0051994C
    procedure sub_005199C0;//005199C0
    //procedure sub_005199D8(?:?);//005199D8
    procedure sub_00519A34;//00519A34
    //procedure sub_00519A4C(?:?);//00519A4C
    //function sub_00519AF8:?;//00519AF8
    procedure sub_00519B0C;//00519B0C
    //function sub_00519B24(?:?):?;//00519B24
    constructor sub_00519B74;//00519B74
    //procedure sub_00519BB8(?:?);//00519BB8
    //function sub_00519C08:?;//00519C08
    procedure sub_00519C58;//00519C58
    //procedure sub_00519C74(?:?);//00519C74
    //procedure sub_00519CA0(?:?);//00519CA0
    //function sub_00519D8C:?;//00519D8C
    procedure sub_00519DA0;//00519DA0
    constructor sub_00519DB8;//00519DB8
    //procedure sub_00519DFC(?:?);//00519DFC
    //function sub_00519EB8:?;//00519EB8
    procedure sub_00519ECC;//00519ECC
    constructor sub_00519EE4;//00519EE4
    //procedure sub_00519F70(?:?);//00519F70
    //procedure sub_00519FD8(?:?);//00519FD8
    //procedure sub_0051A064(?:?);//0051A064
    //procedure sub_0051A0AC(?:?);//0051A0AC
    constructor sub_0051A10C;//0051A10C
    //procedure sub_0051A158(?:?);//0051A158
    //function sub_0051A1D0:?;//0051A1D0
    procedure GetWidth;//0051A210
    constructor sub_0051A26C;//0051A26C
    //procedure sub_0051A2B4(?:?);//0051A2B4
    procedure sub_0051A3F4;//0051A3F4
    //function sub_0051A40C:?;//0051A40C
    //procedure sub_0051A478(?:?);//0051A478
    procedure sub_0051A4BC;//0051A4BC
    constructor sub_0051A4DC;//0051A4DC
    constructor Create;//0051A530
    //procedure sub_0051A590(?:?);//0051A590
    //function sub_0051A5D4:?;//0051A5D4
    procedure sub_0051A5E8;//0051A5E8
    constructor sub_0051A638;//0051A638
    destructor Destroy;//0051A69C
    //procedure sub_0051A814(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0051A814
    //function sub_0051A870(?:?; ?:?):?;//0051A870
    procedure sub_0051B2BC;//0051B2BC
    procedure sub_0051B344;//0051B344
    procedure sub_0051B36C;//0051B36C
    constructor sub_0051B4A4;//0051B4A4
    //function sub_0051B4F4(?:?; ?:?):?;//0051B4F4
    //function sub_0051B520(?:?; ?:?):?;//0051B520
    //function sub_0051B558(?:?; ?:?):?;//0051B558
    procedure sub_0051B58C;//0051B58C
    //function sub_0051B5A4(?:?; ?:?; ?:?):?;//0051B5A4
    procedure sub_0051B628;//0051B628
    //procedure sub_0051B6A4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0051B6A4
    constructor sub_0051B6F8;//0051B6F8
    destructor Destroy;//0051B74C
    //function sub_0051B788(?:?; ?:?):?;//0051B788
    //function sub_0051B7B4(?:?; ?:?):?;//0051B7B4
    //function sub_0051B7F8(?:?; ?:?; ?:?):?;//0051B7F8
    procedure sub_0051BA48;//0051BA48
    procedure sub_0051BAC4;//0051BAC4
    //procedure sub_0051BADC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0051BADC
    //procedure sub_0051BBC0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0051BBC0
    //function sub_0051BC1C(?:?; ?:?):?;//0051BC1C
    //function sub_0051BC64(?:?; ?:?):?;//0051BC64
    //function sub_0051BCA8(?:?; ?:?):?;//0051BCA8
    procedure sub_0051BD3C;//0051BD3C
    //procedure sub_0051BD6C(?:?);//0051BD6C
    //function sub_0051BDA8:?;//0051BDA8
    //function sub_0051BDDC(?:?; ?:?):?;//0051BDDC
    //function sub_0051BE20(?:?; ?:?):?;//0051BE20
    //function sub_0051BE68(?:?; ?:?):?;//0051BE68
    procedure sub_0051BEB4(?:TBitmap32Resampler);//0051BEB4
    procedure sub_0051BEE8(?:TCustomKernel);//0051BEE8
    //procedure sub_0051BF1C(?:?);//0051BF1C
    constructor sub_0051BF60;//0051BF60
    procedure sub_0051BFB0;//0051BFB0
    //procedure sub_0051C008(?:?);//0051C008
    //function sub_0051C068:?;//0051C068
    procedure sub_0051C0C8;//0051C0C8
    procedure sub_0051C178;//0051C178

implementation

//00516D84
{*procedure sub_00516D84(?:?; ?:?);
begin
 00516D84    push        ebp
 00516D85    mov         ebp,esp
 00516D87    add         esp,0FFFFFFF8
 00516D8A    mov         dword ptr [ebp-8],edx
 00516D8D    mov         dword ptr [ebp-4],eax
 00516D90    cmp         dword ptr [ebp-4],0
>00516D94    jne         00516DAC
 00516D96    mov         ecx,516DD4;'Destination bitmap is nil'
 00516D9B    mov         dl,1
 00516D9D    mov         eax,[005158CC];EBitmapException
 00516DA2    call        Exception.Create;EBitmapException.Create
 00516DA7    call        @RaiseExcept
 00516DAC    cmp         dword ptr [ebp-8],0
>00516DB0    jne         00516DC8
 00516DB2    mov         ecx,516DF8;'Source bitmap is nil'
 00516DB7    mov         dl,1
 00516DB9    mov         eax,[005158CC];EBitmapException
 00516DBE    call        Exception.Create;EBitmapException.Create
 00516DC3    call        @RaiseExcept
 00516DC8    pop         ecx
 00516DC9    pop         ecx
 00516DCA    pop         ebp
 00516DCB    ret
end;*}

//00516E10
{*function sub_00516E10(?:?; ?:?):?;
begin
 00516E10    push        ebp
 00516E11    mov         ebp,esp
 00516E13    add         esp,0FFFFFFF4
 00516E16    mov         dword ptr [ebp-8],edx
 00516E19    mov         dword ptr [ebp-4],eax
 00516E1C    mov         byte ptr [ebp-9],0
 00516E20    mov         eax,dword ptr [ebp-8]
 00516E23    call        0051E15C
 00516E28    test        al,al
>00516E2A    jne         00516E73
 00516E2C    mov         eax,dword ptr [ebp-8]
 00516E2F    cmp         dword ptr [eax],0
>00516E32    jl          00516E59
 00516E34    mov         eax,dword ptr [ebp-8]
 00516E37    mov         eax,dword ptr [eax+8]
 00516E3A    mov         edx,dword ptr [ebp-4]
 00516E3D    cmp         eax,dword ptr [edx+34]
>00516E40    jg          00516E59
 00516E42    mov         eax,dword ptr [ebp-8]
 00516E45    cmp         dword ptr [eax+4],0
>00516E49    jl          00516E59
 00516E4B    mov         eax,dword ptr [ebp-8]
 00516E4E    mov         eax,dword ptr [eax+0C]
 00516E51    mov         edx,dword ptr [ebp-4]
 00516E54    cmp         eax,dword ptr [edx+30]
>00516E57    jle         00516E6F
 00516E59    mov         ecx,516E84;'Source rectangle is invalid'
 00516E5E    mov         dl,1
 00516E60    mov         eax,[0051592C];ESrcInvalidException
 00516E65    call        Exception.Create;ESrcInvalidException.Create
 00516E6A    call        @RaiseExcept
 00516E6F    mov         byte ptr [ebp-9],1
 00516E73    mov         al,byte ptr [ebp-9]
 00516E76    mov         esp,ebp
 00516E78    pop         ebp
 00516E79    ret
end;*}

//00516EA0
{*procedure sub_00516EA0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00516EA0    push        ebp
 00516EA1    mov         ebp,esp
 00516EA3    add         esp,0FFFFFFB8
 00516EA6    push        esi
 00516EA7    push        edi
 00516EA8    mov         esi,edx
 00516EAA    lea         edi,[ebp-48]
 00516EAD    movs        dword ptr [edi],dword ptr [esi]
 00516EAE    movs        dword ptr [edi],dword ptr [esi]
 00516EAF    movs        dword ptr [edi],dword ptr [esi]
 00516EB0    movs        dword ptr [edi],dword ptr [esi]
 00516EB1    mov         dword ptr [ebp-8],ecx
 00516EB4    mov         dword ptr [ebp-4],eax
 00516EB7    mov         eax,dword ptr [ebp-40]
 00516EBA    sub         eax,dword ptr [ebp-48]
 00516EBD    mov         dword ptr [ebp-20],eax
 00516EC0    mov         ecx,dword ptr [ebp+14]
 00516EC3    mov         edx,dword ptr [ebp+18]
 00516EC6    mov         eax,dword ptr [ebp-8]
 00516EC9    call        0051F574
 00516ECE    mov         dword ptr [ebp-0C],eax
 00516ED1    mov         ecx,dword ptr [ebp-44]
 00516ED4    mov         edx,dword ptr [ebp-48]
 00516ED7    mov         eax,dword ptr [ebp-4]
 00516EDA    call        0051F574
 00516EDF    mov         dword ptr [ebp-10],eax
 00516EE2    mov         al,byte ptr [ebp+10]
 00516EE5    sub         al,1
>00516EE7    jb          00516EF8
>00516EE9    je          00516F41
 00516EEB    sub         al,2
>00516EED    je          0051700E
>00516EF3    jmp         00517095
 00516EF8    mov         eax,dword ptr [ebp-44]
 00516EFB    mov         edx,dword ptr [ebp-3C]
 00516EFE    dec         edx
 00516EFF    sub         edx,eax
>00516F01    jl          0051710E
 00516F07    inc         edx
 00516F08    mov         dword ptr [ebp-34],edx
 00516F0B    mov         dword ptr [ebp-28],eax
 00516F0E    mov         edx,dword ptr [ebp-10]
 00516F11    mov         eax,dword ptr [ebp-0C]
 00516F14    mov         ecx,dword ptr [ebp-20]
 00516F17    call        00513030
 00516F1C    mov         eax,dword ptr [ebp-8]
 00516F1F    mov         eax,dword ptr [eax+34]
 00516F22    shl         eax,2
 00516F25    add         dword ptr [ebp-0C],eax
 00516F28    mov         eax,dword ptr [ebp-4]
 00516F2B    mov         eax,dword ptr [eax+34]
 00516F2E    shl         eax,2
 00516F31    add         dword ptr [ebp-10],eax
 00516F34    inc         dword ptr [ebp-28]
 00516F37    dec         dword ptr [ebp-34]
>00516F3A    jne         00516F0E
>00516F3C    jmp         0051710E
 00516F41    mov         eax,dword ptr [ebp-8]
 00516F44    cmp         dword ptr [eax+0B4],0FF
>00516F4E    jb          00516FAA
 00516F50    mov         eax,dword ptr [ebp-8]
 00516F53    movzx       eax,byte ptr [eax+7A]
 00516F57    mov         edx,dword ptr ds:[56E498];^gvar_00577A18
 00516F5D    mov         eax,dword ptr [edx+eax*4]
 00516F60    mov         dword ptr [ebp-2C],eax
 00516F63    mov         eax,dword ptr [ebp-44]
 00516F66    mov         edx,dword ptr [ebp-3C]
 00516F69    dec         edx
 00516F6A    sub         edx,eax
>00516F6C    jl          0051710E
 00516F72    inc         edx
 00516F73    mov         dword ptr [ebp-34],edx
 00516F76    mov         dword ptr [ebp-28],eax
 00516F79    mov         ecx,dword ptr [ebp-20]
 00516F7C    mov         edx,dword ptr [ebp-10]
 00516F7F    mov         eax,dword ptr [ebp-0C]
 00516F82    call        dword ptr [ebp-2C]
 00516F85    mov         eax,dword ptr [ebp-8]
 00516F88    mov         eax,dword ptr [eax+34]
 00516F8B    shl         eax,2
 00516F8E    add         dword ptr [ebp-0C],eax
 00516F91    mov         eax,dword ptr [ebp-4]
 00516F94    mov         eax,dword ptr [eax+34]
 00516F97    shl         eax,2
 00516F9A    add         dword ptr [ebp-10],eax
 00516F9D    inc         dword ptr [ebp-28]
 00516FA0    dec         dword ptr [ebp-34]
>00516FA3    jne         00516F79
>00516FA5    jmp         0051710E
 00516FAA    mov         eax,dword ptr [ebp-8]
 00516FAD    movzx       eax,byte ptr [eax+7A]
 00516FB1    mov         edx,dword ptr ds:[56E578];^gvar_00577A20
 00516FB7    mov         eax,dword ptr [edx+eax*4]
 00516FBA    mov         dword ptr [ebp-30],eax
 00516FBD    mov         eax,dword ptr [ebp-44]
 00516FC0    mov         edx,dword ptr [ebp-3C]
 00516FC3    dec         edx
 00516FC4    sub         edx,eax
>00516FC6    jl          0051710E
 00516FCC    inc         edx
 00516FCD    mov         dword ptr [ebp-34],edx
 00516FD0    mov         dword ptr [ebp-28],eax
 00516FD3    mov         eax,dword ptr [ebp-8]
 00516FD6    mov         eax,dword ptr [eax+0B4]
 00516FDC    push        eax
 00516FDD    mov         ecx,dword ptr [ebp-20]
 00516FE0    mov         edx,dword ptr [ebp-10]
 00516FE3    mov         eax,dword ptr [ebp-0C]
 00516FE6    call        dword ptr [ebp-30]
 00516FE9    mov         eax,dword ptr [ebp-8]
 00516FEC    mov         eax,dword ptr [eax+34]
 00516FEF    shl         eax,2
 00516FF2    add         dword ptr [ebp-0C],eax
 00516FF5    mov         eax,dword ptr [ebp-4]
 00516FF8    mov         eax,dword ptr [eax+34]
 00516FFB    shl         eax,2
 00516FFE    add         dword ptr [ebp-10],eax
 00517001    inc         dword ptr [ebp-28]
 00517004    dec         dword ptr [ebp-34]
>00517007    jne         00516FD3
>00517009    jmp         0051710E
 0051700E    mov         eax,dword ptr [ebp-8]
 00517011    mov         eax,dword ptr [eax+0B8]
 00517017    mov         dword ptr [ebp-1C],eax
 0051701A    mov         eax,dword ptr [ebp-44]
 0051701D    mov         edx,dword ptr [ebp-3C]
 00517020    dec         edx
 00517021    sub         edx,eax
>00517023    jl          0051710E
 00517029    inc         edx
 0051702A    mov         dword ptr [ebp-34],edx
 0051702D    mov         dword ptr [ebp-28],eax
 00517030    mov         eax,dword ptr [ebp-0C]
 00517033    mov         dword ptr [ebp-14],eax
 00517036    mov         eax,dword ptr [ebp-10]
 00517039    mov         dword ptr [ebp-18],eax
 0051703C    mov         eax,dword ptr [ebp-20]
 0051703F    dec         eax
 00517040    test        eax,eax
>00517042    jl          00517073
 00517044    inc         eax
 00517045    mov         dword ptr [ebp-38],eax
 00517048    mov         dword ptr [ebp-24],0
 0051704F    mov         eax,dword ptr [ebp-1C]
 00517052    mov         edx,dword ptr [ebp-14]
 00517055    cmp         eax,dword ptr [edx]
>00517057    je          00517063
 00517059    mov         eax,dword ptr [ebp-18]
 0051705C    mov         edx,dword ptr [ebp-14]
 0051705F    mov         edx,dword ptr [edx]
 00517061    mov         dword ptr [eax],edx
 00517063    add         dword ptr [ebp-14],4
 00517067    add         dword ptr [ebp-18],4
 0051706B    inc         dword ptr [ebp-24]
 0051706E    dec         dword ptr [ebp-38]
>00517071    jne         0051704F
 00517073    mov         eax,dword ptr [ebp-8]
 00517076    mov         eax,dword ptr [eax+34]
 00517079    shl         eax,2
 0051707C    add         dword ptr [ebp-0C],eax
 0051707F    mov         eax,dword ptr [ebp-4]
 00517082    mov         eax,dword ptr [eax+34]
 00517085    shl         eax,2
 00517088    add         dword ptr [ebp-10],eax
 0051708B    inc         dword ptr [ebp-28]
 0051708E    dec         dword ptr [ebp-34]
>00517091    jne         00517030
>00517093    jmp         0051710E
 00517095    mov         eax,dword ptr [ebp-44]
 00517098    mov         edx,dword ptr [ebp-3C]
 0051709B    dec         edx
 0051709C    sub         edx,eax
>0051709E    jl          0051710E
 005170A0    inc         edx
 005170A1    mov         dword ptr [ebp-34],edx
 005170A4    mov         dword ptr [ebp-28],eax
 005170A7    mov         eax,dword ptr [ebp-0C]
 005170AA    mov         dword ptr [ebp-14],eax
 005170AD    mov         eax,dword ptr [ebp-10]
 005170B0    mov         dword ptr [ebp-18],eax
 005170B3    mov         eax,dword ptr [ebp-20]
 005170B6    dec         eax
 005170B7    test        eax,eax
>005170B9    jl          005170EE
 005170BB    inc         eax
 005170BC    mov         dword ptr [ebp-38],eax
 005170BF    mov         dword ptr [ebp-24],0
 005170C6    mov         eax,dword ptr [ebp-8]
 005170C9    mov         eax,dword ptr [eax+0B4]
 005170CF    push        eax
 005170D0    mov         ecx,dword ptr [ebp-18]
 005170D3    mov         eax,dword ptr [ebp-14]
 005170D6    mov         edx,dword ptr [eax]
 005170D8    mov         eax,dword ptr [ebp+0C]
 005170DB    call        dword ptr [ebp+8]
 005170DE    add         dword ptr [ebp-14],4
 005170E2    add         dword ptr [ebp-18],4
 005170E6    inc         dword ptr [ebp-24]
 005170E9    dec         dword ptr [ebp-38]
>005170EC    jne         005170C6
 005170EE    mov         eax,dword ptr [ebp-8]
 005170F1    mov         eax,dword ptr [eax+34]
 005170F4    shl         eax,2
 005170F7    add         dword ptr [ebp-0C],eax
 005170FA    mov         eax,dword ptr [ebp-4]
 005170FD    mov         eax,dword ptr [eax+34]
 00517100    shl         eax,2
 00517103    add         dword ptr [ebp-10],eax
 00517106    inc         dword ptr [ebp-28]
 00517109    dec         dword ptr [ebp-34]
>0051710C    jne         005170A7
 0051710E    pop         edi
 0051710F    pop         esi
 00517110    mov         esp,ebp
 00517112    pop         ebp
 00517113    ret         14
end;*}

//00517118
{*procedure sub_00517118(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00517118    push        ebp
 00517119    mov         ebp,esp
 0051711B    add         esp,0FFFFFFB4
 0051711E    push        ebx
 0051711F    push        esi
 00517120    push        edi
 00517121    mov         esi,dword ptr [ebp+14]
 00517124    lea         edi,[ebp-3C]
 00517127    movs        dword ptr [edi],dword ptr [esi]
 00517128    movs        dword ptr [edi],dword ptr [esi]
 00517129    movs        dword ptr [edi],dword ptr [esi]
 0051712A    movs        dword ptr [edi],dword ptr [esi]
 0051712B    mov         esi,dword ptr [ebp+1C]
 0051712E    lea         edi,[ebp-2C]
 00517131    movs        dword ptr [edi],dword ptr [esi]
 00517132    movs        dword ptr [edi],dword ptr [esi]
 00517133    movs        dword ptr [edi],dword ptr [esi]
 00517134    movs        dword ptr [edi],dword ptr [esi]
 00517135    mov         dword ptr [ebp-0C],ecx
 00517138    mov         dword ptr [ebp-8],edx
 0051713B    mov         dword ptr [ebp-4],eax
 0051713E    mov         edx,dword ptr [ebp+18]
 00517141    mov         eax,dword ptr [ebp-4]
 00517144    call        00516D84
 00517149    mov         eax,dword ptr [ebp-4]
 0051714C    mov         edx,dword ptr [eax]
 0051714E    call        dword ptr [edx+24]
 00517151    test        al,al
>00517153    jne         005172B0
 00517159    mov         eax,dword ptr [ebp+18]
 0051715C    mov         edx,dword ptr [eax]
 0051715E    call        dword ptr [edx+24]
 00517161    test        al,al
>00517163    jne         005172B0
 00517169    cmp         byte ptr [ebp+10],1
>0051716D    jne         0051717F
 0051716F    mov         eax,dword ptr [ebp+18]
 00517172    cmp         dword ptr [eax+0B4],0
>00517179    je          005172B0
 0051717F    mov         eax,dword ptr [ebp-34]
 00517182    sub         eax,dword ptr [ebp-3C]
 00517185    mov         dword ptr [ebp-18],eax
 00517188    mov         eax,dword ptr [ebp-30]
 0051718B    sub         eax,dword ptr [ebp-38]
 0051718E    mov         dword ptr [ebp-1C],eax
 00517191    mov         eax,dword ptr [ebp-4]
 00517194    cmp         byte ptr [eax+0F0],0
>0051719B    jne         00517284
 005171A1    cmp         byte ptr [ebp+10],2
>005171A5    jne         005171B2
 005171A7    cmp         word ptr [ebp+0A],0
>005171AC    jne         005171B2
 005171AE    mov         byte ptr [ebp+10],0
 005171B2    mov         eax,dword ptr [ebp-3C]
 005171B5    mov         dword ptr [ebp-10],eax
 005171B8    mov         eax,dword ptr [ebp-38]
 005171BB    mov         dword ptr [ebp-14],eax
 005171BE    lea         edx,[ebp-4C]
 005171C1    mov         eax,dword ptr [ebp-4]
 005171C4    call        00522F30
 005171C9    lea         ecx,[ebp-4C]
 005171CC    lea         edx,[ebp-2C]
 005171CF    lea         eax,[ebp-2C]
 005171D2    call        0051DFD8
 005171D7    lea         edx,[ebp-4C]
 005171DA    mov         eax,dword ptr [ebp+18]
 005171DD    call        00522F30
 005171E2    lea         ecx,[ebp-4C]
 005171E5    lea         edx,[ebp-3C]
 005171E8    lea         eax,[ebp-3C]
 005171EB    call        0051DFD8
 005171F0    mov         ecx,dword ptr [ebp-0C]
 005171F3    sub         ecx,dword ptr [ebp-14]
 005171F6    mov         edx,dword ptr [ebp-8]
 005171F9    sub         edx,dword ptr [ebp-10]
 005171FC    lea         eax,[ebp-3C]
 005171FF    call        0051E124
 00517204    lea         ecx,[ebp-3C]
 00517207    lea         edx,[ebp-2C]
 0051720A    lea         eax,[ebp-3C]
 0051720D    call        0051DFD8
 00517212    lea         esi,[ebp-3C]
 00517215    lea         edi,[ebp-2C]
 00517218    movs        dword ptr [edi],dword ptr [esi]
 00517219    movs        dword ptr [edi],dword ptr [esi]
 0051721A    movs        dword ptr [edi],dword ptr [esi]
 0051721B    movs        dword ptr [edi],dword ptr [esi]
 0051721C    mov         ecx,dword ptr [ebp-14]
 0051721F    sub         ecx,dword ptr [ebp-0C]
 00517222    mov         edx,dword ptr [ebp-10]
 00517225    sub         edx,dword ptr [ebp-8]
 00517228    lea         eax,[ebp-3C]
 0051722B    call        0051E124
 00517230    lea         eax,[ebp-3C]
 00517233    call        0051E15C
 00517238    test        al,al
>0051723A    jne         00517284
 0051723C    xor         eax,eax
 0051723E    push        ebp
 0051723F    push        51727D
 00517244    push        dword ptr fs:[eax]
 00517247    mov         dword ptr fs:[eax],esp
 0051724A    mov         eax,dword ptr [ebp-3C]
 0051724D    push        eax
 0051724E    mov         eax,dword ptr [ebp-38]
 00517251    push        eax
 00517252    mov         al,byte ptr [ebp+10]
 00517255    push        eax
 00517256    push        dword ptr [ebp+0C]
 00517259    push        dword ptr [ebp+8]
 0051725C    mov         ecx,dword ptr [ebp+18]
 0051725F    lea         edx,[ebp-2C]
 00517262    mov         eax,dword ptr [ebp-4]
 00517265    call        00516EA0
 0051726A    xor         eax,eax
 0051726C    pop         edx
 0051726D    pop         ecx
 0051726E    pop         ecx
 0051726F    mov         dword ptr fs:[eax],edx
 00517272    push        517284
 00517277    call        00513ACC
 0051727C    ret
>0051727D    jmp         @HandleFinally
>00517282    jmp         00517277
 00517284    mov         eax,dword ptr [ebp-0C]
 00517287    add         eax,dword ptr [ebp-1C]
 0051728A    push        eax
 0051728B    lea         eax,[ebp-4C]
 0051728E    push        eax
 0051728F    mov         ecx,dword ptr [ebp-8]
 00517292    add         ecx,dword ptr [ebp-18]
 00517295    mov         edx,dword ptr [ebp-0C]
 00517298    mov         eax,dword ptr [ebp-8]
 0051729B    call        0051DC50
 005172A0    lea         edx,[ebp-4C]
 005172A3    mov         ecx,80000000
 005172A8    mov         eax,dword ptr [ebp-4]
 005172AB    mov         ebx,dword ptr [eax]
 005172AD    call        dword ptr [ebx+44]
 005172B0    pop         edi
 005172B1    pop         esi
 005172B2    pop         ebx
 005172B3    mov         esp,ebp
 005172B5    pop         ebp
 005172B6    ret         18
end;*}

//005172E8
{*procedure sub_005172E8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005172E8    push        ebp
 005172E9    mov         ebp,esp
 005172EB    add         esp,0FFFFFF50
 005172F1    push        ebx
 005172F2    push        esi
 005172F3    push        edi
 005172F4    xor         ebx,ebx
 005172F6    mov         dword ptr [ebp-30],ebx
 005172F9    mov         dword ptr [ebp-3C],ebx
 005172FC    mov         esi,dword ptr [ebp+14]
 005172FF    lea         edi,[ebp-88]
 00517305    movs        dword ptr [edi],dword ptr [esi]
 00517306    movs        dword ptr [edi],dword ptr [esi]
 00517307    movs        dword ptr [edi],dword ptr [esi]
 00517308    movs        dword ptr [edi],dword ptr [esi]
 00517309    mov         esi,ecx
 0051730B    lea         edi,[ebp-78]
 0051730E    movs        dword ptr [edi],dword ptr [esi]
 0051730F    movs        dword ptr [edi],dword ptr [esi]
 00517310    movs        dword ptr [edi],dword ptr [esi]
 00517311    movs        dword ptr [edi],dword ptr [esi]
 00517312    mov         esi,edx
 00517314    lea         edi,[ebp-68]
 00517317    movs        dword ptr [edi],dword ptr [esi]
 00517318    movs        dword ptr [edi],dword ptr [esi]
 00517319    movs        dword ptr [edi],dword ptr [esi]
 0051731A    movs        dword ptr [edi],dword ptr [esi]
 0051731B    mov         dword ptr [ebp-4],eax
 0051731E    xor         eax,eax
 00517320    push        ebp
 00517321    push        5179DF
 00517326    push        dword ptr fs:[eax]
 00517329    mov         dword ptr fs:[eax],esp
 0051732C    mov         eax,dword ptr [ebp-4]
 0051732F    mov         eax,dword ptr [eax+30]
 00517332    push        eax
 00517333    lea         eax,[ebp-0A8]
 00517339    push        eax
 0051733A    mov         eax,dword ptr [ebp-4]
 0051733D    mov         ecx,dword ptr [eax+34]
 00517340    xor         edx,edx
 00517342    xor         eax,eax
 00517344    call        0051DC50
 00517349    lea         ecx,[ebp-0A8]
 0051734F    lea         edx,[ebp-78]
 00517352    lea         eax,[ebp-78]
 00517355    call        0051DFD8
 0051735A    lea         ecx,[ebp-68]
 0051735D    lea         edx,[ebp-78]
 00517360    lea         eax,[ebp-78]
 00517363    call        0051DFD8
 00517368    lea         eax,[ebp-78]
 0051736B    call        0051E15C
 00517370    test        al,al
>00517372    jne         005179B5
 00517378    lea         ecx,[ebp-68]
 0051737B    lea         edx,[ebp-78]
 0051737E    lea         eax,[ebp-98]
 00517384    call        0051DFD8
 00517389    lea         eax,[ebp-98]
 0051738F    call        0051E15C
 00517394    test        al,al
>00517396    jne         005179B5
 0051739C    cmp         dword ptr [ebp-88],0
>005173A3    jl          005173C4
 005173A5    cmp         dword ptr [ebp-84],0
>005173AC    jl          005173C4
 005173AE    mov         eax,dword ptr [ebp+18]
 005173B1    mov         eax,dword ptr [eax+34]
 005173B4    cmp         eax,dword ptr [ebp-80]
>005173B7    jl          005173C4
 005173B9    mov         eax,dword ptr [ebp+18]
 005173BC    mov         eax,dword ptr [eax+30]
 005173BF    cmp         eax,dword ptr [ebp-7C]
>005173C2    jge         005173DA
 005173C4    mov         ecx,5179F8;'Invalid SrcRect'
 005173C9    mov         dl,1
 005173CB    mov         eax,[0040B004];Exception
 005173D0    call        Exception.Create;Exception.Create
 005173D5    call        @RaiseExcept
 005173DA    mov         eax,dword ptr [ebp-80]
 005173DD    sub         eax,dword ptr [ebp-88]
 005173E3    mov         dword ptr [ebp-8],eax
 005173E6    mov         eax,dword ptr [ebp-7C]
 005173E9    sub         eax,dword ptr [ebp-84]
 005173EF    mov         dword ptr [ebp-0C],eax
 005173F2    mov         eax,dword ptr [ebp-60]
 005173F5    sub         eax,dword ptr [ebp-68]
 005173F8    mov         dword ptr [ebp-10],eax
 005173FB    mov         eax,dword ptr [ebp-5C]
 005173FE    sub         eax,dword ptr [ebp-64]
 00517401    mov         dword ptr [ebp-14],eax
 00517404    mov         eax,dword ptr [ebp-70]
 00517407    sub         eax,dword ptr [ebp-78]
 0051740A    mov         dword ptr [ebp-18],eax
 0051740D    mov         eax,dword ptr [ebp-6C]
 00517410    sub         eax,dword ptr [ebp-74]
 00517413    mov         dword ptr [ebp-1C],eax
 00517416    xor         eax,eax
 00517418    push        ebp
 00517419    push        5179AE
 0051741E    push        dword ptr fs:[eax]
 00517421    mov         dword ptr fs:[eax],esp
 00517424    mov         eax,dword ptr [ebp-8]
 00517427    cmp         eax,dword ptr [ebp-10]
>0051742A    jne         0051746B
 0051742C    mov         eax,dword ptr [ebp-0C]
 0051742F    cmp         eax,dword ptr [ebp-14]
>00517432    jne         0051746B
 00517434    mov         eax,dword ptr [ebp-88]
 0051743A    add         eax,dword ptr [ebp-78]
 0051743D    sub         eax,dword ptr [ebp-68]
 00517440    push        eax
 00517441    mov         eax,dword ptr [ebp-84]
 00517447    add         eax,dword ptr [ebp-74]
 0051744A    sub         eax,dword ptr [ebp-64]
 0051744D    push        eax
 0051744E    mov         al,byte ptr [ebp+10]
 00517451    push        eax
 00517452    push        dword ptr [ebp+0C]
 00517455    push        dword ptr [ebp+8]
 00517458    mov         ecx,dword ptr [ebp+18]
 0051745B    lea         edx,[ebp-78]
 0051745E    mov         eax,dword ptr [ebp-4]
 00517461    call        00516EA0
>00517466    jmp         0051799B
 0051746B    mov         eax,dword ptr [ebp-18]
 0051746E    push        eax
 0051746F    lea         eax,[ebp-30]
 00517472    mov         ecx,1
 00517477    mov         edx,dword ptr ds:[5172BC];_DynArr_105_54
 0051747D    call        @DynArraySetLength
 00517482    add         esp,4
 00517485    cmp         dword ptr [ebp-10],1
>00517489    jle         005175A9
 0051748F    mov         eax,[0056E008];^gvar_0056D498
 00517494    cmp         byte ptr [eax],0
>00517497    je          005174F4
 00517499    fild        dword ptr [ebp-8]
 0051749C    fild        dword ptr [ebp-10]
 0051749F    fdivp       st(1),st
 005174A1    fstp        dword ptr [ebp-40]
 005174A4    wait
 005174A5    mov         eax,dword ptr [ebp-18]
 005174A8    dec         eax
 005174A9    test        eax,eax
>005174AB    jl          00517563
 005174B1    inc         eax
 005174B2    mov         dword ptr [ebp-54],eax
 005174B5    mov         dword ptr [ebp-28],0
 005174BC    mov         eax,dword ptr [ebp-28]
 005174BF    add         eax,dword ptr [ebp-78]
 005174C2    sub         eax,dword ptr [ebp-68]
 005174C5    mov         dword ptr [ebp-0AC],eax
 005174CB    fild        dword ptr [ebp-0AC]
 005174D1    fmul        dword ptr [ebp-40]
 005174D4    fild        dword ptr [ebp-88]
 005174DA    faddp       st(1),st
 005174DC    call        @TRUNC
 005174E1    mov         edx,dword ptr [ebp-30]
 005174E4    mov         ecx,dword ptr [ebp-28]
 005174E7    mov         dword ptr [edx+ecx*4],eax
 005174EA    inc         dword ptr [ebp-28]
 005174ED    dec         dword ptr [ebp-54]
>005174F0    jne         005174BC
>005174F2    jmp         00517563
 005174F4    mov         eax,dword ptr [ebp-8]
 005174F7    dec         eax
 005174F8    mov         dword ptr [ebp-0AC],eax
 005174FE    fild        dword ptr [ebp-0AC]
 00517504    mov         eax,dword ptr [ebp-10]
 00517507    dec         eax
 00517508    mov         dword ptr [ebp-0B0],eax
 0051750E    fild        dword ptr [ebp-0B0]
 00517514    fdivp       st(1),st
 00517516    fstp        dword ptr [ebp-40]
 00517519    wait
 0051751A    mov         eax,dword ptr [ebp-18]
 0051751D    dec         eax
 0051751E    test        eax,eax
>00517520    jl          00517563
 00517522    inc         eax
 00517523    mov         dword ptr [ebp-54],eax
 00517526    mov         dword ptr [ebp-28],0
 0051752D    mov         eax,dword ptr [ebp-28]
 00517530    add         eax,dword ptr [ebp-78]
 00517533    sub         eax,dword ptr [ebp-68]
 00517536    mov         dword ptr [ebp-0AC],eax
 0051753C    fild        dword ptr [ebp-0AC]
 00517542    fmul        dword ptr [ebp-40]
 00517545    fild        dword ptr [ebp-88]
 0051754B    faddp       st(1),st
 0051754D    call        @ROUND
 00517552    mov         edx,dword ptr [ebp-30]
 00517555    mov         ecx,dword ptr [ebp-28]
 00517558    mov         dword ptr [edx+ecx*4],eax
 0051755B    inc         dword ptr [ebp-28]
 0051755E    dec         dword ptr [ebp-54]
>00517561    jne         0051752D
 00517563    mov         eax,dword ptr [ebp-30]
 00517566    mov         eax,dword ptr [eax]
 00517568    cmp         eax,dword ptr [ebp-88]
>0051756E    jge         00517584
 00517570    mov         ecx,4D4
 00517575    mov         edx,517A10;'c:\program files\delphi7se\Components\G32\GR32_Resamplers.pas'
 0051757A    mov         eax,517A58;'Assertion failure'
 0051757F    call        @Assert
 00517584    mov         eax,dword ptr [ebp-30]
 00517587    mov         edx,dword ptr [ebp-18]
 0051758A    mov         eax,dword ptr [eax+edx*4-4]
 0051758E    cmp         eax,dword ptr [ebp-80]
>00517591    jl          005175BF
 00517593    mov         ecx,4D5
 00517598    mov         edx,517A10;'c:\program files\delphi7se\Components\G32\GR32_Resamplers.pas'
 0051759D    mov         eax,517A58;'Assertion failure'
 005175A2    call        @Assert
>005175A7    jmp         005175BF
 005175A9    mov         eax,dword ptr [ebp-88]
 005175AF    add         eax,dword ptr [ebp-80]
 005175B2    dec         eax
 005175B3    sar         eax,1
>005175B5    jns         005175BA
 005175B7    adc         eax,0
 005175BA    mov         edx,dword ptr [ebp-30]
 005175BD    mov         dword ptr [edx],eax
 005175BF    cmp         dword ptr [ebp-14],1
>005175C3    jg          005175CC
 005175C5    xor         eax,eax
 005175C7    mov         dword ptr [ebp-40],eax
>005175CA    jmp         0051760A
 005175CC    mov         eax,[0056E008];^gvar_0056D498
 005175D1    cmp         byte ptr [eax],0
>005175D4    je          005175E4
 005175D6    fild        dword ptr [ebp-0C]
 005175D9    fild        dword ptr [ebp-14]
 005175DC    fdivp       st(1),st
 005175DE    fstp        dword ptr [ebp-40]
 005175E1    wait
>005175E2    jmp         0051760A
 005175E4    mov         eax,dword ptr [ebp-0C]
 005175E7    dec         eax
 005175E8    mov         dword ptr [ebp-0AC],eax
 005175EE    fild        dword ptr [ebp-0AC]
 005175F4    mov         eax,dword ptr [ebp-14]
 005175F7    dec         eax
 005175F8    mov         dword ptr [ebp-0B0],eax
 005175FE    fild        dword ptr [ebp-0B0]
 00517604    fdivp       st(1),st
 00517606    fstp        dword ptr [ebp-40]
 00517609    wait
 0051760A    cmp         byte ptr [ebp+10],0
>0051760E    jne         0051774E
 00517614    mov         ecx,dword ptr [ebp-74]
 00517617    mov         edx,dword ptr [ebp-78]
 0051761A    mov         eax,dword ptr [ebp-4]
 0051761D    call        0051F574
 00517622    mov         dword ptr [ebp-38],eax
 00517625    mov         dword ptr [ebp-24],0FFFFFFFF
 0051762C    mov         eax,dword ptr [ebp-1C]
 0051762F    dec         eax
 00517630    test        eax,eax
>00517632    jl          0051799B
 00517638    inc         eax
 00517639    mov         dword ptr [ebp-54],eax
 0051763C    mov         dword ptr [ebp-2C],0
 00517643    cmp         dword ptr [ebp-14],1
>00517647    jg          0051765F
 00517649    mov         eax,dword ptr [ebp-84]
 0051764F    add         eax,dword ptr [ebp-7C]
 00517652    dec         eax
 00517653    sar         eax,1
>00517655    jns         0051765A
 00517657    adc         eax,0
 0051765A    mov         dword ptr [ebp-20],eax
>0051765D    jmp         005176BB
 0051765F    mov         eax,[0056E008];^gvar_0056D498
 00517664    cmp         byte ptr [eax],0
>00517667    je          00517693
 00517669    mov         eax,dword ptr [ebp-2C]
 0051766C    add         eax,dword ptr [ebp-74]
 0051766F    sub         eax,dword ptr [ebp-64]
 00517672    mov         dword ptr [ebp-0AC],eax
 00517678    fild        dword ptr [ebp-0AC]
 0051767E    fmul        dword ptr [ebp-40]
 00517681    fild        dword ptr [ebp-84]
 00517687    faddp       st(1),st
 00517689    call        @TRUNC
 0051768E    mov         dword ptr [ebp-20],eax
>00517691    jmp         005176BB
 00517693    mov         eax,dword ptr [ebp-2C]
 00517696    add         eax,dword ptr [ebp-74]
 00517699    sub         eax,dword ptr [ebp-64]
 0051769C    mov         dword ptr [ebp-0AC],eax
 005176A2    fild        dword ptr [ebp-0AC]
 005176A8    fmul        dword ptr [ebp-40]
 005176AB    fild        dword ptr [ebp-84]
 005176B1    faddp       st(1),st
 005176B3    call        @ROUND
 005176B8    mov         dword ptr [ebp-20],eax
 005176BB    mov         eax,dword ptr [ebp-20]
 005176BE    cmp         eax,dword ptr [ebp-24]
>005176C1    je          00517718
 005176C3    mov         edx,dword ptr [ebp-20]
 005176C6    mov         eax,dword ptr [ebp+18]
 005176C9    call        0051F4B4
 005176CE    mov         dword ptr [ebp-34],eax
 005176D1    mov         eax,dword ptr [ebp-38]
 005176D4    mov         dword ptr [ebp-4C],eax
 005176D7    mov         eax,dword ptr [ebp-30]
 005176DA    mov         dword ptr [ebp-50],eax
 005176DD    mov         eax,dword ptr [ebp-18]
 005176E0    dec         eax
 005176E1    test        eax,eax
>005176E3    jl          00517710
 005176E5    inc         eax
 005176E6    mov         dword ptr [ebp-58],eax
 005176E9    mov         dword ptr [ebp-28],0
 005176F0    mov         eax,dword ptr [ebp-50]
 005176F3    mov         eax,dword ptr [eax]
 005176F5    mov         edx,dword ptr [ebp-34]
 005176F8    mov         eax,dword ptr [edx+eax*4]
 005176FB    mov         edx,dword ptr [ebp-4C]
 005176FE    mov         dword ptr [edx],eax
 00517700    add         dword ptr [ebp-4C],4
 00517704    add         dword ptr [ebp-50],4
 00517708    inc         dword ptr [ebp-28]
 0051770B    dec         dword ptr [ebp-58]
>0051770E    jne         005176F0
 00517710    mov         eax,dword ptr [ebp-20]
 00517713    mov         dword ptr [ebp-24],eax
>00517716    jmp         00517731
 00517718    mov         eax,dword ptr [ebp-4]
 0051771B    mov         eax,dword ptr [eax+34]
 0051771E    neg         eax
 00517720    mov         edx,dword ptr [ebp-38]
 00517723    lea         eax,[edx+eax*4]
 00517726    mov         edx,dword ptr [ebp-38]
 00517729    mov         ecx,dword ptr [ebp-18]
 0051772C    call        00513030
 00517731    mov         eax,dword ptr [ebp-4]
 00517734    mov         eax,dword ptr [eax+34]
 00517737    shl         eax,2
 0051773A    add         dword ptr [ebp-38],eax
 0051773D    inc         dword ptr [ebp-2C]
 00517740    dec         dword ptr [ebp-54]
>00517743    jne         00517643
>00517749    jmp         0051799B
 0051774E    mov         eax,dword ptr [ebp-18]
 00517751    push        eax
 00517752    lea         eax,[ebp-3C]
 00517755    mov         ecx,1
 0051775A    mov         edx,dword ptr ds:[51D418];TArrayOfColor32
 00517760    call        @DynArraySetLength
 00517765    add         esp,4
 00517768    mov         ecx,dword ptr [ebp-74]
 0051776B    mov         edx,dword ptr [ebp-78]
 0051776E    mov         eax,dword ptr [ebp-4]
 00517771    call        0051F574
 00517776    mov         dword ptr [ebp-38],eax
 00517779    mov         dword ptr [ebp-24],0FFFFFFFF
 00517780    mov         eax,dword ptr [ebp+18]
 00517783    cmp         dword ptr [eax+0B4],0FF
>0051778D    jb          005177A9
 0051778F    mov         eax,dword ptr [ebp+18]
 00517792    movzx       eax,byte ptr [eax+7A]
 00517796    mov         edx,dword ptr ds:[56E498];^gvar_00577A18
 0051779C    mov         eax,dword ptr [edx+eax*4]
 0051779F    mov         dword ptr [ebp-44],eax
 005177A2    xor         eax,eax
 005177A4    mov         dword ptr [ebp-48],eax
>005177A7    jmp         005177C1
 005177A9    mov         eax,dword ptr [ebp+18]
 005177AC    movzx       eax,byte ptr [eax+7A]
 005177B0    mov         edx,dword ptr ds:[56E578];^gvar_00577A20
 005177B6    mov         eax,dword ptr [edx+eax*4]
 005177B9    mov         dword ptr [ebp-48],eax
 005177BC    xor         eax,eax
 005177BE    mov         dword ptr [ebp-44],eax
 005177C1    mov         eax,dword ptr [ebp-1C]
 005177C4    dec         eax
 005177C5    test        eax,eax
>005177C7    jl          0051799B
 005177CD    inc         eax
 005177CE    mov         dword ptr [ebp-54],eax
 005177D1    mov         dword ptr [ebp-2C],0
 005177D8    cmp         dword ptr [ebp-14],1
>005177DC    jle         00517841
 005177DE    call        00513ACC
 005177E3    mov         eax,[0056E008];^gvar_0056D498
 005177E8    cmp         byte ptr [eax],0
>005177EB    je          00517817
 005177ED    mov         eax,dword ptr [ebp-2C]
 005177F0    add         eax,dword ptr [ebp-74]
 005177F3    sub         eax,dword ptr [ebp-64]
 005177F6    mov         dword ptr [ebp-0AC],eax
 005177FC    fild        dword ptr [ebp-0AC]
 00517802    fmul        dword ptr [ebp-40]
 00517805    fild        dword ptr [ebp-84]
 0051780B    faddp       st(1),st
 0051780D    call        @TRUNC
 00517812    mov         dword ptr [ebp-20],eax
>00517815    jmp         00517855
 00517817    mov         eax,dword ptr [ebp-2C]
 0051781A    add         eax,dword ptr [ebp-74]
 0051781D    sub         eax,dword ptr [ebp-64]
 00517820    mov         dword ptr [ebp-0AC],eax
 00517826    fild        dword ptr [ebp-0AC]
 0051782C    fmul        dword ptr [ebp-40]
 0051782F    fild        dword ptr [ebp-84]
 00517835    faddp       st(1),st
 00517837    call        @ROUND
 0051783C    mov         dword ptr [ebp-20],eax
>0051783F    jmp         00517855
 00517841    mov         eax,dword ptr [ebp-84]
 00517847    add         eax,dword ptr [ebp-7C]
 0051784A    dec         eax
 0051784B    sar         eax,1
>0051784D    jns         00517852
 0051784F    adc         eax,0
 00517852    mov         dword ptr [ebp-20],eax
 00517855    mov         eax,dword ptr [ebp-20]
 00517858    cmp         eax,dword ptr [ebp-24]
>0051785B    je          005178B0
 0051785D    mov         edx,dword ptr [ebp-20]
 00517860    mov         eax,dword ptr [ebp+18]
 00517863    call        0051F4B4
 00517868    mov         dword ptr [ebp-34],eax
 0051786B    mov         eax,dword ptr [ebp-3C]
 0051786E    mov         dword ptr [ebp-4C],eax
 00517871    mov         eax,dword ptr [ebp-30]
 00517874    mov         dword ptr [ebp-50],eax
 00517877    mov         eax,dword ptr [ebp-18]
 0051787A    dec         eax
 0051787B    test        eax,eax
>0051787D    jl          005178AA
 0051787F    inc         eax
 00517880    mov         dword ptr [ebp-58],eax
 00517883    mov         dword ptr [ebp-28],0
 0051788A    mov         eax,dword ptr [ebp-50]
 0051788D    mov         eax,dword ptr [eax]
 0051788F    mov         edx,dword ptr [ebp-34]
 00517892    mov         eax,dword ptr [edx+eax*4]
 00517895    mov         edx,dword ptr [ebp-4C]
 00517898    mov         dword ptr [edx],eax
 0051789A    add         dword ptr [ebp-4C],4
 0051789E    add         dword ptr [ebp-50],4
 005178A2    inc         dword ptr [ebp-28]
 005178A5    dec         dword ptr [ebp-58]
>005178A8    jne         0051788A
 005178AA    mov         eax,dword ptr [ebp-20]
 005178AD    mov         dword ptr [ebp-24],eax
 005178B0    mov         al,byte ptr [ebp+10]
 005178B3    dec         al
>005178B5    je          005178C8
 005178B7    dec         al
>005178B9    je          00517946
 005178BF    dec         al
>005178C1    je          00517903
>005178C3    jmp         00517983
 005178C8    mov         eax,dword ptr [ebp+18]
 005178CB    cmp         dword ptr [eax+0B4],0FF
>005178D5    jb          005178E8
 005178D7    mov         edx,dword ptr [ebp-38]
 005178DA    mov         eax,dword ptr [ebp-3C]
 005178DD    mov         ecx,dword ptr [ebp-18]
 005178E0    call        dword ptr [ebp-44]
>005178E3    jmp         00517983
 005178E8    mov         eax,dword ptr [ebp+18]
 005178EB    mov         eax,dword ptr [eax+0B4]
 005178F1    push        eax
 005178F2    mov         edx,dword ptr [ebp-38]
 005178F5    mov         eax,dword ptr [ebp-3C]
 005178F8    mov         ecx,dword ptr [ebp-18]
 005178FB    call        dword ptr [ebp-48]
>005178FE    jmp         00517983
 00517903    mov         eax,dword ptr [ebp-18]
 00517906    dec         eax
 00517907    test        eax,eax
>00517909    jl          00517983
 0051790B    inc         eax
 0051790C    mov         dword ptr [ebp-58],eax
 0051790F    mov         dword ptr [ebp-28],0
 00517916    mov         eax,dword ptr [ebp-3C]
 00517919    mov         edx,dword ptr [ebp-28]
 0051791C    mov         eax,dword ptr [eax+edx*4]
 0051791F    mov         edx,dword ptr [ebp+18]
 00517922    cmp         eax,dword ptr [edx+0B8]
>00517928    je          0051793C
 0051792A    mov         eax,dword ptr [ebp-3C]
 0051792D    mov         edx,dword ptr [ebp-28]
 00517930    mov         eax,dword ptr [eax+edx*4]
 00517933    mov         edx,dword ptr [ebp-38]
 00517936    mov         ecx,dword ptr [ebp-28]
 00517939    mov         dword ptr [edx+ecx*4],eax
 0051793C    inc         dword ptr [ebp-28]
 0051793F    dec         dword ptr [ebp-58]
>00517942    jne         00517916
>00517944    jmp         00517983
 00517946    mov         eax,dword ptr [ebp-18]
 00517949    dec         eax
 0051794A    test        eax,eax
>0051794C    jl          00517983
 0051794E    inc         eax
 0051794F    mov         dword ptr [ebp-58],eax
 00517952    mov         dword ptr [ebp-28],0
 00517959    mov         eax,dword ptr [ebp+18]
 0051795C    mov         eax,dword ptr [eax+0B4]
 00517962    push        eax
 00517963    mov         eax,dword ptr [ebp-38]
 00517966    mov         edx,dword ptr [ebp-28]
 00517969    lea         ecx,[eax+edx*4]
 0051796C    mov         eax,dword ptr [ebp-3C]
 0051796F    mov         edx,dword ptr [ebp-28]
 00517972    mov         edx,dword ptr [eax+edx*4]
 00517975    mov         eax,dword ptr [ebp+0C]
 00517978    call        dword ptr [ebp+8]
 0051797B    inc         dword ptr [ebp-28]
 0051797E    dec         dword ptr [ebp-58]
>00517981    jne         00517959
 00517983    mov         eax,dword ptr [ebp-4]
 00517986    mov         eax,dword ptr [eax+34]
 00517989    shl         eax,2
 0051798C    add         dword ptr [ebp-38],eax
 0051798F    inc         dword ptr [ebp-2C]
 00517992    dec         dword ptr [ebp-54]
>00517995    jne         005177D8
 0051799B    xor         eax,eax
 0051799D    pop         edx
 0051799E    pop         ecx
 0051799F    pop         ecx
 005179A0    mov         dword ptr fs:[eax],edx
 005179A3    push        5179B5
 005179A8    call        00513ACC
 005179AD    ret
>005179AE    jmp         @HandleFinally
>005179B3    jmp         005179A8
 005179B5    xor         eax,eax
 005179B7    pop         edx
 005179B8    pop         ecx
 005179B9    pop         ecx
 005179BA    mov         dword ptr fs:[eax],edx
 005179BD    push        5179E6
 005179C2    lea         eax,[ebp-3C]
 005179C5    mov         edx,dword ptr ds:[51D418];TArrayOfColor32
 005179CB    call        @DynArrayClear
 005179D0    lea         eax,[ebp-30]
 005179D3    mov         edx,dword ptr ds:[5172BC];_DynArr_105_54
 005179D9    call        @DynArrayClear
 005179DE    ret
>005179DF    jmp         @HandleFinally
>005179E4    jmp         005179C2
 005179E6    pop         edi
 005179E7    pop         esi
 005179E8    pop         ebx
 005179E9    mov         esp,ebp
 005179EB    pop         ebp
 005179EC    ret         14
end;*}

//00517A98
{*procedure sub_00517A98(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00517A98    push        ebp
 00517A99    mov         ebp,esp
 00517A9B    add         esp,0FFFFFF74
 00517AA1    push        ebx
 00517AA2    push        esi
 00517AA3    push        edi
 00517AA4    xor         ebx,ebx
 00517AA6    mov         dword ptr [ebp-20],ebx
 00517AA9    mov         dword ptr [ebp-24],ebx
 00517AAC    mov         esi,dword ptr [ebp+14]
 00517AAF    lea         edi,[ebp-84]
 00517AB5    movs        dword ptr [edi],dword ptr [esi]
 00517AB6    movs        dword ptr [edi],dword ptr [esi]
 00517AB7    movs        dword ptr [edi],dword ptr [esi]
 00517AB8    movs        dword ptr [edi],dword ptr [esi]
 00517AB9    mov         esi,ecx
 00517ABB    lea         edi,[ebp-74]
 00517ABE    movs        dword ptr [edi],dword ptr [esi]
 00517ABF    movs        dword ptr [edi],dword ptr [esi]
 00517AC0    movs        dword ptr [edi],dword ptr [esi]
 00517AC1    movs        dword ptr [edi],dword ptr [esi]
 00517AC2    mov         esi,edx
 00517AC4    lea         edi,[ebp-64]
 00517AC7    movs        dword ptr [edi],dword ptr [esi]
 00517AC8    movs        dword ptr [edi],dword ptr [esi]
 00517AC9    movs        dword ptr [edi],dword ptr [esi]
 00517ACA    movs        dword ptr [edi],dword ptr [esi]
 00517ACB    mov         dword ptr [ebp-4],eax
 00517ACE    xor         eax,eax
 00517AD0    push        ebp
 00517AD1    push        5181BC
 00517AD6    push        dword ptr fs:[eax]
 00517AD9    mov         dword ptr fs:[eax],esp
 00517ADC    mov         eax,dword ptr [ebp-7C]
 00517ADF    sub         eax,dword ptr [ebp-84]
 00517AE5    mov         dword ptr [ebp-8],eax
 00517AE8    mov         eax,dword ptr [ebp-78]
 00517AEB    sub         eax,dword ptr [ebp-80]
 00517AEE    mov         dword ptr [ebp-0C],eax
 00517AF1    mov         eax,dword ptr [ebp-5C]
 00517AF4    sub         eax,dword ptr [ebp-64]
 00517AF7    mov         dword ptr [ebp-10],eax
 00517AFA    mov         eax,dword ptr [ebp-58]
 00517AFD    sub         eax,dword ptr [ebp-60]
 00517B00    mov         dword ptr [ebp-14],eax
 00517B03    mov         eax,dword ptr [ebp-6C]
 00517B06    sub         eax,dword ptr [ebp-74]
 00517B09    mov         dword ptr [ebp-18],eax
 00517B0C    mov         eax,dword ptr [ebp-68]
 00517B0F    sub         eax,dword ptr [ebp-70]
 00517B12    mov         dword ptr [ebp-1C],eax
 00517B15    mov         eax,dword ptr [ebp-18]
 00517B18    push        eax
 00517B19    lea         eax,[ebp-20]
 00517B1C    mov         ecx,1
 00517B21    mov         edx,dword ptr ds:[517A6C];_DynArr_105_64
 00517B27    call        @DynArraySetLength
 00517B2C    add         esp,4
 00517B2F    mov         eax,[0056E008];^gvar_0056D498
 00517B34    cmp         byte ptr [eax],0
>00517B37    je          00517B47
 00517B39    fild        dword ptr [ebp-8]
 00517B3C    fild        dword ptr [ebp-10]
 00517B3F    fdivp       st(1),st
 00517B41    fstp        dword ptr [ebp-2C]
 00517B44    wait
>00517B45    jmp         00517B6D
 00517B47    mov         eax,dword ptr [ebp-8]
 00517B4A    dec         eax
 00517B4B    mov         dword ptr [ebp-88],eax
 00517B51    fild        dword ptr [ebp-88]
 00517B57    mov         eax,dword ptr [ebp-10]
 00517B5A    dec         eax
 00517B5B    mov         dword ptr [ebp-8C],eax
 00517B61    fild        dword ptr [ebp-8C]
 00517B67    fdivp       st(1),st
 00517B69    fstp        dword ptr [ebp-2C]
 00517B6C    wait
 00517B6D    mov         eax,dword ptr [ebp-18]
 00517B70    dec         eax
 00517B71    test        eax,eax
>00517B73    jl          00517C8A
 00517B79    inc         eax
 00517B7A    mov         dword ptr [ebp-50],eax
 00517B7D    mov         dword ptr [ebp-3C],0
 00517B84    mov         eax,[0056E008];^gvar_0056D498
 00517B89    cmp         byte ptr [eax],0
>00517B8C    je          00517BC0
 00517B8E    mov         eax,dword ptr [ebp-3C]
 00517B91    add         eax,dword ptr [ebp-74]
 00517B94    sub         eax,dword ptr [ebp-64]
 00517B97    mov         dword ptr [ebp-88],eax
 00517B9D    fild        dword ptr [ebp-88]
 00517BA3    fadd        dword ptr ds:[5181CC];0.5:Single
 00517BA9    fmul        dword ptr [ebp-2C]
 00517BAC    fild        dword ptr [ebp-84]
 00517BB2    fsub        dword ptr ds:[5181CC];0.5:Single
 00517BB8    faddp       st(1),st
 00517BBA    fstp        dword ptr [ebp-28]
 00517BBD    wait
>00517BBE    jmp         00517BE4
 00517BC0    mov         eax,dword ptr [ebp-3C]
 00517BC3    add         eax,dword ptr [ebp-74]
 00517BC6    sub         eax,dword ptr [ebp-64]
 00517BC9    mov         dword ptr [ebp-88],eax
 00517BCF    fild        dword ptr [ebp-88]
 00517BD5    fmul        dword ptr [ebp-2C]
 00517BD8    fild        dword ptr [ebp-84]
 00517BDE    faddp       st(1),st
 00517BE0    fstp        dword ptr [ebp-28]
 00517BE3    wait
 00517BE4    fld         dword ptr [ebp-28]
 00517BE7    fcomp       dword ptr ds:[5181D0];0:Single
 00517BED    fnstsw      al
 00517BEF    sahf
>00517BF0    jae         00517BF9
 00517BF2    xor         eax,eax
 00517BF4    mov         dword ptr [ebp-28],eax
>00517BF7    jmp         00517C2B
 00517BF9    mov         eax,dword ptr [ebp+18]
 00517BFC    mov         eax,dword ptr [eax+34]
 00517BFF    dec         eax
 00517C00    mov         dword ptr [ebp-88],eax
 00517C06    fild        dword ptr [ebp-88]
 00517C0C    fcomp       dword ptr [ebp-28]
 00517C0F    fnstsw      al
 00517C11    sahf
>00517C12    jae         00517C2B
 00517C14    mov         eax,dword ptr [ebp+18]
 00517C17    mov         eax,dword ptr [eax+34]
 00517C1A    dec         eax
 00517C1B    mov         dword ptr [ebp-88],eax
 00517C21    fild        dword ptr [ebp-88]
 00517C27    fstp        dword ptr [ebp-28]
 00517C2A    wait
 00517C2B    fld         dword ptr [ebp-28]
 00517C2E    add         esp,0FFFFFFF4
 00517C31    fstp        tbyte ptr [esp]
 00517C34    wait
 00517C35    call        00437270
 00517C3A    mov         edx,dword ptr [ebp-20]
 00517C3D    mov         ecx,dword ptr [ebp-3C]
 00517C40    mov         dword ptr [edx+ecx*8],eax
 00517C43    fld         dword ptr [ebp-28]
 00517C46    call        @FRAC
 00517C4B    fmul        dword ptr ds:[5181D4];256:Single
 00517C51    call        @ROUND
 00517C56    mov         edx,100
 00517C5B    sub         edx,eax
 00517C5D    mov         eax,dword ptr [ebp-20]
 00517C60    mov         ecx,dword ptr [ebp-3C]
 00517C63    mov         dword ptr [eax+ecx*8+4],edx
 00517C67    mov         eax,dword ptr [ebp-20]
 00517C6A    mov         edx,dword ptr [ebp-3C]
 00517C6D    mov         eax,dword ptr [eax+edx*8+4]
 00517C71    shl         eax,10
 00517C74    mov         edx,dword ptr [ebp-20]
 00517C77    mov         ecx,dword ptr [ebp-3C]
 00517C7A    add         dword ptr [edx+ecx*8+4],eax
 00517C7E    inc         dword ptr [ebp-3C]
 00517C81    dec         dword ptr [ebp-50]
>00517C84    jne         00517B84
 00517C8A    mov         eax,dword ptr [ebp-18]
 00517C8D    dec         eax
 00517C8E    mov         dword ptr [ebp-3C],eax
>00517C91    jmp         00517CAB
 00517C93    mov         eax,dword ptr [ebp-20]
 00517C96    mov         edx,dword ptr [ebp-3C]
 00517C99    dec         dword ptr [eax+edx*8]
 00517C9C    mov         eax,dword ptr [ebp-20]
 00517C9F    mov         edx,dword ptr [ebp-3C]
 00517CA2    xor         ecx,ecx
 00517CA4    mov         dword ptr [eax+edx*8+4],ecx
 00517CA8    dec         dword ptr [ebp-3C]
 00517CAB    mov         eax,dword ptr [ebp-20]
 00517CAE    mov         edx,dword ptr [ebp-3C]
 00517CB1    mov         eax,dword ptr [eax+edx*8]
 00517CB4    mov         edx,dword ptr [ebp-7C]
 00517CB7    dec         edx
 00517CB8    cmp         eax,edx
>00517CBA    je          00517C93
 00517CBC    mov         eax,dword ptr [ebp-1C]
 00517CBF    push        eax
 00517CC0    lea         eax,[ebp-24]
 00517CC3    mov         ecx,1
 00517CC8    mov         edx,dword ptr ds:[517A6C];_DynArr_105_64
 00517CCE    call        @DynArraySetLength
 00517CD3    add         esp,4
 00517CD6    mov         eax,[0056E008];^gvar_0056D498
 00517CDB    cmp         byte ptr [eax],0
>00517CDE    je          00517CEE
 00517CE0    fild        dword ptr [ebp-0C]
 00517CE3    fild        dword ptr [ebp-14]
 00517CE6    fdivp       st(1),st
 00517CE8    fstp        dword ptr [ebp-2C]
 00517CEB    wait
>00517CEC    jmp         00517D14
 00517CEE    mov         eax,dword ptr [ebp-0C]
 00517CF1    dec         eax
 00517CF2    mov         dword ptr [ebp-88],eax
 00517CF8    fild        dword ptr [ebp-88]
 00517CFE    mov         eax,dword ptr [ebp-14]
 00517D01    dec         eax
 00517D02    mov         dword ptr [ebp-8C],eax
 00517D08    fild        dword ptr [ebp-8C]
 00517D0E    fdivp       st(1),st
 00517D10    fstp        dword ptr [ebp-2C]
 00517D13    wait
 00517D14    mov         eax,dword ptr [ebp-1C]
 00517D17    dec         eax
 00517D18    test        eax,eax
>00517D1A    jl          00517E2B
 00517D20    inc         eax
 00517D21    mov         dword ptr [ebp-50],eax
 00517D24    mov         dword ptr [ebp-3C],0
 00517D2B    mov         eax,[0056E008];^gvar_0056D498
 00517D30    cmp         byte ptr [eax],0
>00517D33    je          00517D64
 00517D35    mov         eax,dword ptr [ebp-3C]
 00517D38    add         eax,dword ptr [ebp-70]
 00517D3B    sub         eax,dword ptr [ebp-60]
 00517D3E    mov         dword ptr [ebp-88],eax
 00517D44    fild        dword ptr [ebp-88]
 00517D4A    fadd        dword ptr ds:[5181CC];0.5:Single
 00517D50    fmul        dword ptr [ebp-2C]
 00517D53    fild        dword ptr [ebp-80]
 00517D56    fsub        dword ptr ds:[5181CC];0.5:Single
 00517D5C    faddp       st(1),st
 00517D5E    fstp        dword ptr [ebp-28]
 00517D61    wait
>00517D62    jmp         00517D85
 00517D64    mov         eax,dword ptr [ebp-3C]
 00517D67    add         eax,dword ptr [ebp-70]
 00517D6A    sub         eax,dword ptr [ebp-60]
 00517D6D    mov         dword ptr [ebp-88],eax
 00517D73    fild        dword ptr [ebp-88]
 00517D79    fmul        dword ptr [ebp-2C]
 00517D7C    fild        dword ptr [ebp-80]
 00517D7F    faddp       st(1),st
 00517D81    fstp        dword ptr [ebp-28]
 00517D84    wait
 00517D85    fld         dword ptr [ebp-28]
 00517D88    fcomp       dword ptr ds:[5181D0];0:Single
 00517D8E    fnstsw      al
 00517D90    sahf
>00517D91    jae         00517D9A
 00517D93    xor         eax,eax
 00517D95    mov         dword ptr [ebp-28],eax
>00517D98    jmp         00517DCC
 00517D9A    mov         eax,dword ptr [ebp+18]
 00517D9D    mov         eax,dword ptr [eax+30]
 00517DA0    dec         eax
 00517DA1    mov         dword ptr [ebp-88],eax
 00517DA7    fild        dword ptr [ebp-88]
 00517DAD    fcomp       dword ptr [ebp-28]
 00517DB0    fnstsw      al
 00517DB2    sahf
>00517DB3    jae         00517DCC
 00517DB5    mov         eax,dword ptr [ebp+18]
 00517DB8    mov         eax,dword ptr [eax+30]
 00517DBB    dec         eax
 00517DBC    mov         dword ptr [ebp-88],eax
 00517DC2    fild        dword ptr [ebp-88]
 00517DC8    fstp        dword ptr [ebp-28]
 00517DCB    wait
 00517DCC    fld         dword ptr [ebp-28]
 00517DCF    add         esp,0FFFFFFF4
 00517DD2    fstp        tbyte ptr [esp]
 00517DD5    wait
 00517DD6    call        00437270
 00517DDB    mov         edx,dword ptr [ebp-24]
 00517DDE    mov         ecx,dword ptr [ebp-3C]
 00517DE1    mov         dword ptr [edx+ecx*8],eax
 00517DE4    fld         dword ptr [ebp-28]
 00517DE7    call        @FRAC
 00517DEC    fmul        dword ptr ds:[5181D4];256:Single
 00517DF2    call        @ROUND
 00517DF7    mov         edx,100
 00517DFC    sub         edx,eax
 00517DFE    mov         eax,dword ptr [ebp-24]
 00517E01    mov         ecx,dword ptr [ebp-3C]
 00517E04    mov         dword ptr [eax+ecx*8+4],edx
 00517E08    mov         eax,dword ptr [ebp-24]
 00517E0B    mov         edx,dword ptr [ebp-3C]
 00517E0E    mov         eax,dword ptr [eax+edx*8+4]
 00517E12    shl         eax,10
 00517E15    mov         edx,dword ptr [ebp-24]
 00517E18    mov         ecx,dword ptr [ebp-3C]
 00517E1B    add         dword ptr [edx+ecx*8+4],eax
 00517E1F    inc         dword ptr [ebp-3C]
 00517E22    dec         dword ptr [ebp-50]
>00517E25    jne         00517D2B
 00517E2B    mov         eax,dword ptr [ebp-1C]
 00517E2E    dec         eax
 00517E2F    mov         dword ptr [ebp-3C],eax
>00517E32    jmp         00517E4C
 00517E34    mov         eax,dword ptr [ebp-24]
 00517E37    mov         edx,dword ptr [ebp-3C]
 00517E3A    dec         dword ptr [eax+edx*8]
 00517E3D    mov         eax,dword ptr [ebp-24]
 00517E40    mov         edx,dword ptr [ebp-3C]
 00517E43    xor         ecx,ecx
 00517E45    mov         dword ptr [eax+edx*8+4],ecx
 00517E49    dec         dword ptr [ebp-3C]
 00517E4C    mov         eax,dword ptr [ebp-24]
 00517E4F    mov         edx,dword ptr [ebp-3C]
 00517E52    mov         eax,dword ptr [eax+edx*8]
 00517E55    mov         edx,dword ptr [ebp-78]
 00517E58    dec         edx
 00517E59    cmp         eax,edx
>00517E5B    je          00517E34
 00517E5D    mov         ecx,dword ptr [ebp-70]
 00517E60    mov         edx,dword ptr [ebp-74]
 00517E63    mov         eax,dword ptr [ebp-4]
 00517E66    call        0051F574
 00517E6B    mov         dword ptr [ebp-34],eax
 00517E6E    mov         al,byte ptr [ebp+10]
 00517E71    sub         al,1
>00517E73    jb          00517E88
>00517E75    je          00517F39
 00517E7B    sub         al,2
>00517E7D    je          0051800F
>00517E83    jmp         005180D4
 00517E88    mov         eax,dword ptr [ebp-1C]
 00517E8B    dec         eax
 00517E8C    test        eax,eax
>00517E8E    jl          00518196
 00517E94    inc         eax
 00517E95    mov         dword ptr [ebp-50],eax
 00517E98    mov         dword ptr [ebp-40],0
 00517E9F    mov         eax,dword ptr [ebp-24]
 00517EA2    mov         edx,dword ptr [ebp-40]
 00517EA5    mov         edx,dword ptr [eax+edx*8]
 00517EA8    mov         eax,dword ptr [ebp+18]
 00517EAB    call        0051F4B4
 00517EB0    mov         dword ptr [ebp-30],eax
 00517EB3    mov         eax,dword ptr [ebp-24]
 00517EB6    mov         edx,dword ptr [ebp-40]
 00517EB9    mov         eax,dword ptr [eax+edx*8+4]
 00517EBD    mov         dword ptr [ebp-44],eax
 00517EC0    mov         eax,dword ptr [ebp-18]
 00517EC3    dec         eax
 00517EC4    test        eax,eax
>00517EC6    jl          00517F1C
 00517EC8    inc         eax
 00517EC9    mov         dword ptr [ebp-54],eax
 00517ECC    mov         dword ptr [ebp-3C],0
 00517ED3    mov         eax,dword ptr [ebp-20]
 00517ED6    mov         edx,dword ptr [ebp-3C]
 00517ED9    mov         eax,dword ptr [eax+edx*8]
 00517EDC    mov         dword ptr [ebp-38],eax
 00517EDF    mov         eax,dword ptr [ebp+18]
 00517EE2    mov         eax,dword ptr [eax+34]
 00517EE5    add         eax,dword ptr [ebp-38]
 00517EE8    mov         edx,dword ptr [ebp-30]
 00517EEB    lea         eax,[edx+eax*4]
 00517EEE    push        eax
 00517EEF    mov         eax,dword ptr [ebp-30]
 00517EF2    mov         edx,dword ptr [ebp-38]
 00517EF5    lea         ecx,[eax+edx*4]
 00517EF8    mov         eax,dword ptr [ebp-20]
 00517EFB    mov         edx,dword ptr [ebp-3C]
 00517EFE    mov         eax,dword ptr [eax+edx*8+4]
 00517F02    mov         edx,dword ptr [ebp-44]
 00517F05    call        dword ptr ds:[597A78]
 00517F0B    mov         edx,dword ptr [ebp-34]
 00517F0E    mov         ecx,dword ptr [ebp-3C]
 00517F11    mov         dword ptr [edx+ecx*4],eax
 00517F14    inc         dword ptr [ebp-3C]
 00517F17    dec         dword ptr [ebp-54]
>00517F1A    jne         00517ED3
 00517F1C    mov         eax,dword ptr [ebp-4]
 00517F1F    mov         eax,dword ptr [eax+34]
 00517F22    shl         eax,2
 00517F25    add         dword ptr [ebp-34],eax
 00517F28    inc         dword ptr [ebp-40]
 00517F2B    dec         dword ptr [ebp-50]
>00517F2E    jne         00517E9F
>00517F34    jmp         00518196
 00517F39    mov         eax,dword ptr [ebp+18]
 00517F3C    movzx       eax,byte ptr [eax+7A]
 00517F40    mov         edx,dword ptr ds:[56E360];^gvar_00577A10
 00517F46    mov         eax,dword ptr [edx+eax*4]
 00517F49    mov         dword ptr [ebp-4C],eax
 00517F4C    mov         eax,dword ptr [ebp-1C]
 00517F4F    dec         eax
 00517F50    test        eax,eax
>00517F52    jl          00518196
 00517F58    inc         eax
 00517F59    mov         dword ptr [ebp-50],eax
 00517F5C    mov         dword ptr [ebp-40],0
 00517F63    mov         eax,dword ptr [ebp-24]
 00517F66    mov         edx,dword ptr [ebp-40]
 00517F69    mov         edx,dword ptr [eax+edx*8]
 00517F6C    mov         eax,dword ptr [ebp+18]
 00517F6F    call        0051F4B4
 00517F74    mov         dword ptr [ebp-30],eax
 00517F77    mov         eax,dword ptr [ebp-24]
 00517F7A    mov         edx,dword ptr [ebp-40]
 00517F7D    mov         eax,dword ptr [eax+edx*8+4]
 00517F81    mov         dword ptr [ebp-44],eax
 00517F84    mov         eax,dword ptr [ebp-18]
 00517F87    dec         eax
 00517F88    test        eax,eax
>00517F8A    jl          00517FF2
 00517F8C    inc         eax
 00517F8D    mov         dword ptr [ebp-54],eax
 00517F90    mov         dword ptr [ebp-3C],0
 00517F97    mov         eax,dword ptr [ebp-20]
 00517F9A    mov         edx,dword ptr [ebp-3C]
 00517F9D    mov         eax,dword ptr [eax+edx*8]
 00517FA0    mov         dword ptr [ebp-38],eax
 00517FA3    mov         eax,dword ptr [ebp+18]
 00517FA6    mov         eax,dword ptr [eax+34]
 00517FA9    add         eax,dword ptr [ebp-38]
 00517FAC    mov         edx,dword ptr [ebp-30]
 00517FAF    lea         eax,[edx+eax*4]
 00517FB2    push        eax
 00517FB3    mov         eax,dword ptr [ebp-30]
 00517FB6    mov         edx,dword ptr [ebp-38]
 00517FB9    lea         ecx,[eax+edx*4]
 00517FBC    mov         eax,dword ptr [ebp-20]
 00517FBF    mov         edx,dword ptr [ebp-3C]
 00517FC2    mov         eax,dword ptr [eax+edx*8+4]
 00517FC6    mov         edx,dword ptr [ebp-44]
 00517FC9    call        dword ptr ds:[597A78]
 00517FCF    mov         dword ptr [ebp-48],eax
 00517FD2    mov         eax,dword ptr [ebp+18]
 00517FD5    mov         ecx,dword ptr [eax+0B4]
 00517FDB    mov         eax,dword ptr [ebp-34]
 00517FDE    mov         edx,dword ptr [ebp-3C]
 00517FE1    lea         edx,[eax+edx*4]
 00517FE4    mov         eax,dword ptr [ebp-48]
 00517FE7    call        dword ptr [ebp-4C]
 00517FEA    inc         dword ptr [ebp-3C]
 00517FED    dec         dword ptr [ebp-54]
>00517FF0    jne         00517F97
 00517FF2    mov         eax,dword ptr [ebp-4]
 00517FF5    mov         eax,dword ptr [eax+34]
 00517FF8    shl         eax,2
 00517FFB    add         dword ptr [ebp-34],eax
 00517FFE    inc         dword ptr [ebp-40]
 00518001    dec         dword ptr [ebp-50]
>00518004    jne         00517F63
>0051800A    jmp         00518196
 0051800F    mov         eax,dword ptr [ebp-1C]
 00518012    dec         eax
 00518013    test        eax,eax
>00518015    jl          00518196
 0051801B    inc         eax
 0051801C    mov         dword ptr [ebp-50],eax
 0051801F    mov         dword ptr [ebp-40],0
 00518026    mov         eax,dword ptr [ebp-24]
 00518029    mov         edx,dword ptr [ebp-40]
 0051802C    mov         edx,dword ptr [eax+edx*8]
 0051802F    mov         eax,dword ptr [ebp+18]
 00518032    call        0051F4B4
 00518037    mov         dword ptr [ebp-30],eax
 0051803A    mov         eax,dword ptr [ebp-24]
 0051803D    mov         edx,dword ptr [ebp-40]
 00518040    mov         eax,dword ptr [eax+edx*8+4]
 00518044    mov         dword ptr [ebp-44],eax
 00518047    mov         eax,dword ptr [ebp-18]
 0051804A    dec         eax
 0051804B    test        eax,eax
>0051804D    jl          005180B7
 0051804F    inc         eax
 00518050    mov         dword ptr [ebp-54],eax
 00518053    mov         dword ptr [ebp-3C],0
 0051805A    mov         eax,dword ptr [ebp-20]
 0051805D    mov         edx,dword ptr [ebp-3C]
 00518060    mov         eax,dword ptr [eax+edx*8]
 00518063    mov         dword ptr [ebp-38],eax
 00518066    mov         eax,dword ptr [ebp+18]
 00518069    mov         eax,dword ptr [eax+34]
 0051806C    add         eax,dword ptr [ebp-38]
 0051806F    mov         edx,dword ptr [ebp-30]
 00518072    lea         eax,[edx+eax*4]
 00518075    push        eax
 00518076    mov         eax,dword ptr [ebp-30]
 00518079    mov         edx,dword ptr [ebp-38]
 0051807C    lea         ecx,[eax+edx*4]
 0051807F    mov         eax,dword ptr [ebp-20]
 00518082    mov         edx,dword ptr [ebp-3C]
 00518085    mov         eax,dword ptr [eax+edx*8+4]
 00518089    mov         edx,dword ptr [ebp-44]
 0051808C    call        dword ptr ds:[597A78]
 00518092    mov         dword ptr [ebp-48],eax
 00518095    mov         eax,dword ptr [ebp+18]
 00518098    mov         eax,dword ptr [eax+0B8]
 0051809E    cmp         eax,dword ptr [ebp-48]
>005180A1    je          005180AF
 005180A3    mov         eax,dword ptr [ebp-34]
 005180A6    mov         edx,dword ptr [ebp-3C]
 005180A9    mov         ecx,dword ptr [ebp-48]
 005180AC    mov         dword ptr [eax+edx*4],ecx
 005180AF    inc         dword ptr [ebp-3C]
 005180B2    dec         dword ptr [ebp-54]
>005180B5    jne         0051805A
 005180B7    mov         eax,dword ptr [ebp-4]
 005180BA    mov         eax,dword ptr [eax+34]
 005180BD    shl         eax,2
 005180C0    add         dword ptr [ebp-34],eax
 005180C3    inc         dword ptr [ebp-40]
 005180C6    dec         dword ptr [ebp-50]
>005180C9    jne         00518026
>005180CF    jmp         00518196
 005180D4    mov         eax,dword ptr [ebp-1C]
 005180D7    dec         eax
 005180D8    test        eax,eax
>005180DA    jl          00518196
 005180E0    inc         eax
 005180E1    mov         dword ptr [ebp-50],eax
 005180E4    mov         dword ptr [ebp-40],0
 005180EB    mov         eax,dword ptr [ebp-24]
 005180EE    mov         edx,dword ptr [ebp-40]
 005180F1    mov         edx,dword ptr [eax+edx*8]
 005180F4    mov         eax,dword ptr [ebp+18]
 005180F7    call        0051F4B4
 005180FC    mov         dword ptr [ebp-30],eax
 005180FF    mov         eax,dword ptr [ebp-24]
 00518102    mov         edx,dword ptr [ebp-40]
 00518105    mov         eax,dword ptr [eax+edx*8+4]
 00518109    mov         dword ptr [ebp-44],eax
 0051810C    mov         eax,dword ptr [ebp-18]
 0051810F    dec         eax
 00518110    test        eax,eax
>00518112    jl          0051817E
 00518114    inc         eax
 00518115    mov         dword ptr [ebp-54],eax
 00518118    mov         dword ptr [ebp-3C],0
 0051811F    mov         eax,dword ptr [ebp-20]
 00518122    mov         edx,dword ptr [ebp-3C]
 00518125    mov         eax,dword ptr [eax+edx*8]
 00518128    mov         dword ptr [ebp-38],eax
 0051812B    mov         eax,dword ptr [ebp+18]
 0051812E    mov         eax,dword ptr [eax+34]
 00518131    add         eax,dword ptr [ebp-38]
 00518134    mov         edx,dword ptr [ebp-30]
 00518137    lea         eax,[edx+eax*4]
 0051813A    push        eax
 0051813B    mov         eax,dword ptr [ebp-30]
 0051813E    mov         edx,dword ptr [ebp-38]
 00518141    lea         ecx,[eax+edx*4]
 00518144    mov         eax,dword ptr [ebp-20]
 00518147    mov         edx,dword ptr [ebp-3C]
 0051814A    mov         eax,dword ptr [eax+edx*8+4]
 0051814E    mov         edx,dword ptr [ebp-44]
 00518151    call        dword ptr ds:[597A78]
 00518157    mov         dword ptr [ebp-48],eax
 0051815A    mov         eax,dword ptr [ebp+18]
 0051815D    mov         eax,dword ptr [eax+0B4]
 00518163    push        eax
 00518164    mov         eax,dword ptr [ebp-34]
 00518167    mov         edx,dword ptr [ebp-3C]
 0051816A    lea         ecx,[eax+edx*4]
 0051816D    mov         edx,dword ptr [ebp-48]
 00518170    mov         eax,dword ptr [ebp+0C]
 00518173    call        dword ptr [ebp+8]
 00518176    inc         dword ptr [ebp-3C]
 00518179    dec         dword ptr [ebp-54]
>0051817C    jne         0051811F
 0051817E    mov         eax,dword ptr [ebp-4]
 00518181    mov         eax,dword ptr [eax+34]
 00518184    shl         eax,2
 00518187    add         dword ptr [ebp-34],eax
 0051818A    inc         dword ptr [ebp-40]
 0051818D    dec         dword ptr [ebp-50]
>00518190    jne         005180EB
 00518196    call        00513ACC
 0051819B    xor         eax,eax
 0051819D    pop         edx
 0051819E    pop         ecx
 0051819F    pop         ecx
 005181A0    mov         dword ptr fs:[eax],edx
 005181A3    push        5181C3
 005181A8    lea         eax,[ebp-24]
 005181AB    mov         edx,dword ptr ds:[517A6C];_DynArr_105_64
 005181B1    mov         ecx,2
 005181B6    call        @FinalizeArray
 005181BB    ret
>005181BC    jmp         @HandleFinally
>005181C1    jmp         005181A8
 005181C3    pop         edi
 005181C4    pop         esi
 005181C5    pop         ebx
 005181C6    mov         esp,ebp
 005181C8    pop         ebp
 005181C9    ret         14
end;*}

//005181D8
{*procedure sub_005181D8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005181D8    push        ebp
 005181D9    mov         ebp,esp
 005181DB    add         esp,0FFFFFFA4
 005181DE    mov         dword ptr [ebp-0C],ecx
 005181E1    mov         dword ptr [ebp-8],edx
 005181E4    mov         dword ptr [ebp-4],eax
 005181E7    mov         eax,dword ptr [ebp+10]
 005181EA    sub         eax,dword ptr [ebp+14]
 005181ED    mov         dword ptr [ebp-10],eax
 005181F0    mov         eax,dword ptr [ebp-8]
 005181F3    sub         eax,dword ptr [ebp-4]
 005181F6    mov         dword ptr [ebp-14],eax
 005181F9    mov         eax,dword ptr [ebp+18]
 005181FC    sub         eax,dword ptr [ebp-0C]
 005181FF    mov         dword ptr [ebp-18],eax
 00518202    cmp         dword ptr [ebp-10],0
>00518206    jne         0051821B
 00518208    mov         eax,dword ptr [ebp+8]
 0051820B    mov         edx,dword ptr ds:[516D50];TMappingTable
 00518211    call        @DynArrayClear
>00518216    jmp         0051872C
 0051821B    cmp         dword ptr [ebp-10],1
>0051821F    jne         005182A0
 00518221    mov         eax,dword ptr [ebp-18]
 00518224    push        eax
 00518225    mov         eax,dword ptr [ebp+8]
 00518228    mov         ecx,1
 0051822D    mov         edx,dword ptr ds:[516D50];TMappingTable
 00518233    call        @DynArraySetLength
 00518238    add         esp,4
 0051823B    mov         eax,dword ptr [ebp-18]
 0051823E    dec         eax
 0051823F    test        eax,eax
>00518241    jl          0051872C
 00518247    inc         eax
 00518248    mov         dword ptr [ebp-50],eax
 0051824B    mov         dword ptr [ebp-40],0
 00518252    push        1
 00518254    mov         eax,dword ptr [ebp+8]
 00518257    mov         eax,dword ptr [eax]
 00518259    mov         edx,dword ptr [ebp-40]
 0051825C    lea         eax,[eax+edx*4]
 0051825F    mov         ecx,1
 00518264    mov         edx,dword ptr ds:[516D20];TCluster
 0051826A    call        @DynArraySetLength
 0051826F    add         esp,4
 00518272    mov         eax,dword ptr [ebp+8]
 00518275    mov         eax,dword ptr [eax]
 00518277    mov         edx,dword ptr [ebp-40]
 0051827A    mov         eax,dword ptr [eax+edx*4]
 0051827D    xor         edx,edx
 0051827F    mov         dword ptr [eax],edx
 00518281    mov         eax,dword ptr [ebp+8]
 00518284    mov         eax,dword ptr [eax]
 00518286    mov         edx,dword ptr [ebp-40]
 00518289    mov         eax,dword ptr [eax+edx*4]
 0051828C    mov         dword ptr [eax+4],100
 00518293    inc         dword ptr [ebp-40]
 00518296    dec         dword ptr [ebp-50]
>00518299    jne         00518252
>0051829B    jmp         0051872C
 005182A0    mov         eax,dword ptr [ebp-18]
 005182A3    push        eax
 005182A4    mov         eax,dword ptr [ebp+8]
 005182A7    mov         ecx,1
 005182AC    mov         edx,dword ptr ds:[516D50];TMappingTable
 005182B2    call        @DynArraySetLength
 005182B7    add         esp,4
 005182BA    cmp         dword ptr [ebp-18],0
>005182BE    je          0051872C
 005182C4    mov         eax,[0056E008];^gvar_0056D498
 005182C9    cmp         byte ptr [eax],0
>005182CC    je          005182DC
 005182CE    fild        dword ptr [ebp-14]
 005182D1    fild        dword ptr [ebp-10]
 005182D4    fdivp       st(1),st
 005182D6    fstp        dword ptr [ebp-28]
 005182D9    wait
>005182DA    jmp         005182F6
 005182DC    mov         eax,dword ptr [ebp-14]
 005182DF    dec         eax
 005182E0    mov         dword ptr [ebp-58],eax
 005182E3    fild        dword ptr [ebp-58]
 005182E6    mov         eax,dword ptr [ebp-10]
 005182E9    dec         eax
 005182EA    mov         dword ptr [ebp-5C],eax
 005182ED    fild        dword ptr [ebp-5C]
 005182F0    fdivp       st(1),st
 005182F2    fstp        dword ptr [ebp-28]
 005182F5    wait
 005182F6    mov         eax,dword ptr [ebp+0C]
 005182F9    mov         dword ptr [ebp-1C],eax
 005182FC    mov         eax,dword ptr [eax]
 005182FE    mov         eax,dword ptr [eax+14]
 00518301    mov         dword ptr [ebp-20],eax
 00518304    mov         eax,dword ptr [ebp+0C]
 00518307    mov         edx,dword ptr [eax]
 00518309    call        dword ptr [edx+18]
 0051830C    fstp        dword ptr [ebp-24]
 0051830F    wait
 00518310    xor         eax,eax
 00518312    mov         dword ptr [ebp-48],eax
 00518315    fld         dword ptr [ebp-28]
 00518318    fcomp       dword ptr ds:[518734];0:Single
 0051831E    fnstsw      al
 00518320    sahf
>00518321    jne         00518387
 00518323    mov         eax,dword ptr [ebp+8]
 00518326    mov         eax,dword ptr [eax]
 00518328    call        @DynArrayLength
 0051832D    dec         eax
>0051832E    je          00518344
 00518330    mov         ecx,5F5
 00518335    mov         edx,518740;'c:\program files\delphi7se\Components\G32\GR32_Resamplers.pas'
 0051833A    mov         eax,518788;'Assertion failure'
 0051833F    call        @Assert
 00518344    push        1
 00518346    mov         eax,dword ptr [ebp+8]
 00518349    mov         eax,dword ptr [eax]
 0051834B    mov         ecx,1
 00518350    mov         edx,dword ptr ds:[516D20];TCluster
 00518356    call        @DynArraySetLength
 0051835B    add         esp,4
 0051835E    mov         eax,dword ptr [ebp+14]
 00518361    add         eax,dword ptr [ebp+10]
 00518364    sar         eax,1
>00518366    jns         0051836B
 00518368    adc         eax,0
 0051836B    mov         edx,dword ptr [ebp+8]
 0051836E    mov         edx,dword ptr [edx]
 00518370    mov         edx,dword ptr [edx]
 00518372    mov         dword ptr [edx],eax
 00518374    mov         eax,dword ptr [ebp+8]
 00518377    mov         eax,dword ptr [eax]
 00518379    mov         eax,dword ptr [eax]
 0051837B    mov         dword ptr [eax+4],100
>00518382    jmp         0051872C
 00518387    fld         dword ptr [ebp-28]
 0051838A    fcomp       dword ptr ds:[51879C];1:Single
 00518390    fnstsw      al
 00518392    sahf
>00518393    jae         005185A2
 00518399    mov         eax,dword ptr [ebp-28]
 0051839C    mov         dword ptr [ebp-2C],eax
 0051839F    fld         dword ptr ds:[51879C];1:Single
 005183A5    fdiv        dword ptr [ebp-28]
 005183A8    fstp        dword ptr [ebp-28]
 005183AB    wait
 005183AC    fld         dword ptr [ebp-24]
 005183AF    fmul        dword ptr [ebp-28]
 005183B2    fstp        dword ptr [ebp-24]
 005183B5    wait
 005183B6    mov         eax,dword ptr [ebp-18]
 005183B9    dec         eax
 005183BA    test        eax,eax
>005183BC    jl          0051872C
 005183C2    inc         eax
 005183C3    mov         dword ptr [ebp-50],eax
 005183C6    mov         dword ptr [ebp-40],0
 005183CD    mov         eax,[0056E008];^gvar_0056D498
 005183D2    cmp         byte ptr [eax],0
>005183D5    je          00518400
 005183D7    mov         eax,dword ptr [ebp-40]
 005183DA    sub         eax,dword ptr [ebp-4]
 005183DD    add         eax,dword ptr [ebp-0C]
 005183E0    mov         dword ptr [ebp-58],eax
 005183E3    fild        dword ptr [ebp-58]
 005183E6    fadd        dword ptr ds:[5187A0];0.5:Single
 005183EC    fmul        dword ptr [ebp-28]
 005183EF    fild        dword ptr [ebp+14]
 005183F2    fsub        dword ptr ds:[5187A0];0.5:Single
 005183F8    faddp       st(1),st
 005183FA    fstp        dword ptr [ebp-30]
 005183FD    wait
>005183FE    jmp         0051841B
 00518400    mov         eax,dword ptr [ebp-40]
 00518403    sub         eax,dword ptr [ebp-4]
 00518406    add         eax,dword ptr [ebp-0C]
 00518409    mov         dword ptr [ebp-58],eax
 0051840C    fild        dword ptr [ebp-58]
 0051840F    fmul        dword ptr [ebp-28]
 00518412    fild        dword ptr [ebp+14]
 00518415    faddp       st(1),st
 00518417    fstp        dword ptr [ebp-30]
 0051841A    wait
 0051841B    fld         dword ptr [ebp-30]
 0051841E    fsub        dword ptr [ebp-24]
 00518421    add         esp,0FFFFFFF4
 00518424    fstp        tbyte ptr [esp]
 00518427    wait
 00518428    call        00437270
 0051842D    mov         dword ptr [ebp-38],eax
 00518430    fld         dword ptr [ebp-30]
 00518433    fadd        dword ptr [ebp-24]
 00518436    add         esp,0FFFFFFF4
 00518439    fstp        tbyte ptr [esp]
 0051843C    wait
 0051843D    call        0043723C
 00518442    mov         dword ptr [ebp-3C],eax
 00518445    mov         dword ptr [ebp-34],0FFFFFF00
 0051844C    mov         eax,dword ptr [ebp-38]
 0051844F    mov         edx,dword ptr [ebp-3C]
 00518452    sub         edx,eax
>00518454    jl          0051850B
 0051845A    inc         edx
 0051845B    mov         dword ptr [ebp-54],edx
 0051845E    mov         dword ptr [ebp-44],eax
 00518461    fild        dword ptr [ebp-44]
 00518464    fsubr       dword ptr [ebp-30]
 00518467    fmul        dword ptr [ebp-2C]
 0051846A    add         esp,0FFFFFFFC
 0051846D    fstp        dword ptr [esp]
 00518470    wait
 00518471    mov         eax,dword ptr [ebp-1C]
 00518474    call        dword ptr [ebp-20]
 00518477    fmul        dword ptr ds:[5187A4];256:Single
 0051847D    fmul        dword ptr [ebp-2C]
 00518480    call        @ROUND
 00518485    mov         dword ptr [ebp-4C],eax
 00518488    cmp         dword ptr [ebp-4C],0
>0051848C    je          005184FF
 0051848E    mov         eax,dword ptr [ebp-4C]
 00518491    add         dword ptr [ebp-34],eax
 00518494    mov         eax,dword ptr [ebp+8]
 00518497    mov         eax,dword ptr [eax]
 00518499    mov         edx,dword ptr [ebp-40]
 0051849C    mov         eax,dword ptr [eax+edx*4]
 0051849F    call        @DynArrayLength
 005184A4    mov         dword ptr [ebp-48],eax
 005184A7    mov         eax,dword ptr [ebp-48]
 005184AA    inc         eax
 005184AB    push        eax
 005184AC    mov         eax,dword ptr [ebp+8]
 005184AF    mov         eax,dword ptr [eax]
 005184B1    mov         edx,dword ptr [ebp-40]
 005184B4    lea         eax,[eax+edx*4]
 005184B7    mov         ecx,1
 005184BC    mov         edx,dword ptr ds:[516D20];TCluster
 005184C2    call        @DynArraySetLength
 005184C7    add         esp,4
 005184CA    mov         ecx,dword ptr [ebp+10]
 005184CD    dec         ecx
 005184CE    mov         edx,dword ptr [ebp+14]
 005184D1    mov         eax,dword ptr [ebp-44]
 005184D4    call        005130B0
 005184D9    mov         edx,dword ptr [ebp+8]
 005184DC    mov         edx,dword ptr [edx]
 005184DE    mov         ecx,dword ptr [ebp-40]
 005184E1    mov         edx,dword ptr [edx+ecx*4]
 005184E4    mov         ecx,dword ptr [ebp-48]
 005184E7    mov         dword ptr [edx+ecx*8],eax
 005184EA    mov         eax,dword ptr [ebp+8]
 005184ED    mov         eax,dword ptr [eax]
 005184EF    mov         edx,dword ptr [ebp-40]
 005184F2    mov         eax,dword ptr [eax+edx*4]
 005184F5    mov         edx,dword ptr [ebp-48]
 005184F8    mov         ecx,dword ptr [ebp-4C]
 005184FB    mov         dword ptr [eax+edx*8+4],ecx
 005184FF    inc         dword ptr [ebp-44]
 00518502    dec         dword ptr [ebp-54]
>00518505    jne         00518461
 0051850B    mov         eax,dword ptr [ebp+8]
 0051850E    mov         eax,dword ptr [eax]
 00518510    mov         edx,dword ptr [ebp-40]
 00518513    mov         eax,dword ptr [eax+edx*4]
 00518516    call        @DynArrayLength
 0051851B    test        eax,eax
>0051851D    jne         0051856F
 0051851F    push        1
 00518521    mov         eax,dword ptr [ebp+8]
 00518524    mov         eax,dword ptr [eax]
 00518526    mov         edx,dword ptr [ebp-40]
 00518529    lea         eax,[eax+edx*4]
 0051852C    mov         ecx,1
 00518531    mov         edx,dword ptr ds:[516D20];TCluster
 00518537    call        @DynArraySetLength
 0051853C    add         esp,4
 0051853F    fld         dword ptr [ebp-30]
 00518542    add         esp,0FFFFFFF4
 00518545    fstp        tbyte ptr [esp]
 00518548    wait
 00518549    call        00437270
 0051854E    mov         edx,dword ptr [ebp+8]
 00518551    mov         edx,dword ptr [edx]
 00518553    mov         ecx,dword ptr [ebp-40]
 00518556    mov         edx,dword ptr [edx+ecx*4]
 00518559    mov         dword ptr [edx],eax
 0051855B    mov         eax,dword ptr [ebp+8]
 0051855E    mov         eax,dword ptr [eax]
 00518560    mov         edx,dword ptr [ebp-40]
 00518563    mov         eax,dword ptr [eax+edx*4]
 00518566    mov         dword ptr [eax+4],100
>0051856D    jmp         00518591
 0051856F    cmp         dword ptr [ebp-34],0
>00518573    je          00518591
 00518575    mov         eax,dword ptr [ebp-48]
 00518578    sar         eax,1
>0051857A    jns         0051857F
 0051857C    adc         eax,0
 0051857F    mov         edx,dword ptr [ebp+8]
 00518582    mov         edx,dword ptr [edx]
 00518584    mov         ecx,dword ptr [ebp-40]
 00518587    mov         edx,dword ptr [edx+ecx*4]
 0051858A    mov         ecx,dword ptr [ebp-34]
 0051858D    sub         dword ptr [edx+eax*8+4],ecx
 00518591    inc         dword ptr [ebp-40]
 00518594    dec         dword ptr [ebp-50]
>00518597    jne         005183CD
>0051859D    jmp         0051872C
 005185A2    fld         dword ptr ds:[51879C];1:Single
 005185A8    fdiv        dword ptr [ebp-28]
 005185AB    fstp        dword ptr [ebp-28]
 005185AE    wait
 005185AF    mov         eax,dword ptr [ebp-18]
 005185B2    dec         eax
 005185B3    test        eax,eax
>005185B5    jl          0051872C
 005185BB    inc         eax
 005185BC    mov         dword ptr [ebp-50],eax
 005185BF    mov         dword ptr [ebp-40],0
 005185C6    mov         eax,[0056E008];^gvar_0056D498
 005185CB    cmp         byte ptr [eax],0
>005185CE    je          005185F9
 005185D0    mov         eax,dword ptr [ebp-40]
 005185D3    sub         eax,dword ptr [ebp-4]
 005185D6    add         eax,dword ptr [ebp-0C]
 005185D9    mov         dword ptr [ebp-58],eax
 005185DC    fild        dword ptr [ebp-58]
 005185DF    fadd        dword ptr ds:[5187A0];0.5:Single
 005185E5    fmul        dword ptr [ebp-28]
 005185E8    fild        dword ptr [ebp+14]
 005185EB    fsub        dword ptr ds:[5187A0];0.5:Single
 005185F1    faddp       st(1),st
 005185F3    fstp        dword ptr [ebp-30]
 005185F6    wait
>005185F7    jmp         00518614
 005185F9    mov         eax,dword ptr [ebp-40]
 005185FC    sub         eax,dword ptr [ebp-4]
 005185FF    add         eax,dword ptr [ebp-0C]
 00518602    mov         dword ptr [ebp-58],eax
 00518605    fild        dword ptr [ebp-58]
 00518608    fmul        dword ptr [ebp-28]
 0051860B    fild        dword ptr [ebp+14]
 0051860E    faddp       st(1),st
 00518610    fstp        dword ptr [ebp-30]
 00518613    wait
 00518614    fld         dword ptr [ebp-30]
 00518617    fsub        dword ptr [ebp-24]
 0051861A    add         esp,0FFFFFFF4
 0051861D    fstp        tbyte ptr [esp]
 00518620    wait
 00518621    call        00437270
 00518626    mov         dword ptr [ebp-38],eax
 00518629    fld         dword ptr [ebp-30]
 0051862C    fadd        dword ptr [ebp-24]
 0051862F    add         esp,0FFFFFFF4
 00518632    fstp        tbyte ptr [esp]
 00518635    wait
 00518636    call        0043723C
 0051863B    mov         dword ptr [ebp-3C],eax
 0051863E    mov         dword ptr [ebp-34],0FFFFFF00
 00518645    mov         eax,dword ptr [ebp-38]
 00518648    mov         edx,dword ptr [ebp-3C]
 0051864B    sub         edx,eax
>0051864D    jl          005186FE
 00518653    inc         edx
 00518654    mov         dword ptr [ebp-54],edx
 00518657    mov         dword ptr [ebp-44],eax
 0051865A    fild        dword ptr [ebp-44]
 0051865D    fsubr       dword ptr [ebp-30]
 00518660    add         esp,0FFFFFFFC
 00518663    fstp        dword ptr [esp]
 00518666    wait
 00518667    mov         eax,dword ptr [ebp-1C]
 0051866A    call        dword ptr [ebp-20]
 0051866D    fmul        dword ptr ds:[5187A4];256:Single
 00518673    call        @ROUND
 00518678    mov         dword ptr [ebp-4C],eax
 0051867B    cmp         dword ptr [ebp-4C],0
>0051867F    je          005186F2
 00518681    mov         eax,dword ptr [ebp-4C]
 00518684    add         dword ptr [ebp-34],eax
 00518687    mov         eax,dword ptr [ebp+8]
 0051868A    mov         eax,dword ptr [eax]
 0051868C    mov         edx,dword ptr [ebp-40]
 0051868F    mov         eax,dword ptr [eax+edx*4]
 00518692    call        @DynArrayLength
 00518697    mov         dword ptr [ebp-48],eax
 0051869A    mov         eax,dword ptr [ebp-48]
 0051869D    inc         eax
 0051869E    push        eax
 0051869F    mov         eax,dword ptr [ebp+8]
 005186A2    mov         eax,dword ptr [eax]
 005186A4    mov         edx,dword ptr [ebp-40]
 005186A7    lea         eax,[eax+edx*4]
 005186AA    mov         ecx,1
 005186AF    mov         edx,dword ptr ds:[516D20];TCluster
 005186B5    call        @DynArraySetLength
 005186BA    add         esp,4
 005186BD    mov         ecx,dword ptr [ebp+10]
 005186C0    dec         ecx
 005186C1    mov         edx,dword ptr [ebp+14]
 005186C4    mov         eax,dword ptr [ebp-44]
 005186C7    call        005130B0
 005186CC    mov         edx,dword ptr [ebp+8]
 005186CF    mov         edx,dword ptr [edx]
 005186D1    mov         ecx,dword ptr [ebp-40]
 005186D4    mov         edx,dword ptr [edx+ecx*4]
 005186D7    mov         ecx,dword ptr [ebp-48]
 005186DA    mov         dword ptr [edx+ecx*8],eax
 005186DD    mov         eax,dword ptr [ebp+8]
 005186E0    mov         eax,dword ptr [eax]
 005186E2    mov         edx,dword ptr [ebp-40]
 005186E5    mov         eax,dword ptr [eax+edx*4]
 005186E8    mov         edx,dword ptr [ebp-48]
 005186EB    mov         ecx,dword ptr [ebp-4C]
 005186EE    mov         dword ptr [eax+edx*8+4],ecx
 005186F2    inc         dword ptr [ebp-44]
 005186F5    dec         dword ptr [ebp-54]
>005186F8    jne         0051865A
 005186FE    cmp         dword ptr [ebp-34],0
>00518702    je          00518720
 00518704    mov         eax,dword ptr [ebp-48]
 00518707    sar         eax,1
>00518709    jns         0051870E
 0051870B    adc         eax,0
 0051870E    mov         edx,dword ptr [ebp+8]
 00518711    mov         edx,dword ptr [edx]
 00518713    mov         ecx,dword ptr [ebp-40]
 00518716    mov         edx,dword ptr [edx+ecx*4]
 00518719    mov         ecx,dword ptr [ebp-34]
 0051871C    sub         dword ptr [edx+eax*8+4],ecx
 00518720    inc         dword ptr [ebp-40]
 00518723    dec         dword ptr [ebp-50]
>00518726    jne         005185C6
 0051872C    mov         esp,ebp
 0051872E    pop         ebp
 0051872F    ret         14
end;*}

//005187D4
{*procedure sub_005187D4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005187D4    push        ebp
 005187D5    mov         ebp,esp
 005187D7    add         esp,0FFFFFF28
 005187DD    push        ebx
 005187DE    push        esi
 005187DF    push        edi
 005187E0    xor         ebx,ebx
 005187E2    mov         dword ptr [ebp-24],ebx
 005187E5    mov         dword ptr [ebp-28],ebx
 005187E8    mov         dword ptr [ebp-48],ebx
 005187EB    mov         dword ptr [ebp-4C],ebx
 005187EE    mov         dword ptr [ebp-50],ebx
 005187F1    mov         esi,dword ptr [ebp+18]
 005187F4    lea         edi,[ebp-0D4]
 005187FA    movs        dword ptr [edi],dword ptr [esi]
 005187FB    movs        dword ptr [edi],dword ptr [esi]
 005187FC    movs        dword ptr [edi],dword ptr [esi]
 005187FD    movs        dword ptr [edi],dword ptr [esi]
 005187FE    mov         esi,ecx
 00518800    lea         edi,[ebp-0C4]
 00518806    movs        dword ptr [edi],dword ptr [esi]
 00518807    movs        dword ptr [edi],dword ptr [esi]
 00518808    movs        dword ptr [edi],dword ptr [esi]
 00518809    movs        dword ptr [edi],dword ptr [esi]
 0051880A    mov         esi,edx
 0051880C    lea         edi,[ebp-0B4]
 00518812    movs        dword ptr [edi],dword ptr [esi]
 00518813    movs        dword ptr [edi],dword ptr [esi]
 00518814    movs        dword ptr [edi],dword ptr [esi]
 00518815    movs        dword ptr [edi],dword ptr [esi]
 00518816    mov         dword ptr [ebp-4],eax
 00518819    xor         eax,eax
 0051881B    push        ebp
 0051881C    push        518E29
 00518821    push        dword ptr fs:[eax]
 00518824    mov         dword ptr fs:[eax],esp
 00518827    cmp         byte ptr [ebp+10],2
>0051882B    jne         00518838
 0051882D    cmp         word ptr [ebp+0A],0
>00518832    jne         00518838
 00518834    mov         byte ptr [ebp+10],0
 00518838    cmp         byte ptr [ebp+10],1
>0051883C    jne         0051884E
 0051883E    mov         eax,dword ptr [ebp+1C]
 00518841    cmp         dword ptr [eax+0B4],0
>00518848    je          00518DE7
 0051884E    mov         eax,dword ptr [ebp+1C]
 00518851    movzx       eax,byte ptr [eax+7A]
 00518855    mov         edx,dword ptr ds:[56E360];^gvar_00577A10
 0051885B    mov         eax,dword ptr [edx+eax*4]
 0051885E    mov         dword ptr [ebp-90],eax
 00518864    mov         eax,dword ptr [ebp-0CC]
 0051886A    sub         eax,dword ptr [ebp-0D4]
 00518870    mov         dword ptr [ebp-0D8],eax
 00518876    fild        dword ptr [ebp-0D8]
 0051887C    fstp        dword ptr [ebp-8]
 0051887F    wait
 00518880    mov         eax,dword ptr [ebp-0C8]
 00518886    sub         eax,dword ptr [ebp-0D0]
 0051888C    mov         dword ptr [ebp-0D8],eax
 00518892    fild        dword ptr [ebp-0D8]
 00518898    fstp        dword ptr [ebp-0C]
 0051889B    wait
 0051889C    mov         eax,dword ptr [ebp-0AC]
 005188A2    sub         eax,dword ptr [ebp-0B4]
 005188A8    mov         dword ptr [ebp-10],eax
 005188AB    mov         eax,dword ptr [ebp-0A8]
 005188B1    sub         eax,dword ptr [ebp-0B0]
 005188B7    mov         dword ptr [ebp-14],eax
 005188BA    mov         eax,dword ptr [ebp-0BC]
 005188C0    sub         eax,dword ptr [ebp-0C4]
 005188C6    mov         dword ptr [ebp-18],eax
 005188C9    mov         eax,dword ptr [ebp-0B8]
 005188CF    sub         eax,dword ptr [ebp-0C0]
 005188D5    mov         dword ptr [ebp-1C],eax
 005188D8    mov         eax,dword ptr [ebp-0BC]
 005188DE    push        eax
 005188DF    mov         eax,dword ptr [ebp-0D4]
 005188E5    push        eax
 005188E6    mov         eax,dword ptr [ebp-0CC]
 005188EC    push        eax
 005188ED    mov         eax,dword ptr [ebp+14]
 005188F0    push        eax
 005188F1    lea         eax,[ebp-24]
 005188F4    push        eax
 005188F5    mov         ecx,dword ptr [ebp-0C4]
 005188FB    mov         edx,dword ptr [ebp-0AC]
 00518901    mov         eax,dword ptr [ebp-0B4]
 00518907    call        005181D8
 0051890C    mov         eax,dword ptr [ebp-0B8]
 00518912    push        eax
 00518913    mov         eax,dword ptr [ebp-0D0]
 00518919    push        eax
 0051891A    mov         eax,dword ptr [ebp-0C8]
 00518920    push        eax
 00518921    mov         eax,dword ptr [ebp+14]
 00518924    push        eax
 00518925    lea         eax,[ebp-28]
 00518928    push        eax
 00518929    mov         ecx,dword ptr [ebp-0C0]
 0051892F    mov         edx,dword ptr [ebp-0A8]
 00518935    mov         eax,dword ptr [ebp-0B0]
 0051893B    call        005181D8
 00518940    lea         eax,[ebp-4C]
 00518943    mov         edx,dword ptr ds:[516D20];TCluster
 00518949    call        @DynArrayClear
 0051894E    lea         eax,[ebp-50]
 00518951    mov         edx,dword ptr ds:[516D20];TCluster
 00518957    call        @DynArrayClear
 0051895C    xor         eax,eax
 0051895E    push        ebp
 0051895F    push        518DE0
 00518964    push        dword ptr fs:[eax]
 00518967    mov         dword ptr fs:[eax],esp
 0051896A    mov         eax,dword ptr [ebp+14]
 0051896D    mov         edx,dword ptr [eax]
 0051896F    call        dword ptr [edx+0C]
 00518972    mov         byte ptr [ebp-89],al
 00518978    cmp         dword ptr [ebp-24],0
>0051897C    je          00518984
 0051897E    cmp         dword ptr [ebp-28],0
>00518982    jne         0051898E
 00518984    call        @TryFinallyExit
>00518989    jmp         00518DE7
 0051898E    mov         eax,dword ptr [ebp-24]
 00518991    mov         eax,dword ptr [eax]
 00518993    mov         eax,dword ptr [eax]
 00518995    mov         dword ptr [ebp-40],eax
 00518998    mov         eax,dword ptr [ebp-24]
 0051899B    mov         edx,dword ptr [ebp-18]
 0051899E    mov         eax,dword ptr [eax+edx*4-4]
 005189A2    call        004062EC
 005189A7    mov         edx,dword ptr [ebp-24]
 005189AA    mov         ecx,dword ptr [ebp-18]
 005189AD    mov         edx,dword ptr [edx+ecx*4-4]
 005189B1    mov         eax,dword ptr [edx+eax*8]
 005189B4    mov         dword ptr [ebp-44],eax
 005189B7    mov         eax,dword ptr [ebp-44]
 005189BA    sub         eax,dword ptr [ebp-40]
 005189BD    inc         eax
 005189BE    push        eax
 005189BF    lea         eax,[ebp-48]
 005189C2    mov         ecx,1
 005189C7    mov         edx,dword ptr ds:[5187A8];_DynArr_105_74
 005189CD    call        @DynArraySetLength
 005189D2    add         esp,4
 005189D5    mov         eax,dword ptr [ebp-0C0]
 005189DB    mov         edx,dword ptr [ebp-0B8]
 005189E1    dec         edx
 005189E2    sub         edx,eax
>005189E4    jl          00518DB1
 005189EA    inc         edx
 005189EB    mov         dword ptr [ebp-94],edx
 005189F1    mov         dword ptr [ebp-30],eax
 005189F4    lea         eax,[ebp-50]
 005189F7    mov         edx,dword ptr [ebp-30]
 005189FA    sub         edx,dword ptr [ebp-0C0]
 00518A00    mov         ecx,dword ptr [ebp-28]
 00518A03    mov         edx,dword ptr [ecx+edx*4]
 00518A06    mov         ecx,dword ptr ds:[516D20];TCluster
 00518A0C    call        @DynArrayAsg
 00518A11    mov         eax,dword ptr [ebp-40]
 00518A14    mov         edx,dword ptr [ebp-44]
 00518A17    sub         edx,eax
>00518A19    jl          00518B20
 00518A1F    inc         edx
 00518A20    mov         dword ptr [ebp-98],edx
 00518A26    mov         dword ptr [ebp-34],eax
 00518A29    xor         eax,eax
 00518A2B    mov         dword ptr [ebp-70],eax
 00518A2E    xor         eax,eax
 00518A30    mov         dword ptr [ebp-64],eax
 00518A33    xor         eax,eax
 00518A35    mov         dword ptr [ebp-68],eax
 00518A38    xor         eax,eax
 00518A3A    mov         dword ptr [ebp-6C],eax
 00518A3D    mov         eax,dword ptr [ebp-50]
 00518A40    call        @DynArrayLength
 00518A45    dec         eax
 00518A46    test        eax,eax
>00518A48    jl          00518ACE
 00518A4E    inc         eax
 00518A4F    mov         dword ptr [ebp-9C],eax
 00518A55    mov         dword ptr [ebp-38],0
 00518A5C    mov         eax,dword ptr [ebp-50]
 00518A5F    mov         edx,dword ptr [ebp-38]
 00518A62    mov         eax,dword ptr [eax+edx*8]
 00518A65    mov         edx,dword ptr [ebp+1C]
 00518A68    imul        dword ptr [edx+34]
 00518A6B    add         eax,dword ptr [ebp-34]
 00518A6E    mov         edx,dword ptr [ebp+1C]
 00518A71    mov         edx,dword ptr [edx+40]
 00518A74    mov         eax,dword ptr [edx+eax*4]
 00518A77    mov         dword ptr [ebp-5C],eax
 00518A7A    mov         eax,dword ptr [ebp-50]
 00518A7D    mov         edx,dword ptr [ebp-38]
 00518A80    mov         eax,dword ptr [eax+edx*8+4]
 00518A84    mov         dword ptr [ebp-78],eax
 00518A87    mov         eax,dword ptr [ebp-5C]
 00518A8A    shr         eax,18
 00518A8D    imul        dword ptr [ebp-78]
 00518A90    add         dword ptr [ebp-70],eax
 00518A93    mov         eax,dword ptr [ebp-5C]
 00518A96    and         eax,0FF0000
 00518A9B    shr         eax,10
 00518A9E    imul        dword ptr [ebp-78]
 00518AA1    add         dword ptr [ebp-64],eax
 00518AA4    mov         eax,dword ptr [ebp-5C]
 00518AA7    and         eax,0FF00
 00518AAC    shr         eax,8
 00518AAF    imul        dword ptr [ebp-78]
 00518AB2    add         dword ptr [ebp-68],eax
 00518AB5    mov         eax,dword ptr [ebp-5C]
 00518AB8    and         eax,0FF
 00518ABD    imul        dword ptr [ebp-78]
 00518AC0    add         dword ptr [ebp-6C],eax
 00518AC3    inc         dword ptr [ebp-38]
 00518AC6    dec         dword ptr [ebp-9C]
>00518ACC    jne         00518A5C
 00518ACE    mov         eax,dword ptr [ebp-34]
 00518AD1    sub         eax,dword ptr [ebp-40]
 00518AD4    add         eax,eax
 00518AD6    mov         edx,dword ptr [ebp-48]
 00518AD9    lea         eax,[edx+eax*8]
 00518ADC    mov         dword ptr [ebp-0A0],eax
 00518AE2    mov         eax,dword ptr [ebp-0A0]
 00518AE8    mov         edx,dword ptr [ebp-64]
 00518AEB    mov         dword ptr [eax+8],edx
 00518AEE    mov         eax,dword ptr [ebp-0A0]
 00518AF4    mov         edx,dword ptr [ebp-68]
 00518AF7    mov         dword ptr [eax+4],edx
 00518AFA    mov         eax,dword ptr [ebp-0A0]
 00518B00    mov         edx,dword ptr [ebp-6C]
 00518B03    mov         dword ptr [eax],edx
 00518B05    mov         eax,dword ptr [ebp-0A0]
 00518B0B    mov         edx,dword ptr [ebp-70]
 00518B0E    mov         dword ptr [eax+0C],edx
 00518B11    inc         dword ptr [ebp-34]
 00518B14    dec         dword ptr [ebp-98]
>00518B1A    jne         00518A29
 00518B20    mov         edx,dword ptr [ebp-30]
 00518B23    mov         eax,dword ptr [ebp-4]
 00518B26    call        0051F4B4
 00518B2B    mov         dword ptr [ebp-88],eax
 00518B31    mov         eax,dword ptr [ebp-0C4]
 00518B37    mov         edx,dword ptr [ebp-0BC]
 00518B3D    dec         edx
 00518B3E    sub         edx,eax
>00518B40    jl          00518DA2
 00518B46    inc         edx
 00518B47    mov         dword ptr [ebp-98],edx
 00518B4D    mov         dword ptr [ebp-2C],eax
 00518B50    lea         eax,[ebp-4C]
 00518B53    mov         edx,dword ptr [ebp-2C]
 00518B56    sub         edx,dword ptr [ebp-0C4]
 00518B5C    mov         ecx,dword ptr [ebp-24]
 00518B5F    mov         edx,dword ptr [ecx+edx*4]
 00518B62    mov         ecx,dword ptr ds:[516D20];TCluster
 00518B68    call        @DynArrayAsg
 00518B6D    xor         eax,eax
 00518B6F    mov         dword ptr [ebp-70],eax
 00518B72    xor         eax,eax
 00518B74    mov         dword ptr [ebp-64],eax
 00518B77    xor         eax,eax
 00518B79    mov         dword ptr [ebp-68],eax
 00518B7C    xor         eax,eax
 00518B7E    mov         dword ptr [ebp-6C],eax
 00518B81    mov         eax,dword ptr [ebp-4C]
 00518B84    call        @DynArrayLength
 00518B89    dec         eax
 00518B8A    test        eax,eax
>00518B8C    jl          00518C09
 00518B8E    inc         eax
 00518B8F    mov         dword ptr [ebp-9C],eax
 00518B95    mov         dword ptr [ebp-34],0
 00518B9C    mov         eax,dword ptr [ebp-4C]
 00518B9F    mov         edx,dword ptr [ebp-34]
 00518BA2    mov         eax,dword ptr [eax+edx*8+4]
 00518BA6    mov         dword ptr [ebp-60],eax
 00518BA9    mov         eax,dword ptr [ebp-4C]
 00518BAC    mov         edx,dword ptr [ebp-34]
 00518BAF    mov         eax,dword ptr [eax+edx*8]
 00518BB2    sub         eax,dword ptr [ebp-40]
 00518BB5    add         eax,eax
 00518BB7    mov         edx,dword ptr [ebp-48]
 00518BBA    lea         eax,[edx+eax*8]
 00518BBD    mov         dword ptr [ebp-0A4],eax
 00518BC3    mov         eax,dword ptr [ebp-0A4]
 00518BC9    mov         eax,dword ptr [eax+0C]
 00518BCC    imul        dword ptr [ebp-60]
 00518BCF    add         dword ptr [ebp-70],eax
 00518BD2    mov         eax,dword ptr [ebp-0A4]
 00518BD8    mov         eax,dword ptr [eax+8]
 00518BDB    imul        dword ptr [ebp-60]
 00518BDE    add         dword ptr [ebp-64],eax
 00518BE1    mov         eax,dword ptr [ebp-0A4]
 00518BE7    mov         eax,dword ptr [eax+4]
 00518BEA    imul        dword ptr [ebp-60]
 00518BED    add         dword ptr [ebp-68],eax
 00518BF0    mov         eax,dword ptr [ebp-0A4]
 00518BF6    mov         eax,dword ptr [eax]
 00518BF8    imul        dword ptr [ebp-60]
 00518BFB    add         dword ptr [ebp-6C],eax
 00518BFE    inc         dword ptr [ebp-34]
 00518C01    dec         dword ptr [ebp-9C]
>00518C07    jne         00518B9C
 00518C09    cmp         byte ptr [ebp-89],0
>00518C10    je          00518CCC
 00518C16    cmp         dword ptr [ebp-70],0FF0000
>00518C1D    jle         00518C28
 00518C1F    mov         dword ptr [ebp-70],0FF0000
>00518C26    jmp         00518C3C
 00518C28    cmp         dword ptr [ebp-70],0
>00518C2C    jge         00518C35
 00518C2E    xor         eax,eax
 00518C30    mov         dword ptr [ebp-70],eax
>00518C33    jmp         00518C3C
 00518C35    and         dword ptr [ebp-70],0FF0000
 00518C3C    cmp         dword ptr [ebp-64],0FF0000
>00518C43    jle         00518C4E
 00518C45    mov         dword ptr [ebp-64],0FF0000
>00518C4C    jmp         00518C62
 00518C4E    cmp         dword ptr [ebp-64],0
>00518C52    jge         00518C5B
 00518C54    xor         eax,eax
 00518C56    mov         dword ptr [ebp-64],eax
>00518C59    jmp         00518C62
 00518C5B    and         dword ptr [ebp-64],0FF0000
 00518C62    cmp         dword ptr [ebp-68],0FF0000
>00518C69    jle         00518C74
 00518C6B    mov         dword ptr [ebp-68],0FF0000
>00518C72    jmp         00518C88
 00518C74    cmp         dword ptr [ebp-68],0
>00518C78    jge         00518C81
 00518C7A    xor         eax,eax
 00518C7C    mov         dword ptr [ebp-68],eax
>00518C7F    jmp         00518C88
 00518C81    and         dword ptr [ebp-68],0FF0000
 00518C88    cmp         dword ptr [ebp-6C],0FF0000
>00518C8F    jle         00518C9A
 00518C91    mov         dword ptr [ebp-6C],0FF0000
>00518C98    jmp         00518CAE
 00518C9A    cmp         dword ptr [ebp-6C],0
>00518C9E    jge         00518CA7
 00518CA0    xor         eax,eax
 00518CA2    mov         dword ptr [ebp-6C],eax
>00518CA5    jmp         00518CAE
 00518CA7    and         dword ptr [ebp-6C],0FF0000
 00518CAE    mov         eax,dword ptr [ebp-70]
 00518CB1    shl         eax,8
 00518CB4    or          eax,dword ptr [ebp-64]
 00518CB7    mov         edx,dword ptr [ebp-68]
 00518CBA    shr         edx,8
 00518CBD    or          eax,edx
 00518CBF    mov         edx,dword ptr [ebp-6C]
 00518CC2    shr         edx,10
 00518CC5    or          eax,edx
 00518CC7    mov         dword ptr [ebp-5C],eax
>00518CCA    jmp         00518D01
 00518CCC    mov         eax,dword ptr [ebp-70]
 00518CCF    and         eax,0FF0000
 00518CD4    shl         eax,8
 00518CD7    mov         edx,dword ptr [ebp-64]
 00518CDA    and         edx,0FF0000
 00518CE0    or          eax,edx
 00518CE2    mov         edx,dword ptr [ebp-68]
 00518CE5    and         edx,0FF0000
 00518CEB    shr         edx,8
 00518CEE    or          eax,edx
 00518CF0    mov         edx,dword ptr [ebp-6C]
 00518CF3    and         edx,0FF0000
 00518CF9    shr         edx,10
 00518CFC    or          eax,edx
 00518CFE    mov         dword ptr [ebp-5C],eax
 00518D01    mov         al,byte ptr [ebp+10]
 00518D04    sub         al,1
>00518D06    jb          00518D14
>00518D08    je          00518D25
 00518D0A    dec         al
>00518D0C    je          00518D74
 00518D0E    dec         al
>00518D10    je          00518D45
>00518D12    jmp         00518D93
 00518D14    mov         eax,dword ptr [ebp-88]
 00518D1A    mov         edx,dword ptr [ebp-2C]
 00518D1D    mov         ecx,dword ptr [ebp-5C]
 00518D20    mov         dword ptr [eax+edx*4],ecx
>00518D23    jmp         00518D93
 00518D25    mov         eax,dword ptr [ebp-88]
 00518D2B    mov         edx,dword ptr [ebp-2C]
 00518D2E    lea         edx,[eax+edx*4]
 00518D31    mov         eax,dword ptr [ebp+1C]
 00518D34    mov         ecx,dword ptr [eax+0B4]
 00518D3A    mov         eax,dword ptr [ebp-5C]
 00518D3D    call        dword ptr [ebp-90]
>00518D43    jmp         00518D93
 00518D45    mov         eax,dword ptr [ebp-5C]
 00518D48    cdq
 00518D49    push        edx
 00518D4A    push        eax
 00518D4B    mov         eax,dword ptr [ebp+1C]
 00518D4E    mov         eax,dword ptr [eax+0B8]
 00518D54    xor         edx,edx
 00518D56    cmp         edx,dword ptr [esp+4]
>00518D5A    jne         00518D5F
 00518D5C    cmp         eax,dword ptr [esp]
 00518D5F    pop         edx
 00518D60    pop         eax
>00518D61    je          00518D93
 00518D63    mov         eax,dword ptr [ebp-88]
 00518D69    mov         edx,dword ptr [ebp-2C]
 00518D6C    mov         ecx,dword ptr [ebp-5C]
 00518D6F    mov         dword ptr [eax+edx*4],ecx
>00518D72    jmp         00518D93
 00518D74    mov         eax,dword ptr [ebp+1C]
 00518D77    mov         eax,dword ptr [eax+0B4]
 00518D7D    push        eax
 00518D7E    mov         eax,dword ptr [ebp-88]
 00518D84    mov         edx,dword ptr [ebp-2C]
 00518D87    lea         ecx,[eax+edx*4]
 00518D8A    mov         edx,dword ptr [ebp-5C]
 00518D8D    mov         eax,dword ptr [ebp+0C]
 00518D90    call        dword ptr [ebp+8]
 00518D93    inc         dword ptr [ebp-2C]
 00518D96    dec         dword ptr [ebp-98]
>00518D9C    jne         00518B50
 00518DA2    inc         dword ptr [ebp-30]
 00518DA5    dec         dword ptr [ebp-94]
>00518DAB    jne         005189F4
 00518DB1    xor         eax,eax
 00518DB3    pop         edx
 00518DB4    pop         ecx
 00518DB5    pop         ecx
 00518DB6    mov         dword ptr fs:[eax],edx
 00518DB9    push        518DE7
 00518DBE    call        00513ACC
 00518DC3    lea         eax,[ebp-24]
 00518DC6    mov         edx,dword ptr ds:[516D50];TMappingTable
 00518DCC    call        @DynArrayClear
 00518DD1    lea         eax,[ebp-28]
 00518DD4    mov         edx,dword ptr ds:[516D50];TMappingTable
 00518DDA    call        @DynArrayClear
 00518DDF    ret
>00518DE0    jmp         @HandleFinally
>00518DE5    jmp         00518DBE
 00518DE7    xor         eax,eax
 00518DE9    pop         edx
 00518DEA    pop         ecx
 00518DEB    pop         ecx
 00518DEC    mov         dword ptr fs:[eax],edx
 00518DEF    push        518E30
 00518DF4    lea         eax,[ebp-50]
 00518DF7    mov         edx,dword ptr ds:[516D20];TCluster
 00518DFD    mov         ecx,2
 00518E02    call        @FinalizeArray
 00518E07    lea         eax,[ebp-48]
 00518E0A    mov         edx,dword ptr ds:[5187A8];_DynArr_105_74
 00518E10    call        @DynArrayClear
 00518E15    lea         eax,[ebp-28]
 00518E18    mov         edx,dword ptr ds:[516D50];TMappingTable
 00518E1E    mov         ecx,2
 00518E23    call        @FinalizeArray
 00518E28    ret
>00518E29    jmp         @HandleFinally
>00518E2E    jmp         00518DF4
 00518E30    pop         edi
 00518E31    pop         esi
 00518E32    pop         ebx
 00518E33    mov         esp,ebp
 00518E35    pop         ebp
 00518E36    ret         18
end;*}

//00518E3C
{*procedure sub_00518E3C(?:?; ?:?; ?:?; ?:?);
begin
 00518E3C    push        ebp
 00518E3D    mov         ebp,esp
 00518E3F    push        ebx
 00518E40    push        esi
 00518E41    push        edi
 00518E42    mov         ebx,dword ptr [ebp+8]
 00518E45    mov         esi,eax
 00518E47    mov         edi,edx
 00518E49    shl         esi,2
 00518E4C    sub         ebx,esi
 00518E4E    pxor        mm1,mm1
 00518E51    pxor        mm2,mm2
 00518E54    pxor        mm7,mm7
 00518E57    mov         esi,eax
 00518E59    pxor        mm0,mm0
 00518E5C    lea         ecx,[ecx+esi*4]
 00518E5F    neg         esi
 00518E61    movd        mm6,dword ptr [ecx+esi*4]
 00518E65    punpcklbw   mm6,mm7
 00518E68    paddw       mm0,mm6
 00518E6B    inc         esi
>00518E6C    jne         00518E61
 00518E6E    movq        mm6,mm0
 00518E71    punpcklbd   mm6,mm7
 00518E74    paddd       mm1,mm6
 00518E77    movq        mm6,mm0
 00518E7A    punpckhbd   mm6,mm7
 00518E7D    paddd       mm2,mm6
 00518E80    add         ecx,ebx
 00518E82    dec         edx
>00518E83    jne         00518E57
 00518E85    mul         eax,edi
 00518E87    mov         ecx,eax
 00518E89    mov         eax,1000000
 00518E8E    div         eax,ecx
 00518E90    mov         ecx,eax
 00518E92    movd        mm0,mm1
 00518E95    mul         eax,ecx
 00518E97    shr         eax,18
 00518E9A    mov         edi,eax
 00518E9C    psrlq       mm1,20
 00518EA0    movd        mm0,mm1
 00518EA3    mul         eax,ecx
 00518EA5    shr         eax,10
 00518EA8    and         eax,0FF00
 00518EAD    add         edi,eax
 00518EAF    movd        mm0,mm2
 00518EB2    mul         eax,ecx
 00518EB4    shr         eax,8
 00518EB7    and         eax,0FF0000
 00518EBC    add         edi,eax
 00518EBE    psrlq       mm2,20
 00518EC2    movd        mm0,mm2
 00518EC5    mul         eax,ecx
 00518EC7    and         eax,0FF000000
 00518ECC    add         eax,edi
 00518ECE    pop         edi
 00518ECF    pop         esi
 00518ED0    pop         ebx
 00518ED1    pop         ebp
 00518ED2    ret         4
end;*}

//00518ED8
{*procedure sub_00518ED8(?:?; ?:?; ?:?; ?:?);
begin
 00518ED8    push        ebp
 00518ED9    mov         ebp,esp
 00518EDB    push        ebx
 00518EDC    push        esi
 00518EDD    push        edi
 00518EDE    mov         ebx,dword ptr [ebp+8]
 00518EE1    mov         esi,eax
 00518EE3    mov         edi,edx
 00518EE5    shl         esi,2
 00518EE8    sub         ebx,esi
 00518EEA    pxor        mm1,mm1
 00518EED    pxor        mm2,mm2
 00518EF0    pxor        mm7,mm7
 00518EF3    mov         esi,eax
 00518EF5    pxor        mm0,mm0
 00518EF8    lea         ecx,[ecx+esi*4]
 00518EFB    neg         esi
 00518EFD    prefetch    [ecx+esi*4+200]
 00518F05    movd        mm6,dword ptr [ecx+esi*4]
 00518F09    punpcklbw   mm6,mm7
 00518F0C    paddw       mm0,mm6
 00518F0F    inc         esi
>00518F10    jne         00518F05
 00518F12    movq        mm6,mm0
 00518F15    punpcklbd   mm6,mm7
 00518F18    paddd       mm1,mm6
 00518F1B    movq        mm6,mm0
 00518F1E    punpckhbd   mm6,mm7
 00518F21    paddd       mm2,mm6
 00518F24    add         ecx,ebx
 00518F26    dec         edx
>00518F27    jne         00518EF3
 00518F29    mul         eax,edi
 00518F2B    mov         ecx,eax
 00518F2D    mov         eax,1000000
 00518F32    div         eax,ecx
 00518F34    mov         ecx,eax
 00518F36    movd        mm0,mm1
 00518F39    mul         eax,ecx
 00518F3B    shr         eax,18
 00518F3E    mov         edi,eax
 00518F40    psrlq       mm1,20
 00518F44    movd        mm0,mm1
 00518F47    mul         eax,ecx
 00518F49    shr         eax,10
 00518F4C    and         eax,0FF00
 00518F51    add         edi,eax
 00518F53    movd        mm0,mm2
 00518F56    mul         eax,ecx
 00518F58    shr         eax,8
 00518F5B    and         eax,0FF0000
 00518F60    add         edi,eax
 00518F62    psrlq       mm2,20
 00518F66    movd        mm0,mm2
 00518F69    mul         eax,ecx
 00518F6B    and         eax,0FF000000
 00518F70    add         eax,edi
 00518F72    pop         edi
 00518F73    pop         esi
 00518F74    pop         ebx
 00518F75    pop         ebp
 00518F76    ret         4
end;*}

//00518F7C
{*function sub_00518F7C(?:?; ?:?; ?:?; ?:?):?;
begin
 00518F7C    push        ebp
 00518F7D    mov         ebp,esp
 00518F7F    add         esp,0FFFFFFC8
 00518F82    mov         dword ptr [ebp-0C],ecx
 00518F85    mov         dword ptr [ebp-8],edx
 00518F88    mov         dword ptr [ebp-4],eax
 00518F8B    xor         eax,eax
 00518F8D    mov         dword ptr [ebp-24],eax
 00518F90    mov         eax,dword ptr [ebp-24]
 00518F93    mov         dword ptr [ebp-2C],eax
 00518F96    mov         eax,dword ptr [ebp-24]
 00518F99    mov         dword ptr [ebp-28],eax
 00518F9C    mov         eax,dword ptr [ebp-24]
 00518F9F    mov         dword ptr [ebp-20],eax
 00518FA2    mov         eax,dword ptr [ebp-8]
 00518FA5    test        eax,eax
>00518FA7    jbe         0051900B
 00518FA9    mov         dword ptr [ebp-34],eax
 00518FAC    mov         dword ptr [ebp-1C],1
 00518FB3    mov         eax,dword ptr [ebp-0C]
 00518FB6    mov         dword ptr [ebp-14],eax
 00518FB9    mov         eax,dword ptr [ebp-4]
 00518FBC    test        eax,eax
>00518FBE    jbe         00518FFD
 00518FC0    mov         dword ptr [ebp-38],eax
 00518FC3    mov         dword ptr [ebp-18],1
 00518FCA    mov         eax,dword ptr [ebp-14]
 00518FCD    movzx       eax,byte ptr [eax]
 00518FD0    add         dword ptr [ebp-2C],eax
 00518FD3    mov         eax,dword ptr [ebp-14]
 00518FD6    movzx       eax,byte ptr [eax+1]
 00518FDA    add         dword ptr [ebp-28],eax
 00518FDD    mov         eax,dword ptr [ebp-14]
 00518FE0    movzx       eax,byte ptr [eax+2]
 00518FE4    add         dword ptr [ebp-24],eax
 00518FE7    mov         eax,dword ptr [ebp-14]
 00518FEA    movzx       eax,byte ptr [eax+3]
 00518FEE    add         dword ptr [ebp-20],eax
 00518FF1    add         dword ptr [ebp-14],4
 00518FF5    inc         dword ptr [ebp-18]
 00518FF8    dec         dword ptr [ebp-38]
>00518FFB    jne         00518FCA
 00518FFD    mov         eax,dword ptr [ebp+8]
 00519000    add         dword ptr [ebp-0C],eax
 00519003    inc         dword ptr [ebp-1C]
 00519006    dec         dword ptr [ebp-34]
>00519009    jne         00518FB3
 0051900B    mov         eax,dword ptr [ebp-4]
 0051900E    imul        dword ptr [ebp-8]
 00519011    mov         dword ptr [ebp-30],eax
 00519014    mov         eax,1000000
 00519019    xor         edx,edx
 0051901B    div         eax,dword ptr [ebp-30]
 0051901E    mov         dword ptr [ebp-30],eax
 00519021    mov         eax,dword ptr [ebp-20]
 00519024    imul        dword ptr [ebp-30]
 00519027    and         eax,0FF000000
 0051902C    mov         edx,dword ptr [ebp-24]
 0051902F    imul        edx,dword ptr [ebp-30]
 00519033    shr         edx,8
 00519036    and         edx,0FF0000
 0051903C    or          eax,edx
 0051903E    mov         edx,dword ptr [ebp-28]
 00519041    imul        edx,dword ptr [ebp-30]
 00519045    shr         edx,10
 00519048    and         edx,0FF00
 0051904E    or          eax,edx
 00519050    mov         edx,dword ptr [ebp-2C]
 00519053    imul        edx,dword ptr [ebp-30]
 00519057    shr         edx,18
 0051905A    and         edx,0FF
 00519060    or          eax,edx
 00519062    mov         dword ptr [ebp-10],eax
 00519065    mov         eax,dword ptr [ebp-10]
 00519068    mov         esp,ebp
 0051906A    pop         ebp
 0051906B    ret         4
end;*}

//00519070
{*procedure sub_00519070(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00519070    push        ebp
 00519071    mov         ebp,esp
 00519073    add         esp,0FFFFFF30
 00519079    push        esi
 0051907A    push        edi
 0051907B    mov         esi,dword ptr [ebp+18]
 0051907E    lea         edi,[ebp-0BC]
 00519084    movs        dword ptr [edi],dword ptr [esi]
 00519085    movs        dword ptr [edi],dword ptr [esi]
 00519086    movs        dword ptr [edi],dword ptr [esi]
 00519087    movs        dword ptr [edi],dword ptr [esi]
 00519088    mov         esi,ecx
 0051908A    lea         edi,[ebp-0AC]
 00519090    movs        dword ptr [edi],dword ptr [esi]
 00519091    movs        dword ptr [edi],dword ptr [esi]
 00519092    movs        dword ptr [edi],dword ptr [esi]
 00519093    movs        dword ptr [edi],dword ptr [esi]
 00519094    mov         esi,edx
 00519096    lea         edi,[ebp-9C]
 0051909C    movs        dword ptr [edi],dword ptr [esi]
 0051909D    movs        dword ptr [edi],dword ptr [esi]
 0051909E    movs        dword ptr [edi],dword ptr [esi]
 0051909F    movs        dword ptr [edi],dword ptr [esi]
 005190A0    mov         dword ptr [ebp-4],eax
 005190A3    mov         eax,dword ptr [ebp-0B4]
 005190A9    sub         eax,dword ptr [ebp-0BC]
 005190AF    mov         dword ptr [ebp-8],eax
 005190B2    mov         eax,dword ptr [ebp-0B0]
 005190B8    sub         eax,dword ptr [ebp-0B8]
 005190BE    mov         dword ptr [ebp-0C],eax
 005190C1    mov         eax,dword ptr [ebp-94]
 005190C7    sub         eax,dword ptr [ebp-9C]
 005190CD    mov         dword ptr [ebp-10],eax
 005190D0    mov         eax,dword ptr [ebp-90]
 005190D6    sub         eax,dword ptr [ebp-98]
 005190DC    mov         dword ptr [ebp-14],eax
 005190DF    mov         eax,dword ptr [ebp-0A4]
 005190E5    sub         eax,dword ptr [ebp-0AC]
 005190EB    mov         dword ptr [ebp-18],eax
 005190EE    mov         eax,dword ptr [ebp-0A0]
 005190F4    sub         eax,dword ptr [ebp-0A8]
 005190FA    mov         dword ptr [ebp-1C],eax
 005190FD    mov         eax,dword ptr [ebp+1C]
 00519100    movzx       eax,byte ptr [eax+7A]
 00519104    mov         edx,dword ptr ds:[56E360];^gvar_00577A10
 0051910A    mov         eax,dword ptr [edx+eax*4]
 0051910D    mov         dword ptr [ebp-84],eax
 00519113    mov         eax,dword ptr [ebp-10]
 00519116    cmp         eax,dword ptr [ebp-8]
>00519119    ja          00519123
 0051911B    mov         eax,dword ptr [ebp-14]
 0051911E    cmp         eax,dword ptr [ebp-0C]
>00519121    jbe         0051918F
 00519123    cmp         dword ptr [ebp-8],2
>00519127    jb          0051912F
 00519129    cmp         dword ptr [ebp-0C],2
>0051912D    jae         00519161
 0051912F    mov         eax,dword ptr [ebp+1C]
 00519132    push        eax
 00519133    lea         eax,[ebp-0BC]
 00519139    push        eax
 0051913A    mov         eax,dword ptr [ebp+14]
 0051913D    push        eax
 0051913E    mov         al,byte ptr [ebp+10]
 00519141    push        eax
 00519142    push        dword ptr [ebp+0C]
 00519145    push        dword ptr [ebp+8]
 00519148    lea         ecx,[ebp-0AC]
 0051914E    lea         edx,[ebp-9C]
 00519154    mov         eax,dword ptr [ebp-4]
 00519157    call        005187D4
>0051915C    jmp         00519548
 00519161    mov         eax,dword ptr [ebp+1C]
 00519164    push        eax
 00519165    lea         eax,[ebp-0BC]
 0051916B    push        eax
 0051916C    mov         al,byte ptr [ebp+10]
 0051916F    push        eax
 00519170    push        dword ptr [ebp+0C]
 00519173    push        dword ptr [ebp+8]
 00519176    lea         ecx,[ebp-0AC]
 0051917C    lea         edx,[ebp-9C]
 00519182    mov         eax,dword ptr [ebp-4]
 00519185    call        00517A98
>0051918A    jmp         00519548
 0051918F    mov         eax,dword ptr [ebp+1C]
 00519192    mov         eax,dword ptr [eax+34]
 00519195    shl         eax,2
 00519198    mov         dword ptr [ebp-24],eax
 0051919B    mov         eax,dword ptr [ebp-8]
 0051919E    mov         dword ptr [ebp-0C4],eax
 005191A4    xor         eax,eax
 005191A6    mov         dword ptr [ebp-0C0],eax
 005191AC    fild        qword ptr [ebp-0C4]
 005191B2    mov         eax,dword ptr [ebp-10]
 005191B5    mov         dword ptr [ebp-0CC],eax
 005191BB    xor         eax,eax
 005191BD    mov         dword ptr [ebp-0C8],eax
 005191C3    fild        qword ptr [ebp-0CC]
 005191C9    fdivp       st(1),st
 005191CB    fstp        dword ptr [ebp-54]
 005191CE    wait
 005191CF    mov         eax,dword ptr [ebp-0AC]
 005191D5    sub         eax,dword ptr [ebp-9C]
 005191DB    mov         dword ptr [ebp-0D0],eax
 005191E1    fild        dword ptr [ebp-0D0]
 005191E7    fmul        dword ptr [ebp-54]
 005191EA    call        @TRUNC
 005191EF    mov         dword ptr [ebp-78],eax
 005191F2    fld         dword ptr [ebp-54]
 005191F5    call        @TRUNC
 005191FA    mov         dword ptr [ebp-3C],eax
 005191FD    fld         dword ptr ds:[519558];65536:Single
 00519203    fmul        dword ptr [ebp-54]
 00519206    call        @TRUNC
 0051920B    mov         dword ptr [ebp-74],eax
 0051920E    mov         eax,dword ptr [ebp-0C]
 00519211    mov         dword ptr [ebp-0C4],eax
 00519217    xor         eax,eax
 00519219    mov         dword ptr [ebp-0C0],eax
 0051921F    fild        qword ptr [ebp-0C4]
 00519225    mov         eax,dword ptr [ebp-14]
 00519228    mov         dword ptr [ebp-0CC],eax
 0051922E    xor         eax,eax
 00519230    mov         dword ptr [ebp-0C8],eax
 00519236    fild        qword ptr [ebp-0CC]
 0051923C    fdivp       st(1),st
 0051923E    fstp        dword ptr [ebp-54]
 00519241    wait
 00519242    mov         eax,dword ptr [ebp-0A8]
 00519248    sub         eax,dword ptr [ebp-98]
 0051924E    mov         dword ptr [ebp-0D0],eax
 00519254    fild        dword ptr [ebp-0D0]
 0051925A    fmul        dword ptr [ebp-54]
 0051925D    call        @TRUNC
 00519262    mov         dword ptr [ebp-7C],eax
 00519265    fld         dword ptr [ebp-54]
 00519268    call        @TRUNC
 0051926D    mov         dword ptr [ebp-34],eax
 00519270    fld         dword ptr ds:[519558];65536:Single
 00519276    fmul        dword ptr [ebp-54]
 00519279    call        @TRUNC
 0051927E    mov         dword ptr [ebp-70],eax
 00519281    mov         ecx,dword ptr [ebp-0A8]
 00519287    xor         edx,edx
 00519289    mov         eax,dword ptr [ebp-4]
 0051928C    call        0051F574
 00519291    mov         dword ptr [ebp-50],eax
 00519294    mov         ecx,dword ptr [ebp-0B8]
 0051929A    add         ecx,dword ptr [ebp-7C]
 0051929D    mov         edx,dword ptr [ebp-0BC]
 005192A3    add         edx,dword ptr [ebp-78]
 005192A6    mov         eax,dword ptr [ebp+1C]
 005192A9    call        0051F574
 005192AE    mov         dword ptr [ebp-20],eax
 005192B1    mov         eax,dword ptr [ebp-3C]
 005192B4    mov         dword ptr [ebp-40],eax
 005192B7    xor         eax,eax
 005192B9    mov         dword ptr [ebp-30],eax
 005192BC    sub         dword ptr [ebp-0AC],2
 005192C3    inc         dword ptr [ebp-18]
 005192C6    inc         dword ptr [ebp-1C]
 005192C9    mov         eax,dword ptr [ebp-1C]
 005192CC    sub         eax,2
>005192CF    jl          00519548
 005192D5    inc         eax
 005192D6    mov         dword ptr [ebp-88],eax
 005192DC    mov         dword ptr [ebp-68],2
 005192E3    mov         eax,dword ptr [ebp-34]
 005192E6    sub         eax,dword ptr [ebp-30]
 005192E9    mov         dword ptr [ebp-28],eax
 005192EC    mov         eax,dword ptr [ebp-34]
 005192EF    mov         dword ptr [ebp-30],eax
 005192F2    mov         edx,dword ptr [ebp-70]
 005192F5    mov         eax,dword ptr [ebp-68]
 005192F8    call        00513274
 005192FD    mov         dword ptr [ebp-34],eax
 00519300    xor         eax,eax
 00519302    mov         dword ptr [ebp-38],eax
 00519305    mov         eax,dword ptr [ebp-40]
 00519308    mov         dword ptr [ebp-3C],eax
 0051930B    mov         eax,dword ptr [ebp-20]
 0051930E    mov         dword ptr [ebp-44],eax
 00519311    mov         al,byte ptr [ebp+10]
 00519314    sub         al,1
>00519316    jb          00519333
>00519318    je          005193A5
 0051931E    dec         al
>00519320    je          005194A9
 00519326    dec         al
>00519328    je          00519426
>0051932E    jmp         00519524
 00519333    mov         eax,dword ptr [ebp-18]
 00519336    sub         eax,2
>00519339    jl          00519524
 0051933F    inc         eax
 00519340    mov         dword ptr [ebp-8C],eax
 00519346    mov         dword ptr [ebp-64],2
 0051934D    mov         eax,dword ptr [ebp-3C]
 00519350    sub         eax,dword ptr [ebp-38]
 00519353    mov         dword ptr [ebp-2C],eax
 00519356    mov         eax,dword ptr [ebp-3C]
 00519359    mov         dword ptr [ebp-38],eax
 0051935C    mov         edx,dword ptr [ebp-74]
 0051935F    mov         eax,dword ptr [ebp-64]
 00519362    call        00513274
 00519367    mov         dword ptr [ebp-3C],eax
 0051936A    mov         eax,dword ptr [ebp-24]
 0051936D    push        eax
 0051936E    mov         ecx,dword ptr [ebp-44]
 00519371    mov         edx,dword ptr [ebp-28]
 00519374    mov         eax,dword ptr [ebp-2C]
 00519377    call        dword ptr ds:[597A74]
 0051937D    mov         edx,dword ptr [ebp-0AC]
 00519383    add         edx,dword ptr [ebp-64]
 00519386    mov         ecx,dword ptr [ebp-50]
 00519389    mov         dword ptr [ecx+edx*4],eax
 0051938C    mov         eax,dword ptr [ebp-2C]
 0051938F    shl         eax,2
 00519392    add         dword ptr [ebp-44],eax
 00519395    inc         dword ptr [ebp-64]
 00519398    dec         dword ptr [ebp-8C]
>0051939E    jne         0051934D
>005193A0    jmp         00519524
 005193A5    mov         eax,dword ptr [ebp-18]
 005193A8    sub         eax,2
>005193AB    jl          00519524
 005193B1    inc         eax
 005193B2    mov         dword ptr [ebp-8C],eax
 005193B8    mov         dword ptr [ebp-64],2
 005193BF    mov         eax,dword ptr [ebp-3C]
 005193C2    sub         eax,dword ptr [ebp-38]
 005193C5    mov         dword ptr [ebp-2C],eax
 005193C8    mov         eax,dword ptr [ebp-3C]
 005193CB    mov         dword ptr [ebp-38],eax
 005193CE    mov         edx,dword ptr [ebp-74]
 005193D1    mov         eax,dword ptr [ebp-64]
 005193D4    call        00513274
 005193D9    mov         dword ptr [ebp-3C],eax
 005193DC    mov         eax,dword ptr [ebp-24]
 005193DF    push        eax
 005193E0    mov         ecx,dword ptr [ebp-44]
 005193E3    mov         edx,dword ptr [ebp-28]
 005193E6    mov         eax,dword ptr [ebp-2C]
 005193E9    call        dword ptr ds:[597A74]
 005193EF    mov         edx,dword ptr [ebp-0AC]
 005193F5    add         edx,dword ptr [ebp-64]
 005193F8    mov         ecx,dword ptr [ebp-50]
 005193FB    lea         edx,[ecx+edx*4]
 005193FE    mov         ecx,dword ptr [ebp+1C]
 00519401    mov         ecx,dword ptr [ecx+0B4]
 00519407    call        dword ptr [ebp-84]
 0051940D    mov         eax,dword ptr [ebp-2C]
 00519410    shl         eax,2
 00519413    add         dword ptr [ebp-44],eax
 00519416    inc         dword ptr [ebp-64]
 00519419    dec         dword ptr [ebp-8C]
>0051941F    jne         005193BF
>00519421    jmp         00519524
 00519426    mov         eax,dword ptr [ebp-18]
 00519429    sub         eax,2
>0051942C    jl          00519524
 00519432    inc         eax
 00519433    mov         dword ptr [ebp-8C],eax
 00519439    mov         dword ptr [ebp-64],2
 00519440    mov         eax,dword ptr [ebp-3C]
 00519443    sub         eax,dword ptr [ebp-38]
 00519446    mov         dword ptr [ebp-2C],eax
 00519449    mov         eax,dword ptr [ebp-3C]
 0051944C    mov         dword ptr [ebp-38],eax
 0051944F    mov         edx,dword ptr [ebp-74]
 00519452    mov         eax,dword ptr [ebp-64]
 00519455    call        00513274
 0051945A    mov         dword ptr [ebp-3C],eax
 0051945D    mov         eax,dword ptr [ebp-24]
 00519460    push        eax
 00519461    mov         ecx,dword ptr [ebp-44]
 00519464    mov         edx,dword ptr [ebp-28]
 00519467    mov         eax,dword ptr [ebp-2C]
 0051946A    call        dword ptr ds:[597A74]
 00519470    mov         dword ptr [ebp-4C],eax
 00519473    mov         eax,dword ptr [ebp+1C]
 00519476    mov         eax,dword ptr [eax+0B8]
 0051947C    cmp         eax,dword ptr [ebp-4C]
>0051947F    je          00519493
 00519481    mov         eax,dword ptr [ebp-0AC]
 00519487    add         eax,dword ptr [ebp-64]
 0051948A    mov         edx,dword ptr [ebp-50]
 0051948D    mov         ecx,dword ptr [ebp-4C]
 00519490    mov         dword ptr [edx+eax*4],ecx
 00519493    mov         eax,dword ptr [ebp-2C]
 00519496    shl         eax,2
 00519499    add         dword ptr [ebp-44],eax
 0051949C    inc         dword ptr [ebp-64]
 0051949F    dec         dword ptr [ebp-8C]
>005194A5    jne         00519440
>005194A7    jmp         00519524
 005194A9    mov         eax,dword ptr [ebp-18]
 005194AC    sub         eax,2
>005194AF    jl          00519524
 005194B1    inc         eax
 005194B2    mov         dword ptr [ebp-8C],eax
 005194B8    mov         dword ptr [ebp-64],2
 005194BF    mov         eax,dword ptr [ebp-3C]
 005194C2    sub         eax,dword ptr [ebp-38]
 005194C5    mov         dword ptr [ebp-2C],eax
 005194C8    mov         eax,dword ptr [ebp-3C]
 005194CB    mov         dword ptr [ebp-38],eax
 005194CE    mov         edx,dword ptr [ebp-74]
 005194D1    mov         eax,dword ptr [ebp-64]
 005194D4    call        00513274
 005194D9    mov         dword ptr [ebp-3C],eax
 005194DC    mov         eax,dword ptr [ebp+1C]
 005194DF    mov         eax,dword ptr [eax+0B4]
 005194E5    push        eax
 005194E6    mov         eax,dword ptr [ebp-24]
 005194E9    push        eax
 005194EA    mov         ecx,dword ptr [ebp-44]
 005194ED    mov         edx,dword ptr [ebp-28]
 005194F0    mov         eax,dword ptr [ebp-2C]
 005194F3    call        dword ptr ds:[597A74]
 005194F9    mov         edx,eax
 005194FB    mov         eax,dword ptr [ebp-0AC]
 00519501    add         eax,dword ptr [ebp-64]
 00519504    mov         ecx,dword ptr [ebp-50]
 00519507    lea         ecx,[ecx+eax*4]
 0051950A    mov         eax,dword ptr [ebp+0C]
 0051950D    call        dword ptr [ebp+8]
 00519510    mov         eax,dword ptr [ebp-2C]
 00519513    shl         eax,2
 00519516    add         dword ptr [ebp-44],eax
 00519519    inc         dword ptr [ebp-64]
 0051951C    dec         dword ptr [ebp-8C]
>00519522    jne         005194BF
 00519524    mov         eax,dword ptr [ebp-4]
 00519527    mov         eax,dword ptr [eax+34]
 0051952A    shl         eax,2
 0051952D    add         dword ptr [ebp-50],eax
 00519530    mov         eax,dword ptr [ebp-24]
 00519533    imul        dword ptr [ebp-28]
 00519536    add         dword ptr [ebp-20],eax
 00519539    inc         dword ptr [ebp-68]
 0051953C    dec         dword ptr [ebp-88]
>00519542    jne         005192E3
 00519548    call        00513ACC
 0051954D    pop         edi
 0051954E    pop         esi
 0051954F    mov         esp,ebp
 00519551    pop         ebp
 00519552    ret         18
end;*}

//0051955C
{*procedure sub_0051955C(?:?; ?:?; ?:?; ?:?);
begin
 0051955C    push        ebp
 0051955D    mov         ebp,esp
 0051955F    movq        mm1,mmword ptr [ecx]
 00519562    movq        mm2,mm1
 00519565    mov         ecx,dword ptr [ebp+8]
 00519568    movq        mm3,mmword ptr [ecx]
 0051956B    psrlq       mm1,20
 0051956F    movq        mm4,mm3
 00519572    psrlq       mm3,20
 00519576    movd        mm5,eax
 00519579    punpcklbq   mm5,mm5
 0051957C    pxor        mm0,mm0
 0051957F    punpcklbw   mm1,mm0
 00519582    punpcklbw   mm2,mm0
 00519585    psubw       mm2,mm1
 00519588    pmull       mm2,mm5
 0051958B    psllw       mm1,8
 0051958F    paddw       mm2,mm1
 00519592    psrlw       mm2,8
 00519596    punpcklbw   mm3,mm0
 00519599    punpcklbw   mm4,mm0
 0051959C    psubw       mm4,mm3
 0051959F    psllw       mm3,8
 005195A3    pmull       mm4,mm5
 005195A6    paddw       mm4,mm3
 005195A9    psrlw       mm4,8
 005195AD    movd        mm5,edx
 005195B0    punpcklbq   mm5,mm5
 005195B3    psubw       mm2,mm4
 005195B6    pmull       mm2,mm5
 005195B9    psllw       mm4,8
 005195BD    paddw       mm2,mm4
 005195C0    psrlw       mm2,8
 005195C4    packuswb    mm2,mm0
 005195C7    movd        mm0,mm2
 005195CA    pop         ebp
 005195CB    ret         4
end;*}

//005195D0
{*function sub_005195D0(?:?; ?:?; ?:?; ?:?):?;
begin
 005195D0    push        ebp
 005195D1    mov         ebp,esp
 005195D3    add         esp,0FFFFFFE8
 005195D6    push        ebx
 005195D7    mov         dword ptr [ebp-0C],ecx
 005195DA    mov         dword ptr [ebp-8],edx
 005195DD    mov         dword ptr [ebp-4],eax
 005195E0    shr         dword ptr [ebp-4],10
 005195E4    cmp         dword ptr [ebp-4],0FF
>005195EB    jbe         005195F4
 005195ED    mov         dword ptr [ebp-4],0FF
 005195F4    shr         dword ptr [ebp-8],10
 005195F8    cmp         dword ptr [ebp-8],0FF
>005195FF    jbe         00519608
 00519601    mov         dword ptr [ebp-8],0FF
 00519608    mov         eax,dword ptr [ebp-0C]
 0051960B    mov         eax,dword ptr [eax]
 0051960D    mov         dword ptr [ebp-14],eax
 00519610    add         dword ptr [ebp-0C],4
 00519614    mov         eax,dword ptr [ebp+8]
 00519617    mov         eax,dword ptr [eax]
 00519619    mov         dword ptr [ebp-18],eax
 0051961C    add         dword ptr [ebp+8],4
 00519620    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 00519626    mov         ebx,dword ptr [ebx]
 00519628    mov         eax,dword ptr [ebp+8]
 0051962B    mov         edx,dword ptr [eax]
 0051962D    mov         ecx,dword ptr [ebp-4]
 00519630    mov         eax,dword ptr [ebp-18]
 00519633    call        ebx
 00519635    push        eax
 00519636    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 0051963C    mov         ebx,dword ptr [ebx]
 0051963E    mov         eax,dword ptr [ebp-0C]
 00519641    mov         edx,dword ptr [eax]
 00519643    mov         ecx,dword ptr [ebp-4]
 00519646    mov         eax,dword ptr [ebp-14]
 00519649    call        ebx
 0051964B    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 00519651    mov         ebx,dword ptr [ebx]
 00519653    mov         ecx,dword ptr [ebp-8]
 00519656    pop         edx
 00519657    call        ebx
 00519659    mov         dword ptr [ebp-10],eax
 0051965C    mov         eax,dword ptr [ebp-10]
 0051965F    pop         ebx
 00519660    mov         esp,ebp
 00519662    pop         ebp
 00519663    ret         4
end;*}

//00519668
{*procedure sub_00519668(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00519668    push        ebp
 00519669    mov         ebp,esp
 0051966B    add         esp,0FFFFFFB8
 0051966E    push        ebx
 0051966F    push        esi
 00519670    push        edi
 00519671    mov         esi,ecx
 00519673    lea         edi,[ebp-28]
 00519676    movs        dword ptr [edi],dword ptr [esi]
 00519677    movs        dword ptr [edi],dword ptr [esi]
 00519678    movs        dword ptr [edi],dword ptr [esi]
 00519679    movs        dword ptr [edi],dword ptr [esi]
 0051967A    mov         dword ptr [ebp-8],edx
 0051967D    mov         dword ptr [ebp-4],eax
 00519680    mov         edx,dword ptr [ebp+1C]
 00519683    mov         eax,dword ptr [ebp-4]
 00519686    call        00516D84
 0051968B    mov         eax,dword ptr [ebp+1C]
 0051968E    mov         edx,dword ptr [eax]
 00519690    call        dword ptr [edx+24]
 00519693    test        al,al
>00519695    jne         00519837
 0051969B    mov         eax,dword ptr [ebp-4]
 0051969E    mov         edx,dword ptr [eax]
 005196A0    call        dword ptr [edx+24]
 005196A3    test        al,al
>005196A5    jne         00519837
 005196AB    cmp         byte ptr [ebp+10],1
>005196AF    jne         005196C1
 005196B1    mov         eax,dword ptr [ebp+1C]
 005196B4    cmp         dword ptr [eax+0B4],0
>005196BB    je          00519837
 005196C1    mov         edx,dword ptr [ebp+18]
 005196C4    mov         eax,dword ptr [ebp+1C]
 005196C7    call        00516E10
 005196CC    test        al,al
>005196CE    je          00519837
 005196D4    mov         eax,dword ptr [ebp-4]
 005196D7    cmp         byte ptr [eax+0F0],0
>005196DE    jne         00519827
 005196E4    mov         eax,dword ptr [ebp-4]
 005196E7    mov         eax,dword ptr [eax+30]
 005196EA    push        eax
 005196EB    lea         eax,[ebp-48]
 005196EE    push        eax
 005196EF    mov         eax,dword ptr [ebp-4]
 005196F2    mov         ecx,dword ptr [eax+34]
 005196F5    xor         edx,edx
 005196F7    xor         eax,eax
 005196F9    call        0051DC50
 005196FE    lea         ecx,[ebp-48]
 00519701    lea         edx,[ebp-28]
 00519704    lea         eax,[ebp-28]
 00519707    call        0051DFD8
 0051970C    mov         ecx,dword ptr [ebp-8]
 0051970F    lea         edx,[ebp-28]
 00519712    lea         eax,[ebp-28]
 00519715    call        0051DFD8
 0051971A    lea         eax,[ebp-28]
 0051971D    call        0051E15C
 00519722    test        al,al
>00519724    jne         00519837
 0051972A    mov         ecx,dword ptr [ebp-8]
 0051972D    lea         edx,[ebp-28]
 00519730    lea         eax,[ebp-38]
 00519733    call        0051DFD8
 00519738    lea         eax,[ebp-38]
 0051973B    call        0051E15C
 00519740    test        al,al
>00519742    jne         00519837
 00519748    cmp         byte ptr [ebp+10],2
>0051974C    jne         00519759
 0051974E    cmp         word ptr [ebp+0A],0
>00519753    jne         00519759
 00519755    mov         byte ptr [ebp+10],0
 00519759    mov         eax,dword ptr [ebp+18]
 0051975C    mov         eax,dword ptr [eax+8]
 0051975F    mov         edx,dword ptr [ebp+18]
 00519762    sub         eax,dword ptr [edx]
 00519764    mov         dword ptr [ebp-0C],eax
 00519767    mov         eax,dword ptr [ebp+18]
 0051976A    mov         eax,dword ptr [eax+0C]
 0051976D    mov         edx,dword ptr [ebp+18]
 00519770    sub         eax,dword ptr [edx+4]
 00519773    mov         dword ptr [ebp-10],eax
 00519776    mov         eax,dword ptr [ebp-8]
 00519779    mov         eax,dword ptr [eax+8]
 0051977C    mov         edx,dword ptr [ebp-8]
 0051977F    sub         eax,dword ptr [edx]
 00519781    mov         dword ptr [ebp-14],eax
 00519784    mov         eax,dword ptr [ebp-8]
 00519787    mov         eax,dword ptr [eax+0C]
 0051978A    mov         edx,dword ptr [ebp-8]
 0051978D    sub         eax,dword ptr [edx+4]
 00519790    mov         dword ptr [ebp-18],eax
 00519793    xor         eax,eax
 00519795    push        ebp
 00519796    push        519820
 0051979B    push        dword ptr fs:[eax]
 0051979E    mov         dword ptr fs:[eax],esp
 005197A1    mov         eax,dword ptr [ebp-0C]
 005197A4    cmp         eax,dword ptr [ebp-14]
>005197A7    jne         005197E9
 005197A9    mov         eax,dword ptr [ebp-10]
 005197AC    cmp         eax,dword ptr [ebp-18]
>005197AF    jne         005197E9
 005197B1    mov         eax,dword ptr [ebp+18]
 005197B4    mov         eax,dword ptr [eax]
 005197B6    add         eax,dword ptr [ebp-28]
 005197B9    mov         edx,dword ptr [ebp-8]
 005197BC    sub         eax,dword ptr [edx]
 005197BE    push        eax
 005197BF    mov         eax,dword ptr [ebp+18]
 005197C2    mov         eax,dword ptr [eax+4]
 005197C5    add         eax,dword ptr [ebp-24]
 005197C8    mov         edx,dword ptr [ebp-8]
 005197CB    sub         eax,dword ptr [edx+4]
 005197CE    push        eax
 005197CF    mov         al,byte ptr [ebp+10]
 005197D2    push        eax
 005197D3    push        dword ptr [ebp+0C]
 005197D6    push        dword ptr [ebp+8]
 005197D9    mov         ecx,dword ptr [ebp+1C]
 005197DC    lea         edx,[ebp-28]
 005197DF    mov         eax,dword ptr [ebp-4]
 005197E2    call        00516EA0
>005197E7    jmp         0051980D
 005197E9    lea         eax,[ebp-28]
 005197EC    push        eax
 005197ED    mov         eax,dword ptr [ebp+1C]
 005197F0    push        eax
 005197F1    mov         eax,dword ptr [ebp+18]
 005197F4    push        eax
 005197F5    mov         al,byte ptr [ebp+10]
 005197F8    push        eax
 005197F9    push        dword ptr [ebp+0C]
 005197FC    push        dword ptr [ebp+8]
 005197FF    mov         ecx,dword ptr [ebp-8]
 00519802    mov         edx,dword ptr [ebp-4]
 00519805    mov         eax,dword ptr [ebp+14]
 00519808    mov         ebx,dword ptr [eax]
 0051980A    call        dword ptr [ebx+38]
 0051980D    xor         eax,eax
 0051980F    pop         edx
 00519810    pop         ecx
 00519811    pop         ecx
 00519812    mov         dword ptr fs:[eax],edx
 00519815    push        519827
 0051981A    call        00513ACC
 0051981F    ret
>00519820    jmp         @HandleFinally
>00519825    jmp         0051981A
 00519827    mov         edx,dword ptr [ebp-8]
 0051982A    mov         ecx,80000000
 0051982F    mov         eax,dword ptr [ebp-4]
 00519832    mov         ebx,dword ptr [eax]
 00519834    call        dword ptr [ebx+44]
 00519837    pop         edi
 00519838    pop         esi
 00519839    pop         ebx
 0051983A    mov         esp,ebp
 0051983C    pop         ebp
 0051983D    ret         18
end;*}

//00519840
{*procedure sub_00519840(?:?);
begin
 00519840    push        ebp
 00519841    mov         ebp,esp
 00519843    add         esp,0FFFFFFF8
 00519846    mov         dword ptr [ebp-8],edx
 00519849    mov         dword ptr [ebp-4],eax
 0051984C    mov         eax,dword ptr [ebp-8]
 0051984F    mov         edx,dword ptr ds:[5159F0];TCustomKernel
 00519855    call        @IsClass
 0051985A    test        al,al
>0051985C    je          00519871
 0051985E    mov         ecx,dword ptr ds:[519880];0x3FEFE gvar_00519880
 00519864    mov         edx,dword ptr [ebp-8]
 00519867    mov         eax,dword ptr [ebp-4]
 0051986A    call        00514CE4
>0051986F    jmp         0051987C
 00519871    mov         edx,dword ptr [ebp-8]
 00519874    mov         eax,dword ptr [ebp-4]
 00519877    call        00420BD8
 0051987C    pop         ecx
 0051987D    pop         ecx
 0051987E    pop         ebp
 0051987F    ret
end;*}

//00519884
procedure sub_00519884(?:TCustomKernel);
begin
{*
 00519884    push        ebp
 00519885    mov         ebp,esp
 00519887    push        ecx
 00519888    mov         dword ptr [ebp-4],eax
 0051988B    mov         eax,dword ptr [ebp-4]
 0051988E    cmp         dword ptr [eax+4],0
>00519892    je          0051989F
 00519894    mov         eax,dword ptr [ebp-4]
 00519897    mov         eax,dword ptr [eax+4]
 0051989A    mov         edx,dword ptr [eax]
 0051989C    call        dword ptr [edx+0C]
 0051989F    pop         ecx
 005198A0    pop         ebp
 005198A1    ret
*}
end;

//005198A4
constructor TBoxKernel.Create;
begin
{*
 005198A4    push        ebp
 005198A5    mov         ebp,esp
 005198A7    add         esp,0FFFFFFF8
 005198AA    test        dl,dl
>005198AC    je          005198B6
 005198AE    add         esp,0FFFFFFF0
 005198B1    call        @ClassCreate
 005198B6    mov         byte ptr [ebp-5],dl
 005198B9    mov         dword ptr [ebp-4],eax
 005198BC    mov         eax,dword ptr [ebp-4]
 005198BF    cmp         byte ptr [ebp-5],0
>005198C3    je          005198D4
 005198C5    call        @AfterConstruction
 005198CA    pop         dword ptr fs:[0]
 005198D1    add         esp,0C
 005198D4    mov         eax,dword ptr [ebp-4]
 005198D7    pop         ecx
 005198D8    pop         ecx
 005198D9    pop         ebp
 005198DA    ret
*}
end;

//005198DC
{*function sub_005198DC:?;
begin
 005198DC    push        ebp
 005198DD    mov         ebp,esp
 005198DF    add         esp,0FFFFFFF8
 005198E2    mov         dword ptr [ebp-4],eax
 005198E5    mov         byte ptr [ebp-5],0
 005198E9    mov         al,byte ptr [ebp-5]
 005198EC    pop         ecx
 005198ED    pop         ecx
 005198EE    pop         ebp
 005198EF    ret
end;*}

//005198F0
{*procedure sub_005198F0(?:?);
begin
 005198F0    push        ebp
 005198F1    mov         ebp,esp
 005198F3    add         esp,0FFFFFFF8
 005198F6    mov         dword ptr [ebp-4],eax
 005198F9    fld         dword ptr [ebp+8]
 005198FC    fcomp       dword ptr ds:[51992C];-0.5:Single
 00519902    fnstsw      al
 00519904    sahf
>00519905    jb          0051991E
 00519907    fld         dword ptr [ebp+8]
 0051990A    fcomp       dword ptr ds:[519930];0.5:Single
 00519910    fnstsw      al
 00519912    sahf
>00519913    ja          0051991E
 00519915    mov         dword ptr [ebp-8],3F800000
>0051991C    jmp         00519923
 0051991E    xor         eax,eax
 00519920    mov         dword ptr [ebp-8],eax
 00519923    fld         dword ptr [ebp-8]
 00519926    pop         ecx
 00519927    pop         ecx
 00519928    pop         ebp
 00519929    ret         4
end;*}

//00519934
procedure sub_00519934;
begin
{*
 00519934    push        ebp
 00519935    mov         ebp,esp
 00519937    add         esp,0FFFFFFF8
 0051993A    mov         dword ptr [ebp-4],eax
 0051993D    mov         dword ptr [ebp-8],3F800000
 00519944    fld         dword ptr [ebp-8]
 00519947    pop         ecx
 00519948    pop         ecx
 00519949    pop         ebp
 0051994A    ret
*}
end;

//0051994C
{*procedure sub_0051994C(?:?);
begin
 0051994C    push        ebp
 0051994D    mov         ebp,esp
 0051994F    add         esp,0FFFFFFF8
 00519952    mov         dword ptr [ebp-4],eax
 00519955    fld         dword ptr [ebp+8]
 00519958    fcomp       dword ptr ds:[5199B4];-1:Single
 0051995E    fnstsw      al
 00519960    sahf
>00519961    jae         0051996A
 00519963    xor         eax,eax
 00519965    mov         dword ptr [ebp-8],eax
>00519968    jmp         005199A9
 0051996A    fld         dword ptr [ebp+8]
 0051996D    fcomp       dword ptr ds:[5199B8];0:Single
 00519973    fnstsw      al
 00519975    sahf
>00519976    jae         00519987
 00519978    fld         dword ptr ds:[5199BC];1:Single
 0051997E    fadd        dword ptr [ebp+8]
 00519981    fstp        dword ptr [ebp-8]
 00519984    wait
>00519985    jmp         005199A9
 00519987    fld         dword ptr [ebp+8]
 0051998A    fcomp       dword ptr ds:[5199BC];1:Single
 00519990    fnstsw      al
 00519992    sahf
>00519993    jae         005199A4
 00519995    fld         dword ptr ds:[5199BC];1:Single
 0051999B    fsub        dword ptr [ebp+8]
 0051999E    fstp        dword ptr [ebp-8]
 005199A1    wait
>005199A2    jmp         005199A9
 005199A4    xor         eax,eax
 005199A6    mov         dword ptr [ebp-8],eax
 005199A9    fld         dword ptr [ebp-8]
 005199AC    pop         ecx
 005199AD    pop         ecx
 005199AE    pop         ebp
 005199AF    ret         4
end;*}

//005199C0
procedure sub_005199C0;
begin
{*
 005199C0    push        ebp
 005199C1    mov         ebp,esp
 005199C3    add         esp,0FFFFFFF8
 005199C6    mov         dword ptr [ebp-4],eax
 005199C9    mov         dword ptr [ebp-8],3F800000
 005199D0    fld         dword ptr [ebp-8]
 005199D3    pop         ecx
 005199D4    pop         ecx
 005199D5    pop         ebp
 005199D6    ret
*}
end;

//005199D8
{*procedure sub_005199D8(?:?);
begin
 005199D8    push        ebp
 005199D9    mov         ebp,esp
 005199DB    add         esp,0FFFFFFF8
 005199DE    mov         dword ptr [ebp-4],eax
 005199E1    xor         eax,eax
 005199E3    mov         dword ptr [ebp-8],eax
 005199E6    fld         dword ptr [ebp+8]
 005199E9    fabs
 005199EB    fcomp       dword ptr ds:[519A20];1:Single
 005199F1    fnstsw      al
 005199F3    sahf
>005199F4    jae         00519A14
 005199F6    fld         tbyte ptr ds:[519A24];3.14159265358979:Extended
 005199FC    fmul        dword ptr [ebp+8]
 005199FF    call        @COS
 00519A04    fadd        dword ptr ds:[519A20];1:Single
 00519A0A    fdiv        dword ptr ds:[519A30];2:Single
 00519A10    fstp        dword ptr [ebp-8]
 00519A13    wait
 00519A14    fld         dword ptr [ebp-8]
 00519A17    pop         ecx
 00519A18    pop         ecx
 00519A19    pop         ebp
 00519A1A    ret         4
end;*}

//00519A34
procedure sub_00519A34;
begin
{*
 00519A34    push        ebp
 00519A35    mov         ebp,esp
 00519A37    add         esp,0FFFFFFF8
 00519A3A    mov         dword ptr [ebp-4],eax
 00519A3D    mov         dword ptr [ebp-8],3F800000
 00519A44    fld         dword ptr [ebp-8]
 00519A47    pop         ecx
 00519A48    pop         ecx
 00519A49    pop         ebp
 00519A4A    ret
*}
end;

//00519A4C
{*procedure sub_00519A4C(?:?);
begin
 00519A4C    push        ebp
 00519A4D    mov         ebp,esp
 00519A4F    add         esp,0FFFFFFF4
 00519A52    mov         dword ptr [ebp-4],eax
 00519A55    fld         dword ptr [ebp+8]
 00519A58    fabs
 00519A5A    fstp        dword ptr [ebp+8]
 00519A5D    wait
 00519A5E    fld         dword ptr [ebp+8]
 00519A61    fcomp       dword ptr ds:[519AD4];1:Single
 00519A67    fnstsw      al
 00519A69    sahf
>00519A6A    jae         00519A92
 00519A6C    fld         dword ptr [ebp+8]
 00519A6F    fmul        st,st(0)
 00519A71    fstp        dword ptr [ebp-0C]
 00519A74    wait
 00519A75    fld         dword ptr ds:[519AD8];0.5:Single
 00519A7B    fmul        dword ptr [ebp-0C]
 00519A7E    fmul        dword ptr [ebp+8]
 00519A81    fsub        dword ptr [ebp-0C]
 00519A84    fld         tbyte ptr ds:[519ADC];0.666666666666667:Extended
 00519A8A    faddp       st(1),st
 00519A8C    fstp        dword ptr [ebp-8]
 00519A8F    wait
>00519A90    jmp         00519AC8
 00519A92    fld         dword ptr [ebp+8]
 00519A95    fcomp       dword ptr ds:[519AE8];2:Single
 00519A9B    fnstsw      al
 00519A9D    sahf
>00519A9E    jae         00519AC3
 00519AA0    fld         dword ptr ds:[519AE8];2:Single
 00519AA6    fsub        dword ptr [ebp+8]
 00519AA9    fstp        dword ptr [ebp+8]
 00519AAC    wait
 00519AAD    fld         dword ptr [ebp+8]
 00519AB0    fmul        st,st(0)
 00519AB2    fld         tbyte ptr ds:[519AEC];0.166666666666667:Extended
 00519AB8    fmulp       st(1),st
 00519ABA    fmul        dword ptr [ebp+8]
 00519ABD    fstp        dword ptr [ebp-8]
 00519AC0    wait
>00519AC1    jmp         00519AC8
 00519AC3    xor         eax,eax
 00519AC5    mov         dword ptr [ebp-8],eax
 00519AC8    fld         dword ptr [ebp-8]
 00519ACB    mov         esp,ebp
 00519ACD    pop         ebp
 00519ACE    ret         4
end;*}

//00519AF8
{*function sub_00519AF8:?;
begin
 00519AF8    push        ebp
 00519AF9    mov         ebp,esp
 00519AFB    add         esp,0FFFFFFF8
 00519AFE    mov         dword ptr [ebp-4],eax
 00519B01    mov         byte ptr [ebp-5],1
 00519B05    mov         al,byte ptr [ebp-5]
 00519B08    pop         ecx
 00519B09    pop         ecx
 00519B0A    pop         ebp
 00519B0B    ret
end;*}

//00519B0C
procedure sub_00519B0C;
begin
{*
 00519B0C    push        ebp
 00519B0D    mov         ebp,esp
 00519B0F    add         esp,0FFFFFFF8
 00519B12    mov         dword ptr [ebp-4],eax
 00519B15    mov         dword ptr [ebp-8],40000000
 00519B1C    fld         dword ptr [ebp-8]
 00519B1F    pop         ecx
 00519B20    pop         ecx
 00519B21    pop         ebp
 00519B22    ret
*}
end;

//00519B24
{*function sub_00519B24(?:?):?;
begin
 00519B24    push        ebp
 00519B25    mov         ebp,esp
 00519B27    push        ecx
 00519B28    fld         dword ptr [ebp+8]
 00519B2B    fcomp       dword ptr ds:[519B64];0:Single
 00519B31    fnstsw      al
 00519B33    sahf
>00519B34    je          00519B54
 00519B36    fld         tbyte ptr ds:[519B68];3.14159265358979:Extended
 00519B3C    fmul        dword ptr [ebp+8]
 00519B3F    fstp        dword ptr [ebp+8]
 00519B42    wait
 00519B43    fld         dword ptr [ebp+8]
 00519B46    call        @SIN
 00519B4B    fdiv        dword ptr [ebp+8]
 00519B4E    fstp        dword ptr [ebp-4]
 00519B51    wait
>00519B52    jmp         00519B5B
 00519B54    mov         dword ptr [ebp-4],3F800000
 00519B5B    fld         dword ptr [ebp-4]
 00519B5E    pop         ecx
 00519B5F    pop         ebp
 00519B60    ret         4
end;*}

//00519B74
constructor sub_00519B74;
begin
{*
 00519B74    push        ebp
 00519B75    mov         ebp,esp
 00519B77    add         esp,0FFFFFFF8
 00519B7A    test        dl,dl
>00519B7C    je          00519B86
 00519B7E    add         esp,0FFFFFFF0
 00519B81    call        @ClassCreate
 00519B86    mov         byte ptr [ebp-5],dl
 00519B89    mov         dword ptr [ebp-4],eax
 00519B8C    mov         eax,dword ptr [ebp-4]
 00519B8F    mov         dword ptr [eax+8],40400000;TWindowedSincKernel...........Width:Single
 00519B96    mov         eax,dword ptr [ebp-4]
 00519B99    cmp         byte ptr [ebp-5],0
>00519B9D    je          00519BAE
 00519B9F    call        @AfterConstruction
 00519BA4    pop         dword ptr fs:[0]
 00519BAB    add         esp,0C
 00519BAE    mov         eax,dword ptr [ebp-4]
 00519BB1    pop         ecx
 00519BB2    pop         ecx
 00519BB3    pop         ebp
 00519BB4    ret
*}
end;

//00519BB8
{*procedure sub_00519BB8(?:?);
begin
 00519BB8    push        ebp
 00519BB9    mov         ebp,esp
 00519BBB    add         esp,0FFFFFFF4
 00519BBE    mov         dword ptr [ebp-4],eax
 00519BC1    fld         dword ptr [ebp+8]
 00519BC4    fabs
 00519BC6    fstp        dword ptr [ebp+8]
 00519BC9    wait
 00519BCA    fld         dword ptr [ebp+8]
 00519BCD    mov         eax,dword ptr [ebp-4]
 00519BD0    fcomp       dword ptr [eax+8];TWindowedSincKernel............Width:Single
 00519BD3    fnstsw      al
 00519BD5    sahf
>00519BD6    jae         00519BF8
 00519BD8    push        dword ptr [ebp+8]
 00519BDB    mov         eax,dword ptr [ebp-4]
 00519BDE    mov         edx,dword ptr [eax]
 00519BE0    call        dword ptr [edx+1C];@AbstractError
 00519BE3    fstp        dword ptr [ebp-0C]
 00519BE6    wait
 00519BE7    push        dword ptr [ebp+8]
 00519BEA    call        00519B24
 00519BEF    fmul        dword ptr [ebp-0C]
 00519BF2    fstp        dword ptr [ebp-8]
 00519BF5    wait
>00519BF6    jmp         00519BFD
 00519BF8    xor         eax,eax
 00519BFA    mov         dword ptr [ebp-8],eax
 00519BFD    fld         dword ptr [ebp-8]
 00519C00    mov         esp,ebp
 00519C02    pop         ebp
 00519C03    ret         4
end;*}

//00519C08
{*function sub_00519C08:?;
begin
 00519C08    push        ebp
 00519C09    mov         ebp,esp
 00519C0B    add         esp,0FFFFFFF8
 00519C0E    mov         dword ptr [ebp-4],eax
 00519C11    mov         byte ptr [ebp-5],1
 00519C15    mov         al,byte ptr [ebp-5]
 00519C18    pop         ecx
 00519C19    pop         ecx
 00519C1A    pop         ebp
 00519C1B    ret
end;*}

//00519C1C
{*procedure TWindowedSincKernel.SetWidth(Value:Single; ?:?);
begin
 00519C1C    push        ebp
 00519C1D    mov         ebp,esp
 00519C1F    push        ecx
 00519C20    mov         dword ptr [ebp-4],eax
 00519C23    push        40800000
 00519C28    push        dword ptr [ebp+8]
 00519C2B    call        004373F8
 00519C30    fstp        dword ptr [ebp+8]
 00519C33    wait
 00519C34    fld         dword ptr [ebp+8]
 00519C37    mov         eax,dword ptr [ebp-4]
 00519C3A    fcomp       dword ptr [eax+8];TWindowedSincKernel.............Width:Single
 00519C3D    fnstsw      al
 00519C3F    sahf
>00519C40    je          00519C53
 00519C42    mov         eax,dword ptr [ebp+8]
 00519C45    mov         edx,dword ptr [ebp-4]
 00519C48    mov         dword ptr [edx+8],eax;TWindowedSincKernel..............Width:Single
 00519C4B    mov         eax,dword ptr [ebp-4]
 00519C4E    call        00519884
 00519C53    pop         ecx
 00519C54    pop         ebp
 00519C55    ret         4
end;*}

//00519C58
procedure sub_00519C58;
begin
{*
 00519C58    push        ebp
 00519C59    mov         ebp,esp
 00519C5B    add         esp,0FFFFFFF8
 00519C5E    mov         dword ptr [ebp-4],eax
 00519C61    mov         eax,dword ptr [ebp-4]
 00519C64    mov         eax,dword ptr [eax+8];TWindowedSincKernel...............Width:Single
 00519C67    mov         dword ptr [ebp-8],eax
 00519C6A    fld         dword ptr [ebp-8]
 00519C6D    pop         ecx
 00519C6E    pop         ecx
 00519C6F    pop         ebp
 00519C70    ret
*}
end;

//00519C74
{*procedure sub_00519C74(?:?);
begin
 00519C74    push        ebp
 00519C75    mov         ebp,esp
 00519C77    add         esp,0FFFFFFF8
 00519C7A    mov         dword ptr [ebp-4],eax
 00519C7D    fld         dword ptr [ebp+8]
 00519C80    mov         eax,dword ptr [ebp-4]
 00519C83    fdiv        dword ptr [eax+8];TLanczosKernel................Width:Single
 00519C86    add         esp,0FFFFFFFC
 00519C89    fstp        dword ptr [esp]
 00519C8C    wait
 00519C8D    call        00519B24
 00519C92    fstp        dword ptr [ebp-8]
 00519C95    wait
 00519C96    fld         dword ptr [ebp-8]
 00519C99    pop         ecx
 00519C9A    pop         ecx
 00519C9B    pop         ebp
 00519C9C    ret         4
end;*}

//00519CA0
{*procedure sub_00519CA0(?:?);
begin
 00519CA0    push        ebp
 00519CA1    mov         ebp,esp
 00519CA3    add         esp,0FFFFFFF0
 00519CA6    mov         dword ptr [ebp-4],eax
 00519CA9    fld         dword ptr [ebp+8]
 00519CAC    fabs
 00519CAE    fstp        dword ptr [ebp+8]
 00519CB1    wait
 00519CB2    fld         dword ptr [ebp+8]
 00519CB5    fmul        st,st(0)
 00519CB7    fstp        dword ptr [ebp-0C]
 00519CBA    wait
 00519CBB    fld         dword ptr [ebp-0C]
 00519CBE    fmul        dword ptr [ebp+8]
 00519CC1    fstp        dword ptr [ebp-10]
 00519CC4    wait
 00519CC5    fld         dword ptr [ebp+8]
 00519CC8    fcomp       dword ptr ds:[519D4C];1:Single
 00519CCE    fnstsw      al
 00519CD0    sahf
>00519CD1    jae         00519CFB
 00519CD3    fld         dword ptr ds:[519D50];7:Single
 00519CD9    fmul        dword ptr [ebp-10]
 00519CDC    fld         dword ptr ds:[519D54];-12:Single
 00519CE2    fmul        dword ptr [ebp-0C]
 00519CE5    faddp       st(1),st
 00519CE7    fld         tbyte ptr ds:[519D58];5.33333333333333:Extended
 00519CED    faddp       st(1),st
 00519CEF    fdiv        dword ptr ds:[519D64];6:Single
 00519CF5    fstp        dword ptr [ebp-8]
 00519CF8    wait
>00519CF9    jmp         00519D41
 00519CFB    fld         dword ptr [ebp+8]
 00519CFE    fcomp       dword ptr ds:[519D68];2:Single
 00519D04    fnstsw      al
 00519D06    sahf
>00519D07    jae         00519D3C
 00519D09    fld         tbyte ptr ds:[519D6C];-2.33333333333333:Extended
 00519D0F    fmul        dword ptr [ebp-10]
 00519D12    fld         dword ptr ds:[519D78];12:Single
 00519D18    fmul        dword ptr [ebp-0C]
 00519D1B    faddp       st(1),st
 00519D1D    fld         dword ptr ds:[519D7C];20:Single
 00519D23    fmul        dword ptr [ebp+8]
 00519D26    fsubp       st(1),st
 00519D28    fld         tbyte ptr ds:[519D80];10.6666666666667:Extended
 00519D2E    faddp       st(1),st
 00519D30    fdiv        dword ptr ds:[519D64];6:Single
 00519D36    fstp        dword ptr [ebp-8]
 00519D39    wait
>00519D3A    jmp         00519D41
 00519D3C    xor         eax,eax
 00519D3E    mov         dword ptr [ebp-8],eax
 00519D41    fld         dword ptr [ebp-8]
 00519D44    mov         esp,ebp
 00519D46    pop         ebp
 00519D47    ret         4
end;*}

//00519D8C
{*function sub_00519D8C:?;
begin
 00519D8C    push        ebp
 00519D8D    mov         ebp,esp
 00519D8F    add         esp,0FFFFFFF8
 00519D92    mov         dword ptr [ebp-4],eax
 00519D95    mov         byte ptr [ebp-5],1
 00519D99    mov         al,byte ptr [ebp-5]
 00519D9C    pop         ecx
 00519D9D    pop         ecx
 00519D9E    pop         ebp
 00519D9F    ret
end;*}

//00519DA0
procedure sub_00519DA0;
begin
{*
 00519DA0    push        ebp
 00519DA1    mov         ebp,esp
 00519DA3    add         esp,0FFFFFFF8
 00519DA6    mov         dword ptr [ebp-4],eax
 00519DA9    mov         dword ptr [ebp-8],40000000
 00519DB0    fld         dword ptr [ebp-8]
 00519DB3    pop         ecx
 00519DB4    pop         ecx
 00519DB5    pop         ebp
 00519DB6    ret
*}
end;

//00519DB8
constructor sub_00519DB8;
begin
{*
 00519DB8    push        ebp
 00519DB9    mov         ebp,esp
 00519DBB    add         esp,0FFFFFFF8
 00519DBE    test        dl,dl
>00519DC0    je          00519DCA
 00519DC2    add         esp,0FFFFFFF0
 00519DC5    call        @ClassCreate
 00519DCA    mov         byte ptr [ebp-5],dl
 00519DCD    mov         dword ptr [ebp-4],eax
 00519DD0    mov         eax,dword ptr [ebp-4]
 00519DD3    mov         dword ptr [eax+8],0BF000000;TCubicKernel........Coeff:Single
 00519DDA    mov         eax,dword ptr [ebp-4]
 00519DDD    cmp         byte ptr [ebp-5],0
>00519DE1    je          00519DF2
 00519DE3    call        @AfterConstruction
 00519DE8    pop         dword ptr fs:[0]
 00519DEF    add         esp,0C
 00519DF2    mov         eax,dword ptr [ebp-4]
 00519DF5    pop         ecx
 00519DF6    pop         ecx
 00519DF7    pop         ebp
 00519DF8    ret
*}
end;

//00519DFC
{*procedure sub_00519DFC(?:?);
begin
 00519DFC    push        ebp
 00519DFD    mov         ebp,esp
 00519DFF    add         esp,0FFFFFFF0
 00519E02    mov         dword ptr [ebp-4],eax
 00519E05    fld         dword ptr [ebp+8]
 00519E08    fabs
 00519E0A    fstp        dword ptr [ebp+8]
 00519E0D    wait
 00519E0E    fld         dword ptr [ebp+8]
 00519E11    fmul        st,st(0)
 00519E13    fstp        dword ptr [ebp-0C]
 00519E16    wait
 00519E17    fld         dword ptr [ebp-0C]
 00519E1A    fmul        dword ptr [ebp+8]
 00519E1D    fstp        dword ptr [ebp-10]
 00519E20    wait
 00519E21    fld         dword ptr [ebp+8]
 00519E24    fcomp       dword ptr ds:[519EA0];1:Single
 00519E2A    fnstsw      al
 00519E2C    sahf
>00519E2D    jae         00519E5B
 00519E2F    mov         eax,dword ptr [ebp-4]
 00519E32    fld         dword ptr [eax+8];TCubicKernel.........Coeff:Single
 00519E35    fadd        dword ptr ds:[519EA4];2:Single
 00519E3B    fmul        dword ptr [ebp-10]
 00519E3E    mov         eax,dword ptr [ebp-4]
 00519E41    fld         dword ptr [eax+8];TCubicKernel..........Coeff:Single
 00519E44    fadd        dword ptr ds:[519EA8];3:Single
 00519E4A    fmul        dword ptr [ebp-0C]
 00519E4D    fsubp       st(1),st
 00519E4F    fadd        dword ptr ds:[519EA0];1:Single
 00519E55    fstp        dword ptr [ebp-8]
 00519E58    wait
>00519E59    jmp         00519E97
 00519E5B    fld         dword ptr [ebp+8]
 00519E5E    fcomp       dword ptr ds:[519EA4];2:Single
 00519E64    fnstsw      al
 00519E66    sahf
>00519E67    jae         00519E92
 00519E69    fld         dword ptr ds:[519EAC];5:Single
 00519E6F    fmul        dword ptr [ebp-0C]
 00519E72    fsubr       dword ptr [ebp-10]
 00519E75    fld         dword ptr ds:[519EB0];8:Single
 00519E7B    fmul        dword ptr [ebp+8]
 00519E7E    faddp       st(1),st
 00519E80    fsub        dword ptr ds:[519EB4];4:Single
 00519E86    mov         eax,dword ptr [ebp-4]
 00519E89    fmul        dword ptr [eax+8];TCubicKernel...........Coeff:Single
 00519E8C    fstp        dword ptr [ebp-8]
 00519E8F    wait
>00519E90    jmp         00519E97
 00519E92    xor         eax,eax
 00519E94    mov         dword ptr [ebp-8],eax
 00519E97    fld         dword ptr [ebp-8]
 00519E9A    mov         esp,ebp
 00519E9C    pop         ebp
 00519E9D    ret         4
end;*}

//00519EB8
{*function sub_00519EB8:?;
begin
 00519EB8    push        ebp
 00519EB9    mov         ebp,esp
 00519EBB    add         esp,0FFFFFFF8
 00519EBE    mov         dword ptr [ebp-4],eax
 00519EC1    mov         byte ptr [ebp-5],1
 00519EC5    mov         al,byte ptr [ebp-5]
 00519EC8    pop         ecx
 00519EC9    pop         ecx
 00519ECA    pop         ebp
 00519ECB    ret
end;*}

//00519ECC
procedure sub_00519ECC;
begin
{*
 00519ECC    push        ebp
 00519ECD    mov         ebp,esp
 00519ECF    add         esp,0FFFFFFF8
 00519ED2    mov         dword ptr [ebp-4],eax
 00519ED5    mov         dword ptr [ebp-8],40000000
 00519EDC    fld         dword ptr [ebp-8]
 00519EDF    pop         ecx
 00519EE0    pop         ecx
 00519EE1    pop         ebp
 00519EE2    ret
*}
end;

//00519EE4
constructor sub_00519EE4;
begin
{*
 00519EE4    push        ebp
 00519EE5    mov         ebp,esp
 00519EE7    add         esp,0FFFFFFF8
 00519EEA    test        dl,dl
>00519EEC    je          00519EF6
 00519EEE    add         esp,0FFFFFFF0
 00519EF1    call        @ClassCreate
 00519EF6    mov         byte ptr [ebp-5],dl
 00519EF9    mov         dword ptr [ebp-4],eax
 00519EFC    xor         edx,edx
 00519EFE    mov         eax,dword ptr [ebp-4]
 00519F01    call        00519B74
 00519F06    mov         eax,dword ptr [ebp-4]
 00519F09    mov         dword ptr [eax+0C],3FAA3D71;TGaussianKernel.......Sigma:Single
 00519F10    mov         eax,dword ptr [ebp-4]
 00519F13    cmp         byte ptr [ebp-5],0
>00519F17    je          00519F28
 00519F19    call        @AfterConstruction
 00519F1E    pop         dword ptr fs:[0]
 00519F25    add         esp,0C
 00519F28    mov         eax,dword ptr [ebp-4]
 00519F2B    pop         ecx
 00519F2C    pop         ecx
 00519F2D    pop         ebp
 00519F2E    ret
*}
end;

//00519F30
{*procedure TGaussianKernel.SetSigma(Value:Single; ?:?);
begin
 00519F30    push        ebp
 00519F31    mov         ebp,esp
 00519F33    push        ecx
 00519F34    mov         dword ptr [ebp-4],eax
 00519F37    mov         eax,dword ptr [ebp-4]
 00519F3A    fld         dword ptr [eax+0C];TGaussianKernel........Sigma:Single
 00519F3D    fcomp       dword ptr [ebp+8]
 00519F40    fnstsw      al
 00519F42    sahf
>00519F43    je          00519F67
 00519F45    mov         eax,dword ptr [ebp-4]
 00519F48    fld         dword ptr [eax+0C];TGaussianKernel.........Sigma:Single
 00519F4B    fcomp       dword ptr ds:[519F6C];0:Single
 00519F51    fnstsw      al
 00519F53    sahf
>00519F54    je          00519F67
 00519F56    mov         eax,dword ptr [ebp+8]
 00519F59    mov         edx,dword ptr [ebp-4]
 00519F5C    mov         dword ptr [edx+0C],eax;TGaussianKernel..........Sigma:Single
 00519F5F    mov         eax,dword ptr [ebp-4]
 00519F62    call        00519884
 00519F67    pop         ecx
 00519F68    pop         ebp
 00519F69    ret         4
end;*}

//00519F70
{*procedure sub_00519F70(?:?);
begin
 00519F70    push        ebp
 00519F71    mov         ebp,esp
 00519F73    add         esp,0FFFFFFF8
 00519F76    mov         dword ptr [ebp-4],eax
 00519F79    push        4000
 00519F7E    push        80000000
 00519F83    push        0
 00519F85    fld         dword ptr [ebp+8]
 00519F88    fmul        st,st(0)
 00519F8A    fchs
 00519F8C    mov         eax,dword ptr [ebp-4]
 00519F8F    fdiv        dword ptr [eax+0C];TGaussianKernel...........Sigma:Single
 00519F92    add         esp,0FFFFFFF4
 00519F95    fstp        tbyte ptr [esp]
 00519F98    wait
 00519F99    call        004372A4
 00519F9E    fstp        dword ptr [ebp-8]
 00519FA1    wait
 00519FA2    fld         dword ptr [ebp-8]
 00519FA5    pop         ecx
 00519FA6    pop         ecx
 00519FA7    pop         ebp
 00519FA8    ret         4
end;*}

//00519FAC
{*procedure TCubicKernel.SetCoeff(Value:Single; ?:?);
begin
 00519FAC    push        ebp
 00519FAD    mov         ebp,esp
 00519FAF    push        ecx
 00519FB0    mov         dword ptr [ebp-4],eax
 00519FB3    fld         dword ptr [ebp+8]
 00519FB6    mov         eax,dword ptr [ebp-4]
 00519FB9    fcomp       dword ptr [eax+8];TCubicKernel............Coeff:Single
 00519FBC    fnstsw      al
 00519FBE    sahf
>00519FBF    je          00519FD2
 00519FC1    mov         eax,dword ptr [ebp+8]
 00519FC4    mov         edx,dword ptr [ebp-4]
 00519FC7    mov         dword ptr [edx+8],eax;TCubicKernel.............Coeff:Single
 00519FCA    mov         eax,dword ptr [ebp-4]
 00519FCD    call        00519884
 00519FD2    pop         ecx
 00519FD3    pop         ebp
 00519FD4    ret         4
end;*}

//00519FD8
{*procedure sub_00519FD8(?:?);
begin
 00519FD8    push        ebp
 00519FD9    mov         ebp,esp
 00519FDB    add         esp,0FFFFFFEC
 00519FDE    mov         dword ptr [ebp-4],eax
 00519FE1    fld         tbyte ptr ds:[51A038];3.14159265358979:Extended
 00519FE7    fmul        dword ptr [ebp+8]
 00519FEA    mov         eax,dword ptr [ebp-4]
 00519FED    fdiv        dword ptr [eax+8];TBlackmanKernel.................Width:Single
 00519FF0    fstp        dword ptr [ebp+8]
 00519FF3    wait
 00519FF4    fld         dword ptr [ebp+8]
 00519FF7    call        @COS
 00519FFC    fmul        dword ptr ds:[51A044];0.5:Single
 0051A002    fld         tbyte ptr ds:[51A048];0.42:Extended
 0051A008    faddp       st(1),st
 0051A00A    fstp        tbyte ptr [ebp-14]
 0051A00D    wait
 0051A00E    fld         dword ptr ds:[51A054];2:Single
 0051A014    fmul        dword ptr [ebp+8]
 0051A017    call        @COS
 0051A01C    fld         tbyte ptr ds:[51A058];0.08:Extended
 0051A022    fmulp       st(1),st
 0051A024    fld         tbyte ptr [ebp-14]
 0051A027    faddp       st(1),st
 0051A029    fstp        dword ptr [ebp-8]
 0051A02C    wait
 0051A02D    fld         dword ptr [ebp-8]
 0051A030    mov         esp,ebp
 0051A032    pop         ebp
 0051A033    ret         4
end;*}

//0051A064
{*procedure sub_0051A064(?:?);
begin
 0051A064    push        ebp
 0051A065    mov         ebp,esp
 0051A067    add         esp,0FFFFFFF8
 0051A06A    mov         dword ptr [ebp-4],eax
 0051A06D    fld         tbyte ptr ds:[51A09C];3.14159265358979:Extended
 0051A073    fmul        dword ptr [ebp+8]
 0051A076    mov         eax,dword ptr [ebp-4]
 0051A079    fdiv        dword ptr [eax+8];THannKernel..................Width:Single
 0051A07C    call        @COS
 0051A081    fmul        dword ptr ds:[51A0A8];0.5:Single
 0051A087    fadd        dword ptr ds:[51A0A8];0.5:Single
 0051A08D    fstp        dword ptr [ebp-8]
 0051A090    wait
 0051A091    fld         dword ptr [ebp-8]
 0051A094    pop         ecx
 0051A095    pop         ecx
 0051A096    pop         ebp
 0051A097    ret         4
end;*}

//0051A0AC
{*procedure sub_0051A0AC(?:?);
begin
 0051A0AC    push        ebp
 0051A0AD    mov         ebp,esp
 0051A0AF    add         esp,0FFFFFFF8
 0051A0B2    mov         dword ptr [ebp-4],eax
 0051A0B5    fld         tbyte ptr ds:[51A0E8];3.14159265358979:Extended
 0051A0BB    fmul        dword ptr [ebp+8]
 0051A0BE    mov         eax,dword ptr [ebp-4]
 0051A0C1    fdiv        dword ptr [eax+8];THammingKernel...................Width:Single
 0051A0C4    call        @COS
 0051A0C9    fld         tbyte ptr ds:[51A0F4];0.46:Extended
 0051A0CF    fmulp       st(1),st
 0051A0D1    fld         tbyte ptr ds:[51A100];0.54:Extended
 0051A0D7    faddp       st(1),st
 0051A0D9    fstp        dword ptr [ebp-8]
 0051A0DC    wait
 0051A0DD    fld         dword ptr [ebp-8]
 0051A0E0    pop         ecx
 0051A0E1    pop         ecx
 0051A0E2    pop         ebp
 0051A0E3    ret         4
end;*}

//0051A10C
constructor sub_0051A10C;
begin
{*
 0051A10C    push        ebp
 0051A10D    mov         ebp,esp
 0051A10F    add         esp,0FFFFFFF8
 0051A112    test        dl,dl
>0051A114    je          0051A11E
 0051A116    add         esp,0FFFFFFF0
 0051A119    call        @ClassCreate
 0051A11E    mov         byte ptr [ebp-5],dl
 0051A121    mov         dword ptr [ebp-4],eax
 0051A124    mov         eax,dword ptr [ebp-4]
 0051A127    mov         dword ptr [eax+8],40400000;TSinshKernel.?f8:Single
 0051A12E    mov         eax,dword ptr [ebp-4]
 0051A131    mov         dword ptr [eax+0C],3F000000;TSinshKernel.Coeff:Single
 0051A138    mov         eax,dword ptr [ebp-4]
 0051A13B    cmp         byte ptr [ebp-5],0
>0051A13F    je          0051A150
 0051A141    call        @AfterConstruction
 0051A146    pop         dword ptr fs:[0]
 0051A14D    add         esp,0C
 0051A150    mov         eax,dword ptr [ebp-4]
 0051A153    pop         ecx
 0051A154    pop         ecx
 0051A155    pop         ebp
 0051A156    ret
*}
end;

//0051A158
{*procedure sub_0051A158(?:?);
begin
 0051A158    push        ebp
 0051A159    mov         ebp,esp
 0051A15B    add         esp,0FFFFFFEC
 0051A15E    mov         dword ptr [ebp-4],eax
 0051A161    fld         dword ptr [ebp+8]
 0051A164    fcomp       dword ptr ds:[51A1C0];0:Single
 0051A16A    fnstsw      al
 0051A16C    sahf
>0051A16D    jne         0051A178
 0051A16F    mov         dword ptr [ebp-8],3F800000
>0051A176    jmp         0051A1B4
 0051A178    fld         tbyte ptr ds:[51A1C4];3.14159265358979:Extended
 0051A17E    mov         eax,dword ptr [ebp-4]
 0051A181    fmul        dword ptr [eax+0C];TSinshKernel.Coeff:Single
 0051A184    fmul        dword ptr [ebp+8]
 0051A187    add         esp,0FFFFFFF4
 0051A18A    fstp        tbyte ptr [esp]
 0051A18D    wait
 0051A18E    call        0043736C
 0051A193    fstp        tbyte ptr [ebp-14]
 0051A196    wait
 0051A197    fld         tbyte ptr ds:[51A1C4];3.14159265358979:Extended
 0051A19D    fmul        dword ptr [ebp+8]
 0051A1A0    call        @SIN
 0051A1A5    mov         eax,dword ptr [ebp-4]
 0051A1A8    fmul        dword ptr [eax+0C];TSinshKernel.Coeff:Single
 0051A1AB    fld         tbyte ptr [ebp-14]
 0051A1AE    fdivp       st(1),st
 0051A1B0    fstp        dword ptr [ebp-8]
 0051A1B3    wait
 0051A1B4    fld         dword ptr [ebp-8]
 0051A1B7    mov         esp,ebp
 0051A1B9    pop         ebp
 0051A1BA    ret         4
end;*}

//0051A1D0
{*function sub_0051A1D0:?;
begin
 0051A1D0    push        ebp
 0051A1D1    mov         ebp,esp
 0051A1D3    add         esp,0FFFFFFF8
 0051A1D6    mov         dword ptr [ebp-4],eax
 0051A1D9    mov         byte ptr [ebp-5],1
 0051A1DD    mov         al,byte ptr [ebp-5]
 0051A1E0    pop         ecx
 0051A1E1    pop         ecx
 0051A1E2    pop         ebp
 0051A1E3    ret
end;*}

//0051A1E4
{*procedure TSinshKernel.SetWidth(Value:Single; ?:?);
begin
 0051A1E4    push        ebp
 0051A1E5    mov         ebp,esp
 0051A1E7    push        ecx
 0051A1E8    mov         dword ptr [ebp-4],eax
 0051A1EB    mov         eax,dword ptr [ebp-4]
 0051A1EE    fld         dword ptr [eax+8];TSinshKernel.?f8:Single
 0051A1F1    fcomp       dword ptr [ebp+8]
 0051A1F4    fnstsw      al
 0051A1F6    sahf
>0051A1F7    je          0051A20A
 0051A1F9    mov         eax,dword ptr [ebp+8]
 0051A1FC    mov         edx,dword ptr [ebp-4]
 0051A1FF    mov         dword ptr [edx+8],eax;TSinshKernel.?f8:Single
 0051A202    mov         eax,dword ptr [ebp-4]
 0051A205    call        00519884
 0051A20A    pop         ecx
 0051A20B    pop         ebp
 0051A20C    ret         4
end;*}

//0051A210
procedure TSinshKernel.GetWidth;
begin
{*
 0051A210    push        ebp
 0051A211    mov         ebp,esp
 0051A213    add         esp,0FFFFFFF8
 0051A216    mov         dword ptr [ebp-4],eax
 0051A219    mov         eax,dword ptr [ebp-4]
 0051A21C    mov         eax,dword ptr [eax+8];TSinshKernel.?f8:Single
 0051A21F    mov         dword ptr [ebp-8],eax
 0051A222    fld         dword ptr [ebp-8]
 0051A225    pop         ecx
 0051A226    pop         ecx
 0051A227    pop         ebp
 0051A228    ret
*}
end;

//0051A22C
{*procedure TSinshKernel.SetCoeff(Value:Single; ?:?);
begin
 0051A22C    push        ebp
 0051A22D    mov         ebp,esp
 0051A22F    push        ecx
 0051A230    mov         dword ptr [ebp-4],eax
 0051A233    mov         eax,dword ptr [ebp-4]
 0051A236    fld         dword ptr [eax+0C];TSinshKernel.Coeff:Single
 0051A239    fcomp       dword ptr [ebp+8]
 0051A23C    fnstsw      al
 0051A23E    sahf
>0051A23F    je          0051A263
 0051A241    mov         eax,dword ptr [ebp-4]
 0051A244    fld         dword ptr [eax+0C];TSinshKernel.Coeff:Single
 0051A247    fcomp       dword ptr ds:[51A268];0:Single
 0051A24D    fnstsw      al
 0051A24F    sahf
>0051A250    je          0051A263
 0051A252    mov         eax,dword ptr [ebp+8]
 0051A255    mov         edx,dword ptr [ebp-4]
 0051A258    mov         dword ptr [edx+0C],eax;TSinshKernel.Coeff:Single
 0051A25B    mov         eax,dword ptr [ebp-4]
 0051A25E    call        00519884
 0051A263    pop         ecx
 0051A264    pop         ebp
 0051A265    ret         4
end;*}

//0051A26C
constructor sub_0051A26C;
begin
{*
 0051A26C    push        ebp
 0051A26D    mov         ebp,esp
 0051A26F    add         esp,0FFFFFFF8
 0051A272    test        dl,dl
>0051A274    je          0051A27E
 0051A276    add         esp,0FFFFFFF0
 0051A279    call        @ClassCreate
 0051A27E    mov         byte ptr [ebp-5],dl
 0051A281    mov         dword ptr [ebp-4],eax
 0051A284    mov         eax,dword ptr [ebp-4]
 0051A287    xor         edx,edx
 0051A289    mov         dword ptr [eax+8],edx;THermiteKernel.Bias:Single
 0051A28C    mov         eax,dword ptr [ebp-4]
 0051A28F    xor         edx,edx
 0051A291    mov         dword ptr [eax+0C],edx;THermiteKernel.Tension:Single
 0051A294    mov         eax,dword ptr [ebp-4]
 0051A297    cmp         byte ptr [ebp-5],0
>0051A29B    je          0051A2AC
 0051A29D    call        @AfterConstruction
 0051A2A2    pop         dword ptr fs:[0]
 0051A2A9    add         esp,0C
 0051A2AC    mov         eax,dword ptr [ebp-4]
 0051A2AF    pop         ecx
 0051A2B0    pop         ecx
 0051A2B1    pop         ebp
 0051A2B2    ret
*}
end;

//0051A2B4
{*procedure sub_0051A2B4(?:?);
begin
 0051A2B4    push        ebp
 0051A2B5    mov         ebp,esp
 0051A2B7    add         esp,0FFFFFFD0
 0051A2BA    mov         dword ptr [ebp-4],eax
 0051A2BD    fld         dword ptr ds:[51A3E0];1:Single
 0051A2C3    mov         eax,dword ptr [ebp-4]
 0051A2C6    fsub        dword ptr [eax+0C];THermiteKernel.Tension:Single
 0051A2C9    fmul        dword ptr ds:[51A3E4];0.5:Single
 0051A2CF    fstp        dword ptr [ebp-10]
 0051A2D2    wait
 0051A2D3    fld         dword ptr ds:[51A3E0];1:Single
 0051A2D9    mov         eax,dword ptr [ebp-4]
 0051A2DC    fadd        dword ptr [eax+8];THermiteKernel.Bias:Single
 0051A2DF    fmul        dword ptr [ebp-10]
 0051A2E2    fstp        dword ptr [ebp-1C]
 0051A2E5    wait
 0051A2E6    fld         dword ptr ds:[51A3E0];1:Single
 0051A2EC    mov         eax,dword ptr [ebp-4]
 0051A2EF    fsub        dword ptr [eax+8];THermiteKernel.Bias:Single
 0051A2F2    fmul        dword ptr [ebp-10]
 0051A2F5    fstp        dword ptr [ebp-20]
 0051A2F8    wait
 0051A2F9    fld         dword ptr [ebp+8]
 0051A2FC    add         esp,0FFFFFFF4
 0051A2FF    fstp        tbyte ptr [esp]
 0051A302    wait
 0051A303    call        00437270
 0051A308    mov         dword ptr [ebp-0C],eax
 0051A30B    fild        dword ptr [ebp-0C]
 0051A30E    fsub        dword ptr [ebp+8]
 0051A311    fabs
 0051A313    fstp        dword ptr [ebp-10]
 0051A316    wait
 0051A317    fld         dword ptr [ebp-10]
 0051A31A    fmul        dword ptr [ebp-10]
 0051A31D    fstp        dword ptr [ebp-14]
 0051A320    wait
 0051A321    fld         dword ptr [ebp-14]
 0051A324    fmul        dword ptr [ebp-10]
 0051A327    fstp        dword ptr [ebp-18]
 0051A32A    wait
 0051A32B    fld         dword ptr ds:[51A3E8];2:Single
 0051A331    fmul        dword ptr [ebp-14]
 0051A334    fsubr       dword ptr [ebp-18]
 0051A337    fadd        dword ptr [ebp-10]
 0051A33A    fstp        dword ptr [ebp-28]
 0051A33D    wait
 0051A33E    fld         dword ptr [ebp-18]
 0051A341    fsub        dword ptr [ebp-14]
 0051A344    fstp        dword ptr [ebp-2C]
 0051A347    wait
 0051A348    fld         dword ptr ds:[51A3EC];-2:Single
 0051A34E    fmul        dword ptr [ebp-18]
 0051A351    fld         dword ptr ds:[51A3F0];3:Single
 0051A357    fmul        dword ptr [ebp-14]
 0051A35A    faddp       st(1),st
 0051A35C    fstp        dword ptr [ebp-30]
 0051A35F    wait
 0051A360    fld         dword ptr [ebp-30]
 0051A363    fchs
 0051A365    fadd        dword ptr ds:[51A3E0];1:Single
 0051A36B    fstp        dword ptr [ebp-24]
 0051A36E    wait
 0051A36F    mov         eax,dword ptr [ebp-0C]
 0051A372    sub         eax,0FFFFFFFE
>0051A375    je          0051A382
 0051A377    dec         eax
>0051A378    je          0051A38E
 0051A37A    dec         eax
>0051A37B    je          0051A3A8
 0051A37D    dec         eax
>0051A37E    je          0051A3C2
>0051A380    jmp         0051A3D0
 0051A382    fld         dword ptr [ebp-2C]
 0051A385    fmul        dword ptr [ebp-20]
 0051A388    fstp        dword ptr [ebp-8]
 0051A38B    wait
>0051A38C    jmp         0051A3D5
 0051A38E    fld         dword ptr [ebp-28]
 0051A391    fmul        dword ptr [ebp-20]
 0051A394    fadd        dword ptr [ebp-30]
 0051A397    fld         dword ptr [ebp-1C]
 0051A39A    fsub        dword ptr [ebp-20]
 0051A39D    fmul        dword ptr [ebp-2C]
 0051A3A0    faddp       st(1),st
 0051A3A2    fstp        dword ptr [ebp-8]
 0051A3A5    wait
>0051A3A6    jmp         0051A3D5
 0051A3A8    fld         dword ptr [ebp-1C]
 0051A3AB    fsub        dword ptr [ebp-20]
 0051A3AE    fmul        dword ptr [ebp-28]
 0051A3B1    fadd        dword ptr [ebp-24]
 0051A3B4    fld         dword ptr [ebp-2C]
 0051A3B7    fmul        dword ptr [ebp-1C]
 0051A3BA    fsubp       st(1),st
 0051A3BC    fstp        dword ptr [ebp-8]
 0051A3BF    wait
>0051A3C0    jmp         0051A3D5
 0051A3C2    fld         dword ptr [ebp-28]
 0051A3C5    fchs
 0051A3C7    fmul        dword ptr [ebp-1C]
 0051A3CA    fstp        dword ptr [ebp-8]
 0051A3CD    wait
>0051A3CE    jmp         0051A3D5
 0051A3D0    xor         eax,eax
 0051A3D2    mov         dword ptr [ebp-8],eax
 0051A3D5    fld         dword ptr [ebp-8]
 0051A3D8    mov         esp,ebp
 0051A3DA    pop         ebp
 0051A3DB    ret         4
end;*}

//0051A3F4
procedure sub_0051A3F4;
begin
{*
 0051A3F4    push        ebp
 0051A3F5    mov         ebp,esp
 0051A3F7    add         esp,0FFFFFFF8
 0051A3FA    mov         dword ptr [ebp-4],eax
 0051A3FD    mov         dword ptr [ebp-8],40000000
 0051A404    fld         dword ptr [ebp-8]
 0051A407    pop         ecx
 0051A408    pop         ecx
 0051A409    pop         ebp
 0051A40A    ret
*}
end;

//0051A40C
{*function sub_0051A40C:?;
begin
 0051A40C    push        ebp
 0051A40D    mov         ebp,esp
 0051A40F    add         esp,0FFFFFFF8
 0051A412    mov         dword ptr [ebp-4],eax
 0051A415    mov         byte ptr [ebp-5],1
 0051A419    mov         al,byte ptr [ebp-5]
 0051A41C    pop         ecx
 0051A41D    pop         ecx
 0051A41E    pop         ebp
 0051A41F    ret
end;*}

//0051A420
{*procedure THermiteKernel.SetBias(Value:Single; ?:?);
begin
 0051A420    push        ebp
 0051A421    mov         ebp,esp
 0051A423    push        ecx
 0051A424    mov         dword ptr [ebp-4],eax
 0051A427    mov         eax,dword ptr [ebp-4]
 0051A42A    fld         dword ptr [eax+8];THermiteKernel.Bias:Single
 0051A42D    fcomp       dword ptr [ebp+8]
 0051A430    fnstsw      al
 0051A432    sahf
>0051A433    je          0051A446
 0051A435    mov         eax,dword ptr [ebp+8]
 0051A438    mov         edx,dword ptr [ebp-4]
 0051A43B    mov         dword ptr [edx+8],eax;THermiteKernel.Bias:Single
 0051A43E    mov         eax,dword ptr [ebp-4]
 0051A441    call        00519884
 0051A446    pop         ecx
 0051A447    pop         ebp
 0051A448    ret         4
end;*}

//0051A44C
{*procedure THermiteKernel.SetTension(Value:Single; ?:?);
begin
 0051A44C    push        ebp
 0051A44D    mov         ebp,esp
 0051A44F    push        ecx
 0051A450    mov         dword ptr [ebp-4],eax
 0051A453    mov         eax,dword ptr [ebp-4]
 0051A456    fld         dword ptr [eax+0C];THermiteKernel.Tension:Single
 0051A459    fcomp       dword ptr [ebp+8]
 0051A45C    fnstsw      al
 0051A45E    sahf
>0051A45F    je          0051A472
 0051A461    mov         eax,dword ptr [ebp+8]
 0051A464    mov         edx,dword ptr [ebp-4]
 0051A467    mov         dword ptr [edx+0C],eax;THermiteKernel.Tension:Single
 0051A46A    mov         eax,dword ptr [ebp-4]
 0051A46D    call        00519884
 0051A472    pop         ecx
 0051A473    pop         ebp
 0051A474    ret         4
end;*}

//0051A478
{*procedure sub_0051A478(?:?);
begin
 0051A478    push        ebp
 0051A479    mov         ebp,esp
 0051A47B    add         esp,0FFFFFFF8
 0051A47E    mov         dword ptr [ebp-8],edx
 0051A481    mov         dword ptr [ebp-4],eax
 0051A484    mov         eax,dword ptr [ebp-8]
 0051A487    mov         edx,dword ptr ds:[516530];TBitmap32Resampler
 0051A48D    call        @IsClass
 0051A492    test        al,al
>0051A494    je          0051A4A9
 0051A496    mov         ecx,dword ptr ds:[51A4B8];0x3FEFE gvar_0051A4B8
 0051A49C    mov         edx,dword ptr [ebp-8]
 0051A49F    mov         eax,dword ptr [ebp-4]
 0051A4A2    call        00514CE4
>0051A4A7    jmp         0051A4B4
 0051A4A9    mov         edx,dword ptr [ebp-8]
 0051A4AC    mov         eax,dword ptr [ebp-4]
 0051A4AF    call        00420BD8
 0051A4B4    pop         ecx
 0051A4B5    pop         ecx
 0051A4B6    pop         ebp
 0051A4B7    ret
end;*}

//0051A4BC
procedure sub_0051A4BC;
begin
{*
 0051A4BC    push        ebp
 0051A4BD    mov         ebp,esp
 0051A4BF    push        ecx
 0051A4C0    mov         dword ptr [ebp-4],eax
 0051A4C3    mov         eax,dword ptr [ebp-4]
 0051A4C6    cmp         dword ptr [eax+10],0;TBitmap32Resampler.?f10:dword
>0051A4CA    je          0051A4D7
 0051A4CC    mov         eax,dword ptr [ebp-4]
 0051A4CF    mov         eax,dword ptr [eax+10];TBitmap32Resampler.?f10:dword
 0051A4D2    mov         edx,dword ptr [eax]
 0051A4D4    call        dword ptr [edx+0C]
 0051A4D7    pop         ecx
 0051A4D8    pop         ebp
 0051A4D9    ret
*}
end;

//0051A4DC
constructor sub_0051A4DC;
begin
{*
 0051A4DC    push        ebp
 0051A4DD    mov         ebp,esp
 0051A4DF    add         esp,0FFFFFFF8
 0051A4E2    test        dl,dl
>0051A4E4    je          0051A4EE
 0051A4E6    add         esp,0FFFFFFF0
 0051A4E9    call        @ClassCreate
 0051A4EE    mov         byte ptr [ebp-5],dl
 0051A4F1    mov         dword ptr [ebp-4],eax
 0051A4F4    xor         edx,edx
 0051A4F6    mov         eax,dword ptr [ebp-4]
 0051A4F9    call        TObject.Create
 0051A4FE    mov         eax,dword ptr [ebp-4]
 0051A501    mov         edx,dword ptr ds:[516B64];TTransformer
 0051A507    mov         dword ptr [eax+24],edx;TBitmap32Resampler.?f24:TTransformer
 0051A50A    mov         eax,dword ptr [ebp-4]
 0051A50D    mov         byte ptr [eax+28],1;TBitmap32Resampler.PixelAccessMode:TPixelAccessMode
 0051A511    mov         eax,dword ptr [ebp-4]
 0051A514    cmp         byte ptr [ebp-5],0
>0051A518    je          0051A529
 0051A51A    call        @AfterConstruction
 0051A51F    pop         dword ptr fs:[0]
 0051A526    add         esp,0C
 0051A529    mov         eax,dword ptr [ebp-4]
 0051A52C    pop         ecx
 0051A52D    pop         ecx
 0051A52E    pop         ebp
 0051A52F    ret
*}
end;

//0051A530
constructor TNearestResampler.Create;
begin
{*
 0051A530    push        ebp
 0051A531    mov         ebp,esp
 0051A533    add         esp,0FFFFFFF4
 0051A536    test        dl,dl
>0051A538    je          0051A542
 0051A53A    add         esp,0FFFFFFF0
 0051A53D    call        @ClassCreate
 0051A542    mov         dword ptr [ebp-0C],ecx
 0051A545    mov         byte ptr [ebp-5],dl
 0051A548    mov         dword ptr [ebp-4],eax
 0051A54B    xor         edx,edx
 0051A54D    mov         eax,dword ptr [ebp-4]
 0051A550    mov         ecx,dword ptr [eax]
 0051A552    call        dword ptr [ecx+3C];TBitmap32Resampler.sub_0051A4DC
 0051A555    mov         eax,dword ptr [ebp-4]
 0051A558    mov         edx,dword ptr [ebp-0C]
 0051A55B    mov         dword ptr [eax+10],edx;TBitmap32Resampler.?f10:dword
 0051A55E    cmp         dword ptr [ebp-0C],0
>0051A562    je          0051A56F
 0051A564    mov         edx,dword ptr [ebp-4]
 0051A567    mov         eax,dword ptr [ebp-0C]
 0051A56A    call        TBitmap32.SetResampler
 0051A56F    mov         eax,dword ptr [ebp-4]
 0051A572    cmp         byte ptr [ebp-5],0
>0051A576    je          0051A587
 0051A578    call        @AfterConstruction
 0051A57D    pop         dword ptr fs:[0]
 0051A584    add         esp,0C
 0051A587    mov         eax,dword ptr [ebp-4]
 0051A58A    mov         esp,ebp
 0051A58C    pop         ebp
 0051A58D    ret
*}
end;

//0051A590
{*procedure sub_0051A590(?:?);
begin
 0051A590    push        ebp
 0051A591    mov         ebp,esp
 0051A593    add         esp,0FFFFFFF8
 0051A596    push        esi
 0051A597    push        edi
 0051A598    mov         dword ptr [ebp-8],edx
 0051A59B    mov         dword ptr [ebp-4],eax
 0051A59E    mov         eax,dword ptr [ebp-4]
 0051A5A1    mov         eax,dword ptr [eax+10];TBitmap32Resampler.?f10:dword
 0051A5A4    mov         edx,dword ptr [ebp-8]
 0051A5A7    lea         esi,[eax+48]
 0051A5AA    mov         edi,edx
 0051A5AC    movs        dword ptr [edi],dword ptr [esi]
 0051A5AD    movs        dword ptr [edi],dword ptr [esi]
 0051A5AE    movs        dword ptr [edi],dword ptr [esi]
 0051A5AF    movs        dword ptr [edi],dword ptr [esi]
 0051A5B0    mov         eax,dword ptr [ebp-4]
 0051A5B3    cmp         byte ptr [eax+28],3;TBitmap32Resampler.PixelAccessMode:TPixelAccessMode
>0051A5B7    jne         0051A5CB
 0051A5B9    mov         eax,dword ptr [ebp-8]
 0051A5BC    mov         ecx,1
 0051A5C1    mov         edx,1
 0051A5C6    call        0051E0EC
 0051A5CB    pop         edi
 0051A5CC    pop         esi
 0051A5CD    pop         ecx
 0051A5CE    pop         ecx
 0051A5CF    pop         ebp
 0051A5D0    ret
end;*}

//0051A5D4
{*function sub_0051A5D4:?;
begin
 0051A5D4    push        ebp
 0051A5D5    mov         ebp,esp
 0051A5D7    add         esp,0FFFFFFF8
 0051A5DA    mov         dword ptr [ebp-4],eax
 0051A5DD    mov         byte ptr [ebp-5],1
 0051A5E1    mov         al,byte ptr [ebp-5]
 0051A5E4    pop         ecx
 0051A5E5    pop         ecx
 0051A5E6    pop         ebp
 0051A5E7    ret
end;*}

//0051A5E8
procedure sub_0051A5E8;
begin
{*
 0051A5E8    push        ebp
 0051A5E9    mov         ebp,esp
 0051A5EB    push        ecx
 0051A5EC    push        esi
 0051A5ED    push        edi
 0051A5EE    mov         dword ptr [ebp-4],eax
 0051A5F1    mov         eax,dword ptr [ebp-4]
 0051A5F4    mov         eax,dword ptr [eax+10];TBitmap32Resampler.?f10:dword
 0051A5F7    mov         edx,dword ptr [ebp-4]
 0051A5FA    lea         esi,[eax+48]
 0051A5FD    lea         edi,[edx+14];TBitmap32Resampler.?f14:dword
 0051A600    movs        dword ptr [edi],dword ptr [esi]
 0051A601    movs        dword ptr [edi],dword ptr [esi]
 0051A602    movs        dword ptr [edi],dword ptr [esi]
 0051A603    movs        dword ptr [edi],dword ptr [esi]
 0051A604    pop         edi
 0051A605    pop         esi
 0051A606    pop         ecx
 0051A607    pop         ebp
 0051A608    ret
*}
end;

//0051A60C
procedure TBitmap32Resampler.SetPixelAccessMode(Value:TPixelAccessMode);
begin
{*
 0051A60C    push        ebp
 0051A60D    mov         ebp,esp
 0051A60F    add         esp,0FFFFFFF8
 0051A612    mov         byte ptr [ebp-5],dl
 0051A615    mov         dword ptr [ebp-4],eax
 0051A618    mov         eax,dword ptr [ebp-4]
 0051A61B    mov         al,byte ptr [eax+28];TBitmap32Resampler.PixelAccessMode:TPixelAccessMode
 0051A61E    cmp         al,byte ptr [ebp-5]
>0051A621    je          0051A634
 0051A623    mov         al,byte ptr [ebp-5]
 0051A626    mov         edx,dword ptr [ebp-4]
 0051A629    mov         byte ptr [edx+28],al;TBitmap32Resampler.PixelAccessMode:TPixelAccessMode
 0051A62C    mov         eax,dword ptr [ebp-4]
 0051A62F    mov         edx,dword ptr [eax]
 0051A631    call        dword ptr [edx+0C];TBitmap32Resampler.sub_0051A4BC
 0051A634    pop         ecx
 0051A635    pop         ecx
 0051A636    pop         ebp
 0051A637    ret
*}
end;

//0051A638
constructor sub_0051A638;
begin
{*
 0051A638    push        ebp
 0051A639    mov         ebp,esp
 0051A63B    add         esp,0FFFFFFF8
 0051A63E    test        dl,dl
>0051A640    je          0051A64A
 0051A642    add         esp,0FFFFFFF0
 0051A645    call        @ClassCreate
 0051A64A    mov         byte ptr [ebp-5],dl
 0051A64D    mov         dword ptr [ebp-4],eax
 0051A650    xor         edx,edx
 0051A652    mov         eax,dword ptr [ebp-4]
 0051A655    call        0051A4DC
 0051A65A    mov         dl,1
 0051A65C    mov         eax,[00515A98];TBoxKernel
 0051A661    call        TBoxKernel.Create;TBoxKernel.Create
 0051A666    mov         edx,eax
 0051A668    mov         eax,dword ptr [ebp-4]
 0051A66B    call        TKernelResampler.SetKernel
 0051A670    mov         eax,dword ptr [ebp-4]
 0051A673    mov         dword ptr [eax+3C],20;TKernelResampler.TableSize:Integer
 0051A67A    mov         eax,dword ptr [ebp-4]
 0051A67D    cmp         byte ptr [ebp-5],0
>0051A681    je          0051A692
 0051A683    call        @AfterConstruction
 0051A688    pop         dword ptr fs:[0]
 0051A68F    add         esp,0C
 0051A692    mov         eax,dword ptr [ebp-4]
 0051A695    pop         ecx
 0051A696    pop         ecx
 0051A697    pop         ebp
 0051A698    ret
*}
end;

//0051A69C
destructor TKernelResampler.Destroy;
begin
{*
 0051A69C    push        ebp
 0051A69D    mov         ebp,esp
 0051A69F    add         esp,0FFFFFFF8
 0051A6A2    call        @BeforeDestruction
 0051A6A7    mov         byte ptr [ebp-5],dl
 0051A6AA    mov         dword ptr [ebp-4],eax
 0051A6AD    mov         eax,dword ptr [ebp-4]
 0051A6B0    mov         eax,dword ptr [eax+30]
 0051A6B3    call        TObject.Free
 0051A6B8    mov         dl,byte ptr [ebp-5]
 0051A6BB    and         dl,0FC
 0051A6BE    mov         eax,dword ptr [ebp-4]
 0051A6C1    call        TPersistent.Destroy
 0051A6C6    cmp         byte ptr [ebp-5],0
>0051A6CA    jle         0051A6D4
 0051A6CC    mov         eax,dword ptr [ebp-4]
 0051A6CF    call        @ClassDestroy
 0051A6D4    pop         ecx
 0051A6D5    pop         ecx
 0051A6D6    pop         ebp
 0051A6D7    ret
*}
end;

//0051A6D8
{*procedure TKernelResampler.GetKernelClassName(?:?);
begin
 0051A6D8    push        ebp
 0051A6D9    mov         ebp,esp
 0051A6DB    add         esp,0FFFFFEF8
 0051A6E1    mov         dword ptr [ebp-8],edx
 0051A6E4    mov         dword ptr [ebp-4],eax
 0051A6E7    lea         edx,[ebp-108]
 0051A6ED    mov         eax,dword ptr [ebp-4]
 0051A6F0    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051A6F3    mov         eax,dword ptr [eax]
 0051A6F5    call        TObject.ClassName
 0051A6FA    lea         edx,[ebp-108]
 0051A700    mov         eax,dword ptr [ebp-8]
 0051A703    call        @LStrFromString
 0051A708    mov         esp,ebp
 0051A70A    pop         ebp
 0051A70B    ret
end;*}

//0051A70C
procedure TKernelResampler.SetKernelClassName(Value:String);
begin
{*
 0051A70C    push        ebp
 0051A70D    mov         ebp,esp
 0051A70F    add         esp,0FFFFFEF0
 0051A715    xor         ecx,ecx
 0051A717    mov         dword ptr [ebp-10],ecx
 0051A71A    mov         dword ptr [ebp-8],edx
 0051A71D    mov         dword ptr [ebp-4],eax
 0051A720    mov         eax,dword ptr [ebp-8]
 0051A723    call        @LStrAddRef
 0051A728    xor         eax,eax
 0051A72A    push        ebp
 0051A72B    push        51A7C8
 0051A730    push        dword ptr fs:[eax]
 0051A733    mov         dword ptr fs:[eax],esp
 0051A736    cmp         dword ptr [ebp-8],0
>0051A73A    je          0051A7AA
 0051A73C    lea         edx,[ebp-110]
 0051A742    mov         eax,dword ptr [ebp-4]
 0051A745    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051A748    mov         eax,dword ptr [eax]
 0051A74A    call        TObject.ClassName
 0051A74F    lea         edx,[ebp-110]
 0051A755    lea         eax,[ebp-10]
 0051A758    call        @LStrFromString
 0051A75D    mov         eax,dword ptr [ebp-10]
 0051A760    mov         edx,dword ptr [ebp-8]
 0051A763    call        @LStrCmp
>0051A768    je          0051A7AA
 0051A76A    cmp         dword ptr ds:[597A68],0;gvar_00597A68:TClassList
>0051A771    je          0051A7AA
 0051A773    mov         edx,dword ptr [ebp-8]
 0051A776    mov         eax,[00597A68];0x0 gvar_00597A68:TClassList
 0051A77B    call        005155F8
 0051A780    mov         dword ptr [ebp-0C],eax
 0051A783    cmp         dword ptr [ebp-0C],0
>0051A787    je          0051A7AA
 0051A789    mov         eax,dword ptr [ebp-4]
 0051A78C    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051A78F    call        TObject.Free
 0051A794    mov         dl,1
 0051A796    mov         eax,dword ptr [ebp-0C]
 0051A799    call        dword ptr [eax+10]
 0051A79C    mov         edx,dword ptr [ebp-4]
 0051A79F    mov         dword ptr [edx+30],eax;TKernelResampler.Kernel:TCustomKernel
 0051A7A2    mov         eax,dword ptr [ebp-4]
 0051A7A5    mov         edx,dword ptr [eax]
 0051A7A7    call        dword ptr [edx+0C];TKernelResampler.sub_0051A4BC
 0051A7AA    xor         eax,eax
 0051A7AC    pop         edx
 0051A7AD    pop         ecx
 0051A7AE    pop         ecx
 0051A7AF    mov         dword ptr fs:[eax],edx
 0051A7B2    push        51A7CF
 0051A7B7    lea         eax,[ebp-10]
 0051A7BA    call        @LStrClr
 0051A7BF    lea         eax,[ebp-8]
 0051A7C2    call        @LStrClr
 0051A7C7    ret
>0051A7C8    jmp         @HandleFinally
>0051A7CD    jmp         0051A7B7
 0051A7CF    mov         esp,ebp
 0051A7D1    pop         ebp
 0051A7D2    ret
*}
end;

//0051A7D4
procedure TKernelResampler.SetKernel(Value:TCustomKernel);
begin
{*
 0051A7D4    push        ebp
 0051A7D5    mov         ebp,esp
 0051A7D7    add         esp,0FFFFFFF8
 0051A7DA    mov         dword ptr [ebp-8],edx
 0051A7DD    mov         dword ptr [ebp-4],eax
 0051A7E0    cmp         dword ptr [ebp-8],0
>0051A7E4    je          0051A80D
 0051A7E6    mov         eax,dword ptr [ebp-4]
 0051A7E9    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051A7EC    cmp         eax,dword ptr [ebp-8]
>0051A7EF    je          0051A80D
 0051A7F1    mov         eax,dword ptr [ebp-4]
 0051A7F4    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051A7F7    call        TObject.Free
 0051A7FC    mov         eax,dword ptr [ebp-8]
 0051A7FF    mov         edx,dword ptr [ebp-4]
 0051A802    mov         dword ptr [edx+30],eax;TKernelResampler.Kernel:TCustomKernel
 0051A805    mov         eax,dword ptr [ebp-4]
 0051A808    mov         edx,dword ptr [eax]
 0051A80A    call        dword ptr [edx+0C];TKernelResampler.sub_0051A4BC
 0051A80D    pop         ecx
 0051A80E    pop         ecx
 0051A80F    pop         ebp
 0051A810    ret
*}
end;

//0051A814
{*procedure sub_0051A814(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0051A814    push        ebp
 0051A815    mov         ebp,esp
 0051A817    add         esp,0FFFFFFC8
 0051A81A    push        esi
 0051A81B    push        edi
 0051A81C    mov         esi,dword ptr [ebp+14]
 0051A81F    lea         edi,[ebp-38]
 0051A822    movs        dword ptr [edi],dword ptr [esi]
 0051A823    movs        dword ptr [edi],dword ptr [esi]
 0051A824    movs        dword ptr [edi],dword ptr [esi]
 0051A825    movs        dword ptr [edi],dword ptr [esi]
 0051A826    mov         esi,dword ptr [ebp+1C]
 0051A829    lea         edi,[ebp-28]
 0051A82C    movs        dword ptr [edi],dword ptr [esi]
 0051A82D    movs        dword ptr [edi],dword ptr [esi]
 0051A82E    movs        dword ptr [edi],dword ptr [esi]
 0051A82F    movs        dword ptr [edi],dword ptr [esi]
 0051A830    mov         esi,ecx
 0051A832    lea         edi,[ebp-18]
 0051A835    movs        dword ptr [edi],dword ptr [esi]
 0051A836    movs        dword ptr [edi],dword ptr [esi]
 0051A837    movs        dword ptr [edi],dword ptr [esi]
 0051A838    movs        dword ptr [edi],dword ptr [esi]
 0051A839    mov         dword ptr [ebp-8],edx
 0051A83C    mov         dword ptr [ebp-4],eax
 0051A83F    mov         eax,dword ptr [ebp+18]
 0051A842    push        eax
 0051A843    lea         eax,[ebp-38]
 0051A846    push        eax
 0051A847    mov         eax,dword ptr [ebp-4]
 0051A84A    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051A84D    push        eax
 0051A84E    mov         al,byte ptr [ebp+10]
 0051A851    push        eax
 0051A852    push        dword ptr [ebp+0C]
 0051A855    push        dword ptr [ebp+8]
 0051A858    lea         ecx,[ebp-28]
 0051A85B    lea         edx,[ebp-18]
 0051A85E    mov         eax,dword ptr [ebp-8]
 0051A861    call        005187D4
 0051A866    pop         edi
 0051A867    pop         esi
 0051A868    mov         esp,ebp
 0051A86A    pop         ebp
 0051A86B    ret         18
end;*}

//0051A870
{*function sub_0051A870(?:?; ?:?):?;
begin
 0051A870    push        ebp
 0051A871    mov         ebp,esp
 0051A873    add         esp,0FFFFFEF0
 0051A879    push        esi
 0051A87A    push        edi
 0051A87B    mov         dword ptr [ebp-1C],eax
 0051A87E    mov         eax,dword ptr [ebp-1C]
 0051A881    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051A884    mov         edx,dword ptr [eax]
 0051A886    call        dword ptr [edx+18];@AbstractError
 0051A889    add         esp,0FFFFFFF4
 0051A88C    fstp        tbyte ptr [esp]
 0051A88F    wait
 0051A890    call        0043723C
 0051A895    mov         dword ptr [ebp-2C],eax
 0051A898    fld         dword ptr [ebp+0C]
 0051A89B    add         esp,0FFFFFFF4
 0051A89E    fstp        tbyte ptr [esp]
 0051A8A1    wait
 0051A8A2    call        0043723C
 0051A8A7    mov         dword ptr [ebp-20],eax
 0051A8AA    fld         dword ptr [ebp+8]
 0051A8AD    add         esp,0FFFFFFF4
 0051A8B0    fstp        tbyte ptr [esp]
 0051A8B3    wait
 0051A8B4    call        0043723C
 0051A8B9    mov         dword ptr [ebp-24],eax
 0051A8BC    mov         eax,dword ptr [ebp-1C]
 0051A8BF    mov         al,byte ptr [eax+28];TKernelResampler.PixelAccessMode:TPixelAccessMode
 0051A8C2    sub         al,1
>0051A8C4    jb          0051A8D5
>0051A8C6    je          0051A8F6
 0051A8C8    dec         al
>0051A8CA    je          0051A8D5
 0051A8CC    dec         al
>0051A8CE    je          0051A8F6
>0051A8D0    jmp         0051A9FD
 0051A8D5    mov         eax,dword ptr [ebp-2C]
 0051A8D8    neg         eax
 0051A8DA    mov         dword ptr [ebp-4C],eax
 0051A8DD    mov         eax,dword ptr [ebp-2C]
 0051A8E0    mov         dword ptr [ebp-50],eax
 0051A8E3    mov         eax,dword ptr [ebp-2C]
 0051A8E6    neg         eax
 0051A8E8    mov         dword ptr [ebp-54],eax
 0051A8EB    mov         eax,dword ptr [ebp-2C]
 0051A8EE    mov         dword ptr [ebp-58],eax
>0051A8F1    jmp         0051A9FD
 0051A8F6    mov         eax,dword ptr [ebp-1C]
 0051A8F9    add         eax,14;TKernelResampler.?f14:dword
 0051A8FC    mov         dword ptr [ebp-74],eax
 0051A8FF    mov         eax,dword ptr [ebp-74]
 0051A902    mov         eax,dword ptr [eax]
 0051A904    cmp         eax,dword ptr [ebp-20]
>0051A907    jg          0051A9DC
 0051A90D    mov         eax,dword ptr [ebp-74]
 0051A910    mov         eax,dword ptr [eax+8]
 0051A913    cmp         eax,dword ptr [ebp-20]
>0051A916    jl          0051A9DC
 0051A91C    mov         eax,dword ptr [ebp-74]
 0051A91F    mov         eax,dword ptr [eax+4]
 0051A922    cmp         eax,dword ptr [ebp-24]
>0051A925    jg          0051A9DC
 0051A92B    mov         eax,dword ptr [ebp-74]
 0051A92E    mov         eax,dword ptr [eax+0C]
 0051A931    cmp         eax,dword ptr [ebp-24]
>0051A934    jl          0051A9DC
 0051A93A    mov         byte ptr [ebp-6D],0
 0051A93E    mov         eax,dword ptr [ebp-20]
 0051A941    sub         eax,dword ptr [ebp-2C]
 0051A944    mov         edx,dword ptr [ebp-74]
 0051A947    cmp         eax,dword ptr [edx]
>0051A949    jge         0051A95C
 0051A94B    mov         eax,dword ptr [ebp-74]
 0051A94E    mov         eax,dword ptr [eax]
 0051A950    sub         eax,dword ptr [ebp-20]
 0051A953    mov         dword ptr [ebp-4C],eax
 0051A956    mov         byte ptr [ebp-6D],1
>0051A95A    jmp         0051A964
 0051A95C    mov         eax,dword ptr [ebp-2C]
 0051A95F    neg         eax
 0051A961    mov         dword ptr [ebp-4C],eax
 0051A964    mov         eax,dword ptr [ebp-20]
 0051A967    add         eax,dword ptr [ebp-2C]
 0051A96A    mov         edx,dword ptr [ebp-74]
 0051A96D    cmp         eax,dword ptr [edx+8]
>0051A970    jl          0051A985
 0051A972    mov         eax,dword ptr [ebp-74]
 0051A975    mov         eax,dword ptr [eax+8]
 0051A978    sub         eax,dword ptr [ebp-20]
 0051A97B    dec         eax
 0051A97C    mov         dword ptr [ebp-50],eax
 0051A97F    mov         byte ptr [ebp-6D],1
>0051A983    jmp         0051A98B
 0051A985    mov         eax,dword ptr [ebp-2C]
 0051A988    mov         dword ptr [ebp-50],eax
 0051A98B    mov         eax,dword ptr [ebp-24]
 0051A98E    sub         eax,dword ptr [ebp-2C]
 0051A991    mov         edx,dword ptr [ebp-74]
 0051A994    cmp         eax,dword ptr [edx+4]
>0051A997    jge         0051A9AB
 0051A999    mov         eax,dword ptr [ebp-74]
 0051A99C    mov         eax,dword ptr [eax+4]
 0051A99F    sub         eax,dword ptr [ebp-24]
 0051A9A2    mov         dword ptr [ebp-54],eax
 0051A9A5    mov         byte ptr [ebp-6D],1
>0051A9A9    jmp         0051A9B3
 0051A9AB    mov         eax,dword ptr [ebp-2C]
 0051A9AE    neg         eax
 0051A9B0    mov         dword ptr [ebp-54],eax
 0051A9B3    mov         eax,dword ptr [ebp-24]
 0051A9B6    add         eax,dword ptr [ebp-2C]
 0051A9B9    mov         edx,dword ptr [ebp-74]
 0051A9BC    cmp         eax,dword ptr [edx+0C]
>0051A9BF    jl          0051A9D4
 0051A9C1    mov         eax,dword ptr [ebp-74]
 0051A9C4    mov         eax,dword ptr [eax+0C]
 0051A9C7    sub         eax,dword ptr [ebp-24]
 0051A9CA    dec         eax
 0051A9CB    mov         dword ptr [ebp-58],eax
 0051A9CE    mov         byte ptr [ebp-6D],1
>0051A9D2    jmp         0051A9FD
 0051A9D4    mov         eax,dword ptr [ebp-2C]
 0051A9D7    mov         dword ptr [ebp-58],eax
>0051A9DA    jmp         0051A9FD
 0051A9DC    mov         eax,dword ptr [ebp-1C]
 0051A9DF    cmp         byte ptr [eax+28],3;TKernelResampler.PixelAccessMode:TPixelAccessMode
>0051A9E3    jne         0051A9EF
 0051A9E5    xor         eax,eax
 0051A9E7    mov         dword ptr [ebp-18],eax
>0051A9EA    jmp         0051B2AC
 0051A9EF    mov         eax,dword ptr [ebp-1C]
 0051A9F2    mov         eax,dword ptr [eax+40];TKernelResampler.?f40:dword
 0051A9F5    mov         dword ptr [ebp-18],eax
>0051A9F8    jmp         0051B2AC
 0051A9FD    mov         eax,dword ptr [ebp-1C]
 0051AA00    mov         al,byte ptr [eax+34];TKernelResampler.KernelMode:TKernelMode
 0051AA03    sub         al,1
>0051AA05    jb          0051AA1A
>0051AA07    je          0051AB14
 0051AA0D    dec         al
>0051AA0F    je          0051AB74
>0051AA15    jmp         0051ACFB
 0051AA1A    mov         eax,dword ptr [ebp-1C]
 0051AA1D    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051AA20    mov         dword ptr [ebp-0C],eax
 0051AA23    mov         eax,dword ptr [eax]
 0051AA25    mov         eax,dword ptr [eax+14]
 0051AA28    mov         dword ptr [ebp-10],eax
 0051AA2B    fild        dword ptr [ebp-20]
 0051AA2E    fsub        dword ptr [ebp+0C]
 0051AA31    fstp        dword ptr [ebp-4]
 0051AA34    wait
 0051AA35    fild        dword ptr [ebp-24]
 0051AA38    fsub        dword ptr [ebp+8]
 0051AA3B    fstp        dword ptr [ebp-8]
 0051AA3E    wait
 0051AA3F    lea         eax,[ebp-0A4]
 0051AA45    mov         dword ptr [ebp-60],eax
 0051AA48    lea         eax,[ebp-0C8]
 0051AA4E    mov         dword ptr [ebp-64],eax
 0051AA51    mov         dword ptr [ebp-48],0FFFFFF00
 0051AA58    mov         eax,dword ptr [ebp-2C]
 0051AA5B    neg         eax
 0051AA5D    mov         edx,dword ptr [ebp-2C]
 0051AA60    sub         edx,eax
>0051AA62    jl          0051AAA7
 0051AA64    inc         edx
 0051AA65    mov         dword ptr [ebp-78],edx
 0051AA68    mov         dword ptr [ebp-38],eax
 0051AA6B    fild        dword ptr [ebp-38]
 0051AA6E    fadd        dword ptr [ebp-4]
 0051AA71    add         esp,0FFFFFFFC
 0051AA74    fstp        dword ptr [esp]
 0051AA77    wait
 0051AA78    mov         eax,dword ptr [ebp-0C]
 0051AA7B    call        dword ptr [ebp-10]
 0051AA7E    fmul        dword ptr ds:[51B2B8];256:Single
 0051AA84    call        @ROUND
 0051AA89    mov         dword ptr [ebp-30],eax
 0051AA8C    mov         eax,dword ptr [ebp-38]
 0051AA8F    mov         edx,dword ptr [ebp-30]
 0051AA92    mov         dword ptr [ebp+eax*4-94],edx
 0051AA99    mov         eax,dword ptr [ebp-30]
 0051AA9C    add         dword ptr [ebp-48],eax
 0051AA9F    inc         dword ptr [ebp-38]
 0051AAA2    dec         dword ptr [ebp-78]
>0051AAA5    jne         0051AA6B
 0051AAA7    mov         eax,dword ptr [ebp-48]
 0051AAAA    sub         dword ptr [ebp-94],eax
 0051AAB0    mov         dword ptr [ebp-48],0FFFFFF00
 0051AAB7    mov         eax,dword ptr [ebp-2C]
 0051AABA    neg         eax
 0051AABC    mov         edx,dword ptr [ebp-2C]
 0051AABF    sub         edx,eax
>0051AAC1    jl          0051AB06
 0051AAC3    inc         edx
 0051AAC4    mov         dword ptr [ebp-78],edx
 0051AAC7    mov         dword ptr [ebp-38],eax
 0051AACA    fild        dword ptr [ebp-38]
 0051AACD    fadd        dword ptr [ebp-8]
 0051AAD0    add         esp,0FFFFFFFC
 0051AAD3    fstp        dword ptr [esp]
 0051AAD6    wait
 0051AAD7    mov         eax,dword ptr [ebp-0C]
 0051AADA    call        dword ptr [ebp-10]
 0051AADD    fmul        dword ptr ds:[51B2B8];256:Single
 0051AAE3    call        @ROUND
 0051AAE8    mov         dword ptr [ebp-30],eax
 0051AAEB    mov         eax,dword ptr [ebp-38]
 0051AAEE    mov         edx,dword ptr [ebp-30]
 0051AAF1    mov         dword ptr [ebp+eax*4-0B8],edx
 0051AAF8    mov         eax,dword ptr [ebp-30]
 0051AAFB    add         dword ptr [ebp-48],eax
 0051AAFE    inc         dword ptr [ebp-38]
 0051AB01    dec         dword ptr [ebp-78]
>0051AB04    jne         0051AACA
 0051AB06    mov         eax,dword ptr [ebp-48]
 0051AB09    sub         dword ptr [ebp-0B8],eax
>0051AB0F    jmp         0051ACFB
 0051AB14    mov         eax,dword ptr [ebp-1C]
 0051AB17    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051AB1A    mov         eax,dword ptr [eax+30]
 0051AB1D    sub         eax,2
 0051AB20    mov         dword ptr [ebp-30],eax
 0051AB23    fild        dword ptr [ebp-20]
 0051AB26    fsub        dword ptr [ebp+0C]
 0051AB29    fild        dword ptr [ebp-30]
 0051AB2C    fmulp       st(1),st
 0051AB2E    call        @ROUND
 0051AB33    mov         ecx,eax
 0051AB35    mov         edx,dword ptr [ebp-2C]
 0051AB38    sub         edx,4
 0051AB3B    mov         eax,dword ptr [ebp-1C]
 0051AB3E    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051AB41    call        00515864
 0051AB46    mov         dword ptr [ebp-60],eax
 0051AB49    fild        dword ptr [ebp-24]
 0051AB4C    fsub        dword ptr [ebp+8]
 0051AB4F    fild        dword ptr [ebp-30]
 0051AB52    fmulp       st(1),st
 0051AB54    call        @ROUND
 0051AB59    mov         ecx,eax
 0051AB5B    mov         edx,dword ptr [ebp-2C]
 0051AB5E    sub         edx,4
 0051AB61    mov         eax,dword ptr [ebp-1C]
 0051AB64    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051AB67    call        00515864
 0051AB6C    mov         dword ptr [ebp-64],eax
>0051AB6F    jmp         0051ACFB
 0051AB74    mov         eax,dword ptr [ebp-1C]
 0051AB77    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051AB7A    mov         eax,dword ptr [eax+30]
 0051AB7D    sub         eax,2
 0051AB80    shl         eax,10
 0051AB83    mov         dword ptr [ebp-30],eax
 0051AB86    mov         eax,dword ptr [ebp-1C]
 0051AB89    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051AB8C    mov         eax,dword ptr [eax+34]
 0051AB8F    shl         eax,2
 0051AB92    mov         dword ptr [ebp-3C],eax
 0051AB95    fild        dword ptr [ebp-20]
 0051AB98    fsub        dword ptr [ebp+0C]
 0051AB9B    fild        dword ptr [ebp-30]
 0051AB9E    fmulp       st(1),st
 0051ABA0    call        @ROUND
 0051ABA5    mov         dword ptr [ebp-4],eax
 0051ABA8    lea         eax,[ebp-0A4]
 0051ABAE    mov         dword ptr [ebp-60],eax
 0051ABB1    movsx       ecx,word ptr [ebp-2]
 0051ABB5    mov         edx,dword ptr [ebp-2C]
 0051ABB8    sub         edx,4
 0051ABBB    mov         eax,dword ptr [ebp-1C]
 0051ABBE    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051ABC1    call        00515864
 0051ABC6    mov         dword ptr [ebp-68],eax
 0051ABC9    mov         eax,dword ptr [ebp-68]
 0051ABCC    add         eax,dword ptr [ebp-3C]
 0051ABCF    mov         dword ptr [ebp-6C],eax
 0051ABD2    mov         dword ptr [ebp-48],0FFFFFF00
 0051ABD9    mov         eax,dword ptr [ebp-2C]
 0051ABDC    neg         eax
 0051ABDE    mov         edx,dword ptr [ebp-2C]
 0051ABE1    sub         edx,eax
>0051ABE3    jl          0051AC3F
 0051ABE5    inc         edx
 0051ABE6    mov         dword ptr [ebp-78],edx
 0051ABE9    mov         dword ptr [ebp-38],eax
 0051ABEC    mov         eax,dword ptr [ebp-6C]
 0051ABEF    mov         edx,dword ptr [ebp-38]
 0051ABF2    mov         eax,dword ptr [eax+edx*4+10]
 0051ABF6    mov         edx,dword ptr [ebp-68]
 0051ABF9    mov         ecx,dword ptr [ebp-38]
 0051ABFC    sub         eax,dword ptr [edx+ecx*4+10]
 0051AC00    movzx       edx,word ptr [ebp-4]
 0051AC04    imul        edx
 0051AC06    add         eax,7FFF
 0051AC0B    test        eax,eax
>0051AC0D    jns         0051AC14
 0051AC0F    add         eax,0FFFF
 0051AC14    sar         eax,10
 0051AC17    mov         edx,dword ptr [ebp-68]
 0051AC1A    mov         ecx,dword ptr [ebp-38]
 0051AC1D    add         eax,dword ptr [edx+ecx*4+10]
 0051AC21    mov         dword ptr [ebp-34],eax
 0051AC24    mov         eax,dword ptr [ebp-38]
 0051AC27    mov         edx,dword ptr [ebp-34]
 0051AC2A    mov         dword ptr [ebp+eax*4-94],edx
 0051AC31    mov         eax,dword ptr [ebp-34]
 0051AC34    add         dword ptr [ebp-48],eax
 0051AC37    inc         dword ptr [ebp-38]
 0051AC3A    dec         dword ptr [ebp-78]
>0051AC3D    jne         0051ABEC
 0051AC3F    mov         eax,dword ptr [ebp-48]
 0051AC42    sub         dword ptr [ebp-94],eax
 0051AC48    fild        dword ptr [ebp-24]
 0051AC4B    fsub        dword ptr [ebp+8]
 0051AC4E    fild        dword ptr [ebp-30]
 0051AC51    fmulp       st(1),st
 0051AC53    call        @ROUND
 0051AC58    mov         dword ptr [ebp-8],eax
 0051AC5B    lea         eax,[ebp-0C8]
 0051AC61    mov         dword ptr [ebp-64],eax
 0051AC64    movsx       ecx,word ptr [ebp-6]
 0051AC68    mov         edx,dword ptr [ebp-2C]
 0051AC6B    sub         edx,4
 0051AC6E    mov         eax,dword ptr [ebp-1C]
 0051AC71    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051AC74    call        00515864
 0051AC79    mov         dword ptr [ebp-68],eax
 0051AC7C    mov         eax,dword ptr [ebp-68]
 0051AC7F    add         eax,dword ptr [ebp-3C]
 0051AC82    mov         dword ptr [ebp-6C],eax
 0051AC85    mov         dword ptr [ebp-48],0FFFFFF00
 0051AC8C    mov         eax,dword ptr [ebp-2C]
 0051AC8F    neg         eax
 0051AC91    mov         edx,dword ptr [ebp-2C]
 0051AC94    sub         edx,eax
>0051AC96    jl          0051ACF2
 0051AC98    inc         edx
 0051AC99    mov         dword ptr [ebp-78],edx
 0051AC9C    mov         dword ptr [ebp-38],eax
 0051AC9F    mov         eax,dword ptr [ebp-6C]
 0051ACA2    mov         edx,dword ptr [ebp-38]
 0051ACA5    mov         eax,dword ptr [eax+edx*4+10]
 0051ACA9    mov         edx,dword ptr [ebp-68]
 0051ACAC    mov         ecx,dword ptr [ebp-38]
 0051ACAF    sub         eax,dword ptr [edx+ecx*4+10]
 0051ACB3    movzx       edx,word ptr [ebp-8]
 0051ACB7    imul        edx
 0051ACB9    add         eax,7FFF
 0051ACBE    test        eax,eax
>0051ACC0    jns         0051ACC7
 0051ACC2    add         eax,0FFFF
 0051ACC7    sar         eax,10
 0051ACCA    mov         edx,dword ptr [ebp-68]
 0051ACCD    mov         ecx,dword ptr [ebp-38]
 0051ACD0    add         eax,dword ptr [edx+ecx*4+10]
 0051ACD4    mov         dword ptr [ebp-34],eax
 0051ACD7    mov         eax,dword ptr [ebp-38]
 0051ACDA    mov         edx,dword ptr [ebp-34]
 0051ACDD    mov         dword ptr [ebp+eax*4-0B8],edx
 0051ACE4    mov         eax,dword ptr [ebp-34]
 0051ACE7    add         dword ptr [ebp-48],eax
 0051ACEA    inc         dword ptr [ebp-38]
 0051ACED    dec         dword ptr [ebp-78]
>0051ACF0    jne         0051AC9F
 0051ACF2    mov         eax,dword ptr [ebp-48]
 0051ACF5    sub         dword ptr [ebp-0B8],eax
 0051ACFB    mov         esi,56D488
 0051AD00    lea         edi,[ebp-0E8]
 0051AD06    movs        dword ptr [edi],dword ptr [esi]
 0051AD07    movs        dword ptr [edi],dword ptr [esi]
 0051AD08    movs        dword ptr [edi],dword ptr [esi]
 0051AD09    movs        dword ptr [edi],dword ptr [esi]
 0051AD0A    mov         eax,dword ptr [ebp-1C]
 0051AD0D    mov         al,byte ptr [eax+28];TKernelResampler.PixelAccessMode:TPixelAccessMode
 0051AD10    sub         al,2
>0051AD12    jb          0051AD22
>0051AD14    je          0051B0C8
 0051AD1A    dec         al
>0051AD1C    jne         0051B23B
 0051AD22    mov         ecx,dword ptr [ebp-54]
 0051AD25    add         ecx,dword ptr [ebp-24]
 0051AD28    mov         edx,dword ptr [ebp-4C]
 0051AD2B    add         edx,dword ptr [ebp-20]
 0051AD2E    mov         eax,dword ptr [ebp-1C]
 0051AD31    mov         eax,dword ptr [eax+10];TKernelResampler.?f10:dword
 0051AD34    call        0051F574
 0051AD39    mov         dword ptr [ebp-14],eax
 0051AD3C    mov         eax,dword ptr [ebp-1C]
 0051AD3F    mov         eax,dword ptr [eax+10];TKernelResampler.?f10:dword
 0051AD42    mov         eax,dword ptr [eax+34]
 0051AD45    mov         edx,dword ptr [ebp-50]
 0051AD48    sub         edx,dword ptr [ebp-4C]
 0051AD4B    sub         eax,edx
 0051AD4D    dec         eax
 0051AD4E    mov         dword ptr [ebp-44],eax
 0051AD51    mov         eax,dword ptr [ebp-54]
 0051AD54    mov         edx,dword ptr [ebp-58]
 0051AD57    sub         edx,eax
>0051AD59    jl          0051AE55
 0051AD5F    inc         edx
 0051AD60    mov         dword ptr [ebp-78],edx
 0051AD63    mov         dword ptr [ebp-38],eax
 0051AD66    mov         eax,dword ptr [ebp-64]
 0051AD69    mov         edx,dword ptr [ebp-38]
 0051AD6C    mov         eax,dword ptr [eax+edx*4+10]
 0051AD70    mov         dword ptr [ebp-34],eax
 0051AD73    cmp         dword ptr [ebp-34],0
>0051AD77    je          0051AE33
 0051AD7D    mov         esi,56D488
 0051AD82    lea         edi,[ebp-0D8]
 0051AD88    movs        dword ptr [edi],dword ptr [esi]
 0051AD89    movs        dword ptr [edi],dword ptr [esi]
 0051AD8A    movs        dword ptr [edi],dword ptr [esi]
 0051AD8B    movs        dword ptr [edi],dword ptr [esi]
 0051AD8C    mov         eax,dword ptr [ebp-4C]
 0051AD8F    mov         edx,dword ptr [ebp-50]
 0051AD92    sub         edx,eax
>0051AD94    jl          0051ADF5
 0051AD96    inc         edx
 0051AD97    mov         dword ptr [ebp-7C],edx
 0051AD9A    mov         dword ptr [ebp-3C],eax
 0051AD9D    mov         eax,dword ptr [ebp-60]
 0051ADA0    mov         edx,dword ptr [ebp-3C]
 0051ADA3    mov         eax,dword ptr [eax+edx*4+10]
 0051ADA7    mov         dword ptr [ebp-30],eax
 0051ADAA    mov         eax,dword ptr [ebp-14]
 0051ADAD    movzx       eax,byte ptr [eax+3]
 0051ADB1    imul        dword ptr [ebp-30]
 0051ADB4    add         dword ptr [ebp-0CC],eax
 0051ADBA    mov         eax,dword ptr [ebp-14]
 0051ADBD    movzx       eax,byte ptr [eax+2]
 0051ADC1    imul        dword ptr [ebp-30]
 0051ADC4    add         dword ptr [ebp-0D0],eax
 0051ADCA    mov         eax,dword ptr [ebp-14]
 0051ADCD    movzx       eax,byte ptr [eax+1]
 0051ADD1    imul        dword ptr [ebp-30]
 0051ADD4    add         dword ptr [ebp-0D4],eax
 0051ADDA    mov         eax,dword ptr [ebp-14]
 0051ADDD    movzx       eax,byte ptr [eax]
 0051ADE0    imul        dword ptr [ebp-30]
 0051ADE3    add         dword ptr [ebp-0D8],eax
 0051ADE9    add         dword ptr [ebp-14],4
 0051ADED    inc         dword ptr [ebp-3C]
 0051ADF0    dec         dword ptr [ebp-7C]
>0051ADF3    jne         0051AD9D
 0051ADF5    mov         eax,dword ptr [ebp-0CC]
 0051ADFB    imul        dword ptr [ebp-34]
 0051ADFE    add         dword ptr [ebp-0DC],eax
 0051AE04    mov         eax,dword ptr [ebp-0D0]
 0051AE0A    imul        dword ptr [ebp-34]
 0051AE0D    add         dword ptr [ebp-0E0],eax
 0051AE13    mov         eax,dword ptr [ebp-0D4]
 0051AE19    imul        dword ptr [ebp-34]
 0051AE1C    add         dword ptr [ebp-0E4],eax
 0051AE22    mov         eax,dword ptr [ebp-0D8]
 0051AE28    imul        dword ptr [ebp-34]
 0051AE2B    add         dword ptr [ebp-0E8],eax
>0051AE31    jmp         0051AE40
 0051AE33    mov         eax,dword ptr [ebp-50]
 0051AE36    sub         eax,dword ptr [ebp-4C]
 0051AE39    inc         eax
 0051AE3A    shl         eax,2
 0051AE3D    add         dword ptr [ebp-14],eax
 0051AE40    mov         eax,dword ptr [ebp-44]
 0051AE43    shl         eax,2
 0051AE46    add         dword ptr [ebp-14],eax
 0051AE49    inc         dword ptr [ebp-38]
 0051AE4C    dec         dword ptr [ebp-78]
>0051AE4F    jne         0051AD66
 0051AE55    mov         eax,dword ptr [ebp-1C]
 0051AE58    cmp         byte ptr [eax+28],0;TKernelResampler.PixelAccessMode:TPixelAccessMode
 0051AE5C    setne       al
 0051AE5F    and         al,byte ptr [ebp-6D]
>0051AE62    je          0051B23B
 0051AE68    mov         eax,dword ptr [ebp-1C]
 0051AE6B    cmp         byte ptr [eax+28],1;TKernelResampler.PixelAccessMode:TPixelAccessMode
>0051AE6F    jne         0051AF87
 0051AE75    mov         eax,dword ptr [ebp-2C]
 0051AE78    neg         eax
 0051AE7A    mov         edx,dword ptr [ebp-2C]
 0051AE7D    sub         edx,eax
>0051AE7F    jl          0051B23B
 0051AE85    inc         edx
 0051AE86    mov         dword ptr [ebp-78],edx
 0051AE89    mov         dword ptr [ebp-38],eax
 0051AE8C    mov         eax,dword ptr [ebp-64]
 0051AE8F    mov         edx,dword ptr [ebp-38]
 0051AE92    mov         eax,dword ptr [eax+edx*4+10]
 0051AE96    mov         dword ptr [ebp-34],eax
 0051AE99    cmp         dword ptr [ebp-34],0
>0051AE9D    je          0051AF76
 0051AEA3    mov         esi,56D488
 0051AEA8    lea         edi,[ebp-0D8]
 0051AEAE    movs        dword ptr [edi],dword ptr [esi]
 0051AEAF    movs        dword ptr [edi],dword ptr [esi]
 0051AEB0    movs        dword ptr [edi],dword ptr [esi]
 0051AEB1    movs        dword ptr [edi],dword ptr [esi]
 0051AEB2    mov         eax,dword ptr [ebp-2C]
 0051AEB5    neg         eax
 0051AEB7    mov         edx,dword ptr [ebp-2C]
 0051AEBA    sub         edx,eax
>0051AEBC    jl          0051AF3A
 0051AEBE    inc         edx
 0051AEBF    mov         dword ptr [ebp-7C],edx
 0051AEC2    mov         dword ptr [ebp-3C],eax
 0051AEC5    mov         eax,dword ptr [ebp-3C]
 0051AEC8    cmp         eax,dword ptr [ebp-4C]
>0051AECB    jl          0051AEE5
 0051AECD    mov         eax,dword ptr [ebp-3C]
 0051AED0    cmp         eax,dword ptr [ebp-50]
>0051AED3    jg          0051AEE5
 0051AED5    mov         eax,dword ptr [ebp-38]
 0051AED8    cmp         eax,dword ptr [ebp-54]
>0051AEDB    jl          0051AEE5
 0051AEDD    mov         eax,dword ptr [ebp-38]
 0051AEE0    cmp         eax,dword ptr [ebp-58]
>0051AEE3    jle         0051AF32
 0051AEE5    mov         eax,dword ptr [ebp-60]
 0051AEE8    mov         edx,dword ptr [ebp-3C]
 0051AEEB    mov         eax,dword ptr [eax+edx*4+10]
 0051AEEF    mov         dword ptr [ebp-30],eax
 0051AEF2    mov         eax,dword ptr [ebp-1C]
 0051AEF5    movzx       eax,byte ptr [eax+43];TKernelResampler.?f43:byte
 0051AEF9    imul        dword ptr [ebp-30]
 0051AEFC    add         dword ptr [ebp-0CC],eax
 0051AF02    mov         eax,dword ptr [ebp-1C]
 0051AF05    movzx       eax,byte ptr [eax+42];TKernelResampler.?f42:byte
 0051AF09    imul        dword ptr [ebp-30]
 0051AF0C    add         dword ptr [ebp-0D0],eax
 0051AF12    mov         eax,dword ptr [ebp-1C]
 0051AF15    movzx       eax,byte ptr [eax+41];TKernelResampler.?f41:byte
 0051AF19    imul        dword ptr [ebp-30]
 0051AF1C    add         dword ptr [ebp-0D4],eax
 0051AF22    mov         eax,dword ptr [ebp-1C]
 0051AF25    movzx       eax,byte ptr [eax+40];TKernelResampler.?f40:dword
 0051AF29    imul        dword ptr [ebp-30]
 0051AF2C    add         dword ptr [ebp-0D8],eax
 0051AF32    inc         dword ptr [ebp-3C]
 0051AF35    dec         dword ptr [ebp-7C]
>0051AF38    jne         0051AEC5
 0051AF3A    mov         eax,dword ptr [ebp-0CC]
 0051AF40    imul        dword ptr [ebp-34]
 0051AF43    add         dword ptr [ebp-0DC],eax
 0051AF49    mov         eax,dword ptr [ebp-0D0]
 0051AF4F    imul        dword ptr [ebp-34]
 0051AF52    add         dword ptr [ebp-0E0],eax
 0051AF58    mov         eax,dword ptr [ebp-0D4]
 0051AF5E    imul        dword ptr [ebp-34]
 0051AF61    add         dword ptr [ebp-0E4],eax
 0051AF67    mov         eax,dword ptr [ebp-0D8]
 0051AF6D    imul        dword ptr [ebp-34]
 0051AF70    add         dword ptr [ebp-0E8],eax
 0051AF76    inc         dword ptr [ebp-38]
 0051AF79    dec         dword ptr [ebp-78]
>0051AF7C    jne         0051AE8C
>0051AF82    jmp         0051B23B
 0051AF87    mov         eax,dword ptr [ebp-2C]
 0051AF8A    neg         eax
 0051AF8C    mov         edx,dword ptr [ebp-2C]
 0051AF8F    sub         edx,eax
>0051AF91    jl          0051B23B
 0051AF97    inc         edx
 0051AF98    mov         dword ptr [ebp-78],edx
 0051AF9B    mov         dword ptr [ebp-38],eax
 0051AF9E    mov         eax,dword ptr [ebp-64]
 0051AFA1    mov         edx,dword ptr [ebp-38]
 0051AFA4    mov         eax,dword ptr [eax+edx*4+10]
 0051AFA8    mov         dword ptr [ebp-34],eax
 0051AFAB    cmp         dword ptr [ebp-34],0
>0051AFAF    je          0051B0B7
 0051AFB5    mov         esi,56D488
 0051AFBA    lea         edi,[ebp-0D8]
 0051AFC0    movs        dword ptr [edi],dword ptr [esi]
 0051AFC1    movs        dword ptr [edi],dword ptr [esi]
 0051AFC2    movs        dword ptr [edi],dword ptr [esi]
 0051AFC3    movs        dword ptr [edi],dword ptr [esi]
 0051AFC4    mov         eax,dword ptr [ebp-1C]
 0051AFC7    mov         eax,dword ptr [eax+10];TKernelResampler.?f10:dword
 0051AFCA    mov         edx,dword ptr [eax+30]
 0051AFCD    dec         edx
 0051AFCE    mov         eax,dword ptr [ebp-24]
 0051AFD1    add         eax,dword ptr [ebp-38]
 0051AFD4    call        00513104
 0051AFD9    mov         dword ptr [ebp-40],eax
 0051AFDC    mov         eax,dword ptr [ebp-2C]
 0051AFDF    neg         eax
 0051AFE1    mov         edx,dword ptr [ebp-2C]
 0051AFE4    sub         edx,eax
>0051AFE6    jl          0051B08A
 0051AFEC    inc         edx
 0051AFED    mov         dword ptr [ebp-7C],edx
 0051AFF0    mov         dword ptr [ebp-3C],eax
 0051AFF3    mov         eax,dword ptr [ebp-3C]
 0051AFF6    cmp         eax,dword ptr [ebp-4C]
>0051AFF9    jl          0051B013
 0051AFFB    mov         eax,dword ptr [ebp-3C]
 0051AFFE    cmp         eax,dword ptr [ebp-50]
>0051B001    jg          0051B013
 0051B003    mov         eax,dword ptr [ebp-38]
 0051B006    cmp         eax,dword ptr [ebp-54]
>0051B009    jl          0051B013
 0051B00B    mov         eax,dword ptr [ebp-38]
 0051B00E    cmp         eax,dword ptr [ebp-58]
>0051B011    jle         0051B07E
 0051B013    mov         eax,dword ptr [ebp-1C]
 0051B016    mov         eax,dword ptr [eax+10];TKernelResampler.?f10:dword
 0051B019    mov         edx,dword ptr [eax+34]
 0051B01C    dec         edx
 0051B01D    mov         eax,dword ptr [ebp-20]
 0051B020    add         eax,dword ptr [ebp-3C]
 0051B023    call        00513104
 0051B028    mov         edx,eax
 0051B02A    mov         eax,dword ptr [ebp-1C]
 0051B02D    mov         eax,dword ptr [eax+10];TKernelResampler.?f10:dword
 0051B030    mov         ecx,dword ptr [ebp-40]
 0051B033    call        0051F4DC
 0051B038    mov         dword ptr [ebp-110],eax
 0051B03E    mov         eax,dword ptr [ebp-110]
 0051B044    mov         dword ptr [ebp-80],eax
 0051B047    mov         eax,dword ptr [ebp-60]
 0051B04A    mov         edx,dword ptr [ebp-3C]
 0051B04D    mov         eax,dword ptr [eax+edx*4+10]
 0051B051    mov         dword ptr [ebp-30],eax
 0051B054    xor         eax,eax
 0051B056    mov         al,byte ptr [ebp-7E]
 0051B059    imul        dword ptr [ebp-30]
 0051B05C    add         dword ptr [ebp-0D0],eax
 0051B062    xor         eax,eax
 0051B064    mov         al,byte ptr [ebp-7F]
 0051B067    imul        dword ptr [ebp-30]
 0051B06A    add         dword ptr [ebp-0D4],eax
 0051B070    xor         eax,eax
 0051B072    mov         al,byte ptr [ebp-80]
 0051B075    imul        dword ptr [ebp-30]
 0051B078    add         dword ptr [ebp-0D8],eax
 0051B07E    inc         dword ptr [ebp-3C]
 0051B081    dec         dword ptr [ebp-7C]
>0051B084    jne         0051AFF3
 0051B08A    mov         eax,dword ptr [ebp-0D0]
 0051B090    imul        dword ptr [ebp-34]
 0051B093    add         dword ptr [ebp-0E0],eax
 0051B099    mov         eax,dword ptr [ebp-0D4]
 0051B09F    imul        dword ptr [ebp-34]
 0051B0A2    add         dword ptr [ebp-0E4],eax
 0051B0A8    mov         eax,dword ptr [ebp-0D8]
 0051B0AE    imul        dword ptr [ebp-34]
 0051B0B1    add         dword ptr [ebp-0E8],eax
 0051B0B7    inc         dword ptr [ebp-38]
 0051B0BA    dec         dword ptr [ebp-78]
>0051B0BD    jne         0051AF9E
>0051B0C3    jmp         0051B23B
 0051B0C8    mov         eax,dword ptr [ebp-1C]
 0051B0CB    mov         eax,dword ptr [eax+10];TKernelResampler.?f10:dword
 0051B0CE    movzx       eax,byte ptr [eax+7B]
 0051B0D2    mov         edx,dword ptr ds:[56E3B8];^gvar_0056D47C
 0051B0D8    mov         eax,dword ptr [edx+eax*4]
 0051B0DB    mov         dword ptr [ebp-10],eax
 0051B0DE    mov         eax,dword ptr [ebp-2C]
 0051B0E1    neg         eax
 0051B0E3    mov         edx,dword ptr [ebp-2C]
 0051B0E6    sub         edx,eax
>0051B0E8    jl          0051B119
 0051B0EA    inc         edx
 0051B0EB    mov         dword ptr [ebp-78],edx
 0051B0EE    mov         dword ptr [ebp-38],eax
 0051B0F1    mov         eax,dword ptr [ebp-1C]
 0051B0F4    mov         ecx,dword ptr [eax+1C];TKernelResampler.?f1C:dword
 0051B0F7    dec         ecx
 0051B0F8    mov         eax,dword ptr [ebp-1C]
 0051B0FB    mov         edx,dword ptr [eax+14];TKernelResampler.?f14:dword
 0051B0FE    mov         eax,dword ptr [ebp-20]
 0051B101    add         eax,dword ptr [ebp-38]
 0051B104    call        dword ptr [ebp-10]
 0051B107    mov         edx,dword ptr [ebp-38]
 0051B10A    mov         dword ptr [ebp+edx*4-0FC],eax
 0051B111    inc         dword ptr [ebp-38]
 0051B114    dec         dword ptr [ebp-78]
>0051B117    jne         0051B0F1
 0051B119    mov         eax,dword ptr [ebp-2C]
 0051B11C    neg         eax
 0051B11E    mov         edx,dword ptr [ebp-2C]
 0051B121    sub         edx,eax
>0051B123    jl          0051B23B
 0051B129    inc         edx
 0051B12A    mov         dword ptr [ebp-78],edx
 0051B12D    mov         dword ptr [ebp-38],eax
 0051B130    mov         eax,dword ptr [ebp-64]
 0051B133    mov         edx,dword ptr [ebp-38]
 0051B136    mov         eax,dword ptr [eax+edx*4+10]
 0051B13A    mov         dword ptr [ebp-34],eax
 0051B13D    cmp         dword ptr [ebp-34],0
>0051B141    je          0051B22F
 0051B147    mov         eax,dword ptr [ebp-1C]
 0051B14A    mov         ecx,dword ptr [eax+20];TKernelResampler.?f20:dword
 0051B14D    dec         ecx
 0051B14E    mov         eax,dword ptr [ebp-1C]
 0051B151    mov         edx,dword ptr [eax+18];TKernelResampler.?f18:dword
 0051B154    mov         eax,dword ptr [ebp-24]
 0051B157    add         eax,dword ptr [ebp-38]
 0051B15A    call        dword ptr [ebp-10]
 0051B15D    mov         dword ptr [ebp-5C],eax
 0051B160    mov         eax,dword ptr [ebp-1C]
 0051B163    mov         eax,dword ptr [eax+10];TKernelResampler.?f10:dword
 0051B166    mov         edx,dword ptr [ebp-5C]
 0051B169    call        0051F4B4
 0051B16E    mov         dword ptr [ebp-28],eax
 0051B171    mov         esi,56D488
 0051B176    lea         edi,[ebp-0D8]
 0051B17C    movs        dword ptr [edi],dword ptr [esi]
 0051B17D    movs        dword ptr [edi],dword ptr [esi]
 0051B17E    movs        dword ptr [edi],dword ptr [esi]
 0051B17F    movs        dword ptr [edi],dword ptr [esi]
 0051B180    mov         eax,dword ptr [ebp-2C]
 0051B183    neg         eax
 0051B185    mov         edx,dword ptr [ebp-2C]
 0051B188    sub         edx,eax
>0051B18A    jl          0051B1F3
 0051B18C    inc         edx
 0051B18D    mov         dword ptr [ebp-7C],edx
 0051B190    mov         dword ptr [ebp-3C],eax
 0051B193    mov         eax,dword ptr [ebp-60]
 0051B196    mov         edx,dword ptr [ebp-3C]
 0051B199    mov         eax,dword ptr [eax+edx*4+10]
 0051B19D    mov         dword ptr [ebp-30],eax
 0051B1A0    mov         eax,dword ptr [ebp-3C]
 0051B1A3    mov         eax,dword ptr [ebp+eax*4-0FC]
 0051B1AA    mov         edx,dword ptr [ebp-28]
 0051B1AD    mov         eax,dword ptr [edx+eax*4]
 0051B1B0    mov         dword ptr [ebp-14],eax
 0051B1B3    xor         eax,eax
 0051B1B5    mov         al,byte ptr [ebp-11]
 0051B1B8    imul        dword ptr [ebp-30]
 0051B1BB    add         dword ptr [ebp-0CC],eax
 0051B1C1    xor         eax,eax
 0051B1C3    mov         al,byte ptr [ebp-12]
 0051B1C6    imul        dword ptr [ebp-30]
 0051B1C9    add         dword ptr [ebp-0D0],eax
 0051B1CF    xor         eax,eax
 0051B1D1    mov         al,byte ptr [ebp-13]
 0051B1D4    imul        dword ptr [ebp-30]
 0051B1D7    add         dword ptr [ebp-0D4],eax
 0051B1DD    xor         eax,eax
 0051B1DF    mov         al,byte ptr [ebp-14]
 0051B1E2    imul        dword ptr [ebp-30]
 0051B1E5    add         dword ptr [ebp-0D8],eax
 0051B1EB    inc         dword ptr [ebp-3C]
 0051B1EE    dec         dword ptr [ebp-7C]
>0051B1F1    jne         0051B193
 0051B1F3    mov         eax,dword ptr [ebp-0CC]
 0051B1F9    imul        dword ptr [ebp-34]
 0051B1FC    add         dword ptr [ebp-0DC],eax
 0051B202    mov         eax,dword ptr [ebp-0D0]
 0051B208    imul        dword ptr [ebp-34]
 0051B20B    add         dword ptr [ebp-0E0],eax
 0051B211    mov         eax,dword ptr [ebp-0D4]
 0051B217    imul        dword ptr [ebp-34]
 0051B21A    add         dword ptr [ebp-0E4],eax
 0051B220    mov         eax,dword ptr [ebp-0D8]
 0051B226    imul        dword ptr [ebp-34]
 0051B229    add         dword ptr [ebp-0E8],eax
 0051B22F    inc         dword ptr [ebp-38]
 0051B232    dec         dword ptr [ebp-78]
>0051B235    jne         0051B130
 0051B23B    mov         eax,dword ptr [ebp-1C]
 0051B23E    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051B241    mov         edx,dword ptr [eax]
 0051B243    call        dword ptr [edx+0C];TCustomKernel.sub_005198DC
 0051B246    test        al,al
>0051B248    je          0051B288
 0051B24A    movsx       eax,word ptr [ebp-0DA]
 0051B251    call        00512FD8
 0051B256    mov         byte ptr [ebp-15],al
 0051B259    movsx       eax,word ptr [ebp-0DE]
 0051B260    call        00512FD8
 0051B265    mov         byte ptr [ebp-16],al
 0051B268    movsx       eax,word ptr [ebp-0E2]
 0051B26F    call        00512FD8
 0051B274    mov         byte ptr [ebp-17],al
 0051B277    movsx       eax,word ptr [ebp-0E6]
 0051B27E    call        00512FD8
 0051B283    mov         byte ptr [ebp-18],al
>0051B286    jmp         0051B2AC
 0051B288    mov         al,byte ptr [ebp-0DA]
 0051B28E    mov         byte ptr [ebp-15],al
 0051B291    mov         al,byte ptr [ebp-0DE]
 0051B297    mov         byte ptr [ebp-16],al
 0051B29A    mov         al,byte ptr [ebp-0E2]
 0051B2A0    mov         byte ptr [ebp-17],al
 0051B2A3    mov         al,byte ptr [ebp-0E6]
 0051B2A9    mov         byte ptr [ebp-18],al
 0051B2AC    mov         eax,dword ptr [ebp-18]
 0051B2AF    pop         edi
 0051B2B0    pop         esi
 0051B2B1    mov         esp,ebp
 0051B2B3    pop         ebp
 0051B2B4    ret         8
end;*}

//0051B2BC
procedure sub_0051B2BC;
begin
{*
 0051B2BC    push        ebp
 0051B2BD    mov         ebp,esp
 0051B2BF    add         esp,0FFFFFFF8
 0051B2C2    mov         dword ptr [ebp-4],eax
 0051B2C5    mov         eax,dword ptr [ebp-4]
 0051B2C8    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051B2CB    mov         edx,dword ptr [eax]
 0051B2CD    call        dword ptr [edx+18];@AbstractError
 0051B2D0    fstp        dword ptr [ebp-8]
 0051B2D3    wait
 0051B2D4    fld         dword ptr [ebp-8]
 0051B2D7    pop         ecx
 0051B2D8    pop         ecx
 0051B2D9    pop         ebp
 0051B2DA    ret
*}
end;

//0051B2DC
procedure TKernelResampler.SetKernelMode(Value:TKernelMode);
begin
{*
 0051B2DC    push        ebp
 0051B2DD    mov         ebp,esp
 0051B2DF    add         esp,0FFFFFFF8
 0051B2E2    mov         byte ptr [ebp-5],dl
 0051B2E5    mov         dword ptr [ebp-4],eax
 0051B2E8    mov         eax,dword ptr [ebp-4]
 0051B2EB    mov         al,byte ptr [eax+34];TKernelResampler.KernelMode:TKernelMode
 0051B2EE    cmp         al,byte ptr [ebp-5]
>0051B2F1    je          0051B304
 0051B2F3    mov         al,byte ptr [ebp-5]
 0051B2F6    mov         edx,dword ptr [ebp-4]
 0051B2F9    mov         byte ptr [edx+34],al;TKernelResampler.KernelMode:TKernelMode
 0051B2FC    mov         eax,dword ptr [ebp-4]
 0051B2FF    mov         edx,dword ptr [eax]
 0051B301    call        dword ptr [edx+0C];TKernelResampler.sub_0051A4BC
 0051B304    pop         ecx
 0051B305    pop         ecx
 0051B306    pop         ebp
 0051B307    ret
*}
end;

//0051B308
procedure TKernelResampler.SetTableSize(Value:Integer);
begin
{*
 0051B308    push        ebp
 0051B309    mov         ebp,esp
 0051B30B    add         esp,0FFFFFFF8
 0051B30E    mov         dword ptr [ebp-8],edx
 0051B311    mov         dword ptr [ebp-4],eax
 0051B314    cmp         dword ptr [ebp-8],2
>0051B318    jge         0051B321
 0051B31A    mov         dword ptr [ebp-8],2
 0051B321    mov         eax,dword ptr [ebp-4]
 0051B324    mov         eax,dword ptr [eax+3C];TKernelResampler.TableSize:Integer
 0051B327    cmp         eax,dword ptr [ebp-8]
>0051B32A    je          0051B33D
 0051B32C    mov         eax,dword ptr [ebp-8]
 0051B32F    mov         edx,dword ptr [ebp-4]
 0051B332    mov         dword ptr [edx+3C],eax;TKernelResampler.TableSize:Integer
 0051B335    mov         eax,dword ptr [ebp-4]
 0051B338    mov         edx,dword ptr [eax]
 0051B33A    call        dword ptr [edx+0C];TKernelResampler.sub_0051A4BC
 0051B33D    pop         ecx
 0051B33E    pop         ecx
 0051B33F    pop         ebp
 0051B340    ret
*}
end;

//0051B344
procedure sub_0051B344;
begin
{*
 0051B344    push        ebp
 0051B345    mov         ebp,esp
 0051B347    push        ecx
 0051B348    mov         dword ptr [ebp-4],eax
 0051B34B    mov         eax,dword ptr [ebp-4]
 0051B34E    mov         al,byte ptr [eax+34];TKernelResampler.KernelMode:TKernelMode
 0051B351    dec         eax
 0051B352    sub         al,2
>0051B354    jae         0051B361
 0051B356    mov         eax,dword ptr [ebp-4]
 0051B359    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051B35C    call        TObject.Free
 0051B361    mov         eax,dword ptr [ebp-4]
 0051B364    call        005234D8
 0051B369    pop         ecx
 0051B36A    pop         ebp
 0051B36B    ret
*}
end;

//0051B36C
procedure sub_0051B36C;
begin
{*
 0051B36C    push        ebp
 0051B36D    mov         ebp,esp
 0051B36F    add         esp,0FFFFFFD4
 0051B372    push        ebx
 0051B373    mov         dword ptr [ebp-4],eax
 0051B376    mov         eax,dword ptr [ebp-4]
 0051B379    call        0051A5E8
 0051B37E    mov         eax,dword ptr [ebp-4]
 0051B381    mov         eax,dword ptr [eax+10];TKernelResampler.?f10:dword
 0051B384    mov         eax,dword ptr [eax+0B8]
 0051B38A    mov         edx,dword ptr [ebp-4]
 0051B38D    mov         dword ptr [edx+40],eax;TKernelResampler.?f40:dword
 0051B390    mov         eax,dword ptr [ebp-4]
 0051B393    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051B396    mov         edx,dword ptr [eax]
 0051B398    call        dword ptr [edx+18];@AbstractError
 0051B39B    add         esp,0FFFFFFF4
 0051B39E    fstp        tbyte ptr [esp]
 0051B3A1    wait
 0051B3A2    call        0043723C
 0051B3A7    mov         dword ptr [ebp-10],eax
 0051B3AA    mov         eax,dword ptr [ebp-4]
 0051B3AD    mov         al,byte ptr [eax+34];TKernelResampler.KernelMode:TKernelMode
 0051B3B0    dec         eax
 0051B3B1    sub         al,2
>0051B3B3    jae         0051B499
 0051B3B9    mov         dl,1
 0051B3BB    mov         eax,[005156EC];TIntegerMap
 0051B3C0    call        TIntegerMap.Create;TIntegerMap.Create
 0051B3C5    mov         edx,dword ptr [ebp-4]
 0051B3C8    mov         dword ptr [edx+38],eax;TKernelResampler.?f38:TIntegerMap
 0051B3CB    mov         eax,dword ptr [ebp-4]
 0051B3CE    mov         ecx,dword ptr [eax+3C];TKernelResampler.TableSize:Integer
 0051B3D1    inc         ecx
 0051B3D2    mov         edx,dword ptr [ebp-10]
 0051B3D5    add         edx,edx
 0051B3D7    inc         edx
 0051B3D8    mov         eax,dword ptr [ebp-4]
 0051B3DB    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051B3DE    mov         ebx,dword ptr [eax]
 0051B3E0    call        dword ptr [ebx+2C];TIntegerMap.sub_0051E43C
 0051B3E3    mov         eax,dword ptr [ebp-4]
 0051B3E6    mov         eax,dword ptr [eax+3C];TKernelResampler.TableSize:Integer
 0051B3E9    test        eax,eax
>0051B3EB    jl          0051B499
 0051B3F1    inc         eax
 0051B3F2    mov         dword ptr [ebp-24],eax
 0051B3F5    mov         dword ptr [ebp-8],0
 0051B3FC    fild        dword ptr [ebp-8]
 0051B3FF    mov         eax,dword ptr [ebp-4]
 0051B402    mov         eax,dword ptr [eax+3C];TKernelResampler.TableSize:Integer
 0051B405    dec         eax
 0051B406    mov         dword ptr [ebp-2C],eax
 0051B409    fild        dword ptr [ebp-2C]
 0051B40C    fdivp       st(1),st
 0051B40E    fstp        dword ptr [ebp-1C]
 0051B411    wait
 0051B412    mov         edx,dword ptr [ebp-10]
 0051B415    sub         edx,4
 0051B418    mov         eax,dword ptr [ebp-4]
 0051B41B    mov         eax,dword ptr [eax+38];TKernelResampler.?f38:TIntegerMap
 0051B41E    mov         ecx,dword ptr [ebp-8]
 0051B421    call        00515864
 0051B426    mov         dword ptr [ebp-20],eax
 0051B429    mov         dword ptr [ebp-18],0FFFFFF00
 0051B430    mov         eax,dword ptr [ebp-10]
 0051B433    neg         eax
 0051B435    mov         edx,dword ptr [ebp-10]
 0051B438    sub         edx,eax
>0051B43A    jl          0051B484
 0051B43C    inc         edx
 0051B43D    mov         dword ptr [ebp-28],edx
 0051B440    mov         dword ptr [ebp-0C],eax
 0051B443    fild        dword ptr [ebp-0C]
 0051B446    fadd        dword ptr [ebp-1C]
 0051B449    add         esp,0FFFFFFFC
 0051B44C    fstp        dword ptr [esp]
 0051B44F    wait
 0051B450    mov         eax,dword ptr [ebp-4]
 0051B453    mov         eax,dword ptr [eax+30];TKernelResampler.Kernel:TCustomKernel
 0051B456    mov         edx,dword ptr [eax]
 0051B458    call        dword ptr [edx+14];@AbstractError
 0051B45B    fmul        dword ptr ds:[51B4A0];256:Single
 0051B461    call        @ROUND
 0051B466    mov         dword ptr [ebp-14],eax
 0051B469    mov         eax,dword ptr [ebp-20]
 0051B46C    mov         edx,dword ptr [ebp-0C]
 0051B46F    mov         ecx,dword ptr [ebp-14]
 0051B472    mov         dword ptr [eax+edx*4+10],ecx
 0051B476    mov         eax,dword ptr [ebp-14]
 0051B479    add         dword ptr [ebp-18],eax
 0051B47C    inc         dword ptr [ebp-0C]
 0051B47F    dec         dword ptr [ebp-28]
>0051B482    jne         0051B443
 0051B484    mov         eax,dword ptr [ebp-20]
 0051B487    mov         edx,dword ptr [ebp-18]
 0051B48A    sub         dword ptr [eax+10],edx
 0051B48D    inc         dword ptr [ebp-8]
 0051B490    dec         dword ptr [ebp-24]
>0051B493    jne         0051B3FC
 0051B499    pop         ebx
 0051B49A    mov         esp,ebp
 0051B49C    pop         ebp
 0051B49D    ret
*}
end;

//0051B4A4
constructor sub_0051B4A4;
begin
{*
 0051B4A4    push        ebp
 0051B4A5    mov         ebp,esp
 0051B4A7    add         esp,0FFFFFFF8
 0051B4AA    test        dl,dl
>0051B4AC    je          0051B4B6
 0051B4AE    add         esp,0FFFFFFF0
 0051B4B1    call        @ClassCreate
 0051B4B6    mov         byte ptr [ebp-5],dl
 0051B4B9    mov         dword ptr [ebp-4],eax
 0051B4BC    xor         edx,edx
 0051B4BE    mov         eax,dword ptr [ebp-4]
 0051B4C1    call        0051A4DC
 0051B4C6    mov         eax,dword ptr [ebp-4]
 0051B4C9    mov         edx,dword ptr ds:[516C50];TNearestTransformer
 0051B4CF    mov         dword ptr [eax+24],edx;TNearestResampler.?f24:TTransformer
 0051B4D2    mov         eax,dword ptr [ebp-4]
 0051B4D5    cmp         byte ptr [ebp-5],0
>0051B4D9    je          0051B4EA
 0051B4DB    call        @AfterConstruction
 0051B4E0    pop         dword ptr fs:[0]
 0051B4E7    add         esp,0C
 0051B4EA    mov         eax,dword ptr [ebp-4]
 0051B4ED    pop         ecx
 0051B4EE    pop         ecx
 0051B4EF    pop         ebp
 0051B4F0    ret
*}
end;

//0051B4F4
{*function sub_0051B4F4(?:?; ?:?):?;
begin
 0051B4F4    push        ebp
 0051B4F5    mov         ebp,esp
 0051B4F7    add         esp,0FFFFFFF0
 0051B4FA    push        ebx
 0051B4FB    mov         dword ptr [ebp-0C],ecx
 0051B4FE    mov         dword ptr [ebp-8],edx
 0051B501    mov         dword ptr [ebp-4],eax
 0051B504    mov         ebx,dword ptr [ebp-4]
 0051B507    mov         ecx,dword ptr [ebp-0C]
 0051B50A    mov         edx,dword ptr [ebp-8]
 0051B50D    mov         eax,dword ptr [ebx+34];TNearestResampler.?f34:TNearestResampler
 0051B510    call        dword ptr [ebx+30]
 0051B513    mov         dword ptr [ebp-10],eax
 0051B516    mov         eax,dword ptr [ebp-10]
 0051B519    pop         ebx
 0051B51A    mov         esp,ebp
 0051B51C    pop         ebp
 0051B51D    ret
end;*}

//0051B520
{*function sub_0051B520(?:?; ?:?):?;
begin
 0051B520    push        ebp
 0051B521    mov         ebp,esp
 0051B523    add         esp,0FFFFFFF0
 0051B526    push        ebx
 0051B527    mov         dword ptr [ebp-0C],ecx
 0051B52A    mov         dword ptr [ebp-8],edx
 0051B52D    mov         dword ptr [ebp-4],eax
 0051B530    mov         eax,dword ptr [ebp-0C]
 0051B533    call        00513268
 0051B538    push        eax
 0051B539    mov         eax,dword ptr [ebp-8]
 0051B53C    call        00513268
 0051B541    mov         edx,eax
 0051B543    mov         ebx,dword ptr [ebp-4]
 0051B546    pop         ecx
 0051B547    mov         eax,dword ptr [ebx+34];TNearestResampler.?f34:TNearestResampler
 0051B54A    call        dword ptr [ebx+30]
 0051B54D    mov         dword ptr [ebp-10],eax
 0051B550    mov         eax,dword ptr [ebp-10]
 0051B553    pop         ebx
 0051B554    mov         esp,ebp
 0051B556    pop         ebp
 0051B557    ret
end;*}

//0051B558
{*function sub_0051B558(?:?; ?:?):?;
begin
 0051B558    push        ebp
 0051B559    mov         ebp,esp
 0051B55B    add         esp,0FFFFFFF8
 0051B55E    push        ebx
 0051B55F    mov         dword ptr [ebp-4],eax
 0051B562    fld         dword ptr [ebp+8]
 0051B565    call        @ROUND
 0051B56A    push        eax
 0051B56B    fld         dword ptr [ebp+0C]
 0051B56E    call        @ROUND
 0051B573    mov         edx,eax
 0051B575    mov         ebx,dword ptr [ebp-4]
 0051B578    pop         ecx
 0051B579    mov         eax,dword ptr [ebx+34];TNearestResampler.?f34:TNearestResampler
 0051B57C    call        dword ptr [ebx+30]
 0051B57F    mov         dword ptr [ebp-8],eax
 0051B582    mov         eax,dword ptr [ebp-8]
 0051B585    pop         ebx
 0051B586    pop         ecx
 0051B587    pop         ecx
 0051B588    pop         ebp
 0051B589    ret         8
end;*}

//0051B58C
procedure sub_0051B58C;
begin
{*
 0051B58C    push        ebp
 0051B58D    mov         ebp,esp
 0051B58F    add         esp,0FFFFFFF8
 0051B592    mov         dword ptr [ebp-4],eax
 0051B595    mov         dword ptr [ebp-8],3F800000
 0051B59C    fld         dword ptr [ebp-8]
 0051B59F    pop         ecx
 0051B5A0    pop         ecx
 0051B5A1    pop         ebp
 0051B5A2    ret
*}
end;

//0051B5A4
{*function sub_0051B5A4(?:?; ?:?; ?:?):?;
begin
 0051B5A4    push        ebp
 0051B5A5    mov         ebp,esp
 0051B5A7    add         esp,0FFFFFFE0
 0051B5AA    mov         dword ptr [ebp-0C],ecx
 0051B5AD    mov         dword ptr [ebp-8],edx
 0051B5B0    mov         dword ptr [ebp-4],eax
 0051B5B3    mov         eax,dword ptr [ebp-4]
 0051B5B6    mov         eax,dword ptr [eax+10]
 0051B5B9    mov         dword ptr [ebp-1C],eax
 0051B5BC    mov         eax,dword ptr [ebp-4]
 0051B5BF    mov         eax,dword ptr [eax+10]
 0051B5C2    add         eax,48
 0051B5C5    mov         dword ptr [ebp-20],eax
 0051B5C8    mov         eax,dword ptr [ebp-20]
 0051B5CB    mov         ecx,dword ptr [eax+8]
 0051B5CE    dec         ecx
 0051B5CF    mov         eax,dword ptr [ebp-20]
 0051B5D2    mov         edx,dword ptr [eax]
 0051B5D4    mov         eax,dword ptr [ebp-8]
 0051B5D7    call        00513118
 0051B5DC    mov         dword ptr [ebp-14],eax
 0051B5DF    mov         eax,dword ptr [ebp-20]
 0051B5E2    mov         ecx,dword ptr [eax+0C]
 0051B5E5    dec         ecx
 0051B5E6    mov         eax,dword ptr [ebp-20]
 0051B5E9    mov         edx,dword ptr [eax+4]
 0051B5EC    mov         eax,dword ptr [ebp-0C]
 0051B5EF    call        00513118
 0051B5F4    mov         dword ptr [ebp-18],eax
 0051B5F7    mov         ecx,dword ptr [ebp-18]
 0051B5FA    mov         edx,dword ptr [ebp-14]
 0051B5FD    mov         eax,dword ptr [ebp-1C]
 0051B600    call        0051F4DC
 0051B605    mov         dword ptr [ebp-10],eax
 0051B608    mov         eax,dword ptr [ebp-14]
 0051B60B    cmp         eax,dword ptr [ebp-8]
>0051B60E    jne         0051B618
 0051B610    mov         eax,dword ptr [ebp-18]
 0051B613    cmp         eax,dword ptr [ebp-0C]
>0051B616    je          0051B61F
 0051B618    and         dword ptr [ebp-10],0FFFFFF
 0051B61F    mov         eax,dword ptr [ebp-10]
 0051B622    mov         esp,ebp
 0051B624    pop         ebp
 0051B625    ret
end;*}

//0051B628
procedure sub_0051B628;
begin
{*
 0051B628    push        ebp
 0051B629    mov         ebp,esp
 0051B62B    push        ecx
 0051B62C    mov         dword ptr [ebp-4],eax
 0051B62F    mov         eax,dword ptr [ebp-4]
 0051B632    call        0051A5E8
 0051B637    mov         eax,dword ptr [ebp-4]
 0051B63A    mov         al,byte ptr [eax+28];TNearestResampler.PixelAccessMode:TPixelAccessMode
 0051B63D    sub         al,1
>0051B63F    jb          0051B64D
>0051B641    je          0051B663
 0051B643    dec         al
>0051B645    je          0051B679
 0051B647    dec         al
>0051B649    je          0051B68F
>0051B64B    jmp         0051B69F
 0051B64D    mov         eax,dword ptr [ebp-4]
 0051B650    mov         eax,dword ptr [eax+10];TNearestResampler.?f10:dword
 0051B653    mov         edx,dword ptr [ebp-4]
 0051B656    mov         dword ptr [edx+34],eax;TNearestResampler.?f34:TNearestResampler
 0051B659    mov         dword ptr [edx+30],51F4DC;TNearestResampler.?f30:? sub_0051F4DC
 0051B660    pop         ecx
 0051B661    pop         ebp
 0051B662    ret
 0051B663    mov         eax,dword ptr [ebp-4]
 0051B666    mov         eax,dword ptr [eax+10];TNearestResampler.?f10:dword
 0051B669    mov         edx,dword ptr [ebp-4]
 0051B66C    mov         dword ptr [edx+34],eax;TNearestResampler.?f34:TNearestResampler
 0051B66F    mov         dword ptr [edx+30],51F50C;TNearestResampler.?f30:? sub_0051F50C
 0051B676    pop         ecx
 0051B677    pop         ebp
 0051B678    ret
 0051B679    mov         eax,dword ptr [ebp-4]
 0051B67C    mov         eax,dword ptr [eax+10];TNearestResampler.?f10:dword
 0051B67F    mov         edx,dword ptr [ebp-4]
 0051B682    mov         dword ptr [edx+34],eax;TNearestResampler.?f34:TNearestResampler
 0051B685    mov         dword ptr [edx+30],5201FC;TNearestResampler.?f30:? sub_005201FC
 0051B68C    pop         ecx
 0051B68D    pop         ebp
 0051B68E    ret
 0051B68F    mov         eax,dword ptr [ebp-4]
 0051B692    mov         edx,dword ptr [ebp-4]
 0051B695    mov         dword ptr [edx+34],eax;TNearestResampler.?f34:TNearestResampler
 0051B698    mov         dword ptr [edx+30],51B5A4;TNearestResampler.?f30:? sub_0051B5A4
 0051B69F    pop         ecx
 0051B6A0    pop         ebp
 0051B6A1    ret
*}
end;

//0051B6A4
{*procedure sub_0051B6A4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0051B6A4    push        ebp
 0051B6A5    mov         ebp,esp
 0051B6A7    add         esp,0FFFFFFC8
 0051B6AA    push        esi
 0051B6AB    push        edi
 0051B6AC    mov         esi,dword ptr [ebp+14]
 0051B6AF    lea         edi,[ebp-38]
 0051B6B2    movs        dword ptr [edi],dword ptr [esi]
 0051B6B3    movs        dword ptr [edi],dword ptr [esi]
 0051B6B4    movs        dword ptr [edi],dword ptr [esi]
 0051B6B5    movs        dword ptr [edi],dword ptr [esi]
 0051B6B6    mov         esi,dword ptr [ebp+1C]
 0051B6B9    lea         edi,[ebp-28]
 0051B6BC    movs        dword ptr [edi],dword ptr [esi]
 0051B6BD    movs        dword ptr [edi],dword ptr [esi]
 0051B6BE    movs        dword ptr [edi],dword ptr [esi]
 0051B6BF    movs        dword ptr [edi],dword ptr [esi]
 0051B6C0    mov         esi,ecx
 0051B6C2    lea         edi,[ebp-18]
 0051B6C5    movs        dword ptr [edi],dword ptr [esi]
 0051B6C6    movs        dword ptr [edi],dword ptr [esi]
 0051B6C7    movs        dword ptr [edi],dword ptr [esi]
 0051B6C8    movs        dword ptr [edi],dword ptr [esi]
 0051B6C9    mov         dword ptr [ebp-8],edx
 0051B6CC    mov         dword ptr [ebp-4],eax
 0051B6CF    mov         eax,dword ptr [ebp+18]
 0051B6D2    push        eax
 0051B6D3    lea         eax,[ebp-38]
 0051B6D6    push        eax
 0051B6D7    mov         al,byte ptr [ebp+10]
 0051B6DA    push        eax
 0051B6DB    push        dword ptr [ebp+0C]
 0051B6DE    push        dword ptr [ebp+8]
 0051B6E1    lea         ecx,[ebp-28]
 0051B6E4    lea         edx,[ebp-18]
 0051B6E7    mov         eax,dword ptr [ebp-8]
 0051B6EA    call        005172E8
 0051B6EF    pop         edi
 0051B6F0    pop         esi
 0051B6F1    mov         esp,ebp
 0051B6F3    pop         ebp
 0051B6F4    ret         18
end;*}

//0051B6F8
constructor sub_0051B6F8;
begin
{*
 0051B6F8    push        ebp
 0051B6F9    mov         ebp,esp
 0051B6FB    add         esp,0FFFFFFF8
 0051B6FE    test        dl,dl
>0051B700    je          0051B70A
 0051B702    add         esp,0FFFFFFF0
 0051B705    call        @ClassCreate
 0051B70A    mov         byte ptr [ebp-5],dl
 0051B70D    mov         dword ptr [ebp-4],eax
 0051B710    xor         edx,edx
 0051B712    mov         eax,dword ptr [ebp-4]
 0051B715    call        0051A4DC
 0051B71A    mov         dl,1
 0051B71C    mov         eax,[00515B38];TLinearKernel
 0051B721    call        TBoxKernel.Create;TLinearKernel.Create
 0051B726    mov         edx,dword ptr [ebp-4]
 0051B729    mov         dword ptr [edx+30],eax;TLinearResampler.?f30:TLinearKernel
 0051B72C    mov         eax,dword ptr [ebp-4]
 0051B72F    cmp         byte ptr [ebp-5],0
>0051B733    je          0051B744
 0051B735    call        @AfterConstruction
 0051B73A    pop         dword ptr fs:[0]
 0051B741    add         esp,0C
 0051B744    mov         eax,dword ptr [ebp-4]
 0051B747    pop         ecx
 0051B748    pop         ecx
 0051B749    pop         ebp
 0051B74A    ret
*}
end;

//0051B74C
destructor TLinearResampler.Destroy;
begin
{*
 0051B74C    push        ebp
 0051B74D    mov         ebp,esp
 0051B74F    add         esp,0FFFFFFF8
 0051B752    call        @BeforeDestruction
 0051B757    mov         byte ptr [ebp-5],dl
 0051B75A    mov         dword ptr [ebp-4],eax
 0051B75D    mov         eax,dword ptr [ebp-4]
 0051B760    mov         eax,dword ptr [eax+30]
 0051B763    call        TObject.Free
 0051B768    mov         dl,byte ptr [ebp-5]
 0051B76B    and         dl,0FC
 0051B76E    mov         eax,dword ptr [ebp-4]
 0051B771    call        TPersistent.Destroy
 0051B776    cmp         byte ptr [ebp-5],0
>0051B77A    jle         0051B784
 0051B77C    mov         eax,dword ptr [ebp-4]
 0051B77F    call        @ClassDestroy
 0051B784    pop         ecx
 0051B785    pop         ecx
 0051B786    pop         ebp
 0051B787    ret
*}
end;

//0051B788
{*function sub_0051B788(?:?; ?:?):?;
begin
 0051B788    push        ebp
 0051B789    mov         ebp,esp
 0051B78B    add         esp,0FFFFFFF0
 0051B78E    push        ebx
 0051B78F    mov         dword ptr [ebp-0C],ecx
 0051B792    mov         dword ptr [ebp-8],edx
 0051B795    mov         dword ptr [ebp-4],eax
 0051B798    mov         ebx,dword ptr [ebp-4]
 0051B79B    mov         ecx,dword ptr [ebp-0C]
 0051B79E    mov         edx,dword ptr [ebp-8]
 0051B7A1    mov         eax,dword ptr [ebx+3C];TLinearResampler.?f3C:TLinearResampler
 0051B7A4    call        dword ptr [ebx+38]
 0051B7A7    mov         dword ptr [ebp-10],eax
 0051B7AA    mov         eax,dword ptr [ebp-10]
 0051B7AD    pop         ebx
 0051B7AE    mov         esp,ebp
 0051B7B0    pop         ebp
 0051B7B1    ret
end;*}

//0051B7B4
{*function sub_0051B7B4(?:?; ?:?):?;
begin
 0051B7B4    push        ebp
 0051B7B5    mov         ebp,esp
 0051B7B7    add         esp,0FFFFFFF8
 0051B7BA    push        ebx
 0051B7BB    mov         dword ptr [ebp-4],eax
 0051B7BE    fld         dword ptr [ebp+8]
 0051B7C1    fmul        dword ptr ds:[51B7F4];65536:Single
 0051B7C7    call        @ROUND
 0051B7CC    push        eax
 0051B7CD    fld         dword ptr [ebp+0C]
 0051B7D0    fmul        dword ptr ds:[51B7F4];65536:Single
 0051B7D6    call        @ROUND
 0051B7DB    mov         edx,eax
 0051B7DD    mov         ebx,dword ptr [ebp-4]
 0051B7E0    pop         ecx
 0051B7E1    mov         eax,dword ptr [ebx+3C];TLinearResampler.?f3C:TLinearResampler
 0051B7E4    call        dword ptr [ebx+38]
 0051B7E7    mov         dword ptr [ebp-8],eax
 0051B7EA    mov         eax,dword ptr [ebp-8]
 0051B7ED    pop         ebx
 0051B7EE    pop         ecx
 0051B7EF    pop         ecx
 0051B7F0    pop         ebp
 0051B7F1    ret         8
end;*}

//0051B7F8
{*function sub_0051B7F8(?:?; ?:?; ?:?):?;
begin
 0051B7F8    push        ebp
 0051B7F9    mov         ebp,esp
 0051B7FB    add         esp,0FFFFFFB0
 0051B7FE    push        ebx
 0051B7FF    mov         dword ptr [ebp-8],ecx
 0051B802    mov         dword ptr [ebp-4],edx
 0051B805    mov         dword ptr [ebp-0C],eax
 0051B808    mov         eax,dword ptr [ebp-0C]
 0051B80B    mov         eax,dword ptr [eax+10]
 0051B80E    mov         dword ptr [ebp-4C],eax
 0051B811    mov         eax,dword ptr [ebp-0C]
 0051B814    mov         eax,dword ptr [eax+10]
 0051B817    add         eax,48
 0051B81A    mov         dword ptr [ebp-50],eax
 0051B81D    mov         eax,dword ptr [ebp-50]
 0051B820    mov         eax,dword ptr [eax+8]
 0051B823    dec         eax
 0051B824    mov         dword ptr [ebp-30],eax
 0051B827    mov         eax,dword ptr [ebp-50]
 0051B82A    mov         eax,dword ptr [eax+0C]
 0051B82D    dec         eax
 0051B82E    mov         dword ptr [ebp-34],eax
 0051B831    movsx       eax,word ptr [ebp-2]
 0051B835    mov         dword ptr [ebp-14],eax
 0051B838    movsx       eax,word ptr [ebp-6]
 0051B83C    mov         dword ptr [ebp-18],eax
 0051B83F    mov         eax,dword ptr [ebp-14]
 0051B842    mov         edx,dword ptr [ebp-50]
 0051B845    cmp         eax,dword ptr [edx]
>0051B847    jl          0051B885
 0051B849    mov         eax,dword ptr [ebp-18]
 0051B84C    mov         edx,dword ptr [ebp-50]
 0051B84F    cmp         eax,dword ptr [edx+4]
>0051B852    jl          0051B885
 0051B854    mov         eax,dword ptr [ebp-14]
 0051B857    cmp         eax,dword ptr [ebp-30]
>0051B85A    jge         0051B885
 0051B85C    mov         eax,dword ptr [ebp-18]
 0051B85F    cmp         eax,dword ptr [ebp-34]
>0051B862    jge         0051B885
 0051B864    mov         ecx,dword ptr [ebp-8]
 0051B867    shr         ecx,8
 0051B86A    mov         edx,dword ptr [ebp-4]
 0051B86D    shr         edx,8
 0051B870    mov         eax,dword ptr [ebp-4C]
 0051B873    call        00520024
 0051B878    mov         dword ptr [ebp-10],eax
 0051B87B    call        00513ACC
>0051B880    jmp         0051BA40
 0051B885    mov         eax,dword ptr [ebp-50]
 0051B888    mov         eax,dword ptr [eax]
 0051B88A    dec         eax
 0051B88B    cmp         eax,dword ptr [ebp-14]
>0051B88E    jg          0051BA3B
 0051B894    mov         eax,dword ptr [ebp-50]
 0051B897    mov         eax,dword ptr [eax+4]
 0051B89A    dec         eax
 0051B89B    cmp         eax,dword ptr [ebp-18]
>0051B89E    jg          0051BA3B
 0051B8A4    mov         eax,dword ptr [ebp-14]
 0051B8A7    cmp         eax,dword ptr [ebp-30]
>0051B8AA    jg          0051BA3B
 0051B8B0    mov         eax,dword ptr [ebp-18]
 0051B8B3    cmp         eax,dword ptr [ebp-34]
>0051B8B6    jg          0051BA3B
 0051B8BC    mov         edx,dword ptr [ebp-30]
 0051B8BF    mov         eax,dword ptr [ebp-14]
 0051B8C2    call        00513104
 0051B8C7    mov         dword ptr [ebp-1C],eax
 0051B8CA    mov         eax,dword ptr [ebp-4]
 0051B8CD    call        004374DC
 0051B8D2    movsx       eax,al
 0051B8D5    add         eax,dword ptr [ebp-14]
 0051B8D8    mov         edx,dword ptr [ebp-30]
 0051B8DB    call        00513104
 0051B8E0    mov         dword ptr [ebp-20],eax
 0051B8E3    mov         edx,dword ptr [ebp-34]
 0051B8E6    mov         eax,dword ptr [ebp-18]
 0051B8E9    call        00513104
 0051B8EE    mov         edx,dword ptr [ebp-4C]
 0051B8F1    imul        dword ptr [edx+34]
 0051B8F4    mov         dword ptr [ebp-24],eax
 0051B8F7    mov         eax,dword ptr [ebp-8]
 0051B8FA    call        004374DC
 0051B8FF    movsx       eax,al
 0051B902    add         eax,dword ptr [ebp-18]
 0051B905    mov         edx,dword ptr [ebp-34]
 0051B908    call        00513104
 0051B90D    mov         edx,dword ptr [ebp-4C]
 0051B910    imul        dword ptr [edx+34]
 0051B913    mov         dword ptr [ebp-28],eax
 0051B916    mov         eax,dword ptr [ebp-4C]
 0051B919    mov         eax,dword ptr [eax+40]
 0051B91C    mov         dword ptr [ebp-48],eax
 0051B91F    mov         eax,dword ptr [ebp-1C]
 0051B922    add         eax,dword ptr [ebp-24]
 0051B925    mov         edx,dword ptr [ebp-48]
 0051B928    mov         eax,dword ptr [edx+eax*4]
 0051B92B    mov         dword ptr [ebp-38],eax
 0051B92E    mov         eax,dword ptr [ebp-20]
 0051B931    add         eax,dword ptr [ebp-24]
 0051B934    mov         edx,dword ptr [ebp-48]
 0051B937    mov         eax,dword ptr [edx+eax*4]
 0051B93A    mov         dword ptr [ebp-3C],eax
 0051B93D    mov         eax,dword ptr [ebp-1C]
 0051B940    add         eax,dword ptr [ebp-28]
 0051B943    mov         edx,dword ptr [ebp-48]
 0051B946    mov         eax,dword ptr [edx+eax*4]
 0051B949    mov         dword ptr [ebp-40],eax
 0051B94C    mov         eax,dword ptr [ebp-20]
 0051B94F    add         eax,dword ptr [ebp-28]
 0051B952    mov         edx,dword ptr [ebp-48]
 0051B955    mov         eax,dword ptr [edx+eax*4]
 0051B958    mov         dword ptr [ebp-44],eax
 0051B95B    mov         eax,dword ptr [ebp-50]
 0051B95E    mov         eax,dword ptr [eax]
 0051B960    call        0051DC34
 0051B965    cmp         eax,dword ptr [ebp-4]
>0051B968    jl          0051B97A
 0051B96A    and         dword ptr [ebp-38],0FFFFFF
 0051B971    and         dword ptr [ebp-40],0FFFFFF
>0051B978    jmp         0051B990
 0051B97A    mov         eax,dword ptr [ebp-14]
 0051B97D    cmp         eax,dword ptr [ebp-30]
>0051B980    jne         0051B990
 0051B982    and         dword ptr [ebp-3C],0FFFFFF
 0051B989    and         dword ptr [ebp-44],0FFFFFF
 0051B990    mov         eax,dword ptr [ebp-50]
 0051B993    mov         eax,dword ptr [eax+4]
 0051B996    call        0051DC34
 0051B99B    cmp         eax,dword ptr [ebp-8]
>0051B99E    jl          0051B9B0
 0051B9A0    and         dword ptr [ebp-38],0FFFFFF
 0051B9A7    and         dword ptr [ebp-3C],0FFFFFF
>0051B9AE    jmp         0051B9C6
 0051B9B0    mov         eax,dword ptr [ebp-18]
 0051B9B3    cmp         eax,dword ptr [ebp-34]
>0051B9B6    jne         0051B9C6
 0051B9B8    and         dword ptr [ebp-40],0FFFFFF
 0051B9BF    and         dword ptr [ebp-44],0FFFFFF
 0051B9C6    mov         eax,dword ptr [ebp-4]
 0051B9C9    shr         eax,8
 0051B9CC    and         eax,0FF
 0051B9D1    xor         eax,0FF
 0051B9D6    mov         edx,dword ptr ds:[56E528];^gvar_00597AA8
 0051B9DC    movzx       eax,byte ptr [edx+eax]
 0051B9E0    mov         dword ptr [ebp-2C],eax
 0051B9E3    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 0051B9E9    mov         ebx,dword ptr [ebx]
 0051B9EB    mov         ecx,dword ptr [ebp-2C]
 0051B9EE    mov         edx,dword ptr [ebp-44]
 0051B9F1    mov         eax,dword ptr [ebp-40]
 0051B9F4    call        ebx
 0051B9F6    push        eax
 0051B9F7    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 0051B9FD    mov         ebx,dword ptr [ebx]
 0051B9FF    mov         ecx,dword ptr [ebp-2C]
 0051BA02    mov         edx,dword ptr [ebp-3C]
 0051BA05    mov         eax,dword ptr [ebp-38]
 0051BA08    call        ebx
 0051BA0A    mov         edx,dword ptr [ebp-8]
 0051BA0D    shr         edx,8
 0051BA10    and         edx,0FF
 0051BA16    xor         edx,0FF
 0051BA1C    mov         ecx,dword ptr ds:[56E528];^gvar_00597AA8
 0051BA22    movzx       ecx,byte ptr [ecx+edx]
 0051BA26    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 0051BA2C    mov         ebx,dword ptr [ebx]
 0051BA2E    pop         edx
 0051BA2F    call        ebx
 0051BA31    mov         dword ptr [ebp-10],eax
 0051BA34    call        00513ACC
>0051BA39    jmp         0051BA40
 0051BA3B    xor         eax,eax
 0051BA3D    mov         dword ptr [ebp-10],eax
 0051BA40    mov         eax,dword ptr [ebp-10]
 0051BA43    pop         ebx
 0051BA44    mov         esp,ebp
 0051BA46    pop         ebp
 0051BA47    ret
end;*}

//0051BA48
procedure sub_0051BA48;
begin
{*
 0051BA48    push        ebp
 0051BA49    mov         ebp,esp
 0051BA4B    push        ecx
 0051BA4C    mov         dword ptr [ebp-4],eax
 0051BA4F    mov         eax,dword ptr [ebp-4]
 0051BA52    call        0051A5E8
 0051BA57    mov         eax,dword ptr [ebp-4]
 0051BA5A    mov         al,byte ptr [eax+28];TLinearResampler.PixelAccessMode:TPixelAccessMode
 0051BA5D    sub         al,1
>0051BA5F    jb          0051BA6D
>0051BA61    je          0051BA83
 0051BA63    dec         al
>0051BA65    je          0051BA99
 0051BA67    dec         al
>0051BA69    je          0051BAAF
>0051BA6B    jmp         0051BABF
 0051BA6D    mov         eax,dword ptr [ebp-4]
 0051BA70    mov         eax,dword ptr [eax+10];TLinearResampler.?f10:dword
 0051BA73    mov         edx,dword ptr [ebp-4]
 0051BA76    mov         dword ptr [edx+3C],eax;TLinearResampler.?f3C:TLinearResampler
 0051BA79    mov         dword ptr [edx+38],520184;TLinearResampler.?f38:? sub_00520184
 0051BA80    pop         ecx
 0051BA81    pop         ebp
 0051BA82    ret
 0051BA83    mov         eax,dword ptr [ebp-4]
 0051BA86    mov         eax,dword ptr [eax+10];TLinearResampler.?f10:dword
 0051BA89    mov         edx,dword ptr [ebp-4]
 0051BA8C    mov         dword ptr [edx+3C],eax;TLinearResampler.?f3C:TLinearResampler
 0051BA8F    mov         dword ptr [edx+38],5201C0;TLinearResampler.?f38:? sub_005201C0
 0051BA96    pop         ecx
 0051BA97    pop         ebp
 0051BA98    ret
 0051BA99    mov         eax,dword ptr [ebp-4]
 0051BA9C    mov         eax,dword ptr [eax+10];TLinearResampler.?f10:dword
 0051BA9F    mov         edx,dword ptr [ebp-4]
 0051BAA2    mov         dword ptr [edx+3C],eax;TLinearResampler.?f3C:TLinearResampler
 0051BAA5    mov         dword ptr [edx+38],52026C;TLinearResampler.?f38:? sub_0052026C
 0051BAAC    pop         ecx
 0051BAAD    pop         ebp
 0051BAAE    ret
 0051BAAF    mov         eax,dword ptr [ebp-4]
 0051BAB2    mov         edx,dword ptr [ebp-4]
 0051BAB5    mov         dword ptr [edx+3C],eax;TLinearResampler.?f3C:TLinearResampler
 0051BAB8    mov         dword ptr [edx+38],51B7F8;TLinearResampler.?f38:? sub_0051B7F8
 0051BABF    pop         ecx
 0051BAC0    pop         ebp
 0051BAC1    ret
*}
end;

//0051BAC4
procedure sub_0051BAC4;
begin
{*
 0051BAC4    push        ebp
 0051BAC5    mov         ebp,esp
 0051BAC7    add         esp,0FFFFFFF8
 0051BACA    mov         dword ptr [ebp-4],eax
 0051BACD    mov         dword ptr [ebp-8],3F800000
 0051BAD4    fld         dword ptr [ebp-8]
 0051BAD7    pop         ecx
 0051BAD8    pop         ecx
 0051BAD9    pop         ebp
 0051BADA    ret
*}
end;

//0051BADC
{*procedure sub_0051BADC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0051BADC    push        ebp
 0051BADD    mov         ebp,esp
 0051BADF    add         esp,0FFFFFFB4
 0051BAE2    push        esi
 0051BAE3    push        edi
 0051BAE4    mov         esi,dword ptr [ebp+14]
 0051BAE7    lea         edi,[ebp-48]
 0051BAEA    movs        dword ptr [edi],dword ptr [esi]
 0051BAEB    movs        dword ptr [edi],dword ptr [esi]
 0051BAEC    movs        dword ptr [edi],dword ptr [esi]
 0051BAED    movs        dword ptr [edi],dword ptr [esi]
 0051BAEE    mov         esi,dword ptr [ebp+1C]
 0051BAF1    lea         edi,[ebp-38]
 0051BAF4    movs        dword ptr [edi],dword ptr [esi]
 0051BAF5    movs        dword ptr [edi],dword ptr [esi]
 0051BAF6    movs        dword ptr [edi],dword ptr [esi]
 0051BAF7    movs        dword ptr [edi],dword ptr [esi]
 0051BAF8    mov         esi,ecx
 0051BAFA    lea         edi,[ebp-28]
 0051BAFD    movs        dword ptr [edi],dword ptr [esi]
 0051BAFE    movs        dword ptr [edi],dword ptr [esi]
 0051BAFF    movs        dword ptr [edi],dword ptr [esi]
 0051BB00    movs        dword ptr [edi],dword ptr [esi]
 0051BB01    mov         dword ptr [ebp-8],edx
 0051BB04    mov         dword ptr [ebp-4],eax
 0051BB07    mov         eax,dword ptr [ebp-40]
 0051BB0A    sub         eax,dword ptr [ebp-48]
 0051BB0D    mov         dword ptr [ebp-4C],eax
 0051BB10    fild        dword ptr [ebp-4C]
 0051BB13    fstp        dword ptr [ebp-0C]
 0051BB16    wait
 0051BB17    mov         eax,dword ptr [ebp-3C]
 0051BB1A    sub         eax,dword ptr [ebp-44]
 0051BB1D    mov         dword ptr [ebp-4C],eax
 0051BB20    fild        dword ptr [ebp-4C]
 0051BB23    fstp        dword ptr [ebp-10]
 0051BB26    wait
 0051BB27    mov         eax,dword ptr [ebp-20]
 0051BB2A    sub         eax,dword ptr [ebp-28]
 0051BB2D    mov         dword ptr [ebp-14],eax
 0051BB30    mov         eax,dword ptr [ebp-1C]
 0051BB33    sub         eax,dword ptr [ebp-24]
 0051BB36    mov         dword ptr [ebp-18],eax
 0051BB39    fild        dword ptr [ebp-14]
 0051BB3C    fcomp       dword ptr [ebp-0C]
 0051BB3F    fnstsw      al
 0051BB41    sahf
>0051BB42    jbe         0051BB8D
 0051BB44    fild        dword ptr [ebp-18]
 0051BB47    fcomp       dword ptr [ebp-10]
 0051BB4A    fnstsw      al
 0051BB4C    sahf
>0051BB4D    jbe         0051BB8D
 0051BB4F    fld         dword ptr [ebp-0C]
 0051BB52    fcomp       dword ptr ds:[51BBBC];1:Single
 0051BB58    fnstsw      al
 0051BB5A    sahf
>0051BB5B    jbe         0051BB8D
 0051BB5D    fld         dword ptr [ebp-10]
 0051BB60    fcomp       dword ptr ds:[51BBBC];1:Single
 0051BB66    fnstsw      al
 0051BB68    sahf
>0051BB69    jbe         0051BB8D
 0051BB6B    mov         eax,dword ptr [ebp+18]
 0051BB6E    push        eax
 0051BB6F    lea         eax,[ebp-48]
 0051BB72    push        eax
 0051BB73    mov         al,byte ptr [ebp+10]
 0051BB76    push        eax
 0051BB77    push        dword ptr [ebp+0C]
 0051BB7A    push        dword ptr [ebp+8]
 0051BB7D    lea         ecx,[ebp-38]
 0051BB80    lea         edx,[ebp-28]
 0051BB83    mov         eax,dword ptr [ebp-8]
 0051BB86    call        00517A98
>0051BB8B    jmp         0051BBB4
 0051BB8D    mov         eax,dword ptr [ebp+18]
 0051BB90    push        eax
 0051BB91    lea         eax,[ebp-48]
 0051BB94    push        eax
 0051BB95    mov         eax,dword ptr [ebp-4]
 0051BB98    mov         eax,dword ptr [eax+30];TLinearResampler.?f30:TLinearKernel
 0051BB9B    push        eax
 0051BB9C    mov         al,byte ptr [ebp+10]
 0051BB9F    push        eax
 0051BBA0    push        dword ptr [ebp+0C]
 0051BBA3    push        dword ptr [ebp+8]
 0051BBA6    lea         ecx,[ebp-38]
 0051BBA9    lea         edx,[ebp-28]
 0051BBAC    mov         eax,dword ptr [ebp-8]
 0051BBAF    call        005187D4
 0051BBB4    pop         edi
 0051BBB5    pop         esi
 0051BBB6    mov         esp,ebp
 0051BBB8    pop         ebp
 0051BBB9    ret         18
end;*}

//0051BBC0
{*procedure sub_0051BBC0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0051BBC0    push        ebp
 0051BBC1    mov         ebp,esp
 0051BBC3    add         esp,0FFFFFFC8
 0051BBC6    push        esi
 0051BBC7    push        edi
 0051BBC8    mov         esi,dword ptr [ebp+14]
 0051BBCB    lea         edi,[ebp-38]
 0051BBCE    movs        dword ptr [edi],dword ptr [esi]
 0051BBCF    movs        dword ptr [edi],dword ptr [esi]
 0051BBD0    movs        dword ptr [edi],dword ptr [esi]
 0051BBD1    movs        dword ptr [edi],dword ptr [esi]
 0051BBD2    mov         esi,dword ptr [ebp+1C]
 0051BBD5    lea         edi,[ebp-28]
 0051BBD8    movs        dword ptr [edi],dword ptr [esi]
 0051BBD9    movs        dword ptr [edi],dword ptr [esi]
 0051BBDA    movs        dword ptr [edi],dword ptr [esi]
 0051BBDB    movs        dword ptr [edi],dword ptr [esi]
 0051BBDC    mov         esi,ecx
 0051BBDE    lea         edi,[ebp-18]
 0051BBE1    movs        dword ptr [edi],dword ptr [esi]
 0051BBE2    movs        dword ptr [edi],dword ptr [esi]
 0051BBE3    movs        dword ptr [edi],dword ptr [esi]
 0051BBE4    movs        dword ptr [edi],dword ptr [esi]
 0051BBE5    mov         dword ptr [ebp-8],edx
 0051BBE8    mov         dword ptr [ebp-4],eax
 0051BBEB    mov         eax,dword ptr [ebp+18]
 0051BBEE    push        eax
 0051BBEF    lea         eax,[ebp-38]
 0051BBF2    push        eax
 0051BBF3    mov         eax,dword ptr [ebp-4]
 0051BBF6    mov         eax,dword ptr [eax+30];TDraftResampler.?f30:TLinearKernel
 0051BBF9    push        eax
 0051BBFA    mov         al,byte ptr [ebp+10]
 0051BBFD    push        eax
 0051BBFE    push        dword ptr [ebp+0C]
 0051BC01    push        dword ptr [ebp+8]
 0051BC04    lea         ecx,[ebp-28]
 0051BC07    lea         edx,[ebp-18]
 0051BC0A    mov         eax,dword ptr [ebp-8]
 0051BC0D    call        00519070
 0051BC12    pop         edi
 0051BC13    pop         esi
 0051BC14    mov         esp,ebp
 0051BC16    pop         ebp
 0051BC17    ret         18
end;*}

//0051BC1C
{*function sub_0051BC1C(?:?; ?:?):?;
begin
 0051BC1C    push        ebp
 0051BC1D    mov         ebp,esp
 0051BC1F    add         esp,0FFFFFFE8
 0051BC22    push        ebx
 0051BC23    mov         dword ptr [ebp-0C],ecx
 0051BC26    mov         dword ptr [ebp-8],edx
 0051BC29    mov         dword ptr [ebp-4],eax
 0051BC2C    lea         eax,[ebp-14]
 0051BC2F    push        eax
 0051BC30    lea         eax,[ebp-18]
 0051BC33    push        eax
 0051BC34    mov         ecx,dword ptr [ebp-0C]
 0051BC37    shl         ecx,10
 0051BC3A    mov         edx,dword ptr [ebp-8]
 0051BC3D    shl         edx,10
 0051BC40    mov         ebx,dword ptr [ebp-4]
 0051BC43    mov         eax,dword ptr [ebx+44];TTransformer.?f44:TTransformation
 0051BC46    call        dword ptr [ebx+40]
 0051BC49    mov         ebx,dword ptr [ebp-4]
 0051BC4C    mov         ecx,dword ptr [ebp-18]
 0051BC4F    mov         edx,dword ptr [ebp-14]
 0051BC52    mov         eax,dword ptr [ebx+24];TTransformer.?f24:TCustomSampler
 0051BC55    call        dword ptr [ebx+20]
 0051BC58    mov         dword ptr [ebp-10],eax
 0051BC5B    mov         eax,dword ptr [ebp-10]
 0051BC5E    pop         ebx
 0051BC5F    mov         esp,ebp
 0051BC61    pop         ebp
 0051BC62    ret
end;*}

//0051BC64
{*function sub_0051BC64(?:?; ?:?):?;
begin
 0051BC64    push        ebp
 0051BC65    mov         ebp,esp
 0051BC67    add         esp,0FFFFFFE8
 0051BC6A    push        ebx
 0051BC6B    mov         dword ptr [ebp-0C],ecx
 0051BC6E    mov         dword ptr [ebp-8],edx
 0051BC71    mov         dword ptr [ebp-4],eax
 0051BC74    lea         eax,[ebp-14]
 0051BC77    push        eax
 0051BC78    lea         eax,[ebp-18]
 0051BC7B    push        eax
 0051BC7C    mov         ebx,dword ptr [ebp-4]
 0051BC7F    mov         ecx,dword ptr [ebp-0C]
 0051BC82    mov         edx,dword ptr [ebp-8]
 0051BC85    mov         eax,dword ptr [ebx+44];TTransformer.?f44:TTransformation
 0051BC88    call        dword ptr [ebx+40]
 0051BC8B    mov         ebx,dword ptr [ebp-4]
 0051BC8E    mov         ecx,dword ptr [ebp-18]
 0051BC91    mov         edx,dword ptr [ebp-14]
 0051BC94    mov         eax,dword ptr [ebx+24];TTransformer.?f24:TCustomSampler
 0051BC97    call        dword ptr [ebx+20]
 0051BC9A    mov         dword ptr [ebp-10],eax
 0051BC9D    mov         eax,dword ptr [ebp-10]
 0051BCA0    pop         ebx
 0051BCA1    mov         esp,ebp
 0051BCA3    pop         ebp
 0051BCA4    ret
end;*}

//0051BCA8
{*function sub_0051BCA8(?:?; ?:?):?;
begin
 0051BCA8    push        ebp
 0051BCA9    mov         ebp,esp
 0051BCAB    add         esp,0FFFFFFF0
 0051BCAE    push        ebx
 0051BCAF    mov         dword ptr [ebp-4],eax
 0051BCB2    push        dword ptr [ebp+0C]
 0051BCB5    push        dword ptr [ebp+8]
 0051BCB8    lea         ecx,[ebp-10]
 0051BCBB    lea         edx,[ebp-0C]
 0051BCBE    mov         ebx,dword ptr [ebp-4]
 0051BCC1    mov         eax,dword ptr [ebx+4C];TTransformer.?f4C:TTransformation
 0051BCC4    call        dword ptr [ebx+48]
 0051BCC7    push        dword ptr [ebp-0C]
 0051BCCA    push        dword ptr [ebp-10]
 0051BCCD    mov         ebx,dword ptr [ebp-4]
 0051BCD0    mov         eax,dword ptr [ebx+2C];TTransformer.?f2C:TCustomSampler
 0051BCD3    call        dword ptr [ebx+28]
 0051BCD6    mov         dword ptr [ebp-8],eax
 0051BCD9    mov         eax,dword ptr [ebp-8]
 0051BCDC    pop         ebx
 0051BCDD    mov         esp,ebp
 0051BCDF    pop         ebp
 0051BCE0    ret         8
end;*}

//0051BCE4
procedure TTransformer.SetTransformation(Value:TTransformation);
begin
{*
 0051BCE4    push        ebp
 0051BCE5    mov         ebp,esp
 0051BCE7    add         esp,0FFFFFFF8
 0051BCEA    mov         dword ptr [ebp-8],edx
 0051BCED    mov         dword ptr [ebp-4],eax
 0051BCF0    mov         eax,dword ptr [ebp-8]
 0051BCF3    mov         edx,dword ptr [ebp-4]
 0051BCF6    mov         dword ptr [edx+30],eax;TTransformer.Transformation:TTransformation
 0051BCF9    mov         eax,dword ptr [ebp-4]
 0051BCFC    mov         eax,dword ptr [eax+30];TTransformer.Transformation:TTransformation
 0051BCFF    mov         edx,dword ptr [ebp-4]
 0051BD02    mov         dword ptr [edx+3C],eax;TTransformer.?f3C:TTransformation
 0051BD05    mov         eax,dword ptr [eax]
 0051BD07    mov         eax,dword ptr [eax+1C];TTransformation.?f1C:dword
 0051BD0A    mov         dword ptr [edx+38],eax;TTransformer.?f38:dword
 0051BD0D    mov         eax,dword ptr [ebp-4]
 0051BD10    mov         eax,dword ptr [eax+30];TTransformer.Transformation:TTransformation
 0051BD13    mov         edx,dword ptr [ebp-4]
 0051BD16    mov         dword ptr [edx+44],eax;TTransformer.?f44:TTransformation
 0051BD19    mov         eax,dword ptr [eax]
 0051BD1B    mov         eax,dword ptr [eax+20];TTransformation.?f20:dword
 0051BD1E    mov         dword ptr [edx+40],eax;TTransformer.?f40:dword
 0051BD21    mov         eax,dword ptr [ebp-4]
 0051BD24    mov         eax,dword ptr [eax+30];TTransformer.Transformation:TTransformation
 0051BD27    mov         edx,dword ptr [ebp-4]
 0051BD2A    mov         dword ptr [edx+4C],eax;TTransformer.?f4C:TTransformation
 0051BD2D    mov         eax,dword ptr [eax]
 0051BD2F    mov         eax,dword ptr [eax+24]
 0051BD32    mov         dword ptr [edx+48],eax;TTransformer.?f48:dword
 0051BD35    pop         ecx
 0051BD36    pop         ecx
 0051BD37    pop         ebp
 0051BD38    ret
*}
end;

//0051BD3C
procedure sub_0051BD3C;
begin
{*
 0051BD3C    push        ebp
 0051BD3D    mov         ebp,esp
 0051BD3F    add         esp,0FFFFFFF8
 0051BD42    mov         dword ptr [ebp-4],eax
 0051BD45    mov         eax,dword ptr [ebp-4]
 0051BD48    call        0051C0C8
 0051BD4D    mov         eax,dword ptr [ebp-4]
 0051BD50    mov         eax,dword ptr [eax+30];TTransformer.Transformation:TTransformation
 0051BD53    mov         dword ptr [ebp-8],eax
 0051BD56    mov         eax,dword ptr [ebp-8]
 0051BD59    cmp         byte ptr [eax+20],0;TTransformation.?f20:dword
>0051BD5D    jne         0051BD67
 0051BD5F    mov         eax,dword ptr [ebp-8]
 0051BD62    mov         edx,dword ptr [eax]
 0051BD64    call        dword ptr [edx+18];TTransformation.sub_0051C47C
 0051BD67    pop         ecx
 0051BD68    pop         ecx
 0051BD69    pop         ebp
 0051BD6A    ret
*}
end;

//0051BD6C
{*procedure sub_0051BD6C(?:?);
begin
 0051BD6C    push        ebp
 0051BD6D    mov         ebp,esp
 0051BD6F    add         esp,0FFFFFFD8
 0051BD72    push        ebx
 0051BD73    mov         dword ptr [ebp-8],edx
 0051BD76    mov         dword ptr [ebp-4],eax
 0051BD79    lea         edx,[ebp-28]
 0051BD7C    mov         eax,dword ptr [ebp-4]
 0051BD7F    call        0051C008
 0051BD84    lea         eax,[ebp-28]
 0051BD87    lea         edx,[ebp-18]
 0051BD8A    call        0051DF94
 0051BD8F    lea         edx,[ebp-18]
 0051BD92    mov         ecx,dword ptr [ebp-8]
 0051BD95    mov         eax,dword ptr [ebp-4]
 0051BD98    mov         eax,dword ptr [eax+30];TTransformer.Transformation:TTransformation
 0051BD9B    mov         ebx,dword ptr [eax]
 0051BD9D    call        dword ptr [ebx+38];TTransformation.sub_0051C448
 0051BDA0    pop         ebx
 0051BDA1    mov         esp,ebp
 0051BDA3    pop         ebp
 0051BDA4    ret
end;*}

//0051BDA8
{*function sub_0051BDA8:?;
begin
 0051BDA8    push        ebp
 0051BDA9    mov         ebp,esp
 0051BDAB    add         esp,0FFFFFFF8
 0051BDAE    mov         dword ptr [ebp-4],eax
 0051BDB1    mov         eax,dword ptr [ebp-4]
 0051BDB4    mov         eax,dword ptr [eax+30];TTransformer.Transformation:TTransformation
 0051BDB7    mov         edx,dword ptr [eax]
 0051BDB9    call        dword ptr [edx+34];TTransformation.sub_0051C468
 0051BDBC    test        al,al
>0051BDBE    je          0051BDCC
 0051BDC0    mov         eax,dword ptr [ebp-4]
 0051BDC3    call        0051C068
 0051BDC8    test        al,al
>0051BDCA    jne         0051BDD0
 0051BDCC    xor         eax,eax
>0051BDCE    jmp         0051BDD2
 0051BDD0    mov         al,1
 0051BDD2    mov         byte ptr [ebp-5],al
 0051BDD5    mov         al,byte ptr [ebp-5]
 0051BDD8    pop         ecx
 0051BDD9    pop         ecx
 0051BDDA    pop         ebp
 0051BDDB    ret
end;*}

//0051BDDC
{*function sub_0051BDDC(?:?; ?:?):?;
begin
 0051BDDC    push        ebp
 0051BDDD    mov         ebp,esp
 0051BDDF    add         esp,0FFFFFFE8
 0051BDE2    push        ebx
 0051BDE3    mov         dword ptr [ebp-0C],ecx
 0051BDE6    mov         dword ptr [ebp-8],edx
 0051BDE9    mov         dword ptr [ebp-4],eax
 0051BDEC    lea         eax,[ebp-14]
 0051BDEF    push        eax
 0051BDF0    lea         eax,[ebp-18]
 0051BDF3    push        eax
 0051BDF4    mov         ebx,dword ptr [ebp-4]
 0051BDF7    mov         ecx,dword ptr [ebp-0C]
 0051BDFA    mov         edx,dword ptr [ebp-8]
 0051BDFD    mov         eax,dword ptr [ebx+3C];TNearestTransformer.?f3C:TTransformation
 0051BE00    call        dword ptr [ebx+38]
 0051BE03    mov         ebx,dword ptr [ebp-4]
 0051BE06    mov         ecx,dword ptr [ebp-18]
 0051BE09    mov         edx,dword ptr [ebp-14]
 0051BE0C    mov         eax,dword ptr [ebx+1C];TNearestTransformer.?f1C:TCustomSampler
 0051BE0F    call        dword ptr [ebx+18]
 0051BE12    mov         dword ptr [ebp-10],eax
 0051BE15    mov         eax,dword ptr [ebp-10]
 0051BE18    pop         ebx
 0051BE19    mov         esp,ebp
 0051BE1B    pop         ebp
 0051BE1C    ret
end;*}

//0051BE20
{*function sub_0051BE20(?:?; ?:?):?;
begin
 0051BE20    push        ebp
 0051BE21    mov         ebp,esp
 0051BE23    add         esp,0FFFFFFE8
 0051BE26    push        ebx
 0051BE27    mov         dword ptr [ebp-0C],ecx
 0051BE2A    mov         dword ptr [ebp-8],edx
 0051BE2D    mov         dword ptr [ebp-4],eax
 0051BE30    lea         eax,[ebp-14]
 0051BE33    push        eax
 0051BE34    lea         eax,[ebp-18]
 0051BE37    push        eax
 0051BE38    mov         ebx,dword ptr [ebp-4]
 0051BE3B    mov         ecx,dword ptr [ebp-0C]
 0051BE3E    mov         edx,dword ptr [ebp-8]
 0051BE41    mov         eax,dword ptr [ebx+44];TNearestTransformer.?f44:TTransformation
 0051BE44    call        dword ptr [ebx+40]
 0051BE47    mov         ecx,dword ptr [ebp-18]
 0051BE4A    shr         ecx,10
 0051BE4D    mov         edx,dword ptr [ebp-14]
 0051BE50    shr         edx,10
 0051BE53    mov         ebx,dword ptr [ebp-4]
 0051BE56    mov         eax,dword ptr [ebx+1C];TNearestTransformer.?f1C:TCustomSampler
 0051BE59    call        dword ptr [ebx+18]
 0051BE5C    mov         dword ptr [ebp-10],eax
 0051BE5F    mov         eax,dword ptr [ebp-10]
 0051BE62    pop         ebx
 0051BE63    mov         esp,ebp
 0051BE65    pop         ebp
 0051BE66    ret
end;*}

//0051BE68
{*function sub_0051BE68(?:?; ?:?):?;
begin
 0051BE68    push        ebp
 0051BE69    mov         ebp,esp
 0051BE6B    add         esp,0FFFFFFF0
 0051BE6E    push        ebx
 0051BE6F    mov         dword ptr [ebp-4],eax
 0051BE72    push        dword ptr [ebp+0C]
 0051BE75    push        dword ptr [ebp+8]
 0051BE78    lea         ecx,[ebp-10]
 0051BE7B    lea         edx,[ebp-0C]
 0051BE7E    mov         ebx,dword ptr [ebp-4]
 0051BE81    mov         eax,dword ptr [ebx+4C];TNearestTransformer.?f4C:TTransformation
 0051BE84    call        dword ptr [ebx+48]
 0051BE87    fld         dword ptr [ebp-10]
 0051BE8A    call        @ROUND
 0051BE8F    push        eax
 0051BE90    fld         dword ptr [ebp-0C]
 0051BE93    call        @ROUND
 0051BE98    mov         edx,eax
 0051BE9A    mov         ebx,dword ptr [ebp-4]
 0051BE9D    pop         ecx
 0051BE9E    mov         eax,dword ptr [ebx+1C];TNearestTransformer.?f1C:TCustomSampler
 0051BEA1    call        dword ptr [ebx+18]
 0051BEA4    mov         dword ptr [ebp-8],eax
 0051BEA7    mov         eax,dword ptr [ebp-8]
 0051BEAA    pop         ebx
 0051BEAB    mov         esp,ebp
 0051BEAD    pop         ebp
 0051BEAE    ret         8
end;*}

//0051BEB4
procedure sub_0051BEB4(?:TBitmap32Resampler);
begin
{*
 0051BEB4    push        ebp
 0051BEB5    mov         ebp,esp
 0051BEB7    push        ecx
 0051BEB8    mov         dword ptr [ebp-4],eax
 0051BEBB    cmp         dword ptr ds:[597A6C],0;gvar_00597A6C:TClassList
>0051BEC2    jne         0051BED5
 0051BEC4    mov         dl,1
 0051BEC6    mov         eax,[00514C7C];TClassList
 0051BECB    call        TObject.Create;TClassList.Create
 0051BED0    mov         [00597A6C],eax;gvar_00597A6C:TClassList
 0051BED5    mov         edx,dword ptr [ebp-4]
 0051BED8    mov         eax,[00597A6C];0x0 gvar_00597A6C:TClassList
 0051BEDD    call        005155D4
 0051BEE2    pop         ecx
 0051BEE3    pop         ebp
 0051BEE4    ret
*}
end;

//0051BEE8
procedure sub_0051BEE8(?:TCustomKernel);
begin
{*
 0051BEE8    push        ebp
 0051BEE9    mov         ebp,esp
 0051BEEB    push        ecx
 0051BEEC    mov         dword ptr [ebp-4],eax
 0051BEEF    cmp         dword ptr ds:[597A68],0;gvar_00597A68:TClassList
>0051BEF6    jne         0051BF09
 0051BEF8    mov         dl,1
 0051BEFA    mov         eax,[00514C7C];TClassList
 0051BEFF    call        TObject.Create;TClassList.Create
 0051BF04    mov         [00597A68],eax;gvar_00597A68:TClassList
 0051BF09    mov         edx,dword ptr [ebp-4]
 0051BF0C    mov         eax,[00597A68];0x0 gvar_00597A68:TClassList
 0051BF11    call        005155D4
 0051BF16    pop         ecx
 0051BF17    pop         ebp
 0051BF18    ret
*}
end;

//0051BF1C
{*procedure sub_0051BF1C(?:?);
begin
 0051BF1C    push        ebp
 0051BF1D    mov         ebp,esp
 0051BF1F    add         esp,0FFFFFFF8
 0051BF22    mov         dword ptr [ebp-8],edx
 0051BF25    mov         dword ptr [ebp-4],eax
 0051BF28    mov         eax,dword ptr [ebp-8]
 0051BF2B    mov         edx,dword ptr ds:[516A7C];TNestedSampler
 0051BF31    call        @IsClass
 0051BF36    test        al,al
>0051BF38    je          0051BF4D
 0051BF3A    mov         ecx,dword ptr ds:[51BF5C];0x3FEFE gvar_0051BF5C
 0051BF40    mov         edx,dword ptr [ebp-8]
 0051BF43    mov         eax,dword ptr [ebp-4]
 0051BF46    call        00514CE4
>0051BF4B    jmp         0051BF58
 0051BF4D    mov         edx,dword ptr [ebp-8]
 0051BF50    mov         eax,dword ptr [ebp-4]
 0051BF53    call        00420BD8
 0051BF58    pop         ecx
 0051BF59    pop         ecx
 0051BF5A    pop         ebp
 0051BF5B    ret
end;*}

//0051BF60
constructor sub_0051BF60;
begin
{*
 0051BF60    push        ebp
 0051BF61    mov         ebp,esp
 0051BF63    add         esp,0FFFFFFF4
 0051BF66    test        dl,dl
>0051BF68    je          0051BF72
 0051BF6A    add         esp,0FFFFFFF0
 0051BF6D    call        @ClassCreate
 0051BF72    mov         dword ptr [ebp-0C],ecx
 0051BF75    mov         byte ptr [ebp-5],dl
 0051BF78    mov         dword ptr [ebp-4],eax
 0051BF7B    xor         edx,edx
 0051BF7D    mov         eax,dword ptr [ebp-4]
 0051BF80    call        TObject.Create
 0051BF85    mov         edx,dword ptr [ebp-0C]
 0051BF88    mov         eax,dword ptr [ebp-4]
 0051BF8B    call        TNestedSampler.SetSampler
 0051BF90    mov         eax,dword ptr [ebp-4]
 0051BF93    cmp         byte ptr [ebp-5],0
>0051BF97    je          0051BFA8
 0051BF99    call        @AfterConstruction
 0051BF9E    pop         dword ptr fs:[0]
 0051BFA5    add         esp,0C
 0051BFA8    mov         eax,dword ptr [ebp-4]
 0051BFAB    mov         esp,ebp
 0051BFAD    pop         ebp
 0051BFAE    ret
*}
end;

//0051BFB0
procedure sub_0051BFB0;
begin
{*
 0051BFB0    push        ebp
 0051BFB1    mov         ebp,esp
 0051BFB3    push        ecx
 0051BFB4    mov         dword ptr [ebp-4],eax
 0051BFB7    mov         eax,dword ptr [ebp-4]
 0051BFBA    cmp         dword ptr [eax+10],0;TNestedSampler.Sampler:TCustomSampler
>0051BFBE    jne         0051BFD9
 0051BFC0    mov         ecx,51BFF0;'Nested sampler is nil'
 0051BFC5    mov         dl,1
 0051BFC7    mov         eax,[00515990];ENestedException
 0051BFCC    call        Exception.Create;ENestedException.Create
 0051BFD1    call        @RaiseExcept
 0051BFD6    pop         ecx
 0051BFD7    pop         ebp
 0051BFD8    ret
 0051BFD9    mov         eax,dword ptr [ebp-4]
 0051BFDC    mov         eax,dword ptr [eax+10];TNestedSampler.Sampler:TCustomSampler
 0051BFDF    mov         edx,dword ptr [eax]
 0051BFE1    call        dword ptr [edx+28];TCustomSampler.sub_005234D8
 0051BFE4    pop         ecx
 0051BFE5    pop         ebp
 0051BFE6    ret
*}
end;

//0051C008
{*procedure sub_0051C008(?:?);
begin
 0051C008    push        ebp
 0051C009    mov         ebp,esp
 0051C00B    add         esp,0FFFFFFF8
 0051C00E    mov         dword ptr [ebp-8],edx
 0051C011    mov         dword ptr [ebp-4],eax
 0051C014    mov         eax,dword ptr [ebp-4]
 0051C017    cmp         dword ptr [eax+10],0;TNestedSampler.Sampler:TCustomSampler
>0051C01B    jne         0051C035
 0051C01D    mov         ecx,51C050;'Nested sampler is nil'
 0051C022    mov         dl,1
 0051C024    mov         eax,[00515990];ENestedException
 0051C029    call        Exception.Create;ENestedException.Create
 0051C02E    call        @RaiseExcept
>0051C033    jmp         0051C043
 0051C035    mov         edx,dword ptr [ebp-8]
 0051C038    mov         eax,dword ptr [ebp-4]
 0051C03B    mov         eax,dword ptr [eax+10];TNestedSampler.Sampler:TCustomSampler
 0051C03E    mov         ecx,dword ptr [eax]
 0051C040    call        dword ptr [ecx+30];TCustomSampler.sub_005234F8
 0051C043    pop         ecx
 0051C044    pop         ecx
 0051C045    pop         ebp
 0051C046    ret
end;*}

//0051C068
{*function sub_0051C068:?;
begin
 0051C068    push        ebp
 0051C069    mov         ebp,esp
 0051C06B    add         esp,0FFFFFFF8
 0051C06E    mov         dword ptr [ebp-4],eax
 0051C071    mov         eax,dword ptr [ebp-4]
 0051C074    cmp         dword ptr [eax+10],0;TNestedSampler.Sampler:TCustomSampler
>0051C078    jne         0051C092
 0051C07A    mov         ecx,51C0B0;'Nested sampler is nil'
 0051C07F    mov         dl,1
 0051C081    mov         eax,[00515990];ENestedException
 0051C086    call        Exception.Create;ENestedException.Create
 0051C08B    call        @RaiseExcept
>0051C090    jmp         0051C0A0
 0051C092    mov         eax,dword ptr [ebp-4]
 0051C095    mov         eax,dword ptr [eax+10];TNestedSampler.Sampler:TCustomSampler
 0051C098    mov         edx,dword ptr [eax]
 0051C09A    call        dword ptr [edx+2C];TCustomSampler.sub_005234E4
 0051C09D    mov         byte ptr [ebp-5],al
 0051C0A0    mov         al,byte ptr [ebp-5]
 0051C0A3    pop         ecx
 0051C0A4    pop         ecx
 0051C0A5    pop         ebp
 0051C0A6    ret
end;*}

//0051C0C8
procedure sub_0051C0C8;
begin
{*
 0051C0C8    push        ebp
 0051C0C9    mov         ebp,esp
 0051C0CB    push        ecx
 0051C0CC    mov         dword ptr [ebp-4],eax
 0051C0CF    mov         eax,dword ptr [ebp-4]
 0051C0D2    cmp         dword ptr [eax+10],0;TNestedSampler.Sampler:TCustomSampler
>0051C0D6    jne         0051C0F1
 0051C0D8    mov         ecx,51C108;'Nested sampler is nil'
 0051C0DD    mov         dl,1
 0051C0DF    mov         eax,[00515990];ENestedException
 0051C0E4    call        Exception.Create;ENestedException.Create
 0051C0E9    call        @RaiseExcept
 0051C0EE    pop         ecx
 0051C0EF    pop         ebp
 0051C0F0    ret
 0051C0F1    mov         eax,dword ptr [ebp-4]
 0051C0F4    mov         eax,dword ptr [eax+10];TNestedSampler.Sampler:TCustomSampler
 0051C0F7    mov         edx,dword ptr [eax]
 0051C0F9    call        dword ptr [edx+24];TCustomSampler.sub_005234CC
 0051C0FC    pop         ecx
 0051C0FD    pop         ebp
 0051C0FE    ret
*}
end;

//0051C120
procedure TNestedSampler.SetSampler(Value:TCustomSampler);
begin
{*
 0051C120    push        ebp
 0051C121    mov         ebp,esp
 0051C123    add         esp,0FFFFFFF8
 0051C126    mov         dword ptr [ebp-8],edx
 0051C129    mov         dword ptr [ebp-4],eax
 0051C12C    mov         eax,dword ptr [ebp-8]
 0051C12F    mov         edx,dword ptr [ebp-4]
 0051C132    mov         dword ptr [edx+10],eax;TNestedSampler.Sampler:TCustomSampler
 0051C135    mov         eax,dword ptr [ebp-4]
 0051C138    mov         eax,dword ptr [eax+10];TNestedSampler.Sampler:TCustomSampler
 0051C13B    mov         edx,dword ptr [ebp-4]
 0051C13E    mov         dword ptr [edx+1C],eax;TNestedSampler.?f1C:TCustomSampler
 0051C141    mov         eax,dword ptr [eax]
 0051C143    mov         eax,dword ptr [eax+18]
 0051C146    mov         dword ptr [edx+18],eax;TNestedSampler.?f18:dword
 0051C149    mov         eax,dword ptr [ebp-4]
 0051C14C    mov         eax,dword ptr [eax+10];TNestedSampler.Sampler:TCustomSampler
 0051C14F    mov         edx,dword ptr [ebp-4]
 0051C152    mov         dword ptr [edx+24],eax;TNestedSampler.?f24:TCustomSampler
 0051C155    mov         eax,dword ptr [eax]
 0051C157    mov         eax,dword ptr [eax+1C]
 0051C15A    mov         dword ptr [edx+20],eax;TNestedSampler.?f20:dword
 0051C15D    mov         eax,dword ptr [ebp-4]
 0051C160    mov         eax,dword ptr [eax+10];TNestedSampler.Sampler:TCustomSampler
 0051C163    mov         edx,dword ptr [ebp-4]
 0051C166    mov         dword ptr [edx+2C],eax;TNestedSampler.?f2C:TCustomSampler
 0051C169    mov         eax,dword ptr [eax]
 0051C16B    mov         eax,dword ptr [eax+20]
 0051C16E    mov         dword ptr [edx+28],eax;TNestedSampler.?f28:dword
 0051C171    pop         ecx
 0051C172    pop         ecx
 0051C173    pop         ebp
 0051C174    ret
*}
end;

//0051C178
procedure sub_0051C178;
begin
{*
 0051C178    push        ebp
 0051C179    mov         ebp,esp
 0051C17B    push        ecx
 0051C17C    call        00512A54
 0051C181    mov         byte ptr [ebp-1],al
 0051C184    call        00512A7C
 0051C189    mov         byte ptr [ebp-2],al
 0051C18C    cmp         byte ptr [ebp-2],0
>0051C190    je          0051C1A9
 0051C192    mov         dword ptr ds:[597A74],518ED8
 0051C19C    mov         dword ptr ds:[597A78],51955C
 0051C1A6    pop         ecx
 0051C1A7    pop         ebp
 0051C1A8    ret
 0051C1A9    cmp         byte ptr [ebp-1],0
>0051C1AD    je          0051C1C5
 0051C1AF    mov         dword ptr ds:[597A74],518E3C
 0051C1B9    mov         dword ptr ds:[597A78],51955C
>0051C1C3    jmp         0051C1D9
 0051C1C5    mov         dword ptr ds:[597A74],518F7C
 0051C1CF    mov         dword ptr ds:[597A78],5195D0
 0051C1D9    pop         ecx
 0051C1DA    pop         ebp
 0051C1DB    ret
*}
end;

Initialization
//0051C220
{*
 0051C220    sub         dword ptr ds:[597A70],1
>0051C227    jae         0051C2DC
 0051C22D    call        0051C178
 0051C232    mov         eax,[00516634];TNearestResampler
 0051C237    call        0051BEB4
 0051C23C    mov         eax,[0051670C];TLinearResampler
 0051C241    call        0051BEB4
 0051C246    mov         eax,[005167E4];TDraftResampler
 0051C24B    call        0051BEB4
 0051C250    mov         eax,[00516910];TKernelResampler
 0051C255    call        0051BEB4
 0051C25A    mov         eax,[00515A98];TBoxKernel
 0051C25F    call        0051BEE8
 0051C264    mov         eax,[00515B38];TLinearKernel
 0051C269    call        0051BEE8
 0051C26E    mov         eax,[00515BE0];TCosineKernel
 0051C273    call        0051BEE8
 0051C278    mov         eax,[00515C88];TSplineKernel
 0051C27D    call        0051BEE8
 0051C282    mov         eax,[00515DDC];TCubicKernel
 0051C287    call        0051BEE8
 0051C28C    mov         eax,[00515D30];TMitchellKernel
 0051C291    call        0051BEE8
 0051C296    mov         eax,[00516068];TLanczosKernel
 0051C29B    call        0051BEE8
 0051C2A0    mov         eax,[00516114];TGaussianKernel
 0051C2A5    call        0051BEE8
 0051C2AA    mov         eax,[005161E4];TBlackmanKernel
 0051C2AF    call        0051BEE8
 0051C2B4    mov         eax,[00516294];THannKernel
 0051C2B9    call        0051BEE8
 0051C2BE    mov         eax,[0051633C];THammingKernel
 0051C2C3    call        0051BEE8
 0051C2C8    mov         eax,[005163E8];TSinshKernel
 0051C2CD    call        0051BEE8
 0051C2D2    mov         eax,[00515EA4];THermiteKernel
 0051C2D7    call        0051BEE8
 0051C2DC    ret
*}
Finalization
//0051C1DC
{*
 0051C1DC    push        ebp
 0051C1DD    mov         ebp,esp
 0051C1DF    xor         eax,eax
 0051C1E1    push        ebp
 0051C1E2    push        51C217
 0051C1E7    push        dword ptr fs:[eax]
 0051C1EA    mov         dword ptr fs:[eax],esp
 0051C1ED    inc         dword ptr ds:[597A70]
>0051C1F3    jne         0051C209
 0051C1F5    mov         eax,[00597A6C];0x0 gvar_00597A6C:TClassList
 0051C1FA    call        TObject.Free
 0051C1FF    mov         eax,[00597A68];0x0 gvar_00597A68:TClassList
 0051C204    call        TObject.Free
 0051C209    xor         eax,eax
 0051C20B    pop         edx
 0051C20C    pop         ecx
 0051C20D    pop         ecx
 0051C20E    mov         dword ptr fs:[eax],edx
 0051C211    push        51C21E
 0051C216    ret
>0051C217    jmp         @HandleFinally
>0051C21C    jmp         0051C216
 0051C21E    pop         ebp
 0051C21F    ret
*}
end.